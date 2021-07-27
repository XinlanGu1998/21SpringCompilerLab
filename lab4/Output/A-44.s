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
	addi $sp, $sp, -1284
	li $t0, 26127
	sw $t0, -60($fp)
	addi $t0, $fp, -20
	sw $t0, -64($fp)
	li $t0, 0
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
	li $t0, 59717
	sw $t0, -84($fp)
	addi $t0, $fp, -20
	sw $t0, -88($fp)
	li $t0, 1
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
	li $t0, 10985
	sw $t0, -108($fp)
	addi $t0, $fp, -20
	sw $t0, -112($fp)
	li $t0, 2
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
	li $t0, 21531
	sw $t0, -132($fp)
	addi $t0, $fp, -20
	sw $t0, -136($fp)
	li $t0, 3
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
	li $t0, 351
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	li $t0, 5492
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	li $t0, 57667
	sw $t0, -180($fp)
	addi $t0, $fp, -56
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
	li $t0, 4771
	sw $t0, -204($fp)
	addi $t0, $fp, -56
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
	li $t0, 25487
	sw $t0, -228($fp)
	addi $t0, $fp, -56
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
	li $t0, 58575
	sw $t0, -252($fp)
	addi $t0, $fp, -56
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
	li $t0, 10402
	sw $t0, -276($fp)
	addi $t0, $fp, -56
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
	li $t0, 65398
	sw $t0, -300($fp)
	addi $t0, $fp, -56
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
	li $t0, 14369
	sw $t0, -324($fp)
	addi $t0, $fp, -56
	sw $t0, -328($fp)
	li $t0, 6
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
	li $t0, 37406
	sw $t0, -348($fp)
	addi $t0, $fp, -56
	sw $t0, -352($fp)
	li $t0, 7
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
	li $t0, 48967
	sw $t0, -372($fp)
	addi $t0, $fp, -56
	sw $t0, -376($fp)
	li $t0, 8
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
	li $t0, 5102
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	li $t0, 64569
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	li $t0, 11546
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	li $t0, 26553
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	li $t0, 34318
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	lw $t0, -412($fp)
	sw $t0, -456($fp)
	addi $t0, $fp, -20
	sw $t0, -460($fp)
	lw $t0, -448($fp)
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
	lw $t1, -456($fp)
	lw $t2, -476($fp)
	beq $t1, $t2, label121
	j label122
label121:
label124:
	li $t0, 25257
	sw $t0, -480($fp)
	li $t0, 0
	sw $t0, -484($fp)
	li $t0, 47494
	sw $t0, -488($fp)
	li $t0, 45115
	sw $t0, -492($fp)
	lw $t1, -488($fp)
	lw $t2, -492($fp)
	bne $t1, $t2, label128
	j label129
label128:
	li $t0, 1
	sw $t0, -484($fp)
label129:
	li $t0, 0
	sw $t0, -496($fp)
	li $t0, 36149
	sw $t0, -500($fp)
	li $t0, 0
	lw $t1, -500($fp)
	sub $t0, $t0, $t1
	sw $t0, -504($fp)
	li $t0, 9096
	sw $t0, -508($fp)
	lw $t1, -504($fp)
	lw $t2, -508($fp)
	beq $t1, $t2, label130
	j label131
label130:
	li $t0, 1
	sw $t0, -496($fp)
label131:
	li $t0, 65411
	sw $t0, -512($fp)
	lw $t0, 4($fp)
	sw $t0, -516($fp)
	lw $t0, -512($fp)
	lw $t1, -516($fp)
	sub $t0, $t0, $t1
	sw $t0, -520($fp)
	li $t0, 60351
	sw $t0, -524($fp)
	lw $t0, -520($fp)
	lw $t1, -524($fp)
	add $t0, $t0, $t1
	sw $t0, -528($fp)
	lw $t0, -424($fp)
	sw $t0, -532($fp)
	li $t0, 0
	lw $t1, -532($fp)
	sub $t0, $t0, $t1
	sw $t0, -536($fp)
	lw $t0, -436($fp)
	sw $t0, -540($fp)
	lw $t0, -536($fp)
	lw $t1, -540($fp)
	sub $t0, $t0, $t1
	sw $t0, -544($fp)
	li $t0, 0
	sw $t0, -548($fp)
	li $t0, 13016
	sw $t0, -552($fp)
	li $t0, 0
	lw $t1, -552($fp)
	sub $t0, $t0, $t1
	sw $t0, -556($fp)
	lw $t1, -556($fp)
	li $t2, 0
	bne $t1, $t2, label133
	j label132
label132:
	li $t0, 1
	sw $t0, -548($fp)
