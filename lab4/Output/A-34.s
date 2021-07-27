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
	addi $sp, $sp, -5640
	li $t0, 55588
	sw $t0, -164($fp)
	addi $t0, $fp, -40
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
	li $t0, 56189
	sw $t0, -188($fp)
	addi $t0, $fp, -40
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
	li $t0, 42039
	sw $t0, -212($fp)
	addi $t0, $fp, -40
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
	li $t0, 7455
	sw $t0, -236($fp)
	addi $t0, $fp, -40
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
	li $t0, 35991
	sw $t0, -260($fp)
	addi $t0, $fp, -40
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
	li $t0, 8531
	sw $t0, -284($fp)
	addi $t0, $fp, -40
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
	li $t0, 12299
	sw $t0, -308($fp)
	addi $t0, $fp, -40
	sw $t0, -312($fp)
	li $t0, 6
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
	li $t0, 1984
	sw $t0, -332($fp)
	addi $t0, $fp, -40
	sw $t0, -336($fp)
	li $t0, 7
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
	li $t0, 6490
	sw $t0, -356($fp)
	addi $t0, $fp, -40
	sw $t0, -360($fp)
	li $t0, 8
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
	li $t0, 25560
	sw $t0, -380($fp)
	addi $t0, $fp, -68
	sw $t0, -384($fp)
	li $t0, 0
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
	li $t0, 28752
	sw $t0, -404($fp)
	addi $t0, $fp, -68
	sw $t0, -408($fp)
	li $t0, 1
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
	li $t0, 3497
	sw $t0, -428($fp)
	addi $t0, $fp, -68
	sw $t0, -432($fp)
	li $t0, 2
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
	li $t0, 15541
	sw $t0, -452($fp)
	addi $t0, $fp, -68
	sw $t0, -456($fp)
	li $t0, 3
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
	li $t0, 11540
	sw $t0, -476($fp)
	addi $t0, $fp, -68
	sw $t0, -480($fp)
	li $t0, 4
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
	li $t0, 56996
	sw $t0, -500($fp)
	addi $t0, $fp, -68
	sw $t0, -504($fp)
	li $t0, 5
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
	li $t0, 44791
	sw $t0, -524($fp)
	addi $t0, $fp, -68
	sw $t0, -528($fp)
	li $t0, 6
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
	li $t0, 61446
	sw $t0, -548($fp)
	addi $t0, $fp, -80
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
	li $t0, 28114
	sw $t0, -572($fp)
	addi $t0, $fp, -80
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
	li $t0, 36435
	sw $t0, -596($fp)
	addi $t0, $fp, -80
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
	li $t0, 16507
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	li $t0, 48271
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	li $t0, 26518
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	li $t0, 64223
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	li $t0, 58954
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	li $t0, 13089
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	li $t0, 36168
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	li $t0, 50086
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	li $t0, 62535
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	li $t0, 16755
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	li $t0, 4635
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	li $t0, 63112
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -760($fp)
	li $t0, 6807
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -772($fp)
	li $t0, 60824
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	li $t0, 39616
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	li $t0, 14262
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
	li $t0, 31279
	sw $t0, -812($fp)
	addi $t0, $fp, -92
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
	li $t0, 48147
	sw $t0, -836($fp)
	addi $t0, $fp, -92
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
	li $t0, 26562
	sw $t0, -860($fp)
	addi $t0, $fp, -92
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
	li $t0, 33264
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -892($fp)
	li $t0, 54638
	sw $t0, -896($fp)
	addi $t0, $fp, -116
	sw $t0, -900($fp)
	li $t0, 0
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -908($fp)
	lw $t0, -900($fp)
	lw $t1, -908($fp)
	add $t0, $t0, $t1
	sw $t0, -912($fp)
	lw $t0, -896($fp)
	lw $t1, -912($fp)
	sw $t0, 0($t1)
	lw $t0, -912($fp)
	lw $t1, 0($t0)
	sw $t1, -916($fp)
	li $t0, 52122
	sw $t0, -920($fp)
	addi $t0, $fp, -116
	sw $t0, -924($fp)
	li $t0, 1
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -932($fp)
	lw $t0, -924($fp)
	lw $t1, -932($fp)
	add $t0, $t0, $t1
	sw $t0, -936($fp)
	lw $t0, -920($fp)
	lw $t1, -936($fp)
	sw $t0, 0($t1)
	lw $t0, -936($fp)
	lw $t1, 0($t0)
	sw $t1, -940($fp)
	li $t0, 62016
	sw $t0, -944($fp)
	addi $t0, $fp, -116
	sw $t0, -948($fp)
	li $t0, 2
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -956($fp)
	lw $t0, -948($fp)
	lw $t1, -956($fp)
	add $t0, $t0, $t1
	sw $t0, -960($fp)
	lw $t0, -944($fp)
	lw $t1, -960($fp)
	sw $t0, 0($t1)
	lw $t0, -960($fp)
	lw $t1, 0($t0)
	sw $t1, -964($fp)
	li $t0, 58135
	sw $t0, -968($fp)
	addi $t0, $fp, -116
	sw $t0, -972($fp)
	li $t0, 3
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -980($fp)
	lw $t0, -972($fp)
	lw $t1, -980($fp)
	add $t0, $t0, $t1
	sw $t0, -984($fp)
	lw $t0, -968($fp)
	lw $t1, -984($fp)
	sw $t0, 0($t1)
	lw $t0, -984($fp)
	lw $t1, 0($t0)
	sw $t1, -988($fp)
	li $t0, 2127
	sw $t0, -992($fp)
	addi $t0, $fp, -116
	sw $t0, -996($fp)
	li $t0, 4
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t0, -996($fp)
	lw $t1, -1004($fp)
	add $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t0, -992($fp)
	lw $t1, -1008($fp)
	sw $t0, 0($t1)
	lw $t0, -1008($fp)
	lw $t1, 0($t0)
	sw $t1, -1012($fp)
	li $t0, 8020
	sw $t0, -1016($fp)
	addi $t0, $fp, -116
	sw $t0, -1020($fp)
	li $t0, 5
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1028($fp)
	lw $t0, -1020($fp)
	lw $t1, -1028($fp)
	add $t0, $t0, $t1
	sw $t0, -1032($fp)
	lw $t0, -1016($fp)
	lw $t1, -1032($fp)
	sw $t0, 0($t1)
	lw $t0, -1032($fp)
	lw $t1, 0($t0)
	sw $t1, -1036($fp)
	li $t0, 49595
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, -1048($fp)
	li $t0, 46919
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -1060($fp)
	li $t0, 3931
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, -1072($fp)
	li $t0, 12173
	sw $t0, -1076($fp)
	addi $t0, $fp, -148
	sw $t0, -1080($fp)
	li $t0, 0
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
	li $t0, 17818
	sw $t0, -1100($fp)
	addi $t0, $fp, -148
	sw $t0, -1104($fp)
	li $t0, 1
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
	li $t0, 20438
	sw $t0, -1124($fp)
	addi $t0, $fp, -148
	sw $t0, -1128($fp)
	li $t0, 2
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
	li $t0, 60444
	sw $t0, -1148($fp)
	addi $t0, $fp, -148
	sw $t0, -1152($fp)
	li $t0, 3
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
	li $t0, 44336
	sw $t0, -1172($fp)
	addi $t0, $fp, -148
	sw $t0, -1176($fp)
	li $t0, 4
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
	li $t0, 19125
	sw $t0, -1196($fp)
	addi $t0, $fp, -148
	sw $t0, -1200($fp)
	li $t0, 5
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t0, -1200($fp)
	lw $t1, -1208($fp)
	add $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t0, -1196($fp)
	lw $t1, -1212($fp)
	sw $t0, 0($t1)
	lw $t0, -1212($fp)
	lw $t1, 0($t0)
	sw $t1, -1216($fp)
	li $t0, 53863
	sw $t0, -1220($fp)
	addi $t0, $fp, -148
	sw $t0, -1224($fp)
	li $t0, 6
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1232($fp)
	lw $t0, -1224($fp)
	lw $t1, -1232($fp)
	add $t0, $t0, $t1
	sw $t0, -1236($fp)
	lw $t0, -1220($fp)
	lw $t1, -1236($fp)
	sw $t0, 0($t1)
	lw $t0, -1236($fp)
	lw $t1, 0($t0)
	sw $t1, -1240($fp)
	li $t0, 57426
	sw $t0, -1244($fp)
	addi $t0, $fp, -148
	sw $t0, -1248($fp)
	li $t0, 7
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
	li $t0, 55293
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	li $t0, 38413
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	li $t0, 54425
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	li $t0, 6512
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -1312($fp)
	li $t0, 43048
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -1324($fp)
	li $t0, 52002
	sw $t0, -1328($fp)
	addi $t0, $fp, -160
	sw $t0, -1332($fp)
	li $t0, 0
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1340($fp)
	lw $t0, -1332($fp)
	lw $t1, -1340($fp)
	add $t0, $t0, $t1
	sw $t0, -1344($fp)
	lw $t0, -1328($fp)
	lw $t1, -1344($fp)
	sw $t0, 0($t1)
	lw $t0, -1344($fp)
	lw $t1, 0($t0)
	sw $t1, -1348($fp)
	li $t0, 13319
	sw $t0, -1352($fp)
	addi $t0, $fp, -160
	sw $t0, -1356($fp)
	li $t0, 1
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t0, -1356($fp)
	lw $t1, -1364($fp)
	add $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t0, -1352($fp)
	lw $t1, -1368($fp)
	sw $t0, 0($t1)
	lw $t0, -1368($fp)
	lw $t1, 0($t0)
	sw $t1, -1372($fp)
	li $t0, 38336
	sw $t0, -1376($fp)
	addi $t0, $fp, -160
	sw $t0, -1380($fp)
	li $t0, 2
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $t0, -1380($fp)
	lw $t1, -1388($fp)
	add $t0, $t0, $t1
	sw $t0, -1392($fp)
	lw $t0, -1376($fp)
	lw $t1, -1392($fp)
	sw $t0, 0($t1)
	lw $t0, -1392($fp)
	lw $t1, 0($t0)
	sw $t1, -1396($fp)
	li $t0, 26082
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	sw $t0, -1408($fp)
	addi $t0, $fp, -40
	sw $t0, -1412($fp)
	li $t0, 0
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
	lw $t0, -1428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1432($fp)
	li $t0, 1
	sw $t0, -1436($fp)
	li $t0, 4
	lw $t1, -1436($fp)
	mul $t0, $t0, $t1
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	lw $t1, -1432($fp)
	add $t0, $t0, $t1
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	lw $t1, 0($t0)
	sw $t1, -1448($fp)
	lw $t0, -1448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1452($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -1472($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -1492($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -1512($fp)
	li $t0, 5
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
	addi $t0, $fp, -40
	sw $t0, -1532($fp)
	li $t0, 6
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
	addi $t0, $fp, -40
	sw $t0, -1552($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -1572($fp)
	li $t0, 8
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
	lw $t0, -1588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1592($fp)
	li $t0, 0
	sw $t0, -1596($fp)
	li $t0, 4
	lw $t1, -1596($fp)
	mul $t0, $t0, $t1
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	lw $t1, -1592($fp)
	add $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	lw $t1, 0($t0)
	sw $t1, -1608($fp)
	lw $t0, -1608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1612($fp)
	li $t0, 1
	sw $t0, -1616($fp)
	li $t0, 4
	lw $t1, -1616($fp)
	mul $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	lw $t1, -1612($fp)
	add $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	lw $t1, 0($t0)
	sw $t1, -1628($fp)
	lw $t0, -1628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1632($fp)
	li $t0, 2
	sw $t0, -1636($fp)
	li $t0, 4
	lw $t1, -1636($fp)
	mul $t0, $t0, $t1
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	lw $t1, -1632($fp)
	add $t0, $t0, $t1
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	lw $t1, 0($t0)
	sw $t1, -1648($fp)
	lw $t0, -1648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1652($fp)
	li $t0, 3
	sw $t0, -1656($fp)
	li $t0, 4
	lw $t1, -1656($fp)
	mul $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	lw $t1, -1652($fp)
	add $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	lw $t1, 0($t0)
	sw $t1, -1668($fp)
	lw $t0, -1668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1672($fp)
	li $t0, 4
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
	lw $t0, -1688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1692($fp)
	li $t0, 5
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
	lw $t0, -1708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1712($fp)
	li $t0, 6
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
	lw $t0, -1728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1732($fp)
	li $t0, 0
	sw $t0, -1736($fp)
	li $t0, 4
	lw $t1, -1736($fp)
	mul $t0, $t0, $t1
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	lw $t1, -1732($fp)
	add $t0, $t0, $t1
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	lw $t1, 0($t0)
	sw $t1, -1748($fp)
	lw $t0, -1748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1752($fp)
	li $t0, 1
	sw $t0, -1756($fp)
	li $t0, 4
	lw $t1, -1756($fp)
	mul $t0, $t0, $t1
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	lw $t1, -1752($fp)
	add $t0, $t0, $t1
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	lw $t1, 0($t0)
	sw $t1, -1768($fp)
	lw $t0, -1768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1772($fp)
	li $t0, 2
	sw $t0, -1776($fp)
	li $t0, 4
	lw $t1, -1776($fp)
	mul $t0, $t0, $t1
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	lw $t1, -1772($fp)
	add $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	lw $t1, 0($t0)
	sw $t1, -1788($fp)
	lw $t0, -1788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -1800($fp)
	lw $t0, -1800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -684($fp)
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -696($fp)
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -720($fp)
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -732($fp)
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -744($fp)
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -756($fp)
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -768($fp)
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -780($fp)
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -792($fp)
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -804($fp)
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1856($fp)
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	lw $t0, -888($fp)
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -1920($fp)
	li $t0, 0
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
	addi $t0, $fp, -116
	sw $t0, -1940($fp)
	li $t0, 1
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
	addi $t0, $fp, -116
	sw $t0, -1960($fp)
	li $t0, 2
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
	lw $t0, -1976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -1980($fp)
	li $t0, 3
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
	addi $t0, $fp, -116
	sw $t0, -2000($fp)
	li $t0, 4
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
	addi $t0, $fp, -116
	sw $t0, -2020($fp)
	li $t0, 5
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
	lw $t0, -1044($fp)
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1056($fp)
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1068($fp)
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -2052($fp)
	li $t0, 0
	sw $t0, -2056($fp)
	li $t0, 4
	lw $t1, -2056($fp)
	mul $t0, $t0, $t1
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	lw $t1, -2052($fp)
	add $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	lw $t1, 0($t0)
	sw $t1, -2068($fp)
	lw $t0, -2068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -2072($fp)
	li $t0, 1
	sw $t0, -2076($fp)
	li $t0, 4
	lw $t1, -2076($fp)
	mul $t0, $t0, $t1
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	lw $t1, -2072($fp)
	add $t0, $t0, $t1
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	lw $t1, 0($t0)
	sw $t1, -2088($fp)
	lw $t0, -2088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -2092($fp)
	li $t0, 2
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
	addi $t0, $fp, -148
	sw $t0, -2112($fp)
	li $t0, 3
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
	addi $t0, $fp, -148
	sw $t0, -2132($fp)
	li $t0, 4
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
	addi $t0, $fp, -148
	sw $t0, -2152($fp)
	li $t0, 5
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
	addi $t0, $fp, -148
	sw $t0, -2172($fp)
	li $t0, 6
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
	addi $t0, $fp, -148
	sw $t0, -2192($fp)
	li $t0, 7
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
	lw $t0, -1272($fp)
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1284($fp)
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1296($fp)
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1308($fp)
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1320($fp)
	sw $t0, -2228($fp)
	lw $t0, -2228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -2232($fp)
	li $t0, 0
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
	addi $t0, $fp, -160
	sw $t0, -2252($fp)
	li $t0, 1
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
	addi $t0, $fp, -160
	sw $t0, -2272($fp)
	li $t0, 2
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
	lw $t0, -1404($fp)
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -2296($fp)
	li $t0, 0
	sw $t0, -2300($fp)
	lw $t0, 4($fp)
	sw $t0, -2304($fp)
	lw $t1, -2304($fp)
	li $t2, 0
	bne $t1, $t2, label123
	j label122
label123:
	li $t0, 27582
	sw $t0, -2308($fp)
	lw $t1, -2308($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -2300($fp)
label122:
	li $t0, 4
	lw $t1, -2300($fp)
	mul $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	lw $t1, -2296($fp)
	add $t0, $t0, $t1
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	lw $t1, 0($t0)
	sw $t1, -2320($fp)
	li $t0, 0
	lw $t1, -2320($fp)
	sub $t0, $t0, $t1
	sw $t0, -2324($fp)
	addi $t0, $fp, -40
	sw $t0, -2328($fp)
	li $t0, 0
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
	lw $t0, -2324($fp)
	lw $t1, -2344($fp)
	sub $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $ra, -4($fp)
	lw $v0, -2348($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label124:
	lw $t0, -648($fp)
	sw $t0, -2352($fp)
	li $t0, 37344
	sw $t0, -2356($fp)
	lw $t0, -2352($fp)
	lw $t1, -2356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2360($fp)
	li $t0, 0
	lw $t1, -2360($fp)
	sub $t0, $t0, $t1
	sw $t0, -2364($fp)
	lw $t1, -2364($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label126
label125:
label127:
	addi $t0, $fp, -68
	sw $t0, -2368($fp)
	li $t0, 0
	sw $t0, -2372($fp)
	addi $t0, $fp, -116
	sw $t0, -2376($fp)
	lw $t0, -672($fp)
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
	li $t0, 0
	lw $t1, -2392($fp)
	sub $t0, $t0, $t1
	sw $t0, -2396($fp)
	li $t0, 0
	sw $t0, -2400($fp)
	lw $t0, -684($fp)
	sw $t0, -2404($fp)
	lw $t0, -624($fp)
	sw $t0, -2408($fp)
	lw $t1, -2404($fp)
	lw $t2, -2408($fp)
	beq $t1, $t2, label135
	j label134
label135:
	lw $t0, -1056($fp)
	sw $t0, -2412($fp)
	lw $t1, -2412($fp)
	li $t2, 0
	bne $t1, $t2, label133
	j label134
label133:
	li $t0, 1
	sw $t0, -2400($fp)
label134:
	addi $sp, $sp, -4
	lw $t0, -2396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2400($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2416($fp)
	addi $sp, $sp, 12
	lw $t1, -2416($fp)
	li $t2, 0
	bne $t1, $t2, label132
	j label131
label132:
	li $t0, 63331
	sw $t0, -2420($fp)
	lw $t1, -2420($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label131
label130:
	li $t0, 1
	sw $t0, -2372($fp)
label131:
	li $t0, 4
	lw $t1, -2372($fp)
	mul $t0, $t0, $t1
	sw $t0, -2424($fp)
	lw $t0, -2424($fp)
	lw $t1, -2368($fp)
	add $t0, $t0, $t1
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	lw $t1, 0($t0)
	sw $t1, -2432($fp)
	addi $t0, $fp, -160
	sw $t0, -2436($fp)
	li $t0, 2
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
	lw $t0, -2432($fp)
	lw $t1, -2452($fp)
	sub $t0, $t0, $t1
	sw $t0, -2456($fp)
	lw $t1, -2456($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label129
label128:
	lw $t0, -768($fp)
	sw $t0, -2460($fp)
	lw $t0, -672($fp)
	sw $t0, -2464($fp)
	addi $sp, $sp, -4
	lw $t0, -2460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2464($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2468($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -116
	sw $t0, -2472($fp)
	lw $t0, -708($fp)
	sw $t0, -2476($fp)
	li $t0, 4
	lw $t1, -2476($fp)
	mul $t0, $t0, $t1
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	lw $t1, -2472($fp)
	add $t0, $t0, $t1
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	lw $t1, 0($t0)
	sw $t1, -2488($fp)
	lw $t0, -2468($fp)
	lw $t1, -2488($fp)
	mul $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $t1, -2492($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label137
label140:
	lw $t0, -744($fp)
	sw $t0, -2496($fp)
	lw $t1, -2496($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label137
label139:
	lw $t0, -792($fp)
	sw $t0, -2500($fp)
	lw $t1, -2500($fp)
	li $t2, 0
	bne $t1, $t2, label136
	j label137
label136:
	li $t0, 55930
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	sw $t0, -2512($fp)
	li $t0, 42857
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	sw $t0, -2524($fp)
	li $t0, 41845
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	sw $t0, -2536($fp)
	li $t0, 0
	sw $t0, -2540($fp)
	li $t0, 39990
	sw $t0, -2544($fp)
	lw $t0, -792($fp)
	sw $t0, -2548($fp)
	lw $t0, -2544($fp)
	lw $t1, -2548($fp)
	sub $t0, $t0, $t1
	sw $t0, -2552($fp)
	li $t0, 0
	sw $t0, -2556($fp)
	li $t0, 24240
	sw $t0, -2560($fp)
	lw $t1, -2560($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label143
label143:
	li $t0, 1
	sw $t0, -2556($fp)
label144:
	lw $t0, -2552($fp)
	lw $t1, -2556($fp)
	add $t0, $t0, $t1
	sw $t0, -2564($fp)
	li $t0, 0
	sw $t0, -2568($fp)
	li $t0, 52163
	sw $t0, -2572($fp)
	li $t0, 45776
	sw $t0, -2576($fp)
	lw $t0, -2576($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -2580($fp)
	addi $sp, $sp, -4
	lw $t0, -2572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2580($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2584($fp)
	addi $sp, $sp, 12
	lw $t1, -2584($fp)
	li $t2, 0
	bne $t1, $t2, label146
	j label145
label145:
	li $t0, 1
	sw $t0, -2568($fp)
label146:
	lw $t1, -2564($fp)
	lw $t2, -2568($fp)
	bgt $t1, $t2, label141
	j label142
label141:
	li $t0, 1
	sw $t0, -2540($fp)
label142:
	lw $t0, -2508($fp)
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2520($fp)
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2532($fp)
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2600($fp)
	li $t0, 0
	sw $t0, -2604($fp)
	li $t0, 0
	sw $t0, -2608($fp)
	li $t0, 678
	sw $t0, -2612($fp)
	li $t0, 42059
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -2620($fp)
	addi $sp, $sp, -4
	lw $t0, -2612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2620($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2624($fp)
	addi $sp, $sp, 12
	li $t0, 47072
	sw $t0, -2628($fp)
	lw $t1, -2624($fp)
	lw $t2, -2628($fp)
	bgt $t1, $t2, label152
	j label153
label152:
	li $t0, 1
	sw $t0, -2608($fp)
label153:
	li $t0, 0
	sw $t0, -2632($fp)
	lw $t0, -2508($fp)
	sw $t0, -2636($fp)
	lw $t1, -2636($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label154
label154:
	li $t0, 1
	sw $t0, -2632($fp)
label155:
	lw $t1, -2608($fp)
	lw $t2, -2632($fp)
	beq $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -2604($fp)
label151:
	lw $t0, -660($fp)
	sw $t0, -2640($fp)
	lw $t0, -768($fp)
	sw $t0, -2644($fp)
	lw $t0, -2640($fp)
	lw $t1, -2644($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2648($fp)
	li $t0, 20859
	sw $t0, -2652($fp)
	lw $t0, -2648($fp)
	lw $t1, -2652($fp)
	mul $t0, $t0, $t1
	sw $t0, -2656($fp)
	lw $t1, -2604($fp)
	lw $t2, -2656($fp)
	bne $t1, $t2, label149
	j label148
label149:
	lw $t0, -804($fp)
	sw $t0, -2660($fp)
	lw $t0, -2520($fp)
	sw $t0, -2664($fp)
	lw $t0, -2660($fp)
	lw $t1, -2664($fp)
	mul $t0, $t0, $t1
	sw $t0, -2668($fp)
	li $t0, 0
	lw $t1, -2668($fp)
	sub $t0, $t0, $t1
	sw $t0, -2672($fp)
	lw $t1, -2672($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label148
label147:
	li $t0, 1
	sw $t0, -2600($fp)
label148:
	lw $ra, -4($fp)
	lw $v0, -2600($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -2676($fp)
	li $t0, 0
	sw $t0, -2680($fp)
	li $t0, 0
	sw $t0, -2684($fp)
	li $t0, 0
	sw $t0, -2688($fp)
	lw $t0, -888($fp)
	sw $t0, -2692($fp)
	li $t0, 19803
	sw $t0, -2696($fp)
	lw $t0, -2692($fp)
	lw $t1, -2696($fp)
	sub $t0, $t0, $t1
	sw $t0, -2700($fp)
	lw $t0, -1320($fp)
	sw $t0, -2704($fp)
	lw $t1, -2700($fp)
	lw $t2, -2704($fp)
	bge $t1, $t2, label162
	j label163
label162:
	li $t0, 1
	sw $t0, -2688($fp)
label163:
	addi $t0, $fp, -92
	sw $t0, -2708($fp)
	lw $t0, -1284($fp)
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
	lw $t1, -2688($fp)
	lw $t2, -2724($fp)
	bgt $t1, $t2, label160
	j label161
label160:
	li $t0, 1
	sw $t0, -2684($fp)
label161:
	li $t0, 0
	sw $t0, -2728($fp)
	lw $t0, -768($fp)
	sw $t0, -2732($fp)
	lw $t1, -2732($fp)
	li $t2, 0
	bne $t1, $t2, label165
	j label164
label164:
	li $t0, 1
	sw $t0, -2728($fp)
label165:
	li $t0, 0
	lw $t1, -2728($fp)
	sub $t0, $t0, $t1
	sw $t0, -2736($fp)
	lw $t1, -2684($fp)
	lw $t2, -2736($fp)
	bgt $t1, $t2, label158
	j label159
label158:
	li $t0, 1
	sw $t0, -2680($fp)
label159:
	li $t0, 0
	sw $t0, -2740($fp)
	li $t0, 35399
	sw $t0, -2744($fp)
	lw $t1, -2744($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label167
label166:
	li $t0, 1
	sw $t0, -2740($fp)
label167:
	li $t0, 0
	lw $t1, -2740($fp)
	sub $t0, $t0, $t1
	sw $t0, -2748($fp)
	lw $t1, -2680($fp)
	lw $t2, -2748($fp)
	ble $t1, $t2, label156
	j label157
label156:
	li $t0, 1
	sw $t0, -2676($fp)
label157:
	li $t0, 0
	sw $t0, -2752($fp)
	addi $t0, $fp, -92
	sw $t0, -2756($fp)
	lw $t0, -2532($fp)
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
	lw $t1, -2772($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label168
label168:
	li $t0, 1
	sw $t0, -2752($fp)
label169:
	li $t0, 12749
	sw $t0, -2776($fp)
	lw $t0, -2752($fp)
	lw $t1, -2776($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2780($fp)
	lw $t0, -2780($fp)
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -2784($fp)
	lw $t0, -756($fp)
	sw $t0, -2788($fp)
	lw $t1, -2788($fp)
	li $t2, 0
	bne $t1, $t2, label173
	j label171
label173:
	lw $t0, -1308($fp)
	sw $t0, -2792($fp)
	lw $t1, -2792($fp)
	li $t2, 0
	bne $t1, $t2, label170
	j label171
label170:
	li $t0, 0
	sw $t0, -2796($fp)
	li $t0, 9560
	sw $t0, -2800($fp)
	li $t0, 0
	lw $t1, -2800($fp)
	sub $t0, $t0, $t1
	sw $t0, -2804($fp)
	lw $t0, -1308($fp)
	sw $t0, -2808($fp)
	lw $t1, -2804($fp)
	lw $t2, -2808($fp)
	ble $t1, $t2, label174
	j label175
label174:
	li $t0, 1
	sw $t0, -2796($fp)
label175:
	lw $t0, -780($fp)
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -2816($fp)
	addi $sp, $sp, -4
	lw $t0, -2796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2816($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2820($fp)
	addi $sp, $sp, 12
	li $t0, 8276
	sw $t0, -2824($fp)
	lw $t0, -2820($fp)
	lw $t1, -2824($fp)
	mul $t0, $t0, $t1
	sw $t0, -2828($fp)
	j label172
label171:
	li $t0, 0
	sw $t0, -2832($fp)
	li $t0, 1639
	sw $t0, -2836($fp)
	li $t0, 16072
	sw $t0, -2840($fp)
	lw $t1, -2836($fp)
	lw $t2, -2840($fp)
	blt $t1, $t2, label178
	j label177
label178:
	addi $t0, $fp, -116
	sw $t0, -2844($fp)
	lw $t0, -624($fp)
	sw $t0, -2848($fp)
	li $t0, 0
	lw $t1, -2848($fp)
	sub $t0, $t0, $t1
	sw $t0, -2852($fp)
	li $t0, 4
	lw $t1, -2852($fp)
	mul $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	lw $t1, -2844($fp)
	add $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	lw $t1, 0($t0)
	sw $t1, -2864($fp)
	lw $t1, -2864($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label177
label176:
	li $t0, 1
	sw $t0, -2832($fp)
label177:
label172:
	li $t0, 51325
	sw $t0, -2876($fp)
	addi $t0, $fp, -2872
	sw $t0, -2880($fp)
	li $t0, 0
	sw $t0, -2884($fp)
	lw $t0, -2884($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2888($fp)
	lw $t0, -2880($fp)
	lw $t1, -2888($fp)
	add $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t0, -2876($fp)
	lw $t1, -2892($fp)
	sw $t0, 0($t1)
	lw $t0, -2892($fp)
	lw $t1, 0($t0)
	sw $t1, -2896($fp)
	li $t0, 53641
	sw $t0, -2900($fp)
	addi $t0, $fp, -2872
	sw $t0, -2904($fp)
	li $t0, 1
	sw $t0, -2908($fp)
	lw $t0, -2908($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2912($fp)
	lw $t0, -2904($fp)
	lw $t1, -2912($fp)
	add $t0, $t0, $t1
	sw $t0, -2916($fp)
	lw $t0, -2900($fp)
	lw $t1, -2916($fp)
	sw $t0, 0($t1)
	lw $t0, -2916($fp)
	lw $t1, 0($t0)
	sw $t1, -2920($fp)
	addi $t0, $fp, -2872
	sw $t0, -2924($fp)
	li $t0, 0
	sw $t0, -2928($fp)
	addi $t0, $fp, -148
	sw $t0, -2932($fp)
	li $t0, 5
	sw $t0, -2936($fp)
	li $t0, 4
	lw $t1, -2936($fp)
	mul $t0, $t0, $t1
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	lw $t1, -2932($fp)
	add $t0, $t0, $t1
	sw $t0, -2944($fp)
	lw $t0, -2944($fp)
	lw $t1, 0($t0)
	sw $t1, -2948($fp)
	lw $t1, -2948($fp)
	li $t2, 0
	bne $t1, $t2, label180
	j label179
label179:
	li $t0, 1
	sw $t0, -2928($fp)
label180:
	li $t0, 4
	lw $t1, -2928($fp)
	mul $t0, $t0, $t1
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	lw $t1, -2924($fp)
	add $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	lw $t1, 0($t0)
	sw $t1, -2960($fp)
	j label138
label137:
label181:
	li $t0, 14187
	sw $t0, -2964($fp)
	li $t0, 0
	lw $t1, -2964($fp)
	sub $t0, $t0, $t1
	sw $t0, -2968($fp)
	lw $t1, -2968($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label183
label182:
	li $t0, 0
	sw $t0, -2972($fp)
	li $t0, 0
	sw $t0, -2976($fp)
	li $t0, 45581
	sw $t0, -2980($fp)
	lw $t1, -2980($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label189
label189:
	li $t0, 1
	sw $t0, -2976($fp)
label190:
	lw $t0, -1284($fp)
	sw $t0, -2984($fp)
	lw $t0, -2976($fp)
	lw $t1, -2984($fp)
	mul $t0, $t0, $t1
	sw $t0, -2988($fp)
	lw $t0, -1296($fp)
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -2996($fp)
	addi $sp, $sp, -4
	lw $t0, -2988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2996($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3000($fp)
	addi $sp, $sp, 12
	lw $t0, -648($fp)
	sw $t0, -3004($fp)
	lw $t1, -3000($fp)
	lw $t2, -3004($fp)
	bgt $t1, $t2, label187
	j label188
label187:
	li $t0, 1
	sw $t0, -2972($fp)
label188:
	li $t0, 0
	sw $t0, -3008($fp)
	lw $t0, -792($fp)
	sw $t0, -3012($fp)
	li $t0, 28205
	sw $t0, -3016($fp)
	lw $t1, -3012($fp)
	lw $t2, -3016($fp)
	ble $t1, $t2, label191
	j label192
label191:
	li $t0, 1
	sw $t0, -3008($fp)
label192:
	li $t0, 56973
	sw $t0, -3020($fp)
	lw $t0, -660($fp)
	sw $t0, -3024($fp)
	lw $t0, -3020($fp)
	lw $t1, -3024($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3028($fp)
	lw $t0, -888($fp)
	sw $t0, -3032($fp)
	lw $t0, -3028($fp)
	lw $t1, -3032($fp)
	mul $t0, $t0, $t1
	sw $t0, -3036($fp)
	addi $sp, $sp, -4
	lw $t0, -3008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3036($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3040($fp)
	addi $sp, $sp, 12
	li $t0, 22880
	sw $t0, -3044($fp)
	lw $t0, -3040($fp)
	lw $t1, -3044($fp)
	mul $t0, $t0, $t1
	sw $t0, -3048($fp)
	addi $sp, $sp, -4
	lw $t0, -2972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3048($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3052($fp)
	addi $sp, $sp, 12
	li $t0, 13
	sw $t0, -3056($fp)
	lw $t0, -3052($fp)
	lw $t1, -3056($fp)
	mul $t0, $t0, $t1
	sw $t0, -3060($fp)
	lw $t0, -1404($fp)
	sw $t0, -3064($fp)
	li $t0, 0
	lw $t1, -3064($fp)
	sub $t0, $t0, $t1
	sw $t0, -3068($fp)
	lw $t0, -1284($fp)
	sw $t0, -3072($fp)
	lw $t0, -3068($fp)
	lw $t1, -3072($fp)
	add $t0, $t0, $t1
	sw $t0, -3076($fp)
	li $t0, 0
	sw $t0, -3080($fp)
	li $t0, 0
	sw $t0, -3084($fp)
	li $t0, 20676
	sw $t0, -3088($fp)
	li $t0, 20775
	sw $t0, -3092($fp)
	lw $t1, -3088($fp)
	lw $t2, -3092($fp)
	bge $t1, $t2, label195
	j label196
label195:
	li $t0, 1
	sw $t0, -3084($fp)
label196:
	li $t0, 33838
	sw $t0, -3096($fp)
	lw $t1, -3084($fp)
	lw $t2, -3096($fp)
	bgt $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -3080($fp)
label194:
	addi $sp, $sp, -4
	lw $t0, -3076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3080($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3100($fp)
	addi $sp, $sp, 12
	lw $t0, -3060($fp)
	lw $t1, -3100($fp)
	add $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t1, -3104($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label185
label184:
	li $t0, 0
	sw $t0, -3108($fp)
	li $t0, 0
	sw $t0, -3112($fp)
	lw $t0, -792($fp)
	sw $t0, -3116($fp)
	li $t0, 0
	lw $t1, -3116($fp)
	sub $t0, $t0, $t1
	sw $t0, -3120($fp)
	li $t0, 37688
	sw $t0, -3124($fp)
	lw $t1, -3120($fp)
	lw $t2, -3124($fp)
	bgt $t1, $t2, label199
	j label200
label199:
	li $t0, 1
	sw $t0, -3112($fp)
label200:
	li $t0, 0
	sw $t0, -3128($fp)
	lw $t0, 8($fp)
	sw $t0, -3132($fp)
	li $t0, 22337
	sw $t0, -3136($fp)
	lw $t0, -3132($fp)
	lw $t1, -3136($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3140($fp)
	li $t0, 55923
	sw $t0, -3144($fp)
	lw $t0, -3140($fp)
	lw $t1, -3144($fp)
	sub $t0, $t0, $t1
	sw $t0, -3148($fp)
	li $t0, 0
	sw $t0, -3152($fp)
	li $t0, 10147
	sw $t0, -3156($fp)
	li $t0, 51060
	sw $t0, -3160($fp)
	lw $t0, -3156($fp)
	lw $t1, -3160($fp)
	sub $t0, $t0, $t1
	sw $t0, -3164($fp)
	lw $t1, -3164($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label205
label205:
	lw $t0, 4($fp)
	sw $t0, -3168($fp)
	lw $t1, -3168($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -3152($fp)
label204:
	addi $t0, $fp, -148
	sw $t0, -3172($fp)
	li $t0, 1
	sw $t0, -3176($fp)
	li $t0, 4
	lw $t1, -3176($fp)
	mul $t0, $t0, $t1
	sw $t0, -3180($fp)
	lw $t0, -3180($fp)
	lw $t1, -3172($fp)
	add $t0, $t0, $t1
	sw $t0, -3184($fp)
	lw $t0, -3184($fp)
	lw $t1, 0($t0)
	sw $t1, -3188($fp)
	addi $sp, $sp, -4
	lw $t0, -3152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3188($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3192($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -3148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3192($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3196($fp)
	addi $sp, $sp, 12
	lw $t0, -720($fp)
	sw $t0, -3200($fp)
	lw $t1, -3196($fp)
	lw $t2, -3200($fp)
	bgt $t1, $t2, label201
	j label202
label201:
	li $t0, 1
	sw $t0, -3128($fp)
label202:
	addi $sp, $sp, -4
	lw $t0, -3112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3128($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3204($fp)
	addi $sp, $sp, 12
	lw $t0, -1308($fp)
	sw $t0, -3208($fp)
	lw $t0, -708($fp)
	sw $t0, -3212($fp)
	lw $t0, -3208($fp)
	lw $t1, -3212($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3216($fp)
	addi $t0, $fp, -116
	sw $t0, -3220($fp)
	lw $t0, -1044($fp)
	sw $t0, -3224($fp)
	li $t0, 4
	lw $t1, -3224($fp)
	mul $t0, $t0, $t1
	sw $t0, -3228($fp)
	lw $t0, -3228($fp)
	lw $t1, -3220($fp)
	add $t0, $t0, $t1
	sw $t0, -3232($fp)
	lw $t0, -3232($fp)
	lw $t1, 0($t0)
	sw $t1, -3236($fp)
	li $t0, 64396
	sw $t0, -3240($fp)
	lw $t0, -3236($fp)
	lw $t1, -3240($fp)
	mul $t0, $t0, $t1
	sw $t0, -3244($fp)
	addi $sp, $sp, -4
	lw $t0, -3216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3244($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3248($fp)
	addi $sp, $sp, 12
	lw $t0, -3204($fp)
	lw $t1, -3248($fp)
	mul $t0, $t0, $t1
	sw $t0, -3252($fp)
	li $t0, 0
	sw $t0, -3256($fp)
	li $t0, 19720
	sw $t0, -3260($fp)
	lw $t0, -3260($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -3264($fp)
	li $t0, 56601
	sw $t0, -3268($fp)
	lw $t0, -636($fp)
	sw $t0, -3272($fp)
	lw $t0, -3268($fp)
	lw $t1, -3272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3276($fp)
	li $t0, 19224
	sw $t0, -3280($fp)
	lw $t0, -3276($fp)
	lw $t1, -3280($fp)
	mul $t0, $t0, $t1
	sw $t0, -3284($fp)
	addi $sp, $sp, -4
	lw $t0, -3264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3284($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3288($fp)
	addi $sp, $sp, 12
	lw $t1, -3288($fp)
	li $t2, 0
	bne $t1, $t2, label207
	j label206
label206:
	li $t0, 1
	sw $t0, -3256($fp)
label207:
	lw $t0, -3252($fp)
	lw $t1, -3256($fp)
	sub $t0, $t0, $t1
	sw $t0, -3292($fp)
	lw $t0, -696($fp)
	sw $t0, -3296($fp)
	lw $t0, -732($fp)
	sw $t0, -3300($fp)
	li $t0, 10868
	sw $t0, -3304($fp)
	lw $t0, -3300($fp)
	lw $t1, -3304($fp)
	mul $t0, $t0, $t1
	sw $t0, -3308($fp)
	lw $t0, -3296($fp)
	lw $t1, -3308($fp)
	sub $t0, $t0, $t1
	sw $t0, -3312($fp)
	lw $t1, -3292($fp)
	lw $t2, -3312($fp)
	bgt $t1, $t2, label197
	j label198
label197:
	li $t0, 1
	sw $t0, -3108($fp)
label198:
	lw $ra, -4($fp)
	lw $v0, -3108($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label186
label185:
	addi $t0, $fp, -80
	sw $t0, -3316($fp)
	li $t0, 0
	sw $t0, -3320($fp)
	li $t0, 54623
	sw $t0, -3324($fp)
	li $t0, 32469
	sw $t0, -3328($fp)
	lw $t0, -3324($fp)
	lw $t1, -3328($fp)
	add $t0, $t0, $t1
	sw $t0, -3332($fp)
	lw $t1, -3332($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label209
label210:
	lw $t0, -1068($fp)
	sw $t0, -3336($fp)
	lw $t1, -3336($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -3320($fp)
label209:
	li $t0, 4
	lw $t1, -3320($fp)
	mul $t0, $t0, $t1
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	lw $t1, -3316($fp)
	add $t0, $t0, $t1
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	lw $t1, 0($t0)
	sw $t1, -3348($fp)
	li $t0, 0
	lw $t1, -3348($fp)
	sub $t0, $t0, $t1
	sw $t0, -3352($fp)
	lw $ra, -4($fp)
	lw $v0, -3352($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label186:
	j label181
label183:
label138:
	j label127
label129:
	j label124
label126:
	li $t0, 20428
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	sw $t0, -3360($fp)
	lw $t0, -3360($fp)
	sw $t0, -3364($fp)
	li $t0, 0
	sw $t0, -3368($fp)
	li $t0, 0
	sw $t0, -3372($fp)
	lw $t0, -1284($fp)
	sw $t0, -3376($fp)
	lw $t1, -3376($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label215
label214:
	li $t0, 1
	sw $t0, -3372($fp)
label215:
	li $t0, 0
	sw $t0, -3380($fp)
	li $t0, 62899
	sw $t0, -3384($fp)
	lw $t0, -660($fp)
	sw $t0, -3388($fp)
	lw $t0, -3384($fp)
	lw $t1, -3388($fp)
	sub $t0, $t0, $t1
	sw $t0, -3392($fp)
	lw $t1, -3392($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label217
label218:
	li $t0, 34108
	sw $t0, -3396($fp)
	lw $t1, -3396($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label217
label216:
	li $t0, 1
	sw $t0, -3380($fp)
label217:
	addi $sp, $sp, -4
	lw $t0, -3372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3380($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3400($fp)
	addi $sp, $sp, 12
	lw $t1, -3400($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label213
label213:
	lw $t0, 8($fp)
	sw $t0, -3404($fp)
	lw $t0, -720($fp)
	sw $t0, -3408($fp)
	lw $t0, -3404($fp)
	lw $t1, -3408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3412($fp)
	lw $t0, -1320($fp)
	sw $t0, -3416($fp)
	lw $t0, -3412($fp)
	lw $t1, -3416($fp)
	mul $t0, $t0, $t1
	sw $t0, -3420($fp)
	lw $t1, -3420($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label212
label211:
	li $t0, 1
	sw $t0, -3368($fp)
label212:
	li $t0, 36500
	sw $t0, -3460($fp)
	lw $t0, -3460($fp)
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	sw $t0, -3468($fp)
	li $t0, 48688
	sw $t0, -3472($fp)
	addi $t0, $fp, -3456
	sw $t0, -3476($fp)
	li $t0, 0
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
	li $t0, 22213
	sw $t0, -3496($fp)
	addi $t0, $fp, -3456
	sw $t0, -3500($fp)
	li $t0, 1
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
	li $t0, 355
	sw $t0, -3520($fp)
	addi $t0, $fp, -3456
	sw $t0, -3524($fp)
	li $t0, 2
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
	li $t0, 7278
	sw $t0, -3544($fp)
	addi $t0, $fp, -3456
	sw $t0, -3548($fp)
	li $t0, 3
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
	li $t0, 36400
	sw $t0, -3568($fp)
	addi $t0, $fp, -3456
	sw $t0, -3572($fp)
	li $t0, 4
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
	li $t0, 57329
	sw $t0, -3592($fp)
	addi $t0, $fp, -3456
	sw $t0, -3596($fp)
	li $t0, 5
	sw $t0, -3600($fp)
	lw $t0, -3600($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3604($fp)
	lw $t0, -3596($fp)
	lw $t1, -3604($fp)
	add $t0, $t0, $t1
	sw $t0, -3608($fp)
	lw $t0, -3592($fp)
	lw $t1, -3608($fp)
	sw $t0, 0($t1)
	lw $t0, -3608($fp)
	lw $t1, 0($t0)
	sw $t1, -3612($fp)
	li $t0, 35483
	sw $t0, -3616($fp)
	addi $t0, $fp, -3456
	sw $t0, -3620($fp)
	li $t0, 6
	sw $t0, -3624($fp)
	lw $t0, -3624($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3628($fp)
	lw $t0, -3620($fp)
	lw $t1, -3628($fp)
	add $t0, $t0, $t1
	sw $t0, -3632($fp)
	lw $t0, -3616($fp)
	lw $t1, -3632($fp)
	sw $t0, 0($t1)
	lw $t0, -3632($fp)
	lw $t1, 0($t0)
	sw $t1, -3636($fp)
	li $t0, 59281
	sw $t0, -3640($fp)
	addi $t0, $fp, -3456
	sw $t0, -3644($fp)
	li $t0, 7
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
	li $t0, 37374
	sw $t0, -3664($fp)
	addi $t0, $fp, -3456
	sw $t0, -3668($fp)
	li $t0, 8
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
	li $t0, 35497
	sw $t0, -3688($fp)
	li $t0, 14421
	sw $t0, -3692($fp)
	li $t0, 58150
	sw $t0, -3696($fp)
	lw $t0, -3692($fp)
	lw $t1, -3696($fp)
	mul $t0, $t0, $t1
	sw $t0, -3700($fp)
	li $t0, 0
	lw $t1, -3700($fp)
	sub $t0, $t0, $t1
	sw $t0, -3704($fp)
	lw $t1, -3688($fp)
	lw $t2, -3704($fp)
	beq $t1, $t2, label219
	j label220
label219:
	li $t0, 0
	sw $t0, -3708($fp)
	li $t0, 0
	sw $t0, -3712($fp)
	li $t0, 0
	sw $t0, -3716($fp)
	lw $t0, 4($fp)
	sw $t0, -3720($fp)
	li $t0, 3799
	sw $t0, -3724($fp)
	lw $t1, -3720($fp)
	lw $t2, -3724($fp)
	bne $t1, $t2, label226
	j label227
label226:
	li $t0, 1
	sw $t0, -3716($fp)
label227:
	li $t0, 25491
	sw $t0, -3728($fp)
	lw $t0, -708($fp)
	sw $t0, -3732($fp)
	lw $t0, -3728($fp)
	lw $t1, -3732($fp)
	add $t0, $t0, $t1
	sw $t0, -3736($fp)
	li $t0, 56247
	sw $t0, -3740($fp)
	lw $t0, -3736($fp)
	lw $t1, -3740($fp)
	add $t0, $t0, $t1
	sw $t0, -3744($fp)
	lw $t1, -3716($fp)
	lw $t2, -3744($fp)
	beq $t1, $t2, label224
	j label225
label224:
	li $t0, 1
	sw $t0, -3712($fp)
label225:
	lw $t0, -1284($fp)
	sw $t0, -3748($fp)
	lw $t1, -3712($fp)
	lw $t2, -3748($fp)
	beq $t1, $t2, label222
	j label223
label222:
	li $t0, 1
	sw $t0, -3708($fp)
label223:
	lw $ra, -4($fp)
	lw $v0, -3708($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label221
label220:
	addi $t0, $fp, -3456
	sw $t0, -3752($fp)
	li $t0, 6
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
	lw $t0, -696($fp)
	sw $t0, -3772($fp)
	lw $t0, -3768($fp)
	lw $t1, -3772($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3776($fp)
	li $t0, 0
	sw $t0, -3780($fp)
	lw $t0, -720($fp)
	sw $t0, -3784($fp)
	lw $t0, -648($fp)
	sw $t0, -3788($fp)
	lw $t0, -3784($fp)
	lw $t1, -3788($fp)
	mul $t0, $t0, $t1
	sw $t0, -3792($fp)
	lw $t0, -708($fp)
	sw $t0, -3796($fp)
	lw $t1, -3792($fp)
	lw $t2, -3796($fp)
	bne $t1, $t2, label231
	j label232
label231:
	li $t0, 1
	sw $t0, -3780($fp)
label232:
	addi $sp, $sp, -4
	lw $t0, -3776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3780($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3800($fp)
	addi $sp, $sp, 12
	li $t0, 13048
	sw $t0, -3804($fp)
	lw $t0, -3800($fp)
	lw $t1, -3804($fp)
	add $t0, $t0, $t1
	sw $t0, -3808($fp)
	lw $t1, -3808($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label229
label228:
	addi $t0, $fp, -40
	sw $t0, -3812($fp)
	li $t0, 0
	sw $t0, -3816($fp)
	addi $t0, $fp, -68
	sw $t0, -3820($fp)
	lw $t0, -744($fp)
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
	li $t0, 0
	lw $t1, -3836($fp)
	sub $t0, $t0, $t1
	sw $t0, -3840($fp)
	li $t0, 0
	sw $t0, -3844($fp)
	li $t0, 4333
	sw $t0, -3848($fp)
	lw $t0, -744($fp)
	sw $t0, -3852($fp)
	lw $t1, -3848($fp)
	lw $t2, -3852($fp)
	ble $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -3844($fp)
label236:
	lw $t1, -3840($fp)
	lw $t2, -3844($fp)
	beq $t1, $t2, label233
	j label234
label233:
	li $t0, 1
	sw $t0, -3816($fp)
label234:
	li $t0, 4
	lw $t1, -3816($fp)
	mul $t0, $t0, $t1
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	lw $t1, -3812($fp)
	add $t0, $t0, $t1
	sw $t0, -3860($fp)
	lw $t0, -3860($fp)
	lw $t1, 0($t0)
	sw $t1, -3864($fp)
	j label230
label229:
	li $t0, 0
	sw $t0, -3868($fp)
	li $t0, 0
	sw $t0, -3872($fp)
	li $t0, 0
	sw $t0, -3876($fp)
	lw $t0, -1272($fp)
	sw $t0, -3880($fp)
	lw $t1, -3880($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label242
label242:
	li $t0, 1
	sw $t0, -3876($fp)
label243:
	li $t0, 48704
	sw $t0, -3884($fp)
	lw $t1, -3876($fp)
	lw $t2, -3884($fp)
	ble $t1, $t2, label240
	j label241
label240:
	li $t0, 1
	sw $t0, -3872($fp)
label241:
	lw $t0, -888($fp)
	sw $t0, -3888($fp)
	lw $t0, -1272($fp)
	sw $t0, -3892($fp)
	lw $t0, -3888($fp)
	lw $t1, -3892($fp)
	sub $t0, $t0, $t1
	sw $t0, -3896($fp)
	lw $t0, -720($fp)
	sw $t0, -3900($fp)
	lw $t0, -3896($fp)
	lw $t1, -3900($fp)
	sub $t0, $t0, $t1
	sw $t0, -3904($fp)
	addi $sp, $sp, -4
	lw $t0, -3872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3904($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3908($fp)
	addi $sp, $sp, 12
	lw $t1, -3908($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label239
label239:
	li $t0, 0
	sw $t0, -3912($fp)
	li $t0, 31629
	sw $t0, -3916($fp)
	lw $t1, -3916($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label244
label244:
	li $t0, 1
	sw $t0, -3912($fp)
label245:
	li $t0, 0
	sw $t0, -3920($fp)
	li $t0, 11909
	sw $t0, -3924($fp)
	li $t0, 60934
	sw $t0, -3928($fp)
	lw $t1, -3924($fp)
	lw $t2, -3928($fp)
	ble $t1, $t2, label248
	j label247
label248:
	li $t0, 2392
	sw $t0, -3932($fp)
	lw $t1, -3932($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label247
label246:
	li $t0, 1
	sw $t0, -3920($fp)
label247:
	addi $sp, $sp, -4
	lw $t0, -3912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3920($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3936($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -3940($fp)
	lw $t0, -780($fp)
	sw $t0, -3944($fp)
	lw $t1, -3944($fp)
	li $t2, 0
	bne $t1, $t2, label250
	j label249
label249:
	li $t0, 1
	sw $t0, -3940($fp)
label250:
	lw $t0, -3936($fp)
	lw $t1, -3940($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3948($fp)
	lw $t1, -3948($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label238
label237:
	li $t0, 1
	sw $t0, -3868($fp)
label238:
label230:
label221:
label251:
	addi $t0, $fp, -116
	sw $t0, -3952($fp)
	li $t0, 3
	sw $t0, -3956($fp)
	li $t0, 4
	lw $t1, -3956($fp)
	mul $t0, $t0, $t1
	sw $t0, -3960($fp)
	lw $t0, -3960($fp)
	lw $t1, -3952($fp)
	add $t0, $t0, $t1
	sw $t0, -3964($fp)
	lw $t0, -3964($fp)
	lw $t1, 0($t0)
	sw $t1, -3968($fp)
	addi $t0, $fp, -40
	sw $t0, -3972($fp)
	li $t0, 6
	sw $t0, -3976($fp)
	li $t0, 4
	lw $t1, -3976($fp)
	mul $t0, $t0, $t1
	sw $t0, -3980($fp)
	lw $t0, -3980($fp)
	lw $t1, -3972($fp)
	add $t0, $t0, $t1
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	lw $t1, 0($t0)
	sw $t1, -3988($fp)
	lw $t0, -3968($fp)
	lw $t1, -3988($fp)
	sub $t0, $t0, $t1
	sw $t0, -3992($fp)
	lw $t0, -660($fp)
	sw $t0, -3996($fp)
	li $t0, 54378
	sw $t0, -4000($fp)
	lw $t0, -3996($fp)
	lw $t1, -4000($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4004($fp)
	addi $t0, $fp, -148
	sw $t0, -4008($fp)
	lw $t0, -708($fp)
	sw $t0, -4012($fp)
	li $t0, 4
	lw $t1, -4012($fp)
	mul $t0, $t0, $t1
	sw $t0, -4016($fp)
	lw $t0, -4016($fp)
	lw $t1, -4008($fp)
	add $t0, $t0, $t1
	sw $t0, -4020($fp)
	lw $t0, -4020($fp)
	lw $t1, 0($t0)
	sw $t1, -4024($fp)
	lw $t0, -4004($fp)
	lw $t1, -4024($fp)
	mul $t0, $t0, $t1
	sw $t0, -4028($fp)
	li $t0, 0
	lw $t1, -4028($fp)
	sub $t0, $t0, $t1
	sw $t0, -4032($fp)
	lw $t1, -3992($fp)
	lw $t2, -4032($fp)
	bgt $t1, $t2, label252
	j label253
label252:
	li $t0, 32671
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	sw $t0, -4044($fp)
	li $t0, 0
	sw $t0, -4048($fp)
	lw $t0, -1068($fp)
	sw $t0, -4052($fp)
	li $t0, 0
	lw $t1, -4052($fp)
	sub $t0, $t0, $t1
	sw $t0, -4056($fp)
	lw $t1, -4056($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label254
label254:
	li $t0, 1
	sw $t0, -4048($fp)
label255:
	lw $t0, -708($fp)
	sw $t0, -4060($fp)
	li $t0, 63549
	sw $t0, -4064($fp)
	lw $t0, -4060($fp)
	lw $t1, -4064($fp)
	mul $t0, $t0, $t1
	sw $t0, -4068($fp)
	li $t0, 0
	lw $t1, -4068($fp)
	sub $t0, $t0, $t1
	sw $t0, -4072($fp)
	li $t0, 37531
	sw $t0, -4076($fp)
	li $t0, 54884
	sw $t0, -4080($fp)
	lw $t0, -4076($fp)
	lw $t1, -4080($fp)
	sub $t0, $t0, $t1
	sw $t0, -4084($fp)
	li $t0, 0
	sw $t0, -4088($fp)
	li $t0, 63194
	sw $t0, -4092($fp)
	lw $t0, -888($fp)
	sw $t0, -4096($fp)
	lw $t0, -4092($fp)
	lw $t1, -4096($fp)
	mul $t0, $t0, $t1
	sw $t0, -4100($fp)
	lw $t1, -4100($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label258
label258:
	lw $t0, -3360($fp)
	sw $t0, -4104($fp)
	lw $t1, -4104($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label257
label256:
	li $t0, 1
	sw $t0, -4088($fp)
label257:
	addi $sp, $sp, -4
	lw $t0, -4084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4088($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4108($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -4072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4108($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4112($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -116
	sw $t0, -4116($fp)
	lw $t0, -4040($fp)
	sw $t0, -4120($fp)
	li $t0, 4
	lw $t1, -4120($fp)
	mul $t0, $t0, $t1
	sw $t0, -4124($fp)
	lw $t0, -4124($fp)
	lw $t1, -4116($fp)
	add $t0, $t0, $t1
	sw $t0, -4128($fp)
	lw $t0, -4128($fp)
	lw $t1, 0($t0)
	sw $t1, -4132($fp)
	lw $t0, -4112($fp)
	lw $t1, -4132($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4136($fp)
	li $t0, 0
	sw $t0, -4140($fp)
	lw $t0, -696($fp)
	sw $t0, -4144($fp)
	li $t0, 0
	lw $t1, -4144($fp)
	sub $t0, $t0, $t1
	sw $t0, -4148($fp)
	lw $t1, -4148($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label259
label259:
	li $t0, 1
	sw $t0, -4140($fp)
label260:
	li $t0, 0
	lw $t1, -4140($fp)
	sub $t0, $t0, $t1
	sw $t0, -4152($fp)
	lw $t0, -4136($fp)
	lw $t1, -4152($fp)
	mul $t0, $t0, $t1
	sw $t0, -4156($fp)
	j label251
label253:
	lw $t0, -3464($fp)
	sw $t0, -4160($fp)
	lw $t0, -4160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3456
	sw $t0, -4164($fp)
	li $t0, 0
	sw $t0, -4168($fp)
	li $t0, 4
	lw $t1, -4168($fp)
	mul $t0, $t0, $t1
	sw $t0, -4172($fp)
	lw $t0, -4172($fp)
	lw $t1, -4164($fp)
	add $t0, $t0, $t1
	sw $t0, -4176($fp)
	lw $t0, -4176($fp)
	lw $t1, 0($t0)
	sw $t1, -4180($fp)
	lw $t0, -4180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3456
	sw $t0, -4184($fp)
	li $t0, 1
	sw $t0, -4188($fp)
	li $t0, 4
	lw $t1, -4188($fp)
	mul $t0, $t0, $t1
	sw $t0, -4192($fp)
	lw $t0, -4192($fp)
	lw $t1, -4184($fp)
	add $t0, $t0, $t1
	sw $t0, -4196($fp)
	lw $t0, -4196($fp)
	lw $t1, 0($t0)
	sw $t1, -4200($fp)
	lw $t0, -4200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3456
	sw $t0, -4204($fp)
	li $t0, 2
	sw $t0, -4208($fp)
	li $t0, 4
	lw $t1, -4208($fp)
	mul $t0, $t0, $t1
	sw $t0, -4212($fp)
	lw $t0, -4212($fp)
	lw $t1, -4204($fp)
	add $t0, $t0, $t1
	sw $t0, -4216($fp)
	lw $t0, -4216($fp)
	lw $t1, 0($t0)
	sw $t1, -4220($fp)
	lw $t0, -4220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3456
	sw $t0, -4224($fp)
	li $t0, 3
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
	lw $t0, -4240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3456
	sw $t0, -4244($fp)
	li $t0, 4
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
	lw $t0, -4260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3456
	sw $t0, -4264($fp)
	li $t0, 5
	sw $t0, -4268($fp)
	li $t0, 4
	lw $t1, -4268($fp)
	mul $t0, $t0, $t1
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	lw $t1, -4264($fp)
	add $t0, $t0, $t1
	sw $t0, -4276($fp)
	lw $t0, -4276($fp)
	lw $t1, 0($t0)
	sw $t1, -4280($fp)
	lw $t0, -4280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3456
	sw $t0, -4284($fp)
	li $t0, 6
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
	addi $t0, $fp, -3456
	sw $t0, -4304($fp)
	li $t0, 7
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
	addi $t0, $fp, -3456
	sw $t0, -4324($fp)
	li $t0, 8
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
	li $t0, 0
	sw $t0, -4344($fp)
	li $t0, 55342
	sw $t0, -4348($fp)
	lw $t1, -4348($fp)
	li $t2, 0
	bne $t1, $t2, label262
	j label261
label261:
	li $t0, 1
	sw $t0, -4344($fp)
label262:
	lw $t0, -3464($fp)
	sw $t0, -4352($fp)
	lw $t0, -4344($fp)
	lw $t1, -4352($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4356($fp)
	li $t0, 0
	sw $t0, -4360($fp)
	lw $t0, -708($fp)
	sw $t0, -4364($fp)
	lw $t1, -4364($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label265
label265:
	li $t0, 25749
	sw $t0, -4368($fp)
	lw $t1, -4368($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label264
label263:
	li $t0, 1
	sw $t0, -4360($fp)
label264:
	addi $sp, $sp, -4
	lw $t0, -4356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4360($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4372($fp)
	addi $sp, $sp, 12
	lw $t0, -1284($fp)
	sw $t0, -4376($fp)
	li $t0, 44809
	sw $t0, -4380($fp)
	lw $t0, -4376($fp)
	lw $t1, -4380($fp)
	add $t0, $t0, $t1
	sw $t0, -4384($fp)
	addi $sp, $sp, -4
	lw $t0, -4372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4384($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4388($fp)
	addi $sp, $sp, 12
	li $t0, 14756
	sw $t0, -4392($fp)
	lw $t0, -4388($fp)
	lw $t1, -4392($fp)
	mul $t0, $t0, $t1
	sw $t0, -4396($fp)
	lw $ra, -4($fp)
	lw $v0, -4396($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -4400($fp)
	li $t0, 0
	sw $t0, -4404($fp)
	lw $t0, -804($fp)
	sw $t0, -4408($fp)
	li $t0, 27181
	sw $t0, -4412($fp)
	lw $t1, -4408($fp)
	lw $t2, -4412($fp)
	bge $t1, $t2, label271
	j label272
label271:
	li $t0, 1
	sw $t0, -4404($fp)
label272:
	lw $t0, 8($fp)
	sw $t0, -4416($fp)
	lw $t1, -4404($fp)
	lw $t2, -4416($fp)
	beq $t1, $t2, label269
	j label270
label269:
	li $t0, 1
	sw $t0, -4400($fp)
label270:
	li $t0, 19494
	sw $t0, -4420($fp)
	lw $t0, -792($fp)
	sw $t0, -4424($fp)
	lw $t0, -4420($fp)
	lw $t1, -4424($fp)
	sub $t0, $t0, $t1
	sw $t0, -4428($fp)
	lw $t0, -720($fp)
	sw $t0, -4432($fp)
	lw $t0, -4428($fp)
	lw $t1, -4432($fp)
	sub $t0, $t0, $t1
	sw $t0, -4436($fp)
	addi $sp, $sp, -4
	lw $t0, -4400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4436($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4440($fp)
	addi $sp, $sp, 12
	li $t0, 50253
	sw $t0, -4444($fp)
	lw $t1, -4440($fp)
	lw $t2, -4444($fp)
	beq $t1, $t2, label266
	j label267
label266:
label273:
	li $t0, 0
	sw $t0, -4448($fp)
	li $t0, 0
	sw $t0, -4452($fp)
	li $t0, 19795
	sw $t0, -4456($fp)
	lw $t1, -4456($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label278
label278:
	li $t0, 1
	sw $t0, -4452($fp)
label279:
	li $t0, 0
	lw $t1, -4452($fp)
	sub $t0, $t0, $t1
	sw $t0, -4460($fp)
	lw $t0, -1056($fp)
	sw $t0, -4464($fp)
	lw $t0, -4464($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -4468($fp)
	addi $sp, $sp, -4
	lw $t0, -4460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4468($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4472($fp)
	addi $sp, $sp, 12
	lw $t0, -744($fp)
	sw $t0, -4476($fp)
	lw $t1, -4472($fp)
	lw $t2, -4476($fp)
	beq $t1, $t2, label276
	j label277
label276:
	li $t0, 1
	sw $t0, -4448($fp)
label277:
	li $t0, 33915
	sw $t0, -4480($fp)
	lw $t0, -4480($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -4484($fp)
	addi $sp, $sp, -4
	lw $t0, -4448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4484($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4488($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -4492($fp)
	li $t0, 0
	sw $t0, -4496($fp)
	lw $t0, -804($fp)
	sw $t0, -4500($fp)
	li $t0, 59406
	sw $t0, -4504($fp)
	lw $t1, -4500($fp)
	lw $t2, -4504($fp)
	bgt $t1, $t2, label282
	j label284
label284:
	lw $t0, -636($fp)
	sw $t0, -4508($fp)
	lw $t1, -4508($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -4496($fp)
label283:
	li $t0, 0
	sw $t0, -4512($fp)
	li $t0, 54052
	sw $t0, -4516($fp)
	lw $t1, -4516($fp)
	li $t2, 0
	bne $t1, $t2, label285
	j label286
label285:
	li $t0, 1
	sw $t0, -4512($fp)
label286:
	addi $sp, $sp, -4
	lw $t0, -4496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4512($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4520($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -4520($fp)
	sub $t0, $t0, $t1
	sw $t0, -4524($fp)
	lw $t1, -4524($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label280
label280:
	li $t0, 1
	sw $t0, -4492($fp)
label281:
	lw $t0, -4488($fp)
	lw $t1, -4492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4528($fp)
	lw $t1, -4528($fp)
	li $t2, 0
	bne $t1, $t2, label274
	j label275
label274:
	li $t0, 4886
	sw $t0, -4532($fp)
	li $t0, 23554
	sw $t0, -4536($fp)
	lw $t0, -4532($fp)
	lw $t1, -4536($fp)
	add $t0, $t0, $t1
	sw $t0, -4540($fp)
	li $t0, 6795
	sw $t0, -4544($fp)
	lw $t0, -4540($fp)
	lw $t1, -4544($fp)
	sub $t0, $t0, $t1
	sw $t0, -4548($fp)
	li $t0, 0
	sw $t0, -4552($fp)
	li $t0, 10506
	sw $t0, -4556($fp)
	li $t0, 0
	lw $t1, -4556($fp)
	sub $t0, $t0, $t1
	sw $t0, -4560($fp)
	lw $t1, -4560($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label288
label289:
	li $t0, 2462
	sw $t0, -4564($fp)
	lw $t1, -4564($fp)
	li $t2, 0
	bne $t1, $t2, label287
	j label288
label287:
	li $t0, 1
	sw $t0, -4552($fp)
label288:
	addi $sp, $sp, -4
	lw $t0, -4548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4552($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4568($fp)
	addi $sp, $sp, 12
	j label273
label275:
	j label268
label267:
	li $t0, 0
	sw $t0, -4572($fp)
	li $t0, 0
	sw $t0, -4576($fp)
	li $t0, 53590
	sw $t0, -4580($fp)
	lw $t1, -4580($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label293
label293:
	li $t0, 1
	sw $t0, -4576($fp)
label294:
	li $t0, 0
	lw $t1, -4576($fp)
	sub $t0, $t0, $t1
	sw $t0, -4584($fp)
	lw $t1, -4584($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label292
label292:
	li $t0, 35463
	sw $t0, -4588($fp)
	lw $t1, -4588($fp)
	li $t2, 0
	bne $t1, $t2, label295
	j label291
label295:
	addi $t0, $fp, -80
	sw $t0, -4592($fp)
	lw $t0, -744($fp)
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
	lw $t1, -4608($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label291
label290:
	li $t0, 1
	sw $t0, -4572($fp)
label291:
	lw $ra, -4($fp)
	lw $v0, -4572($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label268:
label296:
	addi $t0, $fp, -148
	sw $t0, -4612($fp)
	li $t0, 6
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
	addi $t0, $fp, -92
	sw $t0, -4632($fp)
	lw $t0, -3360($fp)
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
	lw $t0, -756($fp)
	sw $t0, -4652($fp)
	addi $sp, $sp, -4
	lw $t0, -4648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4652($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4656($fp)
	addi $sp, $sp, 12
	lw $t0, -4628($fp)
	lw $t1, -4656($fp)
	sub $t0, $t0, $t1
	sw $t0, -4660($fp)
	lw $t1, -4660($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label298
label297:
	li $t0, 8459
	sw $t0, -4664($fp)
	li $t0, 0
	lw $t1, -4664($fp)
	sub $t0, $t0, $t1
	sw $t0, -4668($fp)
	li $t0, 0
	lw $t1, -4668($fp)
	sub $t0, $t0, $t1
	sw $t0, -4672($fp)
	li $t0, 0
	sw $t0, -4676($fp)
	li $t0, 1556
	sw $t0, -4680($fp)
	lw $t0, -696($fp)
	sw $t0, -4684($fp)
	lw $t1, -4680($fp)
	lw $t2, -4684($fp)
	beq $t1, $t2, label301
	j label300
label301:
	lw $t0, -648($fp)
	sw $t0, -4688($fp)
	lw $t1, -4688($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label300
label299:
	li $t0, 1
	sw $t0, -4676($fp)
label300:
	addi $sp, $sp, -4
	lw $t0, -4672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4676($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4692($fp)
	addi $sp, $sp, 12
	j label296
label298:
	lw $t0, -3360($fp)
	sw $t0, -4696($fp)
	lw $t0, -4696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4700($fp)
	li $t0, 47461
	sw $t0, -4704($fp)
	lw $t0, -756($fp)
	sw $t0, -4708($fp)
	li $t0, 119
	sw $t0, -4712($fp)
	lw $t0, -4708($fp)
	lw $t1, -4712($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4716($fp)
	lw $t0, -648($fp)
	sw $t0, -4720($fp)
	lw $t0, -4716($fp)
	lw $t1, -4720($fp)
	add $t0, $t0, $t1
	sw $t0, -4724($fp)
	lw $t1, -4704($fp)
	lw $t2, -4724($fp)
	blt $t1, $t2, label302
	j label303
label302:
	li $t0, 1
	sw $t0, -4700($fp)
label303:
	lw $ra, -4($fp)
	lw $v0, -4700($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -40
	sw $t0, -4728($fp)
	li $t0, 0
	sw $t0, -4732($fp)
	li $t0, 4
	lw $t1, -4732($fp)
	mul $t0, $t0, $t1
	sw $t0, -4736($fp)
	lw $t0, -4736($fp)
	lw $t1, -4728($fp)
	add $t0, $t0, $t1
	sw $t0, -4740($fp)
	lw $t0, -4740($fp)
	lw $t1, 0($t0)
	sw $t1, -4744($fp)
	lw $t0, -4744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4748($fp)
	li $t0, 1
	sw $t0, -4752($fp)
	li $t0, 4
	lw $t1, -4752($fp)
	mul $t0, $t0, $t1
	sw $t0, -4756($fp)
	lw $t0, -4756($fp)
	lw $t1, -4748($fp)
	add $t0, $t0, $t1
	sw $t0, -4760($fp)
	lw $t0, -4760($fp)
	lw $t1, 0($t0)
	sw $t1, -4764($fp)
	lw $t0, -4764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4768($fp)
	li $t0, 2
	sw $t0, -4772($fp)
	li $t0, 4
	lw $t1, -4772($fp)
	mul $t0, $t0, $t1
	sw $t0, -4776($fp)
	lw $t0, -4776($fp)
	lw $t1, -4768($fp)
	add $t0, $t0, $t1
	sw $t0, -4780($fp)
	lw $t0, -4780($fp)
	lw $t1, 0($t0)
	sw $t1, -4784($fp)
	lw $t0, -4784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4788($fp)
	li $t0, 3
	sw $t0, -4792($fp)
	li $t0, 4
	lw $t1, -4792($fp)
	mul $t0, $t0, $t1
	sw $t0, -4796($fp)
	lw $t0, -4796($fp)
	lw $t1, -4788($fp)
	add $t0, $t0, $t1
	sw $t0, -4800($fp)
	lw $t0, -4800($fp)
	lw $t1, 0($t0)
	sw $t1, -4804($fp)
	lw $t0, -4804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4808($fp)
	li $t0, 4
	sw $t0, -4812($fp)
	li $t0, 4
	lw $t1, -4812($fp)
	mul $t0, $t0, $t1
	sw $t0, -4816($fp)
	lw $t0, -4816($fp)
	lw $t1, -4808($fp)
	add $t0, $t0, $t1
	sw $t0, -4820($fp)
	lw $t0, -4820($fp)
	lw $t1, 0($t0)
	sw $t1, -4824($fp)
	lw $t0, -4824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4828($fp)
	li $t0, 5
	sw $t0, -4832($fp)
	li $t0, 4
	lw $t1, -4832($fp)
	mul $t0, $t0, $t1
	sw $t0, -4836($fp)
	lw $t0, -4836($fp)
	lw $t1, -4828($fp)
	add $t0, $t0, $t1
	sw $t0, -4840($fp)
	lw $t0, -4840($fp)
	lw $t1, 0($t0)
	sw $t1, -4844($fp)
	lw $t0, -4844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4848($fp)
	li $t0, 6
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
	li $t0, 7
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
	li $t0, 8
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
	addi $t0, $fp, -68
	sw $t0, -4908($fp)
	li $t0, 0
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
	addi $t0, $fp, -68
	sw $t0, -4928($fp)
	li $t0, 1
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
	addi $t0, $fp, -68
	sw $t0, -4948($fp)
	li $t0, 2
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
	addi $t0, $fp, -68
	sw $t0, -4968($fp)
	li $t0, 3
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
	addi $t0, $fp, -68
	sw $t0, -4988($fp)
	li $t0, 4
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
	addi $t0, $fp, -68
	sw $t0, -5008($fp)
	li $t0, 5
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
	addi $t0, $fp, -68
	sw $t0, -5028($fp)
	li $t0, 6
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
	lw $t0, -5044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5048($fp)
	li $t0, 0
	sw $t0, -5052($fp)
	li $t0, 4
	lw $t1, -5052($fp)
	mul $t0, $t0, $t1
	sw $t0, -5056($fp)
	lw $t0, -5056($fp)
	lw $t1, -5048($fp)
	add $t0, $t0, $t1
	sw $t0, -5060($fp)
	lw $t0, -5060($fp)
	lw $t1, 0($t0)
	sw $t1, -5064($fp)
	lw $t0, -5064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5068($fp)
	li $t0, 1
	sw $t0, -5072($fp)
	li $t0, 4
	lw $t1, -5072($fp)
	mul $t0, $t0, $t1
	sw $t0, -5076($fp)
	lw $t0, -5076($fp)
	lw $t1, -5068($fp)
	add $t0, $t0, $t1
	sw $t0, -5080($fp)
	lw $t0, -5080($fp)
	lw $t1, 0($t0)
	sw $t1, -5084($fp)
	lw $t0, -5084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -5088($fp)
	li $t0, 2
	sw $t0, -5092($fp)
	li $t0, 4
	lw $t1, -5092($fp)
	mul $t0, $t0, $t1
	sw $t0, -5096($fp)
	lw $t0, -5096($fp)
	lw $t1, -5088($fp)
	add $t0, $t0, $t1
	sw $t0, -5100($fp)
	lw $t0, -5100($fp)
	lw $t1, 0($t0)
	sw $t1, -5104($fp)
	lw $t0, -5104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -5108($fp)
	lw $t0, -5108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -5112($fp)
	lw $t0, -5112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -5116($fp)
	lw $t0, -5116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -5120($fp)
	lw $t0, -5120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -5124($fp)
	lw $t0, -5124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -684($fp)
	sw $t0, -5128($fp)
	lw $t0, -5128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -696($fp)
	sw $t0, -5132($fp)
	lw $t0, -5132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -5136($fp)
	lw $t0, -5136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -720($fp)
	sw $t0, -5140($fp)
	lw $t0, -5140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -732($fp)
	sw $t0, -5144($fp)
	lw $t0, -5144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -744($fp)
	sw $t0, -5148($fp)
	lw $t0, -5148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -756($fp)
	sw $t0, -5152($fp)
	lw $t0, -5152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -768($fp)
	sw $t0, -5156($fp)
	lw $t0, -5156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -780($fp)
	sw $t0, -5160($fp)
	lw $t0, -5160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -792($fp)
	sw $t0, -5164($fp)
	lw $t0, -5164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -804($fp)
	sw $t0, -5168($fp)
	lw $t0, -5168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -5172($fp)
	li $t0, 0
	sw $t0, -5176($fp)
	li $t0, 4
	lw $t1, -5176($fp)
	mul $t0, $t0, $t1
	sw $t0, -5180($fp)
	lw $t0, -5180($fp)
	lw $t1, -5172($fp)
	add $t0, $t0, $t1
	sw $t0, -5184($fp)
	lw $t0, -5184($fp)
	lw $t1, 0($t0)
	sw $t1, -5188($fp)
	lw $t0, -5188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -5192($fp)
	li $t0, 1
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
	li $t0, 2
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
	lw $t0, -888($fp)
	sw $t0, -5232($fp)
	lw $t0, -5232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -5236($fp)
	li $t0, 0
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
	lw $t0, -5252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -5256($fp)
	li $t0, 1
	sw $t0, -5260($fp)
	li $t0, 4
	lw $t1, -5260($fp)
	mul $t0, $t0, $t1
	sw $t0, -5264($fp)
	lw $t0, -5264($fp)
	lw $t1, -5256($fp)
	add $t0, $t0, $t1
	sw $t0, -5268($fp)
	lw $t0, -5268($fp)
	lw $t1, 0($t0)
	sw $t1, -5272($fp)
	lw $t0, -5272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -5276($fp)
	li $t0, 2
	sw $t0, -5280($fp)
	li $t0, 4
	lw $t1, -5280($fp)
	mul $t0, $t0, $t1
	sw $t0, -5284($fp)
	lw $t0, -5284($fp)
	lw $t1, -5276($fp)
	add $t0, $t0, $t1
	sw $t0, -5288($fp)
	lw $t0, -5288($fp)
	lw $t1, 0($t0)
	sw $t1, -5292($fp)
	lw $t0, -5292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -5296($fp)
	li $t0, 3
	sw $t0, -5300($fp)
	li $t0, 4
	lw $t1, -5300($fp)
	mul $t0, $t0, $t1
	sw $t0, -5304($fp)
	lw $t0, -5304($fp)
	lw $t1, -5296($fp)
	add $t0, $t0, $t1
	sw $t0, -5308($fp)
	lw $t0, -5308($fp)
	lw $t1, 0($t0)
	sw $t1, -5312($fp)
	lw $t0, -5312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -5316($fp)
	li $t0, 4
	sw $t0, -5320($fp)
	li $t0, 4
	lw $t1, -5320($fp)
	mul $t0, $t0, $t1
	sw $t0, -5324($fp)
	lw $t0, -5324($fp)
	lw $t1, -5316($fp)
	add $t0, $t0, $t1
	sw $t0, -5328($fp)
	lw $t0, -5328($fp)
	lw $t1, 0($t0)
	sw $t1, -5332($fp)
	lw $t0, -5332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -5336($fp)
	li $t0, 5
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
	lw $t0, -5352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1044($fp)
	sw $t0, -5356($fp)
	lw $t0, -5356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1056($fp)
	sw $t0, -5360($fp)
	lw $t0, -5360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1068($fp)
	sw $t0, -5364($fp)
	lw $t0, -5364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -5368($fp)
	li $t0, 0
	sw $t0, -5372($fp)
	li $t0, 4
	lw $t1, -5372($fp)
	mul $t0, $t0, $t1
	sw $t0, -5376($fp)
	lw $t0, -5376($fp)
	lw $t1, -5368($fp)
	add $t0, $t0, $t1
	sw $t0, -5380($fp)
	lw $t0, -5380($fp)
	lw $t1, 0($t0)
	sw $t1, -5384($fp)
	lw $t0, -5384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -5388($fp)
	li $t0, 1
	sw $t0, -5392($fp)
	li $t0, 4
	lw $t1, -5392($fp)
	mul $t0, $t0, $t1
	sw $t0, -5396($fp)
	lw $t0, -5396($fp)
	lw $t1, -5388($fp)
	add $t0, $t0, $t1
	sw $t0, -5400($fp)
	lw $t0, -5400($fp)
	lw $t1, 0($t0)
	sw $t1, -5404($fp)
	lw $t0, -5404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -5408($fp)
	li $t0, 2
	sw $t0, -5412($fp)
	li $t0, 4
	lw $t1, -5412($fp)
	mul $t0, $t0, $t1
	sw $t0, -5416($fp)
	lw $t0, -5416($fp)
	lw $t1, -5408($fp)
	add $t0, $t0, $t1
	sw $t0, -5420($fp)
	lw $t0, -5420($fp)
	lw $t1, 0($t0)
	sw $t1, -5424($fp)
	lw $t0, -5424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -5428($fp)
	li $t0, 3
	sw $t0, -5432($fp)
	li $t0, 4
	lw $t1, -5432($fp)
	mul $t0, $t0, $t1
	sw $t0, -5436($fp)
	lw $t0, -5436($fp)
	lw $t1, -5428($fp)
	add $t0, $t0, $t1
	sw $t0, -5440($fp)
	lw $t0, -5440($fp)
	lw $t1, 0($t0)
	sw $t1, -5444($fp)
	lw $t0, -5444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -5448($fp)
	li $t0, 4
	sw $t0, -5452($fp)
	li $t0, 4
	lw $t1, -5452($fp)
	mul $t0, $t0, $t1
	sw $t0, -5456($fp)
	lw $t0, -5456($fp)
	lw $t1, -5448($fp)
	add $t0, $t0, $t1
	sw $t0, -5460($fp)
	lw $t0, -5460($fp)
	lw $t1, 0($t0)
	sw $t1, -5464($fp)
	lw $t0, -5464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -5468($fp)
	li $t0, 5
	sw $t0, -5472($fp)
	li $t0, 4
	lw $t1, -5472($fp)
	mul $t0, $t0, $t1
	sw $t0, -5476($fp)
	lw $t0, -5476($fp)
	lw $t1, -5468($fp)
	add $t0, $t0, $t1
	sw $t0, -5480($fp)
	lw $t0, -5480($fp)
	lw $t1, 0($t0)
	sw $t1, -5484($fp)
	lw $t0, -5484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -5488($fp)
	li $t0, 6
	sw $t0, -5492($fp)
	li $t0, 4
	lw $t1, -5492($fp)
	mul $t0, $t0, $t1
	sw $t0, -5496($fp)
	lw $t0, -5496($fp)
	lw $t1, -5488($fp)
	add $t0, $t0, $t1
	sw $t0, -5500($fp)
	lw $t0, -5500($fp)
	lw $t1, 0($t0)
	sw $t1, -5504($fp)
	lw $t0, -5504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -5508($fp)
	li $t0, 7
	sw $t0, -5512($fp)
	li $t0, 4
	lw $t1, -5512($fp)
	mul $t0, $t0, $t1
	sw $t0, -5516($fp)
	lw $t0, -5516($fp)
	lw $t1, -5508($fp)
	add $t0, $t0, $t1
	sw $t0, -5520($fp)
	lw $t0, -5520($fp)
	lw $t1, 0($t0)
	sw $t1, -5524($fp)
	lw $t0, -5524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1272($fp)
	sw $t0, -5528($fp)
	lw $t0, -5528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1284($fp)
	sw $t0, -5532($fp)
	lw $t0, -5532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1296($fp)
	sw $t0, -5536($fp)
	lw $t0, -5536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1308($fp)
	sw $t0, -5540($fp)
	lw $t0, -5540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1320($fp)
	sw $t0, -5544($fp)
	lw $t0, -5544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
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
	addi $t0, $fp, -160
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
	addi $t0, $fp, -160
	sw $t0, -5588($fp)
	li $t0, 2
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
	lw $t0, -1404($fp)
	sw $t0, -5608($fp)
	lw $t0, -5608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5612($fp)
	addi $t0, $fp, -116
	sw $t0, -5616($fp)
	li $t0, 0
	sw $t0, -5620($fp)
	li $t0, 35153
	sw $t0, -5624($fp)
	lw $t1, -5624($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label307
label308:
	li $t0, 36304
	sw $t0, -5628($fp)
	lw $t1, -5628($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label307
label306:
	li $t0, 1
	sw $t0, -5620($fp)
label307:
	li $t0, 4
	lw $t1, -5620($fp)
	mul $t0, $t0, $t1
	sw $t0, -5632($fp)
	lw $t0, -5632($fp)
	lw $t1, -5616($fp)
	add $t0, $t0, $t1
	sw $t0, -5636($fp)
	lw $t0, -5636($fp)
	lw $t1, 0($t0)
	sw $t1, -5640($fp)
	lw $t1, -5640($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label304
label304:
	li $t0, 1
	sw $t0, -5612($fp)
label305:
	li $t0, 0
	lw $t1, -5612($fp)
	sub $t0, $t0, $t1
	sw $t0, -5644($fp)
	lw $ra, -4($fp)
	lw $v0, -5644($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -3044
	li $t0, 32790
	sw $t0, -120($fp)
	addi $t0, $fp, -16
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
	li $t0, 32811
	sw $t0, -144($fp)
	addi $t0, $fp, -16
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
	li $t0, 8299
	sw $t0, -168($fp)
	addi $t0, $fp, -16
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
	li $t0, 22138
	sw $t0, -192($fp)
	addi $t0, $fp, -32
	sw $t0, -196($fp)
	li $t0, 0
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
	li $t0, 30825
	sw $t0, -216($fp)
	addi $t0, $fp, -32
	sw $t0, -220($fp)
	li $t0, 1
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
	li $t0, 53108
	sw $t0, -240($fp)
	addi $t0, $fp, -32
	sw $t0, -244($fp)
	li $t0, 2
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
	li $t0, 47887
	sw $t0, -264($fp)
	addi $t0, $fp, -32
	sw $t0, -268($fp)
	li $t0, 3
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
	li $t0, 20631
	sw $t0, -288($fp)
	addi $t0, $fp, -60
	sw $t0, -292($fp)
	li $t0, 0
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
	li $t0, 2328
	sw $t0, -312($fp)
	addi $t0, $fp, -60
	sw $t0, -316($fp)
	li $t0, 1
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
	li $t0, 1845
	sw $t0, -336($fp)
	addi $t0, $fp, -60
	sw $t0, -340($fp)
	li $t0, 2
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
	li $t0, 47812
	sw $t0, -360($fp)
	addi $t0, $fp, -60
	sw $t0, -364($fp)
	li $t0, 3
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
	li $t0, 52582
	sw $t0, -384($fp)
	addi $t0, $fp, -60
	sw $t0, -388($fp)
	li $t0, 4
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
	li $t0, 35760
	sw $t0, -408($fp)
	addi $t0, $fp, -60
	sw $t0, -412($fp)
	li $t0, 5
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
	li $t0, 2071
	sw $t0, -432($fp)
	addi $t0, $fp, -60
	sw $t0, -436($fp)
	li $t0, 6
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
	li $t0, 41098
	sw $t0, -456($fp)
	addi $t0, $fp, -68
	sw $t0, -460($fp)
	li $t0, 0
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
	li $t0, 29631
	sw $t0, -480($fp)
	addi $t0, $fp, -68
	sw $t0, -484($fp)
	li $t0, 1
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
	li $t0, 12577
	sw $t0, -504($fp)
	addi $t0, $fp, -100
	sw $t0, -508($fp)
	li $t0, 0
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
	li $t0, 43561
	sw $t0, -528($fp)
	addi $t0, $fp, -100
	sw $t0, -532($fp)
	li $t0, 1
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
	li $t0, 34517
	sw $t0, -552($fp)
	addi $t0, $fp, -100
	sw $t0, -556($fp)
	li $t0, 2
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
	li $t0, 36132
	sw $t0, -576($fp)
	addi $t0, $fp, -100
	sw $t0, -580($fp)
	li $t0, 3
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
	li $t0, 50356
	sw $t0, -600($fp)
	addi $t0, $fp, -100
	sw $t0, -604($fp)
	li $t0, 4
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
	li $t0, 22572
	sw $t0, -624($fp)
	addi $t0, $fp, -100
	sw $t0, -628($fp)
	li $t0, 5
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -636($fp)
	lw $t0, -628($fp)
	lw $t1, -636($fp)
	add $t0, $t0, $t1
	sw $t0, -640($fp)
	lw $t0, -624($fp)
	lw $t1, -640($fp)
	sw $t0, 0($t1)
	lw $t0, -640($fp)
	lw $t1, 0($t0)
	sw $t1, -644($fp)
	li $t0, 6059
	sw $t0, -648($fp)
	addi $t0, $fp, -100
	sw $t0, -652($fp)
	li $t0, 6
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -660($fp)
	lw $t0, -652($fp)
	lw $t1, -660($fp)
	add $t0, $t0, $t1
	sw $t0, -664($fp)
	lw $t0, -648($fp)
	lw $t1, -664($fp)
	sw $t0, 0($t1)
	lw $t0, -664($fp)
	lw $t1, 0($t0)
	sw $t1, -668($fp)
	li $t0, 52550
	sw $t0, -672($fp)
	addi $t0, $fp, -100
	sw $t0, -676($fp)
	li $t0, 7
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
	li $t0, 13018
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	li $t0, 7616
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	li $t0, 61009
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	li $t0, 60480
	sw $t0, -732($fp)
	addi $t0, $fp, -116
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
	li $t0, 7735
	sw $t0, -756($fp)
	addi $t0, $fp, -116
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
	li $t0, 30627
	sw $t0, -780($fp)
	addi $t0, $fp, -116
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
	li $t0, 31248
	sw $t0, -804($fp)
	addi $t0, $fp, -116
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
	li $t0, 40525
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	li $t0, 63438
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	li $t0, 39547
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	li $t0, 62663
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -872($fp)
	li $t0, 28727
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -884($fp)
	li $t0, 27119
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -896($fp)
	li $t0, 45015
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	li $t0, 49359
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	li $t0, 29447
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	li $t0, 46860
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	addi $t0, $fp, -16
	sw $t0, -948($fp)
	li $t0, 0
	sw $t0, -952($fp)
	li $t0, 4
	lw $t1, -952($fp)
	mul $t0, $t0, $t1
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	lw $t1, -948($fp)
	add $t0, $t0, $t1
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	lw $t1, 0($t0)
	sw $t1, -964($fp)
	lw $t0, -964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -968($fp)
	li $t0, 1
	sw $t0, -972($fp)
	li $t0, 4
	lw $t1, -972($fp)
	mul $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	lw $t1, -968($fp)
	add $t0, $t0, $t1
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	lw $t1, 0($t0)
	sw $t1, -984($fp)
	lw $t0, -984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -988($fp)
	li $t0, 2
	sw $t0, -992($fp)
	li $t0, 4
	lw $t1, -992($fp)
	mul $t0, $t0, $t1
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	lw $t1, -988($fp)
	add $t0, $t0, $t1
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	lw $t1, 0($t0)
	sw $t1, -1004($fp)
	lw $t0, -1004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1008($fp)
	li $t0, 0
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
	lw $t0, -1024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1028($fp)
	li $t0, 1
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
	lw $t0, -1044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1048($fp)
	li $t0, 2
	sw $t0, -1052($fp)
	li $t0, 4
	lw $t1, -1052($fp)
	mul $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	lw $t1, -1048($fp)
	add $t0, $t0, $t1
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	lw $t1, 0($t0)
	sw $t1, -1064($fp)
	lw $t0, -1064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1068($fp)
	li $t0, 3
	sw $t0, -1072($fp)
	li $t0, 4
	lw $t1, -1072($fp)
	mul $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	lw $t1, -1068($fp)
	add $t0, $t0, $t1
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	lw $t1, 0($t0)
	sw $t1, -1084($fp)
	lw $t0, -1084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1088($fp)
	li $t0, 0
	sw $t0, -1092($fp)
	li $t0, 4
	lw $t1, -1092($fp)
	mul $t0, $t0, $t1
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	lw $t1, -1088($fp)
	add $t0, $t0, $t1
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	lw $t1, 0($t0)
	sw $t1, -1104($fp)
	lw $t0, -1104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1108($fp)
	li $t0, 1
	sw $t0, -1112($fp)
	li $t0, 4
	lw $t1, -1112($fp)
	mul $t0, $t0, $t1
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	lw $t1, -1108($fp)
	add $t0, $t0, $t1
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	lw $t1, 0($t0)
	sw $t1, -1124($fp)
	lw $t0, -1124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1128($fp)
	li $t0, 2
	sw $t0, -1132($fp)
	li $t0, 4
	lw $t1, -1132($fp)
	mul $t0, $t0, $t1
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	lw $t1, -1128($fp)
	add $t0, $t0, $t1
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	lw $t1, 0($t0)
	sw $t1, -1144($fp)
	lw $t0, -1144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1148($fp)
	li $t0, 3
	sw $t0, -1152($fp)
	li $t0, 4
	lw $t1, -1152($fp)
	mul $t0, $t0, $t1
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	lw $t1, -1148($fp)
	add $t0, $t0, $t1
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	lw $t1, 0($t0)
	sw $t1, -1164($fp)
	lw $t0, -1164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1168($fp)
	li $t0, 4
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
	lw $t0, -1184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1188($fp)
	li $t0, 5
	sw $t0, -1192($fp)
	li $t0, 4
	lw $t1, -1192($fp)
	mul $t0, $t0, $t1
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	lw $t1, -1188($fp)
	add $t0, $t0, $t1
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	lw $t1, 0($t0)
	sw $t1, -1204($fp)
	lw $t0, -1204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1208($fp)
	li $t0, 6
	sw $t0, -1212($fp)
	li $t0, 4
	lw $t1, -1212($fp)
	mul $t0, $t0, $t1
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	lw $t1, -1208($fp)
	add $t0, $t0, $t1
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	lw $t1, 0($t0)
	sw $t1, -1224($fp)
	lw $t0, -1224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1228($fp)
	li $t0, 0
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
	lw $t0, -1244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1248($fp)
	li $t0, 1
	sw $t0, -1252($fp)
	li $t0, 4
	lw $t1, -1252($fp)
	mul $t0, $t0, $t1
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	lw $t1, -1248($fp)
	add $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	lw $t1, 0($t0)
	sw $t1, -1264($fp)
	lw $t0, -1264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -1268($fp)
	li $t0, 0
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
	lw $t0, -1284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -1288($fp)
	li $t0, 1
	sw $t0, -1292($fp)
	li $t0, 4
	lw $t1, -1292($fp)
	mul $t0, $t0, $t1
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	lw $t1, -1288($fp)
	add $t0, $t0, $t1
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	lw $t1, 0($t0)
	sw $t1, -1304($fp)
	lw $t0, -1304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -1308($fp)
	li $t0, 2
	sw $t0, -1312($fp)
	li $t0, 4
	lw $t1, -1312($fp)
	mul $t0, $t0, $t1
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	lw $t1, -1308($fp)
	add $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	lw $t1, 0($t0)
	sw $t1, -1324($fp)
	lw $t0, -1324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -1328($fp)
	li $t0, 3
	sw $t0, -1332($fp)
	li $t0, 4
	lw $t1, -1332($fp)
	mul $t0, $t0, $t1
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	lw $t1, -1328($fp)
	add $t0, $t0, $t1
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	lw $t1, 0($t0)
	sw $t1, -1344($fp)
	lw $t0, -1344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -1348($fp)
	li $t0, 4
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
	lw $t0, -1364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -1368($fp)
	li $t0, 5
	sw $t0, -1372($fp)
	li $t0, 4
	lw $t1, -1372($fp)
	mul $t0, $t0, $t1
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	lw $t1, -1368($fp)
	add $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	lw $t1, 0($t0)
	sw $t1, -1384($fp)
	lw $t0, -1384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -1388($fp)
	li $t0, 6
	sw $t0, -1392($fp)
	li $t0, 4
	lw $t1, -1392($fp)
	mul $t0, $t0, $t1
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	lw $t1, -1388($fp)
	add $t0, $t0, $t1
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	lw $t1, 0($t0)
	sw $t1, -1404($fp)
	lw $t0, -1404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -1408($fp)
	li $t0, 7
	sw $t0, -1412($fp)
	li $t0, 4
	lw $t1, -1412($fp)
	mul $t0, $t0, $t1
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	lw $t1, -1408($fp)
	add $t0, $t0, $t1
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	lw $t1, 0($t0)
	sw $t1, -1424($fp)
	lw $t0, -1424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -724($fp)
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -1440($fp)
	li $t0, 0
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
	addi $t0, $fp, -116
	sw $t0, -1460($fp)
	li $t0, 1
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
	addi $t0, $fp, -116
	sw $t0, -1480($fp)
	li $t0, 2
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
	addi $t0, $fp, -116
	sw $t0, -1500($fp)
	li $t0, 3
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
	lw $t0, -832($fp)
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -844($fp)
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -856($fp)
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -868($fp)
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -880($fp)
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -892($fp)
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -904($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -916($fp)
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -928($fp)
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -940($fp)
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1560($fp)
	lw $t0, 12($fp)
	sw $t0, -1564($fp)
	lw $t1, -1564($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label309
label312:
	li $t0, 0
	sw $t0, -1568($fp)
	lw $t0, -856($fp)
	sw $t0, -1572($fp)
	lw $t1, -1572($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label313
label313:
	li $t0, 1
	sw $t0, -1568($fp)
label314:
	lw $t0, -700($fp)
	sw $t0, -1576($fp)
	lw $t0, -1568($fp)
	lw $t1, -1576($fp)
	mul $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $t1, -1580($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label311
label311:
	addi $t0, $fp, -116
	sw $t0, -1584($fp)
	li $t0, 1
	sw $t0, -1588($fp)
	li $t0, 4
	lw $t1, -1588($fp)
	mul $t0, $t0, $t1
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	lw $t1, -1584($fp)
	add $t0, $t0, $t1
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	lw $t1, 0($t0)
	sw $t1, -1600($fp)
	li $t0, 17085
	sw $t0, -1604($fp)
	lw $t1, -1600($fp)
	lw $t2, -1604($fp)
	bne $t1, $t2, label309
	j label310
label309:
	li $t0, 1
	sw $t0, -1560($fp)
label310:
	lw $ra, -4($fp)
	lw $v0, -1560($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1608($fp)
	li $t0, 0
	sw $t0, -1612($fp)
	li $t0, 0
	sw $t0, -1616($fp)
	addi $t0, $fp, -100
	sw $t0, -1620($fp)
	lw $t0, 16($fp)
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
	addi $t0, $fp, -32
	sw $t0, -1640($fp)
	lw $t0, 12($fp)
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
	lw $t1, -1636($fp)
	lw $t2, -1656($fp)
	ble $t1, $t2, label319
	j label320
label319:
	li $t0, 1
	sw $t0, -1616($fp)
label320:
	lw $t0, -844($fp)
	sw $t0, -1660($fp)
	lw $t1, -1616($fp)
	lw $t2, -1660($fp)
	bge $t1, $t2, label317
	j label318
label317:
	li $t0, 1
	sw $t0, -1612($fp)
label318:
	li $t0, 0
	sw $t0, -1664($fp)
	lw $t0, -700($fp)
	sw $t0, -1668($fp)
	lw $t1, -1668($fp)
	li $t2, 0
	bne $t1, $t2, label322
	j label321
label321:
	li $t0, 1
	sw $t0, -1664($fp)
label322:
	li $t0, 33707
	sw $t0, -1672($fp)
	li $t0, 0
	lw $t1, -1672($fp)
	sub $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t0, -1664($fp)
	lw $t1, -1676($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1680($fp)
	lw $t1, -1612($fp)
	lw $t2, -1680($fp)
	beq $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -1608($fp)
label316:
	addi $t0, $fp, -100
	sw $t0, -1684($fp)
	li $t0, 0
	sw $t0, -1688($fp)
	li $t0, 57592
	sw $t0, -1692($fp)
	lw $t0, -700($fp)
	sw $t0, -1696($fp)
	lw $t1, -1692($fp)
	lw $t2, -1696($fp)
	beq $t1, $t2, label326
	j label327
label326:
	li $t0, 1
	sw $t0, -1688($fp)
label327:
	li $t0, 4
	lw $t1, -1688($fp)
	mul $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	lw $t1, -1684($fp)
	add $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	lw $t1, 0($t0)
	sw $t1, -1708($fp)
	li $t0, 0
	sw $t0, -1712($fp)
	lw $t0, 4($fp)
	sw $t0, -1716($fp)
	li $t0, 38269
	sw $t0, -1720($fp)
	lw $t0, -1716($fp)
	lw $t1, -1720($fp)
	sub $t0, $t0, $t1
	sw $t0, -1724($fp)
	lw $t0, -700($fp)
	sw $t0, -1728($fp)
	lw $t1, -1724($fp)
	lw $t2, -1728($fp)
	bne $t1, $t2, label328
	j label329
label328:
	li $t0, 1
	sw $t0, -1712($fp)
label329:
	lw $t0, 12($fp)
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -1736($fp)
	addi $sp, $sp, -4
	lw $t0, -1712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1736($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1740($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -1744($fp)
	lw $t0, -916($fp)
	sw $t0, -1748($fp)
	lw $t1, -1748($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label330
label332:
	li $t0, 20437
	sw $t0, -1752($fp)
	lw $t1, -1752($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label331
label330:
	li $t0, 1
	sw $t0, -1744($fp)
label331:
	li $t0, 0
	sw $t0, -1756($fp)
	lw $t0, -916($fp)
	sw $t0, -1760($fp)
	li $t0, 16880
	sw $t0, -1764($fp)
	lw $t1, -1760($fp)
	lw $t2, -1764($fp)
	bgt $t1, $t2, label333
	j label334
label333:
	li $t0, 1
	sw $t0, -1756($fp)
label334:
	addi $t0, $fp, -32
	sw $t0, -1768($fp)
	lw $t0, 20($fp)
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
	li $t0, 15697
	sw $t0, -1788($fp)
	lw $t0, -1784($fp)
	lw $t1, -1788($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1792($fp)
	li $t0, 0
	sw $t0, -1796($fp)
	li $t0, 0
	sw $t0, -1800($fp)
	li $t0, 46716
	sw $t0, -1804($fp)
	li $t0, 46284
	sw $t0, -1808($fp)
	lw $t1, -1804($fp)
	lw $t2, -1808($fp)
	beq $t1, $t2, label337
	j label338
label337:
	li $t0, 1
	sw $t0, -1800($fp)
label338:
	li $t0, 35617
	sw $t0, -1812($fp)
	lw $t1, -1800($fp)
	lw $t2, -1812($fp)
	bne $t1, $t2, label335
	j label336
label335:
	li $t0, 1
	sw $t0, -1796($fp)
label336:
	addi $sp, $sp, -4
	lw $t0, -1740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1796($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1816($fp)
	addi $sp, $sp, 24
	lw $t0, -1708($fp)
	lw $t1, -1816($fp)
	mul $t0, $t0, $t1
	sw $t0, -1820($fp)
	li $t0, 7451
	sw $t0, -1824($fp)
	lw $t0, -724($fp)
	sw $t0, -1828($fp)
	lw $t0, -1824($fp)
	lw $t1, -1828($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1832($fp)
	lw $t0, -832($fp)
	sw $t0, -1836($fp)
	lw $t0, -1832($fp)
	lw $t1, -1836($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1840($fp)
	li $t0, 0
	sw $t0, -1844($fp)
	lw $t0, -700($fp)
	sw $t0, -1848($fp)
	lw $t0, 20($fp)
	sw $t0, -1852($fp)
	lw $t0, -1848($fp)
	lw $t1, -1852($fp)
	mul $t0, $t0, $t1
	sw $t0, -1856($fp)
	lw $t0, -700($fp)
	sw $t0, -1860($fp)
	lw $t1, -1856($fp)
	lw $t2, -1860($fp)
	bge $t1, $t2, label339
	j label340
label339:
	li $t0, 1
	sw $t0, -1844($fp)
label340:
	li $t0, 0
	sw $t0, -1864($fp)
	lw $t0, 16($fp)
	sw $t0, -1868($fp)
	lw $t1, -1868($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label341
label341:
	li $t0, 1
	sw $t0, -1864($fp)
label342:
	lw $t0, 20($fp)
	sw $t0, -1872($fp)
	lw $t0, -1864($fp)
	lw $t1, -1872($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1876($fp)
	li $t0, 22940
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -1884($fp)
	lw $t0, -856($fp)
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -1892($fp)
	addi $sp, $sp, -4
	lw $t0, -1840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1892($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1896($fp)
	addi $sp, $sp, 24
	lw $t1, -1820($fp)
	lw $t2, -1896($fp)
	bgt $t1, $t2, label323
	j label324
label323:
	li $t0, 0
	sw $t0, -1900($fp)
	addi $t0, $fp, -60
	sw $t0, -1904($fp)
	lw $t0, -712($fp)
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
	li $t0, 0
	sw $t0, -1924($fp)
	lw $t0, -712($fp)
	sw $t0, -1928($fp)
	lw $t0, -928($fp)
	sw $t0, -1932($fp)
	lw $t0, -1928($fp)
	lw $t1, -1932($fp)
	add $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t1, -1936($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label347
label347:
	li $t0, 46232
	sw $t0, -1940($fp)
	lw $t1, -1940($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label346
label345:
	li $t0, 1
	sw $t0, -1924($fp)
label346:
	li $t0, 2925
	sw $t0, -1944($fp)
	li $t0, 0
	sw $t0, -1948($fp)
	addi $t0, $fp, -16
	sw $t0, -1952($fp)
	li $t0, 0
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
	lw $t0, -904($fp)
	sw $t0, -1972($fp)
	lw $t1, -1968($fp)
	lw $t2, -1972($fp)
	bge $t1, $t2, label348
	j label349
label348:
	li $t0, 1
	sw $t0, -1948($fp)
label349:
	li $t0, 0
	sw $t0, -1976($fp)
	lw $t0, -832($fp)
	sw $t0, -1980($fp)
	lw $t0, -916($fp)
	sw $t0, -1984($fp)
	lw $t1, -1980($fp)
	lw $t2, -1984($fp)
	bne $t1, $t2, label352
	j label351
label352:
	lw $t0, 8($fp)
	sw $t0, -1988($fp)
	lw $t1, -1988($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label351
label350:
	li $t0, 1
	sw $t0, -1976($fp)
label351:
	addi $sp, $sp, -4
	lw $t0, -1920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1976($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1992($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -1992($fp)
	sub $t0, $t0, $t1
	sw $t0, -1996($fp)
	addi $t0, $fp, -32
	sw $t0, -2000($fp)
	li $t0, 0
	sw $t0, -2004($fp)
	lw $t0, -940($fp)
	sw $t0, -2008($fp)
	lw $t0, -916($fp)
	sw $t0, -2012($fp)
	lw $t1, -2008($fp)
	lw $t2, -2012($fp)
	beq $t1, $t2, label353
	j label354
label353:
	li $t0, 1
	sw $t0, -2004($fp)
label354:
	li $t0, 4
	lw $t1, -2004($fp)
	mul $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	lw $t1, -2000($fp)
	add $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	lw $t1, 0($t0)
	sw $t1, -2024($fp)
	lw $t1, -1996($fp)
	lw $t2, -2024($fp)
	blt $t1, $t2, label343
	j label344
label343:
	li $t0, 1
	sw $t0, -1900($fp)
label344:
	lw $ra, -4($fp)
	lw $v0, -1900($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label325
label324:
	li $t0, 0
	sw $t0, -2028($fp)
	lw $t0, -868($fp)
	sw $t0, -2032($fp)
	li $t0, 38291
	sw $t0, -2036($fp)
	lw $t0, -2032($fp)
	lw $t1, -2036($fp)
	sub $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $t1, -2040($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label357
label357:
	li $t0, 0
	sw $t0, -2044($fp)
	li $t0, 33552
	sw $t0, -2048($fp)
	lw $t1, -2048($fp)
	li $t2, 0
	bne $t1, $t2, label359
	j label358
label358:
	li $t0, 1
	sw $t0, -2044($fp)
label359:
	lw $t0, -712($fp)
	sw $t0, -2052($fp)
	lw $t0, -2044($fp)
	lw $t1, -2052($fp)
	sub $t0, $t0, $t1
	sw $t0, -2056($fp)
	li $t0, 0
	sw $t0, -2060($fp)
	lw $t0, -700($fp)
	sw $t0, -2064($fp)
	lw $t1, -2064($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label360
label360:
	li $t0, 1
	sw $t0, -2060($fp)
label361:
	li $t0, 36747
	sw $t0, -2068($fp)
	lw $t0, -2060($fp)
	lw $t1, -2068($fp)
	sub $t0, $t0, $t1
	sw $t0, -2072($fp)
	li $t0, 44005
	sw $t0, -2076($fp)
	li $t0, 42521
	sw $t0, -2080($fp)
	lw $t0, -2076($fp)
	lw $t1, -2080($fp)
	sub $t0, $t0, $t1
	sw $t0, -2084($fp)
	li $t0, 0
	sw $t0, -2088($fp)
	li $t0, 60182
	sw $t0, -2092($fp)
	li $t0, 13074
	sw $t0, -2096($fp)
	lw $t1, -2092($fp)
	lw $t2, -2096($fp)
	beq $t1, $t2, label362
	j label364
label364:
	li $t0, 55422
	sw $t0, -2100($fp)
	lw $t1, -2100($fp)
	li $t2, 0
	bne $t1, $t2, label362
	j label363
label362:
	li $t0, 1
	sw $t0, -2088($fp)
label363:
	addi $t0, $fp, -68
	sw $t0, -2104($fp)
	lw $t0, -844($fp)
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
	li $t0, 0
	lw $t1, -2120($fp)
	sub $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t0, -916($fp)
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -2132($fp)
	addi $sp, $sp, -4
	lw $t0, -2072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2132($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2136($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -2140($fp)
	lw $t0, -700($fp)
	sw $t0, -2144($fp)
	lw $t0, -904($fp)
	sw $t0, -2148($fp)
	lw $t1, -2144($fp)
	lw $t2, -2148($fp)
	ble $t1, $t2, label365
	j label366
label365:
	li $t0, 1
	sw $t0, -2140($fp)
label366:
	addi $sp, $sp, -4
	lw $t0, -2136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2140($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2152($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -2156($fp)
	li $t0, 51491
	sw $t0, -2160($fp)
	li $t0, 10407
	sw $t0, -2164($fp)
	lw $t0, -2160($fp)
	lw $t1, -2164($fp)
	sub $t0, $t0, $t1
	sw $t0, -2168($fp)
	lw $t1, -2168($fp)
	li $t2, 0
	bne $t1, $t2, label369
	j label368
label369:
	lw $t0, -724($fp)
	sw $t0, -2172($fp)
	lw $t1, -2172($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label368
label367:
	li $t0, 1
	sw $t0, -2156($fp)
label368:
	lw $t0, -904($fp)
	sw $t0, -2176($fp)
	li $t0, 0
	lw $t1, -2176($fp)
	sub $t0, $t0, $t1
	sw $t0, -2180($fp)
	li $t0, 0
	sw $t0, -2184($fp)
	li $t0, 13280
	sw $t0, -2188($fp)
	li $t0, 31454
	sw $t0, -2192($fp)
	lw $t1, -2188($fp)
	lw $t2, -2192($fp)
	blt $t1, $t2, label370
	j label372
label372:
	lw $t0, -712($fp)
	sw $t0, -2196($fp)
	lw $t1, -2196($fp)
	li $t2, 0
	bne $t1, $t2, label370
	j label371
label370:
	li $t0, 1
	sw $t0, -2184($fp)
label371:
	li $t0, 0
	sw $t0, -2200($fp)
	li $t0, 11944
	sw $t0, -2204($fp)
	lw $t0, -700($fp)
	sw $t0, -2208($fp)
	lw $t1, -2204($fp)
	lw $t2, -2208($fp)
	ble $t1, $t2, label373
	j label375
label375:
	lw $t0, -904($fp)
	sw $t0, -2212($fp)
	lw $t1, -2212($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label374
label373:
	li $t0, 1
	sw $t0, -2200($fp)
label374:
	addi $sp, $sp, -4
	lw $t0, -2152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2200($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2216($fp)
	addi $sp, $sp, 24
	lw $t1, -2056($fp)
	lw $t2, -2216($fp)
	beq $t1, $t2, label355
	j label356
label355:
	li $t0, 1
	sw $t0, -2028($fp)
label356:
label325:
	addi $t0, $fp, -32
	sw $t0, -2220($fp)
	li $t0, 3
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
	li $t0, 0
	sw $t0, -2240($fp)
	li $t0, 53832
	sw $t0, -2244($fp)
	li $t0, 0
	lw $t1, -2244($fp)
	sub $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t1, -2248($fp)
	li $t2, 0
	bne $t1, $t2, label381
	j label380
label380:
	li $t0, 1
	sw $t0, -2240($fp)
label381:
	lw $t1, -2236($fp)
	lw $t2, -2240($fp)
	bgt $t1, $t2, label376
	j label379
label379:
	li $t0, 43811
	sw $t0, -2252($fp)
	lw $t1, -2252($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label377
label384:
	lw $t0, -868($fp)
	sw $t0, -2256($fp)
	lw $t1, -2256($fp)
	li $t2, 0
	bne $t1, $t2, label383
	j label377
label383:
	lw $t0, -856($fp)
	sw $t0, -2260($fp)
	lw $t1, -2260($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label377
label382:
	lw $t0, -892($fp)
	sw $t0, -2264($fp)
	lw $t0, -712($fp)
	sw $t0, -2268($fp)
	lw $t0, -2264($fp)
	lw $t1, -2268($fp)
	mul $t0, $t0, $t1
	sw $t0, -2272($fp)
	lw $t1, -2272($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label377
label376:
	li $t0, 0
	sw $t0, -2276($fp)
	addi $t0, $fp, -32
	sw $t0, -2280($fp)
	li $t0, 0
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
	li $t0, 24560
	sw $t0, -2300($fp)
	lw $t0, -2296($fp)
	lw $t1, -2300($fp)
	mul $t0, $t0, $t1
	sw $t0, -2304($fp)
	li $t0, 21152
	sw $t0, -2308($fp)
	lw $t0, -844($fp)
	sw $t0, -2312($fp)
	lw $t0, -2308($fp)
	lw $t1, -2312($fp)
	add $t0, $t0, $t1
	sw $t0, -2316($fp)
	lw $t1, -2304($fp)
	lw $t2, -2316($fp)
	bne $t1, $t2, label385
	j label386
label385:
	li $t0, 1
	sw $t0, -2276($fp)
label386:
	lw $t0, -2276($fp)
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -2320($fp)
	lw $ra, -4($fp)
	lw $v0, -2320($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label378
label377:
	li $t0, 50709
	sw $t0, -2324($fp)
	lw $t0, -844($fp)
	sw $t0, -2328($fp)
	lw $t0, -2324($fp)
	lw $t1, -2328($fp)
	sub $t0, $t0, $t1
	sw $t0, -2332($fp)
label378:
label387:
	lw $t0, -712($fp)
	sw $t0, -2336($fp)
	lw $t1, -2336($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label389
label390:
	li $t0, 0
	sw $t0, -2340($fp)
	lw $t0, 20($fp)
	sw $t0, -2344($fp)
	lw $t1, -2344($fp)
	li $t2, 0
	bne $t1, $t2, label392
	j label391
label391:
	li $t0, 1
	sw $t0, -2340($fp)
label392:
	li $t0, 41440
	sw $t0, -2348($fp)
	lw $t0, -2340($fp)
	lw $t1, -2348($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2352($fp)
	li $t0, 64380
	sw $t0, -2356($fp)
	li $t0, 0
	lw $t1, -2356($fp)
	sub $t0, $t0, $t1
	sw $t0, -2360($fp)
	li $t0, 49041
	sw $t0, -2364($fp)
	lw $t0, -2360($fp)
	lw $t1, -2364($fp)
	add $t0, $t0, $t1
	sw $t0, -2368($fp)
	li $t0, 0
	sw $t0, -2372($fp)
	li $t0, 41589
	sw $t0, -2376($fp)
	li $t0, 23443
	sw $t0, -2380($fp)
	lw $t1, -2376($fp)
	lw $t2, -2380($fp)
	bgt $t1, $t2, label395
	j label394
label395:
	lw $t0, -844($fp)
	sw $t0, -2384($fp)
	lw $t1, -2384($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label394
label393:
	li $t0, 1
	sw $t0, -2372($fp)
label394:
	addi $sp, $sp, -4
	lw $t0, -2368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2372($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2388($fp)
	addi $sp, $sp, 12
	lw $t0, -2352($fp)
	lw $t1, -2388($fp)
	mul $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t1, -2392($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label389
label388:
	lw $t0, -904($fp)
	sw $t0, -2396($fp)
	j label387
label389:
	addi $t0, $fp, -16
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
	addi $t0, $fp, -16
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
	addi $t0, $fp, -16
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
	addi $t0, $fp, -32
	sw $t0, -2460($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -2480($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -2500($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -2520($fp)
	li $t0, 3
	sw $t0, -2524($fp)
	li $t0, 4
	lw $t1, -2524($fp)
	mul $t0, $t0, $t1
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	lw $t1, -2520($fp)
	add $t0, $t0, $t1
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	lw $t1, 0($t0)
	sw $t1, -2536($fp)
	lw $t0, -2536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
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
	addi $t0, $fp, -60
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
	addi $t0, $fp, -60
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
	addi $t0, $fp, -60
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
	addi $t0, $fp, -60
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
	addi $t0, $fp, -60
	sw $t0, -2640($fp)
	li $t0, 5
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
	lw $t0, -2656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2660($fp)
	li $t0, 6
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
	lw $t0, -2676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -2680($fp)
	li $t0, 0
	sw $t0, -2684($fp)
	li $t0, 4
	lw $t1, -2684($fp)
	mul $t0, $t0, $t1
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	lw $t1, -2680($fp)
	add $t0, $t0, $t1
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	lw $t1, 0($t0)
	sw $t1, -2696($fp)
	lw $t0, -2696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -2700($fp)
	li $t0, 1
	sw $t0, -2704($fp)
	li $t0, 4
	lw $t1, -2704($fp)
	mul $t0, $t0, $t1
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	lw $t1, -2700($fp)
	add $t0, $t0, $t1
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	lw $t1, 0($t0)
	sw $t1, -2716($fp)
	lw $t0, -2716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
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
	lw $t0, -2736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -2740($fp)
	li $t0, 1
	sw $t0, -2744($fp)
	li $t0, 4
	lw $t1, -2744($fp)
	mul $t0, $t0, $t1
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	lw $t1, -2740($fp)
	add $t0, $t0, $t1
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	lw $t1, 0($t0)
	sw $t1, -2756($fp)
	lw $t0, -2756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -2760($fp)
	li $t0, 2
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
	lw $t0, -2776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -2780($fp)
	li $t0, 3
	sw $t0, -2784($fp)
	li $t0, 4
	lw $t1, -2784($fp)
	mul $t0, $t0, $t1
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	lw $t1, -2780($fp)
	add $t0, $t0, $t1
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	lw $t1, 0($t0)
	sw $t1, -2796($fp)
	lw $t0, -2796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -2800($fp)
	li $t0, 4
	sw $t0, -2804($fp)
	li $t0, 4
	lw $t1, -2804($fp)
	mul $t0, $t0, $t1
	sw $t0, -2808($fp)
	lw $t0, -2808($fp)
	lw $t1, -2800($fp)
	add $t0, $t0, $t1
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	lw $t1, 0($t0)
	sw $t1, -2816($fp)
	lw $t0, -2816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -2820($fp)
	li $t0, 5
	sw $t0, -2824($fp)
	li $t0, 4
	lw $t1, -2824($fp)
	mul $t0, $t0, $t1
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	lw $t1, -2820($fp)
	add $t0, $t0, $t1
	sw $t0, -2832($fp)
	lw $t0, -2832($fp)
	lw $t1, 0($t0)
	sw $t1, -2836($fp)
	lw $t0, -2836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -2840($fp)
	li $t0, 6
	sw $t0, -2844($fp)
	li $t0, 4
	lw $t1, -2844($fp)
	mul $t0, $t0, $t1
	sw $t0, -2848($fp)
	lw $t0, -2848($fp)
	lw $t1, -2840($fp)
	add $t0, $t0, $t1
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	lw $t1, 0($t0)
	sw $t1, -2856($fp)
	lw $t0, -2856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -2860($fp)
	li $t0, 7
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
	lw $t0, -2876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	sw $t0, -2884($fp)
	lw $t0, -2884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -724($fp)
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -2892($fp)
	li $t0, 0
	sw $t0, -2896($fp)
	li $t0, 4
	lw $t1, -2896($fp)
	mul $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $t0, -2900($fp)
	lw $t1, -2892($fp)
	add $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	lw $t1, 0($t0)
	sw $t1, -2908($fp)
	lw $t0, -2908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -2912($fp)
	li $t0, 1
	sw $t0, -2916($fp)
	li $t0, 4
	lw $t1, -2916($fp)
	mul $t0, $t0, $t1
	sw $t0, -2920($fp)
	lw $t0, -2920($fp)
	lw $t1, -2912($fp)
	add $t0, $t0, $t1
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	lw $t1, 0($t0)
	sw $t1, -2928($fp)
	lw $t0, -2928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -2932($fp)
	li $t0, 2
	sw $t0, -2936($fp)
	li $t0, 4
	lw $t1, -2936($fp)
	mul $t0, $t0, $t1
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	lw $t1, -2932($fp)
	add $t0, $t0, $t1
	sw $t0, -2944($fp)
	lw $t0, -2944($fp)
	lw $t1, 0($t0)
	sw $t1, -2948($fp)
	lw $t0, -2948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -2952($fp)
	li $t0, 3
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
	lw $t0, -2968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -832($fp)
	sw $t0, -2972($fp)
	lw $t0, -2972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -844($fp)
	sw $t0, -2976($fp)
	lw $t0, -2976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -856($fp)
	sw $t0, -2980($fp)
	lw $t0, -2980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -868($fp)
	sw $t0, -2984($fp)
	lw $t0, -2984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -880($fp)
	sw $t0, -2988($fp)
	lw $t0, -2988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -892($fp)
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -904($fp)
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -916($fp)
	sw $t0, -3000($fp)
	lw $t0, -3000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -928($fp)
	sw $t0, -3004($fp)
	lw $t0, -3004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -940($fp)
	sw $t0, -3008($fp)
	lw $t0, -3008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -3012($fp)
	li $t0, 0
	sw $t0, -3016($fp)
	lw $t0, 20($fp)
	sw $t0, -3020($fp)
	li $t0, 9195
	sw $t0, -3024($fp)
	lw $t0, -3020($fp)
	lw $t1, -3024($fp)
	mul $t0, $t0, $t1
	sw $t0, -3028($fp)
	lw $t1, -3028($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label398
label399:
	li $t0, 29400
	sw $t0, -3032($fp)
	lw $t1, -3032($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label398
label398:
	li $t0, 51966
	sw $t0, -3036($fp)
	lw $t1, -3036($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label397
label396:
	li $t0, 1
	sw $t0, -3016($fp)
label397:
	li $t0, 4
	lw $t1, -3016($fp)
	mul $t0, $t0, $t1
	sw $t0, -3040($fp)
	lw $t0, -3040($fp)
	lw $t1, -3012($fp)
	add $t0, $t0, $t1
	sw $t0, -3044($fp)
	lw $t0, -3044($fp)
	lw $t1, 0($t0)
	sw $t1, -3048($fp)
	lw $ra, -4($fp)
	lw $v0, -3048($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1896
	li $t0, 55427
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	li $t0, 2155
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	li $t0, 19982
	sw $t0, -76($fp)
	addi $t0, $fp, -40
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
	li $t0, 1835
	sw $t0, -100($fp)
	addi $t0, $fp, -40
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
	li $t0, 15435
	sw $t0, -124($fp)
	addi $t0, $fp, -40
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
	li $t0, 51436
	sw $t0, -148($fp)
	addi $t0, $fp, -40
	sw $t0, -152($fp)
	li $t0, 3
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
	li $t0, 53326
	sw $t0, -172($fp)
	addi $t0, $fp, -40
	sw $t0, -176($fp)
	li $t0, 4
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
	li $t0, 25843
	sw $t0, -196($fp)
	addi $t0, $fp, -40
	sw $t0, -200($fp)
	li $t0, 5
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
	li $t0, 46082
	sw $t0, -220($fp)
	addi $t0, $fp, -40
	sw $t0, -224($fp)
	li $t0, 6
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
	li $t0, 864
	sw $t0, -244($fp)
	addi $t0, $fp, -40
	sw $t0, -248($fp)
	li $t0, 7
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
	li $t0, 15729
	sw $t0, -268($fp)
	addi $t0, $fp, -40
	sw $t0, -272($fp)
	li $t0, 8
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
	li $t0, 24551
	sw $t0, -292($fp)
	addi $t0, $fp, -48
	sw $t0, -296($fp)
	li $t0, 0
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
	li $t0, 43385
	sw $t0, -316($fp)
	addi $t0, $fp, -48
	sw $t0, -320($fp)
	li $t0, 1
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
	li $t0, 52476
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	li $t0, 34656
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	li $t0, 36864
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	li $t0, 0
	sw $t0, -376($fp)
	lw $t0, -356($fp)
	sw $t0, -380($fp)
	li $t0, 40772
	sw $t0, -384($fp)
	lw $t0, -380($fp)
	lw $t1, -384($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -388($fp)
	li $t0, 0
	lw $t1, -388($fp)
	sub $t0, $t0, $t1
	sw $t0, -392($fp)
	addi $t0, $fp, -40
	sw $t0, -396($fp)
	li $t0, 6
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
	lw $t1, -392($fp)
	lw $t2, -412($fp)
	beq $t1, $t2, label400
	j label401
label400:
	li $t0, 1
	sw $t0, -376($fp)
label401:
	lw $t0, -56($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
	sw $t0, -544($fp)
	li $t0, 6
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
	addi $t0, $fp, -40
	sw $t0, -564($fp)
	li $t0, 7
	sw $t0, -568($fp)
	li $t0, 4
	lw $t1, -568($fp)
	mul $t0, $t0, $t1
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	lw $t1, -564($fp)
	add $t0, $t0, $t1
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	lw $t1, 0($t0)
	sw $t1, -580($fp)
	lw $t0, -580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -584($fp)
	li $t0, 8
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
	lw $t0, -600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
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
	addi $t0, $fp, -48
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
	lw $t0, -344($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -356($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -656($fp)
	jal f8
	sw $v0, -660($fp)
	addi $sp, $sp, 4
	lw $t1, -660($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label404
label404:
	lw $t0, -68($fp)
	sw $t0, -664($fp)
	lw $t1, -664($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -656($fp)
label403:
	lw $ra, -4($fp)
	lw $v0, -656($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -56($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -676($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -696($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -716($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -736($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -756($fp)
	li $t0, 4
	sw $t0, -760($fp)
	li $t0, 4
	lw $t1, -760($fp)
	mul $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	lw $t1, -756($fp)
	add $t0, $t0, $t1
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	lw $t1, 0($t0)
	sw $t1, -772($fp)
	lw $t0, -772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -776($fp)
	li $t0, 5
	sw $t0, -780($fp)
	li $t0, 4
	lw $t1, -780($fp)
	mul $t0, $t0, $t1
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	lw $t1, -776($fp)
	add $t0, $t0, $t1
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	lw $t1, 0($t0)
	sw $t1, -792($fp)
	lw $t0, -792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -796($fp)
	li $t0, 6
	sw $t0, -800($fp)
	li $t0, 4
	lw $t1, -800($fp)
	mul $t0, $t0, $t1
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	lw $t1, -796($fp)
	add $t0, $t0, $t1
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	lw $t1, 0($t0)
	sw $t1, -812($fp)
	lw $t0, -812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -816($fp)
	li $t0, 7
	sw $t0, -820($fp)
	li $t0, 4
	lw $t1, -820($fp)
	mul $t0, $t0, $t1
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	lw $t1, -816($fp)
	add $t0, $t0, $t1
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	lw $t1, 0($t0)
	sw $t1, -832($fp)
	lw $t0, -832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -836($fp)
	li $t0, 8
	sw $t0, -840($fp)
	li $t0, 4
	lw $t1, -840($fp)
	mul $t0, $t0, $t1
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	lw $t1, -836($fp)
	add $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	lw $t1, 0($t0)
	sw $t1, -852($fp)
	lw $t0, -852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -856($fp)
	li $t0, 0
	sw $t0, -860($fp)
	li $t0, 4
	lw $t1, -860($fp)
	mul $t0, $t0, $t1
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	lw $t1, -856($fp)
	add $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	lw $t1, 0($t0)
	sw $t1, -872($fp)
	lw $t0, -872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -876($fp)
	li $t0, 1
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
	lw $t0, -344($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -356($fp)
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 10248
	sw $t0, -908($fp)
	lw $ra, -4($fp)
	lw $v0, -908($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -56($fp)
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -920($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -940($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -960($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -980($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -1000($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -1020($fp)
	li $t0, 5
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
	addi $t0, $fp, -40
	sw $t0, -1040($fp)
	li $t0, 6
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
	addi $t0, $fp, -40
	sw $t0, -1060($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -1080($fp)
	li $t0, 8
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
	addi $t0, $fp, -48
	sw $t0, -1100($fp)
	li $t0, 0
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
	addi $t0, $fp, -48
	sw $t0, -1120($fp)
	li $t0, 1
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
	lw $t0, -344($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -356($fp)
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1152($fp)
	addi $t0, $fp, -40
	sw $t0, -1156($fp)
	li $t0, 2
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
	li $t0, 60958
	sw $t0, -1176($fp)
	li $t0, 13396
	sw $t0, -1180($fp)
	lw $t0, -1176($fp)
	lw $t1, -1180($fp)
	sub $t0, $t0, $t1
	sw $t0, -1184($fp)
	lw $t1, -1172($fp)
	lw $t2, -1184($fp)
	beq $t1, $t2, label408
	j label406
label408:
	lw $t0, -368($fp)
	sw $t0, -1188($fp)
	li $t0, 19605
	sw $t0, -1192($fp)
	lw $t0, -1188($fp)
	lw $t1, -1192($fp)
	sub $t0, $t0, $t1
	sw $t0, -1196($fp)
	lw $t1, -1196($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label406
label407:
	jal f8
	sw $v0, -1200($fp)
	addi $sp, $sp, 4
	lw $t0, -68($fp)
	sw $t0, -1204($fp)
	lw $t0, -1200($fp)
	lw $t1, -1204($fp)
	mul $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t1, -1208($fp)
	li $t2, 0
	bne $t1, $t2, label405
	j label406
label405:
	li $t0, 1
	sw $t0, -1152($fp)
label406:
	lw $ra, -4($fp)
	lw $v0, -1152($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 18865
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	sw $t0, -1220($fp)
	li $t0, 12240
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	sw $t0, -1232($fp)
	li $t0, 3110
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	sw $t0, -1244($fp)
	li $t0, 28060
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -1256($fp)
	li $t0, 41641
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -1268($fp)
	lw $t0, -1228($fp)
	sw $t0, -1272($fp)
	lw $t0, -1240($fp)
	sw $t0, -1276($fp)
	lw $t0, -356($fp)
	sw $t0, -1280($fp)
	lw $t0, -1276($fp)
	lw $t1, -1280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1284($fp)
	li $t0, 0
	lw $t1, -1284($fp)
	sub $t0, $t0, $t1
	sw $t0, -1288($fp)
	li $t0, 0
	sw $t0, -1292($fp)
	li $t0, 45553
	sw $t0, -1296($fp)
	lw $t0, -356($fp)
	sw $t0, -1300($fp)
	lw $t0, -1296($fp)
	lw $t1, -1300($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1304($fp)
	li $t0, 7694
	sw $t0, -1308($fp)
	lw $t1, -1304($fp)
	lw $t2, -1308($fp)
	bge $t1, $t2, label409
	j label410
label409:
	li $t0, 1
	sw $t0, -1292($fp)
label410:
	li $t0, 0
	sw $t0, -1312($fp)
	lw $t0, -56($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -1320($fp)
	li $t0, 48108
	sw $t0, -1324($fp)
	addi $sp, $sp, -4
	lw $t0, -1320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1324($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1328($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -48
	sw $t0, -1332($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -1352($fp)
	li $t0, 0
	sw $t0, -1356($fp)
	li $t0, 22209
	sw $t0, -1360($fp)
	lw $t1, -1360($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label415
label415:
	li $t0, 1
	sw $t0, -1356($fp)
label416:
	li $t0, 35176
	sw $t0, -1364($fp)
	lw $t1, -1356($fp)
	lw $t2, -1364($fp)
	bne $t1, $t2, label413
	j label414
label413:
	li $t0, 1
	sw $t0, -1352($fp)
label414:
	li $t0, 0
	sw $t0, -1368($fp)
	lw $t0, -1252($fp)
	sw $t0, -1372($fp)
	lw $t1, -1372($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label418
label419:
	lw $t0, -56($fp)
	sw $t0, -1376($fp)
	lw $t1, -1376($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label418
label417:
	li $t0, 1
	sw $t0, -1368($fp)
label418:
	li $t0, 0
	sw $t0, -1380($fp)
	li $t0, 520
	sw $t0, -1384($fp)
	lw $t1, -1384($fp)
	li $t2, 0
	bne $t1, $t2, label423
	j label421
label423:
	li $t0, 51825
	sw $t0, -1388($fp)
	lw $t1, -1388($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label421
label422:
	lw $t0, -56($fp)
	sw $t0, -1392($fp)
	lw $t1, -1392($fp)
	li $t2, 0
	bne $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -1380($fp)
label421:
	li $t0, 35268
	sw $t0, -1396($fp)
	lw $t0, -344($fp)
	sw $t0, -1400($fp)
	lw $t0, -1396($fp)
	lw $t1, -1400($fp)
	add $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t0, -344($fp)
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -1412($fp)
	li $t0, 0
	sw $t0, -1416($fp)
	li $t0, 0
	sw $t0, -1420($fp)
	lw $t0, -344($fp)
	sw $t0, -1424($fp)
	li $t0, 41505
	sw $t0, -1428($fp)
	lw $t1, -1424($fp)
	lw $t2, -1428($fp)
	beq $t1, $t2, label426
	j label427
label426:
	li $t0, 1
	sw $t0, -1420($fp)
label427:
	li $t0, 8440
	sw $t0, -1432($fp)
	lw $t1, -1420($fp)
	lw $t2, -1432($fp)
	bne $t1, $t2, label424
	j label425
label424:
	li $t0, 1
	sw $t0, -1416($fp)
label425:
	addi $t0, $fp, -40
	sw $t0, -1436($fp)
	lw $t0, -1216($fp)
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
	addi $sp, $sp, -4
	lw $t0, -1380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1452($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1456($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -1456($fp)
	sub $t0, $t0, $t1
	sw $t0, -1460($fp)
	li $t0, 0
	sw $t0, -1464($fp)
	li $t0, 7576
	sw $t0, -1468($fp)
	lw $t1, -1468($fp)
	li $t2, 0
	bne $t1, $t2, label429
	j label428
label428:
	li $t0, 1
	sw $t0, -1464($fp)
label429:
	li $t0, 19539
	sw $t0, -1472($fp)
	lw $t0, -1464($fp)
	lw $t1, -1472($fp)
	sub $t0, $t0, $t1
	sw $t0, -1476($fp)
	addi $sp, $sp, -4
	lw $t0, -1348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1476($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1480($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -1328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1480($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1484($fp)
	addi $sp, $sp, 12
	lw $t0, -344($fp)
	sw $t0, -1488($fp)
	lw $t1, -1484($fp)
	lw $t2, -1488($fp)
	beq $t1, $t2, label411
	j label412
label411:
	li $t0, 1
	sw $t0, -1312($fp)
label412:
	li $t0, 0
	sw $t0, -1492($fp)
	li $t0, 59232
	sw $t0, -1496($fp)
	li $t0, 60958
	sw $t0, -1500($fp)
	lw $t0, -1496($fp)
	lw $t1, -1500($fp)
	add $t0, $t0, $t1
	sw $t0, -1504($fp)
	lw $t1, -1504($fp)
	li $t2, 0
	bne $t1, $t2, label432
	j label431
label432:
	lw $t0, -356($fp)
	sw $t0, -1508($fp)
	lw $t1, -1508($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label431
label430:
	li $t0, 1
	sw $t0, -1492($fp)
label431:
	li $t0, 19786
	sw $t0, -1512($fp)
	li $t0, 0
	sw $t0, -1516($fp)
	li $t0, 9522
	sw $t0, -1520($fp)
	li $t0, 0
	lw $t1, -1520($fp)
	sub $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t0, -1216($fp)
	sw $t0, -1528($fp)
	lw $t1, -1524($fp)
	lw $t2, -1528($fp)
	bge $t1, $t2, label433
	j label434
label433:
	li $t0, 1
	sw $t0, -1516($fp)
label434:
	li $t0, 0
	sw $t0, -1532($fp)
	li $t0, 0
	sw $t0, -1536($fp)
	lw $t0, -356($fp)
	sw $t0, -1540($fp)
	li $t0, 43796
	sw $t0, -1544($fp)
	lw $t1, -1540($fp)
	lw $t2, -1544($fp)
	beq $t1, $t2, label437
	j label438
label437:
	li $t0, 1
	sw $t0, -1536($fp)
label438:
	lw $t0, -1240($fp)
	sw $t0, -1548($fp)
	lw $t1, -1536($fp)
	lw $t2, -1548($fp)
	beq $t1, $t2, label435
	j label436
label435:
	li $t0, 1
	sw $t0, -1532($fp)
label436:
	li $t0, 0
	sw $t0, -1552($fp)
	li $t0, 0
	sw $t0, -1556($fp)
	lw $t0, -1252($fp)
	sw $t0, -1560($fp)
	li $t0, 55076
	sw $t0, -1564($fp)
	lw $t1, -1560($fp)
	lw $t2, -1564($fp)
	bne $t1, $t2, label441
	j label442
label441:
	li $t0, 1
	sw $t0, -1556($fp)
label442:
	li $t0, 17951
	sw $t0, -1568($fp)
	lw $t1, -1556($fp)
	lw $t2, -1568($fp)
	bne $t1, $t2, label439
	j label440
label439:
	li $t0, 1
	sw $t0, -1552($fp)
label440:
	addi $sp, $sp, -4
	lw $t0, -1492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1552($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1572($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -1272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1572($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1576($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -1576($fp)
	sub $t0, $t0, $t1
	sw $t0, -1580($fp)
	li $t0, 0
	sw $t0, -1584($fp)
	li $t0, 20063
	sw $t0, -1588($fp)
	lw $t1, -1588($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label443
label443:
	li $t0, 1
	sw $t0, -1584($fp)
label444:
	lw $t0, -1580($fp)
	lw $t1, -1584($fp)
	add $t0, $t0, $t1
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -1596($fp)
	li $t0, 23569
	sw $t0, -1600($fp)
	li $t0, 3116
	sw $t0, -1604($fp)
	lw $t0, -356($fp)
	sw $t0, -1608($fp)
	lw $t0, -1604($fp)
	lw $t1, -1608($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1612($fp)
	jal f8
	sw $v0, -1616($fp)
	addi $sp, $sp, 4
	lw $t0, -1612($fp)
	lw $t1, -1616($fp)
	mul $t0, $t0, $t1
	sw $t0, -1620($fp)
	li $t0, 0
	lw $t1, -1620($fp)
	sub $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t0, -1600($fp)
	lw $t1, -1624($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1628($fp)
	lw $t0, -56($fp)
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1640($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -1660($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -1680($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -1700($fp)
	li $t0, 3
	sw $t0, -1704($fp)
	li $t0, 4
	lw $t1, -1704($fp)
	mul $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	lw $t1, -1700($fp)
	add $t0, $t0, $t1
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	lw $t1, 0($t0)
	sw $t1, -1716($fp)
	lw $t0, -1716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1720($fp)
	li $t0, 4
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
	lw $t0, -1736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1740($fp)
	li $t0, 5
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
	lw $t0, -1756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1760($fp)
	li $t0, 6
	sw $t0, -1764($fp)
	li $t0, 4
	lw $t1, -1764($fp)
	mul $t0, $t0, $t1
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	lw $t1, -1760($fp)
	add $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	lw $t1, 0($t0)
	sw $t1, -1776($fp)
	lw $t0, -1776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1780($fp)
	li $t0, 7
	sw $t0, -1784($fp)
	li $t0, 4
	lw $t1, -1784($fp)
	mul $t0, $t0, $t1
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	lw $t1, -1780($fp)
	add $t0, $t0, $t1
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	lw $t1, 0($t0)
	sw $t1, -1796($fp)
	lw $t0, -1796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1800($fp)
	li $t0, 8
	sw $t0, -1804($fp)
	li $t0, 4
	lw $t1, -1804($fp)
	mul $t0, $t0, $t1
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	lw $t1, -1800($fp)
	add $t0, $t0, $t1
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	lw $t1, 0($t0)
	sw $t1, -1816($fp)
	lw $t0, -1816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1820($fp)
	li $t0, 0
	sw $t0, -1824($fp)
	li $t0, 4
	lw $t1, -1824($fp)
	mul $t0, $t0, $t1
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	lw $t1, -1820($fp)
	add $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	lw $t1, 0($t0)
	sw $t1, -1836($fp)
	lw $t0, -1836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1840($fp)
	li $t0, 1
	sw $t0, -1844($fp)
	li $t0, 4
	lw $t1, -1844($fp)
	mul $t0, $t0, $t1
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	lw $t1, -1840($fp)
	add $t0, $t0, $t1
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	lw $t1, 0($t0)
	sw $t1, -1856($fp)
	lw $t0, -1856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -344($fp)
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -356($fp)
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1872($fp)
	lw $t0, -56($fp)
	sw $t0, -1876($fp)
	lw $t1, -1876($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label446
label447:
	addi $t0, $fp, -48
	sw $t0, -1880($fp)
	lw $t0, -344($fp)
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
	li $t0, 0
	lw $t1, -1896($fp)
	sub $t0, $t0, $t1
	sw $t0, -1900($fp)
	lw $t1, -1900($fp)
	li $t2, 0
	bne $t1, $t2, label445
	j label446
label445:
	li $t0, 1
	sw $t0, -1872($fp)
label446:
	lw $ra, -4($fp)
	lw $v0, -1872($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -100
	li $t0, 33459
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 43174
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 0
	sw $t0, -32($fp)
	lw $t0, 4($fp)
	sw $t0, -36($fp)
	li $t0, 0
	sw $t0, -40($fp)
	lw $t0, 8($fp)
	sw $t0, -44($fp)
	lw $t1, -44($fp)
	li $t2, 0
	bne $t1, $t2, label451
	j label450
label450:
	li $t0, 1
	sw $t0, -40($fp)
label451:
	lw $t1, -36($fp)
	lw $t2, -40($fp)
	bge $t1, $t2, label448
	j label449
label448:
	li $t0, 1
	sw $t0, -32($fp)
label449:
	lw $t0, -12($fp)
	sw $t0, -48($fp)
	li $t0, 0
	sw $t0, -52($fp)
	lw $t0, 8($fp)
	sw $t0, -56($fp)
	lw $t0, 4($fp)
	sw $t0, -60($fp)
	lw $t0, -56($fp)
	lw $t1, -60($fp)
	mul $t0, $t0, $t1
	sw $t0, -64($fp)
	lw $t1, -64($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label453
label454:
	lw $t0, 8($fp)
	sw $t0, -68($fp)
	lw $t1, -68($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label453
label452:
	li $t0, 1
	sw $t0, -52($fp)
label453:
	addi $sp, $sp, -4
	lw $t0, -48($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -52($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -72($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -76($fp)
	lw $t0, -24($fp)
	sw $t0, -80($fp)
	lw $t1, -80($fp)
	li $t2, 0
	bne $t1, $t2, label458
	j label457
label458:
	lw $t0, 4($fp)
	sw $t0, -84($fp)
	lw $t1, -84($fp)
	li $t2, 0
	bne $t1, $t2, label455
	j label457
label457:
	li $t0, 21981
	sw $t0, -88($fp)
	lw $t1, -88($fp)
	li $t2, 0
	bne $t1, $t2, label455
	j label456
label455:
	li $t0, 1
	sw $t0, -76($fp)
label456:
	addi $sp, $sp, -4
	lw $t0, -72($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -76($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -92($fp)
	addi $sp, $sp, 12
	lw $t0, -12($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12($fp)
	sw $t0, -104($fp)
	lw $ra, -4($fp)
	lw $v0, -104($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -56
	li $t0, 45700
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	li $t0, 21805
	sw $t0, -24($fp)
	lw $t0, -12($fp)
	sw $t0, -28($fp)
	lw $t1, -24($fp)
	lw $t2, -28($fp)
	beq $t1, $t2, label461
	j label460
label461:
	lw $t0, -12($fp)
	sw $t0, -32($fp)
	lw $t1, -32($fp)
	li $t2, 0
	bne $t1, $t2, label459
	j label460
label459:
	li $t0, 1
	sw $t0, -20($fp)
label460:
	li $t0, 0
	sw $t0, -36($fp)
	li $t0, 46284
	sw $t0, -40($fp)
	li $t0, 0
	lw $t1, -40($fp)
	sub $t0, $t0, $t1
	sw $t0, -44($fp)
	li $t0, 50041
	sw $t0, -48($fp)
	lw $t1, -44($fp)
	lw $t2, -48($fp)
	ble $t1, $t2, label462
	j label463
label462:
	li $t0, 1
	sw $t0, -36($fp)
label463:
	addi $sp, $sp, -4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -36($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -52($fp)
	addi $sp, $sp, 12
	lw $t0, -12($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 35824
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
