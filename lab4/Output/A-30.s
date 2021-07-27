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
	addi $sp, $sp, -20044
	li $t0, 43207
	sw $t0, -336($fp)
	addi $t0, $fp, -32
	sw $t0, -340($fp)
	li $t0, 0
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
	li $t0, 24764
	sw $t0, -360($fp)
	addi $t0, $fp, -32
	sw $t0, -364($fp)
	li $t0, 1
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
	li $t0, 47360
	sw $t0, -384($fp)
	addi $t0, $fp, -32
	sw $t0, -388($fp)
	li $t0, 2
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
	li $t0, 8347
	sw $t0, -408($fp)
	addi $t0, $fp, -32
	sw $t0, -412($fp)
	li $t0, 3
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
	li $t0, 31473
	sw $t0, -432($fp)
	addi $t0, $fp, -32
	sw $t0, -436($fp)
	li $t0, 4
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
	li $t0, 39494
	sw $t0, -456($fp)
	addi $t0, $fp, -32
	sw $t0, -460($fp)
	li $t0, 5
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
	li $t0, 51073
	sw $t0, -480($fp)
	addi $t0, $fp, -32
	sw $t0, -484($fp)
	li $t0, 6
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
	li $t0, 26056
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	li $t0, 49982
	sw $t0, -516($fp)
	addi $t0, $fp, -48
	sw $t0, -520($fp)
	li $t0, 0
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
	li $t0, 26913
	sw $t0, -540($fp)
	addi $t0, $fp, -48
	sw $t0, -544($fp)
	li $t0, 1
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
	li $t0, 13172
	sw $t0, -564($fp)
	addi $t0, $fp, -48
	sw $t0, -568($fp)
	li $t0, 2
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
	li $t0, 58952
	sw $t0, -588($fp)
	addi $t0, $fp, -48
	sw $t0, -592($fp)
	li $t0, 3
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
	li $t0, 4822
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -620($fp)
	li $t0, 14149
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	li $t0, 64456
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	li $t0, 17524
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	li $t0, 65085
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	li $t0, 32881
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	li $t0, 65317
	sw $t0, -684($fp)
	addi $t0, $fp, -64
	sw $t0, -688($fp)
	li $t0, 0
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
	li $t0, 21020
	sw $t0, -708($fp)
	addi $t0, $fp, -64
	sw $t0, -712($fp)
	li $t0, 1
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
	li $t0, 56858
	sw $t0, -732($fp)
	addi $t0, $fp, -64
	sw $t0, -736($fp)
	li $t0, 2
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
	li $t0, 4418
	sw $t0, -756($fp)
	addi $t0, $fp, -64
	sw $t0, -760($fp)
	li $t0, 3
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
	li $t0, 2578
	sw $t0, -780($fp)
	addi $t0, $fp, -96
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
	li $t0, 19999
	sw $t0, -804($fp)
	addi $t0, $fp, -96
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
	li $t0, 2044
	sw $t0, -828($fp)
	addi $t0, $fp, -96
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
	li $t0, 42126
	sw $t0, -852($fp)
	addi $t0, $fp, -96
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
	li $t0, 10218
	sw $t0, -876($fp)
	addi $t0, $fp, -96
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
	li $t0, 6940
	sw $t0, -900($fp)
	addi $t0, $fp, -96
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
	li $t0, 9311
	sw $t0, -924($fp)
	addi $t0, $fp, -96
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
	li $t0, 47873
	sw $t0, -948($fp)
	addi $t0, $fp, -96
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
	li $t0, 13184
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	sw $t0, -980($fp)
	li $t0, 52518
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	li $t0, 7101
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -1004($fp)
	li $t0, 60544
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -1016($fp)
	li $t0, 60866
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	li $t0, 38574
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	li $t0, 34502
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	li $t0, 46403
	sw $t0, -1056($fp)
	addi $t0, $fp, -132
	sw $t0, -1060($fp)
	li $t0, 0
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
	li $t0, 64630
	sw $t0, -1080($fp)
	addi $t0, $fp, -132
	sw $t0, -1084($fp)
	li $t0, 1
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
	li $t0, 18948
	sw $t0, -1104($fp)
	addi $t0, $fp, -132
	sw $t0, -1108($fp)
	li $t0, 2
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
	li $t0, 7780
	sw $t0, -1128($fp)
	addi $t0, $fp, -132
	sw $t0, -1132($fp)
	li $t0, 3
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
	li $t0, 12267
	sw $t0, -1152($fp)
	addi $t0, $fp, -132
	sw $t0, -1156($fp)
	li $t0, 4
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
	li $t0, 12365
	sw $t0, -1176($fp)
	addi $t0, $fp, -132
	sw $t0, -1180($fp)
	li $t0, 5
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
	li $t0, 12602
	sw $t0, -1200($fp)
	addi $t0, $fp, -132
	sw $t0, -1204($fp)
	li $t0, 6
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
	li $t0, 26416
	sw $t0, -1224($fp)
	addi $t0, $fp, -132
	sw $t0, -1228($fp)
	li $t0, 7
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
	li $t0, 11285
	sw $t0, -1248($fp)
	addi $t0, $fp, -132
	sw $t0, -1252($fp)
	li $t0, 8
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
	li $t0, 30126
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	li $t0, 25965
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	li $t0, 44166
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	li $t0, 29907
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -1316($fp)
	li $t0, 46985
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	sw $t0, -1328($fp)
	li $t0, 35489
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -1340($fp)
	li $t0, 34326
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	sw $t0, -1352($fp)
	li $t0, 49563
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -1364($fp)
	li $t0, 55488
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -1376($fp)
	li $t0, 36370
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1388($fp)
	li $t0, 26154
	sw $t0, -1392($fp)
	addi $t0, $fp, -144
	sw $t0, -1396($fp)
	li $t0, 0
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
	li $t0, 170
	sw $t0, -1416($fp)
	addi $t0, $fp, -144
	sw $t0, -1420($fp)
	li $t0, 1
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
	li $t0, 43310
	sw $t0, -1440($fp)
	addi $t0, $fp, -144
	sw $t0, -1444($fp)
	li $t0, 2
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
	li $t0, 35465
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	sw $t0, -1472($fp)
	li $t0, 48043
	sw $t0, -1476($fp)
	addi $t0, $fp, -168
	sw $t0, -1480($fp)
	li $t0, 0
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1488($fp)
	lw $t0, -1480($fp)
	lw $t1, -1488($fp)
	add $t0, $t0, $t1
	sw $t0, -1492($fp)
	lw $t0, -1476($fp)
	lw $t1, -1492($fp)
	sw $t0, 0($t1)
	lw $t0, -1492($fp)
	lw $t1, 0($t0)
	sw $t1, -1496($fp)
	li $t0, 56494
	sw $t0, -1500($fp)
	addi $t0, $fp, -168
	sw $t0, -1504($fp)
	li $t0, 1
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
	li $t0, 22447
	sw $t0, -1524($fp)
	addi $t0, $fp, -168
	sw $t0, -1528($fp)
	li $t0, 2
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
	li $t0, 55144
	sw $t0, -1548($fp)
	addi $t0, $fp, -168
	sw $t0, -1552($fp)
	li $t0, 3
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
	li $t0, 51502
	sw $t0, -1572($fp)
	addi $t0, $fp, -168
	sw $t0, -1576($fp)
	li $t0, 4
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
	li $t0, 17777
	sw $t0, -1596($fp)
	addi $t0, $fp, -168
	sw $t0, -1600($fp)
	li $t0, 5
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
	li $t0, 28183
	sw $t0, -1620($fp)
	addi $t0, $fp, -200
	sw $t0, -1624($fp)
	li $t0, 0
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
	li $t0, 20469
	sw $t0, -1644($fp)
	addi $t0, $fp, -200
	sw $t0, -1648($fp)
	li $t0, 1
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
	li $t0, 64180
	sw $t0, -1668($fp)
	addi $t0, $fp, -200
	sw $t0, -1672($fp)
	li $t0, 2
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
	li $t0, 27277
	sw $t0, -1692($fp)
	addi $t0, $fp, -200
	sw $t0, -1696($fp)
	li $t0, 3
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
	li $t0, 39417
	sw $t0, -1716($fp)
	addi $t0, $fp, -200
	sw $t0, -1720($fp)
	li $t0, 4
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
	li $t0, 6424
	sw $t0, -1740($fp)
	addi $t0, $fp, -200
	sw $t0, -1744($fp)
	li $t0, 5
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
	li $t0, 39544
	sw $t0, -1764($fp)
	addi $t0, $fp, -200
	sw $t0, -1768($fp)
	li $t0, 6
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
	li $t0, 51782
	sw $t0, -1788($fp)
	addi $t0, $fp, -200
	sw $t0, -1792($fp)
	li $t0, 7
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
	li $t0, 19026
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	sw $t0, -1820($fp)
	li $t0, 424
	sw $t0, -1824($fp)
	addi $t0, $fp, -240
	sw $t0, -1828($fp)
	li $t0, 0
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
	li $t0, 63068
	sw $t0, -1848($fp)
	addi $t0, $fp, -240
	sw $t0, -1852($fp)
	li $t0, 1
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $t0, -1852($fp)
	lw $t1, -1860($fp)
	add $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t0, -1848($fp)
	lw $t1, -1864($fp)
	sw $t0, 0($t1)
	lw $t0, -1864($fp)
	lw $t1, 0($t0)
	sw $t1, -1868($fp)
	li $t0, 49152
	sw $t0, -1872($fp)
	addi $t0, $fp, -240
	sw $t0, -1876($fp)
	li $t0, 2
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1884($fp)
	lw $t0, -1876($fp)
	lw $t1, -1884($fp)
	add $t0, $t0, $t1
	sw $t0, -1888($fp)
	lw $t0, -1872($fp)
	lw $t1, -1888($fp)
	sw $t0, 0($t1)
	lw $t0, -1888($fp)
	lw $t1, 0($t0)
	sw $t1, -1892($fp)
	li $t0, 26389
	sw $t0, -1896($fp)
	addi $t0, $fp, -240
	sw $t0, -1900($fp)
	li $t0, 3
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1908($fp)
	lw $t0, -1900($fp)
	lw $t1, -1908($fp)
	add $t0, $t0, $t1
	sw $t0, -1912($fp)
	lw $t0, -1896($fp)
	lw $t1, -1912($fp)
	sw $t0, 0($t1)
	lw $t0, -1912($fp)
	lw $t1, 0($t0)
	sw $t1, -1916($fp)
	li $t0, 41698
	sw $t0, -1920($fp)
	addi $t0, $fp, -240
	sw $t0, -1924($fp)
	li $t0, 4
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1932($fp)
	lw $t0, -1924($fp)
	lw $t1, -1932($fp)
	add $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t0, -1920($fp)
	lw $t1, -1936($fp)
	sw $t0, 0($t1)
	lw $t0, -1936($fp)
	lw $t1, 0($t0)
	sw $t1, -1940($fp)
	li $t0, 13524
	sw $t0, -1944($fp)
	addi $t0, $fp, -240
	sw $t0, -1948($fp)
	li $t0, 5
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1956($fp)
	lw $t0, -1948($fp)
	lw $t1, -1956($fp)
	add $t0, $t0, $t1
	sw $t0, -1960($fp)
	lw $t0, -1944($fp)
	lw $t1, -1960($fp)
	sw $t0, 0($t1)
	lw $t0, -1960($fp)
	lw $t1, 0($t0)
	sw $t1, -1964($fp)
	li $t0, 7839
	sw $t0, -1968($fp)
	addi $t0, $fp, -240
	sw $t0, -1972($fp)
	li $t0, 6
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, -1972($fp)
	lw $t1, -1980($fp)
	add $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t0, -1968($fp)
	lw $t1, -1984($fp)
	sw $t0, 0($t1)
	lw $t0, -1984($fp)
	lw $t1, 0($t0)
	sw $t1, -1988($fp)
	li $t0, 11651
	sw $t0, -1992($fp)
	addi $t0, $fp, -240
	sw $t0, -1996($fp)
	li $t0, 7
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2004($fp)
	lw $t0, -1996($fp)
	lw $t1, -2004($fp)
	add $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $t0, -1992($fp)
	lw $t1, -2008($fp)
	sw $t0, 0($t1)
	lw $t0, -2008($fp)
	lw $t1, 0($t0)
	sw $t1, -2012($fp)
	li $t0, 47850
	sw $t0, -2016($fp)
	addi $t0, $fp, -240
	sw $t0, -2020($fp)
	li $t0, 8
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2028($fp)
	lw $t0, -2020($fp)
	lw $t1, -2028($fp)
	add $t0, $t0, $t1
	sw $t0, -2032($fp)
	lw $t0, -2016($fp)
	lw $t1, -2032($fp)
	sw $t0, 0($t1)
	lw $t0, -2032($fp)
	lw $t1, 0($t0)
	sw $t1, -2036($fp)
	li $t0, 57402
	sw $t0, -2040($fp)
	addi $t0, $fp, -240
	sw $t0, -2044($fp)
	li $t0, 9
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
	li $t0, 1603
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	sw $t0, -2072($fp)
	li $t0, 18684
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	sw $t0, -2084($fp)
	li $t0, 18020
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	sw $t0, -2096($fp)
	li $t0, 1774
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	sw $t0, -2108($fp)
	li $t0, 61994
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	sw $t0, -2120($fp)
	li $t0, 53485
	sw $t0, -2124($fp)
	lw $t0, -2124($fp)
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	sw $t0, -2132($fp)
	li $t0, 49817
	sw $t0, -2136($fp)
	lw $t0, -2136($fp)
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	sw $t0, -2144($fp)
	li $t0, 52952
	sw $t0, -2148($fp)
	addi $t0, $fp, -264
	sw $t0, -2152($fp)
	li $t0, 0
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2160($fp)
	lw $t0, -2152($fp)
	lw $t1, -2160($fp)
	add $t0, $t0, $t1
	sw $t0, -2164($fp)
	lw $t0, -2148($fp)
	lw $t1, -2164($fp)
	sw $t0, 0($t1)
	lw $t0, -2164($fp)
	lw $t1, 0($t0)
	sw $t1, -2168($fp)
	li $t0, 10397
	sw $t0, -2172($fp)
	addi $t0, $fp, -264
	sw $t0, -2176($fp)
	li $t0, 1
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2184($fp)
	lw $t0, -2176($fp)
	lw $t1, -2184($fp)
	add $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t0, -2172($fp)
	lw $t1, -2188($fp)
	sw $t0, 0($t1)
	lw $t0, -2188($fp)
	lw $t1, 0($t0)
	sw $t1, -2192($fp)
	li $t0, 39426
	sw $t0, -2196($fp)
	addi $t0, $fp, -264
	sw $t0, -2200($fp)
	li $t0, 2
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
	li $t0, 38918
	sw $t0, -2220($fp)
	addi $t0, $fp, -264
	sw $t0, -2224($fp)
	li $t0, 3
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
	li $t0, 28174
	sw $t0, -2244($fp)
	addi $t0, $fp, -264
	sw $t0, -2248($fp)
	li $t0, 4
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
	li $t0, 2073
	sw $t0, -2268($fp)
	addi $t0, $fp, -264
	sw $t0, -2272($fp)
	li $t0, 5
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
	li $t0, 59387
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	sw $t0, -2300($fp)
	li $t0, 26819
	sw $t0, -2304($fp)
	lw $t0, -2304($fp)
	sw $t0, -2308($fp)
	lw $t0, -2308($fp)
	sw $t0, -2312($fp)
	li $t0, 29350
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	sw $t0, -2320($fp)
	lw $t0, -2320($fp)
	sw $t0, -2324($fp)
	li $t0, 33269
	sw $t0, -2328($fp)
	addi $t0, $fp, -280
	sw $t0, -2332($fp)
	li $t0, 0
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
	li $t0, 33243
	sw $t0, -2352($fp)
	addi $t0, $fp, -280
	sw $t0, -2356($fp)
	li $t0, 1
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
	li $t0, 3359
	sw $t0, -2376($fp)
	addi $t0, $fp, -280
	sw $t0, -2380($fp)
	li $t0, 2
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
	li $t0, 19515
	sw $t0, -2400($fp)
	addi $t0, $fp, -280
	sw $t0, -2404($fp)
	li $t0, 3
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
	li $t0, 52270
	sw $t0, -2424($fp)
	lw $t0, -2424($fp)
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	sw $t0, -2432($fp)
	li $t0, 3783
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	sw $t0, -2444($fp)
	li $t0, 17047
	sw $t0, -2448($fp)
	lw $t0, -2448($fp)
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	sw $t0, -2456($fp)
	li $t0, 35886
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	sw $t0, -2468($fp)
	li $t0, 30173
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	sw $t0, -2480($fp)
	li $t0, 58746
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	sw $t0, -2492($fp)
	li $t0, 49410
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	sw $t0, -2504($fp)
	li $t0, 38012
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	sw $t0, -2516($fp)
	li $t0, 4861
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	sw $t0, -2528($fp)
	li $t0, 31724
	sw $t0, -2532($fp)
	addi $t0, $fp, -296
	sw $t0, -2536($fp)
	li $t0, 0
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2544($fp)
	lw $t0, -2536($fp)
	lw $t1, -2544($fp)
	add $t0, $t0, $t1
	sw $t0, -2548($fp)
	lw $t0, -2532($fp)
	lw $t1, -2548($fp)
	sw $t0, 0($t1)
	lw $t0, -2548($fp)
	lw $t1, 0($t0)
	sw $t1, -2552($fp)
	li $t0, 29878
	sw $t0, -2556($fp)
	addi $t0, $fp, -296
	sw $t0, -2560($fp)
	li $t0, 1
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2568($fp)
	lw $t0, -2560($fp)
	lw $t1, -2568($fp)
	add $t0, $t0, $t1
	sw $t0, -2572($fp)
	lw $t0, -2556($fp)
	lw $t1, -2572($fp)
	sw $t0, 0($t1)
	lw $t0, -2572($fp)
	lw $t1, 0($t0)
	sw $t1, -2576($fp)
	li $t0, 6465
	sw $t0, -2580($fp)
	addi $t0, $fp, -296
	sw $t0, -2584($fp)
	li $t0, 2
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2592($fp)
	lw $t0, -2584($fp)
	lw $t1, -2592($fp)
	add $t0, $t0, $t1
	sw $t0, -2596($fp)
	lw $t0, -2580($fp)
	lw $t1, -2596($fp)
	sw $t0, 0($t1)
	lw $t0, -2596($fp)
	lw $t1, 0($t0)
	sw $t1, -2600($fp)
	li $t0, 50408
	sw $t0, -2604($fp)
	addi $t0, $fp, -296
	sw $t0, -2608($fp)
	li $t0, 3
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2616($fp)
	lw $t0, -2608($fp)
	lw $t1, -2616($fp)
	add $t0, $t0, $t1
	sw $t0, -2620($fp)
	lw $t0, -2604($fp)
	lw $t1, -2620($fp)
	sw $t0, 0($t1)
	lw $t0, -2620($fp)
	lw $t1, 0($t0)
	sw $t1, -2624($fp)
	li $t0, 47899
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	sw $t0, -2636($fp)
	li $t0, 8239
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	sw $t0, -2648($fp)
	li $t0, 46866
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	sw $t0, -2656($fp)
	lw $t0, -2656($fp)
	sw $t0, -2660($fp)
	li $t0, 35848
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	sw $t0, -2672($fp)
	li $t0, 58056
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	sw $t0, -2684($fp)
	li $t0, 34282
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	sw $t0, -2696($fp)
	li $t0, 46245
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	sw $t0, -2708($fp)
	li $t0, 31946
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	sw $t0, -2720($fp)
	li $t0, 7665
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	sw $t0, -2732($fp)
	li $t0, 8884
	sw $t0, -2736($fp)
	lw $t0, -2736($fp)
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	sw $t0, -2744($fp)
	li $t0, 34019
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	sw $t0, -2756($fp)
	li $t0, 1516
	sw $t0, -2760($fp)
	lw $t0, -2760($fp)
	sw $t0, -2764($fp)
	lw $t0, -2764($fp)
	sw $t0, -2768($fp)
	li $t0, 35703
	sw $t0, -2772($fp)
	addi $t0, $fp, -332
	sw $t0, -2776($fp)
	li $t0, 0
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2784($fp)
	lw $t0, -2776($fp)
	lw $t1, -2784($fp)
	add $t0, $t0, $t1
	sw $t0, -2788($fp)
	lw $t0, -2772($fp)
	lw $t1, -2788($fp)
	sw $t0, 0($t1)
	lw $t0, -2788($fp)
	lw $t1, 0($t0)
	sw $t1, -2792($fp)
	li $t0, 63370
	sw $t0, -2796($fp)
	addi $t0, $fp, -332
	sw $t0, -2800($fp)
	li $t0, 1
	sw $t0, -2804($fp)
	lw $t0, -2804($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2808($fp)
	lw $t0, -2800($fp)
	lw $t1, -2808($fp)
	add $t0, $t0, $t1
	sw $t0, -2812($fp)
	lw $t0, -2796($fp)
	lw $t1, -2812($fp)
	sw $t0, 0($t1)
	lw $t0, -2812($fp)
	lw $t1, 0($t0)
	sw $t1, -2816($fp)
	li $t0, 34785
	sw $t0, -2820($fp)
	addi $t0, $fp, -332
	sw $t0, -2824($fp)
	li $t0, 2
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2832($fp)
	lw $t0, -2824($fp)
	lw $t1, -2832($fp)
	add $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t0, -2820($fp)
	lw $t1, -2836($fp)
	sw $t0, 0($t1)
	lw $t0, -2836($fp)
	lw $t1, 0($t0)
	sw $t1, -2840($fp)
	li $t0, 3410
	sw $t0, -2844($fp)
	addi $t0, $fp, -332
	sw $t0, -2848($fp)
	li $t0, 3
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -2848($fp)
	lw $t1, -2856($fp)
	add $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $t0, -2844($fp)
	lw $t1, -2860($fp)
	sw $t0, 0($t1)
	lw $t0, -2860($fp)
	lw $t1, 0($t0)
	sw $t1, -2864($fp)
	li $t0, 1193
	sw $t0, -2868($fp)
	addi $t0, $fp, -332
	sw $t0, -2872($fp)
	li $t0, 4
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2880($fp)
	lw $t0, -2872($fp)
	lw $t1, -2880($fp)
	add $t0, $t0, $t1
	sw $t0, -2884($fp)
	lw $t0, -2868($fp)
	lw $t1, -2884($fp)
	sw $t0, 0($t1)
	lw $t0, -2884($fp)
	lw $t1, 0($t0)
	sw $t1, -2888($fp)
	li $t0, 54301
	sw $t0, -2892($fp)
	addi $t0, $fp, -332
	sw $t0, -2896($fp)
	li $t0, 5
	sw $t0, -2900($fp)
	lw $t0, -2900($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $t0, -2896($fp)
	lw $t1, -2904($fp)
	add $t0, $t0, $t1
	sw $t0, -2908($fp)
	lw $t0, -2892($fp)
	lw $t1, -2908($fp)
	sw $t0, 0($t1)
	lw $t0, -2908($fp)
	lw $t1, 0($t0)
	sw $t1, -2912($fp)
	li $t0, 55680
	sw $t0, -2916($fp)
	addi $t0, $fp, -332
	sw $t0, -2920($fp)
	li $t0, 6
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2928($fp)
	lw $t0, -2920($fp)
	lw $t1, -2928($fp)
	add $t0, $t0, $t1
	sw $t0, -2932($fp)
	lw $t0, -2916($fp)
	lw $t1, -2932($fp)
	sw $t0, 0($t1)
	lw $t0, -2932($fp)
	lw $t1, 0($t0)
	sw $t1, -2936($fp)
	li $t0, 4976
	sw $t0, -2940($fp)
	addi $t0, $fp, -332
	sw $t0, -2944($fp)
	li $t0, 7
	sw $t0, -2948($fp)
	lw $t0, -2948($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2952($fp)
	lw $t0, -2944($fp)
	lw $t1, -2952($fp)
	add $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t0, -2940($fp)
	lw $t1, -2956($fp)
	sw $t0, 0($t1)
	lw $t0, -2956($fp)
	lw $t1, 0($t0)
	sw $t1, -2960($fp)
	li $t0, 5812
	sw $t0, -2964($fp)
	addi $t0, $fp, -332
	sw $t0, -2968($fp)
	li $t0, 8
	sw $t0, -2972($fp)
	lw $t0, -2972($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2976($fp)
	lw $t0, -2968($fp)
	lw $t1, -2976($fp)
	add $t0, $t0, $t1
	sw $t0, -2980($fp)
	lw $t0, -2964($fp)
	lw $t1, -2980($fp)
	sw $t0, 0($t1)
	lw $t0, -2980($fp)
	lw $t1, 0($t0)
	sw $t1, -2984($fp)
	li $t0, 26031
	sw $t0, -2988($fp)
	lw $t0, -2988($fp)
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	sw $t0, -2996($fp)
	li $t0, 35149
	sw $t0, -3000($fp)
	lw $t0, -3000($fp)
	sw $t0, -3004($fp)
	lw $t0, -3004($fp)
	sw $t0, -3008($fp)
	li $t0, 64558
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	sw $t0, -3016($fp)
	lw $t0, -3016($fp)
	sw $t0, -3020($fp)
	li $t0, 9905
	sw $t0, -3100($fp)
	lw $t0, -3100($fp)
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	sw $t0, -3108($fp)
	li $t0, 7625
	sw $t0, -3112($fp)
	addi $t0, $fp, -3060
	sw $t0, -3116($fp)
	li $t0, 0
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
	li $t0, 3884
	sw $t0, -3136($fp)
	addi $t0, $fp, -3060
	sw $t0, -3140($fp)
	li $t0, 1
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
	li $t0, 41630
	sw $t0, -3160($fp)
	addi $t0, $fp, -3060
	sw $t0, -3164($fp)
	li $t0, 2
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
	li $t0, 37504
	sw $t0, -3184($fp)
	addi $t0, $fp, -3060
	sw $t0, -3188($fp)
	li $t0, 3
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
	li $t0, 10349
	sw $t0, -3208($fp)
	addi $t0, $fp, -3060
	sw $t0, -3212($fp)
	li $t0, 4
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
	li $t0, 26502
	sw $t0, -3232($fp)
	addi $t0, $fp, -3060
	sw $t0, -3236($fp)
	li $t0, 5
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
	li $t0, 19867
	sw $t0, -3256($fp)
	addi $t0, $fp, -3060
	sw $t0, -3260($fp)
	li $t0, 6
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
	li $t0, 18588
	sw $t0, -3280($fp)
	addi $t0, $fp, -3060
	sw $t0, -3284($fp)
	li $t0, 7
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
	li $t0, 7833
	sw $t0, -3304($fp)
	addi $t0, $fp, -3060
	sw $t0, -3308($fp)
	li $t0, 8
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
	li $t0, 55715
	sw $t0, -3328($fp)
	addi $t0, $fp, -3060
	sw $t0, -3332($fp)
	li $t0, 9
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
	li $t0, 11108
	sw $t0, -3352($fp)
	lw $t0, -3352($fp)
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	sw $t0, -3360($fp)
	li $t0, 42115
	sw $t0, -3364($fp)
	addi $t0, $fp, -3084
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
	li $t0, 36425
	sw $t0, -3388($fp)
	addi $t0, $fp, -3084
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
	li $t0, 43055
	sw $t0, -3412($fp)
	addi $t0, $fp, -3084
	sw $t0, -3416($fp)
	li $t0, 2
	sw $t0, -3420($fp)
	lw $t0, -3420($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3424($fp)
	lw $t0, -3416($fp)
	lw $t1, -3424($fp)
	add $t0, $t0, $t1
	sw $t0, -3428($fp)
	lw $t0, -3412($fp)
	lw $t1, -3428($fp)
	sw $t0, 0($t1)
	lw $t0, -3428($fp)
	lw $t1, 0($t0)
	sw $t1, -3432($fp)
	li $t0, 49780
	sw $t0, -3436($fp)
	addi $t0, $fp, -3084
	sw $t0, -3440($fp)
	li $t0, 3
	sw $t0, -3444($fp)
	lw $t0, -3444($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3448($fp)
	lw $t0, -3440($fp)
	lw $t1, -3448($fp)
	add $t0, $t0, $t1
	sw $t0, -3452($fp)
	lw $t0, -3436($fp)
	lw $t1, -3452($fp)
	sw $t0, 0($t1)
	lw $t0, -3452($fp)
	lw $t1, 0($t0)
	sw $t1, -3456($fp)
	li $t0, 45309
	sw $t0, -3460($fp)
	addi $t0, $fp, -3084
	sw $t0, -3464($fp)
	li $t0, 4
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
	li $t0, 11538
	sw $t0, -3484($fp)
	addi $t0, $fp, -3084
	sw $t0, -3488($fp)
	li $t0, 5
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
	li $t0, 51297
	sw $t0, -3508($fp)
	lw $t0, -3508($fp)
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	sw $t0, -3516($fp)
	li $t0, 15476
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	sw $t0, -3524($fp)
	lw $t0, -3524($fp)
	sw $t0, -3528($fp)
	li $t0, 9372
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	sw $t0, -3540($fp)
	li $t0, 20546
	sw $t0, -3544($fp)
	lw $t0, -3544($fp)
	sw $t0, -3548($fp)
	lw $t0, -3548($fp)
	sw $t0, -3552($fp)
	li $t0, 18886
	sw $t0, -3556($fp)
	addi $t0, $fp, -3096
	sw $t0, -3560($fp)
	li $t0, 0
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
	li $t0, 10565
	sw $t0, -3580($fp)
	addi $t0, $fp, -3096
	sw $t0, -3584($fp)
	li $t0, 1
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
	li $t0, 9311
	sw $t0, -3604($fp)
	addi $t0, $fp, -3096
	sw $t0, -3608($fp)
	li $t0, 2
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
label121:
	li $t0, 0
	sw $t0, -3628($fp)
	li $t0, 0
	sw $t0, -3632($fp)
	li $t0, 35062
	sw $t0, -3636($fp)
	li $t0, 50691
	sw $t0, -3640($fp)
	lw $t0, -3636($fp)
	lw $t1, -3640($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3644($fp)
	lw $t1, -3644($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label127
label128:
	lw $t0, -2104($fp)
	sw $t0, -3648($fp)
	lw $t1, -3648($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label127
label126:
	li $t0, 1
	sw $t0, -3632($fp)
label127:
	lw $t0, -2092($fp)
	sw $t0, -3652($fp)
	li $t0, 0
	sw $t0, -3656($fp)
	li $t0, 15542
	sw $t0, -3660($fp)
	li $t0, 15124
	sw $t0, -3664($fp)
	lw $t1, -3660($fp)
	lw $t2, -3664($fp)
	ble $t1, $t2, label129
	j label130
label129:
	li $t0, 1
	sw $t0, -3656($fp)
label130:
	li $t0, 9031
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	sw $t0, -3672($fp)
	addi $sp, $sp, -4
	lw $t0, -3632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3672($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3676($fp)
	addi $sp, $sp, 20
	lw $t0, -3104($fp)
	sw $t0, -3680($fp)
	li $t0, 14146
	sw $t0, -3684($fp)
	lw $t0, -3680($fp)
	lw $t1, -3684($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3688($fp)
	li $t0, 44967
	sw $t0, -3692($fp)
	lw $t0, -3688($fp)
	lw $t1, -3692($fp)
	mul $t0, $t0, $t1
	sw $t0, -3696($fp)
	lw $t1, -3676($fp)
	lw $t2, -3696($fp)
	beq $t1, $t2, label124
	j label125
label124:
	li $t0, 1
	sw $t0, -3628($fp)
label125:
	li $t0, 0
	sw $t0, -3700($fp)
	li $t0, 58317
	sw $t0, -3704($fp)
	li $t0, 0
	lw $t1, -3704($fp)
	sub $t0, $t0, $t1
	sw $t0, -3708($fp)
	li $t0, 18030
	sw $t0, -3712($fp)
	lw $t0, -3708($fp)
	lw $t1, -3712($fp)
	sub $t0, $t0, $t1
	sw $t0, -3716($fp)
	lw $t0, -2764($fp)
	sw $t0, -3720($fp)
	lw $t1, -3716($fp)
	lw $t2, -3720($fp)
	bge $t1, $t2, label131
	j label132
label131:
	li $t0, 1
	sw $t0, -3700($fp)
label132:
	lw $t1, -3628($fp)
	lw $t2, -3700($fp)
	bne $t1, $t2, label122
	j label123
label122:
	lw $t0, -2680($fp)
	sw $t0, -3724($fp)
	addi $t0, $fp, -3060
	sw $t0, -3728($fp)
	lw $t0, -2296($fp)
	sw $t0, -3732($fp)
	li $t0, 4
	lw $t1, -3732($fp)
	mul $t0, $t0, $t1
	sw $t0, -3736($fp)
	lw $t0, -3736($fp)
	lw $t1, -3728($fp)
	add $t0, $t0, $t1
	sw $t0, -3740($fp)
	lw $t0, -3740($fp)
	lw $t1, 0($t0)
	sw $t1, -3744($fp)
	li $t0, 21061
	sw $t0, -3748($fp)
	lw $t0, -3744($fp)
	lw $t1, -3748($fp)
	sub $t0, $t0, $t1
	sw $t0, -3752($fp)
	lw $t1, -3724($fp)
	lw $t2, -3752($fp)
	beq $t1, $t2, label133
	j label134
label133:
	li $t0, 0
	sw $t0, -3756($fp)
	addi $t0, $fp, -296
	sw $t0, -3760($fp)
	li $t0, 3
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
	li $t0, 47564
	sw $t0, -3780($fp)
	lw $t0, -3776($fp)
	lw $t1, -3780($fp)
	add $t0, $t0, $t1
	sw $t0, -3784($fp)
	lw $t0, -2728($fp)
	sw $t0, -3788($fp)
	li $t0, 50152
	sw $t0, -3792($fp)
	lw $t0, -3788($fp)
	lw $t1, -3792($fp)
	mul $t0, $t0, $t1
	sw $t0, -3796($fp)
	lw $t0, -3784($fp)
	lw $t1, -3796($fp)
	sub $t0, $t0, $t1
	sw $t0, -3800($fp)
	li $t0, 46967
	sw $t0, -3804($fp)
	lw $t1, -3800($fp)
	lw $t2, -3804($fp)
	bne $t1, $t2, label136
	j label137
label136:
	li $t0, 1
	sw $t0, -3756($fp)
label137:
	lw $ra, -4($fp)
	lw $v0, -3756($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label135
label134:
	li $t0, 55397
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	sw $t0, -3816($fp)
	li $t0, 40331
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	sw $t0, -3828($fp)
	li $t0, 58076
	sw $t0, -3832($fp)
	lw $t0, -3832($fp)
	sw $t0, -3836($fp)
	lw $t0, -3836($fp)
	sw $t0, -3840($fp)
	li $t0, 31976
	sw $t0, -3844($fp)
	lw $t0, -3844($fp)
	sw $t0, -3848($fp)
	lw $t0, -3848($fp)
	sw $t0, -3852($fp)
	li $t0, 11220
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	sw $t0, -3860($fp)
	lw $t0, -3860($fp)
	sw $t0, -3864($fp)
	li $t0, 35595
	sw $t0, -3868($fp)
	lw $t0, -3868($fp)
	sw $t0, -3872($fp)
	lw $t0, -3872($fp)
	sw $t0, -3876($fp)
label138:
	lw $t0, -2308($fp)
	sw $t0, -3880($fp)
	li $t0, 0
	sw $t0, -3884($fp)
	li $t0, 47133
	sw $t0, -3888($fp)
	li $t0, 1982
	sw $t0, -3892($fp)
	lw $t0, -3888($fp)
	lw $t1, -3892($fp)
	mul $t0, $t0, $t1
	sw $t0, -3896($fp)
	lw $t1, -3896($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label143
label143:
	li $t0, 6469
	sw $t0, -3900($fp)
	lw $t1, -3900($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label142
label141:
	li $t0, 1
	sw $t0, -3884($fp)
label142:
	addi $t0, $fp, -296
	sw $t0, -3904($fp)
	lw $t0, -2464($fp)
	sw $t0, -3908($fp)
	li $t0, 4
	lw $t1, -3908($fp)
	mul $t0, $t0, $t1
	sw $t0, -3912($fp)
	lw $t0, -3912($fp)
	lw $t1, -3904($fp)
	add $t0, $t0, $t1
	sw $t0, -3916($fp)
	lw $t0, -3916($fp)
	lw $t1, 0($t0)
	sw $t1, -3920($fp)
	li $t0, 0
	sw $t0, -3924($fp)
	lw $t0, -676($fp)
	sw $t0, -3928($fp)
	li $t0, 16221
	sw $t0, -3932($fp)
	lw $t1, -3928($fp)
	lw $t2, -3932($fp)
	blt $t1, $t2, label144
	j label146
label146:
	li $t0, 56529
	sw $t0, -3936($fp)
	lw $t1, -3936($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label145
label144:
	li $t0, 1
	sw $t0, -3924($fp)
label145:
	addi $sp, $sp, -4
	lw $t0, -3880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3924($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3940($fp)
	addi $sp, $sp, 20
	lw $t1, -3940($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label140
label139:
label147:
	li $t0, 0
	sw $t0, -3944($fp)
	li $t0, 31840
	sw $t0, -3948($fp)
	li $t0, 0
	sw $t0, -3952($fp)
	li $t0, 0
	sw $t0, -3956($fp)
	li $t0, 1535
	sw $t0, -3960($fp)
	lw $t0, -3004($fp)
	sw $t0, -3964($fp)
	lw $t1, -3960($fp)
	lw $t2, -3964($fp)
	ble $t1, $t2, label155
	j label156
label155:
	li $t0, 1
	sw $t0, -3956($fp)
label156:
	lw $t0, -1372($fp)
	sw $t0, -3968($fp)
	lw $t1, -3956($fp)
	lw $t2, -3968($fp)
	beq $t1, $t2, label153
	j label154
label153:
	li $t0, 1
	sw $t0, -3952($fp)
label154:
	li $t0, 0
	sw $t0, -3972($fp)
	lw $t0, -3872($fp)
	sw $t0, -3976($fp)
	li $t0, 22528
	sw $t0, -3980($fp)
	lw $t1, -3976($fp)
	lw $t2, -3980($fp)
	beq $t1, $t2, label157
	j label159
label159:
	li $t0, 25356
	sw $t0, -3984($fp)
	lw $t1, -3984($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label158
label157:
	li $t0, 1
	sw $t0, -3972($fp)
label158:
	li $t0, 0
	sw $t0, -3988($fp)
	lw $t0, -3836($fp)
	sw $t0, -3992($fp)
	lw $t0, -3848($fp)
	sw $t0, -3996($fp)
	lw $t0, -3992($fp)
	lw $t1, -3996($fp)
	add $t0, $t0, $t1
	sw $t0, -4000($fp)
	lw $t1, -4000($fp)
	li $t2, 0
	bne $t1, $t2, label162
	j label161
label162:
	li $t0, 56506
	sw $t0, -4004($fp)
	lw $t1, -4004($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label161
label160:
	li $t0, 1
	sw $t0, -3988($fp)
label161:
	addi $sp, $sp, -4
	lw $t0, -3948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3988($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4008($fp)
	addi $sp, $sp, 20
	lw $t1, -4008($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label151
label151:
	li $t0, 1
	sw $t0, -3944($fp)
label152:
	li $t0, 0
	lw $t1, -3944($fp)
	sub $t0, $t0, $t1
	sw $t0, -4012($fp)
	addi $t0, $fp, -200
	sw $t0, -4016($fp)
	lw $t0, -2080($fp)
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
	lw $t0, -2692($fp)
	sw $t0, -4036($fp)
	lw $t0, -4032($fp)
	lw $t1, -4036($fp)
	sub $t0, $t0, $t1
	sw $t0, -4040($fp)
	lw $t1, -4012($fp)
	lw $t2, -4040($fp)
	bge $t1, $t2, label150
	j label149
label150:
	li $t0, 34387
	sw $t0, -4044($fp)
	lw $t0, -3860($fp)
	sw $t0, -4048($fp)
	li $t0, 0
	lw $t1, -4048($fp)
	sub $t0, $t0, $t1
	sw $t0, -4052($fp)
	lw $t0, -4044($fp)
	lw $t1, -4052($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4056($fp)
	lw $t1, -4056($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label149
label148:
	addi $t0, $fp, -132
	sw $t0, -4060($fp)
	li $t0, 0
	sw $t0, -4064($fp)
	li $t0, 0
	sw $t0, -4068($fp)
	li $t0, 2233
	sw $t0, -4072($fp)
	li $t0, 61110
	sw $t0, -4076($fp)
	lw $t1, -4072($fp)
	lw $t2, -4076($fp)
	bgt $t1, $t2, label168
	j label169
label168:
	li $t0, 1
	sw $t0, -4068($fp)
label169:
	li $t0, 48880
	sw $t0, -4080($fp)
	lw $t1, -4068($fp)
	lw $t2, -4080($fp)
	bne $t1, $t2, label166
	j label167
label166:
	li $t0, 1
	sw $t0, -4064($fp)
label167:
	lw $t0, -976($fp)
	sw $t0, -4084($fp)
	lw $t0, -4084($fp)
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -4088($fp)
	li $t0, 0
	sw $t0, -4092($fp)
	li $t0, 17077
	sw $t0, -4096($fp)
	lw $t1, -4096($fp)
	li $t2, 0
	bne $t1, $t2, label173
	j label171
label173:
	li $t0, 46964
	sw $t0, -4100($fp)
	lw $t1, -4100($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label171
label172:
	li $t0, 3913
	sw $t0, -4104($fp)
	lw $t1, -4104($fp)
	li $t2, 0
	bne $t1, $t2, label170
	j label171
label170:
	li $t0, 1
	sw $t0, -4092($fp)
label171:
	li $t0, 0
	sw $t0, -4108($fp)
	lw $t0, -3812($fp)
	sw $t0, -4112($fp)
	lw $t1, -4112($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label175
label176:
	lw $t0, -3824($fp)
	sw $t0, -4116($fp)
	lw $t1, -4116($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label175
label174:
	li $t0, 1
	sw $t0, -4108($fp)
label175:
	addi $sp, $sp, -4
	lw $t0, -4064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4108($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4120($fp)
	addi $sp, $sp, 20
	li $t0, 4
	lw $t1, -4120($fp)
	mul $t0, $t0, $t1
	sw $t0, -4124($fp)
	lw $t0, -4124($fp)
	lw $t1, -4060($fp)
	add $t0, $t0, $t1
	sw $t0, -4128($fp)
	lw $t0, -4128($fp)
	lw $t1, 0($t0)
	sw $t1, -4132($fp)
	lw $t1, -4132($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label164
label163:
	li $t0, 0
	sw $t0, -4136($fp)
	lw $t0, -2476($fp)
	sw $t0, -4140($fp)
	lw $t0, -652($fp)
	sw $t0, -4144($fp)
	lw $t1, -4140($fp)
	lw $t2, -4144($fp)
	bgt $t1, $t2, label177
	j label178
label177:
	li $t0, 1
	sw $t0, -4136($fp)
label178:
	lw $t0, -4136($fp)
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	sw $t0, -4148($fp)
	j label165
label164:
	li $t0, 60550
	sw $t0, -4156($fp)
	addi $t0, $fp, -4152
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
	li $t0, 13605
	sw $t0, -4180($fp)
	lw $t0, -4180($fp)
	sw $t0, -4184($fp)
	lw $t0, -4184($fp)
	sw $t0, -4188($fp)
	li $t0, 4406
	sw $t0, -4192($fp)
	lw $t0, -4192($fp)
	sw $t0, -4196($fp)
	lw $t0, -4196($fp)
	sw $t0, -4200($fp)
	li $t0, 0
	sw $t0, -4204($fp)
	addi $t0, $fp, -48
	sw $t0, -4208($fp)
	lw $t0, -3016($fp)
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
	addi $t0, $fp, -280
	sw $t0, -4228($fp)
	lw $t0, -1024($fp)
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
	lw $t0, -4224($fp)
	lw $t1, -4244($fp)
	mul $t0, $t0, $t1
	sw $t0, -4248($fp)
	li $t0, 0
	lw $t1, -4248($fp)
	sub $t0, $t0, $t1
	sw $t0, -4252($fp)
	addi $t0, $fp, -96
	sw $t0, -4256($fp)
	lw $t0, -1036($fp)
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
	lw $t1, -4252($fp)
	lw $t2, -4276($fp)
	bne $t1, $t2, label179
	j label180
label179:
	li $t0, 1
	sw $t0, -4204($fp)
label180:
	li $t0, 0
	sw $t0, -4280($fp)
	li $t0, 0
	sw $t0, -4284($fp)
	li $t0, 50246
	sw $t0, -4288($fp)
	li $t0, 15956
	sw $t0, -4292($fp)
	lw $t0, -4288($fp)
	lw $t1, -4292($fp)
	mul $t0, $t0, $t1
	sw $t0, -4296($fp)
	li $t0, 8271
	sw $t0, -4300($fp)
	lw $t1, -4296($fp)
	lw $t2, -4300($fp)
	blt $t1, $t2, label183
	j label184
label183:
	li $t0, 1
	sw $t0, -4284($fp)
label184:
	li $t0, 0
	sw $t0, -4304($fp)
	li $t0, 41831
	sw $t0, -4308($fp)
	lw $t0, -1276($fp)
	sw $t0, -4312($fp)
	lw $t1, -4308($fp)
	lw $t2, -4312($fp)
	bne $t1, $t2, label185
	j label186
label185:
	li $t0, 1
	sw $t0, -4304($fp)
label186:
	lw $t0, -2692($fp)
	sw $t0, -4316($fp)
	li $t0, 0
	lw $t1, -4316($fp)
	sub $t0, $t0, $t1
	sw $t0, -4320($fp)
	li $t0, 0
	lw $t1, -4320($fp)
	sub $t0, $t0, $t1
	sw $t0, -4324($fp)
	li $t0, 23416
	sw $t0, -4328($fp)
	lw $t0, -2104($fp)
	sw $t0, -4332($fp)
	lw $t0, -4328($fp)
	lw $t1, -4332($fp)
	sub $t0, $t0, $t1
	sw $t0, -4336($fp)
	lw $t0, -2656($fp)
	sw $t0, -4340($fp)
	lw $t0, -4336($fp)
	lw $t1, -4340($fp)
	sub $t0, $t0, $t1
	sw $t0, -4344($fp)
	li $t0, 9915
	sw $t0, -4348($fp)
	li $t0, 41984
	sw $t0, -4352($fp)
	li $t0, 1
	sw $t0, -4356($fp)
	lw $t0, -4352($fp)
	lw $t1, -4356($fp)
	mul $t0, $t0, $t1
	sw $t0, -4360($fp)
	li $t0, 25299
	sw $t0, -4364($fp)
	lw $t0, -4364($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -4368($fp)
	addi $sp, $sp, -4
	lw $t0, -4344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4368($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4372($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -4284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4372($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4376($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -4380($fp)
	li $t0, 24492
	sw $t0, -4384($fp)
	lw $t0, -2716($fp)
	sw $t0, -4388($fp)
	lw $t1, -4384($fp)
	lw $t2, -4388($fp)
	bne $t1, $t2, label187
	j label188
label187:
	li $t0, 1
	sw $t0, -4380($fp)
label188:
	lw $t0, -1360($fp)
	sw $t0, -4392($fp)
	lw $t0, -4392($fp)
	sw $t0, -4196($fp)
	lw $t0, -4196($fp)
	sw $t0, -4396($fp)
	li $t0, 51551
	sw $t0, -4400($fp)
	lw $t0, -4400($fp)
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	sw $t0, -4404($fp)
	li $t0, 0
	sw $t0, -4408($fp)
	lw $t0, -652($fp)
	sw $t0, -4412($fp)
	li $t0, 61467
	sw $t0, -4416($fp)
	lw $t0, -4412($fp)
	lw $t1, -4416($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4420($fp)
	lw $t0, -1372($fp)
	sw $t0, -4424($fp)
	lw $t1, -4420($fp)
	lw $t2, -4424($fp)
	blt $t1, $t2, label189
	j label190
label189:
	li $t0, 1
	sw $t0, -4408($fp)
label190:
	addi $sp, $sp, -4
	lw $t0, -4380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4408($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4428($fp)
	addi $sp, $sp, 20
	lw $t1, -4376($fp)
	lw $t2, -4428($fp)
	blt $t1, $t2, label181
	j label182
label181:
	li $t0, 1
	sw $t0, -4280($fp)
label182:
	addi $t0, $fp, -168
	sw $t0, -4432($fp)
	li $t0, 0
	sw $t0, -4436($fp)
	lw $t0, -4184($fp)
	sw $t0, -4440($fp)
	li $t0, 52460
	sw $t0, -4444($fp)
	lw $t0, -4440($fp)
	lw $t1, -4444($fp)
	mul $t0, $t0, $t1
	sw $t0, -4448($fp)
	li $t0, 33148
	sw $t0, -4452($fp)
	lw $t0, -4448($fp)
	lw $t1, -4452($fp)
	mul $t0, $t0, $t1
	sw $t0, -4456($fp)
	lw $t1, -4456($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label192
label193:
	li $t0, 26474
	sw $t0, -4460($fp)
	li $t0, 58930
	sw $t0, -4464($fp)
	lw $t1, -4460($fp)
	lw $t2, -4464($fp)
	beq $t1, $t2, label191
	j label192
label191:
	li $t0, 1
	sw $t0, -4436($fp)
label192:
	li $t0, 4
	lw $t1, -4436($fp)
	mul $t0, $t0, $t1
	sw $t0, -4468($fp)
	lw $t0, -4468($fp)
	lw $t1, -4432($fp)
	add $t0, $t0, $t1
	sw $t0, -4472($fp)
	lw $t0, -4472($fp)
	lw $t1, 0($t0)
	sw $t1, -4476($fp)
	li $t0, 24118
	sw $t0, -4480($fp)
	li $t0, 0
	sw $t0, -4484($fp)
	lw $t0, -2524($fp)
	sw $t0, -4488($fp)
	li $t0, 49003
	sw $t0, -4492($fp)
	li $t0, 18750
	sw $t0, -4496($fp)
	lw $t0, -4492($fp)
	lw $t1, -4496($fp)
	mul $t0, $t0, $t1
	sw $t0, -4500($fp)
	lw $t1, -4488($fp)
	lw $t2, -4500($fp)
	bge $t1, $t2, label197
	j label196
label197:
	li $t0, 15307
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	sw $t0, -4508($fp)
	li $t0, 0
	sw $t0, -4512($fp)
	li $t0, 25654
	sw $t0, -4516($fp)
	lw $t1, -4516($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label198
label198:
	li $t0, 1
	sw $t0, -4512($fp)
label199:
	li $t0, 0
	sw $t0, -4520($fp)
	lw $t0, -2680($fp)
	sw $t0, -4524($fp)
	lw $t0, -1036($fp)
	sw $t0, -4528($fp)
	lw $t0, -4524($fp)
	lw $t1, -4528($fp)
	sub $t0, $t0, $t1
	sw $t0, -4532($fp)
	lw $t0, -1288($fp)
	sw $t0, -4536($fp)
	lw $t1, -4532($fp)
	lw $t2, -4536($fp)
	beq $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -4520($fp)
label201:
	li $t0, 0
	sw $t0, -4540($fp)
	lw $t0, 12($fp)
	sw $t0, -4544($fp)
	li $t0, 0
	lw $t1, -4544($fp)
	sub $t0, $t0, $t1
	sw $t0, -4548($fp)
	lw $t1, -4548($fp)
	li $t2, 0
	bne $t1, $t2, label204
	j label203
label204:
	lw $t0, -1036($fp)
	sw $t0, -4552($fp)
	lw $t1, -4552($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label203
label202:
	li $t0, 1
	sw $t0, -4540($fp)
label203:
	addi $sp, $sp, -4
	lw $t0, -4508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4540($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4556($fp)
	addi $sp, $sp, 20
	lw $t0, -2692($fp)
	sw $t0, -4560($fp)
	lw $t0, -4556($fp)
	lw $t1, -4560($fp)
	add $t0, $t0, $t1
	sw $t0, -4564($fp)
	lw $t1, -4564($fp)
	li $t2, 0
	bne $t1, $t2, label194
	j label196
label196:
	addi $t0, $fp, -4152
	sw $t0, -4568($fp)
	li $t0, 0
	sw $t0, -4572($fp)
	li $t0, 53137
	sw $t0, -4576($fp)
	lw $t1, -4576($fp)
	li $t2, 0
	bne $t1, $t2, label205
	j label207
label207:
	lw $t0, -2524($fp)
	sw $t0, -4580($fp)
	lw $t1, -4580($fp)
	li $t2, 0
	bne $t1, $t2, label205
	j label206
label205:
	li $t0, 1
	sw $t0, -4572($fp)
label206:
	li $t0, 4
	lw $t1, -4572($fp)
	mul $t0, $t0, $t1
	sw $t0, -4584($fp)
	lw $t0, -4584($fp)
	lw $t1, -4568($fp)
	add $t0, $t0, $t1
	sw $t0, -4588($fp)
	lw $t0, -4588($fp)
	lw $t1, 0($t0)
	sw $t1, -4592($fp)
	lw $t1, -4592($fp)
	li $t2, 0
	bne $t1, $t2, label194
	j label195
label194:
	li $t0, 1
	sw $t0, -4484($fp)
label195:
	li $t0, 0
	sw $t0, -4596($fp)
	li $t0, 0
	sw $t0, -4600($fp)
	li $t0, 42731
	sw $t0, -4604($fp)
	li $t0, 62271
	sw $t0, -4608($fp)
	li $t0, 0
	lw $t1, -4608($fp)
	sub $t0, $t0, $t1
	sw $t0, -4612($fp)
	lw $t0, -4604($fp)
	lw $t1, -4612($fp)
	mul $t0, $t0, $t1
	sw $t0, -4616($fp)
	li $t0, 0
	lw $t1, -4616($fp)
	sub $t0, $t0, $t1
	sw $t0, -4620($fp)
	lw $t1, -4620($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label211
label211:
	li $t0, 1
	sw $t0, -4600($fp)
label212:
	li $t0, 0
	lw $t1, -4600($fp)
	sub $t0, $t0, $t1
	sw $t0, -4624($fp)
	lw $t1, -4624($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label210
label210:
	addi $t0, $fp, -132
	sw $t0, -4628($fp)
	li $t0, 3
	sw $t0, -4632($fp)
	li $t0, 4
	lw $t1, -4632($fp)
	mul $t0, $t0, $t1
	sw $t0, -4636($fp)
	lw $t0, -4636($fp)
	lw $t1, -4628($fp)
	add $t0, $t0, $t1
	sw $t0, -4640($fp)
	lw $t0, -4640($fp)
	lw $t1, 0($t0)
	sw $t1, -4644($fp)
	lw $t0, -1348($fp)
	sw $t0, -4648($fp)
	lw $t0, -4644($fp)
	lw $t1, -4648($fp)
	mul $t0, $t0, $t1
	sw $t0, -4652($fp)
	lw $t0, -1360($fp)
	sw $t0, -4656($fp)
	lw $t0, -4652($fp)
	lw $t1, -4656($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4660($fp)
	lw $t1, -4660($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -4596($fp)
label209:
label165:
	j label147
label149:
	j label138
label140:
	lw $t0, -3812($fp)
	sw $t0, -4664($fp)
	lw $t0, -4664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3824($fp)
	sw $t0, -4668($fp)
	lw $t0, -4668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3836($fp)
	sw $t0, -4672($fp)
	lw $t0, -4672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3848($fp)
	sw $t0, -4676($fp)
	lw $t0, -4676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3860($fp)
	sw $t0, -4680($fp)
	lw $t0, -4680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3872($fp)
	sw $t0, -4684($fp)
	lw $t0, -4684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4688($fp)
	li $t0, 0
	sw $t0, -4692($fp)
	li $t0, 57845
	sw $t0, -4696($fp)
	lw $t1, -4696($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label214
label215:
	lw $t0, -640($fp)
	sw $t0, -4700($fp)
	lw $t1, -4700($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label214
label213:
	li $t0, 1
	sw $t0, -4692($fp)
label214:
	lw $t0, -4692($fp)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -4704($fp)
	li $t0, 4
	lw $t1, -4704($fp)
	mul $t0, $t0, $t1
	sw $t0, -4708($fp)
	lw $t0, -4708($fp)
	lw $t1, -4688($fp)
	add $t0, $t0, $t1
	sw $t0, -4712($fp)
	lw $t0, -4712($fp)
	lw $t1, 0($t0)
	sw $t1, -4716($fp)
	lw $ra, -4($fp)
	lw $v0, -4716($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label135:
	j label121
label123:
	addi $t0, $fp, -168
	sw $t0, -4720($fp)
	lw $t0, -1300($fp)
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
	addi $t0, $fp, -3084
	sw $t0, -4740($fp)
	lw $t0, -1048($fp)
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
	li $t0, 47899
	sw $t0, -4760($fp)
	lw $t0, -2320($fp)
	sw $t0, -4764($fp)
	lw $t0, -4760($fp)
	lw $t1, -4764($fp)
	mul $t0, $t0, $t1
	sw $t0, -4768($fp)
	li $t0, 31234
	sw $t0, -4772($fp)
	lw $t0, -4768($fp)
	lw $t1, -4772($fp)
	sub $t0, $t0, $t1
	sw $t0, -4776($fp)
	lw $t0, -988($fp)
	sw $t0, -4780($fp)
	lw $t0, -2656($fp)
	sw $t0, -4784($fp)
	lw $t0, -4780($fp)
	lw $t1, -4784($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4788($fp)
	lw $t0, 12($fp)
	sw $t0, -4792($fp)
	lw $t0, -4788($fp)
	lw $t1, -4792($fp)
	mul $t0, $t0, $t1
	sw $t0, -4796($fp)
	lw $t0, -2656($fp)
	sw $t0, -4800($fp)
	li $t0, 0
	sw $t0, -4804($fp)
	li $t0, 44800
	sw $t0, -4808($fp)
	lw $t1, -4808($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label222
label222:
	li $t0, 65277
	sw $t0, -4812($fp)
	lw $t1, -4812($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label221
label221:
	lw $t0, -1312($fp)
	sw $t0, -4816($fp)
	lw $t1, -4816($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label220
label219:
	li $t0, 1
	sw $t0, -4804($fp)
label220:
	li $t0, 5914
	sw $t0, -4820($fp)
	addi $t0, $fp, -3096
	sw $t0, -4824($fp)
	li $t0, 2
	sw $t0, -4828($fp)
	li $t0, 4
	lw $t1, -4828($fp)
	mul $t0, $t0, $t1
	sw $t0, -4832($fp)
	lw $t0, -4832($fp)
	lw $t1, -4824($fp)
	add $t0, $t0, $t1
	sw $t0, -4836($fp)
	lw $t0, -4836($fp)
	lw $t1, 0($t0)
	sw $t1, -4840($fp)
	addi $sp, $sp, -4
	lw $t0, -4800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4840($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4844($fp)
	addi $sp, $sp, 20
	lw $t0, -2632($fp)
	sw $t0, -4848($fp)
	lw $t0, -4844($fp)
	lw $t1, -4848($fp)
	add $t0, $t0, $t1
	sw $t0, -4852($fp)
	addi $sp, $sp, -4
	lw $t0, -4756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4852($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4856($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -4860($fp)
	li $t0, 0
	sw $t0, -4864($fp)
	li $t0, 59903
	sw $t0, -4868($fp)
	lw $t1, -4868($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label225
label225:
	li $t0, 1
	sw $t0, -4864($fp)
label226:
	lw $t0, -1276($fp)
	sw $t0, -4872($fp)
	lw $t1, -4864($fp)
	lw $t2, -4872($fp)
	ble $t1, $t2, label223
	j label224
label223:
	li $t0, 1
	sw $t0, -4860($fp)
label224:
	lw $t0, -2068($fp)
	sw $t0, -4876($fp)
	addi $t0, $fp, -296
	sw $t0, -4880($fp)
	li $t0, 3
	sw $t0, -4884($fp)
	li $t0, 4
	lw $t1, -4884($fp)
	mul $t0, $t0, $t1
	sw $t0, -4888($fp)
	lw $t0, -4888($fp)
	lw $t1, -4880($fp)
	add $t0, $t0, $t1
	sw $t0, -4892($fp)
	lw $t0, -4892($fp)
	lw $t1, 0($t0)
	sw $t1, -4896($fp)
	li $t0, 7529
	sw $t0, -4900($fp)
	lw $t0, -4896($fp)
	lw $t1, -4900($fp)
	add $t0, $t0, $t1
	sw $t0, -4904($fp)
	lw $t0, -2752($fp)
	sw $t0, -4908($fp)
	lw $t0, -4908($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -4912($fp)
	addi $sp, $sp, -4
	lw $t0, -4860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4912($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4916($fp)
	addi $sp, $sp, 20
	lw $t0, -4856($fp)
	lw $t1, -4916($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4920($fp)
	li $t0, 0
	lw $t1, -4920($fp)
	sub $t0, $t0, $t1
	sw $t0, -4924($fp)
	lw $t0, -4736($fp)
	lw $t1, -4924($fp)
	mul $t0, $t0, $t1
	sw $t0, -4928($fp)
	li $t0, 0
	lw $t1, -4928($fp)
	sub $t0, $t0, $t1
	sw $t0, -4932($fp)
	lw $t1, -4932($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label217
label216:
	li $t0, 21735
	sw $t0, -4936($fp)
	j label218
label217:
	li $t0, 0
	sw $t0, -4940($fp)
	lw $t0, -2512($fp)
	sw $t0, -4944($fp)
	li $t0, 34017
	sw $t0, -4948($fp)
	lw $t0, -4944($fp)
	lw $t1, -4948($fp)
	mul $t0, $t0, $t1
	sw $t0, -4952($fp)
	li $t0, 47295
	sw $t0, -4956($fp)
	lw $t0, -4952($fp)
	lw $t1, -4956($fp)
	mul $t0, $t0, $t1
	sw $t0, -4960($fp)
	li $t0, 0
	sw $t0, -4964($fp)
	li $t0, 0
	sw $t0, -4968($fp)
	li $t0, 2330
	sw $t0, -4972($fp)
	lw $t0, -2740($fp)
	sw $t0, -4976($fp)
	lw $t0, -4972($fp)
	lw $t1, -4976($fp)
	mul $t0, $t0, $t1
	sw $t0, -4980($fp)
	lw $t0, -652($fp)
	sw $t0, -4984($fp)
	lw $t1, -4980($fp)
	lw $t2, -4984($fp)
	bne $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -4968($fp)
label237:
	li $t0, 42503
	sw $t0, -4988($fp)
	li $t0, 0
	sw $t0, -4992($fp)
	li $t0, 0
	sw $t0, -4996($fp)
	lw $t0, -2500($fp)
	sw $t0, -5000($fp)
	lw $t0, -1012($fp)
	sw $t0, -5004($fp)
	lw $t1, -5000($fp)
	lw $t2, -5004($fp)
	bgt $t1, $t2, label240
	j label241
label240:
	li $t0, 1
	sw $t0, -4996($fp)
label241:
	lw $t0, -1312($fp)
	sw $t0, -5008($fp)
	lw $t1, -4996($fp)
	lw $t2, -5008($fp)
	bge $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -4992($fp)
label239:
	li $t0, 0
	sw $t0, -5012($fp)
	li $t0, 0
	sw $t0, -5016($fp)
	lw $t0, -2704($fp)
	sw $t0, -5020($fp)
	lw $t0, -2128($fp)
	sw $t0, -5024($fp)
	lw $t0, -5020($fp)
	lw $t1, -5024($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5028($fp)
	lw $t1, -5028($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label245
label246:
	li $t0, 6
	sw $t0, -5032($fp)
	lw $t1, -5032($fp)
	li $t2, 0
	bne $t1, $t2, label244
	j label245
label244:
	li $t0, 1
	sw $t0, -5016($fp)
label245:
	li $t0, 0
	sw $t0, -5036($fp)
	li $t0, 54902
	sw $t0, -5040($fp)
	li $t0, 25135
	sw $t0, -5044($fp)
	lw $t1, -5040($fp)
	lw $t2, -5044($fp)
	ble $t1, $t2, label247
	j label249
label249:
	lw $t0, -2440($fp)
	sw $t0, -5048($fp)
	lw $t1, -5048($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label248
label247:
	li $t0, 1
	sw $t0, -5036($fp)
label248:
	lw $t0, -2992($fp)
	sw $t0, -5052($fp)
	lw $t0, -3512($fp)
	sw $t0, -5056($fp)
	lw $t0, -5052($fp)
	lw $t1, -5056($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5060($fp)
	li $t0, 50235
	sw $t0, -5064($fp)
	lw $t0, -5060($fp)
	lw $t1, -5064($fp)
	add $t0, $t0, $t1
	sw $t0, -5068($fp)
	li $t0, 0
	sw $t0, -5072($fp)
	addi $t0, $fp, -264
	sw $t0, -5076($fp)
	li $t0, 3
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
	lw $t0, -2428($fp)
	sw $t0, -5096($fp)
	lw $t1, -5092($fp)
	lw $t2, -5096($fp)
	bge $t1, $t2, label250
	j label251
label250:
	li $t0, 1
	sw $t0, -5072($fp)
label251:
	addi $sp, $sp, -4
	lw $t0, -5016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5072($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5100($fp)
	addi $sp, $sp, 20
	lw $t1, -5100($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label242
label242:
	li $t0, 1
	sw $t0, -5012($fp)
label243:
	addi $sp, $sp, -4
	lw $t0, -4968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5012($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5104($fp)
	addi $sp, $sp, 20
	lw $t1, -5104($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label235
label235:
	li $t0, 62277
	sw $t0, -5108($fp)
	lw $t1, -5108($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label234
label233:
	li $t0, 1
	sw $t0, -4964($fp)
label234:
	li $t0, 0
	sw $t0, -5112($fp)
	li $t0, 40898
	sw $t0, -5116($fp)
	li $t0, 1232
	sw $t0, -5120($fp)
	lw $t1, -5116($fp)
	lw $t2, -5120($fp)
	blt $t1, $t2, label252
	j label253
label252:
	li $t0, 1
	sw $t0, -5112($fp)
label253:
	addi $t0, $fp, -280
	sw $t0, -5124($fp)
	li $t0, 2
	sw $t0, -5128($fp)
	li $t0, 4
	lw $t1, -5128($fp)
	mul $t0, $t0, $t1
	sw $t0, -5132($fp)
	lw $t0, -5132($fp)
	lw $t1, -5124($fp)
	add $t0, $t0, $t1
	sw $t0, -5136($fp)
	lw $t0, -5136($fp)
	lw $t1, 0($t0)
	sw $t1, -5140($fp)
	lw $t0, -3536($fp)
	sw $t0, -5144($fp)
	lw $t0, -5140($fp)
	lw $t1, -5144($fp)
	add $t0, $t0, $t1
	sw $t0, -5148($fp)
	addi $sp, $sp, -4
	lw $t0, -4960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5148($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5152($fp)
	addi $sp, $sp, 20
	lw $t1, -5152($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label231
label232:
	li $t0, 54586
	sw $t0, -5156($fp)
	lw $t1, -5156($fp)
	li $t2, 0
	bne $t1, $t2, label230
	j label231
label230:
	li $t0, 1
	sw $t0, -4940($fp)
label231:
	li $t0, 7750
	sw $t0, -5160($fp)
	lw $t0, -2116($fp)
	sw $t0, -5164($fp)
	lw $t0, -5160($fp)
	lw $t1, -5164($fp)
	mul $t0, $t0, $t1
	sw $t0, -5168($fp)
	lw $t0, -1324($fp)
	sw $t0, -5172($fp)
	lw $t0, -5168($fp)
	lw $t1, -5172($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5176($fp)
	addi $t0, $fp, -264
	sw $t0, -5180($fp)
	li $t0, 0
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
	lw $t0, -1000($fp)
	sw $t0, -5200($fp)
	lw $t0, -1360($fp)
	sw $t0, -5204($fp)
	lw $t0, -5200($fp)
	lw $t1, -5204($fp)
	add $t0, $t0, $t1
	sw $t0, -5208($fp)
	addi $sp, $sp, -4
	lw $t0, -4940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5208($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5212($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -332
	sw $t0, -5216($fp)
	li $t0, 0
	sw $t0, -5220($fp)
	lw $t0, -1276($fp)
	sw $t0, -5224($fp)
	li $t0, 8876
	sw $t0, -5228($fp)
	lw $t1, -5224($fp)
	lw $t2, -5228($fp)
	bge $t1, $t2, label254
	j label255
label254:
	li $t0, 1
	sw $t0, -5220($fp)
label255:
	li $t0, 4
	lw $t1, -5220($fp)
	mul $t0, $t0, $t1
	sw $t0, -5232($fp)
	lw $t0, -5232($fp)
	lw $t1, -5216($fp)
	add $t0, $t0, $t1
	sw $t0, -5236($fp)
	lw $t0, -5236($fp)
	lw $t1, 0($t0)
	sw $t1, -5240($fp)
	lw $t1, -5212($fp)
	lw $t2, -5240($fp)
	bgt $t1, $t2, label227
	j label228
label227:
	li $t0, 0
	sw $t0, -5244($fp)
	lw $t0, -2140($fp)
	sw $t0, -5248($fp)
	lw $t1, -5248($fp)
	li $t2, 0
	bne $t1, $t2, label257
	j label256
label256:
	li $t0, 1
	sw $t0, -5244($fp)
label257:
	lw $ra, -4($fp)
	lw $v0, -5244($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label229
label228:
	addi $t0, $fp, -32
	sw $t0, -5252($fp)
	lw $t0, -508($fp)
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
	li $t0, 0
	lw $t1, -5268($fp)
	sub $t0, $t0, $t1
	sw $t0, -5272($fp)
	lw $t0, 16($fp)
	sw $t0, -5276($fp)
	li $t0, 0
	lw $t1, -5276($fp)
	sub $t0, $t0, $t1
	sw $t0, -5280($fp)
	lw $t0, -2668($fp)
	sw $t0, -5284($fp)
	li $t0, 53676
	sw $t0, -5288($fp)
	lw $t0, -5284($fp)
	lw $t1, -5288($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5292($fp)
	li $t0, 21479
	sw $t0, -5296($fp)
	lw $t0, -5292($fp)
	lw $t1, -5296($fp)
	mul $t0, $t0, $t1
	sw $t0, -5300($fp)
	addi $t0, $fp, -200
	sw $t0, -5304($fp)
	li $t0, 5
	sw $t0, -5308($fp)
	li $t0, 4
	lw $t1, -5308($fp)
	mul $t0, $t0, $t1
	sw $t0, -5312($fp)
	lw $t0, -5312($fp)
	lw $t1, -5304($fp)
	add $t0, $t0, $t1
	sw $t0, -5316($fp)
	lw $t0, -5316($fp)
	lw $t1, 0($t0)
	sw $t1, -5320($fp)
	addi $sp, $sp, -4
	lw $t0, -5272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5320($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5324($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -48
	sw $t0, -5328($fp)
	li $t0, 3
	sw $t0, -5332($fp)
	li $t0, 4
	lw $t1, -5332($fp)
	mul $t0, $t0, $t1
	sw $t0, -5336($fp)
	lw $t0, -5336($fp)
	lw $t1, -5328($fp)
	add $t0, $t0, $t1
	sw $t0, -5340($fp)
	lw $t0, -5340($fp)
	lw $t1, 0($t0)
	sw $t1, -5344($fp)
	li $t0, 0
	lw $t1, -5344($fp)
	sub $t0, $t0, $t1
	sw $t0, -5348($fp)
	li $t0, 0
	lw $t1, -5348($fp)
	sub $t0, $t0, $t1
	sw $t0, -5352($fp)
	lw $t1, -5324($fp)
	lw $t2, -5352($fp)
	ble $t1, $t2, label258
	j label259
label258:
	li $t0, 0
	sw $t0, -5356($fp)
	lw $t0, -3524($fp)
	sw $t0, -5360($fp)
	lw $t1, -5360($fp)
	li $t2, 0
	bne $t1, $t2, label262
	j label261
label261:
	li $t0, 1
	sw $t0, -5356($fp)
label262:
	li $t0, 0
	sw $t0, -5364($fp)
	lw $t0, -1324($fp)
	sw $t0, -5368($fp)
	lw $t1, -5368($fp)
	li $t2, 0
	bne $t1, $t2, label264
	j label263
label263:
	li $t0, 1
	sw $t0, -5364($fp)
label264:
	lw $t0, -5356($fp)
	lw $t1, -5364($fp)
	mul $t0, $t0, $t1
	sw $t0, -5372($fp)
	li $t0, 0
	lw $t1, -5372($fp)
	sub $t0, $t0, $t1
	sw $t0, -5376($fp)
	j label260
label259:
	li $t0, 0
	sw $t0, -5380($fp)
	lw $t0, -1336($fp)
	sw $t0, -5384($fp)
	lw $t0, -3548($fp)
	sw $t0, -5388($fp)
	addi $t0, $fp, -240
	sw $t0, -5392($fp)
	lw $t0, -1816($fp)
	sw $t0, -5396($fp)
	li $t0, 4
	lw $t1, -5396($fp)
	mul $t0, $t0, $t1
	sw $t0, -5400($fp)
	lw $t0, -5400($fp)
	lw $t1, -5392($fp)
	add $t0, $t0, $t1
	sw $t0, -5404($fp)
	lw $t0, -5404($fp)
	lw $t1, 0($t0)
	sw $t1, -5408($fp)
	lw $t0, -5388($fp)
	lw $t1, -5408($fp)
	mul $t0, $t0, $t1
	sw $t0, -5412($fp)
	li $t0, 0
	lw $t1, -5412($fp)
	sub $t0, $t0, $t1
	sw $t0, -5416($fp)
	lw $t0, -5384($fp)
	lw $t1, -5416($fp)
	mul $t0, $t0, $t1
	sw $t0, -5420($fp)
	li $t0, 31135
	sw $t0, -5424($fp)
	lw $t1, -5420($fp)
	lw $t2, -5424($fp)
	bgt $t1, $t2, label265
	j label266
label265:
	li $t0, 1
	sw $t0, -5380($fp)
label266:
label260:
label229:
label218:
	li $t0, 48643
	sw $t0, -5556($fp)
	lw $t0, -5556($fp)
	sw $t0, -5560($fp)
	lw $t0, -5560($fp)
	sw $t0, -5564($fp)
	li $t0, 26904
	sw $t0, -5568($fp)
	lw $t0, -5568($fp)
	sw $t0, -5572($fp)
	lw $t0, -5572($fp)
	sw $t0, -5576($fp)
	li $t0, 25502
	sw $t0, -5580($fp)
	lw $t0, -5580($fp)
	sw $t0, -5584($fp)
	lw $t0, -5584($fp)
	sw $t0, -5588($fp)
	li $t0, 4842
	sw $t0, -5592($fp)
	lw $t0, -5592($fp)
	sw $t0, -5596($fp)
	lw $t0, -5596($fp)
	sw $t0, -5600($fp)
	li $t0, 42705
	sw $t0, -5604($fp)
	lw $t0, -5604($fp)
	sw $t0, -5608($fp)
	lw $t0, -5608($fp)
	sw $t0, -5612($fp)
	li $t0, 15800
	sw $t0, -5616($fp)
	lw $t0, -5616($fp)
	sw $t0, -5620($fp)
	lw $t0, -5620($fp)
	sw $t0, -5624($fp)
	li $t0, 12592
	sw $t0, -5628($fp)
	lw $t0, -5628($fp)
	sw $t0, -5632($fp)
	lw $t0, -5632($fp)
	sw $t0, -5636($fp)
	li $t0, 17463
	sw $t0, -5640($fp)
	lw $t0, -5640($fp)
	sw $t0, -5644($fp)
	lw $t0, -5644($fp)
	sw $t0, -5648($fp)
	li $t0, 58559
	sw $t0, -5652($fp)
	addi $t0, $fp, -5456
	sw $t0, -5656($fp)
	li $t0, 0
	sw $t0, -5660($fp)
	lw $t0, -5660($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5664($fp)
	lw $t0, -5656($fp)
	lw $t1, -5664($fp)
	add $t0, $t0, $t1
	sw $t0, -5668($fp)
	lw $t0, -5652($fp)
	lw $t1, -5668($fp)
	sw $t0, 0($t1)
	lw $t0, -5668($fp)
	lw $t1, 0($t0)
	sw $t1, -5672($fp)
	li $t0, 53490
	sw $t0, -5676($fp)
	addi $t0, $fp, -5456
	sw $t0, -5680($fp)
	li $t0, 1
	sw $t0, -5684($fp)
	lw $t0, -5684($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5688($fp)
	lw $t0, -5680($fp)
	lw $t1, -5688($fp)
	add $t0, $t0, $t1
	sw $t0, -5692($fp)
	lw $t0, -5676($fp)
	lw $t1, -5692($fp)
	sw $t0, 0($t1)
	lw $t0, -5692($fp)
	lw $t1, 0($t0)
	sw $t1, -5696($fp)
	li $t0, 18695
	sw $t0, -5700($fp)
	addi $t0, $fp, -5456
	sw $t0, -5704($fp)
	li $t0, 2
	sw $t0, -5708($fp)
	lw $t0, -5708($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5712($fp)
	lw $t0, -5704($fp)
	lw $t1, -5712($fp)
	add $t0, $t0, $t1
	sw $t0, -5716($fp)
	lw $t0, -5700($fp)
	lw $t1, -5716($fp)
	sw $t0, 0($t1)
	lw $t0, -5716($fp)
	lw $t1, 0($t0)
	sw $t1, -5720($fp)
	li $t0, 29175
	sw $t0, -5724($fp)
	addi $t0, $fp, -5456
	sw $t0, -5728($fp)
	li $t0, 3
	sw $t0, -5732($fp)
	lw $t0, -5732($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5736($fp)
	lw $t0, -5728($fp)
	lw $t1, -5736($fp)
	add $t0, $t0, $t1
	sw $t0, -5740($fp)
	lw $t0, -5724($fp)
	lw $t1, -5740($fp)
	sw $t0, 0($t1)
	lw $t0, -5740($fp)
	lw $t1, 0($t0)
	sw $t1, -5744($fp)
	li $t0, 52971
	sw $t0, -5748($fp)
	addi $t0, $fp, -5456
	sw $t0, -5752($fp)
	li $t0, 4
	sw $t0, -5756($fp)
	lw $t0, -5756($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5760($fp)
	lw $t0, -5752($fp)
	lw $t1, -5760($fp)
	add $t0, $t0, $t1
	sw $t0, -5764($fp)
	lw $t0, -5748($fp)
	lw $t1, -5764($fp)
	sw $t0, 0($t1)
	lw $t0, -5764($fp)
	lw $t1, 0($t0)
	sw $t1, -5768($fp)
	li $t0, 3394
	sw $t0, -5772($fp)
	addi $t0, $fp, -5456
	sw $t0, -5776($fp)
	li $t0, 5
	sw $t0, -5780($fp)
	lw $t0, -5780($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5784($fp)
	lw $t0, -5776($fp)
	lw $t1, -5784($fp)
	add $t0, $t0, $t1
	sw $t0, -5788($fp)
	lw $t0, -5772($fp)
	lw $t1, -5788($fp)
	sw $t0, 0($t1)
	lw $t0, -5788($fp)
	lw $t1, 0($t0)
	sw $t1, -5792($fp)
	li $t0, 18542
	sw $t0, -5796($fp)
	addi $t0, $fp, -5456
	sw $t0, -5800($fp)
	li $t0, 6
	sw $t0, -5804($fp)
	lw $t0, -5804($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5808($fp)
	lw $t0, -5800($fp)
	lw $t1, -5808($fp)
	add $t0, $t0, $t1
	sw $t0, -5812($fp)
	lw $t0, -5796($fp)
	lw $t1, -5812($fp)
	sw $t0, 0($t1)
	lw $t0, -5812($fp)
	lw $t1, 0($t0)
	sw $t1, -5816($fp)
	li $t0, 12570
	sw $t0, -5820($fp)
	addi $t0, $fp, -5456
	sw $t0, -5824($fp)
	li $t0, 7
	sw $t0, -5828($fp)
	lw $t0, -5828($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5832($fp)
	lw $t0, -5824($fp)
	lw $t1, -5832($fp)
	add $t0, $t0, $t1
	sw $t0, -5836($fp)
	lw $t0, -5820($fp)
	lw $t1, -5836($fp)
	sw $t0, 0($t1)
	lw $t0, -5836($fp)
	lw $t1, 0($t0)
	sw $t1, -5840($fp)
	li $t0, 3400
	sw $t0, -5844($fp)
	addi $t0, $fp, -5488
	sw $t0, -5848($fp)
	li $t0, 0
	sw $t0, -5852($fp)
	lw $t0, -5852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5856($fp)
	lw $t0, -5848($fp)
	lw $t1, -5856($fp)
	add $t0, $t0, $t1
	sw $t0, -5860($fp)
	lw $t0, -5844($fp)
	lw $t1, -5860($fp)
	sw $t0, 0($t1)
	lw $t0, -5860($fp)
	lw $t1, 0($t0)
	sw $t1, -5864($fp)
	li $t0, 61045
	sw $t0, -5868($fp)
	addi $t0, $fp, -5488
	sw $t0, -5872($fp)
	li $t0, 1
	sw $t0, -5876($fp)
	lw $t0, -5876($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5880($fp)
	lw $t0, -5872($fp)
	lw $t1, -5880($fp)
	add $t0, $t0, $t1
	sw $t0, -5884($fp)
	lw $t0, -5868($fp)
	lw $t1, -5884($fp)
	sw $t0, 0($t1)
	lw $t0, -5884($fp)
	lw $t1, 0($t0)
	sw $t1, -5888($fp)
	li $t0, 14901
	sw $t0, -5892($fp)
	addi $t0, $fp, -5488
	sw $t0, -5896($fp)
	li $t0, 2
	sw $t0, -5900($fp)
	lw $t0, -5900($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5904($fp)
	lw $t0, -5896($fp)
	lw $t1, -5904($fp)
	add $t0, $t0, $t1
	sw $t0, -5908($fp)
	lw $t0, -5892($fp)
	lw $t1, -5908($fp)
	sw $t0, 0($t1)
	lw $t0, -5908($fp)
	lw $t1, 0($t0)
	sw $t1, -5912($fp)
	li $t0, 141
	sw $t0, -5916($fp)
	addi $t0, $fp, -5488
	sw $t0, -5920($fp)
	li $t0, 3
	sw $t0, -5924($fp)
	lw $t0, -5924($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5928($fp)
	lw $t0, -5920($fp)
	lw $t1, -5928($fp)
	add $t0, $t0, $t1
	sw $t0, -5932($fp)
	lw $t0, -5916($fp)
	lw $t1, -5932($fp)
	sw $t0, 0($t1)
	lw $t0, -5932($fp)
	lw $t1, 0($t0)
	sw $t1, -5936($fp)
	li $t0, 29527
	sw $t0, -5940($fp)
	addi $t0, $fp, -5488
	sw $t0, -5944($fp)
	li $t0, 4
	sw $t0, -5948($fp)
	lw $t0, -5948($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5952($fp)
	lw $t0, -5944($fp)
	lw $t1, -5952($fp)
	add $t0, $t0, $t1
	sw $t0, -5956($fp)
	lw $t0, -5940($fp)
	lw $t1, -5956($fp)
	sw $t0, 0($t1)
	lw $t0, -5956($fp)
	lw $t1, 0($t0)
	sw $t1, -5960($fp)
	li $t0, 62196
	sw $t0, -5964($fp)
	addi $t0, $fp, -5488
	sw $t0, -5968($fp)
	li $t0, 5
	sw $t0, -5972($fp)
	lw $t0, -5972($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5976($fp)
	lw $t0, -5968($fp)
	lw $t1, -5976($fp)
	add $t0, $t0, $t1
	sw $t0, -5980($fp)
	lw $t0, -5964($fp)
	lw $t1, -5980($fp)
	sw $t0, 0($t1)
	lw $t0, -5980($fp)
	lw $t1, 0($t0)
	sw $t1, -5984($fp)
	li $t0, 54727
	sw $t0, -5988($fp)
	addi $t0, $fp, -5488
	sw $t0, -5992($fp)
	li $t0, 6
	sw $t0, -5996($fp)
	lw $t0, -5996($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6000($fp)
	lw $t0, -5992($fp)
	lw $t1, -6000($fp)
	add $t0, $t0, $t1
	sw $t0, -6004($fp)
	lw $t0, -5988($fp)
	lw $t1, -6004($fp)
	sw $t0, 0($t1)
	lw $t0, -6004($fp)
	lw $t1, 0($t0)
	sw $t1, -6008($fp)
	li $t0, 38403
	sw $t0, -6012($fp)
	addi $t0, $fp, -5488
	sw $t0, -6016($fp)
	li $t0, 7
	sw $t0, -6020($fp)
	lw $t0, -6020($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6024($fp)
	lw $t0, -6016($fp)
	lw $t1, -6024($fp)
	add $t0, $t0, $t1
	sw $t0, -6028($fp)
	lw $t0, -6012($fp)
	lw $t1, -6028($fp)
	sw $t0, 0($t1)
	lw $t0, -6028($fp)
	lw $t1, 0($t0)
	sw $t1, -6032($fp)
	li $t0, 18397
	sw $t0, -6036($fp)
	lw $t0, -6036($fp)
	sw $t0, -6040($fp)
	lw $t0, -6040($fp)
	sw $t0, -6044($fp)
	li $t0, 49692
	sw $t0, -6048($fp)
	lw $t0, -6048($fp)
	sw $t0, -6052($fp)
	lw $t0, -6052($fp)
	sw $t0, -6056($fp)
	li $t0, 26543
	sw $t0, -6060($fp)
	lw $t0, -6060($fp)
	sw $t0, -6064($fp)
	lw $t0, -6064($fp)
	sw $t0, -6068($fp)
	li $t0, 39876
	sw $t0, -6072($fp)
	lw $t0, -6072($fp)
	sw $t0, -6076($fp)
	lw $t0, -6076($fp)
	sw $t0, -6080($fp)
	li $t0, 27020
	sw $t0, -6084($fp)
	lw $t0, -6084($fp)
	sw $t0, -6088($fp)
	lw $t0, -6088($fp)
	sw $t0, -6092($fp)
	li $t0, 45918
	sw $t0, -6096($fp)
	lw $t0, -6096($fp)
	sw $t0, -6100($fp)
	lw $t0, -6100($fp)
	sw $t0, -6104($fp)
	li $t0, 5476
	sw $t0, -6108($fp)
	lw $t0, -6108($fp)
	sw $t0, -6112($fp)
	lw $t0, -6112($fp)
	sw $t0, -6116($fp)
	li $t0, 10127
	sw $t0, -6120($fp)
	lw $t0, -6120($fp)
	sw $t0, -6124($fp)
	lw $t0, -6124($fp)
	sw $t0, -6128($fp)
	li $t0, 7287
	sw $t0, -6132($fp)
	lw $t0, -6132($fp)
	sw $t0, -6136($fp)
	lw $t0, -6136($fp)
	sw $t0, -6140($fp)
	li $t0, 30978
	sw $t0, -6144($fp)
	lw $t0, -6144($fp)
	sw $t0, -6148($fp)
	lw $t0, -6148($fp)
	sw $t0, -6152($fp)
	li $t0, 14969
	sw $t0, -6156($fp)
	lw $t0, -6156($fp)
	sw $t0, -6160($fp)
	lw $t0, -6160($fp)
	sw $t0, -6164($fp)
	li $t0, 49992
	sw $t0, -6168($fp)
	lw $t0, -6168($fp)
	sw $t0, -6172($fp)
	lw $t0, -6172($fp)
	sw $t0, -6176($fp)
	li $t0, 46779
	sw $t0, -6180($fp)
	lw $t0, -6180($fp)
	sw $t0, -6184($fp)
	lw $t0, -6184($fp)
	sw $t0, -6188($fp)
	li $t0, 27561
	sw $t0, -6192($fp)
	lw $t0, -6192($fp)
	sw $t0, -6196($fp)
	lw $t0, -6196($fp)
	sw $t0, -6200($fp)
	li $t0, 1919
	sw $t0, -6204($fp)
	lw $t0, -6204($fp)
	sw $t0, -6208($fp)
	lw $t0, -6208($fp)
	sw $t0, -6212($fp)
	li $t0, 39802
	sw $t0, -6216($fp)
	lw $t0, -6216($fp)
	sw $t0, -6220($fp)
	lw $t0, -6220($fp)
	sw $t0, -6224($fp)
	li $t0, 15516
	sw $t0, -6228($fp)
	addi $t0, $fp, -5524
	sw $t0, -6232($fp)
	li $t0, 0
	sw $t0, -6236($fp)
	lw $t0, -6236($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6240($fp)
	lw $t0, -6232($fp)
	lw $t1, -6240($fp)
	add $t0, $t0, $t1
	sw $t0, -6244($fp)
	lw $t0, -6228($fp)
	lw $t1, -6244($fp)
	sw $t0, 0($t1)
	lw $t0, -6244($fp)
	lw $t1, 0($t0)
	sw $t1, -6248($fp)
	li $t0, 20614
	sw $t0, -6252($fp)
	addi $t0, $fp, -5524
	sw $t0, -6256($fp)
	li $t0, 1
	sw $t0, -6260($fp)
	lw $t0, -6260($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6264($fp)
	lw $t0, -6256($fp)
	lw $t1, -6264($fp)
	add $t0, $t0, $t1
	sw $t0, -6268($fp)
	lw $t0, -6252($fp)
	lw $t1, -6268($fp)
	sw $t0, 0($t1)
	lw $t0, -6268($fp)
	lw $t1, 0($t0)
	sw $t1, -6272($fp)
	li $t0, 3441
	sw $t0, -6276($fp)
	addi $t0, $fp, -5524
	sw $t0, -6280($fp)
	li $t0, 2
	sw $t0, -6284($fp)
	lw $t0, -6284($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6288($fp)
	lw $t0, -6280($fp)
	lw $t1, -6288($fp)
	add $t0, $t0, $t1
	sw $t0, -6292($fp)
	lw $t0, -6276($fp)
	lw $t1, -6292($fp)
	sw $t0, 0($t1)
	lw $t0, -6292($fp)
	lw $t1, 0($t0)
	sw $t1, -6296($fp)
	li $t0, 2951
	sw $t0, -6300($fp)
	addi $t0, $fp, -5524
	sw $t0, -6304($fp)
	li $t0, 3
	sw $t0, -6308($fp)
	lw $t0, -6308($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6312($fp)
	lw $t0, -6304($fp)
	lw $t1, -6312($fp)
	add $t0, $t0, $t1
	sw $t0, -6316($fp)
	lw $t0, -6300($fp)
	lw $t1, -6316($fp)
	sw $t0, 0($t1)
	lw $t0, -6316($fp)
	lw $t1, 0($t0)
	sw $t1, -6320($fp)
	li $t0, 24008
	sw $t0, -6324($fp)
	addi $t0, $fp, -5524
	sw $t0, -6328($fp)
	li $t0, 4
	sw $t0, -6332($fp)
	lw $t0, -6332($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6336($fp)
	lw $t0, -6328($fp)
	lw $t1, -6336($fp)
	add $t0, $t0, $t1
	sw $t0, -6340($fp)
	lw $t0, -6324($fp)
	lw $t1, -6340($fp)
	sw $t0, 0($t1)
	lw $t0, -6340($fp)
	lw $t1, 0($t0)
	sw $t1, -6344($fp)
	li $t0, 21983
	sw $t0, -6348($fp)
	addi $t0, $fp, -5524
	sw $t0, -6352($fp)
	li $t0, 5
	sw $t0, -6356($fp)
	lw $t0, -6356($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6360($fp)
	lw $t0, -6352($fp)
	lw $t1, -6360($fp)
	add $t0, $t0, $t1
	sw $t0, -6364($fp)
	lw $t0, -6348($fp)
	lw $t1, -6364($fp)
	sw $t0, 0($t1)
	lw $t0, -6364($fp)
	lw $t1, 0($t0)
	sw $t1, -6368($fp)
	li $t0, 15522
	sw $t0, -6372($fp)
	addi $t0, $fp, -5524
	sw $t0, -6376($fp)
	li $t0, 6
	sw $t0, -6380($fp)
	lw $t0, -6380($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6384($fp)
	lw $t0, -6376($fp)
	lw $t1, -6384($fp)
	add $t0, $t0, $t1
	sw $t0, -6388($fp)
	lw $t0, -6372($fp)
	lw $t1, -6388($fp)
	sw $t0, 0($t1)
	lw $t0, -6388($fp)
	lw $t1, 0($t0)
	sw $t1, -6392($fp)
	li $t0, 27408
	sw $t0, -6396($fp)
	addi $t0, $fp, -5524
	sw $t0, -6400($fp)
	li $t0, 7
	sw $t0, -6404($fp)
	lw $t0, -6404($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6408($fp)
	lw $t0, -6400($fp)
	lw $t1, -6408($fp)
	add $t0, $t0, $t1
	sw $t0, -6412($fp)
	lw $t0, -6396($fp)
	lw $t1, -6412($fp)
	sw $t0, 0($t1)
	lw $t0, -6412($fp)
	lw $t1, 0($t0)
	sw $t1, -6416($fp)
	li $t0, 17493
	sw $t0, -6420($fp)
	addi $t0, $fp, -5524
	sw $t0, -6424($fp)
	li $t0, 8
	sw $t0, -6428($fp)
	lw $t0, -6428($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6432($fp)
	lw $t0, -6424($fp)
	lw $t1, -6432($fp)
	add $t0, $t0, $t1
	sw $t0, -6436($fp)
	lw $t0, -6420($fp)
	lw $t1, -6436($fp)
	sw $t0, 0($t1)
	lw $t0, -6436($fp)
	lw $t1, 0($t0)
	sw $t1, -6440($fp)
	li $t0, 30423
	sw $t0, -6444($fp)
	lw $t0, -6444($fp)
	sw $t0, -6448($fp)
	lw $t0, -6448($fp)
	sw $t0, -6452($fp)
	li $t0, 27549
	sw $t0, -6456($fp)
	lw $t0, -6456($fp)
	sw $t0, -6460($fp)
	lw $t0, -6460($fp)
	sw $t0, -6464($fp)
	li $t0, 47020
	sw $t0, -6468($fp)
	lw $t0, -6468($fp)
	sw $t0, -6472($fp)
	lw $t0, -6472($fp)
	sw $t0, -6476($fp)
	li $t0, 27083
	sw $t0, -6480($fp)
	lw $t0, -6480($fp)
	sw $t0, -6484($fp)
	lw $t0, -6484($fp)
	sw $t0, -6488($fp)
	li $t0, 16741
	sw $t0, -6492($fp)
	addi $t0, $fp, -5552
	sw $t0, -6496($fp)
	li $t0, 0
	sw $t0, -6500($fp)
	lw $t0, -6500($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6504($fp)
	lw $t0, -6496($fp)
	lw $t1, -6504($fp)
	add $t0, $t0, $t1
	sw $t0, -6508($fp)
	lw $t0, -6492($fp)
	lw $t1, -6508($fp)
	sw $t0, 0($t1)
	lw $t0, -6508($fp)
	lw $t1, 0($t0)
	sw $t1, -6512($fp)
	li $t0, 19887
	sw $t0, -6516($fp)
	addi $t0, $fp, -5552
	sw $t0, -6520($fp)
	li $t0, 1
	sw $t0, -6524($fp)
	lw $t0, -6524($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6528($fp)
	lw $t0, -6520($fp)
	lw $t1, -6528($fp)
	add $t0, $t0, $t1
	sw $t0, -6532($fp)
	lw $t0, -6516($fp)
	lw $t1, -6532($fp)
	sw $t0, 0($t1)
	lw $t0, -6532($fp)
	lw $t1, 0($t0)
	sw $t1, -6536($fp)
	li $t0, 45480
	sw $t0, -6540($fp)
	addi $t0, $fp, -5552
	sw $t0, -6544($fp)
	li $t0, 2
	sw $t0, -6548($fp)
	lw $t0, -6548($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6552($fp)
	lw $t0, -6544($fp)
	lw $t1, -6552($fp)
	add $t0, $t0, $t1
	sw $t0, -6556($fp)
	lw $t0, -6540($fp)
	lw $t1, -6556($fp)
	sw $t0, 0($t1)
	lw $t0, -6556($fp)
	lw $t1, 0($t0)
	sw $t1, -6560($fp)
	li $t0, 897
	sw $t0, -6564($fp)
	addi $t0, $fp, -5552
	sw $t0, -6568($fp)
	li $t0, 3
	sw $t0, -6572($fp)
	lw $t0, -6572($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6576($fp)
	lw $t0, -6568($fp)
	lw $t1, -6576($fp)
	add $t0, $t0, $t1
	sw $t0, -6580($fp)
	lw $t0, -6564($fp)
	lw $t1, -6580($fp)
	sw $t0, 0($t1)
	lw $t0, -6580($fp)
	lw $t1, 0($t0)
	sw $t1, -6584($fp)
	li $t0, 46430
	sw $t0, -6588($fp)
	addi $t0, $fp, -5552
	sw $t0, -6592($fp)
	li $t0, 4
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
	li $t0, 19821
	sw $t0, -6612($fp)
	addi $t0, $fp, -5552
	sw $t0, -6616($fp)
	li $t0, 5
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
	li $t0, 27918
	sw $t0, -6636($fp)
	addi $t0, $fp, -5552
	sw $t0, -6640($fp)
	li $t0, 6
	sw $t0, -6644($fp)
	lw $t0, -6644($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6648($fp)
	lw $t0, -6640($fp)
	lw $t1, -6648($fp)
	add $t0, $t0, $t1
	sw $t0, -6652($fp)
	lw $t0, -6636($fp)
	lw $t1, -6652($fp)
	sw $t0, 0($t1)
	lw $t0, -6652($fp)
	lw $t1, 0($t0)
	sw $t1, -6656($fp)
	li $t0, 26813
	sw $t0, -6660($fp)
	lw $t0, -6660($fp)
	sw $t0, -6664($fp)
	lw $t0, -6664($fp)
	sw $t0, -6668($fp)
	li $t0, 25297
	sw $t0, -6672($fp)
	lw $t0, -6672($fp)
	sw $t0, -6676($fp)
	lw $t0, -6676($fp)
	sw $t0, -6680($fp)
	li $t0, 38045
	sw $t0, -6684($fp)
	lw $t0, -6684($fp)
	sw $t0, -6688($fp)
	lw $t0, -6688($fp)
	sw $t0, -6692($fp)
	li $t0, 34100
	sw $t0, -6696($fp)
	lw $t0, -6696($fp)
	sw $t0, -6700($fp)
	lw $t0, -6700($fp)
	sw $t0, -6704($fp)
	li $t0, 56275
	sw $t0, -6708($fp)
	lw $t0, -6708($fp)
	sw $t0, -6712($fp)
	lw $t0, -6712($fp)
	sw $t0, -6716($fp)
	li $t0, 53015
	sw $t0, -6720($fp)
	lw $t0, -6720($fp)
	sw $t0, -6724($fp)
	lw $t0, -6724($fp)
	sw $t0, -6728($fp)
	li $t0, 18556
	sw $t0, -6732($fp)
	lw $t0, -6732($fp)
	sw $t0, -6736($fp)
	lw $t0, -6736($fp)
	sw $t0, -6740($fp)
	li $t0, 37518
	sw $t0, -6744($fp)
	lw $t0, -6744($fp)
	sw $t0, -6748($fp)
	lw $t0, -6748($fp)
	sw $t0, -6752($fp)
	li $t0, 15040
	sw $t0, -6756($fp)
	li $t0, 20476
	sw $t0, -6760($fp)
	lw $t0, -6756($fp)
	lw $t1, -6760($fp)
	mul $t0, $t0, $t1
	sw $t0, -6764($fp)
	lw $t0, -6764($fp)
	sw $t0, -6136($fp)
	lw $t0, -6136($fp)
	sw $t0, -6768($fp)
	lw $t0, -6768($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -6772($fp)
	lw $t0, -652($fp)
	sw $t0, -6776($fp)
	lw $t0, -5560($fp)
	sw $t0, -6780($fp)
	li $t0, 0
	lw $t1, -6780($fp)
	sub $t0, $t0, $t1
	sw $t0, -6784($fp)
	lw $t0, -6776($fp)
	lw $t1, -6784($fp)
	sub $t0, $t0, $t1
	sw $t0, -6788($fp)
	lw $t1, -6788($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label268
label267:
	li $t0, 0
	sw $t0, -6792($fp)
	lw $t0, -5572($fp)
	sw $t0, -6796($fp)
	li $t0, 11784
	sw $t0, -6800($fp)
	lw $t0, -6796($fp)
	lw $t1, -6800($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6804($fp)
	li $t0, 0
	lw $t1, -6804($fp)
	sub $t0, $t0, $t1
	sw $t0, -6808($fp)
	li $t0, 0
	lw $t1, -6808($fp)
	sub $t0, $t0, $t1
	sw $t0, -6812($fp)
	lw $t1, -6812($fp)
	li $t2, 0
	bne $t1, $t2, label272
	j label271
label272:
	li $t0, 30556
	sw $t0, -6816($fp)
	addi $t0, $fp, -48
	sw $t0, -6820($fp)
	li $t0, 2
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
	lw $t1, -6816($fp)
	lw $t2, -6836($fp)
	bne $t1, $t2, label270
	j label271
label270:
	li $t0, 1
	sw $t0, -6792($fp)
label271:
	j label269
label268:
	li $t0, 33508
	sw $t0, -6840($fp)
	lw $t0, -6840($fp)
	sw $t0, -6844($fp)
	lw $t0, -6844($fp)
	sw $t0, -6848($fp)
	li $t0, 65099
	sw $t0, -6852($fp)
	lw $t0, -6852($fp)
	sw $t0, -6856($fp)
	lw $t0, -6856($fp)
	sw $t0, -6860($fp)
	lw $t0, -6844($fp)
	sw $t0, -6864($fp)
	lw $t0, -6864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6856($fp)
	sw $t0, -6868($fp)
	lw $t0, -6868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -6872($fp)
	li $t0, 0
	sw $t0, -6876($fp)
	lw $t0, -6688($fp)
	sw $t0, -6880($fp)
	li $t0, 0
	lw $t1, -6880($fp)
	sub $t0, $t0, $t1
	sw $t0, -6884($fp)
	li $t0, 37209
	sw $t0, -6888($fp)
	lw $t1, -6884($fp)
	lw $t2, -6888($fp)
	blt $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -6876($fp)
label274:
	li $t0, 4
	lw $t1, -6876($fp)
	mul $t0, $t0, $t1
	sw $t0, -6892($fp)
	lw $t0, -6892($fp)
	lw $t1, -6872($fp)
	add $t0, $t0, $t1
	sw $t0, -6896($fp)
	lw $t0, -6896($fp)
	lw $t1, 0($t0)
	sw $t1, -6900($fp)
	li $t0, 0
	sw $t0, -6904($fp)
	li $t0, 0
	sw $t0, -6908($fp)
	li $t0, 13917
	sw $t0, -6912($fp)
	lw $t1, -6912($fp)
	li $t2, 0
	bne $t1, $t2, label278
	j label277
label277:
	li $t0, 1
	sw $t0, -6908($fp)
label278:
	lw $t0, -6460($fp)
	sw $t0, -6916($fp)
	lw $t0, -6908($fp)
	lw $t1, -6916($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6920($fp)
	li $t0, 54702
	sw $t0, -6924($fp)
	addi $t0, $fp, -5552
	sw $t0, -6928($fp)
	li $t0, 0
	sw $t0, -6932($fp)
	li $t0, 4
	lw $t1, -6932($fp)
	mul $t0, $t0, $t1
	sw $t0, -6936($fp)
	lw $t0, -6936($fp)
	lw $t1, -6928($fp)
	add $t0, $t0, $t1
	sw $t0, -6940($fp)
	lw $t0, -6940($fp)
	lw $t1, 0($t0)
	sw $t1, -6944($fp)
	li $t0, 0
	sw $t0, -6948($fp)
	lw $t0, -2128($fp)
	sw $t0, -6952($fp)
	lw $t0, -3004($fp)
	sw $t0, -6956($fp)
	lw $t0, -6952($fp)
	lw $t1, -6956($fp)
	mul $t0, $t0, $t1
	sw $t0, -6960($fp)
	lw $t0, -5560($fp)
	sw $t0, -6964($fp)
	lw $t1, -6960($fp)
	lw $t2, -6964($fp)
	blt $t1, $t2, label279
	j label280
label279:
	li $t0, 1
	sw $t0, -6948($fp)
label280:
	addi $sp, $sp, -4
	lw $t0, -6920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6948($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6968($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -6968($fp)
	sub $t0, $t0, $t1
	sw $t0, -6972($fp)
	lw $t1, -6972($fp)
	li $t2, 0
	bne $t1, $t2, label276
	j label275
label275:
	li $t0, 1
	sw $t0, -6904($fp)
label276:
	lw $t0, -6900($fp)
	lw $t1, -6904($fp)
	mul $t0, $t0, $t1
	sw $t0, -6976($fp)
	lw $ra, -4($fp)
	lw $v0, -6976($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 54521
	sw $t0, -6980($fp)
	li $t0, 36186
	sw $t0, -6984($fp)
	lw $t0, -6980($fp)
	lw $t1, -6984($fp)
	add $t0, $t0, $t1
	sw $t0, -6988($fp)
	addi $t0, $fp, -5456
	sw $t0, -6992($fp)
	li $t0, 6
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
	lw $t0, -6988($fp)
	lw $t1, -7008($fp)
	sub $t0, $t0, $t1
	sw $t0, -7012($fp)
	li $t0, 0
	sw $t0, -7016($fp)
	lw $t0, -2992($fp)
	sw $t0, -7020($fp)
	lw $t1, -7020($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label281
label281:
	li $t0, 1
	sw $t0, -7016($fp)
label282:
	li $t0, 0
	sw $t0, -7024($fp)
	lw $t0, -6664($fp)
	sw $t0, -7028($fp)
	lw $t1, -7028($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label283
label283:
	li $t0, 1
	sw $t0, -7024($fp)
label284:
	lw $t0, -7016($fp)
	lw $t1, -7024($fp)
	mul $t0, $t0, $t1
	sw $t0, -7032($fp)
	lw $t0, -7012($fp)
	lw $t1, -7032($fp)
	sub $t0, $t0, $t1
	sw $t0, -7036($fp)
label285:
	addi $t0, $fp, -5488
	sw $t0, -7040($fp)
	li $t0, 0
	sw $t0, -7044($fp)
	lw $t0, -6172($fp)
	sw $t0, -7048($fp)
	lw $t1, -7048($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label288
label288:
	li $t0, 1
	sw $t0, -7044($fp)
label289:
	li $t0, 4
	lw $t1, -7044($fp)
	mul $t0, $t0, $t1
	sw $t0, -7052($fp)
	lw $t0, -7052($fp)
	lw $t1, -7040($fp)
	add $t0, $t0, $t1
	sw $t0, -7056($fp)
	lw $t0, -7056($fp)
	lw $t1, 0($t0)
	sw $t1, -7060($fp)
	li $t0, 20945
	sw $t0, -7064($fp)
	lw $t0, -7060($fp)
	lw $t1, -7064($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7068($fp)
	addi $t0, $fp, -64
	sw $t0, -7072($fp)
	lw $t0, -6472($fp)
	sw $t0, -7076($fp)
	lw $t0, -7076($fp)
	sw $t0, -6064($fp)
	lw $t0, -6064($fp)
	sw $t0, -7080($fp)
	li $t0, 4
	lw $t1, -7080($fp)
	mul $t0, $t0, $t1
	sw $t0, -7084($fp)
	lw $t0, -7084($fp)
	lw $t1, -7072($fp)
	add $t0, $t0, $t1
	sw $t0, -7088($fp)
	lw $t0, -7088($fp)
	lw $t1, 0($t0)
	sw $t1, -7092($fp)
	lw $t0, -7068($fp)
	lw $t1, -7092($fp)
	mul $t0, $t0, $t1
	sw $t0, -7096($fp)
	lw $t1, -7096($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label287
label286:
label290:
	lw $t0, -6856($fp)
	sw $t0, -7100($fp)
	li $t0, 6623
	sw $t0, -7104($fp)
	lw $t0, -7100($fp)
	lw $t1, -7104($fp)
	sub $t0, $t0, $t1
	sw $t0, -7108($fp)
	lw $t0, -7108($fp)
	sw $t0, -6076($fp)
	lw $t0, -6076($fp)
	sw $t0, -7112($fp)
	lw $t0, -7112($fp)
	sw $t0, -6844($fp)
	lw $t0, -6844($fp)
	sw $t0, -7116($fp)
	lw $t1, -7116($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label292
label291:
	li $t0, 36968
	sw $t0, -7120($fp)
	lw $t0, -7120($fp)
	sw $t0, -7124($fp)
	lw $t0, -7124($fp)
	sw $t0, -7128($fp)
	li $t0, 0
	sw $t0, -7132($fp)
	li $t0, 40765
	sw $t0, -7136($fp)
	lw $t1, -7136($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label295
label295:
	li $t0, 63781
	sw $t0, -7140($fp)
	li $t0, 0
	sw $t0, -7144($fp)
	lw $t0, -2068($fp)
	sw $t0, -7148($fp)
	lw $t1, -7148($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label298
label298:
	lw $t0, -6484($fp)
	sw $t0, -7152($fp)
	lw $t1, -7152($fp)
	li $t2, 0
	bne $t1, $t2, label296
	j label297
label296:
	li $t0, 1
	sw $t0, -7144($fp)
label297:
	lw $t0, 8($fp)
	sw $t0, -7156($fp)
	li $t0, 0
	sw $t0, -7160($fp)
	lw $t0, -5644($fp)
	sw $t0, -7164($fp)
	lw $t1, -7164($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label302
label302:
	lw $t0, -508($fp)
	sw $t0, -7168($fp)
	lw $t1, -7168($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label301
label301:
	li $t0, 34541
	sw $t0, -7172($fp)
	lw $t1, -7172($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label300
label299:
	li $t0, 1
	sw $t0, -7160($fp)
label300:
	addi $sp, $sp, -4
	lw $t0, -7140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7160($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7176($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -7180($fp)
	li $t0, 526
	sw $t0, -7184($fp)
	lw $t1, -7184($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label303
label303:
	li $t0, 1
	sw $t0, -7180($fp)
label304:
	lw $t1, -7176($fp)
	lw $t2, -7180($fp)
	beq $t1, $t2, label293
	j label294
label293:
	li $t0, 1
	sw $t0, -7132($fp)
label294:
	addi $t0, $fp, -264
	sw $t0, -7188($fp)
	li $t0, 0
	sw $t0, -7192($fp)
	li $t0, 7051
	sw $t0, -7196($fp)
	li $t0, 32345
	sw $t0, -7200($fp)
	lw $t0, -7196($fp)
	lw $t1, -7200($fp)
	sub $t0, $t0, $t1
	sw $t0, -7204($fp)
	lw $t0, -6172($fp)
	sw $t0, -7208($fp)
	lw $t1, -7204($fp)
	lw $t2, -7208($fp)
	beq $t1, $t2, label305
	j label306
label305:
	li $t0, 1
	sw $t0, -7192($fp)
label306:
	li $t0, 4
	lw $t1, -7192($fp)
	mul $t0, $t0, $t1
	sw $t0, -7212($fp)
	lw $t0, -7212($fp)
	lw $t1, -7188($fp)
	add $t0, $t0, $t1
	sw $t0, -7216($fp)
	lw $t0, -7216($fp)
	lw $t1, 0($t0)
	sw $t1, -7220($fp)
	li $t0, 60066
	sw $t0, -7224($fp)
	li $t0, 0
	sw $t0, -7228($fp)
	lw $t0, -2680($fp)
	sw $t0, -7232($fp)
	lw $t0, -5560($fp)
	sw $t0, -7236($fp)
	lw $t1, -7232($fp)
	lw $t2, -7236($fp)
	beq $t1, $t2, label309
	j label308
label309:
	lw $t0, -1324($fp)
	sw $t0, -7240($fp)
	lw $t1, -7240($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label308
label307:
	li $t0, 1
	sw $t0, -7228($fp)
label308:
	lw $t0, -7124($fp)
	sw $t0, -7244($fp)
	lw $t0, -7244($fp)
	sw $t0, -5572($fp)
	lw $t0, -5572($fp)
	sw $t0, -7248($fp)
	li $t0, 56802
	sw $t0, -7252($fp)
	addi $sp, $sp, -4
	lw $t0, -7224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7252($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7256($fp)
	addi $sp, $sp, 20
	lw $t0, -7220($fp)
	lw $t1, -7256($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7260($fp)
	addi $t0, $fp, -144
	sw $t0, -7264($fp)
	li $t0, 0
	sw $t0, -7268($fp)
	li $t0, 50901
	sw $t0, -7272($fp)
	lw $t0, -5584($fp)
	sw $t0, -7276($fp)
	lw $t1, -7272($fp)
	lw $t2, -7276($fp)
	ble $t1, $t2, label310
	j label311
label310:
	li $t0, 1
	sw $t0, -7268($fp)
label311:
	li $t0, 4
	lw $t1, -7268($fp)
	mul $t0, $t0, $t1
	sw $t0, -7280($fp)
	lw $t0, -7280($fp)
	lw $t1, -7264($fp)
	add $t0, $t0, $t1
	sw $t0, -7284($fp)
	lw $t0, -7284($fp)
	lw $t1, 0($t0)
	sw $t1, -7288($fp)
	lw $t0, -5608($fp)
	sw $t0, -7292($fp)
	lw $t0, -7288($fp)
	lw $t1, -7292($fp)
	mul $t0, $t0, $t1
	sw $t0, -7296($fp)
	li $t0, 28784
	sw $t0, -7300($fp)
	li $t0, 0
	sw $t0, -7304($fp)
	li $t0, 9570
	sw $t0, -7308($fp)
	lw $t1, -7308($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label312
label312:
	li $t0, 1
	sw $t0, -7304($fp)
label313:
	lw $t0, -7300($fp)
	lw $t1, -7304($fp)
	mul $t0, $t0, $t1
	sw $t0, -7312($fp)
	lw $t0, -7296($fp)
	lw $t1, -7312($fp)
	sub $t0, $t0, $t1
	sw $t0, -7316($fp)
	li $t0, 0
	sw $t0, -7320($fp)
	li $t0, 0
	sw $t0, -7324($fp)
	li $t0, 0
	sw $t0, -7328($fp)
	addi $t0, $fp, -5488
	sw $t0, -7332($fp)
	lw $t0, -6172($fp)
	sw $t0, -7336($fp)
	li $t0, 4
	lw $t1, -7336($fp)
	mul $t0, $t0, $t1
	sw $t0, -7340($fp)
	lw $t0, -7340($fp)
	lw $t1, -7332($fp)
	add $t0, $t0, $t1
	sw $t0, -7344($fp)
	lw $t0, -7344($fp)
	lw $t1, 0($t0)
	sw $t1, -7348($fp)
	lw $t1, -7348($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label318
label318:
	li $t0, 1
	sw $t0, -7328($fp)
label319:
	li $t0, 0
	sw $t0, -7352($fp)
	li $t0, 62451
	sw $t0, -7356($fp)
	lw $t0, -1816($fp)
	sw $t0, -7360($fp)
	lw $t0, -7356($fp)
	lw $t1, -7360($fp)
	mul $t0, $t0, $t1
	sw $t0, -7364($fp)
	li $t0, 0
	lw $t1, -7364($fp)
	sub $t0, $t0, $t1
	sw $t0, -7368($fp)
	li $t0, 16635
	sw $t0, -7372($fp)
	li $t0, 5510
	sw $t0, -7376($fp)
	lw $t0, -7372($fp)
	lw $t1, -7376($fp)
	mul $t0, $t0, $t1
	sw $t0, -7380($fp)
	li $t0, 0
	lw $t1, -7380($fp)
	sub $t0, $t0, $t1
	sw $t0, -7384($fp)
	li $t0, 7930
	sw $t0, -7388($fp)
	lw $t0, -7388($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -7392($fp)
	li $t0, 0
	sw $t0, -7396($fp)
	li $t0, 27468
	sw $t0, -7400($fp)
	lw $t0, -2704($fp)
	sw $t0, -7404($fp)
	lw $t0, -7400($fp)
	lw $t1, -7404($fp)
	mul $t0, $t0, $t1
	sw $t0, -7408($fp)
	li $t0, 57129
	sw $t0, -7412($fp)
	lw $t1, -7408($fp)
	lw $t2, -7412($fp)
	beq $t1, $t2, label323
	j label324
label323:
	li $t0, 1
	sw $t0, -7396($fp)
label324:
	addi $sp, $sp, -4
	lw $t0, -7368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7396($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7416($fp)
	addi $sp, $sp, 20
	lw $t1, -7416($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label322
label322:
	li $t0, 52821
	sw $t0, -7420($fp)
	lw $t1, -7420($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label321
label320:
	li $t0, 1
	sw $t0, -7352($fp)
label321:
	lw $t0, 4($fp)
	sw $t0, -7424($fp)
	li $t0, 46495
	sw $t0, -7428($fp)
	lw $t0, -7424($fp)
	lw $t1, -7428($fp)
	sub $t0, $t0, $t1
	sw $t0, -7432($fp)
	li $t0, 0
	sw $t0, -7436($fp)
	li $t0, 0
	sw $t0, -7440($fp)
	li $t0, 55795
	sw $t0, -7444($fp)
	lw $t1, -7444($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label327
label327:
	li $t0, 1
	sw $t0, -7440($fp)
label328:
	li $t0, 8099
	sw $t0, -7448($fp)
	lw $t1, -7440($fp)
	lw $t2, -7448($fp)
	ble $t1, $t2, label325
	j label326
label325:
	li $t0, 1
	sw $t0, -7436($fp)
label326:
	lw $t0, -1024($fp)
	sw $t0, -7452($fp)
	li $t0, 0
	lw $t1, -7452($fp)
	sub $t0, $t0, $t1
	sw $t0, -7456($fp)
	lw $t0, -5632($fp)
	sw $t0, -7460($fp)
	li $t0, 0
	sw $t0, -7464($fp)
	lw $t0, -6724($fp)
	sw $t0, -7468($fp)
	lw $t1, -7468($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label329
label331:
	lw $t0, -2656($fp)
	sw $t0, -7472($fp)
	lw $t1, -7472($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label330
label329:
	li $t0, 1
	sw $t0, -7464($fp)
label330:
	li $t0, 46932
	sw $t0, -7476($fp)
	li $t0, 0
	sw $t0, -7480($fp)
	li $t0, 40127
	sw $t0, -7484($fp)
	lw $t1, -7484($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label334
label334:
	lw $t0, -5620($fp)
	sw $t0, -7488($fp)
	lw $t1, -7488($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label333
label332:
	li $t0, 1
	sw $t0, -7480($fp)
label333:
	li $t0, 0
	sw $t0, -7492($fp)
	li $t0, 0
	sw $t0, -7496($fp)
	li $t0, 40569
	sw $t0, -7500($fp)
	lw $t0, -6484($fp)
	sw $t0, -7504($fp)
	lw $t1, -7500($fp)
	lw $t2, -7504($fp)
	beq $t1, $t2, label337
	j label338
label337:
	li $t0, 1
	sw $t0, -7496($fp)
label338:
	lw $t0, -6100($fp)
	sw $t0, -7508($fp)
	lw $t1, -7496($fp)
	lw $t2, -7508($fp)
	beq $t1, $t2, label335
	j label336
label335:
	li $t0, 1
	sw $t0, -7492($fp)
label336:
	addi $sp, $sp, -4
	lw $t0, -7464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7492($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7512($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -7436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7512($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7516($fp)
	addi $sp, $sp, 20
	li $t0, 5841
	sw $t0, -7520($fp)
	lw $t0, -5644($fp)
	sw $t0, -7524($fp)
	lw $t0, -7520($fp)
	lw $t1, -7524($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7528($fp)
	li $t0, 0
	lw $t1, -7528($fp)
	sub $t0, $t0, $t1
	sw $t0, -7532($fp)
	addi $sp, $sp, -4
	lw $t0, -7352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7532($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7536($fp)
	addi $sp, $sp, 20
	lw $t0, -7328($fp)
	lw $t1, -7536($fp)
	mul $t0, $t0, $t1
	sw $t0, -7540($fp)
	li $t0, 46510
	sw $t0, -7544($fp)
	li $t0, 2641
	sw $t0, -7548($fp)
	lw $t0, -7544($fp)
	lw $t1, -7548($fp)
	mul $t0, $t0, $t1
	sw $t0, -7552($fp)
	li $t0, 0
	lw $t1, -7552($fp)
	sub $t0, $t0, $t1
	sw $t0, -7556($fp)
	lw $t1, -7540($fp)
	lw $t2, -7556($fp)
	ble $t1, $t2, label316
	j label317
label316:
	li $t0, 1
	sw $t0, -7324($fp)
label317:
	lw $t0, -2992($fp)
	sw $t0, -7560($fp)
	lw $t0, -2296($fp)
	sw $t0, -7564($fp)
	li $t0, 9265
	sw $t0, -7568($fp)
	lw $t0, -7564($fp)
	lw $t1, -7568($fp)
	sub $t0, $t0, $t1
	sw $t0, -7572($fp)
	lw $t0, -6676($fp)
	sw $t0, -7576($fp)
	lw $t0, -7572($fp)
	lw $t1, -7576($fp)
	sub $t0, $t0, $t1
	sw $t0, -7580($fp)
	li $t0, 1918
	sw $t0, -7584($fp)
	lw $t0, -1384($fp)
	sw $t0, -7588($fp)
	lw $t0, -7584($fp)
	lw $t1, -7588($fp)
	mul $t0, $t0, $t1
	sw $t0, -7592($fp)
	lw $t0, -2752($fp)
	sw $t0, -7596($fp)
	lw $t0, -6040($fp)
	sw $t0, -7600($fp)
	lw $t0, -7596($fp)
	lw $t1, -7600($fp)
	add $t0, $t0, $t1
	sw $t0, -7604($fp)
	li $t0, 43359
	sw $t0, -7608($fp)
	li $t0, 0
	lw $t1, -7608($fp)
	sub $t0, $t0, $t1
	sw $t0, -7612($fp)
	addi $sp, $sp, -4
	lw $t0, -7580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7612($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7616($fp)
	addi $sp, $sp, 20
	lw $t0, -7560($fp)
	lw $t1, -7616($fp)
	sub $t0, $t0, $t1
	sw $t0, -7620($fp)
	lw $t1, -7324($fp)
	lw $t2, -7620($fp)
	bge $t1, $t2, label314
	j label315
label314:
	li $t0, 1
	sw $t0, -7320($fp)
label315:
	j label290
label292:
	j label285
label287:
	lw $t0, 12($fp)
	sw $t0, -7624($fp)
	li $t0, 14791
	sw $t0, -7628($fp)
	lw $t0, -7628($fp)
	sw $t0, -7632($fp)
	lw $t0, -7632($fp)
	sw $t0, -7636($fp)
	li $t0, 42684
	sw $t0, -7640($fp)
	lw $t0, -7640($fp)
	sw $t0, -7644($fp)
	lw $t0, -7644($fp)
	sw $t0, -7648($fp)
	li $t0, 43806
	sw $t0, -7652($fp)
	lw $t0, -7652($fp)
	sw $t0, -7656($fp)
	lw $t0, -7656($fp)
	sw $t0, -7660($fp)
	li $t0, 13036
	sw $t0, -7664($fp)
	lw $t0, -7664($fp)
	sw $t0, -7668($fp)
	lw $t0, -7668($fp)
	sw $t0, -7672($fp)
	li $t0, 43210
	sw $t0, -7676($fp)
	lw $t0, -7676($fp)
	sw $t0, -7680($fp)
	lw $t0, -7680($fp)
	sw $t0, -7684($fp)
	li $t0, 50857
	sw $t0, -7688($fp)
	lw $t0, -7688($fp)
	sw $t0, -7692($fp)
	lw $t0, -7692($fp)
	sw $t0, -7696($fp)
	li $t0, 0
	sw $t0, -7700($fp)
	lw $t0, -2296($fp)
	sw $t0, -7704($fp)
	lw $t0, -6712($fp)
	sw $t0, -7708($fp)
	lw $t0, -7704($fp)
	lw $t1, -7708($fp)
	add $t0, $t0, $t1
	sw $t0, -7712($fp)
	li $t0, 45387
	sw $t0, -7716($fp)
	lw $t1, -7712($fp)
	lw $t2, -7716($fp)
	bge $t1, $t2, label343
	j label344
label343:
	li $t0, 1
	sw $t0, -7700($fp)
label344:
	li $t0, 0
	sw $t0, -7720($fp)
	lw $t0, 16($fp)
	sw $t0, -7724($fp)
	lw $t1, -7724($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label347
label347:
	lw $t0, -2656($fp)
	sw $t0, -7728($fp)
	lw $t1, -7728($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label346
label345:
	li $t0, 1
	sw $t0, -7720($fp)
label346:
	li $t0, 34476
	sw $t0, -7732($fp)
	li $t0, 45381
	sw $t0, -7736($fp)
	addi $sp, $sp, -4
	lw $t0, -7700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7736($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7740($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -168
	sw $t0, -7744($fp)
	li $t0, 5
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
	li $t0, 54958
	sw $t0, -7764($fp)
	lw $t0, -7760($fp)
	lw $t1, -7764($fp)
	sub $t0, $t0, $t1
	sw $t0, -7768($fp)
	lw $t1, -7740($fp)
	lw $t2, -7768($fp)
	bgt $t1, $t2, label342
	j label340
label342:
	li $t0, 0
	sw $t0, -7772($fp)
	li $t0, 64479
	sw $t0, -7776($fp)
	lw $t0, -7776($fp)
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	sw $t0, -7780($fp)
	lw $t0, -7692($fp)
	sw $t0, -7784($fp)
	li $t0, 37648
	sw $t0, -7788($fp)
	lw $t0, -7784($fp)
	lw $t1, -7788($fp)
	add $t0, $t0, $t1
	sw $t0, -7792($fp)
	lw $t0, -6040($fp)
	sw $t0, -7796($fp)
	lw $t0, -7792($fp)
	lw $t1, -7796($fp)
	add $t0, $t0, $t1
	sw $t0, -7800($fp)
	li $t0, 0
	sw $t0, -7804($fp)
	li $t0, 28553
	sw $t0, -7808($fp)
	lw $t1, -7808($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label350
label350:
	li $t0, 1
	sw $t0, -7804($fp)
label351:
	li $t0, 0
	sw $t0, -7812($fp)
	li $t0, 29549
	sw $t0, -7816($fp)
	lw $t1, -7816($fp)
	li $t2, 0
	bne $t1, $t2, label352
	j label355
label355:
	li $t0, 17984
	sw $t0, -7820($fp)
	lw $t1, -7820($fp)
	li $t2, 0
	bne $t1, $t2, label352
	j label354
label354:
	lw $t0, -3016($fp)
	sw $t0, -7824($fp)
	lw $t1, -7824($fp)
	li $t2, 0
	bne $t1, $t2, label352
	j label353
label352:
	li $t0, 1
	sw $t0, -7812($fp)
label353:
	li $t0, 0
	sw $t0, -7828($fp)
	li $t0, 0
	sw $t0, -7832($fp)
	lw $t0, -7680($fp)
	sw $t0, -7836($fp)
	lw $t0, -6052($fp)
	sw $t0, -7840($fp)
	lw $t1, -7836($fp)
	lw $t2, -7840($fp)
	bne $t1, $t2, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -7832($fp)
label359:
	li $t0, 38294
	sw $t0, -7844($fp)
	lw $t1, -7832($fp)
	lw $t2, -7844($fp)
	beq $t1, $t2, label356
	j label357
label356:
	li $t0, 1
	sw $t0, -7828($fp)
label357:
	li $t0, 0
	sw $t0, -7848($fp)
	lw $t0, -2428($fp)
	sw $t0, -7852($fp)
	lw $t0, -6448($fp)
	sw $t0, -7856($fp)
	lw $t0, -7852($fp)
	lw $t1, -7856($fp)
	sub $t0, $t0, $t1
	sw $t0, -7860($fp)
	lw $t1, -7860($fp)
	li $t2, 0
	bne $t1, $t2, label362
	j label361
label362:
	li $t0, 36588
	sw $t0, -7864($fp)
	lw $t1, -7864($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -7848($fp)
label361:
	addi $sp, $sp, -4
	lw $t0, -7804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7848($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7868($fp)
	addi $sp, $sp, 20
	lw $t0, -6748($fp)
	sw $t0, -7872($fp)
	lw $t0, -7868($fp)
	lw $t1, -7872($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7876($fp)
	li $t0, 0
	sw $t0, -7880($fp)
	lw $t0, -6736($fp)
	sw $t0, -7884($fp)
	lw $t1, -7884($fp)
	li $t2, 0
	bne $t1, $t2, label364
	j label363
label363:
	li $t0, 1
	sw $t0, -7880($fp)
label364:
	addi $sp, $sp, -4
	lw $t0, -7780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7880($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7888($fp)
	addi $sp, $sp, 20
	lw $t1, -7888($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label348
label348:
	li $t0, 1
	sw $t0, -7772($fp)
label349:
	li $t0, 0
	lw $t1, -7772($fp)
	sub $t0, $t0, $t1
	sw $t0, -7892($fp)
	lw $t1, -7892($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label340
label339:
	li $t0, 56021
	sw $t0, -7896($fp)
	lw $t0, -7896($fp)
	sw $t0, -7900($fp)
	lw $t0, -7900($fp)
	sw $t0, -7904($fp)
	li $t0, 0
	sw $t0, -7908($fp)
	lw $t0, -7632($fp)
	sw $t0, -7912($fp)
	lw $t1, -7912($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label367
label368:
	li $t0, 3789
	sw $t0, -7916($fp)
	lw $t1, -7916($fp)
	li $t2, 0
	bne $t1, $t2, label365
	j label367
label367:
	lw $t0, -6172($fp)
	sw $t0, -7920($fp)
	lw $t1, -7920($fp)
	li $t2, 0
	bne $t1, $t2, label365
	j label366
label365:
	li $t0, 1
	sw $t0, -7908($fp)
label366:
	lw $t0, -6700($fp)
	sw $t0, -7924($fp)
	li $t0, 7120
	sw $t0, -7928($fp)
	lw $t0, -7924($fp)
	lw $t1, -7928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7932($fp)
	li $t0, 34751
	sw $t0, -7936($fp)
	lw $t0, -7932($fp)
	lw $t1, -7936($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7940($fp)
	li $t0, 0
	sw $t0, -7944($fp)
	li $t0, 0
	sw $t0, -7948($fp)
	li $t0, 29241
	sw $t0, -7952($fp)
	lw $t1, -7952($fp)
	li $t2, 0
	bne $t1, $t2, label372
	j label371
label371:
	li $t0, 1
	sw $t0, -7948($fp)
label372:
	li $t0, 6873
	sw $t0, -7956($fp)
	lw $t1, -7948($fp)
	lw $t2, -7956($fp)
	bgt $t1, $t2, label369
	j label370
label369:
	li $t0, 1
	sw $t0, -7944($fp)
label370:
	li $t0, 0
	sw $t0, -7960($fp)
	lw $t0, -6088($fp)
	sw $t0, -7964($fp)
	lw $t1, -7964($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label375
label376:
	lw $t0, -6160($fp)
	sw $t0, -7968($fp)
	lw $t1, -7968($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label375
label375:
	lw $t0, -2068($fp)
	sw $t0, -7972($fp)
	lw $t1, -7972($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label374
label373:
	li $t0, 1
	sw $t0, -7960($fp)
label374:
	addi $sp, $sp, -4
	lw $t0, -7908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7960($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7976($fp)
	addi $sp, $sp, 20
	lw $t0, -7900($fp)
	sw $t0, -7980($fp)
	lw $t0, -7980($fp)
	sw $t0, -6184($fp)
	lw $t0, -6184($fp)
	sw $t0, -7984($fp)
	j label341
label340:
	li $t0, 0
	sw $t0, -7988($fp)
	li $t0, 59942
	sw $t0, -7992($fp)
	lw $t1, -7992($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label379
label379:
	li $t0, 59502
	sw $t0, -7996($fp)
	li $t0, 56
	sw $t0, -8000($fp)
	lw $t0, -7996($fp)
	lw $t1, -8000($fp)
	add $t0, $t0, $t1
	sw $t0, -8004($fp)
	addi $t0, $fp, -132
	sw $t0, -8008($fp)
	lw $t0, -2464($fp)
	sw $t0, -8012($fp)
	li $t0, 4
	lw $t1, -8012($fp)
	mul $t0, $t0, $t1
	sw $t0, -8016($fp)
	lw $t0, -8016($fp)
	lw $t1, -8008($fp)
	add $t0, $t0, $t1
	sw $t0, -8020($fp)
	lw $t0, -8020($fp)
	lw $t1, 0($t0)
	sw $t1, -8024($fp)
	lw $t0, -640($fp)
	sw $t0, -8028($fp)
	lw $t0, -8024($fp)
	lw $t1, -8028($fp)
	sub $t0, $t0, $t1
	sw $t0, -8032($fp)
	li $t0, 0
	sw $t0, -8036($fp)
	li $t0, 52556
	sw $t0, -8040($fp)
	lw $t1, -8040($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label383
label383:
	lw $t0, -6484($fp)
	sw $t0, -8044($fp)
	lw $t1, -8044($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label382
label382:
	li $t0, 60327
	sw $t0, -8048($fp)
	lw $t1, -8048($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -8036($fp)
label381:
	li $t0, 17643
	sw $t0, -8052($fp)
	lw $t0, -7632($fp)
	sw $t0, -8056($fp)
	lw $t0, -8052($fp)
	lw $t1, -8056($fp)
	add $t0, $t0, $t1
	sw $t0, -8060($fp)
	li $t0, 15695
	sw $t0, -8064($fp)
	lw $t0, -8060($fp)
	lw $t1, -8064($fp)
	sub $t0, $t0, $t1
	sw $t0, -8068($fp)
	li $t0, 0
	sw $t0, -8072($fp)
	li $t0, 6430
	sw $t0, -8076($fp)
	lw $t1, -8076($fp)
	li $t2, 0
	bne $t1, $t2, label386
	j label384
label386:
	li $t0, 37765
	sw $t0, -8080($fp)
	lw $t1, -8080($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label385
label384:
	li $t0, 1
	sw $t0, -8072($fp)
label385:
	li $t0, 0
	sw $t0, -8084($fp)
	li $t0, 15725
	sw $t0, -8088($fp)
	lw $t0, -5596($fp)
	sw $t0, -8092($fp)
	lw $t0, -8088($fp)
	lw $t1, -8092($fp)
	mul $t0, $t0, $t1
	sw $t0, -8096($fp)
	lw $t1, -8096($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label389
label389:
	lw $t0, -7644($fp)
	sw $t0, -8100($fp)
	lw $t1, -8100($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label388
label387:
	li $t0, 1
	sw $t0, -8084($fp)
label388:
	addi $sp, $sp, -4
	lw $t0, -8036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8084($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8104($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -8108($fp)
	lw $t0, -6196($fp)
	sw $t0, -8112($fp)
	lw $t1, -8112($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label391
label393:
	lw $t0, -6208($fp)
	sw $t0, -8116($fp)
	lw $t1, -8116($fp)
	li $t2, 0
	bne $t1, $t2, label392
	j label391
label392:
	lw $t0, -6208($fp)
	sw $t0, -8120($fp)
	lw $t1, -8120($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label391
label390:
	li $t0, 1
	sw $t0, -8108($fp)
label391:
	addi $sp, $sp, -4
	lw $t0, -8004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8108($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8124($fp)
	addi $sp, $sp, 20
	li $t0, 38002
	sw $t0, -8128($fp)
	lw $t0, -8124($fp)
	lw $t1, -8128($fp)
	mul $t0, $t0, $t1
	sw $t0, -8132($fp)
	lw $t0, -2728($fp)
	sw $t0, -8136($fp)
	li $t0, 44823
	sw $t0, -8140($fp)
	lw $t0, -8136($fp)
	lw $t1, -8140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8144($fp)
	lw $t0, -8132($fp)
	lw $t1, -8144($fp)
	sub $t0, $t0, $t1
	sw $t0, -8148($fp)
	lw $t1, -8148($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label378
label377:
	li $t0, 1
	sw $t0, -7988($fp)
label378:
label341:
label394:
	addi $t0, $fp, -64
	sw $t0, -8152($fp)
	lw $t0, -6148($fp)
	sw $t0, -8156($fp)
	lw $t0, -8156($fp)
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	sw $t0, -8160($fp)
	li $t0, 4
	lw $t1, -8160($fp)
	mul $t0, $t0, $t1
	sw $t0, -8164($fp)
	lw $t0, -8164($fp)
	lw $t1, -8152($fp)
	add $t0, $t0, $t1
	sw $t0, -8168($fp)
	lw $t0, -8168($fp)
	lw $t1, 0($t0)
	sw $t1, -8172($fp)
	li $t0, 45437
	sw $t0, -8176($fp)
	li $t0, 6942
	sw $t0, -8180($fp)
	lw $t0, -8176($fp)
	lw $t1, -8180($fp)
	mul $t0, $t0, $t1
	sw $t0, -8184($fp)
	li $t0, 24675
	sw $t0, -8188($fp)
	lw $t0, -8184($fp)
	lw $t1, -8188($fp)
	add $t0, $t0, $t1
	sw $t0, -8192($fp)
	lw $t1, -8172($fp)
	lw $t2, -8192($fp)
	bne $t1, $t2, label397
	j label396
label397:
	lw $t0, -3004($fp)
	sw $t0, -8196($fp)
	lw $t1, -8196($fp)
	li $t2, 0
	bne $t1, $t2, label395
	j label396
label395:
	lw $t0, -664($fp)
	sw $t0, -8200($fp)
	lw $t1, -8200($fp)
	li $t2, 0
	bne $t1, $t2, label401
	j label399
label401:
	addi $t0, $fp, -5524
	sw $t0, -8204($fp)
	li $t0, 0
	sw $t0, -8208($fp)
	lw $t0, -6112($fp)
	sw $t0, -8212($fp)
	lw $t1, -8212($fp)
	li $t2, 0
	bne $t1, $t2, label404
	j label403
label404:
	li $t0, 10647
	sw $t0, -8216($fp)
	lw $t1, -8216($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -8208($fp)
label403:
	li $t0, 4
	lw $t1, -8208($fp)
	mul $t0, $t0, $t1
	sw $t0, -8220($fp)
	lw $t0, -8220($fp)
	lw $t1, -8204($fp)
	add $t0, $t0, $t1
	sw $t0, -8224($fp)
	lw $t0, -8224($fp)
	lw $t1, 0($t0)
	sw $t1, -8228($fp)
	lw $t1, -8228($fp)
	li $t2, 0
	bne $t1, $t2, label398
	j label399
label398:
	li $t0, 0
	sw $t0, -8232($fp)
	li $t0, 43646
	sw $t0, -8236($fp)
	lw $t0, -1000($fp)
	sw $t0, -8240($fp)
	lw $t1, -8236($fp)
	lw $t2, -8240($fp)
	bne $t1, $t2, label407
	j label406
label407:
	lw $t0, -6220($fp)
	sw $t0, -8244($fp)
	lw $t1, -8244($fp)
	li $t2, 0
	bne $t1, $t2, label405
	j label406
label405:
	li $t0, 1
	sw $t0, -8232($fp)
label406:
	li $t0, 42961
	sw $t0, -8248($fp)
	li $t0, 0
	lw $t1, -8248($fp)
	sub $t0, $t0, $t1
	sw $t0, -8252($fp)
	li $t0, 0
	lw $t1, -8252($fp)
	sub $t0, $t0, $t1
	sw $t0, -8256($fp)
	li $t0, 14097
	sw $t0, -8260($fp)
	li $t0, 47235
	sw $t0, -8264($fp)
	lw $t0, -8260($fp)
	lw $t1, -8264($fp)
	sub $t0, $t0, $t1
	sw $t0, -8268($fp)
	lw $t0, -2740($fp)
	sw $t0, -8272($fp)
	lw $t0, -8268($fp)
	lw $t1, -8272($fp)
	add $t0, $t0, $t1
	sw $t0, -8276($fp)
	li $t0, 4667
	sw $t0, -8280($fp)
	lw $t0, -6136($fp)
	sw $t0, -8284($fp)
	lw $t0, -8280($fp)
	lw $t1, -8284($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8288($fp)
	li $t0, 0
	lw $t1, -8288($fp)
	sub $t0, $t0, $t1
	sw $t0, -8292($fp)
	addi $sp, $sp, -4
	lw $t0, -8232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8292($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8296($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -8296($fp)
	sub $t0, $t0, $t1
	sw $t0, -8300($fp)
	li $t0, 0
	lw $t1, -8300($fp)
	sub $t0, $t0, $t1
	sw $t0, -8304($fp)
	j label400
label399:
	lw $t0, -7656($fp)
	sw $t0, -8308($fp)
	lw $t0, -8308($fp)
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	sw $t0, -8312($fp)
label400:
	j label394
label396:
	li $t0, 0
	sw $t0, -8316($fp)
	li $t0, 0
	sw $t0, -8320($fp)
	addi $t0, $fp, -5524
	sw $t0, -8324($fp)
	li $t0, 0
	sw $t0, -8328($fp)
	li $t0, 4
	lw $t1, -8328($fp)
	mul $t0, $t0, $t1
	sw $t0, -8332($fp)
	lw $t0, -8332($fp)
	lw $t1, -8324($fp)
	add $t0, $t0, $t1
	sw $t0, -8336($fp)
	lw $t0, -8336($fp)
	lw $t1, 0($t0)
	sw $t1, -8340($fp)
	lw $t0, -6688($fp)
	sw $t0, -8344($fp)
	lw $t0, -2668($fp)
	sw $t0, -8348($fp)
	lw $t0, -8344($fp)
	lw $t1, -8348($fp)
	add $t0, $t0, $t1
	sw $t0, -8352($fp)
	lw $t1, -8340($fp)
	lw $t2, -8352($fp)
	bgt $t1, $t2, label413
	j label414
label413:
	li $t0, 1
	sw $t0, -8320($fp)
label414:
	li $t0, 0
	sw $t0, -8356($fp)
	lw $t0, -3004($fp)
	sw $t0, -8360($fp)
	li $t0, 44999
	sw $t0, -8364($fp)
	lw $t0, -8360($fp)
	lw $t1, -8364($fp)
	mul $t0, $t0, $t1
	sw $t0, -8368($fp)
	lw $t0, -5632($fp)
	sw $t0, -8372($fp)
	lw $t1, -8368($fp)
	lw $t2, -8372($fp)
	beq $t1, $t2, label415
	j label416
label415:
	li $t0, 1
	sw $t0, -8356($fp)
label416:
	li $t0, 62000
	sw $t0, -8376($fp)
	lw $t0, -8376($fp)
	sw $t0, -7668($fp)
	lw $t0, -7668($fp)
	sw $t0, -8380($fp)
	lw $t0, -6124($fp)
	sw $t0, -8384($fp)
	li $t0, 0
	lw $t1, -8384($fp)
	sub $t0, $t0, $t1
	sw $t0, -8388($fp)
	li $t0, 0
	lw $t1, -8388($fp)
	sub $t0, $t0, $t1
	sw $t0, -8392($fp)
	li $t0, 0
	sw $t0, -8396($fp)
	li $t0, 15758
	sw $t0, -8400($fp)
	li $t0, 64162
	sw $t0, -8404($fp)
	lw $t0, -8400($fp)
	lw $t1, -8404($fp)
	add $t0, $t0, $t1
	sw $t0, -8408($fp)
	lw $t0, -2524($fp)
	sw $t0, -8412($fp)
	lw $t1, -8408($fp)
	lw $t2, -8412($fp)
	bne $t1, $t2, label417
	j label418
label417:
	li $t0, 1
	sw $t0, -8396($fp)
label418:
	addi $sp, $sp, -4
	lw $t0, -8356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8396($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8416($fp)
	addi $sp, $sp, 20
	lw $t1, -8320($fp)
	lw $t2, -8416($fp)
	bge $t1, $t2, label411
	j label412
label411:
	li $t0, 1
	sw $t0, -8316($fp)
label412:
	li $t0, 5500
	sw $t0, -8420($fp)
	lw $t1, -8316($fp)
	lw $t2, -8420($fp)
	bne $t1, $t2, label408
	j label409
label408:
	li $t0, 0
	sw $t0, -8424($fp)
	li $t0, 0
	sw $t0, -8428($fp)
	li $t0, 3584
	sw $t0, -8432($fp)
	lw $t1, -8432($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label421
label421:
	li $t0, 1
	sw $t0, -8428($fp)
label422:
	lw $t0, -2656($fp)
	sw $t0, -8436($fp)
	lw $t0, -2704($fp)
	sw $t0, -8440($fp)
	lw $t0, -8436($fp)
	lw $t1, -8440($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8444($fp)
	li $t0, 14214
	sw $t0, -8448($fp)
	lw $t0, -8444($fp)
	lw $t1, -8448($fp)
	add $t0, $t0, $t1
	sw $t0, -8452($fp)
	addi $t0, $fp, -144
	sw $t0, -8456($fp)
	li $t0, 0
	sw $t0, -8460($fp)
	li $t0, 4
	lw $t1, -8460($fp)
	mul $t0, $t0, $t1
	sw $t0, -8464($fp)
	lw $t0, -8464($fp)
	lw $t1, -8456($fp)
	add $t0, $t0, $t1
	sw $t0, -8468($fp)
	lw $t0, -8468($fp)
	lw $t1, 0($t0)
	sw $t1, -8472($fp)
	lw $t0, -8452($fp)
	lw $t1, -8472($fp)
	add $t0, $t0, $t1
	sw $t0, -8476($fp)
	lw $t1, -8428($fp)
	lw $t2, -8476($fp)
	bge $t1, $t2, label419
	j label420
label419:
	li $t0, 1
	sw $t0, -8424($fp)
label420:
	lw $ra, -4($fp)
	lw $v0, -8424($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label409:
label269:
	li $t0, 29939
	sw $t0, -8676($fp)
	lw $t0, -8676($fp)
	sw $t0, -8680($fp)
	lw $t0, -8680($fp)
	sw $t0, -8684($fp)
	li $t0, 15719
	sw $t0, -8688($fp)
	addi $t0, $fp, -8500
	sw $t0, -8692($fp)
	li $t0, 0
	sw $t0, -8696($fp)
	lw $t0, -8696($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8700($fp)
	lw $t0, -8692($fp)
	lw $t1, -8700($fp)
	add $t0, $t0, $t1
	sw $t0, -8704($fp)
	lw $t0, -8688($fp)
	lw $t1, -8704($fp)
	sw $t0, 0($t1)
	lw $t0, -8704($fp)
	lw $t1, 0($t0)
	sw $t1, -8708($fp)
	li $t0, 35755
	sw $t0, -8712($fp)
	addi $t0, $fp, -8500
	sw $t0, -8716($fp)
	li $t0, 1
	sw $t0, -8720($fp)
	lw $t0, -8720($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8724($fp)
	lw $t0, -8716($fp)
	lw $t1, -8724($fp)
	add $t0, $t0, $t1
	sw $t0, -8728($fp)
	lw $t0, -8712($fp)
	lw $t1, -8728($fp)
	sw $t0, 0($t1)
	lw $t0, -8728($fp)
	lw $t1, 0($t0)
	sw $t1, -8732($fp)
	li $t0, 47582
	sw $t0, -8736($fp)
	addi $t0, $fp, -8500
	sw $t0, -8740($fp)
	li $t0, 2
	sw $t0, -8744($fp)
	lw $t0, -8744($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8748($fp)
	lw $t0, -8740($fp)
	lw $t1, -8748($fp)
	add $t0, $t0, $t1
	sw $t0, -8752($fp)
	lw $t0, -8736($fp)
	lw $t1, -8752($fp)
	sw $t0, 0($t1)
	lw $t0, -8752($fp)
	lw $t1, 0($t0)
	sw $t1, -8756($fp)
	li $t0, 31415
	sw $t0, -8760($fp)
	addi $t0, $fp, -8500
	sw $t0, -8764($fp)
	li $t0, 3
	sw $t0, -8768($fp)
	lw $t0, -8768($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8772($fp)
	lw $t0, -8764($fp)
	lw $t1, -8772($fp)
	add $t0, $t0, $t1
	sw $t0, -8776($fp)
	lw $t0, -8760($fp)
	lw $t1, -8776($fp)
	sw $t0, 0($t1)
	lw $t0, -8776($fp)
	lw $t1, 0($t0)
	sw $t1, -8780($fp)
	li $t0, 22775
	sw $t0, -8784($fp)
	addi $t0, $fp, -8500
	sw $t0, -8788($fp)
	li $t0, 4
	sw $t0, -8792($fp)
	lw $t0, -8792($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8796($fp)
	lw $t0, -8788($fp)
	lw $t1, -8796($fp)
	add $t0, $t0, $t1
	sw $t0, -8800($fp)
	lw $t0, -8784($fp)
	lw $t1, -8800($fp)
	sw $t0, 0($t1)
	lw $t0, -8800($fp)
	lw $t1, 0($t0)
	sw $t1, -8804($fp)
	li $t0, 42374
	sw $t0, -8808($fp)
	addi $t0, $fp, -8500
	sw $t0, -8812($fp)
	li $t0, 5
	sw $t0, -8816($fp)
	lw $t0, -8816($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8820($fp)
	lw $t0, -8812($fp)
	lw $t1, -8820($fp)
	add $t0, $t0, $t1
	sw $t0, -8824($fp)
	lw $t0, -8808($fp)
	lw $t1, -8824($fp)
	sw $t0, 0($t1)
	lw $t0, -8824($fp)
	lw $t1, 0($t0)
	sw $t1, -8828($fp)
	li $t0, 25381
	sw $t0, -8832($fp)
	lw $t0, -8832($fp)
	sw $t0, -8836($fp)
	lw $t0, -8836($fp)
	sw $t0, -8840($fp)
	li $t0, 22831
	sw $t0, -8844($fp)
	lw $t0, -8844($fp)
	sw $t0, -8848($fp)
	lw $t0, -8848($fp)
	sw $t0, -8852($fp)
	li $t0, 14840
	sw $t0, -8856($fp)
	lw $t0, -8856($fp)
	sw $t0, -8860($fp)
	lw $t0, -8860($fp)
	sw $t0, -8864($fp)
	li $t0, 4668
	sw $t0, -8868($fp)
	lw $t0, -8868($fp)
	sw $t0, -8872($fp)
	lw $t0, -8872($fp)
	sw $t0, -8876($fp)
	li $t0, 2732
	sw $t0, -8880($fp)
	lw $t0, -8880($fp)
	sw $t0, -8884($fp)
	lw $t0, -8884($fp)
	sw $t0, -8888($fp)
	li $t0, 21782
	sw $t0, -8892($fp)
	lw $t0, -8892($fp)
	sw $t0, -8896($fp)
	lw $t0, -8896($fp)
	sw $t0, -8900($fp)
	li $t0, 29343
	sw $t0, -8904($fp)
	addi $t0, $fp, -8540
	sw $t0, -8908($fp)
	li $t0, 0
	sw $t0, -8912($fp)
	lw $t0, -8912($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8916($fp)
	lw $t0, -8908($fp)
	lw $t1, -8916($fp)
	add $t0, $t0, $t1
	sw $t0, -8920($fp)
	lw $t0, -8904($fp)
	lw $t1, -8920($fp)
	sw $t0, 0($t1)
	lw $t0, -8920($fp)
	lw $t1, 0($t0)
	sw $t1, -8924($fp)
	li $t0, 13380
	sw $t0, -8928($fp)
	addi $t0, $fp, -8540
	sw $t0, -8932($fp)
	li $t0, 1
	sw $t0, -8936($fp)
	lw $t0, -8936($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8940($fp)
	lw $t0, -8932($fp)
	lw $t1, -8940($fp)
	add $t0, $t0, $t1
	sw $t0, -8944($fp)
	lw $t0, -8928($fp)
	lw $t1, -8944($fp)
	sw $t0, 0($t1)
	lw $t0, -8944($fp)
	lw $t1, 0($t0)
	sw $t1, -8948($fp)
	li $t0, 26450
	sw $t0, -8952($fp)
	addi $t0, $fp, -8540
	sw $t0, -8956($fp)
	li $t0, 2
	sw $t0, -8960($fp)
	lw $t0, -8960($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8964($fp)
	lw $t0, -8956($fp)
	lw $t1, -8964($fp)
	add $t0, $t0, $t1
	sw $t0, -8968($fp)
	lw $t0, -8952($fp)
	lw $t1, -8968($fp)
	sw $t0, 0($t1)
	lw $t0, -8968($fp)
	lw $t1, 0($t0)
	sw $t1, -8972($fp)
	li $t0, 43440
	sw $t0, -8976($fp)
	addi $t0, $fp, -8540
	sw $t0, -8980($fp)
	li $t0, 3
	sw $t0, -8984($fp)
	lw $t0, -8984($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8988($fp)
	lw $t0, -8980($fp)
	lw $t1, -8988($fp)
	add $t0, $t0, $t1
	sw $t0, -8992($fp)
	lw $t0, -8976($fp)
	lw $t1, -8992($fp)
	sw $t0, 0($t1)
	lw $t0, -8992($fp)
	lw $t1, 0($t0)
	sw $t1, -8996($fp)
	li $t0, 60615
	sw $t0, -9000($fp)
	addi $t0, $fp, -8540
	sw $t0, -9004($fp)
	li $t0, 4
	sw $t0, -9008($fp)
	lw $t0, -9008($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9012($fp)
	lw $t0, -9004($fp)
	lw $t1, -9012($fp)
	add $t0, $t0, $t1
	sw $t0, -9016($fp)
	lw $t0, -9000($fp)
	lw $t1, -9016($fp)
	sw $t0, 0($t1)
	lw $t0, -9016($fp)
	lw $t1, 0($t0)
	sw $t1, -9020($fp)
	li $t0, 3875
	sw $t0, -9024($fp)
	addi $t0, $fp, -8540
	sw $t0, -9028($fp)
	li $t0, 5
	sw $t0, -9032($fp)
	lw $t0, -9032($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9036($fp)
	lw $t0, -9028($fp)
	lw $t1, -9036($fp)
	add $t0, $t0, $t1
	sw $t0, -9040($fp)
	lw $t0, -9024($fp)
	lw $t1, -9040($fp)
	sw $t0, 0($t1)
	lw $t0, -9040($fp)
	lw $t1, 0($t0)
	sw $t1, -9044($fp)
	li $t0, 21550
	sw $t0, -9048($fp)
	addi $t0, $fp, -8540
	sw $t0, -9052($fp)
	li $t0, 6
	sw $t0, -9056($fp)
	lw $t0, -9056($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9060($fp)
	lw $t0, -9052($fp)
	lw $t1, -9060($fp)
	add $t0, $t0, $t1
	sw $t0, -9064($fp)
	lw $t0, -9048($fp)
	lw $t1, -9064($fp)
	sw $t0, 0($t1)
	lw $t0, -9064($fp)
	lw $t1, 0($t0)
	sw $t1, -9068($fp)
	li $t0, 60299
	sw $t0, -9072($fp)
	addi $t0, $fp, -8540
	sw $t0, -9076($fp)
	li $t0, 7
	sw $t0, -9080($fp)
	lw $t0, -9080($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9084($fp)
	lw $t0, -9076($fp)
	lw $t1, -9084($fp)
	add $t0, $t0, $t1
	sw $t0, -9088($fp)
	lw $t0, -9072($fp)
	lw $t1, -9088($fp)
	sw $t0, 0($t1)
	lw $t0, -9088($fp)
	lw $t1, 0($t0)
	sw $t1, -9092($fp)
	li $t0, 9854
	sw $t0, -9096($fp)
	addi $t0, $fp, -8540
	sw $t0, -9100($fp)
	li $t0, 8
	sw $t0, -9104($fp)
	lw $t0, -9104($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9108($fp)
	lw $t0, -9100($fp)
	lw $t1, -9108($fp)
	add $t0, $t0, $t1
	sw $t0, -9112($fp)
	lw $t0, -9096($fp)
	lw $t1, -9112($fp)
	sw $t0, 0($t1)
	lw $t0, -9112($fp)
	lw $t1, 0($t0)
	sw $t1, -9116($fp)
	li $t0, 37308
	sw $t0, -9120($fp)
	addi $t0, $fp, -8540
	sw $t0, -9124($fp)
	li $t0, 9
	sw $t0, -9128($fp)
	lw $t0, -9128($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9132($fp)
	lw $t0, -9124($fp)
	lw $t1, -9132($fp)
	add $t0, $t0, $t1
	sw $t0, -9136($fp)
	lw $t0, -9120($fp)
	lw $t1, -9136($fp)
	sw $t0, 0($t1)
	lw $t0, -9136($fp)
	lw $t1, 0($t0)
	sw $t1, -9140($fp)
	li $t0, 58925
	sw $t0, -9144($fp)
	lw $t0, -9144($fp)
	sw $t0, -9148($fp)
	lw $t0, -9148($fp)
	sw $t0, -9152($fp)
	li $t0, 6318
	sw $t0, -9156($fp)
	lw $t0, -9156($fp)
	sw $t0, -9160($fp)
	lw $t0, -9160($fp)
	sw $t0, -9164($fp)
	li $t0, 16771
	sw $t0, -9168($fp)
	lw $t0, -9168($fp)
	sw $t0, -9172($fp)
	lw $t0, -9172($fp)
	sw $t0, -9176($fp)
	li $t0, 64425
	sw $t0, -9180($fp)
	lw $t0, -9180($fp)
	sw $t0, -9184($fp)
	lw $t0, -9184($fp)
	sw $t0, -9188($fp)
	li $t0, 9902
	sw $t0, -9192($fp)
	addi $t0, $fp, -8576
	sw $t0, -9196($fp)
	li $t0, 0
	sw $t0, -9200($fp)
	lw $t0, -9200($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9204($fp)
	lw $t0, -9196($fp)
	lw $t1, -9204($fp)
	add $t0, $t0, $t1
	sw $t0, -9208($fp)
	lw $t0, -9192($fp)
	lw $t1, -9208($fp)
	sw $t0, 0($t1)
	lw $t0, -9208($fp)
	lw $t1, 0($t0)
	sw $t1, -9212($fp)
	li $t0, 30985
	sw $t0, -9216($fp)
	addi $t0, $fp, -8576
	sw $t0, -9220($fp)
	li $t0, 1
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
	li $t0, 8178
	sw $t0, -9240($fp)
	addi $t0, $fp, -8576
	sw $t0, -9244($fp)
	li $t0, 2
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
	li $t0, 7893
	sw $t0, -9264($fp)
	addi $t0, $fp, -8576
	sw $t0, -9268($fp)
	li $t0, 3
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
	li $t0, 60924
	sw $t0, -9288($fp)
	addi $t0, $fp, -8576
	sw $t0, -9292($fp)
	li $t0, 4
	sw $t0, -9296($fp)
	lw $t0, -9296($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9300($fp)
	lw $t0, -9292($fp)
	lw $t1, -9300($fp)
	add $t0, $t0, $t1
	sw $t0, -9304($fp)
	lw $t0, -9288($fp)
	lw $t1, -9304($fp)
	sw $t0, 0($t1)
	lw $t0, -9304($fp)
	lw $t1, 0($t0)
	sw $t1, -9308($fp)
	li $t0, 23898
	sw $t0, -9312($fp)
	addi $t0, $fp, -8576
	sw $t0, -9316($fp)
	li $t0, 5
	sw $t0, -9320($fp)
	lw $t0, -9320($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9324($fp)
	lw $t0, -9316($fp)
	lw $t1, -9324($fp)
	add $t0, $t0, $t1
	sw $t0, -9328($fp)
	lw $t0, -9312($fp)
	lw $t1, -9328($fp)
	sw $t0, 0($t1)
	lw $t0, -9328($fp)
	lw $t1, 0($t0)
	sw $t1, -9332($fp)
	li $t0, 43648
	sw $t0, -9336($fp)
	addi $t0, $fp, -8576
	sw $t0, -9340($fp)
	li $t0, 6
	sw $t0, -9344($fp)
	lw $t0, -9344($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9348($fp)
	lw $t0, -9340($fp)
	lw $t1, -9348($fp)
	add $t0, $t0, $t1
	sw $t0, -9352($fp)
	lw $t0, -9336($fp)
	lw $t1, -9352($fp)
	sw $t0, 0($t1)
	lw $t0, -9352($fp)
	lw $t1, 0($t0)
	sw $t1, -9356($fp)
	li $t0, 42971
	sw $t0, -9360($fp)
	addi $t0, $fp, -8576
	sw $t0, -9364($fp)
	li $t0, 7
	sw $t0, -9368($fp)
	lw $t0, -9368($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9372($fp)
	lw $t0, -9364($fp)
	lw $t1, -9372($fp)
	add $t0, $t0, $t1
	sw $t0, -9376($fp)
	lw $t0, -9360($fp)
	lw $t1, -9376($fp)
	sw $t0, 0($t1)
	lw $t0, -9376($fp)
	lw $t1, 0($t0)
	sw $t1, -9380($fp)
	li $t0, 55313
	sw $t0, -9384($fp)
	addi $t0, $fp, -8576
	sw $t0, -9388($fp)
	li $t0, 8
	sw $t0, -9392($fp)
	lw $t0, -9392($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9396($fp)
	lw $t0, -9388($fp)
	lw $t1, -9396($fp)
	add $t0, $t0, $t1
	sw $t0, -9400($fp)
	lw $t0, -9384($fp)
	lw $t1, -9400($fp)
	sw $t0, 0($t1)
	lw $t0, -9400($fp)
	lw $t1, 0($t0)
	sw $t1, -9404($fp)
	li $t0, 888
	sw $t0, -9408($fp)
	lw $t0, -9408($fp)
	sw $t0, -9412($fp)
	lw $t0, -9412($fp)
	sw $t0, -9416($fp)
	li $t0, 19809
	sw $t0, -9420($fp)
	lw $t0, -9420($fp)
	sw $t0, -9424($fp)
	lw $t0, -9424($fp)
	sw $t0, -9428($fp)
	li $t0, 15158
	sw $t0, -9432($fp)
	lw $t0, -9432($fp)
	sw $t0, -9436($fp)
	lw $t0, -9436($fp)
	sw $t0, -9440($fp)
	li $t0, 23719
	sw $t0, -9444($fp)
	lw $t0, -9444($fp)
	sw $t0, -9448($fp)
	lw $t0, -9448($fp)
	sw $t0, -9452($fp)
	li $t0, 34649
	sw $t0, -9456($fp)
	lw $t0, -9456($fp)
	sw $t0, -9460($fp)
	lw $t0, -9460($fp)
	sw $t0, -9464($fp)
	li $t0, 19826
	sw $t0, -9468($fp)
	lw $t0, -9468($fp)
	sw $t0, -9472($fp)
	lw $t0, -9472($fp)
	sw $t0, -9476($fp)
	li $t0, 26452
	sw $t0, -9480($fp)
	lw $t0, -9480($fp)
	sw $t0, -9484($fp)
	lw $t0, -9484($fp)
	sw $t0, -9488($fp)
	li $t0, 56431
	sw $t0, -9492($fp)
	addi $t0, $fp, -8600
	sw $t0, -9496($fp)
	li $t0, 0
	sw $t0, -9500($fp)
	lw $t0, -9500($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9504($fp)
	lw $t0, -9496($fp)
	lw $t1, -9504($fp)
	add $t0, $t0, $t1
	sw $t0, -9508($fp)
	lw $t0, -9492($fp)
	lw $t1, -9508($fp)
	sw $t0, 0($t1)
	lw $t0, -9508($fp)
	lw $t1, 0($t0)
	sw $t1, -9512($fp)
	li $t0, 49170
	sw $t0, -9516($fp)
	addi $t0, $fp, -8600
	sw $t0, -9520($fp)
	li $t0, 1
	sw $t0, -9524($fp)
	lw $t0, -9524($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9528($fp)
	lw $t0, -9520($fp)
	lw $t1, -9528($fp)
	add $t0, $t0, $t1
	sw $t0, -9532($fp)
	lw $t0, -9516($fp)
	lw $t1, -9532($fp)
	sw $t0, 0($t1)
	lw $t0, -9532($fp)
	lw $t1, 0($t0)
	sw $t1, -9536($fp)
	li $t0, 39832
	sw $t0, -9540($fp)
	addi $t0, $fp, -8600
	sw $t0, -9544($fp)
	li $t0, 2
	sw $t0, -9548($fp)
	lw $t0, -9548($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9552($fp)
	lw $t0, -9544($fp)
	lw $t1, -9552($fp)
	add $t0, $t0, $t1
	sw $t0, -9556($fp)
	lw $t0, -9540($fp)
	lw $t1, -9556($fp)
	sw $t0, 0($t1)
	lw $t0, -9556($fp)
	lw $t1, 0($t0)
	sw $t1, -9560($fp)
	li $t0, 17345
	sw $t0, -9564($fp)
	addi $t0, $fp, -8600
	sw $t0, -9568($fp)
	li $t0, 3
	sw $t0, -9572($fp)
	lw $t0, -9572($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9576($fp)
	lw $t0, -9568($fp)
	lw $t1, -9576($fp)
	add $t0, $t0, $t1
	sw $t0, -9580($fp)
	lw $t0, -9564($fp)
	lw $t1, -9580($fp)
	sw $t0, 0($t1)
	lw $t0, -9580($fp)
	lw $t1, 0($t0)
	sw $t1, -9584($fp)
	li $t0, 27074
	sw $t0, -9588($fp)
	addi $t0, $fp, -8600
	sw $t0, -9592($fp)
	li $t0, 4
	sw $t0, -9596($fp)
	lw $t0, -9596($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9600($fp)
	lw $t0, -9592($fp)
	lw $t1, -9600($fp)
	add $t0, $t0, $t1
	sw $t0, -9604($fp)
	lw $t0, -9588($fp)
	lw $t1, -9604($fp)
	sw $t0, 0($t1)
	lw $t0, -9604($fp)
	lw $t1, 0($t0)
	sw $t1, -9608($fp)
	li $t0, 34911
	sw $t0, -9612($fp)
	addi $t0, $fp, -8600
	sw $t0, -9616($fp)
	li $t0, 5
	sw $t0, -9620($fp)
	lw $t0, -9620($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9624($fp)
	lw $t0, -9616($fp)
	lw $t1, -9624($fp)
	add $t0, $t0, $t1
	sw $t0, -9628($fp)
	lw $t0, -9612($fp)
	lw $t1, -9628($fp)
	sw $t0, 0($t1)
	lw $t0, -9628($fp)
	lw $t1, 0($t0)
	sw $t1, -9632($fp)
	li $t0, 21221
	sw $t0, -9636($fp)
	addi $t0, $fp, -8636
	sw $t0, -9640($fp)
	li $t0, 0
	sw $t0, -9644($fp)
	lw $t0, -9644($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9648($fp)
	lw $t0, -9640($fp)
	lw $t1, -9648($fp)
	add $t0, $t0, $t1
	sw $t0, -9652($fp)
	lw $t0, -9636($fp)
	lw $t1, -9652($fp)
	sw $t0, 0($t1)
	lw $t0, -9652($fp)
	lw $t1, 0($t0)
	sw $t1, -9656($fp)
	li $t0, 48625
	sw $t0, -9660($fp)
	addi $t0, $fp, -8636
	sw $t0, -9664($fp)
	li $t0, 1
	sw $t0, -9668($fp)
	lw $t0, -9668($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9672($fp)
	lw $t0, -9664($fp)
	lw $t1, -9672($fp)
	add $t0, $t0, $t1
	sw $t0, -9676($fp)
	lw $t0, -9660($fp)
	lw $t1, -9676($fp)
	sw $t0, 0($t1)
	lw $t0, -9676($fp)
	lw $t1, 0($t0)
	sw $t1, -9680($fp)
	li $t0, 29674
	sw $t0, -9684($fp)
	addi $t0, $fp, -8636
	sw $t0, -9688($fp)
	li $t0, 2
	sw $t0, -9692($fp)
	lw $t0, -9692($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9696($fp)
	lw $t0, -9688($fp)
	lw $t1, -9696($fp)
	add $t0, $t0, $t1
	sw $t0, -9700($fp)
	lw $t0, -9684($fp)
	lw $t1, -9700($fp)
	sw $t0, 0($t1)
	lw $t0, -9700($fp)
	lw $t1, 0($t0)
	sw $t1, -9704($fp)
	li $t0, 31075
	sw $t0, -9708($fp)
	addi $t0, $fp, -8636
	sw $t0, -9712($fp)
	li $t0, 3
	sw $t0, -9716($fp)
	lw $t0, -9716($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9720($fp)
	lw $t0, -9712($fp)
	lw $t1, -9720($fp)
	add $t0, $t0, $t1
	sw $t0, -9724($fp)
	lw $t0, -9708($fp)
	lw $t1, -9724($fp)
	sw $t0, 0($t1)
	lw $t0, -9724($fp)
	lw $t1, 0($t0)
	sw $t1, -9728($fp)
	li $t0, 20397
	sw $t0, -9732($fp)
	addi $t0, $fp, -8636
	sw $t0, -9736($fp)
	li $t0, 4
	sw $t0, -9740($fp)
	lw $t0, -9740($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9744($fp)
	lw $t0, -9736($fp)
	lw $t1, -9744($fp)
	add $t0, $t0, $t1
	sw $t0, -9748($fp)
	lw $t0, -9732($fp)
	lw $t1, -9748($fp)
	sw $t0, 0($t1)
	lw $t0, -9748($fp)
	lw $t1, 0($t0)
	sw $t1, -9752($fp)
	li $t0, 23064
	sw $t0, -9756($fp)
	addi $t0, $fp, -8636
	sw $t0, -9760($fp)
	li $t0, 5
	sw $t0, -9764($fp)
	lw $t0, -9764($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9768($fp)
	lw $t0, -9760($fp)
	lw $t1, -9768($fp)
	add $t0, $t0, $t1
	sw $t0, -9772($fp)
	lw $t0, -9756($fp)
	lw $t1, -9772($fp)
	sw $t0, 0($t1)
	lw $t0, -9772($fp)
	lw $t1, 0($t0)
	sw $t1, -9776($fp)
	li $t0, 37393
	sw $t0, -9780($fp)
	addi $t0, $fp, -8636
	sw $t0, -9784($fp)
	li $t0, 6
	sw $t0, -9788($fp)
	lw $t0, -9788($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9792($fp)
	lw $t0, -9784($fp)
	lw $t1, -9792($fp)
	add $t0, $t0, $t1
	sw $t0, -9796($fp)
	lw $t0, -9780($fp)
	lw $t1, -9796($fp)
	sw $t0, 0($t1)
	lw $t0, -9796($fp)
	lw $t1, 0($t0)
	sw $t1, -9800($fp)
	li $t0, 37169
	sw $t0, -9804($fp)
	addi $t0, $fp, -8636
	sw $t0, -9808($fp)
	li $t0, 7
	sw $t0, -9812($fp)
	lw $t0, -9812($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9816($fp)
	lw $t0, -9808($fp)
	lw $t1, -9816($fp)
	add $t0, $t0, $t1
	sw $t0, -9820($fp)
	lw $t0, -9804($fp)
	lw $t1, -9820($fp)
	sw $t0, 0($t1)
	lw $t0, -9820($fp)
	lw $t1, 0($t0)
	sw $t1, -9824($fp)
	li $t0, 21953
	sw $t0, -9828($fp)
	addi $t0, $fp, -8636
	sw $t0, -9832($fp)
	li $t0, 8
	sw $t0, -9836($fp)
	lw $t0, -9836($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9840($fp)
	lw $t0, -9832($fp)
	lw $t1, -9840($fp)
	add $t0, $t0, $t1
	sw $t0, -9844($fp)
	lw $t0, -9828($fp)
	lw $t1, -9844($fp)
	sw $t0, 0($t1)
	lw $t0, -9844($fp)
	lw $t1, 0($t0)
	sw $t1, -9848($fp)
	li $t0, 47295
	sw $t0, -9852($fp)
	lw $t0, -9852($fp)
	sw $t0, -9856($fp)
	lw $t0, -9856($fp)
	sw $t0, -9860($fp)
	li $t0, 2618
	sw $t0, -9864($fp)
	lw $t0, -9864($fp)
	sw $t0, -9868($fp)
	lw $t0, -9868($fp)
	sw $t0, -9872($fp)
	li $t0, 30132
	sw $t0, -9876($fp)
	lw $t0, -9876($fp)
	sw $t0, -9880($fp)
	lw $t0, -9880($fp)
	sw $t0, -9884($fp)
	li $t0, 55188
	sw $t0, -9888($fp)
	lw $t0, -9888($fp)
	sw $t0, -9892($fp)
	lw $t0, -9892($fp)
	sw $t0, -9896($fp)
	li $t0, 63543
	sw $t0, -9900($fp)
	lw $t0, -9900($fp)
	sw $t0, -9904($fp)
	lw $t0, -9904($fp)
	sw $t0, -9908($fp)
	li $t0, 54030
	sw $t0, -9912($fp)
	lw $t0, -9912($fp)
	sw $t0, -9916($fp)
	lw $t0, -9916($fp)
	sw $t0, -9920($fp)
	li $t0, 33301
	sw $t0, -9924($fp)
	lw $t0, -9924($fp)
	sw $t0, -9928($fp)
	lw $t0, -9928($fp)
	sw $t0, -9932($fp)
	li $t0, 40978
	sw $t0, -9936($fp)
	lw $t0, -9936($fp)
	sw $t0, -9940($fp)
	lw $t0, -9940($fp)
	sw $t0, -9944($fp)
	li $t0, 43807
	sw $t0, -9948($fp)
	addi $t0, $fp, -8648
	sw $t0, -9952($fp)
	li $t0, 0
	sw $t0, -9956($fp)
	lw $t0, -9956($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9960($fp)
	lw $t0, -9952($fp)
	lw $t1, -9960($fp)
	add $t0, $t0, $t1
	sw $t0, -9964($fp)
	lw $t0, -9948($fp)
	lw $t1, -9964($fp)
	sw $t0, 0($t1)
	lw $t0, -9964($fp)
	lw $t1, 0($t0)
	sw $t1, -9968($fp)
	li $t0, 34189
	sw $t0, -9972($fp)
	addi $t0, $fp, -8648
	sw $t0, -9976($fp)
	li $t0, 1
	sw $t0, -9980($fp)
	lw $t0, -9980($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9984($fp)
	lw $t0, -9976($fp)
	lw $t1, -9984($fp)
	add $t0, $t0, $t1
	sw $t0, -9988($fp)
	lw $t0, -9972($fp)
	lw $t1, -9988($fp)
	sw $t0, 0($t1)
	lw $t0, -9988($fp)
	lw $t1, 0($t0)
	sw $t1, -9992($fp)
	li $t0, 60787
	sw $t0, -9996($fp)
	addi $t0, $fp, -8648
	sw $t0, -10000($fp)
	li $t0, 2
	sw $t0, -10004($fp)
	lw $t0, -10004($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10008($fp)
	lw $t0, -10000($fp)
	lw $t1, -10008($fp)
	add $t0, $t0, $t1
	sw $t0, -10012($fp)
	lw $t0, -9996($fp)
	lw $t1, -10012($fp)
	sw $t0, 0($t1)
	lw $t0, -10012($fp)
	lw $t1, 0($t0)
	sw $t1, -10016($fp)
	li $t0, 58965
	sw $t0, -10020($fp)
	lw $t0, -10020($fp)
	sw $t0, -10024($fp)
	lw $t0, -10024($fp)
	sw $t0, -10028($fp)
	li $t0, 57908
	sw $t0, -10032($fp)
	lw $t0, -10032($fp)
	sw $t0, -10036($fp)
	lw $t0, -10036($fp)
	sw $t0, -10040($fp)
	li $t0, 29900
	sw $t0, -10044($fp)
	lw $t0, -10044($fp)
	sw $t0, -10048($fp)
	lw $t0, -10048($fp)
	sw $t0, -10052($fp)
	li $t0, 13255
	sw $t0, -10056($fp)
	lw $t0, -10056($fp)
	sw $t0, -10060($fp)
	lw $t0, -10060($fp)
	sw $t0, -10064($fp)
	li $t0, 18824
	sw $t0, -10068($fp)
	lw $t0, -10068($fp)
	sw $t0, -10072($fp)
	lw $t0, -10072($fp)
	sw $t0, -10076($fp)
	li $t0, 20795
	sw $t0, -10080($fp)
	lw $t0, -10080($fp)
	sw $t0, -10084($fp)
	lw $t0, -10084($fp)
	sw $t0, -10088($fp)
	li $t0, 62425
	sw $t0, -10092($fp)
	addi $t0, $fp, -8660
	sw $t0, -10096($fp)
	li $t0, 0
	sw $t0, -10100($fp)
	lw $t0, -10100($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10104($fp)
	lw $t0, -10096($fp)
	lw $t1, -10104($fp)
	add $t0, $t0, $t1
	sw $t0, -10108($fp)
	lw $t0, -10092($fp)
	lw $t1, -10108($fp)
	sw $t0, 0($t1)
	lw $t0, -10108($fp)
	lw $t1, 0($t0)
	sw $t1, -10112($fp)
	li $t0, 58656
	sw $t0, -10116($fp)
	addi $t0, $fp, -8660
	sw $t0, -10120($fp)
	li $t0, 1
	sw $t0, -10124($fp)
	lw $t0, -10124($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10128($fp)
	lw $t0, -10120($fp)
	lw $t1, -10128($fp)
	add $t0, $t0, $t1
	sw $t0, -10132($fp)
	lw $t0, -10116($fp)
	lw $t1, -10132($fp)
	sw $t0, 0($t1)
	lw $t0, -10132($fp)
	lw $t1, 0($t0)
	sw $t1, -10136($fp)
	li $t0, 38141
	sw $t0, -10140($fp)
	addi $t0, $fp, -8660
	sw $t0, -10144($fp)
	li $t0, 2
	sw $t0, -10148($fp)
	lw $t0, -10148($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10152($fp)
	lw $t0, -10144($fp)
	lw $t1, -10152($fp)
	add $t0, $t0, $t1
	sw $t0, -10156($fp)
	lw $t0, -10140($fp)
	lw $t1, -10156($fp)
	sw $t0, 0($t1)
	lw $t0, -10156($fp)
	lw $t1, 0($t0)
	sw $t1, -10160($fp)
	li $t0, 23964
	sw $t0, -10164($fp)
	lw $t0, -10164($fp)
	sw $t0, -10168($fp)
	lw $t0, -10168($fp)
	sw $t0, -10172($fp)
	li $t0, 28032
	sw $t0, -10176($fp)
	lw $t0, -10176($fp)
	sw $t0, -10180($fp)
	lw $t0, -10180($fp)
	sw $t0, -10184($fp)
	li $t0, 59362
	sw $t0, -10188($fp)
	lw $t0, -10188($fp)
	sw $t0, -10192($fp)
	lw $t0, -10192($fp)
	sw $t0, -10196($fp)
	li $t0, 7053
	sw $t0, -10200($fp)
	lw $t0, -10200($fp)
	sw $t0, -10204($fp)
	lw $t0, -10204($fp)
	sw $t0, -10208($fp)
	li $t0, 57706
	sw $t0, -10212($fp)
	lw $t0, -10212($fp)
	sw $t0, -10216($fp)
	lw $t0, -10216($fp)
	sw $t0, -10220($fp)
	li $t0, 24901
	sw $t0, -10224($fp)
	lw $t0, -10224($fp)
	sw $t0, -10228($fp)
	lw $t0, -10228($fp)
	sw $t0, -10232($fp)
	li $t0, 27450
	sw $t0, -10236($fp)
	lw $t0, -10236($fp)
	sw $t0, -10240($fp)
	lw $t0, -10240($fp)
	sw $t0, -10244($fp)
	li $t0, 15234
	sw $t0, -10248($fp)
	lw $t0, -10248($fp)
	sw $t0, -10252($fp)
	lw $t0, -10252($fp)
	sw $t0, -10256($fp)
	li $t0, 62294
	sw $t0, -10260($fp)
	lw $t0, -10260($fp)
	sw $t0, -10264($fp)
	lw $t0, -10264($fp)
	sw $t0, -10268($fp)
	li $t0, 64619
	sw $t0, -10272($fp)
	lw $t0, -10272($fp)
	sw $t0, -10276($fp)
	lw $t0, -10276($fp)
	sw $t0, -10280($fp)
	li $t0, 37188
	sw $t0, -10284($fp)
	addi $t0, $fp, -8672
	sw $t0, -10288($fp)
	li $t0, 0
	sw $t0, -10292($fp)
	lw $t0, -10292($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10296($fp)
	lw $t0, -10288($fp)
	lw $t1, -10296($fp)
	add $t0, $t0, $t1
	sw $t0, -10300($fp)
	lw $t0, -10284($fp)
	lw $t1, -10300($fp)
	sw $t0, 0($t1)
	lw $t0, -10300($fp)
	lw $t1, 0($t0)
	sw $t1, -10304($fp)
	li $t0, 44053
	sw $t0, -10308($fp)
	addi $t0, $fp, -8672
	sw $t0, -10312($fp)
	li $t0, 1
	sw $t0, -10316($fp)
	lw $t0, -10316($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10320($fp)
	lw $t0, -10312($fp)
	lw $t1, -10320($fp)
	add $t0, $t0, $t1
	sw $t0, -10324($fp)
	lw $t0, -10308($fp)
	lw $t1, -10324($fp)
	sw $t0, 0($t1)
	lw $t0, -10324($fp)
	lw $t1, 0($t0)
	sw $t1, -10328($fp)
	li $t0, 1702
	sw $t0, -10332($fp)
	addi $t0, $fp, -8672
	sw $t0, -10336($fp)
	li $t0, 2
	sw $t0, -10340($fp)
	lw $t0, -10340($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10344($fp)
	lw $t0, -10336($fp)
	lw $t1, -10344($fp)
	add $t0, $t0, $t1
	sw $t0, -10348($fp)
	lw $t0, -10332($fp)
	lw $t1, -10348($fp)
	sw $t0, 0($t1)
	lw $t0, -10348($fp)
	lw $t1, 0($t0)
	sw $t1, -10352($fp)
	li $t0, 1784
	sw $t0, -10356($fp)
	lw $t0, -10356($fp)
	sw $t0, -10360($fp)
	lw $t0, -10360($fp)
	sw $t0, -10364($fp)
	li $t0, 33706
	sw $t0, -10368($fp)
	lw $t0, -10368($fp)
	sw $t0, -10372($fp)
	lw $t0, -10372($fp)
	sw $t0, -10376($fp)
	li $t0, 65245
	sw $t0, -10380($fp)
	lw $t0, -10380($fp)
	sw $t0, -10384($fp)
	lw $t0, -10384($fp)
	sw $t0, -10388($fp)
	li $t0, 55814
	sw $t0, -10392($fp)
	lw $t0, -10392($fp)
	sw $t0, -10396($fp)
	lw $t0, -10396($fp)
	sw $t0, -10400($fp)
	li $t0, 1471
	sw $t0, -10404($fp)
	lw $t0, -10404($fp)
	sw $t0, -10408($fp)
	lw $t0, -10408($fp)
	sw $t0, -10412($fp)
	li $t0, 40687
	sw $t0, -10416($fp)
	lw $t0, -10416($fp)
	sw $t0, -10420($fp)
	lw $t0, -10420($fp)
	sw $t0, -10424($fp)
	li $t0, 34085
	sw $t0, -10428($fp)
	lw $t0, -10428($fp)
	sw $t0, -10432($fp)
	lw $t0, -10432($fp)
	sw $t0, -10436($fp)
	addi $t0, $fp, -200
	sw $t0, -10440($fp)
	li $t0, 35660
	sw $t0, -10444($fp)
	li $t0, 35938
	sw $t0, -10448($fp)
	lw $t0, -10444($fp)
	lw $t1, -10448($fp)
	add $t0, $t0, $t1
	sw $t0, -10452($fp)
	lw $t0, -3004($fp)
	sw $t0, -10456($fp)
	lw $t0, -10452($fp)
	lw $t1, -10456($fp)
	sub $t0, $t0, $t1
	sw $t0, -10460($fp)
	li $t0, 4
	lw $t1, -10460($fp)
	mul $t0, $t0, $t1
	sw $t0, -10464($fp)
	lw $t0, -10464($fp)
	lw $t1, -10440($fp)
	add $t0, $t0, $t1
	sw $t0, -10468($fp)
	lw $t0, -10468($fp)
	lw $t1, 0($t0)
	sw $t1, -10472($fp)
	lw $t1, -10472($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label424
label426:
	addi $t0, $fp, -32
	sw $t0, -10476($fp)
	lw $t0, -628($fp)
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
	li $t0, 27514
	sw $t0, -10496($fp)
	li $t0, 0
	lw $t1, -10496($fp)
	sub $t0, $t0, $t1
	sw $t0, -10500($fp)
	lw $t1, -10492($fp)
	lw $t2, -10500($fp)
	beq $t1, $t2, label423
	j label424
label423:
label427:
	li $t0, 0
	sw $t0, -10504($fp)
	lw $t0, -10048($fp)
	sw $t0, -10508($fp)
	lw $t0, -6076($fp)
	sw $t0, -10512($fp)
	lw $t1, -10508($fp)
	lw $t2, -10512($fp)
	bne $t1, $t2, label431
	j label432
label431:
	li $t0, 1
	sw $t0, -10504($fp)
label432:
	li $t0, 40769
	sw $t0, -10516($fp)
	lw $t0, -1360($fp)
	sw $t0, -10520($fp)
	lw $t0, -10516($fp)
	lw $t1, -10520($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10524($fp)
	li $t0, 0
	sw $t0, -10528($fp)
	lw $t0, -1276($fp)
	sw $t0, -10532($fp)
	lw $t1, -10532($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label434
label436:
	li $t0, 302
	sw $t0, -10536($fp)
	lw $t1, -10536($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label434
label435:
	lw $t0, -9148($fp)
	sw $t0, -10540($fp)
	lw $t1, -10540($fp)
	li $t2, 0
	bne $t1, $t2, label433
	j label434
label433:
	li $t0, 1
	sw $t0, -10528($fp)
label434:
	li $t0, 28032
	sw $t0, -10544($fp)
	addi $sp, $sp, -4
	lw $t0, -10504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10544($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10548($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -10548($fp)
	sub $t0, $t0, $t1
	sw $t0, -10552($fp)
	lw $t1, -10552($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label429
label430:
	addi $t0, $fp, -8540
	sw $t0, -10556($fp)
	li $t0, 9
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
	lw $t1, -10572($fp)
	li $t2, 0
	bne $t1, $t2, label428
	j label429
label428:
	li $t0, 39977
	sw $t0, -10576($fp)
	lw $t0, -10576($fp)
	sw $t0, -10580($fp)
	lw $t0, -10580($fp)
	sw $t0, -10584($fp)
	li $t0, 0
	sw $t0, -10588($fp)
	lw $t0, -2704($fp)
	sw $t0, -10592($fp)
	lw $t1, -10592($fp)
	li $t2, 0
	bne $t1, $t2, label437
	j label441
label441:
	li $t0, 59238
	sw $t0, -10596($fp)
	lw $t1, -10596($fp)
	li $t2, 0
	bne $t1, $t2, label437
	j label440
label440:
	li $t0, 61623
	sw $t0, -10600($fp)
	lw $t1, -10600($fp)
	li $t2, 0
	bne $t1, $t2, label437
	j label439
label439:
	lw $t0, -1012($fp)
	sw $t0, -10604($fp)
	li $t0, 2473
	sw $t0, -10608($fp)
	lw $t1, -10604($fp)
	lw $t2, -10608($fp)
	bgt $t1, $t2, label437
	j label438
label437:
	li $t0, 1
	sw $t0, -10588($fp)
label438:
	lw $t0, -10588($fp)
	sw $t0, -9148($fp)
	lw $t0, -9148($fp)
	sw $t0, -10612($fp)
	lw $t0, -10072($fp)
	sw $t0, -10616($fp)
	li $t0, 0
	sw $t0, -10620($fp)
	li $t0, 29674
	sw $t0, -10624($fp)
	lw $t0, -10180($fp)
	sw $t0, -10628($fp)
	lw $t0, -10624($fp)
	lw $t1, -10628($fp)
	add $t0, $t0, $t1
	sw $t0, -10632($fp)
	lw $t0, -2656($fp)
	sw $t0, -10636($fp)
	lw $t1, -10632($fp)
	lw $t2, -10636($fp)
	bgt $t1, $t2, label445
	j label446
label445:
	li $t0, 1
	sw $t0, -10620($fp)
label446:
	li $t0, 0
	sw $t0, -10640($fp)
	lw $t0, -6448($fp)
	sw $t0, -10644($fp)
	li $t0, 9187
	sw $t0, -10648($fp)
	lw $t0, -10644($fp)
	lw $t1, -10648($fp)
	add $t0, $t0, $t1
	sw $t0, -10652($fp)
	lw $t1, -10652($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label448
label449:
	lw $t0, 12($fp)
	sw $t0, -10656($fp)
	lw $t1, -10656($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label448
label447:
	li $t0, 1
	sw $t0, -10640($fp)
label448:
	li $t0, 0
	sw $t0, -10660($fp)
	li $t0, 30590
	sw $t0, -10664($fp)
	lw $t1, -10664($fp)
	li $t2, 0
	bne $t1, $t2, label451
	j label450
label450:
	li $t0, 1
	sw $t0, -10660($fp)
label451:
	li $t0, 9878
	sw $t0, -10668($fp)
	lw $t0, -10660($fp)
	lw $t1, -10668($fp)
	mul $t0, $t0, $t1
	sw $t0, -10672($fp)
	li $t0, 0
	sw $t0, -10676($fp)
	lw $t0, -2512($fp)
	sw $t0, -10680($fp)
	li $t0, 60180
	sw $t0, -10684($fp)
	lw $t1, -10680($fp)
	lw $t2, -10684($fp)
	bgt $t1, $t2, label454
	j label453
label454:
	li $t0, 12429
	sw $t0, -10688($fp)
	lw $t1, -10688($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label453
label452:
	li $t0, 1
	sw $t0, -10676($fp)
label453:
	li $t0, 3140
	sw $t0, -10692($fp)
	lw $t0, -10692($fp)
	sw $t0, -10252($fp)
	lw $t0, -10252($fp)
	sw $t0, -10696($fp)
	li $t0, 0
	sw $t0, -10700($fp)
	lw $t0, -10580($fp)
	sw $t0, -10704($fp)
	lw $t0, -5596($fp)
	sw $t0, -10708($fp)
	lw $t0, -10704($fp)
	lw $t1, -10708($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10712($fp)
	lw $t0, -2716($fp)
	sw $t0, -10716($fp)
	lw $t1, -10712($fp)
	lw $t2, -10716($fp)
	ble $t1, $t2, label455
	j label456
label455:
	li $t0, 1
	sw $t0, -10700($fp)
label456:
	addi $sp, $sp, -4
	lw $t0, -10672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10700($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10720($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -10720($fp)
	sub $t0, $t0, $t1
	sw $t0, -10724($fp)
	li $t0, 0
	sw $t0, -10728($fp)
	li $t0, 53064
	sw $t0, -10732($fp)
	lw $t1, -10732($fp)
	li $t2, 0
	bne $t1, $t2, label458
	j label459
label459:
	lw $t0, -6196($fp)
	sw $t0, -10736($fp)
	lw $t1, -10736($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label458
label457:
	li $t0, 1
	sw $t0, -10728($fp)
label458:
	addi $sp, $sp, -4
	lw $t0, -10620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10728($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10740($fp)
	addi $sp, $sp, 20
	lw $t0, -10616($fp)
	lw $t1, -10740($fp)
	mul $t0, $t0, $t1
	sw $t0, -10744($fp)
	li $t0, 0
	lw $t1, -10744($fp)
	sub $t0, $t0, $t1
	sw $t0, -10748($fp)
	lw $t1, -10748($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label443
label442:
	li $t0, 0
	sw $t0, -10752($fp)
	addi $t0, $fp, -296
	sw $t0, -10756($fp)
	lw $t0, -6172($fp)
	sw $t0, -10760($fp)
	lw $t0, -2440($fp)
	sw $t0, -10764($fp)
	lw $t0, -10760($fp)
	lw $t1, -10764($fp)
	add $t0, $t0, $t1
	sw $t0, -10768($fp)
	li $t0, 47066
	sw $t0, -10772($fp)
	lw $t0, -10768($fp)
	lw $t1, -10772($fp)
	sub $t0, $t0, $t1
	sw $t0, -10776($fp)
	li $t0, 4
	lw $t1, -10776($fp)
	mul $t0, $t0, $t1
	sw $t0, -10780($fp)
	lw $t0, -10780($fp)
	lw $t1, -10756($fp)
	add $t0, $t0, $t1
	sw $t0, -10784($fp)
	lw $t0, -10784($fp)
	lw $t1, 0($t0)
	sw $t1, -10788($fp)
	lw $t1, -10788($fp)
	li $t2, 0
	bne $t1, $t2, label461
	j label460
label460:
	li $t0, 1
	sw $t0, -10752($fp)
label461:
label443:
	addi $t0, $fp, -332
	sw $t0, -10792($fp)
	li $t0, 7
	sw $t0, -10796($fp)
	li $t0, 4
	lw $t1, -10796($fp)
	mul $t0, $t0, $t1
	sw $t0, -10800($fp)
	lw $t0, -10800($fp)
	lw $t1, -10792($fp)
	add $t0, $t0, $t1
	sw $t0, -10804($fp)
	lw $t0, -10804($fp)
	lw $t1, 0($t0)
	sw $t1, -10808($fp)
	lw $t0, -10808($fp)
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	sw $t0, -10812($fp)
label462:
	li $t0, 21411
	sw $t0, -10816($fp)
	lw $t1, -10816($fp)
	li $t2, 0
	bne $t1, $t2, label464
	j label463
label463:
label465:
	lw $t0, -9940($fp)
	sw $t0, -10820($fp)
	lw $t1, -10820($fp)
	li $t2, 0
	bne $t1, $t2, label466
	j label467
label466:
	li $t0, 0
	sw $t0, -10824($fp)
	li $t0, 0
	sw $t0, -10828($fp)
	lw $t0, -2452($fp)
	sw $t0, -10832($fp)
	lw $t1, -10832($fp)
	li $t2, 0
	bne $t1, $t2, label471
	j label470
label470:
	li $t0, 1
	sw $t0, -10828($fp)
label471:
	li $t0, 31085
	sw $t0, -10836($fp)
	lw $t0, -6460($fp)
	sw $t0, -10840($fp)
	lw $t0, -10836($fp)
	lw $t1, -10840($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10844($fp)
	lw $t0, -10828($fp)
	lw $t1, -10844($fp)
	sub $t0, $t0, $t1
	sw $t0, -10848($fp)
	addi $t0, $fp, -144
	sw $t0, -10852($fp)
	lw $t0, -10192($fp)
	sw $t0, -10856($fp)
	li $t0, 4
	lw $t1, -10856($fp)
	mul $t0, $t0, $t1
	sw $t0, -10860($fp)
	lw $t0, -10860($fp)
	lw $t1, -10852($fp)
	add $t0, $t0, $t1
	sw $t0, -10864($fp)
	lw $t0, -10864($fp)
	lw $t1, 0($t0)
	sw $t1, -10868($fp)
	lw $t0, -6748($fp)
	sw $t0, -10872($fp)
	lw $t0, -10868($fp)
	lw $t1, -10872($fp)
	sub $t0, $t0, $t1
	sw $t0, -10876($fp)
	lw $t0, -10036($fp)
	sw $t0, -10880($fp)
	li $t0, 0
	lw $t1, -10880($fp)
	sub $t0, $t0, $t1
	sw $t0, -10884($fp)
	lw $t0, -10876($fp)
	lw $t1, -10884($fp)
	sub $t0, $t0, $t1
	sw $t0, -10888($fp)
	lw $t1, -10848($fp)
	lw $t2, -10888($fp)
	bge $t1, $t2, label468
	j label469
label468:
	li $t0, 1
	sw $t0, -10824($fp)
label469:
	j label465
label467:
	j label462
label464:
	li $t0, 35191
	sw $t0, -10892($fp)
	lw $t0, -628($fp)
	sw $t0, -10896($fp)
	addi $t0, $fp, -168
	sw $t0, -10900($fp)
	li $t0, 2
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
	lw $t0, -9868($fp)
	sw $t0, -10920($fp)
	lw $t0, -10916($fp)
	lw $t1, -10920($fp)
	sub $t0, $t0, $t1
	sw $t0, -10924($fp)
	lw $t0, -6160($fp)
	sw $t0, -10928($fp)
	lw $t0, -10928($fp)
	sw $t0, -9856($fp)
	lw $t0, -9856($fp)
	sw $t0, -10932($fp)
	li $t0, 0
	sw $t0, -10936($fp)
	li $t0, 22882
	sw $t0, -10940($fp)
	li $t0, 6236
	sw $t0, -10944($fp)
	lw $t1, -10940($fp)
	lw $t2, -10944($fp)
	beq $t1, $t2, label472
	j label474
label474:
	li $t0, 7677
	sw $t0, -10948($fp)
	lw $t1, -10948($fp)
	li $t2, 0
	bne $t1, $t2, label472
	j label473
label472:
	li $t0, 1
	sw $t0, -10936($fp)
label473:
	li $t0, 0
	sw $t0, -10952($fp)
	li $t0, 39128
	sw $t0, -10956($fp)
	lw $t1, -10956($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label475
label475:
	li $t0, 1
	sw $t0, -10952($fp)
label476:
	lw $t0, -2692($fp)
	sw $t0, -10960($fp)
	lw $t0, -10952($fp)
	lw $t1, -10960($fp)
	mul $t0, $t0, $t1
	sw $t0, -10964($fp)
	addi $sp, $sp, -4
	lw $t0, -10924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10964($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10968($fp)
	addi $sp, $sp, 20
	lw $t0, -652($fp)
	sw $t0, -10972($fp)
	lw $t0, -1372($fp)
	sw $t0, -10976($fp)
	lw $t0, -10972($fp)
	lw $t1, -10976($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10980($fp)
	addi $sp, $sp, -4
	lw $t0, -10892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10980($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10984($fp)
	addi $sp, $sp, 20
	lw $t0, -2992($fp)
	sw $t0, -10988($fp)
	li $t0, 0
	lw $t1, -10988($fp)
	sub $t0, $t0, $t1
	sw $t0, -10992($fp)
	li $t0, 0
	lw $t1, -10992($fp)
	sub $t0, $t0, $t1
	sw $t0, -10996($fp)
	lw $t0, -10984($fp)
	lw $t1, -10996($fp)
	sub $t0, $t0, $t1
	sw $t0, -11000($fp)
	addi $t0, $fp, -200
	sw $t0, -11004($fp)
	lw $t0, -9880($fp)
	sw $t0, -11008($fp)
	li $t0, 4
	lw $t1, -11008($fp)
	mul $t0, $t0, $t1
	sw $t0, -11012($fp)
	lw $t0, -11012($fp)
	lw $t1, -11004($fp)
	add $t0, $t0, $t1
	sw $t0, -11016($fp)
	lw $t0, -11016($fp)
	lw $t1, 0($t0)
	sw $t1, -11020($fp)
	li $t0, 21038
	sw $t0, -11024($fp)
	lw $t0, -11020($fp)
	lw $t1, -11024($fp)
	mul $t0, $t0, $t1
	sw $t0, -11028($fp)
	lw $t0, -11000($fp)
	lw $t1, -11028($fp)
	sub $t0, $t0, $t1
	sw $t0, -11032($fp)
	j label427
label429:
	j label425
label424:
	lw $t0, -10360($fp)
	sw $t0, -11036($fp)
	lw $ra, -4($fp)
	lw $v0, -11036($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label425:
	lw $t0, -8680($fp)
	sw $t0, -11040($fp)
	lw $t0, -11040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8500
	sw $t0, -11044($fp)
	li $t0, 0
	sw $t0, -11048($fp)
	li $t0, 4
	lw $t1, -11048($fp)
	mul $t0, $t0, $t1
	sw $t0, -11052($fp)
	lw $t0, -11052($fp)
	lw $t1, -11044($fp)
	add $t0, $t0, $t1
	sw $t0, -11056($fp)
	lw $t0, -11056($fp)
	lw $t1, 0($t0)
	sw $t1, -11060($fp)
	lw $t0, -11060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8500
	sw $t0, -11064($fp)
	li $t0, 1
	sw $t0, -11068($fp)
	li $t0, 4
	lw $t1, -11068($fp)
	mul $t0, $t0, $t1
	sw $t0, -11072($fp)
	lw $t0, -11072($fp)
	lw $t1, -11064($fp)
	add $t0, $t0, $t1
	sw $t0, -11076($fp)
	lw $t0, -11076($fp)
	lw $t1, 0($t0)
	sw $t1, -11080($fp)
	lw $t0, -11080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8500
	sw $t0, -11084($fp)
	li $t0, 2
	sw $t0, -11088($fp)
	li $t0, 4
	lw $t1, -11088($fp)
	mul $t0, $t0, $t1
	sw $t0, -11092($fp)
	lw $t0, -11092($fp)
	lw $t1, -11084($fp)
	add $t0, $t0, $t1
	sw $t0, -11096($fp)
	lw $t0, -11096($fp)
	lw $t1, 0($t0)
	sw $t1, -11100($fp)
	lw $t0, -11100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8500
	sw $t0, -11104($fp)
	li $t0, 3
	sw $t0, -11108($fp)
	li $t0, 4
	lw $t1, -11108($fp)
	mul $t0, $t0, $t1
	sw $t0, -11112($fp)
	lw $t0, -11112($fp)
	lw $t1, -11104($fp)
	add $t0, $t0, $t1
	sw $t0, -11116($fp)
	lw $t0, -11116($fp)
	lw $t1, 0($t0)
	sw $t1, -11120($fp)
	lw $t0, -11120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8500
	sw $t0, -11124($fp)
	li $t0, 4
	sw $t0, -11128($fp)
	li $t0, 4
	lw $t1, -11128($fp)
	mul $t0, $t0, $t1
	sw $t0, -11132($fp)
	lw $t0, -11132($fp)
	lw $t1, -11124($fp)
	add $t0, $t0, $t1
	sw $t0, -11136($fp)
	lw $t0, -11136($fp)
	lw $t1, 0($t0)
	sw $t1, -11140($fp)
	lw $t0, -11140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8500
	sw $t0, -11144($fp)
	li $t0, 5
	sw $t0, -11148($fp)
	li $t0, 4
	lw $t1, -11148($fp)
	mul $t0, $t0, $t1
	sw $t0, -11152($fp)
	lw $t0, -11152($fp)
	lw $t1, -11144($fp)
	add $t0, $t0, $t1
	sw $t0, -11156($fp)
	lw $t0, -11156($fp)
	lw $t1, 0($t0)
	sw $t1, -11160($fp)
	lw $t0, -11160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8836($fp)
	sw $t0, -11164($fp)
	lw $t0, -11164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8848($fp)
	sw $t0, -11168($fp)
	lw $t0, -11168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8860($fp)
	sw $t0, -11172($fp)
	lw $t0, -11172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8872($fp)
	sw $t0, -11176($fp)
	lw $t0, -11176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8884($fp)
	sw $t0, -11180($fp)
	lw $t0, -11180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8896($fp)
	sw $t0, -11184($fp)
	lw $t0, -11184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8540
	sw $t0, -11188($fp)
	li $t0, 0
	sw $t0, -11192($fp)
	li $t0, 4
	lw $t1, -11192($fp)
	mul $t0, $t0, $t1
	sw $t0, -11196($fp)
	lw $t0, -11196($fp)
	lw $t1, -11188($fp)
	add $t0, $t0, $t1
	sw $t0, -11200($fp)
	lw $t0, -11200($fp)
	lw $t1, 0($t0)
	sw $t1, -11204($fp)
	lw $t0, -11204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8540
	sw $t0, -11208($fp)
	li $t0, 1
	sw $t0, -11212($fp)
	li $t0, 4
	lw $t1, -11212($fp)
	mul $t0, $t0, $t1
	sw $t0, -11216($fp)
	lw $t0, -11216($fp)
	lw $t1, -11208($fp)
	add $t0, $t0, $t1
	sw $t0, -11220($fp)
	lw $t0, -11220($fp)
	lw $t1, 0($t0)
	sw $t1, -11224($fp)
	lw $t0, -11224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8540
	sw $t0, -11228($fp)
	li $t0, 2
	sw $t0, -11232($fp)
	li $t0, 4
	lw $t1, -11232($fp)
	mul $t0, $t0, $t1
	sw $t0, -11236($fp)
	lw $t0, -11236($fp)
	lw $t1, -11228($fp)
	add $t0, $t0, $t1
	sw $t0, -11240($fp)
	lw $t0, -11240($fp)
	lw $t1, 0($t0)
	sw $t1, -11244($fp)
	lw $t0, -11244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8540
	sw $t0, -11248($fp)
	li $t0, 3
	sw $t0, -11252($fp)
	li $t0, 4
	lw $t1, -11252($fp)
	mul $t0, $t0, $t1
	sw $t0, -11256($fp)
	lw $t0, -11256($fp)
	lw $t1, -11248($fp)
	add $t0, $t0, $t1
	sw $t0, -11260($fp)
	lw $t0, -11260($fp)
	lw $t1, 0($t0)
	sw $t1, -11264($fp)
	lw $t0, -11264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8540
	sw $t0, -11268($fp)
	li $t0, 4
	sw $t0, -11272($fp)
	li $t0, 4
	lw $t1, -11272($fp)
	mul $t0, $t0, $t1
	sw $t0, -11276($fp)
	lw $t0, -11276($fp)
	lw $t1, -11268($fp)
	add $t0, $t0, $t1
	sw $t0, -11280($fp)
	lw $t0, -11280($fp)
	lw $t1, 0($t0)
	sw $t1, -11284($fp)
	lw $t0, -11284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8540
	sw $t0, -11288($fp)
	li $t0, 5
	sw $t0, -11292($fp)
	li $t0, 4
	lw $t1, -11292($fp)
	mul $t0, $t0, $t1
	sw $t0, -11296($fp)
	lw $t0, -11296($fp)
	lw $t1, -11288($fp)
	add $t0, $t0, $t1
	sw $t0, -11300($fp)
	lw $t0, -11300($fp)
	lw $t1, 0($t0)
	sw $t1, -11304($fp)
	lw $t0, -11304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8540
	sw $t0, -11308($fp)
	li $t0, 6
	sw $t0, -11312($fp)
	li $t0, 4
	lw $t1, -11312($fp)
	mul $t0, $t0, $t1
	sw $t0, -11316($fp)
	lw $t0, -11316($fp)
	lw $t1, -11308($fp)
	add $t0, $t0, $t1
	sw $t0, -11320($fp)
	lw $t0, -11320($fp)
	lw $t1, 0($t0)
	sw $t1, -11324($fp)
	lw $t0, -11324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8540
	sw $t0, -11328($fp)
	li $t0, 7
	sw $t0, -11332($fp)
	li $t0, 4
	lw $t1, -11332($fp)
	mul $t0, $t0, $t1
	sw $t0, -11336($fp)
	lw $t0, -11336($fp)
	lw $t1, -11328($fp)
	add $t0, $t0, $t1
	sw $t0, -11340($fp)
	lw $t0, -11340($fp)
	lw $t1, 0($t0)
	sw $t1, -11344($fp)
	lw $t0, -11344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8540
	sw $t0, -11348($fp)
	li $t0, 8
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
	lw $t0, -11364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8540
	sw $t0, -11368($fp)
	li $t0, 9
	sw $t0, -11372($fp)
	li $t0, 4
	lw $t1, -11372($fp)
	mul $t0, $t0, $t1
	sw $t0, -11376($fp)
	lw $t0, -11376($fp)
	lw $t1, -11368($fp)
	add $t0, $t0, $t1
	sw $t0, -11380($fp)
	lw $t0, -11380($fp)
	lw $t1, 0($t0)
	sw $t1, -11384($fp)
	lw $t0, -11384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9148($fp)
	sw $t0, -11388($fp)
	lw $t0, -11388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9160($fp)
	sw $t0, -11392($fp)
	lw $t0, -11392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9172($fp)
	sw $t0, -11396($fp)
	lw $t0, -11396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9184($fp)
	sw $t0, -11400($fp)
	lw $t0, -11400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8576
	sw $t0, -11404($fp)
	li $t0, 0
	sw $t0, -11408($fp)
	li $t0, 4
	lw $t1, -11408($fp)
	mul $t0, $t0, $t1
	sw $t0, -11412($fp)
	lw $t0, -11412($fp)
	lw $t1, -11404($fp)
	add $t0, $t0, $t1
	sw $t0, -11416($fp)
	lw $t0, -11416($fp)
	lw $t1, 0($t0)
	sw $t1, -11420($fp)
	lw $t0, -11420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8576
	sw $t0, -11424($fp)
	li $t0, 1
	sw $t0, -11428($fp)
	li $t0, 4
	lw $t1, -11428($fp)
	mul $t0, $t0, $t1
	sw $t0, -11432($fp)
	lw $t0, -11432($fp)
	lw $t1, -11424($fp)
	add $t0, $t0, $t1
	sw $t0, -11436($fp)
	lw $t0, -11436($fp)
	lw $t1, 0($t0)
	sw $t1, -11440($fp)
	lw $t0, -11440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8576
	sw $t0, -11444($fp)
	li $t0, 2
	sw $t0, -11448($fp)
	li $t0, 4
	lw $t1, -11448($fp)
	mul $t0, $t0, $t1
	sw $t0, -11452($fp)
	lw $t0, -11452($fp)
	lw $t1, -11444($fp)
	add $t0, $t0, $t1
	sw $t0, -11456($fp)
	lw $t0, -11456($fp)
	lw $t1, 0($t0)
	sw $t1, -11460($fp)
	lw $t0, -11460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8576
	sw $t0, -11464($fp)
	li $t0, 3
	sw $t0, -11468($fp)
	li $t0, 4
	lw $t1, -11468($fp)
	mul $t0, $t0, $t1
	sw $t0, -11472($fp)
	lw $t0, -11472($fp)
	lw $t1, -11464($fp)
	add $t0, $t0, $t1
	sw $t0, -11476($fp)
	lw $t0, -11476($fp)
	lw $t1, 0($t0)
	sw $t1, -11480($fp)
	lw $t0, -11480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8576
	sw $t0, -11484($fp)
	li $t0, 4
	sw $t0, -11488($fp)
	li $t0, 4
	lw $t1, -11488($fp)
	mul $t0, $t0, $t1
	sw $t0, -11492($fp)
	lw $t0, -11492($fp)
	lw $t1, -11484($fp)
	add $t0, $t0, $t1
	sw $t0, -11496($fp)
	lw $t0, -11496($fp)
	lw $t1, 0($t0)
	sw $t1, -11500($fp)
	lw $t0, -11500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8576
	sw $t0, -11504($fp)
	li $t0, 5
	sw $t0, -11508($fp)
	li $t0, 4
	lw $t1, -11508($fp)
	mul $t0, $t0, $t1
	sw $t0, -11512($fp)
	lw $t0, -11512($fp)
	lw $t1, -11504($fp)
	add $t0, $t0, $t1
	sw $t0, -11516($fp)
	lw $t0, -11516($fp)
	lw $t1, 0($t0)
	sw $t1, -11520($fp)
	lw $t0, -11520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8576
	sw $t0, -11524($fp)
	li $t0, 6
	sw $t0, -11528($fp)
	li $t0, 4
	lw $t1, -11528($fp)
	mul $t0, $t0, $t1
	sw $t0, -11532($fp)
	lw $t0, -11532($fp)
	lw $t1, -11524($fp)
	add $t0, $t0, $t1
	sw $t0, -11536($fp)
	lw $t0, -11536($fp)
	lw $t1, 0($t0)
	sw $t1, -11540($fp)
	lw $t0, -11540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8576
	sw $t0, -11544($fp)
	li $t0, 7
	sw $t0, -11548($fp)
	li $t0, 4
	lw $t1, -11548($fp)
	mul $t0, $t0, $t1
	sw $t0, -11552($fp)
	lw $t0, -11552($fp)
	lw $t1, -11544($fp)
	add $t0, $t0, $t1
	sw $t0, -11556($fp)
	lw $t0, -11556($fp)
	lw $t1, 0($t0)
	sw $t1, -11560($fp)
	lw $t0, -11560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8576
	sw $t0, -11564($fp)
	li $t0, 8
	sw $t0, -11568($fp)
	li $t0, 4
	lw $t1, -11568($fp)
	mul $t0, $t0, $t1
	sw $t0, -11572($fp)
	lw $t0, -11572($fp)
	lw $t1, -11564($fp)
	add $t0, $t0, $t1
	sw $t0, -11576($fp)
	lw $t0, -11576($fp)
	lw $t1, 0($t0)
	sw $t1, -11580($fp)
	lw $t0, -11580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9412($fp)
	sw $t0, -11584($fp)
	lw $t0, -11584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9424($fp)
	sw $t0, -11588($fp)
	lw $t0, -11588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9436($fp)
	sw $t0, -11592($fp)
	lw $t0, -11592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9448($fp)
	sw $t0, -11596($fp)
	lw $t0, -11596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9460($fp)
	sw $t0, -11600($fp)
	lw $t0, -11600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9472($fp)
	sw $t0, -11604($fp)
	lw $t0, -11604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9484($fp)
	sw $t0, -11608($fp)
	lw $t0, -11608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8600
	sw $t0, -11612($fp)
	li $t0, 0
	sw $t0, -11616($fp)
	li $t0, 4
	lw $t1, -11616($fp)
	mul $t0, $t0, $t1
	sw $t0, -11620($fp)
	lw $t0, -11620($fp)
	lw $t1, -11612($fp)
	add $t0, $t0, $t1
	sw $t0, -11624($fp)
	lw $t0, -11624($fp)
	lw $t1, 0($t0)
	sw $t1, -11628($fp)
	lw $t0, -11628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8600
	sw $t0, -11632($fp)
	li $t0, 1
	sw $t0, -11636($fp)
	li $t0, 4
	lw $t1, -11636($fp)
	mul $t0, $t0, $t1
	sw $t0, -11640($fp)
	lw $t0, -11640($fp)
	lw $t1, -11632($fp)
	add $t0, $t0, $t1
	sw $t0, -11644($fp)
	lw $t0, -11644($fp)
	lw $t1, 0($t0)
	sw $t1, -11648($fp)
	lw $t0, -11648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8600
	sw $t0, -11652($fp)
	li $t0, 2
	sw $t0, -11656($fp)
	li $t0, 4
	lw $t1, -11656($fp)
	mul $t0, $t0, $t1
	sw $t0, -11660($fp)
	lw $t0, -11660($fp)
	lw $t1, -11652($fp)
	add $t0, $t0, $t1
	sw $t0, -11664($fp)
	lw $t0, -11664($fp)
	lw $t1, 0($t0)
	sw $t1, -11668($fp)
	lw $t0, -11668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8600
	sw $t0, -11672($fp)
	li $t0, 3
	sw $t0, -11676($fp)
	li $t0, 4
	lw $t1, -11676($fp)
	mul $t0, $t0, $t1
	sw $t0, -11680($fp)
	lw $t0, -11680($fp)
	lw $t1, -11672($fp)
	add $t0, $t0, $t1
	sw $t0, -11684($fp)
	lw $t0, -11684($fp)
	lw $t1, 0($t0)
	sw $t1, -11688($fp)
	lw $t0, -11688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8600
	sw $t0, -11692($fp)
	li $t0, 4
	sw $t0, -11696($fp)
	li $t0, 4
	lw $t1, -11696($fp)
	mul $t0, $t0, $t1
	sw $t0, -11700($fp)
	lw $t0, -11700($fp)
	lw $t1, -11692($fp)
	add $t0, $t0, $t1
	sw $t0, -11704($fp)
	lw $t0, -11704($fp)
	lw $t1, 0($t0)
	sw $t1, -11708($fp)
	lw $t0, -11708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8600
	sw $t0, -11712($fp)
	li $t0, 5
	sw $t0, -11716($fp)
	li $t0, 4
	lw $t1, -11716($fp)
	mul $t0, $t0, $t1
	sw $t0, -11720($fp)
	lw $t0, -11720($fp)
	lw $t1, -11712($fp)
	add $t0, $t0, $t1
	sw $t0, -11724($fp)
	lw $t0, -11724($fp)
	lw $t1, 0($t0)
	sw $t1, -11728($fp)
	lw $t0, -11728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8636
	sw $t0, -11732($fp)
	li $t0, 0
	sw $t0, -11736($fp)
	li $t0, 4
	lw $t1, -11736($fp)
	mul $t0, $t0, $t1
	sw $t0, -11740($fp)
	lw $t0, -11740($fp)
	lw $t1, -11732($fp)
	add $t0, $t0, $t1
	sw $t0, -11744($fp)
	lw $t0, -11744($fp)
	lw $t1, 0($t0)
	sw $t1, -11748($fp)
	lw $t0, -11748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8636
	sw $t0, -11752($fp)
	li $t0, 1
	sw $t0, -11756($fp)
	li $t0, 4
	lw $t1, -11756($fp)
	mul $t0, $t0, $t1
	sw $t0, -11760($fp)
	lw $t0, -11760($fp)
	lw $t1, -11752($fp)
	add $t0, $t0, $t1
	sw $t0, -11764($fp)
	lw $t0, -11764($fp)
	lw $t1, 0($t0)
	sw $t1, -11768($fp)
	lw $t0, -11768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8636
	sw $t0, -11772($fp)
	li $t0, 2
	sw $t0, -11776($fp)
	li $t0, 4
	lw $t1, -11776($fp)
	mul $t0, $t0, $t1
	sw $t0, -11780($fp)
	lw $t0, -11780($fp)
	lw $t1, -11772($fp)
	add $t0, $t0, $t1
	sw $t0, -11784($fp)
	lw $t0, -11784($fp)
	lw $t1, 0($t0)
	sw $t1, -11788($fp)
	lw $t0, -11788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8636
	sw $t0, -11792($fp)
	li $t0, 3
	sw $t0, -11796($fp)
	li $t0, 4
	lw $t1, -11796($fp)
	mul $t0, $t0, $t1
	sw $t0, -11800($fp)
	lw $t0, -11800($fp)
	lw $t1, -11792($fp)
	add $t0, $t0, $t1
	sw $t0, -11804($fp)
	lw $t0, -11804($fp)
	lw $t1, 0($t0)
	sw $t1, -11808($fp)
	lw $t0, -11808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8636
	sw $t0, -11812($fp)
	li $t0, 4
	sw $t0, -11816($fp)
	li $t0, 4
	lw $t1, -11816($fp)
	mul $t0, $t0, $t1
	sw $t0, -11820($fp)
	lw $t0, -11820($fp)
	lw $t1, -11812($fp)
	add $t0, $t0, $t1
	sw $t0, -11824($fp)
	lw $t0, -11824($fp)
	lw $t1, 0($t0)
	sw $t1, -11828($fp)
	lw $t0, -11828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8636
	sw $t0, -11832($fp)
	li $t0, 5
	sw $t0, -11836($fp)
	li $t0, 4
	lw $t1, -11836($fp)
	mul $t0, $t0, $t1
	sw $t0, -11840($fp)
	lw $t0, -11840($fp)
	lw $t1, -11832($fp)
	add $t0, $t0, $t1
	sw $t0, -11844($fp)
	lw $t0, -11844($fp)
	lw $t1, 0($t0)
	sw $t1, -11848($fp)
	lw $t0, -11848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8636
	sw $t0, -11852($fp)
	li $t0, 6
	sw $t0, -11856($fp)
	li $t0, 4
	lw $t1, -11856($fp)
	mul $t0, $t0, $t1
	sw $t0, -11860($fp)
	lw $t0, -11860($fp)
	lw $t1, -11852($fp)
	add $t0, $t0, $t1
	sw $t0, -11864($fp)
	lw $t0, -11864($fp)
	lw $t1, 0($t0)
	sw $t1, -11868($fp)
	lw $t0, -11868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8636
	sw $t0, -11872($fp)
	li $t0, 7
	sw $t0, -11876($fp)
	li $t0, 4
	lw $t1, -11876($fp)
	mul $t0, $t0, $t1
	sw $t0, -11880($fp)
	lw $t0, -11880($fp)
	lw $t1, -11872($fp)
	add $t0, $t0, $t1
	sw $t0, -11884($fp)
	lw $t0, -11884($fp)
	lw $t1, 0($t0)
	sw $t1, -11888($fp)
	lw $t0, -11888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8636
	sw $t0, -11892($fp)
	li $t0, 8
	sw $t0, -11896($fp)
	li $t0, 4
	lw $t1, -11896($fp)
	mul $t0, $t0, $t1
	sw $t0, -11900($fp)
	lw $t0, -11900($fp)
	lw $t1, -11892($fp)
	add $t0, $t0, $t1
	sw $t0, -11904($fp)
	lw $t0, -11904($fp)
	lw $t1, 0($t0)
	sw $t1, -11908($fp)
	lw $t0, -11908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9856($fp)
	sw $t0, -11912($fp)
	lw $t0, -11912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9868($fp)
	sw $t0, -11916($fp)
	lw $t0, -11916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9880($fp)
	sw $t0, -11920($fp)
	lw $t0, -11920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9892($fp)
	sw $t0, -11924($fp)
	lw $t0, -11924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9904($fp)
	sw $t0, -11928($fp)
	lw $t0, -11928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9916($fp)
	sw $t0, -11932($fp)
	lw $t0, -11932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9928($fp)
	sw $t0, -11936($fp)
	lw $t0, -11936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -9940($fp)
	sw $t0, -11940($fp)
	lw $t0, -11940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8648
	sw $t0, -11944($fp)
	li $t0, 0
	sw $t0, -11948($fp)
	li $t0, 4
	lw $t1, -11948($fp)
	mul $t0, $t0, $t1
	sw $t0, -11952($fp)
	lw $t0, -11952($fp)
	lw $t1, -11944($fp)
	add $t0, $t0, $t1
	sw $t0, -11956($fp)
	lw $t0, -11956($fp)
	lw $t1, 0($t0)
	sw $t1, -11960($fp)
	lw $t0, -11960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8648
	sw $t0, -11964($fp)
	li $t0, 1
	sw $t0, -11968($fp)
	li $t0, 4
	lw $t1, -11968($fp)
	mul $t0, $t0, $t1
	sw $t0, -11972($fp)
	lw $t0, -11972($fp)
	lw $t1, -11964($fp)
	add $t0, $t0, $t1
	sw $t0, -11976($fp)
	lw $t0, -11976($fp)
	lw $t1, 0($t0)
	sw $t1, -11980($fp)
	lw $t0, -11980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8648
	sw $t0, -11984($fp)
	li $t0, 2
	sw $t0, -11988($fp)
	li $t0, 4
	lw $t1, -11988($fp)
	mul $t0, $t0, $t1
	sw $t0, -11992($fp)
	lw $t0, -11992($fp)
	lw $t1, -11984($fp)
	add $t0, $t0, $t1
	sw $t0, -11996($fp)
	lw $t0, -11996($fp)
	lw $t1, 0($t0)
	sw $t1, -12000($fp)
	lw $t0, -12000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10024($fp)
	sw $t0, -12004($fp)
	lw $t0, -12004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10036($fp)
	sw $t0, -12008($fp)
	lw $t0, -12008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10048($fp)
	sw $t0, -12012($fp)
	lw $t0, -12012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10060($fp)
	sw $t0, -12016($fp)
	lw $t0, -12016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10072($fp)
	sw $t0, -12020($fp)
	lw $t0, -12020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10084($fp)
	sw $t0, -12024($fp)
	lw $t0, -12024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8660
	sw $t0, -12028($fp)
	li $t0, 0
	sw $t0, -12032($fp)
	li $t0, 4
	lw $t1, -12032($fp)
	mul $t0, $t0, $t1
	sw $t0, -12036($fp)
	lw $t0, -12036($fp)
	lw $t1, -12028($fp)
	add $t0, $t0, $t1
	sw $t0, -12040($fp)
	lw $t0, -12040($fp)
	lw $t1, 0($t0)
	sw $t1, -12044($fp)
	lw $t0, -12044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8660
	sw $t0, -12048($fp)
	li $t0, 1
	sw $t0, -12052($fp)
	li $t0, 4
	lw $t1, -12052($fp)
	mul $t0, $t0, $t1
	sw $t0, -12056($fp)
	lw $t0, -12056($fp)
	lw $t1, -12048($fp)
	add $t0, $t0, $t1
	sw $t0, -12060($fp)
	lw $t0, -12060($fp)
	lw $t1, 0($t0)
	sw $t1, -12064($fp)
	lw $t0, -12064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8660
	sw $t0, -12068($fp)
	li $t0, 2
	sw $t0, -12072($fp)
	li $t0, 4
	lw $t1, -12072($fp)
	mul $t0, $t0, $t1
	sw $t0, -12076($fp)
	lw $t0, -12076($fp)
	lw $t1, -12068($fp)
	add $t0, $t0, $t1
	sw $t0, -12080($fp)
	lw $t0, -12080($fp)
	lw $t1, 0($t0)
	sw $t1, -12084($fp)
	lw $t0, -12084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10168($fp)
	sw $t0, -12088($fp)
	lw $t0, -12088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10180($fp)
	sw $t0, -12092($fp)
	lw $t0, -12092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10192($fp)
	sw $t0, -12096($fp)
	lw $t0, -12096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10204($fp)
	sw $t0, -12100($fp)
	lw $t0, -12100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10216($fp)
	sw $t0, -12104($fp)
	lw $t0, -12104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10228($fp)
	sw $t0, -12108($fp)
	lw $t0, -12108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10240($fp)
	sw $t0, -12112($fp)
	lw $t0, -12112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10252($fp)
	sw $t0, -12116($fp)
	lw $t0, -12116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10264($fp)
	sw $t0, -12120($fp)
	lw $t0, -12120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10276($fp)
	sw $t0, -12124($fp)
	lw $t0, -12124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8672
	sw $t0, -12128($fp)
	li $t0, 0
	sw $t0, -12132($fp)
	li $t0, 4
	lw $t1, -12132($fp)
	mul $t0, $t0, $t1
	sw $t0, -12136($fp)
	lw $t0, -12136($fp)
	lw $t1, -12128($fp)
	add $t0, $t0, $t1
	sw $t0, -12140($fp)
	lw $t0, -12140($fp)
	lw $t1, 0($t0)
	sw $t1, -12144($fp)
	lw $t0, -12144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8672
	sw $t0, -12148($fp)
	li $t0, 1
	sw $t0, -12152($fp)
	li $t0, 4
	lw $t1, -12152($fp)
	mul $t0, $t0, $t1
	sw $t0, -12156($fp)
	lw $t0, -12156($fp)
	lw $t1, -12148($fp)
	add $t0, $t0, $t1
	sw $t0, -12160($fp)
	lw $t0, -12160($fp)
	lw $t1, 0($t0)
	sw $t1, -12164($fp)
	lw $t0, -12164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8672
	sw $t0, -12168($fp)
	li $t0, 2
	sw $t0, -12172($fp)
	li $t0, 4
	lw $t1, -12172($fp)
	mul $t0, $t0, $t1
	sw $t0, -12176($fp)
	lw $t0, -12176($fp)
	lw $t1, -12168($fp)
	add $t0, $t0, $t1
	sw $t0, -12180($fp)
	lw $t0, -12180($fp)
	lw $t1, 0($t0)
	sw $t1, -12184($fp)
	lw $t0, -12184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10360($fp)
	sw $t0, -12188($fp)
	lw $t0, -12188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10372($fp)
	sw $t0, -12192($fp)
	lw $t0, -12192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10384($fp)
	sw $t0, -12196($fp)
	lw $t0, -12196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10396($fp)
	sw $t0, -12200($fp)
	lw $t0, -12200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10408($fp)
	sw $t0, -12204($fp)
	lw $t0, -12204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10420($fp)
	sw $t0, -12208($fp)
	lw $t0, -12208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10432($fp)
	sw $t0, -12212($fp)
	lw $t0, -12212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -12216($fp)
	addi $t0, $fp, -200
	sw $t0, -12220($fp)
	li $t0, 0
	sw $t0, -12224($fp)
	lw $t0, -2656($fp)
	sw $t0, -12228($fp)
	lw $t0, -10228($fp)
	sw $t0, -12232($fp)
	lw $t1, -12228($fp)
	lw $t2, -12232($fp)
	blt $t1, $t2, label479
	j label480
label479:
	li $t0, 1
	sw $t0, -12224($fp)
label480:
	li $t0, 4
	lw $t1, -12224($fp)
	mul $t0, $t0, $t1
	sw $t0, -12236($fp)
	lw $t0, -12236($fp)
	lw $t1, -12220($fp)
	add $t0, $t0, $t1
	sw $t0, -12240($fp)
	lw $t0, -12240($fp)
	lw $t1, 0($t0)
	sw $t1, -12244($fp)
	li $t0, 0
	lw $t1, -12244($fp)
	sub $t0, $t0, $t1
	sw $t0, -12248($fp)
	lw $t0, -9892($fp)
	sw $t0, -12252($fp)
	lw $t1, -12248($fp)
	lw $t2, -12252($fp)
	beq $t1, $t2, label477
	j label478
label477:
	li $t0, 1
	sw $t0, -12216($fp)
label478:
	lw $ra, -4($fp)
	lw $v0, -12216($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -5488
	sw $t0, -12256($fp)
	li $t0, 0
	sw $t0, -12260($fp)
	lw $t0, -9856($fp)
	sw $t0, -12264($fp)
	lw $t1, -12264($fp)
	li $t2, 0
	bne $t1, $t2, label486
	j label485
label486:
	li $t0, 42476
	sw $t0, -12268($fp)
	lw $t1, -12268($fp)
	li $t2, 0
	bne $t1, $t2, label484
	j label485
label484:
	li $t0, 1
	sw $t0, -12260($fp)
label485:
	li $t0, 4
	lw $t1, -12260($fp)
	mul $t0, $t0, $t1
	sw $t0, -12272($fp)
	lw $t0, -12272($fp)
	lw $t1, -12256($fp)
	add $t0, $t0, $t1
	sw $t0, -12276($fp)
	lw $t0, -12276($fp)
	lw $t1, 0($t0)
	sw $t1, -12280($fp)
	lw $t1, -12280($fp)
	li $t2, 0
	bne $t1, $t2, label481
	j label482
label481:
	li $t0, 10425
	sw $t0, -12324($fp)
	lw $t0, -12324($fp)
	sw $t0, -12328($fp)
	lw $t0, -12328($fp)
	sw $t0, -12332($fp)
	li $t0, 2359
	sw $t0, -12336($fp)
	addi $t0, $fp, -12320
	sw $t0, -12340($fp)
	li $t0, 0
	sw $t0, -12344($fp)
	lw $t0, -12344($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12348($fp)
	lw $t0, -12340($fp)
	lw $t1, -12348($fp)
	add $t0, $t0, $t1
	sw $t0, -12352($fp)
	lw $t0, -12336($fp)
	lw $t1, -12352($fp)
	sw $t0, 0($t1)
	lw $t0, -12352($fp)
	lw $t1, 0($t0)
	sw $t1, -12356($fp)
	li $t0, 63573
	sw $t0, -12360($fp)
	addi $t0, $fp, -12320
	sw $t0, -12364($fp)
	li $t0, 1
	sw $t0, -12368($fp)
	lw $t0, -12368($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12372($fp)
	lw $t0, -12364($fp)
	lw $t1, -12372($fp)
	add $t0, $t0, $t1
	sw $t0, -12376($fp)
	lw $t0, -12360($fp)
	lw $t1, -12376($fp)
	sw $t0, 0($t1)
	lw $t0, -12376($fp)
	lw $t1, 0($t0)
	sw $t1, -12380($fp)
	li $t0, 48084
	sw $t0, -12384($fp)
	addi $t0, $fp, -12320
	sw $t0, -12388($fp)
	li $t0, 2
	sw $t0, -12392($fp)
	lw $t0, -12392($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12396($fp)
	lw $t0, -12388($fp)
	lw $t1, -12396($fp)
	add $t0, $t0, $t1
	sw $t0, -12400($fp)
	lw $t0, -12384($fp)
	lw $t1, -12400($fp)
	sw $t0, 0($t1)
	lw $t0, -12400($fp)
	lw $t1, 0($t0)
	sw $t1, -12404($fp)
	li $t0, 42337
	sw $t0, -12408($fp)
	addi $t0, $fp, -12320
	sw $t0, -12412($fp)
	li $t0, 3
	sw $t0, -12416($fp)
	lw $t0, -12416($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12420($fp)
	lw $t0, -12412($fp)
	lw $t1, -12420($fp)
	add $t0, $t0, $t1
	sw $t0, -12424($fp)
	lw $t0, -12408($fp)
	lw $t1, -12424($fp)
	sw $t0, 0($t1)
	lw $t0, -12424($fp)
	lw $t1, 0($t0)
	sw $t1, -12428($fp)
	li $t0, 57276
	sw $t0, -12432($fp)
	addi $t0, $fp, -12320
	sw $t0, -12436($fp)
	li $t0, 4
	sw $t0, -12440($fp)
	lw $t0, -12440($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12444($fp)
	lw $t0, -12436($fp)
	lw $t1, -12444($fp)
	add $t0, $t0, $t1
	sw $t0, -12448($fp)
	lw $t0, -12432($fp)
	lw $t1, -12448($fp)
	sw $t0, 0($t1)
	lw $t0, -12448($fp)
	lw $t1, 0($t0)
	sw $t1, -12452($fp)
	li $t0, 44171
	sw $t0, -12456($fp)
	addi $t0, $fp, -12320
	sw $t0, -12460($fp)
	li $t0, 5
	sw $t0, -12464($fp)
	lw $t0, -12464($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12468($fp)
	lw $t0, -12460($fp)
	lw $t1, -12468($fp)
	add $t0, $t0, $t1
	sw $t0, -12472($fp)
	lw $t0, -12456($fp)
	lw $t1, -12472($fp)
	sw $t0, 0($t1)
	lw $t0, -12472($fp)
	lw $t1, 0($t0)
	sw $t1, -12476($fp)
	li $t0, 44810
	sw $t0, -12480($fp)
	addi $t0, $fp, -12320
	sw $t0, -12484($fp)
	li $t0, 6
	sw $t0, -12488($fp)
	lw $t0, -12488($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12492($fp)
	lw $t0, -12484($fp)
	lw $t1, -12492($fp)
	add $t0, $t0, $t1
	sw $t0, -12496($fp)
	lw $t0, -12480($fp)
	lw $t1, -12496($fp)
	sw $t0, 0($t1)
	lw $t0, -12496($fp)
	lw $t1, 0($t0)
	sw $t1, -12500($fp)
	li $t0, 44804
	sw $t0, -12504($fp)
	addi $t0, $fp, -12320
	sw $t0, -12508($fp)
	li $t0, 7
	sw $t0, -12512($fp)
	lw $t0, -12512($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12516($fp)
	lw $t0, -12508($fp)
	lw $t1, -12516($fp)
	add $t0, $t0, $t1
	sw $t0, -12520($fp)
	lw $t0, -12504($fp)
	lw $t1, -12520($fp)
	sw $t0, 0($t1)
	lw $t0, -12520($fp)
	lw $t1, 0($t0)
	sw $t1, -12524($fp)
	li $t0, 47311
	sw $t0, -12528($fp)
	addi $t0, $fp, -12320
	sw $t0, -12532($fp)
	li $t0, 8
	sw $t0, -12536($fp)
	lw $t0, -12536($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12540($fp)
	lw $t0, -12532($fp)
	lw $t1, -12540($fp)
	add $t0, $t0, $t1
	sw $t0, -12544($fp)
	lw $t0, -12528($fp)
	lw $t1, -12544($fp)
	sw $t0, 0($t1)
	lw $t0, -12544($fp)
	lw $t1, 0($t0)
	sw $t1, -12548($fp)
	li $t0, 39454
	sw $t0, -12552($fp)
	addi $t0, $fp, -12320
	sw $t0, -12556($fp)
	li $t0, 9
	sw $t0, -12560($fp)
	lw $t0, -12560($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12564($fp)
	lw $t0, -12556($fp)
	lw $t1, -12564($fp)
	add $t0, $t0, $t1
	sw $t0, -12568($fp)
	lw $t0, -12552($fp)
	lw $t1, -12568($fp)
	sw $t0, 0($t1)
	lw $t0, -12568($fp)
	lw $t1, 0($t0)
	sw $t1, -12572($fp)
	li $t0, 57234
	sw $t0, -12576($fp)
	lw $t0, -12576($fp)
	sw $t0, -12580($fp)
	lw $t0, -12580($fp)
	sw $t0, -12584($fp)
	li $t0, 12365
	sw $t0, -12588($fp)
	lw $t0, -12588($fp)
	sw $t0, -12592($fp)
	lw $t0, -12592($fp)
	sw $t0, -12596($fp)
	li $t0, 49333
	sw $t0, -12600($fp)
	lw $t0, -12600($fp)
	sw $t0, -12604($fp)
	lw $t0, -12604($fp)
	sw $t0, -12608($fp)
	li $t0, 885
	sw $t0, -12612($fp)
	lw $t0, -12612($fp)
	sw $t0, -12616($fp)
	lw $t0, -12616($fp)
	sw $t0, -12620($fp)
	li $t0, 42039
	sw $t0, -12624($fp)
	lw $t0, -12624($fp)
	sw $t0, -12628($fp)
	lw $t0, -12628($fp)
	sw $t0, -12632($fp)
	li $t0, 0
	sw $t0, -12636($fp)
	li $t0, 0
	sw $t0, -12640($fp)
	addi $t0, $fp, -5488
	sw $t0, -12644($fp)
	li $t0, 6
	sw $t0, -12648($fp)
	li $t0, 4
	lw $t1, -12648($fp)
	mul $t0, $t0, $t1
	sw $t0, -12652($fp)
	lw $t0, -12652($fp)
	lw $t1, -12644($fp)
	add $t0, $t0, $t1
	sw $t0, -12656($fp)
	lw $t0, -12656($fp)
	lw $t1, 0($t0)
	sw $t1, -12660($fp)
	lw $t1, -12660($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label490
label490:
	li $t0, 1
	sw $t0, -12640($fp)
label491:
	li $t0, 0
	lw $t1, -12640($fp)
	sub $t0, $t0, $t1
	sw $t0, -12664($fp)
	lw $t0, -1816($fp)
	sw $t0, -12668($fp)
	lw $t0, -12664($fp)
	lw $t1, -12668($fp)
	add $t0, $t0, $t1
	sw $t0, -12672($fp)
	lw $t1, -12672($fp)
	li $t2, 0
	bne $t1, $t2, label487
	j label489
label489:
	li $t0, 7879
	sw $t0, -12676($fp)
	lw $t1, -12676($fp)
	li $t2, 0
	bne $t1, $t2, label493
	j label488
label493:
	lw $t0, -9904($fp)
	sw $t0, -12680($fp)
	lw $t1, -12680($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label488
label492:
	lw $t0, -10192($fp)
	sw $t0, -12684($fp)
	lw $t1, -12684($fp)
	li $t2, 0
	bne $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -12636($fp)
label488:
	lw $ra, -4($fp)
	lw $v0, -12636($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -12688($fp)
	li $t0, 0
	sw $t0, -12692($fp)
	lw $t0, -2116($fp)
	sw $t0, -12696($fp)
	lw $t1, -12696($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label497
label496:
	li $t0, 1
	sw $t0, -12692($fp)
label497:
	lw $t0, -6040($fp)
	sw $t0, -12700($fp)
	lw $t1, -12692($fp)
	lw $t2, -12700($fp)
	bge $t1, $t2, label494
	j label495
label494:
	li $t0, 1
	sw $t0, -12688($fp)
label495:
	lw $t0, -10252($fp)
	sw $t0, -12704($fp)
	lw $t1, -12704($fp)
	li $t2, 0
	bne $t1, $t2, label498
	j label499
label498:
	addi $t0, $fp, -240
	sw $t0, -12708($fp)
	li $t0, 0
	sw $t0, -12712($fp)
	addi $t0, $fp, -280
	sw $t0, -12716($fp)
	li $t0, 1
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
	li $t0, 0
	lw $t1, -12732($fp)
	sub $t0, $t0, $t1
	sw $t0, -12736($fp)
	lw $t1, -12736($fp)
	li $t2, 0
	bne $t1, $t2, label506
	j label505
label506:
	li $t0, 38964
	sw $t0, -12740($fp)
	lw $t1, -12740($fp)
	li $t2, 0
	bne $t1, $t2, label505
	j label504
label504:
	li $t0, 1
	sw $t0, -12712($fp)
label505:
	li $t0, 4
	lw $t1, -12712($fp)
	mul $t0, $t0, $t1
	sw $t0, -12744($fp)
	lw $t0, -12744($fp)
	lw $t1, -12708($fp)
	add $t0, $t0, $t1
	sw $t0, -12748($fp)
	lw $t0, -12748($fp)
	lw $t1, 0($t0)
	sw $t1, -12752($fp)
	lw $t1, -12752($fp)
	li $t2, 0
	bne $t1, $t2, label501
	j label502
label501:
	li $t0, 0
	sw $t0, -12756($fp)
	li $t0, 0
	sw $t0, -12760($fp)
	li $t0, 60984
	sw $t0, -12764($fp)
	lw $t1, -12764($fp)
	li $t2, 0
	bne $t1, $t2, label510
	j label509
label509:
	li $t0, 1
	sw $t0, -12760($fp)
label510:
	li $t0, 25889
	sw $t0, -12768($fp)
	lw $t0, -12760($fp)
	lw $t1, -12768($fp)
	add $t0, $t0, $t1
	sw $t0, -12772($fp)
	lw $t0, -2080($fp)
	sw $t0, -12776($fp)
	li $t0, 45200
	sw $t0, -12780($fp)
	lw $t0, -12776($fp)
	lw $t1, -12780($fp)
	sub $t0, $t0, $t1
	sw $t0, -12784($fp)
	lw $t0, -2068($fp)
	sw $t0, -12788($fp)
	lw $t0, -12788($fp)
	sw $t0, -6064($fp)
	lw $t0, -6064($fp)
	sw $t0, -12792($fp)
	li $t0, 53306
	sw $t0, -12796($fp)
	lw $t0, -6052($fp)
	sw $t0, -12800($fp)
	lw $t0, -12796($fp)
	lw $t1, -12800($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12804($fp)
	li $t0, 32883
	sw $t0, -12808($fp)
	lw $t0, -12804($fp)
	lw $t1, -12808($fp)
	mul $t0, $t0, $t1
	sw $t0, -12812($fp)
	addi $sp, $sp, -4
	lw $t0, -12772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12812($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12816($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -12820($fp)
	li $t0, 21838
	sw $t0, -12824($fp)
	li $t0, 0
	lw $t1, -12824($fp)
	sub $t0, $t0, $t1
	sw $t0, -12828($fp)
	lw $t1, -12828($fp)
	li $t2, 0
	bne $t1, $t2, label512
	j label511
label511:
	li $t0, 1
	sw $t0, -12820($fp)
label512:
	lw $t0, -9916($fp)
	sw $t0, -12832($fp)
	lw $t0, -1288($fp)
	sw $t0, -12836($fp)
	lw $t0, -12832($fp)
	lw $t1, -12836($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12840($fp)
	lw $t0, -12820($fp)
	lw $t1, -12840($fp)
	add $t0, $t0, $t1
	sw $t0, -12844($fp)
	lw $t1, -12816($fp)
	lw $t2, -12844($fp)
	bge $t1, $t2, label507
	j label508
label507:
	li $t0, 1
	sw $t0, -12756($fp)
label508:
	lw $ra, -4($fp)
	lw $v0, -12756($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label503
label502:
	li $t0, 0
	sw $t0, -12848($fp)
	li $t0, 30639
	sw $t0, -12852($fp)
	lw $t1, -12852($fp)
	li $t2, 0
	bne $t1, $t2, label514
	j label513
label513:
	li $t0, 1
	sw $t0, -12848($fp)
label514:
	lw $t0, -9148($fp)
	sw $t0, -12856($fp)
	li $t0, 0
	lw $t1, -12856($fp)
	sub $t0, $t0, $t1
	sw $t0, -12860($fp)
	lw $t0, -12848($fp)
	lw $t1, -12860($fp)
	sub $t0, $t0, $t1
	sw $t0, -12864($fp)
label503:
	j label500
label499:
	li $t0, 46928
	sw $t0, -12868($fp)
	lw $t1, -12868($fp)
	li $t2, 0
	bne $t1, $t2, label515
	j label516
label515:
	li $t0, 0
	sw $t0, -12872($fp)
	li $t0, 0
	sw $t0, -12876($fp)
	lw $t0, -10372($fp)
	sw $t0, -12880($fp)
	addi $t0, $fp, -64
	sw $t0, -12884($fp)
	lw $t0, -12628($fp)
	sw $t0, -12888($fp)
	li $t0, 4
	lw $t1, -12888($fp)
	mul $t0, $t0, $t1
	sw $t0, -12892($fp)
	lw $t0, -12892($fp)
	lw $t1, -12884($fp)
	add $t0, $t0, $t1
	sw $t0, -12896($fp)
	lw $t0, -12896($fp)
	lw $t1, 0($t0)
	sw $t1, -12900($fp)
	li $t0, 41064
	sw $t0, -12904($fp)
	lw $t0, -12900($fp)
	lw $t1, -12904($fp)
	sub $t0, $t0, $t1
	sw $t0, -12908($fp)
	li $t0, 0
	sw $t0, -12912($fp)
	addi $t0, $fp, -200
	sw $t0, -12916($fp)
	lw $t0, -1372($fp)
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
	li $t0, 64314
	sw $t0, -12936($fp)
	lw $t1, -12932($fp)
	lw $t2, -12936($fp)
	beq $t1, $t2, label522
	j label523
label522:
	li $t0, 1
	sw $t0, -12912($fp)
label523:
	lw $t0, -2092($fp)
	sw $t0, -12940($fp)
	lw $t0, -12940($fp)
	sw $t0, -10180($fp)
	lw $t0, -10180($fp)
	sw $t0, -12944($fp)
	addi $sp, $sp, -4
	lw $t0, -12880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12944($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12948($fp)
	addi $sp, $sp, 20
	lw $t1, -12948($fp)
	li $t2, 0
	bne $t1, $t2, label521
	j label520
label520:
	li $t0, 1
	sw $t0, -12876($fp)
label521:
	addi $t0, $fp, -240
	sw $t0, -12952($fp)
	lw $t0, -6160($fp)
	sw $t0, -12956($fp)
	li $t0, 4
	lw $t1, -12956($fp)
	mul $t0, $t0, $t1
	sw $t0, -12960($fp)
	lw $t0, -12960($fp)
	lw $t1, -12952($fp)
	add $t0, $t0, $t1
	sw $t0, -12964($fp)
	lw $t0, -12964($fp)
	lw $t1, 0($t0)
	sw $t1, -12968($fp)
	lw $t0, -12876($fp)
	lw $t1, -12968($fp)
	add $t0, $t0, $t1
	sw $t0, -12972($fp)
	lw $t0, -2752($fp)
	sw $t0, -12976($fp)
	lw $t1, -12972($fp)
	lw $t2, -12976($fp)
	bne $t1, $t2, label518
	j label519
label518:
	li $t0, 1
	sw $t0, -12872($fp)
label519:
	j label517
label516:
	lw $t0, -2068($fp)
	sw $t0, -12980($fp)
	addi $t0, $fp, -5524
	sw $t0, -12984($fp)
	li $t0, 5
	sw $t0, -12988($fp)
	li $t0, 4
	lw $t1, -12988($fp)
	mul $t0, $t0, $t1
	sw $t0, -12992($fp)
	lw $t0, -12992($fp)
	lw $t1, -12984($fp)
	add $t0, $t0, $t1
	sw $t0, -12996($fp)
	lw $t0, -12996($fp)
	lw $t1, 0($t0)
	sw $t1, -13000($fp)
	lw $t0, -12980($fp)
	lw $t1, -13000($fp)
	mul $t0, $t0, $t1
	sw $t0, -13004($fp)
label517:
label500:
	li $t0, 44817
	sw $t0, -13008($fp)
	li $t0, 0
	lw $t1, -13008($fp)
	sub $t0, $t0, $t1
	sw $t0, -13012($fp)
	addi $t0, $fp, -144
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
	li $t0, 49558
	sw $t0, -13036($fp)
	lw $t0, -13032($fp)
	lw $t1, -13036($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13040($fp)
	li $t0, 2247
	sw $t0, -13044($fp)
	lw $t0, -13044($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -13048($fp)
	li $t0, 26088
	sw $t0, -13052($fp)
	lw $t0, -6700($fp)
	sw $t0, -13056($fp)
	lw $t0, -13052($fp)
	lw $t1, -13056($fp)
	mul $t0, $t0, $t1
	sw $t0, -13060($fp)
	li $t0, 54092
	sw $t0, -13064($fp)
	lw $t0, -13060($fp)
	lw $t1, -13064($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13068($fp)
	addi $sp, $sp, -4
	lw $t0, -13012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13068($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13072($fp)
	addi $sp, $sp, 20
	lw $t0, -2524($fp)
	sw $t0, -13076($fp)
	lw $t0, -13072($fp)
	lw $t1, -13076($fp)
	mul $t0, $t0, $t1
	sw $t0, -13080($fp)
	lw $t0, -2668($fp)
	sw $t0, -13084($fp)
	li $t0, 25058
	sw $t0, -13088($fp)
	lw $t0, -13084($fp)
	lw $t1, -13088($fp)
	mul $t0, $t0, $t1
	sw $t0, -13092($fp)
	li $t0, 0
	lw $t1, -13092($fp)
	sub $t0, $t0, $t1
	sw $t0, -13096($fp)
	lw $t0, -13080($fp)
	lw $t1, -13096($fp)
	add $t0, $t0, $t1
	sw $t0, -13100($fp)
	lw $t0, -2488($fp)
	sw $t0, -13104($fp)
	li $t0, 0
	sw $t0, -13108($fp)
	li $t0, 14534
	sw $t0, -13112($fp)
	li $t0, 46307
	sw $t0, -13116($fp)
	lw $t1, -13112($fp)
	lw $t2, -13116($fp)
	blt $t1, $t2, label527
	j label528
label527:
	li $t0, 1
	sw $t0, -13108($fp)
label528:
	lw $t0, -6712($fp)
	sw $t0, -13120($fp)
	li $t0, 59478
	sw $t0, -13124($fp)
	lw $t0, -13120($fp)
	lw $t1, -13124($fp)
	mul $t0, $t0, $t1
	sw $t0, -13128($fp)
	lw $t0, -10360($fp)
	sw $t0, -13132($fp)
	lw $t0, -13128($fp)
	lw $t1, -13132($fp)
	sub $t0, $t0, $t1
	sw $t0, -13136($fp)
	li $t0, 0
	sw $t0, -13140($fp)
	lw $t0, -5584($fp)
	sw $t0, -13144($fp)
	lw $t1, -13144($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label532
label532:
	li $t0, 38427
	sw $t0, -13148($fp)
	lw $t1, -13148($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label531
label531:
	lw $t0, -9916($fp)
	sw $t0, -13152($fp)
	lw $t1, -13152($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label530
label529:
	li $t0, 1
	sw $t0, -13140($fp)
label530:
	addi $t0, $fp, -332
	sw $t0, -13156($fp)
	li $t0, 4
	sw $t0, -13160($fp)
	li $t0, 4
	lw $t1, -13160($fp)
	mul $t0, $t0, $t1
	sw $t0, -13164($fp)
	lw $t0, -13164($fp)
	lw $t1, -13156($fp)
	add $t0, $t0, $t1
	sw $t0, -13168($fp)
	lw $t0, -13168($fp)
	lw $t1, 0($t0)
	sw $t1, -13172($fp)
	lw $t0, -10384($fp)
	sw $t0, -13176($fp)
	li $t0, 0
	lw $t1, -13176($fp)
	sub $t0, $t0, $t1
	sw $t0, -13180($fp)
	addi $sp, $sp, -4
	lw $t0, -13136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13180($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13184($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -13188($fp)
	lw $t0, -2764($fp)
	sw $t0, -13192($fp)
	lw $t1, -13192($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label536
label536:
	li $t0, 61924
	sw $t0, -13196($fp)
	lw $t1, -13196($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label535
label535:
	lw $t0, -2440($fp)
	sw $t0, -13200($fp)
	lw $t1, -13200($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label534
label533:
	li $t0, 1
	sw $t0, -13188($fp)
label534:
	addi $sp, $sp, -4
	lw $t0, -13104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13188($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13204($fp)
	addi $sp, $sp, 20
	lw $t0, -13100($fp)
	lw $t1, -13204($fp)
	sub $t0, $t0, $t1
	sw $t0, -13208($fp)
	lw $t1, -13208($fp)
	li $t2, 0
	bne $t1, $t2, label524
	j label525
label524:
	addi $t0, $fp, -5456
	sw $t0, -13212($fp)
	addi $t0, $fp, -8500
	sw $t0, -13216($fp)
	li $t0, 4
	sw $t0, -13220($fp)
	li $t0, 4
	lw $t1, -13220($fp)
	mul $t0, $t0, $t1
	sw $t0, -13224($fp)
	lw $t0, -13224($fp)
	lw $t1, -13216($fp)
	add $t0, $t0, $t1
	sw $t0, -13228($fp)
	lw $t0, -13228($fp)
	lw $t1, 0($t0)
	sw $t1, -13232($fp)
	lw $t0, -6076($fp)
	sw $t0, -13236($fp)
	lw $t0, -13232($fp)
	lw $t1, -13236($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13240($fp)
	li $t0, 4
	lw $t1, -13240($fp)
	mul $t0, $t0, $t1
	sw $t0, -13244($fp)
	lw $t0, -13244($fp)
	lw $t1, -13212($fp)
	add $t0, $t0, $t1
	sw $t0, -13248($fp)
	lw $t0, -13248($fp)
	lw $t1, 0($t0)
	sw $t1, -13252($fp)
	li $t0, 19735
	sw $t0, -13256($fp)
	li $t0, 0
	lw $t1, -13256($fp)
	sub $t0, $t0, $t1
	sw $t0, -13260($fp)
	lw $t0, -13252($fp)
	lw $t1, -13260($fp)
	mul $t0, $t0, $t1
	sw $t0, -13264($fp)
	lw $t1, -13264($fp)
	li $t2, 0
	bne $t1, $t2, label537
	j label538
label537:
	li $t0, 61426
	sw $t0, -13268($fp)
	lw $t1, -13268($fp)
	li $t2, 0
	bne $t1, $t2, label540
	j label541
label540:
	li $t0, 0
	sw $t0, -13272($fp)
	lw $t0, -12580($fp)
	sw $t0, -13276($fp)
	lw $t1, -13276($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label547
label549:
	lw $t0, -6100($fp)
	sw $t0, -13280($fp)
	lw $t1, -13280($fp)
	li $t2, 0
	bne $t1, $t2, label548
	j label547
label548:
	lw $t0, -2764($fp)
	sw $t0, -13284($fp)
	lw $t1, -13284($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label547
label546:
	li $t0, 1
	sw $t0, -13272($fp)
label547:
	li $t0, 0
	sw $t0, -13288($fp)
	li $t0, 0
	sw $t0, -13292($fp)
	lw $t0, -6088($fp)
	sw $t0, -13296($fp)
	lw $t1, -13296($fp)
	li $t2, 0
	bne $t1, $t2, label553
	j label552
label552:
	li $t0, 1
	sw $t0, -13292($fp)
label553:
	lw $t0, -3004($fp)
	sw $t0, -13300($fp)
	lw $t1, -13292($fp)
	lw $t2, -13300($fp)
	bne $t1, $t2, label550
	j label551
label550:
	li $t0, 1
	sw $t0, -13288($fp)
label551:
	li $t0, 0
	sw $t0, -13304($fp)
	addi $t0, $fp, -240
	sw $t0, -13308($fp)
	li $t0, 3
	sw $t0, -13312($fp)
	li $t0, 4
	lw $t1, -13312($fp)
	mul $t0, $t0, $t1
	sw $t0, -13316($fp)
	lw $t0, -13316($fp)
	lw $t1, -13308($fp)
	add $t0, $t0, $t1
	sw $t0, -13320($fp)
	lw $t0, -13320($fp)
	lw $t1, 0($t0)
	sw $t1, -13324($fp)
	lw $t0, -10360($fp)
	sw $t0, -13328($fp)
	lw $t1, -13324($fp)
	lw $t2, -13328($fp)
	bge $t1, $t2, label554
	j label555
label554:
	li $t0, 1
	sw $t0, -13304($fp)
label555:
	li $t0, 0
	sw $t0, -13332($fp)
	li $t0, 57419
	sw $t0, -13336($fp)
	li $t0, 0
	lw $t1, -13336($fp)
	sub $t0, $t0, $t1
	sw $t0, -13340($fp)
	li $t0, 64936
	sw $t0, -13344($fp)
	lw $t1, -13340($fp)
	lw $t2, -13344($fp)
	ble $t1, $t2, label556
	j label557
label556:
	li $t0, 1
	sw $t0, -13332($fp)
label557:
	addi $sp, $sp, -4
	lw $t0, -13272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13332($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13348($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -13348($fp)
	sub $t0, $t0, $t1
	sw $t0, -13352($fp)
	lw $t1, -13352($fp)
	li $t2, 0
	bne $t1, $t2, label543
	j label544
label543:
	li $t0, 21238
	sw $t0, -13356($fp)
	j label545
label544:
	li $t0, 48452
	sw $t0, -13360($fp)
	lw $t0, -13360($fp)
	sw $t0, -12616($fp)
	lw $t0, -12616($fp)
	sw $t0, -13364($fp)
	li $t0, 63042
	sw $t0, -13368($fp)
	lw $t0, -13368($fp)
	sw $t0, -12604($fp)
	lw $t0, -12604($fp)
	sw $t0, -13372($fp)
	li $t0, 20017
	sw $t0, -13376($fp)
	lw $t0, -13376($fp)
	sw $t0, -10240($fp)
	lw $t0, -10240($fp)
	sw $t0, -13380($fp)
	li $t0, 0
	sw $t0, -13384($fp)
	li $t0, 0
	sw $t0, -13388($fp)
	lw $t0, -12592($fp)
	sw $t0, -13392($fp)
	lw $t1, -13392($fp)
	li $t2, 0
	bne $t1, $t2, label561
	j label560
label560:
	li $t0, 1
	sw $t0, -13388($fp)
label561:
	li $t0, 64701
	sw $t0, -13396($fp)
	lw $t1, -13388($fp)
	lw $t2, -13396($fp)
	ble $t1, $t2, label558
	j label559
label558:
	li $t0, 1
	sw $t0, -13384($fp)
label559:
	li $t0, 0
	sw $t0, -13400($fp)
	lw $t0, -652($fp)
	sw $t0, -13404($fp)
	lw $t1, -13404($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label562
label562:
	li $t0, 1
	sw $t0, -13400($fp)
label563:
	addi $sp, $sp, -4
	lw $t0, -13372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13400($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13408($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -13408($fp)
	sub $t0, $t0, $t1
	sw $t0, -13412($fp)
	li $t0, 0
	sw $t0, -13416($fp)
	lw $t0, -9904($fp)
	sw $t0, -13420($fp)
	lw $t1, -13420($fp)
	li $t2, 0
	bne $t1, $t2, label564
	j label566
label566:
	lw $t0, -616($fp)
	sw $t0, -13424($fp)
	lw $t1, -13424($fp)
	li $t2, 0
	bne $t1, $t2, label564
	j label565
label564:
	li $t0, 1
	sw $t0, -13416($fp)
label565:
	addi $t0, $fp, -64
	sw $t0, -13428($fp)
	lw $t0, -2140($fp)
	sw $t0, -13432($fp)
	li $t0, 4
	lw $t1, -13432($fp)
	mul $t0, $t0, $t1
	sw $t0, -13436($fp)
	lw $t0, -13436($fp)
	lw $t1, -13428($fp)
	add $t0, $t0, $t1
	sw $t0, -13440($fp)
	lw $t0, -13440($fp)
	lw $t1, 0($t0)
	sw $t1, -13444($fp)
	li $t0, 21978
	sw $t0, -13448($fp)
	lw $t0, -13444($fp)
	lw $t1, -13448($fp)
	mul $t0, $t0, $t1
	sw $t0, -13452($fp)
	addi $sp, $sp, -4
	lw $t0, -13364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13452($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13456($fp)
	addi $sp, $sp, 20
label545:
	j label542
label541:
	lw $t0, -10036($fp)
	sw $t0, -13460($fp)
	li $t0, 0
	sw $t0, -13464($fp)
	addi $t0, $fp, -264
	sw $t0, -13468($fp)
	li $t0, 3
	sw $t0, -13472($fp)
	li $t0, 4
	lw $t1, -13472($fp)
	mul $t0, $t0, $t1
	sw $t0, -13476($fp)
	lw $t0, -13476($fp)
	lw $t1, -13468($fp)
	add $t0, $t0, $t1
	sw $t0, -13480($fp)
	lw $t0, -13480($fp)
	lw $t1, 0($t0)
	sw $t1, -13484($fp)
	lw $t1, -13484($fp)
	li $t2, 0
	bne $t1, $t2, label568
	j label567
label567:
	li $t0, 1
	sw $t0, -13464($fp)
label568:
	lw $t0, -13460($fp)
	lw $t1, -13464($fp)
	mul $t0, $t0, $t1
	sw $t0, -13488($fp)
	addi $t0, $fp, -64
	sw $t0, -13492($fp)
	li $t0, 0
	sw $t0, -13496($fp)
	lw $t0, -12328($fp)
	sw $t0, -13500($fp)
	lw $t0, -2764($fp)
	sw $t0, -13504($fp)
	lw $t1, -13500($fp)
	lw $t2, -13504($fp)
	bgt $t1, $t2, label569
	j label571
label571:
	lw $t0, -9940($fp)
	sw $t0, -13508($fp)
	lw $t1, -13508($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label570
label569:
	li $t0, 1
	sw $t0, -13496($fp)
label570:
	lw $t0, -676($fp)
	sw $t0, -13512($fp)
	lw $t0, -13512($fp)
	sw $t0, -10228($fp)
	lw $t0, -10228($fp)
	sw $t0, -13516($fp)
	lw $t0, -2128($fp)
	sw $t0, -13520($fp)
	lw $t0, -664($fp)
	sw $t0, -13524($fp)
	lw $t0, -13524($fp)
	sw $t0, -9148($fp)
	lw $t0, -9148($fp)
	sw $t0, -13528($fp)
	addi $sp, $sp, -4
	lw $t0, -13496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13528($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13532($fp)
	addi $sp, $sp, 20
	li $t0, 4
	lw $t1, -13532($fp)
	mul $t0, $t0, $t1
	sw $t0, -13536($fp)
	lw $t0, -13536($fp)
	lw $t1, -13492($fp)
	add $t0, $t0, $t1
	sw $t0, -13540($fp)
	lw $t0, -13540($fp)
	lw $t1, 0($t0)
	sw $t1, -13544($fp)
	lw $t0, -13488($fp)
	lw $t1, -13544($fp)
	mul $t0, $t0, $t1
	sw $t0, -13548($fp)
label542:
	j label539
label538:
	addi $t0, $fp, -64
	sw $t0, -13552($fp)
	li $t0, 9005
	sw $t0, -13556($fp)
	li $t0, 0
	lw $t1, -13556($fp)
	sub $t0, $t0, $t1
	sw $t0, -13560($fp)
	li $t0, 5389
	sw $t0, -13564($fp)
	lw $t0, -13560($fp)
	lw $t1, -13564($fp)
	add $t0, $t0, $t1
	sw $t0, -13568($fp)
	addi $t0, $fp, -12320
	sw $t0, -13572($fp)
	li $t0, 0
	sw $t0, -13576($fp)
	li $t0, 4
	lw $t1, -13576($fp)
	mul $t0, $t0, $t1
	sw $t0, -13580($fp)
	lw $t0, -13580($fp)
	lw $t1, -13572($fp)
	add $t0, $t0, $t1
	sw $t0, -13584($fp)
	lw $t0, -13584($fp)
	lw $t1, 0($t0)
	sw $t1, -13588($fp)
	lw $t0, -13568($fp)
	lw $t1, -13588($fp)
	sub $t0, $t0, $t1
	sw $t0, -13592($fp)
	li $t0, 4
	lw $t1, -13592($fp)
	mul $t0, $t0, $t1
	sw $t0, -13596($fp)
	lw $t0, -13596($fp)
	lw $t1, -13552($fp)
	add $t0, $t0, $t1
	sw $t0, -13600($fp)
	lw $t0, -13600($fp)
	lw $t1, 0($t0)
	sw $t1, -13604($fp)
label539:
	j label526
label525:
	li $t0, 38749
	sw $t0, -13608($fp)
	lw $ra, -4($fp)
	lw $v0, -13608($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label526:
	li $t0, 0
	sw $t0, -13612($fp)
	li $t0, 7389
	sw $t0, -13616($fp)
	li $t0, 59185
	sw $t0, -13620($fp)
	li $t0, 63808
	sw $t0, -13624($fp)
	lw $t0, -13620($fp)
	lw $t1, -13624($fp)
	add $t0, $t0, $t1
	sw $t0, -13628($fp)
	lw $t1, -13616($fp)
	lw $t2, -13628($fp)
	blt $t1, $t2, label575
	j label574
label575:
	li $t0, 3777
	sw $t0, -13632($fp)
	li $t0, 0
	lw $t1, -13632($fp)
	sub $t0, $t0, $t1
	sw $t0, -13636($fp)
	lw $t0, -9940($fp)
	sw $t0, -13640($fp)
	lw $t0, -13636($fp)
	lw $t1, -13640($fp)
	add $t0, $t0, $t1
	sw $t0, -13644($fp)
	lw $t1, -13644($fp)
	li $t2, 0
	bne $t1, $t2, label572
	j label574
label574:
	lw $t0, 16($fp)
	sw $t0, -13648($fp)
	lw $t0, -2692($fp)
	sw $t0, -13652($fp)
	lw $t0, -13648($fp)
	lw $t1, -13652($fp)
	mul $t0, $t0, $t1
	sw $t0, -13656($fp)
	lw $t1, -13656($fp)
	li $t2, 0
	bne $t1, $t2, label572
	j label573
label572:
	li $t0, 1
	sw $t0, -13612($fp)
label573:
	j label483
label482:
	lw $t0, -6184($fp)
	sw $t0, -13660($fp)
	li $t0, 24326
	sw $t0, -13664($fp)
	lw $t0, -13660($fp)
	lw $t1, -13664($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13668($fp)
	li $t0, 63286
	sw $t0, -13672($fp)
	lw $t0, -13668($fp)
	lw $t1, -13672($fp)
	sub $t0, $t0, $t1
	sw $t0, -13676($fp)
	lw $t0, -2764($fp)
	sw $t0, -13680($fp)
	li $t0, 38750
	sw $t0, -13684($fp)
	lw $t0, -13680($fp)
	lw $t1, -13684($fp)
	add $t0, $t0, $t1
	sw $t0, -13688($fp)
	li $t0, 22975
	sw $t0, -13692($fp)
	lw $t0, -13688($fp)
	lw $t1, -13692($fp)
	add $t0, $t0, $t1
	sw $t0, -13696($fp)
	lw $t0, -1468($fp)
	sw $t0, -13700($fp)
	li $t0, 0
	sw $t0, -13704($fp)
	li $t0, 16206
	sw $t0, -13708($fp)
	lw $t0, -508($fp)
	sw $t0, -13712($fp)
	lw $t0, -13708($fp)
	lw $t1, -13712($fp)
	sub $t0, $t0, $t1
	sw $t0, -13716($fp)
	lw $t0, -8896($fp)
	sw $t0, -13720($fp)
	lw $t1, -13716($fp)
	lw $t2, -13720($fp)
	ble $t1, $t2, label579
	j label580
label579:
	li $t0, 1
	sw $t0, -13704($fp)
label580:
	addi $sp, $sp, -4
	lw $t0, -13676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13704($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13724($fp)
	addi $sp, $sp, 20
	li $t0, 42711
	sw $t0, -13728($fp)
	lw $t0, -13724($fp)
	lw $t1, -13728($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13732($fp)
	li $t0, 0
	sw $t0, -13736($fp)
	lw $t0, -8884($fp)
	sw $t0, -13740($fp)
	lw $t0, -9484($fp)
	sw $t0, -13744($fp)
	lw $t1, -13740($fp)
	lw $t2, -13744($fp)
	bge $t1, $t2, label583
	j label582
label583:
	lw $t0, -10372($fp)
	sw $t0, -13748($fp)
	lw $t1, -13748($fp)
	li $t2, 0
	bne $t1, $t2, label581
	j label582
label581:
	li $t0, 1
	sw $t0, -13736($fp)
label582:
	li $t0, 42204
	sw $t0, -13752($fp)
	lw $t0, -13752($fp)
	sw $t0, -8872($fp)
	lw $t0, -8872($fp)
	sw $t0, -13756($fp)
	li $t0, 0
	sw $t0, -13760($fp)
	lw $t0, -2476($fp)
	sw $t0, -13764($fp)
	li $t0, 22264
	sw $t0, -13768($fp)
	lw $t0, -13764($fp)
	lw $t1, -13768($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13772($fp)
	lw $t1, -13772($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label585
label586:
	li $t0, 24216
	sw $t0, -13776($fp)
	lw $t1, -13776($fp)
	li $t2, 0
	bne $t1, $t2, label584
	j label585
label584:
	li $t0, 1
	sw $t0, -13760($fp)
label585:
	addi $sp, $sp, -4
	lw $t0, -13732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13760($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13780($fp)
	addi $sp, $sp, 20
	lw $t1, -13780($fp)
	li $t2, 0
	bne $t1, $t2, label576
	j label577
label576:
	li $t0, 0
	sw $t0, -13784($fp)
	li $t0, 0
	sw $t0, -13788($fp)
	li $t0, 42111
	sw $t0, -13792($fp)
	lw $t0, -2704($fp)
	sw $t0, -13796($fp)
	lw $t0, -13792($fp)
	lw $t1, -13796($fp)
	mul $t0, $t0, $t1
	sw $t0, -13800($fp)
	lw $t0, -8680($fp)
	sw $t0, -13804($fp)
	lw $t1, -13800($fp)
	lw $t2, -13804($fp)
	blt $t1, $t2, label592
	j label593
label592:
	li $t0, 1
	sw $t0, -13788($fp)
label593:
	li $t0, 0
	sw $t0, -13808($fp)
	li $t0, 55170
	sw $t0, -13812($fp)
	lw $t1, -13812($fp)
	li $t2, 0
	bne $t1, $t2, label596
	j label594
label596:
	lw $t0, -9916($fp)
	sw $t0, -13816($fp)
	lw $t1, -13816($fp)
	li $t2, 0
	bne $t1, $t2, label594
	j label595
label594:
	li $t0, 1
	sw $t0, -13808($fp)
label595:
	addi $t0, $fp, -96
	sw $t0, -13820($fp)
	lw $t0, -1372($fp)
	sw $t0, -13824($fp)
	li $t0, 4
	lw $t1, -13824($fp)
	mul $t0, $t0, $t1
	sw $t0, -13828($fp)
	lw $t0, -13828($fp)
	lw $t1, -13820($fp)
	add $t0, $t0, $t1
	sw $t0, -13832($fp)
	lw $t0, -13832($fp)
	lw $t1, 0($t0)
	sw $t1, -13836($fp)
	li $t0, 0
	sw $t0, -13840($fp)
	lw $t0, -10204($fp)
	sw $t0, -13844($fp)
	li $t0, 0
	lw $t1, -13844($fp)
	sub $t0, $t0, $t1
	sw $t0, -13848($fp)
	lw $t1, -13848($fp)
	li $t2, 0
	bne $t1, $t2, label597
	j label599
label599:
	li $t0, 20216
	sw $t0, -13852($fp)
	lw $t1, -13852($fp)
	li $t2, 0
	bne $t1, $t2, label597
	j label598
label597:
	li $t0, 1
	sw $t0, -13840($fp)
label598:
	addi $sp, $sp, -4
	lw $t0, -13788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13840($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13856($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -8500
	sw $t0, -13860($fp)
	lw $t0, -652($fp)
	sw $t0, -13864($fp)
	li $t0, 4
	lw $t1, -13864($fp)
	mul $t0, $t0, $t1
	sw $t0, -13868($fp)
	lw $t0, -13868($fp)
	lw $t1, -13860($fp)
	add $t0, $t0, $t1
	sw $t0, -13872($fp)
	lw $t0, -13872($fp)
	lw $t1, 0($t0)
	sw $t1, -13876($fp)
	lw $t0, 4($fp)
	sw $t0, -13880($fp)
	lw $t0, -13876($fp)
	lw $t1, -13880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13884($fp)
	lw $t1, -13856($fp)
	lw $t2, -13884($fp)
	ble $t1, $t2, label590
	j label591
label590:
	li $t0, 1
	sw $t0, -13784($fp)
label591:
	li $t0, 11555
	sw $t0, -13888($fp)
	lw $t1, -13784($fp)
	lw $t2, -13888($fp)
	ble $t1, $t2, label587
	j label588
label587:
	li $t0, 7407
	sw $t0, -13892($fp)
	lw $t1, -13892($fp)
	li $t2, 0
	bne $t1, $t2, label600
	j label601
label600:
label603:
	li $t0, 63349
	sw $t0, -13896($fp)
	li $t0, 6573
	sw $t0, -13900($fp)
	lw $t0, -13896($fp)
	lw $t1, -13900($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13904($fp)
	li $t0, 0
	sw $t0, -13908($fp)
	li $t0, 17830
	sw $t0, -13912($fp)
	li $t0, 31039
	sw $t0, -13916($fp)
	lw $t0, -13912($fp)
	lw $t1, -13916($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13920($fp)
	addi $t0, $fp, -48
	sw $t0, -13924($fp)
	lw $t0, -2728($fp)
	sw $t0, -13928($fp)
	li $t0, 4
	lw $t1, -13928($fp)
	mul $t0, $t0, $t1
	sw $t0, -13932($fp)
	lw $t0, -13932($fp)
	lw $t1, -13924($fp)
	add $t0, $t0, $t1
	sw $t0, -13936($fp)
	lw $t0, -13936($fp)
	lw $t1, 0($t0)
	sw $t1, -13940($fp)
	lw $t1, -13920($fp)
	lw $t2, -13940($fp)
	bgt $t1, $t2, label606
	j label607
label606:
	li $t0, 1
	sw $t0, -13908($fp)
label607:
	lw $t1, -13904($fp)
	lw $t2, -13908($fp)
	beq $t1, $t2, label604
	j label605
label604:
label608:
	li $t0, 55024
	sw $t0, -13944($fp)
	lw $t1, -13944($fp)
	li $t2, 0
	bne $t1, $t2, label609
	j label611
label611:
	li $t0, 34663
	sw $t0, -13948($fp)
	lw $t0, -10060($fp)
	sw $t0, -13952($fp)
	lw $t0, -13948($fp)
	lw $t1, -13952($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13956($fp)
	lw $t0, -8836($fp)
	sw $t0, -13960($fp)
	lw $t0, -13956($fp)
	lw $t1, -13960($fp)
	mul $t0, $t0, $t1
	sw $t0, -13964($fp)
	lw $t1, -13964($fp)
	li $t2, 0
	bne $t1, $t2, label609
	j label610
label609:
	li $t0, 0
	sw $t0, -13968($fp)
	li $t0, 0
	sw $t0, -13972($fp)
	li $t0, 0
	sw $t0, -13976($fp)
	li $t0, 52158
	sw $t0, -13980($fp)
	li $t0, 0
	lw $t1, -13980($fp)
	sub $t0, $t0, $t1
	sw $t0, -13984($fp)
	lw $t1, -13984($fp)
	li $t2, 0
	bne $t1, $t2, label617
	j label616
label616:
	li $t0, 1
	sw $t0, -13976($fp)
label617:
	lw $t0, -6196($fp)
	sw $t0, -13988($fp)
	lw $t1, -13976($fp)
	lw $t2, -13988($fp)
	ble $t1, $t2, label614
	j label615
label614:
	li $t0, 1
	sw $t0, -13972($fp)
label615:
	li $t0, 0
	sw $t0, -13992($fp)
	li $t0, 0
	sw $t0, -13996($fp)
	lw $t0, -6448($fp)
	sw $t0, -14000($fp)
	lw $t0, -10216($fp)
	sw $t0, -14004($fp)
	lw $t1, -14000($fp)
	lw $t2, -14004($fp)
	beq $t1, $t2, label620
	j label621
label620:
	li $t0, 1
	sw $t0, -13996($fp)
label621:
	lw $t0, -2656($fp)
	sw $t0, -14008($fp)
	lw $t1, -13996($fp)
	lw $t2, -14008($fp)
	bne $t1, $t2, label618
	j label619
label618:
	li $t0, 1
	sw $t0, -13992($fp)
label619:
	li $t0, 0
	sw $t0, -14012($fp)
	lw $t0, -3004($fp)
	sw $t0, -14016($fp)
	lw $t0, -14016($fp)
	sw $t0, -6724($fp)
	lw $t0, -6724($fp)
	sw $t0, -14020($fp)
	li $t0, 34579
	sw $t0, -14024($fp)
	li $t0, 0
	sw $t0, -14028($fp)
	lw $t0, -10360($fp)
	sw $t0, -14032($fp)
	li $t0, 10332
	sw $t0, -14036($fp)
	lw $t0, -14032($fp)
	lw $t1, -14036($fp)
	mul $t0, $t0, $t1
	sw $t0, -14040($fp)
	lw $t0, -2128($fp)
	sw $t0, -14044($fp)
	lw $t0, -14040($fp)
	lw $t1, -14044($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14048($fp)
	lw $t0, -10408($fp)
	sw $t0, -14052($fp)
	lw $t0, -14052($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -14056($fp)
	li $t0, 0
	sw $t0, -14060($fp)
	li $t0, 37898
	sw $t0, -14064($fp)
	li $t0, 3539
	sw $t0, -14068($fp)
	lw $t1, -14064($fp)
	lw $t2, -14068($fp)
	bgt $t1, $t2, label628
	j label627
label628:
	lw $t0, -10396($fp)
	sw $t0, -14072($fp)
	lw $t1, -14072($fp)
	li $t2, 0
	bne $t1, $t2, label626
	j label627
label626:
	li $t0, 1
	sw $t0, -14060($fp)
label627:
	lw $t0, -2068($fp)
	sw $t0, -14076($fp)
	li $t0, 0
	sw $t0, -14080($fp)
	lw $t0, -10192($fp)
	sw $t0, -14084($fp)
	lw $t0, -2680($fp)
	sw $t0, -14088($fp)
	lw $t1, -14084($fp)
	lw $t2, -14088($fp)
	bne $t1, $t2, label629
	j label631
label631:
	lw $t0, -2992($fp)
	sw $t0, -14092($fp)
	lw $t1, -14092($fp)
	li $t2, 0
	bne $t1, $t2, label629
	j label630
label629:
	li $t0, 1
	sw $t0, -14080($fp)
label630:
	li $t0, 35542
	sw $t0, -14096($fp)
	lw $t0, -9856($fp)
	sw $t0, -14100($fp)
	lw $t0, -14096($fp)
	lw $t1, -14100($fp)
	add $t0, $t0, $t1
	sw $t0, -14104($fp)
	li $t0, 0
	sw $t0, -14108($fp)
	lw $t0, -9448($fp)
	sw $t0, -14112($fp)
	lw $t1, -14112($fp)
	li $t2, 0
	bne $t1, $t2, label635
	j label633
label635:
	lw $t0, -6736($fp)
	sw $t0, -14116($fp)
	lw $t1, -14116($fp)
	li $t2, 0
	bne $t1, $t2, label634
	j label633
label634:
	li $t0, 40085
	sw $t0, -14120($fp)
	lw $t1, -14120($fp)
	li $t2, 0
	bne $t1, $t2, label632
	j label633
label632:
	li $t0, 1
	sw $t0, -14108($fp)
label633:
	li $t0, 61889
	sw $t0, -14124($fp)
	addi $sp, $sp, -4
	lw $t0, -14080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14124($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14128($fp)
	addi $sp, $sp, 20
	li $t0, 3760
	sw $t0, -14132($fp)
	lw $t0, -14128($fp)
	lw $t1, -14132($fp)
	add $t0, $t0, $t1
	sw $t0, -14136($fp)
	addi $t0, $fp, -264
	sw $t0, -14140($fp)
	li $t0, 3
	sw $t0, -14144($fp)
	li $t0, 4
	lw $t1, -14144($fp)
	mul $t0, $t0, $t1
	sw $t0, -14148($fp)
	lw $t0, -14148($fp)
	lw $t1, -14140($fp)
	add $t0, $t0, $t1
	sw $t0, -14152($fp)
	lw $t0, -14152($fp)
	lw $t1, 0($t0)
	sw $t1, -14156($fp)
	lw $t0, -2692($fp)
	sw $t0, -14160($fp)
	lw $t0, -14156($fp)
	lw $t1, -14160($fp)
	mul $t0, $t0, $t1
	sw $t0, -14164($fp)
	addi $sp, $sp, -4
	lw $t0, -14060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14164($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14168($fp)
	addi $sp, $sp, 20
	lw $t0, -10276($fp)
	sw $t0, -14172($fp)
	lw $t0, -14172($fp)
	sw $t0, -9904($fp)
	lw $t0, -9904($fp)
	sw $t0, -14176($fp)
	li $t0, 6719
	sw $t0, -14180($fp)
	addi $sp, $sp, -4
	lw $t0, -14056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14180($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14184($fp)
	addi $sp, $sp, 20
	li $t0, 8968
	sw $t0, -14188($fp)
	li $t0, 20799
	sw $t0, -14192($fp)
	lw $t0, -14188($fp)
	lw $t1, -14192($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14196($fp)
	li $t0, 0
	sw $t0, -14200($fp)
	li $t0, 0
	sw $t0, -14204($fp)
	lw $t0, -3016($fp)
	sw $t0, -14208($fp)
	lw $t1, -14208($fp)
	li $t2, 0
	bne $t1, $t2, label639
	j label638
label638:
	li $t0, 1
	sw $t0, -14204($fp)
label639:
	lw $t0, -8860($fp)
	sw $t0, -14212($fp)
	lw $t1, -14204($fp)
	lw $t2, -14212($fp)
	blt $t1, $t2, label636
	j label637
label636:
	li $t0, 1
	sw $t0, -14200($fp)
label637:
	lw $t0, -2488($fp)
	sw $t0, -14216($fp)
	li $t0, 0
	lw $t1, -14216($fp)
	sub $t0, $t0, $t1
	sw $t0, -14220($fp)
	lw $t0, -8848($fp)
	sw $t0, -14224($fp)
	lw $t0, -14220($fp)
	lw $t1, -14224($fp)
	sub $t0, $t0, $t1
	sw $t0, -14228($fp)
	li $t0, 44981
	sw $t0, -14232($fp)
	li $t0, 0
	lw $t1, -14232($fp)
	sub $t0, $t0, $t1
	sw $t0, -14236($fp)
	lw $t0, 8($fp)
	sw $t0, -14240($fp)
	lw $t0, -14236($fp)
	lw $t1, -14240($fp)
	add $t0, $t0, $t1
	sw $t0, -14244($fp)
	addi $sp, $sp, -4
	lw $t0, -14196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14244($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14248($fp)
	addi $sp, $sp, 20
	li $t0, 3771
	sw $t0, -14252($fp)
	lw $t0, -14248($fp)
	lw $t1, -14252($fp)
	add $t0, $t0, $t1
	sw $t0, -14256($fp)
	li $t0, 0
	sw $t0, -14260($fp)
	li $t0, 35754
	sw $t0, -14264($fp)
	lw $t1, -14264($fp)
	li $t2, 0
	bne $t1, $t2, label641
	j label640
label640:
	li $t0, 1
	sw $t0, -14260($fp)
label641:
	li $t0, 63359
	sw $t0, -14268($fp)
	lw $t0, -14260($fp)
	lw $t1, -14268($fp)
	add $t0, $t0, $t1
	sw $t0, -14272($fp)
	li $t0, 28775
	sw $t0, -14276($fp)
	lw $t0, -2704($fp)
	sw $t0, -14280($fp)
	lw $t0, -14276($fp)
	lw $t1, -14280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14284($fp)
	li $t0, 0
	sw $t0, -14288($fp)
	lw $t0, -6160($fp)
	sw $t0, -14292($fp)
	li $t0, 11538
	sw $t0, -14296($fp)
	lw $t0, -14292($fp)
	lw $t1, -14296($fp)
	mul $t0, $t0, $t1
	sw $t0, -14300($fp)
	li $t0, 21155
	sw $t0, -14304($fp)
	lw $t1, -14300($fp)
	lw $t2, -14304($fp)
	beq $t1, $t2, label642
	j label643
label642:
	li $t0, 1
	sw $t0, -14288($fp)
label643:
	addi $sp, $sp, -4
	lw $t0, -14256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14288($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14308($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -14308($fp)
	sub $t0, $t0, $t1
	sw $t0, -14312($fp)
	li $t0, 6511
	sw $t0, -14316($fp)
	addi $sp, $sp, -4
	lw $t0, -14048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14316($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14320($fp)
	addi $sp, $sp, 20
	li $t0, 55729
	sw $t0, -14324($fp)
	lw $t1, -14320($fp)
	lw $t2, -14324($fp)
	ble $t1, $t2, label624
	j label625
label624:
	li $t0, 1
	sw $t0, -14028($fp)
label625:
	li $t0, 17378
	sw $t0, -14328($fp)
	addi $sp, $sp, -4
	lw $t0, -14020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14328($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14332($fp)
	addi $sp, $sp, 20
	li $t0, 65356
	sw $t0, -14336($fp)
	lw $t1, -14332($fp)
	lw $t2, -14336($fp)
	beq $t1, $t2, label622
	j label623
label622:
	li $t0, 1
	sw $t0, -14012($fp)
label623:
	li $t0, 0
	sw $t0, -14340($fp)
	li $t0, 0
	sw $t0, -14344($fp)
	addi $t0, $fp, -48
	sw $t0, -14348($fp)
	lw $t0, -2104($fp)
	sw $t0, -14352($fp)
	li $t0, 4
	lw $t1, -14352($fp)
	mul $t0, $t0, $t1
	sw $t0, -14356($fp)
	lw $t0, -14356($fp)
	lw $t1, -14348($fp)
	add $t0, $t0, $t1
	sw $t0, -14360($fp)
	lw $t0, -14360($fp)
	lw $t1, 0($t0)
	sw $t1, -14364($fp)
	lw $t1, -14364($fp)
	li $t2, 0
	bne $t1, $t2, label646
	j label648
label648:
	li $t0, 12861
	sw $t0, -14368($fp)
	lw $t1, -14368($fp)
	li $t2, 0
	bne $t1, $t2, label646
	j label647
label646:
	li $t0, 1
	sw $t0, -14344($fp)
label647:
	lw $t0, -10264($fp)
	sw $t0, -14372($fp)
	lw $t0, -6208($fp)
	sw $t0, -14376($fp)
	lw $t0, -5560($fp)
	sw $t0, -14380($fp)
	lw $t0, -14376($fp)
	lw $t1, -14380($fp)
	add $t0, $t0, $t1
	sw $t0, -14384($fp)
	lw $t0, -6472($fp)
	sw $t0, -14388($fp)
	lw $t0, -14384($fp)
	lw $t1, -14388($fp)
	sub $t0, $t0, $t1
	sw $t0, -14392($fp)
	li $t0, 9989
	sw $t0, -14396($fp)
	lw $t0, -14396($fp)
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -14400($fp)
	addi $sp, $sp, -4
	lw $t0, -14344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14400($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14404($fp)
	addi $sp, $sp, 20
	li $t0, 13266
	sw $t0, -14408($fp)
	lw $t1, -14404($fp)
	lw $t2, -14408($fp)
	ble $t1, $t2, label644
	j label645
label644:
	li $t0, 1
	sw $t0, -14340($fp)
label645:
	li $t0, 0
	sw $t0, -14412($fp)
	li $t0, 0
	sw $t0, -14416($fp)
	li $t0, 64029
	sw $t0, -14420($fp)
	lw $t0, -6748($fp)
	sw $t0, -14424($fp)
	lw $t1, -14420($fp)
	lw $t2, -14424($fp)
	beq $t1, $t2, label651
	j label652
label651:
	li $t0, 1
	sw $t0, -14416($fp)
label652:
	li $t0, 40052
	sw $t0, -14428($fp)
	lw $t1, -14416($fp)
	lw $t2, -14428($fp)
	beq $t1, $t2, label649
	j label650
label649:
	li $t0, 1
	sw $t0, -14412($fp)
label650:
	addi $sp, $sp, -4
	lw $t0, -13992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14412($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14432($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -14432($fp)
	sub $t0, $t0, $t1
	sw $t0, -14436($fp)
	li $t0, 0
	lw $t1, -14436($fp)
	sub $t0, $t0, $t1
	sw $t0, -14440($fp)
	lw $t1, -13972($fp)
	lw $t2, -14440($fp)
	blt $t1, $t2, label612
	j label613
label612:
	li $t0, 1
	sw $t0, -13968($fp)
label613:
	lw $ra, -4($fp)
	lw $v0, -13968($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label608
label610:
	j label603
label605:
	j label602
label601:
	li $t0, 0
	sw $t0, -14444($fp)
	li $t0, 4187
	sw $t0, -14448($fp)
	lw $t1, -14448($fp)
	li $t2, 0
	bne $t1, $t2, label658
	j label656
label658:
	lw $t0, -6112($fp)
	sw $t0, -14452($fp)
	lw $t1, -14452($fp)
	li $t2, 0
	bne $t1, $t2, label656
	j label657
label656:
	li $t0, 1
	sw $t0, -14444($fp)
label657:
	li $t0, 24177
	sw $t0, -14456($fp)
	li $t0, 0
	lw $t1, -14456($fp)
	sub $t0, $t0, $t1
	sw $t0, -14460($fp)
	li $t0, 0
	sw $t0, -14464($fp)
	li $t0, 0
	sw $t0, -14468($fp)
	lw $t0, -2764($fp)
	sw $t0, -14472($fp)
	li $t0, 17686
	sw $t0, -14476($fp)
	lw $t1, -14472($fp)
	lw $t2, -14476($fp)
	bge $t1, $t2, label661
	j label662
label661:
	li $t0, 1
	sw $t0, -14468($fp)
label662:
	lw $t0, -9928($fp)
	sw $t0, -14480($fp)
	lw $t1, -14468($fp)
	lw $t2, -14480($fp)
	bgt $t1, $t2, label659
	j label660
label659:
	li $t0, 1
	sw $t0, -14464($fp)
label660:
	li $t0, 0
	sw $t0, -14484($fp)
	li $t0, 0
	sw $t0, -14488($fp)
	lw $t0, -9184($fp)
	sw $t0, -14492($fp)
	lw $t0, -976($fp)
	sw $t0, -14496($fp)
	lw $t1, -14492($fp)
	lw $t2, -14496($fp)
	bgt $t1, $t2, label665
	j label666
label665:
	li $t0, 1
	sw $t0, -14488($fp)
label666:
	li $t0, 48568
	sw $t0, -14500($fp)
	lw $t1, -14488($fp)
	lw $t2, -14500($fp)
	blt $t1, $t2, label663
	j label664
label663:
	li $t0, 1
	sw $t0, -14484($fp)
label664:
	li $t0, 11175
	sw $t0, -14504($fp)
	li $t0, 12639
	sw $t0, -14508($fp)
	lw $t0, -14504($fp)
	lw $t1, -14508($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14512($fp)
	lw $t0, -1336($fp)
	sw $t0, -14516($fp)
	lw $t0, -14512($fp)
	lw $t1, -14516($fp)
	mul $t0, $t0, $t1
	sw $t0, -14520($fp)
	li $t0, 31190
	sw $t0, -14524($fp)
	lw $t0, -14524($fp)
	sw $t0, -10432($fp)
	lw $t0, -10432($fp)
	sw $t0, -14528($fp)
	li $t0, 0
	sw $t0, -14532($fp)
	lw $t0, -6724($fp)
	sw $t0, -14536($fp)
	lw $t1, -14536($fp)
	li $t2, 0
	bne $t1, $t2, label667
	j label670
label670:
	lw $t0, -1000($fp)
	sw $t0, -14540($fp)
	lw $t1, -14540($fp)
	li $t2, 0
	bne $t1, $t2, label667
	j label669
label669:
	lw $t0, -10420($fp)
	sw $t0, -14544($fp)
	lw $t1, -14544($fp)
	li $t2, 0
	bne $t1, $t2, label667
	j label668
label667:
	li $t0, 1
	sw $t0, -14532($fp)
label668:
	li $t0, 0
	sw $t0, -14548($fp)
	li $t0, 64909
	sw $t0, -14552($fp)
	lw $t1, -14552($fp)
	li $t2, 0
	bne $t1, $t2, label672
	j label671
label671:
	li $t0, 1
	sw $t0, -14548($fp)
label672:
	addi $sp, $sp, -4
	lw $t0, -14520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14548($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14556($fp)
	addi $sp, $sp, 20
	lw $t0, -10360($fp)
	sw $t0, -14560($fp)
	lw $t0, -14556($fp)
	lw $t1, -14560($fp)
	add $t0, $t0, $t1
	sw $t0, -14564($fp)
	addi $sp, $sp, -4
	lw $t0, -14460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14564($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14568($fp)
	addi $sp, $sp, 20
	lw $t0, -3016($fp)
	sw $t0, -14572($fp)
	lw $t0, -14568($fp)
	lw $t1, -14572($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14576($fp)
	li $t0, 63850
	sw $t0, -14580($fp)
	li $t0, 0
	sw $t0, -14584($fp)
	li $t0, 24856
	sw $t0, -14588($fp)
	lw $t1, -14588($fp)
	li $t2, 0
	bne $t1, $t2, label674
	j label673
label673:
	li $t0, 1
	sw $t0, -14584($fp)
label674:
	li $t0, 21201
	sw $t0, -14592($fp)
	lw $t0, -14584($fp)
	lw $t1, -14592($fp)
	mul $t0, $t0, $t1
	sw $t0, -14596($fp)
	addi $sp, $sp, -4
	lw $t0, -14444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14596($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14600($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -14604($fp)
	li $t0, 46461
	sw $t0, -14608($fp)
	lw $t1, -14608($fp)
	li $t2, 0
	bne $t1, $t2, label676
	j label675
label675:
	li $t0, 1
	sw $t0, -14604($fp)
label676:
	li $t0, 0
	lw $t1, -14604($fp)
	sub $t0, $t0, $t1
	sw $t0, -14612($fp)
	lw $t0, -14600($fp)
	lw $t1, -14612($fp)
	mul $t0, $t0, $t1
	sw $t0, -14616($fp)
	lw $t1, -14616($fp)
	li $t2, 0
	bne $t1, $t2, label653
	j label654
label653:
	li $t0, 59931
	sw $t0, -14620($fp)
	lw $t0, -14620($fp)
	sw $t0, -14624($fp)
	lw $t0, -14624($fp)
	sw $t0, -14628($fp)
	li $t0, 2011
	sw $t0, -14632($fp)
	lw $t0, -14632($fp)
	sw $t0, -14636($fp)
	lw $t0, -14636($fp)
	sw $t0, -14640($fp)
	lw $t0, -14624($fp)
	sw $t0, -14644($fp)
	li $t0, 25906
	sw $t0, -14648($fp)
	lw $t0, -5620($fp)
	sw $t0, -14652($fp)
	lw $t0, -14648($fp)
	lw $t1, -14652($fp)
	mul $t0, $t0, $t1
	sw $t0, -14656($fp)
	li $t0, 0
	lw $t1, -14656($fp)
	sub $t0, $t0, $t1
	sw $t0, -14660($fp)
	lw $t0, -14644($fp)
	lw $t1, -14660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14664($fp)
	lw $t0, -5632($fp)
	sw $t0, -14668($fp)
	li $t0, 0
	sw $t0, -14672($fp)
	lw $t0, -2692($fp)
	sw $t0, -14676($fp)
	lw $t0, -6124($fp)
	sw $t0, -14680($fp)
	lw $t1, -14676($fp)
	lw $t2, -14680($fp)
	bge $t1, $t2, label677
	j label679
label679:
	li $t0, 60869
	sw $t0, -14684($fp)
	lw $t1, -14684($fp)
	li $t2, 0
	bne $t1, $t2, label677
	j label678
label677:
	li $t0, 1
	sw $t0, -14672($fp)
label678:
	lw $t0, -6064($fp)
	sw $t0, -14688($fp)
	lw $t0, -14636($fp)
	sw $t0, -14692($fp)
	lw $t0, -14688($fp)
	lw $t1, -14692($fp)
	sub $t0, $t0, $t1
	sw $t0, -14696($fp)
	li $t0, 0
	sw $t0, -14700($fp)
	lw $t0, -10024($fp)
	sw $t0, -14704($fp)
	lw $t1, -14704($fp)
	li $t2, 0
	bne $t1, $t2, label681
	j label680
label680:
	li $t0, 1
	sw $t0, -14700($fp)
label681:
	lw $t0, -10360($fp)
	sw $t0, -14708($fp)
	lw $t0, -14700($fp)
	lw $t1, -14708($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14712($fp)
	addi $sp, $sp, -4
	lw $t0, -14668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14712($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14716($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -14720($fp)
	li $t0, 53665
	sw $t0, -14724($fp)
	lw $t0, -9940($fp)
	sw $t0, -14728($fp)
	lw $t1, -14724($fp)
	lw $t2, -14728($fp)
	bgt $t1, $t2, label682
	j label684
label684:
	li $t0, 6435
	sw $t0, -14732($fp)
	lw $t1, -14732($fp)
	li $t2, 0
	bne $t1, $t2, label682
	j label683
label682:
	li $t0, 1
	sw $t0, -14720($fp)
label683:
	li $t0, 0
	sw $t0, -14736($fp)
	li $t0, 0
	sw $t0, -14740($fp)
	li $t0, 29677
	sw $t0, -14744($fp)
	li $t0, 10082
	sw $t0, -14748($fp)
	lw $t1, -14744($fp)
	lw $t2, -14748($fp)
	bne $t1, $t2, label687
	j label688
label687:
	li $t0, 1
	sw $t0, -14740($fp)
label688:
	li $t0, 20784
	sw $t0, -14752($fp)
	lw $t1, -14740($fp)
	lw $t2, -14752($fp)
	bne $t1, $t2, label685
	j label686
label685:
	li $t0, 1
	sw $t0, -14736($fp)
label686:
	li $t0, 0
	sw $t0, -14756($fp)
	li $t0, 0
	sw $t0, -14760($fp)
	lw $t0, -2296($fp)
	sw $t0, -14764($fp)
	li $t0, 3363
	sw $t0, -14768($fp)
	lw $t1, -14764($fp)
	lw $t2, -14768($fp)
	bne $t1, $t2, label691
	j label692
label691:
	li $t0, 1
	sw $t0, -14760($fp)
label692:
	li $t0, 22810
	sw $t0, -14772($fp)
	lw $t1, -14760($fp)
	lw $t2, -14772($fp)
	bne $t1, $t2, label689
	j label690
label689:
	li $t0, 1
	sw $t0, -14756($fp)
label690:
	addi $sp, $sp, -4
	lw $t0, -14716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14756($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14776($fp)
	addi $sp, $sp, 20
	lw $t0, -14664($fp)
	lw $t1, -14776($fp)
	add $t0, $t0, $t1
	sw $t0, -14780($fp)
	li $t0, 0
	sw $t0, -14784($fp)
	addi $t0, $fp, -296
	sw $t0, -14788($fp)
	li $t0, 0
	sw $t0, -14792($fp)
	li $t0, 0
	sw $t0, -14796($fp)
	li $t0, 23671
	sw $t0, -14800($fp)
	li $t0, 10195
	sw $t0, -14804($fp)
	lw $t1, -14800($fp)
	lw $t2, -14804($fp)
	beq $t1, $t2, label697
	j label698
label697:
	li $t0, 1
	sw $t0, -14796($fp)
label698:
	lw $t0, -2104($fp)
	sw $t0, -14808($fp)
	lw $t1, -14796($fp)
	lw $t2, -14808($fp)
	beq $t1, $t2, label695
	j label696
label695:
	li $t0, 1
	sw $t0, -14792($fp)
label696:
	li $t0, 4
	lw $t1, -14792($fp)
	mul $t0, $t0, $t1
	sw $t0, -14812($fp)
	lw $t0, -14812($fp)
	lw $t1, -14788($fp)
	add $t0, $t0, $t1
	sw $t0, -14816($fp)
	lw $t0, -14816($fp)
	lw $t1, 0($t0)
	sw $t1, -14820($fp)
	lw $t1, -14820($fp)
	li $t2, 0
	bne $t1, $t2, label694
	j label693
label693:
	li $t0, 1
	sw $t0, -14784($fp)
label694:
	j label655
label654:
	addi $t0, $fp, -48
	sw $t0, -14824($fp)
	li $t0, 3
	sw $t0, -14828($fp)
	li $t0, 4
	lw $t1, -14828($fp)
	mul $t0, $t0, $t1
	sw $t0, -14832($fp)
	lw $t0, -14832($fp)
	lw $t1, -14824($fp)
	add $t0, $t0, $t1
	sw $t0, -14836($fp)
	lw $t0, -14836($fp)
	lw $t1, 0($t0)
	sw $t1, -14840($fp)
	addi $t0, $fp, -8648
	sw $t0, -14844($fp)
	li $t0, 1
	sw $t0, -14848($fp)
	li $t0, 4
	lw $t1, -14848($fp)
	mul $t0, $t0, $t1
	sw $t0, -14852($fp)
	lw $t0, -14852($fp)
	lw $t1, -14844($fp)
	add $t0, $t0, $t1
	sw $t0, -14856($fp)
	lw $t0, -14856($fp)
	lw $t1, 0($t0)
	sw $t1, -14860($fp)
	addi $t0, $fp, -240
	sw $t0, -14864($fp)
	li $t0, 1
	sw $t0, -14868($fp)
	li $t0, 4
	lw $t1, -14868($fp)
	mul $t0, $t0, $t1
	sw $t0, -14872($fp)
	lw $t0, -14872($fp)
	lw $t1, -14864($fp)
	add $t0, $t0, $t1
	sw $t0, -14876($fp)
	lw $t0, -14876($fp)
	lw $t1, 0($t0)
	sw $t1, -14880($fp)
	li $t0, 16692
	sw $t0, -14884($fp)
	li $t0, 0
	sw $t0, -14888($fp)
	lw $t0, -10360($fp)
	sw $t0, -14892($fp)
	addi $t0, $fp, -8672
	sw $t0, -14896($fp)
	lw $t0, -6712($fp)
	sw $t0, -14900($fp)
	li $t0, 4
	lw $t1, -14900($fp)
	mul $t0, $t0, $t1
	sw $t0, -14904($fp)
	lw $t0, -14904($fp)
	lw $t1, -14896($fp)
	add $t0, $t0, $t1
	sw $t0, -14908($fp)
	lw $t0, -14908($fp)
	lw $t1, 0($t0)
	sw $t1, -14912($fp)
	lw $t0, -2308($fp)
	sw $t0, -14916($fp)
	lw $t0, -14912($fp)
	lw $t1, -14916($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14920($fp)
	lw $t0, -2668($fp)
	sw $t0, -14924($fp)
	lw $t0, -14924($fp)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -14928($fp)
	li $t0, 0
	sw $t0, -14932($fp)
	li $t0, 37877
	sw $t0, -14936($fp)
	lw $t1, -14936($fp)
	li $t2, 0
	bne $t1, $t2, label703
	j label702
label703:
	lw $t0, -10276($fp)
	sw $t0, -14940($fp)
	lw $t1, -14940($fp)
	li $t2, 0
	bne $t1, $t2, label701
	j label702
label701:
	li $t0, 1
	sw $t0, -14932($fp)
label702:
	addi $sp, $sp, -4
	lw $t0, -14892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14932($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14944($fp)
	addi $sp, $sp, 20
	li $t0, 54356
	sw $t0, -14948($fp)
	lw $t0, -14944($fp)
	lw $t1, -14948($fp)
	sub $t0, $t0, $t1
	sw $t0, -14952($fp)
	li $t0, 0
	sw $t0, -14956($fp)
	li $t0, 13329
	sw $t0, -14960($fp)
	lw $t1, -14960($fp)
	li $t2, 0
	bne $t1, $t2, label707
	j label706
label707:
	lw $t0, -9904($fp)
	sw $t0, -14964($fp)
	lw $t1, -14964($fp)
	li $t2, 0
	bne $t1, $t2, label704
	j label706
label706:
	lw $t0, -6208($fp)
	sw $t0, -14968($fp)
	lw $t1, -14968($fp)
	li $t2, 0
	bne $t1, $t2, label704
	j label705
label704:
	li $t0, 1
	sw $t0, -14956($fp)
label705:
	addi $t0, $fp, -5524
	sw $t0, -14972($fp)
	lw $t0, -1816($fp)
	sw $t0, -14976($fp)
	li $t0, 4
	lw $t1, -14976($fp)
	mul $t0, $t0, $t1
	sw $t0, -14980($fp)
	lw $t0, -14980($fp)
	lw $t1, -14972($fp)
	add $t0, $t0, $t1
	sw $t0, -14984($fp)
	lw $t0, -14984($fp)
	lw $t1, 0($t0)
	sw $t1, -14988($fp)
	li $t0, 0
	sw $t0, -14992($fp)
	lw $t0, -2656($fp)
	sw $t0, -14996($fp)
	lw $t0, -6208($fp)
	sw $t0, -15000($fp)
	lw $t1, -14996($fp)
	lw $t2, -15000($fp)
	blt $t1, $t2, label710
	j label709
label710:
	lw $t0, -6688($fp)
	sw $t0, -15004($fp)
	lw $t1, -15004($fp)
	li $t2, 0
	bne $t1, $t2, label708
	j label709
label708:
	li $t0, 1
	sw $t0, -14992($fp)
label709:
	addi $sp, $sp, -4
	lw $t0, -14952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14992($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15008($fp)
	addi $sp, $sp, 20
	lw $t1, -15008($fp)
	li $t2, 0
	bne $t1, $t2, label700
	j label699
label699:
	li $t0, 1
	sw $t0, -14888($fp)
label700:
	addi $t0, $fp, -144
	sw $t0, -15012($fp)
	lw $t0, -10276($fp)
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
	addi $sp, $sp, -4
	lw $t0, -14880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15028($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15032($fp)
	addi $sp, $sp, 20
	lw $t0, -9880($fp)
	sw $t0, -15036($fp)
	lw $t0, -15032($fp)
	lw $t1, -15036($fp)
	add $t0, $t0, $t1
	sw $t0, -15040($fp)
	li $t0, 0
	sw $t0, -15044($fp)
	li $t0, 0
	sw $t0, -15048($fp)
	lw $t0, -10264($fp)
	sw $t0, -15052($fp)
	lw $t0, -6724($fp)
	sw $t0, -15056($fp)
	lw $t1, -15052($fp)
	lw $t2, -15056($fp)
	bge $t1, $t2, label713
	j label714
label713:
	li $t0, 1
	sw $t0, -15048($fp)
label714:
	lw $t0, -652($fp)
	sw $t0, -15060($fp)
	lw $t1, -15048($fp)
	lw $t2, -15060($fp)
	beq $t1, $t2, label711
	j label712
label711:
	li $t0, 1
	sw $t0, -15044($fp)
label712:
	li $t0, 0
	sw $t0, -15064($fp)
	li $t0, 35866
	sw $t0, -15068($fp)
	li $t0, 28449
	sw $t0, -15072($fp)
	lw $t0, -15068($fp)
	lw $t1, -15072($fp)
	sub $t0, $t0, $t1
	sw $t0, -15076($fp)
	lw $t0, -652($fp)
	sw $t0, -15080($fp)
	lw $t1, -15076($fp)
	lw $t2, -15080($fp)
	bge $t1, $t2, label715
	j label716
label715:
	li $t0, 1
	sw $t0, -15064($fp)
label716:
	li $t0, 0
	sw $t0, -15084($fp)
	li $t0, 18934
	sw $t0, -15088($fp)
	lw $t0, -6196($fp)
	sw $t0, -15092($fp)
	lw $t0, -15088($fp)
	lw $t1, -15092($fp)
	add $t0, $t0, $t1
	sw $t0, -15096($fp)
	lw $t0, -10252($fp)
	sw $t0, -15100($fp)
	lw $t1, -15096($fp)
	lw $t2, -15100($fp)
	bne $t1, $t2, label717
	j label718
label717:
	li $t0, 1
	sw $t0, -15084($fp)
label718:
	addi $sp, $sp, -4
	lw $t0, -15040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15084($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15104($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -15108($fp)
	li $t0, 47524
	sw $t0, -15112($fp)
	lw $t1, -15112($fp)
	li $t2, 0
	bne $t1, $t2, label719
	j label720
label719:
	li $t0, 1
	sw $t0, -15108($fp)
label720:
	li $t0, 0
	sw $t0, -15116($fp)
	lw $t0, -10240($fp)
	sw $t0, -15120($fp)
	lw $t0, -5608($fp)
	sw $t0, -15124($fp)
	lw $t0, -15120($fp)
	lw $t1, -15124($fp)
	sub $t0, $t0, $t1
	sw $t0, -15128($fp)
	li $t0, 31678
	sw $t0, -15132($fp)
	lw $t1, -15128($fp)
	lw $t2, -15132($fp)
	beq $t1, $t2, label721
	j label722
label721:
	li $t0, 1
	sw $t0, -15116($fp)
label722:
	li $t0, 60293
	sw $t0, -15136($fp)
	lw $t0, -15136($fp)
	sw $t0, -2764($fp)
	lw $t0, -2764($fp)
	sw $t0, -15140($fp)
	lw $t0, -6460($fp)
	sw $t0, -15144($fp)
	lw $t0, -10360($fp)
	sw $t0, -15148($fp)
	lw $t0, -15144($fp)
	lw $t1, -15148($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15152($fp)
	addi $sp, $sp, -4
	lw $t0, -15108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15152($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15156($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -15160($fp)
	li $t0, 29837
	sw $t0, -15164($fp)
	lw $t1, -15164($fp)
	li $t2, 0
	bne $t1, $t2, label724
	j label723
label723:
	li $t0, 1
	sw $t0, -15160($fp)
label724:
	li $t0, 48646
	sw $t0, -15168($fp)
	li $t0, 0
	sw $t0, -15172($fp)
	lw $t0, -9184($fp)
	sw $t0, -15176($fp)
	lw $t1, -15176($fp)
	li $t2, 0
	bne $t1, $t2, label726
	j label725
label725:
	li $t0, 1
	sw $t0, -15172($fp)
label726:
	li $t0, 0
	lw $t1, -15172($fp)
	sub $t0, $t0, $t1
	sw $t0, -15180($fp)
	li $t0, 0
	sw $t0, -15184($fp)
	li $t0, 18662
	sw $t0, -15188($fp)
	lw $t1, -15188($fp)
	li $t2, 0
	bne $t1, $t2, label729
	j label727
label729:
	li $t0, 47654
	sw $t0, -15192($fp)
	lw $t1, -15192($fp)
	li $t2, 0
	bne $t1, $t2, label727
	j label728
label727:
	li $t0, 1
	sw $t0, -15184($fp)
label728:
	addi $sp, $sp, -4
	lw $t0, -15160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15184($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15196($fp)
	addi $sp, $sp, 20
	li $t0, 17455
	sw $t0, -15200($fp)
	li $t0, 0
	sw $t0, -15204($fp)
	li $t0, 48281
	sw $t0, -15208($fp)
	lw $t0, -10192($fp)
	sw $t0, -15212($fp)
	lw $t0, -15208($fp)
	lw $t1, -15212($fp)
	mul $t0, $t0, $t1
	sw $t0, -15216($fp)
	lw $t1, -15216($fp)
	li $t2, 0
	bne $t1, $t2, label730
	j label732
label732:
	lw $t0, -2992($fp)
	sw $t0, -15220($fp)
	lw $t1, -15220($fp)
	li $t2, 0
	bne $t1, $t2, label730
	j label731
label730:
	li $t0, 1
	sw $t0, -15204($fp)
label731:
	addi $sp, $sp, -4
	lw $t0, -15156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15204($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15224($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -15228($fp)
	li $t0, 20348
	sw $t0, -15232($fp)
	lw $t0, -616($fp)
	sw $t0, -15236($fp)
	lw $t1, -15232($fp)
	lw $t2, -15236($fp)
	bge $t1, $t2, label733
	j label734
label733:
	li $t0, 1
	sw $t0, -15228($fp)
label734:
	li $t0, 0
	sw $t0, -15240($fp)
	li $t0, 61790
	sw $t0, -15244($fp)
	lw $t1, -15244($fp)
	li $t2, 0
	bne $t1, $t2, label736
	j label735
label735:
	li $t0, 1
	sw $t0, -15240($fp)
label736:
	lw $t0, -6136($fp)
	sw $t0, -15248($fp)
	lw $t0, -15240($fp)
	lw $t1, -15248($fp)
	sub $t0, $t0, $t1
	sw $t0, -15252($fp)
	addi $sp, $sp, -4
	lw $t0, -15104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15252($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15256($fp)
	addi $sp, $sp, 20
	lw $t0, -14860($fp)
	lw $t1, -15256($fp)
	mul $t0, $t0, $t1
	sw $t0, -15260($fp)
	li $t0, 0
	lw $t1, -15260($fp)
	sub $t0, $t0, $t1
	sw $t0, -15264($fp)
	lw $t0, -14840($fp)
	lw $t1, -15264($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15268($fp)
label655:
label602:
	j label589
label588:
	lw $t0, -2692($fp)
	sw $t0, -15272($fp)
	lw $t1, -15272($fp)
	li $t2, 0
	bne $t1, $t2, label737
	j label738
label737:
	li $t0, 26775
	sw $t0, -15276($fp)
	lw $t0, -15276($fp)
	sw $t0, -15280($fp)
	lw $t0, -15280($fp)
	sw $t0, -15284($fp)
	li $t0, 15935
	sw $t0, -15288($fp)
	lw $t0, -15288($fp)
	sw $t0, -15292($fp)
	lw $t0, -15292($fp)
	sw $t0, -15296($fp)
	li $t0, 6626
	sw $t0, -15300($fp)
	lw $t0, -15300($fp)
	sw $t0, -15304($fp)
	lw $t0, -15304($fp)
	sw $t0, -15308($fp)
	li $t0, 33210
	sw $t0, -15312($fp)
	lw $t0, -15312($fp)
	sw $t0, -15316($fp)
	lw $t0, -15316($fp)
	sw $t0, -15320($fp)
	li $t0, 11268
	sw $t0, -15324($fp)
	lw $t0, -15324($fp)
	sw $t0, -15328($fp)
	lw $t0, -15328($fp)
	sw $t0, -15332($fp)
	li $t0, 0
	sw $t0, -15336($fp)
	lw $t0, -1300($fp)
	sw $t0, -15340($fp)
	li $t0, 63933
	sw $t0, -15344($fp)
	lw $t0, -15340($fp)
	lw $t1, -15344($fp)
	add $t0, $t0, $t1
	sw $t0, -15348($fp)
	lw $t0, -10024($fp)
	sw $t0, -15352($fp)
	lw $t0, -15348($fp)
	lw $t1, -15352($fp)
	sub $t0, $t0, $t1
	sw $t0, -15356($fp)
	addi $t0, $fp, -32
	sw $t0, -15360($fp)
	lw $t0, -1036($fp)
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
	li $t0, 57509
	sw $t0, -15380($fp)
	lw $t0, -15380($fp)
	sw $t0, -2308($fp)
	lw $t0, -2308($fp)
	sw $t0, -15384($fp)
	li $t0, 0
	sw $t0, -15388($fp)
	lw $t0, -15292($fp)
	sw $t0, -15392($fp)
	lw $t0, -15392($fp)
	sw $t0, -15280($fp)
	lw $t0, -15280($fp)
	sw $t0, -15396($fp)
	lw $t0, -9856($fp)
	sw $t0, -15400($fp)
	li $t0, 0
	sw $t0, -15404($fp)
	lw $t0, -6448($fp)
	sw $t0, -15408($fp)
	li $t0, 0
	lw $t1, -15408($fp)
	sub $t0, $t0, $t1
	sw $t0, -15412($fp)
	lw $t1, -15412($fp)
	li $t2, 0
	bne $t1, $t2, label747
	j label746
label747:
	lw $t0, -9160($fp)
	sw $t0, -15416($fp)
	lw $t1, -15416($fp)
	li $t2, 0
	bne $t1, $t2, label745
	j label746
label745:
	li $t0, 1
	sw $t0, -15404($fp)
label746:
	li $t0, 0
	sw $t0, -15420($fp)
	lw $t0, -2716($fp)
	sw $t0, -15424($fp)
	lw $t0, -1360($fp)
	sw $t0, -15428($fp)
	lw $t0, -15424($fp)
	lw $t1, -15428($fp)
	sub $t0, $t0, $t1
	sw $t0, -15432($fp)
	li $t0, 44499
	sw $t0, -15436($fp)
	lw $t1, -15432($fp)
	lw $t2, -15436($fp)
	blt $t1, $t2, label748
	j label749
label748:
	li $t0, 1
	sw $t0, -15420($fp)
label749:
	addi $sp, $sp, -4
	lw $t0, -15396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15420($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15440($fp)
	addi $sp, $sp, 20
	lw $t1, -15440($fp)
	li $t2, 0
	bne $t1, $t2, label742
	j label744
label744:
	lw $t0, -10360($fp)
	sw $t0, -15444($fp)
	lw $t1, -15444($fp)
	li $t2, 0
	bne $t1, $t2, label742
	j label743
label742:
	li $t0, 1
	sw $t0, -15388($fp)
label743:
	addi $sp, $sp, -4
	lw $t0, -15356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15388($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15448($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -15452($fp)
	lw $t0, -6112($fp)
	sw $t0, -15456($fp)
	li $t0, 30298
	sw $t0, -15460($fp)
	lw $t1, -15456($fp)
	lw $t2, -15460($fp)
	ble $t1, $t2, label750
	j label752
label752:
	li $t0, 43406
	sw $t0, -15464($fp)
	lw $t1, -15464($fp)
	li $t2, 0
	bne $t1, $t2, label750
	j label751
label750:
	li $t0, 1
	sw $t0, -15452($fp)
label751:
	lw $t0, -6136($fp)
	sw $t0, -15468($fp)
	lw $t0, -15468($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -15472($fp)
	li $t0, 0
	sw $t0, -15476($fp)
	lw $t0, -2680($fp)
	sw $t0, -15480($fp)
	lw $t1, -15480($fp)
	li $t2, 0
	bne $t1, $t2, label754
	j label753
label753:
	li $t0, 1
	sw $t0, -15476($fp)
label754:
	lw $t0, -6124($fp)
	sw $t0, -15484($fp)
	lw $t0, -15476($fp)
	lw $t1, -15484($fp)
	sub $t0, $t0, $t1
	sw $t0, -15488($fp)
	addi $sp, $sp, -4
	lw $t0, -15448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15488($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15492($fp)
	addi $sp, $sp, 20
	lw $t1, -15492($fp)
	li $t2, 0
	bne $t1, $t2, label741
	j label740
label740:
	li $t0, 1
	sw $t0, -15336($fp)
label741:
	li $t0, 2388
	sw $t0, -15496($fp)
	lw $t0, -15336($fp)
	lw $t1, -15496($fp)
	add $t0, $t0, $t1
	sw $t0, -15500($fp)
	li $t0, 53763
	sw $t0, -15504($fp)
	li $t0, 0
	sw $t0, -15508($fp)
	li $t0, 0
	sw $t0, -15512($fp)
	li $t0, 0
	sw $t0, -15516($fp)
	li $t0, 19464
	sw $t0, -15520($fp)
	li $t0, 37738
	sw $t0, -15524($fp)
	lw $t0, -15520($fp)
	lw $t1, -15524($fp)
	sub $t0, $t0, $t1
	sw $t0, -15528($fp)
	lw $t0, -6220($fp)
	sw $t0, -15532($fp)
	lw $t1, -15528($fp)
	lw $t2, -15532($fp)
	bge $t1, $t2, label759
	j label760
label759:
	li $t0, 1
	sw $t0, -15516($fp)
label760:
	li $t0, 0
	sw $t0, -15536($fp)
	addi $t0, $fp, -280
	sw $t0, -15540($fp)
	li $t0, 3
	sw $t0, -15544($fp)
	li $t0, 4
	lw $t1, -15544($fp)
	mul $t0, $t0, $t1
	sw $t0, -15548($fp)
	lw $t0, -15548($fp)
	lw $t1, -15540($fp)
	add $t0, $t0, $t1
	sw $t0, -15552($fp)
	lw $t0, -15552($fp)
	lw $t1, 0($t0)
	sw $t1, -15556($fp)
	li $t0, 23829
	sw $t0, -15560($fp)
	lw $t1, -15556($fp)
	lw $t2, -15560($fp)
	ble $t1, $t2, label761
	j label762
label761:
	li $t0, 1
	sw $t0, -15536($fp)
label762:
	li $t0, 0
	sw $t0, -15564($fp)
	li $t0, 0
	sw $t0, -15568($fp)
	li $t0, 59807
	sw $t0, -15572($fp)
	li $t0, 28678
	sw $t0, -15576($fp)
	lw $t0, -15572($fp)
	lw $t1, -15576($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15580($fp)
	lw $t0, -2128($fp)
	sw $t0, -15584($fp)
	lw $t1, -15580($fp)
	lw $t2, -15584($fp)
	bge $t1, $t2, label765
	j label766
label765:
	li $t0, 1
	sw $t0, -15568($fp)
label766:
	lw $t0, -6052($fp)
	sw $t0, -15588($fp)
	lw $t0, -15588($fp)
	sw $t0, -15304($fp)
	lw $t0, -15304($fp)
	sw $t0, -15592($fp)
	li $t0, 0
	sw $t0, -15596($fp)
	li $t0, 0
	sw $t0, -15600($fp)
	lw $t0, -10192($fp)
	sw $t0, -15604($fp)
	li $t0, 0
	sw $t0, -15608($fp)
	addi $t0, $fp, -8576
	sw $t0, -15612($fp)
	lw $t0, -5644($fp)
	sw $t0, -15616($fp)
	li $t0, 4
	lw $t1, -15616($fp)
	mul $t0, $t0, $t1
	sw $t0, -15620($fp)
	lw $t0, -15620($fp)
	lw $t1, -15612($fp)
	add $t0, $t0, $t1
	sw $t0, -15624($fp)
	lw $t0, -15624($fp)
	lw $t1, 0($t0)
	sw $t1, -15628($fp)
	li $t0, 56337
	sw $t0, -15632($fp)
	lw $t1, -15628($fp)
	lw $t2, -15632($fp)
	bge $t1, $t2, label771
	j label772
label771:
	li $t0, 1
	sw $t0, -15608($fp)
label772:
	li $t0, 49233
	sw $t0, -15636($fp)
	lw $t0, -1048($fp)
	sw $t0, -15640($fp)
	lw $t0, -15636($fp)
	lw $t1, -15640($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15644($fp)
	li $t0, 46478
	sw $t0, -15648($fp)
	lw $t0, -15644($fp)
	lw $t1, -15648($fp)
	add $t0, $t0, $t1
	sw $t0, -15652($fp)
	li $t0, 0
	sw $t0, -15656($fp)
	li $t0, 20471
	sw $t0, -15660($fp)
	lw $t0, -5596($fp)
	sw $t0, -15664($fp)
	lw $t1, -15660($fp)
	lw $t2, -15664($fp)
	bgt $t1, $t2, label773
	j label774
label773:
	li $t0, 1
	sw $t0, -15656($fp)
label774:
	addi $sp, $sp, -4
	lw $t0, -15604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15656($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15668($fp)
	addi $sp, $sp, 20
	lw $t1, -15668($fp)
	li $t2, 0
	bne $t1, $t2, label770
	j label769
label769:
	li $t0, 1
	sw $t0, -15600($fp)
label770:
	li $t0, 27544
	sw $t0, -15672($fp)
	lw $t0, -15672($fp)
	sw $t0, -6160($fp)
	lw $t0, -6160($fp)
	sw $t0, -15676($fp)
	lw $t0, -10072($fp)
	sw $t0, -15680($fp)
	li $t0, 1709
	sw $t0, -15684($fp)
	lw $t0, -15680($fp)
	lw $t1, -15684($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15688($fp)
	lw $t0, -2656($fp)
	sw $t0, -15692($fp)
	lw $t0, -15688($fp)
	lw $t1, -15692($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15696($fp)
	li $t0, 54328
	sw $t0, -15700($fp)
	lw $t0, -15700($fp)
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	sw $t0, -15704($fp)
	addi $sp, $sp, -4
	lw $t0, -15600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15704($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15708($fp)
	addi $sp, $sp, 20
	li $t0, 12146
	sw $t0, -15712($fp)
	lw $t1, -15708($fp)
	lw $t2, -15712($fp)
	bne $t1, $t2, label767
	j label768
label767:
	li $t0, 1
	sw $t0, -15596($fp)
label768:
	li $t0, 0
	sw $t0, -15716($fp)
	li $t0, 37407
	sw $t0, -15720($fp)
	lw $t1, -15720($fp)
	li $t2, 0
	bne $t1, $t2, label775
	j label778
label778:
	lw $t0, -9856($fp)
	sw $t0, -15724($fp)
	lw $t1, -15724($fp)
	li $t2, 0
	bne $t1, $t2, label775
	j label777
label777:
	li $t0, 32787
	sw $t0, -15728($fp)
	lw $t1, -15728($fp)
	li $t2, 0
	bne $t1, $t2, label775
	j label776
label775:
	li $t0, 1
	sw $t0, -15716($fp)
label776:
	addi $sp, $sp, -4
	lw $t0, -15568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15716($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15732($fp)
	addi $sp, $sp, 20
	lw $t0, -652($fp)
	sw $t0, -15736($fp)
	lw $t1, -15732($fp)
	lw $t2, -15736($fp)
	bge $t1, $t2, label763
	j label764
label763:
	li $t0, 1
	sw $t0, -15564($fp)
label764:
	li $t0, 5682
	sw $t0, -15740($fp)
	lw $t0, -10060($fp)
	sw $t0, -15744($fp)
	lw $t0, -15740($fp)
	lw $t1, -15744($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15748($fp)
	lw $t0, -628($fp)
	sw $t0, -15752($fp)
	lw $t0, -15748($fp)
	lw $t1, -15752($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15756($fp)
	li $t0, 0
	sw $t0, -15760($fp)
	lw $t0, -2764($fp)
	sw $t0, -15764($fp)
	li $t0, 0
	lw $t1, -15764($fp)
	sub $t0, $t0, $t1
	sw $t0, -15768($fp)
	lw $t1, -15768($fp)
	li $t2, 0
	bne $t1, $t2, label781
	j label780
label781:
	lw $t0, -10048($fp)
	sw $t0, -15772($fp)
	lw $t1, -15772($fp)
	li $t2, 0
	bne $t1, $t2, label779
	j label780
label779:
	li $t0, 1
	sw $t0, -15760($fp)
label780:
	addi $sp, $sp, -4
	lw $t0, -15536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15760($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15776($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -15780($fp)
	lw $t0, -10036($fp)
	sw $t0, -15784($fp)
	lw $t1, -15784($fp)
	li $t2, 0
	bne $t1, $t2, label785
	j label783
label785:
	lw $t0, -6448($fp)
	sw $t0, -15788($fp)
	lw $t1, -15788($fp)
	li $t2, 0
	bne $t1, $t2, label784
	j label783
label784:
	li $t0, 50669
	sw $t0, -15792($fp)
	lw $t1, -15792($fp)
	li $t2, 0
	bne $t1, $t2, label782
	j label783
label782:
	li $t0, 1
	sw $t0, -15780($fp)
label783:
	li $t0, 0
	sw $t0, -15796($fp)
	li $t0, 18745
	sw $t0, -15800($fp)
	lw $t0, -6148($fp)
	sw $t0, -15804($fp)
	lw $t0, -15800($fp)
	lw $t1, -15804($fp)
	mul $t0, $t0, $t1
	sw $t0, -15808($fp)
	lw $t1, -15808($fp)
	li $t2, 0
	bne $t1, $t2, label786
	j label788
label788:
	lw $t0, -6100($fp)
	sw $t0, -15812($fp)
	lw $t1, -15812($fp)
	li $t2, 0
	bne $t1, $t2, label786
	j label787
label786:
	li $t0, 1
	sw $t0, -15796($fp)
label787:
	addi $sp, $sp, -4
	lw $t0, -15516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -15796($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -15816($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -96
	sw $t0, -15820($fp)
	lw $t0, -15316($fp)
	sw $t0, -15824($fp)
	li $t0, 4
	lw $t1, -15824($fp)
	mul $t0, $t0, $t1
	sw $t0, -15828($fp)
	lw $t0, -15828($fp)
	lw $t1, -15820($fp)
	add $t0, $t0, $t1
	sw $t0, -15832($fp)
	lw $t0, -15832($fp)
	lw $t1, 0($t0)
	sw $t1, -15836($fp)
	lw $t0, -15816($fp)
	lw $t1, -15836($fp)
	mul $t0, $t0, $t1
	sw $t0, -15840($fp)
	li $t0, 0
	lw $t1, -15840($fp)
	sub $t0, $t0, $t1
	sw $t0, -15844($fp)
	addi $t0, $fp, -168
	sw $t0, -15848($fp)
	lw $t0, -15328($fp)
	sw $t0, -15852($fp)
	li $t0, 4
	lw $t1, -15852($fp)
	mul $t0, $t0, $t1
	sw $t0, -15856($fp)
	lw $t0, -15856($fp)
	lw $t1, -15848($fp)
	add $t0, $t0, $t1
	sw $t0, -15860($fp)
	lw $t0, -15860($fp)
	lw $t1, 0($t0)
	sw $t1, -15864($fp)
	lw $t0, -2320($fp)
	sw $t0, -15868($fp)
	lw $t0, -15864($fp)
	lw $t1, -15868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15872($fp)
	lw $t1, -15844($fp)
	lw $t2, -15872($fp)
	ble $t1, $t2, label757
	j label758
label757:
	li $t0, 1
	sw $t0, -15512($fp)
label758:
	addi $t0, $fp, -64
	sw $t0, -15876($fp)
	li $t0, 2
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
	lw $t1, -15512($fp)
	lw $t2, -15892($fp)
	ble $t1, $t2, label755
	j label756
label755:
	li $t0, 1
	sw $t0, -15508($fp)
label756:
	j label739
label738:
	addi $t0, $fp, -132
	sw $t0, -15896($fp)
	li $t0, 0
	sw $t0, -15900($fp)
	li $t0, 5413
	sw $t0, -15904($fp)
	lw $t1, -15904($fp)
	li $t2, 0
	bne $t1, $t2, label791
	j label790
label791:
	lw $t0, -2764($fp)
	sw $t0, -15908($fp)
	lw $t1, -15908($fp)
	li $t2, 0
	bne $t1, $t2, label789
	j label790
label789:
	li $t0, 1
	sw $t0, -15900($fp)
label790:
	li $t0, 4
	lw $t1, -15900($fp)
	mul $t0, $t0, $t1
	sw $t0, -15912($fp)
	lw $t0, -15912($fp)
	lw $t1, -15896($fp)
	add $t0, $t0, $t1
	sw $t0, -15916($fp)
	lw $t0, -15916($fp)
	lw $t1, 0($t0)
	sw $t1, -15920($fp)
	lw $t0, -15920($fp)
	sw $t0, -6052($fp)
	lw $t0, -6052($fp)
	sw $t0, -15924($fp)
	lw $ra, -4($fp)
	lw $v0, -15924($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label739:
label589:
	j label578
label577:
	addi $t0, $fp, -48
	sw $t0, -15928($fp)
	lw $t0, -10084($fp)
	sw $t0, -15932($fp)
	lw $t0, -6124($fp)
	sw $t0, -15936($fp)
	lw $t0, -15932($fp)
	lw $t1, -15936($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -15940($fp)
	li $t0, 4
	lw $t1, -15940($fp)
	mul $t0, $t0, $t1
	sw $t0, -15944($fp)
	lw $t0, -15944($fp)
	lw $t1, -15928($fp)
	add $t0, $t0, $t1
	sw $t0, -15948($fp)
	lw $t0, -15948($fp)
	lw $t1, 0($t0)
	sw $t1, -15952($fp)
	lw $ra, -4($fp)
	lw $v0, -15952($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label578:
label483:
	li $t0, 0
	sw $t0, -15956($fp)
	li $t0, 0
	sw $t0, -15960($fp)
	li $t0, 56388
	sw $t0, -15964($fp)
	li $t0, 48819
	sw $t0, -15968($fp)
	lw $t1, -15964($fp)
	lw $t2, -15968($fp)
	ble $t1, $t2, label797
	j label798
label797:
	li $t0, 1
	sw $t0, -15960($fp)
label798:
	lw $t0, -10384($fp)
	sw $t0, -15972($fp)
	lw $t1, -15960($fp)
	lw $t2, -15972($fp)
	blt $t1, $t2, label795
	j label796
label795:
	li $t0, 1
	sw $t0, -15956($fp)
label796:
	addi $t0, $fp, -5524
	sw $t0, -15976($fp)
	lw $t0, -2440($fp)
	sw $t0, -15980($fp)
	li $t0, 4
	lw $t1, -15980($fp)
	mul $t0, $t0, $t1
	sw $t0, -15984($fp)
	lw $t0, -15984($fp)
	lw $t1, -15976($fp)
	add $t0, $t0, $t1
	sw $t0, -15988($fp)
	lw $t0, -15988($fp)
	lw $t1, 0($t0)
	sw $t1, -15992($fp)
	lw $t0, -10168($fp)
	sw $t0, -15996($fp)
	lw $t0, -15992($fp)
	lw $t1, -15996($fp)
	add $t0, $t0, $t1
	sw $t0, -16000($fp)
	addi $t0, $fp, -8660
	sw $t0, -16004($fp)
	lw $t0, -10264($fp)
	sw $t0, -16008($fp)
	li $t0, 4
	lw $t1, -16008($fp)
	mul $t0, $t0, $t1
	sw $t0, -16012($fp)
	lw $t0, -16012($fp)
	lw $t1, -16004($fp)
	add $t0, $t0, $t1
	sw $t0, -16016($fp)
	lw $t0, -16016($fp)
	lw $t1, 0($t0)
	sw $t1, -16020($fp)
	li $t0, 51032
	sw $t0, -16024($fp)
	li $t0, 0
	lw $t1, -16024($fp)
	sub $t0, $t0, $t1
	sw $t0, -16028($fp)
	addi $sp, $sp, -4
	lw $t0, -15956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16028($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -16032($fp)
	addi $sp, $sp, 20
	lw $t1, -16032($fp)
	li $t2, 0
	bne $t1, $t2, label792
	j label793
label792:
	addi $t0, $fp, -8636
	sw $t0, -16036($fp)
	li $t0, 3
	sw $t0, -16040($fp)
	li $t0, 4
	lw $t1, -16040($fp)
	mul $t0, $t0, $t1
	sw $t0, -16044($fp)
	lw $t0, -16044($fp)
	lw $t1, -16036($fp)
	add $t0, $t0, $t1
	sw $t0, -16048($fp)
	lw $t0, -16048($fp)
	lw $t1, 0($t0)
	sw $t1, -16052($fp)
	li $t0, 0
	lw $t1, -16052($fp)
	sub $t0, $t0, $t1
	sw $t0, -16056($fp)
	li $t0, 0
	lw $t1, -16056($fp)
	sub $t0, $t0, $t1
	sw $t0, -16060($fp)
	li $t0, 0
	sw $t0, -16064($fp)
	li $t0, 0
	sw $t0, -16068($fp)
	lw $t0, -1288($fp)
	sw $t0, -16072($fp)
	lw $t1, -16072($fp)
	li $t2, 0
	bne $t1, $t2, label805
	j label804
label804:
	li $t0, 1
	sw $t0, -16068($fp)
label805:
	li $t0, 426
	sw $t0, -16076($fp)
	lw $t0, -16068($fp)
	lw $t1, -16076($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16080($fp)
	li $t0, 0
	sw $t0, -16084($fp)
	li $t0, 36588
	sw $t0, -16088($fp)
	lw $t1, -16088($fp)
	li $t2, 0
	bne $t1, $t2, label807
	j label808
label808:
	lw $t0, -2692($fp)
	sw $t0, -16092($fp)
	lw $t1, -16092($fp)
	li $t2, 0
	bne $t1, $t2, label806
	j label807
label806:
	li $t0, 1
	sw $t0, -16084($fp)
label807:
	li $t0, 0
	sw $t0, -16096($fp)
	li $t0, 47216
	sw $t0, -16100($fp)
	li $t0, 32383
	sw $t0, -16104($fp)
	lw $t0, -16100($fp)
	lw $t1, -16104($fp)
	sub $t0, $t0, $t1
	sw $t0, -16108($fp)
	lw $t1, -16108($fp)
	li $t2, 0
	bne $t1, $t2, label811
	j label810
label811:
	lw $t0, -10252($fp)
	sw $t0, -16112($fp)
	lw $t1, -16112($fp)
	li $t2, 0
	bne $t1, $t2, label809
	j label810
label809:
	li $t0, 1
	sw $t0, -16096($fp)
label810:
	li $t0, 0
	sw $t0, -16116($fp)
	lw $t0, -1312($fp)
	sw $t0, -16120($fp)
	lw $t1, -16120($fp)
	li $t2, 0
	bne $t1, $t2, label813
	j label812
label812:
	li $t0, 1
	sw $t0, -16116($fp)
label813:
	addi $sp, $sp, -4
	lw $t0, -16080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16116($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -16124($fp)
	addi $sp, $sp, 20
	lw $t1, -16124($fp)
	li $t2, 0
	bne $t1, $t2, label803
	j label802
label802:
	li $t0, 1
	sw $t0, -16064($fp)
label803:
	lw $t1, -16060($fp)
	lw $t2, -16064($fp)
	bgt $t1, $t2, label799
	j label800
label799:
	addi $t0, $fp, -8600
	sw $t0, -16128($fp)
	lw $t0, -2728($fp)
	sw $t0, -16132($fp)
	li $t0, 4
	lw $t1, -16132($fp)
	mul $t0, $t0, $t1
	sw $t0, -16136($fp)
	lw $t0, -16136($fp)
	lw $t1, -16128($fp)
	add $t0, $t0, $t1
	sw $t0, -16140($fp)
	lw $t0, -16140($fp)
	lw $t1, 0($t0)
	sw $t1, -16144($fp)
	li $t0, 37833
	sw $t0, -16148($fp)
	lw $t0, -16144($fp)
	lw $t1, -16148($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16152($fp)
	li $t0, 0
	sw $t0, -16156($fp)
	lw $t0, -1300($fp)
	sw $t0, -16160($fp)
	lw $t1, -16160($fp)
	li $t2, 0
	bne $t1, $t2, label818
	j label817
label817:
	li $t0, 1
	sw $t0, -16156($fp)
label818:
	li $t0, 42271
	sw $t0, -16164($fp)
	lw $t0, -16156($fp)
	lw $t1, -16164($fp)
	add $t0, $t0, $t1
	sw $t0, -16168($fp)
	lw $t0, -1036($fp)
	sw $t0, -16172($fp)
	lw $t0, -16172($fp)
	sw $t0, -9172($fp)
	lw $t0, -9172($fp)
	sw $t0, -16176($fp)
	lw $t0, -5644($fp)
	sw $t0, -16180($fp)
	lw $t0, -9160($fp)
	sw $t0, -16184($fp)
	lw $t0, -16180($fp)
	lw $t1, -16184($fp)
	sub $t0, $t0, $t1
	sw $t0, -16188($fp)
	li $t0, 17516
	sw $t0, -16192($fp)
	lw $t0, -16188($fp)
	lw $t1, -16192($fp)
	add $t0, $t0, $t1
	sw $t0, -16196($fp)
	addi $sp, $sp, -4
	lw $t0, -16152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16196($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -16200($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -8576
	sw $t0, -16204($fp)
	lw $t0, -6748($fp)
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
	lw $t0, -9412($fp)
	sw $t0, -16224($fp)
	lw $t0, -16220($fp)
	lw $t1, -16224($fp)
	sub $t0, $t0, $t1
	sw $t0, -16228($fp)
	li $t0, 12311
	sw $t0, -16232($fp)
	lw $t0, -16232($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -16236($fp)
	li $t0, 0
	sw $t0, -16240($fp)
	li $t0, 0
	sw $t0, -16244($fp)
	li $t0, 31063
	sw $t0, -16248($fp)
	li $t0, 39542
	sw $t0, -16252($fp)
	lw $t1, -16248($fp)
	lw $t2, -16252($fp)
	beq $t1, $t2, label821
	j label822
label821:
	li $t0, 1
	sw $t0, -16244($fp)
label822:
	lw $t0, -2728($fp)
	sw $t0, -16256($fp)
	lw $t1, -16244($fp)
	lw $t2, -16256($fp)
	beq $t1, $t2, label819
	j label820
label819:
	li $t0, 1
	sw $t0, -16240($fp)
label820:
	li $t0, 0
	sw $t0, -16260($fp)
	lw $t0, -1360($fp)
	sw $t0, -16264($fp)
	lw $t0, -9184($fp)
	sw $t0, -16268($fp)
	lw $t0, -16264($fp)
	lw $t1, -16268($fp)
	mul $t0, $t0, $t1
	sw $t0, -16272($fp)
	lw $t1, -16272($fp)
	li $t2, 0
	bne $t1, $t2, label825
	j label824
label825:
	li $t0, 50303
	sw $t0, -16276($fp)
	lw $t1, -16276($fp)
	li $t2, 0
	bne $t1, $t2, label823
	j label824
label823:
	li $t0, 1
	sw $t0, -16260($fp)
label824:
	addi $sp, $sp, -4
	lw $t0, -16228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16260($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -16280($fp)
	addi $sp, $sp, 20
	lw $t0, -10252($fp)
	sw $t0, -16284($fp)
	lw $t0, -16280($fp)
	lw $t1, -16284($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16288($fp)
	li $t0, 51534
	sw $t0, -16292($fp)
	lw $t0, -16288($fp)
	lw $t1, -16292($fp)
	mul $t0, $t0, $t1
	sw $t0, -16296($fp)
	lw $t0, -16200($fp)
	lw $t1, -16296($fp)
	sub $t0, $t0, $t1
	sw $t0, -16300($fp)
	lw $t1, -16300($fp)
	li $t2, 0
	bne $t1, $t2, label814
	j label815
label814:
	li $t0, 0
	sw $t0, -16304($fp)
	li $t0, 42335
	sw $t0, -16308($fp)
	lw $t1, -16308($fp)
	li $t2, 0
	bne $t1, $t2, label832
	j label831
label832:
	lw $t0, -6724($fp)
	sw $t0, -16312($fp)
	lw $t1, -16312($fp)
	li $t2, 0
	bne $t1, $t2, label829
	j label831
label831:
	lw $t0, -9460($fp)
	sw $t0, -16316($fp)
	lw $t1, -16316($fp)
	li $t2, 0
	bne $t1, $t2, label829
	j label830
label829:
	li $t0, 1
	sw $t0, -16304($fp)
label830:
	li $t0, 0
	sw $t0, -16320($fp)
	lw $t0, -2440($fp)
	sw $t0, -16324($fp)
	lw $t1, -16324($fp)
	li $t2, 0
	bne $t1, $t2, label836
	j label835
label836:
	lw $t0, -9160($fp)
	sw $t0, -16328($fp)
	lw $t1, -16328($fp)
	li $t2, 0
	bne $t1, $t2, label833
	j label835
label835:
	lw $t0, -9448($fp)
	sw $t0, -16332($fp)
	lw $t1, -16332($fp)
	li $t2, 0
	bne $t1, $t2, label833
	j label834
label833:
	li $t0, 1
	sw $t0, -16320($fp)
label834:
	li $t0, 23239
	sw $t0, -16336($fp)
	li $t0, 58789
	sw $t0, -16340($fp)
	lw $t0, -16336($fp)
	lw $t1, -16340($fp)
	mul $t0, $t0, $t1
	sw $t0, -16344($fp)
	lw $t0, -9436($fp)
	sw $t0, -16348($fp)
	lw $t0, -16348($fp)
	sw $t0, -9424($fp)
	lw $t0, -9424($fp)
	sw $t0, -16352($fp)
	addi $sp, $sp, -4
	lw $t0, -16304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16352($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -16356($fp)
	addi $sp, $sp, 20
	lw $t1, -16356($fp)
	li $t2, 0
	bne $t1, $t2, label826
	j label827
label826:
	li $t0, 0
	sw $t0, -16360($fp)
	li $t0, 0
	sw $t0, -16364($fp)
	li $t0, 35386
	sw $t0, -16368($fp)
	lw $t1, -16368($fp)
	li $t2, 0
	bne $t1, $t2, label840
	j label839
label839:
	li $t0, 1
	sw $t0, -16364($fp)
label840:
	lw $t0, -2704($fp)
	sw $t0, -16372($fp)
	lw $t0, -16364($fp)
	lw $t1, -16372($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16376($fp)
	lw $t0, -9472($fp)
	sw $t0, -16380($fp)
	lw $t0, -6748($fp)
	sw $t0, -16384($fp)
	lw $t0, -16380($fp)
	lw $t1, -16384($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16388($fp)
	lw $t1, -16376($fp)
	lw $t2, -16388($fp)
	beq $t1, $t2, label837
	j label838
label837:
	li $t0, 1
	sw $t0, -16360($fp)
label838:
	lw $t0, -16360($fp)
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	sw $t0, -16392($fp)
	lw $ra, -4($fp)
	lw $v0, -16392($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label828
label827:
	li $t0, 0
	sw $t0, -16396($fp)
	li $t0, 0
	sw $t0, -16400($fp)
	lw $t0, -6208($fp)
	sw $t0, -16404($fp)
	lw $t0, -9484($fp)
	sw $t0, -16408($fp)
	lw $t0, -16404($fp)
	lw $t1, -16408($fp)
	mul $t0, $t0, $t1
	sw $t0, -16412($fp)
	addi $t0, $fp, -332
	sw $t0, -16416($fp)
	li $t0, 7
	sw $t0, -16420($fp)
	li $t0, 4
	lw $t1, -16420($fp)
	mul $t0, $t0, $t1
	sw $t0, -16424($fp)
	lw $t0, -16424($fp)
	lw $t1, -16416($fp)
	add $t0, $t0, $t1
	sw $t0, -16428($fp)
	lw $t0, -16428($fp)
	lw $t1, 0($t0)
	sw $t1, -16432($fp)
	lw $t0, -16412($fp)
	lw $t1, -16432($fp)
	mul $t0, $t0, $t1
	sw $t0, -16436($fp)
	lw $t0, -2440($fp)
	sw $t0, -16440($fp)
	lw $t1, -16436($fp)
	lw $t2, -16440($fp)
	bge $t1, $t2, label843
	j label844
label843:
	li $t0, 1
	sw $t0, -16400($fp)
label844:
	li $t0, 36352
	sw $t0, -16444($fp)
	lw $t1, -16400($fp)
	lw $t2, -16444($fp)
	ble $t1, $t2, label841
	j label842
label841:
	li $t0, 1
	sw $t0, -16396($fp)
label842:
	lw $ra, -4($fp)
	lw $v0, -16396($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label828:
	j label816
label815:
	li $t0, 64024
	sw $t0, -16448($fp)
	addi $t0, $fp, -264
	sw $t0, -16452($fp)
	lw $t0, -6172($fp)
	sw $t0, -16456($fp)
	li $t0, 4
	lw $t1, -16456($fp)
	mul $t0, $t0, $t1
	sw $t0, -16460($fp)
	lw $t0, -16460($fp)
	lw $t1, -16452($fp)
	add $t0, $t0, $t1
	sw $t0, -16464($fp)
	lw $t0, -16464($fp)
	lw $t1, 0($t0)
	sw $t1, -16468($fp)
	lw $t0, -16448($fp)
	lw $t1, -16468($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16472($fp)
	lw $t0, -16472($fp)
	sw $t0, -5620($fp)
	lw $t0, -5620($fp)
	sw $t0, -16476($fp)
	lw $t1, -16476($fp)
	li $t2, 0
	bne $t1, $t2, label845
	j label846
label845:
	li $t0, 0
	sw $t0, -16480($fp)
	li $t0, 0
	sw $t0, -16484($fp)
	lw $t0, -6460($fp)
	sw $t0, -16488($fp)
	li $t0, 29306
	sw $t0, -16492($fp)
	lw $t0, -16488($fp)
	lw $t1, -16492($fp)
	mul $t0, $t0, $t1
	sw $t0, -16496($fp)
	lw $t0, -10204($fp)
	sw $t0, -16500($fp)
	lw $t0, -10216($fp)
	sw $t0, -16504($fp)
	lw $t0, -16500($fp)
	lw $t1, -16504($fp)
	add $t0, $t0, $t1
	sw $t0, -16508($fp)
	lw $t1, -16496($fp)
	lw $t2, -16508($fp)
	bge $t1, $t2, label851
	j label852
label851:
	li $t0, 1
	sw $t0, -16484($fp)
label852:
	li $t0, 0
	sw $t0, -16512($fp)
	li $t0, 55816
	sw $t0, -16516($fp)
	li $t0, 0
	lw $t1, -16516($fp)
	sub $t0, $t0, $t1
	sw $t0, -16520($fp)
	lw $t1, -16520($fp)
	li $t2, 0
	bne $t1, $t2, label854
	j label853
label853:
	li $t0, 1
	sw $t0, -16512($fp)
label854:
	lw $t1, -16484($fp)
	lw $t2, -16512($fp)
	ble $t1, $t2, label848
	j label850
label850:
	li $t0, 36226
	sw $t0, -16524($fp)
	lw $t1, -16524($fp)
	li $t2, 0
	bne $t1, $t2, label848
	j label849
label848:
	li $t0, 1
	sw $t0, -16480($fp)
label849:
	j label847
label846:
label855:
	lw $t0, -2524($fp)
	sw $t0, -16528($fp)
	li $t0, 0
	lw $t1, -16528($fp)
	sub $t0, $t0, $t1
	sw $t0, -16532($fp)
	li $t0, 0
	lw $t1, -16532($fp)
	sub $t0, $t0, $t1
	sw $t0, -16536($fp)
	lw $t1, -16536($fp)
	li $t2, 0
	bne $t1, $t2, label856
	j label857
label856:
	li $t0, 0
	sw $t0, -16540($fp)
	li $t0, 7223
	sw $t0, -16544($fp)
	li $t0, 24922
	sw $t0, -16548($fp)
	lw $t0, -16544($fp)
	lw $t1, -16548($fp)
	add $t0, $t0, $t1
	sw $t0, -16552($fp)
	lw $t1, -16552($fp)
	li $t2, 0
	bne $t1, $t2, label860
	j label859
label860:
	lw $t0, -2524($fp)
	sw $t0, -16556($fp)
	lw $t1, -16556($fp)
	li $t2, 0
	bne $t1, $t2, label858
	j label859
label858:
	li $t0, 1
	sw $t0, -16540($fp)
label859:
	li $t0, 0
	sw $t0, -16560($fp)
	lw $t0, -2512($fp)
	sw $t0, -16564($fp)
	li $t0, 54566
	sw $t0, -16568($fp)
	lw $t1, -16564($fp)
	lw $t2, -16568($fp)
	bgt $t1, $t2, label863
	j label862
label863:
	lw $t0, -6472($fp)
	sw $t0, -16572($fp)
	lw $t1, -16572($fp)
	li $t2, 0
	bne $t1, $t2, label861
	j label862
label861:
	li $t0, 1
	sw $t0, -16560($fp)
label862:
	li $t0, 0
	sw $t0, -16576($fp)
	lw $t0, -2512($fp)
	sw $t0, -16580($fp)
	lw $t1, -16580($fp)
	li $t2, 0
	bne $t1, $t2, label864
	j label866
label866:
	li $t0, 41639
	sw $t0, -16584($fp)
	lw $t1, -16584($fp)
	li $t2, 0
	bne $t1, $t2, label864
	j label865
label864:
	li $t0, 1
	sw $t0, -16576($fp)
label865:
	li $t0, 3534
	sw $t0, -16588($fp)
	li $t0, 16371
	sw $t0, -16592($fp)
	lw $t0, -16588($fp)
	lw $t1, -16592($fp)
	sub $t0, $t0, $t1
	sw $t0, -16596($fp)
	lw $t0, 8($fp)
	sw $t0, -16600($fp)
	lw $t0, -16596($fp)
	lw $t1, -16600($fp)
	sub $t0, $t0, $t1
	sw $t0, -16604($fp)
	addi $sp, $sp, -4
	lw $t0, -16540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16604($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -16608($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -296
	sw $t0, -16612($fp)
	li $t0, 0
	sw $t0, -16616($fp)
	lw $t0, -6208($fp)
	sw $t0, -16620($fp)
	lw $t1, -16620($fp)
	li $t2, 0
	bne $t1, $t2, label869
	j label868
label869:
	lw $t0, -9868($fp)
	sw $t0, -16624($fp)
	lw $t1, -16624($fp)
	li $t2, 0
	bne $t1, $t2, label867
	j label868
label867:
	li $t0, 1
	sw $t0, -16616($fp)
label868:
	li $t0, 4
	lw $t1, -16616($fp)
	mul $t0, $t0, $t1
	sw $t0, -16628($fp)
	lw $t0, -16628($fp)
	lw $t1, -16612($fp)
	add $t0, $t0, $t1
	sw $t0, -16632($fp)
	lw $t0, -16632($fp)
	lw $t1, 0($t0)
	sw $t1, -16636($fp)
	lw $t0, -16608($fp)
	lw $t1, -16636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16640($fp)
	li $t0, 0
	sw $t0, -16644($fp)
	li $t0, 19026
	sw $t0, -16648($fp)
	lw $t0, -2992($fp)
	sw $t0, -16652($fp)
	lw $t0, -6484($fp)
	sw $t0, -16656($fp)
	li $t0, 0
	lw $t1, -16656($fp)
	sub $t0, $t0, $t1
	sw $t0, -16660($fp)
	lw $t0, -16652($fp)
	lw $t1, -16660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16664($fp)
	lw $t1, -16648($fp)
	lw $t2, -16664($fp)
	bge $t1, $t2, label870
	j label871
label870:
	li $t0, 1
	sw $t0, -16644($fp)
label871:
	j label855
label857:
label847:
label816:
	j label801
label800:
	li $t0, 55585
	sw $t0, -16668($fp)
	lw $t0, -16668($fp)
	sw $t0, -16672($fp)
	lw $t0, -16672($fp)
	sw $t0, -16676($fp)
	li $t0, 6603
	sw $t0, -16680($fp)
	lw $t0, -16680($fp)
	sw $t0, -16684($fp)
	lw $t0, -16684($fp)
	sw $t0, -16688($fp)
	lw $t0, -2668($fp)
	sw $t0, -16692($fp)
	li $t0, 51409
	sw $t0, -16696($fp)
	lw $t0, -16692($fp)
	lw $t1, -16696($fp)
	mul $t0, $t0, $t1
	sw $t0, -16700($fp)
	lw $t0, -16700($fp)
	sw $t0, -9484($fp)
	lw $t0, -9484($fp)
	sw $t0, -16704($fp)
	lw $t0, -16704($fp)
	sw $t0, -16672($fp)
	lw $t0, -16672($fp)
	sw $t0, -16708($fp)
	li $t0, 0
	sw $t0, -16712($fp)
	addi $t0, $fp, -5552
	sw $t0, -16716($fp)
	lw $t0, -2668($fp)
	sw $t0, -16720($fp)
	li $t0, 4
	lw $t1, -16720($fp)
	mul $t0, $t0, $t1
	sw $t0, -16724($fp)
	lw $t0, -16724($fp)
	lw $t1, -16716($fp)
	add $t0, $t0, $t1
	sw $t0, -16728($fp)
	lw $t0, -16728($fp)
	lw $t1, 0($t0)
	sw $t1, -16732($fp)
	addi $t0, $fp, -64
	sw $t0, -16736($fp)
	lw $t0, -2296($fp)
	sw $t0, -16740($fp)
	li $t0, 4
	lw $t1, -16740($fp)
	mul $t0, $t0, $t1
	sw $t0, -16744($fp)
	lw $t0, -16744($fp)
	lw $t1, -16736($fp)
	add $t0, $t0, $t1
	sw $t0, -16748($fp)
	lw $t0, -16748($fp)
	lw $t1, 0($t0)
	sw $t1, -16752($fp)
	lw $t0, -16732($fp)
	lw $t1, -16752($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16756($fp)
	li $t0, 0
	sw $t0, -16760($fp)
	li $t0, 42108
	sw $t0, -16764($fp)
	li $t0, 1
	sw $t0, -16768($fp)
	lw $t0, -16764($fp)
	lw $t1, -16768($fp)
	mul $t0, $t0, $t1
	sw $t0, -16772($fp)
	addi $t0, $fp, -296
	sw $t0, -16776($fp)
	li $t0, 2
	sw $t0, -16780($fp)
	li $t0, 4
	lw $t1, -16780($fp)
	mul $t0, $t0, $t1
	sw $t0, -16784($fp)
	lw $t0, -16784($fp)
	lw $t1, -16776($fp)
	add $t0, $t0, $t1
	sw $t0, -16788($fp)
	lw $t0, -16788($fp)
	lw $t1, 0($t0)
	sw $t1, -16792($fp)
	lw $t0, -16684($fp)
	sw $t0, -16796($fp)
	lw $t0, -10252($fp)
	sw $t0, -16800($fp)
	lw $t0, -16796($fp)
	lw $t1, -16800($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16804($fp)
	li $t0, 18869
	sw $t0, -16808($fp)
	lw $t0, -16804($fp)
	lw $t1, -16808($fp)
	sub $t0, $t0, $t1
	sw $t0, -16812($fp)
	li $t0, 0
	sw $t0, -16816($fp)
	li $t0, 53693
	sw $t0, -16820($fp)
	lw $t0, -2644($fp)
	sw $t0, -16824($fp)
	lw $t0, -16820($fp)
	lw $t1, -16824($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16828($fp)
	li $t0, 34436
	sw $t0, -16832($fp)
	lw $t1, -16828($fp)
	lw $t2, -16832($fp)
	beq $t1, $t2, label877
	j label878
label877:
	li $t0, 1
	sw $t0, -16816($fp)
label878:
	addi $sp, $sp, -4
	lw $t0, -16772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16816($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -16836($fp)
	addi $sp, $sp, 20
	lw $t1, -16836($fp)
	li $t2, 0
	bne $t1, $t2, label874
	j label876
label876:
	lw $t0, -6736($fp)
	sw $t0, -16840($fp)
	lw $t1, -16840($fp)
	li $t2, 0
	bne $t1, $t2, label874
	j label875
label874:
	li $t0, 1
	sw $t0, -16760($fp)
label875:
	li $t0, 0
	sw $t0, -16844($fp)
	lw $t0, -6664($fp)
	sw $t0, -16848($fp)
	lw $t0, -2992($fp)
	sw $t0, -16852($fp)
	lw $t1, -16848($fp)
	lw $t2, -16852($fp)
	beq $t1, $t2, label879
	j label881
label881:
	li $t0, 44862
	sw $t0, -16856($fp)
	lw $t1, -16856($fp)
	li $t2, 0
	bne $t1, $t2, label879
	j label880
label879:
	li $t0, 1
	sw $t0, -16844($fp)
label880:
	li $t0, 0
	sw $t0, -16860($fp)
	li $t0, 3372
	sw $t0, -16864($fp)
	li $t0, 0
	lw $t1, -16864($fp)
	sub $t0, $t0, $t1
	sw $t0, -16868($fp)
	lw $t0, -2668($fp)
	sw $t0, -16872($fp)
	lw $t1, -16868($fp)
	lw $t2, -16872($fp)
	bne $t1, $t2, label882
	j label883
label882:
	li $t0, 1
	sw $t0, -16860($fp)
label883:
	li $t0, 0
	sw $t0, -16876($fp)
	li $t0, 0
	sw $t0, -16880($fp)
	li $t0, 26637
	sw $t0, -16884($fp)
	li $t0, 7029
	sw $t0, -16888($fp)
	lw $t1, -16884($fp)
	lw $t2, -16888($fp)
	beq $t1, $t2, label886
	j label887
label886:
	li $t0, 1
	sw $t0, -16880($fp)
label887:
	li $t0, 3390
	sw $t0, -16892($fp)
	lw $t1, -16880($fp)
	lw $t2, -16892($fp)
	beq $t1, $t2, label884
	j label885
label884:
	li $t0, 1
	sw $t0, -16876($fp)
label885:
	addi $sp, $sp, -4
	lw $t0, -16760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16876($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -16896($fp)
	addi $sp, $sp, 20
	li $t0, 62770
	sw $t0, -16900($fp)
	lw $t0, -16896($fp)
	lw $t1, -16900($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -16904($fp)
	lw $t0, -16756($fp)
	lw $t1, -16904($fp)
	sub $t0, $t0, $t1
	sw $t0, -16908($fp)
	li $t0, 11958
	sw $t0, -16912($fp)
	lw $t1, -16908($fp)
	lw $t2, -16912($fp)
	bgt $t1, $t2, label872
	j label873
label872:
	li $t0, 1
	sw $t0, -16712($fp)
label873:
	li $t0, 0
	sw $t0, -16916($fp)
	addi $t0, $fp, -48
	sw $t0, -16920($fp)
	lw $t0, -976($fp)
	sw $t0, -16924($fp)
	li $t0, 4
	lw $t1, -16924($fp)
	mul $t0, $t0, $t1
	sw $t0, -16928($fp)
	lw $t0, -16928($fp)
	lw $t1, -16920($fp)
	add $t0, $t0, $t1
	sw $t0, -16932($fp)
	lw $t0, -16932($fp)
	lw $t1, 0($t0)
	sw $t1, -16936($fp)
	lw $t0, 16($fp)
	sw $t0, -16940($fp)
	lw $t1, -16936($fp)
	lw $t2, -16940($fp)
	bne $t1, $t2, label892
	j label890
label892:
	lw $t0, -1276($fp)
	sw $t0, -16944($fp)
	lw $t0, -2632($fp)
	sw $t0, -16948($fp)
	lw $t0, -16944($fp)
	lw $t1, -16948($fp)
	mul $t0, $t0, $t1
	sw $t0, -16952($fp)
	lw $t1, -16952($fp)
	li $t2, 0
	bne $t1, $t2, label891
	j label890
label891:
	li $t0, 45271
	sw $t0, -16956($fp)
	lw $t0, -6676($fp)
	sw $t0, -16960($fp)
	lw $t0, -16956($fp)
	lw $t1, -16960($fp)
	mul $t0, $t0, $t1
	sw $t0, -16964($fp)
	lw $t0, -6100($fp)
	sw $t0, -16968($fp)
	lw $t0, -16964($fp)
	lw $t1, -16968($fp)
	mul $t0, $t0, $t1
	sw $t0, -16972($fp)
	lw $t0, -6448($fp)
	sw $t0, -16976($fp)
	li $t0, 48311
	sw $t0, -16980($fp)
	lw $t0, -16980($fp)
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	sw $t0, -16984($fp)
	li $t0, 0
	sw $t0, -16988($fp)
	li $t0, 46783
	sw $t0, -16992($fp)
	lw $t0, -2644($fp)
	sw $t0, -16996($fp)
	lw $t0, -16992($fp)
	lw $t1, -16996($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -17000($fp)
	lw $t1, -17000($fp)
	li $t2, 0
	bne $t1, $t2, label895
	j label894
label895:
	li $t0, 2711
	sw $t0, -17004($fp)
	lw $t1, -17004($fp)
	li $t2, 0
	bne $t1, $t2, label893
	j label894
label893:
	li $t0, 1
	sw $t0, -16988($fp)
label894:
	addi $sp, $sp, -4
	lw $t0, -16972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -16988($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -17008($fp)
	addi $sp, $sp, 20
	lw $t1, -17008($fp)
	li $t2, 0
	bne $t1, $t2, label888
	j label890
label890:
	lw $t0, -9856($fp)
	sw $t0, -17012($fp)
	lw $t0, -17012($fp)
	sw $t0, -2656($fp)
	lw $t0, -2656($fp)
	sw $t0, -17016($fp)
	li $t0, 0
	sw $t0, -17020($fp)
	lw $t0, -2500($fp)
	sw $t0, -17024($fp)
	li $t0, 62186
	sw $t0, -17028($fp)
	lw $t0, -17024($fp)
	lw $t1, -17028($fp)
	add $t0, $t0, $t1
	sw $t0, -17032($fp)
	li $t0, 16987
	sw $t0, -17036($fp)
	lw $t1, -17032($fp)
	lw $t2, -17036($fp)
	beq $t1, $t2, label896
	j label897
label896:
	li $t0, 1
	sw $t0, -17020($fp)
label897:
	li $t0, 0
	sw $t0, -17040($fp)
	addi $t0, $fp, -8600
	sw $t0, -17044($fp)
	li $t0, 5
	sw $t0, -17048($fp)
	li $t0, 4
	lw $t1, -17048($fp)
	mul $t0, $t0, $t1
	sw $t0, -17052($fp)
	lw $t0, -17052($fp)
	lw $t1, -17044($fp)
	add $t0, $t0, $t1
	sw $t0, -17056($fp)
	lw $t0, -17056($fp)
	lw $t1, 0($t0)
	sw $t1, -17060($fp)
	li $t0, 24583
	sw $t0, -17064($fp)
	lw $t1, -17060($fp)
	lw $t2, -17064($fp)
	bgt $t1, $t2, label898
	j label899
label898:
	li $t0, 1
	sw $t0, -17040($fp)
label899:
	addi $t0, $fp, -280
	sw $t0, -17068($fp)
	lw $t0, -6460($fp)
	sw $t0, -17072($fp)
	li $t0, 4
	lw $t1, -17072($fp)
	mul $t0, $t0, $t1
	sw $t0, -17076($fp)
	lw $t0, -17076($fp)
	lw $t1, -17068($fp)
	add $t0, $t0, $t1
	sw $t0, -17080($fp)
	lw $t0, -17080($fp)
	lw $t1, 0($t0)
	sw $t1, -17084($fp)
	li $t0, 15961
	sw $t0, -17088($fp)
	lw $t0, -17084($fp)
	lw $t1, -17088($fp)
	add $t0, $t0, $t1
	sw $t0, -17092($fp)
	li $t0, 0
	sw $t0, -17096($fp)
	lw $t0, -2692($fp)
	sw $t0, -17100($fp)
	li $t0, 38591
	sw $t0, -17104($fp)
	lw $t1, -17100($fp)
	lw $t2, -17104($fp)
	bne $t1, $t2, label902
	j label901
label902:
	lw $t0, -2512($fp)
	sw $t0, -17108($fp)
	lw $t1, -17108($fp)
	li $t2, 0
	bne $t1, $t2, label900
	j label901
label900:
	li $t0, 1
	sw $t0, -17096($fp)
label901:
	li $t0, 0
	sw $t0, -17112($fp)
	li $t0, 0
	sw $t0, -17116($fp)
	lw $t0, -1024($fp)
	sw $t0, -17120($fp)
	lw $t0, -988($fp)
	sw $t0, -17124($fp)
	lw $t1, -17120($fp)
	lw $t2, -17124($fp)
	ble $t1, $t2, label905
	j label906
label905:
	li $t0, 1
	sw $t0, -17116($fp)
label906:
	li $t0, 32018
	sw $t0, -17128($fp)
	lw $t1, -17116($fp)
	lw $t2, -17128($fp)
	bgt $t1, $t2, label903
	j label904
label903:
	li $t0, 1
	sw $t0, -17112($fp)
label904:
	lw $t0, -10228($fp)
	sw $t0, -17132($fp)
	addi $sp, $sp, -4
	lw $t0, -17092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17132($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -17136($fp)
	addi $sp, $sp, 20
	li $t0, 35552
	sw $t0, -17140($fp)
	lw $t0, -17136($fp)
	lw $t1, -17140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -17144($fp)
	addi $sp, $sp, -4
	lw $t0, -17016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -17144($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -17148($fp)
	addi $sp, $sp, 20
	lw $t1, -17148($fp)
	li $t2, 0
	bne $t1, $t2, label888
	j label889
label888:
	li $t0, 1
	sw $t0, -16916($fp)
label889:
	li $t0, 0
	sw $t0, -17152($fp)
	li $t0, 0
	sw $t0, -17156($fp)
	li $t0, 0
	sw $t0, -17160($fp)
	addi $t0, $fp, -296
	sw $t0, -17164($fp)
	lw $t0, -6172($fp)
	sw $t0, -17168($fp)
	li $t0, 4
	lw $t1, -17168($fp)
	mul $t0, $t0, $t1
	sw $t0, -17172($fp)
	lw $t0, -17172($fp)
	lw $t1, -17164($fp)
	add $t0, $t0, $t1
	sw $t0, -17176($fp)
	lw $t0, -17176($fp)
	lw $t1, 0($t0)
	sw $t1, -17180($fp)
	lw $t1, -17180($fp)
	li $t2, 0
	bne $t1, $t2, label912
	j label911
label911:
	li $t0, 1
	sw $t0, -17160($fp)
label912:
	li $t0, 0
	lw $t1, -17160($fp)
	sub $t0, $t0, $t1
	sw $t0, -17184($fp)
	li $t0, 43609
	sw $t0, -17188($fp)
	lw $t1, -17184($fp)
	lw $t2, -17188($fp)
	ble $t1, $t2, label909
	j label910
label909:
	li $t0, 1
	sw $t0, -17156($fp)
label910:
	li $t0, 0
	sw $t0, -17192($fp)
	addi $t0, $fp, -144
	sw $t0, -17196($fp)
	lw $t0, -5632($fp)
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
	li $t0, 52235
	sw $t0, -17216($fp)
	lw $t0, -17212($fp)
	lw $t1, -17216($fp)
	add $t0, $t0, $t1
	sw $t0, -17220($fp)
	lw $t0, -2632($fp)
	sw $t0, -17224($fp)
	lw $t1, -17220($fp)
	lw $t2, -17224($fp)
	bgt $t1, $t2, label913
	j label914
label913:
	li $t0, 1
	sw $t0, -17192($fp)
label914:
	lw $t1, -17156($fp)
	lw $t2, -17192($fp)
	beq $t1, $t2, label907
	j label908
label907:
	li $t0, 1
	sw $t0, -17152($fp)
label908:
	addi $t0, $fp, -264
	sw $t0, -17228($fp)
	li $t0, 2
	sw $t0, -17232($fp)
	li $t0, 4
	lw $t1, -17232($fp)
	mul $t0, $t0, $t1
	sw $t0, -17236($fp)
	lw $t0, -17236($fp)
	lw $t1, -17228($fp)
	add $t0, $t0, $t1
	sw $t0, -17240($fp)
	lw $t0, -17240($fp)
	lw $t1, 0($t0)
	sw $t1, -17244($fp)
	li $t0, 0
	sw $t0, -17248($fp)
	lw $t0, -1372($fp)
	sw $t0, -17252($fp)
	lw $t1, -17252($fp)
	li $t2, 0
	bne $t1, $t2, label917
	j label916
label917:
	li $t0, 13336
	sw $t0, -17256($fp)
	addi $t0, $fp, -8636
	sw $t0, -17260($fp)
	li $t0, 4
	sw $t0, -17264($fp)
	li $t0, 4
	lw $t1, -17264($fp)
	mul $t0, $t0, $t1
	sw $t0, -17268($fp)
	lw $t0, -17268($fp)
	lw $t1, -17260($fp)
	add $t0, $t0, $t1
	sw $t0, -17272($fp)
	lw $t0, -17272($fp)
	lw $t1, 0($t0)
	sw $t1, -17276($fp)
	lw $t0, -17256($fp)
	lw $t1, -17276($fp)
	mul $t0, $t0, $t1
	sw $t0, -17280($fp)
	lw $t1, -17280($fp)
	li $t2, 0
	bne $t1, $t2, label915
	j label916
label915:
	li $t0, 1
	sw $t0, -17248($fp)
label916:
label801:
label793:
	lw $t0, -5560($fp)
	sw $t0, -17284($fp)
	lw $t0, -17284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5572($fp)
	sw $t0, -17288($fp)
	lw $t0, -17288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5584($fp)
	sw $t0, -17292($fp)
	lw $t0, -17292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5596($fp)
	sw $t0, -17296($fp)
	lw $t0, -17296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5608($fp)
	sw $t0, -17300($fp)
	lw $t0, -17300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5620($fp)
	sw $t0, -17304($fp)
	lw $t0, -17304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5632($fp)
	sw $t0, -17308($fp)
	lw $t0, -17308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5644($fp)
	sw $t0, -17312($fp)
	lw $t0, -17312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5456
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
	addi $t0, $fp, -5456
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
	addi $t0, $fp, -5456
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
	addi $t0, $fp, -5456
	sw $t0, -17376($fp)
	li $t0, 3
	sw $t0, -17380($fp)
	li $t0, 4
	lw $t1, -17380($fp)
	mul $t0, $t0, $t1
	sw $t0, -17384($fp)
	lw $t0, -17384($fp)
	lw $t1, -17376($fp)
	add $t0, $t0, $t1
	sw $t0, -17388($fp)
	lw $t0, -17388($fp)
	lw $t1, 0($t0)
	sw $t1, -17392($fp)
	lw $t0, -17392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5456
	sw $t0, -17396($fp)
	li $t0, 4
	sw $t0, -17400($fp)
	li $t0, 4
	lw $t1, -17400($fp)
	mul $t0, $t0, $t1
	sw $t0, -17404($fp)
	lw $t0, -17404($fp)
	lw $t1, -17396($fp)
	add $t0, $t0, $t1
	sw $t0, -17408($fp)
	lw $t0, -17408($fp)
	lw $t1, 0($t0)
	sw $t1, -17412($fp)
	lw $t0, -17412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5456
	sw $t0, -17416($fp)
	li $t0, 5
	sw $t0, -17420($fp)
	li $t0, 4
	lw $t1, -17420($fp)
	mul $t0, $t0, $t1
	sw $t0, -17424($fp)
	lw $t0, -17424($fp)
	lw $t1, -17416($fp)
	add $t0, $t0, $t1
	sw $t0, -17428($fp)
	lw $t0, -17428($fp)
	lw $t1, 0($t0)
	sw $t1, -17432($fp)
	lw $t0, -17432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5456
	sw $t0, -17436($fp)
	li $t0, 6
	sw $t0, -17440($fp)
	li $t0, 4
	lw $t1, -17440($fp)
	mul $t0, $t0, $t1
	sw $t0, -17444($fp)
	lw $t0, -17444($fp)
	lw $t1, -17436($fp)
	add $t0, $t0, $t1
	sw $t0, -17448($fp)
	lw $t0, -17448($fp)
	lw $t1, 0($t0)
	sw $t1, -17452($fp)
	lw $t0, -17452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5456
	sw $t0, -17456($fp)
	li $t0, 7
	sw $t0, -17460($fp)
	li $t0, 4
	lw $t1, -17460($fp)
	mul $t0, $t0, $t1
	sw $t0, -17464($fp)
	lw $t0, -17464($fp)
	lw $t1, -17456($fp)
	add $t0, $t0, $t1
	sw $t0, -17468($fp)
	lw $t0, -17468($fp)
	lw $t1, 0($t0)
	sw $t1, -17472($fp)
	lw $t0, -17472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5488
	sw $t0, -17476($fp)
	li $t0, 0
	sw $t0, -17480($fp)
	li $t0, 4
	lw $t1, -17480($fp)
	mul $t0, $t0, $t1
	sw $t0, -17484($fp)
	lw $t0, -17484($fp)
	lw $t1, -17476($fp)
	add $t0, $t0, $t1
	sw $t0, -17488($fp)
	lw $t0, -17488($fp)
	lw $t1, 0($t0)
	sw $t1, -17492($fp)
	lw $t0, -17492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5488
	sw $t0, -17496($fp)
	li $t0, 1
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
	addi $t0, $fp, -5488
	sw $t0, -17516($fp)
	li $t0, 2
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
	addi $t0, $fp, -5488
	sw $t0, -17536($fp)
	li $t0, 3
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
	addi $t0, $fp, -5488
	sw $t0, -17556($fp)
	li $t0, 4
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
	addi $t0, $fp, -5488
	sw $t0, -17576($fp)
	li $t0, 5
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
	addi $t0, $fp, -5488
	sw $t0, -17596($fp)
	li $t0, 6
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
	addi $t0, $fp, -5488
	sw $t0, -17616($fp)
	li $t0, 7
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
	lw $t0, -6040($fp)
	sw $t0, -17636($fp)
	lw $t0, -17636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6052($fp)
	sw $t0, -17640($fp)
	lw $t0, -17640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6064($fp)
	sw $t0, -17644($fp)
	lw $t0, -17644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6076($fp)
	sw $t0, -17648($fp)
	lw $t0, -17648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6088($fp)
	sw $t0, -17652($fp)
	lw $t0, -17652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6100($fp)
	sw $t0, -17656($fp)
	lw $t0, -17656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6112($fp)
	sw $t0, -17660($fp)
	lw $t0, -17660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6124($fp)
	sw $t0, -17664($fp)
	lw $t0, -17664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6136($fp)
	sw $t0, -17668($fp)
	lw $t0, -17668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6148($fp)
	sw $t0, -17672($fp)
	lw $t0, -17672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6160($fp)
	sw $t0, -17676($fp)
	lw $t0, -17676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6172($fp)
	sw $t0, -17680($fp)
	lw $t0, -17680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6184($fp)
	sw $t0, -17684($fp)
	lw $t0, -17684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6196($fp)
	sw $t0, -17688($fp)
	lw $t0, -17688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6208($fp)
	sw $t0, -17692($fp)
	lw $t0, -17692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6220($fp)
	sw $t0, -17696($fp)
	lw $t0, -17696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5524
	sw $t0, -17700($fp)
	li $t0, 0
	sw $t0, -17704($fp)
	li $t0, 4
	lw $t1, -17704($fp)
	mul $t0, $t0, $t1
	sw $t0, -17708($fp)
	lw $t0, -17708($fp)
	lw $t1, -17700($fp)
	add $t0, $t0, $t1
	sw $t0, -17712($fp)
	lw $t0, -17712($fp)
	lw $t1, 0($t0)
	sw $t1, -17716($fp)
	lw $t0, -17716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5524
	sw $t0, -17720($fp)
	li $t0, 1
	sw $t0, -17724($fp)
	li $t0, 4
	lw $t1, -17724($fp)
	mul $t0, $t0, $t1
	sw $t0, -17728($fp)
	lw $t0, -17728($fp)
	lw $t1, -17720($fp)
	add $t0, $t0, $t1
	sw $t0, -17732($fp)
	lw $t0, -17732($fp)
	lw $t1, 0($t0)
	sw $t1, -17736($fp)
	lw $t0, -17736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5524
	sw $t0, -17740($fp)
	li $t0, 2
	sw $t0, -17744($fp)
	li $t0, 4
	lw $t1, -17744($fp)
	mul $t0, $t0, $t1
	sw $t0, -17748($fp)
	lw $t0, -17748($fp)
	lw $t1, -17740($fp)
	add $t0, $t0, $t1
	sw $t0, -17752($fp)
	lw $t0, -17752($fp)
	lw $t1, 0($t0)
	sw $t1, -17756($fp)
	lw $t0, -17756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5524
	sw $t0, -17760($fp)
	li $t0, 3
	sw $t0, -17764($fp)
	li $t0, 4
	lw $t1, -17764($fp)
	mul $t0, $t0, $t1
	sw $t0, -17768($fp)
	lw $t0, -17768($fp)
	lw $t1, -17760($fp)
	add $t0, $t0, $t1
	sw $t0, -17772($fp)
	lw $t0, -17772($fp)
	lw $t1, 0($t0)
	sw $t1, -17776($fp)
	lw $t0, -17776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5524
	sw $t0, -17780($fp)
	li $t0, 4
	sw $t0, -17784($fp)
	li $t0, 4
	lw $t1, -17784($fp)
	mul $t0, $t0, $t1
	sw $t0, -17788($fp)
	lw $t0, -17788($fp)
	lw $t1, -17780($fp)
	add $t0, $t0, $t1
	sw $t0, -17792($fp)
	lw $t0, -17792($fp)
	lw $t1, 0($t0)
	sw $t1, -17796($fp)
	lw $t0, -17796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5524
	sw $t0, -17800($fp)
	li $t0, 5
	sw $t0, -17804($fp)
	li $t0, 4
	lw $t1, -17804($fp)
	mul $t0, $t0, $t1
	sw $t0, -17808($fp)
	lw $t0, -17808($fp)
	lw $t1, -17800($fp)
	add $t0, $t0, $t1
	sw $t0, -17812($fp)
	lw $t0, -17812($fp)
	lw $t1, 0($t0)
	sw $t1, -17816($fp)
	lw $t0, -17816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5524
	sw $t0, -17820($fp)
	li $t0, 6
	sw $t0, -17824($fp)
	li $t0, 4
	lw $t1, -17824($fp)
	mul $t0, $t0, $t1
	sw $t0, -17828($fp)
	lw $t0, -17828($fp)
	lw $t1, -17820($fp)
	add $t0, $t0, $t1
	sw $t0, -17832($fp)
	lw $t0, -17832($fp)
	lw $t1, 0($t0)
	sw $t1, -17836($fp)
	lw $t0, -17836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5524
	sw $t0, -17840($fp)
	li $t0, 7
	sw $t0, -17844($fp)
	li $t0, 4
	lw $t1, -17844($fp)
	mul $t0, $t0, $t1
	sw $t0, -17848($fp)
	lw $t0, -17848($fp)
	lw $t1, -17840($fp)
	add $t0, $t0, $t1
	sw $t0, -17852($fp)
	lw $t0, -17852($fp)
	lw $t1, 0($t0)
	sw $t1, -17856($fp)
	lw $t0, -17856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5524
	sw $t0, -17860($fp)
	li $t0, 8
	sw $t0, -17864($fp)
	li $t0, 4
	lw $t1, -17864($fp)
	mul $t0, $t0, $t1
	sw $t0, -17868($fp)
	lw $t0, -17868($fp)
	lw $t1, -17860($fp)
	add $t0, $t0, $t1
	sw $t0, -17872($fp)
	lw $t0, -17872($fp)
	lw $t1, 0($t0)
	sw $t1, -17876($fp)
	lw $t0, -17876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6448($fp)
	sw $t0, -17880($fp)
	lw $t0, -17880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6460($fp)
	sw $t0, -17884($fp)
	lw $t0, -17884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6472($fp)
	sw $t0, -17888($fp)
	lw $t0, -17888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6484($fp)
	sw $t0, -17892($fp)
	lw $t0, -17892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5552
	sw $t0, -17896($fp)
	li $t0, 0
	sw $t0, -17900($fp)
	li $t0, 4
	lw $t1, -17900($fp)
	mul $t0, $t0, $t1
	sw $t0, -17904($fp)
	lw $t0, -17904($fp)
	lw $t1, -17896($fp)
	add $t0, $t0, $t1
	sw $t0, -17908($fp)
	lw $t0, -17908($fp)
	lw $t1, 0($t0)
	sw $t1, -17912($fp)
	lw $t0, -17912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5552
	sw $t0, -17916($fp)
	li $t0, 1
	sw $t0, -17920($fp)
	li $t0, 4
	lw $t1, -17920($fp)
	mul $t0, $t0, $t1
	sw $t0, -17924($fp)
	lw $t0, -17924($fp)
	lw $t1, -17916($fp)
	add $t0, $t0, $t1
	sw $t0, -17928($fp)
	lw $t0, -17928($fp)
	lw $t1, 0($t0)
	sw $t1, -17932($fp)
	lw $t0, -17932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5552
	sw $t0, -17936($fp)
	li $t0, 2
	sw $t0, -17940($fp)
	li $t0, 4
	lw $t1, -17940($fp)
	mul $t0, $t0, $t1
	sw $t0, -17944($fp)
	lw $t0, -17944($fp)
	lw $t1, -17936($fp)
	add $t0, $t0, $t1
	sw $t0, -17948($fp)
	lw $t0, -17948($fp)
	lw $t1, 0($t0)
	sw $t1, -17952($fp)
	lw $t0, -17952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5552
	sw $t0, -17956($fp)
	li $t0, 3
	sw $t0, -17960($fp)
	li $t0, 4
	lw $t1, -17960($fp)
	mul $t0, $t0, $t1
	sw $t0, -17964($fp)
	lw $t0, -17964($fp)
	lw $t1, -17956($fp)
	add $t0, $t0, $t1
	sw $t0, -17968($fp)
	lw $t0, -17968($fp)
	lw $t1, 0($t0)
	sw $t1, -17972($fp)
	lw $t0, -17972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5552
	sw $t0, -17976($fp)
	li $t0, 4
	sw $t0, -17980($fp)
	li $t0, 4
	lw $t1, -17980($fp)
	mul $t0, $t0, $t1
	sw $t0, -17984($fp)
	lw $t0, -17984($fp)
	lw $t1, -17976($fp)
	add $t0, $t0, $t1
	sw $t0, -17988($fp)
	lw $t0, -17988($fp)
	lw $t1, 0($t0)
	sw $t1, -17992($fp)
	lw $t0, -17992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5552
	sw $t0, -17996($fp)
	li $t0, 5
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
	addi $t0, $fp, -5552
	sw $t0, -18016($fp)
	li $t0, 6
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
	lw $t0, -6664($fp)
	sw $t0, -18036($fp)
	lw $t0, -18036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6676($fp)
	sw $t0, -18040($fp)
	lw $t0, -18040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6688($fp)
	sw $t0, -18044($fp)
	lw $t0, -18044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6700($fp)
	sw $t0, -18048($fp)
	lw $t0, -18048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6712($fp)
	sw $t0, -18052($fp)
	lw $t0, -18052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6724($fp)
	sw $t0, -18056($fp)
	lw $t0, -18056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6736($fp)
	sw $t0, -18060($fp)
	lw $t0, -18060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6748($fp)
	sw $t0, -18064($fp)
	lw $t0, -18064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -18068($fp)
	li $t0, 0
	sw $t0, -18072($fp)
	li $t0, 16709
	sw $t0, -18076($fp)
	li $t0, 0
	lw $t1, -18076($fp)
	sub $t0, $t0, $t1
	sw $t0, -18080($fp)
	li $t0, 0
	lw $t1, -18080($fp)
	sub $t0, $t0, $t1
	sw $t0, -18084($fp)
	lw $t1, -18084($fp)
	li $t2, 0
	bne $t1, $t2, label919
	j label918
label918:
	li $t0, 1
	sw $t0, -18072($fp)
label919:
	li $t0, 4
	lw $t1, -18072($fp)
	mul $t0, $t0, $t1
	sw $t0, -18088($fp)
	lw $t0, -18088($fp)
	lw $t1, -18068($fp)
	add $t0, $t0, $t1
	sw $t0, -18092($fp)
	lw $t0, -18092($fp)
	lw $t1, 0($t0)
	sw $t1, -18096($fp)
	lw $ra, -4($fp)
	lw $v0, -18096($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -32
	sw $t0, -18100($fp)
	li $t0, 0
	sw $t0, -18104($fp)
	li $t0, 4
	lw $t1, -18104($fp)
	mul $t0, $t0, $t1
	sw $t0, -18108($fp)
	lw $t0, -18108($fp)
	lw $t1, -18100($fp)
	add $t0, $t0, $t1
	sw $t0, -18112($fp)
	lw $t0, -18112($fp)
	lw $t1, 0($t0)
	sw $t1, -18116($fp)
	lw $t0, -18116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -18120($fp)
	li $t0, 1
	sw $t0, -18124($fp)
	li $t0, 4
	lw $t1, -18124($fp)
	mul $t0, $t0, $t1
	sw $t0, -18128($fp)
	lw $t0, -18128($fp)
	lw $t1, -18120($fp)
	add $t0, $t0, $t1
	sw $t0, -18132($fp)
	lw $t0, -18132($fp)
	lw $t1, 0($t0)
	sw $t1, -18136($fp)
	lw $t0, -18136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -18140($fp)
	li $t0, 2
	sw $t0, -18144($fp)
	li $t0, 4
	lw $t1, -18144($fp)
	mul $t0, $t0, $t1
	sw $t0, -18148($fp)
	lw $t0, -18148($fp)
	lw $t1, -18140($fp)
	add $t0, $t0, $t1
	sw $t0, -18152($fp)
	lw $t0, -18152($fp)
	lw $t1, 0($t0)
	sw $t1, -18156($fp)
	lw $t0, -18156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -18160($fp)
	li $t0, 3
	sw $t0, -18164($fp)
	li $t0, 4
	lw $t1, -18164($fp)
	mul $t0, $t0, $t1
	sw $t0, -18168($fp)
	lw $t0, -18168($fp)
	lw $t1, -18160($fp)
	add $t0, $t0, $t1
	sw $t0, -18172($fp)
	lw $t0, -18172($fp)
	lw $t1, 0($t0)
	sw $t1, -18176($fp)
	lw $t0, -18176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -18180($fp)
	li $t0, 4
	sw $t0, -18184($fp)
	li $t0, 4
	lw $t1, -18184($fp)
	mul $t0, $t0, $t1
	sw $t0, -18188($fp)
	lw $t0, -18188($fp)
	lw $t1, -18180($fp)
	add $t0, $t0, $t1
	sw $t0, -18192($fp)
	lw $t0, -18192($fp)
	lw $t1, 0($t0)
	sw $t1, -18196($fp)
	lw $t0, -18196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -18200($fp)
	li $t0, 5
	sw $t0, -18204($fp)
	li $t0, 4
	lw $t1, -18204($fp)
	mul $t0, $t0, $t1
	sw $t0, -18208($fp)
	lw $t0, -18208($fp)
	lw $t1, -18200($fp)
	add $t0, $t0, $t1
	sw $t0, -18212($fp)
	lw $t0, -18212($fp)
	lw $t1, 0($t0)
	sw $t1, -18216($fp)
	lw $t0, -18216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -18220($fp)
	li $t0, 6
	sw $t0, -18224($fp)
	li $t0, 4
	lw $t1, -18224($fp)
	mul $t0, $t0, $t1
	sw $t0, -18228($fp)
	lw $t0, -18228($fp)
	lw $t1, -18220($fp)
	add $t0, $t0, $t1
	sw $t0, -18232($fp)
	lw $t0, -18232($fp)
	lw $t1, 0($t0)
	sw $t1, -18236($fp)
	lw $t0, -18236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	sw $t0, -18240($fp)
	lw $t0, -18240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -18244($fp)
	li $t0, 0
	sw $t0, -18248($fp)
	li $t0, 4
	lw $t1, -18248($fp)
	mul $t0, $t0, $t1
	sw $t0, -18252($fp)
	lw $t0, -18252($fp)
	lw $t1, -18244($fp)
	add $t0, $t0, $t1
	sw $t0, -18256($fp)
	lw $t0, -18256($fp)
	lw $t1, 0($t0)
	sw $t1, -18260($fp)
	lw $t0, -18260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -18264($fp)
	li $t0, 1
	sw $t0, -18268($fp)
	li $t0, 4
	lw $t1, -18268($fp)
	mul $t0, $t0, $t1
	sw $t0, -18272($fp)
	lw $t0, -18272($fp)
	lw $t1, -18264($fp)
	add $t0, $t0, $t1
	sw $t0, -18276($fp)
	lw $t0, -18276($fp)
	lw $t1, 0($t0)
	sw $t1, -18280($fp)
	lw $t0, -18280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -18284($fp)
	li $t0, 2
	sw $t0, -18288($fp)
	li $t0, 4
	lw $t1, -18288($fp)
	mul $t0, $t0, $t1
	sw $t0, -18292($fp)
	lw $t0, -18292($fp)
	lw $t1, -18284($fp)
	add $t0, $t0, $t1
	sw $t0, -18296($fp)
	lw $t0, -18296($fp)
	lw $t1, 0($t0)
	sw $t1, -18300($fp)
	lw $t0, -18300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -18304($fp)
	li $t0, 3
	sw $t0, -18308($fp)
	li $t0, 4
	lw $t1, -18308($fp)
	mul $t0, $t0, $t1
	sw $t0, -18312($fp)
	lw $t0, -18312($fp)
	lw $t1, -18304($fp)
	add $t0, $t0, $t1
	sw $t0, -18316($fp)
	lw $t0, -18316($fp)
	lw $t1, 0($t0)
	sw $t1, -18320($fp)
	lw $t0, -18320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -616($fp)
	sw $t0, -18324($fp)
	lw $t0, -18324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -628($fp)
	sw $t0, -18328($fp)
	lw $t0, -18328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -640($fp)
	sw $t0, -18332($fp)
	lw $t0, -18332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -652($fp)
	sw $t0, -18336($fp)
	lw $t0, -18336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -664($fp)
	sw $t0, -18340($fp)
	lw $t0, -18340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -18344($fp)
	lw $t0, -18344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -18348($fp)
	li $t0, 0
	sw $t0, -18352($fp)
	li $t0, 4
	lw $t1, -18352($fp)
	mul $t0, $t0, $t1
	sw $t0, -18356($fp)
	lw $t0, -18356($fp)
	lw $t1, -18348($fp)
	add $t0, $t0, $t1
	sw $t0, -18360($fp)
	lw $t0, -18360($fp)
	lw $t1, 0($t0)
	sw $t1, -18364($fp)
	lw $t0, -18364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -18368($fp)
	li $t0, 1
	sw $t0, -18372($fp)
	li $t0, 4
	lw $t1, -18372($fp)
	mul $t0, $t0, $t1
	sw $t0, -18376($fp)
	lw $t0, -18376($fp)
	lw $t1, -18368($fp)
	add $t0, $t0, $t1
	sw $t0, -18380($fp)
	lw $t0, -18380($fp)
	lw $t1, 0($t0)
	sw $t1, -18384($fp)
	lw $t0, -18384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -18388($fp)
	li $t0, 2
	sw $t0, -18392($fp)
	li $t0, 4
	lw $t1, -18392($fp)
	mul $t0, $t0, $t1
	sw $t0, -18396($fp)
	lw $t0, -18396($fp)
	lw $t1, -18388($fp)
	add $t0, $t0, $t1
	sw $t0, -18400($fp)
	lw $t0, -18400($fp)
	lw $t1, 0($t0)
	sw $t1, -18404($fp)
	lw $t0, -18404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -18408($fp)
	li $t0, 3
	sw $t0, -18412($fp)
	li $t0, 4
	lw $t1, -18412($fp)
	mul $t0, $t0, $t1
	sw $t0, -18416($fp)
	lw $t0, -18416($fp)
	lw $t1, -18408($fp)
	add $t0, $t0, $t1
	sw $t0, -18420($fp)
	lw $t0, -18420($fp)
	lw $t1, 0($t0)
	sw $t1, -18424($fp)
	lw $t0, -18424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -18428($fp)
	li $t0, 0
	sw $t0, -18432($fp)
	li $t0, 4
	lw $t1, -18432($fp)
	mul $t0, $t0, $t1
	sw $t0, -18436($fp)
	lw $t0, -18436($fp)
	lw $t1, -18428($fp)
	add $t0, $t0, $t1
	sw $t0, -18440($fp)
	lw $t0, -18440($fp)
	lw $t1, 0($t0)
	sw $t1, -18444($fp)
	lw $t0, -18444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -18448($fp)
	li $t0, 1
	sw $t0, -18452($fp)
	li $t0, 4
	lw $t1, -18452($fp)
	mul $t0, $t0, $t1
	sw $t0, -18456($fp)
	lw $t0, -18456($fp)
	lw $t1, -18448($fp)
	add $t0, $t0, $t1
	sw $t0, -18460($fp)
	lw $t0, -18460($fp)
	lw $t1, 0($t0)
	sw $t1, -18464($fp)
	lw $t0, -18464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -18468($fp)
	li $t0, 2
	sw $t0, -18472($fp)
	li $t0, 4
	lw $t1, -18472($fp)
	mul $t0, $t0, $t1
	sw $t0, -18476($fp)
	lw $t0, -18476($fp)
	lw $t1, -18468($fp)
	add $t0, $t0, $t1
	sw $t0, -18480($fp)
	lw $t0, -18480($fp)
	lw $t1, 0($t0)
	sw $t1, -18484($fp)
	lw $t0, -18484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -18488($fp)
	li $t0, 3
	sw $t0, -18492($fp)
	li $t0, 4
	lw $t1, -18492($fp)
	mul $t0, $t0, $t1
	sw $t0, -18496($fp)
	lw $t0, -18496($fp)
	lw $t1, -18488($fp)
	add $t0, $t0, $t1
	sw $t0, -18500($fp)
	lw $t0, -18500($fp)
	lw $t1, 0($t0)
	sw $t1, -18504($fp)
	lw $t0, -18504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -18508($fp)
	li $t0, 4
	sw $t0, -18512($fp)
	li $t0, 4
	lw $t1, -18512($fp)
	mul $t0, $t0, $t1
	sw $t0, -18516($fp)
	lw $t0, -18516($fp)
	lw $t1, -18508($fp)
	add $t0, $t0, $t1
	sw $t0, -18520($fp)
	lw $t0, -18520($fp)
	lw $t1, 0($t0)
	sw $t1, -18524($fp)
	lw $t0, -18524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -18528($fp)
	li $t0, 5
	sw $t0, -18532($fp)
	li $t0, 4
	lw $t1, -18532($fp)
	mul $t0, $t0, $t1
	sw $t0, -18536($fp)
	lw $t0, -18536($fp)
	lw $t1, -18528($fp)
	add $t0, $t0, $t1
	sw $t0, -18540($fp)
	lw $t0, -18540($fp)
	lw $t1, 0($t0)
	sw $t1, -18544($fp)
	lw $t0, -18544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -18548($fp)
	li $t0, 6
	sw $t0, -18552($fp)
	li $t0, 4
	lw $t1, -18552($fp)
	mul $t0, $t0, $t1
	sw $t0, -18556($fp)
	lw $t0, -18556($fp)
	lw $t1, -18548($fp)
	add $t0, $t0, $t1
	sw $t0, -18560($fp)
	lw $t0, -18560($fp)
	lw $t1, 0($t0)
	sw $t1, -18564($fp)
	lw $t0, -18564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -18568($fp)
	li $t0, 7
	sw $t0, -18572($fp)
	li $t0, 4
	lw $t1, -18572($fp)
	mul $t0, $t0, $t1
	sw $t0, -18576($fp)
	lw $t0, -18576($fp)
	lw $t1, -18568($fp)
	add $t0, $t0, $t1
	sw $t0, -18580($fp)
	lw $t0, -18580($fp)
	lw $t1, 0($t0)
	sw $t1, -18584($fp)
	lw $t0, -18584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -976($fp)
	sw $t0, -18588($fp)
	lw $t0, -18588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -988($fp)
	sw $t0, -18592($fp)
	lw $t0, -18592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1000($fp)
	sw $t0, -18596($fp)
	lw $t0, -18596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1012($fp)
	sw $t0, -18600($fp)
	lw $t0, -18600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1024($fp)
	sw $t0, -18604($fp)
	lw $t0, -18604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1036($fp)
	sw $t0, -18608($fp)
	lw $t0, -18608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1048($fp)
	sw $t0, -18612($fp)
	lw $t0, -18612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -18616($fp)
	li $t0, 0
	sw $t0, -18620($fp)
	li $t0, 4
	lw $t1, -18620($fp)
	mul $t0, $t0, $t1
	sw $t0, -18624($fp)
	lw $t0, -18624($fp)
	lw $t1, -18616($fp)
	add $t0, $t0, $t1
	sw $t0, -18628($fp)
	lw $t0, -18628($fp)
	lw $t1, 0($t0)
	sw $t1, -18632($fp)
	lw $t0, -18632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -18636($fp)
	li $t0, 1
	sw $t0, -18640($fp)
	li $t0, 4
	lw $t1, -18640($fp)
	mul $t0, $t0, $t1
	sw $t0, -18644($fp)
	lw $t0, -18644($fp)
	lw $t1, -18636($fp)
	add $t0, $t0, $t1
	sw $t0, -18648($fp)
	lw $t0, -18648($fp)
	lw $t1, 0($t0)
	sw $t1, -18652($fp)
	lw $t0, -18652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -18656($fp)
	li $t0, 2
	sw $t0, -18660($fp)
	li $t0, 4
	lw $t1, -18660($fp)
	mul $t0, $t0, $t1
	sw $t0, -18664($fp)
	lw $t0, -18664($fp)
	lw $t1, -18656($fp)
	add $t0, $t0, $t1
	sw $t0, -18668($fp)
	lw $t0, -18668($fp)
	lw $t1, 0($t0)
	sw $t1, -18672($fp)
	lw $t0, -18672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -18676($fp)
	li $t0, 3
	sw $t0, -18680($fp)
	li $t0, 4
	lw $t1, -18680($fp)
	mul $t0, $t0, $t1
	sw $t0, -18684($fp)
	lw $t0, -18684($fp)
	lw $t1, -18676($fp)
	add $t0, $t0, $t1
	sw $t0, -18688($fp)
	lw $t0, -18688($fp)
	lw $t1, 0($t0)
	sw $t1, -18692($fp)
	lw $t0, -18692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -18696($fp)
	li $t0, 4
	sw $t0, -18700($fp)
	li $t0, 4
	lw $t1, -18700($fp)
	mul $t0, $t0, $t1
	sw $t0, -18704($fp)
	lw $t0, -18704($fp)
	lw $t1, -18696($fp)
	add $t0, $t0, $t1
	sw $t0, -18708($fp)
	lw $t0, -18708($fp)
	lw $t1, 0($t0)
	sw $t1, -18712($fp)
	lw $t0, -18712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -18716($fp)
	li $t0, 5
	sw $t0, -18720($fp)
	li $t0, 4
	lw $t1, -18720($fp)
	mul $t0, $t0, $t1
	sw $t0, -18724($fp)
	lw $t0, -18724($fp)
	lw $t1, -18716($fp)
	add $t0, $t0, $t1
	sw $t0, -18728($fp)
	lw $t0, -18728($fp)
	lw $t1, 0($t0)
	sw $t1, -18732($fp)
	lw $t0, -18732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -18736($fp)
	li $t0, 6
	sw $t0, -18740($fp)
	li $t0, 4
	lw $t1, -18740($fp)
	mul $t0, $t0, $t1
	sw $t0, -18744($fp)
	lw $t0, -18744($fp)
	lw $t1, -18736($fp)
	add $t0, $t0, $t1
	sw $t0, -18748($fp)
	lw $t0, -18748($fp)
	lw $t1, 0($t0)
	sw $t1, -18752($fp)
	lw $t0, -18752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -18756($fp)
	li $t0, 7
	sw $t0, -18760($fp)
	li $t0, 4
	lw $t1, -18760($fp)
	mul $t0, $t0, $t1
	sw $t0, -18764($fp)
	lw $t0, -18764($fp)
	lw $t1, -18756($fp)
	add $t0, $t0, $t1
	sw $t0, -18768($fp)
	lw $t0, -18768($fp)
	lw $t1, 0($t0)
	sw $t1, -18772($fp)
	lw $t0, -18772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -18776($fp)
	li $t0, 8
	sw $t0, -18780($fp)
	li $t0, 4
	lw $t1, -18780($fp)
	mul $t0, $t0, $t1
	sw $t0, -18784($fp)
	lw $t0, -18784($fp)
	lw $t1, -18776($fp)
	add $t0, $t0, $t1
	sw $t0, -18788($fp)
	lw $t0, -18788($fp)
	lw $t1, 0($t0)
	sw $t1, -18792($fp)
	lw $t0, -18792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1276($fp)
	sw $t0, -18796($fp)
	lw $t0, -18796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1288($fp)
	sw $t0, -18800($fp)
	lw $t0, -18800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1300($fp)
	sw $t0, -18804($fp)
	lw $t0, -18804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1312($fp)
	sw $t0, -18808($fp)
	lw $t0, -18808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1324($fp)
	sw $t0, -18812($fp)
	lw $t0, -18812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1336($fp)
	sw $t0, -18816($fp)
	lw $t0, -18816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1348($fp)
	sw $t0, -18820($fp)
	lw $t0, -18820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1360($fp)
	sw $t0, -18824($fp)
	lw $t0, -18824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1372($fp)
	sw $t0, -18828($fp)
	lw $t0, -18828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1384($fp)
	sw $t0, -18832($fp)
	lw $t0, -18832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -18836($fp)
	li $t0, 0
	sw $t0, -18840($fp)
	li $t0, 4
	lw $t1, -18840($fp)
	mul $t0, $t0, $t1
	sw $t0, -18844($fp)
	lw $t0, -18844($fp)
	lw $t1, -18836($fp)
	add $t0, $t0, $t1
	sw $t0, -18848($fp)
	lw $t0, -18848($fp)
	lw $t1, 0($t0)
	sw $t1, -18852($fp)
	lw $t0, -18852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -18856($fp)
	li $t0, 1
	sw $t0, -18860($fp)
	li $t0, 4
	lw $t1, -18860($fp)
	mul $t0, $t0, $t1
	sw $t0, -18864($fp)
	lw $t0, -18864($fp)
	lw $t1, -18856($fp)
	add $t0, $t0, $t1
	sw $t0, -18868($fp)
	lw $t0, -18868($fp)
	lw $t1, 0($t0)
	sw $t1, -18872($fp)
	lw $t0, -18872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -18876($fp)
	li $t0, 2
	sw $t0, -18880($fp)
	li $t0, 4
	lw $t1, -18880($fp)
	mul $t0, $t0, $t1
	sw $t0, -18884($fp)
	lw $t0, -18884($fp)
	lw $t1, -18876($fp)
	add $t0, $t0, $t1
	sw $t0, -18888($fp)
	lw $t0, -18888($fp)
	lw $t1, 0($t0)
	sw $t1, -18892($fp)
	lw $t0, -18892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1468($fp)
	sw $t0, -18896($fp)
	lw $t0, -18896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -18900($fp)
	li $t0, 0
	sw $t0, -18904($fp)
	li $t0, 4
	lw $t1, -18904($fp)
	mul $t0, $t0, $t1
	sw $t0, -18908($fp)
	lw $t0, -18908($fp)
	lw $t1, -18900($fp)
	add $t0, $t0, $t1
	sw $t0, -18912($fp)
	lw $t0, -18912($fp)
	lw $t1, 0($t0)
	sw $t1, -18916($fp)
	lw $t0, -18916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -18920($fp)
	li $t0, 1
	sw $t0, -18924($fp)
	li $t0, 4
	lw $t1, -18924($fp)
	mul $t0, $t0, $t1
	sw $t0, -18928($fp)
	lw $t0, -18928($fp)
	lw $t1, -18920($fp)
	add $t0, $t0, $t1
	sw $t0, -18932($fp)
	lw $t0, -18932($fp)
	lw $t1, 0($t0)
	sw $t1, -18936($fp)
	lw $t0, -18936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -18940($fp)
	li $t0, 2
	sw $t0, -18944($fp)
	li $t0, 4
	lw $t1, -18944($fp)
	mul $t0, $t0, $t1
	sw $t0, -18948($fp)
	lw $t0, -18948($fp)
	lw $t1, -18940($fp)
	add $t0, $t0, $t1
	sw $t0, -18952($fp)
	lw $t0, -18952($fp)
	lw $t1, 0($t0)
	sw $t1, -18956($fp)
	lw $t0, -18956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -18960($fp)
	li $t0, 3
	sw $t0, -18964($fp)
	li $t0, 4
	lw $t1, -18964($fp)
	mul $t0, $t0, $t1
	sw $t0, -18968($fp)
	lw $t0, -18968($fp)
	lw $t1, -18960($fp)
	add $t0, $t0, $t1
	sw $t0, -18972($fp)
	lw $t0, -18972($fp)
	lw $t1, 0($t0)
	sw $t1, -18976($fp)
	lw $t0, -18976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -18980($fp)
	li $t0, 4
	sw $t0, -18984($fp)
	li $t0, 4
	lw $t1, -18984($fp)
	mul $t0, $t0, $t1
	sw $t0, -18988($fp)
	lw $t0, -18988($fp)
	lw $t1, -18980($fp)
	add $t0, $t0, $t1
	sw $t0, -18992($fp)
	lw $t0, -18992($fp)
	lw $t1, 0($t0)
	sw $t1, -18996($fp)
	lw $t0, -18996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -19000($fp)
	li $t0, 5
	sw $t0, -19004($fp)
	li $t0, 4
	lw $t1, -19004($fp)
	mul $t0, $t0, $t1
	sw $t0, -19008($fp)
	lw $t0, -19008($fp)
	lw $t1, -19000($fp)
	add $t0, $t0, $t1
	sw $t0, -19012($fp)
	lw $t0, -19012($fp)
	lw $t1, 0($t0)
	sw $t1, -19016($fp)
	lw $t0, -19016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -19020($fp)
	li $t0, 0
	sw $t0, -19024($fp)
	li $t0, 4
	lw $t1, -19024($fp)
	mul $t0, $t0, $t1
	sw $t0, -19028($fp)
	lw $t0, -19028($fp)
	lw $t1, -19020($fp)
	add $t0, $t0, $t1
	sw $t0, -19032($fp)
	lw $t0, -19032($fp)
	lw $t1, 0($t0)
	sw $t1, -19036($fp)
	lw $t0, -19036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -19040($fp)
	li $t0, 1
	sw $t0, -19044($fp)
	li $t0, 4
	lw $t1, -19044($fp)
	mul $t0, $t0, $t1
	sw $t0, -19048($fp)
	lw $t0, -19048($fp)
	lw $t1, -19040($fp)
	add $t0, $t0, $t1
	sw $t0, -19052($fp)
	lw $t0, -19052($fp)
	lw $t1, 0($t0)
	sw $t1, -19056($fp)
	lw $t0, -19056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -19060($fp)
	li $t0, 2
	sw $t0, -19064($fp)
	li $t0, 4
	lw $t1, -19064($fp)
	mul $t0, $t0, $t1
	sw $t0, -19068($fp)
	lw $t0, -19068($fp)
	lw $t1, -19060($fp)
	add $t0, $t0, $t1
	sw $t0, -19072($fp)
	lw $t0, -19072($fp)
	lw $t1, 0($t0)
	sw $t1, -19076($fp)
	lw $t0, -19076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -19080($fp)
	li $t0, 3
	sw $t0, -19084($fp)
	li $t0, 4
	lw $t1, -19084($fp)
	mul $t0, $t0, $t1
	sw $t0, -19088($fp)
	lw $t0, -19088($fp)
	lw $t1, -19080($fp)
	add $t0, $t0, $t1
	sw $t0, -19092($fp)
	lw $t0, -19092($fp)
	lw $t1, 0($t0)
	sw $t1, -19096($fp)
	lw $t0, -19096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -19100($fp)
	li $t0, 4
	sw $t0, -19104($fp)
	li $t0, 4
	lw $t1, -19104($fp)
	mul $t0, $t0, $t1
	sw $t0, -19108($fp)
	lw $t0, -19108($fp)
	lw $t1, -19100($fp)
	add $t0, $t0, $t1
	sw $t0, -19112($fp)
	lw $t0, -19112($fp)
	lw $t1, 0($t0)
	sw $t1, -19116($fp)
	lw $t0, -19116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -19120($fp)
	li $t0, 5
	sw $t0, -19124($fp)
	li $t0, 4
	lw $t1, -19124($fp)
	mul $t0, $t0, $t1
	sw $t0, -19128($fp)
	lw $t0, -19128($fp)
	lw $t1, -19120($fp)
	add $t0, $t0, $t1
	sw $t0, -19132($fp)
	lw $t0, -19132($fp)
	lw $t1, 0($t0)
	sw $t1, -19136($fp)
	lw $t0, -19136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -19140($fp)
	li $t0, 6
	sw $t0, -19144($fp)
	li $t0, 4
	lw $t1, -19144($fp)
	mul $t0, $t0, $t1
	sw $t0, -19148($fp)
	lw $t0, -19148($fp)
	lw $t1, -19140($fp)
	add $t0, $t0, $t1
	sw $t0, -19152($fp)
	lw $t0, -19152($fp)
	lw $t1, 0($t0)
	sw $t1, -19156($fp)
	lw $t0, -19156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -19160($fp)
	li $t0, 7
	sw $t0, -19164($fp)
	li $t0, 4
	lw $t1, -19164($fp)
	mul $t0, $t0, $t1
	sw $t0, -19168($fp)
	lw $t0, -19168($fp)
	lw $t1, -19160($fp)
	add $t0, $t0, $t1
	sw $t0, -19172($fp)
	lw $t0, -19172($fp)
	lw $t1, 0($t0)
	sw $t1, -19176($fp)
	lw $t0, -19176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1816($fp)
	sw $t0, -19180($fp)
	lw $t0, -19180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -19184($fp)
	li $t0, 0
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
	addi $t0, $fp, -240
	sw $t0, -19204($fp)
	li $t0, 1
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
	addi $t0, $fp, -240
	sw $t0, -19224($fp)
	li $t0, 2
	sw $t0, -19228($fp)
	li $t0, 4
	lw $t1, -19228($fp)
	mul $t0, $t0, $t1
	sw $t0, -19232($fp)
	lw $t0, -19232($fp)
	lw $t1, -19224($fp)
	add $t0, $t0, $t1
	sw $t0, -19236($fp)
	lw $t0, -19236($fp)
	lw $t1, 0($t0)
	sw $t1, -19240($fp)
	lw $t0, -19240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -19244($fp)
	li $t0, 3
	sw $t0, -19248($fp)
	li $t0, 4
	lw $t1, -19248($fp)
	mul $t0, $t0, $t1
	sw $t0, -19252($fp)
	lw $t0, -19252($fp)
	lw $t1, -19244($fp)
	add $t0, $t0, $t1
	sw $t0, -19256($fp)
	lw $t0, -19256($fp)
	lw $t1, 0($t0)
	sw $t1, -19260($fp)
	lw $t0, -19260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -19264($fp)
	li $t0, 4
	sw $t0, -19268($fp)
	li $t0, 4
	lw $t1, -19268($fp)
	mul $t0, $t0, $t1
	sw $t0, -19272($fp)
	lw $t0, -19272($fp)
	lw $t1, -19264($fp)
	add $t0, $t0, $t1
	sw $t0, -19276($fp)
	lw $t0, -19276($fp)
	lw $t1, 0($t0)
	sw $t1, -19280($fp)
	lw $t0, -19280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -19284($fp)
	li $t0, 5
	sw $t0, -19288($fp)
	li $t0, 4
	lw $t1, -19288($fp)
	mul $t0, $t0, $t1
	sw $t0, -19292($fp)
	lw $t0, -19292($fp)
	lw $t1, -19284($fp)
	add $t0, $t0, $t1
	sw $t0, -19296($fp)
	lw $t0, -19296($fp)
	lw $t1, 0($t0)
	sw $t1, -19300($fp)
	lw $t0, -19300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -19304($fp)
	li $t0, 6
	sw $t0, -19308($fp)
	li $t0, 4
	lw $t1, -19308($fp)
	mul $t0, $t0, $t1
	sw $t0, -19312($fp)
	lw $t0, -19312($fp)
	lw $t1, -19304($fp)
	add $t0, $t0, $t1
	sw $t0, -19316($fp)
	lw $t0, -19316($fp)
	lw $t1, 0($t0)
	sw $t1, -19320($fp)
	lw $t0, -19320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -19324($fp)
	li $t0, 7
	sw $t0, -19328($fp)
	li $t0, 4
	lw $t1, -19328($fp)
	mul $t0, $t0, $t1
	sw $t0, -19332($fp)
	lw $t0, -19332($fp)
	lw $t1, -19324($fp)
	add $t0, $t0, $t1
	sw $t0, -19336($fp)
	lw $t0, -19336($fp)
	lw $t1, 0($t0)
	sw $t1, -19340($fp)
	lw $t0, -19340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -19344($fp)
	li $t0, 8
	sw $t0, -19348($fp)
	li $t0, 4
	lw $t1, -19348($fp)
	mul $t0, $t0, $t1
	sw $t0, -19352($fp)
	lw $t0, -19352($fp)
	lw $t1, -19344($fp)
	add $t0, $t0, $t1
	sw $t0, -19356($fp)
	lw $t0, -19356($fp)
	lw $t1, 0($t0)
	sw $t1, -19360($fp)
	lw $t0, -19360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -19364($fp)
	li $t0, 9
	sw $t0, -19368($fp)
	li $t0, 4
	lw $t1, -19368($fp)
	mul $t0, $t0, $t1
	sw $t0, -19372($fp)
	lw $t0, -19372($fp)
	lw $t1, -19364($fp)
	add $t0, $t0, $t1
	sw $t0, -19376($fp)
	lw $t0, -19376($fp)
	lw $t1, 0($t0)
	sw $t1, -19380($fp)
	lw $t0, -19380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2068($fp)
	sw $t0, -19384($fp)
	lw $t0, -19384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2080($fp)
	sw $t0, -19388($fp)
	lw $t0, -19388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2092($fp)
	sw $t0, -19392($fp)
	lw $t0, -19392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2104($fp)
	sw $t0, -19396($fp)
	lw $t0, -19396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2116($fp)
	sw $t0, -19400($fp)
	lw $t0, -19400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2128($fp)
	sw $t0, -19404($fp)
	lw $t0, -19404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2140($fp)
	sw $t0, -19408($fp)
	lw $t0, -19408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -264
	sw $t0, -19412($fp)
	li $t0, 0
	sw $t0, -19416($fp)
	li $t0, 4
	lw $t1, -19416($fp)
	mul $t0, $t0, $t1
	sw $t0, -19420($fp)
	lw $t0, -19420($fp)
	lw $t1, -19412($fp)
	add $t0, $t0, $t1
	sw $t0, -19424($fp)
	lw $t0, -19424($fp)
	lw $t1, 0($t0)
	sw $t1, -19428($fp)
	lw $t0, -19428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -264
	sw $t0, -19432($fp)
	li $t0, 1
	sw $t0, -19436($fp)
	li $t0, 4
	lw $t1, -19436($fp)
	mul $t0, $t0, $t1
	sw $t0, -19440($fp)
	lw $t0, -19440($fp)
	lw $t1, -19432($fp)
	add $t0, $t0, $t1
	sw $t0, -19444($fp)
	lw $t0, -19444($fp)
	lw $t1, 0($t0)
	sw $t1, -19448($fp)
	lw $t0, -19448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -264
	sw $t0, -19452($fp)
	li $t0, 2
	sw $t0, -19456($fp)
	li $t0, 4
	lw $t1, -19456($fp)
	mul $t0, $t0, $t1
	sw $t0, -19460($fp)
	lw $t0, -19460($fp)
	lw $t1, -19452($fp)
	add $t0, $t0, $t1
	sw $t0, -19464($fp)
	lw $t0, -19464($fp)
	lw $t1, 0($t0)
	sw $t1, -19468($fp)
	lw $t0, -19468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -264
	sw $t0, -19472($fp)
	li $t0, 3
	sw $t0, -19476($fp)
	li $t0, 4
	lw $t1, -19476($fp)
	mul $t0, $t0, $t1
	sw $t0, -19480($fp)
	lw $t0, -19480($fp)
	lw $t1, -19472($fp)
	add $t0, $t0, $t1
	sw $t0, -19484($fp)
	lw $t0, -19484($fp)
	lw $t1, 0($t0)
	sw $t1, -19488($fp)
	lw $t0, -19488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -264
	sw $t0, -19492($fp)
	li $t0, 4
	sw $t0, -19496($fp)
	li $t0, 4
	lw $t1, -19496($fp)
	mul $t0, $t0, $t1
	sw $t0, -19500($fp)
	lw $t0, -19500($fp)
	lw $t1, -19492($fp)
	add $t0, $t0, $t1
	sw $t0, -19504($fp)
	lw $t0, -19504($fp)
	lw $t1, 0($t0)
	sw $t1, -19508($fp)
	lw $t0, -19508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -264
	sw $t0, -19512($fp)
	li $t0, 5
	sw $t0, -19516($fp)
	li $t0, 4
	lw $t1, -19516($fp)
	mul $t0, $t0, $t1
	sw $t0, -19520($fp)
	lw $t0, -19520($fp)
	lw $t1, -19512($fp)
	add $t0, $t0, $t1
	sw $t0, -19524($fp)
	lw $t0, -19524($fp)
	lw $t1, 0($t0)
	sw $t1, -19528($fp)
	lw $t0, -19528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2296($fp)
	sw $t0, -19532($fp)
	lw $t0, -19532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2308($fp)
	sw $t0, -19536($fp)
	lw $t0, -19536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2320($fp)
	sw $t0, -19540($fp)
	lw $t0, -19540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -19544($fp)
	li $t0, 0
	sw $t0, -19548($fp)
	li $t0, 4
	lw $t1, -19548($fp)
	mul $t0, $t0, $t1
	sw $t0, -19552($fp)
	lw $t0, -19552($fp)
	lw $t1, -19544($fp)
	add $t0, $t0, $t1
	sw $t0, -19556($fp)
	lw $t0, -19556($fp)
	lw $t1, 0($t0)
	sw $t1, -19560($fp)
	lw $t0, -19560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -19564($fp)
	li $t0, 1
	sw $t0, -19568($fp)
	li $t0, 4
	lw $t1, -19568($fp)
	mul $t0, $t0, $t1
	sw $t0, -19572($fp)
	lw $t0, -19572($fp)
	lw $t1, -19564($fp)
	add $t0, $t0, $t1
	sw $t0, -19576($fp)
	lw $t0, -19576($fp)
	lw $t1, 0($t0)
	sw $t1, -19580($fp)
	lw $t0, -19580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -19584($fp)
	li $t0, 2
	sw $t0, -19588($fp)
	li $t0, 4
	lw $t1, -19588($fp)
	mul $t0, $t0, $t1
	sw $t0, -19592($fp)
	lw $t0, -19592($fp)
	lw $t1, -19584($fp)
	add $t0, $t0, $t1
	sw $t0, -19596($fp)
	lw $t0, -19596($fp)
	lw $t1, 0($t0)
	sw $t1, -19600($fp)
	lw $t0, -19600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -19604($fp)
	li $t0, 3
	sw $t0, -19608($fp)
	li $t0, 4
	lw $t1, -19608($fp)
	mul $t0, $t0, $t1
	sw $t0, -19612($fp)
	lw $t0, -19612($fp)
	lw $t1, -19604($fp)
	add $t0, $t0, $t1
	sw $t0, -19616($fp)
	lw $t0, -19616($fp)
	lw $t1, 0($t0)
	sw $t1, -19620($fp)
	lw $t0, -19620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2428($fp)
	sw $t0, -19624($fp)
	lw $t0, -19624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2440($fp)
	sw $t0, -19628($fp)
	lw $t0, -19628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2452($fp)
	sw $t0, -19632($fp)
	lw $t0, -19632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2464($fp)
	sw $t0, -19636($fp)
	lw $t0, -19636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2476($fp)
	sw $t0, -19640($fp)
	lw $t0, -19640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2488($fp)
	sw $t0, -19644($fp)
	lw $t0, -19644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2500($fp)
	sw $t0, -19648($fp)
	lw $t0, -19648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2512($fp)
	sw $t0, -19652($fp)
	lw $t0, -19652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2524($fp)
	sw $t0, -19656($fp)
	lw $t0, -19656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -296
	sw $t0, -19660($fp)
	li $t0, 0
	sw $t0, -19664($fp)
	li $t0, 4
	lw $t1, -19664($fp)
	mul $t0, $t0, $t1
	sw $t0, -19668($fp)
	lw $t0, -19668($fp)
	lw $t1, -19660($fp)
	add $t0, $t0, $t1
	sw $t0, -19672($fp)
	lw $t0, -19672($fp)
	lw $t1, 0($t0)
	sw $t1, -19676($fp)
	lw $t0, -19676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -296
	sw $t0, -19680($fp)
	li $t0, 1
	sw $t0, -19684($fp)
	li $t0, 4
	lw $t1, -19684($fp)
	mul $t0, $t0, $t1
	sw $t0, -19688($fp)
	lw $t0, -19688($fp)
	lw $t1, -19680($fp)
	add $t0, $t0, $t1
	sw $t0, -19692($fp)
	lw $t0, -19692($fp)
	lw $t1, 0($t0)
	sw $t1, -19696($fp)
	lw $t0, -19696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -296
	sw $t0, -19700($fp)
	li $t0, 2
	sw $t0, -19704($fp)
	li $t0, 4
	lw $t1, -19704($fp)
	mul $t0, $t0, $t1
	sw $t0, -19708($fp)
	lw $t0, -19708($fp)
	lw $t1, -19700($fp)
	add $t0, $t0, $t1
	sw $t0, -19712($fp)
	lw $t0, -19712($fp)
	lw $t1, 0($t0)
	sw $t1, -19716($fp)
	lw $t0, -19716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -296
	sw $t0, -19720($fp)
	li $t0, 3
	sw $t0, -19724($fp)
	li $t0, 4
	lw $t1, -19724($fp)
	mul $t0, $t0, $t1
	sw $t0, -19728($fp)
	lw $t0, -19728($fp)
	lw $t1, -19720($fp)
	add $t0, $t0, $t1
	sw $t0, -19732($fp)
	lw $t0, -19732($fp)
	lw $t1, 0($t0)
	sw $t1, -19736($fp)
	lw $t0, -19736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2632($fp)
	sw $t0, -19740($fp)
	lw $t0, -19740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2644($fp)
	sw $t0, -19744($fp)
	lw $t0, -19744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2656($fp)
	sw $t0, -19748($fp)
	lw $t0, -19748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2668($fp)
	sw $t0, -19752($fp)
	lw $t0, -19752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2680($fp)
	sw $t0, -19756($fp)
	lw $t0, -19756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2692($fp)
	sw $t0, -19760($fp)
	lw $t0, -19760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2704($fp)
	sw $t0, -19764($fp)
	lw $t0, -19764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2716($fp)
	sw $t0, -19768($fp)
	lw $t0, -19768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2728($fp)
	sw $t0, -19772($fp)
	lw $t0, -19772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2740($fp)
	sw $t0, -19776($fp)
	lw $t0, -19776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2752($fp)
	sw $t0, -19780($fp)
	lw $t0, -19780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2764($fp)
	sw $t0, -19784($fp)
	lw $t0, -19784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -332
	sw $t0, -19788($fp)
	li $t0, 0
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
	addi $t0, $fp, -332
	sw $t0, -19808($fp)
	li $t0, 1
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
	addi $t0, $fp, -332
	sw $t0, -19828($fp)
	li $t0, 2
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
	addi $t0, $fp, -332
	sw $t0, -19848($fp)
	li $t0, 3
	sw $t0, -19852($fp)
	li $t0, 4
	lw $t1, -19852($fp)
	mul $t0, $t0, $t1
	sw $t0, -19856($fp)
	lw $t0, -19856($fp)
	lw $t1, -19848($fp)
	add $t0, $t0, $t1
	sw $t0, -19860($fp)
	lw $t0, -19860($fp)
	lw $t1, 0($t0)
	sw $t1, -19864($fp)
	lw $t0, -19864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -332
	sw $t0, -19868($fp)
	li $t0, 4
	sw $t0, -19872($fp)
	li $t0, 4
	lw $t1, -19872($fp)
	mul $t0, $t0, $t1
	sw $t0, -19876($fp)
	lw $t0, -19876($fp)
	lw $t1, -19868($fp)
	add $t0, $t0, $t1
	sw $t0, -19880($fp)
	lw $t0, -19880($fp)
	lw $t1, 0($t0)
	sw $t1, -19884($fp)
	lw $t0, -19884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -332
	sw $t0, -19888($fp)
	li $t0, 5
	sw $t0, -19892($fp)
	li $t0, 4
	lw $t1, -19892($fp)
	mul $t0, $t0, $t1
	sw $t0, -19896($fp)
	lw $t0, -19896($fp)
	lw $t1, -19888($fp)
	add $t0, $t0, $t1
	sw $t0, -19900($fp)
	lw $t0, -19900($fp)
	lw $t1, 0($t0)
	sw $t1, -19904($fp)
	lw $t0, -19904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -332
	sw $t0, -19908($fp)
	li $t0, 6
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
	lw $t0, -19924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -332
	sw $t0, -19928($fp)
	li $t0, 7
	sw $t0, -19932($fp)
	li $t0, 4
	lw $t1, -19932($fp)
	mul $t0, $t0, $t1
	sw $t0, -19936($fp)
	lw $t0, -19936($fp)
	lw $t1, -19928($fp)
	add $t0, $t0, $t1
	sw $t0, -19940($fp)
	lw $t0, -19940($fp)
	lw $t1, 0($t0)
	sw $t1, -19944($fp)
	lw $t0, -19944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -332
	sw $t0, -19948($fp)
	li $t0, 8
	sw $t0, -19952($fp)
	li $t0, 4
	lw $t1, -19952($fp)
	mul $t0, $t0, $t1
	sw $t0, -19956($fp)
	lw $t0, -19956($fp)
	lw $t1, -19948($fp)
	add $t0, $t0, $t1
	sw $t0, -19960($fp)
	lw $t0, -19960($fp)
	lw $t1, 0($t0)
	sw $t1, -19964($fp)
	lw $t0, -19964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2992($fp)
	sw $t0, -19968($fp)
	lw $t0, -19968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3004($fp)
	sw $t0, -19972($fp)
	lw $t0, -19972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3016($fp)
	sw $t0, -19976($fp)
	lw $t0, -19976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -19980($fp)
	lw $t0, -1468($fp)
	sw $t0, -19984($fp)
	li $t0, 4
	lw $t1, -19984($fp)
	mul $t0, $t0, $t1
	sw $t0, -19988($fp)
	lw $t0, -19988($fp)
	lw $t1, -19980($fp)
	add $t0, $t0, $t1
	sw $t0, -19992($fp)
	lw $t0, -19992($fp)
	lw $t1, 0($t0)
	sw $t1, -19996($fp)
	li $t0, 28815
	sw $t0, -20000($fp)
	lw $t0, -19996($fp)
	lw $t1, -20000($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -20004($fp)
	li $t0, 0
	sw $t0, -20008($fp)
	lw $t0, -1384($fp)
	sw $t0, -20012($fp)
	li $t0, 21030
	sw $t0, -20016($fp)
	lw $t1, -20012($fp)
	lw $t2, -20016($fp)
	bne $t1, $t2, label920
	j label922
label922:
	li $t0, 51145
	sw $t0, -20020($fp)
	lw $t1, -20020($fp)
	li $t2, 0
	bne $t1, $t2, label920
	j label921
label920:
	li $t0, 1
	sw $t0, -20008($fp)
label921:
	li $t0, 0
	sw $t0, -20024($fp)
	lw $t0, -2104($fp)
	sw $t0, -20028($fp)
	li $t0, 9946
	sw $t0, -20032($fp)
	lw $t0, -20028($fp)
	lw $t1, -20032($fp)
	mul $t0, $t0, $t1
	sw $t0, -20036($fp)
	lw $t0, -664($fp)
	sw $t0, -20040($fp)
	lw $t1, -20036($fp)
	lw $t2, -20040($fp)
	bne $t1, $t2, label923
	j label924
label923:
	li $t0, 1
	sw $t0, -20024($fp)
label924:
	lw $t0, -2452($fp)
	sw $t0, -20044($fp)
	addi $sp, $sp, -4
	lw $t0, -20004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -20044($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -20048($fp)
	addi $sp, $sp, 20
	lw $ra, -4($fp)
	lw $v0, -20048($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1248
	li $t0, 21499
	sw $t0, -64($fp)
	addi $t0, $fp, -24
	sw $t0, -68($fp)
	li $t0, 0
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
	li $t0, 6043
	sw $t0, -88($fp)
	addi $t0, $fp, -24
	sw $t0, -92($fp)
	li $t0, 1
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
	li $t0, 5387
	sw $t0, -112($fp)
	addi $t0, $fp, -24
	sw $t0, -116($fp)
	li $t0, 2
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
	li $t0, 15221
	sw $t0, -136($fp)
	addi $t0, $fp, -24
	sw $t0, -140($fp)
	li $t0, 3
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
	li $t0, 3277
	sw $t0, -160($fp)
	addi $t0, $fp, -24
	sw $t0, -164($fp)
	li $t0, 4
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
	li $t0, 17346
	sw $t0, -184($fp)
	addi $t0, $fp, -60
	sw $t0, -188($fp)
	li $t0, 0
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
	li $t0, 62004
	sw $t0, -208($fp)
	addi $t0, $fp, -60
	sw $t0, -212($fp)
	li $t0, 1
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
	li $t0, 5989
	sw $t0, -232($fp)
	addi $t0, $fp, -60
	sw $t0, -236($fp)
	li $t0, 2
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
	li $t0, 121
	sw $t0, -256($fp)
	addi $t0, $fp, -60
	sw $t0, -260($fp)
	li $t0, 3
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
	li $t0, 41739
	sw $t0, -280($fp)
	addi $t0, $fp, -60
	sw $t0, -284($fp)
	li $t0, 4
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
	li $t0, 38007
	sw $t0, -304($fp)
	addi $t0, $fp, -60
	sw $t0, -308($fp)
	li $t0, 5
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
	li $t0, 38712
	sw $t0, -328($fp)
	addi $t0, $fp, -60
	sw $t0, -332($fp)
	li $t0, 6
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
	li $t0, 57701
	sw $t0, -352($fp)
	addi $t0, $fp, -60
	sw $t0, -356($fp)
	li $t0, 7
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
	li $t0, 8023
	sw $t0, -376($fp)
	addi $t0, $fp, -60
	sw $t0, -380($fp)
	li $t0, 8
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
	li $t0, 28139
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	li $t0, 49766
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	li $t0, 32606
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	li $t0, 24789
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	li $t0, 1217
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
label925:
	lw $t0, 4($fp)
	sw $t0, -460($fp)
	li $t0, 10679
	sw $t0, -464($fp)
	li $t0, 11488
	sw $t0, -468($fp)
	lw $t0, -464($fp)
	lw $t1, -468($fp)
	add $t0, $t0, $t1
	sw $t0, -472($fp)
	lw $t1, -460($fp)
	lw $t2, -472($fp)
	bge $t1, $t2, label926
	j label928
label928:
	li $t0, 0
	sw $t0, -476($fp)
	li $t0, 0
	sw $t0, -480($fp)
	lw $t0, -428($fp)
	sw $t0, -484($fp)
	lw $t0, 8($fp)
	sw $t0, -488($fp)
	lw $t0, -484($fp)
	lw $t1, -488($fp)
	mul $t0, $t0, $t1
	sw $t0, -492($fp)
	lw $t0, -452($fp)
	sw $t0, -496($fp)
	lw $t1, -492($fp)
	lw $t2, -496($fp)
	bgt $t1, $t2, label931
	j label932
label931:
	li $t0, 1
	sw $t0, -480($fp)
label932:
	li $t0, 0
	sw $t0, -500($fp)
	li $t0, 55427
	sw $t0, -504($fp)
	lw $t1, -504($fp)
	li $t2, 0
	bne $t1, $t2, label934
	j label933
label933:
	li $t0, 1
	sw $t0, -500($fp)
label934:
	li $t0, 7498
	sw $t0, -508($fp)
	lw $t0, -500($fp)
	lw $t1, -508($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -512($fp)
	li $t0, 0
	sw $t0, -516($fp)
	li $t0, 40162
	sw $t0, -520($fp)
	li $t0, 24824
	sw $t0, -524($fp)
	lw $t0, -520($fp)
	lw $t1, -524($fp)
	sub $t0, $t0, $t1
	sw $t0, -528($fp)
	lw $t0, 12($fp)
	sw $t0, -532($fp)
	lw $t1, -528($fp)
	lw $t2, -532($fp)
	bne $t1, $t2, label935
	j label936
label935:
	li $t0, 1
	sw $t0, -516($fp)
label936:
	li $t0, 0
	sw $t0, -536($fp)
	lw $t0, 4($fp)
	sw $t0, -540($fp)
	li $t0, 24808
	sw $t0, -544($fp)
	lw $t0, -540($fp)
	lw $t1, -544($fp)
	sub $t0, $t0, $t1
	sw $t0, -548($fp)
	lw $t1, -548($fp)
	li $t2, 0
	bne $t1, $t2, label937
	j label939
label939:
	lw $t0, 8($fp)
	sw $t0, -552($fp)
	lw $t1, -552($fp)
	li $t2, 0
	bne $t1, $t2, label937
	j label938
label937:
	li $t0, 1
	sw $t0, -536($fp)
label938:
	addi $sp, $sp, -4
	lw $t0, -480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -536($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -556($fp)
	addi $sp, $sp, 20
	lw $t1, -556($fp)
	li $t2, 0
	bne $t1, $t2, label930
	j label929
label929:
	li $t0, 1
	sw $t0, -476($fp)
label930:
	addi $t0, $fp, -24
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
	lw $t0, -476($fp)
	lw $t1, -576($fp)
	mul $t0, $t0, $t1
	sw $t0, -580($fp)
	lw $t1, -580($fp)
	li $t2, 0
	bne $t1, $t2, label926
	j label927
label926:
	lw $t0, -428($fp)
	sw $t0, -584($fp)
	j label925
label927:
	addi $t0, $fp, -24
	sw $t0, -588($fp)
	li $t0, 3
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
	lw $t0, -428($fp)
	sw $t0, -608($fp)
	lw $t0, -604($fp)
	lw $t1, -608($fp)
	sub $t0, $t0, $t1
	sw $t0, -612($fp)
	li $t0, 0
	sw $t0, -616($fp)
	li $t0, 0
	sw $t0, -620($fp)
	lw $t0, -428($fp)
	sw $t0, -624($fp)
	li $t0, 28652
	sw $t0, -628($fp)
	lw $t1, -624($fp)
	lw $t2, -628($fp)
	bge $t1, $t2, label942
	j label943
label942:
	li $t0, 1
	sw $t0, -620($fp)
label943:
	lw $t0, 8($fp)
	sw $t0, -632($fp)
	lw $t1, -620($fp)
	lw $t2, -632($fp)
	bgt $t1, $t2, label940
	j label941
label940:
	li $t0, 1
	sw $t0, -616($fp)
label941:
	li $t0, 28528
	sw $t0, -636($fp)
	li $t0, 0
	lw $t1, -636($fp)
	sub $t0, $t0, $t1
	sw $t0, -640($fp)
	li $t0, 27142
	sw $t0, -644($fp)
	lw $t0, -640($fp)
	lw $t1, -644($fp)
	sub $t0, $t0, $t1
	sw $t0, -648($fp)
	addi $t0, $fp, -24
	sw $t0, -652($fp)
	lw $t0, -416($fp)
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
	addi $sp, $sp, -4
	lw $t0, -612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -668($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -672($fp)
	addi $sp, $sp, 20
	li $t0, 34040
	sw $t0, -676($fp)
	li $t0, 65249
	sw $t0, -684($fp)
	addi $t0, $fp, -680
	sw $t0, -688($fp)
	li $t0, 0
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
	li $t0, 36463
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	li $t0, 51386
	sw $t0, -720($fp)
	li $t0, 0
	lw $t1, -720($fp)
	sub $t0, $t0, $t1
	sw $t0, -724($fp)
	li $t0, 0
	sw $t0, -728($fp)
	lw $t0, -428($fp)
	sw $t0, -732($fp)
	lw $t0, 16($fp)
	sw $t0, -736($fp)
	lw $t1, -732($fp)
	lw $t2, -736($fp)
	bne $t1, $t2, label946
	j label945
label946:
	li $t0, 37921
	sw $t0, -740($fp)
	lw $t1, -740($fp)
	li $t2, 0
	bne $t1, $t2, label944
	j label945
label944:
	li $t0, 1
	sw $t0, -728($fp)
label945:
	lw $t0, -428($fp)
	sw $t0, -744($fp)
	li $t0, 0
	lw $t1, -744($fp)
	sub $t0, $t0, $t1
	sw $t0, -748($fp)
	lw $t0, 8($fp)
	sw $t0, -752($fp)
	lw $t0, -748($fp)
	lw $t1, -752($fp)
	add $t0, $t0, $t1
	sw $t0, -756($fp)
	li $t0, 0
	sw $t0, -760($fp)
	addi $t0, $fp, -680
	sw $t0, -764($fp)
	li $t0, 0
	sw $t0, -768($fp)
	li $t0, 4
	lw $t1, -768($fp)
	mul $t0, $t0, $t1
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	lw $t1, -764($fp)
	add $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	lw $t1, 0($t0)
	sw $t1, -780($fp)
	lw $t1, -780($fp)
	li $t2, 0
	bne $t1, $t2, label949
	j label948
label949:
	lw $t0, -712($fp)
	sw $t0, -784($fp)
	lw $t1, -784($fp)
	li $t2, 0
	bne $t1, $t2, label947
	j label948
label947:
	li $t0, 1
	sw $t0, -760($fp)
label948:
	li $t0, 61717
	sw $t0, -788($fp)
	addi $sp, $sp, -4
	lw $t0, -728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -788($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -792($fp)
	addi $sp, $sp, 20
	lw $t0, -724($fp)
	lw $t1, -792($fp)
	sub $t0, $t0, $t1
	sw $t0, -796($fp)
	li $t0, 0
	sw $t0, -800($fp)
	li $t0, 14923
	sw $t0, -804($fp)
	lw $t0, -712($fp)
	sw $t0, -808($fp)
	lw $t0, -804($fp)
	lw $t1, -808($fp)
	mul $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t0, -416($fp)
	sw $t0, -816($fp)
	lw $t0, -812($fp)
	lw $t1, -816($fp)
	mul $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t0, 4($fp)
	sw $t0, -824($fp)
	lw $t0, -820($fp)
	lw $t1, -824($fp)
	mul $t0, $t0, $t1
	sw $t0, -828($fp)
	lw $t0, 12($fp)
	sw $t0, -832($fp)
	li $t0, 0
	lw $t1, -832($fp)
	sub $t0, $t0, $t1
	sw $t0, -836($fp)
	lw $t0, -828($fp)
	lw $t1, -836($fp)
	add $t0, $t0, $t1
	sw $t0, -840($fp)
	li $t0, 24683
	sw $t0, -844($fp)
	lw $t1, -840($fp)
	lw $t2, -844($fp)
	blt $t1, $t2, label950
	j label951
label950:
	li $t0, 1
	sw $t0, -800($fp)
label951:
label952:
	lw $t0, 8($fp)
	sw $t0, -848($fp)
	lw $t1, -848($fp)
	li $t2, 0
	bne $t1, $t2, label953
	j label954
label953:
	li $t0, 0
	sw $t0, -852($fp)
	lw $t0, -440($fp)
	sw $t0, -856($fp)
	li $t0, 30086
	sw $t0, -860($fp)
	lw $t0, -856($fp)
	lw $t1, -860($fp)
	sub $t0, $t0, $t1
	sw $t0, -864($fp)
	lw $t0, 8($fp)
	sw $t0, -868($fp)
	lw $t1, -864($fp)
	lw $t2, -868($fp)
	beq $t1, $t2, label955
	j label956
label955:
	li $t0, 1
	sw $t0, -852($fp)
label956:
	lw $t0, -852($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -872($fp)
	j label952
label954:
	addi $t0, $fp, -24
	sw $t0, -876($fp)
	li $t0, 0
	sw $t0, -880($fp)
	li $t0, 4
	lw $t1, -880($fp)
	mul $t0, $t0, $t1
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	lw $t1, -876($fp)
	add $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	lw $t1, 0($t0)
	sw $t1, -892($fp)
	lw $t0, -892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -896($fp)
	li $t0, 1
	sw $t0, -900($fp)
	li $t0, 4
	lw $t1, -900($fp)
	mul $t0, $t0, $t1
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	lw $t1, -896($fp)
	add $t0, $t0, $t1
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	lw $t1, 0($t0)
	sw $t1, -912($fp)
	lw $t0, -912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -916($fp)
	li $t0, 2
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
	lw $t0, -932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -936($fp)
	li $t0, 3
	sw $t0, -940($fp)
	li $t0, 4
	lw $t1, -940($fp)
	mul $t0, $t0, $t1
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	lw $t1, -936($fp)
	add $t0, $t0, $t1
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	lw $t1, 0($t0)
	sw $t1, -952($fp)
	lw $t0, -952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -956($fp)
	li $t0, 4
	sw $t0, -960($fp)
	li $t0, 4
	lw $t1, -960($fp)
	mul $t0, $t0, $t1
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	lw $t1, -956($fp)
	add $t0, $t0, $t1
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	lw $t1, 0($t0)
	sw $t1, -972($fp)
	lw $t0, -972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -976($fp)
	li $t0, 0
	sw $t0, -980($fp)
	li $t0, 4
	lw $t1, -980($fp)
	mul $t0, $t0, $t1
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	lw $t1, -976($fp)
	add $t0, $t0, $t1
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	lw $t1, 0($t0)
	sw $t1, -992($fp)
	lw $t0, -992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -996($fp)
	li $t0, 1
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
	lw $t0, -1012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1016($fp)
	li $t0, 2
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
	lw $t0, -1032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1036($fp)
	li $t0, 3
	sw $t0, -1040($fp)
	li $t0, 4
	lw $t1, -1040($fp)
	mul $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	lw $t1, -1036($fp)
	add $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	lw $t1, 0($t0)
	sw $t1, -1052($fp)
	lw $t0, -1052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1056($fp)
	li $t0, 4
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
	lw $t0, -1072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1076($fp)
	li $t0, 5
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
	addi $t0, $fp, -60
	sw $t0, -1096($fp)
	li $t0, 6
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
	addi $t0, $fp, -60
	sw $t0, -1116($fp)
	li $t0, 7
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
	addi $t0, $fp, -60
	sw $t0, -1136($fp)
	li $t0, 8
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
	lw $t0, -404($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -416($fp)
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -440($fp)
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1176($fp)
	addi $t0, $fp, -60
	sw $t0, -1180($fp)
	li $t0, 2
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
	lw $t1, -1196($fp)
	li $t2, 0
	bne $t1, $t2, label958
	j label957
label957:
	li $t0, 1
	sw $t0, -1176($fp)
label958:
	li $t0, 0
	sw $t0, -1200($fp)
	li $t0, 52822
	sw $t0, -1204($fp)
	lw $t1, -1204($fp)
	li $t2, 0
	bne $t1, $t2, label962
	j label961
label962:
	lw $t0, 8($fp)
	sw $t0, -1208($fp)
	lw $t1, -1208($fp)
	li $t2, 0
	bne $t1, $t2, label959
	j label961
label961:
	li $t0, 14316
	sw $t0, -1212($fp)
	lw $t1, -1212($fp)
	li $t2, 0
	bne $t1, $t2, label959
	j label960
label959:
	li $t0, 1
	sw $t0, -1200($fp)
label960:
	li $t0, 0
	sw $t0, -1216($fp)
	lw $t0, 12($fp)
	sw $t0, -1220($fp)
	li $t0, 22947
	sw $t0, -1224($fp)
	lw $t0, -1220($fp)
	lw $t1, -1224($fp)
	add $t0, $t0, $t1
	sw $t0, -1228($fp)
	lw $t1, -1228($fp)
	li $t2, 0
	bne $t1, $t2, label963
	j label965
label965:
	lw $t0, -428($fp)
	sw $t0, -1232($fp)
	lw $t1, -1232($fp)
	li $t2, 0
	bne $t1, $t2, label963
	j label964
label963:
	li $t0, 1
	sw $t0, -1216($fp)
label964:
	lw $t0, 8($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -1240($fp)
	addi $sp, $sp, -4
	lw $t0, -1176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1240($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1244($fp)
	addi $sp, $sp, 20
	lw $t0, 8($fp)
	sw $t0, -1248($fp)
	lw $t0, -1244($fp)
	lw $t1, -1248($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1252($fp)
	lw $ra, -4($fp)
	lw $v0, -1252($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -6000
	li $t0, 15533
	sw $t0, -136($fp)
	addi $t0, $fp, -36
	sw $t0, -140($fp)
	li $t0, 0
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
	li $t0, 697
	sw $t0, -160($fp)
	addi $t0, $fp, -36
	sw $t0, -164($fp)
	li $t0, 1
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
	li $t0, 23563
	sw $t0, -184($fp)
	addi $t0, $fp, -36
	sw $t0, -188($fp)
	li $t0, 2
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
	li $t0, 40341
	sw $t0, -208($fp)
	addi $t0, $fp, -36
	sw $t0, -212($fp)
	li $t0, 3
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
	li $t0, 40859
	sw $t0, -232($fp)
	addi $t0, $fp, -36
	sw $t0, -236($fp)
	li $t0, 4
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
	li $t0, 48388
	sw $t0, -256($fp)
	addi $t0, $fp, -36
	sw $t0, -260($fp)
	li $t0, 5
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
	li $t0, 30233
	sw $t0, -280($fp)
	addi $t0, $fp, -36
	sw $t0, -284($fp)
	li $t0, 6
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
	li $t0, 48357
	sw $t0, -304($fp)
	addi $t0, $fp, -36
	sw $t0, -308($fp)
	li $t0, 7
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
	li $t0, 24385
	sw $t0, -328($fp)
	addi $t0, $fp, -68
	sw $t0, -332($fp)
	li $t0, 0
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
	li $t0, 30070
	sw $t0, -352($fp)
	addi $t0, $fp, -68
	sw $t0, -356($fp)
	li $t0, 1
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
	li $t0, 11350
	sw $t0, -376($fp)
	addi $t0, $fp, -68
	sw $t0, -380($fp)
	li $t0, 2
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
	li $t0, 51528
	sw $t0, -400($fp)
	addi $t0, $fp, -68
	sw $t0, -404($fp)
	li $t0, 3
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
	li $t0, 58723
	sw $t0, -424($fp)
	addi $t0, $fp, -68
	sw $t0, -428($fp)
	li $t0, 4
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
	li $t0, 61377
	sw $t0, -448($fp)
	addi $t0, $fp, -68
	sw $t0, -452($fp)
	li $t0, 5
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
	li $t0, 19178
	sw $t0, -472($fp)
	addi $t0, $fp, -68
	sw $t0, -476($fp)
	li $t0, 6
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
	li $t0, 27227
	sw $t0, -496($fp)
	addi $t0, $fp, -68
	sw $t0, -500($fp)
	li $t0, 7
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
	li $t0, 61090
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	li $t0, 55641
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	li $t0, 13077
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	li $t0, 57272
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 32558
	sw $t0, -568($fp)
	addi $t0, $fp, -76
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
	li $t0, 64584
	sw $t0, -592($fp)
	addi $t0, $fp, -76
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
	li $t0, 29657
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
	li $t0, 47481
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	li $t0, 23731
	sw $t0, -652($fp)
	addi $t0, $fp, -112
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
	li $t0, 59743
	sw $t0, -676($fp)
	addi $t0, $fp, -112
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
	li $t0, 4892
	sw $t0, -700($fp)
	addi $t0, $fp, -112
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
	li $t0, 11018
	sw $t0, -724($fp)
	addi $t0, $fp, -112
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
	li $t0, 8523
	sw $t0, -748($fp)
	addi $t0, $fp, -112
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
	li $t0, 60446
	sw $t0, -772($fp)
	addi $t0, $fp, -112
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
	li $t0, 23093
	sw $t0, -796($fp)
	addi $t0, $fp, -112
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
	li $t0, 24056
	sw $t0, -820($fp)
	addi $t0, $fp, -112
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
	li $t0, 61143
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	li $t0, 46657
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	li $t0, 64398
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -876($fp)
	li $t0, 36466
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -888($fp)
	li $t0, 29509
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	li $t0, 29095
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -912($fp)
	li $t0, 19287
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	li $t0, 53894
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	li $t0, 59165
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -948($fp)
	li $t0, 30637
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -960($fp)
	li $t0, 39886
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -972($fp)
	li $t0, 52352
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	sw $t0, -984($fp)
	li $t0, 26479
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	li $t0, 59064
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -1008($fp)
	li $t0, 14043
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1020($fp)
	li $t0, 22033
	sw $t0, -1024($fp)
	addi $t0, $fp, -132
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
	li $t0, 49170
	sw $t0, -1048($fp)
	addi $t0, $fp, -132
	sw $t0, -1052($fp)
	li $t0, 1
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
	li $t0, 27120
	sw $t0, -1072($fp)
	addi $t0, $fp, -132
	sw $t0, -1076($fp)
	li $t0, 2
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
	li $t0, 13769
	sw $t0, -1096($fp)
	addi $t0, $fp, -132
	sw $t0, -1100($fp)
	li $t0, 3
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
	li $t0, 16192
	sw $t0, -1120($fp)
	addi $t0, $fp, -132
	sw $t0, -1124($fp)
	li $t0, 4
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
	li $t0, 26168
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	sw $t0, -1152($fp)
	li $t0, 43426
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	sw $t0, -1164($fp)
	li $t0, 63673
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -1176($fp)
	li $t0, 49900
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -1188($fp)
	li $t0, 37633
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -1200($fp)
	li $t0, 3030
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -1212($fp)
	li $t0, 0
	sw $t0, -1216($fp)
	li $t0, 18475
	sw $t0, -1220($fp)
	lw $t1, -1220($fp)
	li $t2, 0
	bne $t1, $t2, label967
	j label968
label968:
	li $t0, 4677
	sw $t0, -1224($fp)
	lw $t1, -1224($fp)
	li $t2, 0
	bne $t1, $t2, label966
	j label967
label966:
	li $t0, 1
	sw $t0, -1216($fp)
label967:
	lw $t0, -980($fp)
	sw $t0, -1228($fp)
	li $t0, 46156
	sw $t0, -1232($fp)
	lw $t0, -1228($fp)
	lw $t1, -1232($fp)
	mul $t0, $t0, $t1
	sw $t0, -1236($fp)
	li $t0, 63476
	sw $t0, -1240($fp)
	lw $t0, -1236($fp)
	lw $t1, -1240($fp)
	add $t0, $t0, $t1
	sw $t0, -1244($fp)
	li $t0, 60918
	sw $t0, -1248($fp)
	li $t0, 0
	lw $t1, -1248($fp)
	sub $t0, $t0, $t1
	sw $t0, -1252($fp)
	lw $t0, 12($fp)
	sw $t0, -1256($fp)
	lw $t0, -1252($fp)
	lw $t1, -1256($fp)
	add $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t0, -980($fp)
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -1268($fp)
	addi $sp, $sp, -4
	lw $t0, -1216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1268($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1272($fp)
	addi $sp, $sp, 20
	li $t0, 59083
	sw $t0, -1276($fp)
	lw $t0, -1272($fp)
	lw $t1, -1276($fp)
	mul $t0, $t0, $t1
	sw $t0, -1280($fp)
	li $t0, 0
	lw $t1, -1280($fp)
	sub $t0, $t0, $t1
	sw $t0, -1284($fp)
	lw $t0, -944($fp)
	sw $t0, -1288($fp)
	lw $t0, -1184($fp)
	sw $t0, -1292($fp)
	lw $t0, -1288($fp)
	lw $t1, -1292($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1296($fp)
	lw $t0, -1284($fp)
	lw $t1, -1296($fp)
	sub $t0, $t0, $t1
	sw $t0, -1300($fp)
	li $t0, 0
	sw $t0, -1304($fp)
	li $t0, 29105
	sw $t0, -1308($fp)
	lw $t1, -1308($fp)
	li $t2, 0
	bne $t1, $t2, label971
	j label970
label971:
	lw $t0, -644($fp)
	sw $t0, -1312($fp)
	lw $t1, -1312($fp)
	li $t2, 0
	bne $t1, $t2, label969
	j label970
label969:
	li $t0, 1
	sw $t0, -1304($fp)
label970:
	li $t0, 0
	sw $t0, -1316($fp)
	lw $t0, -1208($fp)
	sw $t0, -1320($fp)
	li $t0, 30013
	sw $t0, -1324($fp)
	lw $t0, -1320($fp)
	lw $t1, -1324($fp)
	sub $t0, $t0, $t1
	sw $t0, -1328($fp)
	lw $t0, -884($fp)
	sw $t0, -1332($fp)
	lw $t1, -1328($fp)
	lw $t2, -1332($fp)
	bne $t1, $t2, label972
	j label973
label972:
	li $t0, 1
	sw $t0, -1316($fp)
label973:
	li $t0, 3539
	sw $t0, -1336($fp)
	li $t0, 0
	sw $t0, -1340($fp)
	li $t0, 65132
	sw $t0, -1344($fp)
	lw $t1, -1344($fp)
	li $t2, 0
	bne $t1, $t2, label975
	j label974
label974:
	li $t0, 1
	sw $t0, -1340($fp)
label975:
	lw $t0, -1172($fp)
	sw $t0, -1348($fp)
	lw $t0, -1340($fp)
	lw $t1, -1348($fp)
	add $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t0, -1148($fp)
	sw $t0, -1356($fp)
	addi $sp, $sp, -4
	lw $t0, -1304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1356($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1360($fp)
	addi $sp, $sp, 24
	li $t0, 32634
	sw $t0, -1364($fp)
	lw $t0, -1360($fp)
	lw $t1, -1364($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1368($fp)
	li $t0, 0
	sw $t0, -1372($fp)
	li $t0, 49300
	sw $t0, -1376($fp)
	lw $t1, -1376($fp)
	li $t2, 0
	bne $t1, $t2, label977
	j label976
label976:
	li $t0, 1
	sw $t0, -1372($fp)
label977:
	lw $t0, -1368($fp)
	lw $t1, -1372($fp)
	mul $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $t0, -1300($fp)
	lw $t1, -1380($fp)
	sub $t0, $t0, $t1
	sw $t0, -1384($fp)
label978:
	li $t0, 0
	sw $t0, -1388($fp)
	lw $t0, -884($fp)
	sw $t0, -1392($fp)
	addi $t0, $fp, -132
	sw $t0, -1396($fp)
	li $t0, 2
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
	lw $t0, -1392($fp)
	lw $t1, -1412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1416($fp)
	lw $t0, -1172($fp)
	sw $t0, -1420($fp)
	lw $t1, -1416($fp)
	lw $t2, -1420($fp)
	bge $t1, $t2, label981
	j label982
label981:
	li $t0, 1
	sw $t0, -1388($fp)
label982:
	li $t0, 0
	sw $t0, -1424($fp)
	li $t0, 14402
	sw $t0, -1428($fp)
	lw $t1, -1428($fp)
	li $t2, 0
	bne $t1, $t2, label984
	j label983
label983:
	li $t0, 1
	sw $t0, -1424($fp)
label984:
	li $t0, 0
	lw $t1, -1424($fp)
	sub $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t0, -992($fp)
	sw $t0, -1436($fp)
	lw $t0, -1432($fp)
	lw $t1, -1436($fp)
	sub $t0, $t0, $t1
	sw $t0, -1440($fp)
	lw $t1, -1388($fp)
	lw $t2, -1440($fp)
	bge $t1, $t2, label979
	j label980
label979:
	li $t0, 57350
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -1448($fp)
	lw $t1, -1448($fp)
	li $t2, 0
	bne $t1, $t2, label985
	j label986
label985:
label988:
	addi $t0, $fp, -80
	sw $t0, -1452($fp)
	lw $t0, -536($fp)
	sw $t0, -1456($fp)
	lw $t0, -1148($fp)
	sw $t0, -1460($fp)
	lw $t0, -1456($fp)
	lw $t1, -1460($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1464($fp)
	lw $t0, -860($fp)
	sw $t0, -1468($fp)
	lw $t0, -1464($fp)
	lw $t1, -1468($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1472($fp)
	li $t0, 0
	sw $t0, -1476($fp)
	lw $t0, -524($fp)
	sw $t0, -1480($fp)
	lw $t1, -1480($fp)
	li $t2, 0
	bne $t1, $t2, label992
	j label991
label991:
	li $t0, 1
	sw $t0, -1476($fp)
label992:
	lw $t0, -1472($fp)
	lw $t1, -1476($fp)
	sub $t0, $t0, $t1
	sw $t0, -1484($fp)
	li $t0, 4
	lw $t1, -1484($fp)
	mul $t0, $t0, $t1
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	lw $t1, -1452($fp)
	add $t0, $t0, $t1
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	lw $t1, 0($t0)
	sw $t1, -1496($fp)
	lw $t1, -1496($fp)
	li $t2, 0
	bne $t1, $t2, label989
	j label990
label989:
	li $t0, 0
	sw $t0, -1500($fp)
	li $t0, 13080
	sw $t0, -1504($fp)
	li $t0, 0
	sw $t0, -1508($fp)
	lw $t0, -548($fp)
	sw $t0, -1512($fp)
	lw $t1, -1512($fp)
	li $t2, 0
	bne $t1, $t2, label996
	j label995
label995:
	li $t0, 1
	sw $t0, -1508($fp)
label996:
	lw $t0, -1504($fp)
	lw $t1, -1508($fp)
	mul $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t0, -848($fp)
	sw $t0, -1520($fp)
	lw $t0, -1516($fp)
	lw $t1, -1520($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1524($fp)
	li $t0, 0
	sw $t0, -1528($fp)
	li $t0, 0
	sw $t0, -1532($fp)
	li $t0, 40881
	sw $t0, -1536($fp)
	li $t0, 50879
	sw $t0, -1540($fp)
	lw $t0, -1536($fp)
	lw $t1, -1540($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1544($fp)
	li $t0, 27123
	sw $t0, -1548($fp)
	lw $t1, -1544($fp)
	lw $t2, -1548($fp)
	bgt $t1, $t2, label999
	j label1000
label999:
	li $t0, 1
	sw $t0, -1532($fp)
label1000:
	li $t0, 62914
	sw $t0, -1552($fp)
	lw $t0, 16($fp)
	sw $t0, -1556($fp)
	lw $t0, -1552($fp)
	lw $t1, -1556($fp)
	add $t0, $t0, $t1
	sw $t0, -1560($fp)
	lw $t1, -1532($fp)
	lw $t2, -1560($fp)
	blt $t1, $t2, label997
	j label998
label997:
	li $t0, 1
	sw $t0, -1528($fp)
label998:
	lw $t1, -1524($fp)
	lw $t2, -1528($fp)
	bne $t1, $t2, label993
	j label994
label993:
	li $t0, 1
	sw $t0, -1500($fp)
label994:
	lw $ra, -4($fp)
	lw $v0, -1500($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label988
label990:
	j label987
label986:
	li $t0, 0
	sw $t0, -1564($fp)
	addi $t0, $fp, -76
	sw $t0, -1568($fp)
	li $t0, 0
	sw $t0, -1572($fp)
	li $t0, 4
	lw $t1, -1572($fp)
	mul $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	lw $t1, -1568($fp)
	add $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	lw $t1, 0($t0)
	sw $t1, -1584($fp)
	li $t0, 0
	sw $t0, -1588($fp)
	li $t0, 0
	sw $t0, -1592($fp)
	li $t0, 64776
	sw $t0, -1596($fp)
	lw $t0, -1148($fp)
	sw $t0, -1600($fp)
	lw $t1, -1596($fp)
	lw $t2, -1600($fp)
	ble $t1, $t2, label1005
	j label1006
label1005:
	li $t0, 1
	sw $t0, -1592($fp)
label1006:
	li $t0, 0
	sw $t0, -1604($fp)
	li $t0, 54574
	sw $t0, -1608($fp)
	lw $t1, -1608($fp)
	li $t2, 0
	bne $t1, $t2, label1009
	j label1007
label1009:
	li $t0, 48842
	sw $t0, -1612($fp)
	lw $t1, -1612($fp)
	li $t2, 0
	bne $t1, $t2, label1007
	j label1008
label1007:
	li $t0, 1
	sw $t0, -1604($fp)
label1008:
	li $t0, 0
	sw $t0, -1616($fp)
	li $t0, 14876
	sw $t0, -1620($fp)
	lw $t1, -1620($fp)
	li $t2, 0
	bne $t1, $t2, label1011
	j label1010
label1010:
	li $t0, 1
	sw $t0, -1616($fp)
label1011:
	li $t0, 0
	sw $t0, -1624($fp)
	lw $t0, -1160($fp)
	sw $t0, -1628($fp)
	li $t0, 11148
	sw $t0, -1632($fp)
	lw $t1, -1628($fp)
	lw $t2, -1632($fp)
	beq $t1, $t2, label1012
	j label1014
label1014:
	li $t0, 50705
	sw $t0, -1636($fp)
	lw $t1, -1636($fp)
	li $t2, 0
	bne $t1, $t2, label1012
	j label1013
label1012:
	li $t0, 1
	sw $t0, -1624($fp)
label1013:
	addi $sp, $sp, -4
	lw $t0, -1592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1624($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1640($fp)
	addi $sp, $sp, 20
	lw $t1, -1640($fp)
	li $t2, 0
	bne $t1, $t2, label1004
	j label1003
label1003:
	li $t0, 1
	sw $t0, -1588($fp)
label1004:
	addi $t0, $fp, -68
	sw $t0, -1644($fp)
	li $t0, 0
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
	lw $t0, -1588($fp)
	lw $t1, -1660($fp)
	mul $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t1, -1584($fp)
	lw $t2, -1664($fp)
	beq $t1, $t2, label1001
	j label1002
label1001:
	li $t0, 1
	sw $t0, -1564($fp)
label1002:
label987:
	j label978
label980:
	li $t0, 0
	sw $t0, -1668($fp)
	li $t0, 60158
	sw $t0, -1672($fp)
	li $t0, 0
	sw $t0, -1676($fp)
	li $t0, 7292
	sw $t0, -1680($fp)
	lw $t1, -1680($fp)
	li $t2, 0
	bne $t1, $t2, label1018
	j label1017
label1017:
	li $t0, 1
	sw $t0, -1676($fp)
label1018:
	lw $t0, -1672($fp)
	lw $t1, -1676($fp)
	mul $t0, $t0, $t1
	sw $t0, -1684($fp)
	li $t0, 0
	lw $t1, -1684($fp)
	sub $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t1, -1688($fp)
	li $t2, 0
	bne $t1, $t2, label1016
	j label1015
label1015:
	li $t0, 1
	sw $t0, -1668($fp)
label1016:
	li $t0, 0
	sw $t0, -1692($fp)
	lw $t0, -548($fp)
	sw $t0, -1696($fp)
	lw $t1, -1696($fp)
	li $t2, 0
	bne $t1, $t2, label1020
	j label1019
label1019:
	li $t0, 1
	sw $t0, -1692($fp)
label1020:
	li $t0, 0
	lw $t1, -1692($fp)
	sub $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t0, -1668($fp)
	lw $t1, -1700($fp)
	add $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t0, -1016($fp)
	sw $t0, -1708($fp)
	lw $t0, -1704($fp)
	lw $t1, -1708($fp)
	sub $t0, $t0, $t1
	sw $t0, -1712($fp)
	lw $ra, -4($fp)
	lw $v0, -1712($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label1021:
	addi $t0, $fp, -68
	sw $t0, -1716($fp)
	addi $t0, $fp, -80
	sw $t0, -1720($fp)
	lw $t0, -1148($fp)
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
	li $t0, 0
	lw $t1, -1736($fp)
	sub $t0, $t0, $t1
	sw $t0, -1740($fp)
	li $t0, 0
	lw $t1, -1740($fp)
	sub $t0, $t0, $t1
	sw $t0, -1744($fp)
	li $t0, 4
	lw $t1, -1744($fp)
	mul $t0, $t0, $t1
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	lw $t1, -1716($fp)
	add $t0, $t0, $t1
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	lw $t1, 0($t0)
	sw $t1, -1756($fp)
	lw $t1, -1756($fp)
	li $t2, 0
	bne $t1, $t2, label1022
	j label1023
label1022:
	li $t0, 49812
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	sw $t0, -1768($fp)
	li $t0, 13098
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	sw $t0, -1780($fp)
	li $t0, 11969
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	sw $t0, -1792($fp)
	li $t0, 43359
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	sw $t0, -1800($fp)
	lw $t0, -1800($fp)
	sw $t0, -1804($fp)
	li $t0, 12694
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	sw $t0, -1816($fp)
label1024:
	addi $t0, $fp, -80
	sw $t0, -1820($fp)
	lw $t0, -1016($fp)
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	sw $t0, -1828($fp)
	li $t0, 4
	lw $t1, -1828($fp)
	mul $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	lw $t1, -1820($fp)
	add $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	lw $t1, 0($t0)
	sw $t1, -1840($fp)
	lw $t1, -1840($fp)
	li $t2, 0
	bne $t1, $t2, label1025
	j label1026
label1025:
	li $t0, 0
	sw $t0, -1844($fp)
	lw $t0, -1812($fp)
	sw $t0, -1848($fp)
	lw $t1, -1848($fp)
	li $t2, 0
	bne $t1, $t2, label1028
	j label1027
label1027:
	li $t0, 1
	sw $t0, -1844($fp)
label1028:
	li $t0, 0
	lw $t1, -1844($fp)
	sub $t0, $t0, $t1
	sw $t0, -1852($fp)
	j label1024
label1026:
	li $t0, 0
	sw $t0, -1856($fp)
	li $t0, 15508
	sw $t0, -1860($fp)
	li $t0, 0
	lw $t1, -1860($fp)
	sub $t0, $t0, $t1
	sw $t0, -1864($fp)
	li $t0, 0
	sw $t0, -1868($fp)
	lw $t0, -560($fp)
	sw $t0, -1872($fp)
	lw $t0, -1776($fp)
	sw $t0, -1876($fp)
	lw $t0, -1872($fp)
	lw $t1, -1876($fp)
	mul $t0, $t0, $t1
	sw $t0, -1880($fp)
	li $t0, 0
	sw $t0, -1884($fp)
	li $t0, 0
	sw $t0, -1888($fp)
	li $t0, 6003
	sw $t0, -1892($fp)
	lw $t1, -1892($fp)
	li $t2, 0
	bne $t1, $t2, label1036
	j label1035
label1035:
	li $t0, 1
	sw $t0, -1888($fp)
label1036:
	li $t0, 51078
	sw $t0, -1896($fp)
	lw $t1, -1888($fp)
	lw $t2, -1896($fp)
	ble $t1, $t2, label1033
	j label1034
label1033:
	li $t0, 1
	sw $t0, -1884($fp)
label1034:
	li $t0, 0
	sw $t0, -1900($fp)
	li $t0, 57137
	sw $t0, -1904($fp)
	li $t0, 59264
	sw $t0, -1908($fp)
	lw $t1, -1904($fp)
	lw $t2, -1908($fp)
	blt $t1, $t2, label1039
	j label1038
label1039:
	li $t0, 8870
	sw $t0, -1912($fp)
	lw $t1, -1912($fp)
	li $t2, 0
	bne $t1, $t2, label1037
	j label1038
label1037:
	li $t0, 1
	sw $t0, -1900($fp)
label1038:
	li $t0, 48142
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	sw $t0, -1920($fp)
	addi $sp, $sp, -4
	lw $t0, -1880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1920($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1924($fp)
	addi $sp, $sp, 20
	lw $t0, -1004($fp)
	sw $t0, -1928($fp)
	lw $t0, -1924($fp)
	lw $t1, -1928($fp)
	sub $t0, $t0, $t1
	sw $t0, -1932($fp)
	li $t0, 0
	sw $t0, -1936($fp)
	lw $t0, -548($fp)
	sw $t0, -1940($fp)
	lw $t0, -1172($fp)
	sw $t0, -1944($fp)
	lw $t1, -1940($fp)
	lw $t2, -1944($fp)
	bne $t1, $t2, label1042
	j label1041
label1042:
	li $t0, 41800
	sw $t0, -1948($fp)
	lw $t1, -1948($fp)
	li $t2, 0
	bne $t1, $t2, label1040
	j label1041
label1040:
	li $t0, 1
	sw $t0, -1936($fp)
label1041:
	li $t0, 7836
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -1956($fp)
	lw $t0, -896($fp)
	sw $t0, -1960($fp)
	addi $sp, $sp, -4
	lw $t0, -1932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1960($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1964($fp)
	addi $sp, $sp, 20
	lw $t1, -1964($fp)
	li $t2, 0
	bne $t1, $t2, label1032
	j label1031
label1031:
	li $t0, 1
	sw $t0, -1868($fp)
label1032:
	lw $t0, -1864($fp)
	lw $t1, -1868($fp)
	sub $t0, $t0, $t1
	sw $t0, -1968($fp)
	lw $t0, -872($fp)
	sw $t0, -1972($fp)
	li $t0, 0
	sw $t0, -1976($fp)
	li $t0, 21950
	sw $t0, -1980($fp)
	lw $t1, -1980($fp)
	li $t2, 0
	bne $t1, $t2, label1044
	j label1043
label1043:
	li $t0, 1
	sw $t0, -1976($fp)
label1044:
	lw $t0, -1972($fp)
	lw $t1, -1976($fp)
	mul $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t1, -1968($fp)
	lw $t2, -1984($fp)
	bgt $t1, $t2, label1029
	j label1030
label1029:
	li $t0, 1
	sw $t0, -1856($fp)
label1030:
	lw $t0, -1764($fp)
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1776($fp)
	sw $t0, -1992($fp)
	lw $t0, -1992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1788($fp)
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1800($fp)
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1812($fp)
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -2008($fp)
	li $t0, 0
	sw $t0, -2012($fp)
	lw $t0, -1788($fp)
	sw $t0, -2016($fp)
	lw $t0, -1148($fp)
	sw $t0, -2020($fp)
	lw $t1, -2016($fp)
	lw $t2, -2020($fp)
	bne $t1, $t2, label1045
	j label1046
label1045:
	li $t0, 1
	sw $t0, -2012($fp)
label1046:
	li $t0, 4
	lw $t1, -2012($fp)
	mul $t0, $t0, $t1
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	lw $t1, -2008($fp)
	add $t0, $t0, $t1
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	lw $t1, 0($t0)
	sw $t1, -2032($fp)
	lw $t0, -2032($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -2036($fp)
	lw $ra, -4($fp)
	lw $v0, -2036($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -2040($fp)
	lw $t0, -896($fp)
	sw $t0, -2044($fp)
	lw $t0, -1800($fp)
	sw $t0, -2048($fp)
	lw $t0, -2044($fp)
	lw $t1, -2048($fp)
	add $t0, $t0, $t1
	sw $t0, -2052($fp)
	lw $t1, -2052($fp)
	li $t2, 0
	bne $t1, $t2, label1047
	j label1050
label1050:
	li $t0, 46884
	sw $t0, -2056($fp)
	lw $t1, -2056($fp)
	li $t2, 0
	bne $t1, $t2, label1047
	j label1049
label1049:
	li $t0, 36421
	sw $t0, -2060($fp)
	li $t0, 49073
	sw $t0, -2064($fp)
	lw $t0, -2060($fp)
	lw $t1, -2064($fp)
	sub $t0, $t0, $t1
	sw $t0, -2068($fp)
	lw $t1, -2068($fp)
	li $t2, 0
	bne $t1, $t2, label1047
	j label1048
label1047:
	li $t0, 1
	sw $t0, -2040($fp)
label1048:
	lw $t0, -2040($fp)
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	sw $t0, -2072($fp)
	lw $t0, -968($fp)
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -2080($fp)
	li $t0, 5398
	sw $t0, -2084($fp)
	li $t0, 44262
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -2092($fp)
	li $t0, 0
	sw $t0, -2096($fp)
	lw $t0, -1800($fp)
	sw $t0, -2100($fp)
	li $t0, 0
	lw $t1, -2100($fp)
	sub $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $t0, -1016($fp)
	sw $t0, -2108($fp)
	lw $t1, -2104($fp)
	lw $t2, -2108($fp)
	beq $t1, $t2, label1051
	j label1052
label1051:
	li $t0, 1
	sw $t0, -2096($fp)
label1052:
	addi $sp, $sp, -4
	lw $t0, -2080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2096($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2112($fp)
	addi $sp, $sp, 20
label1053:
	li $t0, 37781
	sw $t0, -2116($fp)
	li $t0, 55410
	sw $t0, -2120($fp)
	lw $t0, -2116($fp)
	lw $t1, -2120($fp)
	mul $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t1, -2124($fp)
	li $t2, 0
	bne $t1, $t2, label1054
	j label1055
label1054:
	li $t0, 0
	sw $t0, -2128($fp)
	addi $t0, $fp, -112
	sw $t0, -2132($fp)
	li $t0, 56103
	sw $t0, -2136($fp)
	lw $t0, -956($fp)
	sw $t0, -2140($fp)
	lw $t0, -2136($fp)
	lw $t1, -2140($fp)
	sub $t0, $t0, $t1
	sw $t0, -2144($fp)
	li $t0, 4
	lw $t1, -2144($fp)
	mul $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t0, -2148($fp)
	lw $t1, -2132($fp)
	add $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	lw $t1, 0($t0)
	sw $t1, -2156($fp)
	lw $t1, -2156($fp)
	li $t2, 0
	bne $t1, $t2, label1057
	j label1058
label1058:
	li $t0, 0
	sw $t0, -2160($fp)
	addi $t0, $fp, -132
	sw $t0, -2164($fp)
	lw $t0, -1148($fp)
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
	lw $t1, -2180($fp)
	li $t2, 0
	bne $t1, $t2, label1060
	j label1059
label1059:
	li $t0, 1
	sw $t0, -2160($fp)
label1060:
	li $t0, 52658
	sw $t0, -2184($fp)
	lw $t0, -2160($fp)
	lw $t1, -2184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2188($fp)
	lw $t1, -2188($fp)
	li $t2, 0
	bne $t1, $t2, label1056
	j label1057
label1056:
	li $t0, 1
	sw $t0, -2128($fp)
label1057:
	j label1053
label1055:
	j label1021
label1023:
label1061:
	li $t0, 44449
	sw $t0, -2192($fp)
	lw $t1, -2192($fp)
	li $t2, 0
	bne $t1, $t2, label1062
	j label1063
label1062:
	li $t0, 39410
	sw $t0, -2196($fp)
	j label1061
label1063:
	li $t0, 51898
	sw $t0, -2200($fp)
	lw $ra, -4($fp)
	lw $v0, -2200($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 5585
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	sw $t0, -2252($fp)
	li $t0, 25746
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	sw $t0, -2264($fp)
	li $t0, 46521
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	sw $t0, -2272($fp)
	lw $t0, -2272($fp)
	sw $t0, -2276($fp)
	li $t0, 12877
	sw $t0, -2280($fp)
	addi $t0, $fp, -2240
	sw $t0, -2284($fp)
	li $t0, 0
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
	li $t0, 10023
	sw $t0, -2304($fp)
	addi $t0, $fp, -2240
	sw $t0, -2308($fp)
	li $t0, 1
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
	li $t0, 59619
	sw $t0, -2328($fp)
	addi $t0, $fp, -2240
	sw $t0, -2332($fp)
	li $t0, 2
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
	li $t0, 24847
	sw $t0, -2352($fp)
	addi $t0, $fp, -2240
	sw $t0, -2356($fp)
	li $t0, 3
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
	li $t0, 53382
	sw $t0, -2376($fp)
	addi $t0, $fp, -2240
	sw $t0, -2380($fp)
	li $t0, 4
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
	li $t0, 6777
	sw $t0, -2400($fp)
	addi $t0, $fp, -2240
	sw $t0, -2404($fp)
	li $t0, 5
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
	li $t0, 40355
	sw $t0, -2424($fp)
	addi $t0, $fp, -2240
	sw $t0, -2428($fp)
	li $t0, 6
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
	li $t0, 61219
	sw $t0, -2448($fp)
	addi $t0, $fp, -2240
	sw $t0, -2452($fp)
	li $t0, 7
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
	li $t0, 48577
	sw $t0, -2472($fp)
	addi $t0, $fp, -2240
	sw $t0, -2476($fp)
	li $t0, 8
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
	li $t0, 22962
	sw $t0, -2496($fp)
	addi $t0, $fp, -2240
	sw $t0, -2500($fp)
	li $t0, 9
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
	li $t0, 52820
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	sw $t0, -2532($fp)
	li $t0, 42305
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	sw $t0, -2544($fp)
	li $t0, 31832
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	sw $t0, -2552($fp)
	lw $t0, -2552($fp)
	sw $t0, -2556($fp)
	li $t0, 58823
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	sw $t0, -2568($fp)
	li $t0, 27848
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	sw $t0, -2576($fp)
	lw $t0, -2576($fp)
	sw $t0, -2580($fp)
	li $t0, 53782
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	sw $t0, -2592($fp)
	li $t0, 40171
	sw $t0, -2596($fp)
	addi $t0, $fp, -2520
	sw $t0, -2600($fp)
	li $t0, 0
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
	li $t0, 64269
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	sw $t0, -2628($fp)
label1064:
	li $t0, 0
	sw $t0, -2632($fp)
	li $t0, 37319
	sw $t0, -2636($fp)
	lw $t1, -2636($fp)
	li $t2, 0
	bne $t1, $t2, label1070
	j label1069
label1069:
	li $t0, 1
	sw $t0, -2632($fp)
label1070:
	li $t0, 18897
	sw $t0, -2640($fp)
	lw $t0, -2632($fp)
	lw $t1, -2640($fp)
	mul $t0, $t0, $t1
	sw $t0, -2644($fp)
	lw $t1, -2644($fp)
	li $t2, 0
	bne $t1, $t2, label1068
	j label1067
label1068:
	li $t0, 0
	sw $t0, -2648($fp)
	li $t0, 4132
	sw $t0, -2652($fp)
	lw $t0, -560($fp)
	sw $t0, -2656($fp)
	lw $t1, -2652($fp)
	lw $t2, -2656($fp)
	bgt $t1, $t2, label1071
	j label1072
label1071:
	li $t0, 1
	sw $t0, -2648($fp)
label1072:
	lw $t0, -536($fp)
	sw $t0, -2660($fp)
	lw $t1, -2648($fp)
	lw $t2, -2660($fp)
	beq $t1, $t2, label1065
	j label1067
label1067:
	li $t0, 9565
	sw $t0, -2664($fp)
	addi $t0, $fp, -132
	sw $t0, -2668($fp)
	li $t0, 3
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
	lw $t0, -2664($fp)
	lw $t1, -2684($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2688($fp)
	lw $t1, -2688($fp)
	li $t2, 0
	bne $t1, $t2, label1065
	j label1066
label1065:
label1073:
	lw $t0, 8($fp)
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -2696($fp)
	lw $t0, -980($fp)
	sw $t0, -2700($fp)
	lw $t0, -932($fp)
	sw $t0, -2704($fp)
	lw $t0, -2700($fp)
	lw $t1, -2704($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2708($fp)
	lw $t0, -2576($fp)
	sw $t0, -2712($fp)
	lw $t0, -2708($fp)
	lw $t1, -2712($fp)
	mul $t0, $t0, $t1
	sw $t0, -2716($fp)
	li $t0, 0
	sw $t0, -2720($fp)
	lw $t0, -2564($fp)
	sw $t0, -2724($fp)
	lw $t1, -2724($fp)
	li $t2, 0
	bne $t1, $t2, label1077
	j label1076
label1076:
	li $t0, 1
	sw $t0, -2720($fp)
label1077:
	li $t0, 34109
	sw $t0, -2728($fp)
	lw $t0, -2720($fp)
	lw $t1, -2728($fp)
	sub $t0, $t0, $t1
	sw $t0, -2732($fp)
	li $t0, 0
	sw $t0, -2736($fp)
	lw $t0, -860($fp)
	sw $t0, -2740($fp)
	lw $t1, -2740($fp)
	li $t2, 0
	bne $t1, $t2, label1081
	j label1079
label1081:
	li $t0, 62223
	sw $t0, -2744($fp)
	lw $t1, -2744($fp)
	li $t2, 0
	bne $t1, $t2, label1080
	j label1079
label1080:
	li $t0, 53221
	sw $t0, -2748($fp)
	lw $t1, -2748($fp)
	li $t2, 0
	bne $t1, $t2, label1078
	j label1079
label1078:
	li $t0, 1
	sw $t0, -2736($fp)
label1079:
	addi $sp, $sp, -4
	lw $t0, -2696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2736($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2752($fp)
	addi $sp, $sp, 20
	lw $t1, -2752($fp)
	li $t2, 0
	bne $t1, $t2, label1074
	j label1075
label1074:
	li $t0, 48585
	sw $t0, -2756($fp)
	addi $t0, $fp, -2240
	sw $t0, -2760($fp)
	li $t0, 4
	sw $t0, -2764($fp)
	li $t0, 4
	lw $t1, -2764($fp)
	mul $t0, $t0, $t1
	sw $t0, -2768($fp)
	lw $t0, -2768($fp)
	lw $t1, -2760($fp)
	add $t0, $t0, $t1
	sw $t0, -2772($fp)
	lw $t0, -2772($fp)
	lw $t1, 0($t0)
	sw $t1, -2776($fp)
	lw $t0, -2756($fp)
	lw $t1, -2776($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2780($fp)
	j label1073
label1075:
	j label1064
label1066:
label1082:
	li $t0, 30431
	sw $t0, -2784($fp)
	addi $t0, $fp, -36
	sw $t0, -2788($fp)
	li $t0, 5
	sw $t0, -2792($fp)
	li $t0, 4
	lw $t1, -2792($fp)
	mul $t0, $t0, $t1
	sw $t0, -2796($fp)
	lw $t0, -2796($fp)
	lw $t1, -2788($fp)
	add $t0, $t0, $t1
	sw $t0, -2800($fp)
	lw $t0, -2800($fp)
	lw $t1, 0($t0)
	sw $t1, -2804($fp)
	li $t0, 0
	sw $t0, -2808($fp)
	lw $t0, -2552($fp)
	sw $t0, -2812($fp)
	lw $t0, -848($fp)
	sw $t0, -2816($fp)
	lw $t0, -2812($fp)
	lw $t1, -2816($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2820($fp)
	li $t0, 23653
	sw $t0, -2824($fp)
	lw $t0, -2820($fp)
	lw $t1, -2824($fp)
	mul $t0, $t0, $t1
	sw $t0, -2828($fp)
	li $t0, 0
	sw $t0, -2832($fp)
	lw $t0, -1160($fp)
	sw $t0, -2836($fp)
	li $t0, 0
	lw $t1, -2836($fp)
	sub $t0, $t0, $t1
	sw $t0, -2840($fp)
	lw $t0, -968($fp)
	sw $t0, -2844($fp)
	lw $t1, -2840($fp)
	lw $t2, -2844($fp)
	ble $t1, $t2, label1087
	j label1088
label1087:
	li $t0, 1
	sw $t0, -2832($fp)
label1088:
	li $t0, 0
	sw $t0, -2848($fp)
	li $t0, 0
	sw $t0, -2852($fp)
	lw $t0, -2624($fp)
	sw $t0, -2856($fp)
	li $t0, 4343
	sw $t0, -2860($fp)
	lw $t1, -2856($fp)
	lw $t2, -2860($fp)
	beq $t1, $t2, label1091
	j label1092
label1091:
	li $t0, 1
	sw $t0, -2852($fp)
label1092:
	lw $t0, -2260($fp)
	sw $t0, -2864($fp)
	lw $t1, -2852($fp)
	lw $t2, -2864($fp)
	beq $t1, $t2, label1089
	j label1090
label1089:
	li $t0, 1
	sw $t0, -2848($fp)
label1090:
	li $t0, 6147
	sw $t0, -2868($fp)
	addi $sp, $sp, -4
	lw $t0, -2828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2868($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2872($fp)
	addi $sp, $sp, 20
	lw $t1, -2872($fp)
	li $t2, 0
	bne $t1, $t2, label1086
	j label1085
label1085:
	li $t0, 1
	sw $t0, -2808($fp)
label1086:
	lw $t0, -1196($fp)
	sw $t0, -2876($fp)
	lw $t0, -1172($fp)
	sw $t0, -2880($fp)
	lw $t0, -2876($fp)
	lw $t1, -2880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2884($fp)
	li $t0, 29570
	sw $t0, -2888($fp)
	lw $t0, -2528($fp)
	sw $t0, -2892($fp)
	lw $t0, -2888($fp)
	lw $t1, -2892($fp)
	add $t0, $t0, $t1
	sw $t0, -2896($fp)
	addi $sp, $sp, -4
	lw $t0, -2784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2896($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2900($fp)
	addi $sp, $sp, 24
	lw $t1, -2900($fp)
	li $t2, 0
	bne $t1, $t2, label1083
	j label1084
label1083:
	li $t0, 5814
	sw $t0, -2904($fp)
	lw $ra, -4($fp)
	lw $v0, -2904($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1082
label1084:
	li $t0, 0
	sw $t0, -2908($fp)
	li $t0, 0
	sw $t0, -2912($fp)
	li $t0, 0
	sw $t0, -2916($fp)
	lw $t0, -944($fp)
	sw $t0, -2920($fp)
	li $t0, 0
	sw $t0, -2924($fp)
	li $t0, 53408
	sw $t0, -2928($fp)
	lw $t1, -2928($fp)
	li $t2, 0
	bne $t1, $t2, label1100
	j label1099
label1099:
	li $t0, 1
	sw $t0, -2924($fp)
label1100:
	lw $t1, -2920($fp)
	lw $t2, -2924($fp)
	ble $t1, $t2, label1097
	j label1098
label1097:
	li $t0, 1
	sw $t0, -2916($fp)
label1098:
	li $t0, 13472
	sw $t0, -2932($fp)
	li $t0, 28776
	sw $t0, -2936($fp)
	lw $t0, -2932($fp)
	lw $t1, -2936($fp)
	sub $t0, $t0, $t1
	sw $t0, -2940($fp)
	li $t0, 40692
	sw $t0, -2944($fp)
	lw $t0, -2940($fp)
	lw $t1, -2944($fp)
	sub $t0, $t0, $t1
	sw $t0, -2948($fp)
	lw $t1, -2916($fp)
	lw $t2, -2948($fp)
	bgt $t1, $t2, label1095
	j label1096
label1095:
	li $t0, 1
	sw $t0, -2912($fp)
label1096:
	addi $t0, $fp, -2520
	sw $t0, -2952($fp)
	lw $t0, -644($fp)
	sw $t0, -2956($fp)
	li $t0, 4
	lw $t1, -2956($fp)
	mul $t0, $t0, $t1
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	lw $t1, -2952($fp)
	add $t0, $t0, $t1
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	lw $t1, 0($t0)
	sw $t1, -2968($fp)
	li $t0, 33979
	sw $t0, -2972($fp)
	li $t0, 18090
	sw $t0, -2976($fp)
	lw $t0, -2972($fp)
	lw $t1, -2976($fp)
	add $t0, $t0, $t1
	sw $t0, -2980($fp)
	li $t0, 48854
	sw $t0, -2984($fp)
	lw $t0, -2980($fp)
	lw $t1, -2984($fp)
	add $t0, $t0, $t1
	sw $t0, -2988($fp)
	li $t0, 0
	sw $t0, -2992($fp)
	li $t0, 0
	sw $t0, -2996($fp)
	lw $t0, -860($fp)
	sw $t0, -3000($fp)
	lw $t1, -3000($fp)
	li $t2, 0
	bne $t1, $t2, label1104
	j label1103
label1103:
	li $t0, 1
	sw $t0, -2996($fp)
label1104:
	li $t0, 60608
	sw $t0, -3004($fp)
	lw $t1, -2996($fp)
	lw $t2, -3004($fp)
	bgt $t1, $t2, label1101
	j label1102
label1101:
	li $t0, 1
	sw $t0, -2992($fp)
label1102:
	li $t0, 55778
	sw $t0, -3008($fp)
	lw $t0, -3008($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -3012($fp)
	addi $sp, $sp, -4
	lw $t0, -2968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3012($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3016($fp)
	addi $sp, $sp, 20
	lw $t1, -2912($fp)
	lw $t2, -3016($fp)
	bge $t1, $t2, label1093
	j label1094
label1093:
	li $t0, 1
	sw $t0, -2908($fp)
label1094:
	li $t0, 0
	sw $t0, -3020($fp)
	li $t0, 0
	sw $t0, -3024($fp)
	li $t0, 0
	sw $t0, -3028($fp)
	li $t0, 0
	sw $t0, -3032($fp)
	lw $t0, -2540($fp)
	sw $t0, -3036($fp)
	li $t0, 49764
	sw $t0, -3040($fp)
	lw $t0, -3036($fp)
	lw $t1, -3040($fp)
	mul $t0, $t0, $t1
	sw $t0, -3044($fp)
	li $t0, 9939
	sw $t0, -3048($fp)
	lw $t1, -3044($fp)
	lw $t2, -3048($fp)
	blt $t1, $t2, label1111
	j label1112
label1111:
	li $t0, 1
	sw $t0, -3032($fp)
label1112:
	li $t0, 23969
	sw $t0, -3052($fp)
	addi $t0, $fp, -36
	sw $t0, -3056($fp)
	lw $t0, -956($fp)
	sw $t0, -3060($fp)
	li $t0, 4
	lw $t1, -3060($fp)
	mul $t0, $t0, $t1
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	lw $t1, -3056($fp)
	add $t0, $t0, $t1
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	lw $t1, 0($t0)
	sw $t1, -3072($fp)
	li $t0, 0
	sw $t0, -3076($fp)
	li $t0, 26889
	sw $t0, -3080($fp)
	lw $t1, -3080($fp)
	li $t2, 0
	bne $t1, $t2, label1114
	j label1115
label1115:
	lw $t0, -1184($fp)
	sw $t0, -3084($fp)
	lw $t1, -3084($fp)
	li $t2, 0
	bne $t1, $t2, label1113
	j label1114
label1113:
	li $t0, 1
	sw $t0, -3076($fp)
label1114:
	li $t0, 0
	sw $t0, -3088($fp)
	lw $t0, -2588($fp)
	sw $t0, -3092($fp)
	lw $t0, 8($fp)
	sw $t0, -3096($fp)
	lw $t1, -3092($fp)
	lw $t2, -3096($fp)
	ble $t1, $t2, label1116
	j label1117
label1116:
	li $t0, 1
	sw $t0, -3088($fp)
label1117:
	lw $t0, -1172($fp)
	sw $t0, -3100($fp)
	li $t0, 0
	sw $t0, -3104($fp)
	lw $t0, -548($fp)
	sw $t0, -3108($fp)
	li $t0, 36284
	sw $t0, -3112($fp)
	lw $t0, -3108($fp)
	lw $t1, -3112($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3116($fp)
	lw $t1, -3116($fp)
	li $t2, 0
	bne $t1, $t2, label1118
	j label1120
label1120:
	li $t0, 15655
	sw $t0, -3120($fp)
	lw $t1, -3120($fp)
	li $t2, 0
	bne $t1, $t2, label1118
	j label1119
label1118:
	li $t0, 1
	sw $t0, -3104($fp)
label1119:
	addi $sp, $sp, -4
	lw $t0, -3072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3104($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3124($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -3128($fp)
	li $t0, 27512
	sw $t0, -3132($fp)
	li $t0, 20955
	sw $t0, -3136($fp)
	lw $t0, -3132($fp)
	lw $t1, -3136($fp)
	mul $t0, $t0, $t1
	sw $t0, -3140($fp)
	lw $t1, -3140($fp)
	li $t2, 0
	bne $t1, $t2, label1121
	j label1123
label1123:
	li $t0, 30202
	sw $t0, -3144($fp)
	lw $t1, -3144($fp)
	li $t2, 0
	bne $t1, $t2, label1121
	j label1122
label1121:
	li $t0, 1
	sw $t0, -3128($fp)
label1122:
	li $t0, 8614
	sw $t0, -3148($fp)
	li $t0, 16823
	sw $t0, -3152($fp)
	lw $t0, -3148($fp)
	lw $t1, -3152($fp)
	sub $t0, $t0, $t1
	sw $t0, -3156($fp)
	li $t0, 20637
	sw $t0, -3160($fp)
	lw $t0, -3156($fp)
	lw $t1, -3160($fp)
	add $t0, $t0, $t1
	sw $t0, -3164($fp)
	addi $sp, $sp, -4
	lw $t0, -3032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3164($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3168($fp)
	addi $sp, $sp, 24
	lw $t0, -2248($fp)
	sw $t0, -3172($fp)
	lw $t0, -3168($fp)
	lw $t1, -3172($fp)
	add $t0, $t0, $t1
	sw $t0, -3176($fp)
	lw $t0, -1172($fp)
	sw $t0, -3180($fp)
	li $t0, 17239
	sw $t0, -3184($fp)
	lw $t0, -3180($fp)
	lw $t1, -3184($fp)
	mul $t0, $t0, $t1
	sw $t0, -3188($fp)
	lw $t1, -3176($fp)
	lw $t2, -3188($fp)
	bgt $t1, $t2, label1109
	j label1110
label1109:
	li $t0, 1
	sw $t0, -3028($fp)
label1110:
	li $t0, 0
	sw $t0, -3192($fp)
	li $t0, 44084
	sw $t0, -3196($fp)
	li $t0, 0
	lw $t1, -3196($fp)
	sub $t0, $t0, $t1
	sw $t0, -3200($fp)
	lw $t1, -3200($fp)
	li $t2, 0
	bne $t1, $t2, label1125
	j label1124
label1124:
	li $t0, 1
	sw $t0, -3192($fp)
label1125:
	lw $t1, -3028($fp)
	lw $t2, -3192($fp)
	beq $t1, $t2, label1107
	j label1108
label1107:
	li $t0, 1
	sw $t0, -3024($fp)
label1108:
	li $t0, 0
	sw $t0, -3204($fp)
	li $t0, 0
	sw $t0, -3208($fp)
	li $t0, 39509
	sw $t0, -3212($fp)
	lw $t1, -3212($fp)
	li $t2, 0
	bne $t1, $t2, label1129
	j label1128
label1128:
	li $t0, 1
	sw $t0, -3208($fp)
label1129:
	li $t0, 23386
	sw $t0, -3216($fp)
	lw $t0, -3208($fp)
	lw $t1, -3216($fp)
	sub $t0, $t0, $t1
	sw $t0, -3220($fp)
	li $t0, 48427
	sw $t0, -3224($fp)
	lw $t0, -560($fp)
	sw $t0, -3228($fp)
	lw $t0, -3224($fp)
	lw $t1, -3228($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3232($fp)
	lw $t1, -3220($fp)
	lw $t2, -3232($fp)
	bge $t1, $t2, label1126
	j label1127
label1126:
	li $t0, 1
	sw $t0, -3204($fp)
label1127:
	lw $t1, -3024($fp)
	lw $t2, -3204($fp)
	bne $t1, $t2, label1105
	j label1106
label1105:
	li $t0, 1
	sw $t0, -3020($fp)
label1106:
	lw $t0, -2528($fp)
	sw $t0, -3236($fp)
	lw $t0, -3236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2540($fp)
	sw $t0, -3240($fp)
	lw $t0, -3240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2552($fp)
	sw $t0, -3244($fp)
	lw $t0, -3244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2564($fp)
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2576($fp)
	sw $t0, -3252($fp)
	lw $t0, -3252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2588($fp)
	sw $t0, -3256($fp)
	lw $t0, -3256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2520
	sw $t0, -3260($fp)
	li $t0, 0
	sw $t0, -3264($fp)
	li $t0, 4
	lw $t1, -3264($fp)
	mul $t0, $t0, $t1
	sw $t0, -3268($fp)
	lw $t0, -3268($fp)
	lw $t1, -3260($fp)
	add $t0, $t0, $t1
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	lw $t1, 0($t0)
	sw $t1, -3276($fp)
	lw $t0, -3276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2624($fp)
	sw $t0, -3280($fp)
	lw $t0, -3280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3284($fp)
	li $t0, 0
	sw $t0, -3288($fp)
	li $t0, 63163
	sw $t0, -3292($fp)
	lw $t1, -3292($fp)
	li $t2, 0
	bne $t1, $t2, label1134
	j label1133
label1133:
	li $t0, 1
	sw $t0, -3288($fp)
label1134:
	lw $t0, -1160($fp)
	sw $t0, -3296($fp)
	lw $t0, -3288($fp)
	lw $t1, -3296($fp)
	add $t0, $t0, $t1
	sw $t0, -3300($fp)
	lw $t1, -3300($fp)
	li $t2, 0
	bne $t1, $t2, label1132
	j label1131
label1132:
	lw $t0, -2272($fp)
	sw $t0, -3304($fp)
	lw $t1, -3304($fp)
	li $t2, 0
	bne $t1, $t2, label1130
	j label1131
label1130:
	li $t0, 1
	sw $t0, -3284($fp)
label1131:
	lw $ra, -4($fp)
	lw $v0, -3284($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 54381
	sw $t0, -3308($fp)
	lw $t0, -3308($fp)
	sw $t0, -3312($fp)
	lw $t0, -3312($fp)
	sw $t0, -3316($fp)
	li $t0, 40617
	sw $t0, -3320($fp)
	lw $t0, -3320($fp)
	sw $t0, -3324($fp)
	lw $t0, -3324($fp)
	sw $t0, -3328($fp)
	li $t0, 28058
	sw $t0, -3332($fp)
	lw $t0, -3332($fp)
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	sw $t0, -3340($fp)
	li $t0, 60195
	sw $t0, -3360($fp)
	addi $t0, $fp, -3356
	sw $t0, -3364($fp)
	li $t0, 0
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3372($fp)
	lw $t0, -3364($fp)
	lw $t1, -3372($fp)
	add $t0, $t0, $t1
	sw $t0, -3376($fp)
	lw $t0, -3360($fp)
	lw $t1, -3376($fp)
	sw $t0, 0($t1)
	lw $t0, -3376($fp)
	lw $t1, 0($t0)
	sw $t1, -3380($fp)
	li $t0, 28489
	sw $t0, -3384($fp)
	addi $t0, $fp, -3356
	sw $t0, -3388($fp)
	li $t0, 1
	sw $t0, -3392($fp)
	lw $t0, -3392($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3396($fp)
	lw $t0, -3388($fp)
	lw $t1, -3396($fp)
	add $t0, $t0, $t1
	sw $t0, -3400($fp)
	lw $t0, -3384($fp)
	lw $t1, -3400($fp)
	sw $t0, 0($t1)
	lw $t0, -3400($fp)
	lw $t1, 0($t0)
	sw $t1, -3404($fp)
	li $t0, 41530
	sw $t0, -3408($fp)
	addi $t0, $fp, -3356
	sw $t0, -3412($fp)
	li $t0, 2
	sw $t0, -3416($fp)
	lw $t0, -3416($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3420($fp)
	lw $t0, -3412($fp)
	lw $t1, -3420($fp)
	add $t0, $t0, $t1
	sw $t0, -3424($fp)
	lw $t0, -3408($fp)
	lw $t1, -3424($fp)
	sw $t0, 0($t1)
	lw $t0, -3424($fp)
	lw $t1, 0($t0)
	sw $t1, -3428($fp)
	li $t0, 23435
	sw $t0, -3432($fp)
	addi $t0, $fp, -3356
	sw $t0, -3436($fp)
	li $t0, 3
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
	li $t0, 3646
	sw $t0, -3456($fp)
	lw $t0, -3456($fp)
	sw $t0, -3460($fp)
	lw $t0, -3460($fp)
	sw $t0, -3464($fp)
	li $t0, 0
	sw $t0, -3468($fp)
	lw $t0, -896($fp)
	sw $t0, -3472($fp)
	li $t0, 31772
	sw $t0, -3476($fp)
	lw $t0, -3324($fp)
	sw $t0, -3480($fp)
	lw $t0, -3476($fp)
	lw $t1, -3480($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3484($fp)
	lw $t1, -3472($fp)
	lw $t2, -3484($fp)
	beq $t1, $t2, label1135
	j label1136
label1135:
	li $t0, 1
	sw $t0, -3468($fp)
label1136:
	li $t0, 0
	sw $t0, -3488($fp)
	li $t0, 0
	sw $t0, -3492($fp)
	li $t0, 18507
	sw $t0, -3496($fp)
	lw $t1, -3496($fp)
	li $t2, 0
	bne $t1, $t2, label1141
	j label1140
label1140:
	li $t0, 1
	sw $t0, -3492($fp)
label1141:
	li $t0, 0
	sw $t0, -3500($fp)
	li $t0, 0
	sw $t0, -3504($fp)
	lw $t0, 4($fp)
	sw $t0, -3508($fp)
	lw $t0, -2248($fp)
	sw $t0, -3512($fp)
	lw $t1, -3508($fp)
	lw $t2, -3512($fp)
	blt $t1, $t2, label1144
	j label1145
label1144:
	li $t0, 1
	sw $t0, -3504($fp)
label1145:
	li $t0, 37625
	sw $t0, -3516($fp)
	lw $t1, -3504($fp)
	lw $t2, -3516($fp)
	ble $t1, $t2, label1142
	j label1143
label1142:
	li $t0, 1
	sw $t0, -3500($fp)
label1143:
	lw $t1, -3492($fp)
	lw $t2, -3500($fp)
	bne $t1, $t2, label1139
	j label1138
label1139:
	li $t0, 49862
	sw $t0, -3520($fp)
	lw $t0, 4($fp)
	sw $t0, -3524($fp)
	lw $t0, -3520($fp)
	lw $t1, -3524($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3528($fp)
	li $t0, 1825
	sw $t0, -3532($fp)
	lw $t0, -3528($fp)
	lw $t1, -3532($fp)
	mul $t0, $t0, $t1
	sw $t0, -3536($fp)
	li $t0, 0
	sw $t0, -3540($fp)
	lw $t0, -1172($fp)
	sw $t0, -3544($fp)
	lw $t0, -896($fp)
	sw $t0, -3548($fp)
	lw $t1, -3544($fp)
	lw $t2, -3548($fp)
	blt $t1, $t2, label1146
	j label1147
label1146:
	li $t0, 1
	sw $t0, -3540($fp)
label1147:
	lw $t1, -3536($fp)
	lw $t2, -3540($fp)
	bne $t1, $t2, label1137
	j label1138
label1137:
	li $t0, 1
	sw $t0, -3488($fp)
label1138:
	li $t0, 0
	sw $t0, -3552($fp)
	li $t0, 52665
	sw $t0, -3556($fp)
	lw $t1, -3556($fp)
	li $t2, 0
	bne $t1, $t2, label1150
	j label1149
label1150:
	lw $t0, -548($fp)
	sw $t0, -3560($fp)
	lw $t1, -3560($fp)
	li $t2, 0
	bne $t1, $t2, label1148
	j label1149
label1148:
	li $t0, 1
	sw $t0, -3552($fp)
label1149:
	li $t0, 0
	sw $t0, -3564($fp)
	lw $t0, -1172($fp)
	sw $t0, -3568($fp)
	lw $t0, -3460($fp)
	sw $t0, -3572($fp)
	lw $t1, -3568($fp)
	lw $t2, -3572($fp)
	bne $t1, $t2, label1151
	j label1153
label1153:
	li $t0, 22105
	sw $t0, -3576($fp)
	lw $t1, -3576($fp)
	li $t2, 0
	bne $t1, $t2, label1151
	j label1152
label1151:
	li $t0, 1
	sw $t0, -3564($fp)
label1152:
	li $t0, 0
	sw $t0, -3580($fp)
	li $t0, 22462
	sw $t0, -3584($fp)
	lw $t1, -3584($fp)
	li $t2, 0
	bne $t1, $t2, label1154
	j label1156
label1156:
	li $t0, 8216
	sw $t0, -3588($fp)
	lw $t1, -3588($fp)
	li $t2, 0
	bne $t1, $t2, label1154
	j label1155
label1154:
	li $t0, 1
	sw $t0, -3580($fp)
label1155:
	li $t0, 0
	sw $t0, -3592($fp)
	li $t0, 46240
	sw $t0, -3596($fp)
	li $t0, 0
	lw $t1, -3596($fp)
	sub $t0, $t0, $t1
	sw $t0, -3600($fp)
	lw $t1, -3600($fp)
	li $t2, 0
	bne $t1, $t2, label1159
	j label1158
label1159:
	li $t0, 1150
	sw $t0, -3604($fp)
	lw $t1, -3604($fp)
	li $t2, 0
	bne $t1, $t2, label1157
	j label1158
label1157:
	li $t0, 1
	sw $t0, -3592($fp)
label1158:
	addi $sp, $sp, -4
	lw $t0, -3552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3592($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3608($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -112
	sw $t0, -3612($fp)
	lw $t0, -1016($fp)
	sw $t0, -3616($fp)
	lw $t0, -944($fp)
	sw $t0, -3620($fp)
	lw $t0, -3616($fp)
	lw $t1, -3620($fp)
	sub $t0, $t0, $t1
	sw $t0, -3624($fp)
	li $t0, 4
	lw $t1, -3624($fp)
	mul $t0, $t0, $t1
	sw $t0, -3628($fp)
	lw $t0, -3628($fp)
	lw $t1, -3612($fp)
	add $t0, $t0, $t1
	sw $t0, -3632($fp)
	lw $t0, -3632($fp)
	lw $t1, 0($t0)
	sw $t1, -3636($fp)
	lw $t0, -896($fp)
	sw $t0, -3640($fp)
	lw $t0, -3636($fp)
	lw $t1, -3640($fp)
	sub $t0, $t0, $t1
	sw $t0, -3644($fp)
	addi $t0, $fp, -3356
	sw $t0, -3648($fp)
	li $t0, 44500
	sw $t0, -3652($fp)
	lw $t0, -992($fp)
	sw $t0, -3656($fp)
	lw $t0, -3652($fp)
	lw $t1, -3656($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3660($fp)
	li $t0, 4
	lw $t1, -3660($fp)
	mul $t0, $t0, $t1
	sw $t0, -3664($fp)
	lw $t0, -3664($fp)
	lw $t1, -3648($fp)
	add $t0, $t0, $t1
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	lw $t1, 0($t0)
	sw $t1, -3672($fp)
	lw $t0, -3644($fp)
	lw $t1, -3672($fp)
	add $t0, $t0, $t1
	sw $t0, -3676($fp)
label1160:
	li $t0, 0
	sw $t0, -3680($fp)
	li $t0, 0
	sw $t0, -3684($fp)
	addi $t0, $fp, -132
	sw $t0, -3688($fp)
	li $t0, 0
	sw $t0, -3692($fp)
	li $t0, 4
	lw $t1, -3692($fp)
	mul $t0, $t0, $t1
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	lw $t1, -3688($fp)
	add $t0, $t0, $t1
	sw $t0, -3700($fp)
	lw $t0, -3700($fp)
	lw $t1, 0($t0)
	sw $t1, -3704($fp)
	li $t0, 0
	lw $t1, -3704($fp)
	sub $t0, $t0, $t1
	sw $t0, -3708($fp)
	li $t0, 2933
	sw $t0, -3712($fp)
	lw $t0, -2260($fp)
	sw $t0, -3716($fp)
	lw $t0, -3712($fp)
	lw $t1, -3716($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3720($fp)
	lw $t1, -3708($fp)
	lw $t2, -3720($fp)
	blt $t1, $t2, label1165
	j label1166
label1165:
	li $t0, 1
	sw $t0, -3684($fp)
label1166:
	lw $t0, -860($fp)
	sw $t0, -3724($fp)
	li $t0, 43558
	sw $t0, -3728($fp)
	li $t0, 48965
	sw $t0, -3732($fp)
	lw $t0, -3728($fp)
	lw $t1, -3732($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3736($fp)
	li $t0, 0
	lw $t1, -3736($fp)
	sub $t0, $t0, $t1
	sw $t0, -3740($fp)
	li $t0, 0
	sw $t0, -3744($fp)
	lw $t0, -2272($fp)
	sw $t0, -3748($fp)
	li $t0, 0
	lw $t1, -3748($fp)
	sub $t0, $t0, $t1
	sw $t0, -3752($fp)
	lw $t1, -3752($fp)
	li $t2, 0
	bne $t1, $t2, label1167
	j label1169
label1169:
	lw $t0, -944($fp)
	sw $t0, -3756($fp)
	lw $t1, -3756($fp)
	li $t2, 0
	bne $t1, $t2, label1167
	j label1168
label1167:
	li $t0, 1
	sw $t0, -3744($fp)
label1168:
	li $t0, 0
	sw $t0, -3760($fp)
	li $t0, 537
	sw $t0, -3764($fp)
	li $t0, 63467
	sw $t0, -3768($fp)
	lw $t1, -3764($fp)
	lw $t2, -3768($fp)
	blt $t1, $t2, label1170
	j label1171
label1170:
	li $t0, 1
	sw $t0, -3760($fp)
label1171:
	li $t0, 20172
	sw $t0, -3772($fp)
	li $t0, 0
	sw $t0, -3776($fp)
	lw $t0, -2260($fp)
	sw $t0, -3780($fp)
	lw $t0, -1004($fp)
	sw $t0, -3784($fp)
	lw $t1, -3780($fp)
	lw $t2, -3784($fp)
	blt $t1, $t2, label1174
	j label1173
label1174:
	li $t0, 23957
	sw $t0, -3788($fp)
	lw $t1, -3788($fp)
	li $t2, 0
	bne $t1, $t2, label1172
	j label1173
label1172:
	li $t0, 1
	sw $t0, -3776($fp)
label1173:
	li $t0, 0
	sw $t0, -3792($fp)
	lw $t0, -3312($fp)
	sw $t0, -3796($fp)
	li $t0, 0
	lw $t1, -3796($fp)
	sub $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t1, -3800($fp)
	li $t2, 0
	bne $t1, $t2, label1176
	j label1175
label1175:
	li $t0, 1
	sw $t0, -3792($fp)
label1176:
	li $t0, 0
	sw $t0, -3804($fp)
	lw $t0, 12($fp)
	sw $t0, -3808($fp)
	lw $t1, -3808($fp)
	li $t2, 0
	bne $t1, $t2, label1179
	j label1178
label1179:
	li $t0, 21989
	sw $t0, -3812($fp)
	lw $t1, -3812($fp)
	li $t2, 0
	bne $t1, $t2, label1177
	j label1178
label1177:
	li $t0, 1
	sw $t0, -3804($fp)
label1178:
	addi $sp, $sp, -4
	lw $t0, -3760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3804($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3816($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -3724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3816($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3820($fp)
	addi $sp, $sp, 20
	lw $t1, -3684($fp)
	lw $t2, -3820($fp)
	beq $t1, $t2, label1163
	j label1164
label1163:
	li $t0, 1
	sw $t0, -3680($fp)
label1164:
	li $t0, 0
	sw $t0, -3824($fp)
	li $t0, 61094
	sw $t0, -3828($fp)
	li $t0, 0
	lw $t1, -3828($fp)
	sub $t0, $t0, $t1
	sw $t0, -3832($fp)
	li $t0, 0
	sw $t0, -3836($fp)
	li $t0, 32403
	sw $t0, -3840($fp)
	lw $t1, -3840($fp)
	li $t2, 0
	bne $t1, $t2, label1183
	j label1182
label1182:
	li $t0, 1
	sw $t0, -3836($fp)
label1183:
	lw $t1, -3832($fp)
	lw $t2, -3836($fp)
	bgt $t1, $t2, label1180
	j label1181
label1180:
	li $t0, 1
	sw $t0, -3824($fp)
label1181:
	lw $t1, -3680($fp)
	lw $t2, -3824($fp)
	beq $t1, $t2, label1161
	j label1162
label1161:
	li $t0, 24046
	sw $t0, -3844($fp)
	lw $t0, -3844($fp)
	sw $t0, -3848($fp)
	lw $t0, -3848($fp)
	sw $t0, -3852($fp)
	li $t0, 0
	sw $t0, -3856($fp)
	addi $t0, $fp, -68
	sw $t0, -3860($fp)
	li $t0, 0
	sw $t0, -3864($fp)
	lw $t0, -896($fp)
	sw $t0, -3868($fp)
	lw $t1, -3868($fp)
	li $t2, 0
	bne $t1, $t2, label1188
	j label1187
label1188:
	li $t0, 23616
	sw $t0, -3872($fp)
	lw $t1, -3872($fp)
	li $t2, 0
	bne $t1, $t2, label1186
	j label1187
label1186:
	li $t0, 1
	sw $t0, -3864($fp)
label1187:
	li $t0, 4
	lw $t1, -3864($fp)
	mul $t0, $t0, $t1
	sw $t0, -3876($fp)
	lw $t0, -3876($fp)
	lw $t1, -3860($fp)
	add $t0, $t0, $t1
	sw $t0, -3880($fp)
	lw $t0, -3880($fp)
	lw $t1, 0($t0)
	sw $t1, -3884($fp)
	li $t0, 0
	sw $t0, -3888($fp)
	li $t0, 27062
	sw $t0, -3892($fp)
	lw $t1, -3892($fp)
	li $t2, 0
	bne $t1, $t2, label1190
	j label1189
label1189:
	li $t0, 1
	sw $t0, -3888($fp)
label1190:
	lw $t0, -3884($fp)
	lw $t1, -3888($fp)
	mul $t0, $t0, $t1
	sw $t0, -3896($fp)
	li $t0, 56181
	sw $t0, -3900($fp)
	li $t0, 50497
	sw $t0, -3904($fp)
	lw $t0, -3904($fp)
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	sw $t0, -3908($fp)
	li $t0, 65146
	sw $t0, -3912($fp)
	li $t0, 0
	sw $t0, -3916($fp)
	li $t0, 52535
	sw $t0, -3920($fp)
	li $t0, 0
	lw $t1, -3920($fp)
	sub $t0, $t0, $t1
	sw $t0, -3924($fp)
	lw $t1, -3924($fp)
	li $t2, 0
	bne $t1, $t2, label1193
	j label1192
label1193:
	lw $t0, -1148($fp)
	sw $t0, -3928($fp)
	lw $t1, -3928($fp)
	li $t2, 0
	bne $t1, $t2, label1191
	j label1192
label1191:
	li $t0, 1
	sw $t0, -3916($fp)
label1192:
	addi $sp, $sp, -4
	lw $t0, -3900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3916($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3932($fp)
	addi $sp, $sp, 20
	li $t0, 31383
	sw $t0, -3936($fp)
	lw $t0, -3848($fp)
	sw $t0, -3940($fp)
	lw $t0, -3936($fp)
	lw $t1, -3940($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3944($fp)
	lw $t0, -3932($fp)
	lw $t1, -3944($fp)
	add $t0, $t0, $t1
	sw $t0, -3948($fp)
	lw $t1, -3896($fp)
	lw $t2, -3948($fp)
	blt $t1, $t2, label1184
	j label1185
label1184:
	li $t0, 1
	sw $t0, -3856($fp)
label1185:
	j label1160
label1162:
	li $t0, 3468
	sw $t0, -3964($fp)
	lw $t0, -3964($fp)
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	sw $t0, -3972($fp)
	li $t0, 28271
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	sw $t0, -3980($fp)
	lw $t0, -3980($fp)
	sw $t0, -3984($fp)
	li $t0, 15709
	sw $t0, -3988($fp)
	addi $t0, $fp, -3960
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
	li $t0, 5293
	sw $t0, -4012($fp)
	addi $t0, $fp, -3960
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
	li $t0, 8975
	sw $t0, -4036($fp)
	addi $t0, $fp, -3960
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
	li $t0, 16859
	sw $t0, -4060($fp)
	lw $t0, -4060($fp)
	sw $t0, -4064($fp)
	lw $t0, -4064($fp)
	sw $t0, -4068($fp)
	li $t0, 27756
	sw $t0, -4072($fp)
	lw $t0, -4072($fp)
	sw $t0, -4076($fp)
	lw $t0, -4076($fp)
	sw $t0, -4080($fp)
	li $t0, 17191
	sw $t0, -4084($fp)
	lw $t0, -4084($fp)
	sw $t0, -4088($fp)
	lw $t0, -4088($fp)
	sw $t0, -4092($fp)
	li $t0, 38965
	sw $t0, -4096($fp)
	lw $t0, -4096($fp)
	sw $t0, -4100($fp)
	lw $t0, -4100($fp)
	sw $t0, -4104($fp)
	li $t0, 0
	sw $t0, -4108($fp)
	li $t0, 0
	sw $t0, -4112($fp)
	li $t0, 4040
	sw $t0, -4116($fp)
	li $t0, 41710
	sw $t0, -4120($fp)
	lw $t0, -4116($fp)
	lw $t1, -4120($fp)
	sub $t0, $t0, $t1
	sw $t0, -4124($fp)
	lw $t0, -2272($fp)
	sw $t0, -4128($fp)
	lw $t1, -4124($fp)
	lw $t2, -4128($fp)
	bge $t1, $t2, label1200
	j label1201
label1200:
	li $t0, 1
	sw $t0, -4112($fp)
label1201:
	li $t0, 0
	sw $t0, -4132($fp)
	lw $t0, -548($fp)
	sw $t0, -4136($fp)
	li $t0, 28190
	sw $t0, -4140($fp)
	lw $t1, -4136($fp)
	lw $t2, -4140($fp)
	bne $t1, $t2, label1204
	j label1203
label1204:
	lw $t0, 12($fp)
	sw $t0, -4144($fp)
	lw $t1, -4144($fp)
	li $t2, 0
	bne $t1, $t2, label1202
	j label1203
label1202:
	li $t0, 1
	sw $t0, -4132($fp)
label1203:
	lw $t0, -1172($fp)
	sw $t0, -4148($fp)
	lw $t0, -992($fp)
	sw $t0, -4152($fp)
	lw $t0, -2272($fp)
	sw $t0, -4156($fp)
	lw $t0, -4152($fp)
	lw $t1, -4156($fp)
	mul $t0, $t0, $t1
	sw $t0, -4160($fp)
	li $t0, 56748
	sw $t0, -4164($fp)
	lw $t0, -4160($fp)
	lw $t1, -4164($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4168($fp)
	li $t0, 0
	sw $t0, -4172($fp)
	lw $t0, 20($fp)
	sw $t0, -4176($fp)
	li $t0, 4430
	sw $t0, -4180($fp)
	lw $t0, -4176($fp)
	lw $t1, -4180($fp)
	mul $t0, $t0, $t1
	sw $t0, -4184($fp)
	lw $t1, -4184($fp)
	li $t2, 0
	bne $t1, $t2, label1207
	j label1206
label1207:
	lw $t0, -548($fp)
	sw $t0, -4188($fp)
	lw $t1, -4188($fp)
	li $t2, 0
	bne $t1, $t2, label1205
	j label1206
label1205:
	li $t0, 1
	sw $t0, -4172($fp)
label1206:
	addi $sp, $sp, -4
	lw $t0, -4132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4172($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4192($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -4196($fp)
	lw $t0, -4100($fp)
	sw $t0, -4200($fp)
	lw $t0, -1172($fp)
	sw $t0, -4204($fp)
	lw $t1, -4200($fp)
	lw $t2, -4204($fp)
	bgt $t1, $t2, label1208
	j label1210
label1210:
	li $t0, 41191
	sw $t0, -4208($fp)
	lw $t1, -4208($fp)
	li $t2, 0
	bne $t1, $t2, label1208
	j label1209
label1208:
	li $t0, 1
	sw $t0, -4196($fp)
label1209:
	li $t0, 0
	sw $t0, -4212($fp)
	lw $t0, -956($fp)
	sw $t0, -4216($fp)
	lw $t1, -4216($fp)
	li $t2, 0
	bne $t1, $t2, label1212
	j label1211
label1211:
	li $t0, 1
	sw $t0, -4212($fp)
label1212:
	lw $t0, -2260($fp)
	sw $t0, -4220($fp)
	lw $t0, -4212($fp)
	lw $t1, -4220($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4224($fp)
	lw $t0, -980($fp)
	sw $t0, -4228($fp)
	li $t0, 0
	sw $t0, -4232($fp)
	li $t0, 29686
	sw $t0, -4236($fp)
	lw $t1, -4236($fp)
	li $t2, 0
	bne $t1, $t2, label1214
	j label1213
label1213:
	li $t0, 1
	sw $t0, -4232($fp)
label1214:
	li $t0, 0
	sw $t0, -4240($fp)
	li $t0, 0
	sw $t0, -4244($fp)
	li $t0, 62818
	sw $t0, -4248($fp)
	li $t0, 17145
	sw $t0, -4252($fp)
	lw $t1, -4248($fp)
	lw $t2, -4252($fp)
	bne $t1, $t2, label1217
	j label1218
label1217:
	li $t0, 1
	sw $t0, -4244($fp)
label1218:
	li $t0, 46350
	sw $t0, -4256($fp)
	lw $t1, -4244($fp)
	lw $t2, -4256($fp)
	bne $t1, $t2, label1215
	j label1216
label1215:
	li $t0, 1
	sw $t0, -4240($fp)
label1216:
	li $t0, 0
	sw $t0, -4260($fp)
	lw $t0, -1184($fp)
	sw $t0, -4264($fp)
	li $t0, 33716
	sw $t0, -4268($fp)
	lw $t0, -4264($fp)
	lw $t1, -4268($fp)
	add $t0, $t0, $t1
	sw $t0, -4272($fp)
	li $t0, 50792
	sw $t0, -4276($fp)
	lw $t1, -4272($fp)
	lw $t2, -4276($fp)
	ble $t1, $t2, label1219
	j label1220
label1219:
	li $t0, 1
	sw $t0, -4260($fp)
label1220:
	addi $sp, $sp, -4
	lw $t0, -4224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4260($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4280($fp)
	addi $sp, $sp, 24
	li $t0, 19260
	sw $t0, -4284($fp)
	lw $t0, -1172($fp)
	sw $t0, -4288($fp)
	lw $t0, -4284($fp)
	lw $t1, -4288($fp)
	mul $t0, $t0, $t1
	sw $t0, -4292($fp)
	lw $t0, -3336($fp)
	sw $t0, -4296($fp)
	lw $t0, -4292($fp)
	lw $t1, -4296($fp)
	add $t0, $t0, $t1
	sw $t0, -4300($fp)
	lw $t0, -860($fp)
	sw $t0, -4304($fp)
	li $t0, 52861
	sw $t0, -4308($fp)
	lw $t0, -4304($fp)
	lw $t1, -4308($fp)
	mul $t0, $t0, $t1
	sw $t0, -4312($fp)
	lw $t0, -560($fp)
	sw $t0, -4316($fp)
	lw $t0, -4312($fp)
	lw $t1, -4316($fp)
	sub $t0, $t0, $t1
	sw $t0, -4320($fp)
	li $t0, 64624
	sw $t0, -4324($fp)
	li $t0, 33178
	sw $t0, -4328($fp)
	lw $t0, -4324($fp)
	lw $t1, -4328($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4332($fp)
	li $t0, 0
	sw $t0, -4336($fp)
	lw $t0, -860($fp)
	sw $t0, -4340($fp)
	lw $t0, -4088($fp)
	sw $t0, -4344($fp)
	lw $t0, -4340($fp)
	lw $t1, -4344($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4348($fp)
	lw $t1, -4348($fp)
	li $t2, 0
	bne $t1, $t2, label1221
	j label1223
label1223:
	li $t0, 28903
	sw $t0, -4352($fp)
	lw $t1, -4352($fp)
	li $t2, 0
	bne $t1, $t2, label1221
	j label1222
label1221:
	li $t0, 1
	sw $t0, -4336($fp)
label1222:
	addi $sp, $sp, -4
	lw $t0, -4300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4336($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4356($fp)
	addi $sp, $sp, 20
	lw $t0, -3312($fp)
	sw $t0, -4360($fp)
	li $t0, 0
	lw $t1, -4360($fp)
	sub $t0, $t0, $t1
	sw $t0, -4364($fp)
	li $t0, 0
	lw $t1, -4364($fp)
	sub $t0, $t0, $t1
	sw $t0, -4368($fp)
	addi $sp, $sp, -4
	lw $t0, -4196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4368($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4372($fp)
	addi $sp, $sp, 20
	lw $t0, -4076($fp)
	sw $t0, -4376($fp)
	li $t0, 61691
	sw $t0, -4380($fp)
	lw $t0, -4376($fp)
	lw $t1, -4380($fp)
	mul $t0, $t0, $t1
	sw $t0, -4384($fp)
	li $t0, 11189
	sw $t0, -4388($fp)
	lw $t0, -4384($fp)
	lw $t1, -4388($fp)
	add $t0, $t0, $t1
	sw $t0, -4392($fp)
	li $t0, 14885
	sw $t0, -4396($fp)
	lw $t0, -4396($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -4400($fp)
	addi $sp, $sp, -4
	lw $t0, -4112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4400($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4404($fp)
	addi $sp, $sp, 24
	lw $t1, -4404($fp)
	li $t2, 0
	bne $t1, $t2, label1199
	j label1198
label1198:
	li $t0, 1
	sw $t0, -4108($fp)
label1199:
	li $t0, 0
	sw $t0, -4408($fp)
	lw $t0, -3324($fp)
	sw $t0, -4412($fp)
	li $t0, 0
	lw $t1, -4412($fp)
	sub $t0, $t0, $t1
	sw $t0, -4416($fp)
	lw $t1, -4416($fp)
	li $t2, 0
	bne $t1, $t2, label1225
	j label1224
label1224:
	li $t0, 1
	sw $t0, -4408($fp)
label1225:
	lw $t0, -4108($fp)
	lw $t1, -4408($fp)
	mul $t0, $t0, $t1
	sw $t0, -4420($fp)
	lw $t1, -4420($fp)
	li $t2, 0
	bne $t1, $t2, label1194
	j label1197
label1197:
	lw $t0, -3980($fp)
	sw $t0, -4424($fp)
	li $t0, 18836
	sw $t0, -4428($fp)
	li $t0, 35423
	sw $t0, -4432($fp)
	lw $t0, -4428($fp)
	lw $t1, -4432($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4436($fp)
	lw $t0, -4424($fp)
	lw $t1, -4436($fp)
	add $t0, $t0, $t1
	sw $t0, -4440($fp)
	lw $t1, -4440($fp)
	li $t2, 0
	bne $t1, $t2, label1194
	j label1195
label1194:
	li $t0, 0
	sw $t0, -4444($fp)
	lw $t0, -2272($fp)
	sw $t0, -4448($fp)
	li $t0, 0
	lw $t1, -4448($fp)
	sub $t0, $t0, $t1
	sw $t0, -4452($fp)
	li $t0, 0
	lw $t1, -4452($fp)
	sub $t0, $t0, $t1
	sw $t0, -4456($fp)
	li $t0, 0
	sw $t0, -4460($fp)
	lw $t0, -3968($fp)
	sw $t0, -4464($fp)
	lw $t0, -3324($fp)
	sw $t0, -4468($fp)
	lw $t0, -4464($fp)
	lw $t1, -4468($fp)
	mul $t0, $t0, $t1
	sw $t0, -4472($fp)
	li $t0, 51133
	sw $t0, -4476($fp)
	lw $t1, -4472($fp)
	lw $t2, -4476($fp)
	bgt $t1, $t2, label1229
	j label1230
label1229:
	li $t0, 1
	sw $t0, -4460($fp)
label1230:
	addi $t0, $fp, -3960
	sw $t0, -4480($fp)
	lw $t0, -1148($fp)
	sw $t0, -4484($fp)
	li $t0, 4
	lw $t1, -4484($fp)
	mul $t0, $t0, $t1
	sw $t0, -4488($fp)
	lw $t0, -4488($fp)
	lw $t1, -4480($fp)
	add $t0, $t0, $t1
	sw $t0, -4492($fp)
	lw $t0, -4492($fp)
	lw $t1, 0($t0)
	sw $t1, -4496($fp)
	addi $t0, $fp, -2240
	sw $t0, -4500($fp)
	lw $t0, -932($fp)
	sw $t0, -4504($fp)
	li $t0, 4
	lw $t1, -4504($fp)
	mul $t0, $t0, $t1
	sw $t0, -4508($fp)
	lw $t0, -4508($fp)
	lw $t1, -4500($fp)
	add $t0, $t0, $t1
	sw $t0, -4512($fp)
	lw $t0, -4512($fp)
	lw $t1, 0($t0)
	sw $t1, -4516($fp)
	li $t0, 47107
	sw $t0, -4520($fp)
	lw $t0, -4516($fp)
	lw $t1, -4520($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4524($fp)
	li $t0, 0
	sw $t0, -4528($fp)
	lw $t0, -1016($fp)
	sw $t0, -4532($fp)
	li $t0, 45178
	sw $t0, -4536($fp)
	lw $t1, -4532($fp)
	lw $t2, -4536($fp)
	ble $t1, $t2, label1231
	j label1233
label1233:
	lw $t0, -1016($fp)
	sw $t0, -4540($fp)
	lw $t1, -4540($fp)
	li $t2, 0
	bne $t1, $t2, label1231
	j label1232
label1231:
	li $t0, 1
	sw $t0, -4528($fp)
label1232:
	addi $sp, $sp, -4
	lw $t0, -4460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4528($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4544($fp)
	addi $sp, $sp, 20
	lw $t0, -4456($fp)
	lw $t1, -4544($fp)
	sub $t0, $t0, $t1
	sw $t0, -4548($fp)
	lw $t1, -4548($fp)
	li $t2, 0
	bne $t1, $t2, label1228
	j label1227
label1228:
	addi $t0, $fp, -36
	sw $t0, -4552($fp)
	li $t0, 0
	sw $t0, -4556($fp)
	li $t0, 50472
	sw $t0, -4560($fp)
	lw $t0, -1148($fp)
	sw $t0, -4564($fp)
	lw $t1, -4560($fp)
	lw $t2, -4564($fp)
	ble $t1, $t2, label1234
	j label1235
label1234:
	li $t0, 1
	sw $t0, -4556($fp)
label1235:
	li $t0, 4
	lw $t1, -4556($fp)
	mul $t0, $t0, $t1
	sw $t0, -4568($fp)
	lw $t0, -4568($fp)
	lw $t1, -4552($fp)
	add $t0, $t0, $t1
	sw $t0, -4572($fp)
	lw $t0, -4572($fp)
	lw $t1, 0($t0)
	sw $t1, -4576($fp)
	lw $t1, -4576($fp)
	li $t2, 0
	bne $t1, $t2, label1226
	j label1227
label1226:
	li $t0, 1
	sw $t0, -4444($fp)
label1227:
	j label1196
label1195:
	li $t0, 0
	sw $t0, -4580($fp)
	li $t0, 0
	sw $t0, -4584($fp)
	addi $t0, $fp, -76
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
	lw $t1, -4604($fp)
	li $t2, 0
	bne $t1, $t2, label1238
	j label1239
label1238:
	li $t0, 1
	sw $t0, -4584($fp)
label1239:
	lw $t0, -3968($fp)
	sw $t0, -4608($fp)
	lw $t1, -4584($fp)
	lw $t2, -4608($fp)
	blt $t1, $t2, label1236
	j label1237
label1236:
	li $t0, 1
	sw $t0, -4580($fp)
label1237:
label1196:
	lw $t0, -3968($fp)
	sw $t0, -4612($fp)
	lw $t0, -4612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3980($fp)
	sw $t0, -4616($fp)
	lw $t0, -4616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3960
	sw $t0, -4620($fp)
	li $t0, 0
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
	lw $t0, -4636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3960
	sw $t0, -4640($fp)
	li $t0, 1
	sw $t0, -4644($fp)
	li $t0, 4
	lw $t1, -4644($fp)
	mul $t0, $t0, $t1
	sw $t0, -4648($fp)
	lw $t0, -4648($fp)
	lw $t1, -4640($fp)
	add $t0, $t0, $t1
	sw $t0, -4652($fp)
	lw $t0, -4652($fp)
	lw $t1, 0($t0)
	sw $t1, -4656($fp)
	lw $t0, -4656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3960
	sw $t0, -4660($fp)
	li $t0, 2
	sw $t0, -4664($fp)
	li $t0, 4
	lw $t1, -4664($fp)
	mul $t0, $t0, $t1
	sw $t0, -4668($fp)
	lw $t0, -4668($fp)
	lw $t1, -4660($fp)
	add $t0, $t0, $t1
	sw $t0, -4672($fp)
	lw $t0, -4672($fp)
	lw $t1, 0($t0)
	sw $t1, -4676($fp)
	lw $t0, -4676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4064($fp)
	sw $t0, -4680($fp)
	lw $t0, -4680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4076($fp)
	sw $t0, -4684($fp)
	lw $t0, -4684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4088($fp)
	sw $t0, -4688($fp)
	lw $t0, -4688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4100($fp)
	sw $t0, -4692($fp)
	lw $t0, -4692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4696($fp)
	li $t0, 27577
	sw $t0, -4700($fp)
	li $t0, 0
	sw $t0, -4704($fp)
	lw $t0, -1148($fp)
	sw $t0, -4708($fp)
	lw $t0, -896($fp)
	sw $t0, -4712($fp)
	lw $t0, -4708($fp)
	lw $t1, -4712($fp)
	add $t0, $t0, $t1
	sw $t0, -4716($fp)
	lw $t1, -4716($fp)
	li $t2, 0
	bne $t1, $t2, label1245
	j label1244
label1245:
	lw $t0, -3336($fp)
	sw $t0, -4720($fp)
	lw $t1, -4720($fp)
	li $t2, 0
	bne $t1, $t2, label1243
	j label1244
label1243:
	li $t0, 1
	sw $t0, -4704($fp)
label1244:
	li $t0, 0
	sw $t0, -4724($fp)
	lw $t0, -2248($fp)
	sw $t0, -4728($fp)
	lw $t1, -4728($fp)
	li $t2, 0
	bne $t1, $t2, label1247
	j label1246
label1246:
	li $t0, 1
	sw $t0, -4724($fp)
label1247:
	li $t0, 0
	lw $t1, -4724($fp)
	sub $t0, $t0, $t1
	sw $t0, -4732($fp)
	lw $t0, -860($fp)
	sw $t0, -4736($fp)
	li $t0, 7737
	sw $t0, -4740($fp)
	li $t0, 41421
	sw $t0, -4744($fp)
	lw $t0, -4740($fp)
	lw $t1, -4744($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4748($fp)
	lw $t0, -944($fp)
	sw $t0, -4752($fp)
	lw $t0, -4748($fp)
	lw $t1, -4752($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4756($fp)
	lw $t0, -860($fp)
	sw $t0, -4760($fp)
	lw $t0, -4760($fp)
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -4764($fp)
	addi $sp, $sp, -4
	lw $t0, -4704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4764($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4768($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -4772($fp)
	lw $t0, -3968($fp)
	sw $t0, -4776($fp)
	lw $t0, -4064($fp)
	sw $t0, -4780($fp)
	lw $t1, -4776($fp)
	lw $t2, -4780($fp)
	bne $t1, $t2, label1248
	j label1249
label1248:
	li $t0, 1
	sw $t0, -4772($fp)
label1249:
	li $t0, 0
	sw $t0, -4784($fp)
	li $t0, 12692
	sw $t0, -4788($fp)
	lw $t0, -992($fp)
	sw $t0, -4792($fp)
	lw $t0, -4788($fp)
	lw $t1, -4792($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4796($fp)
	lw $t0, -872($fp)
	sw $t0, -4800($fp)
	lw $t1, -4796($fp)
	lw $t2, -4800($fp)
	bne $t1, $t2, label1250
	j label1251
label1250:
	li $t0, 1
	sw $t0, -4784($fp)
label1251:
	addi $sp, $sp, -4
	lw $t0, -4700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4784($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4804($fp)
	addi $sp, $sp, 20
	lw $t0, 16($fp)
	sw $t0, -4808($fp)
	lw $t0, -4804($fp)
	lw $t1, -4808($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4812($fp)
	addi $t0, $fp, -112
	sw $t0, -4816($fp)
	lw $t0, -2248($fp)
	sw $t0, -4820($fp)
	li $t0, 4
	lw $t1, -4820($fp)
	mul $t0, $t0, $t1
	sw $t0, -4824($fp)
	lw $t0, -4824($fp)
	lw $t1, -4816($fp)
	add $t0, $t0, $t1
	sw $t0, -4828($fp)
	lw $t0, -4828($fp)
	lw $t1, 0($t0)
	sw $t1, -4832($fp)
	lw $t0, -4812($fp)
	lw $t1, -4832($fp)
	mul $t0, $t0, $t1
	sw $t0, -4836($fp)
	li $t0, 3892
	sw $t0, -4840($fp)
	lw $t0, -4836($fp)
	lw $t1, -4840($fp)
	add $t0, $t0, $t1
	sw $t0, -4844($fp)
	lw $t1, -4844($fp)
	li $t2, 0
	bne $t1, $t2, label1240
	j label1242
label1242:
	li $t0, 52611
	sw $t0, -4848($fp)
	li $t0, 56480
	sw $t0, -4852($fp)
	lw $t0, -4848($fp)
	lw $t1, -4852($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4856($fp)
	lw $t1, -4856($fp)
	li $t2, 0
	bne $t1, $t2, label1240
	j label1241
label1240:
	li $t0, 1
	sw $t0, -4696($fp)
label1241:
	lw $ra, -4($fp)
	lw $v0, -4696($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label1252:
	li $t0, 0
	sw $t0, -4860($fp)
	li $t0, 22240
	sw $t0, -4864($fp)
	lw $t0, -932($fp)
	sw $t0, -4868($fp)
	lw $t0, -4864($fp)
	lw $t1, -4868($fp)
	mul $t0, $t0, $t1
	sw $t0, -4872($fp)
	li $t0, 0
	sw $t0, -4876($fp)
	lw $t0, -992($fp)
	sw $t0, -4880($fp)
	lw $t1, -4880($fp)
	li $t2, 0
	bne $t1, $t2, label1260
	j label1258
label1260:
	lw $t0, -1160($fp)
	sw $t0, -4884($fp)
	lw $t1, -4884($fp)
	li $t2, 0
	bne $t1, $t2, label1259
	j label1258
label1259:
	li $t0, 43805
	sw $t0, -4888($fp)
	lw $t1, -4888($fp)
	li $t2, 0
	bne $t1, $t2, label1257
	j label1258
label1257:
	li $t0, 1
	sw $t0, -4876($fp)
label1258:
	lw $t0, -1208($fp)
	sw $t0, -4892($fp)
	li $t0, 0
	sw $t0, -4896($fp)
	li $t0, 2980
	sw $t0, -4900($fp)
	li $t0, 20253
	sw $t0, -4904($fp)
	lw $t1, -4900($fp)
	lw $t2, -4904($fp)
	ble $t1, $t2, label1261
	j label1263
label1263:
	lw $t0, -1004($fp)
	sw $t0, -4908($fp)
	lw $t1, -4908($fp)
	li $t2, 0
	bne $t1, $t2, label1261
	j label1262
label1261:
	li $t0, 1
	sw $t0, -4896($fp)
label1262:
	addi $sp, $sp, -4
	lw $t0, -4872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4896($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4912($fp)
	addi $sp, $sp, 20
	lw $t1, -4912($fp)
	li $t2, 0
	bne $t1, $t2, label1256
	j label1255
label1255:
	li $t0, 1
	sw $t0, -4860($fp)
label1256:
	addi $t0, $fp, -36
	sw $t0, -4916($fp)
	li $t0, 5
	sw $t0, -4920($fp)
	li $t0, 4
	lw $t1, -4920($fp)
	mul $t0, $t0, $t1
	sw $t0, -4924($fp)
	lw $t0, -4924($fp)
	lw $t1, -4916($fp)
	add $t0, $t0, $t1
	sw $t0, -4928($fp)
	lw $t0, -4928($fp)
	lw $t1, 0($t0)
	sw $t1, -4932($fp)
	lw $t0, -4860($fp)
	lw $t1, -4932($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4936($fp)
	lw $t1, -4936($fp)
	li $t2, 0
	bne $t1, $t2, label1253
	j label1254
label1253:
	lw $t0, -548($fp)
	sw $t0, -4940($fp)
	j label1252
label1254:
	lw $t0, -2248($fp)
	sw $t0, -4944($fp)
	lw $t0, -4944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2260($fp)
	sw $t0, -4948($fp)
	lw $t0, -4948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2272($fp)
	sw $t0, -4952($fp)
	lw $t0, -4952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2240
	sw $t0, -4956($fp)
	li $t0, 0
	sw $t0, -4960($fp)
	li $t0, 4
	lw $t1, -4960($fp)
	mul $t0, $t0, $t1
	sw $t0, -4964($fp)
	lw $t0, -4964($fp)
	lw $t1, -4956($fp)
	add $t0, $t0, $t1
	sw $t0, -4968($fp)
	lw $t0, -4968($fp)
	lw $t1, 0($t0)
	sw $t1, -4972($fp)
	lw $t0, -4972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2240
	sw $t0, -4976($fp)
	li $t0, 1
	sw $t0, -4980($fp)
	li $t0, 4
	lw $t1, -4980($fp)
	mul $t0, $t0, $t1
	sw $t0, -4984($fp)
	lw $t0, -4984($fp)
	lw $t1, -4976($fp)
	add $t0, $t0, $t1
	sw $t0, -4988($fp)
	lw $t0, -4988($fp)
	lw $t1, 0($t0)
	sw $t1, -4992($fp)
	lw $t0, -4992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2240
	sw $t0, -4996($fp)
	li $t0, 2
	sw $t0, -5000($fp)
	li $t0, 4
	lw $t1, -5000($fp)
	mul $t0, $t0, $t1
	sw $t0, -5004($fp)
	lw $t0, -5004($fp)
	lw $t1, -4996($fp)
	add $t0, $t0, $t1
	sw $t0, -5008($fp)
	lw $t0, -5008($fp)
	lw $t1, 0($t0)
	sw $t1, -5012($fp)
	lw $t0, -5012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2240
	sw $t0, -5016($fp)
	li $t0, 3
	sw $t0, -5020($fp)
	li $t0, 4
	lw $t1, -5020($fp)
	mul $t0, $t0, $t1
	sw $t0, -5024($fp)
	lw $t0, -5024($fp)
	lw $t1, -5016($fp)
	add $t0, $t0, $t1
	sw $t0, -5028($fp)
	lw $t0, -5028($fp)
	lw $t1, 0($t0)
	sw $t1, -5032($fp)
	lw $t0, -5032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2240
	sw $t0, -5036($fp)
	li $t0, 4
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
	addi $t0, $fp, -2240
	sw $t0, -5056($fp)
	li $t0, 5
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
	addi $t0, $fp, -2240
	sw $t0, -5076($fp)
	li $t0, 6
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
	addi $t0, $fp, -2240
	sw $t0, -5096($fp)
	li $t0, 7
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
	addi $t0, $fp, -2240
	sw $t0, -5116($fp)
	li $t0, 8
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
	addi $t0, $fp, -2240
	sw $t0, -5136($fp)
	li $t0, 9
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
	li $t0, 0
	sw $t0, -5156($fp)
	addi $t0, $fp, -132
	sw $t0, -5160($fp)
	lw $t0, -896($fp)
	sw $t0, -5164($fp)
	lw $t0, -5164($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -5168($fp)
	li $t0, 4
	lw $t1, -5168($fp)
	mul $t0, $t0, $t1
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	lw $t1, -5160($fp)
	add $t0, $t0, $t1
	sw $t0, -5176($fp)
	lw $t0, -5176($fp)
	lw $t1, 0($t0)
	sw $t1, -5180($fp)
	lw $t1, -5180($fp)
	li $t2, 0
	bne $t1, $t2, label1266
	j label1264
label1266:
	li $t0, 0
	sw $t0, -5184($fp)
	li $t0, 0
	sw $t0, -5188($fp)
	li $t0, 19522
	sw $t0, -5192($fp)
	li $t0, 5578
	sw $t0, -5196($fp)
	lw $t1, -5192($fp)
	lw $t2, -5196($fp)
	ble $t1, $t2, label1269
	j label1270
label1269:
	li $t0, 1
	sw $t0, -5188($fp)
label1270:
	li $t0, 9875
	sw $t0, -5200($fp)
	lw $t1, -5188($fp)
	lw $t2, -5200($fp)
	beq $t1, $t2, label1267
	j label1268
label1267:
	li $t0, 1
	sw $t0, -5184($fp)
label1268:
	li $t0, 0
	sw $t0, -5204($fp)
	lw $t0, -560($fp)
	sw $t0, -5208($fp)
	lw $t1, -5208($fp)
	li $t2, 0
	bne $t1, $t2, label1272
	j label1271
label1271:
	li $t0, 1
	sw $t0, -5204($fp)
label1272:
	lw $t1, -5184($fp)
	lw $t2, -5204($fp)
	beq $t1, $t2, label1264
	j label1265
label1264:
	li $t0, 1
	sw $t0, -5156($fp)
label1265:
	lw $ra, -4($fp)
	lw $v0, -5156($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -36
	sw $t0, -5212($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -5232($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -5252($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -5272($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -5292($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -5312($fp)
	li $t0, 5
	sw $t0, -5316($fp)
	li $t0, 4
	lw $t1, -5316($fp)
	mul $t0, $t0, $t1
	sw $t0, -5320($fp)
	lw $t0, -5320($fp)
	lw $t1, -5312($fp)
	add $t0, $t0, $t1
	sw $t0, -5324($fp)
	lw $t0, -5324($fp)
	lw $t1, 0($t0)
	sw $t1, -5328($fp)
	lw $t0, -5328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5332($fp)
	li $t0, 6
	sw $t0, -5336($fp)
	li $t0, 4
	lw $t1, -5336($fp)
	mul $t0, $t0, $t1
	sw $t0, -5340($fp)
	lw $t0, -5340($fp)
	lw $t1, -5332($fp)
	add $t0, $t0, $t1
	sw $t0, -5344($fp)
	lw $t0, -5344($fp)
	lw $t1, 0($t0)
	sw $t1, -5348($fp)
	lw $t0, -5348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5352($fp)
	li $t0, 7
	sw $t0, -5356($fp)
	li $t0, 4
	lw $t1, -5356($fp)
	mul $t0, $t0, $t1
	sw $t0, -5360($fp)
	lw $t0, -5360($fp)
	lw $t1, -5352($fp)
	add $t0, $t0, $t1
	sw $t0, -5364($fp)
	lw $t0, -5364($fp)
	lw $t1, 0($t0)
	sw $t1, -5368($fp)
	lw $t0, -5368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -5372($fp)
	li $t0, 0
	sw $t0, -5376($fp)
	li $t0, 4
	lw $t1, -5376($fp)
	mul $t0, $t0, $t1
	sw $t0, -5380($fp)
	lw $t0, -5380($fp)
	lw $t1, -5372($fp)
	add $t0, $t0, $t1
	sw $t0, -5384($fp)
	lw $t0, -5384($fp)
	lw $t1, 0($t0)
	sw $t1, -5388($fp)
	lw $t0, -5388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -5392($fp)
	li $t0, 1
	sw $t0, -5396($fp)
	li $t0, 4
	lw $t1, -5396($fp)
	mul $t0, $t0, $t1
	sw $t0, -5400($fp)
	lw $t0, -5400($fp)
	lw $t1, -5392($fp)
	add $t0, $t0, $t1
	sw $t0, -5404($fp)
	lw $t0, -5404($fp)
	lw $t1, 0($t0)
	sw $t1, -5408($fp)
	lw $t0, -5408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -5412($fp)
	li $t0, 2
	sw $t0, -5416($fp)
	li $t0, 4
	lw $t1, -5416($fp)
	mul $t0, $t0, $t1
	sw $t0, -5420($fp)
	lw $t0, -5420($fp)
	lw $t1, -5412($fp)
	add $t0, $t0, $t1
	sw $t0, -5424($fp)
	lw $t0, -5424($fp)
	lw $t1, 0($t0)
	sw $t1, -5428($fp)
	lw $t0, -5428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -5432($fp)
	li $t0, 3
	sw $t0, -5436($fp)
	li $t0, 4
	lw $t1, -5436($fp)
	mul $t0, $t0, $t1
	sw $t0, -5440($fp)
	lw $t0, -5440($fp)
	lw $t1, -5432($fp)
	add $t0, $t0, $t1
	sw $t0, -5444($fp)
	lw $t0, -5444($fp)
	lw $t1, 0($t0)
	sw $t1, -5448($fp)
	lw $t0, -5448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -5452($fp)
	li $t0, 4
	sw $t0, -5456($fp)
	li $t0, 4
	lw $t1, -5456($fp)
	mul $t0, $t0, $t1
	sw $t0, -5460($fp)
	lw $t0, -5460($fp)
	lw $t1, -5452($fp)
	add $t0, $t0, $t1
	sw $t0, -5464($fp)
	lw $t0, -5464($fp)
	lw $t1, 0($t0)
	sw $t1, -5468($fp)
	lw $t0, -5468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -5472($fp)
	li $t0, 5
	sw $t0, -5476($fp)
	li $t0, 4
	lw $t1, -5476($fp)
	mul $t0, $t0, $t1
	sw $t0, -5480($fp)
	lw $t0, -5480($fp)
	lw $t1, -5472($fp)
	add $t0, $t0, $t1
	sw $t0, -5484($fp)
	lw $t0, -5484($fp)
	lw $t1, 0($t0)
	sw $t1, -5488($fp)
	lw $t0, -5488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -5492($fp)
	li $t0, 6
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
	lw $t0, -5508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -5512($fp)
	li $t0, 7
	sw $t0, -5516($fp)
	li $t0, 4
	lw $t1, -5516($fp)
	mul $t0, $t0, $t1
	sw $t0, -5520($fp)
	lw $t0, -5520($fp)
	lw $t1, -5512($fp)
	add $t0, $t0, $t1
	sw $t0, -5524($fp)
	lw $t0, -5524($fp)
	lw $t1, 0($t0)
	sw $t1, -5528($fp)
	lw $t0, -5528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -5532($fp)
	lw $t0, -5532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -5536($fp)
	lw $t0, -5536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -5540($fp)
	lw $t0, -5540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -5544($fp)
	lw $t0, -5544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
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
	lw $t0, -5564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -5568($fp)
	li $t0, 1
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
	addi $t0, $fp, -80
	sw $t0, -5588($fp)
	li $t0, 0
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
	lw $t0, -644($fp)
	sw $t0, -5608($fp)
	lw $t0, -5608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -5612($fp)
	li $t0, 0
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
	lw $t0, -5628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -5632($fp)
	li $t0, 1
	sw $t0, -5636($fp)
	li $t0, 4
	lw $t1, -5636($fp)
	mul $t0, $t0, $t1
	sw $t0, -5640($fp)
	lw $t0, -5640($fp)
	lw $t1, -5632($fp)
	add $t0, $t0, $t1
	sw $t0, -5644($fp)
	lw $t0, -5644($fp)
	lw $t1, 0($t0)
	sw $t1, -5648($fp)
	lw $t0, -5648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -5652($fp)
	li $t0, 2
	sw $t0, -5656($fp)
	li $t0, 4
	lw $t1, -5656($fp)
	mul $t0, $t0, $t1
	sw $t0, -5660($fp)
	lw $t0, -5660($fp)
	lw $t1, -5652($fp)
	add $t0, $t0, $t1
	sw $t0, -5664($fp)
	lw $t0, -5664($fp)
	lw $t1, 0($t0)
	sw $t1, -5668($fp)
	lw $t0, -5668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
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
	lw $t0, -5688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -5692($fp)
	li $t0, 4
	sw $t0, -5696($fp)
	li $t0, 4
	lw $t1, -5696($fp)
	mul $t0, $t0, $t1
	sw $t0, -5700($fp)
	lw $t0, -5700($fp)
	lw $t1, -5692($fp)
	add $t0, $t0, $t1
	sw $t0, -5704($fp)
	lw $t0, -5704($fp)
	lw $t1, 0($t0)
	sw $t1, -5708($fp)
	lw $t0, -5708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -5712($fp)
	li $t0, 5
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
	lw $t0, -5728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -5732($fp)
	li $t0, 6
	sw $t0, -5736($fp)
	li $t0, 4
	lw $t1, -5736($fp)
	mul $t0, $t0, $t1
	sw $t0, -5740($fp)
	lw $t0, -5740($fp)
	lw $t1, -5732($fp)
	add $t0, $t0, $t1
	sw $t0, -5744($fp)
	lw $t0, -5744($fp)
	lw $t1, 0($t0)
	sw $t1, -5748($fp)
	lw $t0, -5748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -5752($fp)
	li $t0, 7
	sw $t0, -5756($fp)
	li $t0, 4
	lw $t1, -5756($fp)
	mul $t0, $t0, $t1
	sw $t0, -5760($fp)
	lw $t0, -5760($fp)
	lw $t1, -5752($fp)
	add $t0, $t0, $t1
	sw $t0, -5764($fp)
	lw $t0, -5764($fp)
	lw $t1, 0($t0)
	sw $t1, -5768($fp)
	lw $t0, -5768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -848($fp)
	sw $t0, -5772($fp)
	lw $t0, -5772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -860($fp)
	sw $t0, -5776($fp)
	lw $t0, -5776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -872($fp)
	sw $t0, -5780($fp)
	lw $t0, -5780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -884($fp)
	sw $t0, -5784($fp)
	lw $t0, -5784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -896($fp)
	sw $t0, -5788($fp)
	lw $t0, -5788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -908($fp)
	sw $t0, -5792($fp)
	lw $t0, -5792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -920($fp)
	sw $t0, -5796($fp)
	lw $t0, -5796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -932($fp)
	sw $t0, -5800($fp)
	lw $t0, -5800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -944($fp)
	sw $t0, -5804($fp)
	lw $t0, -5804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -956($fp)
	sw $t0, -5808($fp)
	lw $t0, -5808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -968($fp)
	sw $t0, -5812($fp)
	lw $t0, -5812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -980($fp)
	sw $t0, -5816($fp)
	lw $t0, -5816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -992($fp)
	sw $t0, -5820($fp)
	lw $t0, -5820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1004($fp)
	sw $t0, -5824($fp)
	lw $t0, -5824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1016($fp)
	sw $t0, -5828($fp)
	lw $t0, -5828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -5832($fp)
	li $t0, 0
	sw $t0, -5836($fp)
	li $t0, 4
	lw $t1, -5836($fp)
	mul $t0, $t0, $t1
	sw $t0, -5840($fp)
	lw $t0, -5840($fp)
	lw $t1, -5832($fp)
	add $t0, $t0, $t1
	sw $t0, -5844($fp)
	lw $t0, -5844($fp)
	lw $t1, 0($t0)
	sw $t1, -5848($fp)
	lw $t0, -5848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -5852($fp)
	li $t0, 1
	sw $t0, -5856($fp)
	li $t0, 4
	lw $t1, -5856($fp)
	mul $t0, $t0, $t1
	sw $t0, -5860($fp)
	lw $t0, -5860($fp)
	lw $t1, -5852($fp)
	add $t0, $t0, $t1
	sw $t0, -5864($fp)
	lw $t0, -5864($fp)
	lw $t1, 0($t0)
	sw $t1, -5868($fp)
	lw $t0, -5868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -5872($fp)
	li $t0, 2
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
	lw $t0, -5888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -5892($fp)
	li $t0, 3
	sw $t0, -5896($fp)
	li $t0, 4
	lw $t1, -5896($fp)
	mul $t0, $t0, $t1
	sw $t0, -5900($fp)
	lw $t0, -5900($fp)
	lw $t1, -5892($fp)
	add $t0, $t0, $t1
	sw $t0, -5904($fp)
	lw $t0, -5904($fp)
	lw $t1, 0($t0)
	sw $t1, -5908($fp)
	lw $t0, -5908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -5912($fp)
	li $t0, 4
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
	lw $t0, -5928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1148($fp)
	sw $t0, -5932($fp)
	lw $t0, -5932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1160($fp)
	sw $t0, -5936($fp)
	lw $t0, -5936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1172($fp)
	sw $t0, -5940($fp)
	lw $t0, -5940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1184($fp)
	sw $t0, -5944($fp)
	lw $t0, -5944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1196($fp)
	sw $t0, -5948($fp)
	lw $t0, -5948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1208($fp)
	sw $t0, -5952($fp)
	lw $t0, -5952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5956($fp)
	li $t0, 0
	sw $t0, -5960($fp)
	li $t0, 49208
	sw $t0, -5964($fp)
	lw $t1, -5964($fp)
	li $t2, 0
	bne $t1, $t2, label1276
	j label1275
label1275:
	li $t0, 1
	sw $t0, -5960($fp)
label1276:
	addi $t0, $fp, -36
	sw $t0, -5968($fp)
	lw $t0, -1196($fp)
	sw $t0, -5972($fp)
	li $t0, 46769
	sw $t0, -5976($fp)
	lw $t0, -5972($fp)
	lw $t1, -5976($fp)
	add $t0, $t0, $t1
	sw $t0, -5980($fp)
	li $t0, 4
	lw $t1, -5980($fp)
	mul $t0, $t0, $t1
	sw $t0, -5984($fp)
	lw $t0, -5984($fp)
	lw $t1, -5968($fp)
	add $t0, $t0, $t1
	sw $t0, -5988($fp)
	lw $t0, -5988($fp)
	lw $t1, 0($t0)
	sw $t1, -5992($fp)
	lw $t0, -5960($fp)
	lw $t1, -5992($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5996($fp)
	li $t0, 0
	lw $t1, -5996($fp)
	sub $t0, $t0, $t1
	sw $t0, -6000($fp)
	li $t0, 0
	lw $t1, -6000($fp)
	sub $t0, $t0, $t1
	sw $t0, -6004($fp)
	lw $t1, -6004($fp)
	li $t2, 0
	bne $t1, $t2, label1274
	j label1273
label1273:
	li $t0, 1
	sw $t0, -5956($fp)
label1274:
	lw $ra, -4($fp)
	lw $v0, -5956($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -20
	li $t0, 0
	sw $t0, -8($fp)
	li $t0, 14305
	sw $t0, -12($fp)
	li $t0, 40421
	sw $t0, -16($fp)
	lw $t1, -12($fp)
	lw $t2, -16($fp)
	beq $t1, $t2, label1277
	j label1278
label1277:
	li $t0, 1
	sw $t0, -8($fp)
label1278:
	lw $t0, -8($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -24($fp)
	lw $ra, -4($fp)
	lw $v0, -24($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -468
	li $t0, 9424
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
	li $t0, 18346
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
	li $t0, 16595
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
	li $t0, 28260
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
	li $t0, 53769
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
	li $t0, 61773
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
	li $t0, 9831
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
	li $t0, 39366
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
	li $t0, 46709
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	lw $t0, 4($fp)
	sw $t0, -244($fp)
	addi $t0, $fp, -36
	sw $t0, -248($fp)
	li $t0, 0
	sw $t0, -252($fp)
	li $t0, 377
	sw $t0, -256($fp)
	li $t0, 41823
	sw $t0, -260($fp)
	lw $t1, -256($fp)
	lw $t2, -260($fp)
	bge $t1, $t2, label1279
	j label1280
label1279:
	li $t0, 1
	sw $t0, -252($fp)
label1280:
	li $t0, 4
	lw $t1, -252($fp)
	mul $t0, $t0, $t1
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	lw $t1, -248($fp)
	add $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	lw $t1, 0($t0)
	sw $t1, -272($fp)
	lw $t0, -244($fp)
	lw $t1, -272($fp)
	sub $t0, $t0, $t1
	sw $t0, -276($fp)
	addi $t0, $fp, -36
	sw $t0, -280($fp)
	li $t0, 0
	sw $t0, -284($fp)
	li $t0, 4
	lw $t1, -284($fp)
	mul $t0, $t0, $t1
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	lw $t1, -280($fp)
	add $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	lw $t1, 0($t0)
	sw $t1, -296($fp)
	lw $t0, -296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -300($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -320($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -340($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -360($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -380($fp)
	li $t0, 5
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
	addi $t0, $fp, -36
	sw $t0, -400($fp)
	li $t0, 6
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
	addi $t0, $fp, -36
	sw $t0, -420($fp)
	li $t0, 7
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
	lw $t0, -236($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -444($fp)
	li $t0, 59401
	sw $t0, -448($fp)
	lw $t0, -236($fp)
	sw $t0, -452($fp)
	lw $t0, -448($fp)
	lw $t1, -452($fp)
	add $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -460($fp)
	li $t0, 4
	lw $t1, -460($fp)
	mul $t0, $t0, $t1
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	lw $t1, -444($fp)
	add $t0, $t0, $t1
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	lw $t1, 0($t0)
	sw $t1, -472($fp)
	lw $ra, -4($fp)
	lw $v0, -472($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -420
	li $t0, 8114
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
	li $t0, 17708
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
	li $t0, 21442
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
	li $t0, 12006
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	li $t0, 0
	sw $t0, -104($fp)
	li $t0, 0
	sw $t0, -108($fp)
	li $t0, 4783
	sw $t0, -112($fp)
	lw $t1, -112($fp)
	li $t2, 0
	bne $t1, $t2, label1285
	j label1284
label1284:
	li $t0, 1
	sw $t0, -108($fp)
label1285:
	li $t0, 12387
	sw $t0, -116($fp)
	li $t0, 0
	lw $t1, -116($fp)
	sub $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t0, -108($fp)
	lw $t1, -120($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -124($fp)
	li $t0, 0
	lw $t1, -124($fp)
	sub $t0, $t0, $t1
	sw $t0, -128($fp)
	li $t0, 0
	sw $t0, -132($fp)
	addi $t0, $fp, -16
	sw $t0, -136($fp)
	lw $t0, 12($fp)
	sw $t0, -140($fp)
	li $t0, 4
	lw $t1, -140($fp)
	mul $t0, $t0, $t1
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	lw $t1, -136($fp)
	add $t0, $t0, $t1
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	lw $t1, 0($t0)
	sw $t1, -152($fp)
	li $t0, 14986
	sw $t0, -156($fp)
	lw $t1, -152($fp)
	lw $t2, -156($fp)
	blt $t1, $t2, label1286
	j label1287
label1286:
	li $t0, 1
	sw $t0, -132($fp)
label1287:
	lw $t1, -128($fp)
	lw $t2, -132($fp)
	bne $t1, $t2, label1281
	j label1283
label1283:
	lw $t0, 16($fp)
	sw $t0, -160($fp)
	lw $t1, -160($fp)
	li $t2, 0
	bne $t1, $t2, label1281
	j label1282
label1281:
	li $t0, 1
	sw $t0, -104($fp)
label1282:
	lw $t0, 8($fp)
	sw $t0, -164($fp)
	li $t0, 0
	lw $t1, -164($fp)
	sub $t0, $t0, $t1
	sw $t0, -168($fp)
	li $t0, 0
	lw $t1, -168($fp)
	sub $t0, $t0, $t1
	sw $t0, -172($fp)
	li $t0, 0
	sw $t0, -176($fp)
	li $t0, 0
	sw $t0, -180($fp)
	lw $t0, 16($fp)
	sw $t0, -184($fp)
	li $t0, 25037
	sw $t0, -188($fp)
	lw $t1, -184($fp)
	lw $t2, -188($fp)
	bgt $t1, $t2, label1290
	j label1291
label1290:
	li $t0, 1
	sw $t0, -180($fp)
label1291:
	lw $t0, 4($fp)
	sw $t0, -192($fp)
	lw $t1, -180($fp)
	lw $t2, -192($fp)
	ble $t1, $t2, label1288
	j label1289
label1288:
	li $t0, 1
	sw $t0, -176($fp)
label1289:
	addi $sp, $sp, -4
	lw $t0, -172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -176($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -196($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -200($fp)
	lw $t0, -96($fp)
	sw $t0, -204($fp)
	li $t0, 0
	lw $t1, -204($fp)
	sub $t0, $t0, $t1
	sw $t0, -208($fp)
	lw $t1, -208($fp)
	li $t2, 0
	bne $t1, $t2, label1293
	j label1292
label1292:
	li $t0, 1
	sw $t0, -200($fp)
label1293:
	li $t0, 0
	sw $t0, -212($fp)
	li $t0, 37226
	sw $t0, -216($fp)
	li $t0, 13470
	sw $t0, -220($fp)
	lw $t1, -216($fp)
	lw $t2, -220($fp)
	blt $t1, $t2, label1296
	j label1295
label1296:
	lw $t0, 16($fp)
	sw $t0, -224($fp)
	lw $t1, -224($fp)
	li $t2, 0
	bne $t1, $t2, label1294
	j label1295
label1294:
	li $t0, 1
	sw $t0, -212($fp)
label1295:
	lw $t0, 8($fp)
	sw $t0, -228($fp)
	lw $t0, 16($fp)
	sw $t0, -232($fp)
	lw $t0, -228($fp)
	lw $t1, -232($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -236($fp)
	li $t0, 0
	sw $t0, -240($fp)
	li $t0, 56192
	sw $t0, -244($fp)
	lw $t1, -244($fp)
	li $t2, 0
	bne $t1, $t2, label1298
	j label1297
label1297:
	li $t0, 1
	sw $t0, -240($fp)
label1298:
	addi $sp, $sp, -4
	lw $t0, -200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -240($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -248($fp)
	addi $sp, $sp, 20
	lw $t0, -196($fp)
	lw $t1, -248($fp)
	mul $t0, $t0, $t1
	sw $t0, -252($fp)
	li $t0, 0
	sw $t0, -256($fp)
	li $t0, 19718
	sw $t0, -260($fp)
	lw $t1, -260($fp)
	li $t2, 0
	bne $t1, $t2, label1300
	j label1299
label1299:
	li $t0, 1
	sw $t0, -256($fp)
label1300:
	lw $t0, -252($fp)
	lw $t1, -256($fp)
	mul $t0, $t0, $t1
	sw $t0, -264($fp)
	lw $t0, -96($fp)
	sw $t0, -268($fp)
	lw $t0, -264($fp)
	lw $t1, -268($fp)
	mul $t0, $t0, $t1
	sw $t0, -272($fp)
	addi $t0, $fp, -16
	sw $t0, -276($fp)
	li $t0, 56748
	sw $t0, -280($fp)
	li $t0, 0
	sw $t0, -284($fp)
	lw $t0, 16($fp)
	sw $t0, -288($fp)
	li $t0, 19049
	sw $t0, -292($fp)
	lw $t0, -288($fp)
	lw $t1, -292($fp)
	add $t0, $t0, $t1
	sw $t0, -296($fp)
	li $t0, 29593
	sw $t0, -300($fp)
	lw $t1, -296($fp)
	lw $t2, -300($fp)
	beq $t1, $t2, label1301
	j label1302
label1301:
	li $t0, 1
	sw $t0, -284($fp)
label1302:
	addi $sp, $sp, -4
	lw $t0, -284($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -304($fp)
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	lw $t1, -304($fp)
	add $t0, $t0, $t1
	sw $t0, -308($fp)
	li $t0, 4
	lw $t1, -308($fp)
	mul $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	lw $t1, -276($fp)
	add $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	lw $t1, 0($t0)
	sw $t1, -320($fp)
	addi $t0, $fp, -16
	sw $t0, -324($fp)
	li $t0, 0
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
	addi $t0, $fp, -16
	sw $t0, -344($fp)
	li $t0, 1
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
	addi $t0, $fp, -16
	sw $t0, -364($fp)
	li $t0, 2
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
	lw $t0, -96($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -388($fp)
	addi $t0, $fp, -16
	sw $t0, -392($fp)
	lw $t0, 16($fp)
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
	li $t0, 0
	lw $t1, -408($fp)
	sub $t0, $t0, $t1
	sw $t0, -412($fp)
	li $t0, 4
	lw $t1, -412($fp)
	mul $t0, $t0, $t1
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	lw $t1, -388($fp)
	add $t0, $t0, $t1
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	lw $t1, 0($t0)
	sw $t1, -424($fp)
	lw $ra, -4($fp)
	lw $v0, -424($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1308
	li $t0, 40421
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	li $t0, 282
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	li $t0, 43899
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	li $t0, 15306
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	li $t0, 9706
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	li $t0, 62245
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	li $t0, 31901
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	li $t0, 37966
	sw $t0, -124($fp)
	addi $t0, $fp, -8
	sw $t0, -128($fp)
	li $t0, 0
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
	li $t0, 50478
	sw $t0, -148($fp)
	addi $t0, $fp, -36
	sw $t0, -152($fp)
	li $t0, 0
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
	li $t0, 28138
	sw $t0, -172($fp)
	addi $t0, $fp, -36
	sw $t0, -176($fp)
	li $t0, 1
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
	li $t0, 47797
	sw $t0, -196($fp)
	addi $t0, $fp, -36
	sw $t0, -200($fp)
	li $t0, 2
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
	li $t0, 24309
	sw $t0, -220($fp)
	addi $t0, $fp, -36
	sw $t0, -224($fp)
	li $t0, 3
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
	li $t0, 9312
	sw $t0, -244($fp)
	addi $t0, $fp, -36
	sw $t0, -248($fp)
	li $t0, 4
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
	li $t0, 48174
	sw $t0, -268($fp)
	addi $t0, $fp, -36
	sw $t0, -272($fp)
	li $t0, 5
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
	li $t0, 596
	sw $t0, -292($fp)
	addi $t0, $fp, -36
	sw $t0, -296($fp)
	li $t0, 6
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
	li $t0, 3177
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	li $t0, 56288
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	addi $t0, $fp, -8
	sw $t0, -340($fp)
	li $t0, 0
	sw $t0, -344($fp)
	lw $t0, -44($fp)
	sw $t0, -348($fp)
	lw $t0, -68($fp)
	sw $t0, -352($fp)
	lw $t1, -348($fp)
	lw $t2, -352($fp)
	beq $t1, $t2, label1309
	j label1308
label1309:
	lw $t0, -104($fp)
	sw $t0, -356($fp)
	lw $t1, -356($fp)
	li $t2, 0
	bne $t1, $t2, label1307
	j label1308
label1307:
	li $t0, 1
	sw $t0, -344($fp)
label1308:
	li $t0, 4
	lw $t1, -344($fp)
	mul $t0, $t0, $t1
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	lw $t1, -340($fp)
	add $t0, $t0, $t1
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	lw $t1, 0($t0)
	sw $t1, -368($fp)
	lw $t1, -368($fp)
	li $t2, 0
	bne $t1, $t2, label1303
	j label1306
label1306:
	li $t0, 0
	sw $t0, -372($fp)
	li $t0, 0
	sw $t0, -376($fp)
	li $t0, 23088
	sw $t0, -380($fp)
	li $t0, 37007
	sw $t0, -384($fp)
	lw $t0, -380($fp)
	lw $t1, -384($fp)
	mul $t0, $t0, $t1
	sw $t0, -388($fp)
	lw $t1, -388($fp)
	li $t2, 0
	bne $t1, $t2, label1315
	j label1314
label1315:
	lw $t0, -332($fp)
	sw $t0, -392($fp)
	lw $t1, -392($fp)
	li $t2, 0
	bne $t1, $t2, label1313
	j label1314
label1313:
	li $t0, 1
	sw $t0, -376($fp)
label1314:
	li $t0, 0
	sw $t0, -396($fp)
	lw $t0, -116($fp)
	sw $t0, -400($fp)
	lw $t1, -400($fp)
	li $t2, 0
	bne $t1, $t2, label1319
	j label1317
label1319:
	li $t0, 24620
	sw $t0, -404($fp)
	lw $t1, -404($fp)
	li $t2, 0
	bne $t1, $t2, label1318
	j label1317
label1318:
	li $t0, 2758
	sw $t0, -408($fp)
	lw $t1, -408($fp)
	li $t2, 0
	bne $t1, $t2, label1316
	j label1317
label1316:
	li $t0, 1
	sw $t0, -396($fp)
label1317:
	addi $sp, $sp, -4
	lw $t0, -376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -396($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -412($fp)
	addi $sp, $sp, 12
	lw $t1, -412($fp)
	li $t2, 0
	bne $t1, $t2, label1312
	j label1311
label1312:
	li $t0, 17744
	sw $t0, -416($fp)
	lw $t1, -416($fp)
	li $t2, 0
	bne $t1, $t2, label1310
	j label1311
label1310:
	li $t0, 1
	sw $t0, -372($fp)
label1311:
	li $t0, 0
	sw $t0, -420($fp)
	lw $t0, 4($fp)
	sw $t0, -424($fp)
	lw $t0, -68($fp)
	sw $t0, -428($fp)
	lw $t0, -424($fp)
	lw $t1, -428($fp)
	sub $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $t1, -432($fp)
	li $t2, 0
	bne $t1, $t2, label1322
	j label1321
label1322:
	li $t0, 18304
	sw $t0, -436($fp)
	lw $t1, -436($fp)
	li $t2, 0
	bne $t1, $t2, label1320
	j label1321
label1320:
	li $t0, 1
	sw $t0, -420($fp)
label1321:
	addi $sp, $sp, -4
	lw $t0, -372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -420($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -440($fp)
	addi $sp, $sp, 12
	li $t0, 48125
	sw $t0, -444($fp)
	lw $t0, -440($fp)
	lw $t1, -444($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -448($fp)
	li $t0, 27663
	sw $t0, -452($fp)
	lw $t0, -448($fp)
	lw $t1, -452($fp)
	mul $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t1, -456($fp)
	li $t2, 0
	bne $t1, $t2, label1303
	j label1304
label1303:
	li $t0, 0
	sw $t0, -460($fp)
	li $t0, 0
	sw $t0, -464($fp)
	addi $t0, $fp, -36
	sw $t0, -468($fp)
	lw $t0, -332($fp)
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
	lw $t1, -484($fp)
	li $t2, 0
	bne $t1, $t2, label1326
	j label1325
label1325:
	li $t0, 1
	sw $t0, -464($fp)
label1326:
	li $t0, 0
	lw $t1, -464($fp)
	sub $t0, $t0, $t1
	sw $t0, -488($fp)
	li $t0, 0
	lw $t1, -488($fp)
	sub $t0, $t0, $t1
	sw $t0, -492($fp)
	lw $t0, -116($fp)
	sw $t0, -496($fp)
	addi $sp, $sp, -4
	lw $t0, -496($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -500($fp)
	addi $sp, $sp, 8
	li $t0, 54970
	sw $t0, -504($fp)
	lw $t0, -500($fp)
	lw $t1, -504($fp)
	mul $t0, $t0, $t1
	sw $t0, -508($fp)
	addi $t0, $fp, -36
	sw $t0, -512($fp)
	li $t0, 2
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
	lw $t0, -508($fp)
	lw $t1, -528($fp)
	sub $t0, $t0, $t1
	sw $t0, -532($fp)
	lw $t1, -492($fp)
	lw $t2, -532($fp)
	beq $t1, $t2, label1323
	j label1324
label1323:
	li $t0, 1
	sw $t0, -460($fp)
label1324:
	addi $t0, $fp, -8
	sw $t0, -536($fp)
	lw $t0, -320($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -544($fp)
	li $t0, 4
	lw $t1, -544($fp)
	mul $t0, $t0, $t1
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	lw $t1, -536($fp)
	add $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	lw $t1, 0($t0)
	sw $t1, -556($fp)
	li $t0, 0
	sw $t0, -560($fp)
	lw $t0, 4($fp)
	sw $t0, -564($fp)
	lw $t1, -564($fp)
	li $t2, 0
	bne $t1, $t2, label1327
	j label1328
label1327:
	li $t0, 1
	sw $t0, -560($fp)
label1328:
	addi $t0, $fp, -36
	sw $t0, -568($fp)
	lw $t0, -68($fp)
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
	lw $t0, -560($fp)
	lw $t1, -584($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -588($fp)
	lw $t0, -556($fp)
	lw $t1, -588($fp)
	add $t0, $t0, $t1
	sw $t0, -592($fp)
	lw $t0, -116($fp)
	sw $t0, -596($fp)
	li $t0, 0
	sw $t0, -600($fp)
	li $t0, 0
	sw $t0, -604($fp)
	lw $t0, -92($fp)
	sw $t0, -608($fp)
	li $t0, 0
	lw $t1, -608($fp)
	sub $t0, $t0, $t1
	sw $t0, -612($fp)
	lw $t0, -56($fp)
	sw $t0, -616($fp)
	lw $t0, -612($fp)
	lw $t1, -616($fp)
	add $t0, $t0, $t1
	sw $t0, -620($fp)
	lw $t0, -104($fp)
	sw $t0, -624($fp)
	lw $t0, -620($fp)
	lw $t1, -624($fp)
	add $t0, $t0, $t1
	sw $t0, -628($fp)
	li $t0, 46183
	sw $t0, -632($fp)
	li $t0, 15108
	sw $t0, -636($fp)
	lw $t0, -632($fp)
	lw $t1, -636($fp)
	sub $t0, $t0, $t1
	sw $t0, -640($fp)
	lw $t1, -628($fp)
	lw $t2, -640($fp)
	bge $t1, $t2, label1331
	j label1332
label1331:
	li $t0, 1
	sw $t0, -604($fp)
label1332:
	li $t0, 0
	sw $t0, -644($fp)
	li $t0, 11439
	sw $t0, -648($fp)
	lw $t1, -648($fp)
	li $t2, 0
	bne $t1, $t2, label1333
	j label1334
label1333:
	li $t0, 1
	sw $t0, -644($fp)
label1334:
	li $t0, 0
	lw $t1, -644($fp)
	sub $t0, $t0, $t1
	sw $t0, -652($fp)
	lw $t1, -604($fp)
	lw $t2, -652($fp)
	blt $t1, $t2, label1329
	j label1330
label1329:
	li $t0, 1
	sw $t0, -600($fp)
label1330:
	j label1305
label1304:
	li $t0, 21068
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	li $t0, 15391
	sw $t0, -672($fp)
	addi $t0, $fp, -656
	sw $t0, -676($fp)
	li $t0, 0
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
	li $t0, 55338
	sw $t0, -696($fp)
	li $t0, 0
	sw $t0, -700($fp)
	lw $t0, -332($fp)
	sw $t0, -704($fp)
	lw $t0, -116($fp)
	sw $t0, -708($fp)
	lw $t0, -704($fp)
	lw $t1, -708($fp)
	mul $t0, $t0, $t1
	sw $t0, -712($fp)
	li $t0, 0
	sw $t0, -716($fp)
	lw $t0, -68($fp)
	sw $t0, -720($fp)
	li $t0, 0
	lw $t1, -720($fp)
	sub $t0, $t0, $t1
	sw $t0, -724($fp)
	lw $t1, -724($fp)
	li $t2, 0
	bne $t1, $t2, label1339
	j label1338
label1338:
	li $t0, 1
	sw $t0, -716($fp)
label1339:
	lw $t0, -712($fp)
	lw $t1, -716($fp)
	mul $t0, $t0, $t1
	sw $t0, -728($fp)
	lw $t1, -728($fp)
	li $t2, 0
	bne $t1, $t2, label1337
	j label1336
label1337:
	lw $t0, -68($fp)
	sw $t0, -732($fp)
	li $t0, 36374
	sw $t0, -736($fp)
	lw $t0, -732($fp)
	lw $t1, -736($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -740($fp)
	li $t0, 0
	sw $t0, -744($fp)
	lw $t0, -116($fp)
	sw $t0, -748($fp)
	lw $t1, -748($fp)
	li $t2, 0
	bne $t1, $t2, label1341
	j label1340
label1340:
	li $t0, 1
	sw $t0, -744($fp)
label1341:
	lw $t0, -740($fp)
	lw $t1, -744($fp)
	sub $t0, $t0, $t1
	sw $t0, -752($fp)
	lw $t1, -752($fp)
	li $t2, 0
	bne $t1, $t2, label1335
	j label1336
label1335:
	li $t0, 1
	sw $t0, -700($fp)
label1336:
	li $t0, 25097
	sw $t0, -756($fp)
	addi $t0, $fp, -656
	sw $t0, -760($fp)
	li $t0, 0
	sw $t0, -764($fp)
	li $t0, 4
	lw $t1, -764($fp)
	mul $t0, $t0, $t1
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	lw $t1, -760($fp)
	add $t0, $t0, $t1
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	lw $t1, 0($t0)
	sw $t1, -776($fp)
	li $t0, 0
	sw $t0, -780($fp)
	li $t0, 30877
	sw $t0, -784($fp)
	li $t0, 45325
	sw $t0, -788($fp)
	lw $t0, -784($fp)
	lw $t1, -788($fp)
	add $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $t1, -792($fp)
	li $t2, 0
	bne $t1, $t2, label1344
	j label1343
label1344:
	li $t0, 61298
	sw $t0, -796($fp)
	lw $t1, -796($fp)
	li $t2, 0
	bne $t1, $t2, label1342
	j label1343
label1342:
	li $t0, 1
	sw $t0, -780($fp)
label1343:
	li $t0, 36989
	sw $t0, -800($fp)
	li $t0, 0
	sw $t0, -804($fp)
	li $t0, 0
	sw $t0, -808($fp)
	lw $t0, 4($fp)
	sw $t0, -812($fp)
	lw $t1, -812($fp)
	li $t2, 0
	bne $t1, $t2, label1348
	j label1347
label1347:
	li $t0, 1
	sw $t0, -808($fp)
label1348:
	li $t0, 63064
	sw $t0, -816($fp)
	lw $t1, -808($fp)
	lw $t2, -816($fp)
	beq $t1, $t2, label1345
	j label1346
label1345:
	li $t0, 1
	sw $t0, -804($fp)
label1346:
	lw $t0, -664($fp)
	sw $t0, -820($fp)
	lw $t0, -68($fp)
	sw $t0, -824($fp)
	lw $t0, -820($fp)
	lw $t1, -824($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -828($fp)
	addi $sp, $sp, -4
	lw $t0, -780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -828($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -832($fp)
	addi $sp, $sp, 20
	lw $t0, -776($fp)
	lw $t1, -832($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -836($fp)
	li $t0, 0
	lw $t1, -836($fp)
	sub $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t0, -756($fp)
	lw $t1, -840($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -844($fp)
	li $t0, 0
	lw $t1, -844($fp)
	sub $t0, $t0, $t1
	sw $t0, -848($fp)
label1305:
	lw $t0, -320($fp)
	sw $t0, -852($fp)
	lw $ra, -4($fp)
	lw $v0, -852($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 40189
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
label1349:
	lw $t0, -116($fp)
	sw $t0, -868($fp)
	li $t0, 0
	lw $t1, -868($fp)
	sub $t0, $t0, $t1
	sw $t0, -872($fp)
	li $t0, 0
	lw $t1, -872($fp)
	sub $t0, $t0, $t1
	sw $t0, -876($fp)
	lw $t1, -876($fp)
	li $t2, 0
	bne $t1, $t2, label1350
	j label1352
label1352:
	lw $t0, 8($fp)
	sw $t0, -880($fp)
	li $t0, 27964
	sw $t0, -884($fp)
	li $t0, 61894
	sw $t0, -888($fp)
	lw $t0, -884($fp)
	lw $t1, -888($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -892($fp)
	lw $t0, -880($fp)
	lw $t1, -892($fp)
	sub $t0, $t0, $t1
	sw $t0, -896($fp)
	lw $t1, -896($fp)
	li $t2, 0
	bne $t1, $t2, label1350
	j label1351
label1350:
	lw $t0, -92($fp)
	sw $t0, -900($fp)
	li $t0, 0
	lw $t1, -900($fp)
	sub $t0, $t0, $t1
	sw $t0, -904($fp)
	li $t0, 0
	lw $t1, -904($fp)
	sub $t0, $t0, $t1
	sw $t0, -908($fp)
	lw $t1, -908($fp)
	li $t2, 0
	bne $t1, $t2, label1353
	j label1354
label1353:
	li $t0, 0
	sw $t0, -912($fp)
	lw $t0, -56($fp)
	sw $t0, -916($fp)
	li $t0, 43367
	sw $t0, -920($fp)
	lw $t0, -916($fp)
	lw $t1, -920($fp)
	mul $t0, $t0, $t1
	sw $t0, -924($fp)
	li $t0, 18716
	sw $t0, -928($fp)
	lw $t0, -924($fp)
	lw $t1, -928($fp)
	mul $t0, $t0, $t1
	sw $t0, -932($fp)
	addi $sp, $sp, -4
	lw $t0, -932($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -936($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -940($fp)
	lw $t0, -860($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -948($fp)
	li $t0, 4
	lw $t1, -948($fp)
	mul $t0, $t0, $t1
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	lw $t1, -940($fp)
	add $t0, $t0, $t1
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	lw $t1, 0($t0)
	sw $t1, -960($fp)
	lw $t1, -936($fp)
	lw $t2, -960($fp)
	bgt $t1, $t2, label1356
	j label1357
label1356:
	li $t0, 1
	sw $t0, -912($fp)
label1357:
	lw $ra, -4($fp)
	lw $v0, -912($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1355
label1354:
	li $t0, 14663
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -972($fp)
	li $t0, 0
	sw $t0, -976($fp)
	li $t0, 0
	sw $t0, -980($fp)
	lw $t0, -968($fp)
	sw $t0, -984($fp)
	lw $t1, -984($fp)
	li $t2, 0
	bne $t1, $t2, label1362
	j label1361
label1361:
	li $t0, 1
	sw $t0, -980($fp)
label1362:
	lw $t0, -116($fp)
	sw $t0, -988($fp)
	li $t0, 39219
	sw $t0, -992($fp)
	li $t0, 20340
	sw $t0, -996($fp)
	lw $t0, -992($fp)
	lw $t1, -996($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1000($fp)
	lw $t0, -320($fp)
	sw $t0, -1004($fp)
	lw $t0, -1000($fp)
	lw $t1, -1004($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1008($fp)
	li $t0, 0
	sw $t0, -1012($fp)
	li $t0, 39458
	sw $t0, -1016($fp)
	lw $t1, -1016($fp)
	li $t2, 0
	bne $t1, $t2, label1364
	j label1363
label1363:
	li $t0, 1
	sw $t0, -1012($fp)
label1364:
	addi $t0, $fp, -8
	sw $t0, -1020($fp)
	li $t0, 0
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
	li $t0, 37751
	sw $t0, -1040($fp)
	lw $t0, -1036($fp)
	lw $t1, -1040($fp)
	mul $t0, $t0, $t1
	sw $t0, -1044($fp)
	addi $sp, $sp, -4
	lw $t0, -988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1044($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1048($fp)
	addi $sp, $sp, 20
	lw $t0, -980($fp)
	lw $t1, -1048($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1052($fp)
	addi $t0, $fp, -36
	sw $t0, -1056($fp)
	lw $t0, -80($fp)
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
	lw $t1, -1052($fp)
	lw $t2, -1072($fp)
	bne $t1, $t2, label1360
	j label1359
label1360:
	lw $t0, 8($fp)
	sw $t0, -1076($fp)
	li $t0, 1585
	sw $t0, -1080($fp)
	lw $t0, -1076($fp)
	lw $t1, -1080($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1084($fp)
	lw $t0, -104($fp)
	sw $t0, -1088($fp)
	lw $t0, -1084($fp)
	lw $t1, -1088($fp)
	mul $t0, $t0, $t1
	sw $t0, -1092($fp)
	lw $t0, 4($fp)
	sw $t0, -1096($fp)
	lw $t0, -1092($fp)
	lw $t1, -1096($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1100($fp)
	lw $t1, -1100($fp)
	li $t2, 0
	bne $t1, $t2, label1358
	j label1359
label1358:
	li $t0, 1
	sw $t0, -976($fp)
label1359:
label1355:
	j label1349
label1351:
	lw $t0, -44($fp)
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -56($fp)
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -116($fp)
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -1132($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -1152($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -1172($fp)
	li $t0, 1
	sw $t0, -1176($fp)
	li $t0, 4
	lw $t1, -1176($fp)
	mul $t0, $t0, $t1
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	lw $t1, -1172($fp)
	add $t0, $t0, $t1
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	lw $t1, 0($t0)
	sw $t1, -1188($fp)
	lw $t0, -1188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1192($fp)
	li $t0, 2
	sw $t0, -1196($fp)
	li $t0, 4
	lw $t1, -1196($fp)
	mul $t0, $t0, $t1
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	lw $t1, -1192($fp)
	add $t0, $t0, $t1
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	lw $t1, 0($t0)
	sw $t1, -1208($fp)
	lw $t0, -1208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1212($fp)
	li $t0, 3
	sw $t0, -1216($fp)
	li $t0, 4
	lw $t1, -1216($fp)
	mul $t0, $t0, $t1
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	lw $t1, -1212($fp)
	add $t0, $t0, $t1
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	lw $t1, 0($t0)
	sw $t1, -1228($fp)
	lw $t0, -1228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1232($fp)
	li $t0, 4
	sw $t0, -1236($fp)
	li $t0, 4
	lw $t1, -1236($fp)
	mul $t0, $t0, $t1
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	lw $t1, -1232($fp)
	add $t0, $t0, $t1
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	lw $t1, 0($t0)
	sw $t1, -1248($fp)
	lw $t0, -1248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1252($fp)
	li $t0, 5
	sw $t0, -1256($fp)
	li $t0, 4
	lw $t1, -1256($fp)
	mul $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	lw $t1, -1252($fp)
	add $t0, $t0, $t1
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	lw $t1, 0($t0)
	sw $t1, -1268($fp)
	lw $t0, -1268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1272($fp)
	li $t0, 6
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
	lw $t0, -1288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -320($fp)
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -332($fp)
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1300($fp)
	li $t0, 28654
	sw $t0, -1304($fp)
	lw $t1, -1304($fp)
	li $t2, 0
	bne $t1, $t2, label1366
	j label1365
label1365:
	li $t0, 1
	sw $t0, -1300($fp)
label1366:
	lw $t0, -1300($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -1312($fp)
	lw $ra, -4($fp)
	lw $v0, -1312($fp)
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
	li $t0, 16399
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	li $t0, 31508
	sw $t0, -24($fp)
	lw $t1, -24($fp)
	li $t2, 0
	bne $t1, $t2, label1368
	j label1367
label1367:
	li $t0, 1
	sw $t0, -20($fp)
label1368:
	li $t0, 0
	lw $t1, -20($fp)
	sub $t0, $t0, $t1
	sw $t0, -28($fp)
	li $t0, 0
	sw $t0, -32($fp)
	li $t0, 0
	sw $t0, -36($fp)
	lw $t0, -12($fp)
	sw $t0, -40($fp)
	li $t0, 48967
	sw $t0, -44($fp)
	lw $t1, -40($fp)
	lw $t2, -44($fp)
	bne $t1, $t2, label1371
	j label1372
label1371:
	li $t0, 1
	sw $t0, -36($fp)
label1372:
	li $t0, 9301
	sw $t0, -48($fp)
	lw $t1, -36($fp)
	lw $t2, -48($fp)
	beq $t1, $t2, label1369
	j label1370
label1369:
	li $t0, 1
	sw $t0, -32($fp)
label1370:
	addi $sp, $sp, -4
	lw $t0, -28($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -52($fp)
	addi $sp, $sp, 12
	lw $t0, -12($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 60406
	sw $t0, -60($fp)
	lw $ra, -4($fp)
	lw $v0, -60($fp)
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
	jal f13
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
