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
	addi $sp, $sp, -9560
	li $t0, 14495
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 61624
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	li $t0, 58808
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	li $t0, 17692
	sw $t0, -212($fp)
	addi $t0, $fp, -16
	sw $t0, -216($fp)
	li $t0, 0
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
	li $t0, 19790
	sw $t0, -236($fp)
	addi $t0, $fp, -16
	sw $t0, -240($fp)
	li $t0, 1
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
	li $t0, 5162
	sw $t0, -260($fp)
	addi $t0, $fp, -16
	sw $t0, -264($fp)
	li $t0, 2
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
	li $t0, 12095
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	li $t0, 52184
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	li $t0, 51773
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	li $t0, 23348
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	li $t0, 28853
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	li $t0, 46223
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	li $t0, 59654
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	li $t0, 50929
	sw $t0, -368($fp)
	addi $t0, $fp, -52
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
	li $t0, 22372
	sw $t0, -392($fp)
	addi $t0, $fp, -52
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
	li $t0, 17881
	sw $t0, -416($fp)
	addi $t0, $fp, -52
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
	li $t0, 17830
	sw $t0, -440($fp)
	addi $t0, $fp, -52
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
	li $t0, 56257
	sw $t0, -464($fp)
	addi $t0, $fp, -52
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
	li $t0, 42077
	sw $t0, -488($fp)
	addi $t0, $fp, -52
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
	li $t0, 49199
	sw $t0, -512($fp)
	addi $t0, $fp, -52
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
	li $t0, 40693
	sw $t0, -536($fp)
	addi $t0, $fp, -52
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
	li $t0, 16094
	sw $t0, -560($fp)
	addi $t0, $fp, -52
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
	li $t0, 31332
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	li $t0, 1072
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	li $t0, 45655
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	li $t0, 30257
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	li $t0, 32324
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	li $t0, 54555
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	li $t0, 515
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	li $t0, 56836
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	li $t0, 27159
	sw $t0, -680($fp)
	addi $t0, $fp, -56
	sw $t0, -684($fp)
	li $t0, 0
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
	li $t0, 15010
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	li $t0, 52924
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	li $t0, 20431
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	li $t0, 32702
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	li $t0, 7178
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -760($fp)
	li $t0, 25594
	sw $t0, -764($fp)
	addi $t0, $fp, -92
	sw $t0, -768($fp)
	li $t0, 0
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t0, -768($fp)
	lw $t1, -776($fp)
	add $t0, $t0, $t1
	sw $t0, -780($fp)
	lw $t0, -764($fp)
	lw $t1, -780($fp)
	sw $t0, 0($t1)
	lw $t0, -780($fp)
	lw $t1, 0($t0)
	sw $t1, -784($fp)
	li $t0, 44797
	sw $t0, -788($fp)
	addi $t0, $fp, -92
	sw $t0, -792($fp)
	li $t0, 1
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -800($fp)
	lw $t0, -792($fp)
	lw $t1, -800($fp)
	add $t0, $t0, $t1
	sw $t0, -804($fp)
	lw $t0, -788($fp)
	lw $t1, -804($fp)
	sw $t0, 0($t1)
	lw $t0, -804($fp)
	lw $t1, 0($t0)
	sw $t1, -808($fp)
	li $t0, 59362
	sw $t0, -812($fp)
	addi $t0, $fp, -92
	sw $t0, -816($fp)
	li $t0, 2
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
	li $t0, 11831
	sw $t0, -836($fp)
	addi $t0, $fp, -92
	sw $t0, -840($fp)
	li $t0, 3
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
	li $t0, 2610
	sw $t0, -860($fp)
	addi $t0, $fp, -92
	sw $t0, -864($fp)
	li $t0, 4
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
	li $t0, 22679
	sw $t0, -884($fp)
	addi $t0, $fp, -92
	sw $t0, -888($fp)
	li $t0, 5
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
	li $t0, 58054
	sw $t0, -908($fp)
	addi $t0, $fp, -92
	sw $t0, -912($fp)
	li $t0, 6
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
	li $t0, 62264
	sw $t0, -932($fp)
	addi $t0, $fp, -92
	sw $t0, -936($fp)
	li $t0, 7
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
	li $t0, 8073
	sw $t0, -956($fp)
	addi $t0, $fp, -92
	sw $t0, -960($fp)
	li $t0, 8
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
	li $t0, 14890
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	sw $t0, -988($fp)
	li $t0, 14609
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -1000($fp)
	li $t0, 25903
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	sw $t0, -1012($fp)
	li $t0, 5611
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	sw $t0, -1024($fp)
	li $t0, 56687
	sw $t0, -1028($fp)
	addi $t0, $fp, -132
	sw $t0, -1032($fp)
	li $t0, 0
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1040($fp)
	lw $t0, -1032($fp)
	lw $t1, -1040($fp)
	add $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $t0, -1028($fp)
	lw $t1, -1044($fp)
	sw $t0, 0($t1)
	lw $t0, -1044($fp)
	lw $t1, 0($t0)
	sw $t1, -1048($fp)
	li $t0, 9566
	sw $t0, -1052($fp)
	addi $t0, $fp, -132
	sw $t0, -1056($fp)
	li $t0, 1
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1064($fp)
	lw $t0, -1056($fp)
	lw $t1, -1064($fp)
	add $t0, $t0, $t1
	sw $t0, -1068($fp)
	lw $t0, -1052($fp)
	lw $t1, -1068($fp)
	sw $t0, 0($t1)
	lw $t0, -1068($fp)
	lw $t1, 0($t0)
	sw $t1, -1072($fp)
	li $t0, 46305
	sw $t0, -1076($fp)
	addi $t0, $fp, -132
	sw $t0, -1080($fp)
	li $t0, 2
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
	li $t0, 7245
	sw $t0, -1100($fp)
	addi $t0, $fp, -132
	sw $t0, -1104($fp)
	li $t0, 3
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
	li $t0, 40898
	sw $t0, -1124($fp)
	addi $t0, $fp, -132
	sw $t0, -1128($fp)
	li $t0, 4
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
	li $t0, 47377
	sw $t0, -1148($fp)
	addi $t0, $fp, -132
	sw $t0, -1152($fp)
	li $t0, 5
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
	li $t0, 52900
	sw $t0, -1172($fp)
	addi $t0, $fp, -132
	sw $t0, -1176($fp)
	li $t0, 6
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
	li $t0, 5620
	sw $t0, -1196($fp)
	addi $t0, $fp, -132
	sw $t0, -1200($fp)
	li $t0, 7
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
	li $t0, 14165
	sw $t0, -1220($fp)
	addi $t0, $fp, -132
	sw $t0, -1224($fp)
	li $t0, 8
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
	li $t0, 41919
	sw $t0, -1244($fp)
	addi $t0, $fp, -132
	sw $t0, -1248($fp)
	li $t0, 9
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
	li $t0, 6135
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	li $t0, 5466
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	li $t0, 3543
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	li $t0, 21145
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -1312($fp)
	li $t0, 58390
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -1324($fp)
	li $t0, 23974
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	sw $t0, -1336($fp)
	li $t0, 53847
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	sw $t0, -1348($fp)
	li $t0, 33
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	sw $t0, -1360($fp)
	li $t0, 49568
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	sw $t0, -1372($fp)
	li $t0, 33108
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -1384($fp)
	li $t0, 59395
	sw $t0, -1388($fp)
	addi $t0, $fp, -148
	sw $t0, -1392($fp)
	li $t0, 0
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1400($fp)
	lw $t0, -1392($fp)
	lw $t1, -1400($fp)
	add $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t0, -1388($fp)
	lw $t1, -1404($fp)
	sw $t0, 0($t1)
	lw $t0, -1404($fp)
	lw $t1, 0($t0)
	sw $t1, -1408($fp)
	li $t0, 61399
	sw $t0, -1412($fp)
	addi $t0, $fp, -148
	sw $t0, -1416($fp)
	li $t0, 1
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1424($fp)
	lw $t0, -1416($fp)
	lw $t1, -1424($fp)
	add $t0, $t0, $t1
	sw $t0, -1428($fp)
	lw $t0, -1412($fp)
	lw $t1, -1428($fp)
	sw $t0, 0($t1)
	lw $t0, -1428($fp)
	lw $t1, 0($t0)
	sw $t1, -1432($fp)
	li $t0, 35718
	sw $t0, -1436($fp)
	addi $t0, $fp, -148
	sw $t0, -1440($fp)
	li $t0, 2
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1448($fp)
	lw $t0, -1440($fp)
	lw $t1, -1448($fp)
	add $t0, $t0, $t1
	sw $t0, -1452($fp)
	lw $t0, -1436($fp)
	lw $t1, -1452($fp)
	sw $t0, 0($t1)
	lw $t0, -1452($fp)
	lw $t1, 0($t0)
	sw $t1, -1456($fp)
	li $t0, 16539
	sw $t0, -1460($fp)
	addi $t0, $fp, -148
	sw $t0, -1464($fp)
	li $t0, 3
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1472($fp)
	lw $t0, -1464($fp)
	lw $t1, -1472($fp)
	add $t0, $t0, $t1
	sw $t0, -1476($fp)
	lw $t0, -1460($fp)
	lw $t1, -1476($fp)
	sw $t0, 0($t1)
	lw $t0, -1476($fp)
	lw $t1, 0($t0)
	sw $t1, -1480($fp)
	li $t0, 53918
	sw $t0, -1484($fp)
	addi $t0, $fp, -172
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
	li $t0, 32447
	sw $t0, -1508($fp)
	addi $t0, $fp, -172
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
	li $t0, 24612
	sw $t0, -1532($fp)
	addi $t0, $fp, -172
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
	li $t0, 3272
	sw $t0, -1556($fp)
	addi $t0, $fp, -172
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
	li $t0, 47056
	sw $t0, -1580($fp)
	addi $t0, $fp, -172
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
	li $t0, 50515
	sw $t0, -1604($fp)
	addi $t0, $fp, -172
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
	li $t0, 8884
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	sw $t0, -1636($fp)
	li $t0, 38207
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	sw $t0, -1648($fp)
	li $t0, 60081
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	sw $t0, -1660($fp)
	li $t0, 55189
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	sw $t0, -1672($fp)
	li $t0, 45452
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	sw $t0, -1684($fp)
	li $t0, 35443
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	sw $t0, -1816($fp)
	li $t0, 37030
	sw $t0, -1820($fp)
	addi $t0, $fp, -1712
	sw $t0, -1824($fp)
	li $t0, 0
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t0, -1824($fp)
	lw $t1, -1832($fp)
	add $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t0, -1820($fp)
	lw $t1, -1836($fp)
	sw $t0, 0($t1)
	lw $t0, -1836($fp)
	lw $t1, 0($t0)
	sw $t1, -1840($fp)
	li $t0, 32816
	sw $t0, -1844($fp)
	addi $t0, $fp, -1712
	sw $t0, -1848($fp)
	li $t0, 1
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
	li $t0, 41063
	sw $t0, -1868($fp)
	addi $t0, $fp, -1712
	sw $t0, -1872($fp)
	li $t0, 2
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
	li $t0, 51196
	sw $t0, -1892($fp)
	addi $t0, $fp, -1712
	sw $t0, -1896($fp)
	li $t0, 3
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
	li $t0, 9200
	sw $t0, -1916($fp)
	addi $t0, $fp, -1712
	sw $t0, -1920($fp)
	li $t0, 4
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
	li $t0, 47198
	sw $t0, -1940($fp)
	addi $t0, $fp, -1712
	sw $t0, -1944($fp)
	li $t0, 5
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
	li $t0, 56662
	sw $t0, -1964($fp)
	addi $t0, $fp, -1712
	sw $t0, -1968($fp)
	li $t0, 6
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
	li $t0, 12743
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	sw $t0, -1992($fp)
	lw $t0, -1992($fp)
	sw $t0, -1996($fp)
	li $t0, 2807
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	sw $t0, -2008($fp)
	li $t0, 49516
	sw $t0, -2012($fp)
	addi $t0, $fp, -1748
	sw $t0, -2016($fp)
	li $t0, 0
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
	li $t0, 36717
	sw $t0, -2036($fp)
	addi $t0, $fp, -1748
	sw $t0, -2040($fp)
	li $t0, 1
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2048($fp)
	lw $t0, -2040($fp)
	lw $t1, -2048($fp)
	add $t0, $t0, $t1
	sw $t0, -2052($fp)
	lw $t0, -2036($fp)
	lw $t1, -2052($fp)
	sw $t0, 0($t1)
	lw $t0, -2052($fp)
	lw $t1, 0($t0)
	sw $t1, -2056($fp)
	li $t0, 56654
	sw $t0, -2060($fp)
	addi $t0, $fp, -1748
	sw $t0, -2064($fp)
	li $t0, 2
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $t0, -2064($fp)
	lw $t1, -2072($fp)
	add $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t0, -2060($fp)
	lw $t1, -2076($fp)
	sw $t0, 0($t1)
	lw $t0, -2076($fp)
	lw $t1, 0($t0)
	sw $t1, -2080($fp)
	li $t0, 49549
	sw $t0, -2084($fp)
	addi $t0, $fp, -1748
	sw $t0, -2088($fp)
	li $t0, 3
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t0, -2088($fp)
	lw $t1, -2096($fp)
	add $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $t0, -2084($fp)
	lw $t1, -2100($fp)
	sw $t0, 0($t1)
	lw $t0, -2100($fp)
	lw $t1, 0($t0)
	sw $t1, -2104($fp)
	li $t0, 20750
	sw $t0, -2108($fp)
	addi $t0, $fp, -1748
	sw $t0, -2112($fp)
	li $t0, 4
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2120($fp)
	lw $t0, -2112($fp)
	lw $t1, -2120($fp)
	add $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t0, -2108($fp)
	lw $t1, -2124($fp)
	sw $t0, 0($t1)
	lw $t0, -2124($fp)
	lw $t1, 0($t0)
	sw $t1, -2128($fp)
	li $t0, 24227
	sw $t0, -2132($fp)
	addi $t0, $fp, -1748
	sw $t0, -2136($fp)
	li $t0, 5
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t0, -2136($fp)
	lw $t1, -2144($fp)
	add $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t0, -2132($fp)
	lw $t1, -2148($fp)
	sw $t0, 0($t1)
	lw $t0, -2148($fp)
	lw $t1, 0($t0)
	sw $t1, -2152($fp)
	li $t0, 43409
	sw $t0, -2156($fp)
	addi $t0, $fp, -1748
	sw $t0, -2160($fp)
	li $t0, 6
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2168($fp)
	lw $t0, -2160($fp)
	lw $t1, -2168($fp)
	add $t0, $t0, $t1
	sw $t0, -2172($fp)
	lw $t0, -2156($fp)
	lw $t1, -2172($fp)
	sw $t0, 0($t1)
	lw $t0, -2172($fp)
	lw $t1, 0($t0)
	sw $t1, -2176($fp)
	li $t0, 16613
	sw $t0, -2180($fp)
	addi $t0, $fp, -1748
	sw $t0, -2184($fp)
	li $t0, 7
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2192($fp)
	lw $t0, -2184($fp)
	lw $t1, -2192($fp)
	add $t0, $t0, $t1
	sw $t0, -2196($fp)
	lw $t0, -2180($fp)
	lw $t1, -2196($fp)
	sw $t0, 0($t1)
	lw $t0, -2196($fp)
	lw $t1, 0($t0)
	sw $t1, -2200($fp)
	li $t0, 59945
	sw $t0, -2204($fp)
	addi $t0, $fp, -1748
	sw $t0, -2208($fp)
	li $t0, 8
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $t0, -2208($fp)
	lw $t1, -2216($fp)
	add $t0, $t0, $t1
	sw $t0, -2220($fp)
	lw $t0, -2204($fp)
	lw $t1, -2220($fp)
	sw $t0, 0($t1)
	lw $t0, -2220($fp)
	lw $t1, 0($t0)
	sw $t1, -2224($fp)
	li $t0, 59948
	sw $t0, -2228($fp)
	lw $t0, -2228($fp)
	sw $t0, -2232($fp)
	lw $t0, -2232($fp)
	sw $t0, -2236($fp)
	li $t0, 4995
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	sw $t0, -2248($fp)
	li $t0, 26856
	sw $t0, -2252($fp)
	addi $t0, $fp, -1784
	sw $t0, -2256($fp)
	li $t0, 0
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t0, -2256($fp)
	lw $t1, -2264($fp)
	add $t0, $t0, $t1
	sw $t0, -2268($fp)
	lw $t0, -2252($fp)
	lw $t1, -2268($fp)
	sw $t0, 0($t1)
	lw $t0, -2268($fp)
	lw $t1, 0($t0)
	sw $t1, -2272($fp)
	li $t0, 19024
	sw $t0, -2276($fp)
	addi $t0, $fp, -1784
	sw $t0, -2280($fp)
	li $t0, 1
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2288($fp)
	lw $t0, -2280($fp)
	lw $t1, -2288($fp)
	add $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t0, -2276($fp)
	lw $t1, -2292($fp)
	sw $t0, 0($t1)
	lw $t0, -2292($fp)
	lw $t1, 0($t0)
	sw $t1, -2296($fp)
	li $t0, 8268
	sw $t0, -2300($fp)
	addi $t0, $fp, -1784
	sw $t0, -2304($fp)
	li $t0, 2
	sw $t0, -2308($fp)
	lw $t0, -2308($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -2304($fp)
	lw $t1, -2312($fp)
	add $t0, $t0, $t1
	sw $t0, -2316($fp)
	lw $t0, -2300($fp)
	lw $t1, -2316($fp)
	sw $t0, 0($t1)
	lw $t0, -2316($fp)
	lw $t1, 0($t0)
	sw $t1, -2320($fp)
	li $t0, 8377
	sw $t0, -2324($fp)
	addi $t0, $fp, -1784
	sw $t0, -2328($fp)
	li $t0, 3
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2336($fp)
	lw $t0, -2328($fp)
	lw $t1, -2336($fp)
	add $t0, $t0, $t1
	sw $t0, -2340($fp)
	lw $t0, -2324($fp)
	lw $t1, -2340($fp)
	sw $t0, 0($t1)
	lw $t0, -2340($fp)
	lw $t1, 0($t0)
	sw $t1, -2344($fp)
	li $t0, 4003
	sw $t0, -2348($fp)
	addi $t0, $fp, -1784
	sw $t0, -2352($fp)
	li $t0, 4
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $t0, -2352($fp)
	lw $t1, -2360($fp)
	add $t0, $t0, $t1
	sw $t0, -2364($fp)
	lw $t0, -2348($fp)
	lw $t1, -2364($fp)
	sw $t0, 0($t1)
	lw $t0, -2364($fp)
	lw $t1, 0($t0)
	sw $t1, -2368($fp)
	li $t0, 17152
	sw $t0, -2372($fp)
	addi $t0, $fp, -1784
	sw $t0, -2376($fp)
	li $t0, 5
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -2376($fp)
	lw $t1, -2384($fp)
	add $t0, $t0, $t1
	sw $t0, -2388($fp)
	lw $t0, -2372($fp)
	lw $t1, -2388($fp)
	sw $t0, 0($t1)
	lw $t0, -2388($fp)
	lw $t1, 0($t0)
	sw $t1, -2392($fp)
	li $t0, 46584
	sw $t0, -2396($fp)
	addi $t0, $fp, -1784
	sw $t0, -2400($fp)
	li $t0, 6
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2408($fp)
	lw $t0, -2400($fp)
	lw $t1, -2408($fp)
	add $t0, $t0, $t1
	sw $t0, -2412($fp)
	lw $t0, -2396($fp)
	lw $t1, -2412($fp)
	sw $t0, 0($t1)
	lw $t0, -2412($fp)
	lw $t1, 0($t0)
	sw $t1, -2416($fp)
	li $t0, 64084
	sw $t0, -2420($fp)
	addi $t0, $fp, -1784
	sw $t0, -2424($fp)
	li $t0, 7
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t0, -2424($fp)
	lw $t1, -2432($fp)
	add $t0, $t0, $t1
	sw $t0, -2436($fp)
	lw $t0, -2420($fp)
	lw $t1, -2436($fp)
	sw $t0, 0($t1)
	lw $t0, -2436($fp)
	lw $t1, 0($t0)
	sw $t1, -2440($fp)
	li $t0, 6805
	sw $t0, -2444($fp)
	addi $t0, $fp, -1784
	sw $t0, -2448($fp)
	li $t0, 8
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2456($fp)
	lw $t0, -2448($fp)
	lw $t1, -2456($fp)
	add $t0, $t0, $t1
	sw $t0, -2460($fp)
	lw $t0, -2444($fp)
	lw $t1, -2460($fp)
	sw $t0, 0($t1)
	lw $t0, -2460($fp)
	lw $t1, 0($t0)
	sw $t1, -2464($fp)
	li $t0, 26501
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	sw $t0, -2476($fp)
	li $t0, 33991
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	sw $t0, -2488($fp)
	li $t0, 43835
	sw $t0, -2492($fp)
	addi $t0, $fp, -1804
	sw $t0, -2496($fp)
	li $t0, 0
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2504($fp)
	lw $t0, -2496($fp)
	lw $t1, -2504($fp)
	add $t0, $t0, $t1
	sw $t0, -2508($fp)
	lw $t0, -2492($fp)
	lw $t1, -2508($fp)
	sw $t0, 0($t1)
	lw $t0, -2508($fp)
	lw $t1, 0($t0)
	sw $t1, -2512($fp)
	li $t0, 59317
	sw $t0, -2516($fp)
	addi $t0, $fp, -1804
	sw $t0, -2520($fp)
	li $t0, 1
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2528($fp)
	lw $t0, -2520($fp)
	lw $t1, -2528($fp)
	add $t0, $t0, $t1
	sw $t0, -2532($fp)
	lw $t0, -2516($fp)
	lw $t1, -2532($fp)
	sw $t0, 0($t1)
	lw $t0, -2532($fp)
	lw $t1, 0($t0)
	sw $t1, -2536($fp)
	li $t0, 9519
	sw $t0, -2540($fp)
	addi $t0, $fp, -1804
	sw $t0, -2544($fp)
	li $t0, 2
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2552($fp)
	lw $t0, -2544($fp)
	lw $t1, -2552($fp)
	add $t0, $t0, $t1
	sw $t0, -2556($fp)
	lw $t0, -2540($fp)
	lw $t1, -2556($fp)
	sw $t0, 0($t1)
	lw $t0, -2556($fp)
	lw $t1, 0($t0)
	sw $t1, -2560($fp)
	li $t0, 29495
	sw $t0, -2564($fp)
	addi $t0, $fp, -1804
	sw $t0, -2568($fp)
	li $t0, 3
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2576($fp)
	lw $t0, -2568($fp)
	lw $t1, -2576($fp)
	add $t0, $t0, $t1
	sw $t0, -2580($fp)
	lw $t0, -2564($fp)
	lw $t1, -2580($fp)
	sw $t0, 0($t1)
	lw $t0, -2580($fp)
	lw $t1, 0($t0)
	sw $t1, -2584($fp)
	li $t0, 2981
	sw $t0, -2588($fp)
	addi $t0, $fp, -1804
	sw $t0, -2592($fp)
	li $t0, 4
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $t0, -2592($fp)
	lw $t1, -2600($fp)
	add $t0, $t0, $t1
	sw $t0, -2604($fp)
	lw $t0, -2588($fp)
	lw $t1, -2604($fp)
	sw $t0, 0($t1)
	lw $t0, -2604($fp)
	lw $t1, 0($t0)
	sw $t1, -2608($fp)
	li $t0, 56717
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	sw $t0, -2620($fp)
	lw $t0, -1812($fp)
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1712
	sw $t0, -2628($fp)
	li $t0, 0
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
	addi $t0, $fp, -1712
	sw $t0, -2648($fp)
	li $t0, 1
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
	addi $t0, $fp, -1712
	sw $t0, -2668($fp)
	li $t0, 2
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
	addi $t0, $fp, -1712
	sw $t0, -2688($fp)
	li $t0, 3
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
	addi $t0, $fp, -1712
	sw $t0, -2708($fp)
	li $t0, 4
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
	addi $t0, $fp, -1712
	sw $t0, -2728($fp)
	li $t0, 5
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
	addi $t0, $fp, -1712
	sw $t0, -2748($fp)
	li $t0, 6
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
	lw $t0, -1992($fp)
	sw $t0, -2768($fp)
	lw $t0, -2768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2004($fp)
	sw $t0, -2772($fp)
	lw $t0, -2772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1748
	sw $t0, -2776($fp)
	li $t0, 0
	sw $t0, -2780($fp)
	li $t0, 4
	lw $t1, -2780($fp)
	mul $t0, $t0, $t1
	sw $t0, -2784($fp)
	lw $t0, -2784($fp)
	lw $t1, -2776($fp)
	add $t0, $t0, $t1
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	lw $t1, 0($t0)
	sw $t1, -2792($fp)
	lw $t0, -2792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1748
	sw $t0, -2796($fp)
	li $t0, 1
	sw $t0, -2800($fp)
	li $t0, 4
	lw $t1, -2800($fp)
	mul $t0, $t0, $t1
	sw $t0, -2804($fp)
	lw $t0, -2804($fp)
	lw $t1, -2796($fp)
	add $t0, $t0, $t1
	sw $t0, -2808($fp)
	lw $t0, -2808($fp)
	lw $t1, 0($t0)
	sw $t1, -2812($fp)
	lw $t0, -2812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1748
	sw $t0, -2816($fp)
	li $t0, 2
	sw $t0, -2820($fp)
	li $t0, 4
	lw $t1, -2820($fp)
	mul $t0, $t0, $t1
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	lw $t1, -2816($fp)
	add $t0, $t0, $t1
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	lw $t1, 0($t0)
	sw $t1, -2832($fp)
	lw $t0, -2832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1748
	sw $t0, -2836($fp)
	li $t0, 3
	sw $t0, -2840($fp)
	li $t0, 4
	lw $t1, -2840($fp)
	mul $t0, $t0, $t1
	sw $t0, -2844($fp)
	lw $t0, -2844($fp)
	lw $t1, -2836($fp)
	add $t0, $t0, $t1
	sw $t0, -2848($fp)
	lw $t0, -2848($fp)
	lw $t1, 0($t0)
	sw $t1, -2852($fp)
	lw $t0, -2852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1748
	sw $t0, -2856($fp)
	li $t0, 4
	sw $t0, -2860($fp)
	li $t0, 4
	lw $t1, -2860($fp)
	mul $t0, $t0, $t1
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	lw $t1, -2856($fp)
	add $t0, $t0, $t1
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	lw $t1, 0($t0)
	sw $t1, -2872($fp)
	lw $t0, -2872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1748
	sw $t0, -2876($fp)
	li $t0, 5
	sw $t0, -2880($fp)
	li $t0, 4
	lw $t1, -2880($fp)
	mul $t0, $t0, $t1
	sw $t0, -2884($fp)
	lw $t0, -2884($fp)
	lw $t1, -2876($fp)
	add $t0, $t0, $t1
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	lw $t1, 0($t0)
	sw $t1, -2892($fp)
	lw $t0, -2892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1748
	sw $t0, -2896($fp)
	li $t0, 6
	sw $t0, -2900($fp)
	li $t0, 4
	lw $t1, -2900($fp)
	mul $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	lw $t1, -2896($fp)
	add $t0, $t0, $t1
	sw $t0, -2908($fp)
	lw $t0, -2908($fp)
	lw $t1, 0($t0)
	sw $t1, -2912($fp)
	lw $t0, -2912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1748
	sw $t0, -2916($fp)
	li $t0, 7
	sw $t0, -2920($fp)
	li $t0, 4
	lw $t1, -2920($fp)
	mul $t0, $t0, $t1
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	lw $t1, -2916($fp)
	add $t0, $t0, $t1
	sw $t0, -2928($fp)
	lw $t0, -2928($fp)
	lw $t1, 0($t0)
	sw $t1, -2932($fp)
	lw $t0, -2932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1748
	sw $t0, -2936($fp)
	li $t0, 8
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
	lw $t0, -2952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2232($fp)
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2244($fp)
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1784
	sw $t0, -2964($fp)
	li $t0, 0
	sw $t0, -2968($fp)
	li $t0, 4
	lw $t1, -2968($fp)
	mul $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $t0, -2972($fp)
	lw $t1, -2964($fp)
	add $t0, $t0, $t1
	sw $t0, -2976($fp)
	lw $t0, -2976($fp)
	lw $t1, 0($t0)
	sw $t1, -2980($fp)
	lw $t0, -2980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1784
	sw $t0, -2984($fp)
	li $t0, 1
	sw $t0, -2988($fp)
	li $t0, 4
	lw $t1, -2988($fp)
	mul $t0, $t0, $t1
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	lw $t1, -2984($fp)
	add $t0, $t0, $t1
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	lw $t1, 0($t0)
	sw $t1, -3000($fp)
	lw $t0, -3000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1784
	sw $t0, -3004($fp)
	li $t0, 2
	sw $t0, -3008($fp)
	li $t0, 4
	lw $t1, -3008($fp)
	mul $t0, $t0, $t1
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	lw $t1, -3004($fp)
	add $t0, $t0, $t1
	sw $t0, -3016($fp)
	lw $t0, -3016($fp)
	lw $t1, 0($t0)
	sw $t1, -3020($fp)
	lw $t0, -3020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1784
	sw $t0, -3024($fp)
	li $t0, 3
	sw $t0, -3028($fp)
	li $t0, 4
	lw $t1, -3028($fp)
	mul $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -3032($fp)
	lw $t1, -3024($fp)
	add $t0, $t0, $t1
	sw $t0, -3036($fp)
	lw $t0, -3036($fp)
	lw $t1, 0($t0)
	sw $t1, -3040($fp)
	lw $t0, -3040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1784
	sw $t0, -3044($fp)
	li $t0, 4
	sw $t0, -3048($fp)
	li $t0, 4
	lw $t1, -3048($fp)
	mul $t0, $t0, $t1
	sw $t0, -3052($fp)
	lw $t0, -3052($fp)
	lw $t1, -3044($fp)
	add $t0, $t0, $t1
	sw $t0, -3056($fp)
	lw $t0, -3056($fp)
	lw $t1, 0($t0)
	sw $t1, -3060($fp)
	lw $t0, -3060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1784
	sw $t0, -3064($fp)
	li $t0, 5
	sw $t0, -3068($fp)
	li $t0, 4
	lw $t1, -3068($fp)
	mul $t0, $t0, $t1
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	lw $t1, -3064($fp)
	add $t0, $t0, $t1
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	lw $t1, 0($t0)
	sw $t1, -3080($fp)
	lw $t0, -3080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1784
	sw $t0, -3084($fp)
	li $t0, 6
	sw $t0, -3088($fp)
	li $t0, 4
	lw $t1, -3088($fp)
	mul $t0, $t0, $t1
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	lw $t1, -3084($fp)
	add $t0, $t0, $t1
	sw $t0, -3096($fp)
	lw $t0, -3096($fp)
	lw $t1, 0($t0)
	sw $t1, -3100($fp)
	lw $t0, -3100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1784
	sw $t0, -3104($fp)
	li $t0, 7
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
	lw $t0, -3120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1784
	sw $t0, -3124($fp)
	li $t0, 8
	sw $t0, -3128($fp)
	li $t0, 4
	lw $t1, -3128($fp)
	mul $t0, $t0, $t1
	sw $t0, -3132($fp)
	lw $t0, -3132($fp)
	lw $t1, -3124($fp)
	add $t0, $t0, $t1
	sw $t0, -3136($fp)
	lw $t0, -3136($fp)
	lw $t1, 0($t0)
	sw $t1, -3140($fp)
	lw $t0, -3140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2472($fp)
	sw $t0, -3144($fp)
	lw $t0, -3144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2484($fp)
	sw $t0, -3148($fp)
	lw $t0, -3148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1804
	sw $t0, -3152($fp)
	li $t0, 0
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
	addi $t0, $fp, -1804
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
	lw $t0, -3188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1804
	sw $t0, -3192($fp)
	li $t0, 2
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
	addi $t0, $fp, -1804
	sw $t0, -3212($fp)
	li $t0, 3
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
	addi $t0, $fp, -1804
	sw $t0, -3232($fp)
	li $t0, 4
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
	lw $t0, -2616($fp)
	sw $t0, -3252($fp)
	lw $t0, -3252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3256($fp)
	addi $t0, $fp, -1784
	sw $t0, -3260($fp)
	lw $t0, -984($fp)
	sw $t0, -3264($fp)
	lw $t0, 8($fp)
	sw $t0, -3268($fp)
	lw $t0, -3264($fp)
	lw $t1, -3268($fp)
	mul $t0, $t0, $t1
	sw $t0, -3272($fp)
	li $t0, 4
	lw $t1, -3272($fp)
	mul $t0, $t0, $t1
	sw $t0, -3276($fp)
	lw $t0, -3276($fp)
	lw $t1, -3260($fp)
	add $t0, $t0, $t1
	sw $t0, -3280($fp)
	lw $t0, -3280($fp)
	lw $t1, 0($t0)
	sw $t1, -3284($fp)
	lw $t1, -3284($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label123
label123:
	lw $t0, -2244($fp)
	sw $t0, -3288($fp)
	li $t0, 20621
	sw $t0, -3292($fp)
	lw $t0, -3288($fp)
	lw $t1, -3292($fp)
	mul $t0, $t0, $t1
	sw $t0, -3296($fp)
	li $t0, 15724
	sw $t0, -3300($fp)
	lw $t0, -3296($fp)
	lw $t1, -3300($fp)
	sub $t0, $t0, $t1
	sw $t0, -3304($fp)
	lw $t0, -1992($fp)
	sw $t0, -3308($fp)
	li $t0, 0
	lw $t1, -3308($fp)
	sub $t0, $t0, $t1
	sw $t0, -3312($fp)
	lw $t0, -3304($fp)
	lw $t1, -3312($fp)
	add $t0, $t0, $t1
	sw $t0, -3316($fp)
	lw $t1, -3316($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -3256($fp)
label122:
	lw $ra, -4($fp)
	lw $v0, -3256($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 59525
	sw $t0, -3320($fp)
	lw $t0, -3320($fp)
	sw $t0, -3324($fp)
	lw $t0, -3324($fp)
	sw $t0, -3328($fp)
	li $t0, 4602
	sw $t0, -3332($fp)
	lw $t0, -3332($fp)
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	sw $t0, -3340($fp)
	li $t0, 52442
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	sw $t0, -3348($fp)
	lw $t0, -3348($fp)
	sw $t0, -3352($fp)
	li $t0, 50643
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	sw $t0, -3360($fp)
	lw $t0, -3360($fp)
	sw $t0, -3364($fp)
	li $t0, 54151
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	sw $t0, -3376($fp)
	lw $t0, -204($fp)
	sw $t0, -3380($fp)
	lw $t0, -3380($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -3384($fp)
	li $t0, 0
	sw $t0, -3388($fp)
	lw $t0, -3348($fp)
	sw $t0, -3392($fp)
	li $t0, 9334
	sw $t0, -3396($fp)
	lw $t0, -3392($fp)
	lw $t1, -3396($fp)
	add $t0, $t0, $t1
	sw $t0, -3400($fp)
	li $t0, 32024
	sw $t0, -3404($fp)
	lw $t1, -3400($fp)
	lw $t2, -3404($fp)
	beq $t1, $t2, label124
	j label125
label124:
	li $t0, 1
	sw $t0, -3388($fp)
label125:
	li $t0, 0
	sw $t0, -3408($fp)
	li $t0, 7656
	sw $t0, -3412($fp)
	lw $t0, -1632($fp)
	sw $t0, -3416($fp)
	lw $t0, -3412($fp)
	lw $t1, -3416($fp)
	add $t0, $t0, $t1
	sw $t0, -3420($fp)
	lw $t0, -744($fp)
	sw $t0, -3424($fp)
	lw $t1, -3420($fp)
	lw $t2, -3424($fp)
	bgt $t1, $t2, label126
	j label127
label126:
	li $t0, 1
	sw $t0, -3408($fp)
label127:
	addi $sp, $sp, -4
	lw $t0, -3384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3408($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3428($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -3428($fp)
	sub $t0, $t0, $t1
	sw $t0, -3432($fp)
	lw $t0, -3360($fp)
	sw $t0, -3436($fp)
	addi $t0, $fp, -56
	sw $t0, -3440($fp)
	li $t0, 0
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
	lw $t0, -3436($fp)
	lw $t1, -3456($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3460($fp)
	li $t0, 0
	sw $t0, -3464($fp)
	li $t0, 29265
	sw $t0, -3468($fp)
	lw $t1, -3468($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label128
label128:
	li $t0, 1
	sw $t0, -3464($fp)
label129:
	addi $t0, $fp, -1712
	sw $t0, -3472($fp)
	li $t0, 6
	sw $t0, -3476($fp)
	li $t0, 4
	lw $t1, -3476($fp)
	mul $t0, $t0, $t1
	sw $t0, -3480($fp)
	lw $t0, -3480($fp)
	lw $t1, -3472($fp)
	add $t0, $t0, $t1
	sw $t0, -3484($fp)
	lw $t0, -3484($fp)
	lw $t1, 0($t0)
	sw $t1, -3488($fp)
	li $t0, 0
	sw $t0, -3492($fp)
	li $t0, 0
	sw $t0, -3496($fp)
	lw $t0, -744($fp)
	sw $t0, -3500($fp)
	lw $t0, 8($fp)
	sw $t0, -3504($fp)
	lw $t1, -3500($fp)
	lw $t2, -3504($fp)
	bne $t1, $t2, label132
	j label133
label132:
	li $t0, 1
	sw $t0, -3496($fp)
label133:
	lw $t0, -3348($fp)
	sw $t0, -3508($fp)
	lw $t1, -3496($fp)
	lw $t2, -3508($fp)
	bne $t1, $t2, label130
	j label131
label130:
	li $t0, 1
	sw $t0, -3492($fp)
label131:
	li $t0, 0
	sw $t0, -3512($fp)
	li $t0, 0
	sw $t0, -3516($fp)
	lw $t0, -348($fp)
	sw $t0, -3520($fp)
	lw $t1, -3520($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label137
label139:
	li $t0, 49463
	sw $t0, -3524($fp)
	lw $t1, -3524($fp)
	li $t2, 0
	bne $t1, $t2, label138
	j label137
label138:
	lw $t0, -3372($fp)
	sw $t0, -3528($fp)
	lw $t1, -3528($fp)
	li $t2, 0
	bne $t1, $t2, label136
	j label137
label136:
	li $t0, 1
	sw $t0, -3516($fp)
label137:
	li $t0, 0
	sw $t0, -3532($fp)
	lw $t0, -360($fp)
	sw $t0, -3536($fp)
	lw $t0, -1632($fp)
	sw $t0, -3540($fp)
	lw $t1, -3536($fp)
	lw $t2, -3540($fp)
	blt $t1, $t2, label140
	j label141
label140:
	li $t0, 1
	sw $t0, -3532($fp)
label141:
	lw $t0, -3324($fp)
	sw $t0, -3544($fp)
	lw $t0, -1356($fp)
	sw $t0, -3548($fp)
	lw $t0, -3544($fp)
	lw $t1, -3548($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3552($fp)
	addi $sp, $sp, -4
	lw $t0, -3516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3552($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3556($fp)
	addi $sp, $sp, 16
	lw $t0, -3372($fp)
	sw $t0, -3560($fp)
	lw $t1, -3556($fp)
	lw $t2, -3560($fp)
	bge $t1, $t2, label134
	j label135
label134:
	li $t0, 1
	sw $t0, -3512($fp)
label135:
	li $t0, 38977
	sw $t0, -3564($fp)
	lw $t0, -3564($fp)
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -3568($fp)
	addi $sp, $sp, -4
	lw $t0, -3492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3568($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3572($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -3576($fp)
	li $t0, 45460
	sw $t0, -3580($fp)
	lw $t0, -180($fp)
	sw $t0, -3584($fp)
	lw $t1, -3580($fp)
	lw $t2, -3584($fp)
	beq $t1, $t2, label144
	j label143
label144:
	li $t0, 37533
	sw $t0, -3588($fp)
	lw $t1, -3588($fp)
	li $t2, 0
	bne $t1, $t2, label142
	j label143
label142:
	li $t0, 1
	sw $t0, -3576($fp)
label143:
	li $t0, 0
	sw $t0, -3592($fp)
	li $t0, 30600
	sw $t0, -3596($fp)
	li $t0, 0
	lw $t1, -3596($fp)
	sub $t0, $t0, $t1
	sw $t0, -3600($fp)
	lw $t0, -1632($fp)
	sw $t0, -3604($fp)
	lw $t1, -3600($fp)
	lw $t2, -3604($fp)
	beq $t1, $t2, label145
	j label146
label145:
	li $t0, 1
	sw $t0, -3592($fp)
label146:
	addi $sp, $sp, -4
	lw $t0, -3572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3592($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3608($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -3612($fp)
	lw $t0, -3336($fp)
	sw $t0, -3616($fp)
	lw $t0, -612($fp)
	sw $t0, -3620($fp)
	lw $t1, -3616($fp)
	lw $t2, -3620($fp)
	blt $t1, $t2, label147
	j label148
label147:
	li $t0, 1
	sw $t0, -3612($fp)
label148:
	addi $sp, $sp, -4
	lw $t0, -3488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3612($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3624($fp)
	addi $sp, $sp, 16
	lw $t0, -3464($fp)
	lw $t1, -3624($fp)
	mul $t0, $t0, $t1
	sw $t0, -3628($fp)
label149:
	lw $t0, -756($fp)
	sw $t0, -3632($fp)
	li $t0, 0
	lw $t1, -3632($fp)
	sub $t0, $t0, $t1
	sw $t0, -3636($fp)
	addi $t0, $fp, -52
	sw $t0, -3640($fp)
	li $t0, 2
	sw $t0, -3644($fp)
	li $t0, 4
	lw $t1, -3644($fp)
	mul $t0, $t0, $t1
	sw $t0, -3648($fp)
	lw $t0, -3648($fp)
	lw $t1, -3640($fp)
	add $t0, $t0, $t1
	sw $t0, -3652($fp)
	lw $t0, -3652($fp)
	lw $t1, 0($t0)
	sw $t1, -3656($fp)
	li $t0, 46527
	sw $t0, -3660($fp)
	lw $t0, -3656($fp)
	lw $t1, -3660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3664($fp)
	lw $t0, -3636($fp)
	lw $t1, -3664($fp)
	add $t0, $t0, $t1
	sw $t0, -3668($fp)
	li $t0, 16467
	sw $t0, -3672($fp)
	li $t0, 0
	sw $t0, -3676($fp)
	lw $t0, -1020($fp)
	sw $t0, -3680($fp)
	lw $t1, -3680($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label152
label152:
	li $t0, 1
	sw $t0, -3676($fp)
label153:
	lw $t0, -3672($fp)
	lw $t1, -3676($fp)
	add $t0, $t0, $t1
	sw $t0, -3684($fp)
	lw $t1, -3668($fp)
	lw $t2, -3684($fp)
	bne $t1, $t2, label150
	j label151
label150:
	lw $t0, -1296($fp)
	sw $t0, -3688($fp)
	li $t0, 40308
	sw $t0, -3692($fp)
	lw $t0, -3688($fp)
	lw $t1, -3692($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3696($fp)
	li $t0, 0
	lw $t1, -3696($fp)
	sub $t0, $t0, $t1
	sw $t0, -3700($fp)
	addi $t0, $fp, -1804
	sw $t0, -3704($fp)
	lw $t0, -288($fp)
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
	li $t0, 0
	sw $t0, -3724($fp)
	li $t0, 39789
	sw $t0, -3728($fp)
	lw $t0, -720($fp)
	sw $t0, -3732($fp)
	lw $t0, -3728($fp)
	lw $t1, -3732($fp)
	mul $t0, $t0, $t1
	sw $t0, -3736($fp)
	lw $t0, -336($fp)
	sw $t0, -3740($fp)
	lw $t1, -3736($fp)
	lw $t2, -3740($fp)
	beq $t1, $t2, label157
	j label158
label157:
	li $t0, 1
	sw $t0, -3724($fp)
label158:
	addi $sp, $sp, -4
	lw $t0, -3700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3724($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3744($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -3748($fp)
	lw $t0, -1308($fp)
	sw $t0, -3752($fp)
	lw $t1, -3752($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label159
label159:
	li $t0, 1
	sw $t0, -3748($fp)
label160:
	lw $t0, -3744($fp)
	lw $t1, -3748($fp)
	add $t0, $t0, $t1
	sw $t0, -3756($fp)
	li $t0, 25986
	sw $t0, -3760($fp)
	lw $t0, -3756($fp)
	lw $t1, -3760($fp)
	sub $t0, $t0, $t1
	sw $t0, -3764($fp)
	li $t0, 0
	sw $t0, -3768($fp)
	lw $t0, -1632($fp)
	sw $t0, -3772($fp)
	lw $t1, -3772($fp)
	li $t2, 0
	bne $t1, $t2, label162
	j label161
label161:
	li $t0, 1
	sw $t0, -3768($fp)
label162:
	li $t0, 0
	lw $t1, -3768($fp)
	sub $t0, $t0, $t1
	sw $t0, -3776($fp)
	lw $t1, -3764($fp)
	lw $t2, -3776($fp)
	blt $t1, $t2, label154
	j label155
label154:
	li $t0, 3749
	sw $t0, -3780($fp)
	lw $t0, -3780($fp)
	sw $t0, -3784($fp)
	lw $t0, -3784($fp)
	sw $t0, -3788($fp)
	li $t0, 43290
	sw $t0, -3792($fp)
	lw $t0, -3792($fp)
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	sw $t0, -3800($fp)
	li $t0, 17167
	sw $t0, -3804($fp)
	lw $t0, -3804($fp)
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	sw $t0, -3812($fp)
	li $t0, 0
	sw $t0, -3816($fp)
	li $t0, 59014
	sw $t0, -3820($fp)
	li $t0, 0
	lw $t1, -3820($fp)
	sub $t0, $t0, $t1
	sw $t0, -3824($fp)
	li $t0, 0
	sw $t0, -3828($fp)
	li $t0, 24370
	sw $t0, -3832($fp)
	lw $t0, -660($fp)
	sw $t0, -3836($fp)
	lw $t1, -3832($fp)
	lw $t2, -3836($fp)
	beq $t1, $t2, label165
	j label167
label167:
	lw $t0, -1632($fp)
	sw $t0, -3840($fp)
	lw $t1, -3840($fp)
	li $t2, 0
	bne $t1, $t2, label165
	j label166
label165:
	li $t0, 1
	sw $t0, -3828($fp)
label166:
	lw $t0, -180($fp)
	sw $t0, -3844($fp)
	lw $t0, -3796($fp)
	sw $t0, -3848($fp)
	lw $t0, -3844($fp)
	lw $t1, -3848($fp)
	mul $t0, $t0, $t1
	sw $t0, -3852($fp)
	li $t0, 0
	lw $t1, -3852($fp)
	sub $t0, $t0, $t1
	sw $t0, -3856($fp)
	addi $sp, $sp, -4
	lw $t0, -3824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3856($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3860($fp)
	addi $sp, $sp, 16
	lw $t0, -3808($fp)
	sw $t0, -3864($fp)
	li $t0, 0
	lw $t1, -3864($fp)
	sub $t0, $t0, $t1
	sw $t0, -3868($fp)
	li $t0, 0
	lw $t1, -3868($fp)
	sub $t0, $t0, $t1
	sw $t0, -3872($fp)
	lw $t0, -3860($fp)
	lw $t1, -3872($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3876($fp)
	li $t0, 0
	sw $t0, -3880($fp)
	lw $t0, -3784($fp)
	sw $t0, -3884($fp)
	lw $t1, -3884($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label168
label168:
	li $t0, 1
	sw $t0, -3880($fp)
label169:
	li $t0, 11156
	sw $t0, -3888($fp)
	li $t0, 0
	lw $t1, -3888($fp)
	sub $t0, $t0, $t1
	sw $t0, -3892($fp)
	lw $t0, -3880($fp)
	lw $t1, -3892($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3896($fp)
	li $t0, 0
	lw $t1, -3896($fp)
	sub $t0, $t0, $t1
	sw $t0, -3900($fp)
	lw $t1, -3876($fp)
	lw $t2, -3900($fp)
	bgt $t1, $t2, label163
	j label164
label163:
	li $t0, 1
	sw $t0, -3816($fp)
label164:
	j label156
label155:
	lw $t0, 4($fp)
	sw $t0, -3904($fp)
	addi $t0, $fp, -1712
	sw $t0, -3908($fp)
	li $t0, 0
	sw $t0, -3912($fp)
	lw $t0, -2616($fp)
	sw $t0, -3916($fp)
	li $t0, 28972
	sw $t0, -3920($fp)
	lw $t1, -3916($fp)
	lw $t2, -3920($fp)
	beq $t1, $t2, label170
	j label171
label170:
	li $t0, 1
	sw $t0, -3912($fp)
label171:
	li $t0, 4
	lw $t1, -3912($fp)
	mul $t0, $t0, $t1
	sw $t0, -3924($fp)
	lw $t0, -3924($fp)
	lw $t1, -3908($fp)
	add $t0, $t0, $t1
	sw $t0, -3928($fp)
	lw $t0, -3928($fp)
	lw $t1, 0($t0)
	sw $t1, -3932($fp)
	lw $t0, -3904($fp)
	lw $t1, -3932($fp)
	mul $t0, $t0, $t1
	sw $t0, -3936($fp)
label156:
	j label149
label151:
	li $t0, 0
	sw $t0, -3940($fp)
	lw $t0, -672($fp)
	sw $t0, -3944($fp)
	lw $t1, -3944($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label173
label174:
	addi $t0, $fp, -1784
	sw $t0, -3948($fp)
	lw $t0, -1656($fp)
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
	li $t0, 45920
	sw $t0, -3968($fp)
	li $t0, 0
	lw $t1, -3968($fp)
	sub $t0, $t0, $t1
	sw $t0, -3972($fp)
	lw $t0, -3964($fp)
	lw $t1, -3972($fp)
	mul $t0, $t0, $t1
	sw $t0, -3976($fp)
	lw $t1, -3976($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label173
label172:
	li $t0, 1
	sw $t0, -3940($fp)
label173:
	lw $ra, -4($fp)
	lw $v0, -3940($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label175:
	addi $t0, $fp, -56
	sw $t0, -3980($fp)
	lw $t0, 8($fp)
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
	lw $t0, -720($fp)
	sw $t0, -4000($fp)
	lw $t0, -3996($fp)
	lw $t1, -4000($fp)
	mul $t0, $t0, $t1
	sw $t0, -4004($fp)
	li $t0, 17589
	sw $t0, -4008($fp)
	lw $t0, -4004($fp)
	lw $t1, -4008($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4012($fp)
	lw $t0, -4012($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -4016($fp)
	lw $t1, -4016($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label177
label176:
	li $t0, 53576
	sw $t0, -4020($fp)
	lw $t0, -4020($fp)
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	sw $t0, -4028($fp)
	li $t0, 5598
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	sw $t0, -4040($fp)
	li $t0, 49612
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	sw $t0, -4052($fp)
	li $t0, 12310
	sw $t0, -4056($fp)
	lw $t0, -4056($fp)
	sw $t0, -4060($fp)
	lw $t0, -4060($fp)
	sw $t0, -4064($fp)
	li $t0, 0
	sw $t0, -4068($fp)
	li $t0, 39943
	sw $t0, -4072($fp)
	li $t0, 55973
	sw $t0, -4076($fp)
	lw $t0, -4072($fp)
	lw $t1, -4076($fp)
	sub $t0, $t0, $t1
	sw $t0, -4080($fp)
	lw $t1, -4080($fp)
	li $t2, 0
	bne $t1, $t2, label180
	j label179
label180:
	li $t0, 13572
	sw $t0, -4084($fp)
	lw $t1, -4084($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label179
label178:
	li $t0, 1
	sw $t0, -4068($fp)
label179:
	li $t0, 0
	sw $t0, -4088($fp)
	addi $t0, $fp, -172
	sw $t0, -4092($fp)
	lw $t0, -2244($fp)
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
	lw $t0, -720($fp)
	sw $t0, -4112($fp)
	lw $t1, -4108($fp)
	lw $t2, -4112($fp)
	beq $t1, $t2, label181
	j label182
label181:
	li $t0, 1
	sw $t0, -4088($fp)
label182:
	li $t0, 0
	sw $t0, -4116($fp)
	li $t0, 9342
	sw $t0, -4120($fp)
	li $t0, 10513
	sw $t0, -4124($fp)
	lw $t0, -4120($fp)
	lw $t1, -4124($fp)
	mul $t0, $t0, $t1
	sw $t0, -4128($fp)
	lw $t1, -4128($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label184
label185:
	li $t0, 41575
	sw $t0, -4132($fp)
	lw $t1, -4132($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label184
label183:
	li $t0, 1
	sw $t0, -4116($fp)
label184:
	addi $sp, $sp, -4
	lw $t0, -4068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4116($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4136($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -1712
	sw $t0, -4140($fp)
	lw $t0, -1320($fp)
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
	lw $t0, -1344($fp)
	sw $t0, -4160($fp)
	lw $t0, -4156($fp)
	lw $t1, -4160($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4164($fp)
	lw $t0, -1008($fp)
	sw $t0, -4168($fp)
	lw $t0, -4060($fp)
	sw $t0, -4172($fp)
	lw $t0, -4168($fp)
	lw $t1, -4172($fp)
	mul $t0, $t0, $t1
	sw $t0, -4176($fp)
	li $t0, 14401
	sw $t0, -4180($fp)
	lw $t0, -4176($fp)
	lw $t1, -4180($fp)
	sub $t0, $t0, $t1
	sw $t0, -4184($fp)
	li $t0, 0
	sw $t0, -4188($fp)
	li $t0, 33410
	sw $t0, -4192($fp)
	li $t0, 22376
	sw $t0, -4196($fp)
	lw $t1, -4192($fp)
	lw $t2, -4196($fp)
	beq $t1, $t2, label188
	j label187
label188:
	li $t0, 64211
	sw $t0, -4200($fp)
	lw $t1, -4200($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label187
label186:
	li $t0, 1
	sw $t0, -4188($fp)
label187:
	addi $sp, $sp, -4
	lw $t0, -4164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4188($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4204($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -4208($fp)
	li $t0, 13384
	sw $t0, -4212($fp)
	li $t0, 39901
	sw $t0, -4216($fp)
	lw $t0, -4212($fp)
	lw $t1, -4216($fp)
	add $t0, $t0, $t1
	sw $t0, -4220($fp)
	li $t0, 2721
	sw $t0, -4224($fp)
	lw $t1, -4220($fp)
	lw $t2, -4224($fp)
	beq $t1, $t2, label189
	j label190
label189:
	li $t0, 1
	sw $t0, -4208($fp)
label190:
	li $t0, 0
	sw $t0, -4228($fp)
	lw $t0, -4036($fp)
	sw $t0, -4232($fp)
	lw $t0, -2232($fp)
	sw $t0, -4236($fp)
	lw $t0, -4232($fp)
	lw $t1, -4236($fp)
	add $t0, $t0, $t1
	sw $t0, -4240($fp)
	lw $t0, -648($fp)
	sw $t0, -4244($fp)
	lw $t1, -4240($fp)
	lw $t2, -4244($fp)
	bne $t1, $t2, label191
	j label192
label191:
	li $t0, 1
	sw $t0, -4228($fp)
label192:
	addi $sp, $sp, -4
	lw $t0, -4204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4228($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4248($fp)
	addi $sp, $sp, 16
	lw $t0, -4136($fp)
	lw $t1, -4248($fp)
	mul $t0, $t0, $t1
	sw $t0, -4252($fp)
	li $t0, 0
	lw $t1, -4252($fp)
	sub $t0, $t0, $t1
	sw $t0, -4256($fp)
	li $t0, 0
	lw $t1, -4256($fp)
	sub $t0, $t0, $t1
	sw $t0, -4260($fp)
	li $t0, 0
	sw $t0, -4264($fp)
	addi $t0, $fp, -52
	sw $t0, -4268($fp)
	li $t0, 0
	sw $t0, -4272($fp)
	lw $t0, -648($fp)
	sw $t0, -4276($fp)
	li $t0, 38843
	sw $t0, -4280($fp)
	lw $t1, -4276($fp)
	lw $t2, -4280($fp)
	bgt $t1, $t2, label195
	j label196
label195:
	li $t0, 1
	sw $t0, -4272($fp)
label196:
	li $t0, 4
	lw $t1, -4272($fp)
	mul $t0, $t0, $t1
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	lw $t1, -4268($fp)
	add $t0, $t0, $t1
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	lw $t1, 0($t0)
	sw $t1, -4292($fp)
	li $t0, 0
	sw $t0, -4296($fp)
	li $t0, 38464
	sw $t0, -4300($fp)
	li $t0, 0
	lw $t1, -4300($fp)
	sub $t0, $t0, $t1
	sw $t0, -4304($fp)
	lw $t1, -4304($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label198
label197:
	li $t0, 1
	sw $t0, -4296($fp)
label198:
	lw $t1, -4292($fp)
	lw $t2, -4296($fp)
	bge $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -4264($fp)
label194:
	lw $t0, -600($fp)
	sw $t0, -4308($fp)
	lw $t0, -4308($fp)
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	sw $t0, -4312($fp)
	li $t0, 0
	sw $t0, -4316($fp)
	li $t0, 64829
	sw $t0, -4320($fp)
	lw $t1, -4320($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label200
label202:
	lw $t0, -1632($fp)
	sw $t0, -4324($fp)
	lw $t1, -4324($fp)
	li $t2, 0
	bne $t1, $t2, label201
	j label200
label201:
	li $t0, 42213
	sw $t0, -4328($fp)
	lw $t1, -4328($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label200
label199:
	li $t0, 1
	sw $t0, -4316($fp)
label200:
	li $t0, 54710
	sw $t0, -4332($fp)
	lw $t0, -996($fp)
	sw $t0, -4336($fp)
	lw $t0, -4332($fp)
	lw $t1, -4336($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4340($fp)
	li $t0, 0
	lw $t1, -4340($fp)
	sub $t0, $t0, $t1
	sw $t0, -4344($fp)
	addi $sp, $sp, -4
	lw $t0, -4312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4344($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4348($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -4352($fp)
	lw $t0, -4024($fp)
	sw $t0, -4356($fp)
	li $t0, 32464
	sw $t0, -4360($fp)
	li $t0, 0
	lw $t1, -4360($fp)
	sub $t0, $t0, $t1
	sw $t0, -4364($fp)
	li $t0, 0
	lw $t1, -4364($fp)
	sub $t0, $t0, $t1
	sw $t0, -4368($fp)
	lw $t0, -4356($fp)
	lw $t1, -4368($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4372($fp)
	lw $t1, -4372($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label205
label205:
	li $t0, 16461
	sw $t0, -4376($fp)
	li $t0, 1048
	sw $t0, -4380($fp)
	lw $t0, -4376($fp)
	lw $t1, -4380($fp)
	add $t0, $t0, $t1
	sw $t0, -4384($fp)
	lw $t0, -660($fp)
	sw $t0, -4388($fp)
	lw $t0, -4384($fp)
	lw $t1, -4388($fp)
	add $t0, $t0, $t1
	sw $t0, -4392($fp)
	li $t0, 25942
	sw $t0, -4396($fp)
	lw $t0, -1632($fp)
	sw $t0, -4400($fp)
	lw $t0, -4396($fp)
	lw $t1, -4400($fp)
	mul $t0, $t0, $t1
	sw $t0, -4404($fp)
	lw $t1, -4392($fp)
	lw $t2, -4404($fp)
	bne $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -4352($fp)
label204:
	li $t0, 0
	sw $t0, -4408($fp)
	li $t0, 47608
	sw $t0, -4412($fp)
	li $t0, 59903
	sw $t0, -4416($fp)
	lw $t0, -4412($fp)
	lw $t1, -4416($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4420($fp)
	lw $t0, -1632($fp)
	sw $t0, -4424($fp)
	li $t0, 6327
	sw $t0, -4428($fp)
	lw $t0, -4424($fp)
	lw $t1, -4428($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4432($fp)
	li $t0, 23881
	sw $t0, -4436($fp)
	lw $t0, -4432($fp)
	lw $t1, -4436($fp)
	sub $t0, $t0, $t1
	sw $t0, -4440($fp)
	li $t0, 0
	sw $t0, -4444($fp)
	lw $t0, 8($fp)
	sw $t0, -4448($fp)
	li $t0, 27617
	sw $t0, -4452($fp)
	lw $t0, -4448($fp)
	lw $t1, -4452($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4456($fp)
	li $t0, 30020
	sw $t0, -4460($fp)
	lw $t1, -4456($fp)
	lw $t2, -4460($fp)
	beq $t1, $t2, label209
	j label210
label209:
	li $t0, 1
	sw $t0, -4444($fp)
label210:
	addi $sp, $sp, -4
	lw $t0, -4420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4444($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4464($fp)
	addi $sp, $sp, 16
	lw $t1, -4464($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label208
label208:
	addi $t0, $fp, -16
	sw $t0, -4468($fp)
	li $t0, 0
	sw $t0, -4472($fp)
	li $t0, 29480
	sw $t0, -4476($fp)
	lw $t1, -4476($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label212
label213:
	lw $t0, -2232($fp)
	sw $t0, -4480($fp)
	lw $t1, -4480($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label212
label211:
	li $t0, 1
	sw $t0, -4472($fp)
label212:
	li $t0, 4
	lw $t1, -4472($fp)
	mul $t0, $t0, $t1
	sw $t0, -4484($fp)
	lw $t0, -4484($fp)
	lw $t1, -4468($fp)
	add $t0, $t0, $t1
	sw $t0, -4488($fp)
	lw $t0, -4488($fp)
	lw $t1, 0($t0)
	sw $t1, -4492($fp)
	lw $t1, -4492($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -4408($fp)
label207:
	j label175
label177:
label214:
	li $t0, 0
	sw $t0, -4496($fp)
	li $t0, 31685
	sw $t0, -4500($fp)
	lw $t1, -4500($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label217
label217:
	li $t0, 1
	sw $t0, -4496($fp)
label218:
	addi $t0, $fp, -132
	sw $t0, -4504($fp)
	li $t0, 0
	sw $t0, -4508($fp)
	lw $t0, -2484($fp)
	sw $t0, -4512($fp)
	lw $t1, -4512($fp)
	li $t2, 0
	bne $t1, $t2, label221
	j label220
label221:
	lw $t0, -2616($fp)
	sw $t0, -4516($fp)
	lw $t1, -4516($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label220
label219:
	li $t0, 1
	sw $t0, -4508($fp)
label220:
	li $t0, 4
	lw $t1, -4508($fp)
	mul $t0, $t0, $t1
	sw $t0, -4520($fp)
	lw $t0, -4520($fp)
	lw $t1, -4504($fp)
	add $t0, $t0, $t1
	sw $t0, -4524($fp)
	lw $t0, -4524($fp)
	lw $t1, 0($t0)
	sw $t1, -4528($fp)
	lw $t1, -4496($fp)
	lw $t2, -4528($fp)
	bne $t1, $t2, label215
	j label216
label215:
	li $t0, 0
	sw $t0, -4532($fp)
	li $t0, 13229
	sw $t0, -4536($fp)
	lw $t0, -1632($fp)
	sw $t0, -4540($fp)
	lw $t0, -4536($fp)
	lw $t1, -4540($fp)
	sub $t0, $t0, $t1
	sw $t0, -4544($fp)
	lw $t1, -4544($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label226
label227:
	li $t0, 32635
	sw $t0, -4548($fp)
	lw $t1, -4548($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label226
label225:
	li $t0, 1
	sw $t0, -4532($fp)
label226:
	li $t0, 0
	sw $t0, -4552($fp)
	li $t0, 0
	sw $t0, -4556($fp)
	li $t0, 38822
	sw $t0, -4560($fp)
	li $t0, 42198
	sw $t0, -4564($fp)
	lw $t1, -4560($fp)
	lw $t2, -4564($fp)
	bgt $t1, $t2, label230
	j label231
label230:
	li $t0, 1
	sw $t0, -4556($fp)
label231:
	li $t0, 48252
	sw $t0, -4568($fp)
	lw $t1, -4556($fp)
	lw $t2, -4568($fp)
	ble $t1, $t2, label228
	j label229
label228:
	li $t0, 1
	sw $t0, -4552($fp)
label229:
	li $t0, 6677
	sw $t0, -4572($fp)
	li $t0, 0
	lw $t1, -4572($fp)
	sub $t0, $t0, $t1
	sw $t0, -4576($fp)
	lw $t0, -1356($fp)
	sw $t0, -4580($fp)
	lw $t0, -4576($fp)
	lw $t1, -4580($fp)
	sub $t0, $t0, $t1
	sw $t0, -4584($fp)
	addi $sp, $sp, -4
	lw $t0, -4532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4584($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4588($fp)
	addi $sp, $sp, 16
	lw $t1, -4588($fp)
	li $t2, 0
	bne $t1, $t2, label222
	j label223
label222:
	li $t0, 0
	sw $t0, -4592($fp)
	lw $t0, -984($fp)
	sw $t0, -4596($fp)
	lw $t1, -4596($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -4592($fp)
label236:
	li $t0, 0
	lw $t1, -4592($fp)
	sub $t0, $t0, $t1
	sw $t0, -4600($fp)
	lw $t1, -4600($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label233
label232:
	li $t0, 61824
	sw $t0, -4604($fp)
	li $t0, 26614
	sw $t0, -4608($fp)
	li $t0, 7000
	sw $t0, -4612($fp)
	lw $t0, -4608($fp)
	lw $t1, -4612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4616($fp)
	addi $t0, $fp, -1804
	sw $t0, -4620($fp)
	li $t0, 4
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
	lw $t0, -4616($fp)
	lw $t1, -4636($fp)
	mul $t0, $t0, $t1
	sw $t0, -4640($fp)
	lw $t0, -4604($fp)
	lw $t1, -4640($fp)
	add $t0, $t0, $t1
	sw $t0, -4644($fp)
	lw $ra, -4($fp)
	lw $v0, -4644($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label233:
	j label224
label223:
	addi $t0, $fp, -1804
	sw $t0, -4648($fp)
	lw $t0, -732($fp)
	sw $t0, -4652($fp)
	li $t0, 0
	lw $t1, -4652($fp)
	sub $t0, $t0, $t1
	sw $t0, -4656($fp)
	li $t0, 0
	lw $t1, -4656($fp)
	sub $t0, $t0, $t1
	sw $t0, -4660($fp)
	li $t0, 0
	sw $t0, -4664($fp)
	li $t0, 8890
	sw $t0, -4668($fp)
	lw $t0, -648($fp)
	sw $t0, -4672($fp)
	lw $t0, -4668($fp)
	lw $t1, -4672($fp)
	sub $t0, $t0, $t1
	sw $t0, -4676($fp)
	lw $t0, -1308($fp)
	sw $t0, -4680($fp)
	lw $t1, -4676($fp)
	lw $t2, -4680($fp)
	blt $t1, $t2, label240
	j label241
label240:
	li $t0, 1
	sw $t0, -4664($fp)
label241:
	lw $t0, -1008($fp)
	sw $t0, -4684($fp)
	lw $t0, -4684($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -4688($fp)
	li $t0, 29377
	sw $t0, -4692($fp)
	li $t0, 63220
	sw $t0, -4696($fp)
	lw $t0, -4692($fp)
	lw $t1, -4696($fp)
	add $t0, $t0, $t1
	sw $t0, -4700($fp)
	addi $sp, $sp, -4
	lw $t0, -4664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4700($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4704($fp)
	addi $sp, $sp, 16
	lw $t0, -4660($fp)
	lw $t1, -4704($fp)
	add $t0, $t0, $t1
	sw $t0, -4708($fp)
	li $t0, 4
	lw $t1, -4708($fp)
	mul $t0, $t0, $t1
	sw $t0, -4712($fp)
	lw $t0, -4712($fp)
	lw $t1, -4648($fp)
	add $t0, $t0, $t1
	sw $t0, -4716($fp)
	lw $t0, -4716($fp)
	lw $t1, 0($t0)
	sw $t1, -4720($fp)
	lw $t1, -4720($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label238
label237:
	li $t0, 0
	sw $t0, -4724($fp)
	li $t0, 2684
	sw $t0, -4728($fp)
	li $t0, 0
	sw $t0, -4732($fp)
	li $t0, 0
	sw $t0, -4736($fp)
	li $t0, 12826
	sw $t0, -4740($fp)
	lw $t0, -648($fp)
	sw $t0, -4744($fp)
	lw $t1, -4740($fp)
	lw $t2, -4744($fp)
	beq $t1, $t2, label249
	j label248
label249:
	li $t0, 30528
	sw $t0, -4748($fp)
	lw $t1, -4748($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label248
label247:
	li $t0, 1
	sw $t0, -4736($fp)
label248:
	li $t0, 1978
	sw $t0, -4752($fp)
	lw $t0, -600($fp)
	sw $t0, -4756($fp)
	lw $t0, -4752($fp)
	lw $t1, -4756($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4760($fp)
	li $t0, 0
	lw $t1, -4760($fp)
	sub $t0, $t0, $t1
	sw $t0, -4764($fp)
	li $t0, 0
	sw $t0, -4768($fp)
	lw $t0, -360($fp)
	sw $t0, -4772($fp)
	lw $t1, -4772($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label250
label250:
	li $t0, 1
	sw $t0, -4768($fp)
label251:
	lw $t0, -1632($fp)
	sw $t0, -4776($fp)
	lw $t0, -4768($fp)
	lw $t1, -4776($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4780($fp)
	addi $sp, $sp, -4
	lw $t0, -4736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4780($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4784($fp)
	addi $sp, $sp, 16
	lw $t0, -1632($fp)
	sw $t0, -4788($fp)
	lw $t1, -4784($fp)
	lw $t2, -4788($fp)
	beq $t1, $t2, label245
	j label246
label245:
	li $t0, 1
	sw $t0, -4732($fp)
label246:
	lw $t0, -1632($fp)
	sw $t0, -4792($fp)
	li $t0, 0
	sw $t0, -4796($fp)
	li $t0, 0
	sw $t0, -4800($fp)
	lw $t0, -1680($fp)
	sw $t0, -4804($fp)
	li $t0, 36149
	sw $t0, -4808($fp)
	lw $t1, -4804($fp)
	lw $t2, -4808($fp)
	blt $t1, $t2, label254
	j label255
label254:
	li $t0, 1
	sw $t0, -4800($fp)
label255:
	li $t0, 63600
	sw $t0, -4812($fp)
	lw $t1, -4800($fp)
	lw $t2, -4812($fp)
	ble $t1, $t2, label252
	j label253
label252:
	li $t0, 1
	sw $t0, -4796($fp)
label253:
	addi $sp, $sp, -4
	lw $t0, -4732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4796($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4816($fp)
	addi $sp, $sp, 16
	lw $t0, -4728($fp)
	lw $t1, -4816($fp)
	mul $t0, $t0, $t1
	sw $t0, -4820($fp)
	lw $t1, -4820($fp)
	li $t2, 0
	bne $t1, $t2, label244
	j label243
label244:
	li $t0, 0
	sw $t0, -4824($fp)
	lw $t0, -2472($fp)
	sw $t0, -4828($fp)
	li $t0, 0
	lw $t1, -4828($fp)
	sub $t0, $t0, $t1
	sw $t0, -4832($fp)
	li $t0, 62797
	sw $t0, -4836($fp)
	lw $t1, -4832($fp)
	lw $t2, -4836($fp)
	beq $t1, $t2, label256
	j label257
label256:
	li $t0, 1
	sw $t0, -4824($fp)
label257:
	li $t0, 0
	sw $t0, -4840($fp)
	li $t0, 46056
	sw $t0, -4844($fp)
	li $t0, 43895
	sw $t0, -4848($fp)
	lw $t0, -4844($fp)
	lw $t1, -4848($fp)
	add $t0, $t0, $t1
	sw $t0, -4852($fp)
	lw $t1, -4852($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label259
label260:
	lw $t0, -648($fp)
	sw $t0, -4856($fp)
	lw $t1, -4856($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label259
label258:
	li $t0, 1
	sw $t0, -4840($fp)
label259:
	li $t0, 0
	sw $t0, -4860($fp)
	lw $t0, -624($fp)
	sw $t0, -4864($fp)
	lw $t0, -2232($fp)
	sw $t0, -4868($fp)
	lw $t0, -4864($fp)
	lw $t1, -4868($fp)
	mul $t0, $t0, $t1
	sw $t0, -4872($fp)
	li $t0, 56470
	sw $t0, -4876($fp)
	lw $t1, -4872($fp)
	lw $t2, -4876($fp)
	ble $t1, $t2, label261
	j label262
label261:
	li $t0, 1
	sw $t0, -4860($fp)
label262:
	addi $sp, $sp, -4
	lw $t0, -4824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4860($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4880($fp)
	addi $sp, $sp, 16
	lw $t0, -588($fp)
	sw $t0, -4884($fp)
	li $t0, 18439
	sw $t0, -4888($fp)
	lw $t0, -4884($fp)
	lw $t1, -4888($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4892($fp)
	li $t0, 13874
	sw $t0, -4896($fp)
	lw $t0, -4892($fp)
	lw $t1, -4896($fp)
	add $t0, $t0, $t1
	sw $t0, -4900($fp)
	lw $t0, -588($fp)
	sw $t0, -4904($fp)
	addi $sp, $sp, -4
	lw $t0, -4880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4904($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4908($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -1712
	sw $t0, -4912($fp)
	li $t0, 2
	sw $t0, -4916($fp)
	li $t0, 4
	lw $t1, -4916($fp)
	mul $t0, $t0, $t1
	sw $t0, -4920($fp)
	lw $t0, -4920($fp)
	lw $t1, -4912($fp)
	add $t0, $t0, $t1
	sw $t0, -4924($fp)
	lw $t0, -4924($fp)
	lw $t1, 0($t0)
	sw $t1, -4928($fp)
	lw $t1, -4908($fp)
	lw $t2, -4928($fp)
	bge $t1, $t2, label242
	j label243
label242:
	li $t0, 1
	sw $t0, -4724($fp)
label243:
	lw $ra, -4($fp)
	lw $v0, -4724($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label239
label238:
	li $t0, 57165
	sw $t0, -4932($fp)
	li $t0, 0
	sw $t0, -4936($fp)
	addi $t0, $fp, -1748
	sw $t0, -4940($fp)
	lw $t0, 12($fp)
	sw $t0, -4944($fp)
	li $t0, 4
	lw $t1, -4944($fp)
	mul $t0, $t0, $t1
	sw $t0, -4948($fp)
	lw $t0, -4948($fp)
	lw $t1, -4940($fp)
	add $t0, $t0, $t1
	sw $t0, -4952($fp)
	lw $t0, -4952($fp)
	lw $t1, 0($t0)
	sw $t1, -4956($fp)
	lw $t1, -4956($fp)
	li $t2, 0
	bne $t1, $t2, label266
	j label267
label266:
	li $t0, 1
	sw $t0, -4936($fp)
label267:
	lw $t0, -4932($fp)
	lw $t1, -4936($fp)
	sub $t0, $t0, $t1
	sw $t0, -4960($fp)
	lw $t1, -4960($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label264
label263:
	li $t0, 57652
	sw $t0, -4964($fp)
	li $t0, 0
	lw $t1, -4964($fp)
	sub $t0, $t0, $t1
	sw $t0, -4968($fp)
	lw $t0, -1680($fp)
	sw $t0, -4972($fp)
	lw $t0, -4968($fp)
	lw $t1, -4972($fp)
	add $t0, $t0, $t1
	sw $t0, -4976($fp)
	lw $t0, -1272($fp)
	sw $t0, -4980($fp)
	li $t0, 0
	sw $t0, -4984($fp)
	li $t0, 33882
	sw $t0, -4988($fp)
	li $t0, 0
	lw $t1, -4988($fp)
	sub $t0, $t0, $t1
	sw $t0, -4992($fp)
	lw $t1, -4992($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label268
label268:
	li $t0, 1
	sw $t0, -4984($fp)
label269:
	addi $sp, $sp, -4
	lw $t0, -4976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4984($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4996($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -4996($fp)
	sub $t0, $t0, $t1
	sw $t0, -5000($fp)
	j label265
label264:
	li $t0, 0
	sw $t0, -5004($fp)
	li $t0, 63842
	sw $t0, -5008($fp)
	li $t0, 0
	sw $t0, -5012($fp)
	addi $t0, $fp, -52
	sw $t0, -5016($fp)
	lw $t0, -1272($fp)
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
	lw $t1, -5032($fp)
	li $t2, 0
	bne $t1, $t2, label274
	j label273
label273:
	li $t0, 1
	sw $t0, -5012($fp)
label274:
	lw $t1, -5008($fp)
	lw $t2, -5012($fp)
	beq $t1, $t2, label270
	j label272
label272:
	lw $t0, -1356($fp)
	sw $t0, -5036($fp)
	li $t0, 20398
	sw $t0, -5040($fp)
	lw $t0, -5040($fp)
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	sw $t0, -5044($fp)
	li $t0, 34314
	sw $t0, -5048($fp)
	li $t0, 46559
	sw $t0, -5052($fp)
	lw $t0, -5048($fp)
	lw $t1, -5052($fp)
	mul $t0, $t0, $t1
	sw $t0, -5056($fp)
	li $t0, 0
	sw $t0, -5060($fp)
	lw $t0, -744($fp)
	sw $t0, -5064($fp)
	lw $t1, -5064($fp)
	li $t2, 0
	bne $t1, $t2, label278
	j label276
label278:
	lw $t0, -312($fp)
	sw $t0, -5068($fp)
	lw $t1, -5068($fp)
	li $t2, 0
	bne $t1, $t2, label277
	j label276
label277:
	lw $t0, -180($fp)
	sw $t0, -5072($fp)
	lw $t1, -5072($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label276
label275:
	li $t0, 1
	sw $t0, -5060($fp)
label276:
	lw $t0, -1812($fp)
	sw $t0, -5076($fp)
	li $t0, 7168
	sw $t0, -5080($fp)
	lw $t0, -5076($fp)
	lw $t1, -5080($fp)
	add $t0, $t0, $t1
	sw $t0, -5084($fp)
	lw $t0, -2004($fp)
	sw $t0, -5088($fp)
	lw $t0, -5084($fp)
	lw $t1, -5088($fp)
	sub $t0, $t0, $t1
	sw $t0, -5092($fp)
	addi $sp, $sp, -4
	lw $t0, -5056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5092($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5096($fp)
	addi $sp, $sp, 16
	lw $t0, -180($fp)
	sw $t0, -5100($fp)
	lw $t0, -1368($fp)
	sw $t0, -5104($fp)
	lw $t0, -5100($fp)
	lw $t1, -5104($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5108($fp)
	addi $sp, $sp, -4
	lw $t0, -5044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5108($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5112($fp)
	addi $sp, $sp, 16
	lw $t0, -5036($fp)
	lw $t1, -5112($fp)
	sub $t0, $t0, $t1
	sw $t0, -5116($fp)
	lw $t1, -5116($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label271
label270:
	li $t0, 1
	sw $t0, -5004($fp)
label271:
label265:
label239:
label224:
	j label214
label216:
	li $t0, 1414
	sw $t0, -5120($fp)
	lw $t0, -5120($fp)
	sw $t0, -5124($fp)
	lw $t0, -5124($fp)
	sw $t0, -5128($fp)
	li $t0, 42847
	sw $t0, -5132($fp)
	lw $t0, -5132($fp)
	sw $t0, -5136($fp)
	lw $t0, -5136($fp)
	sw $t0, -5140($fp)
	li $t0, 47012
	sw $t0, -5144($fp)
	lw $t0, -5144($fp)
	sw $t0, -5148($fp)
	lw $t0, -5148($fp)
	sw $t0, -5152($fp)
	li $t0, 8414
	sw $t0, -5156($fp)
	lw $t0, -5156($fp)
	sw $t0, -5160($fp)
	lw $t0, -5160($fp)
	sw $t0, -5164($fp)
	li $t0, 41857
	sw $t0, -5168($fp)
	lw $t0, -5168($fp)
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	sw $t0, -5176($fp)
	li $t0, 41500
	sw $t0, -5180($fp)
	lw $t0, -5180($fp)
	sw $t0, -5184($fp)
	lw $t0, -5184($fp)
	sw $t0, -5188($fp)
	li $t0, 37791
	sw $t0, -5192($fp)
	lw $t0, -5192($fp)
	sw $t0, -5196($fp)
	lw $t0, -5196($fp)
	sw $t0, -5200($fp)
	li $t0, 39541
	sw $t0, -5204($fp)
	lw $t0, -5204($fp)
	sw $t0, -5208($fp)
	lw $t0, -5208($fp)
	sw $t0, -5212($fp)
	li $t0, 50390
	sw $t0, -5216($fp)
	lw $t0, -5216($fp)
	sw $t0, -5220($fp)
	lw $t0, -5220($fp)
	sw $t0, -5224($fp)
	li $t0, 40476
	sw $t0, -5228($fp)
	lw $t0, -5228($fp)
	sw $t0, -5232($fp)
	lw $t0, -5232($fp)
	sw $t0, -5236($fp)
	li $t0, 0
	sw $t0, -5240($fp)
	li $t0, 0
	sw $t0, -5244($fp)
	li $t0, 0
	sw $t0, -5248($fp)
	li $t0, 0
	sw $t0, -5252($fp)
	addi $t0, $fp, -92
	sw $t0, -5256($fp)
	li $t0, 7
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
	li $t0, 60893
	sw $t0, -5276($fp)
	lw $t1, -5272($fp)
	lw $t2, -5276($fp)
	beq $t1, $t2, label286
	j label287
label286:
	li $t0, 1
	sw $t0, -5252($fp)
label287:
	li $t0, 0
	sw $t0, -5280($fp)
	lw $t0, -192($fp)
	sw $t0, -5284($fp)
	li $t0, 42454
	sw $t0, -5288($fp)
	lw $t0, -5284($fp)
	lw $t1, -5288($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5292($fp)
	lw $t0, -1680($fp)
	sw $t0, -5296($fp)
	lw $t1, -5292($fp)
	lw $t2, -5296($fp)
	bne $t1, $t2, label288
	j label289
label288:
	li $t0, 1
	sw $t0, -5280($fp)
label289:
	li $t0, 48454
	sw $t0, -5300($fp)
	addi $sp, $sp, -4
	lw $t0, -5252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5300($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5304($fp)
	addi $sp, $sp, 16
	lw $t1, -5304($fp)
	li $t2, 0
	bne $t1, $t2, label285
	j label284
label285:
	li $t0, 36855
	sw $t0, -5308($fp)
	lw $t1, -5308($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label284
label283:
	li $t0, 1
	sw $t0, -5248($fp)
label284:
	li $t0, 10154
	sw $t0, -5312($fp)
	lw $t0, -5208($fp)
	sw $t0, -5316($fp)
	li $t0, 0
	lw $t1, -5316($fp)
	sub $t0, $t0, $t1
	sw $t0, -5320($fp)
	li $t0, 0
	lw $t1, -5320($fp)
	sub $t0, $t0, $t1
	sw $t0, -5324($fp)
	addi $sp, $sp, -4
	lw $t0, -5248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5324($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5328($fp)
	addi $sp, $sp, 16
	li $t0, 4381
	sw $t0, -5332($fp)
	lw $t1, -5328($fp)
	lw $t2, -5332($fp)
	ble $t1, $t2, label281
	j label282
label281:
	li $t0, 1
	sw $t0, -5244($fp)
label282:
	addi $t0, $fp, -92
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
	lw $t0, -756($fp)
	sw $t0, -5356($fp)
	lw $t0, -5352($fp)
	lw $t1, -5356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5360($fp)
	li $t0, 0
	sw $t0, -5364($fp)
	li $t0, 58807
	sw $t0, -5368($fp)
	lw $t0, -984($fp)
	sw $t0, -5372($fp)
	lw $t0, -5368($fp)
	lw $t1, -5372($fp)
	sub $t0, $t0, $t1
	sw $t0, -5376($fp)
	lw $t1, -5376($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label291
label292:
	li $t0, 14161
	sw $t0, -5380($fp)
	lw $t1, -5380($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label291
label290:
	li $t0, 1
	sw $t0, -5364($fp)
label291:
	lw $t0, -204($fp)
	sw $t0, -5384($fp)
	li $t0, 0
	sw $t0, -5388($fp)
	li $t0, 1642
	sw $t0, -5392($fp)
	li $t0, 45815
	sw $t0, -5396($fp)
	lw $t0, -5392($fp)
	lw $t1, -5396($fp)
	mul $t0, $t0, $t1
	sw $t0, -5400($fp)
	li $t0, 41182
	sw $t0, -5404($fp)
	lw $t1, -5400($fp)
	lw $t2, -5404($fp)
	blt $t1, $t2, label293
	j label294
label293:
	li $t0, 1
	sw $t0, -5388($fp)
label294:
	addi $sp, $sp, -4
	lw $t0, -5364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5388($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5408($fp)
	addi $sp, $sp, 16
	lw $t0, -5360($fp)
	lw $t1, -5408($fp)
	sub $t0, $t0, $t1
	sw $t0, -5412($fp)
	lw $t1, -5244($fp)
	lw $t2, -5412($fp)
	ble $t1, $t2, label279
	j label280
label279:
	li $t0, 1
	sw $t0, -5240($fp)
label280:
	li $t0, 0
	sw $t0, -5416($fp)
	li $t0, 0
	sw $t0, -5420($fp)
	lw $t0, -5232($fp)
	sw $t0, -5424($fp)
	lw $t1, -5424($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label297
label297:
	li $t0, 1
	sw $t0, -5420($fp)
label298:
	li $t0, 33298
	sw $t0, -5428($fp)
	lw $t0, -756($fp)
	sw $t0, -5432($fp)
	lw $t0, -5428($fp)
	lw $t1, -5432($fp)
	mul $t0, $t0, $t1
	sw $t0, -5436($fp)
	li $t0, 0
	sw $t0, -5440($fp)
	lw $t0, -5220($fp)
	sw $t0, -5444($fp)
	lw $t1, -5444($fp)
	li $t2, 0
	bne $t1, $t2, label300
	j label299
label299:
	li $t0, 1
	sw $t0, -5440($fp)
label300:
	lw $t0, -5436($fp)
	lw $t1, -5440($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5448($fp)
	li $t0, 0
	lw $t1, -5448($fp)
	sub $t0, $t0, $t1
	sw $t0, -5452($fp)
	lw $t1, -5420($fp)
	lw $t2, -5452($fp)
	beq $t1, $t2, label295
	j label296
label295:
	li $t0, 1
	sw $t0, -5416($fp)
label296:
	addi $t0, $fp, -132
	sw $t0, -5456($fp)
	li $t0, 0
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
	lw $t0, -756($fp)
	sw $t0, -5476($fp)
	lw $t0, -5472($fp)
	lw $t1, -5476($fp)
	mul $t0, $t0, $t1
	sw $t0, -5480($fp)
	li $t0, 2077
	sw $t0, -5484($fp)
	li $t0, 57114
	sw $t0, -5488($fp)
	li $t0, 0
	lw $t1, -5488($fp)
	sub $t0, $t0, $t1
	sw $t0, -5492($fp)
	li $t0, 21330
	sw $t0, -5496($fp)
	lw $t0, -5492($fp)
	lw $t1, -5496($fp)
	sub $t0, $t0, $t1
	sw $t0, -5500($fp)
	addi $sp, $sp, -4
	lw $t0, -5480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5500($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5504($fp)
	addi $sp, $sp, 16
	lw $t0, -5504($fp)
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	sw $t0, -5508($fp)
	li $t0, 3491
	sw $t0, -5512($fp)
	li $t0, 0
	lw $t1, -5512($fp)
	sub $t0, $t0, $t1
	sw $t0, -5516($fp)
	li $t0, 0
	lw $t1, -5516($fp)
	sub $t0, $t0, $t1
	sw $t0, -5520($fp)
	lw $t0, 8($fp)
	sw $t0, -5524($fp)
	li $t0, 0
	sw $t0, -5528($fp)
	lw $t0, -5196($fp)
	sw $t0, -5532($fp)
	lw $t1, -5532($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label302
label304:
	lw $t0, -1632($fp)
	sw $t0, -5536($fp)
	lw $t1, -5536($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label302
label303:
	li $t0, 15448
	sw $t0, -5540($fp)
	lw $t1, -5540($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label302
label301:
	li $t0, 1
	sw $t0, -5528($fp)
label302:
	lw $t0, -996($fp)
	sw $t0, -5544($fp)
	lw $t0, -5544($fp)
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	sw $t0, -5548($fp)
	lw $t0, -1344($fp)
	sw $t0, -5552($fp)
	lw $t0, -5552($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -5556($fp)
	addi $sp, $sp, -4
	lw $t0, -5528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5556($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5560($fp)
	addi $sp, $sp, 16
	lw $t0, -5524($fp)
	lw $t1, -5560($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5564($fp)
	li $t0, 0
	lw $t1, -5564($fp)
	sub $t0, $t0, $t1
	sw $t0, -5568($fp)
	lw $t0, -5124($fp)
	sw $t0, -5572($fp)
	lw $t0, -5572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5136($fp)
	sw $t0, -5576($fp)
	lw $t0, -5576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5148($fp)
	sw $t0, -5580($fp)
	lw $t0, -5580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5160($fp)
	sw $t0, -5584($fp)
	lw $t0, -5584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5172($fp)
	sw $t0, -5588($fp)
	lw $t0, -5588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5184($fp)
	sw $t0, -5592($fp)
	lw $t0, -5592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5196($fp)
	sw $t0, -5596($fp)
	lw $t0, -5596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5600($fp)
	addi $t0, $fp, -56
	sw $t0, -5604($fp)
	li $t0, 0
	sw $t0, -5608($fp)
	li $t0, 4
	lw $t1, -5608($fp)
	mul $t0, $t0, $t1
	sw $t0, -5612($fp)
	lw $t0, -5612($fp)
	lw $t1, -5604($fp)
	add $t0, $t0, $t1
	sw $t0, -5616($fp)
	lw $t0, -5616($fp)
	lw $t1, 0($t0)
	sw $t1, -5620($fp)
	li $t0, 0
	lw $t1, -5620($fp)
	sub $t0, $t0, $t1
	sw $t0, -5624($fp)
	li $t0, 0
	lw $t1, -5624($fp)
	sub $t0, $t0, $t1
	sw $t0, -5628($fp)
	li $t0, 0
	sw $t0, -5632($fp)
	li $t0, 49697
	sw $t0, -5636($fp)
	li $t0, 31311
	sw $t0, -5640($fp)
	lw $t0, -5636($fp)
	lw $t1, -5640($fp)
	add $t0, $t0, $t1
	sw $t0, -5644($fp)
	lw $t1, -5644($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label309
label310:
	lw $t0, -1020($fp)
	sw $t0, -5648($fp)
	lw $t1, -5648($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label309
label308:
	li $t0, 1
	sw $t0, -5632($fp)
label309:
	li $t0, 64704
	sw $t0, -5652($fp)
	lw $t0, -5652($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -5656($fp)
	lw $t0, -180($fp)
	sw $t0, -5660($fp)
	lw $t0, -5660($fp)
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	sw $t0, -5664($fp)
	addi $sp, $sp, -4
	lw $t0, -5632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5664($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5668($fp)
	addi $sp, $sp, 16
	lw $t0, -312($fp)
	sw $t0, -5672($fp)
	lw $t0, -192($fp)
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
	addi $t0, $fp, -92
	sw $t0, -5688($fp)
	lw $t0, -1272($fp)
	sw $t0, -5692($fp)
	li $t0, 4
	lw $t1, -5692($fp)
	mul $t0, $t0, $t1
	sw $t0, -5696($fp)
	lw $t0, -5696($fp)
	lw $t1, -5688($fp)
	add $t0, $t0, $t1
	sw $t0, -5700($fp)
	lw $t0, -5700($fp)
	lw $t1, 0($t0)
	sw $t1, -5704($fp)
	li $t0, 57305
	sw $t0, -5708($fp)
	lw $t0, -5704($fp)
	lw $t1, -5708($fp)
	add $t0, $t0, $t1
	sw $t0, -5712($fp)
	addi $sp, $sp, -4
	lw $t0, -5668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5712($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5716($fp)
	addi $sp, $sp, 16
	lw $t1, -5628($fp)
	lw $t2, -5716($fp)
	bne $t1, $t2, label305
	j label307
label307:
	li $t0, 0
	sw $t0, -5720($fp)
	lw $t0, -1020($fp)
	sw $t0, -5724($fp)
	lw $t1, -5724($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label311
label311:
	li $t0, 1
	sw $t0, -5720($fp)
label312:
	lw $t0, -5160($fp)
	sw $t0, -5728($fp)
	lw $t0, -5720($fp)
	lw $t1, -5728($fp)
	add $t0, $t0, $t1
	sw $t0, -5732($fp)
	lw $t1, -5732($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label306
label305:
	li $t0, 1
	sw $t0, -5600($fp)
label306:
	lw $ra, -4($fp)
	lw $v0, -5600($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -172
	sw $t0, -5736($fp)
	li $t0, 0
	sw $t0, -5740($fp)
	li $t0, 49559
	sw $t0, -5744($fp)
	li $t0, 24637
	sw $t0, -5748($fp)
	lw $t1, -5744($fp)
	lw $t2, -5748($fp)
	beq $t1, $t2, label318
	j label317
label318:
	li $t0, 41465
	sw $t0, -5752($fp)
	lw $t1, -5752($fp)
	li $t2, 0
	bne $t1, $t2, label316
	j label317
label316:
	li $t0, 1
	sw $t0, -5740($fp)
label317:
	li $t0, 4
	lw $t1, -5740($fp)
	mul $t0, $t0, $t1
	sw $t0, -5756($fp)
	lw $t0, -5756($fp)
	lw $t1, -5736($fp)
	add $t0, $t0, $t1
	sw $t0, -5760($fp)
	lw $t0, -5760($fp)
	lw $t1, 0($t0)
	sw $t1, -5764($fp)
	lw $t1, -5764($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label313
label313:
	li $t0, 0
	sw $t0, -5768($fp)
	li $t0, 0
	sw $t0, -5772($fp)
	addi $t0, $fp, -132
	sw $t0, -5776($fp)
	li $t0, 1
	sw $t0, -5780($fp)
	li $t0, 4
	lw $t1, -5780($fp)
	mul $t0, $t0, $t1
	sw $t0, -5784($fp)
	lw $t0, -5784($fp)
	lw $t1, -5776($fp)
	add $t0, $t0, $t1
	sw $t0, -5788($fp)
	lw $t0, -5788($fp)
	lw $t1, 0($t0)
	sw $t1, -5792($fp)
	lw $t1, -5792($fp)
	li $t2, 0
	bne $t1, $t2, label323
	j label322
label322:
	li $t0, 1
	sw $t0, -5772($fp)
label323:
	lw $t0, -1284($fp)
	sw $t0, -5796($fp)
	li $t0, 0
	lw $t1, -5796($fp)
	sub $t0, $t0, $t1
	sw $t0, -5800($fp)
	lw $t0, -5772($fp)
	lw $t1, -5800($fp)
	sub $t0, $t0, $t1
	sw $t0, -5804($fp)
	lw $t1, -5804($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label321
label321:
	addi $t0, $fp, -172
	sw $t0, -5808($fp)
	lw $t0, -5136($fp)
	sw $t0, -5812($fp)
	li $t0, 4
	lw $t1, -5812($fp)
	mul $t0, $t0, $t1
	sw $t0, -5816($fp)
	lw $t0, -5816($fp)
	lw $t1, -5808($fp)
	add $t0, $t0, $t1
	sw $t0, -5820($fp)
	lw $t0, -5820($fp)
	lw $t1, 0($t0)
	sw $t1, -5824($fp)
	lw $t1, -5824($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label320
label324:
	li $t0, 0
	sw $t0, -5828($fp)
	li $t0, 0
	sw $t0, -5832($fp)
	lw $t0, -5124($fp)
	sw $t0, -5836($fp)
	lw $t0, 8($fp)
	sw $t0, -5840($fp)
	lw $t1, -5836($fp)
	lw $t2, -5840($fp)
	blt $t1, $t2, label327
	j label328
label327:
	li $t0, 1
	sw $t0, -5832($fp)
label328:
	li $t0, 45924
	sw $t0, -5844($fp)
	lw $t1, -5832($fp)
	lw $t2, -5844($fp)
	bgt $t1, $t2, label325
	j label326
label325:
	li $t0, 1
	sw $t0, -5828($fp)
label326:
	li $t0, 0
	sw $t0, -5848($fp)
	lw $t0, -1632($fp)
	sw $t0, -5852($fp)
	lw $t0, 8($fp)
	sw $t0, -5856($fp)
	lw $t1, -5852($fp)
	lw $t2, -5856($fp)
	bgt $t1, $t2, label329
	j label331
label331:
	li $t0, 64446
	sw $t0, -5860($fp)
	lw $t1, -5860($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label330
label329:
	li $t0, 1
	sw $t0, -5848($fp)
label330:
	lw $t0, -1320($fp)
	sw $t0, -5864($fp)
	lw $t0, -5184($fp)
	sw $t0, -5868($fp)
	lw $t0, -5864($fp)
	lw $t1, -5868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5872($fp)
	addi $sp, $sp, -4
	lw $t0, -5828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5872($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5876($fp)
	addi $sp, $sp, 16
	lw $t1, -5876($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label320
label319:
	li $t0, 1
	sw $t0, -5768($fp)
label320:
	lw $ra, -4($fp)
	lw $v0, -5768($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label315
label314:
	lw $t0, -600($fp)
	sw $t0, -5880($fp)
	lw $t0, -5880($fp)
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	sw $t0, -5884($fp)
	li $t0, 0
	sw $t0, -5888($fp)
	lw $t0, -1320($fp)
	sw $t0, -5892($fp)
	lw $t0, -5148($fp)
	sw $t0, -5896($fp)
	lw $t1, -5892($fp)
	lw $t2, -5896($fp)
	bgt $t1, $t2, label335
	j label337
label337:
	lw $t0, -336($fp)
	sw $t0, -5900($fp)
	lw $t1, -5900($fp)
	li $t2, 0
	bne $t1, $t2, label335
	j label336
label335:
	li $t0, 1
	sw $t0, -5888($fp)
label336:
	li $t0, 0
	sw $t0, -5904($fp)
	li $t0, 0
	sw $t0, -5908($fp)
	li $t0, 50305
	sw $t0, -5912($fp)
	lw $t1, -5912($fp)
	li $t2, 0
	bne $t1, $t2, label341
	j label340
label340:
	li $t0, 1
	sw $t0, -5908($fp)
label341:
	lw $t0, -1368($fp)
	sw $t0, -5916($fp)
	lw $t1, -5908($fp)
	lw $t2, -5916($fp)
	bne $t1, $t2, label338
	j label339
label338:
	li $t0, 1
	sw $t0, -5904($fp)
label339:
	lw $t0, -192($fp)
	sw $t0, -5920($fp)
	lw $t0, -5920($fp)
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	sw $t0, -5924($fp)
	li $t0, 62448
	sw $t0, -5928($fp)
	li $t0, 35766
	sw $t0, -5932($fp)
	lw $t0, -5928($fp)
	lw $t1, -5932($fp)
	add $t0, $t0, $t1
	sw $t0, -5936($fp)
	addi $sp, $sp, -4
	lw $t0, -5904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5936($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5940($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -5884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5940($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5944($fp)
	addi $sp, $sp, 16
	lw $t1, -5944($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label333
label332:
	li $t0, 0
	sw $t0, -5948($fp)
	lw $t0, -1632($fp)
	sw $t0, -5952($fp)
	li $t0, 38325
	sw $t0, -5956($fp)
	lw $t1, -5952($fp)
	lw $t2, -5956($fp)
	beq $t1, $t2, label342
	j label343
label342:
	li $t0, 1
	sw $t0, -5948($fp)
label343:
	lw $t0, -5948($fp)
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -5960($fp)
	lw $t0, -5960($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -5964($fp)
	j label334
label333:
	addi $t0, $fp, -52
	sw $t0, -5968($fp)
	lw $t0, -708($fp)
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
	lw $t0, -5984($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -5988($fp)
	lw $t0, -5988($fp)
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -5992($fp)
label334:
label315:
	lw $t0, -5124($fp)
	sw $t0, -5996($fp)
	lw $t0, -5996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5136($fp)
	sw $t0, -6000($fp)
	lw $t0, -6000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5148($fp)
	sw $t0, -6004($fp)
	lw $t0, -6004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5160($fp)
	sw $t0, -6008($fp)
	lw $t0, -6008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5172($fp)
	sw $t0, -6012($fp)
	lw $t0, -6012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5184($fp)
	sw $t0, -6016($fp)
	lw $t0, -6016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5196($fp)
	sw $t0, -6020($fp)
	lw $t0, -6020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6024($fp)
	li $t0, 0
	sw $t0, -6028($fp)
	li $t0, 0
	sw $t0, -6032($fp)
	li $t0, 50980
	sw $t0, -6036($fp)
	lw $t1, -6036($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label349
label349:
	li $t0, 1
	sw $t0, -6032($fp)
label350:
	li $t0, 0
	lw $t1, -6032($fp)
	sub $t0, $t0, $t1
	sw $t0, -6040($fp)
	lw $t0, -5172($fp)
	sw $t0, -6044($fp)
	li $t0, 51947
	sw $t0, -6048($fp)
	lw $t0, -6044($fp)
	lw $t1, -6048($fp)
	sub $t0, $t0, $t1
	sw $t0, -6052($fp)
	lw $t1, -6040($fp)
	lw $t2, -6052($fp)
	blt $t1, $t2, label347
	j label348
label347:
	li $t0, 1
	sw $t0, -6028($fp)
label348:
	li $t0, 18605
	sw $t0, -6056($fp)
	lw $t0, -1308($fp)
	sw $t0, -6060($fp)
	lw $t0, -6056($fp)
	lw $t1, -6060($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6064($fp)
	lw $t1, -6028($fp)
	lw $t2, -6064($fp)
	blt $t1, $t2, label346
	j label345
label346:
	lw $t0, -1644($fp)
	sw $t0, -6068($fp)
	lw $t1, -6068($fp)
	li $t2, 0
	bne $t1, $t2, label344
	j label345
label344:
	li $t0, 1
	sw $t0, -6024($fp)
label345:
	lw $ra, -4($fp)
	lw $v0, -6024($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -612($fp)
	sw $t0, -6072($fp)
	addi $t0, $fp, -92
	sw $t0, -6076($fp)
	li $t0, 0
	sw $t0, -6080($fp)
	li $t0, 26626
	sw $t0, -6084($fp)
	lw $t1, -6084($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label353
label353:
	li $t0, 45219
	sw $t0, -6088($fp)
	lw $t1, -6088($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label352
label351:
	li $t0, 1
	sw $t0, -6080($fp)
label352:
	li $t0, 4
	lw $t1, -6080($fp)
	mul $t0, $t0, $t1
	sw $t0, -6092($fp)
	lw $t0, -6092($fp)
	lw $t1, -6076($fp)
	add $t0, $t0, $t1
	sw $t0, -6096($fp)
	lw $t0, -6096($fp)
	lw $t1, 0($t0)
	sw $t1, -6100($fp)
	lw $t0, -6072($fp)
	lw $t1, -6100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6104($fp)
	lw $t0, -180($fp)
	sw $t0, -6108($fp)
	lw $t0, -6108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -6112($fp)
	lw $t0, -6112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -6116($fp)
	lw $t0, -6116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
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
	addi $t0, $fp, -16
	sw $t0, -6140($fp)
	li $t0, 1
	sw $t0, -6144($fp)
	li $t0, 4
	lw $t1, -6144($fp)
	mul $t0, $t0, $t1
	sw $t0, -6148($fp)
	lw $t0, -6148($fp)
	lw $t1, -6140($fp)
	add $t0, $t0, $t1
	sw $t0, -6152($fp)
	lw $t0, -6152($fp)
	lw $t1, 0($t0)
	sw $t1, -6156($fp)
	lw $t0, -6156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -6160($fp)
	li $t0, 2
	sw $t0, -6164($fp)
	li $t0, 4
	lw $t1, -6164($fp)
	mul $t0, $t0, $t1
	sw $t0, -6168($fp)
	lw $t0, -6168($fp)
	lw $t1, -6160($fp)
	add $t0, $t0, $t1
	sw $t0, -6172($fp)
	lw $t0, -6172($fp)
	lw $t1, 0($t0)
	sw $t1, -6176($fp)
	lw $t0, -6176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -6180($fp)
	lw $t0, -6180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -300($fp)
	sw $t0, -6184($fp)
	lw $t0, -6184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -312($fp)
	sw $t0, -6188($fp)
	lw $t0, -6188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -6192($fp)
	lw $t0, -6192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -336($fp)
	sw $t0, -6196($fp)
	lw $t0, -6196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -348($fp)
	sw $t0, -6200($fp)
	lw $t0, -6200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -6204($fp)
	lw $t0, -6204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6208($fp)
	li $t0, 0
	sw $t0, -6212($fp)
	li $t0, 4
	lw $t1, -6212($fp)
	mul $t0, $t0, $t1
	sw $t0, -6216($fp)
	lw $t0, -6216($fp)
	lw $t1, -6208($fp)
	add $t0, $t0, $t1
	sw $t0, -6220($fp)
	lw $t0, -6220($fp)
	lw $t1, 0($t0)
	sw $t1, -6224($fp)
	lw $t0, -6224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6228($fp)
	li $t0, 1
	sw $t0, -6232($fp)
	li $t0, 4
	lw $t1, -6232($fp)
	mul $t0, $t0, $t1
	sw $t0, -6236($fp)
	lw $t0, -6236($fp)
	lw $t1, -6228($fp)
	add $t0, $t0, $t1
	sw $t0, -6240($fp)
	lw $t0, -6240($fp)
	lw $t1, 0($t0)
	sw $t1, -6244($fp)
	lw $t0, -6244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6248($fp)
	li $t0, 2
	sw $t0, -6252($fp)
	li $t0, 4
	lw $t1, -6252($fp)
	mul $t0, $t0, $t1
	sw $t0, -6256($fp)
	lw $t0, -6256($fp)
	lw $t1, -6248($fp)
	add $t0, $t0, $t1
	sw $t0, -6260($fp)
	lw $t0, -6260($fp)
	lw $t1, 0($t0)
	sw $t1, -6264($fp)
	lw $t0, -6264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6268($fp)
	li $t0, 3
	sw $t0, -6272($fp)
	li $t0, 4
	lw $t1, -6272($fp)
	mul $t0, $t0, $t1
	sw $t0, -6276($fp)
	lw $t0, -6276($fp)
	lw $t1, -6268($fp)
	add $t0, $t0, $t1
	sw $t0, -6280($fp)
	lw $t0, -6280($fp)
	lw $t1, 0($t0)
	sw $t1, -6284($fp)
	lw $t0, -6284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6288($fp)
	li $t0, 4
	sw $t0, -6292($fp)
	li $t0, 4
	lw $t1, -6292($fp)
	mul $t0, $t0, $t1
	sw $t0, -6296($fp)
	lw $t0, -6296($fp)
	lw $t1, -6288($fp)
	add $t0, $t0, $t1
	sw $t0, -6300($fp)
	lw $t0, -6300($fp)
	lw $t1, 0($t0)
	sw $t1, -6304($fp)
	lw $t0, -6304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6308($fp)
	li $t0, 5
	sw $t0, -6312($fp)
	li $t0, 4
	lw $t1, -6312($fp)
	mul $t0, $t0, $t1
	sw $t0, -6316($fp)
	lw $t0, -6316($fp)
	lw $t1, -6308($fp)
	add $t0, $t0, $t1
	sw $t0, -6320($fp)
	lw $t0, -6320($fp)
	lw $t1, 0($t0)
	sw $t1, -6324($fp)
	lw $t0, -6324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6328($fp)
	li $t0, 6
	sw $t0, -6332($fp)
	li $t0, 4
	lw $t1, -6332($fp)
	mul $t0, $t0, $t1
	sw $t0, -6336($fp)
	lw $t0, -6336($fp)
	lw $t1, -6328($fp)
	add $t0, $t0, $t1
	sw $t0, -6340($fp)
	lw $t0, -6340($fp)
	lw $t1, 0($t0)
	sw $t1, -6344($fp)
	lw $t0, -6344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6348($fp)
	li $t0, 7
	sw $t0, -6352($fp)
	li $t0, 4
	lw $t1, -6352($fp)
	mul $t0, $t0, $t1
	sw $t0, -6356($fp)
	lw $t0, -6356($fp)
	lw $t1, -6348($fp)
	add $t0, $t0, $t1
	sw $t0, -6360($fp)
	lw $t0, -6360($fp)
	lw $t1, 0($t0)
	sw $t1, -6364($fp)
	lw $t0, -6364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6368($fp)
	li $t0, 8
	sw $t0, -6372($fp)
	li $t0, 4
	lw $t1, -6372($fp)
	mul $t0, $t0, $t1
	sw $t0, -6376($fp)
	lw $t0, -6376($fp)
	lw $t1, -6368($fp)
	add $t0, $t0, $t1
	sw $t0, -6380($fp)
	lw $t0, -6380($fp)
	lw $t1, 0($t0)
	sw $t1, -6384($fp)
	lw $t0, -6384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -6388($fp)
	lw $t0, -6388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -600($fp)
	sw $t0, -6392($fp)
	lw $t0, -6392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -6396($fp)
	lw $t0, -6396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -6400($fp)
	lw $t0, -6400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -6404($fp)
	lw $t0, -6404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -6408($fp)
	lw $t0, -6408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -6412($fp)
	lw $t0, -6412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -6416($fp)
	lw $t0, -6416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -6420($fp)
	li $t0, 0
	sw $t0, -6424($fp)
	li $t0, 4
	lw $t1, -6424($fp)
	mul $t0, $t0, $t1
	sw $t0, -6428($fp)
	lw $t0, -6428($fp)
	lw $t1, -6420($fp)
	add $t0, $t0, $t1
	sw $t0, -6432($fp)
	lw $t0, -6432($fp)
	lw $t1, 0($t0)
	sw $t1, -6436($fp)
	lw $t0, -6436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -6440($fp)
	lw $t0, -6440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -720($fp)
	sw $t0, -6444($fp)
	lw $t0, -6444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -732($fp)
	sw $t0, -6448($fp)
	lw $t0, -6448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -744($fp)
	sw $t0, -6452($fp)
	lw $t0, -6452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -756($fp)
	sw $t0, -6456($fp)
	lw $t0, -6456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -6460($fp)
	li $t0, 0
	sw $t0, -6464($fp)
	li $t0, 4
	lw $t1, -6464($fp)
	mul $t0, $t0, $t1
	sw $t0, -6468($fp)
	lw $t0, -6468($fp)
	lw $t1, -6460($fp)
	add $t0, $t0, $t1
	sw $t0, -6472($fp)
	lw $t0, -6472($fp)
	lw $t1, 0($t0)
	sw $t1, -6476($fp)
	lw $t0, -6476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -6480($fp)
	li $t0, 1
	sw $t0, -6484($fp)
	li $t0, 4
	lw $t1, -6484($fp)
	mul $t0, $t0, $t1
	sw $t0, -6488($fp)
	lw $t0, -6488($fp)
	lw $t1, -6480($fp)
	add $t0, $t0, $t1
	sw $t0, -6492($fp)
	lw $t0, -6492($fp)
	lw $t1, 0($t0)
	sw $t1, -6496($fp)
	lw $t0, -6496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -6500($fp)
	li $t0, 2
	sw $t0, -6504($fp)
	li $t0, 4
	lw $t1, -6504($fp)
	mul $t0, $t0, $t1
	sw $t0, -6508($fp)
	lw $t0, -6508($fp)
	lw $t1, -6500($fp)
	add $t0, $t0, $t1
	sw $t0, -6512($fp)
	lw $t0, -6512($fp)
	lw $t1, 0($t0)
	sw $t1, -6516($fp)
	lw $t0, -6516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -6520($fp)
	li $t0, 3
	sw $t0, -6524($fp)
	li $t0, 4
	lw $t1, -6524($fp)
	mul $t0, $t0, $t1
	sw $t0, -6528($fp)
	lw $t0, -6528($fp)
	lw $t1, -6520($fp)
	add $t0, $t0, $t1
	sw $t0, -6532($fp)
	lw $t0, -6532($fp)
	lw $t1, 0($t0)
	sw $t1, -6536($fp)
	lw $t0, -6536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -6540($fp)
	li $t0, 4
	sw $t0, -6544($fp)
	li $t0, 4
	lw $t1, -6544($fp)
	mul $t0, $t0, $t1
	sw $t0, -6548($fp)
	lw $t0, -6548($fp)
	lw $t1, -6540($fp)
	add $t0, $t0, $t1
	sw $t0, -6552($fp)
	lw $t0, -6552($fp)
	lw $t1, 0($t0)
	sw $t1, -6556($fp)
	lw $t0, -6556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -6560($fp)
	li $t0, 5
	sw $t0, -6564($fp)
	li $t0, 4
	lw $t1, -6564($fp)
	mul $t0, $t0, $t1
	sw $t0, -6568($fp)
	lw $t0, -6568($fp)
	lw $t1, -6560($fp)
	add $t0, $t0, $t1
	sw $t0, -6572($fp)
	lw $t0, -6572($fp)
	lw $t1, 0($t0)
	sw $t1, -6576($fp)
	lw $t0, -6576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -6580($fp)
	li $t0, 6
	sw $t0, -6584($fp)
	li $t0, 4
	lw $t1, -6584($fp)
	mul $t0, $t0, $t1
	sw $t0, -6588($fp)
	lw $t0, -6588($fp)
	lw $t1, -6580($fp)
	add $t0, $t0, $t1
	sw $t0, -6592($fp)
	lw $t0, -6592($fp)
	lw $t1, 0($t0)
	sw $t1, -6596($fp)
	lw $t0, -6596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -6600($fp)
	li $t0, 7
	sw $t0, -6604($fp)
	li $t0, 4
	lw $t1, -6604($fp)
	mul $t0, $t0, $t1
	sw $t0, -6608($fp)
	lw $t0, -6608($fp)
	lw $t1, -6600($fp)
	add $t0, $t0, $t1
	sw $t0, -6612($fp)
	lw $t0, -6612($fp)
	lw $t1, 0($t0)
	sw $t1, -6616($fp)
	lw $t0, -6616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -6620($fp)
	li $t0, 8
	sw $t0, -6624($fp)
	li $t0, 4
	lw $t1, -6624($fp)
	mul $t0, $t0, $t1
	sw $t0, -6628($fp)
	lw $t0, -6628($fp)
	lw $t1, -6620($fp)
	add $t0, $t0, $t1
	sw $t0, -6632($fp)
	lw $t0, -6632($fp)
	lw $t1, 0($t0)
	sw $t1, -6636($fp)
	lw $t0, -6636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -984($fp)
	sw $t0, -6640($fp)
	lw $t0, -6640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -996($fp)
	sw $t0, -6644($fp)
	lw $t0, -6644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1008($fp)
	sw $t0, -6648($fp)
	lw $t0, -6648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1020($fp)
	sw $t0, -6652($fp)
	lw $t0, -6652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -6656($fp)
	li $t0, 0
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
	lw $t0, -6672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -6676($fp)
	li $t0, 1
	sw $t0, -6680($fp)
	li $t0, 4
	lw $t1, -6680($fp)
	mul $t0, $t0, $t1
	sw $t0, -6684($fp)
	lw $t0, -6684($fp)
	lw $t1, -6676($fp)
	add $t0, $t0, $t1
	sw $t0, -6688($fp)
	lw $t0, -6688($fp)
	lw $t1, 0($t0)
	sw $t1, -6692($fp)
	lw $t0, -6692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -6696($fp)
	li $t0, 2
	sw $t0, -6700($fp)
	li $t0, 4
	lw $t1, -6700($fp)
	mul $t0, $t0, $t1
	sw $t0, -6704($fp)
	lw $t0, -6704($fp)
	lw $t1, -6696($fp)
	add $t0, $t0, $t1
	sw $t0, -6708($fp)
	lw $t0, -6708($fp)
	lw $t1, 0($t0)
	sw $t1, -6712($fp)
	lw $t0, -6712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -6716($fp)
	li $t0, 3
	sw $t0, -6720($fp)
	li $t0, 4
	lw $t1, -6720($fp)
	mul $t0, $t0, $t1
	sw $t0, -6724($fp)
	lw $t0, -6724($fp)
	lw $t1, -6716($fp)
	add $t0, $t0, $t1
	sw $t0, -6728($fp)
	lw $t0, -6728($fp)
	lw $t1, 0($t0)
	sw $t1, -6732($fp)
	lw $t0, -6732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -6736($fp)
	li $t0, 4
	sw $t0, -6740($fp)
	li $t0, 4
	lw $t1, -6740($fp)
	mul $t0, $t0, $t1
	sw $t0, -6744($fp)
	lw $t0, -6744($fp)
	lw $t1, -6736($fp)
	add $t0, $t0, $t1
	sw $t0, -6748($fp)
	lw $t0, -6748($fp)
	lw $t1, 0($t0)
	sw $t1, -6752($fp)
	lw $t0, -6752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -6756($fp)
	li $t0, 5
	sw $t0, -6760($fp)
	li $t0, 4
	lw $t1, -6760($fp)
	mul $t0, $t0, $t1
	sw $t0, -6764($fp)
	lw $t0, -6764($fp)
	lw $t1, -6756($fp)
	add $t0, $t0, $t1
	sw $t0, -6768($fp)
	lw $t0, -6768($fp)
	lw $t1, 0($t0)
	sw $t1, -6772($fp)
	lw $t0, -6772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -6776($fp)
	li $t0, 6
	sw $t0, -6780($fp)
	li $t0, 4
	lw $t1, -6780($fp)
	mul $t0, $t0, $t1
	sw $t0, -6784($fp)
	lw $t0, -6784($fp)
	lw $t1, -6776($fp)
	add $t0, $t0, $t1
	sw $t0, -6788($fp)
	lw $t0, -6788($fp)
	lw $t1, 0($t0)
	sw $t1, -6792($fp)
	lw $t0, -6792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -6796($fp)
	li $t0, 7
	sw $t0, -6800($fp)
	li $t0, 4
	lw $t1, -6800($fp)
	mul $t0, $t0, $t1
	sw $t0, -6804($fp)
	lw $t0, -6804($fp)
	lw $t1, -6796($fp)
	add $t0, $t0, $t1
	sw $t0, -6808($fp)
	lw $t0, -6808($fp)
	lw $t1, 0($t0)
	sw $t1, -6812($fp)
	lw $t0, -6812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -6816($fp)
	li $t0, 8
	sw $t0, -6820($fp)
	li $t0, 4
	lw $t1, -6820($fp)
	mul $t0, $t0, $t1
	sw $t0, -6824($fp)
	lw $t0, -6824($fp)
	lw $t1, -6816($fp)
	add $t0, $t0, $t1
	sw $t0, -6828($fp)
	lw $t0, -6828($fp)
	lw $t1, 0($t0)
	sw $t1, -6832($fp)
	lw $t0, -6832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -6836($fp)
	li $t0, 9
	sw $t0, -6840($fp)
	li $t0, 4
	lw $t1, -6840($fp)
	mul $t0, $t0, $t1
	sw $t0, -6844($fp)
	lw $t0, -6844($fp)
	lw $t1, -6836($fp)
	add $t0, $t0, $t1
	sw $t0, -6848($fp)
	lw $t0, -6848($fp)
	lw $t1, 0($t0)
	sw $t1, -6852($fp)
	lw $t0, -6852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1272($fp)
	sw $t0, -6856($fp)
	lw $t0, -6856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1284($fp)
	sw $t0, -6860($fp)
	lw $t0, -6860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1296($fp)
	sw $t0, -6864($fp)
	lw $t0, -6864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1308($fp)
	sw $t0, -6868($fp)
	lw $t0, -6868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1320($fp)
	sw $t0, -6872($fp)
	lw $t0, -6872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1332($fp)
	sw $t0, -6876($fp)
	lw $t0, -6876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1344($fp)
	sw $t0, -6880($fp)
	lw $t0, -6880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1356($fp)
	sw $t0, -6884($fp)
	lw $t0, -6884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1368($fp)
	sw $t0, -6888($fp)
	lw $t0, -6888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1380($fp)
	sw $t0, -6892($fp)
	lw $t0, -6892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -6896($fp)
	li $t0, 0
	sw $t0, -6900($fp)
	li $t0, 4
	lw $t1, -6900($fp)
	mul $t0, $t0, $t1
	sw $t0, -6904($fp)
	lw $t0, -6904($fp)
	lw $t1, -6896($fp)
	add $t0, $t0, $t1
	sw $t0, -6908($fp)
	lw $t0, -6908($fp)
	lw $t1, 0($t0)
	sw $t1, -6912($fp)
	lw $t0, -6912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -6916($fp)
	li $t0, 1
	sw $t0, -6920($fp)
	li $t0, 4
	lw $t1, -6920($fp)
	mul $t0, $t0, $t1
	sw $t0, -6924($fp)
	lw $t0, -6924($fp)
	lw $t1, -6916($fp)
	add $t0, $t0, $t1
	sw $t0, -6928($fp)
	lw $t0, -6928($fp)
	lw $t1, 0($t0)
	sw $t1, -6932($fp)
	lw $t0, -6932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -6936($fp)
	li $t0, 2
	sw $t0, -6940($fp)
	li $t0, 4
	lw $t1, -6940($fp)
	mul $t0, $t0, $t1
	sw $t0, -6944($fp)
	lw $t0, -6944($fp)
	lw $t1, -6936($fp)
	add $t0, $t0, $t1
	sw $t0, -6948($fp)
	lw $t0, -6948($fp)
	lw $t1, 0($t0)
	sw $t1, -6952($fp)
	lw $t0, -6952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -6956($fp)
	li $t0, 3
	sw $t0, -6960($fp)
	li $t0, 4
	lw $t1, -6960($fp)
	mul $t0, $t0, $t1
	sw $t0, -6964($fp)
	lw $t0, -6964($fp)
	lw $t1, -6956($fp)
	add $t0, $t0, $t1
	sw $t0, -6968($fp)
	lw $t0, -6968($fp)
	lw $t1, 0($t0)
	sw $t1, -6972($fp)
	lw $t0, -6972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -6976($fp)
	li $t0, 0
	sw $t0, -6980($fp)
	li $t0, 4
	lw $t1, -6980($fp)
	mul $t0, $t0, $t1
	sw $t0, -6984($fp)
	lw $t0, -6984($fp)
	lw $t1, -6976($fp)
	add $t0, $t0, $t1
	sw $t0, -6988($fp)
	lw $t0, -6988($fp)
	lw $t1, 0($t0)
	sw $t1, -6992($fp)
	lw $t0, -6992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -6996($fp)
	li $t0, 1
	sw $t0, -7000($fp)
	li $t0, 4
	lw $t1, -7000($fp)
	mul $t0, $t0, $t1
	sw $t0, -7004($fp)
	lw $t0, -7004($fp)
	lw $t1, -6996($fp)
	add $t0, $t0, $t1
	sw $t0, -7008($fp)
	lw $t0, -7008($fp)
	lw $t1, 0($t0)
	sw $t1, -7012($fp)
	lw $t0, -7012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -7016($fp)
	li $t0, 2
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
	lw $t0, -7032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -7036($fp)
	li $t0, 3
	sw $t0, -7040($fp)
	li $t0, 4
	lw $t1, -7040($fp)
	mul $t0, $t0, $t1
	sw $t0, -7044($fp)
	lw $t0, -7044($fp)
	lw $t1, -7036($fp)
	add $t0, $t0, $t1
	sw $t0, -7048($fp)
	lw $t0, -7048($fp)
	lw $t1, 0($t0)
	sw $t1, -7052($fp)
	lw $t0, -7052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -7056($fp)
	li $t0, 4
	sw $t0, -7060($fp)
	li $t0, 4
	lw $t1, -7060($fp)
	mul $t0, $t0, $t1
	sw $t0, -7064($fp)
	lw $t0, -7064($fp)
	lw $t1, -7056($fp)
	add $t0, $t0, $t1
	sw $t0, -7068($fp)
	lw $t0, -7068($fp)
	lw $t1, 0($t0)
	sw $t1, -7072($fp)
	lw $t0, -7072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -7076($fp)
	li $t0, 5
	sw $t0, -7080($fp)
	li $t0, 4
	lw $t1, -7080($fp)
	mul $t0, $t0, $t1
	sw $t0, -7084($fp)
	lw $t0, -7084($fp)
	lw $t1, -7076($fp)
	add $t0, $t0, $t1
	sw $t0, -7088($fp)
	lw $t0, -7088($fp)
	lw $t1, 0($t0)
	sw $t1, -7092($fp)
	lw $t0, -7092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1632($fp)
	sw $t0, -7096($fp)
	lw $t0, -7096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1644($fp)
	sw $t0, -7100($fp)
	lw $t0, -7100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1656($fp)
	sw $t0, -7104($fp)
	lw $t0, -7104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1668($fp)
	sw $t0, -7108($fp)
	lw $t0, -7108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1680($fp)
	sw $t0, -7112($fp)
	lw $t0, -7112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -7116($fp)
	li $t0, 0
	sw $t0, -7120($fp)
	lw $t0, -612($fp)
	sw $t0, -7124($fp)
	li $t0, 54096
	sw $t0, -7128($fp)
	lw $t0, -7124($fp)
	lw $t1, -7128($fp)
	mul $t0, $t0, $t1
	sw $t0, -7132($fp)
	li $t0, 62002
	sw $t0, -7136($fp)
	lw $t0, -7132($fp)
	lw $t1, -7136($fp)
	add $t0, $t0, $t1
	sw $t0, -7140($fp)
	li $t0, 36797
	sw $t0, -7144($fp)
	lw $t0, -1632($fp)
	sw $t0, -7148($fp)
	lw $t0, -7144($fp)
	lw $t1, -7148($fp)
	sub $t0, $t0, $t1
	sw $t0, -7152($fp)
	lw $t0, -660($fp)
	sw $t0, -7156($fp)
	li $t0, 0
	lw $t1, -7156($fp)
	sub $t0, $t0, $t1
	sw $t0, -7160($fp)
	addi $sp, $sp, -4
	lw $t0, -7140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7160($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7164($fp)
	addi $sp, $sp, 16
	lw $t0, -1632($fp)
	sw $t0, -7168($fp)
	li $t0, 59925
	sw $t0, -7172($fp)
	lw $t0, -7168($fp)
	lw $t1, -7172($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7176($fp)
	li $t0, 0
	sw $t0, -7180($fp)
	lw $t0, -588($fp)
	sw $t0, -7184($fp)
	lw $t1, -7184($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label360
label361:
	li $t0, 32766
	sw $t0, -7188($fp)
	lw $t1, -7188($fp)
	li $t2, 0
	bne $t1, $t2, label358
	j label360
label360:
	lw $t0, -360($fp)
	sw $t0, -7192($fp)
	lw $t1, -7192($fp)
	li $t2, 0
	bne $t1, $t2, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -7180($fp)
label359:
	addi $sp, $sp, -4
	lw $t0, -7164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7180($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7196($fp)
	addi $sp, $sp, 16
	lw $t1, -7196($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label357
label356:
	li $t0, 1
	sw $t0, -7120($fp)
label357:
	lw $t0, -1632($fp)
	sw $t0, -7200($fp)
	li $t0, 9398
	sw $t0, -7204($fp)
	lw $t0, -7200($fp)
	lw $t1, -7204($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7208($fp)
	lw $t0, -612($fp)
	sw $t0, -7212($fp)
	lw $t0, -7208($fp)
	lw $t1, -7212($fp)
	mul $t0, $t0, $t1
	sw $t0, -7216($fp)
	lw $t0, -7120($fp)
	lw $t1, -7216($fp)
	add $t0, $t0, $t1
	sw $t0, -7220($fp)
	li $t0, 0
	sw $t0, -7224($fp)
	li $t0, 65493
	sw $t0, -7228($fp)
	lw $t0, 8($fp)
	sw $t0, -7232($fp)
	lw $t0, -7228($fp)
	lw $t1, -7232($fp)
	mul $t0, $t0, $t1
	sw $t0, -7236($fp)
	lw $t1, -7236($fp)
	li $t2, 0
	bne $t1, $t2, label362
	j label364
label364:
	lw $t0, -1272($fp)
	sw $t0, -7240($fp)
	lw $t1, -7240($fp)
	li $t2, 0
	bne $t1, $t2, label362
	j label363
label362:
	li $t0, 1
	sw $t0, -7224($fp)
label363:
	lw $t0, -732($fp)
	sw $t0, -7244($fp)
	lw $t0, -7244($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -7248($fp)
	li $t0, 30288
	sw $t0, -7252($fp)
	addi $sp, $sp, -4
	lw $t0, -7224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7252($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7256($fp)
	addi $sp, $sp, 16
	lw $t1, -7220($fp)
	lw $t2, -7256($fp)
	bgt $t1, $t2, label354
	j label355
label354:
	li $t0, 1
	sw $t0, -7116($fp)
label355:
	lw $ra, -4($fp)
	lw $v0, -7116($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 24846
	sw $t0, -7260($fp)
	lw $t0, -7260($fp)
	sw $t0, -7264($fp)
	lw $t0, -7264($fp)
	sw $t0, -7268($fp)
	li $t0, 53492
	sw $t0, -7272($fp)
	lw $t0, -7272($fp)
	sw $t0, -7276($fp)
	lw $t0, -7276($fp)
	sw $t0, -7280($fp)
	lw $t0, -7264($fp)
	sw $t0, -7284($fp)
	lw $t0, -7284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7276($fp)
	sw $t0, -7288($fp)
	lw $t0, -7288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -7292($fp)
	li $t0, 52661
	sw $t0, -7296($fp)
	li $t0, 0
	sw $t0, -7300($fp)
	lw $t0, -1644($fp)
	sw $t0, -7304($fp)
	li $t0, 0
	lw $t1, -7304($fp)
	sub $t0, $t0, $t1
	sw $t0, -7308($fp)
	lw $t1, -7308($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label369
label369:
	li $t0, 16616
	sw $t0, -7312($fp)
	lw $t1, -7312($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label368
label367:
	li $t0, 1
	sw $t0, -7300($fp)
label368:
	li $t0, 11862
	sw $t0, -7316($fp)
	addi $sp, $sp, -4
	lw $t0, -7296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7316($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7320($fp)
	addi $sp, $sp, 16
	lw $t0, -336($fp)
	sw $t0, -7324($fp)
	lw $t0, -7320($fp)
	lw $t1, -7324($fp)
	sub $t0, $t0, $t1
	sw $t0, -7328($fp)
	addi $t0, $fp, -172
	sw $t0, -7332($fp)
	lw $t0, -180($fp)
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
	li $t0, 61559
	sw $t0, -7352($fp)
	li $t0, 0
	lw $t1, -7352($fp)
	sub $t0, $t0, $t1
	sw $t0, -7356($fp)
	lw $t0, -7348($fp)
	lw $t1, -7356($fp)
	mul $t0, $t0, $t1
	sw $t0, -7360($fp)
	lw $t1, -7328($fp)
	lw $t2, -7360($fp)
	bge $t1, $t2, label365
	j label366
label365:
	li $t0, 1
	sw $t0, -7292($fp)
label366:
	lw $ra, -4($fp)
	lw $v0, -7292($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label370:
	addi $t0, $fp, -92
	sw $t0, -7364($fp)
	li $t0, 0
	sw $t0, -7368($fp)
	lw $t0, -1632($fp)
	sw $t0, -7372($fp)
	li $t0, 47927
	sw $t0, -7376($fp)
	lw $t0, -7372($fp)
	lw $t1, -7376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7380($fp)
	li $t0, 36684
	sw $t0, -7384($fp)
	lw $t0, -7380($fp)
	lw $t1, -7384($fp)
	mul $t0, $t0, $t1
	sw $t0, -7388($fp)
	lw $t1, -7388($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label375
label375:
	lw $t0, -624($fp)
	sw $t0, -7392($fp)
	lw $t0, -1308($fp)
	sw $t0, -7396($fp)
	lw $t1, -7392($fp)
	lw $t2, -7396($fp)
	ble $t1, $t2, label373
	j label374
label373:
	li $t0, 1
	sw $t0, -7368($fp)
label374:
	li $t0, 4
	lw $t1, -7368($fp)
	mul $t0, $t0, $t1
	sw $t0, -7400($fp)
	lw $t0, -7400($fp)
	lw $t1, -7364($fp)
	add $t0, $t0, $t1
	sw $t0, -7404($fp)
	lw $t0, -7404($fp)
	lw $t1, 0($t0)
	sw $t1, -7408($fp)
	lw $t1, -7408($fp)
	li $t2, 0
	bne $t1, $t2, label371
	j label372
label371:
	li $t0, 0
	sw $t0, -7412($fp)
	addi $t0, $fp, -16
	sw $t0, -7416($fp)
	li $t0, 2
	sw $t0, -7420($fp)
	li $t0, 4
	lw $t1, -7420($fp)
	mul $t0, $t0, $t1
	sw $t0, -7424($fp)
	lw $t0, -7424($fp)
	lw $t1, -7416($fp)
	add $t0, $t0, $t1
	sw $t0, -7428($fp)
	lw $t0, -7428($fp)
	lw $t1, 0($t0)
	sw $t1, -7432($fp)
	lw $t1, -7432($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label378
label378:
	lw $t0, -312($fp)
	sw $t0, -7436($fp)
	lw $t0, -7264($fp)
	sw $t0, -7440($fp)
	lw $t0, -7436($fp)
	lw $t1, -7440($fp)
	sub $t0, $t0, $t1
	sw $t0, -7444($fp)
	lw $t1, -7444($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label377
label376:
	li $t0, 1
	sw $t0, -7412($fp)
label377:
	lw $t0, -7412($fp)
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	sw $t0, -7448($fp)
	j label370
label372:
	lw $t0, -7264($fp)
	sw $t0, -7452($fp)
	lw $t0, -7452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7276($fp)
	sw $t0, -7456($fp)
	lw $t0, -7456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 3625
	sw $t0, -7460($fp)
	lw $t0, -600($fp)
	sw $t0, -7464($fp)
	li $t0, 0
	lw $t1, -7464($fp)
	sub $t0, $t0, $t1
	sw $t0, -7468($fp)
	li $t0, 0
	lw $t1, -7468($fp)
	sub $t0, $t0, $t1
	sw $t0, -7472($fp)
	lw $t0, -7460($fp)
	lw $t1, -7472($fp)
	sub $t0, $t0, $t1
	sw $t0, -7476($fp)
	li $t0, 22215
	sw $t0, -7480($fp)
	li $t0, 0
	lw $t1, -7480($fp)
	sub $t0, $t0, $t1
	sw $t0, -7484($fp)
	lw $t0, -7476($fp)
	lw $t1, -7484($fp)
	add $t0, $t0, $t1
	sw $t0, -7488($fp)
	lw $ra, -4($fp)
	lw $v0, -7488($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -360($fp)
	sw $t0, -7492($fp)
label379:
	addi $t0, $fp, -148
	sw $t0, -7496($fp)
	addi $t0, $fp, -16
	sw $t0, -7500($fp)
	lw $t0, -624($fp)
	sw $t0, -7504($fp)
	li $t0, 4
	lw $t1, -7504($fp)
	mul $t0, $t0, $t1
	sw $t0, -7508($fp)
	lw $t0, -7508($fp)
	lw $t1, -7500($fp)
	add $t0, $t0, $t1
	sw $t0, -7512($fp)
	lw $t0, -7512($fp)
	lw $t1, 0($t0)
	sw $t1, -7516($fp)
	li $t0, 0
	sw $t0, -7520($fp)
	lw $t0, -996($fp)
	sw $t0, -7524($fp)
	lw $t1, -7524($fp)
	li $t2, 0
	bne $t1, $t2, label383
	j label382
label382:
	li $t0, 1
	sw $t0, -7520($fp)
label383:
	li $t0, 19127
	sw $t0, -7528($fp)
	lw $t0, -7520($fp)
	lw $t1, -7528($fp)
	mul $t0, $t0, $t1
	sw $t0, -7532($fp)
	li $t0, 0
	sw $t0, -7536($fp)
	li $t0, 22767
	sw $t0, -7540($fp)
	li $t0, 49549
	sw $t0, -7544($fp)
	lw $t1, -7540($fp)
	lw $t2, -7544($fp)
	beq $t1, $t2, label384
	j label385
label384:
	li $t0, 1
	sw $t0, -7536($fp)
label385:
	li $t0, 0
	sw $t0, -7548($fp)
	lw $t0, -1344($fp)
	sw $t0, -7552($fp)
	lw $t0, -612($fp)
	sw $t0, -7556($fp)
	lw $t0, -7552($fp)
	lw $t1, -7556($fp)
	sub $t0, $t0, $t1
	sw $t0, -7560($fp)
	lw $t0, -648($fp)
	sw $t0, -7564($fp)
	lw $t1, -7560($fp)
	lw $t2, -7564($fp)
	beq $t1, $t2, label386
	j label387
label386:
	li $t0, 1
	sw $t0, -7548($fp)
label387:
	addi $sp, $sp, -4
	lw $t0, -7532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7548($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7568($fp)
	addi $sp, $sp, 16
	lw $t0, -7516($fp)
	lw $t1, -7568($fp)
	sub $t0, $t0, $t1
	sw $t0, -7572($fp)
	li $t0, 4
	lw $t1, -7572($fp)
	mul $t0, $t0, $t1
	sw $t0, -7576($fp)
	lw $t0, -7576($fp)
	lw $t1, -7496($fp)
	add $t0, $t0, $t1
	sw $t0, -7580($fp)
	lw $t0, -7580($fp)
	lw $t1, 0($t0)
	sw $t1, -7584($fp)
	lw $t1, -7584($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label381
label380:
	li $t0, 0
	sw $t0, -7588($fp)
	lw $t0, -1680($fp)
	sw $t0, -7592($fp)
	lw $t1, -7592($fp)
	li $t2, 0
	bne $t1, $t2, label392
	j label391
label391:
	li $t0, 1
	sw $t0, -7588($fp)
label392:
	li $t0, 58533
	sw $t0, -7596($fp)
	lw $t0, -7588($fp)
	lw $t1, -7596($fp)
	sub $t0, $t0, $t1
	sw $t0, -7600($fp)
	lw $t0, -7600($fp)
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	sw $t0, -7604($fp)
	lw $t1, -7604($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label389
label388:
	lw $t0, -732($fp)
	sw $t0, -7608($fp)
	li $t0, 0
	sw $t0, -7612($fp)
	lw $t0, -7276($fp)
	sw $t0, -7616($fp)
	lw $t1, -7616($fp)
	li $t2, 0
	bne $t1, $t2, label394
	j label393
label393:
	li $t0, 1
	sw $t0, -7612($fp)
label394:
	lw $t0, -7608($fp)
	lw $t1, -7612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7620($fp)
	lw $t0, -7620($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -7624($fp)
	lw $ra, -4($fp)
	lw $v0, -7624($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label390
label389:
	lw $t0, -1320($fp)
	sw $t0, -7628($fp)
	li $t0, 0
	lw $t1, -7628($fp)
	sub $t0, $t0, $t1
	sw $t0, -7632($fp)
	lw $t1, -7632($fp)
	li $t2, 0
	bne $t1, $t2, label395
	j label396
label395:
	li $t0, 34318
	sw $t0, -7676($fp)
	addi $t0, $fp, -7672
	sw $t0, -7680($fp)
	li $t0, 0
	sw $t0, -7684($fp)
	lw $t0, -7684($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7688($fp)
	lw $t0, -7680($fp)
	lw $t1, -7688($fp)
	add $t0, $t0, $t1
	sw $t0, -7692($fp)
	lw $t0, -7676($fp)
	lw $t1, -7692($fp)
	sw $t0, 0($t1)
	lw $t0, -7692($fp)
	lw $t1, 0($t0)
	sw $t1, -7696($fp)
	li $t0, 57453
	sw $t0, -7700($fp)
	addi $t0, $fp, -7672
	sw $t0, -7704($fp)
	li $t0, 1
	sw $t0, -7708($fp)
	lw $t0, -7708($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7712($fp)
	lw $t0, -7704($fp)
	lw $t1, -7712($fp)
	add $t0, $t0, $t1
	sw $t0, -7716($fp)
	lw $t0, -7700($fp)
	lw $t1, -7716($fp)
	sw $t0, 0($t1)
	lw $t0, -7716($fp)
	lw $t1, 0($t0)
	sw $t1, -7720($fp)
	li $t0, 43977
	sw $t0, -7724($fp)
	addi $t0, $fp, -7672
	sw $t0, -7728($fp)
	li $t0, 2
	sw $t0, -7732($fp)
	lw $t0, -7732($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7736($fp)
	lw $t0, -7728($fp)
	lw $t1, -7736($fp)
	add $t0, $t0, $t1
	sw $t0, -7740($fp)
	lw $t0, -7724($fp)
	lw $t1, -7740($fp)
	sw $t0, 0($t1)
	lw $t0, -7740($fp)
	lw $t1, 0($t0)
	sw $t1, -7744($fp)
	li $t0, 20730
	sw $t0, -7748($fp)
	addi $t0, $fp, -7672
	sw $t0, -7752($fp)
	li $t0, 3
	sw $t0, -7756($fp)
	lw $t0, -7756($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7760($fp)
	lw $t0, -7752($fp)
	lw $t1, -7760($fp)
	add $t0, $t0, $t1
	sw $t0, -7764($fp)
	lw $t0, -7748($fp)
	lw $t1, -7764($fp)
	sw $t0, 0($t1)
	lw $t0, -7764($fp)
	lw $t1, 0($t0)
	sw $t1, -7768($fp)
	li $t0, 10522
	sw $t0, -7772($fp)
	addi $t0, $fp, -7672
	sw $t0, -7776($fp)
	li $t0, 4
	sw $t0, -7780($fp)
	lw $t0, -7780($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7784($fp)
	lw $t0, -7776($fp)
	lw $t1, -7784($fp)
	add $t0, $t0, $t1
	sw $t0, -7788($fp)
	lw $t0, -7772($fp)
	lw $t1, -7788($fp)
	sw $t0, 0($t1)
	lw $t0, -7788($fp)
	lw $t1, 0($t0)
	sw $t1, -7792($fp)
	li $t0, 5068
	sw $t0, -7796($fp)
	addi $t0, $fp, -7672
	sw $t0, -7800($fp)
	li $t0, 5
	sw $t0, -7804($fp)
	lw $t0, -7804($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7808($fp)
	lw $t0, -7800($fp)
	lw $t1, -7808($fp)
	add $t0, $t0, $t1
	sw $t0, -7812($fp)
	lw $t0, -7796($fp)
	lw $t1, -7812($fp)
	sw $t0, 0($t1)
	lw $t0, -7812($fp)
	lw $t1, 0($t0)
	sw $t1, -7816($fp)
	li $t0, 413
	sw $t0, -7820($fp)
	addi $t0, $fp, -7672
	sw $t0, -7824($fp)
	li $t0, 6
	sw $t0, -7828($fp)
	lw $t0, -7828($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7832($fp)
	lw $t0, -7824($fp)
	lw $t1, -7832($fp)
	add $t0, $t0, $t1
	sw $t0, -7836($fp)
	lw $t0, -7820($fp)
	lw $t1, -7836($fp)
	sw $t0, 0($t1)
	lw $t0, -7836($fp)
	lw $t1, 0($t0)
	sw $t1, -7840($fp)
	li $t0, 43288
	sw $t0, -7844($fp)
	addi $t0, $fp, -7672
	sw $t0, -7848($fp)
	li $t0, 7
	sw $t0, -7852($fp)
	lw $t0, -7852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7856($fp)
	lw $t0, -7848($fp)
	lw $t1, -7856($fp)
	add $t0, $t0, $t1
	sw $t0, -7860($fp)
	lw $t0, -7844($fp)
	lw $t1, -7860($fp)
	sw $t0, 0($t1)
	lw $t0, -7860($fp)
	lw $t1, 0($t0)
	sw $t1, -7864($fp)
	li $t0, 64993
	sw $t0, -7868($fp)
	addi $t0, $fp, -7672
	sw $t0, -7872($fp)
	li $t0, 8
	sw $t0, -7876($fp)
	lw $t0, -7876($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7880($fp)
	lw $t0, -7872($fp)
	lw $t1, -7880($fp)
	add $t0, $t0, $t1
	sw $t0, -7884($fp)
	lw $t0, -7868($fp)
	lw $t1, -7884($fp)
	sw $t0, 0($t1)
	lw $t0, -7884($fp)
	lw $t1, 0($t0)
	sw $t1, -7888($fp)
	li $t0, 37210
	sw $t0, -7892($fp)
	addi $t0, $fp, -7672
	sw $t0, -7896($fp)
	li $t0, 9
	sw $t0, -7900($fp)
	lw $t0, -7900($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7904($fp)
	lw $t0, -7896($fp)
	lw $t1, -7904($fp)
	add $t0, $t0, $t1
	sw $t0, -7908($fp)
	lw $t0, -7892($fp)
	lw $t1, -7908($fp)
	sw $t0, 0($t1)
	lw $t0, -7908($fp)
	lw $t1, 0($t0)
	sw $t1, -7912($fp)
	li $t0, 0
	sw $t0, -7916($fp)
	lw $t0, -1020($fp)
	sw $t0, -7920($fp)
	li $t0, 0
	lw $t1, -7920($fp)
	sub $t0, $t0, $t1
	sw $t0, -7924($fp)
	lw $t1, -7924($fp)
	li $t2, 0
	bne $t1, $t2, label398
	j label402
label402:
	lw $t0, -1332($fp)
	sw $t0, -7928($fp)
	li $t0, 31849
	sw $t0, -7932($fp)
	lw $t0, -7928($fp)
	lw $t1, -7932($fp)
	sub $t0, $t0, $t1
	sw $t0, -7936($fp)
	lw $t1, -7936($fp)
	li $t2, 0
	bne $t1, $t2, label398
	j label401
label401:
	lw $t0, -1296($fp)
	sw $t0, -7940($fp)
	lw $t1, -7940($fp)
	li $t2, 0
	bne $t1, $t2, label404
	j label400
label404:
	lw $t0, -648($fp)
	sw $t0, -7944($fp)
	lw $t1, -7944($fp)
	li $t2, 0
	bne $t1, $t2, label403
	j label400
label403:
	li $t0, 61459
	sw $t0, -7948($fp)
	lw $t1, -7948($fp)
	li $t2, 0
	bne $t1, $t2, label398
	j label400
label400:
	li $t0, 46608
	sw $t0, -7952($fp)
	lw $t0, -984($fp)
	sw $t0, -7956($fp)
	lw $t0, -7952($fp)
	lw $t1, -7956($fp)
	add $t0, $t0, $t1
	sw $t0, -7960($fp)
	li $t0, 62137
	sw $t0, -7964($fp)
	lw $t0, -7960($fp)
	lw $t1, -7964($fp)
	sub $t0, $t0, $t1
	sw $t0, -7968($fp)
	lw $t0, -1020($fp)
	sw $t0, -7972($fp)
	li $t0, 61416
	sw $t0, -7976($fp)
	li $t0, 5918
	sw $t0, -7980($fp)
	lw $t0, -7976($fp)
	lw $t1, -7980($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7984($fp)
	addi $t0, $fp, -7672
	sw $t0, -7988($fp)
	lw $t0, -1344($fp)
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
	addi $sp, $sp, -4
	lw $t0, -7972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8004($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8008($fp)
	addi $sp, $sp, 16
	lw $t1, -7968($fp)
	lw $t2, -8008($fp)
	ble $t1, $t2, label398
	j label399
label398:
	li $t0, 1
	sw $t0, -7916($fp)
label399:
	j label397
label396:
	li $t0, 0
	sw $t0, -8012($fp)
	addi $t0, $fp, -132
	sw $t0, -8016($fp)
	li $t0, 0
	sw $t0, -8020($fp)
	lw $t0, -1272($fp)
	sw $t0, -8024($fp)
	lw $t0, -1356($fp)
	sw $t0, -8028($fp)
	lw $t1, -8024($fp)
	lw $t2, -8028($fp)
	blt $t1, $t2, label408
	j label409
label408:
	li $t0, 1
	sw $t0, -8020($fp)
label409:
	li $t0, 4
	lw $t1, -8020($fp)
	mul $t0, $t0, $t1
	sw $t0, -8032($fp)
	lw $t0, -8032($fp)
	lw $t1, -8016($fp)
	add $t0, $t0, $t1
	sw $t0, -8036($fp)
	lw $t0, -8036($fp)
	lw $t1, 0($t0)
	sw $t1, -8040($fp)
	addi $t0, $fp, -172
	sw $t0, -8044($fp)
	li $t0, 0
	sw $t0, -8048($fp)
	li $t0, 4
	lw $t1, -8048($fp)
	mul $t0, $t0, $t1
	sw $t0, -8052($fp)
	lw $t0, -8052($fp)
	lw $t1, -8044($fp)
	add $t0, $t0, $t1
	sw $t0, -8056($fp)
	lw $t0, -8056($fp)
	lw $t1, 0($t0)
	sw $t1, -8060($fp)
	lw $t0, -8040($fp)
	lw $t1, -8060($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8064($fp)
	lw $t1, -8064($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label406
label407:
	lw $t0, -1008($fp)
	sw $t0, -8068($fp)
	li $t0, 0
	lw $t1, -8068($fp)
	sub $t0, $t0, $t1
	sw $t0, -8072($fp)
	lw $t1, -8072($fp)
	li $t2, 0
	bne $t1, $t2, label405
	j label406
label405:
	li $t0, 1
	sw $t0, -8012($fp)
label406:
label397:
label390:
	j label379
label381:
	li $t0, 22534
	sw $t0, -8076($fp)
	li $t0, 37219
	sw $t0, -8080($fp)
	lw $t0, -8076($fp)
	lw $t1, -8080($fp)
	add $t0, $t0, $t1
	sw $t0, -8084($fp)
	addi $t0, $fp, -148
	sw $t0, -8088($fp)
	li $t0, 1
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
	lw $t0, -8084($fp)
	lw $t1, -8104($fp)
	add $t0, $t0, $t1
	sw $t0, -8108($fp)
	lw $t0, -8108($fp)
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	sw $t0, -8112($fp)
	lw $t1, -8112($fp)
	li $t2, 0
	bne $t1, $t2, label410
	j label411
label410:
	li $t0, 0
	sw $t0, -8116($fp)
	li $t0, 0
	sw $t0, -8120($fp)
	li $t0, 0
	sw $t0, -8124($fp)
	lw $t0, 8($fp)
	sw $t0, -8128($fp)
	li $t0, 11992
	sw $t0, -8132($fp)
	lw $t0, -8128($fp)
	lw $t1, -8132($fp)
	sub $t0, $t0, $t1
	sw $t0, -8136($fp)
	lw $t0, -1668($fp)
	sw $t0, -8140($fp)
	lw $t1, -8136($fp)
	lw $t2, -8140($fp)
	blt $t1, $t2, label417
	j label418
label417:
	li $t0, 1
	sw $t0, -8124($fp)
label418:
	li $t0, 0
	sw $t0, -8144($fp)
	li $t0, 24426
	sw $t0, -8148($fp)
	li $t0, 0
	lw $t1, -8148($fp)
	sub $t0, $t0, $t1
	sw $t0, -8152($fp)
	li $t0, 28782
	sw $t0, -8156($fp)
	lw $t1, -8152($fp)
	lw $t2, -8156($fp)
	bge $t1, $t2, label419
	j label420
label419:
	li $t0, 1
	sw $t0, -8144($fp)
label420:
	li $t0, 0
	sw $t0, -8160($fp)
	lw $t0, -1632($fp)
	sw $t0, -8164($fp)
	lw $t1, -8164($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label423
label423:
	li $t0, 8367
	sw $t0, -8168($fp)
	lw $t1, -8168($fp)
	li $t2, 0
	bne $t1, $t2, label421
	j label422
label421:
	li $t0, 1
	sw $t0, -8160($fp)
label422:
	addi $sp, $sp, -4
	lw $t0, -8124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8160($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8172($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -8176($fp)
	li $t0, 0
	sw $t0, -8180($fp)
	li $t0, 46642
	sw $t0, -8184($fp)
	lw $t0, -1380($fp)
	sw $t0, -8188($fp)
	lw $t1, -8184($fp)
	lw $t2, -8188($fp)
	ble $t1, $t2, label426
	j label427
label426:
	li $t0, 1
	sw $t0, -8180($fp)
label427:
	li $t0, 51549
	sw $t0, -8192($fp)
	lw $t1, -8180($fp)
	lw $t2, -8192($fp)
	bge $t1, $t2, label424
	j label425
label424:
	li $t0, 1
	sw $t0, -8176($fp)
label425:
	lw $t1, -8172($fp)
	lw $t2, -8176($fp)
	bne $t1, $t2, label415
	j label416
label415:
	li $t0, 1
	sw $t0, -8120($fp)
label416:
	li $t0, 0
	sw $t0, -8196($fp)
	li $t0, 0
	sw $t0, -8200($fp)
	li $t0, 51054
	sw $t0, -8204($fp)
	lw $t1, -8204($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label433
label433:
	li $t0, 2672
	sw $t0, -8208($fp)
	lw $t1, -8208($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label432
label432:
	lw $t0, -204($fp)
	sw $t0, -8212($fp)
	lw $t1, -8212($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label431
label430:
	li $t0, 1
	sw $t0, -8200($fp)
label431:
	li $t0, 57686
	sw $t0, -8216($fp)
	li $t0, 22987
	sw $t0, -8220($fp)
	lw $t0, -8216($fp)
	lw $t1, -8220($fp)
	mul $t0, $t0, $t1
	sw $t0, -8224($fp)
	lw $t0, -324($fp)
	sw $t0, -8228($fp)
	lw $t0, -8224($fp)
	lw $t1, -8228($fp)
	mul $t0, $t0, $t1
	sw $t0, -8232($fp)
	li $t0, 0
	sw $t0, -8236($fp)
	li $t0, 44546
	sw $t0, -8240($fp)
	li $t0, 30324
	sw $t0, -8244($fp)
	lw $t0, -8240($fp)
	lw $t1, -8244($fp)
	mul $t0, $t0, $t1
	sw $t0, -8248($fp)
	lw $t1, -8248($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label435
label436:
	lw $t0, -1332($fp)
	sw $t0, -8252($fp)
	lw $t1, -8252($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label435
label434:
	li $t0, 1
	sw $t0, -8236($fp)
label435:
	li $t0, 0
	sw $t0, -8256($fp)
	li $t0, 233
	sw $t0, -8260($fp)
	lw $t1, -8260($fp)
	li $t2, 0
	bne $t1, $t2, label437
	j label439
label439:
	lw $t0, -360($fp)
	sw $t0, -8264($fp)
	lw $t1, -8264($fp)
	li $t2, 0
	bne $t1, $t2, label437
	j label438
label437:
	li $t0, 1
	sw $t0, -8256($fp)
label438:
	addi $sp, $sp, -4
	lw $t0, -8232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8256($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8268($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -8268($fp)
	sub $t0, $t0, $t1
	sw $t0, -8272($fp)
	li $t0, 61542
	sw $t0, -8276($fp)
	lw $t0, -8276($fp)
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -8280($fp)
	addi $sp, $sp, -4
	lw $t0, -8200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8280($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8284($fp)
	addi $sp, $sp, 16
	lw $t1, -8284($fp)
	li $t2, 0
	bne $t1, $t2, label429
	j label428
label428:
	li $t0, 1
	sw $t0, -8196($fp)
label429:
	lw $t1, -8120($fp)
	lw $t2, -8196($fp)
	bne $t1, $t2, label413
	j label414
label413:
	li $t0, 1
	sw $t0, -8116($fp)
label414:
	j label412
label411:
	lw $t0, -636($fp)
	sw $t0, -8288($fp)
	lw $t1, -8288($fp)
	li $t2, 0
	bne $t1, $t2, label443
	j label441
label443:
	li $t0, 28055
	sw $t0, -8292($fp)
	lw $t0, -8292($fp)
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -8296($fp)
	lw $t0, -672($fp)
	sw $t0, -8300($fp)
	lw $t0, -8300($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -8304($fp)
	li $t0, 0
	sw $t0, -8308($fp)
	li $t0, 0
	sw $t0, -8312($fp)
	lw $t0, -600($fp)
	sw $t0, -8316($fp)
	lw $t1, -8316($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label446
label446:
	li $t0, 1
	sw $t0, -8312($fp)
label447:
	lw $t0, -300($fp)
	sw $t0, -8320($fp)
	lw $t1, -8312($fp)
	lw $t2, -8320($fp)
	bge $t1, $t2, label444
	j label445
label444:
	li $t0, 1
	sw $t0, -8308($fp)
label445:
	addi $sp, $sp, -4
	lw $t0, -8296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8308($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8324($fp)
	addi $sp, $sp, 16
	lw $t1, -8324($fp)
	li $t2, 0
	bne $t1, $t2, label441
	j label440
label440:
	li $t0, 27512
	sw $t0, -8328($fp)
	lw $t0, -8328($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -8332($fp)
	li $t0, 0
	sw $t0, -8336($fp)
	addi $t0, $fp, -132
	sw $t0, -8340($fp)
	lw $t0, -348($fp)
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
	li $t0, 45961
	sw $t0, -8360($fp)
	lw $t1, -8356($fp)
	lw $t2, -8360($fp)
	beq $t1, $t2, label448
	j label449
label448:
	li $t0, 1
	sw $t0, -8336($fp)
label449:
	li $t0, 0
	sw $t0, -8364($fp)
	lw $t0, -192($fp)
	sw $t0, -8368($fp)
	lw $t0, -588($fp)
	sw $t0, -8372($fp)
	lw $t0, -8368($fp)
	lw $t1, -8372($fp)
	add $t0, $t0, $t1
	sw $t0, -8376($fp)
	lw $t1, -8376($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label451
label452:
	li $t0, 51467
	sw $t0, -8380($fp)
	lw $t1, -8380($fp)
	li $t2, 0
	bne $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -8364($fp)
label451:
	addi $sp, $sp, -4
	lw $t0, -8332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8364($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8384($fp)
	addi $sp, $sp, 16
	li $t0, 23435
	sw $t0, -8388($fp)
	li $t0, 12274
	sw $t0, -8392($fp)
	lw $t0, -8392($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -8396($fp)
	li $t0, 0
	sw $t0, -8400($fp)
	lw $t0, -1632($fp)
	sw $t0, -8404($fp)
	li $t0, 23141
	sw $t0, -8408($fp)
	lw $t1, -8404($fp)
	lw $t2, -8408($fp)
	bge $t1, $t2, label455
	j label454
label455:
	lw $t0, -600($fp)
	sw $t0, -8412($fp)
	lw $t1, -8412($fp)
	li $t2, 0
	bne $t1, $t2, label453
	j label454
label453:
	li $t0, 1
	sw $t0, -8400($fp)
label454:
	addi $sp, $sp, -4
	lw $t0, -8388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8400($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8416($fp)
	addi $sp, $sp, 16
	lw $t0, -8384($fp)
	lw $t1, -8416($fp)
	mul $t0, $t0, $t1
	sw $t0, -8420($fp)
	li $t0, 19315
	sw $t0, -8424($fp)
	li $t0, 10132
	sw $t0, -8428($fp)
	lw $t0, -8424($fp)
	lw $t1, -8428($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8432($fp)
	li $t0, 58969
	sw $t0, -8436($fp)
	lw $t0, -8432($fp)
	lw $t1, -8436($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8440($fp)
	li $t0, 8875
	sw $t0, -8444($fp)
	li $t0, 0
	lw $t1, -8444($fp)
	sub $t0, $t0, $t1
	sw $t0, -8448($fp)
	li $t0, 0
	lw $t1, -8448($fp)
	sub $t0, $t0, $t1
	sw $t0, -8452($fp)
	li $t0, 4213
	sw $t0, -8456($fp)
	addi $sp, $sp, -4
	lw $t0, -8440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8456($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8460($fp)
	addi $sp, $sp, 16
	lw $t0, -8420($fp)
	lw $t1, -8460($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8464($fp)
	j label442
label441:
	li $t0, 0
	sw $t0, -8468($fp)
	lw $t0, -192($fp)
	sw $t0, -8472($fp)
	lw $t0, -192($fp)
	sw $t0, -8476($fp)
	li $t0, 27058
	sw $t0, -8480($fp)
	lw $t0, -8476($fp)
	lw $t1, -8480($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8484($fp)
	li $t0, 32666
	sw $t0, -8488($fp)
	lw $t0, -8484($fp)
	lw $t1, -8488($fp)
	mul $t0, $t0, $t1
	sw $t0, -8492($fp)
	li $t0, 30652
	sw $t0, -8496($fp)
	li $t0, 0
	lw $t1, -8496($fp)
	sub $t0, $t0, $t1
	sw $t0, -8500($fp)
	lw $t0, -8492($fp)
	lw $t1, -8500($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8504($fp)
	lw $t1, -8472($fp)
	lw $t2, -8504($fp)
	beq $t1, $t2, label456
	j label457
label456:
	li $t0, 1
	sw $t0, -8468($fp)
label457:
	lw $ra, -4($fp)
	lw $v0, -8468($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label442:
label412:
	lw $t0, -180($fp)
	sw $t0, -8508($fp)
	lw $t0, -8508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -8512($fp)
	lw $t0, -8512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -8516($fp)
	lw $t0, -8516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -8520($fp)
	li $t0, 0
	sw $t0, -8524($fp)
	li $t0, 4
	lw $t1, -8524($fp)
	mul $t0, $t0, $t1
	sw $t0, -8528($fp)
	lw $t0, -8528($fp)
	lw $t1, -8520($fp)
	add $t0, $t0, $t1
	sw $t0, -8532($fp)
	lw $t0, -8532($fp)
	lw $t1, 0($t0)
	sw $t1, -8536($fp)
	lw $t0, -8536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -8540($fp)
	li $t0, 1
	sw $t0, -8544($fp)
	li $t0, 4
	lw $t1, -8544($fp)
	mul $t0, $t0, $t1
	sw $t0, -8548($fp)
	lw $t0, -8548($fp)
	lw $t1, -8540($fp)
	add $t0, $t0, $t1
	sw $t0, -8552($fp)
	lw $t0, -8552($fp)
	lw $t1, 0($t0)
	sw $t1, -8556($fp)
	lw $t0, -8556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -8560($fp)
	li $t0, 2
	sw $t0, -8564($fp)
	li $t0, 4
	lw $t1, -8564($fp)
	mul $t0, $t0, $t1
	sw $t0, -8568($fp)
	lw $t0, -8568($fp)
	lw $t1, -8560($fp)
	add $t0, $t0, $t1
	sw $t0, -8572($fp)
	lw $t0, -8572($fp)
	lw $t1, 0($t0)
	sw $t1, -8576($fp)
	lw $t0, -8576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -8580($fp)
	lw $t0, -8580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -300($fp)
	sw $t0, -8584($fp)
	lw $t0, -8584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -312($fp)
	sw $t0, -8588($fp)
	lw $t0, -8588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -8592($fp)
	lw $t0, -8592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -336($fp)
	sw $t0, -8596($fp)
	lw $t0, -8596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -348($fp)
	sw $t0, -8600($fp)
	lw $t0, -8600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -8604($fp)
	lw $t0, -8604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -8608($fp)
	li $t0, 0
	sw $t0, -8612($fp)
	li $t0, 4
	lw $t1, -8612($fp)
	mul $t0, $t0, $t1
	sw $t0, -8616($fp)
	lw $t0, -8616($fp)
	lw $t1, -8608($fp)
	add $t0, $t0, $t1
	sw $t0, -8620($fp)
	lw $t0, -8620($fp)
	lw $t1, 0($t0)
	sw $t1, -8624($fp)
	lw $t0, -8624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -8628($fp)
	li $t0, 1
	sw $t0, -8632($fp)
	li $t0, 4
	lw $t1, -8632($fp)
	mul $t0, $t0, $t1
	sw $t0, -8636($fp)
	lw $t0, -8636($fp)
	lw $t1, -8628($fp)
	add $t0, $t0, $t1
	sw $t0, -8640($fp)
	lw $t0, -8640($fp)
	lw $t1, 0($t0)
	sw $t1, -8644($fp)
	lw $t0, -8644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -8648($fp)
	li $t0, 2
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
	lw $t0, -8664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -8668($fp)
	li $t0, 3
	sw $t0, -8672($fp)
	li $t0, 4
	lw $t1, -8672($fp)
	mul $t0, $t0, $t1
	sw $t0, -8676($fp)
	lw $t0, -8676($fp)
	lw $t1, -8668($fp)
	add $t0, $t0, $t1
	sw $t0, -8680($fp)
	lw $t0, -8680($fp)
	lw $t1, 0($t0)
	sw $t1, -8684($fp)
	lw $t0, -8684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -8688($fp)
	li $t0, 4
	sw $t0, -8692($fp)
	li $t0, 4
	lw $t1, -8692($fp)
	mul $t0, $t0, $t1
	sw $t0, -8696($fp)
	lw $t0, -8696($fp)
	lw $t1, -8688($fp)
	add $t0, $t0, $t1
	sw $t0, -8700($fp)
	lw $t0, -8700($fp)
	lw $t1, 0($t0)
	sw $t1, -8704($fp)
	lw $t0, -8704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -8708($fp)
	li $t0, 5
	sw $t0, -8712($fp)
	li $t0, 4
	lw $t1, -8712($fp)
	mul $t0, $t0, $t1
	sw $t0, -8716($fp)
	lw $t0, -8716($fp)
	lw $t1, -8708($fp)
	add $t0, $t0, $t1
	sw $t0, -8720($fp)
	lw $t0, -8720($fp)
	lw $t1, 0($t0)
	sw $t1, -8724($fp)
	lw $t0, -8724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -8728($fp)
	li $t0, 6
	sw $t0, -8732($fp)
	li $t0, 4
	lw $t1, -8732($fp)
	mul $t0, $t0, $t1
	sw $t0, -8736($fp)
	lw $t0, -8736($fp)
	lw $t1, -8728($fp)
	add $t0, $t0, $t1
	sw $t0, -8740($fp)
	lw $t0, -8740($fp)
	lw $t1, 0($t0)
	sw $t1, -8744($fp)
	lw $t0, -8744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -8748($fp)
	li $t0, 7
	sw $t0, -8752($fp)
	li $t0, 4
	lw $t1, -8752($fp)
	mul $t0, $t0, $t1
	sw $t0, -8756($fp)
	lw $t0, -8756($fp)
	lw $t1, -8748($fp)
	add $t0, $t0, $t1
	sw $t0, -8760($fp)
	lw $t0, -8760($fp)
	lw $t1, 0($t0)
	sw $t1, -8764($fp)
	lw $t0, -8764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -8768($fp)
	li $t0, 8
	sw $t0, -8772($fp)
	li $t0, 4
	lw $t1, -8772($fp)
	mul $t0, $t0, $t1
	sw $t0, -8776($fp)
	lw $t0, -8776($fp)
	lw $t1, -8768($fp)
	add $t0, $t0, $t1
	sw $t0, -8780($fp)
	lw $t0, -8780($fp)
	lw $t1, 0($t0)
	sw $t1, -8784($fp)
	lw $t0, -8784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -8788($fp)
	lw $t0, -8788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -600($fp)
	sw $t0, -8792($fp)
	lw $t0, -8792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -8796($fp)
	lw $t0, -8796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -8800($fp)
	lw $t0, -8800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -8804($fp)
	lw $t0, -8804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -8808($fp)
	lw $t0, -8808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -8812($fp)
	lw $t0, -8812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -8816($fp)
	lw $t0, -8816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -8820($fp)
	li $t0, 0
	sw $t0, -8824($fp)
	li $t0, 4
	lw $t1, -8824($fp)
	mul $t0, $t0, $t1
	sw $t0, -8828($fp)
	lw $t0, -8828($fp)
	lw $t1, -8820($fp)
	add $t0, $t0, $t1
	sw $t0, -8832($fp)
	lw $t0, -8832($fp)
	lw $t1, 0($t0)
	sw $t1, -8836($fp)
	lw $t0, -8836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -8840($fp)
	lw $t0, -8840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -720($fp)
	sw $t0, -8844($fp)
	lw $t0, -8844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -732($fp)
	sw $t0, -8848($fp)
	lw $t0, -8848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -744($fp)
	sw $t0, -8852($fp)
	lw $t0, -8852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -756($fp)
	sw $t0, -8856($fp)
	lw $t0, -8856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -8860($fp)
	li $t0, 0
	sw $t0, -8864($fp)
	li $t0, 4
	lw $t1, -8864($fp)
	mul $t0, $t0, $t1
	sw $t0, -8868($fp)
	lw $t0, -8868($fp)
	lw $t1, -8860($fp)
	add $t0, $t0, $t1
	sw $t0, -8872($fp)
	lw $t0, -8872($fp)
	lw $t1, 0($t0)
	sw $t1, -8876($fp)
	lw $t0, -8876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
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
	lw $t0, -8896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -8900($fp)
	li $t0, 2
	sw $t0, -8904($fp)
	li $t0, 4
	lw $t1, -8904($fp)
	mul $t0, $t0, $t1
	sw $t0, -8908($fp)
	lw $t0, -8908($fp)
	lw $t1, -8900($fp)
	add $t0, $t0, $t1
	sw $t0, -8912($fp)
	lw $t0, -8912($fp)
	lw $t1, 0($t0)
	sw $t1, -8916($fp)
	lw $t0, -8916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -8920($fp)
	li $t0, 3
	sw $t0, -8924($fp)
	li $t0, 4
	lw $t1, -8924($fp)
	mul $t0, $t0, $t1
	sw $t0, -8928($fp)
	lw $t0, -8928($fp)
	lw $t1, -8920($fp)
	add $t0, $t0, $t1
	sw $t0, -8932($fp)
	lw $t0, -8932($fp)
	lw $t1, 0($t0)
	sw $t1, -8936($fp)
	lw $t0, -8936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -8940($fp)
	li $t0, 4
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
	lw $t0, -8956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -8960($fp)
	li $t0, 5
	sw $t0, -8964($fp)
	li $t0, 4
	lw $t1, -8964($fp)
	mul $t0, $t0, $t1
	sw $t0, -8968($fp)
	lw $t0, -8968($fp)
	lw $t1, -8960($fp)
	add $t0, $t0, $t1
	sw $t0, -8972($fp)
	lw $t0, -8972($fp)
	lw $t1, 0($t0)
	sw $t1, -8976($fp)
	lw $t0, -8976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -8980($fp)
	li $t0, 6
	sw $t0, -8984($fp)
	li $t0, 4
	lw $t1, -8984($fp)
	mul $t0, $t0, $t1
	sw $t0, -8988($fp)
	lw $t0, -8988($fp)
	lw $t1, -8980($fp)
	add $t0, $t0, $t1
	sw $t0, -8992($fp)
	lw $t0, -8992($fp)
	lw $t1, 0($t0)
	sw $t1, -8996($fp)
	lw $t0, -8996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -9000($fp)
	li $t0, 7
	sw $t0, -9004($fp)
	li $t0, 4
	lw $t1, -9004($fp)
	mul $t0, $t0, $t1
	sw $t0, -9008($fp)
	lw $t0, -9008($fp)
	lw $t1, -9000($fp)
	add $t0, $t0, $t1
	sw $t0, -9012($fp)
	lw $t0, -9012($fp)
	lw $t1, 0($t0)
	sw $t1, -9016($fp)
	lw $t0, -9016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -9020($fp)
	li $t0, 8
	sw $t0, -9024($fp)
	li $t0, 4
	lw $t1, -9024($fp)
	mul $t0, $t0, $t1
	sw $t0, -9028($fp)
	lw $t0, -9028($fp)
	lw $t1, -9020($fp)
	add $t0, $t0, $t1
	sw $t0, -9032($fp)
	lw $t0, -9032($fp)
	lw $t1, 0($t0)
	sw $t1, -9036($fp)
	lw $t0, -9036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -984($fp)
	sw $t0, -9040($fp)
	lw $t0, -9040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -996($fp)
	sw $t0, -9044($fp)
	lw $t0, -9044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1008($fp)
	sw $t0, -9048($fp)
	lw $t0, -9048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1020($fp)
	sw $t0, -9052($fp)
	lw $t0, -9052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -9056($fp)
	li $t0, 0
	sw $t0, -9060($fp)
	li $t0, 4
	lw $t1, -9060($fp)
	mul $t0, $t0, $t1
	sw $t0, -9064($fp)
	lw $t0, -9064($fp)
	lw $t1, -9056($fp)
	add $t0, $t0, $t1
	sw $t0, -9068($fp)
	lw $t0, -9068($fp)
	lw $t1, 0($t0)
	sw $t1, -9072($fp)
	lw $t0, -9072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -9076($fp)
	li $t0, 1
	sw $t0, -9080($fp)
	li $t0, 4
	lw $t1, -9080($fp)
	mul $t0, $t0, $t1
	sw $t0, -9084($fp)
	lw $t0, -9084($fp)
	lw $t1, -9076($fp)
	add $t0, $t0, $t1
	sw $t0, -9088($fp)
	lw $t0, -9088($fp)
	lw $t1, 0($t0)
	sw $t1, -9092($fp)
	lw $t0, -9092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -9096($fp)
	li $t0, 2
	sw $t0, -9100($fp)
	li $t0, 4
	lw $t1, -9100($fp)
	mul $t0, $t0, $t1
	sw $t0, -9104($fp)
	lw $t0, -9104($fp)
	lw $t1, -9096($fp)
	add $t0, $t0, $t1
	sw $t0, -9108($fp)
	lw $t0, -9108($fp)
	lw $t1, 0($t0)
	sw $t1, -9112($fp)
	lw $t0, -9112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -9116($fp)
	li $t0, 3
	sw $t0, -9120($fp)
	li $t0, 4
	lw $t1, -9120($fp)
	mul $t0, $t0, $t1
	sw $t0, -9124($fp)
	lw $t0, -9124($fp)
	lw $t1, -9116($fp)
	add $t0, $t0, $t1
	sw $t0, -9128($fp)
	lw $t0, -9128($fp)
	lw $t1, 0($t0)
	sw $t1, -9132($fp)
	lw $t0, -9132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -9136($fp)
	li $t0, 4
	sw $t0, -9140($fp)
	li $t0, 4
	lw $t1, -9140($fp)
	mul $t0, $t0, $t1
	sw $t0, -9144($fp)
	lw $t0, -9144($fp)
	lw $t1, -9136($fp)
	add $t0, $t0, $t1
	sw $t0, -9148($fp)
	lw $t0, -9148($fp)
	lw $t1, 0($t0)
	sw $t1, -9152($fp)
	lw $t0, -9152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -9156($fp)
	li $t0, 5
	sw $t0, -9160($fp)
	li $t0, 4
	lw $t1, -9160($fp)
	mul $t0, $t0, $t1
	sw $t0, -9164($fp)
	lw $t0, -9164($fp)
	lw $t1, -9156($fp)
	add $t0, $t0, $t1
	sw $t0, -9168($fp)
	lw $t0, -9168($fp)
	lw $t1, 0($t0)
	sw $t1, -9172($fp)
	lw $t0, -9172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -9176($fp)
	li $t0, 6
	sw $t0, -9180($fp)
	li $t0, 4
	lw $t1, -9180($fp)
	mul $t0, $t0, $t1
	sw $t0, -9184($fp)
	lw $t0, -9184($fp)
	lw $t1, -9176($fp)
	add $t0, $t0, $t1
	sw $t0, -9188($fp)
	lw $t0, -9188($fp)
	lw $t1, 0($t0)
	sw $t1, -9192($fp)
	lw $t0, -9192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -9196($fp)
	li $t0, 7
	sw $t0, -9200($fp)
	li $t0, 4
	lw $t1, -9200($fp)
	mul $t0, $t0, $t1
	sw $t0, -9204($fp)
	lw $t0, -9204($fp)
	lw $t1, -9196($fp)
	add $t0, $t0, $t1
	sw $t0, -9208($fp)
	lw $t0, -9208($fp)
	lw $t1, 0($t0)
	sw $t1, -9212($fp)
	lw $t0, -9212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -9216($fp)
	li $t0, 8
	sw $t0, -9220($fp)
	li $t0, 4
	lw $t1, -9220($fp)
	mul $t0, $t0, $t1
	sw $t0, -9224($fp)
	lw $t0, -9224($fp)
	lw $t1, -9216($fp)
	add $t0, $t0, $t1
	sw $t0, -9228($fp)
	lw $t0, -9228($fp)
	lw $t1, 0($t0)
	sw $t1, -9232($fp)
	lw $t0, -9232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -9236($fp)
	li $t0, 9
	sw $t0, -9240($fp)
	li $t0, 4
	lw $t1, -9240($fp)
	mul $t0, $t0, $t1
	sw $t0, -9244($fp)
	lw $t0, -9244($fp)
	lw $t1, -9236($fp)
	add $t0, $t0, $t1
	sw $t0, -9248($fp)
	lw $t0, -9248($fp)
	lw $t1, 0($t0)
	sw $t1, -9252($fp)
	lw $t0, -9252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1272($fp)
	sw $t0, -9256($fp)
	lw $t0, -9256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1284($fp)
	sw $t0, -9260($fp)
	lw $t0, -9260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1296($fp)
	sw $t0, -9264($fp)
	lw $t0, -9264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1308($fp)
	sw $t0, -9268($fp)
	lw $t0, -9268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1320($fp)
	sw $t0, -9272($fp)
	lw $t0, -9272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1332($fp)
	sw $t0, -9276($fp)
	lw $t0, -9276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1344($fp)
	sw $t0, -9280($fp)
	lw $t0, -9280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1356($fp)
	sw $t0, -9284($fp)
	lw $t0, -9284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1368($fp)
	sw $t0, -9288($fp)
	lw $t0, -9288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1380($fp)
	sw $t0, -9292($fp)
	lw $t0, -9292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -9296($fp)
	li $t0, 0
	sw $t0, -9300($fp)
	li $t0, 4
	lw $t1, -9300($fp)
	mul $t0, $t0, $t1
	sw $t0, -9304($fp)
	lw $t0, -9304($fp)
	lw $t1, -9296($fp)
	add $t0, $t0, $t1
	sw $t0, -9308($fp)
	lw $t0, -9308($fp)
	lw $t1, 0($t0)
	sw $t1, -9312($fp)
	lw $t0, -9312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -9316($fp)
	li $t0, 1
	sw $t0, -9320($fp)
	li $t0, 4
	lw $t1, -9320($fp)
	mul $t0, $t0, $t1
	sw $t0, -9324($fp)
	lw $t0, -9324($fp)
	lw $t1, -9316($fp)
	add $t0, $t0, $t1
	sw $t0, -9328($fp)
	lw $t0, -9328($fp)
	lw $t1, 0($t0)
	sw $t1, -9332($fp)
	lw $t0, -9332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -9336($fp)
	li $t0, 2
	sw $t0, -9340($fp)
	li $t0, 4
	lw $t1, -9340($fp)
	mul $t0, $t0, $t1
	sw $t0, -9344($fp)
	lw $t0, -9344($fp)
	lw $t1, -9336($fp)
	add $t0, $t0, $t1
	sw $t0, -9348($fp)
	lw $t0, -9348($fp)
	lw $t1, 0($t0)
	sw $t1, -9352($fp)
	lw $t0, -9352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -9356($fp)
	li $t0, 3
	sw $t0, -9360($fp)
	li $t0, 4
	lw $t1, -9360($fp)
	mul $t0, $t0, $t1
	sw $t0, -9364($fp)
	lw $t0, -9364($fp)
	lw $t1, -9356($fp)
	add $t0, $t0, $t1
	sw $t0, -9368($fp)
	lw $t0, -9368($fp)
	lw $t1, 0($t0)
	sw $t1, -9372($fp)
	lw $t0, -9372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -9376($fp)
	li $t0, 0
	sw $t0, -9380($fp)
	li $t0, 4
	lw $t1, -9380($fp)
	mul $t0, $t0, $t1
	sw $t0, -9384($fp)
	lw $t0, -9384($fp)
	lw $t1, -9376($fp)
	add $t0, $t0, $t1
	sw $t0, -9388($fp)
	lw $t0, -9388($fp)
	lw $t1, 0($t0)
	sw $t1, -9392($fp)
	lw $t0, -9392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -9396($fp)
	li $t0, 1
	sw $t0, -9400($fp)
	li $t0, 4
	lw $t1, -9400($fp)
	mul $t0, $t0, $t1
	sw $t0, -9404($fp)
	lw $t0, -9404($fp)
	lw $t1, -9396($fp)
	add $t0, $t0, $t1
	sw $t0, -9408($fp)
	lw $t0, -9408($fp)
	lw $t1, 0($t0)
	sw $t1, -9412($fp)
	lw $t0, -9412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -9416($fp)
	li $t0, 2
	sw $t0, -9420($fp)
	li $t0, 4
	lw $t1, -9420($fp)
	mul $t0, $t0, $t1
	sw $t0, -9424($fp)
	lw $t0, -9424($fp)
	lw $t1, -9416($fp)
	add $t0, $t0, $t1
	sw $t0, -9428($fp)
	lw $t0, -9428($fp)
	lw $t1, 0($t0)
	sw $t1, -9432($fp)
	lw $t0, -9432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -9436($fp)
	li $t0, 3
	sw $t0, -9440($fp)
	li $t0, 4
	lw $t1, -9440($fp)
	mul $t0, $t0, $t1
	sw $t0, -9444($fp)
	lw $t0, -9444($fp)
	lw $t1, -9436($fp)
	add $t0, $t0, $t1
	sw $t0, -9448($fp)
	lw $t0, -9448($fp)
	lw $t1, 0($t0)
	sw $t1, -9452($fp)
	lw $t0, -9452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -9456($fp)
	li $t0, 4
	sw $t0, -9460($fp)
	li $t0, 4
	lw $t1, -9460($fp)
	mul $t0, $t0, $t1
	sw $t0, -9464($fp)
	lw $t0, -9464($fp)
	lw $t1, -9456($fp)
	add $t0, $t0, $t1
	sw $t0, -9468($fp)
	lw $t0, -9468($fp)
	lw $t1, 0($t0)
	sw $t1, -9472($fp)
	lw $t0, -9472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -172
	sw $t0, -9476($fp)
	li $t0, 5
	sw $t0, -9480($fp)
	li $t0, 4
	lw $t1, -9480($fp)
	mul $t0, $t0, $t1
	sw $t0, -9484($fp)
	lw $t0, -9484($fp)
	lw $t1, -9476($fp)
	add $t0, $t0, $t1
	sw $t0, -9488($fp)
	lw $t0, -9488($fp)
	lw $t1, 0($t0)
	sw $t1, -9492($fp)
	lw $t0, -9492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1632($fp)
	sw $t0, -9496($fp)
	lw $t0, -9496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1644($fp)
	sw $t0, -9500($fp)
	lw $t0, -9500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1656($fp)
	sw $t0, -9504($fp)
	lw $t0, -9504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1668($fp)
	sw $t0, -9508($fp)
	lw $t0, -9508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1680($fp)
	sw $t0, -9512($fp)
	lw $t0, -9512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 30824
	sw $t0, -9516($fp)
	li $t0, 0
	sw $t0, -9520($fp)
	lw $t0, -588($fp)
	sw $t0, -9524($fp)
	lw $t1, -9524($fp)
	li $t2, 0
	bne $t1, $t2, label459
	j label458
label458:
	li $t0, 1
	sw $t0, -9520($fp)
label459:
	li $t0, 0
	lw $t1, -9520($fp)
	sub $t0, $t0, $t1
	sw $t0, -9528($fp)
	lw $t0, -9516($fp)
	lw $t1, -9528($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9532($fp)
	addi $t0, $fp, -172
	sw $t0, -9536($fp)
	lw $t0, -1632($fp)
	sw $t0, -9540($fp)
	lw $t0, -624($fp)
	sw $t0, -9544($fp)
	lw $t0, -9540($fp)
	lw $t1, -9544($fp)
	sub $t0, $t0, $t1
	sw $t0, -9548($fp)
	li $t0, 4
	lw $t1, -9548($fp)
	mul $t0, $t0, $t1
	sw $t0, -9552($fp)
	lw $t0, -9552($fp)
	lw $t1, -9536($fp)
	add $t0, $t0, $t1
	sw $t0, -9556($fp)
	lw $t0, -9556($fp)
	lw $t1, 0($t0)
	sw $t1, -9560($fp)
	lw $t0, -9532($fp)
	lw $t1, -9560($fp)
	sub $t0, $t0, $t1
	sw $t0, -9564($fp)
	lw $ra, -4($fp)
	lw $v0, -9564($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2532
	li $t0, 37592
	sw $t0, -112($fp)
	addi $t0, $fp, -28
	sw $t0, -116($fp)
	li $t0, 0
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
	li $t0, 39019
	sw $t0, -136($fp)
	addi $t0, $fp, -28
	sw $t0, -140($fp)
	li $t0, 1
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
	li $t0, 55250
	sw $t0, -160($fp)
	addi $t0, $fp, -28
	sw $t0, -164($fp)
	li $t0, 2
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
	li $t0, 838
	sw $t0, -184($fp)
	addi $t0, $fp, -28
	sw $t0, -188($fp)
	li $t0, 3
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
	li $t0, 51012
	sw $t0, -208($fp)
	addi $t0, $fp, -28
	sw $t0, -212($fp)
	li $t0, 4
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
	li $t0, 36356
	sw $t0, -232($fp)
	addi $t0, $fp, -28
	sw $t0, -236($fp)
	li $t0, 5
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
	li $t0, 52387
	sw $t0, -256($fp)
	addi $t0, $fp, -68
	sw $t0, -260($fp)
	li $t0, 0
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
	li $t0, 47018
	sw $t0, -280($fp)
	addi $t0, $fp, -68
	sw $t0, -284($fp)
	li $t0, 1
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
	li $t0, 36590
	sw $t0, -304($fp)
	addi $t0, $fp, -68
	sw $t0, -308($fp)
	li $t0, 2
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
	li $t0, 31397
	sw $t0, -328($fp)
	addi $t0, $fp, -68
	sw $t0, -332($fp)
	li $t0, 3
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
	li $t0, 11806
	sw $t0, -352($fp)
	addi $t0, $fp, -68
	sw $t0, -356($fp)
	li $t0, 4
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
	li $t0, 28740
	sw $t0, -376($fp)
	addi $t0, $fp, -68
	sw $t0, -380($fp)
	li $t0, 5
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
	li $t0, 54384
	sw $t0, -400($fp)
	addi $t0, $fp, -68
	sw $t0, -404($fp)
	li $t0, 6
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
	li $t0, 62861
	sw $t0, -424($fp)
	addi $t0, $fp, -68
	sw $t0, -428($fp)
	li $t0, 7
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
	li $t0, 31413
	sw $t0, -448($fp)
	addi $t0, $fp, -68
	sw $t0, -452($fp)
	li $t0, 8
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
	li $t0, 16904
	sw $t0, -472($fp)
	addi $t0, $fp, -68
	sw $t0, -476($fp)
	li $t0, 9
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
	li $t0, 48792
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	li $t0, 11838
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	li $t0, 44416
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	li $t0, 6398
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	li $t0, 24112
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	li $t0, 2316
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 10611
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	li $t0, 32987
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	li $t0, 21631
	sw $t0, -592($fp)
	addi $t0, $fp, -108
	sw $t0, -596($fp)
	li $t0, 0
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
	li $t0, 20743
	sw $t0, -616($fp)
	addi $t0, $fp, -108
	sw $t0, -620($fp)
	li $t0, 1
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
	li $t0, 26421
	sw $t0, -640($fp)
	addi $t0, $fp, -108
	sw $t0, -644($fp)
	li $t0, 2
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -652($fp)
	lw $t0, -644($fp)
	lw $t1, -652($fp)
	add $t0, $t0, $t1
	sw $t0, -656($fp)
	lw $t0, -640($fp)
	lw $t1, -656($fp)
	sw $t0, 0($t1)
	lw $t0, -656($fp)
	lw $t1, 0($t0)
	sw $t1, -660($fp)
	li $t0, 48689
	sw $t0, -664($fp)
	addi $t0, $fp, -108
	sw $t0, -668($fp)
	li $t0, 3
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $t0, -668($fp)
	lw $t1, -676($fp)
	add $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $t0, -664($fp)
	lw $t1, -680($fp)
	sw $t0, 0($t1)
	lw $t0, -680($fp)
	lw $t1, 0($t0)
	sw $t1, -684($fp)
	li $t0, 53410
	sw $t0, -688($fp)
	addi $t0, $fp, -108
	sw $t0, -692($fp)
	li $t0, 4
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
	li $t0, 57073
	sw $t0, -712($fp)
	addi $t0, $fp, -108
	sw $t0, -716($fp)
	li $t0, 5
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
	li $t0, 13977
	sw $t0, -736($fp)
	addi $t0, $fp, -108
	sw $t0, -740($fp)
	li $t0, 6
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
	li $t0, 25466
	sw $t0, -760($fp)
	addi $t0, $fp, -108
	sw $t0, -764($fp)
	li $t0, 7
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
	li $t0, 30557
	sw $t0, -784($fp)
	addi $t0, $fp, -108
	sw $t0, -788($fp)
	li $t0, 8
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
	li $t0, 3692
	sw $t0, -808($fp)
	addi $t0, $fp, -108
	sw $t0, -812($fp)
	li $t0, 9
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t0, -812($fp)
	lw $t1, -820($fp)
	add $t0, $t0, $t1
	sw $t0, -824($fp)
	lw $t0, -808($fp)
	lw $t1, -824($fp)
	sw $t0, 0($t1)
	lw $t0, -824($fp)
	lw $t1, 0($t0)
	sw $t1, -828($fp)
	li $t0, 26304
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
label460:
	li $t0, 40048
	sw $t0, -844($fp)
	lw $t0, -560($fp)
	sw $t0, -848($fp)
	lw $t0, -844($fp)
	lw $t1, -848($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -852($fp)
	li $t0, 13155
	sw $t0, -856($fp)
	lw $t0, -852($fp)
	lw $t1, -856($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -860($fp)
	li $t0, 0
	sw $t0, -864($fp)
	li $t0, 0
	sw $t0, -868($fp)
	lw $t0, -584($fp)
	sw $t0, -872($fp)
	lw $t0, -560($fp)
	sw $t0, -876($fp)
	lw $t1, -872($fp)
	lw $t2, -876($fp)
	bgt $t1, $t2, label465
	j label466
label465:
	li $t0, 1
	sw $t0, -868($fp)
label466:
	lw $t0, 16($fp)
	sw $t0, -880($fp)
	lw $t1, -868($fp)
	lw $t2, -880($fp)
	bgt $t1, $t2, label463
	j label464
label463:
	li $t0, 1
	sw $t0, -864($fp)
label464:
	li $t0, 0
	sw $t0, -884($fp)
	li $t0, 16033
	sw $t0, -888($fp)
	lw $t1, -888($fp)
	li $t2, 0
	bne $t1, $t2, label467
	j label469
label469:
	lw $t0, -512($fp)
	sw $t0, -892($fp)
	lw $t1, -892($fp)
	li $t2, 0
	bne $t1, $t2, label467
	j label468
label467:
	li $t0, 1
	sw $t0, -884($fp)
label468:
	addi $sp, $sp, -4
	lw $t0, -860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -884($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -896($fp)
	addi $sp, $sp, 16
	lw $t1, -896($fp)
	li $t2, 0
	bne $t1, $t2, label462
	j label461
label461:
	li $t0, 0
	sw $t0, -900($fp)
	li $t0, 0
	sw $t0, -904($fp)
	li $t0, 0
	sw $t0, -908($fp)
	li $t0, 39843
	sw $t0, -912($fp)
	li $t0, 33400
	sw $t0, -916($fp)
	lw $t1, -912($fp)
	lw $t2, -916($fp)
	bgt $t1, $t2, label474
	j label475
label474:
	li $t0, 1
	sw $t0, -908($fp)
label475:
	lw $t0, 12($fp)
	sw $t0, -920($fp)
	lw $t1, -908($fp)
	lw $t2, -920($fp)
	bne $t1, $t2, label472
	j label473
label472:
	li $t0, 1
	sw $t0, -904($fp)
label473:
	li $t0, 9321
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -928($fp)
	li $t0, 0
	sw $t0, -932($fp)
	li $t0, 0
	sw $t0, -936($fp)
	lw $t0, -524($fp)
	sw $t0, -940($fp)
	li $t0, 44552
	sw $t0, -944($fp)
	lw $t1, -940($fp)
	lw $t2, -944($fp)
	beq $t1, $t2, label478
	j label479
label478:
	li $t0, 1
	sw $t0, -936($fp)
label479:
	lw $t0, -584($fp)
	sw $t0, -948($fp)
	lw $t1, -936($fp)
	lw $t2, -948($fp)
	bne $t1, $t2, label476
	j label477
label476:
	li $t0, 1
	sw $t0, -932($fp)
label477:
	li $t0, 0
	sw $t0, -952($fp)
	li $t0, 11102
	sw $t0, -956($fp)
	lw $t0, -836($fp)
	sw $t0, -960($fp)
	lw $t1, -956($fp)
	lw $t2, -960($fp)
	bne $t1, $t2, label482
	j label481
label482:
	lw $t0, 16($fp)
	sw $t0, -964($fp)
	lw $t1, -964($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label481
label480:
	li $t0, 1
	sw $t0, -952($fp)
label481:
	li $t0, 0
	sw $t0, -968($fp)
	li $t0, 63051
	sw $t0, -972($fp)
	li $t0, 0
	lw $t1, -972($fp)
	sub $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $t0, -536($fp)
	sw $t0, -980($fp)
	lw $t1, -976($fp)
	lw $t2, -980($fp)
	blt $t1, $t2, label483
	j label484
label483:
	li $t0, 1
	sw $t0, -968($fp)
label484:
	addi $sp, $sp, -4
	lw $t0, -904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -968($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -984($fp)
	addi $sp, $sp, 24
	lw $t0, -836($fp)
	sw $t0, -988($fp)
	lw $t1, -984($fp)
	lw $t2, -988($fp)
	bne $t1, $t2, label470
	j label471
label470:
	li $t0, 1
	sw $t0, -900($fp)
label471:
	lw $ra, -4($fp)
	lw $v0, -900($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label460
label462:
	addi $t0, $fp, -28
	sw $t0, -992($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -1012($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -1032($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -1052($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -1072($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -1092($fp)
	li $t0, 5
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
	addi $t0, $fp, -68
	sw $t0, -1112($fp)
	li $t0, 0
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
	addi $t0, $fp, -68
	sw $t0, -1132($fp)
	li $t0, 1
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
	addi $t0, $fp, -68
	sw $t0, -1152($fp)
	li $t0, 2
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
	addi $t0, $fp, -68
	sw $t0, -1172($fp)
	li $t0, 3
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
	addi $t0, $fp, -68
	sw $t0, -1192($fp)
	li $t0, 4
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
	addi $t0, $fp, -68
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
	lw $t0, -1228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1232($fp)
	li $t0, 6
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
	addi $t0, $fp, -68
	sw $t0, -1252($fp)
	li $t0, 7
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
	addi $t0, $fp, -68
	sw $t0, -1272($fp)
	li $t0, 8
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
	addi $t0, $fp, -68
	sw $t0, -1292($fp)
	li $t0, 9
	sw $t0, -1296($fp)
	li $t0, 4
	lw $t1, -1296($fp)
	mul $t0, $t0, $t1
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	lw $t1, -1292($fp)
	add $t0, $t0, $t1
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	lw $t1, 0($t0)
	sw $t1, -1308($fp)
	lw $t0, -1308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -584($fp)
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -1344($fp)
	li $t0, 0
	sw $t0, -1348($fp)
	li $t0, 4
	lw $t1, -1348($fp)
	mul $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	lw $t1, -1344($fp)
	add $t0, $t0, $t1
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	lw $t1, 0($t0)
	sw $t1, -1360($fp)
	lw $t0, -1360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -1364($fp)
	li $t0, 1
	sw $t0, -1368($fp)
	li $t0, 4
	lw $t1, -1368($fp)
	mul $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	lw $t1, -1364($fp)
	add $t0, $t0, $t1
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	lw $t1, 0($t0)
	sw $t1, -1380($fp)
	lw $t0, -1380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -1384($fp)
	li $t0, 2
	sw $t0, -1388($fp)
	li $t0, 4
	lw $t1, -1388($fp)
	mul $t0, $t0, $t1
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	lw $t1, -1384($fp)
	add $t0, $t0, $t1
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	lw $t1, 0($t0)
	sw $t1, -1400($fp)
	lw $t0, -1400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -1404($fp)
	li $t0, 3
	sw $t0, -1408($fp)
	li $t0, 4
	lw $t1, -1408($fp)
	mul $t0, $t0, $t1
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	lw $t1, -1404($fp)
	add $t0, $t0, $t1
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	lw $t1, 0($t0)
	sw $t1, -1420($fp)
	lw $t0, -1420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -1424($fp)
	li $t0, 4
	sw $t0, -1428($fp)
	li $t0, 4
	lw $t1, -1428($fp)
	mul $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	lw $t1, -1424($fp)
	add $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	lw $t1, 0($t0)
	sw $t1, -1440($fp)
	lw $t0, -1440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -1444($fp)
	li $t0, 5
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
	addi $t0, $fp, -108
	sw $t0, -1464($fp)
	li $t0, 6
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
	addi $t0, $fp, -108
	sw $t0, -1484($fp)
	li $t0, 7
	sw $t0, -1488($fp)
	li $t0, 4
	lw $t1, -1488($fp)
	mul $t0, $t0, $t1
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	lw $t1, -1484($fp)
	add $t0, $t0, $t1
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	lw $t1, 0($t0)
	sw $t1, -1500($fp)
	lw $t0, -1500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -1504($fp)
	li $t0, 8
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
	addi $t0, $fp, -108
	sw $t0, -1524($fp)
	li $t0, 9
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
	lw $t0, -836($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1548($fp)
	addi $t0, $fp, -68
	sw $t0, -1552($fp)
	li $t0, 0
	sw $t0, -1556($fp)
	lw $t0, 12($fp)
	sw $t0, -1560($fp)
	lw $t1, -1560($fp)
	li $t2, 0
	bne $t1, $t2, label489
	j label488
label489:
	li $t0, 6646
	sw $t0, -1564($fp)
	lw $t1, -1564($fp)
	li $t2, 0
	bne $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -1556($fp)
label488:
	li $t0, 4
	lw $t1, -1556($fp)
	mul $t0, $t0, $t1
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	lw $t1, -1552($fp)
	add $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	lw $t1, 0($t0)
	sw $t1, -1576($fp)
	li $t0, 50304
	sw $t0, -1580($fp)
	li $t0, 0
	lw $t1, -1580($fp)
	sub $t0, $t0, $t1
	sw $t0, -1584($fp)
	li $t0, 5720
	sw $t0, -1588($fp)
	lw $t0, -584($fp)
	sw $t0, -1592($fp)
	lw $t0, -1588($fp)
	lw $t1, -1592($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1596($fp)
	lw $t0, -836($fp)
	sw $t0, -1600($fp)
	lw $t0, -1596($fp)
	lw $t1, -1600($fp)
	sub $t0, $t0, $t1
	sw $t0, -1604($fp)
	li $t0, 0
	sw $t0, -1608($fp)
	lw $t0, -536($fp)
	sw $t0, -1612($fp)
	lw $t1, -1612($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label493
label493:
	lw $t0, -560($fp)
	sw $t0, -1616($fp)
	lw $t1, -1616($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label492
label492:
	lw $t0, -572($fp)
	sw $t0, -1620($fp)
	lw $t1, -1620($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label491
label490:
	li $t0, 1
	sw $t0, -1608($fp)
label491:
	li $t0, 0
	sw $t0, -1624($fp)
	lw $t0, -836($fp)
	sw $t0, -1628($fp)
	lw $t1, -1628($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label495
label496:
	lw $t0, 12($fp)
	sw $t0, -1632($fp)
	lw $t1, -1632($fp)
	li $t2, 0
	bne $t1, $t2, label494
	j label495
label494:
	li $t0, 1
	sw $t0, -1624($fp)
label495:
	li $t0, 0
	sw $t0, -1636($fp)
	li $t0, 0
	sw $t0, -1640($fp)
	lw $t0, 12($fp)
	sw $t0, -1644($fp)
	lw $t1, -1644($fp)
	li $t2, 0
	bne $t1, $t2, label500
	j label499
label499:
	li $t0, 1
	sw $t0, -1640($fp)
label500:
	lw $t0, -584($fp)
	sw $t0, -1648($fp)
	lw $t1, -1640($fp)
	lw $t2, -1648($fp)
	bge $t1, $t2, label497
	j label498
label497:
	li $t0, 1
	sw $t0, -1636($fp)
label498:
	addi $sp, $sp, -4
	lw $t0, -1584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1636($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1652($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -1652($fp)
	sub $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $t0, -1576($fp)
	lw $t1, -1656($fp)
	mul $t0, $t0, $t1
	sw $t0, -1660($fp)
	li $t0, 0
	sw $t0, -1664($fp)
	li $t0, 0
	sw $t0, -1668($fp)
	li $t0, 29185
	sw $t0, -1672($fp)
	lw $t0, 4($fp)
	sw $t0, -1676($fp)
	lw $t0, -1672($fp)
	lw $t1, -1676($fp)
	sub $t0, $t0, $t1
	sw $t0, -1680($fp)
	lw $t1, -1680($fp)
	li $t2, 0
	bne $t1, $t2, label503
	j label505
label505:
	li $t0, 61837
	sw $t0, -1684($fp)
	lw $t1, -1684($fp)
	li $t2, 0
	bne $t1, $t2, label503
	j label504
label503:
	li $t0, 1
	sw $t0, -1668($fp)
label504:
	lw $t0, -572($fp)
	sw $t0, -1688($fp)
	li $t0, 0
	sw $t0, -1692($fp)
	li $t0, 55439
	sw $t0, -1696($fp)
	lw $t1, -1696($fp)
	li $t2, 0
	bne $t1, $t2, label506
	j label508
label508:
	li $t0, 17558
	sw $t0, -1700($fp)
	lw $t1, -1700($fp)
	li $t2, 0
	bne $t1, $t2, label506
	j label507
label506:
	li $t0, 1
	sw $t0, -1692($fp)
label507:
	addi $sp, $sp, -4
	lw $t0, -1668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1692($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1704($fp)
	addi $sp, $sp, 16
	lw $t1, -1704($fp)
	li $t2, 0
	bne $t1, $t2, label502
	j label501
label501:
	li $t0, 1
	sw $t0, -1664($fp)
label502:
	lw $t1, -1660($fp)
	lw $t2, -1664($fp)
	beq $t1, $t2, label485
	j label486
label485:
	li $t0, 1
	sw $t0, -1548($fp)
label486:
	lw $ra, -4($fp)
	lw $v0, -1548($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1708($fp)
	addi $t0, $fp, -108
	sw $t0, -1712($fp)
	lw $t0, -572($fp)
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
	lw $t1, -1728($fp)
	li $t2, 0
	bne $t1, $t2, label512
	j label514
label514:
	lw $t0, 12($fp)
	sw $t0, -1732($fp)
	lw $t0, -548($fp)
	sw $t0, -1736($fp)
	lw $t1, -1732($fp)
	lw $t2, -1736($fp)
	beq $t1, $t2, label512
	j label513
label512:
	li $t0, 1
	sw $t0, -1708($fp)
label513:
	lw $t0, -1708($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -1740($fp)
	lw $t1, -1740($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label510
label509:
	addi $t0, $fp, -68
	sw $t0, -1744($fp)
	li $t0, 41670
	sw $t0, -1748($fp)
	li $t0, 31501
	sw $t0, -1752($fp)
	lw $t0, -1748($fp)
	lw $t1, -1752($fp)
	mul $t0, $t0, $t1
	sw $t0, -1756($fp)
	lw $t0, -572($fp)
	sw $t0, -1760($fp)
	lw $t0, -1756($fp)
	lw $t1, -1760($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1764($fp)
	li $t0, 4
	lw $t1, -1764($fp)
	mul $t0, $t0, $t1
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	lw $t1, -1744($fp)
	add $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	lw $t1, 0($t0)
	sw $t1, -1776($fp)
	li $t0, 0
	sw $t0, -1780($fp)
	addi $t0, $fp, -28
	sw $t0, -1784($fp)
	lw $t0, 8($fp)
	sw $t0, -1788($fp)
	li $t0, 4
	lw $t1, -1788($fp)
	mul $t0, $t0, $t1
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	lw $t1, -1784($fp)
	add $t0, $t0, $t1
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	lw $t1, 0($t0)
	sw $t1, -1800($fp)
	lw $t1, -1800($fp)
	li $t2, 0
	bne $t1, $t2, label516
	j label515
label515:
	li $t0, 1
	sw $t0, -1780($fp)
label516:
	lw $t0, -1776($fp)
	lw $t1, -1780($fp)
	mul $t0, $t0, $t1
	sw $t0, -1804($fp)
	j label511
label510:
	li $t0, 0
	sw $t0, -1808($fp)
	lw $t0, -572($fp)
	sw $t0, -1812($fp)
	lw $t0, -512($fp)
	sw $t0, -1816($fp)
	lw $t0, -836($fp)
	sw $t0, -1820($fp)
	lw $t0, -1816($fp)
	lw $t1, -1820($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1824($fp)
	lw $t1, -1812($fp)
	lw $t2, -1824($fp)
	beq $t1, $t2, label517
	j label518
label517:
	li $t0, 1
	sw $t0, -1808($fp)
label518:
	lw $t0, -1808($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -1828($fp)
label511:
	addi $t0, $fp, -28
	sw $t0, -1832($fp)
	li $t0, 0
	sw $t0, -1836($fp)
	li $t0, 4
	lw $t1, -1836($fp)
	mul $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	lw $t1, -1832($fp)
	add $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	lw $t1, 0($t0)
	sw $t1, -1848($fp)
	lw $t0, -1848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
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
	lw $t0, -1868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1872($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -1892($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -1912($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -1932($fp)
	li $t0, 5
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
	addi $t0, $fp, -68
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
	lw $t0, -1968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1972($fp)
	li $t0, 1
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
	addi $t0, $fp, -68
	sw $t0, -1992($fp)
	li $t0, 2
	sw $t0, -1996($fp)
	li $t0, 4
	lw $t1, -1996($fp)
	mul $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	lw $t1, -1992($fp)
	add $t0, $t0, $t1
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	lw $t1, 0($t0)
	sw $t1, -2008($fp)
	lw $t0, -2008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -2012($fp)
	li $t0, 3
	sw $t0, -2016($fp)
	li $t0, 4
	lw $t1, -2016($fp)
	mul $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	lw $t1, -2012($fp)
	add $t0, $t0, $t1
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	lw $t1, 0($t0)
	sw $t1, -2028($fp)
	lw $t0, -2028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -2032($fp)
	li $t0, 4
	sw $t0, -2036($fp)
	li $t0, 4
	lw $t1, -2036($fp)
	mul $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	lw $t1, -2032($fp)
	add $t0, $t0, $t1
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	lw $t1, 0($t0)
	sw $t1, -2048($fp)
	lw $t0, -2048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -2052($fp)
	li $t0, 5
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
	addi $t0, $fp, -68
	sw $t0, -2072($fp)
	li $t0, 6
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
	addi $t0, $fp, -68
	sw $t0, -2092($fp)
	li $t0, 7
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
	addi $t0, $fp, -68
	sw $t0, -2112($fp)
	li $t0, 8
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
	addi $t0, $fp, -68
	sw $t0, -2132($fp)
	li $t0, 9
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
	lw $t0, -500($fp)
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -2160($fp)
	lw $t0, -2160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -2172($fp)
	lw $t0, -2172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -584($fp)
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2184($fp)
	li $t0, 0
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
	addi $t0, $fp, -108
	sw $t0, -2204($fp)
	li $t0, 1
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
	addi $t0, $fp, -108
	sw $t0, -2224($fp)
	li $t0, 2
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
	addi $t0, $fp, -108
	sw $t0, -2244($fp)
	li $t0, 3
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
	addi $t0, $fp, -108
	sw $t0, -2264($fp)
	li $t0, 4
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
	addi $t0, $fp, -108
	sw $t0, -2284($fp)
	li $t0, 5
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
	addi $t0, $fp, -108
	sw $t0, -2304($fp)
	li $t0, 6
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
	addi $t0, $fp, -108
	sw $t0, -2324($fp)
	li $t0, 7
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
	addi $t0, $fp, -108
	sw $t0, -2344($fp)
	li $t0, 8
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
	addi $t0, $fp, -108
	sw $t0, -2364($fp)
	li $t0, 9
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
	lw $t0, -836($fp)
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2388($fp)
	lw $t0, -536($fp)
	sw $t0, -2392($fp)
	li $t0, 36286
	sw $t0, -2396($fp)
	lw $t0, -2392($fp)
	lw $t1, -2396($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2400($fp)
	li $t0, 0
	sw $t0, -2404($fp)
	addi $t0, $fp, -28
	sw $t0, -2408($fp)
	li $t0, 0
	sw $t0, -2412($fp)
	li $t0, 4
	lw $t1, -2412($fp)
	mul $t0, $t0, $t1
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	lw $t1, -2408($fp)
	add $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	lw $t1, 0($t0)
	sw $t1, -2424($fp)
	li $t0, 35542
	sw $t0, -2428($fp)
	lw $t1, -2424($fp)
	lw $t2, -2428($fp)
	bne $t1, $t2, label521
	j label522
label521:
	li $t0, 1
	sw $t0, -2404($fp)
label522:
	li $t0, 0
	sw $t0, -2432($fp)
	li $t0, 9121
	sw $t0, -2436($fp)
	lw $t0, 16($fp)
	sw $t0, -2440($fp)
	lw $t0, -2436($fp)
	lw $t1, -2440($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2444($fp)
	lw $t0, 4($fp)
	sw $t0, -2448($fp)
	lw $t1, -2444($fp)
	lw $t2, -2448($fp)
	ble $t1, $t2, label523
	j label524
label523:
	li $t0, 1
	sw $t0, -2432($fp)
label524:
	lw $t0, 16($fp)
	sw $t0, -2452($fp)
	addi $sp, $sp, -4
	lw $t0, -2404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2452($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2456($fp)
	addi $sp, $sp, 16
	lw $t0, -836($fp)
	sw $t0, -2460($fp)
	li $t0, 6912
	sw $t0, -2464($fp)
	lw $t0, -2460($fp)
	lw $t1, -2464($fp)
	sub $t0, $t0, $t1
	sw $t0, -2468($fp)
	addi $sp, $sp, -4
	lw $t0, -2400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2468($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2472($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -2476($fp)
	li $t0, 50263
	sw $t0, -2480($fp)
	addi $t0, $fp, -28
	sw $t0, -2484($fp)
	lw $t0, -584($fp)
	sw $t0, -2488($fp)
	li $t0, 4
	lw $t1, -2488($fp)
	mul $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $t0, -2492($fp)
	lw $t1, -2484($fp)
	add $t0, $t0, $t1
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	lw $t1, 0($t0)
	sw $t1, -2500($fp)
	li $t0, 0
	sw $t0, -2504($fp)
	li $t0, 0
	sw $t0, -2508($fp)
	lw $t0, 20($fp)
	sw $t0, -2512($fp)
	li $t0, 15530
	sw $t0, -2516($fp)
	lw $t1, -2512($fp)
	lw $t2, -2516($fp)
	ble $t1, $t2, label529
	j label530
label529:
	li $t0, 1
	sw $t0, -2508($fp)
label530:
	li $t0, 27080
	sw $t0, -2520($fp)
	lw $t1, -2508($fp)
	lw $t2, -2520($fp)
	bgt $t1, $t2, label527
	j label528
label527:
	li $t0, 1
	sw $t0, -2504($fp)
label528:
	addi $sp, $sp, -4
	lw $t0, -2480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2504($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2524($fp)
	addi $sp, $sp, 16
	lw $t0, 16($fp)
	sw $t0, -2528($fp)
	li $t0, 40996
	sw $t0, -2532($fp)
	lw $t0, -2528($fp)
	lw $t1, -2532($fp)
	mul $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $t1, -2524($fp)
	lw $t2, -2536($fp)
	blt $t1, $t2, label525
	j label526
label525:
	li $t0, 1
	sw $t0, -2476($fp)
label526:
	lw $t1, -2472($fp)
	lw $t2, -2476($fp)
	bne $t1, $t2, label519
	j label520
label519:
	li $t0, 1
	sw $t0, -2388($fp)
label520:
	lw $ra, -4($fp)
	lw $v0, -2388($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1888
	li $t0, 57637
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	li $t0, 53955
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	li $t0, 1764
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	li $t0, 8134
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	li $t0, 28468
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	li $t0, 14919
	sw $t0, -136($fp)
	addi $t0, $fp, -32
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
	li $t0, 5649
	sw $t0, -160($fp)
	addi $t0, $fp, -32
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
	li $t0, 39570
	sw $t0, -184($fp)
	addi $t0, $fp, -32
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
	li $t0, 59471
	sw $t0, -208($fp)
	addi $t0, $fp, -32
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
	li $t0, 14970
	sw $t0, -232($fp)
	addi $t0, $fp, -32
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
	li $t0, 13877
	sw $t0, -256($fp)
	addi $t0, $fp, -32
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
	li $t0, 27335
	sw $t0, -280($fp)
	addi $t0, $fp, -32
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
	li $t0, 21617
	sw $t0, -304($fp)
	addi $t0, $fp, -72
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
	li $t0, 19597
	sw $t0, -328($fp)
	addi $t0, $fp, -72
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
	li $t0, 12104
	sw $t0, -352($fp)
	addi $t0, $fp, -72
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
	li $t0, 11520
	sw $t0, -376($fp)
	addi $t0, $fp, -72
	sw $t0, -380($fp)
	li $t0, 3
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
	li $t0, 37155
	sw $t0, -400($fp)
	addi $t0, $fp, -72
	sw $t0, -404($fp)
	li $t0, 4
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
	li $t0, 41289
	sw $t0, -424($fp)
	addi $t0, $fp, -72
	sw $t0, -428($fp)
	li $t0, 5
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
	li $t0, 7821
	sw $t0, -448($fp)
	addi $t0, $fp, -72
	sw $t0, -452($fp)
	li $t0, 6
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
	li $t0, 13289
	sw $t0, -472($fp)
	addi $t0, $fp, -72
	sw $t0, -476($fp)
	li $t0, 7
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
	li $t0, 7254
	sw $t0, -496($fp)
	addi $t0, $fp, -72
	sw $t0, -500($fp)
	li $t0, 8
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
	li $t0, 14733
	sw $t0, -520($fp)
	addi $t0, $fp, -72
	sw $t0, -524($fp)
	li $t0, 9
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
	li $t0, 22411
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	li $t0, 60386
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 57919
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -572($fp)
	li $t0, 0
	sw $t0, -576($fp)
	li $t0, 31136
	sw $t0, -580($fp)
	lw $t1, -580($fp)
	li $t2, 0
	bne $t1, $t2, label532
	j label531
label531:
	li $t0, 1
	sw $t0, -576($fp)
label532:
	li $t0, 0
	lw $t1, -576($fp)
	sub $t0, $t0, $t1
	sw $t0, -584($fp)
	li $t0, 57953
	sw $t0, -588($fp)
	lw $t0, 8($fp)
	sw $t0, -592($fp)
	li $t0, 42389
	sw $t0, -596($fp)
	lw $t0, -592($fp)
	lw $t1, -596($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -600($fp)
	li $t0, 0
	lw $t1, -600($fp)
	sub $t0, $t0, $t1
	sw $t0, -604($fp)
	addi $t0, $fp, -32
	sw $t0, -608($fp)
	lw $t0, -104($fp)
	sw $t0, -612($fp)
	li $t0, 4
	lw $t1, -612($fp)
	mul $t0, $t0, $t1
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	lw $t1, -608($fp)
	add $t0, $t0, $t1
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	lw $t1, 0($t0)
	sw $t1, -624($fp)
	addi $sp, $sp, -4
	lw $t0, -572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -624($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -628($fp)
	addi $sp, $sp, 24
	li $t0, 19497
	sw $t0, -632($fp)
	lw $t0, -628($fp)
	lw $t1, -632($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -636($fp)
	li $t0, 0
	lw $t1, -636($fp)
	sub $t0, $t0, $t1
	sw $t0, -640($fp)
	li $t0, 15864
	sw $t0, -644($fp)
	lw $t0, -640($fp)
	lw $t1, -644($fp)
	add $t0, $t0, $t1
	sw $t0, -648($fp)
	lw $t0, -80($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -116($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -128($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -672($fp)
	li $t0, 0
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
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -712($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -732($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -752($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -772($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -792($fp)
	li $t0, 6
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
	li $t0, 0
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
	li $t0, 1
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
	addi $t0, $fp, -72
	sw $t0, -852($fp)
	li $t0, 2
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
	lw $t0, -868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -872($fp)
	li $t0, 3
	sw $t0, -876($fp)
	li $t0, 4
	lw $t1, -876($fp)
	mul $t0, $t0, $t1
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	lw $t1, -872($fp)
	add $t0, $t0, $t1
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	lw $t1, 0($t0)
	sw $t1, -888($fp)
	lw $t0, -888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -892($fp)
	li $t0, 4
	sw $t0, -896($fp)
	li $t0, 4
	lw $t1, -896($fp)
	mul $t0, $t0, $t1
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	lw $t1, -892($fp)
	add $t0, $t0, $t1
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	lw $t1, 0($t0)
	sw $t1, -908($fp)
	lw $t0, -908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -912($fp)
	li $t0, 5
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
	lw $t0, -928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -932($fp)
	li $t0, 6
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
	addi $t0, $fp, -72
	sw $t0, -952($fp)
	li $t0, 7
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
	addi $t0, $fp, -72
	sw $t0, -972($fp)
	li $t0, 8
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
	addi $t0, $fp, -72
	sw $t0, -992($fp)
	li $t0, 9
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
	lw $t0, -548($fp)
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1020($fp)
	lw $t0, -116($fp)
	sw $t0, -1024($fp)
	li $t0, 0
	lw $t1, -1024($fp)
	sub $t0, $t0, $t1
	sw $t0, -1028($fp)
	li $t0, 0
	lw $t1, -1028($fp)
	sub $t0, $t0, $t1
	sw $t0, -1032($fp)
	lw $t1, -1032($fp)
	li $t2, 0
	bne $t1, $t2, label537
	j label535
label537:
	lw $t0, -92($fp)
	sw $t0, -1036($fp)
	lw $t0, 4($fp)
	sw $t0, -1040($fp)
	lw $t1, -1036($fp)
	lw $t2, -1040($fp)
	beq $t1, $t2, label536
	j label535
label536:
	li $t0, 4283
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -1048($fp)
	li $t0, 0
	sw $t0, -1052($fp)
	lw $t0, -560($fp)
	sw $t0, -1056($fp)
	lw $t1, -1056($fp)
	li $t2, 0
	bne $t1, $t2, label540
	j label539
label540:
	li $t0, 11598
	sw $t0, -1060($fp)
	lw $t1, -1060($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label539
label538:
	li $t0, 1
	sw $t0, -1052($fp)
label539:
	li $t0, 33379
	sw $t0, -1064($fp)
	lw $t0, 4($fp)
	sw $t0, -1068($fp)
	lw $t0, -1064($fp)
	lw $t1, -1068($fp)
	sub $t0, $t0, $t1
	sw $t0, -1072($fp)
	addi $sp, $sp, -4
	lw $t0, -1048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1072($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1076($fp)
	addi $sp, $sp, 16
	lw $t1, -1076($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label535
label535:
	li $t0, 0
	sw $t0, -1080($fp)
	li $t0, 35143
	sw $t0, -1084($fp)
	lw $t1, -1084($fp)
	li $t2, 0
	bne $t1, $t2, label541
	j label542
label541:
	li $t0, 1
	sw $t0, -1080($fp)
label542:
	li $t0, 0
	lw $t1, -1080($fp)
	sub $t0, $t0, $t1
	sw $t0, -1088($fp)
	lw $t1, -1088($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label534
label533:
	li $t0, 1
	sw $t0, -1020($fp)
label534:
	lw $ra, -4($fp)
	lw $v0, -1020($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 19732
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -1100($fp)
	li $t0, 32751
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	sw $t0, -1112($fp)
	li $t0, 50062
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	sw $t0, -1124($fp)
	lw $t0, -560($fp)
	sw $t0, -1128($fp)
	li $t0, 0
	sw $t0, -1132($fp)
	li $t0, 0
	sw $t0, -1136($fp)
	lw $t0, -1108($fp)
	sw $t0, -1140($fp)
	lw $t0, -1120($fp)
	sw $t0, -1144($fp)
	lw $t1, -1140($fp)
	lw $t2, -1144($fp)
	beq $t1, $t2, label547
	j label546
label547:
	lw $t0, -92($fp)
	sw $t0, -1148($fp)
	lw $t1, -1148($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label546
label545:
	li $t0, 1
	sw $t0, -1136($fp)
label546:
	li $t0, 0
	sw $t0, -1152($fp)
	li $t0, 20663
	sw $t0, -1156($fp)
	li $t0, 0
	lw $t1, -1156($fp)
	sub $t0, $t0, $t1
	sw $t0, -1160($fp)
	li $t0, 5797
	sw $t0, -1164($fp)
	lw $t1, -1160($fp)
	lw $t2, -1164($fp)
	bne $t1, $t2, label548
	j label549
label548:
	li $t0, 1
	sw $t0, -1152($fp)
label549:
	li $t0, 0
	sw $t0, -1168($fp)
	li $t0, 43997
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -1176($fp)
	li $t0, 0
	sw $t0, -1180($fp)
	lw $t0, 8($fp)
	sw $t0, -1184($fp)
	lw $t1, -1184($fp)
	li $t2, 0
	bne $t1, $t2, label555
	j label554
label555:
	li $t0, 25381
	sw $t0, -1188($fp)
	lw $t1, -1188($fp)
	li $t2, 0
	bne $t1, $t2, label552
	j label554
label554:
	li $t0, 6786
	sw $t0, -1192($fp)
	lw $t1, -1192($fp)
	li $t2, 0
	bne $t1, $t2, label552
	j label553
label552:
	li $t0, 1
	sw $t0, -1180($fp)
label553:
	addi $t0, $fp, -72
	sw $t0, -1196($fp)
	lw $t0, -104($fp)
	sw $t0, -1200($fp)
	li $t0, 4
	lw $t1, -1200($fp)
	mul $t0, $t0, $t1
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	lw $t1, -1196($fp)
	add $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	lw $t1, 0($t0)
	sw $t1, -1212($fp)
	addi $sp, $sp, -4
	lw $t0, -1176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1212($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1216($fp)
	addi $sp, $sp, 16
	lw $t1, -1216($fp)
	li $t2, 0
	bne $t1, $t2, label551
	j label550
label550:
	li $t0, 1
	sw $t0, -1168($fp)
label551:
	lw $t0, -560($fp)
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -1224($fp)
	addi $t0, $fp, -72
	sw $t0, -1228($fp)
	lw $t0, -1108($fp)
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
	lw $t0, -560($fp)
	sw $t0, -1248($fp)
	lw $t0, -1244($fp)
	lw $t1, -1248($fp)
	mul $t0, $t0, $t1
	sw $t0, -1252($fp)
	addi $sp, $sp, -4
	lw $t0, -1168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1252($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1256($fp)
	addi $sp, $sp, 16
	li $t0, 40352
	sw $t0, -1260($fp)
	lw $t0, -1256($fp)
	lw $t1, -1260($fp)
	mul $t0, $t0, $t1
	sw $t0, -1264($fp)
	addi $sp, $sp, -4
	lw $t0, -1136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1264($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1268($fp)
	addi $sp, $sp, 16
	lw $t1, -1268($fp)
	li $t2, 0
	bne $t1, $t2, label544
	j label543
label543:
	li $t0, 1
	sw $t0, -1132($fp)
label544:
	lw $t0, -1128($fp)
	lw $t1, -1132($fp)
	sub $t0, $t0, $t1
	sw $t0, -1272($fp)
	li $t0, 7953
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -1280($fp)
	li $t0, 0
	sw $t0, -1284($fp)
	li $t0, 40261
	sw $t0, -1288($fp)
	lw $t1, -1288($fp)
	li $t2, 0
	bne $t1, $t2, label558
	j label557
label558:
	li $t0, 17901
	sw $t0, -1292($fp)
	lw $t1, -1292($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label557
label556:
	li $t0, 1
	sw $t0, -1284($fp)
label557:
	lw $t0, 4($fp)
	sw $t0, -1296($fp)
	li $t0, 0
	sw $t0, -1300($fp)
	lw $t0, 8($fp)
	sw $t0, -1304($fp)
	lw $t1, -1304($fp)
	li $t2, 0
	bne $t1, $t2, label560
	j label561
label561:
	lw $t0, -92($fp)
	sw $t0, -1308($fp)
	lw $t1, -1308($fp)
	li $t2, 0
	bne $t1, $t2, label559
	j label560
label559:
	li $t0, 1
	sw $t0, -1300($fp)
label560:
	li $t0, 61969
	sw $t0, -1312($fp)
	addi $sp, $sp, -4
	lw $t0, -1280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1312($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1316($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -1316($fp)
	sub $t0, $t0, $t1
	sw $t0, -1320($fp)
label562:
	li $t0, 0
	sw $t0, -1324($fp)
	li $t0, 25170
	sw $t0, -1328($fp)
	lw $t0, -92($fp)
	sw $t0, -1332($fp)
	lw $t0, -1328($fp)
	lw $t1, -1332($fp)
	mul $t0, $t0, $t1
	sw $t0, -1336($fp)
	lw $t1, -1336($fp)
	li $t2, 0
	bne $t1, $t2, label565
	j label567
label567:
	lw $t0, -128($fp)
	sw $t0, -1340($fp)
	lw $t1, -1340($fp)
	li $t2, 0
	bne $t1, $t2, label565
	j label566
label565:
	li $t0, 1
	sw $t0, -1324($fp)
label566:
	addi $t0, $fp, -72
	sw $t0, -1344($fp)
	li $t0, 2
	sw $t0, -1348($fp)
	li $t0, 4
	lw $t1, -1348($fp)
	mul $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	lw $t1, -1344($fp)
	add $t0, $t0, $t1
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	lw $t1, 0($t0)
	sw $t1, -1360($fp)
	li $t0, 15774
	sw $t0, -1364($fp)
	lw $t0, -1360($fp)
	lw $t1, -1364($fp)
	sub $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t0, 4($fp)
	sw $t0, -1372($fp)
	addi $sp, $sp, -4
	lw $t0, -1324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1372($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1376($fp)
	addi $sp, $sp, 16
	lw $t1, -1376($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label564
label563:
	addi $t0, $fp, -72
	sw $t0, -1380($fp)
	li $t0, 0
	sw $t0, -1384($fp)
	li $t0, 0
	sw $t0, -1388($fp)
	lw $t0, -92($fp)
	sw $t0, -1392($fp)
	lw $t1, -1392($fp)
	li $t2, 0
	bne $t1, $t2, label572
	j label571
label572:
	li $t0, 7361
	sw $t0, -1396($fp)
	lw $t1, -1396($fp)
	li $t2, 0
	bne $t1, $t2, label570
	j label571
label570:
	li $t0, 1
	sw $t0, -1388($fp)
label571:
	lw $t0, -560($fp)
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -1404($fp)
	li $t0, 0
	sw $t0, -1408($fp)
	li $t0, 0
	sw $t0, -1412($fp)
	addi $t0, $fp, -72
	sw $t0, -1416($fp)
	li $t0, 3
	sw $t0, -1420($fp)
	li $t0, 4
	lw $t1, -1420($fp)
	mul $t0, $t0, $t1
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	lw $t1, -1416($fp)
	add $t0, $t0, $t1
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	lw $t1, 0($t0)
	sw $t1, -1432($fp)
	lw $t1, -1432($fp)
	li $t2, 0
	bne $t1, $t2, label578
	j label577
label578:
	li $t0, 61294
	sw $t0, -1436($fp)
	lw $t1, -1436($fp)
	li $t2, 0
	bne $t1, $t2, label576
	j label577
label576:
	li $t0, 1
	sw $t0, -1412($fp)
label577:
	li $t0, 0
	sw $t0, -1440($fp)
	lw $t0, 4($fp)
	sw $t0, -1444($fp)
	lw $t1, -1444($fp)
	li $t2, 0
	bne $t1, $t2, label580
	j label579
label579:
	li $t0, 1
	sw $t0, -1440($fp)
label580:
	li $t0, 908
	sw $t0, -1448($fp)
	lw $t0, -1440($fp)
	lw $t1, -1448($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1452($fp)
	addi $t0, $fp, -72
	sw $t0, -1456($fp)
	lw $t0, -548($fp)
	sw $t0, -1460($fp)
	li $t0, 4
	lw $t1, -1460($fp)
	mul $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	lw $t1, -1456($fp)
	add $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	lw $t1, 0($t0)
	sw $t1, -1472($fp)
	addi $sp, $sp, -4
	lw $t0, -1412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1472($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1476($fp)
	addi $sp, $sp, 16
	lw $t1, -1476($fp)
	li $t2, 0
	bne $t1, $t2, label575
	j label574
label575:
	lw $t0, -560($fp)
	sw $t0, -1480($fp)
	lw $t1, -1480($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label574
label573:
	li $t0, 1
	sw $t0, -1408($fp)
label574:
	addi $sp, $sp, -4
	lw $t0, -1388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1408($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1484($fp)
	addi $sp, $sp, 16
	li $t0, 39998
	sw $t0, -1488($fp)
	lw $t1, -1484($fp)
	lw $t2, -1488($fp)
	bne $t1, $t2, label568
	j label569
label568:
	li $t0, 1
	sw $t0, -1384($fp)
label569:
	li $t0, 4
	lw $t1, -1384($fp)
	mul $t0, $t0, $t1
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	lw $t1, -1380($fp)
	add $t0, $t0, $t1
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	lw $t1, 0($t0)
	sw $t1, -1500($fp)
	j label562
label564:
	li $t0, 26895
	sw $t0, -1504($fp)
	lw $t0, -80($fp)
	sw $t0, -1508($fp)
	lw $t0, -1504($fp)
	lw $t1, -1508($fp)
	sub $t0, $t0, $t1
	sw $t0, -1512($fp)
	lw $t1, -1512($fp)
	li $t2, 0
	bne $t1, $t2, label581
	j label582
label581:
	lw $t0, 8($fp)
	sw $t0, -1516($fp)
label582:
	lw $t0, -80($fp)
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -116($fp)
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -128($fp)
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1540($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -1560($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -1580($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -1600($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -1620($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -1640($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -1660($fp)
	li $t0, 6
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
	lw $t0, -1696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1700($fp)
	li $t0, 1
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
	addi $t0, $fp, -72
	sw $t0, -1720($fp)
	li $t0, 2
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
	addi $t0, $fp, -72
	sw $t0, -1740($fp)
	li $t0, 3
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
	addi $t0, $fp, -72
	sw $t0, -1760($fp)
	li $t0, 4
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
	addi $t0, $fp, -72
	sw $t0, -1780($fp)
	li $t0, 5
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
	addi $t0, $fp, -72
	sw $t0, -1800($fp)
	li $t0, 6
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
	addi $t0, $fp, -72
	sw $t0, -1820($fp)
	li $t0, 7
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
	addi $t0, $fp, -72
	sw $t0, -1840($fp)
	li $t0, 8
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
	addi $t0, $fp, -72
	sw $t0, -1860($fp)
	li $t0, 9
	sw $t0, -1864($fp)
	li $t0, 4
	lw $t1, -1864($fp)
	mul $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	lw $t1, -1860($fp)
	add $t0, $t0, $t1
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	lw $t1, 0($t0)
	sw $t1, -1876($fp)
	lw $t0, -1876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1888($fp)
	lw $t0, -92($fp)
	sw $t0, -1892($fp)
	lw $t1, -1892($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label584
label584:
	li $t0, 1
	sw $t0, -1888($fp)
label585:
	lw $ra, -4($fp)
	lw $v0, -1888($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -504
	li $t0, 65280
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
	li $t0, 59496
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
	li $t0, 42759
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
	li $t0, 33124
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
	li $t0, 5558
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
	li $t0, 47042
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
	li $t0, 2731
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
	li $t0, 25291
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
	li $t0, 14258
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
	li $t0, 0
	sw $t0, -260($fp)
	li $t0, 52794
	sw $t0, -264($fp)
	li $t0, 0
	lw $t1, -264($fp)
	sub $t0, $t0, $t1
	sw $t0, -268($fp)
	li $t0, 50672
	sw $t0, -272($fp)
	lw $t1, -268($fp)
	lw $t2, -272($fp)
	bne $t1, $t2, label586
	j label587
label586:
	li $t0, 1
	sw $t0, -260($fp)
label587:
	lw $t0, 4($fp)
	sw $t0, -276($fp)
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
	sw $t0, -440($fp)
	li $t0, 8
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
	li $t0, 0
	sw $t0, -460($fp)
	li $t0, 21044
	sw $t0, -464($fp)
	li $t0, 31255
	sw $t0, -468($fp)
	li $t0, 0
	lw $t1, -468($fp)
	sub $t0, $t0, $t1
	sw $t0, -472($fp)
	lw $t0, -464($fp)
	lw $t1, -472($fp)
	mul $t0, $t0, $t1
	sw $t0, -476($fp)
	addi $t0, $fp, -40
	sw $t0, -480($fp)
	lw $t0, 4($fp)
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
	lw $t0, -476($fp)
	lw $t1, -496($fp)
	sub $t0, $t0, $t1
	sw $t0, -500($fp)
	li $t0, 0
	sw $t0, -504($fp)
	lw $t0, 4($fp)
	sw $t0, -508($fp)
	lw $t1, -508($fp)
	li $t2, 0
	bne $t1, $t2, label591
	j label590
label590:
	li $t0, 1
	sw $t0, -504($fp)
label591:
	lw $t1, -500($fp)
	lw $t2, -504($fp)
	beq $t1, $t2, label588
	j label589
label588:
	li $t0, 1
	sw $t0, -460($fp)
label589:
	lw $ra, -4($fp)
	lw $v0, -460($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -524
	li $t0, 25488
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
	li $t0, 41707
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
	li $t0, 37052
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
	li $t0, 21921
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
	li $t0, 16432
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
	li $t0, 54953
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
	li $t0, 29874
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
	li $t0, 28313
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
	li $t0, 48607
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
	li $t0, 45648
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	lw $t0, -264($fp)
	sw $t0, -272($fp)
	li $t0, 0
	lw $t1, -272($fp)
	sub $t0, $t0, $t1
	sw $t0, -276($fp)
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
	sw $t0, -440($fp)
	li $t0, 8
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
	lw $t0, -264($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -464($fp)
	addi $t0, $fp, -40
	sw $t0, -468($fp)
	lw $t0, -264($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -476($fp)
	li $t0, 4
	lw $t1, -476($fp)
	mul $t0, $t0, $t1
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	lw $t1, -468($fp)
	add $t0, $t0, $t1
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	lw $t1, 0($t0)
	sw $t1, -488($fp)
	lw $t1, -488($fp)
	li $t2, 0
	bne $t1, $t2, label592
	j label594
label594:
	addi $t0, $fp, -40
	sw $t0, -492($fp)
	lw $t0, -264($fp)
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
	lw $t0, -264($fp)
	sw $t0, -512($fp)
	lw $t0, -508($fp)
	lw $t1, -512($fp)
	mul $t0, $t0, $t1
	sw $t0, -516($fp)
	lw $t1, -516($fp)
	li $t2, 0
	bne $t1, $t2, label595
	j label593
label595:
	li $t0, 53483
	sw $t0, -520($fp)
	li $t0, 1
	sw $t0, -524($fp)
	lw $t0, -520($fp)
	lw $t1, -524($fp)
	mul $t0, $t0, $t1
	sw $t0, -528($fp)
	lw $t1, -528($fp)
	li $t2, 0
	bne $t1, $t2, label592
	j label593
label592:
	li $t0, 1
	sw $t0, -464($fp)
label593:
	lw $ra, -4($fp)
	lw $v0, -464($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -52
	li $t0, 10620
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	lw $t0, -12($fp)
	sw $t0, -20($fp)
	li $t0, 0
	lw $t1, -20($fp)
	sub $t0, $t0, $t1
	sw $t0, -24($fp)
	li $t0, 0
	sw $t0, -28($fp)
	li $t0, 45274
	sw $t0, -32($fp)
	li $t0, 0
	lw $t1, -32($fp)
	sub $t0, $t0, $t1
	sw $t0, -36($fp)
	lw $t1, -36($fp)
	li $t2, 0
	bne $t1, $t2, label597
	j label596
label596:
	li $t0, 1
	sw $t0, -28($fp)
label597:
	li $t0, 0
	sw $t0, -40($fp)
	li $t0, 35528
	sw $t0, -44($fp)
	lw $t1, -44($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label599
label598:
	li $t0, 1
	sw $t0, -40($fp)
label599:
	addi $sp, $sp, -4
	lw $t0, -24($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -28($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -40($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -48($fp)
	addi $sp, $sp, 16
	lw $t0, -12($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 17981
	sw $t0, -56($fp)
	lw $ra, -4($fp)
	lw $v0, -56($fp)
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
