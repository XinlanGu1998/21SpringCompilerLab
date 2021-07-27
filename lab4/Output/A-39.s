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
	addi $sp, $sp, -12472
	li $t0, 20768
	sw $t0, -368($fp)
	addi $t0, $fp, -40
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
	li $t0, 17731
	sw $t0, -392($fp)
	addi $t0, $fp, -40
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
	li $t0, 20407
	sw $t0, -416($fp)
	addi $t0, $fp, -40
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
	li $t0, 43591
	sw $t0, -440($fp)
	addi $t0, $fp, -40
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
	li $t0, 7271
	sw $t0, -464($fp)
	addi $t0, $fp, -40
	sw $t0, -468($fp)
	li $t0, 4
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
	li $t0, 2943
	sw $t0, -488($fp)
	addi $t0, $fp, -40
	sw $t0, -492($fp)
	li $t0, 5
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
	li $t0, 8780
	sw $t0, -512($fp)
	addi $t0, $fp, -40
	sw $t0, -516($fp)
	li $t0, 6
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
	li $t0, 63685
	sw $t0, -536($fp)
	addi $t0, $fp, -40
	sw $t0, -540($fp)
	li $t0, 7
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
	li $t0, 42450
	sw $t0, -560($fp)
	addi $t0, $fp, -40
	sw $t0, -564($fp)
	li $t0, 8
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
	li $t0, 52750
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	li $t0, 2029
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	li $t0, 14989
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	li $t0, 48743
	sw $t0, -620($fp)
	addi $t0, $fp, -48
	sw $t0, -624($fp)
	li $t0, 0
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -632($fp)
	lw $t0, -624($fp)
	lw $t1, -632($fp)
	add $t0, $t0, $t1
	sw $t0, -636($fp)
	lw $t0, -620($fp)
	lw $t1, -636($fp)
	sw $t0, 0($t1)
	lw $t0, -636($fp)
	lw $t1, 0($t0)
	sw $t1, -640($fp)
	li $t0, 8960
	sw $t0, -644($fp)
	addi $t0, $fp, -48
	sw $t0, -648($fp)
	li $t0, 1
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -656($fp)
	lw $t0, -648($fp)
	lw $t1, -656($fp)
	add $t0, $t0, $t1
	sw $t0, -660($fp)
	lw $t0, -644($fp)
	lw $t1, -660($fp)
	sw $t0, 0($t1)
	lw $t0, -660($fp)
	lw $t1, 0($t0)
	sw $t1, -664($fp)
	li $t0, 7092
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	li $t0, 41232
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	li $t0, 45880
	sw $t0, -692($fp)
	addi $t0, $fp, -56
	sw $t0, -696($fp)
	li $t0, 0
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -704($fp)
	lw $t0, -696($fp)
	lw $t1, -704($fp)
	add $t0, $t0, $t1
	sw $t0, -708($fp)
	lw $t0, -692($fp)
	lw $t1, -708($fp)
	sw $t0, 0($t1)
	lw $t0, -708($fp)
	lw $t1, 0($t0)
	sw $t1, -712($fp)
	li $t0, 59098
	sw $t0, -716($fp)
	addi $t0, $fp, -56
	sw $t0, -720($fp)
	li $t0, 1
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
	li $t0, 54411
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	li $t0, 3384
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -760($fp)
	li $t0, 27141
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -772($fp)
	li $t0, 23203
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	li $t0, 21797
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	li $t0, 20132
	sw $t0, -800($fp)
	addi $t0, $fp, -60
	sw $t0, -804($fp)
	li $t0, 0
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
	li $t0, 55279
	sw $t0, -824($fp)
	addi $t0, $fp, -100
	sw $t0, -828($fp)
	li $t0, 0
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
	li $t0, 58972
	sw $t0, -848($fp)
	addi $t0, $fp, -100
	sw $t0, -852($fp)
	li $t0, 1
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
	li $t0, 61375
	sw $t0, -872($fp)
	addi $t0, $fp, -100
	sw $t0, -876($fp)
	li $t0, 2
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
	li $t0, 15876
	sw $t0, -896($fp)
	addi $t0, $fp, -100
	sw $t0, -900($fp)
	li $t0, 3
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
	li $t0, 11221
	sw $t0, -920($fp)
	addi $t0, $fp, -100
	sw $t0, -924($fp)
	li $t0, 4
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
	li $t0, 41487
	sw $t0, -944($fp)
	addi $t0, $fp, -100
	sw $t0, -948($fp)
	li $t0, 5
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
	li $t0, 41584
	sw $t0, -968($fp)
	addi $t0, $fp, -100
	sw $t0, -972($fp)
	li $t0, 6
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
	li $t0, 31989
	sw $t0, -992($fp)
	addi $t0, $fp, -100
	sw $t0, -996($fp)
	li $t0, 7
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
	li $t0, 59218
	sw $t0, -1016($fp)
	addi $t0, $fp, -100
	sw $t0, -1020($fp)
	li $t0, 8
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
	li $t0, 61992
	sw $t0, -1040($fp)
	addi $t0, $fp, -100
	sw $t0, -1044($fp)
	li $t0, 9
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1052($fp)
	lw $t0, -1044($fp)
	lw $t1, -1052($fp)
	add $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $t0, -1040($fp)
	lw $t1, -1056($fp)
	sw $t0, 0($t1)
	lw $t0, -1056($fp)
	lw $t1, 0($t0)
	sw $t1, -1060($fp)
	li $t0, 10044
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, -1072($fp)
	li $t0, 953
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
	li $t0, 64935
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -1096($fp)
	li $t0, 18825
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -1108($fp)
	li $t0, 64638
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	li $t0, 41849
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	sw $t0, -1132($fp)
	li $t0, 6039
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -1144($fp)
	li $t0, 1132
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	sw $t0, -1156($fp)
	li $t0, 56838
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	sw $t0, -1168($fp)
	li $t0, 54783
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -1180($fp)
	li $t0, 10092
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	sw $t0, -1192($fp)
	li $t0, 63930
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	sw $t0, -1204($fp)
	li $t0, 30479
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, -1216($fp)
	li $t0, 55972
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	sw $t0, -1228($fp)
	li $t0, 57492
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	sw $t0, -1240($fp)
	li $t0, 19354
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -1252($fp)
	li $t0, 59356
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -1264($fp)
	li $t0, 19097
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	li $t0, 42557
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	li $t0, 15617
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	li $t0, 39230
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -1312($fp)
	li $t0, 32301
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -1324($fp)
	li $t0, 9054
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	sw $t0, -1336($fp)
	li $t0, 35069
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	sw $t0, -1348($fp)
	li $t0, 48177
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	sw $t0, -1360($fp)
	li $t0, 20275
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	sw $t0, -1372($fp)
	li $t0, 11020
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -1384($fp)
	li $t0, 24225
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	sw $t0, -1396($fp)
	li $t0, 52264
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	sw $t0, -1408($fp)
	li $t0, 4703
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	sw $t0, -1420($fp)
	li $t0, 20681
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	sw $t0, -1432($fp)
	li $t0, 62308
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	sw $t0, -1444($fp)
	li $t0, 5656
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	sw $t0, -1456($fp)
	li $t0, 20080
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	sw $t0, -1468($fp)
	li $t0, 15597
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	sw $t0, -1480($fp)
	li $t0, 4759
	sw $t0, -1484($fp)
	addi $t0, $fp, -140
	sw $t0, -1488($fp)
	li $t0, 0
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
	li $t0, 61930
	sw $t0, -1508($fp)
	addi $t0, $fp, -140
	sw $t0, -1512($fp)
	li $t0, 1
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $t0, -1512($fp)
	lw $t1, -1520($fp)
	add $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t0, -1508($fp)
	lw $t1, -1524($fp)
	sw $t0, 0($t1)
	lw $t0, -1524($fp)
	lw $t1, 0($t0)
	sw $t1, -1528($fp)
	li $t0, 21637
	sw $t0, -1532($fp)
	addi $t0, $fp, -140
	sw $t0, -1536($fp)
	li $t0, 2
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $t0, -1536($fp)
	lw $t1, -1544($fp)
	add $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $t0, -1532($fp)
	lw $t1, -1548($fp)
	sw $t0, 0($t1)
	lw $t0, -1548($fp)
	lw $t1, 0($t0)
	sw $t1, -1552($fp)
	li $t0, 5891
	sw $t0, -1556($fp)
	addi $t0, $fp, -140
	sw $t0, -1560($fp)
	li $t0, 3
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1568($fp)
	lw $t0, -1560($fp)
	lw $t1, -1568($fp)
	add $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t0, -1556($fp)
	lw $t1, -1572($fp)
	sw $t0, 0($t1)
	lw $t0, -1572($fp)
	lw $t1, 0($t0)
	sw $t1, -1576($fp)
	li $t0, 53232
	sw $t0, -1580($fp)
	addi $t0, $fp, -140
	sw $t0, -1584($fp)
	li $t0, 4
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1592($fp)
	lw $t0, -1584($fp)
	lw $t1, -1592($fp)
	add $t0, $t0, $t1
	sw $t0, -1596($fp)
	lw $t0, -1580($fp)
	lw $t1, -1596($fp)
	sw $t0, 0($t1)
	lw $t0, -1596($fp)
	lw $t1, 0($t0)
	sw $t1, -1600($fp)
	li $t0, 10884
	sw $t0, -1604($fp)
	addi $t0, $fp, -140
	sw $t0, -1608($fp)
	li $t0, 5
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, -1608($fp)
	lw $t1, -1616($fp)
	add $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t0, -1604($fp)
	lw $t1, -1620($fp)
	sw $t0, 0($t1)
	lw $t0, -1620($fp)
	lw $t1, 0($t0)
	sw $t1, -1624($fp)
	li $t0, 15983
	sw $t0, -1628($fp)
	addi $t0, $fp, -140
	sw $t0, -1632($fp)
	li $t0, 6
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1640($fp)
	lw $t0, -1632($fp)
	lw $t1, -1640($fp)
	add $t0, $t0, $t1
	sw $t0, -1644($fp)
	lw $t0, -1628($fp)
	lw $t1, -1644($fp)
	sw $t0, 0($t1)
	lw $t0, -1644($fp)
	lw $t1, 0($t0)
	sw $t1, -1648($fp)
	li $t0, 51627
	sw $t0, -1652($fp)
	addi $t0, $fp, -140
	sw $t0, -1656($fp)
	li $t0, 7
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t0, -1656($fp)
	lw $t1, -1664($fp)
	add $t0, $t0, $t1
	sw $t0, -1668($fp)
	lw $t0, -1652($fp)
	lw $t1, -1668($fp)
	sw $t0, 0($t1)
	lw $t0, -1668($fp)
	lw $t1, 0($t0)
	sw $t1, -1672($fp)
	li $t0, 41363
	sw $t0, -1676($fp)
	addi $t0, $fp, -140
	sw $t0, -1680($fp)
	li $t0, 8
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t0, -1680($fp)
	lw $t1, -1688($fp)
	add $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $t0, -1676($fp)
	lw $t1, -1692($fp)
	sw $t0, 0($t1)
	lw $t0, -1692($fp)
	lw $t1, 0($t0)
	sw $t1, -1696($fp)
	li $t0, 6419
	sw $t0, -1700($fp)
	addi $t0, $fp, -140
	sw $t0, -1704($fp)
	li $t0, 9
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1712($fp)
	lw $t0, -1704($fp)
	lw $t1, -1712($fp)
	add $t0, $t0, $t1
	sw $t0, -1716($fp)
	lw $t0, -1700($fp)
	lw $t1, -1716($fp)
	sw $t0, 0($t1)
	lw $t0, -1716($fp)
	lw $t1, 0($t0)
	sw $t1, -1720($fp)
	li $t0, 43583
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	sw $t0, -1732($fp)
	li $t0, 60717
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -1744($fp)
	li $t0, 239
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	sw $t0, -1756($fp)
	li $t0, 62681
	sw $t0, -1760($fp)
	addi $t0, $fp, -148
	sw $t0, -1764($fp)
	li $t0, 0
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t0, -1764($fp)
	lw $t1, -1772($fp)
	add $t0, $t0, $t1
	sw $t0, -1776($fp)
	lw $t0, -1760($fp)
	lw $t1, -1776($fp)
	sw $t0, 0($t1)
	lw $t0, -1776($fp)
	lw $t1, 0($t0)
	sw $t1, -1780($fp)
	li $t0, 37738
	sw $t0, -1784($fp)
	addi $t0, $fp, -148
	sw $t0, -1788($fp)
	li $t0, 1
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1796($fp)
	lw $t0, -1788($fp)
	lw $t1, -1796($fp)
	add $t0, $t0, $t1
	sw $t0, -1800($fp)
	lw $t0, -1784($fp)
	lw $t1, -1800($fp)
	sw $t0, 0($t1)
	lw $t0, -1800($fp)
	lw $t1, 0($t0)
	sw $t1, -1804($fp)
	li $t0, 15856
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	sw $t0, -1816($fp)
	li $t0, 36375
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	sw $t0, -1828($fp)
	li $t0, 4503
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	sw $t0, -1840($fp)
	li $t0, 24910
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	sw $t0, -1852($fp)
	li $t0, 5908
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	sw $t0, -1864($fp)
	li $t0, 52680
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	sw $t0, -1876($fp)
	li $t0, 45185
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	sw $t0, -1888($fp)
	li $t0, 16928
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	sw $t0, -1900($fp)
	li $t0, 11370
	sw $t0, -1904($fp)
	addi $t0, $fp, -168
	sw $t0, -1908($fp)
	li $t0, 0
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t0, -1908($fp)
	lw $t1, -1916($fp)
	add $t0, $t0, $t1
	sw $t0, -1920($fp)
	lw $t0, -1904($fp)
	lw $t1, -1920($fp)
	sw $t0, 0($t1)
	lw $t0, -1920($fp)
	lw $t1, 0($t0)
	sw $t1, -1924($fp)
	li $t0, 31913
	sw $t0, -1928($fp)
	addi $t0, $fp, -168
	sw $t0, -1932($fp)
	li $t0, 1
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t0, -1932($fp)
	lw $t1, -1940($fp)
	add $t0, $t0, $t1
	sw $t0, -1944($fp)
	lw $t0, -1928($fp)
	lw $t1, -1944($fp)
	sw $t0, 0($t1)
	lw $t0, -1944($fp)
	lw $t1, 0($t0)
	sw $t1, -1948($fp)
	li $t0, 21631
	sw $t0, -1952($fp)
	addi $t0, $fp, -168
	sw $t0, -1956($fp)
	li $t0, 2
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t0, -1956($fp)
	lw $t1, -1964($fp)
	add $t0, $t0, $t1
	sw $t0, -1968($fp)
	lw $t0, -1952($fp)
	lw $t1, -1968($fp)
	sw $t0, 0($t1)
	lw $t0, -1968($fp)
	lw $t1, 0($t0)
	sw $t1, -1972($fp)
	li $t0, 32051
	sw $t0, -1976($fp)
	addi $t0, $fp, -168
	sw $t0, -1980($fp)
	li $t0, 3
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
	li $t0, 28686
	sw $t0, -2000($fp)
	addi $t0, $fp, -168
	sw $t0, -2004($fp)
	li $t0, 4
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
	li $t0, 27288
	sw $t0, -2024($fp)
	addi $t0, $fp, -196
	sw $t0, -2028($fp)
	li $t0, 0
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
	li $t0, 52132
	sw $t0, -2048($fp)
	addi $t0, $fp, -196
	sw $t0, -2052($fp)
	li $t0, 1
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
	li $t0, 44283
	sw $t0, -2072($fp)
	addi $t0, $fp, -196
	sw $t0, -2076($fp)
	li $t0, 2
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
	li $t0, 32047
	sw $t0, -2096($fp)
	addi $t0, $fp, -196
	sw $t0, -2100($fp)
	li $t0, 3
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
	li $t0, 48526
	sw $t0, -2120($fp)
	addi $t0, $fp, -196
	sw $t0, -2124($fp)
	li $t0, 4
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $t0, -2124($fp)
	lw $t1, -2132($fp)
	add $t0, $t0, $t1
	sw $t0, -2136($fp)
	lw $t0, -2120($fp)
	lw $t1, -2136($fp)
	sw $t0, 0($t1)
	lw $t0, -2136($fp)
	lw $t1, 0($t0)
	sw $t1, -2140($fp)
	li $t0, 384
	sw $t0, -2144($fp)
	addi $t0, $fp, -196
	sw $t0, -2148($fp)
	li $t0, 5
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2156($fp)
	lw $t0, -2148($fp)
	lw $t1, -2156($fp)
	add $t0, $t0, $t1
	sw $t0, -2160($fp)
	lw $t0, -2144($fp)
	lw $t1, -2160($fp)
	sw $t0, 0($t1)
	lw $t0, -2160($fp)
	lw $t1, 0($t0)
	sw $t1, -2164($fp)
	li $t0, 37938
	sw $t0, -2168($fp)
	addi $t0, $fp, -196
	sw $t0, -2172($fp)
	li $t0, 6
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2180($fp)
	lw $t0, -2172($fp)
	lw $t1, -2180($fp)
	add $t0, $t0, $t1
	sw $t0, -2184($fp)
	lw $t0, -2168($fp)
	lw $t1, -2184($fp)
	sw $t0, 0($t1)
	lw $t0, -2184($fp)
	lw $t1, 0($t0)
	sw $t1, -2188($fp)
	li $t0, 36222
	sw $t0, -2192($fp)
	lw $t0, -2192($fp)
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	sw $t0, -2200($fp)
	li $t0, 11268
	sw $t0, -2204($fp)
	lw $t0, -2204($fp)
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	sw $t0, -2212($fp)
	li $t0, 53921
	sw $t0, -2216($fp)
	addi $t0, $fp, -232
	sw $t0, -2220($fp)
	li $t0, 0
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2228($fp)
	lw $t0, -2220($fp)
	lw $t1, -2228($fp)
	add $t0, $t0, $t1
	sw $t0, -2232($fp)
	lw $t0, -2216($fp)
	lw $t1, -2232($fp)
	sw $t0, 0($t1)
	lw $t0, -2232($fp)
	lw $t1, 0($t0)
	sw $t1, -2236($fp)
	li $t0, 22313
	sw $t0, -2240($fp)
	addi $t0, $fp, -232
	sw $t0, -2244($fp)
	li $t0, 1
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2252($fp)
	lw $t0, -2244($fp)
	lw $t1, -2252($fp)
	add $t0, $t0, $t1
	sw $t0, -2256($fp)
	lw $t0, -2240($fp)
	lw $t1, -2256($fp)
	sw $t0, 0($t1)
	lw $t0, -2256($fp)
	lw $t1, 0($t0)
	sw $t1, -2260($fp)
	li $t0, 52631
	sw $t0, -2264($fp)
	addi $t0, $fp, -232
	sw $t0, -2268($fp)
	li $t0, 2
	sw $t0, -2272($fp)
	lw $t0, -2272($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $t0, -2268($fp)
	lw $t1, -2276($fp)
	add $t0, $t0, $t1
	sw $t0, -2280($fp)
	lw $t0, -2264($fp)
	lw $t1, -2280($fp)
	sw $t0, 0($t1)
	lw $t0, -2280($fp)
	lw $t1, 0($t0)
	sw $t1, -2284($fp)
	li $t0, 60340
	sw $t0, -2288($fp)
	addi $t0, $fp, -232
	sw $t0, -2292($fp)
	li $t0, 3
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2300($fp)
	lw $t0, -2292($fp)
	lw $t1, -2300($fp)
	add $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $t0, -2288($fp)
	lw $t1, -2304($fp)
	sw $t0, 0($t1)
	lw $t0, -2304($fp)
	lw $t1, 0($t0)
	sw $t1, -2308($fp)
	li $t0, 361
	sw $t0, -2312($fp)
	addi $t0, $fp, -232
	sw $t0, -2316($fp)
	li $t0, 4
	sw $t0, -2320($fp)
	lw $t0, -2320($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2324($fp)
	lw $t0, -2316($fp)
	lw $t1, -2324($fp)
	add $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t0, -2312($fp)
	lw $t1, -2328($fp)
	sw $t0, 0($t1)
	lw $t0, -2328($fp)
	lw $t1, 0($t0)
	sw $t1, -2332($fp)
	li $t0, 47812
	sw $t0, -2336($fp)
	addi $t0, $fp, -232
	sw $t0, -2340($fp)
	li $t0, 5
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t0, -2340($fp)
	lw $t1, -2348($fp)
	add $t0, $t0, $t1
	sw $t0, -2352($fp)
	lw $t0, -2336($fp)
	lw $t1, -2352($fp)
	sw $t0, 0($t1)
	lw $t0, -2352($fp)
	lw $t1, 0($t0)
	sw $t1, -2356($fp)
	li $t0, 60579
	sw $t0, -2360($fp)
	addi $t0, $fp, -232
	sw $t0, -2364($fp)
	li $t0, 6
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2372($fp)
	lw $t0, -2364($fp)
	lw $t1, -2372($fp)
	add $t0, $t0, $t1
	sw $t0, -2376($fp)
	lw $t0, -2360($fp)
	lw $t1, -2376($fp)
	sw $t0, 0($t1)
	lw $t0, -2376($fp)
	lw $t1, 0($t0)
	sw $t1, -2380($fp)
	li $t0, 63042
	sw $t0, -2384($fp)
	addi $t0, $fp, -232
	sw $t0, -2388($fp)
	li $t0, 7
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2396($fp)
	lw $t0, -2388($fp)
	lw $t1, -2396($fp)
	add $t0, $t0, $t1
	sw $t0, -2400($fp)
	lw $t0, -2384($fp)
	lw $t1, -2400($fp)
	sw $t0, 0($t1)
	lw $t0, -2400($fp)
	lw $t1, 0($t0)
	sw $t1, -2404($fp)
	li $t0, 20015
	sw $t0, -2408($fp)
	addi $t0, $fp, -232
	sw $t0, -2412($fp)
	li $t0, 8
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t0, -2412($fp)
	lw $t1, -2420($fp)
	add $t0, $t0, $t1
	sw $t0, -2424($fp)
	lw $t0, -2408($fp)
	lw $t1, -2424($fp)
	sw $t0, 0($t1)
	lw $t0, -2424($fp)
	lw $t1, 0($t0)
	sw $t1, -2428($fp)
	li $t0, 10899
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	sw $t0, -2440($fp)
	li $t0, 33881
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	sw $t0, -2448($fp)
	lw $t0, -2448($fp)
	sw $t0, -2452($fp)
	li $t0, 24518
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	sw $t0, -2464($fp)
	li $t0, 35810
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	sw $t0, -2476($fp)
	li $t0, 39789
	sw $t0, -2480($fp)
	addi $t0, $fp, -248
	sw $t0, -2484($fp)
	li $t0, 0
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $t0, -2484($fp)
	lw $t1, -2492($fp)
	add $t0, $t0, $t1
	sw $t0, -2496($fp)
	lw $t0, -2480($fp)
	lw $t1, -2496($fp)
	sw $t0, 0($t1)
	lw $t0, -2496($fp)
	lw $t1, 0($t0)
	sw $t1, -2500($fp)
	li $t0, 11663
	sw $t0, -2504($fp)
	addi $t0, $fp, -248
	sw $t0, -2508($fp)
	li $t0, 1
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2516($fp)
	lw $t0, -2508($fp)
	lw $t1, -2516($fp)
	add $t0, $t0, $t1
	sw $t0, -2520($fp)
	lw $t0, -2504($fp)
	lw $t1, -2520($fp)
	sw $t0, 0($t1)
	lw $t0, -2520($fp)
	lw $t1, 0($t0)
	sw $t1, -2524($fp)
	li $t0, 15459
	sw $t0, -2528($fp)
	addi $t0, $fp, -248
	sw $t0, -2532($fp)
	li $t0, 2
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2540($fp)
	lw $t0, -2532($fp)
	lw $t1, -2540($fp)
	add $t0, $t0, $t1
	sw $t0, -2544($fp)
	lw $t0, -2528($fp)
	lw $t1, -2544($fp)
	sw $t0, 0($t1)
	lw $t0, -2544($fp)
	lw $t1, 0($t0)
	sw $t1, -2548($fp)
	li $t0, 56717
	sw $t0, -2552($fp)
	addi $t0, $fp, -248
	sw $t0, -2556($fp)
	li $t0, 3
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2564($fp)
	lw $t0, -2556($fp)
	lw $t1, -2564($fp)
	add $t0, $t0, $t1
	sw $t0, -2568($fp)
	lw $t0, -2552($fp)
	lw $t1, -2568($fp)
	sw $t0, 0($t1)
	lw $t0, -2568($fp)
	lw $t1, 0($t0)
	sw $t1, -2572($fp)
	li $t0, 23033
	sw $t0, -2576($fp)
	addi $t0, $fp, -260
	sw $t0, -2580($fp)
	li $t0, 0
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2588($fp)
	lw $t0, -2580($fp)
	lw $t1, -2588($fp)
	add $t0, $t0, $t1
	sw $t0, -2592($fp)
	lw $t0, -2576($fp)
	lw $t1, -2592($fp)
	sw $t0, 0($t1)
	lw $t0, -2592($fp)
	lw $t1, 0($t0)
	sw $t1, -2596($fp)
	li $t0, 47373
	sw $t0, -2600($fp)
	addi $t0, $fp, -260
	sw $t0, -2604($fp)
	li $t0, 1
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2612($fp)
	lw $t0, -2604($fp)
	lw $t1, -2612($fp)
	add $t0, $t0, $t1
	sw $t0, -2616($fp)
	lw $t0, -2600($fp)
	lw $t1, -2616($fp)
	sw $t0, 0($t1)
	lw $t0, -2616($fp)
	lw $t1, 0($t0)
	sw $t1, -2620($fp)
	li $t0, 12813
	sw $t0, -2624($fp)
	addi $t0, $fp, -260
	sw $t0, -2628($fp)
	li $t0, 2
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2636($fp)
	lw $t0, -2628($fp)
	lw $t1, -2636($fp)
	add $t0, $t0, $t1
	sw $t0, -2640($fp)
	lw $t0, -2624($fp)
	lw $t1, -2640($fp)
	sw $t0, 0($t1)
	lw $t0, -2640($fp)
	lw $t1, 0($t0)
	sw $t1, -2644($fp)
	li $t0, 55084
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	sw $t0, -2656($fp)
	li $t0, 10523
	sw $t0, -2660($fp)
	lw $t0, -2660($fp)
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	sw $t0, -2668($fp)
	li $t0, 40101
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	sw $t0, -2680($fp)
	li $t0, 41680
	sw $t0, -2684($fp)
	addi $t0, $fp, -292
	sw $t0, -2688($fp)
	li $t0, 0
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2696($fp)
	lw $t0, -2688($fp)
	lw $t1, -2696($fp)
	add $t0, $t0, $t1
	sw $t0, -2700($fp)
	lw $t0, -2684($fp)
	lw $t1, -2700($fp)
	sw $t0, 0($t1)
	lw $t0, -2700($fp)
	lw $t1, 0($t0)
	sw $t1, -2704($fp)
	li $t0, 54806
	sw $t0, -2708($fp)
	addi $t0, $fp, -292
	sw $t0, -2712($fp)
	li $t0, 1
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2720($fp)
	lw $t0, -2712($fp)
	lw $t1, -2720($fp)
	add $t0, $t0, $t1
	sw $t0, -2724($fp)
	lw $t0, -2708($fp)
	lw $t1, -2724($fp)
	sw $t0, 0($t1)
	lw $t0, -2724($fp)
	lw $t1, 0($t0)
	sw $t1, -2728($fp)
	li $t0, 6612
	sw $t0, -2732($fp)
	addi $t0, $fp, -292
	sw $t0, -2736($fp)
	li $t0, 2
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2744($fp)
	lw $t0, -2736($fp)
	lw $t1, -2744($fp)
	add $t0, $t0, $t1
	sw $t0, -2748($fp)
	lw $t0, -2732($fp)
	lw $t1, -2748($fp)
	sw $t0, 0($t1)
	lw $t0, -2748($fp)
	lw $t1, 0($t0)
	sw $t1, -2752($fp)
	li $t0, 24670
	sw $t0, -2756($fp)
	addi $t0, $fp, -292
	sw $t0, -2760($fp)
	li $t0, 3
	sw $t0, -2764($fp)
	lw $t0, -2764($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2768($fp)
	lw $t0, -2760($fp)
	lw $t1, -2768($fp)
	add $t0, $t0, $t1
	sw $t0, -2772($fp)
	lw $t0, -2756($fp)
	lw $t1, -2772($fp)
	sw $t0, 0($t1)
	lw $t0, -2772($fp)
	lw $t1, 0($t0)
	sw $t1, -2776($fp)
	li $t0, 55191
	sw $t0, -2780($fp)
	addi $t0, $fp, -292
	sw $t0, -2784($fp)
	li $t0, 4
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2792($fp)
	lw $t0, -2784($fp)
	lw $t1, -2792($fp)
	add $t0, $t0, $t1
	sw $t0, -2796($fp)
	lw $t0, -2780($fp)
	lw $t1, -2796($fp)
	sw $t0, 0($t1)
	lw $t0, -2796($fp)
	lw $t1, 0($t0)
	sw $t1, -2800($fp)
	li $t0, 44550
	sw $t0, -2804($fp)
	addi $t0, $fp, -292
	sw $t0, -2808($fp)
	li $t0, 5
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2816($fp)
	lw $t0, -2808($fp)
	lw $t1, -2816($fp)
	add $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $t0, -2804($fp)
	lw $t1, -2820($fp)
	sw $t0, 0($t1)
	lw $t0, -2820($fp)
	lw $t1, 0($t0)
	sw $t1, -2824($fp)
	li $t0, 60893
	sw $t0, -2828($fp)
	addi $t0, $fp, -292
	sw $t0, -2832($fp)
	li $t0, 6
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2840($fp)
	lw $t0, -2832($fp)
	lw $t1, -2840($fp)
	add $t0, $t0, $t1
	sw $t0, -2844($fp)
	lw $t0, -2828($fp)
	lw $t1, -2844($fp)
	sw $t0, 0($t1)
	lw $t0, -2844($fp)
	lw $t1, 0($t0)
	sw $t1, -2848($fp)
	li $t0, 923
	sw $t0, -2852($fp)
	addi $t0, $fp, -292
	sw $t0, -2856($fp)
	li $t0, 7
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2864($fp)
	lw $t0, -2856($fp)
	lw $t1, -2864($fp)
	add $t0, $t0, $t1
	sw $t0, -2868($fp)
	lw $t0, -2852($fp)
	lw $t1, -2868($fp)
	sw $t0, 0($t1)
	lw $t0, -2868($fp)
	lw $t1, 0($t0)
	sw $t1, -2872($fp)
	li $t0, 32935
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	sw $t0, -2884($fp)
	li $t0, 17670
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	sw $t0, -2896($fp)
	li $t0, 53555
	sw $t0, -2900($fp)
	lw $t0, -2900($fp)
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	sw $t0, -2908($fp)
	li $t0, 27739
	sw $t0, -2912($fp)
	addi $t0, $fp, -324
	sw $t0, -2916($fp)
	li $t0, 0
	sw $t0, -2920($fp)
	lw $t0, -2920($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2924($fp)
	lw $t0, -2916($fp)
	lw $t1, -2924($fp)
	add $t0, $t0, $t1
	sw $t0, -2928($fp)
	lw $t0, -2912($fp)
	lw $t1, -2928($fp)
	sw $t0, 0($t1)
	lw $t0, -2928($fp)
	lw $t1, 0($t0)
	sw $t1, -2932($fp)
	li $t0, 18031
	sw $t0, -2936($fp)
	addi $t0, $fp, -324
	sw $t0, -2940($fp)
	li $t0, 1
	sw $t0, -2944($fp)
	lw $t0, -2944($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2948($fp)
	lw $t0, -2940($fp)
	lw $t1, -2948($fp)
	add $t0, $t0, $t1
	sw $t0, -2952($fp)
	lw $t0, -2936($fp)
	lw $t1, -2952($fp)
	sw $t0, 0($t1)
	lw $t0, -2952($fp)
	lw $t1, 0($t0)
	sw $t1, -2956($fp)
	li $t0, 35831
	sw $t0, -2960($fp)
	addi $t0, $fp, -324
	sw $t0, -2964($fp)
	li $t0, 2
	sw $t0, -2968($fp)
	lw $t0, -2968($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $t0, -2964($fp)
	lw $t1, -2972($fp)
	add $t0, $t0, $t1
	sw $t0, -2976($fp)
	lw $t0, -2960($fp)
	lw $t1, -2976($fp)
	sw $t0, 0($t1)
	lw $t0, -2976($fp)
	lw $t1, 0($t0)
	sw $t1, -2980($fp)
	li $t0, 22782
	sw $t0, -2984($fp)
	addi $t0, $fp, -324
	sw $t0, -2988($fp)
	li $t0, 3
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2996($fp)
	lw $t0, -2988($fp)
	lw $t1, -2996($fp)
	add $t0, $t0, $t1
	sw $t0, -3000($fp)
	lw $t0, -2984($fp)
	lw $t1, -3000($fp)
	sw $t0, 0($t1)
	lw $t0, -3000($fp)
	lw $t1, 0($t0)
	sw $t1, -3004($fp)
	li $t0, 15537
	sw $t0, -3008($fp)
	addi $t0, $fp, -324
	sw $t0, -3012($fp)
	li $t0, 4
	sw $t0, -3016($fp)
	lw $t0, -3016($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3020($fp)
	lw $t0, -3012($fp)
	lw $t1, -3020($fp)
	add $t0, $t0, $t1
	sw $t0, -3024($fp)
	lw $t0, -3008($fp)
	lw $t1, -3024($fp)
	sw $t0, 0($t1)
	lw $t0, -3024($fp)
	lw $t1, 0($t0)
	sw $t1, -3028($fp)
	li $t0, 55846
	sw $t0, -3032($fp)
	addi $t0, $fp, -324
	sw $t0, -3036($fp)
	li $t0, 5
	sw $t0, -3040($fp)
	lw $t0, -3040($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3044($fp)
	lw $t0, -3036($fp)
	lw $t1, -3044($fp)
	add $t0, $t0, $t1
	sw $t0, -3048($fp)
	lw $t0, -3032($fp)
	lw $t1, -3048($fp)
	sw $t0, 0($t1)
	lw $t0, -3048($fp)
	lw $t1, 0($t0)
	sw $t1, -3052($fp)
	li $t0, 33681
	sw $t0, -3056($fp)
	addi $t0, $fp, -324
	sw $t0, -3060($fp)
	li $t0, 6
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3068($fp)
	lw $t0, -3060($fp)
	lw $t1, -3068($fp)
	add $t0, $t0, $t1
	sw $t0, -3072($fp)
	lw $t0, -3056($fp)
	lw $t1, -3072($fp)
	sw $t0, 0($t1)
	lw $t0, -3072($fp)
	lw $t1, 0($t0)
	sw $t1, -3076($fp)
	li $t0, 49418
	sw $t0, -3080($fp)
	addi $t0, $fp, -324
	sw $t0, -3084($fp)
	li $t0, 7
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3092($fp)
	lw $t0, -3084($fp)
	lw $t1, -3092($fp)
	add $t0, $t0, $t1
	sw $t0, -3096($fp)
	lw $t0, -3080($fp)
	lw $t1, -3096($fp)
	sw $t0, 0($t1)
	lw $t0, -3096($fp)
	lw $t1, 0($t0)
	sw $t1, -3100($fp)
	li $t0, 14829
	sw $t0, -3104($fp)
	addi $t0, $fp, -364
	sw $t0, -3108($fp)
	li $t0, 0
	sw $t0, -3112($fp)
	lw $t0, -3112($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3116($fp)
	lw $t0, -3108($fp)
	lw $t1, -3116($fp)
	add $t0, $t0, $t1
	sw $t0, -3120($fp)
	lw $t0, -3104($fp)
	lw $t1, -3120($fp)
	sw $t0, 0($t1)
	lw $t0, -3120($fp)
	lw $t1, 0($t0)
	sw $t1, -3124($fp)
	li $t0, 3955
	sw $t0, -3128($fp)
	addi $t0, $fp, -364
	sw $t0, -3132($fp)
	li $t0, 1
	sw $t0, -3136($fp)
	lw $t0, -3136($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3140($fp)
	lw $t0, -3132($fp)
	lw $t1, -3140($fp)
	add $t0, $t0, $t1
	sw $t0, -3144($fp)
	lw $t0, -3128($fp)
	lw $t1, -3144($fp)
	sw $t0, 0($t1)
	lw $t0, -3144($fp)
	lw $t1, 0($t0)
	sw $t1, -3148($fp)
	li $t0, 23671
	sw $t0, -3152($fp)
	addi $t0, $fp, -364
	sw $t0, -3156($fp)
	li $t0, 2
	sw $t0, -3160($fp)
	lw $t0, -3160($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3164($fp)
	lw $t0, -3156($fp)
	lw $t1, -3164($fp)
	add $t0, $t0, $t1
	sw $t0, -3168($fp)
	lw $t0, -3152($fp)
	lw $t1, -3168($fp)
	sw $t0, 0($t1)
	lw $t0, -3168($fp)
	lw $t1, 0($t0)
	sw $t1, -3172($fp)
	li $t0, 26492
	sw $t0, -3176($fp)
	addi $t0, $fp, -364
	sw $t0, -3180($fp)
	li $t0, 3
	sw $t0, -3184($fp)
	lw $t0, -3184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3188($fp)
	lw $t0, -3180($fp)
	lw $t1, -3188($fp)
	add $t0, $t0, $t1
	sw $t0, -3192($fp)
	lw $t0, -3176($fp)
	lw $t1, -3192($fp)
	sw $t0, 0($t1)
	lw $t0, -3192($fp)
	lw $t1, 0($t0)
	sw $t1, -3196($fp)
	li $t0, 19415
	sw $t0, -3200($fp)
	addi $t0, $fp, -364
	sw $t0, -3204($fp)
	li $t0, 4
	sw $t0, -3208($fp)
	lw $t0, -3208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3212($fp)
	lw $t0, -3204($fp)
	lw $t1, -3212($fp)
	add $t0, $t0, $t1
	sw $t0, -3216($fp)
	lw $t0, -3200($fp)
	lw $t1, -3216($fp)
	sw $t0, 0($t1)
	lw $t0, -3216($fp)
	lw $t1, 0($t0)
	sw $t1, -3220($fp)
	li $t0, 14853
	sw $t0, -3224($fp)
	addi $t0, $fp, -364
	sw $t0, -3228($fp)
	li $t0, 5
	sw $t0, -3232($fp)
	lw $t0, -3232($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3236($fp)
	lw $t0, -3228($fp)
	lw $t1, -3236($fp)
	add $t0, $t0, $t1
	sw $t0, -3240($fp)
	lw $t0, -3224($fp)
	lw $t1, -3240($fp)
	sw $t0, 0($t1)
	lw $t0, -3240($fp)
	lw $t1, 0($t0)
	sw $t1, -3244($fp)
	li $t0, 49525
	sw $t0, -3248($fp)
	addi $t0, $fp, -364
	sw $t0, -3252($fp)
	li $t0, 6
	sw $t0, -3256($fp)
	lw $t0, -3256($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3260($fp)
	lw $t0, -3252($fp)
	lw $t1, -3260($fp)
	add $t0, $t0, $t1
	sw $t0, -3264($fp)
	lw $t0, -3248($fp)
	lw $t1, -3264($fp)
	sw $t0, 0($t1)
	lw $t0, -3264($fp)
	lw $t1, 0($t0)
	sw $t1, -3268($fp)
	li $t0, 1252
	sw $t0, -3272($fp)
	addi $t0, $fp, -364
	sw $t0, -3276($fp)
	li $t0, 7
	sw $t0, -3280($fp)
	lw $t0, -3280($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3284($fp)
	lw $t0, -3276($fp)
	lw $t1, -3284($fp)
	add $t0, $t0, $t1
	sw $t0, -3288($fp)
	lw $t0, -3272($fp)
	lw $t1, -3288($fp)
	sw $t0, 0($t1)
	lw $t0, -3288($fp)
	lw $t1, 0($t0)
	sw $t1, -3292($fp)
	li $t0, 27666
	sw $t0, -3296($fp)
	addi $t0, $fp, -364
	sw $t0, -3300($fp)
	li $t0, 8
	sw $t0, -3304($fp)
	lw $t0, -3304($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3308($fp)
	lw $t0, -3300($fp)
	lw $t1, -3308($fp)
	add $t0, $t0, $t1
	sw $t0, -3312($fp)
	lw $t0, -3296($fp)
	lw $t1, -3312($fp)
	sw $t0, 0($t1)
	lw $t0, -3312($fp)
	lw $t1, 0($t0)
	sw $t1, -3316($fp)
	li $t0, 39073
	sw $t0, -3320($fp)
	addi $t0, $fp, -364
	sw $t0, -3324($fp)
	li $t0, 9
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3332($fp)
	lw $t0, -3324($fp)
	lw $t1, -3332($fp)
	add $t0, $t0, $t1
	sw $t0, -3336($fp)
	lw $t0, -3320($fp)
	lw $t1, -3336($fp)
	sw $t0, 0($t1)
	lw $t0, -3336($fp)
	lw $t1, 0($t0)
	sw $t1, -3340($fp)
	li $t0, 11775
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	sw $t0, -3348($fp)
	lw $t0, -3348($fp)
	sw $t0, -3352($fp)
	li $t0, 2231
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	sw $t0, -3360($fp)
	lw $t0, -3360($fp)
	sw $t0, -3364($fp)
	addi $t0, $fp, -324
	sw $t0, -3368($fp)
	li $t0, 0
	sw $t0, -3372($fp)
	li $t0, 0
	sw $t0, -3376($fp)
	addi $t0, $fp, -48
	sw $t0, -3380($fp)
	li $t0, 1
	sw $t0, -3384($fp)
	li $t0, 4
	lw $t1, -3384($fp)
	mul $t0, $t0, $t1
	sw $t0, -3388($fp)
	lw $t0, -3388($fp)
	lw $t1, -3380($fp)
	add $t0, $t0, $t1
	sw $t0, -3392($fp)
	lw $t0, -3392($fp)
	lw $t1, 0($t0)
	sw $t1, -3396($fp)
	lw $t1, -3396($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label126
label126:
	li $t0, 1
	sw $t0, -3376($fp)
label127:
	li $t0, 8843
	sw $t0, -3400($fp)
	li $t0, 39888
	sw $t0, -3404($fp)
	lw $t0, -3400($fp)
	lw $t1, -3404($fp)
	sub $t0, $t0, $t1
	sw $t0, -3408($fp)
	lw $t1, -3376($fp)
	lw $t2, -3408($fp)
	blt $t1, $t2, label124
	j label125
label124:
	li $t0, 1
	sw $t0, -3372($fp)
label125:
	li $t0, 4
	lw $t1, -3372($fp)
	mul $t0, $t0, $t1
	sw $t0, -3412($fp)
	lw $t0, -3412($fp)
	lw $t1, -3368($fp)
	add $t0, $t0, $t1
	sw $t0, -3416($fp)
	lw $t0, -3416($fp)
	lw $t1, 0($t0)
	sw $t1, -3420($fp)
	lw $t1, -3420($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
	lw $t0, -2676($fp)
	sw $t0, -3424($fp)
	lw $t0, -2904($fp)
	sw $t0, -3428($fp)
	lw $t0, -3424($fp)
	lw $t1, -3428($fp)
	sub $t0, $t0, $t1
	sw $t0, -3432($fp)
	lw $t1, -3432($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label129
label128:
	li $t0, 0
	sw $t0, -3436($fp)
	lw $t0, -1824($fp)
	sw $t0, -3440($fp)
	li $t0, 0
	sw $t0, -3444($fp)
	lw $t0, -1368($fp)
	sw $t0, -3448($fp)
	lw $t1, -3448($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label134
label135:
	li $t0, 5777
	sw $t0, -3452($fp)
	lw $t1, -3452($fp)
	li $t2, 0
	bne $t1, $t2, label133
	j label134
label133:
	li $t0, 1
	sw $t0, -3444($fp)
label134:
	li $t0, 0
	sw $t0, -3456($fp)
	li $t0, 5411
	sw $t0, -3460($fp)
	lw $t0, -1476($fp)
	sw $t0, -3464($fp)
	lw $t0, -3460($fp)
	lw $t1, -3464($fp)
	sub $t0, $t0, $t1
	sw $t0, -3468($fp)
	li $t0, 15474
	sw $t0, -3472($fp)
	lw $t1, -3468($fp)
	lw $t2, -3472($fp)
	bge $t1, $t2, label136
	j label137
label136:
	li $t0, 1
	sw $t0, -3456($fp)
label137:
	li $t0, 0
	sw $t0, -3476($fp)
	addi $t0, $fp, -248
	sw $t0, -3480($fp)
	lw $t0, -1380($fp)
	sw $t0, -3484($fp)
	li $t0, 4
	lw $t1, -3484($fp)
	mul $t0, $t0, $t1
	sw $t0, -3488($fp)
	lw $t0, -3488($fp)
	lw $t1, -3480($fp)
	add $t0, $t0, $t1
	sw $t0, -3492($fp)
	lw $t0, -3492($fp)
	lw $t1, 0($t0)
	sw $t1, -3496($fp)
	lw $t1, -3496($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label139
label140:
	li $t0, 48531
	sw $t0, -3500($fp)
	lw $t1, -3500($fp)
	li $t2, 0
	bne $t1, $t2, label138
	j label139
label138:
	li $t0, 1
	sw $t0, -3476($fp)
label139:
	li $t0, 0
	sw $t0, -3504($fp)
	lw $t0, -2472($fp)
	sw $t0, -3508($fp)
	lw $t1, -3508($fp)
	li $t2, 0
	bne $t1, $t2, label142
	j label141
label141:
	li $t0, 1
	sw $t0, -3504($fp)
label142:
	li $t0, 0
	lw $t1, -3504($fp)
	sub $t0, $t0, $t1
	sw $t0, -3512($fp)
	li $t0, 0
	sw $t0, -3516($fp)
	lw $t0, -1380($fp)
	sw $t0, -3520($fp)
	lw $t1, -3520($fp)
	li $t2, 0
	bne $t1, $t2, label146
	j label144
label146:
	li $t0, 52916
	sw $t0, -3524($fp)
	lw $t1, -3524($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label144
label145:
	li $t0, 45179
	sw $t0, -3528($fp)
	lw $t1, -3528($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label144
label143:
	li $t0, 1
	sw $t0, -3516($fp)
label144:
	lw $t0, -1152($fp)
	sw $t0, -3532($fp)
	lw $t0, -1164($fp)
	sw $t0, -3536($fp)
	lw $t0, -3532($fp)
	lw $t1, -3536($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3540($fp)
	li $t0, 20792
	sw $t0, -3544($fp)
	li $t0, 0
	sw $t0, -3548($fp)
	li $t0, 35245
	sw $t0, -3552($fp)
	lw $t0, -1092($fp)
	sw $t0, -3556($fp)
	lw $t1, -3552($fp)
	lw $t2, -3556($fp)
	beq $t1, $t2, label149
	j label148
label149:
	li $t0, 57160
	sw $t0, -3560($fp)
	lw $t1, -3560($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label148
label147:
	li $t0, 1
	sw $t0, -3548($fp)
label148:
	addi $sp, $sp, -4
	lw $t0, -3512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3548($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3564($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -3568($fp)
	li $t0, 56236
	sw $t0, -3572($fp)
	li $t0, 0
	lw $t1, -3572($fp)
	sub $t0, $t0, $t1
	sw $t0, -3576($fp)
	li $t0, 53393
	sw $t0, -3580($fp)
	lw $t1, -3576($fp)
	lw $t2, -3580($fp)
	bne $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -3568($fp)
label151:
	addi $sp, $sp, -4
	lw $t0, -3444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3568($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3584($fp)
	addi $sp, $sp, 24
	lw $t1, -3440($fp)
	lw $t2, -3584($fp)
	bge $t1, $t2, label131
	j label132
label131:
	li $t0, 1
	sw $t0, -3436($fp)
label132:
	lw $ra, -4($fp)
	lw $v0, -3436($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label130
label129:
	addi $t0, $fp, -260
	sw $t0, -3588($fp)
	li $t0, 0
	sw $t0, -3592($fp)
	li $t0, 20949
	sw $t0, -3596($fp)
	lw $t0, -1176($fp)
	sw $t0, -3600($fp)
	lw $t1, -3596($fp)
	lw $t2, -3600($fp)
	bne $t1, $t2, label155
	j label156
label155:
	li $t0, 1
	sw $t0, -3592($fp)
label156:
	li $t0, 4
	lw $t1, -3592($fp)
	mul $t0, $t0, $t1
	sw $t0, -3604($fp)
	lw $t0, -3604($fp)
	lw $t1, -3588($fp)
	add $t0, $t0, $t1
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	lw $t1, 0($t0)
	sw $t1, -3612($fp)
	addi $t0, $fp, -56
	sw $t0, -3616($fp)
	lw $t0, -1356($fp)
	sw $t0, -3620($fp)
	li $t0, 4
	lw $t1, -3620($fp)
	mul $t0, $t0, $t1
	sw $t0, -3624($fp)
	lw $t0, -3624($fp)
	lw $t1, -3616($fp)
	add $t0, $t0, $t1
	sw $t0, -3628($fp)
	lw $t0, -3628($fp)
	lw $t1, 0($t0)
	sw $t1, -3632($fp)
	lw $t0, -3612($fp)
	lw $t1, -3632($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3636($fp)
	li $t0, 64081
	sw $t0, -3640($fp)
	li $t0, 5486
	sw $t0, -3644($fp)
	lw $t0, -3640($fp)
	lw $t1, -3644($fp)
	sub $t0, $t0, $t1
	sw $t0, -3648($fp)
	li $t0, 4632
	sw $t0, -3652($fp)
	lw $t0, -3648($fp)
	lw $t1, -3652($fp)
	add $t0, $t0, $t1
	sw $t0, -3656($fp)
	li $t0, 0
	sw $t0, -3660($fp)
	addi $t0, $fp, -40
	sw $t0, -3664($fp)
	li $t0, 4
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
	lw $t1, -3680($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label159
label159:
	lw $t0, -588($fp)
	sw $t0, -3684($fp)
	lw $t1, -3684($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label158
label157:
	li $t0, 1
	sw $t0, -3660($fp)
label158:
	li $t0, 0
	sw $t0, -3688($fp)
	li $t0, 62829
	sw $t0, -3692($fp)
	lw $t0, 20($fp)
	sw $t0, -3696($fp)
	lw $t1, -3692($fp)
	lw $t2, -3696($fp)
	beq $t1, $t2, label160
	j label162
label162:
	lw $t0, -1224($fp)
	sw $t0, -3700($fp)
	lw $t1, -3700($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label161
label160:
	li $t0, 1
	sw $t0, -3688($fp)
label161:
	li $t0, 47106
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -3708($fp)
	li $t0, 20614
	sw $t0, -3712($fp)
	li $t0, 43414
	sw $t0, -3716($fp)
	lw $t0, -3712($fp)
	lw $t1, -3716($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3720($fp)
	lw $t0, -1092($fp)
	sw $t0, -3724($fp)
	lw $t0, -3720($fp)
	lw $t1, -3724($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3728($fp)
	lw $t0, -756($fp)
	sw $t0, -3732($fp)
	li $t0, 0
	sw $t0, -3736($fp)
	li $t0, 39458
	sw $t0, -3740($fp)
	li $t0, 4831
	sw $t0, -3744($fp)
	lw $t0, -3740($fp)
	lw $t1, -3744($fp)
	add $t0, $t0, $t1
	sw $t0, -3748($fp)
	lw $t1, -3748($fp)
	li $t2, 0
	bne $t1, $t2, label165
	j label164
label165:
	lw $t0, -744($fp)
	sw $t0, -3752($fp)
	lw $t1, -3752($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label164
label163:
	li $t0, 1
	sw $t0, -3736($fp)
label164:
	lw $t0, -1428($fp)
	sw $t0, -3756($fp)
	lw $t0, -780($fp)
	sw $t0, -3760($fp)
	lw $t0, -3756($fp)
	lw $t1, -3760($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3764($fp)
	li $t0, 5785
	sw $t0, -3768($fp)
	lw $t0, -3764($fp)
	lw $t1, -3768($fp)
	add $t0, $t0, $t1
	sw $t0, -3772($fp)
	li $t0, 0
	sw $t0, -3776($fp)
	lw $t0, -1416($fp)
	sw $t0, -3780($fp)
	lw $t1, -3780($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label167
label166:
	li $t0, 1
	sw $t0, -3776($fp)
label167:
	addi $sp, $sp, -4
	lw $t0, -3728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3776($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3784($fp)
	addi $sp, $sp, 24
	li $t0, 28503
	sw $t0, -3788($fp)
	lw $t0, -3784($fp)
	lw $t1, -3788($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3792($fp)
	addi $sp, $sp, -4
	lw $t0, -3656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3792($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3796($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -3796($fp)
	sub $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t0, -3636($fp)
	lw $t1, -3800($fp)
	mul $t0, $t0, $t1
	sw $t0, -3804($fp)
	lw $t1, -3804($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label153
label152:
	li $t0, 10320
	sw $t0, -3912($fp)
	addi $t0, $fp, -3828
	sw $t0, -3916($fp)
	li $t0, 0
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
	li $t0, 7717
	sw $t0, -3936($fp)
	addi $t0, $fp, -3828
	sw $t0, -3940($fp)
	li $t0, 1
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
	li $t0, 19850
	sw $t0, -3960($fp)
	addi $t0, $fp, -3828
	sw $t0, -3964($fp)
	li $t0, 2
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
	li $t0, 11365
	sw $t0, -3984($fp)
	addi $t0, $fp, -3828
	sw $t0, -3988($fp)
	li $t0, 3
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
	li $t0, 16560
	sw $t0, -4008($fp)
	addi $t0, $fp, -3828
	sw $t0, -4012($fp)
	li $t0, 4
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
	li $t0, 59739
	sw $t0, -4032($fp)
	addi $t0, $fp, -3828
	sw $t0, -4036($fp)
	li $t0, 5
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
	li $t0, 2066
	sw $t0, -4056($fp)
	addi $t0, $fp, -3832
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
	li $t0, 4417
	sw $t0, -4080($fp)
	lw $t0, -4080($fp)
	sw $t0, -4084($fp)
	lw $t0, -4084($fp)
	sw $t0, -4088($fp)
	li $t0, 29448
	sw $t0, -4092($fp)
	addi $t0, $fp, -3872
	sw $t0, -4096($fp)
	li $t0, 0
	sw $t0, -4100($fp)
	lw $t0, -4100($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4104($fp)
	lw $t0, -4096($fp)
	lw $t1, -4104($fp)
	add $t0, $t0, $t1
	sw $t0, -4108($fp)
	lw $t0, -4092($fp)
	lw $t1, -4108($fp)
	sw $t0, 0($t1)
	lw $t0, -4108($fp)
	lw $t1, 0($t0)
	sw $t1, -4112($fp)
	li $t0, 59226
	sw $t0, -4116($fp)
	addi $t0, $fp, -3872
	sw $t0, -4120($fp)
	li $t0, 1
	sw $t0, -4124($fp)
	lw $t0, -4124($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4128($fp)
	lw $t0, -4120($fp)
	lw $t1, -4128($fp)
	add $t0, $t0, $t1
	sw $t0, -4132($fp)
	lw $t0, -4116($fp)
	lw $t1, -4132($fp)
	sw $t0, 0($t1)
	lw $t0, -4132($fp)
	lw $t1, 0($t0)
	sw $t1, -4136($fp)
	li $t0, 25209
	sw $t0, -4140($fp)
	addi $t0, $fp, -3872
	sw $t0, -4144($fp)
	li $t0, 2
	sw $t0, -4148($fp)
	lw $t0, -4148($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4152($fp)
	lw $t0, -4144($fp)
	lw $t1, -4152($fp)
	add $t0, $t0, $t1
	sw $t0, -4156($fp)
	lw $t0, -4140($fp)
	lw $t1, -4156($fp)
	sw $t0, 0($t1)
	lw $t0, -4156($fp)
	lw $t1, 0($t0)
	sw $t1, -4160($fp)
	li $t0, 16828
	sw $t0, -4164($fp)
	addi $t0, $fp, -3872
	sw $t0, -4168($fp)
	li $t0, 3
	sw $t0, -4172($fp)
	lw $t0, -4172($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4176($fp)
	lw $t0, -4168($fp)
	lw $t1, -4176($fp)
	add $t0, $t0, $t1
	sw $t0, -4180($fp)
	lw $t0, -4164($fp)
	lw $t1, -4180($fp)
	sw $t0, 0($t1)
	lw $t0, -4180($fp)
	lw $t1, 0($t0)
	sw $t1, -4184($fp)
	li $t0, 38869
	sw $t0, -4188($fp)
	addi $t0, $fp, -3872
	sw $t0, -4192($fp)
	li $t0, 4
	sw $t0, -4196($fp)
	lw $t0, -4196($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4200($fp)
	lw $t0, -4192($fp)
	lw $t1, -4200($fp)
	add $t0, $t0, $t1
	sw $t0, -4204($fp)
	lw $t0, -4188($fp)
	lw $t1, -4204($fp)
	sw $t0, 0($t1)
	lw $t0, -4204($fp)
	lw $t1, 0($t0)
	sw $t1, -4208($fp)
	li $t0, 8204
	sw $t0, -4212($fp)
	addi $t0, $fp, -3872
	sw $t0, -4216($fp)
	li $t0, 5
	sw $t0, -4220($fp)
	lw $t0, -4220($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4224($fp)
	lw $t0, -4216($fp)
	lw $t1, -4224($fp)
	add $t0, $t0, $t1
	sw $t0, -4228($fp)
	lw $t0, -4212($fp)
	lw $t1, -4228($fp)
	sw $t0, 0($t1)
	lw $t0, -4228($fp)
	lw $t1, 0($t0)
	sw $t1, -4232($fp)
	li $t0, 22240
	sw $t0, -4236($fp)
	addi $t0, $fp, -3872
	sw $t0, -4240($fp)
	li $t0, 6
	sw $t0, -4244($fp)
	lw $t0, -4244($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4248($fp)
	lw $t0, -4240($fp)
	lw $t1, -4248($fp)
	add $t0, $t0, $t1
	sw $t0, -4252($fp)
	lw $t0, -4236($fp)
	lw $t1, -4252($fp)
	sw $t0, 0($t1)
	lw $t0, -4252($fp)
	lw $t1, 0($t0)
	sw $t1, -4256($fp)
	li $t0, 54343
	sw $t0, -4260($fp)
	addi $t0, $fp, -3872
	sw $t0, -4264($fp)
	li $t0, 7
	sw $t0, -4268($fp)
	lw $t0, -4268($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4272($fp)
	lw $t0, -4264($fp)
	lw $t1, -4272($fp)
	add $t0, $t0, $t1
	sw $t0, -4276($fp)
	lw $t0, -4260($fp)
	lw $t1, -4276($fp)
	sw $t0, 0($t1)
	lw $t0, -4276($fp)
	lw $t1, 0($t0)
	sw $t1, -4280($fp)
	li $t0, 13981
	sw $t0, -4284($fp)
	addi $t0, $fp, -3872
	sw $t0, -4288($fp)
	li $t0, 8
	sw $t0, -4292($fp)
	lw $t0, -4292($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4296($fp)
	lw $t0, -4288($fp)
	lw $t1, -4296($fp)
	add $t0, $t0, $t1
	sw $t0, -4300($fp)
	lw $t0, -4284($fp)
	lw $t1, -4300($fp)
	sw $t0, 0($t1)
	lw $t0, -4300($fp)
	lw $t1, 0($t0)
	sw $t1, -4304($fp)
	li $t0, 43189
	sw $t0, -4308($fp)
	addi $t0, $fp, -3872
	sw $t0, -4312($fp)
	li $t0, 9
	sw $t0, -4316($fp)
	lw $t0, -4316($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4320($fp)
	lw $t0, -4312($fp)
	lw $t1, -4320($fp)
	add $t0, $t0, $t1
	sw $t0, -4324($fp)
	lw $t0, -4308($fp)
	lw $t1, -4324($fp)
	sw $t0, 0($t1)
	lw $t0, -4324($fp)
	lw $t1, 0($t0)
	sw $t1, -4328($fp)
	li $t0, 60128
	sw $t0, -4332($fp)
	addi $t0, $fp, -3908
	sw $t0, -4336($fp)
	li $t0, 0
	sw $t0, -4340($fp)
	lw $t0, -4340($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4344($fp)
	lw $t0, -4336($fp)
	lw $t1, -4344($fp)
	add $t0, $t0, $t1
	sw $t0, -4348($fp)
	lw $t0, -4332($fp)
	lw $t1, -4348($fp)
	sw $t0, 0($t1)
	lw $t0, -4348($fp)
	lw $t1, 0($t0)
	sw $t1, -4352($fp)
	li $t0, 53439
	sw $t0, -4356($fp)
	addi $t0, $fp, -3908
	sw $t0, -4360($fp)
	li $t0, 1
	sw $t0, -4364($fp)
	lw $t0, -4364($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4368($fp)
	lw $t0, -4360($fp)
	lw $t1, -4368($fp)
	add $t0, $t0, $t1
	sw $t0, -4372($fp)
	lw $t0, -4356($fp)
	lw $t1, -4372($fp)
	sw $t0, 0($t1)
	lw $t0, -4372($fp)
	lw $t1, 0($t0)
	sw $t1, -4376($fp)
	li $t0, 48020
	sw $t0, -4380($fp)
	addi $t0, $fp, -3908
	sw $t0, -4384($fp)
	li $t0, 2
	sw $t0, -4388($fp)
	lw $t0, -4388($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4392($fp)
	lw $t0, -4384($fp)
	lw $t1, -4392($fp)
	add $t0, $t0, $t1
	sw $t0, -4396($fp)
	lw $t0, -4380($fp)
	lw $t1, -4396($fp)
	sw $t0, 0($t1)
	lw $t0, -4396($fp)
	lw $t1, 0($t0)
	sw $t1, -4400($fp)
	li $t0, 15206
	sw $t0, -4404($fp)
	addi $t0, $fp, -3908
	sw $t0, -4408($fp)
	li $t0, 3
	sw $t0, -4412($fp)
	lw $t0, -4412($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4416($fp)
	lw $t0, -4408($fp)
	lw $t1, -4416($fp)
	add $t0, $t0, $t1
	sw $t0, -4420($fp)
	lw $t0, -4404($fp)
	lw $t1, -4420($fp)
	sw $t0, 0($t1)
	lw $t0, -4420($fp)
	lw $t1, 0($t0)
	sw $t1, -4424($fp)
	li $t0, 31317
	sw $t0, -4428($fp)
	addi $t0, $fp, -3908
	sw $t0, -4432($fp)
	li $t0, 4
	sw $t0, -4436($fp)
	lw $t0, -4436($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4440($fp)
	lw $t0, -4432($fp)
	lw $t1, -4440($fp)
	add $t0, $t0, $t1
	sw $t0, -4444($fp)
	lw $t0, -4428($fp)
	lw $t1, -4444($fp)
	sw $t0, 0($t1)
	lw $t0, -4444($fp)
	lw $t1, 0($t0)
	sw $t1, -4448($fp)
	li $t0, 10987
	sw $t0, -4452($fp)
	addi $t0, $fp, -3908
	sw $t0, -4456($fp)
	li $t0, 5
	sw $t0, -4460($fp)
	lw $t0, -4460($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4464($fp)
	lw $t0, -4456($fp)
	lw $t1, -4464($fp)
	add $t0, $t0, $t1
	sw $t0, -4468($fp)
	lw $t0, -4452($fp)
	lw $t1, -4468($fp)
	sw $t0, 0($t1)
	lw $t0, -4468($fp)
	lw $t1, 0($t0)
	sw $t1, -4472($fp)
	li $t0, 62312
	sw $t0, -4476($fp)
	addi $t0, $fp, -3908
	sw $t0, -4480($fp)
	li $t0, 6
	sw $t0, -4484($fp)
	lw $t0, -4484($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4488($fp)
	lw $t0, -4480($fp)
	lw $t1, -4488($fp)
	add $t0, $t0, $t1
	sw $t0, -4492($fp)
	lw $t0, -4476($fp)
	lw $t1, -4492($fp)
	sw $t0, 0($t1)
	lw $t0, -4492($fp)
	lw $t1, 0($t0)
	sw $t1, -4496($fp)
	li $t0, 28610
	sw $t0, -4500($fp)
	addi $t0, $fp, -3908
	sw $t0, -4504($fp)
	li $t0, 7
	sw $t0, -4508($fp)
	lw $t0, -4508($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4512($fp)
	lw $t0, -4504($fp)
	lw $t1, -4512($fp)
	add $t0, $t0, $t1
	sw $t0, -4516($fp)
	lw $t0, -4500($fp)
	lw $t1, -4516($fp)
	sw $t0, 0($t1)
	lw $t0, -4516($fp)
	lw $t1, 0($t0)
	sw $t1, -4520($fp)
	li $t0, 54343
	sw $t0, -4524($fp)
	addi $t0, $fp, -3908
	sw $t0, -4528($fp)
	li $t0, 8
	sw $t0, -4532($fp)
	lw $t0, -4532($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4536($fp)
	lw $t0, -4528($fp)
	lw $t1, -4536($fp)
	add $t0, $t0, $t1
	sw $t0, -4540($fp)
	lw $t0, -4524($fp)
	lw $t1, -4540($fp)
	sw $t0, 0($t1)
	lw $t0, -4540($fp)
	lw $t1, 0($t0)
	sw $t1, -4544($fp)
	li $t0, 0
	sw $t0, -4548($fp)
	li $t0, 27871
	sw $t0, -4552($fp)
	li $t0, 0
	lw $t1, -4552($fp)
	sub $t0, $t0, $t1
	sw $t0, -4556($fp)
	li $t0, 37475
	sw $t0, -4560($fp)
	lw $t0, -4560($fp)
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	sw $t0, -4564($fp)
	li $t0, 0
	sw $t0, -4568($fp)
	lw $t0, -1284($fp)
	sw $t0, -4572($fp)
	lw $t1, -4572($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label170
label170:
	li $t0, 1
	sw $t0, -4568($fp)
label171:
	li $t0, 0
	sw $t0, -4576($fp)
	addi $t0, $fp, -3908
	sw $t0, -4580($fp)
	li $t0, 0
	sw $t0, -4584($fp)
	li $t0, 4
	lw $t1, -4584($fp)
	mul $t0, $t0, $t1
	sw $t0, -4588($fp)
	lw $t0, -4588($fp)
	lw $t1, -4580($fp)
	add $t0, $t0, $t1
	sw $t0, -4592($fp)
	lw $t0, -4592($fp)
	lw $t1, 0($t0)
	sw $t1, -4596($fp)
	lw $t0, -600($fp)
	sw $t0, -4600($fp)
	lw $t1, -4596($fp)
	lw $t2, -4600($fp)
	beq $t1, $t2, label172
	j label173
label172:
	li $t0, 1
	sw $t0, -4576($fp)
label173:
	lw $t0, -1260($fp)
	sw $t0, -4604($fp)
	li $t0, 27155
	sw $t0, -4608($fp)
	lw $t0, -4608($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -4612($fp)
	addi $sp, $sp, -4
	lw $t0, -4564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4612($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4616($fp)
	addi $sp, $sp, 24
	lw $t0, -4556($fp)
	lw $t1, -4616($fp)
	add $t0, $t0, $t1
	sw $t0, -4620($fp)
	lw $t0, -2448($fp)
	sw $t0, -4624($fp)
	li $t0, 2010
	sw $t0, -4628($fp)
	lw $t0, -4624($fp)
	lw $t1, -4628($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4632($fp)
	lw $t1, -4620($fp)
	lw $t2, -4632($fp)
	bne $t1, $t2, label168
	j label169
label168:
	li $t0, 1
	sw $t0, -4548($fp)
label169:
label174:
	addi $t0, $fp, -48
	sw $t0, -4636($fp)
	li $t0, 52354
	sw $t0, -4640($fp)
	li $t0, 0
	lw $t1, -4640($fp)
	sub $t0, $t0, $t1
	sw $t0, -4644($fp)
	lw $t0, -2460($fp)
	sw $t0, -4648($fp)
	lw $t0, -4644($fp)
	lw $t1, -4648($fp)
	sub $t0, $t0, $t1
	sw $t0, -4652($fp)
	li $t0, 4
	lw $t1, -4652($fp)
	mul $t0, $t0, $t1
	sw $t0, -4656($fp)
	lw $t0, -4656($fp)
	lw $t1, -4636($fp)
	add $t0, $t0, $t1
	sw $t0, -4660($fp)
	lw $t0, -4660($fp)
	lw $t1, 0($t0)
	sw $t1, -4664($fp)
	lw $t1, -4664($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label176
label177:
	lw $t0, -1308($fp)
	sw $t0, -4668($fp)
	lw $t0, -792($fp)
	sw $t0, -4672($fp)
	lw $t0, -4668($fp)
	lw $t1, -4672($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4676($fp)
	lw $t1, -4676($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label176
label175:
	addi $t0, $fp, -3828
	sw $t0, -4680($fp)
	li $t0, 0
	sw $t0, -4684($fp)
	lw $t0, -756($fp)
	sw $t0, -4688($fp)
	li $t0, 48841
	sw $t0, -4692($fp)
	li $t0, 0
	lw $t1, -4692($fp)
	sub $t0, $t0, $t1
	sw $t0, -4696($fp)
	lw $t1, -4688($fp)
	lw $t2, -4696($fp)
	bgt $t1, $t2, label178
	j label179
label178:
	li $t0, 1
	sw $t0, -4684($fp)
label179:
	li $t0, 4
	lw $t1, -4684($fp)
	mul $t0, $t0, $t1
	sw $t0, -4700($fp)
	lw $t0, -4700($fp)
	lw $t1, -4680($fp)
	add $t0, $t0, $t1
	sw $t0, -4704($fp)
	lw $t0, -4704($fp)
	lw $t1, 0($t0)
	sw $t1, -4708($fp)
	j label174
label176:
	addi $t0, $fp, -3832
	sw $t0, -4712($fp)
	li $t0, 0
	sw $t0, -4716($fp)
	li $t0, 18570
	sw $t0, -4720($fp)
	lw $t0, -4084($fp)
	sw $t0, -4724($fp)
	lw $t0, -4720($fp)
	lw $t1, -4724($fp)
	sub $t0, $t0, $t1
	sw $t0, -4728($fp)
	lw $t0, -1248($fp)
	sw $t0, -4732($fp)
	lw $t1, -4728($fp)
	lw $t2, -4732($fp)
	beq $t1, $t2, label180
	j label181
label180:
	li $t0, 1
	sw $t0, -4716($fp)
label181:
	li $t0, 4
	lw $t1, -4716($fp)
	mul $t0, $t0, $t1
	sw $t0, -4736($fp)
	lw $t0, -4736($fp)
	lw $t1, -4712($fp)
	add $t0, $t0, $t1
	sw $t0, -4740($fp)
	lw $t0, -4740($fp)
	lw $t1, 0($t0)
	sw $t1, -4744($fp)
	li $t0, 0
	sw $t0, -4748($fp)
	lw $t0, -1212($fp)
	sw $t0, -4752($fp)
	lw $t1, -4752($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label183
label182:
	li $t0, 1
	sw $t0, -4748($fp)
label183:
	li $t0, 0
	lw $t1, -4748($fp)
	sub $t0, $t0, $t1
	sw $t0, -4756($fp)
	lw $t0, -4744($fp)
	lw $t1, -4756($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4760($fp)
	addi $t0, $fp, -3828
	sw $t0, -4764($fp)
	li $t0, 0
	sw $t0, -4768($fp)
	li $t0, 4
	lw $t1, -4768($fp)
	mul $t0, $t0, $t1
	sw $t0, -4772($fp)
	lw $t0, -4772($fp)
	lw $t1, -4764($fp)
	add $t0, $t0, $t1
	sw $t0, -4776($fp)
	lw $t0, -4776($fp)
	lw $t1, 0($t0)
	sw $t1, -4780($fp)
	lw $t0, -4780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3828
	sw $t0, -4784($fp)
	li $t0, 1
	sw $t0, -4788($fp)
	li $t0, 4
	lw $t1, -4788($fp)
	mul $t0, $t0, $t1
	sw $t0, -4792($fp)
	lw $t0, -4792($fp)
	lw $t1, -4784($fp)
	add $t0, $t0, $t1
	sw $t0, -4796($fp)
	lw $t0, -4796($fp)
	lw $t1, 0($t0)
	sw $t1, -4800($fp)
	lw $t0, -4800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3828
	sw $t0, -4804($fp)
	li $t0, 2
	sw $t0, -4808($fp)
	li $t0, 4
	lw $t1, -4808($fp)
	mul $t0, $t0, $t1
	sw $t0, -4812($fp)
	lw $t0, -4812($fp)
	lw $t1, -4804($fp)
	add $t0, $t0, $t1
	sw $t0, -4816($fp)
	lw $t0, -4816($fp)
	lw $t1, 0($t0)
	sw $t1, -4820($fp)
	lw $t0, -4820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3828
	sw $t0, -4824($fp)
	li $t0, 3
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
	lw $t0, -4840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3828
	sw $t0, -4844($fp)
	li $t0, 4
	sw $t0, -4848($fp)
	li $t0, 4
	lw $t1, -4848($fp)
	mul $t0, $t0, $t1
	sw $t0, -4852($fp)
	lw $t0, -4852($fp)
	lw $t1, -4844($fp)
	add $t0, $t0, $t1
	sw $t0, -4856($fp)
	lw $t0, -4856($fp)
	lw $t1, 0($t0)
	sw $t1, -4860($fp)
	lw $t0, -4860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3828
	sw $t0, -4864($fp)
	li $t0, 5
	sw $t0, -4868($fp)
	li $t0, 4
	lw $t1, -4868($fp)
	mul $t0, $t0, $t1
	sw $t0, -4872($fp)
	lw $t0, -4872($fp)
	lw $t1, -4864($fp)
	add $t0, $t0, $t1
	sw $t0, -4876($fp)
	lw $t0, -4876($fp)
	lw $t1, 0($t0)
	sw $t1, -4880($fp)
	lw $t0, -4880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3832
	sw $t0, -4884($fp)
	li $t0, 0
	sw $t0, -4888($fp)
	li $t0, 4
	lw $t1, -4888($fp)
	mul $t0, $t0, $t1
	sw $t0, -4892($fp)
	lw $t0, -4892($fp)
	lw $t1, -4884($fp)
	add $t0, $t0, $t1
	sw $t0, -4896($fp)
	lw $t0, -4896($fp)
	lw $t1, 0($t0)
	sw $t1, -4900($fp)
	lw $t0, -4900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4084($fp)
	sw $t0, -4904($fp)
	lw $t0, -4904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3872
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
	addi $t0, $fp, -3872
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
	addi $t0, $fp, -3872
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
	addi $t0, $fp, -3872
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
	addi $t0, $fp, -3872
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
	addi $t0, $fp, -3872
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
	addi $t0, $fp, -3872
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
	addi $t0, $fp, -3872
	sw $t0, -5048($fp)
	li $t0, 7
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
	addi $t0, $fp, -3872
	sw $t0, -5068($fp)
	li $t0, 8
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
	addi $t0, $fp, -3872
	sw $t0, -5088($fp)
	li $t0, 9
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
	addi $t0, $fp, -3908
	sw $t0, -5108($fp)
	li $t0, 0
	sw $t0, -5112($fp)
	li $t0, 4
	lw $t1, -5112($fp)
	mul $t0, $t0, $t1
	sw $t0, -5116($fp)
	lw $t0, -5116($fp)
	lw $t1, -5108($fp)
	add $t0, $t0, $t1
	sw $t0, -5120($fp)
	lw $t0, -5120($fp)
	lw $t1, 0($t0)
	sw $t1, -5124($fp)
	lw $t0, -5124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3908
	sw $t0, -5128($fp)
	li $t0, 1
	sw $t0, -5132($fp)
	li $t0, 4
	lw $t1, -5132($fp)
	mul $t0, $t0, $t1
	sw $t0, -5136($fp)
	lw $t0, -5136($fp)
	lw $t1, -5128($fp)
	add $t0, $t0, $t1
	sw $t0, -5140($fp)
	lw $t0, -5140($fp)
	lw $t1, 0($t0)
	sw $t1, -5144($fp)
	lw $t0, -5144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3908
	sw $t0, -5148($fp)
	li $t0, 2
	sw $t0, -5152($fp)
	li $t0, 4
	lw $t1, -5152($fp)
	mul $t0, $t0, $t1
	sw $t0, -5156($fp)
	lw $t0, -5156($fp)
	lw $t1, -5148($fp)
	add $t0, $t0, $t1
	sw $t0, -5160($fp)
	lw $t0, -5160($fp)
	lw $t1, 0($t0)
	sw $t1, -5164($fp)
	lw $t0, -5164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3908
	sw $t0, -5168($fp)
	li $t0, 3
	sw $t0, -5172($fp)
	li $t0, 4
	lw $t1, -5172($fp)
	mul $t0, $t0, $t1
	sw $t0, -5176($fp)
	lw $t0, -5176($fp)
	lw $t1, -5168($fp)
	add $t0, $t0, $t1
	sw $t0, -5180($fp)
	lw $t0, -5180($fp)
	lw $t1, 0($t0)
	sw $t1, -5184($fp)
	lw $t0, -5184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3908
	sw $t0, -5188($fp)
	li $t0, 4
	sw $t0, -5192($fp)
	li $t0, 4
	lw $t1, -5192($fp)
	mul $t0, $t0, $t1
	sw $t0, -5196($fp)
	lw $t0, -5196($fp)
	lw $t1, -5188($fp)
	add $t0, $t0, $t1
	sw $t0, -5200($fp)
	lw $t0, -5200($fp)
	lw $t1, 0($t0)
	sw $t1, -5204($fp)
	lw $t0, -5204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3908
	sw $t0, -5208($fp)
	li $t0, 5
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
	lw $t0, -5224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3908
	sw $t0, -5228($fp)
	li $t0, 6
	sw $t0, -5232($fp)
	li $t0, 4
	lw $t1, -5232($fp)
	mul $t0, $t0, $t1
	sw $t0, -5236($fp)
	lw $t0, -5236($fp)
	lw $t1, -5228($fp)
	add $t0, $t0, $t1
	sw $t0, -5240($fp)
	lw $t0, -5240($fp)
	lw $t1, 0($t0)
	sw $t1, -5244($fp)
	lw $t0, -5244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3908
	sw $t0, -5248($fp)
	li $t0, 7
	sw $t0, -5252($fp)
	li $t0, 4
	lw $t1, -5252($fp)
	mul $t0, $t0, $t1
	sw $t0, -5256($fp)
	lw $t0, -5256($fp)
	lw $t1, -5248($fp)
	add $t0, $t0, $t1
	sw $t0, -5260($fp)
	lw $t0, -5260($fp)
	lw $t1, 0($t0)
	sw $t1, -5264($fp)
	lw $t0, -5264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3908
	sw $t0, -5268($fp)
	li $t0, 8
	sw $t0, -5272($fp)
	li $t0, 4
	lw $t1, -5272($fp)
	mul $t0, $t0, $t1
	sw $t0, -5276($fp)
	lw $t0, -5276($fp)
	lw $t1, -5268($fp)
	add $t0, $t0, $t1
	sw $t0, -5280($fp)
	lw $t0, -5280($fp)
	lw $t1, 0($t0)
	sw $t1, -5284($fp)
	lw $t0, -5284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3872
	sw $t0, -5288($fp)
	li $t0, 0
	sw $t0, -5292($fp)
	lw $t0, -684($fp)
	sw $t0, -5296($fp)
	li $t0, 46557
	sw $t0, -5300($fp)
	lw $t0, -5296($fp)
	lw $t1, -5300($fp)
	sub $t0, $t0, $t1
	sw $t0, -5304($fp)
	li $t0, 50907
	sw $t0, -5308($fp)
	lw $t0, -5304($fp)
	lw $t1, -5308($fp)
	add $t0, $t0, $t1
	sw $t0, -5312($fp)
	li $t0, 0
	sw $t0, -5316($fp)
	li $t0, 22987
	sw $t0, -5320($fp)
	lw $t1, -5320($fp)
	li $t2, 0
	bne $t1, $t2, label187
	j label186
label186:
	li $t0, 1
	sw $t0, -5316($fp)
label187:
	lw $t1, -5312($fp)
	lw $t2, -5316($fp)
	beq $t1, $t2, label184
	j label185
label184:
	li $t0, 1
	sw $t0, -5292($fp)
label185:
	li $t0, 4
	lw $t1, -5292($fp)
	mul $t0, $t0, $t1
	sw $t0, -5324($fp)
	lw $t0, -5324($fp)
	lw $t1, -5288($fp)
	add $t0, $t0, $t1
	sw $t0, -5328($fp)
	lw $t0, -5328($fp)
	lw $t1, 0($t0)
	sw $t1, -5332($fp)
	lw $ra, -4($fp)
	lw $v0, -5332($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -5336($fp)
	li $t0, 0
	sw $t0, -5340($fp)
	lw $t0, -768($fp)
	sw $t0, -5344($fp)
	lw $t1, -5344($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label190
label190:
	li $t0, 1
	sw $t0, -5340($fp)
label191:
	li $t0, 10470
	sw $t0, -5348($fp)
	lw $t0, -5340($fp)
	lw $t1, -5348($fp)
	mul $t0, $t0, $t1
	sw $t0, -5352($fp)
	li $t0, 44597
	sw $t0, -5356($fp)
	li $t0, 0
	lw $t1, -5356($fp)
	sub $t0, $t0, $t1
	sw $t0, -5360($fp)
	lw $t0, -5352($fp)
	lw $t1, -5360($fp)
	add $t0, $t0, $t1
	sw $t0, -5364($fp)
	li $t0, 0
	sw $t0, -5368($fp)
	li $t0, 48196
	sw $t0, -5372($fp)
	lw $t1, -5372($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label192
label192:
	li $t0, 1
	sw $t0, -5368($fp)
label193:
	lw $t0, -5364($fp)
	lw $t1, -5368($fp)
	sub $t0, $t0, $t1
	sw $t0, -5376($fp)
	addi $t0, $fp, -364
	sw $t0, -5380($fp)
	li $t0, 0
	sw $t0, -5384($fp)
	lw $t0, -780($fp)
	sw $t0, -5388($fp)
	lw $t1, -5388($fp)
	li $t2, 0
	bne $t1, $t2, label194
	j label196
label196:
	li $t0, 27298
	sw $t0, -5392($fp)
	lw $t1, -5392($fp)
	li $t2, 0
	bne $t1, $t2, label194
	j label195
label194:
	li $t0, 1
	sw $t0, -5384($fp)
label195:
	li $t0, 4
	lw $t1, -5384($fp)
	mul $t0, $t0, $t1
	sw $t0, -5396($fp)
	lw $t0, -5396($fp)
	lw $t1, -5380($fp)
	add $t0, $t0, $t1
	sw $t0, -5400($fp)
	lw $t0, -5400($fp)
	lw $t1, 0($t0)
	sw $t1, -5404($fp)
	lw $t1, -5376($fp)
	lw $t2, -5404($fp)
	blt $t1, $t2, label188
	j label189
label188:
	li $t0, 1
	sw $t0, -5336($fp)
label189:
	lw $t0, -1404($fp)
	sw $t0, -5408($fp)
	j label154
label153:
	li $t0, 17930
	sw $t0, -5412($fp)
	lw $t0, -5412($fp)
	sw $t0, -5416($fp)
	lw $t0, -5416($fp)
	sw $t0, -5420($fp)
	li $t0, 56400
	sw $t0, -5424($fp)
	lw $t0, -5424($fp)
	sw $t0, -5428($fp)
	lw $t0, -5428($fp)
	sw $t0, -5432($fp)
label197:
	lw $t0, 16($fp)
	sw $t0, -5436($fp)
	li $t0, 16536
	sw $t0, -5440($fp)
	lw $t0, -5436($fp)
	lw $t1, -5440($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5444($fp)
	li $t0, 58285
	sw $t0, -5448($fp)
	li $t0, 0
	lw $t1, -5448($fp)
	sub $t0, $t0, $t1
	sw $t0, -5452($fp)
	li $t0, 9676
	sw $t0, -5456($fp)
	lw $t0, -5452($fp)
	lw $t1, -5456($fp)
	sub $t0, $t0, $t1
	sw $t0, -5460($fp)
	li $t0, 0
	sw $t0, -5464($fp)
	li $t0, 1330
	sw $t0, -5468($fp)
	li $t0, 0
	lw $t1, -5468($fp)
	sub $t0, $t0, $t1
	sw $t0, -5472($fp)
	lw $t0, 12($fp)
	sw $t0, -5476($fp)
	lw $t1, -5472($fp)
	lw $t2, -5476($fp)
	bne $t1, $t2, label202
	j label203
label202:
	li $t0, 1
	sw $t0, -5464($fp)
label203:
	li $t0, 0
	sw $t0, -5480($fp)
	lw $t0, -1224($fp)
	sw $t0, -5484($fp)
	lw $t0, -1476($fp)
	sw $t0, -5488($fp)
	lw $t1, -5484($fp)
	lw $t2, -5488($fp)
	beq $t1, $t2, label206
	j label205
label206:
	lw $t0, 8($fp)
	sw $t0, -5492($fp)
	lw $t1, -5492($fp)
	li $t2, 0
	bne $t1, $t2, label204
	j label205
label204:
	li $t0, 1
	sw $t0, -5480($fp)
label205:
	li $t0, 0
	sw $t0, -5496($fp)
	li $t0, 0
	sw $t0, -5500($fp)
	lw $t0, -1872($fp)
	sw $t0, -5504($fp)
	li $t0, 4845
	sw $t0, -5508($fp)
	lw $t1, -5504($fp)
	lw $t2, -5508($fp)
	bne $t1, $t2, label209
	j label210
label209:
	li $t0, 1
	sw $t0, -5500($fp)
label210:
	li $t0, 27191
	sw $t0, -5512($fp)
	lw $t1, -5500($fp)
	lw $t2, -5512($fp)
	bne $t1, $t2, label207
	j label208
label207:
	li $t0, 1
	sw $t0, -5496($fp)
label208:
	li $t0, 6737
	sw $t0, -5516($fp)
	lw $t0, 4($fp)
	sw $t0, -5520($fp)
	lw $t0, -5516($fp)
	lw $t1, -5520($fp)
	add $t0, $t0, $t1
	sw $t0, -5524($fp)
	lw $t0, -2472($fp)
	sw $t0, -5528($fp)
	lw $t0, -1284($fp)
	sw $t0, -5532($fp)
	li $t0, 49538
	sw $t0, -5536($fp)
	lw $t0, -5532($fp)
	lw $t1, -5536($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5540($fp)
	li $t0, 0
	lw $t1, -5540($fp)
	sub $t0, $t0, $t1
	sw $t0, -5544($fp)
	addi $sp, $sp, -4
	lw $t0, -5480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5544($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5548($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -5552($fp)
	lw $t0, -5416($fp)
	sw $t0, -5556($fp)
	lw $t1, -5556($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label211
label211:
	li $t0, 1
	sw $t0, -5552($fp)
label212:
	lw $t0, -1836($fp)
	sw $t0, -5560($fp)
	lw $t0, -5552($fp)
	lw $t1, -5560($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5564($fp)
	addi $sp, $sp, -4
	lw $t0, -5444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5564($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5568($fp)
	addi $sp, $sp, 24
	lw $t1, -5568($fp)
	li $t2, 0
	bne $t1, $t2, label201
	j label200
label201:
	lw $t0, -792($fp)
	sw $t0, -5572($fp)
	li $t0, 41184
	sw $t0, -5576($fp)
	lw $t0, -5572($fp)
	lw $t1, -5576($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5580($fp)
	li $t0, 0
	sw $t0, -5584($fp)
	li $t0, 0
	sw $t0, -5588($fp)
	li $t0, 52677
	sw $t0, -5592($fp)
	lw $t1, -5592($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label215
label215:
	li $t0, 1
	sw $t0, -5588($fp)
label216:
	li $t0, 9471
	sw $t0, -5596($fp)
	lw $t1, -5588($fp)
	lw $t2, -5596($fp)
	bgt $t1, $t2, label213
	j label214
label213:
	li $t0, 1
	sw $t0, -5584($fp)
label214:
	lw $t0, -1164($fp)
	sw $t0, -5600($fp)
	li $t0, 0
	sw $t0, -5604($fp)
	lw $t0, -1332($fp)
	sw $t0, -5608($fp)
	lw $t1, -5608($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label217
label217:
	li $t0, 1
	sw $t0, -5604($fp)
label218:
	li $t0, 0
	lw $t1, -5604($fp)
	sub $t0, $t0, $t1
	sw $t0, -5612($fp)
	li $t0, 13313
	sw $t0, -5616($fp)
	lw $t0, -1740($fp)
	sw $t0, -5620($fp)
	li $t0, 20663
	sw $t0, -5624($fp)
	lw $t0, -5624($fp)
	sw $t0, -5428($fp)
	lw $t0, -5428($fp)
	sw $t0, -5628($fp)
	addi $sp, $sp, -4
	lw $t0, -5600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5628($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5632($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -5636($fp)
	lw $t0, -2436($fp)
	sw $t0, -5640($fp)
	lw $t1, -5640($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label222
label222:
	lw $t0, -792($fp)
	sw $t0, -5644($fp)
	lw $t1, -5644($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label221
label221:
	lw $t0, -1872($fp)
	sw $t0, -5648($fp)
	lw $t1, -5648($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label220
label219:
	li $t0, 1
	sw $t0, -5636($fp)
label220:
	li $t0, 24066
	sw $t0, -5652($fp)
	lw $t0, -1824($fp)
	sw $t0, -5656($fp)
	lw $t0, -5652($fp)
	lw $t1, -5656($fp)
	sub $t0, $t0, $t1
	sw $t0, -5660($fp)
	addi $sp, $sp, -4
	lw $t0, -5580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5660($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5664($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -5664($fp)
	sub $t0, $t0, $t1
	sw $t0, -5668($fp)
	lw $t1, -5668($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label200
label200:
	li $t0, 14296
	sw $t0, -5672($fp)
	lw $t0, -1812($fp)
	sw $t0, -5676($fp)
	lw $t0, -5672($fp)
	lw $t1, -5676($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5680($fp)
	li $t0, 0
	lw $t1, -5680($fp)
	sub $t0, $t0, $t1
	sw $t0, -5684($fp)
	lw $t0, -1284($fp)
	sw $t0, -5688($fp)
	li $t0, 3764
	sw $t0, -5692($fp)
	lw $t0, -5688($fp)
	lw $t1, -5692($fp)
	mul $t0, $t0, $t1
	sw $t0, -5696($fp)
	lw $t0, -5684($fp)
	lw $t1, -5696($fp)
	add $t0, $t0, $t1
	sw $t0, -5700($fp)
	lw $t1, -5700($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label199
label198:
	li $t0, 0
	sw $t0, -5704($fp)
	lw $t0, -2448($fp)
	sw $t0, -5708($fp)
	lw $t0, -1356($fp)
	sw $t0, -5712($fp)
	lw $t0, -5708($fp)
	lw $t1, -5712($fp)
	mul $t0, $t0, $t1
	sw $t0, -5716($fp)
	li $t0, 51773
	sw $t0, -5720($fp)
	lw $t0, -5716($fp)
	lw $t1, -5720($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5724($fp)
	li $t0, 0
	sw $t0, -5728($fp)
	li $t0, 5775
	sw $t0, -5732($fp)
	lw $t1, -5732($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label226
label225:
	li $t0, 1
	sw $t0, -5728($fp)
label226:
	li $t0, 0
	lw $t1, -5728($fp)
	sub $t0, $t0, $t1
	sw $t0, -5736($fp)
	lw $t1, -5724($fp)
	lw $t2, -5736($fp)
	ble $t1, $t2, label223
	j label224
label223:
	li $t0, 1
	sw $t0, -5704($fp)
label224:
	lw $ra, -4($fp)
	lw $v0, -5704($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label197
label199:
label154:
label130:
	j label123
label122:
	li $t0, 0
	sw $t0, -5740($fp)
	addi $t0, $fp, -60
	sw $t0, -5744($fp)
	lw $t0, -3348($fp)
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
	lw $t1, -5760($fp)
	li $t2, 0
	bne $t1, $t2, label230
	j label231
label230:
	li $t0, 1
	sw $t0, -5740($fp)
label231:
	li $t0, 60507
	sw $t0, -5764($fp)
	lw $t0, -5740($fp)
	lw $t1, -5764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5768($fp)
	li $t0, 65045
	sw $t0, -5772($fp)
	li $t0, 0
	lw $t1, -5772($fp)
	sub $t0, $t0, $t1
	sw $t0, -5776($fp)
	lw $t0, -1104($fp)
	sw $t0, -5780($fp)
	li $t0, 0
	lw $t1, -5780($fp)
	sub $t0, $t0, $t1
	sw $t0, -5784($fp)
	li $t0, 0
	sw $t0, -5788($fp)
	li $t0, 51998
	sw $t0, -5792($fp)
	lw $t0, -1092($fp)
	sw $t0, -5796($fp)
	lw $t0, -5792($fp)
	lw $t1, -5796($fp)
	mul $t0, $t0, $t1
	sw $t0, -5800($fp)
	lw $t0, -1260($fp)
	sw $t0, -5804($fp)
	lw $t1, -5800($fp)
	lw $t2, -5804($fp)
	beq $t1, $t2, label232
	j label233
label232:
	li $t0, 1
	sw $t0, -5788($fp)
label233:
	lw $t0, -1284($fp)
	sw $t0, -5808($fp)
	li $t0, 47333
	sw $t0, -5812($fp)
	lw $t0, -5808($fp)
	lw $t1, -5812($fp)
	mul $t0, $t0, $t1
	sw $t0, -5816($fp)
	lw $t0, -1176($fp)
	sw $t0, -5820($fp)
	lw $t0, -5816($fp)
	lw $t1, -5820($fp)
	sub $t0, $t0, $t1
	sw $t0, -5824($fp)
	li $t0, 41528
	sw $t0, -5828($fp)
	li $t0, 0
	lw $t1, -5828($fp)
	sub $t0, $t0, $t1
	sw $t0, -5832($fp)
	li $t0, 20448
	sw $t0, -5836($fp)
	lw $t0, -5832($fp)
	lw $t1, -5836($fp)
	sub $t0, $t0, $t1
	sw $t0, -5840($fp)
	addi $sp, $sp, -4
	lw $t0, -5776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5840($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5844($fp)
	addi $sp, $sp, 24
	lw $t0, -1728($fp)
	sw $t0, -5848($fp)
	lw $t0, -5844($fp)
	lw $t1, -5848($fp)
	mul $t0, $t0, $t1
	sw $t0, -5852($fp)
	li $t0, 0
	sw $t0, -5856($fp)
	li $t0, 0
	sw $t0, -5860($fp)
	li $t0, 35077
	sw $t0, -5864($fp)
	lw $t1, -5864($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label236
label236:
	li $t0, 1
	sw $t0, -5860($fp)
label237:
	li $t0, 24345
	sw $t0, -5868($fp)
	lw $t1, -5860($fp)
	lw $t2, -5868($fp)
	bgt $t1, $t2, label234
	j label235
label234:
	li $t0, 1
	sw $t0, -5856($fp)
label235:
	li $t0, 0
	sw $t0, -5872($fp)
	li $t0, 0
	sw $t0, -5876($fp)
	lw $t0, -1068($fp)
	sw $t0, -5880($fp)
	lw $t1, -5880($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label240
label240:
	li $t0, 1
	sw $t0, -5876($fp)
label241:
	lw $t0, -1080($fp)
	sw $t0, -5884($fp)
	lw $t1, -5876($fp)
	lw $t2, -5884($fp)
	beq $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -5872($fp)
label239:
	addi $t0, $fp, -100
	sw $t0, -5888($fp)
	lw $t0, -1332($fp)
	sw $t0, -5892($fp)
	li $t0, 4
	lw $t1, -5892($fp)
	mul $t0, $t0, $t1
	sw $t0, -5896($fp)
	lw $t0, -5896($fp)
	lw $t1, -5888($fp)
	add $t0, $t0, $t1
	sw $t0, -5900($fp)
	lw $t0, -5900($fp)
	lw $t1, 0($t0)
	sw $t1, -5904($fp)
	addi $t0, $fp, -140
	sw $t0, -5908($fp)
	lw $t0, -2664($fp)
	sw $t0, -5912($fp)
	li $t0, 4
	lw $t1, -5912($fp)
	mul $t0, $t0, $t1
	sw $t0, -5916($fp)
	lw $t0, -5916($fp)
	lw $t1, -5908($fp)
	add $t0, $t0, $t1
	sw $t0, -5920($fp)
	lw $t0, -5920($fp)
	lw $t1, 0($t0)
	sw $t1, -5924($fp)
	lw $t0, -1224($fp)
	sw $t0, -5928($fp)
	lw $t0, -5924($fp)
	lw $t1, -5928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5932($fp)
	addi $sp, $sp, -4
	lw $t0, -5852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5932($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5936($fp)
	addi $sp, $sp, 24
	lw $t0, -1116($fp)
	sw $t0, -5940($fp)
	li $t0, 29993
	sw $t0, -5944($fp)
	lw $t0, -5940($fp)
	lw $t1, -5944($fp)
	mul $t0, $t0, $t1
	sw $t0, -5948($fp)
	lw $t0, -5936($fp)
	lw $t1, -5948($fp)
	add $t0, $t0, $t1
	sw $t0, -5952($fp)
	lw $t1, -5768($fp)
	lw $t2, -5952($fp)
	bne $t1, $t2, label227
	j label228
label227:
	li $t0, 13761
	sw $t0, -5960($fp)
	lw $t0, -5960($fp)
	sw $t0, -5964($fp)
	lw $t0, -5964($fp)
	sw $t0, -5968($fp)
	li $t0, 17439
	sw $t0, -5972($fp)
	lw $t0, -5972($fp)
	sw $t0, -5976($fp)
	lw $t0, -5976($fp)
	sw $t0, -5980($fp)
	li $t0, 20858
	sw $t0, -5984($fp)
	lw $t0, -5984($fp)
	sw $t0, -5988($fp)
	lw $t0, -5988($fp)
	sw $t0, -5992($fp)
	li $t0, 63299
	sw $t0, -5996($fp)
	lw $t0, -5996($fp)
	sw $t0, -6000($fp)
	lw $t0, -6000($fp)
	sw $t0, -6004($fp)
	li $t0, 24176
	sw $t0, -6008($fp)
	addi $t0, $fp, -5956
	sw $t0, -6012($fp)
	li $t0, 0
	sw $t0, -6016($fp)
	lw $t0, -6016($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6020($fp)
	lw $t0, -6012($fp)
	lw $t1, -6020($fp)
	add $t0, $t0, $t1
	sw $t0, -6024($fp)
	lw $t0, -6008($fp)
	lw $t1, -6024($fp)
	sw $t0, 0($t1)
	lw $t0, -6024($fp)
	lw $t1, 0($t0)
	sw $t1, -6028($fp)
	li $t0, 25703
	sw $t0, -6032($fp)
	lw $t0, -6032($fp)
	sw $t0, -6036($fp)
	lw $t0, -6036($fp)
	sw $t0, -6040($fp)
	li $t0, 24955
	sw $t0, -6044($fp)
	lw $t0, -6044($fp)
	sw $t0, -6048($fp)
	lw $t0, -6048($fp)
	sw $t0, -6052($fp)
	li $t0, 25506
	sw $t0, -6056($fp)
	lw $t0, -6056($fp)
	sw $t0, -6060($fp)
	lw $t0, -6060($fp)
	sw $t0, -6064($fp)
	li $t0, 18452
	sw $t0, -6068($fp)
	lw $t0, -6068($fp)
	sw $t0, -6072($fp)
	lw $t0, -6072($fp)
	sw $t0, -6076($fp)
	li $t0, 34631
	sw $t0, -6080($fp)
	lw $t0, -6080($fp)
	sw $t0, -6084($fp)
	lw $t0, -6084($fp)
	sw $t0, -6088($fp)
	li $t0, 42043
	sw $t0, -6092($fp)
	lw $t0, -6092($fp)
	sw $t0, -6096($fp)
	lw $t0, -6096($fp)
	sw $t0, -6100($fp)
	lw $t0, -5964($fp)
	sw $t0, -6104($fp)
	lw $t0, -6104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5976($fp)
	sw $t0, -6108($fp)
	lw $t0, -6108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5988($fp)
	sw $t0, -6112($fp)
	lw $t0, -6112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6000($fp)
	sw $t0, -6116($fp)
	lw $t0, -6116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5956
	sw $t0, -6120($fp)
	li $t0, 0
	sw $t0, -6124($fp)
	li $t0, 4
	lw $t1, -6124($fp)
	mul $t0, $t0, $t1
	sw $t0, -6128($fp)
	lw $t0, -6128($fp)
	lw $t1, -6120($fp)
	add $t0, $t0, $t1
	sw $t0, -6132($fp)
	lw $t0, -6132($fp)
	lw $t1, 0($t0)
	sw $t1, -6136($fp)
	lw $t0, -6136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6036($fp)
	sw $t0, -6140($fp)
	lw $t0, -6140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6048($fp)
	sw $t0, -6144($fp)
	lw $t0, -6144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6060($fp)
	sw $t0, -6148($fp)
	lw $t0, -6148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6072($fp)
	sw $t0, -6152($fp)
	lw $t0, -6152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6084($fp)
	sw $t0, -6156($fp)
	lw $t0, -6156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6096($fp)
	sw $t0, -6160($fp)
	lw $t0, -6160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6164($fp)
	lw $t0, -1212($fp)
	sw $t0, -6168($fp)
	lw $t0, -1380($fp)
	sw $t0, -6172($fp)
	lw $t0, -6168($fp)
	lw $t1, -6172($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6176($fp)
	lw $t0, -1836($fp)
	sw $t0, -6180($fp)
	lw $t0, -6176($fp)
	lw $t1, -6180($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6184($fp)
	li $t0, 0
	sw $t0, -6188($fp)
	li $t0, 43956
	sw $t0, -6192($fp)
	lw $t0, -1368($fp)
	sw $t0, -6196($fp)
	lw $t1, -6192($fp)
	lw $t2, -6196($fp)
	bgt $t1, $t2, label246
	j label245
label246:
	li $t0, 2994
	sw $t0, -6200($fp)
	lw $t1, -6200($fp)
	li $t2, 0
	bne $t1, $t2, label244
	j label245
label244:
	li $t0, 1
	sw $t0, -6188($fp)
label245:
	li $t0, 0
	sw $t0, -6204($fp)
	li $t0, 31004
	sw $t0, -6208($fp)
	lw $t0, -6048($fp)
	sw $t0, -6212($fp)
	lw $t0, -6208($fp)
	lw $t1, -6212($fp)
	mul $t0, $t0, $t1
	sw $t0, -6216($fp)
	lw $t0, -1140($fp)
	sw $t0, -6220($fp)
	lw $t1, -6216($fp)
	lw $t2, -6220($fp)
	bge $t1, $t2, label247
	j label248
label247:
	li $t0, 1
	sw $t0, -6204($fp)
label248:
	li $t0, 0
	sw $t0, -6224($fp)
	lw $t0, -1836($fp)
	sw $t0, -6228($fp)
	li $t0, 0
	lw $t1, -6228($fp)
	sub $t0, $t0, $t1
	sw $t0, -6232($fp)
	li $t0, 64765
	sw $t0, -6236($fp)
	lw $t1, -6232($fp)
	lw $t2, -6236($fp)
	bgt $t1, $t2, label249
	j label250
label249:
	li $t0, 1
	sw $t0, -6224($fp)
label250:
	li $t0, 0
	sw $t0, -6240($fp)
	li $t0, 0
	sw $t0, -6244($fp)
	lw $t0, -1176($fp)
	sw $t0, -6248($fp)
	lw $t0, -1344($fp)
	sw $t0, -6252($fp)
	lw $t1, -6248($fp)
	lw $t2, -6252($fp)
	bgt $t1, $t2, label253
	j label254
label253:
	li $t0, 1
	sw $t0, -6244($fp)
label254:
	li $t0, 29660
	sw $t0, -6256($fp)
	lw $t1, -6244($fp)
	lw $t2, -6256($fp)
	beq $t1, $t2, label251
	j label252
label251:
	li $t0, 1
	sw $t0, -6240($fp)
label252:
	li $t0, 0
	sw $t0, -6260($fp)
	li $t0, 55356
	sw $t0, -6264($fp)
	lw $t1, -6264($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label255
label255:
	li $t0, 1
	sw $t0, -6260($fp)
label256:
	li $t0, 0
	lw $t1, -6260($fp)
	sub $t0, $t0, $t1
	sw $t0, -6268($fp)
	lw $t0, -1140($fp)
	sw $t0, -6272($fp)
	li $t0, 0
	lw $t1, -6272($fp)
	sub $t0, $t0, $t1
	sw $t0, -6276($fp)
	li $t0, 0
	lw $t1, -6276($fp)
	sub $t0, $t0, $t1
	sw $t0, -6280($fp)
	lw $t0, -1128($fp)
	sw $t0, -6284($fp)
	li $t0, 55294
	sw $t0, -6288($fp)
	lw $t0, -6284($fp)
	lw $t1, -6288($fp)
	add $t0, $t0, $t1
	sw $t0, -6292($fp)
	addi $sp, $sp, -4
	lw $t0, -6224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6292($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6296($fp)
	addi $sp, $sp, 24
	lw $t0, -1356($fp)
	sw $t0, -6300($fp)
	lw $t0, -6296($fp)
	lw $t1, -6300($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6304($fp)
	li $t0, 0
	sw $t0, -6308($fp)
	lw $t0, -5976($fp)
	sw $t0, -6312($fp)
	lw $t1, -6312($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label259
label259:
	li $t0, 42519
	sw $t0, -6316($fp)
	lw $t1, -6316($fp)
	li $t2, 0
	bne $t1, $t2, label257
	j label258
label257:
	li $t0, 1
	sw $t0, -6308($fp)
label258:
	addi $sp, $sp, -4
	lw $t0, -6184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6308($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6320($fp)
	addi $sp, $sp, 24
	lw $t0, -1392($fp)
	sw $t0, -6324($fp)
	lw $t0, -6320($fp)
	lw $t1, -6324($fp)
	mul $t0, $t0, $t1
	sw $t0, -6328($fp)
	addi $t0, $fp, -196
	sw $t0, -6332($fp)
	li $t0, 2
	sw $t0, -6336($fp)
	li $t0, 4
	lw $t1, -6336($fp)
	mul $t0, $t0, $t1
	sw $t0, -6340($fp)
	lw $t0, -6340($fp)
	lw $t1, -6332($fp)
	add $t0, $t0, $t1
	sw $t0, -6344($fp)
	lw $t0, -6344($fp)
	lw $t1, 0($t0)
	sw $t1, -6348($fp)
	addi $t0, $fp, -292
	sw $t0, -6352($fp)
	li $t0, 0
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
	lw $t0, -6348($fp)
	lw $t1, -6368($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6372($fp)
	lw $t1, -6328($fp)
	lw $t2, -6372($fp)
	blt $t1, $t2, label242
	j label243
label242:
	li $t0, 1
	sw $t0, -6164($fp)
label243:
	lw $ra, -4($fp)
	lw $v0, -6164($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -6376($fp)
	li $t0, 0
	sw $t0, -6380($fp)
	lw $t0, -1356($fp)
	sw $t0, -6384($fp)
	lw $t1, -6384($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label264
label263:
	li $t0, 1
	sw $t0, -6380($fp)
label264:
	li $t0, 0
	sw $t0, -6388($fp)
	lw $t0, -672($fp)
	sw $t0, -6392($fp)
	li $t0, 0
	lw $t1, -6392($fp)
	sub $t0, $t0, $t1
	sw $t0, -6396($fp)
	li $t0, 25930
	sw $t0, -6400($fp)
	li $t0, 33062
	sw $t0, -6404($fp)
	lw $t0, -6400($fp)
	lw $t1, -6404($fp)
	sub $t0, $t0, $t1
	sw $t0, -6408($fp)
	li $t0, 0
	sw $t0, -6412($fp)
	li $t0, 0
	sw $t0, -6416($fp)
	li $t0, 37129
	sw $t0, -6420($fp)
	li $t0, 227
	sw $t0, -6424($fp)
	lw $t0, -6420($fp)
	lw $t1, -6424($fp)
	sub $t0, $t0, $t1
	sw $t0, -6428($fp)
	lw $t1, -6428($fp)
	li $t2, 0
	bne $t1, $t2, label272
	j label271
label272:
	li $t0, 8107
	sw $t0, -6432($fp)
	lw $t1, -6432($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label271
label270:
	li $t0, 1
	sw $t0, -6416($fp)
label271:
	lw $t0, -1848($fp)
	sw $t0, -6436($fp)
	li $t0, 0
	sw $t0, -6440($fp)
	lw $t0, -6000($fp)
	sw $t0, -6444($fp)
	lw $t1, -6444($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label275
label275:
	li $t0, 10344
	sw $t0, -6448($fp)
	lw $t1, -6448($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -6440($fp)
label274:
	li $t0, 0
	sw $t0, -6452($fp)
	li $t0, 44905
	sw $t0, -6456($fp)
	lw $t0, -5988($fp)
	sw $t0, -6460($fp)
	lw $t0, -6456($fp)
	lw $t1, -6460($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6464($fp)
	lw $t1, -6464($fp)
	li $t2, 0
	bne $t1, $t2, label278
	j label277
label278:
	lw $t0, -1464($fp)
	sw $t0, -6468($fp)
	lw $t1, -6468($fp)
	li $t2, 0
	bne $t1, $t2, label276
	j label277
label276:
	li $t0, 1
	sw $t0, -6452($fp)
label277:
	lw $t0, -1872($fp)
	sw $t0, -6472($fp)
	li $t0, 0
	lw $t1, -6472($fp)
	sub $t0, $t0, $t1
	sw $t0, -6476($fp)
	li $t0, 0
	lw $t1, -6476($fp)
	sub $t0, $t0, $t1
	sw $t0, -6480($fp)
	addi $sp, $sp, -4
	lw $t0, -6416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6480($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6484($fp)
	addi $sp, $sp, 24
	lw $t1, -6484($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label268
label269:
	li $t0, 61306
	sw $t0, -6488($fp)
	lw $t1, -6488($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label268
label267:
	li $t0, 1
	sw $t0, -6412($fp)
label268:
	li $t0, 0
	sw $t0, -6492($fp)
	li $t0, 62119
	sw $t0, -6496($fp)
	li $t0, 19690
	sw $t0, -6500($fp)
	lw $t1, -6496($fp)
	lw $t2, -6500($fp)
	bgt $t1, $t2, label279
	j label280
label279:
	li $t0, 1
	sw $t0, -6492($fp)
label280:
	li $t0, 0
	sw $t0, -6504($fp)
	lw $t0, -1896($fp)
	sw $t0, -6508($fp)
	lw $t0, -1848($fp)
	sw $t0, -6512($fp)
	lw $t0, -6508($fp)
	lw $t1, -6512($fp)
	mul $t0, $t0, $t1
	sw $t0, -6516($fp)
	lw $t0, -600($fp)
	sw $t0, -6520($fp)
	lw $t1, -6516($fp)
	lw $t2, -6520($fp)
	beq $t1, $t2, label281
	j label282
label281:
	li $t0, 1
	sw $t0, -6504($fp)
label282:
	addi $sp, $sp, -4
	lw $t0, -6396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6504($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6524($fp)
	addi $sp, $sp, 24
	li $t0, 21276
	sw $t0, -6528($fp)
	lw $t1, -6524($fp)
	lw $t2, -6528($fp)
	bgt $t1, $t2, label265
	j label266
label265:
	li $t0, 1
	sw $t0, -6388($fp)
label266:
	li $t0, 0
	sw $t0, -6532($fp)
	lw $t0, -1380($fp)
	sw $t0, -6536($fp)
	lw $t1, -6536($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label285
label286:
	li $t0, 14911
	sw $t0, -6540($fp)
	lw $t1, -6540($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label285
label285:
	lw $t0, -600($fp)
	sw $t0, -6544($fp)
	lw $t1, -6544($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label284
label283:
	li $t0, 1
	sw $t0, -6532($fp)
label284:
	li $t0, 0
	sw $t0, -6548($fp)
	li $t0, 33114
	sw $t0, -6552($fp)
	li $t0, 10120
	sw $t0, -6556($fp)
	lw $t0, -6552($fp)
	lw $t1, -6556($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6560($fp)
	lw $t1, -6560($fp)
	li $t2, 0
	bne $t1, $t2, label287
	j label289
label289:
	li $t0, 20181
	sw $t0, -6564($fp)
	lw $t1, -6564($fp)
	li $t2, 0
	bne $t1, $t2, label287
	j label288
label287:
	li $t0, 1
	sw $t0, -6548($fp)
label288:
	lw $t0, -768($fp)
	sw $t0, -6568($fp)
	lw $t0, -6568($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -6572($fp)
	li $t0, 65269
	sw $t0, -6576($fp)
	lw $t0, -6576($fp)
	sw $t0, -3360($fp)
	lw $t0, -3360($fp)
	sw $t0, -6580($fp)
	addi $sp, $sp, -4
	lw $t0, -6388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6580($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6584($fp)
	addi $sp, $sp, 24
	lw $t0, -6380($fp)
	lw $t1, -6584($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6588($fp)
	li $t0, 0
	lw $t1, -6588($fp)
	sub $t0, $t0, $t1
	sw $t0, -6592($fp)
	lw $t1, -6592($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label262
label262:
	addi $t0, $fp, -5956
	sw $t0, -6596($fp)
	lw $t0, -1464($fp)
	sw $t0, -6600($fp)
	li $t0, 4
	lw $t1, -6600($fp)
	mul $t0, $t0, $t1
	sw $t0, -6604($fp)
	lw $t0, -6604($fp)
	lw $t1, -6596($fp)
	add $t0, $t0, $t1
	sw $t0, -6608($fp)
	lw $t0, -6608($fp)
	lw $t1, 0($t0)
	sw $t1, -6612($fp)
	li $t0, 44383
	sw $t0, -6616($fp)
	li $t0, 0
	lw $t1, -6616($fp)
	sub $t0, $t0, $t1
	sw $t0, -6620($fp)
	lw $t0, -6612($fp)
	lw $t1, -6620($fp)
	mul $t0, $t0, $t1
	sw $t0, -6624($fp)
	lw $t1, -6624($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label261
label260:
	li $t0, 1
	sw $t0, -6376($fp)
label261:
	lw $t0, -6084($fp)
	sw $t0, -6628($fp)
	li $t0, 2157
	sw $t0, -6660($fp)
	lw $t0, -6660($fp)
	sw $t0, -6664($fp)
	lw $t0, -6664($fp)
	sw $t0, -6668($fp)
	li $t0, 63319
	sw $t0, -6672($fp)
	lw $t0, -6672($fp)
	sw $t0, -6676($fp)
	lw $t0, -6676($fp)
	sw $t0, -6680($fp)
	li $t0, 21366
	sw $t0, -6684($fp)
	addi $t0, $fp, -6656
	sw $t0, -6688($fp)
	li $t0, 0
	sw $t0, -6692($fp)
	lw $t0, -6692($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6696($fp)
	lw $t0, -6688($fp)
	lw $t1, -6696($fp)
	add $t0, $t0, $t1
	sw $t0, -6700($fp)
	lw $t0, -6684($fp)
	lw $t1, -6700($fp)
	sw $t0, 0($t1)
	lw $t0, -6700($fp)
	lw $t1, 0($t0)
	sw $t1, -6704($fp)
	li $t0, 57452
	sw $t0, -6708($fp)
	addi $t0, $fp, -6656
	sw $t0, -6712($fp)
	li $t0, 1
	sw $t0, -6716($fp)
	lw $t0, -6716($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6720($fp)
	lw $t0, -6712($fp)
	lw $t1, -6720($fp)
	add $t0, $t0, $t1
	sw $t0, -6724($fp)
	lw $t0, -6708($fp)
	lw $t1, -6724($fp)
	sw $t0, 0($t1)
	lw $t0, -6724($fp)
	lw $t1, 0($t0)
	sw $t1, -6728($fp)
	li $t0, 53139
	sw $t0, -6732($fp)
	addi $t0, $fp, -6656
	sw $t0, -6736($fp)
	li $t0, 2
	sw $t0, -6740($fp)
	lw $t0, -6740($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6744($fp)
	lw $t0, -6736($fp)
	lw $t1, -6744($fp)
	add $t0, $t0, $t1
	sw $t0, -6748($fp)
	lw $t0, -6732($fp)
	lw $t1, -6748($fp)
	sw $t0, 0($t1)
	lw $t0, -6748($fp)
	lw $t1, 0($t0)
	sw $t1, -6752($fp)
	li $t0, 51026
	sw $t0, -6756($fp)
	addi $t0, $fp, -6656
	sw $t0, -6760($fp)
	li $t0, 3
	sw $t0, -6764($fp)
	lw $t0, -6764($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6768($fp)
	lw $t0, -6760($fp)
	lw $t1, -6768($fp)
	add $t0, $t0, $t1
	sw $t0, -6772($fp)
	lw $t0, -6756($fp)
	lw $t1, -6772($fp)
	sw $t0, 0($t1)
	lw $t0, -6772($fp)
	lw $t1, 0($t0)
	sw $t1, -6776($fp)
	li $t0, 56681
	sw $t0, -6780($fp)
	addi $t0, $fp, -6656
	sw $t0, -6784($fp)
	li $t0, 4
	sw $t0, -6788($fp)
	lw $t0, -6788($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6792($fp)
	lw $t0, -6784($fp)
	lw $t1, -6792($fp)
	add $t0, $t0, $t1
	sw $t0, -6796($fp)
	lw $t0, -6780($fp)
	lw $t1, -6796($fp)
	sw $t0, 0($t1)
	lw $t0, -6796($fp)
	lw $t1, 0($t0)
	sw $t1, -6800($fp)
	li $t0, 18608
	sw $t0, -6804($fp)
	addi $t0, $fp, -6656
	sw $t0, -6808($fp)
	li $t0, 5
	sw $t0, -6812($fp)
	lw $t0, -6812($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6816($fp)
	lw $t0, -6808($fp)
	lw $t1, -6816($fp)
	add $t0, $t0, $t1
	sw $t0, -6820($fp)
	lw $t0, -6804($fp)
	lw $t1, -6820($fp)
	sw $t0, 0($t1)
	lw $t0, -6820($fp)
	lw $t1, 0($t0)
	sw $t1, -6824($fp)
	li $t0, 29446
	sw $t0, -6828($fp)
	addi $t0, $fp, -6656
	sw $t0, -6832($fp)
	li $t0, 6
	sw $t0, -6836($fp)
	lw $t0, -6836($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6840($fp)
	lw $t0, -6832($fp)
	lw $t1, -6840($fp)
	add $t0, $t0, $t1
	sw $t0, -6844($fp)
	lw $t0, -6828($fp)
	lw $t1, -6844($fp)
	sw $t0, 0($t1)
	lw $t0, -6844($fp)
	lw $t1, 0($t0)
	sw $t1, -6848($fp)
	li $t0, 59675
	sw $t0, -6852($fp)
	lw $t0, -6852($fp)
	sw $t0, -6856($fp)
	lw $t0, -6856($fp)
	sw $t0, -6860($fp)
	li $t0, 0
	sw $t0, -6864($fp)
	addi $t0, $fp, -292
	sw $t0, -6868($fp)
	addi $t0, $fp, -232
	sw $t0, -6872($fp)
	lw $t0, -1392($fp)
	sw $t0, -6876($fp)
	li $t0, 4
	lw $t1, -6876($fp)
	mul $t0, $t0, $t1
	sw $t0, -6880($fp)
	lw $t0, -6880($fp)
	lw $t1, -6872($fp)
	add $t0, $t0, $t1
	sw $t0, -6884($fp)
	lw $t0, -6884($fp)
	lw $t1, 0($t0)
	sw $t1, -6888($fp)
	li $t0, 4
	lw $t1, -6888($fp)
	mul $t0, $t0, $t1
	sw $t0, -6892($fp)
	lw $t0, -6892($fp)
	lw $t1, -6868($fp)
	add $t0, $t0, $t1
	sw $t0, -6896($fp)
	lw $t0, -6896($fp)
	lw $t1, 0($t0)
	sw $t1, -6900($fp)
	li $t0, 0
	sw $t0, -6904($fp)
	lw $t0, -1176($fp)
	sw $t0, -6908($fp)
	lw $t1, -6908($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label292
label292:
	li $t0, 1
	sw $t0, -6904($fp)
label293:
	lw $t0, -744($fp)
	sw $t0, -6912($fp)
	lw $t0, -6904($fp)
	lw $t1, -6912($fp)
	sub $t0, $t0, $t1
	sw $t0, -6916($fp)
	li $t0, 0
	sw $t0, -6920($fp)
	lw $t0, -1848($fp)
	sw $t0, -6924($fp)
	lw $t0, -3360($fp)
	sw $t0, -6928($fp)
	lw $t0, -6924($fp)
	lw $t1, -6928($fp)
	mul $t0, $t0, $t1
	sw $t0, -6932($fp)
	lw $t1, -6932($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label296
label296:
	li $t0, 59372
	sw $t0, -6936($fp)
	lw $t1, -6936($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label295
label294:
	li $t0, 1
	sw $t0, -6920($fp)
label295:
	lw $t0, -1896($fp)
	sw $t0, -6940($fp)
	li $t0, 26357
	sw $t0, -6944($fp)
	lw $t0, -6940($fp)
	lw $t1, -6944($fp)
	mul $t0, $t0, $t1
	sw $t0, -6948($fp)
	lw $t0, -1140($fp)
	sw $t0, -6952($fp)
	lw $t0, -6948($fp)
	lw $t1, -6952($fp)
	sub $t0, $t0, $t1
	sw $t0, -6956($fp)
	addi $t0, $fp, -6656
	sw $t0, -6960($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -6980($fp)
	lw $t0, -1080($fp)
	sw $t0, -6984($fp)
	li $t0, 57765
	sw $t0, -6988($fp)
	lw $t1, -6984($fp)
	lw $t2, -6988($fp)
	bgt $t1, $t2, label297
	j label298
label297:
	li $t0, 1
	sw $t0, -6980($fp)
label298:
	lw $t0, -6676($fp)
	sw $t0, -6992($fp)
	addi $sp, $sp, -4
	lw $t0, -6920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6992($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6996($fp)
	addi $sp, $sp, 24
	lw $t0, -6916($fp)
	lw $t1, -6996($fp)
	sub $t0, $t0, $t1
	sw $t0, -7000($fp)
	lw $t1, -6900($fp)
	lw $t2, -7000($fp)
	bge $t1, $t2, label290
	j label291
label290:
	li $t0, 1
	sw $t0, -6864($fp)
label291:
	li $t0, 0
	sw $t0, -7004($fp)
	addi $t0, $fp, -196
	sw $t0, -7008($fp)
	li $t0, 0
	sw $t0, -7012($fp)
	li $t0, 36023
	sw $t0, -7016($fp)
	lw $t0, 16($fp)
	sw $t0, -7020($fp)
	lw $t0, -7016($fp)
	lw $t1, -7020($fp)
	sub $t0, $t0, $t1
	sw $t0, -7024($fp)
	li $t0, 36477
	sw $t0, -7028($fp)
	lw $t1, -7024($fp)
	lw $t2, -7028($fp)
	bne $t1, $t2, label301
	j label302
label301:
	li $t0, 1
	sw $t0, -7012($fp)
label302:
	li $t0, 4
	lw $t1, -7012($fp)
	mul $t0, $t0, $t1
	sw $t0, -7032($fp)
	lw $t0, -7032($fp)
	lw $t1, -7008($fp)
	add $t0, $t0, $t1
	sw $t0, -7036($fp)
	lw $t0, -7036($fp)
	lw $t1, 0($t0)
	sw $t1, -7040($fp)
	li $t0, 56461
	sw $t0, -7044($fp)
	lw $t0, -7044($fp)
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -7048($fp)
	li $t0, 51512
	sw $t0, -7052($fp)
	li $t0, 1072
	sw $t0, -7056($fp)
	lw $t0, -7052($fp)
	lw $t1, -7056($fp)
	mul $t0, $t0, $t1
	sw $t0, -7060($fp)
	li $t0, 30530
	sw $t0, -7064($fp)
	lw $t0, -7064($fp)
	sw $t0, 20($fp)
	lw $t0, 20($fp)
	sw $t0, -7068($fp)
	li $t0, 0
	sw $t0, -7072($fp)
	li $t0, 5302
	sw $t0, -7076($fp)
	lw $t0, -6072($fp)
	sw $t0, -7080($fp)
	lw $t1, -7076($fp)
	lw $t2, -7080($fp)
	bgt $t1, $t2, label303
	j label304
label303:
	li $t0, 1
	sw $t0, -7072($fp)
label304:
	li $t0, 43404
	sw $t0, -7084($fp)
	lw $t0, -1464($fp)
	sw $t0, -7088($fp)
	lw $t0, -7084($fp)
	lw $t1, -7088($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7092($fp)
	lw $t0, -1308($fp)
	sw $t0, -7096($fp)
	li $t0, 30303
	sw $t0, -7100($fp)
	lw $t0, -7096($fp)
	lw $t1, -7100($fp)
	mul $t0, $t0, $t1
	sw $t0, -7104($fp)
	lw $t0, -684($fp)
	sw $t0, -7108($fp)
	lw $t0, -7104($fp)
	lw $t1, -7108($fp)
	add $t0, $t0, $t1
	sw $t0, -7112($fp)
	addi $sp, $sp, -4
	lw $t0, -7060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7112($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7116($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -7120($fp)
	li $t0, 33708
	sw $t0, -7124($fp)
	lw $t1, -7124($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label305
label305:
	li $t0, 1
	sw $t0, -7120($fp)
label306:
	li $t0, 0
	sw $t0, -7128($fp)
	li $t0, 50934
	sw $t0, -7132($fp)
	lw $t1, -7132($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label309
label309:
	li $t0, 33060
	sw $t0, -7136($fp)
	lw $t1, -7136($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label308
label307:
	li $t0, 1
	sw $t0, -7128($fp)
label308:
	li $t0, 0
	sw $t0, -7140($fp)
	li $t0, 14018
	sw $t0, -7144($fp)
	lw $t0, -6060($fp)
	sw $t0, -7148($fp)
	lw $t0, -7144($fp)
	lw $t1, -7148($fp)
	mul $t0, $t0, $t1
	sw $t0, -7152($fp)
	lw $t0, -672($fp)
	sw $t0, -7156($fp)
	lw $t1, -7152($fp)
	lw $t2, -7156($fp)
	ble $t1, $t2, label310
	j label311
label310:
	li $t0, 1
	sw $t0, -7140($fp)
label311:
	addi $sp, $sp, -4
	lw $t0, -7048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7140($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7160($fp)
	addi $sp, $sp, 24
	lw $t1, -7040($fp)
	lw $t2, -7160($fp)
	beq $t1, $t2, label299
	j label300
label299:
	li $t0, 1
	sw $t0, -7004($fp)
label300:
	lw $t0, -2652($fp)
	sw $t0, -7164($fp)
	li $t0, 0
	sw $t0, -7168($fp)
	li $t0, 0
	sw $t0, -7172($fp)
	li $t0, 0
	sw $t0, -7176($fp)
	li $t0, 42164
	sw $t0, -7180($fp)
	li $t0, 4257
	sw $t0, -7184($fp)
	lw $t1, -7180($fp)
	lw $t2, -7184($fp)
	beq $t1, $t2, label317
	j label318
label317:
	li $t0, 1
	sw $t0, -7176($fp)
label318:
	lw $t0, -1380($fp)
	sw $t0, -7188($fp)
	lw $t1, -7176($fp)
	lw $t2, -7188($fp)
	bne $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -7172($fp)
label316:
	li $t0, 0
	sw $t0, -7192($fp)
	lw $t0, -1068($fp)
	sw $t0, -7196($fp)
	lw $t1, -7196($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label319
label319:
	li $t0, 1
	sw $t0, -7192($fp)
label320:
	lw $t0, -1368($fp)
	sw $t0, -7200($fp)
	lw $t0, -7192($fp)
	lw $t1, -7200($fp)
	sub $t0, $t0, $t1
	sw $t0, -7204($fp)
	li $t0, 0
	sw $t0, -7208($fp)
	li $t0, 13112
	sw $t0, -7212($fp)
	li $t0, 7735
	sw $t0, -7216($fp)
	lw $t0, -7212($fp)
	lw $t1, -7216($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7220($fp)
	lw $t0, -1344($fp)
	sw $t0, -7224($fp)
	lw $t1, -7220($fp)
	lw $t2, -7224($fp)
	beq $t1, $t2, label321
	j label322
label321:
	li $t0, 1
	sw $t0, -7208($fp)
label322:
	li $t0, 0
	sw $t0, -7228($fp)
	li $t0, 0
	sw $t0, -7232($fp)
	lw $t0, -600($fp)
	sw $t0, -7236($fp)
	li $t0, 20132
	sw $t0, -7240($fp)
	lw $t1, -7236($fp)
	lw $t2, -7240($fp)
	beq $t1, $t2, label325
	j label326
label325:
	li $t0, 1
	sw $t0, -7232($fp)
label326:
	li $t0, 56674
	sw $t0, -7244($fp)
	lw $t1, -7232($fp)
	lw $t2, -7244($fp)
	beq $t1, $t2, label323
	j label324
label323:
	li $t0, 1
	sw $t0, -7228($fp)
label324:
	li $t0, 0
	sw $t0, -7248($fp)
	li $t0, 21196
	sw $t0, -7252($fp)
	lw $t1, -7252($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label327
label327:
	li $t0, 1
	sw $t0, -7248($fp)
label328:
	li $t0, 0
	lw $t1, -7248($fp)
	sub $t0, $t0, $t1
	sw $t0, -7256($fp)
	addi $sp, $sp, -4
	lw $t0, -7172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7256($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7260($fp)
	addi $sp, $sp, 24
	lw $t1, -7260($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label313
label314:
	lw $t0, -612($fp)
	sw $t0, -7264($fp)
	lw $t1, -7264($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label313
label312:
	li $t0, 1
	sw $t0, -7168($fp)
label313:
	addi $t0, $fp, -292
	sw $t0, -7268($fp)
	lw $t0, -6664($fp)
	sw $t0, -7272($fp)
	li $t0, 4
	lw $t1, -7272($fp)
	mul $t0, $t0, $t1
	sw $t0, -7276($fp)
	lw $t0, -7276($fp)
	lw $t1, -7268($fp)
	add $t0, $t0, $t1
	sw $t0, -7280($fp)
	lw $t0, -7280($fp)
	lw $t1, 0($t0)
	sw $t1, -7284($fp)
	li $t0, 0
	sw $t0, -7288($fp)
	lw $t0, -2676($fp)
	sw $t0, -7292($fp)
	li $t0, 35308
	sw $t0, -7296($fp)
	lw $t0, -7292($fp)
	lw $t1, -7296($fp)
	sub $t0, $t0, $t1
	sw $t0, -7300($fp)
	lw $t1, -7300($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label330
label331:
	lw $t0, -6856($fp)
	sw $t0, -7304($fp)
	lw $t1, -7304($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label330
label329:
	li $t0, 1
	sw $t0, -7288($fp)
label330:
	lw $t0, -1296($fp)
	sw $t0, -7308($fp)
	li $t0, 19038
	sw $t0, -7312($fp)
	lw $t0, -7308($fp)
	lw $t1, -7312($fp)
	mul $t0, $t0, $t1
	sw $t0, -7316($fp)
	li $t0, 22348
	sw $t0, -7320($fp)
	lw $t0, -7316($fp)
	lw $t1, -7320($fp)
	mul $t0, $t0, $t1
	sw $t0, -7324($fp)
	lw $t0, -1140($fp)
	sw $t0, -7328($fp)
	lw $t0, -2664($fp)
	sw $t0, -7332($fp)
	lw $t0, -7328($fp)
	lw $t1, -7332($fp)
	mul $t0, $t0, $t1
	sw $t0, -7336($fp)
	addi $sp, $sp, -4
	lw $t0, -7168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7336($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7340($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -7340($fp)
	sub $t0, $t0, $t1
	sw $t0, -7344($fp)
	lw $t0, -7164($fp)
	lw $t1, -7344($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7348($fp)
	li $t0, 0
	lw $t1, -7348($fp)
	sub $t0, $t0, $t1
	sw $t0, -7352($fp)
label332:
	li $t0, 0
	sw $t0, -7356($fp)
	li $t0, 48931
	sw $t0, -7360($fp)
	lw $t0, -1812($fp)
	sw $t0, -7364($fp)
	lw $t1, -7360($fp)
	lw $t2, -7364($fp)
	bne $t1, $t2, label335
	j label337
label337:
	li $t0, 41740
	sw $t0, -7368($fp)
	lw $t1, -7368($fp)
	li $t2, 0
	bne $t1, $t2, label335
	j label336
label335:
	li $t0, 1
	sw $t0, -7356($fp)
label336:
	li $t0, 0
	sw $t0, -7372($fp)
	li $t0, 15871
	sw $t0, -7376($fp)
	li $t0, 8032
	sw $t0, -7380($fp)
	lw $t0, -7376($fp)
	lw $t1, -7380($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7384($fp)
	li $t0, 22727
	sw $t0, -7388($fp)
	lw $t1, -7384($fp)
	lw $t2, -7388($fp)
	bgt $t1, $t2, label338
	j label339
label338:
	li $t0, 1
	sw $t0, -7372($fp)
label339:
	li $t0, 0
	sw $t0, -7392($fp)
	lw $t0, -684($fp)
	sw $t0, -7396($fp)
	lw $t1, -7396($fp)
	li $t2, 0
	bne $t1, $t2, label340
	j label343
label343:
	li $t0, 59550
	sw $t0, -7400($fp)
	lw $t1, -7400($fp)
	li $t2, 0
	bne $t1, $t2, label340
	j label342
label342:
	li $t0, 37328
	sw $t0, -7404($fp)
	lw $t1, -7404($fp)
	li $t2, 0
	bne $t1, $t2, label340
	j label341
label340:
	li $t0, 1
	sw $t0, -7392($fp)
label341:
	li $t0, 0
	sw $t0, -7408($fp)
	li $t0, 44929
	sw $t0, -7412($fp)
	lw $t0, -3348($fp)
	sw $t0, -7416($fp)
	lw $t0, -7412($fp)
	lw $t1, -7416($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7420($fp)
	lw $t0, -5964($fp)
	sw $t0, -7424($fp)
	lw $t1, -7420($fp)
	lw $t2, -7424($fp)
	ble $t1, $t2, label344
	j label345
label344:
	li $t0, 1
	sw $t0, -7408($fp)
label345:
	li $t0, 0
	sw $t0, -7428($fp)
	li $t0, 0
	sw $t0, -7432($fp)
	li $t0, 177
	sw $t0, -7436($fp)
	li $t0, 1305
	sw $t0, -7440($fp)
	lw $t1, -7436($fp)
	lw $t2, -7440($fp)
	bgt $t1, $t2, label350
	j label349
label350:
	lw $t0, -3360($fp)
	sw $t0, -7444($fp)
	lw $t1, -7444($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label349
label348:
	li $t0, 1
	sw $t0, -7432($fp)
label349:
	li $t0, 0
	sw $t0, -7448($fp)
	addi $t0, $fp, -48
	sw $t0, -7452($fp)
	li $t0, 0
	sw $t0, -7456($fp)
	li $t0, 4
	lw $t1, -7456($fp)
	mul $t0, $t0, $t1
	sw $t0, -7460($fp)
	lw $t0, -7460($fp)
	lw $t1, -7452($fp)
	add $t0, $t0, $t1
	sw $t0, -7464($fp)
	lw $t0, -7464($fp)
	lw $t1, 0($t0)
	sw $t1, -7468($fp)
	lw $t1, -7468($fp)
	li $t2, 0
	bne $t1, $t2, label352
	j label351
label351:
	li $t0, 1
	sw $t0, -7448($fp)
label352:
	addi $t0, $fp, -100
	sw $t0, -7472($fp)
	lw $t0, -1176($fp)
	sw $t0, -7476($fp)
	li $t0, 4
	lw $t1, -7476($fp)
	mul $t0, $t0, $t1
	sw $t0, -7480($fp)
	lw $t0, -7480($fp)
	lw $t1, -7472($fp)
	add $t0, $t0, $t1
	sw $t0, -7484($fp)
	lw $t0, -7484($fp)
	lw $t1, 0($t0)
	sw $t1, -7488($fp)
	li $t0, 6074
	sw $t0, -7492($fp)
	li $t0, 0
	sw $t0, -7496($fp)
	lw $t0, -1380($fp)
	sw $t0, -7500($fp)
	lw $t1, -7500($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label355
label355:
	li $t0, 26343
	sw $t0, -7504($fp)
	lw $t1, -7504($fp)
	li $t2, 0
	bne $t1, $t2, label353
	j label354
label353:
	li $t0, 1
	sw $t0, -7496($fp)
label354:
	addi $sp, $sp, -4
	lw $t0, -7432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7496($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7508($fp)
	addi $sp, $sp, 24
	lw $t0, -672($fp)
	sw $t0, -7512($fp)
	lw $t1, -7508($fp)
	lw $t2, -7512($fp)
	ble $t1, $t2, label346
	j label347
label346:
	li $t0, 1
	sw $t0, -7428($fp)
label347:
	addi $sp, $sp, -4
	lw $t0, -7356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7428($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7516($fp)
	addi $sp, $sp, 24
	lw $t1, -7516($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label334
label333:
	li $t0, 0
	sw $t0, -7520($fp)
	li $t0, 0
	sw $t0, -7524($fp)
	lw $t0, -6036($fp)
	sw $t0, -7528($fp)
	lw $t0, -1356($fp)
	sw $t0, -7532($fp)
	lw $t0, -7528($fp)
	lw $t1, -7532($fp)
	mul $t0, $t0, $t1
	sw $t0, -7536($fp)
	li $t0, 18025
	sw $t0, -7540($fp)
	lw $t1, -7536($fp)
	lw $t2, -7540($fp)
	ble $t1, $t2, label359
	j label360
label359:
	li $t0, 1
	sw $t0, -7524($fp)
label360:
	lw $t0, -1824($fp)
	sw $t0, -7544($fp)
	lw $t0, -1860($fp)
	sw $t0, -7548($fp)
	lw $t0, -7544($fp)
	lw $t1, -7548($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7552($fp)
	li $t0, 0
	sw $t0, -7556($fp)
	li $t0, 0
	sw $t0, -7560($fp)
	li $t0, 47042
	sw $t0, -7564($fp)
	lw $t1, -7564($fp)
	li $t2, 0
	bne $t1, $t2, label364
	j label363
label363:
	li $t0, 1
	sw $t0, -7560($fp)
label364:
	lw $t0, -1128($fp)
	sw $t0, -7568($fp)
	lw $t1, -7560($fp)
	lw $t2, -7568($fp)
	bne $t1, $t2, label361
	j label362
label361:
	li $t0, 1
	sw $t0, -7556($fp)
label362:
	li $t0, 0
	sw $t0, -7572($fp)
	lw $t0, 4($fp)
	sw $t0, -7576($fp)
	lw $t0, -1812($fp)
	sw $t0, -7580($fp)
	lw $t0, -7576($fp)
	lw $t1, -7580($fp)
	sub $t0, $t0, $t1
	sw $t0, -7584($fp)
	lw $t0, -6096($fp)
	sw $t0, -7588($fp)
	lw $t1, -7584($fp)
	lw $t2, -7588($fp)
	ble $t1, $t2, label365
	j label366
label365:
	li $t0, 1
	sw $t0, -7572($fp)
label366:
	li $t0, 53030
	sw $t0, -7592($fp)
	li $t0, 26800
	sw $t0, -7596($fp)
	lw $t0, -7592($fp)
	lw $t1, -7596($fp)
	mul $t0, $t0, $t1
	sw $t0, -7600($fp)
	li $t0, 0
	lw $t1, -7600($fp)
	sub $t0, $t0, $t1
	sw $t0, -7604($fp)
	addi $sp, $sp, -4
	lw $t0, -7524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7604($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7608($fp)
	addi $sp, $sp, 24
	lw $t0, -1284($fp)
	sw $t0, -7612($fp)
	lw $t0, -1140($fp)
	sw $t0, -7616($fp)
	lw $t0, -7612($fp)
	lw $t1, -7616($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7620($fp)
	li $t0, 12776
	sw $t0, -7624($fp)
	lw $t0, -7620($fp)
	lw $t1, -7624($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7628($fp)
	lw $t0, -7608($fp)
	lw $t1, -7628($fp)
	add $t0, $t0, $t1
	sw $t0, -7632($fp)
	lw $t1, -7632($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label358
label358:
	li $t0, 48114
	sw $t0, -7636($fp)
	lw $t1, -7636($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label357
label356:
	li $t0, 1
	sw $t0, -7520($fp)
label357:
	j label332
label334:
	addi $t0, $fp, -364
	sw $t0, -7640($fp)
	lw $t0, -1296($fp)
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
	addi $t0, $fp, -292
	sw $t0, -7660($fp)
	lw $t0, -1308($fp)
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
	lw $t0, -7656($fp)
	lw $t1, -7676($fp)
	mul $t0, $t0, $t1
	sw $t0, -7680($fp)
	li $t0, 0
	sw $t0, -7684($fp)
	li $t0, 8950
	sw $t0, -7688($fp)
	lw $t1, -7688($fp)
	li $t2, 0
	bne $t1, $t2, label372
	j label371
label371:
	li $t0, 1
	sw $t0, -7684($fp)
label372:
	lw $t1, -7680($fp)
	lw $t2, -7684($fp)
	beq $t1, $t2, label367
	j label370
label370:
	li $t0, 586
	sw $t0, -7692($fp)
	lw $t0, -2460($fp)
	sw $t0, -7696($fp)
	lw $t0, -7692($fp)
	lw $t1, -7696($fp)
	mul $t0, $t0, $t1
	sw $t0, -7700($fp)
	li $t0, 32794
	sw $t0, -7704($fp)
	lw $t0, -7700($fp)
	lw $t1, -7704($fp)
	mul $t0, $t0, $t1
	sw $t0, -7708($fp)
	addi $t0, $fp, -364
	sw $t0, -7712($fp)
	li $t0, 2
	sw $t0, -7716($fp)
	li $t0, 4
	lw $t1, -7716($fp)
	mul $t0, $t0, $t1
	sw $t0, -7720($fp)
	lw $t0, -7720($fp)
	lw $t1, -7712($fp)
	add $t0, $t0, $t1
	sw $t0, -7724($fp)
	lw $t0, -7724($fp)
	lw $t1, 0($t0)
	sw $t1, -7728($fp)
	li $t0, 0
	lw $t1, -7728($fp)
	sub $t0, $t0, $t1
	sw $t0, -7732($fp)
	li $t0, 53010
	sw $t0, -7736($fp)
	lw $t0, -1320($fp)
	sw $t0, -7740($fp)
	lw $t0, -7736($fp)
	lw $t1, -7740($fp)
	mul $t0, $t0, $t1
	sw $t0, -7744($fp)
	li $t0, 0
	sw $t0, -7748($fp)
	li $t0, 4927
	sw $t0, -7752($fp)
	li $t0, 44258
	sw $t0, -7756($fp)
	lw $t1, -7752($fp)
	lw $t2, -7756($fp)
	bgt $t1, $t2, label373
	j label374
label373:
	li $t0, 1
	sw $t0, -7748($fp)
label374:
	li $t0, 31814
	sw $t0, -7760($fp)
	lw $t0, -1356($fp)
	sw $t0, -7764($fp)
	lw $t0, -7760($fp)
	lw $t1, -7764($fp)
	mul $t0, $t0, $t1
	sw $t0, -7768($fp)
	li $t0, 0
	lw $t1, -7768($fp)
	sub $t0, $t0, $t1
	sw $t0, -7772($fp)
	addi $sp, $sp, -4
	lw $t0, -7708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7772($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7776($fp)
	addi $sp, $sp, 24
	lw $t1, -7776($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label368
label367:
	li $t0, 12024
	sw $t0, -7804($fp)
	addi $t0, $fp, -7800
	sw $t0, -7808($fp)
	li $t0, 0
	sw $t0, -7812($fp)
	lw $t0, -7812($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7816($fp)
	lw $t0, -7808($fp)
	lw $t1, -7816($fp)
	add $t0, $t0, $t1
	sw $t0, -7820($fp)
	lw $t0, -7804($fp)
	lw $t1, -7820($fp)
	sw $t0, 0($t1)
	lw $t0, -7820($fp)
	lw $t1, 0($t0)
	sw $t1, -7824($fp)
	li $t0, 4844
	sw $t0, -7828($fp)
	addi $t0, $fp, -7800
	sw $t0, -7832($fp)
	li $t0, 1
	sw $t0, -7836($fp)
	lw $t0, -7836($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7840($fp)
	lw $t0, -7832($fp)
	lw $t1, -7840($fp)
	add $t0, $t0, $t1
	sw $t0, -7844($fp)
	lw $t0, -7828($fp)
	lw $t1, -7844($fp)
	sw $t0, 0($t1)
	lw $t0, -7844($fp)
	lw $t1, 0($t0)
	sw $t1, -7848($fp)
	li $t0, 59138
	sw $t0, -7852($fp)
	addi $t0, $fp, -7800
	sw $t0, -7856($fp)
	li $t0, 2
	sw $t0, -7860($fp)
	lw $t0, -7860($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7864($fp)
	lw $t0, -7856($fp)
	lw $t1, -7864($fp)
	add $t0, $t0, $t1
	sw $t0, -7868($fp)
	lw $t0, -7852($fp)
	lw $t1, -7868($fp)
	sw $t0, 0($t1)
	lw $t0, -7868($fp)
	lw $t1, 0($t0)
	sw $t1, -7872($fp)
	li $t0, 18098
	sw $t0, -7876($fp)
	addi $t0, $fp, -7800
	sw $t0, -7880($fp)
	li $t0, 3
	sw $t0, -7884($fp)
	lw $t0, -7884($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7888($fp)
	lw $t0, -7880($fp)
	lw $t1, -7888($fp)
	add $t0, $t0, $t1
	sw $t0, -7892($fp)
	lw $t0, -7876($fp)
	lw $t1, -7892($fp)
	sw $t0, 0($t1)
	lw $t0, -7892($fp)
	lw $t1, 0($t0)
	sw $t1, -7896($fp)
	li $t0, 3241
	sw $t0, -7900($fp)
	addi $t0, $fp, -7800
	sw $t0, -7904($fp)
	li $t0, 4
	sw $t0, -7908($fp)
	lw $t0, -7908($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7912($fp)
	lw $t0, -7904($fp)
	lw $t1, -7912($fp)
	add $t0, $t0, $t1
	sw $t0, -7916($fp)
	lw $t0, -7900($fp)
	lw $t1, -7916($fp)
	sw $t0, 0($t1)
	lw $t0, -7916($fp)
	lw $t1, 0($t0)
	sw $t1, -7920($fp)
	li $t0, 12174
	sw $t0, -7924($fp)
	addi $t0, $fp, -7800
	sw $t0, -7928($fp)
	li $t0, 5
	sw $t0, -7932($fp)
	lw $t0, -7932($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7936($fp)
	lw $t0, -7928($fp)
	lw $t1, -7936($fp)
	add $t0, $t0, $t1
	sw $t0, -7940($fp)
	lw $t0, -7924($fp)
	lw $t1, -7940($fp)
	sw $t0, 0($t1)
	lw $t0, -7940($fp)
	lw $t1, 0($t0)
	sw $t1, -7944($fp)
	li $t0, 18276
	sw $t0, -7948($fp)
	lw $t0, -7948($fp)
	sw $t0, -7952($fp)
	lw $t0, -7952($fp)
	sw $t0, -7956($fp)
	li $t0, 4546
	sw $t0, -7960($fp)
	lw $t0, -7960($fp)
	sw $t0, -7964($fp)
	lw $t0, -7964($fp)
	sw $t0, -7968($fp)
	li $t0, 57104
	sw $t0, -7972($fp)
	lw $t0, -7972($fp)
	sw $t0, -7976($fp)
	lw $t0, -7976($fp)
	sw $t0, -7980($fp)
	li $t0, 12290
	sw $t0, -7984($fp)
	lw $t0, -7984($fp)
	sw $t0, -7988($fp)
	lw $t0, -7988($fp)
	sw $t0, -7992($fp)
	addi $t0, $fp, -140
	sw $t0, -7996($fp)
	li $t0, 1
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
	lw $t0, -1140($fp)
	sw $t0, -8016($fp)
	lw $t0, -1332($fp)
	sw $t0, -8020($fp)
	lw $t0, -8016($fp)
	lw $t1, -8020($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8024($fp)
	lw $t0, -8012($fp)
	lw $t1, -8024($fp)
	sub $t0, $t0, $t1
	sw $t0, -8028($fp)
	lw $t0, -8028($fp)
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	sw $t0, -8032($fp)
	li $t0, 0
	sw $t0, -8036($fp)
	lw $t0, -2664($fp)
	sw $t0, -8040($fp)
	lw $t0, -8040($fp)
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	sw $t0, -8044($fp)
	li $t0, 0
	sw $t0, -8048($fp)
	lw $t0, -7988($fp)
	sw $t0, -8052($fp)
	li $t0, 0
	sw $t0, -8056($fp)
	li $t0, 0
	sw $t0, -8060($fp)
	li $t0, 23392
	sw $t0, -8064($fp)
	lw $t0, -1872($fp)
	sw $t0, -8068($fp)
	lw $t1, -8064($fp)
	lw $t2, -8068($fp)
	ble $t1, $t2, label382
	j label383
label382:
	li $t0, 1
	sw $t0, -8060($fp)
label383:
	lw $t0, -2208($fp)
	sw $t0, -8072($fp)
	lw $t1, -8060($fp)
	lw $t2, -8072($fp)
	bge $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -8056($fp)
label381:
	lw $t0, -1428($fp)
	sw $t0, -8076($fp)
	lw $t0, -1356($fp)
	sw $t0, -8080($fp)
	lw $t0, -8076($fp)
	lw $t1, -8080($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8084($fp)
	li $t0, 50286
	sw $t0, -8088($fp)
	lw $t0, -8084($fp)
	lw $t1, -8088($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8092($fp)
	li $t0, 0
	sw $t0, -8096($fp)
	li $t0, 27653
	sw $t0, -8100($fp)
	lw $t0, -3360($fp)
	sw $t0, -8104($fp)
	lw $t1, -8100($fp)
	lw $t2, -8104($fp)
	bge $t1, $t2, label386
	j label385
label386:
	lw $t0, -1296($fp)
	sw $t0, -8108($fp)
	lw $t1, -8108($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label385
label384:
	li $t0, 1
	sw $t0, -8096($fp)
label385:
	li $t0, 56133
	sw $t0, -8112($fp)
	addi $sp, $sp, -4
	lw $t0, -8052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8112($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8116($fp)
	addi $sp, $sp, 24
	li $t0, 39677
	sw $t0, -8120($fp)
	lw $t1, -8116($fp)
	lw $t2, -8120($fp)
	beq $t1, $t2, label378
	j label379
label378:
	li $t0, 1
	sw $t0, -8048($fp)
label379:
	lw $t0, -1464($fp)
	sw $t0, -8124($fp)
	lw $t0, -8124($fp)
	sw $t0, -7976($fp)
	lw $t0, -7976($fp)
	sw $t0, -8128($fp)
	lw $t0, -600($fp)
	sw $t0, -8132($fp)
	li $t0, 0
	lw $t1, -8132($fp)
	sub $t0, $t0, $t1
	sw $t0, -8136($fp)
	li $t0, 0
	sw $t0, -8140($fp)
	li $t0, 57793
	sw $t0, -8144($fp)
	li $t0, 49699
	sw $t0, -8148($fp)
	lw $t1, -8144($fp)
	lw $t2, -8148($fp)
	beq $t1, $t2, label389
	j label388
label389:
	lw $t0, -1416($fp)
	sw $t0, -8152($fp)
	lw $t1, -8152($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label388
label387:
	li $t0, 1
	sw $t0, -8140($fp)
label388:
	li $t0, 0
	sw $t0, -8156($fp)
	li $t0, 0
	sw $t0, -8160($fp)
	lw $t0, -3360($fp)
	sw $t0, -8164($fp)
	lw $t1, -8164($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label392
label392:
	li $t0, 1
	sw $t0, -8160($fp)
label393:
	lw $t0, -6072($fp)
	sw $t0, -8168($fp)
	lw $t1, -8160($fp)
	lw $t2, -8168($fp)
	blt $t1, $t2, label390
	j label391
label390:
	li $t0, 1
	sw $t0, -8156($fp)
label391:
	li $t0, 0
	sw $t0, -8172($fp)
	li $t0, 62225
	sw $t0, -8176($fp)
	lw $t0, -1308($fp)
	sw $t0, -8180($fp)
	lw $t1, -8176($fp)
	lw $t2, -8180($fp)
	beq $t1, $t2, label396
	j label395
label396:
	li $t0, 31074
	sw $t0, -8184($fp)
	lw $t1, -8184($fp)
	li $t2, 0
	bne $t1, $t2, label394
	j label395
label394:
	li $t0, 1
	sw $t0, -8172($fp)
label395:
	li $t0, 13535
	sw $t0, -8188($fp)
	li $t0, 0
	lw $t1, -8188($fp)
	sub $t0, $t0, $t1
	sw $t0, -8192($fp)
	lw $t0, -2460($fp)
	sw $t0, -8196($fp)
	lw $t0, -8196($fp)
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	sw $t0, -8200($fp)
	lw $t0, -6060($fp)
	sw $t0, -8204($fp)
	lw $t0, -1284($fp)
	sw $t0, -8208($fp)
	lw $t0, -8208($fp)
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	sw $t0, -8212($fp)
	addi $sp, $sp, -4
	lw $t0, -8172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8212($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8216($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -8220($fp)
	lw $t0, -1812($fp)
	sw $t0, -8224($fp)
	lw $t1, -8224($fp)
	li $t2, 0
	bne $t1, $t2, label398
	j label397
label397:
	li $t0, 1
	sw $t0, -8220($fp)
label398:
	li $t0, 0
	lw $t1, -8220($fp)
	sub $t0, $t0, $t1
	sw $t0, -8228($fp)
	li $t0, 0
	sw $t0, -8232($fp)
	lw $t0, -1812($fp)
	sw $t0, -8236($fp)
	li $t0, 26147
	sw $t0, -8240($fp)
	lw $t0, -8236($fp)
	lw $t1, -8240($fp)
	add $t0, $t0, $t1
	sw $t0, -8244($fp)
	lw $t0, -1824($fp)
	sw $t0, -8248($fp)
	lw $t1, -8244($fp)
	lw $t2, -8248($fp)
	bgt $t1, $t2, label399
	j label400
label399:
	li $t0, 1
	sw $t0, -8232($fp)
label400:
	addi $sp, $sp, -4
	lw $t0, -8140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8232($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8252($fp)
	addi $sp, $sp, 24
	lw $t0, -7964($fp)
	sw $t0, -8256($fp)
	li $t0, 30410
	sw $t0, -8260($fp)
	lw $t0, -8256($fp)
	lw $t1, -8260($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8264($fp)
	li $t0, 0
	lw $t1, -8264($fp)
	sub $t0, $t0, $t1
	sw $t0, -8268($fp)
	addi $sp, $sp, -4
	lw $t0, -8048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8268($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8272($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -8272($fp)
	sub $t0, $t0, $t1
	sw $t0, -8276($fp)
	lw $t0, -1140($fp)
	sw $t0, -8280($fp)
	li $t0, 4585
	sw $t0, -8284($fp)
	lw $t0, -8280($fp)
	lw $t1, -8284($fp)
	mul $t0, $t0, $t1
	sw $t0, -8288($fp)
	lw $t0, -1824($fp)
	sw $t0, -8292($fp)
	li $t0, 0
	lw $t1, -8292($fp)
	sub $t0, $t0, $t1
	sw $t0, -8296($fp)
	li $t0, 0
	sw $t0, -8300($fp)
	lw $t0, -2208($fp)
	sw $t0, -8304($fp)
	li $t0, 0
	lw $t1, -8304($fp)
	sub $t0, $t0, $t1
	sw $t0, -8308($fp)
	lw $t1, -8308($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label401
label401:
	li $t0, 1
	sw $t0, -8300($fp)
label402:
	li $t0, 0
	sw $t0, -8312($fp)
	li $t0, 43569
	sw $t0, -8316($fp)
	lw $t0, -1836($fp)
	sw $t0, -8320($fp)
	lw $t0, -8316($fp)
	lw $t1, -8320($fp)
	mul $t0, $t0, $t1
	sw $t0, -8324($fp)
	lw $t1, -8324($fp)
	li $t2, 0
	bne $t1, $t2, label403
	j label405
label405:
	lw $t0, -7952($fp)
	sw $t0, -8328($fp)
	lw $t1, -8328($fp)
	li $t2, 0
	bne $t1, $t2, label403
	j label404
label403:
	li $t0, 1
	sw $t0, -8312($fp)
label404:
	addi $t0, $fp, -7800
	sw $t0, -8332($fp)
	li $t0, 0
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
	addi $sp, $sp, -4
	lw $t0, -8288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8348($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8352($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -8356($fp)
	lw $t0, -1140($fp)
	sw $t0, -8360($fp)
	li $t0, 56370
	sw $t0, -8364($fp)
	lw $t0, -8360($fp)
	lw $t1, -8364($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8368($fp)
	li $t0, 62062
	sw $t0, -8372($fp)
	lw $t1, -8368($fp)
	lw $t2, -8372($fp)
	bgt $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -8356($fp)
label407:
	li $t0, 0
	sw $t0, -8376($fp)
	li $t0, 20322
	sw $t0, -8380($fp)
	li $t0, 64602
	sw $t0, -8384($fp)
	lw $t0, -8380($fp)
	lw $t1, -8384($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8388($fp)
	lw $t0, -1452($fp)
	sw $t0, -8392($fp)
	lw $t1, -8388($fp)
	lw $t2, -8392($fp)
	ble $t1, $t2, label408
	j label409
label408:
	li $t0, 1
	sw $t0, -8376($fp)
label409:
	addi $sp, $sp, -4
	lw $t0, -8044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8376($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8396($fp)
	addi $sp, $sp, 24
	lw $t1, -8396($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label377
label377:
	li $t0, 0
	sw $t0, -8400($fp)
	li $t0, 57776
	sw $t0, -8404($fp)
	li $t0, 0
	sw $t0, -8408($fp)
	li $t0, 0
	sw $t0, -8412($fp)
	lw $t0, -1872($fp)
	sw $t0, -8416($fp)
	lw $t0, -1884($fp)
	sw $t0, -8420($fp)
	lw $t1, -8416($fp)
	lw $t2, -8420($fp)
	bgt $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -8412($fp)
label415:
	li $t0, 16994
	sw $t0, -8424($fp)
	lw $t1, -8412($fp)
	lw $t2, -8424($fp)
	ble $t1, $t2, label412
	j label413
label412:
	li $t0, 1
	sw $t0, -8408($fp)
label413:
	li $t0, 0
	sw $t0, -8428($fp)
	lw $t0, -1848($fp)
	sw $t0, -8432($fp)
	lw $t0, -2448($fp)
	sw $t0, -8436($fp)
	lw $t1, -8432($fp)
	lw $t2, -8436($fp)
	blt $t1, $t2, label416
	j label417
label416:
	li $t0, 1
	sw $t0, -8428($fp)
label417:
	li $t0, 55130
	sw $t0, -8440($fp)
	lw $t0, -8440($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -8444($fp)
	li $t0, 0
	sw $t0, -8448($fp)
	lw $t0, -6084($fp)
	sw $t0, -8452($fp)
	lw $t1, -8452($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label420
label420:
	lw $t0, -1212($fp)
	sw $t0, -8456($fp)
	lw $t1, -8456($fp)
	li $t2, 0
	bne $t1, $t2, label418
	j label419
label418:
	li $t0, 1
	sw $t0, -8448($fp)
label419:
	addi $sp, $sp, -4
	lw $t0, -8404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8448($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8460($fp)
	addi $sp, $sp, 24
	lw $t1, -8460($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label410
label410:
	li $t0, 1
	sw $t0, -8400($fp)
label411:
	addi $t0, $fp, -196
	sw $t0, -8464($fp)
	lw $t0, -6096($fp)
	sw $t0, -8468($fp)
	li $t0, 4
	lw $t1, -8468($fp)
	mul $t0, $t0, $t1
	sw $t0, -8472($fp)
	lw $t0, -8472($fp)
	lw $t1, -8464($fp)
	add $t0, $t0, $t1
	sw $t0, -8476($fp)
	lw $t0, -8476($fp)
	lw $t1, 0($t0)
	sw $t1, -8480($fp)
	lw $t0, -8400($fp)
	lw $t1, -8480($fp)
	add $t0, $t0, $t1
	sw $t0, -8484($fp)
	lw $t1, -8484($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label376
label375:
	li $t0, 1
	sw $t0, -8036($fp)
label376:
label368:
	j label229
label228:
	li $t0, 0
	sw $t0, -8488($fp)
	lw $t0, -1752($fp)
	sw $t0, -8492($fp)
	lw $t0, -1884($fp)
	sw $t0, -8496($fp)
	lw $t1, -8492($fp)
	lw $t2, -8496($fp)
	beq $t1, $t2, label426
	j label425
label426:
	li $t0, 43835
	sw $t0, -8500($fp)
	lw $t1, -8500($fp)
	li $t2, 0
	bne $t1, $t2, label424
	j label425
label424:
	li $t0, 1
	sw $t0, -8488($fp)
label425:
	li $t0, 0
	sw $t0, -8504($fp)
	lw $t0, -1872($fp)
	sw $t0, -8508($fp)
	lw $t1, -8508($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label430
label430:
	lw $t0, -1728($fp)
	sw $t0, -8512($fp)
	lw $t1, -8512($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label429
label429:
	lw $t0, -1740($fp)
	sw $t0, -8516($fp)
	lw $t1, -8516($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label428
label427:
	li $t0, 1
	sw $t0, -8504($fp)
label428:
	li $t0, 1519
	sw $t0, -8520($fp)
	li $t0, 0
	lw $t1, -8520($fp)
	sub $t0, $t0, $t1
	sw $t0, -8524($fp)
	li $t0, 0
	lw $t1, -8524($fp)
	sub $t0, $t0, $t1
	sw $t0, -8528($fp)
	lw $t0, -1212($fp)
	sw $t0, -8532($fp)
	lw $t0, -8532($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	sw $t0, -8536($fp)
	li $t0, 0
	sw $t0, -8540($fp)
	addi $t0, $fp, -140
	sw $t0, -8544($fp)
	lw $t0, -1224($fp)
	sw $t0, -8548($fp)
	li $t0, 4
	lw $t1, -8548($fp)
	mul $t0, $t0, $t1
	sw $t0, -8552($fp)
	lw $t0, -8552($fp)
	lw $t1, -8544($fp)
	add $t0, $t0, $t1
	sw $t0, -8556($fp)
	lw $t0, -8556($fp)
	lw $t1, 0($t0)
	sw $t1, -8560($fp)
	lw $t1, -8560($fp)
	li $t2, 0
	bne $t1, $t2, label431
	j label433
label433:
	lw $t0, -1176($fp)
	sw $t0, -8564($fp)
	lw $t1, -8564($fp)
	li $t2, 0
	bne $t1, $t2, label431
	j label432
label431:
	li $t0, 1
	sw $t0, -8540($fp)
label432:
	lw $t0, -1284($fp)
	sw $t0, -8568($fp)
	lw $t0, -8568($fp)
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	sw $t0, -8572($fp)
	li $t0, 0
	sw $t0, -8576($fp)
	li $t0, 17687
	sw $t0, -8580($fp)
	lw $t0, -1464($fp)
	sw $t0, -8584($fp)
	lw $t0, -8580($fp)
	lw $t1, -8584($fp)
	mul $t0, $t0, $t1
	sw $t0, -8588($fp)
	lw $t0, -1428($fp)
	sw $t0, -8592($fp)
	lw $t1, -8588($fp)
	lw $t2, -8592($fp)
	beq $t1, $t2, label434
	j label435
label434:
	li $t0, 1
	sw $t0, -8576($fp)
label435:
	li $t0, 0
	sw $t0, -8596($fp)
	lw $t0, -1128($fp)
	sw $t0, -8600($fp)
	lw $t0, -1440($fp)
	sw $t0, -8604($fp)
	lw $t1, -8600($fp)
	lw $t2, -8604($fp)
	beq $t1, $t2, label436
	j label438
label438:
	lw $t0, -1452($fp)
	sw $t0, -8608($fp)
	lw $t1, -8608($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label437
label436:
	li $t0, 1
	sw $t0, -8596($fp)
label437:
	addi $t0, $fp, -232
	sw $t0, -8612($fp)
	li $t0, 6
	sw $t0, -8616($fp)
	li $t0, 4
	lw $t1, -8616($fp)
	mul $t0, $t0, $t1
	sw $t0, -8620($fp)
	lw $t0, -8620($fp)
	lw $t1, -8612($fp)
	add $t0, $t0, $t1
	sw $t0, -8624($fp)
	lw $t0, -8624($fp)
	lw $t1, 0($t0)
	sw $t1, -8628($fp)
	li $t0, 0
	sw $t0, -8632($fp)
	li $t0, 38322
	sw $t0, -8636($fp)
	lw $t1, -8636($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label442
label442:
	li $t0, 19010
	sw $t0, -8640($fp)
	lw $t1, -8640($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label441
label441:
	li $t0, 39654
	sw $t0, -8644($fp)
	lw $t1, -8644($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label440
label439:
	li $t0, 1
	sw $t0, -8632($fp)
label440:
	addi $t0, $fp, -196
	sw $t0, -8648($fp)
	lw $t0, -1872($fp)
	sw $t0, -8652($fp)
	li $t0, 4
	lw $t1, -8652($fp)
	mul $t0, $t0, $t1
	sw $t0, -8656($fp)
	lw $t0, -8656($fp)
	lw $t1, -8648($fp)
	add $t0, $t0, $t1
	sw $t0, -8660($fp)
	lw $t0, -8660($fp)
	lw $t1, 0($t0)
	sw $t1, -8664($fp)
	addi $sp, $sp, -4
	lw $t0, -8576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8664($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8668($fp)
	addi $sp, $sp, 24
	li $t0, 29468
	sw $t0, -8672($fp)
	lw $t0, -8668($fp)
	lw $t1, -8672($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8676($fp)
	addi $t0, $fp, -100
	sw $t0, -8680($fp)
	lw $t0, -672($fp)
	sw $t0, -8684($fp)
	li $t0, 4
	lw $t1, -8684($fp)
	mul $t0, $t0, $t1
	sw $t0, -8688($fp)
	lw $t0, -8688($fp)
	lw $t1, -8680($fp)
	add $t0, $t0, $t1
	sw $t0, -8692($fp)
	lw $t0, -8692($fp)
	lw $t1, 0($t0)
	sw $t1, -8696($fp)
	addi $t0, $fp, -140
	sw $t0, -8700($fp)
	lw $t0, -2196($fp)
	sw $t0, -8704($fp)
	li $t0, 4
	lw $t1, -8704($fp)
	mul $t0, $t0, $t1
	sw $t0, -8708($fp)
	lw $t0, -8708($fp)
	lw $t1, -8700($fp)
	add $t0, $t0, $t1
	sw $t0, -8712($fp)
	lw $t0, -8712($fp)
	lw $t1, 0($t0)
	sw $t1, -8716($fp)
	addi $t0, $fp, -196
	sw $t0, -8720($fp)
	lw $t0, -1104($fp)
	sw $t0, -8724($fp)
	li $t0, 4
	lw $t1, -8724($fp)
	mul $t0, $t0, $t1
	sw $t0, -8728($fp)
	lw $t0, -8728($fp)
	lw $t1, -8720($fp)
	add $t0, $t0, $t1
	sw $t0, -8732($fp)
	lw $t0, -8732($fp)
	lw $t1, 0($t0)
	sw $t1, -8736($fp)
	li $t0, 43128
	sw $t0, -8740($fp)
	lw $t0, -8736($fp)
	lw $t1, -8740($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8744($fp)
	lw $t0, -1848($fp)
	sw $t0, -8748($fp)
	li $t0, 0
	lw $t1, -8748($fp)
	sub $t0, $t0, $t1
	sw $t0, -8752($fp)
	li $t0, 0
	lw $t1, -8752($fp)
	sub $t0, $t0, $t1
	sw $t0, -8756($fp)
	li $t0, 0
	sw $t0, -8760($fp)
	li $t0, 22806
	sw $t0, -8764($fp)
	li $t0, 39256
	sw $t0, -8768($fp)
	lw $t0, -8764($fp)
	lw $t1, -8768($fp)
	add $t0, $t0, $t1
	sw $t0, -8772($fp)
	li $t0, 28175
	sw $t0, -8776($fp)
	lw $t1, -8772($fp)
	lw $t2, -8776($fp)
	blt $t1, $t2, label443
	j label444
label443:
	li $t0, 1
	sw $t0, -8760($fp)
label444:
	addi $t0, $fp, -168
	sw $t0, -8780($fp)
	li $t0, 0
	sw $t0, -8784($fp)
	li $t0, 4
	lw $t1, -8784($fp)
	mul $t0, $t0, $t1
	sw $t0, -8788($fp)
	lw $t0, -8788($fp)
	lw $t1, -8780($fp)
	add $t0, $t0, $t1
	sw $t0, -8792($fp)
	lw $t0, -8792($fp)
	lw $t1, 0($t0)
	sw $t1, -8796($fp)
	lw $t0, -1836($fp)
	sw $t0, -8800($fp)
	lw $t0, -1296($fp)
	sw $t0, -8804($fp)
	lw $t0, -8800($fp)
	lw $t1, -8804($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8808($fp)
	lw $t0, -1896($fp)
	sw $t0, -8812($fp)
	lw $t0, -8808($fp)
	lw $t1, -8812($fp)
	add $t0, $t0, $t1
	sw $t0, -8816($fp)
	addi $sp, $sp, -4
	lw $t0, -8744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8816($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8820($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -8820($fp)
	sub $t0, $t0, $t1
	sw $t0, -8824($fp)
	addi $sp, $sp, -4
	lw $t0, -8572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8824($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8828($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -8828($fp)
	sub $t0, $t0, $t1
	sw $t0, -8832($fp)
	addi $sp, $sp, -4
	lw $t0, -8504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8832($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8836($fp)
	addi $sp, $sp, 24
	li $t0, 10516
	sw $t0, -8840($fp)
	li $t0, 29168
	sw $t0, -8844($fp)
	lw $t0, -8844($fp)
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	sw $t0, -8848($fp)
	li $t0, 58371
	sw $t0, -8852($fp)
	addi $sp, $sp, -4
	lw $t0, -8488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8852($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8856($fp)
	addi $sp, $sp, 24
	li $t0, 43004
	sw $t0, -8860($fp)
	li $t0, 0
	lw $t1, -8860($fp)
	sub $t0, $t0, $t1
	sw $t0, -8864($fp)
	lw $t0, -8856($fp)
	lw $t1, -8864($fp)
	sub $t0, $t0, $t1
	sw $t0, -8868($fp)
	lw $t1, -8868($fp)
	li $t2, 0
	bne $t1, $t2, label421
	j label422
label421:
	li $t0, 63744
	sw $t0, -8872($fp)
	li $t0, 0
	sw $t0, -8876($fp)
	addi $t0, $fp, -148
	sw $t0, -8880($fp)
	li $t0, 1
	sw $t0, -8884($fp)
	li $t0, 4
	lw $t1, -8884($fp)
	mul $t0, $t0, $t1
	sw $t0, -8888($fp)
	lw $t0, -8888($fp)
	lw $t1, -8880($fp)
	add $t0, $t0, $t1
	sw $t0, -8892($fp)
	lw $t0, -8892($fp)
	lw $t1, 0($t0)
	sw $t1, -8896($fp)
	lw $t1, -8896($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label448
label448:
	li $t0, 1
	sw $t0, -8876($fp)
label449:
	lw $t0, -8872($fp)
	lw $t1, -8876($fp)
	mul $t0, $t0, $t1
	sw $t0, -8900($fp)
	lw $t1, -8900($fp)
	li $t2, 0
	bne $t1, $t2, label445
	j label446
label445:
	lw $t0, -1224($fp)
	sw $t0, -8904($fp)
	lw $ra, -4($fp)
	lw $v0, -8904($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label447
label446:
	li $t0, 47907
	sw $t0, -8920($fp)
	addi $t0, $fp, -8916
	sw $t0, -8924($fp)
	li $t0, 0
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
	li $t0, 65507
	sw $t0, -8944($fp)
	addi $t0, $fp, -8916
	sw $t0, -8948($fp)
	li $t0, 1
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
	li $t0, 62915
	sw $t0, -8968($fp)
	addi $t0, $fp, -8916
	sw $t0, -8972($fp)
	li $t0, 2
	sw $t0, -8976($fp)
	lw $t0, -8976($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8980($fp)
	lw $t0, -8972($fp)
	lw $t1, -8980($fp)
	add $t0, $t0, $t1
	sw $t0, -8984($fp)
	lw $t0, -8968($fp)
	lw $t1, -8984($fp)
	sw $t0, 0($t1)
	lw $t0, -8984($fp)
	lw $t1, 0($t0)
	sw $t1, -8988($fp)
	li $t0, 32657
	sw $t0, -8992($fp)
	lw $t0, -8992($fp)
	sw $t0, -8996($fp)
	lw $t0, -8996($fp)
	sw $t0, -9000($fp)
	li $t0, 23363
	sw $t0, -9004($fp)
	lw $t0, -9004($fp)
	sw $t0, -9008($fp)
	lw $t0, -9008($fp)
	sw $t0, -9012($fp)
	li $t0, 37056
	sw $t0, -9016($fp)
	lw $t0, -9016($fp)
	sw $t0, -9020($fp)
	lw $t0, -9020($fp)
	sw $t0, -9024($fp)
	li $t0, 0
	sw $t0, -9028($fp)
	li $t0, 0
	sw $t0, -9032($fp)
	addi $t0, $fp, -8916
	sw $t0, -9036($fp)
	lw $t0, -1116($fp)
	sw $t0, -9040($fp)
	li $t0, 4
	lw $t1, -9040($fp)
	mul $t0, $t0, $t1
	sw $t0, -9044($fp)
	lw $t0, -9044($fp)
	lw $t1, -9036($fp)
	add $t0, $t0, $t1
	sw $t0, -9048($fp)
	lw $t0, -9048($fp)
	lw $t1, 0($t0)
	sw $t1, -9052($fp)
	lw $t1, -9052($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label453
label453:
	li $t0, 1
	sw $t0, -9032($fp)
label454:
	li $t0, 0
	lw $t1, -9032($fp)
	sub $t0, $t0, $t1
	sw $t0, -9056($fp)
	lw $t1, -9056($fp)
	li $t2, 0
	bne $t1, $t2, label450
	j label452
label452:
	lw $t0, -8996($fp)
	sw $t0, -9060($fp)
	lw $t0, -1392($fp)
	sw $t0, -9064($fp)
	lw $t0, -9060($fp)
	lw $t1, -9064($fp)
	add $t0, $t0, $t1
	sw $t0, -9068($fp)
	lw $t0, -1836($fp)
	sw $t0, -9072($fp)
	li $t0, 39812
	sw $t0, -9076($fp)
	lw $t0, -9076($fp)
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	sw $t0, -9080($fp)
	li $t0, 0
	sw $t0, -9084($fp)
	li $t0, 29296
	sw $t0, -9088($fp)
	li $t0, 15086
	sw $t0, -9092($fp)
	lw $t1, -9088($fp)
	lw $t2, -9092($fp)
	beq $t1, $t2, label457
	j label456
label457:
	li $t0, 3989
	sw $t0, -9096($fp)
	lw $t1, -9096($fp)
	li $t2, 0
	bne $t1, $t2, label455
	j label456
label455:
	li $t0, 1
	sw $t0, -9084($fp)
label456:
	li $t0, 0
	sw $t0, -9100($fp)
	lw $t0, -1812($fp)
	sw $t0, -9104($fp)
	li $t0, 22251
	sw $t0, -9108($fp)
	lw $t1, -9104($fp)
	lw $t2, -9108($fp)
	blt $t1, $t2, label460
	j label459
label460:
	li $t0, 40357
	sw $t0, -9112($fp)
	lw $t1, -9112($fp)
	li $t2, 0
	bne $t1, $t2, label458
	j label459
label458:
	li $t0, 1
	sw $t0, -9100($fp)
label459:
	addi $sp, $sp, -4
	lw $t0, -9068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9100($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9116($fp)
	addi $sp, $sp, 24
	lw $t0, -9008($fp)
	sw $t0, -9120($fp)
	lw $t0, -1380($fp)
	sw $t0, -9124($fp)
	lw $t0, -9120($fp)
	lw $t1, -9124($fp)
	mul $t0, $t0, $t1
	sw $t0, -9128($fp)
	lw $t1, -9116($fp)
	lw $t2, -9128($fp)
	bne $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -9028($fp)
label451:
	li $t0, 0
	sw $t0, -9132($fp)
	li $t0, 0
	sw $t0, -9136($fp)
	lw $t0, -1236($fp)
	sw $t0, -9140($fp)
	li $t0, 12468
	sw $t0, -9144($fp)
	lw $t1, -9140($fp)
	lw $t2, -9144($fp)
	bge $t1, $t2, label463
	j label464
label463:
	li $t0, 1
	sw $t0, -9136($fp)
label464:
	li $t0, 0
	sw $t0, -9148($fp)
	addi $t0, $fp, -196
	sw $t0, -9152($fp)
	lw $t0, -1236($fp)
	sw $t0, -9156($fp)
	li $t0, 4
	lw $t1, -9156($fp)
	mul $t0, $t0, $t1
	sw $t0, -9160($fp)
	lw $t0, -9160($fp)
	lw $t1, -9152($fp)
	add $t0, $t0, $t1
	sw $t0, -9164($fp)
	lw $t0, -9164($fp)
	lw $t1, 0($t0)
	sw $t1, -9168($fp)
	lw $t1, -9168($fp)
	li $t2, 0
	bne $t1, $t2, label466
	j label465
label465:
	li $t0, 1
	sw $t0, -9148($fp)
label466:
	li $t0, 24726
	sw $t0, -9172($fp)
	lw $t0, -9148($fp)
	lw $t1, -9172($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9176($fp)
	lw $t1, -9136($fp)
	lw $t2, -9176($fp)
	bgt $t1, $t2, label461
	j label462
label461:
	li $t0, 1
	sw $t0, -9132($fp)
label462:
	li $t0, 0
	sw $t0, -9180($fp)
	li $t0, 6375
	sw $t0, -9184($fp)
	lw $t0, -9184($fp)
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	sw $t0, -9188($fp)
	li $t0, 0
	sw $t0, -9192($fp)
	li $t0, 52901
	sw $t0, -9196($fp)
	li $t0, 40210
	sw $t0, -9200($fp)
	lw $t0, -9196($fp)
	lw $t1, -9200($fp)
	sub $t0, $t0, $t1
	sw $t0, -9204($fp)
	li $t0, 24511
	sw $t0, -9208($fp)
	lw $t1, -9204($fp)
	lw $t2, -9208($fp)
	bne $t1, $t2, label469
	j label470
label469:
	li $t0, 1
	sw $t0, -9192($fp)
label470:
	li $t0, 0
	sw $t0, -9212($fp)
	lw $t0, -1860($fp)
	sw $t0, -9216($fp)
	lw $t1, -9216($fp)
	li $t2, 0
	bne $t1, $t2, label472
	j label471
label471:
	li $t0, 1
	sw $t0, -9212($fp)
label472:
	li $t0, 0
	sw $t0, -9220($fp)
	li $t0, 51724
	sw $t0, -9224($fp)
	lw $t0, -1848($fp)
	sw $t0, -9228($fp)
	lw $t1, -9224($fp)
	lw $t2, -9228($fp)
	ble $t1, $t2, label473
	j label474
label473:
	li $t0, 1
	sw $t0, -9220($fp)
label474:
	li $t0, 62618
	sw $t0, -9232($fp)
	addi $sp, $sp, -4
	lw $t0, -9188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9232($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9236($fp)
	addi $sp, $sp, 24
	lw $t1, -9236($fp)
	li $t2, 0
	bne $t1, $t2, label467
	j label468
label467:
	li $t0, 1
	sw $t0, -9180($fp)
label468:
	li $t0, 14329
	sw $t0, -9240($fp)
	lw $t0, -1212($fp)
	sw $t0, -9244($fp)
	lw $t0, -9244($fp)
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	sw $t0, -9248($fp)
	addi $t0, $fp, -56
	sw $t0, -9252($fp)
	lw $t0, -768($fp)
	sw $t0, -9256($fp)
	li $t0, 4
	lw $t1, -9256($fp)
	mul $t0, $t0, $t1
	sw $t0, -9260($fp)
	lw $t0, -9260($fp)
	lw $t1, -9252($fp)
	add $t0, $t0, $t1
	sw $t0, -9264($fp)
	lw $t0, -9264($fp)
	lw $t1, 0($t0)
	sw $t1, -9268($fp)
	lw $t0, -3348($fp)
	sw $t0, -9272($fp)
	lw $t0, -9268($fp)
	lw $t1, -9272($fp)
	add $t0, $t0, $t1
	sw $t0, -9276($fp)
	li $t0, 0
	sw $t0, -9280($fp)
	lw $t0, -9020($fp)
	sw $t0, -9284($fp)
	lw $t0, -1320($fp)
	sw $t0, -9288($fp)
	lw $t1, -9284($fp)
	lw $t2, -9288($fp)
	blt $t1, $t2, label477
	j label476
label477:
	lw $t0, -1140($fp)
	sw $t0, -9292($fp)
	lw $t1, -9292($fp)
	li $t2, 0
	bne $t1, $t2, label475
	j label476
label475:
	li $t0, 1
	sw $t0, -9280($fp)
label476:
	lw $t0, -1884($fp)
	sw $t0, -9296($fp)
	lw $t0, 20($fp)
	sw $t0, -9300($fp)
	lw $t0, -9296($fp)
	lw $t1, -9300($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9304($fp)
	addi $t0, $fp, -232
	sw $t0, -9308($fp)
	li $t0, 3
	sw $t0, -9312($fp)
	li $t0, 4
	lw $t1, -9312($fp)
	mul $t0, $t0, $t1
	sw $t0, -9316($fp)
	lw $t0, -9316($fp)
	lw $t1, -9308($fp)
	add $t0, $t0, $t1
	sw $t0, -9320($fp)
	lw $t0, -9320($fp)
	lw $t1, 0($t0)
	sw $t1, -9324($fp)
	lw $t0, 16($fp)
	sw $t0, -9328($fp)
	lw $t0, -9324($fp)
	lw $t1, -9328($fp)
	mul $t0, $t0, $t1
	sw $t0, -9332($fp)
	addi $sp, $sp, -4
	lw $t0, -9248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9332($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9336($fp)
	addi $sp, $sp, 24
	li $t0, 32016
	sw $t0, -9340($fp)
	lw $t0, -9340($fp)
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	sw $t0, -9344($fp)
	li $t0, 43020
	sw $t0, -9348($fp)
	li $t0, 0
	sw $t0, -9352($fp)
	li $t0, 49394
	sw $t0, -9356($fp)
	lw $t0, -1224($fp)
	sw $t0, -9360($fp)
	lw $t1, -9356($fp)
	lw $t2, -9360($fp)
	beq $t1, $t2, label478
	j label479
label478:
	li $t0, 1
	sw $t0, -9352($fp)
label479:
	li $t0, 0
	sw $t0, -9364($fp)
	lw $t0, -1848($fp)
	sw $t0, -9368($fp)
	lw $t0, -2664($fp)
	sw $t0, -9372($fp)
	lw $t1, -9368($fp)
	lw $t2, -9372($fp)
	beq $t1, $t2, label482
	j label481
label482:
	lw $t0, 20($fp)
	sw $t0, -9376($fp)
	lw $t1, -9376($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label481
label480:
	li $t0, 1
	sw $t0, -9364($fp)
label481:
	addi $sp, $sp, -4
	lw $t0, -9336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9364($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9380($fp)
	addi $sp, $sp, 24
	lw $t0, -9240($fp)
	lw $t1, -9380($fp)
	sub $t0, $t0, $t1
	sw $t0, -9384($fp)
	addi $t0, $fp, -260
	sw $t0, -9388($fp)
	li $t0, 0
	sw $t0, -9392($fp)
	lw $t0, -1380($fp)
	sw $t0, -9396($fp)
	li $t0, 10315
	sw $t0, -9400($fp)
	lw $t1, -9396($fp)
	lw $t2, -9400($fp)
	beq $t1, $t2, label483
	j label486
label486:
	li $t0, 56330
	sw $t0, -9404($fp)
	lw $t1, -9404($fp)
	li $t2, 0
	bne $t1, $t2, label483
	j label485
label485:
	lw $t0, -2664($fp)
	sw $t0, -9408($fp)
	li $t0, 42747
	sw $t0, -9412($fp)
	lw $t1, -9408($fp)
	lw $t2, -9412($fp)
	ble $t1, $t2, label483
	j label484
label483:
	li $t0, 1
	sw $t0, -9392($fp)
label484:
	li $t0, 4
	lw $t1, -9392($fp)
	mul $t0, $t0, $t1
	sw $t0, -9416($fp)
	lw $t0, -9416($fp)
	lw $t1, -9388($fp)
	add $t0, $t0, $t1
	sw $t0, -9420($fp)
	lw $t0, -9420($fp)
	lw $t1, 0($t0)
	sw $t1, -9424($fp)
label447:
	j label423
label422:
label487:
	li $t0, 19689
	sw $t0, -9428($fp)
	lw $t0, -9428($fp)
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	sw $t0, -9432($fp)
	lw $t1, -9432($fp)
	li $t2, 0
	bne $t1, $t2, label488
	j label489
label488:
	li $t0, 0
	sw $t0, -9436($fp)
	li $t0, 0
	sw $t0, -9440($fp)
	li $t0, 0
	sw $t0, -9444($fp)
	lw $t0, -2472($fp)
	sw $t0, -9448($fp)
	li $t0, 46635
	sw $t0, -9452($fp)
	lw $t1, -9448($fp)
	lw $t2, -9452($fp)
	bne $t1, $t2, label494
	j label495
label494:
	li $t0, 1
	sw $t0, -9444($fp)
label495:
	li $t0, 1244
	sw $t0, -9456($fp)
	lw $t1, -9444($fp)
	lw $t2, -9456($fp)
	bne $t1, $t2, label492
	j label493
label492:
	li $t0, 1
	sw $t0, -9440($fp)
label493:
	li $t0, 39534
	sw $t0, -9460($fp)
	lw $t0, -9460($fp)
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	sw $t0, -9464($fp)
	li $t0, 0
	sw $t0, -9468($fp)
	lw $t0, -2652($fp)
	sw $t0, -9472($fp)
	li $t0, 40724
	sw $t0, -9476($fp)
	lw $t1, -9472($fp)
	lw $t2, -9476($fp)
	ble $t1, $t2, label496
	j label497
label496:
	li $t0, 1
	sw $t0, -9468($fp)
label497:
	lw $t0, -2196($fp)
	sw $t0, -9480($fp)
	lw $t0, -9480($fp)
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	sw $t0, -9484($fp)
	li $t0, 0
	sw $t0, -9488($fp)
	li $t0, 0
	sw $t0, -9492($fp)
	li $t0, 49930
	sw $t0, -9496($fp)
	li $t0, 62323
	sw $t0, -9500($fp)
	lw $t1, -9496($fp)
	lw $t2, -9500($fp)
	bgt $t1, $t2, label500
	j label501
label500:
	li $t0, 1
	sw $t0, -9492($fp)
label501:
	li $t0, 26946
	sw $t0, -9504($fp)
	lw $t1, -9492($fp)
	lw $t2, -9504($fp)
	bgt $t1, $t2, label498
	j label499
label498:
	li $t0, 1
	sw $t0, -9488($fp)
label499:
	addi $sp, $sp, -4
	lw $t0, -9440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9488($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9508($fp)
	addi $sp, $sp, 24
	lw $t0, -2904($fp)
	sw $t0, -9512($fp)
	lw $t1, -9508($fp)
	lw $t2, -9512($fp)
	bgt $t1, $t2, label490
	j label491
label490:
	li $t0, 1
	sw $t0, -9436($fp)
label491:
	li $t0, 0
	sw $t0, -9516($fp)
	li $t0, 17784
	sw $t0, -9520($fp)
	li $t0, 16631
	sw $t0, -9524($fp)
	lw $t1, -9520($fp)
	lw $t2, -9524($fp)
	ble $t1, $t2, label504
	j label503
label504:
	lw $t0, -1728($fp)
	sw $t0, -9528($fp)
	lw $t1, -9528($fp)
	li $t2, 0
	bne $t1, $t2, label502
	j label503
label502:
	li $t0, 1
	sw $t0, -9516($fp)
label503:
	lw $t0, -1728($fp)
	sw $t0, -9532($fp)
	lw $t0, -1284($fp)
	sw $t0, -9536($fp)
	lw $t0, -9532($fp)
	lw $t1, -9536($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9540($fp)
	li $t0, 36603
	sw $t0, -9544($fp)
	lw $t0, -9540($fp)
	lw $t1, -9544($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9548($fp)
	li $t0, 0
	sw $t0, -9552($fp)
	lw $t0, -1356($fp)
	sw $t0, -9556($fp)
	lw $t1, -9556($fp)
	li $t2, 0
	bne $t1, $t2, label508
	j label506
label508:
	li $t0, 50150
	sw $t0, -9560($fp)
	lw $t1, -9560($fp)
	li $t2, 0
	bne $t1, $t2, label507
	j label506
label507:
	lw $t0, -1848($fp)
	sw $t0, -9564($fp)
	lw $t1, -9564($fp)
	li $t2, 0
	bne $t1, $t2, label505
	j label506
label505:
	li $t0, 1
	sw $t0, -9552($fp)
label506:
	li $t0, 0
	sw $t0, -9568($fp)
	li $t0, 0
	sw $t0, -9572($fp)
	li $t0, 40300
	sw $t0, -9576($fp)
	lw $t1, -9576($fp)
	li $t2, 0
	bne $t1, $t2, label512
	j label511
label511:
	li $t0, 1
	sw $t0, -9572($fp)
label512:
	lw $t0, -684($fp)
	sw $t0, -9580($fp)
	lw $t1, -9572($fp)
	lw $t2, -9580($fp)
	bge $t1, $t2, label509
	j label510
label509:
	li $t0, 1
	sw $t0, -9568($fp)
label510:
	addi $t0, $fp, -248
	sw $t0, -9584($fp)
	lw $t0, -2880($fp)
	sw $t0, -9588($fp)
	li $t0, 4
	lw $t1, -9588($fp)
	mul $t0, $t0, $t1
	sw $t0, -9592($fp)
	lw $t0, -9592($fp)
	lw $t1, -9584($fp)
	add $t0, $t0, $t1
	sw $t0, -9596($fp)
	lw $t0, -9596($fp)
	lw $t1, 0($t0)
	sw $t1, -9600($fp)
	li $t0, 0
	sw $t0, -9604($fp)
	li $t0, 35821
	sw $t0, -9608($fp)
	li $t0, 0
	lw $t1, -9608($fp)
	sub $t0, $t0, $t1
	sw $t0, -9612($fp)
	li $t0, 52745
	sw $t0, -9616($fp)
	lw $t1, -9612($fp)
	lw $t2, -9616($fp)
	bne $t1, $t2, label513
	j label514
label513:
	li $t0, 1
	sw $t0, -9604($fp)
label514:
	lw $t0, -1836($fp)
	sw $t0, -9620($fp)
	li $t0, 33925
	sw $t0, -9624($fp)
	lw $t0, -9624($fp)
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	sw $t0, -9628($fp)
	li $t0, 28234
	sw $t0, -9632($fp)
	li $t0, 0
	sw $t0, -9636($fp)
	li $t0, 61147
	sw $t0, -9640($fp)
	lw $t0, 20($fp)
	sw $t0, -9644($fp)
	lw $t0, -9640($fp)
	lw $t1, -9644($fp)
	add $t0, $t0, $t1
	sw $t0, -9648($fp)
	lw $t0, -1836($fp)
	sw $t0, -9652($fp)
	lw $t1, -9648($fp)
	lw $t2, -9652($fp)
	blt $t1, $t2, label515
	j label516
label515:
	li $t0, 1
	sw $t0, -9636($fp)
label516:
	addi $sp, $sp, -4
	lw $t0, -9604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9636($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9656($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -9660($fp)
	li $t0, 46559
	sw $t0, -9664($fp)
	lw $t0, -1380($fp)
	sw $t0, -9668($fp)
	lw $t1, -9664($fp)
	lw $t2, -9668($fp)
	beq $t1, $t2, label517
	j label519
label519:
	lw $t0, -1848($fp)
	sw $t0, -9672($fp)
	lw $t1, -9672($fp)
	li $t2, 0
	bne $t1, $t2, label517
	j label518
label517:
	li $t0, 1
	sw $t0, -9660($fp)
label518:
	addi $sp, $sp, -4
	lw $t0, -9552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9660($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9676($fp)
	addi $sp, $sp, 24
	lw $t0, -1728($fp)
	sw $t0, -9680($fp)
	lw $t0, -9676($fp)
	lw $t1, -9680($fp)
	mul $t0, $t0, $t1
	sw $t0, -9684($fp)
	li $t0, 42046
	sw $t0, -9688($fp)
	lw $t0, -2436($fp)
	sw $t0, -9692($fp)
	li $t0, 0
	lw $t1, -9692($fp)
	sub $t0, $t0, $t1
	sw $t0, -9696($fp)
	li $t0, 0
	lw $t1, -9696($fp)
	sub $t0, $t0, $t1
	sw $t0, -9700($fp)
	addi $sp, $sp, -4
	lw $t0, -9516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9700($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9704($fp)
	addi $sp, $sp, 24
	lw $t0, -1248($fp)
	sw $t0, -9708($fp)
	lw $t0, -9704($fp)
	lw $t1, -9708($fp)
	sub $t0, $t0, $t1
	sw $t0, -9712($fp)
	li $t0, 0
	sw $t0, -9716($fp)
	li $t0, 64064
	sw $t0, -9720($fp)
	lw $t1, -9720($fp)
	li $t2, 0
	bne $t1, $t2, label520
	j label522
label522:
	lw $t0, -1896($fp)
	sw $t0, -9724($fp)
	lw $t1, -9724($fp)
	li $t2, 0
	bne $t1, $t2, label520
	j label521
label520:
	li $t0, 1
	sw $t0, -9716($fp)
label521:
	li $t0, 21833
	sw $t0, -9728($fp)
	lw $t0, -9728($fp)
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	sw $t0, -9732($fp)
	lw $t0, -780($fp)
	sw $t0, -9736($fp)
	li $t0, 24252
	sw $t0, -9740($fp)
	lw $t0, -768($fp)
	sw $t0, -9744($fp)
	lw $t0, -9740($fp)
	lw $t1, -9744($fp)
	mul $t0, $t0, $t1
	sw $t0, -9748($fp)
	li $t0, 0
	sw $t0, -9752($fp)
	li $t0, 14491
	sw $t0, -9756($fp)
	lw $t1, -9756($fp)
	li $t2, 0
	bne $t1, $t2, label523
	j label525
label525:
	li $t0, 17844
	sw $t0, -9760($fp)
	lw $t1, -9760($fp)
	li $t2, 0
	bne $t1, $t2, label523
	j label524
label523:
	li $t0, 1
	sw $t0, -9752($fp)
label524:
	li $t0, 43023
	sw $t0, -9764($fp)
	li $t0, 0
	sw $t0, -9768($fp)
	lw $t0, -2436($fp)
	sw $t0, -9772($fp)
	lw $t1, -9772($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label526
label526:
	li $t0, 1
	sw $t0, -9768($fp)
label527:
	li $t0, 23435
	sw $t0, -9776($fp)
	li $t0, 57776
	sw $t0, -9780($fp)
	lw $t0, -9776($fp)
	lw $t1, -9780($fp)
	mul $t0, $t0, $t1
	sw $t0, -9784($fp)
	li $t0, 0
	lw $t1, -9784($fp)
	sub $t0, $t0, $t1
	sw $t0, -9788($fp)
	li $t0, 0
	sw $t0, -9792($fp)
	lw $t0, -684($fp)
	sw $t0, -9796($fp)
	lw $t0, -1872($fp)
	sw $t0, -9800($fp)
	lw $t1, -9796($fp)
	lw $t2, -9800($fp)
	ble $t1, $t2, label528
	j label529
label528:
	li $t0, 1
	sw $t0, -9792($fp)
label529:
	li $t0, 0
	sw $t0, -9804($fp)
	lw $t0, -1380($fp)
	sw $t0, -9808($fp)
	lw $t1, -9808($fp)
	li $t2, 0
	bne $t1, $t2, label531
	j label532
label532:
	lw $t0, -792($fp)
	sw $t0, -9812($fp)
	lw $t1, -9812($fp)
	li $t2, 0
	bne $t1, $t2, label530
	j label531
label530:
	li $t0, 1
	sw $t0, -9804($fp)
label531:
	addi $sp, $sp, -4
	lw $t0, -9764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9804($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9816($fp)
	addi $sp, $sp, 24
	li $t0, 60491
	sw $t0, -9820($fp)
	lw $t0, -9816($fp)
	lw $t1, -9820($fp)
	add $t0, $t0, $t1
	sw $t0, -9824($fp)
	li $t0, 0
	sw $t0, -9828($fp)
	li $t0, 26056
	sw $t0, -9832($fp)
	li $t0, 25118
	sw $t0, -9836($fp)
	lw $t1, -9832($fp)
	lw $t2, -9836($fp)
	bne $t1, $t2, label533
	j label535
label535:
	li $t0, 19660
	sw $t0, -9840($fp)
	lw $t1, -9840($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label534
label533:
	li $t0, 1
	sw $t0, -9828($fp)
label534:
	addi $sp, $sp, -4
	lw $t0, -9736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9828($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9844($fp)
	addi $sp, $sp, 24
	li $t0, 29578
	sw $t0, -9848($fp)
	lw $t0, -9844($fp)
	lw $t1, -9848($fp)
	mul $t0, $t0, $t1
	sw $t0, -9852($fp)
	addi $sp, $sp, -4
	lw $t0, -9436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9852($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9856($fp)
	addi $sp, $sp, 24
	lw $ra, -4($fp)
	lw $v0, -9856($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label487
label489:
label423:
label229:
label123:
	li $t0, 64653
	sw $t0, -9860($fp)
	lw $t0, -9860($fp)
	sw $t0, -9864($fp)
	lw $t0, -9864($fp)
	sw $t0, -9868($fp)
	li $t0, 759
	sw $t0, -9872($fp)
	lw $t0, -9872($fp)
	sw $t0, -9876($fp)
	lw $t0, -9876($fp)
	sw $t0, -9880($fp)
	li $t0, 24679
	sw $t0, -9884($fp)
	lw $t0, -9884($fp)
	sw $t0, -9888($fp)
	lw $t0, -9888($fp)
	sw $t0, -9892($fp)
	li $t0, 56893
	sw $t0, -9896($fp)
	lw $t0, -9896($fp)
	sw $t0, -9900($fp)
	lw $t0, -9900($fp)
	sw $t0, -9904($fp)
label536:
	addi $t0, $fp, -324
	sw $t0, -9908($fp)
	li $t0, 0
	sw $t0, -9912($fp)
	li $t0, 0
	sw $t0, -9916($fp)
	lw $t0, -9900($fp)
	sw $t0, -9920($fp)
	li $t0, 19635
	sw $t0, -9924($fp)
	lw $t0, -9920($fp)
	lw $t1, -9924($fp)
	sub $t0, $t0, $t1
	sw $t0, -9928($fp)
	li $t0, 5848
	sw $t0, -9932($fp)
	lw $t1, -9928($fp)
	lw $t2, -9932($fp)
	ble $t1, $t2, label541
	j label542
label541:
	li $t0, 1
	sw $t0, -9916($fp)
label542:
	li $t0, 0
	sw $t0, -9936($fp)
	lw $t0, -684($fp)
	sw $t0, -9940($fp)
	li $t0, 0
	lw $t1, -9940($fp)
	sub $t0, $t0, $t1
	sw $t0, -9944($fp)
	lw $t1, -9944($fp)
	li $t2, 0
	bne $t1, $t2, label544
	j label543
label543:
	li $t0, 1
	sw $t0, -9936($fp)
label544:
	li $t0, 0
	sw $t0, -9948($fp)
	lw $t0, 4($fp)
	sw $t0, -9952($fp)
	lw $t1, -9952($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label545
label545:
	li $t0, 1
	sw $t0, -9948($fp)
label546:
	li $t0, 0
	lw $t1, -9948($fp)
	sub $t0, $t0, $t1
	sw $t0, -9956($fp)
	li $t0, 0
	sw $t0, -9960($fp)
	li $t0, 0
	sw $t0, -9964($fp)
	lw $t0, -9888($fp)
	sw $t0, -9968($fp)
	lw $t1, -9968($fp)
	li $t2, 0
	bne $t1, $t2, label550
	j label549
label549:
	li $t0, 1
	sw $t0, -9964($fp)
label550:
	lw $t0, -1380($fp)
	sw $t0, -9972($fp)
	lw $t1, -9964($fp)
	lw $t2, -9972($fp)
	blt $t1, $t2, label547
	j label548
label547:
	li $t0, 1
	sw $t0, -9960($fp)
label548:
	li $t0, 43782
	sw $t0, -9976($fp)
	lw $t0, -9876($fp)
	sw $t0, -9980($fp)
	lw $t0, -9976($fp)
	lw $t1, -9980($fp)
	sub $t0, $t0, $t1
	sw $t0, -9984($fp)
	lw $t0, -780($fp)
	sw $t0, -9988($fp)
	lw $t0, -9984($fp)
	lw $t1, -9988($fp)
	sub $t0, $t0, $t1
	sw $t0, -9992($fp)
	addi $sp, $sp, -4
	lw $t0, -9916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9992($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9996($fp)
	addi $sp, $sp, 24
	li $t0, 61626
	sw $t0, -10000($fp)
	lw $t1, -9996($fp)
	lw $t2, -10000($fp)
	bgt $t1, $t2, label539
	j label540
label539:
	li $t0, 1
	sw $t0, -9912($fp)
label540:
	li $t0, 4
	lw $t1, -9912($fp)
	mul $t0, $t0, $t1
	sw $t0, -10004($fp)
	lw $t0, -10004($fp)
	lw $t1, -9908($fp)
	add $t0, $t0, $t1
	sw $t0, -10008($fp)
	lw $t0, -10008($fp)
	lw $t1, 0($t0)
	sw $t1, -10012($fp)
	li $t0, 0
	lw $t1, -10012($fp)
	sub $t0, $t0, $t1
	sw $t0, -10016($fp)
	lw $t1, -10016($fp)
	li $t2, 0
	bne $t1, $t2, label537
	j label538
label537:
label551:
	li $t0, 0
	sw $t0, -10020($fp)
	addi $t0, $fp, -232
	sw $t0, -10024($fp)
	li $t0, 0
	sw $t0, -10028($fp)
	li $t0, 4
	lw $t1, -10028($fp)
	mul $t0, $t0, $t1
	sw $t0, -10032($fp)
	lw $t0, -10032($fp)
	lw $t1, -10024($fp)
	add $t0, $t0, $t1
	sw $t0, -10036($fp)
	lw $t0, -10036($fp)
	lw $t1, 0($t0)
	sw $t1, -10040($fp)
	lw $t0, -1428($fp)
	sw $t0, -10044($fp)
	lw $t1, -10040($fp)
	lw $t2, -10044($fp)
	bne $t1, $t2, label554
	j label555
label554:
	li $t0, 1
	sw $t0, -10020($fp)
label555:
	lw $t0, -3360($fp)
	sw $t0, -10048($fp)
	li $t0, 0
	lw $t1, -10048($fp)
	sub $t0, $t0, $t1
	sw $t0, -10052($fp)
	li $t0, 0
	lw $t1, -10052($fp)
	sub $t0, $t0, $t1
	sw $t0, -10056($fp)
	li $t0, 0
	sw $t0, -10060($fp)
	li $t0, 35426
	sw $t0, -10064($fp)
	lw $t0, -1140($fp)
	sw $t0, -10068($fp)
	lw $t0, -10064($fp)
	lw $t1, -10068($fp)
	add $t0, $t0, $t1
	sw $t0, -10072($fp)
	lw $t1, -10072($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label558
label558:
	lw $t0, -3348($fp)
	sw $t0, -10076($fp)
	lw $t1, -10076($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label557
label556:
	li $t0, 1
	sw $t0, -10060($fp)
label557:
	addi $t0, $fp, -364
	sw $t0, -10080($fp)
	lw $t0, -1296($fp)
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
	li $t0, 43887
	sw $t0, -10100($fp)
	addi $sp, $sp, -4
	lw $t0, -10020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10100($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10104($fp)
	addi $sp, $sp, 24
	lw $t0, -1836($fp)
	sw $t0, -10108($fp)
	addi $t0, $fp, -292
	sw $t0, -10112($fp)
	li $t0, 3
	sw $t0, -10116($fp)
	li $t0, 4
	lw $t1, -10116($fp)
	mul $t0, $t0, $t1
	sw $t0, -10120($fp)
	lw $t0, -10120($fp)
	lw $t1, -10112($fp)
	add $t0, $t0, $t1
	sw $t0, -10124($fp)
	lw $t0, -10124($fp)
	lw $t1, 0($t0)
	sw $t1, -10128($fp)
	lw $t0, -10108($fp)
	lw $t1, -10128($fp)
	mul $t0, $t0, $t1
	sw $t0, -10132($fp)
	lw $t1, -10104($fp)
	lw $t2, -10132($fp)
	beq $t1, $t2, label552
	j label553
label552:
	li $t0, 0
	sw $t0, -10136($fp)
	lw $t0, -9864($fp)
	sw $t0, -10140($fp)
	lw $t0, -1872($fp)
	sw $t0, -10144($fp)
	lw $t0, -10140($fp)
	lw $t1, -10144($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10148($fp)
	li $t0, 0
	lw $t1, -10148($fp)
	sub $t0, $t0, $t1
	sw $t0, -10152($fp)
	li $t0, 0
	lw $t1, -10152($fp)
	sub $t0, $t0, $t1
	sw $t0, -10156($fp)
	li $t0, 0
	lw $t1, -10156($fp)
	sub $t0, $t0, $t1
	sw $t0, -10160($fp)
	lw $t1, -10160($fp)
	li $t2, 0
	bne $t1, $t2, label560
	j label559
label559:
	li $t0, 1
	sw $t0, -10136($fp)
label560:
	j label551
label553:
	j label536
label538:
	li $t0, 0
	sw $t0, -10164($fp)
	li $t0, 0
	sw $t0, -10168($fp)
	lw $t0, -1872($fp)
	sw $t0, -10172($fp)
	lw $t1, -10172($fp)
	li $t2, 0
	bne $t1, $t2, label564
	j label567
label567:
	li $t0, 27380
	sw $t0, -10176($fp)
	lw $t1, -10176($fp)
	li $t2, 0
	bne $t1, $t2, label564
	j label566
label566:
	li $t0, 7637
	sw $t0, -10180($fp)
	lw $t1, -10180($fp)
	li $t2, 0
	bne $t1, $t2, label564
	j label565
label564:
	li $t0, 1
	sw $t0, -10168($fp)
label565:
	li $t0, 8312
	sw $t0, -10184($fp)
	lw $t0, -10184($fp)
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	sw $t0, -10188($fp)
	lw $t0, -1380($fp)
	sw $t0, -10192($fp)
	li $t0, 0
	sw $t0, -10196($fp)
	li $t0, 32872
	sw $t0, -10200($fp)
	lw $t1, -10200($fp)
	li $t2, 0
	bne $t1, $t2, label570
	j label569
label570:
	lw $t0, -768($fp)
	sw $t0, -10204($fp)
	lw $t1, -10204($fp)
	li $t2, 0
	bne $t1, $t2, label568
	j label569
label568:
	li $t0, 1
	sw $t0, -10196($fp)
label569:
	li $t0, 0
	sw $t0, -10208($fp)
	li $t0, 38026
	sw $t0, -10212($fp)
	lw $t1, -10212($fp)
	li $t2, 0
	bne $t1, $t2, label572
	j label571
label571:
	li $t0, 1
	sw $t0, -10208($fp)
label572:
	li $t0, 40171
	sw $t0, -10216($fp)
	lw $t0, -10208($fp)
	lw $t1, -10216($fp)
	add $t0, $t0, $t1
	sw $t0, -10220($fp)
	addi $sp, $sp, -4
	lw $t0, -10168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10220($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10224($fp)
	addi $sp, $sp, 24
	lw $t0, -1188($fp)
	sw $t0, -10228($fp)
	lw $t1, -10224($fp)
	lw $t2, -10228($fp)
	ble $t1, $t2, label561
	j label563
label563:
	li $t0, 0
	sw $t0, -10232($fp)
	lw $t0, -1200($fp)
	sw $t0, -10236($fp)
	lw $t0, -1212($fp)
	sw $t0, -10240($fp)
	lw $t1, -10236($fp)
	lw $t2, -10240($fp)
	beq $t1, $t2, label573
	j label574
label573:
	li $t0, 1
	sw $t0, -10232($fp)
label574:
	li $t0, 58462
	sw $t0, -10244($fp)
	lw $t1, -10232($fp)
	lw $t2, -10244($fp)
	beq $t1, $t2, label561
	j label562
label561:
	li $t0, 1
	sw $t0, -10164($fp)
label562:
	addi $t0, $fp, -40
	sw $t0, -10248($fp)
	li $t0, 0
	sw $t0, -10252($fp)
	li $t0, 4
	lw $t1, -10252($fp)
	mul $t0, $t0, $t1
	sw $t0, -10256($fp)
	lw $t0, -10256($fp)
	lw $t1, -10248($fp)
	add $t0, $t0, $t1
	sw $t0, -10260($fp)
	lw $t0, -10260($fp)
	lw $t1, 0($t0)
	sw $t1, -10264($fp)
	lw $t0, -10264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -10268($fp)
	li $t0, 1
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
	lw $t0, -10284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -10288($fp)
	li $t0, 2
	sw $t0, -10292($fp)
	li $t0, 4
	lw $t1, -10292($fp)
	mul $t0, $t0, $t1
	sw $t0, -10296($fp)
	lw $t0, -10296($fp)
	lw $t1, -10288($fp)
	add $t0, $t0, $t1
	sw $t0, -10300($fp)
	lw $t0, -10300($fp)
	lw $t1, 0($t0)
	sw $t1, -10304($fp)
	lw $t0, -10304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -10308($fp)
	li $t0, 3
	sw $t0, -10312($fp)
	li $t0, 4
	lw $t1, -10312($fp)
	mul $t0, $t0, $t1
	sw $t0, -10316($fp)
	lw $t0, -10316($fp)
	lw $t1, -10308($fp)
	add $t0, $t0, $t1
	sw $t0, -10320($fp)
	lw $t0, -10320($fp)
	lw $t1, 0($t0)
	sw $t1, -10324($fp)
	lw $t0, -10324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -10328($fp)
	li $t0, 4
	sw $t0, -10332($fp)
	li $t0, 4
	lw $t1, -10332($fp)
	mul $t0, $t0, $t1
	sw $t0, -10336($fp)
	lw $t0, -10336($fp)
	lw $t1, -10328($fp)
	add $t0, $t0, $t1
	sw $t0, -10340($fp)
	lw $t0, -10340($fp)
	lw $t1, 0($t0)
	sw $t1, -10344($fp)
	lw $t0, -10344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -10348($fp)
	li $t0, 5
	sw $t0, -10352($fp)
	li $t0, 4
	lw $t1, -10352($fp)
	mul $t0, $t0, $t1
	sw $t0, -10356($fp)
	lw $t0, -10356($fp)
	lw $t1, -10348($fp)
	add $t0, $t0, $t1
	sw $t0, -10360($fp)
	lw $t0, -10360($fp)
	lw $t1, 0($t0)
	sw $t1, -10364($fp)
	lw $t0, -10364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -10368($fp)
	li $t0, 6
	sw $t0, -10372($fp)
	li $t0, 4
	lw $t1, -10372($fp)
	mul $t0, $t0, $t1
	sw $t0, -10376($fp)
	lw $t0, -10376($fp)
	lw $t1, -10368($fp)
	add $t0, $t0, $t1
	sw $t0, -10380($fp)
	lw $t0, -10380($fp)
	lw $t1, 0($t0)
	sw $t1, -10384($fp)
	lw $t0, -10384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -10388($fp)
	li $t0, 7
	sw $t0, -10392($fp)
	li $t0, 4
	lw $t1, -10392($fp)
	mul $t0, $t0, $t1
	sw $t0, -10396($fp)
	lw $t0, -10396($fp)
	lw $t1, -10388($fp)
	add $t0, $t0, $t1
	sw $t0, -10400($fp)
	lw $t0, -10400($fp)
	lw $t1, 0($t0)
	sw $t1, -10404($fp)
	lw $t0, -10404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -10408($fp)
	li $t0, 8
	sw $t0, -10412($fp)
	li $t0, 4
	lw $t1, -10412($fp)
	mul $t0, $t0, $t1
	sw $t0, -10416($fp)
	lw $t0, -10416($fp)
	lw $t1, -10408($fp)
	add $t0, $t0, $t1
	sw $t0, -10420($fp)
	lw $t0, -10420($fp)
	lw $t1, 0($t0)
	sw $t1, -10424($fp)
	lw $t0, -10424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -10428($fp)
	lw $t0, -10428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -600($fp)
	sw $t0, -10432($fp)
	lw $t0, -10432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -10436($fp)
	lw $t0, -10436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -10440($fp)
	li $t0, 0
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
	addi $t0, $fp, -48
	sw $t0, -10460($fp)
	li $t0, 1
	sw $t0, -10464($fp)
	li $t0, 4
	lw $t1, -10464($fp)
	mul $t0, $t0, $t1
	sw $t0, -10468($fp)
	lw $t0, -10468($fp)
	lw $t1, -10460($fp)
	add $t0, $t0, $t1
	sw $t0, -10472($fp)
	lw $t0, -10472($fp)
	lw $t1, 0($t0)
	sw $t1, -10476($fp)
	lw $t0, -10476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -10480($fp)
	lw $t0, -10480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -684($fp)
	sw $t0, -10484($fp)
	lw $t0, -10484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -10488($fp)
	li $t0, 0
	sw $t0, -10492($fp)
	li $t0, 4
	lw $t1, -10492($fp)
	mul $t0, $t0, $t1
	sw $t0, -10496($fp)
	lw $t0, -10496($fp)
	lw $t1, -10488($fp)
	add $t0, $t0, $t1
	sw $t0, -10500($fp)
	lw $t0, -10500($fp)
	lw $t1, 0($t0)
	sw $t1, -10504($fp)
	lw $t0, -10504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -10508($fp)
	li $t0, 1
	sw $t0, -10512($fp)
	li $t0, 4
	lw $t1, -10512($fp)
	mul $t0, $t0, $t1
	sw $t0, -10516($fp)
	lw $t0, -10516($fp)
	lw $t1, -10508($fp)
	add $t0, $t0, $t1
	sw $t0, -10520($fp)
	lw $t0, -10520($fp)
	lw $t1, 0($t0)
	sw $t1, -10524($fp)
	lw $t0, -10524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -744($fp)
	sw $t0, -10528($fp)
	lw $t0, -10528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -756($fp)
	sw $t0, -10532($fp)
	lw $t0, -10532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -768($fp)
	sw $t0, -10536($fp)
	lw $t0, -10536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -780($fp)
	sw $t0, -10540($fp)
	lw $t0, -10540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -792($fp)
	sw $t0, -10544($fp)
	lw $t0, -10544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -10548($fp)
	li $t0, 0
	sw $t0, -10552($fp)
	li $t0, 4
	lw $t1, -10552($fp)
	mul $t0, $t0, $t1
	sw $t0, -10556($fp)
	lw $t0, -10556($fp)
	lw $t1, -10548($fp)
	add $t0, $t0, $t1
	sw $t0, -10560($fp)
	lw $t0, -10560($fp)
	lw $t1, 0($t0)
	sw $t1, -10564($fp)
	lw $t0, -10564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -10568($fp)
	li $t0, 0
	sw $t0, -10572($fp)
	li $t0, 4
	lw $t1, -10572($fp)
	mul $t0, $t0, $t1
	sw $t0, -10576($fp)
	lw $t0, -10576($fp)
	lw $t1, -10568($fp)
	add $t0, $t0, $t1
	sw $t0, -10580($fp)
	lw $t0, -10580($fp)
	lw $t1, 0($t0)
	sw $t1, -10584($fp)
	lw $t0, -10584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -10588($fp)
	li $t0, 1
	sw $t0, -10592($fp)
	li $t0, 4
	lw $t1, -10592($fp)
	mul $t0, $t0, $t1
	sw $t0, -10596($fp)
	lw $t0, -10596($fp)
	lw $t1, -10588($fp)
	add $t0, $t0, $t1
	sw $t0, -10600($fp)
	lw $t0, -10600($fp)
	lw $t1, 0($t0)
	sw $t1, -10604($fp)
	lw $t0, -10604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -10608($fp)
	li $t0, 2
	sw $t0, -10612($fp)
	li $t0, 4
	lw $t1, -10612($fp)
	mul $t0, $t0, $t1
	sw $t0, -10616($fp)
	lw $t0, -10616($fp)
	lw $t1, -10608($fp)
	add $t0, $t0, $t1
	sw $t0, -10620($fp)
	lw $t0, -10620($fp)
	lw $t1, 0($t0)
	sw $t1, -10624($fp)
	lw $t0, -10624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -10628($fp)
	li $t0, 3
	sw $t0, -10632($fp)
	li $t0, 4
	lw $t1, -10632($fp)
	mul $t0, $t0, $t1
	sw $t0, -10636($fp)
	lw $t0, -10636($fp)
	lw $t1, -10628($fp)
	add $t0, $t0, $t1
	sw $t0, -10640($fp)
	lw $t0, -10640($fp)
	lw $t1, 0($t0)
	sw $t1, -10644($fp)
	lw $t0, -10644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -10648($fp)
	li $t0, 4
	sw $t0, -10652($fp)
	li $t0, 4
	lw $t1, -10652($fp)
	mul $t0, $t0, $t1
	sw $t0, -10656($fp)
	lw $t0, -10656($fp)
	lw $t1, -10648($fp)
	add $t0, $t0, $t1
	sw $t0, -10660($fp)
	lw $t0, -10660($fp)
	lw $t1, 0($t0)
	sw $t1, -10664($fp)
	lw $t0, -10664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -10668($fp)
	li $t0, 5
	sw $t0, -10672($fp)
	li $t0, 4
	lw $t1, -10672($fp)
	mul $t0, $t0, $t1
	sw $t0, -10676($fp)
	lw $t0, -10676($fp)
	lw $t1, -10668($fp)
	add $t0, $t0, $t1
	sw $t0, -10680($fp)
	lw $t0, -10680($fp)
	lw $t1, 0($t0)
	sw $t1, -10684($fp)
	lw $t0, -10684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -10688($fp)
	li $t0, 6
	sw $t0, -10692($fp)
	li $t0, 4
	lw $t1, -10692($fp)
	mul $t0, $t0, $t1
	sw $t0, -10696($fp)
	lw $t0, -10696($fp)
	lw $t1, -10688($fp)
	add $t0, $t0, $t1
	sw $t0, -10700($fp)
	lw $t0, -10700($fp)
	lw $t1, 0($t0)
	sw $t1, -10704($fp)
	lw $t0, -10704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -10708($fp)
	li $t0, 7
	sw $t0, -10712($fp)
	li $t0, 4
	lw $t1, -10712($fp)
	mul $t0, $t0, $t1
	sw $t0, -10716($fp)
	lw $t0, -10716($fp)
	lw $t1, -10708($fp)
	add $t0, $t0, $t1
	sw $t0, -10720($fp)
	lw $t0, -10720($fp)
	lw $t1, 0($t0)
	sw $t1, -10724($fp)
	lw $t0, -10724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -10728($fp)
	li $t0, 8
	sw $t0, -10732($fp)
	li $t0, 4
	lw $t1, -10732($fp)
	mul $t0, $t0, $t1
	sw $t0, -10736($fp)
	lw $t0, -10736($fp)
	lw $t1, -10728($fp)
	add $t0, $t0, $t1
	sw $t0, -10740($fp)
	lw $t0, -10740($fp)
	lw $t1, 0($t0)
	sw $t1, -10744($fp)
	lw $t0, -10744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -10748($fp)
	li $t0, 9
	sw $t0, -10752($fp)
	li $t0, 4
	lw $t1, -10752($fp)
	mul $t0, $t0, $t1
	sw $t0, -10756($fp)
	lw $t0, -10756($fp)
	lw $t1, -10748($fp)
	add $t0, $t0, $t1
	sw $t0, -10760($fp)
	lw $t0, -10760($fp)
	lw $t1, 0($t0)
	sw $t1, -10764($fp)
	lw $t0, -10764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1068($fp)
	sw $t0, -10768($fp)
	lw $t0, -10768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1080($fp)
	sw $t0, -10772($fp)
	lw $t0, -10772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1092($fp)
	sw $t0, -10776($fp)
	lw $t0, -10776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1104($fp)
	sw $t0, -10780($fp)
	lw $t0, -10780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1116($fp)
	sw $t0, -10784($fp)
	lw $t0, -10784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1128($fp)
	sw $t0, -10788($fp)
	lw $t0, -10788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1140($fp)
	sw $t0, -10792($fp)
	lw $t0, -10792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1152($fp)
	sw $t0, -10796($fp)
	lw $t0, -10796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1164($fp)
	sw $t0, -10800($fp)
	lw $t0, -10800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1176($fp)
	sw $t0, -10804($fp)
	lw $t0, -10804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1188($fp)
	sw $t0, -10808($fp)
	lw $t0, -10808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1200($fp)
	sw $t0, -10812($fp)
	lw $t0, -10812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1212($fp)
	sw $t0, -10816($fp)
	lw $t0, -10816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1224($fp)
	sw $t0, -10820($fp)
	lw $t0, -10820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1236($fp)
	sw $t0, -10824($fp)
	lw $t0, -10824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1248($fp)
	sw $t0, -10828($fp)
	lw $t0, -10828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1260($fp)
	sw $t0, -10832($fp)
	lw $t0, -10832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1272($fp)
	sw $t0, -10836($fp)
	lw $t0, -10836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1284($fp)
	sw $t0, -10840($fp)
	lw $t0, -10840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1296($fp)
	sw $t0, -10844($fp)
	lw $t0, -10844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1308($fp)
	sw $t0, -10848($fp)
	lw $t0, -10848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1320($fp)
	sw $t0, -10852($fp)
	lw $t0, -10852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1332($fp)
	sw $t0, -10856($fp)
	lw $t0, -10856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1344($fp)
	sw $t0, -10860($fp)
	lw $t0, -10860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1356($fp)
	sw $t0, -10864($fp)
	lw $t0, -10864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1368($fp)
	sw $t0, -10868($fp)
	lw $t0, -10868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1380($fp)
	sw $t0, -10872($fp)
	lw $t0, -10872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1392($fp)
	sw $t0, -10876($fp)
	lw $t0, -10876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1404($fp)
	sw $t0, -10880($fp)
	lw $t0, -10880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1416($fp)
	sw $t0, -10884($fp)
	lw $t0, -10884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1428($fp)
	sw $t0, -10888($fp)
	lw $t0, -10888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1440($fp)
	sw $t0, -10892($fp)
	lw $t0, -10892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1452($fp)
	sw $t0, -10896($fp)
	lw $t0, -10896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1464($fp)
	sw $t0, -10900($fp)
	lw $t0, -10900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1476($fp)
	sw $t0, -10904($fp)
	lw $t0, -10904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -10908($fp)
	li $t0, 0
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
	addi $t0, $fp, -140
	sw $t0, -10928($fp)
	li $t0, 1
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
	addi $t0, $fp, -140
	sw $t0, -10948($fp)
	li $t0, 2
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
	lw $t0, -10964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -10968($fp)
	li $t0, 3
	sw $t0, -10972($fp)
	li $t0, 4
	lw $t1, -10972($fp)
	mul $t0, $t0, $t1
	sw $t0, -10976($fp)
	lw $t0, -10976($fp)
	lw $t1, -10968($fp)
	add $t0, $t0, $t1
	sw $t0, -10980($fp)
	lw $t0, -10980($fp)
	lw $t1, 0($t0)
	sw $t1, -10984($fp)
	lw $t0, -10984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -10988($fp)
	li $t0, 4
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
	addi $t0, $fp, -140
	sw $t0, -11008($fp)
	li $t0, 5
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
	addi $t0, $fp, -140
	sw $t0, -11028($fp)
	li $t0, 6
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
	addi $t0, $fp, -140
	sw $t0, -11048($fp)
	li $t0, 7
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
	addi $t0, $fp, -140
	sw $t0, -11068($fp)
	li $t0, 8
	sw $t0, -11072($fp)
	li $t0, 4
	lw $t1, -11072($fp)
	mul $t0, $t0, $t1
	sw $t0, -11076($fp)
	lw $t0, -11076($fp)
	lw $t1, -11068($fp)
	add $t0, $t0, $t1
	sw $t0, -11080($fp)
	lw $t0, -11080($fp)
	lw $t1, 0($t0)
	sw $t1, -11084($fp)
	lw $t0, -11084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -11088($fp)
	li $t0, 9
	sw $t0, -11092($fp)
	li $t0, 4
	lw $t1, -11092($fp)
	mul $t0, $t0, $t1
	sw $t0, -11096($fp)
	lw $t0, -11096($fp)
	lw $t1, -11088($fp)
	add $t0, $t0, $t1
	sw $t0, -11100($fp)
	lw $t0, -11100($fp)
	lw $t1, 0($t0)
	sw $t1, -11104($fp)
	lw $t0, -11104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1728($fp)
	sw $t0, -11108($fp)
	lw $t0, -11108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1740($fp)
	sw $t0, -11112($fp)
	lw $t0, -11112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1752($fp)
	sw $t0, -11116($fp)
	lw $t0, -11116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
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
	addi $t0, $fp, -148
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
	lw $t0, -1812($fp)
	sw $t0, -11160($fp)
	lw $t0, -11160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1824($fp)
	sw $t0, -11164($fp)
	lw $t0, -11164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1836($fp)
	sw $t0, -11168($fp)
	lw $t0, -11168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1848($fp)
	sw $t0, -11172($fp)
	lw $t0, -11172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1860($fp)
	sw $t0, -11176($fp)
	lw $t0, -11176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1872($fp)
	sw $t0, -11180($fp)
	lw $t0, -11180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1884($fp)
	sw $t0, -11184($fp)
	lw $t0, -11184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1896($fp)
	sw $t0, -11188($fp)
	lw $t0, -11188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -11192($fp)
	li $t0, 0
	sw $t0, -11196($fp)
	li $t0, 4
	lw $t1, -11196($fp)
	mul $t0, $t0, $t1
	sw $t0, -11200($fp)
	lw $t0, -11200($fp)
	lw $t1, -11192($fp)
	add $t0, $t0, $t1
	sw $t0, -11204($fp)
	lw $t0, -11204($fp)
	lw $t1, 0($t0)
	sw $t1, -11208($fp)
	lw $t0, -11208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -11212($fp)
	li $t0, 1
	sw $t0, -11216($fp)
	li $t0, 4
	lw $t1, -11216($fp)
	mul $t0, $t0, $t1
	sw $t0, -11220($fp)
	lw $t0, -11220($fp)
	lw $t1, -11212($fp)
	add $t0, $t0, $t1
	sw $t0, -11224($fp)
	lw $t0, -11224($fp)
	lw $t1, 0($t0)
	sw $t1, -11228($fp)
	lw $t0, -11228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -11232($fp)
	li $t0, 2
	sw $t0, -11236($fp)
	li $t0, 4
	lw $t1, -11236($fp)
	mul $t0, $t0, $t1
	sw $t0, -11240($fp)
	lw $t0, -11240($fp)
	lw $t1, -11232($fp)
	add $t0, $t0, $t1
	sw $t0, -11244($fp)
	lw $t0, -11244($fp)
	lw $t1, 0($t0)
	sw $t1, -11248($fp)
	lw $t0, -11248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -11252($fp)
	li $t0, 3
	sw $t0, -11256($fp)
	li $t0, 4
	lw $t1, -11256($fp)
	mul $t0, $t0, $t1
	sw $t0, -11260($fp)
	lw $t0, -11260($fp)
	lw $t1, -11252($fp)
	add $t0, $t0, $t1
	sw $t0, -11264($fp)
	lw $t0, -11264($fp)
	lw $t1, 0($t0)
	sw $t1, -11268($fp)
	lw $t0, -11268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -11272($fp)
	li $t0, 4
	sw $t0, -11276($fp)
	li $t0, 4
	lw $t1, -11276($fp)
	mul $t0, $t0, $t1
	sw $t0, -11280($fp)
	lw $t0, -11280($fp)
	lw $t1, -11272($fp)
	add $t0, $t0, $t1
	sw $t0, -11284($fp)
	lw $t0, -11284($fp)
	lw $t1, 0($t0)
	sw $t1, -11288($fp)
	lw $t0, -11288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -11292($fp)
	li $t0, 0
	sw $t0, -11296($fp)
	li $t0, 4
	lw $t1, -11296($fp)
	mul $t0, $t0, $t1
	sw $t0, -11300($fp)
	lw $t0, -11300($fp)
	lw $t1, -11292($fp)
	add $t0, $t0, $t1
	sw $t0, -11304($fp)
	lw $t0, -11304($fp)
	lw $t1, 0($t0)
	sw $t1, -11308($fp)
	lw $t0, -11308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -11312($fp)
	li $t0, 1
	sw $t0, -11316($fp)
	li $t0, 4
	lw $t1, -11316($fp)
	mul $t0, $t0, $t1
	sw $t0, -11320($fp)
	lw $t0, -11320($fp)
	lw $t1, -11312($fp)
	add $t0, $t0, $t1
	sw $t0, -11324($fp)
	lw $t0, -11324($fp)
	lw $t1, 0($t0)
	sw $t1, -11328($fp)
	lw $t0, -11328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -11332($fp)
	li $t0, 2
	sw $t0, -11336($fp)
	li $t0, 4
	lw $t1, -11336($fp)
	mul $t0, $t0, $t1
	sw $t0, -11340($fp)
	lw $t0, -11340($fp)
	lw $t1, -11332($fp)
	add $t0, $t0, $t1
	sw $t0, -11344($fp)
	lw $t0, -11344($fp)
	lw $t1, 0($t0)
	sw $t1, -11348($fp)
	lw $t0, -11348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -11352($fp)
	li $t0, 3
	sw $t0, -11356($fp)
	li $t0, 4
	lw $t1, -11356($fp)
	mul $t0, $t0, $t1
	sw $t0, -11360($fp)
	lw $t0, -11360($fp)
	lw $t1, -11352($fp)
	add $t0, $t0, $t1
	sw $t0, -11364($fp)
	lw $t0, -11364($fp)
	lw $t1, 0($t0)
	sw $t1, -11368($fp)
	lw $t0, -11368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -11372($fp)
	li $t0, 4
	sw $t0, -11376($fp)
	li $t0, 4
	lw $t1, -11376($fp)
	mul $t0, $t0, $t1
	sw $t0, -11380($fp)
	lw $t0, -11380($fp)
	lw $t1, -11372($fp)
	add $t0, $t0, $t1
	sw $t0, -11384($fp)
	lw $t0, -11384($fp)
	lw $t1, 0($t0)
	sw $t1, -11388($fp)
	lw $t0, -11388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -11392($fp)
	li $t0, 5
	sw $t0, -11396($fp)
	li $t0, 4
	lw $t1, -11396($fp)
	mul $t0, $t0, $t1
	sw $t0, -11400($fp)
	lw $t0, -11400($fp)
	lw $t1, -11392($fp)
	add $t0, $t0, $t1
	sw $t0, -11404($fp)
	lw $t0, -11404($fp)
	lw $t1, 0($t0)
	sw $t1, -11408($fp)
	lw $t0, -11408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -11412($fp)
	li $t0, 6
	sw $t0, -11416($fp)
	li $t0, 4
	lw $t1, -11416($fp)
	mul $t0, $t0, $t1
	sw $t0, -11420($fp)
	lw $t0, -11420($fp)
	lw $t1, -11412($fp)
	add $t0, $t0, $t1
	sw $t0, -11424($fp)
	lw $t0, -11424($fp)
	lw $t1, 0($t0)
	sw $t1, -11428($fp)
	lw $t0, -11428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2196($fp)
	sw $t0, -11432($fp)
	lw $t0, -11432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2208($fp)
	sw $t0, -11436($fp)
	lw $t0, -11436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -232
	sw $t0, -11440($fp)
	li $t0, 0
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
	addi $t0, $fp, -232
	sw $t0, -11460($fp)
	li $t0, 1
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
	addi $t0, $fp, -232
	sw $t0, -11480($fp)
	li $t0, 2
	sw $t0, -11484($fp)
	li $t0, 4
	lw $t1, -11484($fp)
	mul $t0, $t0, $t1
	sw $t0, -11488($fp)
	lw $t0, -11488($fp)
	lw $t1, -11480($fp)
	add $t0, $t0, $t1
	sw $t0, -11492($fp)
	lw $t0, -11492($fp)
	lw $t1, 0($t0)
	sw $t1, -11496($fp)
	lw $t0, -11496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -232
	sw $t0, -11500($fp)
	li $t0, 3
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
	addi $t0, $fp, -232
	sw $t0, -11520($fp)
	li $t0, 4
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
	addi $t0, $fp, -232
	sw $t0, -11540($fp)
	li $t0, 5
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
	addi $t0, $fp, -232
	sw $t0, -11560($fp)
	li $t0, 6
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
	addi $t0, $fp, -232
	sw $t0, -11580($fp)
	li $t0, 7
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
	addi $t0, $fp, -232
	sw $t0, -11600($fp)
	li $t0, 8
	sw $t0, -11604($fp)
	li $t0, 4
	lw $t1, -11604($fp)
	mul $t0, $t0, $t1
	sw $t0, -11608($fp)
	lw $t0, -11608($fp)
	lw $t1, -11600($fp)
	add $t0, $t0, $t1
	sw $t0, -11612($fp)
	lw $t0, -11612($fp)
	lw $t1, 0($t0)
	sw $t1, -11616($fp)
	lw $t0, -11616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2436($fp)
	sw $t0, -11620($fp)
	lw $t0, -11620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2448($fp)
	sw $t0, -11624($fp)
	lw $t0, -11624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2460($fp)
	sw $t0, -11628($fp)
	lw $t0, -11628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2472($fp)
	sw $t0, -11632($fp)
	lw $t0, -11632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -248
	sw $t0, -11636($fp)
	li $t0, 0
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
	addi $t0, $fp, -248
	sw $t0, -11656($fp)
	li $t0, 1
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
	addi $t0, $fp, -248
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
	lw $t0, -11692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -248
	sw $t0, -11696($fp)
	li $t0, 3
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
	addi $t0, $fp, -260
	sw $t0, -11716($fp)
	li $t0, 0
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
	addi $t0, $fp, -260
	sw $t0, -11736($fp)
	li $t0, 1
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
	addi $t0, $fp, -260
	sw $t0, -11756($fp)
	li $t0, 2
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
	lw $t0, -2652($fp)
	sw $t0, -11776($fp)
	lw $t0, -11776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2664($fp)
	sw $t0, -11780($fp)
	lw $t0, -11780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2676($fp)
	sw $t0, -11784($fp)
	lw $t0, -11784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -292
	sw $t0, -11788($fp)
	li $t0, 0
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
	addi $t0, $fp, -292
	sw $t0, -11808($fp)
	li $t0, 1
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
	addi $t0, $fp, -292
	sw $t0, -11828($fp)
	li $t0, 2
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
	addi $t0, $fp, -292
	sw $t0, -11848($fp)
	li $t0, 3
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
	addi $t0, $fp, -292
	sw $t0, -11868($fp)
	li $t0, 4
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
	addi $t0, $fp, -292
	sw $t0, -11888($fp)
	li $t0, 5
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
	addi $t0, $fp, -292
	sw $t0, -11908($fp)
	li $t0, 6
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
	addi $t0, $fp, -292
	sw $t0, -11928($fp)
	li $t0, 7
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
	lw $t0, -2880($fp)
	sw $t0, -11948($fp)
	lw $t0, -11948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2892($fp)
	sw $t0, -11952($fp)
	lw $t0, -11952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2904($fp)
	sw $t0, -11956($fp)
	lw $t0, -11956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -11960($fp)
	li $t0, 0
	sw $t0, -11964($fp)
	li $t0, 4
	lw $t1, -11964($fp)
	mul $t0, $t0, $t1
	sw $t0, -11968($fp)
	lw $t0, -11968($fp)
	lw $t1, -11960($fp)
	add $t0, $t0, $t1
	sw $t0, -11972($fp)
	lw $t0, -11972($fp)
	lw $t1, 0($t0)
	sw $t1, -11976($fp)
	lw $t0, -11976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
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
	lw $t0, -11996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -12000($fp)
	li $t0, 2
	sw $t0, -12004($fp)
	li $t0, 4
	lw $t1, -12004($fp)
	mul $t0, $t0, $t1
	sw $t0, -12008($fp)
	lw $t0, -12008($fp)
	lw $t1, -12000($fp)
	add $t0, $t0, $t1
	sw $t0, -12012($fp)
	lw $t0, -12012($fp)
	lw $t1, 0($t0)
	sw $t1, -12016($fp)
	lw $t0, -12016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -12020($fp)
	li $t0, 3
	sw $t0, -12024($fp)
	li $t0, 4
	lw $t1, -12024($fp)
	mul $t0, $t0, $t1
	sw $t0, -12028($fp)
	lw $t0, -12028($fp)
	lw $t1, -12020($fp)
	add $t0, $t0, $t1
	sw $t0, -12032($fp)
	lw $t0, -12032($fp)
	lw $t1, 0($t0)
	sw $t1, -12036($fp)
	lw $t0, -12036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -12040($fp)
	li $t0, 4
	sw $t0, -12044($fp)
	li $t0, 4
	lw $t1, -12044($fp)
	mul $t0, $t0, $t1
	sw $t0, -12048($fp)
	lw $t0, -12048($fp)
	lw $t1, -12040($fp)
	add $t0, $t0, $t1
	sw $t0, -12052($fp)
	lw $t0, -12052($fp)
	lw $t1, 0($t0)
	sw $t1, -12056($fp)
	lw $t0, -12056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -12060($fp)
	li $t0, 5
	sw $t0, -12064($fp)
	li $t0, 4
	lw $t1, -12064($fp)
	mul $t0, $t0, $t1
	sw $t0, -12068($fp)
	lw $t0, -12068($fp)
	lw $t1, -12060($fp)
	add $t0, $t0, $t1
	sw $t0, -12072($fp)
	lw $t0, -12072($fp)
	lw $t1, 0($t0)
	sw $t1, -12076($fp)
	lw $t0, -12076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -12080($fp)
	li $t0, 6
	sw $t0, -12084($fp)
	li $t0, 4
	lw $t1, -12084($fp)
	mul $t0, $t0, $t1
	sw $t0, -12088($fp)
	lw $t0, -12088($fp)
	lw $t1, -12080($fp)
	add $t0, $t0, $t1
	sw $t0, -12092($fp)
	lw $t0, -12092($fp)
	lw $t1, 0($t0)
	sw $t1, -12096($fp)
	lw $t0, -12096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -12100($fp)
	li $t0, 7
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
	addi $t0, $fp, -364
	sw $t0, -12120($fp)
	li $t0, 0
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
	addi $t0, $fp, -364
	sw $t0, -12140($fp)
	li $t0, 1
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
	addi $t0, $fp, -364
	sw $t0, -12160($fp)
	li $t0, 2
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
	addi $t0, $fp, -364
	sw $t0, -12180($fp)
	li $t0, 3
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
	addi $t0, $fp, -364
	sw $t0, -12200($fp)
	li $t0, 4
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
	addi $t0, $fp, -364
	sw $t0, -12220($fp)
	li $t0, 5
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
	addi $t0, $fp, -364
	sw $t0, -12240($fp)
	li $t0, 6
	sw $t0, -12244($fp)
	li $t0, 4
	lw $t1, -12244($fp)
	mul $t0, $t0, $t1
	sw $t0, -12248($fp)
	lw $t0, -12248($fp)
	lw $t1, -12240($fp)
	add $t0, $t0, $t1
	sw $t0, -12252($fp)
	lw $t0, -12252($fp)
	lw $t1, 0($t0)
	sw $t1, -12256($fp)
	lw $t0, -12256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -364
	sw $t0, -12260($fp)
	li $t0, 7
	sw $t0, -12264($fp)
	li $t0, 4
	lw $t1, -12264($fp)
	mul $t0, $t0, $t1
	sw $t0, -12268($fp)
	lw $t0, -12268($fp)
	lw $t1, -12260($fp)
	add $t0, $t0, $t1
	sw $t0, -12272($fp)
	lw $t0, -12272($fp)
	lw $t1, 0($t0)
	sw $t1, -12276($fp)
	lw $t0, -12276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -364
	sw $t0, -12280($fp)
	li $t0, 8
	sw $t0, -12284($fp)
	li $t0, 4
	lw $t1, -12284($fp)
	mul $t0, $t0, $t1
	sw $t0, -12288($fp)
	lw $t0, -12288($fp)
	lw $t1, -12280($fp)
	add $t0, $t0, $t1
	sw $t0, -12292($fp)
	lw $t0, -12292($fp)
	lw $t1, 0($t0)
	sw $t1, -12296($fp)
	lw $t0, -12296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -364
	sw $t0, -12300($fp)
	li $t0, 9
	sw $t0, -12304($fp)
	li $t0, 4
	lw $t1, -12304($fp)
	mul $t0, $t0, $t1
	sw $t0, -12308($fp)
	lw $t0, -12308($fp)
	lw $t1, -12300($fp)
	add $t0, $t0, $t1
	sw $t0, -12312($fp)
	lw $t0, -12312($fp)
	lw $t1, 0($t0)
	sw $t1, -12316($fp)
	lw $t0, -12316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3348($fp)
	sw $t0, -12320($fp)
	lw $t0, -12320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3360($fp)
	sw $t0, -12324($fp)
	lw $t0, -12324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -12328($fp)
	lw $t0, -1224($fp)
	sw $t0, -12332($fp)
	lw $t1, -12332($fp)
	li $t2, 0
	bne $t1, $t2, label576
	j label575
label575:
	li $t0, 1
	sw $t0, -12328($fp)
label576:
	li $t0, 0
	sw $t0, -12336($fp)
	lw $t0, -1260($fp)
	sw $t0, -12340($fp)
	lw $t0, -1272($fp)
	sw $t0, -12344($fp)
	lw $t1, -12340($fp)
	lw $t2, -12344($fp)
	blt $t1, $t2, label577
	j label578
label577:
	li $t0, 1
	sw $t0, -12336($fp)
label578:
	li $t0, 0
	sw $t0, -12348($fp)
	lw $t0, -1248($fp)
	sw $t0, -12352($fp)
	li $t0, 17603
	sw $t0, -12356($fp)
	lw $t0, -12352($fp)
	lw $t1, -12356($fp)
	mul $t0, $t0, $t1
	sw $t0, -12360($fp)
	lw $t1, -12360($fp)
	li $t2, 0
	bne $t1, $t2, label581
	j label580
label581:
	li $t0, 24811
	sw $t0, -12364($fp)
	lw $t1, -12364($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label580
label579:
	li $t0, 1
	sw $t0, -12348($fp)
label580:
	lw $t0, -1236($fp)
	sw $t0, -12368($fp)
	li $t0, 23566
	sw $t0, -12372($fp)
	li $t0, 61743
	sw $t0, -12376($fp)
	lw $t0, -12372($fp)
	lw $t1, -12376($fp)
	sub $t0, $t0, $t1
	sw $t0, -12380($fp)
	li $t0, 0
	sw $t0, -12384($fp)
	li $t0, 48378
	sw $t0, -12388($fp)
	li $t0, 22209
	sw $t0, -12392($fp)
	lw $t0, -12388($fp)
	lw $t1, -12392($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12396($fp)
	li $t0, 36504
	sw $t0, -12400($fp)
	lw $t1, -12396($fp)
	lw $t2, -12400($fp)
	bge $t1, $t2, label582
	j label583
label582:
	li $t0, 1
	sw $t0, -12384($fp)
label583:
	li $t0, 0
	sw $t0, -12404($fp)
	lw $t0, -780($fp)
	sw $t0, -12408($fp)
	lw $t1, -12408($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label584
label584:
	li $t0, 1
	sw $t0, -12404($fp)
label585:
	addi $sp, $sp, -4
	lw $t0, -12348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12404($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12412($fp)
	addi $sp, $sp, 24
	li $t0, 60860
	sw $t0, -12416($fp)
	lw $t0, -12412($fp)
	lw $t1, -12416($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12420($fp)
	lw $t0, -1476($fp)
	sw $t0, -12424($fp)
	lw $t0, -12424($fp)
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	sw $t0, -12428($fp)
	addi $t0, $fp, -292
	sw $t0, -12432($fp)
	li $t0, 5
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
	li $t0, 63984
	sw $t0, -12452($fp)
	addi $sp, $sp, -4
	lw $t0, -12336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12452($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12456($fp)
	addi $sp, $sp, 24
	lw $t0, -12328($fp)
	lw $t1, -12456($fp)
	sub $t0, $t0, $t1
	sw $t0, -12460($fp)
	li $t0, 0
	sw $t0, -12464($fp)
	li $t0, 18363
	sw $t0, -12468($fp)
	lw $t1, -12468($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label587
label586:
	li $t0, 1
	sw $t0, -12464($fp)
label587:
	li $t0, 0
	lw $t1, -12464($fp)
	sub $t0, $t0, $t1
	sw $t0, -12472($fp)
	lw $t0, -12460($fp)
	lw $t1, -12472($fp)
	add $t0, $t0, $t1
	sw $t0, -12476($fp)
	lw $ra, -4($fp)
	lw $v0, -12476($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -616
	li $t0, 49490
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
	li $t0, 52217
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	li $t0, 62145
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	li $t0, 3589
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	li $t0, 58066
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	li $t0, 58236
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	li $t0, 47476
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	li $t0, 27956
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	li $t0, 10624
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	lw $t0, 16($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -136($fp)
	li $t0, 0
	sw $t0, -140($fp)
	li $t0, 9571
	sw $t0, -144($fp)
	lw $t1, -144($fp)
	li $t2, 0
	bne $t1, $t2, label591
	j label589
label591:
	li $t0, 62382
	sw $t0, -148($fp)
	lw $t1, -148($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label589
label590:
	li $t0, 14528
	sw $t0, -152($fp)
	lw $t1, -152($fp)
	li $t2, 0
	bne $t1, $t2, label588
	j label589
label588:
	li $t0, 1
	sw $t0, -140($fp)
label589:
	lw $t0, -76($fp)
	sw $t0, -156($fp)
	li $t0, 39893
	sw $t0, -160($fp)
	lw $t0, -156($fp)
	lw $t1, -160($fp)
	mul $t0, $t0, $t1
	sw $t0, -164($fp)
	li $t0, 0
	sw $t0, -168($fp)
	lw $t0, -100($fp)
	sw $t0, -172($fp)
	lw $t0, -124($fp)
	sw $t0, -176($fp)
	lw $t0, -172($fp)
	lw $t1, -176($fp)
	mul $t0, $t0, $t1
	sw $t0, -180($fp)
	lw $t1, -180($fp)
	li $t2, 0
	bne $t1, $t2, label592
	j label594
label594:
	li $t0, 24356
	sw $t0, -184($fp)
	lw $t1, -184($fp)
	li $t2, 0
	bne $t1, $t2, label592
	j label593
label592:
	li $t0, 1
	sw $t0, -168($fp)
label593:
	addi $sp, $sp, -4
	lw $t0, -136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -168($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -188($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -8
	sw $t0, -192($fp)
	li $t0, 0
	sw $t0, -196($fp)
	li $t0, 4
	lw $t1, -196($fp)
	mul $t0, $t0, $t1
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	lw $t1, -192($fp)
	add $t0, $t0, $t1
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	lw $t1, 0($t0)
	sw $t1, -208($fp)
	lw $t0, -188($fp)
	lw $t1, -208($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -212($fp)
	li $t0, 0
	sw $t0, -216($fp)
	li $t0, 0
	sw $t0, -220($fp)
	li $t0, 0
	sw $t0, -224($fp)
	lw $t0, 8($fp)
	sw $t0, -228($fp)
	li $t0, 0
	lw $t1, -228($fp)
	sub $t0, $t0, $t1
	sw $t0, -232($fp)
	lw $t1, -232($fp)
	li $t2, 0
	bne $t1, $t2, label600
	j label599
label599:
	li $t0, 1
	sw $t0, -224($fp)
label600:
	addi $t0, $fp, -8
	sw $t0, -236($fp)
	lw $t0, -40($fp)
	sw $t0, -240($fp)
	li $t0, 4
	lw $t1, -240($fp)
	mul $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	lw $t1, -236($fp)
	add $t0, $t0, $t1
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	lw $t1, 0($t0)
	sw $t1, -252($fp)
	lw $t0, -224($fp)
	lw $t1, -252($fp)
	sub $t0, $t0, $t1
	sw $t0, -256($fp)
	lw $t0, -112($fp)
	sw $t0, -260($fp)
	lw $t0, -76($fp)
	sw $t0, -264($fp)
	lw $t0, -260($fp)
	lw $t1, -264($fp)
	add $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $t1, -256($fp)
	lw $t2, -268($fp)
	ble $t1, $t2, label597
	j label598
label597:
	li $t0, 1
	sw $t0, -220($fp)
label598:
	addi $t0, $fp, -8
	sw $t0, -272($fp)
	li $t0, 0
	sw $t0, -276($fp)
	li $t0, 41908
	sw $t0, -280($fp)
	lw $t1, -280($fp)
	li $t2, 0
	bne $t1, $t2, label601
	j label603
label603:
	lw $t0, -124($fp)
	sw $t0, -284($fp)
	lw $t1, -284($fp)
	li $t2, 0
	bne $t1, $t2, label601
	j label602
label601:
	li $t0, 1
	sw $t0, -276($fp)
label602:
	li $t0, 4
	lw $t1, -276($fp)
	mul $t0, $t0, $t1
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	lw $t1, -272($fp)
	add $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	lw $t1, 0($t0)
	sw $t1, -296($fp)
	lw $t1, -220($fp)
	lw $t2, -296($fp)
	bge $t1, $t2, label595
	j label596
label595:
	li $t0, 1
	sw $t0, -216($fp)
label596:
	li $t0, 50081
	sw $t0, -300($fp)
	addi $t0, $fp, -8
	sw $t0, -304($fp)
	li $t0, 0
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
	lw $t0, -40($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -52($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -76($fp)
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -88($fp)
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -100($fp)
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -112($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -124($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -356($fp)
	li $t0, 0
	sw $t0, -360($fp)
	li $t0, 0
	sw $t0, -364($fp)
	lw $t0, 8($fp)
	sw $t0, -368($fp)
	lw $t1, -368($fp)
	li $t2, 0
	bne $t1, $t2, label609
	j label608
label608:
	li $t0, 1
	sw $t0, -364($fp)
label609:
	li $t0, 0
	sw $t0, -372($fp)
	li $t0, 0
	sw $t0, -376($fp)
	li $t0, 63621
	sw $t0, -380($fp)
	lw $t0, -64($fp)
	sw $t0, -384($fp)
	lw $t1, -380($fp)
	lw $t2, -384($fp)
	bge $t1, $t2, label612
	j label613
label612:
	li $t0, 1
	sw $t0, -376($fp)
label613:
	li $t0, 40356
	sw $t0, -388($fp)
	lw $t1, -376($fp)
	lw $t2, -388($fp)
	beq $t1, $t2, label610
	j label611
label610:
	li $t0, 1
	sw $t0, -372($fp)
label611:
	lw $t0, -40($fp)
	sw $t0, -392($fp)
	li $t0, 0
	lw $t1, -392($fp)
	sub $t0, $t0, $t1
	sw $t0, -396($fp)
	li $t0, 0
	lw $t1, -396($fp)
	sub $t0, $t0, $t1
	sw $t0, -400($fp)
	li $t0, 0
	sw $t0, -404($fp)
	lw $t0, -124($fp)
	sw $t0, -408($fp)
	lw $t1, -408($fp)
	li $t2, 0
	bne $t1, $t2, label614
	j label616
label616:
	lw $t0, 4($fp)
	sw $t0, -412($fp)
	lw $t1, -412($fp)
	li $t2, 0
	bne $t1, $t2, label614
	j label615
label614:
	li $t0, 1
	sw $t0, -404($fp)
label615:
	addi $sp, $sp, -4
	lw $t0, -364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -404($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -416($fp)
	addi $sp, $sp, 20
	lw $t0, -52($fp)
	sw $t0, -420($fp)
	lw $t0, -416($fp)
	lw $t1, -420($fp)
	add $t0, $t0, $t1
	sw $t0, -424($fp)
	li $t0, 0
	sw $t0, -428($fp)
	li $t0, 6040
	sw $t0, -432($fp)
	lw $t1, -432($fp)
	li $t2, 0
	bne $t1, $t2, label618
	j label617
label617:
	li $t0, 1
	sw $t0, -428($fp)
label618:
	li $t0, 0
	sw $t0, -436($fp)
	li $t0, 0
	sw $t0, -440($fp)
	li $t0, 28383
	sw $t0, -444($fp)
	lw $t0, 8($fp)
	sw $t0, -448($fp)
	lw $t0, -444($fp)
	lw $t1, -448($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -452($fp)
	lw $t0, -88($fp)
	sw $t0, -456($fp)
	lw $t1, -452($fp)
	lw $t2, -456($fp)
	bge $t1, $t2, label621
	j label622
label621:
	li $t0, 1
	sw $t0, -440($fp)
label622:
	li $t0, 0
	sw $t0, -460($fp)
	lw $t0, -112($fp)
	sw $t0, -464($fp)
	lw $t1, -464($fp)
	li $t2, 0
	bne $t1, $t2, label624
	j label623
label623:
	li $t0, 1
	sw $t0, -460($fp)
label624:
	li $t0, 0
	lw $t1, -460($fp)
	sub $t0, $t0, $t1
	sw $t0, -468($fp)
	lw $t0, -88($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -476($fp)
	li $t0, 0
	sw $t0, -480($fp)
	lw $t0, 16($fp)
	sw $t0, -484($fp)
	lw $t0, -88($fp)
	sw $t0, -488($fp)
	lw $t0, -484($fp)
	lw $t1, -488($fp)
	mul $t0, $t0, $t1
	sw $t0, -492($fp)
	lw $t1, -492($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label627
label627:
	lw $t0, 16($fp)
	sw $t0, -496($fp)
	lw $t1, -496($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label626
label625:
	li $t0, 1
	sw $t0, -480($fp)
label626:
	li $t0, 0
	sw $t0, -500($fp)
	li $t0, 46765
	sw $t0, -504($fp)
	lw $t1, -504($fp)
	li $t2, 0
	bne $t1, $t2, label630
	j label629
label630:
	lw $t0, -112($fp)
	sw $t0, -508($fp)
	lw $t1, -508($fp)
	li $t2, 0
	bne $t1, $t2, label628
	j label629
label628:
	li $t0, 1
	sw $t0, -500($fp)
label629:
	li $t0, 0
	sw $t0, -512($fp)
	lw $t0, -76($fp)
	sw $t0, -516($fp)
	li $t0, 44146
	sw $t0, -520($fp)
	lw $t0, -516($fp)
	lw $t1, -520($fp)
	sub $t0, $t0, $t1
	sw $t0, -524($fp)
	lw $t0, -112($fp)
	sw $t0, -528($fp)
	lw $t1, -524($fp)
	lw $t2, -528($fp)
	bge $t1, $t2, label631
	j label632
label631:
	li $t0, 1
	sw $t0, -512($fp)
label632:
	li $t0, 0
	sw $t0, -532($fp)
	lw $t0, -64($fp)
	sw $t0, -536($fp)
	lw $t1, -536($fp)
	li $t2, 0
	bne $t1, $t2, label634
	j label633
label633:
	li $t0, 1
	sw $t0, -532($fp)
label634:
	lw $t0, 8($fp)
	sw $t0, -540($fp)
	lw $t0, -532($fp)
	lw $t1, -540($fp)
	add $t0, $t0, $t1
	sw $t0, -544($fp)
	addi $sp, $sp, -4
	lw $t0, -480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -544($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -548($fp)
	addi $sp, $sp, 20
	li $t0, 32175
	sw $t0, -552($fp)
	addi $sp, $sp, -4
	lw $t0, -440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -552($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -556($fp)
	addi $sp, $sp, 24
	li $t0, 61750
	sw $t0, -560($fp)
	lw $t1, -556($fp)
	lw $t2, -560($fp)
	bne $t1, $t2, label619
	j label620
label619:
	li $t0, 1
	sw $t0, -436($fp)
label620:
	li $t0, 0
	sw $t0, -564($fp)
	li $t0, 0
	sw $t0, -568($fp)
	li $t0, 9966
	sw $t0, -572($fp)
	li $t0, 7642
	sw $t0, -576($fp)
	lw $t1, -572($fp)
	lw $t2, -576($fp)
	bgt $t1, $t2, label637
	j label638
label637:
	li $t0, 1
	sw $t0, -568($fp)
label638:
	li $t0, 23198
	sw $t0, -580($fp)
	lw $t1, -568($fp)
	lw $t2, -580($fp)
	bne $t1, $t2, label635
	j label636
label635:
	li $t0, 1
	sw $t0, -564($fp)
label636:
	lw $t0, -112($fp)
	sw $t0, -584($fp)
	addi $sp, $sp, -4
	lw $t0, -428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -584($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -588($fp)
	addi $sp, $sp, 20
	lw $t0, -424($fp)
	lw $t1, -588($fp)
	sub $t0, $t0, $t1
	sw $t0, -592($fp)
	lw $t0, 8($fp)
	sw $t0, -596($fp)
	lw $t1, -592($fp)
	lw $t2, -596($fp)
	blt $t1, $t2, label606
	j label607
label606:
	li $t0, 1
	sw $t0, -360($fp)
label607:
	lw $t0, 16($fp)
	sw $t0, -600($fp)
	lw $t0, 8($fp)
	sw $t0, -604($fp)
	lw $t0, -600($fp)
	lw $t1, -604($fp)
	sub $t0, $t0, $t1
	sw $t0, -608($fp)
	li $t0, 23707
	sw $t0, -612($fp)
	li $t0, 0
	lw $t1, -612($fp)
	sub $t0, $t0, $t1
	sw $t0, -616($fp)
	lw $t0, -608($fp)
	lw $t1, -616($fp)
	sub $t0, $t0, $t1
	sw $t0, -620($fp)
	lw $t1, -360($fp)
	lw $t2, -620($fp)
	bge $t1, $t2, label604
	j label605
label604:
	li $t0, 1
	sw $t0, -356($fp)
label605:
	lw $ra, -4($fp)
	lw $v0, -356($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1216
	li $t0, 14577
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	li $t0, 55530
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	li $t0, 10389
	sw $t0, -52($fp)
	addi $t0, $fp, -24
	sw $t0, -56($fp)
	li $t0, 0
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
	li $t0, 11186
	sw $t0, -76($fp)
	addi $t0, $fp, -24
	sw $t0, -80($fp)
	li $t0, 1
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
	li $t0, 59120
	sw $t0, -100($fp)
	addi $t0, $fp, -24
	sw $t0, -104($fp)
	li $t0, 2
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
	li $t0, 2919
	sw $t0, -124($fp)
	addi $t0, $fp, -24
	sw $t0, -128($fp)
	li $t0, 3
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
	li $t0, 3886
	sw $t0, -148($fp)
	addi $t0, $fp, -24
	sw $t0, -152($fp)
	li $t0, 4
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
	li $t0, 41060
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	li $t0, 30875
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	li $t0, 14510
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
label639:
	addi $t0, $fp, -24
	sw $t0, -208($fp)
	li $t0, 0
	sw $t0, -212($fp)
	li $t0, 0
	sw $t0, -216($fp)
	li $t0, 65416
	sw $t0, -220($fp)
	lw $t1, -220($fp)
	li $t2, 0
	bne $t1, $t2, label644
	j label645
label644:
	li $t0, 1
	sw $t0, -216($fp)
label645:
	li $t0, 0
	sw $t0, -224($fp)
	lw $t0, -32($fp)
	sw $t0, -228($fp)
	lw $t1, -228($fp)
	li $t2, 0
	bne $t1, $t2, label647
	j label646
label646:
	li $t0, 1
	sw $t0, -224($fp)
label647:
	lw $t1, -216($fp)
	lw $t2, -224($fp)
	beq $t1, $t2, label642
	j label643
label642:
	li $t0, 1
	sw $t0, -212($fp)
label643:
	li $t0, 4
	lw $t1, -212($fp)
	mul $t0, $t0, $t1
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	lw $t1, -208($fp)
	add $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	lw $t1, 0($t0)
	sw $t1, -240($fp)
	lw $t1, -240($fp)
	li $t2, 0
	bne $t1, $t2, label640
	j label641
label640:
	li $t0, 0
	sw $t0, -244($fp)
	lw $t0, -176($fp)
	sw $t0, -248($fp)
	lw $t1, -248($fp)
	li $t2, 0
	bne $t1, $t2, label649
	j label648
label648:
	li $t0, 1
	sw $t0, -244($fp)
label649:
	li $t0, 5232
	sw $t0, -252($fp)
	lw $t0, -244($fp)
	lw $t1, -252($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -260($fp)
	lw $ra, -4($fp)
	lw $v0, -260($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label639
label641:
	lw $t0, -32($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -44($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -272($fp)
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	li $t0, 3
	sw $t0, -336($fp)
	li $t0, 4
	lw $t1, -336($fp)
	mul $t0, $t0, $t1
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	lw $t1, -332($fp)
	add $t0, $t0, $t1
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	lw $t1, 0($t0)
	sw $t1, -348($fp)
	lw $t0, -348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -352($fp)
	li $t0, 4
	sw $t0, -356($fp)
	li $t0, 4
	lw $t1, -356($fp)
	mul $t0, $t0, $t1
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	lw $t1, -352($fp)
	add $t0, $t0, $t1
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	lw $t1, 0($t0)
	sw $t1, -368($fp)
	lw $t0, -368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -176($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 24082
	sw $t0, -384($fp)
	lw $ra, -4($fp)
	lw $v0, -384($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 62263
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	li $t0, 19760
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	li $t0, 990
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	li $t0, 1885
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	li $t0, 61669
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	li $t0, 51071
	sw $t0, -472($fp)
	addi $t0, $fp, -408
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
	li $t0, 65506
	sw $t0, -496($fp)
	addi $t0, $fp, -408
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
	li $t0, 36489
	sw $t0, -520($fp)
	addi $t0, $fp, -408
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
	li $t0, 61037
	sw $t0, -544($fp)
	addi $t0, $fp, -408
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
	li $t0, 7613
	sw $t0, -568($fp)
	addi $t0, $fp, -408
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
	li $t0, 59688
	sw $t0, -592($fp)
	addi $t0, $fp, -408
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
	li $t0, 27677
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	li $t0, 0
	sw $t0, -628($fp)
	addi $t0, $fp, -24
	sw $t0, -632($fp)
	lw $t0, -428($fp)
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
	addi $sp, $sp, -4
	lw $t0, -648($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -652($fp)
	addi $sp, $sp, 8
	lw $t1, -652($fp)
	li $t2, 0
	bne $t1, $t2, label650
	j label651
label650:
	li $t0, 1
	sw $t0, -628($fp)
label651:
	li $t0, 51759
	sw $t0, -656($fp)
	li $t0, 40917
	sw $t0, -660($fp)
	lw $t0, -656($fp)
	lw $t1, -660($fp)
	mul $t0, $t0, $t1
	sw $t0, -664($fp)
	addi $sp, $sp, -4
	lw $t0, -664($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -668($fp)
	addi $sp, $sp, 8
	lw $t0, -440($fp)
	sw $t0, -672($fp)
	lw $t0, -668($fp)
	lw $t1, -672($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -676($fp)
	lw $t0, -464($fp)
	sw $t0, -680($fp)
	lw $t0, -676($fp)
	lw $t1, -680($fp)
	mul $t0, $t0, $t1
	sw $t0, -684($fp)
	lw $t0, -628($fp)
	lw $t1, -684($fp)
	add $t0, $t0, $t1
	sw $t0, -688($fp)
	li $t0, 0
	sw $t0, -692($fp)
	li $t0, 0
	sw $t0, -696($fp)
	li $t0, 0
	sw $t0, -700($fp)
	li $t0, 0
	sw $t0, -704($fp)
	li $t0, 14231
	sw $t0, -708($fp)
	lw $t0, -32($fp)
	sw $t0, -712($fp)
	lw $t1, -708($fp)
	lw $t2, -712($fp)
	blt $t1, $t2, label658
	j label659
label658:
	li $t0, 1
	sw $t0, -704($fp)
label659:
	li $t0, 62550
	sw $t0, -716($fp)
	lw $t1, -704($fp)
	lw $t2, -716($fp)
	bgt $t1, $t2, label656
	j label657
label656:
	li $t0, 1
	sw $t0, -700($fp)
label657:
	li $t0, 0
	sw $t0, -720($fp)
	li $t0, 46957
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -728($fp)
	addi $sp, $sp, -4
	lw $t0, -728($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -732($fp)
	addi $sp, $sp, 8
	lw $t0, -32($fp)
	sw $t0, -736($fp)
	lw $t1, -732($fp)
	lw $t2, -736($fp)
	bgt $t1, $t2, label660
	j label661
label660:
	li $t0, 1
	sw $t0, -720($fp)
label661:
	li $t0, 0
	sw $t0, -740($fp)
	lw $t0, -620($fp)
	sw $t0, -744($fp)
	li $t0, 47973
	sw $t0, -748($fp)
	lw $t0, -744($fp)
	lw $t1, -748($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -752($fp)
	lw $t0, 4($fp)
	sw $t0, -756($fp)
	lw $t1, -752($fp)
	lw $t2, -756($fp)
	beq $t1, $t2, label662
	j label663
label662:
	li $t0, 1
	sw $t0, -740($fp)
label663:
	li $t0, 56060
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -764($fp)
	addi $sp, $sp, -4
	lw $t0, -700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -764($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -768($fp)
	addi $sp, $sp, 20
	lw $t1, -768($fp)
	li $t2, 0
	bne $t1, $t2, label655
	j label654
label654:
	li $t0, 1
	sw $t0, -696($fp)
label655:
	lw $t0, 4($fp)
	sw $t0, -772($fp)
	lw $t0, -44($fp)
	sw $t0, -776($fp)
	lw $t0, -772($fp)
	lw $t1, -776($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -780($fp)
	li $t0, 0
	lw $t1, -780($fp)
	sub $t0, $t0, $t1
	sw $t0, -784($fp)
	lw $t1, -696($fp)
	lw $t2, -784($fp)
	bgt $t1, $t2, label652
	j label653
label652:
	li $t0, 1
	sw $t0, -692($fp)
label653:
	li $t0, 36951
	sw $t0, -788($fp)
	li $t0, 24620
	sw $t0, -792($fp)
	lw $t1, -792($fp)
	li $t2, 0
	bne $t1, $t2, label664
	j label665
label664:
	li $t0, 0
	sw $t0, -796($fp)
	lw $t0, -176($fp)
	sw $t0, -800($fp)
	li $t0, 8201
	sw $t0, -804($fp)
	lw $t0, -800($fp)
	lw $t1, -804($fp)
	mul $t0, $t0, $t1
	sw $t0, -808($fp)
	li $t0, 0
	lw $t1, -808($fp)
	sub $t0, $t0, $t1
	sw $t0, -812($fp)
	li $t0, 0
	sw $t0, -816($fp)
	lw $t0, -32($fp)
	sw $t0, -820($fp)
	lw $t1, -820($fp)
	li $t2, 0
	bne $t1, $t2, label672
	j label671
label671:
	li $t0, 1
	sw $t0, -816($fp)
label672:
	lw $t1, -812($fp)
	lw $t2, -816($fp)
	bne $t1, $t2, label667
	j label670
label670:
	lw $t0, 4($fp)
	sw $t0, -824($fp)
	lw $t0, 4($fp)
	sw $t0, -828($fp)
	lw $t0, -824($fp)
	lw $t1, -828($fp)
	add $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t0, -188($fp)
	sw $t0, -836($fp)
	lw $t1, -832($fp)
	lw $t2, -836($fp)
	blt $t1, $t2, label667
	j label669
label669:
	li $t0, 12087
	sw $t0, -840($fp)
	lw $t0, -32($fp)
	sw $t0, -844($fp)
	lw $t0, -840($fp)
	lw $t1, -844($fp)
	add $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, -428($fp)
	sw $t0, -852($fp)
	lw $t0, -32($fp)
	sw $t0, -856($fp)
	li $t0, 0
	lw $t1, -856($fp)
	sub $t0, $t0, $t1
	sw $t0, -860($fp)
	lw $t0, -452($fp)
	sw $t0, -864($fp)
	li $t0, 30535
	sw $t0, -868($fp)
	lw $t0, -864($fp)
	lw $t1, -868($fp)
	mul $t0, $t0, $t1
	sw $t0, -872($fp)
	li $t0, 27539
	sw $t0, -876($fp)
	lw $t0, -872($fp)
	lw $t1, -876($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -880($fp)
	addi $sp, $sp, -4
	lw $t0, -848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -880($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -884($fp)
	addi $sp, $sp, 20
	lw $t0, -620($fp)
	sw $t0, -888($fp)
	lw $t0, -884($fp)
	lw $t1, -888($fp)
	add $t0, $t0, $t1
	sw $t0, -892($fp)
	addi $t0, $fp, -408
	sw $t0, -896($fp)
	lw $t0, -416($fp)
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
	lw $t0, -892($fp)
	lw $t1, -912($fp)
	add $t0, $t0, $t1
	sw $t0, -916($fp)
	lw $t1, -916($fp)
	li $t2, 0
	bne $t1, $t2, label667
	j label668
label667:
	li $t0, 1
	sw $t0, -796($fp)
label668:
	j label666
label665:
	li $t0, 0
	sw $t0, -920($fp)
	li $t0, 50680
	sw $t0, -924($fp)
	lw $t0, -620($fp)
	sw $t0, -928($fp)
	li $t0, 63647
	sw $t0, -932($fp)
	lw $t0, -928($fp)
	lw $t1, -932($fp)
	mul $t0, $t0, $t1
	sw $t0, -936($fp)
	lw $t0, 4($fp)
	sw $t0, -940($fp)
	lw $t0, -936($fp)
	lw $t1, -940($fp)
	sub $t0, $t0, $t1
	sw $t0, -944($fp)
	li $t0, 0
	sw $t0, -948($fp)
	lw $t0, -32($fp)
	sw $t0, -952($fp)
	li $t0, 5940
	sw $t0, -956($fp)
	lw $t1, -952($fp)
	lw $t2, -956($fp)
	bge $t1, $t2, label675
	j label677
label677:
	lw $t0, -44($fp)
	sw $t0, -960($fp)
	lw $t1, -960($fp)
	li $t2, 0
	bne $t1, $t2, label675
	j label676
label675:
	li $t0, 1
	sw $t0, -948($fp)
label676:
	li $t0, 0
	sw $t0, -964($fp)
	lw $t0, 4($fp)
	sw $t0, -968($fp)
	lw $t1, -968($fp)
	li $t2, 0
	bne $t1, $t2, label679
	j label678
label678:
	li $t0, 1
	sw $t0, -964($fp)
label679:
	li $t0, 26598
	sw $t0, -972($fp)
	lw $t0, -964($fp)
	lw $t1, -972($fp)
	add $t0, $t0, $t1
	sw $t0, -976($fp)
	li $t0, 0
	sw $t0, -980($fp)
	li $t0, 6060
	sw $t0, -984($fp)
	lw $t1, -984($fp)
	li $t2, 0
	bne $t1, $t2, label683
	j label681
label683:
	li $t0, 58415
	sw $t0, -988($fp)
	lw $t1, -988($fp)
	li $t2, 0
	bne $t1, $t2, label682
	j label681
label682:
	lw $t0, -620($fp)
	sw $t0, -992($fp)
	lw $t1, -992($fp)
	li $t2, 0
	bne $t1, $t2, label680
	j label681
label680:
	li $t0, 1
	sw $t0, -980($fp)
label681:
	addi $sp, $sp, -4
	lw $t0, -924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -980($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -996($fp)
	addi $sp, $sp, 24
	li $t0, 2667
	sw $t0, -1000($fp)
	lw $t0, -996($fp)
	lw $t1, -1000($fp)
	add $t0, $t0, $t1
	sw $t0, -1004($fp)
	li $t0, 0
	sw $t0, -1008($fp)
	li $t0, 0
	sw $t0, -1012($fp)
	li $t0, 17872
	sw $t0, -1016($fp)
	lw $t1, -1016($fp)
	li $t2, 0
	bne $t1, $t2, label687
	j label686
label686:
	li $t0, 1
	sw $t0, -1012($fp)
label687:
	li $t0, 0
	lw $t1, -1012($fp)
	sub $t0, $t0, $t1
	sw $t0, -1020($fp)
	lw $t1, -1020($fp)
	li $t2, 0
	bne $t1, $t2, label685
	j label684
label684:
	li $t0, 1
	sw $t0, -1008($fp)
label685:
	lw $t1, -1004($fp)
	lw $t2, -1008($fp)
	bge $t1, $t2, label673
	j label674
label673:
	li $t0, 1
	sw $t0, -920($fp)
label674:
label666:
	lw $t0, -188($fp)
	sw $t0, -1024($fp)
	lw $t0, -32($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -44($fp)
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1036($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -1056($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -1076($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -1096($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -1116($fp)
	li $t0, 4
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
	lw $t0, -176($fp)
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1148($fp)
	li $t0, 37205
	sw $t0, -1152($fp)
	lw $t1, -1152($fp)
	li $t2, 0
	bne $t1, $t2, label690
	j label689
label690:
	li $t0, 4523
	sw $t0, -1156($fp)
	lw $t1, -1156($fp)
	li $t2, 0
	bne $t1, $t2, label688
	j label689
label688:
	li $t0, 1
	sw $t0, -1148($fp)
label689:
	li $t0, 0
	sw $t0, -1160($fp)
	li $t0, 0
	sw $t0, -1164($fp)
	lw $t0, -188($fp)
	sw $t0, -1168($fp)
	lw $t0, -32($fp)
	sw $t0, -1172($fp)
	lw $t1, -1168($fp)
	lw $t2, -1172($fp)
	blt $t1, $t2, label693
	j label694
label693:
	li $t0, 1
	sw $t0, -1164($fp)
label694:
	li $t0, 14005
	sw $t0, -1176($fp)
	lw $t1, -1164($fp)
	lw $t2, -1176($fp)
	bgt $t1, $t2, label691
	j label692
label691:
	li $t0, 1
	sw $t0, -1160($fp)
label692:
	li $t0, 0
	sw $t0, -1180($fp)
	li $t0, 4553
	sw $t0, -1184($fp)
	lw $t0, -176($fp)
	sw $t0, -1188($fp)
	lw $t0, -1184($fp)
	lw $t1, -1188($fp)
	mul $t0, $t0, $t1
	sw $t0, -1192($fp)
	lw $t1, -1192($fp)
	li $t2, 0
	bne $t1, $t2, label697
	j label696
label697:
	lw $t0, -176($fp)
	sw $t0, -1196($fp)
	lw $t1, -1196($fp)
	li $t2, 0
	bne $t1, $t2, label695
	j label696
label695:
	li $t0, 1
	sw $t0, -1180($fp)
label696:
	li $t0, 51670
	sw $t0, -1200($fp)
	lw $t0, -188($fp)
	sw $t0, -1204($fp)
	lw $t0, -1200($fp)
	lw $t1, -1204($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1208($fp)
	lw $t0, -200($fp)
	sw $t0, -1212($fp)
	lw $t0, -1208($fp)
	lw $t1, -1212($fp)
	add $t0, $t0, $t1
	sw $t0, -1216($fp)
	addi $sp, $sp, -4
	lw $t0, -1148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1216($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1220($fp)
	addi $sp, $sp, 20
	lw $ra, -4($fp)
	lw $v0, -1220($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -56
	li $t0, 50494
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	jal f9
	sw $v0, -24($fp)
	addi $sp, $sp, 4
	li $t0, 32706
	sw $t0, -28($fp)
	lw $t1, -24($fp)
	lw $t2, -28($fp)
	bge $t1, $t2, label698
	j label699
label698:
	li $t0, 1
	sw $t0, -20($fp)
label699:
	li $t0, 0
	sw $t0, -32($fp)
	li $t0, 0
	sw $t0, -36($fp)
	li $t0, 0
	sw $t0, -40($fp)
	lw $t0, -12($fp)
	sw $t0, -44($fp)
	lw $t1, -44($fp)
	li $t2, 0
	bne $t1, $t2, label704
	j label705
label704:
	li $t0, 1
	sw $t0, -40($fp)
label705:
	li $t0, 0
	lw $t1, -40($fp)
	sub $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t1, -48($fp)
	li $t2, 0
	bne $t1, $t2, label703
	j label702
label702:
	li $t0, 1
	sw $t0, -36($fp)
label703:
	li $t0, 12136
	sw $t0, -52($fp)
	lw $t1, -36($fp)
	lw $t2, -52($fp)
	bge $t1, $t2, label700
	j label701
label700:
	li $t0, 1
	sw $t0, -32($fp)
label701:
	lw $t0, -12($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 44646
	sw $t0, -60($fp)
	lw $ra, -4($fp)
	lw $v0, -60($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -380
	li $t0, 60383
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
	li $t0, 63896
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
	li $t0, 20027
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
	li $t0, 50907
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
	li $t0, 46333
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
	li $t0, 0
	sw $t0, -248($fp)
	addi $t0, $fp, -24
	sw $t0, -252($fp)
	lw $t0, 12($fp)
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
	li $t0, 0
	sw $t0, -272($fp)
	li $t0, 24223
	sw $t0, -276($fp)
	li $t0, 51549
	sw $t0, -280($fp)
	lw $t0, -276($fp)
	lw $t1, -280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -284($fp)
	lw $t1, -284($fp)
	li $t2, 0
	bne $t1, $t2, label709
	j label711
label711:
	lw $t0, 12($fp)
	sw $t0, -288($fp)
	lw $t1, -288($fp)
	li $t2, 0
	bne $t1, $t2, label709
	j label710
label709:
	li $t0, 1
	sw $t0, -272($fp)
label710:
	jal f9
	sw $v0, -292($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -292($fp)
	sub $t0, $t0, $t1
	sw $t0, -296($fp)
	lw $t0, 12($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -304($fp)
	addi $t0, $fp, -24
	sw $t0, -308($fp)
	li $t0, 0
	sw $t0, -312($fp)
	li $t0, 4
	lw $t1, -312($fp)
	mul $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	lw $t1, -308($fp)
	add $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	lw $t1, 0($t0)
	sw $t1, -324($fp)
	lw $t0, 12($fp)
	sw $t0, -328($fp)
	lw $t0, -324($fp)
	lw $t1, -328($fp)
	sub $t0, $t0, $t1
	sw $t0, -332($fp)
	li $t0, 0
	sw $t0, -336($fp)
	li $t0, 1448
	sw $t0, -340($fp)
	lw $t1, -340($fp)
	li $t2, 0
	bne $t1, $t2, label715
	j label713
label715:
	lw $t0, 12($fp)
	sw $t0, -344($fp)
	lw $t1, -344($fp)
	li $t2, 0
	bne $t1, $t2, label714
	j label713
label714:
	li $t0, 65139
	sw $t0, -348($fp)
	lw $t1, -348($fp)
	li $t2, 0
	bne $t1, $t2, label712
	j label713
label712:
	li $t0, 1
	sw $t0, -336($fp)
label713:
	addi $sp, $sp, -4
	lw $t0, -272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -336($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -352($fp)
	addi $sp, $sp, 24
	lw $t0, -268($fp)
	lw $t1, -352($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -356($fp)
	lw $t0, 12($fp)
	sw $t0, -360($fp)
	lw $t0, -356($fp)
	lw $t1, -360($fp)
	add $t0, $t0, $t1
	sw $t0, -364($fp)
	lw $t1, -364($fp)
	li $t2, 0
	bne $t1, $t2, label706
	j label708
label708:
	addi $t0, $fp, -24
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
	lw $t1, -384($fp)
	li $t2, 0
	bne $t1, $t2, label706
	j label707
label706:
	li $t0, 1
	sw $t0, -248($fp)
label707:
	lw $ra, -4($fp)
	lw $v0, -248($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -924
	li $t0, 63636
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
	li $t0, 9459
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
	li $t0, 44642
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	li $t0, 24698
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	li $t0, 15400
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	li $t0, 42753
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	li $t0, 9842
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	addi $t0, $fp, -12
	sw $t0, -124($fp)
	li $t0, 0
	sw $t0, -128($fp)
	li $t0, 4
	lw $t1, -128($fp)
	mul $t0, $t0, $t1
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	lw $t1, -124($fp)
	add $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	lw $t1, 0($t0)
	sw $t1, -140($fp)
	lw $t0, -140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -144($fp)
	li $t0, 1
	sw $t0, -148($fp)
	li $t0, 4
	lw $t1, -148($fp)
	mul $t0, $t0, $t1
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	lw $t1, -144($fp)
	add $t0, $t0, $t1
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	lw $t1, 0($t0)
	sw $t1, -160($fp)
	lw $t0, -160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -116($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -184($fp)
	li $t0, 0
	sw $t0, -188($fp)
	li $t0, 0
	sw $t0, -192($fp)
	lw $t0, -92($fp)
	sw $t0, -196($fp)
	lw $t1, -196($fp)
	li $t2, 0
	bne $t1, $t2, label722
	j label721
label721:
	li $t0, 1
	sw $t0, -192($fp)
label722:
	li $t0, 18067
	sw $t0, -200($fp)
	lw $t0, -192($fp)
	lw $t1, -200($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -204($fp)
	lw $t0, -80($fp)
	sw $t0, -208($fp)
	li $t0, 0
	lw $t1, -208($fp)
	sub $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $t1, -204($fp)
	lw $t2, -212($fp)
	bne $t1, $t2, label719
	j label720
label719:
	li $t0, 1
	sw $t0, -188($fp)
label720:
	lw $t0, -104($fp)
	sw $t0, -216($fp)
	lw $t1, -188($fp)
	lw $t2, -216($fp)
	bne $t1, $t2, label718
	j label717
label718:
	li $t0, 60625
	sw $t0, -220($fp)
	li $t0, 61512
	sw $t0, -224($fp)
	lw $t0, -220($fp)
	lw $t1, -224($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -228($fp)
	lw $t0, -92($fp)
	sw $t0, -232($fp)
	lw $t0, -228($fp)
	lw $t1, -232($fp)
	add $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $t0, -80($fp)
	sw $t0, -240($fp)
	lw $t0, -116($fp)
	sw $t0, -244($fp)
	lw $t0, -240($fp)
	lw $t1, -244($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -248($fp)
	lw $t0, -236($fp)
	lw $t1, -248($fp)
	add $t0, $t0, $t1
	sw $t0, -252($fp)
	lw $t1, -252($fp)
	li $t2, 0
	bne $t1, $t2, label716
	j label717
label716:
	li $t0, 1
	sw $t0, -184($fp)
label717:
	lw $ra, -4($fp)
	lw $v0, -184($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 22620
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	li $t0, 0
	sw $t0, -268($fp)
	li $t0, 0
	sw $t0, -272($fp)
	li $t0, 9094
	sw $t0, -276($fp)
	lw $t1, -276($fp)
	li $t2, 0
	bne $t1, $t2, label726
	j label725
label725:
	li $t0, 1
	sw $t0, -272($fp)
label726:
	li $t0, 33181
	sw $t0, -280($fp)
	lw $t0, -272($fp)
	lw $t1, -280($fp)
	add $t0, $t0, $t1
	sw $t0, -284($fp)
	addi $sp, $sp, -4
	lw $t0, -284($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -288($fp)
	addi $sp, $sp, 8
	lw $t1, -288($fp)
	li $t2, 0
	bne $t1, $t2, label724
	j label723
label723:
	li $t0, 1
	sw $t0, -268($fp)
label724:
	jal f9
	sw $v0, -292($fp)
	addi $sp, $sp, 4
	lw $t0, -268($fp)
	lw $t1, -292($fp)
	sub $t0, $t0, $t1
	sw $t0, -296($fp)
	li $t0, 0
	sw $t0, -300($fp)
	addi $t0, $fp, -12
	sw $t0, -304($fp)
	lw $t0, -92($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -312($fp)
	addi $sp, $sp, -4
	lw $t0, -312($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -316($fp)
	addi $sp, $sp, 8
	li $t0, 4
	lw $t1, -316($fp)
	mul $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	lw $t1, -304($fp)
	add $t0, $t0, $t1
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	lw $t1, 0($t0)
	sw $t1, -328($fp)
	lw $t0, -260($fp)
	sw $t0, -332($fp)
	lw $t0, -328($fp)
	lw $t1, -332($fp)
	mul $t0, $t0, $t1
	sw $t0, -336($fp)
	jal f9
	sw $v0, -340($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -344($fp)
	lw $t0, 4($fp)
	sw $t0, -348($fp)
	lw $t1, -348($fp)
	li $t2, 0
	bne $t1, $t2, label730
	j label729
label729:
	li $t0, 1
	sw $t0, -344($fp)
label730:
	lw $t0, -340($fp)
	lw $t1, -344($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -352($fp)
	li $t0, 0
	lw $t1, -352($fp)
	sub $t0, $t0, $t1
	sw $t0, -356($fp)
	lw $t1, -336($fp)
	lw $t2, -356($fp)
	ble $t1, $t2, label727
	j label728
label727:
	li $t0, 1
	sw $t0, -300($fp)
label728:
	li $t0, 27144
	sw $t0, -360($fp)
	li $t0, 0
	sw $t0, -364($fp)
	li $t0, 59589
	sw $t0, -368($fp)
	lw $t1, -368($fp)
	li $t2, 0
	bne $t1, $t2, label732
	j label731
label731:
	li $t0, 1
	sw $t0, -364($fp)
label732:
	li $t0, 0
	sw $t0, -372($fp)
	li $t0, 352
	sw $t0, -376($fp)
	lw $t1, -376($fp)
	li $t2, 0
	bne $t1, $t2, label734
	j label733
label733:
	li $t0, 1
	sw $t0, -372($fp)
label734:
	li $t0, 0
	sw $t0, -380($fp)
	li $t0, 39280
	sw $t0, -384($fp)
	lw $t1, -384($fp)
	li $t2, 0
	bne $t1, $t2, label735
	j label736
label735:
	li $t0, 1
	sw $t0, -380($fp)
label736:
	li $t0, 0
	lw $t1, -380($fp)
	sub $t0, $t0, $t1
	sw $t0, -388($fp)
	lw $t0, -372($fp)
	lw $t1, -388($fp)
	add $t0, $t0, $t1
	sw $t0, -392($fp)
	addi $t0, $fp, -12
	sw $t0, -396($fp)
	lw $t0, -92($fp)
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
	li $t0, 38699
	sw $t0, -416($fp)
	lw $t0, -412($fp)
	lw $t1, -416($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -420($fp)
	lw $t0, -68($fp)
	sw $t0, -424($fp)
	lw $t0, -420($fp)
	lw $t1, -424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -428($fp)
	jal f9
	sw $v0, -432($fp)
	addi $sp, $sp, 4
	lw $t0, -428($fp)
	lw $t1, -432($fp)
	add $t0, $t0, $t1
	sw $t0, -436($fp)
	lw $t0, -80($fp)
	sw $t0, -440($fp)
	li $t0, 0
	sw $t0, -444($fp)
	lw $t0, -68($fp)
	sw $t0, -448($fp)
	lw $t1, -448($fp)
	li $t2, 0
	bne $t1, $t2, label738
	j label737
label737:
	li $t0, 1
	sw $t0, -444($fp)
label738:
	lw $t0, -440($fp)
	lw $t1, -444($fp)
	mul $t0, $t0, $t1
	sw $t0, -452($fp)
	li $t0, 0
	lw $t1, -452($fp)
	sub $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t0, -436($fp)
	lw $t1, -456($fp)
	sub $t0, $t0, $t1
	sw $t0, -460($fp)
	li $t0, 60735
	sw $t0, -484($fp)
	addi $t0, $fp, -480
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
	li $t0, 37640
	sw $t0, -508($fp)
	addi $t0, $fp, -480
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
	li $t0, 58727
	sw $t0, -532($fp)
	addi $t0, $fp, -480
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
	li $t0, 46107
	sw $t0, -556($fp)
	addi $t0, $fp, -480
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
	li $t0, 18438
	sw $t0, -580($fp)
	addi $t0, $fp, -480
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
	li $t0, 60175
	sw $t0, -604($fp)
	jal f9
	sw $v0, -608($fp)
	addi $sp, $sp, 4
	lw $t1, -608($fp)
	li $t2, 0
	bne $t1, $t2, label743
	j label740
label743:
	li $t0, 0
	sw $t0, -612($fp)
	li $t0, 45710
	sw $t0, -616($fp)
	lw $t1, -616($fp)
	li $t2, 0
	bne $t1, $t2, label745
	j label744
label744:
	li $t0, 1
	sw $t0, -612($fp)
label745:
	li $t0, 61786
	sw $t0, -620($fp)
	lw $t1, -612($fp)
	lw $t2, -620($fp)
	blt $t1, $t2, label742
	j label740
label742:
	addi $t0, $fp, -480
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
	li $t0, 0
	lw $t1, -640($fp)
	sub $t0, $t0, $t1
	sw $t0, -644($fp)
	lw $t1, -644($fp)
	li $t2, 0
	bne $t1, $t2, label739
	j label740
label739:
	li $t0, 0
	sw $t0, -648($fp)
	li $t0, 47799
	sw $t0, -652($fp)
	lw $t1, -652($fp)
	li $t2, 0
	bne $t1, $t2, label746
	j label747
label746:
	li $t0, 1
	sw $t0, -648($fp)
label747:
	j label741
label740:
	li $t0, 0
	sw $t0, -656($fp)
	li $t0, 36439
	sw $t0, -660($fp)
	li $t0, 56160
	sw $t0, -664($fp)
	lw $t1, -660($fp)
	lw $t2, -664($fp)
	blt $t1, $t2, label748
	j label749
label748:
	li $t0, 1
	sw $t0, -656($fp)
label749:
label741:
	addi $t0, $fp, -12
	sw $t0, -668($fp)
	li $t0, 0
	sw $t0, -672($fp)
	li $t0, 4
	lw $t1, -672($fp)
	mul $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	lw $t1, -668($fp)
	add $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	lw $t1, 0($t0)
	sw $t1, -684($fp)
	lw $t0, -684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -688($fp)
	li $t0, 1
	sw $t0, -692($fp)
	li $t0, 4
	lw $t1, -692($fp)
	mul $t0, $t0, $t1
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	lw $t1, -688($fp)
	add $t0, $t0, $t1
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	lw $t1, 0($t0)
	sw $t1, -704($fp)
	lw $t0, -704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -116($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -728($fp)
	li $t0, 45899
	sw $t0, -732($fp)
	addi $t0, $fp, -12
	sw $t0, -736($fp)
	li $t0, 0
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
	li $t0, 5062
	sw $t0, -756($fp)
	lw $t0, -752($fp)
	lw $t1, -756($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -760($fp)
	lw $t0, -732($fp)
	lw $t1, -760($fp)
	sub $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t1, -764($fp)
	li $t2, 0
	bne $t1, $t2, label750
	j label752
label752:
	lw $t0, -68($fp)
	sw $t0, -768($fp)
	li $t0, 61298
	sw $t0, -772($fp)
	lw $t0, -768($fp)
	lw $t1, -772($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -776($fp)
	li $t0, 12484
	sw $t0, -780($fp)
	lw $t0, -776($fp)
	lw $t1, -780($fp)
	add $t0, $t0, $t1
	sw $t0, -784($fp)
	li $t0, 14904
	sw $t0, -788($fp)
	li $t0, 13830
	sw $t0, -792($fp)
	lw $t0, -788($fp)
	lw $t1, -792($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -796($fp)
	lw $t0, -784($fp)
	lw $t1, -796($fp)
	add $t0, $t0, $t1
	sw $t0, -800($fp)
	lw $t1, -800($fp)
	li $t2, 0
	bne $t1, $t2, label750
	j label751
label750:
	li $t0, 1
	sw $t0, -728($fp)
label751:
	lw $ra, -4($fp)
	lw $v0, -728($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -12
	sw $t0, -804($fp)
	li $t0, 0
	sw $t0, -808($fp)
	li $t0, 4
	lw $t1, -808($fp)
	mul $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	lw $t1, -804($fp)
	add $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	lw $t1, 0($t0)
	sw $t1, -820($fp)
	lw $t0, -820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -824($fp)
	li $t0, 1
	sw $t0, -828($fp)
	li $t0, 4
	lw $t1, -828($fp)
	mul $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	lw $t1, -824($fp)
	add $t0, $t0, $t1
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	lw $t1, 0($t0)
	sw $t1, -840($fp)
	lw $t0, -840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -116($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -864($fp)
	lw $t0, -92($fp)
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
	li $t0, 0
	lw $t1, -880($fp)
	sub $t0, $t0, $t1
	sw $t0, -884($fp)
	lw $t0, -68($fp)
	sw $t0, -888($fp)
	lw $t0, 4($fp)
	sw $t0, -892($fp)
	li $t0, 0
	sw $t0, -896($fp)
	li $t0, 0
	sw $t0, -900($fp)
	lw $t0, -80($fp)
	sw $t0, -904($fp)
	li $t0, 10881
	sw $t0, -908($fp)
	lw $t1, -904($fp)
	lw $t2, -908($fp)
	ble $t1, $t2, label755
	j label756
label755:
	li $t0, 1
	sw $t0, -900($fp)
label756:
	lw $t0, 4($fp)
	sw $t0, -912($fp)
	lw $t1, -900($fp)
	lw $t2, -912($fp)
	bne $t1, $t2, label753
	j label754
label753:
	li $t0, 1
	sw $t0, -896($fp)
label754:
	lw $t0, -68($fp)
	sw $t0, -916($fp)
	li $t0, 7573
	sw $t0, -920($fp)
	lw $t0, -916($fp)
	lw $t1, -920($fp)
	sub $t0, $t0, $t1
	sw $t0, -924($fp)
	addi $sp, $sp, -4
	lw $t0, -884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -924($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -928($fp)
	addi $sp, $sp, 24
	lw $ra, -4($fp)
	lw $v0, -928($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -180
	li $t0, 36450
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
	li $t0, 16668
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
	li $t0, 44062
	sw $t0, -64($fp)
	lw $t0, 4($fp)
	sw $t0, -68($fp)
	lw $t0, -64($fp)
	lw $t1, -68($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -72($fp)
	addi $sp, $sp, -4
	lw $t0, -72($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -76($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -80($fp)
	li $t0, 63594
	sw $t0, -84($fp)
	lw $t1, -84($fp)
	li $t2, 0
	bne $t1, $t2, label758
	j label757
label757:
	li $t0, 1
	sw $t0, -80($fp)
label758:
	addi $t0, $fp, -12
	sw $t0, -88($fp)
	li $t0, 0
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
	lw $t0, -104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -108($fp)
	li $t0, 1
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
	lw $t0, 4($fp)
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -132($fp)
	addi $t0, $fp, -12
	sw $t0, -136($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -152($fp)
	sub $t0, $t0, $t1
	sw $t0, -156($fp)
	li $t0, 0
	sw $t0, -160($fp)
	li $t0, 37339
	sw $t0, -164($fp)
	lw $t0, 4($fp)
	sw $t0, -168($fp)
	lw $t1, -164($fp)
	lw $t2, -168($fp)
	ble $t1, $t2, label759
	j label760
label759:
	li $t0, 1
	sw $t0, -160($fp)
label760:
	li $t0, 0
	sw $t0, -172($fp)
	li $t0, 10721
	sw $t0, -176($fp)
	li $t0, 44414
	sw $t0, -180($fp)
	lw $t1, -176($fp)
	lw $t2, -180($fp)
	bge $t1, $t2, label761
	j label762
label761:
	li $t0, 1
	sw $t0, -172($fp)
label762:
	addi $sp, $sp, -4
	lw $t0, -132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -172($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -184($fp)
	addi $sp, $sp, 20
	lw $ra, -4($fp)
	lw $v0, -184($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1840
	li $t0, 9443
	sw $t0, -52($fp)
	addi $t0, $fp, -12
	sw $t0, -56($fp)
	li $t0, 0
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
	li $t0, 42611
	sw $t0, -76($fp)
	addi $t0, $fp, -12
	sw $t0, -80($fp)
	li $t0, 1
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
	li $t0, 20185
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	li $t0, 27881
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	li $t0, 37251
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	li $t0, 359
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	li $t0, 24131
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	li $t0, 4754
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	li $t0, 4756
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	li $t0, 6394
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	li $t0, 41193
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	li $t0, 60917
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	li $t0, 52294
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	li $t0, 21556
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	li $t0, 30647
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	li $t0, 57356
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	li $t0, 17318
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	li $t0, 43131
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	li $t0, 6724
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	li $t0, 31148
	sw $t0, -304($fp)
	addi $t0, $fp, -24
	sw $t0, -308($fp)
	li $t0, 0
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
	li $t0, 50705
	sw $t0, -328($fp)
	addi $t0, $fp, -24
	sw $t0, -332($fp)
	li $t0, 1
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
	li $t0, 17605
	sw $t0, -352($fp)
	addi $t0, $fp, -24
	sw $t0, -356($fp)
	li $t0, 2
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
	li $t0, 2063
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	li $t0, 1837
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	li $t0, 61668
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	li $t0, 121
	sw $t0, -412($fp)
	addi $t0, $fp, -48
	sw $t0, -416($fp)
	li $t0, 0
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
	li $t0, 12558
	sw $t0, -436($fp)
	addi $t0, $fp, -48
	sw $t0, -440($fp)
	li $t0, 1
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
	li $t0, 40546
	sw $t0, -460($fp)
	addi $t0, $fp, -48
	sw $t0, -464($fp)
	li $t0, 2
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
	li $t0, 37460
	sw $t0, -484($fp)
	addi $t0, $fp, -48
	sw $t0, -488($fp)
	li $t0, 3
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
	li $t0, 61978
	sw $t0, -508($fp)
	addi $t0, $fp, -48
	sw $t0, -512($fp)
	li $t0, 4
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
	li $t0, 14624
	sw $t0, -532($fp)
	addi $t0, $fp, -48
	sw $t0, -536($fp)
	li $t0, 5
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
	li $t0, 46904
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	lw $t0, -560($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -404($fp)
	sw $t0, -572($fp)
	li $t0, 0
	lw $t1, -572($fp)
	sub $t0, $t0, $t1
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -580($fp)
	lw $ra, -4($fp)
	lw $v0, -580($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -560($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -588($fp)
	addi $t0, $fp, -12
	sw $t0, -592($fp)
	li $t0, 0
	sw $t0, -596($fp)
	lw $t0, -560($fp)
	sw $t0, -600($fp)
	li $t0, 39054
	sw $t0, -604($fp)
	lw $t0, -600($fp)
	lw $t1, -604($fp)
	add $t0, $t0, $t1
	sw $t0, -608($fp)
	lw $t1, -608($fp)
	li $t2, 0
	bne $t1, $t2, label766
	j label768
label768:
	lw $t0, -560($fp)
	sw $t0, -612($fp)
	lw $t1, -612($fp)
	li $t2, 0
	bne $t1, $t2, label766
	j label767
label766:
	li $t0, 1
	sw $t0, -596($fp)
label767:
	li $t0, 4
	lw $t1, -596($fp)
	mul $t0, $t0, $t1
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	lw $t1, -592($fp)
	add $t0, $t0, $t1
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	lw $t1, 0($t0)
	sw $t1, -624($fp)
	lw $t1, -624($fp)
	li $t2, 0
	bne $t1, $t2, label765
	j label764
label765:
	lw $t0, -236($fp)
	sw $t0, -628($fp)
	li $t0, 0
	lw $t1, -628($fp)
	sub $t0, $t0, $t1
	sw $t0, -632($fp)
	li $t0, 34809
	sw $t0, -636($fp)
	lw $t0, -632($fp)
	lw $t1, -636($fp)
	sub $t0, $t0, $t1
	sw $t0, -640($fp)
	li $t0, 9249
	sw $t0, -644($fp)
	li $t0, 10769
	sw $t0, -648($fp)
	lw $t0, -644($fp)
	lw $t1, -648($fp)
	mul $t0, $t0, $t1
	sw $t0, -652($fp)
	lw $t0, -640($fp)
	lw $t1, -652($fp)
	add $t0, $t0, $t1
	sw $t0, -656($fp)
	lw $t1, -656($fp)
	li $t2, 0
	bne $t1, $t2, label763
	j label764
label763:
	li $t0, 1
	sw $t0, -588($fp)
label764:
	lw $ra, -4($fp)
	lw $v0, -588($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -24
	sw $t0, -660($fp)
	li $t0, 0
	sw $t0, -664($fp)
	lw $t0, -128($fp)
	sw $t0, -668($fp)
	lw $t0, -236($fp)
	sw $t0, -672($fp)
	lw $t1, -668($fp)
	lw $t2, -672($fp)
	bne $t1, $t2, label772
	j label773
label772:
	li $t0, 1
	sw $t0, -664($fp)
label773:
	li $t0, 4
	lw $t1, -664($fp)
	mul $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	lw $t1, -660($fp)
	add $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	lw $t1, 0($t0)
	sw $t1, -684($fp)
	lw $t1, -684($fp)
	li $t2, 0
	bne $t1, $t2, label770
	j label769
label769:
label774:
	addi $t0, $fp, -12
	sw $t0, -688($fp)
	lw $t0, -200($fp)
	sw $t0, -692($fp)
	li $t0, 15523
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -700($fp)
	li $t0, 0
	sw $t0, -704($fp)
	li $t0, 33381
	sw $t0, -708($fp)
	lw $t1, -708($fp)
	li $t2, 0
	bne $t1, $t2, label780
	j label779
label780:
	lw $t0, -260($fp)
	sw $t0, -712($fp)
	lw $t1, -712($fp)
	li $t2, 0
	bne $t1, $t2, label777
	j label779
label779:
	lw $t0, -128($fp)
	sw $t0, -716($fp)
	lw $t1, -716($fp)
	li $t2, 0
	bne $t1, $t2, label777
	j label778
label777:
	li $t0, 1
	sw $t0, -704($fp)
label778:
	lw $t0, -236($fp)
	sw $t0, -720($fp)
	li $t0, 35168
	sw $t0, -724($fp)
	lw $t0, -720($fp)
	lw $t1, -724($fp)
	add $t0, $t0, $t1
	sw $t0, -728($fp)
	lw $t0, -404($fp)
	sw $t0, -732($fp)
	lw $t0, -728($fp)
	lw $t1, -732($fp)
	add $t0, $t0, $t1
	sw $t0, -736($fp)
	li $t0, 0
	sw $t0, -740($fp)
	lw $t0, -284($fp)
	sw $t0, -744($fp)
	lw $t1, -744($fp)
	li $t2, 0
	bne $t1, $t2, label782
	j label781
label781:
	li $t0, 1
	sw $t0, -740($fp)
label782:
	addi $sp, $sp, -4
	lw $t0, -692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -740($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -748($fp)
	addi $sp, $sp, 24
	li $t0, 39925
	sw $t0, -752($fp)
	li $t0, 0
	lw $t1, -752($fp)
	sub $t0, $t0, $t1
	sw $t0, -756($fp)
	lw $t0, -748($fp)
	lw $t1, -756($fp)
	sub $t0, $t0, $t1
	sw $t0, -760($fp)
	li $t0, 4
	lw $t1, -760($fp)
	mul $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	lw $t1, -688($fp)
	add $t0, $t0, $t1
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	lw $t1, 0($t0)
	sw $t1, -772($fp)
	lw $t1, -772($fp)
	li $t2, 0
	bne $t1, $t2, label775
	j label776
label775:
	li $t0, 39775
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -780($fp)
	addi $sp, $sp, -4
	lw $t0, -780($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -784($fp)
	addi $sp, $sp, 8
	j label774
label776:
	j label771
label770:
	lw $t0, -404($fp)
	sw $t0, -788($fp)
	li $t0, 0
	sw $t0, -792($fp)
	lw $t0, -272($fp)
	sw $t0, -796($fp)
	li $t0, 0
	lw $t1, -796($fp)
	sub $t0, $t0, $t1
	sw $t0, -800($fp)
	lw $t1, -800($fp)
	li $t2, 0
	bne $t1, $t2, label787
	j label786
label786:
	li $t0, 1
	sw $t0, -792($fp)
label787:
	lw $t0, -788($fp)
	lw $t1, -792($fp)
	sub $t0, $t0, $t1
	sw $t0, -804($fp)
	addi $t0, $fp, -48
	sw $t0, -808($fp)
	lw $t0, -200($fp)
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -816($fp)
	li $t0, 4
	lw $t1, -816($fp)
	mul $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	lw $t1, -808($fp)
	add $t0, $t0, $t1
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	lw $t1, 0($t0)
	sw $t1, -828($fp)
	lw $t0, -804($fp)
	lw $t1, -828($fp)
	sub $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t1, -832($fp)
	li $t2, 0
	bne $t1, $t2, label783
	j label784
label783:
	li $t0, 0
	sw $t0, -836($fp)
	li $t0, 56717
	sw $t0, -840($fp)
	lw $t0, -392($fp)
	sw $t0, -844($fp)
	lw $t0, -840($fp)
	lw $t1, -844($fp)
	sub $t0, $t0, $t1
	sw $t0, -848($fp)
	li $t0, 0
	sw $t0, -852($fp)
	lw $t0, -200($fp)
	sw $t0, -856($fp)
	lw $t1, -856($fp)
	li $t2, 0
	bne $t1, $t2, label790
	j label791
label790:
	li $t0, 1
	sw $t0, -852($fp)
label791:
	addi $t0, $fp, -24
	sw $t0, -860($fp)
	lw $t0, -272($fp)
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
	lw $t0, -852($fp)
	lw $t1, -876($fp)
	mul $t0, $t0, $t1
	sw $t0, -880($fp)
	lw $t1, -848($fp)
	lw $t2, -880($fp)
	ble $t1, $t2, label788
	j label789
label788:
	li $t0, 1
	sw $t0, -836($fp)
label789:
	j label785
label784:
	li $t0, 35306
	sw $t0, -884($fp)
	lw $t0, -404($fp)
	sw $t0, -888($fp)
	lw $t0, -884($fp)
	lw $t1, -888($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -892($fp)
	lw $t0, -128($fp)
	sw $t0, -896($fp)
	lw $t0, -892($fp)
	lw $t1, -896($fp)
	mul $t0, $t0, $t1
	sw $t0, -900($fp)
	addi $sp, $sp, -4
	lw $t0, -900($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -904($fp)
	addi $sp, $sp, 8
	lw $t1, -904($fp)
	li $t2, 0
	bne $t1, $t2, label795
	j label793
label795:
	li $t0, 26533
	sw $t0, -908($fp)
	li $t0, 0
	lw $t1, -908($fp)
	sub $t0, $t0, $t1
	sw $t0, -912($fp)
	lw $t1, -912($fp)
	li $t2, 0
	bne $t1, $t2, label793
	j label792
label792:
	lw $t0, -260($fp)
	sw $t0, -916($fp)
	li $t0, 0
	sw $t0, -920($fp)
	li $t0, 43113
	sw $t0, -924($fp)
	li $t0, 13826
	sw $t0, -928($fp)
	lw $t0, -924($fp)
	lw $t1, -928($fp)
	add $t0, $t0, $t1
	sw $t0, -932($fp)
	lw $t1, -932($fp)
	li $t2, 0
	bne $t1, $t2, label798
	j label797
label798:
	li $t0, 35313
	sw $t0, -936($fp)
	lw $t1, -936($fp)
	li $t2, 0
	bne $t1, $t2, label796
	j label797
label796:
	li $t0, 1
	sw $t0, -920($fp)
label797:
	addi $sp, $sp, -4
	lw $t0, -920($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -940($fp)
	addi $sp, $sp, 8
	li $t0, 39555
	sw $t0, -944($fp)
	lw $t0, -940($fp)
	lw $t1, -944($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -948($fp)
	li $t0, 63388
	sw $t0, -952($fp)
	li $t0, 0
	lw $t1, -952($fp)
	sub $t0, $t0, $t1
	sw $t0, -956($fp)
	lw $t0, -260($fp)
	sw $t0, -960($fp)
	lw $t0, -956($fp)
	lw $t1, -960($fp)
	sub $t0, $t0, $t1
	sw $t0, -964($fp)
	li $t0, 0
	sw $t0, -968($fp)
	lw $t0, -104($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -976($fp)
	li $t0, 0
	sw $t0, -980($fp)
	li $t0, 30555
	sw $t0, -984($fp)
	lw $t1, -984($fp)
	li $t2, 0
	bne $t1, $t2, label803
	j label802
label802:
	li $t0, 1
	sw $t0, -980($fp)
label803:
	li $t0, 38815
	sw $t0, -988($fp)
	lw $t0, -980($fp)
	lw $t1, -988($fp)
	add $t0, $t0, $t1
	sw $t0, -992($fp)
	li $t0, 63267
	sw $t0, -996($fp)
	lw $t0, -260($fp)
	sw $t0, -1000($fp)
	lw $t0, -996($fp)
	lw $t1, -1000($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1004($fp)
	addi $t0, $fp, -48
	sw $t0, -1008($fp)
	lw $t0, -236($fp)
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
	li $t0, 28718
	sw $t0, -1028($fp)
	lw $t0, -1024($fp)
	lw $t1, -1028($fp)
	mul $t0, $t0, $t1
	sw $t0, -1032($fp)
	addi $sp, $sp, -4
	lw $t0, -1032($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1036($fp)
	addi $sp, $sp, 8
	li $t0, 42683
	sw $t0, -1040($fp)
	lw $t0, -1036($fp)
	lw $t1, -1040($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1044($fp)
	li $t0, 0
	sw $t0, -1048($fp)
	li $t0, 25078
	sw $t0, -1052($fp)
	li $t0, 61204
	sw $t0, -1056($fp)
	lw $t1, -1052($fp)
	lw $t2, -1056($fp)
	beq $t1, $t2, label806
	j label805
label806:
	lw $t0, 8($fp)
	sw $t0, -1060($fp)
	lw $t1, -1060($fp)
	li $t2, 0
	bne $t1, $t2, label804
	j label805
label804:
	li $t0, 1
	sw $t0, -1048($fp)
label805:
	li $t0, 18353
	sw $t0, -1064($fp)
	li $t0, 30055
	sw $t0, -1068($fp)
	lw $t0, -1064($fp)
	lw $t1, -1068($fp)
	mul $t0, $t0, $t1
	sw $t0, -1072($fp)
	li $t0, 43549
	sw $t0, -1076($fp)
	lw $t0, -1072($fp)
	lw $t1, -1076($fp)
	sub $t0, $t0, $t1
	sw $t0, -1080($fp)
	addi $t0, $fp, -24
	sw $t0, -1084($fp)
	li $t0, 0
	sw $t0, -1088($fp)
	li $t0, 4
	lw $t1, -1088($fp)
	mul $t0, $t0, $t1
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	lw $t1, -1084($fp)
	add $t0, $t0, $t1
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	lw $t1, 0($t0)
	sw $t1, -1100($fp)
	addi $sp, $sp, -4
	lw $t0, -1004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1100($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1104($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1104($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -1108($fp)
	addi $sp, $sp, 16
	lw $t1, -1108($fp)
	li $t2, 0
	bne $t1, $t2, label799
	j label801
label801:
	lw $t0, -212($fp)
	sw $t0, -1112($fp)
	lw $t1, -1112($fp)
	li $t2, 0
	bne $t1, $t2, label799
	j label800
label799:
	li $t0, 1
	sw $t0, -968($fp)
label800:
	addi $sp, $sp, -4
	lw $t0, -948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -968($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -1116($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -1116($fp)
	sub $t0, $t0, $t1
	sw $t0, -1120($fp)
	lw $t0, -916($fp)
	lw $t1, -1120($fp)
	sub $t0, $t0, $t1
	sw $t0, -1124($fp)
	lw $t0, -128($fp)
	sw $t0, -1128($fp)
	li $t0, 0
	lw $t1, -1128($fp)
	sub $t0, $t0, $t1
	sw $t0, -1132($fp)
	lw $t0, -1124($fp)
	lw $t1, -1132($fp)
	sub $t0, $t0, $t1
	sw $t0, -1136($fp)
	lw $ra, -4($fp)
	lw $v0, -1136($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label794
label793:
	li $t0, 0
	sw $t0, -1140($fp)
	lw $t0, -200($fp)
	sw $t0, -1144($fp)
	li $t0, 0
	sw $t0, -1148($fp)
	lw $t0, -200($fp)
	sw $t0, -1152($fp)
	lw $t1, -1152($fp)
	li $t2, 0
	bne $t1, $t2, label811
	j label810
label810:
	li $t0, 1
	sw $t0, -1148($fp)
label811:
	lw $t0, -236($fp)
	sw $t0, -1156($fp)
	lw $t0, -1148($fp)
	lw $t1, -1156($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1160($fp)
	lw $t1, -1144($fp)
	lw $t2, -1160($fp)
	bge $t1, $t2, label809
	j label808
label809:
	li $t0, 28450
	sw $t0, -1164($fp)
	lw $t0, -284($fp)
	sw $t0, -1168($fp)
	lw $t0, -1164($fp)
	lw $t1, -1168($fp)
	mul $t0, $t0, $t1
	sw $t0, -1172($fp)
	lw $t1, -1172($fp)
	li $t2, 0
	bne $t1, $t2, label807
	j label808
label807:
	li $t0, 1
	sw $t0, -1140($fp)
label808:
label794:
label785:
label771:
	li $t0, 16681
	sw $t0, -1176($fp)
	addi $t0, $fp, -24
	sw $t0, -1180($fp)
	li $t0, 0
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
	lw $t0, -1176($fp)
	lw $t1, -1196($fp)
	mul $t0, $t0, $t1
	sw $t0, -1200($fp)
	li $t0, 0
	sw $t0, -1204($fp)
	lw $t0, -104($fp)
	sw $t0, -1208($fp)
	lw $t0, -380($fp)
	sw $t0, -1212($fp)
	lw $t0, -1208($fp)
	lw $t1, -1212($fp)
	mul $t0, $t0, $t1
	sw $t0, -1216($fp)
	lw $t1, -1216($fp)
	li $t2, 0
	bne $t1, $t2, label814
	j label813
label814:
	lw $t0, -236($fp)
	sw $t0, -1220($fp)
	lw $t1, -1220($fp)
	li $t2, 0
	bne $t1, $t2, label812
	j label813
label812:
	li $t0, 1
	sw $t0, -1204($fp)
label813:
	addi $t0, $fp, -24
	sw $t0, -1224($fp)
	li $t0, 0
	sw $t0, -1228($fp)
	li $t0, 4
	lw $t1, -1228($fp)
	mul $t0, $t0, $t1
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	lw $t1, -1224($fp)
	add $t0, $t0, $t1
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	lw $t1, 0($t0)
	sw $t1, -1240($fp)
	li $t0, 0
	sw $t0, -1244($fp)
	addi $t0, $fp, -24
	sw $t0, -1248($fp)
	li $t0, 2
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
	lw $t0, -260($fp)
	sw $t0, -1268($fp)
	lw $t0, -1264($fp)
	lw $t1, -1268($fp)
	add $t0, $t0, $t1
	sw $t0, -1272($fp)
	li $t0, 0
	sw $t0, -1276($fp)
	lw $t0, -260($fp)
	sw $t0, -1280($fp)
	li $t0, 23842
	sw $t0, -1284($fp)
	lw $t1, -1280($fp)
	lw $t2, -1284($fp)
	ble $t1, $t2, label817
	j label818
label817:
	li $t0, 1
	sw $t0, -1276($fp)
label818:
	li $t0, 25930
	sw $t0, -1288($fp)
	addi $sp, $sp, -4
	lw $t0, -1272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1288($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -1292($fp)
	addi $sp, $sp, 16
	lw $t1, -1292($fp)
	li $t2, 0
	bne $t1, $t2, label816
	j label815
label815:
	li $t0, 1
	sw $t0, -1244($fp)
label816:
	lw $t0, -200($fp)
	sw $t0, -1296($fp)
	addi $sp, $sp, -4
	lw $t0, -1204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1296($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1300($fp)
	addi $sp, $sp, 20
	lw $t0, -1200($fp)
	lw $t1, -1300($fp)
	mul $t0, $t0, $t1
	sw $t0, -1304($fp)
label819:
	addi $t0, $fp, -24
	sw $t0, -1308($fp)
	li $t0, 0
	sw $t0, -1312($fp)
	lw $t0, -260($fp)
	sw $t0, -1316($fp)
	lw $t1, -1316($fp)
	li $t2, 0
	bne $t1, $t2, label822
	j label824
label824:
	li $t0, 33551
	sw $t0, -1320($fp)
	lw $t1, -1320($fp)
	li $t2, 0
	bne $t1, $t2, label822
	j label823
label822:
	li $t0, 1
	sw $t0, -1312($fp)
label823:
	li $t0, 4
	lw $t1, -1312($fp)
	mul $t0, $t0, $t1
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	lw $t1, -1308($fp)
	add $t0, $t0, $t1
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	lw $t1, 0($t0)
	sw $t1, -1332($fp)
	lw $t0, -1332($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -1336($fp)
	lw $t1, -1336($fp)
	li $t2, 0
	bne $t1, $t2, label820
	j label821
label820:
	li $t0, 0
	sw $t0, -1340($fp)
	lw $t0, -236($fp)
	sw $t0, -1344($fp)
	li $t0, 43284
	sw $t0, -1348($fp)
	lw $t0, -1344($fp)
	lw $t1, -1348($fp)
	sub $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t0, -404($fp)
	sw $t0, -1356($fp)
	lw $t1, -1352($fp)
	lw $t2, -1356($fp)
	bne $t1, $t2, label825
	j label826
label825:
	li $t0, 1
	sw $t0, -1340($fp)
label826:
	li $t0, 60084
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -1364($fp)
	lw $t0, -260($fp)
	sw $t0, -1368($fp)
	li $t0, 42587
	sw $t0, -1372($fp)
	lw $t0, 4($fp)
	sw $t0, -1376($fp)
	lw $t0, -1372($fp)
	lw $t1, -1376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1380($fp)
	lw $t0, -224($fp)
	sw $t0, -1384($fp)
	lw $t0, -1380($fp)
	lw $t1, -1384($fp)
	add $t0, $t0, $t1
	sw $t0, -1388($fp)
	addi $sp, $sp, -4
	lw $t0, -1364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1388($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -1392($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -1396($fp)
	lw $t0, -200($fp)
	sw $t0, -1400($fp)
	li $t0, 0
	lw $t1, -1400($fp)
	sub $t0, $t0, $t1
	sw $t0, -1404($fp)
	li $t0, 30547
	sw $t0, -1408($fp)
	lw $t1, -1404($fp)
	lw $t2, -1408($fp)
	bne $t1, $t2, label827
	j label828
label827:
	li $t0, 1
	sw $t0, -1396($fp)
label828:
	li $t0, 0
	sw $t0, -1412($fp)
	lw $t0, -260($fp)
	sw $t0, -1416($fp)
	lw $t1, -1416($fp)
	li $t2, 0
	bne $t1, $t2, label829
	j label832
label832:
	lw $t0, -236($fp)
	sw $t0, -1420($fp)
	lw $t1, -1420($fp)
	li $t2, 0
	bne $t1, $t2, label829
	j label831
label831:
	lw $t0, -224($fp)
	sw $t0, -1424($fp)
	lw $t1, -1424($fp)
	li $t2, 0
	bne $t1, $t2, label829
	j label830
label829:
	li $t0, 1
	sw $t0, -1412($fp)
label830:
	addi $sp, $sp, -4
	lw $t0, -1340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1412($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1428($fp)
	addi $sp, $sp, 20
	lw $t0, -212($fp)
	sw $t0, -1432($fp)
	lw $t0, -1428($fp)
	lw $t1, -1432($fp)
	sub $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -1440($fp)
	lw $ra, -4($fp)
	lw $v0, -1440($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label819
label821:
	addi $t0, $fp, -12
	sw $t0, -1444($fp)
	li $t0, 0
	sw $t0, -1448($fp)
	li $t0, 4
	lw $t1, -1448($fp)
	mul $t0, $t0, $t1
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	lw $t1, -1444($fp)
	add $t0, $t0, $t1
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	lw $t1, 0($t0)
	sw $t1, -1460($fp)
	lw $t0, -1460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -1464($fp)
	li $t0, 1
	sw $t0, -1468($fp)
	li $t0, 4
	lw $t1, -1468($fp)
	mul $t0, $t0, $t1
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	lw $t1, -1464($fp)
	add $t0, $t0, $t1
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	lw $t1, 0($t0)
	sw $t1, -1480($fp)
	lw $t0, -1480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -116($fp)
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -128($fp)
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -140($fp)
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -152($fp)
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -164($fp)
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -176($fp)
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -212($fp)
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -224($fp)
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -236($fp)
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -248($fp)
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -260($fp)
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -272($fp)
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -296($fp)
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1552($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -1572($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -1592($fp)
	li $t0, 2
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
	lw $t0, -380($fp)
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -404($fp)
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1624($fp)
	li $t0, 0
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
	lw $t0, -1640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
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
	lw $t0, -1660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1664($fp)
	li $t0, 2
	sw $t0, -1668($fp)
	li $t0, 4
	lw $t1, -1668($fp)
	mul $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	lw $t1, -1664($fp)
	add $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	lw $t1, 0($t0)
	sw $t1, -1680($fp)
	lw $t0, -1680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1684($fp)
	li $t0, 3
	sw $t0, -1688($fp)
	li $t0, 4
	lw $t1, -1688($fp)
	mul $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	lw $t1, -1684($fp)
	add $t0, $t0, $t1
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	lw $t1, 0($t0)
	sw $t1, -1700($fp)
	lw $t0, -1700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1704($fp)
	li $t0, 4
	sw $t0, -1708($fp)
	li $t0, 4
	lw $t1, -1708($fp)
	mul $t0, $t0, $t1
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	lw $t1, -1704($fp)
	add $t0, $t0, $t1
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	lw $t1, 0($t0)
	sw $t1, -1720($fp)
	lw $t0, -1720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1724($fp)
	li $t0, 5
	sw $t0, -1728($fp)
	li $t0, 4
	lw $t1, -1728($fp)
	mul $t0, $t0, $t1
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	lw $t1, -1724($fp)
	add $t0, $t0, $t1
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	lw $t1, 0($t0)
	sw $t1, -1740($fp)
	lw $t0, -1740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1744($fp)
	li $t0, 0
	sw $t0, -1748($fp)
	li $t0, 43005
	sw $t0, -1752($fp)
	lw $t0, -128($fp)
	sw $t0, -1756($fp)
	lw $t0, -1752($fp)
	lw $t1, -1756($fp)
	mul $t0, $t0, $t1
	sw $t0, -1760($fp)
	lw $t1, -1760($fp)
	li $t2, 0
	bne $t1, $t2, label835
	j label837
label837:
	lw $t0, -236($fp)
	sw $t0, -1764($fp)
	lw $t1, -1764($fp)
	li $t2, 0
	bne $t1, $t2, label835
	j label836
label835:
	li $t0, 1
	sw $t0, -1748($fp)
label836:
	li $t0, 0
	sw $t0, -1768($fp)
	lw $t0, -164($fp)
	sw $t0, -1772($fp)
	lw $t0, -380($fp)
	sw $t0, -1776($fp)
	lw $t1, -1772($fp)
	lw $t2, -1776($fp)
	blt $t1, $t2, label838
	j label840
label840:
	lw $t0, -140($fp)
	sw $t0, -1780($fp)
	lw $t1, -1780($fp)
	li $t2, 0
	bne $t1, $t2, label838
	j label839
label838:
	li $t0, 1
	sw $t0, -1768($fp)
label839:
	lw $t0, -188($fp)
	sw $t0, -1784($fp)
	addi $sp, $sp, -4
	lw $t0, -1748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1784($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -1788($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -48
	sw $t0, -1792($fp)
	lw $t0, -116($fp)
	sw $t0, -1796($fp)
	li $t0, 4
	lw $t1, -1796($fp)
	mul $t0, $t0, $t1
	sw $t0, -1800($fp)
	lw $t0, -1800($fp)
	lw $t1, -1792($fp)
	add $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	lw $t1, 0($t0)
	sw $t1, -1808($fp)
	lw $t0, -296($fp)
	sw $t0, -1812($fp)
	lw $t0, -1808($fp)
	lw $t1, -1812($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1816($fp)
	lw $t0, -1788($fp)
	lw $t1, -1816($fp)
	add $t0, $t0, $t1
	sw $t0, -1820($fp)
	li $t0, 0
	sw $t0, -1824($fp)
	lw $t0, -140($fp)
	sw $t0, -1828($fp)
	lw $t0, -152($fp)
	sw $t0, -1832($fp)
	lw $t0, -1828($fp)
	lw $t1, -1832($fp)
	add $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t0, -176($fp)
	sw $t0, -1840($fp)
	lw $t1, -1836($fp)
	lw $t2, -1840($fp)
	bne $t1, $t2, label841
	j label842
label841:
	li $t0, 1
	sw $t0, -1824($fp)
label842:
	addi $sp, $sp, -4
	lw $t0, -1824($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1844($fp)
	addi $sp, $sp, 8
	lw $t1, -1820($fp)
	lw $t2, -1844($fp)
	beq $t1, $t2, label833
	j label834
label833:
	li $t0, 1
	sw $t0, -1744($fp)
label834:
	lw $ra, -4($fp)
	lw $v0, -1744($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1336
	li $t0, 12902
	sw $t0, -64($fp)
	addi $t0, $fp, -32
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
	li $t0, 7803
	sw $t0, -88($fp)
	addi $t0, $fp, -32
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
	li $t0, 21018
	sw $t0, -112($fp)
	addi $t0, $fp, -32
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
	li $t0, 37980
	sw $t0, -136($fp)
	addi $t0, $fp, -32
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
	li $t0, 3471
	sw $t0, -160($fp)
	addi $t0, $fp, -32
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
	li $t0, 49736
	sw $t0, -184($fp)
	addi $t0, $fp, -32
	sw $t0, -188($fp)
	li $t0, 5
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
	li $t0, 15127
	sw $t0, -208($fp)
	addi $t0, $fp, -32
	sw $t0, -212($fp)
	li $t0, 6
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
	li $t0, 1202
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	li $t0, 14755
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	li $t0, 53943
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	li $t0, 64591
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	li $t0, 57868
	sw $t0, -280($fp)
	addi $t0, $fp, -60
	sw $t0, -284($fp)
	li $t0, 0
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
	li $t0, 2233
	sw $t0, -304($fp)
	addi $t0, $fp, -60
	sw $t0, -308($fp)
	li $t0, 1
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
	li $t0, 34368
	sw $t0, -328($fp)
	addi $t0, $fp, -60
	sw $t0, -332($fp)
	li $t0, 2
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
	li $t0, 31887
	sw $t0, -352($fp)
	addi $t0, $fp, -60
	sw $t0, -356($fp)
	li $t0, 3
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
	li $t0, 30683
	sw $t0, -376($fp)
	addi $t0, $fp, -60
	sw $t0, -380($fp)
	li $t0, 4
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
	li $t0, 51049
	sw $t0, -400($fp)
	addi $t0, $fp, -60
	sw $t0, -404($fp)
	li $t0, 5
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
	li $t0, 44961
	sw $t0, -424($fp)
	addi $t0, $fp, -60
	sw $t0, -428($fp)
	li $t0, 6
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
	li $t0, 0
	sw $t0, -448($fp)
	li $t0, 0
	sw $t0, -452($fp)
	li $t0, 0
	sw $t0, -456($fp)
	lw $t0, -248($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -464($fp)
	li $t0, 0
	sw $t0, -468($fp)
	lw $t0, -248($fp)
	sw $t0, -472($fp)
	lw $t0, -248($fp)
	sw $t0, -476($fp)
	lw $t0, -472($fp)
	lw $t1, -476($fp)
	sub $t0, $t0, $t1
	sw $t0, -480($fp)
	li $t0, 28407
	sw $t0, -484($fp)
	lw $t1, -480($fp)
	lw $t2, -484($fp)
	beq $t1, $t2, label849
	j label850
label849:
	li $t0, 1
	sw $t0, -468($fp)
label850:
	lw $t0, 8($fp)
	sw $t0, -488($fp)
	addi $t0, $fp, -32
	sw $t0, -492($fp)
	lw $t0, 4($fp)
	sw $t0, -496($fp)
	li $t0, 4
	lw $t1, -496($fp)
	mul $t0, $t0, $t1
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	lw $t1, -492($fp)
	add $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	lw $t1, 0($t0)
	sw $t1, -508($fp)
	addi $sp, $sp, -4
	lw $t0, -464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -508($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -512($fp)
	addi $sp, $sp, 20
	lw $t1, -512($fp)
	li $t2, 0
	bne $t1, $t2, label848
	j label847
label847:
	li $t0, 1
	sw $t0, -456($fp)
label848:
	jal f9
	sw $v0, -516($fp)
	addi $sp, $sp, 4
	lw $t0, -456($fp)
	lw $t1, -516($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -520($fp)
	li $t0, 11443
	sw $t0, -524($fp)
	li $t0, 3267
	sw $t0, -528($fp)
	lw $t0, -524($fp)
	lw $t1, -528($fp)
	mul $t0, $t0, $t1
	sw $t0, -532($fp)
	li $t0, 1
	sw $t0, -536($fp)
	lw $t0, -532($fp)
	lw $t1, -536($fp)
	mul $t0, $t0, $t1
	sw $t0, -540($fp)
	lw $t1, -520($fp)
	lw $t2, -540($fp)
	ble $t1, $t2, label845
	j label846
label845:
	li $t0, 1
	sw $t0, -452($fp)
label846:
	addi $t0, $fp, -60
	sw $t0, -544($fp)
	li $t0, 0
	sw $t0, -548($fp)
	li $t0, 5219
	sw $t0, -552($fp)
	lw $t1, -552($fp)
	li $t2, 0
	bne $t1, $t2, label853
	j label852
label853:
	lw $t0, -236($fp)
	sw $t0, -556($fp)
	lw $t1, -556($fp)
	li $t2, 0
	bne $t1, $t2, label851
	j label852
label851:
	li $t0, 1
	sw $t0, -548($fp)
label852:
	li $t0, 4
	lw $t1, -548($fp)
	mul $t0, $t0, $t1
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	lw $t1, -544($fp)
	add $t0, $t0, $t1
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	lw $t1, 0($t0)
	sw $t1, -568($fp)
	lw $t1, -452($fp)
	lw $t2, -568($fp)
	bge $t1, $t2, label843
	j label844
label843:
	li $t0, 1
	sw $t0, -448($fp)
label844:
	addi $t0, $fp, -32
	sw $t0, -572($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -592($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -612($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -632($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -652($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -672($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -692($fp)
	li $t0, 6
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
	lw $t0, -236($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -248($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -260($fp)
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -272($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -728($fp)
	li $t0, 0
	sw $t0, -732($fp)
	li $t0, 4
	lw $t1, -732($fp)
	mul $t0, $t0, $t1
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	lw $t1, -728($fp)
	add $t0, $t0, $t1
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	lw $t1, 0($t0)
	sw $t1, -744($fp)
	lw $t0, -744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -748($fp)
	li $t0, 1
	sw $t0, -752($fp)
	li $t0, 4
	lw $t1, -752($fp)
	mul $t0, $t0, $t1
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	lw $t1, -748($fp)
	add $t0, $t0, $t1
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	lw $t1, 0($t0)
	sw $t1, -764($fp)
	lw $t0, -764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -768($fp)
	li $t0, 2
	sw $t0, -772($fp)
	li $t0, 4
	lw $t1, -772($fp)
	mul $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	lw $t1, -768($fp)
	add $t0, $t0, $t1
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	lw $t1, 0($t0)
	sw $t1, -784($fp)
	lw $t0, -784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -788($fp)
	li $t0, 3
	sw $t0, -792($fp)
	li $t0, 4
	lw $t1, -792($fp)
	mul $t0, $t0, $t1
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	lw $t1, -788($fp)
	add $t0, $t0, $t1
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	lw $t1, 0($t0)
	sw $t1, -804($fp)
	lw $t0, -804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -808($fp)
	li $t0, 4
	sw $t0, -812($fp)
	li $t0, 4
	lw $t1, -812($fp)
	mul $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	lw $t1, -808($fp)
	add $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	lw $t1, 0($t0)
	sw $t1, -824($fp)
	lw $t0, -824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -828($fp)
	li $t0, 5
	sw $t0, -832($fp)
	li $t0, 4
	lw $t1, -832($fp)
	mul $t0, $t0, $t1
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	lw $t1, -828($fp)
	add $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	lw $t1, 0($t0)
	sw $t1, -844($fp)
	lw $t0, -844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -848($fp)
	li $t0, 6
	sw $t0, -852($fp)
	li $t0, 4
	lw $t1, -852($fp)
	mul $t0, $t0, $t1
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	lw $t1, -848($fp)
	add $t0, $t0, $t1
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	lw $t1, 0($t0)
	sw $t1, -864($fp)
	lw $t0, -864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 45633
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -872($fp)
	li $t0, 0
	sw $t0, -876($fp)
	li $t0, 0
	sw $t0, -880($fp)
	lw $t0, 8($fp)
	sw $t0, -884($fp)
	lw $t0, 8($fp)
	sw $t0, -888($fp)
	lw $t1, -884($fp)
	lw $t2, -888($fp)
	bne $t1, $t2, label856
	j label857
label856:
	li $t0, 1
	sw $t0, -880($fp)
label857:
	li $t0, 0
	sw $t0, -892($fp)
	li $t0, 7644
	sw $t0, -896($fp)
	lw $t0, 8($fp)
	sw $t0, -900($fp)
	lw $t1, -896($fp)
	lw $t2, -900($fp)
	bgt $t1, $t2, label858
	j label859
label858:
	li $t0, 1
	sw $t0, -892($fp)
label859:
	addi $sp, $sp, -4
	lw $t0, -880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -892($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -904($fp)
	addi $sp, $sp, 12
	lw $t1, -904($fp)
	li $t2, 0
	bne $t1, $t2, label855
	j label854
label854:
	li $t0, 1
	sw $t0, -876($fp)
label855:
	lw $t0, -260($fp)
	sw $t0, -908($fp)
	lw $t0, 4($fp)
	sw $t0, -912($fp)
	lw $t0, -908($fp)
	lw $t1, -912($fp)
	mul $t0, $t0, $t1
	sw $t0, -916($fp)
	lw $t0, 8($fp)
	sw $t0, -920($fp)
	lw $t0, -916($fp)
	lw $t1, -920($fp)
	mul $t0, $t0, $t1
	sw $t0, -924($fp)
	li $t0, 0
	sw $t0, -928($fp)
	li $t0, 3045
	sw $t0, -932($fp)
	lw $t0, 8($fp)
	sw $t0, -936($fp)
	lw $t1, -932($fp)
	lw $t2, -936($fp)
	bge $t1, $t2, label862
	j label861
label862:
	li $t0, 38770
	sw $t0, -940($fp)
	lw $t1, -940($fp)
	li $t2, 0
	bne $t1, $t2, label860
	j label861
label860:
	li $t0, 1
	sw $t0, -928($fp)
label861:
	li $t0, 0
	sw $t0, -944($fp)
	li $t0, 42633
	sw $t0, -948($fp)
	lw $t1, -948($fp)
	li $t2, 0
	bne $t1, $t2, label866
	j label865
label866:
	lw $t0, 8($fp)
	sw $t0, -952($fp)
	lw $t1, -952($fp)
	li $t2, 0
	bne $t1, $t2, label863
	j label865
label865:
	lw $t0, 8($fp)
	sw $t0, -956($fp)
	lw $t1, -956($fp)
	li $t2, 0
	bne $t1, $t2, label863
	j label864
label863:
	li $t0, 1
	sw $t0, -944($fp)
label864:
	addi $sp, $sp, -4
	lw $t0, -872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -944($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -960($fp)
	addi $sp, $sp, 24
	li $t0, 33318
	sw $t0, -964($fp)
	li $t0, 0
	lw $t1, -964($fp)
	sub $t0, $t0, $t1
	sw $t0, -968($fp)
	lw $t0, -960($fp)
	lw $t1, -968($fp)
	mul $t0, $t0, $t1
	sw $t0, -972($fp)
	li $t0, 50928
	sw $t0, -976($fp)
	lw $t0, -972($fp)
	lw $t1, -976($fp)
	add $t0, $t0, $t1
	sw $t0, -980($fp)
	li $t0, 23102
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -988($fp)
	addi $sp, $sp, -4
	lw $t0, -988($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -992($fp)
	addi $sp, $sp, 8
	li $t0, 46220
	sw $t0, -996($fp)
	li $t0, 0
	lw $t1, -996($fp)
	sub $t0, $t0, $t1
	sw $t0, -1000($fp)
	lw $t0, -992($fp)
	lw $t1, -1000($fp)
	mul $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t0, -980($fp)
	lw $t1, -1004($fp)
	sub $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $ra, -4($fp)
	lw $v0, -1008($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -32
	sw $t0, -1012($fp)
	li $t0, 0
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
	lw $t0, -1028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1032($fp)
	li $t0, 1
	sw $t0, -1036($fp)
	li $t0, 4
	lw $t1, -1036($fp)
	mul $t0, $t0, $t1
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	lw $t1, -1032($fp)
	add $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	lw $t1, 0($t0)
	sw $t1, -1048($fp)
	lw $t0, -1048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1052($fp)
	li $t0, 2
	sw $t0, -1056($fp)
	li $t0, 4
	lw $t1, -1056($fp)
	mul $t0, $t0, $t1
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	lw $t1, -1052($fp)
	add $t0, $t0, $t1
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	lw $t1, 0($t0)
	sw $t1, -1068($fp)
	lw $t0, -1068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1072($fp)
	li $t0, 3
	sw $t0, -1076($fp)
	li $t0, 4
	lw $t1, -1076($fp)
	mul $t0, $t0, $t1
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	lw $t1, -1072($fp)
	add $t0, $t0, $t1
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	lw $t1, 0($t0)
	sw $t1, -1088($fp)
	lw $t0, -1088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1092($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -1112($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -1132($fp)
	li $t0, 6
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
	lw $t0, -236($fp)
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -248($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -260($fp)
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -272($fp)
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1168($fp)
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	addi $t0, $fp, -60
	sw $t0, -1228($fp)
	li $t0, 3
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
	addi $t0, $fp, -60
	sw $t0, -1248($fp)
	li $t0, 4
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
	addi $t0, $fp, -60
	sw $t0, -1268($fp)
	li $t0, 5
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
	addi $t0, $fp, -60
	sw $t0, -1288($fp)
	li $t0, 6
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
	li $t0, 58732
	sw $t0, -1308($fp)
	li $t0, 0
	sw $t0, -1312($fp)
	addi $t0, $fp, -32
	sw $t0, -1316($fp)
	lw $t0, 8($fp)
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
	lw $t1, -1332($fp)
	li $t2, 0
	bne $t1, $t2, label868
	j label867
label867:
	li $t0, 1
	sw $t0, -1312($fp)
label868:
	lw $t0, -1308($fp)
	lw $t1, -1312($fp)
	mul $t0, $t0, $t1
	sw $t0, -1336($fp)
	li $t0, 0
	lw $t1, -1336($fp)
	sub $t0, $t0, $t1
	sw $t0, -1340($fp)
	lw $ra, -4($fp)
	lw $v0, -1340($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f15:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2088
	li $t0, 44120
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	li $t0, 18664
	sw $t0, -88($fp)
	addi $t0, $fp, -24
	sw $t0, -92($fp)
	li $t0, 0
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
	li $t0, 62203
	sw $t0, -112($fp)
	addi $t0, $fp, -24
	sw $t0, -116($fp)
	li $t0, 1
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
	li $t0, 28320
	sw $t0, -136($fp)
	addi $t0, $fp, -24
	sw $t0, -140($fp)
	li $t0, 2
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
	li $t0, 33792
	sw $t0, -160($fp)
	addi $t0, $fp, -24
	sw $t0, -164($fp)
	li $t0, 3
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
	li $t0, 63406
	sw $t0, -184($fp)
	addi $t0, $fp, -24
	sw $t0, -188($fp)
	li $t0, 4
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
	li $t0, 43075
	sw $t0, -208($fp)
	addi $t0, $fp, -44
	sw $t0, -212($fp)
	li $t0, 0
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
	li $t0, 22199
	sw $t0, -232($fp)
	addi $t0, $fp, -44
	sw $t0, -236($fp)
	li $t0, 1
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
	li $t0, 62461
	sw $t0, -256($fp)
	addi $t0, $fp, -44
	sw $t0, -260($fp)
	li $t0, 2
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
	li $t0, 35407
	sw $t0, -280($fp)
	addi $t0, $fp, -44
	sw $t0, -284($fp)
	li $t0, 3
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
	li $t0, 24432
	sw $t0, -304($fp)
	addi $t0, $fp, -44
	sw $t0, -308($fp)
	li $t0, 4
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
	li $t0, 31293
	sw $t0, -328($fp)
	addi $t0, $fp, -72
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
	li $t0, 1758
	sw $t0, -352($fp)
	addi $t0, $fp, -72
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
	li $t0, 55115
	sw $t0, -376($fp)
	addi $t0, $fp, -72
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
	li $t0, 16806
	sw $t0, -400($fp)
	addi $t0, $fp, -72
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
	li $t0, 46719
	sw $t0, -424($fp)
	addi $t0, $fp, -72
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
	li $t0, 17987
	sw $t0, -448($fp)
	addi $t0, $fp, -72
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
	li $t0, 28249
	sw $t0, -472($fp)
	addi $t0, $fp, -72
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
	li $t0, 49987
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	lw $t0, -80($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -512($fp)
	li $t0, 0
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
	lw $t0, -528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -532($fp)
	li $t0, 1
	sw $t0, -536($fp)
	li $t0, 4
	lw $t1, -536($fp)
	mul $t0, $t0, $t1
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	lw $t1, -532($fp)
	add $t0, $t0, $t1
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	lw $t1, 0($t0)
	sw $t1, -548($fp)
	lw $t0, -548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -552($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -572($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -592($fp)
	li $t0, 4
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
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -692($fp)
	li $t0, 4
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
	addi $t0, $fp, -72
	sw $t0, -712($fp)
	li $t0, 0
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
	addi $t0, $fp, -72
	sw $t0, -732($fp)
	li $t0, 1
	sw $t0, -736($fp)
	li $t0, 4
	lw $t1, -736($fp)
	mul $t0, $t0, $t1
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	lw $t1, -732($fp)
	add $t0, $t0, $t1
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	lw $t1, 0($t0)
	sw $t1, -748($fp)
	lw $t0, -748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -752($fp)
	li $t0, 2
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
	lw $t0, -768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -772($fp)
	li $t0, 3
	sw $t0, -776($fp)
	li $t0, 4
	lw $t1, -776($fp)
	mul $t0, $t0, $t1
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	lw $t1, -772($fp)
	add $t0, $t0, $t1
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	lw $t1, 0($t0)
	sw $t1, -788($fp)
	lw $t0, -788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -792($fp)
	li $t0, 4
	sw $t0, -796($fp)
	li $t0, 4
	lw $t1, -796($fp)
	mul $t0, $t0, $t1
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	lw $t1, -792($fp)
	add $t0, $t0, $t1
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	lw $t1, 0($t0)
	sw $t1, -808($fp)
	lw $t0, -808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -812($fp)
	li $t0, 5
	sw $t0, -816($fp)
	li $t0, 4
	lw $t1, -816($fp)
	mul $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	lw $t1, -812($fp)
	add $t0, $t0, $t1
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	lw $t1, 0($t0)
	sw $t1, -828($fp)
	lw $t0, -828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -832($fp)
	li $t0, 6
	sw $t0, -836($fp)
	li $t0, 4
	lw $t1, -836($fp)
	mul $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	lw $t1, -832($fp)
	add $t0, $t0, $t1
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	lw $t1, 0($t0)
	sw $t1, -848($fp)
	lw $t0, -848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -856($fp)
	addi $t0, $fp, -72
	sw $t0, -860($fp)
	addi $t0, $fp, -44
	sw $t0, -864($fp)
	li $t0, 3
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
	li $t0, 4
	lw $t1, -880($fp)
	mul $t0, $t0, $t1
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	lw $t1, -860($fp)
	add $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	lw $t1, 0($t0)
	sw $t1, -892($fp)
	lw $t0, -500($fp)
	sw $t0, -896($fp)
	li $t0, 27084
	sw $t0, -900($fp)
	lw $t0, -896($fp)
	lw $t1, -900($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -904($fp)
	li $t0, 0
	lw $t1, -904($fp)
	sub $t0, $t0, $t1
	sw $t0, -908($fp)
	lw $t1, -892($fp)
	lw $t2, -908($fp)
	beq $t1, $t2, label869
	j label871
label871:
	li $t0, 0
	sw $t0, -912($fp)
	li $t0, 16796
	sw $t0, -916($fp)
	lw $t1, -916($fp)
	li $t2, 0
	bne $t1, $t2, label873
	j label872
label872:
	li $t0, 1
	sw $t0, -912($fp)
label873:
	addi $t0, $fp, -24
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
	lw $t0, -912($fp)
	lw $t1, -936($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -940($fp)
	lw $t1, -940($fp)
	li $t2, 0
	bne $t1, $t2, label869
	j label870
label869:
	li $t0, 1
	sw $t0, -856($fp)
label870:
	lw $ra, -4($fp)
	lw $v0, -856($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -80($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
	sw $t0, -1008($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -1028($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -1048($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -1068($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -1088($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -1108($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -1128($fp)
	li $t0, 4
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
	addi $t0, $fp, -72
	sw $t0, -1148($fp)
	li $t0, 0
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
	addi $t0, $fp, -72
	sw $t0, -1168($fp)
	li $t0, 1
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
	addi $t0, $fp, -72
	sw $t0, -1188($fp)
	li $t0, 2
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
	addi $t0, $fp, -72
	sw $t0, -1208($fp)
	li $t0, 3
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
	addi $t0, $fp, -72
	sw $t0, -1228($fp)
	li $t0, 4
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
	addi $t0, $fp, -72
	sw $t0, -1248($fp)
	li $t0, 5
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
	addi $t0, $fp, -72
	sw $t0, -1268($fp)
	li $t0, 6
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
	lw $t0, -500($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1292($fp)
	jal f15
	sw $v0, -1296($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1296($fp)
	sub $t0, $t0, $t1
	sw $t0, -1300($fp)
	lw $t1, -1300($fp)
	li $t2, 0
	bne $t1, $t2, label875
	j label874
label874:
	li $t0, 1
	sw $t0, -1292($fp)
label875:
	lw $ra, -4($fp)
	lw $v0, -1292($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1304($fp)
	lw $t0, -500($fp)
	sw $t0, -1308($fp)
	addi $t0, $fp, -72
	sw $t0, -1312($fp)
	li $t0, 0
	sw $t0, -1316($fp)
	lw $t0, -500($fp)
	sw $t0, -1320($fp)
	lw $t0, -500($fp)
	sw $t0, -1324($fp)
	lw $t1, -1320($fp)
	lw $t2, -1324($fp)
	bne $t1, $t2, label878
	j label879
label878:
	li $t0, 1
	sw $t0, -1316($fp)
label879:
	li $t0, 4
	lw $t1, -1316($fp)
	mul $t0, $t0, $t1
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	lw $t1, -1312($fp)
	add $t0, $t0, $t1
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	lw $t1, 0($t0)
	sw $t1, -1336($fp)
	lw $t1, -1308($fp)
	lw $t2, -1336($fp)
	beq $t1, $t2, label876
	j label877
label876:
	li $t0, 1
	sw $t0, -1304($fp)
label877:
label880:
	li $t0, 62429
	sw $t0, -1340($fp)
	lw $t1, -1340($fp)
	li $t2, 0
	bne $t1, $t2, label881
	j label882
label881:
	li $t0, 0
	sw $t0, -1344($fp)
	li $t0, 40021
	sw $t0, -1348($fp)
	lw $t1, -1348($fp)
	li $t2, 0
	bne $t1, $t2, label884
	j label883
label883:
	li $t0, 1
	sw $t0, -1344($fp)
label884:
	lw $t0, -1344($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -1352($fp)
	lw $ra, -4($fp)
	lw $v0, -1352($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label880
label882:
	lw $t0, -80($fp)
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1360($fp)
	li $t0, 0
	sw $t0, -1364($fp)
	li $t0, 4
	lw $t1, -1364($fp)
	mul $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	lw $t1, -1360($fp)
	add $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	lw $t1, 0($t0)
	sw $t1, -1376($fp)
	lw $t0, -1376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1380($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -1400($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -1420($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -1440($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -1460($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -1480($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -1500($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -1520($fp)
	li $t0, 3
	sw $t0, -1524($fp)
	li $t0, 4
	lw $t1, -1524($fp)
	mul $t0, $t0, $t1
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	lw $t1, -1520($fp)
	add $t0, $t0, $t1
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	lw $t1, 0($t0)
	sw $t1, -1536($fp)
	lw $t0, -1536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1540($fp)
	li $t0, 4
	sw $t0, -1544($fp)
	li $t0, 4
	lw $t1, -1544($fp)
	mul $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	lw $t1, -1540($fp)
	add $t0, $t0, $t1
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	lw $t1, 0($t0)
	sw $t1, -1556($fp)
	lw $t0, -1556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1560($fp)
	li $t0, 0
	sw $t0, -1564($fp)
	li $t0, 4
	lw $t1, -1564($fp)
	mul $t0, $t0, $t1
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	lw $t1, -1560($fp)
	add $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	lw $t1, 0($t0)
	sw $t1, -1576($fp)
	lw $t0, -1576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1580($fp)
	li $t0, 1
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
	lw $t0, -1596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1600($fp)
	li $t0, 2
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
	addi $t0, $fp, -72
	sw $t0, -1620($fp)
	li $t0, 3
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
	addi $t0, $fp, -72
	sw $t0, -1640($fp)
	li $t0, 4
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
	addi $t0, $fp, -72
	sw $t0, -1660($fp)
	li $t0, 5
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
	addi $t0, $fp, -72
	sw $t0, -1680($fp)
	li $t0, 6
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
	lw $t0, -500($fp)
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 20121
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -1708($fp)
	lw $ra, -4($fp)
	lw $v0, -1708($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -80($fp)
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
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
	addi $t0, $fp, -44
	sw $t0, -1816($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -1836($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -1856($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -1876($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -1896($fp)
	li $t0, 4
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
	addi $t0, $fp, -72
	sw $t0, -1916($fp)
	li $t0, 0
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
	addi $t0, $fp, -72
	sw $t0, -1936($fp)
	li $t0, 1
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
	addi $t0, $fp, -72
	sw $t0, -1956($fp)
	li $t0, 2
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
	addi $t0, $fp, -72
	sw $t0, -1976($fp)
	li $t0, 3
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
	addi $t0, $fp, -72
	sw $t0, -1996($fp)
	li $t0, 4
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
	addi $t0, $fp, -72
	sw $t0, -2016($fp)
	li $t0, 5
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
	addi $t0, $fp, -72
	sw $t0, -2036($fp)
	li $t0, 6
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
	lw $t0, -500($fp)
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2060($fp)
	lw $t0, -80($fp)
	sw $t0, -2064($fp)
	lw $t1, -2064($fp)
	li $t2, 0
	bne $t1, $t2, label885
	j label887
label887:
	addi $t0, $fp, -44
	sw $t0, -2068($fp)
	li $t0, 0
	sw $t0, -2072($fp)
	lw $t0, -500($fp)
	sw $t0, -2076($fp)
	li $t0, 19995
	sw $t0, -2080($fp)
	lw $t1, -2076($fp)
	lw $t2, -2080($fp)
	bne $t1, $t2, label888
	j label889
label888:
	li $t0, 1
	sw $t0, -2072($fp)
label889:
	li $t0, 4
	lw $t1, -2072($fp)
	mul $t0, $t0, $t1
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	lw $t1, -2068($fp)
	add $t0, $t0, $t1
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	lw $t1, 0($t0)
	sw $t1, -2092($fp)
	lw $t1, -2092($fp)
	li $t2, 0
	bne $t1, $t2, label885
	j label886
label885:
	li $t0, 1
	sw $t0, -2060($fp)
label886:
	lw $ra, -4($fp)
	lw $v0, -2060($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f16:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -76
	li $t0, 20705
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 13317
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 0
	sw $t0, -32($fp)
	li $t0, 26899
	sw $t0, -36($fp)
	lw $t1, -36($fp)
	li $t2, 0
	bne $t1, $t2, label891
	j label890
label890:
	li $t0, 1
	sw $t0, -32($fp)
label891:
	li $t0, 0
	sw $t0, -40($fp)
	li $t0, 0
	sw $t0, -44($fp)
	li $t0, 39370
	sw $t0, -48($fp)
	lw $t0, -12($fp)
	sw $t0, -52($fp)
	lw $t1, -48($fp)
	lw $t2, -52($fp)
	blt $t1, $t2, label894
	j label895
label894:
	li $t0, 1
	sw $t0, -44($fp)
label895:
	li $t0, 9985
	sw $t0, -56($fp)
	lw $t1, -44($fp)
	lw $t2, -56($fp)
	blt $t1, $t2, label892
	j label893
label892:
	li $t0, 1
	sw $t0, -40($fp)
label893:
	li $t0, 64115
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -64($fp)
	addi $sp, $sp, -4
	lw $t0, -32($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -40($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -64($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -68($fp)
	addi $sp, $sp, 16
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
	li $t0, 7626
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
