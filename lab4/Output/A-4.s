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
	addi $sp, $sp, -596
	li $t0, 44827
	sw $t0, -44($fp)
	addi $t0, $fp, -20
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
	li $t0, 11812
	sw $t0, -68($fp)
	addi $t0, $fp, -20
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
	li $t0, 2367
	sw $t0, -92($fp)
	addi $t0, $fp, -20
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
	li $t0, 54316
	sw $t0, -116($fp)
	addi $t0, $fp, -20
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
	li $t0, 2539
	sw $t0, -140($fp)
	addi $t0, $fp, -40
	sw $t0, -144($fp)
	li $t0, 0
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
	li $t0, 6618
	sw $t0, -164($fp)
	addi $t0, $fp, -40
	sw $t0, -168($fp)
	li $t0, 1
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
	li $t0, 57369
	sw $t0, -188($fp)
	addi $t0, $fp, -40
	sw $t0, -192($fp)
	li $t0, 2
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
	li $t0, 33135
	sw $t0, -212($fp)
	addi $t0, $fp, -40
	sw $t0, -216($fp)
	li $t0, 3
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
	li $t0, 13860
	sw $t0, -236($fp)
	addi $t0, $fp, -40
	sw $t0, -240($fp)
	li $t0, 4
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
	addi $t0, $fp, -20
	sw $t0, -260($fp)
	addi $t0, $fp, -20
	sw $t0, -264($fp)
	li $t0, 2
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
	li $t0, 0
	lw $t1, -280($fp)
	sub $t0, $t0, $t1
	sw $t0, -284($fp)
	li $t0, 4
	lw $t1, -284($fp)
	mul $t0, $t0, $t1
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	lw $t1, -260($fp)
	add $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	lw $t1, 0($t0)
	sw $t1, -296($fp)
	addi $t0, $fp, -40
	sw $t0, -300($fp)
	li $t0, 0
	sw $t0, -304($fp)
	li $t0, 9455
	sw $t0, -308($fp)
	lw $t1, -308($fp)
	li $t2, 0
	bne $t1, $t2, label123
	j label122
