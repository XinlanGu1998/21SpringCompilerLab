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
	addi $sp, $sp, -2784
	li $t0, 27113
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	li $t0, 53408
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	li $t0, 19674
	sw $t0, -108($fp)
	addi $t0, $fp, -40
	sw $t0, -112($fp)
	li $t0, 0
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
	li $t0, 12505
	sw $t0, -132($fp)
	addi $t0, $fp, -40
	sw $t0, -136($fp)
	li $t0, 1
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
	li $t0, 52657
	sw $t0, -156($fp)
	addi $t0, $fp, -40
	sw $t0, -160($fp)
	li $t0, 2
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
	li $t0, 23695
	sw $t0, -180($fp)
	addi $t0, $fp, -40
	sw $t0, -184($fp)
	li $t0, 3
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
	li $t0, 62350
	sw $t0, -204($fp)
	addi $t0, $fp, -40
	sw $t0, -208($fp)
	li $t0, 4
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
	li $t0, 41825
	sw $t0, -228($fp)
	addi $t0, $fp, -40
	sw $t0, -232($fp)
	li $t0, 5
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
	li $t0, 6660
	sw $t0, -252($fp)
	addi $t0, $fp, -40
	sw $t0, -256($fp)
	li $t0, 6
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
	li $t0, 47832
	sw $t0, -276($fp)
	addi $t0, $fp, -40
	sw $t0, -280($fp)
	li $t0, 7
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
	li $t0, 38967
	sw $t0, -300($fp)
	addi $t0, $fp, -40
	sw $t0, -304($fp)
	li $t0, 8
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
	li $t0, 30496
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	li $t0, 29601
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	li $t0, 12834
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	li $t0, 43145
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	li $t0, 37890
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	li $t0, 65464
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	li $t0, 8121
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	li $t0, 65002
	sw $t0, -408($fp)
	addi $t0, $fp, -80
	sw $t0, -412($fp)
	li $t0, 0
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
	li $t0, 10010
	sw $t0, -432($fp)
	addi $t0, $fp, -80
	sw $t0, -436($fp)
	li $t0, 1
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
	li $t0, 65462
	sw $t0, -456($fp)
	addi $t0, $fp, -80
	sw $t0, -460($fp)
	li $t0, 2
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
	li $t0, 3099
	sw $t0, -480($fp)
	addi $t0, $fp, -80
	sw $t0, -484($fp)
	li $t0, 3
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
	li $t0, 59486
	sw $t0, -504($fp)
	addi $t0, $fp, -80
	sw $t0, -508($fp)
	li $t0, 4
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
	li $t0, 36762
	sw $t0, -528($fp)
	addi $t0, $fp, -80
	sw $t0, -532($fp)
	li $t0, 5
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
	li $t0, 3479
	sw $t0, -552($fp)
	addi $t0, $fp, -80
	sw $t0, -556($fp)
	li $t0, 6
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
	li $t0, 38468
	sw $t0, -576($fp)
	addi $t0, $fp, -80
	sw $t0, -580($fp)
	li $t0, 7
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
	li $t0, 55779
	sw $t0, -600($fp)
	addi $t0, $fp, -80
	sw $t0, -604($fp)
	li $t0, 8
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
	li $t0, 47676
	sw $t0, -624($fp)
	addi $t0, $fp, -80
	sw $t0, -628($fp)
	li $t0, 9
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
	li $t0, 28142
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	li $t0, 5637
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	li $t0, 29001
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	li $t0, 55255
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	li $t0, 59046
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	lw $t0, -88($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -100($fp)
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
	lw $t0, -328($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -340($fp)
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -352($fp)
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -364($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -376($fp)
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -388($fp)
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -400($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -924($fp)
	li $t0, 0
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
	addi $t0, $fp, -80
	sw $t0, -944($fp)
	li $t0, 1
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
	addi $t0, $fp, -80
	sw $t0, -964($fp)
	li $t0, 2
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
	addi $t0, $fp, -80
	sw $t0, -984($fp)
	li $t0, 3
	sw $t0, -988($fp)
	li $t0, 4
	lw $t1, -988($fp)
	mul $t0, $t0, $t1
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	lw $t1, -984($fp)
	add $t0, $t0, $t1
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	lw $t1, 0($t0)
	sw $t1, -1000($fp)
	lw $t0, -1000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1004($fp)
	li $t0, 4
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
	lw $t0, -1020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1024($fp)
	li $t0, 5
	sw $t0, -1028($fp)
	li $t0, 4
	lw $t1, -1028($fp)
	mul $t0, $t0, $t1
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	lw $t1, -1024($fp)
	add $t0, $t0, $t1
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	lw $t1, 0($t0)
	sw $t1, -1040($fp)
	lw $t0, -1040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1044($fp)
	li $t0, 6
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
	addi $t0, $fp, -80
	sw $t0, -1064($fp)
	li $t0, 7
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
	addi $t0, $fp, -80
	sw $t0, -1084($fp)
	li $t0, 8
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
	addi $t0, $fp, -80
	sw $t0, -1104($fp)
	li $t0, 9
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
	lw $t0, -652($fp)
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -664($fp)
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -400($fp)
	sw $t0, -1144($fp)
	lw $ra, -4($fp)
	lw $v0, -1144($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -88($fp)
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -100($fp)
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1156($fp)
	li $t0, 0
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
	lw $t0, -1172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1176($fp)
	li $t0, 1
	sw $t0, -1180($fp)
	li $t0, 4
	lw $t1, -1180($fp)
	mul $t0, $t0, $t1
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	lw $t1, -1176($fp)
	add $t0, $t0, $t1
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	lw $t1, 0($t0)
	sw $t1, -1192($fp)
	lw $t0, -1192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1196($fp)
	li $t0, 2
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
	lw $t0, -1212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1216($fp)
	li $t0, 3
	sw $t0, -1220($fp)
	li $t0, 4
	lw $t1, -1220($fp)
	mul $t0, $t0, $t1
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	lw $t1, -1216($fp)
	add $t0, $t0, $t1
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	lw $t1, 0($t0)
	sw $t1, -1232($fp)
	lw $t0, -1232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1236($fp)
	li $t0, 4
	sw $t0, -1240($fp)
	li $t0, 4
	lw $t1, -1240($fp)
	mul $t0, $t0, $t1
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	lw $t1, -1236($fp)
	add $t0, $t0, $t1
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	lw $t1, 0($t0)
	sw $t1, -1252($fp)
	lw $t0, -1252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1256($fp)
	li $t0, 5
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
	lw $t0, -1272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1276($fp)
	li $t0, 6
	sw $t0, -1280($fp)
	li $t0, 4
	lw $t1, -1280($fp)
	mul $t0, $t0, $t1
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	lw $t1, -1276($fp)
	add $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	lw $t1, 0($t0)
	sw $t1, -1292($fp)
	lw $t0, -1292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1296($fp)
	li $t0, 7
	sw $t0, -1300($fp)
	li $t0, 4
	lw $t1, -1300($fp)
	mul $t0, $t0, $t1
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	lw $t1, -1296($fp)
	add $t0, $t0, $t1
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	lw $t1, 0($t0)
	sw $t1, -1312($fp)
	lw $t0, -1312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1316($fp)
	li $t0, 8
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
	lw $t0, -1332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -328($fp)
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -340($fp)
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -352($fp)
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -364($fp)
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -376($fp)
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -388($fp)
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -400($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1364($fp)
	li $t0, 0
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
	addi $t0, $fp, -80
	sw $t0, -1384($fp)
	li $t0, 1
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
	addi $t0, $fp, -80
	sw $t0, -1404($fp)
	li $t0, 2
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
	addi $t0, $fp, -80
	sw $t0, -1424($fp)
	li $t0, 3
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
	addi $t0, $fp, -80
	sw $t0, -1444($fp)
	li $t0, 4
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
	addi $t0, $fp, -80
	sw $t0, -1464($fp)
	li $t0, 5
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
	addi $t0, $fp, -80
	sw $t0, -1484($fp)
	li $t0, 6
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
	addi $t0, $fp, -80
	sw $t0, -1504($fp)
	li $t0, 7
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
	addi $t0, $fp, -80
	sw $t0, -1524($fp)
	li $t0, 8
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
	addi $t0, $fp, -80
	sw $t0, -1544($fp)
	li $t0, 9
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
	lw $t0, -652($fp)
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -664($fp)
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -388($fp)
	sw $t0, -1584($fp)
	lw $ra, -4($fp)
	lw $v0, -1584($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label121:
	lw $t0, -688($fp)
	sw $t0, -1588($fp)
	addi $t0, $fp, -80
	sw $t0, -1592($fp)
	lw $t0, -664($fp)
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
	li $t0, 0
	sw $t0, -1612($fp)
	li $t0, 46167
	sw $t0, -1616($fp)
	lw $t0, 12($fp)
	sw $t0, -1620($fp)
	lw $t0, -1616($fp)
	lw $t1, -1620($fp)
	add $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t1, -1624($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label126
label126:
	li $t0, 6834
	sw $t0, -1628($fp)
	lw $t1, -1628($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label125
label124:
	li $t0, 1
	sw $t0, -1612($fp)
label125:
	lw $t0, -340($fp)
	sw $t0, -1632($fp)
	lw $t0, -676($fp)
	sw $t0, -1636($fp)
	lw $t0, -1632($fp)
	lw $t1, -1636($fp)
	mul $t0, $t0, $t1
	sw $t0, -1640($fp)
	li $t0, 2224
	sw $t0, -1644($fp)
	lw $t0, -1640($fp)
	lw $t1, -1644($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1648($fp)
	li $t0, 0
	sw $t0, -1652($fp)
	li $t0, 48675
	sw $t0, -1656($fp)
	lw $t0, -376($fp)
	sw $t0, -1660($fp)
	lw $t0, -1656($fp)
	lw $t1, -1660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1664($fp)
	lw $t1, -1664($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label128
label129:
	lw $t0, -688($fp)
	sw $t0, -1668($fp)
	lw $t1, -1668($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label128
label127:
	li $t0, 1
	sw $t0, -1652($fp)
label128:
	addi $sp, $sp, -4
	lw $t0, -1612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1652($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1672($fp)
	addi $sp, $sp, 16
	lw $t0, -1608($fp)
	lw $t1, -1672($fp)
	mul $t0, $t0, $t1
	sw $t0, -1676($fp)
	li $t0, 0
	lw $t1, -1676($fp)
	sub $t0, $t0, $t1
	sw $t0, -1680($fp)
	lw $t0, -1588($fp)
	lw $t1, -1680($fp)
	add $t0, $t0, $t1
	sw $t0, -1684($fp)
	lw $t1, -1684($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label123
label122:
	li $t0, 0
	sw $t0, -1688($fp)
	addi $t0, $fp, -40
	sw $t0, -1692($fp)
	addi $t0, $fp, -40
	sw $t0, -1696($fp)
	lw $t0, 4($fp)
	sw $t0, -1700($fp)
	li $t0, 4
	lw $t1, -1700($fp)
	mul $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	lw $t1, -1696($fp)
	add $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	lw $t1, 0($t0)
	sw $t1, -1712($fp)
	li $t0, 0
	sw $t0, -1716($fp)
	li $t0, 10937
	sw $t0, -1720($fp)
	lw $t0, -652($fp)
	sw $t0, -1724($fp)
	lw $t0, -1720($fp)
	lw $t1, -1724($fp)
	mul $t0, $t0, $t1
	sw $t0, -1728($fp)
	lw $t0, -340($fp)
	sw $t0, -1732($fp)
	lw $t0, -688($fp)
	sw $t0, -1736($fp)
	lw $t0, -1732($fp)
	lw $t1, -1736($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1740($fp)
	li $t0, 0
	sw $t0, -1744($fp)
	li $t0, 61423
	sw $t0, -1748($fp)
	li $t0, 43991
	sw $t0, -1752($fp)
	lw $t1, -1748($fp)
	lw $t2, -1752($fp)
	bge $t1, $t2, label136
	j label135
label136:
	lw $t0, -88($fp)
	sw $t0, -1756($fp)
	lw $t1, -1756($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label135
label134:
	li $t0, 1
	sw $t0, -1744($fp)
label135:
	li $t0, 0
	sw $t0, -1760($fp)
	li $t0, 0
	sw $t0, -1764($fp)
	lw $t0, -328($fp)
	sw $t0, -1768($fp)
	lw $t0, 4($fp)
	sw $t0, -1772($fp)
	lw $t1, -1768($fp)
	lw $t2, -1772($fp)
	ble $t1, $t2, label139
	j label140
label139:
	li $t0, 1
	sw $t0, -1764($fp)
label140:
	li $t0, 46871
	sw $t0, -1776($fp)
	lw $t1, -1764($fp)
	lw $t2, -1776($fp)
	beq $t1, $t2, label137
	j label138
label137:
	li $t0, 1
	sw $t0, -1760($fp)
label138:
	addi $sp, $sp, -4
	lw $t0, -1740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1760($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1780($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -1780($fp)
	sub $t0, $t0, $t1
	sw $t0, -1784($fp)
	li $t0, 22456
	sw $t0, -1788($fp)
	li $t0, 13495
	sw $t0, -1792($fp)
	lw $t0, -1788($fp)
	lw $t1, -1792($fp)
	mul $t0, $t0, $t1
	sw $t0, -1796($fp)
	addi $sp, $sp, -4
	lw $t0, -1728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1796($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1800($fp)
	addi $sp, $sp, 16
	lw $t0, -700($fp)
	sw $t0, -1804($fp)
	lw $t1, -1800($fp)
	lw $t2, -1804($fp)
	bgt $t1, $t2, label132
	j label133
label132:
	li $t0, 1
	sw $t0, -1716($fp)
label133:
	li $t0, 64575
	sw $t0, -1808($fp)
	addi $sp, $sp, -4
	lw $t0, -1712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1808($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1812($fp)
	addi $sp, $sp, 16
	li $t0, 4
	lw $t1, -1812($fp)
	mul $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	lw $t1, -1692($fp)
	add $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	lw $t1, 0($t0)
	sw $t1, -1824($fp)
	lw $t1, -1824($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label130
label130:
	li $t0, 1
	sw $t0, -1688($fp)
label131:
	lw $ra, -4($fp)
	lw $v0, -1688($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label121
label123:
	li $t0, 0
	sw $t0, -1828($fp)
	li $t0, 0
	sw $t0, -1832($fp)
	li $t0, 8722
	sw $t0, -1836($fp)
	lw $t1, -1836($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label144
label144:
	li $t0, 1
	sw $t0, -1832($fp)
label145:
	li $t0, 0
	sw $t0, -1840($fp)
	lw $t0, -88($fp)
	sw $t0, -1844($fp)
	lw $t1, -1844($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label146
label146:
	li $t0, 1
	sw $t0, -1840($fp)
label147:
	li $t0, 0
	lw $t1, -1840($fp)
	sub $t0, $t0, $t1
	sw $t0, -1848($fp)
	lw $t0, -1832($fp)
	lw $t1, -1848($fp)
	mul $t0, $t0, $t1
	sw $t0, -1852($fp)
	lw $t1, -1852($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label142
label143:
	li $t0, 21600
	sw $t0, -1856($fp)
	li $t0, 48827
	sw $t0, -1860($fp)
	li $t0, 0
	lw $t1, -1860($fp)
	sub $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t0, -1856($fp)
	lw $t1, -1864($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1868($fp)
	lw $t1, -1868($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label142
label141:
	li $t0, 1
	sw $t0, -1828($fp)
label142:
	lw $ra, -4($fp)
	lw $v0, -1828($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1872($fp)
	li $t0, 18660
	sw $t0, -1876($fp)
	li $t0, 0
	lw $t1, -1876($fp)
	sub $t0, $t0, $t1
	sw $t0, -1880($fp)
	addi $t0, $fp, -80
	sw $t0, -1884($fp)
	li $t0, 7
	sw $t0, -1888($fp)
	li $t0, 4
	lw $t1, -1888($fp)
	mul $t0, $t0, $t1
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	lw $t1, -1884($fp)
	add $t0, $t0, $t1
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	lw $t1, 0($t0)
	sw $t1, -1900($fp)
	li $t0, 0
	sw $t0, -1904($fp)
	li $t0, 8650
	sw $t0, -1908($fp)
	li $t0, 0
	lw $t1, -1908($fp)
	sub $t0, $t0, $t1
	sw $t0, -1912($fp)
	lw $t0, -388($fp)
	sw $t0, -1916($fp)
	lw $t1, -1912($fp)
	lw $t2, -1916($fp)
	bge $t1, $t2, label151
	j label152
label151:
	li $t0, 1
	sw $t0, -1904($fp)
label152:
	addi $sp, $sp, -4
	lw $t0, -1880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1904($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1920($fp)
	addi $sp, $sp, 16
	lw $t1, -1920($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label149
label150:
	li $t0, 29647
	sw $t0, -1924($fp)
	lw $t0, -388($fp)
	sw $t0, -1928($fp)
	lw $t1, -1924($fp)
	lw $t2, -1928($fp)
	beq $t1, $t2, label148
	j label149
label148:
	li $t0, 1
	sw $t0, -1872($fp)
label149:
	lw $t0, -1872($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -1932($fp)
	lw $ra, -4($fp)
	lw $v0, -1932($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label153:
	lw $t0, -664($fp)
	sw $t0, -1936($fp)
	lw $t1, -1936($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label155
label154:
	li $t0, 0
	sw $t0, -1940($fp)
	li $t0, 51392
	sw $t0, -1944($fp)
	lw $t1, -1944($fp)
	li $t2, 0
	bne $t1, $t2, label156
	j label158
label158:
	addi $t0, $fp, -40
	sw $t0, -1948($fp)
	li $t0, 0
	sw $t0, -1952($fp)
	li $t0, 12611
	sw $t0, -1956($fp)
	lw $t0, 4($fp)
	sw $t0, -1960($fp)
	lw $t1, -1956($fp)
	lw $t2, -1960($fp)
	bne $t1, $t2, label159
	j label160
label159:
	li $t0, 1
	sw $t0, -1952($fp)
label160:
	li $t0, 4
	lw $t1, -1952($fp)
	mul $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	lw $t1, -1948($fp)
	add $t0, $t0, $t1
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	lw $t1, 0($t0)
	sw $t1, -1972($fp)
	lw $t1, -1972($fp)
	li $t2, 0
	bne $t1, $t2, label156
	j label157
label156:
	li $t0, 1
	sw $t0, -1940($fp)
label157:
	j label153
label155:
	li $t0, 0
	sw $t0, -1976($fp)
	addi $t0, $fp, -40
	sw $t0, -1980($fp)
	lw $t0, 4($fp)
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
	lw $t0, 8($fp)
	sw $t0, -2000($fp)
	lw $t0, -1996($fp)
	lw $t1, -2000($fp)
	mul $t0, $t0, $t1
	sw $t0, -2004($fp)
	lw $t0, -664($fp)
	sw $t0, -2008($fp)
	li $t0, 873
	sw $t0, -2012($fp)
	lw $t0, -2008($fp)
	lw $t1, -2012($fp)
	mul $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t1, -2004($fp)
	lw $t2, -2016($fp)
	bge $t1, $t2, label164
	j label163
label164:
	li $t0, 0
	sw $t0, -2020($fp)
	li $t0, 54871
	sw $t0, -2024($fp)
	lw $t1, -2024($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label165
label165:
	li $t0, 1
	sw $t0, -2020($fp)
label166:
	li $t0, 51079
	sw $t0, -2028($fp)
	lw $t0, -2020($fp)
	lw $t1, -2028($fp)
	sub $t0, $t0, $t1
	sw $t0, -2032($fp)
	lw $t1, -2032($fp)
	li $t2, 0
	bne $t1, $t2, label161
	j label163
label163:
	lw $t0, 4($fp)
	sw $t0, -2036($fp)
	lw $t1, -2036($fp)
	li $t2, 0
	bne $t1, $t2, label161
	j label162
label161:
	li $t0, 1
	sw $t0, -1976($fp)
label162:
	lw $ra, -4($fp)
	lw $v0, -1976($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -40
	sw $t0, -2040($fp)
	lw $t0, -364($fp)
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
	lw $t0, -676($fp)
	sw $t0, -2060($fp)
	lw $t0, -2056($fp)
	lw $t1, -2060($fp)
	mul $t0, $t0, $t1
	sw $t0, -2064($fp)
	li $t0, 0
	sw $t0, -2068($fp)
	li $t0, 0
	sw $t0, -2072($fp)
	lw $t0, 12($fp)
	sw $t0, -2076($fp)
	li $t0, 37011
	sw $t0, -2080($fp)
	lw $t1, -2076($fp)
	lw $t2, -2080($fp)
	beq $t1, $t2, label172
	j label173
label172:
	li $t0, 1
	sw $t0, -2072($fp)
label173:
	li $t0, 13685
	sw $t0, -2084($fp)
	lw $t1, -2072($fp)
	lw $t2, -2084($fp)
	bne $t1, $t2, label170
	j label171
label170:
	li $t0, 1
	sw $t0, -2068($fp)
label171:
	li $t0, 0
	sw $t0, -2088($fp)
	lw $t0, -388($fp)
	sw $t0, -2092($fp)
	li $t0, 0
	lw $t1, -2092($fp)
	sub $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t1, -2096($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label175
label176:
	lw $t0, -88($fp)
	sw $t0, -2100($fp)
	lw $t1, -2100($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label175
label174:
	li $t0, 1
	sw $t0, -2088($fp)
label175:
	li $t0, 0
	sw $t0, -2104($fp)
	lw $t0, -352($fp)
	sw $t0, -2108($fp)
	lw $t0, 4($fp)
	sw $t0, -2112($fp)
	lw $t0, -2108($fp)
	lw $t1, -2112($fp)
	add $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t1, -2116($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label179
label179:
	li $t0, 56652
	sw $t0, -2120($fp)
	lw $t1, -2120($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label178
label177:
	li $t0, 1
	sw $t0, -2104($fp)
label178:
	addi $sp, $sp, -4
	lw $t0, -2068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2104($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2124($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -2124($fp)
	sub $t0, $t0, $t1
	sw $t0, -2128($fp)
	lw $t0, -2064($fp)
	lw $t1, -2128($fp)
	mul $t0, $t0, $t1
	sw $t0, -2132($fp)
	addi $t0, $fp, -40
	sw $t0, -2136($fp)
	lw $t0, 12($fp)
	sw $t0, -2140($fp)
	li $t0, 0
	lw $t1, -2140($fp)
	sub $t0, $t0, $t1
	sw $t0, -2144($fp)
	li $t0, 4
	lw $t1, -2144($fp)
	mul $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t0, -2148($fp)
	lw $t1, -2136($fp)
	add $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	lw $t1, 0($t0)
	sw $t1, -2156($fp)
	lw $t0, -2132($fp)
	lw $t1, -2156($fp)
	sub $t0, $t0, $t1
	sw $t0, -2160($fp)
	lw $t1, -2160($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label168
label167:
	li $t0, 0
	sw $t0, -2164($fp)
	addi $t0, $fp, -80
	sw $t0, -2168($fp)
	li $t0, 62289
	sw $t0, -2172($fp)
	lw $t0, -652($fp)
	sw $t0, -2176($fp)
	lw $t0, -2172($fp)
	lw $t1, -2176($fp)
	add $t0, $t0, $t1
	sw $t0, -2180($fp)
	li $t0, 4
	lw $t1, -2180($fp)
	mul $t0, $t0, $t1
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	lw $t1, -2168($fp)
	add $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	lw $t1, 0($t0)
	sw $t1, -2192($fp)
	lw $t1, -2192($fp)
	li $t2, 0
	bne $t1, $t2, label180
	j label182
label182:
	addi $t0, $fp, -80
	sw $t0, -2196($fp)
	li $t0, 6
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
	sw $t0, -2216($fp)
	lw $t0, -88($fp)
	sw $t0, -2220($fp)
	lw $t1, -2220($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label183
label183:
	li $t0, 1
	sw $t0, -2216($fp)
label184:
	lw $t0, -2212($fp)
	lw $t1, -2216($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2224($fp)
	lw $t1, -2224($fp)
	li $t2, 0
	bne $t1, $t2, label180
	j label181
label180:
	li $t0, 1
	sw $t0, -2164($fp)
label181:
	j label169
label168:
	lw $t0, -88($fp)
	sw $t0, -2228($fp)
	li $t0, 0
	sw $t0, -2232($fp)
	lw $t0, -100($fp)
	sw $t0, -2236($fp)
	lw $t1, -2236($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label187
label188:
	li $t0, 5629
	sw $t0, -2240($fp)
	lw $t1, -2240($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label187
label187:
	li $t0, 36430
	sw $t0, -2244($fp)
	lw $t1, -2244($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label186
label185:
	li $t0, 1
	sw $t0, -2232($fp)
label186:
	li $t0, 0
	sw $t0, -2248($fp)
	lw $t0, -340($fp)
	sw $t0, -2252($fp)
	li $t0, 55799
	sw $t0, -2256($fp)
	lw $t0, -2252($fp)
	lw $t1, -2256($fp)
	mul $t0, $t0, $t1
	sw $t0, -2260($fp)
	lw $t1, -2260($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label190
label191:
	li $t0, 49152
	sw $t0, -2264($fp)
	lw $t1, -2264($fp)
	li $t2, 0
	bne $t1, $t2, label189
	j label190
label189:
	li $t0, 1
	sw $t0, -2248($fp)
label190:
	addi $sp, $sp, -4
	lw $t0, -2228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2248($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2268($fp)
	addi $sp, $sp, 16
	lw $ra, -4($fp)
	lw $v0, -2268($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label169:
	lw $t0, -88($fp)
	sw $t0, -2272($fp)
	lw $t0, -2272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -100($fp)
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
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
	lw $t0, -2296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2300($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -2320($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -2340($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -2360($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -2380($fp)
	li $t0, 5
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
	addi $t0, $fp, -40
	sw $t0, -2400($fp)
	li $t0, 6
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
	addi $t0, $fp, -40
	sw $t0, -2420($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -2440($fp)
	li $t0, 8
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
	lw $t0, -328($fp)
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -340($fp)
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -352($fp)
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -364($fp)
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -376($fp)
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -388($fp)
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -400($fp)
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2488($fp)
	li $t0, 0
	sw $t0, -2492($fp)
	li $t0, 4
	lw $t1, -2492($fp)
	mul $t0, $t0, $t1
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	lw $t1, -2488($fp)
	add $t0, $t0, $t1
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	lw $t1, 0($t0)
	sw $t1, -2504($fp)
	lw $t0, -2504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2508($fp)
	li $t0, 1
	sw $t0, -2512($fp)
	li $t0, 4
	lw $t1, -2512($fp)
	mul $t0, $t0, $t1
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	lw $t1, -2508($fp)
	add $t0, $t0, $t1
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	lw $t1, 0($t0)
	sw $t1, -2524($fp)
	lw $t0, -2524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2528($fp)
	li $t0, 2
	sw $t0, -2532($fp)
	li $t0, 4
	lw $t1, -2532($fp)
	mul $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	lw $t1, -2528($fp)
	add $t0, $t0, $t1
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	lw $t1, 0($t0)
	sw $t1, -2544($fp)
	lw $t0, -2544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2548($fp)
	li $t0, 3
	sw $t0, -2552($fp)
	li $t0, 4
	lw $t1, -2552($fp)
	mul $t0, $t0, $t1
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	lw $t1, -2548($fp)
	add $t0, $t0, $t1
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	lw $t1, 0($t0)
	sw $t1, -2564($fp)
	lw $t0, -2564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2568($fp)
	li $t0, 4
	sw $t0, -2572($fp)
	li $t0, 4
	lw $t1, -2572($fp)
	mul $t0, $t0, $t1
	sw $t0, -2576($fp)
	lw $t0, -2576($fp)
	lw $t1, -2568($fp)
	add $t0, $t0, $t1
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	lw $t1, 0($t0)
	sw $t1, -2584($fp)
	lw $t0, -2584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2588($fp)
	li $t0, 5
	sw $t0, -2592($fp)
	li $t0, 4
	lw $t1, -2592($fp)
	mul $t0, $t0, $t1
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	lw $t1, -2588($fp)
	add $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $t0, -2600($fp)
	lw $t1, 0($t0)
	sw $t1, -2604($fp)
	lw $t0, -2604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2608($fp)
	li $t0, 6
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
	addi $t0, $fp, -80
	sw $t0, -2628($fp)
	li $t0, 7
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
	addi $t0, $fp, -80
	sw $t0, -2648($fp)
	li $t0, 8
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
	addi $t0, $fp, -80
	sw $t0, -2668($fp)
	li $t0, 9
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
	lw $t0, -652($fp)
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -664($fp)
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2708($fp)
	li $t0, 3945
	sw $t0, -2712($fp)
	lw $t0, -376($fp)
	sw $t0, -2716($fp)
	lw $t0, -2712($fp)
	lw $t1, -2716($fp)
	mul $t0, $t0, $t1
	sw $t0, -2720($fp)
	li $t0, 51539
	sw $t0, -2724($fp)
	lw $t0, -2720($fp)
	lw $t1, -2724($fp)
	add $t0, $t0, $t1
	sw $t0, -2728($fp)
	li $t0, 0
	sw $t0, -2732($fp)
	li $t0, 4668
	sw $t0, -2736($fp)
	lw $t0, -352($fp)
	sw $t0, -2740($fp)
	lw $t0, -2736($fp)
	lw $t1, -2740($fp)
	add $t0, $t0, $t1
	sw $t0, -2744($fp)
	li $t0, 58886
	sw $t0, -2748($fp)
	lw $t1, -2744($fp)
	lw $t2, -2748($fp)
	ble $t1, $t2, label194
	j label195
label194:
	li $t0, 1
	sw $t0, -2732($fp)
label195:
	lw $t0, -340($fp)
	sw $t0, -2752($fp)
	lw $t0, 12($fp)
	sw $t0, -2756($fp)
	lw $t0, -688($fp)
	sw $t0, -2760($fp)
	lw $t0, -2756($fp)
	lw $t1, -2760($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2764($fp)
	lw $t0, -376($fp)
	sw $t0, -2768($fp)
	lw $t0, -2764($fp)
	lw $t1, -2768($fp)
	sub $t0, $t0, $t1
	sw $t0, -2772($fp)
	addi $sp, $sp, -4
	lw $t0, -2732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2772($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2776($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -2780($fp)
	li $t0, 55986
	sw $t0, -2784($fp)
	lw $t1, -2784($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label197
label196:
	li $t0, 1
	sw $t0, -2780($fp)
label197:
	addi $sp, $sp, -4
	lw $t0, -2728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2780($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2788($fp)
	addi $sp, $sp, 16
	lw $t1, -2788($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label192
label192:
	li $t0, 1
	sw $t0, -2708($fp)
label193:
	lw $ra, -4($fp)
	lw $v0, -2708($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -388
	li $t0, 54774
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	li $t0, 47936
	sw $t0, -36($fp)
	addi $t0, $fp, -20
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
	li $t0, 62476
	sw $t0, -60($fp)
	addi $t0, $fp, -20
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
	li $t0, 63496
	sw $t0, -84($fp)
	addi $t0, $fp, -20
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
	li $t0, 4000
	sw $t0, -108($fp)
	addi $t0, $fp, -20
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
	li $t0, 45767
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	li $t0, 6610
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	li $t0, 0
	sw $t0, -156($fp)
	lw $t0, -136($fp)
	sw $t0, -160($fp)
	li $t0, 0
	lw $t1, -160($fp)
	sub $t0, $t0, $t1
	sw $t0, -164($fp)
	li $t0, 33721
	sw $t0, -168($fp)
	lw $t1, -164($fp)
	lw $t2, -168($fp)
	beq $t1, $t2, label198
	j label199
label198:
	li $t0, 1
	sw $t0, -156($fp)
label199:
	li $t0, 0
	sw $t0, -172($fp)
	lw $t0, -136($fp)
	sw $t0, -176($fp)
	li $t0, 0
	lw $t1, -176($fp)
	sub $t0, $t0, $t1
	sw $t0, -180($fp)
	li $t0, 28524
	sw $t0, -184($fp)
	lw $t1, -180($fp)
	lw $t2, -184($fp)
	bgt $t1, $t2, label204
	j label202
label204:
	li $t0, 25270
	sw $t0, -188($fp)
	lw $t1, -188($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label202
label203:
	li $t0, 63368
	sw $t0, -192($fp)
	lw $t0, -148($fp)
	sw $t0, -196($fp)
	lw $t1, -192($fp)
	lw $t2, -196($fp)
	bge $t1, $t2, label200
	j label202
label202:
	lw $t0, -136($fp)
	sw $t0, -200($fp)
	lw $t0, -148($fp)
	sw $t0, -204($fp)
	lw $t0, -200($fp)
	lw $t1, -204($fp)
	add $t0, $t0, $t1
	sw $t0, -208($fp)
	lw $t0, -148($fp)
	sw $t0, -212($fp)
	li $t0, 0
	lw $t1, -212($fp)
	sub $t0, $t0, $t1
	sw $t0, -216($fp)
	lw $t0, -208($fp)
	lw $t1, -216($fp)
	add $t0, $t0, $t1
	sw $t0, -220($fp)
	lw $t1, -220($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -172($fp)
label201:
	lw $t0, -28($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -228($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
	sw $t0, -248($fp)
	li $t0, 1
	sw $t0, -252($fp)
	li $t0, 4
	lw $t1, -252($fp)
	mul $t0, $t0, $t1
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	lw $t1, -248($fp)
	add $t0, $t0, $t1
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	lw $t1, 0($t0)
	sw $t1, -264($fp)
	lw $t0, -264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -268($fp)
	li $t0, 2
	sw $t0, -272($fp)
	li $t0, 4
	lw $t1, -272($fp)
	mul $t0, $t0, $t1
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	lw $t1, -268($fp)
	add $t0, $t0, $t1
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	lw $t1, 0($t0)
	sw $t1, -284($fp)
	lw $t0, -284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -288($fp)
	li $t0, 3
	sw $t0, -292($fp)
	li $t0, 4
	lw $t1, -292($fp)
	mul $t0, $t0, $t1
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	lw $t1, -288($fp)
	add $t0, $t0, $t1
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	lw $t1, 0($t0)
	sw $t1, -304($fp)
	lw $t0, -304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -316($fp)
	jal f7
	sw $v0, -320($fp)
	addi $sp, $sp, 4
	lw $t1, -320($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label205
label205:
	li $t0, 1
	sw $t0, -316($fp)
label206:
	addi $t0, $fp, -20
	sw $t0, -324($fp)
	li $t0, 1
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
	li $t0, 0
	lw $t1, -340($fp)
	sub $t0, $t0, $t1
	sw $t0, -344($fp)
	lw $t0, -316($fp)
	lw $t1, -344($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -348($fp)
	lw $t0, -148($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -356($fp)
	li $t0, 0
	sw $t0, -360($fp)
	li $t0, 23425
	sw $t0, -364($fp)
	lw $t1, -364($fp)
	li $t2, 0
	bne $t1, $t2, label207
	j label208
label207:
	li $t0, 1
	sw $t0, -360($fp)
label208:
	li $t0, 0
	sw $t0, -368($fp)
	lw $t0, -28($fp)
	sw $t0, -372($fp)
	li $t0, 64241
	sw $t0, -376($fp)
	lw $t0, -372($fp)
	lw $t1, -376($fp)
	add $t0, $t0, $t1
	sw $t0, -380($fp)
	lw $t1, -380($fp)
	li $t2, 0
	bne $t1, $t2, label209
	j label211
label211:
	li $t0, 3716
	sw $t0, -384($fp)
	lw $t1, -384($fp)
	li $t2, 0
	bne $t1, $t2, label209
	j label210
label209:
	li $t0, 1
	sw $t0, -368($fp)
label210:
	addi $sp, $sp, -4
	lw $t0, -356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -368($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -388($fp)
	addi $sp, $sp, 16
	lw $t0, -348($fp)
	lw $t1, -388($fp)
	sub $t0, $t0, $t1
	sw $t0, -392($fp)
	lw $ra, -4($fp)
	lw $v0, -392($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1388
	li $t0, 55357
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
	li $t0, 40727
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
	li $t0, 37110
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
	li $t0, 52111
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
	li $t0, 41204
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
	li $t0, 40515
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	li $t0, 42374
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	li $t0, 24820
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	li $t0, 46144
	sw $t0, -232($fp)
	addi $t0, $fp, -204
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
	li $t0, 13269
	sw $t0, -256($fp)
	addi $t0, $fp, -204
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
	li $t0, 15270
	sw $t0, -280($fp)
	addi $t0, $fp, -204
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
	li $t0, 50812
	sw $t0, -304($fp)
	addi $t0, $fp, -204
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
	li $t0, 6619
	sw $t0, -328($fp)
	addi $t0, $fp, -204
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
	li $t0, 19216
	sw $t0, -352($fp)
	addi $t0, $fp, -204
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
	li $t0, 36815
	sw $t0, -376($fp)
	addi $t0, $fp, -204
	sw $t0, -380($fp)
	li $t0, 6
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
	li $t0, 61393
	sw $t0, -400($fp)
	addi $t0, $fp, -204
	sw $t0, -404($fp)
	li $t0, 7
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
	li $t0, 1616
	sw $t0, -424($fp)
	addi $t0, $fp, -204
	sw $t0, -428($fp)
	li $t0, 8
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
	li $t0, 33756
	sw $t0, -448($fp)
	addi $t0, $fp, -216
	sw $t0, -452($fp)
	li $t0, 0
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
	li $t0, 59353
	sw $t0, -472($fp)
	addi $t0, $fp, -216
	sw $t0, -476($fp)
	li $t0, 1
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
	li $t0, 5617
	sw $t0, -496($fp)
	addi $t0, $fp, -216
	sw $t0, -500($fp)
	li $t0, 2
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
	li $t0, 13987
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
label212:
	li $t0, 0
	sw $t0, -532($fp)
	addi $t0, $fp, -204
	sw $t0, -536($fp)
	li $t0, 2
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
	lw $t1, -552($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label216
label216:
	li $t0, 1
	sw $t0, -532($fp)
label217:
	li $t0, 42512
	sw $t0, -556($fp)
	lw $t0, -532($fp)
	lw $t1, -556($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -560($fp)
	lw $t1, -560($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label214
label215:
	addi $t0, $fp, -24
	sw $t0, -564($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -584($fp)
	lw $t0, -524($fp)
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
	lw $t1, -580($fp)
	lw $t2, -600($fp)
	ble $t1, $t2, label213
	j label214
label213:
label218:
	li $t0, 56892
	sw $t0, -604($fp)
	li $t0, 0
	sw $t0, -608($fp)
	lw $t0, -524($fp)
	sw $t0, -612($fp)
	lw $t1, -612($fp)
	li $t2, 0
	bne $t1, $t2, label222
	j label221
label221:
	li $t0, 1
	sw $t0, -608($fp)
label222:
	lw $t0, -604($fp)
	lw $t1, -608($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -616($fp)
	li $t0, 63579
	sw $t0, -620($fp)
	lw $t0, -616($fp)
	lw $t1, -620($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -624($fp)
	li $t0, 0
	sw $t0, -628($fp)
	li $t0, 21468
	sw $t0, -632($fp)
	lw $t0, 12($fp)
	sw $t0, -636($fp)
	lw $t0, -164($fp)
	sw $t0, -640($fp)
	li $t0, 35876
	sw $t0, -644($fp)
	lw $t0, -640($fp)
	lw $t1, -644($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -648($fp)
	li $t0, 60608
	sw $t0, -652($fp)
	lw $t0, -648($fp)
	lw $t1, -652($fp)
	mul $t0, $t0, $t1
	sw $t0, -656($fp)
	addi $sp, $sp, -4
	lw $t0, -632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -656($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -660($fp)
	addi $sp, $sp, 16
	lw $t1, -660($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label223
label223:
	li $t0, 1
	sw $t0, -628($fp)
label224:
	lw $t0, 12($fp)
	sw $t0, -664($fp)
	lw $t0, -628($fp)
	lw $t1, -664($fp)
	mul $t0, $t0, $t1
	sw $t0, -668($fp)
	lw $t0, -624($fp)
	lw $t1, -668($fp)
	sub $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $t1, -672($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label220
label219:
	li $t0, 0
	sw $t0, -676($fp)
	addi $t0, $fp, -24
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
	li $t0, 0
	lw $t1, -696($fp)
	sub $t0, $t0, $t1
	sw $t0, -700($fp)
	li $t0, 58579
	sw $t0, -704($fp)
	li $t0, 0
	lw $t1, -704($fp)
	sub $t0, $t0, $t1
	sw $t0, -708($fp)
	li $t0, 12273
	sw $t0, -712($fp)
	lw $t0, -708($fp)
	lw $t1, -712($fp)
	sub $t0, $t0, $t1
	sw $t0, -716($fp)
	lw $t1, -700($fp)
	lw $t2, -716($fp)
	bne $t1, $t2, label225
	j label227
label227:
	li $t0, 11468
	sw $t0, -720($fp)
	lw $t0, -224($fp)
	sw $t0, -724($fp)
	lw $t0, -720($fp)
	lw $t1, -724($fp)
	mul $t0, $t0, $t1
	sw $t0, -728($fp)
	li $t0, 33558
	sw $t0, -732($fp)
	lw $t0, -728($fp)
	lw $t1, -732($fp)
	mul $t0, $t0, $t1
	sw $t0, -736($fp)
	lw $t0, -152($fp)
	sw $t0, -740($fp)
	li $t0, 54647
	sw $t0, -744($fp)
	lw $t0, -740($fp)
	lw $t1, -744($fp)
	add $t0, $t0, $t1
	sw $t0, -748($fp)
	lw $t1, -736($fp)
	lw $t2, -748($fp)
	beq $t1, $t2, label225
	j label226
label225:
	li $t0, 1
	sw $t0, -676($fp)
label226:
	j label218
label220:
	j label212
label214:
	lw $t0, -152($fp)
	sw $t0, -752($fp)
	lw $t0, 4($fp)
	sw $t0, -756($fp)
	li $t0, 36288
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	li $t0, 14166
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	li $t0, 0
	sw $t0, -784($fp)
	li $t0, 2380
	sw $t0, -788($fp)
	lw $t1, -788($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label228
label228:
	li $t0, 1
	sw $t0, -784($fp)
label229:
	li $t0, 0
	sw $t0, -792($fp)
	li $t0, 0
	sw $t0, -796($fp)
	lw $t0, -776($fp)
	sw $t0, -800($fp)
	li $t0, 51558
	sw $t0, -804($fp)
	lw $t0, -800($fp)
	lw $t1, -804($fp)
	mul $t0, $t0, $t1
	sw $t0, -808($fp)
	li $t0, 0
	sw $t0, -812($fp)
	lw $t0, -164($fp)
	sw $t0, -816($fp)
	lw $t1, -816($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label234
label234:
	li $t0, 1
	sw $t0, -812($fp)
label235:
	lw $t1, -808($fp)
	lw $t2, -812($fp)
	beq $t1, $t2, label232
	j label233
label232:
	li $t0, 1
	sw $t0, -796($fp)
label233:
	lw $t0, -524($fp)
	sw $t0, -820($fp)
	lw $t0, -764($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -828($fp)
	li $t0, 64978
	sw $t0, -832($fp)
	lw $t0, -764($fp)
	sw $t0, -836($fp)
	lw $t0, -832($fp)
	lw $t1, -836($fp)
	mul $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t0, 4($fp)
	sw $t0, -844($fp)
	lw $t0, -840($fp)
	lw $t1, -844($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -848($fp)
	addi $sp, $sp, -4
	lw $t0, -820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -848($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -852($fp)
	addi $sp, $sp, 16
	jal f7
	sw $v0, -856($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -856($fp)
	sub $t0, $t0, $t1
	sw $t0, -860($fp)
	li $t0, 0
	sw $t0, -864($fp)
	li $t0, 5238
	sw $t0, -868($fp)
	li $t0, 0
	lw $t1, -868($fp)
	sub $t0, $t0, $t1
	sw $t0, -872($fp)
	li $t0, 36257
	sw $t0, -876($fp)
	lw $t1, -872($fp)
	lw $t2, -876($fp)
	beq $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -864($fp)
label237:
	li $t0, 0
	sw $t0, -880($fp)
	addi $t0, $fp, -24
	sw $t0, -884($fp)
	lw $t0, -152($fp)
	sw $t0, -888($fp)
	li $t0, 4
	lw $t1, -888($fp)
	mul $t0, $t0, $t1
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	lw $t1, -884($fp)
	add $t0, $t0, $t1
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	lw $t1, 0($t0)
	sw $t1, -900($fp)
	li $t0, 9000
	sw $t0, -904($fp)
	lw $t1, -900($fp)
	lw $t2, -904($fp)
	beq $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -880($fp)
label239:
	addi $sp, $sp, -4
	lw $t0, -860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -880($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -908($fp)
	addi $sp, $sp, 16
	lw $t0, -852($fp)
	lw $t1, -908($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -912($fp)
	li $t0, 0
	lw $t1, -912($fp)
	sub $t0, $t0, $t1
	sw $t0, -916($fp)
	lw $t1, -796($fp)
	lw $t2, -916($fp)
	bne $t1, $t2, label230
	j label231
label230:
	li $t0, 1
	sw $t0, -792($fp)
label231:
	lw $t0, -224($fp)
	sw $t0, -920($fp)
	lw $t0, -524($fp)
	sw $t0, -924($fp)
	lw $t0, -920($fp)
	lw $t1, -924($fp)
	mul $t0, $t0, $t1
	sw $t0, -928($fp)
	li $t0, 6855
	sw $t0, -932($fp)
	lw $t0, -928($fp)
	lw $t1, -932($fp)
	sub $t0, $t0, $t1
	sw $t0, -936($fp)
	lw $t0, -152($fp)
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -944($fp)
	li $t0, 0
	sw $t0, -948($fp)
	li $t0, 4857
	sw $t0, -952($fp)
	lw $t1, -952($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label241
label242:
	lw $t0, -152($fp)
	sw $t0, -956($fp)
	lw $t1, -956($fp)
	li $t2, 0
	bne $t1, $t2, label240
	j label241
label240:
	li $t0, 1
	sw $t0, -948($fp)
label241:
	addi $sp, $sp, -4
	lw $t0, -936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -948($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -960($fp)
	addi $sp, $sp, 16
	lw $t0, -224($fp)
	sw $t0, -964($fp)
	lw $t0, -960($fp)
	lw $t1, -964($fp)
	add $t0, $t0, $t1
	sw $t0, -968($fp)
	lw $t0, -224($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -204
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
	addi $t0, $fp, -204
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
	addi $t0, $fp, -204
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
	addi $t0, $fp, -204
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
	addi $t0, $fp, -204
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
	addi $t0, $fp, -204
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
	addi $t0, $fp, -204
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
	addi $t0, $fp, -204
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
	addi $t0, $fp, -204
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
	addi $t0, $fp, -216
	sw $t0, -1156($fp)
	li $t0, 0
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
	lw $t0, -1172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -1176($fp)
	li $t0, 1
	sw $t0, -1180($fp)
	li $t0, 4
	lw $t1, -1180($fp)
	mul $t0, $t0, $t1
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	lw $t1, -1176($fp)
	add $t0, $t0, $t1
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	lw $t1, 0($t0)
	sw $t1, -1192($fp)
	lw $t0, -1192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -1196($fp)
	li $t0, 2
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
	lw $t0, -1212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -1220($fp)
	jal f7
	sw $v0, -1224($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1224($fp)
	sub $t0, $t0, $t1
	sw $t0, -1228($fp)
	li $t0, 4
	lw $t1, -1228($fp)
	mul $t0, $t0, $t1
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	lw $t1, -1220($fp)
	add $t0, $t0, $t1
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	lw $t1, 0($t0)
	sw $t1, -1240($fp)
	lw $ra, -4($fp)
	lw $v0, -1240($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -24
	sw $t0, -1244($fp)
	li $t0, 0
	sw $t0, -1248($fp)
	li $t0, 4
	lw $t1, -1248($fp)
	mul $t0, $t0, $t1
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	lw $t1, -1244($fp)
	add $t0, $t0, $t1
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	lw $t1, 0($t0)
	sw $t1, -1260($fp)
	lw $t0, -1260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1264($fp)
	li $t0, 1
	sw $t0, -1268($fp)
	li $t0, 4
	lw $t1, -1268($fp)
	mul $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	lw $t1, -1264($fp)
	add $t0, $t0, $t1
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	lw $t1, 0($t0)
	sw $t1, -1280($fp)
	lw $t0, -1280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1284($fp)
	li $t0, 2
	sw $t0, -1288($fp)
	li $t0, 4
	lw $t1, -1288($fp)
	mul $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	lw $t1, -1284($fp)
	add $t0, $t0, $t1
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	lw $t1, 0($t0)
	sw $t1, -1300($fp)
	lw $t0, -1300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1304($fp)
	li $t0, 3
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
	lw $t0, -1320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1324($fp)
	li $t0, 4
	sw $t0, -1328($fp)
	li $t0, 4
	lw $t1, -1328($fp)
	mul $t0, $t0, $t1
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	lw $t1, -1324($fp)
	add $t0, $t0, $t1
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	lw $t1, 0($t0)
	sw $t1, -1340($fp)
	lw $t0, -1340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -152($fp)
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -164($fp)
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1352($fp)
	addi $t0, $fp, -24
	sw $t0, -1356($fp)
	lw $t0, -164($fp)
	sw $t0, -1360($fp)
	li $t0, 4
	lw $t1, -1360($fp)
	mul $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	lw $t1, -1356($fp)
	add $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	lw $t1, 0($t0)
	sw $t1, -1372($fp)
	lw $t0, 12($fp)
	sw $t0, -1376($fp)
	lw $t0, -1372($fp)
	lw $t1, -1376($fp)
	sub $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $t1, -1380($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label244
label245:
	li $t0, 4477
	sw $t0, -1384($fp)
	li $t0, 64211
	sw $t0, -1388($fp)
	lw $t1, -1384($fp)
	lw $t2, -1388($fp)
	blt $t1, $t2, label243
	j label244
label243:
	li $t0, 1
	sw $t0, -1352($fp)
label244:
	lw $t0, -1352($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -1392($fp)
	lw $ra, -4($fp)
	lw $v0, -1392($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -604
	li $t0, 12472
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
	li $t0, 18465
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
	li $t0, 64638
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
	li $t0, 51810
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
	li $t0, 60977
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
	li $t0, 24800
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
	li $t0, 23445
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 52333
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	li $t0, 22844
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	li $t0, 59322
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	li $t0, 47406
	sw $t0, -224($fp)
	li $t0, 0
	sw $t0, -228($fp)
	addi $t0, $fp, -28
	sw $t0, -232($fp)
	lw $t0, -204($fp)
	sw $t0, -236($fp)
	li $t0, 4
	lw $t1, -236($fp)
	mul $t0, $t0, $t1
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	lw $t1, -232($fp)
	add $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	lw $t1, 0($t0)
	sw $t1, -248($fp)
	lw $t1, -248($fp)
	li $t2, 0
	bne $t1, $t2, label250
	j label249
label249:
	li $t0, 1
	sw $t0, -228($fp)
label250:
	lw $t0, -216($fp)
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -256($fp)
	li $t0, 0
	sw $t0, -260($fp)
	li $t0, 44312
	sw $t0, -264($fp)
	li $t0, 19484
	sw $t0, -268($fp)
	lw $t0, -264($fp)
	lw $t1, -268($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -272($fp)
	li $t0, 17670
	sw $t0, -276($fp)
	lw $t1, -272($fp)
	lw $t2, -276($fp)
	blt $t1, $t2, label251
	j label252
label251:
	li $t0, 1
	sw $t0, -260($fp)
label252:
	addi $sp, $sp, -4
	lw $t0, -228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -260($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -280($fp)
	addi $sp, $sp, 16
	lw $t0, -224($fp)
	lw $t1, -280($fp)
	sub $t0, $t0, $t1
	sw $t0, -284($fp)
	lw $t1, -284($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label247
label246:
	jal f7
	sw $v0, -288($fp)
	addi $sp, $sp, 4
	j label248
label247:
	li $t0, 0
	sw $t0, -292($fp)
	addi $t0, $fp, -28
	sw $t0, -296($fp)
	lw $t0, -180($fp)
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
	li $t0, 37355
	sw $t0, -316($fp)
	lw $t0, -312($fp)
	lw $t1, -316($fp)
	mul $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t0, -180($fp)
	sw $t0, -324($fp)
	li $t0, 19543
	sw $t0, -328($fp)
	lw $t0, -324($fp)
	lw $t1, -328($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -332($fp)
	lw $t0, -180($fp)
	sw $t0, -336($fp)
	lw $t0, -332($fp)
	lw $t1, -336($fp)
	sub $t0, $t0, $t1
	sw $t0, -340($fp)
	lw $t0, 4($fp)
	sw $t0, -344($fp)
	li $t0, 65426
	sw $t0, -348($fp)
	lw $t0, -344($fp)
	lw $t1, -348($fp)
	mul $t0, $t0, $t1
	sw $t0, -352($fp)
	lw $t0, 4($fp)
	sw $t0, -356($fp)
	lw $t0, -352($fp)
	lw $t1, -356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -360($fp)
	lw $t0, -180($fp)
	sw $t0, -364($fp)
	li $t0, 0
	lw $t1, -364($fp)
	sub $t0, $t0, $t1
	sw $t0, -368($fp)
	addi $t0, $fp, -28
	sw $t0, -372($fp)
	lw $t0, -180($fp)
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
	li $t0, 20868
	sw $t0, -392($fp)
	lw $t0, -388($fp)
	lw $t1, -392($fp)
	mul $t0, $t0, $t1
	sw $t0, -396($fp)
	li $t0, 0
	sw $t0, -400($fp)
	li $t0, 0
	sw $t0, -404($fp)
	li $t0, 31757
	sw $t0, -408($fp)
	li $t0, 29138
	sw $t0, -412($fp)
	lw $t1, -408($fp)
	lw $t2, -412($fp)
	bgt $t1, $t2, label257
	j label258
label257:
	li $t0, 1
	sw $t0, -404($fp)
label258:
	li $t0, 5377
	sw $t0, -416($fp)
	lw $t1, -404($fp)
	lw $t2, -416($fp)
	beq $t1, $t2, label255
	j label256
label255:
	li $t0, 1
	sw $t0, -400($fp)
label256:
	addi $sp, $sp, -4
	lw $t0, -368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -400($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -420($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -420($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -424($fp)
	addi $sp, $sp, 16
	lw $t0, -320($fp)
	lw $t1, -424($fp)
	mul $t0, $t0, $t1
	sw $t0, -428($fp)
	li $t0, 0
	sw $t0, -432($fp)
	lw $t0, -180($fp)
	sw $t0, -436($fp)
	lw $t1, -436($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label259
label259:
	li $t0, 1
	sw $t0, -432($fp)
label260:
	lw $t0, -428($fp)
	lw $t1, -432($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -440($fp)
	jal f7
	sw $v0, -444($fp)
	addi $sp, $sp, 4
	lw $t0, -180($fp)
	sw $t0, -448($fp)
	lw $t0, -444($fp)
	lw $t1, -448($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -452($fp)
	li $t0, 0
	lw $t1, -452($fp)
	sub $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t1, -440($fp)
	lw $t2, -456($fp)
	bgt $t1, $t2, label253
	j label254
label253:
	li $t0, 1
	sw $t0, -292($fp)
label254:
label248:
	addi $t0, $fp, -28
	sw $t0, -460($fp)
	li $t0, 0
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
	lw $t0, -476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -480($fp)
	li $t0, 1
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
	lw $t0, -496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -500($fp)
	li $t0, 2
	sw $t0, -504($fp)
	li $t0, 4
	lw $t1, -504($fp)
	mul $t0, $t0, $t1
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	lw $t1, -500($fp)
	add $t0, $t0, $t1
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	lw $t1, 0($t0)
	sw $t1, -516($fp)
	lw $t0, -516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -520($fp)
	li $t0, 3
	sw $t0, -524($fp)
	li $t0, 4
	lw $t1, -524($fp)
	mul $t0, $t0, $t1
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	lw $t1, -520($fp)
	add $t0, $t0, $t1
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	lw $t1, 0($t0)
	sw $t1, -536($fp)
	lw $t0, -536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -540($fp)
	li $t0, 4
	sw $t0, -544($fp)
	li $t0, 4
	lw $t1, -544($fp)
	mul $t0, $t0, $t1
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	lw $t1, -540($fp)
	add $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	lw $t1, 0($t0)
	sw $t1, -556($fp)
	lw $t0, -556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -560($fp)
	li $t0, 5
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
	lw $t0, -576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -216($fp)
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	jal f7
	sw $v0, -596($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -596($fp)
	sub $t0, $t0, $t1
	sw $t0, -600($fp)
	lw $t0, -192($fp)
	sw $t0, -604($fp)
	lw $t0, -600($fp)
	lw $t1, -604($fp)
	add $t0, $t0, $t1
	sw $t0, -608($fp)
	lw $ra, -4($fp)
	lw $v0, -608($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -200
	li $t0, 23249
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
	li $t0, 51448
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
	li $t0, 18985
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
	li $t0, 32249
	sw $t0, -92($fp)
	li $t0, 0
	lw $t1, -92($fp)
	sub $t0, $t0, $t1
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -100($fp)
	addi $t0, $fp, -16
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
	lw $t0, -120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -124($fp)
	li $t0, 1
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
	addi $t0, $fp, -16
	sw $t0, -144($fp)
	li $t0, 2
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
	li $t0, 0
	sw $t0, -164($fp)
	li $t0, 0
	sw $t0, -168($fp)
	li $t0, 56687
	sw $t0, -172($fp)
	lw $t0, 4($fp)
	sw $t0, -176($fp)
	lw $t1, -172($fp)
	lw $t2, -176($fp)
	ble $t1, $t2, label263
	j label264
label263:
	li $t0, 1
	sw $t0, -168($fp)
label264:
	li $t0, 0
	sw $t0, -180($fp)
	li $t0, 55243
	sw $t0, -184($fp)
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
	lw $t1, -184($fp)
	lw $t2, -204($fp)
	blt $t1, $t2, label265
	j label266
label265:
	li $t0, 1
	sw $t0, -180($fp)
label266:
	lw $t1, -168($fp)
	lw $t2, -180($fp)
	beq $t1, $t2, label261
	j label262
label261:
	li $t0, 1
	sw $t0, -164($fp)
label262:
	lw $ra, -4($fp)
	lw $v0, -164($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -8
	lw $t0, 4($fp)
	sw $t0, -8($fp)
	li $t0, 0
	lw $t1, -8($fp)
	sub $t0, $t0, $t1
	sw $t0, -12($fp)
	lw $ra, -4($fp)
	lw $v0, -12($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -8168
	li $t0, 59720
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	li $t0, 35781
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	li $t0, 10478
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	li $t0, 12649
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	li $t0, 34884
	sw $t0, -288($fp)
	addi $t0, $fp, -20
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
	li $t0, 62288
	sw $t0, -312($fp)
	addi $t0, $fp, -20
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
	li $t0, 8090
	sw $t0, -336($fp)
	addi $t0, $fp, -20
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
	li $t0, 59684
	sw $t0, -360($fp)
	addi $t0, $fp, -20
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
	li $t0, 20198
	sw $t0, -384($fp)
	addi $t0, $fp, -48
	sw $t0, -388($fp)
	li $t0, 0
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
	li $t0, 60424
	sw $t0, -408($fp)
	addi $t0, $fp, -48
	sw $t0, -412($fp)
	li $t0, 1
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
	li $t0, 16992
	sw $t0, -432($fp)
	addi $t0, $fp, -48
	sw $t0, -436($fp)
	li $t0, 2
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
	li $t0, 13984
	sw $t0, -456($fp)
	addi $t0, $fp, -48
	sw $t0, -460($fp)
	li $t0, 3
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
	li $t0, 42294
	sw $t0, -480($fp)
	addi $t0, $fp, -48
	sw $t0, -484($fp)
	li $t0, 4
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
	li $t0, 61305
	sw $t0, -504($fp)
	addi $t0, $fp, -48
	sw $t0, -508($fp)
	li $t0, 5
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
	li $t0, 33468
	sw $t0, -528($fp)
	addi $t0, $fp, -48
	sw $t0, -532($fp)
	li $t0, 6
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
	li $t0, 59964
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	li $t0, 33124
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	li $t0, 65225
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	li $t0, 23566
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	li $t0, 38502
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	li $t0, 20557
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -620($fp)
	li $t0, 23456
	sw $t0, -624($fp)
	addi $t0, $fp, -80
	sw $t0, -628($fp)
	li $t0, 0
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
	li $t0, 58045
	sw $t0, -648($fp)
	addi $t0, $fp, -80
	sw $t0, -652($fp)
	li $t0, 1
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
	li $t0, 43806
	sw $t0, -672($fp)
	addi $t0, $fp, -80
	sw $t0, -676($fp)
	li $t0, 2
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
	li $t0, 9368
	sw $t0, -696($fp)
	addi $t0, $fp, -80
	sw $t0, -700($fp)
	li $t0, 3
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
	li $t0, 11495
	sw $t0, -720($fp)
	addi $t0, $fp, -80
	sw $t0, -724($fp)
	li $t0, 4
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
	li $t0, 10519
	sw $t0, -744($fp)
	addi $t0, $fp, -80
	sw $t0, -748($fp)
	li $t0, 5
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
	li $t0, 519
	sw $t0, -768($fp)
	addi $t0, $fp, -80
	sw $t0, -772($fp)
	li $t0, 6
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
	li $t0, 1202
	sw $t0, -792($fp)
	addi $t0, $fp, -80
	sw $t0, -796($fp)
	li $t0, 7
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -804($fp)
	lw $t0, -796($fp)
	lw $t1, -804($fp)
	add $t0, $t0, $t1
	sw $t0, -808($fp)
	lw $t0, -792($fp)
	lw $t1, -808($fp)
	sw $t0, 0($t1)
	lw $t0, -808($fp)
	lw $t1, 0($t0)
	sw $t1, -812($fp)
	li $t0, 47626
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	li $t0, 64061
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	li $t0, 60922
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	li $t0, 17871
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	li $t0, 9003
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -872($fp)
	li $t0, 8036
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -884($fp)
	li $t0, 52755
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -896($fp)
	li $t0, 5756
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	li $t0, 16126
	sw $t0, -912($fp)
	addi $t0, $fp, -92
	sw $t0, -916($fp)
	li $t0, 0
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
	li $t0, 46904
	sw $t0, -936($fp)
	addi $t0, $fp, -92
	sw $t0, -940($fp)
	li $t0, 1
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
	li $t0, 25954
	sw $t0, -960($fp)
	addi $t0, $fp, -92
	sw $t0, -964($fp)
	li $t0, 2
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
	li $t0, 11014
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	li $t0, 63896
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -1004($fp)
	li $t0, 39938
	sw $t0, -1008($fp)
	addi $t0, $fp, -132
	sw $t0, -1012($fp)
	li $t0, 0
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
	li $t0, 53308
	sw $t0, -1032($fp)
	addi $t0, $fp, -132
	sw $t0, -1036($fp)
	li $t0, 1
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $t0, -1036($fp)
	lw $t1, -1044($fp)
	add $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t0, -1032($fp)
	lw $t1, -1048($fp)
	sw $t0, 0($t1)
	lw $t0, -1048($fp)
	lw $t1, 0($t0)
	sw $t1, -1052($fp)
	li $t0, 59665
	sw $t0, -1056($fp)
	addi $t0, $fp, -132
	sw $t0, -1060($fp)
	li $t0, 2
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
	li $t0, 7870
	sw $t0, -1080($fp)
	addi $t0, $fp, -132
	sw $t0, -1084($fp)
	li $t0, 3
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
	li $t0, 47736
	sw $t0, -1104($fp)
	addi $t0, $fp, -132
	sw $t0, -1108($fp)
	li $t0, 4
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
	li $t0, 27254
	sw $t0, -1128($fp)
	addi $t0, $fp, -132
	sw $t0, -1132($fp)
	li $t0, 5
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
	li $t0, 7559
	sw $t0, -1152($fp)
	addi $t0, $fp, -132
	sw $t0, -1156($fp)
	li $t0, 6
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
	li $t0, 5766
	sw $t0, -1176($fp)
	addi $t0, $fp, -132
	sw $t0, -1180($fp)
	li $t0, 7
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
	li $t0, 220
	sw $t0, -1200($fp)
	addi $t0, $fp, -132
	sw $t0, -1204($fp)
	li $t0, 8
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
	li $t0, 28116
	sw $t0, -1224($fp)
	addi $t0, $fp, -132
	sw $t0, -1228($fp)
	li $t0, 9
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
	li $t0, 29222
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -1256($fp)
	li $t0, 58265
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -1268($fp)
	li $t0, 6387
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	li $t0, 38591
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	li $t0, 4224
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	li $t0, 16906
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -1316($fp)
	li $t0, 39110
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	sw $t0, -1328($fp)
	li $t0, 5426
	sw $t0, -1332($fp)
	addi $t0, $fp, -144
	sw $t0, -1336($fp)
	li $t0, 0
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1344($fp)
	lw $t0, -1336($fp)
	lw $t1, -1344($fp)
	add $t0, $t0, $t1
	sw $t0, -1348($fp)
	lw $t0, -1332($fp)
	lw $t1, -1348($fp)
	sw $t0, 0($t1)
	lw $t0, -1348($fp)
	lw $t1, 0($t0)
	sw $t1, -1352($fp)
	li $t0, 64532
	sw $t0, -1356($fp)
	addi $t0, $fp, -144
	sw $t0, -1360($fp)
	li $t0, 1
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
	li $t0, 37636
	sw $t0, -1380($fp)
	addi $t0, $fp, -144
	sw $t0, -1384($fp)
	li $t0, 2
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
	li $t0, 813
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	sw $t0, -1412($fp)
	li $t0, 16868
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	sw $t0, -1424($fp)
	li $t0, 46639
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	sw $t0, -1436($fp)
	li $t0, 8849
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	sw $t0, -1448($fp)
	li $t0, 4087
	sw $t0, -1452($fp)
	addi $t0, $fp, -180
	sw $t0, -1456($fp)
	li $t0, 0
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
	li $t0, 52395
	sw $t0, -1476($fp)
	addi $t0, $fp, -180
	sw $t0, -1480($fp)
	li $t0, 1
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
	li $t0, 24975
	sw $t0, -1500($fp)
	addi $t0, $fp, -180
	sw $t0, -1504($fp)
	li $t0, 2
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
	li $t0, 50991
	sw $t0, -1524($fp)
	addi $t0, $fp, -180
	sw $t0, -1528($fp)
	li $t0, 3
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
	li $t0, 12813
	sw $t0, -1548($fp)
	addi $t0, $fp, -180
	sw $t0, -1552($fp)
	li $t0, 4
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
	li $t0, 35990
	sw $t0, -1572($fp)
	addi $t0, $fp, -180
	sw $t0, -1576($fp)
	li $t0, 5
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
	li $t0, 49352
	sw $t0, -1596($fp)
	addi $t0, $fp, -180
	sw $t0, -1600($fp)
	li $t0, 6
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
	li $t0, 52751
	sw $t0, -1620($fp)
	addi $t0, $fp, -180
	sw $t0, -1624($fp)
	li $t0, 7
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
	li $t0, 23762
	sw $t0, -1644($fp)
	addi $t0, $fp, -180
	sw $t0, -1648($fp)
	li $t0, 8
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
	li $t0, 43481
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	sw $t0, -1676($fp)
	li $t0, 60621
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	sw $t0, -1688($fp)
	li $t0, 5963
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	sw $t0, -1700($fp)
	li $t0, 5199
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	sw $t0, -1712($fp)
	li $t0, 2644
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	sw $t0, -1724($fp)
	li $t0, 11729
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	sw $t0, -1736($fp)
	li $t0, 5419
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	sw $t0, -1748($fp)
	li $t0, 30761
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	sw $t0, -1760($fp)
	li $t0, 40952
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	sw $t0, -1772($fp)
	li $t0, 63685
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	sw $t0, -1784($fp)
	li $t0, 37148
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	sw $t0, -1796($fp)
	li $t0, 14007
	sw $t0, -1800($fp)
	lw $t0, -1800($fp)
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	sw $t0, -1808($fp)
	li $t0, 2373
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	sw $t0, -1820($fp)
	li $t0, 54054
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	sw $t0, -1832($fp)
	li $t0, 53117
	sw $t0, -1836($fp)
	addi $t0, $fp, -196
	sw $t0, -1840($fp)
	li $t0, 0
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1848($fp)
	lw $t0, -1840($fp)
	lw $t1, -1848($fp)
	add $t0, $t0, $t1
	sw $t0, -1852($fp)
	lw $t0, -1836($fp)
	lw $t1, -1852($fp)
	sw $t0, 0($t1)
	lw $t0, -1852($fp)
	lw $t1, 0($t0)
	sw $t1, -1856($fp)
	li $t0, 7800
	sw $t0, -1860($fp)
	addi $t0, $fp, -196
	sw $t0, -1864($fp)
	li $t0, 1
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1872($fp)
	lw $t0, -1864($fp)
	lw $t1, -1872($fp)
	add $t0, $t0, $t1
	sw $t0, -1876($fp)
	lw $t0, -1860($fp)
	lw $t1, -1876($fp)
	sw $t0, 0($t1)
	lw $t0, -1876($fp)
	lw $t1, 0($t0)
	sw $t1, -1880($fp)
	li $t0, 53051
	sw $t0, -1884($fp)
	addi $t0, $fp, -196
	sw $t0, -1888($fp)
	li $t0, 2
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1896($fp)
	lw $t0, -1888($fp)
	lw $t1, -1896($fp)
	add $t0, $t0, $t1
	sw $t0, -1900($fp)
	lw $t0, -1884($fp)
	lw $t1, -1900($fp)
	sw $t0, 0($t1)
	lw $t0, -1900($fp)
	lw $t1, 0($t0)
	sw $t1, -1904($fp)
	li $t0, 25217
	sw $t0, -1908($fp)
	addi $t0, $fp, -196
	sw $t0, -1912($fp)
	li $t0, 3
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1920($fp)
	lw $t0, -1912($fp)
	lw $t1, -1920($fp)
	add $t0, $t0, $t1
	sw $t0, -1924($fp)
	lw $t0, -1908($fp)
	lw $t1, -1924($fp)
	sw $t0, 0($t1)
	lw $t0, -1924($fp)
	lw $t1, 0($t0)
	sw $t1, -1928($fp)
	li $t0, 8613
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	sw $t0, -1940($fp)
	li $t0, 4383
	sw $t0, -1944($fp)
	addi $t0, $fp, -236
	sw $t0, -1948($fp)
	li $t0, 0
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
	li $t0, 6321
	sw $t0, -1968($fp)
	addi $t0, $fp, -236
	sw $t0, -1972($fp)
	li $t0, 1
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
	li $t0, 17462
	sw $t0, -1992($fp)
	addi $t0, $fp, -236
	sw $t0, -1996($fp)
	li $t0, 2
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
	li $t0, 8470
	sw $t0, -2016($fp)
	addi $t0, $fp, -236
	sw $t0, -2020($fp)
	li $t0, 3
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
	li $t0, 58716
	sw $t0, -2040($fp)
	addi $t0, $fp, -236
	sw $t0, -2044($fp)
	li $t0, 4
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
	li $t0, 42437
	sw $t0, -2064($fp)
	addi $t0, $fp, -236
	sw $t0, -2068($fp)
	li $t0, 5
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t0, -2068($fp)
	lw $t1, -2076($fp)
	add $t0, $t0, $t1
	sw $t0, -2080($fp)
	lw $t0, -2064($fp)
	lw $t1, -2080($fp)
	sw $t0, 0($t1)
	lw $t0, -2080($fp)
	lw $t1, 0($t0)
	sw $t1, -2084($fp)
	li $t0, 59462
	sw $t0, -2088($fp)
	addi $t0, $fp, -236
	sw $t0, -2092($fp)
	li $t0, 6
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $t0, -2092($fp)
	lw $t1, -2100($fp)
	add $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $t0, -2088($fp)
	lw $t1, -2104($fp)
	sw $t0, 0($t1)
	lw $t0, -2104($fp)
	lw $t1, 0($t0)
	sw $t1, -2108($fp)
	li $t0, 5994
	sw $t0, -2112($fp)
	addi $t0, $fp, -236
	sw $t0, -2116($fp)
	li $t0, 7
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t0, -2116($fp)
	lw $t1, -2124($fp)
	add $t0, $t0, $t1
	sw $t0, -2128($fp)
	lw $t0, -2112($fp)
	lw $t1, -2128($fp)
	sw $t0, 0($t1)
	lw $t0, -2128($fp)
	lw $t1, 0($t0)
	sw $t1, -2132($fp)
	li $t0, 12891
	sw $t0, -2136($fp)
	addi $t0, $fp, -236
	sw $t0, -2140($fp)
	li $t0, 8
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t0, -2140($fp)
	lw $t1, -2148($fp)
	add $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2136($fp)
	lw $t1, -2152($fp)
	sw $t0, 0($t1)
	lw $t0, -2152($fp)
	lw $t1, 0($t0)
	sw $t1, -2156($fp)
	li $t0, 43278
	sw $t0, -2160($fp)
	addi $t0, $fp, -236
	sw $t0, -2164($fp)
	li $t0, 9
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2172($fp)
	lw $t0, -2164($fp)
	lw $t1, -2172($fp)
	add $t0, $t0, $t1
	sw $t0, -2176($fp)
	lw $t0, -2160($fp)
	lw $t1, -2176($fp)
	sw $t0, 0($t1)
	lw $t0, -2176($fp)
	lw $t1, 0($t0)
	sw $t1, -2180($fp)
	li $t0, 58745
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	sw $t0, -2192($fp)
	li $t0, 53831
	sw $t0, -2196($fp)
	li $t0, 42617
	sw $t0, -2200($fp)
	lw $t0, -2196($fp)
	lw $t1, -2200($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2204($fp)
	li $t0, 26423
	sw $t0, -2208($fp)
	lw $t0, -2204($fp)
	lw $t1, -2208($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2212($fp)
	addi $sp, $sp, -4
	lw $t0, -2212($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2216($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2220($fp)
	lw $t0, -556($fp)
	sw $t0, -2224($fp)
	li $t0, 0
	lw $t1, -2224($fp)
	sub $t0, $t0, $t1
	sw $t0, -2228($fp)
	lw $t0, -1252($fp)
	sw $t0, -2232($fp)
	lw $t1, -2228($fp)
	lw $t2, -2232($fp)
	beq $t1, $t2, label271
	j label272
label271:
	li $t0, 1
	sw $t0, -2220($fp)
label272:
	addi $t0, $fp, -80
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
	li $t0, 0
	lw $t1, -2252($fp)
	sub $t0, $t0, $t1
	sw $t0, -2256($fp)
	addi $sp, $sp, -4
	lw $t0, -2216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2256($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2260($fp)
	addi $sp, $sp, 16
	lw $t0, -820($fp)
	sw $t0, -2264($fp)
	li $t0, 56475
	sw $t0, -2268($fp)
	lw $t0, -2264($fp)
	lw $t1, -2268($fp)
	mul $t0, $t0, $t1
	sw $t0, -2272($fp)
	lw $t0, -2260($fp)
	lw $t1, -2272($fp)
	sub $t0, $t0, $t1
	sw $t0, -2276($fp)
	li $t0, 54346
	sw $t0, -2280($fp)
	li $t0, 0
	lw $t1, -2280($fp)
	sub $t0, $t0, $t1
	sw $t0, -2284($fp)
	lw $t0, -2188($fp)
	sw $t0, -2288($fp)
	lw $t0, -2284($fp)
	lw $t1, -2288($fp)
	add $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t1, -2276($fp)
	lw $t2, -2292($fp)
	beq $t1, $t2, label267
	j label270
label270:
	lw $t0, -1792($fp)
	sw $t0, -2296($fp)
	addi $t0, $fp, -180
	sw $t0, -2300($fp)
	li $t0, 5
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
	lw $t0, -2296($fp)
	lw $t1, -2316($fp)
	add $t0, $t0, $t1
	sw $t0, -2320($fp)
	lw $t1, -2320($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label268
label267:
	li $t0, 29762
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	sw $t0, -2336($fp)
	li $t0, 29991
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	sw $t0, -2348($fp)
	li $t0, 58848
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	sw $t0, -2360($fp)
	li $t0, 43769
	sw $t0, -2364($fp)
	lw $t0, -2364($fp)
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	sw $t0, -2372($fp)
	li $t0, 32365
	sw $t0, -2376($fp)
	addi $t0, $fp, -2324
	sw $t0, -2380($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -2400($fp)
	li $t0, 0
	sw $t0, -2404($fp)
	lw $t0, -1756($fp)
	sw $t0, -2408($fp)
	lw $t0, -1408($fp)
	sw $t0, -2412($fp)
	lw $t1, -2408($fp)
	lw $t2, -2412($fp)
	beq $t1, $t2, label275
	j label276
label275:
	li $t0, 1
	sw $t0, -2404($fp)
label276:
	li $t0, 34882
	sw $t0, -2416($fp)
	lw $t1, -2404($fp)
	lw $t2, -2416($fp)
	bne $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -2400($fp)
label274:
	li $t0, 0
	sw $t0, -2420($fp)
	li $t0, 40165
	sw $t0, -2424($fp)
	lw $t1, -2424($fp)
	li $t2, 0
	bne $t1, $t2, label280
	j label279
label280:
	lw $t0, -1288($fp)
	sw $t0, -2428($fp)
	lw $t1, -2428($fp)
	li $t2, 0
	bne $t1, $t2, label277
	j label279
label279:
	lw $t0, -1816($fp)
	sw $t0, -2432($fp)
	lw $t1, -2432($fp)
	li $t2, 0
	bne $t1, $t2, label277
	j label278
label277:
	li $t0, 1
	sw $t0, -2420($fp)
label278:
	li $t0, 0
	sw $t0, -2436($fp)
	addi $t0, $fp, -2324
	sw $t0, -2440($fp)
	li $t0, 0
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
	lw $t1, -2456($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label283
label283:
	lw $t0, -820($fp)
	sw $t0, -2460($fp)
	lw $t1, -2460($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label282
label281:
	li $t0, 1
	sw $t0, -2436($fp)
label282:
	addi $sp, $sp, -4
	lw $t0, -2400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2436($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2464($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -2464($fp)
	sub $t0, $t0, $t1
	sw $t0, -2468($fp)
	li $t0, 0
	sw $t0, -2472($fp)
	li $t0, 0
	sw $t0, -2476($fp)
	li $t0, 56568
	sw $t0, -2480($fp)
	lw $t1, -2480($fp)
	li $t2, 0
	bne $t1, $t2, label287
	j label286
label286:
	li $t0, 1
	sw $t0, -2476($fp)
label287:
	li $t0, 0
	lw $t1, -2476($fp)
	sub $t0, $t0, $t1
	sw $t0, -2484($fp)
	lw $t1, -2484($fp)
	li $t2, 0
	bne $t1, $t2, label285
	j label284
label284:
	li $t0, 1
	sw $t0, -2472($fp)
label285:
	li $t0, 0
	lw $t1, -2472($fp)
	sub $t0, $t0, $t1
	sw $t0, -2488($fp)
	lw $t0, -1696($fp)
	sw $t0, -2492($fp)
	lw $t0, -580($fp)
	sw $t0, -2496($fp)
	lw $t0, -2492($fp)
	lw $t1, -2496($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2500($fp)
	li $t0, 39266
	sw $t0, -2504($fp)
	lw $t0, -2500($fp)
	lw $t1, -2504($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2508($fp)
	lw $t0, -2488($fp)
	lw $t1, -2508($fp)
	add $t0, $t0, $t1
	sw $t0, -2512($fp)
	lw $t0, -2332($fp)
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2344($fp)
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2356($fp)
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2368($fp)
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2324
	sw $t0, -2532($fp)
	li $t0, 0
	sw $t0, -2536($fp)
	li $t0, 4
	lw $t1, -2536($fp)
	mul $t0, $t0, $t1
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	lw $t1, -2532($fp)
	add $t0, $t0, $t1
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	lw $t1, 0($t0)
	sw $t1, -2548($fp)
	lw $t0, -2548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2552($fp)
	lw $t0, -2332($fp)
	sw $t0, -2556($fp)
	li $t0, 0
	lw $t1, -2556($fp)
	sub $t0, $t0, $t1
	sw $t0, -2560($fp)
	lw $t0, -2344($fp)
	sw $t0, -2564($fp)
	lw $t0, -2560($fp)
	lw $t1, -2564($fp)
	sub $t0, $t0, $t1
	sw $t0, -2568($fp)
	lw $t1, -2568($fp)
	li $t2, 0
	bne $t1, $t2, label288
	j label290
label290:
	addi $t0, $fp, -80
	sw $t0, -2572($fp)
	lw $t0, -820($fp)
	sw $t0, -2576($fp)
	li $t0, 4
	lw $t1, -2576($fp)
	mul $t0, $t0, $t1
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	lw $t1, -2572($fp)
	add $t0, $t0, $t1
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	lw $t1, 0($t0)
	sw $t1, -2588($fp)
	li $t0, 62889
	sw $t0, -2592($fp)
	lw $t0, -2588($fp)
	lw $t1, -2592($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2596($fp)
	addi $sp, $sp, -4
	lw $t0, -2596($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2600($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2604($fp)
	lw $t0, -1312($fp)
	sw $t0, -2608($fp)
	lw $t1, -2608($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label291
label291:
	li $t0, 1
	sw $t0, -2604($fp)
label292:
	lw $t0, -2600($fp)
	lw $t1, -2604($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2612($fp)
	lw $t1, -2612($fp)
	li $t2, 0
	bne $t1, $t2, label288
	j label289
label288:
	li $t0, 1
	sw $t0, -2552($fp)
label289:
	lw $ra, -4($fp)
	lw $v0, -2552($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -2616($fp)
	li $t0, 0
	sw $t0, -2620($fp)
	li $t0, 704
	sw $t0, -2624($fp)
	lw $t1, -2624($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label298
label298:
	li $t0, 1
	sw $t0, -2620($fp)
label299:
	li $t0, 0
	lw $t1, -2620($fp)
	sub $t0, $t0, $t1
	sw $t0, -2628($fp)
	lw $t1, -2628($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label296
label296:
	li $t0, 1
	sw $t0, -2616($fp)
label297:
	li $t0, 0
	lw $t1, -2616($fp)
	sub $t0, $t0, $t1
	sw $t0, -2632($fp)
	li $t0, 0
	sw $t0, -2636($fp)
	li $t0, 62064
	sw $t0, -2640($fp)
	li $t0, 0
	sw $t0, -2644($fp)
	addi $t0, $fp, -80
	sw $t0, -2648($fp)
	lw $t0, -1288($fp)
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
	lw $t1, -2664($fp)
	li $t2, 0
	bne $t1, $t2, label302
	j label304
label304:
	lw $t0, -1684($fp)
	sw $t0, -2668($fp)
	lw $t1, -2668($fp)
	li $t2, 0
	bne $t1, $t2, label302
	j label303
label302:
	li $t0, 1
	sw $t0, -2644($fp)
label303:
	lw $t0, -1828($fp)
	sw $t0, -2672($fp)
	li $t0, 43141
	sw $t0, -2676($fp)
	lw $t0, -2672($fp)
	lw $t1, -2676($fp)
	mul $t0, $t0, $t1
	sw $t0, -2680($fp)
	li $t0, 0
	lw $t1, -2680($fp)
	sub $t0, $t0, $t1
	sw $t0, -2684($fp)
	li $t0, 0
	sw $t0, -2688($fp)
	lw $t0, -1732($fp)
	sw $t0, -2692($fp)
	lw $t0, -2368($fp)
	sw $t0, -2696($fp)
	lw $t0, -2692($fp)
	lw $t1, -2696($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2700($fp)
	lw $t1, -2700($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label307
label307:
	li $t0, 56070
	sw $t0, -2704($fp)
	lw $t1, -2704($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label306
label305:
	li $t0, 1
	sw $t0, -2688($fp)
label306:
	li $t0, 47735
	sw $t0, -2708($fp)
	lw $t0, -280($fp)
	sw $t0, -2712($fp)
	lw $t0, -2708($fp)
	lw $t1, -2712($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2716($fp)
	lw $t0, 4($fp)
	sw $t0, -2720($fp)
	lw $t0, -2716($fp)
	lw $t1, -2720($fp)
	mul $t0, $t0, $t1
	sw $t0, -2724($fp)
	addi $sp, $sp, -4
	lw $t0, -2684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2724($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2728($fp)
	addi $sp, $sp, 16
	li $t0, 41661
	sw $t0, -2732($fp)
	lw $t0, -2728($fp)
	lw $t1, -2732($fp)
	sub $t0, $t0, $t1
	sw $t0, -2736($fp)
	addi $sp, $sp, -4
	lw $t0, -2640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2736($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2740($fp)
	addi $sp, $sp, 16
	lw $t1, -2740($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label300
label300:
	li $t0, 1
	sw $t0, -2636($fp)
label301:
	addi $sp, $sp, -4
	lw $t0, -2636($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2744($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2748($fp)
	lw $t0, -1696($fp)
	sw $t0, -2752($fp)
	lw $t1, -2752($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label308
label308:
	li $t0, 1
	sw $t0, -2748($fp)
label309:
	lw $t0, -1744($fp)
	sw $t0, -2756($fp)
	lw $t0, -2748($fp)
	lw $t1, -2756($fp)
	add $t0, $t0, $t1
	sw $t0, -2760($fp)
	addi $sp, $sp, -4
	lw $t0, -2760($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2764($fp)
	addi $sp, $sp, 8
	lw $t0, -2744($fp)
	lw $t1, -2764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2768($fp)
	lw $t0, -2632($fp)
	lw $t1, -2768($fp)
	sub $t0, $t0, $t1
	sw $t0, -2772($fp)
	lw $t1, -2772($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label294
label293:
	li $t0, 0
	sw $t0, -2776($fp)
	li $t0, 56033
	sw $t0, -2780($fp)
	lw $t1, -2780($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label311
label310:
	li $t0, 1
	sw $t0, -2776($fp)
label311:
	lw $ra, -4($fp)
	lw $v0, -2776($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label295
label294:
label312:
	li $t0, 0
	sw $t0, -2784($fp)
	lw $t0, -1300($fp)
	sw $t0, -2788($fp)
	li $t0, 0
	lw $t1, -2788($fp)
	sub $t0, $t0, $t1
	sw $t0, -2792($fp)
	lw $t0, -1780($fp)
	sw $t0, -2796($fp)
	lw $t1, -2792($fp)
	lw $t2, -2796($fp)
	blt $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -2784($fp)
label316:
	addi $sp, $sp, -4
	lw $t0, -2784($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2800($fp)
	addi $sp, $sp, 8
	li $t0, 19403
	sw $t0, -2804($fp)
	lw $t0, -2804($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -2808($fp)
	addi $sp, $sp, -4
	lw $t0, -2808($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2812($fp)
	addi $sp, $sp, 8
	lw $t0, -2800($fp)
	lw $t1, -2812($fp)
	mul $t0, $t0, $t1
	sw $t0, -2816($fp)
	lw $t1, -2816($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label314
label313:
	li $t0, 0
	sw $t0, -2820($fp)
	li $t0, 55273
	sw $t0, -2824($fp)
	lw $t1, -2824($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label322
label322:
	li $t0, 27151
	sw $t0, -2828($fp)
	lw $t1, -2828($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label321
label320:
	li $t0, 1
	sw $t0, -2820($fp)
label321:
	addi $sp, $sp, -4
	lw $t0, -2820($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2832($fp)
	addi $sp, $sp, 8
	lw $t1, -2832($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label318
label317:
	lw $t0, -1408($fp)
	sw $t0, -2836($fp)
	lw $t0, -892($fp)
	sw $t0, -2840($fp)
	li $t0, 0
	lw $t1, -2840($fp)
	sub $t0, $t0, $t1
	sw $t0, -2844($fp)
	li $t0, 0
	sw $t0, -2848($fp)
	lw $t0, -580($fp)
	sw $t0, -2852($fp)
	lw $t1, -2852($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label326
label326:
	li $t0, 1
	sw $t0, -2848($fp)
label327:
	lw $t0, -2844($fp)
	lw $t1, -2848($fp)
	sub $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t1, -2836($fp)
	lw $t2, -2856($fp)
	bgt $t1, $t2, label323
	j label324
label323:
	li $t0, 0
	sw $t0, -2860($fp)
	li $t0, 0
	sw $t0, -2864($fp)
	lw $t0, -820($fp)
	sw $t0, -2868($fp)
	lw $t0, -556($fp)
	sw $t0, -2872($fp)
	lw $t0, -2868($fp)
	lw $t1, -2872($fp)
	mul $t0, $t0, $t1
	sw $t0, -2876($fp)
	lw $t1, -2876($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label332
label333:
	lw $t0, -820($fp)
	sw $t0, -2880($fp)
	lw $t1, -2880($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label332
label331:
	li $t0, 1
	sw $t0, -2864($fp)
label332:
	li $t0, 33356
	sw $t0, -2884($fp)
	li $t0, 0
	sw $t0, -2888($fp)
	li $t0, 1514
	sw $t0, -2892($fp)
	li $t0, 34508
	sw $t0, -2896($fp)
	lw $t0, -2892($fp)
	lw $t1, -2896($fp)
	sub $t0, $t0, $t1
	sw $t0, -2900($fp)
	li $t0, 58578
	sw $t0, -2904($fp)
	lw $t0, -2900($fp)
	lw $t1, -2904($fp)
	sub $t0, $t0, $t1
	sw $t0, -2908($fp)
	li $t0, 43568
	sw $t0, -2912($fp)
	li $t0, 4232
	sw $t0, -2916($fp)
	lw $t0, -2912($fp)
	lw $t1, -2916($fp)
	mul $t0, $t0, $t1
	sw $t0, -2920($fp)
	li $t0, 0
	sw $t0, -2924($fp)
	lw $t0, -2356($fp)
	sw $t0, -2928($fp)
	lw $t1, -2928($fp)
	li $t2, 0
	bne $t1, $t2, label336
	j label339
label339:
	lw $t0, -2368($fp)
	sw $t0, -2932($fp)
	lw $t1, -2932($fp)
	li $t2, 0
	bne $t1, $t2, label336
	j label338
label338:
	li $t0, 40627
	sw $t0, -2936($fp)
	lw $t1, -2936($fp)
	li $t2, 0
	bne $t1, $t2, label336
	j label337
label336:
	li $t0, 1
	sw $t0, -2924($fp)
label337:
	addi $sp, $sp, -4
	lw $t0, -2908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2924($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2940($fp)
	addi $sp, $sp, 16
	lw $t0, -892($fp)
	sw $t0, -2944($fp)
	lw $t1, -2940($fp)
	lw $t2, -2944($fp)
	bne $t1, $t2, label334
	j label335
label334:
	li $t0, 1
	sw $t0, -2888($fp)
label335:
	addi $sp, $sp, -4
	lw $t0, -2864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2888($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2948($fp)
	addi $sp, $sp, 16
	li $t0, 56208
	sw $t0, -2952($fp)
	lw $t0, -2948($fp)
	lw $t1, -2952($fp)
	mul $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t1, -2956($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label329
label330:
	li $t0, 22805
	sw $t0, -2960($fp)
	li $t0, 63348
	sw $t0, -2964($fp)
	li $t0, 1
	sw $t0, -2968($fp)
	lw $t0, -2964($fp)
	lw $t1, -2968($fp)
	mul $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $t1, -2960($fp)
	lw $t2, -2972($fp)
	ble $t1, $t2, label328
	j label329
label328:
	li $t0, 1
	sw $t0, -2860($fp)
label329:
	lw $ra, -4($fp)
	lw $v0, -2860($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label325
label324:
	lw $t0, -556($fp)
	sw $t0, -2976($fp)
	lw $ra, -4($fp)
	lw $v0, -2976($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label325:
	j label319
label318:
label340:
	lw $t0, -892($fp)
	sw $t0, -2980($fp)
	lw $t1, -2980($fp)
	li $t2, 0
	bne $t1, $t2, label341
	j label342
label341:
	li $t0, 0
	sw $t0, -2984($fp)
	li $t0, 4806
	sw $t0, -2988($fp)
	li $t0, 32389
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	sw $t0, -2996($fp)
	addi $t0, $fp, -196
	sw $t0, -3000($fp)
	li $t0, 1
	sw $t0, -3004($fp)
	li $t0, 4
	lw $t1, -3004($fp)
	mul $t0, $t0, $t1
	sw $t0, -3008($fp)
	lw $t0, -3008($fp)
	lw $t1, -3000($fp)
	add $t0, $t0, $t1
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	lw $t1, 0($t0)
	sw $t1, -3016($fp)
	li $t0, 31352
	sw $t0, -3020($fp)
	lw $t0, -3016($fp)
	lw $t1, -3020($fp)
	sub $t0, $t0, $t1
	sw $t0, -3024($fp)
	addi $sp, $sp, -4
	lw $t0, -2988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3024($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -3028($fp)
	addi $sp, $sp, 16
	lw $t1, -3028($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label344
label343:
	li $t0, 1
	sw $t0, -2984($fp)
label344:
	addi $t0, $fp, -180
	sw $t0, -3032($fp)
	li $t0, 0
	sw $t0, -3036($fp)
	li $t0, 698
	sw $t0, -3040($fp)
	li $t0, 23422
	sw $t0, -3044($fp)
	lw $t1, -3040($fp)
	lw $t2, -3044($fp)
	bge $t1, $t2, label345
	j label346
label345:
	li $t0, 1
	sw $t0, -3036($fp)
label346:
	li $t0, 4
	lw $t1, -3036($fp)
	mul $t0, $t0, $t1
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	lw $t1, -3032($fp)
	add $t0, $t0, $t1
	sw $t0, -3052($fp)
	lw $t0, -3052($fp)
	lw $t1, 0($t0)
	sw $t1, -3056($fp)
	lw $t0, -2984($fp)
	lw $t1, -3056($fp)
	mul $t0, $t0, $t1
	sw $t0, -3060($fp)
	lw $ra, -4($fp)
	lw $v0, -3060($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label340
label342:
label319:
	j label312
label314:
label295:
label268:
	li $t0, 0
	sw $t0, -3064($fp)
	li $t0, 53584
	sw $t0, -3068($fp)
	li $t0, 39963
	sw $t0, -3072($fp)
	lw $t0, -3068($fp)
	lw $t1, -3072($fp)
	add $t0, $t0, $t1
	sw $t0, -3076($fp)
	lw $t0, -1264($fp)
	sw $t0, -3080($fp)
	lw $t0, -3076($fp)
	lw $t1, -3080($fp)
	add $t0, $t0, $t1
	sw $t0, -3084($fp)
	li $t0, 0
	sw $t0, -3088($fp)
	li $t0, 20775
	sw $t0, -3092($fp)
	lw $t1, -3092($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label349
label349:
	li $t0, 1
	sw $t0, -3088($fp)
label350:
	lw $t1, -3084($fp)
	lw $t2, -3088($fp)
	blt $t1, $t2, label347
	j label348
label347:
	li $t0, 1
	sw $t0, -3064($fp)
label348:
	lw $t0, -3064($fp)
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	sw $t0, -3096($fp)
	li $t0, 54288
	sw $t0, -3100($fp)
	lw $t1, -3100($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label352
label351:
	li $t0, 22162
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	sw $t0, -3108($fp)
	lw $t0, -3108($fp)
	sw $t0, -3112($fp)
label354:
	li $t0, 11309
	sw $t0, -3116($fp)
	li $t0, 0
	lw $t1, -3116($fp)
	sub $t0, $t0, $t1
	sw $t0, -3120($fp)
	lw $t1, -3120($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label356
label355:
label357:
	li $t0, 31893
	sw $t0, -3124($fp)
	li $t0, 63824
	sw $t0, -3128($fp)
	lw $t0, -3124($fp)
	lw $t1, -3128($fp)
	add $t0, $t0, $t1
	sw $t0, -3132($fp)
	lw $t0, -3132($fp)
	sw $t0, -3108($fp)
	lw $t0, -3108($fp)
	sw $t0, -3136($fp)
	lw $t0, -3136($fp)
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -3140($fp)
	lw $t1, -3140($fp)
	li $t2, 0
	bne $t1, $t2, label358
	j label359
label358:
	lw $t0, -820($fp)
	sw $t0, -3144($fp)
	lw $t1, -3144($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label361
label360:
	li $t0, 7837
	sw $t0, -3148($fp)
	li $t0, 0
	lw $t1, -3148($fp)
	sub $t0, $t0, $t1
	sw $t0, -3152($fp)
	li $t0, 0
	lw $t1, -3152($fp)
	sub $t0, $t0, $t1
	sw $t0, -3156($fp)
	lw $ra, -4($fp)
	lw $v0, -3156($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label362
label361:
	li $t0, 0
	sw $t0, -3160($fp)
	lw $t0, -820($fp)
	sw $t0, -3164($fp)
	li $t0, 22390
	sw $t0, -3168($fp)
	lw $t0, -3164($fp)
	lw $t1, -3168($fp)
	mul $t0, $t0, $t1
	sw $t0, -3172($fp)
	li $t0, 0
	lw $t1, -3172($fp)
	sub $t0, $t0, $t1
	sw $t0, -3176($fp)
	li $t0, 17691
	sw $t0, -3180($fp)
	lw $t0, -1252($fp)
	sw $t0, -3184($fp)
	lw $t0, -3180($fp)
	lw $t1, -3184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3188($fp)
	lw $t0, -3176($fp)
	lw $t1, -3188($fp)
	add $t0, $t0, $t1
	sw $t0, -3192($fp)
	li $t0, 0
	sw $t0, -3196($fp)
	lw $t0, -556($fp)
	sw $t0, -3200($fp)
	lw $t1, -3200($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label366
label366:
	li $t0, 1
	sw $t0, -3196($fp)
label367:
	lw $t1, -3192($fp)
	lw $t2, -3196($fp)
	bge $t1, $t2, label363
	j label365
label365:
	li $t0, 63111
	sw $t0, -3204($fp)
	li $t0, 0
	lw $t1, -3204($fp)
	sub $t0, $t0, $t1
	sw $t0, -3208($fp)
	lw $t0, -1408($fp)
	sw $t0, -3212($fp)
	lw $t0, -3208($fp)
	lw $t1, -3212($fp)
	add $t0, $t0, $t1
	sw $t0, -3216($fp)
	addi $t0, $fp, -132
	sw $t0, -3220($fp)
	li $t0, 0
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
	lw $t0, -3216($fp)
	lw $t1, -3236($fp)
	add $t0, $t0, $t1
	sw $t0, -3240($fp)
	lw $t1, -3240($fp)
	li $t2, 0
	bne $t1, $t2, label363
	j label364
label363:
	li $t0, 1
	sw $t0, -3160($fp)
label364:
	lw $ra, -4($fp)
	lw $v0, -3160($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label362:
	j label357
label359:
	j label354
label356:
	j label353
label352:
	li $t0, 0
	sw $t0, -3244($fp)
	lw $t0, -1804($fp)
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	sw $t0, -3252($fp)
	li $t0, 0
	sw $t0, -3256($fp)
	lw $t0, -268($fp)
	sw $t0, -3260($fp)
	lw $t1, -3260($fp)
	li $t2, 0
	bne $t1, $t2, label371
	j label370
label370:
	li $t0, 1
	sw $t0, -3256($fp)
label371:
	li $t0, 0
	lw $t1, -3256($fp)
	sub $t0, $t0, $t1
	sw $t0, -3264($fp)
	li $t0, 0
	sw $t0, -3268($fp)
	li $t0, 0
	sw $t0, -3272($fp)
	li $t0, 41143
	sw $t0, -3276($fp)
	lw $t0, -1300($fp)
	sw $t0, -3280($fp)
	lw $t1, -3276($fp)
	lw $t2, -3280($fp)
	ble $t1, $t2, label374
	j label375
label374:
	li $t0, 1
	sw $t0, -3272($fp)
label375:
	li $t0, 53773
	sw $t0, -3284($fp)
	lw $t1, -3272($fp)
	lw $t2, -3284($fp)
	beq $t1, $t2, label372
	j label373
label372:
	li $t0, 1
	sw $t0, -3268($fp)
label373:
	addi $sp, $sp, -4
	lw $t0, -3252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3268($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -3288($fp)
	addi $sp, $sp, 16
	lw $t1, -3288($fp)
	li $t2, 0
	bne $t1, $t2, label369
	j label368
label368:
	li $t0, 1
	sw $t0, -3244($fp)
label369:
	lw $ra, -4($fp)
	lw $v0, -3244($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label353:
label376:
	li $t0, 0
	sw $t0, -3292($fp)
	lw $t0, -892($fp)
	sw $t0, -3296($fp)
	lw $t1, -3296($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label379
label379:
	li $t0, 1
	sw $t0, -3292($fp)
label380:
	li $t0, 0
	lw $t1, -3292($fp)
	sub $t0, $t0, $t1
	sw $t0, -3300($fp)
	lw $t1, -3300($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label378
label377:
	lw $t0, -1816($fp)
	sw $t0, -3304($fp)
	lw $t0, -244($fp)
	sw $t0, -3308($fp)
	lw $t0, -3304($fp)
	lw $t1, -3308($fp)
	mul $t0, $t0, $t1
	sw $t0, -3312($fp)
	li $t0, 0
	lw $t1, -3312($fp)
	sub $t0, $t0, $t1
	sw $t0, -3316($fp)
	li $t0, 0
	sw $t0, -3320($fp)
	lw $t0, -256($fp)
	sw $t0, -3324($fp)
	lw $t1, -3324($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label385
label387:
	lw $t0, -268($fp)
	sw $t0, -3328($fp)
	lw $t1, -3328($fp)
	li $t2, 0
	bne $t1, $t2, label386
	j label385
label386:
	lw $t0, -280($fp)
	sw $t0, -3332($fp)
	lw $t1, -3332($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label385
label384:
	li $t0, 1
	sw $t0, -3320($fp)
label385:
	addi $sp, $sp, -4
	lw $t0, -3320($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -3336($fp)
	addi $sp, $sp, 8
	lw $t1, -3316($fp)
	lw $t2, -3336($fp)
	ble $t1, $t2, label381
	j label382
label381:
label388:
	lw $t0, -1288($fp)
	sw $t0, -3340($fp)
	lw $t0, -904($fp)
	sw $t0, -3344($fp)
	li $t0, 0
	lw $t1, -3344($fp)
	sub $t0, $t0, $t1
	sw $t0, -3348($fp)
	lw $t0, -3340($fp)
	lw $t1, -3348($fp)
	add $t0, $t0, $t1
	sw $t0, -3352($fp)
	lw $t0, -1444($fp)
	sw $t0, -3356($fp)
	li $t0, 0
	sw $t0, -3360($fp)
	lw $t0, -1780($fp)
	sw $t0, -3364($fp)
	li $t0, 788
	sw $t0, -3368($fp)
	lw $t0, -3364($fp)
	lw $t1, -3368($fp)
	add $t0, $t0, $t1
	sw $t0, -3372($fp)
	lw $t0, -892($fp)
	sw $t0, -3376($fp)
	lw $t1, -3372($fp)
	lw $t2, -3376($fp)
	bne $t1, $t2, label391
	j label392
label391:
	li $t0, 1
	sw $t0, -3360($fp)
label392:
	li $t0, 0
	sw $t0, -3380($fp)
	li $t0, 46816
	sw $t0, -3384($fp)
	li $t0, 27653
	sw $t0, -3388($fp)
	lw $t0, -3384($fp)
	lw $t1, -3388($fp)
	sub $t0, $t0, $t1
	sw $t0, -3392($fp)
	lw $t1, -3392($fp)
	li $t2, 0
	bne $t1, $t2, label395
	j label394
label395:
	lw $t0, -892($fp)
	sw $t0, -3396($fp)
	lw $t1, -3396($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label394
label393:
	li $t0, 1
	sw $t0, -3380($fp)
label394:
	lw $t0, -580($fp)
	sw $t0, -3400($fp)
	li $t0, 59832
	sw $t0, -3404($fp)
	lw $t0, -3400($fp)
	lw $t1, -3404($fp)
	mul $t0, $t0, $t1
	sw $t0, -3408($fp)
	li $t0, 10115
	sw $t0, -3412($fp)
	lw $t0, -3408($fp)
	lw $t1, -3412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3416($fp)
	addi $sp, $sp, -4
	lw $t0, -3360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3416($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -3420($fp)
	addi $sp, $sp, 16
	lw $t0, -3356($fp)
	lw $t1, -3420($fp)
	mul $t0, $t0, $t1
	sw $t0, -3424($fp)
	li $t0, 0
	lw $t1, -3424($fp)
	sub $t0, $t0, $t1
	sw $t0, -3428($fp)
	lw $t1, -3352($fp)
	lw $t2, -3428($fp)
	blt $t1, $t2, label389
	j label390
label389:
	lw $t0, -868($fp)
	sw $t0, -3432($fp)
	j label388
label390:
	j label383
label382:
label396:
	li $t0, 0
	sw $t0, -3436($fp)
	lw $t0, -604($fp)
	sw $t0, -3440($fp)
	li $t0, 4085
	sw $t0, -3444($fp)
	lw $t1, -3440($fp)
	lw $t2, -3444($fp)
	bne $t1, $t2, label400
	j label402
label402:
	li $t0, 25465
	sw $t0, -3448($fp)
	lw $t1, -3448($fp)
	li $t2, 0
	bne $t1, $t2, label400
	j label401
label400:
	li $t0, 1
	sw $t0, -3436($fp)
label401:
	li $t0, 0
	sw $t0, -3452($fp)
	lw $t0, -592($fp)
	sw $t0, -3456($fp)
	li $t0, 0
	lw $t1, -3456($fp)
	sub $t0, $t0, $t1
	sw $t0, -3460($fp)
	lw $t1, -3460($fp)
	li $t2, 0
	bne $t1, $t2, label404
	j label403
label403:
	li $t0, 1
	sw $t0, -3452($fp)
label404:
	li $t0, 0
	sw $t0, -3464($fp)
	lw $t0, -1780($fp)
	sw $t0, -3468($fp)
	lw $t1, -3468($fp)
	li $t2, 0
	bne $t1, $t2, label405
	j label406
label405:
	li $t0, 1
	sw $t0, -3464($fp)
label406:
	addi $sp, $sp, -4
	lw $t0, -3436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3464($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3472($fp)
	addi $sp, $sp, 16
	lw $t0, -1264($fp)
	sw $t0, -3476($fp)
	li $t0, 37248
	sw $t0, -3480($fp)
	lw $t0, -616($fp)
	sw $t0, -3484($fp)
	lw $t0, -3480($fp)
	lw $t1, -3484($fp)
	mul $t0, $t0, $t1
	sw $t0, -3488($fp)
	li $t0, 13412
	sw $t0, -3492($fp)
	lw $t0, -3488($fp)
	lw $t1, -3492($fp)
	add $t0, $t0, $t1
	sw $t0, -3496($fp)
	li $t0, 56786
	sw $t0, -3500($fp)
	lw $t0, -1000($fp)
	sw $t0, -3504($fp)
	lw $t0, -3500($fp)
	lw $t1, -3504($fp)
	mul $t0, $t0, $t1
	sw $t0, -3508($fp)
	li $t0, 0
	lw $t1, -3508($fp)
	sub $t0, $t0, $t1
	sw $t0, -3512($fp)
	addi $sp, $sp, -4
	lw $t0, -3512($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3516($fp)
	addi $sp, $sp, 8
	li $t0, 16174
	sw $t0, -3520($fp)
	lw $t0, -3516($fp)
	lw $t1, -3520($fp)
	add $t0, $t0, $t1
	sw $t0, -3524($fp)
	li $t0, 0
	sw $t0, -3528($fp)
	li $t0, 60935
	sw $t0, -3532($fp)
	lw $t1, -3532($fp)
	li $t2, 0
	bne $t1, $t2, label408
	j label407
label407:
	li $t0, 1
	sw $t0, -3528($fp)
label408:
	li $t0, 48496
	sw $t0, -3536($fp)
	lw $t0, -3528($fp)
	lw $t1, -3536($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3540($fp)
	li $t0, 0
	sw $t0, -3544($fp)
	li $t0, 0
	sw $t0, -3548($fp)
	li $t0, 60448
	sw $t0, -3552($fp)
	lw $t1, -3552($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label411
label411:
	li $t0, 1
	sw $t0, -3548($fp)
label412:
	li $t0, 16823
	sw $t0, -3556($fp)
	lw $t1, -3548($fp)
	lw $t2, -3556($fp)
	ble $t1, $t2, label409
	j label410
label409:
	li $t0, 1
	sw $t0, -3544($fp)
label410:
	li $t0, 0
	sw $t0, -3560($fp)
	li $t0, 0
	sw $t0, -3564($fp)
	li $t0, 55642
	sw $t0, -3568($fp)
	li $t0, 16125
	sw $t0, -3572($fp)
	lw $t1, -3568($fp)
	lw $t2, -3572($fp)
	bne $t1, $t2, label415
	j label416
label415:
	li $t0, 1
	sw $t0, -3564($fp)
label416:
	li $t0, 37513
	sw $t0, -3576($fp)
	lw $t1, -3564($fp)
	lw $t2, -3576($fp)
	beq $t1, $t2, label413
	j label414
label413:
	li $t0, 1
	sw $t0, -3560($fp)
label414:
	li $t0, 0
	sw $t0, -3580($fp)
	lw $t0, -1732($fp)
	sw $t0, -3584($fp)
	li $t0, 50309
	sw $t0, -3588($fp)
	lw $t1, -3584($fp)
	lw $t2, -3588($fp)
	beq $t1, $t2, label419
	j label418
label419:
	li $t0, 5123
	sw $t0, -3592($fp)
	lw $t1, -3592($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label418
label417:
	li $t0, 1
	sw $t0, -3580($fp)
label418:
	addi $sp, $sp, -4
	lw $t0, -3544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3580($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3596($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -3476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3596($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3600($fp)
	addi $sp, $sp, 24
	lw $t0, -3472($fp)
	lw $t1, -3600($fp)
	mul $t0, $t0, $t1
	sw $t0, -3604($fp)
	li $t0, 0
	lw $t1, -3604($fp)
	sub $t0, $t0, $t1
	sw $t0, -3608($fp)
	lw $t1, -3608($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label399
label399:
	lw $t0, -1828($fp)
	sw $t0, -3612($fp)
	li $t0, 0
	lw $t1, -3612($fp)
	sub $t0, $t0, $t1
	sw $t0, -3616($fp)
	lw $t1, -3616($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label398
label397:
	li $t0, 27484
	sw $t0, -3652($fp)
	addi $t0, $fp, -3648
	sw $t0, -3656($fp)
	li $t0, 0
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
	li $t0, 3605
	sw $t0, -3676($fp)
	addi $t0, $fp, -3648
	sw $t0, -3680($fp)
	li $t0, 1
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
	li $t0, 11700
	sw $t0, -3700($fp)
	addi $t0, $fp, -3648
	sw $t0, -3704($fp)
	li $t0, 2
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
	li $t0, 35321
	sw $t0, -3724($fp)
	addi $t0, $fp, -3648
	sw $t0, -3728($fp)
	li $t0, 3
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
	li $t0, 25996
	sw $t0, -3748($fp)
	addi $t0, $fp, -3648
	sw $t0, -3752($fp)
	li $t0, 4
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
	li $t0, 29392
	sw $t0, -3772($fp)
	addi $t0, $fp, -3648
	sw $t0, -3776($fp)
	li $t0, 5
	sw $t0, -3780($fp)
	lw $t0, -3780($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3784($fp)
	lw $t0, -3776($fp)
	lw $t1, -3784($fp)
	add $t0, $t0, $t1
	sw $t0, -3788($fp)
	lw $t0, -3772($fp)
	lw $t1, -3788($fp)
	sw $t0, 0($t1)
	lw $t0, -3788($fp)
	lw $t1, 0($t0)
	sw $t1, -3792($fp)
	li $t0, 32896
	sw $t0, -3796($fp)
	addi $t0, $fp, -3648
	sw $t0, -3800($fp)
	li $t0, 6
	sw $t0, -3804($fp)
	lw $t0, -3804($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3808($fp)
	lw $t0, -3800($fp)
	lw $t1, -3808($fp)
	add $t0, $t0, $t1
	sw $t0, -3812($fp)
	lw $t0, -3796($fp)
	lw $t1, -3812($fp)
	sw $t0, 0($t1)
	lw $t0, -3812($fp)
	lw $t1, 0($t0)
	sw $t1, -3816($fp)
	li $t0, 10001
	sw $t0, -3820($fp)
	addi $t0, $fp, -3648
	sw $t0, -3824($fp)
	li $t0, 7
	sw $t0, -3828($fp)
	lw $t0, -3828($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3832($fp)
	lw $t0, -3824($fp)
	lw $t1, -3832($fp)
	add $t0, $t0, $t1
	sw $t0, -3836($fp)
	lw $t0, -3820($fp)
	lw $t1, -3836($fp)
	sw $t0, 0($t1)
	lw $t0, -3836($fp)
	lw $t1, 0($t0)
	sw $t1, -3840($fp)
	addi $t0, $fp, -20
	sw $t0, -3844($fp)
	addi $t0, $fp, -3648
	sw $t0, -3848($fp)
	li $t0, 0
	sw $t0, -3852($fp)
	li $t0, 4
	lw $t1, -3852($fp)
	mul $t0, $t0, $t1
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	lw $t1, -3848($fp)
	add $t0, $t0, $t1
	sw $t0, -3860($fp)
	lw $t0, -3860($fp)
	lw $t1, 0($t0)
	sw $t1, -3864($fp)
	li $t0, 4
	lw $t1, -3864($fp)
	mul $t0, $t0, $t1
	sw $t0, -3868($fp)
	lw $t0, -3868($fp)
	lw $t1, -3844($fp)
	add $t0, $t0, $t1
	sw $t0, -3872($fp)
	lw $t0, -3872($fp)
	lw $t1, 0($t0)
	sw $t1, -3876($fp)
	lw $t1, -3876($fp)
	li $t2, 0
	bne $t1, $t2, label420
	j label421
label420:
label423:
	li $t0, 0
	sw $t0, -3880($fp)
	li $t0, 0
	sw $t0, -3884($fp)
	li $t0, 44124
	sw $t0, -3888($fp)
	lw $t1, -3888($fp)
	li $t2, 0
	bne $t1, $t2, label432
	j label431
label432:
	li $t0, 19407
	sw $t0, -3892($fp)
	lw $t1, -3892($fp)
	li $t2, 0
	bne $t1, $t2, label429
	j label431
label431:
	lw $t0, -580($fp)
	sw $t0, -3896($fp)
	lw $t1, -3896($fp)
	li $t2, 0
	bne $t1, $t2, label429
	j label430
label429:
	li $t0, 1
	sw $t0, -3884($fp)
label430:
	lw $t0, -892($fp)
	sw $t0, -3900($fp)
	lw $t0, -568($fp)
	sw $t0, -3904($fp)
	lw $t0, -3900($fp)
	lw $t1, -3904($fp)
	mul $t0, $t0, $t1
	sw $t0, -3908($fp)
	li $t0, 0
	sw $t0, -3912($fp)
	li $t0, 45055
	sw $t0, -3916($fp)
	lw $t1, -3916($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label433
label435:
	lw $t0, -1264($fp)
	sw $t0, -3920($fp)
	lw $t1, -3920($fp)
	li $t2, 0
	bne $t1, $t2, label433
	j label434
label433:
	li $t0, 1
	sw $t0, -3912($fp)
label434:
	addi $sp, $sp, -4
	lw $t0, -3884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3912($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3924($fp)
	addi $sp, $sp, 16
	lw $t1, -3924($fp)
	li $t2, 0
	bne $t1, $t2, label428
	j label427
label428:
	li $t0, 49140
	sw $t0, -3928($fp)
	lw $t1, -3928($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label427
label426:
	li $t0, 1
	sw $t0, -3880($fp)
label427:
	li $t0, 0
	sw $t0, -3932($fp)
	addi $t0, $fp, -20
	sw $t0, -3936($fp)
	lw $t0, -1936($fp)
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
	lw $t1, -3952($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label438
label438:
	li $t0, 18619
	sw $t0, -3956($fp)
	lw $t1, -3956($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label437
label436:
	li $t0, 1
	sw $t0, -3932($fp)
label437:
	li $t0, 0
	sw $t0, -3960($fp)
	li $t0, 0
	sw $t0, -3964($fp)
	li $t0, 63775
	sw $t0, -3968($fp)
	lw $t1, -3968($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label441
label441:
	li $t0, 1
	sw $t0, -3964($fp)
label442:
	li $t0, 16471
	sw $t0, -3972($fp)
	lw $t1, -3964($fp)
	lw $t2, -3972($fp)
	blt $t1, $t2, label439
	j label440
label439:
	li $t0, 1
	sw $t0, -3960($fp)
label440:
	addi $sp, $sp, -4
	lw $t0, -3880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3960($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -3976($fp)
	addi $sp, $sp, 16
	li $t0, 4053
	sw $t0, -3980($fp)
	li $t0, 0
	lw $t1, -3980($fp)
	sub $t0, $t0, $t1
	sw $t0, -3984($fp)
	lw $t0, -3976($fp)
	lw $t1, -3984($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3988($fp)
	li $t0, 0
	lw $t1, -3988($fp)
	sub $t0, $t0, $t1
	sw $t0, -3992($fp)
	lw $t0, -1828($fp)
	sw $t0, -3996($fp)
	lw $t0, -3992($fp)
	lw $t1, -3996($fp)
	add $t0, $t0, $t1
	sw $t0, -4000($fp)
	lw $t1, -4000($fp)
	li $t2, 0
	bne $t1, $t2, label424
	j label425
label424:
	li $t0, 4180
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	sw $t0, -4016($fp)
	lw $t0, -4016($fp)
	sw $t0, -4020($fp)
	li $t0, 54263
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	sw $t0, -4028($fp)
	lw $t0, -4028($fp)
	sw $t0, -4032($fp)
	li $t0, 59695
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	sw $t0, -4044($fp)
	li $t0, 20305
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	sw $t0, -4052($fp)
	lw $t0, -4052($fp)
	sw $t0, -4056($fp)
	li $t0, 26240
	sw $t0, -4060($fp)
	lw $t0, -4060($fp)
	sw $t0, -4064($fp)
	lw $t0, -4064($fp)
	sw $t0, -4068($fp)
	li $t0, 54607
	sw $t0, -4072($fp)
	lw $t0, -4072($fp)
	sw $t0, -4076($fp)
	lw $t0, -4076($fp)
	sw $t0, -4080($fp)
	li $t0, 37128
	sw $t0, -4084($fp)
	lw $t0, -4084($fp)
	sw $t0, -4088($fp)
	lw $t0, -4088($fp)
	sw $t0, -4092($fp)
	li $t0, 21639
	sw $t0, -4096($fp)
	lw $t0, -4096($fp)
	sw $t0, -4100($fp)
	lw $t0, -4100($fp)
	sw $t0, -4104($fp)
	li $t0, 37567
	sw $t0, -4108($fp)
	lw $t0, -4108($fp)
	sw $t0, -4112($fp)
	lw $t0, -4112($fp)
	sw $t0, -4116($fp)
	li $t0, 28378
	sw $t0, -4120($fp)
	addi $t0, $fp, -4008
	sw $t0, -4124($fp)
	li $t0, 0
	sw $t0, -4128($fp)
	lw $t0, -4128($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4132($fp)
	lw $t0, -4124($fp)
	lw $t1, -4132($fp)
	add $t0, $t0, $t1
	sw $t0, -4136($fp)
	lw $t0, -4120($fp)
	lw $t1, -4136($fp)
	sw $t0, 0($t1)
	lw $t0, -4136($fp)
	lw $t1, 0($t0)
	sw $t1, -4140($fp)
	li $t0, 37814
	sw $t0, -4144($fp)
	addi $t0, $fp, -4008
	sw $t0, -4148($fp)
	li $t0, 1
	sw $t0, -4152($fp)
	lw $t0, -4152($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4156($fp)
	lw $t0, -4148($fp)
	lw $t1, -4156($fp)
	add $t0, $t0, $t1
	sw $t0, -4160($fp)
	lw $t0, -4144($fp)
	lw $t1, -4160($fp)
	sw $t0, 0($t1)
	lw $t0, -4160($fp)
	lw $t1, 0($t0)
	sw $t1, -4164($fp)
	li $t0, 9279
	sw $t0, -4204($fp)
	lw $t0, -4204($fp)
	sw $t0, -4208($fp)
	lw $t0, -4208($fp)
	sw $t0, -4212($fp)
	li $t0, 41791
	sw $t0, -4216($fp)
	addi $t0, $fp, -4200
	sw $t0, -4220($fp)
	li $t0, 0
	sw $t0, -4224($fp)
	lw $t0, -4224($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4228($fp)
	lw $t0, -4220($fp)
	lw $t1, -4228($fp)
	add $t0, $t0, $t1
	sw $t0, -4232($fp)
	lw $t0, -4216($fp)
	lw $t1, -4232($fp)
	sw $t0, 0($t1)
	lw $t0, -4232($fp)
	lw $t1, 0($t0)
	sw $t1, -4236($fp)
	li $t0, 65298
	sw $t0, -4240($fp)
	addi $t0, $fp, -4200
	sw $t0, -4244($fp)
	li $t0, 1
	sw $t0, -4248($fp)
	lw $t0, -4248($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4252($fp)
	lw $t0, -4244($fp)
	lw $t1, -4252($fp)
	add $t0, $t0, $t1
	sw $t0, -4256($fp)
	lw $t0, -4240($fp)
	lw $t1, -4256($fp)
	sw $t0, 0($t1)
	lw $t0, -4256($fp)
	lw $t1, 0($t0)
	sw $t1, -4260($fp)
	li $t0, 12884
	sw $t0, -4264($fp)
	addi $t0, $fp, -4200
	sw $t0, -4268($fp)
	li $t0, 2
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4276($fp)
	lw $t0, -4268($fp)
	lw $t1, -4276($fp)
	add $t0, $t0, $t1
	sw $t0, -4280($fp)
	lw $t0, -4264($fp)
	lw $t1, -4280($fp)
	sw $t0, 0($t1)
	lw $t0, -4280($fp)
	lw $t1, 0($t0)
	sw $t1, -4284($fp)
	li $t0, 53491
	sw $t0, -4288($fp)
	addi $t0, $fp, -4200
	sw $t0, -4292($fp)
	li $t0, 3
	sw $t0, -4296($fp)
	lw $t0, -4296($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4300($fp)
	lw $t0, -4292($fp)
	lw $t1, -4300($fp)
	add $t0, $t0, $t1
	sw $t0, -4304($fp)
	lw $t0, -4288($fp)
	lw $t1, -4304($fp)
	sw $t0, 0($t1)
	lw $t0, -4304($fp)
	lw $t1, 0($t0)
	sw $t1, -4308($fp)
	li $t0, 35083
	sw $t0, -4312($fp)
	addi $t0, $fp, -4200
	sw $t0, -4316($fp)
	li $t0, 4
	sw $t0, -4320($fp)
	lw $t0, -4320($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4324($fp)
	lw $t0, -4316($fp)
	lw $t1, -4324($fp)
	add $t0, $t0, $t1
	sw $t0, -4328($fp)
	lw $t0, -4312($fp)
	lw $t1, -4328($fp)
	sw $t0, 0($t1)
	lw $t0, -4328($fp)
	lw $t1, 0($t0)
	sw $t1, -4332($fp)
	li $t0, 38880
	sw $t0, -4336($fp)
	addi $t0, $fp, -4200
	sw $t0, -4340($fp)
	li $t0, 5
	sw $t0, -4344($fp)
	lw $t0, -4344($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4348($fp)
	lw $t0, -4340($fp)
	lw $t1, -4348($fp)
	add $t0, $t0, $t1
	sw $t0, -4352($fp)
	lw $t0, -4336($fp)
	lw $t1, -4352($fp)
	sw $t0, 0($t1)
	lw $t0, -4352($fp)
	lw $t1, 0($t0)
	sw $t1, -4356($fp)
	li $t0, 17347
	sw $t0, -4360($fp)
	addi $t0, $fp, -4200
	sw $t0, -4364($fp)
	li $t0, 6
	sw $t0, -4368($fp)
	lw $t0, -4368($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4372($fp)
	lw $t0, -4364($fp)
	lw $t1, -4372($fp)
	add $t0, $t0, $t1
	sw $t0, -4376($fp)
	lw $t0, -4360($fp)
	lw $t1, -4376($fp)
	sw $t0, 0($t1)
	lw $t0, -4376($fp)
	lw $t1, 0($t0)
	sw $t1, -4380($fp)
	li $t0, 2444
	sw $t0, -4384($fp)
	addi $t0, $fp, -4200
	sw $t0, -4388($fp)
	li $t0, 7
	sw $t0, -4392($fp)
	lw $t0, -4392($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4396($fp)
	lw $t0, -4388($fp)
	lw $t1, -4396($fp)
	add $t0, $t0, $t1
	sw $t0, -4400($fp)
	lw $t0, -4384($fp)
	lw $t1, -4400($fp)
	sw $t0, 0($t1)
	lw $t0, -4400($fp)
	lw $t1, 0($t0)
	sw $t1, -4404($fp)
	li $t0, 48882
	sw $t0, -4408($fp)
	addi $t0, $fp, -4200
	sw $t0, -4412($fp)
	li $t0, 8
	sw $t0, -4416($fp)
	lw $t0, -4416($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4420($fp)
	lw $t0, -4412($fp)
	lw $t1, -4420($fp)
	add $t0, $t0, $t1
	sw $t0, -4424($fp)
	lw $t0, -4408($fp)
	lw $t1, -4424($fp)
	sw $t0, 0($t1)
	lw $t0, -4424($fp)
	lw $t1, 0($t0)
	sw $t1, -4428($fp)
	li $t0, 0
	sw $t0, -4432($fp)
	li $t0, 0
	sw $t0, -4436($fp)
	addi $t0, $fp, -4200
	sw $t0, -4440($fp)
	li $t0, 5
	sw $t0, -4444($fp)
	li $t0, 4
	lw $t1, -4444($fp)
	mul $t0, $t0, $t1
	sw $t0, -4448($fp)
	lw $t0, -4448($fp)
	lw $t1, -4440($fp)
	add $t0, $t0, $t1
	sw $t0, -4452($fp)
	lw $t0, -4452($fp)
	lw $t1, 0($t0)
	sw $t1, -4456($fp)
	lw $t1, -4456($fp)
	li $t2, 0
	bne $t1, $t2, label445
	j label446
label445:
	li $t0, 1
	sw $t0, -4436($fp)
label446:
	li $t0, 0
	sw $t0, -4460($fp)
	addi $t0, $fp, -196
	sw $t0, -4464($fp)
	li $t0, 1
	sw $t0, -4468($fp)
	li $t0, 4
	lw $t1, -4468($fp)
	mul $t0, $t0, $t1
	sw $t0, -4472($fp)
	lw $t0, -4472($fp)
	lw $t1, -4464($fp)
	add $t0, $t0, $t1
	sw $t0, -4476($fp)
	lw $t0, -4476($fp)
	lw $t1, 0($t0)
	sw $t1, -4480($fp)
	lw $t1, -4480($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label447
label447:
	li $t0, 1
	sw $t0, -4460($fp)
label448:
	lw $t0, -4436($fp)
	lw $t1, -4460($fp)
	mul $t0, $t0, $t1
	sw $t0, -4484($fp)
	li $t0, 29567
	sw $t0, -4488($fp)
	li $t0, 0
	lw $t1, -4488($fp)
	sub $t0, $t0, $t1
	sw $t0, -4492($fp)
	addi $sp, $sp, -4
	lw $t0, -4492($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4496($fp)
	addi $sp, $sp, 8
	li $t0, 26640
	sw $t0, -4500($fp)
	lw $t0, -4496($fp)
	lw $t1, -4500($fp)
	mul $t0, $t0, $t1
	sw $t0, -4504($fp)
	li $t0, 0
	sw $t0, -4508($fp)
	lw $t0, -4208($fp)
	sw $t0, -4512($fp)
	lw $t1, -4512($fp)
	li $t2, 0
	bne $t1, $t2, label450
	j label449
label449:
	li $t0, 1
	sw $t0, -4508($fp)
label450:
	lw $t0, -4504($fp)
	lw $t1, -4508($fp)
	add $t0, $t0, $t1
	sw $t0, -4516($fp)
	lw $t1, -4484($fp)
	lw $t2, -4516($fp)
	bne $t1, $t2, label443
	j label444
label443:
	li $t0, 1
	sw $t0, -4432($fp)
label444:
	li $t0, 34581
	sw $t0, -4520($fp)
label451:
	li $t0, 48975
	sw $t0, -4524($fp)
	lw $t1, -4524($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label453
label452:
label454:
	lw $t0, -1780($fp)
	sw $t0, -4528($fp)
	li $t0, 0
	sw $t0, -4532($fp)
	li $t0, 10244
	sw $t0, -4536($fp)
	lw $t0, -880($fp)
	sw $t0, -4540($fp)
	lw $t1, -4536($fp)
	lw $t2, -4540($fp)
	bgt $t1, $t2, label457
	j label458
label457:
	li $t0, 1
	sw $t0, -4532($fp)
label458:
	addi $t0, $fp, -4008
	sw $t0, -4544($fp)
	lw $t0, -268($fp)
	sw $t0, -4548($fp)
	li $t0, 4
	lw $t1, -4548($fp)
	mul $t0, $t0, $t1
	sw $t0, -4552($fp)
	lw $t0, -4552($fp)
	lw $t1, -4544($fp)
	add $t0, $t0, $t1
	sw $t0, -4556($fp)
	lw $t0, -4556($fp)
	lw $t1, 0($t0)
	sw $t1, -4560($fp)
	addi $sp, $sp, -4
	lw $t0, -4528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4560($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4564($fp)
	addi $sp, $sp, 16
	lw $t0, -580($fp)
	sw $t0, -4568($fp)
	lw $t0, -4568($fp)
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -4572($fp)
	li $t0, 0
	sw $t0, -4576($fp)
	addi $t0, $fp, -48
	sw $t0, -4580($fp)
	li $t0, 5
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
	lw $t1, -4596($fp)
	li $t2, 0
	bne $t1, $t2, label460
	j label459
label459:
	li $t0, 1
	sw $t0, -4576($fp)
label460:
	lw $t0, -904($fp)
	sw $t0, -4600($fp)
	addi $sp, $sp, -4
	lw $t0, -4572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4600($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4604($fp)
	addi $sp, $sp, 16
	lw $t0, -1672($fp)
	sw $t0, -4608($fp)
	lw $t0, -4604($fp)
	lw $t1, -4608($fp)
	mul $t0, $t0, $t1
	sw $t0, -4612($fp)
	lw $t0, -4564($fp)
	lw $t1, -4612($fp)
	add $t0, $t0, $t1
	sw $t0, -4616($fp)
	lw $t1, -4616($fp)
	li $t2, 0
	bne $t1, $t2, label455
	j label456
label455:
	li $t0, 0
	sw $t0, -4620($fp)
	lw $t0, -1756($fp)
	sw $t0, -4624($fp)
	lw $t1, -4624($fp)
	li $t2, 0
	bne $t1, $t2, label466
	j label465
label465:
	li $t0, 1
	sw $t0, -4620($fp)
label466:
	li $t0, 0
	sw $t0, -4628($fp)
	li $t0, 45053
	sw $t0, -4632($fp)
	li $t0, 46851
	sw $t0, -4636($fp)
	lw $t0, -4632($fp)
	lw $t1, -4636($fp)
	mul $t0, $t0, $t1
	sw $t0, -4640($fp)
	lw $t1, -4640($fp)
	li $t2, 0
	bne $t1, $t2, label467
	j label469
label469:
	lw $t0, -856($fp)
	sw $t0, -4644($fp)
	lw $t1, -4644($fp)
	li $t2, 0
	bne $t1, $t2, label467
	j label468
label467:
	li $t0, 1
	sw $t0, -4628($fp)
label468:
	li $t0, 25212
	sw $t0, -4648($fp)
	lw $t0, -1000($fp)
	sw $t0, -4652($fp)
	lw $t0, -4648($fp)
	lw $t1, -4652($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4656($fp)
	li $t0, 21864
	sw $t0, -4660($fp)
	lw $t0, -4656($fp)
	lw $t1, -4660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4664($fp)
	li $t0, 0
	sw $t0, -4668($fp)
	lw $t0, -1792($fp)
	sw $t0, -4672($fp)
	li $t0, 7925
	sw $t0, -4676($fp)
	lw $t0, -4672($fp)
	lw $t1, -4676($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4680($fp)
	lw $t0, -856($fp)
	sw $t0, -4684($fp)
	lw $t1, -4680($fp)
	lw $t2, -4684($fp)
	ble $t1, $t2, label470
	j label471
label470:
	li $t0, 1
	sw $t0, -4668($fp)
label471:
	lw $t0, -4112($fp)
	sw $t0, -4688($fp)
	lw $t0, -4688($fp)
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	sw $t0, -4692($fp)
	li $t0, 0
	sw $t0, -4696($fp)
	lw $t0, -820($fp)
	sw $t0, -4700($fp)
	li $t0, 64507
	sw $t0, -4704($fp)
	lw $t0, -4700($fp)
	lw $t1, -4704($fp)
	mul $t0, $t0, $t1
	sw $t0, -4708($fp)
	li $t0, 32793
	sw $t0, -4712($fp)
	lw $t1, -4708($fp)
	lw $t2, -4712($fp)
	blt $t1, $t2, label472
	j label473
label472:
	li $t0, 1
	sw $t0, -4696($fp)
label473:
	lw $t0, -1672($fp)
	sw $t0, -4716($fp)
	lw $t0, -4716($fp)
	sw $t0, -4052($fp)
	lw $t0, -4052($fp)
	sw $t0, -4720($fp)
	addi $sp, $sp, -4
	lw $t0, -4692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4720($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4724($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -4620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4724($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -4728($fp)
	addi $sp, $sp, 24
	li $t0, 59431
	sw $t0, -4732($fp)
	lw $t0, -4728($fp)
	lw $t1, -4732($fp)
	mul $t0, $t0, $t1
	sw $t0, -4736($fp)
	li $t0, 7896
	sw $t0, -4740($fp)
	lw $t0, -4736($fp)
	lw $t1, -4740($fp)
	mul $t0, $t0, $t1
	sw $t0, -4744($fp)
	li $t0, 0
	sw $t0, -4748($fp)
	li $t0, 19129
	sw $t0, -4752($fp)
	li $t0, 3174
	sw $t0, -4756($fp)
	lw $t0, -4752($fp)
	lw $t1, -4756($fp)
	mul $t0, $t0, $t1
	sw $t0, -4760($fp)
	lw $t0, -1288($fp)
	sw $t0, -4764($fp)
	lw $t1, -4760($fp)
	lw $t2, -4764($fp)
	bgt $t1, $t2, label474
	j label475
label474:
	li $t0, 1
	sw $t0, -4748($fp)
label475:
	lw $t1, -4744($fp)
	lw $t2, -4748($fp)
	beq $t1, $t2, label464
	j label462
label464:
	li $t0, 49687
	sw $t0, -4768($fp)
	lw $t0, -820($fp)
	sw $t0, -4772($fp)
	lw $t0, -4768($fp)
	lw $t1, -4772($fp)
	sub $t0, $t0, $t1
	sw $t0, -4776($fp)
	li $t0, 18891
	sw $t0, -4780($fp)
	lw $t0, -4776($fp)
	lw $t1, -4780($fp)
	sub $t0, $t0, $t1
	sw $t0, -4784($fp)
	lw $t0, -832($fp)
	sw $t0, -4788($fp)
	li $t0, 16058
	sw $t0, -4792($fp)
	lw $t0, -4788($fp)
	lw $t1, -4792($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4796($fp)
	lw $t1, -4784($fp)
	lw $t2, -4796($fp)
	bne $t1, $t2, label461
	j label462
label461:
	li $t0, 37642
	sw $t0, -4800($fp)
	lw $t0, -820($fp)
	sw $t0, -4804($fp)
	lw $t0, -1804($fp)
	sw $t0, -4808($fp)
	lw $t0, -4804($fp)
	lw $t1, -4808($fp)
	mul $t0, $t0, $t1
	sw $t0, -4812($fp)
	lw $t0, -4800($fp)
	lw $t1, -4812($fp)
	sub $t0, $t0, $t1
	sw $t0, -4816($fp)
	lw $t1, -4816($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label479
label480:
	jal f7
	sw $v0, -4820($fp)
	addi $sp, $sp, 4
	lw $t0, -1756($fp)
	sw $t0, -4824($fp)
	lw $t0, -4824($fp)
	sw $t0, -4064($fp)
	lw $t0, -4064($fp)
	sw $t0, -4828($fp)
	lw $t0, -1288($fp)
	sw $t0, -4832($fp)
	lw $t0, -4832($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -4836($fp)
	lw $t0, -1732($fp)
	sw $t0, -4840($fp)
	lw $t0, -4840($fp)
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -4844($fp)
	li $t0, 0
	sw $t0, -4848($fp)
	li $t0, 53975
	sw $t0, -4852($fp)
	lw $t0, -844($fp)
	sw $t0, -4856($fp)
	lw $t1, -4852($fp)
	lw $t2, -4856($fp)
	bne $t1, $t2, label481
	j label482
label481:
	li $t0, 1
	sw $t0, -4848($fp)
label482:
	addi $sp, $sp, -4
	lw $t0, -4820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4848($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -4860($fp)
	addi $sp, $sp, 24
	lw $t0, -4088($fp)
	sw $t0, -4864($fp)
	lw $t1, -4860($fp)
	lw $t2, -4864($fp)
	bgt $t1, $t2, label476
	j label479
label479:
	li $t0, 56419
	sw $t0, -4868($fp)
	li $t0, 0
	lw $t1, -4868($fp)
	sub $t0, $t0, $t1
	sw $t0, -4872($fp)
	li $t0, 38285
	sw $t0, -4876($fp)
	lw $t0, -4872($fp)
	lw $t1, -4876($fp)
	sub $t0, $t0, $t1
	sw $t0, -4880($fp)
	li $t0, 0
	sw $t0, -4884($fp)
	lw $t0, -892($fp)
	sw $t0, -4888($fp)
	lw $t1, -4888($fp)
	li $t2, 0
	bne $t1, $t2, label484
	j label483
label483:
	li $t0, 1
	sw $t0, -4884($fp)
label484:
	li $t0, 0
	sw $t0, -4892($fp)
	lw $t0, -1264($fp)
	sw $t0, -4896($fp)
	li $t0, 54990
	sw $t0, -4900($fp)
	lw $t0, -4896($fp)
	lw $t1, -4900($fp)
	add $t0, $t0, $t1
	sw $t0, -4904($fp)
	lw $t0, -4028($fp)
	sw $t0, -4908($fp)
	lw $t1, -4904($fp)
	lw $t2, -4908($fp)
	ble $t1, $t2, label485
	j label486
label485:
	li $t0, 1
	sw $t0, -4892($fp)
label486:
	li $t0, 0
	sw $t0, -4912($fp)
	lw $t0, -1768($fp)
	sw $t0, -4916($fp)
	lw $t1, -4916($fp)
	li $t2, 0
	bne $t1, $t2, label488
	j label487
label487:
	li $t0, 1
	sw $t0, -4912($fp)
label488:
	lw $t0, -4112($fp)
	sw $t0, -4920($fp)
	lw $t0, -4912($fp)
	lw $t1, -4920($fp)
	sub $t0, $t0, $t1
	sw $t0, -4924($fp)
	lw $t0, -4100($fp)
	sw $t0, -4928($fp)
	li $t0, 54939
	sw $t0, -4932($fp)
	lw $t0, -4928($fp)
	lw $t1, -4932($fp)
	add $t0, $t0, $t1
	sw $t0, -4936($fp)
	addi $sp, $sp, -4
	lw $t0, -4880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4936($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -4940($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -144
	sw $t0, -4944($fp)
	li $t0, 0
	sw $t0, -4948($fp)
	li $t0, 4
	lw $t1, -4948($fp)
	mul $t0, $t0, $t1
	sw $t0, -4952($fp)
	lw $t0, -4952($fp)
	lw $t1, -4944($fp)
	add $t0, $t0, $t1
	sw $t0, -4956($fp)
	lw $t0, -4956($fp)
	lw $t1, 0($t0)
	sw $t1, -4960($fp)
	lw $t0, -4940($fp)
	lw $t1, -4960($fp)
	mul $t0, $t0, $t1
	sw $t0, -4964($fp)
	lw $t1, -4964($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label477
label476:
	li $t0, 0
	sw $t0, -4968($fp)
	lw $t0, -820($fp)
	sw $t0, -4972($fp)
	lw $t1, -4972($fp)
	li $t2, 0
	bne $t1, $t2, label489
	j label491
label491:
	addi $t0, $fp, -144
	sw $t0, -4976($fp)
	li $t0, 2
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
	lw $t0, -1804($fp)
	sw $t0, -4996($fp)
	li $t0, 0
	lw $t1, -4996($fp)
	sub $t0, $t0, $t1
	sw $t0, -5000($fp)
	lw $t0, -4992($fp)
	lw $t1, -5000($fp)
	sub $t0, $t0, $t1
	sw $t0, -5004($fp)
	lw $t1, -5004($fp)
	li $t2, 0
	bne $t1, $t2, label489
	j label490
label489:
	li $t0, 1
	sw $t0, -4968($fp)
label490:
	j label478
label477:
	li $t0, 0
	sw $t0, -5008($fp)
	addi $t0, $fp, -20
	sw $t0, -5012($fp)
	lw $t0, -1000($fp)
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
	lw $t1, -5028($fp)
	li $t2, 0
	bne $t1, $t2, label495
	j label494
label495:
	lw $t0, -4016($fp)
	sw $t0, -5032($fp)
	lw $t1, -5032($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label494
label494:
	lw $t0, -1672($fp)
	sw $t0, -5036($fp)
	li $t0, 31398
	sw $t0, -5040($fp)
	lw $t0, -5036($fp)
	lw $t1, -5040($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5044($fp)
	lw $t1, -5044($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label493
label492:
	li $t0, 1
	sw $t0, -5008($fp)
label493:
label478:
	j label463
label462:
label496:
	lw $t0, -4076($fp)
	sw $t0, -5048($fp)
	addi $t0, $fp, -132
	sw $t0, -5052($fp)
	li $t0, 2
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
	addi $t0, $fp, -92
	sw $t0, -5072($fp)
	lw $t0, -1300($fp)
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
	addi $sp, $sp, -4
	lw $t0, -5088($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -5092($fp)
	addi $sp, $sp, 8
	li $t0, 54014
	sw $t0, -5096($fp)
	lw $t0, -5092($fp)
	lw $t1, -5096($fp)
	mul $t0, $t0, $t1
	sw $t0, -5100($fp)
	li $t0, 0
	sw $t0, -5104($fp)
	lw $t0, -4040($fp)
	sw $t0, -5108($fp)
	lw $t0, -1432($fp)
	sw $t0, -5112($fp)
	lw $t1, -5108($fp)
	lw $t2, -5112($fp)
	bne $t1, $t2, label501
	j label500
label501:
	lw $t0, -4052($fp)
	sw $t0, -5116($fp)
	lw $t1, -5116($fp)
	li $t2, 0
	bne $t1, $t2, label499
	j label500
label499:
	li $t0, 1
	sw $t0, -5104($fp)
label500:
	addi $sp, $sp, -4
	lw $t0, -5068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5104($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5120($fp)
	addi $sp, $sp, 16
	li $t0, 27112
	sw $t0, -5124($fp)
	lw $t0, -5120($fp)
	lw $t1, -5124($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5128($fp)
	li $t0, 46510
	sw $t0, -5132($fp)
	li $t0, 0
	lw $t1, -5132($fp)
	sub $t0, $t0, $t1
	sw $t0, -5136($fp)
	addi $sp, $sp, -4
	lw $t0, -5048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5136($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -5140($fp)
	addi $sp, $sp, 16
	lw $t1, -5140($fp)
	li $t2, 0
	bne $t1, $t2, label497
	j label498
label497:
	li $t0, 0
	sw $t0, -5144($fp)
	li $t0, 2457
	sw $t0, -5148($fp)
	addi $sp, $sp, -4
	lw $t0, -5148($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -5152($fp)
	addi $sp, $sp, 8
	lw $t1, -5152($fp)
	li $t2, 0
	bne $t1, $t2, label504
	j label502
label504:
	lw $t0, -892($fp)
	sw $t0, -5156($fp)
	lw $t0, -1420($fp)
	sw $t0, -5160($fp)
	lw $t1, -5156($fp)
	lw $t2, -5160($fp)
	blt $t1, $t2, label502
	j label503
label502:
	li $t0, 1
	sw $t0, -5144($fp)
label503:
	lw $t0, -5144($fp)
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	sw $t0, -5164($fp)
	j label496
label498:
label463:
	j label454
label456:
	j label451
label453:
	j label423
label425:
	j label422
label421:
	li $t0, 0
	sw $t0, -5168($fp)
	addi $t0, $fp, -236
	sw $t0, -5172($fp)
	li $t0, 1
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
	lw $t0, -1684($fp)
	sw $t0, -5192($fp)
	lw $t0, -5188($fp)
	lw $t1, -5192($fp)
	mul $t0, $t0, $t1
	sw $t0, -5196($fp)
	lw $t0, -556($fp)
	sw $t0, -5200($fp)
	lw $t0, -904($fp)
	sw $t0, -5204($fp)
	lw $t0, -5200($fp)
	lw $t1, -5204($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5208($fp)
	lw $t0, -5196($fp)
	lw $t1, -5208($fp)
	sub $t0, $t0, $t1
	sw $t0, -5212($fp)
	li $t0, 0
	sw $t0, -5216($fp)
	addi $t0, $fp, -92
	sw $t0, -5220($fp)
	li $t0, 1
	sw $t0, -5224($fp)
	li $t0, 4
	lw $t1, -5224($fp)
	mul $t0, $t0, $t1
	sw $t0, -5228($fp)
	lw $t0, -5228($fp)
	lw $t1, -5220($fp)
	add $t0, $t0, $t1
	sw $t0, -5232($fp)
	lw $t0, -5232($fp)
	lw $t1, 0($t0)
	sw $t1, -5236($fp)
	lw $t1, -5236($fp)
	li $t2, 0
	bne $t1, $t2, label508
	j label507
label507:
	li $t0, 1
	sw $t0, -5216($fp)
label508:
	lw $t0, -1324($fp)
	sw $t0, -5240($fp)
	li $t0, 0
	lw $t1, -5240($fp)
	sub $t0, $t0, $t1
	sw $t0, -5244($fp)
	lw $t0, -5216($fp)
	lw $t1, -5244($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5248($fp)
	lw $t1, -5212($fp)
	lw $t2, -5248($fp)
	bne $t1, $t2, label505
	j label506
label505:
	li $t0, 1
	sw $t0, -5168($fp)
label506:
label422:
	j label396
label398:
label383:
	j label376
label378:
	li $t0, 16233
	sw $t0, -5252($fp)
	lw $t0, -988($fp)
	sw $t0, -5256($fp)
	lw $t0, -5252($fp)
	lw $t1, -5256($fp)
	sub $t0, $t0, $t1
	sw $t0, -5260($fp)
	lw $t1, -5260($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label510
label509:
label512:
	lw $t0, -1264($fp)
	sw $t0, -5264($fp)
	lw $t1, -5264($fp)
	li $t2, 0
	bne $t1, $t2, label513
	j label514
label513:
	li $t0, 55435
	sw $t0, -5268($fp)
	lw $t0, -5268($fp)
	sw $t0, -5272($fp)
	lw $t0, -5272($fp)
	sw $t0, -5276($fp)
	li $t0, 62253
	sw $t0, -5280($fp)
	lw $t0, -5280($fp)
	sw $t0, -5284($fp)
	lw $t0, -5284($fp)
	sw $t0, -5288($fp)
	li $t0, 10128
	sw $t0, -5292($fp)
	lw $t0, -5292($fp)
	sw $t0, -5296($fp)
	lw $t0, -5296($fp)
	sw $t0, -5300($fp)
label515:
	li $t0, 63331
	sw $t0, -5304($fp)
	lw $t0, -5304($fp)
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	sw $t0, -5308($fp)
	addi $sp, $sp, -4
	lw $t0, -5308($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -5312($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -5312($fp)
	sub $t0, $t0, $t1
	sw $t0, -5316($fp)
	lw $t0, -844($fp)
	sw $t0, -5320($fp)
	li $t0, 15846
	sw $t0, -5324($fp)
	lw $t0, -5320($fp)
	lw $t1, -5324($fp)
	mul $t0, $t0, $t1
	sw $t0, -5328($fp)
	lw $t0, -5316($fp)
	lw $t1, -5328($fp)
	sub $t0, $t0, $t1
	sw $t0, -5332($fp)
	lw $t0, -5332($fp)
	sw $t0, -5284($fp)
	lw $t0, -5284($fp)
	sw $t0, -5336($fp)
	lw $t1, -5336($fp)
	li $t2, 0
	bne $t1, $t2, label516
	j label517
label516:
label518:
	li $t0, 13302
	sw $t0, -5340($fp)
	lw $t0, -1756($fp)
	sw $t0, -5344($fp)
	lw $t0, -5340($fp)
	lw $t1, -5344($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5348($fp)
	lw $t1, -5348($fp)
	li $t2, 0
	bne $t1, $t2, label519
	j label520
label519:
	lw $t0, -1732($fp)
	sw $t0, -5352($fp)
	lw $t0, -5352($fp)
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -5356($fp)
	li $t0, 0
	sw $t0, -5360($fp)
	li $t0, 29360
	sw $t0, -5364($fp)
	li $t0, 19589
	sw $t0, -5368($fp)
	lw $t0, -5364($fp)
	lw $t1, -5368($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5372($fp)
	lw $t0, -5296($fp)
	sw $t0, -5376($fp)
	lw $t1, -5372($fp)
	lw $t2, -5376($fp)
	bge $t1, $t2, label521
	j label522
label521:
	li $t0, 1
	sw $t0, -5360($fp)
label522:
	li $t0, 0
	sw $t0, -5380($fp)
	li $t0, 47482
	sw $t0, -5384($fp)
	lw $t1, -5384($fp)
	li $t2, 0
	bne $t1, $t2, label525
	j label524
label525:
	li $t0, 34738
	sw $t0, -5388($fp)
	lw $t1, -5388($fp)
	li $t2, 0
	bne $t1, $t2, label523
	j label524
label523:
	li $t0, 1
	sw $t0, -5380($fp)
label524:
	addi $sp, $sp, -4
	lw $t0, -5356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5380($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5392($fp)
	addi $sp, $sp, 16
	j label518
label520:
	j label515
label517:
	li $t0, 0
	sw $t0, -5396($fp)
	li $t0, 23177
	sw $t0, -5400($fp)
	lw $t1, -5400($fp)
	li $t2, 0
	bne $t1, $t2, label530
	j label529
label529:
	li $t0, 1
	sw $t0, -5396($fp)
label530:
	li $t0, 0
	lw $t1, -5396($fp)
	sub $t0, $t0, $t1
	sw $t0, -5404($fp)
	lw $t1, -5404($fp)
	li $t2, 0
	bne $t1, $t2, label526
	j label527
label526:
	li $t0, 57048
	sw $t0, -5408($fp)
	li $t0, 0
	sw $t0, -5412($fp)
	li $t0, 14060
	sw $t0, -5416($fp)
	lw $t1, -5416($fp)
	li $t2, 0
	bne $t1, $t2, label534
	j label532
label534:
	lw $t0, -1816($fp)
	sw $t0, -5420($fp)
	lw $t1, -5420($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label532
label533:
	lw $t0, -820($fp)
	sw $t0, -5424($fp)
	lw $t1, -5424($fp)
	li $t2, 0
	bne $t1, $t2, label531
	j label532
label531:
	li $t0, 1
	sw $t0, -5412($fp)
label532:
	li $t0, 0
	sw $t0, -5428($fp)
	li $t0, 18763
	sw $t0, -5432($fp)
	li $t0, 0
	lw $t1, -5432($fp)
	sub $t0, $t0, $t1
	sw $t0, -5436($fp)
	li $t0, 9043
	sw $t0, -5440($fp)
	lw $t1, -5436($fp)
	lw $t2, -5440($fp)
	blt $t1, $t2, label535
	j label536
label535:
	li $t0, 1
	sw $t0, -5428($fp)
label536:
	addi $sp, $sp, -4
	lw $t0, -5408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5428($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5444($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -5448($fp)
	lw $t0, -1780($fp)
	sw $t0, -5452($fp)
	li $t0, 38019
	sw $t0, -5456($fp)
	lw $t0, -5452($fp)
	lw $t1, -5456($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5460($fp)
	lw $t0, -1672($fp)
	sw $t0, -5464($fp)
	li $t0, 0
	lw $t1, -5464($fp)
	sub $t0, $t0, $t1
	sw $t0, -5468($fp)
	lw $t0, -5460($fp)
	lw $t1, -5468($fp)
	add $t0, $t0, $t1
	sw $t0, -5472($fp)
	lw $t1, -5472($fp)
	li $t2, 0
	bne $t1, $t2, label540
	j label539
label540:
	li $t0, 15891
	sw $t0, -5476($fp)
	lw $t0, -1252($fp)
	sw $t0, -5480($fp)
	lw $t0, -5476($fp)
	lw $t1, -5480($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5484($fp)
	lw $t0, -1264($fp)
	sw $t0, -5488($fp)
	lw $t1, -5484($fp)
	lw $t2, -5488($fp)
	bne $t1, $t2, label537
	j label539
label539:
	li $t0, 11382
	sw $t0, -5492($fp)
	lw $t1, -5492($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label537
label537:
	li $t0, 1
	sw $t0, -5448($fp)
label538:
	li $t0, 0
	sw $t0, -5496($fp)
	li $t0, 57452
	sw $t0, -5500($fp)
	lw $t0, -268($fp)
	sw $t0, -5504($fp)
	li $t0, 0
	sw $t0, -5508($fp)
	lw $t0, -820($fp)
	sw $t0, -5512($fp)
	li $t0, 0
	lw $t1, -5512($fp)
	sub $t0, $t0, $t1
	sw $t0, -5516($fp)
	lw $t1, -5516($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label544
label544:
	li $t0, 1
	sw $t0, -5508($fp)
label545:
	lw $t0, -5504($fp)
	lw $t1, -5508($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5520($fp)
	li $t0, 0
	lw $t1, -5520($fp)
	sub $t0, $t0, $t1
	sw $t0, -5524($fp)
	lw $t0, -5500($fp)
	lw $t1, -5524($fp)
	mul $t0, $t0, $t1
	sw $t0, -5528($fp)
	lw $t1, -5528($fp)
	li $t2, 0
	bne $t1, $t2, label543
	j label542
label543:
	addi $t0, $fp, -236
	sw $t0, -5532($fp)
	li $t0, 0
	sw $t0, -5536($fp)
	li $t0, 47289
	sw $t0, -5540($fp)
	lw $t1, -5540($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label548
label548:
	lw $t0, -1432($fp)
	sw $t0, -5544($fp)
	lw $t1, -5544($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label547
label546:
	li $t0, 1
	sw $t0, -5536($fp)
label547:
	li $t0, 4
	lw $t1, -5536($fp)
	mul $t0, $t0, $t1
	sw $t0, -5548($fp)
	lw $t0, -5548($fp)
	lw $t1, -5532($fp)
	add $t0, $t0, $t1
	sw $t0, -5552($fp)
	lw $t0, -5552($fp)
	lw $t1, 0($t0)
	sw $t1, -5556($fp)
	lw $t1, -5556($fp)
	li $t2, 0
	bne $t1, $t2, label541
	j label542
label541:
	li $t0, 1
	sw $t0, -5496($fp)
label542:
label527:
label549:
	lw $t0, -1420($fp)
	sw $t0, -5560($fp)
	lw $t1, -5560($fp)
	li $t2, 0
	bne $t1, $t2, label550
	j label551
label550:
	li $t0, 0
	sw $t0, -5564($fp)
	lw $t0, -1828($fp)
	sw $t0, -5568($fp)
	li $t0, 0
	sw $t0, -5572($fp)
	addi $t0, $fp, -48
	sw $t0, -5576($fp)
	lw $t0, -1756($fp)
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
	li $t0, 57892
	sw $t0, -5596($fp)
	lw $t1, -5592($fp)
	lw $t2, -5596($fp)
	bgt $t1, $t2, label555
	j label556
label555:
	li $t0, 1
	sw $t0, -5572($fp)
label556:
	lw $t1, -5568($fp)
	lw $t2, -5572($fp)
	beq $t1, $t2, label554
	j label553
label554:
	lw $t0, -556($fp)
	sw $t0, -5600($fp)
	li $t0, 45930
	sw $t0, -5604($fp)
	lw $t0, -5600($fp)
	lw $t1, -5604($fp)
	sub $t0, $t0, $t1
	sw $t0, -5608($fp)
	lw $t0, -568($fp)
	sw $t0, -5612($fp)
	lw $t0, -580($fp)
	sw $t0, -5616($fp)
	lw $t0, -5612($fp)
	lw $t1, -5616($fp)
	mul $t0, $t0, $t1
	sw $t0, -5620($fp)
	lw $t0, -5608($fp)
	lw $t1, -5620($fp)
	sub $t0, $t0, $t1
	sw $t0, -5624($fp)
	lw $t1, -5624($fp)
	li $t2, 0
	bne $t1, $t2, label552
	j label553
label552:
	li $t0, 1
	sw $t0, -5564($fp)
label553:
	lw $ra, -4($fp)
	lw $v0, -5564($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label549
label551:
	li $t0, 62127
	sw $t0, -5628($fp)
	lw $t1, -5628($fp)
	li $t2, 0
	bne $t1, $t2, label558
	j label557
label557:
label560:
	li $t0, 49110
	sw $t0, -5632($fp)
	lw $t1, -5632($fp)
	li $t2, 0
	bne $t1, $t2, label561
	j label562
label561:
	lw $t0, -1744($fp)
	sw $t0, -5636($fp)
	li $t0, 0
	sw $t0, -5640($fp)
	li $t0, 0
	sw $t0, -5644($fp)
	li $t0, 1875
	sw $t0, -5648($fp)
	li $t0, 9430
	sw $t0, -5652($fp)
	lw $t1, -5648($fp)
	lw $t2, -5652($fp)
	bge $t1, $t2, label568
	j label569
label568:
	li $t0, 1
	sw $t0, -5644($fp)
label569:
	li $t0, 54701
	sw $t0, -5656($fp)
	lw $t1, -5644($fp)
	lw $t2, -5656($fp)
	ble $t1, $t2, label566
	j label567
label566:
	li $t0, 1
	sw $t0, -5640($fp)
label567:
	li $t0, 0
	sw $t0, -5660($fp)
	li $t0, 64584
	sw $t0, -5664($fp)
	lw $t1, -5664($fp)
	li $t2, 0
	bne $t1, $t2, label571
	j label570
label570:
	li $t0, 1
	sw $t0, -5660($fp)
label571:
	li $t0, 39300
	sw $t0, -5668($fp)
	lw $t0, -5660($fp)
	lw $t1, -5668($fp)
	sub $t0, $t0, $t1
	sw $t0, -5672($fp)
	li $t0, 7506
	sw $t0, -5676($fp)
	lw $t0, -5676($fp)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -5680($fp)
	addi $sp, $sp, -4
	lw $t0, -5640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5680($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5684($fp)
	addi $sp, $sp, 16
	lw $t0, -5636($fp)
	lw $t1, -5684($fp)
	sub $t0, $t0, $t1
	sw $t0, -5688($fp)
	li $t0, 0
	sw $t0, -5692($fp)
	lw $t0, 4($fp)
	sw $t0, -5696($fp)
	li $t0, 18108
	sw $t0, -5700($fp)
	lw $t0, -5696($fp)
	lw $t1, -5700($fp)
	mul $t0, $t0, $t1
	sw $t0, -5704($fp)
	li $t0, 0
	lw $t1, -5704($fp)
	sub $t0, $t0, $t1
	sw $t0, -5708($fp)
	lw $t1, -5708($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label572
label572:
	li $t0, 1
	sw $t0, -5692($fp)
label573:
	lw $t0, -5688($fp)
	lw $t1, -5692($fp)
	add $t0, $t0, $t1
	sw $t0, -5712($fp)
	lw $t1, -5712($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label564
label563:
	li $t0, 64865
	sw $t0, -5716($fp)
	lw $t0, -5716($fp)
	sw $t0, -5720($fp)
	lw $t0, -5720($fp)
	sw $t0, -5724($fp)
	li $t0, 0
	sw $t0, -5728($fp)
	li $t0, 0
	sw $t0, -5732($fp)
	li $t0, 51418
	sw $t0, -5736($fp)
	lw $t0, -1324($fp)
	sw $t0, -5740($fp)
	lw $t0, -5736($fp)
	lw $t1, -5740($fp)
	mul $t0, $t0, $t1
	sw $t0, -5744($fp)
	lw $t0, -5720($fp)
	sw $t0, -5748($fp)
	lw $t1, -5744($fp)
	lw $t2, -5748($fp)
	ble $t1, $t2, label576
	j label577
label576:
	li $t0, 1
	sw $t0, -5732($fp)
label577:
	jal f7
	sw $v0, -5752($fp)
	addi $sp, $sp, 4
	lw $t1, -5732($fp)
	lw $t2, -5752($fp)
	beq $t1, $t2, label574
	j label575
label574:
	li $t0, 1
	sw $t0, -5728($fp)
label575:
	addi $t0, $fp, -92
	sw $t0, -5756($fp)
	li $t0, 0
	sw $t0, -5760($fp)
	li $t0, 0
	sw $t0, -5764($fp)
	li $t0, 62661
	sw $t0, -5768($fp)
	li $t0, 0
	lw $t1, -5768($fp)
	sub $t0, $t0, $t1
	sw $t0, -5772($fp)
	lw $t1, -5772($fp)
	li $t2, 0
	bne $t1, $t2, label583
	j label582
label583:
	lw $t0, -1312($fp)
	sw $t0, -5776($fp)
	lw $t1, -5776($fp)
	li $t2, 0
	bne $t1, $t2, label581
	j label582
label581:
	li $t0, 1
	sw $t0, -5764($fp)
label582:
	li $t0, 0
	sw $t0, -5780($fp)
	li $t0, 28236
	sw $t0, -5784($fp)
	lw $t1, -5784($fp)
	li $t2, 0
	bne $t1, $t2, label584
	j label585
label584:
	li $t0, 1
	sw $t0, -5780($fp)
label585:
	li $t0, 0
	sw $t0, -5788($fp)
	lw $t0, -1288($fp)
	sw $t0, -5792($fp)
	lw $t1, -5792($fp)
	li $t2, 0
	bne $t1, $t2, label588
	j label587
label588:
	lw $t0, -832($fp)
	sw $t0, -5796($fp)
	lw $t1, -5796($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label587
label586:
	li $t0, 1
	sw $t0, -5788($fp)
label587:
	addi $sp, $sp, -4
	lw $t0, -5764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5788($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -5800($fp)
	addi $sp, $sp, 16
	lw $t1, -5800($fp)
	li $t2, 0
	bne $t1, $t2, label580
	j label579
label580:
	lw $t0, -580($fp)
	sw $t0, -5804($fp)
	lw $t1, -5804($fp)
	li $t2, 0
	bne $t1, $t2, label578
	j label579
label578:
	li $t0, 1
	sw $t0, -5760($fp)
label579:
	li $t0, 4
	lw $t1, -5760($fp)
	mul $t0, $t0, $t1
	sw $t0, -5808($fp)
	lw $t0, -5808($fp)
	lw $t1, -5756($fp)
	add $t0, $t0, $t1
	sw $t0, -5812($fp)
	lw $t0, -5812($fp)
	lw $t1, 0($t0)
	sw $t1, -5816($fp)
	lw $t0, -556($fp)
	sw $t0, -5820($fp)
	lw $t0, -5816($fp)
	lw $t1, -5820($fp)
	sub $t0, $t0, $t1
	sw $t0, -5824($fp)
	addi $t0, $fp, -80
	sw $t0, -5828($fp)
	li $t0, 0
	sw $t0, -5832($fp)
	addi $t0, $fp, -132
	sw $t0, -5836($fp)
	lw $t0, -1300($fp)
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
	li $t0, 0
	sw $t0, -5856($fp)
	addi $t0, $fp, -20
	sw $t0, -5860($fp)
	li $t0, 3
	sw $t0, -5864($fp)
	li $t0, 4
	lw $t1, -5864($fp)
	mul $t0, $t0, $t1
	sw $t0, -5868($fp)
	lw $t0, -5868($fp)
	lw $t1, -5860($fp)
	add $t0, $t0, $t1
	sw $t0, -5872($fp)
	lw $t0, -5872($fp)
	lw $t1, 0($t0)
	sw $t1, -5876($fp)
	lw $t1, -5876($fp)
	li $t2, 0
	bne $t1, $t2, label592
	j label591
label591:
	li $t0, 1
	sw $t0, -5856($fp)
label592:
	lw $t0, -5272($fp)
	sw $t0, -5880($fp)
	li $t0, 0
	lw $t1, -5880($fp)
	sub $t0, $t0, $t1
	sw $t0, -5884($fp)
	li $t0, 0
	sw $t0, -5888($fp)
	li $t0, 0
	sw $t0, -5892($fp)
	lw $t0, -1432($fp)
	sw $t0, -5896($fp)
	li $t0, 1729
	sw $t0, -5900($fp)
	lw $t1, -5896($fp)
	lw $t2, -5900($fp)
	blt $t1, $t2, label595
	j label596
label595:
	li $t0, 1
	sw $t0, -5892($fp)
label596:
	lw $t0, -1000($fp)
	sw $t0, -5904($fp)
	lw $t1, -5892($fp)
	lw $t2, -5904($fp)
	blt $t1, $t2, label593
	j label594
label593:
	li $t0, 1
	sw $t0, -5888($fp)
label594:
	addi $sp, $sp, -4
	lw $t0, -5856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5888($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -5908($fp)
	addi $sp, $sp, 16
	lw $t1, -5852($fp)
	lw $t2, -5908($fp)
	bgt $t1, $t2, label589
	j label590
label589:
	li $t0, 1
	sw $t0, -5832($fp)
label590:
	li $t0, 4
	lw $t1, -5832($fp)
	mul $t0, $t0, $t1
	sw $t0, -5912($fp)
	lw $t0, -5912($fp)
	lw $t1, -5828($fp)
	add $t0, $t0, $t1
	sw $t0, -5916($fp)
	lw $t0, -5916($fp)
	lw $t1, 0($t0)
	sw $t1, -5920($fp)
	j label565
label564:
	li $t0, 36467
	sw $t0, -5924($fp)
	lw $t1, -5924($fp)
	li $t2, 0
	bne $t1, $t2, label597
	j label598
label597:
	li $t0, 0
	sw $t0, -5928($fp)
	addi $t0, $fp, -80
	sw $t0, -5932($fp)
	li $t0, 4
	sw $t0, -5936($fp)
	li $t0, 4
	lw $t1, -5936($fp)
	mul $t0, $t0, $t1
	sw $t0, -5940($fp)
	lw $t0, -5940($fp)
	lw $t1, -5932($fp)
	add $t0, $t0, $t1
	sw $t0, -5944($fp)
	lw $t0, -5944($fp)
	lw $t1, 0($t0)
	sw $t1, -5948($fp)
	li $t0, 0
	lw $t1, -5948($fp)
	sub $t0, $t0, $t1
	sw $t0, -5952($fp)
	li $t0, 0
	lw $t1, -5952($fp)
	sub $t0, $t0, $t1
	sw $t0, -5956($fp)
	li $t0, 59644
	sw $t0, -5960($fp)
	lw $t1, -5956($fp)
	lw $t2, -5960($fp)
	bgt $t1, $t2, label600
	j label601
label600:
	li $t0, 1
	sw $t0, -5928($fp)
label601:
	lw $ra, -4($fp)
	lw $v0, -5928($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label599
label598:
	li $t0, 24126
	sw $t0, -5964($fp)
label599:
label565:
	j label560
label562:
	j label559
label558:
label602:
	li $t0, 7703
	sw $t0, -5968($fp)
	lw $t1, -5968($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label604
label603:
label605:
	addi $t0, $fp, -20
	sw $t0, -5972($fp)
	li $t0, 0
	sw $t0, -5976($fp)
	lw $t0, -1816($fp)
	sw $t0, -5980($fp)
	lw $t1, -5980($fp)
	li $t2, 0
	bne $t1, $t2, label608
	j label610
label610:
	li $t0, 8168
	sw $t0, -5984($fp)
	lw $t1, -5984($fp)
	li $t2, 0
	bne $t1, $t2, label608
	j label609
label608:
	li $t0, 1
	sw $t0, -5976($fp)
label609:
	li $t0, 4
	lw $t1, -5976($fp)
	mul $t0, $t0, $t1
	sw $t0, -5988($fp)
	lw $t0, -5988($fp)
	lw $t1, -5972($fp)
	add $t0, $t0, $t1
	sw $t0, -5992($fp)
	lw $t0, -5992($fp)
	lw $t1, 0($t0)
	sw $t1, -5996($fp)
	li $t0, 0
	sw $t0, -6000($fp)
	lw $t0, -820($fp)
	sw $t0, -6004($fp)
	li $t0, 0
	lw $t1, -6004($fp)
	sub $t0, $t0, $t1
	sw $t0, -6008($fp)
	li $t0, 0
	lw $t1, -6008($fp)
	sub $t0, $t0, $t1
	sw $t0, -6012($fp)
	lw $t1, -6012($fp)
	li $t2, 0
	bne $t1, $t2, label612
	j label611
label611:
	li $t0, 1
	sw $t0, -6000($fp)
label612:
	lw $t0, -5996($fp)
	lw $t1, -6000($fp)
	mul $t0, $t0, $t1
	sw $t0, -6016($fp)
	lw $t1, -6016($fp)
	li $t2, 0
	bne $t1, $t2, label606
	j label607
label606:
	li $t0, 15638
	sw $t0, -6060($fp)
	lw $t0, -6060($fp)
	sw $t0, -6064($fp)
	lw $t0, -6064($fp)
	sw $t0, -6068($fp)
	li $t0, 45722
	sw $t0, -6072($fp)
	addi $t0, $fp, -6056
	sw $t0, -6076($fp)
	li $t0, 0
	sw $t0, -6080($fp)
	lw $t0, -6080($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6084($fp)
	lw $t0, -6076($fp)
	lw $t1, -6084($fp)
	add $t0, $t0, $t1
	sw $t0, -6088($fp)
	lw $t0, -6072($fp)
	lw $t1, -6088($fp)
	sw $t0, 0($t1)
	lw $t0, -6088($fp)
	lw $t1, 0($t0)
	sw $t1, -6092($fp)
	li $t0, 24059
	sw $t0, -6096($fp)
	addi $t0, $fp, -6056
	sw $t0, -6100($fp)
	li $t0, 1
	sw $t0, -6104($fp)
	lw $t0, -6104($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6108($fp)
	lw $t0, -6100($fp)
	lw $t1, -6108($fp)
	add $t0, $t0, $t1
	sw $t0, -6112($fp)
	lw $t0, -6096($fp)
	lw $t1, -6112($fp)
	sw $t0, 0($t1)
	lw $t0, -6112($fp)
	lw $t1, 0($t0)
	sw $t1, -6116($fp)
	li $t0, 27021
	sw $t0, -6120($fp)
	addi $t0, $fp, -6056
	sw $t0, -6124($fp)
	li $t0, 2
	sw $t0, -6128($fp)
	lw $t0, -6128($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6132($fp)
	lw $t0, -6124($fp)
	lw $t1, -6132($fp)
	add $t0, $t0, $t1
	sw $t0, -6136($fp)
	lw $t0, -6120($fp)
	lw $t1, -6136($fp)
	sw $t0, 0($t1)
	lw $t0, -6136($fp)
	lw $t1, 0($t0)
	sw $t1, -6140($fp)
	li $t0, 37638
	sw $t0, -6144($fp)
	addi $t0, $fp, -6056
	sw $t0, -6148($fp)
	li $t0, 3
	sw $t0, -6152($fp)
	lw $t0, -6152($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6156($fp)
	lw $t0, -6148($fp)
	lw $t1, -6156($fp)
	add $t0, $t0, $t1
	sw $t0, -6160($fp)
	lw $t0, -6144($fp)
	lw $t1, -6160($fp)
	sw $t0, 0($t1)
	lw $t0, -6160($fp)
	lw $t1, 0($t0)
	sw $t1, -6164($fp)
	li $t0, 5812
	sw $t0, -6168($fp)
	addi $t0, $fp, -6056
	sw $t0, -6172($fp)
	li $t0, 4
	sw $t0, -6176($fp)
	lw $t0, -6176($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6180($fp)
	lw $t0, -6172($fp)
	lw $t1, -6180($fp)
	add $t0, $t0, $t1
	sw $t0, -6184($fp)
	lw $t0, -6168($fp)
	lw $t1, -6184($fp)
	sw $t0, 0($t1)
	lw $t0, -6184($fp)
	lw $t1, 0($t0)
	sw $t1, -6188($fp)
	li $t0, 19377
	sw $t0, -6192($fp)
	addi $t0, $fp, -6056
	sw $t0, -6196($fp)
	li $t0, 5
	sw $t0, -6200($fp)
	lw $t0, -6200($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6204($fp)
	lw $t0, -6196($fp)
	lw $t1, -6204($fp)
	add $t0, $t0, $t1
	sw $t0, -6208($fp)
	lw $t0, -6192($fp)
	lw $t1, -6208($fp)
	sw $t0, 0($t1)
	lw $t0, -6208($fp)
	lw $t1, 0($t0)
	sw $t1, -6212($fp)
	li $t0, 18032
	sw $t0, -6216($fp)
	addi $t0, $fp, -6056
	sw $t0, -6220($fp)
	li $t0, 6
	sw $t0, -6224($fp)
	lw $t0, -6224($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6228($fp)
	lw $t0, -6220($fp)
	lw $t1, -6228($fp)
	add $t0, $t0, $t1
	sw $t0, -6232($fp)
	lw $t0, -6216($fp)
	lw $t1, -6232($fp)
	sw $t0, 0($t1)
	lw $t0, -6232($fp)
	lw $t1, 0($t0)
	sw $t1, -6236($fp)
	li $t0, 2403
	sw $t0, -6240($fp)
	addi $t0, $fp, -6056
	sw $t0, -6244($fp)
	li $t0, 7
	sw $t0, -6248($fp)
	lw $t0, -6248($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6252($fp)
	lw $t0, -6244($fp)
	lw $t1, -6252($fp)
	add $t0, $t0, $t1
	sw $t0, -6256($fp)
	lw $t0, -6240($fp)
	lw $t1, -6256($fp)
	sw $t0, 0($t1)
	lw $t0, -6256($fp)
	lw $t1, 0($t0)
	sw $t1, -6260($fp)
	li $t0, 2952
	sw $t0, -6264($fp)
	addi $t0, $fp, -6056
	sw $t0, -6268($fp)
	li $t0, 8
	sw $t0, -6272($fp)
	lw $t0, -6272($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6276($fp)
	lw $t0, -6268($fp)
	lw $t1, -6276($fp)
	add $t0, $t0, $t1
	sw $t0, -6280($fp)
	lw $t0, -6264($fp)
	lw $t1, -6280($fp)
	sw $t0, 0($t1)
	lw $t0, -6280($fp)
	lw $t1, 0($t0)
	sw $t1, -6284($fp)
	li $t0, 25538
	sw $t0, -6288($fp)
	addi $t0, $fp, -6056
	sw $t0, -6292($fp)
	li $t0, 9
	sw $t0, -6296($fp)
	lw $t0, -6296($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6300($fp)
	lw $t0, -6292($fp)
	lw $t1, -6300($fp)
	add $t0, $t0, $t1
	sw $t0, -6304($fp)
	lw $t0, -6288($fp)
	lw $t1, -6304($fp)
	sw $t0, 0($t1)
	lw $t0, -6304($fp)
	lw $t1, 0($t0)
	sw $t1, -6308($fp)
	li $t0, 0
	sw $t0, -6312($fp)
	li $t0, 0
	sw $t0, -6316($fp)
	addi $t0, $fp, -6056
	sw $t0, -6320($fp)
	li $t0, 7
	sw $t0, -6324($fp)
	li $t0, 4
	lw $t1, -6324($fp)
	mul $t0, $t0, $t1
	sw $t0, -6328($fp)
	lw $t0, -6328($fp)
	lw $t1, -6320($fp)
	add $t0, $t0, $t1
	sw $t0, -6332($fp)
	lw $t0, -6332($fp)
	lw $t1, 0($t0)
	sw $t1, -6336($fp)
	lw $t1, -6336($fp)
	li $t2, 0
	bne $t1, $t2, label616
	j label615
label615:
	li $t0, 1
	sw $t0, -6316($fp)
label616:
	li $t0, 31417
	sw $t0, -6340($fp)
	lw $t0, -6340($fp)
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -6344($fp)
	li $t0, 10881
	sw $t0, -6348($fp)
	lw $t0, -6348($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -6352($fp)
	addi $sp, $sp, -4
	lw $t0, -6316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6352($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6356($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -6356($fp)
	sub $t0, $t0, $t1
	sw $t0, -6360($fp)
	lw $t0, -6064($fp)
	sw $t0, -6364($fp)
	li $t0, 42252
	sw $t0, -6368($fp)
	lw $t0, -6364($fp)
	lw $t1, -6368($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6372($fp)
	li $t0, 27413
	sw $t0, -6376($fp)
	lw $t0, -6372($fp)
	lw $t1, -6376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6380($fp)
	jal f7
	sw $v0, -6384($fp)
	addi $sp, $sp, 4
	li $t0, 1451
	sw $t0, -6388($fp)
	lw $t0, -6384($fp)
	lw $t1, -6388($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6392($fp)
	addi $sp, $sp, -4
	lw $t0, -6360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6392($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6396($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -6400($fp)
	lw $t0, -1324($fp)
	sw $t0, -6404($fp)
	addi $t0, $fp, -236
	sw $t0, -6408($fp)
	lw $t0, -1324($fp)
	sw $t0, -6412($fp)
	li $t0, 4
	lw $t1, -6412($fp)
	mul $t0, $t0, $t1
	sw $t0, -6416($fp)
	lw $t0, -6416($fp)
	lw $t1, -6408($fp)
	add $t0, $t0, $t1
	sw $t0, -6420($fp)
	lw $t0, -6420($fp)
	lw $t1, 0($t0)
	sw $t1, -6424($fp)
	addi $t0, $fp, -80
	sw $t0, -6428($fp)
	lw $t0, -1936($fp)
	sw $t0, -6432($fp)
	li $t0, 4
	lw $t1, -6432($fp)
	mul $t0, $t0, $t1
	sw $t0, -6436($fp)
	lw $t0, -6436($fp)
	lw $t1, -6428($fp)
	add $t0, $t0, $t1
	sw $t0, -6440($fp)
	lw $t0, -6440($fp)
	lw $t1, 0($t0)
	sw $t1, -6444($fp)
	addi $sp, $sp, -4
	lw $t0, -6404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6444($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6448($fp)
	addi $sp, $sp, 16
	lw $t1, -6448($fp)
	li $t2, 0
	bne $t1, $t2, label618
	j label617
label617:
	li $t0, 1
	sw $t0, -6400($fp)
label618:
	lw $t0, -6396($fp)
	lw $t1, -6400($fp)
	mul $t0, $t0, $t1
	sw $t0, -6452($fp)
	li $t0, 0
	lw $t1, -6452($fp)
	sub $t0, $t0, $t1
	sw $t0, -6456($fp)
	lw $t1, -6456($fp)
	li $t2, 0
	bne $t1, $t2, label614
	j label613
label613:
	li $t0, 1
	sw $t0, -6312($fp)
label614:
	lw $t0, -820($fp)
	sw $t0, -6460($fp)
	j label605
label607:
	j label602
label604:
label559:
	lw $t0, -5272($fp)
	sw $t0, -6464($fp)
	lw $t0, -6464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -6468($fp)
	li $t0, 0
	sw $t0, -6472($fp)
	lw $t0, -1408($fp)
	sw $t0, -6476($fp)
	addi $t0, $fp, -20
	sw $t0, -6480($fp)
	lw $t0, -1768($fp)
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
	lw $t1, -6476($fp)
	lw $t2, -6496($fp)
	beq $t1, $t2, label619
	j label620
label619:
	li $t0, 1
	sw $t0, -6472($fp)
label620:
	li $t0, 4
	lw $t1, -6472($fp)
	mul $t0, $t0, $t1
	sw $t0, -6500($fp)
	lw $t0, -6500($fp)
	lw $t1, -6468($fp)
	add $t0, $t0, $t1
	sw $t0, -6504($fp)
	lw $t0, -6504($fp)
	lw $t1, 0($t0)
	sw $t1, -6508($fp)
	lw $ra, -4($fp)
	lw $v0, -6508($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label621:
	lw $t0, -1312($fp)
	sw $t0, -6512($fp)
	addi $t0, $fp, -132
	sw $t0, -6516($fp)
	li $t0, 1
	sw $t0, -6520($fp)
	li $t0, 4
	lw $t1, -6520($fp)
	mul $t0, $t0, $t1
	sw $t0, -6524($fp)
	lw $t0, -6524($fp)
	lw $t1, -6516($fp)
	add $t0, $t0, $t1
	sw $t0, -6528($fp)
	lw $t0, -6528($fp)
	lw $t1, 0($t0)
	sw $t1, -6532($fp)
	lw $t0, -6512($fp)
	lw $t1, -6532($fp)
	sub $t0, $t0, $t1
	sw $t0, -6536($fp)
	lw $t1, -6536($fp)
	li $t2, 0
	bne $t1, $t2, label622
	j label623
label622:
	li $t0, 0
	sw $t0, -6540($fp)
	li $t0, 7336
	sw $t0, -6544($fp)
	li $t0, 0
	lw $t1, -6544($fp)
	sub $t0, $t0, $t1
	sw $t0, -6548($fp)
	addi $t0, $fp, -144
	sw $t0, -6552($fp)
	li $t0, 0
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
	li $t0, 51943
	sw $t0, -6572($fp)
	lw $t0, -6568($fp)
	lw $t1, -6572($fp)
	add $t0, $t0, $t1
	sw $t0, -6576($fp)
	lw $t1, -6548($fp)
	lw $t2, -6576($fp)
	beq $t1, $t2, label624
	j label625
label624:
	li $t0, 1
	sw $t0, -6540($fp)
label625:
	j label621
label623:
	li $t0, 0
	sw $t0, -6580($fp)
	li $t0, 55496
	sw $t0, -6584($fp)
	li $t0, 55122
	sw $t0, -6588($fp)
	lw $t1, -6584($fp)
	lw $t2, -6588($fp)
	beq $t1, $t2, label631
	j label632
label631:
	li $t0, 1
	sw $t0, -6580($fp)
label632:
	li $t0, 50604
	sw $t0, -6592($fp)
	li $t0, 49604
	sw $t0, -6596($fp)
	lw $t0, -6592($fp)
	lw $t1, -6596($fp)
	add $t0, $t0, $t1
	sw $t0, -6600($fp)
	lw $t1, -6580($fp)
	lw $t2, -6600($fp)
	bne $t1, $t2, label630
	j label627
label630:
	li $t0, 13712
	sw $t0, -6604($fp)
	lw $t0, -1432($fp)
	sw $t0, -6608($fp)
	lw $t0, -6604($fp)
	lw $t1, -6608($fp)
	mul $t0, $t0, $t1
	sw $t0, -6612($fp)
	lw $t1, -6612($fp)
	li $t2, 0
	bne $t1, $t2, label629
	j label627
label629:
	li $t0, 0
	sw $t0, -6616($fp)
	lw $t0, -5272($fp)
	sw $t0, -6620($fp)
	lw $t1, -6620($fp)
	li $t2, 0
	bne $t1, $t2, label634
	j label633
label633:
	li $t0, 1
	sw $t0, -6616($fp)
label634:
	li $t0, 0
	lw $t1, -6616($fp)
	sub $t0, $t0, $t1
	sw $t0, -6624($fp)
	lw $t1, -6624($fp)
	li $t2, 0
	bne $t1, $t2, label626
	j label627
label626:
	li $t0, 58307
	sw $t0, -6628($fp)
	lw $t1, -6628($fp)
	li $t2, 0
	bne $t1, $t2, label635
	j label638
label638:
	lw $t0, -820($fp)
	sw $t0, -6632($fp)
	lw $t0, -1708($fp)
	sw $t0, -6636($fp)
	lw $t0, -6632($fp)
	lw $t1, -6636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6640($fp)
	lw $t0, -844($fp)
	sw $t0, -6644($fp)
	lw $t1, -6640($fp)
	lw $t2, -6644($fp)
	blt $t1, $t2, label639
	j label636
label639:
	li $t0, 57772
	sw $t0, -6648($fp)
	li $t0, 29350
	sw $t0, -6652($fp)
	lw $t1, -6648($fp)
	lw $t2, -6652($fp)
	ble $t1, $t2, label635
	j label636
label635:
	li $t0, 0
	sw $t0, -6656($fp)
	li $t0, 0
	sw $t0, -6660($fp)
	lw $t0, -856($fp)
	sw $t0, -6664($fp)
	lw $t1, -6664($fp)
	li $t2, 0
	bne $t1, $t2, label643
	j label642
label642:
	li $t0, 1
	sw $t0, -6660($fp)
label643:
	lw $t0, -868($fp)
	sw $t0, -6668($fp)
	lw $t0, -6660($fp)
	lw $t1, -6668($fp)
	sub $t0, $t0, $t1
	sw $t0, -6672($fp)
	lw $t0, -880($fp)
	sw $t0, -6676($fp)
	lw $t1, -6672($fp)
	lw $t2, -6676($fp)
	ble $t1, $t2, label640
	j label641
label640:
	li $t0, 1
	sw $t0, -6656($fp)
label641:
	lw $t0, -6656($fp)
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	sw $t0, -6680($fp)
label636:
label627:
	j label512
label514:
	j label511
label510:
	li $t0, 0
	sw $t0, -6684($fp)
	li $t0, 0
	sw $t0, -6688($fp)
	li $t0, 38494
	sw $t0, -6692($fp)
	lw $t1, -6692($fp)
	li $t2, 0
	bne $t1, $t2, label647
	j label646
label646:
	li $t0, 1
	sw $t0, -6688($fp)
label647:
	addi $t0, $fp, -48
	sw $t0, -6696($fp)
	li $t0, 1
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
	lw $t0, -6688($fp)
	lw $t1, -6712($fp)
	sub $t0, $t0, $t1
	sw $t0, -6716($fp)
	addi $t0, $fp, -80
	sw $t0, -6720($fp)
	lw $t0, -1732($fp)
	sw $t0, -6724($fp)
	li $t0, 4
	lw $t1, -6724($fp)
	mul $t0, $t0, $t1
	sw $t0, -6728($fp)
	lw $t0, -6728($fp)
	lw $t1, -6720($fp)
	add $t0, $t0, $t1
	sw $t0, -6732($fp)
	lw $t0, -6732($fp)
	lw $t1, 0($t0)
	sw $t1, -6736($fp)
	lw $t0, -820($fp)
	sw $t0, -6740($fp)
	lw $t0, -1264($fp)
	sw $t0, -6744($fp)
	lw $t0, -6740($fp)
	lw $t1, -6744($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6748($fp)
	lw $t0, -6736($fp)
	lw $t1, -6748($fp)
	add $t0, $t0, $t1
	sw $t0, -6752($fp)
	lw $t1, -6716($fp)
	lw $t2, -6752($fp)
	bgt $t1, $t2, label644
	j label645
label644:
	li $t0, 1
	sw $t0, -6684($fp)
label645:
label511:
	lw $t0, -244($fp)
	sw $t0, -6756($fp)
	lw $t0, -6756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -256($fp)
	sw $t0, -6760($fp)
	lw $t0, -6760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	sw $t0, -6764($fp)
	lw $t0, -6764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -6768($fp)
	lw $t0, -6768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -6772($fp)
	li $t0, 0
	sw $t0, -6776($fp)
	li $t0, 4
	lw $t1, -6776($fp)
	mul $t0, $t0, $t1
	sw $t0, -6780($fp)
	lw $t0, -6780($fp)
	lw $t1, -6772($fp)
	add $t0, $t0, $t1
	sw $t0, -6784($fp)
	lw $t0, -6784($fp)
	lw $t1, 0($t0)
	sw $t1, -6788($fp)
	lw $t0, -6788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -6792($fp)
	li $t0, 1
	sw $t0, -6796($fp)
	li $t0, 4
	lw $t1, -6796($fp)
	mul $t0, $t0, $t1
	sw $t0, -6800($fp)
	lw $t0, -6800($fp)
	lw $t1, -6792($fp)
	add $t0, $t0, $t1
	sw $t0, -6804($fp)
	lw $t0, -6804($fp)
	lw $t1, 0($t0)
	sw $t1, -6808($fp)
	lw $t0, -6808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -6812($fp)
	li $t0, 2
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
	lw $t0, -6828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -6832($fp)
	li $t0, 3
	sw $t0, -6836($fp)
	li $t0, 4
	lw $t1, -6836($fp)
	mul $t0, $t0, $t1
	sw $t0, -6840($fp)
	lw $t0, -6840($fp)
	lw $t1, -6832($fp)
	add $t0, $t0, $t1
	sw $t0, -6844($fp)
	lw $t0, -6844($fp)
	lw $t1, 0($t0)
	sw $t1, -6848($fp)
	lw $t0, -6848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -6852($fp)
	li $t0, 0
	sw $t0, -6856($fp)
	li $t0, 4
	lw $t1, -6856($fp)
	mul $t0, $t0, $t1
	sw $t0, -6860($fp)
	lw $t0, -6860($fp)
	lw $t1, -6852($fp)
	add $t0, $t0, $t1
	sw $t0, -6864($fp)
	lw $t0, -6864($fp)
	lw $t1, 0($t0)
	sw $t1, -6868($fp)
	lw $t0, -6868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -6872($fp)
	li $t0, 1
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
	lw $t0, -6888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -6892($fp)
	li $t0, 2
	sw $t0, -6896($fp)
	li $t0, 4
	lw $t1, -6896($fp)
	mul $t0, $t0, $t1
	sw $t0, -6900($fp)
	lw $t0, -6900($fp)
	lw $t1, -6892($fp)
	add $t0, $t0, $t1
	sw $t0, -6904($fp)
	lw $t0, -6904($fp)
	lw $t1, 0($t0)
	sw $t1, -6908($fp)
	lw $t0, -6908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -6912($fp)
	li $t0, 3
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
	lw $t0, -6928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -6932($fp)
	li $t0, 4
	sw $t0, -6936($fp)
	li $t0, 4
	lw $t1, -6936($fp)
	mul $t0, $t0, $t1
	sw $t0, -6940($fp)
	lw $t0, -6940($fp)
	lw $t1, -6932($fp)
	add $t0, $t0, $t1
	sw $t0, -6944($fp)
	lw $t0, -6944($fp)
	lw $t1, 0($t0)
	sw $t1, -6948($fp)
	lw $t0, -6948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -6952($fp)
	li $t0, 5
	sw $t0, -6956($fp)
	li $t0, 4
	lw $t1, -6956($fp)
	mul $t0, $t0, $t1
	sw $t0, -6960($fp)
	lw $t0, -6960($fp)
	lw $t1, -6952($fp)
	add $t0, $t0, $t1
	sw $t0, -6964($fp)
	lw $t0, -6964($fp)
	lw $t1, 0($t0)
	sw $t1, -6968($fp)
	lw $t0, -6968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -6972($fp)
	li $t0, 6
	sw $t0, -6976($fp)
	li $t0, 4
	lw $t1, -6976($fp)
	mul $t0, $t0, $t1
	sw $t0, -6980($fp)
	lw $t0, -6980($fp)
	lw $t1, -6972($fp)
	add $t0, $t0, $t1
	sw $t0, -6984($fp)
	lw $t0, -6984($fp)
	lw $t1, 0($t0)
	sw $t1, -6988($fp)
	lw $t0, -6988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -556($fp)
	sw $t0, -6992($fp)
	lw $t0, -6992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -568($fp)
	sw $t0, -6996($fp)
	lw $t0, -6996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -580($fp)
	sw $t0, -7000($fp)
	lw $t0, -7000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -592($fp)
	sw $t0, -7004($fp)
	lw $t0, -7004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -604($fp)
	sw $t0, -7008($fp)
	lw $t0, -7008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -616($fp)
	sw $t0, -7012($fp)
	lw $t0, -7012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7016($fp)
	li $t0, 0
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
	addi $t0, $fp, -80
	sw $t0, -7036($fp)
	li $t0, 1
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
	addi $t0, $fp, -80
	sw $t0, -7056($fp)
	li $t0, 2
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
	addi $t0, $fp, -80
	sw $t0, -7076($fp)
	li $t0, 3
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
	addi $t0, $fp, -80
	sw $t0, -7096($fp)
	li $t0, 4
	sw $t0, -7100($fp)
	li $t0, 4
	lw $t1, -7100($fp)
	mul $t0, $t0, $t1
	sw $t0, -7104($fp)
	lw $t0, -7104($fp)
	lw $t1, -7096($fp)
	add $t0, $t0, $t1
	sw $t0, -7108($fp)
	lw $t0, -7108($fp)
	lw $t1, 0($t0)
	sw $t1, -7112($fp)
	lw $t0, -7112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7116($fp)
	li $t0, 5
	sw $t0, -7120($fp)
	li $t0, 4
	lw $t1, -7120($fp)
	mul $t0, $t0, $t1
	sw $t0, -7124($fp)
	lw $t0, -7124($fp)
	lw $t1, -7116($fp)
	add $t0, $t0, $t1
	sw $t0, -7128($fp)
	lw $t0, -7128($fp)
	lw $t1, 0($t0)
	sw $t1, -7132($fp)
	lw $t0, -7132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7136($fp)
	li $t0, 6
	sw $t0, -7140($fp)
	li $t0, 4
	lw $t1, -7140($fp)
	mul $t0, $t0, $t1
	sw $t0, -7144($fp)
	lw $t0, -7144($fp)
	lw $t1, -7136($fp)
	add $t0, $t0, $t1
	sw $t0, -7148($fp)
	lw $t0, -7148($fp)
	lw $t1, 0($t0)
	sw $t1, -7152($fp)
	lw $t0, -7152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -7156($fp)
	li $t0, 7
	sw $t0, -7160($fp)
	li $t0, 4
	lw $t1, -7160($fp)
	mul $t0, $t0, $t1
	sw $t0, -7164($fp)
	lw $t0, -7164($fp)
	lw $t1, -7156($fp)
	add $t0, $t0, $t1
	sw $t0, -7168($fp)
	lw $t0, -7168($fp)
	lw $t1, 0($t0)
	sw $t1, -7172($fp)
	lw $t0, -7172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -820($fp)
	sw $t0, -7176($fp)
	lw $t0, -7176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -832($fp)
	sw $t0, -7180($fp)
	lw $t0, -7180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -844($fp)
	sw $t0, -7184($fp)
	lw $t0, -7184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -856($fp)
	sw $t0, -7188($fp)
	lw $t0, -7188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -868($fp)
	sw $t0, -7192($fp)
	lw $t0, -7192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -880($fp)
	sw $t0, -7196($fp)
	lw $t0, -7196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -892($fp)
	sw $t0, -7200($fp)
	lw $t0, -7200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -904($fp)
	sw $t0, -7204($fp)
	lw $t0, -7204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -7208($fp)
	li $t0, 0
	sw $t0, -7212($fp)
	li $t0, 4
	lw $t1, -7212($fp)
	mul $t0, $t0, $t1
	sw $t0, -7216($fp)
	lw $t0, -7216($fp)
	lw $t1, -7208($fp)
	add $t0, $t0, $t1
	sw $t0, -7220($fp)
	lw $t0, -7220($fp)
	lw $t1, 0($t0)
	sw $t1, -7224($fp)
	lw $t0, -7224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -7228($fp)
	li $t0, 1
	sw $t0, -7232($fp)
	li $t0, 4
	lw $t1, -7232($fp)
	mul $t0, $t0, $t1
	sw $t0, -7236($fp)
	lw $t0, -7236($fp)
	lw $t1, -7228($fp)
	add $t0, $t0, $t1
	sw $t0, -7240($fp)
	lw $t0, -7240($fp)
	lw $t1, 0($t0)
	sw $t1, -7244($fp)
	lw $t0, -7244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -7248($fp)
	li $t0, 2
	sw $t0, -7252($fp)
	li $t0, 4
	lw $t1, -7252($fp)
	mul $t0, $t0, $t1
	sw $t0, -7256($fp)
	lw $t0, -7256($fp)
	lw $t1, -7248($fp)
	add $t0, $t0, $t1
	sw $t0, -7260($fp)
	lw $t0, -7260($fp)
	lw $t1, 0($t0)
	sw $t1, -7264($fp)
	lw $t0, -7264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -988($fp)
	sw $t0, -7268($fp)
	lw $t0, -7268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1000($fp)
	sw $t0, -7272($fp)
	lw $t0, -7272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7276($fp)
	li $t0, 0
	sw $t0, -7280($fp)
	li $t0, 4
	lw $t1, -7280($fp)
	mul $t0, $t0, $t1
	sw $t0, -7284($fp)
	lw $t0, -7284($fp)
	lw $t1, -7276($fp)
	add $t0, $t0, $t1
	sw $t0, -7288($fp)
	lw $t0, -7288($fp)
	lw $t1, 0($t0)
	sw $t1, -7292($fp)
	lw $t0, -7292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7296($fp)
	li $t0, 1
	sw $t0, -7300($fp)
	li $t0, 4
	lw $t1, -7300($fp)
	mul $t0, $t0, $t1
	sw $t0, -7304($fp)
	lw $t0, -7304($fp)
	lw $t1, -7296($fp)
	add $t0, $t0, $t1
	sw $t0, -7308($fp)
	lw $t0, -7308($fp)
	lw $t1, 0($t0)
	sw $t1, -7312($fp)
	lw $t0, -7312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7316($fp)
	li $t0, 2
	sw $t0, -7320($fp)
	li $t0, 4
	lw $t1, -7320($fp)
	mul $t0, $t0, $t1
	sw $t0, -7324($fp)
	lw $t0, -7324($fp)
	lw $t1, -7316($fp)
	add $t0, $t0, $t1
	sw $t0, -7328($fp)
	lw $t0, -7328($fp)
	lw $t1, 0($t0)
	sw $t1, -7332($fp)
	lw $t0, -7332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7336($fp)
	li $t0, 3
	sw $t0, -7340($fp)
	li $t0, 4
	lw $t1, -7340($fp)
	mul $t0, $t0, $t1
	sw $t0, -7344($fp)
	lw $t0, -7344($fp)
	lw $t1, -7336($fp)
	add $t0, $t0, $t1
	sw $t0, -7348($fp)
	lw $t0, -7348($fp)
	lw $t1, 0($t0)
	sw $t1, -7352($fp)
	lw $t0, -7352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7356($fp)
	li $t0, 4
	sw $t0, -7360($fp)
	li $t0, 4
	lw $t1, -7360($fp)
	mul $t0, $t0, $t1
	sw $t0, -7364($fp)
	lw $t0, -7364($fp)
	lw $t1, -7356($fp)
	add $t0, $t0, $t1
	sw $t0, -7368($fp)
	lw $t0, -7368($fp)
	lw $t1, 0($t0)
	sw $t1, -7372($fp)
	lw $t0, -7372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7376($fp)
	li $t0, 5
	sw $t0, -7380($fp)
	li $t0, 4
	lw $t1, -7380($fp)
	mul $t0, $t0, $t1
	sw $t0, -7384($fp)
	lw $t0, -7384($fp)
	lw $t1, -7376($fp)
	add $t0, $t0, $t1
	sw $t0, -7388($fp)
	lw $t0, -7388($fp)
	lw $t1, 0($t0)
	sw $t1, -7392($fp)
	lw $t0, -7392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7396($fp)
	li $t0, 6
	sw $t0, -7400($fp)
	li $t0, 4
	lw $t1, -7400($fp)
	mul $t0, $t0, $t1
	sw $t0, -7404($fp)
	lw $t0, -7404($fp)
	lw $t1, -7396($fp)
	add $t0, $t0, $t1
	sw $t0, -7408($fp)
	lw $t0, -7408($fp)
	lw $t1, 0($t0)
	sw $t1, -7412($fp)
	lw $t0, -7412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7416($fp)
	li $t0, 7
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
	lw $t0, -7432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7436($fp)
	li $t0, 8
	sw $t0, -7440($fp)
	li $t0, 4
	lw $t1, -7440($fp)
	mul $t0, $t0, $t1
	sw $t0, -7444($fp)
	lw $t0, -7444($fp)
	lw $t1, -7436($fp)
	add $t0, $t0, $t1
	sw $t0, -7448($fp)
	lw $t0, -7448($fp)
	lw $t1, 0($t0)
	sw $t1, -7452($fp)
	lw $t0, -7452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7456($fp)
	li $t0, 9
	sw $t0, -7460($fp)
	li $t0, 4
	lw $t1, -7460($fp)
	mul $t0, $t0, $t1
	sw $t0, -7464($fp)
	lw $t0, -7464($fp)
	lw $t1, -7456($fp)
	add $t0, $t0, $t1
	sw $t0, -7468($fp)
	lw $t0, -7468($fp)
	lw $t1, 0($t0)
	sw $t1, -7472($fp)
	lw $t0, -7472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1252($fp)
	sw $t0, -7476($fp)
	lw $t0, -7476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1264($fp)
	sw $t0, -7480($fp)
	lw $t0, -7480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1276($fp)
	sw $t0, -7484($fp)
	lw $t0, -7484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1288($fp)
	sw $t0, -7488($fp)
	lw $t0, -7488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1300($fp)
	sw $t0, -7492($fp)
	lw $t0, -7492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1312($fp)
	sw $t0, -7496($fp)
	lw $t0, -7496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1324($fp)
	sw $t0, -7500($fp)
	lw $t0, -7500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -7504($fp)
	li $t0, 0
	sw $t0, -7508($fp)
	li $t0, 4
	lw $t1, -7508($fp)
	mul $t0, $t0, $t1
	sw $t0, -7512($fp)
	lw $t0, -7512($fp)
	lw $t1, -7504($fp)
	add $t0, $t0, $t1
	sw $t0, -7516($fp)
	lw $t0, -7516($fp)
	lw $t1, 0($t0)
	sw $t1, -7520($fp)
	lw $t0, -7520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -7524($fp)
	li $t0, 1
	sw $t0, -7528($fp)
	li $t0, 4
	lw $t1, -7528($fp)
	mul $t0, $t0, $t1
	sw $t0, -7532($fp)
	lw $t0, -7532($fp)
	lw $t1, -7524($fp)
	add $t0, $t0, $t1
	sw $t0, -7536($fp)
	lw $t0, -7536($fp)
	lw $t1, 0($t0)
	sw $t1, -7540($fp)
	lw $t0, -7540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -7544($fp)
	li $t0, 2
	sw $t0, -7548($fp)
	li $t0, 4
	lw $t1, -7548($fp)
	mul $t0, $t0, $t1
	sw $t0, -7552($fp)
	lw $t0, -7552($fp)
	lw $t1, -7544($fp)
	add $t0, $t0, $t1
	sw $t0, -7556($fp)
	lw $t0, -7556($fp)
	lw $t1, 0($t0)
	sw $t1, -7560($fp)
	lw $t0, -7560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1408($fp)
	sw $t0, -7564($fp)
	lw $t0, -7564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1420($fp)
	sw $t0, -7568($fp)
	lw $t0, -7568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1432($fp)
	sw $t0, -7572($fp)
	lw $t0, -7572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1444($fp)
	sw $t0, -7576($fp)
	lw $t0, -7576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -7580($fp)
	li $t0, 0
	sw $t0, -7584($fp)
	li $t0, 4
	lw $t1, -7584($fp)
	mul $t0, $t0, $t1
	sw $t0, -7588($fp)
	lw $t0, -7588($fp)
	lw $t1, -7580($fp)
	add $t0, $t0, $t1
	sw $t0, -7592($fp)
	lw $t0, -7592($fp)
	lw $t1, 0($t0)
	sw $t1, -7596($fp)
	lw $t0, -7596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -7600($fp)
	li $t0, 1
	sw $t0, -7604($fp)
	li $t0, 4
	lw $t1, -7604($fp)
	mul $t0, $t0, $t1
	sw $t0, -7608($fp)
	lw $t0, -7608($fp)
	lw $t1, -7600($fp)
	add $t0, $t0, $t1
	sw $t0, -7612($fp)
	lw $t0, -7612($fp)
	lw $t1, 0($t0)
	sw $t1, -7616($fp)
	lw $t0, -7616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -7620($fp)
	li $t0, 2
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
	lw $t0, -7636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -7640($fp)
	li $t0, 3
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
	lw $t0, -7656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -7660($fp)
	li $t0, 4
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
	lw $t0, -7676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -7680($fp)
	li $t0, 5
	sw $t0, -7684($fp)
	li $t0, 4
	lw $t1, -7684($fp)
	mul $t0, $t0, $t1
	sw $t0, -7688($fp)
	lw $t0, -7688($fp)
	lw $t1, -7680($fp)
	add $t0, $t0, $t1
	sw $t0, -7692($fp)
	lw $t0, -7692($fp)
	lw $t1, 0($t0)
	sw $t1, -7696($fp)
	lw $t0, -7696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -7700($fp)
	li $t0, 6
	sw $t0, -7704($fp)
	li $t0, 4
	lw $t1, -7704($fp)
	mul $t0, $t0, $t1
	sw $t0, -7708($fp)
	lw $t0, -7708($fp)
	lw $t1, -7700($fp)
	add $t0, $t0, $t1
	sw $t0, -7712($fp)
	lw $t0, -7712($fp)
	lw $t1, 0($t0)
	sw $t1, -7716($fp)
	lw $t0, -7716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -7720($fp)
	li $t0, 7
	sw $t0, -7724($fp)
	li $t0, 4
	lw $t1, -7724($fp)
	mul $t0, $t0, $t1
	sw $t0, -7728($fp)
	lw $t0, -7728($fp)
	lw $t1, -7720($fp)
	add $t0, $t0, $t1
	sw $t0, -7732($fp)
	lw $t0, -7732($fp)
	lw $t1, 0($t0)
	sw $t1, -7736($fp)
	lw $t0, -7736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -7740($fp)
	li $t0, 8
	sw $t0, -7744($fp)
	li $t0, 4
	lw $t1, -7744($fp)
	mul $t0, $t0, $t1
	sw $t0, -7748($fp)
	lw $t0, -7748($fp)
	lw $t1, -7740($fp)
	add $t0, $t0, $t1
	sw $t0, -7752($fp)
	lw $t0, -7752($fp)
	lw $t1, 0($t0)
	sw $t1, -7756($fp)
	lw $t0, -7756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1672($fp)
	sw $t0, -7760($fp)
	lw $t0, -7760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1684($fp)
	sw $t0, -7764($fp)
	lw $t0, -7764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1696($fp)
	sw $t0, -7768($fp)
	lw $t0, -7768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1708($fp)
	sw $t0, -7772($fp)
	lw $t0, -7772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1720($fp)
	sw $t0, -7776($fp)
	lw $t0, -7776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1732($fp)
	sw $t0, -7780($fp)
	lw $t0, -7780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1744($fp)
	sw $t0, -7784($fp)
	lw $t0, -7784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1756($fp)
	sw $t0, -7788($fp)
	lw $t0, -7788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1768($fp)
	sw $t0, -7792($fp)
	lw $t0, -7792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1780($fp)
	sw $t0, -7796($fp)
	lw $t0, -7796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1792($fp)
	sw $t0, -7800($fp)
	lw $t0, -7800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1804($fp)
	sw $t0, -7804($fp)
	lw $t0, -7804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1816($fp)
	sw $t0, -7808($fp)
	lw $t0, -7808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1828($fp)
	sw $t0, -7812($fp)
	lw $t0, -7812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -196
	sw $t0, -7816($fp)
	li $t0, 0
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
	addi $t0, $fp, -196
	sw $t0, -7836($fp)
	li $t0, 1
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
	addi $t0, $fp, -196
	sw $t0, -7856($fp)
	li $t0, 2
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
	addi $t0, $fp, -196
	sw $t0, -7876($fp)
	li $t0, 3
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
	lw $t0, -1936($fp)
	sw $t0, -7896($fp)
	lw $t0, -7896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -7900($fp)
	li $t0, 0
	sw $t0, -7904($fp)
	li $t0, 4
	lw $t1, -7904($fp)
	mul $t0, $t0, $t1
	sw $t0, -7908($fp)
	lw $t0, -7908($fp)
	lw $t1, -7900($fp)
	add $t0, $t0, $t1
	sw $t0, -7912($fp)
	lw $t0, -7912($fp)
	lw $t1, 0($t0)
	sw $t1, -7916($fp)
	lw $t0, -7916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -7920($fp)
	li $t0, 1
	sw $t0, -7924($fp)
	li $t0, 4
	lw $t1, -7924($fp)
	mul $t0, $t0, $t1
	sw $t0, -7928($fp)
	lw $t0, -7928($fp)
	lw $t1, -7920($fp)
	add $t0, $t0, $t1
	sw $t0, -7932($fp)
	lw $t0, -7932($fp)
	lw $t1, 0($t0)
	sw $t1, -7936($fp)
	lw $t0, -7936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -7940($fp)
	li $t0, 2
	sw $t0, -7944($fp)
	li $t0, 4
	lw $t1, -7944($fp)
	mul $t0, $t0, $t1
	sw $t0, -7948($fp)
	lw $t0, -7948($fp)
	lw $t1, -7940($fp)
	add $t0, $t0, $t1
	sw $t0, -7952($fp)
	lw $t0, -7952($fp)
	lw $t1, 0($t0)
	sw $t1, -7956($fp)
	lw $t0, -7956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -7960($fp)
	li $t0, 3
	sw $t0, -7964($fp)
	li $t0, 4
	lw $t1, -7964($fp)
	mul $t0, $t0, $t1
	sw $t0, -7968($fp)
	lw $t0, -7968($fp)
	lw $t1, -7960($fp)
	add $t0, $t0, $t1
	sw $t0, -7972($fp)
	lw $t0, -7972($fp)
	lw $t1, 0($t0)
	sw $t1, -7976($fp)
	lw $t0, -7976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -7980($fp)
	li $t0, 4
	sw $t0, -7984($fp)
	li $t0, 4
	lw $t1, -7984($fp)
	mul $t0, $t0, $t1
	sw $t0, -7988($fp)
	lw $t0, -7988($fp)
	lw $t1, -7980($fp)
	add $t0, $t0, $t1
	sw $t0, -7992($fp)
	lw $t0, -7992($fp)
	lw $t1, 0($t0)
	sw $t1, -7996($fp)
	lw $t0, -7996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -8000($fp)
	li $t0, 5
	sw $t0, -8004($fp)
	li $t0, 4
	lw $t1, -8004($fp)
	mul $t0, $t0, $t1
	sw $t0, -8008($fp)
	lw $t0, -8008($fp)
	lw $t1, -8000($fp)
	add $t0, $t0, $t1
	sw $t0, -8012($fp)
	lw $t0, -8012($fp)
	lw $t1, 0($t0)
	sw $t1, -8016($fp)
	lw $t0, -8016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -8020($fp)
	li $t0, 6
	sw $t0, -8024($fp)
	li $t0, 4
	lw $t1, -8024($fp)
	mul $t0, $t0, $t1
	sw $t0, -8028($fp)
	lw $t0, -8028($fp)
	lw $t1, -8020($fp)
	add $t0, $t0, $t1
	sw $t0, -8032($fp)
	lw $t0, -8032($fp)
	lw $t1, 0($t0)
	sw $t1, -8036($fp)
	lw $t0, -8036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -8040($fp)
	li $t0, 7
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
	addi $t0, $fp, -236
	sw $t0, -8060($fp)
	li $t0, 8
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
	addi $t0, $fp, -236
	sw $t0, -8080($fp)
	li $t0, 9
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
	lw $t0, -2188($fp)
	sw $t0, -8100($fp)
	lw $t0, -8100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -8104($fp)
	lw $t0, -1264($fp)
	sw $t0, -8108($fp)
	li $t0, 10596
	sw $t0, -8112($fp)
	lw $t0, -8108($fp)
	lw $t1, -8112($fp)
	mul $t0, $t0, $t1
	sw $t0, -8116($fp)
	li $t0, 22107
	sw $t0, -8120($fp)
	lw $t0, -8116($fp)
	lw $t1, -8120($fp)
	mul $t0, $t0, $t1
	sw $t0, -8124($fp)
	lw $t0, -856($fp)
	sw $t0, -8128($fp)
	lw $t0, -1708($fp)
	sw $t0, -8132($fp)
	lw $t0, -8128($fp)
	lw $t1, -8132($fp)
	sub $t0, $t0, $t1
	sw $t0, -8136($fp)
	lw $t1, -8124($fp)
	lw $t2, -8136($fp)
	ble $t1, $t2, label651
	j label650
label651:
	lw $t0, -1000($fp)
	sw $t0, -8140($fp)
	li $t0, 10213
	sw $t0, -8144($fp)
	lw $t1, -8140($fp)
	lw $t2, -8144($fp)
	beq $t1, $t2, label648
	j label650
label650:
	li $t0, 0
	sw $t0, -8148($fp)
	addi $t0, $fp, -132
	sw $t0, -8152($fp)
	li $t0, 1
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
	lw $t1, -8168($fp)
	li $t2, 0
	bne $t1, $t2, label653
	j label652
label652:
	li $t0, 1
	sw $t0, -8148($fp)
label653:
	lw $t0, -1276($fp)
	sw $t0, -8172($fp)
	lw $t1, -8148($fp)
	lw $t2, -8172($fp)
	blt $t1, $t2, label648
	j label649
label648:
	li $t0, 1
	sw $t0, -8104($fp)
label649:
	lw $ra, -4($fp)
	lw $v0, -8104($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -3136
	li $t0, 13165
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	li $t0, 54167
	sw $t0, -128($fp)
	addi $t0, $fp, -16
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
	li $t0, 25962
	sw $t0, -152($fp)
	addi $t0, $fp, -16
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
	li $t0, 55417
	sw $t0, -176($fp)
	addi $t0, $fp, -16
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
	li $t0, 16045
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	li $t0, 36844
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	li $t0, 21298
	sw $t0, -224($fp)
	addi $t0, $fp, -28
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
	li $t0, 61566
	sw $t0, -248($fp)
	addi $t0, $fp, -28
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
	li $t0, 47055
	sw $t0, -272($fp)
	addi $t0, $fp, -28
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
	li $t0, 38598
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	li $t0, 4252
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	li $t0, 54391
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	li $t0, 57627
	sw $t0, -332($fp)
	addi $t0, $fp, -32
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
	li $t0, 54011
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	li $t0, 40798
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	li $t0, 47587
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	li $t0, 43597
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	li $t0, 25866
	sw $t0, -404($fp)
	addi $t0, $fp, -40
	sw $t0, -408($fp)
	li $t0, 0
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
	li $t0, 31655
	sw $t0, -428($fp)
	addi $t0, $fp, -40
	sw $t0, -432($fp)
	li $t0, 1
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
	li $t0, 57309
	sw $t0, -452($fp)
	addi $t0, $fp, -72
	sw $t0, -456($fp)
	li $t0, 0
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
	li $t0, 18638
	sw $t0, -476($fp)
	addi $t0, $fp, -72
	sw $t0, -480($fp)
	li $t0, 1
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
	li $t0, 23891
	sw $t0, -500($fp)
	addi $t0, $fp, -72
	sw $t0, -504($fp)
	li $t0, 2
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
	li $t0, 21124
	sw $t0, -524($fp)
	addi $t0, $fp, -72
	sw $t0, -528($fp)
	li $t0, 3
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
	li $t0, 57132
	sw $t0, -548($fp)
	addi $t0, $fp, -72
	sw $t0, -552($fp)
	li $t0, 4
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
	li $t0, 40186
	sw $t0, -572($fp)
	addi $t0, $fp, -72
	sw $t0, -576($fp)
	li $t0, 5
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
	li $t0, 11959
	sw $t0, -596($fp)
	addi $t0, $fp, -72
	sw $t0, -600($fp)
	li $t0, 6
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
	li $t0, 2192
	sw $t0, -620($fp)
	addi $t0, $fp, -72
	sw $t0, -624($fp)
	li $t0, 7
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
	li $t0, 62294
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	li $t0, 22172
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	li $t0, 30821
	sw $t0, -668($fp)
	addi $t0, $fp, -100
	sw $t0, -672($fp)
	li $t0, 0
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $t0, -672($fp)
	lw $t1, -680($fp)
	add $t0, $t0, $t1
	sw $t0, -684($fp)
	lw $t0, -668($fp)
	lw $t1, -684($fp)
	sw $t0, 0($t1)
	lw $t0, -684($fp)
	lw $t1, 0($t0)
	sw $t1, -688($fp)
	li $t0, 21269
	sw $t0, -692($fp)
	addi $t0, $fp, -100
	sw $t0, -696($fp)
	li $t0, 1
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
	li $t0, 35337
	sw $t0, -716($fp)
	addi $t0, $fp, -100
	sw $t0, -720($fp)
	li $t0, 2
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
	li $t0, 19453
	sw $t0, -740($fp)
	addi $t0, $fp, -100
	sw $t0, -744($fp)
	li $t0, 3
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -752($fp)
	lw $t0, -744($fp)
	lw $t1, -752($fp)
	add $t0, $t0, $t1
	sw $t0, -756($fp)
	lw $t0, -740($fp)
	lw $t1, -756($fp)
	sw $t0, 0($t1)
	lw $t0, -756($fp)
	lw $t1, 0($t0)
	sw $t1, -760($fp)
	li $t0, 47231
	sw $t0, -764($fp)
	addi $t0, $fp, -100
	sw $t0, -768($fp)
	li $t0, 4
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
	li $t0, 25218
	sw $t0, -788($fp)
	addi $t0, $fp, -100
	sw $t0, -792($fp)
	li $t0, 5
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
	li $t0, 35498
	sw $t0, -812($fp)
	addi $t0, $fp, -100
	sw $t0, -816($fp)
	li $t0, 6
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
	li $t0, 18539
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	li $t0, 46517
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -856($fp)
	li $t0, 31528
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -868($fp)
	li $t0, 58
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -880($fp)
	li $t0, 19579
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -892($fp)
	li $t0, 35780
	sw $t0, -896($fp)
	addi $t0, $fp, -112
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
	li $t0, 54449
	sw $t0, -920($fp)
	addi $t0, $fp, -112
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
	li $t0, 11671
	sw $t0, -944($fp)
	addi $t0, $fp, -112
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
	li $t0, 0
	sw $t0, -968($fp)
	lw $t0, -300($fp)
	sw $t0, -972($fp)
	lw $t1, -972($fp)
	li $t2, 0
	bne $t1, $t2, label657
	j label658
label657:
	li $t0, 1
	sw $t0, -968($fp)
label658:
	lw $t0, -968($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -976($fp)
	lw $t1, -976($fp)
	li $t2, 0
	bne $t1, $t2, label654
	j label655
label654:
	li $t0, 0
	sw $t0, -980($fp)
	li $t0, 0
	sw $t0, -984($fp)
	lw $t0, -312($fp)
	sw $t0, -988($fp)
	lw $t0, -852($fp)
	sw $t0, -992($fp)
	lw $t1, -988($fp)
	lw $t2, -992($fp)
	blt $t1, $t2, label663
	j label664
label663:
	li $t0, 1
	sw $t0, -984($fp)
label664:
	lw $t0, -204($fp)
	sw $t0, -996($fp)
	lw $t0, -648($fp)
	sw $t0, -1000($fp)
	lw $t0, -996($fp)
	lw $t1, -1000($fp)
	add $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t1, -984($fp)
	lw $t2, -1004($fp)
	bgt $t1, $t2, label659
	j label662
label662:
	addi $t0, $fp, -16
	sw $t0, -1008($fp)
	lw $t0, -864($fp)
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
	lw $t1, -1024($fp)
	li $t2, 0
	bne $t1, $t2, label659
	j label661
label661:
	addi $t0, $fp, -100
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
	li $t0, 59258
	sw $t0, -1048($fp)
	li $t0, 0
	lw $t1, -1048($fp)
	sub $t0, $t0, $t1
	sw $t0, -1052($fp)
	lw $t0, -1044($fp)
	lw $t1, -1052($fp)
	mul $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $t1, -1056($fp)
	li $t2, 0
	bne $t1, $t2, label659
	j label660
label659:
	li $t0, 1
	sw $t0, -980($fp)
label660:
	j label656
label655:
	li $t0, 2317
	sw $t0, -1060($fp)
	addi $t0, $fp, -28
	sw $t0, -1064($fp)
	lw $t0, -324($fp)
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
	li $t0, 0
	lw $t1, -1080($fp)
	sub $t0, $t0, $t1
	sw $t0, -1084($fp)
	lw $t0, -1060($fp)
	lw $t1, -1084($fp)
	mul $t0, $t0, $t1
	sw $t0, -1088($fp)
	lw $t1, -1088($fp)
	li $t2, 0
	bne $t1, $t2, label668
	j label666
label668:
	addi $t0, $fp, -32
	sw $t0, -1092($fp)
	lw $t0, -888($fp)
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
	lw $t0, -312($fp)
	sw $t0, -1112($fp)
	li $t0, 0
	lw $t1, -1112($fp)
	sub $t0, $t0, $t1
	sw $t0, -1116($fp)
	lw $t0, -1108($fp)
	lw $t1, -1116($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1120($fp)
	lw $t1, -1120($fp)
	li $t2, 0
	bne $t1, $t2, label665
	j label666
label665:
	addi $t0, $fp, -40
	sw $t0, -1124($fp)
	li $t0, 0
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
	li $t0, 59627
	sw $t0, -1144($fp)
	lw $t0, -1140($fp)
	lw $t1, -1144($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1148($fp)
	lw $t1, -1148($fp)
	li $t2, 0
	bne $t1, $t2, label669
	j label670
label669:
label672:
	li $t0, 0
	sw $t0, -1152($fp)
	addi $t0, $fp, -32
	sw $t0, -1156($fp)
	lw $t0, -300($fp)
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
	addi $t0, $fp, -112
	sw $t0, -1176($fp)
	li $t0, 0
	sw $t0, -1180($fp)
	li $t0, 4
	lw $t1, -1180($fp)
	mul $t0, $t0, $t1
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	lw $t1, -1176($fp)
	add $t0, $t0, $t1
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	lw $t1, 0($t0)
	sw $t1, -1192($fp)
	lw $t1, -1172($fp)
	lw $t2, -1192($fp)
	ble $t1, $t2, label675
	j label676
label675:
	li $t0, 1
	sw $t0, -1152($fp)
label676:
	lw $t0, -1152($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -1196($fp)
	lw $t1, -1196($fp)
	li $t2, 0
	bne $t1, $t2, label673
	j label674
label673:
	jal f7
	sw $v0, -1200($fp)
	addi $sp, $sp, 4
	lw $ra, -4($fp)
	lw $v0, -1200($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label672
label674:
	j label671
label670:
	li $t0, 15215
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -1212($fp)
	li $t0, 276
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	sw $t0, -1224($fp)
	li $t0, 23920
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	sw $t0, -1236($fp)
	addi $t0, $fp, -100
	sw $t0, -1240($fp)
	lw $t0, -1232($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -1248($fp)
	li $t0, 4
	lw $t1, -1248($fp)
	mul $t0, $t0, $t1
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	lw $t1, -1240($fp)
	add $t0, $t0, $t1
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	lw $t1, 0($t0)
	sw $t1, -1260($fp)
	li $t0, 0
	lw $t1, -1260($fp)
	sub $t0, $t0, $t1
	sw $t0, -1264($fp)
	li $t0, 0
	sw $t0, -1268($fp)
	li $t0, 27174
	sw $t0, -1272($fp)
	li $t0, 0
	lw $t1, -1272($fp)
	sub $t0, $t0, $t1
	sw $t0, -1276($fp)
	li $t0, 0
	lw $t1, -1276($fp)
	sub $t0, $t0, $t1
	sw $t0, -1280($fp)
	lw $t1, -1280($fp)
	li $t2, 0
	bne $t1, $t2, label677
	j label678
label677:
	li $t0, 1
	sw $t0, -1268($fp)
label678:
	li $t0, 0
	lw $t1, -1268($fp)
	sub $t0, $t0, $t1
	sw $t0, -1284($fp)
	li $t0, 0
	sw $t0, -1288($fp)
	li $t0, 0
	sw $t0, -1292($fp)
	li $t0, 0
	sw $t0, -1296($fp)
	li $t0, 2469
	sw $t0, -1300($fp)
	li $t0, 20678
	sw $t0, -1304($fp)
	lw $t0, -1220($fp)
	sw $t0, -1308($fp)
	lw $t0, -1304($fp)
	lw $t1, -1308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1312($fp)
	lw $t1, -1300($fp)
	lw $t2, -1312($fp)
	bgt $t1, $t2, label683
	j label684
label683:
	li $t0, 1
	sw $t0, -1296($fp)
label684:
	addi $t0, $fp, -100
	sw $t0, -1316($fp)
	lw $t0, -384($fp)
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
	lw $t1, -1296($fp)
	lw $t2, -1332($fp)
	beq $t1, $t2, label681
	j label682
label681:
	li $t0, 1
	sw $t0, -1292($fp)
label682:
	li $t0, 0
	sw $t0, -1336($fp)
	lw $t0, -888($fp)
	sw $t0, -1340($fp)
	lw $t1, -1340($fp)
	li $t2, 0
	bne $t1, $t2, label686
	j label685
label685:
	li $t0, 1
	sw $t0, -1336($fp)
label686:
	lw $t0, -372($fp)
	sw $t0, -1344($fp)
	lw $t0, -1336($fp)
	lw $t1, -1344($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1348($fp)
	li $t0, 0
	sw $t0, -1352($fp)
	li $t0, 49347
	sw $t0, -1356($fp)
	lw $t1, -1356($fp)
	li $t2, 0
	bne $t1, $t2, label688
	j label687
label687:
	li $t0, 1
	sw $t0, -1352($fp)
label688:
	lw $t0, -1348($fp)
	lw $t1, -1352($fp)
	add $t0, $t0, $t1
	sw $t0, -1360($fp)
	lw $t1, -1292($fp)
	lw $t2, -1360($fp)
	bne $t1, $t2, label679
	j label680
label679:
	li $t0, 1
	sw $t0, -1288($fp)
label680:
label671:
	j label667
label666:
	li $t0, 33290
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	sw $t0, -1372($fp)
	lw $t0, -1368($fp)
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1380($fp)
	li $t0, 0
	sw $t0, -1384($fp)
	addi $t0, $fp, -112
	sw $t0, -1388($fp)
	lw $t0, -660($fp)
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
	li $t0, 0
	sw $t0, -1408($fp)
	lw $t0, -888($fp)
	sw $t0, -1412($fp)
	lw $t0, -888($fp)
	sw $t0, -1416($fp)
	lw $t1, -1412($fp)
	lw $t2, -1416($fp)
	bgt $t1, $t2, label693
	j label694
label693:
	li $t0, 1
	sw $t0, -1408($fp)
label694:
	li $t0, 0
	sw $t0, -1420($fp)
	lw $t0, -1368($fp)
	sw $t0, -1424($fp)
	lw $t1, -1424($fp)
	li $t2, 0
	bne $t1, $t2, label696
	j label695
label695:
	li $t0, 1
	sw $t0, -1420($fp)
label696:
	li $t0, 0
	lw $t1, -1420($fp)
	sub $t0, $t0, $t1
	sw $t0, -1428($fp)
	addi $sp, $sp, -4
	lw $t0, -1404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1428($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1432($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -72
	sw $t0, -1436($fp)
	lw $t0, -216($fp)
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
	lw $t0, -1432($fp)
	lw $t1, -1452($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1456($fp)
	lw $t0, -840($fp)
	sw $t0, -1460($fp)
	lw $t0, -300($fp)
	sw $t0, -1464($fp)
	lw $t0, -1460($fp)
	lw $t1, -1464($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1468($fp)
	li $t0, 41947
	sw $t0, -1472($fp)
	lw $t0, -1468($fp)
	lw $t1, -1472($fp)
	mul $t0, $t0, $t1
	sw $t0, -1476($fp)
	lw $t1, -1456($fp)
	lw $t2, -1476($fp)
	bge $t1, $t2, label691
	j label692
label691:
	li $t0, 1
	sw $t0, -1384($fp)
label692:
	addi $t0, $fp, -112
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
	lw $t1, -1384($fp)
	lw $t2, -1496($fp)
	bne $t1, $t2, label689
	j label690
label689:
	li $t0, 1
	sw $t0, -1380($fp)
label690:
	lw $ra, -4($fp)
	lw $v0, -1380($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1500($fp)
	addi $t0, $fp, -40
	sw $t0, -1504($fp)
	li $t0, 1
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
	li $t0, 0
	lw $t1, -1520($fp)
	sub $t0, $t0, $t1
	sw $t0, -1524($fp)
	addi $sp, $sp, -4
	lw $t0, -1524($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -1528($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -1528($fp)
	sub $t0, $t0, $t1
	sw $t0, -1532($fp)
	li $t0, 22705
	sw $t0, -1536($fp)
	lw $t1, -1532($fp)
	lw $t2, -1536($fp)
	beq $t1, $t2, label697
	j label698
label697:
	li $t0, 1
	sw $t0, -1500($fp)
label698:
	lw $t0, -1500($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -1540($fp)
	li $t0, 42182
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	sw $t0, -1552($fp)
	li $t0, 0
	sw $t0, -1556($fp)
	li $t0, 0
	sw $t0, -1560($fp)
	lw $t0, -1548($fp)
	sw $t0, -1564($fp)
	lw $t1, -1564($fp)
	li $t2, 0
	bne $t1, $t2, label702
	j label701
label701:
	li $t0, 1
	sw $t0, -1560($fp)
label702:
	li $t0, 42240
	sw $t0, -1568($fp)
	lw $t0, -1560($fp)
	lw $t1, -1568($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1572($fp)
	li $t0, 0
	sw $t0, -1576($fp)
	lw $t0, -852($fp)
	sw $t0, -1580($fp)
	lw $t0, -360($fp)
	sw $t0, -1584($fp)
	lw $t0, -1580($fp)
	lw $t1, -1584($fp)
	sub $t0, $t0, $t1
	sw $t0, -1588($fp)
	li $t0, 54234
	sw $t0, -1592($fp)
	lw $t1, -1588($fp)
	lw $t2, -1592($fp)
	bne $t1, $t2, label703
	j label704
label703:
	li $t0, 1
	sw $t0, -1576($fp)
label704:
	li $t0, 0
	sw $t0, -1596($fp)
	lw $t0, -648($fp)
	sw $t0, -1600($fp)
	li $t0, 25348
	sw $t0, -1604($fp)
	lw $t0, -1600($fp)
	lw $t1, -1604($fp)
	add $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t1, -1608($fp)
	li $t2, 0
	bne $t1, $t2, label707
	j label706
label707:
	lw $t0, -312($fp)
	sw $t0, -1612($fp)
	lw $t1, -1612($fp)
	li $t2, 0
	bne $t1, $t2, label705
	j label706
label705:
	li $t0, 1
	sw $t0, -1596($fp)
label706:
	addi $sp, $sp, -4
	lw $t0, -1572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1596($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1616($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -1620($fp)
	lw $t0, -876($fp)
	sw $t0, -1624($fp)
	lw $t1, -1624($fp)
	li $t2, 0
	bne $t1, $t2, label709
	j label708
label708:
	li $t0, 1
	sw $t0, -1620($fp)
label709:
	lw $t1, -1616($fp)
	lw $t2, -1620($fp)
	bne $t1, $t2, label699
	j label700
label699:
	li $t0, 1
	sw $t0, -1556($fp)
label700:
label667:
label656:
	li $t0, 44927
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	sw $t0, -1636($fp)
	li $t0, 24478
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	sw $t0, -1648($fp)
	li $t0, 31154
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	sw $t0, -1660($fp)
	li $t0, 56598
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	sw $t0, -1672($fp)
label710:
	addi $t0, $fp, -40
	sw $t0, -1676($fp)
	li $t0, 0
	sw $t0, -1680($fp)
	lw $t0, -300($fp)
	sw $t0, -1684($fp)
	lw $t1, -1684($fp)
	li $t2, 0
	bne $t1, $t2, label714
	j label713
label713:
	li $t0, 1
	sw $t0, -1680($fp)
label714:
	lw $t0, -660($fp)
	sw $t0, -1688($fp)
	lw $t0, -1680($fp)
	lw $t1, -1688($fp)
	add $t0, $t0, $t1
	sw $t0, -1692($fp)
	li $t0, 4
	lw $t1, -1692($fp)
	mul $t0, $t0, $t1
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	lw $t1, -1676($fp)
	add $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	lw $t1, 0($t0)
	sw $t1, -1704($fp)
	li $t0, 50321
	sw $t0, -1708($fp)
	lw $t0, -360($fp)
	sw $t0, -1712($fp)
	lw $t0, -1708($fp)
	lw $t1, -1712($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1716($fp)
	li $t0, 51052
	sw $t0, -1720($fp)
	lw $t0, -1716($fp)
	lw $t1, -1720($fp)
	add $t0, $t0, $t1
	sw $t0, -1724($fp)
	li $t0, 60866
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	sw $t0, -1732($fp)
	li $t0, 0
	sw $t0, -1736($fp)
	li $t0, 48734
	sw $t0, -1740($fp)
	lw $t1, -1740($fp)
	li $t2, 0
	bne $t1, $t2, label716
	j label715
label715:
	li $t0, 1
	sw $t0, -1736($fp)
label716:
	addi $sp, $sp, -4
	lw $t0, -1724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1736($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1744($fp)
	addi $sp, $sp, 16
	lw $t0, -1704($fp)
	lw $t1, -1744($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1748($fp)
	lw $t1, -1748($fp)
	li $t2, 0
	bne $t1, $t2, label711
	j label712
label711:
	li $t0, 0
	sw $t0, -1752($fp)
	li $t0, 50908
	sw $t0, -1756($fp)
	lw $t1, -1756($fp)
	li $t2, 0
	bne $t1, $t2, label720
	j label719
label720:
	li $t0, 10163
	sw $t0, -1760($fp)
	lw $t0, -396($fp)
	sw $t0, -1764($fp)
	lw $t0, -1760($fp)
	lw $t1, -1764($fp)
	mul $t0, $t0, $t1
	sw $t0, -1768($fp)
	lw $t0, -852($fp)
	sw $t0, -1772($fp)
	lw $t0, -1768($fp)
	lw $t1, -1772($fp)
	mul $t0, $t0, $t1
	sw $t0, -1776($fp)
	lw $t1, -1776($fp)
	li $t2, 0
	bne $t1, $t2, label717
	j label719
label719:
	li $t0, 45143
	sw $t0, -1780($fp)
	li $t0, 59589
	sw $t0, -1784($fp)
	li $t0, 1
	sw $t0, -1788($fp)
	lw $t0, -1784($fp)
	lw $t1, -1788($fp)
	mul $t0, $t0, $t1
	sw $t0, -1792($fp)
	lw $t1, -1780($fp)
	lw $t2, -1792($fp)
	ble $t1, $t2, label717
	j label718
label717:
	li $t0, 1
	sw $t0, -1752($fp)
label718:
	j label710
label712:
label721:
	li $t0, 60358
	sw $t0, -1796($fp)
	li $t0, 0
	sw $t0, -1800($fp)
	li $t0, 0
	sw $t0, -1804($fp)
	li $t0, 62334
	sw $t0, -1808($fp)
	li $t0, 38494
	sw $t0, -1812($fp)
	lw $t0, -1808($fp)
	lw $t1, -1812($fp)
	add $t0, $t0, $t1
	sw $t0, -1816($fp)
	li $t0, 5807
	sw $t0, -1820($fp)
	lw $t1, -1816($fp)
	lw $t2, -1820($fp)
	blt $t1, $t2, label726
	j label727
label726:
	li $t0, 1
	sw $t0, -1804($fp)
label727:
	li $t0, 0
	sw $t0, -1824($fp)
	li $t0, 21996
	sw $t0, -1828($fp)
	lw $t1, -1828($fp)
	li $t2, 0
	bne $t1, $t2, label728
	j label729
label728:
	li $t0, 1
	sw $t0, -1824($fp)
label729:
	li $t0, 0
	sw $t0, -1832($fp)
	li $t0, 59865
	sw $t0, -1836($fp)
	lw $t0, -360($fp)
	sw $t0, -1840($fp)
	lw $t0, -1836($fp)
	lw $t1, -1840($fp)
	sub $t0, $t0, $t1
	sw $t0, -1844($fp)
	li $t0, 17816
	sw $t0, -1848($fp)
	lw $t1, -1844($fp)
	lw $t2, -1848($fp)
	bne $t1, $t2, label730
	j label731
label730:
	li $t0, 1
	sw $t0, -1832($fp)
label731:
	addi $sp, $sp, -4
	lw $t0, -1804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1832($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1852($fp)
	addi $sp, $sp, 16
	lw $t0, -324($fp)
	sw $t0, -1856($fp)
	lw $t1, -1852($fp)
	lw $t2, -1856($fp)
	bgt $t1, $t2, label724
	j label725
label724:
	li $t0, 1
	sw $t0, -1800($fp)
label725:
	lw $t1, -1796($fp)
	lw $t2, -1800($fp)
	beq $t1, $t2, label722
	j label723
label722:
	li $t0, 30089
	sw $t0, -1872($fp)
	addi $t0, $fp, -1868
	sw $t0, -1876($fp)
	li $t0, 0
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
	li $t0, 14905
	sw $t0, -1896($fp)
	addi $t0, $fp, -1868
	sw $t0, -1900($fp)
	li $t0, 1
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
	li $t0, 24956
	sw $t0, -1920($fp)
	addi $t0, $fp, -1868
	sw $t0, -1924($fp)
	li $t0, 2
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
	li $t0, 0
	sw $t0, -1944($fp)
	li $t0, 0
	sw $t0, -1948($fp)
	li $t0, 0
	sw $t0, -1952($fp)
	addi $t0, $fp, -72
	sw $t0, -1956($fp)
	lw $t0, -300($fp)
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
	lw $t1, -1972($fp)
	li $t2, 0
	bne $t1, $t2, label737
	j label736
label736:
	li $t0, 1
	sw $t0, -1952($fp)
label737:
	addi $t0, $fp, -1868
	sw $t0, -1976($fp)
	lw $t0, -300($fp)
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
	lw $t1, -1952($fp)
	lw $t2, -1992($fp)
	ble $t1, $t2, label734
	j label735
label734:
	li $t0, 1
	sw $t0, -1948($fp)
label735:
	lw $t0, -648($fp)
	sw $t0, -1996($fp)
	lw $t1, -1948($fp)
	lw $t2, -1996($fp)
	beq $t1, $t2, label732
	j label733
label732:
	li $t0, 1
	sw $t0, -1944($fp)
label733:
	j label721
label723:
	li $t0, 0
	sw $t0, -2000($fp)
	li $t0, 0
	sw $t0, -2004($fp)
	li $t0, 17296
	sw $t0, -2008($fp)
	li $t0, 38548
	sw $t0, -2012($fp)
	lw $t0, -2008($fp)
	lw $t1, -2012($fp)
	mul $t0, $t0, $t1
	sw $t0, -2016($fp)
	li $t0, 0
	lw $t1, -2016($fp)
	sub $t0, $t0, $t1
	sw $t0, -2020($fp)
	li $t0, 3787
	sw $t0, -2024($fp)
	lw $t1, -2020($fp)
	lw $t2, -2024($fp)
	blt $t1, $t2, label741
	j label742
label741:
	li $t0, 1
	sw $t0, -2004($fp)
label742:
	li $t0, 0
	sw $t0, -2028($fp)
	li $t0, 40002
	sw $t0, -2032($fp)
	lw $t1, -2032($fp)
	li $t2, 0
	bne $t1, $t2, label743
	j label744
label743:
	li $t0, 1
	sw $t0, -2028($fp)
label744:
	lw $t1, -2004($fp)
	lw $t2, -2028($fp)
	bgt $t1, $t2, label740
	j label739
label740:
	lw $t0, -840($fp)
	sw $t0, -2036($fp)
	li $t0, 28700
	sw $t0, -2040($fp)
	lw $t0, -840($fp)
	sw $t0, -2044($fp)
	lw $t0, -2040($fp)
	lw $t1, -2044($fp)
	sub $t0, $t0, $t1
	sw $t0, -2048($fp)
	lw $t0, -648($fp)
	sw $t0, -2052($fp)
	lw $t0, -2048($fp)
	lw $t1, -2052($fp)
	sub $t0, $t0, $t1
	sw $t0, -2056($fp)
	li $t0, 0
	sw $t0, -2060($fp)
	addi $t0, $fp, -72
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
	lw $t1, -2080($fp)
	li $t2, 0
	bne $t1, $t2, label746
	j label745
label745:
	li $t0, 1
	sw $t0, -2060($fp)
label746:
	addi $sp, $sp, -4
	lw $t0, -2036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2060($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2084($fp)
	addi $sp, $sp, 16
	lw $t1, -2084($fp)
	li $t2, 0
	bne $t1, $t2, label738
	j label739
label738:
	li $t0, 1
	sw $t0, -2000($fp)
label739:
	jal f7
	sw $v0, -2088($fp)
	addi $sp, $sp, 4
	lw $t1, -2088($fp)
	li $t2, 0
	bne $t1, $t2, label747
	j label748
label747:
	addi $t0, $fp, -72
	sw $t0, -2092($fp)
	li $t0, 0
	sw $t0, -2096($fp)
	lw $t0, -1632($fp)
	sw $t0, -2100($fp)
	lw $t1, -2100($fp)
	li $t2, 0
	bne $t1, $t2, label754
	j label752
label754:
	li $t0, 57434
	sw $t0, -2104($fp)
	lw $t1, -2104($fp)
	li $t2, 0
	bne $t1, $t2, label753
	j label752
label753:
	li $t0, 8526
	sw $t0, -2108($fp)
	lw $t1, -2108($fp)
	li $t2, 0
	bne $t1, $t2, label750
	j label752
label752:
	li $t0, 53178
	sw $t0, -2112($fp)
	li $t0, 0
	lw $t1, -2112($fp)
	sub $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t1, -2116($fp)
	li $t2, 0
	bne $t1, $t2, label750
	j label751
label750:
	li $t0, 1
	sw $t0, -2096($fp)
label751:
	li $t0, 4
	lw $t1, -2096($fp)
	mul $t0, $t0, $t1
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	lw $t1, -2092($fp)
	add $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t0, -2124($fp)
	lw $t1, 0($t0)
	sw $t1, -2128($fp)
	j label749
label748:
label755:
	li $t0, 0
	sw $t0, -2132($fp)
	addi $t0, $fp, -100
	sw $t0, -2136($fp)
	lw $t0, -300($fp)
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
	addi $sp, $sp, -4
	lw $t0, -2152($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2156($fp)
	addi $sp, $sp, 8
	lw $t1, -2156($fp)
	li $t2, 0
	bne $t1, $t2, label758
	j label760
label760:
	lw $t0, -840($fp)
	sw $t0, -2160($fp)
	lw $t1, -2160($fp)
	li $t2, 0
	bne $t1, $t2, label758
	j label759
label758:
	li $t0, 1
	sw $t0, -2132($fp)
label759:
	lw $t0, -2132($fp)
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	sw $t0, -2164($fp)
	lw $t1, -2164($fp)
	li $t2, 0
	bne $t1, $t2, label756
	j label757
label756:
	jal f13
	sw $v0, -2168($fp)
	addi $sp, $sp, 4
	j label755
label757:
label749:
	lw $t0, -360($fp)
	sw $t0, -2172($fp)
	lw $t0, -300($fp)
	sw $t0, -2176($fp)
	lw $t0, -2172($fp)
	lw $t1, -2176($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2180($fp)
	li $t0, 36377
	sw $t0, -2184($fp)
	lw $t0, -2180($fp)
	lw $t1, -2184($fp)
	add $t0, $t0, $t1
	sw $t0, -2188($fp)
	addi $t0, $fp, -32
	sw $t0, -2192($fp)
	lw $t0, -1644($fp)
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
	addi $t0, $fp, -72
	sw $t0, -2212($fp)
	li $t0, 5
	sw $t0, -2216($fp)
	li $t0, 4
	lw $t1, -2216($fp)
	mul $t0, $t0, $t1
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	lw $t1, -2212($fp)
	add $t0, $t0, $t1
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	lw $t1, 0($t0)
	sw $t1, -2228($fp)
	addi $sp, $sp, -4
	lw $t0, -2188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2228($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2232($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -2236($fp)
	li $t0, 18382
	sw $t0, -2240($fp)
	lw $t0, -888($fp)
	sw $t0, -2244($fp)
	lw $t0, -2240($fp)
	lw $t1, -2244($fp)
	mul $t0, $t0, $t1
	sw $t0, -2248($fp)
	addi $sp, $sp, -4
	lw $t0, -2248($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2252($fp)
	addi $sp, $sp, 8
	lw $t1, -2252($fp)
	li $t2, 0
	bne $t1, $t2, label765
	j label764
label764:
	li $t0, 1
	sw $t0, -2236($fp)
label765:
	lw $t0, -2232($fp)
	lw $t1, -2236($fp)
	mul $t0, $t0, $t1
	sw $t0, -2256($fp)
	lw $t0, -372($fp)
	sw $t0, -2260($fp)
	lw $t0, -2256($fp)
	lw $t1, -2260($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2264($fp)
	li $t0, 0
	lw $t1, -2264($fp)
	sub $t0, $t0, $t1
	sw $t0, -2268($fp)
	lw $t1, -2268($fp)
	li $t2, 0
	bne $t1, $t2, label761
	j label762
label761:
label766:
	addi $t0, $fp, -72
	sw $t0, -2272($fp)
	li $t0, 0
	sw $t0, -2276($fp)
	li $t0, 0
	sw $t0, -2280($fp)
	lw $t0, -1668($fp)
	sw $t0, -2284($fp)
	li $t0, 0
	lw $t1, -2284($fp)
	sub $t0, $t0, $t1
	sw $t0, -2288($fp)
	lw $t1, -2288($fp)
	li $t2, 0
	bne $t1, $t2, label774
	j label773
label774:
	li $t0, 21893
	sw $t0, -2292($fp)
	lw $t1, -2292($fp)
	li $t2, 0
	bne $t1, $t2, label772
	j label773
label772:
	li $t0, 1
	sw $t0, -2280($fp)
label773:
	lw $t0, -216($fp)
	sw $t0, -2296($fp)
	li $t0, 49910
	sw $t0, -2300($fp)
	lw $t0, -2296($fp)
	lw $t1, -2300($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2304($fp)
	li $t0, 0
	lw $t1, -2304($fp)
	sub $t0, $t0, $t1
	sw $t0, -2308($fp)
	li $t0, 0
	sw $t0, -2312($fp)
	addi $t0, $fp, -28
	sw $t0, -2316($fp)
	lw $t0, -840($fp)
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
	lw $t0, -372($fp)
	sw $t0, -2336($fp)
	lw $t1, -2332($fp)
	lw $t2, -2336($fp)
	beq $t1, $t2, label775
	j label776
label775:
	li $t0, 1
	sw $t0, -2312($fp)
label776:
	addi $sp, $sp, -4
	lw $t0, -2280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2312($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2340($fp)
	addi $sp, $sp, 16
	lw $t1, -2340($fp)
	li $t2, 0
	bne $t1, $t2, label771
	j label770
label771:
	lw $t0, -840($fp)
	sw $t0, -2344($fp)
	lw $t0, -1632($fp)
	sw $t0, -2348($fp)
	lw $t1, -2344($fp)
	lw $t2, -2348($fp)
	bge $t1, $t2, label769
	j label770
label769:
	li $t0, 1
	sw $t0, -2276($fp)
label770:
	li $t0, 4
	lw $t1, -2276($fp)
	mul $t0, $t0, $t1
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	lw $t1, -2272($fp)
	add $t0, $t0, $t1
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	lw $t1, 0($t0)
	sw $t1, -2360($fp)
	lw $t1, -2360($fp)
	li $t2, 0
	bne $t1, $t2, label767
	j label768
label767:
	li $t0, 3755
	sw $t0, -2364($fp)
	li $t0, 0
	sw $t0, -2368($fp)
	lw $t0, -852($fp)
	sw $t0, -2372($fp)
	lw $t1, -2372($fp)
	li $t2, 0
	bne $t1, $t2, label778
	j label777
label777:
	li $t0, 1
	sw $t0, -2368($fp)
label778:
	lw $t0, -2364($fp)
	lw $t1, -2368($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2376($fp)
	li $t0, 60073
	sw $t0, -2380($fp)
	li $t0, 0
	lw $t1, -2380($fp)
	sub $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -360($fp)
	sw $t0, -2388($fp)
	li $t0, 0
	lw $t1, -2388($fp)
	sub $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t0, -360($fp)
	sw $t0, -2396($fp)
	jal f7
	sw $v0, -2400($fp)
	addi $sp, $sp, 4
	lw $t0, -840($fp)
	sw $t0, -2404($fp)
	lw $t0, -2400($fp)
	lw $t1, -2404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2408($fp)
	addi $sp, $sp, -4
	lw $t0, -2392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2408($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2412($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -2412($fp)
	sub $t0, $t0, $t1
	sw $t0, -2416($fp)
	li $t0, 0
	lw $t1, -2416($fp)
	sub $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t0, -2384($fp)
	lw $t1, -2420($fp)
	sub $t0, $t0, $t1
	sw $t0, -2424($fp)
	j label766
label768:
	j label763
label762:
	jal f7
	sw $v0, -2428($fp)
	addi $sp, $sp, 4
	lw $t1, -2428($fp)
	li $t2, 0
	bne $t1, $t2, label779
	j label782
label782:
	lw $t0, -300($fp)
	sw $t0, -2432($fp)
	li $t0, 1500
	sw $t0, -2436($fp)
	lw $t0, -852($fp)
	sw $t0, -2440($fp)
	lw $t0, -2436($fp)
	lw $t1, -2440($fp)
	add $t0, $t0, $t1
	sw $t0, -2444($fp)
	lw $t1, -2432($fp)
	lw $t2, -2444($fp)
	bgt $t1, $t2, label779
	j label780
label779:
	li $t0, 63344
	sw $t0, -2448($fp)
	lw $t0, -852($fp)
	sw $t0, -2452($fp)
	lw $t0, -2448($fp)
	lw $t1, -2452($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2456($fp)
	lw $t0, -2456($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -2464($fp)
	lw $ra, -4($fp)
	lw $v0, -2464($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label781
label780:
	lw $t0, -384($fp)
	sw $t0, -2468($fp)
	lw $t0, -324($fp)
	sw $t0, -2472($fp)
	li $t0, 53969
	sw $t0, -2476($fp)
	lw $t0, -2472($fp)
	lw $t1, -2476($fp)
	mul $t0, $t0, $t1
	sw $t0, -2480($fp)
	lw $t0, -2468($fp)
	lw $t1, -2480($fp)
	add $t0, $t0, $t1
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -2488($fp)
label781:
label763:
	lw $t0, -120($fp)
	sw $t0, -2492($fp)
	lw $t0, -2492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -2496($fp)
	li $t0, 0
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
	addi $t0, $fp, -16
	sw $t0, -2516($fp)
	li $t0, 1
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
	lw $t0, -2532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -2536($fp)
	li $t0, 2
	sw $t0, -2540($fp)
	li $t0, 4
	lw $t1, -2540($fp)
	mul $t0, $t0, $t1
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	lw $t1, -2536($fp)
	add $t0, $t0, $t1
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	lw $t1, 0($t0)
	sw $t1, -2552($fp)
	lw $t0, -2552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -216($fp)
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2564($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -2584($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -2604($fp)
	li $t0, 2
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
	lw $t0, -300($fp)
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -312($fp)
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2636($fp)
	li $t0, 0
	sw $t0, -2640($fp)
	li $t0, 4
	lw $t1, -2640($fp)
	mul $t0, $t0, $t1
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	lw $t1, -2636($fp)
	add $t0, $t0, $t1
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	lw $t1, 0($t0)
	sw $t1, -2652($fp)
	lw $t0, -2652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -2656($fp)
	lw $t0, -2656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -2660($fp)
	lw $t0, -2660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2672($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -2692($fp)
	li $t0, 1
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
	addi $t0, $fp, -72
	sw $t0, -2712($fp)
	li $t0, 0
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
	addi $t0, $fp, -72
	sw $t0, -2732($fp)
	li $t0, 1
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
	addi $t0, $fp, -72
	sw $t0, -2752($fp)
	li $t0, 2
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
	addi $t0, $fp, -72
	sw $t0, -2772($fp)
	li $t0, 3
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
	addi $t0, $fp, -72
	sw $t0, -2792($fp)
	li $t0, 4
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
	addi $t0, $fp, -72
	sw $t0, -2812($fp)
	li $t0, 5
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
	addi $t0, $fp, -72
	sw $t0, -2832($fp)
	li $t0, 6
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
	addi $t0, $fp, -72
	sw $t0, -2852($fp)
	li $t0, 7
	sw $t0, -2856($fp)
	li $t0, 4
	lw $t1, -2856($fp)
	mul $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	lw $t1, -2852($fp)
	add $t0, $t0, $t1
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	lw $t1, 0($t0)
	sw $t1, -2868($fp)
	lw $t0, -2868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -2880($fp)
	li $t0, 0
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
	addi $t0, $fp, -100
	sw $t0, -2900($fp)
	li $t0, 1
	sw $t0, -2904($fp)
	li $t0, 4
	lw $t1, -2904($fp)
	mul $t0, $t0, $t1
	sw $t0, -2908($fp)
	lw $t0, -2908($fp)
	lw $t1, -2900($fp)
	add $t0, $t0, $t1
	sw $t0, -2912($fp)
	lw $t0, -2912($fp)
	lw $t1, 0($t0)
	sw $t1, -2916($fp)
	lw $t0, -2916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -2920($fp)
	li $t0, 2
	sw $t0, -2924($fp)
	li $t0, 4
	lw $t1, -2924($fp)
	mul $t0, $t0, $t1
	sw $t0, -2928($fp)
	lw $t0, -2928($fp)
	lw $t1, -2920($fp)
	add $t0, $t0, $t1
	sw $t0, -2932($fp)
	lw $t0, -2932($fp)
	lw $t1, 0($t0)
	sw $t1, -2936($fp)
	lw $t0, -2936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -2940($fp)
	li $t0, 3
	sw $t0, -2944($fp)
	li $t0, 4
	lw $t1, -2944($fp)
	mul $t0, $t0, $t1
	sw $t0, -2948($fp)
	lw $t0, -2948($fp)
	lw $t1, -2940($fp)
	add $t0, $t0, $t1
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	lw $t1, 0($t0)
	sw $t1, -2956($fp)
	lw $t0, -2956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -2960($fp)
	li $t0, 4
	sw $t0, -2964($fp)
	li $t0, 4
	lw $t1, -2964($fp)
	mul $t0, $t0, $t1
	sw $t0, -2968($fp)
	lw $t0, -2968($fp)
	lw $t1, -2960($fp)
	add $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $t0, -2972($fp)
	lw $t1, 0($t0)
	sw $t1, -2976($fp)
	lw $t0, -2976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -2980($fp)
	li $t0, 5
	sw $t0, -2984($fp)
	li $t0, 4
	lw $t1, -2984($fp)
	mul $t0, $t0, $t1
	sw $t0, -2988($fp)
	lw $t0, -2988($fp)
	lw $t1, -2980($fp)
	add $t0, $t0, $t1
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	lw $t1, 0($t0)
	sw $t1, -2996($fp)
	lw $t0, -2996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -3000($fp)
	li $t0, 6
	sw $t0, -3004($fp)
	li $t0, 4
	lw $t1, -3004($fp)
	mul $t0, $t0, $t1
	sw $t0, -3008($fp)
	lw $t0, -3008($fp)
	lw $t1, -3000($fp)
	add $t0, $t0, $t1
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	lw $t1, 0($t0)
	sw $t1, -3016($fp)
	lw $t0, -3016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -840($fp)
	sw $t0, -3020($fp)
	lw $t0, -3020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -852($fp)
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -864($fp)
	sw $t0, -3028($fp)
	lw $t0, -3028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -876($fp)
	sw $t0, -3032($fp)
	lw $t0, -3032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -888($fp)
	sw $t0, -3036($fp)
	lw $t0, -3036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -3040($fp)
	li $t0, 0
	sw $t0, -3044($fp)
	li $t0, 4
	lw $t1, -3044($fp)
	mul $t0, $t0, $t1
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	lw $t1, -3040($fp)
	add $t0, $t0, $t1
	sw $t0, -3052($fp)
	lw $t0, -3052($fp)
	lw $t1, 0($t0)
	sw $t1, -3056($fp)
	lw $t0, -3056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -3060($fp)
	li $t0, 1
	sw $t0, -3064($fp)
	li $t0, 4
	lw $t1, -3064($fp)
	mul $t0, $t0, $t1
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	lw $t1, -3060($fp)
	add $t0, $t0, $t1
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	lw $t1, 0($t0)
	sw $t1, -3076($fp)
	lw $t0, -3076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -3080($fp)
	li $t0, 2
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
	lw $t0, -3096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3100($fp)
	addi $t0, $fp, -32
	sw $t0, -3104($fp)
	li $t0, 0
	sw $t0, -3108($fp)
	li $t0, 0
	sw $t0, -3112($fp)
	li $t0, 61858
	sw $t0, -3116($fp)
	lw $t1, -3116($fp)
	li $t2, 0
	bne $t1, $t2, label788
	j label787
label787:
	li $t0, 1
	sw $t0, -3112($fp)
label788:
	lw $t0, -120($fp)
	sw $t0, -3120($fp)
	lw $t1, -3112($fp)
	lw $t2, -3120($fp)
	bge $t1, $t2, label785
	j label786
label785:
	li $t0, 1
	sw $t0, -3108($fp)
label786:
	addi $sp, $sp, -4
	lw $t0, -3108($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -3124($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -3124($fp)
	sub $t0, $t0, $t1
	sw $t0, -3128($fp)
	li $t0, 4
	lw $t1, -3128($fp)
	mul $t0, $t0, $t1
	sw $t0, -3132($fp)
	lw $t0, -3132($fp)
	lw $t1, -3104($fp)
	add $t0, $t0, $t1
	sw $t0, -3136($fp)
	lw $t0, -3136($fp)
	lw $t1, 0($t0)
	sw $t1, -3140($fp)
	lw $t1, -3140($fp)
	li $t2, 0
	bne $t1, $t2, label784
	j label783
label783:
	li $t0, 1
	sw $t0, -3100($fp)
label784:
	lw $ra, -4($fp)
	lw $v0, -3100($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -404
	li $t0, 57673
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	li $t0, 6250
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	li $t0, 18318
	sw $t0, -56($fp)
	addi $t0, $fp, -28
	sw $t0, -60($fp)
	li $t0, 0
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
	li $t0, 54472
	sw $t0, -80($fp)
	addi $t0, $fp, -28
	sw $t0, -84($fp)
	li $t0, 1
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
	li $t0, 44744
	sw $t0, -104($fp)
	addi $t0, $fp, -28
	sw $t0, -108($fp)
	li $t0, 2
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
	li $t0, 24126
	sw $t0, -128($fp)
	addi $t0, $fp, -28
	sw $t0, -132($fp)
	li $t0, 3
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
	li $t0, 19025
	sw $t0, -152($fp)
	addi $t0, $fp, -28
	sw $t0, -156($fp)
	li $t0, 4
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
	li $t0, 59650
	sw $t0, -176($fp)
	addi $t0, $fp, -28
	sw $t0, -180($fp)
	li $t0, 5
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
	li $t0, 0
	sw $t0, -200($fp)
	lw $t0, -48($fp)
	sw $t0, -204($fp)
	li $t0, 47856
	sw $t0, -208($fp)
	lw $t1, -204($fp)
	lw $t2, -208($fp)
	bge $t1, $t2, label789
	j label791
label791:
	li $t0, 16468
	sw $t0, -212($fp)
	lw $t1, -212($fp)
	li $t2, 0
	bne $t1, $t2, label789
	j label790
label789:
	li $t0, 1
	sw $t0, -200($fp)
label790:
	addi $t0, $fp, -28
	sw $t0, -216($fp)
	li $t0, 5
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
	lw $t0, -48($fp)
	sw $t0, -236($fp)
	lw $t0, -232($fp)
	lw $t1, -236($fp)
	add $t0, $t0, $t1
	sw $t0, -240($fp)
	li $t0, 0
	sw $t0, -244($fp)
	li $t0, 32662
	sw $t0, -248($fp)
	lw $t1, -248($fp)
	li $t2, 0
	bne $t1, $t2, label792
	j label793
label792:
	li $t0, 1
	sw $t0, -244($fp)
label793:
	li $t0, 36321
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -256($fp)
	lw $t0, -48($fp)
	sw $t0, -260($fp)
	li $t0, 49082
	sw $t0, -264($fp)
	lw $t0, -260($fp)
	lw $t1, -264($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -268($fp)
	li $t0, 0
	lw $t1, -268($fp)
	sub $t0, $t0, $t1
	sw $t0, -272($fp)
	addi $sp, $sp, -4
	lw $t0, -200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -272($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -276($fp)
	addi $sp, $sp, 24
	lw $t0, -36($fp)
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -48($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -288($fp)
	li $t0, 0
	sw $t0, -292($fp)
	li $t0, 4
	lw $t1, -292($fp)
	mul $t0, $t0, $t1
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	lw $t1, -288($fp)
	add $t0, $t0, $t1
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	lw $t1, 0($t0)
	sw $t1, -304($fp)
	lw $t0, -304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -308($fp)
	li $t0, 1
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
	lw $t0, -324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -328($fp)
	li $t0, 2
	sw $t0, -332($fp)
	li $t0, 4
	lw $t1, -332($fp)
	mul $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	lw $t1, -328($fp)
	add $t0, $t0, $t1
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	lw $t1, 0($t0)
	sw $t1, -344($fp)
	lw $t0, -344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -348($fp)
	li $t0, 3
	sw $t0, -352($fp)
	li $t0, 4
	lw $t1, -352($fp)
	mul $t0, $t0, $t1
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	lw $t1, -348($fp)
	add $t0, $t0, $t1
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	lw $t1, 0($t0)
	sw $t1, -364($fp)
	lw $t0, -364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -368($fp)
	li $t0, 4
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
	lw $t0, -384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -388($fp)
	li $t0, 5
	sw $t0, -392($fp)
	li $t0, 4
	lw $t1, -392($fp)
	mul $t0, $t0, $t1
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	lw $t1, -388($fp)
	add $t0, $t0, $t1
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	lw $t1, 0($t0)
	sw $t1, -404($fp)
	lw $t0, -404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 39487
	sw $t0, -408($fp)
	lw $ra, -4($fp)
	lw $v0, -408($fp)
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
