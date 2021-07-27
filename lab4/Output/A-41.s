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
	addi $sp, $sp, -264
	li $t0, 3506
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	li $t0, 17572
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
	li $t0, 27463
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
	li $t0, 64753
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	lw $t0, -20($fp)
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
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
	addi $t0, $fp, -12
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
	lw $t0, -80($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -136($fp)
	li $t0, 0
	sw $t0, -140($fp)
	li $t0, 59154
	sw $t0, -144($fp)
	lw $t1, -144($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label121
label121:
	li $t0, 1
	sw $t0, -140($fp)
label122:
	lw $t0, -136($fp)
	lw $t1, -140($fp)
	add $t0, $t0, $t1
	sw $t0, -148($fp)
	lw $ra, -4($fp)
	lw $v0, -148($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -20($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -156($fp)
	li $t0, 0
	sw $t0, -160($fp)
	li $t0, 4
	lw $t1, -160($fp)
	mul $t0, $t0, $t1
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	lw $t1, -156($fp)
	add $t0, $t0, $t1
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	lw $t1, 0($t0)
	sw $t1, -172($fp)
	lw $t0, -172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -176($fp)
	li $t0, 1
	sw $t0, -180($fp)
	li $t0, 4
	lw $t1, -180($fp)
	mul $t0, $t0, $t1
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	lw $t1, -176($fp)
	add $t0, $t0, $t1
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	lw $t1, 0($t0)
	sw $t1, -192($fp)
	lw $t0, -192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -200($fp)
	jal f6
	sw $v0, -204($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -12
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
	lw $t0, -204($fp)
	lw $t1, -224($fp)
	sub $t0, $t0, $t1
	sw $t0, -228($fp)
	lw $t0, -80($fp)
	sw $t0, -232($fp)
	lw $t0, -20($fp)
	sw $t0, -236($fp)
	lw $t0, -232($fp)
	lw $t1, -236($fp)
	mul $t0, $t0, $t1
	sw $t0, -240($fp)
	lw $t1, -228($fp)
	lw $t2, -240($fp)
	ble $t1, $t2, label123
	j label125
label125:
	jal f6
	sw $v0, -244($fp)
	addi $sp, $sp, 4
	lw $t0, -80($fp)
	sw $t0, -248($fp)
	lw $t0, -244($fp)
	lw $t1, -248($fp)
	sub $t0, $t0, $t1
	sw $t0, -252($fp)
	li $t0, 25110
	sw $t0, -256($fp)
	lw $t0, -20($fp)
	sw $t0, -260($fp)
	lw $t0, -256($fp)
	lw $t1, -260($fp)
	mul $t0, $t0, $t1
	sw $t0, -264($fp)
	lw $t0, -252($fp)
	lw $t1, -264($fp)
	sub $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $t1, -268($fp)
	li $t2, 0
	bne $t1, $t2, label123
	j label124
label123:
	li $t0, 1
	sw $t0, -200($fp)
label124:
	lw $ra, -4($fp)
	lw $v0, -200($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4436
	li $t0, 12736
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
	li $t0, 5267
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
	li $t0, 45511
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
	li $t0, 55100
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
	li $t0, 13994
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
	li $t0, 12684
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
	li $t0, 34592
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
	li $t0, 63749
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
	li $t0, 9886
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
	li $t0, 39495
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
	li $t0, 51448
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
	li $t0, 5317
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
	li $t0, 9370
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
	li $t0, 17141
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
	li $t0, 40651
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	li $t0, 32419
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	li $t0, 27364
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	li $t0, 46477
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	li $t0, 14123
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	li $t0, 12162
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	li $t0, 16093
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	li $t0, 39978
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	li $t0, 34694
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	li $t0, 19599
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	li $t0, 57550
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	li $t0, 62158
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	li $t0, 18816
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	li $t0, 51168
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 56849
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	addi $t0, $fp, -24
	sw $t0, -580($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -600($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -620($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -640($fp)
	li $t0, 3
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
	lw $t0, -656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -660($fp)
	li $t0, 4
	sw $t0, -664($fp)
	li $t0, 4
	lw $t1, -664($fp)
	mul $t0, $t0, $t1
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	lw $t1, -660($fp)
	add $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	lw $t1, 0($t0)
	sw $t1, -676($fp)
	lw $t0, -676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -680($fp)
	li $t0, 0
	sw $t0, -684($fp)
	li $t0, 4
	lw $t1, -684($fp)
	mul $t0, $t0, $t1
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	lw $t1, -680($fp)
	add $t0, $t0, $t1
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	lw $t1, 0($t0)
	sw $t1, -696($fp)
	lw $t0, -696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -700($fp)
	li $t0, 1
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
	addi $t0, $fp, -60
	sw $t0, -720($fp)
	li $t0, 2
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
	addi $t0, $fp, -60
	sw $t0, -740($fp)
	li $t0, 3
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
	addi $t0, $fp, -60
	sw $t0, -760($fp)
	li $t0, 4
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
	lw $t0, -776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -780($fp)
	li $t0, 5
	sw $t0, -784($fp)
	li $t0, 4
	lw $t1, -784($fp)
	mul $t0, $t0, $t1
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	lw $t1, -780($fp)
	add $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	lw $t1, 0($t0)
	sw $t1, -796($fp)
	lw $t0, -796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -800($fp)
	li $t0, 6
	sw $t0, -804($fp)
	li $t0, 4
	lw $t1, -804($fp)
	mul $t0, $t0, $t1
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	lw $t1, -800($fp)
	add $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	lw $t1, 0($t0)
	sw $t1, -816($fp)
	lw $t0, -816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -820($fp)
	li $t0, 7
	sw $t0, -824($fp)
	li $t0, 4
	lw $t1, -824($fp)
	mul $t0, $t0, $t1
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	lw $t1, -820($fp)
	add $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	lw $t1, 0($t0)
	sw $t1, -836($fp)
	lw $t0, -836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -840($fp)
	li $t0, 8
	sw $t0, -844($fp)
	li $t0, 4
	lw $t1, -844($fp)
	mul $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	lw $t1, -840($fp)
	add $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	lw $t1, 0($t0)
	sw $t1, -856($fp)
	lw $t0, -856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -404($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -416($fp)
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -440($fp)
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -464($fp)
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -488($fp)
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	jal f6
	sw $v0, -920($fp)
	addi $sp, $sp, 4
	lw $ra, -4($fp)
	lw $v0, -920($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -924($fp)
	lw $t0, -524($fp)
	sw $t0, -928($fp)
	lw $t1, -928($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label130
label131:
	lw $t0, -476($fp)
	sw $t0, -932($fp)
	lw $t1, -932($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label130
label129:
	li $t0, 1
	sw $t0, -924($fp)
label130:
	lw $t0, -924($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -940($fp)
	lw $t1, -940($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label127
label126:
	li $t0, 0
	sw $t0, -944($fp)
	lw $t0, -500($fp)
	sw $t0, -948($fp)
	li $t0, 49767
	sw $t0, -952($fp)
	li $t0, 0
	lw $t1, -952($fp)
	sub $t0, $t0, $t1
	sw $t0, -956($fp)
	jal f6
	sw $v0, -960($fp)
	addi $sp, $sp, 4
	lw $t0, -956($fp)
	lw $t1, -960($fp)
	sub $t0, $t0, $t1
	sw $t0, -964($fp)
	lw $t1, -948($fp)
	lw $t2, -964($fp)
	beq $t1, $t2, label132
	j label133
label132:
	li $t0, 1
	sw $t0, -944($fp)
label133:
	j label128
label127:
	li $t0, 0
	sw $t0, -968($fp)
	lw $t0, -560($fp)
	sw $t0, -972($fp)
	li $t0, 0
	lw $t1, -972($fp)
	sub $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $t1, -976($fp)
	li $t2, 0
	bne $t1, $t2, label138
	j label137
label137:
	li $t0, 1
	sw $t0, -968($fp)
label138:
	lw $t0, -464($fp)
	sw $t0, -980($fp)
	lw $t0, -968($fp)
	lw $t1, -980($fp)
	sub $t0, $t0, $t1
	sw $t0, -984($fp)
	lw $t1, -984($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label135
label134:
	addi $t0, $fp, -60
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
	lw $t0, -440($fp)
	sw $t0, -1008($fp)
	lw $t0, -464($fp)
	sw $t0, -1012($fp)
	lw $t0, -1008($fp)
	lw $t1, -1012($fp)
	sub $t0, $t0, $t1
	sw $t0, -1016($fp)
	li $t0, 55034
	sw $t0, -1020($fp)
	lw $t0, -1016($fp)
	lw $t1, -1020($fp)
	add $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t0, -464($fp)
	sw $t0, -1028($fp)
	li $t0, 0
	lw $t1, -1028($fp)
	sub $t0, $t0, $t1
	sw $t0, -1032($fp)
	lw $t0, -1024($fp)
	lw $t1, -1032($fp)
	add $t0, $t0, $t1
	sw $t0, -1036($fp)
	lw $t1, -1004($fp)
	lw $t2, -1036($fp)
	bne $t1, $t2, label139
	j label140
label139:
label142:
	li $t0, 56253
	sw $t0, -1040($fp)
	lw $t1, -1040($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label145
label145:
	li $t0, 59149
	sw $t0, -1044($fp)
	lw $t1, -1044($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label143
label143:
label146:
	jal f6
	sw $v0, -1048($fp)
	addi $sp, $sp, 4
	lw $t1, -1048($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label148
label147:
	li $t0, 0
	sw $t0, -1052($fp)
	jal f6
	sw $v0, -1056($fp)
	addi $sp, $sp, 4
	li $t0, 3492
	sw $t0, -1060($fp)
	lw $t0, -1056($fp)
	lw $t1, -1060($fp)
	add $t0, $t0, $t1
	sw $t0, -1064($fp)
	li $t0, 3401
	sw $t0, -1068($fp)
	li $t0, 28206
	sw $t0, -1072($fp)
	lw $t0, -1068($fp)
	lw $t1, -1072($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1076($fp)
	lw $t0, -428($fp)
	sw $t0, -1080($fp)
	lw $t0, -1076($fp)
	lw $t1, -1080($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1084($fp)
	lw $t1, -1064($fp)
	lw $t2, -1084($fp)
	bne $t1, $t2, label151
	j label150
label151:
	jal f6
	sw $v0, -1088($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1088($fp)
	sub $t0, $t0, $t1
	sw $t0, -1092($fp)
	li $t0, 0
	sw $t0, -1096($fp)
	li $t0, 1705
	sw $t0, -1100($fp)
	lw $t1, -1100($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label152
label152:
	li $t0, 1
	sw $t0, -1096($fp)
label153:
	lw $t0, -1092($fp)
	lw $t1, -1096($fp)
	add $t0, $t0, $t1
	sw $t0, -1104($fp)
	lw $t1, -1104($fp)
	li $t2, 0
	bne $t1, $t2, label149
	j label150
label149:
	li $t0, 1
	sw $t0, -1052($fp)
label150:
	j label146
label148:
	j label142
label144:
	j label141
label140:
label154:
	li $t0, 13287
	sw $t0, -1108($fp)
	lw $t1, -1108($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label156
label157:
	li $t0, 2165
	sw $t0, -1112($fp)
	li $t0, 53153
	sw $t0, -1116($fp)
	lw $t0, -1112($fp)
	lw $t1, -1116($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1120($fp)
	lw $t0, -500($fp)
	sw $t0, -1124($fp)
	lw $t0, -1120($fp)
	lw $t1, -1124($fp)
	add $t0, $t0, $t1
	sw $t0, -1128($fp)
	jal f6
	sw $v0, -1132($fp)
	addi $sp, $sp, 4
	lw $t0, -1128($fp)
	lw $t1, -1132($fp)
	sub $t0, $t0, $t1
	sw $t0, -1136($fp)
	lw $t1, -1136($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label156
label155:
	lw $t0, -464($fp)
	sw $t0, -1140($fp)
	j label154
label156:
label141:
	j label136
label135:
	li $t0, 0
	sw $t0, -1144($fp)
	addi $t0, $fp, -60
	sw $t0, -1148($fp)
	lw $t0, -512($fp)
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
	lw $t1, -1164($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label158
label158:
	li $t0, 1
	sw $t0, -1144($fp)
label159:
	li $t0, 0
	sw $t0, -1168($fp)
	jal f6
	sw $v0, -1172($fp)
	addi $sp, $sp, 4
	lw $t1, -1172($fp)
	li $t2, 0
	bne $t1, $t2, label161
	j label160
label160:
	li $t0, 1
	sw $t0, -1168($fp)
label161:
	lw $t0, -1144($fp)
	lw $t1, -1168($fp)
	mul $t0, $t0, $t1
	sw $t0, -1176($fp)
	li $t0, 0
	lw $t1, -1176($fp)
	sub $t0, $t0, $t1
	sw $t0, -1180($fp)
	lw $ra, -4($fp)
	lw $v0, -1180($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label136:
label128:
	li $t0, 18605
	sw $t0, -1232($fp)
	addi $t0, $fp, -1212
	sw $t0, -1236($fp)
	li $t0, 0
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1244($fp)
	lw $t0, -1236($fp)
	lw $t1, -1244($fp)
	add $t0, $t0, $t1
	sw $t0, -1248($fp)
	lw $t0, -1232($fp)
	lw $t1, -1248($fp)
	sw $t0, 0($t1)
	lw $t0, -1248($fp)
	lw $t1, 0($t0)
	sw $t1, -1252($fp)
	li $t0, 11535
	sw $t0, -1256($fp)
	addi $t0, $fp, -1212
	sw $t0, -1260($fp)
	li $t0, 1
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1268($fp)
	lw $t0, -1260($fp)
	lw $t1, -1268($fp)
	add $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t0, -1256($fp)
	lw $t1, -1272($fp)
	sw $t0, 0($t1)
	lw $t0, -1272($fp)
	lw $t1, 0($t0)
	sw $t1, -1276($fp)
	li $t0, 4758
	sw $t0, -1280($fp)
	addi $t0, $fp, -1212
	sw $t0, -1284($fp)
	li $t0, 2
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t0, -1284($fp)
	lw $t1, -1292($fp)
	add $t0, $t0, $t1
	sw $t0, -1296($fp)
	lw $t0, -1280($fp)
	lw $t1, -1296($fp)
	sw $t0, 0($t1)
	lw $t0, -1296($fp)
	lw $t1, 0($t0)
	sw $t1, -1300($fp)
	li $t0, 59256
	sw $t0, -1304($fp)
	addi $t0, $fp, -1212
	sw $t0, -1308($fp)
	li $t0, 3
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1316($fp)
	lw $t0, -1308($fp)
	lw $t1, -1316($fp)
	add $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $t0, -1304($fp)
	lw $t1, -1320($fp)
	sw $t0, 0($t1)
	lw $t0, -1320($fp)
	lw $t1, 0($t0)
	sw $t1, -1324($fp)
	li $t0, 43954
	sw $t0, -1328($fp)
	addi $t0, $fp, -1212
	sw $t0, -1332($fp)
	li $t0, 4
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
	li $t0, 32122
	sw $t0, -1352($fp)
	addi $t0, $fp, -1212
	sw $t0, -1356($fp)
	li $t0, 5
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
	li $t0, 40198
	sw $t0, -1376($fp)
	addi $t0, $fp, -1212
	sw $t0, -1380($fp)
	li $t0, 6
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
	li $t0, 58078
	sw $t0, -1400($fp)
	addi $t0, $fp, -1212
	sw $t0, -1404($fp)
	li $t0, 7
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1412($fp)
	lw $t0, -1404($fp)
	lw $t1, -1412($fp)
	add $t0, $t0, $t1
	sw $t0, -1416($fp)
	lw $t0, -1400($fp)
	lw $t1, -1416($fp)
	sw $t0, 0($t1)
	lw $t0, -1416($fp)
	lw $t1, 0($t0)
	sw $t1, -1420($fp)
	li $t0, 44284
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	sw $t0, -1432($fp)
	li $t0, 56291
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	sw $t0, -1444($fp)
	li $t0, 32520
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	sw $t0, -1456($fp)
	li $t0, 13443
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	sw $t0, -1468($fp)
	li $t0, 10354
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	sw $t0, -1480($fp)
	li $t0, 24534
	sw $t0, -1484($fp)
	addi $t0, $fp, -1228
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
	li $t0, 10065
	sw $t0, -1508($fp)
	addi $t0, $fp, -1228
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
	li $t0, 29170
	sw $t0, -1532($fp)
	addi $t0, $fp, -1228
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
	li $t0, 10166
	sw $t0, -1556($fp)
	addi $t0, $fp, -1228
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
	li $t0, 1378
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	sw $t0, -1588($fp)
label162:
	addi $t0, $fp, -1228
	sw $t0, -1592($fp)
	li $t0, 0
	sw $t0, -1596($fp)
	li $t0, 13401
	sw $t0, -1600($fp)
	lw $t1, -1600($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label167
label168:
	lw $t0, -1584($fp)
	sw $t0, -1604($fp)
	lw $t1, -1604($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label167
label166:
	li $t0, 1
	sw $t0, -1596($fp)
label167:
	li $t0, 4
	lw $t1, -1596($fp)
	mul $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	lw $t1, -1592($fp)
	add $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	lw $t1, 0($t0)
	sw $t1, -1616($fp)
	lw $t0, -560($fp)
	sw $t0, -1620($fp)
	lw $t0, -1616($fp)
	lw $t1, -1620($fp)
	sub $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t1, -1624($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label165
label165:
	lw $t0, -536($fp)
	sw $t0, -1628($fp)
	lw $t0, -488($fp)
	sw $t0, -1632($fp)
	lw $t0, -1628($fp)
	lw $t1, -1632($fp)
	mul $t0, $t0, $t1
	sw $t0, -1636($fp)
	lw $t0, -548($fp)
	sw $t0, -1640($fp)
	lw $t0, -1636($fp)
	lw $t1, -1640($fp)
	add $t0, $t0, $t1
	sw $t0, -1644($fp)
	jal f6
	sw $v0, -1648($fp)
	addi $sp, $sp, 4
	lw $t0, -1644($fp)
	lw $t1, -1648($fp)
	sub $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $t1, -1652($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label164
label163:
	li $t0, 0
	sw $t0, -1656($fp)
	lw $t0, -1440($fp)
	sw $t0, -1660($fp)
	li $t0, 20908
	sw $t0, -1664($fp)
	lw $t0, -1660($fp)
	lw $t1, -1664($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1668($fp)
	li $t0, 5427
	sw $t0, -1672($fp)
	lw $t0, -1668($fp)
	lw $t1, -1672($fp)
	mul $t0, $t0, $t1
	sw $t0, -1676($fp)
	li $t0, 0
	lw $t1, -1676($fp)
	sub $t0, $t0, $t1
	sw $t0, -1680($fp)
	lw $t0, -548($fp)
	sw $t0, -1684($fp)
	lw $t0, -1680($fp)
	lw $t1, -1684($fp)
	sub $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t1, -1688($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label171
label171:
	li $t0, 2899
	sw $t0, -1692($fp)
	lw $t1, -1692($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -1656($fp)
label170:
	lw $ra, -4($fp)
	lw $v0, -1656($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1696($fp)
	li $t0, 11625
	sw $t0, -1700($fp)
	lw $t1, -1700($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label173
label172:
	li $t0, 1
	sw $t0, -1696($fp)
label173:
	lw $ra, -4($fp)
	lw $v0, -1696($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label162
label164:
	li $t0, 64576
	sw $t0, -1768($fp)
	addi $t0, $fp, -1732
	sw $t0, -1772($fp)
	li $t0, 0
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1780($fp)
	lw $t0, -1772($fp)
	lw $t1, -1780($fp)
	add $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $t0, -1768($fp)
	lw $t1, -1784($fp)
	sw $t0, 0($t1)
	lw $t0, -1784($fp)
	lw $t1, 0($t0)
	sw $t1, -1788($fp)
	li $t0, 6391
	sw $t0, -1792($fp)
	addi $t0, $fp, -1732
	sw $t0, -1796($fp)
	li $t0, 1
	sw $t0, -1800($fp)
	lw $t0, -1800($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t0, -1796($fp)
	lw $t1, -1804($fp)
	add $t0, $t0, $t1
	sw $t0, -1808($fp)
	lw $t0, -1792($fp)
	lw $t1, -1808($fp)
	sw $t0, 0($t1)
	lw $t0, -1808($fp)
	lw $t1, 0($t0)
	sw $t1, -1812($fp)
	li $t0, 15026
	sw $t0, -1816($fp)
	addi $t0, $fp, -1732
	sw $t0, -1820($fp)
	li $t0, 2
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1828($fp)
	lw $t0, -1820($fp)
	lw $t1, -1828($fp)
	add $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t0, -1816($fp)
	lw $t1, -1832($fp)
	sw $t0, 0($t1)
	lw $t0, -1832($fp)
	lw $t1, 0($t0)
	sw $t1, -1836($fp)
	li $t0, 27246
	sw $t0, -1840($fp)
	addi $t0, $fp, -1732
	sw $t0, -1844($fp)
	li $t0, 3
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1852($fp)
	lw $t0, -1844($fp)
	lw $t1, -1852($fp)
	add $t0, $t0, $t1
	sw $t0, -1856($fp)
	lw $t0, -1840($fp)
	lw $t1, -1856($fp)
	sw $t0, 0($t1)
	lw $t0, -1856($fp)
	lw $t1, 0($t0)
	sw $t1, -1860($fp)
	li $t0, 8096
	sw $t0, -1864($fp)
	addi $t0, $fp, -1732
	sw $t0, -1868($fp)
	li $t0, 4
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
	li $t0, 28314
	sw $t0, -1888($fp)
	addi $t0, $fp, -1732
	sw $t0, -1892($fp)
	li $t0, 5
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
	li $t0, 29411
	sw $t0, -1912($fp)
	addi $t0, $fp, -1732
	sw $t0, -1916($fp)
	li $t0, 6
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1924($fp)
	lw $t0, -1916($fp)
	lw $t1, -1924($fp)
	add $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t0, -1912($fp)
	lw $t1, -1928($fp)
	sw $t0, 0($t1)
	lw $t0, -1928($fp)
	lw $t1, 0($t0)
	sw $t1, -1932($fp)
	li $t0, 61249
	sw $t0, -1936($fp)
	addi $t0, $fp, -1732
	sw $t0, -1940($fp)
	li $t0, 7
	sw $t0, -1944($fp)
	lw $t0, -1944($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t0, -1940($fp)
	lw $t1, -1948($fp)
	add $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $t0, -1936($fp)
	lw $t1, -1952($fp)
	sw $t0, 0($t1)
	lw $t0, -1952($fp)
	lw $t1, 0($t0)
	sw $t1, -1956($fp)
	li $t0, 46919
	sw $t0, -1960($fp)
	addi $t0, $fp, -1764
	sw $t0, -1964($fp)
	li $t0, 0
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1972($fp)
	lw $t0, -1964($fp)
	lw $t1, -1972($fp)
	add $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $t0, -1960($fp)
	lw $t1, -1976($fp)
	sw $t0, 0($t1)
	lw $t0, -1976($fp)
	lw $t1, 0($t0)
	sw $t1, -1980($fp)
	li $t0, 40947
	sw $t0, -1984($fp)
	addi $t0, $fp, -1764
	sw $t0, -1988($fp)
	li $t0, 1
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
	li $t0, 471
	sw $t0, -2008($fp)
	addi $t0, $fp, -1764
	sw $t0, -2012($fp)
	li $t0, 2
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
	li $t0, 40639
	sw $t0, -2032($fp)
	addi $t0, $fp, -1764
	sw $t0, -2036($fp)
	li $t0, 3
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
	li $t0, 19365
	sw $t0, -2056($fp)
	addi $t0, $fp, -1764
	sw $t0, -2060($fp)
	li $t0, 4
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
	li $t0, 32593
	sw $t0, -2080($fp)
	addi $t0, $fp, -1764
	sw $t0, -2084($fp)
	li $t0, 5
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
	li $t0, 15301
	sw $t0, -2104($fp)
	addi $t0, $fp, -1764
	sw $t0, -2108($fp)
	li $t0, 6
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
	li $t0, 11907
	sw $t0, -2128($fp)
	addi $t0, $fp, -1764
	sw $t0, -2132($fp)
	li $t0, 7
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
	li $t0, 11342
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	sw $t0, -2160($fp)
	li $t0, 6056
	sw $t0, -2164($fp)
	addi $t0, $fp, -1732
	sw $t0, -2168($fp)
	lw $t0, 8($fp)
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
	lw $t0, -2164($fp)
	lw $t1, -2184($fp)
	mul $t0, $t0, $t1
	sw $t0, -2188($fp)
	li $t0, 0
	lw $t1, -2188($fp)
	sub $t0, $t0, $t1
	sw $t0, -2192($fp)
	addi $t0, $fp, -1228
	sw $t0, -2196($fp)
	li $t0, 1
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
	li $t0, 0
	lw $t1, -2212($fp)
	sub $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $t0, -2192($fp)
	lw $t1, -2216($fp)
	add $t0, $t0, $t1
	sw $t0, -2220($fp)
	li $t0, 16410
	sw $t0, -2224($fp)
	li $t0, 3425
	sw $t0, -2228($fp)
	lw $t0, -2224($fp)
	lw $t1, -2228($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2232($fp)
	li $t0, 34850
	sw $t0, -2236($fp)
	lw $t0, -2232($fp)
	lw $t1, -2236($fp)
	mul $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $t1, -2220($fp)
	lw $t2, -2240($fp)
	bne $t1, $t2, label174
	j label175
label174:
label177:
	li $t0, 45580
	sw $t0, -2244($fp)
	li $t0, 0
	lw $t1, -2244($fp)
	sub $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t1, -2248($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label179
label178:
	jal f6
	sw $v0, -2252($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -2256($fp)
	li $t0, 13591
	sw $t0, -2260($fp)
	lw $t1, -2260($fp)
	li $t2, 0
	bne $t1, $t2, label181
	j label180
label180:
	li $t0, 1
	sw $t0, -2256($fp)
label181:
	lw $t0, -572($fp)
	sw $t0, -2264($fp)
	lw $t0, -2256($fp)
	lw $t1, -2264($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2268($fp)
	lw $t0, -2252($fp)
	lw $t1, -2268($fp)
	sub $t0, $t0, $t1
	sw $t0, -2272($fp)
	lw $t0, 20($fp)
	sw $t0, -2276($fp)
	lw $t0, 12($fp)
	sw $t0, -2280($fp)
	lw $t0, -2276($fp)
	lw $t1, -2280($fp)
	mul $t0, $t0, $t1
	sw $t0, -2284($fp)
	lw $t0, -2272($fp)
	lw $t1, -2284($fp)
	add $t0, $t0, $t1
	sw $t0, -2288($fp)
	j label177
label179:
	j label176
label175:
label182:
	li $t0, 36228
	sw $t0, -2292($fp)
	lw $t1, -2292($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label184
label183:
label185:
	lw $t0, -1476($fp)
	sw $t0, -2296($fp)
	lw $t0, -524($fp)
	sw $t0, -2300($fp)
	lw $t0, -2296($fp)
	lw $t1, -2300($fp)
	mul $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $t0, 12($fp)
	sw $t0, -2308($fp)
	li $t0, 0
	lw $t1, -2308($fp)
	sub $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -2304($fp)
	lw $t1, -2312($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2316($fp)
	li $t0, 0
	lw $t1, -2316($fp)
	sub $t0, $t0, $t1
	sw $t0, -2320($fp)
	li $t0, 58981
	sw $t0, -2324($fp)
	li $t0, 34499
	sw $t0, -2328($fp)
	lw $t0, -2324($fp)
	lw $t1, -2328($fp)
	sub $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t1, -2320($fp)
	lw $t2, -2332($fp)
	bne $t1, $t2, label186
	j label188
label188:
	li $t0, 41655
	sw $t0, -2336($fp)
	li $t0, 61880
	sw $t0, -2340($fp)
	lw $t0, -2336($fp)
	lw $t1, -2340($fp)
	sub $t0, $t0, $t1
	sw $t0, -2344($fp)
	jal f6
	sw $v0, -2348($fp)
	addi $sp, $sp, 4
	lw $t0, -2344($fp)
	lw $t1, -2348($fp)
	add $t0, $t0, $t1
	sw $t0, -2352($fp)
	lw $t1, -2352($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label187
label186:
	lw $t0, -2156($fp)
	sw $t0, -2356($fp)
	lw $ra, -4($fp)
	lw $v0, -2356($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label185
label187:
	j label182
label184:
label176:
	li $t0, 0
	sw $t0, -2360($fp)
	lw $t0, -464($fp)
	sw $t0, -2364($fp)
	addi $t0, $fp, -1732
	sw $t0, -2368($fp)
	li $t0, 46124
	sw $t0, -2372($fp)
	li $t0, 40695
	sw $t0, -2376($fp)
	lw $t0, -2372($fp)
	lw $t1, -2376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2380($fp)
	li $t0, 4
	lw $t1, -2380($fp)
	mul $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	lw $t1, -2368($fp)
	add $t0, $t0, $t1
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	lw $t1, 0($t0)
	sw $t1, -2392($fp)
	lw $t1, -2364($fp)
	lw $t2, -2392($fp)
	beq $t1, $t2, label189
	j label190
label189:
	li $t0, 1
	sw $t0, -2360($fp)
label190:
label191:
	lw $t0, -488($fp)
	sw $t0, -2396($fp)
	li $t0, 2735
	sw $t0, -2400($fp)
	li $t0, 0
	sw $t0, -2404($fp)
	lw $t0, -1452($fp)
	sw $t0, -2408($fp)
	li $t0, 31817
	sw $t0, -2412($fp)
	lw $t1, -2408($fp)
	lw $t2, -2412($fp)
	ble $t1, $t2, label195
	j label196
label195:
	li $t0, 1
	sw $t0, -2404($fp)
label196:
	li $t0, 0
	sw $t0, -2416($fp)
	lw $t0, -1428($fp)
	sw $t0, -2420($fp)
	li $t0, 0
	lw $t1, -2420($fp)
	sub $t0, $t0, $t1
	sw $t0, -2424($fp)
	lw $t0, -428($fp)
	sw $t0, -2428($fp)
	lw $t1, -2424($fp)
	lw $t2, -2428($fp)
	ble $t1, $t2, label197
	j label198
label197:
	li $t0, 1
	sw $t0, -2416($fp)
label198:
	lw $t0, -500($fp)
	sw $t0, -2432($fp)
	lw $t0, -1464($fp)
	sw $t0, -2436($fp)
	lw $t0, -2432($fp)
	lw $t1, -2436($fp)
	add $t0, $t0, $t1
	sw $t0, -2440($fp)
	li $t0, 23929
	sw $t0, -2444($fp)
	addi $t0, $fp, -1764
	sw $t0, -2448($fp)
	li $t0, 6
	sw $t0, -2452($fp)
	li $t0, 4
	lw $t1, -2452($fp)
	mul $t0, $t0, $t1
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	lw $t1, -2448($fp)
	add $t0, $t0, $t1
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	lw $t1, 0($t0)
	sw $t1, -2464($fp)
	li $t0, 10831
	sw $t0, -2468($fp)
	lw $t0, -2464($fp)
	lw $t1, -2468($fp)
	sub $t0, $t0, $t1
	sw $t0, -2472($fp)
	addi $sp, $sp, -4
	lw $t0, -2404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2472($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2476($fp)
	addi $sp, $sp, 24
	lw $t0, -2400($fp)
	lw $t1, -2476($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2480($fp)
	li $t0, 0
	lw $t1, -2480($fp)
	sub $t0, $t0, $t1
	sw $t0, -2484($fp)
	lw $t0, -2396($fp)
	lw $t1, -2484($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2488($fp)
	li $t0, 0
	lw $t1, -2488($fp)
	sub $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $t1, -2492($fp)
	li $t2, 0
	bne $t1, $t2, label192
	j label194
label194:
	addi $t0, $fp, -1212
	sw $t0, -2496($fp)
	lw $t0, -536($fp)
	sw $t0, -2500($fp)
	li $t0, 4
	lw $t1, -2500($fp)
	mul $t0, $t0, $t1
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	lw $t1, -2496($fp)
	add $t0, $t0, $t1
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	lw $t1, 0($t0)
	sw $t1, -2512($fp)
	lw $t0, 12($fp)
	sw $t0, -2516($fp)
	li $t0, 0
	lw $t1, -2516($fp)
	sub $t0, $t0, $t1
	sw $t0, -2520($fp)
	lw $t0, -2512($fp)
	lw $t1, -2520($fp)
	add $t0, $t0, $t1
	sw $t0, -2524($fp)
	lw $t1, -2524($fp)
	li $t2, 0
	bne $t1, $t2, label192
	j label193
label192:
	li $t0, 6544
	sw $t0, -2528($fp)
	li $t0, 0
	lw $t1, -2528($fp)
	sub $t0, $t0, $t1
	sw $t0, -2532($fp)
	j label191
label193:
label199:
	lw $t0, -1428($fp)
	sw $t0, -2536($fp)
	li $t0, 0
	sw $t0, -2540($fp)
	li $t0, 5312
	sw $t0, -2544($fp)
	lw $t1, -2544($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label202
label202:
	li $t0, 1
	sw $t0, -2540($fp)
label203:
	li $t0, 7228
	sw $t0, -2548($fp)
	lw $t0, -2540($fp)
	lw $t1, -2548($fp)
	add $t0, $t0, $t1
	sw $t0, -2552($fp)
	lw $t0, -1428($fp)
	sw $t0, -2556($fp)
	li $t0, 0
	lw $t1, -2556($fp)
	sub $t0, $t0, $t1
	sw $t0, -2560($fp)
	jal f6
	sw $v0, -2564($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -2568($fp)
	lw $t0, -428($fp)
	sw $t0, -2572($fp)
	lw $t1, -2572($fp)
	li $t2, 0
	bne $t1, $t2, label205
	j label204
label204:
	li $t0, 1
	sw $t0, -2568($fp)
label205:
	lw $t0, -1476($fp)
	sw $t0, -2576($fp)
	lw $t0, -2568($fp)
	lw $t1, -2576($fp)
	mul $t0, $t0, $t1
	sw $t0, -2580($fp)
	addi $sp, $sp, -4
	lw $t0, -2536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2580($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2584($fp)
	addi $sp, $sp, 24
	lw $t1, -2584($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
	li $t0, 7015
	sw $t0, -2588($fp)
	lw $t0, -488($fp)
	sw $t0, -2592($fp)
	lw $t0, -2588($fp)
	lw $t1, -2592($fp)
	add $t0, $t0, $t1
	sw $t0, -2596($fp)
	lw $t1, -2596($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label207
label206:
	jal f6
	sw $v0, -2600($fp)
	addi $sp, $sp, 4
	lw $t0, -1428($fp)
	sw $t0, -2604($fp)
	lw $t0, -2600($fp)
	lw $t1, -2604($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2608($fp)
	li $t0, 0
	lw $t1, -2608($fp)
	sub $t0, $t0, $t1
	sw $t0, -2612($fp)
	li $t0, 0
	lw $t1, -2612($fp)
	sub $t0, $t0, $t1
	sw $t0, -2616($fp)
	lw $ra, -4($fp)
	lw $v0, -2616($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label208
label207:
	lw $t0, -416($fp)
	sw $t0, -2620($fp)
	addi $t0, $fp, -1228
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
	lw $t1, -2620($fp)
	lw $t2, -2640($fp)
	beq $t1, $t2, label212
	j label210
label212:
	addi $t0, $fp, -1212
	sw $t0, -2644($fp)
	lw $t0, 4($fp)
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
	lw $t1, -2660($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label209
label209:
	lw $t0, -572($fp)
	sw $t0, -2664($fp)
	li $t0, 39609
	sw $t0, -2668($fp)
	lw $t0, -2664($fp)
	lw $t1, -2668($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2672($fp)
	li $t0, 61253
	sw $t0, -2676($fp)
	lw $t0, -2672($fp)
	lw $t1, -2676($fp)
	sub $t0, $t0, $t1
	sw $t0, -2680($fp)
	lw $ra, -4($fp)
	lw $v0, -2680($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label211
label210:
	li $t0, 38501
	sw $t0, -2684($fp)
	li $t0, 50951
	sw $t0, -2688($fp)
	lw $t0, -2684($fp)
	lw $t1, -2688($fp)
	mul $t0, $t0, $t1
	sw $t0, -2692($fp)
	addi $t0, $fp, -1228
	sw $t0, -2696($fp)
	li $t0, 1
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
	lw $t0, -2692($fp)
	lw $t1, -2712($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2716($fp)
	li $t0, 10200
	sw $t0, -2720($fp)
	lw $t0, -2716($fp)
	lw $t1, -2720($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2724($fp)
	lw $t0, -572($fp)
	sw $t0, -2728($fp)
	li $t0, 0
	lw $t1, -2728($fp)
	sub $t0, $t0, $t1
	sw $t0, -2732($fp)
	lw $t0, -2724($fp)
	lw $t1, -2732($fp)
	mul $t0, $t0, $t1
	sw $t0, -2736($fp)
	li $t0, 0
	lw $t1, -2736($fp)
	sub $t0, $t0, $t1
	sw $t0, -2740($fp)
label211:
label208:
	j label199
label201:
label213:
	lw $t0, -1440($fp)
	sw $t0, -2744($fp)
	lw $t1, -2744($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label215
label214:
	li $t0, 0
	sw $t0, -2748($fp)
	li $t0, 0
	sw $t0, -2752($fp)
	li $t0, 0
	sw $t0, -2756($fp)
	li $t0, 18184
	sw $t0, -2760($fp)
	li $t0, 0
	sw $t0, -2764($fp)
	lw $t0, -464($fp)
	sw $t0, -2768($fp)
	lw $t1, -2768($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label222
label222:
	li $t0, 1
	sw $t0, -2764($fp)
label223:
	lw $t1, -2760($fp)
	lw $t2, -2764($fp)
	blt $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -2756($fp)
label221:
	jal f6
	sw $v0, -2772($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -2772($fp)
	sub $t0, $t0, $t1
	sw $t0, -2776($fp)
	lw $t1, -2756($fp)
	lw $t2, -2776($fp)
	bne $t1, $t2, label218
	j label219
label218:
	li $t0, 1
	sw $t0, -2752($fp)
label219:
	lw $t0, -488($fp)
	sw $t0, -2780($fp)
	lw $t1, -2752($fp)
	lw $t2, -2780($fp)
	bne $t1, $t2, label216
	j label217
label216:
	li $t0, 1
	sw $t0, -2748($fp)
label217:
	lw $ra, -4($fp)
	lw $v0, -2748($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label213
label215:
	li $t0, 20818
	sw $t0, -2804($fp)
	addi $t0, $fp, -2800
	sw $t0, -2808($fp)
	li $t0, 0
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
	li $t0, 45050
	sw $t0, -2828($fp)
	addi $t0, $fp, -2800
	sw $t0, -2832($fp)
	li $t0, 1
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
	li $t0, 63764
	sw $t0, -2852($fp)
	addi $t0, $fp, -2800
	sw $t0, -2856($fp)
	li $t0, 2
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
	li $t0, 34410
	sw $t0, -2876($fp)
	addi $t0, $fp, -2800
	sw $t0, -2880($fp)
	li $t0, 3
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
	li $t0, 15742
	sw $t0, -2900($fp)
	addi $t0, $fp, -2800
	sw $t0, -2904($fp)
	li $t0, 4
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
	li $t0, 57210
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	sw $t0, -2928($fp)
	lw $t0, -2928($fp)
	sw $t0, -2932($fp)
	li $t0, 3373
	sw $t0, -2936($fp)
	lw $t0, -2936($fp)
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	sw $t0, -2944($fp)
	li $t0, 57397
	sw $t0, -2948($fp)
	lw $t0, -2948($fp)
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	sw $t0, -2956($fp)
	li $t0, 53554
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	sw $t0, -2968($fp)
	addi $t0, $fp, -2800
	sw $t0, -2972($fp)
	li $t0, 0
	sw $t0, -2976($fp)
	li $t0, 4
	lw $t1, -2976($fp)
	mul $t0, $t0, $t1
	sw $t0, -2980($fp)
	lw $t0, -2980($fp)
	lw $t1, -2972($fp)
	add $t0, $t0, $t1
	sw $t0, -2984($fp)
	lw $t0, -2984($fp)
	lw $t1, 0($t0)
	sw $t1, -2988($fp)
	lw $t0, -2988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2800
	sw $t0, -2992($fp)
	li $t0, 1
	sw $t0, -2996($fp)
	li $t0, 4
	lw $t1, -2996($fp)
	mul $t0, $t0, $t1
	sw $t0, -3000($fp)
	lw $t0, -3000($fp)
	lw $t1, -2992($fp)
	add $t0, $t0, $t1
	sw $t0, -3004($fp)
	lw $t0, -3004($fp)
	lw $t1, 0($t0)
	sw $t1, -3008($fp)
	lw $t0, -3008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2800
	sw $t0, -3012($fp)
	li $t0, 2
	sw $t0, -3016($fp)
	li $t0, 4
	lw $t1, -3016($fp)
	mul $t0, $t0, $t1
	sw $t0, -3020($fp)
	lw $t0, -3020($fp)
	lw $t1, -3012($fp)
	add $t0, $t0, $t1
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	lw $t1, 0($t0)
	sw $t1, -3028($fp)
	lw $t0, -3028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2800
	sw $t0, -3032($fp)
	li $t0, 3
	sw $t0, -3036($fp)
	li $t0, 4
	lw $t1, -3036($fp)
	mul $t0, $t0, $t1
	sw $t0, -3040($fp)
	lw $t0, -3040($fp)
	lw $t1, -3032($fp)
	add $t0, $t0, $t1
	sw $t0, -3044($fp)
	lw $t0, -3044($fp)
	lw $t1, 0($t0)
	sw $t1, -3048($fp)
	lw $t0, -3048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2800
	sw $t0, -3052($fp)
	li $t0, 4
	sw $t0, -3056($fp)
	li $t0, 4
	lw $t1, -3056($fp)
	mul $t0, $t0, $t1
	sw $t0, -3060($fp)
	lw $t0, -3060($fp)
	lw $t1, -3052($fp)
	add $t0, $t0, $t1
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	lw $t1, 0($t0)
	sw $t1, -3068($fp)
	lw $t0, -3068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2928($fp)
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2940($fp)
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2952($fp)
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2964($fp)
	sw $t0, -3084($fp)
	lw $t0, -3084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3088($fp)
	li $t0, 4
	sw $t0, -3092($fp)
	li $t0, 4
	lw $t1, -3092($fp)
	mul $t0, $t0, $t1
	sw $t0, -3096($fp)
	lw $t0, -3096($fp)
	lw $t1, -3088($fp)
	add $t0, $t0, $t1
	sw $t0, -3100($fp)
	lw $t0, -3100($fp)
	lw $t1, 0($t0)
	sw $t1, -3104($fp)
	li $t0, 0
	lw $t1, -3104($fp)
	sub $t0, $t0, $t1
	sw $t0, -3108($fp)
	lw $ra, -4($fp)
	lw $v0, -3108($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -2800
	sw $t0, -3112($fp)
	li $t0, 0
	sw $t0, -3116($fp)
	li $t0, 4
	lw $t1, -3116($fp)
	mul $t0, $t0, $t1
	sw $t0, -3120($fp)
	lw $t0, -3120($fp)
	lw $t1, -3112($fp)
	add $t0, $t0, $t1
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	lw $t1, 0($t0)
	sw $t1, -3128($fp)
	lw $t0, -3128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2800
	sw $t0, -3132($fp)
	li $t0, 1
	sw $t0, -3136($fp)
	li $t0, 4
	lw $t1, -3136($fp)
	mul $t0, $t0, $t1
	sw $t0, -3140($fp)
	lw $t0, -3140($fp)
	lw $t1, -3132($fp)
	add $t0, $t0, $t1
	sw $t0, -3144($fp)
	lw $t0, -3144($fp)
	lw $t1, 0($t0)
	sw $t1, -3148($fp)
	lw $t0, -3148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2800
	sw $t0, -3152($fp)
	li $t0, 2
	sw $t0, -3156($fp)
	li $t0, 4
	lw $t1, -3156($fp)
	mul $t0, $t0, $t1
	sw $t0, -3160($fp)
	lw $t0, -3160($fp)
	lw $t1, -3152($fp)
	add $t0, $t0, $t1
	sw $t0, -3164($fp)
	lw $t0, -3164($fp)
	lw $t1, 0($t0)
	sw $t1, -3168($fp)
	lw $t0, -3168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2800
	sw $t0, -3172($fp)
	li $t0, 3
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
	lw $t0, -3188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2800
	sw $t0, -3192($fp)
	li $t0, 4
	sw $t0, -3196($fp)
	li $t0, 4
	lw $t1, -3196($fp)
	mul $t0, $t0, $t1
	sw $t0, -3200($fp)
	lw $t0, -3200($fp)
	lw $t1, -3192($fp)
	add $t0, $t0, $t1
	sw $t0, -3204($fp)
	lw $t0, -3204($fp)
	lw $t1, 0($t0)
	sw $t1, -3208($fp)
	lw $t0, -3208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2928($fp)
	sw $t0, -3212($fp)
	lw $t0, -3212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2940($fp)
	sw $t0, -3216($fp)
	lw $t0, -3216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2952($fp)
	sw $t0, -3220($fp)
	lw $t0, -3220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2964($fp)
	sw $t0, -3224($fp)
	lw $t0, -3224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3228($fp)
	li $t0, 56290
	sw $t0, -3232($fp)
	lw $t0, -416($fp)
	sw $t0, -3236($fp)
	lw $t0, -3236($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -3240($fp)
	li $t0, 8472
	sw $t0, -3244($fp)
	li $t0, 0
	lw $t1, -3244($fp)
	sub $t0, $t0, $t1
	sw $t0, -3248($fp)
	li $t0, 0
	lw $t1, -3248($fp)
	sub $t0, $t0, $t1
	sw $t0, -3252($fp)
	li $t0, 8818
	sw $t0, -3256($fp)
	lw $t0, -3256($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -3260($fp)
	li $t0, 0
	sw $t0, -3264($fp)
	li $t0, 1244
	sw $t0, -3268($fp)
	lw $t0, -2940($fp)
	sw $t0, -3272($fp)
	lw $t0, -3268($fp)
	lw $t1, -3272($fp)
	sub $t0, $t0, $t1
	sw $t0, -3276($fp)
	li $t0, 8130
	sw $t0, -3280($fp)
	lw $t1, -3276($fp)
	lw $t2, -3280($fp)
	beq $t1, $t2, label226
	j label227
label226:
	li $t0, 1
	sw $t0, -3264($fp)
label227:
	li $t0, 0
	sw $t0, -3284($fp)
	li $t0, 0
	sw $t0, -3288($fp)
	li $t0, 1585
	sw $t0, -3292($fp)
	li $t0, 0
	lw $t1, -3292($fp)
	sub $t0, $t0, $t1
	sw $t0, -3296($fp)
	lw $t1, -3296($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label232
label233:
	lw $t0, -548($fp)
	sw $t0, -3300($fp)
	lw $t1, -3300($fp)
	li $t2, 0
	bne $t1, $t2, label231
	j label232
label231:
	li $t0, 1
	sw $t0, -3288($fp)
label232:
	lw $t0, -2964($fp)
	sw $t0, -3304($fp)
	li $t0, 34962
	sw $t0, -3308($fp)
	lw $t0, -3304($fp)
	lw $t1, -3308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3312($fp)
	lw $t0, -2928($fp)
	sw $t0, -3316($fp)
	lw $t0, -3312($fp)
	lw $t1, -3316($fp)
	mul $t0, $t0, $t1
	sw $t0, -3320($fp)
	lw $t0, -512($fp)
	sw $t0, -3324($fp)
	li $t0, 0
	lw $t1, -3324($fp)
	sub $t0, $t0, $t1
	sw $t0, -3328($fp)
	li $t0, 0
	sw $t0, -3332($fp)
	li $t0, 45113
	sw $t0, -3336($fp)
	lw $t1, -3336($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label235
label236:
	lw $t0, -548($fp)
	sw $t0, -3340($fp)
	lw $t1, -3340($fp)
	li $t2, 0
	bne $t1, $t2, label234
	j label235
label234:
	li $t0, 1
	sw $t0, -3332($fp)
label235:
	li $t0, 0
	sw $t0, -3344($fp)
	lw $t0, -428($fp)
	sw $t0, -3348($fp)
	lw $t1, -3348($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label238
label237:
	li $t0, 1
	sw $t0, -3344($fp)
label238:
	addi $sp, $sp, -4
	lw $t0, -3288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3344($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3352($fp)
	addi $sp, $sp, 24
	lw $t1, -3352($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label230
label230:
	li $t0, 3506
	sw $t0, -3356($fp)
	lw $t1, -3356($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label229
label228:
	li $t0, 1
	sw $t0, -3284($fp)
label229:
	addi $sp, $sp, -4
	lw $t0, -3240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3284($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3360($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -3360($fp)
	sub $t0, $t0, $t1
	sw $t0, -3364($fp)
	lw $t1, -3232($fp)
	lw $t2, -3364($fp)
	ble $t1, $t2, label224
	j label225
label224:
	li $t0, 1
	sw $t0, -3228($fp)
label225:
	lw $ra, -4($fp)
	lw $v0, -3228($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 15145
	sw $t0, -3368($fp)
	addi $t0, $fp, -1212
	sw $t0, -3372($fp)
	lw $t0, -536($fp)
	sw $t0, -3376($fp)
	li $t0, 4
	lw $t1, -3376($fp)
	mul $t0, $t0, $t1
	sw $t0, -3380($fp)
	lw $t0, -3380($fp)
	lw $t1, -3372($fp)
	add $t0, $t0, $t1
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	lw $t1, 0($t0)
	sw $t1, -3388($fp)
	lw $t0, -3368($fp)
	lw $t1, -3388($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3392($fp)
	li $t0, 0
	sw $t0, -3396($fp)
	lw $t0, -560($fp)
	sw $t0, -3400($fp)
	lw $t1, -3400($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label242
label242:
	li $t0, 1
	sw $t0, -3396($fp)
label243:
	li $t0, 0
	lw $t1, -3396($fp)
	sub $t0, $t0, $t1
	sw $t0, -3404($fp)
	li $t0, 0
	lw $t1, -3404($fp)
	sub $t0, $t0, $t1
	sw $t0, -3408($fp)
	lw $t0, -3392($fp)
	lw $t1, -3408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3412($fp)
	lw $t1, -3412($fp)
	li $t2, 0
	bne $t1, $t2, label239
	j label240
label239:
label244:
	li $t0, 0
	sw $t0, -3416($fp)
	jal f6
	sw $v0, -3420($fp)
	addi $sp, $sp, 4
	lw $t1, -3420($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label247
label247:
	li $t0, 1
	sw $t0, -3416($fp)
label248:
	jal f6
	sw $v0, -3424($fp)
	addi $sp, $sp, 4
	lw $t0, -3416($fp)
	lw $t1, -3424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3428($fp)
	lw $t1, -3428($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label246
label245:
	li $t0, 0
	sw $t0, -3432($fp)
	li $t0, 54769
	sw $t0, -3436($fp)
	lw $t1, -3436($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label251
label251:
	addi $t0, $fp, -1212
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
	li $t0, 0
	sw $t0, -3460($fp)
	li $t0, 50486
	sw $t0, -3464($fp)
	lw $t1, -3464($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label252
label252:
	li $t0, 1
	sw $t0, -3460($fp)
label253:
	lw $t0, -3456($fp)
	lw $t1, -3460($fp)
	add $t0, $t0, $t1
	sw $t0, -3468($fp)
	lw $t1, -3468($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label250
label249:
	li $t0, 1
	sw $t0, -3432($fp)
label250:
	lw $ra, -4($fp)
	lw $v0, -3432($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label244
label246:
	j label241
label240:
label254:
	lw $t0, -560($fp)
	sw $t0, -3472($fp)
	li $t0, 8032
	sw $t0, -3476($fp)
	li $t0, 40169
	sw $t0, -3480($fp)
	li $t0, 0
	lw $t1, -3480($fp)
	sub $t0, $t0, $t1
	sw $t0, -3484($fp)
	lw $t0, -3476($fp)
	lw $t1, -3484($fp)
	mul $t0, $t0, $t1
	sw $t0, -3488($fp)
	li $t0, 0
	lw $t1, -3488($fp)
	sub $t0, $t0, $t1
	sw $t0, -3492($fp)
	lw $t1, -3472($fp)
	lw $t2, -3492($fp)
	beq $t1, $t2, label255
	j label256
label255:
	lw $t0, -1452($fp)
	sw $t0, -3496($fp)
	addi $t0, $fp, -60
	sw $t0, -3500($fp)
	li $t0, 0
	sw $t0, -3504($fp)
	jal f6
	sw $v0, -3508($fp)
	addi $sp, $sp, 4
	lw $t1, -3508($fp)
	li $t2, 0
	bne $t1, $t2, label261
	j label260
label260:
	li $t0, 1
	sw $t0, -3504($fp)
label261:
	li $t0, 0
	sw $t0, -3512($fp)
	addi $t0, $fp, -2800
	sw $t0, -3516($fp)
	li $t0, 0
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
	lw $t0, 8($fp)
	sw $t0, -3536($fp)
	lw $t1, -3532($fp)
	lw $t2, -3536($fp)
	bgt $t1, $t2, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -3512($fp)
label263:
	li $t0, 0
	sw $t0, -3540($fp)
	lw $t0, -428($fp)
	sw $t0, -3544($fp)
	lw $t0, -452($fp)
	sw $t0, -3548($fp)
	lw $t1, -3544($fp)
	lw $t2, -3548($fp)
	ble $t1, $t2, label266
	j label265
label266:
	li $t0, 50369
	sw $t0, -3552($fp)
	lw $t1, -3552($fp)
	li $t2, 0
	bne $t1, $t2, label264
	j label265
label264:
	li $t0, 1
	sw $t0, -3540($fp)
label265:
	li $t0, 0
	sw $t0, -3556($fp)
	li $t0, 25425
	sw $t0, -3560($fp)
	lw $t0, -2940($fp)
	sw $t0, -3564($fp)
	lw $t1, -3560($fp)
	lw $t2, -3564($fp)
	beq $t1, $t2, label267
	j label268
label267:
	li $t0, 1
	sw $t0, -3556($fp)
label268:
	li $t0, 52260
	sw $t0, -3568($fp)
	addi $sp, $sp, -4
	lw $t0, -3504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3568($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3572($fp)
	addi $sp, $sp, 24
	li $t0, 4
	lw $t1, -3572($fp)
	mul $t0, $t0, $t1
	sw $t0, -3576($fp)
	lw $t0, -3576($fp)
	lw $t1, -3500($fp)
	add $t0, $t0, $t1
	sw $t0, -3580($fp)
	lw $t0, -3580($fp)
	lw $t1, 0($t0)
	sw $t1, -3584($fp)
	lw $t0, -3496($fp)
	lw $t1, -3584($fp)
	sub $t0, $t0, $t1
	sw $t0, -3588($fp)
	lw $t1, -3588($fp)
	li $t2, 0
	bne $t1, $t2, label257
	j label258
label257:
	li $t0, 0
	sw $t0, -3592($fp)
	li $t0, 0
	sw $t0, -3596($fp)
	li $t0, 29883
	sw $t0, -3600($fp)
	lw $t1, -3600($fp)
	li $t2, 0
	bne $t1, $t2, label272
	j label271
label271:
	li $t0, 1
	sw $t0, -3596($fp)
label272:
	li $t0, 3136
	sw $t0, -3604($fp)
	lw $t1, -3596($fp)
	lw $t2, -3604($fp)
	bgt $t1, $t2, label269
	j label270
label269:
	li $t0, 1
	sw $t0, -3592($fp)
label270:
	j label259
label258:
	li $t0, 0
	sw $t0, -3608($fp)
	li $t0, 0
	sw $t0, -3612($fp)
	addi $t0, $fp, -60
	sw $t0, -3616($fp)
	lw $t0, -500($fp)
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
	addi $t0, $fp, -1212
	sw $t0, -3636($fp)
	li $t0, 1
	sw $t0, -3640($fp)
	li $t0, 4
	lw $t1, -3640($fp)
	mul $t0, $t0, $t1
	sw $t0, -3644($fp)
	lw $t0, -3644($fp)
	lw $t1, -3636($fp)
	add $t0, $t0, $t1
	sw $t0, -3648($fp)
	lw $t0, -3648($fp)
	lw $t1, 0($t0)
	sw $t1, -3652($fp)
	lw $t1, -3632($fp)
	lw $t2, -3652($fp)
	beq $t1, $t2, label276
	j label277
label276:
	li $t0, 1
	sw $t0, -3612($fp)
label277:
	lw $t0, -1428($fp)
	sw $t0, -3656($fp)
	li $t0, 60346
	sw $t0, -3660($fp)
	lw $t0, -3656($fp)
	lw $t1, -3660($fp)
	add $t0, $t0, $t1
	sw $t0, -3664($fp)
	lw $t1, -3612($fp)
	lw $t2, -3664($fp)
	beq $t1, $t2, label275
	j label274
label275:
	li $t0, 18491
	sw $t0, -3668($fp)
	li $t0, 37486
	sw $t0, -3672($fp)
	lw $t0, -2952($fp)
	sw $t0, -3676($fp)
	lw $t0, -3672($fp)
	lw $t1, -3676($fp)
	add $t0, $t0, $t1
	sw $t0, -3680($fp)
	lw $t1, -3668($fp)
	lw $t2, -3680($fp)
	ble $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -3608($fp)
label274:
label259:
	j label254
label256:
label241:
	addi $t0, $fp, -2800
	sw $t0, -3684($fp)
	li $t0, 0
	sw $t0, -3688($fp)
	li $t0, 4
	lw $t1, -3688($fp)
	mul $t0, $t0, $t1
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	lw $t1, -3684($fp)
	add $t0, $t0, $t1
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	lw $t1, 0($t0)
	sw $t1, -3700($fp)
	lw $t0, -3700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2800
	sw $t0, -3704($fp)
	li $t0, 1
	sw $t0, -3708($fp)
	li $t0, 4
	lw $t1, -3708($fp)
	mul $t0, $t0, $t1
	sw $t0, -3712($fp)
	lw $t0, -3712($fp)
	lw $t1, -3704($fp)
	add $t0, $t0, $t1
	sw $t0, -3716($fp)
	lw $t0, -3716($fp)
	lw $t1, 0($t0)
	sw $t1, -3720($fp)
	lw $t0, -3720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2800
	sw $t0, -3724($fp)
	li $t0, 2
	sw $t0, -3728($fp)
	li $t0, 4
	lw $t1, -3728($fp)
	mul $t0, $t0, $t1
	sw $t0, -3732($fp)
	lw $t0, -3732($fp)
	lw $t1, -3724($fp)
	add $t0, $t0, $t1
	sw $t0, -3736($fp)
	lw $t0, -3736($fp)
	lw $t1, 0($t0)
	sw $t1, -3740($fp)
	lw $t0, -3740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2800
	sw $t0, -3744($fp)
	li $t0, 3
	sw $t0, -3748($fp)
	li $t0, 4
	lw $t1, -3748($fp)
	mul $t0, $t0, $t1
	sw $t0, -3752($fp)
	lw $t0, -3752($fp)
	lw $t1, -3744($fp)
	add $t0, $t0, $t1
	sw $t0, -3756($fp)
	lw $t0, -3756($fp)
	lw $t1, 0($t0)
	sw $t1, -3760($fp)
	lw $t0, -3760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2800
	sw $t0, -3764($fp)
	li $t0, 4
	sw $t0, -3768($fp)
	li $t0, 4
	lw $t1, -3768($fp)
	mul $t0, $t0, $t1
	sw $t0, -3772($fp)
	lw $t0, -3772($fp)
	lw $t1, -3764($fp)
	add $t0, $t0, $t1
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	lw $t1, 0($t0)
	sw $t1, -3780($fp)
	lw $t0, -3780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2928($fp)
	sw $t0, -3784($fp)
	lw $t0, -3784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2940($fp)
	sw $t0, -3788($fp)
	lw $t0, -3788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2952($fp)
	sw $t0, -3792($fp)
	lw $t0, -3792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2964($fp)
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	jal f6
	sw $v0, -3800($fp)
	addi $sp, $sp, 4
	lw $t0, -3800($fp)
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	sw $t0, -3804($fp)
	lw $ra, -4($fp)
	lw $v0, -3804($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -548($fp)
	sw $t0, -3808($fp)
	addi $t0, $fp, -24
	sw $t0, -3812($fp)
	li $t0, 3
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
	lw $t0, -3808($fp)
	lw $t1, -3828($fp)
	mul $t0, $t0, $t1
	sw $t0, -3832($fp)
	lw $t1, -3832($fp)
	li $t2, 0
	bne $t1, $t2, label278
	j label279
label278:
	li $t0, 4507
	sw $t0, -3836($fp)
	li $t0, 0
	lw $t1, -3836($fp)
	sub $t0, $t0, $t1
	sw $t0, -3840($fp)
	lw $t0, -3840($fp)
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	sw $t0, -3844($fp)
	lw $t0, -3844($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -3848($fp)
	lw $ra, -4($fp)
	lw $v0, -3848($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label280
label279:
	li $t0, 39119
	sw $t0, -3852($fp)
	lw $t0, -464($fp)
	sw $t0, -3856($fp)
	lw $t0, -3852($fp)
	lw $t1, -3856($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3860($fp)
	li $t0, 0
	lw $t1, -3860($fp)
	sub $t0, $t0, $t1
	sw $t0, -3864($fp)
label280:
	li $t0, 0
	sw $t0, -3868($fp)
	li $t0, 0
	sw $t0, -3872($fp)
	li $t0, 40713
	sw $t0, -3876($fp)
	lw $t1, -3876($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label289
label290:
	lw $t0, -488($fp)
	sw $t0, -3880($fp)
	lw $t1, -3880($fp)
	li $t2, 0
	bne $t1, $t2, label288
	j label289
label288:
	li $t0, 1
	sw $t0, -3872($fp)
label289:
	li $t0, 0
	sw $t0, -3884($fp)
	li $t0, 40704
	sw $t0, -3888($fp)
	lw $t1, -3888($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label291
label293:
	li $t0, 51072
	sw $t0, -3892($fp)
	lw $t1, -3892($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label292
label291:
	li $t0, 1
	sw $t0, -3884($fp)
label292:
	li $t0, 0
	sw $t0, -3896($fp)
	lw $t0, 12($fp)
	sw $t0, -3900($fp)
	lw $t0, -572($fp)
	sw $t0, -3904($fp)
	lw $t1, -3900($fp)
	lw $t2, -3904($fp)
	bne $t1, $t2, label296
	j label295
label296:
	lw $t0, -416($fp)
	sw $t0, -3908($fp)
	lw $t1, -3908($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label295
label294:
	li $t0, 1
	sw $t0, -3896($fp)
label295:
	li $t0, 0
	sw $t0, -3912($fp)
	lw $t0, -464($fp)
	sw $t0, -3916($fp)
	lw $t1, -3916($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label297
label297:
	li $t0, 1
	sw $t0, -3912($fp)
label298:
	li $t0, 39469
	sw $t0, -3920($fp)
	lw $t0, -3912($fp)
	lw $t1, -3920($fp)
	mul $t0, $t0, $t1
	sw $t0, -3924($fp)
	li $t0, 0
	sw $t0, -3928($fp)
	lw $t0, 16($fp)
	sw $t0, -3932($fp)
	lw $t1, -3932($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label299
label301:
	li $t0, 47566
	sw $t0, -3936($fp)
	lw $t1, -3936($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label300
label299:
	li $t0, 1
	sw $t0, -3928($fp)
label300:
	addi $sp, $sp, -4
	lw $t0, -3872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3928($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3940($fp)
	addi $sp, $sp, 24
	li $t0, 48834
	sw $t0, -3944($fp)
	lw $t1, -3940($fp)
	lw $t2, -3944($fp)
	bne $t1, $t2, label286
	j label287
label286:
	li $t0, 1
	sw $t0, -3868($fp)
label287:
	li $t0, 59890
	sw $t0, -3948($fp)
	lw $t0, 4($fp)
	sw $t0, -3952($fp)
	lw $t0, -3948($fp)
	lw $t1, -3952($fp)
	mul $t0, $t0, $t1
	sw $t0, -3956($fp)
	lw $t1, -3868($fp)
	lw $t2, -3956($fp)
	bne $t1, $t2, label285
	j label282
label285:
	jal f6
	sw $v0, -3960($fp)
	addi $sp, $sp, 4
	lw $t0, -560($fp)
	sw $t0, -3964($fp)
	lw $t1, -3960($fp)
	lw $t2, -3964($fp)
	bne $t1, $t2, label284
	j label282
label284:
	addi $t0, $fp, -60
	sw $t0, -3968($fp)
	li $t0, 0
	sw $t0, -3972($fp)
	lw $t0, -560($fp)
	sw $t0, -3976($fp)
	li $t0, 49186
	sw $t0, -3980($fp)
	lw $t1, -3976($fp)
	lw $t2, -3980($fp)
	bge $t1, $t2, label302
	j label303
label302:
	li $t0, 1
	sw $t0, -3972($fp)
label303:
	li $t0, 4
	lw $t1, -3972($fp)
	mul $t0, $t0, $t1
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	lw $t1, -3968($fp)
	add $t0, $t0, $t1
	sw $t0, -3988($fp)
	lw $t0, -3988($fp)
	lw $t1, 0($t0)
	sw $t1, -3992($fp)
	lw $t1, -3992($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label282
label281:
	li $t0, 0
	sw $t0, -3996($fp)
	lw $t0, -548($fp)
	sw $t0, -4000($fp)
	addi $t0, $fp, -24
	sw $t0, -4004($fp)
	lw $t0, -536($fp)
	sw $t0, -4008($fp)
	li $t0, 4
	lw $t1, -4008($fp)
	mul $t0, $t0, $t1
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	lw $t1, -4004($fp)
	add $t0, $t0, $t1
	sw $t0, -4016($fp)
	lw $t0, -4016($fp)
	lw $t1, 0($t0)
	sw $t1, -4020($fp)
	lw $t0, -4000($fp)
	lw $t1, -4020($fp)
	add $t0, $t0, $t1
	sw $t0, -4024($fp)
	lw $t1, -4024($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label306
label306:
	li $t0, 63980
	sw $t0, -4028($fp)
	li $t0, 49123
	sw $t0, -4032($fp)
	lw $t0, -4028($fp)
	lw $t1, -4032($fp)
	sub $t0, $t0, $t1
	sw $t0, -4036($fp)
	lw $t0, -404($fp)
	sw $t0, -4040($fp)
	lw $t0, -4036($fp)
	lw $t1, -4040($fp)
	sub $t0, $t0, $t1
	sw $t0, -4044($fp)
	li $t0, 18716
	sw $t0, -4048($fp)
	lw $t1, -4044($fp)
	lw $t2, -4048($fp)
	beq $t1, $t2, label304
	j label305
label304:
	li $t0, 1
	sw $t0, -3996($fp)
label305:
	j label283
label282:
	lw $t0, 12($fp)
	sw $t0, -4052($fp)
	li $t0, 53198
	sw $t0, -4056($fp)
	li $t0, 34074
	sw $t0, -4060($fp)
	lw $t0, -4056($fp)
	lw $t1, -4060($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4064($fp)
	lw $t0, -560($fp)
	sw $t0, -4068($fp)
	lw $t0, -4064($fp)
	lw $t1, -4068($fp)
	mul $t0, $t0, $t1
	sw $t0, -4072($fp)
	lw $t0, -4052($fp)
	lw $t1, -4072($fp)
	sub $t0, $t0, $t1
	sw $t0, -4076($fp)
	lw $t1, -4076($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label308
label307:
	li $t0, 0
	sw $t0, -4080($fp)
	li $t0, 26748
	sw $t0, -4084($fp)
	li $t0, 20799
	sw $t0, -4088($fp)
	lw $t0, -4084($fp)
	lw $t1, -4088($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4092($fp)
	li $t0, 0
	lw $t1, -4092($fp)
	sub $t0, $t0, $t1
	sw $t0, -4096($fp)
	lw $t1, -4096($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label310
label310:
	li $t0, 1
	sw $t0, -4080($fp)
label311:
	lw $ra, -4($fp)
	lw $v0, -4080($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label308:
label283:
	addi $t0, $fp, -24
	sw $t0, -4100($fp)
	li $t0, 0
	sw $t0, -4104($fp)
	li $t0, 4
	lw $t1, -4104($fp)
	mul $t0, $t0, $t1
	sw $t0, -4108($fp)
	lw $t0, -4108($fp)
	lw $t1, -4100($fp)
	add $t0, $t0, $t1
	sw $t0, -4112($fp)
	lw $t0, -4112($fp)
	lw $t1, 0($t0)
	sw $t1, -4116($fp)
	lw $t0, -4116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -4120($fp)
	li $t0, 1
	sw $t0, -4124($fp)
	li $t0, 4
	lw $t1, -4124($fp)
	mul $t0, $t0, $t1
	sw $t0, -4128($fp)
	lw $t0, -4128($fp)
	lw $t1, -4120($fp)
	add $t0, $t0, $t1
	sw $t0, -4132($fp)
	lw $t0, -4132($fp)
	lw $t1, 0($t0)
	sw $t1, -4136($fp)
	lw $t0, -4136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -4140($fp)
	li $t0, 2
	sw $t0, -4144($fp)
	li $t0, 4
	lw $t1, -4144($fp)
	mul $t0, $t0, $t1
	sw $t0, -4148($fp)
	lw $t0, -4148($fp)
	lw $t1, -4140($fp)
	add $t0, $t0, $t1
	sw $t0, -4152($fp)
	lw $t0, -4152($fp)
	lw $t1, 0($t0)
	sw $t1, -4156($fp)
	lw $t0, -4156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -4160($fp)
	li $t0, 3
	sw $t0, -4164($fp)
	li $t0, 4
	lw $t1, -4164($fp)
	mul $t0, $t0, $t1
	sw $t0, -4168($fp)
	lw $t0, -4168($fp)
	lw $t1, -4160($fp)
	add $t0, $t0, $t1
	sw $t0, -4172($fp)
	lw $t0, -4172($fp)
	lw $t1, 0($t0)
	sw $t1, -4176($fp)
	lw $t0, -4176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -4180($fp)
	li $t0, 4
	sw $t0, -4184($fp)
	li $t0, 4
	lw $t1, -4184($fp)
	mul $t0, $t0, $t1
	sw $t0, -4188($fp)
	lw $t0, -4188($fp)
	lw $t1, -4180($fp)
	add $t0, $t0, $t1
	sw $t0, -4192($fp)
	lw $t0, -4192($fp)
	lw $t1, 0($t0)
	sw $t1, -4196($fp)
	lw $t0, -4196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -4200($fp)
	li $t0, 0
	sw $t0, -4204($fp)
	li $t0, 4
	lw $t1, -4204($fp)
	mul $t0, $t0, $t1
	sw $t0, -4208($fp)
	lw $t0, -4208($fp)
	lw $t1, -4200($fp)
	add $t0, $t0, $t1
	sw $t0, -4212($fp)
	lw $t0, -4212($fp)
	lw $t1, 0($t0)
	sw $t1, -4216($fp)
	lw $t0, -4216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -4220($fp)
	li $t0, 1
	sw $t0, -4224($fp)
	li $t0, 4
	lw $t1, -4224($fp)
	mul $t0, $t0, $t1
	sw $t0, -4228($fp)
	lw $t0, -4228($fp)
	lw $t1, -4220($fp)
	add $t0, $t0, $t1
	sw $t0, -4232($fp)
	lw $t0, -4232($fp)
	lw $t1, 0($t0)
	sw $t1, -4236($fp)
	lw $t0, -4236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -4240($fp)
	li $t0, 2
	sw $t0, -4244($fp)
	li $t0, 4
	lw $t1, -4244($fp)
	mul $t0, $t0, $t1
	sw $t0, -4248($fp)
	lw $t0, -4248($fp)
	lw $t1, -4240($fp)
	add $t0, $t0, $t1
	sw $t0, -4252($fp)
	lw $t0, -4252($fp)
	lw $t1, 0($t0)
	sw $t1, -4256($fp)
	lw $t0, -4256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -4260($fp)
	li $t0, 3
	sw $t0, -4264($fp)
	li $t0, 4
	lw $t1, -4264($fp)
	mul $t0, $t0, $t1
	sw $t0, -4268($fp)
	lw $t0, -4268($fp)
	lw $t1, -4260($fp)
	add $t0, $t0, $t1
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	lw $t1, 0($t0)
	sw $t1, -4276($fp)
	lw $t0, -4276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -4280($fp)
	li $t0, 4
	sw $t0, -4284($fp)
	li $t0, 4
	lw $t1, -4284($fp)
	mul $t0, $t0, $t1
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	lw $t1, -4280($fp)
	add $t0, $t0, $t1
	sw $t0, -4292($fp)
	lw $t0, -4292($fp)
	lw $t1, 0($t0)
	sw $t1, -4296($fp)
	lw $t0, -4296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -4300($fp)
	li $t0, 5
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
	lw $t0, -4316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -4320($fp)
	li $t0, 6
	sw $t0, -4324($fp)
	li $t0, 4
	lw $t1, -4324($fp)
	mul $t0, $t0, $t1
	sw $t0, -4328($fp)
	lw $t0, -4328($fp)
	lw $t1, -4320($fp)
	add $t0, $t0, $t1
	sw $t0, -4332($fp)
	lw $t0, -4332($fp)
	lw $t1, 0($t0)
	sw $t1, -4336($fp)
	lw $t0, -4336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -4340($fp)
	li $t0, 7
	sw $t0, -4344($fp)
	li $t0, 4
	lw $t1, -4344($fp)
	mul $t0, $t0, $t1
	sw $t0, -4348($fp)
	lw $t0, -4348($fp)
	lw $t1, -4340($fp)
	add $t0, $t0, $t1
	sw $t0, -4352($fp)
	lw $t0, -4352($fp)
	lw $t1, 0($t0)
	sw $t1, -4356($fp)
	lw $t0, -4356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -4360($fp)
	li $t0, 8
	sw $t0, -4364($fp)
	li $t0, 4
	lw $t1, -4364($fp)
	mul $t0, $t0, $t1
	sw $t0, -4368($fp)
	lw $t0, -4368($fp)
	lw $t1, -4360($fp)
	add $t0, $t0, $t1
	sw $t0, -4372($fp)
	lw $t0, -4372($fp)
	lw $t1, 0($t0)
	sw $t1, -4376($fp)
	lw $t0, -4376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -404($fp)
	sw $t0, -4380($fp)
	lw $t0, -4380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -416($fp)
	sw $t0, -4384($fp)
	lw $t0, -4384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -428($fp)
	sw $t0, -4388($fp)
	lw $t0, -4388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -440($fp)
	sw $t0, -4392($fp)
	lw $t0, -4392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -4396($fp)
	lw $t0, -4396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -464($fp)
	sw $t0, -4400($fp)
	lw $t0, -4400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	sw $t0, -4404($fp)
	lw $t0, -4404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -488($fp)
	sw $t0, -4408($fp)
	lw $t0, -4408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -4412($fp)
	lw $t0, -4412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -4416($fp)
	lw $t0, -4416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -4420($fp)
	lw $t0, -4420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -4424($fp)
	lw $t0, -4424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -4428($fp)
	lw $t0, -4428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -4432($fp)
	lw $t0, -4432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -4436($fp)
	lw $t0, -4436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -4440($fp)
	lw $ra, -4($fp)
	lw $v0, -4440($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -84
	li $t0, 52173
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 12665
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
	li $t0, 25706
	sw $t0, -44($fp)
	lw $t1, -44($fp)
	li $t2, 0
	bne $t1, $t2, label316
	j label313
label316:
	lw $t0, -24($fp)
	sw $t0, -48($fp)
	lw $t1, -48($fp)
	li $t2, 0
	bne $t1, $t2, label315
	j label313
label315:
	li $t0, 32881
	sw $t0, -52($fp)
	lw $t1, -52($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label313
label314:
	lw $t0, -24($fp)
	sw $t0, -56($fp)
	lw $t0, -24($fp)
	sw $t0, -60($fp)
	lw $t0, -56($fp)
	lw $t1, -60($fp)
	mul $t0, $t0, $t1
	sw $t0, -64($fp)
	lw $t1, -64($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label313
label312:
	li $t0, 1
	sw $t0, -40($fp)
label313:
	lw $t0, -40($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -68($fp)
	lw $ra, -4($fp)
	lw $v0, -68($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
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
	li $t0, 42549
	sw $t0, -80($fp)
	lw $t0, -12($fp)
	sw $t0, -84($fp)
	lw $t0, -80($fp)
	lw $t1, -84($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -88($fp)
	lw $ra, -4($fp)
	lw $v0, -88($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -84
	lw $t0, 12($fp)
	sw $t0, -8($fp)
	jal f6
	sw $v0, -12($fp)
	addi $sp, $sp, 4
	lw $t0, -8($fp)
	lw $t1, -12($fp)
	mul $t0, $t0, $t1
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -20($fp)
	li $t0, 0
	sw $t0, -24($fp)
	lw $t0, 4($fp)
	sw $t0, -28($fp)
	li $t0, 28842
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -36($fp)
	jal f6
	sw $v0, -40($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -28($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -36($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -40($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -44($fp)
	addi $sp, $sp, 16
	lw $t1, -44($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label319
label319:
	lw $t0, 4($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -52($fp)
	li $t0, 0
	sw $t0, -56($fp)
	li $t0, 23653
	sw $t0, -60($fp)
	lw $t0, 4($fp)
	sw $t0, -64($fp)
	lw $t1, -60($fp)
	lw $t2, -64($fp)
	bgt $t1, $t2, label321
	j label322
label321:
	li $t0, 1
	sw $t0, -56($fp)
label322:
	li $t0, 0
	sw $t0, -68($fp)
	li $t0, 47998
	sw $t0, -72($fp)
	lw $t1, -72($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label323
label323:
	li $t0, 1
	sw $t0, -68($fp)
label324:
	li $t0, 22638
	sw $t0, -76($fp)
	lw $t0, -68($fp)
	lw $t1, -76($fp)
	add $t0, $t0, $t1
	sw $t0, -80($fp)
	addi $sp, $sp, -4
	lw $t0, -52($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -56($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -80($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -84($fp)
	addi $sp, $sp, 16
	lw $t1, -84($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label318
label320:
	lw $t0, 4($fp)
	sw $t0, -88($fp)
	lw $t1, -88($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label318
label317:
	li $t0, 1
	sw $t0, -24($fp)
label318:
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
	addi $sp, $sp, -3520
	li $t0, 953
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	li $t0, 60125
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	li $t0, 6482
	sw $t0, -136($fp)
	addi $t0, $fp, -24
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
	li $t0, 3406
	sw $t0, -160($fp)
	addi $t0, $fp, -24
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
	li $t0, 64632
	sw $t0, -184($fp)
	addi $t0, $fp, -24
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
	li $t0, 45601
	sw $t0, -208($fp)
	addi $t0, $fp, -24
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
	li $t0, 50972
	sw $t0, -232($fp)
	addi $t0, $fp, -24
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
	li $t0, 38565
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	li $t0, 20769
	sw $t0, -268($fp)
	addi $t0, $fp, -60
	sw $t0, -272($fp)
	li $t0, 0
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
	li $t0, 36508
	sw $t0, -292($fp)
	addi $t0, $fp, -60
	sw $t0, -296($fp)
	li $t0, 1
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
	li $t0, 13743
	sw $t0, -316($fp)
	addi $t0, $fp, -60
	sw $t0, -320($fp)
	li $t0, 2
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
	li $t0, 4068
	sw $t0, -340($fp)
	addi $t0, $fp, -60
	sw $t0, -344($fp)
	li $t0, 3
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
	li $t0, 30862
	sw $t0, -364($fp)
	addi $t0, $fp, -60
	sw $t0, -368($fp)
	li $t0, 4
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
	li $t0, 62929
	sw $t0, -388($fp)
	addi $t0, $fp, -60
	sw $t0, -392($fp)
	li $t0, 5
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
	li $t0, 2512
	sw $t0, -412($fp)
	addi $t0, $fp, -60
	sw $t0, -416($fp)
	li $t0, 6
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
	li $t0, 14450
	sw $t0, -436($fp)
	addi $t0, $fp, -60
	sw $t0, -440($fp)
	li $t0, 7
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
	li $t0, 16109
	sw $t0, -460($fp)
	addi $t0, $fp, -60
	sw $t0, -464($fp)
	li $t0, 8
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
	li $t0, 55710
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	li $t0, 48524
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	li $t0, 42858
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	li $t0, 18006
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	li $t0, 3786
	sw $t0, -532($fp)
	addi $t0, $fp, -100
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
	li $t0, 29495
	sw $t0, -556($fp)
	addi $t0, $fp, -100
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
	li $t0, 30672
	sw $t0, -580($fp)
	addi $t0, $fp, -100
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
	li $t0, 29492
	sw $t0, -604($fp)
	addi $t0, $fp, -100
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
	li $t0, 62376
	sw $t0, -628($fp)
	addi $t0, $fp, -100
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
	li $t0, 7685
	sw $t0, -652($fp)
	addi $t0, $fp, -100
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
	li $t0, 58334
	sw $t0, -676($fp)
	addi $t0, $fp, -100
	sw $t0, -680($fp)
	li $t0, 6
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
	li $t0, 44839
	sw $t0, -700($fp)
	addi $t0, $fp, -100
	sw $t0, -704($fp)
	li $t0, 7
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
	li $t0, 30323
	sw $t0, -724($fp)
	addi $t0, $fp, -100
	sw $t0, -728($fp)
	li $t0, 8
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
	li $t0, 16451
	sw $t0, -748($fp)
	addi $t0, $fp, -100
	sw $t0, -752($fp)
	li $t0, 9
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
	li $t0, 45792
	sw $t0, -772($fp)
	addi $t0, $fp, -108
	sw $t0, -776($fp)
	li $t0, 0
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
	li $t0, 24912
	sw $t0, -796($fp)
	addi $t0, $fp, -108
	sw $t0, -800($fp)
	li $t0, 1
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
	lw $t0, -116($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -128($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -828($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -848($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -868($fp)
	li $t0, 2
	sw $t0, -872($fp)
	li $t0, 4
	lw $t1, -872($fp)
	mul $t0, $t0, $t1
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	lw $t1, -868($fp)
	add $t0, $t0, $t1
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	lw $t1, 0($t0)
	sw $t1, -884($fp)
	lw $t0, -884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -888($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -908($fp)
	li $t0, 4
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
	lw $t0, -260($fp)
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -932($fp)
	li $t0, 0
	sw $t0, -936($fp)
	li $t0, 4
	lw $t1, -936($fp)
	mul $t0, $t0, $t1
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	lw $t1, -932($fp)
	add $t0, $t0, $t1
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	lw $t1, 0($t0)
	sw $t1, -948($fp)
	lw $t0, -948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -952($fp)
	li $t0, 1
	sw $t0, -956($fp)
	li $t0, 4
	lw $t1, -956($fp)
	mul $t0, $t0, $t1
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	lw $t1, -952($fp)
	add $t0, $t0, $t1
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	lw $t1, 0($t0)
	sw $t1, -968($fp)
	lw $t0, -968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -972($fp)
	li $t0, 2
	sw $t0, -976($fp)
	li $t0, 4
	lw $t1, -976($fp)
	mul $t0, $t0, $t1
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	lw $t1, -972($fp)
	add $t0, $t0, $t1
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	lw $t1, 0($t0)
	sw $t1, -988($fp)
	lw $t0, -988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -992($fp)
	li $t0, 3
	sw $t0, -996($fp)
	li $t0, 4
	lw $t1, -996($fp)
	mul $t0, $t0, $t1
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	lw $t1, -992($fp)
	add $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	lw $t1, 0($t0)
	sw $t1, -1008($fp)
	lw $t0, -1008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1012($fp)
	li $t0, 4
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
	addi $t0, $fp, -60
	sw $t0, -1032($fp)
	li $t0, 5
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
	addi $t0, $fp, -60
	sw $t0, -1052($fp)
	li $t0, 6
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
	addi $t0, $fp, -60
	sw $t0, -1072($fp)
	li $t0, 7
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
	addi $t0, $fp, -60
	sw $t0, -1092($fp)
	li $t0, 8
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
	lw $t0, -488($fp)
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -1128($fp)
	li $t0, 0
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
	addi $t0, $fp, -100
	sw $t0, -1148($fp)
	li $t0, 1
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
	addi $t0, $fp, -100
	sw $t0, -1168($fp)
	li $t0, 2
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
	addi $t0, $fp, -100
	sw $t0, -1188($fp)
	li $t0, 3
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
	addi $t0, $fp, -100
	sw $t0, -1208($fp)
	li $t0, 4
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
	addi $t0, $fp, -100
	sw $t0, -1228($fp)
	li $t0, 5
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
	addi $t0, $fp, -100
	sw $t0, -1248($fp)
	li $t0, 6
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
	li $t0, 7
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
	li $t0, 8
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
	li $t0, 9
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
	addi $t0, $fp, -108
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
	lw $t0, -1344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -1348($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -1368($fp)
	addi $t0, $fp, -108
	sw $t0, -1372($fp)
	li $t0, 0
	sw $t0, -1376($fp)
	li $t0, 4
	lw $t1, -1376($fp)
	mul $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	lw $t1, -1372($fp)
	add $t0, $t0, $t1
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	lw $t1, 0($t0)
	sw $t1, -1388($fp)
	lw $t1, -1388($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label326
label325:
	li $t0, 1
	sw $t0, -1368($fp)
label326:
	lw $ra, -4($fp)
	lw $v0, -1368($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1392($fp)
	addi $t0, $fp, -108
	sw $t0, -1396($fp)
	li $t0, 1
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
	li $t0, 0
	lw $t1, -1412($fp)
	sub $t0, $t0, $t1
	sw $t0, -1416($fp)
	lw $t1, -1416($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label327
label327:
	li $t0, 1
	sw $t0, -1392($fp)
label328:
label329:
	li $t0, 62574
	sw $t0, -1420($fp)
	lw $t0, -488($fp)
	sw $t0, -1424($fp)
	li $t0, 0
	lw $t1, -1424($fp)
	sub $t0, $t0, $t1
	sw $t0, -1428($fp)
	lw $t0, -1420($fp)
	lw $t1, -1428($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1432($fp)
	lw $t0, -1432($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -1436($fp)
	lw $t1, -1436($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label331
label330:
	li $t0, 0
	sw $t0, -1440($fp)
	addi $t0, $fp, -60
	sw $t0, -1444($fp)
	li $t0, 0
	sw $t0, -1448($fp)
	li $t0, 23768
	sw $t0, -1452($fp)
	li $t0, 5608
	sw $t0, -1456($fp)
	lw $t1, -1452($fp)
	lw $t2, -1456($fp)
	bne $t1, $t2, label334
	j label335
label334:
	li $t0, 1
	sw $t0, -1448($fp)
label335:
	li $t0, 4
	lw $t1, -1448($fp)
	mul $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	lw $t1, -1444($fp)
	add $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	lw $t1, 0($t0)
	sw $t1, -1468($fp)
	lw $t0, -524($fp)
	sw $t0, -1472($fp)
	lw $t0, -1468($fp)
	lw $t1, -1472($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1476($fp)
	addi $t0, $fp, -108
	sw $t0, -1480($fp)
	lw $t0, -116($fp)
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
	li $t0, 10781
	sw $t0, -1500($fp)
	lw $t0, -1496($fp)
	lw $t1, -1500($fp)
	sub $t0, $t0, $t1
	sw $t0, -1504($fp)
	jal f6
	sw $v0, -1508($fp)
	addi $sp, $sp, 4
	lw $t0, -1504($fp)
	lw $t1, -1508($fp)
	sub $t0, $t0, $t1
	sw $t0, -1512($fp)
	lw $t1, -1476($fp)
	lw $t2, -1512($fp)
	ble $t1, $t2, label332
	j label333
label332:
	li $t0, 1
	sw $t0, -1440($fp)
label333:
	lw $ra, -4($fp)
	lw $v0, -1440($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label329
label331:
	li $t0, 0
	sw $t0, -1516($fp)
	li $t0, 0
	sw $t0, -1520($fp)
	li $t0, 0
	sw $t0, -1524($fp)
	addi $t0, $fp, -60
	sw $t0, -1528($fp)
	lw $t0, -524($fp)
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
	lw $t0, -128($fp)
	sw $t0, -1548($fp)
	lw $t1, -1544($fp)
	lw $t2, -1548($fp)
	bne $t1, $t2, label341
	j label342
label341:
	li $t0, 1
	sw $t0, -1524($fp)
label342:
	li $t0, 27836
	sw $t0, -1552($fp)
	lw $t1, -1524($fp)
	lw $t2, -1552($fp)
	bne $t1, $t2, label339
	j label340
label339:
	li $t0, 1
	sw $t0, -1520($fp)
label340:
	li $t0, 0
	sw $t0, -1556($fp)
	li $t0, 33908
	sw $t0, -1560($fp)
	lw $t1, -1560($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label345
label346:
	li $t0, 1605
	sw $t0, -1564($fp)
	lw $t1, -1564($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label345
label345:
	lw $t0, -128($fp)
	sw $t0, -1568($fp)
	lw $t1, -1568($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label344
label343:
	li $t0, 1
	sw $t0, -1556($fp)
label344:
	li $t0, 0
	sw $t0, -1572($fp)
	li $t0, 0
	sw $t0, -1576($fp)
	addi $t0, $fp, -60
	sw $t0, -1580($fp)
	lw $t0, -524($fp)
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
	lw $t1, -1596($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label349
label349:
	li $t0, 1
	sw $t0, -1576($fp)
label350:
	li $t0, 0
	sw $t0, -1600($fp)
	lw $t0, -116($fp)
	sw $t0, -1604($fp)
	li $t0, 50920
	sw $t0, -1608($fp)
	lw $t0, -1604($fp)
	lw $t1, -1608($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1612($fp)
	lw $t1, -1612($fp)
	li $t2, 0
	bne $t1, $t2, label353
	j label352
label353:
	li $t0, 24283
	sw $t0, -1616($fp)
	lw $t1, -1616($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label352
label351:
	li $t0, 1
	sw $t0, -1600($fp)
label352:
	li $t0, 0
	sw $t0, -1620($fp)
	jal f8
	sw $v0, -1624($fp)
	addi $sp, $sp, 4
	lw $t1, -1624($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label354
label354:
	li $t0, 1
	sw $t0, -1620($fp)
label355:
	addi $sp, $sp, -4
	lw $t0, -1576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1620($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1628($fp)
	addi $sp, $sp, 16
	li $t0, 20522
	sw $t0, -1632($fp)
	lw $t1, -1628($fp)
	lw $t2, -1632($fp)
	ble $t1, $t2, label347
	j label348
label347:
	li $t0, 1
	sw $t0, -1572($fp)
label348:
	li $t0, 0
	sw $t0, -1636($fp)
	li $t0, 30348
	sw $t0, -1640($fp)
	li $t0, 0
	lw $t1, -1640($fp)
	sub $t0, $t0, $t1
	sw $t0, -1644($fp)
	lw $t1, -1644($fp)
	li $t2, 0
	bne $t1, $t2, label358
	j label357
label358:
	lw $t0, -524($fp)
	sw $t0, -1648($fp)
	lw $t1, -1648($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label357
label356:
	li $t0, 1
	sw $t0, -1636($fp)
label357:
	li $t0, 8174
	sw $t0, -1652($fp)
	li $t0, 0
	sw $t0, -1656($fp)
	li $t0, 36470
	sw $t0, -1660($fp)
	li $t0, 0
	lw $t1, -1660($fp)
	sub $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t1, -1664($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label360
label361:
	lw $t0, -524($fp)
	sw $t0, -1668($fp)
	lw $t1, -1668($fp)
	li $t2, 0
	bne $t1, $t2, label359
	j label360
label359:
	li $t0, 1
	sw $t0, -1656($fp)
label360:
	addi $sp, $sp, -4
	lw $t0, -1556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1656($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1672($fp)
	addi $sp, $sp, 24
	lw $t1, -1520($fp)
	lw $t2, -1672($fp)
	beq $t1, $t2, label338
	j label337
label338:
	addi $t0, $fp, -24
	sw $t0, -1676($fp)
	addi $t0, $fp, -24
	sw $t0, -1680($fp)
	li $t0, 0
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
	li $t0, 4
	lw $t1, -1696($fp)
	mul $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	lw $t1, -1676($fp)
	add $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	lw $t1, 0($t0)
	sw $t1, -1708($fp)
	lw $t1, -1708($fp)
	li $t2, 0
	bne $t1, $t2, label336
	j label337
label336:
	li $t0, 1
	sw $t0, -1516($fp)
label337:
	li $t0, 0
	sw $t0, -1712($fp)
	li $t0, 31101
	sw $t0, -1716($fp)
	addi $t0, $fp, -108
	sw $t0, -1720($fp)
	lw $t0, -512($fp)
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
	lw $t0, -260($fp)
	sw $t0, -1740($fp)
	lw $t0, -1736($fp)
	lw $t1, -1740($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1744($fp)
	lw $t1, -1716($fp)
	lw $t2, -1744($fp)
	blt $t1, $t2, label362
	j label364
label364:
	addi $t0, $fp, -100
	sw $t0, -1748($fp)
	lw $t0, -500($fp)
	sw $t0, -1752($fp)
	lw $t0, -524($fp)
	sw $t0, -1756($fp)
	lw $t0, -1752($fp)
	lw $t1, -1756($fp)
	mul $t0, $t0, $t1
	sw $t0, -1760($fp)
	li $t0, 4
	lw $t1, -1760($fp)
	mul $t0, $t0, $t1
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	lw $t1, -1748($fp)
	add $t0, $t0, $t1
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	lw $t1, 0($t0)
	sw $t1, -1772($fp)
	lw $t1, -1772($fp)
	li $t2, 0
	bne $t1, $t2, label362
	j label363
label362:
	li $t0, 1
	sw $t0, -1712($fp)
label363:
	li $t0, 3665
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	sw $t0, -1816($fp)
	li $t0, 1650
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	sw $t0, -1828($fp)
	li $t0, 27941
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	sw $t0, -1840($fp)
	li $t0, 11350
	sw $t0, -1844($fp)
	addi $t0, $fp, -1804
	sw $t0, -1848($fp)
	li $t0, 0
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1856($fp)
	lw $t0, -1848($fp)
	lw $t1, -1856($fp)
	add $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $t0, -1844($fp)
	lw $t1, -1860($fp)
	sw $t0, 0($t1)
	lw $t0, -1860($fp)
	lw $t1, 0($t0)
	sw $t1, -1864($fp)
	li $t0, 59985
	sw $t0, -1868($fp)
	addi $t0, $fp, -1804
	sw $t0, -1872($fp)
	li $t0, 1
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1880($fp)
	lw $t0, -1872($fp)
	lw $t1, -1880($fp)
	add $t0, $t0, $t1
	sw $t0, -1884($fp)
	lw $t0, -1868($fp)
	lw $t1, -1884($fp)
	sw $t0, 0($t1)
	lw $t0, -1884($fp)
	lw $t1, 0($t0)
	sw $t1, -1888($fp)
	li $t0, 7244
	sw $t0, -1892($fp)
	addi $t0, $fp, -1804
	sw $t0, -1896($fp)
	li $t0, 2
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1904($fp)
	lw $t0, -1896($fp)
	lw $t1, -1904($fp)
	add $t0, $t0, $t1
	sw $t0, -1908($fp)
	lw $t0, -1892($fp)
	lw $t1, -1908($fp)
	sw $t0, 0($t1)
	lw $t0, -1908($fp)
	lw $t1, 0($t0)
	sw $t1, -1912($fp)
	li $t0, 41673
	sw $t0, -1916($fp)
	addi $t0, $fp, -1804
	sw $t0, -1920($fp)
	li $t0, 3
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t0, -1920($fp)
	lw $t1, -1928($fp)
	add $t0, $t0, $t1
	sw $t0, -1932($fp)
	lw $t0, -1916($fp)
	lw $t1, -1932($fp)
	sw $t0, 0($t1)
	lw $t0, -1932($fp)
	lw $t1, 0($t0)
	sw $t1, -1936($fp)
	li $t0, 10900
	sw $t0, -1940($fp)
	addi $t0, $fp, -1804
	sw $t0, -1944($fp)
	li $t0, 4
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $t0, -1944($fp)
	lw $t1, -1952($fp)
	add $t0, $t0, $t1
	sw $t0, -1956($fp)
	lw $t0, -1940($fp)
	lw $t1, -1956($fp)
	sw $t0, 0($t1)
	lw $t0, -1956($fp)
	lw $t1, 0($t0)
	sw $t1, -1960($fp)
	li $t0, 53037
	sw $t0, -1964($fp)
	addi $t0, $fp, -1804
	sw $t0, -1968($fp)
	li $t0, 5
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $t0, -1968($fp)
	lw $t1, -1976($fp)
	add $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, -1964($fp)
	lw $t1, -1980($fp)
	sw $t0, 0($t1)
	lw $t0, -1980($fp)
	lw $t1, 0($t0)
	sw $t1, -1984($fp)
	li $t0, 1050
	sw $t0, -1988($fp)
	addi $t0, $fp, -1804
	sw $t0, -1992($fp)
	li $t0, 6
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $t0, -1992($fp)
	lw $t1, -2000($fp)
	add $t0, $t0, $t1
	sw $t0, -2004($fp)
	lw $t0, -1988($fp)
	lw $t1, -2004($fp)
	sw $t0, 0($t1)
	lw $t0, -2004($fp)
	lw $t1, 0($t0)
	sw $t1, -2008($fp)
	li $t0, 33834
	sw $t0, -2012($fp)
	addi $t0, $fp, -1804
	sw $t0, -2016($fp)
	li $t0, 7
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2024($fp)
	lw $t0, -2016($fp)
	lw $t1, -2024($fp)
	add $t0, $t0, $t1
	sw $t0, -2028($fp)
	lw $t0, -2012($fp)
	lw $t1, -2028($fp)
	sw $t0, 0($t1)
	lw $t0, -2028($fp)
	lw $t1, 0($t0)
	sw $t1, -2032($fp)
	li $t0, 36700
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	sw $t0, -2044($fp)
	li $t0, 25058
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	sw $t0, -2052($fp)
	lw $t0, -2052($fp)
	sw $t0, -2056($fp)
	li $t0, 36832
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	sw $t0, -2068($fp)
	li $t0, 5799
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	sw $t0, -2080($fp)
	lw $t0, -1812($fp)
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1824($fp)
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1836($fp)
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1804
	sw $t0, -2096($fp)
	li $t0, 0
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
	addi $t0, $fp, -1804
	sw $t0, -2116($fp)
	li $t0, 1
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
	addi $t0, $fp, -1804
	sw $t0, -2136($fp)
	li $t0, 2
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
	addi $t0, $fp, -1804
	sw $t0, -2156($fp)
	li $t0, 3
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
	addi $t0, $fp, -1804
	sw $t0, -2176($fp)
	li $t0, 4
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
	addi $t0, $fp, -1804
	sw $t0, -2196($fp)
	li $t0, 5
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
	addi $t0, $fp, -1804
	sw $t0, -2216($fp)
	li $t0, 6
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
	addi $t0, $fp, -1804
	sw $t0, -2236($fp)
	li $t0, 7
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
	lw $t0, -2040($fp)
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2052($fp)
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2064($fp)
	sw $t0, -2264($fp)
	lw $t0, -2264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2076($fp)
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 22096
	sw $t0, -2272($fp)
	lw $ra, -4($fp)
	lw $v0, -2272($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -2276($fp)
	addi $t0, $fp, -1804
	sw $t0, -2280($fp)
	lw $t0, -1836($fp)
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -2288($fp)
	li $t0, 4
	lw $t1, -2288($fp)
	mul $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	lw $t1, -2280($fp)
	add $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	lw $t1, 0($t0)
	sw $t1, -2300($fp)
	lw $t1, -2300($fp)
	li $t2, 0
	bne $t1, $t2, label369
	j label368
label368:
	li $t0, 1
	sw $t0, -2276($fp)
label369:
	addi $t0, $fp, -60
	sw $t0, -2304($fp)
	lw $t0, -1824($fp)
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
	li $t0, 0
	lw $t1, -2320($fp)
	sub $t0, $t0, $t1
	sw $t0, -2324($fp)
	lw $t0, -2276($fp)
	lw $t1, -2324($fp)
	sub $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t1, -2328($fp)
	li $t2, 0
	bne $t1, $t2, label365
	j label366
label365:
	lw $t0, -2064($fp)
	sw $t0, -2332($fp)
	lw $t1, -2332($fp)
	li $t2, 0
	bne $t1, $t2, label370
	j label373
label373:
	lw $t0, -128($fp)
	sw $t0, -2336($fp)
	jal f6
	sw $v0, -2340($fp)
	addi $sp, $sp, 4
	lw $t0, -2336($fp)
	lw $t1, -2340($fp)
	mul $t0, $t0, $t1
	sw $t0, -2344($fp)
	li $t0, 0
	lw $t1, -2344($fp)
	sub $t0, $t0, $t1
	sw $t0, -2348($fp)
	li $t0, 0
	lw $t1, -2348($fp)
	sub $t0, $t0, $t1
	sw $t0, -2352($fp)
	lw $t1, -2352($fp)
	li $t2, 0
	bne $t1, $t2, label370
	j label371
label370:
	li $t0, 0
	sw $t0, -2356($fp)
	li $t0, 60600
	sw $t0, -2360($fp)
	lw $t1, -2360($fp)
	li $t2, 0
	bne $t1, $t2, label378
	j label377
label377:
	li $t0, 1
	sw $t0, -2356($fp)
label378:
	addi $t0, $fp, -108
	sw $t0, -2364($fp)
	li $t0, 0
	sw $t0, -2368($fp)
	li $t0, 11407
	sw $t0, -2372($fp)
	lw $t1, -2372($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label381
label381:
	lw $t0, -1812($fp)
	sw $t0, -2376($fp)
	lw $t1, -2376($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label380
label379:
	li $t0, 1
	sw $t0, -2368($fp)
label380:
	li $t0, 4
	lw $t1, -2368($fp)
	mul $t0, $t0, $t1
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	lw $t1, -2364($fp)
	add $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	lw $t1, 0($t0)
	sw $t1, -2388($fp)
	lw $t0, -2356($fp)
	lw $t1, -2388($fp)
	mul $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t1, -2392($fp)
	li $t2, 0
	bne $t1, $t2, label374
	j label375
label374:
label382:
	lw $t0, -2076($fp)
	sw $t0, -2396($fp)
	li $t0, 32877
	sw $t0, -2400($fp)
	lw $t0, -2396($fp)
	lw $t1, -2400($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2404($fp)
	lw $t0, -116($fp)
	sw $t0, -2408($fp)
	li $t0, 22900
	sw $t0, -2412($fp)
	lw $t0, -2408($fp)
	lw $t1, -2412($fp)
	mul $t0, $t0, $t1
	sw $t0, -2416($fp)
	li $t0, 0
	lw $t1, -2416($fp)
	sub $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t1, -2404($fp)
	lw $t2, -2420($fp)
	blt $t1, $t2, label385
	j label384
label385:
	li $t0, 47878
	sw $t0, -2424($fp)
	li $t0, 0
	lw $t1, -2424($fp)
	sub $t0, $t0, $t1
	sw $t0, -2428($fp)
	li $t0, 0
	lw $t1, -2428($fp)
	sub $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t1, -2432($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label383
label383:
	li $t0, 0
	sw $t0, -2436($fp)
	lw $t0, -2052($fp)
	sw $t0, -2440($fp)
	lw $t0, -260($fp)
	sw $t0, -2444($fp)
	lw $t1, -2440($fp)
	lw $t2, -2444($fp)
	beq $t1, $t2, label386
	j label387
label386:
	li $t0, 1
	sw $t0, -2436($fp)
label387:
	j label382
label384:
	j label376
label375:
	li $t0, 0
	sw $t0, -2448($fp)
	lw $t0, -128($fp)
	sw $t0, -2452($fp)
	li $t0, 0
	sw $t0, -2456($fp)
	li $t0, 41051
	sw $t0, -2460($fp)
	lw $t1, -2460($fp)
	li $t2, 0
	bne $t1, $t2, label392
	j label391
label391:
	li $t0, 1
	sw $t0, -2456($fp)
label392:
	lw $t0, -128($fp)
	sw $t0, -2464($fp)
	lw $t0, -2456($fp)
	lw $t1, -2464($fp)
	add $t0, $t0, $t1
	sw $t0, -2468($fp)
	lw $t1, -2452($fp)
	lw $t2, -2468($fp)
	ble $t1, $t2, label390
	j label389
label390:
	li $t0, 53248
	sw $t0, -2472($fp)
	jal f8
	sw $v0, -2476($fp)
	addi $sp, $sp, 4
	lw $t1, -2472($fp)
	lw $t2, -2476($fp)
	bge $t1, $t2, label388
	j label389
label388:
	li $t0, 1
	sw $t0, -2448($fp)
label389:
label376:
	j label372
label371:
label393:
	lw $t0, -1836($fp)
	sw $t0, -2480($fp)
	li $t0, 0
	sw $t0, -2484($fp)
	li $t0, 32505
	sw $t0, -2488($fp)
	lw $t0, 12($fp)
	sw $t0, -2492($fp)
	lw $t0, -2488($fp)
	lw $t1, -2492($fp)
	sub $t0, $t0, $t1
	sw $t0, -2496($fp)
	lw $t1, -2496($fp)
	li $t2, 0
	bne $t1, $t2, label398
	j label397
label398:
	li $t0, 50429
	sw $t0, -2500($fp)
	lw $t1, -2500($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label397
label396:
	li $t0, 1
	sw $t0, -2484($fp)
label397:
	li $t0, 0
	sw $t0, -2504($fp)
	lw $t0, -1824($fp)
	sw $t0, -2508($fp)
	li $t0, 0
	sw $t0, -2512($fp)
	li $t0, 39329
	sw $t0, -2516($fp)
	lw $t0, -260($fp)
	sw $t0, -2520($fp)
	lw $t1, -2516($fp)
	lw $t2, -2520($fp)
	bne $t1, $t2, label401
	j label403
label403:
	lw $t0, 8($fp)
	sw $t0, -2524($fp)
	lw $t1, -2524($fp)
	li $t2, 0
	bne $t1, $t2, label401
	j label402
label401:
	li $t0, 1
	sw $t0, -2512($fp)
label402:
	li $t0, 0
	sw $t0, -2528($fp)
	lw $t0, -2040($fp)
	sw $t0, -2532($fp)
	lw $t1, -2532($fp)
	li $t2, 0
	bne $t1, $t2, label405
	j label404
label404:
	li $t0, 1
	sw $t0, -2528($fp)
label405:
	li $t0, 0
	lw $t1, -2528($fp)
	sub $t0, $t0, $t1
	sw $t0, -2536($fp)
	li $t0, 0
	sw $t0, -2540($fp)
	li $t0, 46764
	sw $t0, -2544($fp)
	lw $t1, -2544($fp)
	li $t2, 0
	bne $t1, $t2, label406
	j label408
label408:
	lw $t0, -260($fp)
	sw $t0, -2548($fp)
	lw $t1, -2548($fp)
	li $t2, 0
	bne $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -2540($fp)
label407:
	addi $sp, $sp, -4
	lw $t0, -2512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2540($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2552($fp)
	addi $sp, $sp, 16
	lw $t0, -524($fp)
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -2560($fp)
	li $t0, 0
	sw $t0, -2564($fp)
	li $t0, 0
	sw $t0, -2568($fp)
	lw $t0, -524($fp)
	sw $t0, -2572($fp)
	li $t0, 1404
	sw $t0, -2576($fp)
	lw $t1, -2572($fp)
	lw $t2, -2576($fp)
	bgt $t1, $t2, label411
	j label412
label411:
	li $t0, 1
	sw $t0, -2568($fp)
label412:
	lw $t0, -488($fp)
	sw $t0, -2580($fp)
	lw $t1, -2568($fp)
	lw $t2, -2580($fp)
	blt $t1, $t2, label409
	j label410
label409:
	li $t0, 1
	sw $t0, -2564($fp)
label410:
	jal f8
	sw $v0, -2584($fp)
	addi $sp, $sp, 4
	li $t0, 1635
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -2592($fp)
	addi $sp, $sp, -4
	lw $t0, -2552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2592($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2596($fp)
	addi $sp, $sp, 24
	lw $t0, -524($fp)
	sw $t0, -2600($fp)
	lw $t0, -2596($fp)
	lw $t1, -2600($fp)
	sub $t0, $t0, $t1
	sw $t0, -2604($fp)
	li $t0, 8235
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -2612($fp)
	addi $sp, $sp, -4
	lw $t0, -2508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2612($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2616($fp)
	addi $sp, $sp, 16
	lw $t1, -2616($fp)
	li $t2, 0
	bne $t1, $t2, label400
	j label399
label399:
	li $t0, 1
	sw $t0, -2504($fp)
label400:
	addi $sp, $sp, -4
	lw $t0, -2480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2504($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2620($fp)
	addi $sp, $sp, 16
	li $t0, 40980
	sw $t0, -2624($fp)
	lw $t0, -2620($fp)
	lw $t1, -2624($fp)
	mul $t0, $t0, $t1
	sw $t0, -2628($fp)
	li $t0, 0
	sw $t0, -2632($fp)
	lw $t0, -128($fp)
	sw $t0, -2636($fp)
	lw $t1, -2636($fp)
	li $t2, 0
	bne $t1, $t2, label413
	j label414
label413:
	li $t0, 1
	sw $t0, -2632($fp)
label414:
	addi $t0, $fp, -24
	sw $t0, -2640($fp)
	li $t0, 2
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
	li $t0, 0
	lw $t1, -2656($fp)
	sub $t0, $t0, $t1
	sw $t0, -2660($fp)
	addi $sp, $sp, -4
	lw $t0, -2628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2660($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2664($fp)
	addi $sp, $sp, 16
	lw $t0, -500($fp)
	sw $t0, -2668($fp)
	lw $t0, -2664($fp)
	lw $t1, -2668($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2672($fp)
	lw $t1, -2672($fp)
	li $t2, 0
	bne $t1, $t2, label394
	j label395
label394:
	li $t0, 0
	sw $t0, -2676($fp)
	li $t0, 60447
	sw $t0, -2680($fp)
	li $t0, 0
	lw $t1, -2680($fp)
	sub $t0, $t0, $t1
	sw $t0, -2684($fp)
	li $t0, 0
	lw $t1, -2684($fp)
	sub $t0, $t0, $t1
	sw $t0, -2688($fp)
	li $t0, 61779
	sw $t0, -2692($fp)
	lw $t1, -2688($fp)
	lw $t2, -2692($fp)
	bne $t1, $t2, label415
	j label416
label415:
	li $t0, 1
	sw $t0, -2676($fp)
label416:
	j label393
label395:
label372:
label366:
	lw $t0, -1812($fp)
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1824($fp)
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1836($fp)
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1804
	sw $t0, -2708($fp)
	li $t0, 0
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
	addi $t0, $fp, -1804
	sw $t0, -2728($fp)
	li $t0, 1
	sw $t0, -2732($fp)
	li $t0, 4
	lw $t1, -2732($fp)
	mul $t0, $t0, $t1
	sw $t0, -2736($fp)
	lw $t0, -2736($fp)
	lw $t1, -2728($fp)
	add $t0, $t0, $t1
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	lw $t1, 0($t0)
	sw $t1, -2744($fp)
	lw $t0, -2744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1804
	sw $t0, -2748($fp)
	li $t0, 2
	sw $t0, -2752($fp)
	li $t0, 4
	lw $t1, -2752($fp)
	mul $t0, $t0, $t1
	sw $t0, -2756($fp)
	lw $t0, -2756($fp)
	lw $t1, -2748($fp)
	add $t0, $t0, $t1
	sw $t0, -2760($fp)
	lw $t0, -2760($fp)
	lw $t1, 0($t0)
	sw $t1, -2764($fp)
	lw $t0, -2764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1804
	sw $t0, -2768($fp)
	li $t0, 3
	sw $t0, -2772($fp)
	li $t0, 4
	lw $t1, -2772($fp)
	mul $t0, $t0, $t1
	sw $t0, -2776($fp)
	lw $t0, -2776($fp)
	lw $t1, -2768($fp)
	add $t0, $t0, $t1
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	lw $t1, 0($t0)
	sw $t1, -2784($fp)
	lw $t0, -2784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1804
	sw $t0, -2788($fp)
	li $t0, 4
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
	lw $t0, -2804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1804
	sw $t0, -2808($fp)
	li $t0, 5
	sw $t0, -2812($fp)
	li $t0, 4
	lw $t1, -2812($fp)
	mul $t0, $t0, $t1
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	lw $t1, -2808($fp)
	add $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	lw $t1, 0($t0)
	sw $t1, -2824($fp)
	lw $t0, -2824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1804
	sw $t0, -2828($fp)
	li $t0, 6
	sw $t0, -2832($fp)
	li $t0, 4
	lw $t1, -2832($fp)
	mul $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	lw $t1, -2828($fp)
	add $t0, $t0, $t1
	sw $t0, -2840($fp)
	lw $t0, -2840($fp)
	lw $t1, 0($t0)
	sw $t1, -2844($fp)
	lw $t0, -2844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1804
	sw $t0, -2848($fp)
	li $t0, 7
	sw $t0, -2852($fp)
	li $t0, 4
	lw $t1, -2852($fp)
	mul $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	lw $t1, -2848($fp)
	add $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	lw $t1, 0($t0)
	sw $t1, -2864($fp)
	lw $t0, -2864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2040($fp)
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2052($fp)
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2064($fp)
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2076($fp)
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 35429
	sw $t0, -2884($fp)
	lw $t0, 4($fp)
	sw $t0, -2888($fp)
	lw $t0, -2884($fp)
	lw $t1, -2888($fp)
	mul $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t0, -524($fp)
	sw $t0, -2896($fp)
	lw $t0, -2892($fp)
	lw $t1, -2896($fp)
	add $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $ra, -4($fp)
	lw $v0, -2900($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -116($fp)
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -128($fp)
	sw $t0, -2908($fp)
	lw $t0, -2908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -2912($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -2932($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -2952($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -2972($fp)
	li $t0, 3
	sw $t0, -2976($fp)
	li $t0, 4
	lw $t1, -2976($fp)
	mul $t0, $t0, $t1
	sw $t0, -2980($fp)
	lw $t0, -2980($fp)
	lw $t1, -2972($fp)
	add $t0, $t0, $t1
	sw $t0, -2984($fp)
	lw $t0, -2984($fp)
	lw $t1, 0($t0)
	sw $t1, -2988($fp)
	lw $t0, -2988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -2992($fp)
	li $t0, 4
	sw $t0, -2996($fp)
	li $t0, 4
	lw $t1, -2996($fp)
	mul $t0, $t0, $t1
	sw $t0, -3000($fp)
	lw $t0, -3000($fp)
	lw $t1, -2992($fp)
	add $t0, $t0, $t1
	sw $t0, -3004($fp)
	lw $t0, -3004($fp)
	lw $t1, 0($t0)
	sw $t1, -3008($fp)
	lw $t0, -3008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -260($fp)
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3016($fp)
	li $t0, 0
	sw $t0, -3020($fp)
	li $t0, 4
	lw $t1, -3020($fp)
	mul $t0, $t0, $t1
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	lw $t1, -3016($fp)
	add $t0, $t0, $t1
	sw $t0, -3028($fp)
	lw $t0, -3028($fp)
	lw $t1, 0($t0)
	sw $t1, -3032($fp)
	lw $t0, -3032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3036($fp)
	li $t0, 1
	sw $t0, -3040($fp)
	li $t0, 4
	lw $t1, -3040($fp)
	mul $t0, $t0, $t1
	sw $t0, -3044($fp)
	lw $t0, -3044($fp)
	lw $t1, -3036($fp)
	add $t0, $t0, $t1
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	lw $t1, 0($t0)
	sw $t1, -3052($fp)
	lw $t0, -3052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3056($fp)
	li $t0, 2
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
	lw $t0, -3072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3076($fp)
	li $t0, 3
	sw $t0, -3080($fp)
	li $t0, 4
	lw $t1, -3080($fp)
	mul $t0, $t0, $t1
	sw $t0, -3084($fp)
	lw $t0, -3084($fp)
	lw $t1, -3076($fp)
	add $t0, $t0, $t1
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	lw $t1, 0($t0)
	sw $t1, -3092($fp)
	lw $t0, -3092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3096($fp)
	li $t0, 4
	sw $t0, -3100($fp)
	li $t0, 4
	lw $t1, -3100($fp)
	mul $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	lw $t1, -3096($fp)
	add $t0, $t0, $t1
	sw $t0, -3108($fp)
	lw $t0, -3108($fp)
	lw $t1, 0($t0)
	sw $t1, -3112($fp)
	lw $t0, -3112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3116($fp)
	li $t0, 5
	sw $t0, -3120($fp)
	li $t0, 4
	lw $t1, -3120($fp)
	mul $t0, $t0, $t1
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	lw $t1, -3116($fp)
	add $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	lw $t1, 0($t0)
	sw $t1, -3132($fp)
	lw $t0, -3132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3136($fp)
	li $t0, 6
	sw $t0, -3140($fp)
	li $t0, 4
	lw $t1, -3140($fp)
	mul $t0, $t0, $t1
	sw $t0, -3144($fp)
	lw $t0, -3144($fp)
	lw $t1, -3136($fp)
	add $t0, $t0, $t1
	sw $t0, -3148($fp)
	lw $t0, -3148($fp)
	lw $t1, 0($t0)
	sw $t1, -3152($fp)
	lw $t0, -3152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3156($fp)
	li $t0, 7
	sw $t0, -3160($fp)
	li $t0, 4
	lw $t1, -3160($fp)
	mul $t0, $t0, $t1
	sw $t0, -3164($fp)
	lw $t0, -3164($fp)
	lw $t1, -3156($fp)
	add $t0, $t0, $t1
	sw $t0, -3168($fp)
	lw $t0, -3168($fp)
	lw $t1, 0($t0)
	sw $t1, -3172($fp)
	lw $t0, -3172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3176($fp)
	li $t0, 8
	sw $t0, -3180($fp)
	li $t0, 4
	lw $t1, -3180($fp)
	mul $t0, $t0, $t1
	sw $t0, -3184($fp)
	lw $t0, -3184($fp)
	lw $t1, -3176($fp)
	add $t0, $t0, $t1
	sw $t0, -3188($fp)
	lw $t0, -3188($fp)
	lw $t1, 0($t0)
	sw $t1, -3192($fp)
	lw $t0, -3192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -488($fp)
	sw $t0, -3196($fp)
	lw $t0, -3196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -3200($fp)
	lw $t0, -3200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -3204($fp)
	lw $t0, -3204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -3208($fp)
	lw $t0, -3208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -3212($fp)
	li $t0, 0
	sw $t0, -3216($fp)
	li $t0, 4
	lw $t1, -3216($fp)
	mul $t0, $t0, $t1
	sw $t0, -3220($fp)
	lw $t0, -3220($fp)
	lw $t1, -3212($fp)
	add $t0, $t0, $t1
	sw $t0, -3224($fp)
	lw $t0, -3224($fp)
	lw $t1, 0($t0)
	sw $t1, -3228($fp)
	lw $t0, -3228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -3232($fp)
	li $t0, 1
	sw $t0, -3236($fp)
	li $t0, 4
	lw $t1, -3236($fp)
	mul $t0, $t0, $t1
	sw $t0, -3240($fp)
	lw $t0, -3240($fp)
	lw $t1, -3232($fp)
	add $t0, $t0, $t1
	sw $t0, -3244($fp)
	lw $t0, -3244($fp)
	lw $t1, 0($t0)
	sw $t1, -3248($fp)
	lw $t0, -3248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -3252($fp)
	li $t0, 2
	sw $t0, -3256($fp)
	li $t0, 4
	lw $t1, -3256($fp)
	mul $t0, $t0, $t1
	sw $t0, -3260($fp)
	lw $t0, -3260($fp)
	lw $t1, -3252($fp)
	add $t0, $t0, $t1
	sw $t0, -3264($fp)
	lw $t0, -3264($fp)
	lw $t1, 0($t0)
	sw $t1, -3268($fp)
	lw $t0, -3268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -3272($fp)
	li $t0, 3
	sw $t0, -3276($fp)
	li $t0, 4
	lw $t1, -3276($fp)
	mul $t0, $t0, $t1
	sw $t0, -3280($fp)
	lw $t0, -3280($fp)
	lw $t1, -3272($fp)
	add $t0, $t0, $t1
	sw $t0, -3284($fp)
	lw $t0, -3284($fp)
	lw $t1, 0($t0)
	sw $t1, -3288($fp)
	lw $t0, -3288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -3292($fp)
	li $t0, 4
	sw $t0, -3296($fp)
	li $t0, 4
	lw $t1, -3296($fp)
	mul $t0, $t0, $t1
	sw $t0, -3300($fp)
	lw $t0, -3300($fp)
	lw $t1, -3292($fp)
	add $t0, $t0, $t1
	sw $t0, -3304($fp)
	lw $t0, -3304($fp)
	lw $t1, 0($t0)
	sw $t1, -3308($fp)
	lw $t0, -3308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -3312($fp)
	li $t0, 5
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
	lw $t0, -3328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -3332($fp)
	li $t0, 6
	sw $t0, -3336($fp)
	li $t0, 4
	lw $t1, -3336($fp)
	mul $t0, $t0, $t1
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	lw $t1, -3332($fp)
	add $t0, $t0, $t1
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	lw $t1, 0($t0)
	sw $t1, -3348($fp)
	lw $t0, -3348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -3352($fp)
	li $t0, 7
	sw $t0, -3356($fp)
	li $t0, 4
	lw $t1, -3356($fp)
	mul $t0, $t0, $t1
	sw $t0, -3360($fp)
	lw $t0, -3360($fp)
	lw $t1, -3352($fp)
	add $t0, $t0, $t1
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	lw $t1, 0($t0)
	sw $t1, -3368($fp)
	lw $t0, -3368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -3372($fp)
	li $t0, 8
	sw $t0, -3376($fp)
	li $t0, 4
	lw $t1, -3376($fp)
	mul $t0, $t0, $t1
	sw $t0, -3380($fp)
	lw $t0, -3380($fp)
	lw $t1, -3372($fp)
	add $t0, $t0, $t1
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	lw $t1, 0($t0)
	sw $t1, -3388($fp)
	lw $t0, -3388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -3392($fp)
	li $t0, 9
	sw $t0, -3396($fp)
	li $t0, 4
	lw $t1, -3396($fp)
	mul $t0, $t0, $t1
	sw $t0, -3400($fp)
	lw $t0, -3400($fp)
	lw $t1, -3392($fp)
	add $t0, $t0, $t1
	sw $t0, -3404($fp)
	lw $t0, -3404($fp)
	lw $t1, 0($t0)
	sw $t1, -3408($fp)
	lw $t0, -3408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -3412($fp)
	li $t0, 0
	sw $t0, -3416($fp)
	li $t0, 4
	lw $t1, -3416($fp)
	mul $t0, $t0, $t1
	sw $t0, -3420($fp)
	lw $t0, -3420($fp)
	lw $t1, -3412($fp)
	add $t0, $t0, $t1
	sw $t0, -3424($fp)
	lw $t0, -3424($fp)
	lw $t1, 0($t0)
	sw $t1, -3428($fp)
	lw $t0, -3428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -3432($fp)
	li $t0, 1
	sw $t0, -3436($fp)
	li $t0, 4
	lw $t1, -3436($fp)
	mul $t0, $t0, $t1
	sw $t0, -3440($fp)
	lw $t0, -3440($fp)
	lw $t1, -3432($fp)
	add $t0, $t0, $t1
	sw $t0, -3444($fp)
	lw $t0, -3444($fp)
	lw $t1, 0($t0)
	sw $t1, -3448($fp)
	lw $t0, -3448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3452($fp)
	li $t0, 0
	sw $t0, -3456($fp)
	lw $t0, -488($fp)
	sw $t0, -3460($fp)
	li $t0, 0
	lw $t1, -3460($fp)
	sub $t0, $t0, $t1
	sw $t0, -3464($fp)
	lw $t0, -260($fp)
	sw $t0, -3468($fp)
	li $t0, 2155
	sw $t0, -3472($fp)
	lw $t0, -3468($fp)
	lw $t1, -3472($fp)
	sub $t0, $t0, $t1
	sw $t0, -3476($fp)
	lw $t1, -3464($fp)
	lw $t2, -3476($fp)
	bgt $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -3456($fp)
label421:
	li $t0, 37916
	sw $t0, -3480($fp)
	lw $t0, -488($fp)
	sw $t0, -3484($fp)
	lw $t0, -3480($fp)
	lw $t1, -3484($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3488($fp)
	li $t0, 46329
	sw $t0, -3492($fp)
	lw $t0, -3488($fp)
	lw $t1, -3492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3496($fp)
	lw $t1, -3456($fp)
	lw $t2, -3496($fp)
	beq $t1, $t2, label419
	j label418
label419:
	addi $t0, $fp, -108
	sw $t0, -3500($fp)
	lw $t0, -116($fp)
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
	jal f8
	sw $v0, -3520($fp)
	addi $sp, $sp, 4
	lw $t0, -3516($fp)
	lw $t1, -3520($fp)
	mul $t0, $t0, $t1
	sw $t0, -3524($fp)
	lw $t1, -3524($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label418
label417:
	li $t0, 1
	sw $t0, -3452($fp)
label418:
	lw $ra, -4($fp)
	lw $v0, -3452($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1412
	li $t0, 55192
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -20($fp)
	li $t0, 38966
	sw $t0, -24($fp)
	addi $t0, $fp, -8
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
	li $t0, 14627
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	li $t0, 26356
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	li $t0, 64025
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	addi $t0, $fp, -8
	sw $t0, -84($fp)
	li $t0, 0
	sw $t0, -88($fp)
	li $t0, 4
	lw $t1, -88($fp)
	mul $t0, $t0, $t1
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	lw $t1, -84($fp)
	add $t0, $t0, $t1
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	lw $t1, 0($t0)
	sw $t1, -100($fp)
	lw $t1, -100($fp)
	li $t2, 0
	bne $t1, $t2, label425
	j label423
label425:
	li $t0, 0
	sw $t0, -104($fp)
	lw $t0, -16($fp)
	sw $t0, -108($fp)
	lw $t1, -108($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label426
label426:
	li $t0, 1
	sw $t0, -104($fp)
label427:
	li $t0, 46524
	sw $t0, -112($fp)
	lw $t0, -64($fp)
	sw $t0, -116($fp)
	lw $t0, -112($fp)
	lw $t1, -116($fp)
	mul $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t0, -104($fp)
	lw $t1, -120($fp)
	sub $t0, $t0, $t1
	sw $t0, -124($fp)
	lw $t1, -124($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label423
label422:
	li $t0, 43563
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	li $t0, 53463
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	li $t0, 3889
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	li $t0, 25905
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	li $t0, 28978
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	li $t0, 57137
	sw $t0, -216($fp)
	addi $t0, $fp, -152
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
	li $t0, 59168
	sw $t0, -240($fp)
	addi $t0, $fp, -152
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
	li $t0, 28777
	sw $t0, -264($fp)
	addi $t0, $fp, -152
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
	li $t0, 65372
	sw $t0, -288($fp)
	addi $t0, $fp, -152
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
	li $t0, 60803
	sw $t0, -312($fp)
	addi $t0, $fp, -152
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
	li $t0, 30182
	sw $t0, -336($fp)
	addi $t0, $fp, -152
	sw $t0, -340($fp)
	li $t0, 5
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
	li $t0, 46600
	sw $t0, -360($fp)
	addi $t0, $fp, -152
	sw $t0, -364($fp)
	li $t0, 6
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
	lw $t0, -160($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -172($fp)
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -184($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -196($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -208($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -404($fp)
	li $t0, 0
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
	addi $t0, $fp, -152
	sw $t0, -424($fp)
	li $t0, 1
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
	addi $t0, $fp, -152
	sw $t0, -444($fp)
	li $t0, 2
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
	addi $t0, $fp, -152
	sw $t0, -464($fp)
	li $t0, 3
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
	addi $t0, $fp, -152
	sw $t0, -484($fp)
	li $t0, 4
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
	addi $t0, $fp, -152
	sw $t0, -504($fp)
	li $t0, 5
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
	addi $t0, $fp, -152
	sw $t0, -524($fp)
	li $t0, 6
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
	li $t0, 0
	sw $t0, -544($fp)
	lw $t0, -16($fp)
	sw $t0, -548($fp)
	li $t0, 0
	lw $t1, -548($fp)
	sub $t0, $t0, $t1
	sw $t0, -552($fp)
	addi $t0, $fp, -152
	sw $t0, -556($fp)
	li $t0, 1
	sw $t0, -560($fp)
	li $t0, 4
	lw $t1, -560($fp)
	mul $t0, $t0, $t1
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	lw $t1, -556($fp)
	add $t0, $t0, $t1
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	lw $t1, 0($t0)
	sw $t1, -572($fp)
	li $t0, 10041
	sw $t0, -576($fp)
	lw $t0, -572($fp)
	lw $t1, -576($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -580($fp)
	lw $t1, -552($fp)
	lw $t2, -580($fp)
	bge $t1, $t2, label428
	j label429
label428:
	li $t0, 1
	sw $t0, -544($fp)
label429:
	lw $ra, -4($fp)
	lw $v0, -544($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 57598
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	li $t0, 27736
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	li $t0, 45469
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	li $t0, 59754
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	li $t0, 117
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	li $t0, 26263
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	li $t0, 49410
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
label430:
	li $t0, 0
	sw $t0, -668($fp)
	li $t0, 0
	sw $t0, -672($fp)
	li $t0, 10231
	sw $t0, -676($fp)
	lw $t0, -52($fp)
	sw $t0, -680($fp)
	lw $t0, -676($fp)
	lw $t1, -680($fp)
	mul $t0, $t0, $t1
	sw $t0, -684($fp)
	lw $t1, -684($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label437
label438:
	lw $t0, -52($fp)
	sw $t0, -688($fp)
	lw $t1, -688($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label437
label436:
	li $t0, 1
	sw $t0, -672($fp)
label437:
	lw $t0, -588($fp)
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -696($fp)
	li $t0, 0
	sw $t0, -700($fp)
	li $t0, 39083
	sw $t0, -704($fp)
	lw $t1, -704($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label441
label441:
	li $t0, 40890
	sw $t0, -708($fp)
	lw $t1, -708($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label440
label439:
	li $t0, 1
	sw $t0, -700($fp)
label440:
	addi $sp, $sp, -4
	lw $t0, -672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -700($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -712($fp)
	addi $sp, $sp, 16
	lw $t0, -612($fp)
	sw $t0, -716($fp)
	lw $t0, -712($fp)
	lw $t1, -716($fp)
	mul $t0, $t0, $t1
	sw $t0, -720($fp)
	lw $t1, -720($fp)
	li $t2, 0
	bne $t1, $t2, label433
	j label435
label435:
	li $t0, 37572
	sw $t0, -724($fp)
	li $t0, 26814
	sw $t0, -728($fp)
	lw $t0, -724($fp)
	lw $t1, -728($fp)
	mul $t0, $t0, $t1
	sw $t0, -732($fp)
	lw $t1, -732($fp)
	li $t2, 0
	bne $t1, $t2, label433
	j label434
label433:
	li $t0, 1
	sw $t0, -668($fp)
label434:
	lw $t0, -668($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -736($fp)
	lw $t1, -736($fp)
	li $t2, 0
	bne $t1, $t2, label431
	j label432
label431:
	li $t0, 0
	sw $t0, -740($fp)
	li $t0, 0
	sw $t0, -744($fp)
	li $t0, 0
	sw $t0, -748($fp)
	lw $t0, -624($fp)
	sw $t0, -752($fp)
	lw $t1, -752($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label447
label447:
	li $t0, 1
	sw $t0, -748($fp)
label448:
	li $t0, 42387
	sw $t0, -756($fp)
	lw $t0, -748($fp)
	lw $t1, -756($fp)
	sub $t0, $t0, $t1
	sw $t0, -760($fp)
	li $t0, 0
	sw $t0, -764($fp)
	addi $t0, $fp, -8
	sw $t0, -768($fp)
	lw $t0, -600($fp)
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
	lw $t0, -648($fp)
	sw $t0, -788($fp)
	lw $t1, -784($fp)
	lw $t2, -788($fp)
	blt $t1, $t2, label449
	j label450
label449:
	li $t0, 1
	sw $t0, -764($fp)
label450:
	li $t0, 35219
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -796($fp)
	li $t0, 0
	sw $t0, -800($fp)
	lw $t0, -660($fp)
	sw $t0, -804($fp)
	li $t0, 0
	lw $t1, -804($fp)
	sub $t0, $t0, $t1
	sw $t0, -808($fp)
	lw $t1, -808($fp)
	li $t2, 0
	bne $t1, $t2, label453
	j label452
label453:
	lw $t0, -660($fp)
	sw $t0, -812($fp)
	lw $t1, -812($fp)
	li $t2, 0
	bne $t1, $t2, label451
	j label452
label451:
	li $t0, 1
	sw $t0, -800($fp)
label452:
	addi $sp, $sp, -4
	lw $t0, -764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -800($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -816($fp)
	addi $sp, $sp, 16
	lw $t0, -588($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -824($fp)
	addi $t0, $fp, -152
	sw $t0, -828($fp)
	lw $t0, -172($fp)
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
	addi $t0, $fp, -8
	sw $t0, -848($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -868($fp)
	li $t0, 39952
	sw $t0, -872($fp)
	lw $t1, -872($fp)
	li $t2, 0
	bne $t1, $t2, label455
	j label454
label454:
	li $t0, 1
	sw $t0, -868($fp)
label455:
	addi $sp, $sp, -4
	lw $t0, -816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -868($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -876($fp)
	addi $sp, $sp, 24
	lw $t0, -624($fp)
	sw $t0, -880($fp)
	lw $t0, -76($fp)
	sw $t0, -884($fp)
	lw $t0, -880($fp)
	lw $t1, -884($fp)
	add $t0, $t0, $t1
	sw $t0, -888($fp)
	li $t0, 0
	sw $t0, -892($fp)
	li $t0, 0
	sw $t0, -896($fp)
	li $t0, 46320
	sw $t0, -900($fp)
	li $t0, 9527
	sw $t0, -904($fp)
	lw $t0, -900($fp)
	lw $t1, -904($fp)
	mul $t0, $t0, $t1
	sw $t0, -908($fp)
	lw $t0, -52($fp)
	sw $t0, -912($fp)
	lw $t1, -908($fp)
	lw $t2, -912($fp)
	ble $t1, $t2, label459
	j label460
label459:
	li $t0, 1
	sw $t0, -896($fp)
label460:
	li $t0, 0
	sw $t0, -916($fp)
	li $t0, 46085
	sw $t0, -920($fp)
	li $t0, 11692
	sw $t0, -924($fp)
	lw $t1, -920($fp)
	lw $t2, -924($fp)
	bne $t1, $t2, label461
	j label462
label461:
	li $t0, 1
	sw $t0, -916($fp)
label462:
	li $t0, 0
	sw $t0, -928($fp)
	li $t0, 58158
	sw $t0, -932($fp)
	li $t0, 7803
	sw $t0, -936($fp)
	lw $t1, -932($fp)
	lw $t2, -936($fp)
	ble $t1, $t2, label465
	j label464
label465:
	li $t0, 20414
	sw $t0, -940($fp)
	lw $t1, -940($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label464
label463:
	li $t0, 1
	sw $t0, -928($fp)
label464:
	addi $sp, $sp, -4
	lw $t0, -896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -928($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -944($fp)
	addi $sp, $sp, 16
	lw $t1, -944($fp)
	li $t2, 0
	bne $t1, $t2, label456
	j label458
label458:
	li $t0, 3293
	sw $t0, -948($fp)
	lw $t1, -948($fp)
	li $t2, 0
	bne $t1, $t2, label456
	j label457
label456:
	li $t0, 1
	sw $t0, -892($fp)
label457:
	addi $sp, $sp, -4
	lw $t0, -876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -892($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -952($fp)
	addi $sp, $sp, 16
	lw $t1, -760($fp)
	lw $t2, -952($fp)
	ble $t1, $t2, label445
	j label446
label445:
	li $t0, 1
	sw $t0, -744($fp)
label446:
	li $t0, 0
	sw $t0, -956($fp)
	lw $t0, -612($fp)
	sw $t0, -960($fp)
	lw $t1, -960($fp)
	li $t2, 0
	bne $t1, $t2, label467
	j label466
label466:
	li $t0, 1
	sw $t0, -956($fp)
label467:
	lw $t0, -184($fp)
	sw $t0, -964($fp)
	lw $t0, -956($fp)
	lw $t1, -964($fp)
	mul $t0, $t0, $t1
	sw $t0, -968($fp)
	lw $t1, -744($fp)
	lw $t2, -968($fp)
	ble $t1, $t2, label444
	j label443
label444:
	lw $t0, -52($fp)
	sw $t0, -972($fp)
	lw $t1, -972($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label443
label442:
	li $t0, 1
	sw $t0, -740($fp)
label443:
	j label430
label432:
	li $t0, 2951
	sw $t0, -976($fp)
	li $t0, 0
	sw $t0, -980($fp)
	lw $t0, -52($fp)
	sw $t0, -984($fp)
	li $t0, 49730
	sw $t0, -988($fp)
	lw $t1, -984($fp)
	lw $t2, -988($fp)
	beq $t1, $t2, label468
	j label469
label468:
	li $t0, 1
	sw $t0, -980($fp)
label469:
	lw $t0, -980($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -996($fp)
label470:
	jal f11
	sw $v0, -1000($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -152
	sw $t0, -1004($fp)
	lw $t0, -196($fp)
	sw $t0, -1008($fp)
	li $t0, 4
	lw $t1, -1008($fp)
	mul $t0, $t0, $t1
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	lw $t1, -1004($fp)
	add $t0, $t0, $t1
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	lw $t1, 0($t0)
	sw $t1, -1020($fp)
	li $t0, 0
	lw $t1, -1020($fp)
	sub $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t0, -1000($fp)
	lw $t1, -1024($fp)
	mul $t0, $t0, $t1
	sw $t0, -1028($fp)
	lw $t1, -1028($fp)
	li $t2, 0
	bne $t1, $t2, label471
	j label472
label471:
	li $t0, 4279
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -1036($fp)
	j label470
label472:
	li $t0, 0
	sw $t0, -1040($fp)
	jal f6
	sw $v0, -1044($fp)
	addi $sp, $sp, 4
	lw $t1, -1044($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label473
label473:
	li $t0, 1
	sw $t0, -1040($fp)
label474:
	li $t0, 0
	sw $t0, -1048($fp)
	li $t0, 102
	sw $t0, -1052($fp)
	li $t0, 0
	lw $t1, -1052($fp)
	sub $t0, $t0, $t1
	sw $t0, -1056($fp)
	li $t0, 0
	lw $t1, -1056($fp)
	sub $t0, $t0, $t1
	sw $t0, -1060($fp)
	lw $t1, -1060($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label475
label475:
	li $t0, 1
	sw $t0, -1048($fp)
label476:
	li $t0, 0
	lw $t1, -1048($fp)
	sub $t0, $t0, $t1
	sw $t0, -1064($fp)
	li $t0, 15688
	sw $t0, -1068($fp)
	lw $t0, -1064($fp)
	lw $t1, -1068($fp)
	sub $t0, $t0, $t1
	sw $t0, -1072($fp)
	li $t0, 14320
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
	addi $t0, $fp, -152
	sw $t0, -1088($fp)
	lw $t0, -196($fp)
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
	addi $t0, $fp, -152
	sw $t0, -1108($fp)
	li $t0, 0
	sw $t0, -1112($fp)
	lw $t0, -52($fp)
	sw $t0, -1116($fp)
	lw $t1, -1116($fp)
	li $t2, 0
	bne $t1, $t2, label477
	j label479
label479:
	li $t0, 57701
	sw $t0, -1120($fp)
	lw $t1, -1120($fp)
	li $t2, 0
	bne $t1, $t2, label477
	j label478
label477:
	li $t0, 1
	sw $t0, -1112($fp)
label478:
	li $t0, 4
	lw $t1, -1112($fp)
	mul $t0, $t0, $t1
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	lw $t1, -1108($fp)
	add $t0, $t0, $t1
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	lw $t1, 0($t0)
	sw $t1, -1132($fp)
	lw $t0, -1104($fp)
	lw $t1, -1132($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1136($fp)
	jal f11
	sw $v0, -1140($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -1144($fp)
	li $t0, 0
	sw $t0, -1148($fp)
	jal f6
	sw $v0, -1152($fp)
	addi $sp, $sp, 4
	lw $t1, -1152($fp)
	li $t2, 0
	bne $t1, $t2, label484
	j label483
label484:
	li $t0, 51919
	sw $t0, -1156($fp)
	lw $t1, -1156($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label483
label482:
	li $t0, 1
	sw $t0, -1148($fp)
label483:
	li $t0, 0
	sw $t0, -1160($fp)
	li $t0, 0
	sw $t0, -1164($fp)
	li $t0, 59789
	sw $t0, -1168($fp)
	lw $t0, -52($fp)
	sw $t0, -1172($fp)
	lw $t1, -1168($fp)
	lw $t2, -1172($fp)
	beq $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -1164($fp)
label488:
	lw $t0, -172($fp)
	sw $t0, -1176($fp)
	lw $t1, -1164($fp)
	lw $t2, -1176($fp)
	beq $t1, $t2, label485
	j label486
label485:
	li $t0, 1
	sw $t0, -1160($fp)
label486:
	addi $t0, $fp, -8
	sw $t0, -1180($fp)
	lw $t0, -1080($fp)
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
	li $t0, 43424
	sw $t0, -1200($fp)
	lw $t0, -1196($fp)
	lw $t1, -1200($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1204($fp)
	addi $sp, $sp, -4
	lw $t0, -1148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1204($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1208($fp)
	addi $sp, $sp, 16
	lw $t1, -1208($fp)
	li $t2, 0
	bne $t1, $t2, label481
	j label480
label480:
	li $t0, 1
	sw $t0, -1144($fp)
label481:
	li $t0, 0
	sw $t0, -1212($fp)
	li $t0, 61407
	sw $t0, -1216($fp)
	lw $t0, -52($fp)
	sw $t0, -1220($fp)
	lw $t0, -1216($fp)
	lw $t1, -1220($fp)
	sub $t0, $t0, $t1
	sw $t0, -1224($fp)
	lw $t1, -1224($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label490
label491:
	lw $t0, -208($fp)
	sw $t0, -1228($fp)
	lw $t1, -1228($fp)
	li $t2, 0
	bne $t1, $t2, label489
	j label490
label489:
	li $t0, 1
	sw $t0, -1212($fp)
label490:
	li $t0, 0
	sw $t0, -1232($fp)
	li $t0, 35793
	sw $t0, -1236($fp)
	li $t0, 0
	lw $t1, -1236($fp)
	sub $t0, $t0, $t1
	sw $t0, -1240($fp)
	li $t0, 17089
	sw $t0, -1244($fp)
	lw $t1, -1240($fp)
	lw $t2, -1244($fp)
	beq $t1, $t2, label492
	j label493
label492:
	li $t0, 1
	sw $t0, -1232($fp)
label493:
	addi $t0, $fp, -8
	sw $t0, -1248($fp)
	li $t0, 0
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
	addi $sp, $sp, -4
	lw $t0, -1212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1264($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1268($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -1272($fp)
	jal f11
	sw $v0, -1276($fp)
	addi $sp, $sp, 4
	lw $t1, -1276($fp)
	li $t2, 0
	bne $t1, $t2, label495
	j label494
label494:
	li $t0, 1
	sw $t0, -1272($fp)
label495:
	lw $t0, -1268($fp)
	lw $t1, -1272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1280($fp)
	li $t0, 0
	lw $t1, -1280($fp)
	sub $t0, $t0, $t1
	sw $t0, -1284($fp)
	lw $t0, -1144($fp)
	lw $t1, -1284($fp)
	mul $t0, $t0, $t1
	sw $t0, -1288($fp)
label423:
	li $t0, 46024
	sw $t0, -1292($fp)
	lw $t0, -16($fp)
	sw $t0, -1296($fp)
	lw $t0, -1292($fp)
	lw $t1, -1296($fp)
	mul $t0, $t0, $t1
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -1308($fp)
	lw $t1, -1308($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label497
label496:
	li $t0, 0
	sw $t0, -1312($fp)
	jal f8
	sw $v0, -1316($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -8
	sw $t0, -1320($fp)
	lw $t0, -16($fp)
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
	lw $t1, -1316($fp)
	lw $t2, -1336($fp)
	bgt $t1, $t2, label499
	j label501
label501:
	addi $t0, $fp, -8
	sw $t0, -1340($fp)
	li $t0, 54661
	sw $t0, -1344($fp)
	lw $t0, -52($fp)
	sw $t0, -1348($fp)
	lw $t0, -1344($fp)
	lw $t1, -1348($fp)
	sub $t0, $t0, $t1
	sw $t0, -1352($fp)
	li $t0, 4
	lw $t1, -1352($fp)
	mul $t0, $t0, $t1
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	lw $t1, -1340($fp)
	add $t0, $t0, $t1
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	lw $t1, 0($t0)
	sw $t1, -1364($fp)
	lw $t1, -1364($fp)
	li $t2, 0
	bne $t1, $t2, label499
	j label500
label499:
	li $t0, 1
	sw $t0, -1312($fp)
label500:
	j label498
label497:
	lw $t0, -16($fp)
	sw $t0, -1368($fp)
label498:
	lw $t0, -16($fp)
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
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
	lw $t0, -1392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -52($fp)
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -76($fp)
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	jal f8
	sw $v0, -1408($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1408($fp)
	sub $t0, $t0, $t1
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -1416($fp)
	lw $ra, -4($fp)
	lw $v0, -1416($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -8
	jal f11
	sw $v0, -8($fp)
	addi $sp, $sp, 4
	li $t0, 22685
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
