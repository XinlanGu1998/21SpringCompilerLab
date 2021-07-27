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
	addi $sp, $sp, -340
	li $t0, 4148
	sw $t0, -32($fp)
	addi $t0, $fp, -28
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
	li $t0, 39360
	sw $t0, -56($fp)
	addi $t0, $fp, -28
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
	li $t0, 27268
	sw $t0, -80($fp)
	addi $t0, $fp, -28
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
	li $t0, 21079
	sw $t0, -104($fp)
	addi $t0, $fp, -28
	sw $t0, -108($fp)
	li $t0, 3
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
	li $t0, 10469
	sw $t0, -128($fp)
	addi $t0, $fp, -28
	sw $t0, -132($fp)
	li $t0, 4
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
	li $t0, 48921
	sw $t0, -152($fp)
	addi $t0, $fp, -28
	sw $t0, -156($fp)
	li $t0, 5
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
	addi $t0, $fp, -28
	sw $t0, -176($fp)
	lw $t0, 4($fp)
	sw $t0, -180($fp)
	lw $t0, 4($fp)
	sw $t0, -184($fp)
	lw $t0, -180($fp)
	lw $t1, -184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -188($fp)
	lw $t0, 4($fp)
	sw $t0, -192($fp)
	lw $t0, -188($fp)
	lw $t1, -192($fp)
	mul $t0, $t0, $t1
	sw $t0, -196($fp)
	li $t0, 4
	lw $t1, -196($fp)
	mul $t0, $t0, $t1
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	lw $t1, -176($fp)
	add $t0, $t0, $t1
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	lw $t1, 0($t0)
	sw $t1, -208($fp)
	li $t0, 0
	lw $t1, -208($fp)
	sub $t0, $t0, $t1
	sw $t0, -212($fp)
	addi $t0, $fp, -28
	sw $t0, -216($fp)
	li $t0, 0
	sw $t0, -220($fp)
	li $t0, 4
	lw $t1, -220($fp)
	mul $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	lw $t1, -216($fp)
	add $t0, $t0, $t1
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	lw $t1, 0($t0)
	sw $t1, -232($fp)
	lw $t0, -232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -236($fp)
	li $t0, 1
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
	lw $t0, -252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -256($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -276($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -296($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -316($fp)
	li $t0, 5
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
	li $t0, 57254
	sw $t0, -336($fp)
	li $t0, 0
	lw $t1, -336($fp)
	sub $t0, $t0, $t1
	sw $t0, -340($fp)
	li $t0, 0
	lw $t1, -340($fp)
	sub $t0, $t0, $t1
	sw $t0, -344($fp)
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
	addi $sp, $sp, -2932
	li $t0, 4812
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	li $t0, 8017
	sw $t0, -76($fp)
	addi $t0, $fp, -28
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
	li $t0, 32505
	sw $t0, -100($fp)
	addi $t0, $fp, -28
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
	li $t0, 61521
	sw $t0, -124($fp)
	addi $t0, $fp, -28
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
	li $t0, 9500
	sw $t0, -148($fp)
	addi $t0, $fp, -28
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
	li $t0, 31446
	sw $t0, -172($fp)
	addi $t0, $fp, -28
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
	li $t0, 22329
	sw $t0, -196($fp)
	addi $t0, $fp, -28
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
	li $t0, 46735
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	li $t0, 33211
	sw $t0, -232($fp)
	addi $t0, $fp, -52
	sw $t0, -236($fp)
	li $t0, 0
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
	li $t0, 56657
	sw $t0, -256($fp)
	addi $t0, $fp, -52
	sw $t0, -260($fp)
	li $t0, 1
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
	li $t0, 3872
	sw $t0, -280($fp)
	addi $t0, $fp, -52
	sw $t0, -284($fp)
	li $t0, 2
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
	li $t0, 43308
	sw $t0, -304($fp)
	addi $t0, $fp, -52
	sw $t0, -308($fp)
	li $t0, 3
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
	li $t0, 662
	sw $t0, -328($fp)
	addi $t0, $fp, -52
	sw $t0, -332($fp)
	li $t0, 4
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
	li $t0, 39032
	sw $t0, -352($fp)
	addi $t0, $fp, -52
	sw $t0, -356($fp)
	li $t0, 5
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
	li $t0, 24248
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	li $t0, 9937
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	li $t0, 53999
	sw $t0, -400($fp)
	addi $t0, $fp, -60
	sw $t0, -404($fp)
	li $t0, 0
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
	li $t0, 14049
	sw $t0, -424($fp)
	addi $t0, $fp, -60
	sw $t0, -428($fp)
	li $t0, 1
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
	li $t0, 55727
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	li $t0, 59553
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	li $t0, 44022
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	li $t0, 24750
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	li $t0, 51722
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	li $t0, 29237
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	lw $t0, -68($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -524($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -544($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -564($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -584($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -604($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -624($fp)
	li $t0, 5
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
	lw $t0, -224($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -648($fp)
	li $t0, 0
	sw $t0, -652($fp)
	li $t0, 4
	lw $t1, -652($fp)
	mul $t0, $t0, $t1
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	lw $t1, -648($fp)
	add $t0, $t0, $t1
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	lw $t1, 0($t0)
	sw $t1, -664($fp)
	lw $t0, -664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -668($fp)
	li $t0, 1
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
	addi $t0, $fp, -52
	sw $t0, -688($fp)
	li $t0, 2
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
	addi $t0, $fp, -52
	sw $t0, -708($fp)
	li $t0, 3
	sw $t0, -712($fp)
	li $t0, 4
	lw $t1, -712($fp)
	mul $t0, $t0, $t1
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	lw $t1, -708($fp)
	add $t0, $t0, $t1
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	lw $t1, 0($t0)
	sw $t1, -724($fp)
	lw $t0, -724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -728($fp)
	li $t0, 4
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
	addi $t0, $fp, -52
	sw $t0, -748($fp)
	li $t0, 5
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
	lw $t0, -380($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -776($fp)
	li $t0, 0
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
	addi $t0, $fp, -60
	sw $t0, -796($fp)
	li $t0, 1
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
	lw $t0, -452($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -464($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -488($fp)
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -840($fp)
	li $t0, 28898
	sw $t0, -844($fp)
	li $t0, 0
	lw $t1, -844($fp)
	sub $t0, $t0, $t1
	sw $t0, -848($fp)
	li $t0, 0
	lw $t1, -848($fp)
	sub $t0, $t0, $t1
	sw $t0, -852($fp)
	li $t0, 0
	lw $t1, -852($fp)
	sub $t0, $t0, $t1
	sw $t0, -856($fp)
	li $t0, 0
	sw $t0, -860($fp)
	li $t0, 25546
	sw $t0, -864($fp)
	li $t0, 0
	lw $t1, -864($fp)
	sub $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $t0, -224($fp)
	sw $t0, -872($fp)
	lw $t0, -868($fp)
	lw $t1, -872($fp)
	sub $t0, $t0, $t1
	sw $t0, -876($fp)
	li $t0, 56505
	sw $t0, -880($fp)
	lw $t1, -876($fp)
	lw $t2, -880($fp)
	bge $t1, $t2, label123
	j label124
label123:
	li $t0, 1
	sw $t0, -860($fp)
label124:
	lw $t1, -856($fp)
	lw $t2, -860($fp)
	beq $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -840($fp)
label122:
	lw $ra, -4($fp)
	lw $v0, -840($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -68($fp)
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -888($fp)
	li $t0, 0
	sw $t0, -892($fp)
	li $t0, 4
	lw $t1, -892($fp)
	mul $t0, $t0, $t1
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	lw $t1, -888($fp)
	add $t0, $t0, $t1
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	lw $t1, 0($t0)
	sw $t1, -904($fp)
	lw $t0, -904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -908($fp)
	li $t0, 1
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
	lw $t0, -924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -928($fp)
	li $t0, 2
	sw $t0, -932($fp)
	li $t0, 4
	lw $t1, -932($fp)
	mul $t0, $t0, $t1
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	lw $t1, -928($fp)
	add $t0, $t0, $t1
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	lw $t1, 0($t0)
	sw $t1, -944($fp)
	lw $t0, -944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -948($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -968($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -988($fp)
	li $t0, 5
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
	lw $t0, -224($fp)
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	addi $t0, $fp, -52
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
	lw $t0, -380($fp)
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1140($fp)
	li $t0, 0
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
	addi $t0, $fp, -60
	sw $t0, -1160($fp)
	li $t0, 1
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
	lw $t0, -452($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -464($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -488($fp)
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1204($fp)
	lw $t0, -452($fp)
	sw $t0, -1208($fp)
	lw $t1, -1208($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label126
label129:
	addi $t0, $fp, -28
	sw $t0, -1212($fp)
	li $t0, 5
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
	lw $t1, -1228($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label126
label128:
	li $t0, 0
	sw $t0, -1232($fp)
	lw $t0, -464($fp)
	sw $t0, -1236($fp)
	lw $t0, -464($fp)
	sw $t0, -1240($fp)
	lw $t1, -1236($fp)
	lw $t2, -1240($fp)
	bne $t1, $t2, label130
	j label131
label130:
	li $t0, 1
	sw $t0, -1232($fp)
label131:
	li $t0, 39890
	sw $t0, -1244($fp)
	lw $t1, -1232($fp)
	lw $t2, -1244($fp)
	beq $t1, $t2, label127
	j label126
label127:
	li $t0, 41696
	sw $t0, -1248($fp)
	lw $t0, -380($fp)
	sw $t0, -1252($fp)
	lw $t0, -1248($fp)
	lw $t1, -1252($fp)
	mul $t0, $t0, $t1
	sw $t0, -1256($fp)
	addi $t0, $fp, -52
	sw $t0, -1260($fp)
	lw $t0, -464($fp)
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
	lw $t0, -1256($fp)
	lw $t1, -1276($fp)
	mul $t0, $t0, $t1
	sw $t0, -1280($fp)
	lw $t1, -1280($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label126
label125:
	li $t0, 1
	sw $t0, -1204($fp)
label126:
	lw $ra, -4($fp)
	lw $v0, -1204($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 40827
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	li $t0, 47907
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	lw $t0, -1288($fp)
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1300($fp)
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1316($fp)
	addi $t0, $fp, -60
	sw $t0, -1320($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -1340($fp)
	li $t0, 40112
	sw $t0, -1344($fp)
	lw $t0, -1288($fp)
	sw $t0, -1348($fp)
	lw $t1, -1344($fp)
	lw $t2, -1348($fp)
	beq $t1, $t2, label136
	j label135
label136:
	lw $t0, -1300($fp)
	sw $t0, -1352($fp)
	lw $t1, -1352($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label135
label134:
	li $t0, 1
	sw $t0, -1340($fp)
label135:
	lw $t0, -380($fp)
	sw $t0, -1356($fp)
	addi $sp, $sp, -4
	lw $t0, -1336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1356($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1360($fp)
	addi $sp, $sp, 16
	lw $t0, -452($fp)
	sw $t0, -1364($fp)
	lw $t1, -1360($fp)
	lw $t2, -1364($fp)
	beq $t1, $t2, label132
	j label133
label132:
	li $t0, 1
	sw $t0, -1316($fp)
label133:
	li $t0, 0
	sw $t0, -1368($fp)
	lw $t0, -488($fp)
	sw $t0, -1372($fp)
	li $t0, 57408
	sw $t0, -1376($fp)
	lw $t0, -1372($fp)
	lw $t1, -1376($fp)
	add $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $t0, -500($fp)
	sw $t0, -1384($fp)
	lw $t1, -1380($fp)
	lw $t2, -1384($fp)
	beq $t1, $t2, label137
	j label138
label137:
	li $t0, 1
	sw $t0, -1368($fp)
label138:
	li $t0, 0
	sw $t0, -1388($fp)
	li $t0, 0
	sw $t0, -1392($fp)
	li $t0, 8665
	sw $t0, -1396($fp)
	lw $t0, -476($fp)
	sw $t0, -1400($fp)
	lw $t1, -1396($fp)
	lw $t2, -1400($fp)
	ble $t1, $t2, label141
	j label142
label141:
	li $t0, 1
	sw $t0, -1392($fp)
label142:
	li $t0, 36812
	sw $t0, -1404($fp)
	lw $t1, -1392($fp)
	lw $t2, -1404($fp)
	bge $t1, $t2, label139
	j label140
label139:
	li $t0, 1
	sw $t0, -1388($fp)
label140:
	addi $sp, $sp, -4
	lw $t0, -1316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1388($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1408($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -28
	sw $t0, -1412($fp)
	li $t0, 0
	sw $t0, -1416($fp)
	li $t0, 7787
	sw $t0, -1420($fp)
	lw $t0, -224($fp)
	sw $t0, -1424($fp)
	lw $t1, -1420($fp)
	lw $t2, -1424($fp)
	blt $t1, $t2, label143
	j label144
label143:
	li $t0, 1
	sw $t0, -1416($fp)
label144:
	li $t0, 4
	lw $t1, -1416($fp)
	mul $t0, $t0, $t1
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	lw $t1, -1412($fp)
	add $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	lw $t1, 0($t0)
	sw $t1, -1436($fp)
	lw $t0, -1408($fp)
	lw $t1, -1436($fp)
	add $t0, $t0, $t1
	sw $t0, -1440($fp)
	lw $ra, -4($fp)
	lw $v0, -1440($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -52
	sw $t0, -1444($fp)
	lw $t0, -464($fp)
	sw $t0, -1448($fp)
	li $t0, 50263
	sw $t0, -1452($fp)
	li $t0, 0
	lw $t1, -1452($fp)
	sub $t0, $t0, $t1
	sw $t0, -1456($fp)
	lw $t0, -1448($fp)
	lw $t1, -1456($fp)
	mul $t0, $t0, $t1
	sw $t0, -1460($fp)
	li $t0, 0
	lw $t1, -1460($fp)
	sub $t0, $t0, $t1
	sw $t0, -1464($fp)
	li $t0, 0
	lw $t1, -1464($fp)
	sub $t0, $t0, $t1
	sw $t0, -1468($fp)
	li $t0, 4
	lw $t1, -1468($fp)
	mul $t0, $t0, $t1
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	lw $t1, -1444($fp)
	add $t0, $t0, $t1
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	lw $t1, 0($t0)
	sw $t1, -1480($fp)
	li $t0, 42479
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	sw $t0, -1492($fp)
	li $t0, 0
	sw $t0, -1496($fp)
	li $t0, 51095
	sw $t0, -1500($fp)
	addi $t0, $fp, -28
	sw $t0, -1504($fp)
	li $t0, 3
	sw $t0, -1508($fp)
	li $t0, 4
	lw $t1, -1508($fp)
	mul $t0, $t0, $t1
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	lw $t1, -1504($fp)
	add $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	lw $t1, 0($t0)
	sw $t1, -1520($fp)
	lw $t0, -1500($fp)
	lw $t1, -1520($fp)
	add $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t1, -1524($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label146
label147:
	li $t0, 9807
	sw $t0, -1528($fp)
	li $t0, 0
	lw $t1, -1528($fp)
	sub $t0, $t0, $t1
	sw $t0, -1532($fp)
	li $t0, 0
	lw $t1, -1532($fp)
	sub $t0, $t0, $t1
	sw $t0, -1536($fp)
	lw $t0, 4($fp)
	sw $t0, -1540($fp)
	li $t0, 0
	lw $t1, -1540($fp)
	sub $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $t0, -1536($fp)
	lw $t1, -1544($fp)
	add $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $t1, -1548($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label146
label145:
	li $t0, 1
	sw $t0, -1496($fp)
label146:
	li $t0, 0
	sw $t0, -1552($fp)
	lw $t0, -1488($fp)
	sw $t0, -1556($fp)
	addi $t0, $fp, -28
	sw $t0, -1560($fp)
	lw $t0, -1488($fp)
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -1568($fp)
	li $t0, 4
	lw $t1, -1568($fp)
	mul $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	lw $t1, -1560($fp)
	add $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	lw $t1, 0($t0)
	sw $t1, -1580($fp)
	lw $t1, -1556($fp)
	lw $t2, -1580($fp)
	blt $t1, $t2, label148
	j label149
label148:
	li $t0, 1
	sw $t0, -1552($fp)
label149:
	lw $t0, -1288($fp)
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1300($fp)
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1592($fp)
	lw $t0, -464($fp)
	sw $t0, -1596($fp)
	lw $t0, -512($fp)
	sw $t0, -1600($fp)
	lw $t1, -1596($fp)
	lw $t2, -1600($fp)
	bne $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -1592($fp)
label151:
	addi $t0, $fp, -28
	sw $t0, -1604($fp)
	lw $t0, -500($fp)
	sw $t0, -1608($fp)
	li $t0, 4
	lw $t1, -1608($fp)
	mul $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	lw $t1, -1604($fp)
	add $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	lw $t1, 0($t0)
	sw $t1, -1620($fp)
	lw $t0, -1288($fp)
	sw $t0, -1624($fp)
	addi $sp, $sp, -4
	lw $t0, -1592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1624($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1628($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -1632($fp)
	li $t0, 60862
	sw $t0, -1636($fp)
	li $t0, 0
	lw $t1, -1636($fp)
	sub $t0, $t0, $t1
	sw $t0, -1640($fp)
	lw $t1, -1640($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label152
label152:
	li $t0, 1
	sw $t0, -1632($fp)
label153:
	li $t0, 0
	lw $t1, -1632($fp)
	sub $t0, $t0, $t1
	sw $t0, -1644($fp)
	lw $t0, -1628($fp)
	lw $t1, -1644($fp)
	sub $t0, $t0, $t1
	sw $t0, -1648($fp)
	lw $ra, -4($fp)
	lw $v0, -1648($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 4438
	sw $t0, -1664($fp)
	addi $t0, $fp, -1660
	sw $t0, -1668($fp)
	li $t0, 0
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t0, -1668($fp)
	lw $t1, -1676($fp)
	add $t0, $t0, $t1
	sw $t0, -1680($fp)
	lw $t0, -1664($fp)
	lw $t1, -1680($fp)
	sw $t0, 0($t1)
	lw $t0, -1680($fp)
	lw $t1, 0($t0)
	sw $t1, -1684($fp)
	li $t0, 23856
	sw $t0, -1688($fp)
	addi $t0, $fp, -1660
	sw $t0, -1692($fp)
	li $t0, 1
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t0, -1692($fp)
	lw $t1, -1700($fp)
	add $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t0, -1688($fp)
	lw $t1, -1704($fp)
	sw $t0, 0($t1)
	lw $t0, -1704($fp)
	lw $t1, 0($t0)
	sw $t1, -1708($fp)
	li $t0, 51054
	sw $t0, -1712($fp)
	addi $t0, $fp, -1660
	sw $t0, -1716($fp)
	li $t0, 2
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1724($fp)
	lw $t0, -1716($fp)
	lw $t1, -1724($fp)
	add $t0, $t0, $t1
	sw $t0, -1728($fp)
	lw $t0, -1712($fp)
	lw $t1, -1728($fp)
	sw $t0, 0($t1)
	lw $t0, -1728($fp)
	lw $t1, 0($t0)
	sw $t1, -1732($fp)
	li $t0, 63992
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -1744($fp)
	li $t0, 2342
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	sw $t0, -1756($fp)
	li $t0, 10268
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	sw $t0, -1768($fp)
	addi $t0, $fp, -1660
	sw $t0, -1772($fp)
	li $t0, 0
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
	addi $t0, $fp, -1660
	sw $t0, -1792($fp)
	li $t0, 1
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
	addi $t0, $fp, -1660
	sw $t0, -1812($fp)
	li $t0, 2
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
	lw $t0, -1740($fp)
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1752($fp)
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1764($fp)
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1844($fp)
	lw $t0, -380($fp)
	sw $t0, -1848($fp)
	addi $t0, $fp, -60
	sw $t0, -1852($fp)
	li $t0, 1
	sw $t0, -1856($fp)
	li $t0, 4
	lw $t1, -1856($fp)
	mul $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	lw $t1, -1852($fp)
	add $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	lw $t1, 0($t0)
	sw $t1, -1868($fp)
	lw $t0, -1848($fp)
	lw $t1, -1868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1872($fp)
	lw $t0, -1752($fp)
	sw $t0, -1876($fp)
	li $t0, 39167
	sw $t0, -1880($fp)
	lw $t0, -1876($fp)
	lw $t1, -1880($fp)
	mul $t0, $t0, $t1
	sw $t0, -1884($fp)
	li $t0, 10188
	sw $t0, -1888($fp)
	lw $t0, -1884($fp)
	lw $t1, -1888($fp)
	add $t0, $t0, $t1
	sw $t0, -1892($fp)
	li $t0, 0
	sw $t0, -1896($fp)
	li $t0, 23609
	sw $t0, -1900($fp)
	li $t0, 46204
	sw $t0, -1904($fp)
	lw $t0, -1900($fp)
	lw $t1, -1904($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1908($fp)
	lw $t0, -488($fp)
	sw $t0, -1912($fp)
	lw $t1, -1908($fp)
	lw $t2, -1912($fp)
	bne $t1, $t2, label156
	j label157
label156:
	li $t0, 1
	sw $t0, -1896($fp)
label157:
	li $t0, 0
	sw $t0, -1916($fp)
	lw $t0, -512($fp)
	sw $t0, -1920($fp)
	li $t0, 22548
	sw $t0, -1924($fp)
	lw $t0, -1920($fp)
	lw $t1, -1924($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1928($fp)
	lw $t0, -464($fp)
	sw $t0, -1932($fp)
	lw $t1, -1928($fp)
	lw $t2, -1932($fp)
	bne $t1, $t2, label158
	j label159
label158:
	li $t0, 1
	sw $t0, -1916($fp)
label159:
	addi $t0, $fp, -60
	sw $t0, -1936($fp)
	lw $t0, -512($fp)
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
	addi $sp, $sp, -4
	lw $t0, -1896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1952($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1956($fp)
	addi $sp, $sp, 16
	lw $t0, -1892($fp)
	lw $t1, -1956($fp)
	add $t0, $t0, $t1
	sw $t0, -1960($fp)
	lw $t1, -1872($fp)
	lw $t2, -1960($fp)
	bne $t1, $t2, label154
	j label155
label154:
	li $t0, 1
	sw $t0, -1844($fp)
label155:
	lw $ra, -4($fp)
	lw $v0, -1844($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 62438
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	sw $t0, -1972($fp)
	lw $t0, -380($fp)
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -1980($fp)
	lw $t0, -1968($fp)
	sw $t0, -1984($fp)
	li $t0, 0
	lw $t1, -1984($fp)
	sub $t0, $t0, $t1
	sw $t0, -1988($fp)
	li $t0, 21495
	sw $t0, -1992($fp)
	lw $t0, -1988($fp)
	lw $t1, -1992($fp)
	add $t0, $t0, $t1
	sw $t0, -1996($fp)
	li $t0, 0
	sw $t0, -2000($fp)
	li $t0, 65305
	sw $t0, -2004($fp)
	lw $t0, -500($fp)
	sw $t0, -2008($fp)
	lw $t1, -2004($fp)
	lw $t2, -2008($fp)
	beq $t1, $t2, label162
	j label161
label162:
	lw $t0, -488($fp)
	sw $t0, -2012($fp)
	lw $t1, -2012($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label161
label160:
	li $t0, 1
	sw $t0, -2000($fp)
label161:
	addi $sp, $sp, -4
	lw $t0, -1980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2000($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2016($fp)
	addi $sp, $sp, 16
	li $t0, 44809
	sw $t0, -2020($fp)
	lw $t0, -2016($fp)
	lw $t1, -2020($fp)
	add $t0, $t0, $t1
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -2028($fp)
	li $t0, 0
	sw $t0, -2032($fp)
	li $t0, 8434
	sw $t0, -2036($fp)
	lw $t0, -464($fp)
	sw $t0, -2040($fp)
	lw $t0, -2036($fp)
	lw $t1, -2040($fp)
	mul $t0, $t0, $t1
	sw $t0, -2044($fp)
	lw $t0, -224($fp)
	sw $t0, -2048($fp)
	lw $t0, -2044($fp)
	lw $t1, -2048($fp)
	mul $t0, $t0, $t1
	sw $t0, -2052($fp)
	lw $t0, -476($fp)
	sw $t0, -2056($fp)
	li $t0, 0
	lw $t1, -2056($fp)
	sub $t0, $t0, $t1
	sw $t0, -2060($fp)
	li $t0, 0
	lw $t1, -2060($fp)
	sub $t0, $t0, $t1
	sw $t0, -2064($fp)
	addi $sp, $sp, -4
	lw $t0, -2064($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2068($fp)
	addi $sp, $sp, 8
	lw $t0, -2052($fp)
	lw $t1, -2068($fp)
	add $t0, $t0, $t1
	sw $t0, -2072($fp)
	addi $t0, $fp, -60
	sw $t0, -2076($fp)
	lw $t0, -488($fp)
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
	lw $t0, -2072($fp)
	lw $t1, -2092($fp)
	sub $t0, $t0, $t1
	sw $t0, -2096($fp)
	li $t0, 58308
	sw $t0, -2100($fp)
	li $t0, 0
	lw $t1, -2100($fp)
	sub $t0, $t0, $t1
	sw $t0, -2104($fp)
	li $t0, 0
	lw $t1, -2104($fp)
	sub $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t0, -224($fp)
	sw $t0, -2112($fp)
	lw $t0, -2108($fp)
	lw $t1, -2112($fp)
	add $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t1, -2096($fp)
	lw $t2, -2116($fp)
	blt $t1, $t2, label163
	j label164
label163:
	li $t0, 1
	sw $t0, -2032($fp)
label164:
	lw $t0, -1764($fp)
	sw $t0, -2120($fp)
	li $t0, 0
	lw $t1, -2120($fp)
	sub $t0, $t0, $t1
	sw $t0, -2124($fp)
label165:
	lw $t0, -512($fp)
	sw $t0, -2128($fp)
	addi $t0, $fp, -28
	sw $t0, -2132($fp)
	lw $t0, -476($fp)
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
	lw $t0, -2128($fp)
	lw $t1, -2148($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2152($fp)
	li $t0, 0
	lw $t1, -2152($fp)
	sub $t0, $t0, $t1
	sw $t0, -2156($fp)
	li $t0, 0
	sw $t0, -2160($fp)
	addi $t0, $fp, -1660
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
	lw $t1, -2180($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label168
label168:
	li $t0, 1
	sw $t0, -2160($fp)
label169:
	lw $t1, -2156($fp)
	lw $t2, -2160($fp)
	beq $t1, $t2, label166
	j label167
label166:
	lw $t0, -1764($fp)
	sw $t0, -2184($fp)
	li $t0, 56333
	sw $t0, -2188($fp)
	lw $t0, -2184($fp)
	lw $t1, -2188($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2192($fp)
	lw $t0, -464($fp)
	sw $t0, -2196($fp)
	lw $t0, -2192($fp)
	lw $t1, -2196($fp)
	mul $t0, $t0, $t1
	sw $t0, -2200($fp)
	addi $sp, $sp, -4
	lw $t0, -2200($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2204($fp)
	addi $sp, $sp, 8
	li $t0, 9752
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -2212($fp)
	li $t0, 0
	sw $t0, -2216($fp)
	li $t0, 51914
	sw $t0, -2220($fp)
	lw $t1, -2220($fp)
	li $t2, 0
	bne $t1, $t2, label173
	j label171
label173:
	lw $t0, -1752($fp)
	sw $t0, -2224($fp)
	lw $t1, -2224($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label171
label172:
	lw $t0, -488($fp)
	sw $t0, -2228($fp)
	lw $t1, -2228($fp)
	li $t2, 0
	bne $t1, $t2, label170
	j label171
label170:
	li $t0, 1
	sw $t0, -2216($fp)
label171:
	addi $sp, $sp, -4
	lw $t0, -2204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2216($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2232($fp)
	addi $sp, $sp, 16
	j label165
label167:
	lw $t0, -68($fp)
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2240($fp)
	li $t0, 0
	sw $t0, -2244($fp)
	li $t0, 4
	lw $t1, -2244($fp)
	mul $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	lw $t1, -2240($fp)
	add $t0, $t0, $t1
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	lw $t1, 0($t0)
	sw $t1, -2256($fp)
	lw $t0, -2256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2260($fp)
	li $t0, 1
	sw $t0, -2264($fp)
	li $t0, 4
	lw $t1, -2264($fp)
	mul $t0, $t0, $t1
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	lw $t1, -2260($fp)
	add $t0, $t0, $t1
	sw $t0, -2272($fp)
	lw $t0, -2272($fp)
	lw $t1, 0($t0)
	sw $t1, -2276($fp)
	lw $t0, -2276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2280($fp)
	li $t0, 2
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
	lw $t0, -2296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2300($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -2320($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -2340($fp)
	li $t0, 5
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
	lw $t0, -224($fp)
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -2364($fp)
	li $t0, 0
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
	addi $t0, $fp, -52
	sw $t0, -2384($fp)
	li $t0, 1
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
	addi $t0, $fp, -52
	sw $t0, -2404($fp)
	li $t0, 2
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
	addi $t0, $fp, -52
	sw $t0, -2424($fp)
	li $t0, 3
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
	addi $t0, $fp, -52
	sw $t0, -2444($fp)
	li $t0, 4
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
	addi $t0, $fp, -52
	sw $t0, -2464($fp)
	li $t0, 5
	sw $t0, -2468($fp)
	li $t0, 4
	lw $t1, -2468($fp)
	mul $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	lw $t1, -2464($fp)
	add $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	lw $t1, 0($t0)
	sw $t1, -2480($fp)
	lw $t0, -2480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2492($fp)
	li $t0, 0
	sw $t0, -2496($fp)
	li $t0, 4
	lw $t1, -2496($fp)
	mul $t0, $t0, $t1
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	lw $t1, -2492($fp)
	add $t0, $t0, $t1
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	lw $t1, 0($t0)
	sw $t1, -2508($fp)
	lw $t0, -2508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2512($fp)
	li $t0, 1
	sw $t0, -2516($fp)
	li $t0, 4
	lw $t1, -2516($fp)
	mul $t0, $t0, $t1
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	lw $t1, -2512($fp)
	add $t0, $t0, $t1
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	lw $t1, 0($t0)
	sw $t1, -2528($fp)
	lw $t0, -2528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -464($fp)
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -488($fp)
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -2552($fp)
	lw $t0, -2552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2556($fp)
	li $t0, 36641
	sw $t0, -2560($fp)
	li $t0, 0
	sw $t0, -2564($fp)
	li $t0, 52231
	sw $t0, -2568($fp)
	li $t0, 1
	sw $t0, -2572($fp)
	lw $t0, -2568($fp)
	lw $t1, -2572($fp)
	mul $t0, $t0, $t1
	sw $t0, -2576($fp)
	lw $t0, -392($fp)
	sw $t0, -2580($fp)
	lw $t0, -2576($fp)
	lw $t1, -2580($fp)
	mul $t0, $t0, $t1
	sw $t0, -2584($fp)
	li $t0, 0
	sw $t0, -2588($fp)
	lw $t0, -488($fp)
	sw $t0, -2592($fp)
	lw $t1, -2592($fp)
	li $t2, 0
	bne $t1, $t2, label179
	j label178
label178:
	li $t0, 1
	sw $t0, -2588($fp)
label179:
	lw $t1, -2584($fp)
	lw $t2, -2588($fp)
	bge $t1, $t2, label176
	j label177
label176:
	li $t0, 1
	sw $t0, -2564($fp)
label177:
	lw $t1, -2560($fp)
	lw $t2, -2564($fp)
	beq $t1, $t2, label174
	j label175
label174:
	li $t0, 1
	sw $t0, -2556($fp)
label175:
	lw $ra, -4($fp)
	lw $v0, -2556($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -2596($fp)
	li $t0, 22031
	sw $t0, -2600($fp)
	lw $t1, -2600($fp)
	li $t2, 0
	bne $t1, $t2, label180
	j label181
label180:
	li $t0, 1
	sw $t0, -2596($fp)
label181:
	lw $t0, -68($fp)
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2608($fp)
	li $t0, 0
	sw $t0, -2612($fp)
	li $t0, 4
	lw $t1, -2612($fp)
	mul $t0, $t0, $t1
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	lw $t1, -2608($fp)
	add $t0, $t0, $t1
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	lw $t1, 0($t0)
	sw $t1, -2624($fp)
	lw $t0, -2624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2628($fp)
	li $t0, 1
	sw $t0, -2632($fp)
	li $t0, 4
	lw $t1, -2632($fp)
	mul $t0, $t0, $t1
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	lw $t1, -2628($fp)
	add $t0, $t0, $t1
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	lw $t1, 0($t0)
	sw $t1, -2644($fp)
	lw $t0, -2644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2648($fp)
	li $t0, 2
	sw $t0, -2652($fp)
	li $t0, 4
	lw $t1, -2652($fp)
	mul $t0, $t0, $t1
	sw $t0, -2656($fp)
	lw $t0, -2656($fp)
	lw $t1, -2648($fp)
	add $t0, $t0, $t1
	sw $t0, -2660($fp)
	lw $t0, -2660($fp)
	lw $t1, 0($t0)
	sw $t1, -2664($fp)
	lw $t0, -2664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
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
	lw $t0, -2684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2688($fp)
	li $t0, 4
	sw $t0, -2692($fp)
	li $t0, 4
	lw $t1, -2692($fp)
	mul $t0, $t0, $t1
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	lw $t1, -2688($fp)
	add $t0, $t0, $t1
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	lw $t1, 0($t0)
	sw $t1, -2704($fp)
	lw $t0, -2704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2708($fp)
	li $t0, 5
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
	lw $t0, -2724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -224($fp)
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -2732($fp)
	li $t0, 0
	sw $t0, -2736($fp)
	li $t0, 4
	lw $t1, -2736($fp)
	mul $t0, $t0, $t1
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	lw $t1, -2732($fp)
	add $t0, $t0, $t1
	sw $t0, -2744($fp)
	lw $t0, -2744($fp)
	lw $t1, 0($t0)
	sw $t1, -2748($fp)
	lw $t0, -2748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -2752($fp)
	li $t0, 1
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
	addi $t0, $fp, -52
	sw $t0, -2772($fp)
	li $t0, 2
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
	addi $t0, $fp, -52
	sw $t0, -2792($fp)
	li $t0, 3
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
	addi $t0, $fp, -52
	sw $t0, -2812($fp)
	li $t0, 4
	sw $t0, -2816($fp)
	li $t0, 4
	lw $t1, -2816($fp)
	mul $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	lw $t1, -2812($fp)
	add $t0, $t0, $t1
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	lw $t1, 0($t0)
	sw $t1, -2828($fp)
	lw $t0, -2828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -2832($fp)
	li $t0, 5
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
	lw $t0, -2848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2860($fp)
	li $t0, 0
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
	addi $t0, $fp, -60
	sw $t0, -2880($fp)
	li $t0, 1
	sw $t0, -2884($fp)
	li $t0, 4
	lw $t1, -2884($fp)
	mul $t0, $t0, $t1
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	lw $t1, -2880($fp)
	add $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	lw $t1, 0($t0)
	sw $t1, -2896($fp)
	lw $t0, -2896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -2900($fp)
	lw $t0, -2900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -464($fp)
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	sw $t0, -2908($fp)
	lw $t0, -2908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -488($fp)
	sw $t0, -2912($fp)
	lw $t0, -2912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -2920($fp)
	lw $t0, -2920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 2670
	sw $t0, -2924($fp)
	lw $t0, -68($fp)
	sw $t0, -2928($fp)
	lw $t0, -2924($fp)
	lw $t1, -2928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2932($fp)
	addi $sp, $sp, -4
	lw $t0, -2932($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2936($fp)
	addi $sp, $sp, 8
	lw $ra, -4($fp)
	lw $v0, -2936($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -264
	li $t0, 51699
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
	li $t0, 17357
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
	li $t0, 7109
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
	li $t0, 0
	sw $t0, -92($fp)
	li $t0, 0
	sw $t0, -96($fp)
	li $t0, 0
	sw $t0, -100($fp)
	li $t0, 10019
	sw $t0, -104($fp)
	lw $t1, -104($fp)
	li $t2, 0
	bne $t1, $t2, label187
	j label186
label186:
	li $t0, 1
	sw $t0, -100($fp)
label187:
	li $t0, 0
	sw $t0, -108($fp)
	lw $t0, 4($fp)
	sw $t0, -112($fp)
	li $t0, 2875
	sw $t0, -116($fp)
	lw $t0, -112($fp)
	lw $t1, -116($fp)
	sub $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t0, 4($fp)
	sw $t0, -124($fp)
	lw $t1, -120($fp)
	lw $t2, -124($fp)
	bge $t1, $t2, label188
	j label189
label188:
	li $t0, 1
	sw $t0, -108($fp)
label189:
	addi $sp, $sp, -4
	lw $t0, -108($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -128($fp)
	addi $sp, $sp, 8
	lw $t0, 4($fp)
	sw $t0, -132($fp)
	lw $t0, -128($fp)
	lw $t1, -132($fp)
	add $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $t1, -100($fp)
	lw $t2, -136($fp)
	ble $t1, $t2, label184
	j label185
label184:
	li $t0, 1
	sw $t0, -96($fp)
label185:
	lw $t0, 8($fp)
	sw $t0, -140($fp)
	li $t0, 0
	lw $t1, -140($fp)
	sub $t0, $t0, $t1
	sw $t0, -144($fp)
	li $t0, 0
	lw $t1, -144($fp)
	sub $t0, $t0, $t1
	sw $t0, -148($fp)
	lw $t1, -96($fp)
	lw $t2, -148($fp)
	bge $t1, $t2, label182
	j label183
label182:
	li $t0, 1
	sw $t0, -92($fp)
label183:
	addi $t0, $fp, -16
	sw $t0, -152($fp)
	li $t0, 0
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
	lw $t0, -168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
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
	lw $t0, -188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -192($fp)
	li $t0, 2
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
	lw $t0, -208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -212($fp)
	li $t0, 0
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
	lw $t0, 8($fp)
	sw $t0, -232($fp)
	lw $t0, -228($fp)
	lw $t1, -232($fp)
	sub $t0, $t0, $t1
	sw $t0, -236($fp)
	addi $t0, $fp, -16
	sw $t0, -240($fp)
	li $t0, 0
	sw $t0, -244($fp)
	li $t0, 55743
	sw $t0, -248($fp)
	li $t0, 43940
	sw $t0, -252($fp)
	lw $t1, -248($fp)
	lw $t2, -252($fp)
	beq $t1, $t2, label190
	j label191
label190:
	li $t0, 1
	sw $t0, -244($fp)
label191:
	li $t0, 4
	lw $t1, -244($fp)
	mul $t0, $t0, $t1
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	lw $t1, -240($fp)
	add $t0, $t0, $t1
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	lw $t1, 0($t0)
	sw $t1, -264($fp)
	lw $t0, -236($fp)
	lw $t1, -264($fp)
	sub $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $ra, -4($fp)
	lw $v0, -268($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2740
	li $t0, 52311
	sw $t0, -136($fp)
	addi $t0, $fp, -40
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
	li $t0, 395
	sw $t0, -160($fp)
	addi $t0, $fp, -40
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
	li $t0, 952
	sw $t0, -184($fp)
	addi $t0, $fp, -40
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
	li $t0, 10384
	sw $t0, -208($fp)
	addi $t0, $fp, -40
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
	li $t0, 46599
	sw $t0, -232($fp)
	addi $t0, $fp, -40
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
	li $t0, 63390
	sw $t0, -256($fp)
	addi $t0, $fp, -40
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
	li $t0, 10153
	sw $t0, -280($fp)
	addi $t0, $fp, -40
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
	li $t0, 2559
	sw $t0, -304($fp)
	addi $t0, $fp, -40
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
	li $t0, 42664
	sw $t0, -328($fp)
	addi $t0, $fp, -40
	sw $t0, -332($fp)
	li $t0, 8
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
	li $t0, 18587
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	li $t0, 60867
	sw $t0, -364($fp)
	addi $t0, $fp, -64
	sw $t0, -368($fp)
	li $t0, 0
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
	li $t0, 13809
	sw $t0, -388($fp)
	addi $t0, $fp, -64
	sw $t0, -392($fp)
	li $t0, 1
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
	li $t0, 1598
	sw $t0, -412($fp)
	addi $t0, $fp, -64
	sw $t0, -416($fp)
	li $t0, 2
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
	li $t0, 47245
	sw $t0, -436($fp)
	addi $t0, $fp, -64
	sw $t0, -440($fp)
	li $t0, 3
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
	li $t0, 23562
	sw $t0, -460($fp)
	addi $t0, $fp, -64
	sw $t0, -464($fp)
	li $t0, 4
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
	li $t0, 57931
	sw $t0, -484($fp)
	addi $t0, $fp, -64
	sw $t0, -488($fp)
	li $t0, 5
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
	li $t0, 18350
	sw $t0, -508($fp)
	addi $t0, $fp, -88
	sw $t0, -512($fp)
	li $t0, 0
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
	li $t0, 10257
	sw $t0, -532($fp)
	addi $t0, $fp, -88
	sw $t0, -536($fp)
	li $t0, 1
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
	li $t0, 34288
	sw $t0, -556($fp)
	addi $t0, $fp, -88
	sw $t0, -560($fp)
	li $t0, 2
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
	li $t0, 40381
	sw $t0, -580($fp)
	addi $t0, $fp, -88
	sw $t0, -584($fp)
	li $t0, 3
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
	li $t0, 12928
	sw $t0, -604($fp)
	addi $t0, $fp, -88
	sw $t0, -608($fp)
	li $t0, 4
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
	li $t0, 20451
	sw $t0, -628($fp)
	addi $t0, $fp, -88
	sw $t0, -632($fp)
	li $t0, 5
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
	li $t0, 57739
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	li $t0, 20037
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	li $t0, 30471
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	li $t0, 60614
	sw $t0, -688($fp)
	addi $t0, $fp, -108
	sw $t0, -692($fp)
	li $t0, 0
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
	li $t0, 25602
	sw $t0, -712($fp)
	addi $t0, $fp, -108
	sw $t0, -716($fp)
	li $t0, 1
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -724($fp)
	lw $t0, -716($fp)
	lw $t1, -724($fp)
	add $t0, $t0, $t1
	sw $t0, -728($fp)
	lw $t0, -712($fp)
	lw $t1, -728($fp)
	sw $t0, 0($t1)
	lw $t0, -728($fp)
	lw $t1, 0($t0)
	sw $t1, -732($fp)
	li $t0, 42832
	sw $t0, -736($fp)
	addi $t0, $fp, -108
	sw $t0, -740($fp)
	li $t0, 2
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -748($fp)
	lw $t0, -740($fp)
	lw $t1, -748($fp)
	add $t0, $t0, $t1
	sw $t0, -752($fp)
	lw $t0, -736($fp)
	lw $t1, -752($fp)
	sw $t0, 0($t1)
	lw $t0, -752($fp)
	lw $t1, 0($t0)
	sw $t1, -756($fp)
	li $t0, 8222
	sw $t0, -760($fp)
	addi $t0, $fp, -108
	sw $t0, -764($fp)
	li $t0, 3
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -772($fp)
	lw $t0, -764($fp)
	lw $t1, -772($fp)
	add $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t0, -760($fp)
	lw $t1, -776($fp)
	sw $t0, 0($t1)
	lw $t0, -776($fp)
	lw $t1, 0($t0)
	sw $t1, -780($fp)
	li $t0, 15809
	sw $t0, -784($fp)
	addi $t0, $fp, -108
	sw $t0, -788($fp)
	li $t0, 4
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -796($fp)
	lw $t0, -788($fp)
	lw $t1, -796($fp)
	add $t0, $t0, $t1
	sw $t0, -800($fp)
	lw $t0, -784($fp)
	lw $t1, -800($fp)
	sw $t0, 0($t1)
	lw $t0, -800($fp)
	lw $t1, 0($t0)
	sw $t1, -804($fp)
	li $t0, 21237
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	li $t0, 60533
	sw $t0, -820($fp)
	addi $t0, $fp, -120
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
	li $t0, 16204
	sw $t0, -844($fp)
	addi $t0, $fp, -120
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
	li $t0, 22189
	sw $t0, -868($fp)
	addi $t0, $fp, -120
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
	li $t0, 5381
	sw $t0, -892($fp)
	addi $t0, $fp, -132
	sw $t0, -896($fp)
	li $t0, 0
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
	li $t0, 62804
	sw $t0, -916($fp)
	addi $t0, $fp, -132
	sw $t0, -920($fp)
	li $t0, 1
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
	li $t0, 20044
	sw $t0, -940($fp)
	addi $t0, $fp, -132
	sw $t0, -944($fp)
	li $t0, 2
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
	li $t0, 15534
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -972($fp)
	li $t0, 65363
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	sw $t0, -984($fp)
	li $t0, 62708
	sw $t0, -1000($fp)
	addi $t0, $fp, -996
	sw $t0, -1004($fp)
	li $t0, 0
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1012($fp)
	lw $t0, -1004($fp)
	lw $t1, -1012($fp)
	add $t0, $t0, $t1
	sw $t0, -1016($fp)
	lw $t0, -1000($fp)
	lw $t1, -1016($fp)
	sw $t0, 0($t1)
	lw $t0, -1016($fp)
	lw $t1, 0($t0)
	sw $t1, -1020($fp)
	li $t0, 34122
	sw $t0, -1024($fp)
	addi $t0, $fp, -996
	sw $t0, -1028($fp)
	li $t0, 1
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
	li $t0, 60694
	sw $t0, -1048($fp)
	addi $t0, $fp, -996
	sw $t0, -1052($fp)
	li $t0, 2
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
	li $t0, 0
	sw $t0, -1072($fp)
	li $t0, 0
	sw $t0, -1076($fp)
	li $t0, 28115
	sw $t0, -1080($fp)
	li $t0, 60753
	sw $t0, -1084($fp)
	lw $t1, -1080($fp)
	lw $t2, -1084($fp)
	ble $t1, $t2, label194
	j label195
label194:
	li $t0, 1
	sw $t0, -1076($fp)
label195:
	li $t0, 44801
	sw $t0, -1088($fp)
	lw $t1, -1076($fp)
	lw $t2, -1088($fp)
	bne $t1, $t2, label192
	j label193
label192:
	li $t0, 1
	sw $t0, -1072($fp)
label193:
	addi $t0, $fp, -108
	sw $t0, -1092($fp)
	lw $t0, -356($fp)
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
	li $t0, 0
	sw $t0, -1112($fp)
	li $t0, 34543
	sw $t0, -1116($fp)
	li $t0, 0
	lw $t1, -1116($fp)
	sub $t0, $t0, $t1
	sw $t0, -1120($fp)
	lw $t1, -1120($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label196
label196:
	li $t0, 1
	sw $t0, -1112($fp)
label197:
	li $t0, 0
	sw $t0, -1124($fp)
	lw $t0, -812($fp)
	sw $t0, -1128($fp)
	lw $t0, -656($fp)
	sw $t0, -1132($fp)
	lw $t1, -1128($fp)
	lw $t2, -1132($fp)
	beq $t1, $t2, label198
	j label200
label200:
	li $t0, 42403
	sw $t0, -1136($fp)
	lw $t1, -1136($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label199
label198:
	li $t0, 1
	sw $t0, -1124($fp)
label199:
	addi $t0, $fp, -996
	sw $t0, -1140($fp)
	li $t0, 1
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
	addi $sp, $sp, -4
	lw $t0, -1072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1156($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1160($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -1164($fp)
	addi $t0, $fp, -64
	sw $t0, -1168($fp)
	li $t0, 3
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
	lw $t1, -1184($fp)
	li $t2, 0
	bne $t1, $t2, label201
	j label202
label201:
	li $t0, 1
	sw $t0, -1164($fp)
label202:
	lw $t0, -1160($fp)
	lw $t1, -1164($fp)
	add $t0, $t0, $t1
	sw $t0, -1188($fp)
	li $t0, 0
	sw $t0, -1192($fp)
	lw $t0, 8($fp)
	sw $t0, -1196($fp)
	li $t0, 0
	sw $t0, -1200($fp)
	addi $t0, $fp, -88
	sw $t0, -1204($fp)
	li $t0, 1
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
	li $t0, 27802
	sw $t0, -1224($fp)
	lw $t1, -1220($fp)
	lw $t2, -1224($fp)
	bgt $t1, $t2, label205
	j label206
label205:
	li $t0, 1
	sw $t0, -1200($fp)
label206:
	lw $t1, -1196($fp)
	lw $t2, -1200($fp)
	bne $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -1192($fp)
label204:
	li $t0, 0
	sw $t0, -1228($fp)
	li $t0, 0
	sw $t0, -1232($fp)
	lw $t0, -656($fp)
	sw $t0, -1236($fp)
	li $t0, 12230
	sw $t0, -1240($fp)
	lw $t1, -1236($fp)
	lw $t2, -1240($fp)
	beq $t1, $t2, label209
	j label210
label209:
	li $t0, 1
	sw $t0, -1232($fp)
label210:
	addi $sp, $sp, -4
	lw $t0, -1232($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1244($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1248($fp)
	lw $t0, 8($fp)
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
	li $t0, 47790
	sw $t0, -1268($fp)
	li $t0, 0
	lw $t1, -1268($fp)
	sub $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t0, -1264($fp)
	lw $t1, -1272($fp)
	mul $t0, $t0, $t1
	sw $t0, -1276($fp)
	lw $t1, -1244($fp)
	lw $t2, -1276($fp)
	bgt $t1, $t2, label207
	j label208
label207:
	li $t0, 1
	sw $t0, -1228($fp)
label208:
	lw $t0, -656($fp)
	sw $t0, -1280($fp)
	lw $t1, -1280($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label211
label211:
label214:
	li $t0, 22880
	sw $t0, -1284($fp)
	addi $t0, $fp, -88
	sw $t0, -1288($fp)
	lw $t0, -812($fp)
	sw $t0, -1292($fp)
	li $t0, 37832
	sw $t0, -1296($fp)
	lw $t0, -1292($fp)
	lw $t1, -1296($fp)
	mul $t0, $t0, $t1
	sw $t0, -1300($fp)
	li $t0, 4
	lw $t1, -1300($fp)
	mul $t0, $t0, $t1
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	lw $t1, -1288($fp)
	add $t0, $t0, $t1
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	lw $t1, 0($t0)
	sw $t1, -1312($fp)
	lw $t0, -1284($fp)
	lw $t1, -1312($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1316($fp)
	lw $t1, -1316($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label216
label215:
	li $t0, 0
	sw $t0, -1320($fp)
	li $t0, 25086
	sw $t0, -1324($fp)
	li $t0, 0
	sw $t0, -1328($fp)
	li $t0, 31103
	sw $t0, -1332($fp)
	lw $t1, -1332($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label219
label219:
	li $t0, 1
	sw $t0, -1328($fp)
label220:
	lw $t1, -1324($fp)
	lw $t2, -1328($fp)
	blt $t1, $t2, label217
	j label218
label217:
	li $t0, 1
	sw $t0, -1320($fp)
label218:
	j label214
label216:
label212:
	li $t0, 53641
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	sw $t0, -1344($fp)
	li $t0, 46323
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	sw $t0, -1356($fp)
label221:
	lw $t0, -656($fp)
	sw $t0, -1360($fp)
	li $t0, 0
	lw $t1, -1360($fp)
	sub $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t1, -1364($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label222
label222:
	li $t0, 0
	sw $t0, -1368($fp)
	li $t0, 26100
	sw $t0, -1372($fp)
	lw $t1, -1372($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label224
label224:
	li $t0, 1
	sw $t0, -1368($fp)
label225:
	addi $t0, $fp, -132
	sw $t0, -1376($fp)
	li $t0, 0
	sw $t0, -1380($fp)
	li $t0, 4
	lw $t1, -1380($fp)
	mul $t0, $t0, $t1
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	lw $t1, -1376($fp)
	add $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	lw $t1, 0($t0)
	sw $t1, -1392($fp)
	lw $t0, -1368($fp)
	lw $t1, -1392($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1396($fp)
	j label221
label223:
	li $t0, 0
	sw $t0, -1400($fp)
	li $t0, 31482
	sw $t0, -1404($fp)
	lw $t1, -1404($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label230
label229:
	li $t0, 1
	sw $t0, -1400($fp)
label230:
	addi $t0, $fp, -40
	sw $t0, -1408($fp)
	li $t0, 0
	sw $t0, -1412($fp)
	lw $t0, -980($fp)
	sw $t0, -1416($fp)
	lw $t1, -1416($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label231
label231:
	li $t0, 1
	sw $t0, -1412($fp)
label232:
	li $t0, 4
	lw $t1, -1412($fp)
	mul $t0, $t0, $t1
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	lw $t1, -1408($fp)
	add $t0, $t0, $t1
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	lw $t1, 0($t0)
	sw $t1, -1428($fp)
	lw $t0, -1400($fp)
	lw $t1, -1428($fp)
	mul $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t1, -1432($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label227
label226:
	addi $t0, $fp, -64
	sw $t0, -1436($fp)
	li $t0, 0
	sw $t0, -1440($fp)
	lw $t0, 16($fp)
	sw $t0, -1444($fp)
	li $t0, 1404
	sw $t0, -1448($fp)
	lw $t0, -1444($fp)
	lw $t1, -1448($fp)
	add $t0, $t0, $t1
	sw $t0, -1452($fp)
	lw $t0, -1340($fp)
	sw $t0, -1456($fp)
	lw $t1, -1452($fp)
	lw $t2, -1456($fp)
	bge $t1, $t2, label233
	j label234
label233:
	li $t0, 1
	sw $t0, -1440($fp)
label234:
	li $t0, 47016
	sw $t0, -1460($fp)
	lw $t0, 8($fp)
	sw $t0, -1464($fp)
	lw $t0, -1460($fp)
	lw $t1, -1464($fp)
	mul $t0, $t0, $t1
	sw $t0, -1468($fp)
	li $t0, 0
	sw $t0, -1472($fp)
	lw $t0, -968($fp)
	sw $t0, -1476($fp)
	li $t0, 1577
	sw $t0, -1480($fp)
	lw $t0, -1476($fp)
	lw $t1, -1480($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1484($fp)
	lw $t1, -1484($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label237
label237:
	li $t0, 23021
	sw $t0, -1488($fp)
	lw $t1, -1488($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -1472($fp)
label236:
	addi $sp, $sp, -4
	lw $t0, -1440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1472($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1492($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -1492($fp)
	sub $t0, $t0, $t1
	sw $t0, -1496($fp)
	li $t0, 0
	sw $t0, -1500($fp)
	lw $t0, -1352($fp)
	sw $t0, -1504($fp)
	lw $t1, -1504($fp)
	li $t2, 0
	bne $t1, $t2, label239
	j label238
label238:
	li $t0, 1
	sw $t0, -1500($fp)
label239:
	lw $t0, -1496($fp)
	lw $t1, -1500($fp)
	sub $t0, $t0, $t1
	sw $t0, -1508($fp)
	li $t0, 4
	lw $t1, -1508($fp)
	mul $t0, $t0, $t1
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	lw $t1, -1436($fp)
	add $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	lw $t1, 0($t0)
	sw $t1, -1520($fp)
	j label228
label227:
	li $t0, 0
	sw $t0, -1524($fp)
	addi $t0, $fp, -108
	sw $t0, -1528($fp)
	li $t0, 0
	sw $t0, -1532($fp)
	li $t0, 20193
	sw $t0, -1536($fp)
	lw $t1, -1536($fp)
	li $t2, 0
	bne $t1, $t2, label244
	j label243
label244:
	li $t0, 15602
	sw $t0, -1540($fp)
	lw $t1, -1540($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label243
label242:
	li $t0, 1
	sw $t0, -1532($fp)
label243:
	li $t0, 4
	lw $t1, -1532($fp)
	mul $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	lw $t1, -1528($fp)
	add $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	lw $t1, 0($t0)
	sw $t1, -1552($fp)
	lw $t1, -1552($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label240
label240:
	li $t0, 1
	sw $t0, -1524($fp)
label241:
label228:
	li $t0, 0
	sw $t0, -1556($fp)
	li $t0, 0
	sw $t0, -1560($fp)
	li $t0, 62098
	sw $t0, -1564($fp)
	lw $t1, -1564($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label251
label251:
	li $t0, 1
	sw $t0, -1560($fp)
label252:
	li $t0, 31174
	sw $t0, -1568($fp)
	lw $t0, -1560($fp)
	lw $t1, -1568($fp)
	add $t0, $t0, $t1
	sw $t0, -1572($fp)
	addi $sp, $sp, -4
	lw $t0, -1572($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1576($fp)
	addi $sp, $sp, 8
	li $t0, 51322
	sw $t0, -1580($fp)
	lw $t1, -1576($fp)
	lw $t2, -1580($fp)
	bge $t1, $t2, label249
	j label250
label249:
	li $t0, 1
	sw $t0, -1556($fp)
label250:
	lw $t0, 4($fp)
	sw $t0, -1584($fp)
	li $t0, 44983
	sw $t0, -1588($fp)
	lw $t0, -1584($fp)
	lw $t1, -1588($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1592($fp)
	lw $t0, 4($fp)
	sw $t0, -1596($fp)
	li $t0, 34183
	sw $t0, -1600($fp)
	lw $t0, -1596($fp)
	lw $t1, -1600($fp)
	add $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, -656($fp)
	sw $t0, -1608($fp)
	lw $t0, -1604($fp)
	lw $t1, -1608($fp)
	sub $t0, $t0, $t1
	sw $t0, -1612($fp)
	li $t0, 0
	sw $t0, -1616($fp)
	li $t0, 38965
	sw $t0, -1620($fp)
	li $t0, 182
	sw $t0, -1624($fp)
	lw $t0, -1620($fp)
	lw $t1, -1624($fp)
	mul $t0, $t0, $t1
	sw $t0, -1628($fp)
	li $t0, 13902
	sw $t0, -1632($fp)
	lw $t1, -1628($fp)
	lw $t2, -1632($fp)
	blt $t1, $t2, label253
	j label254
label253:
	li $t0, 1
	sw $t0, -1616($fp)
label254:
	addi $sp, $sp, -4
	lw $t0, -1592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1616($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1636($fp)
	addi $sp, $sp, 16
	lw $t1, -1556($fp)
	lw $t2, -1636($fp)
	bge $t1, $t2, label245
	j label248
label248:
	addi $t0, $fp, -88
	sw $t0, -1640($fp)
	lw $t0, -680($fp)
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
	lw $t0, -968($fp)
	sw $t0, -1660($fp)
	lw $t0, -1656($fp)
	lw $t1, -1660($fp)
	mul $t0, $t0, $t1
	sw $t0, -1664($fp)
	li $t0, 10769
	sw $t0, -1668($fp)
	lw $t0, -1664($fp)
	lw $t1, -1668($fp)
	sub $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $t1, -1672($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label246
label245:
	li $t0, 0
	sw $t0, -1676($fp)
	lw $t0, 20($fp)
	sw $t0, -1680($fp)
	addi $t0, $fp, -88
	sw $t0, -1684($fp)
	li $t0, 4
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
	lw $t1, -1680($fp)
	lw $t2, -1700($fp)
	ble $t1, $t2, label257
	j label256
label257:
	li $t0, 0
	sw $t0, -1704($fp)
	addi $t0, $fp, -88
	sw $t0, -1708($fp)
	lw $t0, -356($fp)
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
	li $t0, 46596
	sw $t0, -1728($fp)
	lw $t0, 12($fp)
	sw $t0, -1732($fp)
	lw $t0, -1728($fp)
	lw $t1, -1732($fp)
	add $t0, $t0, $t1
	sw $t0, -1736($fp)
	addi $t0, $fp, -40
	sw $t0, -1740($fp)
	li $t0, 4
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
	lw $t0, 8($fp)
	sw $t0, -1760($fp)
	lw $t0, -1756($fp)
	lw $t1, -1760($fp)
	add $t0, $t0, $t1
	sw $t0, -1764($fp)
	lw $t0, 4($fp)
	sw $t0, -1768($fp)
	li $t0, 0
	sw $t0, -1772($fp)
	li $t0, 20495
	sw $t0, -1776($fp)
	lw $t0, -356($fp)
	sw $t0, -1780($fp)
	lw $t0, -1776($fp)
	lw $t1, -1780($fp)
	mul $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $t1, -1784($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label262
label262:
	lw $t0, -680($fp)
	sw $t0, -1788($fp)
	lw $t1, -1788($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label261
label260:
	li $t0, 1
	sw $t0, -1772($fp)
label261:
	addi $sp, $sp, -4
	lw $t0, -1724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1772($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1792($fp)
	addi $sp, $sp, 24
	li $t0, 35429
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -1800($fp)
	li $t0, 0
	sw $t0, -1804($fp)
	li $t0, 21702
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -1812($fp)
	lw $t0, -656($fp)
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	sw $t0, -1820($fp)
	li $t0, 0
	sw $t0, -1824($fp)
	li $t0, 10342
	sw $t0, -1828($fp)
	lw $t1, -1828($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label268
label269:
	li $t0, 54928
	sw $t0, -1832($fp)
	lw $t1, -1832($fp)
	li $t2, 0
	bne $t1, $t2, label266
	j label268
label268:
	lw $t0, -656($fp)
	sw $t0, -1836($fp)
	lw $t1, -1836($fp)
	li $t2, 0
	bne $t1, $t2, label266
	j label267
label266:
	li $t0, 1
	sw $t0, -1824($fp)
label267:
	addi $sp, $sp, -4
	lw $t0, -1812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1824($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1840($fp)
	addi $sp, $sp, 16
	lw $t1, -1840($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label265
label265:
	lw $t0, 20($fp)
	sw $t0, -1844($fp)
	lw $t1, -1844($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label264
label263:
	li $t0, 1
	sw $t0, -1804($fp)
label264:
	addi $sp, $sp, -4
	lw $t0, -1792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1804($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1848($fp)
	addi $sp, $sp, 16
	lw $t1, -1848($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label258
label258:
	li $t0, 1
	sw $t0, -1704($fp)
label259:
	li $t0, 49406
	sw $t0, -1852($fp)
	addi $sp, $sp, -4
	lw $t0, -1852($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1856($fp)
	addi $sp, $sp, 8
	li $t0, 32048
	sw $t0, -1860($fp)
	li $t0, 0
	sw $t0, -1864($fp)
	li $t0, 0
	sw $t0, -1868($fp)
	lw $t0, -656($fp)
	sw $t0, -1872($fp)
	lw $t1, -1872($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label272
label272:
	li $t0, 1
	sw $t0, -1868($fp)
label273:
	li $t0, 28088
	sw $t0, -1876($fp)
	lw $t1, -1868($fp)
	lw $t2, -1876($fp)
	beq $t1, $t2, label270
	j label271
label270:
	li $t0, 1
	sw $t0, -1864($fp)
label271:
	lw $t0, -668($fp)
	sw $t0, -1880($fp)
	addi $sp, $sp, -4
	lw $t0, -1704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1880($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1884($fp)
	addi $sp, $sp, 24
	lw $t0, 4($fp)
	sw $t0, -1888($fp)
	lw $t0, -1884($fp)
	lw $t1, -1888($fp)
	add $t0, $t0, $t1
	sw $t0, -1892($fp)
	li $t0, 14116
	sw $t0, -1896($fp)
	li $t0, 0
	lw $t1, -1896($fp)
	sub $t0, $t0, $t1
	sw $t0, -1900($fp)
	lw $t1, -1892($fp)
	lw $t2, -1900($fp)
	bgt $t1, $t2, label255
	j label256
label255:
	li $t0, 1
	sw $t0, -1676($fp)
label256:
	lw $ra, -4($fp)
	lw $v0, -1676($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label246:
	li $t0, 0
	sw $t0, -1904($fp)
	lw $t0, -968($fp)
	sw $t0, -1908($fp)
	li $t0, 19193
	sw $t0, -1912($fp)
	lw $t0, -1908($fp)
	lw $t1, -1912($fp)
	sub $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t1, -1916($fp)
	li $t2, 0
	bne $t1, $t2, label277
	j label279
label279:
	li $t0, 12542
	sw $t0, -1920($fp)
	lw $t1, -1920($fp)
	li $t2, 0
	bne $t1, $t2, label277
	j label278
label277:
	li $t0, 1
	sw $t0, -1904($fp)
label278:
	lw $t0, -680($fp)
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -1928($fp)
	lw $t0, -668($fp)
	sw $t0, -1932($fp)
	addi $sp, $sp, -4
	lw $t0, -1904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1932($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1936($fp)
	addi $sp, $sp, 16
	lw $t1, -1936($fp)
	li $t2, 0
	bne $t1, $t2, label274
	j label275
label274:
	addi $t0, $fp, -88
	sw $t0, -1940($fp)
	li $t0, 0
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
	addi $t0, $fp, -120
	sw $t0, -1960($fp)
	li $t0, 1
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
	lw $t0, -1956($fp)
	lw $t1, -1976($fp)
	mul $t0, $t0, $t1
	sw $t0, -1980($fp)
label275:
	addi $t0, $fp, -40
	sw $t0, -1984($fp)
	li $t0, 0
	sw $t0, -1988($fp)
	li $t0, 4
	lw $t1, -1988($fp)
	mul $t0, $t0, $t1
	sw $t0, -1992($fp)
	lw $t0, -1992($fp)
	lw $t1, -1984($fp)
	add $t0, $t0, $t1
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	lw $t1, 0($t0)
	sw $t1, -2000($fp)
	lw $t0, -2000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2004($fp)
	li $t0, 1
	sw $t0, -2008($fp)
	li $t0, 4
	lw $t1, -2008($fp)
	mul $t0, $t0, $t1
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	lw $t1, -2004($fp)
	add $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	lw $t1, 0($t0)
	sw $t1, -2020($fp)
	lw $t0, -2020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2024($fp)
	li $t0, 2
	sw $t0, -2028($fp)
	li $t0, 4
	lw $t1, -2028($fp)
	mul $t0, $t0, $t1
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	lw $t1, -2024($fp)
	add $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	lw $t1, 0($t0)
	sw $t1, -2040($fp)
	lw $t0, -2040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2044($fp)
	li $t0, 3
	sw $t0, -2048($fp)
	li $t0, 4
	lw $t1, -2048($fp)
	mul $t0, $t0, $t1
	sw $t0, -2052($fp)
	lw $t0, -2052($fp)
	lw $t1, -2044($fp)
	add $t0, $t0, $t1
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	lw $t1, 0($t0)
	sw $t1, -2060($fp)
	lw $t0, -2060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2064($fp)
	li $t0, 4
	sw $t0, -2068($fp)
	li $t0, 4
	lw $t1, -2068($fp)
	mul $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	lw $t1, -2064($fp)
	add $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	lw $t1, 0($t0)
	sw $t1, -2080($fp)
	lw $t0, -2080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2084($fp)
	li $t0, 5
	sw $t0, -2088($fp)
	li $t0, 4
	lw $t1, -2088($fp)
	mul $t0, $t0, $t1
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	lw $t1, -2084($fp)
	add $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	lw $t1, 0($t0)
	sw $t1, -2100($fp)
	lw $t0, -2100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2104($fp)
	li $t0, 6
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
	lw $t0, -2120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2124($fp)
	li $t0, 7
	sw $t0, -2128($fp)
	li $t0, 4
	lw $t1, -2128($fp)
	mul $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	lw $t1, -2124($fp)
	add $t0, $t0, $t1
	sw $t0, -2136($fp)
	lw $t0, -2136($fp)
	lw $t1, 0($t0)
	sw $t1, -2140($fp)
	lw $t0, -2140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2144($fp)
	li $t0, 8
	sw $t0, -2148($fp)
	li $t0, 4
	lw $t1, -2148($fp)
	mul $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	lw $t1, -2144($fp)
	add $t0, $t0, $t1
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	lw $t1, 0($t0)
	sw $t1, -2160($fp)
	lw $t0, -2160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -356($fp)
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
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
	lw $t0, -2184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -2188($fp)
	li $t0, 1
	sw $t0, -2192($fp)
	li $t0, 4
	lw $t1, -2192($fp)
	mul $t0, $t0, $t1
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	lw $t1, -2188($fp)
	add $t0, $t0, $t1
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	lw $t1, 0($t0)
	sw $t1, -2204($fp)
	lw $t0, -2204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -2208($fp)
	li $t0, 2
	sw $t0, -2212($fp)
	li $t0, 4
	lw $t1, -2212($fp)
	mul $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	lw $t1, -2208($fp)
	add $t0, $t0, $t1
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	lw $t1, 0($t0)
	sw $t1, -2224($fp)
	lw $t0, -2224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -2228($fp)
	li $t0, 3
	sw $t0, -2232($fp)
	li $t0, 4
	lw $t1, -2232($fp)
	mul $t0, $t0, $t1
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	lw $t1, -2228($fp)
	add $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	lw $t1, 0($t0)
	sw $t1, -2244($fp)
	lw $t0, -2244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -2248($fp)
	li $t0, 4
	sw $t0, -2252($fp)
	li $t0, 4
	lw $t1, -2252($fp)
	mul $t0, $t0, $t1
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	lw $t1, -2248($fp)
	add $t0, $t0, $t1
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	lw $t1, 0($t0)
	sw $t1, -2264($fp)
	lw $t0, -2264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -2268($fp)
	li $t0, 5
	sw $t0, -2272($fp)
	li $t0, 4
	lw $t1, -2272($fp)
	mul $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	lw $t1, -2268($fp)
	add $t0, $t0, $t1
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	lw $t1, 0($t0)
	sw $t1, -2284($fp)
	lw $t0, -2284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -2288($fp)
	li $t0, 0
	sw $t0, -2292($fp)
	li $t0, 4
	lw $t1, -2292($fp)
	mul $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	lw $t1, -2288($fp)
	add $t0, $t0, $t1
	sw $t0, -2300($fp)
	lw $t0, -2300($fp)
	lw $t1, 0($t0)
	sw $t1, -2304($fp)
	lw $t0, -2304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -2308($fp)
	li $t0, 1
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
	lw $t0, -2324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -2328($fp)
	li $t0, 2
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
	lw $t0, -2344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -2348($fp)
	li $t0, 3
	sw $t0, -2352($fp)
	li $t0, 4
	lw $t1, -2352($fp)
	mul $t0, $t0, $t1
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	lw $t1, -2348($fp)
	add $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	lw $t1, 0($t0)
	sw $t1, -2364($fp)
	lw $t0, -2364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -2368($fp)
	li $t0, 4
	sw $t0, -2372($fp)
	li $t0, 4
	lw $t1, -2372($fp)
	mul $t0, $t0, $t1
	sw $t0, -2376($fp)
	lw $t0, -2376($fp)
	lw $t1, -2368($fp)
	add $t0, $t0, $t1
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	lw $t1, 0($t0)
	sw $t1, -2384($fp)
	lw $t0, -2384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -2388($fp)
	li $t0, 5
	sw $t0, -2392($fp)
	li $t0, 4
	lw $t1, -2392($fp)
	mul $t0, $t0, $t1
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	lw $t1, -2388($fp)
	add $t0, $t0, $t1
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	lw $t1, 0($t0)
	sw $t1, -2404($fp)
	lw $t0, -2404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -656($fp)
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -668($fp)
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -680($fp)
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2420($fp)
	li $t0, 0
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
	addi $t0, $fp, -108
	sw $t0, -2440($fp)
	li $t0, 1
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
	addi $t0, $fp, -108
	sw $t0, -2460($fp)
	li $t0, 2
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
	addi $t0, $fp, -108
	sw $t0, -2480($fp)
	li $t0, 3
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
	addi $t0, $fp, -108
	sw $t0, -2500($fp)
	li $t0, 4
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
	lw $t0, -812($fp)
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -2524($fp)
	li $t0, 0
	sw $t0, -2528($fp)
	li $t0, 4
	lw $t1, -2528($fp)
	mul $t0, $t0, $t1
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	lw $t1, -2524($fp)
	add $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	lw $t1, 0($t0)
	sw $t1, -2540($fp)
	lw $t0, -2540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -2544($fp)
	li $t0, 1
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
	lw $t0, -2560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -2564($fp)
	li $t0, 2
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
	lw $t0, -2580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -2584($fp)
	li $t0, 0
	sw $t0, -2588($fp)
	li $t0, 4
	lw $t1, -2588($fp)
	mul $t0, $t0, $t1
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	lw $t1, -2584($fp)
	add $t0, $t0, $t1
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	lw $t1, 0($t0)
	sw $t1, -2600($fp)
	lw $t0, -2600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -2604($fp)
	li $t0, 1
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
	lw $t0, -2620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -2624($fp)
	li $t0, 2
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
	lw $t0, -968($fp)
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -980($fp)
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2652($fp)
	li $t0, 9625
	sw $t0, -2656($fp)
	li $t0, 13661
	sw $t0, -2660($fp)
	lw $t0, -2656($fp)
	lw $t1, -2660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2664($fp)
	li $t0, 0
	lw $t1, -2664($fp)
	sub $t0, $t0, $t1
	sw $t0, -2668($fp)
	addi $t0, $fp, -64
	sw $t0, -2672($fp)
	lw $t0, 8($fp)
	sw $t0, -2676($fp)
	li $t0, 4
	lw $t1, -2676($fp)
	mul $t0, $t0, $t1
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	lw $t1, -2672($fp)
	add $t0, $t0, $t1
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	lw $t1, 0($t0)
	sw $t1, -2688($fp)
	lw $t0, -2668($fp)
	lw $t1, -2688($fp)
	sub $t0, $t0, $t1
	sw $t0, -2692($fp)
	li $t0, 28046
	sw $t0, -2696($fp)
	li $t0, 60947
	sw $t0, -2700($fp)
	lw $t0, -2696($fp)
	lw $t1, -2700($fp)
	mul $t0, $t0, $t1
	sw $t0, -2704($fp)
	li $t0, 52626
	sw $t0, -2708($fp)
	lw $t0, -2704($fp)
	lw $t1, -2708($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2712($fp)
	lw $t0, -2692($fp)
	lw $t1, -2712($fp)
	sub $t0, $t0, $t1
	sw $t0, -2716($fp)
	lw $t1, -2716($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label281
label282:
	addi $t0, $fp, -132
	sw $t0, -2720($fp)
	li $t0, 0
	sw $t0, -2724($fp)
	lw $t0, -656($fp)
	sw $t0, -2728($fp)
	lw $t0, 4($fp)
	sw $t0, -2732($fp)
	lw $t1, -2728($fp)
	lw $t2, -2732($fp)
	blt $t1, $t2, label283
	j label284
label283:
	li $t0, 1
	sw $t0, -2724($fp)
label284:
	li $t0, 4
	lw $t1, -2724($fp)
	mul $t0, $t0, $t1
	sw $t0, -2736($fp)
	lw $t0, -2736($fp)
	lw $t1, -2720($fp)
	add $t0, $t0, $t1
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	lw $t1, 0($t0)
	sw $t1, -2744($fp)
	lw $t1, -2744($fp)
	li $t2, 0
	bne $t1, $t2, label280
	j label281
label280:
	li $t0, 1
	sw $t0, -2652($fp)
label281:
	lw $ra, -4($fp)
	lw $v0, -2652($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -5756
	li $t0, 28228
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	li $t0, 9313
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	li $t0, 21273
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	li $t0, 7675
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	li $t0, 20083
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	li $t0, 25519
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	li $t0, 44851
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	li $t0, 48171
	sw $t0, -204($fp)
	addi $t0, $fp, -8
	sw $t0, -208($fp)
	li $t0, 0
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
	li $t0, 57567
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	li $t0, 28721
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	li $t0, 58514
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	li $t0, 46960
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	li $t0, 50423
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	li $t0, 28407
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	li $t0, 1919
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	li $t0, 60230
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	li $t0, 44623
	sw $t0, -324($fp)
	addi $t0, $fp, -36
	sw $t0, -328($fp)
	li $t0, 0
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
	li $t0, 48515
	sw $t0, -348($fp)
	addi $t0, $fp, -36
	sw $t0, -352($fp)
	li $t0, 1
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
	li $t0, 8810
	sw $t0, -372($fp)
	addi $t0, $fp, -36
	sw $t0, -376($fp)
	li $t0, 2
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
	li $t0, 63817
	sw $t0, -396($fp)
	addi $t0, $fp, -36
	sw $t0, -400($fp)
	li $t0, 3
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
	li $t0, 61057
	sw $t0, -420($fp)
	addi $t0, $fp, -36
	sw $t0, -424($fp)
	li $t0, 4
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
	li $t0, 24504
	sw $t0, -444($fp)
	addi $t0, $fp, -36
	sw $t0, -448($fp)
	li $t0, 5
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
	li $t0, 40495
	sw $t0, -468($fp)
	addi $t0, $fp, -36
	sw $t0, -472($fp)
	li $t0, 6
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
	li $t0, 55080
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	li $t0, 41603
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	li $t0, 37367
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	li $t0, 64705
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	li $t0, 55264
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	li $t0, 65413
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	li $t0, 60116
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	li $t0, 42354
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	li $t0, 28105
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	li $t0, 3894
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	li $t0, 63628
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -620($fp)
	li $t0, 35780
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	li $t0, 23977
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	li $t0, 23611
	sw $t0, -648($fp)
	addi $t0, $fp, -60
	sw $t0, -652($fp)
	li $t0, 0
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
	li $t0, 15095
	sw $t0, -672($fp)
	addi $t0, $fp, -60
	sw $t0, -676($fp)
	li $t0, 1
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
	li $t0, 6612
	sw $t0, -696($fp)
	addi $t0, $fp, -60
	sw $t0, -700($fp)
	li $t0, 2
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -708($fp)
	lw $t0, -700($fp)
	lw $t1, -708($fp)
	add $t0, $t0, $t1
	sw $t0, -712($fp)
	lw $t0, -696($fp)
	lw $t1, -712($fp)
	sw $t0, 0($t1)
	lw $t0, -712($fp)
	lw $t1, 0($t0)
	sw $t1, -716($fp)
	li $t0, 15643
	sw $t0, -720($fp)
	addi $t0, $fp, -60
	sw $t0, -724($fp)
	li $t0, 3
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -732($fp)
	lw $t0, -724($fp)
	lw $t1, -732($fp)
	add $t0, $t0, $t1
	sw $t0, -736($fp)
	lw $t0, -720($fp)
	lw $t1, -736($fp)
	sw $t0, 0($t1)
	lw $t0, -736($fp)
	lw $t1, 0($t0)
	sw $t1, -740($fp)
	li $t0, 43816
	sw $t0, -744($fp)
	addi $t0, $fp, -60
	sw $t0, -748($fp)
	li $t0, 4
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -756($fp)
	lw $t0, -748($fp)
	lw $t1, -756($fp)
	add $t0, $t0, $t1
	sw $t0, -760($fp)
	lw $t0, -744($fp)
	lw $t1, -760($fp)
	sw $t0, 0($t1)
	lw $t0, -760($fp)
	lw $t1, 0($t0)
	sw $t1, -764($fp)
	li $t0, 65126
	sw $t0, -768($fp)
	addi $t0, $fp, -60
	sw $t0, -772($fp)
	li $t0, 5
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -780($fp)
	lw $t0, -772($fp)
	lw $t1, -780($fp)
	add $t0, $t0, $t1
	sw $t0, -784($fp)
	lw $t0, -768($fp)
	lw $t1, -784($fp)
	sw $t0, 0($t1)
	lw $t0, -784($fp)
	lw $t1, 0($t0)
	sw $t1, -788($fp)
	li $t0, 62603
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -800($fp)
	li $t0, 28703
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	li $t0, 27997
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	li $t0, 64522
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	li $t0, 23397
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	li $t0, 7085
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	li $t0, 47502
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -872($fp)
	li $t0, 32207
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -884($fp)
	li $t0, 5366
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -896($fp)
	li $t0, 43023
	sw $t0, -900($fp)
	addi $t0, $fp, -100
	sw $t0, -904($fp)
	li $t0, 0
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
	li $t0, 56712
	sw $t0, -924($fp)
	addi $t0, $fp, -100
	sw $t0, -928($fp)
	li $t0, 1
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
	li $t0, 45861
	sw $t0, -948($fp)
	addi $t0, $fp, -100
	sw $t0, -952($fp)
	li $t0, 2
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
	li $t0, 32567
	sw $t0, -972($fp)
	addi $t0, $fp, -100
	sw $t0, -976($fp)
	li $t0, 3
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
	li $t0, 32779
	sw $t0, -996($fp)
	addi $t0, $fp, -100
	sw $t0, -1000($fp)
	li $t0, 4
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
	li $t0, 17692
	sw $t0, -1020($fp)
	addi $t0, $fp, -100
	sw $t0, -1024($fp)
	li $t0, 5
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
	li $t0, 31736
	sw $t0, -1044($fp)
	addi $t0, $fp, -100
	sw $t0, -1048($fp)
	li $t0, 6
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
	li $t0, 22507
	sw $t0, -1068($fp)
	addi $t0, $fp, -100
	sw $t0, -1072($fp)
	li $t0, 7
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
	li $t0, 17569
	sw $t0, -1092($fp)
	addi $t0, $fp, -100
	sw $t0, -1096($fp)
	li $t0, 8
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
	li $t0, 26317
	sw $t0, -1116($fp)
	addi $t0, $fp, -100
	sw $t0, -1120($fp)
	li $t0, 9
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
	li $t0, 64861
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	sw $t0, -1148($fp)
	li $t0, 45674
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	sw $t0, -1160($fp)
	li $t0, 30211
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -1172($fp)
	li $t0, 62953
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -1184($fp)
	li $t0, 15918
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	li $t0, 54188
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -1208($fp)
	li $t0, 21029
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	sw $t0, -1220($fp)
	li $t0, 31013
	sw $t0, -1224($fp)
	addi $t0, $fp, -116
	sw $t0, -1228($fp)
	li $t0, 0
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
	li $t0, 60800
	sw $t0, -1248($fp)
	addi $t0, $fp, -116
	sw $t0, -1252($fp)
	li $t0, 1
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
	li $t0, 36672
	sw $t0, -1272($fp)
	addi $t0, $fp, -116
	sw $t0, -1276($fp)
	li $t0, 2
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
	li $t0, 9293
	sw $t0, -1296($fp)
	addi $t0, $fp, -116
	sw $t0, -1300($fp)
	li $t0, 3
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
	li $t0, 60391
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	sw $t0, -1352($fp)
	li $t0, 33739
	sw $t0, -1356($fp)
	addi $t0, $fp, -1340
	sw $t0, -1360($fp)
	li $t0, 0
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t0, -1360($fp)
	lw $t1, -1368($fp)
	add $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $t0, -1356($fp)
	lw $t1, -1372($fp)
	sw $t0, 0($t1)
	lw $t0, -1372($fp)
	lw $t1, 0($t0)
	sw $t1, -1376($fp)
	li $t0, 37996
	sw $t0, -1380($fp)
	addi $t0, $fp, -1340
	sw $t0, -1384($fp)
	li $t0, 1
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1392($fp)
	lw $t0, -1384($fp)
	lw $t1, -1392($fp)
	add $t0, $t0, $t1
	sw $t0, -1396($fp)
	lw $t0, -1380($fp)
	lw $t1, -1396($fp)
	sw $t0, 0($t1)
	lw $t0, -1396($fp)
	lw $t1, 0($t0)
	sw $t1, -1400($fp)
	li $t0, 22852
	sw $t0, -1404($fp)
	addi $t0, $fp, -1340
	sw $t0, -1408($fp)
	li $t0, 2
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1416($fp)
	lw $t0, -1408($fp)
	lw $t1, -1416($fp)
	add $t0, $t0, $t1
	sw $t0, -1420($fp)
	lw $t0, -1404($fp)
	lw $t1, -1420($fp)
	sw $t0, 0($t1)
	lw $t0, -1420($fp)
	lw $t1, 0($t0)
	sw $t1, -1424($fp)
	li $t0, 32725
	sw $t0, -1428($fp)
	addi $t0, $fp, -1340
	sw $t0, -1432($fp)
	li $t0, 3
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1440($fp)
	lw $t0, -1432($fp)
	lw $t1, -1440($fp)
	add $t0, $t0, $t1
	sw $t0, -1444($fp)
	lw $t0, -1428($fp)
	lw $t1, -1444($fp)
	sw $t0, 0($t1)
	lw $t0, -1444($fp)
	lw $t1, 0($t0)
	sw $t1, -1448($fp)
	li $t0, 61393
	sw $t0, -1452($fp)
	addi $t0, $fp, -1340
	sw $t0, -1456($fp)
	li $t0, 4
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t0, -1456($fp)
	lw $t1, -1464($fp)
	add $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $t0, -1452($fp)
	lw $t1, -1468($fp)
	sw $t0, 0($t1)
	lw $t0, -1468($fp)
	lw $t1, 0($t0)
	sw $t1, -1472($fp)
	li $t0, 29937
	sw $t0, -1476($fp)
	addi $t0, $fp, -1340
	sw $t0, -1480($fp)
	li $t0, 5
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
	lw $t0, -1348($fp)
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1340
	sw $t0, -1504($fp)
	li $t0, 0
	sw $t0, -1508($fp)
	li $t0, 4
	lw $t1, -1508($fp)
	mul $t0, $t0, $t1
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	lw $t1, -1504($fp)
	add $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	lw $t1, 0($t0)
	sw $t1, -1520($fp)
	lw $t0, -1520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1340
	sw $t0, -1524($fp)
	li $t0, 1
	sw $t0, -1528($fp)
	li $t0, 4
	lw $t1, -1528($fp)
	mul $t0, $t0, $t1
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	lw $t1, -1524($fp)
	add $t0, $t0, $t1
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	lw $t1, 0($t0)
	sw $t1, -1540($fp)
	lw $t0, -1540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1340
	sw $t0, -1544($fp)
	li $t0, 2
	sw $t0, -1548($fp)
	li $t0, 4
	lw $t1, -1548($fp)
	mul $t0, $t0, $t1
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	lw $t1, -1544($fp)
	add $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	lw $t1, 0($t0)
	sw $t1, -1560($fp)
	lw $t0, -1560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1340
	sw $t0, -1564($fp)
	li $t0, 3
	sw $t0, -1568($fp)
	li $t0, 4
	lw $t1, -1568($fp)
	mul $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	lw $t1, -1564($fp)
	add $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	lw $t1, 0($t0)
	sw $t1, -1580($fp)
	lw $t0, -1580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1340
	sw $t0, -1584($fp)
	li $t0, 4
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
	lw $t0, -1600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1340
	sw $t0, -1604($fp)
	li $t0, 5
	sw $t0, -1608($fp)
	li $t0, 4
	lw $t1, -1608($fp)
	mul $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	lw $t1, -1604($fp)
	add $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	lw $t1, 0($t0)
	sw $t1, -1620($fp)
	lw $t0, -1620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -1624($fp)
	li $t0, 1
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
	lw $t0, -1348($fp)
	sw $t0, -1644($fp)
	li $t0, 0
	sw $t0, -1648($fp)
	lw $t0, -496($fp)
	sw $t0, -1652($fp)
	lw $t1, -1652($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label285
label285:
	li $t0, 1
	sw $t0, -1648($fp)
label286:
	lw $t0, -1644($fp)
	lw $t1, -1648($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1656($fp)
	lw $t0, -1640($fp)
	lw $t1, -1656($fp)
	sub $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $ra, -4($fp)
	lw $v0, -1660($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1348($fp)
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1340
	sw $t0, -1668($fp)
	li $t0, 0
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
	addi $t0, $fp, -1340
	sw $t0, -1688($fp)
	li $t0, 1
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
	addi $t0, $fp, -1340
	sw $t0, -1708($fp)
	li $t0, 2
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
	addi $t0, $fp, -1340
	sw $t0, -1728($fp)
	li $t0, 3
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
	addi $t0, $fp, -1340
	sw $t0, -1748($fp)
	li $t0, 4
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
	addi $t0, $fp, -1340
	sw $t0, -1768($fp)
	li $t0, 5
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
	li $t0, 0
	sw $t0, -1788($fp)
	lw $t0, -160($fp)
	sw $t0, -1792($fp)
	li $t0, 0
	lw $t1, -1792($fp)
	sub $t0, $t0, $t1
	sw $t0, -1796($fp)
	lw $t0, -868($fp)
	sw $t0, -1800($fp)
	lw $t0, -1796($fp)
	lw $t1, -1800($fp)
	add $t0, $t0, $t1
	sw $t0, -1804($fp)
	li $t0, 15629
	sw $t0, -1808($fp)
	li $t0, 24746
	sw $t0, -1812($fp)
	lw $t0, -1808($fp)
	lw $t1, -1812($fp)
	mul $t0, $t0, $t1
	sw $t0, -1816($fp)
	li $t0, 1
	sw $t0, -1820($fp)
	lw $t0, -1816($fp)
	lw $t1, -1820($fp)
	mul $t0, $t0, $t1
	sw $t0, -1824($fp)
	li $t0, 19241
	sw $t0, -1828($fp)
	li $t0, 0
	sw $t0, -1832($fp)
	li $t0, 0
	sw $t0, -1836($fp)
	lw $t0, -1156($fp)
	sw $t0, -1840($fp)
	lw $t1, -1840($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label291
label291:
	li $t0, 1
	sw $t0, -1836($fp)
label292:
	li $t0, 57715
	sw $t0, -1844($fp)
	lw $t1, -1836($fp)
	lw $t2, -1844($fp)
	beq $t1, $t2, label289
	j label290
label289:
	li $t0, 1
	sw $t0, -1832($fp)
label290:
	li $t0, 35303
	sw $t0, -1848($fp)
	addi $sp, $sp, -4
	lw $t0, -1804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1848($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1852($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -1856($fp)
	li $t0, 0
	sw $t0, -1860($fp)
	lw $t0, -1180($fp)
	sw $t0, -1864($fp)
	li $t0, 33321
	sw $t0, -1868($fp)
	lw $t0, -1864($fp)
	lw $t1, -1868($fp)
	sub $t0, $t0, $t1
	sw $t0, -1872($fp)
	lw $t0, -172($fp)
	sw $t0, -1876($fp)
	lw $t1, -1872($fp)
	lw $t2, -1876($fp)
	blt $t1, $t2, label295
	j label296
label295:
	li $t0, 1
	sw $t0, -1860($fp)
label296:
	li $t0, 56483
	sw $t0, -1880($fp)
	lw $t1, -1860($fp)
	lw $t2, -1880($fp)
	blt $t1, $t2, label293
	j label294
label293:
	li $t0, 1
	sw $t0, -1856($fp)
label294:
	lw $t1, -1852($fp)
	lw $t2, -1856($fp)
	bne $t1, $t2, label287
	j label288
label287:
	li $t0, 1
	sw $t0, -1788($fp)
label288:
	lw $ra, -4($fp)
	lw $v0, -1788($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1348($fp)
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1340
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
	lw $t0, -1904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1340
	sw $t0, -1908($fp)
	li $t0, 1
	sw $t0, -1912($fp)
	li $t0, 4
	lw $t1, -1912($fp)
	mul $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	lw $t1, -1908($fp)
	add $t0, $t0, $t1
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	lw $t1, 0($t0)
	sw $t1, -1924($fp)
	lw $t0, -1924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1340
	sw $t0, -1928($fp)
	li $t0, 2
	sw $t0, -1932($fp)
	li $t0, 4
	lw $t1, -1932($fp)
	mul $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	lw $t1, -1928($fp)
	add $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	lw $t1, 0($t0)
	sw $t1, -1944($fp)
	lw $t0, -1944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1340
	sw $t0, -1948($fp)
	li $t0, 3
	sw $t0, -1952($fp)
	li $t0, 4
	lw $t1, -1952($fp)
	mul $t0, $t0, $t1
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	lw $t1, -1948($fp)
	add $t0, $t0, $t1
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	lw $t1, 0($t0)
	sw $t1, -1964($fp)
	lw $t0, -1964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1340
	sw $t0, -1968($fp)
	li $t0, 4
	sw $t0, -1972($fp)
	li $t0, 4
	lw $t1, -1972($fp)
	mul $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	lw $t1, -1968($fp)
	add $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	lw $t1, 0($t0)
	sw $t1, -1984($fp)
	lw $t0, -1984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1340
	sw $t0, -1988($fp)
	li $t0, 5
	sw $t0, -1992($fp)
	li $t0, 4
	lw $t1, -1992($fp)
	mul $t0, $t0, $t1
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	lw $t1, -1988($fp)
	add $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	lw $t1, 0($t0)
	sw $t1, -2004($fp)
	lw $t0, -2004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2008($fp)
	lw $t0, -544($fp)
	sw $t0, -2012($fp)
	li $t0, 0
	sw $t0, -2016($fp)
	li $t0, 8991
	sw $t0, -2020($fp)
	lw $t1, -2020($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label300
label300:
	li $t0, 1
	sw $t0, -2016($fp)
label301:
	lw $t0, -2012($fp)
	lw $t1, -2016($fp)
	mul $t0, $t0, $t1
	sw $t0, -2024($fp)
	lw $t0, -892($fp)
	sw $t0, -2028($fp)
	li $t0, 0
	lw $t1, -2028($fp)
	sub $t0, $t0, $t1
	sw $t0, -2032($fp)
	li $t0, 0
	lw $t1, -2032($fp)
	sub $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2024($fp)
	lw $t1, -2036($fp)
	add $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $t1, -2040($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label298
label299:
	addi $t0, $fp, -116
	sw $t0, -2044($fp)
	lw $t0, 12($fp)
	sw $t0, -2048($fp)
	li $t0, 4
	lw $t1, -2048($fp)
	mul $t0, $t0, $t1
	sw $t0, -2052($fp)
	lw $t0, -2052($fp)
	lw $t1, -2044($fp)
	add $t0, $t0, $t1
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	lw $t1, 0($t0)
	sw $t1, -2060($fp)
	addi $t0, $fp, -60
	sw $t0, -2064($fp)
	li $t0, 2
	sw $t0, -2068($fp)
	li $t0, 4
	lw $t1, -2068($fp)
	mul $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	lw $t1, -2064($fp)
	add $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	lw $t1, 0($t0)
	sw $t1, -2080($fp)
	lw $t0, -2060($fp)
	lw $t1, -2080($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2084($fp)
	lw $t1, -2084($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label298
label297:
	li $t0, 1
	sw $t0, -2008($fp)
label298:
	lw $ra, -4($fp)
	lw $v0, -2008($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -2088($fp)
	addi $t0, $fp, -1340
	sw $t0, -2092($fp)
	li $t0, 3
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
	li $t0, 0
	lw $t1, -2108($fp)
	sub $t0, $t0, $t1
	sw $t0, -2112($fp)
	lw $t0, -592($fp)
	sw $t0, -2116($fp)
	lw $t1, -2112($fp)
	lw $t2, -2116($fp)
	beq $t1, $t2, label302
	j label303
label302:
	li $t0, 1
	sw $t0, -2088($fp)
label303:
	lw $t0, -1348($fp)
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1340
	sw $t0, -2124($fp)
	li $t0, 0
	sw $t0, -2128($fp)
	li $t0, 4
	lw $t1, -2128($fp)
	mul $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	lw $t1, -2124($fp)
	add $t0, $t0, $t1
	sw $t0, -2136($fp)
	lw $t0, -2136($fp)
	lw $t1, 0($t0)
	sw $t1, -2140($fp)
	lw $t0, -2140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1340
	sw $t0, -2144($fp)
	li $t0, 1
	sw $t0, -2148($fp)
	li $t0, 4
	lw $t1, -2148($fp)
	mul $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	lw $t1, -2144($fp)
	add $t0, $t0, $t1
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	lw $t1, 0($t0)
	sw $t1, -2160($fp)
	lw $t0, -2160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1340
	sw $t0, -2164($fp)
	li $t0, 2
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
	addi $t0, $fp, -1340
	sw $t0, -2184($fp)
	li $t0, 3
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
	addi $t0, $fp, -1340
	sw $t0, -2204($fp)
	li $t0, 4
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
	addi $t0, $fp, -1340
	sw $t0, -2224($fp)
	li $t0, 5
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
	lw $t0, -172($fp)
	sw $t0, -2244($fp)
	lw $ra, -4($fp)
	lw $v0, -2244($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label304:
	li $t0, 47475
	sw $t0, -2248($fp)
	lw $t1, -2248($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label306
label305:
label307:
	li $t0, 0
	sw $t0, -2252($fp)
	li $t0, 0
	sw $t0, -2256($fp)
	li $t0, 21719
	sw $t0, -2260($fp)
	li $t0, 0
	lw $t1, -2260($fp)
	sub $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t1, -2264($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label313
label314:
	li $t0, 26246
	sw $t0, -2268($fp)
	lw $t1, -2268($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label313
label312:
	li $t0, 1
	sw $t0, -2256($fp)
label313:
	li $t0, 0
	sw $t0, -2272($fp)
	lw $t0, -868($fp)
	sw $t0, -2276($fp)
	lw $t0, -1204($fp)
	sw $t0, -2280($fp)
	lw $t1, -2276($fp)
	lw $t2, -2280($fp)
	ble $t1, $t2, label315
	j label317
label317:
	li $t0, 63435
	sw $t0, -2284($fp)
	lw $t1, -2284($fp)
	li $t2, 0
	bne $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -2272($fp)
label316:
	li $t0, 0
	sw $t0, -2288($fp)
	li $t0, 26763
	sw $t0, -2292($fp)
	li $t0, 12425
	sw $t0, -2296($fp)
	lw $t1, -2292($fp)
	lw $t2, -2296($fp)
	bgt $t1, $t2, label320
	j label319
label320:
	li $t0, 31391
	sw $t0, -2300($fp)
	lw $t1, -2300($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label319
label318:
	li $t0, 1
	sw $t0, -2288($fp)
label319:
	li $t0, 36127
	sw $t0, -2304($fp)
	lw $t0, -2304($fp)
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -2308($fp)
	lw $t0, -868($fp)
	sw $t0, -2312($fp)
	li $t0, 5734
	sw $t0, -2316($fp)
	lw $t0, -2312($fp)
	lw $t1, -2316($fp)
	mul $t0, $t0, $t1
	sw $t0, -2320($fp)
	li $t0, 46948
	sw $t0, -2324($fp)
	lw $t0, -2320($fp)
	lw $t1, -2324($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2328($fp)
	addi $sp, $sp, -4
	lw $t0, -2256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2328($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2332($fp)
	addi $sp, $sp, 24
	lw $t1, -2332($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label310
label310:
	li $t0, 1
	sw $t0, -2252($fp)
label311:
	li $t0, 0
	sw $t0, -2336($fp)
	li $t0, 31638
	sw $t0, -2340($fp)
	lw $t1, -2340($fp)
	li $t2, 0
	bne $t1, $t2, label322
	j label321
label321:
	li $t0, 1
	sw $t0, -2336($fp)
label322:
	li $t0, 0
	lw $t1, -2336($fp)
	sub $t0, $t0, $t1
	sw $t0, -2344($fp)
	lw $t0, -1156($fp)
	sw $t0, -2348($fp)
	addi $sp, $sp, -4
	lw $t0, -2344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2348($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2352($fp)
	addi $sp, $sp, 12
	lw $t1, -2252($fp)
	lw $t2, -2352($fp)
	bge $t1, $t2, label308
	j label309
label308:
	li $t0, 0
	sw $t0, -2356($fp)
	addi $t0, $fp, -116
	sw $t0, -2360($fp)
	lw $t0, -316($fp)
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
	li $t0, 0
	sw $t0, -2380($fp)
	li $t0, 0
	sw $t0, -2384($fp)
	lw $t0, -1204($fp)
	sw $t0, -2388($fp)
	lw $t1, -2388($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label328
label328:
	li $t0, 1
	sw $t0, -2384($fp)
label329:
	lw $t0, -580($fp)
	sw $t0, -2392($fp)
	lw $t0, -2384($fp)
	lw $t1, -2392($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2396($fp)
	li $t0, 41134
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -2404($fp)
	li $t0, 0
	sw $t0, -2408($fp)
	lw $t0, -820($fp)
	sw $t0, -2412($fp)
	lw $t0, -892($fp)
	sw $t0, -2416($fp)
	lw $t0, -2412($fp)
	lw $t1, -2416($fp)
	sub $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t0, -868($fp)
	sw $t0, -2424($fp)
	lw $t1, -2420($fp)
	lw $t2, -2424($fp)
	blt $t1, $t2, label330
	j label331
label330:
	li $t0, 1
	sw $t0, -2408($fp)
label331:
	addi $sp, $sp, -4
	lw $t0, -2396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2408($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2428($fp)
	addi $sp, $sp, 16
	lw $t1, -2428($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label326
label326:
	li $t0, 1
	sw $t0, -2380($fp)
label327:
	li $t0, 0
	sw $t0, -2432($fp)
	lw $t0, -568($fp)
	sw $t0, -2436($fp)
	lw $t0, -592($fp)
	sw $t0, -2440($fp)
	lw $t1, -2436($fp)
	lw $t2, -2440($fp)
	beq $t1, $t2, label332
	j label333
label332:
	li $t0, 1
	sw $t0, -2432($fp)
label333:
	li $t0, 38655
	sw $t0, -2444($fp)
	li $t0, 32818
	sw $t0, -2448($fp)
	lw $t0, -892($fp)
	sw $t0, -2452($fp)
	lw $t0, -2448($fp)
	lw $t1, -2452($fp)
	sub $t0, $t0, $t1
	sw $t0, -2456($fp)
	li $t0, 17573
	sw $t0, -2460($fp)
	lw $t0, -2456($fp)
	lw $t1, -2460($fp)
	add $t0, $t0, $t1
	sw $t0, -2464($fp)
	li $t0, 0
	sw $t0, -2468($fp)
	li $t0, 32218
	sw $t0, -2472($fp)
	li $t0, 21391
	sw $t0, -2476($fp)
	lw $t0, -2472($fp)
	lw $t1, -2476($fp)
	sub $t0, $t0, $t1
	sw $t0, -2480($fp)
	lw $t1, -2480($fp)
	li $t2, 0
	bne $t1, $t2, label334
	j label336
label336:
	lw $t0, -232($fp)
	sw $t0, -2484($fp)
	lw $t1, -2484($fp)
	li $t2, 0
	bne $t1, $t2, label334
	j label335
label334:
	li $t0, 1
	sw $t0, -2468($fp)
label335:
	li $t0, 23827
	sw $t0, -2488($fp)
	lw $t0, -232($fp)
	sw $t0, -2492($fp)
	lw $t0, -2488($fp)
	lw $t1, -2492($fp)
	mul $t0, $t0, $t1
	sw $t0, -2496($fp)
	lw $t0, -268($fp)
	sw $t0, -2500($fp)
	lw $t0, -2496($fp)
	lw $t1, -2500($fp)
	mul $t0, $t0, $t1
	sw $t0, -2504($fp)
	li $t0, 0
	sw $t0, -2508($fp)
	lw $t0, -856($fp)
	sw $t0, -2512($fp)
	li $t0, 64433
	sw $t0, -2516($fp)
	lw $t0, -2512($fp)
	lw $t1, -2516($fp)
	sub $t0, $t0, $t1
	sw $t0, -2520($fp)
	lw $t0, -868($fp)
	sw $t0, -2524($fp)
	lw $t0, -2520($fp)
	lw $t1, -2524($fp)
	add $t0, $t0, $t1
	sw $t0, -2528($fp)
	lw $t0, -556($fp)
	sw $t0, -2532($fp)
	lw $t0, -232($fp)
	sw $t0, -2536($fp)
	lw $t0, -2532($fp)
	lw $t1, -2536($fp)
	add $t0, $t0, $t1
	sw $t0, -2540($fp)
	li $t0, 0
	sw $t0, -2544($fp)
	li $t0, 0
	sw $t0, -2548($fp)
	lw $t0, -304($fp)
	sw $t0, -2552($fp)
	lw $t0, -1156($fp)
	sw $t0, -2556($fp)
	lw $t1, -2552($fp)
	lw $t2, -2556($fp)
	bgt $t1, $t2, label341
	j label343
label343:
	lw $t0, -892($fp)
	sw $t0, -2560($fp)
	lw $t1, -2560($fp)
	li $t2, 0
	bne $t1, $t2, label341
	j label342
label341:
	li $t0, 1
	sw $t0, -2548($fp)
label342:
	li $t0, 0
	sw $t0, -2564($fp)
	lw $t0, -532($fp)
	sw $t0, -2568($fp)
	lw $t0, -868($fp)
	sw $t0, -2572($fp)
	lw $t0, -2568($fp)
	lw $t1, -2572($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2576($fp)
	lw $t1, -2576($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label345
label346:
	lw $t0, -316($fp)
	sw $t0, -2580($fp)
	lw $t1, -2580($fp)
	li $t2, 0
	bne $t1, $t2, label344
	j label345
label344:
	li $t0, 1
	sw $t0, -2564($fp)
label345:
	addi $sp, $sp, -4
	lw $t0, -2548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2564($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2584($fp)
	addi $sp, $sp, 12
	lw $t1, -2584($fp)
	li $t2, 0
	bne $t1, $t2, label340
	j label339
label339:
	li $t0, 1
	sw $t0, -2544($fp)
label340:
	addi $sp, $sp, -4
	lw $t0, -2528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2544($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2588($fp)
	addi $sp, $sp, 16
	li $t0, 30444
	sw $t0, -2592($fp)
	lw $t1, -2588($fp)
	lw $t2, -2592($fp)
	ble $t1, $t2, label337
	j label338
label337:
	li $t0, 1
	sw $t0, -2508($fp)
label338:
	li $t0, 0
	sw $t0, -2596($fp)
	li $t0, 0
	sw $t0, -2600($fp)
	lw $t0, -280($fp)
	sw $t0, -2604($fp)
	lw $t1, -2604($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label349
label349:
	li $t0, 1
	sw $t0, -2600($fp)
label350:
	li $t0, 37343
	sw $t0, -2608($fp)
	lw $t1, -2600($fp)
	lw $t2, -2608($fp)
	beq $t1, $t2, label347
	j label348
label347:
	li $t0, 1
	sw $t0, -2596($fp)
label348:
	li $t0, 0
	sw $t0, -2612($fp)
	lw $t0, -1180($fp)
	sw $t0, -2616($fp)
	li $t0, 5698
	sw $t0, -2620($fp)
	lw $t0, -2616($fp)
	lw $t1, -2620($fp)
	add $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t0, -1156($fp)
	sw $t0, -2628($fp)
	lw $t1, -2624($fp)
	lw $t2, -2628($fp)
	bgt $t1, $t2, label351
	j label352
label351:
	li $t0, 1
	sw $t0, -2612($fp)
label352:
	li $t0, 0
	sw $t0, -2632($fp)
	li $t0, 18102
	sw $t0, -2636($fp)
	li $t0, 48804
	sw $t0, -2640($fp)
	lw $t1, -2636($fp)
	lw $t2, -2640($fp)
	beq $t1, $t2, label353
	j label354
label353:
	li $t0, 1
	sw $t0, -2632($fp)
label354:
	li $t0, 13519
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -2648($fp)
	addi $sp, $sp, -4
	lw $t0, -2612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2648($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2652($fp)
	addi $sp, $sp, 16
	lw $t0, -256($fp)
	sw $t0, -2656($fp)
	lw $t0, -2652($fp)
	lw $t1, -2656($fp)
	mul $t0, $t0, $t1
	sw $t0, -2660($fp)
	li $t0, 13500
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -2668($fp)
	addi $sp, $sp, -4
	lw $t0, -2504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2668($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2672($fp)
	addi $sp, $sp, 24
	lw $t0, -796($fp)
	sw $t0, -2676($fp)
	lw $t0, -2672($fp)
	lw $t1, -2676($fp)
	add $t0, $t0, $t1
	sw $t0, -2680($fp)
	li $t0, 0
	sw $t0, -2684($fp)
	li $t0, 0
	sw $t0, -2688($fp)
	lw $t0, -1216($fp)
	sw $t0, -2692($fp)
	lw $t0, -1168($fp)
	sw $t0, -2696($fp)
	lw $t1, -2692($fp)
	lw $t2, -2696($fp)
	bgt $t1, $t2, label357
	j label358
label357:
	li $t0, 1
	sw $t0, -2688($fp)
label358:
	lw $t0, -1144($fp)
	sw $t0, -2700($fp)
	lw $t1, -2688($fp)
	lw $t2, -2700($fp)
	ble $t1, $t2, label355
	j label356
label355:
	li $t0, 1
	sw $t0, -2684($fp)
label356:
	addi $sp, $sp, -4
	lw $t0, -2444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2684($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2704($fp)
	addi $sp, $sp, 24
	lw $t0, -508($fp)
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -2712($fp)
	li $t0, 55573
	sw $t0, -2716($fp)
	lw $t0, -1156($fp)
	sw $t0, -2720($fp)
	lw $t0, -2716($fp)
	lw $t1, -2720($fp)
	sub $t0, $t0, $t1
	sw $t0, -2724($fp)
	lw $t0, -892($fp)
	sw $t0, -2728($fp)
	lw $t0, -2724($fp)
	lw $t1, -2728($fp)
	sub $t0, $t0, $t1
	sw $t0, -2732($fp)
	lw $t0, -148($fp)
	sw $t0, -2736($fp)
	li $t0, 49099
	sw $t0, -2740($fp)
	li $t0, 64363
	sw $t0, -2744($fp)
	lw $t0, -2740($fp)
	lw $t1, -2744($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2748($fp)
	li $t0, 0
	lw $t1, -2748($fp)
	sub $t0, $t0, $t1
	sw $t0, -2752($fp)
	li $t0, 0
	sw $t0, -2756($fp)
	lw $t0, -124($fp)
	sw $t0, -2760($fp)
	lw $t1, -2760($fp)
	li $t2, 0
	bne $t1, $t2, label359
	j label361
label361:
	li $t0, 59715
	sw $t0, -2764($fp)
	lw $t1, -2764($fp)
	li $t2, 0
	bne $t1, $t2, label359
	j label360
label359:
	li $t0, 1
	sw $t0, -2756($fp)
label360:
	addi $sp, $sp, -4
	lw $t0, -2736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2756($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2768($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -2768($fp)
	sub $t0, $t0, $t1
	sw $t0, -2772($fp)
	addi $sp, $sp, -4
	lw $t0, -2732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2772($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2776($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2776($fp)
	sub $t0, $t0, $t1
	sw $t0, -2780($fp)
	addi $sp, $sp, -4
	lw $t0, -2380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2780($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2784($fp)
	addi $sp, $sp, 24
	lw $t0, -2376($fp)
	lw $t1, -2784($fp)
	mul $t0, $t0, $t1
	sw $t0, -2788($fp)
	li $t0, 0
	sw $t0, -2792($fp)
	li $t0, 48603
	sw $t0, -2796($fp)
	lw $t1, -2796($fp)
	li $t2, 0
	bne $t1, $t2, label362
	j label363
label362:
	li $t0, 1
	sw $t0, -2792($fp)
label363:
	lw $t1, -2788($fp)
	lw $t2, -2792($fp)
	ble $t1, $t2, label323
	j label325
label325:
	lw $t0, -1156($fp)
	sw $t0, -2800($fp)
	lw $t1, -2800($fp)
	li $t2, 0
	bne $t1, $t2, label323
	j label324
label323:
	li $t0, 1
	sw $t0, -2356($fp)
label324:
	j label307
label309:
	j label304
label306:
	addi $t0, $fp, -36
	sw $t0, -2804($fp)
	lw $t0, -196($fp)
	sw $t0, -2808($fp)
	li $t0, 4
	lw $t1, -2808($fp)
	mul $t0, $t0, $t1
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	lw $t1, -2804($fp)
	add $t0, $t0, $t1
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	lw $t1, 0($t0)
	sw $t1, -2820($fp)
	lw $t1, -2820($fp)
	li $t2, 0
	bne $t1, $t2, label369
	j label367
label369:
	li $t0, 20594
	sw $t0, -2824($fp)
	li $t0, 46868
	sw $t0, -2828($fp)
	lw $t0, -2824($fp)
	lw $t1, -2828($fp)
	sub $t0, $t0, $t1
	sw $t0, -2832($fp)
	lw $t1, -2832($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label367
label368:
	li $t0, 30015
	sw $t0, -2836($fp)
	lw $t0, -292($fp)
	sw $t0, -2840($fp)
	lw $t0, -2836($fp)
	lw $t1, -2840($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2844($fp)
	lw $t0, -844($fp)
	sw $t0, -2848($fp)
	lw $t1, -2844($fp)
	lw $t2, -2848($fp)
	beq $t1, $t2, label364
	j label367
label367:
	li $t0, 22577
	sw $t0, -2852($fp)
	lw $t0, -244($fp)
	sw $t0, -2856($fp)
	lw $t0, -2852($fp)
	lw $t1, -2856($fp)
	mul $t0, $t0, $t1
	sw $t0, -2860($fp)
	li $t0, 5994
	sw $t0, -2864($fp)
	lw $t0, -2860($fp)
	lw $t1, -2864($fp)
	sub $t0, $t0, $t1
	sw $t0, -2868($fp)
	li $t0, 0
	sw $t0, -2872($fp)
	lw $t0, -892($fp)
	sw $t0, -2876($fp)
	lw $t1, -2876($fp)
	li $t2, 0
	bne $t1, $t2, label371
	j label370
label370:
	li $t0, 1
	sw $t0, -2872($fp)
label371:
	li $t0, 0
	sw $t0, -2880($fp)
	li $t0, 8095
	sw $t0, -2884($fp)
	li $t0, 42440
	sw $t0, -2888($fp)
	lw $t1, -2884($fp)
	lw $t2, -2888($fp)
	beq $t1, $t2, label372
	j label374
label374:
	lw $t0, -136($fp)
	sw $t0, -2892($fp)
	lw $t1, -2892($fp)
	li $t2, 0
	bne $t1, $t2, label372
	j label373
label372:
	li $t0, 1
	sw $t0, -2880($fp)
label373:
	lw $t0, -316($fp)
	sw $t0, -2896($fp)
	lw $t0, -1180($fp)
	sw $t0, -2900($fp)
	lw $t0, -2896($fp)
	lw $t1, -2900($fp)
	mul $t0, $t0, $t1
	sw $t0, -2904($fp)
	li $t0, 56721
	sw $t0, -2908($fp)
	lw $t0, -2904($fp)
	lw $t1, -2908($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2912($fp)
	lw $t0, -868($fp)
	sw $t0, -2916($fp)
	lw $t0, -1156($fp)
	sw $t0, -2920($fp)
	lw $t0, -2916($fp)
	lw $t1, -2920($fp)
	mul $t0, $t0, $t1
	sw $t0, -2924($fp)
	lw $t0, -256($fp)
	sw $t0, -2928($fp)
	lw $t0, -2924($fp)
	lw $t1, -2928($fp)
	mul $t0, $t0, $t1
	sw $t0, -2932($fp)
	addi $sp, $sp, -4
	lw $t0, -2868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2932($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2936($fp)
	addi $sp, $sp, 24
	lw $t0, -1156($fp)
	sw $t0, -2940($fp)
	addi $t0, $fp, -8
	sw $t0, -2944($fp)
	li $t0, 0
	sw $t0, -2948($fp)
	li $t0, 4
	lw $t1, -2948($fp)
	mul $t0, $t0, $t1
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	lw $t1, -2944($fp)
	add $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	lw $t1, 0($t0)
	sw $t1, -2960($fp)
	li $t0, 0
	sw $t0, -2964($fp)
	li $t0, 45887
	sw $t0, -2968($fp)
	li $t0, 0
	lw $t1, -2968($fp)
	sub $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $t1, -2972($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label376
label377:
	lw $t0, -880($fp)
	sw $t0, -2976($fp)
	lw $t1, -2976($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label376
label375:
	li $t0, 1
	sw $t0, -2964($fp)
label376:
	li $t0, 0
	sw $t0, -2980($fp)
	li $t0, 0
	sw $t0, -2984($fp)
	lw $t0, -604($fp)
	sw $t0, -2988($fp)
	li $t0, 48376
	sw $t0, -2992($fp)
	lw $t1, -2988($fp)
	lw $t2, -2992($fp)
	beq $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -2984($fp)
label381:
	lw $t0, -832($fp)
	sw $t0, -2996($fp)
	lw $t1, -2984($fp)
	lw $t2, -2996($fp)
	beq $t1, $t2, label378
	j label379
label378:
	li $t0, 1
	sw $t0, -2980($fp)
label379:
	li $t0, 0
	sw $t0, -3000($fp)
	li $t0, 0
	sw $t0, -3004($fp)
	li $t0, 58339
	sw $t0, -3008($fp)
	lw $t1, -3008($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label386
label388:
	lw $t0, -616($fp)
	sw $t0, -3012($fp)
	lw $t1, -3012($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label386
label387:
	li $t0, 32386
	sw $t0, -3016($fp)
	lw $t1, -3016($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label386
label385:
	li $t0, 1
	sw $t0, -3004($fp)
label386:
	li $t0, 0
	sw $t0, -3020($fp)
	li $t0, 37632
	sw $t0, -3024($fp)
	lw $t0, -868($fp)
	sw $t0, -3028($fp)
	lw $t0, -3024($fp)
	lw $t1, -3028($fp)
	add $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -868($fp)
	sw $t0, -3036($fp)
	lw $t1, -3032($fp)
	lw $t2, -3036($fp)
	bge $t1, $t2, label389
	j label390
label389:
	li $t0, 1
	sw $t0, -3020($fp)
label390:
	li $t0, 64159
	sw $t0, -3040($fp)
	li $t0, 48823
	sw $t0, -3044($fp)
	lw $t0, -3040($fp)
	lw $t1, -3044($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3048($fp)
	li $t0, 0
	lw $t1, -3048($fp)
	sub $t0, $t0, $t1
	sw $t0, -3052($fp)
	addi $sp, $sp, -4
	lw $t0, -3004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3052($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3056($fp)
	addi $sp, $sp, 16
	lw $t1, -3056($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label384
label384:
	li $t0, 36460
	sw $t0, -3060($fp)
	lw $t1, -3060($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label383
label382:
	li $t0, 1
	sw $t0, -3000($fp)
label383:
	addi $sp, $sp, -4
	lw $t0, -2940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3000($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3064($fp)
	addi $sp, $sp, 24
	lw $t1, -2936($fp)
	lw $t2, -3064($fp)
	blt $t1, $t2, label364
	j label365
label364:
	addi $t0, $fp, -100
	sw $t0, -3068($fp)
	li $t0, 0
	sw $t0, -3072($fp)
	li $t0, 29155
	sw $t0, -3076($fp)
	lw $t0, -640($fp)
	sw $t0, -3080($fp)
	lw $t0, -3076($fp)
	lw $t1, -3080($fp)
	add $t0, $t0, $t1
	sw $t0, -3084($fp)
	lw $t1, -3084($fp)
	li $t2, 0
	bne $t1, $t2, label394
	j label396
label396:
	li $t0, 55677
	sw $t0, -3088($fp)
	lw $t1, -3088($fp)
	li $t2, 0
	bne $t1, $t2, label394
	j label395
label394:
	li $t0, 1
	sw $t0, -3072($fp)
label395:
	li $t0, 4
	lw $t1, -3072($fp)
	mul $t0, $t0, $t1
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	lw $t1, -3068($fp)
	add $t0, $t0, $t1
	sw $t0, -3096($fp)
	lw $t0, -3096($fp)
	lw $t1, 0($t0)
	sw $t1, -3100($fp)
	li $t0, 0
	sw $t0, -3104($fp)
	li $t0, 0
	sw $t0, -3108($fp)
	li $t0, 62112
	sw $t0, -3112($fp)
	li $t0, 1
	sw $t0, -3116($fp)
	lw $t0, -3112($fp)
	lw $t1, -3116($fp)
	mul $t0, $t0, $t1
	sw $t0, -3120($fp)
	lw $t1, -3120($fp)
	li $t2, 0
	bne $t1, $t2, label401
	j label400
label401:
	li $t0, 41977
	sw $t0, -3124($fp)
	lw $t1, -3124($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label400
label399:
	li $t0, 1
	sw $t0, -3108($fp)
label400:
	addi $t0, $fp, -8
	sw $t0, -3128($fp)
	li $t0, 0
	sw $t0, -3132($fp)
	li $t0, 4
	lw $t1, -3132($fp)
	mul $t0, $t0, $t1
	sw $t0, -3136($fp)
	lw $t0, -3136($fp)
	lw $t1, -3128($fp)
	add $t0, $t0, $t1
	sw $t0, -3140($fp)
	lw $t0, -3140($fp)
	lw $t1, 0($t0)
	sw $t1, -3144($fp)
	li $t0, 20585
	sw $t0, -3148($fp)
	lw $t0, -3144($fp)
	lw $t1, -3148($fp)
	mul $t0, $t0, $t1
	sw $t0, -3152($fp)
	lw $t0, -256($fp)
	sw $t0, -3156($fp)
	lw $t0, -3156($fp)
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -3160($fp)
	addi $sp, $sp, -4
	lw $t0, -3160($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3164($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -3108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3164($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3168($fp)
	addi $sp, $sp, 16
	lw $t1, -3168($fp)
	li $t2, 0
	bne $t1, $t2, label398
	j label397
label397:
	li $t0, 1
	sw $t0, -3104($fp)
label398:
	lw $t0, -3100($fp)
	lw $t1, -3104($fp)
	sub $t0, $t0, $t1
	sw $t0, -3172($fp)
	lw $t1, -3172($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label392
label391:
	li $t0, 29394
	sw $t0, -3200($fp)
	lw $t0, -3200($fp)
	sw $t0, -3204($fp)
	lw $t0, -3204($fp)
	sw $t0, -3208($fp)
	li $t0, 12308
	sw $t0, -3212($fp)
	lw $t0, -3212($fp)
	sw $t0, -3216($fp)
	lw $t0, -3216($fp)
	sw $t0, -3220($fp)
	li $t0, 15096
	sw $t0, -3224($fp)
	addi $t0, $fp, -3196
	sw $t0, -3228($fp)
	li $t0, 0
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
	li $t0, 4992
	sw $t0, -3248($fp)
	addi $t0, $fp, -3196
	sw $t0, -3252($fp)
	li $t0, 1
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
	li $t0, 60911
	sw $t0, -3272($fp)
	addi $t0, $fp, -3196
	sw $t0, -3276($fp)
	li $t0, 2
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
	li $t0, 35691
	sw $t0, -3296($fp)
	addi $t0, $fp, -3196
	sw $t0, -3300($fp)
	li $t0, 3
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
	li $t0, 51861
	sw $t0, -3320($fp)
	addi $t0, $fp, -3196
	sw $t0, -3324($fp)
	li $t0, 4
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
	li $t0, 25390
	sw $t0, -3344($fp)
	addi $t0, $fp, -3196
	sw $t0, -3348($fp)
	li $t0, 5
	sw $t0, -3352($fp)
	lw $t0, -3352($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3356($fp)
	lw $t0, -3348($fp)
	lw $t1, -3356($fp)
	add $t0, $t0, $t1
	sw $t0, -3360($fp)
	lw $t0, -3344($fp)
	lw $t1, -3360($fp)
	sw $t0, 0($t1)
	lw $t0, -3360($fp)
	lw $t1, 0($t0)
	sw $t1, -3364($fp)
	li $t0, 26876
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	sw $t0, -3376($fp)
	li $t0, 59956
	sw $t0, -3380($fp)
	lw $t0, -3380($fp)
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	sw $t0, -3388($fp)
	lw $t0, -3204($fp)
	sw $t0, -3392($fp)
	lw $t0, -3392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3216($fp)
	sw $t0, -3396($fp)
	lw $t0, -3396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3196
	sw $t0, -3400($fp)
	li $t0, 0
	sw $t0, -3404($fp)
	li $t0, 4
	lw $t1, -3404($fp)
	mul $t0, $t0, $t1
	sw $t0, -3408($fp)
	lw $t0, -3408($fp)
	lw $t1, -3400($fp)
	add $t0, $t0, $t1
	sw $t0, -3412($fp)
	lw $t0, -3412($fp)
	lw $t1, 0($t0)
	sw $t1, -3416($fp)
	lw $t0, -3416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3196
	sw $t0, -3420($fp)
	li $t0, 1
	sw $t0, -3424($fp)
	li $t0, 4
	lw $t1, -3424($fp)
	mul $t0, $t0, $t1
	sw $t0, -3428($fp)
	lw $t0, -3428($fp)
	lw $t1, -3420($fp)
	add $t0, $t0, $t1
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	lw $t1, 0($t0)
	sw $t1, -3436($fp)
	lw $t0, -3436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3196
	sw $t0, -3440($fp)
	li $t0, 2
	sw $t0, -3444($fp)
	li $t0, 4
	lw $t1, -3444($fp)
	mul $t0, $t0, $t1
	sw $t0, -3448($fp)
	lw $t0, -3448($fp)
	lw $t1, -3440($fp)
	add $t0, $t0, $t1
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	lw $t1, 0($t0)
	sw $t1, -3456($fp)
	lw $t0, -3456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3196
	sw $t0, -3460($fp)
	li $t0, 3
	sw $t0, -3464($fp)
	li $t0, 4
	lw $t1, -3464($fp)
	mul $t0, $t0, $t1
	sw $t0, -3468($fp)
	lw $t0, -3468($fp)
	lw $t1, -3460($fp)
	add $t0, $t0, $t1
	sw $t0, -3472($fp)
	lw $t0, -3472($fp)
	lw $t1, 0($t0)
	sw $t1, -3476($fp)
	lw $t0, -3476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3196
	sw $t0, -3480($fp)
	li $t0, 4
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
	lw $t0, -3496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3196
	sw $t0, -3500($fp)
	li $t0, 5
	sw $t0, -3504($fp)
	li $t0, 4
	lw $t1, -3504($fp)
	mul $t0, $t0, $t1
	sw $t0, -3508($fp)
	lw $t0, -3508($fp)
	lw $t1, -3500($fp)
	add $t0, $t0, $t1
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	lw $t1, 0($t0)
	sw $t1, -3516($fp)
	lw $t0, -3516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3372($fp)
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3384($fp)
	sw $t0, -3524($fp)
	lw $t0, -3524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3528($fp)
	addi $t0, $fp, -116
	sw $t0, -3532($fp)
	lw $t0, -160($fp)
	sw $t0, -3536($fp)
	li $t0, 4
	lw $t1, -3536($fp)
	mul $t0, $t0, $t1
	sw $t0, -3540($fp)
	lw $t0, -3540($fp)
	lw $t1, -3532($fp)
	add $t0, $t0, $t1
	sw $t0, -3544($fp)
	lw $t0, -3544($fp)
	lw $t1, 0($t0)
	sw $t1, -3548($fp)
	li $t0, 2294
	sw $t0, -3552($fp)
	lw $t0, -3372($fp)
	sw $t0, -3556($fp)
	lw $t0, -3552($fp)
	lw $t1, -3556($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3560($fp)
	lw $t0, -3204($fp)
	sw $t0, -3564($fp)
	lw $t0, -3560($fp)
	lw $t1, -3564($fp)
	add $t0, $t0, $t1
	sw $t0, -3568($fp)
	lw $t1, -3548($fp)
	lw $t2, -3568($fp)
	bge $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -3528($fp)
label403:
	lw $ra, -4($fp)
	lw $v0, -3528($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -3572($fp)
	li $t0, 0
	sw $t0, -3576($fp)
	lw $t0, -892($fp)
	sw $t0, -3580($fp)
	lw $t0, -592($fp)
	sw $t0, -3584($fp)
	lw $t0, -3580($fp)
	lw $t1, -3584($fp)
	mul $t0, $t0, $t1
	sw $t0, -3588($fp)
	li $t0, 49453
	sw $t0, -3592($fp)
	lw $t1, -3588($fp)
	lw $t2, -3592($fp)
	beq $t1, $t2, label408
	j label409
label408:
	li $t0, 1
	sw $t0, -3576($fp)
label409:
	li $t0, 415
	sw $t0, -3596($fp)
	lw $t0, -1180($fp)
	sw $t0, -3600($fp)
	lw $t0, -3596($fp)
	lw $t1, -3600($fp)
	mul $t0, $t0, $t1
	sw $t0, -3604($fp)
	lw $t1, -3576($fp)
	lw $t2, -3604($fp)
	bne $t1, $t2, label407
	j label406
label407:
	lw $t0, -232($fp)
	sw $t0, -3608($fp)
	lw $t1, -3608($fp)
	li $t2, 0
	bne $t1, $t2, label404
	j label406
label406:
	lw $t0, -1168($fp)
	sw $t0, -3612($fp)
	lw $t0, -868($fp)
	sw $t0, -3616($fp)
	lw $t0, -3612($fp)
	lw $t1, -3616($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3620($fp)
	li $t0, 918
	sw $t0, -3624($fp)
	lw $t0, -3620($fp)
	lw $t1, -3624($fp)
	mul $t0, $t0, $t1
	sw $t0, -3628($fp)
	li $t0, 0
	sw $t0, -3632($fp)
	li $t0, 32741
	sw $t0, -3636($fp)
	lw $t0, -1168($fp)
	sw $t0, -3640($fp)
	lw $t1, -3636($fp)
	lw $t2, -3640($fp)
	bge $t1, $t2, label410
	j label411
label410:
	li $t0, 1
	sw $t0, -3632($fp)
label411:
	lw $t1, -3628($fp)
	lw $t2, -3632($fp)
	beq $t1, $t2, label404
	j label405
label404:
	li $t0, 1
	sw $t0, -3572($fp)
label405:
	li $t0, 0
	sw $t0, -3644($fp)
	li $t0, 0
	sw $t0, -3648($fp)
	li $t0, 38047
	sw $t0, -3652($fp)
	lw $t1, -3652($fp)
	li $t2, 0
	bne $t1, $t2, label418
	j label417
label417:
	li $t0, 1
	sw $t0, -3648($fp)
label418:
	li $t0, 0
	sw $t0, -3656($fp)
	lw $t0, -3216($fp)
	sw $t0, -3660($fp)
	lw $t1, -3660($fp)
	li $t2, 0
	bne $t1, $t2, label420
	j label419
label419:
	li $t0, 1
	sw $t0, -3656($fp)
label420:
	lw $t0, -3648($fp)
	lw $t1, -3656($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3664($fp)
	li $t0, 0
	lw $t1, -3664($fp)
	sub $t0, $t0, $t1
	sw $t0, -3668($fp)
	lw $t0, -604($fp)
	sw $t0, -3672($fp)
	lw $t1, -3668($fp)
	lw $t2, -3672($fp)
	beq $t1, $t2, label415
	j label416
label415:
	li $t0, 1
	sw $t0, -3644($fp)
label416:
	li $t0, 0
	sw $t0, -3676($fp)
	lw $t0, -1180($fp)
	sw $t0, -3680($fp)
	lw $t1, -3680($fp)
	li $t2, 0
	bne $t1, $t2, label421
	j label422
label421:
	li $t0, 1
	sw $t0, -3676($fp)
label422:
	lw $t0, -1192($fp)
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -3688($fp)
	addi $sp, $sp, -4
	lw $t0, -3676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3688($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3692($fp)
	addi $sp, $sp, 12
	lw $t1, -3644($fp)
	lw $t2, -3692($fp)
	bne $t1, $t2, label412
	j label413
label412:
	addi $t0, $fp, -60
	sw $t0, -3696($fp)
	addi $t0, $fp, -8
	sw $t0, -3700($fp)
	li $t0, 0
	sw $t0, -3704($fp)
	li $t0, 4
	lw $t1, -3704($fp)
	mul $t0, $t0, $t1
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	lw $t1, -3700($fp)
	add $t0, $t0, $t1
	sw $t0, -3712($fp)
	lw $t0, -3712($fp)
	lw $t1, 0($t0)
	sw $t1, -3716($fp)
	li $t0, 0
	lw $t1, -3716($fp)
	sub $t0, $t0, $t1
	sw $t0, -3720($fp)
	li $t0, 4
	lw $t1, -3720($fp)
	mul $t0, $t0, $t1
	sw $t0, -3724($fp)
	lw $t0, -3724($fp)
	lw $t1, -3696($fp)
	add $t0, $t0, $t1
	sw $t0, -3728($fp)
	lw $t0, -3728($fp)
	lw $t1, 0($t0)
	sw $t1, -3732($fp)
	lw $t1, -3732($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label424
label426:
	li $t0, 0
	sw $t0, -3736($fp)
	li $t0, 8971
	sw $t0, -3740($fp)
	lw $t1, -3740($fp)
	li $t2, 0
	bne $t1, $t2, label428
	j label427
label427:
	li $t0, 1
	sw $t0, -3736($fp)
label428:
	li $t0, 45479
	sw $t0, -3744($fp)
	lw $t0, -3736($fp)
	lw $t1, -3744($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3748($fp)
	lw $t1, -3748($fp)
	li $t2, 0
	bne $t1, $t2, label423
	j label424
label423:
	li $t0, 58950
	sw $t0, -3752($fp)
	lw $t0, -136($fp)
	sw $t0, -3756($fp)
	lw $t0, -3752($fp)
	lw $t1, -3756($fp)
	sub $t0, $t0, $t1
	sw $t0, -3760($fp)
	j label425
label424:
label429:
	li $t0, 43039
	sw $t0, -3764($fp)
	lw $t0, -844($fp)
	sw $t0, -3768($fp)
	li $t0, 9097
	sw $t0, -3772($fp)
	lw $t0, -3768($fp)
	lw $t1, -3772($fp)
	mul $t0, $t0, $t1
	sw $t0, -3776($fp)
	lw $t0, -3764($fp)
	lw $t1, -3776($fp)
	add $t0, $t0, $t1
	sw $t0, -3780($fp)
	li $t0, 0
	sw $t0, -3784($fp)
	li $t0, 49091
	sw $t0, -3788($fp)
	li $t0, 0
	lw $t1, -3788($fp)
	sub $t0, $t0, $t1
	sw $t0, -3792($fp)
	lw $t1, -3792($fp)
	li $t2, 0
	bne $t1, $t2, label433
	j label432
label432:
	li $t0, 1
	sw $t0, -3784($fp)
label433:
	lw $t0, -3780($fp)
	lw $t1, -3784($fp)
	add $t0, $t0, $t1
	sw $t0, -3796($fp)
	lw $t0, -544($fp)
	sw $t0, -3800($fp)
	lw $t0, -616($fp)
	sw $t0, -3804($fp)
	lw $t0, -3800($fp)
	lw $t1, -3804($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3808($fp)
	li $t0, 15788
	sw $t0, -3812($fp)
	li $t0, 0
	lw $t1, -3812($fp)
	sub $t0, $t0, $t1
	sw $t0, -3816($fp)
	lw $t0, -3808($fp)
	lw $t1, -3816($fp)
	mul $t0, $t0, $t1
	sw $t0, -3820($fp)
	lw $t0, -3796($fp)
	lw $t1, -3820($fp)
	add $t0, $t0, $t1
	sw $t0, -3824($fp)
	lw $t1, -3824($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label431
label430:
	li $t0, 37149
	sw $t0, -3828($fp)
	li $t0, 0
	lw $t1, -3828($fp)
	sub $t0, $t0, $t1
	sw $t0, -3832($fp)
	li $t0, 0
	sw $t0, -3836($fp)
	li $t0, 0
	sw $t0, -3840($fp)
	li $t0, 44192
	sw $t0, -3844($fp)
	li $t0, 61214
	sw $t0, -3848($fp)
	lw $t1, -3844($fp)
	lw $t2, -3848($fp)
	beq $t1, $t2, label436
	j label437
label436:
	li $t0, 1
	sw $t0, -3840($fp)
label437:
	li $t0, 46750
	sw $t0, -3852($fp)
	lw $t1, -3840($fp)
	lw $t2, -3852($fp)
	beq $t1, $t2, label434
	j label435
label434:
	li $t0, 1
	sw $t0, -3836($fp)
label435:
	li $t0, 0
	sw $t0, -3856($fp)
	lw $t0, -1156($fp)
	sw $t0, -3860($fp)
	li $t0, 46118
	sw $t0, -3864($fp)
	lw $t0, -3860($fp)
	lw $t1, -3864($fp)
	sub $t0, $t0, $t1
	sw $t0, -3868($fp)
	li $t0, 41758
	sw $t0, -3872($fp)
	lw $t1, -3868($fp)
	lw $t2, -3872($fp)
	beq $t1, $t2, label438
	j label439
label438:
	li $t0, 1
	sw $t0, -3856($fp)
label439:
	li $t0, 0
	sw $t0, -3876($fp)
	lw $t0, -136($fp)
	sw $t0, -3880($fp)
	li $t0, 12364
	sw $t0, -3884($fp)
	lw $t0, -3880($fp)
	lw $t1, -3884($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3888($fp)
	lw $t1, -3888($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label441
label442:
	li $t0, 31884
	sw $t0, -3892($fp)
	lw $t1, -3892($fp)
	li $t2, 0
	bne $t1, $t2, label440
	j label441
label440:
	li $t0, 1
	sw $t0, -3876($fp)
label441:
	li $t0, 0
	sw $t0, -3896($fp)
	li $t0, 4141
	sw $t0, -3900($fp)
	lw $t0, -244($fp)
	sw $t0, -3904($fp)
	lw $t0, -3900($fp)
	lw $t1, -3904($fp)
	sub $t0, $t0, $t1
	sw $t0, -3908($fp)
	lw $t0, -160($fp)
	sw $t0, -3912($fp)
	lw $t1, -3908($fp)
	lw $t2, -3912($fp)
	bne $t1, $t2, label443
	j label444
label443:
	li $t0, 1
	sw $t0, -3896($fp)
label444:
	lw $t0, -868($fp)
	sw $t0, -3916($fp)
	addi $sp, $sp, -4
	lw $t0, -3916($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3920($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -3836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3920($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3924($fp)
	addi $sp, $sp, 24
	lw $t0, -3832($fp)
	lw $t1, -3924($fp)
	add $t0, $t0, $t1
	sw $t0, -3928($fp)
	j label429
label431:
label425:
	j label414
label413:
	li $t0, 0
	sw $t0, -3932($fp)
	lw $t0, -3384($fp)
	sw $t0, -3936($fp)
	lw $t0, -244($fp)
	sw $t0, -3940($fp)
	lw $t0, -3936($fp)
	lw $t1, -3940($fp)
	add $t0, $t0, $t1
	sw $t0, -3944($fp)
	addi $t0, $fp, -116
	sw $t0, -3948($fp)
	li $t0, 1
	sw $t0, -3952($fp)
	li $t0, 4
	lw $t1, -3952($fp)
	mul $t0, $t0, $t1
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	lw $t1, -3948($fp)
	add $t0, $t0, $t1
	sw $t0, -3960($fp)
	lw $t0, -3960($fp)
	lw $t1, 0($t0)
	sw $t1, -3964($fp)
	addi $t0, $fp, -116
	sw $t0, -3968($fp)
	li $t0, 0
	sw $t0, -3972($fp)
	li $t0, 4
	lw $t1, -3972($fp)
	mul $t0, $t0, $t1
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	lw $t1, -3968($fp)
	add $t0, $t0, $t1
	sw $t0, -3980($fp)
	lw $t0, -3980($fp)
	lw $t1, 0($t0)
	sw $t1, -3984($fp)
	lw $t0, 12($fp)
	sw $t0, -3988($fp)
	li $t0, 0
	lw $t1, -3988($fp)
	sub $t0, $t0, $t1
	sw $t0, -3992($fp)
	li $t0, 0
	sw $t0, -3996($fp)
	lw $t0, -844($fp)
	sw $t0, -4000($fp)
	lw $t0, 8($fp)
	sw $t0, -4004($fp)
	lw $t1, -4000($fp)
	lw $t2, -4004($fp)
	bge $t1, $t2, label449
	j label448
label449:
	li $t0, 64957
	sw $t0, -4008($fp)
	lw $t1, -4008($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label448
label447:
	li $t0, 1
	sw $t0, -3996($fp)
label448:
	lw $t0, -292($fp)
	sw $t0, -4012($fp)
	lw $t0, -196($fp)
	sw $t0, -4016($fp)
	lw $t0, -4012($fp)
	lw $t1, -4016($fp)
	add $t0, $t0, $t1
	sw $t0, -4020($fp)
	li $t0, 33075
	sw $t0, -4024($fp)
	lw $t0, -4020($fp)
	lw $t1, -4024($fp)
	add $t0, $t0, $t1
	sw $t0, -4028($fp)
	li $t0, 0
	sw $t0, -4032($fp)
	lw $t0, -592($fp)
	sw $t0, -4036($fp)
	lw $t0, -196($fp)
	sw $t0, -4040($fp)
	lw $t0, -4036($fp)
	lw $t1, -4040($fp)
	sub $t0, $t0, $t1
	sw $t0, -4044($fp)
	lw $t1, -4044($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label451
label452:
	lw $t0, -892($fp)
	sw $t0, -4048($fp)
	lw $t1, -4048($fp)
	li $t2, 0
	bne $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -4032($fp)
label451:
	addi $sp, $sp, -4
	lw $t0, -3984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4032($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4052($fp)
	addi $sp, $sp, 24
	lw $t0, -3964($fp)
	lw $t1, -4052($fp)
	mul $t0, $t0, $t1
	sw $t0, -4056($fp)
	lw $t1, -3944($fp)
	lw $t2, -4056($fp)
	bgt $t1, $t2, label445
	j label446
label445:
	li $t0, 1
	sw $t0, -3932($fp)
label446:
label414:
	li $t0, 1715
	sw $t0, -4060($fp)
	addi $t0, $fp, -3196
	sw $t0, -4064($fp)
	li $t0, 0
	sw $t0, -4068($fp)
	lw $t0, -1216($fp)
	sw $t0, -4072($fp)
	li $t0, 42163
	sw $t0, -4076($fp)
	lw $t1, -4072($fp)
	lw $t2, -4076($fp)
	bne $t1, $t2, label453
	j label454
label453:
	li $t0, 1
	sw $t0, -4068($fp)
label454:
	li $t0, 4
	lw $t1, -4068($fp)
	mul $t0, $t0, $t1
	sw $t0, -4080($fp)
	lw $t0, -4080($fp)
	lw $t1, -4064($fp)
	add $t0, $t0, $t1
	sw $t0, -4084($fp)
	lw $t0, -4084($fp)
	lw $t1, 0($t0)
	sw $t1, -4088($fp)
	lw $t0, -4060($fp)
	lw $t1, -4088($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4092($fp)
	li $t0, 27911
	sw $t0, -4108($fp)
	addi $t0, $fp, -4104
	sw $t0, -4112($fp)
	li $t0, 0
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
	li $t0, 2633
	sw $t0, -4132($fp)
	addi $t0, $fp, -4104
	sw $t0, -4136($fp)
	li $t0, 1
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
	li $t0, 9368
	sw $t0, -4156($fp)
	addi $t0, $fp, -4104
	sw $t0, -4160($fp)
	li $t0, 2
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
	addi $t0, $fp, -60
	sw $t0, -4180($fp)
	lw $t0, -136($fp)
	sw $t0, -4184($fp)
	lw $t0, -1204($fp)
	sw $t0, -4188($fp)
	lw $t0, -4184($fp)
	lw $t1, -4188($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4192($fp)
	lw $t0, -1156($fp)
	sw $t0, -4196($fp)
	lw $t0, -4192($fp)
	lw $t1, -4196($fp)
	add $t0, $t0, $t1
	sw $t0, -4200($fp)
	addi $t0, $fp, -36
	sw $t0, -4204($fp)
	li $t0, 3
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
	addi $sp, $sp, -4
	lw $t0, -4220($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4224($fp)
	addi $sp, $sp, 8
	lw $t0, -4200($fp)
	lw $t1, -4224($fp)
	add $t0, $t0, $t1
	sw $t0, -4228($fp)
	li $t0, 4
	lw $t1, -4228($fp)
	mul $t0, $t0, $t1
	sw $t0, -4232($fp)
	lw $t0, -4232($fp)
	lw $t1, -4180($fp)
	add $t0, $t0, $t1
	sw $t0, -4236($fp)
	lw $t0, -4236($fp)
	lw $t1, 0($t0)
	sw $t1, -4240($fp)
	lw $t0, -628($fp)
	sw $t0, -4244($fp)
	li $t0, 0
	sw $t0, -4248($fp)
	lw $t0, -136($fp)
	sw $t0, -4252($fp)
	lw $t1, -4252($fp)
	li $t2, 0
	bne $t1, $t2, label456
	j label455
label455:
	li $t0, 1
	sw $t0, -4248($fp)
label456:
	lw $t0, -4244($fp)
	lw $t1, -4248($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4256($fp)
	li $t0, 0
	sw $t0, -4260($fp)
	li $t0, 0
	sw $t0, -4264($fp)
	li $t0, 8960
	sw $t0, -4268($fp)
	lw $t1, -4268($fp)
	li $t2, 0
	bne $t1, $t2, label460
	j label459
label459:
	li $t0, 1
	sw $t0, -4264($fp)
label460:
	li $t0, 0
	lw $t1, -4264($fp)
	sub $t0, $t0, $t1
	sw $t0, -4272($fp)
	li $t0, 0
	lw $t1, -4272($fp)
	sub $t0, $t0, $t1
	sw $t0, -4276($fp)
	li $t0, 0
	sw $t0, -4280($fp)
	lw $t0, -628($fp)
	sw $t0, -4284($fp)
	lw $t0, -496($fp)
	sw $t0, -4288($fp)
	lw $t0, -4284($fp)
	lw $t1, -4288($fp)
	add $t0, $t0, $t1
	sw $t0, -4292($fp)
	lw $t1, -4292($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label462
label463:
	li $t0, 54438
	sw $t0, -4296($fp)
	lw $t1, -4296($fp)
	li $t2, 0
	bne $t1, $t2, label461
	j label462
label461:
	li $t0, 1
	sw $t0, -4280($fp)
label462:
	li $t0, 38451
	sw $t0, -4300($fp)
	lw $t0, -3204($fp)
	sw $t0, -4304($fp)
	lw $t0, -4300($fp)
	lw $t1, -4304($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4308($fp)
	lw $t0, -196($fp)
	sw $t0, -4312($fp)
	lw $t0, -4308($fp)
	lw $t1, -4312($fp)
	mul $t0, $t0, $t1
	sw $t0, -4316($fp)
	lw $t0, -1144($fp)
	sw $t0, -4320($fp)
	li $t0, 0
	lw $t1, -4320($fp)
	sub $t0, $t0, $t1
	sw $t0, -4324($fp)
	li $t0, 9394
	sw $t0, -4328($fp)
	lw $t0, -4324($fp)
	lw $t1, -4328($fp)
	sub $t0, $t0, $t1
	sw $t0, -4332($fp)
	addi $sp, $sp, -4
	lw $t0, -4280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4332($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4336($fp)
	addi $sp, $sp, 16
	li $t0, 2808
	sw $t0, -4340($fp)
	lw $t0, -4336($fp)
	lw $t1, -4340($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4344($fp)
	li $t0, 0
	sw $t0, -4348($fp)
	lw $t0, -868($fp)
	sw $t0, -4352($fp)
	lw $t0, -616($fp)
	sw $t0, -4356($fp)
	lw $t0, -4352($fp)
	lw $t1, -4356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4360($fp)
	lw $t1, -4360($fp)
	li $t2, 0
	bne $t1, $t2, label466
	j label465
label466:
	lw $t0, -580($fp)
	sw $t0, -4364($fp)
	lw $t1, -4364($fp)
	li $t2, 0
	bne $t1, $t2, label464
	j label465
label464:
	li $t0, 1
	sw $t0, -4348($fp)
label465:
	addi $sp, $sp, -4
	lw $t0, -4344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4348($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4368($fp)
	addi $sp, $sp, 12
	li $t0, 15954
	sw $t0, -4372($fp)
	lw $t0, -4368($fp)
	lw $t1, -4372($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4376($fp)
	addi $t0, $fp, -4104
	sw $t0, -4380($fp)
	li $t0, 2
	sw $t0, -4384($fp)
	li $t0, 4
	lw $t1, -4384($fp)
	mul $t0, $t0, $t1
	sw $t0, -4388($fp)
	lw $t0, -4388($fp)
	lw $t1, -4380($fp)
	add $t0, $t0, $t1
	sw $t0, -4392($fp)
	lw $t0, -4392($fp)
	lw $t1, 0($t0)
	sw $t1, -4396($fp)
	lw $t0, -4376($fp)
	lw $t1, -4396($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4400($fp)
	lw $t1, -4276($fp)
	lw $t2, -4400($fp)
	beq $t1, $t2, label457
	j label458
label457:
	li $t0, 1
	sw $t0, -4260($fp)
label458:
	addi $t0, $fp, -60
	sw $t0, -4404($fp)
	lw $t0, -3384($fp)
	sw $t0, -4408($fp)
	li $t0, 4
	lw $t1, -4408($fp)
	mul $t0, $t0, $t1
	sw $t0, -4412($fp)
	lw $t0, -4412($fp)
	lw $t1, -4404($fp)
	add $t0, $t0, $t1
	sw $t0, -4416($fp)
	lw $t0, -4416($fp)
	lw $t1, 0($t0)
	sw $t1, -4420($fp)
	li $t0, 0
	sw $t0, -4424($fp)
	li $t0, 31742
	sw $t0, -4428($fp)
	lw $t1, -4428($fp)
	li $t2, 0
	bne $t1, $t2, label467
	j label470
label470:
	lw $t0, -1204($fp)
	sw $t0, -4432($fp)
	lw $t1, -4432($fp)
	li $t2, 0
	bne $t1, $t2, label467
	j label469
label469:
	lw $t0, -196($fp)
	sw $t0, -4436($fp)
	lw $t1, -4436($fp)
	li $t2, 0
	bne $t1, $t2, label467
	j label468
label467:
	li $t0, 1
	sw $t0, -4424($fp)
label468:
	li $t0, 0
	sw $t0, -4440($fp)
	lw $t0, -1156($fp)
	sw $t0, -4444($fp)
	lw $t1, -4444($fp)
	li $t2, 0
	bne $t1, $t2, label472
	j label471
label471:
	li $t0, 1
	sw $t0, -4440($fp)
label472:
	addi $sp, $sp, -4
	lw $t0, -4420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4440($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4448($fp)
	addi $sp, $sp, 16
	j label393
label392:
	li $t0, 0
	sw $t0, -4452($fp)
	li $t0, 35149
	sw $t0, -4456($fp)
	lw $t1, -4456($fp)
	li $t2, 0
	bne $t1, $t2, label477
	j label476
label476:
	li $t0, 1
	sw $t0, -4452($fp)
label477:
	li $t0, 0
	sw $t0, -4460($fp)
	li $t0, 44106
	sw $t0, -4464($fp)
	li $t0, 1497
	sw $t0, -4468($fp)
	lw $t1, -4464($fp)
	lw $t2, -4468($fp)
	ble $t1, $t2, label478
	j label480
label480:
	lw $t0, -868($fp)
	sw $t0, -4472($fp)
	lw $t1, -4472($fp)
	li $t2, 0
	bne $t1, $t2, label478
	j label479
label478:
	li $t0, 1
	sw $t0, -4460($fp)
label479:
	lw $t0, -808($fp)
	sw $t0, -4476($fp)
	lw $t0, -868($fp)
	sw $t0, -4480($fp)
	lw $t0, -4476($fp)
	lw $t1, -4480($fp)
	mul $t0, $t0, $t1
	sw $t0, -4484($fp)
	li $t0, 0
	lw $t1, -4484($fp)
	sub $t0, $t0, $t1
	sw $t0, -4488($fp)
	li $t0, 56041
	sw $t0, -4492($fp)
	addi $sp, $sp, -4
	lw $t0, -4460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4492($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -4496($fp)
	addi $sp, $sp, 16
	lw $t1, -4452($fp)
	lw $t2, -4496($fp)
	beq $t1, $t2, label473
	j label474
label473:
label481:
	li $t0, 36623
	sw $t0, -4500($fp)
	lw $t1, -4500($fp)
	li $t2, 0
	bne $t1, $t2, label484
	j label483
label484:
	lw $t0, -616($fp)
	sw $t0, -4504($fp)
	li $t0, 0
	sw $t0, -4508($fp)
	li $t0, 63671
	sw $t0, -4512($fp)
	li $t0, 34618
	sw $t0, -4516($fp)
	lw $t1, -4512($fp)
	lw $t2, -4516($fp)
	beq $t1, $t2, label485
	j label487
label487:
	li $t0, 19141
	sw $t0, -4520($fp)
	lw $t1, -4520($fp)
	li $t2, 0
	bne $t1, $t2, label485
	j label486
label485:
	li $t0, 1
	sw $t0, -4508($fp)
label486:
	li $t0, 0
	sw $t0, -4524($fp)
	li $t0, 32301
	sw $t0, -4528($fp)
	li $t0, 1543
	sw $t0, -4532($fp)
	lw $t1, -4528($fp)
	lw $t2, -4532($fp)
	bgt $t1, $t2, label490
	j label489
label490:
	li $t0, 19720
	sw $t0, -4536($fp)
	lw $t1, -4536($fp)
	li $t2, 0
	bne $t1, $t2, label488
	j label489
label488:
	li $t0, 1
	sw $t0, -4524($fp)
label489:
	lw $t0, -520($fp)
	sw $t0, -4540($fp)
	li $t0, 20328
	sw $t0, -4544($fp)
	li $t0, 45689
	sw $t0, -4548($fp)
	lw $t0, -4544($fp)
	lw $t1, -4548($fp)
	mul $t0, $t0, $t1
	sw $t0, -4552($fp)
	li $t0, 0
	lw $t1, -4552($fp)
	sub $t0, $t0, $t1
	sw $t0, -4556($fp)
	addi $sp, $sp, -4
	lw $t0, -4504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4556($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4560($fp)
	addi $sp, $sp, 24
	lw $t1, -4560($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label483
label482:
	lw $t0, -892($fp)
	sw $t0, -4564($fp)
	li $t0, 0
	lw $t1, -4564($fp)
	sub $t0, $t0, $t1
	sw $t0, -4568($fp)
	lw $t1, -4568($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label492
label491:
	lw $t0, -1156($fp)
	sw $t0, -4572($fp)
	li $t0, 56381
	sw $t0, -4576($fp)
	li $t0, 0
	lw $t1, -4576($fp)
	sub $t0, $t0, $t1
	sw $t0, -4580($fp)
	lw $t0, -4572($fp)
	lw $t1, -4580($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4584($fp)
	lw $t1, -4584($fp)
	li $t2, 0
	bne $t1, $t2, label494
	j label495
label494:
label497:
	li $t0, 62114
	sw $t0, -4588($fp)
	addi $t0, $fp, -8
	sw $t0, -4592($fp)
	li $t0, 20857
	sw $t0, -4596($fp)
	lw $t0, -172($fp)
	sw $t0, -4600($fp)
	lw $t0, -4596($fp)
	lw $t1, -4600($fp)
	mul $t0, $t0, $t1
	sw $t0, -4604($fp)
	li $t0, 4
	lw $t1, -4604($fp)
	mul $t0, $t0, $t1
	sw $t0, -4608($fp)
	lw $t0, -4608($fp)
	lw $t1, -4592($fp)
	add $t0, $t0, $t1
	sw $t0, -4612($fp)
	lw $t0, -4612($fp)
	lw $t1, 0($t0)
	sw $t1, -4616($fp)
	lw $t0, -4588($fp)
	lw $t1, -4616($fp)
	mul $t0, $t0, $t1
	sw $t0, -4620($fp)
	lw $t1, -4620($fp)
	li $t2, 0
	bne $t1, $t2, label498
	j label499
label498:
	li $t0, 0
	sw $t0, -4624($fp)
	addi $t0, $fp, -116
	sw $t0, -4628($fp)
	li $t0, 0
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
	li $t0, 19845
	sw $t0, -4648($fp)
	lw $t0, -4644($fp)
	lw $t1, -4648($fp)
	mul $t0, $t0, $t1
	sw $t0, -4652($fp)
	li $t0, 33008
	sw $t0, -4656($fp)
	li $t0, 24489
	sw $t0, -4660($fp)
	lw $t0, -4656($fp)
	lw $t1, -4660($fp)
	sub $t0, $t0, $t1
	sw $t0, -4664($fp)
	li $t0, 23490
	sw $t0, -4668($fp)
	lw $t0, -4664($fp)
	lw $t1, -4668($fp)
	add $t0, $t0, $t1
	sw $t0, -4672($fp)
	addi $sp, $sp, -4
	lw $t0, -4652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4672($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4676($fp)
	addi $sp, $sp, 12
	li $t0, 51337
	sw $t0, -4680($fp)
	lw $t1, -4676($fp)
	lw $t2, -4680($fp)
	bge $t1, $t2, label500
	j label501
label500:
	li $t0, 1
	sw $t0, -4624($fp)
label501:
	lw $ra, -4($fp)
	lw $v0, -4624($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label497
label499:
	j label496
label495:
	li $t0, 0
	sw $t0, -4684($fp)
	lw $t0, -1144($fp)
	sw $t0, -4688($fp)
	li $t0, 34306
	sw $t0, -4692($fp)
	li $t0, 58296
	sw $t0, -4696($fp)
	lw $t0, -4692($fp)
	lw $t1, -4696($fp)
	add $t0, $t0, $t1
	sw $t0, -4700($fp)
	lw $t1, -4688($fp)
	lw $t2, -4700($fp)
	ble $t1, $t2, label502
	j label503
label502:
	li $t0, 1
	sw $t0, -4684($fp)
label503:
	lw $t0, -4684($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -4704($fp)
label496:
	j label493
label492:
	li $t0, 40239
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
	li $t0, 37114
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
	li $t0, 0
	sw $t0, -4764($fp)
	li $t0, 8715
	sw $t0, -4768($fp)
	lw $t1, -4768($fp)
	li $t2, 0
	bne $t1, $t2, label505
	j label504
label504:
	li $t0, 1
	sw $t0, -4764($fp)
label505:
	addi $t0, $fp, -4712
	sw $t0, -4772($fp)
	lw $t0, -868($fp)
	sw $t0, -4776($fp)
	li $t0, 4
	lw $t1, -4776($fp)
	mul $t0, $t0, $t1
	sw $t0, -4780($fp)
	lw $t0, -4780($fp)
	lw $t1, -4772($fp)
	add $t0, $t0, $t1
	sw $t0, -4784($fp)
	lw $t0, -4784($fp)
	lw $t1, 0($t0)
	sw $t1, -4788($fp)
	addi $sp, $sp, -4
	lw $t0, -4788($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4792($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -4796($fp)
	li $t0, 0
	sw $t0, -4800($fp)
	li $t0, 38239
	sw $t0, -4804($fp)
	li $t0, 23478
	sw $t0, -4808($fp)
	lw $t0, -4804($fp)
	lw $t1, -4808($fp)
	sub $t0, $t0, $t1
	sw $t0, -4812($fp)
	lw $t1, -4812($fp)
	li $t2, 0
	bne $t1, $t2, label508
	j label507
label508:
	lw $t0, -892($fp)
	sw $t0, -4816($fp)
	lw $t1, -4816($fp)
	li $t2, 0
	bne $t1, $t2, label506
	j label507
label506:
	li $t0, 1
	sw $t0, -4800($fp)
label507:
	li $t0, 4
	lw $t1, -4800($fp)
	mul $t0, $t0, $t1
	sw $t0, -4820($fp)
	lw $t0, -4820($fp)
	lw $t1, -4796($fp)
	add $t0, $t0, $t1
	sw $t0, -4824($fp)
	lw $t0, -4824($fp)
	lw $t1, 0($t0)
	sw $t1, -4828($fp)
	li $t0, 0
	lw $t1, -4828($fp)
	sub $t0, $t0, $t1
	sw $t0, -4832($fp)
	addi $t0, $fp, -60
	sw $t0, -4836($fp)
	li $t0, 40457
	sw $t0, -4840($fp)
	lw $t0, -1192($fp)
	sw $t0, -4844($fp)
	lw $t0, -4840($fp)
	lw $t1, -4844($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4848($fp)
	li $t0, 7853
	sw $t0, -4852($fp)
	lw $t0, -4848($fp)
	lw $t1, -4852($fp)
	mul $t0, $t0, $t1
	sw $t0, -4856($fp)
	li $t0, 4
	lw $t1, -4856($fp)
	mul $t0, $t0, $t1
	sw $t0, -4860($fp)
	lw $t0, -4860($fp)
	lw $t1, -4836($fp)
	add $t0, $t0, $t1
	sw $t0, -4864($fp)
	lw $t0, -4864($fp)
	lw $t1, 0($t0)
	sw $t1, -4868($fp)
	li $t0, 13983
	sw $t0, -4872($fp)
	lw $t0, -4868($fp)
	lw $t1, -4872($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4876($fp)
	lw $t0, -592($fp)
	sw $t0, -4880($fp)
	lw $t0, -868($fp)
	sw $t0, -4884($fp)
	lw $t0, -4880($fp)
	lw $t1, -4884($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4888($fp)
	li $t0, 9350
	sw $t0, -4892($fp)
	lw $t0, -4888($fp)
	lw $t1, -4892($fp)
	mul $t0, $t0, $t1
	sw $t0, -4896($fp)
	li $t0, 0
	sw $t0, -4900($fp)
	lw $t0, -160($fp)
	sw $t0, -4904($fp)
	li $t0, 19028
	sw $t0, -4908($fp)
	lw $t1, -4904($fp)
	lw $t2, -4908($fp)
	ble $t1, $t2, label509
	j label510
label509:
	li $t0, 1
	sw $t0, -4900($fp)
label510:
	addi $sp, $sp, -4
	lw $t0, -4896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4900($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4912($fp)
	addi $sp, $sp, 12
label493:
	j label481
label483:
	j label475
label474:
	lw $t0, -520($fp)
	sw $t0, -4916($fp)
	li $t0, 39357
	sw $t0, -4920($fp)
	lw $t0, -4916($fp)
	lw $t1, -4920($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4924($fp)
	lw $t0, -4924($fp)
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -4928($fp)
	lw $ra, -4($fp)
	lw $v0, -4928($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label475:
label393:
label365:
	li $t0, 0
	sw $t0, -4932($fp)
	addi $t0, $fp, -116
	sw $t0, -4936($fp)
	li $t0, 0
	sw $t0, -4940($fp)
	li $t0, 55040
	sw $t0, -4944($fp)
	lw $t0, -232($fp)
	sw $t0, -4948($fp)
	lw $t1, -4944($fp)
	lw $t2, -4948($fp)
	bgt $t1, $t2, label513
	j label514
label513:
	li $t0, 1
	sw $t0, -4940($fp)
label514:
	li $t0, 4
	lw $t1, -4940($fp)
	mul $t0, $t0, $t1
	sw $t0, -4952($fp)
	lw $t0, -4952($fp)
	lw $t1, -4936($fp)
	add $t0, $t0, $t1
	sw $t0, -4956($fp)
	lw $t0, -4956($fp)
	lw $t1, 0($t0)
	sw $t1, -4960($fp)
	li $t0, 17372
	sw $t0, -4964($fp)
	lw $t0, -184($fp)
	sw $t0, -4968($fp)
	lw $t0, -4964($fp)
	lw $t1, -4968($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4972($fp)
	lw $t0, 12($fp)
	sw $t0, -4976($fp)
	lw $t0, -4972($fp)
	lw $t1, -4976($fp)
	add $t0, $t0, $t1
	sw $t0, -4980($fp)
	addi $t0, $fp, -36
	sw $t0, -4984($fp)
	lw $t0, -496($fp)
	sw $t0, -4988($fp)
	li $t0, 4
	lw $t1, -4988($fp)
	mul $t0, $t0, $t1
	sw $t0, -4992($fp)
	lw $t0, -4992($fp)
	lw $t1, -4984($fp)
	add $t0, $t0, $t1
	sw $t0, -4996($fp)
	lw $t0, -4996($fp)
	lw $t1, 0($t0)
	sw $t1, -5000($fp)
	lw $t0, -4980($fp)
	lw $t1, -5000($fp)
	sub $t0, $t0, $t1
	sw $t0, -5004($fp)
	lw $t1, -4960($fp)
	lw $t2, -5004($fp)
	blt $t1, $t2, label511
	j label512
label511:
	li $t0, 1
	sw $t0, -4932($fp)
label512:
	lw $t0, -124($fp)
	sw $t0, -5008($fp)
	lw $t0, -5008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -5012($fp)
	lw $t0, -5012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -5016($fp)
	lw $t0, -5016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -5020($fp)
	lw $t0, -5020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -172($fp)
	sw $t0, -5024($fp)
	lw $t0, -5024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -184($fp)
	sw $t0, -5028($fp)
	lw $t0, -5028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -196($fp)
	sw $t0, -5032($fp)
	lw $t0, -5032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
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
	lw $t0, -232($fp)
	sw $t0, -5056($fp)
	lw $t0, -5056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -244($fp)
	sw $t0, -5060($fp)
	lw $t0, -5060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -256($fp)
	sw $t0, -5064($fp)
	lw $t0, -5064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	sw $t0, -5068($fp)
	lw $t0, -5068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -5072($fp)
	lw $t0, -5072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -292($fp)
	sw $t0, -5076($fp)
	lw $t0, -5076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -5080($fp)
	lw $t0, -5080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -5084($fp)
	lw $t0, -5084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5088($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -5108($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -5128($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -5148($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -5168($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -5188($fp)
	li $t0, 5
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
	addi $t0, $fp, -36
	sw $t0, -5208($fp)
	li $t0, 6
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
	lw $t0, -496($fp)
	sw $t0, -5228($fp)
	lw $t0, -5228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	sw $t0, -5232($fp)
	lw $t0, -5232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -5236($fp)
	lw $t0, -5236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -532($fp)
	sw $t0, -5240($fp)
	lw $t0, -5240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -544($fp)
	sw $t0, -5244($fp)
	lw $t0, -5244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -556($fp)
	sw $t0, -5248($fp)
	lw $t0, -5248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -568($fp)
	sw $t0, -5252($fp)
	lw $t0, -5252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -580($fp)
	sw $t0, -5256($fp)
	lw $t0, -5256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -592($fp)
	sw $t0, -5260($fp)
	lw $t0, -5260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -604($fp)
	sw $t0, -5264($fp)
	lw $t0, -5264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -616($fp)
	sw $t0, -5268($fp)
	lw $t0, -5268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -628($fp)
	sw $t0, -5272($fp)
	lw $t0, -5272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -640($fp)
	sw $t0, -5276($fp)
	lw $t0, -5276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -5280($fp)
	li $t0, 0
	sw $t0, -5284($fp)
	li $t0, 4
	lw $t1, -5284($fp)
	mul $t0, $t0, $t1
	sw $t0, -5288($fp)
	lw $t0, -5288($fp)
	lw $t1, -5280($fp)
	add $t0, $t0, $t1
	sw $t0, -5292($fp)
	lw $t0, -5292($fp)
	lw $t1, 0($t0)
	sw $t1, -5296($fp)
	lw $t0, -5296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -5300($fp)
	li $t0, 1
	sw $t0, -5304($fp)
	li $t0, 4
	lw $t1, -5304($fp)
	mul $t0, $t0, $t1
	sw $t0, -5308($fp)
	lw $t0, -5308($fp)
	lw $t1, -5300($fp)
	add $t0, $t0, $t1
	sw $t0, -5312($fp)
	lw $t0, -5312($fp)
	lw $t1, 0($t0)
	sw $t1, -5316($fp)
	lw $t0, -5316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -5320($fp)
	li $t0, 2
	sw $t0, -5324($fp)
	li $t0, 4
	lw $t1, -5324($fp)
	mul $t0, $t0, $t1
	sw $t0, -5328($fp)
	lw $t0, -5328($fp)
	lw $t1, -5320($fp)
	add $t0, $t0, $t1
	sw $t0, -5332($fp)
	lw $t0, -5332($fp)
	lw $t1, 0($t0)
	sw $t1, -5336($fp)
	lw $t0, -5336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -5340($fp)
	li $t0, 3
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
	addi $t0, $fp, -60
	sw $t0, -5360($fp)
	li $t0, 4
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
	addi $t0, $fp, -60
	sw $t0, -5380($fp)
	li $t0, 5
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
	lw $t0, -796($fp)
	sw $t0, -5400($fp)
	lw $t0, -5400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -808($fp)
	sw $t0, -5404($fp)
	lw $t0, -5404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -820($fp)
	sw $t0, -5408($fp)
	lw $t0, -5408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -832($fp)
	sw $t0, -5412($fp)
	lw $t0, -5412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -844($fp)
	sw $t0, -5416($fp)
	lw $t0, -5416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -856($fp)
	sw $t0, -5420($fp)
	lw $t0, -5420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -868($fp)
	sw $t0, -5424($fp)
	lw $t0, -5424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -880($fp)
	sw $t0, -5428($fp)
	lw $t0, -5428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -892($fp)
	sw $t0, -5432($fp)
	lw $t0, -5432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5436($fp)
	li $t0, 0
	sw $t0, -5440($fp)
	li $t0, 4
	lw $t1, -5440($fp)
	mul $t0, $t0, $t1
	sw $t0, -5444($fp)
	lw $t0, -5444($fp)
	lw $t1, -5436($fp)
	add $t0, $t0, $t1
	sw $t0, -5448($fp)
	lw $t0, -5448($fp)
	lw $t1, 0($t0)
	sw $t1, -5452($fp)
	lw $t0, -5452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5456($fp)
	li $t0, 1
	sw $t0, -5460($fp)
	li $t0, 4
	lw $t1, -5460($fp)
	mul $t0, $t0, $t1
	sw $t0, -5464($fp)
	lw $t0, -5464($fp)
	lw $t1, -5456($fp)
	add $t0, $t0, $t1
	sw $t0, -5468($fp)
	lw $t0, -5468($fp)
	lw $t1, 0($t0)
	sw $t1, -5472($fp)
	lw $t0, -5472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5476($fp)
	li $t0, 2
	sw $t0, -5480($fp)
	li $t0, 4
	lw $t1, -5480($fp)
	mul $t0, $t0, $t1
	sw $t0, -5484($fp)
	lw $t0, -5484($fp)
	lw $t1, -5476($fp)
	add $t0, $t0, $t1
	sw $t0, -5488($fp)
	lw $t0, -5488($fp)
	lw $t1, 0($t0)
	sw $t1, -5492($fp)
	lw $t0, -5492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5496($fp)
	li $t0, 3
	sw $t0, -5500($fp)
	li $t0, 4
	lw $t1, -5500($fp)
	mul $t0, $t0, $t1
	sw $t0, -5504($fp)
	lw $t0, -5504($fp)
	lw $t1, -5496($fp)
	add $t0, $t0, $t1
	sw $t0, -5508($fp)
	lw $t0, -5508($fp)
	lw $t1, 0($t0)
	sw $t1, -5512($fp)
	lw $t0, -5512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5516($fp)
	li $t0, 4
	sw $t0, -5520($fp)
	li $t0, 4
	lw $t1, -5520($fp)
	mul $t0, $t0, $t1
	sw $t0, -5524($fp)
	lw $t0, -5524($fp)
	lw $t1, -5516($fp)
	add $t0, $t0, $t1
	sw $t0, -5528($fp)
	lw $t0, -5528($fp)
	lw $t1, 0($t0)
	sw $t1, -5532($fp)
	lw $t0, -5532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5536($fp)
	li $t0, 5
	sw $t0, -5540($fp)
	li $t0, 4
	lw $t1, -5540($fp)
	mul $t0, $t0, $t1
	sw $t0, -5544($fp)
	lw $t0, -5544($fp)
	lw $t1, -5536($fp)
	add $t0, $t0, $t1
	sw $t0, -5548($fp)
	lw $t0, -5548($fp)
	lw $t1, 0($t0)
	sw $t1, -5552($fp)
	lw $t0, -5552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5556($fp)
	li $t0, 6
	sw $t0, -5560($fp)
	li $t0, 4
	lw $t1, -5560($fp)
	mul $t0, $t0, $t1
	sw $t0, -5564($fp)
	lw $t0, -5564($fp)
	lw $t1, -5556($fp)
	add $t0, $t0, $t1
	sw $t0, -5568($fp)
	lw $t0, -5568($fp)
	lw $t1, 0($t0)
	sw $t1, -5572($fp)
	lw $t0, -5572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5576($fp)
	li $t0, 7
	sw $t0, -5580($fp)
	li $t0, 4
	lw $t1, -5580($fp)
	mul $t0, $t0, $t1
	sw $t0, -5584($fp)
	lw $t0, -5584($fp)
	lw $t1, -5576($fp)
	add $t0, $t0, $t1
	sw $t0, -5588($fp)
	lw $t0, -5588($fp)
	lw $t1, 0($t0)
	sw $t1, -5592($fp)
	lw $t0, -5592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5596($fp)
	li $t0, 8
	sw $t0, -5600($fp)
	li $t0, 4
	lw $t1, -5600($fp)
	mul $t0, $t0, $t1
	sw $t0, -5604($fp)
	lw $t0, -5604($fp)
	lw $t1, -5596($fp)
	add $t0, $t0, $t1
	sw $t0, -5608($fp)
	lw $t0, -5608($fp)
	lw $t1, 0($t0)
	sw $t1, -5612($fp)
	lw $t0, -5612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5616($fp)
	li $t0, 9
	sw $t0, -5620($fp)
	li $t0, 4
	lw $t1, -5620($fp)
	mul $t0, $t0, $t1
	sw $t0, -5624($fp)
	lw $t0, -5624($fp)
	lw $t1, -5616($fp)
	add $t0, $t0, $t1
	sw $t0, -5628($fp)
	lw $t0, -5628($fp)
	lw $t1, 0($t0)
	sw $t1, -5632($fp)
	lw $t0, -5632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1144($fp)
	sw $t0, -5636($fp)
	lw $t0, -5636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1156($fp)
	sw $t0, -5640($fp)
	lw $t0, -5640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1168($fp)
	sw $t0, -5644($fp)
	lw $t0, -5644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1180($fp)
	sw $t0, -5648($fp)
	lw $t0, -5648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1192($fp)
	sw $t0, -5652($fp)
	lw $t0, -5652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1204($fp)
	sw $t0, -5656($fp)
	lw $t0, -5656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1216($fp)
	sw $t0, -5660($fp)
	lw $t0, -5660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -5664($fp)
	li $t0, 0
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
	lw $t0, -5680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -5684($fp)
	li $t0, 1
	sw $t0, -5688($fp)
	li $t0, 4
	lw $t1, -5688($fp)
	mul $t0, $t0, $t1
	sw $t0, -5692($fp)
	lw $t0, -5692($fp)
	lw $t1, -5684($fp)
	add $t0, $t0, $t1
	sw $t0, -5696($fp)
	lw $t0, -5696($fp)
	lw $t1, 0($t0)
	sw $t1, -5700($fp)
	lw $t0, -5700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -5704($fp)
	li $t0, 2
	sw $t0, -5708($fp)
	li $t0, 4
	lw $t1, -5708($fp)
	mul $t0, $t0, $t1
	sw $t0, -5712($fp)
	lw $t0, -5712($fp)
	lw $t1, -5704($fp)
	add $t0, $t0, $t1
	sw $t0, -5716($fp)
	lw $t0, -5716($fp)
	lw $t1, 0($t0)
	sw $t1, -5720($fp)
	lw $t0, -5720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -5724($fp)
	li $t0, 3
	sw $t0, -5728($fp)
	li $t0, 4
	lw $t1, -5728($fp)
	mul $t0, $t0, $t1
	sw $t0, -5732($fp)
	lw $t0, -5732($fp)
	lw $t1, -5724($fp)
	add $t0, $t0, $t1
	sw $t0, -5736($fp)
	lw $t0, -5736($fp)
	lw $t1, 0($t0)
	sw $t1, -5740($fp)
	lw $t0, -5740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -5744($fp)
	lw $t0, -196($fp)
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
	lw $ra, -4($fp)
	lw $v0, -5760($fp)
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
	li $t0, 40899
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	lw $t0, -12($fp)
	sw $t0, -24($fp)
	li $t0, 0
	lw $t1, -24($fp)
	sub $t0, $t0, $t1
	sw $t0, -28($fp)
	li $t0, 9224
	sw $t0, -32($fp)
	lw $t1, -28($fp)
	lw $t2, -32($fp)
	bgt $t1, $t2, label515
	j label516
label515:
	li $t0, 1
	sw $t0, -20($fp)
label516:
	addi $sp, $sp, -4
	lw $t0, -20($fp)
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
	li $t0, 15507
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
