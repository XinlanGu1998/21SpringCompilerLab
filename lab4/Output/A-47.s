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
	addi $sp, $sp, -4304
	li $t0, 2386
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	li $t0, 64079
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	li $t0, 49089
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	li $t0, 46440
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	li $t0, 52677
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	li $t0, 36139
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	li $t0, 36657
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	li $t0, 64907
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	li $t0, 14906
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	li $t0, 53424
	sw $t0, -192($fp)
	addi $t0, $fp, -20
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
	li $t0, 9332
	sw $t0, -216($fp)
	addi $t0, $fp, -20
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
	li $t0, 49367
	sw $t0, -240($fp)
	addi $t0, $fp, -20
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
	li $t0, 64125
	sw $t0, -264($fp)
	addi $t0, $fp, -20
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
	li $t0, 53998
	sw $t0, -288($fp)
	addi $t0, $fp, -44
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
	li $t0, 16780
	sw $t0, -312($fp)
	addi $t0, $fp, -44
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
	li $t0, 25810
	sw $t0, -336($fp)
	addi $t0, $fp, -44
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
	li $t0, 23224
	sw $t0, -360($fp)
	addi $t0, $fp, -44
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
	li $t0, 56959
	sw $t0, -384($fp)
	addi $t0, $fp, -44
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
	li $t0, 56037
	sw $t0, -408($fp)
	addi $t0, $fp, -44
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
	li $t0, 31364
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	li $t0, 31227
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	li $t0, 38553
	sw $t0, -456($fp)
	addi $t0, $fp, -48
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
	li $t0, 2875
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	li $t0, 23458
	sw $t0, -492($fp)
	addi $t0, $fp, -76
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
	li $t0, 16863
	sw $t0, -516($fp)
	addi $t0, $fp, -76
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
	li $t0, 57443
	sw $t0, -540($fp)
	addi $t0, $fp, -76
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
	li $t0, 42584
	sw $t0, -564($fp)
	addi $t0, $fp, -76
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
	li $t0, 59662
	sw $t0, -588($fp)
	addi $t0, $fp, -76
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
	li $t0, 3840
	sw $t0, -612($fp)
	addi $t0, $fp, -76
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
	li $t0, 33175
	sw $t0, -636($fp)
	addi $t0, $fp, -76
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
	li $t0, 26194
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	li $t0, 6226
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	li $t0, 31718
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	li $t0, 9748
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	li $t0, 52666
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	li $t0, 18860
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	li $t0, 45887
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	li $t0, 23787
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	li $t0, 18231
	sw $t0, -756($fp)
	addi $t0, $fp, -80
	sw $t0, -760($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -780($fp)
	li $t0, 60793
	sw $t0, -784($fp)
	lw $t0, -724($fp)
	sw $t0, -788($fp)
	lw $t0, -784($fp)
	lw $t1, -788($fp)
	mul $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $t0, -736($fp)
	sw $t0, -796($fp)
	li $t0, 0
	lw $t1, -796($fp)
	sub $t0, $t0, $t1
	sw $t0, -800($fp)
	lw $t1, -792($fp)
	lw $t2, -800($fp)
	bne $t1, $t2, label121
	j label124
label124:
	addi $t0, $fp, -44
	sw $t0, -804($fp)
	lw $t0, -124($fp)
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
	lw $t1, -820($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label123
label123:
	lw $t0, -664($fp)
	sw $t0, -824($fp)
	lw $t1, -824($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label121
label121:
	li $t0, 1
	sw $t0, -780($fp)
label122:
	li $t0, 11676
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -856($fp)
	li $t0, 27563
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -868($fp)
	li $t0, 44625
	sw $t0, -872($fp)
	addi $t0, $fp, -844
	sw $t0, -876($fp)
	li $t0, 0
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
	li $t0, 10265
	sw $t0, -896($fp)
	addi $t0, $fp, -844
	sw $t0, -900($fp)
	li $t0, 1
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
	li $t0, 16025
	sw $t0, -920($fp)
	addi $t0, $fp, -844
	sw $t0, -924($fp)
	li $t0, 2
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
	li $t0, 61405
	sw $t0, -944($fp)
	addi $t0, $fp, -844
	sw $t0, -948($fp)
	li $t0, 3
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
	li $t0, 36075
	sw $t0, -968($fp)
	addi $t0, $fp, -844
	sw $t0, -972($fp)
	li $t0, 4
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
	li $t0, 39249
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -1000($fp)
	li $t0, 52828
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	sw $t0, -1012($fp)
	li $t0, 26577
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	sw $t0, -1024($fp)
	lw $t0, 4($fp)
	sw $t0, -1028($fp)
	addi $t0, $fp, -80
	sw $t0, -1032($fp)
	li $t0, 0
	sw $t0, -1036($fp)
	li $t0, 5077
	sw $t0, -1040($fp)
	li $t0, 18519
	sw $t0, -1044($fp)
	lw $t1, -1040($fp)
	lw $t2, -1044($fp)
	bge $t1, $t2, label125
	j label126
label125:
	li $t0, 1
	sw $t0, -1036($fp)
label126:
	li $t0, 4
	lw $t1, -1036($fp)
	mul $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	lw $t1, -1032($fp)
	add $t0, $t0, $t1
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	lw $t1, 0($t0)
	sw $t1, -1056($fp)
	lw $t0, -1028($fp)
	lw $t1, -1056($fp)
	add $t0, $t0, $t1
	sw $t0, -1060($fp)
	li $t0, 65130
	sw $t0, -1064($fp)
	li $t0, 0
	sw $t0, -1068($fp)
	li $t0, 0
	sw $t0, -1072($fp)
	li $t0, 7952
	sw $t0, -1076($fp)
	lw $t1, -1076($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label130
label130:
	li $t0, 1
	sw $t0, -1072($fp)
label131:
	li $t0, 0
	lw $t1, -1072($fp)
	sub $t0, $t0, $t1
	sw $t0, -1080($fp)
	lw $t1, -1080($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label129
label129:
	li $t0, 0
	sw $t0, -1084($fp)
	lw $t0, -748($fp)
	sw $t0, -1088($fp)
	li $t0, 41978
	sw $t0, -1092($fp)
	lw $t1, -1088($fp)
	lw $t2, -1092($fp)
	bge $t1, $t2, label132
	j label133
label132:
	li $t0, 1
	sw $t0, -1084($fp)
label133:
	li $t0, 0
	sw $t0, -1096($fp)
	li $t0, 0
	sw $t0, -1100($fp)
	lw $t0, -484($fp)
	sw $t0, -1104($fp)
	lw $t0, -484($fp)
	sw $t0, -1108($fp)
	lw $t1, -1104($fp)
	lw $t2, -1108($fp)
	bge $t1, $t2, label136
	j label137
label136:
	li $t0, 1
	sw $t0, -1100($fp)
label137:
	lw $t0, -664($fp)
	sw $t0, -1112($fp)
	lw $t1, -1100($fp)
	lw $t2, -1112($fp)
	beq $t1, $t2, label134
	j label135
label134:
	li $t0, 1
	sw $t0, -1096($fp)
label135:
	addi $sp, $sp, -4
	lw $t0, -1096($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1116($fp)
	addi $sp, $sp, 8
	lw $t1, -1084($fp)
	lw $t2, -1116($fp)
	blt $t1, $t2, label127
	j label128
label127:
	li $t0, 1
	sw $t0, -1068($fp)
label128:
	lw $t0, -1020($fp)
	sw $t0, -1120($fp)
	li $t0, 16457
	sw $t0, -1124($fp)
	lw $t0, -1120($fp)
	lw $t1, -1124($fp)
	add $t0, $t0, $t1
	sw $t0, -1128($fp)
	li $t0, 65396
	sw $t0, -1132($fp)
	lw $t1, -1128($fp)
	lw $t2, -1132($fp)
	bge $t1, $t2, label141
	j label139
label141:
	lw $t0, -484($fp)
	sw $t0, -1136($fp)
	li $t0, 0
	sw $t0, -1140($fp)
	li $t0, 0
	sw $t0, -1144($fp)
	li $t0, 0
	sw $t0, -1148($fp)
	lw $t0, -448($fp)
	sw $t0, -1152($fp)
	lw $t1, -1152($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label146
label146:
	li $t0, 1
	sw $t0, -1148($fp)
label147:
	li $t0, 19026
	sw $t0, -1156($fp)
	lw $t1, -1148($fp)
	lw $t2, -1156($fp)
	bge $t1, $t2, label144
	j label145
label144:
	li $t0, 1
	sw $t0, -1144($fp)
label145:
	addi $sp, $sp, -4
	lw $t0, -1144($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1160($fp)
	addi $sp, $sp, 8
	li $t0, 10583
	sw $t0, -1164($fp)
	lw $t1, -1160($fp)
	lw $t2, -1164($fp)
	bne $t1, $t2, label142
	j label143
label142:
	li $t0, 1
	sw $t0, -1140($fp)
label143:
	addi $sp, $sp, -4
	lw $t0, -1140($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1168($fp)
	addi $sp, $sp, 8
	lw $t0, -1136($fp)
	lw $t1, -1168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1172($fp)
	li $t0, 0
	lw $t1, -1172($fp)
	sub $t0, $t0, $t1
	sw $t0, -1176($fp)
	lw $t1, -1176($fp)
	li $t2, 0
	bne $t1, $t2, label138
	j label139
label138:
	li $t0, 0
	sw $t0, -1180($fp)
	addi $t0, $fp, -76
	sw $t0, -1184($fp)
	li $t0, 2
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
	lw $t1, -1200($fp)
	li $t2, 0
	bne $t1, $t2, label149
	j label150
label150:
	addi $t0, $fp, -76
	sw $t0, -1204($fp)
	lw $t0, -688($fp)
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
	li $t0, 0
	lw $t1, -1220($fp)
	sub $t0, $t0, $t1
	sw $t0, -1224($fp)
	addi $t0, $fp, -80
	sw $t0, -1228($fp)
	lw $t0, -996($fp)
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
	addi $sp, $sp, -4
	lw $t0, -1244($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1248($fp)
	addi $sp, $sp, 8
	lw $t1, -1224($fp)
	lw $t2, -1248($fp)
	beq $t1, $t2, label148
	j label149
label148:
	li $t0, 1
	sw $t0, -1180($fp)
label149:
	j label140
label139:
	li $t0, 0
	sw $t0, -1252($fp)
	li $t0, 0
	sw $t0, -1256($fp)
	li $t0, 0
	sw $t0, -1260($fp)
	lw $t0, -124($fp)
	sw $t0, -1264($fp)
	lw $t1, -1264($fp)
	li $t2, 0
	bne $t1, $t2, label156
	j label155
label155:
	li $t0, 1
	sw $t0, -1260($fp)
label156:
	lw $t0, -100($fp)
	sw $t0, -1268($fp)
	lw $t0, -1260($fp)
	lw $t1, -1268($fp)
	sub $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t0, -112($fp)
	sw $t0, -1276($fp)
	lw $t0, -852($fp)
	sw $t0, -1280($fp)
	lw $t0, -1276($fp)
	lw $t1, -1280($fp)
	mul $t0, $t0, $t1
	sw $t0, -1284($fp)
	lw $t0, -1272($fp)
	lw $t1, -1284($fp)
	sub $t0, $t0, $t1
	sw $t0, -1288($fp)
	li $t0, 36777
	sw $t0, -1292($fp)
	lw $t1, -1288($fp)
	lw $t2, -1292($fp)
	bne $t1, $t2, label153
	j label154
label153:
	li $t0, 1
	sw $t0, -1256($fp)
label154:
	lw $t0, -484($fp)
	sw $t0, -1296($fp)
	li $t0, 9926
	sw $t0, -1300($fp)
	lw $t0, -1296($fp)
	lw $t1, -1300($fp)
	mul $t0, $t0, $t1
	sw $t0, -1304($fp)
	lw $t0, -1008($fp)
	sw $t0, -1308($fp)
	li $t0, 0
	lw $t1, -1308($fp)
	sub $t0, $t0, $t1
	sw $t0, -1312($fp)
	lw $t0, -1304($fp)
	lw $t1, -1312($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1316($fp)
	lw $t1, -1256($fp)
	lw $t2, -1316($fp)
	beq $t1, $t2, label151
	j label152
label151:
	li $t0, 1
	sw $t0, -1252($fp)
label152:
label140:
label157:
	lw $t0, -160($fp)
	sw $t0, -1320($fp)
	lw $t1, -1320($fp)
	li $t2, 0
	bne $t1, $t2, label158
	j label159
label158:
	addi $t0, $fp, -20
	sw $t0, -1324($fp)
	li $t0, 0
	sw $t0, -1328($fp)
	lw $t0, -172($fp)
	sw $t0, -1332($fp)
	lw $t0, -852($fp)
	sw $t0, -1336($fp)
	lw $t1, -1332($fp)
	lw $t2, -1336($fp)
	blt $t1, $t2, label160
	j label161
label160:
	li $t0, 1
	sw $t0, -1328($fp)
label161:
	li $t0, 4
	lw $t1, -1328($fp)
	mul $t0, $t0, $t1
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	lw $t1, -1324($fp)
	add $t0, $t0, $t1
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	lw $t1, 0($t0)
	sw $t1, -1348($fp)
	li $t0, 18384
	sw $t0, -1352($fp)
	li $t0, 46525
	sw $t0, -1356($fp)
	lw $t0, -1352($fp)
	lw $t1, -1356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1360($fp)
	lw $t0, -864($fp)
	sw $t0, -1364($fp)
	lw $t0, -1360($fp)
	lw $t1, -1364($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1368($fp)
	lw $t0, -1348($fp)
	lw $t1, -1368($fp)
	add $t0, $t0, $t1
	sw $t0, -1372($fp)
	addi $t0, $fp, -44
	sw $t0, -1376($fp)
	li $t0, 62592
	sw $t0, -1380($fp)
	lw $t0, -736($fp)
	sw $t0, -1384($fp)
	lw $t0, -1380($fp)
	lw $t1, -1384($fp)
	sub $t0, $t0, $t1
	sw $t0, -1388($fp)
	li $t0, 4
	lw $t1, -1388($fp)
	mul $t0, $t0, $t1
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	lw $t1, -1376($fp)
	add $t0, $t0, $t1
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	lw $t1, 0($t0)
	sw $t1, -1400($fp)
	lw $t0, -1372($fp)
	lw $t1, -1400($fp)
	sub $t0, $t0, $t1
	sw $t0, -1404($fp)
	j label157
label159:
	li $t0, 0
	sw $t0, -1408($fp)
	lw $t0, -996($fp)
	sw $t0, -1412($fp)
	li $t0, 37244
	sw $t0, -1416($fp)
	lw $t1, -1412($fp)
	lw $t2, -1416($fp)
	bne $t1, $t2, label166
	j label167
label166:
	li $t0, 1
	sw $t0, -1408($fp)
label167:
	addi $sp, $sp, -4
	lw $t0, -1408($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1420($fp)
	addi $sp, $sp, 8
	lw $t1, -1420($fp)
	li $t2, 0
	bne $t1, $t2, label162
	j label165
label165:
	li $t0, 26877
	sw $t0, -1424($fp)
	li $t0, 20844
	sw $t0, -1428($fp)
	lw $t0, -1424($fp)
	lw $t1, -1428($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1432($fp)
	lw $t0, -676($fp)
	sw $t0, -1436($fp)
	lw $t0, -1432($fp)
	lw $t1, -1436($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1440($fp)
	li $t0, 55475
	sw $t0, -1444($fp)
	lw $t1, -1440($fp)
	lw $t2, -1444($fp)
	bgt $t1, $t2, label162
	j label163
label162:
	li $t0, 22134
	sw $t0, -1448($fp)
	li $t0, 32520
	sw $t0, -1452($fp)
	lw $t0, -1448($fp)
	lw $t1, -1452($fp)
	mul $t0, $t0, $t1
	sw $t0, -1456($fp)
	li $t0, 0
	lw $t1, -1456($fp)
	sub $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -1464($fp)
	lw $t1, -1464($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label169
label168:
	addi $t0, $fp, -844
	sw $t0, -1468($fp)
	li $t0, 0
	sw $t0, -1472($fp)
	lw $t0, -160($fp)
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -1480($fp)
	addi $sp, $sp, -4
	lw $t0, -1480($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1484($fp)
	addi $sp, $sp, 8
	lw $t1, -1484($fp)
	li $t2, 0
	bne $t1, $t2, label173
	j label172
label173:
	li $t0, 17502
	sw $t0, -1488($fp)
	lw $t1, -1488($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label172
label171:
	li $t0, 1
	sw $t0, -1472($fp)
label172:
	addi $sp, $sp, -4
	lw $t0, -1472($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1492($fp)
	addi $sp, $sp, 8
	li $t0, 4
	lw $t1, -1492($fp)
	mul $t0, $t0, $t1
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	lw $t1, -1468($fp)
	add $t0, $t0, $t1
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	lw $t1, 0($t0)
	sw $t1, -1504($fp)
	j label170
label169:
	li $t0, 0
	sw $t0, -1508($fp)
	li $t0, 0
	sw $t0, -1512($fp)
	li $t0, 0
	sw $t0, -1516($fp)
	lw $t0, -124($fp)
	sw $t0, -1520($fp)
	lw $t0, -172($fp)
	sw $t0, -1524($fp)
	lw $t1, -1520($fp)
	lw $t2, -1524($fp)
	ble $t1, $t2, label180
	j label181
label180:
	li $t0, 1
	sw $t0, -1516($fp)
label181:
	lw $t0, 4($fp)
	sw $t0, -1528($fp)
	lw $t1, -1516($fp)
	lw $t2, -1528($fp)
	bgt $t1, $t2, label178
	j label179
label178:
	li $t0, 1
	sw $t0, -1512($fp)
label179:
	addi $sp, $sp, -4
	lw $t0, -1512($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1532($fp)
	addi $sp, $sp, 8
	lw $t1, -1532($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label176
label177:
	li $t0, 1223
	sw $t0, -1536($fp)
	lw $t1, -1536($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label176
label176:
	li $t0, 42785
	sw $t0, -1540($fp)
	lw $t1, -1540($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label175
label174:
	li $t0, 1
	sw $t0, -1508($fp)
label175:
	lw $t0, -1508($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -1544($fp)
label170:
	j label164
label163:
	li $t0, 33527
	sw $t0, -1548($fp)
	lw $t0, -88($fp)
	sw $t0, -1552($fp)
	lw $t0, -1548($fp)
	lw $t1, -1552($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1556($fp)
label164:
	lw $t0, -100($fp)
	sw $t0, -1560($fp)
	li $t0, 0
	sw $t0, -1564($fp)
	li $t0, 0
	sw $t0, -1568($fp)
	li $t0, 62628
	sw $t0, -1572($fp)
	li $t0, 0
	lw $t1, -1572($fp)
	sub $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t1, -1576($fp)
	li $t2, 0
	bne $t1, $t2, label189
	j label188
label189:
	lw $t0, -148($fp)
	sw $t0, -1580($fp)
	lw $t1, -1580($fp)
	li $t2, 0
	bne $t1, $t2, label187
	j label188
label187:
	li $t0, 1
	sw $t0, -1568($fp)
label188:
	addi $sp, $sp, -4
	lw $t0, -1568($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1584($fp)
	addi $sp, $sp, 8
	lw $t1, -1584($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label185
label185:
	li $t0, 1
	sw $t0, -1564($fp)
label186:
	lw $t0, -1560($fp)
	lw $t1, -1564($fp)
	mul $t0, $t0, $t1
	sw $t0, -1588($fp)
	li $t0, 0
	sw $t0, -1592($fp)
	addi $t0, $fp, -80
	sw $t0, -1596($fp)
	lw $t0, -124($fp)
	sw $t0, -1600($fp)
	li $t0, 4
	lw $t1, -1600($fp)
	mul $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	lw $t1, -1596($fp)
	add $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	lw $t1, 0($t0)
	sw $t1, -1612($fp)
	li $t0, 0
	lw $t1, -1612($fp)
	sub $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t1, -1616($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label190
label190:
	li $t0, 1
	sw $t0, -1592($fp)
label191:
	lw $t1, -1588($fp)
	lw $t2, -1592($fp)
	beq $t1, $t2, label182
	j label183
label182:
	li $t0, 13324
	sw $t0, -1620($fp)
	li $t0, 0
	sw $t0, -1624($fp)
	addi $t0, $fp, -44
	sw $t0, -1628($fp)
	lw $t0, -184($fp)
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
	lw $t1, -1644($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label195
label195:
	li $t0, 1
	sw $t0, -1624($fp)
label196:
	addi $sp, $sp, -4
	lw $t0, -1624($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1648($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -1652($fp)
	li $t0, 0
	sw $t0, -1656($fp)
	lw $t0, -748($fp)
	sw $t0, -1660($fp)
	lw $t1, -1660($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label198
label199:
	li $t0, 7240
	sw $t0, -1664($fp)
	lw $t1, -1664($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label198
label197:
	li $t0, 1
	sw $t0, -1656($fp)
label198:
	li $t0, 4
	lw $t1, -1656($fp)
	mul $t0, $t0, $t1
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	lw $t1, -1652($fp)
	add $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	lw $t1, 0($t0)
	sw $t1, -1676($fp)
	lw $t0, -1648($fp)
	lw $t1, -1676($fp)
	mul $t0, $t0, $t1
	sw $t0, -1680($fp)
	li $t0, 0
	lw $t1, -1680($fp)
	sub $t0, $t0, $t1
	sw $t0, -1684($fp)
	lw $t0, -1620($fp)
	lw $t1, -1684($fp)
	mul $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t1, -1688($fp)
	li $t2, 0
	bne $t1, $t2, label192
	j label193
label192:
	addi $t0, $fp, -44
	sw $t0, -1692($fp)
	li $t0, 0
	sw $t0, -1696($fp)
	lw $t0, -172($fp)
	sw $t0, -1700($fp)
	li $t0, 0
	lw $t1, -1700($fp)
	sub $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t1, -1704($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label202
label202:
	li $t0, 49921
	sw $t0, -1708($fp)
	lw $t1, -1708($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -1696($fp)
label201:
	li $t0, 4
	lw $t1, -1696($fp)
	mul $t0, $t0, $t1
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	lw $t1, -1692($fp)
	add $t0, $t0, $t1
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	lw $t1, 0($t0)
	sw $t1, -1720($fp)
	lw $t0, -88($fp)
	sw $t0, -1724($fp)
	lw $t0, -1720($fp)
	lw $t1, -1724($fp)
	add $t0, $t0, $t1
	sw $t0, -1728($fp)
	lw $ra, -4($fp)
	lw $v0, -1728($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label194
label193:
	li $t0, 0
	sw $t0, -1732($fp)
	li $t0, 39901
	sw $t0, -1736($fp)
	lw $t0, -124($fp)
	sw $t0, -1740($fp)
	lw $t0, -1736($fp)
	lw $t1, -1740($fp)
	add $t0, $t0, $t1
	sw $t0, -1744($fp)
	li $t0, 12318
	sw $t0, -1748($fp)
	lw $t1, -1744($fp)
	lw $t2, -1748($fp)
	ble $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -1732($fp)
label207:
	addi $sp, $sp, -4
	lw $t0, -1732($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1752($fp)
	addi $sp, $sp, 8
	lw $t1, -1752($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label204
label203:
	addi $t0, $fp, -20
	sw $t0, -1756($fp)
	li $t0, 0
	sw $t0, -1760($fp)
	lw $t0, -436($fp)
	sw $t0, -1764($fp)
	lw $t0, -112($fp)
	sw $t0, -1768($fp)
	lw $t1, -1764($fp)
	lw $t2, -1768($fp)
	bgt $t1, $t2, label213
	j label214
label213:
	li $t0, 1
	sw $t0, -1760($fp)
label214:
	li $t0, 4
	lw $t1, -1760($fp)
	mul $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	lw $t1, -1756($fp)
	add $t0, $t0, $t1
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	lw $t1, 0($t0)
	sw $t1, -1780($fp)
	lw $t1, -1780($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label211
label212:
	lw $t0, -160($fp)
	sw $t0, -1784($fp)
	lw $t0, -148($fp)
	sw $t0, -1788($fp)
	lw $t0, -1784($fp)
	lw $t1, -1788($fp)
	mul $t0, $t0, $t1
	sw $t0, -1792($fp)
	lw $t0, -724($fp)
	sw $t0, -1796($fp)
	lw $t0, -1792($fp)
	lw $t1, -1796($fp)
	add $t0, $t0, $t1
	sw $t0, -1800($fp)
	lw $t1, -1800($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label211
label211:
	li $t0, 0
	sw $t0, -1804($fp)
	li $t0, 2904
	sw $t0, -1808($fp)
	lw $t1, -1808($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label215
label215:
	li $t0, 1
	sw $t0, -1804($fp)
label216:
	li $t0, 0
	lw $t1, -1804($fp)
	sub $t0, $t0, $t1
	sw $t0, -1812($fp)
	lw $t1, -1812($fp)
	li $t2, 0
	bne $t1, $t2, label209
	j label208
label208:
	li $t0, 0
	sw $t0, -1816($fp)
	lw $t0, -148($fp)
	sw $t0, -1820($fp)
	lw $t1, -1820($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label218
label219:
	addi $t0, $fp, -20
	sw $t0, -1824($fp)
	lw $t0, -88($fp)
	sw $t0, -1828($fp)
	li $t0, 4
	lw $t1, -1828($fp)
	mul $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	lw $t1, -1824($fp)
	add $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	lw $t1, 0($t0)
	sw $t1, -1840($fp)
	addi $sp, $sp, -4
	lw $t0, -1840($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1844($fp)
	addi $sp, $sp, 8
	lw $t1, -1844($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label217
label217:
	li $t0, 1
	sw $t0, -1816($fp)
label218:
	lw $ra, -4($fp)
	lw $v0, -1816($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label210
label209:
	li $t0, 39495
	sw $t0, -1848($fp)
	li $t0, 20270
	sw $t0, -1852($fp)
	lw $t0, -1848($fp)
	lw $t1, -1852($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1856($fp)
	addi $sp, $sp, -4
	lw $t0, -1856($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1860($fp)
	addi $sp, $sp, 8
	lw $ra, -4($fp)
	lw $v0, -1860($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label210:
	j label205
label204:
label220:
	addi $t0, $fp, -80
	sw $t0, -1864($fp)
	li $t0, 0
	sw $t0, -1868($fp)
	lw $t0, -148($fp)
	sw $t0, -1872($fp)
	li $t0, 44882
	sw $t0, -1876($fp)
	lw $t1, -1872($fp)
	lw $t2, -1876($fp)
	beq $t1, $t2, label223
	j label225
label225:
	li $t0, 55952
	sw $t0, -1880($fp)
	li $t0, 20130
	sw $t0, -1884($fp)
	lw $t1, -1880($fp)
	lw $t2, -1884($fp)
	bne $t1, $t2, label223
	j label224
label223:
	li $t0, 1
	sw $t0, -1868($fp)
label224:
	li $t0, 4
	lw $t1, -1868($fp)
	mul $t0, $t0, $t1
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	lw $t1, -1864($fp)
	add $t0, $t0, $t1
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	lw $t1, 0($t0)
	sw $t1, -1896($fp)
	lw $t1, -1896($fp)
	li $t2, 0
	bne $t1, $t2, label221
	j label222
label221:
	li $t0, 63909
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	sw $t0, -1908($fp)
	li $t0, 0
	sw $t0, -1912($fp)
	li $t0, 0
	sw $t0, -1916($fp)
	li $t0, 0
	sw $t0, -1920($fp)
	lw $t0, -1904($fp)
	sw $t0, -1924($fp)
	lw $t1, -1924($fp)
	li $t2, 0
	bne $t1, $t2, label231
	j label230
label230:
	li $t0, 1
	sw $t0, -1920($fp)
label231:
	lw $t0, -172($fp)
	sw $t0, -1928($fp)
	lw $t0, -1920($fp)
	lw $t1, -1928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1932($fp)
	lw $t0, -676($fp)
	sw $t0, -1936($fp)
	li $t0, 0
	lw $t1, -1936($fp)
	sub $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t0, -1932($fp)
	lw $t1, -1940($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1944($fp)
	lw $t0, -124($fp)
	sw $t0, -1948($fp)
	li $t0, 999
	sw $t0, -1952($fp)
	lw $t0, -1948($fp)
	lw $t1, -1952($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1956($fp)
	lw $t1, -1944($fp)
	lw $t2, -1956($fp)
	ble $t1, $t2, label228
	j label229
label228:
	li $t0, 1
	sw $t0, -1916($fp)
label229:
	addi $t0, $fp, -48
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
	lw $t1, -1916($fp)
	lw $t2, -1976($fp)
	bge $t1, $t2, label226
	j label227
label226:
	li $t0, 1
	sw $t0, -1912($fp)
label227:
	j label220
label222:
label205:
label194:
label183:
	lw $t0, -88($fp)
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -100($fp)
	sw $t0, -1984($fp)
	lw $t0, -1984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -112($fp)
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -124($fp)
	sw $t0, -1992($fp)
	lw $t0, -1992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -172($fp)
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -184($fp)
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -2016($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
	sw $t0, -2036($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -2056($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -2076($fp)
	li $t0, 3
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
	lw $t0, -2092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	lw $t0, -436($fp)
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -448($fp)
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -2224($fp)
	li $t0, 0
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
	lw $t0, -484($fp)
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -2248($fp)
	li $t0, 0
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
	addi $t0, $fp, -76
	sw $t0, -2268($fp)
	li $t0, 1
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
	addi $t0, $fp, -76
	sw $t0, -2288($fp)
	li $t0, 2
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
	addi $t0, $fp, -76
	sw $t0, -2308($fp)
	li $t0, 3
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
	addi $t0, $fp, -76
	sw $t0, -2328($fp)
	li $t0, 4
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
	addi $t0, $fp, -76
	sw $t0, -2348($fp)
	li $t0, 5
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
	addi $t0, $fp, -76
	sw $t0, -2368($fp)
	li $t0, 6
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
	lw $t0, -664($fp)
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -724($fp)
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -736($fp)
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -748($fp)
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
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
	li $t0, 0
	sw $t0, -2440($fp)
	addi $t0, $fp, -20
	sw $t0, -2444($fp)
	li $t0, 2
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
	lw $t0, -148($fp)
	sw $t0, -2464($fp)
	lw $t0, -2460($fp)
	lw $t1, -2464($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2468($fp)
	lw $t1, -2468($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label234
label236:
	li $t0, 18766
	sw $t0, -2472($fp)
	lw $t0, -712($fp)
	sw $t0, -2476($fp)
	lw $t0, -2472($fp)
	lw $t1, -2476($fp)
	add $t0, $t0, $t1
	sw $t0, -2480($fp)
	lw $t1, -2480($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label234
label235:
	addi $t0, $fp, -44
	sw $t0, -2484($fp)
	lw $t0, -148($fp)
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
	li $t0, 30813
	sw $t0, -2504($fp)
	lw $t0, -2500($fp)
	lw $t1, -2504($fp)
	mul $t0, $t0, $t1
	sw $t0, -2508($fp)
	lw $t1, -2508($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label234
label234:
	li $t0, 0
	sw $t0, -2512($fp)
	addi $t0, $fp, -80
	sw $t0, -2516($fp)
	lw $t0, -448($fp)
	sw $t0, -2520($fp)
	li $t0, 4
	lw $t1, -2520($fp)
	mul $t0, $t0, $t1
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	lw $t1, -2516($fp)
	add $t0, $t0, $t1
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	lw $t1, 0($t0)
	sw $t1, -2532($fp)
	lw $t0, -100($fp)
	sw $t0, -2536($fp)
	lw $t1, -2532($fp)
	lw $t2, -2536($fp)
	blt $t1, $t2, label237
	j label238
label237:
	li $t0, 1
	sw $t0, -2512($fp)
label238:
	li $t0, 40666
	sw $t0, -2540($fp)
	li $t0, 0
	lw $t1, -2540($fp)
	sub $t0, $t0, $t1
	sw $t0, -2544($fp)
	lw $t1, -2512($fp)
	lw $t2, -2544($fp)
	ble $t1, $t2, label232
	j label233
label232:
	li $t0, 1
	sw $t0, -2440($fp)
label233:
	lw $ra, -4($fp)
	lw $v0, -2440($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 45643
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	sw $t0, -2632($fp)
	li $t0, 51657
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	sw $t0, -2644($fp)
	li $t0, 30605
	sw $t0, -2648($fp)
	addi $t0, $fp, -2560
	sw $t0, -2652($fp)
	li $t0, 0
	sw $t0, -2656($fp)
	lw $t0, -2656($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2660($fp)
	lw $t0, -2652($fp)
	lw $t1, -2660($fp)
	add $t0, $t0, $t1
	sw $t0, -2664($fp)
	lw $t0, -2648($fp)
	lw $t1, -2664($fp)
	sw $t0, 0($t1)
	lw $t0, -2664($fp)
	lw $t1, 0($t0)
	sw $t1, -2668($fp)
	li $t0, 2242
	sw $t0, -2672($fp)
	addi $t0, $fp, -2560
	sw $t0, -2676($fp)
	li $t0, 1
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2684($fp)
	lw $t0, -2676($fp)
	lw $t1, -2684($fp)
	add $t0, $t0, $t1
	sw $t0, -2688($fp)
	lw $t0, -2672($fp)
	lw $t1, -2688($fp)
	sw $t0, 0($t1)
	lw $t0, -2688($fp)
	lw $t1, 0($t0)
	sw $t1, -2692($fp)
	li $t0, 18641
	sw $t0, -2696($fp)
	addi $t0, $fp, -2560
	sw $t0, -2700($fp)
	li $t0, 2
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2708($fp)
	lw $t0, -2700($fp)
	lw $t1, -2708($fp)
	add $t0, $t0, $t1
	sw $t0, -2712($fp)
	lw $t0, -2696($fp)
	lw $t1, -2712($fp)
	sw $t0, 0($t1)
	lw $t0, -2712($fp)
	lw $t1, 0($t0)
	sw $t1, -2716($fp)
	li $t0, 48107
	sw $t0, -2720($fp)
	addi $t0, $fp, -2560
	sw $t0, -2724($fp)
	li $t0, 3
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2732($fp)
	lw $t0, -2724($fp)
	lw $t1, -2732($fp)
	add $t0, $t0, $t1
	sw $t0, -2736($fp)
	lw $t0, -2720($fp)
	lw $t1, -2736($fp)
	sw $t0, 0($t1)
	lw $t0, -2736($fp)
	lw $t1, 0($t0)
	sw $t1, -2740($fp)
	li $t0, 3465
	sw $t0, -2744($fp)
	addi $t0, $fp, -2580
	sw $t0, -2748($fp)
	li $t0, 0
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2756($fp)
	lw $t0, -2748($fp)
	lw $t1, -2756($fp)
	add $t0, $t0, $t1
	sw $t0, -2760($fp)
	lw $t0, -2744($fp)
	lw $t1, -2760($fp)
	sw $t0, 0($t1)
	lw $t0, -2760($fp)
	lw $t1, 0($t0)
	sw $t1, -2764($fp)
	li $t0, 61426
	sw $t0, -2768($fp)
	addi $t0, $fp, -2580
	sw $t0, -2772($fp)
	li $t0, 1
	sw $t0, -2776($fp)
	lw $t0, -2776($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2780($fp)
	lw $t0, -2772($fp)
	lw $t1, -2780($fp)
	add $t0, $t0, $t1
	sw $t0, -2784($fp)
	lw $t0, -2768($fp)
	lw $t1, -2784($fp)
	sw $t0, 0($t1)
	lw $t0, -2784($fp)
	lw $t1, 0($t0)
	sw $t1, -2788($fp)
	li $t0, 16098
	sw $t0, -2792($fp)
	addi $t0, $fp, -2580
	sw $t0, -2796($fp)
	li $t0, 2
	sw $t0, -2800($fp)
	lw $t0, -2800($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2804($fp)
	lw $t0, -2796($fp)
	lw $t1, -2804($fp)
	add $t0, $t0, $t1
	sw $t0, -2808($fp)
	lw $t0, -2792($fp)
	lw $t1, -2808($fp)
	sw $t0, 0($t1)
	lw $t0, -2808($fp)
	lw $t1, 0($t0)
	sw $t1, -2812($fp)
	li $t0, 558
	sw $t0, -2816($fp)
	addi $t0, $fp, -2580
	sw $t0, -2820($fp)
	li $t0, 3
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2828($fp)
	lw $t0, -2820($fp)
	lw $t1, -2828($fp)
	add $t0, $t0, $t1
	sw $t0, -2832($fp)
	lw $t0, -2816($fp)
	lw $t1, -2832($fp)
	sw $t0, 0($t1)
	lw $t0, -2832($fp)
	lw $t1, 0($t0)
	sw $t1, -2836($fp)
	li $t0, 9214
	sw $t0, -2840($fp)
	addi $t0, $fp, -2580
	sw $t0, -2844($fp)
	li $t0, 4
	sw $t0, -2848($fp)
	lw $t0, -2848($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2852($fp)
	lw $t0, -2844($fp)
	lw $t1, -2852($fp)
	add $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -2840($fp)
	lw $t1, -2856($fp)
	sw $t0, 0($t1)
	lw $t0, -2856($fp)
	lw $t1, 0($t0)
	sw $t1, -2860($fp)
	li $t0, 23339
	sw $t0, -2864($fp)
	addi $t0, $fp, -2620
	sw $t0, -2868($fp)
	li $t0, 0
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2876($fp)
	lw $t0, -2868($fp)
	lw $t1, -2876($fp)
	add $t0, $t0, $t1
	sw $t0, -2880($fp)
	lw $t0, -2864($fp)
	lw $t1, -2880($fp)
	sw $t0, 0($t1)
	lw $t0, -2880($fp)
	lw $t1, 0($t0)
	sw $t1, -2884($fp)
	li $t0, 50479
	sw $t0, -2888($fp)
	addi $t0, $fp, -2620
	sw $t0, -2892($fp)
	li $t0, 1
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $t0, -2892($fp)
	lw $t1, -2900($fp)
	add $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $t0, -2888($fp)
	lw $t1, -2904($fp)
	sw $t0, 0($t1)
	lw $t0, -2904($fp)
	lw $t1, 0($t0)
	sw $t1, -2908($fp)
	li $t0, 49116
	sw $t0, -2912($fp)
	addi $t0, $fp, -2620
	sw $t0, -2916($fp)
	li $t0, 2
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
	li $t0, 35657
	sw $t0, -2936($fp)
	addi $t0, $fp, -2620
	sw $t0, -2940($fp)
	li $t0, 3
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
	li $t0, 53383
	sw $t0, -2960($fp)
	addi $t0, $fp, -2620
	sw $t0, -2964($fp)
	li $t0, 4
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
	li $t0, 23075
	sw $t0, -2984($fp)
	addi $t0, $fp, -2620
	sw $t0, -2988($fp)
	li $t0, 5
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
	li $t0, 55927
	sw $t0, -3008($fp)
	addi $t0, $fp, -2620
	sw $t0, -3012($fp)
	li $t0, 6
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
	li $t0, 32730
	sw $t0, -3032($fp)
	addi $t0, $fp, -2620
	sw $t0, -3036($fp)
	li $t0, 7
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
	li $t0, 13492
	sw $t0, -3056($fp)
	addi $t0, $fp, -2620
	sw $t0, -3060($fp)
	li $t0, 8
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
	li $t0, 10522
	sw $t0, -3080($fp)
	addi $t0, $fp, -2620
	sw $t0, -3084($fp)
	li $t0, 9
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
	li $t0, 31103
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	sw $t0, -3108($fp)
	lw $t0, -3108($fp)
	sw $t0, -3112($fp)
	li $t0, 14491
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	sw $t0, -3120($fp)
	lw $t0, -3120($fp)
	sw $t0, -3124($fp)
	addi $t0, $fp, -76
	sw $t0, -3128($fp)
	lw $t0, -484($fp)
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
	lw $t0, -124($fp)
	sw $t0, -3148($fp)
	li $t0, 34352
	sw $t0, -3152($fp)
	lw $t0, -3148($fp)
	lw $t1, -3152($fp)
	mul $t0, $t0, $t1
	sw $t0, -3156($fp)
	lw $t0, -3144($fp)
	lw $t1, -3156($fp)
	sub $t0, $t0, $t1
	sw $t0, -3160($fp)
	lw $t0, -160($fp)
	sw $t0, -3164($fp)
	lw $t0, -3164($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -3168($fp)
	addi $sp, $sp, -4
	lw $t0, -3168($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3172($fp)
	addi $sp, $sp, 8
	lw $t0, -3160($fp)
	lw $t1, -3172($fp)
	add $t0, $t0, $t1
	sw $t0, -3176($fp)
	li $t0, 16141
	sw $t0, -3180($fp)
	lw $t0, -448($fp)
	sw $t0, -3184($fp)
	lw $t0, -3180($fp)
	lw $t1, -3184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3188($fp)
	li $t0, 0
	sw $t0, -3192($fp)
	li $t0, 0
	sw $t0, -3196($fp)
	lw $t0, -124($fp)
	sw $t0, -3200($fp)
	lw $t1, -3200($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label244
label244:
	li $t0, 1
	sw $t0, -3196($fp)
label245:
	lw $t0, -2628($fp)
	sw $t0, -3204($fp)
	lw $t1, -3196($fp)
	lw $t2, -3204($fp)
	blt $t1, $t2, label242
	j label243
label242:
	li $t0, 1
	sw $t0, -3192($fp)
label243:
	addi $sp, $sp, -4
	lw $t0, -3192($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3208($fp)
	addi $sp, $sp, 8
	lw $t0, -3188($fp)
	lw $t1, -3208($fp)
	add $t0, $t0, $t1
	sw $t0, -3212($fp)
	lw $t1, -3176($fp)
	lw $t2, -3212($fp)
	bge $t1, $t2, label239
	j label240
label239:
label246:
	li $t0, 0
	sw $t0, -3216($fp)
	li $t0, 0
	sw $t0, -3220($fp)
	li $t0, 52268
	sw $t0, -3224($fp)
	lw $t0, -664($fp)
	sw $t0, -3228($fp)
	lw $t0, -3224($fp)
	lw $t1, -3228($fp)
	sub $t0, $t0, $t1
	sw $t0, -3232($fp)
	lw $t1, -3232($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label253
label253:
	lw $t0, -2640($fp)
	sw $t0, -3236($fp)
	lw $t1, -3236($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label252
label251:
	li $t0, 1
	sw $t0, -3220($fp)
label252:
	addi $sp, $sp, -4
	lw $t0, -3220($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3240($fp)
	addi $sp, $sp, 8
	lw $t1, -3240($fp)
	li $t2, 0
	bne $t1, $t2, label250
	j label249
label249:
	li $t0, 1
	sw $t0, -3216($fp)
label250:
	li $t0, 2573
	sw $t0, -3244($fp)
	lw $t0, -3120($fp)
	sw $t0, -3248($fp)
	lw $t0, -3244($fp)
	lw $t1, -3248($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3252($fp)
	li $t0, 19564
	sw $t0, -3256($fp)
	lw $t0, -3252($fp)
	lw $t1, -3256($fp)
	mul $t0, $t0, $t1
	sw $t0, -3260($fp)
	lw $t0, -3216($fp)
	lw $t1, -3260($fp)
	sub $t0, $t0, $t1
	sw $t0, -3264($fp)
	lw $t1, -3264($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label248
label247:
	li $t0, 5499
	sw $t0, -3268($fp)
	lw $t0, -3268($fp)
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	sw $t0, -3276($fp)
	li $t0, 0
	sw $t0, -3280($fp)
	li $t0, 0
	sw $t0, -3284($fp)
	li $t0, 33386
	sw $t0, -3288($fp)
	li $t0, 0
	sw $t0, -3292($fp)
	lw $t0, -448($fp)
	sw $t0, -3296($fp)
	lw $t1, -3296($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label258
label258:
	li $t0, 1
	sw $t0, -3292($fp)
label259:
	lw $t0, -3288($fp)
	lw $t1, -3292($fp)
	sub $t0, $t0, $t1
	sw $t0, -3300($fp)
	li $t0, 0
	sw $t0, -3304($fp)
	lw $t0, -3120($fp)
	sw $t0, -3308($fp)
	li $t0, 60230
	sw $t0, -3312($fp)
	lw $t0, -3308($fp)
	lw $t1, -3312($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3316($fp)
	li $t0, 51142
	sw $t0, -3320($fp)
	lw $t1, -3316($fp)
	lw $t2, -3320($fp)
	blt $t1, $t2, label260
	j label261
label260:
	li $t0, 1
	sw $t0, -3304($fp)
label261:
	lw $t1, -3300($fp)
	lw $t2, -3304($fp)
	bne $t1, $t2, label256
	j label257
label256:
	li $t0, 1
	sw $t0, -3284($fp)
label257:
	addi $t0, $fp, -2560
	sw $t0, -3324($fp)
	li $t0, 0
	sw $t0, -3328($fp)
	li $t0, 4
	lw $t1, -3328($fp)
	mul $t0, $t0, $t1
	sw $t0, -3332($fp)
	lw $t0, -3332($fp)
	lw $t1, -3324($fp)
	add $t0, $t0, $t1
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	lw $t1, 0($t0)
	sw $t1, -3340($fp)
	li $t0, 0
	lw $t1, -3340($fp)
	sub $t0, $t0, $t1
	sw $t0, -3344($fp)
	li $t0, 0
	lw $t1, -3344($fp)
	sub $t0, $t0, $t1
	sw $t0, -3348($fp)
	lw $t1, -3284($fp)
	lw $t2, -3348($fp)
	bne $t1, $t2, label254
	j label255
label254:
	li $t0, 1
	sw $t0, -3280($fp)
label255:
	li $t0, 0
	sw $t0, -3352($fp)
	li $t0, 0
	sw $t0, -3356($fp)
	li $t0, 53384
	sw $t0, -3360($fp)
	lw $t0, -436($fp)
	sw $t0, -3364($fp)
	lw $t0, -3360($fp)
	lw $t1, -3364($fp)
	mul $t0, $t0, $t1
	sw $t0, -3368($fp)
	lw $t0, 4($fp)
	sw $t0, -3372($fp)
	lw $t0, -3368($fp)
	lw $t1, -3372($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3376($fp)
	addi $sp, $sp, -4
	lw $t0, -3376($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3380($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3384($fp)
	li $t0, 38148
	sw $t0, -3388($fp)
	lw $t0, -3388($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -3392($fp)
	addi $sp, $sp, -4
	lw $t0, -3392($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3396($fp)
	addi $sp, $sp, 8
	lw $t1, -3396($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label266
label266:
	li $t0, 1
	sw $t0, -3384($fp)
label267:
	lw $t1, -3380($fp)
	lw $t2, -3384($fp)
	blt $t1, $t2, label264
	j label265
label264:
	li $t0, 1
	sw $t0, -3356($fp)
label265:
	li $t0, 0
	sw $t0, -3400($fp)
	lw $t0, -664($fp)
	sw $t0, -3404($fp)
	li $t0, 7871
	sw $t0, -3408($fp)
	lw $t1, -3404($fp)
	lw $t2, -3408($fp)
	beq $t1, $t2, label270
	j label269
label270:
	lw $t0, -100($fp)
	sw $t0, -3412($fp)
	lw $t1, -3412($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label269
label268:
	li $t0, 1
	sw $t0, -3400($fp)
label269:
	addi $sp, $sp, -4
	lw $t0, -3400($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3416($fp)
	addi $sp, $sp, 8
	li $t0, 56850
	sw $t0, -3420($fp)
	lw $t0, -3416($fp)
	lw $t1, -3420($fp)
	mul $t0, $t0, $t1
	sw $t0, -3424($fp)
	addi $sp, $sp, -4
	lw $t0, -3424($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3428($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3432($fp)
	lw $t0, -3272($fp)
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
	lw $t0, -3428($fp)
	lw $t1, -3448($fp)
	mul $t0, $t0, $t1
	sw $t0, -3452($fp)
	lw $t1, -3356($fp)
	lw $t2, -3452($fp)
	bne $t1, $t2, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -3352($fp)
label263:
	j label246
label248:
	j label241
label240:
	li $t0, 0
	sw $t0, -3456($fp)
	li $t0, 0
	sw $t0, -3460($fp)
	addi $t0, $fp, -2580
	sw $t0, -3464($fp)
	lw $t0, -724($fp)
	sw $t0, -3468($fp)
	li $t0, 4
	lw $t1, -3468($fp)
	mul $t0, $t0, $t1
	sw $t0, -3472($fp)
	lw $t0, -3472($fp)
	lw $t1, -3464($fp)
	add $t0, $t0, $t1
	sw $t0, -3476($fp)
	lw $t0, -3476($fp)
	lw $t1, 0($t0)
	sw $t1, -3480($fp)
	addi $sp, $sp, -4
	lw $t0, -3480($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3484($fp)
	addi $sp, $sp, 8
	lw $t1, -3484($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label274
label274:
	li $t0, 1
	sw $t0, -3460($fp)
label275:
	addi $t0, $fp, -2620
	sw $t0, -3488($fp)
	li $t0, 2
	sw $t0, -3492($fp)
	li $t0, 4
	lw $t1, -3492($fp)
	mul $t0, $t0, $t1
	sw $t0, -3496($fp)
	lw $t0, -3496($fp)
	lw $t1, -3488($fp)
	add $t0, $t0, $t1
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	lw $t1, 0($t0)
	sw $t1, -3504($fp)
	lw $t0, -3460($fp)
	lw $t1, -3504($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3508($fp)
	lw $t1, -3508($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label272
label273:
	lw $t0, -724($fp)
	sw $t0, -3512($fp)
	li $t0, 57408
	sw $t0, -3516($fp)
	lw $t0, -3512($fp)
	lw $t1, -3516($fp)
	mul $t0, $t0, $t1
	sw $t0, -3520($fp)
	li $t0, 0
	lw $t1, -3520($fp)
	sub $t0, $t0, $t1
	sw $t0, -3524($fp)
	lw $t1, -3524($fp)
	li $t2, 0
	bne $t1, $t2, label271
	j label272
label271:
	li $t0, 1
	sw $t0, -3456($fp)
label272:
	lw $ra, -4($fp)
	lw $v0, -3456($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label241:
label276:
	li $t0, 43252
	sw $t0, -3528($fp)
	lw $t0, -3528($fp)
	sw $t0, -3108($fp)
	lw $t0, -3108($fp)
	sw $t0, -3532($fp)
	addi $sp, $sp, -4
	lw $t0, -3532($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3536($fp)
	addi $sp, $sp, 8
	lw $t0, -664($fp)
	sw $t0, -3540($fp)
	lw $t1, -3536($fp)
	lw $t2, -3540($fp)
	bgt $t1, $t2, label277
	j label278
label277:
	li $t0, 0
	sw $t0, -3544($fp)
	li $t0, 0
	sw $t0, -3548($fp)
	li $t0, 0
	sw $t0, -3552($fp)
	li $t0, 0
	sw $t0, -3556($fp)
	lw $t0, -148($fp)
	sw $t0, -3560($fp)
	li $t0, 47309
	sw $t0, -3564($fp)
	lw $t1, -3560($fp)
	lw $t2, -3564($fp)
	bge $t1, $t2, label286
	j label287
label286:
	li $t0, 1
	sw $t0, -3556($fp)
label287:
	lw $t0, -172($fp)
	sw $t0, -3568($fp)
	lw $t1, -3556($fp)
	lw $t2, -3568($fp)
	blt $t1, $t2, label284
	j label285
label284:
	li $t0, 1
	sw $t0, -3552($fp)
label285:
	addi $sp, $sp, -4
	lw $t0, -3552($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3572($fp)
	addi $sp, $sp, 8
	lw $t1, -3572($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label282
label282:
	li $t0, 1
	sw $t0, -3548($fp)
label283:
	addi $t0, $fp, -48
	sw $t0, -3576($fp)
	lw $t0, -124($fp)
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
	lw $t0, -3548($fp)
	lw $t1, -3592($fp)
	mul $t0, $t0, $t1
	sw $t0, -3596($fp)
	lw $t0, -436($fp)
	sw $t0, -3600($fp)
	lw $t0, -3596($fp)
	lw $t1, -3600($fp)
	mul $t0, $t0, $t1
	sw $t0, -3604($fp)
	lw $t1, -3604($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label280
label281:
	li $t0, 0
	sw $t0, -3608($fp)
	addi $t0, $fp, -44
	sw $t0, -3612($fp)
	li $t0, 2
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
	lw $t1, -3628($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label288
label288:
	li $t0, 1
	sw $t0, -3608($fp)
label289:
	li $t0, 0
	lw $t1, -3608($fp)
	sub $t0, $t0, $t1
	sw $t0, -3632($fp)
	lw $t1, -3632($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label280
label279:
	li $t0, 1
	sw $t0, -3544($fp)
label280:
	j label276
label278:
	li $t0, 17430
	sw $t0, -3636($fp)
	lw $t0, -3636($fp)
	sw $t0, -3640($fp)
	lw $t0, -3640($fp)
	sw $t0, -3644($fp)
	addi $t0, $fp, -2560
	sw $t0, -3648($fp)
	li $t0, 0
	sw $t0, -3652($fp)
	li $t0, 0
	sw $t0, -3656($fp)
	lw $t0, -100($fp)
	sw $t0, -3660($fp)
	lw $t1, -3660($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label293
label293:
	li $t0, 1
	sw $t0, -3656($fp)
label294:
	li $t0, 30198
	sw $t0, -3664($fp)
	lw $t1, -3656($fp)
	lw $t2, -3664($fp)
	blt $t1, $t2, label292
	j label291
label292:
	lw $t0, -3640($fp)
	sw $t0, -3668($fp)
	li $t0, 0
	lw $t1, -3668($fp)
	sub $t0, $t0, $t1
	sw $t0, -3672($fp)
	lw $t1, -3672($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label291
label290:
	li $t0, 1
	sw $t0, -3652($fp)
label291:
	li $t0, 4
	lw $t1, -3652($fp)
	mul $t0, $t0, $t1
	sw $t0, -3676($fp)
	lw $t0, -3676($fp)
	lw $t1, -3648($fp)
	add $t0, $t0, $t1
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	lw $t1, 0($t0)
	sw $t1, -3684($fp)
	li $t0, 0
	sw $t0, -3688($fp)
	li $t0, 49908
	sw $t0, -3692($fp)
	lw $t1, -3692($fp)
	li $t2, 0
	bne $t1, $t2, label296
	j label295
label295:
	li $t0, 1
	sw $t0, -3688($fp)
label296:
	addi $sp, $sp, -4
	lw $t0, -3688($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3696($fp)
	addi $sp, $sp, 8
	lw $t0, -3696($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -3700($fp)
	li $t0, 0
	sw $t0, -3704($fp)
	li $t0, 0
	sw $t0, -3708($fp)
	addi $t0, $fp, -20
	sw $t0, -3712($fp)
	lw $t0, -100($fp)
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
	lw $t0, -124($fp)
	sw $t0, -3732($fp)
	lw $t1, -3728($fp)
	lw $t2, -3732($fp)
	bne $t1, $t2, label300
	j label301
label300:
	li $t0, 1
	sw $t0, -3708($fp)
label301:
	li $t0, 7821
	sw $t0, -3736($fp)
	li $t0, 62928
	sw $t0, -3740($fp)
	lw $t0, -3736($fp)
	lw $t1, -3740($fp)
	mul $t0, $t0, $t1
	sw $t0, -3744($fp)
	addi $sp, $sp, -4
	lw $t0, -3744($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3748($fp)
	addi $sp, $sp, 8
	lw $t1, -3708($fp)
	lw $t2, -3748($fp)
	bne $t1, $t2, label299
	j label298
label299:
	li $t0, 0
	sw $t0, -3752($fp)
	li $t0, 63400
	sw $t0, -3756($fp)
	li $t0, 18343
	sw $t0, -3760($fp)
	lw $t0, -3756($fp)
	lw $t1, -3760($fp)
	add $t0, $t0, $t1
	sw $t0, -3764($fp)
	li $t0, 28495
	sw $t0, -3768($fp)
	lw $t1, -3764($fp)
	lw $t2, -3768($fp)
	blt $t1, $t2, label302
	j label303
label302:
	li $t0, 1
	sw $t0, -3752($fp)
label303:
	li $t0, 12355
	sw $t0, -3772($fp)
	lw $t1, -3752($fp)
	lw $t2, -3772($fp)
	beq $t1, $t2, label297
	j label298
label297:
	li $t0, 1
	sw $t0, -3704($fp)
label298:
	li $t0, 0
	sw $t0, -3776($fp)
	li $t0, 52696
	sw $t0, -3780($fp)
	li $t0, 44637
	sw $t0, -3784($fp)
	lw $t0, -3784($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -3788($fp)
	addi $sp, $sp, -4
	lw $t0, -3788($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3792($fp)
	addi $sp, $sp, 8
	lw $t1, -3780($fp)
	lw $t2, -3792($fp)
	bne $t1, $t2, label304
	j label305
label304:
	li $t0, 1
	sw $t0, -3776($fp)
label305:
	li $t0, 0
	sw $t0, -3796($fp)
	li $t0, 64624
	sw $t0, -3800($fp)
	lw $t1, -3800($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label306
label306:
	li $t0, 1
	sw $t0, -3796($fp)
label307:
	lw $t0, -3796($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -3804($fp)
	lw $t0, -88($fp)
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -100($fp)
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -112($fp)
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -124($fp)
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -3828($fp)
	lw $t0, -3828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -3832($fp)
	lw $t0, -3832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -172($fp)
	sw $t0, -3836($fp)
	lw $t0, -3836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -184($fp)
	sw $t0, -3840($fp)
	lw $t0, -3840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -3844($fp)
	li $t0, 0
	sw $t0, -3848($fp)
	li $t0, 4
	lw $t1, -3848($fp)
	mul $t0, $t0, $t1
	sw $t0, -3852($fp)
	lw $t0, -3852($fp)
	lw $t1, -3844($fp)
	add $t0, $t0, $t1
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	lw $t1, 0($t0)
	sw $t1, -3860($fp)
	lw $t0, -3860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -3864($fp)
	li $t0, 1
	sw $t0, -3868($fp)
	li $t0, 4
	lw $t1, -3868($fp)
	mul $t0, $t0, $t1
	sw $t0, -3872($fp)
	lw $t0, -3872($fp)
	lw $t1, -3864($fp)
	add $t0, $t0, $t1
	sw $t0, -3876($fp)
	lw $t0, -3876($fp)
	lw $t1, 0($t0)
	sw $t1, -3880($fp)
	lw $t0, -3880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -3884($fp)
	li $t0, 2
	sw $t0, -3888($fp)
	li $t0, 4
	lw $t1, -3888($fp)
	mul $t0, $t0, $t1
	sw $t0, -3892($fp)
	lw $t0, -3892($fp)
	lw $t1, -3884($fp)
	add $t0, $t0, $t1
	sw $t0, -3896($fp)
	lw $t0, -3896($fp)
	lw $t1, 0($t0)
	sw $t1, -3900($fp)
	lw $t0, -3900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -3904($fp)
	li $t0, 3
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
	lw $t0, -3920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3924($fp)
	li $t0, 0
	sw $t0, -3928($fp)
	li $t0, 4
	lw $t1, -3928($fp)
	mul $t0, $t0, $t1
	sw $t0, -3932($fp)
	lw $t0, -3932($fp)
	lw $t1, -3924($fp)
	add $t0, $t0, $t1
	sw $t0, -3936($fp)
	lw $t0, -3936($fp)
	lw $t1, 0($t0)
	sw $t1, -3940($fp)
	lw $t0, -3940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3944($fp)
	li $t0, 1
	sw $t0, -3948($fp)
	li $t0, 4
	lw $t1, -3948($fp)
	mul $t0, $t0, $t1
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	lw $t1, -3944($fp)
	add $t0, $t0, $t1
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	lw $t1, 0($t0)
	sw $t1, -3960($fp)
	lw $t0, -3960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3964($fp)
	li $t0, 2
	sw $t0, -3968($fp)
	li $t0, 4
	lw $t1, -3968($fp)
	mul $t0, $t0, $t1
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	lw $t1, -3964($fp)
	add $t0, $t0, $t1
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	lw $t1, 0($t0)
	sw $t1, -3980($fp)
	lw $t0, -3980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3984($fp)
	li $t0, 3
	sw $t0, -3988($fp)
	li $t0, 4
	lw $t1, -3988($fp)
	mul $t0, $t0, $t1
	sw $t0, -3992($fp)
	lw $t0, -3992($fp)
	lw $t1, -3984($fp)
	add $t0, $t0, $t1
	sw $t0, -3996($fp)
	lw $t0, -3996($fp)
	lw $t1, 0($t0)
	sw $t1, -4000($fp)
	lw $t0, -4000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4004($fp)
	li $t0, 4
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
	lw $t0, -4020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4024($fp)
	li $t0, 5
	sw $t0, -4028($fp)
	li $t0, 4
	lw $t1, -4028($fp)
	mul $t0, $t0, $t1
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	lw $t1, -4024($fp)
	add $t0, $t0, $t1
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	lw $t1, 0($t0)
	sw $t1, -4040($fp)
	lw $t0, -4040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -436($fp)
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -448($fp)
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -4052($fp)
	li $t0, 0
	sw $t0, -4056($fp)
	li $t0, 4
	lw $t1, -4056($fp)
	mul $t0, $t0, $t1
	sw $t0, -4060($fp)
	lw $t0, -4060($fp)
	lw $t1, -4052($fp)
	add $t0, $t0, $t1
	sw $t0, -4064($fp)
	lw $t0, -4064($fp)
	lw $t1, 0($t0)
	sw $t1, -4068($fp)
	lw $t0, -4068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -484($fp)
	sw $t0, -4072($fp)
	lw $t0, -4072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -4076($fp)
	li $t0, 0
	sw $t0, -4080($fp)
	li $t0, 4
	lw $t1, -4080($fp)
	mul $t0, $t0, $t1
	sw $t0, -4084($fp)
	lw $t0, -4084($fp)
	lw $t1, -4076($fp)
	add $t0, $t0, $t1
	sw $t0, -4088($fp)
	lw $t0, -4088($fp)
	lw $t1, 0($t0)
	sw $t1, -4092($fp)
	lw $t0, -4092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -4096($fp)
	li $t0, 1
	sw $t0, -4100($fp)
	li $t0, 4
	lw $t1, -4100($fp)
	mul $t0, $t0, $t1
	sw $t0, -4104($fp)
	lw $t0, -4104($fp)
	lw $t1, -4096($fp)
	add $t0, $t0, $t1
	sw $t0, -4108($fp)
	lw $t0, -4108($fp)
	lw $t1, 0($t0)
	sw $t1, -4112($fp)
	lw $t0, -4112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -4116($fp)
	li $t0, 2
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
	lw $t0, -4132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -4136($fp)
	li $t0, 3
	sw $t0, -4140($fp)
	li $t0, 4
	lw $t1, -4140($fp)
	mul $t0, $t0, $t1
	sw $t0, -4144($fp)
	lw $t0, -4144($fp)
	lw $t1, -4136($fp)
	add $t0, $t0, $t1
	sw $t0, -4148($fp)
	lw $t0, -4148($fp)
	lw $t1, 0($t0)
	sw $t1, -4152($fp)
	lw $t0, -4152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -4156($fp)
	li $t0, 4
	sw $t0, -4160($fp)
	li $t0, 4
	lw $t1, -4160($fp)
	mul $t0, $t0, $t1
	sw $t0, -4164($fp)
	lw $t0, -4164($fp)
	lw $t1, -4156($fp)
	add $t0, $t0, $t1
	sw $t0, -4168($fp)
	lw $t0, -4168($fp)
	lw $t1, 0($t0)
	sw $t1, -4172($fp)
	lw $t0, -4172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -4176($fp)
	li $t0, 5
	sw $t0, -4180($fp)
	li $t0, 4
	lw $t1, -4180($fp)
	mul $t0, $t0, $t1
	sw $t0, -4184($fp)
	lw $t0, -4184($fp)
	lw $t1, -4176($fp)
	add $t0, $t0, $t1
	sw $t0, -4188($fp)
	lw $t0, -4188($fp)
	lw $t1, 0($t0)
	sw $t1, -4192($fp)
	lw $t0, -4192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -4196($fp)
	li $t0, 6
	sw $t0, -4200($fp)
	li $t0, 4
	lw $t1, -4200($fp)
	mul $t0, $t0, $t1
	sw $t0, -4204($fp)
	lw $t0, -4204($fp)
	lw $t1, -4196($fp)
	add $t0, $t0, $t1
	sw $t0, -4208($fp)
	lw $t0, -4208($fp)
	lw $t1, 0($t0)
	sw $t1, -4212($fp)
	lw $t0, -4212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -664($fp)
	sw $t0, -4216($fp)
	lw $t0, -4216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -4220($fp)
	lw $t0, -4220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -4224($fp)
	lw $t0, -4224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -4228($fp)
	lw $t0, -4228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	sw $t0, -4232($fp)
	lw $t0, -4232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -724($fp)
	sw $t0, -4236($fp)
	lw $t0, -4236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -736($fp)
	sw $t0, -4240($fp)
	lw $t0, -4240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -748($fp)
	sw $t0, -4244($fp)
	lw $t0, -4244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -4248($fp)
	li $t0, 0
	sw $t0, -4252($fp)
	li $t0, 4
	lw $t1, -4252($fp)
	mul $t0, $t0, $t1
	sw $t0, -4256($fp)
	lw $t0, -4256($fp)
	lw $t1, -4248($fp)
	add $t0, $t0, $t1
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	lw $t1, 0($t0)
	sw $t1, -4264($fp)
	lw $t0, -4264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4268($fp)
	li $t0, 55269
	sw $t0, -4272($fp)
	li $t0, 0
	lw $t1, -4272($fp)
	sub $t0, $t0, $t1
	sw $t0, -4276($fp)
	lw $t0, -700($fp)
	sw $t0, -4280($fp)
	lw $t0, -4276($fp)
	lw $t1, -4280($fp)
	add $t0, $t0, $t1
	sw $t0, -4284($fp)
	lw $t1, -4284($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label310
label310:
	li $t0, 64201
	sw $t0, -4288($fp)
	li $t0, 0
	lw $t1, -4288($fp)
	sub $t0, $t0, $t1
	sw $t0, -4292($fp)
	lw $t0, -448($fp)
	sw $t0, -4296($fp)
	lw $t0, -4292($fp)
	lw $t1, -4296($fp)
	sub $t0, $t0, $t1
	sw $t0, -4300($fp)
	addi $sp, $sp, -4
	lw $t0, -4300($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4304($fp)
	addi $sp, $sp, 8
	lw $t1, -4304($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label309
label308:
	li $t0, 1
	sw $t0, -4268($fp)
label309:
	lw $t0, -4268($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -4308($fp)
	lw $ra, -4($fp)
	lw $v0, -4308($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1084
	li $t0, 4587
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
	li $t0, 23119
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
	li $t0, 58895
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
	li $t0, 55729
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
	li $t0, 42626
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
	li $t0, 18659
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
	li $t0, 43578
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
	li $t0, 15238
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	li $t0, 26531
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	li $t0, 34892
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	li $t0, 49276
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	li $t0, 50501
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	li $t0, 26764
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	li $t0, 26992
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	li $t0, 32274
	sw $t0, -300($fp)
	addi $t0, $fp, -296
	sw $t0, -304($fp)
	li $t0, 0
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
	li $t0, 3579
	sw $t0, -324($fp)
	addi $t0, $fp, -296
	sw $t0, -328($fp)
	li $t0, 1
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
	li $t0, 53825
	sw $t0, -348($fp)
	addi $t0, $fp, -296
	sw $t0, -352($fp)
	li $t0, 2
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
label311:
	addi $t0, $fp, -32
	sw $t0, -372($fp)
	li $t0, 3
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
	lw $t0, 8($fp)
	sw $t0, -392($fp)
	li $t0, 0
	lw $t1, -392($fp)
	sub $t0, $t0, $t1
	sw $t0, -396($fp)
	li $t0, 57525
	sw $t0, -400($fp)
	lw $t0, -396($fp)
	lw $t1, -400($fp)
	add $t0, $t0, $t1
	sw $t0, -404($fp)
	li $t0, 0
	sw $t0, -408($fp)
	li $t0, 38197
	sw $t0, -412($fp)
	lw $t1, -412($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label315
label317:
	lw $t0, -220($fp)
	sw $t0, -416($fp)
	lw $t1, -416($fp)
	li $t2, 0
	bne $t1, $t2, label316
	j label315
label316:
	lw $t0, -256($fp)
	sw $t0, -420($fp)
	lw $t1, -420($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label315
label314:
	li $t0, 1
	sw $t0, -408($fp)
label315:
	addi $sp, $sp, -4
	lw $t0, -404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -408($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -424($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -424($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -428($fp)
	addi $sp, $sp, 8
	li $t0, 36062
	sw $t0, -432($fp)
	lw $t0, -428($fp)
	lw $t1, -432($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -436($fp)
	lw $t0, -388($fp)
	lw $t1, -436($fp)
	sub $t0, $t0, $t1
	sw $t0, -440($fp)
	lw $t1, -440($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label313
label312:
label318:
	addi $t0, $fp, -296
	sw $t0, -444($fp)
	li $t0, 10333
	sw $t0, -448($fp)
	addi $sp, $sp, -4
	lw $t0, -448($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -452($fp)
	addi $sp, $sp, 8
	li $t0, 4
	lw $t1, -452($fp)
	mul $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	lw $t1, -444($fp)
	add $t0, $t0, $t1
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	lw $t1, 0($t0)
	sw $t1, -464($fp)
	li $t0, 0
	sw $t0, -468($fp)
	li $t0, 59665
	sw $t0, -472($fp)
	lw $t1, -472($fp)
	li $t2, 0
	bne $t1, $t2, label322
	j label321
label321:
	li $t0, 1
	sw $t0, -468($fp)
label322:
	addi $t0, $fp, -32
	sw $t0, -476($fp)
	lw $t0, -244($fp)
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
	lw $t0, -468($fp)
	lw $t1, -492($fp)
	mul $t0, $t0, $t1
	sw $t0, -496($fp)
	lw $t0, -464($fp)
	lw $t1, -496($fp)
	sub $t0, $t0, $t1
	sw $t0, -500($fp)
	lw $t1, -500($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label320
label319:
	li $t0, 0
	sw $t0, -504($fp)
	li $t0, 0
	sw $t0, -508($fp)
	li $t0, 48416
	sw $t0, -512($fp)
	lw $t0, 8($fp)
	sw $t0, -516($fp)
	lw $t0, -512($fp)
	lw $t1, -516($fp)
	add $t0, $t0, $t1
	sw $t0, -520($fp)
	lw $t1, -520($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label328
label328:
	li $t0, 63029
	sw $t0, -524($fp)
	lw $t1, -524($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label327
label326:
	li $t0, 1
	sw $t0, -508($fp)
label327:
	addi $sp, $sp, -4
	lw $t0, -508($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -528($fp)
	addi $sp, $sp, 8
	lw $t1, -528($fp)
	li $t2, 0
	bne $t1, $t2, label323
	j label325
label325:
	addi $t0, $fp, -32
	sw $t0, -532($fp)
	li $t0, 0
	sw $t0, -536($fp)
	li $t0, 38766
	sw $t0, -540($fp)
	lw $t0, 8($fp)
	sw $t0, -544($fp)
	lw $t1, -540($fp)
	lw $t2, -544($fp)
	bne $t1, $t2, label329
	j label330
label329:
	li $t0, 1
	sw $t0, -536($fp)
label330:
	li $t0, 4
	lw $t1, -536($fp)
	mul $t0, $t0, $t1
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	lw $t1, -532($fp)
	add $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	lw $t1, 0($t0)
	sw $t1, -556($fp)
	lw $t1, -556($fp)
	li $t2, 0
	bne $t1, $t2, label323
	j label324
label323:
	li $t0, 1
	sw $t0, -504($fp)
label324:
	j label318
label320:
	j label311
label313:
	li $t0, 0
	sw $t0, -560($fp)
	lw $t0, -208($fp)
	sw $t0, -564($fp)
	lw $t1, -564($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label332
label331:
	li $t0, 1
	sw $t0, -560($fp)
label332:
	li $t0, 47504
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	li $t0, 52762
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	li $t0, 0
	sw $t0, -592($fp)
	li $t0, 0
	sw $t0, -596($fp)
	lw $t0, -572($fp)
	sw $t0, -600($fp)
	lw $t1, -600($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label336
label336:
	li $t0, 1
	sw $t0, -596($fp)
label337:
	li $t0, 52091
	sw $t0, -604($fp)
	lw $t0, -596($fp)
	lw $t1, -604($fp)
	mul $t0, $t0, $t1
	sw $t0, -608($fp)
	li $t0, 0
	sw $t0, -612($fp)
	li $t0, 37431
	sw $t0, -616($fp)
	lw $t1, -616($fp)
	li $t2, 0
	bne $t1, $t2, label338
	j label340
label340:
	lw $t0, 8($fp)
	sw $t0, -620($fp)
	lw $t1, -620($fp)
	li $t2, 0
	bne $t1, $t2, label338
	j label339
label338:
	li $t0, 1
	sw $t0, -612($fp)
label339:
	addi $sp, $sp, -4
	lw $t0, -608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -612($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -624($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -628($fp)
	li $t0, 0
	sw $t0, -632($fp)
	li $t0, 10345
	sw $t0, -636($fp)
	lw $t0, -268($fp)
	sw $t0, -640($fp)
	lw $t1, -636($fp)
	lw $t2, -640($fp)
	ble $t1, $t2, label343
	j label344
label343:
	li $t0, 1
	sw $t0, -632($fp)
label344:
	li $t0, 30791
	sw $t0, -644($fp)
	lw $t1, -632($fp)
	lw $t2, -644($fp)
	beq $t1, $t2, label341
	j label342
label341:
	li $t0, 1
	sw $t0, -628($fp)
label342:
	li $t0, 0
	sw $t0, -648($fp)
	lw $t0, 8($fp)
	sw $t0, -652($fp)
	lw $t1, -652($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label345
label345:
	li $t0, 1
	sw $t0, -648($fp)
label346:
	addi $sp, $sp, -4
	lw $t0, -628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -648($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -656($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -656($fp)
	sub $t0, $t0, $t1
	sw $t0, -660($fp)
	lw $t0, -624($fp)
	lw $t1, -660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -664($fp)
	lw $t1, -664($fp)
	li $t2, 0
	bne $t1, $t2, label335
	j label334
label335:
	lw $t0, -584($fp)
	sw $t0, -668($fp)
	lw $t0, -268($fp)
	sw $t0, -672($fp)
	li $t0, 0
	lw $t1, -672($fp)
	sub $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $t1, -668($fp)
	lw $t2, -676($fp)
	blt $t1, $t2, label333
	j label334
label333:
	li $t0, 1
	sw $t0, -592($fp)
label334:
	lw $t0, -572($fp)
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -584($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -688($fp)
	li $t0, 0
	sw $t0, -692($fp)
	lw $t0, -268($fp)
	sw $t0, -696($fp)
	lw $t1, -696($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label350
label350:
	li $t0, 1
	sw $t0, -692($fp)
label351:
	li $t0, 0
	lw $t1, -692($fp)
	sub $t0, $t0, $t1
	sw $t0, -700($fp)
	lw $t1, -700($fp)
	li $t2, 0
	bne $t1, $t2, label347
	j label349
label349:
	addi $t0, $fp, -32
	sw $t0, -704($fp)
	lw $t0, -244($fp)
	sw $t0, -708($fp)
	li $t0, 4
	lw $t1, -708($fp)
	mul $t0, $t0, $t1
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	lw $t1, -704($fp)
	add $t0, $t0, $t1
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	lw $t1, 0($t0)
	sw $t1, -720($fp)
	lw $t1, -720($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label352
label352:
	li $t0, 42285
	sw $t0, -724($fp)
	lw $t1, -724($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label347
label347:
	li $t0, 1
	sw $t0, -688($fp)
label348:
	lw $ra, -4($fp)
	lw $v0, -688($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -728($fp)
	lw $t0, -220($fp)
	sw $t0, -732($fp)
	lw $t1, -732($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label353
label353:
	li $t0, 1
	sw $t0, -728($fp)
label354:
	lw $t0, 8($fp)
	sw $t0, -736($fp)
	lw $t0, -728($fp)
	lw $t1, -736($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -740($fp)
label355:
	lw $t0, -208($fp)
	sw $t0, -744($fp)
	lw $t1, -744($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label357
label356:
	li $t0, 0
	sw $t0, -748($fp)
	addi $t0, $fp, -32
	sw $t0, -752($fp)
	lw $t0, -268($fp)
	sw $t0, -756($fp)
	li $t0, 52971
	sw $t0, -760($fp)
	lw $t0, -756($fp)
	lw $t1, -760($fp)
	mul $t0, $t0, $t1
	sw $t0, -764($fp)
	li $t0, 0
	lw $t1, -764($fp)
	sub $t0, $t0, $t1
	sw $t0, -768($fp)
	li $t0, 4
	lw $t1, -768($fp)
	mul $t0, $t0, $t1
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	lw $t1, -752($fp)
	add $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	lw $t1, 0($t0)
	sw $t1, -780($fp)
	lw $t0, 4($fp)
	sw $t0, -784($fp)
	li $t0, 49450
	sw $t0, -788($fp)
	lw $t0, -784($fp)
	lw $t1, -788($fp)
	mul $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $t1, -780($fp)
	lw $t2, -792($fp)
	bgt $t1, $t2, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -748($fp)
label359:
	j label355
label357:
label360:
	li $t0, 0
	sw $t0, -796($fp)
	lw $t0, 4($fp)
	sw $t0, -800($fp)
	lw $t1, -800($fp)
	li $t2, 0
	bne $t1, $t2, label364
	j label363
label363:
	li $t0, 1
	sw $t0, -796($fp)
label364:
	li $t0, 20327
	sw $t0, -804($fp)
	li $t0, 0
	lw $t1, -804($fp)
	sub $t0, $t0, $t1
	sw $t0, -808($fp)
	lw $t0, -796($fp)
	lw $t1, -808($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -812($fp)
	lw $t0, -220($fp)
	sw $t0, -816($fp)
	li $t0, 0
	lw $t1, -816($fp)
	sub $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t1, -812($fp)
	lw $t2, -820($fp)
	bge $t1, $t2, label361
	j label362
label361:
	addi $t0, $fp, -32
	sw $t0, -824($fp)
	li $t0, 2673
	sw $t0, -828($fp)
	lw $t0, -280($fp)
	sw $t0, -832($fp)
	lw $t0, -828($fp)
	lw $t1, -832($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -840($fp)
	li $t0, 4
	lw $t1, -840($fp)
	mul $t0, $t0, $t1
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	lw $t1, -824($fp)
	add $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	lw $t1, 0($t0)
	sw $t1, -852($fp)
	j label360
label362:
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
	sw $t0, -896($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -916($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -936($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -956($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -976($fp)
	li $t0, 6
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
	lw $t0, -208($fp)
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -232($fp)
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -244($fp)
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -256($fp)
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1024($fp)
	li $t0, 0
	sw $t0, -1028($fp)
	li $t0, 0
	sw $t0, -1032($fp)
	lw $t0, -220($fp)
	sw $t0, -1036($fp)
	lw $t1, -1036($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label372
label373:
	lw $t0, -280($fp)
	sw $t0, -1040($fp)
	lw $t1, -1040($fp)
	li $t2, 0
	bne $t1, $t2, label370
	j label372
label372:
	li $t0, 55219
	sw $t0, -1044($fp)
	lw $t1, -1044($fp)
	li $t2, 0
	bne $t1, $t2, label370
	j label371
label370:
	li $t0, 1
	sw $t0, -1032($fp)
label371:
	lw $t0, -208($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -1052($fp)
	addi $sp, $sp, -4
	lw $t0, -1032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1052($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1056($fp)
	addi $sp, $sp, 12
	lw $t0, 8($fp)
	sw $t0, -1060($fp)
	lw $t1, -1056($fp)
	lw $t2, -1060($fp)
	bge $t1, $t2, label368
	j label369
label368:
	li $t0, 1
	sw $t0, -1028($fp)
label369:
	li $t0, 10445
	sw $t0, -1064($fp)
	addi $sp, $sp, -4
	lw $t0, -1028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1064($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1068($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -1072($fp)
	li $t0, 51949
	sw $t0, -1076($fp)
	lw $t1, -1076($fp)
	li $t2, 0
	bne $t1, $t2, label374
	j label375
label374:
	li $t0, 1
	sw $t0, -1072($fp)
label375:
	lw $t0, -1068($fp)
	lw $t1, -1072($fp)
	mul $t0, $t0, $t1
	sw $t0, -1080($fp)
	lw $t1, -1080($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label366
label367:
	lw $t0, -232($fp)
	sw $t0, -1084($fp)
	lw $t0, -244($fp)
	sw $t0, -1088($fp)
	lw $t1, -1084($fp)
	lw $t2, -1088($fp)
	blt $t1, $t2, label365
	j label366
label365:
	li $t0, 1
	sw $t0, -1024($fp)
label366:
	lw $ra, -4($fp)
	lw $v0, -1024($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -16
	li $t0, 60946
	sw $t0, -8($fp)
	lw $t0, 4($fp)
	sw $t0, -12($fp)
	lw $t0, -8($fp)
	lw $t1, -12($fp)
	sub $t0, $t0, $t1
	sw $t0, -16($fp)
	lw $ra, -4($fp)
	lw $v0, -16($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 16447
	sw $t0, -20($fp)
	lw $ra, -4($fp)
	lw $v0, -20($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -796
	li $t0, 13405
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
	li $t0, 27684
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
	li $t0, 20026
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
	li $t0, 1694
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
	li $t0, 11852
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
	li $t0, 53803
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
	li $t0, 39891
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 3842
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	li $t0, 19437
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	li $t0, 10416
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	li $t0, 14175
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	li $t0, 13567
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	li $t0, 58833
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	lw $t0, -240($fp)
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -252($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 11668
	sw $t0, -268($fp)
	lw $t0, 8($fp)
	sw $t0, -272($fp)
	lw $t0, -268($fp)
	lw $t1, -272($fp)
	mul $t0, $t0, $t1
	sw $t0, -276($fp)
	lw $t0, -240($fp)
	sw $t0, -280($fp)
	lw $t0, -276($fp)
	lw $t1, -280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -284($fp)
	li $t0, 52333
	sw $t0, -288($fp)
	lw $t0, -216($fp)
	sw $t0, -292($fp)
	lw $t0, -288($fp)
	lw $t1, -292($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -296($fp)
	lw $t0, -284($fp)
	lw $t1, -296($fp)
	add $t0, $t0, $t1
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -304($fp)
	lw $ra, -4($fp)
	lw $v0, -304($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -308($fp)
	li $t0, 0
	sw $t0, -312($fp)
	li $t0, 40801
	sw $t0, -316($fp)
	lw $t1, -316($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label378
label378:
	li $t0, 1
	sw $t0, -312($fp)
label379:
	lw $t0, -192($fp)
	sw $t0, -320($fp)
	li $t0, 64430
	sw $t0, -324($fp)
	lw $t0, -320($fp)
	lw $t1, -324($fp)
	mul $t0, $t0, $t1
	sw $t0, -328($fp)
	lw $t1, -312($fp)
	lw $t2, -328($fp)
	blt $t1, $t2, label376
	j label377
label376:
	li $t0, 1
	sw $t0, -308($fp)
label377:
	li $t0, 0
	sw $t0, -332($fp)
	li $t0, 24229
	sw $t0, -336($fp)
	lw $t1, -336($fp)
	li $t2, 0
	bne $t1, $t2, label381
	j label380
label380:
	li $t0, 1
	sw $t0, -332($fp)
label381:
	lw $t0, -204($fp)
	sw $t0, -340($fp)
	lw $t0, -332($fp)
	lw $t1, -340($fp)
	mul $t0, $t0, $t1
	sw $t0, -344($fp)
	li $t0, 0
	lw $t1, -344($fp)
	sub $t0, $t0, $t1
	sw $t0, -348($fp)
	li $t0, 0
	sw $t0, -352($fp)
	li $t0, 27357
	sw $t0, -356($fp)
	lw $t1, -356($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label383
label384:
	lw $t0, -240($fp)
	sw $t0, -360($fp)
	lw $t1, -360($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label383
label382:
	li $t0, 1
	sw $t0, -352($fp)
label383:
	lw $t0, -240($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -252($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -372($fp)
	li $t0, 0
	sw $t0, -376($fp)
	lw $t0, 8($fp)
	sw $t0, -380($fp)
	li $t0, 9239
	sw $t0, -384($fp)
	lw $t0, -380($fp)
	lw $t1, -384($fp)
	mul $t0, $t0, $t1
	sw $t0, -388($fp)
	lw $t1, -388($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label388
label388:
	lw $t0, 8($fp)
	sw $t0, -392($fp)
	lw $t1, -392($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label387
label387:
	li $t0, 62210
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -400($fp)
	lw $t0, -240($fp)
	sw $t0, -404($fp)
	lw $t0, 8($fp)
	sw $t0, -408($fp)
	lw $t0, -404($fp)
	lw $t1, -408($fp)
	sub $t0, $t0, $t1
	sw $t0, -412($fp)
	lw $t0, 4($fp)
	sw $t0, -416($fp)
	lw $t0, -412($fp)
	lw $t1, -416($fp)
	sub $t0, $t0, $t1
	sw $t0, -420($fp)
	li $t0, 0
	sw $t0, -424($fp)
	li $t0, 55020
	sw $t0, -428($fp)
	lw $t1, -428($fp)
	li $t2, 0
	bne $t1, $t2, label389
	j label391
label391:
	li $t0, 4106
	sw $t0, -432($fp)
	lw $t1, -432($fp)
	li $t2, 0
	bne $t1, $t2, label389
	j label390
label389:
	li $t0, 1
	sw $t0, -424($fp)
label390:
	addi $sp, $sp, -4
	lw $t0, -400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -424($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -436($fp)
	addi $sp, $sp, 16
	lw $t1, -436($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label386
label385:
	li $t0, 1
	sw $t0, -376($fp)
label386:
	li $t0, 4
	lw $t1, -376($fp)
	mul $t0, $t0, $t1
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	lw $t1, -372($fp)
	add $t0, $t0, $t1
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	lw $t1, 0($t0)
	sw $t1, -448($fp)
	lw $ra, -4($fp)
	lw $v0, -448($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -240($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -252($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -460($fp)
	li $t0, 0
	sw $t0, -464($fp)
	li $t0, 38934
	sw $t0, -468($fp)
	lw $t0, -252($fp)
	sw $t0, -472($fp)
	lw $t0, -468($fp)
	lw $t1, -472($fp)
	sub $t0, $t0, $t1
	sw $t0, -476($fp)
	li $t0, 24433
	sw $t0, -480($fp)
	lw $t0, -476($fp)
	lw $t1, -480($fp)
	sub $t0, $t0, $t1
	sw $t0, -484($fp)
	li $t0, 64883
	sw $t0, -488($fp)
	lw $t0, -484($fp)
	lw $t1, -488($fp)
	sub $t0, $t0, $t1
	sw $t0, -492($fp)
	lw $t0, -216($fp)
	sw $t0, -496($fp)
	li $t0, 49380
	sw $t0, -500($fp)
	lw $t0, -496($fp)
	lw $t1, -500($fp)
	sub $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $t1, -492($fp)
	lw $t2, -504($fp)
	bge $t1, $t2, label394
	j label395
label394:
	li $t0, 1
	sw $t0, -464($fp)
label395:
	addi $t0, $fp, -28
	sw $t0, -508($fp)
	lw $t0, 8($fp)
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
	li $t0, 0
	lw $t1, -524($fp)
	sub $t0, $t0, $t1
	sw $t0, -528($fp)
	li $t0, 0
	lw $t1, -528($fp)
	sub $t0, $t0, $t1
	sw $t0, -532($fp)
	lw $t1, -464($fp)
	lw $t2, -532($fp)
	bge $t1, $t2, label392
	j label393
label392:
	li $t0, 1
	sw $t0, -460($fp)
label393:
	lw $ra, -4($fp)
	lw $v0, -460($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -240($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -252($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -544($fp)
	li $t0, 14116
	sw $t0, -548($fp)
	lw $t1, -548($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label398
label398:
	lw $t0, -204($fp)
	sw $t0, -552($fp)
	lw $t1, -552($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label397
label396:
	li $t0, 1
	sw $t0, -544($fp)
label397:
	lw $ra, -4($fp)
	lw $v0, -544($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -556($fp)
	li $t0, 0
	sw $t0, -560($fp)
	li $t0, 0
	sw $t0, -564($fp)
	lw $t0, -216($fp)
	sw $t0, -568($fp)
	lw $t1, -568($fp)
	li $t2, 0
	bne $t1, $t2, label405
	j label404
label404:
	li $t0, 1
	sw $t0, -564($fp)
label405:
	li $t0, 44790
	sw $t0, -572($fp)
	lw $t1, -564($fp)
	lw $t2, -572($fp)
	blt $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -560($fp)
label403:
	lw $t0, -204($fp)
	sw $t0, -576($fp)
	lw $t0, 12($fp)
	sw $t0, -580($fp)
	lw $t0, -576($fp)
	lw $t1, -580($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -584($fp)
	li $t0, 51296
	sw $t0, -588($fp)
	lw $t0, -584($fp)
	lw $t1, -588($fp)
	add $t0, $t0, $t1
	sw $t0, -592($fp)
	addi $sp, $sp, -4
	lw $t0, -560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -592($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -596($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -600($fp)
	li $t0, 30563
	sw $t0, -604($fp)
	lw $t1, -604($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label406
label406:
	li $t0, 1
	sw $t0, -600($fp)
label407:
	lw $t1, -596($fp)
	lw $t2, -600($fp)
	beq $t1, $t2, label399
	j label401
label401:
	lw $t0, -204($fp)
	sw $t0, -608($fp)
	lw $t0, -228($fp)
	sw $t0, -612($fp)
	lw $t0, -608($fp)
	lw $t1, -612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -616($fp)
	lw $t0, -204($fp)
	sw $t0, -620($fp)
	lw $t0, -616($fp)
	lw $t1, -620($fp)
	mul $t0, $t0, $t1
	sw $t0, -624($fp)
	li $t0, 0
	sw $t0, -628($fp)
	lw $t0, 8($fp)
	sw $t0, -632($fp)
	lw $t1, -632($fp)
	li $t2, 0
	bne $t1, $t2, label409
	j label408
label408:
	li $t0, 1
	sw $t0, -628($fp)
label409:
	lw $t1, -624($fp)
	lw $t2, -628($fp)
	ble $t1, $t2, label399
	j label400
label399:
	li $t0, 1
	sw $t0, -556($fp)
label400:
	addi $t0, $fp, -28
	sw $t0, -636($fp)
	li $t0, 0
	sw $t0, -640($fp)
	li $t0, 4
	lw $t1, -640($fp)
	mul $t0, $t0, $t1
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	lw $t1, -636($fp)
	add $t0, $t0, $t1
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	lw $t1, 0($t0)
	sw $t1, -652($fp)
	lw $t0, -652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -656($fp)
	li $t0, 1
	sw $t0, -660($fp)
	li $t0, 4
	lw $t1, -660($fp)
	mul $t0, $t0, $t1
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	lw $t1, -656($fp)
	add $t0, $t0, $t1
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	lw $t1, 0($t0)
	sw $t1, -672($fp)
	lw $t0, -672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -676($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -696($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -716($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -736($fp)
	li $t0, 5
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
	lw $t0, -180($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -764($fp)
	li $t0, 0
	sw $t0, -768($fp)
	addi $t0, $fp, -28
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
	lw $t0, 8($fp)
	sw $t0, -792($fp)
	lw $t1, -788($fp)
	lw $t2, -792($fp)
	beq $t1, $t2, label412
	j label413
label412:
	li $t0, 1
	sw $t0, -768($fp)
label413:
	lw $t0, -180($fp)
	sw $t0, -796($fp)
	lw $t1, -768($fp)
	lw $t2, -796($fp)
	bne $t1, $t2, label410
	j label411
label410:
	li $t0, 1
	sw $t0, -764($fp)
label411:
	lw $t0, -764($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -800($fp)
	lw $ra, -4($fp)
	lw $v0, -800($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -9492
	li $t0, 50589
	sw $t0, -328($fp)
	addi $t0, $fp, -24
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
	li $t0, 860
	sw $t0, -352($fp)
	addi $t0, $fp, -24
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
	li $t0, 18791
	sw $t0, -376($fp)
	addi $t0, $fp, -24
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
	li $t0, 38856
	sw $t0, -400($fp)
	addi $t0, $fp, -24
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
	li $t0, 40751
	sw $t0, -424($fp)
	addi $t0, $fp, -24
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
	li $t0, 22633
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	li $t0, 58294
	sw $t0, -460($fp)
	addi $t0, $fp, -32
	sw $t0, -464($fp)
	li $t0, 0
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
	li $t0, 51168
	sw $t0, -484($fp)
	addi $t0, $fp, -32
	sw $t0, -488($fp)
	li $t0, 1
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
	li $t0, 36808
	sw $t0, -508($fp)
	addi $t0, $fp, -52
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
	li $t0, 6325
	sw $t0, -532($fp)
	addi $t0, $fp, -52
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
	li $t0, 44465
	sw $t0, -556($fp)
	addi $t0, $fp, -52
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
	li $t0, 48476
	sw $t0, -580($fp)
	addi $t0, $fp, -52
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
	li $t0, 58658
	sw $t0, -604($fp)
	addi $t0, $fp, -52
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
	li $t0, 19730
	sw $t0, -628($fp)
	addi $t0, $fp, -56
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
	li $t0, 47370
	sw $t0, -652($fp)
	addi $t0, $fp, -80
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
	li $t0, 17351
	sw $t0, -676($fp)
	addi $t0, $fp, -80
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
	li $t0, 47087
	sw $t0, -700($fp)
	addi $t0, $fp, -80
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
	li $t0, 56609
	sw $t0, -724($fp)
	addi $t0, $fp, -80
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
	li $t0, 6835
	sw $t0, -748($fp)
	addi $t0, $fp, -80
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
	li $t0, 51193
	sw $t0, -772($fp)
	addi $t0, $fp, -80
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
	li $t0, 53283
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -804($fp)
	li $t0, 45770
	sw $t0, -808($fp)
	addi $t0, $fp, -96
	sw $t0, -812($fp)
	li $t0, 0
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
	li $t0, 10090
	sw $t0, -832($fp)
	addi $t0, $fp, -96
	sw $t0, -836($fp)
	li $t0, 1
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -844($fp)
	lw $t0, -836($fp)
	lw $t1, -844($fp)
	add $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, -832($fp)
	lw $t1, -848($fp)
	sw $t0, 0($t1)
	lw $t0, -848($fp)
	lw $t1, 0($t0)
	sw $t1, -852($fp)
	li $t0, 52630
	sw $t0, -856($fp)
	addi $t0, $fp, -96
	sw $t0, -860($fp)
	li $t0, 2
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $t0, -860($fp)
	lw $t1, -868($fp)
	add $t0, $t0, $t1
	sw $t0, -872($fp)
	lw $t0, -856($fp)
	lw $t1, -872($fp)
	sw $t0, 0($t1)
	lw $t0, -872($fp)
	lw $t1, 0($t0)
	sw $t1, -876($fp)
	li $t0, 29614
	sw $t0, -880($fp)
	addi $t0, $fp, -96
	sw $t0, -884($fp)
	li $t0, 3
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
	li $t0, 24206
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -912($fp)
	li $t0, 38390
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	li $t0, 8868
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	li $t0, 54769
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -948($fp)
	li $t0, 37556
	sw $t0, -952($fp)
	addi $t0, $fp, -128
	sw $t0, -956($fp)
	li $t0, 0
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
	li $t0, 15807
	sw $t0, -976($fp)
	addi $t0, $fp, -128
	sw $t0, -980($fp)
	li $t0, 1
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
	li $t0, 39822
	sw $t0, -1000($fp)
	addi $t0, $fp, -128
	sw $t0, -1004($fp)
	li $t0, 2
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
	li $t0, 38416
	sw $t0, -1024($fp)
	addi $t0, $fp, -128
	sw $t0, -1028($fp)
	li $t0, 3
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
	li $t0, 34599
	sw $t0, -1048($fp)
	addi $t0, $fp, -128
	sw $t0, -1052($fp)
	li $t0, 4
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
	li $t0, 13143
	sw $t0, -1072($fp)
	addi $t0, $fp, -128
	sw $t0, -1076($fp)
	li $t0, 5
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
	li $t0, 13631
	sw $t0, -1096($fp)
	addi $t0, $fp, -128
	sw $t0, -1100($fp)
	li $t0, 6
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
	li $t0, 57232
	sw $t0, -1120($fp)
	addi $t0, $fp, -128
	sw $t0, -1124($fp)
	li $t0, 7
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
	li $t0, 5901
	sw $t0, -1144($fp)
	addi $t0, $fp, -148
	sw $t0, -1148($fp)
	li $t0, 0
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
	li $t0, 64799
	sw $t0, -1168($fp)
	addi $t0, $fp, -148
	sw $t0, -1172($fp)
	li $t0, 1
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1180($fp)
	lw $t0, -1172($fp)
	lw $t1, -1180($fp)
	add $t0, $t0, $t1
	sw $t0, -1184($fp)
	lw $t0, -1168($fp)
	lw $t1, -1184($fp)
	sw $t0, 0($t1)
	lw $t0, -1184($fp)
	lw $t1, 0($t0)
	sw $t1, -1188($fp)
	li $t0, 28505
	sw $t0, -1192($fp)
	addi $t0, $fp, -148
	sw $t0, -1196($fp)
	li $t0, 2
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1204($fp)
	lw $t0, -1196($fp)
	lw $t1, -1204($fp)
	add $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t0, -1192($fp)
	lw $t1, -1208($fp)
	sw $t0, 0($t1)
	lw $t0, -1208($fp)
	lw $t1, 0($t0)
	sw $t1, -1212($fp)
	li $t0, 12226
	sw $t0, -1216($fp)
	addi $t0, $fp, -148
	sw $t0, -1220($fp)
	li $t0, 3
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
	li $t0, 43728
	sw $t0, -1240($fp)
	addi $t0, $fp, -148
	sw $t0, -1244($fp)
	li $t0, 4
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
	li $t0, 11445
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	li $t0, 5348
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	li $t0, 63459
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -1296($fp)
	li $t0, 58816
	sw $t0, -1300($fp)
	addi $t0, $fp, -156
	sw $t0, -1304($fp)
	li $t0, 0
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1312($fp)
	lw $t0, -1304($fp)
	lw $t1, -1312($fp)
	add $t0, $t0, $t1
	sw $t0, -1316($fp)
	lw $t0, -1300($fp)
	lw $t1, -1316($fp)
	sw $t0, 0($t1)
	lw $t0, -1316($fp)
	lw $t1, 0($t0)
	sw $t1, -1320($fp)
	li $t0, 22700
	sw $t0, -1324($fp)
	addi $t0, $fp, -156
	sw $t0, -1328($fp)
	li $t0, 1
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1336($fp)
	lw $t0, -1328($fp)
	lw $t1, -1336($fp)
	add $t0, $t0, $t1
	sw $t0, -1340($fp)
	lw $t0, -1324($fp)
	lw $t1, -1340($fp)
	sw $t0, 0($t1)
	lw $t0, -1340($fp)
	lw $t1, 0($t0)
	sw $t1, -1344($fp)
	li $t0, 45010
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	sw $t0, -1356($fp)
	li $t0, 49889
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -1368($fp)
	li $t0, 29535
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	sw $t0, -1380($fp)
	li $t0, 30668
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -1392($fp)
	li $t0, 37637
	sw $t0, -1396($fp)
	addi $t0, $fp, -164
	sw $t0, -1400($fp)
	li $t0, 0
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
	li $t0, 9769
	sw $t0, -1420($fp)
	addi $t0, $fp, -164
	sw $t0, -1424($fp)
	li $t0, 1
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
	li $t0, 40758
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1452($fp)
	li $t0, 24731
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -1464($fp)
	li $t0, 39383
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, -1476($fp)
	li $t0, 64965
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	sw $t0, -1488($fp)
	li $t0, 63122
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	sw $t0, -1500($fp)
	li $t0, 48252
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -1512($fp)
	li $t0, 54198
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -1524($fp)
	li $t0, 35142
	sw $t0, -1528($fp)
	addi $t0, $fp, -184
	sw $t0, -1532($fp)
	li $t0, 0
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
	li $t0, 64059
	sw $t0, -1552($fp)
	addi $t0, $fp, -184
	sw $t0, -1556($fp)
	li $t0, 1
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
	li $t0, 28485
	sw $t0, -1576($fp)
	addi $t0, $fp, -184
	sw $t0, -1580($fp)
	li $t0, 2
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1588($fp)
	lw $t0, -1580($fp)
	lw $t1, -1588($fp)
	add $t0, $t0, $t1
	sw $t0, -1592($fp)
	lw $t0, -1576($fp)
	lw $t1, -1592($fp)
	sw $t0, 0($t1)
	lw $t0, -1592($fp)
	lw $t1, 0($t0)
	sw $t1, -1596($fp)
	li $t0, 8022
	sw $t0, -1600($fp)
	addi $t0, $fp, -184
	sw $t0, -1604($fp)
	li $t0, 3
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $t0, -1604($fp)
	lw $t1, -1612($fp)
	add $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, -1600($fp)
	lw $t1, -1616($fp)
	sw $t0, 0($t1)
	lw $t0, -1616($fp)
	lw $t1, 0($t0)
	sw $t1, -1620($fp)
	li $t0, 33122
	sw $t0, -1624($fp)
	addi $t0, $fp, -184
	sw $t0, -1628($fp)
	li $t0, 4
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
	li $t0, 41628
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	sw $t0, -1656($fp)
	li $t0, 21653
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	sw $t0, -1668($fp)
	li $t0, 24819
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	sw $t0, -1680($fp)
	li $t0, 47529
	sw $t0, -1684($fp)
	addi $t0, $fp, -188
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
	li $t0, 20917
	sw $t0, -1708($fp)
	addi $t0, $fp, -200
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
	li $t0, 53324
	sw $t0, -1732($fp)
	addi $t0, $fp, -200
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
	li $t0, 59755
	sw $t0, -1756($fp)
	addi $t0, $fp, -200
	sw $t0, -1760($fp)
	li $t0, 2
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
	li $t0, 64645
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	sw $t0, -1788($fp)
	li $t0, 64769
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	sw $t0, -1800($fp)
	li $t0, 65103
	sw $t0, -1804($fp)
	addi $t0, $fp, -212
	sw $t0, -1808($fp)
	li $t0, 0
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t0, -1808($fp)
	lw $t1, -1816($fp)
	add $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t0, -1804($fp)
	lw $t1, -1820($fp)
	sw $t0, 0($t1)
	lw $t0, -1820($fp)
	lw $t1, 0($t0)
	sw $t1, -1824($fp)
	li $t0, 62568
	sw $t0, -1828($fp)
	addi $t0, $fp, -212
	sw $t0, -1832($fp)
	li $t0, 1
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t0, -1832($fp)
	lw $t1, -1840($fp)
	add $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $t0, -1828($fp)
	lw $t1, -1844($fp)
	sw $t0, 0($t1)
	lw $t0, -1844($fp)
	lw $t1, 0($t0)
	sw $t1, -1848($fp)
	li $t0, 58049
	sw $t0, -1852($fp)
	addi $t0, $fp, -212
	sw $t0, -1856($fp)
	li $t0, 2
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t0, -1856($fp)
	lw $t1, -1864($fp)
	add $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $t0, -1852($fp)
	lw $t1, -1868($fp)
	sw $t0, 0($t1)
	lw $t0, -1868($fp)
	lw $t1, 0($t0)
	sw $t1, -1872($fp)
	li $t0, 22267
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	sw $t0, -1884($fp)
	li $t0, 42043
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	sw $t0, -1896($fp)
	li $t0, 42403
	sw $t0, -1900($fp)
	addi $t0, $fp, -236
	sw $t0, -1904($fp)
	li $t0, 0
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1912($fp)
	lw $t0, -1904($fp)
	lw $t1, -1912($fp)
	add $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t0, -1900($fp)
	lw $t1, -1916($fp)
	sw $t0, 0($t1)
	lw $t0, -1916($fp)
	lw $t1, 0($t0)
	sw $t1, -1920($fp)
	li $t0, 51803
	sw $t0, -1924($fp)
	addi $t0, $fp, -236
	sw $t0, -1928($fp)
	li $t0, 1
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t0, -1928($fp)
	lw $t1, -1936($fp)
	add $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t0, -1924($fp)
	lw $t1, -1940($fp)
	sw $t0, 0($t1)
	lw $t0, -1940($fp)
	lw $t1, 0($t0)
	sw $t1, -1944($fp)
	li $t0, 7175
	sw $t0, -1948($fp)
	addi $t0, $fp, -236
	sw $t0, -1952($fp)
	li $t0, 2
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1960($fp)
	lw $t0, -1952($fp)
	lw $t1, -1960($fp)
	add $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t0, -1948($fp)
	lw $t1, -1964($fp)
	sw $t0, 0($t1)
	lw $t0, -1964($fp)
	lw $t1, 0($t0)
	sw $t1, -1968($fp)
	li $t0, 14504
	sw $t0, -1972($fp)
	addi $t0, $fp, -236
	sw $t0, -1976($fp)
	li $t0, 3
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t0, -1976($fp)
	lw $t1, -1984($fp)
	add $t0, $t0, $t1
	sw $t0, -1988($fp)
	lw $t0, -1972($fp)
	lw $t1, -1988($fp)
	sw $t0, 0($t1)
	lw $t0, -1988($fp)
	lw $t1, 0($t0)
	sw $t1, -1992($fp)
	li $t0, 61572
	sw $t0, -1996($fp)
	addi $t0, $fp, -236
	sw $t0, -2000($fp)
	li $t0, 4
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $t0, -2000($fp)
	lw $t1, -2008($fp)
	add $t0, $t0, $t1
	sw $t0, -2012($fp)
	lw $t0, -1996($fp)
	lw $t1, -2012($fp)
	sw $t0, 0($t1)
	lw $t0, -2012($fp)
	lw $t1, 0($t0)
	sw $t1, -2016($fp)
	li $t0, 47933
	sw $t0, -2020($fp)
	addi $t0, $fp, -236
	sw $t0, -2024($fp)
	li $t0, 5
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2032($fp)
	lw $t0, -2024($fp)
	lw $t1, -2032($fp)
	add $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2020($fp)
	lw $t1, -2036($fp)
	sw $t0, 0($t1)
	lw $t0, -2036($fp)
	lw $t1, 0($t0)
	sw $t1, -2040($fp)
	li $t0, 39235
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	sw $t0, -2052($fp)
	li $t0, 35420
	sw $t0, -2056($fp)
	addi $t0, $fp, -244
	sw $t0, -2060($fp)
	li $t0, 0
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
	li $t0, 47362
	sw $t0, -2080($fp)
	addi $t0, $fp, -244
	sw $t0, -2084($fp)
	li $t0, 1
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
	li $t0, 36821
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	sw $t0, -2112($fp)
	li $t0, 18136
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	sw $t0, -2124($fp)
	li $t0, 36025
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	sw $t0, -2136($fp)
	li $t0, 6427
	sw $t0, -2140($fp)
	addi $t0, $fp, -280
	sw $t0, -2144($fp)
	li $t0, 0
	sw $t0, -2148($fp)
	lw $t0, -2148($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2144($fp)
	lw $t1, -2152($fp)
	add $t0, $t0, $t1
	sw $t0, -2156($fp)
	lw $t0, -2140($fp)
	lw $t1, -2156($fp)
	sw $t0, 0($t1)
	lw $t0, -2156($fp)
	lw $t1, 0($t0)
	sw $t1, -2160($fp)
	li $t0, 16659
	sw $t0, -2164($fp)
	addi $t0, $fp, -280
	sw $t0, -2168($fp)
	li $t0, 1
	sw $t0, -2172($fp)
	lw $t0, -2172($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2176($fp)
	lw $t0, -2168($fp)
	lw $t1, -2176($fp)
	add $t0, $t0, $t1
	sw $t0, -2180($fp)
	lw $t0, -2164($fp)
	lw $t1, -2180($fp)
	sw $t0, 0($t1)
	lw $t0, -2180($fp)
	lw $t1, 0($t0)
	sw $t1, -2184($fp)
	li $t0, 64510
	sw $t0, -2188($fp)
	addi $t0, $fp, -280
	sw $t0, -2192($fp)
	li $t0, 2
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2200($fp)
	lw $t0, -2192($fp)
	lw $t1, -2200($fp)
	add $t0, $t0, $t1
	sw $t0, -2204($fp)
	lw $t0, -2188($fp)
	lw $t1, -2204($fp)
	sw $t0, 0($t1)
	lw $t0, -2204($fp)
	lw $t1, 0($t0)
	sw $t1, -2208($fp)
	li $t0, 14449
	sw $t0, -2212($fp)
	addi $t0, $fp, -280
	sw $t0, -2216($fp)
	li $t0, 3
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2224($fp)
	lw $t0, -2216($fp)
	lw $t1, -2224($fp)
	add $t0, $t0, $t1
	sw $t0, -2228($fp)
	lw $t0, -2212($fp)
	lw $t1, -2228($fp)
	sw $t0, 0($t1)
	lw $t0, -2228($fp)
	lw $t1, 0($t0)
	sw $t1, -2232($fp)
	li $t0, 49782
	sw $t0, -2236($fp)
	addi $t0, $fp, -280
	sw $t0, -2240($fp)
	li $t0, 4
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t0, -2240($fp)
	lw $t1, -2248($fp)
	add $t0, $t0, $t1
	sw $t0, -2252($fp)
	lw $t0, -2236($fp)
	lw $t1, -2252($fp)
	sw $t0, 0($t1)
	lw $t0, -2252($fp)
	lw $t1, 0($t0)
	sw $t1, -2256($fp)
	li $t0, 40602
	sw $t0, -2260($fp)
	addi $t0, $fp, -280
	sw $t0, -2264($fp)
	li $t0, 5
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2272($fp)
	lw $t0, -2264($fp)
	lw $t1, -2272($fp)
	add $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $t0, -2260($fp)
	lw $t1, -2276($fp)
	sw $t0, 0($t1)
	lw $t0, -2276($fp)
	lw $t1, 0($t0)
	sw $t1, -2280($fp)
	li $t0, 36103
	sw $t0, -2284($fp)
	addi $t0, $fp, -280
	sw $t0, -2288($fp)
	li $t0, 6
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -2288($fp)
	lw $t1, -2296($fp)
	add $t0, $t0, $t1
	sw $t0, -2300($fp)
	lw $t0, -2284($fp)
	lw $t1, -2300($fp)
	sw $t0, 0($t1)
	lw $t0, -2300($fp)
	lw $t1, 0($t0)
	sw $t1, -2304($fp)
	li $t0, 9065
	sw $t0, -2308($fp)
	addi $t0, $fp, -280
	sw $t0, -2312($fp)
	li $t0, 7
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2320($fp)
	lw $t0, -2312($fp)
	lw $t1, -2320($fp)
	add $t0, $t0, $t1
	sw $t0, -2324($fp)
	lw $t0, -2308($fp)
	lw $t1, -2324($fp)
	sw $t0, 0($t1)
	lw $t0, -2324($fp)
	lw $t1, 0($t0)
	sw $t1, -2328($fp)
	li $t0, 22595
	sw $t0, -2332($fp)
	addi $t0, $fp, -280
	sw $t0, -2336($fp)
	li $t0, 8
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2344($fp)
	lw $t0, -2336($fp)
	lw $t1, -2344($fp)
	add $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t0, -2332($fp)
	lw $t1, -2348($fp)
	sw $t0, 0($t1)
	lw $t0, -2348($fp)
	lw $t1, 0($t0)
	sw $t1, -2352($fp)
	li $t0, 57020
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	sw $t0, -2364($fp)
	li $t0, 62389
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	sw $t0, -2376($fp)
	li $t0, 16814
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	sw $t0, -2388($fp)
	li $t0, 56129
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	sw $t0, -2400($fp)
	li $t0, 61622
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	sw $t0, -2412($fp)
	li $t0, 16381
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	sw $t0, -2424($fp)
	li $t0, 53162
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	sw $t0, -2436($fp)
	li $t0, 54136
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	sw $t0, -2448($fp)
	li $t0, 38649
	sw $t0, -2452($fp)
	addi $t0, $fp, -284
	sw $t0, -2456($fp)
	li $t0, 0
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2464($fp)
	lw $t0, -2456($fp)
	lw $t1, -2464($fp)
	add $t0, $t0, $t1
	sw $t0, -2468($fp)
	lw $t0, -2452($fp)
	lw $t1, -2468($fp)
	sw $t0, 0($t1)
	lw $t0, -2468($fp)
	lw $t1, 0($t0)
	sw $t1, -2472($fp)
	li $t0, 29669
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	sw $t0, -2484($fp)
	li $t0, 31003
	sw $t0, -2488($fp)
	addi $t0, $fp, -324
	sw $t0, -2492($fp)
	li $t0, 0
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
	li $t0, 24916
	sw $t0, -2512($fp)
	addi $t0, $fp, -324
	sw $t0, -2516($fp)
	li $t0, 1
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2524($fp)
	lw $t0, -2516($fp)
	lw $t1, -2524($fp)
	add $t0, $t0, $t1
	sw $t0, -2528($fp)
	lw $t0, -2512($fp)
	lw $t1, -2528($fp)
	sw $t0, 0($t1)
	lw $t0, -2528($fp)
	lw $t1, 0($t0)
	sw $t1, -2532($fp)
	li $t0, 36844
	sw $t0, -2536($fp)
	addi $t0, $fp, -324
	sw $t0, -2540($fp)
	li $t0, 2
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2548($fp)
	lw $t0, -2540($fp)
	lw $t1, -2548($fp)
	add $t0, $t0, $t1
	sw $t0, -2552($fp)
	lw $t0, -2536($fp)
	lw $t1, -2552($fp)
	sw $t0, 0($t1)
	lw $t0, -2552($fp)
	lw $t1, 0($t0)
	sw $t1, -2556($fp)
	li $t0, 45507
	sw $t0, -2560($fp)
	addi $t0, $fp, -324
	sw $t0, -2564($fp)
	li $t0, 3
	sw $t0, -2568($fp)
	lw $t0, -2568($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2572($fp)
	lw $t0, -2564($fp)
	lw $t1, -2572($fp)
	add $t0, $t0, $t1
	sw $t0, -2576($fp)
	lw $t0, -2560($fp)
	lw $t1, -2576($fp)
	sw $t0, 0($t1)
	lw $t0, -2576($fp)
	lw $t1, 0($t0)
	sw $t1, -2580($fp)
	li $t0, 20952
	sw $t0, -2584($fp)
	addi $t0, $fp, -324
	sw $t0, -2588($fp)
	li $t0, 4
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2596($fp)
	lw $t0, -2588($fp)
	lw $t1, -2596($fp)
	add $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $t0, -2584($fp)
	lw $t1, -2600($fp)
	sw $t0, 0($t1)
	lw $t0, -2600($fp)
	lw $t1, 0($t0)
	sw $t1, -2604($fp)
	li $t0, 19241
	sw $t0, -2608($fp)
	addi $t0, $fp, -324
	sw $t0, -2612($fp)
	li $t0, 5
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2620($fp)
	lw $t0, -2612($fp)
	lw $t1, -2620($fp)
	add $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t0, -2608($fp)
	lw $t1, -2624($fp)
	sw $t0, 0($t1)
	lw $t0, -2624($fp)
	lw $t1, 0($t0)
	sw $t1, -2628($fp)
	li $t0, 19206
	sw $t0, -2632($fp)
	addi $t0, $fp, -324
	sw $t0, -2636($fp)
	li $t0, 6
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2644($fp)
	lw $t0, -2636($fp)
	lw $t1, -2644($fp)
	add $t0, $t0, $t1
	sw $t0, -2648($fp)
	lw $t0, -2632($fp)
	lw $t1, -2648($fp)
	sw $t0, 0($t1)
	lw $t0, -2648($fp)
	lw $t1, 0($t0)
	sw $t1, -2652($fp)
	li $t0, 56372
	sw $t0, -2656($fp)
	addi $t0, $fp, -324
	sw $t0, -2660($fp)
	li $t0, 7
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2668($fp)
	lw $t0, -2660($fp)
	lw $t1, -2668($fp)
	add $t0, $t0, $t1
	sw $t0, -2672($fp)
	lw $t0, -2656($fp)
	lw $t1, -2672($fp)
	sw $t0, 0($t1)
	lw $t0, -2672($fp)
	lw $t1, 0($t0)
	sw $t1, -2676($fp)
	li $t0, 1068
	sw $t0, -2680($fp)
	addi $t0, $fp, -324
	sw $t0, -2684($fp)
	li $t0, 8
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2692($fp)
	lw $t0, -2684($fp)
	lw $t1, -2692($fp)
	add $t0, $t0, $t1
	sw $t0, -2696($fp)
	lw $t0, -2680($fp)
	lw $t1, -2696($fp)
	sw $t0, 0($t1)
	lw $t0, -2696($fp)
	lw $t1, 0($t0)
	sw $t1, -2700($fp)
	li $t0, 56028
	sw $t0, -2704($fp)
	addi $t0, $fp, -324
	sw $t0, -2708($fp)
	li $t0, 9
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2716($fp)
	lw $t0, -2708($fp)
	lw $t1, -2716($fp)
	add $t0, $t0, $t1
	sw $t0, -2720($fp)
	lw $t0, -2704($fp)
	lw $t1, -2720($fp)
	sw $t0, 0($t1)
	lw $t0, -2720($fp)
	lw $t1, 0($t0)
	sw $t1, -2724($fp)
	li $t0, 8972
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	sw $t0, -2732($fp)
	lw $t0, -2732($fp)
	sw $t0, -2736($fp)
	li $t0, 37093
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	sw $t0, -2744($fp)
	lw $t0, -2744($fp)
	sw $t0, -2748($fp)
	li $t0, 62455
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	sw $t0, -2756($fp)
	lw $t0, -2756($fp)
	sw $t0, -2760($fp)
	li $t0, 25632
	sw $t0, -2804($fp)
	addi $t0, $fp, -2776
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
	li $t0, 36067
	sw $t0, -2828($fp)
	addi $t0, $fp, -2776
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
	li $t0, 11369
	sw $t0, -2852($fp)
	addi $t0, $fp, -2776
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
	li $t0, 9878
	sw $t0, -2876($fp)
	addi $t0, $fp, -2776
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
	li $t0, 11133
	sw $t0, -2900($fp)
	addi $t0, $fp, -2800
	sw $t0, -2904($fp)
	li $t0, 0
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
	li $t0, 47472
	sw $t0, -2924($fp)
	addi $t0, $fp, -2800
	sw $t0, -2928($fp)
	li $t0, 1
	sw $t0, -2932($fp)
	lw $t0, -2932($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2936($fp)
	lw $t0, -2928($fp)
	lw $t1, -2936($fp)
	add $t0, $t0, $t1
	sw $t0, -2940($fp)
	lw $t0, -2924($fp)
	lw $t1, -2940($fp)
	sw $t0, 0($t1)
	lw $t0, -2940($fp)
	lw $t1, 0($t0)
	sw $t1, -2944($fp)
	li $t0, 18943
	sw $t0, -2948($fp)
	addi $t0, $fp, -2800
	sw $t0, -2952($fp)
	li $t0, 2
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2960($fp)
	lw $t0, -2952($fp)
	lw $t1, -2960($fp)
	add $t0, $t0, $t1
	sw $t0, -2964($fp)
	lw $t0, -2948($fp)
	lw $t1, -2964($fp)
	sw $t0, 0($t1)
	lw $t0, -2964($fp)
	lw $t1, 0($t0)
	sw $t1, -2968($fp)
	li $t0, 33728
	sw $t0, -2972($fp)
	addi $t0, $fp, -2800
	sw $t0, -2976($fp)
	li $t0, 3
	sw $t0, -2980($fp)
	lw $t0, -2980($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2984($fp)
	lw $t0, -2976($fp)
	lw $t1, -2984($fp)
	add $t0, $t0, $t1
	sw $t0, -2988($fp)
	lw $t0, -2972($fp)
	lw $t1, -2988($fp)
	sw $t0, 0($t1)
	lw $t0, -2988($fp)
	lw $t1, 0($t0)
	sw $t1, -2992($fp)
	li $t0, 38956
	sw $t0, -2996($fp)
	addi $t0, $fp, -2800
	sw $t0, -3000($fp)
	li $t0, 4
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
	li $t0, 15796
	sw $t0, -3020($fp)
	addi $t0, $fp, -2800
	sw $t0, -3024($fp)
	li $t0, 5
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
	li $t0, 50542
	sw $t0, -3044($fp)
	lw $t0, -3044($fp)
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	sw $t0, -3052($fp)
	li $t0, 29549
	sw $t0, -3056($fp)
	lw $t0, -3056($fp)
	sw $t0, -3060($fp)
	lw $t0, -3060($fp)
	sw $t0, -3064($fp)
label414:
	li $t0, 0
	sw $t0, -3068($fp)
	li $t0, 0
	sw $t0, -3072($fp)
	lw $t0, -1676($fp)
	sw $t0, -3076($fp)
	li $t0, 11882
	sw $t0, -3080($fp)
	lw $t0, -3076($fp)
	lw $t1, -3080($fp)
	sub $t0, $t0, $t1
	sw $t0, -3084($fp)
	li $t0, 1387
	sw $t0, -3088($fp)
	lw $t1, -3084($fp)
	lw $t2, -3088($fp)
	bge $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -3072($fp)
label421:
	addi $t0, $fp, -128
	sw $t0, -3092($fp)
	lw $t0, -2372($fp)
	sw $t0, -3096($fp)
	li $t0, 4
	lw $t1, -3096($fp)
	mul $t0, $t0, $t1
	sw $t0, -3100($fp)
	lw $t0, -3100($fp)
	lw $t1, -3092($fp)
	add $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	lw $t1, 0($t0)
	sw $t1, -3108($fp)
	lw $t1, -3072($fp)
	lw $t2, -3108($fp)
	bne $t1, $t2, label418
	j label419
label418:
	li $t0, 1
	sw $t0, -3068($fp)
label419:
	li $t0, 0
	sw $t0, -3112($fp)
	li $t0, 17175
	sw $t0, -3116($fp)
	lw $t1, -3116($fp)
	li $t2, 0
	bne $t1, $t2, label423
	j label422
label422:
	li $t0, 1
	sw $t0, -3112($fp)
label423:
	li $t0, 482
	sw $t0, -3120($fp)
	lw $t0, -3112($fp)
	lw $t1, -3120($fp)
	mul $t0, $t0, $t1
	sw $t0, -3124($fp)
	lw $t1, -3068($fp)
	lw $t2, -3124($fp)
	beq $t1, $t2, label415
	j label417
label417:
	li $t0, 0
	sw $t0, -3128($fp)
	li $t0, 40036
	sw $t0, -3132($fp)
	lw $t1, -3132($fp)
	li $t2, 0
	bne $t1, $t2, label425
	j label424
label424:
	li $t0, 1
	sw $t0, -3128($fp)
label425:
	lw $t0, -1364($fp)
	sw $t0, -3136($fp)
	lw $t0, -3128($fp)
	lw $t1, -3136($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3140($fp)
	addi $t0, $fp, -2800
	sw $t0, -3144($fp)
	lw $t0, -1292($fp)
	sw $t0, -3148($fp)
	li $t0, 4
	lw $t1, -3148($fp)
	mul $t0, $t0, $t1
	sw $t0, -3152($fp)
	lw $t0, -3152($fp)
	lw $t1, -3144($fp)
	add $t0, $t0, $t1
	sw $t0, -3156($fp)
	lw $t0, -3156($fp)
	lw $t1, 0($t0)
	sw $t1, -3160($fp)
	lw $t0, -3140($fp)
	lw $t1, -3160($fp)
	sub $t0, $t0, $t1
	sw $t0, -3164($fp)
	lw $t1, -3164($fp)
	li $t2, 0
	bne $t1, $t2, label415
	j label416
label415:
	li $t0, 46844
	sw $t0, -3208($fp)
	addi $t0, $fp, -3204
	sw $t0, -3212($fp)
	li $t0, 0
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
	li $t0, 31485
	sw $t0, -3232($fp)
	addi $t0, $fp, -3204
	sw $t0, -3236($fp)
	li $t0, 1
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
	li $t0, 64952
	sw $t0, -3256($fp)
	addi $t0, $fp, -3204
	sw $t0, -3260($fp)
	li $t0, 2
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
	li $t0, 18152
	sw $t0, -3280($fp)
	addi $t0, $fp, -3204
	sw $t0, -3284($fp)
	li $t0, 3
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
	li $t0, 11456
	sw $t0, -3304($fp)
	addi $t0, $fp, -3204
	sw $t0, -3308($fp)
	li $t0, 4
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
	li $t0, 20369
	sw $t0, -3328($fp)
	addi $t0, $fp, -3204
	sw $t0, -3332($fp)
	li $t0, 5
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
	li $t0, 37394
	sw $t0, -3352($fp)
	addi $t0, $fp, -3204
	sw $t0, -3356($fp)
	li $t0, 6
	sw $t0, -3360($fp)
	lw $t0, -3360($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3364($fp)
	lw $t0, -3356($fp)
	lw $t1, -3364($fp)
	add $t0, $t0, $t1
	sw $t0, -3368($fp)
	lw $t0, -3352($fp)
	lw $t1, -3368($fp)
	sw $t0, 0($t1)
	lw $t0, -3368($fp)
	lw $t1, 0($t0)
	sw $t1, -3372($fp)
	li $t0, 30663
	sw $t0, -3376($fp)
	addi $t0, $fp, -3204
	sw $t0, -3380($fp)
	li $t0, 7
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3388($fp)
	lw $t0, -3380($fp)
	lw $t1, -3388($fp)
	add $t0, $t0, $t1
	sw $t0, -3392($fp)
	lw $t0, -3376($fp)
	lw $t1, -3392($fp)
	sw $t0, 0($t1)
	lw $t0, -3392($fp)
	lw $t1, 0($t0)
	sw $t1, -3396($fp)
	li $t0, 11205
	sw $t0, -3400($fp)
	addi $t0, $fp, -3204
	sw $t0, -3404($fp)
	li $t0, 8
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
	li $t0, 38462
	sw $t0, -3424($fp)
	addi $t0, $fp, -3204
	sw $t0, -3428($fp)
	li $t0, 9
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
label426:
	li $t0, 0
	sw $t0, -3448($fp)
	li $t0, 0
	sw $t0, -3452($fp)
	li $t0, 21155
	sw $t0, -3456($fp)
	lw $t0, -1520($fp)
	sw $t0, -3460($fp)
	addi $sp, $sp, -4
	lw $t0, -3456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3460($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3464($fp)
	addi $sp, $sp, 12
	lw $t1, -3464($fp)
	li $t2, 0
	bne $t1, $t2, label432
	j label431
label431:
	li $t0, 1
	sw $t0, -3452($fp)
label432:
	li $t0, 0
	sw $t0, -3468($fp)
	li $t0, 20178
	sw $t0, -3472($fp)
	lw $t1, -3472($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label433
label433:
	li $t0, 1
	sw $t0, -3468($fp)
label434:
	lw $t1, -3452($fp)
	lw $t2, -3468($fp)
	blt $t1, $t2, label429
	j label430
label429:
	li $t0, 1
	sw $t0, -3448($fp)
label430:
	lw $t0, -3448($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -3476($fp)
	lw $t1, -3476($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label428
label427:
	li $t0, 0
	sw $t0, -3480($fp)
	addi $t0, $fp, -3204
	sw $t0, -3484($fp)
	li $t0, 0
	sw $t0, -3488($fp)
	lw $t0, -2372($fp)
	sw $t0, -3492($fp)
	lw $t1, -3492($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label438
label439:
	li $t0, 10019
	sw $t0, -3496($fp)
	lw $t1, -3496($fp)
	li $t2, 0
	bne $t1, $t2, label437
	j label438
label437:
	li $t0, 1
	sw $t0, -3488($fp)
label438:
	li $t0, 4
	lw $t1, -3488($fp)
	mul $t0, $t0, $t1
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	lw $t1, -3484($fp)
	add $t0, $t0, $t1
	sw $t0, -3504($fp)
	lw $t0, -3504($fp)
	lw $t1, 0($t0)
	sw $t1, -3508($fp)
	li $t0, 0
	lw $t1, -3508($fp)
	sub $t0, $t0, $t1
	sw $t0, -3512($fp)
	li $t0, 18074
	sw $t0, -3516($fp)
	lw $t1, -3512($fp)
	lw $t2, -3516($fp)
	beq $t1, $t2, label435
	j label436
label435:
	li $t0, 1
	sw $t0, -3480($fp)
label436:
	j label426
label428:
	li $t0, 0
	sw $t0, -3520($fp)
	addi $t0, $fp, -148
	sw $t0, -3524($fp)
	li $t0, 0
	sw $t0, -3528($fp)
	li $t0, 45810
	sw $t0, -3532($fp)
	li $t0, 46086
	sw $t0, -3536($fp)
	lw $t1, -3532($fp)
	lw $t2, -3536($fp)
	bge $t1, $t2, label442
	j label443
label442:
	li $t0, 1
	sw $t0, -3528($fp)
label443:
	li $t0, 4
	lw $t1, -3528($fp)
	mul $t0, $t0, $t1
	sw $t0, -3540($fp)
	lw $t0, -3540($fp)
	lw $t1, -3524($fp)
	add $t0, $t0, $t1
	sw $t0, -3544($fp)
	lw $t0, -3544($fp)
	lw $t1, 0($t0)
	sw $t1, -3548($fp)
	li $t0, 0
	sw $t0, -3552($fp)
	li $t0, 29443
	sw $t0, -3556($fp)
	lw $t0, -1484($fp)
	sw $t0, -3560($fp)
	lw $t0, -3556($fp)
	lw $t1, -3560($fp)
	mul $t0, $t0, $t1
	sw $t0, -3564($fp)
	li $t0, 0
	lw $t1, -3564($fp)
	sub $t0, $t0, $t1
	sw $t0, -3568($fp)
	lw $t0, -2372($fp)
	sw $t0, -3572($fp)
	lw $t0, -2132($fp)
	sw $t0, -3576($fp)
	lw $t0, -3572($fp)
	lw $t1, -3576($fp)
	mul $t0, $t0, $t1
	sw $t0, -3580($fp)
	lw $t1, -3568($fp)
	lw $t2, -3580($fp)
	ble $t1, $t2, label444
	j label445
label444:
	li $t0, 1
	sw $t0, -3552($fp)
label445:
	lw $t1, -3548($fp)
	lw $t2, -3552($fp)
	beq $t1, $t2, label440
	j label441
label440:
	li $t0, 1
	sw $t0, -3520($fp)
label441:
	j label414
label416:
	addi $t0, $fp, -2776
	sw $t0, -3584($fp)
	li $t0, 0
	sw $t0, -3588($fp)
	li $t0, 4
	lw $t1, -3588($fp)
	mul $t0, $t0, $t1
	sw $t0, -3592($fp)
	lw $t0, -3592($fp)
	lw $t1, -3584($fp)
	add $t0, $t0, $t1
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	lw $t1, 0($t0)
	sw $t1, -3600($fp)
	lw $t0, -3600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2776
	sw $t0, -3604($fp)
	li $t0, 1
	sw $t0, -3608($fp)
	li $t0, 4
	lw $t1, -3608($fp)
	mul $t0, $t0, $t1
	sw $t0, -3612($fp)
	lw $t0, -3612($fp)
	lw $t1, -3604($fp)
	add $t0, $t0, $t1
	sw $t0, -3616($fp)
	lw $t0, -3616($fp)
	lw $t1, 0($t0)
	sw $t1, -3620($fp)
	lw $t0, -3620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2776
	sw $t0, -3624($fp)
	li $t0, 2
	sw $t0, -3628($fp)
	li $t0, 4
	lw $t1, -3628($fp)
	mul $t0, $t0, $t1
	sw $t0, -3632($fp)
	lw $t0, -3632($fp)
	lw $t1, -3624($fp)
	add $t0, $t0, $t1
	sw $t0, -3636($fp)
	lw $t0, -3636($fp)
	lw $t1, 0($t0)
	sw $t1, -3640($fp)
	lw $t0, -3640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2776
	sw $t0, -3644($fp)
	li $t0, 3
	sw $t0, -3648($fp)
	li $t0, 4
	lw $t1, -3648($fp)
	mul $t0, $t0, $t1
	sw $t0, -3652($fp)
	lw $t0, -3652($fp)
	lw $t1, -3644($fp)
	add $t0, $t0, $t1
	sw $t0, -3656($fp)
	lw $t0, -3656($fp)
	lw $t1, 0($t0)
	sw $t1, -3660($fp)
	lw $t0, -3660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2800
	sw $t0, -3664($fp)
	li $t0, 0
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
	lw $t0, -3680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2800
	sw $t0, -3684($fp)
	li $t0, 1
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
	li $t0, 2
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
	li $t0, 3
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
	li $t0, 4
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
	li $t0, 5
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
	lw $t0, -3048($fp)
	sw $t0, -3784($fp)
	lw $t0, -3784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3060($fp)
	sw $t0, -3788($fp)
	lw $t0, -3788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 55688
	sw $t0, -3792($fp)
	addi $t0, $fp, -212
	sw $t0, -3796($fp)
	li $t0, 0
	sw $t0, -3800($fp)
	li $t0, 4
	lw $t1, -3800($fp)
	mul $t0, $t0, $t1
	sw $t0, -3804($fp)
	lw $t0, -3804($fp)
	lw $t1, -3796($fp)
	add $t0, $t0, $t1
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	lw $t1, 0($t0)
	sw $t1, -3812($fp)
	lw $t0, -3792($fp)
	lw $t1, -3812($fp)
	sub $t0, $t0, $t1
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	sw $t0, -3820($fp)
	lw $ra, -4($fp)
	lw $v0, -3820($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label446:
	li $t0, 0
	sw $t0, -3824($fp)
	li $t0, 9095
	sw $t0, -3828($fp)
	lw $t1, -3828($fp)
	li $t2, 0
	bne $t1, $t2, label450
	j label449
label449:
	li $t0, 1
	sw $t0, -3824($fp)
label450:
	lw $t0, -3824($fp)
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -3832($fp)
	lw $t1, -3832($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label448
label447:
label451:
	addi $t0, $fp, -188
	sw $t0, -3836($fp)
	li $t0, 0
	sw $t0, -3840($fp)
	li $t0, 4
	lw $t1, -3840($fp)
	mul $t0, $t0, $t1
	sw $t0, -3844($fp)
	lw $t0, -3844($fp)
	lw $t1, -3836($fp)
	add $t0, $t0, $t1
	sw $t0, -3848($fp)
	lw $t0, -3848($fp)
	lw $t1, 0($t0)
	sw $t1, -3852($fp)
	lw $t0, -2132($fp)
	sw $t0, -3856($fp)
	lw $t0, -3852($fp)
	lw $t1, -3856($fp)
	add $t0, $t0, $t1
	sw $t0, -3860($fp)
	li $t0, 50335
	sw $t0, -3864($fp)
	lw $t0, -3864($fp)
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	sw $t0, -3868($fp)
	li $t0, 0
	sw $t0, -3872($fp)
	addi $t0, $fp, -280
	sw $t0, -3876($fp)
	lw $t0, -2360($fp)
	sw $t0, -3880($fp)
	li $t0, 4
	lw $t1, -3880($fp)
	mul $t0, $t0, $t1
	sw $t0, -3884($fp)
	lw $t0, -3884($fp)
	lw $t1, -3876($fp)
	add $t0, $t0, $t1
	sw $t0, -3888($fp)
	lw $t0, -3888($fp)
	lw $t1, 0($t0)
	sw $t1, -3892($fp)
	lw $t1, -3892($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label456
label456:
	li $t0, 25411
	sw $t0, -3896($fp)
	lw $t1, -3896($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label455
label454:
	li $t0, 1
	sw $t0, -3872($fp)
label455:
	addi $sp, $sp, -4
	lw $t0, -3860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3872($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3900($fp)
	addi $sp, $sp, 16
	lw $t1, -3900($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label453
label452:
	li $t0, 0
	sw $t0, -3904($fp)
	li $t0, 14349
	sw $t0, -3908($fp)
	lw $t0, -1652($fp)
	sw $t0, -3912($fp)
	li $t0, 0
	lw $t1, -3912($fp)
	sub $t0, $t0, $t1
	sw $t0, -3916($fp)
	lw $t0, -3908($fp)
	lw $t1, -3916($fp)
	add $t0, $t0, $t1
	sw $t0, -3920($fp)
	lw $t1, -3920($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label459
label459:
	addi $t0, $fp, -324
	sw $t0, -3924($fp)
	li $t0, 5
	sw $t0, -3928($fp)
	li $t0, 4
	lw $t1, -3928($fp)
	mul $t0, $t0, $t1
	sw $t0, -3932($fp)
	lw $t0, -3932($fp)
	lw $t1, -3924($fp)
	add $t0, $t0, $t1
	sw $t0, -3936($fp)
	lw $t0, -3936($fp)
	lw $t1, 0($t0)
	sw $t1, -3940($fp)
	li $t0, 0
	sw $t0, -3944($fp)
	li $t0, 0
	sw $t0, -3948($fp)
	li $t0, 11804
	sw $t0, -3952($fp)
	lw $t1, -3952($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label462
label462:
	li $t0, 1
	sw $t0, -3948($fp)
label463:
	li $t0, 31524
	sw $t0, -3956($fp)
	lw $t1, -3948($fp)
	lw $t2, -3956($fp)
	bge $t1, $t2, label460
	j label461
label460:
	li $t0, 1
	sw $t0, -3944($fp)
label461:
	li $t0, 36773
	sw $t0, -3960($fp)
	lw $t0, -3960($fp)
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	sw $t0, -3964($fp)
	addi $sp, $sp, -4
	lw $t0, -3940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3964($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3968($fp)
	addi $sp, $sp, 16
	lw $t1, -3968($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label458
label457:
	li $t0, 1
	sw $t0, -3904($fp)
label458:
	lw $ra, -4($fp)
	lw $v0, -3904($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label451
label453:
	j label446
label448:
	li $t0, 30985
	sw $t0, -3972($fp)
	li $t0, 0
	sw $t0, -3976($fp)
	lw $t0, -908($fp)
	sw $t0, -3980($fp)
	lw $t1, -3980($fp)
	li $t2, 0
	bne $t1, $t2, label465
	j label464
label464:
	li $t0, 1
	sw $t0, -3976($fp)
label465:
	lw $t0, -2432($fp)
	sw $t0, -3984($fp)
	lw $t0, -3976($fp)
	lw $t1, -3984($fp)
	sub $t0, $t0, $t1
	sw $t0, -3988($fp)
	li $t0, 51257
	sw $t0, -3992($fp)
	lw $t0, -3992($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -3996($fp)
	li $t0, 12833
	sw $t0, -4000($fp)
	li $t0, 3205
	sw $t0, -4004($fp)
	lw $t0, -4000($fp)
	lw $t1, -4004($fp)
	add $t0, $t0, $t1
	sw $t0, -4008($fp)
	addi $sp, $sp, -4
	lw $t0, -3972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4008($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -4012($fp)
	addi $sp, $sp, 20
label466:
	addi $t0, $fp, -184
	sw $t0, -4016($fp)
	li $t0, 0
	sw $t0, -4020($fp)
	li $t0, 14662
	sw $t0, -4024($fp)
	lw $t0, -1376($fp)
	sw $t0, -4028($fp)
	lw $t1, -4024($fp)
	lw $t2, -4028($fp)
	bge $t1, $t2, label470
	j label471
label470:
	li $t0, 1
	sw $t0, -4020($fp)
label471:
	li $t0, 4
	lw $t1, -4020($fp)
	mul $t0, $t0, $t1
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	lw $t1, -4016($fp)
	add $t0, $t0, $t1
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	lw $t1, 0($t0)
	sw $t1, -4040($fp)
	li $t0, 0
	sw $t0, -4044($fp)
	li $t0, 6090
	sw $t0, -4048($fp)
	lw $t1, -4048($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label472
label472:
	li $t0, 1
	sw $t0, -4044($fp)
label473:
	lw $t1, -4040($fp)
	lw $t2, -4044($fp)
	bge $t1, $t2, label469
	j label468
label469:
	li $t0, 2843
	sw $t0, -4052($fp)
	li $t0, 0
	lw $t1, -4052($fp)
	sub $t0, $t0, $t1
	sw $t0, -4056($fp)
	li $t0, 0
	lw $t1, -4056($fp)
	sub $t0, $t0, $t1
	sw $t0, -4060($fp)
	lw $t1, -4060($fp)
	li $t2, 0
	bne $t1, $t2, label467
	j label468
label467:
	addi $t0, $fp, -2776
	sw $t0, -4064($fp)
	li $t0, 0
	sw $t0, -4068($fp)
	li $t0, 45325
	sw $t0, -4072($fp)
	lw $t1, -4072($fp)
	li $t2, 0
	bne $t1, $t2, label478
	j label477
label477:
	li $t0, 1
	sw $t0, -4068($fp)
label478:
	li $t0, 4
	lw $t1, -4068($fp)
	mul $t0, $t0, $t1
	sw $t0, -4076($fp)
	lw $t0, -4076($fp)
	lw $t1, -4064($fp)
	add $t0, $t0, $t1
	sw $t0, -4080($fp)
	lw $t0, -4080($fp)
	lw $t1, 0($t0)
	sw $t1, -4084($fp)
	lw $t1, -4084($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label475
label474:
	li $t0, 17296
	sw $t0, -4088($fp)
	lw $t0, -4088($fp)
	sw $t0, -4092($fp)
	lw $t0, -4092($fp)
	sw $t0, -4096($fp)
	li $t0, 0
	sw $t0, -4100($fp)
	li $t0, 0
	sw $t0, -4104($fp)
	li $t0, 51324
	sw $t0, -4108($fp)
	lw $t1, -4108($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label481
label481:
	li $t0, 1
	sw $t0, -4104($fp)
label482:
	li $t0, 0
	sw $t0, -4112($fp)
	lw $t0, -4092($fp)
	sw $t0, -4116($fp)
	li $t0, 37474
	sw $t0, -4120($fp)
	lw $t0, -4116($fp)
	lw $t1, -4120($fp)
	sub $t0, $t0, $t1
	sw $t0, -4124($fp)
	lw $t0, -2744($fp)
	sw $t0, -4128($fp)
	lw $t1, -4124($fp)
	lw $t2, -4128($fp)
	blt $t1, $t2, label483
	j label484
label483:
	li $t0, 1
	sw $t0, -4112($fp)
label484:
	li $t0, 0
	sw $t0, -4132($fp)
	li $t0, 944
	sw $t0, -4136($fp)
	lw $t1, -4136($fp)
	li $t2, 0
	bne $t1, $t2, label486
	j label485
label485:
	li $t0, 1
	sw $t0, -4132($fp)
label486:
	li $t0, 41305
	sw $t0, -4140($fp)
	addi $sp, $sp, -4
	lw $t0, -4104($fp)
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
	jal f10
	sw $v0, -4144($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -4144($fp)
	sub $t0, $t0, $t1
	sw $t0, -4148($fp)
	lw $t0, -1880($fp)
	sw $t0, -4152($fp)
	li $t0, 0
	lw $t1, -4152($fp)
	sub $t0, $t0, $t1
	sw $t0, -4156($fp)
	li $t0, 0
	lw $t1, -4156($fp)
	sub $t0, $t0, $t1
	sw $t0, -4160($fp)
	lw $t1, -4148($fp)
	lw $t2, -4160($fp)
	bgt $t1, $t2, label479
	j label480
label479:
	li $t0, 1
	sw $t0, -4100($fp)
label480:
	li $t0, 0
	sw $t0, -4164($fp)
	lw $t0, 12($fp)
	sw $t0, -4168($fp)
	li $t0, 19018
	sw $t0, -4172($fp)
	lw $t0, -4168($fp)
	lw $t1, -4172($fp)
	mul $t0, $t0, $t1
	sw $t0, -4176($fp)
	li $t0, 17748
	sw $t0, -4180($fp)
	lw $t1, -4176($fp)
	lw $t2, -4180($fp)
	beq $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -4164($fp)
label488:
	li $t0, 0
	sw $t0, -4184($fp)
	lw $t0, -3048($fp)
	sw $t0, -4188($fp)
	li $t0, 0
	lw $t1, -4188($fp)
	sub $t0, $t0, $t1
	sw $t0, -4192($fp)
	lw $t0, 8($fp)
	sw $t0, -4196($fp)
	lw $t1, -4192($fp)
	lw $t2, -4196($fp)
	beq $t1, $t2, label489
	j label490
label489:
	li $t0, 1
	sw $t0, -4184($fp)
label490:
	addi $sp, $sp, -4
	lw $t0, -4164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4184($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4200($fp)
	addi $sp, $sp, 12
	j label476
label475:
	li $t0, 0
	sw $t0, -4204($fp)
	li $t0, 31874
	sw $t0, -4208($fp)
	lw $t1, -4208($fp)
	li $t2, 0
	bne $t1, $t2, label495
	j label494
label494:
	li $t0, 1
	sw $t0, -4204($fp)
label495:
	lw $t0, -1292($fp)
	sw $t0, -4212($fp)
	lw $t0, -4204($fp)
	lw $t1, -4212($fp)
	sub $t0, $t0, $t1
	sw $t0, -4216($fp)
	addi $sp, $sp, -4
	lw $t0, -4216($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4220($fp)
	addi $sp, $sp, 8
	lw $t1, -4220($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label492
label491:
	li $t0, 0
	sw $t0, -4224($fp)
	addi $t0, $fp, -188
	sw $t0, -4228($fp)
	li $t0, 0
	sw $t0, -4232($fp)
	addi $t0, $fp, -156
	sw $t0, -4236($fp)
	li $t0, 0
	sw $t0, -4240($fp)
	li $t0, 4
	lw $t1, -4240($fp)
	mul $t0, $t0, $t1
	sw $t0, -4244($fp)
	lw $t0, -4244($fp)
	lw $t1, -4236($fp)
	add $t0, $t0, $t1
	sw $t0, -4248($fp)
	lw $t0, -4248($fp)
	lw $t1, 0($t0)
	sw $t1, -4252($fp)
	li $t0, 23557
	sw $t0, -4256($fp)
	lw $t1, -4252($fp)
	lw $t2, -4256($fp)
	beq $t1, $t2, label498
	j label499
label498:
	li $t0, 1
	sw $t0, -4232($fp)
label499:
	li $t0, 4
	lw $t1, -4232($fp)
	mul $t0, $t0, $t1
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	lw $t1, -4228($fp)
	add $t0, $t0, $t1
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	lw $t1, 0($t0)
	sw $t1, -4268($fp)
	lw $t1, -4268($fp)
	li $t2, 0
	bne $t1, $t2, label497
	j label496
label496:
	li $t0, 1
	sw $t0, -4224($fp)
label497:
	j label493
label492:
	li $t0, 59841
	sw $t0, -4272($fp)
label493:
label476:
	j label466
label468:
label500:
	lw $t0, -2132($fp)
	sw $t0, -4276($fp)
	addi $t0, $fp, -96
	sw $t0, -4280($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -4296($fp)
	sub $t0, $t0, $t1
	sw $t0, -4300($fp)
	lw $t0, -1352($fp)
	sw $t0, -4304($fp)
	addi $sp, $sp, -4
	lw $t0, -4276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4304($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4308($fp)
	addi $sp, $sp, 16
	lw $t0, -1460($fp)
	sw $t0, -4312($fp)
	li $t0, 0
	lw $t1, -4312($fp)
	sub $t0, $t0, $t1
	sw $t0, -4316($fp)
	li $t0, 0
	lw $t1, -4316($fp)
	sub $t0, $t0, $t1
	sw $t0, -4320($fp)
	lw $t0, -4308($fp)
	lw $t1, -4320($fp)
	mul $t0, $t0, $t1
	sw $t0, -4324($fp)
	lw $t1, -4324($fp)
	li $t2, 0
	bne $t1, $t2, label503
	j label502
label503:
	li $t0, 0
	sw $t0, -4328($fp)
	li $t0, 0
	sw $t0, -4332($fp)
	lw $t0, -2744($fp)
	sw $t0, -4336($fp)
	lw $t0, -1472($fp)
	sw $t0, -4340($fp)
	lw $t1, -4336($fp)
	lw $t2, -4340($fp)
	bge $t1, $t2, label506
	j label507
label506:
	li $t0, 1
	sw $t0, -4332($fp)
label507:
	addi $sp, $sp, -4
	lw $t0, -4332($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4344($fp)
	addi $sp, $sp, 8
	lw $t0, -3060($fp)
	sw $t0, -4348($fp)
	lw $t1, -4344($fp)
	lw $t2, -4348($fp)
	bne $t1, $t2, label504
	j label505
label504:
	li $t0, 1
	sw $t0, -4328($fp)
label505:
	li $t0, 0
	sw $t0, -4352($fp)
	li $t0, 0
	sw $t0, -4356($fp)
	li $t0, 44641
	sw $t0, -4360($fp)
	lw $t0, -2744($fp)
	sw $t0, -4364($fp)
	lw $t1, -4360($fp)
	lw $t2, -4364($fp)
	beq $t1, $t2, label510
	j label511
label510:
	li $t0, 1
	sw $t0, -4356($fp)
label511:
	li $t0, 41886
	sw $t0, -4368($fp)
	lw $t1, -4356($fp)
	lw $t2, -4368($fp)
	bne $t1, $t2, label508
	j label509
label508:
	li $t0, 1
	sw $t0, -4352($fp)
label509:
	addi $sp, $sp, -4
	lw $t0, -4328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4352($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4372($fp)
	addi $sp, $sp, 12
	lw $t1, -4372($fp)
	li $t2, 0
	bne $t1, $t2, label501
	j label502
label501:
	li $t0, 0
	sw $t0, -4376($fp)
	li $t0, 0
	sw $t0, -4380($fp)
	lw $t0, -2420($fp)
	sw $t0, -4384($fp)
	lw $t0, -1892($fp)
	sw $t0, -4388($fp)
	lw $t0, -1484($fp)
	sw $t0, -4392($fp)
	lw $t0, -4388($fp)
	lw $t1, -4392($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4396($fp)
	lw $t1, -4384($fp)
	lw $t2, -4396($fp)
	blt $t1, $t2, label515
	j label516
label515:
	li $t0, 1
	sw $t0, -4380($fp)
label516:
	li $t0, 59385
	sw $t0, -4400($fp)
	li $t0, 58990
	sw $t0, -4404($fp)
	lw $t0, -4400($fp)
	lw $t1, -4404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4408($fp)
	lw $t0, -2432($fp)
	sw $t0, -4412($fp)
	lw $t0, -4408($fp)
	lw $t1, -4412($fp)
	mul $t0, $t0, $t1
	sw $t0, -4416($fp)
	lw $t1, -4380($fp)
	lw $t2, -4416($fp)
	blt $t1, $t2, label512
	j label514
label514:
	li $t0, 13123
	sw $t0, -4420($fp)
	li $t0, 5654
	sw $t0, -4424($fp)
	lw $t0, -4420($fp)
	lw $t1, -4424($fp)
	mul $t0, $t0, $t1
	sw $t0, -4428($fp)
	lw $t0, -908($fp)
	sw $t0, -4432($fp)
	lw $t0, -4428($fp)
	lw $t1, -4432($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4436($fp)
	lw $t0, -2420($fp)
	sw $t0, -4440($fp)
	li $t0, 0
	lw $t1, -4440($fp)
	sub $t0, $t0, $t1
	sw $t0, -4444($fp)
	lw $t0, -4436($fp)
	lw $t1, -4444($fp)
	add $t0, $t0, $t1
	sw $t0, -4448($fp)
	lw $t1, -4448($fp)
	li $t2, 0
	bne $t1, $t2, label512
	j label513
label512:
	li $t0, 1
	sw $t0, -4376($fp)
label513:
	j label500
label502:
	addi $t0, $fp, -212
	sw $t0, -4452($fp)
	li $t0, 1
	sw $t0, -4456($fp)
	li $t0, 4
	lw $t1, -4456($fp)
	mul $t0, $t0, $t1
	sw $t0, -4460($fp)
	lw $t0, -4460($fp)
	lw $t1, -4452($fp)
	add $t0, $t0, $t1
	sw $t0, -4464($fp)
	lw $t0, -4464($fp)
	lw $t1, 0($t0)
	sw $t1, -4468($fp)
	lw $t0, -2408($fp)
	sw $t0, -4472($fp)
	lw $t0, -4468($fp)
	lw $t1, -4472($fp)
	add $t0, $t0, $t1
	sw $t0, -4476($fp)
	lw $t1, -4476($fp)
	li $t2, 0
	bne $t1, $t2, label517
	j label518
label517:
	lw $t0, -2384($fp)
	sw $t0, -4480($fp)
	lw $t0, -1292($fp)
	sw $t0, -4484($fp)
	li $t0, 0
	sw $t0, -4488($fp)
	li $t0, 57495
	sw $t0, -4492($fp)
	lw $t1, -4492($fp)
	li $t2, 0
	bne $t1, $t2, label524
	j label523
label523:
	li $t0, 1
	sw $t0, -4488($fp)
label524:
	lw $t0, -4484($fp)
	lw $t1, -4488($fp)
	mul $t0, $t0, $t1
	sw $t0, -4496($fp)
	li $t0, 0
	lw $t1, -4496($fp)
	sub $t0, $t0, $t1
	sw $t0, -4500($fp)
	lw $t0, -4480($fp)
	lw $t1, -4500($fp)
	mul $t0, $t0, $t1
	sw $t0, -4504($fp)
	li $t0, 0
	lw $t1, -4504($fp)
	sub $t0, $t0, $t1
	sw $t0, -4508($fp)
	li $t0, 0
	lw $t1, -4508($fp)
	sub $t0, $t0, $t1
	sw $t0, -4512($fp)
	lw $t0, -2444($fp)
	sw $t0, -4516($fp)
	li $t0, 0
	sw $t0, -4520($fp)
	li $t0, 37811
	sw $t0, -4524($fp)
	lw $t0, -1664($fp)
	sw $t0, -4528($fp)
	lw $t0, -4524($fp)
	lw $t1, -4528($fp)
	mul $t0, $t0, $t1
	sw $t0, -4532($fp)
	li $t0, 53585
	sw $t0, -4536($fp)
	lw $t1, -4532($fp)
	lw $t2, -4536($fp)
	bne $t1, $t2, label525
	j label526
label525:
	li $t0, 1
	sw $t0, -4520($fp)
label526:
	li $t0, 0
	sw $t0, -4540($fp)
	lw $t0, -1484($fp)
	sw $t0, -4544($fp)
	li $t0, 0
	lw $t1, -4544($fp)
	sub $t0, $t0, $t1
	sw $t0, -4548($fp)
	lw $t0, -1484($fp)
	sw $t0, -4552($fp)
	lw $t0, -4552($fp)
	sw $t0, -2744($fp)
	lw $t0, -2744($fp)
	sw $t0, -4556($fp)
	li $t0, 0
	sw $t0, -4560($fp)
	addi $t0, $fp, -96
	sw $t0, -4564($fp)
	lw $t0, -1376($fp)
	sw $t0, -4568($fp)
	li $t0, 4
	lw $t1, -4568($fp)
	mul $t0, $t0, $t1
	sw $t0, -4572($fp)
	lw $t0, -4572($fp)
	lw $t1, -4564($fp)
	add $t0, $t0, $t1
	sw $t0, -4576($fp)
	lw $t0, -4576($fp)
	lw $t1, 0($t0)
	sw $t1, -4580($fp)
	lw $t1, -4580($fp)
	li $t2, 0
	bne $t1, $t2, label531
	j label530
label531:
	lw $t0, -1484($fp)
	sw $t0, -4584($fp)
	lw $t1, -4584($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label530
label529:
	li $t0, 1
	sw $t0, -4560($fp)
label530:
	addi $sp, $sp, -4
	lw $t0, -4548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4560($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4588($fp)
	addi $sp, $sp, 16
	lw $t0, -1364($fp)
	sw $t0, -4592($fp)
	lw $t1, -4588($fp)
	lw $t2, -4592($fp)
	bge $t1, $t2, label527
	j label528
label527:
	li $t0, 1
	sw $t0, -4540($fp)
label528:
	addi $sp, $sp, -4
	lw $t0, -4520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4540($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4596($fp)
	addi $sp, $sp, 12
	lw $t0, -4516($fp)
	lw $t1, -4596($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4600($fp)
	lw $t0, -4512($fp)
	lw $t1, -4600($fp)
	add $t0, $t0, $t1
	sw $t0, -4604($fp)
	lw $t1, -4604($fp)
	li $t2, 0
	bne $t1, $t2, label520
	j label521
label520:
	li $t0, 43216
	sw $t0, -4608($fp)
	lw $t0, -1784($fp)
	sw $t0, -4612($fp)
	lw $t0, -4608($fp)
	lw $t1, -4612($fp)
	mul $t0, $t0, $t1
	sw $t0, -4616($fp)
	li $t0, 3261
	sw $t0, -4620($fp)
	lw $t0, -4616($fp)
	lw $t1, -4620($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4624($fp)
	addi $t0, $fp, -284
	sw $t0, -4628($fp)
	lw $t0, -2132($fp)
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
	li $t0, 0
	lw $t1, -4644($fp)
	sub $t0, $t0, $t1
	sw $t0, -4648($fp)
	addi $sp, $sp, -4
	lw $t0, -4624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4648($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4652($fp)
	addi $sp, $sp, 12
	lw $ra, -4($fp)
	lw $v0, -4652($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label522
label521:
	li $t0, 2711
	sw $t0, -4656($fp)
	lw $t0, 16($fp)
	sw $t0, -4660($fp)
	lw $t0, -4656($fp)
	lw $t1, -4660($fp)
	sub $t0, $t0, $t1
	sw $t0, -4664($fp)
label522:
	j label519
label518:
	lw $t0, -2108($fp)
	sw $t0, -4668($fp)
	lw $t0, -4668($fp)
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	sw $t0, -4672($fp)
	lw $t0, -4672($fp)
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	sw $t0, -4676($fp)
	lw $t1, -4676($fp)
	li $t2, 0
	bne $t1, $t2, label532
	j label533
label532:
	li $t0, 0
	sw $t0, -4680($fp)
	lw $t0, -1376($fp)
	sw $t0, -4684($fp)
	lw $t1, -4684($fp)
	li $t2, 0
	bne $t1, $t2, label539
	j label538
label538:
	li $t0, 1
	sw $t0, -4680($fp)
label539:
	li $t0, 6104
	sw $t0, -4688($fp)
	lw $t0, -4680($fp)
	lw $t1, -4688($fp)
	add $t0, $t0, $t1
	sw $t0, -4692($fp)
	li $t0, 0
	sw $t0, -4696($fp)
	addi $t0, $fp, -280
	sw $t0, -4700($fp)
	lw $t0, -2120($fp)
	sw $t0, -4704($fp)
	li $t0, 4
	lw $t1, -4704($fp)
	mul $t0, $t0, $t1
	sw $t0, -4708($fp)
	lw $t0, -4708($fp)
	lw $t1, -4700($fp)
	add $t0, $t0, $t1
	sw $t0, -4712($fp)
	lw $t0, -4712($fp)
	lw $t1, 0($t0)
	sw $t1, -4716($fp)
	li $t0, 49307
	sw $t0, -4720($fp)
	lw $t1, -4716($fp)
	lw $t2, -4720($fp)
	ble $t1, $t2, label540
	j label541
label540:
	li $t0, 1
	sw $t0, -4696($fp)
label541:
	addi $sp, $sp, -4
	lw $t0, -4692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4696($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4724($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -96
	sw $t0, -4728($fp)
	li $t0, 3
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
	lw $t0, -4724($fp)
	lw $t1, -4744($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4748($fp)
	addi $t0, $fp, -52
	sw $t0, -4752($fp)
	lw $t0, -1268($fp)
	sw $t0, -4756($fp)
	li $t0, 4
	lw $t1, -4756($fp)
	mul $t0, $t0, $t1
	sw $t0, -4760($fp)
	lw $t0, -4760($fp)
	lw $t1, -4752($fp)
	add $t0, $t0, $t1
	sw $t0, -4764($fp)
	lw $t0, -4764($fp)
	lw $t1, 0($t0)
	sw $t1, -4768($fp)
	addi $t0, $fp, -56
	sw $t0, -4772($fp)
	lw $t0, -1676($fp)
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
	lw $t0, -4768($fp)
	lw $t1, -4788($fp)
	mul $t0, $t0, $t1
	sw $t0, -4792($fp)
	li $t0, 0
	lw $t1, -4792($fp)
	sub $t0, $t0, $t1
	sw $t0, -4796($fp)
	lw $t1, -4748($fp)
	lw $t2, -4796($fp)
	beq $t1, $t2, label535
	j label536
label535:
	addi $t0, $fp, -80
	sw $t0, -4800($fp)
	lw $t0, -1484($fp)
	sw $t0, -4804($fp)
	li $t0, 4
	lw $t1, -4804($fp)
	mul $t0, $t0, $t1
	sw $t0, -4808($fp)
	lw $t0, -4808($fp)
	lw $t1, -4800($fp)
	add $t0, $t0, $t1
	sw $t0, -4812($fp)
	lw $t0, -4812($fp)
	lw $t1, 0($t0)
	sw $t1, -4816($fp)
	addi $sp, $sp, -4
	lw $t0, -4816($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4820($fp)
	addi $sp, $sp, 8
	lw $t0, -1484($fp)
	sw $t0, -4824($fp)
	li $t0, 0
	lw $t1, -4824($fp)
	sub $t0, $t0, $t1
	sw $t0, -4828($fp)
	addi $sp, $sp, -4
	lw $t0, -4820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4828($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4832($fp)
	addi $sp, $sp, 12
	lw $t0, -2396($fp)
	sw $t0, -4836($fp)
	lw $t0, -4832($fp)
	lw $t1, -4836($fp)
	add $t0, $t0, $t1
	sw $t0, -4840($fp)
	addi $t0, $fp, -128
	sw $t0, -4844($fp)
	lw $t0, -2372($fp)
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
	lw $t0, -4840($fp)
	lw $t1, -4860($fp)
	sub $t0, $t0, $t1
	sw $t0, -4864($fp)
	li $t0, 0
	sw $t0, -4868($fp)
	lw $t0, -2372($fp)
	sw $t0, -4872($fp)
	lw $t1, -4872($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label545
label545:
	li $t0, 1
	sw $t0, -4868($fp)
label546:
	li $t0, 47410
	sw $t0, -4876($fp)
	lw $t0, -1484($fp)
	sw $t0, -4880($fp)
	lw $t0, -4876($fp)
	lw $t1, -4880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4884($fp)
	lw $t0, -4868($fp)
	lw $t1, -4884($fp)
	add $t0, $t0, $t1
	sw $t0, -4888($fp)
	lw $t1, -4864($fp)
	lw $t2, -4888($fp)
	bne $t1, $t2, label542
	j label543
label542:
	li $t0, 0
	sw $t0, -4892($fp)
	li $t0, 48980
	sw $t0, -4896($fp)
	lw $t0, -2732($fp)
	sw $t0, -4900($fp)
	lw $t0, -4896($fp)
	lw $t1, -4900($fp)
	sub $t0, $t0, $t1
	sw $t0, -4904($fp)
	lw $t0, -2732($fp)
	sw $t0, -4908($fp)
	li $t0, 0
	sw $t0, -4912($fp)
	lw $t0, -1472($fp)
	sw $t0, -4916($fp)
	lw $t1, -4916($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label551
label551:
	lw $t0, -944($fp)
	sw $t0, -4920($fp)
	lw $t1, -4920($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label550
label549:
	li $t0, 1
	sw $t0, -4912($fp)
label550:
	addi $sp, $sp, -4
	lw $t0, -4912($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4924($fp)
	addi $sp, $sp, 8
	lw $t0, -4908($fp)
	lw $t1, -4924($fp)
	mul $t0, $t0, $t1
	sw $t0, -4928($fp)
	li $t0, 0
	lw $t1, -4928($fp)
	sub $t0, $t0, $t1
	sw $t0, -4932($fp)
	li $t0, 0
	lw $t1, -4932($fp)
	sub $t0, $t0, $t1
	sw $t0, -4936($fp)
	lw $t1, -4904($fp)
	lw $t2, -4936($fp)
	blt $t1, $t2, label547
	j label548
label547:
	li $t0, 1
	sw $t0, -4892($fp)
label548:
	lw $t0, -1460($fp)
	sw $t0, -4940($fp)
	li $t0, 0
	sw $t0, -4944($fp)
	li $t0, 38541
	sw $t0, -4948($fp)
	li $t0, 33198
	sw $t0, -4952($fp)
	lw $t1, -4948($fp)
	lw $t2, -4952($fp)
	ble $t1, $t2, label552
	j label553
label552:
	li $t0, 1
	sw $t0, -4944($fp)
label553:
	li $t0, 0
	sw $t0, -4956($fp)
	li $t0, 2462
	sw $t0, -4960($fp)
	li $t0, 0
	lw $t1, -4960($fp)
	sub $t0, $t0, $t1
	sw $t0, -4964($fp)
	lw $t1, -4964($fp)
	li $t2, 0
	bne $t1, $t2, label555
	j label554
label554:
	li $t0, 1
	sw $t0, -4956($fp)
label555:
	addi $t0, $fp, -148
	sw $t0, -4968($fp)
	li $t0, 0
	sw $t0, -4972($fp)
	addi $t0, $fp, -24
	sw $t0, -4976($fp)
	lw $t0, -2732($fp)
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
	lw $t1, -4992($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label558
label558:
	addi $t0, $fp, -324
	sw $t0, -4996($fp)
	lw $t0, 16($fp)
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
	lw $t1, -5012($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label557
label556:
	li $t0, 1
	sw $t0, -4972($fp)
label557:
	li $t0, 4
	lw $t1, -4972($fp)
	mul $t0, $t0, $t1
	sw $t0, -5016($fp)
	lw $t0, -5016($fp)
	lw $t1, -4968($fp)
	add $t0, $t0, $t1
	sw $t0, -5020($fp)
	lw $t0, -5020($fp)
	lw $t1, 0($t0)
	sw $t1, -5024($fp)
	j label544
label543:
label559:
	lw $t0, -452($fp)
	sw $t0, -5028($fp)
	lw $t0, -1280($fp)
	sw $t0, -5032($fp)
	lw $t1, -5028($fp)
	lw $t2, -5032($fp)
	bgt $t1, $t2, label560
	j label561
label560:
	li $t0, 56289
	sw $t0, -5036($fp)
	lw $ra, -4($fp)
	lw $v0, -5036($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label559
label561:
label544:
	j label537
label536:
	addi $t0, $fp, -32
	sw $t0, -5040($fp)
	li $t0, 0
	sw $t0, -5044($fp)
	lw $t0, -2396($fp)
	sw $t0, -5048($fp)
	lw $t1, -5048($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label562
label562:
	li $t0, 1
	sw $t0, -5044($fp)
label563:
	li $t0, 4
	lw $t1, -5044($fp)
	mul $t0, $t0, $t1
	sw $t0, -5052($fp)
	lw $t0, -5052($fp)
	lw $t1, -5040($fp)
	add $t0, $t0, $t1
	sw $t0, -5056($fp)
	lw $t0, -5056($fp)
	lw $t1, 0($t0)
	sw $t1, -5060($fp)
	lw $ra, -4($fp)
	lw $v0, -5060($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label537:
	j label534
label533:
label564:
	addi $t0, $fp, -236
	sw $t0, -5064($fp)
	li $t0, 0
	sw $t0, -5068($fp)
	lw $t0, -2048($fp)
	sw $t0, -5072($fp)
	li $t0, 0
	lw $t1, -5072($fp)
	sub $t0, $t0, $t1
	sw $t0, -5076($fp)
	lw $t0, -944($fp)
	sw $t0, -5080($fp)
	lw $t0, -5076($fp)
	lw $t1, -5080($fp)
	sub $t0, $t0, $t1
	sw $t0, -5084($fp)
	lw $t1, -5084($fp)
	li $t2, 0
	bne $t1, $t2, label567
	j label569
label569:
	li $t0, 65073
	sw $t0, -5088($fp)
	li $t0, 0
	lw $t1, -5088($fp)
	sub $t0, $t0, $t1
	sw $t0, -5092($fp)
	lw $t1, -5092($fp)
	li $t2, 0
	bne $t1, $t2, label567
	j label568
label567:
	li $t0, 1
	sw $t0, -5068($fp)
label568:
	li $t0, 4
	lw $t1, -5068($fp)
	mul $t0, $t0, $t1
	sw $t0, -5096($fp)
	lw $t0, -5096($fp)
	lw $t1, -5064($fp)
	add $t0, $t0, $t1
	sw $t0, -5100($fp)
	lw $t0, -5100($fp)
	lw $t1, 0($t0)
	sw $t1, -5104($fp)
	lw $t1, -5104($fp)
	li $t2, 0
	bne $t1, $t2, label565
	j label566
label565:
	li $t0, 50924
	sw $t0, -5108($fp)
	j label564
label566:
label534:
label519:
	addi $t0, $fp, -244
	sw $t0, -5112($fp)
	li $t0, 0
	sw $t0, -5116($fp)
	lw $t0, -1508($fp)
	sw $t0, -5120($fp)
	lw $t1, -5120($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label575
label575:
	lw $t0, -1484($fp)
	sw $t0, -5124($fp)
	lw $t1, -5124($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label574
label573:
	li $t0, 1
	sw $t0, -5116($fp)
label574:
	li $t0, 0
	sw $t0, -5128($fp)
	lw $t0, -2132($fp)
	sw $t0, -5132($fp)
	lw $t1, -5132($fp)
	li $t2, 0
	bne $t1, $t2, label577
	j label576
label576:
	li $t0, 1
	sw $t0, -5128($fp)
label577:
	lw $t0, -1496($fp)
	sw $t0, -5136($fp)
	lw $t0, -5128($fp)
	lw $t1, -5136($fp)
	add $t0, $t0, $t1
	sw $t0, -5140($fp)
	addi $sp, $sp, -4
	lw $t0, -5140($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5144($fp)
	addi $sp, $sp, 8
	li $t0, 64189
	sw $t0, -5148($fp)
	lw $t0, -5148($fp)
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	sw $t0, -5152($fp)
	addi $sp, $sp, -4
	lw $t0, -5116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5152($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5156($fp)
	addi $sp, $sp, 16
	li $t0, 4
	lw $t1, -5156($fp)
	mul $t0, $t0, $t1
	sw $t0, -5160($fp)
	lw $t0, -5160($fp)
	lw $t1, -5112($fp)
	add $t0, $t0, $t1
	sw $t0, -5164($fp)
	lw $t0, -5164($fp)
	lw $t1, 0($t0)
	sw $t1, -5168($fp)
	li $t0, 0
	lw $t1, -5168($fp)
	sub $t0, $t0, $t1
	sw $t0, -5172($fp)
	li $t0, 0
	sw $t0, -5176($fp)
	li $t0, 6527
	sw $t0, -5180($fp)
	lw $t1, -5180($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label580
label580:
	lw $t0, -1664($fp)
	sw $t0, -5184($fp)
	lw $t1, -5184($fp)
	li $t2, 0
	bne $t1, $t2, label578
	j label579
label578:
	li $t0, 1
	sw $t0, -5176($fp)
label579:
	li $t0, 0
	sw $t0, -5188($fp)
	lw $t0, -2756($fp)
	sw $t0, -5192($fp)
	li $t0, 15648
	sw $t0, -5196($fp)
	lw $t1, -5192($fp)
	lw $t2, -5196($fp)
	beq $t1, $t2, label581
	j label582
label581:
	li $t0, 1
	sw $t0, -5188($fp)
label582:
	li $t0, 0
	sw $t0, -5200($fp)
	li $t0, 23094
	sw $t0, -5204($fp)
	lw $t1, -5204($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label584
label586:
	lw $t0, -1364($fp)
	sw $t0, -5208($fp)
	lw $t1, -5208($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label584
label585:
	li $t0, 45230
	sw $t0, -5212($fp)
	lw $t1, -5212($fp)
	li $t2, 0
	bne $t1, $t2, label583
	j label584
label583:
	li $t0, 1
	sw $t0, -5200($fp)
label584:
	lw $t0, -1520($fp)
	sw $t0, -5216($fp)
	lw $t0, -2744($fp)
	sw $t0, -5220($fp)
	lw $t0, -5216($fp)
	lw $t1, -5220($fp)
	mul $t0, $t0, $t1
	sw $t0, -5224($fp)
	lw $t0, -800($fp)
	sw $t0, -5228($fp)
	lw $t0, -5224($fp)
	lw $t1, -5228($fp)
	sub $t0, $t0, $t1
	sw $t0, -5232($fp)
	addi $sp, $sp, -4
	lw $t0, -5176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5232($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -5236($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -5236($fp)
	sub $t0, $t0, $t1
	sw $t0, -5240($fp)
	lw $t0, -5172($fp)
	lw $t1, -5240($fp)
	sub $t0, $t0, $t1
	sw $t0, -5244($fp)
	lw $t1, -5244($fp)
	li $t2, 0
	bne $t1, $t2, label570
	j label571
label570:
	addi $t0, $fp, -188
	sw $t0, -5248($fp)
	li $t0, 0
	sw $t0, -5252($fp)
	li $t0, 0
	sw $t0, -5256($fp)
	li $t0, 24335
	sw $t0, -5260($fp)
	lw $t1, -5260($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label589
label589:
	li $t0, 1
	sw $t0, -5256($fp)
label590:
	li $t0, 57534
	sw $t0, -5264($fp)
	lw $t0, -5256($fp)
	lw $t1, -5264($fp)
	sub $t0, $t0, $t1
	sw $t0, -5268($fp)
	lw $t0, -1652($fp)
	sw $t0, -5272($fp)
	lw $t1, -5268($fp)
	lw $t2, -5272($fp)
	bne $t1, $t2, label587
	j label588
label587:
	li $t0, 1
	sw $t0, -5252($fp)
label588:
	li $t0, 4
	lw $t1, -5252($fp)
	mul $t0, $t0, $t1
	sw $t0, -5276($fp)
	lw $t0, -5276($fp)
	lw $t1, -5248($fp)
	add $t0, $t0, $t1
	sw $t0, -5280($fp)
	lw $t0, -5280($fp)
	lw $t1, 0($t0)
	sw $t1, -5284($fp)
	j label572
label571:
	li $t0, 376
	sw $t0, -5304($fp)
	lw $t0, -5304($fp)
	sw $t0, -5308($fp)
	lw $t0, -5308($fp)
	sw $t0, -5312($fp)
	li $t0, 17789
	sw $t0, -5316($fp)
	addi $t0, $fp, -5300
	sw $t0, -5320($fp)
	li $t0, 0
	sw $t0, -5324($fp)
	lw $t0, -5324($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5328($fp)
	lw $t0, -5320($fp)
	lw $t1, -5328($fp)
	add $t0, $t0, $t1
	sw $t0, -5332($fp)
	lw $t0, -5316($fp)
	lw $t1, -5332($fp)
	sw $t0, 0($t1)
	lw $t0, -5332($fp)
	lw $t1, 0($t0)
	sw $t1, -5336($fp)
	li $t0, 5121
	sw $t0, -5340($fp)
	addi $t0, $fp, -5300
	sw $t0, -5344($fp)
	li $t0, 1
	sw $t0, -5348($fp)
	lw $t0, -5348($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5352($fp)
	lw $t0, -5344($fp)
	lw $t1, -5352($fp)
	add $t0, $t0, $t1
	sw $t0, -5356($fp)
	lw $t0, -5340($fp)
	lw $t1, -5356($fp)
	sw $t0, 0($t1)
	lw $t0, -5356($fp)
	lw $t1, 0($t0)
	sw $t1, -5360($fp)
	li $t0, 6030
	sw $t0, -5364($fp)
	addi $t0, $fp, -5300
	sw $t0, -5368($fp)
	li $t0, 2
	sw $t0, -5372($fp)
	lw $t0, -5372($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5376($fp)
	lw $t0, -5368($fp)
	lw $t1, -5376($fp)
	add $t0, $t0, $t1
	sw $t0, -5380($fp)
	lw $t0, -5364($fp)
	lw $t1, -5380($fp)
	sw $t0, 0($t1)
	lw $t0, -5380($fp)
	lw $t1, 0($t0)
	sw $t1, -5384($fp)
	li $t0, 42767
	sw $t0, -5388($fp)
	addi $t0, $fp, -5300
	sw $t0, -5392($fp)
	li $t0, 3
	sw $t0, -5396($fp)
	lw $t0, -5396($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5400($fp)
	lw $t0, -5392($fp)
	lw $t1, -5400($fp)
	add $t0, $t0, $t1
	sw $t0, -5404($fp)
	lw $t0, -5388($fp)
	lw $t1, -5404($fp)
	sw $t0, 0($t1)
	lw $t0, -5404($fp)
	lw $t1, 0($t0)
	sw $t1, -5408($fp)
	li $t0, 55501
	sw $t0, -5412($fp)
	lw $t0, -5412($fp)
	sw $t0, -5416($fp)
	lw $t0, -5416($fp)
	sw $t0, -5420($fp)
	addi $t0, $fp, -56
	sw $t0, -5424($fp)
	li $t0, 0
	sw $t0, -5428($fp)
	li $t0, 4
	lw $t1, -5428($fp)
	mul $t0, $t0, $t1
	sw $t0, -5432($fp)
	lw $t0, -5432($fp)
	lw $t1, -5424($fp)
	add $t0, $t0, $t1
	sw $t0, -5436($fp)
	lw $t0, -5436($fp)
	lw $t1, 0($t0)
	sw $t1, -5440($fp)
	lw $t0, -5416($fp)
	sw $t0, -5444($fp)
	lw $t0, -5440($fp)
	lw $t1, -5444($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5448($fp)
	lw $t1, -5448($fp)
	li $t2, 0
	bne $t1, $t2, label594
	j label592
label594:
	lw $t0, -2732($fp)
	sw $t0, -5452($fp)
	lw $t1, -5452($fp)
	li $t2, 0
	bne $t1, $t2, label591
	j label592
label591:
label595:
	li $t0, 0
	sw $t0, -5456($fp)
	li $t0, 0
	sw $t0, -5460($fp)
	lw $t0, -2744($fp)
	sw $t0, -5464($fp)
	lw $t0, -2756($fp)
	sw $t0, -5468($fp)
	lw $t1, -5464($fp)
	lw $t2, -5468($fp)
	ble $t1, $t2, label600
	j label601
label600:
	li $t0, 1
	sw $t0, -5460($fp)
label601:
	lw $t0, -1376($fp)
	sw $t0, -5472($fp)
	lw $t1, -5460($fp)
	lw $t2, -5472($fp)
	bne $t1, $t2, label598
	j label599
label598:
	li $t0, 1
	sw $t0, -5456($fp)
label599:
	li $t0, 0
	sw $t0, -5476($fp)
	li $t0, 43550
	sw $t0, -5480($fp)
	lw $t0, -944($fp)
	sw $t0, -5484($fp)
	lw $t0, -5480($fp)
	lw $t1, -5484($fp)
	mul $t0, $t0, $t1
	sw $t0, -5488($fp)
	lw $t1, -5488($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label604
label604:
	lw $t0, -2744($fp)
	sw $t0, -5492($fp)
	lw $t1, -5492($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label603
label602:
	li $t0, 1
	sw $t0, -5476($fp)
label603:
	addi $sp, $sp, -4
	lw $t0, -5456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5476($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5496($fp)
	addi $sp, $sp, 12
	lw $t1, -5496($fp)
	li $t2, 0
	bne $t1, $t2, label596
	j label597
label596:
label605:
	li $t0, 41206
	sw $t0, -5500($fp)
	li $t0, 0
	lw $t1, -5500($fp)
	sub $t0, $t0, $t1
	sw $t0, -5504($fp)
	lw $t1, -5504($fp)
	li $t2, 0
	bne $t1, $t2, label606
	j label608
label608:
	li $t0, 0
	sw $t0, -5508($fp)
	li $t0, 0
	sw $t0, -5512($fp)
	lw $t0, -2420($fp)
	sw $t0, -5516($fp)
	lw $t0, -2420($fp)
	sw $t0, -5520($fp)
	lw $t1, -5516($fp)
	lw $t2, -5520($fp)
	blt $t1, $t2, label611
	j label612
label611:
	li $t0, 1
	sw $t0, -5512($fp)
label612:
	li $t0, 24408
	sw $t0, -5524($fp)
	lw $t1, -5512($fp)
	lw $t2, -5524($fp)
	ble $t1, $t2, label609
	j label610
label609:
	li $t0, 1
	sw $t0, -5508($fp)
label610:
	lw $t0, 12($fp)
	sw $t0, -5528($fp)
	li $t0, 0
	sw $t0, -5532($fp)
	li $t0, 24977
	sw $t0, -5536($fp)
	lw $t0, -2420($fp)
	sw $t0, -5540($fp)
	lw $t0, -5536($fp)
	lw $t1, -5540($fp)
	add $t0, $t0, $t1
	sw $t0, -5544($fp)
	lw $t0, -1664($fp)
	sw $t0, -5548($fp)
	lw $t1, -5544($fp)
	lw $t2, -5548($fp)
	bne $t1, $t2, label613
	j label614
label613:
	li $t0, 1
	sw $t0, -5532($fp)
label614:
	li $t0, 0
	sw $t0, -5552($fp)
	lw $t0, -1652($fp)
	sw $t0, -5556($fp)
	li $t0, 46261
	sw $t0, -5560($fp)
	lw $t1, -5556($fp)
	lw $t2, -5560($fp)
	ble $t1, $t2, label615
	j label617
label617:
	lw $t0, -1796($fp)
	sw $t0, -5564($fp)
	lw $t1, -5564($fp)
	li $t2, 0
	bne $t1, $t2, label615
	j label616
label615:
	li $t0, 1
	sw $t0, -5552($fp)
label616:
	li $t0, 0
	sw $t0, -5568($fp)
	li $t0, 18304
	sw $t0, -5572($fp)
	lw $t0, -2744($fp)
	sw $t0, -5576($fp)
	lw $t1, -5572($fp)
	lw $t2, -5576($fp)
	beq $t1, $t2, label618
	j label619
label618:
	li $t0, 1
	sw $t0, -5568($fp)
label619:
	addi $sp, $sp, -4
	lw $t0, -5528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5568($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -5580($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -5508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5580($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5584($fp)
	addi $sp, $sp, 12
	li $t0, 26045
	sw $t0, -5588($fp)
	lw $t0, -5584($fp)
	lw $t1, -5588($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5592($fp)
	lw $t1, -5592($fp)
	li $t2, 0
	bne $t1, $t2, label606
	j label607
label606:
	li $t0, 0
	sw $t0, -5596($fp)
	addi $t0, $fp, -128
	sw $t0, -5600($fp)
	li $t0, 0
	sw $t0, -5604($fp)
	lw $t0, -1268($fp)
	sw $t0, -5608($fp)
	lw $t0, -1280($fp)
	sw $t0, -5612($fp)
	lw $t1, -5608($fp)
	lw $t2, -5612($fp)
	bgt $t1, $t2, label622
	j label623
label622:
	li $t0, 1
	sw $t0, -5604($fp)
label623:
	li $t0, 4
	lw $t1, -5604($fp)
	mul $t0, $t0, $t1
	sw $t0, -5616($fp)
	lw $t0, -5616($fp)
	lw $t1, -5600($fp)
	add $t0, $t0, $t1
	sw $t0, -5620($fp)
	lw $t0, -5620($fp)
	lw $t1, 0($t0)
	sw $t1, -5624($fp)
	lw $t1, -5624($fp)
	li $t2, 0
	bne $t1, $t2, label621
	j label620
label620:
	li $t0, 1
	sw $t0, -5596($fp)
label621:
	li $t0, 0
	lw $t1, -5596($fp)
	sub $t0, $t0, $t1
	sw $t0, -5628($fp)
	j label605
label607:
	j label595
label597:
	j label593
label592:
label624:
	addi $t0, $fp, -96
	sw $t0, -5632($fp)
	lw $t0, -2132($fp)
	sw $t0, -5636($fp)
	lw $t0, -5636($fp)
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	sw $t0, -5640($fp)
	li $t0, 4
	lw $t1, -5640($fp)
	mul $t0, $t0, $t1
	sw $t0, -5644($fp)
	lw $t0, -5644($fp)
	lw $t1, -5632($fp)
	add $t0, $t0, $t1
	sw $t0, -5648($fp)
	lw $t0, -5648($fp)
	lw $t1, 0($t0)
	sw $t1, -5652($fp)
	addi $t0, $fp, -212
	sw $t0, -5656($fp)
	lw $t0, -2048($fp)
	sw $t0, -5660($fp)
	li $t0, 4
	lw $t1, -5660($fp)
	mul $t0, $t0, $t1
	sw $t0, -5664($fp)
	lw $t0, -5664($fp)
	lw $t1, -5656($fp)
	add $t0, $t0, $t1
	sw $t0, -5668($fp)
	lw $t0, -5668($fp)
	lw $t1, 0($t0)
	sw $t1, -5672($fp)
	lw $t0, -5652($fp)
	lw $t1, -5672($fp)
	sub $t0, $t0, $t1
	sw $t0, -5676($fp)
	li $t0, 0
	sw $t0, -5680($fp)
	li $t0, 6282
	sw $t0, -5684($fp)
	lw $t1, -5684($fp)
	li $t2, 0
	bne $t1, $t2, label627
	j label628
label627:
	li $t0, 1
	sw $t0, -5680($fp)
label628:
	li $t0, 14667
	sw $t0, -5688($fp)
	li $t0, 55338
	sw $t0, -5692($fp)
	lw $t0, -5688($fp)
	lw $t1, -5692($fp)
	sub $t0, $t0, $t1
	sw $t0, -5696($fp)
	li $t0, 0
	sw $t0, -5700($fp)
	lw $t0, -1892($fp)
	sw $t0, -5704($fp)
	li $t0, 0
	sw $t0, -5708($fp)
	li $t0, 64585
	sw $t0, -5712($fp)
	lw $t0, -1892($fp)
	sw $t0, -5716($fp)
	lw $t1, -5712($fp)
	lw $t2, -5716($fp)
	bgt $t1, $t2, label631
	j label632
label631:
	li $t0, 1
	sw $t0, -5708($fp)
label632:
	li $t0, 0
	sw $t0, -5720($fp)
	lw $t0, -1784($fp)
	sw $t0, -5724($fp)
	li $t0, 12205
	sw $t0, -5728($fp)
	lw $t0, -5724($fp)
	lw $t1, -5728($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5732($fp)
	lw $t0, -1880($fp)
	sw $t0, -5736($fp)
	lw $t1, -5732($fp)
	lw $t2, -5736($fp)
	bge $t1, $t2, label633
	j label634
label633:
	li $t0, 1
	sw $t0, -5720($fp)
label634:
	addi $sp, $sp, -4
	lw $t0, -5704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5720($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5740($fp)
	addi $sp, $sp, 16
	li $t0, 39481
	sw $t0, -5744($fp)
	lw $t1, -5740($fp)
	lw $t2, -5744($fp)
	bgt $t1, $t2, label629
	j label630
label629:
	li $t0, 1
	sw $t0, -5700($fp)
label630:
	lw $t0, -1364($fp)
	sw $t0, -5748($fp)
	addi $sp, $sp, -4
	lw $t0, -5696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5748($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5752($fp)
	addi $sp, $sp, 16
	lw $t0, -5680($fp)
	lw $t1, -5752($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5756($fp)
	lw $t0, -5676($fp)
	lw $t1, -5756($fp)
	sub $t0, $t0, $t1
	sw $t0, -5760($fp)
	lw $t1, -5760($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label626
label625:
	lw $t0, -1484($fp)
	sw $t0, -5764($fp)
	lw $t0, -5764($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -5768($fp)
	li $t0, 53991
	sw $t0, -5772($fp)
	lw $t0, -5772($fp)
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	sw $t0, -5776($fp)
	li $t0, 0
	sw $t0, -5780($fp)
	li $t0, 39018
	sw $t0, -5784($fp)
	li $t0, 56
	sw $t0, -5788($fp)
	lw $t0, -5784($fp)
	lw $t1, -5788($fp)
	mul $t0, $t0, $t1
	sw $t0, -5792($fp)
	lw $t1, -5792($fp)
	li $t2, 0
	bne $t1, $t2, label635
	j label637
label637:
	lw $t0, -944($fp)
	sw $t0, -5796($fp)
	lw $t1, -5796($fp)
	li $t2, 0
	bne $t1, $t2, label635
	j label636
label635:
	li $t0, 1
	sw $t0, -5780($fp)
label636:
	addi $sp, $sp, -4
	lw $t0, -5768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5780($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5800($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -24
	sw $t0, -5804($fp)
	lw $t0, -1364($fp)
	sw $t0, -5808($fp)
	li $t0, 4
	lw $t1, -5808($fp)
	mul $t0, $t0, $t1
	sw $t0, -5812($fp)
	lw $t0, -5812($fp)
	lw $t1, -5804($fp)
	add $t0, $t0, $t1
	sw $t0, -5816($fp)
	lw $t0, -5816($fp)
	lw $t1, 0($t0)
	sw $t1, -5820($fp)
	addi $t0, $fp, -148
	sw $t0, -5824($fp)
	li $t0, 2
	sw $t0, -5828($fp)
	li $t0, 4
	lw $t1, -5828($fp)
	mul $t0, $t0, $t1
	sw $t0, -5832($fp)
	lw $t0, -5832($fp)
	lw $t1, -5824($fp)
	add $t0, $t0, $t1
	sw $t0, -5836($fp)
	lw $t0, -5836($fp)
	lw $t1, 0($t0)
	sw $t1, -5840($fp)
	li $t0, 0
	sw $t0, -5844($fp)
	li $t0, 62112
	sw $t0, -5848($fp)
	lw $t1, -5848($fp)
	li $t2, 0
	bne $t1, $t2, label638
	j label640
label640:
	lw $t0, -1520($fp)
	sw $t0, -5852($fp)
	lw $t1, -5852($fp)
	li $t2, 0
	bne $t1, $t2, label638
	j label639
label638:
	li $t0, 1
	sw $t0, -5844($fp)
label639:
	addi $sp, $sp, -4
	lw $t0, -5820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5844($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5856($fp)
	addi $sp, $sp, 16
	lw $t0, -5800($fp)
	lw $t1, -5856($fp)
	mul $t0, $t0, $t1
	sw $t0, -5860($fp)
	j label624
label626:
label593:
	lw $t0, -5308($fp)
	sw $t0, -5864($fp)
	lw $t0, -1364($fp)
	sw $t0, -5868($fp)
	lw $t0, -5864($fp)
	lw $t1, -5868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5872($fp)
	lw $t0, -932($fp)
	sw $t0, -5876($fp)
	li $t0, 4085
	sw $t0, -5880($fp)
	lw $t0, -5876($fp)
	lw $t1, -5880($fp)
	mul $t0, $t0, $t1
	sw $t0, -5884($fp)
	lw $t0, -1292($fp)
	sw $t0, -5888($fp)
	lw $t0, -5884($fp)
	lw $t1, -5888($fp)
	mul $t0, $t0, $t1
	sw $t0, -5892($fp)
	li $t0, 0
	sw $t0, -5896($fp)
	li $t0, 3103
	sw $t0, -5900($fp)
	li $t0, 0
	lw $t1, -5900($fp)
	sub $t0, $t0, $t1
	sw $t0, -5904($fp)
	lw $t0, -920($fp)
	sw $t0, -5908($fp)
	lw $t1, -5904($fp)
	lw $t2, -5908($fp)
	bne $t1, $t2, label641
	j label642
label641:
	li $t0, 1
	sw $t0, -5896($fp)
label642:
	lw $t0, -908($fp)
	sw $t0, -5912($fp)
	addi $sp, $sp, -4
	lw $t0, -5892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5912($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5916($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -324
	sw $t0, -5920($fp)
	li $t0, 0
	sw $t0, -5924($fp)
	li $t0, 61637
	sw $t0, -5928($fp)
	lw $t1, -5928($fp)
	li $t2, 0
	bne $t1, $t2, label643
	j label645
label645:
	li $t0, 3480
	sw $t0, -5932($fp)
	lw $t1, -5932($fp)
	li $t2, 0
	bne $t1, $t2, label643
	j label644
label643:
	li $t0, 1
	sw $t0, -5924($fp)
label644:
	li $t0, 4
	lw $t1, -5924($fp)
	mul $t0, $t0, $t1
	sw $t0, -5936($fp)
	lw $t0, -5936($fp)
	lw $t1, -5920($fp)
	add $t0, $t0, $t1
	sw $t0, -5940($fp)
	lw $t0, -5940($fp)
	lw $t1, 0($t0)
	sw $t1, -5944($fp)
	lw $t0, -5916($fp)
	lw $t1, -5944($fp)
	add $t0, $t0, $t1
	sw $t0, -5948($fp)
	li $t0, 21874
	sw $t0, -5952($fp)
	li $t0, 1222
	sw $t0, -5956($fp)
	lw $t0, -5952($fp)
	lw $t1, -5956($fp)
	add $t0, $t0, $t1
	sw $t0, -5960($fp)
	lw $t0, -5960($fp)
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	sw $t0, -5964($fp)
	lw $t1, -5964($fp)
	li $t2, 0
	bne $t1, $t2, label646
	j label647
label646:
	li $t0, 0
	sw $t0, -5968($fp)
	li $t0, 9510
	sw $t0, -5972($fp)
	li $t0, 0
	sw $t0, -5976($fp)
	li $t0, 0
	sw $t0, -5980($fp)
	li $t0, 64641
	sw $t0, -5984($fp)
	lw $t0, -2408($fp)
	sw $t0, -5988($fp)
	lw $t1, -5984($fp)
	lw $t2, -5988($fp)
	bne $t1, $t2, label653
	j label654
label653:
	li $t0, 1
	sw $t0, -5980($fp)
label654:
	lw $t0, -2384($fp)
	sw $t0, -5992($fp)
	lw $t1, -5980($fp)
	lw $t2, -5992($fp)
	bne $t1, $t2, label651
	j label652
label651:
	li $t0, 1
	sw $t0, -5976($fp)
label652:
	addi $sp, $sp, -4
	lw $t0, -5976($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5996($fp)
	addi $sp, $sp, 8
	lw $t1, -5972($fp)
	lw $t2, -5996($fp)
	beq $t1, $t2, label649
	j label650
label649:
	li $t0, 1
	sw $t0, -5968($fp)
label650:
	lw $t0, -2420($fp)
	sw $t0, -6000($fp)
	j label648
label647:
	li $t0, 0
	sw $t0, -6004($fp)
	li $t0, 7500
	sw $t0, -6008($fp)
	lw $t0, -944($fp)
	sw $t0, -6012($fp)
	lw $t0, -6008($fp)
	lw $t1, -6012($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6016($fp)
	lw $t0, -944($fp)
	sw $t0, -6020($fp)
	lw $t1, -6016($fp)
	lw $t2, -6020($fp)
	bne $t1, $t2, label655
	j label656
label655:
	li $t0, 1
	sw $t0, -6004($fp)
label656:
	li $t0, 0
	sw $t0, -6024($fp)
	addi $t0, $fp, -5300
	sw $t0, -6028($fp)
	lw $t0, -5416($fp)
	sw $t0, -6032($fp)
	li $t0, 4
	lw $t1, -6032($fp)
	mul $t0, $t0, $t1
	sw $t0, -6036($fp)
	lw $t0, -6036($fp)
	lw $t1, -6028($fp)
	add $t0, $t0, $t1
	sw $t0, -6040($fp)
	lw $t0, -6040($fp)
	lw $t1, 0($t0)
	sw $t1, -6044($fp)
	li $t0, 56723
	sw $t0, -6048($fp)
	lw $t1, -6044($fp)
	lw $t2, -6048($fp)
	bge $t1, $t2, label657
	j label658
label657:
	li $t0, 1
	sw $t0, -6024($fp)
label658:
	addi $sp, $sp, -4
	lw $t0, -6004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6024($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6052($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -6052($fp)
	sub $t0, $t0, $t1
	sw $t0, -6056($fp)
label648:
	lw $t0, -5308($fp)
	sw $t0, -6060($fp)
	lw $t0, -6060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5300
	sw $t0, -6064($fp)
	li $t0, 0
	sw $t0, -6068($fp)
	li $t0, 4
	lw $t1, -6068($fp)
	mul $t0, $t0, $t1
	sw $t0, -6072($fp)
	lw $t0, -6072($fp)
	lw $t1, -6064($fp)
	add $t0, $t0, $t1
	sw $t0, -6076($fp)
	lw $t0, -6076($fp)
	lw $t1, 0($t0)
	sw $t1, -6080($fp)
	lw $t0, -6080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5300
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
	lw $t0, -6100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5300
	sw $t0, -6104($fp)
	li $t0, 2
	sw $t0, -6108($fp)
	li $t0, 4
	lw $t1, -6108($fp)
	mul $t0, $t0, $t1
	sw $t0, -6112($fp)
	lw $t0, -6112($fp)
	lw $t1, -6104($fp)
	add $t0, $t0, $t1
	sw $t0, -6116($fp)
	lw $t0, -6116($fp)
	lw $t1, 0($t0)
	sw $t1, -6120($fp)
	lw $t0, -6120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5300
	sw $t0, -6124($fp)
	li $t0, 3
	sw $t0, -6128($fp)
	li $t0, 4
	lw $t1, -6128($fp)
	mul $t0, $t0, $t1
	sw $t0, -6132($fp)
	lw $t0, -6132($fp)
	lw $t1, -6124($fp)
	add $t0, $t0, $t1
	sw $t0, -6136($fp)
	lw $t0, -6136($fp)
	lw $t1, 0($t0)
	sw $t1, -6140($fp)
	lw $t0, -6140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5416($fp)
	sw $t0, -6144($fp)
	lw $t0, -6144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6148($fp)
	li $t0, 0
	sw $t0, -6152($fp)
	li $t0, 34737
	sw $t0, -6156($fp)
	li $t0, 0
	lw $t1, -6156($fp)
	sub $t0, $t0, $t1
	sw $t0, -6160($fp)
	lw $t1, -6160($fp)
	li $t2, 0
	bne $t1, $t2, label661
	j label663
label663:
	lw $t0, -1664($fp)
	sw $t0, -6164($fp)
	lw $t1, -6164($fp)
	li $t2, 0
	bne $t1, $t2, label661
	j label662
label661:
	li $t0, 1
	sw $t0, -6152($fp)
label662:
	li $t0, 0
	sw $t0, -6168($fp)
	lw $t0, -1520($fp)
	sw $t0, -6172($fp)
	lw $t1, -6172($fp)
	li $t2, 0
	bne $t1, $t2, label667
	j label666
label667:
	lw $t0, -1652($fp)
	sw $t0, -6176($fp)
	lw $t1, -6176($fp)
	li $t2, 0
	bne $t1, $t2, label664
	j label666
label666:
	lw $t0, -2360($fp)
	sw $t0, -6180($fp)
	lw $t1, -6180($fp)
	li $t2, 0
	bne $t1, $t2, label664
	j label665
label664:
	li $t0, 1
	sw $t0, -6168($fp)
label665:
	li $t0, 14148
	sw $t0, -6184($fp)
	addi $sp, $sp, -4
	lw $t0, -6152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6184($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6188($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -6192($fp)
	li $t0, 48706
	sw $t0, -6196($fp)
	lw $t1, -6196($fp)
	li $t2, 0
	bne $t1, $t2, label668
	j label669
label668:
	li $t0, 1
	sw $t0, -6192($fp)
label669:
	addi $sp, $sp, -4
	lw $t0, -6192($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6200($fp)
	addi $sp, $sp, 8
	lw $t1, -6188($fp)
	lw $t2, -6200($fp)
	beq $t1, $t2, label659
	j label660
label659:
	li $t0, 1
	sw $t0, -6148($fp)
label660:
	lw $ra, -4($fp)
	lw $v0, -6148($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label572:
	li $t0, 0
	sw $t0, -6204($fp)
	li $t0, 32452
	sw $t0, -6208($fp)
	lw $t1, -6208($fp)
	li $t2, 0
	bne $t1, $t2, label675
	j label674
label674:
	li $t0, 1
	sw $t0, -6204($fp)
label675:
	li $t0, 0
	sw $t0, -6212($fp)
	li $t0, 15462
	sw $t0, -6216($fp)
	li $t0, 8147
	sw $t0, -6220($fp)
	lw $t0, -6216($fp)
	lw $t1, -6220($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6224($fp)
	lw $t1, -6224($fp)
	li $t2, 0
	bne $t1, $t2, label678
	j label677
label678:
	li $t0, 56861
	sw $t0, -6228($fp)
	lw $t1, -6228($fp)
	li $t2, 0
	bne $t1, $t2, label676
	j label677
label676:
	li $t0, 1
	sw $t0, -6212($fp)
label677:
	addi $sp, $sp, -4
	lw $t0, -6212($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6232($fp)
	addi $sp, $sp, 8
	lw $t0, -6204($fp)
	lw $t1, -6232($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6236($fp)
	addi $t0, $fp, -212
	sw $t0, -6240($fp)
	li $t0, 1
	sw $t0, -6244($fp)
	li $t0, 4
	lw $t1, -6244($fp)
	mul $t0, $t0, $t1
	sw $t0, -6248($fp)
	lw $t0, -6248($fp)
	lw $t1, -6240($fp)
	add $t0, $t0, $t1
	sw $t0, -6252($fp)
	lw $t0, -6252($fp)
	lw $t1, 0($t0)
	sw $t1, -6256($fp)
	lw $t0, -6236($fp)
	lw $t1, -6256($fp)
	add $t0, $t0, $t1
	sw $t0, -6260($fp)
	lw $t1, -6260($fp)
	li $t2, 0
	bne $t1, $t2, label673
	j label671
label673:
	lw $t0, -1268($fp)
	sw $t0, -6264($fp)
	li $t0, 0
	lw $t1, -6264($fp)
	sub $t0, $t0, $t1
	sw $t0, -6268($fp)
	li $t0, 0
	lw $t1, -6268($fp)
	sub $t0, $t0, $t1
	sw $t0, -6272($fp)
	addi $sp, $sp, -4
	lw $t0, -6272($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6276($fp)
	addi $sp, $sp, 8
	lw $t1, -6276($fp)
	li $t2, 0
	bne $t1, $t2, label670
	j label671
label670:
	li $t0, 0
	sw $t0, -6280($fp)
	addi $t0, $fp, -164
	sw $t0, -6284($fp)
	lw $t0, -1448($fp)
	sw $t0, -6288($fp)
	li $t0, 4
	lw $t1, -6288($fp)
	mul $t0, $t0, $t1
	sw $t0, -6292($fp)
	lw $t0, -6292($fp)
	lw $t1, -6284($fp)
	add $t0, $t0, $t1
	sw $t0, -6296($fp)
	lw $t0, -6296($fp)
	lw $t1, 0($t0)
	sw $t1, -6300($fp)
	lw $t1, -6300($fp)
	li $t2, 0
	bne $t1, $t2, label680
	j label679
label679:
	li $t0, 1
	sw $t0, -6280($fp)
label680:
	li $t0, 0
	sw $t0, -6304($fp)
	li $t0, 63143
	sw $t0, -6308($fp)
	lw $t1, -6308($fp)
	li $t2, 0
	bne $t1, $t2, label684
	j label683
label684:
	li $t0, 56428
	sw $t0, -6312($fp)
	lw $t1, -6312($fp)
	li $t2, 0
	bne $t1, $t2, label681
	j label683
label683:
	lw $t0, -2756($fp)
	sw $t0, -6316($fp)
	lw $t1, -6316($fp)
	li $t2, 0
	bne $t1, $t2, label681
	j label682
label681:
	li $t0, 1
	sw $t0, -6304($fp)
label682:
	lw $t0, -920($fp)
	sw $t0, -6320($fp)
	li $t0, 0
	lw $t1, -6320($fp)
	sub $t0, $t0, $t1
	sw $t0, -6324($fp)
	lw $t0, -1388($fp)
	sw $t0, -6328($fp)
	addi $sp, $sp, -4
	lw $t0, -6280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6328($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -6332($fp)
	addi $sp, $sp, 20
	j label672
label671:
	li $t0, 0
	sw $t0, -6336($fp)
	li $t0, 37088
	sw $t0, -6340($fp)
	li $t0, 5560
	sw $t0, -6344($fp)
	lw $t0, -6340($fp)
	lw $t1, -6344($fp)
	add $t0, $t0, $t1
	sw $t0, -6348($fp)
	li $t0, 0
	sw $t0, -6352($fp)
	li $t0, 33240
	sw $t0, -6356($fp)
	lw $t1, -6356($fp)
	li $t2, 0
	bne $t1, $t2, label687
	j label690
label690:
	lw $t0, -1676($fp)
	sw $t0, -6360($fp)
	lw $t1, -6360($fp)
	li $t2, 0
	bne $t1, $t2, label687
	j label689
label689:
	lw $t0, -1460($fp)
	sw $t0, -6364($fp)
	lw $t1, -6364($fp)
	li $t2, 0
	bne $t1, $t2, label687
	j label688
label687:
	li $t0, 1
	sw $t0, -6352($fp)
label688:
	addi $sp, $sp, -4
	lw $t0, -6348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6352($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6368($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -6368($fp)
	sub $t0, $t0, $t1
	sw $t0, -6372($fp)
	lw $t1, -6372($fp)
	li $t2, 0
	bne $t1, $t2, label686
	j label685
label685:
	li $t0, 1
	sw $t0, -6336($fp)
label686:
	lw $t0, -2756($fp)
	sw $t0, -6376($fp)
	li $t0, 23042
	sw $t0, -6380($fp)
	lw $t0, -6376($fp)
	lw $t1, -6380($fp)
	mul $t0, $t0, $t1
	sw $t0, -6384($fp)
	lw $t0, -6336($fp)
	lw $t1, -6384($fp)
	sub $t0, $t0, $t1
	sw $t0, -6388($fp)
	lw $ra, -4($fp)
	lw $v0, -6388($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label672:
	li $t0, 10570
	sw $t0, -6416($fp)
	lw $t0, -6416($fp)
	sw $t0, -6420($fp)
	lw $t0, -6420($fp)
	sw $t0, -6424($fp)
	li $t0, 5616
	sw $t0, -6428($fp)
	addi $t0, $fp, -6412
	sw $t0, -6432($fp)
	li $t0, 0
	sw $t0, -6436($fp)
	lw $t0, -6436($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6440($fp)
	lw $t0, -6432($fp)
	lw $t1, -6440($fp)
	add $t0, $t0, $t1
	sw $t0, -6444($fp)
	lw $t0, -6428($fp)
	lw $t1, -6444($fp)
	sw $t0, 0($t1)
	lw $t0, -6444($fp)
	lw $t1, 0($t0)
	sw $t1, -6448($fp)
	li $t0, 11497
	sw $t0, -6452($fp)
	addi $t0, $fp, -6412
	sw $t0, -6456($fp)
	li $t0, 1
	sw $t0, -6460($fp)
	lw $t0, -6460($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6464($fp)
	lw $t0, -6456($fp)
	lw $t1, -6464($fp)
	add $t0, $t0, $t1
	sw $t0, -6468($fp)
	lw $t0, -6452($fp)
	lw $t1, -6468($fp)
	sw $t0, 0($t1)
	lw $t0, -6468($fp)
	lw $t1, 0($t0)
	sw $t1, -6472($fp)
	li $t0, 7147
	sw $t0, -6476($fp)
	addi $t0, $fp, -6412
	sw $t0, -6480($fp)
	li $t0, 2
	sw $t0, -6484($fp)
	lw $t0, -6484($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6488($fp)
	lw $t0, -6480($fp)
	lw $t1, -6488($fp)
	add $t0, $t0, $t1
	sw $t0, -6492($fp)
	lw $t0, -6476($fp)
	lw $t1, -6492($fp)
	sw $t0, 0($t1)
	lw $t0, -6492($fp)
	lw $t1, 0($t0)
	sw $t1, -6496($fp)
	li $t0, 50902
	sw $t0, -6500($fp)
	addi $t0, $fp, -6412
	sw $t0, -6504($fp)
	li $t0, 3
	sw $t0, -6508($fp)
	lw $t0, -6508($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6512($fp)
	lw $t0, -6504($fp)
	lw $t1, -6512($fp)
	add $t0, $t0, $t1
	sw $t0, -6516($fp)
	lw $t0, -6500($fp)
	lw $t1, -6516($fp)
	sw $t0, 0($t1)
	lw $t0, -6516($fp)
	lw $t1, 0($t0)
	sw $t1, -6520($fp)
	li $t0, 15600
	sw $t0, -6524($fp)
	addi $t0, $fp, -6412
	sw $t0, -6528($fp)
	li $t0, 4
	sw $t0, -6532($fp)
	lw $t0, -6532($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6536($fp)
	lw $t0, -6528($fp)
	lw $t1, -6536($fp)
	add $t0, $t0, $t1
	sw $t0, -6540($fp)
	lw $t0, -6524($fp)
	lw $t1, -6540($fp)
	sw $t0, 0($t1)
	lw $t0, -6540($fp)
	lw $t1, 0($t0)
	sw $t1, -6544($fp)
	li $t0, 10250
	sw $t0, -6548($fp)
	addi $t0, $fp, -6412
	sw $t0, -6552($fp)
	li $t0, 5
	sw $t0, -6556($fp)
	lw $t0, -6556($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6560($fp)
	lw $t0, -6552($fp)
	lw $t1, -6560($fp)
	add $t0, $t0, $t1
	sw $t0, -6564($fp)
	lw $t0, -6548($fp)
	lw $t1, -6564($fp)
	sw $t0, 0($t1)
	lw $t0, -6564($fp)
	lw $t1, 0($t0)
	sw $t1, -6568($fp)
	lw $t0, -6420($fp)
	sw $t0, -6572($fp)
	lw $t0, -6572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6412
	sw $t0, -6576($fp)
	li $t0, 0
	sw $t0, -6580($fp)
	li $t0, 4
	lw $t1, -6580($fp)
	mul $t0, $t0, $t1
	sw $t0, -6584($fp)
	lw $t0, -6584($fp)
	lw $t1, -6576($fp)
	add $t0, $t0, $t1
	sw $t0, -6588($fp)
	lw $t0, -6588($fp)
	lw $t1, 0($t0)
	sw $t1, -6592($fp)
	lw $t0, -6592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6412
	sw $t0, -6596($fp)
	li $t0, 1
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
	lw $t0, -6612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6412
	sw $t0, -6616($fp)
	li $t0, 2
	sw $t0, -6620($fp)
	li $t0, 4
	lw $t1, -6620($fp)
	mul $t0, $t0, $t1
	sw $t0, -6624($fp)
	lw $t0, -6624($fp)
	lw $t1, -6616($fp)
	add $t0, $t0, $t1
	sw $t0, -6628($fp)
	lw $t0, -6628($fp)
	lw $t1, 0($t0)
	sw $t1, -6632($fp)
	lw $t0, -6632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6412
	sw $t0, -6636($fp)
	li $t0, 3
	sw $t0, -6640($fp)
	li $t0, 4
	lw $t1, -6640($fp)
	mul $t0, $t0, $t1
	sw $t0, -6644($fp)
	lw $t0, -6644($fp)
	lw $t1, -6636($fp)
	add $t0, $t0, $t1
	sw $t0, -6648($fp)
	lw $t0, -6648($fp)
	lw $t1, 0($t0)
	sw $t1, -6652($fp)
	lw $t0, -6652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6412
	sw $t0, -6656($fp)
	li $t0, 4
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
	addi $t0, $fp, -6412
	sw $t0, -6676($fp)
	li $t0, 5
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
	li $t0, 0
	sw $t0, -6696($fp)
	li $t0, 0
	sw $t0, -6700($fp)
	li $t0, 13730
	sw $t0, -6704($fp)
	li $t0, 11325
	sw $t0, -6708($fp)
	lw $t1, -6704($fp)
	lw $t2, -6708($fp)
	bge $t1, $t2, label694
	j label696
label696:
	li $t0, 12923
	sw $t0, -6712($fp)
	lw $t1, -6712($fp)
	li $t2, 0
	bne $t1, $t2, label694
	j label695
label694:
	li $t0, 1
	sw $t0, -6700($fp)
label695:
	li $t0, 0
	sw $t0, -6716($fp)
	li $t0, 11701
	sw $t0, -6720($fp)
	lw $t1, -6720($fp)
	li $t2, 0
	bne $t1, $t2, label698
	j label699
label699:
	lw $t0, -1268($fp)
	sw $t0, -6724($fp)
	lw $t1, -6724($fp)
	li $t2, 0
	bne $t1, $t2, label697
	j label698
label697:
	li $t0, 1
	sw $t0, -6716($fp)
label698:
	li $t0, 54987
	sw $t0, -6728($fp)
	addi $sp, $sp, -4
	lw $t0, -6700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6728($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6732($fp)
	addi $sp, $sp, 16
	lw $t1, -6732($fp)
	li $t2, 0
	bne $t1, $t2, label691
	j label693
label693:
	addi $t0, $fp, -188
	sw $t0, -6736($fp)
	lw $t0, 16($fp)
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
	lw $t1, -6752($fp)
	li $t2, 0
	bne $t1, $t2, label691
	j label692
label691:
	li $t0, 1
	sw $t0, -6696($fp)
label692:
	lw $t0, -6696($fp)
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, -6756($fp)
	lw $ra, -4($fp)
	lw $v0, -6756($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label700:
	li $t0, 0
	sw $t0, -6760($fp)
	lw $t0, -1784($fp)
	sw $t0, -6764($fp)
	lw $t0, -2360($fp)
	sw $t0, -6768($fp)
	lw $t0, -6764($fp)
	lw $t1, -6768($fp)
	mul $t0, $t0, $t1
	sw $t0, -6772($fp)
	li $t0, 23241
	sw $t0, -6776($fp)
	lw $t0, -6772($fp)
	lw $t1, -6776($fp)
	sub $t0, $t0, $t1
	sw $t0, -6780($fp)
	lw $t1, -6780($fp)
	li $t2, 0
	bne $t1, $t2, label703
	j label705
label705:
	li $t0, 10430
	sw $t0, -6784($fp)
	lw $t1, -6784($fp)
	li $t2, 0
	bne $t1, $t2, label704
	j label703
label703:
	li $t0, 1
	sw $t0, -6760($fp)
label704:
	lw $t0, -6760($fp)
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -6788($fp)
	lw $t1, -6788($fp)
	li $t2, 0
	bne $t1, $t2, label701
	j label702
label701:
label706:
	li $t0, 0
	sw $t0, -6792($fp)
	li $t0, 4111
	sw $t0, -6796($fp)
	li $t0, 0
	lw $t1, -6796($fp)
	sub $t0, $t0, $t1
	sw $t0, -6800($fp)
	lw $t1, -6800($fp)
	li $t2, 0
	bne $t1, $t2, label710
	j label709
label709:
	li $t0, 1
	sw $t0, -6792($fp)
label710:
	addi $sp, $sp, -4
	lw $t0, -6792($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6804($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6808($fp)
	addi $t0, $fp, -6412
	sw $t0, -6812($fp)
	li $t0, 5
	sw $t0, -6816($fp)
	li $t0, 4
	lw $t1, -6816($fp)
	mul $t0, $t0, $t1
	sw $t0, -6820($fp)
	lw $t0, -6820($fp)
	lw $t1, -6812($fp)
	add $t0, $t0, $t1
	sw $t0, -6824($fp)
	lw $t0, -6824($fp)
	lw $t1, 0($t0)
	sw $t1, -6828($fp)
	lw $t1, -6828($fp)
	li $t2, 0
	bne $t1, $t2, label712
	j label711
label711:
	li $t0, 1
	sw $t0, -6808($fp)
label712:
	lw $t0, -6804($fp)
	lw $t1, -6808($fp)
	add $t0, $t0, $t1
	sw $t0, -6832($fp)
	lw $t1, -6832($fp)
	li $t2, 0
	bne $t1, $t2, label707
	j label708
label707:
	lw $t0, -2384($fp)
	sw $t0, -6836($fp)
	j label706
label708:
	j label700
label702:
	lw $t0, -6420($fp)
	sw $t0, -6840($fp)
	li $t0, 0
	lw $t1, -6840($fp)
	sub $t0, $t0, $t1
	sw $t0, -6844($fp)
	li $t0, 0
	lw $t1, -6844($fp)
	sub $t0, $t0, $t1
	sw $t0, -6848($fp)
	lw $t1, -6848($fp)
	li $t2, 0
	bne $t1, $t2, label713
	j label714
label713:
label716:
	li $t0, 0
	sw $t0, -6852($fp)
	li $t0, 57031
	sw $t0, -6856($fp)
	li $t0, 54311
	sw $t0, -6860($fp)
	lw $t1, -6856($fp)
	lw $t2, -6860($fp)
	beq $t1, $t2, label721
	j label720
label721:
	li $t0, 22058
	sw $t0, -6864($fp)
	lw $t1, -6864($fp)
	li $t2, 0
	bne $t1, $t2, label719
	j label720
label719:
	li $t0, 1
	sw $t0, -6852($fp)
label720:
	li $t0, 38848
	sw $t0, -6868($fp)
	li $t0, 13911
	sw $t0, -6872($fp)
	lw $t0, -6868($fp)
	lw $t1, -6872($fp)
	mul $t0, $t0, $t1
	sw $t0, -6876($fp)
	lw $t0, -2396($fp)
	sw $t0, -6880($fp)
	lw $t0, -6876($fp)
	lw $t1, -6880($fp)
	mul $t0, $t0, $t1
	sw $t0, -6884($fp)
	addi $t0, $fp, -184
	sw $t0, -6888($fp)
	lw $t0, -2384($fp)
	sw $t0, -6892($fp)
	li $t0, 4
	lw $t1, -6892($fp)
	mul $t0, $t0, $t1
	sw $t0, -6896($fp)
	lw $t0, -6896($fp)
	lw $t1, -6888($fp)
	add $t0, $t0, $t1
	sw $t0, -6900($fp)
	lw $t0, -6900($fp)
	lw $t1, 0($t0)
	sw $t1, -6904($fp)
	li $t0, 0
	sw $t0, -6908($fp)
	lw $t0, -1292($fp)
	sw $t0, -6912($fp)
	li $t0, 0
	lw $t1, -6912($fp)
	sub $t0, $t0, $t1
	sw $t0, -6916($fp)
	lw $t1, -6916($fp)
	li $t2, 0
	bne $t1, $t2, label723
	j label722
label722:
	li $t0, 1
	sw $t0, -6908($fp)
label723:
	addi $sp, $sp, -4
	lw $t0, -6852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6908($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -6920($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -6924($fp)
	lw $t0, -944($fp)
	sw $t0, -6928($fp)
	li $t0, 0
	lw $t1, -6928($fp)
	sub $t0, $t0, $t1
	sw $t0, -6932($fp)
	lw $t1, -6932($fp)
	li $t2, 0
	bne $t1, $t2, label724
	j label725
label724:
	li $t0, 1
	sw $t0, -6924($fp)
label725:
	lw $t1, -6920($fp)
	lw $t2, -6924($fp)
	bge $t1, $t2, label717
	j label718
label717:
label726:
	li $t0, 0
	sw $t0, -6936($fp)
	lw $t0, -2372($fp)
	sw $t0, -6940($fp)
	lw $t1, -6940($fp)
	li $t2, 0
	bne $t1, $t2, label730
	j label729
label729:
	li $t0, 1
	sw $t0, -6936($fp)
label730:
	li $t0, 0
	sw $t0, -6944($fp)
	li $t0, 0
	sw $t0, -6948($fp)
	li $t0, 48356
	sw $t0, -6952($fp)
	li $t0, 32998
	sw $t0, -6956($fp)
	lw $t1, -6952($fp)
	lw $t2, -6956($fp)
	bgt $t1, $t2, label733
	j label734
label733:
	li $t0, 1
	sw $t0, -6948($fp)
label734:
	lw $t0, -1352($fp)
	sw $t0, -6960($fp)
	lw $t1, -6948($fp)
	lw $t2, -6960($fp)
	bgt $t1, $t2, label731
	j label732
label731:
	li $t0, 1
	sw $t0, -6944($fp)
label732:
	addi $sp, $sp, -4
	lw $t0, -6944($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6964($fp)
	addi $sp, $sp, 8
	lw $t0, -6936($fp)
	lw $t1, -6964($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6968($fp)
	lw $t0, -2756($fp)
	sw $t0, -6972($fp)
	li $t0, 0
	sw $t0, -6976($fp)
	li $t0, 45964
	sw $t0, -6980($fp)
	lw $t0, -2132($fp)
	sw $t0, -6984($fp)
	lw $t0, -6980($fp)
	lw $t1, -6984($fp)
	sub $t0, $t0, $t1
	sw $t0, -6988($fp)
	lw $t0, -1892($fp)
	sw $t0, -6992($fp)
	lw $t1, -6988($fp)
	lw $t2, -6992($fp)
	bne $t1, $t2, label735
	j label736
label735:
	li $t0, 1
	sw $t0, -6976($fp)
label736:
	lw $t0, -2396($fp)
	sw $t0, -6996($fp)
	lw $t0, -6996($fp)
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -7000($fp)
	li $t0, 0
	sw $t0, -7004($fp)
	lw $t0, -1292($fp)
	sw $t0, -7008($fp)
	lw $t1, -7008($fp)
	li $t2, 0
	bne $t1, $t2, label739
	j label738
label739:
	li $t0, 56249
	sw $t0, -7012($fp)
	lw $t1, -7012($fp)
	li $t2, 0
	bne $t1, $t2, label737
	j label738
label737:
	li $t0, 1
	sw $t0, -7004($fp)
label738:
	addi $sp, $sp, -4
	lw $t0, -6976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7004($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7016($fp)
	addi $sp, $sp, 16
	lw $t0, -6972($fp)
	lw $t1, -7016($fp)
	mul $t0, $t0, $t1
	sw $t0, -7020($fp)
	lw $t0, -6968($fp)
	lw $t1, -7020($fp)
	sub $t0, $t0, $t1
	sw $t0, -7024($fp)
	lw $t1, -7024($fp)
	li $t2, 0
	bne $t1, $t2, label727
	j label728
label727:
label740:
	addi $t0, $fp, -96
	sw $t0, -7028($fp)
	li $t0, 0
	sw $t0, -7032($fp)
	li $t0, 0
	sw $t0, -7036($fp)
	lw $t0, -1520($fp)
	sw $t0, -7040($fp)
	lw $t0, -2432($fp)
	sw $t0, -7044($fp)
	lw $t0, -7040($fp)
	lw $t1, -7044($fp)
	sub $t0, $t0, $t1
	sw $t0, -7048($fp)
	lw $t0, -2372($fp)
	sw $t0, -7052($fp)
	lw $t1, -7048($fp)
	lw $t2, -7052($fp)
	bne $t1, $t2, label746
	j label747
label746:
	li $t0, 1
	sw $t0, -7036($fp)
label747:
	li $t0, 23891
	sw $t0, -7056($fp)
	li $t0, 23953
	sw $t0, -7060($fp)
	lw $t0, -7056($fp)
	lw $t1, -7060($fp)
	mul $t0, $t0, $t1
	sw $t0, -7064($fp)
	addi $sp, $sp, -4
	lw $t0, -7036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7064($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7068($fp)
	addi $sp, $sp, 12
	lw $t1, -7068($fp)
	li $t2, 0
	bne $t1, $t2, label745
	j label744
label744:
	li $t0, 1
	sw $t0, -7032($fp)
label745:
	li $t0, 4
	lw $t1, -7032($fp)
	mul $t0, $t0, $t1
	sw $t0, -7072($fp)
	lw $t0, -7072($fp)
	lw $t1, -7028($fp)
	add $t0, $t0, $t1
	sw $t0, -7076($fp)
	lw $t0, -7076($fp)
	lw $t1, 0($t0)
	sw $t1, -7080($fp)
	lw $t1, -7080($fp)
	li $t2, 0
	bne $t1, $t2, label741
	j label743
label743:
	li $t0, 17516
	sw $t0, -7084($fp)
	lw $t0, 4($fp)
	sw $t0, -7088($fp)
	lw $t0, -7084($fp)
	lw $t1, -7088($fp)
	sub $t0, $t0, $t1
	sw $t0, -7092($fp)
	li $t0, 29451
	sw $t0, -7096($fp)
	lw $t1, -7092($fp)
	lw $t2, -7096($fp)
	bne $t1, $t2, label748
	j label742
label748:
	li $t0, 46995
	sw $t0, -7100($fp)
	lw $t1, -7100($fp)
	li $t2, 0
	bne $t1, $t2, label741
	j label742
label741:
	lw $t0, 16($fp)
	sw $t0, -7104($fp)
	lw $t0, -1652($fp)
	sw $t0, -7108($fp)
	li $t0, 0
	lw $t1, -7108($fp)
	sub $t0, $t0, $t1
	sw $t0, -7112($fp)
	li $t0, 0
	lw $t1, -7112($fp)
	sub $t0, $t0, $t1
	sw $t0, -7116($fp)
	lw $t0, -7104($fp)
	lw $t1, -7116($fp)
	mul $t0, $t0, $t1
	sw $t0, -7120($fp)
	lw $t0, -2396($fp)
	sw $t0, -7124($fp)
	addi $t0, $fp, -212
	sw $t0, -7128($fp)
	li $t0, 2
	sw $t0, -7132($fp)
	li $t0, 4
	lw $t1, -7132($fp)
	mul $t0, $t0, $t1
	sw $t0, -7136($fp)
	lw $t0, -7136($fp)
	lw $t1, -7128($fp)
	add $t0, $t0, $t1
	sw $t0, -7140($fp)
	lw $t0, -7140($fp)
	lw $t1, 0($t0)
	sw $t1, -7144($fp)
	lw $t0, -7124($fp)
	lw $t1, -7144($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7148($fp)
	li $t0, 0
	lw $t1, -7148($fp)
	sub $t0, $t0, $t1
	sw $t0, -7152($fp)
	lw $t0, -7120($fp)
	lw $t1, -7152($fp)
	add $t0, $t0, $t1
	sw $t0, -7156($fp)
	li $t0, 0
	sw $t0, -7160($fp)
	li $t0, 0
	sw $t0, -7164($fp)
	lw $t0, -1652($fp)
	sw $t0, -7168($fp)
	lw $t1, -7168($fp)
	li $t2, 0
	bne $t1, $t2, label752
	j label751
label751:
	li $t0, 1
	sw $t0, -7164($fp)
label752:
	li $t0, 0
	lw $t1, -7164($fp)
	sub $t0, $t0, $t1
	sw $t0, -7172($fp)
	lw $t1, -7172($fp)
	li $t2, 0
	bne $t1, $t2, label750
	j label749
label749:
	li $t0, 1
	sw $t0, -7160($fp)
label750:
	j label740
label742:
	j label726
label728:
	j label716
label718:
	j label715
label714:
	li $t0, 58492
	sw $t0, -7216($fp)
	lw $t0, -7216($fp)
	sw $t0, -7220($fp)
	lw $t0, -7220($fp)
	sw $t0, -7224($fp)
	li $t0, 35234
	sw $t0, -7228($fp)
	addi $t0, $fp, -7212
	sw $t0, -7232($fp)
	li $t0, 0
	sw $t0, -7236($fp)
	lw $t0, -7236($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7240($fp)
	lw $t0, -7232($fp)
	lw $t1, -7240($fp)
	add $t0, $t0, $t1
	sw $t0, -7244($fp)
	lw $t0, -7228($fp)
	lw $t1, -7244($fp)
	sw $t0, 0($t1)
	lw $t0, -7244($fp)
	lw $t1, 0($t0)
	sw $t1, -7248($fp)
	li $t0, 20433
	sw $t0, -7252($fp)
	addi $t0, $fp, -7212
	sw $t0, -7256($fp)
	li $t0, 1
	sw $t0, -7260($fp)
	lw $t0, -7260($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7264($fp)
	lw $t0, -7256($fp)
	lw $t1, -7264($fp)
	add $t0, $t0, $t1
	sw $t0, -7268($fp)
	lw $t0, -7252($fp)
	lw $t1, -7268($fp)
	sw $t0, 0($t1)
	lw $t0, -7268($fp)
	lw $t1, 0($t0)
	sw $t1, -7272($fp)
	li $t0, 8556
	sw $t0, -7276($fp)
	addi $t0, $fp, -7212
	sw $t0, -7280($fp)
	li $t0, 2
	sw $t0, -7284($fp)
	lw $t0, -7284($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7288($fp)
	lw $t0, -7280($fp)
	lw $t1, -7288($fp)
	add $t0, $t0, $t1
	sw $t0, -7292($fp)
	lw $t0, -7276($fp)
	lw $t1, -7292($fp)
	sw $t0, 0($t1)
	lw $t0, -7292($fp)
	lw $t1, 0($t0)
	sw $t1, -7296($fp)
	li $t0, 45484
	sw $t0, -7300($fp)
	addi $t0, $fp, -7212
	sw $t0, -7304($fp)
	li $t0, 3
	sw $t0, -7308($fp)
	lw $t0, -7308($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7312($fp)
	lw $t0, -7304($fp)
	lw $t1, -7312($fp)
	add $t0, $t0, $t1
	sw $t0, -7316($fp)
	lw $t0, -7300($fp)
	lw $t1, -7316($fp)
	sw $t0, 0($t1)
	lw $t0, -7316($fp)
	lw $t1, 0($t0)
	sw $t1, -7320($fp)
	li $t0, 9884
	sw $t0, -7324($fp)
	addi $t0, $fp, -7212
	sw $t0, -7328($fp)
	li $t0, 4
	sw $t0, -7332($fp)
	lw $t0, -7332($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7336($fp)
	lw $t0, -7328($fp)
	lw $t1, -7336($fp)
	add $t0, $t0, $t1
	sw $t0, -7340($fp)
	lw $t0, -7324($fp)
	lw $t1, -7340($fp)
	sw $t0, 0($t1)
	lw $t0, -7340($fp)
	lw $t1, 0($t0)
	sw $t1, -7344($fp)
	li $t0, 20257
	sw $t0, -7348($fp)
	addi $t0, $fp, -7212
	sw $t0, -7352($fp)
	li $t0, 5
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
	li $t0, 59215
	sw $t0, -7372($fp)
	addi $t0, $fp, -7212
	sw $t0, -7376($fp)
	li $t0, 6
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
	li $t0, 21209
	sw $t0, -7396($fp)
	addi $t0, $fp, -7212
	sw $t0, -7400($fp)
	li $t0, 7
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
	li $t0, 33180
	sw $t0, -7420($fp)
	addi $t0, $fp, -7212
	sw $t0, -7424($fp)
	li $t0, 8
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
	li $t0, 16920
	sw $t0, -7444($fp)
	addi $t0, $fp, -7212
	sw $t0, -7448($fp)
	li $t0, 9
	sw $t0, -7452($fp)
	lw $t0, -7452($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7456($fp)
	lw $t0, -7448($fp)
	lw $t1, -7456($fp)
	add $t0, $t0, $t1
	sw $t0, -7460($fp)
	lw $t0, -7444($fp)
	lw $t1, -7460($fp)
	sw $t0, 0($t1)
	lw $t0, -7460($fp)
	lw $t1, 0($t0)
	sw $t1, -7464($fp)
	lw $t0, -2432($fp)
	sw $t0, -7468($fp)
	addi $t0, $fp, -96
	sw $t0, -7472($fp)
	li $t0, 3
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
	lw $t0, -7468($fp)
	lw $t1, -7488($fp)
	mul $t0, $t0, $t1
	sw $t0, -7492($fp)
	addi $t0, $fp, -156
	sw $t0, -7496($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -7516($fp)
	li $t0, 10604
	sw $t0, -7520($fp)
	lw $t1, -7520($fp)
	li $t2, 0
	bne $t1, $t2, label754
	j label753
label753:
	li $t0, 1
	sw $t0, -7516($fp)
label754:
	li $t0, 61572
	sw $t0, -7524($fp)
	lw $t0, -7516($fp)
	lw $t1, -7524($fp)
	add $t0, $t0, $t1
	sw $t0, -7528($fp)
	li $t0, 0
	sw $t0, -7532($fp)
	lw $t0, -7220($fp)
	sw $t0, -7536($fp)
	li $t0, 47661
	sw $t0, -7540($fp)
	lw $t0, -7536($fp)
	lw $t1, -7540($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7544($fp)
	li $t0, 56218
	sw $t0, -7548($fp)
	lw $t1, -7544($fp)
	lw $t2, -7548($fp)
	beq $t1, $t2, label755
	j label756
label755:
	li $t0, 1
	sw $t0, -7532($fp)
label756:
	addi $sp, $sp, -4
	lw $t0, -7512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7532($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -7552($fp)
	addi $sp, $sp, 16
	lw $t0, -2408($fp)
	sw $t0, -7556($fp)
	lw $t0, -7556($fp)
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	sw $t0, -7560($fp)
	addi $sp, $sp, -4
	lw $t0, -7560($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7564($fp)
	addi $sp, $sp, 8
	lw $t0, -7552($fp)
	lw $t1, -7564($fp)
	add $t0, $t0, $t1
	sw $t0, -7568($fp)
	lw $t0, -7568($fp)
	sw $t0, -2744($fp)
	lw $t0, -2744($fp)
	sw $t0, -7572($fp)
	addi $t0, $fp, -7212
	sw $t0, -7576($fp)
	li $t0, 0
	sw $t0, -7580($fp)
	li $t0, 4
	lw $t1, -7580($fp)
	mul $t0, $t0, $t1
	sw $t0, -7584($fp)
	lw $t0, -7584($fp)
	lw $t1, -7576($fp)
	add $t0, $t0, $t1
	sw $t0, -7588($fp)
	lw $t0, -7588($fp)
	lw $t1, 0($t0)
	sw $t1, -7592($fp)
	addi $t0, $fp, -280
	sw $t0, -7596($fp)
	li $t0, 8
	sw $t0, -7600($fp)
	li $t0, 4
	lw $t1, -7600($fp)
	mul $t0, $t0, $t1
	sw $t0, -7604($fp)
	lw $t0, -7604($fp)
	lw $t1, -7596($fp)
	add $t0, $t0, $t1
	sw $t0, -7608($fp)
	lw $t0, -7608($fp)
	lw $t1, 0($t0)
	sw $t1, -7612($fp)
	lw $t0, -7592($fp)
	lw $t1, -7612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7616($fp)
	addi $t0, $fp, -128
	sw $t0, -7620($fp)
	li $t0, 4
	sw $t0, -7624($fp)
	li $t0, 4
	lw $t1, -7624($fp)
	mul $t0, $t0, $t1
	sw $t0, -7628($fp)
	lw $t0, -7628($fp)
	lw $t1, -7620($fp)
	add $t0, $t0, $t1
	sw $t0, -7632($fp)
	lw $t0, -7632($fp)
	lw $t1, 0($t0)
	sw $t1, -7636($fp)
	lw $t0, -7616($fp)
	lw $t1, -7636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7640($fp)
	li $t0, 32760
	sw $t0, -7644($fp)
	li $t0, 0
	lw $t1, -7644($fp)
	sub $t0, $t0, $t1
	sw $t0, -7648($fp)
label715:
	addi $t0, $fp, -24
	sw $t0, -7652($fp)
	li $t0, 0
	sw $t0, -7656($fp)
	li $t0, 4
	lw $t1, -7656($fp)
	mul $t0, $t0, $t1
	sw $t0, -7660($fp)
	lw $t0, -7660($fp)
	lw $t1, -7652($fp)
	add $t0, $t0, $t1
	sw $t0, -7664($fp)
	lw $t0, -7664($fp)
	lw $t1, 0($t0)
	sw $t1, -7668($fp)
	lw $t0, -7668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -7672($fp)
	li $t0, 1
	sw $t0, -7676($fp)
	li $t0, 4
	lw $t1, -7676($fp)
	mul $t0, $t0, $t1
	sw $t0, -7680($fp)
	lw $t0, -7680($fp)
	lw $t1, -7672($fp)
	add $t0, $t0, $t1
	sw $t0, -7684($fp)
	lw $t0, -7684($fp)
	lw $t1, 0($t0)
	sw $t1, -7688($fp)
	lw $t0, -7688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -7692($fp)
	li $t0, 2
	sw $t0, -7696($fp)
	li $t0, 4
	lw $t1, -7696($fp)
	mul $t0, $t0, $t1
	sw $t0, -7700($fp)
	lw $t0, -7700($fp)
	lw $t1, -7692($fp)
	add $t0, $t0, $t1
	sw $t0, -7704($fp)
	lw $t0, -7704($fp)
	lw $t1, 0($t0)
	sw $t1, -7708($fp)
	lw $t0, -7708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -7712($fp)
	li $t0, 3
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
	lw $t0, -7728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -7732($fp)
	li $t0, 4
	sw $t0, -7736($fp)
	li $t0, 4
	lw $t1, -7736($fp)
	mul $t0, $t0, $t1
	sw $t0, -7740($fp)
	lw $t0, -7740($fp)
	lw $t1, -7732($fp)
	add $t0, $t0, $t1
	sw $t0, -7744($fp)
	lw $t0, -7744($fp)
	lw $t1, 0($t0)
	sw $t1, -7748($fp)
	lw $t0, -7748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -7752($fp)
	lw $t0, -7752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -7756($fp)
	li $t0, 0
	sw $t0, -7760($fp)
	li $t0, 4
	lw $t1, -7760($fp)
	mul $t0, $t0, $t1
	sw $t0, -7764($fp)
	lw $t0, -7764($fp)
	lw $t1, -7756($fp)
	add $t0, $t0, $t1
	sw $t0, -7768($fp)
	lw $t0, -7768($fp)
	lw $t1, 0($t0)
	sw $t1, -7772($fp)
	lw $t0, -7772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -7776($fp)
	li $t0, 1
	sw $t0, -7780($fp)
	li $t0, 4
	lw $t1, -7780($fp)
	mul $t0, $t0, $t1
	sw $t0, -7784($fp)
	lw $t0, -7784($fp)
	lw $t1, -7776($fp)
	add $t0, $t0, $t1
	sw $t0, -7788($fp)
	lw $t0, -7788($fp)
	lw $t1, 0($t0)
	sw $t1, -7792($fp)
	lw $t0, -7792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -7796($fp)
	li $t0, 0
	sw $t0, -7800($fp)
	li $t0, 4
	lw $t1, -7800($fp)
	mul $t0, $t0, $t1
	sw $t0, -7804($fp)
	lw $t0, -7804($fp)
	lw $t1, -7796($fp)
	add $t0, $t0, $t1
	sw $t0, -7808($fp)
	lw $t0, -7808($fp)
	lw $t1, 0($t0)
	sw $t1, -7812($fp)
	lw $t0, -7812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -7816($fp)
	li $t0, 1
	sw $t0, -7820($fp)
	li $t0, 4
	lw $t1, -7820($fp)
	mul $t0, $t0, $t1
	sw $t0, -7824($fp)
	lw $t0, -7824($fp)
	lw $t1, -7816($fp)
	add $t0, $t0, $t1
	sw $t0, -7828($fp)
	lw $t0, -7828($fp)
	lw $t1, 0($t0)
	sw $t1, -7832($fp)
	lw $t0, -7832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -7836($fp)
	li $t0, 2
	sw $t0, -7840($fp)
	li $t0, 4
	lw $t1, -7840($fp)
	mul $t0, $t0, $t1
	sw $t0, -7844($fp)
	lw $t0, -7844($fp)
	lw $t1, -7836($fp)
	add $t0, $t0, $t1
	sw $t0, -7848($fp)
	lw $t0, -7848($fp)
	lw $t1, 0($t0)
	sw $t1, -7852($fp)
	lw $t0, -7852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -7856($fp)
	li $t0, 3
	sw $t0, -7860($fp)
	li $t0, 4
	lw $t1, -7860($fp)
	mul $t0, $t0, $t1
	sw $t0, -7864($fp)
	lw $t0, -7864($fp)
	lw $t1, -7856($fp)
	add $t0, $t0, $t1
	sw $t0, -7868($fp)
	lw $t0, -7868($fp)
	lw $t1, 0($t0)
	sw $t1, -7872($fp)
	lw $t0, -7872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -7876($fp)
	li $t0, 4
	sw $t0, -7880($fp)
	li $t0, 4
	lw $t1, -7880($fp)
	mul $t0, $t0, $t1
	sw $t0, -7884($fp)
	lw $t0, -7884($fp)
	lw $t1, -7876($fp)
	add $t0, $t0, $t1
	sw $t0, -7888($fp)
	lw $t0, -7888($fp)
	lw $t1, 0($t0)
	sw $t1, -7892($fp)
	lw $t0, -7892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -7896($fp)
	li $t0, 0
	sw $t0, -7900($fp)
	li $t0, 4
	lw $t1, -7900($fp)
	mul $t0, $t0, $t1
	sw $t0, -7904($fp)
	lw $t0, -7904($fp)
	lw $t1, -7896($fp)
	add $t0, $t0, $t1
	sw $t0, -7908($fp)
	lw $t0, -7908($fp)
	lw $t1, 0($t0)
	sw $t1, -7912($fp)
	lw $t0, -7912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7916($fp)
	li $t0, 0
	sw $t0, -7920($fp)
	li $t0, 4
	lw $t1, -7920($fp)
	mul $t0, $t0, $t1
	sw $t0, -7924($fp)
	lw $t0, -7924($fp)
	lw $t1, -7916($fp)
	add $t0, $t0, $t1
	sw $t0, -7928($fp)
	lw $t0, -7928($fp)
	lw $t1, 0($t0)
	sw $t1, -7932($fp)
	lw $t0, -7932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7936($fp)
	li $t0, 1
	sw $t0, -7940($fp)
	li $t0, 4
	lw $t1, -7940($fp)
	mul $t0, $t0, $t1
	sw $t0, -7944($fp)
	lw $t0, -7944($fp)
	lw $t1, -7936($fp)
	add $t0, $t0, $t1
	sw $t0, -7948($fp)
	lw $t0, -7948($fp)
	lw $t1, 0($t0)
	sw $t1, -7952($fp)
	lw $t0, -7952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7956($fp)
	li $t0, 2
	sw $t0, -7960($fp)
	li $t0, 4
	lw $t1, -7960($fp)
	mul $t0, $t0, $t1
	sw $t0, -7964($fp)
	lw $t0, -7964($fp)
	lw $t1, -7956($fp)
	add $t0, $t0, $t1
	sw $t0, -7968($fp)
	lw $t0, -7968($fp)
	lw $t1, 0($t0)
	sw $t1, -7972($fp)
	lw $t0, -7972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7976($fp)
	li $t0, 3
	sw $t0, -7980($fp)
	li $t0, 4
	lw $t1, -7980($fp)
	mul $t0, $t0, $t1
	sw $t0, -7984($fp)
	lw $t0, -7984($fp)
	lw $t1, -7976($fp)
	add $t0, $t0, $t1
	sw $t0, -7988($fp)
	lw $t0, -7988($fp)
	lw $t1, 0($t0)
	sw $t1, -7992($fp)
	lw $t0, -7992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7996($fp)
	li $t0, 4
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
	lw $t0, -8012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -8016($fp)
	li $t0, 5
	sw $t0, -8020($fp)
	li $t0, 4
	lw $t1, -8020($fp)
	mul $t0, $t0, $t1
	sw $t0, -8024($fp)
	lw $t0, -8024($fp)
	lw $t1, -8016($fp)
	add $t0, $t0, $t1
	sw $t0, -8028($fp)
	lw $t0, -8028($fp)
	lw $t1, 0($t0)
	sw $t1, -8032($fp)
	lw $t0, -8032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -800($fp)
	sw $t0, -8036($fp)
	lw $t0, -8036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -8040($fp)
	li $t0, 0
	sw $t0, -8044($fp)
	li $t0, 4
	lw $t1, -8044($fp)
	mul $t0, $t0, $t1
	sw $t0, -8048($fp)
	lw $t0, -8048($fp)
	lw $t1, -8040($fp)
	add $t0, $t0, $t1
	sw $t0, -8052($fp)
	lw $t0, -8052($fp)
	lw $t1, 0($t0)
	sw $t1, -8056($fp)
	lw $t0, -8056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -8060($fp)
	li $t0, 1
	sw $t0, -8064($fp)
	li $t0, 4
	lw $t1, -8064($fp)
	mul $t0, $t0, $t1
	sw $t0, -8068($fp)
	lw $t0, -8068($fp)
	lw $t1, -8060($fp)
	add $t0, $t0, $t1
	sw $t0, -8072($fp)
	lw $t0, -8072($fp)
	lw $t1, 0($t0)
	sw $t1, -8076($fp)
	lw $t0, -8076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -8080($fp)
	li $t0, 2
	sw $t0, -8084($fp)
	li $t0, 4
	lw $t1, -8084($fp)
	mul $t0, $t0, $t1
	sw $t0, -8088($fp)
	lw $t0, -8088($fp)
	lw $t1, -8080($fp)
	add $t0, $t0, $t1
	sw $t0, -8092($fp)
	lw $t0, -8092($fp)
	lw $t1, 0($t0)
	sw $t1, -8096($fp)
	lw $t0, -8096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -8100($fp)
	li $t0, 3
	sw $t0, -8104($fp)
	li $t0, 4
	lw $t1, -8104($fp)
	mul $t0, $t0, $t1
	sw $t0, -8108($fp)
	lw $t0, -8108($fp)
	lw $t1, -8100($fp)
	add $t0, $t0, $t1
	sw $t0, -8112($fp)
	lw $t0, -8112($fp)
	lw $t1, 0($t0)
	sw $t1, -8116($fp)
	lw $t0, -8116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -908($fp)
	sw $t0, -8120($fp)
	lw $t0, -8120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -920($fp)
	sw $t0, -8124($fp)
	lw $t0, -8124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -932($fp)
	sw $t0, -8128($fp)
	lw $t0, -8128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -944($fp)
	sw $t0, -8132($fp)
	lw $t0, -8132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -8136($fp)
	li $t0, 0
	sw $t0, -8140($fp)
	li $t0, 4
	lw $t1, -8140($fp)
	mul $t0, $t0, $t1
	sw $t0, -8144($fp)
	lw $t0, -8144($fp)
	lw $t1, -8136($fp)
	add $t0, $t0, $t1
	sw $t0, -8148($fp)
	lw $t0, -8148($fp)
	lw $t1, 0($t0)
	sw $t1, -8152($fp)
	lw $t0, -8152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -8156($fp)
	li $t0, 1
	sw $t0, -8160($fp)
	li $t0, 4
	lw $t1, -8160($fp)
	mul $t0, $t0, $t1
	sw $t0, -8164($fp)
	lw $t0, -8164($fp)
	lw $t1, -8156($fp)
	add $t0, $t0, $t1
	sw $t0, -8168($fp)
	lw $t0, -8168($fp)
	lw $t1, 0($t0)
	sw $t1, -8172($fp)
	lw $t0, -8172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -8176($fp)
	li $t0, 2
	sw $t0, -8180($fp)
	li $t0, 4
	lw $t1, -8180($fp)
	mul $t0, $t0, $t1
	sw $t0, -8184($fp)
	lw $t0, -8184($fp)
	lw $t1, -8176($fp)
	add $t0, $t0, $t1
	sw $t0, -8188($fp)
	lw $t0, -8188($fp)
	lw $t1, 0($t0)
	sw $t1, -8192($fp)
	lw $t0, -8192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -8196($fp)
	li $t0, 3
	sw $t0, -8200($fp)
	li $t0, 4
	lw $t1, -8200($fp)
	mul $t0, $t0, $t1
	sw $t0, -8204($fp)
	lw $t0, -8204($fp)
	lw $t1, -8196($fp)
	add $t0, $t0, $t1
	sw $t0, -8208($fp)
	lw $t0, -8208($fp)
	lw $t1, 0($t0)
	sw $t1, -8212($fp)
	lw $t0, -8212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -8216($fp)
	li $t0, 4
	sw $t0, -8220($fp)
	li $t0, 4
	lw $t1, -8220($fp)
	mul $t0, $t0, $t1
	sw $t0, -8224($fp)
	lw $t0, -8224($fp)
	lw $t1, -8216($fp)
	add $t0, $t0, $t1
	sw $t0, -8228($fp)
	lw $t0, -8228($fp)
	lw $t1, 0($t0)
	sw $t1, -8232($fp)
	lw $t0, -8232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -8236($fp)
	li $t0, 5
	sw $t0, -8240($fp)
	li $t0, 4
	lw $t1, -8240($fp)
	mul $t0, $t0, $t1
	sw $t0, -8244($fp)
	lw $t0, -8244($fp)
	lw $t1, -8236($fp)
	add $t0, $t0, $t1
	sw $t0, -8248($fp)
	lw $t0, -8248($fp)
	lw $t1, 0($t0)
	sw $t1, -8252($fp)
	lw $t0, -8252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -8256($fp)
	li $t0, 6
	sw $t0, -8260($fp)
	li $t0, 4
	lw $t1, -8260($fp)
	mul $t0, $t0, $t1
	sw $t0, -8264($fp)
	lw $t0, -8264($fp)
	lw $t1, -8256($fp)
	add $t0, $t0, $t1
	sw $t0, -8268($fp)
	lw $t0, -8268($fp)
	lw $t1, 0($t0)
	sw $t1, -8272($fp)
	lw $t0, -8272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -128
	sw $t0, -8276($fp)
	li $t0, 7
	sw $t0, -8280($fp)
	li $t0, 4
	lw $t1, -8280($fp)
	mul $t0, $t0, $t1
	sw $t0, -8284($fp)
	lw $t0, -8284($fp)
	lw $t1, -8276($fp)
	add $t0, $t0, $t1
	sw $t0, -8288($fp)
	lw $t0, -8288($fp)
	lw $t1, 0($t0)
	sw $t1, -8292($fp)
	lw $t0, -8292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -8296($fp)
	li $t0, 0
	sw $t0, -8300($fp)
	li $t0, 4
	lw $t1, -8300($fp)
	mul $t0, $t0, $t1
	sw $t0, -8304($fp)
	lw $t0, -8304($fp)
	lw $t1, -8296($fp)
	add $t0, $t0, $t1
	sw $t0, -8308($fp)
	lw $t0, -8308($fp)
	lw $t1, 0($t0)
	sw $t1, -8312($fp)
	lw $t0, -8312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -8316($fp)
	li $t0, 1
	sw $t0, -8320($fp)
	li $t0, 4
	lw $t1, -8320($fp)
	mul $t0, $t0, $t1
	sw $t0, -8324($fp)
	lw $t0, -8324($fp)
	lw $t1, -8316($fp)
	add $t0, $t0, $t1
	sw $t0, -8328($fp)
	lw $t0, -8328($fp)
	lw $t1, 0($t0)
	sw $t1, -8332($fp)
	lw $t0, -8332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -8336($fp)
	li $t0, 2
	sw $t0, -8340($fp)
	li $t0, 4
	lw $t1, -8340($fp)
	mul $t0, $t0, $t1
	sw $t0, -8344($fp)
	lw $t0, -8344($fp)
	lw $t1, -8336($fp)
	add $t0, $t0, $t1
	sw $t0, -8348($fp)
	lw $t0, -8348($fp)
	lw $t1, 0($t0)
	sw $t1, -8352($fp)
	lw $t0, -8352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -8356($fp)
	li $t0, 3
	sw $t0, -8360($fp)
	li $t0, 4
	lw $t1, -8360($fp)
	mul $t0, $t0, $t1
	sw $t0, -8364($fp)
	lw $t0, -8364($fp)
	lw $t1, -8356($fp)
	add $t0, $t0, $t1
	sw $t0, -8368($fp)
	lw $t0, -8368($fp)
	lw $t1, 0($t0)
	sw $t1, -8372($fp)
	lw $t0, -8372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -8376($fp)
	li $t0, 4
	sw $t0, -8380($fp)
	li $t0, 4
	lw $t1, -8380($fp)
	mul $t0, $t0, $t1
	sw $t0, -8384($fp)
	lw $t0, -8384($fp)
	lw $t1, -8376($fp)
	add $t0, $t0, $t1
	sw $t0, -8388($fp)
	lw $t0, -8388($fp)
	lw $t1, 0($t0)
	sw $t1, -8392($fp)
	lw $t0, -8392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1268($fp)
	sw $t0, -8396($fp)
	lw $t0, -8396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1280($fp)
	sw $t0, -8400($fp)
	lw $t0, -8400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1292($fp)
	sw $t0, -8404($fp)
	lw $t0, -8404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -8408($fp)
	li $t0, 0
	sw $t0, -8412($fp)
	li $t0, 4
	lw $t1, -8412($fp)
	mul $t0, $t0, $t1
	sw $t0, -8416($fp)
	lw $t0, -8416($fp)
	lw $t1, -8408($fp)
	add $t0, $t0, $t1
	sw $t0, -8420($fp)
	lw $t0, -8420($fp)
	lw $t1, 0($t0)
	sw $t1, -8424($fp)
	lw $t0, -8424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -8428($fp)
	li $t0, 1
	sw $t0, -8432($fp)
	li $t0, 4
	lw $t1, -8432($fp)
	mul $t0, $t0, $t1
	sw $t0, -8436($fp)
	lw $t0, -8436($fp)
	lw $t1, -8428($fp)
	add $t0, $t0, $t1
	sw $t0, -8440($fp)
	lw $t0, -8440($fp)
	lw $t1, 0($t0)
	sw $t1, -8444($fp)
	lw $t0, -8444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1352($fp)
	sw $t0, -8448($fp)
	lw $t0, -8448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1364($fp)
	sw $t0, -8452($fp)
	lw $t0, -8452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1376($fp)
	sw $t0, -8456($fp)
	lw $t0, -8456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1388($fp)
	sw $t0, -8460($fp)
	lw $t0, -8460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -8464($fp)
	li $t0, 0
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
	lw $t0, -8480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -8484($fp)
	li $t0, 1
	sw $t0, -8488($fp)
	li $t0, 4
	lw $t1, -8488($fp)
	mul $t0, $t0, $t1
	sw $t0, -8492($fp)
	lw $t0, -8492($fp)
	lw $t1, -8484($fp)
	add $t0, $t0, $t1
	sw $t0, -8496($fp)
	lw $t0, -8496($fp)
	lw $t1, 0($t0)
	sw $t1, -8500($fp)
	lw $t0, -8500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1448($fp)
	sw $t0, -8504($fp)
	lw $t0, -8504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1460($fp)
	sw $t0, -8508($fp)
	lw $t0, -8508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1472($fp)
	sw $t0, -8512($fp)
	lw $t0, -8512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1484($fp)
	sw $t0, -8516($fp)
	lw $t0, -8516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1496($fp)
	sw $t0, -8520($fp)
	lw $t0, -8520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1508($fp)
	sw $t0, -8524($fp)
	lw $t0, -8524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1520($fp)
	sw $t0, -8528($fp)
	lw $t0, -8528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -184
	sw $t0, -8532($fp)
	li $t0, 0
	sw $t0, -8536($fp)
	li $t0, 4
	lw $t1, -8536($fp)
	mul $t0, $t0, $t1
	sw $t0, -8540($fp)
	lw $t0, -8540($fp)
	lw $t1, -8532($fp)
	add $t0, $t0, $t1
	sw $t0, -8544($fp)
	lw $t0, -8544($fp)
	lw $t1, 0($t0)
	sw $t1, -8548($fp)
	lw $t0, -8548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -184
	sw $t0, -8552($fp)
	li $t0, 1
	sw $t0, -8556($fp)
	li $t0, 4
	lw $t1, -8556($fp)
	mul $t0, $t0, $t1
	sw $t0, -8560($fp)
	lw $t0, -8560($fp)
	lw $t1, -8552($fp)
	add $t0, $t0, $t1
	sw $t0, -8564($fp)
	lw $t0, -8564($fp)
	lw $t1, 0($t0)
	sw $t1, -8568($fp)
	lw $t0, -8568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -184
	sw $t0, -8572($fp)
	li $t0, 2
	sw $t0, -8576($fp)
	li $t0, 4
	lw $t1, -8576($fp)
	mul $t0, $t0, $t1
	sw $t0, -8580($fp)
	lw $t0, -8580($fp)
	lw $t1, -8572($fp)
	add $t0, $t0, $t1
	sw $t0, -8584($fp)
	lw $t0, -8584($fp)
	lw $t1, 0($t0)
	sw $t1, -8588($fp)
	lw $t0, -8588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -184
	sw $t0, -8592($fp)
	li $t0, 3
	sw $t0, -8596($fp)
	li $t0, 4
	lw $t1, -8596($fp)
	mul $t0, $t0, $t1
	sw $t0, -8600($fp)
	lw $t0, -8600($fp)
	lw $t1, -8592($fp)
	add $t0, $t0, $t1
	sw $t0, -8604($fp)
	lw $t0, -8604($fp)
	lw $t1, 0($t0)
	sw $t1, -8608($fp)
	lw $t0, -8608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -184
	sw $t0, -8612($fp)
	li $t0, 4
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
	lw $t0, -8628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1652($fp)
	sw $t0, -8632($fp)
	lw $t0, -8632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1664($fp)
	sw $t0, -8636($fp)
	lw $t0, -8636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1676($fp)
	sw $t0, -8640($fp)
	lw $t0, -8640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -8644($fp)
	li $t0, 0
	sw $t0, -8648($fp)
	li $t0, 4
	lw $t1, -8648($fp)
	mul $t0, $t0, $t1
	sw $t0, -8652($fp)
	lw $t0, -8652($fp)
	lw $t1, -8644($fp)
	add $t0, $t0, $t1
	sw $t0, -8656($fp)
	lw $t0, -8656($fp)
	lw $t1, 0($t0)
	sw $t1, -8660($fp)
	lw $t0, -8660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -8664($fp)
	li $t0, 0
	sw $t0, -8668($fp)
	li $t0, 4
	lw $t1, -8668($fp)
	mul $t0, $t0, $t1
	sw $t0, -8672($fp)
	lw $t0, -8672($fp)
	lw $t1, -8664($fp)
	add $t0, $t0, $t1
	sw $t0, -8676($fp)
	lw $t0, -8676($fp)
	lw $t1, 0($t0)
	sw $t1, -8680($fp)
	lw $t0, -8680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
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
	lw $t0, -8700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -8704($fp)
	li $t0, 2
	sw $t0, -8708($fp)
	li $t0, 4
	lw $t1, -8708($fp)
	mul $t0, $t0, $t1
	sw $t0, -8712($fp)
	lw $t0, -8712($fp)
	lw $t1, -8704($fp)
	add $t0, $t0, $t1
	sw $t0, -8716($fp)
	lw $t0, -8716($fp)
	lw $t1, 0($t0)
	sw $t1, -8720($fp)
	lw $t0, -8720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1784($fp)
	sw $t0, -8724($fp)
	lw $t0, -8724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1796($fp)
	sw $t0, -8728($fp)
	lw $t0, -8728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -8732($fp)
	li $t0, 0
	sw $t0, -8736($fp)
	li $t0, 4
	lw $t1, -8736($fp)
	mul $t0, $t0, $t1
	sw $t0, -8740($fp)
	lw $t0, -8740($fp)
	lw $t1, -8732($fp)
	add $t0, $t0, $t1
	sw $t0, -8744($fp)
	lw $t0, -8744($fp)
	lw $t1, 0($t0)
	sw $t1, -8748($fp)
	lw $t0, -8748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -8752($fp)
	li $t0, 1
	sw $t0, -8756($fp)
	li $t0, 4
	lw $t1, -8756($fp)
	mul $t0, $t0, $t1
	sw $t0, -8760($fp)
	lw $t0, -8760($fp)
	lw $t1, -8752($fp)
	add $t0, $t0, $t1
	sw $t0, -8764($fp)
	lw $t0, -8764($fp)
	lw $t1, 0($t0)
	sw $t1, -8768($fp)
	lw $t0, -8768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -8772($fp)
	li $t0, 2
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
	lw $t0, -8788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1880($fp)
	sw $t0, -8792($fp)
	lw $t0, -8792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1892($fp)
	sw $t0, -8796($fp)
	lw $t0, -8796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -8800($fp)
	li $t0, 0
	sw $t0, -8804($fp)
	li $t0, 4
	lw $t1, -8804($fp)
	mul $t0, $t0, $t1
	sw $t0, -8808($fp)
	lw $t0, -8808($fp)
	lw $t1, -8800($fp)
	add $t0, $t0, $t1
	sw $t0, -8812($fp)
	lw $t0, -8812($fp)
	lw $t1, 0($t0)
	sw $t1, -8816($fp)
	lw $t0, -8816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -8820($fp)
	li $t0, 1
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
	addi $t0, $fp, -236
	sw $t0, -8840($fp)
	li $t0, 2
	sw $t0, -8844($fp)
	li $t0, 4
	lw $t1, -8844($fp)
	mul $t0, $t0, $t1
	sw $t0, -8848($fp)
	lw $t0, -8848($fp)
	lw $t1, -8840($fp)
	add $t0, $t0, $t1
	sw $t0, -8852($fp)
	lw $t0, -8852($fp)
	lw $t1, 0($t0)
	sw $t1, -8856($fp)
	lw $t0, -8856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -8860($fp)
	li $t0, 3
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
	addi $t0, $fp, -236
	sw $t0, -8880($fp)
	li $t0, 4
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
	addi $t0, $fp, -236
	sw $t0, -8900($fp)
	li $t0, 5
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
	lw $t0, -2048($fp)
	sw $t0, -8920($fp)
	lw $t0, -8920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -8924($fp)
	li $t0, 0
	sw $t0, -8928($fp)
	li $t0, 4
	lw $t1, -8928($fp)
	mul $t0, $t0, $t1
	sw $t0, -8932($fp)
	lw $t0, -8932($fp)
	lw $t1, -8924($fp)
	add $t0, $t0, $t1
	sw $t0, -8936($fp)
	lw $t0, -8936($fp)
	lw $t1, 0($t0)
	sw $t1, -8940($fp)
	lw $t0, -8940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -8944($fp)
	li $t0, 1
	sw $t0, -8948($fp)
	li $t0, 4
	lw $t1, -8948($fp)
	mul $t0, $t0, $t1
	sw $t0, -8952($fp)
	lw $t0, -8952($fp)
	lw $t1, -8944($fp)
	add $t0, $t0, $t1
	sw $t0, -8956($fp)
	lw $t0, -8956($fp)
	lw $t1, 0($t0)
	sw $t1, -8960($fp)
	lw $t0, -8960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2108($fp)
	sw $t0, -8964($fp)
	lw $t0, -8964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2120($fp)
	sw $t0, -8968($fp)
	lw $t0, -8968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2132($fp)
	sw $t0, -8972($fp)
	lw $t0, -8972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -8976($fp)
	li $t0, 0
	sw $t0, -8980($fp)
	li $t0, 4
	lw $t1, -8980($fp)
	mul $t0, $t0, $t1
	sw $t0, -8984($fp)
	lw $t0, -8984($fp)
	lw $t1, -8976($fp)
	add $t0, $t0, $t1
	sw $t0, -8988($fp)
	lw $t0, -8988($fp)
	lw $t1, 0($t0)
	sw $t1, -8992($fp)
	lw $t0, -8992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -8996($fp)
	li $t0, 1
	sw $t0, -9000($fp)
	li $t0, 4
	lw $t1, -9000($fp)
	mul $t0, $t0, $t1
	sw $t0, -9004($fp)
	lw $t0, -9004($fp)
	lw $t1, -8996($fp)
	add $t0, $t0, $t1
	sw $t0, -9008($fp)
	lw $t0, -9008($fp)
	lw $t1, 0($t0)
	sw $t1, -9012($fp)
	lw $t0, -9012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -9016($fp)
	li $t0, 2
	sw $t0, -9020($fp)
	li $t0, 4
	lw $t1, -9020($fp)
	mul $t0, $t0, $t1
	sw $t0, -9024($fp)
	lw $t0, -9024($fp)
	lw $t1, -9016($fp)
	add $t0, $t0, $t1
	sw $t0, -9028($fp)
	lw $t0, -9028($fp)
	lw $t1, 0($t0)
	sw $t1, -9032($fp)
	lw $t0, -9032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -9036($fp)
	li $t0, 3
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
	lw $t0, -9052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -9056($fp)
	li $t0, 4
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
	addi $t0, $fp, -280
	sw $t0, -9076($fp)
	li $t0, 5
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
	addi $t0, $fp, -280
	sw $t0, -9096($fp)
	li $t0, 6
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
	addi $t0, $fp, -280
	sw $t0, -9116($fp)
	li $t0, 7
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
	addi $t0, $fp, -280
	sw $t0, -9136($fp)
	li $t0, 8
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
	lw $t0, -2360($fp)
	sw $t0, -9156($fp)
	lw $t0, -9156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2372($fp)
	sw $t0, -9160($fp)
	lw $t0, -9160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2384($fp)
	sw $t0, -9164($fp)
	lw $t0, -9164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2396($fp)
	sw $t0, -9168($fp)
	lw $t0, -9168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2408($fp)
	sw $t0, -9172($fp)
	lw $t0, -9172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2420($fp)
	sw $t0, -9176($fp)
	lw $t0, -9176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2432($fp)
	sw $t0, -9180($fp)
	lw $t0, -9180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2444($fp)
	sw $t0, -9184($fp)
	lw $t0, -9184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -284
	sw $t0, -9188($fp)
	li $t0, 0
	sw $t0, -9192($fp)
	li $t0, 4
	lw $t1, -9192($fp)
	mul $t0, $t0, $t1
	sw $t0, -9196($fp)
	lw $t0, -9196($fp)
	lw $t1, -9188($fp)
	add $t0, $t0, $t1
	sw $t0, -9200($fp)
	lw $t0, -9200($fp)
	lw $t1, 0($t0)
	sw $t1, -9204($fp)
	lw $t0, -9204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2480($fp)
	sw $t0, -9208($fp)
	lw $t0, -9208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -9212($fp)
	li $t0, 0
	sw $t0, -9216($fp)
	li $t0, 4
	lw $t1, -9216($fp)
	mul $t0, $t0, $t1
	sw $t0, -9220($fp)
	lw $t0, -9220($fp)
	lw $t1, -9212($fp)
	add $t0, $t0, $t1
	sw $t0, -9224($fp)
	lw $t0, -9224($fp)
	lw $t1, 0($t0)
	sw $t1, -9228($fp)
	lw $t0, -9228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -9232($fp)
	li $t0, 1
	sw $t0, -9236($fp)
	li $t0, 4
	lw $t1, -9236($fp)
	mul $t0, $t0, $t1
	sw $t0, -9240($fp)
	lw $t0, -9240($fp)
	lw $t1, -9232($fp)
	add $t0, $t0, $t1
	sw $t0, -9244($fp)
	lw $t0, -9244($fp)
	lw $t1, 0($t0)
	sw $t1, -9248($fp)
	lw $t0, -9248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -9252($fp)
	li $t0, 2
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
	lw $t0, -9268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -9272($fp)
	li $t0, 3
	sw $t0, -9276($fp)
	li $t0, 4
	lw $t1, -9276($fp)
	mul $t0, $t0, $t1
	sw $t0, -9280($fp)
	lw $t0, -9280($fp)
	lw $t1, -9272($fp)
	add $t0, $t0, $t1
	sw $t0, -9284($fp)
	lw $t0, -9284($fp)
	lw $t1, 0($t0)
	sw $t1, -9288($fp)
	lw $t0, -9288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -9292($fp)
	li $t0, 4
	sw $t0, -9296($fp)
	li $t0, 4
	lw $t1, -9296($fp)
	mul $t0, $t0, $t1
	sw $t0, -9300($fp)
	lw $t0, -9300($fp)
	lw $t1, -9292($fp)
	add $t0, $t0, $t1
	sw $t0, -9304($fp)
	lw $t0, -9304($fp)
	lw $t1, 0($t0)
	sw $t1, -9308($fp)
	lw $t0, -9308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -9312($fp)
	li $t0, 5
	sw $t0, -9316($fp)
	li $t0, 4
	lw $t1, -9316($fp)
	mul $t0, $t0, $t1
	sw $t0, -9320($fp)
	lw $t0, -9320($fp)
	lw $t1, -9312($fp)
	add $t0, $t0, $t1
	sw $t0, -9324($fp)
	lw $t0, -9324($fp)
	lw $t1, 0($t0)
	sw $t1, -9328($fp)
	lw $t0, -9328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -9332($fp)
	li $t0, 6
	sw $t0, -9336($fp)
	li $t0, 4
	lw $t1, -9336($fp)
	mul $t0, $t0, $t1
	sw $t0, -9340($fp)
	lw $t0, -9340($fp)
	lw $t1, -9332($fp)
	add $t0, $t0, $t1
	sw $t0, -9344($fp)
	lw $t0, -9344($fp)
	lw $t1, 0($t0)
	sw $t1, -9348($fp)
	lw $t0, -9348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -9352($fp)
	li $t0, 7
	sw $t0, -9356($fp)
	li $t0, 4
	lw $t1, -9356($fp)
	mul $t0, $t0, $t1
	sw $t0, -9360($fp)
	lw $t0, -9360($fp)
	lw $t1, -9352($fp)
	add $t0, $t0, $t1
	sw $t0, -9364($fp)
	lw $t0, -9364($fp)
	lw $t1, 0($t0)
	sw $t1, -9368($fp)
	lw $t0, -9368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -9372($fp)
	li $t0, 8
	sw $t0, -9376($fp)
	li $t0, 4
	lw $t1, -9376($fp)
	mul $t0, $t0, $t1
	sw $t0, -9380($fp)
	lw $t0, -9380($fp)
	lw $t1, -9372($fp)
	add $t0, $t0, $t1
	sw $t0, -9384($fp)
	lw $t0, -9384($fp)
	lw $t1, 0($t0)
	sw $t1, -9388($fp)
	lw $t0, -9388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -9392($fp)
	li $t0, 9
	sw $t0, -9396($fp)
	li $t0, 4
	lw $t1, -9396($fp)
	mul $t0, $t0, $t1
	sw $t0, -9400($fp)
	lw $t0, -9400($fp)
	lw $t1, -9392($fp)
	add $t0, $t0, $t1
	sw $t0, -9404($fp)
	lw $t0, -9404($fp)
	lw $t1, 0($t0)
	sw $t1, -9408($fp)
	lw $t0, -9408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2732($fp)
	sw $t0, -9412($fp)
	lw $t0, -9412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2744($fp)
	sw $t0, -9416($fp)
	lw $t0, -9416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2756($fp)
	sw $t0, -9420($fp)
	lw $t0, -9420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -9424($fp)
	li $t0, 0
	sw $t0, -9428($fp)
	addi $t0, $fp, -24
	sw $t0, -9432($fp)
	li $t0, 0
	sw $t0, -9436($fp)
	li $t0, 4
	lw $t1, -9436($fp)
	mul $t0, $t0, $t1
	sw $t0, -9440($fp)
	lw $t0, -9440($fp)
	lw $t1, -9432($fp)
	add $t0, $t0, $t1
	sw $t0, -9444($fp)
	lw $t0, -9444($fp)
	lw $t1, 0($t0)
	sw $t1, -9448($fp)
	lw $t0, -1796($fp)
	sw $t0, -9452($fp)
	lw $t0, -9448($fp)
	lw $t1, -9452($fp)
	add $t0, $t0, $t1
	sw $t0, -9456($fp)
	addi $t0, $fp, -200
	sw $t0, -9460($fp)
	lw $t0, -1784($fp)
	sw $t0, -9464($fp)
	li $t0, 4
	lw $t1, -9464($fp)
	mul $t0, $t0, $t1
	sw $t0, -9468($fp)
	lw $t0, -9468($fp)
	lw $t1, -9460($fp)
	add $t0, $t0, $t1
	sw $t0, -9472($fp)
	lw $t0, -9472($fp)
	lw $t1, 0($t0)
	sw $t1, -9476($fp)
	addi $sp, $sp, -4
	lw $t0, -9456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9476($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9480($fp)
	addi $sp, $sp, 12
	lw $t1, -9480($fp)
	li $t2, 0
	bne $t1, $t2, label760
	j label759
label759:
	li $t0, 1
	sw $t0, -9428($fp)
label760:
	li $t0, 14219
	sw $t0, -9484($fp)
	li $t0, 0
	sw $t0, -9488($fp)
	lw $t0, 12($fp)
	sw $t0, -9492($fp)
	lw $t1, -9492($fp)
	li $t2, 0
	bne $t1, $t2, label762
	j label761
label761:
	li $t0, 1
	sw $t0, -9488($fp)
label762:
	lw $t0, -9484($fp)
	lw $t1, -9488($fp)
	mul $t0, $t0, $t1
	sw $t0, -9496($fp)
	lw $t1, -9428($fp)
	lw $t2, -9496($fp)
	bge $t1, $t2, label757
	j label758
label757:
	li $t0, 1
	sw $t0, -9424($fp)
label758:
	lw $ra, -4($fp)
	lw $v0, -9424($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2116
	li $t0, 56566
	sw $t0, -72($fp)
	addi $t0, $fp, -32
	sw $t0, -76($fp)
	li $t0, 0
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -84($fp)
	lw $t0, -76($fp)
	lw $t1, -84($fp)
	add $t0, $t0, $t1
	sw $t0, -88($fp)
	lw $t0, -72($fp)
	lw $t1, -88($fp)
	sw $t0, 0($t1)
	lw $t0, -88($fp)
	lw $t1, 0($t0)
	sw $t1, -92($fp)
	li $t0, 55250
	sw $t0, -96($fp)
	addi $t0, $fp, -32
	sw $t0, -100($fp)
	li $t0, 1
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -108($fp)
	lw $t0, -100($fp)
	lw $t1, -108($fp)
	add $t0, $t0, $t1
	sw $t0, -112($fp)
	lw $t0, -96($fp)
	lw $t1, -112($fp)
	sw $t0, 0($t1)
	lw $t0, -112($fp)
	lw $t1, 0($t0)
	sw $t1, -116($fp)
	li $t0, 7175
	sw $t0, -120($fp)
	addi $t0, $fp, -32
	sw $t0, -124($fp)
	li $t0, 2
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
	li $t0, 26264
	sw $t0, -144($fp)
	addi $t0, $fp, -32
	sw $t0, -148($fp)
	li $t0, 3
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
	li $t0, 10147
	sw $t0, -168($fp)
	addi $t0, $fp, -32
	sw $t0, -172($fp)
	li $t0, 4
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
	li $t0, 15731
	sw $t0, -192($fp)
	addi $t0, $fp, -32
	sw $t0, -196($fp)
	li $t0, 5
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
	li $t0, 6212
	sw $t0, -216($fp)
	addi $t0, $fp, -32
	sw $t0, -220($fp)
	li $t0, 6
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
	li $t0, 20031
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	li $t0, 35988
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	li $t0, 65427
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	li $t0, 41240
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	li $t0, 3632
	sw $t0, -288($fp)
	addi $t0, $fp, -68
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
	li $t0, 16811
	sw $t0, -312($fp)
	addi $t0, $fp, -68
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
	li $t0, 7344
	sw $t0, -336($fp)
	addi $t0, $fp, -68
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
	li $t0, 40924
	sw $t0, -360($fp)
	addi $t0, $fp, -68
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
	li $t0, 64472
	sw $t0, -384($fp)
	addi $t0, $fp, -68
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
	li $t0, 63562
	sw $t0, -408($fp)
	addi $t0, $fp, -68
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
	li $t0, 51528
	sw $t0, -432($fp)
	addi $t0, $fp, -68
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
	li $t0, 60508
	sw $t0, -456($fp)
	addi $t0, $fp, -68
	sw $t0, -460($fp)
	li $t0, 7
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
	li $t0, 45740
	sw $t0, -480($fp)
	addi $t0, $fp, -68
	sw $t0, -484($fp)
	li $t0, 8
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
	li $t0, 50907
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	addi $t0, $fp, -32
	sw $t0, -516($fp)
	li $t0, 0
	sw $t0, -520($fp)
	li $t0, 4
	lw $t1, -520($fp)
	mul $t0, $t0, $t1
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	lw $t1, -516($fp)
	add $t0, $t0, $t1
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	lw $t1, 0($t0)
	sw $t1, -532($fp)
	lw $t0, -532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -536($fp)
	li $t0, 1
	sw $t0, -540($fp)
	li $t0, 4
	lw $t1, -540($fp)
	mul $t0, $t0, $t1
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	lw $t1, -536($fp)
	add $t0, $t0, $t1
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	lw $t1, 0($t0)
	sw $t1, -552($fp)
	lw $t0, -552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -556($fp)
	li $t0, 2
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
	lw $t0, -572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -576($fp)
	li $t0, 3
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
	lw $t0, -592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -596($fp)
	li $t0, 4
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
	lw $t0, -612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -616($fp)
	li $t0, 5
	sw $t0, -620($fp)
	li $t0, 4
	lw $t1, -620($fp)
	mul $t0, $t0, $t1
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	lw $t1, -616($fp)
	add $t0, $t0, $t1
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	lw $t1, 0($t0)
	sw $t1, -632($fp)
	lw $t0, -632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -636($fp)
	li $t0, 6
	sw $t0, -640($fp)
	li $t0, 4
	lw $t1, -640($fp)
	mul $t0, $t0, $t1
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	lw $t1, -636($fp)
	add $t0, $t0, $t1
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	lw $t1, 0($t0)
	sw $t1, -652($fp)
	lw $t0, -652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -244($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -256($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
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
	addi $t0, $fp, -68
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
	addi $t0, $fp, -68
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
	addi $t0, $fp, -68
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
	addi $t0, $fp, -68
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
	addi $t0, $fp, -68
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
	addi $t0, $fp, -68
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
	addi $t0, $fp, -68
	sw $t0, -812($fp)
	li $t0, 7
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
	addi $t0, $fp, -68
	sw $t0, -832($fp)
	li $t0, 8
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
	lw $t0, -508($fp)
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	sw $t0, -856($fp)
	lw $t0, -268($fp)
	sw $t0, -860($fp)
	lw $t0, -856($fp)
	lw $t1, -860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -864($fp)
	lw $t0, -508($fp)
	sw $t0, -868($fp)
	lw $t0, -864($fp)
	lw $t1, -868($fp)
	sub $t0, $t0, $t1
	sw $t0, -872($fp)
	lw $t0, -268($fp)
	sw $t0, -876($fp)
	li $t0, 17748
	sw $t0, -880($fp)
	lw $t0, -876($fp)
	lw $t1, -880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -884($fp)
	li $t0, 0
	sw $t0, -888($fp)
	li $t0, 13066
	sw $t0, -892($fp)
	lw $t1, -892($fp)
	li $t2, 0
	bne $t1, $t2, label764
	j label763
label763:
	li $t0, 1
	sw $t0, -888($fp)
label764:
	li $t0, 10739
	sw $t0, -896($fp)
	lw $t0, -888($fp)
	lw $t1, -896($fp)
	sub $t0, $t0, $t1
	sw $t0, -900($fp)
	addi $sp, $sp, -4
	lw $t0, -884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -900($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -904($fp)
	addi $sp, $sp, 12
	li $t0, 21873
	sw $t0, -908($fp)
	lw $t0, -904($fp)
	lw $t1, -908($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -912($fp)
	lw $t0, -268($fp)
	sw $t0, -916($fp)
	addi $sp, $sp, -4
	lw $t0, -872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -916($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -920($fp)
	addi $sp, $sp, 16
	lw $t0, -256($fp)
	sw $t0, -924($fp)
	li $t0, 21701
	sw $t0, -928($fp)
	lw $t0, -924($fp)
	lw $t1, -928($fp)
	mul $t0, $t0, $t1
	sw $t0, -932($fp)
	li $t0, 8481
	sw $t0, -936($fp)
	li $t0, 0
	lw $t1, -936($fp)
	sub $t0, $t0, $t1
	sw $t0, -940($fp)
	lw $t0, -932($fp)
	lw $t1, -940($fp)
	mul $t0, $t0, $t1
	sw $t0, -944($fp)
	lw $t0, -920($fp)
	lw $t1, -944($fp)
	sub $t0, $t0, $t1
	sw $t0, -948($fp)
	lw $ra, -4($fp)
	lw $v0, -948($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label765:
	li $t0, 0
	sw $t0, -952($fp)
	li $t0, 54633
	sw $t0, -956($fp)
	lw $t1, -956($fp)
	li $t2, 0
	bne $t1, $t2, label769
	j label768
label768:
	li $t0, 1
	sw $t0, -952($fp)
label769:
	lw $t0, -508($fp)
	sw $t0, -960($fp)
	li $t0, 0
	lw $t1, -960($fp)
	sub $t0, $t0, $t1
	sw $t0, -964($fp)
	lw $t0, -952($fp)
	lw $t1, -964($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -968($fp)
	li $t0, 0
	lw $t1, -968($fp)
	sub $t0, $t0, $t1
	sw $t0, -972($fp)
	li $t0, 0
	lw $t1, -972($fp)
	sub $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $t1, -976($fp)
	li $t2, 0
	bne $t1, $t2, label766
	j label767
label766:
	li $t0, 0
	sw $t0, -980($fp)
	li $t0, 0
	sw $t0, -984($fp)
	addi $t0, $fp, -68
	sw $t0, -988($fp)
	li $t0, 3
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
	bne $t1, $t2, label773
	j label772
label772:
	li $t0, 1
	sw $t0, -984($fp)
label773:
	li $t0, 0
	sw $t0, -1008($fp)
	li $t0, 41210
	sw $t0, -1012($fp)
	lw $t1, -1012($fp)
	li $t2, 0
	bne $t1, $t2, label776
	j label775
label776:
	lw $t0, -268($fp)
	sw $t0, -1016($fp)
	lw $t1, -1016($fp)
	li $t2, 0
	bne $t1, $t2, label774
	j label775
label774:
	li $t0, 1
	sw $t0, -1008($fp)
label775:
	li $t0, 0
	sw $t0, -1020($fp)
	li $t0, 3316
	sw $t0, -1024($fp)
	lw $t1, -1024($fp)
	li $t2, 0
	bne $t1, $t2, label777
	j label779
label779:
	lw $t0, -268($fp)
	sw $t0, -1028($fp)
	lw $t1, -1028($fp)
	li $t2, 0
	bne $t1, $t2, label777
	j label778
label777:
	li $t0, 1
	sw $t0, -1020($fp)
label778:
	lw $t0, -244($fp)
	sw $t0, -1032($fp)
	addi $sp, $sp, -4
	lw $t0, -1008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1032($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1036($fp)
	addi $sp, $sp, 16
	li $t0, 18379
	sw $t0, -1040($fp)
	lw $t0, -1036($fp)
	lw $t1, -1040($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1044($fp)
	addi $t0, $fp, -32
	sw $t0, -1048($fp)
	lw $t0, -508($fp)
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
	lw $t0, -1044($fp)
	lw $t1, -1064($fp)
	add $t0, $t0, $t1
	sw $t0, -1068($fp)
	lw $t1, -984($fp)
	lw $t2, -1068($fp)
	bgt $t1, $t2, label770
	j label771
label770:
	li $t0, 1
	sw $t0, -980($fp)
label771:
	j label765
label767:
	li $t0, 10491
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -1096($fp)
	li $t0, 1938
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -1108($fp)
	li $t0, 28526
	sw $t0, -1112($fp)
	addi $t0, $fp, -1084
	sw $t0, -1116($fp)
	li $t0, 0
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1124($fp)
	lw $t0, -1116($fp)
	lw $t1, -1124($fp)
	add $t0, $t0, $t1
	sw $t0, -1128($fp)
	lw $t0, -1112($fp)
	lw $t1, -1128($fp)
	sw $t0, 0($t1)
	lw $t0, -1128($fp)
	lw $t1, 0($t0)
	sw $t1, -1132($fp)
	li $t0, 26222
	sw $t0, -1136($fp)
	addi $t0, $fp, -1084
	sw $t0, -1140($fp)
	li $t0, 1
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1148($fp)
	lw $t0, -1140($fp)
	lw $t1, -1148($fp)
	add $t0, $t0, $t1
	sw $t0, -1152($fp)
	lw $t0, -1136($fp)
	lw $t1, -1152($fp)
	sw $t0, 0($t1)
	lw $t0, -1152($fp)
	lw $t1, 0($t0)
	sw $t1, -1156($fp)
	li $t0, 8151
	sw $t0, -1160($fp)
	addi $t0, $fp, -1084
	sw $t0, -1164($fp)
	li $t0, 2
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1172($fp)
	lw $t0, -1164($fp)
	lw $t1, -1172($fp)
	add $t0, $t0, $t1
	sw $t0, -1176($fp)
	lw $t0, -1160($fp)
	lw $t1, -1176($fp)
	sw $t0, 0($t1)
	lw $t0, -1176($fp)
	lw $t1, 0($t0)
	sw $t1, -1180($fp)
	li $t0, 48558
	sw $t0, -1184($fp)
	addi $t0, $fp, -1084
	sw $t0, -1188($fp)
	li $t0, 3
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1196($fp)
	lw $t0, -1188($fp)
	lw $t1, -1196($fp)
	add $t0, $t0, $t1
	sw $t0, -1200($fp)
	lw $t0, -1184($fp)
	lw $t1, -1200($fp)
	sw $t0, 0($t1)
	lw $t0, -1200($fp)
	lw $t1, 0($t0)
	sw $t1, -1204($fp)
	li $t0, 62210
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, -1216($fp)
	li $t0, 8042
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	sw $t0, -1228($fp)
	li $t0, 24262
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	sw $t0, -1240($fp)
	li $t0, 307
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -1252($fp)
	li $t0, 24854
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -1264($fp)
	li $t0, 31606
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	li $t0, 41231
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	li $t0, 0
	sw $t0, -1292($fp)
	li $t0, 23790
	sw $t0, -1296($fp)
	li $t0, 0
	sw $t0, -1300($fp)
	addi $t0, $fp, -1084
	sw $t0, -1304($fp)
	lw $t0, -1248($fp)
	sw $t0, -1308($fp)
	li $t0, 4
	lw $t1, -1308($fp)
	mul $t0, $t0, $t1
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	lw $t1, -1304($fp)
	add $t0, $t0, $t1
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	lw $t1, 0($t0)
	sw $t1, -1320($fp)
	lw $t1, -1320($fp)
	li $t2, 0
	bne $t1, $t2, label787
	j label786
label787:
	lw $t0, -508($fp)
	sw $t0, -1324($fp)
	lw $t1, -1324($fp)
	li $t2, 0
	bne $t1, $t2, label785
	j label786
label785:
	li $t0, 1
	sw $t0, -1300($fp)
label786:
	addi $sp, $sp, -4
	lw $t0, -1300($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1328($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -1328($fp)
	sub $t0, $t0, $t1
	sw $t0, -1332($fp)
	lw $t1, -1296($fp)
	lw $t2, -1332($fp)
	bge $t1, $t2, label783
	j label784
label783:
	li $t0, 1
	sw $t0, -1292($fp)
label784:
	li $t0, 29633
	sw $t0, -1336($fp)
	li $t0, 27223
	sw $t0, -1340($fp)
	lw $t0, -1336($fp)
	lw $t1, -1340($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1344($fp)
	li $t0, 18763
	sw $t0, -1348($fp)
	lw $t0, -1344($fp)
	lw $t1, -1348($fp)
	mul $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t0, -1272($fp)
	sw $t0, -1356($fp)
	lw $t0, -1272($fp)
	sw $t0, -1360($fp)
	lw $t0, -1356($fp)
	lw $t1, -1360($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1364($fp)
	lw $t0, -1352($fp)
	lw $t1, -1364($fp)
	add $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t1, -1292($fp)
	lw $t2, -1368($fp)
	bne $t1, $t2, label780
	j label781
label780:
label788:
	lw $t0, -244($fp)
	sw $t0, -1372($fp)
	lw $t0, -1212($fp)
	sw $t0, -1376($fp)
	li $t0, 0
	sw $t0, -1380($fp)
	lw $t0, -1284($fp)
	sw $t0, -1384($fp)
	lw $t1, -1384($fp)
	li $t2, 0
	bne $t1, $t2, label795
	j label794
label795:
	lw $t0, -1104($fp)
	sw $t0, -1388($fp)
	lw $t1, -1388($fp)
	li $t2, 0
	bne $t1, $t2, label793
	j label794
label793:
	li $t0, 1
	sw $t0, -1380($fp)
label794:
	li $t0, 0
	sw $t0, -1392($fp)
	addi $t0, $fp, -1084
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
	lw $t1, -1412($fp)
	li $t2, 0
	bne $t1, $t2, label796
	j label798
label798:
	lw $t0, -280($fp)
	sw $t0, -1416($fp)
	lw $t1, -1416($fp)
	li $t2, 0
	bne $t1, $t2, label796
	j label797
label796:
	li $t0, 1
	sw $t0, -1392($fp)
label797:
	li $t0, 31829
	sw $t0, -1420($fp)
	lw $t0, -508($fp)
	sw $t0, -1424($fp)
	lw $t0, -1420($fp)
	lw $t1, -1424($fp)
	add $t0, $t0, $t1
	sw $t0, -1428($fp)
	addi $sp, $sp, -4
	lw $t0, -1380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1428($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1432($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -1436($fp)
	li $t0, 9837
	sw $t0, -1440($fp)
	lw $t0, -1224($fp)
	sw $t0, -1444($fp)
	lw $t0, -1440($fp)
	lw $t1, -1444($fp)
	mul $t0, $t0, $t1
	sw $t0, -1448($fp)
	lw $t1, -1448($fp)
	li $t2, 0
	bne $t1, $t2, label799
	j label801
label801:
	li $t0, 12594
	sw $t0, -1452($fp)
	lw $t1, -1452($fp)
	li $t2, 0
	bne $t1, $t2, label799
	j label800
label799:
	li $t0, 1
	sw $t0, -1436($fp)
label800:
	addi $sp, $sp, -4
	lw $t0, -1376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1436($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1456($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -1372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1456($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1460($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -1460($fp)
	sub $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t1, -1464($fp)
	li $t2, 0
	bne $t1, $t2, label792
	j label790
label792:
	li $t0, 53703
	sw $t0, -1468($fp)
	lw $t0, -1236($fp)
	sw $t0, -1472($fp)
	lw $t0, -1468($fp)
	lw $t1, -1472($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1476($fp)
	li $t0, 42278
	sw $t0, -1480($fp)
	lw $t1, -1476($fp)
	lw $t2, -1480($fp)
	bne $t1, $t2, label791
	j label790
label791:
	li $t0, 0
	sw $t0, -1484($fp)
	lw $t0, 4($fp)
	sw $t0, -1488($fp)
	lw $t0, -1260($fp)
	sw $t0, -1492($fp)
	lw $t0, -1488($fp)
	lw $t1, -1492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1496($fp)
	lw $t1, -1496($fp)
	li $t2, 0
	bne $t1, $t2, label802
	j label804
label804:
	lw $t0, -280($fp)
	sw $t0, -1500($fp)
	lw $t1, -1500($fp)
	li $t2, 0
	bne $t1, $t2, label802
	j label803
label802:
	li $t0, 1
	sw $t0, -1484($fp)
label803:
	addi $sp, $sp, -4
	lw $t0, -1484($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1504($fp)
	addi $sp, $sp, 8
	lw $t1, -1504($fp)
	li $t2, 0
	bne $t1, $t2, label790
	j label789
label789:
	lw $t0, -280($fp)
	sw $t0, -1508($fp)
	lw $t1, -1508($fp)
	li $t2, 0
	bne $t1, $t2, label805
	j label806
label805:
	lw $t0, -1092($fp)
	sw $t0, -1512($fp)
	li $t0, 0
	sw $t0, -1516($fp)
	li $t0, 38823
	sw $t0, -1520($fp)
	lw $t1, -1520($fp)
	li $t2, 0
	bne $t1, $t2, label809
	j label808
label808:
	li $t0, 1
	sw $t0, -1516($fp)
label809:
	li $t0, 0
	sw $t0, -1524($fp)
	li $t0, 42800
	sw $t0, -1528($fp)
	lw $t1, -1528($fp)
	li $t2, 0
	bne $t1, $t2, label811
	j label810
label810:
	li $t0, 1
	sw $t0, -1524($fp)
label811:
	lw $t0, -1516($fp)
	lw $t1, -1524($fp)
	mul $t0, $t0, $t1
	sw $t0, -1532($fp)
	lw $t0, -1512($fp)
	lw $t1, -1532($fp)
	sub $t0, $t0, $t1
	sw $t0, -1536($fp)
	j label807
label806:
	addi $t0, $fp, -32
	sw $t0, -1540($fp)
	li $t0, 0
	sw $t0, -1544($fp)
	li $t0, 26922
	sw $t0, -1548($fp)
	lw $t0, -280($fp)
	sw $t0, -1552($fp)
	lw $t0, -1548($fp)
	lw $t1, -1552($fp)
	add $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $t0, -508($fp)
	sw $t0, -1560($fp)
	lw $t1, -1556($fp)
	lw $t2, -1560($fp)
	beq $t1, $t2, label815
	j label816
label815:
	li $t0, 1
	sw $t0, -1544($fp)
label816:
	li $t0, 4
	lw $t1, -1544($fp)
	mul $t0, $t0, $t1
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	lw $t1, -1540($fp)
	add $t0, $t0, $t1
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	lw $t1, 0($t0)
	sw $t1, -1572($fp)
	li $t0, 1952
	sw $t0, -1576($fp)
	li $t0, 0
	lw $t1, -1576($fp)
	sub $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $t0, -1572($fp)
	lw $t1, -1580($fp)
	add $t0, $t0, $t1
	sw $t0, -1584($fp)
	lw $t1, -1584($fp)
	li $t2, 0
	bne $t1, $t2, label812
	j label813
label812:
label817:
	lw $t0, -1104($fp)
	sw $t0, -1588($fp)
	lw $t1, -1588($fp)
	li $t2, 0
	bne $t1, $t2, label820
	j label819
label820:
	addi $t0, $fp, -32
	sw $t0, -1592($fp)
	lw $t0, -1224($fp)
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
	lw $t0, -280($fp)
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -1616($fp)
	addi $sp, $sp, -4
	lw $t0, -1608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1616($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1620($fp)
	addi $sp, $sp, 12
	lw $t0, -1272($fp)
	sw $t0, -1624($fp)
	lw $t0, -1620($fp)
	lw $t1, -1624($fp)
	sub $t0, $t0, $t1
	sw $t0, -1628($fp)
	lw $t0, -508($fp)
	sw $t0, -1632($fp)
	li $t0, 0
	lw $t1, -1632($fp)
	sub $t0, $t0, $t1
	sw $t0, -1636($fp)
	lw $t0, -1628($fp)
	lw $t1, -1636($fp)
	sub $t0, $t0, $t1
	sw $t0, -1640($fp)
	lw $t1, -1640($fp)
	li $t2, 0
	bne $t1, $t2, label818
	j label819
label818:
	li $t0, 0
	sw $t0, -1644($fp)
	li $t0, 46117
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -1652($fp)
	addi $sp, $sp, -4
	lw $t0, -1652($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1656($fp)
	addi $sp, $sp, 8
	lw $t1, -1656($fp)
	li $t2, 0
	bne $t1, $t2, label822
	j label821
label821:
	li $t0, 1
	sw $t0, -1644($fp)
label822:
	j label817
label819:
	j label814
label813:
	addi $t0, $fp, -68
	sw $t0, -1660($fp)
	li $t0, 0
	sw $t0, -1664($fp)
	lw $t0, -1260($fp)
	sw $t0, -1668($fp)
	li $t0, 2597
	sw $t0, -1672($fp)
	lw $t0, -1668($fp)
	lw $t1, -1672($fp)
	add $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t0, -508($fp)
	sw $t0, -1680($fp)
	lw $t1, -1676($fp)
	lw $t2, -1680($fp)
	bge $t1, $t2, label825
	j label824
label825:
	li $t0, 20331
	sw $t0, -1684($fp)
	li $t0, 0
	lw $t1, -1684($fp)
	sub $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t1, -1688($fp)
	li $t2, 0
	bne $t1, $t2, label823
	j label824
label823:
	li $t0, 1
	sw $t0, -1664($fp)
label824:
	li $t0, 4
	lw $t1, -1664($fp)
	mul $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	lw $t1, -1660($fp)
	add $t0, $t0, $t1
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	lw $t1, 0($t0)
	sw $t1, -1700($fp)
label814:
label807:
	j label788
label790:
	j label782
label781:
	li $t0, 0
	sw $t0, -1704($fp)
	lw $t0, -1104($fp)
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	sw $t0, -1712($fp)
	addi $sp, $sp, -4
	lw $t0, -1712($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1716($fp)
	addi $sp, $sp, 8
	lw $t1, -1716($fp)
	li $t2, 0
	bne $t1, $t2, label827
	j label826
label826:
	li $t0, 1
	sw $t0, -1704($fp)
label827:
	li $t0, 0
	sw $t0, -1720($fp)
	lw $t0, -256($fp)
	sw $t0, -1724($fp)
	li $t0, 0
	lw $t1, -1724($fp)
	sub $t0, $t0, $t1
	sw $t0, -1728($fp)
	lw $t1, -1728($fp)
	li $t2, 0
	bne $t1, $t2, label828
	j label830
label830:
	lw $t0, -1092($fp)
	sw $t0, -1732($fp)
	lw $t1, -1732($fp)
	li $t2, 0
	bne $t1, $t2, label828
	j label829
label828:
	li $t0, 1
	sw $t0, -1720($fp)
label829:
	li $t0, 48857
	sw $t0, -1736($fp)
	li $t0, 56608
	sw $t0, -1740($fp)
	li $t0, 4535
	sw $t0, -1744($fp)
	lw $t0, -1740($fp)
	lw $t1, -1744($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1748($fp)
	li $t0, 0
	lw $t1, -1748($fp)
	sub $t0, $t0, $t1
	sw $t0, -1752($fp)
	addi $sp, $sp, -4
	lw $t0, -1720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1752($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1756($fp)
	addi $sp, $sp, 16
	lw $t0, -1704($fp)
	lw $t1, -1756($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1760($fp)
label782:
	li $t0, 0
	sw $t0, -1764($fp)
	li $t0, 17295
	sw $t0, -1768($fp)
	lw $t1, -1768($fp)
	li $t2, 0
	bne $t1, $t2, label832
	j label831
label831:
	li $t0, 1
	sw $t0, -1764($fp)
label832:
	li $t0, 0
	lw $t1, -1764($fp)
	sub $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $ra, -4($fp)
	lw $v0, -1772($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -32
	sw $t0, -1776($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -1796($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -1816($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -1836($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -1856($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -1876($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -1896($fp)
	li $t0, 6
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
	lw $t0, -244($fp)
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -256($fp)
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1932($fp)
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	li $t0, 3
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
	li $t0, 4
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
	li $t0, 5
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
	li $t0, 6
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
	li $t0, 7
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
	li $t0, 8
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
	lw $t0, -508($fp)
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 12686
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -2120($fp)
	lw $ra, -4($fp)
	lw $v0, -2120($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -24
	li $t0, 0
	sw $t0, -8($fp)
	li $t0, 0
	sw $t0, -12($fp)
	lw $t0, 4($fp)
	sw $t0, -16($fp)
	li $t0, 0
	lw $t1, -16($fp)
	sub $t0, $t0, $t1
	sw $t0, -20($fp)
	lw $t1, -20($fp)
	li $t2, 0
	bne $t1, $t2, label836
	j label835
label835:
	li $t0, 1
	sw $t0, -12($fp)
label836:
	li $t0, 0
	lw $t1, -12($fp)
	sub $t0, $t0, $t1
	sw $t0, -24($fp)
	li $t0, 0
	lw $t1, -24($fp)
	sub $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t1, -28($fp)
	li $t2, 0
	bne $t1, $t2, label834
	j label833
label833:
	li $t0, 1
	sw $t0, -8($fp)
label834:
	lw $ra, -4($fp)
	lw $v0, -8($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2244
	li $t0, 31879
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	li $t0, 13969
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	li $t0, 20729
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	li $t0, 56142
	sw $t0, -104($fp)
	addi $t0, $fp, -8
	sw $t0, -108($fp)
	li $t0, 0
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
	li $t0, 14276
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	li $t0, 45583
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	li $t0, 22212
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	li $t0, 55507
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	li $t0, 3837
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 51845
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	li $t0, 17194
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	li $t0, 22600
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	li $t0, 61683
	sw $t0, -224($fp)
	addi $t0, $fp, -44
	sw $t0, -228($fp)
	li $t0, 0
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
	li $t0, 29788
	sw $t0, -248($fp)
	addi $t0, $fp, -44
	sw $t0, -252($fp)
	li $t0, 1
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
	li $t0, 54430
	sw $t0, -272($fp)
	addi $t0, $fp, -44
	sw $t0, -276($fp)
	li $t0, 2
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
	li $t0, 16723
	sw $t0, -296($fp)
	addi $t0, $fp, -44
	sw $t0, -300($fp)
	li $t0, 3
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
	li $t0, 60131
	sw $t0, -320($fp)
	addi $t0, $fp, -44
	sw $t0, -324($fp)
	li $t0, 4
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
	li $t0, 42597
	sw $t0, -344($fp)
	addi $t0, $fp, -44
	sw $t0, -348($fp)
	li $t0, 5
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -356($fp)
	lw $t0, -348($fp)
	lw $t1, -356($fp)
	add $t0, $t0, $t1
	sw $t0, -360($fp)
	lw $t0, -344($fp)
	lw $t1, -360($fp)
	sw $t0, 0($t1)
	lw $t0, -360($fp)
	lw $t1, 0($t0)
	sw $t1, -364($fp)
	li $t0, 59001
	sw $t0, -368($fp)
	addi $t0, $fp, -44
	sw $t0, -372($fp)
	li $t0, 6
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
	li $t0, 33418
	sw $t0, -392($fp)
	addi $t0, $fp, -44
	sw $t0, -396($fp)
	li $t0, 7
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
	li $t0, 19861
	sw $t0, -416($fp)
	addi $t0, $fp, -44
	sw $t0, -420($fp)
	li $t0, 8
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
	li $t0, 20388
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	li $t0, 35370
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	li $t0, 442
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	li $t0, 22985
	sw $t0, -476($fp)
	addi $t0, $fp, -64
	sw $t0, -480($fp)
	li $t0, 0
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
	li $t0, 55701
	sw $t0, -500($fp)
	addi $t0, $fp, -64
	sw $t0, -504($fp)
	li $t0, 1
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
	li $t0, 57051
	sw $t0, -524($fp)
	addi $t0, $fp, -64
	sw $t0, -528($fp)
	li $t0, 2
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
	li $t0, 27520
	sw $t0, -548($fp)
	addi $t0, $fp, -64
	sw $t0, -552($fp)
	li $t0, 3
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
	li $t0, 39023
	sw $t0, -572($fp)
	addi $t0, $fp, -64
	sw $t0, -576($fp)
	li $t0, 4
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
	li $t0, 8810
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	li $t0, 40207
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	li $t0, 5366
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	li $t0, 22779
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	li $t0, 60936
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
label837:
	li $t0, 0
	sw $t0, -656($fp)
	li $t0, 0
	sw $t0, -660($fp)
	li $t0, 61508
	sw $t0, -664($fp)
	lw $t0, -468($fp)
	sw $t0, -668($fp)
	lw $t0, -664($fp)
	lw $t1, -668($fp)
	add $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $t0, -132($fp)
	sw $t0, -676($fp)
	lw $t1, -672($fp)
	lw $t2, -676($fp)
	bgt $t1, $t2, label842
	j label843
label842:
	li $t0, 1
	sw $t0, -660($fp)
label843:
	addi $sp, $sp, -4
	lw $t0, -660($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -680($fp)
	addi $sp, $sp, 8
	lw $t1, -680($fp)
	li $t2, 0
	bne $t1, $t2, label841
	j label840
label840:
	li $t0, 1
	sw $t0, -656($fp)
label841:
	li $t0, 37056
	sw $t0, -684($fp)
	lw $t0, -656($fp)
	lw $t1, -684($fp)
	mul $t0, $t0, $t1
	sw $t0, -688($fp)
	lw $t0, -204($fp)
	sw $t0, -692($fp)
	lw $t0, -688($fp)
	lw $t1, -692($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -696($fp)
	lw $t0, -84($fp)
	sw $t0, -700($fp)
	lw $t0, -696($fp)
	lw $t1, -700($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -704($fp)
	lw $t1, -704($fp)
	li $t2, 0
	bne $t1, $t2, label838
	j label839
label838:
label844:
	addi $t0, $fp, -64
	sw $t0, -708($fp)
	li $t0, 0
	sw $t0, -712($fp)
	li $t0, 40983
	sw $t0, -716($fp)
	li $t0, 18185
	sw $t0, -720($fp)
	lw $t1, -716($fp)
	lw $t2, -720($fp)
	beq $t1, $t2, label849
	j label848
label849:
	li $t0, 27027
	sw $t0, -724($fp)
	lw $t1, -724($fp)
	li $t2, 0
	bne $t1, $t2, label847
	j label848
label847:
	li $t0, 1
	sw $t0, -712($fp)
label848:
	addi $sp, $sp, -4
	lw $t0, -712($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -728($fp)
	addi $sp, $sp, 8
	li $t0, 44820
	sw $t0, -732($fp)
	lw $t0, -728($fp)
	lw $t1, -732($fp)
	mul $t0, $t0, $t1
	sw $t0, -736($fp)
	li $t0, 4
	lw $t1, -736($fp)
	mul $t0, $t0, $t1
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	lw $t1, -708($fp)
	add $t0, $t0, $t1
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	lw $t1, 0($t0)
	sw $t1, -748($fp)
	li $t0, 4494
	sw $t0, -752($fp)
	li $t0, 44222
	sw $t0, -756($fp)
	lw $t0, -752($fp)
	lw $t1, -756($fp)
	add $t0, $t0, $t1
	sw $t0, -760($fp)
	li $t0, 1885
	sw $t0, -764($fp)
	lw $t0, -760($fp)
	lw $t1, -764($fp)
	add $t0, $t0, $t1
	sw $t0, -768($fp)
	addi $sp, $sp, -4
	lw $t0, -768($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -772($fp)
	addi $sp, $sp, 8
	li $t0, 641
	sw $t0, -776($fp)
	lw $t0, -772($fp)
	lw $t1, -776($fp)
	mul $t0, $t0, $t1
	sw $t0, -780($fp)
	li $t0, 0
	lw $t1, -780($fp)
	sub $t0, $t0, $t1
	sw $t0, -784($fp)
	lw $t1, -748($fp)
	lw $t2, -784($fp)
	bge $t1, $t2, label845
	j label846
label845:
	lw $t0, -132($fp)
	sw $t0, -788($fp)
	li $t0, 0
	sw $t0, -792($fp)
	lw $t0, -444($fp)
	sw $t0, -796($fp)
	li $t0, 0
	lw $t1, -796($fp)
	sub $t0, $t0, $t1
	sw $t0, -800($fp)
	addi $t0, $fp, -8
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
	lw $t1, -800($fp)
	lw $t2, -820($fp)
	ble $t1, $t2, label853
	j label854
label853:
	li $t0, 1
	sw $t0, -792($fp)
label854:
	lw $t1, -788($fp)
	lw $t2, -792($fp)
	bne $t1, $t2, label850
	j label851
label850:
	lw $t0, -216($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -828($fp)
	li $t0, 53237
	sw $t0, -832($fp)
	li $t0, 0
	sw $t0, -836($fp)
	li $t0, 36488
	sw $t0, -840($fp)
	lw $t1, -840($fp)
	li $t2, 0
	bne $t1, $t2, label856
	j label855
label855:
	li $t0, 1
	sw $t0, -836($fp)
label856:
	li $t0, 0
	sw $t0, -844($fp)
	li $t0, 33376
	sw $t0, -848($fp)
	lw $t0, -144($fp)
	sw $t0, -852($fp)
	lw $t0, -848($fp)
	lw $t1, -852($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -856($fp)
	lw $t1, -856($fp)
	li $t2, 0
	bne $t1, $t2, label857
	j label859
label859:
	li $t0, 10830
	sw $t0, -860($fp)
	lw $t1, -860($fp)
	li $t2, 0
	bne $t1, $t2, label857
	j label858
label857:
	li $t0, 1
	sw $t0, -844($fp)
label858:
	li $t0, 17365
	sw $t0, -864($fp)
	li $t0, 3069
	sw $t0, -868($fp)
	lw $t0, -864($fp)
	lw $t1, -868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -872($fp)
	li $t0, 0
	lw $t1, -872($fp)
	sub $t0, $t0, $t1
	sw $t0, -876($fp)
	addi $sp, $sp, -4
	lw $t0, -876($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -880($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -880($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -884($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -8
	sw $t0, -888($fp)
	lw $t0, -96($fp)
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
	lw $t0, -884($fp)
	lw $t1, -904($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -908($fp)
	li $t0, 0
	sw $t0, -912($fp)
	li $t0, 16188
	sw $t0, -916($fp)
	li $t0, 35511
	sw $t0, -920($fp)
	lw $t0, -916($fp)
	lw $t1, -920($fp)
	sub $t0, $t0, $t1
	sw $t0, -924($fp)
	lw $t1, -924($fp)
	li $t2, 0
	bne $t1, $t2, label860
	j label862
label862:
	lw $t0, -636($fp)
	sw $t0, -928($fp)
	lw $t1, -928($fp)
	li $t2, 0
	bne $t1, $t2, label860
	j label861
label860:
	li $t0, 1
	sw $t0, -912($fp)
label861:
	li $t0, 0
	sw $t0, -932($fp)
	li $t0, 0
	sw $t0, -936($fp)
	li $t0, 62024
	sw $t0, -940($fp)
	li $t0, 45195
	sw $t0, -944($fp)
	lw $t1, -940($fp)
	lw $t2, -944($fp)
	ble $t1, $t2, label865
	j label866
label865:
	li $t0, 1
	sw $t0, -936($fp)
label866:
	lw $t0, -180($fp)
	sw $t0, -948($fp)
	lw $t1, -936($fp)
	lw $t2, -948($fp)
	beq $t1, $t2, label863
	j label864
label863:
	li $t0, 1
	sw $t0, -932($fp)
label864:
	li $t0, 0
	sw $t0, -952($fp)
	li $t0, 54203
	sw $t0, -956($fp)
	lw $t0, -612($fp)
	sw $t0, -960($fp)
	lw $t1, -956($fp)
	lw $t2, -960($fp)
	ble $t1, $t2, label869
	j label868
label869:
	lw $t0, -648($fp)
	sw $t0, -964($fp)
	lw $t1, -964($fp)
	li $t2, 0
	bne $t1, $t2, label867
	j label868
label867:
	li $t0, 1
	sw $t0, -952($fp)
label868:
	li $t0, 0
	sw $t0, -968($fp)
	li $t0, 53680
	sw $t0, -972($fp)
	lw $t1, -972($fp)
	li $t2, 0
	bne $t1, $t2, label871
	j label872
label872:
	lw $t0, -468($fp)
	sw $t0, -976($fp)
	lw $t1, -976($fp)
	li $t2, 0
	bne $t1, $t2, label870
	j label871
label870:
	li $t0, 1
	sw $t0, -968($fp)
label871:
	li $t0, 0
	sw $t0, -980($fp)
	li $t0, 31218
	sw $t0, -984($fp)
	lw $t1, -984($fp)
	li $t2, 0
	bne $t1, $t2, label876
	j label874
label876:
	lw $t0, -444($fp)
	sw $t0, -988($fp)
	lw $t1, -988($fp)
	li $t2, 0
	bne $t1, $t2, label875
	j label874
label875:
	li $t0, 6322
	sw $t0, -992($fp)
	lw $t1, -992($fp)
	li $t2, 0
	bne $t1, $t2, label873
	j label874
label873:
	li $t0, 1
	sw $t0, -980($fp)
label874:
	addi $sp, $sp, -4
	lw $t0, -912($fp)
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
	addi $sp, $sp, -4
	lw $t0, -980($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -996($fp)
	addi $sp, $sp, 24
	lw $t0, -908($fp)
	lw $t1, -996($fp)
	mul $t0, $t0, $t1
	sw $t0, -1000($fp)
	lw $ra, -4($fp)
	lw $v0, -1000($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label852
label851:
	lw $t0, -636($fp)
	sw $t0, -1004($fp)
	lw $t1, -1004($fp)
	li $t2, 0
	bne $t1, $t2, label877
	j label878
label877:
	li $t0, 0
	sw $t0, -1008($fp)
	li $t0, 54005
	sw $t0, -1012($fp)
	li $t0, 56395
	sw $t0, -1016($fp)
	li $t0, 40877
	sw $t0, -1020($fp)
	lw $t0, -1016($fp)
	lw $t1, -1020($fp)
	sub $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t0, -648($fp)
	sw $t0, -1028($fp)
	lw $t0, -1024($fp)
	lw $t1, -1028($fp)
	add $t0, $t0, $t1
	sw $t0, -1032($fp)
	lw $t1, -1012($fp)
	lw $t2, -1032($fp)
	bne $t1, $t2, label882
	j label881
label882:
	li $t0, 11248
	sw $t0, -1036($fp)
	li $t0, 0
	sw $t0, -1040($fp)
	li $t0, 51795
	sw $t0, -1044($fp)
	lw $t1, -1044($fp)
	li $t2, 0
	bne $t1, $t2, label884
	j label883
label883:
	li $t0, 1
	sw $t0, -1040($fp)
label884:
	lw $t0, -1036($fp)
	lw $t1, -1040($fp)
	mul $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t1, -1048($fp)
	li $t2, 0
	bne $t1, $t2, label880
	j label881
label880:
	li $t0, 1
	sw $t0, -1008($fp)
label881:
	lw $ra, -4($fp)
	lw $v0, -1008($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label879
label878:
label885:
	li $t0, 0
	sw $t0, -1052($fp)
	li $t0, 0
	sw $t0, -1056($fp)
	li $t0, 36850
	sw $t0, -1060($fp)
	lw $t1, -1060($fp)
	li $t2, 0
	bne $t1, $t2, label891
	j label890
label890:
	li $t0, 1
	sw $t0, -1056($fp)
label891:
	li $t0, 48304
	sw $t0, -1064($fp)
	lw $t0, -1056($fp)
	lw $t1, -1064($fp)
	mul $t0, $t0, $t1
	sw $t0, -1068($fp)
	addi $sp, $sp, -4
	lw $t0, -1068($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1072($fp)
	addi $sp, $sp, 8
	lw $t1, -1072($fp)
	li $t2, 0
	bne $t1, $t2, label889
	j label888
label888:
	li $t0, 1
	sw $t0, -1052($fp)
label889:
	addi $sp, $sp, -4
	lw $t0, -1052($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1076($fp)
	addi $sp, $sp, 8
	lw $t1, -1076($fp)
	li $t2, 0
	bne $t1, $t2, label886
	j label887
label886:
	addi $t0, $fp, -44
	sw $t0, -1080($fp)
	li $t0, 0
	sw $t0, -1084($fp)
	lw $t0, -444($fp)
	sw $t0, -1088($fp)
	lw $t1, -1088($fp)
	li $t2, 0
	bne $t1, $t2, label893
	j label892
label892:
	li $t0, 1
	sw $t0, -1084($fp)
label893:
	li $t0, 4
	lw $t1, -1084($fp)
	mul $t0, $t0, $t1
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	lw $t1, -1080($fp)
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
	li $t0, 0
	sw $t0, -1104($fp)
	li $t0, 27242
	sw $t0, -1108($fp)
	lw $t0, -72($fp)
	sw $t0, -1112($fp)
	lw $t0, -1108($fp)
	lw $t1, -1112($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1116($fp)
	li $t0, 0
	lw $t1, -1116($fp)
	sub $t0, $t0, $t1
	sw $t0, -1120($fp)
	addi $sp, $sp, -4
	lw $t0, -1120($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1124($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -1124($fp)
	sub $t0, $t0, $t1
	sw $t0, -1128($fp)
	li $t0, 0
	lw $t1, -1128($fp)
	sub $t0, $t0, $t1
	sw $t0, -1132($fp)
	lw $t1, -1132($fp)
	li $t2, 0
	bne $t1, $t2, label896
	j label895
label896:
	addi $t0, $fp, -64
	sw $t0, -1136($fp)
	li $t0, 0
	sw $t0, -1140($fp)
	li $t0, 55035
	sw $t0, -1144($fp)
	lw $t1, -1144($fp)
	li $t2, 0
	bne $t1, $t2, label897
	j label899
label899:
	lw $t0, -600($fp)
	sw $t0, -1148($fp)
	lw $t1, -1148($fp)
	li $t2, 0
	bne $t1, $t2, label897
	j label898
label897:
	li $t0, 1
	sw $t0, -1140($fp)
label898:
	li $t0, 4
	lw $t1, -1140($fp)
	mul $t0, $t0, $t1
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	lw $t1, -1136($fp)
	add $t0, $t0, $t1
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	lw $t1, 0($t0)
	sw $t1, -1160($fp)
	lw $t1, -1160($fp)
	li $t2, 0
	bne $t1, $t2, label894
	j label895
label894:
	li $t0, 1
	sw $t0, -1104($fp)
label895:
	j label885
label887:
label879:
label852:
	j label844
label846:
	j label837
label839:
	li $t0, 0
	sw $t0, -1164($fp)
	li $t0, 0
	sw $t0, -1168($fp)
	lw $t0, -156($fp)
	sw $t0, -1172($fp)
	li $t0, 9796
	sw $t0, -1176($fp)
	lw $t0, -1172($fp)
	lw $t1, -1176($fp)
	mul $t0, $t0, $t1
	sw $t0, -1180($fp)
	lw $t0, -456($fp)
	sw $t0, -1184($fp)
	lw $t0, -1180($fp)
	lw $t1, -1184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1188($fp)
	lw $t0, -636($fp)
	sw $t0, -1192($fp)
	li $t0, 0
	lw $t1, -1192($fp)
	sub $t0, $t0, $t1
	sw $t0, -1196($fp)
	lw $t1, -1188($fp)
	lw $t2, -1196($fp)
	blt $t1, $t2, label905
	j label906
label905:
	li $t0, 1
	sw $t0, -1168($fp)
label906:
	lw $t0, -168($fp)
	sw $t0, -1200($fp)
	lw $t0, -96($fp)
	sw $t0, -1204($fp)
	lw $t0, -1200($fp)
	lw $t1, -1204($fp)
	mul $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t0, -636($fp)
	sw $t0, -1212($fp)
	lw $t0, -1208($fp)
	lw $t1, -1212($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1216($fp)
	lw $t1, -1168($fp)
	lw $t2, -1216($fp)
	bgt $t1, $t2, label903
	j label904
label903:
	li $t0, 1
	sw $t0, -1164($fp)
label904:
	li $t0, 6526
	sw $t0, -1220($fp)
	lw $t1, -1164($fp)
	lw $t2, -1220($fp)
	bne $t1, $t2, label900
	j label901
label900:
	addi $t0, $fp, -44
	sw $t0, -1224($fp)
	li $t0, 1
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
	lw $t0, -132($fp)
	sw $t0, -1248($fp)
	lw $t1, -1248($fp)
	li $t2, 0
	bne $t1, $t2, label908
	j label907
label907:
	li $t0, 1
	sw $t0, -1244($fp)
label908:
	lw $t0, -1240($fp)
	lw $t1, -1244($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1252($fp)
	li $t0, 62492
	sw $t0, -1256($fp)
	li $t0, 64726
	sw $t0, -1260($fp)
	lw $t0, -1256($fp)
	lw $t1, -1260($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1264($fp)
	li $t0, 12000
	sw $t0, -1268($fp)
	lw $t0, -1264($fp)
	lw $t1, -1268($fp)
	add $t0, $t0, $t1
	sw $t0, -1272($fp)
	li $t0, 0
	sw $t0, -1276($fp)
	li $t0, 0
	sw $t0, -1280($fp)
	lw $t0, -96($fp)
	sw $t0, -1284($fp)
	lw $t0, -636($fp)
	sw $t0, -1288($fp)
	lw $t1, -1284($fp)
	lw $t2, -1288($fp)
	ble $t1, $t2, label911
	j label912
label911:
	li $t0, 1
	sw $t0, -1280($fp)
label912:
	lw $t0, -444($fp)
	sw $t0, -1292($fp)
	lw $t1, -1280($fp)
	lw $t2, -1292($fp)
	bgt $t1, $t2, label909
	j label910
label909:
	li $t0, 1
	sw $t0, -1276($fp)
label910:
	addi $sp, $sp, -4
	lw $t0, -1272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1276($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1296($fp)
	addi $sp, $sp, 12
	li $t0, 8411
	sw $t0, -1300($fp)
	li $t0, 60171
	sw $t0, -1304($fp)
	lw $t0, -1300($fp)
	lw $t1, -1304($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1308($fp)
	lw $t0, -600($fp)
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -1316($fp)
	addi $sp, $sp, -4
	lw $t0, -1296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1316($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1320($fp)
	addi $sp, $sp, 16
	lw $t0, -624($fp)
	sw $t0, -1324($fp)
	lw $t0, -1320($fp)
	lw $t1, -1324($fp)
	sub $t0, $t0, $t1
	sw $t0, -1328($fp)
	addi $sp, $sp, -4
	lw $t0, -1328($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1332($fp)
	addi $sp, $sp, 8
	lw $t0, -1252($fp)
	lw $t1, -1332($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1336($fp)
	li $t0, 0
	sw $t0, -1340($fp)
	lw $t0, -648($fp)
	sw $t0, -1344($fp)
	lw $t1, -1344($fp)
	li $t2, 0
	bne $t1, $t2, label914
	j label913
label913:
	li $t0, 1
	sw $t0, -1340($fp)
label914:
	lw $t0, -1336($fp)
	lw $t1, -1340($fp)
	sub $t0, $t0, $t1
	sw $t0, -1348($fp)
	lw $ra, -4($fp)
	lw $v0, -1348($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label902
label901:
	addi $t0, $fp, -8
	sw $t0, -1352($fp)
	lw $t0, -444($fp)
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -1360($fp)
	li $t0, 4
	lw $t1, -1360($fp)
	mul $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	lw $t1, -1352($fp)
	add $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	lw $t1, 0($t0)
	sw $t1, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -1376($fp)
	lw $t1, -1376($fp)
	li $t2, 0
	bne $t1, $t2, label915
	j label916
label915:
	addi $t0, $fp, -44
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
	jal f13
	sw $v0, -1400($fp)
	addi $sp, $sp, 4
	lw $t0, -1396($fp)
	lw $t1, -1400($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1404($fp)
	li $t0, 36514
	sw $t0, -1408($fp)
	li $t0, 0
	lw $t1, -1408($fp)
	sub $t0, $t0, $t1
	sw $t0, -1412($fp)
	li $t0, 0
	sw $t0, -1416($fp)
	li $t0, 22830
	sw $t0, -1420($fp)
	lw $t1, -1420($fp)
	li $t2, 0
	bne $t1, $t2, label919
	j label918
label918:
	li $t0, 1
	sw $t0, -1416($fp)
label919:
	addi $sp, $sp, -4
	lw $t0, -1412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1416($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1424($fp)
	addi $sp, $sp, 12
	li $t0, 20268
	sw $t0, -1428($fp)
	lw $t0, -1424($fp)
	lw $t1, -1428($fp)
	mul $t0, $t0, $t1
	sw $t0, -1432($fp)
	li $t0, 0
	lw $t1, -1432($fp)
	sub $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t0, -1404($fp)
	lw $t1, -1436($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1440($fp)
	li $t0, 0
	lw $t1, -1440($fp)
	sub $t0, $t0, $t1
	sw $t0, -1444($fp)
	j label917
label916:
	li $t0, 54049
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	sw $t0, -1456($fp)
	li $t0, 42836
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	sw $t0, -1468($fp)
	li $t0, 8412
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	sw $t0, -1480($fp)
	li $t0, 42716
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	sw $t0, -1492($fp)
	li $t0, 0
	sw $t0, -1496($fp)
	lw $t0, -1476($fp)
	sw $t0, -1500($fp)
	lw $t1, -1500($fp)
	li $t2, 0
	bne $t1, $t2, label922
	j label920
label922:
	lw $t0, -72($fp)
	sw $t0, -1504($fp)
	li $t0, 53607
	sw $t0, -1508($fp)
	lw $t0, -1504($fp)
	lw $t1, -1508($fp)
	sub $t0, $t0, $t1
	sw $t0, -1512($fp)
	addi $t0, $fp, -8
	sw $t0, -1516($fp)
	lw $t0, -180($fp)
	sw $t0, -1520($fp)
	li $t0, 4
	lw $t1, -1520($fp)
	mul $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	lw $t1, -1516($fp)
	add $t0, $t0, $t1
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	lw $t1, 0($t0)
	sw $t1, -1532($fp)
	li $t0, 39324
	sw $t0, -1536($fp)
	lw $t0, -1532($fp)
	lw $t1, -1536($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1540($fp)
	addi $sp, $sp, -4
	lw $t0, -1512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1540($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1544($fp)
	addi $sp, $sp, 12
	lw $t1, -1544($fp)
	li $t2, 0
	bne $t1, $t2, label920
	j label921
label920:
	li $t0, 1
	sw $t0, -1496($fp)
label921:
	li $t0, 0
	sw $t0, -1548($fp)
	li $t0, 58904
	sw $t0, -1552($fp)
	lw $t1, -1552($fp)
	li $t2, 0
	bne $t1, $t2, label924
	j label923
label923:
	li $t0, 1
	sw $t0, -1548($fp)
label924:
	li $t0, 0
	sw $t0, -1556($fp)
	li $t0, 0
	sw $t0, -1560($fp)
	addi $t0, $fp, -8
	sw $t0, -1564($fp)
	lw $t0, -1464($fp)
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
	addi $t0, $fp, -8
	sw $t0, -1584($fp)
	lw $t0, -72($fp)
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
	lw $t0, -1580($fp)
	lw $t1, -1600($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1604($fp)
	li $t0, 0
	lw $t1, -1604($fp)
	sub $t0, $t0, $t1
	sw $t0, -1608($fp)
	li $t0, 9299
	sw $t0, -1612($fp)
	lw $t0, -1488($fp)
	sw $t0, -1616($fp)
	lw $t0, -1612($fp)
	lw $t1, -1616($fp)
	mul $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t1, -1608($fp)
	lw $t2, -1620($fp)
	bne $t1, $t2, label927
	j label928
label927:
	li $t0, 1
	sw $t0, -1560($fp)
label928:
	lw $t0, -132($fp)
	sw $t0, -1624($fp)
	lw $t0, -636($fp)
	sw $t0, -1628($fp)
	lw $t0, -1624($fp)
	lw $t1, -1628($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1632($fp)
	li $t0, 42076
	sw $t0, -1636($fp)
	lw $t0, -1632($fp)
	lw $t1, -1636($fp)
	mul $t0, $t0, $t1
	sw $t0, -1640($fp)
	lw $t0, -444($fp)
	sw $t0, -1644($fp)
	lw $t0, -144($fp)
	sw $t0, -1648($fp)
	lw $t0, -1644($fp)
	lw $t1, -1648($fp)
	mul $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $t0, -1640($fp)
	lw $t1, -1652($fp)
	add $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $t1, -1560($fp)
	lw $t2, -1656($fp)
	bne $t1, $t2, label925
	j label926
label925:
	li $t0, 1
	sw $t0, -1556($fp)
label926:
	lw $t0, -132($fp)
	sw $t0, -1660($fp)
	lw $t0, -444($fp)
	sw $t0, -1664($fp)
	lw $t0, -1660($fp)
	lw $t1, -1664($fp)
	mul $t0, $t0, $t1
	sw $t0, -1668($fp)
	li $t0, 0
	sw $t0, -1672($fp)
	lw $t0, -1452($fp)
	sw $t0, -1676($fp)
	li $t0, 53324
	sw $t0, -1680($fp)
	lw $t0, -1676($fp)
	lw $t1, -1680($fp)
	sub $t0, $t0, $t1
	sw $t0, -1684($fp)
	lw $t1, -1684($fp)
	li $t2, 0
	bne $t1, $t2, label931
	j label930
label931:
	lw $t0, -72($fp)
	sw $t0, -1688($fp)
	lw $t1, -1688($fp)
	li $t2, 0
	bne $t1, $t2, label929
	j label930
label929:
	li $t0, 1
	sw $t0, -1672($fp)
label930:
	lw $t0, -132($fp)
	sw $t0, -1692($fp)
	li $t0, 49763
	sw $t0, -1696($fp)
	lw $t0, -1692($fp)
	lw $t1, -1696($fp)
	sub $t0, $t0, $t1
	sw $t0, -1700($fp)
	li $t0, 50177
	sw $t0, -1704($fp)
	lw $t0, -1700($fp)
	lw $t1, -1704($fp)
	sub $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $t0, -612($fp)
	sw $t0, -1712($fp)
	addi $sp, $sp, -4
	lw $t0, -1668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1712($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1716($fp)
	addi $sp, $sp, 20
	li $t0, 36022
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -1724($fp)
	addi $sp, $sp, -4
	lw $t0, -1724($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1728($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -1728($fp)
	sub $t0, $t0, $t1
	sw $t0, -1732($fp)
	li $t0, 21491
	sw $t0, -1736($fp)
label917:
label902:
label932:
	li $t0, 0
	sw $t0, -1740($fp)
	li $t0, 0
	sw $t0, -1744($fp)
	li $t0, 36093
	sw $t0, -1748($fp)
	li $t0, 63264
	sw $t0, -1752($fp)
	lw $t1, -1748($fp)
	lw $t2, -1752($fp)
	bne $t1, $t2, label939
	j label938
label939:
	lw $t0, -192($fp)
	sw $t0, -1756($fp)
	lw $t1, -1756($fp)
	li $t2, 0
	bne $t1, $t2, label937
	j label938
label937:
	li $t0, 1
	sw $t0, -1744($fp)
label938:
	addi $sp, $sp, -4
	lw $t0, -1744($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1760($fp)
	addi $sp, $sp, 8
	lw $t1, -1760($fp)
	li $t2, 0
	bne $t1, $t2, label936
	j label935
label935:
	li $t0, 1
	sw $t0, -1740($fp)
label936:
	li $t0, 0
	sw $t0, -1764($fp)
	lw $t0, -624($fp)
	sw $t0, -1768($fp)
	lw $t1, -1768($fp)
	li $t2, 0
	bne $t1, $t2, label941
	j label940
label940:
	li $t0, 1
	sw $t0, -1764($fp)
label941:
	lw $t0, -1740($fp)
	lw $t1, -1764($fp)
	mul $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t1, -1772($fp)
	li $t2, 0
	bne $t1, $t2, label933
	j label934
label933:
	li $t0, 10990
	sw $t0, -1776($fp)
	lw $t0, -96($fp)
	sw $t0, -1780($fp)
	lw $t0, -1776($fp)
	lw $t1, -1780($fp)
	mul $t0, $t0, $t1
	sw $t0, -1784($fp)
	li $t0, 0
	sw $t0, -1788($fp)
	lw $t0, -624($fp)
	sw $t0, -1792($fp)
	lw $t1, -1792($fp)
	li $t2, 0
	bne $t1, $t2, label943
	j label942
label942:
	li $t0, 1
	sw $t0, -1788($fp)
label943:
	lw $t0, -1784($fp)
	lw $t1, -1788($fp)
	mul $t0, $t0, $t1
	sw $t0, -1796($fp)
	j label932
label934:
	lw $t0, -96($fp)
	sw $t0, -1800($fp)
	lw $t0, -156($fp)
	sw $t0, -1804($fp)
	lw $t0, -1800($fp)
	lw $t1, -1804($fp)
	add $t0, $t0, $t1
	sw $t0, -1808($fp)
	jal f13
	sw $v0, -1812($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -1816($fp)
	addi $t0, $fp, -8
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
	lw $t1, -1836($fp)
	li $t2, 0
	bne $t1, $t2, label944
	j label945
label944:
	li $t0, 1
	sw $t0, -1816($fp)
label945:
	lw $t0, -1812($fp)
	lw $t1, -1816($fp)
	mul $t0, $t0, $t1
	sw $t0, -1840($fp)
label946:
	li $t0, 4983
	sw $t0, -1844($fp)
	lw $t1, -1844($fp)
	li $t2, 0
	bne $t1, $t2, label948
	j label947
label947:
	li $t0, 0
	sw $t0, -1848($fp)
	li $t0, 34371
	sw $t0, -1852($fp)
	li $t0, 0
	lw $t1, -1852($fp)
	sub $t0, $t0, $t1
	sw $t0, -1856($fp)
	lw $t1, -1856($fp)
	li $t2, 0
	bne $t1, $t2, label950
	j label949
label949:
	li $t0, 1
	sw $t0, -1848($fp)
label950:
	j label946
label948:
	lw $t0, -72($fp)
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -1872($fp)
	li $t0, 0
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
	lw $t0, -132($fp)
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -156($fp)
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -216($fp)
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1924($fp)
	li $t0, 0
	sw $t0, -1928($fp)
	li $t0, 4
	lw $t1, -1928($fp)
	mul $t0, $t0, $t1
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	lw $t1, -1924($fp)
	add $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	lw $t1, 0($t0)
	sw $t1, -1940($fp)
	lw $t0, -1940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1944($fp)
	li $t0, 1
	sw $t0, -1948($fp)
	li $t0, 4
	lw $t1, -1948($fp)
	mul $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	lw $t1, -1944($fp)
	add $t0, $t0, $t1
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	lw $t1, 0($t0)
	sw $t1, -1960($fp)
	lw $t0, -1960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1964($fp)
	li $t0, 2
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
	lw $t0, -1980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1984($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -2004($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -2024($fp)
	li $t0, 5
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
	addi $t0, $fp, -44
	sw $t0, -2044($fp)
	li $t0, 6
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
	addi $t0, $fp, -44
	sw $t0, -2064($fp)
	li $t0, 7
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
	addi $t0, $fp, -44
	sw $t0, -2084($fp)
	li $t0, 8
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
	lw $t0, -444($fp)
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
	sw $t0, -2156($fp)
	li $t0, 2
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
	addi $t0, $fp, -64
	sw $t0, -2176($fp)
	li $t0, 3
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
	addi $t0, $fp, -64
	sw $t0, -2196($fp)
	li $t0, 4
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
	lw $t0, -600($fp)
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -2228($fp)
	lw $t0, -2228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -2232($fp)
	lw $t0, -2232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2236($fp)
	lw $t0, -96($fp)
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -2244($fp)
	addi $sp, $sp, -4
	lw $t0, -2244($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2248($fp)
	addi $sp, $sp, 8
	lw $t1, -2248($fp)
	li $t2, 0
	bne $t1, $t2, label952
	j label951
label951:
	li $t0, 1
	sw $t0, -2236($fp)
label952:
	lw $ra, -4($fp)
	lw $v0, -2236($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -96
	li $t0, 12666
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 65154
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 0
	sw $t0, -32($fp)
	lw $t0, -24($fp)
	sw $t0, -36($fp)
	li $t0, 11618
	sw $t0, -40($fp)
	lw $t0, -36($fp)
	lw $t1, -40($fp)
	add $t0, $t0, $t1
	sw $t0, -44($fp)
	li $t0, 31353
	sw $t0, -48($fp)
	lw $t1, -44($fp)
	lw $t2, -48($fp)
	bne $t1, $t2, label953
	j label954
label953:
	li $t0, 1
	sw $t0, -32($fp)
label954:
	li $t0, 0
	sw $t0, -52($fp)
	li $t0, 31327
	sw $t0, -56($fp)
	lw $t0, -12($fp)
	sw $t0, -60($fp)
	lw $t0, -56($fp)
	lw $t1, -60($fp)
	add $t0, $t0, $t1
	sw $t0, -64($fp)
	lw $t1, -64($fp)
	li $t2, 0
	bne $t1, $t2, label957
	j label956
label957:
	li $t0, 11857
	sw $t0, -68($fp)
	lw $t1, -68($fp)
	li $t2, 0
	bne $t1, $t2, label955
	j label956
label955:
	li $t0, 1
	sw $t0, -52($fp)
label956:
	li $t0, 0
	sw $t0, -72($fp)
	lw $t0, -12($fp)
	sw $t0, -76($fp)
	lw $t1, -76($fp)
	li $t2, 0
	bne $t1, $t2, label958
	j label961
label961:
	lw $t0, -12($fp)
	sw $t0, -80($fp)
	lw $t1, -80($fp)
	li $t2, 0
	bne $t1, $t2, label958
	j label960
label960:
	lw $t0, -12($fp)
	sw $t0, -84($fp)
	lw $t1, -84($fp)
	li $t2, 0
	bne $t1, $t2, label958
	j label959
label958:
	li $t0, 1
	sw $t0, -72($fp)
label959:
	addi $sp, $sp, -4
	lw $t0, -32($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -52($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -72($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -88($fp)
	addi $sp, $sp, 16
	lw $t0, -12($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 44423
	sw $t0, -100($fp)
	lw $ra, -4($fp)
	lw $v0, -100($fp)
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