label133:
	addi $sp, $sp, -4
	lw $t0, -484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -548($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -560($fp)
	addi $sp, $sp, 24
	lw $t0, -480($fp)
	lw $t1, -560($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -564($fp)
	li $t0, 26356
	sw $t0, -568($fp)
	lw $t0, -564($fp)
	lw $t1, -568($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -572($fp)
	lw $t1, -572($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label127
label127:
	addi $t0, $fp, -20
	sw $t0, -576($fp)
	lw $t0, -400($fp)
	sw $t0, -580($fp)
	li $t0, 4
	lw $t1, -580($fp)
	mul $t0, $t0, $t1
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	lw $t1, -576($fp)
	add $t0, $t0, $t1
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	lw $t1, 0($t0)
	sw $t1, -592($fp)
	lw $t1, -592($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label126
label134:
	li $t0, 50632
	sw $t0, -596($fp)
	li $t0, 1
	sw $t0, -600($fp)
	lw $t0, -596($fp)
	lw $t1, -600($fp)
	mul $t0, $t0, $t1
	sw $t0, -604($fp)
	lw $t1, -604($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label126
label125:
label135:
	li $t0, 0
	sw $t0, -608($fp)
	li $t0, 0
	sw $t0, -612($fp)
	lw $t0, -412($fp)
	sw $t0, -616($fp)
	lw $t1, -616($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label141
label140:
	li $t0, 1
	sw $t0, -612($fp)
label141:
	li $t0, 0
	sw $t0, -620($fp)
	li $t0, 202
	sw $t0, -624($fp)
	lw $t1, -624($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label143
label145:
	li $t0, 8478
	sw $t0, -628($fp)
	lw $t1, -628($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label143
label144:
	lw $t0, 16($fp)
	sw $t0, -632($fp)
	lw $t1, -632($fp)
	li $t2, 0
	bne $t1, $t2, label142
	j label143
label142:
	li $t0, 1
	sw $t0, -620($fp)
label143:
	li $t0, 52483
	sw $t0, -636($fp)
	li $t0, 44813
	sw $t0, -640($fp)
	lw $t0, -636($fp)
	lw $t1, -640($fp)
	sub $t0, $t0, $t1
	sw $t0, -644($fp)
	lw $t0, 12($fp)
	sw $t0, -648($fp)
	lw $t0, -644($fp)
	lw $t1, -648($fp)
	sub $t0, $t0, $t1
	sw $t0, -652($fp)
	lw $t0, 8($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -660($fp)
	lw $t0, 4($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -668($fp)
	addi $sp, $sp, -4
	lw $t0, -612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -668($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -672($fp)
	addi $sp, $sp, 24
	lw $t1, -672($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label138
label138:
	li $t0, 1
	sw $t0, -608($fp)
label139:
	li $t0, 0
	sw $t0, -676($fp)
	lw $t0, 4($fp)
	sw $t0, -680($fp)
	lw $t1, -680($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label146
label146:
	li $t0, 1
	sw $t0, -676($fp)
label147:
	lw $t0, -608($fp)
	lw $t1, -676($fp)
	add $t0, $t0, $t1
	sw $t0, -684($fp)
	lw $t1, -684($fp)
	li $t2, 0
	bne $t1, $t2, label136
	j label137
label136:
	lw $t0, -424($fp)
	sw $t0, -688($fp)
	j label135
label137:
	j label124
label126:
label122:
	li $t0, 0
	sw $t0, -692($fp)
	li $t0, 45164
	sw $t0, -696($fp)
	lw $t1, -696($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label149
label148:
	li $t0, 1
	sw $t0, -692($fp)
label149:
label150:
	li $t0, 0
	sw $t0, -700($fp)
	lw $t0, -424($fp)
	sw $t0, -704($fp)
	li $t0, 0
	lw $t1, -704($fp)
	sub $t0, $t0, $t1
	sw $t0, -708($fp)
	li $t0, 0
	lw $t1, -708($fp)
	sub $t0, $t0, $t1
	sw $t0, -712($fp)
	lw $t1, -712($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label153
label153:
	li $t0, 1
	sw $t0, -700($fp)
label154:
	li $t0, 0
	lw $t1, -700($fp)
	sub $t0, $t0, $t1
	sw $t0, -716($fp)
	li $t0, 0
	lw $t1, -716($fp)
	sub $t0, $t0, $t1
	sw $t0, -720($fp)
	lw $t1, -720($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label152
label151:
	li $t0, 0
	sw $t0, -724($fp)
	li $t0, 59185
	sw $t0, -728($fp)
	li $t0, 60338
	sw $t0, -732($fp)
	lw $t1, -728($fp)
	lw $t2, -732($fp)
	ble $t1, $t2, label158
	j label160
label160:
	li $t0, 31045
	sw $t0, -736($fp)
	lw $t1, -736($fp)
	li $t2, 0
	bne $t1, $t2, label158
	j label159
label158:
	li $t0, 1
	sw $t0, -724($fp)
label159:
	li $t0, 0
	sw $t0, -740($fp)
	li $t0, 0
	sw $t0, -744($fp)
	lw $t0, 8($fp)
	sw $t0, -748($fp)
	lw $t1, -748($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label163
label163:
	li $t0, 1
	sw $t0, -744($fp)
label164:
	lw $t0, -436($fp)
	sw $t0, -752($fp)
	lw $t1, -744($fp)
	lw $t2, -752($fp)
	bge $t1, $t2, label161
	j label162
label161:
	li $t0, 1
	sw $t0, -740($fp)
label162:
	lw $t0, 4($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -760($fp)
	li $t0, 0
	sw $t0, -764($fp)
	lw $t0, -448($fp)
	sw $t0, -768($fp)
	li $t0, 49936
	sw $t0, -772($fp)
	lw $t1, -768($fp)
	lw $t2, -772($fp)
	blt $t1, $t2, label167
	j label166
label167:
	li $t0, 31182
	sw $t0, -776($fp)
	lw $t1, -776($fp)
	li $t2, 0
	bne $t1, $t2, label165
	j label166
label165:
	li $t0, 1
	sw $t0, -764($fp)
label166:
	li $t0, 5695
	sw $t0, -780($fp)
	li $t0, 610
	sw $t0, -784($fp)
	lw $t0, -780($fp)
	lw $t1, -784($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -788($fp)
	lw $t0, -424($fp)
	sw $t0, -792($fp)
	lw $t0, -788($fp)
	lw $t1, -792($fp)
	add $t0, $t0, $t1
	sw $t0, -796($fp)
	addi $sp, $sp, -4
	lw $t0, -724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -796($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -800($fp)
	addi $sp, $sp, 24
	li $t0, 8018
	sw $t0, -804($fp)
	lw $t0, -800($fp)
	lw $t1, -804($fp)
	add $t0, $t0, $t1
	sw $t0, -808($fp)
	lw $t1, -808($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label156
label155:
	li $t0, 0
	sw $t0, -812($fp)
	li $t0, 32208
	sw $t0, -816($fp)
	lw $t1, -816($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label170
label170:
	li $t0, 0
	sw $t0, -820($fp)
	lw $t0, 4($fp)
	sw $t0, -824($fp)
	li $t0, 0
	lw $t1, -824($fp)
	sub $t0, $t0, $t1
	sw $t0, -828($fp)
	li $t0, 14476
	sw $t0, -832($fp)
	lw $t1, -828($fp)
	lw $t2, -832($fp)
	bgt $t1, $t2, label171
	j label172
label171:
	li $t0, 1
	sw $t0, -820($fp)
label172:
	lw $t0, -424($fp)
	sw $t0, -836($fp)
	lw $t1, -820($fp)
	lw $t2, -836($fp)
	blt $t1, $t2, label168
	j label169
label168:
	li $t0, 1
	sw $t0, -812($fp)
label169:
	j label157
label156:
	addi $t0, $fp, -20
	sw $t0, -840($fp)
	li $t0, 0
	sw $t0, -844($fp)
	li $t0, 26022
	sw $t0, -848($fp)
	lw $t0, -172($fp)
	sw $t0, -852($fp)
	lw $t0, -848($fp)
	lw $t1, -852($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -856($fp)
	lw $t0, 16($fp)
	sw $t0, -860($fp)
	lw $t1, -856($fp)
	lw $t2, -860($fp)
	bge $t1, $t2, label173
	j label174
label173:
	li $t0, 1
	sw $t0, -844($fp)
label174:
	li $t0, 31241
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -868($fp)
	addi $t0, $fp, -20
	sw $t0, -872($fp)
	lw $t0, 16($fp)
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
	addi $t0, $fp, -56
	sw $t0, -892($fp)
	lw $t0, -436($fp)
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
	li $t0, 0
	sw $t0, -912($fp)
	lw $t0, 20($fp)
	sw $t0, -916($fp)
	lw $t1, -916($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label178
label178:
	li $t0, 13121
	sw $t0, -920($fp)
	lw $t1, -920($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label177
label177:
	lw $t0, 4($fp)
	sw $t0, -924($fp)
	lw $t1, -924($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label176
label175:
	li $t0, 1
	sw $t0, -912($fp)
label176:
	addi $sp, $sp, -4
	lw $t0, -844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -912($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -928($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -932($fp)
	lw $t0, 16($fp)
	sw $t0, -936($fp)
	lw $t1, -936($fp)
	li $t2, 0
	bne $t1, $t2, label180
	j label179
label179:
	li $t0, 1
	sw $t0, -932($fp)
label180:
	lw $t0, -928($fp)
	lw $t1, -932($fp)
	mul $t0, $t0, $t1
	sw $t0, -940($fp)
	li $t0, 4
	lw $t1, -940($fp)
	mul $t0, $t0, $t1
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	lw $t1, -840($fp)
	add $t0, $t0, $t1
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	lw $t1, 0($t0)
	sw $t1, -952($fp)
label157:
	j label150
label152:
	addi $t0, $fp, -20
	sw $t0, -956($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
	sw $t0, -976($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -996($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -1016($fp)
	li $t0, 3
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
	lw $t0, -160($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -172($fp)
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1044($fp)
	li $t0, 0
	sw $t0, -1048($fp)
	li $t0, 4
	lw $t1, -1048($fp)
	mul $t0, $t0, $t1
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	lw $t1, -1044($fp)
	add $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	lw $t1, 0($t0)
	sw $t1, -1060($fp)
	lw $t0, -1060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1064($fp)
	li $t0, 1
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
	addi $t0, $fp, -56
	sw $t0, -1084($fp)
	li $t0, 2
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
	addi $t0, $fp, -56
	sw $t0, -1104($fp)
	li $t0, 3
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
	addi $t0, $fp, -56
	sw $t0, -1124($fp)
	li $t0, 4
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
	addi $t0, $fp, -56
	sw $t0, -1144($fp)
	li $t0, 5
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
	addi $t0, $fp, -56
	sw $t0, -1164($fp)
	li $t0, 6
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
	addi $t0, $fp, -56
	sw $t0, -1184($fp)
	li $t0, 7
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
	addi $t0, $fp, -56
	sw $t0, -1204($fp)
	li $t0, 8
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
	lw $t0, -1220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -400($fp)
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -412($fp)
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -424($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -436($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -448($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1244($fp)
	lw $t0, 4($fp)
	sw $t0, -1248($fp)
	lw $t1, -1248($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label181
label181:
	li $t0, 1
	sw $t0, -1244($fp)
label182:
	li $t0, 0
	sw $t0, -1252($fp)
	addi $t0, $fp, -20
	sw $t0, -1256($fp)
	li $t0, 0
	sw $t0, -1260($fp)
	li $t0, 4
	lw $t1, -1260($fp)
	mul $t0, $t0, $t1
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	lw $t1, -1256($fp)
	add $t0, $t0, $t1
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	lw $t1, 0($t0)
	sw $t1, -1272($fp)
	lw $t1, -1272($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label183
label183:
	li $t0, 1
	sw $t0, -1252($fp)
label184:
	lw $t0, -1244($fp)
	lw $t1, -1252($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1276($fp)
	li $t0, 0
	sw $t0, -1280($fp)
	lw $t0, 16($fp)
	sw $t0, -1284($fp)
	lw $t1, -1284($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label185
label185:
	li $t0, 1
	sw $t0, -1280($fp)
label186:
	lw $t0, -1276($fp)
	lw $t1, -1280($fp)
	mul $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $ra, -4($fp)
	lw $v0, -1288($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -456
	li $t0, 51280
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
	li $t0, 52691
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
	li $t0, 65435
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
	li $t0, 46095
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
	li $t0, 23304
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
	li $t0, 8995
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
	li $t0, 28054
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
	li $t0, 2883
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
	li $t0, 35351
	sw $t0, -232($fp)
	li $t0, 0
	lw $t1, -232($fp)
	sub $t0, $t0, $t1
	sw $t0, -236($fp)
	li $t0, 0
	sw $t0, -240($fp)
	lw $t0, 8($fp)
	sw $t0, -244($fp)
	lw $t0, 8($fp)
	sw $t0, -248($fp)
	lw $t0, -244($fp)
	lw $t1, -248($fp)
	add $t0, $t0, $t1
	sw $t0, -252($fp)
	lw $t0, 8($fp)
	sw $t0, -256($fp)
	lw $t0, -252($fp)
	lw $t1, -256($fp)
	sub $t0, $t0, $t1
	sw $t0, -260($fp)
	lw $t1, -260($fp)
	li $t2, 0
	bne $t1, $t2, label189
	j label188
label189:
	addi $t0, $fp, -36
	sw $t0, -264($fp)
	lw $t0, 8($fp)
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
	lw $t1, -280($fp)
	li $t2, 0
	bne $t1, $t2, label187
	j label188
label187:
	li $t0, 1
	sw $t0, -240($fp)
label188:
	lw $t0, -240($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -284($fp)
	li $t0, 13150
	sw $t0, -288($fp)
	addi $t0, $fp, -36
	sw $t0, -292($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -312($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -332($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -352($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -372($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -392($fp)
	li $t0, 5
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
	addi $t0, $fp, -36
	sw $t0, -412($fp)
	li $t0, 6
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
	addi $t0, $fp, -36
	sw $t0, -432($fp)
	li $t0, 7
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
	lw $t0, 8($fp)
	sw $t0, -452($fp)
	lw $t0, 4($fp)
	sw $t0, -456($fp)
	lw $t0, -452($fp)
	lw $t1, -456($fp)
	add $t0, $t0, $t1
	sw $t0, -460($fp)
	lw $ra, -4($fp)
	lw $v0, -460($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -6072
	li $t0, 57637
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	li $t0, 22298
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	li $t0, 57963
	sw $t0, -244($fp)
	addi $t0, $fp, -16
	sw $t0, -248($fp)
	li $t0, 0
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
	li $t0, 57839
	sw $t0, -268($fp)
	addi $t0, $fp, -16
	sw $t0, -272($fp)
	li $t0, 1
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
	li $t0, 30777
	sw $t0, -292($fp)
	addi $t0, $fp, -16
	sw $t0, -296($fp)
	li $t0, 2
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
	li $t0, 37592
	sw $t0, -316($fp)
	addi $t0, $fp, -56
	sw $t0, -320($fp)
	li $t0, 0
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
	li $t0, 63534
	sw $t0, -340($fp)
	addi $t0, $fp, -56
	sw $t0, -344($fp)
	li $t0, 1
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
	li $t0, 31387
	sw $t0, -364($fp)
	addi $t0, $fp, -56
	sw $t0, -368($fp)
	li $t0, 2
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
	li $t0, 21992
	sw $t0, -388($fp)
	addi $t0, $fp, -56
	sw $t0, -392($fp)
	li $t0, 3
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
	li $t0, 29181
	sw $t0, -412($fp)
	addi $t0, $fp, -56
	sw $t0, -416($fp)
	li $t0, 4
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
	li $t0, 25036
	sw $t0, -436($fp)
	addi $t0, $fp, -56
	sw $t0, -440($fp)
	li $t0, 5
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
	li $t0, 16794
	sw $t0, -460($fp)
	addi $t0, $fp, -56
	sw $t0, -464($fp)
	li $t0, 6
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
	li $t0, 60226
	sw $t0, -484($fp)
	addi $t0, $fp, -56
	sw $t0, -488($fp)
	li $t0, 7
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
	li $t0, 33054
	sw $t0, -508($fp)
	addi $t0, $fp, -56
	sw $t0, -512($fp)
	li $t0, 8
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
	li $t0, 49003
	sw $t0, -532($fp)
	addi $t0, $fp, -56
	sw $t0, -536($fp)
	li $t0, 9
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
	li $t0, 9166
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 46175
	sw $t0, -568($fp)
	addi $t0, $fp, -96
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
	li $t0, 14708
	sw $t0, -592($fp)
	addi $t0, $fp, -96
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
	li $t0, 35188
	sw $t0, -616($fp)
	addi $t0, $fp, -96
	sw $t0, -620($fp)
	li $t0, 2
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
	li $t0, 20314
	sw $t0, -640($fp)
	addi $t0, $fp, -96
	sw $t0, -644($fp)
	li $t0, 3
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
	li $t0, 14732
	sw $t0, -664($fp)
	addi $t0, $fp, -96
	sw $t0, -668($fp)
	li $t0, 4
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
	li $t0, 20932
	sw $t0, -688($fp)
	addi $t0, $fp, -96
	sw $t0, -692($fp)
	li $t0, 5
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
	li $t0, 7469
	sw $t0, -712($fp)
	addi $t0, $fp, -96
	sw $t0, -716($fp)
	li $t0, 6
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
	li $t0, 14632
	sw $t0, -736($fp)
	addi $t0, $fp, -96
	sw $t0, -740($fp)
	li $t0, 7
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
	li $t0, 1492
	sw $t0, -760($fp)
	addi $t0, $fp, -96
	sw $t0, -764($fp)
	li $t0, 8
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
	li $t0, 30773
	sw $t0, -784($fp)
	addi $t0, $fp, -96
	sw $t0, -788($fp)
	li $t0, 9
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
	li $t0, 23627
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	li $t0, 29546
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	li $t0, 33656
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	li $t0, 58979
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	li $t0, 42696
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	li $t0, 25757
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -876($fp)
	li $t0, 15741
	sw $t0, -880($fp)
	addi $t0, $fp, -124
	sw $t0, -884($fp)
	li $t0, 0
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -892($fp)
	lw $t0, -884($fp)
	lw $t1, -892($fp)
	add $t0, $t0, $t1
	sw $t0, -896($fp)
	lw $t0, -880($fp)
	lw $t1, -896($fp)
	sw $t0, 0($t1)
	lw $t0, -896($fp)
	lw $t1, 0($t0)
	sw $t1, -900($fp)
	li $t0, 35123
	sw $t0, -904($fp)
	addi $t0, $fp, -124
	sw $t0, -908($fp)
	li $t0, 1
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -916($fp)
	lw $t0, -908($fp)
	lw $t1, -916($fp)
	add $t0, $t0, $t1
	sw $t0, -920($fp)
	lw $t0, -904($fp)
	lw $t1, -920($fp)
	sw $t0, 0($t1)
	lw $t0, -920($fp)
	lw $t1, 0($t0)
	sw $t1, -924($fp)
	li $t0, 18061
	sw $t0, -928($fp)
	addi $t0, $fp, -124
	sw $t0, -932($fp)
	li $t0, 2
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -940($fp)
	lw $t0, -932($fp)
	lw $t1, -940($fp)
	add $t0, $t0, $t1
	sw $t0, -944($fp)
	lw $t0, -928($fp)
	lw $t1, -944($fp)
	sw $t0, 0($t1)
	lw $t0, -944($fp)
	lw $t1, 0($t0)
	sw $t1, -948($fp)
	li $t0, 46518
	sw $t0, -952($fp)
	addi $t0, $fp, -124
	sw $t0, -956($fp)
	li $t0, 3
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -964($fp)
	lw $t0, -956($fp)
	lw $t1, -964($fp)
	add $t0, $t0, $t1
	sw $t0, -968($fp)
	lw $t0, -952($fp)
	lw $t1, -968($fp)
	sw $t0, 0($t1)
	lw $t0, -968($fp)
	lw $t1, 0($t0)
	sw $t1, -972($fp)
	li $t0, 7179
	sw $t0, -976($fp)
	addi $t0, $fp, -124
	sw $t0, -980($fp)
	li $t0, 4
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -988($fp)
	lw $t0, -980($fp)
	lw $t1, -988($fp)
	add $t0, $t0, $t1
	sw $t0, -992($fp)
	lw $t0, -976($fp)
	lw $t1, -992($fp)
	sw $t0, 0($t1)
	lw $t0, -992($fp)
	lw $t1, 0($t0)
	sw $t1, -996($fp)
	li $t0, 16059
	sw $t0, -1000($fp)
	addi $t0, $fp, -124
	sw $t0, -1004($fp)
	li $t0, 5
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
	li $t0, 12369
	sw $t0, -1024($fp)
	addi $t0, $fp, -124
	sw $t0, -1028($fp)
	li $t0, 6
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
	li $t0, 29171
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1056($fp)
	li $t0, 45240
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -1068($fp)
	li $t0, 37405
	sw $t0, -1072($fp)
	addi $t0, $fp, -140
	sw $t0, -1076($fp)
	li $t0, 0
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
	li $t0, 45966
	sw $t0, -1096($fp)
	addi $t0, $fp, -140
	sw $t0, -1100($fp)
	li $t0, 1
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
	li $t0, 39930
	sw $t0, -1120($fp)
	addi $t0, $fp, -140
	sw $t0, -1124($fp)
	li $t0, 2
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
	li $t0, 4924
	sw $t0, -1144($fp)
	addi $t0, $fp, -140
	sw $t0, -1148($fp)
	li $t0, 3
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1156($fp)
	lw $t0, -1148($fp)
	lw $t1, -1156($fp)
	add $t0, $t0, $t1
	sw $t0, -1160($fp)
	lw $t0, -1144($fp)
	lw $t1, -1160($fp)
	sw $t0, 0($t1)
	lw $t0, -1160($fp)
	lw $t1, 0($t0)
	sw $t1, -1164($fp)
	li $t0, 29433
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -1176($fp)
	li $t0, 49096
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -1188($fp)
	li $t0, 51099
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -1200($fp)
	li $t0, 44141
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -1212($fp)
	li $t0, 18749
	sw $t0, -1216($fp)
	addi $t0, $fp, -176
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
	li $t0, 5877
	sw $t0, -1240($fp)
	addi $t0, $fp, -176
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
	li $t0, 58874
	sw $t0, -1264($fp)
	addi $t0, $fp, -176
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
	li $t0, 39681
	sw $t0, -1288($fp)
	addi $t0, $fp, -176
	sw $t0, -1292($fp)
	li $t0, 3
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
	li $t0, 13346
	sw $t0, -1312($fp)
	addi $t0, $fp, -176
	sw $t0, -1316($fp)
	li $t0, 4
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
	li $t0, 7970
	sw $t0, -1336($fp)
	addi $t0, $fp, -176
	sw $t0, -1340($fp)
	li $t0, 5
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
	li $t0, 41173
	sw $t0, -1360($fp)
	addi $t0, $fp, -176
	sw $t0, -1364($fp)
	li $t0, 6
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
	li $t0, 44119
	sw $t0, -1384($fp)
	addi $t0, $fp, -176
	sw $t0, -1388($fp)
	li $t0, 7
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
	li $t0, 31597
	sw $t0, -1408($fp)
	addi $t0, $fp, -176
	sw $t0, -1412($fp)
	li $t0, 8
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
	li $t0, 5183
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -1440($fp)
	li $t0, 12240
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1452($fp)
	li $t0, 25040
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -1464($fp)
	li $t0, 47879
	sw $t0, -1468($fp)
	addi $t0, $fp, -208
	sw $t0, -1472($fp)
	li $t0, 0
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
	li $t0, 37997
	sw $t0, -1492($fp)
	addi $t0, $fp, -208
	sw $t0, -1496($fp)
	li $t0, 1
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1504($fp)
	lw $t0, -1496($fp)
	lw $t1, -1504($fp)
	add $t0, $t0, $t1
	sw $t0, -1508($fp)
	lw $t0, -1492($fp)
	lw $t1, -1508($fp)
	sw $t0, 0($t1)
	lw $t0, -1508($fp)
	lw $t1, 0($t0)
	sw $t1, -1512($fp)
	li $t0, 40782
	sw $t0, -1516($fp)
	addi $t0, $fp, -208
	sw $t0, -1520($fp)
	li $t0, 2
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1528($fp)
	lw $t0, -1520($fp)
	lw $t1, -1528($fp)
	add $t0, $t0, $t1
	sw $t0, -1532($fp)
	lw $t0, -1516($fp)
	lw $t1, -1532($fp)
	sw $t0, 0($t1)
	lw $t0, -1532($fp)
	lw $t1, 0($t0)
	sw $t1, -1536($fp)
	li $t0, 17467
	sw $t0, -1540($fp)
	addi $t0, $fp, -208
	sw $t0, -1544($fp)
	li $t0, 3
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1552($fp)
	lw $t0, -1544($fp)
	lw $t1, -1552($fp)
	add $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $t0, -1540($fp)
	lw $t1, -1556($fp)
	sw $t0, 0($t1)
	lw $t0, -1556($fp)
	lw $t1, 0($t0)
	sw $t1, -1560($fp)
	li $t0, 56058
	sw $t0, -1564($fp)
	addi $t0, $fp, -208
	sw $t0, -1568($fp)
	li $t0, 4
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
	li $t0, 21764
	sw $t0, -1588($fp)
	addi $t0, $fp, -208
	sw $t0, -1592($fp)
	li $t0, 5
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
	li $t0, 24646
	sw $t0, -1612($fp)
	addi $t0, $fp, -208
	sw $t0, -1616($fp)
	li $t0, 6
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
	li $t0, 6582
	sw $t0, -1636($fp)
	addi $t0, $fp, -208
	sw $t0, -1640($fp)
	li $t0, 7
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
	li $t0, 34134
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	sw $t0, -1668($fp)
	li $t0, 53818
	sw $t0, -1672($fp)
	addi $t0, $fp, -216
	sw $t0, -1676($fp)
	li $t0, 0
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1684($fp)
	lw $t0, -1676($fp)
	lw $t1, -1684($fp)
	add $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t0, -1672($fp)
	lw $t1, -1688($fp)
	sw $t0, 0($t1)
	lw $t0, -1688($fp)
	lw $t1, 0($t0)
	sw $t1, -1692($fp)
	li $t0, 51822
	sw $t0, -1696($fp)
	addi $t0, $fp, -216
	sw $t0, -1700($fp)
	li $t0, 1
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $t0, -1700($fp)
	lw $t1, -1708($fp)
	add $t0, $t0, $t1
	sw $t0, -1712($fp)
	lw $t0, -1696($fp)
	lw $t1, -1712($fp)
	sw $t0, 0($t1)
	lw $t0, -1712($fp)
	lw $t1, 0($t0)
	sw $t1, -1716($fp)
	lw $t0, -224($fp)
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -236($fp)
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -1728($fp)
	li $t0, 0
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
	addi $t0, $fp, -16
	sw $t0, -1748($fp)
	li $t0, 1
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
	addi $t0, $fp, -16
	sw $t0, -1768($fp)
	li $t0, 2
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
	addi $t0, $fp, -56
	sw $t0, -1788($fp)
	li $t0, 0
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
	addi $t0, $fp, -56
	sw $t0, -1808($fp)
	li $t0, 1
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
	addi $t0, $fp, -56
	sw $t0, -1828($fp)
	li $t0, 2
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
	addi $t0, $fp, -56
	sw $t0, -1848($fp)
	li $t0, 3
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
	addi $t0, $fp, -56
	sw $t0, -1868($fp)
	li $t0, 4
	sw $t0, -1872($fp)
	li $t0, 4
	lw $t1, -1872($fp)
	mul $t0, $t0, $t1
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	lw $t1, -1868($fp)
	add $t0, $t0, $t1
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	lw $t1, 0($t0)
	sw $t1, -1884($fp)
	lw $t0, -1884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1888($fp)
	li $t0, 5
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
	addi $t0, $fp, -56
	sw $t0, -1908($fp)
	li $t0, 6
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
	addi $t0, $fp, -56
	sw $t0, -1928($fp)
	li $t0, 7
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
	addi $t0, $fp, -56
	sw $t0, -1948($fp)
	li $t0, 8
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
	addi $t0, $fp, -56
	sw $t0, -1968($fp)
	li $t0, 9
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
	lw $t0, -560($fp)
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -1992($fp)
	li $t0, 0
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
	addi $t0, $fp, -96
	sw $t0, -2012($fp)
	li $t0, 1
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
	addi $t0, $fp, -96
	sw $t0, -2032($fp)
	li $t0, 2
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
	addi $t0, $fp, -96
	sw $t0, -2052($fp)
	li $t0, 3
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
	addi $t0, $fp, -96
	sw $t0, -2072($fp)
	li $t0, 4
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
	addi $t0, $fp, -96
	sw $t0, -2092($fp)
	li $t0, 5
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
	addi $t0, $fp, -96
	sw $t0, -2112($fp)
	li $t0, 6
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
	addi $t0, $fp, -96
	sw $t0, -2132($fp)
	li $t0, 7
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
	addi $t0, $fp, -96
	sw $t0, -2152($fp)
	li $t0, 8
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
	addi $t0, $fp, -96
	sw $t0, -2172($fp)
	li $t0, 9
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
	lw $t0, -812($fp)
	sw $t0, -2192($fp)
	lw $t0, -2192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -824($fp)
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -836($fp)
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -848($fp)
	sw $t0, -2204($fp)
	lw $t0, -2204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -860($fp)
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -872($fp)
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -2216($fp)
	li $t0, 0
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
	addi $t0, $fp, -124
	sw $t0, -2236($fp)
	li $t0, 1
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
	addi $t0, $fp, -124
	sw $t0, -2256($fp)
	li $t0, 2
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
	addi $t0, $fp, -124
	sw $t0, -2276($fp)
	li $t0, 3
	sw $t0, -2280($fp)
	li $t0, 4
	lw $t1, -2280($fp)
	mul $t0, $t0, $t1
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	lw $t1, -2276($fp)
	add $t0, $t0, $t1
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	lw $t1, 0($t0)
	sw $t1, -2292($fp)
	lw $t0, -2292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -2296($fp)
	li $t0, 4
	sw $t0, -2300($fp)
	li $t0, 4
	lw $t1, -2300($fp)
	mul $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $t0, -2304($fp)
	lw $t1, -2296($fp)
	add $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $t0, -2308($fp)
	lw $t1, 0($t0)
	sw $t1, -2312($fp)
	lw $t0, -2312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -2316($fp)
	li $t0, 5
	sw $t0, -2320($fp)
	li $t0, 4
	lw $t1, -2320($fp)
	mul $t0, $t0, $t1
	sw $t0, -2324($fp)
	lw $t0, -2324($fp)
	lw $t1, -2316($fp)
	add $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	lw $t1, 0($t0)
	sw $t1, -2332($fp)
	lw $t0, -2332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -2336($fp)
	li $t0, 6
	sw $t0, -2340($fp)
	li $t0, 4
	lw $t1, -2340($fp)
	mul $t0, $t0, $t1
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	lw $t1, -2336($fp)
	add $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	lw $t1, 0($t0)
	sw $t1, -2352($fp)
	lw $t0, -2352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1052($fp)
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1064($fp)
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
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
	addi $t0, $fp, -140
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
	addi $t0, $fp, -140
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
	addi $t0, $fp, -140
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
	lw $t0, -1172($fp)
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1184($fp)
	sw $t0, -2448($fp)
	lw $t0, -2448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1196($fp)
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1208($fp)
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
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
	addi $t0, $fp, -176
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
	addi $t0, $fp, -176
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
	addi $t0, $fp, -176
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
	addi $t0, $fp, -176
	sw $t0, -2540($fp)
	li $t0, 4
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
	addi $t0, $fp, -176
	sw $t0, -2560($fp)
	li $t0, 5
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
	addi $t0, $fp, -176
	sw $t0, -2580($fp)
	li $t0, 6
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
	addi $t0, $fp, -176
	sw $t0, -2600($fp)
	li $t0, 7
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
	addi $t0, $fp, -176
	sw $t0, -2620($fp)
	li $t0, 8
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
	lw $t0, -1436($fp)
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1448($fp)
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1460($fp)
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -2652($fp)
	li $t0, 0
	sw $t0, -2656($fp)
	li $t0, 4
	lw $t1, -2656($fp)
	mul $t0, $t0, $t1
	sw $t0, -2660($fp)
	lw $t0, -2660($fp)
	lw $t1, -2652($fp)
	add $t0, $t0, $t1
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	lw $t1, 0($t0)
	sw $t1, -2668($fp)
	lw $t0, -2668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -2672($fp)
	li $t0, 1
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
	lw $t0, -2688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -2692($fp)
	li $t0, 2
	sw $t0, -2696($fp)
	li $t0, 4
	lw $t1, -2696($fp)
	mul $t0, $t0, $t1
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	lw $t1, -2692($fp)
	add $t0, $t0, $t1
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	lw $t1, 0($t0)
	sw $t1, -2708($fp)
	lw $t0, -2708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -2712($fp)
	li $t0, 3
	sw $t0, -2716($fp)
	li $t0, 4
	lw $t1, -2716($fp)
	mul $t0, $t0, $t1
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	lw $t1, -2712($fp)
	add $t0, $t0, $t1
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	lw $t1, 0($t0)
	sw $t1, -2728($fp)
	lw $t0, -2728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -2732($fp)
	li $t0, 4
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
	addi $t0, $fp, -208
	sw $t0, -2752($fp)
	li $t0, 5
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
	addi $t0, $fp, -208
	sw $t0, -2772($fp)
	li $t0, 6
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
	addi $t0, $fp, -208
	sw $t0, -2792($fp)
	li $t0, 7
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
	lw $t0, -1664($fp)
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -2816($fp)
	li $t0, 0
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
	addi $t0, $fp, -216
	sw $t0, -2836($fp)
	li $t0, 1
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
	addi $t0, $fp, -140
	sw $t0, -2856($fp)
	li $t0, 0
	sw $t0, -2860($fp)
	li $t0, 6003
	sw $t0, -2864($fp)
	lw $t0, -1196($fp)
	sw $t0, -2868($fp)
	lw $t0, -2864($fp)
	lw $t1, -2868($fp)
	add $t0, $t0, $t1
	sw $t0, -2872($fp)
	lw $t1, -2872($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label193
label193:
	li $t0, 34248
	sw $t0, -2876($fp)
	lw $t1, -2876($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label192
label192:
	li $t0, 26217
	sw $t0, -2880($fp)
	li $t0, 10927
	sw $t0, -2884($fp)
	lw $t1, -2880($fp)
	lw $t2, -2884($fp)
	beq $t1, $t2, label190
	j label191
label190:
	li $t0, 1
	sw $t0, -2860($fp)
label191:
	li $t0, 4
	lw $t1, -2860($fp)
	mul $t0, $t0, $t1
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	lw $t1, -2856($fp)
	add $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	lw $t1, 0($t0)
	sw $t1, -2896($fp)
	lw $ra, -4($fp)
	lw $v0, -2896($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 63681
	sw $t0, -2972($fp)
	lw $t0, -2972($fp)
	sw $t0, -2976($fp)
	lw $t0, -2976($fp)
	sw $t0, -2980($fp)
	li $t0, 9777
	sw $t0, -2984($fp)
	lw $t0, -2984($fp)
	sw $t0, -2988($fp)
	lw $t0, -2988($fp)
	sw $t0, -2992($fp)
	li $t0, 62027
	sw $t0, -2996($fp)
	addi $t0, $fp, -2928
	sw $t0, -3000($fp)
	li $t0, 0
	sw $t0, -3004($fp)
	lw $t0, -3004($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3008($fp)
	lw $t0, -3000($fp)
	lw $t1, -3008($fp)
	add $t0, $t0, $t1
	sw $t0, -3012($fp)
	lw $t0, -2996($fp)
	lw $t1, -3012($fp)
	sw $t0, 0($t1)
	lw $t0, -3012($fp)
	lw $t1, 0($t0)
	sw $t1, -3016($fp)
	li $t0, 42286
	sw $t0, -3020($fp)
	addi $t0, $fp, -2928
	sw $t0, -3024($fp)
	li $t0, 1
	sw $t0, -3028($fp)
	lw $t0, -3028($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -3024($fp)
	lw $t1, -3032($fp)
	add $t0, $t0, $t1
	sw $t0, -3036($fp)
	lw $t0, -3020($fp)
	lw $t1, -3036($fp)
	sw $t0, 0($t1)
	lw $t0, -3036($fp)
	lw $t1, 0($t0)
	sw $t1, -3040($fp)
	li $t0, 28526
	sw $t0, -3044($fp)
	addi $t0, $fp, -2928
	sw $t0, -3048($fp)
	li $t0, 2
	sw $t0, -3052($fp)
	lw $t0, -3052($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3056($fp)
	lw $t0, -3048($fp)
	lw $t1, -3056($fp)
	add $t0, $t0, $t1
	sw $t0, -3060($fp)
	lw $t0, -3044($fp)
	lw $t1, -3060($fp)
	sw $t0, 0($t1)
	lw $t0, -3060($fp)
	lw $t1, 0($t0)
	sw $t1, -3064($fp)
	li $t0, 2368
	sw $t0, -3068($fp)
	addi $t0, $fp, -2928
	sw $t0, -3072($fp)
	li $t0, 3
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3080($fp)
	lw $t0, -3072($fp)
	lw $t1, -3080($fp)
	add $t0, $t0, $t1
	sw $t0, -3084($fp)
	lw $t0, -3068($fp)
	lw $t1, -3084($fp)
	sw $t0, 0($t1)
	lw $t0, -3084($fp)
	lw $t1, 0($t0)
	sw $t1, -3088($fp)
	li $t0, 35624
	sw $t0, -3092($fp)
	addi $t0, $fp, -2928
	sw $t0, -3096($fp)
	li $t0, 4
	sw $t0, -3100($fp)
	lw $t0, -3100($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t0, -3096($fp)
	lw $t1, -3104($fp)
	add $t0, $t0, $t1
	sw $t0, -3108($fp)
	lw $t0, -3092($fp)
	lw $t1, -3108($fp)
	sw $t0, 0($t1)
	lw $t0, -3108($fp)
	lw $t1, 0($t0)
	sw $t1, -3112($fp)
	li $t0, 2672
	sw $t0, -3116($fp)
	addi $t0, $fp, -2928
	sw $t0, -3120($fp)
	li $t0, 5
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t0, -3120($fp)
	lw $t1, -3128($fp)
	add $t0, $t0, $t1
	sw $t0, -3132($fp)
	lw $t0, -3116($fp)
	lw $t1, -3132($fp)
	sw $t0, 0($t1)
	lw $t0, -3132($fp)
	lw $t1, 0($t0)
	sw $t1, -3136($fp)
	li $t0, 15715
	sw $t0, -3140($fp)
	addi $t0, $fp, -2928
	sw $t0, -3144($fp)
	li $t0, 6
	sw $t0, -3148($fp)
	lw $t0, -3148($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3152($fp)
	lw $t0, -3144($fp)
	lw $t1, -3152($fp)
	add $t0, $t0, $t1
	sw $t0, -3156($fp)
	lw $t0, -3140($fp)
	lw $t1, -3156($fp)
	sw $t0, 0($t1)
	lw $t0, -3156($fp)
	lw $t1, 0($t0)
	sw $t1, -3160($fp)
	li $t0, 43594
	sw $t0, -3164($fp)
	addi $t0, $fp, -2928
	sw $t0, -3168($fp)
	li $t0, 7
	sw $t0, -3172($fp)
	lw $t0, -3172($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3176($fp)
	lw $t0, -3168($fp)
	lw $t1, -3176($fp)
	add $t0, $t0, $t1
	sw $t0, -3180($fp)
	lw $t0, -3164($fp)
	lw $t1, -3180($fp)
	sw $t0, 0($t1)
	lw $t0, -3180($fp)
	lw $t1, 0($t0)
	sw $t1, -3184($fp)
	li $t0, 43845
	sw $t0, -3188($fp)
	addi $t0, $fp, -2960
	sw $t0, -3192($fp)
	li $t0, 0
	sw $t0, -3196($fp)
	lw $t0, -3196($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3200($fp)
	lw $t0, -3192($fp)
	lw $t1, -3200($fp)
	add $t0, $t0, $t1
	sw $t0, -3204($fp)
	lw $t0, -3188($fp)
	lw $t1, -3204($fp)
	sw $t0, 0($t1)
	lw $t0, -3204($fp)
	lw $t1, 0($t0)
	sw $t1, -3208($fp)
	li $t0, 59834
	sw $t0, -3212($fp)
	addi $t0, $fp, -2960
	sw $t0, -3216($fp)
	li $t0, 1
	sw $t0, -3220($fp)
	lw $t0, -3220($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3224($fp)
	lw $t0, -3216($fp)
	lw $t1, -3224($fp)
	add $t0, $t0, $t1
	sw $t0, -3228($fp)
	lw $t0, -3212($fp)
	lw $t1, -3228($fp)
	sw $t0, 0($t1)
	lw $t0, -3228($fp)
	lw $t1, 0($t0)
	sw $t1, -3232($fp)
	li $t0, 9656
	sw $t0, -3236($fp)
	addi $t0, $fp, -2960
	sw $t0, -3240($fp)
	li $t0, 2
	sw $t0, -3244($fp)
	lw $t0, -3244($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3248($fp)
	lw $t0, -3240($fp)
	lw $t1, -3248($fp)
	add $t0, $t0, $t1
	sw $t0, -3252($fp)
	lw $t0, -3236($fp)
	lw $t1, -3252($fp)
	sw $t0, 0($t1)
	lw $t0, -3252($fp)
	lw $t1, 0($t0)
	sw $t1, -3256($fp)
	li $t0, 49029
	sw $t0, -3260($fp)
	addi $t0, $fp, -2960
	sw $t0, -3264($fp)
	li $t0, 3
	sw $t0, -3268($fp)
	lw $t0, -3268($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3272($fp)
	lw $t0, -3264($fp)
	lw $t1, -3272($fp)
	add $t0, $t0, $t1
	sw $t0, -3276($fp)
	lw $t0, -3260($fp)
	lw $t1, -3276($fp)
	sw $t0, 0($t1)
	lw $t0, -3276($fp)
	lw $t1, 0($t0)
	sw $t1, -3280($fp)
	li $t0, 6538
	sw $t0, -3284($fp)
	addi $t0, $fp, -2960
	sw $t0, -3288($fp)
	li $t0, 4
	sw $t0, -3292($fp)
	lw $t0, -3292($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3296($fp)
	lw $t0, -3288($fp)
	lw $t1, -3296($fp)
	add $t0, $t0, $t1
	sw $t0, -3300($fp)
	lw $t0, -3284($fp)
	lw $t1, -3300($fp)
	sw $t0, 0($t1)
	lw $t0, -3300($fp)
	lw $t1, 0($t0)
	sw $t1, -3304($fp)
	li $t0, 34696
	sw $t0, -3308($fp)
	addi $t0, $fp, -2960
	sw $t0, -3312($fp)
	li $t0, 5
	sw $t0, -3316($fp)
	lw $t0, -3316($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3320($fp)
	lw $t0, -3312($fp)
	lw $t1, -3320($fp)
	add $t0, $t0, $t1
	sw $t0, -3324($fp)
	lw $t0, -3308($fp)
	lw $t1, -3324($fp)
	sw $t0, 0($t1)
	lw $t0, -3324($fp)
	lw $t1, 0($t0)
	sw $t1, -3328($fp)
	li $t0, 31372
	sw $t0, -3332($fp)
	addi $t0, $fp, -2960
	sw $t0, -3336($fp)
	li $t0, 6
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3344($fp)
	lw $t0, -3336($fp)
	lw $t1, -3344($fp)
	add $t0, $t0, $t1
	sw $t0, -3348($fp)
	lw $t0, -3332($fp)
	lw $t1, -3348($fp)
	sw $t0, 0($t1)
	lw $t0, -3348($fp)
	lw $t1, 0($t0)
	sw $t1, -3352($fp)
	li $t0, 44536
	sw $t0, -3356($fp)
	addi $t0, $fp, -2960
	sw $t0, -3360($fp)
	li $t0, 7
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3368($fp)
	lw $t0, -3360($fp)
	lw $t1, -3368($fp)
	add $t0, $t0, $t1
	sw $t0, -3372($fp)
	lw $t0, -3356($fp)
	lw $t1, -3372($fp)
	sw $t0, 0($t1)
	lw $t0, -3372($fp)
	lw $t1, 0($t0)
	sw $t1, -3376($fp)
	li $t0, 9942
	sw $t0, -3380($fp)
	lw $t0, -3380($fp)
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	sw $t0, -3388($fp)
	li $t0, 48839
	sw $t0, -3392($fp)
	addi $t0, $fp, -2968
	sw $t0, -3396($fp)
	li $t0, 0
	sw $t0, -3400($fp)
	lw $t0, -3400($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3404($fp)
	lw $t0, -3396($fp)
	lw $t1, -3404($fp)
	add $t0, $t0, $t1
	sw $t0, -3408($fp)
	lw $t0, -3392($fp)
	lw $t1, -3408($fp)
	sw $t0, 0($t1)
	lw $t0, -3408($fp)
	lw $t1, 0($t0)
	sw $t1, -3412($fp)
	li $t0, 35058
	sw $t0, -3416($fp)
	addi $t0, $fp, -2968
	sw $t0, -3420($fp)
	li $t0, 1
	sw $t0, -3424($fp)
	lw $t0, -3424($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3428($fp)
	lw $t0, -3420($fp)
	lw $t1, -3428($fp)
	add $t0, $t0, $t1
	sw $t0, -3432($fp)
	lw $t0, -3416($fp)
	lw $t1, -3432($fp)
	sw $t0, 0($t1)
	lw $t0, -3432($fp)
	lw $t1, 0($t0)
	sw $t1, -3436($fp)
	li $t0, 31707
	sw $t0, -3440($fp)
	lw $t0, -3440($fp)
	sw $t0, -3444($fp)
	lw $t0, -3444($fp)
	sw $t0, -3448($fp)
	li $t0, 7950
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	sw $t0, -3456($fp)
	lw $t0, -3456($fp)
	sw $t0, -3460($fp)
	li $t0, 41640
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	sw $t0, -3468($fp)
	lw $t0, -3468($fp)
	sw $t0, -3472($fp)
	addi $t0, $fp, -2960
	sw $t0, -3476($fp)
	li $t0, 0
	sw $t0, -3480($fp)
	lw $t0, -1052($fp)
	sw $t0, -3484($fp)
	lw $t1, -3484($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label195
label198:
	lw $t0, -2976($fp)
	sw $t0, -3488($fp)
	lw $t1, -3488($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label195
label197:
	lw $t0, -3468($fp)
	sw $t0, -3492($fp)
	lw $t1, -3492($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label195
label196:
	li $t0, 0
	sw $t0, -3496($fp)
	lw $t0, -1064($fp)
	sw $t0, -3500($fp)
	lw $t0, -224($fp)
	sw $t0, -3504($fp)
	lw $t1, -3500($fp)
	lw $t2, -3504($fp)
	ble $t1, $t2, label199
	j label200
label199:
	li $t0, 1
	sw $t0, -3496($fp)
label200:
	li $t0, 0
	sw $t0, -3508($fp)
	addi $t0, $fp, -140
	sw $t0, -3512($fp)
	li $t0, 0
	sw $t0, -3516($fp)
	li $t0, 4
	lw $t1, -3516($fp)
	mul $t0, $t0, $t1
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	lw $t1, -3512($fp)
	add $t0, $t0, $t1
	sw $t0, -3524($fp)
	lw $t0, -3524($fp)
	lw $t1, 0($t0)
	sw $t1, -3528($fp)
	lw $t1, -3528($fp)
	li $t2, 0
	bne $t1, $t2, label201
	j label203
label203:
	li $t0, 54144
	sw $t0, -3532($fp)
	lw $t1, -3532($fp)
	li $t2, 0
	bne $t1, $t2, label201
	j label202
label201:
	li $t0, 1
	sw $t0, -3508($fp)
label202:
	lw $t0, -1196($fp)
	sw $t0, -3536($fp)
	li $t0, 27927
	sw $t0, -3540($fp)
	lw $t0, -3536($fp)
	lw $t1, -3540($fp)
	mul $t0, $t0, $t1
	sw $t0, -3544($fp)
	li $t0, 0
	lw $t1, -3544($fp)
	sub $t0, $t0, $t1
	sw $t0, -3548($fp)
	li $t0, 0
	sw $t0, -3552($fp)
	li $t0, 305
	sw $t0, -3556($fp)
	lw $t0, -1196($fp)
	sw $t0, -3560($fp)
	lw $t1, -3556($fp)
	lw $t2, -3560($fp)
	bgt $t1, $t2, label204
	j label206
label206:
	li $t0, 61768
	sw $t0, -3564($fp)
	lw $t1, -3564($fp)
	li $t2, 0
	bne $t1, $t2, label204
	j label205
label204:
	li $t0, 1
	sw $t0, -3552($fp)
label205:
	addi $t0, $fp, -208
	sw $t0, -3568($fp)
	lw $t0, -2988($fp)
	sw $t0, -3572($fp)
	li $t0, 4
	lw $t1, -3572($fp)
	mul $t0, $t0, $t1
	sw $t0, -3576($fp)
	lw $t0, -3576($fp)
	lw $t1, -3568($fp)
	add $t0, $t0, $t1
	sw $t0, -3580($fp)
	lw $t0, -3580($fp)
	lw $t1, 0($t0)
	sw $t1, -3584($fp)
	addi $sp, $sp, -4
	lw $t0, -3496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3584($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3588($fp)
	addi $sp, $sp, 24
	lw $t1, -3588($fp)
	li $t2, 0
	bne $t1, $t2, label194
	j label195
label194:
	li $t0, 1
	sw $t0, -3480($fp)
label195:
	li $t0, 4
	lw $t1, -3480($fp)
	mul $t0, $t0, $t1
	sw $t0, -3592($fp)
	lw $t0, -3592($fp)
	lw $t1, -3476($fp)
	add $t0, $t0, $t1
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	lw $t1, 0($t0)
	sw $t1, -3600($fp)
	lw $t0, -1664($fp)
	sw $t0, -3604($fp)
	li $t0, 0
	sw $t0, -3608($fp)
	li $t0, 0
	sw $t0, -3612($fp)
	lw $t0, -848($fp)
	sw $t0, -3616($fp)
	lw $t0, -1064($fp)
	sw $t0, -3620($fp)
	lw $t1, -3616($fp)
	lw $t2, -3620($fp)
	bgt $t1, $t2, label209
	j label210
label209:
	li $t0, 1
	sw $t0, -3612($fp)
label210:
	lw $t0, -236($fp)
	sw $t0, -3624($fp)
	lw $t1, -3612($fp)
	lw $t2, -3624($fp)
	bgt $t1, $t2, label207
	j label208
label207:
	li $t0, 1
	sw $t0, -3608($fp)
label208:
	li $t0, 28625
	sw $t0, -3628($fp)
	lw $t0, -3628($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -3632($fp)
	li $t0, 0
	sw $t0, -3636($fp)
	li $t0, 0
	sw $t0, -3640($fp)
	lw $t0, -812($fp)
	sw $t0, -3644($fp)
	li $t0, 17236
	sw $t0, -3648($fp)
	lw $t1, -3644($fp)
	lw $t2, -3648($fp)
	blt $t1, $t2, label213
	j label214
label213:
	li $t0, 1
	sw $t0, -3640($fp)
label214:
	lw $t0, -1664($fp)
	sw $t0, -3652($fp)
	lw $t1, -3640($fp)
	lw $t2, -3652($fp)
	beq $t1, $t2, label211
	j label212
label211:
	li $t0, 1
	sw $t0, -3636($fp)
label212:
	addi $sp, $sp, -4
	lw $t0, -3608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3636($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3656($fp)
	addi $sp, $sp, 16
	li $t0, 63921
	sw $t0, -3660($fp)
	li $t0, 0
	sw $t0, -3664($fp)
	li $t0, 0
	sw $t0, -3668($fp)
	addi $t0, $fp, -176
	sw $t0, -3672($fp)
	lw $t0, -812($fp)
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
	lw $t1, -3688($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label218
label219:
	li $t0, 32647
	sw $t0, -3692($fp)
	lw $t1, -3692($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label218
label217:
	li $t0, 1
	sw $t0, -3668($fp)
label218:
	li $t0, 0
	sw $t0, -3696($fp)
	li $t0, 0
	sw $t0, -3700($fp)
	lw $t0, -1208($fp)
	sw $t0, -3704($fp)
	li $t0, 56922
	sw $t0, -3708($fp)
	lw $t1, -3704($fp)
	lw $t2, -3708($fp)
	bge $t1, $t2, label222
	j label223
label222:
	li $t0, 1
	sw $t0, -3700($fp)
label223:
	lw $t0, -3444($fp)
	sw $t0, -3712($fp)
	lw $t1, -3700($fp)
	lw $t2, -3712($fp)
	bne $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -3696($fp)
label221:
	addi $t0, $fp, -2968
	sw $t0, -3716($fp)
	lw $t0, -2976($fp)
	sw $t0, -3720($fp)
	li $t0, 4
	lw $t1, -3720($fp)
	mul $t0, $t0, $t1
	sw $t0, -3724($fp)
	lw $t0, -3724($fp)
	lw $t1, -3716($fp)
	add $t0, $t0, $t1
	sw $t0, -3728($fp)
	lw $t0, -3728($fp)
	lw $t1, 0($t0)
	sw $t1, -3732($fp)
	lw $t0, -3456($fp)
	sw $t0, -3736($fp)
	lw $t0, -1052($fp)
	sw $t0, -3740($fp)
	lw $t0, -3736($fp)
	lw $t1, -3740($fp)
	mul $t0, $t0, $t1
	sw $t0, -3744($fp)
	lw $t0, -3384($fp)
	sw $t0, -3748($fp)
	lw $t0, -3744($fp)
	lw $t1, -3748($fp)
	add $t0, $t0, $t1
	sw $t0, -3752($fp)
	li $t0, 0
	sw $t0, -3756($fp)
	addi $t0, $fp, -2928
	sw $t0, -3760($fp)
	lw $t0, -1172($fp)
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
	lw $t1, -3776($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label225
label226:
	lw $t0, -3468($fp)
	sw $t0, -3780($fp)
	lw $t1, -3780($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label225
label224:
	li $t0, 1
	sw $t0, -3756($fp)
label225:
	li $t0, 0
	sw $t0, -3784($fp)
	li $t0, 0
	sw $t0, -3788($fp)
	lw $t0, -1196($fp)
	sw $t0, -3792($fp)
	li $t0, 28714
	sw $t0, -3796($fp)
	lw $t1, -3792($fp)
	lw $t2, -3796($fp)
	blt $t1, $t2, label229
	j label230
label229:
	li $t0, 1
	sw $t0, -3788($fp)
label230:
	lw $t0, -1184($fp)
	sw $t0, -3800($fp)
	lw $t1, -3788($fp)
	lw $t2, -3800($fp)
	beq $t1, $t2, label227
	j label228
label227:
	li $t0, 1
	sw $t0, -3784($fp)
label228:
	li $t0, 26109
	sw $t0, -3804($fp)
	lw $t0, -1172($fp)
	sw $t0, -3808($fp)
	lw $t0, -3804($fp)
	lw $t1, -3808($fp)
	mul $t0, $t0, $t1
	sw $t0, -3812($fp)
	lw $t0, -1064($fp)
	sw $t0, -3816($fp)
	lw $t0, -3812($fp)
	lw $t1, -3816($fp)
	mul $t0, $t0, $t1
	sw $t0, -3820($fp)
	li $t0, 0
	sw $t0, -3824($fp)
	addi $t0, $fp, -56
	sw $t0, -3828($fp)
	li $t0, 1
	sw $t0, -3832($fp)
	li $t0, 4
	lw $t1, -3832($fp)
	mul $t0, $t0, $t1
	sw $t0, -3836($fp)
	lw $t0, -3836($fp)
	lw $t1, -3828($fp)
	add $t0, $t0, $t1
	sw $t0, -3840($fp)
	lw $t0, -3840($fp)
	lw $t1, 0($t0)
	sw $t1, -3844($fp)
	lw $t0, -1184($fp)
	sw $t0, -3848($fp)
	lw $t1, -3844($fp)
	lw $t2, -3848($fp)
	beq $t1, $t2, label231
	j label232
label231:
	li $t0, 1
	sw $t0, -3824($fp)
label232:
	addi $sp, $sp, -4
	lw $t0, -3752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3824($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3852($fp)
	addi $sp, $sp, 24
	li $t0, 31810
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -3860($fp)
	addi $sp, $sp, -4
	lw $t0, -3668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3860($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3864($fp)
	addi $sp, $sp, 24
	lw $t0, -236($fp)
	sw $t0, -3868($fp)
	lw $t1, -3864($fp)
	lw $t2, -3868($fp)
	beq $t1, $t2, label215
	j label216
label215:
	li $t0, 1
	sw $t0, -3664($fp)
label216:
	li $t0, 0
	sw $t0, -3872($fp)
	li $t0, 0
	sw $t0, -3876($fp)
	li $t0, 41000
	sw $t0, -3880($fp)
	lw $t1, -3880($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label235
label235:
	li $t0, 1
	sw $t0, -3876($fp)
label236:
	li $t0, 29584
	sw $t0, -3884($fp)
	lw $t1, -3876($fp)
	lw $t2, -3884($fp)
	blt $t1, $t2, label233
	j label234
label233:
	li $t0, 1
	sw $t0, -3872($fp)
label234:
	lw $t0, 8($fp)
	sw $t0, -3888($fp)
	lw $t0, -3456($fp)
	sw $t0, -3892($fp)
	lw $t0, -3888($fp)
	lw $t1, -3892($fp)
	mul $t0, $t0, $t1
	sw $t0, -3896($fp)
	li $t0, 26912
	sw $t0, -3900($fp)
	li $t0, 16095
	sw $t0, -3904($fp)
	lw $t0, -3900($fp)
	lw $t1, -3904($fp)
	add $t0, $t0, $t1
	sw $t0, -3908($fp)
	addi $t0, $fp, -216
	sw $t0, -3912($fp)
	li $t0, 1
	sw $t0, -3916($fp)
	li $t0, 4
	lw $t1, -3916($fp)
	mul $t0, $t0, $t1
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	lw $t1, -3912($fp)
	add $t0, $t0, $t1
	sw $t0, -3924($fp)
	lw $t0, -3924($fp)
	lw $t1, 0($t0)
	sw $t1, -3928($fp)
	addi $sp, $sp, -4
	lw $t0, -3664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3928($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3932($fp)
	addi $sp, $sp, 24
	lw $t0, -3660($fp)
	lw $t1, -3932($fp)
	add $t0, $t0, $t1
	sw $t0, -3936($fp)
label237:
	addi $t0, $fp, -56
	sw $t0, -3940($fp)
	lw $t0, -1052($fp)
	sw $t0, -3944($fp)
	li $t0, 0
	lw $t1, -3944($fp)
	sub $t0, $t0, $t1
	sw $t0, -3948($fp)
	lw $t0, -236($fp)
	sw $t0, -3952($fp)
	lw $t0, -3948($fp)
	lw $t1, -3952($fp)
	add $t0, $t0, $t1
	sw $t0, -3956($fp)
	li $t0, 4
	lw $t1, -3956($fp)
	mul $t0, $t0, $t1
	sw $t0, -3960($fp)
	lw $t0, -3960($fp)
	lw $t1, -3940($fp)
	add $t0, $t0, $t1
	sw $t0, -3964($fp)
	lw $t0, -3964($fp)
	lw $t1, 0($t0)
	sw $t1, -3968($fp)
	li $t0, 0
	lw $t1, -3968($fp)
	sub $t0, $t0, $t1
	sw $t0, -3972($fp)
	lw $t1, -3972($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label239
label238:
label240:
	addi $t0, $fp, -16
	sw $t0, -3976($fp)
	li $t0, 0
	sw $t0, -3980($fp)
	li $t0, 63411
	sw $t0, -3984($fp)
	li $t0, 22759
	sw $t0, -3988($fp)
	lw $t0, -3984($fp)
	lw $t1, -3988($fp)
	add $t0, $t0, $t1
	sw $t0, -3992($fp)
	lw $t1, -3992($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label245
label246:
	lw $t0, -1064($fp)
	sw $t0, -3996($fp)
	lw $t1, -3996($fp)
	li $t2, 0
	bne $t1, $t2, label244
	j label245
label244:
	li $t0, 1
	sw $t0, -3980($fp)
label245:
	li $t0, 4
	lw $t1, -3980($fp)
	mul $t0, $t0, $t1
	sw $t0, -4000($fp)
	lw $t0, -4000($fp)
	lw $t1, -3976($fp)
	add $t0, $t0, $t1
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	lw $t1, 0($t0)
	sw $t1, -4008($fp)
	lw $t1, -4008($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label242
label243:
	addi $t0, $fp, -56
	sw $t0, -4012($fp)
	li $t0, 3
	sw $t0, -4016($fp)
	li $t0, 4
	lw $t1, -4016($fp)
	mul $t0, $t0, $t1
	sw $t0, -4020($fp)
	lw $t0, -4020($fp)
	lw $t1, -4012($fp)
	add $t0, $t0, $t1
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	lw $t1, 0($t0)
	sw $t1, -4028($fp)
	lw $t1, -4028($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label242
label241:
label247:
	li $t0, 6062
	sw $t0, -4032($fp)
	lw $t0, -1064($fp)
	sw $t0, -4036($fp)
	li $t0, 0
	lw $t1, -4036($fp)
	sub $t0, $t0, $t1
	sw $t0, -4040($fp)
	lw $t0, -4032($fp)
	lw $t1, -4040($fp)
	mul $t0, $t0, $t1
	sw $t0, -4044($fp)
	li $t0, 0
	lw $t1, -4044($fp)
	sub $t0, $t0, $t1
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -4052($fp)
	lw $t1, -4052($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label249
label248:
	li $t0, 0
	sw $t0, -4056($fp)
	li $t0, 46706
	sw $t0, -4060($fp)
	li $t0, 0
	lw $t1, -4060($fp)
	sub $t0, $t0, $t1
	sw $t0, -4064($fp)
	lw $t0, -848($fp)
	sw $t0, -4068($fp)
	lw $t1, -4064($fp)
	lw $t2, -4068($fp)
	bne $t1, $t2, label250
	j label251
label250:
	li $t0, 1
	sw $t0, -4056($fp)
label251:
	j label247
label249:
	j label240
label242:
	j label237
label239:
	li $t0, 0
	sw $t0, -4072($fp)
	li $t0, 22810
	sw $t0, -4076($fp)
	lw $t1, -4076($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label257
label257:
	lw $t0, -1664($fp)
	sw $t0, -4080($fp)
	lw $t1, -4080($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label256
label255:
	li $t0, 1
	sw $t0, -4072($fp)
label256:
	li $t0, 0
	sw $t0, -4084($fp)
	li $t0, 39524
	sw $t0, -4088($fp)
	lw $t0, -812($fp)
	sw $t0, -4092($fp)
	lw $t0, -4088($fp)
	lw $t1, -4092($fp)
	add $t0, $t0, $t1
	sw $t0, -4096($fp)
	lw $t1, -4096($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label260
label260:
	li $t0, 14012
	sw $t0, -4100($fp)
	lw $t1, -4100($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label259
label258:
	li $t0, 1
	sw $t0, -4084($fp)
label259:
	lw $t0, -812($fp)
	sw $t0, -4104($fp)
	lw $t0, -848($fp)
	sw $t0, -4108($fp)
	lw $t0, -4104($fp)
	lw $t1, -4108($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4112($fp)
	li $t0, 0
	lw $t1, -4112($fp)
	sub $t0, $t0, $t1
	sw $t0, -4116($fp)
	addi $sp, $sp, -4
	lw $t0, -4072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4116($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4120($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -216
	sw $t0, -4124($fp)
	li $t0, 0
	sw $t0, -4128($fp)
	li $t0, 4
	lw $t1, -4128($fp)
	mul $t0, $t0, $t1
	sw $t0, -4132($fp)
	lw $t0, -4132($fp)
	lw $t1, -4124($fp)
	add $t0, $t0, $t1
	sw $t0, -4136($fp)
	lw $t0, -4136($fp)
	lw $t1, 0($t0)
	sw $t1, -4140($fp)
	li $t0, 50737
	sw $t0, -4144($fp)
	lw $t0, -4140($fp)
	lw $t1, -4144($fp)
	mul $t0, $t0, $t1
	sw $t0, -4148($fp)
	li $t0, 46138
	sw $t0, -4152($fp)
	li $t0, 0
	lw $t1, -4152($fp)
	sub $t0, $t0, $t1
	sw $t0, -4156($fp)
	lw $t0, -4148($fp)
	lw $t1, -4156($fp)
	add $t0, $t0, $t1
	sw $t0, -4160($fp)
	lw $t1, -4120($fp)
	lw $t2, -4160($fp)
	bgt $t1, $t2, label252
	j label253
label252:
	lw $t0, -812($fp)
	sw $t0, -4164($fp)
	addi $t0, $fp, -124
	sw $t0, -4168($fp)
	li $t0, 0
	sw $t0, -4172($fp)
	lw $t0, -812($fp)
	sw $t0, -4176($fp)
	lw $t1, -4176($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label264
label264:
	li $t0, 1
	sw $t0, -4172($fp)
label265:
	li $t0, 4
	lw $t1, -4172($fp)
	mul $t0, $t0, $t1
	sw $t0, -4180($fp)
	lw $t0, -4180($fp)
	lw $t1, -4168($fp)
	add $t0, $t0, $t1
	sw $t0, -4184($fp)
	lw $t0, -4184($fp)
	lw $t1, 0($t0)
	sw $t1, -4188($fp)
	lw $t1, -4164($fp)
	lw $t2, -4188($fp)
	bne $t1, $t2, label261
	j label262
label261:
	li $t0, 40724
	sw $t0, -4192($fp)
	lw $t0, 12($fp)
	sw $t0, -4196($fp)
	lw $t0, -4192($fp)
	lw $t1, -4196($fp)
	add $t0, $t0, $t1
	sw $t0, -4200($fp)
	lw $t0, -4200($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -4204($fp)
	lw $t1, -4204($fp)
	li $t2, 0
	bne $t1, $t2, label266
	j label267
label266:
	lw $t0, -560($fp)
	sw $t0, -4208($fp)
	li $t0, 0
	lw $t1, -4208($fp)
	sub $t0, $t0, $t1
	sw $t0, -4212($fp)
	lw $ra, -4($fp)
	lw $v0, -4212($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label268
label267:
	li $t0, 0
	sw $t0, -4216($fp)
	li $t0, 39345
	sw $t0, -4220($fp)
	li $t0, 0
	lw $t1, -4220($fp)
	sub $t0, $t0, $t1
	sw $t0, -4224($fp)
	lw $t1, -4224($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label270
label269:
	li $t0, 1
	sw $t0, -4216($fp)
label270:
label268:
	j label263
label262:
	li $t0, 0
	sw $t0, -4228($fp)
	li $t0, 0
	sw $t0, -4232($fp)
	lw $t0, -1664($fp)
	sw $t0, -4236($fp)
	li $t0, 59471
	sw $t0, -4240($fp)
	lw $t0, -4236($fp)
	lw $t1, -4240($fp)
	sub $t0, $t0, $t1
	sw $t0, -4244($fp)
	lw $t0, -1448($fp)
	sw $t0, -4248($fp)
	lw $t1, -4244($fp)
	lw $t2, -4248($fp)
	beq $t1, $t2, label276
	j label277
label276:
	li $t0, 1
	sw $t0, -4232($fp)
label277:
	li $t0, 28691
	sw $t0, -4252($fp)
	lw $t0, -4252($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -4256($fp)
	li $t0, 0
	sw $t0, -4260($fp)
	li $t0, 50189
	sw $t0, -4264($fp)
	lw $t0, 12($fp)
	sw $t0, -4268($fp)
	lw $t1, -4264($fp)
	lw $t2, -4268($fp)
	blt $t1, $t2, label278
	j label279
label278:
	li $t0, 1
	sw $t0, -4260($fp)
label279:
	li $t0, 0
	sw $t0, -4272($fp)
	li $t0, 27660
	sw $t0, -4276($fp)
	li $t0, 0
	lw $t1, -4276($fp)
	sub $t0, $t0, $t1
	sw $t0, -4280($fp)
	addi $t0, $fp, -208
	sw $t0, -4284($fp)
	li $t0, 3
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
	li $t0, 11565
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -4308($fp)
	addi $t0, $fp, -140
	sw $t0, -4312($fp)
	lw $t0, -1664($fp)
	sw $t0, -4316($fp)
	li $t0, 4
	lw $t1, -4316($fp)
	mul $t0, $t0, $t1
	sw $t0, -4320($fp)
	lw $t0, -4320($fp)
	lw $t1, -4312($fp)
	add $t0, $t0, $t1
	sw $t0, -4324($fp)
	lw $t0, -4324($fp)
	lw $t1, 0($t0)
	sw $t1, -4328($fp)
	lw $t0, -224($fp)
	sw $t0, -4332($fp)
	lw $t0, -4328($fp)
	lw $t1, -4332($fp)
	add $t0, $t0, $t1
	sw $t0, -4336($fp)
	li $t0, 0
	sw $t0, -4340($fp)
	addi $t0, $fp, -96
	sw $t0, -4344($fp)
	lw $t0, -812($fp)
	sw $t0, -4348($fp)
	li $t0, 4
	lw $t1, -4348($fp)
	mul $t0, $t0, $t1
	sw $t0, -4352($fp)
	lw $t0, -4352($fp)
	lw $t1, -4344($fp)
	add $t0, $t0, $t1
	sw $t0, -4356($fp)
	lw $t0, -4356($fp)
	lw $t1, 0($t0)
	sw $t1, -4360($fp)
	li $t0, 37731
	sw $t0, -4364($fp)
	lw $t1, -4360($fp)
	lw $t2, -4364($fp)
	bne $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -4340($fp)
label283:
	addi $sp, $sp, -4
	lw $t0, -4280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4340($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4368($fp)
	addi $sp, $sp, 24
	lw $t0, -1436($fp)
	sw $t0, -4372($fp)
	lw $t1, -4368($fp)
	lw $t2, -4372($fp)
	bne $t1, $t2, label280
	j label281
label280:
	li $t0, 1
	sw $t0, -4272($fp)
label281:
	li $t0, 0
	sw $t0, -4376($fp)
	li $t0, 63374
	sw $t0, -4380($fp)
	lw $t1, -4380($fp)
	li $t2, 0
	bne $t1, $t2, label285
	j label284
label284:
	li $t0, 1
	sw $t0, -4376($fp)
label285:
	li $t0, 3813
	sw $t0, -4384($fp)
	lw $t0, -4376($fp)
	lw $t1, -4384($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4388($fp)
	addi $sp, $sp, -4
	lw $t0, -4232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4388($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4392($fp)
	addi $sp, $sp, 24
	li $t0, 3711
	sw $t0, -4396($fp)
	li $t0, 0
	lw $t1, -4396($fp)
	sub $t0, $t0, $t1
	sw $t0, -4400($fp)
	lw $t1, -4392($fp)
	lw $t2, -4400($fp)
	ble $t1, $t2, label274
	j label275
label274:
	li $t0, 1
	sw $t0, -4228($fp)
label275:
	lw $t0, -4228($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -4404($fp)
	lw $t1, -4404($fp)
	li $t2, 0
	bne $t1, $t2, label271
	j label272
label271:
	lw $t0, -1460($fp)
	sw $t0, -4408($fp)
	li $t0, 0
	lw $t1, -4408($fp)
	sub $t0, $t0, $t1
	sw $t0, -4412($fp)
	addi $t0, $fp, -124
	sw $t0, -4416($fp)
	li $t0, 5
	sw $t0, -4420($fp)
	li $t0, 4
	lw $t1, -4420($fp)
	mul $t0, $t0, $t1
	sw $t0, -4424($fp)
	lw $t0, -4424($fp)
	lw $t1, -4416($fp)
	add $t0, $t0, $t1
	sw $t0, -4428($fp)
	lw $t0, -4428($fp)
	lw $t1, 0($t0)
	sw $t1, -4432($fp)
	lw $t0, -224($fp)
	sw $t0, -4436($fp)
	lw $t0, -4432($fp)
	lw $t1, -4436($fp)
	mul $t0, $t0, $t1
	sw $t0, -4440($fp)
	lw $t0, -4412($fp)
	lw $t1, -4440($fp)
	add $t0, $t0, $t1
	sw $t0, -4444($fp)
	addi $t0, $fp, -176
	sw $t0, -4448($fp)
	li $t0, 0
	sw $t0, -4452($fp)
	li $t0, 12107
	sw $t0, -4456($fp)
	lw $t0, -1664($fp)
	sw $t0, -4460($fp)
	lw $t1, -4456($fp)
	lw $t2, -4460($fp)
	beq $t1, $t2, label288
	j label287
label288:
	lw $t0, -1436($fp)
	sw $t0, -4464($fp)
	lw $t1, -4464($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label287
label286:
	li $t0, 1
	sw $t0, -4452($fp)
label287:
	li $t0, 0
	sw $t0, -4468($fp)
	li $t0, 45509
	sw $t0, -4472($fp)
	lw $t1, -4472($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label289
label289:
	li $t0, 1
	sw $t0, -4468($fp)
label290:
	li $t0, 0
	sw $t0, -4476($fp)
	li $t0, 0
	sw $t0, -4480($fp)
	li $t0, 38118
	sw $t0, -4484($fp)
	li $t0, 56792
	sw $t0, -4488($fp)
	lw $t1, -4484($fp)
	lw $t2, -4488($fp)
	beq $t1, $t2, label293
	j label294
label293:
	li $t0, 1
	sw $t0, -4480($fp)
label294:
	lw $t0, -1064($fp)
	sw $t0, -4492($fp)
	lw $t1, -4480($fp)
	lw $t2, -4492($fp)
	bne $t1, $t2, label291
	j label292
label291:
	li $t0, 1
	sw $t0, -4476($fp)
label292:
	lw $t0, -1184($fp)
	sw $t0, -4496($fp)
	li $t0, 0
	sw $t0, -4500($fp)
	lw $t0, 12($fp)
	sw $t0, -4504($fp)
	li $t0, 0
	lw $t1, -4504($fp)
	sub $t0, $t0, $t1
	sw $t0, -4508($fp)
	lw $t1, -4508($fp)
	li $t2, 0
	bne $t1, $t2, label296
	j label295
label295:
	li $t0, 1
	sw $t0, -4500($fp)
label296:
	li $t0, 0
	sw $t0, -4512($fp)
	li $t0, 0
	sw $t0, -4516($fp)
	li $t0, 50730
	sw $t0, -4520($fp)
	lw $t0, -872($fp)
	sw $t0, -4524($fp)
	lw $t1, -4520($fp)
	lw $t2, -4524($fp)
	beq $t1, $t2, label299
	j label300
label299:
	li $t0, 1
	sw $t0, -4516($fp)
label300:
	li $t0, 64339
	sw $t0, -4528($fp)
	lw $t1, -4516($fp)
	lw $t2, -4528($fp)
	bne $t1, $t2, label297
	j label298
label297:
	li $t0, 1
	sw $t0, -4512($fp)
label298:
	lw $t0, -1664($fp)
	sw $t0, -4532($fp)
	lw $t0, -4532($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -4536($fp)
	addi $sp, $sp, -4
	lw $t0, -4476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4536($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4540($fp)
	addi $sp, $sp, 24
	li $t0, 30301
	sw $t0, -4544($fp)
	lw $t0, -1196($fp)
	sw $t0, -4548($fp)
	lw $t0, -4544($fp)
	lw $t1, -4548($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4552($fp)
	li $t0, 0
	lw $t1, -4552($fp)
	sub $t0, $t0, $t1
	sw $t0, -4556($fp)
	li $t0, 0
	sw $t0, -4560($fp)
	lw $t0, -848($fp)
	sw $t0, -4564($fp)
	li $t0, 27971
	sw $t0, -4568($fp)
	lw $t0, -4564($fp)
	lw $t1, -4568($fp)
	add $t0, $t0, $t1
	sw $t0, -4572($fp)
	li $t0, 52691
	sw $t0, -4576($fp)
	lw $t1, -4572($fp)
	lw $t2, -4576($fp)
	beq $t1, $t2, label301
	j label302
label301:
	li $t0, 1
	sw $t0, -4560($fp)
label302:
	addi $sp, $sp, -4
	lw $t0, -4540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4560($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4580($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -4584($fp)
	lw $t0, 4($fp)
	sw $t0, -4588($fp)
	lw $t0, -1436($fp)
	sw $t0, -4592($fp)
	lw $t0, -4588($fp)
	lw $t1, -4592($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4596($fp)
	lw $t0, -1184($fp)
	sw $t0, -4600($fp)
	lw $t1, -4596($fp)
	lw $t2, -4600($fp)
	ble $t1, $t2, label303
	j label304
label303:
	li $t0, 1
	sw $t0, -4584($fp)
label304:
	li $t0, 0
	sw $t0, -4604($fp)
	lw $t0, -824($fp)
	sw $t0, -4608($fp)
	lw $t1, -4608($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label307
label307:
	li $t0, 32426
	sw $t0, -4612($fp)
	lw $t1, -4612($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label306
label305:
	li $t0, 1
	sw $t0, -4604($fp)
label306:
	addi $sp, $sp, -4
	lw $t0, -4452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4604($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4616($fp)
	addi $sp, $sp, 24
	li $t0, 4
	lw $t1, -4616($fp)
	mul $t0, $t0, $t1
	sw $t0, -4620($fp)
	lw $t0, -4620($fp)
	lw $t1, -4448($fp)
	add $t0, $t0, $t1
	sw $t0, -4624($fp)
	lw $t0, -4624($fp)
	lw $t1, 0($t0)
	sw $t1, -4628($fp)
	lw $t0, -4444($fp)
	lw $t1, -4628($fp)
	add $t0, $t0, $t1
	sw $t0, -4632($fp)
	j label273
label272:
	addi $t0, $fp, -56
	sw $t0, -4636($fp)
	lw $t0, -1064($fp)
	sw $t0, -4640($fp)
	li $t0, 5269
	sw $t0, -4644($fp)
	lw $t0, -4640($fp)
	lw $t1, -4644($fp)
	mul $t0, $t0, $t1
	sw $t0, -4648($fp)
	li $t0, 2783
	sw $t0, -4652($fp)
	lw $t0, -4648($fp)
	lw $t1, -4652($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4656($fp)
	lw $t0, -224($fp)
	sw $t0, -4660($fp)
	li $t0, 0
	lw $t1, -4660($fp)
	sub $t0, $t0, $t1
	sw $t0, -4664($fp)
	lw $t0, -4656($fp)
	lw $t1, -4664($fp)
	add $t0, $t0, $t1
	sw $t0, -4668($fp)
	li $t0, 4
	lw $t1, -4668($fp)
	mul $t0, $t0, $t1
	sw $t0, -4672($fp)
	lw $t0, -4672($fp)
	lw $t1, -4636($fp)
	add $t0, $t0, $t1
	sw $t0, -4676($fp)
	lw $t0, -4676($fp)
	lw $t1, 0($t0)
	sw $t1, -4680($fp)
label273:
label263:
	j label254
label253:
	li $t0, 3704
	sw $t0, -4684($fp)
	lw $t0, -224($fp)
	sw $t0, -4688($fp)
	lw $t0, -4684($fp)
	lw $t1, -4688($fp)
	sub $t0, $t0, $t1
	sw $t0, -4692($fp)
	li $t0, 0
	sw $t0, -4696($fp)
	li $t0, 41941
	sw $t0, -4700($fp)
	lw $t1, -4700($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label308
label308:
	li $t0, 1
	sw $t0, -4696($fp)
label309:
	lw $t0, -824($fp)
	sw $t0, -4704($fp)
	lw $t0, -4696($fp)
	lw $t1, -4704($fp)
	add $t0, $t0, $t1
	sw $t0, -4708($fp)
	lw $t0, 12($fp)
	sw $t0, -4712($fp)
	lw $t0, -224($fp)
	sw $t0, -4716($fp)
	lw $t0, -4712($fp)
	lw $t1, -4716($fp)
	mul $t0, $t0, $t1
	sw $t0, -4720($fp)
	li $t0, 0
	lw $t1, -4720($fp)
	sub $t0, $t0, $t1
	sw $t0, -4724($fp)
	li $t0, 0
	sw $t0, -4728($fp)
	li $t0, 60051
	sw $t0, -4732($fp)
	lw $t0, -4732($fp)
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -4736($fp)
	li $t0, 0
	sw $t0, -4740($fp)
	lw $t0, -1664($fp)
	sw $t0, -4744($fp)
	lw $t1, -4744($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label316
label316:
	li $t0, 27330
	sw $t0, -4748($fp)
	lw $t1, -4748($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label315
label315:
	li $t0, 30376
	sw $t0, -4752($fp)
	lw $t1, -4752($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label314
label313:
	li $t0, 1
	sw $t0, -4740($fp)
label314:
	li $t0, 0
	sw $t0, -4756($fp)
	lw $t0, -1664($fp)
	sw $t0, -4760($fp)
	lw $t0, -848($fp)
	sw $t0, -4764($fp)
	lw $t1, -4760($fp)
	lw $t2, -4764($fp)
	bne $t1, $t2, label317
	j label319
label319:
	li $t0, 56238
	sw $t0, -4768($fp)
	lw $t1, -4768($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label318
label317:
	li $t0, 1
	sw $t0, -4756($fp)
label318:
	li $t0, 32538
	sw $t0, -4772($fp)
	lw $t0, -4772($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -4776($fp)
	li $t0, 0
	sw $t0, -4780($fp)
	li $t0, 53521
	sw $t0, -4784($fp)
	lw $t1, -4784($fp)
	li $t2, 0
	bne $t1, $t2, label321
	j label320
label320:
	li $t0, 1
	sw $t0, -4780($fp)
label321:
	addi $sp, $sp, -4
	lw $t0, -4736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4780($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4788($fp)
	addi $sp, $sp, 24
	lw $t1, -4788($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label312
label312:
	li $t0, 65061
	sw $t0, -4792($fp)
	lw $t1, -4792($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label311
label310:
	li $t0, 1
	sw $t0, -4728($fp)
label311:
	li $t0, 0
	sw $t0, -4796($fp)
	lw $t0, -1064($fp)
	sw $t0, -4800($fp)
	li $t0, 51936
	sw $t0, -4804($fp)
	lw $t0, -4800($fp)
	lw $t1, -4804($fp)
	sub $t0, $t0, $t1
	sw $t0, -4808($fp)
	lw $t1, -4808($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label323
label324:
	li $t0, 15513
	sw $t0, -4812($fp)
	lw $t1, -4812($fp)
	li $t2, 0
	bne $t1, $t2, label322
	j label323
label322:
	li $t0, 1
	sw $t0, -4796($fp)
label323:
	addi $sp, $sp, -4
	lw $t0, -4692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4796($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4816($fp)
	addi $sp, $sp, 24
	li $t0, 64168
	sw $t0, -4820($fp)
	li $t0, 0
	lw $t1, -4820($fp)
	sub $t0, $t0, $t1
	sw $t0, -4824($fp)
	li $t0, 0
	lw $t1, -4824($fp)
	sub $t0, $t0, $t1
	sw $t0, -4828($fp)
	lw $t0, -4816($fp)
	lw $t1, -4828($fp)
	sub $t0, $t0, $t1
	sw $t0, -4832($fp)
label254:
	li $t0, 0
	sw $t0, -4836($fp)
	lw $t0, -1436($fp)
	sw $t0, -4840($fp)
	li $t0, 4066
	sw $t0, -4844($fp)
	lw $t0, -4840($fp)
	lw $t1, -4844($fp)
	mul $t0, $t0, $t1
	sw $t0, -4848($fp)
	lw $t1, -4848($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label331
label331:
	lw $t0, -836($fp)
	sw $t0, -4852($fp)
	lw $t1, -4852($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label330
label330:
	lw $t0, -848($fp)
	sw $t0, -4856($fp)
	lw $t1, -4856($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label329
label328:
	li $t0, 1
	sw $t0, -4836($fp)
label329:
	lw $t0, -4836($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -4860($fp)
	lw $t1, -4860($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label326
label325:
	lw $t0, -1196($fp)
	sw $t0, -4864($fp)
	j label327
label326:
	lw $t0, -224($fp)
	sw $t0, -4868($fp)
	li $t0, 0
	sw $t0, -4872($fp)
	li $t0, 53893
	sw $t0, -4876($fp)
	lw $t1, -4876($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label332
label332:
	li $t0, 1
	sw $t0, -4872($fp)
label333:
	lw $t0, -4868($fp)
	lw $t1, -4872($fp)
	mul $t0, $t0, $t1
	sw $t0, -4880($fp)
label327:
	lw $t0, -224($fp)
	sw $t0, -4884($fp)
	lw $t0, -4884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -236($fp)
	sw $t0, -4888($fp)
	lw $t0, -4888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -4892($fp)
	li $t0, 0
	sw $t0, -4896($fp)
	li $t0, 4
	lw $t1, -4896($fp)
	mul $t0, $t0, $t1
	sw $t0, -4900($fp)
	lw $t0, -4900($fp)
	lw $t1, -4892($fp)
	add $t0, $t0, $t1
	sw $t0, -4904($fp)
	lw $t0, -4904($fp)
	lw $t1, 0($t0)
	sw $t1, -4908($fp)
	lw $t0, -4908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -4912($fp)
	li $t0, 1
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
	lw $t0, -4928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -4932($fp)
	li $t0, 2
	sw $t0, -4936($fp)
	li $t0, 4
	lw $t1, -4936($fp)
	mul $t0, $t0, $t1
	sw $t0, -4940($fp)
	lw $t0, -4940($fp)
	lw $t1, -4932($fp)
	add $t0, $t0, $t1
	sw $t0, -4944($fp)
	lw $t0, -4944($fp)
	lw $t1, 0($t0)
	sw $t1, -4948($fp)
	lw $t0, -4948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -4952($fp)
	li $t0, 0
	sw $t0, -4956($fp)
	li $t0, 4
	lw $t1, -4956($fp)
	mul $t0, $t0, $t1
	sw $t0, -4960($fp)
	lw $t0, -4960($fp)
	lw $t1, -4952($fp)
	add $t0, $t0, $t1
	sw $t0, -4964($fp)
	lw $t0, -4964($fp)
	lw $t1, 0($t0)
	sw $t1, -4968($fp)
	lw $t0, -4968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -4972($fp)
	li $t0, 1
	sw $t0, -4976($fp)
	li $t0, 4
	lw $t1, -4976($fp)
	mul $t0, $t0, $t1
	sw $t0, -4980($fp)
	lw $t0, -4980($fp)
	lw $t1, -4972($fp)
	add $t0, $t0, $t1
	sw $t0, -4984($fp)
	lw $t0, -4984($fp)
	lw $t1, 0($t0)
	sw $t1, -4988($fp)
	lw $t0, -4988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -4992($fp)
	li $t0, 2
	sw $t0, -4996($fp)
	li $t0, 4
	lw $t1, -4996($fp)
	mul $t0, $t0, $t1
	sw $t0, -5000($fp)
	lw $t0, -5000($fp)
	lw $t1, -4992($fp)
	add $t0, $t0, $t1
	sw $t0, -5004($fp)
	lw $t0, -5004($fp)
	lw $t1, 0($t0)
	sw $t1, -5008($fp)
	lw $t0, -5008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -5012($fp)
	li $t0, 3
	sw $t0, -5016($fp)
	li $t0, 4
	lw $t1, -5016($fp)
	mul $t0, $t0, $t1
	sw $t0, -5020($fp)
	lw $t0, -5020($fp)
	lw $t1, -5012($fp)
	add $t0, $t0, $t1
	sw $t0, -5024($fp)
	lw $t0, -5024($fp)
	lw $t1, 0($t0)
	sw $t1, -5028($fp)
	lw $t0, -5028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -5032($fp)
	li $t0, 4
	sw $t0, -5036($fp)
	li $t0, 4
	lw $t1, -5036($fp)
	mul $t0, $t0, $t1
	sw $t0, -5040($fp)
	lw $t0, -5040($fp)
	lw $t1, -5032($fp)
	add $t0, $t0, $t1
	sw $t0, -5044($fp)
	lw $t0, -5044($fp)
	lw $t1, 0($t0)
	sw $t1, -5048($fp)
	lw $t0, -5048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -5052($fp)
	li $t0, 5
	sw $t0, -5056($fp)
	li $t0, 4
	lw $t1, -5056($fp)
	mul $t0, $t0, $t1
	sw $t0, -5060($fp)
	lw $t0, -5060($fp)
	lw $t1, -5052($fp)
	add $t0, $t0, $t1
	sw $t0, -5064($fp)
	lw $t0, -5064($fp)
	lw $t1, 0($t0)
	sw $t1, -5068($fp)
	lw $t0, -5068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -5072($fp)
	li $t0, 6
	sw $t0, -5076($fp)
	li $t0, 4
	lw $t1, -5076($fp)
	mul $t0, $t0, $t1
	sw $t0, -5080($fp)
	lw $t0, -5080($fp)
	lw $t1, -5072($fp)
	add $t0, $t0, $t1
	sw $t0, -5084($fp)
	lw $t0, -5084($fp)
	lw $t1, 0($t0)
	sw $t1, -5088($fp)
	lw $t0, -5088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -5092($fp)
	li $t0, 7
	sw $t0, -5096($fp)
	li $t0, 4
	lw $t1, -5096($fp)
	mul $t0, $t0, $t1
	sw $t0, -5100($fp)
	lw $t0, -5100($fp)
	lw $t1, -5092($fp)
	add $t0, $t0, $t1
	sw $t0, -5104($fp)
	lw $t0, -5104($fp)
	lw $t1, 0($t0)
	sw $t1, -5108($fp)
	lw $t0, -5108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -5112($fp)
	li $t0, 8
	sw $t0, -5116($fp)
	li $t0, 4
	lw $t1, -5116($fp)
	mul $t0, $t0, $t1
	sw $t0, -5120($fp)
	lw $t0, -5120($fp)
	lw $t1, -5112($fp)
	add $t0, $t0, $t1
	sw $t0, -5124($fp)
	lw $t0, -5124($fp)
	lw $t1, 0($t0)
	sw $t1, -5128($fp)
	lw $t0, -5128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -5132($fp)
	li $t0, 9
	sw $t0, -5136($fp)
	li $t0, 4
	lw $t1, -5136($fp)
	mul $t0, $t0, $t1
	sw $t0, -5140($fp)
	lw $t0, -5140($fp)
	lw $t1, -5132($fp)
	add $t0, $t0, $t1
	sw $t0, -5144($fp)
	lw $t0, -5144($fp)
	lw $t1, 0($t0)
	sw $t1, -5148($fp)
	lw $t0, -5148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -5152($fp)
	lw $t0, -5152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -5156($fp)
	li $t0, 0
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
	addi $t0, $fp, -96
	sw $t0, -5176($fp)
	li $t0, 1
	sw $t0, -5180($fp)
	li $t0, 4
	lw $t1, -5180($fp)
	mul $t0, $t0, $t1
	sw $t0, -5184($fp)
	lw $t0, -5184($fp)
	lw $t1, -5176($fp)
	add $t0, $t0, $t1
	sw $t0, -5188($fp)
	lw $t0, -5188($fp)
	lw $t1, 0($t0)
	sw $t1, -5192($fp)
	lw $t0, -5192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -5196($fp)
	li $t0, 2
	sw $t0, -5200($fp)
	li $t0, 4
	lw $t1, -5200($fp)
	mul $t0, $t0, $t1
	sw $t0, -5204($fp)
	lw $t0, -5204($fp)
	lw $t1, -5196($fp)
	add $t0, $t0, $t1
	sw $t0, -5208($fp)
	lw $t0, -5208($fp)
	lw $t1, 0($t0)
	sw $t1, -5212($fp)
	lw $t0, -5212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -5216($fp)
	li $t0, 3
	sw $t0, -5220($fp)
	li $t0, 4
	lw $t1, -5220($fp)
	mul $t0, $t0, $t1
	sw $t0, -5224($fp)
	lw $t0, -5224($fp)
	lw $t1, -5216($fp)
	add $t0, $t0, $t1
	sw $t0, -5228($fp)
	lw $t0, -5228($fp)
	lw $t1, 0($t0)
	sw $t1, -5232($fp)
	lw $t0, -5232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -5236($fp)
	li $t0, 4
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
	addi $t0, $fp, -96
	sw $t0, -5256($fp)
	li $t0, 5
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
	addi $t0, $fp, -96
	sw $t0, -5276($fp)
	li $t0, 6
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
	addi $t0, $fp, -96
	sw $t0, -5296($fp)
	li $t0, 7
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
	addi $t0, $fp, -96
	sw $t0, -5316($fp)
	li $t0, 8
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
	addi $t0, $fp, -96
	sw $t0, -5336($fp)
	li $t0, 9
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
	lw $t0, -812($fp)
	sw $t0, -5356($fp)
	lw $t0, -5356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -824($fp)
	sw $t0, -5360($fp)
	lw $t0, -5360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -836($fp)
	sw $t0, -5364($fp)
	lw $t0, -5364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -848($fp)
	sw $t0, -5368($fp)
	lw $t0, -5368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -860($fp)
	sw $t0, -5372($fp)
	lw $t0, -5372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -872($fp)
	sw $t0, -5376($fp)
	lw $t0, -5376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -5380($fp)
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	li $t0, 3
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
	li $t0, 4
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
	li $t0, 5
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
	addi $t0, $fp, -124
	sw $t0, -5500($fp)
	li $t0, 6
	sw $t0, -5504($fp)
	li $t0, 4
	lw $t1, -5504($fp)
	mul $t0, $t0, $t1
	sw $t0, -5508($fp)
	lw $t0, -5508($fp)
	lw $t1, -5500($fp)
	add $t0, $t0, $t1
	sw $t0, -5512($fp)
	lw $t0, -5512($fp)
	lw $t1, 0($t0)
	sw $t1, -5516($fp)
	lw $t0, -5516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1052($fp)
	sw $t0, -5520($fp)
	lw $t0, -5520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1064($fp)
	sw $t0, -5524($fp)
	lw $t0, -5524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -5528($fp)
	li $t0, 0
	sw $t0, -5532($fp)
	li $t0, 4
	lw $t1, -5532($fp)
	mul $t0, $t0, $t1
	sw $t0, -5536($fp)
	lw $t0, -5536($fp)
	lw $t1, -5528($fp)
	add $t0, $t0, $t1
	sw $t0, -5540($fp)
	lw $t0, -5540($fp)
	lw $t1, 0($t0)
	sw $t1, -5544($fp)
	lw $t0, -5544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -5548($fp)
	li $t0, 1
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
	addi $t0, $fp, -140
	sw $t0, -5568($fp)
	li $t0, 2
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
	addi $t0, $fp, -140
	sw $t0, -5588($fp)
	li $t0, 3
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
	lw $t0, -1172($fp)
	sw $t0, -5608($fp)
	lw $t0, -5608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1184($fp)
	sw $t0, -5612($fp)
	lw $t0, -5612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1196($fp)
	sw $t0, -5616($fp)
	lw $t0, -5616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1208($fp)
	sw $t0, -5620($fp)
	lw $t0, -5620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -5624($fp)
	li $t0, 0
	sw $t0, -5628($fp)
	li $t0, 4
	lw $t1, -5628($fp)
	mul $t0, $t0, $t1
	sw $t0, -5632($fp)
	lw $t0, -5632($fp)
	lw $t1, -5624($fp)
	add $t0, $t0, $t1
	sw $t0, -5636($fp)
	lw $t0, -5636($fp)
	lw $t1, 0($t0)
	sw $t1, -5640($fp)
	lw $t0, -5640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -5644($fp)
	li $t0, 1
	sw $t0, -5648($fp)
	li $t0, 4
	lw $t1, -5648($fp)
	mul $t0, $t0, $t1
	sw $t0, -5652($fp)
	lw $t0, -5652($fp)
	lw $t1, -5644($fp)
	add $t0, $t0, $t1
	sw $t0, -5656($fp)
	lw $t0, -5656($fp)
	lw $t1, 0($t0)
	sw $t1, -5660($fp)
	lw $t0, -5660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -5664($fp)
	li $t0, 2
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
	addi $t0, $fp, -176
	sw $t0, -5684($fp)
	li $t0, 3
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
	addi $t0, $fp, -176
	sw $t0, -5704($fp)
	li $t0, 4
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
	addi $t0, $fp, -176
	sw $t0, -5724($fp)
	li $t0, 5
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
	addi $t0, $fp, -176
	sw $t0, -5744($fp)
	li $t0, 6
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
	lw $t0, -5760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -5764($fp)
	li $t0, 7
	sw $t0, -5768($fp)
	li $t0, 4
	lw $t1, -5768($fp)
	mul $t0, $t0, $t1
	sw $t0, -5772($fp)
	lw $t0, -5772($fp)
	lw $t1, -5764($fp)
	add $t0, $t0, $t1
	sw $t0, -5776($fp)
	lw $t0, -5776($fp)
	lw $t1, 0($t0)
	sw $t1, -5780($fp)
	lw $t0, -5780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -5784($fp)
	li $t0, 8
	sw $t0, -5788($fp)
	li $t0, 4
	lw $t1, -5788($fp)
	mul $t0, $t0, $t1
	sw $t0, -5792($fp)
	lw $t0, -5792($fp)
	lw $t1, -5784($fp)
	add $t0, $t0, $t1
	sw $t0, -5796($fp)
	lw $t0, -5796($fp)
	lw $t1, 0($t0)
	sw $t1, -5800($fp)
	lw $t0, -5800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1436($fp)
	sw $t0, -5804($fp)
	lw $t0, -5804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1448($fp)
	sw $t0, -5808($fp)
	lw $t0, -5808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1460($fp)
	sw $t0, -5812($fp)
	lw $t0, -5812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -5816($fp)
	li $t0, 0
	sw $t0, -5820($fp)
	li $t0, 4
	lw $t1, -5820($fp)
	mul $t0, $t0, $t1
	sw $t0, -5824($fp)
	lw $t0, -5824($fp)
	lw $t1, -5816($fp)
	add $t0, $t0, $t1
	sw $t0, -5828($fp)
	lw $t0, -5828($fp)
	lw $t1, 0($t0)
	sw $t1, -5832($fp)
	lw $t0, -5832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -5836($fp)
	li $t0, 1
	sw $t0, -5840($fp)
	li $t0, 4
	lw $t1, -5840($fp)
	mul $t0, $t0, $t1
	sw $t0, -5844($fp)
	lw $t0, -5844($fp)
	lw $t1, -5836($fp)
	add $t0, $t0, $t1
	sw $t0, -5848($fp)
	lw $t0, -5848($fp)
	lw $t1, 0($t0)
	sw $t1, -5852($fp)
	lw $t0, -5852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -5856($fp)
	li $t0, 2
	sw $t0, -5860($fp)
	li $t0, 4
	lw $t1, -5860($fp)
	mul $t0, $t0, $t1
	sw $t0, -5864($fp)
	lw $t0, -5864($fp)
	lw $t1, -5856($fp)
	add $t0, $t0, $t1
	sw $t0, -5868($fp)
	lw $t0, -5868($fp)
	lw $t1, 0($t0)
	sw $t1, -5872($fp)
	lw $t0, -5872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -5876($fp)
	li $t0, 3
	sw $t0, -5880($fp)
	li $t0, 4
	lw $t1, -5880($fp)
	mul $t0, $t0, $t1
	sw $t0, -5884($fp)
	lw $t0, -5884($fp)
	lw $t1, -5876($fp)
	add $t0, $t0, $t1
	sw $t0, -5888($fp)
	lw $t0, -5888($fp)
	lw $t1, 0($t0)
	sw $t1, -5892($fp)
	lw $t0, -5892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -5896($fp)
	li $t0, 4
	sw $t0, -5900($fp)
	li $t0, 4
	lw $t1, -5900($fp)
	mul $t0, $t0, $t1
	sw $t0, -5904($fp)
	lw $t0, -5904($fp)
	lw $t1, -5896($fp)
	add $t0, $t0, $t1
	sw $t0, -5908($fp)
	lw $t0, -5908($fp)
	lw $t1, 0($t0)
	sw $t1, -5912($fp)
	lw $t0, -5912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -5916($fp)
	li $t0, 5
	sw $t0, -5920($fp)
	li $t0, 4
	lw $t1, -5920($fp)
	mul $t0, $t0, $t1
	sw $t0, -5924($fp)
	lw $t0, -5924($fp)
	lw $t1, -5916($fp)
	add $t0, $t0, $t1
	sw $t0, -5928($fp)
	lw $t0, -5928($fp)
	lw $t1, 0($t0)
	sw $t1, -5932($fp)
	lw $t0, -5932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -5936($fp)
	li $t0, 6
	sw $t0, -5940($fp)
	li $t0, 4
	lw $t1, -5940($fp)
	mul $t0, $t0, $t1
	sw $t0, -5944($fp)
	lw $t0, -5944($fp)
	lw $t1, -5936($fp)
	add $t0, $t0, $t1
	sw $t0, -5948($fp)
	lw $t0, -5948($fp)
	lw $t1, 0($t0)
	sw $t1, -5952($fp)
	lw $t0, -5952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -5956($fp)
	li $t0, 7
	sw $t0, -5960($fp)
	li $t0, 4
	lw $t1, -5960($fp)
	mul $t0, $t0, $t1
	sw $t0, -5964($fp)
	lw $t0, -5964($fp)
	lw $t1, -5956($fp)
	add $t0, $t0, $t1
	sw $t0, -5968($fp)
	lw $t0, -5968($fp)
	lw $t1, 0($t0)
	sw $t1, -5972($fp)
	lw $t0, -5972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1664($fp)
	sw $t0, -5976($fp)
	lw $t0, -5976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -5980($fp)
	li $t0, 0
	sw $t0, -5984($fp)
	li $t0, 4
	lw $t1, -5984($fp)
	mul $t0, $t0, $t1
	sw $t0, -5988($fp)
	lw $t0, -5988($fp)
	lw $t1, -5980($fp)
	add $t0, $t0, $t1
	sw $t0, -5992($fp)
	lw $t0, -5992($fp)
	lw $t1, 0($t0)
	sw $t1, -5996($fp)
	lw $t0, -5996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -6000($fp)
	li $t0, 1
	sw $t0, -6004($fp)
	li $t0, 4
	lw $t1, -6004($fp)
	mul $t0, $t0, $t1
	sw $t0, -6008($fp)
	lw $t0, -6008($fp)
	lw $t1, -6000($fp)
	add $t0, $t0, $t1
	sw $t0, -6012($fp)
	lw $t0, -6012($fp)
	lw $t1, 0($t0)
	sw $t1, -6016($fp)
	lw $t0, -6016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6020($fp)
	li $t0, 0
	sw $t0, -6024($fp)
	lw $t0, -1460($fp)
	sw $t0, -6028($fp)
	li $t0, 0
	lw $t1, -6028($fp)
	sub $t0, $t0, $t1
	sw $t0, -6032($fp)
	li $t0, 0
	lw $t1, -6032($fp)
	sub $t0, $t0, $t1
	sw $t0, -6036($fp)
	li $t0, 27323
	sw $t0, -6040($fp)
	li $t0, 63537
	sw $t0, -6044($fp)
	lw $t0, -6040($fp)
	lw $t1, -6044($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6048($fp)
	lw $t0, -6036($fp)
	lw $t1, -6048($fp)
	add $t0, $t0, $t1
	sw $t0, -6052($fp)
	li $t0, 57605
	sw $t0, -6056($fp)
	li $t0, 63908
	sw $t0, -6060($fp)
	lw $t0, -6056($fp)
	lw $t1, -6060($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6064($fp)
	lw $t0, -236($fp)
	sw $t0, -6068($fp)
	lw $t0, -6064($fp)
	lw $t1, -6068($fp)
	sub $t0, $t0, $t1
	sw $t0, -6072($fp)
	lw $t1, -6052($fp)
	lw $t2, -6072($fp)
	bgt $t1, $t2, label336
	j label337
label336:
	li $t0, 1
	sw $t0, -6024($fp)
label337:
	lw $t0, -1196($fp)
	sw $t0, -6076($fp)
	lw $t1, -6024($fp)
	lw $t2, -6076($fp)
	beq $t1, $t2, label334
	j label335
label334:
	li $t0, 1
	sw $t0, -6020($fp)
label335:
	lw $ra, -4($fp)
	lw $v0, -6020($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2732
	li $t0, 18045
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	li $t0, 24495
	sw $t0, -100($fp)
	addi $t0, $fp, -40
	sw $t0, -104($fp)
	li $t0, 0
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
	li $t0, 26343
	sw $t0, -124($fp)
	addi $t0, $fp, -40
	sw $t0, -128($fp)
	li $t0, 1
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
	li $t0, 5200
	sw $t0, -148($fp)
	addi $t0, $fp, -40
	sw $t0, -152($fp)
	li $t0, 2
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
	li $t0, 54796
	sw $t0, -172($fp)
	addi $t0, $fp, -40
	sw $t0, -176($fp)
	li $t0, 3
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
	li $t0, 11537
	sw $t0, -196($fp)
	addi $t0, $fp, -40
	sw $t0, -200($fp)
	li $t0, 4
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
	li $t0, 4003
	sw $t0, -220($fp)
	addi $t0, $fp, -40
	sw $t0, -224($fp)
	li $t0, 5
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
	li $t0, 27378
	sw $t0, -244($fp)
	addi $t0, $fp, -40
	sw $t0, -248($fp)
	li $t0, 6
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
	li $t0, 2793
	sw $t0, -268($fp)
	addi $t0, $fp, -40
	sw $t0, -272($fp)
	li $t0, 7
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
	li $t0, 49512
	sw $t0, -292($fp)
	addi $t0, $fp, -40
	sw $t0, -296($fp)
	li $t0, 8
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
	li $t0, 39485
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	li $t0, 8062
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	li $t0, 52296
	sw $t0, -340($fp)
	addi $t0, $fp, -56
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
	li $t0, 25886
	sw $t0, -364($fp)
	addi $t0, $fp, -56
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
	li $t0, 23576
	sw $t0, -388($fp)
	addi $t0, $fp, -56
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
	li $t0, 40281
	sw $t0, -412($fp)
	addi $t0, $fp, -56
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
	li $t0, 58424
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	li $t0, 14278
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	li $t0, 2075
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	li $t0, 23265
	sw $t0, -472($fp)
	addi $t0, $fp, -84
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
	li $t0, 8793
	sw $t0, -496($fp)
	addi $t0, $fp, -84
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
	li $t0, 1601
	sw $t0, -520($fp)
	addi $t0, $fp, -84
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
	li $t0, 65206
	sw $t0, -544($fp)
	addi $t0, $fp, -84
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
	li $t0, 12498
	sw $t0, -568($fp)
	addi $t0, $fp, -84
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
	li $t0, 233
	sw $t0, -592($fp)
	addi $t0, $fp, -84
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
	li $t0, 3736
	sw $t0, -616($fp)
	addi $t0, $fp, -84
	sw $t0, -620($fp)
	li $t0, 6
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
	li $t0, 855
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	li $t0, 27557
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	li $t0, 1737
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	li $t0, 58460
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	li $t0, 25929
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	li $t0, 19782
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	lw $t0, -92($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -716($fp)
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	li $t0, 3
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
	li $t0, 4
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
	li $t0, 5
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
	li $t0, 6
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
	addi $t0, $fp, -40
	sw $t0, -856($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -876($fp)
	li $t0, 8
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
	lw $t0, -320($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -332($fp)
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -904($fp)
	li $t0, 0
	sw $t0, -908($fp)
	li $t0, 4
	lw $t1, -908($fp)
	mul $t0, $t0, $t1
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	lw $t1, -904($fp)
	add $t0, $t0, $t1
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	lw $t1, 0($t0)
	sw $t1, -920($fp)
	lw $t0, -920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -924($fp)
	li $t0, 1
	sw $t0, -928($fp)
	li $t0, 4
	lw $t1, -928($fp)
	mul $t0, $t0, $t1
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	lw $t1, -924($fp)
	add $t0, $t0, $t1
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	lw $t1, 0($t0)
	sw $t1, -940($fp)
	lw $t0, -940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -944($fp)
	li $t0, 2
	sw $t0, -948($fp)
	li $t0, 4
	lw $t1, -948($fp)
	mul $t0, $t0, $t1
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	lw $t1, -944($fp)
	add $t0, $t0, $t1
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	lw $t1, 0($t0)
	sw $t1, -960($fp)
	lw $t0, -960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -964($fp)
	li $t0, 3
	sw $t0, -968($fp)
	li $t0, 4
	lw $t1, -968($fp)
	mul $t0, $t0, $t1
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	lw $t1, -964($fp)
	add $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	lw $t1, 0($t0)
	sw $t1, -980($fp)
	lw $t0, -980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -440($fp)
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -464($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -996($fp)
	li $t0, 0
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
	addi $t0, $fp, -84
	sw $t0, -1016($fp)
	li $t0, 1
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
	addi $t0, $fp, -84
	sw $t0, -1036($fp)
	li $t0, 2
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
	addi $t0, $fp, -84
	sw $t0, -1056($fp)
	li $t0, 3
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
	addi $t0, $fp, -84
	sw $t0, -1076($fp)
	li $t0, 4
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
	addi $t0, $fp, -84
	sw $t0, -1096($fp)
	li $t0, 5
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
	addi $t0, $fp, -84
	sw $t0, -1116($fp)
	li $t0, 6
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
	lw $t0, -644($fp)
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -656($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -668($fp)
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -680($fp)
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -692($fp)
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -704($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1160($fp)
	li $t0, 0
	sw $t0, -1164($fp)
	li $t0, 34058
	sw $t0, -1168($fp)
	lw $t0, -440($fp)
	sw $t0, -1172($fp)
	lw $t1, -1168($fp)
	lw $t2, -1172($fp)
	ble $t1, $t2, label341
	j label342
label341:
	li $t0, 1
	sw $t0, -1164($fp)
label342:
	li $t0, 0
	sw $t0, -1176($fp)
	addi $t0, $fp, -40
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
	lw $t0, -656($fp)
	sw $t0, -1200($fp)
	lw $t1, -1196($fp)
	lw $t2, -1200($fp)
	beq $t1, $t2, label343
	j label344
label343:
	li $t0, 1
	sw $t0, -1176($fp)
label344:
	li $t0, 6679
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -1208($fp)
	li $t0, 0
	sw $t0, -1212($fp)
	li $t0, 52272
	sw $t0, -1216($fp)
	lw $t1, -1216($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label345
label345:
	li $t0, 1
	sw $t0, -1212($fp)
label346:
	li $t0, 24983
	sw $t0, -1220($fp)
	lw $t0, -1212($fp)
	lw $t1, -1220($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1224($fp)
	li $t0, 0
	sw $t0, -1228($fp)
	lw $t0, -320($fp)
	sw $t0, -1232($fp)
	lw $t1, -1232($fp)
	li $t2, 0
	bne $t1, $t2, label347
	j label349
label349:
	li $t0, 17419
	sw $t0, -1236($fp)
	lw $t1, -1236($fp)
	li $t2, 0
	bne $t1, $t2, label347
	j label348
label347:
	li $t0, 1
	sw $t0, -1228($fp)
label348:
	addi $sp, $sp, -4
	lw $t0, -1164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1228($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1240($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -1240($fp)
	sub $t0, $t0, $t1
	sw $t0, -1244($fp)
	lw $t1, -1244($fp)
	li $t2, 0
	bne $t1, $t2, label340
	j label339
label340:
	li $t0, 0
	sw $t0, -1248($fp)
	lw $t0, -644($fp)
	sw $t0, -1252($fp)
	lw $t1, -1252($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label350
label350:
	li $t0, 1
	sw $t0, -1248($fp)
label351:
	lw $t0, -680($fp)
	sw $t0, -1256($fp)
	lw $t0, -1248($fp)
	lw $t1, -1256($fp)
	sub $t0, $t0, $t1
	sw $t0, -1260($fp)
	li $t0, 1066
	sw $t0, -1264($fp)
	lw $t1, -1260($fp)
	lw $t2, -1264($fp)
	bge $t1, $t2, label338
	j label339
label338:
	li $t0, 1
	sw $t0, -1160($fp)
label339:
	lw $ra, -4($fp)
	lw $v0, -1160($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label352:
	lw $t0, -668($fp)
	sw $t0, -1268($fp)
	addi $t0, $fp, -84
	sw $t0, -1272($fp)
	li $t0, 5
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
	lw $t1, -1268($fp)
	lw $t2, -1288($fp)
	bgt $t1, $t2, label353
	j label354
label353:
	lw $t0, -92($fp)
	sw $t0, -1292($fp)
	lw $t1, -1292($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label356
label355:
	li $t0, 9129
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -1340($fp)
	li $t0, 65259
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	sw $t0, -1352($fp)
	li $t0, 33893
	sw $t0, -1356($fp)
	addi $t0, $fp, -1328
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
	li $t0, 32705
	sw $t0, -1380($fp)
	addi $t0, $fp, -1328
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
	li $t0, 40004
	sw $t0, -1404($fp)
	addi $t0, $fp, -1328
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
	li $t0, 26782
	sw $t0, -1428($fp)
	addi $t0, $fp, -1328
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
	li $t0, 46983
	sw $t0, -1452($fp)
	addi $t0, $fp, -1328
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
	li $t0, 42079
	sw $t0, -1476($fp)
	addi $t0, $fp, -1328
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
	li $t0, 50047
	sw $t0, -1500($fp)
	addi $t0, $fp, -1328
	sw $t0, -1504($fp)
	li $t0, 6
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
	li $t0, 55776
	sw $t0, -1524($fp)
	addi $t0, $fp, -1328
	sw $t0, -1528($fp)
	li $t0, 7
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
	li $t0, 43680
	sw $t0, -1548($fp)
	addi $t0, $fp, -1328
	sw $t0, -1552($fp)
	li $t0, 8
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
	li $t0, 49717
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	sw $t0, -1580($fp)
	li $t0, 2738
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	sw $t0, -1592($fp)
label358:
	addi $t0, $fp, -56
	sw $t0, -1596($fp)
	lw $t0, -704($fp)
	sw $t0, -1600($fp)
	li $t0, 0
	lw $t1, -1600($fp)
	sub $t0, $t0, $t1
	sw $t0, -1604($fp)
	li $t0, 43914
	sw $t0, -1608($fp)
	lw $t0, -1604($fp)
	lw $t1, -1608($fp)
	add $t0, $t0, $t1
	sw $t0, -1612($fp)
	li $t0, 4
	lw $t1, -1612($fp)
	mul $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	lw $t1, -1596($fp)
	add $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	lw $t1, 0($t0)
	sw $t1, -1624($fp)
	li $t0, 0
	sw $t0, -1628($fp)
	li $t0, 53454
	sw $t0, -1632($fp)
	lw $t1, -1632($fp)
	li $t2, 0
	bne $t1, $t2, label362
	j label361
label361:
	li $t0, 1
	sw $t0, -1628($fp)
label362:
	li $t0, 3594
	sw $t0, -1636($fp)
	lw $t0, -1628($fp)
	lw $t1, -1636($fp)
	mul $t0, $t0, $t1
	sw $t0, -1640($fp)
	lw $t0, -680($fp)
	sw $t0, -1644($fp)
	lw $t0, -1640($fp)
	lw $t1, -1644($fp)
	mul $t0, $t0, $t1
	sw $t0, -1648($fp)
	lw $t1, -1624($fp)
	lw $t2, -1648($fp)
	bgt $t1, $t2, label359
	j label360
label359:
	lw $t0, -656($fp)
	sw $t0, -1652($fp)
	li $t0, 5935
	sw $t0, -1656($fp)
	lw $t0, -1652($fp)
	lw $t1, -1656($fp)
	sub $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $t1, -1660($fp)
	li $t2, 0
	bne $t1, $t2, label363
	j label364
label363:
label366:
	lw $t0, -1576($fp)
	sw $t0, -1664($fp)
	addi $t0, $fp, -40
	sw $t0, -1668($fp)
	lw $t0, -656($fp)
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
	li $t0, 13938
	sw $t0, -1688($fp)
	lw $t0, -1684($fp)
	lw $t1, -1688($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1692($fp)
	li $t0, 9438
	sw $t0, -1696($fp)
	lw $t0, -1588($fp)
	sw $t0, -1700($fp)
	lw $t0, -1696($fp)
	lw $t1, -1700($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1704($fp)
	lw $t0, -668($fp)
	sw $t0, -1708($fp)
	lw $t0, -1704($fp)
	lw $t1, -1708($fp)
	mul $t0, $t0, $t1
	sw $t0, -1712($fp)
	addi $t0, $fp, -84
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
	li $t0, 55191
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -1740($fp)
	li $t0, 0
	sw $t0, -1744($fp)
	addi $t0, $fp, -40
	sw $t0, -1748($fp)
	lw $t0, -680($fp)
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
	lw $t1, -1764($fp)
	li $t2, 0
	bne $t1, $t2, label372
	j label371
label371:
	li $t0, 1
	sw $t0, -1744($fp)
label372:
	addi $sp, $sp, -4
	lw $t0, -1692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1744($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1768($fp)
	addi $sp, $sp, 24
	lw $t0, -1664($fp)
	lw $t1, -1768($fp)
	add $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t1, -1772($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label370
label370:
	lw $t0, -1576($fp)
	sw $t0, -1776($fp)
	li $t0, 18600
	sw $t0, -1780($fp)
	lw $t0, -1776($fp)
	lw $t1, -1780($fp)
	mul $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $t1, -1784($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label369
label369:
	lw $t0, -1576($fp)
	sw $t0, -1788($fp)
	li $t0, 34421
	sw $t0, -1792($fp)
	lw $t0, -1788($fp)
	lw $t1, -1792($fp)
	sub $t0, $t0, $t1
	sw $t0, -1796($fp)
	li $t0, 20617
	sw $t0, -1800($fp)
	lw $t0, -1796($fp)
	lw $t1, -1800($fp)
	sub $t0, $t0, $t1
	sw $t0, -1804($fp)
	addi $t0, $fp, -56
	sw $t0, -1808($fp)
	lw $t0, -680($fp)
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
	lw $t1, -1804($fp)
	lw $t2, -1824($fp)
	beq $t1, $t2, label367
	j label368
label367:
	li $t0, 54675
	sw $t0, -1828($fp)
	li $t0, 17939
	sw $t0, -1832($fp)
	lw $t0, -1828($fp)
	lw $t1, -1832($fp)
	add $t0, $t0, $t1
	sw $t0, -1836($fp)
	li $t0, 0
	sw $t0, -1840($fp)
	li $t0, 0
	sw $t0, -1844($fp)
	li $t0, 63407
	sw $t0, -1848($fp)
	lw $t0, -668($fp)
	sw $t0, -1852($fp)
	lw $t1, -1848($fp)
	lw $t2, -1852($fp)
	bgt $t1, $t2, label375
	j label376
label375:
	li $t0, 1
	sw $t0, -1844($fp)
label376:
	lw $t0, -704($fp)
	sw $t0, -1856($fp)
	lw $t1, -1844($fp)
	lw $t2, -1856($fp)
	beq $t1, $t2, label373
	j label374
label373:
	li $t0, 1
	sw $t0, -1840($fp)
label374:
	lw $t0, -656($fp)
	sw $t0, -1860($fp)
	li $t0, 16873
	sw $t0, -1864($fp)
	lw $t0, -1860($fp)
	lw $t1, -1864($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1868($fp)
	addi $sp, $sp, -4
	lw $t0, -1836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1868($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1872($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -84
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
	li $t0, 0
	sw $t0, -1896($fp)
	li $t0, 57822
	sw $t0, -1900($fp)
	lw $t1, -1900($fp)
	li $t2, 0
	bne $t1, $t2, label378
	j label377
label377:
	li $t0, 1
	sw $t0, -1896($fp)
label378:
	li $t0, 41220
	sw $t0, -1904($fp)
	lw $t0, -1896($fp)
	lw $t1, -1904($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1908($fp)
	addi $t0, $fp, -56
	sw $t0, -1912($fp)
	li $t0, 1
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
	li $t0, 0
	lw $t1, -1928($fp)
	sub $t0, $t0, $t1
	sw $t0, -1932($fp)
	addi $t0, $fp, -1328
	sw $t0, -1936($fp)
	li $t0, 4
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
	jal f9
	sw $v0, -1956($fp)
	addi $sp, $sp, 4
	lw $t0, -1348($fp)
	sw $t0, -1960($fp)
	lw $t0, -1956($fp)
	lw $t1, -1960($fp)
	add $t0, $t0, $t1
	sw $t0, -1964($fp)
	li $t0, 0
	sw $t0, -1968($fp)
	li $t0, 27068
	sw $t0, -1972($fp)
	lw $t1, -1972($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label380
label379:
	li $t0, 1
	sw $t0, -1968($fp)
label380:
	addi $sp, $sp, -4
	lw $t0, -1908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1968($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1976($fp)
	addi $sp, $sp, 24
	lw $t0, -1892($fp)
	lw $t1, -1976($fp)
	mul $t0, $t0, $t1
	sw $t0, -1980($fp)
	li $t0, 0
	lw $t1, -1980($fp)
	sub $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t0, -1872($fp)
	lw $t1, -1984($fp)
	mul $t0, $t0, $t1
	sw $t0, -1988($fp)
	lw $ra, -4($fp)
	lw $v0, -1988($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label366
label368:
	j label365
label364:
label381:
	li $t0, 0
	sw $t0, -1992($fp)
	li $t0, 27105
	sw $t0, -1996($fp)
	lw $t1, -1996($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label386
label386:
	lw $t0, -1336($fp)
	sw $t0, -2000($fp)
	lw $t1, -2000($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label384
label384:
	li $t0, 1
	sw $t0, -1992($fp)
label385:
	lw $t0, -1992($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -2004($fp)
	lw $t1, -2004($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label383
label382:
	addi $t0, $fp, -56
	sw $t0, -2008($fp)
	li $t0, 0
	sw $t0, -2012($fp)
	li $t0, 42333
	sw $t0, -2016($fp)
	lw $t1, -2016($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label387
label387:
	li $t0, 1
	sw $t0, -2012($fp)
label388:
	li $t0, 0
	lw $t1, -2012($fp)
	sub $t0, $t0, $t1
	sw $t0, -2020($fp)
	li $t0, 4
	lw $t1, -2020($fp)
	mul $t0, $t0, $t1
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	lw $t1, -2008($fp)
	add $t0, $t0, $t1
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	lw $t1, 0($t0)
	sw $t1, -2032($fp)
	li $t0, 0
	lw $t1, -2032($fp)
	sub $t0, $t0, $t1
	sw $t0, -2036($fp)
	j label381
label383:
label365:
	j label358
label360:
	li $t0, 31461
	sw $t0, -2040($fp)
	j label357
label356:
	li $t0, 0
	sw $t0, -2044($fp)
	addi $t0, $fp, -40
	sw $t0, -2048($fp)
	li $t0, 0
	sw $t0, -2052($fp)
	lw $t0, -680($fp)
	sw $t0, -2056($fp)
	lw $t1, -2056($fp)
	li $t2, 0
	bne $t1, $t2, label392
	j label391
label391:
	li $t0, 1
	sw $t0, -2052($fp)
label392:
	li $t0, 4
	lw $t1, -2052($fp)
	mul $t0, $t0, $t1
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	lw $t1, -2048($fp)
	add $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	lw $t1, 0($t0)
	sw $t1, -2068($fp)
	lw $t0, -464($fp)
	sw $t0, -2072($fp)
	lw $t0, -2068($fp)
	lw $t1, -2072($fp)
	sub $t0, $t0, $t1
	sw $t0, -2076($fp)
	li $t0, 5249
	sw $t0, -2080($fp)
	li $t0, 26515
	sw $t0, -2084($fp)
	lw $t0, -2080($fp)
	lw $t1, -2084($fp)
	mul $t0, $t0, $t1
	sw $t0, -2088($fp)
	lw $t1, -2076($fp)
	lw $t2, -2088($fp)
	bge $t1, $t2, label389
	j label390
label389:
	li $t0, 1
	sw $t0, -2044($fp)
label390:
	lw $ra, -4($fp)
	lw $v0, -2044($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label357:
	j label352
label354:
	lw $t0, -92($fp)
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
	sw $t0, -2256($fp)
	li $t0, 8
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
	lw $t0, -320($fp)
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -332($fp)
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2284($fp)
	li $t0, 0
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
	addi $t0, $fp, -56
	sw $t0, -2304($fp)
	li $t0, 1
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
	addi $t0, $fp, -56
	sw $t0, -2324($fp)
	li $t0, 2
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
	addi $t0, $fp, -56
	sw $t0, -2344($fp)
	li $t0, 3
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
	lw $t0, -440($fp)
	sw $t0, -2364($fp)
	lw $t0, -2364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -464($fp)
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -2376($fp)
	li $t0, 0
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
	lw $t0, -2392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -2396($fp)
	li $t0, 1
	sw $t0, -2400($fp)
	li $t0, 4
	lw $t1, -2400($fp)
	mul $t0, $t0, $t1
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	lw $t1, -2396($fp)
	add $t0, $t0, $t1
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	lw $t1, 0($t0)
	sw $t1, -2412($fp)
	lw $t0, -2412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -2416($fp)
	li $t0, 2
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
	lw $t0, -2432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -2436($fp)
	li $t0, 3
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
	lw $t0, -2452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -2456($fp)
	li $t0, 4
	sw $t0, -2460($fp)
	li $t0, 4
	lw $t1, -2460($fp)
	mul $t0, $t0, $t1
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	lw $t1, -2456($fp)
	add $t0, $t0, $t1
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	lw $t1, 0($t0)
	sw $t1, -2472($fp)
	lw $t0, -2472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -2476($fp)
	li $t0, 5
	sw $t0, -2480($fp)
	li $t0, 4
	lw $t1, -2480($fp)
	mul $t0, $t0, $t1
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	lw $t1, -2476($fp)
	add $t0, $t0, $t1
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	lw $t1, 0($t0)
	sw $t1, -2492($fp)
	lw $t0, -2492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -2496($fp)
	li $t0, 6
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
	lw $t0, -2512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -644($fp)
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -656($fp)
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -668($fp)
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -680($fp)
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -692($fp)
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -704($fp)
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2540($fp)
	lw $t0, -668($fp)
	sw $t0, -2544($fp)
	li $t0, 0
	sw $t0, -2548($fp)
	li $t0, 13526
	sw $t0, -2552($fp)
	lw $t1, -2552($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label395
label397:
	lw $t0, -92($fp)
	sw $t0, -2556($fp)
	lw $t1, -2556($fp)
	li $t2, 0
	bne $t1, $t2, label395
	j label396
label395:
	li $t0, 1
	sw $t0, -2548($fp)
label396:
	li $t0, 0
	sw $t0, -2560($fp)
	jal f9
	sw $v0, -2564($fp)
	addi $sp, $sp, 4
	lw $t1, -2564($fp)
	li $t2, 0
	bne $t1, $t2, label398
	j label400
label400:
	li $t0, 21426
	sw $t0, -2568($fp)
	lw $t1, -2568($fp)
	li $t2, 0
	bne $t1, $t2, label398
	j label399
label398:
	li $t0, 1
	sw $t0, -2560($fp)
label399:
	li $t0, 34312
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -2576($fp)
	li $t0, 0
	sw $t0, -2580($fp)
	li $t0, 55098
	sw $t0, -2584($fp)
	lw $t0, -668($fp)
	sw $t0, -2588($fp)
	lw $t0, -2584($fp)
	lw $t1, -2588($fp)
	mul $t0, $t0, $t1
	sw $t0, -2592($fp)
	lw $t1, -2592($fp)
	li $t2, 0
	bne $t1, $t2, label403
	j label402
label403:
	li $t0, 4088
	sw $t0, -2596($fp)
	lw $t1, -2596($fp)
	li $t2, 0
	bne $t1, $t2, label401
	j label402
label401:
	li $t0, 1
	sw $t0, -2580($fp)
label402:
	li $t0, 0
	sw $t0, -2600($fp)
	lw $t0, -656($fp)
	sw $t0, -2604($fp)
	lw $t0, -332($fp)
	sw $t0, -2608($fp)
	lw $t0, -2604($fp)
	lw $t1, -2608($fp)
	sub $t0, $t0, $t1
	sw $t0, -2612($fp)
	lw $t0, -332($fp)
	sw $t0, -2616($fp)
	lw $t1, -2612($fp)
	lw $t2, -2616($fp)
	beq $t1, $t2, label404
	j label405
label404:
	li $t0, 1
	sw $t0, -2600($fp)
label405:
	addi $t0, $fp, -56
	sw $t0, -2620($fp)
	lw $t0, -332($fp)
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
	li $t0, 0
	sw $t0, -2640($fp)
	li $t0, 14433
	sw $t0, -2644($fp)
	lw $t0, -668($fp)
	sw $t0, -2648($fp)
	lw $t1, -2644($fp)
	lw $t2, -2648($fp)
	blt $t1, $t2, label406
	j label408
label408:
	li $t0, 37793
	sw $t0, -2652($fp)
	lw $t1, -2652($fp)
	li $t2, 0
	bne $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -2640($fp)
label407:
	li $t0, 49163
	sw $t0, -2656($fp)
	lw $t0, -704($fp)
	sw $t0, -2660($fp)
	li $t0, 34199
	sw $t0, -2664($fp)
	lw $t0, -2660($fp)
	lw $t1, -2664($fp)
	add $t0, $t0, $t1
	sw $t0, -2668($fp)
	addi $sp, $sp, -4
	lw $t0, -2600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2668($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2672($fp)
	addi $sp, $sp, 24
	lw $t0, -680($fp)
	sw $t0, -2676($fp)
	li $t0, 0
	lw $t1, -2676($fp)
	sub $t0, $t0, $t1
	sw $t0, -2680($fp)
	li $t0, 0
	lw $t1, -2680($fp)
	sub $t0, $t0, $t1
	sw $t0, -2684($fp)
	addi $sp, $sp, -4
	lw $t0, -2560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2684($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2688($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -2692($fp)
	jal f9
	sw $v0, -2696($fp)
	addi $sp, $sp, 4
	lw $t1, -2696($fp)
	li $t2, 0
	bne $t1, $t2, label409
	j label411
label411:
	lw $t0, -320($fp)
	sw $t0, -2700($fp)
	lw $t1, -2700($fp)
	li $t2, 0
	bne $t1, $t2, label409
	j label410
label409:
	li $t0, 1
	sw $t0, -2692($fp)
label410:
	lw $t0, -452($fp)
	sw $t0, -2704($fp)
	addi $sp, $sp, -4
	lw $t0, -2544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2704($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2708($fp)
	addi $sp, $sp, 24
	li $t0, 48250
	sw $t0, -2712($fp)
	lw $t1, -2708($fp)
	lw $t2, -2712($fp)
	blt $t1, $t2, label393
	j label394
label393:
	li $t0, 1
	sw $t0, -2540($fp)
label394:
	li $t0, 0
	sw $t0, -2716($fp)
	lw $t0, -320($fp)
	sw $t0, -2720($fp)
	lw $t1, -2720($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label415
label415:
	lw $t0, -692($fp)
	sw $t0, -2724($fp)
	lw $t1, -2724($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label414
label414:
	lw $t0, -644($fp)
	sw $t0, -2728($fp)
	lw $t1, -2728($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label413
label412:
	li $t0, 1
	sw $t0, -2716($fp)
label413:
	lw $t0, -704($fp)
	sw $t0, -2732($fp)
	addi $sp, $sp, -4
	lw $t0, -2540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2732($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2736($fp)
	addi $sp, $sp, 16
	lw $ra, -4($fp)
	lw $v0, -2736($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -124
	li $t0, 40026
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 47947
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 1675
	sw $t0, -32($fp)
	li $t0, 0
	sw $t0, -36($fp)
	li $t0, 0
	sw $t0, -40($fp)
	lw $t0, -24($fp)
	sw $t0, -44($fp)
	lw $t0, -12($fp)
	sw $t0, -48($fp)
	lw $t1, -44($fp)
	lw $t2, -48($fp)
	blt $t1, $t2, label418
	j label419
label418:
	li $t0, 1
	sw $t0, -40($fp)
label419:
	lw $t0, -24($fp)
	sw $t0, -52($fp)
	lw $t1, -40($fp)
	lw $t2, -52($fp)
	bne $t1, $t2, label416
	j label417
label416:
	li $t0, 1
	sw $t0, -36($fp)
label417:
	li $t0, 0
	sw $t0, -56($fp)
	li $t0, 56653
	sw $t0, -60($fp)
	li $t0, 1
	sw $t0, -64($fp)
	lw $t0, -60($fp)
	lw $t1, -64($fp)
	mul $t0, $t0, $t1
	sw $t0, -68($fp)
	lw $t1, -68($fp)
	li $t2, 0
	bne $t1, $t2, label420
	j label422
label422:
	li $t0, 36371
	sw $t0, -72($fp)
	lw $t1, -72($fp)
	li $t2, 0
	bne $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -56($fp)
label421:
	li $t0, 0
	sw $t0, -76($fp)
	li $t0, 45819
	sw $t0, -80($fp)
	li $t0, 58007
	sw $t0, -84($fp)
	lw $t0, -80($fp)
	lw $t1, -84($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -88($fp)
	lw $t1, -88($fp)
	li $t2, 0
	bne $t1, $t2, label425
	j label424
label425:
	li $t0, 9303
	sw $t0, -92($fp)
	lw $t1, -92($fp)
	li $t2, 0
	bne $t1, $t2, label423
	j label424
label423:
	li $t0, 1
	sw $t0, -76($fp)
label424:
	li $t0, 0
	sw $t0, -96($fp)
	li $t0, 3331
	sw $t0, -100($fp)
	li $t0, 56899
	sw $t0, -104($fp)
	lw $t0, -100($fp)
	lw $t1, -104($fp)
	sub $t0, $t0, $t1
	sw $t0, -108($fp)
	lw $t0, -24($fp)
	sw $t0, -112($fp)
	lw $t1, -108($fp)
	lw $t2, -112($fp)
	bgt $t1, $t2, label426
	j label427
label426:
	li $t0, 1
	sw $t0, -96($fp)
label427:
	addi $sp, $sp, -4
	lw $t0, -32($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -36($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -56($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -76($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -96($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -116($fp)
	addi $sp, $sp, 24
	lw $t0, -12($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 20658
	sw $t0, -128($fp)
	lw $ra, -4($fp)
	lw $v0, -128($fp)
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