label123:
	li $t0, 25220
	sw $t0, -312($fp)
	lw $t1, -312($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -304($fp)
label122:
	li $t0, 4
	lw $t1, -304($fp)
	mul $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	lw $t1, -300($fp)
	add $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	lw $t1, 0($t0)
	sw $t1, -324($fp)
	lw $t0, -296($fp)
	lw $t1, -324($fp)
	mul $t0, $t0, $t1
	sw $t0, -328($fp)
	addi $t0, $fp, -20
	sw $t0, -332($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
	sw $t0, -352($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -372($fp)
	li $t0, 2
	sw $t0, -376($fp)
	li $t0, 4
	lw $t1, -376($fp)
	mul $t0, $t0, $t1
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	lw $t1, -372($fp)
	add $t0, $t0, $t1
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	lw $t1, 0($t0)
	sw $t1, -388($fp)
	lw $t0, -388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -392($fp)
	li $t0, 3
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
	lw $t0, -408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -412($fp)
	li $t0, 0
	sw $t0, -416($fp)
	li $t0, 4
	lw $t1, -416($fp)
	mul $t0, $t0, $t1
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	lw $t1, -412($fp)
	add $t0, $t0, $t1
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	lw $t1, 0($t0)
	sw $t1, -428($fp)
	lw $t0, -428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -432($fp)
	li $t0, 1
	sw $t0, -436($fp)
	li $t0, 4
	lw $t1, -436($fp)
	mul $t0, $t0, $t1
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	lw $t1, -432($fp)
	add $t0, $t0, $t1
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	lw $t1, 0($t0)
	sw $t1, -448($fp)
	lw $t0, -448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -452($fp)
	li $t0, 2
	sw $t0, -456($fp)
	li $t0, 4
	lw $t1, -456($fp)
	mul $t0, $t0, $t1
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	lw $t1, -452($fp)
	add $t0, $t0, $t1
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	lw $t1, 0($t0)
	sw $t1, -468($fp)
	lw $t0, -468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -472($fp)
	li $t0, 3
	sw $t0, -476($fp)
	li $t0, 4
	lw $t1, -476($fp)
	mul $t0, $t0, $t1
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	lw $t1, -472($fp)
	add $t0, $t0, $t1
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	lw $t1, 0($t0)
	sw $t1, -488($fp)
	lw $t0, -488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -492($fp)
	li $t0, 4
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
	lw $t0, -508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -512($fp)
	lw $t0, 8($fp)
	sw $t0, -516($fp)
	lw $t0, 8($fp)
	sw $t0, -520($fp)
	lw $t0, -516($fp)
	lw $t1, -520($fp)
	mul $t0, $t0, $t1
	sw $t0, -524($fp)
	li $t0, 24256
	sw $t0, -528($fp)
	lw $t0, -524($fp)
	lw $t1, -528($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -532($fp)
	li $t0, 0
	sw $t0, -536($fp)
	li $t0, 57231
	sw $t0, -540($fp)
	lw $t1, -540($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label127
label127:
	li $t0, 1
	sw $t0, -536($fp)
label128:
	lw $t0, -532($fp)
	lw $t1, -536($fp)
	mul $t0, $t0, $t1
	sw $t0, -544($fp)
	addi $t0, $fp, -20
	sw $t0, -548($fp)
	li $t0, 2
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
	lw $t0, 8($fp)
	sw $t0, -568($fp)
	lw $t0, -564($fp)
	lw $t1, -568($fp)
	add $t0, $t0, $t1
	sw $t0, -572($fp)
	lw $t1, -544($fp)
	lw $t2, -572($fp)
	beq $t1, $t2, label126
	j label125
label126:
	lw $t0, 8($fp)
	sw $t0, -576($fp)
	li $t0, 48894
	sw $t0, -580($fp)
	lw $t0, -576($fp)
	lw $t1, -580($fp)
	sub $t0, $t0, $t1
	sw $t0, -584($fp)
	lw $t0, 4($fp)
	sw $t0, -588($fp)
	lw $t0, -584($fp)
	lw $t1, -588($fp)
	add $t0, $t0, $t1
	sw $t0, -592($fp)
	lw $t0, 4($fp)
	sw $t0, -596($fp)
	lw $t0, -592($fp)
	lw $t1, -596($fp)
	add $t0, $t0, $t1
	sw $t0, -600($fp)
	lw $t1, -600($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label125
label124:
	li $t0, 1
	sw $t0, -512($fp)
label125:
	lw $ra, -4($fp)
	lw $v0, -512($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1356
	li $t0, 32420
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
	li $t0, 64081
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
	li $t0, 29103
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
	li $t0, 19235
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
	li $t0, 22658
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
	li $t0, 26230
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
	li $t0, 59839
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
	li $t0, 4120
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	li $t0, 42140
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	li $t0, 20874
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	li $t0, 0
	sw $t0, -240($fp)
	li $t0, 0
	sw $t0, -244($fp)
	lw $t0, -232($fp)
	sw $t0, -248($fp)
	lw $t1, -248($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label134
label134:
	li $t0, 1
	sw $t0, -244($fp)
label135:
	li $t0, 0
	lw $t1, -244($fp)
	sub $t0, $t0, $t1
	sw $t0, -252($fp)
	li $t0, 0
	lw $t1, -252($fp)
	sub $t0, $t0, $t1
	sw $t0, -256($fp)
	li $t0, 41264
	sw $t0, -260($fp)
	lw $t0, -220($fp)
	sw $t0, -264($fp)
	lw $t0, -260($fp)
	lw $t1, -264($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -268($fp)
	li $t0, 44364
	sw $t0, -272($fp)
	lw $t0, -268($fp)
	lw $t1, -272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -276($fp)
	lw $t1, -256($fp)
	lw $t2, -276($fp)
	ble $t1, $t2, label132
	j label133
label132:
	li $t0, 1
	sw $t0, -240($fp)
label133:
	li $t0, 0
	sw $t0, -280($fp)
	li $t0, 24666
	sw $t0, -284($fp)
	lw $t1, -284($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label136
label136:
	li $t0, 1
	sw $t0, -280($fp)
label137:
	lw $t1, -240($fp)
	lw $t2, -280($fp)
	ble $t1, $t2, label129
	j label130
label129:
	li $t0, 20555
	sw $t0, -332($fp)
	addi $t0, $fp, -288
	sw $t0, -336($fp)
	li $t0, 0
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
	li $t0, 56176
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	li $t0, 27033
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	li $t0, 9335
	sw $t0, -380($fp)
	addi $t0, $fp, -328
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
	li $t0, 58715
	sw $t0, -404($fp)
	addi $t0, $fp, -328
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
	li $t0, 33652
	sw $t0, -428($fp)
	addi $t0, $fp, -328
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
	li $t0, 1169
	sw $t0, -452($fp)
	addi $t0, $fp, -328
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
	li $t0, 26314
	sw $t0, -476($fp)
	addi $t0, $fp, -328
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
	li $t0, 47512
	sw $t0, -500($fp)
	addi $t0, $fp, -328
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
	li $t0, 11748
	sw $t0, -524($fp)
	addi $t0, $fp, -328
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
	li $t0, 42256
	sw $t0, -548($fp)
	addi $t0, $fp, -328
	sw $t0, -552($fp)
	li $t0, 7
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
	li $t0, 56967
	sw $t0, -572($fp)
	addi $t0, $fp, -328
	sw $t0, -576($fp)
	li $t0, 8
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
	li $t0, 36969
	sw $t0, -596($fp)
	addi $t0, $fp, -328
	sw $t0, -600($fp)
	li $t0, 9
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
	li $t0, 976
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	li $t0, 48662
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	addi $t0, $fp, -32
	sw $t0, -644($fp)
	li $t0, 0
	sw $t0, -648($fp)
	lw $t0, -232($fp)
	sw $t0, -652($fp)
	li $t0, 0
	lw $t1, -652($fp)
	sub $t0, $t0, $t1
	sw $t0, -656($fp)
	li $t0, 62345
	sw $t0, -660($fp)
	lw $t1, -656($fp)
	lw $t2, -660($fp)
	bne $t1, $t2, label138
	j label139
label138:
	li $t0, 1
	sw $t0, -648($fp)
label139:
	li $t0, 4
	lw $t1, -648($fp)
	mul $t0, $t0, $t1
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	lw $t1, -644($fp)
	add $t0, $t0, $t1
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	lw $t1, 0($t0)
	sw $t1, -672($fp)
	li $t0, 0
	sw $t0, -676($fp)
	li $t0, 0
	sw $t0, -680($fp)
	li $t0, 48465
	sw $t0, -684($fp)
	lw $t1, -684($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label142
label142:
	li $t0, 1
	sw $t0, -680($fp)
label143:
	lw $t0, 8($fp)
	sw $t0, -688($fp)
	lw $t1, -680($fp)
	lw $t2, -688($fp)
	bgt $t1, $t2, label140
	j label141
label140:
	li $t0, 1
	sw $t0, -676($fp)
label141:
	lw $t0, 8($fp)
	sw $t0, -692($fp)
	li $t0, 0
	lw $t1, -692($fp)
	sub $t0, $t0, $t1
	sw $t0, -696($fp)
	li $t0, 61123
	sw $t0, -700($fp)
	lw $t0, -696($fp)
	lw $t1, -700($fp)
	sub $t0, $t0, $t1
	sw $t0, -704($fp)
	li $t0, 0
	sw $t0, -708($fp)
	lw $t0, -624($fp)
	sw $t0, -712($fp)
	lw $t0, -636($fp)
	sw $t0, -716($fp)
	lw $t1, -712($fp)
	lw $t2, -716($fp)
	beq $t1, $t2, label144
	j label146
label146:
	li $t0, 37756
	sw $t0, -720($fp)
	lw $t1, -720($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label145
label144:
	li $t0, 1
	sw $t0, -708($fp)
label145:
	li $t0, 39210
	sw $t0, -724($fp)
	li $t0, 32020
	sw $t0, -728($fp)
	lw $t0, -724($fp)
	lw $t1, -728($fp)
	mul $t0, $t0, $t1
	sw $t0, -732($fp)
	li $t0, 29229
	sw $t0, -736($fp)
	lw $t0, -732($fp)
	lw $t1, -736($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -740($fp)
	lw $t0, -636($fp)
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -748($fp)
	addi $sp, $sp, -4
	lw $t0, -676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -748($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -752($fp)
	addi $sp, $sp, 24
	lw $t0, -672($fp)
	lw $t1, -752($fp)
	add $t0, $t0, $t1
	sw $t0, -756($fp)
	li $t0, 60414
	sw $t0, -760($fp)
	li $t0, 0
	sw $t0, -764($fp)
	li $t0, 0
	sw $t0, -768($fp)
	lw $t0, 12($fp)
	sw $t0, -772($fp)
	li $t0, 64534
	sw $t0, -776($fp)
	lw $t1, -772($fp)
	lw $t2, -776($fp)
	blt $t1, $t2, label151
	j label150
label151:
	lw $t0, -232($fp)
	sw $t0, -780($fp)
	lw $t1, -780($fp)
	li $t2, 0
	bne $t1, $t2, label149
	j label150
label149:
	li $t0, 1
	sw $t0, -768($fp)
label150:
	li $t0, 0
	sw $t0, -784($fp)
	li $t0, 42768
	sw $t0, -788($fp)
	lw $t0, -372($fp)
	sw $t0, -792($fp)
	lw $t0, -788($fp)
	lw $t1, -792($fp)
	sub $t0, $t0, $t1
	sw $t0, -796($fp)
	lw $t1, -796($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label153
label154:
	lw $t0, -624($fp)
	sw $t0, -800($fp)
	lw $t1, -800($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label153
label152:
	li $t0, 1
	sw $t0, -784($fp)
label153:
	li $t0, 0
	sw $t0, -804($fp)
	lw $t0, 4($fp)
	sw $t0, -808($fp)
	lw $t1, -808($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label156
label157:
	li $t0, 21818
	sw $t0, -812($fp)
	lw $t1, -812($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label156
label155:
	li $t0, 1
	sw $t0, -804($fp)
label156:
	addi $sp, $sp, -4
	lw $t0, -768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -804($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -816($fp)
	addi $sp, $sp, 16
	lw $t1, -816($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label147
label147:
	li $t0, 1
	sw $t0, -764($fp)
label148:
	lw $t0, -760($fp)
	lw $t1, -764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -820($fp)
	li $t0, 0
	lw $t1, -820($fp)
	sub $t0, $t0, $t1
	sw $t0, -824($fp)
	li $t0, 0
	sw $t0, -828($fp)
	addi $t0, $fp, -288
	sw $t0, -832($fp)
	lw $t0, -636($fp)
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
	lw $t1, -848($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label158
label158:
	li $t0, 1
	sw $t0, -828($fp)
label159:
	li $t0, 0
	sw $t0, -852($fp)
	lw $t0, -360($fp)
	sw $t0, -856($fp)
	li $t0, 42786
	sw $t0, -860($fp)
	lw $t1, -856($fp)
	lw $t2, -860($fp)
	bge $t1, $t2, label160
	j label161
label160:
	li $t0, 1
	sw $t0, -852($fp)
label161:
	li $t0, 0
	sw $t0, -864($fp)
	lw $t0, -624($fp)
	sw $t0, -868($fp)
	li $t0, 0
	lw $t1, -868($fp)
	sub $t0, $t0, $t1
	sw $t0, -872($fp)
	lw $t0, -220($fp)
	sw $t0, -876($fp)
	lw $t1, -872($fp)
	lw $t2, -876($fp)
	bne $t1, $t2, label162
	j label163
label162:
	li $t0, 1
	sw $t0, -864($fp)
label163:
	addi $t0, $fp, -288
	sw $t0, -880($fp)
	lw $t0, -220($fp)
	sw $t0, -884($fp)
	li $t0, 4
	lw $t1, -884($fp)
	mul $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	lw $t1, -880($fp)
	add $t0, $t0, $t1
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	lw $t1, 0($t0)
	sw $t1, -896($fp)
	lw $t0, -232($fp)
	sw $t0, -900($fp)
	lw $t0, -896($fp)
	lw $t1, -900($fp)
	add $t0, $t0, $t1
	sw $t0, -904($fp)
	li $t0, 40262
	sw $t0, -908($fp)
	addi $t0, $fp, -32
	sw $t0, -912($fp)
	li $t0, 3
	sw $t0, -916($fp)
	li $t0, 4
	lw $t1, -916($fp)
	mul $t0, $t0, $t1
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	lw $t1, -912($fp)
	add $t0, $t0, $t1
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	lw $t1, 0($t0)
	sw $t1, -928($fp)
	li $t0, 0
	sw $t0, -932($fp)
	lw $t0, -636($fp)
	sw $t0, -936($fp)
	lw $t0, -372($fp)
	sw $t0, -940($fp)
	lw $t1, -936($fp)
	lw $t2, -940($fp)
	bne $t1, $t2, label166
	j label165
label166:
	lw $t0, -624($fp)
	sw $t0, -944($fp)
	lw $t1, -944($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label165
label164:
	li $t0, 1
	sw $t0, -932($fp)
label165:
	addi $sp, $sp, -4
	lw $t0, -864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -932($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -948($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -948($fp)
	sub $t0, $t0, $t1
	sw $t0, -952($fp)
	addi $sp, $sp, -4
	lw $t0, -828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -952($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -956($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -288
	sw $t0, -960($fp)
	lw $t0, 8($fp)
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
	li $t0, 0
	lw $t1, -976($fp)
	sub $t0, $t0, $t1
	sw $t0, -980($fp)
	li $t0, 0
	sw $t0, -984($fp)
	addi $t0, $fp, -32
	sw $t0, -988($fp)
	li $t0, 0
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
	lw $t1, -1004($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label167
label167:
	li $t0, 1
	sw $t0, -984($fp)
label168:
	addi $t0, $fp, -328
	sw $t0, -1008($fp)
	li $t0, 5
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
	lw $t0, 8($fp)
	sw $t0, -1028($fp)
	lw $t0, -1024($fp)
	lw $t1, -1028($fp)
	mul $t0, $t0, $t1
	sw $t0, -1032($fp)
	li $t0, 0
	sw $t0, -1036($fp)
	lw $t0, 4($fp)
	sw $t0, -1040($fp)
	lw $t1, -1040($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -1036($fp)
label170:
	lw $t0, -372($fp)
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -1048($fp)
	addi $sp, $sp, -4
	lw $t0, -980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1048($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1052($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -1052($fp)
	sub $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $t0, -956($fp)
	lw $t1, -1056($fp)
	sub $t0, $t0, $t1
	sw $t0, -1060($fp)
label130:
	addi $t0, $fp, -32
	sw $t0, -1064($fp)
	li $t0, 0
	sw $t0, -1068($fp)
	li $t0, 4
	lw $t1, -1068($fp)
	mul $t0, $t0, $t1
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	lw $t1, -1064($fp)
	add $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	lw $t1, 0($t0)
	sw $t1, -1080($fp)
	lw $t0, -1080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1084($fp)
	li $t0, 1
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
	lw $t0, -1100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1104($fp)
	li $t0, 2
	sw $t0, -1108($fp)
	li $t0, 4
	lw $t1, -1108($fp)
	mul $t0, $t0, $t1
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	lw $t1, -1104($fp)
	add $t0, $t0, $t1
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	lw $t1, 0($t0)
	sw $t1, -1120($fp)
	lw $t0, -1120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1124($fp)
	li $t0, 3
	sw $t0, -1128($fp)
	li $t0, 4
	lw $t1, -1128($fp)
	mul $t0, $t0, $t1
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	lw $t1, -1124($fp)
	add $t0, $t0, $t1
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	lw $t1, 0($t0)
	sw $t1, -1140($fp)
	lw $t0, -1140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1144($fp)
	li $t0, 4
	sw $t0, -1148($fp)
	li $t0, 4
	lw $t1, -1148($fp)
	mul $t0, $t0, $t1
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	lw $t1, -1144($fp)
	add $t0, $t0, $t1
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	lw $t1, 0($t0)
	sw $t1, -1160($fp)
	lw $t0, -1160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1164($fp)
	li $t0, 5
	sw $t0, -1168($fp)
	li $t0, 4
	lw $t1, -1168($fp)
	mul $t0, $t0, $t1
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	lw $t1, -1164($fp)
	add $t0, $t0, $t1
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	lw $t1, 0($t0)
	sw $t1, -1180($fp)
	lw $t0, -1180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1184($fp)
	li $t0, 6
	sw $t0, -1188($fp)
	li $t0, 4
	lw $t1, -1188($fp)
	mul $t0, $t0, $t1
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	lw $t1, -1184($fp)
	add $t0, $t0, $t1
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	lw $t1, 0($t0)
	sw $t1, -1200($fp)
	lw $t0, -1200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -208($fp)
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -232($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1216($fp)
	li $t0, 0
	sw $t0, -1220($fp)
	li $t0, 0
	sw $t0, -1224($fp)
	li $t0, 17922
	sw $t0, -1228($fp)
	li $t0, 5786
	sw $t0, -1232($fp)
	lw $t0, -1228($fp)
	lw $t1, -1232($fp)
	mul $t0, $t0, $t1
	sw $t0, -1236($fp)
	lw $t1, -1236($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label176
label177:
	lw $t0, -208($fp)
	sw $t0, -1240($fp)
	lw $t1, -1240($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label176
label175:
	li $t0, 1
	sw $t0, -1224($fp)
label176:
	li $t0, 0
	sw $t0, -1244($fp)
	addi $t0, $fp, -32
	sw $t0, -1248($fp)
	lw $t0, 20($fp)
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
	li $t0, 26605
	sw $t0, -1268($fp)
	lw $t1, -1264($fp)
	lw $t2, -1268($fp)
	bne $t1, $t2, label178
	j label179
label178:
	li $t0, 1
	sw $t0, -1244($fp)
label179:
	li $t0, 4617
	sw $t0, -1272($fp)
	lw $t0, 16($fp)
	sw $t0, -1276($fp)
	lw $t0, -1272($fp)
	lw $t1, -1276($fp)
	sub $t0, $t0, $t1
	sw $t0, -1280($fp)
	addi $sp, $sp, -4
	lw $t0, -1224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1280($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1284($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -1288($fp)
	lw $t0, 8($fp)
	sw $t0, -1292($fp)
	li $t0, 17534
	sw $t0, -1296($fp)
	lw $t1, -1292($fp)
	lw $t2, -1296($fp)
	bge $t1, $t2, label180
	j label181
label180:
	li $t0, 1
	sw $t0, -1288($fp)
label181:
	li $t0, 0
	sw $t0, -1300($fp)
	li $t0, 65434
	sw $t0, -1304($fp)
	lw $t1, -1304($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label182
label182:
	li $t0, 1
	sw $t0, -1300($fp)
label183:
	li $t0, 52919
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -1312($fp)
	addi $sp, $sp, -4
	lw $t0, -1288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1312($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1316($fp)
	addi $sp, $sp, 16
	lw $t0, -1284($fp)
	lw $t1, -1316($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1320($fp)
	li $t0, 0
	lw $t1, -1320($fp)
	sub $t0, $t0, $t1
	sw $t0, -1324($fp)
	lw $t1, -1324($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label173
label173:
	li $t0, 1
	sw $t0, -1220($fp)
label174:
	addi $t0, $fp, -32
	sw $t0, -1328($fp)
	li $t0, 0
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
	li $t0, 54503
	sw $t0, -1348($fp)
	li $t0, 30615
	sw $t0, -1352($fp)
	lw $t0, -1348($fp)
	lw $t1, -1352($fp)
	mul $t0, $t0, $t1
	sw $t0, -1356($fp)
	lw $t0, -1344($fp)
	lw $t1, -1356($fp)
	sub $t0, $t0, $t1
	sw $t0, -1360($fp)
	lw $t1, -1220($fp)
	lw $t2, -1360($fp)
	beq $t1, $t2, label171
	j label172
label171:
	li $t0, 1
	sw $t0, -1216($fp)
label172:
	lw $ra, -4($fp)
	lw $v0, -1216($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -272
	li $t0, 39992
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
	li $t0, 51313
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
	li $t0, 4290
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
	addi $t0, $fp, -16
	sw $t0, -92($fp)
	li $t0, 0
	sw $t0, -96($fp)
	li $t0, 4
	lw $t1, -96($fp)
	mul $t0, $t0, $t1
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	lw $t1, -92($fp)
	add $t0, $t0, $t1
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	lw $t1, 0($t0)
	sw $t1, -108($fp)
	lw $t0, -108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -112($fp)
	li $t0, 1
	sw $t0, -116($fp)
	li $t0, 4
	lw $t1, -116($fp)
	mul $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	lw $t1, -112($fp)
	add $t0, $t0, $t1
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	lw $t1, 0($t0)
	sw $t1, -128($fp)
	lw $t0, -128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -132($fp)
	li $t0, 2
	sw $t0, -136($fp)
	li $t0, 4
	lw $t1, -136($fp)
	mul $t0, $t0, $t1
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	lw $t1, -132($fp)
	add $t0, $t0, $t1
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	lw $t1, 0($t0)
	sw $t1, -148($fp)
	lw $t0, -148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -152($fp)
	addi $t0, $fp, -16
	sw $t0, -156($fp)
	li $t0, 6477
	sw $t0, -160($fp)
	lw $t0, 8($fp)
	sw $t0, -164($fp)
	lw $t0, -160($fp)
	lw $t1, -164($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -168($fp)
	li $t0, 4
	lw $t1, -168($fp)
	mul $t0, $t0, $t1
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	lw $t1, -156($fp)
	add $t0, $t0, $t1
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	lw $t1, 0($t0)
	sw $t1, -180($fp)
	lw $t1, -180($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label184
label184:
	li $t0, 1
	sw $t0, -152($fp)
label185:
	li $t0, 0
	lw $t1, -152($fp)
	sub $t0, $t0, $t1
	sw $t0, -184($fp)
	lw $ra, -4($fp)
	lw $v0, -184($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
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
	lw $t0, 8($fp)
	sw $t0, -248($fp)
	lw $t0, 8($fp)
	sw $t0, -252($fp)
	lw $t0, -248($fp)
	lw $t1, -252($fp)
	sub $t0, $t0, $t1
	sw $t0, -256($fp)
	lw $t0, 8($fp)
	sw $t0, -260($fp)
	lw $t0, 8($fp)
	sw $t0, -264($fp)
	lw $t0, -260($fp)
	lw $t1, -264($fp)
	mul $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $t0, -256($fp)
	lw $t1, -268($fp)
	sub $t0, $t0, $t1
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -276($fp)
	lw $ra, -4($fp)
	lw $v0, -276($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -8648
	li $t0, 15006
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	li $t0, 42046
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	li $t0, 2064
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	li $t0, 63471
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	li $t0, 36924
	sw $t0, -228($fp)
	addi $t0, $fp, -24
	sw $t0, -232($fp)
	li $t0, 0
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
	li $t0, 23882
	sw $t0, -252($fp)
	addi $t0, $fp, -24
	sw $t0, -256($fp)
	li $t0, 1
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
	li $t0, 40704
	sw $t0, -276($fp)
	addi $t0, $fp, -24
	sw $t0, -280($fp)
	li $t0, 2
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
	li $t0, 35922
	sw $t0, -300($fp)
	addi $t0, $fp, -24
	sw $t0, -304($fp)
	li $t0, 3
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
	li $t0, 22304
	sw $t0, -324($fp)
	addi $t0, $fp, -24
	sw $t0, -328($fp)
	li $t0, 4
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $t0, -328($fp)
	lw $t1, -336($fp)
	add $t0, $t0, $t1
	sw $t0, -340($fp)
	lw $t0, -324($fp)
	lw $t1, -340($fp)
	sw $t0, 0($t1)
	lw $t0, -340($fp)
	lw $t1, 0($t0)
	sw $t1, -344($fp)
	li $t0, 38810
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	li $t0, 10649
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	li $t0, 65090
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	li $t0, 61583
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	li $t0, 5930
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	li $t0, 32980
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	li $t0, 45853
	sw $t0, -420($fp)
	addi $t0, $fp, -40
	sw $t0, -424($fp)
	li $t0, 0
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
	li $t0, 10547
	sw $t0, -444($fp)
	addi $t0, $fp, -40
	sw $t0, -448($fp)
	li $t0, 1
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
	li $t0, 59585
	sw $t0, -468($fp)
	addi $t0, $fp, -40
	sw $t0, -472($fp)
	li $t0, 2
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
	li $t0, 63775
	sw $t0, -492($fp)
	addi $t0, $fp, -40
	sw $t0, -496($fp)
	li $t0, 3
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
	li $t0, 16333
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	li $t0, 46968
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	li $t0, 63673
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	li $t0, 33868
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	li $t0, 11071
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	li $t0, 55003
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	li $t0, 22835
	sw $t0, -588($fp)
	addi $t0, $fp, -64
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
	li $t0, 41687
	sw $t0, -612($fp)
	addi $t0, $fp, -64
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
	li $t0, 29460
	sw $t0, -636($fp)
	addi $t0, $fp, -64
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
	li $t0, 8612
	sw $t0, -660($fp)
	addi $t0, $fp, -64
	sw $t0, -664($fp)
	li $t0, 3
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
	li $t0, 45977
	sw $t0, -684($fp)
	addi $t0, $fp, -64
	sw $t0, -688($fp)
	li $t0, 4
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
	li $t0, 35937
	sw $t0, -708($fp)
	addi $t0, $fp, -64
	sw $t0, -712($fp)
	li $t0, 5
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
	li $t0, 23619
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	li $t0, 22487
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	li $t0, 38001
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	li $t0, 21554
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -776($fp)
	li $t0, 59411
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -788($fp)
	li $t0, 61884
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -800($fp)
	li $t0, 62258
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	li $t0, 29797
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	li $t0, 18652
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	li $t0, 35533
	sw $t0, -840($fp)
	addi $t0, $fp, -72
	sw $t0, -844($fp)
	li $t0, 0
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t0, -844($fp)
	lw $t1, -852($fp)
	add $t0, $t0, $t1
	sw $t0, -856($fp)
	lw $t0, -840($fp)
	lw $t1, -856($fp)
	sw $t0, 0($t1)
	lw $t0, -856($fp)
	lw $t1, 0($t0)
	sw $t1, -860($fp)
	li $t0, 40446
	sw $t0, -864($fp)
	addi $t0, $fp, -72
	sw $t0, -868($fp)
	li $t0, 1
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -876($fp)
	lw $t0, -868($fp)
	lw $t1, -876($fp)
	add $t0, $t0, $t1
	sw $t0, -880($fp)
	lw $t0, -864($fp)
	lw $t1, -880($fp)
	sw $t0, 0($t1)
	lw $t0, -880($fp)
	lw $t1, 0($t0)
	sw $t1, -884($fp)
	li $t0, 18207
	sw $t0, -888($fp)
	addi $t0, $fp, -96
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
	li $t0, 31580
	sw $t0, -912($fp)
	addi $t0, $fp, -96
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
	li $t0, 46377
	sw $t0, -936($fp)
	addi $t0, $fp, -96
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
	li $t0, 51187
	sw $t0, -960($fp)
	addi $t0, $fp, -96
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
	li $t0, 11897
	sw $t0, -984($fp)
	addi $t0, $fp, -96
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
	li $t0, 56924
	sw $t0, -1008($fp)
	addi $t0, $fp, -96
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
	li $t0, 45237
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	li $t0, 10136
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	li $t0, 7722
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -1064($fp)
	li $t0, 26669
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -1076($fp)
	li $t0, 8273
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -1088($fp)
	li $t0, 41590
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -1100($fp)
	li $t0, 37741
	sw $t0, -1104($fp)
	addi $t0, $fp, -136
	sw $t0, -1108($fp)
	li $t0, 0
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
	li $t0, 63277
	sw $t0, -1128($fp)
	addi $t0, $fp, -136
	sw $t0, -1132($fp)
	li $t0, 1
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
	li $t0, 64425
	sw $t0, -1152($fp)
	addi $t0, $fp, -136
	sw $t0, -1156($fp)
	li $t0, 2
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
	li $t0, 13892
	sw $t0, -1176($fp)
	addi $t0, $fp, -136
	sw $t0, -1180($fp)
	li $t0, 3
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
	li $t0, 27201
	sw $t0, -1200($fp)
	addi $t0, $fp, -136
	sw $t0, -1204($fp)
	li $t0, 4
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
	li $t0, 7502
	sw $t0, -1224($fp)
	addi $t0, $fp, -136
	sw $t0, -1228($fp)
	li $t0, 5
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
	li $t0, 59869
	sw $t0, -1248($fp)
	addi $t0, $fp, -136
	sw $t0, -1252($fp)
	li $t0, 6
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
	li $t0, 63138
	sw $t0, -1272($fp)
	addi $t0, $fp, -136
	sw $t0, -1276($fp)
	li $t0, 7
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
	li $t0, 31121
	sw $t0, -1296($fp)
	addi $t0, $fp, -136
	sw $t0, -1300($fp)
	li $t0, 8
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
	li $t0, 16820
	sw $t0, -1320($fp)
	addi $t0, $fp, -136
	sw $t0, -1324($fp)
	li $t0, 9
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
	li $t0, 35603
	sw $t0, -1344($fp)
	addi $t0, $fp, -160
	sw $t0, -1348($fp)
	li $t0, 0
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
	li $t0, 52675
	sw $t0, -1368($fp)
	addi $t0, $fp, -160
	sw $t0, -1372($fp)
	li $t0, 1
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
	li $t0, 10695
	sw $t0, -1392($fp)
	addi $t0, $fp, -160
	sw $t0, -1396($fp)
	li $t0, 2
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
	li $t0, 31951
	sw $t0, -1416($fp)
	addi $t0, $fp, -160
	sw $t0, -1420($fp)
	li $t0, 3
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
	li $t0, 49398
	sw $t0, -1440($fp)
	addi $t0, $fp, -160
	sw $t0, -1444($fp)
	li $t0, 4
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
	li $t0, 40492
	sw $t0, -1464($fp)
	addi $t0, $fp, -160
	sw $t0, -1468($fp)
	li $t0, 5
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
	li $t0, 50604
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	sw $t0, -1496($fp)
	li $t0, 19395
	sw $t0, -1500($fp)
	addi $t0, $fp, -172
	sw $t0, -1504($fp)
	li $t0, 0
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
	li $t0, 15403
	sw $t0, -1524($fp)
	addi $t0, $fp, -172
	sw $t0, -1528($fp)
	li $t0, 1
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
	li $t0, 3275
	sw $t0, -1548($fp)
	addi $t0, $fp, -172
	sw $t0, -1552($fp)
	li $t0, 2
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
	li $t0, 50975
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	sw $t0, -1580($fp)
	li $t0, 61780
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	sw $t0, -1592($fp)
	li $t0, 54462
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	sw $t0, -1604($fp)
	li $t0, 62872
	sw $t0, -1608($fp)
	addi $t0, $fp, -176
	sw $t0, -1612($fp)
	li $t0, 0
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
	li $t0, 53168
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	sw $t0, -1640($fp)
	li $t0, 34163
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	sw $t0, -1652($fp)
	li $t0, 7472
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	sw $t0, -1664($fp)
	li $t0, 60890
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	sw $t0, -1676($fp)
	li $t0, 60833
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	sw $t0, -1688($fp)
	li $t0, 15745
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	sw $t0, -1700($fp)
	li $t0, 36944
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	sw $t0, -1712($fp)
	lw $t0, -184($fp)
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -196($fp)
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -208($fp)
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
	sw $t0, -1792($fp)
	li $t0, 3
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
	lw $t0, -1808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1812($fp)
	li $t0, 4
	sw $t0, -1816($fp)
	li $t0, 4
	lw $t1, -1816($fp)
	mul $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	lw $t1, -1812($fp)
	add $t0, $t0, $t1
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	lw $t1, 0($t0)
	sw $t1, -1828($fp)
	lw $t0, -1828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -352($fp)
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -364($fp)
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -376($fp)
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -388($fp)
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -400($fp)
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -412($fp)
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
	sw $t0, -1916($fp)
	li $t0, 3
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
	lw $t0, -520($fp)
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -532($fp)
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -544($fp)
	sw $t0, -1944($fp)
	lw $t0, -1944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -556($fp)
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -568($fp)
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -580($fp)
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1960($fp)
	li $t0, 0
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
	addi $t0, $fp, -64
	sw $t0, -1980($fp)
	li $t0, 1
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
	addi $t0, $fp, -64
	sw $t0, -2000($fp)
	li $t0, 2
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
	addi $t0, $fp, -64
	sw $t0, -2020($fp)
	li $t0, 3
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
	addi $t0, $fp, -64
	sw $t0, -2040($fp)
	li $t0, 4
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
	addi $t0, $fp, -64
	sw $t0, -2060($fp)
	li $t0, 5
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
	lw $t0, -736($fp)
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -748($fp)
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -760($fp)
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -772($fp)
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -784($fp)
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -796($fp)
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -808($fp)
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -820($fp)
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -832($fp)
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2116($fp)
	li $t0, 0
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
	addi $t0, $fp, -72
	sw $t0, -2136($fp)
	li $t0, 1
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
	addi $t0, $fp, -96
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
	addi $t0, $fp, -96
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
	addi $t0, $fp, -96
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
	addi $t0, $fp, -96
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
	addi $t0, $fp, -96
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
	addi $t0, $fp, -96
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
	lw $t0, -1036($fp)
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1048($fp)
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1060($fp)
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1072($fp)
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1084($fp)
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1096($fp)
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
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
	addi $t0, $fp, -136
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
	addi $t0, $fp, -136
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
	addi $t0, $fp, -136
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
	addi $t0, $fp, -136
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
	addi $t0, $fp, -136
	sw $t0, -2400($fp)
	li $t0, 5
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
	addi $t0, $fp, -136
	sw $t0, -2420($fp)
	li $t0, 6
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
	addi $t0, $fp, -136
	sw $t0, -2440($fp)
	li $t0, 7
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
	addi $t0, $fp, -136
	sw $t0, -2460($fp)
	li $t0, 8
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
	addi $t0, $fp, -136
	sw $t0, -2480($fp)
	li $t0, 9
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
	addi $t0, $fp, -160
	sw $t0, -2500($fp)
	li $t0, 0
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
	addi $t0, $fp, -160
	sw $t0, -2520($fp)
	li $t0, 1
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
	addi $t0, $fp, -160
	sw $t0, -2540($fp)
	li $t0, 2
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
	addi $t0, $fp, -160
	sw $t0, -2560($fp)
	li $t0, 3
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
	addi $t0, $fp, -160
	sw $t0, -2580($fp)
	li $t0, 4
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
	addi $t0, $fp, -160
	sw $t0, -2600($fp)
	li $t0, 5
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
	lw $t0, -1492($fp)
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -2624($fp)
	li $t0, 0
	sw $t0, -2628($fp)
	li $t0, 4
	lw $t1, -2628($fp)
	mul $t0, $t0, $t1
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	lw $t1, -2624($fp)
	add $t0, $t0, $t1
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	lw $t1, 0($t0)
	sw $t1, -2640($fp)
	lw $t0, -2640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -2644($fp)
	li $t0, 1
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
	addi $t0, $fp, -172
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
	lw $t0, -2680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1576($fp)
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1588($fp)
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1600($fp)
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -2696($fp)
	li $t0, 0
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
	lw $t0, -1636($fp)
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1648($fp)
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1660($fp)
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1672($fp)
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1684($fp)
	sw $t0, -2732($fp)
	lw $t0, -2732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1696($fp)
	sw $t0, -2736($fp)
	lw $t0, -2736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1708($fp)
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2744($fp)
	li $t0, 0
	sw $t0, -2748($fp)
	li $t0, 33038
	sw $t0, -2752($fp)
	li $t0, 0
	lw $t1, -2752($fp)
	sub $t0, $t0, $t1
	sw $t0, -2756($fp)
	lw $t1, -2756($fp)
	li $t2, 0
	bne $t1, $t2, label187
	j label186
label186:
	li $t0, 1
	sw $t0, -2748($fp)
label187:
	li $t0, 0
	lw $t1, -2748($fp)
	sub $t0, $t0, $t1
	sw $t0, -2760($fp)
	li $t0, 4
	lw $t1, -2760($fp)
	mul $t0, $t0, $t1
	sw $t0, -2764($fp)
	lw $t0, -2764($fp)
	lw $t1, -2744($fp)
	add $t0, $t0, $t1
	sw $t0, -2768($fp)
	lw $t0, -2768($fp)
	lw $t1, 0($t0)
	sw $t1, -2772($fp)
	lw $ra, -4($fp)
	lw $v0, -2772($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -2776($fp)
	addi $t0, $fp, -176
	sw $t0, -2780($fp)
	lw $t0, -208($fp)
	sw $t0, -2784($fp)
	li $t0, 13486
	sw $t0, -2788($fp)
	lw $t0, -2784($fp)
	lw $t1, -2788($fp)
	sub $t0, $t0, $t1
	sw $t0, -2792($fp)
	li $t0, 4
	lw $t1, -2792($fp)
	mul $t0, $t0, $t1
	sw $t0, -2796($fp)
	lw $t0, -2796($fp)
	lw $t1, -2780($fp)
	add $t0, $t0, $t1
	sw $t0, -2800($fp)
	lw $t0, -2800($fp)
	lw $t1, 0($t0)
	sw $t1, -2804($fp)
	lw $t1, -2804($fp)
	li $t2, 0
	bne $t1, $t2, label192
	j label191
label191:
	li $t0, 1
	sw $t0, -2776($fp)
label192:
	li $t0, 0
	sw $t0, -2808($fp)
	li $t0, 0
	sw $t0, -2812($fp)
	li $t0, 43336
	sw $t0, -2816($fp)
	li $t0, 0
	sw $t0, -2820($fp)
	lw $t0, -796($fp)
	sw $t0, -2824($fp)
	li $t0, 46930
	sw $t0, -2828($fp)
	lw $t0, -2824($fp)
	lw $t1, -2828($fp)
	sub $t0, $t0, $t1
	sw $t0, -2832($fp)
	li $t0, 40687
	sw $t0, -2836($fp)
	lw $t1, -2832($fp)
	lw $t2, -2836($fp)
	bne $t1, $t2, label198
	j label199
label198:
	li $t0, 1
	sw $t0, -2820($fp)
label199:
	addi $sp, $sp, -4
	lw $t0, -2816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2820($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2840($fp)
	addi $sp, $sp, 12
	lw $t1, -2840($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label196
label197:
	li $t0, 41263
	sw $t0, -2844($fp)
	lw $t1, -2844($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label196
label195:
	li $t0, 1
	sw $t0, -2812($fp)
label196:
	lw $t0, -1576($fp)
	sw $t0, -2848($fp)
	lw $t0, -2848($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -2852($fp)
	li $t0, 0
	sw $t0, -2856($fp)
	li $t0, 35834
	sw $t0, -2860($fp)
	lw $t1, -2860($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label200
label202:
	lw $t0, -1096($fp)
	sw $t0, -2864($fp)
	lw $t1, -2864($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -2856($fp)
label201:
	addi $sp, $sp, -4
	lw $t0, -2812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2856($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2868($fp)
	addi $sp, $sp, 16
	lw $t1, -2868($fp)
	li $t2, 0
	bne $t1, $t2, label194
	j label193
label193:
	li $t0, 1
	sw $t0, -2808($fp)
label194:
	lw $t0, -2776($fp)
	lw $t1, -2808($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2872($fp)
	lw $t1, -2872($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label189
label188:
label203:
	li $t0, 0
	sw $t0, -2876($fp)
	li $t0, 0
	sw $t0, -2880($fp)
	lw $t0, -196($fp)
	sw $t0, -2884($fp)
	li $t0, 55100
	sw $t0, -2888($fp)
	lw $t1, -2884($fp)
	lw $t2, -2888($fp)
	bne $t1, $t2, label210
	j label209
label210:
	lw $t0, -808($fp)
	sw $t0, -2892($fp)
	lw $t1, -2892($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -2880($fp)
label209:
	li $t0, 0
	sw $t0, -2896($fp)
	li $t0, 0
	sw $t0, -2900($fp)
	lw $t0, -1672($fp)
	sw $t0, -2904($fp)
	lw $t0, -184($fp)
	sw $t0, -2908($fp)
	lw $t1, -2904($fp)
	lw $t2, -2908($fp)
	ble $t1, $t2, label213
	j label214
label213:
	li $t0, 1
	sw $t0, -2900($fp)
label214:
	li $t0, 51741
	sw $t0, -2912($fp)
	lw $t1, -2900($fp)
	lw $t2, -2912($fp)
	beq $t1, $t2, label211
	j label212
label211:
	li $t0, 1
	sw $t0, -2896($fp)
label212:
	li $t0, 0
	sw $t0, -2916($fp)
	lw $t0, -376($fp)
	sw $t0, -2920($fp)
	lw $t1, -2920($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label216
label217:
	li $t0, 43014
	sw $t0, -2924($fp)
	lw $t1, -2924($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label216
label215:
	li $t0, 1
	sw $t0, -2916($fp)
label216:
	lw $t0, -1072($fp)
	sw $t0, -2928($fp)
	li $t0, 47628
	sw $t0, -2932($fp)
	lw $t0, -2928($fp)
	lw $t1, -2932($fp)
	add $t0, $t0, $t1
	sw $t0, -2936($fp)
	lw $t0, -820($fp)
	sw $t0, -2940($fp)
	lw $t0, -2936($fp)
	lw $t1, -2940($fp)
	add $t0, $t0, $t1
	sw $t0, -2944($fp)
	li $t0, 0
	sw $t0, -2948($fp)
	li $t0, 17578
	sw $t0, -2952($fp)
	lw $t0, -568($fp)
	sw $t0, -2956($fp)
	lw $t0, -2952($fp)
	lw $t1, -2956($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2960($fp)
	lw $t1, -2960($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label219
label220:
	lw $t0, -580($fp)
	sw $t0, -2964($fp)
	lw $t1, -2964($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label219
label218:
	li $t0, 1
	sw $t0, -2948($fp)
label219:
	addi $sp, $sp, -4
	lw $t0, -2880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2948($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2968($fp)
	addi $sp, $sp, 24
	lw $t0, -388($fp)
	sw $t0, -2972($fp)
	lw $t1, -2968($fp)
	lw $t2, -2972($fp)
	bgt $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -2876($fp)
label207:
	li $t0, 0
	sw $t0, -2976($fp)
	lw $t0, -1072($fp)
	sw $t0, -2980($fp)
	lw $t1, -2980($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label223
label224:
	lw $t0, -832($fp)
	sw $t0, -2984($fp)
	lw $t1, -2984($fp)
	li $t2, 0
	bne $t1, $t2, label221
	j label223
label223:
	li $t0, 50292
	sw $t0, -2988($fp)
	lw $t1, -2988($fp)
	li $t2, 0
	bne $t1, $t2, label221
	j label222
label221:
	li $t0, 1
	sw $t0, -2976($fp)
label222:
	li $t0, 0
	sw $t0, -2992($fp)
	li $t0, 0
	sw $t0, -2996($fp)
	li $t0, 64853
	sw $t0, -3000($fp)
	li $t0, 59137
	sw $t0, -3004($fp)
	lw $t1, -3000($fp)
	lw $t2, -3004($fp)
	bne $t1, $t2, label227
	j label228
label227:
	li $t0, 1
	sw $t0, -2996($fp)
label228:
	li $t0, 0
	sw $t0, -3008($fp)
	lw $t0, -412($fp)
	sw $t0, -3012($fp)
	lw $t0, -196($fp)
	sw $t0, -3016($fp)
	lw $t1, -3012($fp)
	lw $t2, -3016($fp)
	bgt $t1, $t2, label229
	j label231
label231:
	lw $t0, -1600($fp)
	sw $t0, -3020($fp)
	lw $t1, -3020($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label230
label229:
	li $t0, 1
	sw $t0, -3008($fp)
label230:
	li $t0, 0
	sw $t0, -3024($fp)
	li $t0, 45458
	sw $t0, -3028($fp)
	li $t0, 43734
	sw $t0, -3032($fp)
	lw $t0, -3028($fp)
	lw $t1, -3032($fp)
	sub $t0, $t0, $t1
	sw $t0, -3036($fp)
	li $t0, 25376
	sw $t0, -3040($fp)
	lw $t1, -3036($fp)
	lw $t2, -3040($fp)
	beq $t1, $t2, label232
	j label233
label232:
	li $t0, 1
	sw $t0, -3024($fp)
label233:
	li $t0, 40308
	sw $t0, -3044($fp)
	li $t0, 0
	sw $t0, -3048($fp)
	lw $t0, -1084($fp)
	sw $t0, -3052($fp)
	lw $t1, -3052($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label234
label234:
	li $t0, 1
	sw $t0, -3048($fp)
label235:
	addi $sp, $sp, -4
	lw $t0, -2996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3048($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3056($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -3056($fp)
	sub $t0, $t0, $t1
	sw $t0, -3060($fp)
	addi $sp, $sp, -4
	lw $t0, -3060($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3064($fp)
	addi $sp, $sp, 8
	li $t0, 28651
	sw $t0, -3068($fp)
	lw $t1, -3064($fp)
	lw $t2, -3068($fp)
	beq $t1, $t2, label225
	j label226
label225:
	li $t0, 1
	sw $t0, -2992($fp)
label226:
	li $t0, 3242
	sw $t0, -3072($fp)
	li $t0, 0
	sw $t0, -3076($fp)
	addi $t0, $fp, -172
	sw $t0, -3080($fp)
	li $t0, 0
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
	lw $t0, -520($fp)
	sw $t0, -3100($fp)
	lw $t1, -3096($fp)
	lw $t2, -3100($fp)
	bge $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -3076($fp)
label237:
	addi $t0, $fp, -24
	sw $t0, -3104($fp)
	li $t0, 2
	sw $t0, -3108($fp)
	li $t0, 4
	lw $t1, -3108($fp)
	mul $t0, $t0, $t1
	sw $t0, -3112($fp)
	lw $t0, -3112($fp)
	lw $t1, -3104($fp)
	add $t0, $t0, $t1
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	lw $t1, 0($t0)
	sw $t1, -3120($fp)
	li $t0, 58083
	sw $t0, -3124($fp)
	lw $t0, -3120($fp)
	lw $t1, -3124($fp)
	add $t0, $t0, $t1
	sw $t0, -3128($fp)
	addi $sp, $sp, -4
	lw $t0, -2976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3128($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3132($fp)
	addi $sp, $sp, 24
	li $t0, 55381
	sw $t0, -3136($fp)
	lw $t0, -3132($fp)
	lw $t1, -3136($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3140($fp)
	addi $sp, $sp, -4
	lw $t0, -2876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3140($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3144($fp)
	addi $sp, $sp, 12
	lw $t1, -3144($fp)
	li $t2, 0
	bne $t1, $t2, label204
	j label205
label204:
	li $t0, 0
	sw $t0, -3148($fp)
	lw $t0, -1600($fp)
	sw $t0, -3152($fp)
	lw $t0, -376($fp)
	sw $t0, -3156($fp)
	lw $t0, -3152($fp)
	lw $t1, -3156($fp)
	mul $t0, $t0, $t1
	sw $t0, -3160($fp)
	lw $t1, -3160($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label243
label243:
	li $t0, 45611
	sw $t0, -3164($fp)
	lw $t1, -3164($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label242
label241:
	li $t0, 1
	sw $t0, -3148($fp)
label242:
	lw $t0, -376($fp)
	sw $t0, -3168($fp)
	li $t0, 0
	sw $t0, -3172($fp)
	li $t0, 9777
	sw $t0, -3176($fp)
	lw $t1, -3176($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label245
label247:
	li $t0, 14540
	sw $t0, -3180($fp)
	lw $t1, -3180($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label245
label246:
	li $t0, 18796
	sw $t0, -3184($fp)
	lw $t1, -3184($fp)
	li $t2, 0
	bne $t1, $t2, label244
	j label245
label244:
	li $t0, 1
	sw $t0, -3172($fp)
label245:
	addi $t0, $fp, -136
	sw $t0, -3188($fp)
	li $t0, 0
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
	li $t0, 38368
	sw $t0, -3208($fp)
	lw $t0, -3208($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -3212($fp)
	addi $sp, $sp, -4
	lw $t0, -3148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3212($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3216($fp)
	addi $sp, $sp, 24
	lw $t1, -3216($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label239
label238:
	li $t0, 61470
	sw $t0, -3220($fp)
	lw $t0, -3220($fp)
	sw $t0, -3224($fp)
	lw $t0, -3224($fp)
	sw $t0, -3228($fp)
	li $t0, 59484
	sw $t0, -3232($fp)
	lw $t0, -3232($fp)
	sw $t0, -3236($fp)
	lw $t0, -3236($fp)
	sw $t0, -3240($fp)
	lw $t0, -556($fp)
	sw $t0, -3244($fp)
	li $t0, 0
	lw $t1, -3244($fp)
	sub $t0, $t0, $t1
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -3252($fp)
	lw $t0, -3252($fp)
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	sw $t0, -3256($fp)
	addi $t0, $fp, -136
	sw $t0, -3260($fp)
	li $t0, 5
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
	lw $t0, -544($fp)
	sw $t0, -3280($fp)
	lw $t0, -3276($fp)
	lw $t1, -3280($fp)
	mul $t0, $t0, $t1
	sw $t0, -3284($fp)
	lw $t0, -220($fp)
	sw $t0, -3288($fp)
	li $t0, 32237
	sw $t0, -3292($fp)
	lw $t0, -3288($fp)
	lw $t1, -3292($fp)
	add $t0, $t0, $t1
	sw $t0, -3296($fp)
	lw $t1, -3284($fp)
	lw $t2, -3296($fp)
	bne $t1, $t2, label248
	j label251
label251:
	li $t0, 32332
	sw $t0, -3300($fp)
	li $t0, 29744
	sw $t0, -3304($fp)
	lw $t0, -3300($fp)
	lw $t1, -3304($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3308($fp)
	li $t0, 40594
	sw $t0, -3312($fp)
	lw $t0, -3308($fp)
	lw $t1, -3312($fp)
	add $t0, $t0, $t1
	sw $t0, -3316($fp)
	lw $t1, -3316($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label249
label252:
	li $t0, 28392
	sw $t0, -3320($fp)
	li $t0, 32986
	sw $t0, -3324($fp)
	lw $t1, -3320($fp)
	lw $t2, -3324($fp)
	bgt $t1, $t2, label248
	j label249
label248:
	li $t0, 15367
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	sw $t0, -3332($fp)
	lw $t0, -3332($fp)
	sw $t0, -3336($fp)
	li $t0, 8315
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	sw $t0, -3348($fp)
label253:
	li $t0, 0
	sw $t0, -3352($fp)
	li $t0, 3859
	sw $t0, -3356($fp)
	lw $t1, -3356($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label257
label256:
	li $t0, 1
	sw $t0, -3352($fp)
label257:
	lw $t0, -832($fp)
	sw $t0, -3360($fp)
	lw $t0, -1060($fp)
	sw $t0, -3364($fp)
	lw $t0, -3360($fp)
	lw $t1, -3364($fp)
	mul $t0, $t0, $t1
	sw $t0, -3368($fp)
	li $t0, 4786
	sw $t0, -3372($fp)
	lw $t0, -3368($fp)
	lw $t1, -3372($fp)
	add $t0, $t0, $t1
	sw $t0, -3376($fp)
	li $t0, 7632
	sw $t0, -3380($fp)
	li $t0, 40743
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	sw $t0, -3332($fp)
	lw $t0, -3332($fp)
	sw $t0, -3388($fp)
	li $t0, 0
	sw $t0, -3392($fp)
	lw $t0, -1048($fp)
	sw $t0, -3396($fp)
	lw $t1, -3396($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label258
label258:
	li $t0, 1
	sw $t0, -3392($fp)
label259:
	li $t0, 11185
	sw $t0, -3400($fp)
	lw $t0, -3392($fp)
	lw $t1, -3400($fp)
	mul $t0, $t0, $t1
	sw $t0, -3404($fp)
	addi $sp, $sp, -4
	lw $t0, -3352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3404($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3408($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -3408($fp)
	sub $t0, $t0, $t1
	sw $t0, -3412($fp)
	lw $t0, -364($fp)
	sw $t0, -3416($fp)
	lw $t0, -3416($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -3420($fp)
	li $t0, 0
	sw $t0, -3424($fp)
	lw $t0, -196($fp)
	sw $t0, -3428($fp)
	lw $t1, -3428($fp)
	li $t2, 0
	bne $t1, $t2, label261
	j label260
label260:
	li $t0, 1
	sw $t0, -3424($fp)
label261:
	addi $sp, $sp, -4
	lw $t0, -3420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3424($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3432($fp)
	addi $sp, $sp, 12
	lw $t1, -3412($fp)
	lw $t2, -3432($fp)
	blt $t1, $t2, label254
	j label255
label254:
	li $t0, 0
	sw $t0, -3436($fp)
	lw $t0, -1600($fp)
	sw $t0, -3440($fp)
	li $t0, 57925
	sw $t0, -3444($fp)
	lw $t0, -3440($fp)
	lw $t1, -3444($fp)
	mul $t0, $t0, $t1
	sw $t0, -3448($fp)
	li $t0, 60168
	sw $t0, -3452($fp)
	lw $t0, -3448($fp)
	lw $t1, -3452($fp)
	mul $t0, $t0, $t1
	sw $t0, -3456($fp)
	li $t0, 0
	sw $t0, -3460($fp)
	li $t0, 29582
	sw $t0, -3464($fp)
	lw $t0, -3344($fp)
	sw $t0, -3468($fp)
	lw $t0, -3464($fp)
	lw $t1, -3468($fp)
	add $t0, $t0, $t1
	sw $t0, -3472($fp)
	addi $t0, $fp, -172
	sw $t0, -3476($fp)
	lw $t0, -3224($fp)
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
	addi $sp, $sp, -4
	lw $t0, -3472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3492($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3496($fp)
	addi $sp, $sp, 12
	lw $t1, -3496($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label268
label268:
	li $t0, 1
	sw $t0, -3460($fp)
label269:
	li $t0, 0
	sw $t0, -3500($fp)
	lw $t0, -352($fp)
	sw $t0, -3504($fp)
	li $t0, 7642
	sw $t0, -3508($fp)
	lw $t0, -3504($fp)
	lw $t1, -3508($fp)
	mul $t0, $t0, $t1
	sw $t0, -3512($fp)
	lw $t0, -3236($fp)
	sw $t0, -3516($fp)
	lw $t1, -3512($fp)
	lw $t2, -3516($fp)
	bne $t1, $t2, label270
	j label271
label270:
	li $t0, 1
	sw $t0, -3500($fp)
label271:
	li $t0, 0
	sw $t0, -3520($fp)
	lw $t0, -520($fp)
	sw $t0, -3524($fp)
	addi $sp, $sp, -4
	lw $t0, -3524($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3528($fp)
	addi $sp, $sp, 8
	lw $t1, -3528($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label272
label272:
	li $t0, 1
	sw $t0, -3520($fp)
label273:
	li $t0, 0
	sw $t0, -3532($fp)
	lw $t0, -1636($fp)
	sw $t0, -3536($fp)
	li $t0, 40017
	sw $t0, -3540($fp)
	lw $t0, -3536($fp)
	lw $t1, -3540($fp)
	add $t0, $t0, $t1
	sw $t0, -3544($fp)
	lw $t1, -3544($fp)
	li $t2, 0
	bne $t1, $t2, label274
	j label276
label276:
	li $t0, 37646
	sw $t0, -3548($fp)
	lw $t1, -3548($fp)
	li $t2, 0
	bne $t1, $t2, label274
	j label275
label274:
	li $t0, 1
	sw $t0, -3532($fp)
label275:
	lw $t0, -1588($fp)
	sw $t0, -3552($fp)
	li $t0, 21437
	sw $t0, -3556($fp)
	lw $t0, -3552($fp)
	lw $t1, -3556($fp)
	add $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t0, -1600($fp)
	sw $t0, -3564($fp)
	lw $t0, -3560($fp)
	lw $t1, -3564($fp)
	sub $t0, $t0, $t1
	sw $t0, -3568($fp)
	addi $sp, $sp, -4
	lw $t0, -3460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3568($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3572($fp)
	addi $sp, $sp, 24
	lw $t1, -3456($fp)
	lw $t2, -3572($fp)
	bne $t1, $t2, label266
	j label267
label266:
	li $t0, 1
	sw $t0, -3436($fp)
label267:
	lw $t0, -1672($fp)
	sw $t0, -3576($fp)
	lw $t0, -544($fp)
	sw $t0, -3580($fp)
	lw $t0, -3576($fp)
	lw $t1, -3580($fp)
	add $t0, $t0, $t1
	sw $t0, -3584($fp)
	lw $t1, -3436($fp)
	lw $t2, -3584($fp)
	beq $t1, $t2, label265
	j label263
label265:
	li $t0, 10478
	sw $t0, -3588($fp)
	lw $t1, -3588($fp)
	li $t2, 0
	bne $t1, $t2, label262
	j label263
label262:
	li $t0, 54681
	sw $t0, -3592($fp)
	j label264
label263:
	li $t0, 34892
	sw $t0, -3596($fp)
	li $t0, 20255
	sw $t0, -3600($fp)
	lw $t0, -3596($fp)
	lw $t1, -3600($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3604($fp)
label264:
	j label253
label255:
	li $t0, 0
	sw $t0, -3608($fp)
	li $t0, 3685
	sw $t0, -3612($fp)
	lw $t1, -3612($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label280
label280:
	li $t0, 1
	sw $t0, -3608($fp)
label281:
	lw $t0, -388($fp)
	sw $t0, -3616($fp)
	lw $t0, -3608($fp)
	lw $t1, -3616($fp)
	mul $t0, $t0, $t1
	sw $t0, -3620($fp)
	lw $t1, -3620($fp)
	li $t2, 0
	bne $t1, $t2, label277
	j label278
label277:
	li $t0, 53688
	sw $t0, -3624($fp)
	lw $t0, -3624($fp)
	sw $t0, -3628($fp)
	lw $t0, -3628($fp)
	sw $t0, -3632($fp)
	li $t0, 330
	sw $t0, -3636($fp)
	lw $t0, -3636($fp)
	sw $t0, -3640($fp)
	lw $t0, -3640($fp)
	sw $t0, -3644($fp)
	li $t0, 65156
	sw $t0, -3648($fp)
	lw $t0, -3648($fp)
	sw $t0, -3652($fp)
	lw $t0, -3652($fp)
	sw $t0, -3656($fp)
	li $t0, 0
	sw $t0, -3660($fp)
	li $t0, 47636
	sw $t0, -3664($fp)
	lw $t1, -3664($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label282
label282:
	li $t0, 1
	sw $t0, -3660($fp)
label283:
	lw $t0, -544($fp)
	sw $t0, -3668($fp)
	li $t0, 23741
	sw $t0, -3672($fp)
	lw $t0, -3668($fp)
	lw $t1, -3672($fp)
	mul $t0, $t0, $t1
	sw $t0, -3676($fp)
	lw $t0, -3660($fp)
	lw $t1, -3676($fp)
	sub $t0, $t0, $t1
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	sw $t0, -3684($fp)
	li $t0, 0
	sw $t0, -3688($fp)
	li $t0, 36817
	sw $t0, -3692($fp)
	lw $t1, -3692($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label285
label286:
	addi $t0, $fp, -96
	sw $t0, -3696($fp)
	lw $t0, -400($fp)
	sw $t0, -3700($fp)
	li $t0, 4
	lw $t1, -3700($fp)
	mul $t0, $t0, $t1
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	lw $t1, -3696($fp)
	add $t0, $t0, $t1
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	lw $t1, 0($t0)
	sw $t1, -3712($fp)
	li $t0, 0
	sw $t0, -3716($fp)
	lw $t0, -3628($fp)
	sw $t0, -3720($fp)
	lw $t1, -3720($fp)
	li $t2, 0
	bne $t1, $t2, label288
	j label287
label287:
	li $t0, 1
	sw $t0, -3716($fp)
label288:
	lw $t0, -3712($fp)
	lw $t1, -3716($fp)
	sub $t0, $t0, $t1
	sw $t0, -3724($fp)
	lw $t1, -3724($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label285
label284:
	li $t0, 1
	sw $t0, -3688($fp)
label285:
	li $t0, 0
	sw $t0, -3728($fp)
	addi $t0, $fp, -72
	sw $t0, -3732($fp)
	lw $t0, -1672($fp)
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
	li $t0, 56073
	sw $t0, -3752($fp)
	lw $t0, -3748($fp)
	lw $t1, -3752($fp)
	add $t0, $t0, $t1
	sw $t0, -3756($fp)
	li $t0, 14338
	sw $t0, -3760($fp)
	addi $sp, $sp, -4
	lw $t0, -3756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3760($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3764($fp)
	addi $sp, $sp, 12
	lw $t1, -3764($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label290
label291:
	li $t0, 0
	sw $t0, -3768($fp)
	li $t0, 1026
	sw $t0, -3772($fp)
	lw $t0, -748($fp)
	sw $t0, -3776($fp)
	lw $t0, -3772($fp)
	lw $t1, -3776($fp)
	sub $t0, $t0, $t1
	sw $t0, -3780($fp)
	li $t0, 54932
	sw $t0, -3784($fp)
	lw $t1, -3780($fp)
	lw $t2, -3784($fp)
	beq $t1, $t2, label292
	j label293
label292:
	li $t0, 1
	sw $t0, -3768($fp)
label293:
	addi $t0, $fp, -136
	sw $t0, -3788($fp)
	lw $t0, -220($fp)
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
	lw $t1, -3768($fp)
	lw $t2, -3804($fp)
	bne $t1, $t2, label289
	j label290
label289:
	li $t0, 1
	sw $t0, -3728($fp)
label290:
	li $t0, 0
	sw $t0, -3808($fp)
	li $t0, 0
	sw $t0, -3812($fp)
	li $t0, 0
	sw $t0, -3816($fp)
	li $t0, 18930
	sw $t0, -3820($fp)
	lw $t1, -3820($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label298
label298:
	li $t0, 1
	sw $t0, -3816($fp)
label299:
	lw $t0, -3640($fp)
	sw $t0, -3824($fp)
	lw $t1, -3816($fp)
	lw $t2, -3824($fp)
	bge $t1, $t2, label296
	j label297
label296:
	li $t0, 1
	sw $t0, -3812($fp)
label297:
	li $t0, 0
	sw $t0, -3828($fp)
	li $t0, 34012
	sw $t0, -3832($fp)
	li $t0, 4763
	sw $t0, -3836($fp)
	lw $t1, -3832($fp)
	lw $t2, -3836($fp)
	ble $t1, $t2, label300
	j label301
label300:
	li $t0, 1
	sw $t0, -3828($fp)
label301:
	lw $t1, -3812($fp)
	lw $t2, -3828($fp)
	bne $t1, $t2, label294
	j label295
label294:
	li $t0, 1
	sw $t0, -3808($fp)
label295:
	lw $t0, -3808($fp)
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -3840($fp)
	li $t0, 0
	sw $t0, -3844($fp)
	li $t0, 0
	sw $t0, -3848($fp)
	li $t0, 45507
	sw $t0, -3852($fp)
	lw $t1, -3852($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label308
label308:
	li $t0, 34877
	sw $t0, -3856($fp)
	lw $t1, -3856($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label307
label307:
	li $t0, 49984
	sw $t0, -3860($fp)
	lw $t1, -3860($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label306
label305:
	li $t0, 1
	sw $t0, -3848($fp)
label306:
	li $t0, 45197
	sw $t0, -3864($fp)
	lw $t0, -532($fp)
	sw $t0, -3868($fp)
	li $t0, 27245
	sw $t0, -3872($fp)
	lw $t0, -3868($fp)
	lw $t1, -3872($fp)
	sub $t0, $t0, $t1
	sw $t0, -3876($fp)
	addi $sp, $sp, -4
	lw $t0, -3848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3876($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3880($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -3880($fp)
	sub $t0, $t0, $t1
	sw $t0, -3884($fp)
	li $t0, 0
	sw $t0, -3888($fp)
	lw $t0, -3628($fp)
	sw $t0, -3892($fp)
	li $t0, 0
	lw $t1, -3892($fp)
	sub $t0, $t0, $t1
	sw $t0, -3896($fp)
	lw $t1, -3896($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label309
label309:
	li $t0, 1
	sw $t0, -3888($fp)
label310:
	lw $t0, -3884($fp)
	lw $t1, -3888($fp)
	add $t0, $t0, $t1
	sw $t0, -3900($fp)
	lw $t1, -3900($fp)
	li $t2, 0
	bne $t1, $t2, label302
	j label304
label304:
	lw $t0, -3652($fp)
	sw $t0, -3904($fp)
	lw $t0, -3904($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -3908($fp)
	lw $t0, -1600($fp)
	sw $t0, -3912($fp)
	lw $t0, -3344($fp)
	sw $t0, -3916($fp)
	lw $t0, -3912($fp)
	lw $t1, -3916($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3920($fp)
	li $t0, 27266
	sw $t0, -3924($fp)
	lw $t0, -3920($fp)
	lw $t1, -3924($fp)
	mul $t0, $t0, $t1
	sw $t0, -3928($fp)
	li $t0, 0
	sw $t0, -3932($fp)
	lw $t0, -544($fp)
	sw $t0, -3936($fp)
	lw $t1, -3936($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label311
label313:
	li $t0, 49366
	sw $t0, -3940($fp)
	lw $t1, -3940($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label312
label311:
	li $t0, 1
	sw $t0, -3932($fp)
label312:
	addi $sp, $sp, -4
	lw $t0, -3908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3932($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3944($fp)
	addi $sp, $sp, 16
	li $t0, 44616
	sw $t0, -3948($fp)
	lw $t0, -3944($fp)
	lw $t1, -3948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3952($fp)
	addi $t0, $fp, -176
	sw $t0, -3956($fp)
	lw $t0, -1672($fp)
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
	lw $t1, -3952($fp)
	lw $t2, -3972($fp)
	ble $t1, $t2, label302
	j label303
label302:
	li $t0, 1
	sw $t0, -3844($fp)
label303:
label278:
	j label250
label249:
	li $t0, 5267
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	sw $t0, -3980($fp)
	lw $t0, -3980($fp)
	sw $t0, -3984($fp)
	li $t0, 1748
	sw $t0, -3988($fp)
	lw $t1, -3988($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label315
label314:
	li $t0, 0
	sw $t0, -3992($fp)
	lw $t0, -1648($fp)
	sw $t0, -3996($fp)
	lw $t0, -1636($fp)
	sw $t0, -4000($fp)
	lw $t1, -3996($fp)
	lw $t2, -4000($fp)
	beq $t1, $t2, label317
	j label318
label317:
	li $t0, 1
	sw $t0, -3992($fp)
label318:
label315:
label319:
	li $t0, 16726
	sw $t0, -4004($fp)
	lw $t1, -4004($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label321
label320:
	li $t0, 12909
	sw $t0, -4024($fp)
	addi $t0, $fp, -4020
	sw $t0, -4028($fp)
	li $t0, 0
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4036($fp)
	lw $t0, -4028($fp)
	lw $t1, -4036($fp)
	add $t0, $t0, $t1
	sw $t0, -4040($fp)
	lw $t0, -4024($fp)
	lw $t1, -4040($fp)
	sw $t0, 0($t1)
	lw $t0, -4040($fp)
	lw $t1, 0($t0)
	sw $t1, -4044($fp)
	li $t0, 31330
	sw $t0, -4048($fp)
	addi $t0, $fp, -4020
	sw $t0, -4052($fp)
	li $t0, 1
	sw $t0, -4056($fp)
	lw $t0, -4056($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4060($fp)
	lw $t0, -4052($fp)
	lw $t1, -4060($fp)
	add $t0, $t0, $t1
	sw $t0, -4064($fp)
	lw $t0, -4048($fp)
	lw $t1, -4064($fp)
	sw $t0, 0($t1)
	lw $t0, -4064($fp)
	lw $t1, 0($t0)
	sw $t1, -4068($fp)
	li $t0, 27204
	sw $t0, -4072($fp)
	addi $t0, $fp, -4020
	sw $t0, -4076($fp)
	li $t0, 2
	sw $t0, -4080($fp)
	lw $t0, -4080($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4084($fp)
	lw $t0, -4076($fp)
	lw $t1, -4084($fp)
	add $t0, $t0, $t1
	sw $t0, -4088($fp)
	lw $t0, -4072($fp)
	lw $t1, -4088($fp)
	sw $t0, 0($t1)
	lw $t0, -4088($fp)
	lw $t1, 0($t0)
	sw $t1, -4092($fp)
	li $t0, 2054
	sw $t0, -4096($fp)
	addi $t0, $fp, -4020
	sw $t0, -4100($fp)
	li $t0, 3
	sw $t0, -4104($fp)
	lw $t0, -4104($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4108($fp)
	lw $t0, -4100($fp)
	lw $t1, -4108($fp)
	add $t0, $t0, $t1
	sw $t0, -4112($fp)
	lw $t0, -4096($fp)
	lw $t1, -4112($fp)
	sw $t0, 0($t1)
	lw $t0, -4112($fp)
	lw $t1, 0($t0)
	sw $t1, -4116($fp)
	lw $t0, -1696($fp)
	sw $t0, -4120($fp)
	lw $t0, -4120($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -4124($fp)
	li $t0, 0
	sw $t0, -4128($fp)
	addi $t0, $fp, -160
	sw $t0, -4132($fp)
	lw $t0, -3224($fp)
	sw $t0, -4136($fp)
	li $t0, 4
	lw $t1, -4136($fp)
	mul $t0, $t0, $t1
	sw $t0, -4140($fp)
	lw $t0, -4140($fp)
	lw $t1, -4132($fp)
	add $t0, $t0, $t1
	sw $t0, -4144($fp)
	lw $t0, -4144($fp)
	lw $t1, 0($t0)
	sw $t1, -4148($fp)
	lw $t1, -4148($fp)
	li $t2, 0
	bne $t1, $t2, label322
	j label323
label322:
	li $t0, 1
	sw $t0, -4128($fp)
label323:
	li $t0, 0
	sw $t0, -4152($fp)
	li $t0, 0
	sw $t0, -4156($fp)
	li $t0, 42177
	sw $t0, -4160($fp)
	li $t0, 50813
	sw $t0, -4164($fp)
	lw $t1, -4160($fp)
	lw $t2, -4164($fp)
	ble $t1, $t2, label328
	j label327
label328:
	li $t0, 62069
	sw $t0, -4168($fp)
	lw $t1, -4168($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label327
label326:
	li $t0, 1
	sw $t0, -4156($fp)
label327:
	addi $t0, $fp, -4020
	sw $t0, -4172($fp)
	li $t0, 0
	sw $t0, -4176($fp)
	li $t0, 4
	lw $t1, -4176($fp)
	mul $t0, $t0, $t1
	sw $t0, -4180($fp)
	lw $t0, -4180($fp)
	lw $t1, -4172($fp)
	add $t0, $t0, $t1
	sw $t0, -4184($fp)
	lw $t0, -4184($fp)
	lw $t1, 0($t0)
	sw $t1, -4188($fp)
	addi $t0, $fp, -72
	sw $t0, -4192($fp)
	li $t0, 0
	sw $t0, -4196($fp)
	li $t0, 4
	lw $t1, -4196($fp)
	mul $t0, $t0, $t1
	sw $t0, -4200($fp)
	lw $t0, -4200($fp)
	lw $t1, -4192($fp)
	add $t0, $t0, $t1
	sw $t0, -4204($fp)
	lw $t0, -4204($fp)
	lw $t1, 0($t0)
	sw $t1, -4208($fp)
	li $t0, 0
	lw $t1, -4208($fp)
	sub $t0, $t0, $t1
	sw $t0, -4212($fp)
	li $t0, 0
	sw $t0, -4216($fp)
	lw $t0, -1636($fp)
	sw $t0, -4220($fp)
	lw $t1, -4220($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label330
label332:
	li $t0, 5740
	sw $t0, -4224($fp)
	lw $t1, -4224($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label330
label331:
	li $t0, 54374
	sw $t0, -4228($fp)
	lw $t1, -4228($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label330
label329:
	li $t0, 1
	sw $t0, -4216($fp)
label330:
	lw $t0, -3236($fp)
	sw $t0, -4232($fp)
	li $t0, 686
	sw $t0, -4236($fp)
	lw $t0, -4232($fp)
	lw $t1, -4236($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4240($fp)
	li $t0, 47460
	sw $t0, -4244($fp)
	lw $t0, -4240($fp)
	lw $t1, -4244($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4248($fp)
	addi $sp, $sp, -4
	lw $t0, -4156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4248($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4252($fp)
	addi $sp, $sp, 24
	lw $t1, -4252($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label324
label324:
	li $t0, 1
	sw $t0, -4152($fp)
label325:
	lw $t0, -4128($fp)
	lw $t1, -4152($fp)
	sub $t0, $t0, $t1
	sw $t0, -4256($fp)
	li $t0, 0
	sw $t0, -4260($fp)
	li $t0, 43203
	sw $t0, -4264($fp)
	lw $t1, -4264($fp)
	li $t2, 0
	bne $t1, $t2, label334
	j label333
label333:
	li $t0, 1
	sw $t0, -4260($fp)
label334:
	j label319
label321:
	lw $t0, -3980($fp)
	sw $t0, -4268($fp)
	lw $t0, -4268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -4272($fp)
	li $t0, 0
	sw $t0, -4276($fp)
	lw $t0, -3980($fp)
	sw $t0, -4280($fp)
	lw $t1, -4280($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label338
label339:
	lw $t0, -1684($fp)
	sw $t0, -4284($fp)
	lw $t1, -4284($fp)
	li $t2, 0
	bne $t1, $t2, label335
	j label338
label338:
	lw $t0, -208($fp)
	sw $t0, -4288($fp)
	lw $t1, -4288($fp)
	li $t2, 0
	bne $t1, $t2, label335
	j label337
label337:
	li $t0, 40209
	sw $t0, -4292($fp)
	li $t0, 15463
	sw $t0, -4296($fp)
	lw $t1, -4292($fp)
	lw $t2, -4296($fp)
	bge $t1, $t2, label335
	j label336
label335:
	li $t0, 1
	sw $t0, -4276($fp)
label336:
	li $t0, 4
	lw $t1, -4276($fp)
	mul $t0, $t0, $t1
	sw $t0, -4300($fp)
	lw $t0, -4300($fp)
	lw $t1, -4272($fp)
	add $t0, $t0, $t1
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	lw $t1, 0($t0)
	sw $t1, -4308($fp)
	lw $ra, -4($fp)
	lw $v0, -4308($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label250:
	j label240
label239:
	li $t0, 24944
	sw $t0, -4312($fp)
	lw $t0, -4312($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -4316($fp)
	li $t0, 0
	sw $t0, -4320($fp)
	li $t0, 44973
	sw $t0, -4324($fp)
	li $t0, 42708
	sw $t0, -4328($fp)
	lw $t1, -4324($fp)
	lw $t2, -4328($fp)
	blt $t1, $t2, label345
	j label344
label345:
	li $t0, 56877
	sw $t0, -4332($fp)
	lw $t1, -4332($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label344
label343:
	li $t0, 1
	sw $t0, -4320($fp)
label344:
	li $t0, 0
	sw $t0, -4336($fp)
	li $t0, 11680
	sw $t0, -4340($fp)
	lw $t1, -4340($fp)
	li $t2, 0
	bne $t1, $t2, label347
	j label346
label346:
	li $t0, 1
	sw $t0, -4336($fp)
label347:
	addi $sp, $sp, -4
	lw $t0, -4316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4336($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4344($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -4348($fp)
	li $t0, 12050
	sw $t0, -4352($fp)
	lw $t1, -4352($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label348
label348:
	li $t0, 1
	sw $t0, -4348($fp)
label349:
	lw $t1, -4344($fp)
	lw $t2, -4348($fp)
	ble $t1, $t2, label340
	j label341
label340:
	li $t0, 41325
	sw $t0, -4356($fp)
	li $t0, 0
	lw $t1, -4356($fp)
	sub $t0, $t0, $t1
	sw $t0, -4360($fp)
	lw $ra, -4($fp)
	lw $v0, -4360($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label342
label341:
label350:
	li $t0, 0
	sw $t0, -4364($fp)
	li $t0, 8774
	sw $t0, -4368($fp)
	lw $t1, -4368($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label353
label353:
	li $t0, 1
	sw $t0, -4364($fp)
label354:
	li $t0, 0
	sw $t0, -4372($fp)
	li $t0, 39316
	sw $t0, -4376($fp)
	lw $t0, -544($fp)
	sw $t0, -4380($fp)
	addi $sp, $sp, -4
	lw $t0, -4376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4380($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4384($fp)
	addi $sp, $sp, 12
	li $t0, 20405
	sw $t0, -4388($fp)
	lw $t0, -4384($fp)
	lw $t1, -4388($fp)
	add $t0, $t0, $t1
	sw $t0, -4392($fp)
	li $t0, 14041
	sw $t0, -4396($fp)
	lw $t0, -832($fp)
	sw $t0, -4400($fp)
	lw $t0, -4396($fp)
	lw $t1, -4400($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4404($fp)
	lw $t1, -4392($fp)
	lw $t2, -4404($fp)
	bge $t1, $t2, label355
	j label356
label355:
	li $t0, 1
	sw $t0, -4372($fp)
label356:
	lw $t1, -4364($fp)
	lw $t2, -4372($fp)
	bne $t1, $t2, label351
	j label352
label351:
	addi $t0, $fp, -176
	sw $t0, -4408($fp)
	li $t0, 0
	sw $t0, -4412($fp)
	li $t0, 41064
	sw $t0, -4416($fp)
	lw $t1, -4416($fp)
	li $t2, 0
	bne $t1, $t2, label362
	j label361
label361:
	li $t0, 1
	sw $t0, -4412($fp)
label362:
	li $t0, 4
	lw $t1, -4412($fp)
	mul $t0, $t0, $t1
	sw $t0, -4420($fp)
	lw $t0, -4420($fp)
	lw $t1, -4408($fp)
	add $t0, $t0, $t1
	sw $t0, -4424($fp)
	lw $t0, -4424($fp)
	lw $t1, 0($t0)
	sw $t1, -4428($fp)
	addi $t0, $fp, -64
	sw $t0, -4432($fp)
	li $t0, 4
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
	li $t0, 0
	sw $t0, -4452($fp)
	li $t0, 0
	sw $t0, -4456($fp)
	li $t0, 6858
	sw $t0, -4460($fp)
	li $t0, 64336
	sw $t0, -4464($fp)
	lw $t1, -4460($fp)
	lw $t2, -4464($fp)
	bne $t1, $t2, label365
	j label366
label365:
	li $t0, 1
	sw $t0, -4456($fp)
label366:
	li $t0, 29005
	sw $t0, -4468($fp)
	lw $t1, -4456($fp)
	lw $t2, -4468($fp)
	beq $t1, $t2, label363
	j label364
label363:
	li $t0, 1
	sw $t0, -4452($fp)
label364:
	lw $t0, -1648($fp)
	sw $t0, -4472($fp)
	lw $t0, -4472($fp)
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -4476($fp)
	lw $t0, -1672($fp)
	sw $t0, -4480($fp)
	lw $t0, -4480($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -4484($fp)
	li $t0, 37131
	sw $t0, -4488($fp)
	li $t0, 26950
	sw $t0, -4492($fp)
	lw $t0, -4488($fp)
	lw $t1, -4492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4496($fp)
	lw $t0, -1636($fp)
	sw $t0, -4500($fp)
	lw $t0, -4496($fp)
	lw $t1, -4500($fp)
	sub $t0, $t0, $t1
	sw $t0, -4504($fp)
	addi $sp, $sp, -4
	lw $t0, -4448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4504($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4508($fp)
	addi $sp, $sp, 24
	lw $t0, -4428($fp)
	lw $t1, -4508($fp)
	add $t0, $t0, $t1
	sw $t0, -4512($fp)
	lw $t1, -4512($fp)
	li $t2, 0
	bne $t1, $t2, label357
	j label360
label360:
	li $t0, 34745
	sw $t0, -4516($fp)
	lw $t0, -556($fp)
	sw $t0, -4520($fp)
	lw $t0, -4516($fp)
	lw $t1, -4520($fp)
	sub $t0, $t0, $t1
	sw $t0, -4524($fp)
	lw $t0, -1600($fp)
	sw $t0, -4528($fp)
	lw $t0, -4524($fp)
	lw $t1, -4528($fp)
	add $t0, $t0, $t1
	sw $t0, -4532($fp)
	lw $t1, -4532($fp)
	li $t2, 0
	bne $t1, $t2, label357
	j label358
label357:
	li $t0, 0
	sw $t0, -4536($fp)
	lw $t0, -1096($fp)
	sw $t0, -4540($fp)
	lw $t0, -760($fp)
	sw $t0, -4544($fp)
	lw $t1, -4540($fp)
	lw $t2, -4544($fp)
	bge $t1, $t2, label373
	j label374
label373:
	li $t0, 1
	sw $t0, -4536($fp)
label374:
	li $t0, 61919
	sw $t0, -4548($fp)
	lw $t1, -4536($fp)
	lw $t2, -4548($fp)
	beq $t1, $t2, label372
	j label368
label372:
	lw $t0, -1672($fp)
	sw $t0, -4552($fp)
	li $t0, 28514
	sw $t0, -4556($fp)
	lw $t0, -4552($fp)
	lw $t1, -4556($fp)
	sub $t0, $t0, $t1
	sw $t0, -4560($fp)
	lw $t1, -4560($fp)
	li $t2, 0
	bne $t1, $t2, label371
	j label368
label371:
	li $t0, 0
	sw $t0, -4564($fp)
	li $t0, 40105
	sw $t0, -4568($fp)
	li $t0, 32858
	sw $t0, -4572($fp)
	lw $t1, -4568($fp)
	lw $t2, -4572($fp)
	beq $t1, $t2, label375
	j label376
label375:
	li $t0, 1
	sw $t0, -4564($fp)
label376:
	lw $t0, -808($fp)
	sw $t0, -4576($fp)
	lw $t1, -4564($fp)
	lw $t2, -4576($fp)
	beq $t1, $t2, label370
	j label368
label370:
	lw $t0, -544($fp)
	sw $t0, -4580($fp)
	lw $t1, -4580($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label368
label367:
	lw $t0, -832($fp)
	sw $t0, -4584($fp)
	li $t0, 0
	lw $t1, -4584($fp)
	sub $t0, $t0, $t1
	sw $t0, -4588($fp)
	j label369
label368:
	lw $t0, -1492($fp)
	sw $t0, -4592($fp)
	lw $ra, -4($fp)
	lw $v0, -4592($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label369:
	j label359
label358:
	lw $t0, -784($fp)
	sw $t0, -4596($fp)
label359:
	j label350
label352:
label342:
label240:
	j label203
label205:
	j label190
label189:
	li $t0, 34510
	sw $t0, -4696($fp)
	lw $t0, -4696($fp)
	sw $t0, -4700($fp)
	lw $t0, -4700($fp)
	sw $t0, -4704($fp)
	li $t0, 16746
	sw $t0, -4708($fp)
	lw $t0, -4708($fp)
	sw $t0, -4712($fp)
	lw $t0, -4712($fp)
	sw $t0, -4716($fp)
	li $t0, 18135
	sw $t0, -4720($fp)
	lw $t0, -4720($fp)
	sw $t0, -4724($fp)
	lw $t0, -4724($fp)
	sw $t0, -4728($fp)
	li $t0, 31044
	sw $t0, -4732($fp)
	addi $t0, $fp, -4616
	sw $t0, -4736($fp)
	li $t0, 0
	sw $t0, -4740($fp)
	lw $t0, -4740($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4744($fp)
	lw $t0, -4736($fp)
	lw $t1, -4744($fp)
	add $t0, $t0, $t1
	sw $t0, -4748($fp)
	lw $t0, -4732($fp)
	lw $t1, -4748($fp)
	sw $t0, 0($t1)
	lw $t0, -4748($fp)
	lw $t1, 0($t0)
	sw $t1, -4752($fp)
	li $t0, 59950
	sw $t0, -4756($fp)
	addi $t0, $fp, -4616
	sw $t0, -4760($fp)
	li $t0, 1
	sw $t0, -4764($fp)
	lw $t0, -4764($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4768($fp)
	lw $t0, -4760($fp)
	lw $t1, -4768($fp)
	add $t0, $t0, $t1
	sw $t0, -4772($fp)
	lw $t0, -4756($fp)
	lw $t1, -4772($fp)
	sw $t0, 0($t1)
	lw $t0, -4772($fp)
	lw $t1, 0($t0)
	sw $t1, -4776($fp)
	li $t0, 58344
	sw $t0, -4780($fp)
	addi $t0, $fp, -4616
	sw $t0, -4784($fp)
	li $t0, 2
	sw $t0, -4788($fp)
	lw $t0, -4788($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4792($fp)
	lw $t0, -4784($fp)
	lw $t1, -4792($fp)
	add $t0, $t0, $t1
	sw $t0, -4796($fp)
	lw $t0, -4780($fp)
	lw $t1, -4796($fp)
	sw $t0, 0($t1)
	lw $t0, -4796($fp)
	lw $t1, 0($t0)
	sw $t1, -4800($fp)
	li $t0, 46507
	sw $t0, -4804($fp)
	addi $t0, $fp, -4616
	sw $t0, -4808($fp)
	li $t0, 3
	sw $t0, -4812($fp)
	lw $t0, -4812($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4816($fp)
	lw $t0, -4808($fp)
	lw $t1, -4816($fp)
	add $t0, $t0, $t1
	sw $t0, -4820($fp)
	lw $t0, -4804($fp)
	lw $t1, -4820($fp)
	sw $t0, 0($t1)
	lw $t0, -4820($fp)
	lw $t1, 0($t0)
	sw $t1, -4824($fp)
	li $t0, 6094
	sw $t0, -4828($fp)
	addi $t0, $fp, -4616
	sw $t0, -4832($fp)
	li $t0, 4
	sw $t0, -4836($fp)
	lw $t0, -4836($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4840($fp)
	lw $t0, -4832($fp)
	lw $t1, -4840($fp)
	add $t0, $t0, $t1
	sw $t0, -4844($fp)
	lw $t0, -4828($fp)
	lw $t1, -4844($fp)
	sw $t0, 0($t1)
	lw $t0, -4844($fp)
	lw $t1, 0($t0)
	sw $t1, -4848($fp)
	li $t0, 37781
	sw $t0, -4852($fp)
	lw $t0, -4852($fp)
	sw $t0, -4856($fp)
	lw $t0, -4856($fp)
	sw $t0, -4860($fp)
	li $t0, 23680
	sw $t0, -4864($fp)
	lw $t0, -4864($fp)
	sw $t0, -4868($fp)
	lw $t0, -4868($fp)
	sw $t0, -4872($fp)
	li $t0, 62971
	sw $t0, -4876($fp)
	lw $t0, -4876($fp)
	sw $t0, -4880($fp)
	lw $t0, -4880($fp)
	sw $t0, -4884($fp)
	li $t0, 62725
	sw $t0, -4888($fp)
	addi $t0, $fp, -4652
	sw $t0, -4892($fp)
	li $t0, 0
	sw $t0, -4896($fp)
	lw $t0, -4896($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4900($fp)
	lw $t0, -4892($fp)
	lw $t1, -4900($fp)
	add $t0, $t0, $t1
	sw $t0, -4904($fp)
	lw $t0, -4888($fp)
	lw $t1, -4904($fp)
	sw $t0, 0($t1)
	lw $t0, -4904($fp)
	lw $t1, 0($t0)
	sw $t1, -4908($fp)
	li $t0, 35730
	sw $t0, -4912($fp)
	addi $t0, $fp, -4652
	sw $t0, -4916($fp)
	li $t0, 1
	sw $t0, -4920($fp)
	lw $t0, -4920($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4924($fp)
	lw $t0, -4916($fp)
	lw $t1, -4924($fp)
	add $t0, $t0, $t1
	sw $t0, -4928($fp)
	lw $t0, -4912($fp)
	lw $t1, -4928($fp)
	sw $t0, 0($t1)
	lw $t0, -4928($fp)
	lw $t1, 0($t0)
	sw $t1, -4932($fp)
	li $t0, 38761
	sw $t0, -4936($fp)
	addi $t0, $fp, -4652
	sw $t0, -4940($fp)
	li $t0, 2
	sw $t0, -4944($fp)
	lw $t0, -4944($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4948($fp)
	lw $t0, -4940($fp)
	lw $t1, -4948($fp)
	add $t0, $t0, $t1
	sw $t0, -4952($fp)
	lw $t0, -4936($fp)
	lw $t1, -4952($fp)
	sw $t0, 0($t1)
	lw $t0, -4952($fp)
	lw $t1, 0($t0)
	sw $t1, -4956($fp)
	li $t0, 5963
	sw $t0, -4960($fp)
	addi $t0, $fp, -4652
	sw $t0, -4964($fp)
	li $t0, 3
	sw $t0, -4968($fp)
	lw $t0, -4968($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4972($fp)
	lw $t0, -4964($fp)
	lw $t1, -4972($fp)
	add $t0, $t0, $t1
	sw $t0, -4976($fp)
	lw $t0, -4960($fp)
	lw $t1, -4976($fp)
	sw $t0, 0($t1)
	lw $t0, -4976($fp)
	lw $t1, 0($t0)
	sw $t1, -4980($fp)
	li $t0, 9510
	sw $t0, -4984($fp)
	addi $t0, $fp, -4652
	sw $t0, -4988($fp)
	li $t0, 4
	sw $t0, -4992($fp)
	lw $t0, -4992($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4996($fp)
	lw $t0, -4988($fp)
	lw $t1, -4996($fp)
	add $t0, $t0, $t1
	sw $t0, -5000($fp)
	lw $t0, -4984($fp)
	lw $t1, -5000($fp)
	sw $t0, 0($t1)
	lw $t0, -5000($fp)
	lw $t1, 0($t0)
	sw $t1, -5004($fp)
	li $t0, 59166
	sw $t0, -5008($fp)
	addi $t0, $fp, -4652
	sw $t0, -5012($fp)
	li $t0, 5
	sw $t0, -5016($fp)
	lw $t0, -5016($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5020($fp)
	lw $t0, -5012($fp)
	lw $t1, -5020($fp)
	add $t0, $t0, $t1
	sw $t0, -5024($fp)
	lw $t0, -5008($fp)
	lw $t1, -5024($fp)
	sw $t0, 0($t1)
	lw $t0, -5024($fp)
	lw $t1, 0($t0)
	sw $t1, -5028($fp)
	li $t0, 20004
	sw $t0, -5032($fp)
	addi $t0, $fp, -4652
	sw $t0, -5036($fp)
	li $t0, 6
	sw $t0, -5040($fp)
	lw $t0, -5040($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5044($fp)
	lw $t0, -5036($fp)
	lw $t1, -5044($fp)
	add $t0, $t0, $t1
	sw $t0, -5048($fp)
	lw $t0, -5032($fp)
	lw $t1, -5048($fp)
	sw $t0, 0($t1)
	lw $t0, -5048($fp)
	lw $t1, 0($t0)
	sw $t1, -5052($fp)
	li $t0, 50575
	sw $t0, -5056($fp)
	addi $t0, $fp, -4652
	sw $t0, -5060($fp)
	li $t0, 7
	sw $t0, -5064($fp)
	lw $t0, -5064($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5068($fp)
	lw $t0, -5060($fp)
	lw $t1, -5068($fp)
	add $t0, $t0, $t1
	sw $t0, -5072($fp)
	lw $t0, -5056($fp)
	lw $t1, -5072($fp)
	sw $t0, 0($t1)
	lw $t0, -5072($fp)
	lw $t1, 0($t0)
	sw $t1, -5076($fp)
	li $t0, 30762
	sw $t0, -5080($fp)
	addi $t0, $fp, -4652
	sw $t0, -5084($fp)
	li $t0, 8
	sw $t0, -5088($fp)
	lw $t0, -5088($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5092($fp)
	lw $t0, -5084($fp)
	lw $t1, -5092($fp)
	add $t0, $t0, $t1
	sw $t0, -5096($fp)
	lw $t0, -5080($fp)
	lw $t1, -5096($fp)
	sw $t0, 0($t1)
	lw $t0, -5096($fp)
	lw $t1, 0($t0)
	sw $t1, -5100($fp)
	li $t0, 46955
	sw $t0, -5104($fp)
	lw $t0, -5104($fp)
	sw $t0, -5108($fp)
	lw $t0, -5108($fp)
	sw $t0, -5112($fp)
	li $t0, 57433
	sw $t0, -5116($fp)
	lw $t0, -5116($fp)
	sw $t0, -5120($fp)
	lw $t0, -5120($fp)
	sw $t0, -5124($fp)
	li $t0, 29562
	sw $t0, -5128($fp)
	lw $t0, -5128($fp)
	sw $t0, -5132($fp)
	lw $t0, -5132($fp)
	sw $t0, -5136($fp)
	li $t0, 10424
	sw $t0, -5140($fp)
	addi $t0, $fp, -4692
	sw $t0, -5144($fp)
	li $t0, 0
	sw $t0, -5148($fp)
	lw $t0, -5148($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5152($fp)
	lw $t0, -5144($fp)
	lw $t1, -5152($fp)
	add $t0, $t0, $t1
	sw $t0, -5156($fp)
	lw $t0, -5140($fp)
	lw $t1, -5156($fp)
	sw $t0, 0($t1)
	lw $t0, -5156($fp)
	lw $t1, 0($t0)
	sw $t1, -5160($fp)
	li $t0, 64978
	sw $t0, -5164($fp)
	addi $t0, $fp, -4692
	sw $t0, -5168($fp)
	li $t0, 1
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5176($fp)
	lw $t0, -5168($fp)
	lw $t1, -5176($fp)
	add $t0, $t0, $t1
	sw $t0, -5180($fp)
	lw $t0, -5164($fp)
	lw $t1, -5180($fp)
	sw $t0, 0($t1)
	lw $t0, -5180($fp)
	lw $t1, 0($t0)
	sw $t1, -5184($fp)
	li $t0, 10286
	sw $t0, -5188($fp)
	addi $t0, $fp, -4692
	sw $t0, -5192($fp)
	li $t0, 2
	sw $t0, -5196($fp)
	lw $t0, -5196($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5200($fp)
	lw $t0, -5192($fp)
	lw $t1, -5200($fp)
	add $t0, $t0, $t1
	sw $t0, -5204($fp)
	lw $t0, -5188($fp)
	lw $t1, -5204($fp)
	sw $t0, 0($t1)
	lw $t0, -5204($fp)
	lw $t1, 0($t0)
	sw $t1, -5208($fp)
	li $t0, 45169
	sw $t0, -5212($fp)
	addi $t0, $fp, -4692
	sw $t0, -5216($fp)
	li $t0, 3
	sw $t0, -5220($fp)
	lw $t0, -5220($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5224($fp)
	lw $t0, -5216($fp)
	lw $t1, -5224($fp)
	add $t0, $t0, $t1
	sw $t0, -5228($fp)
	lw $t0, -5212($fp)
	lw $t1, -5228($fp)
	sw $t0, 0($t1)
	lw $t0, -5228($fp)
	lw $t1, 0($t0)
	sw $t1, -5232($fp)
	li $t0, 61361
	sw $t0, -5236($fp)
	addi $t0, $fp, -4692
	sw $t0, -5240($fp)
	li $t0, 4
	sw $t0, -5244($fp)
	lw $t0, -5244($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5248($fp)
	lw $t0, -5240($fp)
	lw $t1, -5248($fp)
	add $t0, $t0, $t1
	sw $t0, -5252($fp)
	lw $t0, -5236($fp)
	lw $t1, -5252($fp)
	sw $t0, 0($t1)
	lw $t0, -5252($fp)
	lw $t1, 0($t0)
	sw $t1, -5256($fp)
	li $t0, 38800
	sw $t0, -5260($fp)
	addi $t0, $fp, -4692
	sw $t0, -5264($fp)
	li $t0, 5
	sw $t0, -5268($fp)
	lw $t0, -5268($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5272($fp)
	lw $t0, -5264($fp)
	lw $t1, -5272($fp)
	add $t0, $t0, $t1
	sw $t0, -5276($fp)
	lw $t0, -5260($fp)
	lw $t1, -5276($fp)
	sw $t0, 0($t1)
	lw $t0, -5276($fp)
	lw $t1, 0($t0)
	sw $t1, -5280($fp)
	li $t0, 19738
	sw $t0, -5284($fp)
	addi $t0, $fp, -4692
	sw $t0, -5288($fp)
	li $t0, 6
	sw $t0, -5292($fp)
	lw $t0, -5292($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5296($fp)
	lw $t0, -5288($fp)
	lw $t1, -5296($fp)
	add $t0, $t0, $t1
	sw $t0, -5300($fp)
	lw $t0, -5284($fp)
	lw $t1, -5300($fp)
	sw $t0, 0($t1)
	lw $t0, -5300($fp)
	lw $t1, 0($t0)
	sw $t1, -5304($fp)
	li $t0, 28683
	sw $t0, -5308($fp)
	addi $t0, $fp, -4692
	sw $t0, -5312($fp)
	li $t0, 7
	sw $t0, -5316($fp)
	lw $t0, -5316($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5320($fp)
	lw $t0, -5312($fp)
	lw $t1, -5320($fp)
	add $t0, $t0, $t1
	sw $t0, -5324($fp)
	lw $t0, -5308($fp)
	lw $t1, -5324($fp)
	sw $t0, 0($t1)
	lw $t0, -5324($fp)
	lw $t1, 0($t0)
	sw $t1, -5328($fp)
	li $t0, 7775
	sw $t0, -5332($fp)
	addi $t0, $fp, -4692
	sw $t0, -5336($fp)
	li $t0, 8
	sw $t0, -5340($fp)
	lw $t0, -5340($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5344($fp)
	lw $t0, -5336($fp)
	lw $t1, -5344($fp)
	add $t0, $t0, $t1
	sw $t0, -5348($fp)
	lw $t0, -5332($fp)
	lw $t1, -5348($fp)
	sw $t0, 0($t1)
	lw $t0, -5348($fp)
	lw $t1, 0($t0)
	sw $t1, -5352($fp)
	li $t0, 36484
	sw $t0, -5356($fp)
	addi $t0, $fp, -4692
	sw $t0, -5360($fp)
	li $t0, 9
	sw $t0, -5364($fp)
	lw $t0, -5364($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5368($fp)
	lw $t0, -5360($fp)
	lw $t1, -5368($fp)
	add $t0, $t0, $t1
	sw $t0, -5372($fp)
	lw $t0, -5356($fp)
	lw $t1, -5372($fp)
	sw $t0, 0($t1)
	lw $t0, -5372($fp)
	lw $t1, 0($t0)
	sw $t1, -5376($fp)
	li $t0, 0
	sw $t0, -5380($fp)
	lw $t0, -1048($fp)
	sw $t0, -5384($fp)
	li $t0, 46818
	sw $t0, -5388($fp)
	lw $t1, -5384($fp)
	lw $t2, -5388($fp)
	bne $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -5380($fp)
label381:
	lw $t0, -5380($fp)
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	sw $t0, -5392($fp)
	lw $t0, -5392($fp)
	sw $t0, -4856($fp)
	lw $t0, -4856($fp)
	sw $t0, -5396($fp)
	lw $t1, -5396($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label378
label377:
	li $t0, 38819
	sw $t0, -5400($fp)
	lw $t0, -1660($fp)
	sw $t0, -5404($fp)
	lw $t0, -5404($fp)
	sw $t0, -5108($fp)
	lw $t0, -5108($fp)
	sw $t0, -5408($fp)
	li $t0, 0
	sw $t0, -5412($fp)
	lw $t0, -388($fp)
	sw $t0, -5416($fp)
	lw $t1, -5416($fp)
	li $t2, 0
	bne $t1, $t2, label383
	j label382
label382:
	li $t0, 1
	sw $t0, -5412($fp)
label383:
	addi $sp, $sp, -4
	lw $t0, -5408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5412($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5420($fp)
	addi $sp, $sp, 12
	lw $t0, -5400($fp)
	lw $t1, -5420($fp)
	mul $t0, $t0, $t1
	sw $t0, -5424($fp)
	li $t0, 0
	sw $t0, -5428($fp)
	lw $t0, -196($fp)
	sw $t0, -5432($fp)
	lw $t1, -5432($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label384
label384:
	li $t0, 1
	sw $t0, -5428($fp)
label385:
	li $t0, 0
	lw $t1, -5428($fp)
	sub $t0, $t0, $t1
	sw $t0, -5436($fp)
	lw $t0, -5424($fp)
	lw $t1, -5436($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5440($fp)
	li $t0, 0
	lw $t1, -5440($fp)
	sub $t0, $t0, $t1
	sw $t0, -5444($fp)
	lw $t0, -5132($fp)
	sw $t0, -5448($fp)
	li $t0, 0
	lw $t1, -5448($fp)
	sub $t0, $t0, $t1
	sw $t0, -5452($fp)
	lw $t0, -5444($fp)
	lw $t1, -5452($fp)
	sub $t0, $t0, $t1
	sw $t0, -5456($fp)
	j label379
label378:
	li $t0, 39626
	sw $t0, -5460($fp)
	lw $t0, -5460($fp)
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -5464($fp)
	lw $t0, -4712($fp)
	sw $t0, -5468($fp)
	lw $t0, -5468($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -5472($fp)
	li $t0, 0
	sw $t0, -5476($fp)
	li $t0, 30898
	sw $t0, -5480($fp)
	lw $t1, -5480($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label389
label389:
	li $t0, 1
	sw $t0, -5476($fp)
label390:
	li $t0, 0
	lw $t1, -5476($fp)
	sub $t0, $t0, $t1
	sw $t0, -5484($fp)
	addi $sp, $sp, -4
	lw $t0, -5464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5484($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5488($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -5488($fp)
	sub $t0, $t0, $t1
	sw $t0, -5492($fp)
	lw $t1, -5492($fp)
	li $t2, 0
	bne $t1, $t2, label386
	j label387
label386:
	li $t0, 0
	sw $t0, -5496($fp)
	addi $t0, $fp, -172
	sw $t0, -5500($fp)
	li $t0, 19790
	sw $t0, -5504($fp)
	lw $t0, -520($fp)
	sw $t0, -5508($fp)
	lw $t0, -5504($fp)
	lw $t1, -5508($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5512($fp)
	li $t0, 4
	lw $t1, -5512($fp)
	mul $t0, $t0, $t1
	sw $t0, -5516($fp)
	lw $t0, -5516($fp)
	lw $t1, -5500($fp)
	add $t0, $t0, $t1
	sw $t0, -5520($fp)
	lw $t0, -5520($fp)
	lw $t1, 0($t0)
	sw $t1, -5524($fp)
	li $t0, 36992
	sw $t0, -5528($fp)
	lw $t0, -5524($fp)
	lw $t1, -5528($fp)
	add $t0, $t0, $t1
	sw $t0, -5532($fp)
	lw $t0, -748($fp)
	sw $t0, -5536($fp)
	lw $t1, -5532($fp)
	lw $t2, -5536($fp)
	ble $t1, $t2, label391
	j label392
label391:
	li $t0, 1
	sw $t0, -5496($fp)
label392:
	j label388
label387:
	lw $t0, -1636($fp)
	sw $t0, -5540($fp)
	li $t0, 0
	sw $t0, -5544($fp)
	lw $t0, -736($fp)
	sw $t0, -5548($fp)
	li $t0, 0
	lw $t1, -5548($fp)
	sub $t0, $t0, $t1
	sw $t0, -5552($fp)
	addi $sp, $sp, -4
	lw $t0, -5552($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5556($fp)
	addi $sp, $sp, 8
	lw $t1, -5556($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label396
label396:
	li $t0, 1
	sw $t0, -5544($fp)
label397:
	li $t0, 0
	lw $t1, -5544($fp)
	sub $t0, $t0, $t1
	sw $t0, -5560($fp)
	lw $t1, -5540($fp)
	lw $t2, -5560($fp)
	ble $t1, $t2, label393
	j label394
label393:
label398:
	lw $t0, -832($fp)
	sw $t0, -5564($fp)
	li $t0, 11872
	sw $t0, -5568($fp)
	lw $t0, -5564($fp)
	lw $t1, -5568($fp)
	mul $t0, $t0, $t1
	sw $t0, -5572($fp)
	lw $t0, -1576($fp)
	sw $t0, -5576($fp)
	lw $t0, -5572($fp)
	lw $t1, -5576($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5580($fp)
	lw $t0, -5580($fp)
	sw $t0, -4880($fp)
	lw $t0, -4880($fp)
	sw $t0, -5584($fp)
	lw $t1, -5584($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label400
label399:
	addi $t0, $fp, -24
	sw $t0, -5588($fp)
	li $t0, 0
	sw $t0, -5592($fp)
	li $t0, 43470
	sw $t0, -5596($fp)
	lw $t1, -5596($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label401
label401:
	li $t0, 1
	sw $t0, -5592($fp)
label402:
	li $t0, 4
	lw $t1, -5592($fp)
	mul $t0, $t0, $t1
	sw $t0, -5600($fp)
	lw $t0, -5600($fp)
	lw $t1, -5588($fp)
	add $t0, $t0, $t1
	sw $t0, -5604($fp)
	lw $t0, -5604($fp)
	lw $t1, 0($t0)
	sw $t1, -5608($fp)
	j label398
label400:
	j label395
label394:
	li $t0, 0
	sw $t0, -5612($fp)
	addi $t0, $fp, -136
	sw $t0, -5616($fp)
	li $t0, 0
	sw $t0, -5620($fp)
	lw $t0, 4($fp)
	sw $t0, -5624($fp)
	li $t0, 34428
	sw $t0, -5628($fp)
	lw $t0, -5624($fp)
	lw $t1, -5628($fp)
	add $t0, $t0, $t1
	sw $t0, -5632($fp)
	li $t0, 9061
	sw $t0, -5636($fp)
	lw $t1, -5632($fp)
	lw $t2, -5636($fp)
	bgt $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -5620($fp)
label407:
	li $t0, 4
	lw $t1, -5620($fp)
	mul $t0, $t0, $t1
	sw $t0, -5640($fp)
	lw $t0, -5640($fp)
	lw $t1, -5616($fp)
	add $t0, $t0, $t1
	sw $t0, -5644($fp)
	lw $t0, -5644($fp)
	lw $t1, 0($t0)
	sw $t1, -5648($fp)
	lw $t1, -5648($fp)
	li $t2, 0
	bne $t1, $t2, label403
	j label405
label405:
	addi $t0, $fp, -64
	sw $t0, -5652($fp)
	li $t0, 0
	sw $t0, -5656($fp)
	lw $t0, -4880($fp)
	sw $t0, -5660($fp)
	li $t0, 13664
	sw $t0, -5664($fp)
	lw $t1, -5660($fp)
	lw $t2, -5664($fp)
	bne $t1, $t2, label408
	j label409
label408:
	li $t0, 1
	sw $t0, -5656($fp)
label409:
	li $t0, 4
	lw $t1, -5656($fp)
	mul $t0, $t0, $t1
	sw $t0, -5668($fp)
	lw $t0, -5668($fp)
	lw $t1, -5652($fp)
	add $t0, $t0, $t1
	sw $t0, -5672($fp)
	lw $t0, -5672($fp)
	lw $t1, 0($t0)
	sw $t1, -5676($fp)
	lw $t1, -5676($fp)
	li $t2, 0
	bne $t1, $t2, label403
	j label404
label403:
	li $t0, 1
	sw $t0, -5612($fp)
label404:
label395:
label388:
label379:
	lw $t0, -796($fp)
	sw $t0, -5680($fp)
	li $t0, 7653
	sw $t0, -5684($fp)
	lw $t0, -5680($fp)
	lw $t1, -5684($fp)
	mul $t0, $t0, $t1
	sw $t0, -5688($fp)
	lw $t1, -5688($fp)
	li $t2, 0
	bne $t1, $t2, label410
	j label411
label410:
	li $t0, 0
	sw $t0, -5692($fp)
	li $t0, 0
	sw $t0, -5696($fp)
	addi $t0, $fp, -40
	sw $t0, -5700($fp)
	li $t0, 3
	sw $t0, -5704($fp)
	li $t0, 4
	lw $t1, -5704($fp)
	mul $t0, $t0, $t1
	sw $t0, -5708($fp)
	lw $t0, -5708($fp)
	lw $t1, -5700($fp)
	add $t0, $t0, $t1
	sw $t0, -5712($fp)
	lw $t0, -5712($fp)
	lw $t1, 0($t0)
	sw $t1, -5716($fp)
	lw $t1, -5716($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label415
label415:
	li $t0, 1
	sw $t0, -5696($fp)
label416:
	li $t0, 0
	sw $t0, -5720($fp)
	lw $t0, -352($fp)
	sw $t0, -5724($fp)
	li $t0, 61607
	sw $t0, -5728($fp)
	lw $t0, -5724($fp)
	lw $t1, -5728($fp)
	sub $t0, $t0, $t1
	sw $t0, -5732($fp)
	lw $t1, -5732($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label418
label419:
	lw $t0, -4724($fp)
	sw $t0, -5736($fp)
	lw $t1, -5736($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label418
label417:
	li $t0, 1
	sw $t0, -5720($fp)
label418:
	li $t0, 0
	sw $t0, -5740($fp)
	lw $t0, -784($fp)
	sw $t0, -5744($fp)
	lw $t0, -208($fp)
	sw $t0, -5748($fp)
	lw $t0, -5744($fp)
	lw $t1, -5748($fp)
	mul $t0, $t0, $t1
	sw $t0, -5752($fp)
	li $t0, 111
	sw $t0, -5756($fp)
	lw $t1, -5752($fp)
	lw $t2, -5756($fp)
	beq $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -5740($fp)
label421:
	addi $t0, $fp, -96
	sw $t0, -5760($fp)
	li $t0, 0
	sw $t0, -5764($fp)
	li $t0, 4
	lw $t1, -5764($fp)
	mul $t0, $t0, $t1
	sw $t0, -5768($fp)
	lw $t0, -5768($fp)
	lw $t1, -5760($fp)
	add $t0, $t0, $t1
	sw $t0, -5772($fp)
	lw $t0, -5772($fp)
	lw $t1, 0($t0)
	sw $t1, -5776($fp)
	lw $t0, -736($fp)
	sw $t0, -5780($fp)
	lw $t0, -5776($fp)
	lw $t1, -5780($fp)
	add $t0, $t0, $t1
	sw $t0, -5784($fp)
	addi $sp, $sp, -4
	lw $t0, -5720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5784($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5788($fp)
	addi $sp, $sp, 16
	li $t0, 1283
	sw $t0, -5792($fp)
	li $t0, 35029
	sw $t0, -5796($fp)
	lw $t0, -5792($fp)
	lw $t1, -5796($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5800($fp)
	li $t0, 8214
	sw $t0, -5804($fp)
	lw $t0, -5800($fp)
	lw $t1, -5804($fp)
	mul $t0, $t0, $t1
	sw $t0, -5808($fp)
	li $t0, 0
	sw $t0, -5812($fp)
	lw $t0, -196($fp)
	sw $t0, -5816($fp)
	lw $t1, -5816($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label424
label424:
	lw $t0, -5120($fp)
	sw $t0, -5820($fp)
	lw $t1, -5820($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label423
label422:
	li $t0, 1
	sw $t0, -5812($fp)
label423:
	addi $sp, $sp, -4
	lw $t0, -5788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5812($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5824($fp)
	addi $sp, $sp, 16
	lw $t1, -5696($fp)
	lw $t2, -5824($fp)
	bgt $t1, $t2, label413
	j label414
label413:
	li $t0, 1
	sw $t0, -5692($fp)
label414:
	lw $ra, -4($fp)
	lw $v0, -5692($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label411:
label425:
	li $t0, 0
	sw $t0, -5828($fp)
	addi $t0, $fp, -4616
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
	lw $t1, -5848($fp)
	li $t2, 0
	bne $t1, $t2, label428
	j label429
label428:
	li $t0, 1
	sw $t0, -5828($fp)
label429:
	li $t0, 0
	sw $t0, -5852($fp)
	lw $t0, -1576($fp)
	sw $t0, -5856($fp)
	li $t0, 6357
	sw $t0, -5860($fp)
	lw $t1, -5856($fp)
	lw $t2, -5860($fp)
	ble $t1, $t2, label430
	j label431
label430:
	li $t0, 1
	sw $t0, -5852($fp)
label431:
	addi $sp, $sp, -4
	lw $t0, -5852($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5864($fp)
	addi $sp, $sp, 8
	lw $t0, -5828($fp)
	lw $t1, -5864($fp)
	mul $t0, $t0, $t1
	sw $t0, -5868($fp)
	li $t0, 0
	sw $t0, -5872($fp)
	li $t0, 6505
	sw $t0, -5876($fp)
	lw $t1, -5876($fp)
	li $t2, 0
	bne $t1, $t2, label433
	j label432
label432:
	li $t0, 1
	sw $t0, -5872($fp)
label433:
	li $t0, 0
	lw $t1, -5872($fp)
	sub $t0, $t0, $t1
	sw $t0, -5880($fp)
	lw $t0, -544($fp)
	sw $t0, -5884($fp)
	lw $t0, -5884($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -5888($fp)
	lw $t0, -808($fp)
	sw $t0, -5892($fp)
	addi $sp, $sp, -4
	lw $t0, -5888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5892($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5896($fp)
	addi $sp, $sp, 12
	lw $t0, -1672($fp)
	sw $t0, -5900($fp)
	lw $t0, -5900($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -5904($fp)
	addi $sp, $sp, -4
	lw $t0, -5880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5904($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5908($fp)
	addi $sp, $sp, 16
	lw $t0, -5868($fp)
	lw $t1, -5908($fp)
	mul $t0, $t0, $t1
	sw $t0, -5912($fp)
	lw $t1, -5912($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label427
label426:
	li $t0, 60914
	sw $t0, -5916($fp)
	li $t0, 1
	sw $t0, -5920($fp)
	lw $t0, -5916($fp)
	lw $t1, -5920($fp)
	mul $t0, $t0, $t1
	sw $t0, -5924($fp)
	addi $t0, $fp, -64
	sw $t0, -5928($fp)
	li $t0, 5
	sw $t0, -5932($fp)
	li $t0, 4
	lw $t1, -5932($fp)
	mul $t0, $t0, $t1
	sw $t0, -5936($fp)
	lw $t0, -5936($fp)
	lw $t1, -5928($fp)
	add $t0, $t0, $t1
	sw $t0, -5940($fp)
	lw $t0, -5940($fp)
	lw $t1, 0($t0)
	sw $t1, -5944($fp)
	lw $t0, -832($fp)
	sw $t0, -5948($fp)
	li $t0, 0
	lw $t1, -5948($fp)
	sub $t0, $t0, $t1
	sw $t0, -5952($fp)
	lw $t0, -5944($fp)
	lw $t1, -5952($fp)
	mul $t0, $t0, $t1
	sw $t0, -5956($fp)
	lw $t0, -5924($fp)
	lw $t1, -5956($fp)
	add $t0, $t0, $t1
	sw $t0, -5960($fp)
	lw $t1, -5960($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label435
label434:
	li $t0, 0
	sw $t0, -5964($fp)
	addi $t0, $fp, -4692
	sw $t0, -5968($fp)
	li $t0, 2
	sw $t0, -5972($fp)
	li $t0, 4
	lw $t1, -5972($fp)
	mul $t0, $t0, $t1
	sw $t0, -5976($fp)
	lw $t0, -5976($fp)
	lw $t1, -5968($fp)
	add $t0, $t0, $t1
	sw $t0, -5980($fp)
	lw $t0, -5980($fp)
	lw $t1, 0($t0)
	sw $t1, -5984($fp)
	lw $t1, -5984($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label437
label437:
	li $t0, 1
	sw $t0, -5964($fp)
label438:
	lw $t0, -4700($fp)
	sw $t0, -5988($fp)
	lw $t0, -5964($fp)
	lw $t1, -5988($fp)
	mul $t0, $t0, $t1
	sw $t0, -5992($fp)
	j label436
label435:
	li $t0, 0
	sw $t0, -5996($fp)
	addi $t0, $fp, -24
	sw $t0, -6000($fp)
	li $t0, 0
	sw $t0, -6004($fp)
	li $t0, 5343
	sw $t0, -6008($fp)
	lw $t0, -4868($fp)
	sw $t0, -6012($fp)
	lw $t1, -6008($fp)
	lw $t2, -6012($fp)
	bgt $t1, $t2, label441
	j label442
label441:
	li $t0, 1
	sw $t0, -6004($fp)
label442:
	li $t0, 4
	lw $t1, -6004($fp)
	mul $t0, $t0, $t1
	sw $t0, -6016($fp)
	lw $t0, -6016($fp)
	lw $t1, -6000($fp)
	add $t0, $t0, $t1
	sw $t0, -6020($fp)
	lw $t0, -6020($fp)
	lw $t1, 0($t0)
	sw $t1, -6024($fp)
	li $t0, 26216
	sw $t0, -6028($fp)
	lw $t1, -6024($fp)
	lw $t2, -6028($fp)
	beq $t1, $t2, label439
	j label440
label439:
	li $t0, 1
	sw $t0, -5996($fp)
label440:
	lw $ra, -4($fp)
	lw $v0, -5996($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label436:
	j label425
label427:
label443:
	li $t0, 0
	sw $t0, -6032($fp)
	li $t0, 28090
	sw $t0, -6036($fp)
	lw $t1, -6036($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label446
label446:
	li $t0, 1
	sw $t0, -6032($fp)
label447:
	li $t0, 0
	sw $t0, -6040($fp)
	lw $t0, -736($fp)
	sw $t0, -6044($fp)
	li $t0, 0
	lw $t1, -6044($fp)
	sub $t0, $t0, $t1
	sw $t0, -6048($fp)
	lw $t1, -6048($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label448
label448:
	li $t0, 1
	sw $t0, -6040($fp)
label449:
	lw $t0, -6032($fp)
	lw $t1, -6040($fp)
	mul $t0, $t0, $t1
	sw $t0, -6052($fp)
	lw $t1, -6052($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label445
label444:
	li $t0, 44970
	sw $t0, -6092($fp)
	lw $t0, -6092($fp)
	sw $t0, -6096($fp)
	lw $t0, -6096($fp)
	sw $t0, -6100($fp)
	li $t0, 46006
	sw $t0, -6104($fp)
	addi $t0, $fp, -6088
	sw $t0, -6108($fp)
	li $t0, 0
	sw $t0, -6112($fp)
	lw $t0, -6112($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6116($fp)
	lw $t0, -6108($fp)
	lw $t1, -6116($fp)
	add $t0, $t0, $t1
	sw $t0, -6120($fp)
	lw $t0, -6104($fp)
	lw $t1, -6120($fp)
	sw $t0, 0($t1)
	lw $t0, -6120($fp)
	lw $t1, 0($t0)
	sw $t1, -6124($fp)
	li $t0, 65083
	sw $t0, -6128($fp)
	addi $t0, $fp, -6088
	sw $t0, -6132($fp)
	li $t0, 1
	sw $t0, -6136($fp)
	lw $t0, -6136($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6140($fp)
	lw $t0, -6132($fp)
	lw $t1, -6140($fp)
	add $t0, $t0, $t1
	sw $t0, -6144($fp)
	lw $t0, -6128($fp)
	lw $t1, -6144($fp)
	sw $t0, 0($t1)
	lw $t0, -6144($fp)
	lw $t1, 0($t0)
	sw $t1, -6148($fp)
	li $t0, 56842
	sw $t0, -6152($fp)
	addi $t0, $fp, -6088
	sw $t0, -6156($fp)
	li $t0, 2
	sw $t0, -6160($fp)
	lw $t0, -6160($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6164($fp)
	lw $t0, -6156($fp)
	lw $t1, -6164($fp)
	add $t0, $t0, $t1
	sw $t0, -6168($fp)
	lw $t0, -6152($fp)
	lw $t1, -6168($fp)
	sw $t0, 0($t1)
	lw $t0, -6168($fp)
	lw $t1, 0($t0)
	sw $t1, -6172($fp)
	li $t0, 23941
	sw $t0, -6176($fp)
	addi $t0, $fp, -6088
	sw $t0, -6180($fp)
	li $t0, 3
	sw $t0, -6184($fp)
	lw $t0, -6184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6188($fp)
	lw $t0, -6180($fp)
	lw $t1, -6188($fp)
	add $t0, $t0, $t1
	sw $t0, -6192($fp)
	lw $t0, -6176($fp)
	lw $t1, -6192($fp)
	sw $t0, 0($t1)
	lw $t0, -6192($fp)
	lw $t1, 0($t0)
	sw $t1, -6196($fp)
	li $t0, 33975
	sw $t0, -6200($fp)
	addi $t0, $fp, -6088
	sw $t0, -6204($fp)
	li $t0, 4
	sw $t0, -6208($fp)
	lw $t0, -6208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6212($fp)
	lw $t0, -6204($fp)
	lw $t1, -6212($fp)
	add $t0, $t0, $t1
	sw $t0, -6216($fp)
	lw $t0, -6200($fp)
	lw $t1, -6216($fp)
	sw $t0, 0($t1)
	lw $t0, -6216($fp)
	lw $t1, 0($t0)
	sw $t1, -6220($fp)
	li $t0, 367
	sw $t0, -6224($fp)
	addi $t0, $fp, -6088
	sw $t0, -6228($fp)
	li $t0, 5
	sw $t0, -6232($fp)
	lw $t0, -6232($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6236($fp)
	lw $t0, -6228($fp)
	lw $t1, -6236($fp)
	add $t0, $t0, $t1
	sw $t0, -6240($fp)
	lw $t0, -6224($fp)
	lw $t1, -6240($fp)
	sw $t0, 0($t1)
	lw $t0, -6240($fp)
	lw $t1, 0($t0)
	sw $t1, -6244($fp)
	li $t0, 37605
	sw $t0, -6248($fp)
	addi $t0, $fp, -6088
	sw $t0, -6252($fp)
	li $t0, 6
	sw $t0, -6256($fp)
	lw $t0, -6256($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6260($fp)
	lw $t0, -6252($fp)
	lw $t1, -6260($fp)
	add $t0, $t0, $t1
	sw $t0, -6264($fp)
	lw $t0, -6248($fp)
	lw $t1, -6264($fp)
	sw $t0, 0($t1)
	lw $t0, -6264($fp)
	lw $t1, 0($t0)
	sw $t1, -6268($fp)
	li $t0, 41628
	sw $t0, -6272($fp)
	addi $t0, $fp, -6088
	sw $t0, -6276($fp)
	li $t0, 7
	sw $t0, -6280($fp)
	lw $t0, -6280($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6284($fp)
	lw $t0, -6276($fp)
	lw $t1, -6284($fp)
	add $t0, $t0, $t1
	sw $t0, -6288($fp)
	lw $t0, -6272($fp)
	lw $t1, -6288($fp)
	sw $t0, 0($t1)
	lw $t0, -6288($fp)
	lw $t1, 0($t0)
	sw $t1, -6292($fp)
	li $t0, 15392
	sw $t0, -6296($fp)
	addi $t0, $fp, -6088
	sw $t0, -6300($fp)
	li $t0, 8
	sw $t0, -6304($fp)
	lw $t0, -6304($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6308($fp)
	lw $t0, -6300($fp)
	lw $t1, -6308($fp)
	add $t0, $t0, $t1
	sw $t0, -6312($fp)
	lw $t0, -6296($fp)
	lw $t1, -6312($fp)
	sw $t0, 0($t1)
	lw $t0, -6312($fp)
	lw $t1, 0($t0)
	sw $t1, -6316($fp)
	li $t0, 60780
	sw $t0, -6320($fp)
	lw $t0, -6320($fp)
	sw $t0, -6324($fp)
	lw $t0, -6324($fp)
	sw $t0, -6328($fp)
	addi $t0, $fp, -176
	sw $t0, -6332($fp)
	addi $t0, $fp, -176
	sw $t0, -6336($fp)
	lw $t0, -808($fp)
	sw $t0, -6340($fp)
	li $t0, 4
	lw $t1, -6340($fp)
	mul $t0, $t0, $t1
	sw $t0, -6344($fp)
	lw $t0, -6344($fp)
	lw $t1, -6336($fp)
	add $t0, $t0, $t1
	sw $t0, -6348($fp)
	lw $t0, -6348($fp)
	lw $t1, 0($t0)
	sw $t1, -6352($fp)
	li $t0, 4
	lw $t1, -6352($fp)
	mul $t0, $t0, $t1
	sw $t0, -6356($fp)
	lw $t0, -6356($fp)
	lw $t1, -6332($fp)
	add $t0, $t0, $t1
	sw $t0, -6360($fp)
	lw $t0, -6360($fp)
	lw $t1, 0($t0)
	sw $t1, -6364($fp)
	li $t0, 0
	sw $t0, -6368($fp)
	li $t0, 50422
	sw $t0, -6372($fp)
	lw $t1, -6372($fp)
	li $t2, 0
	bne $t1, $t2, label453
	j label451
label453:
	li $t0, 3458
	sw $t0, -6376($fp)
	lw $t1, -6376($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label451
label452:
	li $t0, 9421
	sw $t0, -6380($fp)
	lw $t1, -6380($fp)
	li $t2, 0
	bne $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -6368($fp)
label451:
	li $t0, 0
	sw $t0, -6384($fp)
	li $t0, 42911
	sw $t0, -6388($fp)
	lw $t1, -6388($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label456
label456:
	lw $t0, -1636($fp)
	sw $t0, -6392($fp)
	lw $t1, -6392($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label455
label454:
	li $t0, 1
	sw $t0, -6384($fp)
label455:
	lw $t0, -1636($fp)
	sw $t0, -6396($fp)
	addi $sp, $sp, -4
	lw $t0, -6368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6396($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6400($fp)
	addi $sp, $sp, 16
	lw $t0, -6364($fp)
	lw $t1, -6400($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6404($fp)
	lw $t0, -6096($fp)
	sw $t0, -6408($fp)
	lw $t0, -6408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6088
	sw $t0, -6412($fp)
	li $t0, 0
	sw $t0, -6416($fp)
	li $t0, 4
	lw $t1, -6416($fp)
	mul $t0, $t0, $t1
	sw $t0, -6420($fp)
	lw $t0, -6420($fp)
	lw $t1, -6412($fp)
	add $t0, $t0, $t1
	sw $t0, -6424($fp)
	lw $t0, -6424($fp)
	lw $t1, 0($t0)
	sw $t1, -6428($fp)
	lw $t0, -6428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6088
	sw $t0, -6432($fp)
	li $t0, 1
	sw $t0, -6436($fp)
	li $t0, 4
	lw $t1, -6436($fp)
	mul $t0, $t0, $t1
	sw $t0, -6440($fp)
	lw $t0, -6440($fp)
	lw $t1, -6432($fp)
	add $t0, $t0, $t1
	sw $t0, -6444($fp)
	lw $t0, -6444($fp)
	lw $t1, 0($t0)
	sw $t1, -6448($fp)
	lw $t0, -6448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6088
	sw $t0, -6452($fp)
	li $t0, 2
	sw $t0, -6456($fp)
	li $t0, 4
	lw $t1, -6456($fp)
	mul $t0, $t0, $t1
	sw $t0, -6460($fp)
	lw $t0, -6460($fp)
	lw $t1, -6452($fp)
	add $t0, $t0, $t1
	sw $t0, -6464($fp)
	lw $t0, -6464($fp)
	lw $t1, 0($t0)
	sw $t1, -6468($fp)
	lw $t0, -6468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6088
	sw $t0, -6472($fp)
	li $t0, 3
	sw $t0, -6476($fp)
	li $t0, 4
	lw $t1, -6476($fp)
	mul $t0, $t0, $t1
	sw $t0, -6480($fp)
	lw $t0, -6480($fp)
	lw $t1, -6472($fp)
	add $t0, $t0, $t1
	sw $t0, -6484($fp)
	lw $t0, -6484($fp)
	lw $t1, 0($t0)
	sw $t1, -6488($fp)
	lw $t0, -6488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6088
	sw $t0, -6492($fp)
	li $t0, 4
	sw $t0, -6496($fp)
	li $t0, 4
	lw $t1, -6496($fp)
	mul $t0, $t0, $t1
	sw $t0, -6500($fp)
	lw $t0, -6500($fp)
	lw $t1, -6492($fp)
	add $t0, $t0, $t1
	sw $t0, -6504($fp)
	lw $t0, -6504($fp)
	lw $t1, 0($t0)
	sw $t1, -6508($fp)
	lw $t0, -6508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6088
	sw $t0, -6512($fp)
	li $t0, 5
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
	addi $t0, $fp, -6088
	sw $t0, -6532($fp)
	li $t0, 6
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
	addi $t0, $fp, -6088
	sw $t0, -6552($fp)
	li $t0, 7
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
	addi $t0, $fp, -6088
	sw $t0, -6572($fp)
	li $t0, 8
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
	lw $t0, -6324($fp)
	sw $t0, -6592($fp)
	lw $t0, -6592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6596($fp)
	li $t0, 3570
	sw $t0, -6600($fp)
	li $t0, 1334
	sw $t0, -6604($fp)
	lw $t0, -6604($fp)
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -6608($fp)
	addi $sp, $sp, -4
	lw $t0, -6600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6608($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6612($fp)
	addi $sp, $sp, 12
	lw $t0, -568($fp)
	sw $t0, -6616($fp)
	lw $t0, -6612($fp)
	lw $t1, -6616($fp)
	mul $t0, $t0, $t1
	sw $t0, -6620($fp)
	lw $t0, -1672($fp)
	sw $t0, -6624($fp)
	lw $t0, -6620($fp)
	lw $t1, -6624($fp)
	sub $t0, $t0, $t1
	sw $t0, -6628($fp)
	lw $t0, -1660($fp)
	sw $t0, -6632($fp)
	lw $t0, -4856($fp)
	sw $t0, -6636($fp)
	lw $t0, -6632($fp)
	lw $t1, -6636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6640($fp)
	lw $t0, -6628($fp)
	lw $t1, -6640($fp)
	sub $t0, $t0, $t1
	sw $t0, -6644($fp)
	lw $t1, -6644($fp)
	li $t2, 0
	bne $t1, $t2, label459
	j label458
label459:
	li $t0, 0
	sw $t0, -6648($fp)
	li $t0, 5492
	sw $t0, -6652($fp)
	lw $t0, -748($fp)
	sw $t0, -6656($fp)
	lw $t0, -6652($fp)
	lw $t1, -6656($fp)
	sub $t0, $t0, $t1
	sw $t0, -6660($fp)
	lw $t0, -196($fp)
	sw $t0, -6664($fp)
	lw $t1, -6660($fp)
	lw $t2, -6664($fp)
	bgt $t1, $t2, label460
	j label461
label460:
	li $t0, 1
	sw $t0, -6648($fp)
label461:
	li $t0, 28207
	sw $t0, -6668($fp)
	li $t0, 3123
	sw $t0, -6672($fp)
	lw $t0, -6668($fp)
	lw $t1, -6672($fp)
	sub $t0, $t0, $t1
	sw $t0, -6676($fp)
	lw $t1, -6648($fp)
	lw $t2, -6676($fp)
	blt $t1, $t2, label457
	j label458
label457:
	li $t0, 1
	sw $t0, -6596($fp)
label458:
	lw $ra, -4($fp)
	lw $v0, -6596($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label462:
	addi $t0, $fp, -96
	sw $t0, -6680($fp)
	li $t0, 4
	sw $t0, -6684($fp)
	li $t0, 4
	lw $t1, -6684($fp)
	mul $t0, $t0, $t1
	sw $t0, -6688($fp)
	lw $t0, -6688($fp)
	lw $t1, -6680($fp)
	add $t0, $t0, $t1
	sw $t0, -6692($fp)
	lw $t0, -6692($fp)
	lw $t1, 0($t0)
	sw $t1, -6696($fp)
	li $t0, 0
	lw $t1, -6696($fp)
	sub $t0, $t0, $t1
	sw $t0, -6700($fp)
	li $t0, 0
	lw $t1, -6700($fp)
	sub $t0, $t0, $t1
	sw $t0, -6704($fp)
	addi $t0, $fp, -40
	sw $t0, -6708($fp)
	lw $t0, -544($fp)
	sw $t0, -6712($fp)
	lw $t0, -544($fp)
	sw $t0, -6716($fp)
	lw $t0, -6712($fp)
	lw $t1, -6716($fp)
	mul $t0, $t0, $t1
	sw $t0, -6720($fp)
	li $t0, 0
	sw $t0, -6724($fp)
	li $t0, 64038
	sw $t0, -6728($fp)
	li $t0, 0
	lw $t1, -6728($fp)
	sub $t0, $t0, $t1
	sw $t0, -6732($fp)
	lw $t1, -6732($fp)
	li $t2, 0
	bne $t1, $t2, label467
	j label466
label467:
	li $t0, 57008
	sw $t0, -6736($fp)
	lw $t1, -6736($fp)
	li $t2, 0
	bne $t1, $t2, label465
	j label466
label465:
	li $t0, 1
	sw $t0, -6724($fp)
label466:
	addi $sp, $sp, -4
	lw $t0, -6720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6724($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6740($fp)
	addi $sp, $sp, 12
	li $t0, 4
	lw $t1, -6740($fp)
	mul $t0, $t0, $t1
	sw $t0, -6744($fp)
	lw $t0, -6744($fp)
	lw $t1, -6708($fp)
	add $t0, $t0, $t1
	sw $t0, -6748($fp)
	lw $t0, -6748($fp)
	lw $t1, 0($t0)
	sw $t1, -6752($fp)
	lw $t0, -6704($fp)
	lw $t1, -6752($fp)
	sub $t0, $t0, $t1
	sw $t0, -6756($fp)
	lw $t1, -6756($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label464
label463:
	li $t0, 60956
	sw $t0, -6760($fp)
	lw $t0, -1696($fp)
	sw $t0, -6764($fp)
	li $t0, 0
	sw $t0, -6768($fp)
	lw $t0, -1660($fp)
	sw $t0, -6772($fp)
	li $t0, 44405
	sw $t0, -6776($fp)
	lw $t0, -6772($fp)
	lw $t1, -6776($fp)
	mul $t0, $t0, $t1
	sw $t0, -6780($fp)
	li $t0, 58148
	sw $t0, -6784($fp)
	lw $t1, -6780($fp)
	lw $t2, -6784($fp)
	bgt $t1, $t2, label471
	j label472
label471:
	li $t0, 1
	sw $t0, -6768($fp)
label472:
	addi $sp, $sp, -4
	lw $t0, -6764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6768($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6788($fp)
	addi $sp, $sp, 12
	li $t0, 22563
	sw $t0, -6792($fp)
	addi $sp, $sp, -4
	lw $t0, -6788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6792($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6796($fp)
	addi $sp, $sp, 12
	lw $t0, -6760($fp)
	lw $t1, -6796($fp)
	sub $t0, $t0, $t1
	sw $t0, -6800($fp)
	lw $t1, -6800($fp)
	li $t2, 0
	bne $t1, $t2, label468
	j label469
label468:
	lw $t0, -1708($fp)
	sw $t0, -6804($fp)
	li $t0, 42346
	sw $t0, -6808($fp)
	lw $t0, -6804($fp)
	lw $t1, -6808($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6812($fp)
	li $t0, 0
	lw $t1, -6812($fp)
	sub $t0, $t0, $t1
	sw $t0, -6816($fp)
	addi $t0, $fp, -96
	sw $t0, -6820($fp)
	lw $t0, -748($fp)
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
	li $t0, 0
	sw $t0, -6840($fp)
	li $t0, 14407
	sw $t0, -6844($fp)
	lw $t0, -6844($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -6848($fp)
	lw $t0, -1060($fp)
	sw $t0, -6852($fp)
	lw $t0, -6096($fp)
	sw $t0, -6856($fp)
	lw $t0, -6852($fp)
	lw $t1, -6856($fp)
	mul $t0, $t0, $t1
	sw $t0, -6860($fp)
	addi $t0, $fp, -136
	sw $t0, -6864($fp)
	lw $t0, -1672($fp)
	sw $t0, -6868($fp)
	li $t0, 4
	lw $t1, -6868($fp)
	mul $t0, $t0, $t1
	sw $t0, -6872($fp)
	lw $t0, -6872($fp)
	lw $t1, -6864($fp)
	add $t0, $t0, $t1
	sw $t0, -6876($fp)
	lw $t0, -6876($fp)
	lw $t1, 0($t0)
	sw $t1, -6880($fp)
	li $t0, 30316
	sw $t0, -6884($fp)
	addi $sp, $sp, -4
	lw $t0, -6860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6884($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6888($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -6892($fp)
	lw $t0, -1684($fp)
	sw $t0, -6896($fp)
	lw $t0, -352($fp)
	sw $t0, -6900($fp)
	lw $t0, -6896($fp)
	lw $t1, -6900($fp)
	mul $t0, $t0, $t1
	sw $t0, -6904($fp)
	li $t0, 47102
	sw $t0, -6908($fp)
	lw $t1, -6904($fp)
	lw $t2, -6908($fp)
	bne $t1, $t2, label475
	j label476
label475:
	li $t0, 1
	sw $t0, -6892($fp)
label476:
	addi $t0, $fp, -40
	sw $t0, -6912($fp)
	li $t0, 2
	sw $t0, -6916($fp)
	li $t0, 4
	lw $t1, -6916($fp)
	mul $t0, $t0, $t1
	sw $t0, -6920($fp)
	lw $t0, -6920($fp)
	lw $t1, -6912($fp)
	add $t0, $t0, $t1
	sw $t0, -6924($fp)
	lw $t0, -6924($fp)
	lw $t1, 0($t0)
	sw $t1, -6928($fp)
	li $t0, 0
	lw $t1, -6928($fp)
	sub $t0, $t0, $t1
	sw $t0, -6932($fp)
	li $t0, 0
	sw $t0, -6936($fp)
	li $t0, 9496
	sw $t0, -6940($fp)
	lw $t0, -1576($fp)
	sw $t0, -6944($fp)
	lw $t1, -6940($fp)
	lw $t2, -6944($fp)
	beq $t1, $t2, label479
	j label478
label479:
	lw $t0, -1588($fp)
	sw $t0, -6948($fp)
	lw $t1, -6948($fp)
	li $t2, 0
	bne $t1, $t2, label477
	j label478
label477:
	li $t0, 1
	sw $t0, -6936($fp)
label478:
	addi $sp, $sp, -4
	lw $t0, -6848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6936($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6952($fp)
	addi $sp, $sp, 24
	lw $t0, -1072($fp)
	sw $t0, -6956($fp)
	lw $t1, -6952($fp)
	lw $t2, -6956($fp)
	bne $t1, $t2, label473
	j label474
label473:
	li $t0, 1
	sw $t0, -6840($fp)
label474:
	li $t0, 64183
	sw $t0, -6960($fp)
	lw $t0, -1072($fp)
	sw $t0, -6964($fp)
	lw $t0, -544($fp)
	sw $t0, -6968($fp)
	lw $t0, -6964($fp)
	lw $t1, -6968($fp)
	sub $t0, $t0, $t1
	sw $t0, -6972($fp)
	li $t0, 20249
	sw $t0, -6976($fp)
	lw $t0, -6972($fp)
	lw $t1, -6976($fp)
	sub $t0, $t0, $t1
	sw $t0, -6980($fp)
	addi $sp, $sp, -4
	lw $t0, -6816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6980($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6984($fp)
	addi $sp, $sp, 24
	li $t0, 51091
	sw $t0, -6988($fp)
	li $t0, 0
	sw $t0, -6992($fp)
	li $t0, 0
	sw $t0, -6996($fp)
	lw $t0, -1672($fp)
	sw $t0, -7000($fp)
	li $t0, 7341
	sw $t0, -7004($fp)
	lw $t1, -7000($fp)
	lw $t2, -7004($fp)
	bge $t1, $t2, label482
	j label483
label482:
	li $t0, 1
	sw $t0, -6996($fp)
label483:
	lw $t0, -1036($fp)
	sw $t0, -7008($fp)
	lw $t1, -6996($fp)
	lw $t2, -7008($fp)
	ble $t1, $t2, label480
	j label481
label480:
	li $t0, 1
	sw $t0, -6992($fp)
label481:
	li $t0, 0
	sw $t0, -7012($fp)
	addi $t0, $fp, -64
	sw $t0, -7016($fp)
	lw $t0, -6324($fp)
	sw $t0, -7020($fp)
	li $t0, 4
	lw $t1, -7020($fp)
	mul $t0, $t0, $t1
	sw $t0, -7024($fp)
	lw $t0, -7024($fp)
	lw $t1, -7016($fp)
	add $t0, $t0, $t1
	sw $t0, -7028($fp)
	lw $t0, -7028($fp)
	lw $t1, 0($t0)
	sw $t1, -7032($fp)
	li $t0, 20702
	sw $t0, -7036($fp)
	lw $t1, -7032($fp)
	lw $t2, -7036($fp)
	blt $t1, $t2, label484
	j label485
label484:
	li $t0, 1
	sw $t0, -7012($fp)
label485:
	li $t0, 0
	sw $t0, -7040($fp)
	lw $t0, -4868($fp)
	sw $t0, -7044($fp)
	li $t0, 27907
	sw $t0, -7048($fp)
	lw $t0, -7044($fp)
	lw $t1, -7048($fp)
	add $t0, $t0, $t1
	sw $t0, -7052($fp)
	lw $t1, -7052($fp)
	li $t2, 0
	bne $t1, $t2, label486
	j label488
label488:
	li $t0, 5085
	sw $t0, -7056($fp)
	lw $t1, -7056($fp)
	li $t2, 0
	bne $t1, $t2, label486
	j label487
label486:
	li $t0, 1
	sw $t0, -7040($fp)
label487:
	addi $sp, $sp, -4
	lw $t0, -6984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7040($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7060($fp)
	addi $sp, $sp, 24
	lw $t0, -220($fp)
	sw $t0, -7064($fp)
	lw $t0, -7060($fp)
	lw $t1, -7064($fp)
	mul $t0, $t0, $t1
	sw $t0, -7068($fp)
	j label470
label469:
	li $t0, 0
	sw $t0, -7072($fp)
	addi $t0, $fp, -6088
	sw $t0, -7076($fp)
	li $t0, 0
	sw $t0, -7080($fp)
	lw $t0, -568($fp)
	sw $t0, -7084($fp)
	lw $t1, -7084($fp)
	li $t2, 0
	bne $t1, $t2, label494
	j label493
label494:
	lw $t0, -1672($fp)
	sw $t0, -7088($fp)
	lw $t1, -7088($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label493
label492:
	li $t0, 1
	sw $t0, -7080($fp)
label493:
	li $t0, 4
	lw $t1, -7080($fp)
	mul $t0, $t0, $t1
	sw $t0, -7092($fp)
	lw $t0, -7092($fp)
	lw $t1, -7076($fp)
	add $t0, $t0, $t1
	sw $t0, -7096($fp)
	lw $t0, -7096($fp)
	lw $t1, 0($t0)
	sw $t1, -7100($fp)
	li $t0, 0
	sw $t0, -7104($fp)
	lw $t0, -832($fp)
	sw $t0, -7108($fp)
	lw $t1, -7108($fp)
	li $t2, 0
	bne $t1, $t2, label495
	j label496
label495:
	li $t0, 1
	sw $t0, -7104($fp)
label496:
	lw $t1, -7100($fp)
	lw $t2, -7104($fp)
	ble $t1, $t2, label491
	j label490
label491:
	li $t0, 0
	sw $t0, -7112($fp)
	li $t0, 7692
	sw $t0, -7116($fp)
	lw $t1, -7116($fp)
	li $t2, 0
	bne $t1, $t2, label497
	j label498
label497:
	li $t0, 1
	sw $t0, -7112($fp)
label498:
	li $t0, 0
	lw $t1, -7112($fp)
	sub $t0, $t0, $t1
	sw $t0, -7120($fp)
	lw $t1, -7120($fp)
	li $t2, 0
	bne $t1, $t2, label489
	j label490
label489:
	li $t0, 1
	sw $t0, -7072($fp)
label490:
label470:
	j label462
label464:
	j label443
label445:
label499:
	lw $t0, -580($fp)
	sw $t0, -7124($fp)
	li $t0, 0
	lw $t1, -7124($fp)
	sub $t0, $t0, $t1
	sw $t0, -7128($fp)
	addi $t0, $fp, -64
	sw $t0, -7132($fp)
	lw $t0, -4868($fp)
	sw $t0, -7136($fp)
	li $t0, 4
	lw $t1, -7136($fp)
	mul $t0, $t0, $t1
	sw $t0, -7140($fp)
	lw $t0, -7140($fp)
	lw $t1, -7132($fp)
	add $t0, $t0, $t1
	sw $t0, -7144($fp)
	lw $t0, -7144($fp)
	lw $t1, 0($t0)
	sw $t1, -7148($fp)
	li $t0, 64829
	sw $t0, -7152($fp)
	lw $t0, -7148($fp)
	lw $t1, -7152($fp)
	mul $t0, $t0, $t1
	sw $t0, -7156($fp)
	lw $t0, -208($fp)
	sw $t0, -7160($fp)
	li $t0, 0
	lw $t1, -7160($fp)
	sub $t0, $t0, $t1
	sw $t0, -7164($fp)
	lw $t0, -7156($fp)
	lw $t1, -7164($fp)
	mul $t0, $t0, $t1
	sw $t0, -7168($fp)
	lw $t0, -7128($fp)
	lw $t1, -7168($fp)
	add $t0, $t0, $t1
	sw $t0, -7172($fp)
	lw $t1, -7172($fp)
	li $t2, 0
	bne $t1, $t2, label500
	j label501
label500:
	addi $t0, $fp, -4652
	sw $t0, -7176($fp)
	li $t0, 0
	sw $t0, -7180($fp)
	li $t0, 0
	sw $t0, -7184($fp)
	li $t0, 45805
	sw $t0, -7188($fp)
	li $t0, 17113
	sw $t0, -7192($fp)
	lw $t1, -7188($fp)
	lw $t2, -7192($fp)
	bgt $t1, $t2, label505
	j label506
label505:
	li $t0, 1
	sw $t0, -7184($fp)
label506:
	lw $t0, -772($fp)
	sw $t0, -7196($fp)
	lw $t1, -7184($fp)
	lw $t2, -7196($fp)
	bgt $t1, $t2, label504
	j label503
label504:
	lw $t0, -520($fp)
	sw $t0, -7200($fp)
	li $t0, 0
	lw $t1, -7200($fp)
	sub $t0, $t0, $t1
	sw $t0, -7204($fp)
	lw $t1, -7204($fp)
	li $t2, 0
	bne $t1, $t2, label502
	j label503
label502:
	li $t0, 1
	sw $t0, -7180($fp)
label503:
	li $t0, 4
	lw $t1, -7180($fp)
	mul $t0, $t0, $t1
	sw $t0, -7208($fp)
	lw $t0, -7208($fp)
	lw $t1, -7176($fp)
	add $t0, $t0, $t1
	sw $t0, -7212($fp)
	lw $t0, -7212($fp)
	lw $t1, 0($t0)
	sw $t1, -7216($fp)
	j label499
label501:
	addi $t0, $fp, -40
	sw $t0, -7220($fp)
	li $t0, 3
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
	lw $t0, -7236($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -7240($fp)
	addi $sp, $sp, 8
	lw $t0, -7240($fp)
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -7244($fp)
	lw $t0, -7244($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -7248($fp)
	lw $t1, -7248($fp)
	li $t2, 0
	bne $t1, $t2, label507
	j label508
label507:
label510:
	li $t0, 22605
	sw $t0, -7252($fp)
	lw $t0, -352($fp)
	sw $t0, -7256($fp)
	lw $t0, -7252($fp)
	lw $t1, -7256($fp)
	add $t0, $t0, $t1
	sw $t0, -7260($fp)
	li $t0, 28834
	sw $t0, -7264($fp)
	lw $t0, -7260($fp)
	lw $t1, -7264($fp)
	add $t0, $t0, $t1
	sw $t0, -7268($fp)
	li $t0, 52498
	sw $t0, -7272($fp)
	lw $t0, -352($fp)
	sw $t0, -7276($fp)
	lw $t0, -7272($fp)
	lw $t1, -7276($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7280($fp)
	lw $t0, -7268($fp)
	lw $t1, -7280($fp)
	add $t0, $t0, $t1
	sw $t0, -7284($fp)
	addi $t0, $fp, -24
	sw $t0, -7288($fp)
	lw $t0, -196($fp)
	sw $t0, -7292($fp)
	li $t0, 4
	lw $t1, -7292($fp)
	mul $t0, $t0, $t1
	sw $t0, -7296($fp)
	lw $t0, -7296($fp)
	lw $t1, -7288($fp)
	add $t0, $t0, $t1
	sw $t0, -7300($fp)
	lw $t0, -7300($fp)
	lw $t1, 0($t0)
	sw $t1, -7304($fp)
	li $t0, 34455
	sw $t0, -7308($fp)
	lw $t0, -4724($fp)
	sw $t0, -7312($fp)
	lw $t0, -7308($fp)
	lw $t1, -7312($fp)
	mul $t0, $t0, $t1
	sw $t0, -7316($fp)
	lw $t0, -7304($fp)
	lw $t1, -7316($fp)
	add $t0, $t0, $t1
	sw $t0, -7320($fp)
	lw $t1, -7284($fp)
	lw $t2, -7320($fp)
	blt $t1, $t2, label511
	j label512
label511:
	li $t0, 0
	sw $t0, -7324($fp)
	li $t0, 63547
	sw $t0, -7328($fp)
	lw $t1, -7328($fp)
	li $t2, 0
	bne $t1, $t2, label514
	j label513
label513:
	li $t0, 1
	sw $t0, -7324($fp)
label514:
	j label510
label512:
	j label509
label508:
	li $t0, 51000
	sw $t0, -7348($fp)
	addi $t0, $fp, -7344
	sw $t0, -7352($fp)
	li $t0, 0
	sw $t0, -7356($fp)
	lw $t0, -7356($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7360($fp)
	lw $t0, -7352($fp)
	lw $t1, -7360($fp)
	add $t0, $t0, $t1
	sw $t0, -7364($fp)
	lw $t0, -7348($fp)
	lw $t1, -7364($fp)
	sw $t0, 0($t1)
	lw $t0, -7364($fp)
	lw $t1, 0($t0)
	sw $t1, -7368($fp)
	li $t0, 25927
	sw $t0, -7372($fp)
	addi $t0, $fp, -7344
	sw $t0, -7376($fp)
	li $t0, 1
	sw $t0, -7380($fp)
	lw $t0, -7380($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7384($fp)
	lw $t0, -7376($fp)
	lw $t1, -7384($fp)
	add $t0, $t0, $t1
	sw $t0, -7388($fp)
	lw $t0, -7372($fp)
	lw $t1, -7388($fp)
	sw $t0, 0($t1)
	lw $t0, -7388($fp)
	lw $t1, 0($t0)
	sw $t1, -7392($fp)
	li $t0, 58967
	sw $t0, -7396($fp)
	addi $t0, $fp, -7344
	sw $t0, -7400($fp)
	li $t0, 2
	sw $t0, -7404($fp)
	lw $t0, -7404($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7408($fp)
	lw $t0, -7400($fp)
	lw $t1, -7408($fp)
	add $t0, $t0, $t1
	sw $t0, -7412($fp)
	lw $t0, -7396($fp)
	lw $t1, -7412($fp)
	sw $t0, 0($t1)
	lw $t0, -7412($fp)
	lw $t1, 0($t0)
	sw $t1, -7416($fp)
	li $t0, 8028
	sw $t0, -7420($fp)
	addi $t0, $fp, -7344
	sw $t0, -7424($fp)
	li $t0, 3
	sw $t0, -7428($fp)
	lw $t0, -7428($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7432($fp)
	lw $t0, -7424($fp)
	lw $t1, -7432($fp)
	add $t0, $t0, $t1
	sw $t0, -7436($fp)
	lw $t0, -7420($fp)
	lw $t1, -7436($fp)
	sw $t0, 0($t1)
	lw $t0, -7436($fp)
	lw $t1, 0($t0)
	sw $t1, -7440($fp)
	li $t0, 0
	sw $t0, -7444($fp)
	addi $t0, $fp, -7344
	sw $t0, -7448($fp)
	li $t0, 4796
	sw $t0, -7452($fp)
	lw $t0, -784($fp)
	sw $t0, -7456($fp)
	lw $t0, -7452($fp)
	lw $t1, -7456($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7460($fp)
	li $t0, 4
	lw $t1, -7460($fp)
	mul $t0, $t0, $t1
	sw $t0, -7464($fp)
	lw $t0, -7464($fp)
	lw $t1, -7448($fp)
	add $t0, $t0, $t1
	sw $t0, -7468($fp)
	lw $t0, -7468($fp)
	lw $t1, 0($t0)
	sw $t1, -7472($fp)
	li $t0, 51579
	sw $t0, -7476($fp)
	li $t0, 0
	lw $t1, -7476($fp)
	sub $t0, $t0, $t1
	sw $t0, -7480($fp)
	li $t0, 0
	lw $t1, -7480($fp)
	sub $t0, $t0, $t1
	sw $t0, -7484($fp)
	lw $t0, -7472($fp)
	lw $t1, -7484($fp)
	sub $t0, $t0, $t1
	sw $t0, -7488($fp)
	li $t0, 0
	sw $t0, -7492($fp)
	addi $t0, $fp, -40
	sw $t0, -7496($fp)
	lw $t0, -1576($fp)
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
	lw $t1, -7512($fp)
	li $t2, 0
	bne $t1, $t2, label518
	j label517
label517:
	li $t0, 1
	sw $t0, -7492($fp)
label518:
	addi $t0, $fp, -160
	sw $t0, -7516($fp)
	lw $t0, -1636($fp)
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
	li $t0, 0
	lw $t1, -7532($fp)
	sub $t0, $t0, $t1
	sw $t0, -7536($fp)
	li $t0, 0
	sw $t0, -7540($fp)
	li $t0, 35935
	sw $t0, -7544($fp)
	li $t0, 9881
	sw $t0, -7548($fp)
	lw $t0, -7544($fp)
	lw $t1, -7548($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7552($fp)
	lw $t1, -7552($fp)
	li $t2, 0
	bne $t1, $t2, label519
	j label521
label521:
	li $t0, 6745
	sw $t0, -7556($fp)
	lw $t1, -7556($fp)
	li $t2, 0
	bne $t1, $t2, label519
	j label520
label519:
	li $t0, 1
	sw $t0, -7540($fp)
label520:
	addi $sp, $sp, -4
	lw $t0, -7536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7540($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7560($fp)
	addi $sp, $sp, 12
	lw $t0, -7492($fp)
	lw $t1, -7560($fp)
	mul $t0, $t0, $t1
	sw $t0, -7564($fp)
	lw $t1, -7488($fp)
	lw $t2, -7564($fp)
	ble $t1, $t2, label515
	j label516
label515:
	li $t0, 1
	sw $t0, -7444($fp)
label516:
label509:
label190:
	lw $t0, -184($fp)
	sw $t0, -7568($fp)
	lw $t0, -7568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -196($fp)
	sw $t0, -7572($fp)
	lw $t0, -7572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -208($fp)
	sw $t0, -7576($fp)
	lw $t0, -7576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	sw $t0, -7580($fp)
	lw $t0, -7580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -7584($fp)
	li $t0, 0
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
	lw $t0, -7600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -7604($fp)
	li $t0, 1
	sw $t0, -7608($fp)
	li $t0, 4
	lw $t1, -7608($fp)
	mul $t0, $t0, $t1
	sw $t0, -7612($fp)
	lw $t0, -7612($fp)
	lw $t1, -7604($fp)
	add $t0, $t0, $t1
	sw $t0, -7616($fp)
	lw $t0, -7616($fp)
	lw $t1, 0($t0)
	sw $t1, -7620($fp)
	lw $t0, -7620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -7624($fp)
	li $t0, 2
	sw $t0, -7628($fp)
	li $t0, 4
	lw $t1, -7628($fp)
	mul $t0, $t0, $t1
	sw $t0, -7632($fp)
	lw $t0, -7632($fp)
	lw $t1, -7624($fp)
	add $t0, $t0, $t1
	sw $t0, -7636($fp)
	lw $t0, -7636($fp)
	lw $t1, 0($t0)
	sw $t1, -7640($fp)
	lw $t0, -7640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -7644($fp)
	li $t0, 3
	sw $t0, -7648($fp)
	li $t0, 4
	lw $t1, -7648($fp)
	mul $t0, $t0, $t1
	sw $t0, -7652($fp)
	lw $t0, -7652($fp)
	lw $t1, -7644($fp)
	add $t0, $t0, $t1
	sw $t0, -7656($fp)
	lw $t0, -7656($fp)
	lw $t1, 0($t0)
	sw $t1, -7660($fp)
	lw $t0, -7660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -7664($fp)
	li $t0, 4
	sw $t0, -7668($fp)
	li $t0, 4
	lw $t1, -7668($fp)
	mul $t0, $t0, $t1
	sw $t0, -7672($fp)
	lw $t0, -7672($fp)
	lw $t1, -7664($fp)
	add $t0, $t0, $t1
	sw $t0, -7676($fp)
	lw $t0, -7676($fp)
	lw $t1, 0($t0)
	sw $t1, -7680($fp)
	lw $t0, -7680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -352($fp)
	sw $t0, -7684($fp)
	lw $t0, -7684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -364($fp)
	sw $t0, -7688($fp)
	lw $t0, -7688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -376($fp)
	sw $t0, -7692($fp)
	lw $t0, -7692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -388($fp)
	sw $t0, -7696($fp)
	lw $t0, -7696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -400($fp)
	sw $t0, -7700($fp)
	lw $t0, -7700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -412($fp)
	sw $t0, -7704($fp)
	lw $t0, -7704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -7708($fp)
	li $t0, 0
	sw $t0, -7712($fp)
	li $t0, 4
	lw $t1, -7712($fp)
	mul $t0, $t0, $t1
	sw $t0, -7716($fp)
	lw $t0, -7716($fp)
	lw $t1, -7708($fp)
	add $t0, $t0, $t1
	sw $t0, -7720($fp)
	lw $t0, -7720($fp)
	lw $t1, 0($t0)
	sw $t1, -7724($fp)
	lw $t0, -7724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -7728($fp)
	li $t0, 1
	sw $t0, -7732($fp)
	li $t0, 4
	lw $t1, -7732($fp)
	mul $t0, $t0, $t1
	sw $t0, -7736($fp)
	lw $t0, -7736($fp)
	lw $t1, -7728($fp)
	add $t0, $t0, $t1
	sw $t0, -7740($fp)
	lw $t0, -7740($fp)
	lw $t1, 0($t0)
	sw $t1, -7744($fp)
	lw $t0, -7744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -7748($fp)
	li $t0, 2
	sw $t0, -7752($fp)
	li $t0, 4
	lw $t1, -7752($fp)
	mul $t0, $t0, $t1
	sw $t0, -7756($fp)
	lw $t0, -7756($fp)
	lw $t1, -7748($fp)
	add $t0, $t0, $t1
	sw $t0, -7760($fp)
	lw $t0, -7760($fp)
	lw $t1, 0($t0)
	sw $t1, -7764($fp)
	lw $t0, -7764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -7768($fp)
	li $t0, 3
	sw $t0, -7772($fp)
	li $t0, 4
	lw $t1, -7772($fp)
	mul $t0, $t0, $t1
	sw $t0, -7776($fp)
	lw $t0, -7776($fp)
	lw $t1, -7768($fp)
	add $t0, $t0, $t1
	sw $t0, -7780($fp)
	lw $t0, -7780($fp)
	lw $t1, 0($t0)
	sw $t1, -7784($fp)
	lw $t0, -7784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -7788($fp)
	lw $t0, -7788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -532($fp)
	sw $t0, -7792($fp)
	lw $t0, -7792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -544($fp)
	sw $t0, -7796($fp)
	lw $t0, -7796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -556($fp)
	sw $t0, -7800($fp)
	lw $t0, -7800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -568($fp)
	sw $t0, -7804($fp)
	lw $t0, -7804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -580($fp)
	sw $t0, -7808($fp)
	lw $t0, -7808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -7812($fp)
	li $t0, 0
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
	addi $t0, $fp, -64
	sw $t0, -7832($fp)
	li $t0, 1
	sw $t0, -7836($fp)
	li $t0, 4
	lw $t1, -7836($fp)
	mul $t0, $t0, $t1
	sw $t0, -7840($fp)
	lw $t0, -7840($fp)
	lw $t1, -7832($fp)
	add $t0, $t0, $t1
	sw $t0, -7844($fp)
	lw $t0, -7844($fp)
	lw $t1, 0($t0)
	sw $t1, -7848($fp)
	lw $t0, -7848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -7852($fp)
	li $t0, 2
	sw $t0, -7856($fp)
	li $t0, 4
	lw $t1, -7856($fp)
	mul $t0, $t0, $t1
	sw $t0, -7860($fp)
	lw $t0, -7860($fp)
	lw $t1, -7852($fp)
	add $t0, $t0, $t1
	sw $t0, -7864($fp)
	lw $t0, -7864($fp)
	lw $t1, 0($t0)
	sw $t1, -7868($fp)
	lw $t0, -7868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -7872($fp)
	li $t0, 3
	sw $t0, -7876($fp)
	li $t0, 4
	lw $t1, -7876($fp)
	mul $t0, $t0, $t1
	sw $t0, -7880($fp)
	lw $t0, -7880($fp)
	lw $t1, -7872($fp)
	add $t0, $t0, $t1
	sw $t0, -7884($fp)
	lw $t0, -7884($fp)
	lw $t1, 0($t0)
	sw $t1, -7888($fp)
	lw $t0, -7888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -7892($fp)
	li $t0, 4
	sw $t0, -7896($fp)
	li $t0, 4
	lw $t1, -7896($fp)
	mul $t0, $t0, $t1
	sw $t0, -7900($fp)
	lw $t0, -7900($fp)
	lw $t1, -7892($fp)
	add $t0, $t0, $t1
	sw $t0, -7904($fp)
	lw $t0, -7904($fp)
	lw $t1, 0($t0)
	sw $t1, -7908($fp)
	lw $t0, -7908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -7912($fp)
	li $t0, 5
	sw $t0, -7916($fp)
	li $t0, 4
	lw $t1, -7916($fp)
	mul $t0, $t0, $t1
	sw $t0, -7920($fp)
	lw $t0, -7920($fp)
	lw $t1, -7912($fp)
	add $t0, $t0, $t1
	sw $t0, -7924($fp)
	lw $t0, -7924($fp)
	lw $t1, 0($t0)
	sw $t1, -7928($fp)
	lw $t0, -7928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -736($fp)
	sw $t0, -7932($fp)
	lw $t0, -7932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -748($fp)
	sw $t0, -7936($fp)
	lw $t0, -7936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -760($fp)
	sw $t0, -7940($fp)
	lw $t0, -7940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -772($fp)
	sw $t0, -7944($fp)
	lw $t0, -7944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -784($fp)
	sw $t0, -7948($fp)
	lw $t0, -7948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -796($fp)
	sw $t0, -7952($fp)
	lw $t0, -7952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -808($fp)
	sw $t0, -7956($fp)
	lw $t0, -7956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -820($fp)
	sw $t0, -7960($fp)
	lw $t0, -7960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -832($fp)
	sw $t0, -7964($fp)
	lw $t0, -7964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -7968($fp)
	li $t0, 0
	sw $t0, -7972($fp)
	li $t0, 4
	lw $t1, -7972($fp)
	mul $t0, $t0, $t1
	sw $t0, -7976($fp)
	lw $t0, -7976($fp)
	lw $t1, -7968($fp)
	add $t0, $t0, $t1
	sw $t0, -7980($fp)
	lw $t0, -7980($fp)
	lw $t1, 0($t0)
	sw $t1, -7984($fp)
	lw $t0, -7984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -7988($fp)
	li $t0, 1
	sw $t0, -7992($fp)
	li $t0, 4
	lw $t1, -7992($fp)
	mul $t0, $t0, $t1
	sw $t0, -7996($fp)
	lw $t0, -7996($fp)
	lw $t1, -7988($fp)
	add $t0, $t0, $t1
	sw $t0, -8000($fp)
	lw $t0, -8000($fp)
	lw $t1, 0($t0)
	sw $t1, -8004($fp)
	lw $t0, -8004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -8008($fp)
	li $t0, 0
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
	lw $t0, -8024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -8028($fp)
	li $t0, 1
	sw $t0, -8032($fp)
	li $t0, 4
	lw $t1, -8032($fp)
	mul $t0, $t0, $t1
	sw $t0, -8036($fp)
	lw $t0, -8036($fp)
	lw $t1, -8028($fp)
	add $t0, $t0, $t1
	sw $t0, -8040($fp)
	lw $t0, -8040($fp)
	lw $t1, 0($t0)
	sw $t1, -8044($fp)
	lw $t0, -8044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -8048($fp)
	li $t0, 2
	sw $t0, -8052($fp)
	li $t0, 4
	lw $t1, -8052($fp)
	mul $t0, $t0, $t1
	sw $t0, -8056($fp)
	lw $t0, -8056($fp)
	lw $t1, -8048($fp)
	add $t0, $t0, $t1
	sw $t0, -8060($fp)
	lw $t0, -8060($fp)
	lw $t1, 0($t0)
	sw $t1, -8064($fp)
	lw $t0, -8064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -8068($fp)
	li $t0, 3
	sw $t0, -8072($fp)
	li $t0, 4
	lw $t1, -8072($fp)
	mul $t0, $t0, $t1
	sw $t0, -8076($fp)
	lw $t0, -8076($fp)
	lw $t1, -8068($fp)
	add $t0, $t0, $t1
	sw $t0, -8080($fp)
	lw $t0, -8080($fp)
	lw $t1, 0($t0)
	sw $t1, -8084($fp)
	lw $t0, -8084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -8088($fp)
	li $t0, 4
	sw $t0, -8092($fp)
	li $t0, 4
	lw $t1, -8092($fp)
	mul $t0, $t0, $t1
	sw $t0, -8096($fp)
	lw $t0, -8096($fp)
	lw $t1, -8088($fp)
	add $t0, $t0, $t1
	sw $t0, -8100($fp)
	lw $t0, -8100($fp)
	lw $t1, 0($t0)
	sw $t1, -8104($fp)
	lw $t0, -8104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -8108($fp)
	li $t0, 5
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
	lw $t0, -8124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1036($fp)
	sw $t0, -8128($fp)
	lw $t0, -8128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1048($fp)
	sw $t0, -8132($fp)
	lw $t0, -8132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1060($fp)
	sw $t0, -8136($fp)
	lw $t0, -8136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1072($fp)
	sw $t0, -8140($fp)
	lw $t0, -8140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1084($fp)
	sw $t0, -8144($fp)
	lw $t0, -8144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1096($fp)
	sw $t0, -8148($fp)
	lw $t0, -8148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -8152($fp)
	li $t0, 0
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
	lw $t0, -8168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -8172($fp)
	li $t0, 1
	sw $t0, -8176($fp)
	li $t0, 4
	lw $t1, -8176($fp)
	mul $t0, $t0, $t1
	sw $t0, -8180($fp)
	lw $t0, -8180($fp)
	lw $t1, -8172($fp)
	add $t0, $t0, $t1
	sw $t0, -8184($fp)
	lw $t0, -8184($fp)
	lw $t1, 0($t0)
	sw $t1, -8188($fp)
	lw $t0, -8188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -8192($fp)
	li $t0, 2
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
	lw $t0, -8208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -8212($fp)
	li $t0, 3
	sw $t0, -8216($fp)
	li $t0, 4
	lw $t1, -8216($fp)
	mul $t0, $t0, $t1
	sw $t0, -8220($fp)
	lw $t0, -8220($fp)
	lw $t1, -8212($fp)
	add $t0, $t0, $t1
	sw $t0, -8224($fp)
	lw $t0, -8224($fp)
	lw $t1, 0($t0)
	sw $t1, -8228($fp)
	lw $t0, -8228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -8232($fp)
	li $t0, 4
	sw $t0, -8236($fp)
	li $t0, 4
	lw $t1, -8236($fp)
	mul $t0, $t0, $t1
	sw $t0, -8240($fp)
	lw $t0, -8240($fp)
	lw $t1, -8232($fp)
	add $t0, $t0, $t1
	sw $t0, -8244($fp)
	lw $t0, -8244($fp)
	lw $t1, 0($t0)
	sw $t1, -8248($fp)
	lw $t0, -8248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -8252($fp)
	li $t0, 5
	sw $t0, -8256($fp)
	li $t0, 4
	lw $t1, -8256($fp)
	mul $t0, $t0, $t1
	sw $t0, -8260($fp)
	lw $t0, -8260($fp)
	lw $t1, -8252($fp)
	add $t0, $t0, $t1
	sw $t0, -8264($fp)
	lw $t0, -8264($fp)
	lw $t1, 0($t0)
	sw $t1, -8268($fp)
	lw $t0, -8268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -8272($fp)
	li $t0, 6
	sw $t0, -8276($fp)
	li $t0, 4
	lw $t1, -8276($fp)
	mul $t0, $t0, $t1
	sw $t0, -8280($fp)
	lw $t0, -8280($fp)
	lw $t1, -8272($fp)
	add $t0, $t0, $t1
	sw $t0, -8284($fp)
	lw $t0, -8284($fp)
	lw $t1, 0($t0)
	sw $t1, -8288($fp)
	lw $t0, -8288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -8292($fp)
	li $t0, 7
	sw $t0, -8296($fp)
	li $t0, 4
	lw $t1, -8296($fp)
	mul $t0, $t0, $t1
	sw $t0, -8300($fp)
	lw $t0, -8300($fp)
	lw $t1, -8292($fp)
	add $t0, $t0, $t1
	sw $t0, -8304($fp)
	lw $t0, -8304($fp)
	lw $t1, 0($t0)
	sw $t1, -8308($fp)
	lw $t0, -8308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -8312($fp)
	li $t0, 8
	sw $t0, -8316($fp)
	li $t0, 4
	lw $t1, -8316($fp)
	mul $t0, $t0, $t1
	sw $t0, -8320($fp)
	lw $t0, -8320($fp)
	lw $t1, -8312($fp)
	add $t0, $t0, $t1
	sw $t0, -8324($fp)
	lw $t0, -8324($fp)
	lw $t1, 0($t0)
	sw $t1, -8328($fp)
	lw $t0, -8328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -8332($fp)
	li $t0, 9
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
	lw $t0, -8348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -8352($fp)
	li $t0, 0
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
	lw $t0, -8368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -8372($fp)
	li $t0, 1
	sw $t0, -8376($fp)
	li $t0, 4
	lw $t1, -8376($fp)
	mul $t0, $t0, $t1
	sw $t0, -8380($fp)
	lw $t0, -8380($fp)
	lw $t1, -8372($fp)
	add $t0, $t0, $t1
	sw $t0, -8384($fp)
	lw $t0, -8384($fp)
	lw $t1, 0($t0)
	sw $t1, -8388($fp)
	lw $t0, -8388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -8392($fp)
	li $t0, 2
	sw $t0, -8396($fp)
	li $t0, 4
	lw $t1, -8396($fp)
	mul $t0, $t0, $t1
	sw $t0, -8400($fp)
	lw $t0, -8400($fp)
	lw $t1, -8392($fp)
	add $t0, $t0, $t1
	sw $t0, -8404($fp)
	lw $t0, -8404($fp)
	lw $t1, 0($t0)
	sw $t1, -8408($fp)
	lw $t0, -8408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -8412($fp)
	li $t0, 3
	sw $t0, -8416($fp)
	li $t0, 4
	lw $t1, -8416($fp)
	mul $t0, $t0, $t1
	sw $t0, -8420($fp)
	lw $t0, -8420($fp)
	lw $t1, -8412($fp)
	add $t0, $t0, $t1
	sw $t0, -8424($fp)
	lw $t0, -8424($fp)
	lw $t1, 0($t0)
	sw $t1, -8428($fp)
	lw $t0, -8428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -8432($fp)
	li $t0, 4
	sw $t0, -8436($fp)
	li $t0, 4
	lw $t1, -8436($fp)
	mul $t0, $t0, $t1
	sw $t0, -8440($fp)
	lw $t0, -8440($fp)
	lw $t1, -8432($fp)
	add $t0, $t0, $t1
	sw $t0, -8444($fp)
	lw $t0, -8444($fp)
	lw $t1, 0($t0)
	sw $t1, -8448($fp)
	lw $t0, -8448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -8452($fp)
	li $t0, 5
	sw $t0, -8456($fp)
	li $t0, 4
	lw $t1, -8456($fp)
	mul $t0, $t0, $t1
	sw $t0, -8460($fp)
	lw $t0, -8460($fp)
	lw $t1, -8452($fp)
	add $t0, $t0, $t1
	sw $t0, -8464($fp)
	lw $t0, -8464($fp)
	lw $t1, 0($t0)
	sw $t1, -8468($fp)
	lw $t0, -8468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1492($fp)
	sw $t0, -8472($fp)
	lw $t0, -8472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -8476($fp)
	li $t0, 0
	sw $t0, -8480($fp)
	li $t0, 4
	lw $t1, -8480($fp)
	mul $t0, $t0, $t1
	sw $t0, -8484($fp)
	lw $t0, -8484($fp)
	lw $t1, -8476($fp)
	add $t0, $t0, $t1
	sw $t0, -8488($fp)
	lw $t0, -8488($fp)
	lw $t1, 0($t0)
	sw $t1, -8492($fp)
	lw $t0, -8492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -8496($fp)
	li $t0, 1
	sw $t0, -8500($fp)
	li $t0, 4
	lw $t1, -8500($fp)
	mul $t0, $t0, $t1
	sw $t0, -8504($fp)
	lw $t0, -8504($fp)
	lw $t1, -8496($fp)
	add $t0, $t0, $t1
	sw $t0, -8508($fp)
	lw $t0, -8508($fp)
	lw $t1, 0($t0)
	sw $t1, -8512($fp)
	lw $t0, -8512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -8516($fp)
	li $t0, 2
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
	lw $t0, -8532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1576($fp)
	sw $t0, -8536($fp)
	lw $t0, -8536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1588($fp)
	sw $t0, -8540($fp)
	lw $t0, -8540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1600($fp)
	sw $t0, -8544($fp)
	lw $t0, -8544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -8548($fp)
	li $t0, 0
	sw $t0, -8552($fp)
	li $t0, 4
	lw $t1, -8552($fp)
	mul $t0, $t0, $t1
	sw $t0, -8556($fp)
	lw $t0, -8556($fp)
	lw $t1, -8548($fp)
	add $t0, $t0, $t1
	sw $t0, -8560($fp)
	lw $t0, -8560($fp)
	lw $t1, 0($t0)
	sw $t1, -8564($fp)
	lw $t0, -8564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1636($fp)
	sw $t0, -8568($fp)
	lw $t0, -8568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1648($fp)
	sw $t0, -8572($fp)
	lw $t0, -8572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1660($fp)
	sw $t0, -8576($fp)
	lw $t0, -8576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1672($fp)
	sw $t0, -8580($fp)
	lw $t0, -8580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1684($fp)
	sw $t0, -8584($fp)
	lw $t0, -8584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1696($fp)
	sw $t0, -8588($fp)
	lw $t0, -8588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1708($fp)
	sw $t0, -8592($fp)
	lw $t0, -8592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -8596($fp)
	li $t0, 43276
	sw $t0, -8600($fp)
	lw $t1, -8600($fp)
	li $t2, 0
	bne $t1, $t2, label523
	j label522
label522:
	li $t0, 1
	sw $t0, -8596($fp)
label523:
	li $t0, 0
	sw $t0, -8604($fp)
	li $t0, 26995
	sw $t0, -8608($fp)
	lw $t0, -8608($fp)
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	sw $t0, -8612($fp)
	li $t0, 0
	sw $t0, -8616($fp)
	lw $t0, -1660($fp)
	sw $t0, -8620($fp)
	lw $t0, -736($fp)
	sw $t0, -8624($fp)
	lw $t0, -8620($fp)
	lw $t1, -8624($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8628($fp)
	lw $t1, -8628($fp)
	li $t2, 0
	bne $t1, $t2, label528
	j label527
label528:
	li $t0, 60973
	sw $t0, -8632($fp)
	lw $t1, -8632($fp)
	li $t2, 0
	bne $t1, $t2, label526
	j label527
label526:
	li $t0, 1
	sw $t0, -8616($fp)
label527:
	lw $t0, -1636($fp)
	sw $t0, -8636($fp)
	lw $t0, -1036($fp)
	sw $t0, -8640($fp)
	lw $t0, -8636($fp)
	lw $t1, -8640($fp)
	mul $t0, $t0, $t1
	sw $t0, -8644($fp)
	addi $sp, $sp, -4
	lw $t0, -8612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8644($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8648($fp)
	addi $sp, $sp, 16
	lw $t1, -8648($fp)
	li $t2, 0
	bne $t1, $t2, label525
	j label524
label524:
	li $t0, 1
	sw $t0, -8604($fp)
label525:
	lw $t0, -8596($fp)
	lw $t1, -8604($fp)
	mul $t0, $t0, $t1
	sw $t0, -8652($fp)
	lw $ra, -4($fp)
	lw $v0, -8652($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1096
	li $t0, 41923
	sw $t0, -16($fp)
	addi $t0, $fp, -8
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
	li $t0, 4933
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	li $t0, 15683
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	li $t0, 40937
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	li $t0, 52035
	sw $t0, -76($fp)
	addi $t0, $fp, -12
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
	li $t0, 0
	sw $t0, -100($fp)
	addi $t0, $fp, -8
	sw $t0, -104($fp)
	li $t0, 0
	sw $t0, -108($fp)
	li $t0, 4
	lw $t1, -108($fp)
	mul $t0, $t0, $t1
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	lw $t1, -104($fp)
	add $t0, $t0, $t1
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	lw $t1, 0($t0)
	sw $t1, -120($fp)
	li $t0, 0
	lw $t1, -120($fp)
	sub $t0, $t0, $t1
	sw $t0, -124($fp)
	li $t0, 0
	sw $t0, -128($fp)
	lw $t0, -56($fp)
	sw $t0, -132($fp)
	lw $t0, -44($fp)
	sw $t0, -136($fp)
	lw $t1, -132($fp)
	lw $t2, -136($fp)
	blt $t1, $t2, label531
	j label532
label531:
	li $t0, 1
	sw $t0, -128($fp)
label532:
	lw $t1, -124($fp)
	lw $t2, -128($fp)
	beq $t1, $t2, label529
	j label530
label529:
	li $t0, 1
	sw $t0, -100($fp)
label530:
	lw $t0, -100($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -140($fp)
	li $t0, 28846
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	li $t0, 53692
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	li $t0, 54637
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 9115
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	li $t0, 5269
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	li $t0, 55265
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	li $t0, 58490
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	li $t0, 27874
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	li $t0, 18563
	sw $t0, -248($fp)
	addi $t0, $fp, -148
	sw $t0, -252($fp)
	li $t0, 0
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
	li $t0, 45452
	sw $t0, -272($fp)
	addi $t0, $fp, -148
	sw $t0, -276($fp)
	li $t0, 1
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
	li $t0, 62330
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	li $t0, 16574
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	li $t0, 30917
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	li $t0, 0
	sw $t0, -332($fp)
	lw $t0, -228($fp)
	sw $t0, -336($fp)
	lw $t1, -336($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label535
label535:
	lw $t0, -240($fp)
	sw $t0, -340($fp)
	addi $t0, $fp, -148
	sw $t0, -344($fp)
	lw $t0, -300($fp)
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
	lw $t0, -340($fp)
	lw $t1, -360($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -364($fp)
	lw $t1, -364($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label534
label533:
	li $t0, 1
	sw $t0, -332($fp)
label534:
	li $t0, 0
	sw $t0, -368($fp)
	lw $t0, -204($fp)
	sw $t0, -372($fp)
	lw $t1, -372($fp)
	li $t2, 0
	bne $t1, $t2, label537
	j label536
label536:
	li $t0, 1
	sw $t0, -368($fp)
label537:
label538:
	addi $t0, $fp, -8
	sw $t0, -376($fp)
	addi $t0, $fp, -148
	sw $t0, -380($fp)
	li $t0, 0
	sw $t0, -384($fp)
	lw $t0, -180($fp)
	sw $t0, -388($fp)
	li $t0, 22721
	sw $t0, -392($fp)
	lw $t1, -388($fp)
	lw $t2, -392($fp)
	bge $t1, $t2, label541
	j label542
label541:
	li $t0, 1
	sw $t0, -384($fp)
label542:
	li $t0, 4
	lw $t1, -384($fp)
	mul $t0, $t0, $t1
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	lw $t1, -380($fp)
	add $t0, $t0, $t1
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	lw $t1, 0($t0)
	sw $t1, -404($fp)
	li $t0, 4
	lw $t1, -404($fp)
	mul $t0, $t0, $t1
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	lw $t1, -376($fp)
	add $t0, $t0, $t1
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	lw $t1, 0($t0)
	sw $t1, -416($fp)
	lw $t1, -416($fp)
	li $t2, 0
	bne $t1, $t2, label539
	j label540
label539:
label543:
	jal f10
	sw $v0, -420($fp)
	addi $sp, $sp, 4
	li $t0, 38945
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -428($fp)
	li $t0, 10005
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -436($fp)
	addi $sp, $sp, -4
	lw $t0, -428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -436($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -440($fp)
	addi $sp, $sp, 12
	lw $t1, -420($fp)
	lw $t2, -440($fp)
	bgt $t1, $t2, label544
	j label545
label544:
	li $t0, 0
	sw $t0, -444($fp)
	lw $t0, -192($fp)
	sw $t0, -448($fp)
	li $t0, 29789
	sw $t0, -452($fp)
	lw $t0, -448($fp)
	lw $t1, -452($fp)
	sub $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t1, -456($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label551
label551:
	lw $t0, -56($fp)
	sw $t0, -460($fp)
	lw $t1, -460($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label550
label549:
	li $t0, 1
	sw $t0, -444($fp)
label550:
	li $t0, 0
	sw $t0, -464($fp)
	li $t0, 32836
	sw $t0, -468($fp)
	lw $t0, -228($fp)
	sw $t0, -472($fp)
	lw $t0, -468($fp)
	lw $t1, -472($fp)
	add $t0, $t0, $t1
	sw $t0, -476($fp)
	lw $t1, -476($fp)
	li $t2, 0
	bne $t1, $t2, label554
	j label553
label554:
	lw $t0, -216($fp)
	sw $t0, -480($fp)
	lw $t1, -480($fp)
	li $t2, 0
	bne $t1, $t2, label552
	j label553
label552:
	li $t0, 1
	sw $t0, -464($fp)
label553:
	lw $t0, -56($fp)
	sw $t0, -484($fp)
	li $t0, 0
	lw $t1, -484($fp)
	sub $t0, $t0, $t1
	sw $t0, -488($fp)
	li $t0, 0
	sw $t0, -492($fp)
	li $t0, 37399
	sw $t0, -496($fp)
	li $t0, 2794
	sw $t0, -500($fp)
	lw $t1, -496($fp)
	lw $t2, -500($fp)
	bne $t1, $t2, label555
	j label557
label557:
	li $t0, 52620
	sw $t0, -504($fp)
	lw $t1, -504($fp)
	li $t2, 0
	bne $t1, $t2, label555
	j label556
label555:
	li $t0, 1
	sw $t0, -492($fp)
label556:
	li $t0, 0
	sw $t0, -508($fp)
	li $t0, 0
	sw $t0, -512($fp)
	li $t0, 27518
	sw $t0, -516($fp)
	li $t0, 61584
	sw $t0, -520($fp)
	lw $t1, -516($fp)
	lw $t2, -520($fp)
	bgt $t1, $t2, label560
	j label561
label560:
	li $t0, 1
	sw $t0, -512($fp)
label561:
	li $t0, 9344
	sw $t0, -524($fp)
	lw $t1, -512($fp)
	lw $t2, -524($fp)
	blt $t1, $t2, label558
	j label559
label558:
	li $t0, 1
	sw $t0, -508($fp)
label559:
	addi $sp, $sp, -4
	lw $t0, -444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -508($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -528($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -8
	sw $t0, -532($fp)
	lw $t0, -240($fp)
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
	lw $t0, -528($fp)
	lw $t1, -548($fp)
	sub $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t0, -240($fp)
	sw $t0, -556($fp)
	lw $t1, -552($fp)
	lw $t2, -556($fp)
	ble $t1, $t2, label546
	j label547
label546:
	li $t0, 29007
	sw $t0, -560($fp)
	j label548
label547:
	jal f10
	sw $v0, -564($fp)
	addi $sp, $sp, 4
label548:
	j label543
label545:
	j label538
label540:
	lw $t0, -156($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -216($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -228($fp)
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -240($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -600($fp)
	li $t0, 0
	sw $t0, -604($fp)
	li $t0, 4
	lw $t1, -604($fp)
	mul $t0, $t0, $t1
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	lw $t1, -600($fp)
	add $t0, $t0, $t1
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	lw $t1, 0($t0)
	sw $t1, -616($fp)
	lw $t0, -616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -620($fp)
	li $t0, 1
	sw $t0, -624($fp)
	li $t0, 4
	lw $t1, -624($fp)
	mul $t0, $t0, $t1
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	lw $t1, -620($fp)
	add $t0, $t0, $t1
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	lw $t1, 0($t0)
	sw $t1, -636($fp)
	lw $t0, -636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -300($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -312($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -652($fp)
	lw $t0, -204($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -660($fp)
	li $t0, 0
	sw $t0, -664($fp)
	lw $t0, -216($fp)
	sw $t0, -668($fp)
	li $t0, 0
	lw $t1, -668($fp)
	sub $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $t1, -672($fp)
	li $t2, 0
	bne $t1, $t2, label564
	j label566
label566:
	lw $t0, -180($fp)
	sw $t0, -676($fp)
	lw $t1, -676($fp)
	li $t2, 0
	bne $t1, $t2, label564
	j label565
label564:
	li $t0, 1
	sw $t0, -664($fp)
label565:
	li $t0, 0
	sw $t0, -680($fp)
	lw $t0, -324($fp)
	sw $t0, -684($fp)
	li $t0, 0
	lw $t1, -684($fp)
	sub $t0, $t0, $t1
	sw $t0, -688($fp)
	lw $t1, -688($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label568
label569:
	lw $t0, -300($fp)
	sw $t0, -692($fp)
	lw $t1, -692($fp)
	li $t2, 0
	bne $t1, $t2, label567
	j label568
label567:
	li $t0, 1
	sw $t0, -680($fp)
label568:
	li $t0, 0
	sw $t0, -696($fp)
	lw $t0, -156($fp)
	sw $t0, -700($fp)
	lw $t0, -68($fp)
	sw $t0, -704($fp)
	lw $t0, -700($fp)
	lw $t1, -704($fp)
	sub $t0, $t0, $t1
	sw $t0, -708($fp)
	li $t0, 48854
	sw $t0, -712($fp)
	lw $t1, -708($fp)
	lw $t2, -712($fp)
	ble $t1, $t2, label570
	j label571
label570:
	li $t0, 1
	sw $t0, -696($fp)
label571:
	li $t0, 14092
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -720($fp)
	li $t0, 0
	sw $t0, -724($fp)
	li $t0, 53115
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -732($fp)
	li $t0, 59753
	sw $t0, -736($fp)
	li $t0, 24269
	sw $t0, -740($fp)
	li $t0, 25936
	sw $t0, -744($fp)
	lw $t0, -740($fp)
	lw $t1, -744($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -748($fp)
	lw $t0, -324($fp)
	sw $t0, -752($fp)
	lw $t0, -748($fp)
	lw $t1, -752($fp)
	mul $t0, $t0, $t1
	sw $t0, -756($fp)
	addi $sp, $sp, -4
	lw $t0, -732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -756($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -760($fp)
	addi $sp, $sp, 16
	lw $t1, -760($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label572
label572:
	li $t0, 1
	sw $t0, -724($fp)
label573:
	li $t0, 0
	sw $t0, -764($fp)
	li $t0, 4408
	sw $t0, -768($fp)
	lw $t1, -768($fp)
	li $t2, 0
	bne $t1, $t2, label575
	j label574
label574:
	li $t0, 1
	sw $t0, -764($fp)
label575:
	addi $sp, $sp, -4
	lw $t0, -680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -764($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -772($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -772($fp)
	sub $t0, $t0, $t1
	sw $t0, -776($fp)
	jal f10
	sw $v0, -780($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -780($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -784($fp)
	addi $sp, $sp, 12
	li $t0, 37770
	sw $t0, -788($fp)
	lw $t0, -44($fp)
	sw $t0, -792($fp)
	lw $t0, -788($fp)
	lw $t1, -792($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -796($fp)
	li $t0, 45472
	sw $t0, -800($fp)
	lw $t0, -796($fp)
	lw $t1, -800($fp)
	mul $t0, $t0, $t1
	sw $t0, -804($fp)
	addi $t0, $fp, -8
	sw $t0, -808($fp)
	lw $t0, -68($fp)
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
	addi $sp, $sp, -4
	lw $t0, -660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -824($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -828($fp)
	addi $sp, $sp, 24
	lw $t1, -828($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label562
label562:
	li $t0, 1
	sw $t0, -652($fp)
label563:
	lw $ra, -4($fp)
	lw $v0, -652($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -832($fp)
	li $t0, 62230
	sw $t0, -836($fp)
	li $t0, 0
	lw $t1, -836($fp)
	sub $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t1, -840($fp)
	li $t2, 0
	bne $t1, $t2, label580
	j label579
label579:
	li $t0, 1
	sw $t0, -832($fp)
label580:
	li $t0, 0
	lw $t1, -832($fp)
	sub $t0, $t0, $t1
	sw $t0, -844($fp)
	lw $t1, -844($fp)
	li $t2, 0
	bne $t1, $t2, label577
	j label576
label576:
	li $t0, 0
	sw $t0, -848($fp)
	li $t0, 0
	sw $t0, -852($fp)
	li $t0, 19361
	sw $t0, -856($fp)
	lw $t0, -156($fp)
	sw $t0, -860($fp)
	lw $t1, -856($fp)
	lw $t2, -860($fp)
	bne $t1, $t2, label585
	j label584
label585:
	li $t0, 38583
	sw $t0, -864($fp)
	lw $t1, -864($fp)
	li $t2, 0
	bne $t1, $t2, label583
	j label584
label583:
	li $t0, 1
	sw $t0, -852($fp)
label584:
	addi $sp, $sp, -4
	lw $t0, -852($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -868($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -868($fp)
	sub $t0, $t0, $t1
	sw $t0, -872($fp)
	li $t0, 0
	sw $t0, -876($fp)
	addi $t0, $fp, -148
	sw $t0, -880($fp)
	li $t0, 0
	sw $t0, -884($fp)
	li $t0, 4
	lw $t1, -884($fp)
	mul $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	lw $t1, -880($fp)
	add $t0, $t0, $t1
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	lw $t1, 0($t0)
	sw $t1, -896($fp)
	li $t0, 8185
	sw $t0, -900($fp)
	lw $t1, -896($fp)
	lw $t2, -900($fp)
	bne $t1, $t2, label586
	j label587
label586:
	li $t0, 1
	sw $t0, -876($fp)
label587:
	lw $t0, -192($fp)
	sw $t0, -904($fp)
	lw $t0, -56($fp)
	sw $t0, -908($fp)
	lw $t0, -904($fp)
	lw $t1, -908($fp)
	sub $t0, $t0, $t1
	sw $t0, -912($fp)
	li $t0, 57147
	sw $t0, -916($fp)
	li $t0, 0
	lw $t1, -916($fp)
	sub $t0, $t0, $t1
	sw $t0, -920($fp)
	addi $sp, $sp, -4
	lw $t0, -920($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -924($fp)
	addi $sp, $sp, 8
	li $t0, 47236
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -932($fp)
	li $t0, 0
	sw $t0, -936($fp)
	addi $t0, $fp, -148
	sw $t0, -940($fp)
	lw $t0, -68($fp)
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
	addi $sp, $sp, -4
	lw $t0, -956($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -960($fp)
	addi $sp, $sp, 8
	lw $t0, -312($fp)
	sw $t0, -964($fp)
	lw $t1, -960($fp)
	lw $t2, -964($fp)
	ble $t1, $t2, label588
	j label589
label588:
	li $t0, 1
	sw $t0, -936($fp)
label589:
	addi $sp, $sp, -4
	lw $t0, -924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -936($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -968($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -972($fp)
	addi $t0, $fp, -148
	sw $t0, -976($fp)
	lw $t0, -312($fp)
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
	lw $t1, -992($fp)
	li $t2, 0
	bne $t1, $t2, label592
	j label591
label592:
	lw $t0, -180($fp)
	sw $t0, -996($fp)
	lw $t1, -996($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label591
label590:
	li $t0, 1
	sw $t0, -972($fp)
label591:
	li $t0, 0
	sw $t0, -1000($fp)
	lw $t0, -204($fp)
	sw $t0, -1004($fp)
	lw $t1, -1004($fp)
	li $t2, 0
	bne $t1, $t2, label596
	j label594
label596:
	lw $t0, -228($fp)
	sw $t0, -1008($fp)
	lw $t1, -1008($fp)
	li $t2, 0
	bne $t1, $t2, label595
	j label594
label595:
	li $t0, 55184
	sw $t0, -1012($fp)
	lw $t1, -1012($fp)
	li $t2, 0
	bne $t1, $t2, label593
	j label594
label593:
	li $t0, 1
	sw $t0, -1000($fp)
label594:
	addi $sp, $sp, -4
	lw $t0, -876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1000($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1016($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -1016($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1020($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -1020($fp)
	sub $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t1, -872($fp)
	lw $t2, -1024($fp)
	bge $t1, $t2, label581
	j label582
label581:
	li $t0, 1
	sw $t0, -848($fp)
label582:
	lw $ra, -4($fp)
	lw $v0, -848($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label578
label577:
	li $t0, 482
	sw $t0, -1028($fp)
label578:
	addi $t0, $fp, -8
	sw $t0, -1032($fp)
	li $t0, 0
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
	lw $t0, -44($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -56($fp)
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -1064($fp)
	li $t0, 0
	sw $t0, -1068($fp)
	li $t0, 4
	lw $t1, -1068($fp)
	mul $t0, $t0, $t1
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	lw $t1, -1064($fp)
	add $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	lw $t1, 0($t0)
	sw $t1, -1080($fp)
	lw $t0, -1080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
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
	lw $ra, -4($fp)
	lw $v0, -1100($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -572
	li $t0, 39427
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 28733
	sw $t0, -32($fp)
	addi $t0, $fp, -16
	sw $t0, -36($fp)
	li $t0, 0
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -44($fp)
	lw $t0, -36($fp)
	lw $t1, -44($fp)
	add $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -32($fp)
	lw $t1, -48($fp)
	sw $t0, 0($t1)
	lw $t0, -48($fp)
	lw $t1, 0($t0)
	sw $t1, -52($fp)
	li $t0, 14239
	sw $t0, -56($fp)
	addi $t0, $fp, -16
	sw $t0, -60($fp)
	li $t0, 1
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
	li $t0, 48771
	sw $t0, -80($fp)
	addi $t0, $fp, -16
	sw $t0, -84($fp)
	li $t0, 2
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
	li $t0, 597
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	li $t0, 17033
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	li $t0, 35855
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	lw $t0, -24($fp)
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -144($fp)
	li $t0, 0
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
	addi $t0, $fp, -16
	sw $t0, -164($fp)
	li $t0, 1
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
	addi $t0, $fp, -16
	sw $t0, -184($fp)
	li $t0, 2
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
	lw $t0, -108($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 26759
	sw $t0, -216($fp)
	lw $t0, -108($fp)
	sw $t0, -220($fp)
	lw $t0, -216($fp)
	lw $t1, -220($fp)
	sub $t0, $t0, $t1
	sw $t0, -224($fp)
	li $t0, 0
	sw $t0, -228($fp)
	li $t0, 0
	sw $t0, -232($fp)
	li $t0, 5667
	sw $t0, -236($fp)
	lw $t1, -236($fp)
	li $t2, 0
	bne $t1, $t2, label600
	j label599
label599:
	li $t0, 1
	sw $t0, -232($fp)
label600:
	lw $t0, 8($fp)
	sw $t0, -240($fp)
	lw $t1, -232($fp)
	lw $t2, -240($fp)
	ble $t1, $t2, label597
	j label598
label597:
	li $t0, 1
	sw $t0, -228($fp)
label598:
	addi $t0, $fp, -16
	sw $t0, -244($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -264($fp)
	lw $t0, 12($fp)
	sw $t0, -268($fp)
	li $t0, 0
	lw $t1, -268($fp)
	sub $t0, $t0, $t1
	sw $t0, -272($fp)
	lw $t1, -272($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label601
label601:
	li $t0, 1
	sw $t0, -264($fp)
label602:
	li $t0, 33433
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -280($fp)
	addi $sp, $sp, -4
	lw $t0, -224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -280($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -284($fp)
	addi $sp, $sp, 24
	lw $ra, -4($fp)
	lw $v0, -284($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label603:
	li $t0, 0
	sw $t0, -288($fp)
	addi $t0, $fp, -16
	sw $t0, -292($fp)
	li $t0, 2
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
	lw $t0, 12($fp)
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -316($fp)
	li $t0, 0
	sw $t0, -320($fp)
	jal f10
	sw $v0, -324($fp)
	addi $sp, $sp, 4
	lw $t0, -24($fp)
	sw $t0, -328($fp)
	lw $t1, -324($fp)
	lw $t2, -328($fp)
	beq $t1, $t2, label608
	j label609
label608:
	li $t0, 1
	sw $t0, -320($fp)
label609:
	li $t0, 1252
	sw $t0, -332($fp)
	li $t0, 46806
	sw $t0, -336($fp)
	lw $t0, -332($fp)
	lw $t1, -336($fp)
	sub $t0, $t0, $t1
	sw $t0, -340($fp)
	lw $t0, -132($fp)
	sw $t0, -344($fp)
	addi $sp, $sp, -4
	lw $t0, -308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -344($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -348($fp)
	addi $sp, $sp, 24
	li $t0, 19853
	sw $t0, -352($fp)
	lw $t1, -348($fp)
	lw $t2, -352($fp)
	beq $t1, $t2, label606
	j label607
label606:
	li $t0, 1
	sw $t0, -288($fp)
label607:
	addi $t0, $fp, -16
	sw $t0, -356($fp)
	li $t0, 0
	sw $t0, -360($fp)
	li $t0, 4
	lw $t1, -360($fp)
	mul $t0, $t0, $t1
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	lw $t1, -356($fp)
	add $t0, $t0, $t1
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	lw $t1, 0($t0)
	sw $t1, -372($fp)
	lw $t0, -24($fp)
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -380($fp)
	lw $t0, 12($fp)
	sw $t0, -384($fp)
	li $t0, 0
	lw $t1, -384($fp)
	sub $t0, $t0, $t1
	sw $t0, -388($fp)
	addi $t0, $fp, -16
	sw $t0, -392($fp)
	li $t0, 0
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
	addi $sp, $sp, -4
	lw $t0, -380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -408($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -412($fp)
	addi $sp, $sp, 16
	li $t0, 52695
	sw $t0, -416($fp)
	lw $t0, -412($fp)
	lw $t1, -416($fp)
	add $t0, $t0, $t1
	sw $t0, -420($fp)
	addi $sp, $sp, -4
	lw $t0, -288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -420($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -424($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -428($fp)
	addi $t0, $fp, -16
	sw $t0, -432($fp)
	lw $t0, 4($fp)
	sw $t0, -436($fp)
	li $t0, 4
	lw $t1, -436($fp)
	mul $t0, $t0, $t1
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	lw $t1, -432($fp)
	add $t0, $t0, $t1
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	lw $t1, 0($t0)
	sw $t1, -448($fp)
	li $t0, 0
	lw $t1, -448($fp)
	sub $t0, $t0, $t1
	sw $t0, -452($fp)
	li $t0, 3859
	sw $t0, -456($fp)
	lw $t0, 12($fp)
	sw $t0, -460($fp)
	lw $t0, -456($fp)
	lw $t1, -460($fp)
	mul $t0, $t0, $t1
	sw $t0, -464($fp)
	lw $t1, -452($fp)
	lw $t2, -464($fp)
	ble $t1, $t2, label610
	j label611
label610:
	li $t0, 1
	sw $t0, -428($fp)
label611:
	lw $t1, -424($fp)
	lw $t2, -428($fp)
	bne $t1, $t2, label604
	j label605
label604:
	li $t0, 0
	sw $t0, -468($fp)
	lw $t0, 4($fp)
	sw $t0, -472($fp)
	addi $t0, $fp, -16
	sw $t0, -476($fp)
	lw $t0, 4($fp)
	sw $t0, -480($fp)
	li $t0, 4
	lw $t1, -480($fp)
	mul $t0, $t0, $t1
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	lw $t1, -476($fp)
	add $t0, $t0, $t1
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	lw $t1, 0($t0)
	sw $t1, -492($fp)
	lw $t1, -472($fp)
	lw $t2, -492($fp)
	bge $t1, $t2, label614
	j label613
label614:
	li $t0, 2313
	sw $t0, -496($fp)
	lw $t1, -496($fp)
	li $t2, 0
	bne $t1, $t2, label612
	j label613
label612:
	li $t0, 1
	sw $t0, -468($fp)
label613:
	lw $ra, -4($fp)
	lw $v0, -468($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label603
label605:
	lw $t0, -24($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -504($fp)
	li $t0, 0
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
	addi $t0, $fp, -16
	sw $t0, -524($fp)
	li $t0, 1
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
	addi $t0, $fp, -16
	sw $t0, -544($fp)
	li $t0, 2
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
	lw $t0, -108($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	jal f10
	sw $v0, -576($fp)
	addi $sp, $sp, 4
	lw $ra, -4($fp)
	lw $v0, -576($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -32
	li $t0, 11464
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 38960
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -24($fp)
	addi $sp, $sp, -4
	lw $t0, -24($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -28($fp)
	addi $sp, $sp, 8
	lw $t0, -12($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 46343
	sw $t0, -36($fp)
	lw $ra, -4($fp)
	lw $v0, -36($fp)
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
