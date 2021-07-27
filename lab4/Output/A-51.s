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
	addi $sp, $sp, -3756
	li $t0, 44027
	sw $t0, -164($fp)
	addi $t0, $fp, -8
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
	li $t0, 11977
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	li $t0, 15631
	sw $t0, -200($fp)
	addi $t0, $fp, -16
	sw $t0, -204($fp)
	li $t0, 0
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $t0, -204($fp)
	lw $t1, -212($fp)
	add $t0, $t0, $t1
	sw $t0, -216($fp)
	lw $t0, -200($fp)
	lw $t1, -216($fp)
	sw $t0, 0($t1)
	lw $t0, -216($fp)
	lw $t1, 0($t0)
	sw $t1, -220($fp)
	li $t0, 50875
	sw $t0, -224($fp)
	addi $t0, $fp, -16
	sw $t0, -228($fp)
	li $t0, 1
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
	li $t0, 18375
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	li $t0, 60315
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	li $t0, 61609
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	li $t0, 46071
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	li $t0, 17186
	sw $t0, -296($fp)
	addi $t0, $fp, -48
	sw $t0, -300($fp)
	li $t0, 0
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
	li $t0, 41503
	sw $t0, -320($fp)
	addi $t0, $fp, -48
	sw $t0, -324($fp)
	li $t0, 1
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
	li $t0, 32014
	sw $t0, -344($fp)
	addi $t0, $fp, -48
	sw $t0, -348($fp)
	li $t0, 2
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
	li $t0, 34820
	sw $t0, -368($fp)
	addi $t0, $fp, -48
	sw $t0, -372($fp)
	li $t0, 3
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
	li $t0, 24432
	sw $t0, -392($fp)
	addi $t0, $fp, -48
	sw $t0, -396($fp)
	li $t0, 4
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
	li $t0, 23088
	sw $t0, -416($fp)
	addi $t0, $fp, -48
	sw $t0, -420($fp)
	li $t0, 5
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
	li $t0, 6573
	sw $t0, -440($fp)
	addi $t0, $fp, -48
	sw $t0, -444($fp)
	li $t0, 6
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
	li $t0, 15012
	sw $t0, -464($fp)
	addi $t0, $fp, -48
	sw $t0, -468($fp)
	li $t0, 7
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
	li $t0, 29886
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	li $t0, 1724
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	li $t0, 43053
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	li $t0, 14461
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	li $t0, 12341
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	li $t0, 36154
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	li $t0, 61131
	sw $t0, -560($fp)
	addi $t0, $fp, -80
	sw $t0, -564($fp)
	li $t0, 0
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
	li $t0, 17848
	sw $t0, -584($fp)
	addi $t0, $fp, -80
	sw $t0, -588($fp)
	li $t0, 1
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -596($fp)
	lw $t0, -588($fp)
	lw $t1, -596($fp)
	add $t0, $t0, $t1
	sw $t0, -600($fp)
	lw $t0, -584($fp)
	lw $t1, -600($fp)
	sw $t0, 0($t1)
	lw $t0, -600($fp)
	lw $t1, 0($t0)
	sw $t1, -604($fp)
	li $t0, 62367
	sw $t0, -608($fp)
	addi $t0, $fp, -80
	sw $t0, -612($fp)
	li $t0, 2
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -620($fp)
	lw $t0, -612($fp)
	lw $t1, -620($fp)
	add $t0, $t0, $t1
	sw $t0, -624($fp)
	lw $t0, -608($fp)
	lw $t1, -624($fp)
	sw $t0, 0($t1)
	lw $t0, -624($fp)
	lw $t1, 0($t0)
	sw $t1, -628($fp)
	li $t0, 42736
	sw $t0, -632($fp)
	addi $t0, $fp, -80
	sw $t0, -636($fp)
	li $t0, 3
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -644($fp)
	lw $t0, -636($fp)
	lw $t1, -644($fp)
	add $t0, $t0, $t1
	sw $t0, -648($fp)
	lw $t0, -632($fp)
	lw $t1, -648($fp)
	sw $t0, 0($t1)
	lw $t0, -648($fp)
	lw $t1, 0($t0)
	sw $t1, -652($fp)
	li $t0, 58033
	sw $t0, -656($fp)
	addi $t0, $fp, -80
	sw $t0, -660($fp)
	li $t0, 4
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -668($fp)
	lw $t0, -660($fp)
	lw $t1, -668($fp)
	add $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $t0, -656($fp)
	lw $t1, -672($fp)
	sw $t0, 0($t1)
	lw $t0, -672($fp)
	lw $t1, 0($t0)
	sw $t1, -676($fp)
	li $t0, 7645
	sw $t0, -680($fp)
	addi $t0, $fp, -80
	sw $t0, -684($fp)
	li $t0, 5
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
	li $t0, 19124
	sw $t0, -704($fp)
	addi $t0, $fp, -80
	sw $t0, -708($fp)
	li $t0, 6
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -716($fp)
	lw $t0, -708($fp)
	lw $t1, -716($fp)
	add $t0, $t0, $t1
	sw $t0, -720($fp)
	lw $t0, -704($fp)
	lw $t1, -720($fp)
	sw $t0, 0($t1)
	lw $t0, -720($fp)
	lw $t1, 0($t0)
	sw $t1, -724($fp)
	li $t0, 5635
	sw $t0, -728($fp)
	addi $t0, $fp, -80
	sw $t0, -732($fp)
	li $t0, 7
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -740($fp)
	lw $t0, -732($fp)
	lw $t1, -740($fp)
	add $t0, $t0, $t1
	sw $t0, -744($fp)
	lw $t0, -728($fp)
	lw $t1, -744($fp)
	sw $t0, 0($t1)
	lw $t0, -744($fp)
	lw $t1, 0($t0)
	sw $t1, -748($fp)
	li $t0, 53785
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -760($fp)
	li $t0, 63151
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -772($fp)
	li $t0, 17613
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	li $t0, 3880
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	li $t0, 48490
	sw $t0, -800($fp)
	addi $t0, $fp, -104
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
	li $t0, 35988
	sw $t0, -824($fp)
	addi $t0, $fp, -104
	sw $t0, -828($fp)
	li $t0, 1
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
	li $t0, 64196
	sw $t0, -848($fp)
	addi $t0, $fp, -104
	sw $t0, -852($fp)
	li $t0, 2
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
	li $t0, 44564
	sw $t0, -872($fp)
	addi $t0, $fp, -104
	sw $t0, -876($fp)
	li $t0, 3
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
	li $t0, 16524
	sw $t0, -896($fp)
	addi $t0, $fp, -104
	sw $t0, -900($fp)
	li $t0, 4
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
	li $t0, 15846
	sw $t0, -920($fp)
	addi $t0, $fp, -104
	sw $t0, -924($fp)
	li $t0, 5
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
	li $t0, 20531
	sw $t0, -944($fp)
	addi $t0, $fp, -144
	sw $t0, -948($fp)
	li $t0, 0
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
	li $t0, 48538
	sw $t0, -968($fp)
	addi $t0, $fp, -144
	sw $t0, -972($fp)
	li $t0, 1
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
	li $t0, 50666
	sw $t0, -992($fp)
	addi $t0, $fp, -144
	sw $t0, -996($fp)
	li $t0, 2
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
	li $t0, 44964
	sw $t0, -1016($fp)
	addi $t0, $fp, -144
	sw $t0, -1020($fp)
	li $t0, 3
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
	li $t0, 6090
	sw $t0, -1040($fp)
	addi $t0, $fp, -144
	sw $t0, -1044($fp)
	li $t0, 4
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
	li $t0, 57239
	sw $t0, -1064($fp)
	addi $t0, $fp, -144
	sw $t0, -1068($fp)
	li $t0, 5
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t0, -1068($fp)
	lw $t1, -1076($fp)
	add $t0, $t0, $t1
	sw $t0, -1080($fp)
	lw $t0, -1064($fp)
	lw $t1, -1080($fp)
	sw $t0, 0($t1)
	lw $t0, -1080($fp)
	lw $t1, 0($t0)
	sw $t1, -1084($fp)
	li $t0, 59976
	sw $t0, -1088($fp)
	addi $t0, $fp, -144
	sw $t0, -1092($fp)
	li $t0, 6
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1100($fp)
	lw $t0, -1092($fp)
	lw $t1, -1100($fp)
	add $t0, $t0, $t1
	sw $t0, -1104($fp)
	lw $t0, -1088($fp)
	lw $t1, -1104($fp)
	sw $t0, 0($t1)
	lw $t0, -1104($fp)
	lw $t1, 0($t0)
	sw $t1, -1108($fp)
	li $t0, 35976
	sw $t0, -1112($fp)
	addi $t0, $fp, -144
	sw $t0, -1116($fp)
	li $t0, 7
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
	li $t0, 58963
	sw $t0, -1136($fp)
	addi $t0, $fp, -144
	sw $t0, -1140($fp)
	li $t0, 8
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
	li $t0, 37494
	sw $t0, -1160($fp)
	addi $t0, $fp, -144
	sw $t0, -1164($fp)
	li $t0, 9
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
	li $t0, 50437
	sw $t0, -1184($fp)
	addi $t0, $fp, -152
	sw $t0, -1188($fp)
	li $t0, 0
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
	li $t0, 5769
	sw $t0, -1208($fp)
	addi $t0, $fp, -152
	sw $t0, -1212($fp)
	li $t0, 1
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1220($fp)
	lw $t0, -1212($fp)
	lw $t1, -1220($fp)
	add $t0, $t0, $t1
	sw $t0, -1224($fp)
	lw $t0, -1208($fp)
	lw $t1, -1224($fp)
	sw $t0, 0($t1)
	lw $t0, -1224($fp)
	lw $t1, 0($t0)
	sw $t1, -1228($fp)
	li $t0, 8112
	sw $t0, -1232($fp)
	addi $t0, $fp, -160
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
	li $t0, 46032
	sw $t0, -1256($fp)
	addi $t0, $fp, -160
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
	li $t0, 23617
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	li $t0, 4943
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	addi $t0, $fp, -48
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
	li $t0, 0
	sw $t0, -1324($fp)
	lw $t0, -1284($fp)
	sw $t0, -1328($fp)
	lw $t1, -1328($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label124
label124:
	li $t0, 1
	sw $t0, -1324($fp)
label125:
	lw $t0, -1320($fp)
	lw $t1, -1324($fp)
	mul $t0, $t0, $t1
	sw $t0, -1332($fp)
	lw $t0, -504($fp)
	sw $t0, -1336($fp)
	li $t0, 0
	lw $t1, -1336($fp)
	sub $t0, $t0, $t1
	sw $t0, -1340($fp)
	li $t0, 0
	lw $t1, -1340($fp)
	sub $t0, $t0, $t1
	sw $t0, -1344($fp)
	lw $t0, -1332($fp)
	lw $t1, -1344($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1348($fp)
	li $t0, 12589
	sw $t0, -1352($fp)
	li $t0, 42357
	sw $t0, -1356($fp)
	li $t0, 0
	lw $t1, -1356($fp)
	sub $t0, $t0, $t1
	sw $t0, -1360($fp)
	lw $t0, -1352($fp)
	lw $t1, -1360($fp)
	mul $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t1, -1348($fp)
	lw $t2, -1364($fp)
	bgt $t1, $t2, label121
	j label122
label121:
	li $t0, 21750
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -1376($fp)
	li $t0, 838
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1388($fp)
	li $t0, 0
	sw $t0, -1392($fp)
	li $t0, 0
	sw $t0, -1396($fp)
	lw $t0, -516($fp)
	sw $t0, -1400($fp)
	li $t0, 39973
	sw $t0, -1404($fp)
	lw $t0, -192($fp)
	sw $t0, -1408($fp)
	lw $t0, -1404($fp)
	lw $t1, -1408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1412($fp)
	lw $t1, -1400($fp)
	lw $t2, -1412($fp)
	bge $t1, $t2, label129
	j label130
label129:
	li $t0, 1
	sw $t0, -1396($fp)
label130:
	li $t0, 0
	sw $t0, -1416($fp)
	lw $t0, 12($fp)
	sw $t0, -1420($fp)
	li $t0, 1955
	sw $t0, -1424($fp)
	lw $t1, -1420($fp)
	lw $t2, -1424($fp)
	bgt $t1, $t2, label131
	j label132
label131:
	li $t0, 1
	sw $t0, -1416($fp)
label132:
	li $t0, 0
	sw $t0, -1428($fp)
	li $t0, 9816
	sw $t0, -1432($fp)
	lw $t1, -1432($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label133
label133:
	li $t0, 1
	sw $t0, -1428($fp)
label134:
	li $t0, 3378
	sw $t0, -1436($fp)
	lw $t0, -1428($fp)
	lw $t1, -1436($fp)
	add $t0, $t0, $t1
	sw $t0, -1440($fp)
	li $t0, 0
	sw $t0, -1444($fp)
	li $t0, 39363
	sw $t0, -1448($fp)
	li $t0, 4718
	sw $t0, -1452($fp)
	lw $t1, -1448($fp)
	lw $t2, -1452($fp)
	bgt $t1, $t2, label137
	j label136
label137:
	li $t0, 22927
	sw $t0, -1456($fp)
	lw $t1, -1456($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label136
label135:
	li $t0, 1
	sw $t0, -1444($fp)
label136:
	addi $sp, $sp, -4
	lw $t0, -1416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1444($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1460($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -1460($fp)
	sub $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t1, -1396($fp)
	lw $t2, -1464($fp)
	blt $t1, $t2, label128
	j label127
label128:
	lw $t0, -1372($fp)
	sw $t0, -1468($fp)
	li $t0, 0
	lw $t1, -1468($fp)
	sub $t0, $t0, $t1
	sw $t0, -1472($fp)
	addi $t0, $fp, -160
	sw $t0, -1476($fp)
	li $t0, 0
	sw $t0, -1480($fp)
	li $t0, 4
	lw $t1, -1480($fp)
	mul $t0, $t0, $t1
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	lw $t1, -1476($fp)
	add $t0, $t0, $t1
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	lw $t1, 0($t0)
	sw $t1, -1492($fp)
	lw $t1, -1472($fp)
	lw $t2, -1492($fp)
	blt $t1, $t2, label126
	j label127
label126:
	li $t0, 1
	sw $t0, -1392($fp)
label127:
	lw $t0, -1372($fp)
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1384($fp)
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1504($fp)
	lw $t0, -1384($fp)
	sw $t0, -1508($fp)
	lw $t0, -768($fp)
	sw $t0, -1512($fp)
	lw $t0, -1508($fp)
	lw $t1, -1512($fp)
	mul $t0, $t0, $t1
	sw $t0, -1516($fp)
	li $t0, 4354
	sw $t0, -1520($fp)
	lw $t0, -1516($fp)
	lw $t1, -1520($fp)
	add $t0, $t0, $t1
	sw $t0, -1524($fp)
	li $t0, 9342
	sw $t0, -1528($fp)
	li $t0, 0
	sw $t0, -1532($fp)
	li $t0, 22487
	sw $t0, -1536($fp)
	lw $t1, -1536($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label142
label143:
	lw $t0, -1372($fp)
	sw $t0, -1540($fp)
	lw $t1, -1540($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label142
label141:
	li $t0, 1
	sw $t0, -1532($fp)
label142:
	addi $sp, $sp, -4
	lw $t0, -1524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1532($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1544($fp)
	addi $sp, $sp, 16
	li $t0, 1915
	sw $t0, -1548($fp)
	lw $t1, -1544($fp)
	lw $t2, -1548($fp)
	beq $t1, $t2, label140
	j label139
label140:
	addi $t0, $fp, -160
	sw $t0, -1552($fp)
	li $t0, 1
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
	li $t0, 61891
	sw $t0, -1572($fp)
	lw $t0, 12($fp)
	sw $t0, -1576($fp)
	lw $t0, -1572($fp)
	lw $t1, -1576($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1580($fp)
	lw $t1, -1568($fp)
	lw $t2, -1580($fp)
	beq $t1, $t2, label138
	j label139
label138:
	li $t0, 1
	sw $t0, -1504($fp)
label139:
	lw $ra, -4($fp)
	lw $v0, -1504($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1584($fp)
	lw $t0, -756($fp)
	sw $t0, -1588($fp)
	lw $t1, -1588($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label144
label144:
	li $t0, 1
	sw $t0, -1584($fp)
label145:
	li $t0, 0
	sw $t0, -1592($fp)
	lw $t0, -192($fp)
	sw $t0, -1596($fp)
	lw $t0, -792($fp)
	sw $t0, -1600($fp)
	lw $t0, -1596($fp)
	lw $t1, -1600($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1604($fp)
	lw $t0, -276($fp)
	sw $t0, -1608($fp)
	lw $t0, -1604($fp)
	lw $t1, -1608($fp)
	add $t0, $t0, $t1
	sw $t0, -1612($fp)
	li $t0, 36310
	sw $t0, -1616($fp)
	lw $t0, -1284($fp)
	sw $t0, -1620($fp)
	lw $t0, -1616($fp)
	lw $t1, -1620($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1624($fp)
	li $t0, 0
	sw $t0, -1628($fp)
	li $t0, 0
	sw $t0, -1632($fp)
	li $t0, 33849
	sw $t0, -1636($fp)
	lw $t0, 8($fp)
	sw $t0, -1640($fp)
	lw $t0, -1636($fp)
	lw $t1, -1640($fp)
	sub $t0, $t0, $t1
	sw $t0, -1644($fp)
	lw $t0, -276($fp)
	sw $t0, -1648($fp)
	lw $t1, -1644($fp)
	lw $t2, -1648($fp)
	ble $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -1632($fp)
label151:
	li $t0, 55021
	sw $t0, -1652($fp)
	li $t0, 0
	sw $t0, -1656($fp)
	li $t0, 51409
	sw $t0, -1660($fp)
	li $t0, 0
	lw $t1, -1660($fp)
	sub $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t1, -1664($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label152
label152:
	li $t0, 1
	sw $t0, -1656($fp)
label153:
	addi $sp, $sp, -4
	lw $t0, -1632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1656($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1668($fp)
	addi $sp, $sp, 16
	lw $t1, -1668($fp)
	li $t2, 0
	bne $t1, $t2, label149
	j label148
label148:
	li $t0, 1
	sw $t0, -1628($fp)
label149:
	addi $sp, $sp, -4
	lw $t0, -1612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1628($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1672($fp)
	addi $sp, $sp, 16
	li $t0, 60790
	sw $t0, -1676($fp)
	lw $t0, -1672($fp)
	lw $t1, -1676($fp)
	sub $t0, $t0, $t1
	sw $t0, -1680($fp)
	addi $t0, $fp, -160
	sw $t0, -1684($fp)
	lw $t0, -792($fp)
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
	ble $t1, $t2, label146
	j label147
label146:
	li $t0, 1
	sw $t0, -1592($fp)
label147:
	lw $t0, -1592($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -1704($fp)
	j label123
label122:
label154:
	addi $t0, $fp, -104
	sw $t0, -1708($fp)
	li $t0, 0
	sw $t0, -1712($fp)
	li $t0, 41961
	sw $t0, -1716($fp)
	lw $t0, -540($fp)
	sw $t0, -1720($fp)
	lw $t1, -1716($fp)
	lw $t2, -1720($fp)
	bne $t1, $t2, label157
	j label158
label157:
	li $t0, 1
	sw $t0, -1712($fp)
label158:
	li $t0, 4
	lw $t1, -1712($fp)
	mul $t0, $t0, $t1
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	lw $t1, -1708($fp)
	add $t0, $t0, $t1
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	lw $t1, 0($t0)
	sw $t1, -1732($fp)
	li $t0, 0
	lw $t1, -1732($fp)
	sub $t0, $t0, $t1
	sw $t0, -1736($fp)
	li $t0, 0
	sw $t0, -1740($fp)
	addi $t0, $fp, -152
	sw $t0, -1744($fp)
	lw $t0, -540($fp)
	sw $t0, -1748($fp)
	li $t0, 4
	lw $t1, -1748($fp)
	mul $t0, $t0, $t1
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	lw $t1, -1744($fp)
	add $t0, $t0, $t1
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	lw $t1, 0($t0)
	sw $t1, -1760($fp)
	lw $t0, -276($fp)
	sw $t0, -1764($fp)
	lw $t1, -1760($fp)
	lw $t2, -1764($fp)
	bge $t1, $t2, label159
	j label160
label159:
	li $t0, 1
	sw $t0, -1740($fp)
label160:
	lw $t1, -1736($fp)
	lw $t2, -1740($fp)
	bne $t1, $t2, label155
	j label156
label155:
	li $t0, 0
	sw $t0, -1768($fp)
	li $t0, 0
	sw $t0, -1772($fp)
	li $t0, 16807
	sw $t0, -1776($fp)
	lw $t1, -1776($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label163
label163:
	li $t0, 1
	sw $t0, -1772($fp)
label164:
	li $t0, 0
	sw $t0, -1780($fp)
	lw $t0, -492($fp)
	sw $t0, -1784($fp)
	lw $t1, -1784($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label165
label165:
	li $t0, 1
	sw $t0, -1780($fp)
label166:
	lw $t1, -1772($fp)
	lw $t2, -1780($fp)
	ble $t1, $t2, label161
	j label162
label161:
	li $t0, 1
	sw $t0, -1768($fp)
label162:
	lw $t0, -552($fp)
	sw $t0, -1788($fp)
	li $t0, 0
	sw $t0, -1792($fp)
	addi $t0, $fp, -160
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
	lw $t1, -1812($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label167
label167:
	li $t0, 1
	sw $t0, -1792($fp)
label168:
	j label154
label156:
label123:
	li $t0, 0
	sw $t0, -1816($fp)
	lw $t0, -276($fp)
	sw $t0, -1820($fp)
	lw $t0, 12($fp)
	sw $t0, -1824($fp)
	lw $t0, -1820($fp)
	lw $t1, -1824($fp)
	add $t0, $t0, $t1
	sw $t0, -1828($fp)
	lw $t0, -1284($fp)
	sw $t0, -1832($fp)
	li $t0, 0
	lw $t1, -1832($fp)
	sub $t0, $t0, $t1
	sw $t0, -1836($fp)
	li $t0, 0
	lw $t1, -1836($fp)
	sub $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t1, -1828($fp)
	lw $t2, -1840($fp)
	bne $t1, $t2, label171
	j label170
label171:
	lw $t0, -768($fp)
	sw $t0, -1844($fp)
	li $t0, 2893
	sw $t0, -1848($fp)
	lw $t0, -1844($fp)
	lw $t1, -1848($fp)
	mul $t0, $t0, $t1
	sw $t0, -1852($fp)
	li $t0, 0
	lw $t1, -1852($fp)
	sub $t0, $t0, $t1
	sw $t0, -1856($fp)
	li $t0, 0
	sw $t0, -1860($fp)
	li $t0, 14226
	sw $t0, -1864($fp)
	lw $t1, -1864($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label173
label175:
	lw $t0, -492($fp)
	sw $t0, -1868($fp)
	lw $t1, -1868($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label173
label174:
	li $t0, 40380
	sw $t0, -1872($fp)
	lw $t1, -1872($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label173
label172:
	li $t0, 1
	sw $t0, -1860($fp)
label173:
	li $t0, 0
	sw $t0, -1876($fp)
	li $t0, 0
	sw $t0, -1880($fp)
	lw $t0, -276($fp)
	sw $t0, -1884($fp)
	li $t0, 65050
	sw $t0, -1888($fp)
	lw $t1, -1884($fp)
	lw $t2, -1888($fp)
	bne $t1, $t2, label178
	j label179
label178:
	li $t0, 1
	sw $t0, -1880($fp)
label179:
	li $t0, 0
	sw $t0, -1892($fp)
	li $t0, 0
	sw $t0, -1896($fp)
	li $t0, 60332
	sw $t0, -1900($fp)
	li $t0, 56834
	sw $t0, -1904($fp)
	lw $t1, -1900($fp)
	lw $t2, -1904($fp)
	ble $t1, $t2, label182
	j label183
label182:
	li $t0, 1
	sw $t0, -1896($fp)
label183:
	li $t0, 30564
	sw $t0, -1908($fp)
	lw $t1, -1896($fp)
	lw $t2, -1908($fp)
	ble $t1, $t2, label180
	j label181
label180:
	li $t0, 1
	sw $t0, -1892($fp)
label181:
	li $t0, 0
	sw $t0, -1912($fp)
	lw $t0, -756($fp)
	sw $t0, -1916($fp)
	li $t0, 0
	lw $t1, -1916($fp)
	sub $t0, $t0, $t1
	sw $t0, -1920($fp)
	lw $t0, -1284($fp)
	sw $t0, -1924($fp)
	lw $t0, -1920($fp)
	lw $t1, -1924($fp)
	sub $t0, $t0, $t1
	sw $t0, -1928($fp)
	addi $t0, $fp, -16
	sw $t0, -1932($fp)
	li $t0, 1
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
	li $t0, 40040
	sw $t0, -1952($fp)
	lw $t0, -780($fp)
	sw $t0, -1956($fp)
	lw $t0, -1952($fp)
	lw $t1, -1956($fp)
	mul $t0, $t0, $t1
	sw $t0, -1960($fp)
	li $t0, 34986
	sw $t0, -1964($fp)
	lw $t0, -1960($fp)
	lw $t1, -1964($fp)
	add $t0, $t0, $t1
	sw $t0, -1968($fp)
	addi $sp, $sp, -4
	lw $t0, -1928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1968($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1972($fp)
	addi $sp, $sp, 16
	li $t0, 56737
	sw $t0, -1976($fp)
	lw $t1, -1972($fp)
	lw $t2, -1976($fp)
	bge $t1, $t2, label184
	j label185
label184:
	li $t0, 1
	sw $t0, -1912($fp)
label185:
	addi $sp, $sp, -4
	lw $t0, -1880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1912($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1980($fp)
	addi $sp, $sp, 16
	lw $t1, -1980($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label176
label176:
	li $t0, 1
	sw $t0, -1876($fp)
label177:
	addi $sp, $sp, -4
	lw $t0, -1856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1876($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1984($fp)
	addi $sp, $sp, 16
	lw $t1, -1984($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -1816($fp)
label170:
	li $t0, 0
	sw $t0, -1988($fp)
	li $t0, 0
	sw $t0, -1992($fp)
	li $t0, 1184
	sw $t0, -1996($fp)
	li $t0, 22117
	sw $t0, -2000($fp)
	lw $t1, -1996($fp)
	lw $t2, -2000($fp)
	blt $t1, $t2, label191
	j label192
label191:
	li $t0, 1
	sw $t0, -1992($fp)
label192:
	lw $t0, -528($fp)
	sw $t0, -2004($fp)
	lw $t1, -1992($fp)
	lw $t2, -2004($fp)
	bgt $t1, $t2, label189
	j label190
label189:
	li $t0, 1
	sw $t0, -1988($fp)
label190:
	li $t0, 16181
	sw $t0, -2008($fp)
	li $t0, 0
	lw $t1, -2008($fp)
	sub $t0, $t0, $t1
	sw $t0, -2012($fp)
	lw $t0, -780($fp)
	sw $t0, -2016($fp)
	addi $sp, $sp, -4
	lw $t0, -1988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2016($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2020($fp)
	addi $sp, $sp, 16
	lw $t1, -2020($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label187
label186:
	li $t0, 0
	sw $t0, -2024($fp)
	addi $t0, $fp, -16
	sw $t0, -2028($fp)
	li $t0, 0
	sw $t0, -2032($fp)
	li $t0, 4
	lw $t1, -2032($fp)
	mul $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	lw $t1, -2028($fp)
	add $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	lw $t1, 0($t0)
	sw $t1, -2044($fp)
	lw $t0, -1284($fp)
	sw $t0, -2048($fp)
	lw $t0, -2044($fp)
	lw $t1, -2048($fp)
	add $t0, $t0, $t1
	sw $t0, -2052($fp)
	li $t0, 40583
	sw $t0, -2056($fp)
	li $t0, 0
	lw $t1, -2056($fp)
	sub $t0, $t0, $t1
	sw $t0, -2060($fp)
	li $t0, 25959
	sw $t0, -2064($fp)
	li $t0, 0
	lw $t1, -2064($fp)
	sub $t0, $t0, $t1
	sw $t0, -2068($fp)
	lw $t0, -2060($fp)
	lw $t1, -2068($fp)
	add $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $t1, -2052($fp)
	lw $t2, -2072($fp)
	bgt $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -2024($fp)
label194:
	lw $ra, -4($fp)
	lw $v0, -2024($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label188
label187:
	li $t0, 12014
	sw $t0, -2076($fp)
	li $t0, 5252
	sw $t0, -2080($fp)
	lw $t0, -2076($fp)
	lw $t1, -2080($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2084($fp)
	li $t0, 0
	sw $t0, -2088($fp)
	li $t0, 11832
	sw $t0, -2092($fp)
	lw $t0, -264($fp)
	sw $t0, -2096($fp)
	lw $t0, -2092($fp)
	lw $t1, -2096($fp)
	sub $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $t0, -792($fp)
	sw $t0, -2104($fp)
	lw $t1, -2100($fp)
	lw $t2, -2104($fp)
	bne $t1, $t2, label195
	j label196
label195:
	li $t0, 1
	sw $t0, -2088($fp)
label196:
	li $t0, 22529
	sw $t0, -2108($fp)
	li $t0, 36939
	sw $t0, -2112($fp)
	lw $t0, -2108($fp)
	lw $t1, -2112($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2116($fp)
	li $t0, 0
	lw $t1, -2116($fp)
	sub $t0, $t0, $t1
	sw $t0, -2120($fp)
	addi $sp, $sp, -4
	lw $t0, -2084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2120($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2124($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -104
	sw $t0, -2128($fp)
	lw $t0, -1284($fp)
	sw $t0, -2132($fp)
	li $t0, 0
	sw $t0, -2136($fp)
	li $t0, 7268
	sw $t0, -2140($fp)
	lw $t1, -2140($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label197
label197:
	li $t0, 1
	sw $t0, -2136($fp)
label198:
	li $t0, 0
	sw $t0, -2144($fp)
	lw $t0, -192($fp)
	sw $t0, -2148($fp)
	lw $t1, -2148($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label199
label199:
	li $t0, 1
	sw $t0, -2144($fp)
label200:
	li $t0, 48142
	sw $t0, -2152($fp)
	lw $t0, -2144($fp)
	lw $t1, -2152($fp)
	mul $t0, $t0, $t1
	sw $t0, -2156($fp)
	addi $sp, $sp, -4
	lw $t0, -2132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2156($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2160($fp)
	addi $sp, $sp, 16
	li $t0, 4
	lw $t1, -2160($fp)
	mul $t0, $t0, $t1
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	lw $t1, -2128($fp)
	add $t0, $t0, $t1
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	lw $t1, 0($t0)
	sw $t1, -2172($fp)
	lw $t0, -2124($fp)
	lw $t1, -2172($fp)
	mul $t0, $t0, $t1
	sw $t0, -2176($fp)
	lw $ra, -4($fp)
	lw $v0, -2176($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label188:
label201:
	addi $t0, $fp, -8
	sw $t0, -2180($fp)
	li $t0, 0
	sw $t0, -2184($fp)
	li $t0, 4
	lw $t1, -2184($fp)
	mul $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	lw $t1, -2180($fp)
	add $t0, $t0, $t1
	sw $t0, -2192($fp)
	lw $t0, -2192($fp)
	lw $t1, 0($t0)
	sw $t1, -2196($fp)
	addi $t0, $fp, -16
	sw $t0, -2200($fp)
	lw $t0, -552($fp)
	sw $t0, -2204($fp)
	li $t0, 4
	lw $t1, -2204($fp)
	mul $t0, $t0, $t1
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	lw $t1, -2200($fp)
	add $t0, $t0, $t1
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	lw $t1, 0($t0)
	sw $t1, -2216($fp)
	lw $t0, -2196($fp)
	lw $t1, -2216($fp)
	mul $t0, $t0, $t1
	sw $t0, -2220($fp)
	lw $t1, -2220($fp)
	li $t2, 0
	bne $t1, $t2, label205
	j label204
label205:
	addi $t0, $fp, -144
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
	lw $t0, 4($fp)
	sw $t0, -2244($fp)
	lw $t0, -2240($fp)
	lw $t1, -2244($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2248($fp)
	lw $t1, -2248($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label204
label204:
	lw $t0, -792($fp)
	sw $t0, -2252($fp)
	li $t0, 39453
	sw $t0, -2256($fp)
	lw $t0, -2252($fp)
	lw $t1, -2256($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2260($fp)
	li $t0, 0
	lw $t1, -2260($fp)
	sub $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t1, -2264($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label203
label202:
	li $t0, 61126
	sw $t0, -2268($fp)
	lw $t0, -1284($fp)
	sw $t0, -2272($fp)
	lw $t0, -2268($fp)
	lw $t1, -2272($fp)
	sub $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -2280($fp)
	lw $t1, -2280($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label207
label206:
	lw $t0, -540($fp)
	sw $t0, -2284($fp)
	li $t0, 22541
	sw $t0, -2288($fp)
	lw $t0, -2284($fp)
	lw $t1, -2288($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2292($fp)
	li $t0, 0
	lw $t1, -2292($fp)
	sub $t0, $t0, $t1
	sw $t0, -2296($fp)
	li $t0, 56315
	sw $t0, -2300($fp)
	li $t0, 0
	sw $t0, -2304($fp)
	li $t0, 17356
	sw $t0, -2308($fp)
	li $t0, 16851
	sw $t0, -2312($fp)
	lw $t0, -2308($fp)
	lw $t1, -2312($fp)
	sub $t0, $t0, $t1
	sw $t0, -2316($fp)
	lw $t1, -2316($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label214
label214:
	li $t0, 61839
	sw $t0, -2320($fp)
	lw $t1, -2320($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label213
label212:
	li $t0, 1
	sw $t0, -2304($fp)
label213:
	li $t0, 0
	sw $t0, -2324($fp)
	li $t0, 17337
	sw $t0, -2328($fp)
	lw $t1, -2328($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label215
label217:
	li $t0, 47613
	sw $t0, -2332($fp)
	lw $t1, -2332($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label216
label215:
	li $t0, 1
	sw $t0, -2324($fp)
label216:
	li $t0, 0
	sw $t0, -2336($fp)
	lw $t0, -276($fp)
	sw $t0, -2340($fp)
	lw $t1, -2340($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label219
label220:
	li $t0, 52327
	sw $t0, -2344($fp)
	lw $t1, -2344($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label219
label218:
	li $t0, 1
	sw $t0, -2336($fp)
label219:
	addi $sp, $sp, -4
	lw $t0, -2304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2336($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2348($fp)
	addi $sp, $sp, 16
	lw $t0, -2300($fp)
	lw $t1, -2348($fp)
	sub $t0, $t0, $t1
	sw $t0, -2352($fp)
	lw $t1, -2296($fp)
	lw $t2, -2352($fp)
	bne $t1, $t2, label209
	j label210
label209:
	li $t0, 0
	sw $t0, -2356($fp)
	lw $t0, -516($fp)
	sw $t0, -2360($fp)
	lw $t0, -492($fp)
	sw $t0, -2364($fp)
	li $t0, 0
	lw $t1, -2364($fp)
	sub $t0, $t0, $t1
	sw $t0, -2368($fp)
	lw $t0, -1296($fp)
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -2376($fp)
	li $t0, 0
	sw $t0, -2380($fp)
	li $t0, 58921
	sw $t0, -2384($fp)
	li $t0, 1
	sw $t0, -2388($fp)
	lw $t0, -2384($fp)
	lw $t1, -2388($fp)
	mul $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t1, -2392($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label225
label225:
	li $t0, 51153
	sw $t0, -2396($fp)
	lw $t1, -2396($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label224
label223:
	li $t0, 1
	sw $t0, -2380($fp)
label224:
	li $t0, 0
	sw $t0, -2400($fp)
	li $t0, 19744
	sw $t0, -2404($fp)
	lw $t1, -2404($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label226
label226:
	li $t0, 1
	sw $t0, -2400($fp)
label227:
	li $t0, 12485
	sw $t0, -2408($fp)
	lw $t0, -2400($fp)
	lw $t1, -2408($fp)
	sub $t0, $t0, $t1
	sw $t0, -2412($fp)
	li $t0, 57736
	sw $t0, -2416($fp)
	addi $sp, $sp, -4
	lw $t0, -2380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2416($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2420($fp)
	addi $sp, $sp, 16
	li $t0, 3911
	sw $t0, -2424($fp)
	lw $t0, -2420($fp)
	lw $t1, -2424($fp)
	sub $t0, $t0, $t1
	sw $t0, -2428($fp)
	addi $sp, $sp, -4
	lw $t0, -2368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2428($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2432($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -2432($fp)
	sub $t0, $t0, $t1
	sw $t0, -2436($fp)
	lw $t0, -2360($fp)
	lw $t1, -2436($fp)
	mul $t0, $t0, $t1
	sw $t0, -2440($fp)
	li $t0, 0
	sw $t0, -2444($fp)
	lw $t0, -192($fp)
	sw $t0, -2448($fp)
	lw $t0, 4($fp)
	sw $t0, -2452($fp)
	lw $t0, -2448($fp)
	lw $t1, -2452($fp)
	sub $t0, $t0, $t1
	sw $t0, -2456($fp)
	lw $t0, -276($fp)
	sw $t0, -2460($fp)
	lw $t1, -2456($fp)
	lw $t2, -2460($fp)
	bgt $t1, $t2, label228
	j label229
label228:
	li $t0, 1
	sw $t0, -2444($fp)
label229:
	li $t0, 2798
	sw $t0, -2464($fp)
	li $t0, 26201
	sw $t0, -2468($fp)
	lw $t0, -2464($fp)
	lw $t1, -2468($fp)
	add $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t0, 12($fp)
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -2480($fp)
	addi $sp, $sp, -4
	lw $t0, -2444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2480($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2484($fp)
	addi $sp, $sp, 16
	lw $t1, -2440($fp)
	lw $t2, -2484($fp)
	bne $t1, $t2, label221
	j label222
label221:
	li $t0, 1
	sw $t0, -2356($fp)
label222:
	j label211
label210:
label230:
	addi $t0, $fp, -80
	sw $t0, -2488($fp)
	li $t0, 0
	sw $t0, -2492($fp)
	li $t0, 41702
	sw $t0, -2496($fp)
	li $t0, 37342
	sw $t0, -2500($fp)
	lw $t0, -2496($fp)
	lw $t1, -2500($fp)
	add $t0, $t0, $t1
	sw $t0, -2504($fp)
	li $t0, 2856
	sw $t0, -2508($fp)
	lw $t1, -2504($fp)
	lw $t2, -2508($fp)
	bne $t1, $t2, label233
	j label234
label233:
	li $t0, 1
	sw $t0, -2492($fp)
label234:
	li $t0, 0
	sw $t0, -2512($fp)
	li $t0, 0
	sw $t0, -2516($fp)
	lw $t0, -492($fp)
	sw $t0, -2520($fp)
	li $t0, 25327
	sw $t0, -2524($fp)
	lw $t1, -2520($fp)
	lw $t2, -2524($fp)
	ble $t1, $t2, label237
	j label238
label237:
	li $t0, 1
	sw $t0, -2516($fp)
label238:
	li $t0, 63140
	sw $t0, -2528($fp)
	lw $t1, -2516($fp)
	lw $t2, -2528($fp)
	bge $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -2512($fp)
label236:
	li $t0, 0
	sw $t0, -2532($fp)
	li $t0, 0
	sw $t0, -2536($fp)
	li $t0, 29870
	sw $t0, -2540($fp)
	lw $t1, -2540($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label241
label241:
	li $t0, 1
	sw $t0, -2536($fp)
label242:
	lw $t0, -492($fp)
	sw $t0, -2544($fp)
	lw $t1, -2536($fp)
	lw $t2, -2544($fp)
	bgt $t1, $t2, label239
	j label240
label239:
	li $t0, 1
	sw $t0, -2532($fp)
label240:
	addi $sp, $sp, -4
	lw $t0, -2492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2532($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2548($fp)
	addi $sp, $sp, 16
	li $t0, 4
	lw $t1, -2548($fp)
	mul $t0, $t0, $t1
	sw $t0, -2552($fp)
	lw $t0, -2552($fp)
	lw $t1, -2488($fp)
	add $t0, $t0, $t1
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	lw $t1, 0($t0)
	sw $t1, -2560($fp)
	lw $t1, -2560($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label231
label231:
	li $t0, 24309
	sw $t0, -2584($fp)
	addi $t0, $fp, -2580
	sw $t0, -2588($fp)
	li $t0, 0
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
	li $t0, 44610
	sw $t0, -2608($fp)
	addi $t0, $fp, -2580
	sw $t0, -2612($fp)
	li $t0, 1
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
	li $t0, 50070
	sw $t0, -2632($fp)
	addi $t0, $fp, -2580
	sw $t0, -2636($fp)
	li $t0, 2
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
	li $t0, 23722
	sw $t0, -2656($fp)
	addi $t0, $fp, -2580
	sw $t0, -2660($fp)
	li $t0, 3
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
	li $t0, 5214
	sw $t0, -2680($fp)
	addi $t0, $fp, -2580
	sw $t0, -2684($fp)
	li $t0, 4
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
	li $t0, 0
	sw $t0, -2704($fp)
	addi $t0, $fp, -160
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
	lw $t1, -2724($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label245
label247:
	lw $t0, -780($fp)
	sw $t0, -2728($fp)
	lw $t1, -2728($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label245
label246:
	lw $t0, -792($fp)
	sw $t0, -2732($fp)
	lw $t0, -252($fp)
	sw $t0, -2736($fp)
	lw $t0, -2732($fp)
	lw $t1, -2736($fp)
	sub $t0, $t0, $t1
	sw $t0, -2740($fp)
	lw $t0, -504($fp)
	sw $t0, -2744($fp)
	lw $t0, -2740($fp)
	lw $t1, -2744($fp)
	sub $t0, $t0, $t1
	sw $t0, -2748($fp)
	lw $t1, -2748($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label245
label245:
	li $t0, 0
	sw $t0, -2752($fp)
	li $t0, 805
	sw $t0, -2756($fp)
	lw $t1, -2756($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label248
label248:
	li $t0, 1
	sw $t0, -2752($fp)
label249:
	lw $t0, -792($fp)
	sw $t0, -2760($fp)
	lw $t0, -2752($fp)
	lw $t1, -2760($fp)
	mul $t0, $t0, $t1
	sw $t0, -2764($fp)
	addi $t0, $fp, -2580
	sw $t0, -2768($fp)
	lw $t0, -780($fp)
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
	lw $t1, -2764($fp)
	lw $t2, -2784($fp)
	bgt $t1, $t2, label243
	j label244
label243:
	li $t0, 1
	sw $t0, -2704($fp)
label244:
	j label230
label232:
label211:
	j label208
label207:
label250:
	lw $t0, -492($fp)
	sw $t0, -2788($fp)
	lw $t1, -2788($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label252
label253:
	lw $t0, -288($fp)
	sw $t0, -2792($fp)
	li $t0, 35658
	sw $t0, -2796($fp)
	lw $t0, -2792($fp)
	lw $t1, -2796($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2800($fp)
	lw $t0, -492($fp)
	sw $t0, -2804($fp)
	lw $t0, -2800($fp)
	lw $t1, -2804($fp)
	add $t0, $t0, $t1
	sw $t0, -2808($fp)
	li $t0, 53955
	sw $t0, -2812($fp)
	lw $t1, -2808($fp)
	lw $t2, -2812($fp)
	bge $t1, $t2, label251
	j label252
label251:
	li $t0, 0
	sw $t0, -2816($fp)
	li $t0, 53132
	sw $t0, -2820($fp)
	lw $t0, -276($fp)
	sw $t0, -2824($fp)
	lw $t0, -2820($fp)
	lw $t1, -2824($fp)
	mul $t0, $t0, $t1
	sw $t0, -2828($fp)
	li $t0, 52995
	sw $t0, -2832($fp)
	lw $t0, -2828($fp)
	lw $t1, -2832($fp)
	mul $t0, $t0, $t1
	sw $t0, -2836($fp)
	li $t0, 0
	lw $t1, -2836($fp)
	sub $t0, $t0, $t1
	sw $t0, -2840($fp)
	lw $t1, -2840($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label254
label254:
	li $t0, 1
	sw $t0, -2816($fp)
label255:
	li $t0, 0
	sw $t0, -2844($fp)
	addi $t0, $fp, -16
	sw $t0, -2848($fp)
	li $t0, 0
	sw $t0, -2852($fp)
	li $t0, 36032
	sw $t0, -2856($fp)
	lw $t0, -1284($fp)
	sw $t0, -2860($fp)
	lw $t1, -2856($fp)
	lw $t2, -2860($fp)
	blt $t1, $t2, label258
	j label259
label258:
	li $t0, 1
	sw $t0, -2852($fp)
label259:
	li $t0, 4
	lw $t1, -2852($fp)
	mul $t0, $t0, $t1
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	lw $t1, -2848($fp)
	add $t0, $t0, $t1
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	lw $t1, 0($t0)
	sw $t1, -2872($fp)
	lw $t1, -2872($fp)
	li $t2, 0
	bne $t1, $t2, label257
	j label256
label256:
	li $t0, 1
	sw $t0, -2844($fp)
label257:
	li $t0, 0
	lw $t1, -2844($fp)
	sub $t0, $t0, $t1
	sw $t0, -2876($fp)
	j label250
label252:
label208:
	j label201
label203:
	addi $t0, $fp, -8
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
	lw $t0, -192($fp)
	sw $t0, -2900($fp)
	lw $t0, -2900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -2904($fp)
	li $t0, 0
	sw $t0, -2908($fp)
	li $t0, 4
	lw $t1, -2908($fp)
	mul $t0, $t0, $t1
	sw $t0, -2912($fp)
	lw $t0, -2912($fp)
	lw $t1, -2904($fp)
	add $t0, $t0, $t1
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	lw $t1, 0($t0)
	sw $t1, -2920($fp)
	lw $t0, -2920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -2924($fp)
	li $t0, 1
	sw $t0, -2928($fp)
	li $t0, 4
	lw $t1, -2928($fp)
	mul $t0, $t0, $t1
	sw $t0, -2932($fp)
	lw $t0, -2932($fp)
	lw $t1, -2924($fp)
	add $t0, $t0, $t1
	sw $t0, -2936($fp)
	lw $t0, -2936($fp)
	lw $t1, 0($t0)
	sw $t1, -2940($fp)
	lw $t0, -2940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -252($fp)
	sw $t0, -2944($fp)
	lw $t0, -2944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -264($fp)
	sw $t0, -2948($fp)
	lw $t0, -2948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -276($fp)
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -2960($fp)
	li $t0, 0
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
	addi $t0, $fp, -48
	sw $t0, -2980($fp)
	li $t0, 1
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
	addi $t0, $fp, -48
	sw $t0, -3000($fp)
	li $t0, 2
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
	addi $t0, $fp, -48
	sw $t0, -3020($fp)
	li $t0, 3
	sw $t0, -3024($fp)
	li $t0, 4
	lw $t1, -3024($fp)
	mul $t0, $t0, $t1
	sw $t0, -3028($fp)
	lw $t0, -3028($fp)
	lw $t1, -3020($fp)
	add $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -3032($fp)
	lw $t1, 0($t0)
	sw $t1, -3036($fp)
	lw $t0, -3036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -3040($fp)
	li $t0, 4
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
	addi $t0, $fp, -48
	sw $t0, -3060($fp)
	li $t0, 5
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
	addi $t0, $fp, -48
	sw $t0, -3080($fp)
	li $t0, 6
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
	addi $t0, $fp, -48
	sw $t0, -3100($fp)
	li $t0, 7
	sw $t0, -3104($fp)
	li $t0, 4
	lw $t1, -3104($fp)
	mul $t0, $t0, $t1
	sw $t0, -3108($fp)
	lw $t0, -3108($fp)
	lw $t1, -3100($fp)
	add $t0, $t0, $t1
	sw $t0, -3112($fp)
	lw $t0, -3112($fp)
	lw $t1, 0($t0)
	sw $t1, -3116($fp)
	lw $t0, -3116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -3120($fp)
	lw $t0, -3120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -3132($fp)
	lw $t0, -3132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -3136($fp)
	lw $t0, -3136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -3140($fp)
	lw $t0, -3140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3144($fp)
	li $t0, 0
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
	lw $t0, -3160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3164($fp)
	li $t0, 1
	sw $t0, -3168($fp)
	li $t0, 4
	lw $t1, -3168($fp)
	mul $t0, $t0, $t1
	sw $t0, -3172($fp)
	lw $t0, -3172($fp)
	lw $t1, -3164($fp)
	add $t0, $t0, $t1
	sw $t0, -3176($fp)
	lw $t0, -3176($fp)
	lw $t1, 0($t0)
	sw $t1, -3180($fp)
	lw $t0, -3180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3184($fp)
	li $t0, 2
	sw $t0, -3188($fp)
	li $t0, 4
	lw $t1, -3188($fp)
	mul $t0, $t0, $t1
	sw $t0, -3192($fp)
	lw $t0, -3192($fp)
	lw $t1, -3184($fp)
	add $t0, $t0, $t1
	sw $t0, -3196($fp)
	lw $t0, -3196($fp)
	lw $t1, 0($t0)
	sw $t1, -3200($fp)
	lw $t0, -3200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3204($fp)
	li $t0, 3
	sw $t0, -3208($fp)
	li $t0, 4
	lw $t1, -3208($fp)
	mul $t0, $t0, $t1
	sw $t0, -3212($fp)
	lw $t0, -3212($fp)
	lw $t1, -3204($fp)
	add $t0, $t0, $t1
	sw $t0, -3216($fp)
	lw $t0, -3216($fp)
	lw $t1, 0($t0)
	sw $t1, -3220($fp)
	lw $t0, -3220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3224($fp)
	li $t0, 4
	sw $t0, -3228($fp)
	li $t0, 4
	lw $t1, -3228($fp)
	mul $t0, $t0, $t1
	sw $t0, -3232($fp)
	lw $t0, -3232($fp)
	lw $t1, -3224($fp)
	add $t0, $t0, $t1
	sw $t0, -3236($fp)
	lw $t0, -3236($fp)
	lw $t1, 0($t0)
	sw $t1, -3240($fp)
	lw $t0, -3240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3244($fp)
	li $t0, 5
	sw $t0, -3248($fp)
	li $t0, 4
	lw $t1, -3248($fp)
	mul $t0, $t0, $t1
	sw $t0, -3252($fp)
	lw $t0, -3252($fp)
	lw $t1, -3244($fp)
	add $t0, $t0, $t1
	sw $t0, -3256($fp)
	lw $t0, -3256($fp)
	lw $t1, 0($t0)
	sw $t1, -3260($fp)
	lw $t0, -3260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3264($fp)
	li $t0, 6
	sw $t0, -3268($fp)
	li $t0, 4
	lw $t1, -3268($fp)
	mul $t0, $t0, $t1
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	lw $t1, -3264($fp)
	add $t0, $t0, $t1
	sw $t0, -3276($fp)
	lw $t0, -3276($fp)
	lw $t1, 0($t0)
	sw $t1, -3280($fp)
	lw $t0, -3280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3284($fp)
	li $t0, 7
	sw $t0, -3288($fp)
	li $t0, 4
	lw $t1, -3288($fp)
	mul $t0, $t0, $t1
	sw $t0, -3292($fp)
	lw $t0, -3292($fp)
	lw $t1, -3284($fp)
	add $t0, $t0, $t1
	sw $t0, -3296($fp)
	lw $t0, -3296($fp)
	lw $t1, 0($t0)
	sw $t1, -3300($fp)
	lw $t0, -3300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -756($fp)
	sw $t0, -3304($fp)
	lw $t0, -3304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -768($fp)
	sw $t0, -3308($fp)
	lw $t0, -3308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -780($fp)
	sw $t0, -3312($fp)
	lw $t0, -3312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -792($fp)
	sw $t0, -3316($fp)
	lw $t0, -3316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3320($fp)
	li $t0, 0
	sw $t0, -3324($fp)
	li $t0, 4
	lw $t1, -3324($fp)
	mul $t0, $t0, $t1
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	lw $t1, -3320($fp)
	add $t0, $t0, $t1
	sw $t0, -3332($fp)
	lw $t0, -3332($fp)
	lw $t1, 0($t0)
	sw $t1, -3336($fp)
	lw $t0, -3336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3340($fp)
	li $t0, 1
	sw $t0, -3344($fp)
	li $t0, 4
	lw $t1, -3344($fp)
	mul $t0, $t0, $t1
	sw $t0, -3348($fp)
	lw $t0, -3348($fp)
	lw $t1, -3340($fp)
	add $t0, $t0, $t1
	sw $t0, -3352($fp)
	lw $t0, -3352($fp)
	lw $t1, 0($t0)
	sw $t1, -3356($fp)
	lw $t0, -3356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3360($fp)
	li $t0, 2
	sw $t0, -3364($fp)
	li $t0, 4
	lw $t1, -3364($fp)
	mul $t0, $t0, $t1
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	lw $t1, -3360($fp)
	add $t0, $t0, $t1
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	lw $t1, 0($t0)
	sw $t1, -3376($fp)
	lw $t0, -3376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3380($fp)
	li $t0, 3
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
	lw $t0, -3396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3400($fp)
	li $t0, 4
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
	addi $t0, $fp, -104
	sw $t0, -3420($fp)
	li $t0, 5
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
	addi $t0, $fp, -144
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
	lw $t0, -3456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3460($fp)
	li $t0, 1
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
	addi $t0, $fp, -144
	sw $t0, -3480($fp)
	li $t0, 2
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
	addi $t0, $fp, -144
	sw $t0, -3500($fp)
	li $t0, 3
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
	addi $t0, $fp, -144
	sw $t0, -3520($fp)
	li $t0, 4
	sw $t0, -3524($fp)
	li $t0, 4
	lw $t1, -3524($fp)
	mul $t0, $t0, $t1
	sw $t0, -3528($fp)
	lw $t0, -3528($fp)
	lw $t1, -3520($fp)
	add $t0, $t0, $t1
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	lw $t1, 0($t0)
	sw $t1, -3536($fp)
	lw $t0, -3536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3540($fp)
	li $t0, 5
	sw $t0, -3544($fp)
	li $t0, 4
	lw $t1, -3544($fp)
	mul $t0, $t0, $t1
	sw $t0, -3548($fp)
	lw $t0, -3548($fp)
	lw $t1, -3540($fp)
	add $t0, $t0, $t1
	sw $t0, -3552($fp)
	lw $t0, -3552($fp)
	lw $t1, 0($t0)
	sw $t1, -3556($fp)
	lw $t0, -3556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3560($fp)
	li $t0, 6
	sw $t0, -3564($fp)
	li $t0, 4
	lw $t1, -3564($fp)
	mul $t0, $t0, $t1
	sw $t0, -3568($fp)
	lw $t0, -3568($fp)
	lw $t1, -3560($fp)
	add $t0, $t0, $t1
	sw $t0, -3572($fp)
	lw $t0, -3572($fp)
	lw $t1, 0($t0)
	sw $t1, -3576($fp)
	lw $t0, -3576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3580($fp)
	li $t0, 7
	sw $t0, -3584($fp)
	li $t0, 4
	lw $t1, -3584($fp)
	mul $t0, $t0, $t1
	sw $t0, -3588($fp)
	lw $t0, -3588($fp)
	lw $t1, -3580($fp)
	add $t0, $t0, $t1
	sw $t0, -3592($fp)
	lw $t0, -3592($fp)
	lw $t1, 0($t0)
	sw $t1, -3596($fp)
	lw $t0, -3596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3600($fp)
	li $t0, 8
	sw $t0, -3604($fp)
	li $t0, 4
	lw $t1, -3604($fp)
	mul $t0, $t0, $t1
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	lw $t1, -3600($fp)
	add $t0, $t0, $t1
	sw $t0, -3612($fp)
	lw $t0, -3612($fp)
	lw $t1, 0($t0)
	sw $t1, -3616($fp)
	lw $t0, -3616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -144
	sw $t0, -3620($fp)
	li $t0, 9
	sw $t0, -3624($fp)
	li $t0, 4
	lw $t1, -3624($fp)
	mul $t0, $t0, $t1
	sw $t0, -3628($fp)
	lw $t0, -3628($fp)
	lw $t1, -3620($fp)
	add $t0, $t0, $t1
	sw $t0, -3632($fp)
	lw $t0, -3632($fp)
	lw $t1, 0($t0)
	sw $t1, -3636($fp)
	lw $t0, -3636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -3640($fp)
	li $t0, 0
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
	lw $t0, -3656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -3660($fp)
	li $t0, 1
	sw $t0, -3664($fp)
	li $t0, 4
	lw $t1, -3664($fp)
	mul $t0, $t0, $t1
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	lw $t1, -3660($fp)
	add $t0, $t0, $t1
	sw $t0, -3672($fp)
	lw $t0, -3672($fp)
	lw $t1, 0($t0)
	sw $t1, -3676($fp)
	lw $t0, -3676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -3680($fp)
	li $t0, 0
	sw $t0, -3684($fp)
	li $t0, 4
	lw $t1, -3684($fp)
	mul $t0, $t0, $t1
	sw $t0, -3688($fp)
	lw $t0, -3688($fp)
	lw $t1, -3680($fp)
	add $t0, $t0, $t1
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	lw $t1, 0($t0)
	sw $t1, -3696($fp)
	lw $t0, -3696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -3700($fp)
	li $t0, 1
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
	lw $t0, -3716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1284($fp)
	sw $t0, -3720($fp)
	lw $t0, -3720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1296($fp)
	sw $t0, -3724($fp)
	lw $t0, -3724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3728($fp)
	addi $t0, $fp, -160
	sw $t0, -3732($fp)
	li $t0, 1
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
	lw $t1, -3748($fp)
	li $t2, 0
	bne $t1, $t2, label262
	j label261
label262:
	lw $t0, 12($fp)
	sw $t0, -3752($fp)
	li $t0, 32336
	sw $t0, -3756($fp)
	lw $t1, -3752($fp)
	lw $t2, -3756($fp)
	bne $t1, $t2, label260
	j label261
label260:
	li $t0, 1
	sw $t0, -3728($fp)
label261:
	lw $t0, -3728($fp)
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -3760($fp)
	lw $ra, -4($fp)
	lw $v0, -3760($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -6720
	li $t0, 62689
	sw $t0, -96($fp)
	addi $t0, $fp, -36
	sw $t0, -100($fp)
	li $t0, 0
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
	li $t0, 24055
	sw $t0, -120($fp)
	addi $t0, $fp, -36
	sw $t0, -124($fp)
	li $t0, 1
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
	li $t0, 44821
	sw $t0, -144($fp)
	addi $t0, $fp, -36
	sw $t0, -148($fp)
	li $t0, 2
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
	li $t0, 56074
	sw $t0, -168($fp)
	addi $t0, $fp, -36
	sw $t0, -172($fp)
	li $t0, 3
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
	li $t0, 381
	sw $t0, -192($fp)
	addi $t0, $fp, -36
	sw $t0, -196($fp)
	li $t0, 4
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
	li $t0, 30438
	sw $t0, -216($fp)
	addi $t0, $fp, -36
	sw $t0, -220($fp)
	li $t0, 5
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
	li $t0, 59985
	sw $t0, -240($fp)
	addi $t0, $fp, -36
	sw $t0, -244($fp)
	li $t0, 6
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
	li $t0, 3179
	sw $t0, -264($fp)
	addi $t0, $fp, -36
	sw $t0, -268($fp)
	li $t0, 7
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
	li $t0, 56639
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	li $t0, 24320
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	li $t0, 28507
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	li $t0, 54243
	sw $t0, -324($fp)
	addi $t0, $fp, -64
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
	li $t0, 486
	sw $t0, -348($fp)
	addi $t0, $fp, -64
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
	li $t0, 313
	sw $t0, -372($fp)
	addi $t0, $fp, -64
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
	li $t0, 57100
	sw $t0, -396($fp)
	addi $t0, $fp, -64
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
	li $t0, 24795
	sw $t0, -420($fp)
	addi $t0, $fp, -64
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
	li $t0, 44923
	sw $t0, -444($fp)
	addi $t0, $fp, -64
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
	li $t0, 41634
	sw $t0, -468($fp)
	addi $t0, $fp, -64
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
	li $t0, 48518
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	li $t0, 50138
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	li $t0, 54752
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	li $t0, 46158
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	li $t0, 50943
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	li $t0, 24874
	sw $t0, -552($fp)
	addi $t0, $fp, -92
	sw $t0, -556($fp)
	li $t0, 0
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
	li $t0, 34577
	sw $t0, -576($fp)
	addi $t0, $fp, -92
	sw $t0, -580($fp)
	li $t0, 1
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
	li $t0, 38539
	sw $t0, -600($fp)
	addi $t0, $fp, -92
	sw $t0, -604($fp)
	li $t0, 2
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
	li $t0, 12334
	sw $t0, -624($fp)
	addi $t0, $fp, -92
	sw $t0, -628($fp)
	li $t0, 3
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
	li $t0, 5073
	sw $t0, -648($fp)
	addi $t0, $fp, -92
	sw $t0, -652($fp)
	li $t0, 4
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
	li $t0, 43492
	sw $t0, -672($fp)
	addi $t0, $fp, -92
	sw $t0, -676($fp)
	li $t0, 5
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
	li $t0, 16645
	sw $t0, -696($fp)
	addi $t0, $fp, -92
	sw $t0, -700($fp)
	li $t0, 6
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
	li $t0, 37409
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	addi $t0, $fp, -36
	sw $t0, -732($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -752($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -772($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -792($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -812($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -832($fp)
	li $t0, 5
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
	addi $t0, $fp, -36
	sw $t0, -852($fp)
	li $t0, 6
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
	addi $t0, $fp, -36
	sw $t0, -872($fp)
	li $t0, 7
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
	lw $t0, -292($fp)
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
	sw $t0, -984($fp)
	li $t0, 4
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
	addi $t0, $fp, -64
	sw $t0, -1004($fp)
	li $t0, 5
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
	addi $t0, $fp, -64
	sw $t0, -1024($fp)
	li $t0, 6
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
	lw $t0, -496($fp)
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -532($fp)
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -544($fp)
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
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
	addi $t0, $fp, -92
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
	addi $t0, $fp, -92
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
	addi $t0, $fp, -92
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
	addi $t0, $fp, -92
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
	addi $t0, $fp, -92
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
	addi $t0, $fp, -92
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
	lw $t0, -724($fp)
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1208($fp)
	li $t0, 0
	sw $t0, -1212($fp)
	li $t0, 0
	sw $t0, -1216($fp)
	lw $t0, -532($fp)
	sw $t0, -1220($fp)
	lw $t1, -1220($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label267
label267:
	li $t0, 1
	sw $t0, -1216($fp)
label268:
	li $t0, 26944
	sw $t0, -1224($fp)
	li $t0, 50439
	sw $t0, -1228($fp)
	lw $t0, -1224($fp)
	lw $t1, -1228($fp)
	sub $t0, $t0, $t1
	sw $t0, -1232($fp)
	li $t0, 0
	sw $t0, -1236($fp)
	lw $t0, -316($fp)
	sw $t0, -1240($fp)
	li $t0, 7232
	sw $t0, -1244($fp)
	lw $t0, -1240($fp)
	lw $t1, -1244($fp)
	add $t0, $t0, $t1
	sw $t0, -1248($fp)
	lw $t0, -292($fp)
	sw $t0, -1252($fp)
	lw $t1, -1248($fp)
	lw $t2, -1252($fp)
	bne $t1, $t2, label269
	j label270
label269:
	li $t0, 1
	sw $t0, -1236($fp)
label270:
	li $t0, 0
	sw $t0, -1256($fp)
	li $t0, 0
	sw $t0, -1260($fp)
	lw $t0, -508($fp)
	sw $t0, -1264($fp)
	li $t0, 38236
	sw $t0, -1268($fp)
	lw $t1, -1264($fp)
	lw $t2, -1268($fp)
	blt $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -1260($fp)
label274:
	lw $t0, -292($fp)
	sw $t0, -1272($fp)
	lw $t1, -1260($fp)
	lw $t2, -1272($fp)
	beq $t1, $t2, label271
	j label272
label271:
	li $t0, 1
	sw $t0, -1256($fp)
label272:
	li $t0, 0
	sw $t0, -1276($fp)
	li $t0, 25632
	sw $t0, -1280($fp)
	lw $t1, -1280($fp)
	li $t2, 0
	bne $t1, $t2, label276
	j label275
label275:
	li $t0, 1
	sw $t0, -1276($fp)
label276:
	li $t0, 44261
	sw $t0, -1284($fp)
	lw $t0, -1276($fp)
	lw $t1, -1284($fp)
	sub $t0, $t0, $t1
	sw $t0, -1288($fp)
	li $t0, 0
	sw $t0, -1292($fp)
	lw $t0, -496($fp)
	sw $t0, -1296($fp)
	li $t0, 0
	lw $t1, -1296($fp)
	sub $t0, $t0, $t1
	sw $t0, -1300($fp)
	lw $t1, -1300($fp)
	li $t2, 0
	bne $t1, $t2, label278
	j label277
label277:
	li $t0, 1
	sw $t0, -1292($fp)
label278:
	li $t0, 47133
	sw $t0, -1304($fp)
	addi $sp, $sp, -4
	lw $t0, -1256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1304($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1308($fp)
	addi $sp, $sp, 20
	li $t0, 49952
	sw $t0, -1312($fp)
	lw $t0, -1308($fp)
	lw $t1, -1312($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1316($fp)
	li $t0, 41082
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -1324($fp)
	li $t0, 0
	sw $t0, -1328($fp)
	li $t0, 40700
	sw $t0, -1332($fp)
	li $t0, 16694
	sw $t0, -1336($fp)
	lw $t0, -1332($fp)
	lw $t1, -1336($fp)
	sub $t0, $t0, $t1
	sw $t0, -1340($fp)
	li $t0, 31183
	sw $t0, -1344($fp)
	lw $t1, -1340($fp)
	lw $t2, -1344($fp)
	beq $t1, $t2, label279
	j label280
label279:
	li $t0, 1
	sw $t0, -1328($fp)
label280:
	li $t0, 0
	sw $t0, -1348($fp)
	li $t0, 40645
	sw $t0, -1352($fp)
	lw $t1, -1352($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label281
label281:
	li $t0, 1
	sw $t0, -1348($fp)
label282:
	lw $t0, -520($fp)
	sw $t0, -1356($fp)
	lw $t0, -1348($fp)
	lw $t1, -1356($fp)
	mul $t0, $t0, $t1
	sw $t0, -1360($fp)
	addi $sp, $sp, -4
	lw $t0, -1324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1360($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1364($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -1364($fp)
	sub $t0, $t0, $t1
	sw $t0, -1368($fp)
	addi $sp, $sp, -4
	lw $t0, -1232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1368($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1372($fp)
	addi $sp, $sp, 20
	lw $t1, -1216($fp)
	lw $t2, -1372($fp)
	bgt $t1, $t2, label265
	j label266
label265:
	li $t0, 1
	sw $t0, -1212($fp)
label266:
	addi $t0, $fp, -64
	sw $t0, -1376($fp)
	li $t0, 0
	sw $t0, -1380($fp)
	li $t0, 7545
	sw $t0, -1384($fp)
	lw $t1, -1384($fp)
	li $t2, 0
	bne $t1, $t2, label285
	j label284
label285:
	li $t0, 18508
	sw $t0, -1388($fp)
	lw $t1, -1388($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label284
label283:
	li $t0, 1
	sw $t0, -1380($fp)
label284:
	li $t0, 4
	lw $t1, -1380($fp)
	mul $t0, $t0, $t1
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	lw $t1, -1376($fp)
	add $t0, $t0, $t1
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	lw $t1, 0($t0)
	sw $t1, -1400($fp)
	lw $t1, -1212($fp)
	lw $t2, -1400($fp)
	bge $t1, $t2, label263
	j label264
label263:
	li $t0, 1
	sw $t0, -1208($fp)
label264:
	lw $ra, -4($fp)
	lw $v0, -1208($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label286:
	addi $t0, $fp, -92
	sw $t0, -1404($fp)
	addi $t0, $fp, -36
	sw $t0, -1408($fp)
	lw $t0, -304($fp)
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
	li $t0, 4
	lw $t1, -1424($fp)
	mul $t0, $t0, $t1
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	lw $t1, -1404($fp)
	add $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	lw $t1, 0($t0)
	sw $t1, -1436($fp)
	li $t0, 9698
	sw $t0, -1440($fp)
	lw $t1, -1436($fp)
	lw $t2, -1440($fp)
	blt $t1, $t2, label287
	j label288
label287:
	li $t0, 52469
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -1524($fp)
	li $t0, 60142
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	sw $t0, -1536($fp)
	li $t0, 58216
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -1548($fp)
	li $t0, 37071
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	sw $t0, -1560($fp)
	li $t0, 49358
	sw $t0, -1564($fp)
	addi $t0, $fp, -1472
	sw $t0, -1568($fp)
	li $t0, 0
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
	li $t0, 38838
	sw $t0, -1588($fp)
	addi $t0, $fp, -1472
	sw $t0, -1592($fp)
	li $t0, 1
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
	li $t0, 22478
	sw $t0, -1612($fp)
	addi $t0, $fp, -1472
	sw $t0, -1616($fp)
	li $t0, 2
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
	li $t0, 8697
	sw $t0, -1636($fp)
	addi $t0, $fp, -1472
	sw $t0, -1640($fp)
	li $t0, 3
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
	li $t0, 7879
	sw $t0, -1660($fp)
	addi $t0, $fp, -1472
	sw $t0, -1664($fp)
	li $t0, 4
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $t0, -1664($fp)
	lw $t1, -1672($fp)
	add $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t0, -1660($fp)
	lw $t1, -1676($fp)
	sw $t0, 0($t1)
	lw $t0, -1676($fp)
	lw $t1, 0($t0)
	sw $t1, -1680($fp)
	li $t0, 61017
	sw $t0, -1684($fp)
	addi $t0, $fp, -1472
	sw $t0, -1688($fp)
	li $t0, 5
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
	li $t0, 21031
	sw $t0, -1708($fp)
	addi $t0, $fp, -1472
	sw $t0, -1712($fp)
	li $t0, 6
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
	li $t0, 12953
	sw $t0, -1732($fp)
	addi $t0, $fp, -1472
	sw $t0, -1736($fp)
	li $t0, 7
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
	li $t0, 38973
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	sw $t0, -1764($fp)
	li $t0, 37676
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -1776($fp)
	li $t0, 50362
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	sw $t0, -1788($fp)
	li $t0, 14082
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	sw $t0, -1800($fp)
	li $t0, 12840
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -1812($fp)
	li $t0, 1521
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -1824($fp)
	li $t0, 45265
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	sw $t0, -1836($fp)
	li $t0, 53922
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	sw $t0, -1848($fp)
	li $t0, 48654
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	sw $t0, -1860($fp)
	li $t0, 5362
	sw $t0, -1864($fp)
	addi $t0, $fp, -1484
	sw $t0, -1868($fp)
	li $t0, 0
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
	li $t0, 32648
	sw $t0, -1888($fp)
	addi $t0, $fp, -1484
	sw $t0, -1892($fp)
	li $t0, 1
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
	li $t0, 21354
	sw $t0, -1912($fp)
	addi $t0, $fp, -1484
	sw $t0, -1916($fp)
	li $t0, 2
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
	li $t0, 55314
	sw $t0, -1936($fp)
	addi $t0, $fp, -1512
	sw $t0, -1940($fp)
	li $t0, 0
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
	li $t0, 39880
	sw $t0, -1960($fp)
	addi $t0, $fp, -1512
	sw $t0, -1964($fp)
	li $t0, 1
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
	li $t0, 48298
	sw $t0, -1984($fp)
	addi $t0, $fp, -1512
	sw $t0, -1988($fp)
	li $t0, 2
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
	li $t0, 40217
	sw $t0, -2008($fp)
	addi $t0, $fp, -1512
	sw $t0, -2012($fp)
	li $t0, 3
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
	li $t0, 47426
	sw $t0, -2032($fp)
	addi $t0, $fp, -1512
	sw $t0, -2036($fp)
	li $t0, 4
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
	li $t0, 1270
	sw $t0, -2056($fp)
	addi $t0, $fp, -1512
	sw $t0, -2060($fp)
	li $t0, 5
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
	li $t0, 49916
	sw $t0, -2080($fp)
	addi $t0, $fp, -1512
	sw $t0, -2084($fp)
	li $t0, 6
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
	li $t0, 34359
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	sw $t0, -2112($fp)
	li $t0, 61413
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	sw $t0, -2124($fp)
	li $t0, 42596
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	sw $t0, -2136($fp)
	li $t0, 5894
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	sw $t0, -2148($fp)
	li $t0, 45235
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	sw $t0, -2160($fp)
	li $t0, 15899
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	sw $t0, -2172($fp)
	li $t0, 28372
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	sw $t0, -2184($fp)
	li $t0, 53932
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	sw $t0, -2192($fp)
	lw $t0, -2192($fp)
	sw $t0, -2196($fp)
	li $t0, 23778
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	sw $t0, -2204($fp)
	lw $t0, -2204($fp)
	sw $t0, -2208($fp)
	li $t0, 23853
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	sw $t0, -2220($fp)
	lw $t0, 12($fp)
	sw $t0, -2224($fp)
	addi $t0, $fp, -1472
	sw $t0, -2228($fp)
	lw $t0, -1772($fp)
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
	li $t0, 21558
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	sw $t0, -2252($fp)
	li $t0, 0
	sw $t0, -2256($fp)
	lw $t0, -1844($fp)
	sw $t0, -2260($fp)
	lw $t1, -2260($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label291
label292:
	li $t0, 62827
	sw $t0, -2264($fp)
	lw $t1, -2264($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label291
label291:
	li $t0, 47103
	sw $t0, -2268($fp)
	lw $t1, -2268($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label290
label289:
	li $t0, 1
	sw $t0, -2256($fp)
label290:
	li $t0, 0
	sw $t0, -2272($fp)
	li $t0, 9427
	sw $t0, -2276($fp)
	li $t0, 36731
	sw $t0, -2280($fp)
	lw $t0, -2276($fp)
	lw $t1, -2280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2284($fp)
	lw $t0, -724($fp)
	sw $t0, -2288($fp)
	lw $t1, -2284($fp)
	lw $t2, -2288($fp)
	blt $t1, $t2, label293
	j label294
label293:
	li $t0, 1
	sw $t0, -2272($fp)
label294:
	addi $sp, $sp, -4
	lw $t0, -2244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2272($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2292($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -2296($fp)
	lw $t0, -1820($fp)
	sw $t0, -2300($fp)
	lw $t1, -2300($fp)
	li $t2, 0
	bne $t1, $t2, label296
	j label295
label295:
	li $t0, 1
	sw $t0, -2296($fp)
label296:
	lw $t0, -2292($fp)
	lw $t1, -2296($fp)
	sub $t0, $t0, $t1
	sw $t0, -2304($fp)
	li $t0, 11373
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	sw $t0, -2376($fp)
	lw $t0, -2376($fp)
	sw $t0, -2380($fp)
	li $t0, 59944
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	sw $t0, -2392($fp)
	li $t0, 23079
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	sw $t0, -2404($fp)
	li $t0, 56639
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	sw $t0, -2416($fp)
	li $t0, 48330
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	sw $t0, -2424($fp)
	lw $t0, -2424($fp)
	sw $t0, -2428($fp)
	li $t0, 6197
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	sw $t0, -2440($fp)
	li $t0, 62001
	sw $t0, -2444($fp)
	addi $t0, $fp, -2336
	sw $t0, -2448($fp)
	li $t0, 0
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
	li $t0, 15442
	sw $t0, -2468($fp)
	addi $t0, $fp, -2336
	sw $t0, -2472($fp)
	li $t0, 1
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2480($fp)
	lw $t0, -2472($fp)
	lw $t1, -2480($fp)
	add $t0, $t0, $t1
	sw $t0, -2484($fp)
	lw $t0, -2468($fp)
	lw $t1, -2484($fp)
	sw $t0, 0($t1)
	lw $t0, -2484($fp)
	lw $t1, 0($t0)
	sw $t1, -2488($fp)
	li $t0, 27551
	sw $t0, -2492($fp)
	addi $t0, $fp, -2336
	sw $t0, -2496($fp)
	li $t0, 2
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
	li $t0, 51779
	sw $t0, -2516($fp)
	addi $t0, $fp, -2336
	sw $t0, -2520($fp)
	li $t0, 3
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
	li $t0, 55323
	sw $t0, -2540($fp)
	addi $t0, $fp, -2336
	sw $t0, -2544($fp)
	li $t0, 4
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
	li $t0, 10314
	sw $t0, -2564($fp)
	addi $t0, $fp, -2336
	sw $t0, -2568($fp)
	li $t0, 5
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
	li $t0, 26461
	sw $t0, -2588($fp)
	addi $t0, $fp, -2336
	sw $t0, -2592($fp)
	li $t0, 6
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
	li $t0, 37213
	sw $t0, -2612($fp)
	addi $t0, $fp, -2336
	sw $t0, -2616($fp)
	li $t0, 7
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t0, -2616($fp)
	lw $t1, -2624($fp)
	add $t0, $t0, $t1
	sw $t0, -2628($fp)
	lw $t0, -2612($fp)
	lw $t1, -2628($fp)
	sw $t0, 0($t1)
	lw $t0, -2628($fp)
	lw $t1, 0($t0)
	sw $t1, -2632($fp)
	li $t0, 11584
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	sw $t0, -2644($fp)
	li $t0, 10841
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	sw $t0, -2656($fp)
	li $t0, 6036
	sw $t0, -2660($fp)
	addi $t0, $fp, -2368
	sw $t0, -2664($fp)
	li $t0, 0
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2672($fp)
	lw $t0, -2664($fp)
	lw $t1, -2672($fp)
	add $t0, $t0, $t1
	sw $t0, -2676($fp)
	lw $t0, -2660($fp)
	lw $t1, -2676($fp)
	sw $t0, 0($t1)
	lw $t0, -2676($fp)
	lw $t1, 0($t0)
	sw $t1, -2680($fp)
	li $t0, 7461
	sw $t0, -2684($fp)
	addi $t0, $fp, -2368
	sw $t0, -2688($fp)
	li $t0, 1
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
	li $t0, 53437
	sw $t0, -2708($fp)
	addi $t0, $fp, -2368
	sw $t0, -2712($fp)
	li $t0, 2
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
	li $t0, 11930
	sw $t0, -2732($fp)
	addi $t0, $fp, -2368
	sw $t0, -2736($fp)
	li $t0, 3
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
	li $t0, 52697
	sw $t0, -2756($fp)
	addi $t0, $fp, -2368
	sw $t0, -2760($fp)
	li $t0, 4
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
	li $t0, 3800
	sw $t0, -2780($fp)
	addi $t0, $fp, -2368
	sw $t0, -2784($fp)
	li $t0, 5
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
	li $t0, 40302
	sw $t0, -2804($fp)
	addi $t0, $fp, -2368
	sw $t0, -2808($fp)
	li $t0, 6
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
	li $t0, 41093
	sw $t0, -2828($fp)
	addi $t0, $fp, -2368
	sw $t0, -2832($fp)
	li $t0, 7
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
	li $t0, 27579
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	sw $t0, -2860($fp)
	li $t0, 64155
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	sw $t0, -2872($fp)
	li $t0, 50521
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	sw $t0, -2884($fp)
	li $t0, 0
	sw $t0, -2888($fp)
	li $t0, 20332
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -2896($fp)
	li $t0, 61446
	sw $t0, -2900($fp)
	li $t0, 32088
	sw $t0, -2904($fp)
	lw $t0, -2900($fp)
	lw $t1, -2904($fp)
	sub $t0, $t0, $t1
	sw $t0, -2908($fp)
	li $t0, 0
	sw $t0, -2912($fp)
	li $t0, 64310
	sw $t0, -2916($fp)
	lw $t1, -2916($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label302
label302:
	li $t0, 1
	sw $t0, -2912($fp)
label303:
	lw $t0, -1856($fp)
	sw $t0, -2920($fp)
	lw $t0, -2912($fp)
	lw $t1, -2920($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2924($fp)
	addi $sp, $sp, -4
	lw $t0, -2896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2924($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2928($fp)
	addi $sp, $sp, 16
	lw $t1, -2928($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label300
label300:
	li $t0, 1
	sw $t0, -2888($fp)
label301:
	addi $t0, $fp, -92
	sw $t0, -2932($fp)
	li $t0, 0
	sw $t0, -2936($fp)
	li $t0, 7284
	sw $t0, -2940($fp)
	lw $t0, -496($fp)
	sw $t0, -2944($fp)
	lw $t1, -2940($fp)
	lw $t2, -2944($fp)
	bne $t1, $t2, label304
	j label305
label304:
	li $t0, 1
	sw $t0, -2936($fp)
label305:
	li $t0, 4
	lw $t1, -2936($fp)
	mul $t0, $t0, $t1
	sw $t0, -2948($fp)
	lw $t0, -2948($fp)
	lw $t1, -2932($fp)
	add $t0, $t0, $t1
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	lw $t1, 0($t0)
	sw $t1, -2956($fp)
	lw $t0, -2888($fp)
	lw $t1, -2956($fp)
	mul $t0, $t0, $t1
	sw $t0, -2960($fp)
	lw $t1, -2960($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label298
label297:
	li $t0, 26496
	sw $t0, -2964($fp)
	li $t0, 43411
	sw $t0, -2968($fp)
	lw $t0, -2964($fp)
	lw $t1, -2968($fp)
	add $t0, $t0, $t1
	sw $t0, -2972($fp)
	li $t0, 11624
	sw $t0, -2976($fp)
	li $t0, 0
	lw $t1, -2976($fp)
	sub $t0, $t0, $t1
	sw $t0, -2980($fp)
	li $t0, 46631
	sw $t0, -2984($fp)
	lw $t0, -2980($fp)
	lw $t1, -2984($fp)
	sub $t0, $t0, $t1
	sw $t0, -2988($fp)
	li $t0, 0
	sw $t0, -2992($fp)
	li $t0, 60388
	sw $t0, -2996($fp)
	li $t0, 24733
	sw $t0, -3000($fp)
	lw $t0, -2996($fp)
	lw $t1, -3000($fp)
	add $t0, $t0, $t1
	sw $t0, -3004($fp)
	lw $t1, -3004($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label307
label308:
	lw $t0, -508($fp)
	sw $t0, -3008($fp)
	lw $t1, -3008($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label307
label306:
	li $t0, 1
	sw $t0, -2992($fp)
label307:
	li $t0, 49608
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	sw $t0, -3016($fp)
	addi $t0, $fp, -2368
	sw $t0, -3020($fp)
	li $t0, 3
	sw $t0, -3024($fp)
	li $t0, 4
	lw $t1, -3024($fp)
	mul $t0, $t0, $t1
	sw $t0, -3028($fp)
	lw $t0, -3028($fp)
	lw $t1, -3020($fp)
	add $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -3032($fp)
	lw $t1, 0($t0)
	sw $t1, -3036($fp)
	li $t0, 0
	lw $t1, -3036($fp)
	sub $t0, $t0, $t1
	sw $t0, -3040($fp)
	addi $sp, $sp, -4
	lw $t0, -2988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3040($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3044($fp)
	addi $sp, $sp, 20
	lw $t0, -2972($fp)
	lw $t1, -3044($fp)
	sub $t0, $t0, $t1
	sw $t0, -3048($fp)
	j label299
label298:
	li $t0, 0
	sw $t0, -3052($fp)
	li $t0, 0
	sw $t0, -3056($fp)
	li $t0, 14520
	sw $t0, -3060($fp)
	lw $t1, -3060($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label311
label311:
	li $t0, 1
	sw $t0, -3056($fp)
label312:
	li $t0, 0
	lw $t1, -3056($fp)
	sub $t0, $t0, $t1
	sw $t0, -3064($fp)
	li $t0, 0
	sw $t0, -3068($fp)
	lw $t0, -304($fp)
	sw $t0, -3072($fp)
	lw $t1, -3072($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label313
label313:
	li $t0, 1
	sw $t0, -3068($fp)
label314:
	lw $t1, -3064($fp)
	lw $t2, -3068($fp)
	bne $t1, $t2, label309
	j label310
label309:
	li $t0, 1
	sw $t0, -3052($fp)
label310:
label299:
	lw $t0, -2376($fp)
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2388($fp)
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2400($fp)
	sw $t0, -3084($fp)
	lw $t0, -3084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2412($fp)
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2424($fp)
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2436($fp)
	sw $t0, -3096($fp)
	lw $t0, -3096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2336
	sw $t0, -3100($fp)
	li $t0, 0
	sw $t0, -3104($fp)
	li $t0, 4
	lw $t1, -3104($fp)
	mul $t0, $t0, $t1
	sw $t0, -3108($fp)
	lw $t0, -3108($fp)
	lw $t1, -3100($fp)
	add $t0, $t0, $t1
	sw $t0, -3112($fp)
	lw $t0, -3112($fp)
	lw $t1, 0($t0)
	sw $t1, -3116($fp)
	lw $t0, -3116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2336
	sw $t0, -3120($fp)
	li $t0, 1
	sw $t0, -3124($fp)
	li $t0, 4
	lw $t1, -3124($fp)
	mul $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	lw $t1, -3120($fp)
	add $t0, $t0, $t1
	sw $t0, -3132($fp)
	lw $t0, -3132($fp)
	lw $t1, 0($t0)
	sw $t1, -3136($fp)
	lw $t0, -3136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2336
	sw $t0, -3140($fp)
	li $t0, 2
	sw $t0, -3144($fp)
	li $t0, 4
	lw $t1, -3144($fp)
	mul $t0, $t0, $t1
	sw $t0, -3148($fp)
	lw $t0, -3148($fp)
	lw $t1, -3140($fp)
	add $t0, $t0, $t1
	sw $t0, -3152($fp)
	lw $t0, -3152($fp)
	lw $t1, 0($t0)
	sw $t1, -3156($fp)
	lw $t0, -3156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2336
	sw $t0, -3160($fp)
	li $t0, 3
	sw $t0, -3164($fp)
	li $t0, 4
	lw $t1, -3164($fp)
	mul $t0, $t0, $t1
	sw $t0, -3168($fp)
	lw $t0, -3168($fp)
	lw $t1, -3160($fp)
	add $t0, $t0, $t1
	sw $t0, -3172($fp)
	lw $t0, -3172($fp)
	lw $t1, 0($t0)
	sw $t1, -3176($fp)
	lw $t0, -3176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2336
	sw $t0, -3180($fp)
	li $t0, 4
	sw $t0, -3184($fp)
	li $t0, 4
	lw $t1, -3184($fp)
	mul $t0, $t0, $t1
	sw $t0, -3188($fp)
	lw $t0, -3188($fp)
	lw $t1, -3180($fp)
	add $t0, $t0, $t1
	sw $t0, -3192($fp)
	lw $t0, -3192($fp)
	lw $t1, 0($t0)
	sw $t1, -3196($fp)
	lw $t0, -3196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2336
	sw $t0, -3200($fp)
	li $t0, 5
	sw $t0, -3204($fp)
	li $t0, 4
	lw $t1, -3204($fp)
	mul $t0, $t0, $t1
	sw $t0, -3208($fp)
	lw $t0, -3208($fp)
	lw $t1, -3200($fp)
	add $t0, $t0, $t1
	sw $t0, -3212($fp)
	lw $t0, -3212($fp)
	lw $t1, 0($t0)
	sw $t1, -3216($fp)
	lw $t0, -3216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2336
	sw $t0, -3220($fp)
	li $t0, 6
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
	lw $t0, -3236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2336
	sw $t0, -3240($fp)
	li $t0, 7
	sw $t0, -3244($fp)
	li $t0, 4
	lw $t1, -3244($fp)
	mul $t0, $t0, $t1
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	lw $t1, -3240($fp)
	add $t0, $t0, $t1
	sw $t0, -3252($fp)
	lw $t0, -3252($fp)
	lw $t1, 0($t0)
	sw $t1, -3256($fp)
	lw $t0, -3256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2640($fp)
	sw $t0, -3260($fp)
	lw $t0, -3260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2652($fp)
	sw $t0, -3264($fp)
	lw $t0, -3264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2368
	sw $t0, -3268($fp)
	li $t0, 0
	sw $t0, -3272($fp)
	li $t0, 4
	lw $t1, -3272($fp)
	mul $t0, $t0, $t1
	sw $t0, -3276($fp)
	lw $t0, -3276($fp)
	lw $t1, -3268($fp)
	add $t0, $t0, $t1
	sw $t0, -3280($fp)
	lw $t0, -3280($fp)
	lw $t1, 0($t0)
	sw $t1, -3284($fp)
	lw $t0, -3284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2368
	sw $t0, -3288($fp)
	li $t0, 1
	sw $t0, -3292($fp)
	li $t0, 4
	lw $t1, -3292($fp)
	mul $t0, $t0, $t1
	sw $t0, -3296($fp)
	lw $t0, -3296($fp)
	lw $t1, -3288($fp)
	add $t0, $t0, $t1
	sw $t0, -3300($fp)
	lw $t0, -3300($fp)
	lw $t1, 0($t0)
	sw $t1, -3304($fp)
	lw $t0, -3304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2368
	sw $t0, -3308($fp)
	li $t0, 2
	sw $t0, -3312($fp)
	li $t0, 4
	lw $t1, -3312($fp)
	mul $t0, $t0, $t1
	sw $t0, -3316($fp)
	lw $t0, -3316($fp)
	lw $t1, -3308($fp)
	add $t0, $t0, $t1
	sw $t0, -3320($fp)
	lw $t0, -3320($fp)
	lw $t1, 0($t0)
	sw $t1, -3324($fp)
	lw $t0, -3324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2368
	sw $t0, -3328($fp)
	li $t0, 3
	sw $t0, -3332($fp)
	li $t0, 4
	lw $t1, -3332($fp)
	mul $t0, $t0, $t1
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	lw $t1, -3328($fp)
	add $t0, $t0, $t1
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	lw $t1, 0($t0)
	sw $t1, -3344($fp)
	lw $t0, -3344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2368
	sw $t0, -3348($fp)
	li $t0, 4
	sw $t0, -3352($fp)
	li $t0, 4
	lw $t1, -3352($fp)
	mul $t0, $t0, $t1
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	lw $t1, -3348($fp)
	add $t0, $t0, $t1
	sw $t0, -3360($fp)
	lw $t0, -3360($fp)
	lw $t1, 0($t0)
	sw $t1, -3364($fp)
	lw $t0, -3364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2368
	sw $t0, -3368($fp)
	li $t0, 5
	sw $t0, -3372($fp)
	li $t0, 4
	lw $t1, -3372($fp)
	mul $t0, $t0, $t1
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	lw $t1, -3368($fp)
	add $t0, $t0, $t1
	sw $t0, -3380($fp)
	lw $t0, -3380($fp)
	lw $t1, 0($t0)
	sw $t1, -3384($fp)
	lw $t0, -3384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2368
	sw $t0, -3388($fp)
	li $t0, 6
	sw $t0, -3392($fp)
	li $t0, 4
	lw $t1, -3392($fp)
	mul $t0, $t0, $t1
	sw $t0, -3396($fp)
	lw $t0, -3396($fp)
	lw $t1, -3388($fp)
	add $t0, $t0, $t1
	sw $t0, -3400($fp)
	lw $t0, -3400($fp)
	lw $t1, 0($t0)
	sw $t1, -3404($fp)
	lw $t0, -3404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2368
	sw $t0, -3408($fp)
	li $t0, 7
	sw $t0, -3412($fp)
	li $t0, 4
	lw $t1, -3412($fp)
	mul $t0, $t0, $t1
	sw $t0, -3416($fp)
	lw $t0, -3416($fp)
	lw $t1, -3408($fp)
	add $t0, $t0, $t1
	sw $t0, -3420($fp)
	lw $t0, -3420($fp)
	lw $t1, 0($t0)
	sw $t1, -3424($fp)
	lw $t0, -3424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2856($fp)
	sw $t0, -3428($fp)
	lw $t0, -3428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2868($fp)
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2880($fp)
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3440($fp)
	lw $t0, -2144($fp)
	sw $t0, -3444($fp)
	li $t0, 0
	lw $t1, -3444($fp)
	sub $t0, $t0, $t1
	sw $t0, -3448($fp)
	li $t0, 0
	lw $t1, -3448($fp)
	sub $t0, $t0, $t1
	sw $t0, -3452($fp)
	li $t0, 0
	sw $t0, -3456($fp)
	lw $t0, -2856($fp)
	sw $t0, -3460($fp)
	lw $t0, -316($fp)
	sw $t0, -3464($fp)
	lw $t0, -3460($fp)
	lw $t1, -3464($fp)
	add $t0, $t0, $t1
	sw $t0, -3468($fp)
	lw $t0, -2868($fp)
	sw $t0, -3472($fp)
	lw $t1, -3468($fp)
	lw $t2, -3472($fp)
	beq $t1, $t2, label317
	j label318
label317:
	li $t0, 1
	sw $t0, -3456($fp)
label318:
	li $t0, 0
	sw $t0, -3476($fp)
	lw $t0, -1832($fp)
	sw $t0, -3480($fp)
	lw $t0, -304($fp)
	sw $t0, -3484($fp)
	lw $t0, -3480($fp)
	lw $t1, -3484($fp)
	mul $t0, $t0, $t1
	sw $t0, -3488($fp)
	li $t0, 21938
	sw $t0, -3492($fp)
	lw $t1, -3488($fp)
	lw $t2, -3492($fp)
	bgt $t1, $t2, label319
	j label320
label319:
	li $t0, 1
	sw $t0, -3476($fp)
label320:
	li $t0, 0
	sw $t0, -3496($fp)
	lw $t0, -2640($fp)
	sw $t0, -3500($fp)
	lw $t0, -2652($fp)
	sw $t0, -3504($fp)
	lw $t0, -3500($fp)
	lw $t1, -3504($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3508($fp)
	lw $t0, -1844($fp)
	sw $t0, -3512($fp)
	lw $t1, -3508($fp)
	lw $t2, -3512($fp)
	ble $t1, $t2, label321
	j label322
label321:
	li $t0, 1
	sw $t0, -3496($fp)
label322:
	addi $t0, $fp, -2336
	sw $t0, -3516($fp)
	lw $t0, -2412($fp)
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
	addi $sp, $sp, -4
	lw $t0, -3456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3532($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3536($fp)
	addi $sp, $sp, 20
	lw $t0, -3452($fp)
	lw $t1, -3536($fp)
	sub $t0, $t0, $t1
	sw $t0, -3540($fp)
	lw $t0, -2156($fp)
	sw $t0, -3544($fp)
	lw $t0, -3540($fp)
	lw $t1, -3544($fp)
	add $t0, $t0, $t1
	sw $t0, -3548($fp)
	li $t0, 7556
	sw $t0, -3552($fp)
	addi $t0, $fp, -2336
	sw $t0, -3556($fp)
	li $t0, 2
	sw $t0, -3560($fp)
	li $t0, 4
	lw $t1, -3560($fp)
	mul $t0, $t0, $t1
	sw $t0, -3564($fp)
	lw $t0, -3564($fp)
	lw $t1, -3556($fp)
	add $t0, $t0, $t1
	sw $t0, -3568($fp)
	lw $t0, -3568($fp)
	lw $t1, 0($t0)
	sw $t1, -3572($fp)
	lw $t0, -3552($fp)
	lw $t1, -3572($fp)
	add $t0, $t0, $t1
	sw $t0, -3576($fp)
	lw $t1, -3548($fp)
	lw $t2, -3576($fp)
	bgt $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -3440($fp)
label316:
	lw $ra, -4($fp)
	lw $v0, -3440($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label323:
	li $t0, 0
	sw $t0, -3580($fp)
	li $t0, 0
	sw $t0, -3584($fp)
	li $t0, 4163
	sw $t0, -3588($fp)
	lw $t1, -3588($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label329
label328:
	li $t0, 1
	sw $t0, -3584($fp)
label329:
	li $t0, 0
	sw $t0, -3592($fp)
	li $t0, 57769
	sw $t0, -3596($fp)
	lw $t1, -3596($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label331
label333:
	li $t0, 40984
	sw $t0, -3600($fp)
	lw $t1, -3600($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label331
label332:
	li $t0, 6299
	sw $t0, -3604($fp)
	lw $t1, -3604($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label331
label330:
	li $t0, 1
	sw $t0, -3592($fp)
label331:
	li $t0, 18397
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	sw $t0, -3612($fp)
	addi $sp, $sp, -4
	lw $t0, -3584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3612($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3616($fp)
	addi $sp, $sp, 16
	lw $t1, -3616($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label326
label326:
	li $t0, 1
	sw $t0, -3580($fp)
label327:
	li $t0, 0
	sw $t0, -3620($fp)
	li $t0, 0
	sw $t0, -3624($fp)
	lw $t0, -2120($fp)
	sw $t0, -3628($fp)
	lw $t0, -2436($fp)
	sw $t0, -3632($fp)
	lw $t1, -3628($fp)
	lw $t2, -3632($fp)
	blt $t1, $t2, label336
	j label337
label336:
	li $t0, 1
	sw $t0, -3624($fp)
label337:
	lw $t0, -304($fp)
	sw $t0, -3636($fp)
	lw $t1, -3624($fp)
	lw $t2, -3636($fp)
	bne $t1, $t2, label334
	j label335
label334:
	li $t0, 1
	sw $t0, -3620($fp)
label335:
	lw $t0, -2168($fp)
	sw $t0, -3640($fp)
	lw $t0, -3640($fp)
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	sw $t0, -3644($fp)
	li $t0, 0
	sw $t0, -3648($fp)
	li $t0, 44465
	sw $t0, -3652($fp)
	li $t0, 3702
	sw $t0, -3656($fp)
	lw $t0, -3652($fp)
	lw $t1, -3656($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3660($fp)
	lw $t1, -3660($fp)
	li $t2, 0
	bne $t1, $t2, label338
	j label340
label340:
	lw $t0, -2180($fp)
	sw $t0, -3664($fp)
	lw $t1, -3664($fp)
	li $t2, 0
	bne $t1, $t2, label338
	j label339
label338:
	li $t0, 1
	sw $t0, -3648($fp)
label339:
	li $t0, 0
	sw $t0, -3668($fp)
	lw $t0, -2144($fp)
	sw $t0, -3672($fp)
	li $t0, 28145
	sw $t0, -3676($fp)
	lw $t0, -3672($fp)
	lw $t1, -3676($fp)
	add $t0, $t0, $t1
	sw $t0, -3680($fp)
	lw $t1, -3680($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label342
label343:
	li $t0, 10099
	sw $t0, -3684($fp)
	lw $t1, -3684($fp)
	li $t2, 0
	bne $t1, $t2, label341
	j label342
label341:
	li $t0, 1
	sw $t0, -3668($fp)
label342:
	addi $sp, $sp, -4
	lw $t0, -3620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3668($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3688($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -92
	sw $t0, -3692($fp)
	li $t0, 1
	sw $t0, -3696($fp)
	li $t0, 4
	lw $t1, -3696($fp)
	mul $t0, $t0, $t1
	sw $t0, -3700($fp)
	lw $t0, -3700($fp)
	lw $t1, -3692($fp)
	add $t0, $t0, $t1
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	lw $t1, 0($t0)
	sw $t1, -3708($fp)
	lw $t0, -3688($fp)
	lw $t1, -3708($fp)
	sub $t0, $t0, $t1
	sw $t0, -3712($fp)
	lw $t1, -3580($fp)
	lw $t2, -3712($fp)
	beq $t1, $t2, label324
	j label325
label324:
	li $t0, 0
	sw $t0, -3716($fp)
	li $t0, 54223
	sw $t0, -3720($fp)
	lw $t1, -3720($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label344
label344:
	li $t0, 1
	sw $t0, -3716($fp)
label345:
	addi $t0, $fp, -92
	sw $t0, -3724($fp)
	li $t0, 0
	sw $t0, -3728($fp)
	li $t0, 0
	sw $t0, -3732($fp)
	li $t0, 38995
	sw $t0, -3736($fp)
	lw $t0, -2144($fp)
	sw $t0, -3740($fp)
	lw $t0, -3736($fp)
	lw $t1, -3740($fp)
	add $t0, $t0, $t1
	sw $t0, -3744($fp)
	lw $t1, -3744($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label349
label350:
	li $t0, 20776
	sw $t0, -3748($fp)
	lw $t1, -3748($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label349
label348:
	li $t0, 1
	sw $t0, -3732($fp)
label349:
	li $t0, 0
	sw $t0, -3752($fp)
	li $t0, 36453
	sw $t0, -3756($fp)
	lw $t1, -3756($fp)
	li $t2, 0
	bne $t1, $t2, label352
	j label351
label351:
	li $t0, 1
	sw $t0, -3752($fp)
label352:
	lw $t0, -2168($fp)
	sw $t0, -3760($fp)
	lw $t0, -3760($fp)
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	sw $t0, -3764($fp)
	addi $sp, $sp, -4
	lw $t0, -3732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3764($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3768($fp)
	addi $sp, $sp, 16
	lw $t0, -1844($fp)
	sw $t0, -3772($fp)
	li $t0, 56785
	sw $t0, -3776($fp)
	lw $t0, -3772($fp)
	lw $t1, -3776($fp)
	mul $t0, $t0, $t1
	sw $t0, -3780($fp)
	lw $t1, -3768($fp)
	lw $t2, -3780($fp)
	blt $t1, $t2, label346
	j label347
label346:
	li $t0, 1
	sw $t0, -3728($fp)
label347:
	li $t0, 4
	lw $t1, -3728($fp)
	mul $t0, $t0, $t1
	sw $t0, -3784($fp)
	lw $t0, -3784($fp)
	lw $t1, -3724($fp)
	add $t0, $t0, $t1
	sw $t0, -3788($fp)
	lw $t0, -3788($fp)
	lw $t1, 0($t0)
	sw $t1, -3792($fp)
	j label323
label325:
label353:
	li $t0, 0
	sw $t0, -3796($fp)
	lw $t0, -1856($fp)
	sw $t0, -3800($fp)
	lw $t1, -3800($fp)
	li $t2, 0
	bne $t1, $t2, label358
	j label356
label358:
	lw $t0, -2204($fp)
	sw $t0, -3804($fp)
	lw $t1, -3804($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label357
label356:
	li $t0, 1
	sw $t0, -3796($fp)
label357:
	addi $t0, $fp, -64
	sw $t0, -3808($fp)
	lw $t0, -1820($fp)
	sw $t0, -3812($fp)
	li $t0, 4
	lw $t1, -3812($fp)
	mul $t0, $t0, $t1
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	lw $t1, -3808($fp)
	add $t0, $t0, $t1
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	lw $t1, 0($t0)
	sw $t1, -3824($fp)
	lw $t0, -304($fp)
	sw $t0, -3828($fp)
	lw $t0, -3824($fp)
	lw $t1, -3828($fp)
	add $t0, $t0, $t1
	sw $t0, -3832($fp)
	lw $t0, -1784($fp)
	sw $t0, -3836($fp)
	lw $t0, -3836($fp)
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	sw $t0, -3840($fp)
	addi $t0, $fp, -92
	sw $t0, -3844($fp)
	li $t0, 3
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
	addi $sp, $sp, -4
	lw $t0, -3796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3860($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3864($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -2368
	sw $t0, -3868($fp)
	lw $t0, -2180($fp)
	sw $t0, -3872($fp)
	li $t0, 34661
	sw $t0, -3876($fp)
	lw $t0, -3872($fp)
	lw $t1, -3876($fp)
	mul $t0, $t0, $t1
	sw $t0, -3880($fp)
	li $t0, 4
	lw $t1, -3880($fp)
	mul $t0, $t0, $t1
	sw $t0, -3884($fp)
	lw $t0, -3884($fp)
	lw $t1, -3868($fp)
	add $t0, $t0, $t1
	sw $t0, -3888($fp)
	lw $t0, -3888($fp)
	lw $t1, 0($t0)
	sw $t1, -3892($fp)
	lw $t0, -3864($fp)
	lw $t1, -3892($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3896($fp)
	lw $t1, -3896($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label355
label354:
	li $t0, 44666
	sw $t0, -3900($fp)
	addi $t0, $fp, -36
	sw $t0, -3904($fp)
	li $t0, 56563
	sw $t0, -3908($fp)
	li $t0, 18733
	sw $t0, -3912($fp)
	lw $t0, -3908($fp)
	lw $t1, -3912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3916($fp)
	li $t0, 4
	lw $t1, -3916($fp)
	mul $t0, $t0, $t1
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	lw $t1, -3904($fp)
	add $t0, $t0, $t1
	sw $t0, -3924($fp)
	lw $t0, -3924($fp)
	lw $t1, 0($t0)
	sw $t1, -3928($fp)
	lw $t0, -3900($fp)
	lw $t1, -3928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3932($fp)
	lw $t1, -3932($fp)
	li $t2, 0
	bne $t1, $t2, label359
	j label360
label359:
	li $t0, 39518
	sw $t0, -3936($fp)
	lw $t0, -1784($fp)
	sw $t0, -3940($fp)
	li $t0, 0
	lw $t1, -3940($fp)
	sub $t0, $t0, $t1
	sw $t0, -3944($fp)
	lw $t1, -3936($fp)
	lw $t2, -3944($fp)
	beq $t1, $t2, label366
	j label365
label366:
	li $t0, 15761
	sw $t0, -3948($fp)
	li $t0, 0
	lw $t1, -3948($fp)
	sub $t0, $t0, $t1
	sw $t0, -3952($fp)
	lw $t1, -3952($fp)
	li $t2, 0
	bne $t1, $t2, label362
	j label365
label365:
	li $t0, 0
	sw $t0, -3956($fp)
	li $t0, 16479
	sw $t0, -3960($fp)
	lw $t0, -2652($fp)
	sw $t0, -3964($fp)
	lw $t0, -3960($fp)
	lw $t1, -3964($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3968($fp)
	lw $t1, -3968($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label369
label369:
	li $t0, 20282
	sw $t0, -3972($fp)
	lw $t1, -3972($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label368
label367:
	li $t0, 1
	sw $t0, -3956($fp)
label368:
	addi $t0, $fp, -92
	sw $t0, -3976($fp)
	li $t0, 5
	sw $t0, -3980($fp)
	li $t0, 4
	lw $t1, -3980($fp)
	mul $t0, $t0, $t1
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	lw $t1, -3976($fp)
	add $t0, $t0, $t1
	sw $t0, -3988($fp)
	lw $t0, -3988($fp)
	lw $t1, 0($t0)
	sw $t1, -3992($fp)
	li $t0, 0
	sw $t0, -3996($fp)
	lw $t0, -2132($fp)
	sw $t0, -4000($fp)
	li $t0, 20614
	sw $t0, -4004($fp)
	lw $t0, -4000($fp)
	lw $t1, -4004($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4008($fp)
	li $t0, 30281
	sw $t0, -4012($fp)
	lw $t1, -4008($fp)
	lw $t2, -4012($fp)
	beq $t1, $t2, label370
	j label371
label370:
	li $t0, 1
	sw $t0, -3996($fp)
label371:
	li $t0, 30357
	sw $t0, -4016($fp)
	lw $t0, -4016($fp)
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	sw $t0, -4020($fp)
	addi $sp, $sp, -4
	lw $t0, -3956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4020($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4024($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -64
	sw $t0, -4028($fp)
	li $t0, 3
	sw $t0, -4032($fp)
	li $t0, 4
	lw $t1, -4032($fp)
	mul $t0, $t0, $t1
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	lw $t1, -4028($fp)
	add $t0, $t0, $t1
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	lw $t1, 0($t0)
	sw $t1, -4044($fp)
	lw $t0, -4024($fp)
	lw $t1, -4044($fp)
	add $t0, $t0, $t1
	sw $t0, -4048($fp)
	lw $t1, -4048($fp)
	li $t2, 0
	bne $t1, $t2, label362
	j label363
label362:
	li $t0, 0
	sw $t0, -4052($fp)
	li $t0, 0
	sw $t0, -4056($fp)
	li $t0, 61266
	sw $t0, -4060($fp)
	lw $t1, -4060($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label374
label374:
	li $t0, 1
	sw $t0, -4056($fp)
label375:
	lw $t0, -2204($fp)
	sw $t0, -4064($fp)
	lw $t1, -4056($fp)
	lw $t2, -4064($fp)
	bne $t1, $t2, label372
	j label373
label372:
	li $t0, 1
	sw $t0, -4052($fp)
label373:
	j label364
label363:
	addi $t0, $fp, -36
	sw $t0, -4068($fp)
	li $t0, 0
	sw $t0, -4072($fp)
	li $t0, 0
	sw $t0, -4076($fp)
	li $t0, 52867
	sw $t0, -4080($fp)
	lw $t0, -1520($fp)
	sw $t0, -4084($fp)
	lw $t1, -4080($fp)
	lw $t2, -4084($fp)
	blt $t1, $t2, label378
	j label379
label378:
	li $t0, 1
	sw $t0, -4076($fp)
label379:
	li $t0, 0
	sw $t0, -4088($fp)
	lw $t0, -508($fp)
	sw $t0, -4092($fp)
	lw $t1, -4092($fp)
	li $t2, 0
	bne $t1, $t2, label381
	j label380
label380:
	li $t0, 1
	sw $t0, -4088($fp)
label381:
	lw $t1, -4076($fp)
	lw $t2, -4088($fp)
	ble $t1, $t2, label376
	j label377
label376:
	li $t0, 1
	sw $t0, -4072($fp)
label377:
	li $t0, 4
	lw $t1, -4072($fp)
	mul $t0, $t0, $t1
	sw $t0, -4096($fp)
	lw $t0, -4096($fp)
	lw $t1, -4068($fp)
	add $t0, $t0, $t1
	sw $t0, -4100($fp)
	lw $t0, -4100($fp)
	lw $t1, 0($t0)
	sw $t1, -4104($fp)
label364:
	j label361
label360:
	li $t0, 0
	sw $t0, -4108($fp)
	li $t0, 0
	sw $t0, -4112($fp)
	addi $t0, $fp, -2368
	sw $t0, -4116($fp)
	lw $t0, -1760($fp)
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
	li $t0, 0
	lw $t1, -4132($fp)
	sub $t0, $t0, $t1
	sw $t0, -4136($fp)
	lw $t1, -4136($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label384
label384:
	li $t0, 1
	sw $t0, -4112($fp)
label385:
	li $t0, 0
	sw $t0, -4140($fp)
	li $t0, 12876
	sw $t0, -4144($fp)
	lw $t1, -4144($fp)
	li $t2, 0
	bne $t1, $t2, label386
	j label387
label386:
	li $t0, 1
	sw $t0, -4140($fp)
label387:
	lw $t0, -4112($fp)
	lw $t1, -4140($fp)
	add $t0, $t0, $t1
	sw $t0, -4148($fp)
	li $t0, 0
	sw $t0, -4152($fp)
	lw $t0, -2388($fp)
	sw $t0, -4156($fp)
	lw $t1, -4156($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label389
label390:
	lw $t0, -304($fp)
	sw $t0, -4160($fp)
	lw $t1, -4160($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label389
label388:
	li $t0, 1
	sw $t0, -4152($fp)
label389:
	li $t0, 0
	sw $t0, -4164($fp)
	li $t0, 0
	sw $t0, -4168($fp)
	li $t0, 23875
	sw $t0, -4172($fp)
	lw $t0, -2204($fp)
	sw $t0, -4176($fp)
	lw $t1, -4172($fp)
	lw $t2, -4176($fp)
	bge $t1, $t2, label393
	j label394
label393:
	li $t0, 1
	sw $t0, -4168($fp)
label394:
	lw $t0, -724($fp)
	sw $t0, -4180($fp)
	lw $t1, -4168($fp)
	lw $t2, -4180($fp)
	bge $t1, $t2, label391
	j label392
label391:
	li $t0, 1
	sw $t0, -4164($fp)
label392:
	li $t0, 0
	sw $t0, -4184($fp)
	lw $t0, -1772($fp)
	sw $t0, -4188($fp)
	lw $t1, -4188($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label395
label395:
	li $t0, 1
	sw $t0, -4184($fp)
label396:
	addi $sp, $sp, -4
	lw $t0, -4152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4184($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4192($fp)
	addi $sp, $sp, 16
	lw $t1, -4148($fp)
	lw $t2, -4192($fp)
	blt $t1, $t2, label382
	j label383
label382:
	li $t0, 1
	sw $t0, -4108($fp)
label383:
label361:
	j label353
label355:
label397:
	li $t0, 0
	sw $t0, -4196($fp)
	li $t0, 0
	sw $t0, -4200($fp)
	li $t0, 16265
	sw $t0, -4204($fp)
	lw $t1, -4204($fp)
	li $t2, 0
	bne $t1, $t2, label403
	j label402
label402:
	li $t0, 1
	sw $t0, -4200($fp)
label403:
	li $t0, 0
	lw $t1, -4200($fp)
	sub $t0, $t0, $t1
	sw $t0, -4208($fp)
	li $t0, 0
	sw $t0, -4212($fp)
	lw $t0, -2400($fp)
	sw $t0, -4216($fp)
	li $t0, 34890
	sw $t0, -4220($fp)
	lw $t0, -4216($fp)
	lw $t1, -4220($fp)
	add $t0, $t0, $t1
	sw $t0, -4224($fp)
	lw $t0, 8($fp)
	sw $t0, -4228($fp)
	lw $t1, -4224($fp)
	lw $t2, -4228($fp)
	beq $t1, $t2, label404
	j label405
label404:
	li $t0, 1
	sw $t0, -4212($fp)
label405:
	li $t0, 0
	sw $t0, -4232($fp)
	li $t0, 27577
	sw $t0, -4236($fp)
	lw $t0, -292($fp)
	sw $t0, -4240($fp)
	lw $t1, -4236($fp)
	lw $t2, -4240($fp)
	beq $t1, $t2, label408
	j label407
label408:
	li $t0, 35109
	sw $t0, -4244($fp)
	lw $t1, -4244($fp)
	li $t2, 0
	bne $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -4232($fp)
label407:
	addi $sp, $sp, -4
	lw $t0, -4208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4232($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4248($fp)
	addi $sp, $sp, 16
	lw $t1, -4248($fp)
	li $t2, 0
	bne $t1, $t2, label401
	j label400
label400:
	li $t0, 1
	sw $t0, -4196($fp)
label401:
	li $t0, 0
	sw $t0, -4252($fp)
	lw $t0, -1808($fp)
	sw $t0, -4256($fp)
	li $t0, 57341
	sw $t0, -4260($fp)
	lw $t0, -4256($fp)
	lw $t1, -4260($fp)
	mul $t0, $t0, $t1
	sw $t0, -4264($fp)
	lw $t0, -2424($fp)
	sw $t0, -4268($fp)
	lw $t1, -4264($fp)
	lw $t2, -4268($fp)
	blt $t1, $t2, label409
	j label410
label409:
	li $t0, 1
	sw $t0, -4252($fp)
label410:
	li $t0, 62966
	sw $t0, -4272($fp)
	lw $t0, -1784($fp)
	sw $t0, -4276($fp)
	lw $t0, -4272($fp)
	lw $t1, -4276($fp)
	mul $t0, $t0, $t1
	sw $t0, -4280($fp)
	li $t0, 0
	lw $t1, -4280($fp)
	sub $t0, $t0, $t1
	sw $t0, -4284($fp)
	addi $sp, $sp, -4
	lw $t0, -4196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4284($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4288($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -4292($fp)
	lw $t0, -2132($fp)
	sw $t0, -4296($fp)
	li $t0, 31936
	sw $t0, -4300($fp)
	lw $t0, -4296($fp)
	lw $t1, -4300($fp)
	sub $t0, $t0, $t1
	sw $t0, -4304($fp)
	lw $t1, -4304($fp)
	li $t2, 0
	bne $t1, $t2, label413
	j label412
label413:
	lw $t0, -2376($fp)
	sw $t0, -4308($fp)
	lw $t1, -4308($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label412
label411:
	li $t0, 1
	sw $t0, -4292($fp)
label412:
	li $t0, 0
	sw $t0, -4312($fp)
	lw $t0, -316($fp)
	sw $t0, -4316($fp)
	li $t0, 54629
	sw $t0, -4320($fp)
	lw $t0, -4316($fp)
	lw $t1, -4320($fp)
	add $t0, $t0, $t1
	sw $t0, -4324($fp)
	lw $t1, -4324($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label415
label416:
	li $t0, 18777
	sw $t0, -4328($fp)
	lw $t1, -4328($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -4312($fp)
label415:
	li $t0, 0
	sw $t0, -4332($fp)
	li $t0, 8350
	sw $t0, -4336($fp)
	li $t0, 37041
	sw $t0, -4340($fp)
	lw $t0, -4336($fp)
	lw $t1, -4340($fp)
	sub $t0, $t0, $t1
	sw $t0, -4344($fp)
	lw $t1, -4344($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label418
label419:
	li $t0, 62811
	sw $t0, -4348($fp)
	lw $t1, -4348($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label418
label417:
	li $t0, 1
	sw $t0, -4332($fp)
label418:
	li $t0, 0
	sw $t0, -4352($fp)
	li $t0, 0
	sw $t0, -4356($fp)
	lw $t0, 12($fp)
	sw $t0, -4360($fp)
	lw $t1, -4360($fp)
	li $t2, 0
	bne $t1, $t2, label423
	j label422
label422:
	li $t0, 1
	sw $t0, -4356($fp)
label423:
	li $t0, 6026
	sw $t0, -4364($fp)
	lw $t1, -4356($fp)
	lw $t2, -4364($fp)
	beq $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -4352($fp)
label421:
	addi $sp, $sp, -4
	lw $t0, -4292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4352($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4368($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -4368($fp)
	sub $t0, $t0, $t1
	sw $t0, -4372($fp)
	lw $t1, -4288($fp)
	lw $t2, -4372($fp)
	bge $t1, $t2, label398
	j label399
label398:
label424:
	li $t0, 33760
	sw $t0, -4376($fp)
	li $t0, 0
	lw $t1, -4376($fp)
	sub $t0, $t0, $t1
	sw $t0, -4380($fp)
	li $t0, 0
	lw $t1, -4380($fp)
	sub $t0, $t0, $t1
	sw $t0, -4384($fp)
	li $t0, 0
	lw $t1, -4384($fp)
	sub $t0, $t0, $t1
	sw $t0, -4388($fp)
	lw $t0, -4388($fp)
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	sw $t0, -4392($fp)
	lw $t1, -4392($fp)
	li $t2, 0
	bne $t1, $t2, label425
	j label426
label425:
	lw $t0, -1532($fp)
	sw $t0, -4396($fp)
	li $t0, 0
	sw $t0, -4400($fp)
	lw $t0, -304($fp)
	sw $t0, -4404($fp)
	lw $t1, -4404($fp)
	li $t2, 0
	bne $t1, $t2, label428
	j label427
label427:
	li $t0, 1
	sw $t0, -4400($fp)
label428:
	lw $t0, -4396($fp)
	lw $t1, -4400($fp)
	mul $t0, $t0, $t1
	sw $t0, -4408($fp)
	lw $t0, -1520($fp)
	sw $t0, -4412($fp)
	li $t0, 0
	lw $t1, -4412($fp)
	sub $t0, $t0, $t1
	sw $t0, -4416($fp)
	lw $t0, -4408($fp)
	lw $t1, -4416($fp)
	mul $t0, $t0, $t1
	sw $t0, -4420($fp)
	li $t0, 0
	lw $t1, -4420($fp)
	sub $t0, $t0, $t1
	sw $t0, -4424($fp)
	j label424
label426:
	j label397
label399:
	lw $t0, -2376($fp)
	sw $t0, -4428($fp)
	lw $t0, -4428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2388($fp)
	sw $t0, -4432($fp)
	lw $t0, -4432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2400($fp)
	sw $t0, -4436($fp)
	lw $t0, -4436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2412($fp)
	sw $t0, -4440($fp)
	lw $t0, -4440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2424($fp)
	sw $t0, -4444($fp)
	lw $t0, -4444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2436($fp)
	sw $t0, -4448($fp)
	lw $t0, -4448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2336
	sw $t0, -4452($fp)
	li $t0, 0
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
	lw $t0, -4468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2336
	sw $t0, -4472($fp)
	li $t0, 1
	sw $t0, -4476($fp)
	li $t0, 4
	lw $t1, -4476($fp)
	mul $t0, $t0, $t1
	sw $t0, -4480($fp)
	lw $t0, -4480($fp)
	lw $t1, -4472($fp)
	add $t0, $t0, $t1
	sw $t0, -4484($fp)
	lw $t0, -4484($fp)
	lw $t1, 0($t0)
	sw $t1, -4488($fp)
	lw $t0, -4488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2336
	sw $t0, -4492($fp)
	li $t0, 2
	sw $t0, -4496($fp)
	li $t0, 4
	lw $t1, -4496($fp)
	mul $t0, $t0, $t1
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	lw $t1, -4492($fp)
	add $t0, $t0, $t1
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	lw $t1, 0($t0)
	sw $t1, -4508($fp)
	lw $t0, -4508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2336
	sw $t0, -4512($fp)
	li $t0, 3
	sw $t0, -4516($fp)
	li $t0, 4
	lw $t1, -4516($fp)
	mul $t0, $t0, $t1
	sw $t0, -4520($fp)
	lw $t0, -4520($fp)
	lw $t1, -4512($fp)
	add $t0, $t0, $t1
	sw $t0, -4524($fp)
	lw $t0, -4524($fp)
	lw $t1, 0($t0)
	sw $t1, -4528($fp)
	lw $t0, -4528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2336
	sw $t0, -4532($fp)
	li $t0, 4
	sw $t0, -4536($fp)
	li $t0, 4
	lw $t1, -4536($fp)
	mul $t0, $t0, $t1
	sw $t0, -4540($fp)
	lw $t0, -4540($fp)
	lw $t1, -4532($fp)
	add $t0, $t0, $t1
	sw $t0, -4544($fp)
	lw $t0, -4544($fp)
	lw $t1, 0($t0)
	sw $t1, -4548($fp)
	lw $t0, -4548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2336
	sw $t0, -4552($fp)
	li $t0, 5
	sw $t0, -4556($fp)
	li $t0, 4
	lw $t1, -4556($fp)
	mul $t0, $t0, $t1
	sw $t0, -4560($fp)
	lw $t0, -4560($fp)
	lw $t1, -4552($fp)
	add $t0, $t0, $t1
	sw $t0, -4564($fp)
	lw $t0, -4564($fp)
	lw $t1, 0($t0)
	sw $t1, -4568($fp)
	lw $t0, -4568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2336
	sw $t0, -4572($fp)
	li $t0, 6
	sw $t0, -4576($fp)
	li $t0, 4
	lw $t1, -4576($fp)
	mul $t0, $t0, $t1
	sw $t0, -4580($fp)
	lw $t0, -4580($fp)
	lw $t1, -4572($fp)
	add $t0, $t0, $t1
	sw $t0, -4584($fp)
	lw $t0, -4584($fp)
	lw $t1, 0($t0)
	sw $t1, -4588($fp)
	lw $t0, -4588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2336
	sw $t0, -4592($fp)
	li $t0, 7
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
	lw $t0, -4608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2640($fp)
	sw $t0, -4612($fp)
	lw $t0, -4612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2652($fp)
	sw $t0, -4616($fp)
	lw $t0, -4616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2368
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
	addi $t0, $fp, -2368
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
	addi $t0, $fp, -2368
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
	addi $t0, $fp, -2368
	sw $t0, -4680($fp)
	li $t0, 3
	sw $t0, -4684($fp)
	li $t0, 4
	lw $t1, -4684($fp)
	mul $t0, $t0, $t1
	sw $t0, -4688($fp)
	lw $t0, -4688($fp)
	lw $t1, -4680($fp)
	add $t0, $t0, $t1
	sw $t0, -4692($fp)
	lw $t0, -4692($fp)
	lw $t1, 0($t0)
	sw $t1, -4696($fp)
	lw $t0, -4696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2368
	sw $t0, -4700($fp)
	li $t0, 4
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
	lw $t0, -4716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2368
	sw $t0, -4720($fp)
	li $t0, 5
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
	lw $t0, -4736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2368
	sw $t0, -4740($fp)
	li $t0, 6
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
	lw $t0, -4756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2368
	sw $t0, -4760($fp)
	li $t0, 7
	sw $t0, -4764($fp)
	li $t0, 4
	lw $t1, -4764($fp)
	mul $t0, $t0, $t1
	sw $t0, -4768($fp)
	lw $t0, -4768($fp)
	lw $t1, -4760($fp)
	add $t0, $t0, $t1
	sw $t0, -4772($fp)
	lw $t0, -4772($fp)
	lw $t1, 0($t0)
	sw $t1, -4776($fp)
	lw $t0, -4776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2856($fp)
	sw $t0, -4780($fp)
	lw $t0, -4780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2868($fp)
	sw $t0, -4784($fp)
	lw $t0, -4784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2880($fp)
	sw $t0, -4788($fp)
	lw $t0, -4788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4792($fp)
	li $t0, 0
	sw $t0, -4796($fp)
	li $t0, 25566
	sw $t0, -4800($fp)
	lw $t0, -4800($fp)
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	sw $t0, -4804($fp)
	li $t0, 0
	sw $t0, -4808($fp)
	li $t0, 7742
	sw $t0, -4812($fp)
	lw $t1, -4812($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label434
label434:
	li $t0, 1
	sw $t0, -4808($fp)
label435:
	li $t0, 0
	sw $t0, -4816($fp)
	li $t0, 9805
	sw $t0, -4820($fp)
	lw $t1, -4820($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label438
label439:
	li $t0, 50670
	sw $t0, -4824($fp)
	lw $t1, -4824($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label438
label438:
	lw $t0, -1784($fp)
	sw $t0, -4828($fp)
	lw $t1, -4828($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label437
label436:
	li $t0, 1
	sw $t0, -4816($fp)
label437:
	addi $sp, $sp, -4
	lw $t0, -4804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4816($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4832($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -4832($fp)
	sub $t0, $t0, $t1
	sw $t0, -4836($fp)
	lw $t1, -4836($fp)
	li $t2, 0
	bne $t1, $t2, label433
	j label432
label432:
	li $t0, 1
	sw $t0, -4796($fp)
label433:
	li $t0, 15491
	sw $t0, -4840($fp)
	lw $t0, -4796($fp)
	lw $t1, -4840($fp)
	add $t0, $t0, $t1
	sw $t0, -4844($fp)
	lw $t1, -4844($fp)
	li $t2, 0
	bne $t1, $t2, label431
	j label430
label431:
	addi $t0, $fp, -36
	sw $t0, -4848($fp)
	lw $t0, -2412($fp)
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
	lw $t0, -2204($fp)
	sw $t0, -4868($fp)
	lw $t0, -4864($fp)
	lw $t1, -4868($fp)
	sub $t0, $t0, $t1
	sw $t0, -4872($fp)
	li $t0, 6790
	sw $t0, -4876($fp)
	li $t0, 0
	sw $t0, -4880($fp)
	lw $t0, -2376($fp)
	sw $t0, -4884($fp)
	lw $t0, -1784($fp)
	sw $t0, -4888($fp)
	lw $t0, -4884($fp)
	lw $t1, -4888($fp)
	add $t0, $t0, $t1
	sw $t0, -4892($fp)
	li $t0, 56527
	sw $t0, -4896($fp)
	lw $t1, -4892($fp)
	lw $t2, -4896($fp)
	ble $t1, $t2, label440
	j label441
label440:
	li $t0, 1
	sw $t0, -4880($fp)
label441:
	li $t0, 0
	sw $t0, -4900($fp)
	lw $t0, -2880($fp)
	sw $t0, -4904($fp)
	li $t0, 2251
	sw $t0, -4908($fp)
	lw $t0, -4904($fp)
	lw $t1, -4908($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4912($fp)
	lw $t1, -4912($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label443
label444:
	lw $t0, -1808($fp)
	sw $t0, -4916($fp)
	lw $t1, -4916($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label443
label442:
	li $t0, 1
	sw $t0, -4900($fp)
label443:
	addi $t0, $fp, -64
	sw $t0, -4920($fp)
	lw $t0, 16($fp)
	sw $t0, -4924($fp)
	li $t0, 4
	lw $t1, -4924($fp)
	mul $t0, $t0, $t1
	sw $t0, -4928($fp)
	lw $t0, -4928($fp)
	lw $t1, -4920($fp)
	add $t0, $t0, $t1
	sw $t0, -4932($fp)
	lw $t0, -4932($fp)
	lw $t1, 0($t0)
	sw $t1, -4936($fp)
	li $t0, 55847
	sw $t0, -4940($fp)
	lw $t0, -4936($fp)
	lw $t1, -4940($fp)
	sub $t0, $t0, $t1
	sw $t0, -4944($fp)
	addi $sp, $sp, -4
	lw $t0, -4876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4944($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4948($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -4952($fp)
	li $t0, 28356
	sw $t0, -4956($fp)
	li $t0, 0
	lw $t1, -4956($fp)
	sub $t0, $t0, $t1
	sw $t0, -4960($fp)
	lw $t1, -4960($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label446
label447:
	lw $t0, -1760($fp)
	sw $t0, -4964($fp)
	lw $t1, -4964($fp)
	li $t2, 0
	bne $t1, $t2, label445
	j label446
label445:
	li $t0, 1
	sw $t0, -4952($fp)
label446:
	addi $sp, $sp, -4
	lw $t0, -4872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4952($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4968($fp)
	addi $sp, $sp, 16
	lw $t0, -2168($fp)
	sw $t0, -4972($fp)
	lw $t0, -4968($fp)
	lw $t1, -4972($fp)
	mul $t0, $t0, $t1
	sw $t0, -4976($fp)
	lw $t1, -4976($fp)
	li $t2, 0
	bne $t1, $t2, label429
	j label430
label429:
	li $t0, 1
	sw $t0, -4792($fp)
label430:
	lw $ra, -4($fp)
	lw $v0, -4792($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1520($fp)
	sw $t0, -4980($fp)
	lw $t0, -4980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1532($fp)
	sw $t0, -4984($fp)
	lw $t0, -4984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1544($fp)
	sw $t0, -4988($fp)
	lw $t0, -4988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1556($fp)
	sw $t0, -4992($fp)
	lw $t0, -4992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1472
	sw $t0, -4996($fp)
	li $t0, 0
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
	addi $t0, $fp, -1472
	sw $t0, -5016($fp)
	li $t0, 1
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
	addi $t0, $fp, -1472
	sw $t0, -5036($fp)
	li $t0, 2
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
	addi $t0, $fp, -1472
	sw $t0, -5056($fp)
	li $t0, 3
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
	addi $t0, $fp, -1472
	sw $t0, -5076($fp)
	li $t0, 4
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
	addi $t0, $fp, -1472
	sw $t0, -5096($fp)
	li $t0, 5
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
	addi $t0, $fp, -1472
	sw $t0, -5116($fp)
	li $t0, 6
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
	addi $t0, $fp, -1472
	sw $t0, -5136($fp)
	li $t0, 7
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
	lw $t0, -1760($fp)
	sw $t0, -5156($fp)
	lw $t0, -5156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1772($fp)
	sw $t0, -5160($fp)
	lw $t0, -5160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1784($fp)
	sw $t0, -5164($fp)
	lw $t0, -5164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1796($fp)
	sw $t0, -5168($fp)
	lw $t0, -5168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1808($fp)
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1820($fp)
	sw $t0, -5176($fp)
	lw $t0, -5176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1832($fp)
	sw $t0, -5180($fp)
	lw $t0, -5180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1844($fp)
	sw $t0, -5184($fp)
	lw $t0, -5184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1856($fp)
	sw $t0, -5188($fp)
	lw $t0, -5188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1484
	sw $t0, -5192($fp)
	li $t0, 0
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
	addi $t0, $fp, -1484
	sw $t0, -5212($fp)
	li $t0, 1
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
	addi $t0, $fp, -1484
	sw $t0, -5232($fp)
	li $t0, 2
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
	addi $t0, $fp, -1512
	sw $t0, -5252($fp)
	li $t0, 0
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
	addi $t0, $fp, -1512
	sw $t0, -5272($fp)
	li $t0, 1
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
	addi $t0, $fp, -1512
	sw $t0, -5292($fp)
	li $t0, 2
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
	addi $t0, $fp, -1512
	sw $t0, -5312($fp)
	li $t0, 3
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
	addi $t0, $fp, -1512
	sw $t0, -5332($fp)
	li $t0, 4
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
	addi $t0, $fp, -1512
	sw $t0, -5352($fp)
	li $t0, 5
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
	addi $t0, $fp, -1512
	sw $t0, -5372($fp)
	li $t0, 6
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
	lw $t0, -2108($fp)
	sw $t0, -5392($fp)
	lw $t0, -5392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2120($fp)
	sw $t0, -5396($fp)
	lw $t0, -5396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2132($fp)
	sw $t0, -5400($fp)
	lw $t0, -5400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2144($fp)
	sw $t0, -5404($fp)
	lw $t0, -5404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2156($fp)
	sw $t0, -5408($fp)
	lw $t0, -5408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2168($fp)
	sw $t0, -5412($fp)
	lw $t0, -5412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2180($fp)
	sw $t0, -5416($fp)
	lw $t0, -5416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2192($fp)
	sw $t0, -5420($fp)
	lw $t0, -5420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2204($fp)
	sw $t0, -5424($fp)
	lw $t0, -5424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2216($fp)
	sw $t0, -5428($fp)
	lw $t0, -5428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5432($fp)
	addi $t0, $fp, -1484
	sw $t0, -5436($fp)
	addi $t0, $fp, -36
	sw $t0, -5440($fp)
	lw $t0, -2204($fp)
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
	lw $t0, -496($fp)
	sw $t0, -5460($fp)
	addi $t0, $fp, -92
	sw $t0, -5464($fp)
	lw $t0, -2144($fp)
	sw $t0, -5468($fp)
	li $t0, 4
	lw $t1, -5468($fp)
	mul $t0, $t0, $t1
	sw $t0, -5472($fp)
	lw $t0, -5472($fp)
	lw $t1, -5464($fp)
	add $t0, $t0, $t1
	sw $t0, -5476($fp)
	lw $t0, -5476($fp)
	lw $t1, 0($t0)
	sw $t1, -5480($fp)
	li $t0, 18263
	sw $t0, -5484($fp)
	lw $t0, -5480($fp)
	lw $t1, -5484($fp)
	mul $t0, $t0, $t1
	sw $t0, -5488($fp)
	li $t0, 0
	sw $t0, -5492($fp)
	lw $t0, -1760($fp)
	sw $t0, -5496($fp)
	li $t0, 15503
	sw $t0, -5500($fp)
	lw $t1, -5496($fp)
	lw $t2, -5500($fp)
	ble $t1, $t2, label451
	j label453
label453:
	lw $t0, -2108($fp)
	sw $t0, -5504($fp)
	lw $t1, -5504($fp)
	li $t2, 0
	bne $t1, $t2, label451
	j label452
label451:
	li $t0, 1
	sw $t0, -5492($fp)
label452:
	addi $sp, $sp, -4
	lw $t0, -5456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5492($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5508($fp)
	addi $sp, $sp, 20
	li $t0, 24890
	sw $t0, -5512($fp)
	lw $t0, -5508($fp)
	lw $t1, -5512($fp)
	add $t0, $t0, $t1
	sw $t0, -5516($fp)
	li $t0, 0
	sw $t0, -5520($fp)
	lw $t0, -496($fp)
	sw $t0, -5524($fp)
	lw $t1, -5524($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label455
label457:
	lw $t0, -1784($fp)
	sw $t0, -5528($fp)
	lw $t1, -5528($fp)
	li $t2, 0
	bne $t1, $t2, label456
	j label455
label456:
	li $t0, 37559
	sw $t0, -5532($fp)
	lw $t1, -5532($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label455
label454:
	li $t0, 1
	sw $t0, -5520($fp)
label455:
	li $t0, 0
	sw $t0, -5536($fp)
	addi $t0, $fp, -1512
	sw $t0, -5540($fp)
	lw $t0, -508($fp)
	sw $t0, -5544($fp)
	li $t0, 4
	lw $t1, -5544($fp)
	mul $t0, $t0, $t1
	sw $t0, -5548($fp)
	lw $t0, -5548($fp)
	lw $t1, -5540($fp)
	add $t0, $t0, $t1
	sw $t0, -5552($fp)
	lw $t0, -5552($fp)
	lw $t1, 0($t0)
	sw $t1, -5556($fp)
	li $t0, 22533
	sw $t0, -5560($fp)
	lw $t1, -5556($fp)
	lw $t2, -5560($fp)
	bgt $t1, $t2, label458
	j label459
label458:
	li $t0, 1
	sw $t0, -5536($fp)
label459:
	addi $sp, $sp, -4
	lw $t0, -5516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5536($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5564($fp)
	addi $sp, $sp, 16
	li $t0, 4
	lw $t1, -5564($fp)
	mul $t0, $t0, $t1
	sw $t0, -5568($fp)
	lw $t0, -5568($fp)
	lw $t1, -5436($fp)
	add $t0, $t0, $t1
	sw $t0, -5572($fp)
	lw $t0, -5572($fp)
	lw $t1, 0($t0)
	sw $t1, -5576($fp)
	lw $t1, -5576($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label450
label450:
	li $t0, 28379
	sw $t0, -5580($fp)
	li $t0, 0
	sw $t0, -5584($fp)
	li $t0, 0
	sw $t0, -5588($fp)
	li $t0, 4179
	sw $t0, -5592($fp)
	lw $t0, -2216($fp)
	sw $t0, -5596($fp)
	lw $t1, -5592($fp)
	lw $t2, -5596($fp)
	bgt $t1, $t2, label462
	j label463
label462:
	li $t0, 1
	sw $t0, -5588($fp)
label463:
	lw $t0, -2168($fp)
	sw $t0, -5600($fp)
	lw $t1, -5588($fp)
	lw $t2, -5600($fp)
	bgt $t1, $t2, label460
	j label461
label460:
	li $t0, 1
	sw $t0, -5584($fp)
label461:
	li $t0, 0
	sw $t0, -5604($fp)
	li $t0, 22320
	sw $t0, -5608($fp)
	lw $t1, -5608($fp)
	li $t2, 0
	bne $t1, $t2, label464
	j label466
label466:
	li $t0, 20184
	sw $t0, -5612($fp)
	lw $t1, -5612($fp)
	li $t2, 0
	bne $t1, $t2, label464
	j label465
label464:
	li $t0, 1
	sw $t0, -5604($fp)
label465:
	li $t0, 42138
	sw $t0, -5616($fp)
	addi $sp, $sp, -4
	lw $t0, -5584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5616($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5620($fp)
	addi $sp, $sp, 16
	lw $t0, -5580($fp)
	lw $t1, -5620($fp)
	add $t0, $t0, $t1
	sw $t0, -5624($fp)
	lw $t1, -5624($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label449
label448:
	li $t0, 1
	sw $t0, -5432($fp)
label449:
	lw $ra, -4($fp)
	lw $v0, -5432($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label467:
	addi $t0, $fp, -36
	sw $t0, -5628($fp)
	lw $t0, -1520($fp)
	sw $t0, -5632($fp)
	li $t0, 4
	lw $t1, -5632($fp)
	mul $t0, $t0, $t1
	sw $t0, -5636($fp)
	lw $t0, -5636($fp)
	lw $t1, -5628($fp)
	add $t0, $t0, $t1
	sw $t0, -5640($fp)
	lw $t0, -5640($fp)
	lw $t1, 0($t0)
	sw $t1, -5644($fp)
	li $t0, 57429
	sw $t0, -5648($fp)
	lw $t0, -5644($fp)
	lw $t1, -5648($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5652($fp)
	lw $t0, -2108($fp)
	sw $t0, -5656($fp)
	li $t0, 20444
	sw $t0, -5660($fp)
	li $t0, 63455
	sw $t0, -5664($fp)
	lw $t0, -5660($fp)
	lw $t1, -5664($fp)
	sub $t0, $t0, $t1
	sw $t0, -5668($fp)
	li $t0, 55075
	sw $t0, -5672($fp)
	lw $t0, -1784($fp)
	sw $t0, -5676($fp)
	lw $t0, -5672($fp)
	lw $t1, -5676($fp)
	mul $t0, $t0, $t1
	sw $t0, -5680($fp)
	li $t0, 0
	lw $t1, -5680($fp)
	sub $t0, $t0, $t1
	sw $t0, -5684($fp)
	addi $sp, $sp, -4
	lw $t0, -5656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5684($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5688($fp)
	addi $sp, $sp, 16
	lw $t1, -5652($fp)
	lw $t2, -5688($fp)
	ble $t1, $t2, label468
	j label471
label471:
	lw $t0, -2156($fp)
	sw $t0, -5692($fp)
	li $t0, 63425
	sw $t0, -5696($fp)
	lw $t0, -5692($fp)
	lw $t1, -5696($fp)
	mul $t0, $t0, $t1
	sw $t0, -5700($fp)
	lw $t0, -2156($fp)
	sw $t0, -5704($fp)
	lw $t0, -5700($fp)
	lw $t1, -5704($fp)
	mul $t0, $t0, $t1
	sw $t0, -5708($fp)
	li $t0, 0
	sw $t0, -5712($fp)
	lw $t0, -292($fp)
	sw $t0, -5716($fp)
	li $t0, 0
	lw $t1, -5716($fp)
	sub $t0, $t0, $t1
	sw $t0, -5720($fp)
	lw $t1, -5720($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label472
label472:
	li $t0, 1
	sw $t0, -5712($fp)
label473:
	lw $t0, -1832($fp)
	sw $t0, -5724($fp)
	lw $t0, -520($fp)
	sw $t0, -5728($fp)
	lw $t0, -5724($fp)
	lw $t1, -5728($fp)
	sub $t0, $t0, $t1
	sw $t0, -5732($fp)
	addi $sp, $sp, -4
	lw $t0, -5708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5732($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5736($fp)
	addi $sp, $sp, 16
	lw $t1, -5736($fp)
	li $t2, 0
	bne $t1, $t2, label470
	j label468
label470:
	li $t0, 0
	sw $t0, -5740($fp)
	li $t0, 0
	sw $t0, -5744($fp)
	lw $t0, -1544($fp)
	sw $t0, -5748($fp)
	li $t0, 21546
	sw $t0, -5752($fp)
	lw $t1, -5748($fp)
	lw $t2, -5752($fp)
	blt $t1, $t2, label476
	j label477
label476:
	li $t0, 1
	sw $t0, -5744($fp)
label477:
	lw $t0, -1556($fp)
	sw $t0, -5756($fp)
	lw $t1, -5744($fp)
	lw $t2, -5756($fp)
	beq $t1, $t2, label474
	j label475
label474:
	li $t0, 1
	sw $t0, -5740($fp)
label475:
	li $t0, 0
	sw $t0, -5760($fp)
	li $t0, 58703
	sw $t0, -5764($fp)
	li $t0, 5268
	sw $t0, -5768($fp)
	lw $t0, -5764($fp)
	lw $t1, -5768($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5772($fp)
	li $t0, 44745
	sw $t0, -5776($fp)
	lw $t1, -5772($fp)
	lw $t2, -5776($fp)
	bne $t1, $t2, label478
	j label479
label478:
	li $t0, 1
	sw $t0, -5760($fp)
label479:
	li $t0, 0
	sw $t0, -5780($fp)
	addi $t0, $fp, -36
	sw $t0, -5784($fp)
	li $t0, 7
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
	lw $t0, 8($fp)
	sw $t0, -5804($fp)
	lw $t1, -5800($fp)
	lw $t2, -5804($fp)
	bne $t1, $t2, label480
	j label481
label480:
	li $t0, 1
	sw $t0, -5780($fp)
label481:
	li $t0, 0
	sw $t0, -5808($fp)
	li $t0, 47832
	sw $t0, -5812($fp)
	li $t0, 43200
	sw $t0, -5816($fp)
	lw $t1, -5812($fp)
	lw $t2, -5816($fp)
	beq $t1, $t2, label482
	j label483
label482:
	li $t0, 1
	sw $t0, -5808($fp)
label483:
	li $t0, 30008
	sw $t0, -5820($fp)
	li $t0, 0
	lw $t1, -5820($fp)
	sub $t0, $t0, $t1
	sw $t0, -5824($fp)
	li $t0, 0
	sw $t0, -5828($fp)
	li $t0, 0
	sw $t0, -5832($fp)
	li $t0, 56841
	sw $t0, -5836($fp)
	lw $t0, -496($fp)
	sw $t0, -5840($fp)
	lw $t1, -5836($fp)
	lw $t2, -5840($fp)
	blt $t1, $t2, label486
	j label487
label486:
	li $t0, 1
	sw $t0, -5832($fp)
label487:
	li $t0, 36409
	sw $t0, -5844($fp)
	lw $t1, -5832($fp)
	lw $t2, -5844($fp)
	beq $t1, $t2, label484
	j label485
label484:
	li $t0, 1
	sw $t0, -5828($fp)
label485:
	li $t0, 0
	sw $t0, -5848($fp)
	lw $t0, -496($fp)
	sw $t0, -5852($fp)
	lw $t0, -2192($fp)
	sw $t0, -5856($fp)
	lw $t1, -5852($fp)
	lw $t2, -5856($fp)
	bgt $t1, $t2, label488
	j label490
label490:
	li $t0, 27757
	sw $t0, -5860($fp)
	lw $t1, -5860($fp)
	li $t2, 0
	bne $t1, $t2, label488
	j label489
label488:
	li $t0, 1
	sw $t0, -5848($fp)
label489:
	li $t0, 0
	sw $t0, -5864($fp)
	lw $t0, -1856($fp)
	sw $t0, -5868($fp)
	li $t0, 46098
	sw $t0, -5872($fp)
	lw $t0, -5868($fp)
	lw $t1, -5872($fp)
	add $t0, $t0, $t1
	sw $t0, -5876($fp)
	lw $t1, -5876($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label493
label493:
	lw $t0, -1760($fp)
	sw $t0, -5880($fp)
	lw $t1, -5880($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label492
label491:
	li $t0, 1
	sw $t0, -5864($fp)
label492:
	addi $t0, $fp, -1484
	sw $t0, -5884($fp)
	li $t0, 1
	sw $t0, -5888($fp)
	li $t0, 4
	lw $t1, -5888($fp)
	mul $t0, $t0, $t1
	sw $t0, -5892($fp)
	lw $t0, -5892($fp)
	lw $t1, -5884($fp)
	add $t0, $t0, $t1
	sw $t0, -5896($fp)
	lw $t0, -5896($fp)
	lw $t1, 0($t0)
	sw $t1, -5900($fp)
	li $t0, 28485
	sw $t0, -5904($fp)
	lw $t0, -5900($fp)
	lw $t1, -5904($fp)
	sub $t0, $t0, $t1
	sw $t0, -5908($fp)
	li $t0, 0
	sw $t0, -5912($fp)
	addi $t0, $fp, -1512
	sw $t0, -5916($fp)
	li $t0, 6
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
	lw $t0, -1796($fp)
	sw $t0, -5936($fp)
	lw $t1, -5932($fp)
	lw $t2, -5936($fp)
	beq $t1, $t2, label494
	j label495
label494:
	li $t0, 1
	sw $t0, -5912($fp)
label495:
	addi $sp, $sp, -4
	lw $t0, -5848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5912($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5940($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -5944($fp)
	li $t0, 52518
	sw $t0, -5948($fp)
	li $t0, 10727
	sw $t0, -5952($fp)
	lw $t0, -5948($fp)
	lw $t1, -5952($fp)
	mul $t0, $t0, $t1
	sw $t0, -5956($fp)
	lw $t0, -2180($fp)
	sw $t0, -5960($fp)
	lw $t1, -5956($fp)
	lw $t2, -5960($fp)
	bge $t1, $t2, label496
	j label497
label496:
	li $t0, 1
	sw $t0, -5944($fp)
label497:
	addi $sp, $sp, -4
	lw $t0, -5824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5944($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5964($fp)
	addi $sp, $sp, 20
	lw $t0, -724($fp)
	sw $t0, -5968($fp)
	lw $t0, -5964($fp)
	lw $t1, -5968($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5972($fp)
	lw $t0, 8($fp)
	sw $t0, -5976($fp)
	lw $t0, -5976($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -5980($fp)
	addi $sp, $sp, -4
	lw $t0, -5780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5980($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5984($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -36
	sw $t0, -5988($fp)
	li $t0, 3
	sw $t0, -5992($fp)
	li $t0, 4
	lw $t1, -5992($fp)
	mul $t0, $t0, $t1
	sw $t0, -5996($fp)
	lw $t0, -5996($fp)
	lw $t1, -5988($fp)
	add $t0, $t0, $t1
	sw $t0, -6000($fp)
	lw $t0, -6000($fp)
	lw $t1, 0($t0)
	sw $t1, -6004($fp)
	addi $sp, $sp, -4
	lw $t0, -5740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6004($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6008($fp)
	addi $sp, $sp, 20
	lw $t1, -6008($fp)
	li $t2, 0
	bne $t1, $t2, label468
	j label469
label468:
	li $t0, 47406
	sw $t0, -6012($fp)
	lw $t0, -6012($fp)
	sw $t0, -6016($fp)
	lw $t0, -6016($fp)
	sw $t0, -6020($fp)
	li $t0, 0
	sw $t0, -6024($fp)
	lw $t0, -2156($fp)
	sw $t0, -6028($fp)
	lw $t0, -1532($fp)
	sw $t0, -6032($fp)
	li $t0, 0
	sw $t0, -6036($fp)
	lw $t0, -1856($fp)
	sw $t0, -6040($fp)
	lw $t1, -6040($fp)
	li $t2, 0
	bne $t1, $t2, label501
	j label500
label500:
	li $t0, 1
	sw $t0, -6036($fp)
label501:
	li $t0, 0
	sw $t0, -6044($fp)
	li $t0, 41730
	sw $t0, -6048($fp)
	lw $t1, -6048($fp)
	li $t2, 0
	bne $t1, $t2, label505
	j label504
label505:
	lw $t0, -2132($fp)
	sw $t0, -6052($fp)
	lw $t1, -6052($fp)
	li $t2, 0
	bne $t1, $t2, label502
	j label504
label504:
	li $t0, 51585
	sw $t0, -6056($fp)
	lw $t1, -6056($fp)
	li $t2, 0
	bne $t1, $t2, label502
	j label503
label502:
	li $t0, 1
	sw $t0, -6044($fp)
label503:
	li $t0, 1530
	sw $t0, -6060($fp)
	addi $sp, $sp, -4
	lw $t0, -6036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6060($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6064($fp)
	addi $sp, $sp, 16
	lw $t0, -6032($fp)
	lw $t1, -6064($fp)
	mul $t0, $t0, $t1
	sw $t0, -6068($fp)
	lw $t1, -6028($fp)
	lw $t2, -6068($fp)
	bge $t1, $t2, label498
	j label499
label498:
	li $t0, 1
	sw $t0, -6024($fp)
label499:
	lw $t0, -1808($fp)
	sw $t0, -6072($fp)
	li $t0, 0
	sw $t0, -6076($fp)
	li $t0, 0
	sw $t0, -6080($fp)
	li $t0, 31269
	sw $t0, -6084($fp)
	lw $t0, -2120($fp)
	sw $t0, -6088($fp)
	lw $t1, -6084($fp)
	lw $t2, -6088($fp)
	ble $t1, $t2, label508
	j label509
label508:
	li $t0, 1
	sw $t0, -6080($fp)
label509:
	lw $t0, 8($fp)
	sw $t0, -6092($fp)
	lw $t1, -6080($fp)
	lw $t2, -6092($fp)
	beq $t1, $t2, label506
	j label507
label506:
	li $t0, 1
	sw $t0, -6076($fp)
label507:
	lw $t0, -6016($fp)
	sw $t0, -6096($fp)
	lw $t0, -6096($fp)
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -6100($fp)
	li $t0, 0
	sw $t0, -6104($fp)
	lw $t0, -2108($fp)
	sw $t0, -6108($fp)
	li $t0, 58959
	sw $t0, -6112($fp)
	lw $t1, -6108($fp)
	lw $t2, -6112($fp)
	blt $t1, $t2, label512
	j label511
label512:
	lw $t0, -1532($fp)
	sw $t0, -6116($fp)
	lw $t1, -6116($fp)
	li $t2, 0
	bne $t1, $t2, label510
	j label511
label510:
	li $t0, 1
	sw $t0, -6104($fp)
label511:
	addi $sp, $sp, -4
	lw $t0, -6076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6104($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6120($fp)
	addi $sp, $sp, 16
	lw $t0, -6072($fp)
	lw $t1, -6120($fp)
	mul $t0, $t0, $t1
	sw $t0, -6124($fp)
	j label467
label469:
	lw $t0, -316($fp)
	sw $t0, -6128($fp)
	li $t0, 0
	sw $t0, -6132($fp)
	li $t0, 63979
	sw $t0, -6136($fp)
	li $t0, 52074
	sw $t0, -6140($fp)
	lw $t0, -6136($fp)
	lw $t1, -6140($fp)
	sub $t0, $t0, $t1
	sw $t0, -6144($fp)
	lw $t1, -6144($fp)
	li $t2, 0
	bne $t1, $t2, label515
	j label514
label515:
	li $t0, 16141
	sw $t0, -6148($fp)
	lw $t1, -6148($fp)
	li $t2, 0
	bne $t1, $t2, label513
	j label514
label513:
	li $t0, 1
	sw $t0, -6132($fp)
label514:
	li $t0, 0
	sw $t0, -6152($fp)
	li $t0, 0
	sw $t0, -6156($fp)
	li $t0, 29158
	sw $t0, -6160($fp)
	lw $t0, -2132($fp)
	sw $t0, -6164($fp)
	lw $t1, -6160($fp)
	lw $t2, -6164($fp)
	blt $t1, $t2, label518
	j label519
label518:
	li $t0, 1
	sw $t0, -6156($fp)
label519:
	lw $t0, -496($fp)
	sw $t0, -6168($fp)
	lw $t1, -6156($fp)
	lw $t2, -6168($fp)
	bgt $t1, $t2, label516
	j label517
label516:
	li $t0, 1
	sw $t0, -6152($fp)
label517:
	li $t0, 0
	sw $t0, -6172($fp)
	li $t0, 6494
	sw $t0, -6176($fp)
	li $t0, 56879
	sw $t0, -6180($fp)
	lw $t1, -6176($fp)
	lw $t2, -6180($fp)
	bne $t1, $t2, label520
	j label521
label520:
	li $t0, 1
	sw $t0, -6172($fp)
label521:
	addi $sp, $sp, -4
	lw $t0, -6132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6172($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6184($fp)
	addi $sp, $sp, 16
	lw $t0, -6128($fp)
	lw $t1, -6184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6188($fp)
	li $t0, 0
	lw $t1, -6188($fp)
	sub $t0, $t0, $t1
	sw $t0, -6192($fp)
	j label286
label288:
	addi $t0, $fp, -36
	sw $t0, -6196($fp)
	li $t0, 0
	sw $t0, -6200($fp)
	li $t0, 4
	lw $t1, -6200($fp)
	mul $t0, $t0, $t1
	sw $t0, -6204($fp)
	lw $t0, -6204($fp)
	lw $t1, -6196($fp)
	add $t0, $t0, $t1
	sw $t0, -6208($fp)
	lw $t0, -6208($fp)
	lw $t1, 0($t0)
	sw $t1, -6212($fp)
	lw $t0, -6212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -6216($fp)
	li $t0, 1
	sw $t0, -6220($fp)
	li $t0, 4
	lw $t1, -6220($fp)
	mul $t0, $t0, $t1
	sw $t0, -6224($fp)
	lw $t0, -6224($fp)
	lw $t1, -6216($fp)
	add $t0, $t0, $t1
	sw $t0, -6228($fp)
	lw $t0, -6228($fp)
	lw $t1, 0($t0)
	sw $t1, -6232($fp)
	lw $t0, -6232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -6236($fp)
	li $t0, 2
	sw $t0, -6240($fp)
	li $t0, 4
	lw $t1, -6240($fp)
	mul $t0, $t0, $t1
	sw $t0, -6244($fp)
	lw $t0, -6244($fp)
	lw $t1, -6236($fp)
	add $t0, $t0, $t1
	sw $t0, -6248($fp)
	lw $t0, -6248($fp)
	lw $t1, 0($t0)
	sw $t1, -6252($fp)
	lw $t0, -6252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -6256($fp)
	li $t0, 3
	sw $t0, -6260($fp)
	li $t0, 4
	lw $t1, -6260($fp)
	mul $t0, $t0, $t1
	sw $t0, -6264($fp)
	lw $t0, -6264($fp)
	lw $t1, -6256($fp)
	add $t0, $t0, $t1
	sw $t0, -6268($fp)
	lw $t0, -6268($fp)
	lw $t1, 0($t0)
	sw $t1, -6272($fp)
	lw $t0, -6272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -6276($fp)
	li $t0, 4
	sw $t0, -6280($fp)
	li $t0, 4
	lw $t1, -6280($fp)
	mul $t0, $t0, $t1
	sw $t0, -6284($fp)
	lw $t0, -6284($fp)
	lw $t1, -6276($fp)
	add $t0, $t0, $t1
	sw $t0, -6288($fp)
	lw $t0, -6288($fp)
	lw $t1, 0($t0)
	sw $t1, -6292($fp)
	lw $t0, -6292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -6296($fp)
	li $t0, 5
	sw $t0, -6300($fp)
	li $t0, 4
	lw $t1, -6300($fp)
	mul $t0, $t0, $t1
	sw $t0, -6304($fp)
	lw $t0, -6304($fp)
	lw $t1, -6296($fp)
	add $t0, $t0, $t1
	sw $t0, -6308($fp)
	lw $t0, -6308($fp)
	lw $t1, 0($t0)
	sw $t1, -6312($fp)
	lw $t0, -6312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -6316($fp)
	li $t0, 6
	sw $t0, -6320($fp)
	li $t0, 4
	lw $t1, -6320($fp)
	mul $t0, $t0, $t1
	sw $t0, -6324($fp)
	lw $t0, -6324($fp)
	lw $t1, -6316($fp)
	add $t0, $t0, $t1
	sw $t0, -6328($fp)
	lw $t0, -6328($fp)
	lw $t1, 0($t0)
	sw $t1, -6332($fp)
	lw $t0, -6332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -6336($fp)
	li $t0, 7
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
	lw $t0, -6352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -292($fp)
	sw $t0, -6356($fp)
	lw $t0, -6356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -6360($fp)
	lw $t0, -6360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -6364($fp)
	lw $t0, -6364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -6368($fp)
	li $t0, 0
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
	addi $t0, $fp, -64
	sw $t0, -6388($fp)
	li $t0, 1
	sw $t0, -6392($fp)
	li $t0, 4
	lw $t1, -6392($fp)
	mul $t0, $t0, $t1
	sw $t0, -6396($fp)
	lw $t0, -6396($fp)
	lw $t1, -6388($fp)
	add $t0, $t0, $t1
	sw $t0, -6400($fp)
	lw $t0, -6400($fp)
	lw $t1, 0($t0)
	sw $t1, -6404($fp)
	lw $t0, -6404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -6408($fp)
	li $t0, 2
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
	lw $t0, -6424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -6428($fp)
	li $t0, 3
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
	lw $t0, -6444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -6448($fp)
	li $t0, 4
	sw $t0, -6452($fp)
	li $t0, 4
	lw $t1, -6452($fp)
	mul $t0, $t0, $t1
	sw $t0, -6456($fp)
	lw $t0, -6456($fp)
	lw $t1, -6448($fp)
	add $t0, $t0, $t1
	sw $t0, -6460($fp)
	lw $t0, -6460($fp)
	lw $t1, 0($t0)
	sw $t1, -6464($fp)
	lw $t0, -6464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -6468($fp)
	li $t0, 5
	sw $t0, -6472($fp)
	li $t0, 4
	lw $t1, -6472($fp)
	mul $t0, $t0, $t1
	sw $t0, -6476($fp)
	lw $t0, -6476($fp)
	lw $t1, -6468($fp)
	add $t0, $t0, $t1
	sw $t0, -6480($fp)
	lw $t0, -6480($fp)
	lw $t1, 0($t0)
	sw $t1, -6484($fp)
	lw $t0, -6484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -6488($fp)
	li $t0, 6
	sw $t0, -6492($fp)
	li $t0, 4
	lw $t1, -6492($fp)
	mul $t0, $t0, $t1
	sw $t0, -6496($fp)
	lw $t0, -6496($fp)
	lw $t1, -6488($fp)
	add $t0, $t0, $t1
	sw $t0, -6500($fp)
	lw $t0, -6500($fp)
	lw $t1, 0($t0)
	sw $t1, -6504($fp)
	lw $t0, -6504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -6508($fp)
	lw $t0, -6508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	sw $t0, -6512($fp)
	lw $t0, -6512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -6516($fp)
	lw $t0, -6516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -532($fp)
	sw $t0, -6520($fp)
	lw $t0, -6520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -544($fp)
	sw $t0, -6524($fp)
	lw $t0, -6524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -6528($fp)
	li $t0, 0
	sw $t0, -6532($fp)
	li $t0, 4
	lw $t1, -6532($fp)
	mul $t0, $t0, $t1
	sw $t0, -6536($fp)
	lw $t0, -6536($fp)
	lw $t1, -6528($fp)
	add $t0, $t0, $t1
	sw $t0, -6540($fp)
	lw $t0, -6540($fp)
	lw $t1, 0($t0)
	sw $t1, -6544($fp)
	lw $t0, -6544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -6548($fp)
	li $t0, 1
	sw $t0, -6552($fp)
	li $t0, 4
	lw $t1, -6552($fp)
	mul $t0, $t0, $t1
	sw $t0, -6556($fp)
	lw $t0, -6556($fp)
	lw $t1, -6548($fp)
	add $t0, $t0, $t1
	sw $t0, -6560($fp)
	lw $t0, -6560($fp)
	lw $t1, 0($t0)
	sw $t1, -6564($fp)
	lw $t0, -6564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -6568($fp)
	li $t0, 2
	sw $t0, -6572($fp)
	li $t0, 4
	lw $t1, -6572($fp)
	mul $t0, $t0, $t1
	sw $t0, -6576($fp)
	lw $t0, -6576($fp)
	lw $t1, -6568($fp)
	add $t0, $t0, $t1
	sw $t0, -6580($fp)
	lw $t0, -6580($fp)
	lw $t1, 0($t0)
	sw $t1, -6584($fp)
	lw $t0, -6584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -6588($fp)
	li $t0, 3
	sw $t0, -6592($fp)
	li $t0, 4
	lw $t1, -6592($fp)
	mul $t0, $t0, $t1
	sw $t0, -6596($fp)
	lw $t0, -6596($fp)
	lw $t1, -6588($fp)
	add $t0, $t0, $t1
	sw $t0, -6600($fp)
	lw $t0, -6600($fp)
	lw $t1, 0($t0)
	sw $t1, -6604($fp)
	lw $t0, -6604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -6608($fp)
	li $t0, 4
	sw $t0, -6612($fp)
	li $t0, 4
	lw $t1, -6612($fp)
	mul $t0, $t0, $t1
	sw $t0, -6616($fp)
	lw $t0, -6616($fp)
	lw $t1, -6608($fp)
	add $t0, $t0, $t1
	sw $t0, -6620($fp)
	lw $t0, -6620($fp)
	lw $t1, 0($t0)
	sw $t1, -6624($fp)
	lw $t0, -6624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -6628($fp)
	li $t0, 5
	sw $t0, -6632($fp)
	li $t0, 4
	lw $t1, -6632($fp)
	mul $t0, $t0, $t1
	sw $t0, -6636($fp)
	lw $t0, -6636($fp)
	lw $t1, -6628($fp)
	add $t0, $t0, $t1
	sw $t0, -6640($fp)
	lw $t0, -6640($fp)
	lw $t1, 0($t0)
	sw $t1, -6644($fp)
	lw $t0, -6644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -6648($fp)
	li $t0, 6
	sw $t0, -6652($fp)
	li $t0, 4
	lw $t1, -6652($fp)
	mul $t0, $t0, $t1
	sw $t0, -6656($fp)
	lw $t0, -6656($fp)
	lw $t1, -6648($fp)
	add $t0, $t0, $t1
	sw $t0, -6660($fp)
	lw $t0, -6660($fp)
	lw $t1, 0($t0)
	sw $t1, -6664($fp)
	lw $t0, -6664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -724($fp)
	sw $t0, -6668($fp)
	lw $t0, -6668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6672($fp)
	lw $t0, -724($fp)
	sw $t0, -6676($fp)
	li $t0, 0
	sw $t0, -6680($fp)
	li $t0, 9170
	sw $t0, -6684($fp)
	li $t0, 0
	lw $t1, -6684($fp)
	sub $t0, $t0, $t1
	sw $t0, -6688($fp)
	lw $t1, -6688($fp)
	li $t2, 0
	bne $t1, $t2, label525
	j label524
label524:
	li $t0, 1
	sw $t0, -6680($fp)
label525:
	lw $t0, -6676($fp)
	lw $t1, -6680($fp)
	sub $t0, $t0, $t1
	sw $t0, -6692($fp)
	addi $t0, $fp, -92
	sw $t0, -6696($fp)
	li $t0, 4
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
	lw $t0, -496($fp)
	sw $t0, -6716($fp)
	li $t0, 0
	lw $t1, -6716($fp)
	sub $t0, $t0, $t1
	sw $t0, -6720($fp)
	lw $t0, -6712($fp)
	lw $t1, -6720($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6724($fp)
	lw $t1, -6692($fp)
	lw $t2, -6724($fp)
	bgt $t1, $t2, label522
	j label523
label522:
	li $t0, 1
	sw $t0, -6672($fp)
label523:
	lw $ra, -4($fp)
	lw $v0, -6672($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -7272
	li $t0, 29702
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	li $t0, 25935
	sw $t0, -148($fp)
	addi $t0, $fp, -16
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
	li $t0, 65368
	sw $t0, -172($fp)
	addi $t0, $fp, -16
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
	li $t0, 10264
	sw $t0, -196($fp)
	addi $t0, $fp, -16
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
	li $t0, 53692
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	li $t0, 56674
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	li $t0, 46674
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	li $t0, 18164
	sw $t0, -256($fp)
	addi $t0, $fp, -28
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
	li $t0, 38970
	sw $t0, -280($fp)
	addi $t0, $fp, -28
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
	li $t0, 24338
	sw $t0, -304($fp)
	addi $t0, $fp, -28
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
	li $t0, 5169
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	li $t0, 58826
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	li $t0, 17505
	sw $t0, -352($fp)
	addi $t0, $fp, -44
	sw $t0, -356($fp)
	li $t0, 0
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
	li $t0, 10437
	sw $t0, -376($fp)
	addi $t0, $fp, -44
	sw $t0, -380($fp)
	li $t0, 1
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
	li $t0, 38035
	sw $t0, -400($fp)
	addi $t0, $fp, -44
	sw $t0, -404($fp)
	li $t0, 2
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
	li $t0, 39051
	sw $t0, -424($fp)
	addi $t0, $fp, -44
	sw $t0, -428($fp)
	li $t0, 3
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
	li $t0, 57843
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	li $t0, 39565
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	li $t0, 15245
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	li $t0, 43892
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	li $t0, 32989
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	li $t0, 46515
	sw $t0, -508($fp)
	addi $t0, $fp, -72
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
	li $t0, 50386
	sw $t0, -532($fp)
	addi $t0, $fp, -72
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
	li $t0, 24332
	sw $t0, -556($fp)
	addi $t0, $fp, -72
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
	li $t0, 10137
	sw $t0, -580($fp)
	addi $t0, $fp, -72
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
	li $t0, 48830
	sw $t0, -604($fp)
	addi $t0, $fp, -72
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
	li $t0, 10870
	sw $t0, -628($fp)
	addi $t0, $fp, -72
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
	li $t0, 26278
	sw $t0, -652($fp)
	addi $t0, $fp, -72
	sw $t0, -656($fp)
	li $t0, 6
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
	li $t0, 58000
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	li $t0, 24539
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	li $t0, 63162
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	li $t0, 22167
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	li $t0, 50474
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -732($fp)
	li $t0, 62994
	sw $t0, -736($fp)
	addi $t0, $fp, -76
	sw $t0, -740($fp)
	li $t0, 0
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
	li $t0, 32431
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	li $t0, 38630
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	li $t0, 54132
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	li $t0, 13569
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -804($fp)
	li $t0, 56794
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	li $t0, 27567
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	li $t0, 37907
	sw $t0, -832($fp)
	addi $t0, $fp, -96
	sw $t0, -836($fp)
	li $t0, 0
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
	li $t0, 61963
	sw $t0, -856($fp)
	addi $t0, $fp, -96
	sw $t0, -860($fp)
	li $t0, 1
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
	li $t0, 20857
	sw $t0, -880($fp)
	addi $t0, $fp, -96
	sw $t0, -884($fp)
	li $t0, 2
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
	li $t0, 55412
	sw $t0, -904($fp)
	addi $t0, $fp, -96
	sw $t0, -908($fp)
	li $t0, 3
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
	li $t0, 6864
	sw $t0, -928($fp)
	addi $t0, $fp, -96
	sw $t0, -932($fp)
	li $t0, 4
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
	li $t0, 58892
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -960($fp)
	li $t0, 28927
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -972($fp)
	li $t0, 64707
	sw $t0, -976($fp)
	addi $t0, $fp, -108
	sw $t0, -980($fp)
	li $t0, 0
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
	li $t0, 32922
	sw $t0, -1000($fp)
	addi $t0, $fp, -108
	sw $t0, -1004($fp)
	li $t0, 1
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
	li $t0, 44173
	sw $t0, -1024($fp)
	addi $t0, $fp, -108
	sw $t0, -1028($fp)
	li $t0, 2
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
	li $t0, 43064
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1056($fp)
	li $t0, 375
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -1068($fp)
	li $t0, 25152
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -1080($fp)
	li $t0, 27914
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -1092($fp)
	li $t0, 24707
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	sw $t0, -1104($fp)
	li $t0, 35289
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	sw $t0, -1116($fp)
	li $t0, 11208
	sw $t0, -1120($fp)
	addi $t0, $fp, -132
	sw $t0, -1124($fp)
	li $t0, 0
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
	li $t0, 35577
	sw $t0, -1144($fp)
	addi $t0, $fp, -132
	sw $t0, -1148($fp)
	li $t0, 1
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
	li $t0, 61568
	sw $t0, -1168($fp)
	addi $t0, $fp, -132
	sw $t0, -1172($fp)
	li $t0, 2
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
	li $t0, 3673
	sw $t0, -1192($fp)
	addi $t0, $fp, -132
	sw $t0, -1196($fp)
	li $t0, 3
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
	li $t0, 60116
	sw $t0, -1216($fp)
	addi $t0, $fp, -132
	sw $t0, -1220($fp)
	li $t0, 4
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
	li $t0, 59194
	sw $t0, -1240($fp)
	addi $t0, $fp, -132
	sw $t0, -1244($fp)
	li $t0, 5
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
	li $t0, 25840
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	li $t0, 45055
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	li $t0, 56652
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -1296($fp)
	li $t0, 58271
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -1308($fp)
	li $t0, 18149
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -1320($fp)
	li $t0, 45249
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	sw $t0, -1332($fp)
	li $t0, 6305
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	sw $t0, -1344($fp)
	li $t0, 9408
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	sw $t0, -1356($fp)
	li $t0, 7280
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -1368($fp)
	li $t0, 44212
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	sw $t0, -1380($fp)
	li $t0, 5835
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -1392($fp)
	li $t0, 28137
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -1404($fp)
	lw $t0, -464($fp)
	sw $t0, -1408($fp)
	li $t0, 34089
	sw $t0, -1412($fp)
	li $t0, 12700
	sw $t0, -1416($fp)
	lw $t0, -1412($fp)
	lw $t1, -1416($fp)
	add $t0, $t0, $t1
	sw $t0, -1420($fp)
	li $t0, 21493
	sw $t0, -1424($fp)
	li $t0, 63016
	sw $t0, -1428($fp)
	lw $t0, -1424($fp)
	lw $t1, -1428($fp)
	mul $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t0, -1420($fp)
	lw $t1, -1432($fp)
	add $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t1, -1408($fp)
	lw $t2, -1436($fp)
	bne $t1, $t2, label526
	j label527
label526:
label529:
	li $t0, 0
	sw $t0, -1440($fp)
	li $t0, 0
	sw $t0, -1444($fp)
	lw $t0, 4($fp)
	sw $t0, -1448($fp)
	lw $t1, -1448($fp)
	li $t2, 0
	bne $t1, $t2, label536
	j label535
label535:
	li $t0, 1
	sw $t0, -1444($fp)
label536:
	lw $t0, -1052($fp)
	sw $t0, -1452($fp)
	lw $t0, -1444($fp)
	lw $t1, -1452($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1456($fp)
	lw $t0, 16($fp)
	sw $t0, -1460($fp)
	lw $t0, -1364($fp)
	sw $t0, -1464($fp)
	lw $t0, -1460($fp)
	lw $t1, -1464($fp)
	sub $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $t1, -1456($fp)
	lw $t2, -1468($fp)
	bge $t1, $t2, label533
	j label534
label533:
	li $t0, 1
	sw $t0, -1440($fp)
label534:
	li $t0, 11871
	sw $t0, -1472($fp)
	lw $t0, -788($fp)
	sw $t0, -1476($fp)
	lw $t0, -1472($fp)
	lw $t1, -1476($fp)
	mul $t0, $t0, $t1
	sw $t0, -1480($fp)
	lw $t1, -1440($fp)
	lw $t2, -1480($fp)
	bge $t1, $t2, label532
	j label531
label532:
	li $t0, 54415
	sw $t0, -1484($fp)
	lw $t1, -1484($fp)
	li $t2, 0
	bne $t1, $t2, label530
	j label531
label530:
	addi $t0, $fp, -72
	sw $t0, -1488($fp)
	li $t0, 0
	sw $t0, -1492($fp)
	li $t0, 0
	sw $t0, -1496($fp)
	li $t0, 41653
	sw $t0, -1500($fp)
	lw $t0, -704($fp)
	sw $t0, -1504($fp)
	lw $t1, -1500($fp)
	lw $t2, -1504($fp)
	bne $t1, $t2, label542
	j label543
label542:
	li $t0, 1
	sw $t0, -1496($fp)
label543:
	lw $t0, 16($fp)
	sw $t0, -1508($fp)
	lw $t1, -1496($fp)
	lw $t2, -1508($fp)
	beq $t1, $t2, label540
	j label541
label540:
	li $t0, 1
	sw $t0, -1492($fp)
label541:
	li $t0, 4
	lw $t1, -1492($fp)
	mul $t0, $t0, $t1
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	lw $t1, -1488($fp)
	add $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	lw $t1, 0($t0)
	sw $t1, -1520($fp)
	li $t0, 54935
	sw $t0, -1524($fp)
	lw $t0, -1520($fp)
	lw $t1, -1524($fp)
	add $t0, $t0, $t1
	sw $t0, -1528($fp)
	lw $t1, -1528($fp)
	li $t2, 0
	bne $t1, $t2, label537
	j label538
label537:
	li $t0, 0
	sw $t0, -1532($fp)
	li $t0, 0
	sw $t0, -1536($fp)
	li $t0, 1269
	sw $t0, -1540($fp)
	lw $t1, -1540($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label548
label548:
	li $t0, 17314
	sw $t0, -1544($fp)
	lw $t1, -1544($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label547
label546:
	li $t0, 1
	sw $t0, -1536($fp)
label547:
	li $t0, 0
	sw $t0, -1548($fp)
	li $t0, 0
	sw $t0, -1552($fp)
	lw $t0, -1088($fp)
	sw $t0, -1556($fp)
	lw $t1, -1556($fp)
	li $t2, 0
	bne $t1, $t2, label552
	j label551
label551:
	li $t0, 1
	sw $t0, -1552($fp)
label552:
	li $t0, 54790
	sw $t0, -1560($fp)
	lw $t1, -1552($fp)
	lw $t2, -1560($fp)
	blt $t1, $t2, label549
	j label550
label549:
	li $t0, 1
	sw $t0, -1548($fp)
label550:
	li $t0, 0
	sw $t0, -1564($fp)
	lw $t0, 8($fp)
	sw $t0, -1568($fp)
	lw $t0, -1064($fp)
	sw $t0, -1572($fp)
	lw $t1, -1568($fp)
	lw $t2, -1572($fp)
	beq $t1, $t2, label553
	j label554
label553:
	li $t0, 1
	sw $t0, -1564($fp)
label554:
	addi $sp, $sp, -4
	lw $t0, -1536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1564($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1576($fp)
	addi $sp, $sp, 16
	li $t0, 49538
	sw $t0, -1580($fp)
	li $t0, 32591
	sw $t0, -1584($fp)
	lw $t0, -1580($fp)
	lw $t1, -1584($fp)
	sub $t0, $t0, $t1
	sw $t0, -1588($fp)
	li $t0, 0
	sw $t0, -1592($fp)
	li $t0, 36559
	sw $t0, -1596($fp)
	lw $t0, -248($fp)
	sw $t0, -1600($fp)
	lw $t0, -1596($fp)
	lw $t1, -1600($fp)
	sub $t0, $t0, $t1
	sw $t0, -1604($fp)
	li $t0, 28522
	sw $t0, -1608($fp)
	lw $t1, -1604($fp)
	lw $t2, -1608($fp)
	blt $t1, $t2, label555
	j label556
label555:
	li $t0, 1
	sw $t0, -1592($fp)
label556:
	lw $t0, -344($fp)
	sw $t0, -1612($fp)
	li $t0, 0
	lw $t1, -1612($fp)
	sub $t0, $t0, $t1
	sw $t0, -1616($fp)
	li $t0, 0
	sw $t0, -1620($fp)
	li $t0, 13961
	sw $t0, -1624($fp)
	lw $t1, -1624($fp)
	li $t2, 0
	bne $t1, $t2, label557
	j label559
label559:
	lw $t0, -776($fp)
	sw $t0, -1628($fp)
	lw $t1, -1628($fp)
	li $t2, 0
	bne $t1, $t2, label557
	j label558
label557:
	li $t0, 1
	sw $t0, -1620($fp)
label558:
	addi $sp, $sp, -4
	lw $t0, -1588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1620($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1632($fp)
	addi $sp, $sp, 20
	lw $t0, -680($fp)
	sw $t0, -1636($fp)
	lw $t0, -1632($fp)
	lw $t1, -1636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1640($fp)
	lw $t1, -1576($fp)
	lw $t2, -1640($fp)
	ble $t1, $t2, label544
	j label545
label544:
	li $t0, 1
	sw $t0, -1532($fp)
label545:
	j label539
label538:
	li $t0, 0
	sw $t0, -1644($fp)
	addi $t0, $fp, -108
	sw $t0, -1648($fp)
	lw $t0, -452($fp)
	sw $t0, -1652($fp)
	li $t0, 4
	lw $t1, -1652($fp)
	mul $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	lw $t1, -1648($fp)
	add $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	lw $t1, 0($t0)
	sw $t1, -1664($fp)
	lw $t1, -1664($fp)
	li $t2, 0
	bne $t1, $t2, label561
	j label560
label560:
	li $t0, 1
	sw $t0, -1644($fp)
label561:
	li $t0, 0
	sw $t0, -1668($fp)
	lw $t0, -704($fp)
	sw $t0, -1672($fp)
	lw $t0, -1088($fp)
	sw $t0, -1676($fp)
	lw $t0, -1672($fp)
	lw $t1, -1676($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1680($fp)
	lw $t0, -1328($fp)
	sw $t0, -1684($fp)
	lw $t1, -1680($fp)
	lw $t2, -1684($fp)
	beq $t1, $t2, label562
	j label563
label562:
	li $t0, 1
	sw $t0, -1668($fp)
label563:
	li $t0, 0
	sw $t0, -1688($fp)
	li $t0, 44119
	sw $t0, -1692($fp)
	lw $t1, -1692($fp)
	li $t2, 0
	bne $t1, $t2, label564
	j label566
label566:
	lw $t0, -500($fp)
	sw $t0, -1696($fp)
	lw $t1, -1696($fp)
	li $t2, 0
	bne $t1, $t2, label564
	j label565
label564:
	li $t0, 1
	sw $t0, -1688($fp)
label565:
	li $t0, 0
	sw $t0, -1700($fp)
	li $t0, 32195
	sw $t0, -1704($fp)
	lw $t0, -1364($fp)
	sw $t0, -1708($fp)
	lw $t0, -1704($fp)
	lw $t1, -1708($fp)
	mul $t0, $t0, $t1
	sw $t0, -1712($fp)
	lw $t1, -1712($fp)
	li $t2, 0
	bne $t1, $t2, label567
	j label569
label569:
	lw $t0, -476($fp)
	sw $t0, -1716($fp)
	lw $t1, -1716($fp)
	li $t2, 0
	bne $t1, $t2, label567
	j label568
label567:
	li $t0, 1
	sw $t0, -1700($fp)
label568:
	addi $sp, $sp, -4
	lw $t0, -1644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1700($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1720($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -1724($fp)
	lw $t0, -1280($fp)
	sw $t0, -1728($fp)
	lw $t1, -1728($fp)
	li $t2, 0
	bne $t1, $t2, label571
	j label570
label570:
	li $t0, 1
	sw $t0, -1724($fp)
label571:
	lw $t0, -1720($fp)
	lw $t1, -1724($fp)
	mul $t0, $t0, $t1
	sw $t0, -1732($fp)
	addi $t0, $fp, -108
	sw $t0, -1736($fp)
	lw $t0, -1364($fp)
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
	li $t0, 0
	sw $t0, -1756($fp)
	li $t0, 23638
	sw $t0, -1760($fp)
	lw $t0, -236($fp)
	sw $t0, -1764($fp)
	lw $t1, -1760($fp)
	lw $t2, -1764($fp)
	bgt $t1, $t2, label572
	j label574
label574:
	li $t0, 17365
	sw $t0, -1768($fp)
	lw $t1, -1768($fp)
	li $t2, 0
	bne $t1, $t2, label572
	j label573
label572:
	li $t0, 1
	sw $t0, -1756($fp)
label573:
	lw $t0, -692($fp)
	sw $t0, -1772($fp)
	li $t0, 58035
	sw $t0, -1776($fp)
	lw $t0, -1772($fp)
	lw $t1, -1776($fp)
	sub $t0, $t0, $t1
	sw $t0, -1780($fp)
	li $t0, 26249
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -1788($fp)
	addi $sp, $sp, -4
	lw $t0, -1752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1788($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1792($fp)
	addi $sp, $sp, 20
	lw $t0, -1732($fp)
	lw $t1, -1792($fp)
	add $t0, $t0, $t1
	sw $t0, -1796($fp)
	lw $t0, -452($fp)
	sw $t0, -1800($fp)
	li $t0, 51195
	sw $t0, -1804($fp)
	lw $t0, -968($fp)
	sw $t0, -1808($fp)
	lw $t0, -1804($fp)
	lw $t1, -1808($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1812($fp)
	li $t0, 4358
	sw $t0, -1816($fp)
	lw $t0, -1812($fp)
	lw $t1, -1816($fp)
	add $t0, $t0, $t1
	sw $t0, -1820($fp)
	li $t0, 0
	sw $t0, -1824($fp)
	li $t0, 62614
	sw $t0, -1828($fp)
	li $t0, 0
	lw $t1, -1828($fp)
	sub $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t1, -1832($fp)
	li $t2, 0
	bne $t1, $t2, label577
	j label576
label577:
	li $t0, 57076
	sw $t0, -1836($fp)
	lw $t1, -1836($fp)
	li $t2, 0
	bne $t1, $t2, label575
	j label576
label575:
	li $t0, 1
	sw $t0, -1824($fp)
label576:
	li $t0, 0
	sw $t0, -1840($fp)
	lw $t0, -1328($fp)
	sw $t0, -1844($fp)
	lw $t1, -1844($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label578
label578:
	li $t0, 1
	sw $t0, -1840($fp)
label579:
	lw $t0, -500($fp)
	sw $t0, -1848($fp)
	lw $t0, -1840($fp)
	lw $t1, -1848($fp)
	sub $t0, $t0, $t1
	sw $t0, -1852($fp)
	li $t0, 0
	sw $t0, -1856($fp)
	li $t0, 41787
	sw $t0, -1860($fp)
	lw $t1, -1860($fp)
	li $t2, 0
	bne $t1, $t2, label581
	j label580
label580:
	li $t0, 1
	sw $t0, -1856($fp)
label581:
	addi $sp, $sp, -4
	lw $t0, -1820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1856($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1864($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -1868($fp)
	lw $t0, -500($fp)
	sw $t0, -1872($fp)
	li $t0, 50771
	sw $t0, -1876($fp)
	lw $t1, -1872($fp)
	lw $t2, -1876($fp)
	beq $t1, $t2, label582
	j label583
label582:
	li $t0, 1
	sw $t0, -1868($fp)
label583:
	addi $sp, $sp, -4
	lw $t0, -1800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1868($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1880($fp)
	addi $sp, $sp, 16
	lw $t0, -1796($fp)
	lw $t1, -1880($fp)
	sub $t0, $t0, $t1
	sw $t0, -1884($fp)
	lw $ra, -4($fp)
	lw $v0, -1884($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label539:
	j label529
label531:
	j label528
label527:
	li $t0, 35752
	sw $t0, -1888($fp)
	li $t0, 0
	sw $t0, -1892($fp)
	lw $t0, -140($fp)
	sw $t0, -1896($fp)
	lw $t1, -1896($fp)
	li $t2, 0
	bne $t1, $t2, label588
	j label589
label588:
	li $t0, 1
	sw $t0, -1892($fp)
label589:
	lw $t1, -1888($fp)
	lw $t2, -1892($fp)
	blt $t1, $t2, label587
	j label585
label587:
	lw $t0, -716($fp)
	sw $t0, -1900($fp)
	lw $t0, -1364($fp)
	sw $t0, -1904($fp)
	lw $t0, -1900($fp)
	lw $t1, -1904($fp)
	sub $t0, $t0, $t1
	sw $t0, -1908($fp)
	lw $t0, -812($fp)
	sw $t0, -1912($fp)
	lw $t0, -1908($fp)
	lw $t1, -1912($fp)
	add $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t1, -1916($fp)
	li $t2, 0
	bne $t1, $t2, label584
	j label585
label584:
	li $t0, 0
	sw $t0, -1920($fp)
	li $t0, 57031
	sw $t0, -1924($fp)
	li $t0, 0
	sw $t0, -1928($fp)
	li $t0, 0
	sw $t0, -1932($fp)
	addi $t0, $fp, -96
	sw $t0, -1936($fp)
	li $t0, 2
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
	lw $t1, -1952($fp)
	li $t2, 0
	bne $t1, $t2, label595
	j label594
label594:
	li $t0, 1
	sw $t0, -1932($fp)
label595:
	lw $t0, -716($fp)
	sw $t0, -1956($fp)
	li $t0, 4195
	sw $t0, -1960($fp)
	lw $t0, -1956($fp)
	lw $t1, -1960($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1964($fp)
	lw $t1, -1932($fp)
	lw $t2, -1964($fp)
	blt $t1, $t2, label592
	j label593
label592:
	li $t0, 1
	sw $t0, -1928($fp)
label593:
	lw $t1, -1924($fp)
	lw $t2, -1928($fp)
	beq $t1, $t2, label590
	j label591
label590:
	li $t0, 1
	sw $t0, -1920($fp)
label591:
	j label586
label585:
	lw $t0, -824($fp)
	sw $t0, -1968($fp)
	lw $ra, -4($fp)
	lw $v0, -1968($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label586:
label528:
label596:
	li $t0, 53989
	sw $t0, -1972($fp)
	li $t0, 0
	sw $t0, -1976($fp)
	lw $t0, -1076($fp)
	sw $t0, -1980($fp)
	lw $t1, -1980($fp)
	li $t2, 0
	bne $t1, $t2, label600
	j label599
label599:
	li $t0, 1
	sw $t0, -1976($fp)
label600:
	li $t0, 0
	lw $t1, -1976($fp)
	sub $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t0, -1972($fp)
	lw $t1, -1984($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1988($fp)
	lw $t0, -728($fp)
	sw $t0, -1992($fp)
	lw $t1, -1988($fp)
	lw $t2, -1992($fp)
	bne $t1, $t2, label597
	j label598
label597:
label601:
	li $t0, 1786
	sw $t0, -1996($fp)
	li $t0, 16066
	sw $t0, -2000($fp)
	lw $t1, -1996($fp)
	lw $t2, -2000($fp)
	blt $t1, $t2, label602
	j label604
label604:
	li $t0, 42868
	sw $t0, -2004($fp)
	lw $t1, -2004($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label603
label602:
	li $t0, 43439
	sw $t0, -2008($fp)
	li $t0, 0
	lw $t1, -2008($fp)
	sub $t0, $t0, $t1
	sw $t0, -2012($fp)
	li $t0, 5466
	sw $t0, -2016($fp)
	li $t0, 32123
	sw $t0, -2020($fp)
	lw $t0, -2016($fp)
	lw $t1, -2020($fp)
	mul $t0, $t0, $t1
	sw $t0, -2024($fp)
	li $t0, 44709
	sw $t0, -2028($fp)
	lw $t0, -2024($fp)
	lw $t1, -2028($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2032($fp)
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
	lw $t0, -2032($fp)
	lw $t1, -2052($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2056($fp)
	lw $t0, -2012($fp)
	lw $t1, -2056($fp)
	sub $t0, $t0, $t1
	sw $t0, -2060($fp)
	lw $t1, -2060($fp)
	li $t2, 0
	bne $t1, $t2, label605
	j label606
label605:
label608:
	lw $t0, -1340($fp)
	sw $t0, -2064($fp)
	lw $t0, -764($fp)
	sw $t0, -2068($fp)
	lw $t0, -2064($fp)
	lw $t1, -2068($fp)
	mul $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $t1, -2072($fp)
	li $t2, 0
	bne $t1, $t2, label609
	j label610
label609:
	li $t0, 15732
	sw $t0, -2188($fp)
	addi $t0, $fp, -2076
	sw $t0, -2192($fp)
	li $t0, 0
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
	li $t0, 51302
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	sw $t0, -2220($fp)
	li $t0, 30087
	sw $t0, -2224($fp)
	addi $t0, $fp, -2104
	sw $t0, -2228($fp)
	li $t0, 0
	sw $t0, -2232($fp)
	lw $t0, -2232($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2236($fp)
	lw $t0, -2228($fp)
	lw $t1, -2236($fp)
	add $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $t0, -2224($fp)
	lw $t1, -2240($fp)
	sw $t0, 0($t1)
	lw $t0, -2240($fp)
	lw $t1, 0($t0)
	sw $t1, -2244($fp)
	li $t0, 48323
	sw $t0, -2248($fp)
	addi $t0, $fp, -2104
	sw $t0, -2252($fp)
	li $t0, 1
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2260($fp)
	lw $t0, -2252($fp)
	lw $t1, -2260($fp)
	add $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t0, -2248($fp)
	lw $t1, -2264($fp)
	sw $t0, 0($t1)
	lw $t0, -2264($fp)
	lw $t1, 0($t0)
	sw $t1, -2268($fp)
	li $t0, 17962
	sw $t0, -2272($fp)
	addi $t0, $fp, -2104
	sw $t0, -2276($fp)
	li $t0, 2
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2284($fp)
	lw $t0, -2276($fp)
	lw $t1, -2284($fp)
	add $t0, $t0, $t1
	sw $t0, -2288($fp)
	lw $t0, -2272($fp)
	lw $t1, -2288($fp)
	sw $t0, 0($t1)
	lw $t0, -2288($fp)
	lw $t1, 0($t0)
	sw $t1, -2292($fp)
	li $t0, 8670
	sw $t0, -2296($fp)
	addi $t0, $fp, -2104
	sw $t0, -2300($fp)
	li $t0, 3
	sw $t0, -2304($fp)
	lw $t0, -2304($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $t0, -2300($fp)
	lw $t1, -2308($fp)
	add $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -2296($fp)
	lw $t1, -2312($fp)
	sw $t0, 0($t1)
	lw $t0, -2312($fp)
	lw $t1, 0($t0)
	sw $t1, -2316($fp)
	li $t0, 9036
	sw $t0, -2320($fp)
	addi $t0, $fp, -2104
	sw $t0, -2324($fp)
	li $t0, 4
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t0, -2324($fp)
	lw $t1, -2332($fp)
	add $t0, $t0, $t1
	sw $t0, -2336($fp)
	lw $t0, -2320($fp)
	lw $t1, -2336($fp)
	sw $t0, 0($t1)
	lw $t0, -2336($fp)
	lw $t1, 0($t0)
	sw $t1, -2340($fp)
	li $t0, 10461
	sw $t0, -2344($fp)
	addi $t0, $fp, -2104
	sw $t0, -2348($fp)
	li $t0, 5
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2356($fp)
	lw $t0, -2348($fp)
	lw $t1, -2356($fp)
	add $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $t0, -2344($fp)
	lw $t1, -2360($fp)
	sw $t0, 0($t1)
	lw $t0, -2360($fp)
	lw $t1, 0($t0)
	sw $t1, -2364($fp)
	li $t0, 32308
	sw $t0, -2368($fp)
	addi $t0, $fp, -2104
	sw $t0, -2372($fp)
	li $t0, 6
	sw $t0, -2376($fp)
	lw $t0, -2376($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2380($fp)
	lw $t0, -2372($fp)
	lw $t1, -2380($fp)
	add $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -2368($fp)
	lw $t1, -2384($fp)
	sw $t0, 0($t1)
	lw $t0, -2384($fp)
	lw $t1, 0($t0)
	sw $t1, -2388($fp)
	li $t0, 26401
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	sw $t0, -2400($fp)
	li $t0, 61232
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	sw $t0, -2412($fp)
	li $t0, 8559
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	sw $t0, -2424($fp)
	li $t0, 23480
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	sw $t0, -2436($fp)
	li $t0, 52772
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	sw $t0, -2448($fp)
	li $t0, 59755
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	sw $t0, -2460($fp)
	li $t0, 27838
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	sw $t0, -2472($fp)
	li $t0, 22989
	sw $t0, -2476($fp)
	addi $t0, $fp, -2132
	sw $t0, -2480($fp)
	li $t0, 0
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2488($fp)
	lw $t0, -2480($fp)
	lw $t1, -2488($fp)
	add $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $t0, -2476($fp)
	lw $t1, -2492($fp)
	sw $t0, 0($t1)
	lw $t0, -2492($fp)
	lw $t1, 0($t0)
	sw $t1, -2496($fp)
	li $t0, 51250
	sw $t0, -2500($fp)
	addi $t0, $fp, -2132
	sw $t0, -2504($fp)
	li $t0, 1
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2512($fp)
	lw $t0, -2504($fp)
	lw $t1, -2512($fp)
	add $t0, $t0, $t1
	sw $t0, -2516($fp)
	lw $t0, -2500($fp)
	lw $t1, -2516($fp)
	sw $t0, 0($t1)
	lw $t0, -2516($fp)
	lw $t1, 0($t0)
	sw $t1, -2520($fp)
	li $t0, 60334
	sw $t0, -2524($fp)
	addi $t0, $fp, -2132
	sw $t0, -2528($fp)
	li $t0, 2
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $t0, -2528($fp)
	lw $t1, -2536($fp)
	add $t0, $t0, $t1
	sw $t0, -2540($fp)
	lw $t0, -2524($fp)
	lw $t1, -2540($fp)
	sw $t0, 0($t1)
	lw $t0, -2540($fp)
	lw $t1, 0($t0)
	sw $t1, -2544($fp)
	li $t0, 27294
	sw $t0, -2548($fp)
	addi $t0, $fp, -2132
	sw $t0, -2552($fp)
	li $t0, 3
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2560($fp)
	lw $t0, -2552($fp)
	lw $t1, -2560($fp)
	add $t0, $t0, $t1
	sw $t0, -2564($fp)
	lw $t0, -2548($fp)
	lw $t1, -2564($fp)
	sw $t0, 0($t1)
	lw $t0, -2564($fp)
	lw $t1, 0($t0)
	sw $t1, -2568($fp)
	li $t0, 55445
	sw $t0, -2572($fp)
	addi $t0, $fp, -2132
	sw $t0, -2576($fp)
	li $t0, 4
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2584($fp)
	lw $t0, -2576($fp)
	lw $t1, -2584($fp)
	add $t0, $t0, $t1
	sw $t0, -2588($fp)
	lw $t0, -2572($fp)
	lw $t1, -2588($fp)
	sw $t0, 0($t1)
	lw $t0, -2588($fp)
	lw $t1, 0($t0)
	sw $t1, -2592($fp)
	li $t0, 48787
	sw $t0, -2596($fp)
	addi $t0, $fp, -2132
	sw $t0, -2600($fp)
	li $t0, 5
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
	li $t0, 29080
	sw $t0, -2620($fp)
	addi $t0, $fp, -2132
	sw $t0, -2624($fp)
	li $t0, 6
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2632($fp)
	lw $t0, -2624($fp)
	lw $t1, -2632($fp)
	add $t0, $t0, $t1
	sw $t0, -2636($fp)
	lw $t0, -2620($fp)
	lw $t1, -2636($fp)
	sw $t0, 0($t1)
	lw $t0, -2636($fp)
	lw $t1, 0($t0)
	sw $t1, -2640($fp)
	li $t0, 5975
	sw $t0, -2644($fp)
	addi $t0, $fp, -2164
	sw $t0, -2648($fp)
	li $t0, 0
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2656($fp)
	lw $t0, -2648($fp)
	lw $t1, -2656($fp)
	add $t0, $t0, $t1
	sw $t0, -2660($fp)
	lw $t0, -2644($fp)
	lw $t1, -2660($fp)
	sw $t0, 0($t1)
	lw $t0, -2660($fp)
	lw $t1, 0($t0)
	sw $t1, -2664($fp)
	li $t0, 26119
	sw $t0, -2668($fp)
	addi $t0, $fp, -2164
	sw $t0, -2672($fp)
	li $t0, 1
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2680($fp)
	lw $t0, -2672($fp)
	lw $t1, -2680($fp)
	add $t0, $t0, $t1
	sw $t0, -2684($fp)
	lw $t0, -2668($fp)
	lw $t1, -2684($fp)
	sw $t0, 0($t1)
	lw $t0, -2684($fp)
	lw $t1, 0($t0)
	sw $t1, -2688($fp)
	li $t0, 6984
	sw $t0, -2692($fp)
	addi $t0, $fp, -2164
	sw $t0, -2696($fp)
	li $t0, 2
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2704($fp)
	lw $t0, -2696($fp)
	lw $t1, -2704($fp)
	add $t0, $t0, $t1
	sw $t0, -2708($fp)
	lw $t0, -2692($fp)
	lw $t1, -2708($fp)
	sw $t0, 0($t1)
	lw $t0, -2708($fp)
	lw $t1, 0($t0)
	sw $t1, -2712($fp)
	li $t0, 11441
	sw $t0, -2716($fp)
	addi $t0, $fp, -2164
	sw $t0, -2720($fp)
	li $t0, 3
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t0, -2720($fp)
	lw $t1, -2728($fp)
	add $t0, $t0, $t1
	sw $t0, -2732($fp)
	lw $t0, -2716($fp)
	lw $t1, -2732($fp)
	sw $t0, 0($t1)
	lw $t0, -2732($fp)
	lw $t1, 0($t0)
	sw $t1, -2736($fp)
	li $t0, 58242
	sw $t0, -2740($fp)
	addi $t0, $fp, -2164
	sw $t0, -2744($fp)
	li $t0, 4
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2752($fp)
	lw $t0, -2744($fp)
	lw $t1, -2752($fp)
	add $t0, $t0, $t1
	sw $t0, -2756($fp)
	lw $t0, -2740($fp)
	lw $t1, -2756($fp)
	sw $t0, 0($t1)
	lw $t0, -2756($fp)
	lw $t1, 0($t0)
	sw $t1, -2760($fp)
	li $t0, 51693
	sw $t0, -2764($fp)
	addi $t0, $fp, -2164
	sw $t0, -2768($fp)
	li $t0, 5
	sw $t0, -2772($fp)
	lw $t0, -2772($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2776($fp)
	lw $t0, -2768($fp)
	lw $t1, -2776($fp)
	add $t0, $t0, $t1
	sw $t0, -2780($fp)
	lw $t0, -2764($fp)
	lw $t1, -2780($fp)
	sw $t0, 0($t1)
	lw $t0, -2780($fp)
	lw $t1, 0($t0)
	sw $t1, -2784($fp)
	li $t0, 34221
	sw $t0, -2788($fp)
	addi $t0, $fp, -2164
	sw $t0, -2792($fp)
	li $t0, 6
	sw $t0, -2796($fp)
	lw $t0, -2796($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2800($fp)
	lw $t0, -2792($fp)
	lw $t1, -2800($fp)
	add $t0, $t0, $t1
	sw $t0, -2804($fp)
	lw $t0, -2788($fp)
	lw $t1, -2804($fp)
	sw $t0, 0($t1)
	lw $t0, -2804($fp)
	lw $t1, 0($t0)
	sw $t1, -2808($fp)
	li $t0, 38791
	sw $t0, -2812($fp)
	addi $t0, $fp, -2164
	sw $t0, -2816($fp)
	li $t0, 7
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2824($fp)
	lw $t0, -2816($fp)
	lw $t1, -2824($fp)
	add $t0, $t0, $t1
	sw $t0, -2828($fp)
	lw $t0, -2812($fp)
	lw $t1, -2828($fp)
	sw $t0, 0($t1)
	lw $t0, -2828($fp)
	lw $t1, 0($t0)
	sw $t1, -2832($fp)
	li $t0, 1889
	sw $t0, -2836($fp)
	addi $t0, $fp, -2184
	sw $t0, -2840($fp)
	li $t0, 0
	sw $t0, -2844($fp)
	lw $t0, -2844($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2848($fp)
	lw $t0, -2840($fp)
	lw $t1, -2848($fp)
	add $t0, $t0, $t1
	sw $t0, -2852($fp)
	lw $t0, -2836($fp)
	lw $t1, -2852($fp)
	sw $t0, 0($t1)
	lw $t0, -2852($fp)
	lw $t1, 0($t0)
	sw $t1, -2856($fp)
	li $t0, 19988
	sw $t0, -2860($fp)
	addi $t0, $fp, -2184
	sw $t0, -2864($fp)
	li $t0, 1
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2872($fp)
	lw $t0, -2864($fp)
	lw $t1, -2872($fp)
	add $t0, $t0, $t1
	sw $t0, -2876($fp)
	lw $t0, -2860($fp)
	lw $t1, -2876($fp)
	sw $t0, 0($t1)
	lw $t0, -2876($fp)
	lw $t1, 0($t0)
	sw $t1, -2880($fp)
	li $t0, 3342
	sw $t0, -2884($fp)
	addi $t0, $fp, -2184
	sw $t0, -2888($fp)
	li $t0, 2
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2896($fp)
	lw $t0, -2888($fp)
	lw $t1, -2896($fp)
	add $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $t0, -2884($fp)
	lw $t1, -2900($fp)
	sw $t0, 0($t1)
	lw $t0, -2900($fp)
	lw $t1, 0($t0)
	sw $t1, -2904($fp)
	li $t0, 50212
	sw $t0, -2908($fp)
	addi $t0, $fp, -2184
	sw $t0, -2912($fp)
	li $t0, 3
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2920($fp)
	lw $t0, -2912($fp)
	lw $t1, -2920($fp)
	add $t0, $t0, $t1
	sw $t0, -2924($fp)
	lw $t0, -2908($fp)
	lw $t1, -2924($fp)
	sw $t0, 0($t1)
	lw $t0, -2924($fp)
	lw $t1, 0($t0)
	sw $t1, -2928($fp)
	li $t0, 37950
	sw $t0, -2932($fp)
	addi $t0, $fp, -2184
	sw $t0, -2936($fp)
	li $t0, 4
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2944($fp)
	lw $t0, -2936($fp)
	lw $t1, -2944($fp)
	add $t0, $t0, $t1
	sw $t0, -2948($fp)
	lw $t0, -2932($fp)
	lw $t1, -2948($fp)
	sw $t0, 0($t1)
	lw $t0, -2948($fp)
	lw $t1, 0($t0)
	sw $t1, -2952($fp)
label611:
	li $t0, 0
	sw $t0, -2956($fp)
	lw $t0, -500($fp)
	sw $t0, -2960($fp)
	li $t0, 0
	sw $t0, -2964($fp)
	lw $t0, -1400($fp)
	sw $t0, -2968($fp)
	lw $t1, -2968($fp)
	li $t2, 0
	bne $t1, $t2, label616
	j label618
label618:
	lw $t0, -2420($fp)
	sw $t0, -2972($fp)
	lw $t1, -2972($fp)
	li $t2, 0
	bne $t1, $t2, label616
	j label617
label616:
	li $t0, 1
	sw $t0, -2964($fp)
label617:
	li $t0, 40202
	sw $t0, -2976($fp)
	li $t0, 0
	lw $t1, -2976($fp)
	sub $t0, $t0, $t1
	sw $t0, -2980($fp)
	li $t0, 0
	sw $t0, -2984($fp)
	li $t0, 0
	sw $t0, -2988($fp)
	addi $t0, $fp, -28
	sw $t0, -2992($fp)
	lw $t0, 12($fp)
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
	lw $t1, -3008($fp)
	li $t2, 0
	bne $t1, $t2, label623
	j label622
label622:
	li $t0, 1
	sw $t0, -2988($fp)
label623:
	li $t0, 0
	sw $t0, -3012($fp)
	addi $t0, $fp, -2132
	sw $t0, -3016($fp)
	li $t0, 2
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
	li $t0, 41562
	sw $t0, -3036($fp)
	lw $t1, -3032($fp)
	lw $t2, -3036($fp)
	beq $t1, $t2, label624
	j label625
label624:
	li $t0, 1
	sw $t0, -3012($fp)
label625:
	addi $t0, $fp, -72
	sw $t0, -3040($fp)
	li $t0, 6
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
	li $t0, 10064
	sw $t0, -3060($fp)
	li $t0, 0
	lw $t1, -3060($fp)
	sub $t0, $t0, $t1
	sw $t0, -3064($fp)
	li $t0, 52156
	sw $t0, -3068($fp)
	lw $t0, -3064($fp)
	lw $t1, -3068($fp)
	add $t0, $t0, $t1
	sw $t0, -3072($fp)
	li $t0, 0
	sw $t0, -3076($fp)
	li $t0, 49481
	sw $t0, -3080($fp)
	li $t0, 45172
	sw $t0, -3084($fp)
	lw $t0, -3080($fp)
	lw $t1, -3084($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3088($fp)
	lw $t1, -3088($fp)
	li $t2, 0
	bne $t1, $t2, label628
	j label627
label628:
	li $t0, 28697
	sw $t0, -3092($fp)
	lw $t1, -3092($fp)
	li $t2, 0
	bne $t1, $t2, label626
	j label627
label626:
	li $t0, 1
	sw $t0, -3076($fp)
label627:
	li $t0, 0
	sw $t0, -3096($fp)
	li $t0, 694
	sw $t0, -3100($fp)
	li $t0, 16092
	sw $t0, -3104($fp)
	lw $t0, -3100($fp)
	lw $t1, -3104($fp)
	sub $t0, $t0, $t1
	sw $t0, -3108($fp)
	li $t0, 22721
	sw $t0, -3112($fp)
	lw $t1, -3108($fp)
	lw $t2, -3112($fp)
	beq $t1, $t2, label629
	j label630
label629:
	li $t0, 1
	sw $t0, -3096($fp)
label630:
	addi $sp, $sp, -4
	lw $t0, -3056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3096($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3116($fp)
	addi $sp, $sp, 20
	lw $t0, -1352($fp)
	sw $t0, -3120($fp)
	lw $t0, -3116($fp)
	lw $t1, -3120($fp)
	add $t0, $t0, $t1
	sw $t0, -3124($fp)
	addi $sp, $sp, -4
	lw $t0, -2988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3124($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3128($fp)
	addi $sp, $sp, 16
	lw $t1, -3128($fp)
	li $t2, 0
	bne $t1, $t2, label621
	j label620
label621:
	lw $t0, -1076($fp)
	sw $t0, -3132($fp)
	lw $t1, -3132($fp)
	li $t2, 0
	bne $t1, $t2, label619
	j label620
label619:
	li $t0, 1
	sw $t0, -2984($fp)
label620:
	li $t0, 0
	sw $t0, -3136($fp)
	li $t0, 0
	sw $t0, -3140($fp)
	lw $t0, -2420($fp)
	sw $t0, -3144($fp)
	lw $t1, -3144($fp)
	li $t2, 0
	bne $t1, $t2, label633
	j label636
label636:
	lw $t0, -248($fp)
	sw $t0, -3148($fp)
	lw $t1, -3148($fp)
	li $t2, 0
	bne $t1, $t2, label633
	j label635
label635:
	li $t0, 32812
	sw $t0, -3152($fp)
	lw $t1, -3152($fp)
	li $t2, 0
	bne $t1, $t2, label633
	j label634
label633:
	li $t0, 1
	sw $t0, -3140($fp)
label634:
	lw $t0, -2432($fp)
	sw $t0, -3156($fp)
	lw $t0, -3156($fp)
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	sw $t0, -3160($fp)
	li $t0, 0
	sw $t0, -3164($fp)
	lw $t0, -488($fp)
	sw $t0, -3168($fp)
	lw $t1, -3168($fp)
	li $t2, 0
	bne $t1, $t2, label637
	j label638
label637:
	li $t0, 1
	sw $t0, -3164($fp)
label638:
	li $t0, 0
	sw $t0, -3172($fp)
	li $t0, 5896
	sw $t0, -3176($fp)
	lw $t0, -464($fp)
	sw $t0, -3180($fp)
	lw $t0, -3176($fp)
	lw $t1, -3180($fp)
	sub $t0, $t0, $t1
	sw $t0, -3184($fp)
	li $t0, 54333
	sw $t0, -3188($fp)
	lw $t1, -3184($fp)
	lw $t2, -3188($fp)
	beq $t1, $t2, label639
	j label640
label639:
	li $t0, 1
	sw $t0, -3172($fp)
label640:
	addi $sp, $sp, -4
	lw $t0, -3140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3172($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3192($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -3196($fp)
	li $t0, 47098
	sw $t0, -3200($fp)
	lw $t0, -764($fp)
	sw $t0, -3204($fp)
	lw $t1, -3200($fp)
	lw $t2, -3204($fp)
	beq $t1, $t2, label641
	j label643
label643:
	lw $t0, -332($fp)
	sw $t0, -3208($fp)
	lw $t1, -3208($fp)
	li $t2, 0
	bne $t1, $t2, label641
	j label642
label641:
	li $t0, 1
	sw $t0, -3196($fp)
label642:
	lw $t0, -2408($fp)
	sw $t0, -3212($fp)
	li $t0, 0
	lw $t1, -3212($fp)
	sub $t0, $t0, $t1
	sw $t0, -3216($fp)
	li $t0, 43593
	sw $t0, -3220($fp)
	lw $t0, -3216($fp)
	lw $t1, -3220($fp)
	add $t0, $t0, $t1
	sw $t0, -3224($fp)
	li $t0, 0
	sw $t0, -3228($fp)
	lw $t0, -956($fp)
	sw $t0, -3232($fp)
	li $t0, 0
	lw $t1, -3232($fp)
	sub $t0, $t0, $t1
	sw $t0, -3236($fp)
	li $t0, 52879
	sw $t0, -3240($fp)
	lw $t1, -3236($fp)
	lw $t2, -3240($fp)
	ble $t1, $t2, label644
	j label645
label644:
	li $t0, 1
	sw $t0, -3228($fp)
label645:
	li $t0, 20113
	sw $t0, -3244($fp)
	li $t0, 44108
	sw $t0, -3248($fp)
	lw $t0, -3244($fp)
	lw $t1, -3248($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3252($fp)
	lw $t0, -1268($fp)
	sw $t0, -3256($fp)
	lw $t0, -3252($fp)
	lw $t1, -3256($fp)
	mul $t0, $t0, $t1
	sw $t0, -3260($fp)
	li $t0, 0
	sw $t0, -3264($fp)
	lw $t0, -1364($fp)
	sw $t0, -3268($fp)
	lw $t0, -800($fp)
	sw $t0, -3272($fp)
	lw $t0, -3268($fp)
	lw $t1, -3272($fp)
	mul $t0, $t0, $t1
	sw $t0, -3276($fp)
	li $t0, 44320
	sw $t0, -3280($fp)
	lw $t1, -3276($fp)
	lw $t2, -3280($fp)
	blt $t1, $t2, label646
	j label647
label646:
	li $t0, 1
	sw $t0, -3264($fp)
label647:
	li $t0, 48411
	sw $t0, -3284($fp)
	li $t0, 0
	lw $t1, -3284($fp)
	sub $t0, $t0, $t1
	sw $t0, -3288($fp)
	addi $sp, $sp, -4
	lw $t0, -3228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3288($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3292($fp)
	addi $sp, $sp, 20
	lw $t0, -1064($fp)
	sw $t0, -3296($fp)
	lw $t0, -3292($fp)
	lw $t1, -3296($fp)
	mul $t0, $t0, $t1
	sw $t0, -3300($fp)
	li $t0, 0
	sw $t0, -3304($fp)
	lw $t0, -332($fp)
	sw $t0, -3308($fp)
	li $t0, 12012
	sw $t0, -3312($fp)
	lw $t0, -3308($fp)
	lw $t1, -3312($fp)
	mul $t0, $t0, $t1
	sw $t0, -3316($fp)
	lw $t1, -3316($fp)
	li $t2, 0
	bne $t1, $t2, label650
	j label649
label650:
	li $t0, 59248
	sw $t0, -3320($fp)
	lw $t1, -3320($fp)
	li $t2, 0
	bne $t1, $t2, label648
	j label649
label648:
	li $t0, 1
	sw $t0, -3304($fp)
label649:
	addi $sp, $sp, -4
	lw $t0, -3224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3304($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3324($fp)
	addi $sp, $sp, 16
	li $t0, 31344
	sw $t0, -3328($fp)
	lw $t0, -3324($fp)
	lw $t1, -3328($fp)
	mul $t0, $t0, $t1
	sw $t0, -3332($fp)
	li $t0, 0
	sw $t0, -3336($fp)
	lw $t0, -1316($fp)
	sw $t0, -3340($fp)
	lw $t1, -3340($fp)
	li $t2, 0
	bne $t1, $t2, label654
	j label653
label654:
	lw $t0, -680($fp)
	sw $t0, -3344($fp)
	lw $t1, -3344($fp)
	li $t2, 0
	bne $t1, $t2, label651
	j label653
label653:
	lw $t0, -224($fp)
	sw $t0, -3348($fp)
	lw $t1, -3348($fp)
	li $t2, 0
	bne $t1, $t2, label651
	j label652
label651:
	li $t0, 1
	sw $t0, -3336($fp)
label652:
	addi $sp, $sp, -4
	lw $t0, -3192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3336($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3352($fp)
	addi $sp, $sp, 20
	lw $t0, -1364($fp)
	sw $t0, -3356($fp)
	lw $t1, -3352($fp)
	lw $t2, -3356($fp)
	beq $t1, $t2, label631
	j label632
label631:
	li $t0, 1
	sw $t0, -3136($fp)
label632:
	addi $sp, $sp, -4
	lw $t0, -2964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3136($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3360($fp)
	addi $sp, $sp, 20
	lw $t0, -2960($fp)
	lw $t1, -3360($fp)
	mul $t0, $t0, $t1
	sw $t0, -3364($fp)
	li $t0, 28812
	sw $t0, -3368($fp)
	li $t0, 44904
	sw $t0, -3372($fp)
	lw $t0, -3368($fp)
	lw $t1, -3372($fp)
	add $t0, $t0, $t1
	sw $t0, -3376($fp)
	lw $t1, -3364($fp)
	lw $t2, -3376($fp)
	bge $t1, $t2, label614
	j label615
label614:
	li $t0, 1
	sw $t0, -2956($fp)
label615:
	addi $t0, $fp, -16
	sw $t0, -3380($fp)
	lw $t0, -248($fp)
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -3388($fp)
	li $t0, 4
	lw $t1, -3388($fp)
	mul $t0, $t0, $t1
	sw $t0, -3392($fp)
	lw $t0, -3392($fp)
	lw $t1, -3380($fp)
	add $t0, $t0, $t1
	sw $t0, -3396($fp)
	lw $t0, -3396($fp)
	lw $t1, 0($t0)
	sw $t1, -3400($fp)
	lw $t1, -2956($fp)
	lw $t2, -3400($fp)
	beq $t1, $t2, label612
	j label613
label612:
	lw $t0, -452($fp)
	sw $t0, -3404($fp)
	lw $t1, -3404($fp)
	li $t2, 0
	bne $t1, $t2, label655
	j label656
label655:
label658:
	addi $t0, $fp, -2076
	sw $t0, -3408($fp)
	lw $t0, -728($fp)
	sw $t0, -3412($fp)
	li $t0, 24878
	sw $t0, -3416($fp)
	lw $t0, -3412($fp)
	lw $t1, -3416($fp)
	mul $t0, $t0, $t1
	sw $t0, -3420($fp)
	li $t0, 1226
	sw $t0, -3424($fp)
	lw $t0, -3420($fp)
	lw $t1, -3424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3428($fp)
	li $t0, 4
	lw $t1, -3428($fp)
	mul $t0, $t0, $t1
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	lw $t1, -3408($fp)
	add $t0, $t0, $t1
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	lw $t1, 0($t0)
	sw $t1, -3440($fp)
	lw $t0, -1316($fp)
	sw $t0, -3444($fp)
	li $t0, 16761
	sw $t0, -3448($fp)
	lw $t0, -3444($fp)
	lw $t1, -3448($fp)
	mul $t0, $t0, $t1
	sw $t0, -3452($fp)
	lw $t0, -1100($fp)
	sw $t0, -3456($fp)
	lw $t0, -3452($fp)
	lw $t1, -3456($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3460($fp)
	addi $t0, $fp, -28
	sw $t0, -3464($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -3484($fp)
	li $t0, 38704
	sw $t0, -3488($fp)
	li $t0, 0
	lw $t1, -3488($fp)
	sub $t0, $t0, $t1
	sw $t0, -3492($fp)
	lw $t0, -476($fp)
	sw $t0, -3496($fp)
	lw $t1, -3492($fp)
	lw $t2, -3496($fp)
	bge $t1, $t2, label661
	j label662
label661:
	li $t0, 1
	sw $t0, -3484($fp)
label662:
	li $t0, 0
	sw $t0, -3500($fp)
	lw $t0, -1052($fp)
	sw $t0, -3504($fp)
	lw $t0, -2468($fp)
	sw $t0, -3508($fp)
	lw $t1, -3504($fp)
	lw $t2, -3508($fp)
	beq $t1, $t2, label663
	j label664
label663:
	li $t0, 1
	sw $t0, -3500($fp)
label664:
	li $t0, 35700
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -3516($fp)
	li $t0, 56916
	sw $t0, -3520($fp)
	li $t0, 18590
	sw $t0, -3524($fp)
	lw $t0, -3520($fp)
	lw $t1, -3524($fp)
	mul $t0, $t0, $t1
	sw $t0, -3528($fp)
	li $t0, 1
	sw $t0, -3532($fp)
	lw $t0, -3528($fp)
	lw $t1, -3532($fp)
	mul $t0, $t0, $t1
	sw $t0, -3536($fp)
	addi $sp, $sp, -4
	lw $t0, -3484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3536($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3540($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -3544($fp)
	lw $t0, -1376($fp)
	sw $t0, -3548($fp)
	lw $t1, -3548($fp)
	li $t2, 0
	bne $t1, $t2, label665
	j label666
label665:
	li $t0, 1
	sw $t0, -3544($fp)
label666:
	addi $sp, $sp, -4
	lw $t0, -3460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3544($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3552($fp)
	addi $sp, $sp, 20
	lw $t0, -3440($fp)
	lw $t1, -3552($fp)
	mul $t0, $t0, $t1
	sw $t0, -3556($fp)
	lw $t1, -3556($fp)
	li $t2, 0
	bne $t1, $t2, label659
	j label660
label659:
	li $t0, 59554
	sw $t0, -3560($fp)
	addi $t0, $fp, -72
	sw $t0, -3564($fp)
	li $t0, 0
	sw $t0, -3568($fp)
	lw $t0, -344($fp)
	sw $t0, -3572($fp)
	lw $t1, -3572($fp)
	li $t2, 0
	bne $t1, $t2, label669
	j label668
label669:
	lw $t0, 12($fp)
	sw $t0, -3576($fp)
	lw $t1, -3576($fp)
	li $t2, 0
	bne $t1, $t2, label667
	j label668
label667:
	li $t0, 1
	sw $t0, -3568($fp)
label668:
	li $t0, 4
	lw $t1, -3568($fp)
	mul $t0, $t0, $t1
	sw $t0, -3580($fp)
	lw $t0, -3580($fp)
	lw $t1, -3564($fp)
	add $t0, $t0, $t1
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	lw $t1, 0($t0)
	sw $t1, -3588($fp)
	lw $t0, -3560($fp)
	lw $t1, -3588($fp)
	add $t0, $t0, $t1
	sw $t0, -3592($fp)
	j label658
label660:
	j label657
label656:
	lw $t0, -2216($fp)
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	sw $t0, -3600($fp)
	li $t0, 23351
	sw $t0, -3604($fp)
	li $t0, 37418
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -3612($fp)
	li $t0, 0
	sw $t0, -3616($fp)
	li $t0, 4606
	sw $t0, -3620($fp)
	li $t0, 22657
	sw $t0, -3624($fp)
	lw $t1, -3620($fp)
	lw $t2, -3624($fp)
	blt $t1, $t2, label672
	j label671
label672:
	li $t0, 48351
	sw $t0, -3628($fp)
	lw $t1, -3628($fp)
	li $t2, 0
	bne $t1, $t2, label670
	j label671
label670:
	li $t0, 1
	sw $t0, -3616($fp)
label671:
	addi $sp, $sp, -4
	lw $t0, -3600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3616($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3632($fp)
	addi $sp, $sp, 20
label657:
	j label611
label613:
	addi $t0, $fp, -2104
	sw $t0, -3636($fp)
	li $t0, 0
	sw $t0, -3640($fp)
	lw $t0, -2396($fp)
	sw $t0, -3644($fp)
	lw $t0, -332($fp)
	sw $t0, -3648($fp)
	lw $t0, -3644($fp)
	lw $t1, -3648($fp)
	mul $t0, $t0, $t1
	sw $t0, -3652($fp)
	lw $t0, -452($fp)
	sw $t0, -3656($fp)
	lw $t0, -3652($fp)
	lw $t1, -3656($fp)
	sub $t0, $t0, $t1
	sw $t0, -3660($fp)
	lw $t1, -3660($fp)
	li $t2, 0
	bne $t1, $t2, label675
	j label674
label675:
	lw $t0, -500($fp)
	sw $t0, -3664($fp)
	lw $t1, -3664($fp)
	li $t2, 0
	bne $t1, $t2, label673
	j label674
label673:
	li $t0, 1
	sw $t0, -3640($fp)
label674:
	li $t0, 4
	lw $t1, -3640($fp)
	mul $t0, $t0, $t1
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	lw $t1, -3636($fp)
	add $t0, $t0, $t1
	sw $t0, -3672($fp)
	lw $t0, -3672($fp)
	lw $t1, 0($t0)
	sw $t1, -3676($fp)
	lw $t0, -332($fp)
	sw $t0, -3680($fp)
	li $t0, 0
	sw $t0, -3684($fp)
	li $t0, 44080
	sw $t0, -3688($fp)
	li $t0, 23301
	sw $t0, -3692($fp)
	lw $t0, -3688($fp)
	lw $t1, -3692($fp)
	mul $t0, $t0, $t1
	sw $t0, -3696($fp)
	li $t0, 17361
	sw $t0, -3700($fp)
	lw $t1, -3696($fp)
	lw $t2, -3700($fp)
	bne $t1, $t2, label679
	j label680
label679:
	li $t0, 1
	sw $t0, -3684($fp)
label680:
	li $t0, 0
	sw $t0, -3704($fp)
	li $t0, 7296
	sw $t0, -3708($fp)
	lw $t0, -2444($fp)
	sw $t0, -3712($fp)
	lw $t1, -3708($fp)
	lw $t2, -3712($fp)
	bne $t1, $t2, label681
	j label683
label683:
	lw $t0, -2456($fp)
	sw $t0, -3716($fp)
	lw $t1, -3716($fp)
	li $t2, 0
	bne $t1, $t2, label681
	j label682
label681:
	li $t0, 1
	sw $t0, -3704($fp)
label682:
	li $t0, 0
	sw $t0, -3720($fp)
	lw $t0, -344($fp)
	sw $t0, -3724($fp)
	lw $t1, -3724($fp)
	li $t2, 0
	bne $t1, $t2, label685
	j label684
label684:
	li $t0, 1
	sw $t0, -3720($fp)
label685:
	li $t0, 0
	lw $t1, -3720($fp)
	sub $t0, $t0, $t1
	sw $t0, -3728($fp)
	addi $sp, $sp, -4
	lw $t0, -3684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3728($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3732($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -3736($fp)
	li $t0, 60140
	sw $t0, -3740($fp)
	lw $t1, -3740($fp)
	li $t2, 0
	bne $t1, $t2, label687
	j label686
label686:
	li $t0, 1
	sw $t0, -3736($fp)
label687:
	li $t0, 0
	sw $t0, -3744($fp)
	lw $t0, -500($fp)
	sw $t0, -3748($fp)
	li $t0, 64443
	sw $t0, -3752($fp)
	lw $t0, -3748($fp)
	lw $t1, -3752($fp)
	add $t0, $t0, $t1
	sw $t0, -3756($fp)
	lw $t0, -1268($fp)
	sw $t0, -3760($fp)
	lw $t1, -3756($fp)
	lw $t2, -3760($fp)
	ble $t1, $t2, label688
	j label689
label688:
	li $t0, 1
	sw $t0, -3744($fp)
label689:
	addi $sp, $sp, -4
	lw $t0, -3732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3744($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3764($fp)
	addi $sp, $sp, 16
	lw $t1, -3680($fp)
	lw $t2, -3764($fp)
	bgt $t1, $t2, label676
	j label677
label676:
	li $t0, 0
	sw $t0, -3768($fp)
	li $t0, 0
	sw $t0, -3772($fp)
	li $t0, 21613
	sw $t0, -3776($fp)
	lw $t1, -3776($fp)
	li $t2, 0
	bne $t1, $t2, label696
	j label695
label695:
	li $t0, 1
	sw $t0, -3772($fp)
label696:
	lw $t0, -1064($fp)
	sw $t0, -3780($fp)
	lw $t1, -3772($fp)
	lw $t2, -3780($fp)
	ble $t1, $t2, label693
	j label694
label693:
	li $t0, 1
	sw $t0, -3768($fp)
label694:
	li $t0, 0
	sw $t0, -3784($fp)
	li $t0, 36765
	sw $t0, -3788($fp)
	lw $t0, -1076($fp)
	sw $t0, -3792($fp)
	lw $t0, -3788($fp)
	lw $t1, -3792($fp)
	add $t0, $t0, $t1
	sw $t0, -3796($fp)
	lw $t1, -3796($fp)
	li $t2, 0
	bne $t1, $t2, label699
	j label698
label699:
	li $t0, 32442
	sw $t0, -3800($fp)
	lw $t1, -3800($fp)
	li $t2, 0
	bne $t1, $t2, label697
	j label698
label697:
	li $t0, 1
	sw $t0, -3784($fp)
label698:
	li $t0, 0
	sw $t0, -3804($fp)
	li $t0, 41062
	sw $t0, -3808($fp)
	li $t0, 0
	lw $t1, -3808($fp)
	sub $t0, $t0, $t1
	sw $t0, -3812($fp)
	li $t0, 3023
	sw $t0, -3816($fp)
	lw $t1, -3812($fp)
	lw $t2, -3816($fp)
	blt $t1, $t2, label700
	j label701
label700:
	li $t0, 1
	sw $t0, -3804($fp)
label701:
	li $t0, 0
	sw $t0, -3820($fp)
	li $t0, 0
	sw $t0, -3824($fp)
	li $t0, 35539
	sw $t0, -3828($fp)
	lw $t0, -1268($fp)
	sw $t0, -3832($fp)
	lw $t1, -3828($fp)
	lw $t2, -3832($fp)
	blt $t1, $t2, label704
	j label705
label704:
	li $t0, 1
	sw $t0, -3824($fp)
label705:
	lw $t0, -2420($fp)
	sw $t0, -3836($fp)
	lw $t1, -3824($fp)
	lw $t2, -3836($fp)
	bgt $t1, $t2, label702
	j label703
label702:
	li $t0, 1
	sw $t0, -3820($fp)
label703:
	addi $sp, $sp, -4
	lw $t0, -3768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3820($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3840($fp)
	addi $sp, $sp, 20
	li $t0, 20867
	sw $t0, -3844($fp)
	lw $t0, -3840($fp)
	lw $t1, -3844($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3848($fp)
	li $t0, 0
	sw $t0, -3852($fp)
	li $t0, 0
	sw $t0, -3856($fp)
	lw $t0, 12($fp)
	sw $t0, -3860($fp)
	li $t0, 0
	lw $t1, -3860($fp)
	sub $t0, $t0, $t1
	sw $t0, -3864($fp)
	lw $t1, -3864($fp)
	li $t2, 0
	bne $t1, $t2, label709
	j label711
label711:
	li $t0, 43680
	sw $t0, -3868($fp)
	lw $t1, -3868($fp)
	li $t2, 0
	bne $t1, $t2, label709
	j label710
label709:
	li $t0, 1
	sw $t0, -3856($fp)
label710:
	li $t0, 0
	sw $t0, -3872($fp)
	lw $t0, -716($fp)
	sw $t0, -3876($fp)
	lw $t1, -3876($fp)
	li $t2, 0
	bne $t1, $t2, label712
	j label715
label715:
	li $t0, 61694
	sw $t0, -3880($fp)
	lw $t1, -3880($fp)
	li $t2, 0
	bne $t1, $t2, label712
	j label714
label714:
	lw $t0, -824($fp)
	sw $t0, -3884($fp)
	lw $t1, -3884($fp)
	li $t2, 0
	bne $t1, $t2, label712
	j label713
label712:
	li $t0, 1
	sw $t0, -3872($fp)
label713:
	li $t0, 0
	sw $t0, -3888($fp)
	li $t0, 20132
	sw $t0, -3892($fp)
	li $t0, 3478
	sw $t0, -3896($fp)
	lw $t0, -3892($fp)
	lw $t1, -3896($fp)
	sub $t0, $t0, $t1
	sw $t0, -3900($fp)
	li $t0, 6727
	sw $t0, -3904($fp)
	lw $t1, -3900($fp)
	lw $t2, -3904($fp)
	bge $t1, $t2, label716
	j label717
label716:
	li $t0, 1
	sw $t0, -3888($fp)
label717:
	addi $t0, $fp, -76
	sw $t0, -3908($fp)
	lw $t0, -224($fp)
	sw $t0, -3912($fp)
	li $t0, 4
	lw $t1, -3912($fp)
	mul $t0, $t0, $t1
	sw $t0, -3916($fp)
	lw $t0, -3916($fp)
	lw $t1, -3908($fp)
	add $t0, $t0, $t1
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	lw $t1, 0($t0)
	sw $t1, -3924($fp)
	addi $sp, $sp, -4
	lw $t0, -3856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3924($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3928($fp)
	addi $sp, $sp, 20
	lw $t1, -3928($fp)
	li $t2, 0
	bne $t1, $t2, label706
	j label708
label708:
	lw $t0, -476($fp)
	sw $t0, -3932($fp)
	lw $t1, -3932($fp)
	li $t2, 0
	bne $t1, $t2, label706
	j label707
label706:
	li $t0, 1
	sw $t0, -3852($fp)
label707:
	addi $t0, $fp, -132
	sw $t0, -3936($fp)
	li $t0, 3
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
	addi $sp, $sp, -4
	lw $t0, -3848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3952($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3956($fp)
	addi $sp, $sp, 16
	li $t0, 2606
	sw $t0, -3960($fp)
	lw $t0, -3956($fp)
	lw $t1, -3960($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3964($fp)
	lw $t1, -3964($fp)
	li $t2, 0
	bne $t1, $t2, label690
	j label691
label690:
	li $t0, 0
	sw $t0, -3968($fp)
	lw $t0, -1064($fp)
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -3976($fp)
	li $t0, 25649
	sw $t0, -3980($fp)
	li $t0, 11543
	sw $t0, -3984($fp)
	lw $t0, -3980($fp)
	lw $t1, -3984($fp)
	mul $t0, $t0, $t1
	sw $t0, -3988($fp)
	li $t0, 43094
	sw $t0, -3992($fp)
	lw $t0, -3988($fp)
	lw $t1, -3992($fp)
	add $t0, $t0, $t1
	sw $t0, -3996($fp)
	lw $t0, -1052($fp)
	sw $t0, -4000($fp)
	li $t0, 60317
	sw $t0, -4004($fp)
	li $t0, 1
	sw $t0, -4008($fp)
	lw $t0, -4004($fp)
	lw $t1, -4008($fp)
	mul $t0, $t0, $t1
	sw $t0, -4012($fp)
	lw $t0, -1364($fp)
	sw $t0, -4016($fp)
	lw $t0, -4012($fp)
	lw $t1, -4016($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4020($fp)
	addi $sp, $sp, -4
	lw $t0, -3976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4020($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4024($fp)
	addi $sp, $sp, 20
	lw $t1, -4024($fp)
	li $t2, 0
	bne $t1, $t2, label719
	j label718
label718:
	li $t0, 1
	sw $t0, -3968($fp)
label719:
	li $t0, 30255
	sw $t0, -4028($fp)
	lw $t0, -3968($fp)
	lw $t1, -4028($fp)
	add $t0, $t0, $t1
	sw $t0, -4032($fp)
	j label692
label691:
	li $t0, 0
	sw $t0, -4036($fp)
	li $t0, 3361
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -4044($fp)
	lw $t0, -2456($fp)
	sw $t0, -4048($fp)
	lw $t0, -1268($fp)
	sw $t0, -4052($fp)
	lw $t0, -4048($fp)
	lw $t1, -4052($fp)
	sub $t0, $t0, $t1
	sw $t0, -4056($fp)
	li $t0, 64848
	sw $t0, -4060($fp)
	lw $t0, -4056($fp)
	lw $t1, -4060($fp)
	sub $t0, $t0, $t1
	sw $t0, -4064($fp)
	li $t0, 0
	sw $t0, -4068($fp)
	li $t0, 24817
	sw $t0, -4072($fp)
	lw $t0, -236($fp)
	sw $t0, -4076($fp)
	lw $t0, -4072($fp)
	lw $t1, -4076($fp)
	sub $t0, $t0, $t1
	sw $t0, -4080($fp)
	lw $t1, -4080($fp)
	li $t2, 0
	bne $t1, $t2, label722
	j label724
label724:
	li $t0, 62278
	sw $t0, -4084($fp)
	lw $t1, -4084($fp)
	li $t2, 0
	bne $t1, $t2, label722
	j label723
label722:
	li $t0, 1
	sw $t0, -4068($fp)
label723:
	li $t0, 0
	sw $t0, -4088($fp)
	li $t0, 0
	sw $t0, -4092($fp)
	lw $t0, -332($fp)
	sw $t0, -4096($fp)
	li $t0, 57552
	sw $t0, -4100($fp)
	lw $t1, -4096($fp)
	lw $t2, -4100($fp)
	bge $t1, $t2, label727
	j label728
label727:
	li $t0, 1
	sw $t0, -4092($fp)
label728:
	lw $t0, -1112($fp)
	sw $t0, -4104($fp)
	lw $t1, -4092($fp)
	lw $t2, -4104($fp)
	bgt $t1, $t2, label725
	j label726
label725:
	li $t0, 1
	sw $t0, -4088($fp)
label726:
	addi $sp, $sp, -4
	lw $t0, -4044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4088($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4108($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -4112($fp)
	li $t0, 0
	sw $t0, -4116($fp)
	li $t0, 25910
	sw $t0, -4120($fp)
	li $t0, 2138
	sw $t0, -4124($fp)
	lw $t1, -4120($fp)
	lw $t2, -4124($fp)
	beq $t1, $t2, label731
	j label732
label731:
	li $t0, 1
	sw $t0, -4116($fp)
label732:
	lw $t0, -1268($fp)
	sw $t0, -4128($fp)
	lw $t1, -4116($fp)
	lw $t2, -4128($fp)
	beq $t1, $t2, label729
	j label730
label729:
	li $t0, 1
	sw $t0, -4112($fp)
label730:
	lw $t0, -2468($fp)
	sw $t0, -4132($fp)
	lw $t0, -4132($fp)
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -4136($fp)
	li $t0, 0
	sw $t0, -4140($fp)
	lw $t0, -1088($fp)
	sw $t0, -4144($fp)
	lw $t0, -1100($fp)
	sw $t0, -4148($fp)
	lw $t1, -4144($fp)
	lw $t2, -4148($fp)
	beq $t1, $t2, label735
	j label734
label735:
	li $t0, 34200
	sw $t0, -4152($fp)
	lw $t1, -4152($fp)
	li $t2, 0
	bne $t1, $t2, label733
	j label734
label733:
	li $t0, 1
	sw $t0, -4140($fp)
label734:
	addi $sp, $sp, -4
	lw $t0, -4108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4140($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4156($fp)
	addi $sp, $sp, 20
	lw $t1, -4156($fp)
	li $t2, 0
	bne $t1, $t2, label721
	j label720
label720:
	li $t0, 1
	sw $t0, -4036($fp)
label721:
	li $t0, 0
	lw $t1, -4036($fp)
	sub $t0, $t0, $t1
	sw $t0, -4160($fp)
	lw $t0, -4160($fp)
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -4164($fp)
label692:
label677:
	addi $t0, $fp, -2076
	sw $t0, -4168($fp)
	li $t0, 0
	sw $t0, -4172($fp)
	li $t0, 4
	lw $t1, -4172($fp)
	mul $t0, $t0, $t1
	sw $t0, -4176($fp)
	lw $t0, -4176($fp)
	lw $t1, -4168($fp)
	add $t0, $t0, $t1
	sw $t0, -4180($fp)
	lw $t0, -4180($fp)
	lw $t1, 0($t0)
	sw $t1, -4184($fp)
	lw $t0, -4184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2216($fp)
	sw $t0, -4188($fp)
	lw $t0, -4188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2104
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
	lw $t0, -4208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2104
	sw $t0, -4212($fp)
	li $t0, 1
	sw $t0, -4216($fp)
	li $t0, 4
	lw $t1, -4216($fp)
	mul $t0, $t0, $t1
	sw $t0, -4220($fp)
	lw $t0, -4220($fp)
	lw $t1, -4212($fp)
	add $t0, $t0, $t1
	sw $t0, -4224($fp)
	lw $t0, -4224($fp)
	lw $t1, 0($t0)
	sw $t1, -4228($fp)
	lw $t0, -4228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2104
	sw $t0, -4232($fp)
	li $t0, 2
	sw $t0, -4236($fp)
	li $t0, 4
	lw $t1, -4236($fp)
	mul $t0, $t0, $t1
	sw $t0, -4240($fp)
	lw $t0, -4240($fp)
	lw $t1, -4232($fp)
	add $t0, $t0, $t1
	sw $t0, -4244($fp)
	lw $t0, -4244($fp)
	lw $t1, 0($t0)
	sw $t1, -4248($fp)
	lw $t0, -4248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2104
	sw $t0, -4252($fp)
	li $t0, 3
	sw $t0, -4256($fp)
	li $t0, 4
	lw $t1, -4256($fp)
	mul $t0, $t0, $t1
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	lw $t1, -4252($fp)
	add $t0, $t0, $t1
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	lw $t1, 0($t0)
	sw $t1, -4268($fp)
	lw $t0, -4268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2104
	sw $t0, -4272($fp)
	li $t0, 4
	sw $t0, -4276($fp)
	li $t0, 4
	lw $t1, -4276($fp)
	mul $t0, $t0, $t1
	sw $t0, -4280($fp)
	lw $t0, -4280($fp)
	lw $t1, -4272($fp)
	add $t0, $t0, $t1
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	lw $t1, 0($t0)
	sw $t1, -4288($fp)
	lw $t0, -4288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2104
	sw $t0, -4292($fp)
	li $t0, 5
	sw $t0, -4296($fp)
	li $t0, 4
	lw $t1, -4296($fp)
	mul $t0, $t0, $t1
	sw $t0, -4300($fp)
	lw $t0, -4300($fp)
	lw $t1, -4292($fp)
	add $t0, $t0, $t1
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	lw $t1, 0($t0)
	sw $t1, -4308($fp)
	lw $t0, -4308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2104
	sw $t0, -4312($fp)
	li $t0, 6
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
	lw $t0, -4328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2396($fp)
	sw $t0, -4332($fp)
	lw $t0, -4332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2408($fp)
	sw $t0, -4336($fp)
	lw $t0, -4336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2420($fp)
	sw $t0, -4340($fp)
	lw $t0, -4340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2432($fp)
	sw $t0, -4344($fp)
	lw $t0, -4344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2444($fp)
	sw $t0, -4348($fp)
	lw $t0, -4348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2456($fp)
	sw $t0, -4352($fp)
	lw $t0, -4352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2468($fp)
	sw $t0, -4356($fp)
	lw $t0, -4356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2132
	sw $t0, -4360($fp)
	li $t0, 0
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
	addi $t0, $fp, -2132
	sw $t0, -4380($fp)
	li $t0, 1
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
	lw $t0, -4396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2132
	sw $t0, -4400($fp)
	li $t0, 2
	sw $t0, -4404($fp)
	li $t0, 4
	lw $t1, -4404($fp)
	mul $t0, $t0, $t1
	sw $t0, -4408($fp)
	lw $t0, -4408($fp)
	lw $t1, -4400($fp)
	add $t0, $t0, $t1
	sw $t0, -4412($fp)
	lw $t0, -4412($fp)
	lw $t1, 0($t0)
	sw $t1, -4416($fp)
	lw $t0, -4416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2132
	sw $t0, -4420($fp)
	li $t0, 3
	sw $t0, -4424($fp)
	li $t0, 4
	lw $t1, -4424($fp)
	mul $t0, $t0, $t1
	sw $t0, -4428($fp)
	lw $t0, -4428($fp)
	lw $t1, -4420($fp)
	add $t0, $t0, $t1
	sw $t0, -4432($fp)
	lw $t0, -4432($fp)
	lw $t1, 0($t0)
	sw $t1, -4436($fp)
	lw $t0, -4436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2132
	sw $t0, -4440($fp)
	li $t0, 4
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
	lw $t0, -4456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2132
	sw $t0, -4460($fp)
	li $t0, 5
	sw $t0, -4464($fp)
	li $t0, 4
	lw $t1, -4464($fp)
	mul $t0, $t0, $t1
	sw $t0, -4468($fp)
	lw $t0, -4468($fp)
	lw $t1, -4460($fp)
	add $t0, $t0, $t1
	sw $t0, -4472($fp)
	lw $t0, -4472($fp)
	lw $t1, 0($t0)
	sw $t1, -4476($fp)
	lw $t0, -4476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2132
	sw $t0, -4480($fp)
	li $t0, 6
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
	lw $t0, -4496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2164
	sw $t0, -4500($fp)
	li $t0, 0
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
	lw $t0, -4516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2164
	sw $t0, -4520($fp)
	li $t0, 1
	sw $t0, -4524($fp)
	li $t0, 4
	lw $t1, -4524($fp)
	mul $t0, $t0, $t1
	sw $t0, -4528($fp)
	lw $t0, -4528($fp)
	lw $t1, -4520($fp)
	add $t0, $t0, $t1
	sw $t0, -4532($fp)
	lw $t0, -4532($fp)
	lw $t1, 0($t0)
	sw $t1, -4536($fp)
	lw $t0, -4536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2164
	sw $t0, -4540($fp)
	li $t0, 2
	sw $t0, -4544($fp)
	li $t0, 4
	lw $t1, -4544($fp)
	mul $t0, $t0, $t1
	sw $t0, -4548($fp)
	lw $t0, -4548($fp)
	lw $t1, -4540($fp)
	add $t0, $t0, $t1
	sw $t0, -4552($fp)
	lw $t0, -4552($fp)
	lw $t1, 0($t0)
	sw $t1, -4556($fp)
	lw $t0, -4556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2164
	sw $t0, -4560($fp)
	li $t0, 3
	sw $t0, -4564($fp)
	li $t0, 4
	lw $t1, -4564($fp)
	mul $t0, $t0, $t1
	sw $t0, -4568($fp)
	lw $t0, -4568($fp)
	lw $t1, -4560($fp)
	add $t0, $t0, $t1
	sw $t0, -4572($fp)
	lw $t0, -4572($fp)
	lw $t1, 0($t0)
	sw $t1, -4576($fp)
	lw $t0, -4576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2164
	sw $t0, -4580($fp)
	li $t0, 4
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
	lw $t0, -4596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2164
	sw $t0, -4600($fp)
	li $t0, 5
	sw $t0, -4604($fp)
	li $t0, 4
	lw $t1, -4604($fp)
	mul $t0, $t0, $t1
	sw $t0, -4608($fp)
	lw $t0, -4608($fp)
	lw $t1, -4600($fp)
	add $t0, $t0, $t1
	sw $t0, -4612($fp)
	lw $t0, -4612($fp)
	lw $t1, 0($t0)
	sw $t1, -4616($fp)
	lw $t0, -4616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2164
	sw $t0, -4620($fp)
	li $t0, 6
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
	addi $t0, $fp, -2164
	sw $t0, -4640($fp)
	li $t0, 7
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
	addi $t0, $fp, -2184
	sw $t0, -4660($fp)
	li $t0, 0
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
	addi $t0, $fp, -2184
	sw $t0, -4680($fp)
	li $t0, 1
	sw $t0, -4684($fp)
	li $t0, 4
	lw $t1, -4684($fp)
	mul $t0, $t0, $t1
	sw $t0, -4688($fp)
	lw $t0, -4688($fp)
	lw $t1, -4680($fp)
	add $t0, $t0, $t1
	sw $t0, -4692($fp)
	lw $t0, -4692($fp)
	lw $t1, 0($t0)
	sw $t1, -4696($fp)
	lw $t0, -4696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2184
	sw $t0, -4700($fp)
	li $t0, 2
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
	lw $t0, -4716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2184
	sw $t0, -4720($fp)
	li $t0, 3
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
	lw $t0, -4736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2184
	sw $t0, -4740($fp)
	li $t0, 4
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
	lw $t0, -4756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4760($fp)
	li $t0, 34062
	sw $t0, -4764($fp)
	lw $t0, -968($fp)
	sw $t0, -4768($fp)
	lw $t0, -4764($fp)
	lw $t1, -4768($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4772($fp)
	lw $t0, -824($fp)
	sw $t0, -4776($fp)
	lw $t0, -4772($fp)
	lw $t1, -4776($fp)
	add $t0, $t0, $t1
	sw $t0, -4780($fp)
	addi $t0, $fp, -2164
	sw $t0, -4784($fp)
	lw $t0, -1388($fp)
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
	li $t0, 0
	sw $t0, -4804($fp)
	li $t0, 20043
	sw $t0, -4808($fp)
	lw $t0, -1076($fp)
	sw $t0, -4812($fp)
	lw $t0, -4808($fp)
	lw $t1, -4812($fp)
	add $t0, $t0, $t1
	sw $t0, -4816($fp)
	li $t0, 16673
	sw $t0, -4820($fp)
	lw $t1, -4816($fp)
	lw $t2, -4820($fp)
	beq $t1, $t2, label738
	j label739
label738:
	li $t0, 1
	sw $t0, -4804($fp)
label739:
	addi $sp, $sp, -4
	lw $t0, -4780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4804($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4824($fp)
	addi $sp, $sp, 16
	lw $t1, -4824($fp)
	li $t2, 0
	bne $t1, $t2, label737
	j label736
label736:
	li $t0, 1
	sw $t0, -4760($fp)
label737:
	lw $t0, 4($fp)
	sw $t0, -4828($fp)
	lw $t0, -4760($fp)
	lw $t1, -4828($fp)
	mul $t0, $t0, $t1
	sw $t0, -4832($fp)
	lw $ra, -4($fp)
	lw $v0, -4832($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label740:
	addi $t0, $fp, -2184
	sw $t0, -4836($fp)
	li $t0, 0
	sw $t0, -4840($fp)
	li $t0, 17946
	sw $t0, -4844($fp)
	li $t0, 0
	lw $t1, -4844($fp)
	sub $t0, $t0, $t1
	sw $t0, -4848($fp)
	lw $t0, -1064($fp)
	sw $t0, -4852($fp)
	lw $t1, -4848($fp)
	lw $t2, -4852($fp)
	beq $t1, $t2, label743
	j label744
label743:
	li $t0, 1
	sw $t0, -4840($fp)
label744:
	li $t0, 4
	lw $t1, -4840($fp)
	mul $t0, $t0, $t1
	sw $t0, -4856($fp)
	lw $t0, -4856($fp)
	lw $t1, -4836($fp)
	add $t0, $t0, $t1
	sw $t0, -4860($fp)
	lw $t0, -4860($fp)
	lw $t1, 0($t0)
	sw $t1, -4864($fp)
	li $t0, 0
	sw $t0, -4868($fp)
	lw $t0, -2432($fp)
	sw $t0, -4872($fp)
	lw $t1, -4872($fp)
	li $t2, 0
	bne $t1, $t2, label746
	j label745
label745:
	li $t0, 1
	sw $t0, -4868($fp)
label746:
	lw $t0, -4864($fp)
	lw $t1, -4868($fp)
	mul $t0, $t0, $t1
	sw $t0, -4876($fp)
	lw $t1, -4876($fp)
	li $t2, 0
	bne $t1, $t2, label741
	j label742
label741:
	li $t0, 36805
	sw $t0, -4880($fp)
	lw $t0, -4880($fp)
	sw $t0, -4884($fp)
	lw $t0, -4884($fp)
	sw $t0, -4888($fp)
	li $t0, 37540
	sw $t0, -4892($fp)
	lw $t0, -4892($fp)
	sw $t0, -4896($fp)
	lw $t0, -4896($fp)
	sw $t0, -4900($fp)
	li $t0, 24674
	sw $t0, -4904($fp)
	lw $t0, -4904($fp)
	sw $t0, -4908($fp)
	lw $t0, -4908($fp)
	sw $t0, -4912($fp)
	addi $t0, $fp, -76
	sw $t0, -4916($fp)
	li $t0, 0
	sw $t0, -4920($fp)
	lw $t0, -812($fp)
	sw $t0, -4924($fp)
	li $t0, 0
	lw $t1, -4924($fp)
	sub $t0, $t0, $t1
	sw $t0, -4928($fp)
	lw $t0, -1268($fp)
	sw $t0, -4932($fp)
	lw $t0, -4928($fp)
	lw $t1, -4932($fp)
	sub $t0, $t0, $t1
	sw $t0, -4936($fp)
	li $t0, 0
	sw $t0, -4940($fp)
	li $t0, 0
	sw $t0, -4944($fp)
	li $t0, 35102
	sw $t0, -4948($fp)
	lw $t1, -4948($fp)
	li $t2, 0
	bne $t1, $t2, label752
	j label753
label753:
	lw $t0, -4884($fp)
	sw $t0, -4952($fp)
	lw $t1, -4952($fp)
	li $t2, 0
	bne $t1, $t2, label751
	j label752
label751:
	li $t0, 1
	sw $t0, -4944($fp)
label752:
	li $t0, 43537
	sw $t0, -4956($fp)
	li $t0, 40931
	sw $t0, -4960($fp)
	li $t0, 40321
	sw $t0, -4964($fp)
	lw $t0, -4960($fp)
	lw $t1, -4964($fp)
	mul $t0, $t0, $t1
	sw $t0, -4968($fp)
	li $t0, 52310
	sw $t0, -4972($fp)
	lw $t0, -4968($fp)
	lw $t1, -4972($fp)
	sub $t0, $t0, $t1
	sw $t0, -4976($fp)
	li $t0, 0
	sw $t0, -4980($fp)
	li $t0, 0
	sw $t0, -4984($fp)
	lw $t0, -1268($fp)
	sw $t0, -4988($fp)
	li $t0, 18707
	sw $t0, -4992($fp)
	lw $t1, -4988($fp)
	lw $t2, -4992($fp)
	ble $t1, $t2, label756
	j label757
label756:
	li $t0, 1
	sw $t0, -4984($fp)
label757:
	li $t0, 31443
	sw $t0, -4996($fp)
	lw $t1, -4984($fp)
	lw $t2, -4996($fp)
	beq $t1, $t2, label754
	j label755
label754:
	li $t0, 1
	sw $t0, -4980($fp)
label755:
	addi $sp, $sp, -4
	lw $t0, -4944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4980($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5000($fp)
	addi $sp, $sp, 20
	li $t0, 35850
	sw $t0, -5004($fp)
	lw $t1, -5000($fp)
	lw $t2, -5004($fp)
	blt $t1, $t2, label749
	j label750
label749:
	li $t0, 1
	sw $t0, -4940($fp)
label750:
	li $t0, 0
	sw $t0, -5008($fp)
	addi $t0, $fp, -72
	sw $t0, -5012($fp)
	li $t0, 5
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
	li $t0, 8489
	sw $t0, -5032($fp)
	lw $t1, -5028($fp)
	lw $t2, -5032($fp)
	ble $t1, $t2, label758
	j label759
label758:
	li $t0, 1
	sw $t0, -5008($fp)
label759:
	li $t0, 0
	sw $t0, -5036($fp)
	li $t0, 32963
	sw $t0, -5040($fp)
	li $t0, 0
	lw $t1, -5040($fp)
	sub $t0, $t0, $t1
	sw $t0, -5044($fp)
	lw $t1, -5044($fp)
	li $t2, 0
	bne $t1, $t2, label761
	j label760
label760:
	li $t0, 1
	sw $t0, -5036($fp)
label761:
	addi $sp, $sp, -4
	lw $t0, -4940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5036($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5048($fp)
	addi $sp, $sp, 16
	lw $t1, -4936($fp)
	lw $t2, -5048($fp)
	ble $t1, $t2, label747
	j label748
label747:
	li $t0, 1
	sw $t0, -4920($fp)
label748:
	li $t0, 4
	lw $t1, -4920($fp)
	mul $t0, $t0, $t1
	sw $t0, -5052($fp)
	lw $t0, -5052($fp)
	lw $t1, -4916($fp)
	add $t0, $t0, $t1
	sw $t0, -5056($fp)
	lw $t0, -5056($fp)
	lw $t1, 0($t0)
	sw $t1, -5060($fp)
	li $t0, 0
	sw $t0, -5064($fp)
	lw $t0, -4896($fp)
	sw $t0, -5068($fp)
	lw $t0, -1064($fp)
	sw $t0, -5072($fp)
	lw $t0, -5068($fp)
	lw $t1, -5072($fp)
	sub $t0, $t0, $t1
	sw $t0, -5076($fp)
	li $t0, 15310
	sw $t0, -5080($fp)
	lw $t0, -5080($fp)
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	sw $t0, -5084($fp)
	li $t0, 0
	sw $t0, -5088($fp)
	lw $t0, -4908($fp)
	sw $t0, -5092($fp)
	li $t0, 13409
	sw $t0, -5096($fp)
	lw $t0, -5092($fp)
	lw $t1, -5096($fp)
	sub $t0, $t0, $t1
	sw $t0, -5100($fp)
	lw $t1, -5100($fp)
	li $t2, 0
	bne $t1, $t2, label767
	j label766
label767:
	li $t0, 33906
	sw $t0, -5104($fp)
	lw $t1, -5104($fp)
	li $t2, 0
	bne $t1, $t2, label765
	j label766
label765:
	li $t0, 1
	sw $t0, -5088($fp)
label766:
	li $t0, 0
	sw $t0, -5108($fp)
	lw $t0, -1376($fp)
	sw $t0, -5112($fp)
	lw $t0, -1076($fp)
	sw $t0, -5116($fp)
	lw $t1, -5112($fp)
	lw $t2, -5116($fp)
	ble $t1, $t2, label768
	j label770
label770:
	li $t0, 46645
	sw $t0, -5120($fp)
	lw $t1, -5120($fp)
	li $t2, 0
	bne $t1, $t2, label768
	j label769
label768:
	li $t0, 1
	sw $t0, -5108($fp)
label769:
	li $t0, 0
	sw $t0, -5124($fp)
	lw $t0, -452($fp)
	sw $t0, -5128($fp)
	li $t0, 3651
	sw $t0, -5132($fp)
	lw $t0, -5128($fp)
	lw $t1, -5132($fp)
	add $t0, $t0, $t1
	sw $t0, -5136($fp)
	lw $t0, -956($fp)
	sw $t0, -5140($fp)
	lw $t1, -5136($fp)
	lw $t2, -5140($fp)
	bne $t1, $t2, label771
	j label772
label771:
	li $t0, 1
	sw $t0, -5124($fp)
label772:
	addi $sp, $sp, -4
	lw $t0, -5084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5124($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5144($fp)
	addi $sp, $sp, 20
	lw $t0, -5076($fp)
	lw $t1, -5144($fp)
	sub $t0, $t0, $t1
	sw $t0, -5148($fp)
	li $t0, 39319
	sw $t0, -5152($fp)
	lw $t0, -5148($fp)
	lw $t1, -5152($fp)
	add $t0, $t0, $t1
	sw $t0, -5156($fp)
	lw $t1, -5156($fp)
	li $t2, 0
	bne $t1, $t2, label762
	j label764
label764:
	addi $t0, $fp, -44
	sw $t0, -5160($fp)
	lw $t0, -1304($fp)
	sw $t0, -5164($fp)
	lw $t0, -332($fp)
	sw $t0, -5168($fp)
	lw $t0, -5164($fp)
	lw $t1, -5168($fp)
	add $t0, $t0, $t1
	sw $t0, -5172($fp)
	li $t0, 4
	lw $t1, -5172($fp)
	mul $t0, $t0, $t1
	sw $t0, -5176($fp)
	lw $t0, -5176($fp)
	lw $t1, -5160($fp)
	add $t0, $t0, $t1
	sw $t0, -5180($fp)
	lw $t0, -5180($fp)
	lw $t1, 0($t0)
	sw $t1, -5184($fp)
	lw $t1, -5184($fp)
	li $t2, 0
	bne $t1, $t2, label762
	j label763
label762:
	li $t0, 1
	sw $t0, -5064($fp)
label763:
	j label740
label742:
	j label608
label610:
	j label607
label606:
	li $t0, 36044
	sw $t0, -5204($fp)
	lw $t0, -5204($fp)
	sw $t0, -5208($fp)
	lw $t0, -5208($fp)
	sw $t0, -5212($fp)
	li $t0, 7326
	sw $t0, -5216($fp)
	lw $t0, -5216($fp)
	sw $t0, -5220($fp)
	lw $t0, -5220($fp)
	sw $t0, -5224($fp)
	li $t0, 64136
	sw $t0, -5228($fp)
	lw $t0, -5228($fp)
	sw $t0, -5232($fp)
	lw $t0, -5232($fp)
	sw $t0, -5236($fp)
	li $t0, 32786
	sw $t0, -5240($fp)
	addi $t0, $fp, -5200
	sw $t0, -5244($fp)
	li $t0, 0
	sw $t0, -5248($fp)
	lw $t0, -5248($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5252($fp)
	lw $t0, -5244($fp)
	lw $t1, -5252($fp)
	add $t0, $t0, $t1
	sw $t0, -5256($fp)
	lw $t0, -5240($fp)
	lw $t1, -5256($fp)
	sw $t0, 0($t1)
	lw $t0, -5256($fp)
	lw $t1, 0($t0)
	sw $t1, -5260($fp)
	li $t0, 6638
	sw $t0, -5264($fp)
	addi $t0, $fp, -5200
	sw $t0, -5268($fp)
	li $t0, 1
	sw $t0, -5272($fp)
	lw $t0, -5272($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5276($fp)
	lw $t0, -5268($fp)
	lw $t1, -5276($fp)
	add $t0, $t0, $t1
	sw $t0, -5280($fp)
	lw $t0, -5264($fp)
	lw $t1, -5280($fp)
	sw $t0, 0($t1)
	lw $t0, -5280($fp)
	lw $t1, 0($t0)
	sw $t1, -5284($fp)
	li $t0, 1962
	sw $t0, -5288($fp)
	addi $t0, $fp, -5200
	sw $t0, -5292($fp)
	li $t0, 2
	sw $t0, -5296($fp)
	lw $t0, -5296($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5300($fp)
	lw $t0, -5292($fp)
	lw $t1, -5300($fp)
	add $t0, $t0, $t1
	sw $t0, -5304($fp)
	lw $t0, -5288($fp)
	lw $t1, -5304($fp)
	sw $t0, 0($t1)
	lw $t0, -5304($fp)
	lw $t1, 0($t0)
	sw $t1, -5308($fp)
	li $t0, 52829
	sw $t0, -5312($fp)
	addi $t0, $fp, -5200
	sw $t0, -5316($fp)
	li $t0, 3
	sw $t0, -5320($fp)
	lw $t0, -5320($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5324($fp)
	lw $t0, -5316($fp)
	lw $t1, -5324($fp)
	add $t0, $t0, $t1
	sw $t0, -5328($fp)
	lw $t0, -5312($fp)
	lw $t1, -5328($fp)
	sw $t0, 0($t1)
	lw $t0, -5328($fp)
	lw $t1, 0($t0)
	sw $t1, -5332($fp)
	li $t0, 23312
	sw $t0, -5336($fp)
	lw $t0, -5336($fp)
	sw $t0, -5340($fp)
	lw $t0, -5340($fp)
	sw $t0, -5344($fp)
	li $t0, 36024
	sw $t0, -5348($fp)
	lw $t0, -5348($fp)
	sw $t0, -5352($fp)
	lw $t0, -5352($fp)
	sw $t0, -5356($fp)
label773:
	li $t0, 0
	sw $t0, -5360($fp)
	li $t0, 58618
	sw $t0, -5364($fp)
	lw $t0, -1064($fp)
	sw $t0, -5368($fp)
	lw $t0, -5364($fp)
	lw $t1, -5368($fp)
	mul $t0, $t0, $t1
	sw $t0, -5372($fp)
	lw $t0, -1388($fp)
	sw $t0, -5376($fp)
	lw $t1, -5372($fp)
	lw $t2, -5376($fp)
	beq $t1, $t2, label776
	j label777
label776:
	li $t0, 1
	sw $t0, -5360($fp)
label777:
	li $t0, 0
	sw $t0, -5380($fp)
	addi $t0, $fp, -5200
	sw $t0, -5384($fp)
	li $t0, 3
	sw $t0, -5388($fp)
	li $t0, 4
	lw $t1, -5388($fp)
	mul $t0, $t0, $t1
	sw $t0, -5392($fp)
	lw $t0, -5392($fp)
	lw $t1, -5384($fp)
	add $t0, $t0, $t1
	sw $t0, -5396($fp)
	lw $t0, -5396($fp)
	lw $t1, 0($t0)
	sw $t1, -5400($fp)
	li $t0, 0
	sw $t0, -5404($fp)
	lw $t0, -5220($fp)
	sw $t0, -5408($fp)
	li $t0, 42808
	sw $t0, -5412($fp)
	lw $t0, -5408($fp)
	lw $t1, -5412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5416($fp)
	lw $t1, -5416($fp)
	li $t2, 0
	bne $t1, $t2, label780
	j label782
label782:
	li $t0, 54967
	sw $t0, -5420($fp)
	lw $t1, -5420($fp)
	li $t2, 0
	bne $t1, $t2, label780
	j label781
label780:
	li $t0, 1
	sw $t0, -5404($fp)
label781:
	addi $t0, $fp, -76
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
	li $t0, 56034
	sw $t0, -5444($fp)
	lw $t0, -5444($fp)
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -5448($fp)
	lw $t0, -1268($fp)
	sw $t0, -5452($fp)
	lw $t0, -5452($fp)
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -5456($fp)
	li $t0, 42420
	sw $t0, -5460($fp)
	lw $t0, -452($fp)
	sw $t0, -5464($fp)
	lw $t0, -5460($fp)
	lw $t1, -5464($fp)
	add $t0, $t0, $t1
	sw $t0, -5468($fp)
	addi $sp, $sp, -4
	lw $t0, -5440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5468($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5472($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -5476($fp)
	li $t0, 24591
	sw $t0, -5480($fp)
	li $t0, 36034
	sw $t0, -5484($fp)
	lw $t1, -5480($fp)
	lw $t2, -5484($fp)
	bgt $t1, $t2, label783
	j label784
label783:
	li $t0, 1
	sw $t0, -5476($fp)
label784:
	li $t0, 0
	sw $t0, -5488($fp)
	li $t0, 23712
	sw $t0, -5492($fp)
	lw $t1, -5492($fp)
	li $t2, 0
	bne $t1, $t2, label785
	j label786
label785:
	li $t0, 1
	sw $t0, -5488($fp)
label786:
	li $t0, 0
	sw $t0, -5496($fp)
	li $t0, 27545
	sw $t0, -5500($fp)
	lw $t1, -5500($fp)
	li $t2, 0
	bne $t1, $t2, label788
	j label787
label787:
	li $t0, 1
	sw $t0, -5496($fp)
label788:
	lw $t0, -1352($fp)
	sw $t0, -5504($fp)
	lw $t0, -5496($fp)
	lw $t1, -5504($fp)
	add $t0, $t0, $t1
	sw $t0, -5508($fp)
	addi $sp, $sp, -4
	lw $t0, -5472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5508($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5512($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -5516($fp)
	lw $t0, -452($fp)
	sw $t0, -5520($fp)
	lw $t1, -5520($fp)
	li $t2, 0
	bne $t1, $t2, label792
	j label791
label792:
	lw $t0, -1328($fp)
	sw $t0, -5524($fp)
	lw $t1, -5524($fp)
	li $t2, 0
	bne $t1, $t2, label789
	j label791
label791:
	lw $t0, -5232($fp)
	sw $t0, -5528($fp)
	lw $t1, -5528($fp)
	li $t2, 0
	bne $t1, $t2, label789
	j label790
label789:
	li $t0, 1
	sw $t0, -5516($fp)
label790:
	addi $sp, $sp, -4
	lw $t0, -5400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5516($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5532($fp)
	addi $sp, $sp, 20
	lw $t0, -5340($fp)
	sw $t0, -5536($fp)
	lw $t1, -5532($fp)
	lw $t2, -5536($fp)
	blt $t1, $t2, label778
	j label779
label778:
	li $t0, 1
	sw $t0, -5380($fp)
label779:
	li $t0, 0
	sw $t0, -5540($fp)
	li $t0, 60117
	sw $t0, -5544($fp)
	lw $t1, -5544($fp)
	li $t2, 0
	bne $t1, $t2, label796
	j label795
label796:
	li $t0, 8028
	sw $t0, -5548($fp)
	lw $t1, -5548($fp)
	li $t2, 0
	bne $t1, $t2, label793
	j label795
label795:
	li $t0, 29914
	sw $t0, -5552($fp)
	lw $t1, -5552($fp)
	li $t2, 0
	bne $t1, $t2, label793
	j label794
label793:
	li $t0, 1
	sw $t0, -5540($fp)
label794:
	li $t0, 0
	sw $t0, -5556($fp)
	lw $t0, -1340($fp)
	sw $t0, -5560($fp)
	li $t0, 5240
	sw $t0, -5564($fp)
	lw $t1, -5560($fp)
	lw $t2, -5564($fp)
	beq $t1, $t2, label799
	j label798
label799:
	lw $t0, -1268($fp)
	sw $t0, -5568($fp)
	lw $t1, -5568($fp)
	li $t2, 0
	bne $t1, $t2, label797
	j label798
label797:
	li $t0, 1
	sw $t0, -5556($fp)
label798:
	addi $sp, $sp, -4
	lw $t0, -5360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5556($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5572($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -5576($fp)
	lw $t0, 12($fp)
	sw $t0, -5580($fp)
	lw $t1, -5580($fp)
	li $t2, 0
	bne $t1, $t2, label801
	j label800
label800:
	li $t0, 1
	sw $t0, -5576($fp)
label801:
	li $t0, 33417
	sw $t0, -5584($fp)
	lw $t0, -5576($fp)
	lw $t1, -5584($fp)
	mul $t0, $t0, $t1
	sw $t0, -5588($fp)
	lw $t0, -5572($fp)
	lw $t1, -5588($fp)
	add $t0, $t0, $t1
	sw $t0, -5592($fp)
	lw $t0, -1100($fp)
	sw $t0, -5596($fp)
	lw $t0, -5592($fp)
	lw $t1, -5596($fp)
	sub $t0, $t0, $t1
	sw $t0, -5600($fp)
	lw $t1, -5600($fp)
	li $t2, 0
	bne $t1, $t2, label774
	j label775
label774:
label802:
	addi $t0, $fp, -72
	sw $t0, -5604($fp)
	li $t0, 2
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
	lw $t1, -5620($fp)
	li $t2, 0
	bne $t1, $t2, label803
	j label804
label803:
	lw $t0, -5352($fp)
	sw $t0, -5624($fp)
	lw $ra, -4($fp)
	lw $v0, -5624($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label802
label804:
	j label773
label775:
	addi $t0, $fp, -76
	sw $t0, -5628($fp)
	li $t0, 0
	sw $t0, -5632($fp)
	li $t0, 4
	lw $t1, -5632($fp)
	mul $t0, $t0, $t1
	sw $t0, -5636($fp)
	lw $t0, -5636($fp)
	lw $t1, -5628($fp)
	add $t0, $t0, $t1
	sw $t0, -5640($fp)
	lw $t0, -5640($fp)
	lw $t1, 0($t0)
	sw $t1, -5644($fp)
	li $t0, 0
	lw $t1, -5644($fp)
	sub $t0, $t0, $t1
	sw $t0, -5648($fp)
	li $t0, 0
	lw $t1, -5648($fp)
	sub $t0, $t0, $t1
	sw $t0, -5652($fp)
	li $t0, 0
	lw $t1, -5652($fp)
	sub $t0, $t0, $t1
	sw $t0, -5656($fp)
	lw $t1, -5656($fp)
	li $t2, 0
	bne $t1, $t2, label805
	j label806
label805:
	lw $t0, -1064($fp)
	sw $t0, -5660($fp)
	li $t0, 0
	lw $t1, -5660($fp)
	sub $t0, $t0, $t1
	sw $t0, -5664($fp)
	lw $t1, -5664($fp)
	li $t2, 0
	bne $t1, $t2, label811
	j label809
label811:
	lw $t0, -968($fp)
	sw $t0, -5668($fp)
	li $t0, 63033
	sw $t0, -5672($fp)
	li $t0, 1
	sw $t0, -5676($fp)
	lw $t0, -5672($fp)
	lw $t1, -5676($fp)
	mul $t0, $t0, $t1
	sw $t0, -5680($fp)
	lw $t0, -5668($fp)
	lw $t1, -5680($fp)
	add $t0, $t0, $t1
	sw $t0, -5684($fp)
	lw $t1, -5684($fp)
	li $t2, 0
	bne $t1, $t2, label808
	j label809
label808:
	lw $t0, -464($fp)
	sw $t0, -5688($fp)
	lw $t0, -1112($fp)
	sw $t0, -5692($fp)
	lw $t0, -5688($fp)
	lw $t1, -5692($fp)
	sub $t0, $t0, $t1
	sw $t0, -5696($fp)
	addi $t0, $fp, -76
	sw $t0, -5700($fp)
	lw $t0, -1268($fp)
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
	li $t0, 0
	sw $t0, -5720($fp)
	addi $t0, $fp, -132
	sw $t0, -5724($fp)
	lw $t0, -488($fp)
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
	lw $t1, -5740($fp)
	li $t2, 0
	bne $t1, $t2, label814
	j label813
label814:
	lw $t0, -248($fp)
	sw $t0, -5744($fp)
	lw $t1, -5744($fp)
	li $t2, 0
	bne $t1, $t2, label812
	j label813
label812:
	li $t0, 1
	sw $t0, -5720($fp)
label813:
	addi $sp, $sp, -4
	lw $t0, -5696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5720($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5748($fp)
	addi $sp, $sp, 16
	lw $t0, -1292($fp)
	sw $t0, -5752($fp)
	li $t0, 64451
	sw $t0, -5756($fp)
	lw $t0, -5752($fp)
	lw $t1, -5756($fp)
	mul $t0, $t0, $t1
	sw $t0, -5760($fp)
	lw $t0, -5748($fp)
	lw $t1, -5760($fp)
	sub $t0, $t0, $t1
	sw $t0, -5764($fp)
	lw $t0, -1052($fp)
	sw $t0, -5768($fp)
	li $t0, 30284
	sw $t0, -5772($fp)
	lw $t0, -5768($fp)
	lw $t1, -5772($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5776($fp)
	lw $t0, -5340($fp)
	sw $t0, -5780($fp)
	lw $t0, -5776($fp)
	lw $t1, -5780($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5784($fp)
	li $t0, 0
	lw $t1, -5784($fp)
	sub $t0, $t0, $t1
	sw $t0, -5788($fp)
	lw $t0, -5764($fp)
	lw $t1, -5788($fp)
	sub $t0, $t0, $t1
	sw $t0, -5792($fp)
	lw $ra, -4($fp)
	lw $v0, -5792($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 62691
	sw $t0, -5796($fp)
	lw $t0, -5796($fp)
	sw $t0, -5800($fp)
	lw $t0, -5800($fp)
	sw $t0, -5804($fp)
	li $t0, 0
	sw $t0, -5808($fp)
	li $t0, 20467
	sw $t0, -5812($fp)
	lw $t0, -1316($fp)
	sw $t0, -5816($fp)
	lw $t0, -5812($fp)
	lw $t1, -5816($fp)
	add $t0, $t0, $t1
	sw $t0, -5820($fp)
	lw $t1, -5820($fp)
	li $t2, 0
	bne $t1, $t2, label815
	j label817
label817:
	lw $t0, -5800($fp)
	sw $t0, -5824($fp)
	lw $t1, -5824($fp)
	li $t2, 0
	bne $t1, $t2, label815
	j label816
label815:
	li $t0, 1
	sw $t0, -5808($fp)
label816:
	li $t0, 0
	sw $t0, -5828($fp)
	lw $t0, -1076($fp)
	sw $t0, -5832($fp)
	li $t0, 877
	sw $t0, -5836($fp)
	lw $t0, -5832($fp)
	lw $t1, -5836($fp)
	mul $t0, $t0, $t1
	sw $t0, -5840($fp)
	lw $t1, -5840($fp)
	li $t2, 0
	bne $t1, $t2, label818
	j label820
label820:
	li $t0, 17577
	sw $t0, -5844($fp)
	lw $t1, -5844($fp)
	li $t2, 0
	bne $t1, $t2, label818
	j label819
label818:
	li $t0, 1
	sw $t0, -5828($fp)
label819:
	li $t0, 0
	sw $t0, -5848($fp)
	lw $t0, -1304($fp)
	sw $t0, -5852($fp)
	lw $t1, -5852($fp)
	li $t2, 0
	bne $t1, $t2, label822
	j label821
label821:
	li $t0, 1
	sw $t0, -5848($fp)
label822:
	addi $sp, $sp, -4
	lw $t0, -5808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5848($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5856($fp)
	addi $sp, $sp, 16
	j label810
label809:
label823:
	addi $t0, $fp, -72
	sw $t0, -5860($fp)
	li $t0, 0
	sw $t0, -5864($fp)
	li $t0, 0
	sw $t0, -5868($fp)
	lw $t0, -476($fp)
	sw $t0, -5872($fp)
	li $t0, 36901
	sw $t0, -5876($fp)
	lw $t0, -5872($fp)
	lw $t1, -5876($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5880($fp)
	lw $t0, -716($fp)
	sw $t0, -5884($fp)
	lw $t1, -5880($fp)
	lw $t2, -5884($fp)
	bge $t1, $t2, label828
	j label829
label828:
	li $t0, 1
	sw $t0, -5868($fp)
label829:
	li $t0, 0
	sw $t0, -5888($fp)
	li $t0, 22817
	sw $t0, -5892($fp)
	li $t0, 15049
	sw $t0, -5896($fp)
	lw $t1, -5892($fp)
	lw $t2, -5896($fp)
	bgt $t1, $t2, label830
	j label831
label830:
	li $t0, 1
	sw $t0, -5888($fp)
label831:
	lw $t1, -5868($fp)
	lw $t2, -5888($fp)
	bne $t1, $t2, label826
	j label827
label826:
	li $t0, 1
	sw $t0, -5864($fp)
label827:
	li $t0, 4
	lw $t1, -5864($fp)
	mul $t0, $t0, $t1
	sw $t0, -5900($fp)
	lw $t0, -5900($fp)
	lw $t1, -5860($fp)
	add $t0, $t0, $t1
	sw $t0, -5904($fp)
	lw $t0, -5904($fp)
	lw $t1, 0($t0)
	sw $t1, -5908($fp)
	lw $t1, -5908($fp)
	li $t2, 0
	bne $t1, $t2, label824
	j label825
label824:
	lw $t0, -5208($fp)
	sw $t0, -5912($fp)
	li $t0, 0
	lw $t1, -5912($fp)
	sub $t0, $t0, $t1
	sw $t0, -5916($fp)
	lw $t0, -5916($fp)
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -5920($fp)
	lw $ra, -4($fp)
	lw $v0, -5920($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label823
label825:
label810:
label806:
label832:
	lw $t0, 4($fp)
	sw $t0, -5924($fp)
	lw $t1, -5924($fp)
	li $t2, 0
	bne $t1, $t2, label833
	j label834
label833:
	li $t0, 44929
	sw $t0, -5936($fp)
	lw $t0, -5936($fp)
	sw $t0, -5940($fp)
	lw $t0, -5940($fp)
	sw $t0, -5944($fp)
	li $t0, 52731
	sw $t0, -5948($fp)
	lw $t0, -5948($fp)
	sw $t0, -5952($fp)
	lw $t0, -5952($fp)
	sw $t0, -5956($fp)
	li $t0, 42594
	sw $t0, -5960($fp)
	addi $t0, $fp, -5932
	sw $t0, -5964($fp)
	li $t0, 0
	sw $t0, -5968($fp)
	lw $t0, -5968($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5972($fp)
	lw $t0, -5964($fp)
	lw $t1, -5972($fp)
	add $t0, $t0, $t1
	sw $t0, -5976($fp)
	lw $t0, -5960($fp)
	lw $t1, -5976($fp)
	sw $t0, 0($t1)
	lw $t0, -5976($fp)
	lw $t1, 0($t0)
	sw $t1, -5980($fp)
	li $t0, 3106
	sw $t0, -5984($fp)
	addi $t0, $fp, -5932
	sw $t0, -5988($fp)
	li $t0, 1
	sw $t0, -5992($fp)
	lw $t0, -5992($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5996($fp)
	lw $t0, -5988($fp)
	lw $t1, -5996($fp)
	add $t0, $t0, $t1
	sw $t0, -6000($fp)
	lw $t0, -5984($fp)
	lw $t1, -6000($fp)
	sw $t0, 0($t1)
	lw $t0, -6000($fp)
	lw $t1, 0($t0)
	sw $t1, -6004($fp)
	li $t0, 11787
	sw $t0, -6008($fp)
	lw $t0, -6008($fp)
	sw $t0, -6012($fp)
	lw $t0, -6012($fp)
	sw $t0, -6016($fp)
label835:
	li $t0, 0
	sw $t0, -6020($fp)
	lw $t0, 12($fp)
	sw $t0, -6024($fp)
	li $t0, 49502
	sw $t0, -6028($fp)
	lw $t1, -6024($fp)
	lw $t2, -6028($fp)
	beq $t1, $t2, label841
	j label840
label841:
	lw $t0, -6012($fp)
	sw $t0, -6032($fp)
	lw $t1, -6032($fp)
	li $t2, 0
	bne $t1, $t2, label839
	j label840
label839:
	li $t0, 1
	sw $t0, -6020($fp)
label840:
	li $t0, 0
	sw $t0, -6036($fp)
	li $t0, 13954
	sw $t0, -6040($fp)
	li $t0, 0
	lw $t1, -6040($fp)
	sub $t0, $t0, $t1
	sw $t0, -6044($fp)
	lw $t1, -6044($fp)
	li $t2, 0
	bne $t1, $t2, label843
	j label842
label842:
	li $t0, 1
	sw $t0, -6036($fp)
label843:
	addi $t0, $fp, -5932
	sw $t0, -6048($fp)
	li $t0, 0
	sw $t0, -6052($fp)
	li $t0, 4
	lw $t1, -6052($fp)
	mul $t0, $t0, $t1
	sw $t0, -6056($fp)
	lw $t0, -6056($fp)
	lw $t1, -6048($fp)
	add $t0, $t0, $t1
	sw $t0, -6060($fp)
	lw $t0, -6060($fp)
	lw $t1, 0($t0)
	sw $t1, -6064($fp)
	li $t0, 0
	sw $t0, -6068($fp)
	lw $t0, -788($fp)
	sw $t0, -6072($fp)
	li $t0, 0
	lw $t1, -6072($fp)
	sub $t0, $t0, $t1
	sw $t0, -6076($fp)
	lw $t0, -452($fp)
	sw $t0, -6080($fp)
	lw $t1, -6076($fp)
	lw $t2, -6080($fp)
	bne $t1, $t2, label844
	j label845
label844:
	li $t0, 1
	sw $t0, -6068($fp)
label845:
	lw $t0, -452($fp)
	sw $t0, -6084($fp)
	lw $t0, 4($fp)
	sw $t0, -6088($fp)
	lw $t0, -6084($fp)
	lw $t1, -6088($fp)
	add $t0, $t0, $t1
	sw $t0, -6092($fp)
	lw $t0, -5340($fp)
	sw $t0, -6096($fp)
	lw $t0, -6092($fp)
	lw $t1, -6096($fp)
	add $t0, $t0, $t1
	sw $t0, -6100($fp)
	li $t0, 24522
	sw $t0, -6104($fp)
	lw $t0, -5220($fp)
	sw $t0, -6108($fp)
	lw $t0, -6108($fp)
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -6112($fp)
	addi $sp, $sp, -4
	lw $t0, -6068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6112($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6116($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -6036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6116($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6120($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -6124($fp)
	li $t0, 45526
	sw $t0, -6128($fp)
	lw $t1, -6128($fp)
	li $t2, 0
	bne $t1, $t2, label846
	j label848
label848:
	li $t0, 2285
	sw $t0, -6132($fp)
	lw $t1, -6132($fp)
	li $t2, 0
	bne $t1, $t2, label846
	j label847
label846:
	li $t0, 1
	sw $t0, -6124($fp)
label847:
	li $t0, 0
	sw $t0, -6136($fp)
	lw $t0, -764($fp)
	sw $t0, -6140($fp)
	li $t0, 13092
	sw $t0, -6144($fp)
	lw $t1, -6140($fp)
	lw $t2, -6144($fp)
	bge $t1, $t2, label849
	j label851
label851:
	lw $t0, -452($fp)
	sw $t0, -6148($fp)
	lw $t1, -6148($fp)
	li $t2, 0
	bne $t1, $t2, label849
	j label850
label849:
	li $t0, 1
	sw $t0, -6136($fp)
label850:
	addi $sp, $sp, -4
	lw $t0, -6020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6136($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6152($fp)
	addi $sp, $sp, 20
	li $t0, 7037
	sw $t0, -6156($fp)
	lw $t0, -6152($fp)
	lw $t1, -6156($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6160($fp)
	li $t0, 0
	lw $t1, -6160($fp)
	sub $t0, $t0, $t1
	sw $t0, -6164($fp)
	lw $t1, -6164($fp)
	li $t2, 0
	bne $t1, $t2, label838
	j label837
label838:
	li $t0, 0
	sw $t0, -6168($fp)
	li $t0, 0
	sw $t0, -6172($fp)
	li $t0, 19528
	sw $t0, -6176($fp)
	lw $t0, -1064($fp)
	sw $t0, -6180($fp)
	lw $t1, -6176($fp)
	lw $t2, -6180($fp)
	ble $t1, $t2, label854
	j label855
label854:
	li $t0, 1
	sw $t0, -6172($fp)
label855:
	li $t0, 31523
	sw $t0, -6184($fp)
	lw $t1, -6172($fp)
	lw $t2, -6184($fp)
	bgt $t1, $t2, label852
	j label853
label852:
	li $t0, 1
	sw $t0, -6168($fp)
label853:
	addi $t0, $fp, -28
	sw $t0, -6188($fp)
	lw $t0, -800($fp)
	sw $t0, -6192($fp)
	li $t0, 4
	lw $t1, -6192($fp)
	mul $t0, $t0, $t1
	sw $t0, -6196($fp)
	lw $t0, -6196($fp)
	lw $t1, -6188($fp)
	add $t0, $t0, $t1
	sw $t0, -6200($fp)
	lw $t0, -6200($fp)
	lw $t1, 0($t0)
	sw $t1, -6204($fp)
	li $t0, 0
	lw $t1, -6204($fp)
	sub $t0, $t0, $t1
	sw $t0, -6208($fp)
	li $t0, 0
	sw $t0, -6212($fp)
	li $t0, 34025
	sw $t0, -6216($fp)
	lw $t0, -1376($fp)
	sw $t0, -6220($fp)
	lw $t0, -6216($fp)
	lw $t1, -6220($fp)
	sub $t0, $t0, $t1
	sw $t0, -6224($fp)
	li $t0, 574
	sw $t0, -6228($fp)
	lw $t1, -6224($fp)
	lw $t2, -6228($fp)
	ble $t1, $t2, label856
	j label857
label856:
	li $t0, 1
	sw $t0, -6212($fp)
label857:
	li $t0, 0
	sw $t0, -6232($fp)
	lw $t0, -800($fp)
	sw $t0, -6236($fp)
	li $t0, 17383
	sw $t0, -6240($fp)
	lw $t0, -6236($fp)
	lw $t1, -6240($fp)
	sub $t0, $t0, $t1
	sw $t0, -6244($fp)
	li $t0, 19213
	sw $t0, -6248($fp)
	lw $t1, -6244($fp)
	lw $t2, -6248($fp)
	beq $t1, $t2, label858
	j label859
label858:
	li $t0, 1
	sw $t0, -6232($fp)
label859:
	addi $sp, $sp, -4
	lw $t0, -6168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6232($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6252($fp)
	addi $sp, $sp, 20
	lw $t0, -5352($fp)
	sw $t0, -6256($fp)
	lw $t0, -6252($fp)
	lw $t1, -6256($fp)
	sub $t0, $t0, $t1
	sw $t0, -6260($fp)
	li $t0, 13848
	sw $t0, -6264($fp)
	lw $t0, -6264($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -6268($fp)
	li $t0, 0
	sw $t0, -6272($fp)
	lw $t0, -1364($fp)
	sw $t0, -6276($fp)
	lw $t0, -5232($fp)
	sw $t0, -6280($fp)
	lw $t0, -6276($fp)
	lw $t1, -6280($fp)
	sub $t0, $t0, $t1
	sw $t0, -6284($fp)
	li $t0, 19321
	sw $t0, -6288($fp)
	lw $t1, -6284($fp)
	lw $t2, -6288($fp)
	beq $t1, $t2, label860
	j label861
label860:
	li $t0, 1
	sw $t0, -6272($fp)
label861:
	li $t0, 0
	sw $t0, -6292($fp)
	li $t0, 53783
	sw $t0, -6296($fp)
	lw $t1, -6296($fp)
	li $t2, 0
	bne $t1, $t2, label863
	j label862
label862:
	li $t0, 1
	sw $t0, -6292($fp)
label863:
	li $t0, 0
	lw $t1, -6292($fp)
	sub $t0, $t0, $t1
	sw $t0, -6300($fp)
	lw $t0, -476($fp)
	sw $t0, -6304($fp)
	lw $t0, -464($fp)
	sw $t0, -6308($fp)
	lw $t0, -6304($fp)
	lw $t1, -6308($fp)
	sub $t0, $t0, $t1
	sw $t0, -6312($fp)
	lw $t0, -452($fp)
	sw $t0, -6316($fp)
	lw $t0, -6312($fp)
	lw $t1, -6316($fp)
	add $t0, $t0, $t1
	sw $t0, -6320($fp)
	addi $sp, $sp, -4
	lw $t0, -6272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6320($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6324($fp)
	addi $sp, $sp, 16
	lw $t0, -1100($fp)
	sw $t0, -6328($fp)
	li $t0, 61807
	sw $t0, -6332($fp)
	lw $t0, -6328($fp)
	lw $t1, -6332($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6336($fp)
	li $t0, 0
	lw $t1, -6336($fp)
	sub $t0, $t0, $t1
	sw $t0, -6340($fp)
	lw $t0, -452($fp)
	sw $t0, -6344($fp)
	addi $t0, $fp, -44
	sw $t0, -6348($fp)
	li $t0, 3
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
	lw $t0, -500($fp)
	sw $t0, -6368($fp)
	lw $t0, -6368($fp)
	sw $t0, -5940($fp)
	lw $t0, -5940($fp)
	sw $t0, -6372($fp)
	lw $t0, -1064($fp)
	sw $t0, -6376($fp)
	addi $sp, $sp, -4
	lw $t0, -6344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6376($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6380($fp)
	addi $sp, $sp, 20
	lw $t0, -1316($fp)
	sw $t0, -6384($fp)
	lw $t0, -6380($fp)
	lw $t1, -6384($fp)
	mul $t0, $t0, $t1
	sw $t0, -6388($fp)
	lw $t0, -452($fp)
	sw $t0, -6392($fp)
	lw $t0, -6392($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -6396($fp)
	lw $t0, -956($fp)
	sw $t0, -6400($fp)
	lw $t0, -6400($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -6404($fp)
	addi $sp, $sp, -4
	lw $t0, -6388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6404($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6408($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -6268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6408($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6412($fp)
	addi $sp, $sp, 20
	lw $t0, -6260($fp)
	lw $t1, -6412($fp)
	sub $t0, $t0, $t1
	sw $t0, -6416($fp)
	lw $t1, -6416($fp)
	li $t2, 0
	bne $t1, $t2, label836
	j label837
label836:
	addi $t0, $fp, -16
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
	lw $t0, -5952($fp)
	sw $t0, -6440($fp)
	lw $t0, -6436($fp)
	lw $t1, -6440($fp)
	mul $t0, $t0, $t1
	sw $t0, -6444($fp)
	lw $t0, -6444($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -6448($fp)
	j label835
label837:
	j label832
label834:
label607:
	j label601
label603:
	j label596
label598:
	lw $t0, -140($fp)
	sw $t0, -6452($fp)
	lw $t0, -6452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -6456($fp)
	li $t0, 0
	sw $t0, -6460($fp)
	li $t0, 4
	lw $t1, -6460($fp)
	mul $t0, $t0, $t1
	sw $t0, -6464($fp)
	lw $t0, -6464($fp)
	lw $t1, -6456($fp)
	add $t0, $t0, $t1
	sw $t0, -6468($fp)
	lw $t0, -6468($fp)
	lw $t1, 0($t0)
	sw $t1, -6472($fp)
	lw $t0, -6472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -6476($fp)
	li $t0, 1
	sw $t0, -6480($fp)
	li $t0, 4
	lw $t1, -6480($fp)
	mul $t0, $t0, $t1
	sw $t0, -6484($fp)
	lw $t0, -6484($fp)
	lw $t1, -6476($fp)
	add $t0, $t0, $t1
	sw $t0, -6488($fp)
	lw $t0, -6488($fp)
	lw $t1, 0($t0)
	sw $t1, -6492($fp)
	lw $t0, -6492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -6496($fp)
	li $t0, 2
	sw $t0, -6500($fp)
	li $t0, 4
	lw $t1, -6500($fp)
	mul $t0, $t0, $t1
	sw $t0, -6504($fp)
	lw $t0, -6504($fp)
	lw $t1, -6496($fp)
	add $t0, $t0, $t1
	sw $t0, -6508($fp)
	lw $t0, -6508($fp)
	lw $t1, 0($t0)
	sw $t1, -6512($fp)
	lw $t0, -6512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -224($fp)
	sw $t0, -6516($fp)
	lw $t0, -6516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -236($fp)
	sw $t0, -6520($fp)
	lw $t0, -6520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -248($fp)
	sw $t0, -6524($fp)
	lw $t0, -6524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -6528($fp)
	li $t0, 0
	sw $t0, -6532($fp)
	li $t0, 4
	lw $t1, -6532($fp)
	mul $t0, $t0, $t1
	sw $t0, -6536($fp)
	lw $t0, -6536($fp)
	lw $t1, -6528($fp)
	add $t0, $t0, $t1
	sw $t0, -6540($fp)
	lw $t0, -6540($fp)
	lw $t1, 0($t0)
	sw $t1, -6544($fp)
	lw $t0, -6544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -6548($fp)
	li $t0, 1
	sw $t0, -6552($fp)
	li $t0, 4
	lw $t1, -6552($fp)
	mul $t0, $t0, $t1
	sw $t0, -6556($fp)
	lw $t0, -6556($fp)
	lw $t1, -6548($fp)
	add $t0, $t0, $t1
	sw $t0, -6560($fp)
	lw $t0, -6560($fp)
	lw $t1, 0($t0)
	sw $t1, -6564($fp)
	lw $t0, -6564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -6568($fp)
	li $t0, 2
	sw $t0, -6572($fp)
	li $t0, 4
	lw $t1, -6572($fp)
	mul $t0, $t0, $t1
	sw $t0, -6576($fp)
	lw $t0, -6576($fp)
	lw $t1, -6568($fp)
	add $t0, $t0, $t1
	sw $t0, -6580($fp)
	lw $t0, -6580($fp)
	lw $t1, 0($t0)
	sw $t1, -6584($fp)
	lw $t0, -6584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -332($fp)
	sw $t0, -6588($fp)
	lw $t0, -6588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -344($fp)
	sw $t0, -6592($fp)
	lw $t0, -6592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -6596($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -6616($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -6636($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -6656($fp)
	li $t0, 3
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
	lw $t0, -452($fp)
	sw $t0, -6676($fp)
	lw $t0, -6676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -464($fp)
	sw $t0, -6680($fp)
	lw $t0, -6680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	sw $t0, -6684($fp)
	lw $t0, -6684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -488($fp)
	sw $t0, -6688($fp)
	lw $t0, -6688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -6692($fp)
	lw $t0, -6692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -6696($fp)
	li $t0, 0
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
	addi $t0, $fp, -72
	sw $t0, -6716($fp)
	li $t0, 1
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
	addi $t0, $fp, -72
	sw $t0, -6736($fp)
	li $t0, 2
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
	addi $t0, $fp, -72
	sw $t0, -6756($fp)
	li $t0, 3
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
	addi $t0, $fp, -72
	sw $t0, -6776($fp)
	li $t0, 4
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
	addi $t0, $fp, -72
	sw $t0, -6796($fp)
	li $t0, 5
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
	addi $t0, $fp, -72
	sw $t0, -6816($fp)
	li $t0, 6
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
	lw $t0, -680($fp)
	sw $t0, -6836($fp)
	lw $t0, -6836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -692($fp)
	sw $t0, -6840($fp)
	lw $t0, -6840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -704($fp)
	sw $t0, -6844($fp)
	lw $t0, -6844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -716($fp)
	sw $t0, -6848($fp)
	lw $t0, -6848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -728($fp)
	sw $t0, -6852($fp)
	lw $t0, -6852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -6856($fp)
	li $t0, 0
	sw $t0, -6860($fp)
	li $t0, 4
	lw $t1, -6860($fp)
	mul $t0, $t0, $t1
	sw $t0, -6864($fp)
	lw $t0, -6864($fp)
	lw $t1, -6856($fp)
	add $t0, $t0, $t1
	sw $t0, -6868($fp)
	lw $t0, -6868($fp)
	lw $t1, 0($t0)
	sw $t1, -6872($fp)
	lw $t0, -6872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -764($fp)
	sw $t0, -6876($fp)
	lw $t0, -6876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -776($fp)
	sw $t0, -6880($fp)
	lw $t0, -6880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -788($fp)
	sw $t0, -6884($fp)
	lw $t0, -6884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -800($fp)
	sw $t0, -6888($fp)
	lw $t0, -6888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -812($fp)
	sw $t0, -6892($fp)
	lw $t0, -6892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -824($fp)
	sw $t0, -6896($fp)
	lw $t0, -6896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -6900($fp)
	li $t0, 0
	sw $t0, -6904($fp)
	li $t0, 4
	lw $t1, -6904($fp)
	mul $t0, $t0, $t1
	sw $t0, -6908($fp)
	lw $t0, -6908($fp)
	lw $t1, -6900($fp)
	add $t0, $t0, $t1
	sw $t0, -6912($fp)
	lw $t0, -6912($fp)
	lw $t1, 0($t0)
	sw $t1, -6916($fp)
	lw $t0, -6916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -6920($fp)
	li $t0, 1
	sw $t0, -6924($fp)
	li $t0, 4
	lw $t1, -6924($fp)
	mul $t0, $t0, $t1
	sw $t0, -6928($fp)
	lw $t0, -6928($fp)
	lw $t1, -6920($fp)
	add $t0, $t0, $t1
	sw $t0, -6932($fp)
	lw $t0, -6932($fp)
	lw $t1, 0($t0)
	sw $t1, -6936($fp)
	lw $t0, -6936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -6940($fp)
	li $t0, 2
	sw $t0, -6944($fp)
	li $t0, 4
	lw $t1, -6944($fp)
	mul $t0, $t0, $t1
	sw $t0, -6948($fp)
	lw $t0, -6948($fp)
	lw $t1, -6940($fp)
	add $t0, $t0, $t1
	sw $t0, -6952($fp)
	lw $t0, -6952($fp)
	lw $t1, 0($t0)
	sw $t1, -6956($fp)
	lw $t0, -6956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -6960($fp)
	li $t0, 3
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
	lw $t0, -6976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -6980($fp)
	li $t0, 4
	sw $t0, -6984($fp)
	li $t0, 4
	lw $t1, -6984($fp)
	mul $t0, $t0, $t1
	sw $t0, -6988($fp)
	lw $t0, -6988($fp)
	lw $t1, -6980($fp)
	add $t0, $t0, $t1
	sw $t0, -6992($fp)
	lw $t0, -6992($fp)
	lw $t1, 0($t0)
	sw $t1, -6996($fp)
	lw $t0, -6996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -956($fp)
	sw $t0, -7000($fp)
	lw $t0, -7000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -968($fp)
	sw $t0, -7004($fp)
	lw $t0, -7004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -7008($fp)
	li $t0, 0
	sw $t0, -7012($fp)
	li $t0, 4
	lw $t1, -7012($fp)
	mul $t0, $t0, $t1
	sw $t0, -7016($fp)
	lw $t0, -7016($fp)
	lw $t1, -7008($fp)
	add $t0, $t0, $t1
	sw $t0, -7020($fp)
	lw $t0, -7020($fp)
	lw $t1, 0($t0)
	sw $t1, -7024($fp)
	lw $t0, -7024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -7028($fp)
	li $t0, 1
	sw $t0, -7032($fp)
	li $t0, 4
	lw $t1, -7032($fp)
	mul $t0, $t0, $t1
	sw $t0, -7036($fp)
	lw $t0, -7036($fp)
	lw $t1, -7028($fp)
	add $t0, $t0, $t1
	sw $t0, -7040($fp)
	lw $t0, -7040($fp)
	lw $t1, 0($t0)
	sw $t1, -7044($fp)
	lw $t0, -7044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -7048($fp)
	li $t0, 2
	sw $t0, -7052($fp)
	li $t0, 4
	lw $t1, -7052($fp)
	mul $t0, $t0, $t1
	sw $t0, -7056($fp)
	lw $t0, -7056($fp)
	lw $t1, -7048($fp)
	add $t0, $t0, $t1
	sw $t0, -7060($fp)
	lw $t0, -7060($fp)
	lw $t1, 0($t0)
	sw $t1, -7064($fp)
	lw $t0, -7064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1052($fp)
	sw $t0, -7068($fp)
	lw $t0, -7068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1064($fp)
	sw $t0, -7072($fp)
	lw $t0, -7072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1076($fp)
	sw $t0, -7076($fp)
	lw $t0, -7076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1088($fp)
	sw $t0, -7080($fp)
	lw $t0, -7080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1100($fp)
	sw $t0, -7084($fp)
	lw $t0, -7084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1112($fp)
	sw $t0, -7088($fp)
	lw $t0, -7088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7092($fp)
	li $t0, 0
	sw $t0, -7096($fp)
	li $t0, 4
	lw $t1, -7096($fp)
	mul $t0, $t0, $t1
	sw $t0, -7100($fp)
	lw $t0, -7100($fp)
	lw $t1, -7092($fp)
	add $t0, $t0, $t1
	sw $t0, -7104($fp)
	lw $t0, -7104($fp)
	lw $t1, 0($t0)
	sw $t1, -7108($fp)
	lw $t0, -7108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7112($fp)
	li $t0, 1
	sw $t0, -7116($fp)
	li $t0, 4
	lw $t1, -7116($fp)
	mul $t0, $t0, $t1
	sw $t0, -7120($fp)
	lw $t0, -7120($fp)
	lw $t1, -7112($fp)
	add $t0, $t0, $t1
	sw $t0, -7124($fp)
	lw $t0, -7124($fp)
	lw $t1, 0($t0)
	sw $t1, -7128($fp)
	lw $t0, -7128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7132($fp)
	li $t0, 2
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
	lw $t0, -7148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7152($fp)
	li $t0, 3
	sw $t0, -7156($fp)
	li $t0, 4
	lw $t1, -7156($fp)
	mul $t0, $t0, $t1
	sw $t0, -7160($fp)
	lw $t0, -7160($fp)
	lw $t1, -7152($fp)
	add $t0, $t0, $t1
	sw $t0, -7164($fp)
	lw $t0, -7164($fp)
	lw $t1, 0($t0)
	sw $t1, -7168($fp)
	lw $t0, -7168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7172($fp)
	li $t0, 4
	sw $t0, -7176($fp)
	li $t0, 4
	lw $t1, -7176($fp)
	mul $t0, $t0, $t1
	sw $t0, -7180($fp)
	lw $t0, -7180($fp)
	lw $t1, -7172($fp)
	add $t0, $t0, $t1
	sw $t0, -7184($fp)
	lw $t0, -7184($fp)
	lw $t1, 0($t0)
	sw $t1, -7188($fp)
	lw $t0, -7188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7192($fp)
	li $t0, 5
	sw $t0, -7196($fp)
	li $t0, 4
	lw $t1, -7196($fp)
	mul $t0, $t0, $t1
	sw $t0, -7200($fp)
	lw $t0, -7200($fp)
	lw $t1, -7192($fp)
	add $t0, $t0, $t1
	sw $t0, -7204($fp)
	lw $t0, -7204($fp)
	lw $t1, 0($t0)
	sw $t1, -7208($fp)
	lw $t0, -7208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1268($fp)
	sw $t0, -7212($fp)
	lw $t0, -7212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1280($fp)
	sw $t0, -7216($fp)
	lw $t0, -7216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1292($fp)
	sw $t0, -7220($fp)
	lw $t0, -7220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1304($fp)
	sw $t0, -7224($fp)
	lw $t0, -7224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1316($fp)
	sw $t0, -7228($fp)
	lw $t0, -7228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1328($fp)
	sw $t0, -7232($fp)
	lw $t0, -7232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1340($fp)
	sw $t0, -7236($fp)
	lw $t0, -7236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1352($fp)
	sw $t0, -7240($fp)
	lw $t0, -7240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1364($fp)
	sw $t0, -7244($fp)
	lw $t0, -7244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1376($fp)
	sw $t0, -7248($fp)
	lw $t0, -7248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1388($fp)
	sw $t0, -7252($fp)
	lw $t0, -7252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1400($fp)
	sw $t0, -7256($fp)
	lw $t0, -7256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -7260($fp)
	lw $t0, -488($fp)
	sw $t0, -7264($fp)
	li $t0, 36666
	sw $t0, -7268($fp)
	li $t0, 23763
	sw $t0, -7272($fp)
	lw $t0, -7268($fp)
	lw $t1, -7272($fp)
	add $t0, $t0, $t1
	sw $t0, -7276($fp)
	lw $t1, -7264($fp)
	lw $t2, -7276($fp)
	bgt $t1, $t2, label864
	j label865
label864:
	li $t0, 1
	sw $t0, -7260($fp)
label865:
	lw $ra, -4($fp)
	lw $v0, -7260($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4388
	li $t0, 35616
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	li $t0, 23861
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	li $t0, 821
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	li $t0, 38722
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	li $t0, 35648
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 13914
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	li $t0, 18712
	sw $t0, -200($fp)
	addi $t0, $fp, -40
	sw $t0, -204($fp)
	li $t0, 0
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $t0, -204($fp)
	lw $t1, -212($fp)
	add $t0, $t0, $t1
	sw $t0, -216($fp)
	lw $t0, -200($fp)
	lw $t1, -216($fp)
	sw $t0, 0($t1)
	lw $t0, -216($fp)
	lw $t1, 0($t0)
	sw $t1, -220($fp)
	li $t0, 37934
	sw $t0, -224($fp)
	addi $t0, $fp, -40
	sw $t0, -228($fp)
	li $t0, 1
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
	li $t0, 38436
	sw $t0, -248($fp)
	addi $t0, $fp, -40
	sw $t0, -252($fp)
	li $t0, 2
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
	li $t0, 15907
	sw $t0, -272($fp)
	addi $t0, $fp, -40
	sw $t0, -276($fp)
	li $t0, 3
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
	li $t0, 17492
	sw $t0, -296($fp)
	addi $t0, $fp, -40
	sw $t0, -300($fp)
	li $t0, 4
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
	li $t0, 52390
	sw $t0, -320($fp)
	addi $t0, $fp, -40
	sw $t0, -324($fp)
	li $t0, 5
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
	li $t0, 65409
	sw $t0, -344($fp)
	addi $t0, $fp, -40
	sw $t0, -348($fp)
	li $t0, 6
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
	li $t0, 10173
	sw $t0, -368($fp)
	addi $t0, $fp, -40
	sw $t0, -372($fp)
	li $t0, 7
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
	li $t0, 59427
	sw $t0, -392($fp)
	addi $t0, $fp, -40
	sw $t0, -396($fp)
	li $t0, 8
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
	li $t0, 17257
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	li $t0, 29386
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	li $t0, 27916
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	li $t0, 17831
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	li $t0, 48914
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	li $t0, 59439
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	li $t0, 8923
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	li $t0, 1821
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	li $t0, 55710
	sw $t0, -512($fp)
	addi $t0, $fp, -60
	sw $t0, -516($fp)
	li $t0, 0
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
	li $t0, 62706
	sw $t0, -536($fp)
	addi $t0, $fp, -60
	sw $t0, -540($fp)
	li $t0, 1
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
	li $t0, 21142
	sw $t0, -560($fp)
	addi $t0, $fp, -60
	sw $t0, -564($fp)
	li $t0, 2
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
	li $t0, 4023
	sw $t0, -584($fp)
	addi $t0, $fp, -60
	sw $t0, -588($fp)
	li $t0, 3
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -596($fp)
	lw $t0, -588($fp)
	lw $t1, -596($fp)
	add $t0, $t0, $t1
	sw $t0, -600($fp)
	lw $t0, -584($fp)
	lw $t1, -600($fp)
	sw $t0, 0($t1)
	lw $t0, -600($fp)
	lw $t1, 0($t0)
	sw $t1, -604($fp)
	li $t0, 5884
	sw $t0, -608($fp)
	addi $t0, $fp, -60
	sw $t0, -612($fp)
	li $t0, 4
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -620($fp)
	lw $t0, -612($fp)
	lw $t1, -620($fp)
	add $t0, $t0, $t1
	sw $t0, -624($fp)
	lw $t0, -608($fp)
	lw $t1, -624($fp)
	sw $t0, 0($t1)
	lw $t0, -624($fp)
	lw $t1, 0($t0)
	sw $t1, -628($fp)
	li $t0, 11829
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	li $t0, 40689
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	li $t0, 29648
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	li $t0, 47445
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	li $t0, 64550
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	li $t0, 30469
	sw $t0, -692($fp)
	addi $t0, $fp, -84
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
	li $t0, 20631
	sw $t0, -716($fp)
	addi $t0, $fp, -84
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
	li $t0, 34663
	sw $t0, -740($fp)
	addi $t0, $fp, -84
	sw $t0, -744($fp)
	li $t0, 2
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
	li $t0, 44383
	sw $t0, -764($fp)
	addi $t0, $fp, -84
	sw $t0, -768($fp)
	li $t0, 3
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
	li $t0, 39343
	sw $t0, -788($fp)
	addi $t0, $fp, -84
	sw $t0, -792($fp)
	li $t0, 4
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
	li $t0, 7061
	sw $t0, -812($fp)
	addi $t0, $fp, -84
	sw $t0, -816($fp)
	li $t0, 5
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
	li $t0, 17284
	sw $t0, -836($fp)
	addi $t0, $fp, -124
	sw $t0, -840($fp)
	li $t0, 0
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
	li $t0, 55250
	sw $t0, -860($fp)
	addi $t0, $fp, -124
	sw $t0, -864($fp)
	li $t0, 1
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
	li $t0, 24553
	sw $t0, -884($fp)
	addi $t0, $fp, -124
	sw $t0, -888($fp)
	li $t0, 2
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
	li $t0, 4138
	sw $t0, -908($fp)
	addi $t0, $fp, -124
	sw $t0, -912($fp)
	li $t0, 3
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
	li $t0, 55123
	sw $t0, -932($fp)
	addi $t0, $fp, -124
	sw $t0, -936($fp)
	li $t0, 4
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
	li $t0, 34726
	sw $t0, -956($fp)
	addi $t0, $fp, -124
	sw $t0, -960($fp)
	li $t0, 5
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
	li $t0, 63565
	sw $t0, -980($fp)
	addi $t0, $fp, -124
	sw $t0, -984($fp)
	li $t0, 6
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -992($fp)
	lw $t0, -984($fp)
	lw $t1, -992($fp)
	add $t0, $t0, $t1
	sw $t0, -996($fp)
	lw $t0, -980($fp)
	lw $t1, -996($fp)
	sw $t0, 0($t1)
	lw $t0, -996($fp)
	lw $t1, 0($t0)
	sw $t1, -1000($fp)
	li $t0, 6844
	sw $t0, -1004($fp)
	addi $t0, $fp, -124
	sw $t0, -1008($fp)
	li $t0, 7
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1016($fp)
	lw $t0, -1008($fp)
	lw $t1, -1016($fp)
	add $t0, $t0, $t1
	sw $t0, -1020($fp)
	lw $t0, -1004($fp)
	lw $t1, -1020($fp)
	sw $t0, 0($t1)
	lw $t0, -1020($fp)
	lw $t1, 0($t0)
	sw $t1, -1024($fp)
	li $t0, 64112
	sw $t0, -1028($fp)
	addi $t0, $fp, -124
	sw $t0, -1032($fp)
	li $t0, 8
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
	li $t0, 25946
	sw $t0, -1052($fp)
	addi $t0, $fp, -124
	sw $t0, -1056($fp)
	li $t0, 9
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
	li $t0, 24676
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
	li $t0, 47490
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -1096($fp)
	lw $t0, -132($fp)
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -156($fp)
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
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
	lw $t0, -1140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1144($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -1164($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -1184($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -1204($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -1224($fp)
	li $t0, 5
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
	lw $t0, -1240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1244($fp)
	li $t0, 6
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
	addi $t0, $fp, -40
	sw $t0, -1264($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -1284($fp)
	li $t0, 8
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
	lw $t0, -420($fp)
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1336($fp)
	li $t0, 0
	sw $t0, -1340($fp)
	li $t0, 4
	lw $t1, -1340($fp)
	mul $t0, $t0, $t1
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	lw $t1, -1336($fp)
	add $t0, $t0, $t1
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	lw $t1, 0($t0)
	sw $t1, -1352($fp)
	lw $t0, -1352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1356($fp)
	li $t0, 1
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
	lw $t0, -1372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1376($fp)
	li $t0, 2
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
	addi $t0, $fp, -60
	sw $t0, -1396($fp)
	li $t0, 3
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
	lw $t0, -1412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1416($fp)
	li $t0, 4
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
	lw $t0, -1432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -684($fp)
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -1456($fp)
	li $t0, 0
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
	lw $t0, -1472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -1476($fp)
	li $t0, 1
	sw $t0, -1480($fp)
	li $t0, 4
	lw $t1, -1480($fp)
	mul $t0, $t0, $t1
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	lw $t1, -1476($fp)
	add $t0, $t0, $t1
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	lw $t1, 0($t0)
	sw $t1, -1492($fp)
	lw $t0, -1492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -1496($fp)
	li $t0, 2
	sw $t0, -1500($fp)
	li $t0, 4
	lw $t1, -1500($fp)
	mul $t0, $t0, $t1
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	lw $t1, -1496($fp)
	add $t0, $t0, $t1
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	lw $t1, 0($t0)
	sw $t1, -1512($fp)
	lw $t0, -1512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -1516($fp)
	li $t0, 3
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
	lw $t0, -1532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -1536($fp)
	li $t0, 4
	sw $t0, -1540($fp)
	li $t0, 4
	lw $t1, -1540($fp)
	mul $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	lw $t1, -1536($fp)
	add $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	lw $t1, 0($t0)
	sw $t1, -1552($fp)
	lw $t0, -1552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -1556($fp)
	li $t0, 5
	sw $t0, -1560($fp)
	li $t0, 4
	lw $t1, -1560($fp)
	mul $t0, $t0, $t1
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	lw $t1, -1556($fp)
	add $t0, $t0, $t1
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	lw $t1, 0($t0)
	sw $t1, -1572($fp)
	lw $t0, -1572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -1576($fp)
	li $t0, 0
	sw $t0, -1580($fp)
	li $t0, 4
	lw $t1, -1580($fp)
	mul $t0, $t0, $t1
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	lw $t1, -1576($fp)
	add $t0, $t0, $t1
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	lw $t1, 0($t0)
	sw $t1, -1592($fp)
	lw $t0, -1592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -1596($fp)
	li $t0, 1
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
	lw $t0, -1612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -1616($fp)
	li $t0, 2
	sw $t0, -1620($fp)
	li $t0, 4
	lw $t1, -1620($fp)
	mul $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	lw $t1, -1616($fp)
	add $t0, $t0, $t1
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	lw $t1, 0($t0)
	sw $t1, -1632($fp)
	lw $t0, -1632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -1636($fp)
	li $t0, 3
	sw $t0, -1640($fp)
	li $t0, 4
	lw $t1, -1640($fp)
	mul $t0, $t0, $t1
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	lw $t1, -1636($fp)
	add $t0, $t0, $t1
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	lw $t1, 0($t0)
	sw $t1, -1652($fp)
	lw $t0, -1652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -1656($fp)
	li $t0, 4
	sw $t0, -1660($fp)
	li $t0, 4
	lw $t1, -1660($fp)
	mul $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	lw $t1, -1656($fp)
	add $t0, $t0, $t1
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	lw $t1, 0($t0)
	sw $t1, -1672($fp)
	lw $t0, -1672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -1676($fp)
	li $t0, 5
	sw $t0, -1680($fp)
	li $t0, 4
	lw $t1, -1680($fp)
	mul $t0, $t0, $t1
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	lw $t1, -1676($fp)
	add $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	lw $t1, 0($t0)
	sw $t1, -1692($fp)
	lw $t0, -1692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -1696($fp)
	li $t0, 6
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
	lw $t0, -1712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -1716($fp)
	li $t0, 7
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
	addi $t0, $fp, -124
	sw $t0, -1736($fp)
	li $t0, 8
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
	addi $t0, $fp, -124
	sw $t0, -1756($fp)
	li $t0, 9
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
	lw $t0, -1080($fp)
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1092($fp)
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1784($fp)
	li $t0, 19849
	sw $t0, -1788($fp)
	lw $t1, -1788($fp)
	li $t2, 0
	bne $t1, $t2, label866
	j label867
label866:
	li $t0, 1
	sw $t0, -1784($fp)
label867:
	lw $t0, -1784($fp)
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1792($fp)
	lw $ra, -4($fp)
	lw $v0, -1792($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 33599
	sw $t0, -1836($fp)
	addi $t0, $fp, -1832
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
	li $t0, 49311
	sw $t0, -1860($fp)
	addi $t0, $fp, -1832
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
	li $t0, 10024
	sw $t0, -1884($fp)
	addi $t0, $fp, -1832
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
	li $t0, 30769
	sw $t0, -1908($fp)
	addi $t0, $fp, -1832
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
	li $t0, 4918
	sw $t0, -1932($fp)
	addi $t0, $fp, -1832
	sw $t0, -1936($fp)
	li $t0, 4
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1944($fp)
	lw $t0, -1936($fp)
	lw $t1, -1944($fp)
	add $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t0, -1932($fp)
	lw $t1, -1948($fp)
	sw $t0, 0($t1)
	lw $t0, -1948($fp)
	lw $t1, 0($t0)
	sw $t1, -1952($fp)
	li $t0, 14047
	sw $t0, -1956($fp)
	addi $t0, $fp, -1832
	sw $t0, -1960($fp)
	li $t0, 5
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1968($fp)
	lw $t0, -1960($fp)
	lw $t1, -1968($fp)
	add $t0, $t0, $t1
	sw $t0, -1972($fp)
	lw $t0, -1956($fp)
	lw $t1, -1972($fp)
	sw $t0, 0($t1)
	lw $t0, -1972($fp)
	lw $t1, 0($t0)
	sw $t1, -1976($fp)
	li $t0, 36653
	sw $t0, -1980($fp)
	addi $t0, $fp, -1832
	sw $t0, -1984($fp)
	li $t0, 6
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1992($fp)
	lw $t0, -1984($fp)
	lw $t1, -1992($fp)
	add $t0, $t0, $t1
	sw $t0, -1996($fp)
	lw $t0, -1980($fp)
	lw $t1, -1996($fp)
	sw $t0, 0($t1)
	lw $t0, -1996($fp)
	lw $t1, 0($t0)
	sw $t1, -2000($fp)
	li $t0, 16747
	sw $t0, -2004($fp)
	addi $t0, $fp, -1832
	sw $t0, -2008($fp)
	li $t0, 7
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t0, -2008($fp)
	lw $t1, -2016($fp)
	add $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t0, -2004($fp)
	lw $t1, -2020($fp)
	sw $t0, 0($t1)
	lw $t0, -2020($fp)
	lw $t1, 0($t0)
	sw $t1, -2024($fp)
	li $t0, 54736
	sw $t0, -2028($fp)
	addi $t0, $fp, -1832
	sw $t0, -2032($fp)
	li $t0, 8
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $t0, -2032($fp)
	lw $t1, -2040($fp)
	add $t0, $t0, $t1
	sw $t0, -2044($fp)
	lw $t0, -2028($fp)
	lw $t1, -2044($fp)
	sw $t0, 0($t1)
	lw $t0, -2044($fp)
	lw $t1, 0($t0)
	sw $t1, -2048($fp)
	li $t0, 765
	sw $t0, -2052($fp)
	addi $t0, $fp, -1832
	sw $t0, -2056($fp)
	li $t0, 9
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t0, -2056($fp)
	lw $t1, -2064($fp)
	add $t0, $t0, $t1
	sw $t0, -2068($fp)
	lw $t0, -2052($fp)
	lw $t1, -2068($fp)
	sw $t0, 0($t1)
	lw $t0, -2068($fp)
	lw $t1, 0($t0)
	sw $t1, -2072($fp)
	li $t0, 64192
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	sw $t0, -2084($fp)
	li $t0, 53750
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	sw $t0, -2096($fp)
	li $t0, 0
	sw $t0, -2100($fp)
	li $t0, 31235
	sw $t0, -2104($fp)
	li $t0, 19287
	sw $t0, -2108($fp)
	lw $t1, -2104($fp)
	lw $t2, -2108($fp)
	beq $t1, $t2, label871
	j label870
label871:
	lw $t0, -2092($fp)
	sw $t0, -2112($fp)
	lw $t1, -2112($fp)
	li $t2, 0
	bne $t1, $t2, label868
	j label870
label870:
	lw $t0, -684($fp)
	sw $t0, -2116($fp)
	lw $t0, -420($fp)
	sw $t0, -2120($fp)
	lw $t0, -2116($fp)
	lw $t1, -2120($fp)
	mul $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t1, -2124($fp)
	li $t2, 0
	bne $t1, $t2, label868
	j label869
label868:
	li $t0, 1
	sw $t0, -2100($fp)
label869:
	lw $t0, -2100($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -2128($fp)
	li $t0, 22877
	sw $t0, -2132($fp)
	li $t0, 10082
	sw $t0, -2136($fp)
	li $t0, 0
	lw $t1, -2136($fp)
	sub $t0, $t0, $t1
	sw $t0, -2140($fp)
	lw $t0, -2132($fp)
	lw $t1, -2140($fp)
	add $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t0, -636($fp)
	sw $t0, -2148($fp)
	lw $t0, -2144($fp)
	lw $t1, -2148($fp)
	add $t0, $t0, $t1
	sw $t0, -2152($fp)
	li $t0, 0
	sw $t0, -2156($fp)
	lw $t0, -156($fp)
	sw $t0, -2160($fp)
	addi $t0, $fp, -84
	sw $t0, -2164($fp)
	li $t0, 0
	sw $t0, -2168($fp)
	li $t0, 58630
	sw $t0, -2172($fp)
	lw $t0, -648($fp)
	sw $t0, -2176($fp)
	lw $t1, -2172($fp)
	lw $t2, -2176($fp)
	bge $t1, $t2, label874
	j label875
label874:
	li $t0, 1
	sw $t0, -2168($fp)
label875:
	li $t0, 4
	lw $t1, -2168($fp)
	mul $t0, $t0, $t1
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	lw $t1, -2164($fp)
	add $t0, $t0, $t1
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	lw $t1, 0($t0)
	sw $t1, -2188($fp)
	lw $t1, -2160($fp)
	lw $t2, -2188($fp)
	bne $t1, $t2, label872
	j label873
label872:
	li $t0, 1
	sw $t0, -2156($fp)
label873:
	li $t0, 0
	sw $t0, -2192($fp)
	lw $t0, -432($fp)
	sw $t0, -2196($fp)
	lw $t1, -2196($fp)
	li $t2, 0
	bne $t1, $t2, label877
	j label876
label876:
	li $t0, 1
	sw $t0, -2192($fp)
label877:
	li $t0, 0
	sw $t0, -2200($fp)
	li $t0, 0
	sw $t0, -2204($fp)
	li $t0, 29938
	sw $t0, -2208($fp)
	lw $t1, -2208($fp)
	li $t2, 0
	bne $t1, $t2, label881
	j label880
label880:
	li $t0, 1
	sw $t0, -2204($fp)
label881:
	li $t0, 0
	lw $t1, -2204($fp)
	sub $t0, $t0, $t1
	sw $t0, -2212($fp)
	lw $t1, -2212($fp)
	li $t2, 0
	bne $t1, $t2, label879
	j label878
label878:
	li $t0, 1
	sw $t0, -2200($fp)
label879:
	lw $t0, -2192($fp)
	lw $t1, -2200($fp)
	sub $t0, $t0, $t1
	sw $t0, -2216($fp)
	addi $t0, $fp, -1832
	sw $t0, -2220($fp)
	li $t0, 0
	sw $t0, -2224($fp)
	li $t0, 27366
	sw $t0, -2228($fp)
	lw $t0, -672($fp)
	sw $t0, -2232($fp)
	lw $t0, -2228($fp)
	lw $t1, -2232($fp)
	mul $t0, $t0, $t1
	sw $t0, -2236($fp)
	lw $t0, -420($fp)
	sw $t0, -2240($fp)
	lw $t1, -2236($fp)
	lw $t2, -2240($fp)
	beq $t1, $t2, label885
	j label886
label885:
	li $t0, 1
	sw $t0, -2224($fp)
label886:
	li $t0, 4
	lw $t1, -2224($fp)
	mul $t0, $t0, $t1
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	lw $t1, -2220($fp)
	add $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	lw $t1, 0($t0)
	sw $t1, -2252($fp)
	li $t0, 48344
	sw $t0, -2256($fp)
	lw $t0, -2252($fp)
	lw $t1, -2256($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2260($fp)
	lw $t1, -2260($fp)
	li $t2, 0
	bne $t1, $t2, label882
	j label883
label882:
	li $t0, 0
	sw $t0, -2264($fp)
	lw $t0, -492($fp)
	sw $t0, -2268($fp)
	lw $t0, -492($fp)
	sw $t0, -2272($fp)
	lw $t0, -2268($fp)
	lw $t1, -2272($fp)
	mul $t0, $t0, $t1
	sw $t0, -2276($fp)
	li $t0, 29534
	sw $t0, -2280($fp)
	li $t0, 0
	sw $t0, -2284($fp)
	li $t0, 31505
	sw $t0, -2288($fp)
	lw $t1, -2288($fp)
	li $t2, 0
	bne $t1, $t2, label893
	j label892
label893:
	li $t0, 37931
	sw $t0, -2292($fp)
	lw $t1, -2292($fp)
	li $t2, 0
	bne $t1, $t2, label890
	j label892
label892:
	li $t0, 23681
	sw $t0, -2296($fp)
	lw $t1, -2296($fp)
	li $t2, 0
	bne $t1, $t2, label890
	j label891
label890:
	li $t0, 1
	sw $t0, -2284($fp)
label891:
	li $t0, 54491
	sw $t0, -2300($fp)
	li $t0, 0
	lw $t1, -2300($fp)
	sub $t0, $t0, $t1
	sw $t0, -2304($fp)
	li $t0, 0
	lw $t1, -2304($fp)
	sub $t0, $t0, $t1
	sw $t0, -2308($fp)
	addi $sp, $sp, -4
	lw $t0, -2280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2308($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2312($fp)
	addi $sp, $sp, 16
	li $t0, 44776
	sw $t0, -2316($fp)
	lw $t0, -2312($fp)
	lw $t1, -2316($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2320($fp)
	lw $t1, -2276($fp)
	lw $t2, -2320($fp)
	beq $t1, $t2, label889
	j label888
label889:
	li $t0, 0
	sw $t0, -2324($fp)
	lw $t0, -2080($fp)
	sw $t0, -2328($fp)
	li $t0, 22257
	sw $t0, -2332($fp)
	lw $t1, -2328($fp)
	lw $t2, -2332($fp)
	bgt $t1, $t2, label894
	j label895
label894:
	li $t0, 1
	sw $t0, -2324($fp)
label895:
	li $t0, 55480
	sw $t0, -2336($fp)
	li $t0, 3916
	sw $t0, -2340($fp)
	lw $t0, -2336($fp)
	lw $t1, -2340($fp)
	sub $t0, $t0, $t1
	sw $t0, -2344($fp)
	lw $t1, -2324($fp)
	lw $t2, -2344($fp)
	bgt $t1, $t2, label887
	j label888
label887:
	li $t0, 1
	sw $t0, -2264($fp)
label888:
	j label884
label883:
	li $t0, 0
	sw $t0, -2348($fp)
	li $t0, 4211
	sw $t0, -2352($fp)
	lw $t1, -2352($fp)
	li $t2, 0
	bne $t1, $t2, label896
	j label898
label898:
	lw $t0, -672($fp)
	sw $t0, -2356($fp)
	li $t0, 9794
	sw $t0, -2360($fp)
	lw $t0, -2356($fp)
	lw $t1, -2360($fp)
	add $t0, $t0, $t1
	sw $t0, -2364($fp)
	lw $t0, -168($fp)
	sw $t0, -2368($fp)
	lw $t0, -2364($fp)
	lw $t1, -2368($fp)
	sub $t0, $t0, $t1
	sw $t0, -2372($fp)
	li $t0, 37515
	sw $t0, -2376($fp)
	lw $t1, -2372($fp)
	lw $t2, -2376($fp)
	bgt $t1, $t2, label896
	j label897
label896:
	li $t0, 1
	sw $t0, -2348($fp)
label897:
	addi $t0, $fp, -60
	sw $t0, -2380($fp)
	addi $t0, $fp, -84
	sw $t0, -2384($fp)
	lw $t0, -180($fp)
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
	li $t0, 4
	lw $t1, -2400($fp)
	mul $t0, $t0, $t1
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	lw $t1, -2380($fp)
	add $t0, $t0, $t1
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	lw $t1, 0($t0)
	sw $t1, -2412($fp)
	li $t0, 0
	lw $t1, -2412($fp)
	sub $t0, $t0, $t1
	sw $t0, -2416($fp)
	li $t0, 0
	lw $t1, -2416($fp)
	sub $t0, $t0, $t1
	sw $t0, -2420($fp)
label884:
	li $t0, 53523
	sw $t0, -2424($fp)
	lw $t0, -2424($fp)
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	sw $t0, -2432($fp)
	li $t0, 19818
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	sw $t0, -2444($fp)
	li $t0, 2748
	sw $t0, -2448($fp)
	lw $t0, -2448($fp)
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	sw $t0, -2456($fp)
	li $t0, 0
	sw $t0, -2460($fp)
	addi $t0, $fp, -84
	sw $t0, -2464($fp)
	addi $t0, $fp, -60
	sw $t0, -2468($fp)
	lw $t0, -1080($fp)
	sw $t0, -2472($fp)
	li $t0, 4
	lw $t1, -2472($fp)
	mul $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	lw $t1, -2468($fp)
	add $t0, $t0, $t1
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	lw $t1, 0($t0)
	sw $t1, -2484($fp)
	li $t0, 58441
	sw $t0, -2488($fp)
	lw $t0, -2484($fp)
	lw $t1, -2488($fp)
	add $t0, $t0, $t1
	sw $t0, -2492($fp)
	li $t0, 4
	lw $t1, -2492($fp)
	mul $t0, $t0, $t1
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	lw $t1, -2464($fp)
	add $t0, $t0, $t1
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	lw $t1, 0($t0)
	sw $t1, -2504($fp)
	lw $t1, -2504($fp)
	li $t2, 0
	bne $t1, $t2, label900
	j label899
label899:
	li $t0, 1
	sw $t0, -2460($fp)
label900:
	li $t0, 0
	sw $t0, -2508($fp)
	lw $t0, -468($fp)
	sw $t0, -2512($fp)
	lw $t1, -2512($fp)
	li $t2, 0
	bne $t1, $t2, label902
	j label903
label903:
	lw $t0, -432($fp)
	sw $t0, -2516($fp)
	lw $t0, -2452($fp)
	sw $t0, -2520($fp)
	lw $t0, -2516($fp)
	lw $t1, -2520($fp)
	sub $t0, $t0, $t1
	sw $t0, -2524($fp)
	li $t0, 9652
	sw $t0, -2528($fp)
	lw $t0, -2524($fp)
	lw $t1, -2528($fp)
	add $t0, $t0, $t1
	sw $t0, -2532($fp)
	li $t0, 0
	sw $t0, -2536($fp)
	lw $t0, -2440($fp)
	sw $t0, -2540($fp)
	lw $t0, -2428($fp)
	sw $t0, -2544($fp)
	lw $t0, -2540($fp)
	lw $t1, -2544($fp)
	sub $t0, $t0, $t1
	sw $t0, -2548($fp)
	lw $t1, -2548($fp)
	li $t2, 0
	bne $t1, $t2, label904
	j label906
label906:
	li $t0, 39401
	sw $t0, -2552($fp)
	lw $t1, -2552($fp)
	li $t2, 0
	bne $t1, $t2, label904
	j label905
label904:
	li $t0, 1
	sw $t0, -2536($fp)
label905:
	li $t0, 0
	sw $t0, -2556($fp)
	li $t0, 0
	sw $t0, -2560($fp)
	lw $t0, -2428($fp)
	sw $t0, -2564($fp)
	li $t0, 33865
	sw $t0, -2568($fp)
	lw $t1, -2564($fp)
	lw $t2, -2568($fp)
	bne $t1, $t2, label909
	j label910
label909:
	li $t0, 1
	sw $t0, -2560($fp)
label910:
	lw $t0, -192($fp)
	sw $t0, -2572($fp)
	lw $t1, -2560($fp)
	lw $t2, -2572($fp)
	beq $t1, $t2, label907
	j label908
label907:
	li $t0, 1
	sw $t0, -2556($fp)
label908:
	li $t0, 0
	sw $t0, -2576($fp)
	lw $t0, -144($fp)
	sw $t0, -2580($fp)
	lw $t0, -504($fp)
	sw $t0, -2584($fp)
	lw $t1, -2580($fp)
	lw $t2, -2584($fp)
	bge $t1, $t2, label913
	j label912
label913:
	lw $t0, -492($fp)
	sw $t0, -2588($fp)
	lw $t1, -2588($fp)
	li $t2, 0
	bne $t1, $t2, label911
	j label912
label911:
	li $t0, 1
	sw $t0, -2576($fp)
label912:
	addi $sp, $sp, -4
	lw $t0, -2532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2576($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2592($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -2592($fp)
	sub $t0, $t0, $t1
	sw $t0, -2596($fp)
	lw $t1, -2596($fp)
	li $t2, 0
	bne $t1, $t2, label901
	j label902
label901:
	li $t0, 1
	sw $t0, -2508($fp)
label902:
	li $t0, 0
	sw $t0, -2600($fp)
	li $t0, 0
	sw $t0, -2604($fp)
	addi $t0, $fp, -84
	sw $t0, -2608($fp)
	li $t0, 0
	sw $t0, -2612($fp)
	lw $t0, -456($fp)
	sw $t0, -2616($fp)
	lw $t0, -444($fp)
	sw $t0, -2620($fp)
	lw $t1, -2616($fp)
	lw $t2, -2620($fp)
	blt $t1, $t2, label918
	j label919
label918:
	li $t0, 1
	sw $t0, -2612($fp)
label919:
	li $t0, 4
	lw $t1, -2612($fp)
	mul $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	lw $t1, -2608($fp)
	add $t0, $t0, $t1
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	lw $t1, 0($t0)
	sw $t1, -2632($fp)
	li $t0, 23065
	sw $t0, -2636($fp)
	lw $t1, -2632($fp)
	lw $t2, -2636($fp)
	bgt $t1, $t2, label916
	j label917
label916:
	li $t0, 1
	sw $t0, -2604($fp)
label917:
	li $t0, 40167
	sw $t0, -2640($fp)
	lw $t0, -684($fp)
	sw $t0, -2644($fp)
	lw $t0, -2640($fp)
	lw $t1, -2644($fp)
	sub $t0, $t0, $t1
	sw $t0, -2648($fp)
	addi $sp, $sp, -4
	lw $t0, -2648($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2652($fp)
	addi $sp, $sp, 8
	lw $t1, -2604($fp)
	lw $t2, -2652($fp)
	blt $t1, $t2, label914
	j label915
label914:
	li $t0, 1
	sw $t0, -2600($fp)
label915:
	li $t0, 0
	sw $t0, -2656($fp)
	li $t0, 8308
	sw $t0, -2660($fp)
	addi $t0, $fp, -60
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
	lw $t0, -2660($fp)
	lw $t1, -2680($fp)
	add $t0, $t0, $t1
	sw $t0, -2684($fp)
	lw $t0, -2452($fp)
	sw $t0, -2688($fp)
	lw $t1, -2684($fp)
	lw $t2, -2688($fp)
	bne $t1, $t2, label920
	j label921
label920:
	li $t0, 1
	sw $t0, -2656($fp)
label921:
	li $t0, 0
	sw $t0, -2692($fp)
	lw $t0, -432($fp)
	sw $t0, -2696($fp)
	lw $t1, -2696($fp)
	li $t2, 0
	bne $t1, $t2, label927
	j label924
label927:
	lw $t0, -636($fp)
	sw $t0, -2700($fp)
	lw $t1, -2700($fp)
	li $t2, 0
	bne $t1, $t2, label926
	j label924
label926:
	addi $t0, $fp, -40
	sw $t0, -2704($fp)
	li $t0, 7
	sw $t0, -2708($fp)
	li $t0, 4
	lw $t1, -2708($fp)
	mul $t0, $t0, $t1
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	lw $t1, -2704($fp)
	add $t0, $t0, $t1
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	lw $t1, 0($t0)
	sw $t1, -2720($fp)
	lw $t1, -2720($fp)
	li $t2, 0
	bne $t1, $t2, label925
	j label924
label925:
	li $t0, 15948
	sw $t0, -2724($fp)
	li $t0, 20689
	sw $t0, -2728($fp)
	lw $t0, -2724($fp)
	lw $t1, -2728($fp)
	sub $t0, $t0, $t1
	sw $t0, -2732($fp)
	li $t0, 64095
	sw $t0, -2736($fp)
	lw $t0, -2732($fp)
	lw $t1, -2736($fp)
	sub $t0, $t0, $t1
	sw $t0, -2740($fp)
	lw $t1, -2740($fp)
	li $t2, 0
	bne $t1, $t2, label922
	j label924
label924:
	addi $t0, $fp, -60
	sw $t0, -2744($fp)
	lw $t0, -132($fp)
	sw $t0, -2748($fp)
	li $t0, 4
	lw $t1, -2748($fp)
	mul $t0, $t0, $t1
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	lw $t1, -2744($fp)
	add $t0, $t0, $t1
	sw $t0, -2756($fp)
	lw $t0, -2756($fp)
	lw $t1, 0($t0)
	sw $t1, -2760($fp)
	lw $t1, -2760($fp)
	li $t2, 0
	bne $t1, $t2, label922
	j label923
label922:
	li $t0, 1
	sw $t0, -2692($fp)
label923:
	li $t0, 0
	sw $t0, -2764($fp)
	addi $t0, $fp, -60
	sw $t0, -2768($fp)
	lw $t0, -480($fp)
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
	lw $t1, -2784($fp)
	li $t2, 0
	bne $t1, $t2, label928
	j label930
label930:
	li $t0, 43315
	sw $t0, -2788($fp)
	lw $t0, -192($fp)
	sw $t0, -2792($fp)
	lw $t0, -2788($fp)
	lw $t1, -2792($fp)
	add $t0, $t0, $t1
	sw $t0, -2796($fp)
	lw $t1, -2796($fp)
	li $t2, 0
	bne $t1, $t2, label928
	j label929
label928:
	li $t0, 1
	sw $t0, -2764($fp)
label929:
	lw $t0, -2764($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -2800($fp)
label931:
	lw $t0, -504($fp)
	sw $t0, -2804($fp)
	li $t0, 0
	lw $t1, -2804($fp)
	sub $t0, $t0, $t1
	sw $t0, -2808($fp)
	li $t0, 0
	lw $t1, -2808($fp)
	sub $t0, $t0, $t1
	sw $t0, -2812($fp)
	li $t0, 0
	sw $t0, -2816($fp)
	li $t0, 3497
	sw $t0, -2820($fp)
	li $t0, 53051
	sw $t0, -2824($fp)
	lw $t1, -2820($fp)
	lw $t2, -2824($fp)
	ble $t1, $t2, label936
	j label937
label936:
	li $t0, 1
	sw $t0, -2816($fp)
label937:
	lw $t1, -2812($fp)
	lw $t2, -2816($fp)
	beq $t1, $t2, label932
	j label935
label935:
	li $t0, 0
	sw $t0, -2828($fp)
	lw $t0, -648($fp)
	sw $t0, -2832($fp)
	lw $t1, -2832($fp)
	li $t2, 0
	bne $t1, $t2, label939
	j label938
label938:
	li $t0, 1
	sw $t0, -2828($fp)
label939:
	li $t0, 0
	lw $t1, -2828($fp)
	sub $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t1, -2836($fp)
	li $t2, 0
	bne $t1, $t2, label932
	j label934
label934:
	li $t0, 9284
	sw $t0, -2840($fp)
	li $t0, 0
	sw $t0, -2844($fp)
	li $t0, 33454
	sw $t0, -2848($fp)
	lw $t0, -660($fp)
	sw $t0, -2852($fp)
	lw $t0, -2848($fp)
	lw $t1, -2852($fp)
	mul $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t1, -2856($fp)
	li $t2, 0
	bne $t1, $t2, label942
	j label941
label942:
	lw $t0, -1080($fp)
	sw $t0, -2860($fp)
	lw $t1, -2860($fp)
	li $t2, 0
	bne $t1, $t2, label940
	j label941
label940:
	li $t0, 1
	sw $t0, -2844($fp)
label941:
	li $t0, 0
	sw $t0, -2864($fp)
	li $t0, 0
	sw $t0, -2868($fp)
	lw $t0, -492($fp)
	sw $t0, -2872($fp)
	li $t0, 20668
	sw $t0, -2876($fp)
	lw $t1, -2872($fp)
	lw $t2, -2876($fp)
	blt $t1, $t2, label945
	j label946
label945:
	li $t0, 1
	sw $t0, -2868($fp)
label946:
	lw $t0, -1092($fp)
	sw $t0, -2880($fp)
	lw $t1, -2868($fp)
	lw $t2, -2880($fp)
	ble $t1, $t2, label943
	j label944
label943:
	li $t0, 1
	sw $t0, -2864($fp)
label944:
	li $t0, 0
	sw $t0, -2884($fp)
	li $t0, 0
	sw $t0, -2888($fp)
	lw $t0, -132($fp)
	sw $t0, -2892($fp)
	lw $t0, -468($fp)
	sw $t0, -2896($fp)
	lw $t1, -2892($fp)
	lw $t2, -2896($fp)
	bge $t1, $t2, label949
	j label950
label949:
	li $t0, 1
	sw $t0, -2888($fp)
label950:
	li $t0, 38818
	sw $t0, -2900($fp)
	lw $t1, -2888($fp)
	lw $t2, -2900($fp)
	bge $t1, $t2, label947
	j label948
label947:
	li $t0, 1
	sw $t0, -2884($fp)
label948:
	addi $t0, $fp, -124
	sw $t0, -2904($fp)
	li $t0, 2
	sw $t0, -2908($fp)
	li $t0, 4
	lw $t1, -2908($fp)
	mul $t0, $t0, $t1
	sw $t0, -2912($fp)
	lw $t0, -2912($fp)
	lw $t1, -2904($fp)
	add $t0, $t0, $t1
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	lw $t1, 0($t0)
	sw $t1, -2920($fp)
	li $t0, 0
	lw $t1, -2920($fp)
	sub $t0, $t0, $t1
	sw $t0, -2924($fp)
	addi $sp, $sp, -4
	lw $t0, -2844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2924($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2928($fp)
	addi $sp, $sp, 20
	lw $t0, -2840($fp)
	lw $t1, -2928($fp)
	mul $t0, $t0, $t1
	sw $t0, -2932($fp)
	lw $t1, -2932($fp)
	li $t2, 0
	bne $t1, $t2, label932
	j label933
label932:
	li $t0, 0
	sw $t0, -2936($fp)
	li $t0, 28209
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -2944($fp)
	li $t0, 0
	sw $t0, -2948($fp)
	li $t0, 38713
	sw $t0, -2952($fp)
	li $t0, 0
	lw $t1, -2952($fp)
	sub $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t0, -684($fp)
	sw $t0, -2960($fp)
	lw $t1, -2956($fp)
	lw $t2, -2960($fp)
	bgt $t1, $t2, label953
	j label954
label953:
	li $t0, 1
	sw $t0, -2948($fp)
label954:
	addi $t0, $fp, -124
	sw $t0, -2964($fp)
	li $t0, 4
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
	lw $t0, -1080($fp)
	sw $t0, -2984($fp)
	lw $t0, -2980($fp)
	lw $t1, -2984($fp)
	sub $t0, $t0, $t1
	sw $t0, -2988($fp)
	li $t0, 0
	sw $t0, -2992($fp)
	li $t0, 25652
	sw $t0, -2996($fp)
	li $t0, 58375
	sw $t0, -3000($fp)
	lw $t1, -2996($fp)
	lw $t2, -3000($fp)
	beq $t1, $t2, label955
	j label957
label957:
	li $t0, 64847
	sw $t0, -3004($fp)
	lw $t1, -3004($fp)
	li $t2, 0
	bne $t1, $t2, label955
	j label956
label955:
	li $t0, 1
	sw $t0, -2992($fp)
label956:
	addi $t0, $fp, -60
	sw $t0, -3008($fp)
	li $t0, 3
	sw $t0, -3012($fp)
	li $t0, 4
	lw $t1, -3012($fp)
	mul $t0, $t0, $t1
	sw $t0, -3016($fp)
	lw $t0, -3016($fp)
	lw $t1, -3008($fp)
	add $t0, $t0, $t1
	sw $t0, -3020($fp)
	lw $t0, -3020($fp)
	lw $t1, 0($t0)
	sw $t1, -3024($fp)
	addi $sp, $sp, -4
	lw $t0, -2948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3024($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3028($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -3032($fp)
	lw $t0, -432($fp)
	sw $t0, -3036($fp)
	lw $t1, -3036($fp)
	li $t2, 0
	bne $t1, $t2, label958
	j label960
label960:
	li $t0, 37665
	sw $t0, -3040($fp)
	lw $t1, -3040($fp)
	li $t2, 0
	bne $t1, $t2, label958
	j label959
label958:
	li $t0, 1
	sw $t0, -3032($fp)
label959:
	li $t0, 0
	sw $t0, -3044($fp)
	li $t0, 0
	sw $t0, -3048($fp)
	li $t0, 28763
	sw $t0, -3052($fp)
	lw $t1, -3052($fp)
	li $t2, 0
	bne $t1, $t2, label964
	j label963
label963:
	li $t0, 1
	sw $t0, -3048($fp)
label964:
	li $t0, 24584
	sw $t0, -3056($fp)
	lw $t1, -3048($fp)
	lw $t2, -3056($fp)
	bge $t1, $t2, label961
	j label962
label961:
	li $t0, 1
	sw $t0, -3044($fp)
label962:
	addi $sp, $sp, -4
	lw $t0, -2944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3044($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3060($fp)
	addi $sp, $sp, 20
	lw $t1, -3060($fp)
	li $t2, 0
	bne $t1, $t2, label952
	j label951
label951:
	li $t0, 1
	sw $t0, -2936($fp)
label952:
	li $t0, 61048
	sw $t0, -3064($fp)
	lw $t0, -648($fp)
	sw $t0, -3068($fp)
	lw $t0, -3064($fp)
	lw $t1, -3068($fp)
	mul $t0, $t0, $t1
	sw $t0, -3072($fp)
	li $t0, 19210
	sw $t0, -3076($fp)
	lw $t0, -3072($fp)
	lw $t1, -3076($fp)
	add $t0, $t0, $t1
	sw $t0, -3080($fp)
	li $t0, 0
	sw $t0, -3084($fp)
	li $t0, 0
	sw $t0, -3088($fp)
	lw $t0, -168($fp)
	sw $t0, -3092($fp)
	lw $t1, -3092($fp)
	li $t2, 0
	bne $t1, $t2, label968
	j label967
label967:
	li $t0, 1
	sw $t0, -3088($fp)
label968:
	li $t0, 36517
	sw $t0, -3096($fp)
	lw $t1, -3088($fp)
	lw $t2, -3096($fp)
	beq $t1, $t2, label965
	j label966
label965:
	li $t0, 1
	sw $t0, -3084($fp)
label966:
	addi $t0, $fp, -84
	sw $t0, -3100($fp)
	li $t0, 0
	sw $t0, -3104($fp)
	li $t0, 4
	lw $t1, -3104($fp)
	mul $t0, $t0, $t1
	sw $t0, -3108($fp)
	lw $t0, -3108($fp)
	lw $t1, -3100($fp)
	add $t0, $t0, $t1
	sw $t0, -3112($fp)
	lw $t0, -3112($fp)
	lw $t1, 0($t0)
	sw $t1, -3116($fp)
	addi $sp, $sp, -4
	lw $t0, -3080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3116($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3120($fp)
	addi $sp, $sp, 16
	lw $t0, -2936($fp)
	lw $t1, -3120($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3124($fp)
	lw $ra, -4($fp)
	lw $v0, -3124($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label931
label933:
	li $t0, 0
	sw $t0, -3128($fp)
	lw $t0, -636($fp)
	sw $t0, -3132($fp)
	lw $t0, 4($fp)
	sw $t0, -3136($fp)
	lw $t1, -3132($fp)
	lw $t2, -3136($fp)
	ble $t1, $t2, label969
	j label970
label969:
	li $t0, 1
	sw $t0, -3128($fp)
label970:
	lw $t0, -3128($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -3140($fp)
	lw $t0, -3140($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -3144($fp)
	li $t0, 64112
	sw $t0, -3148($fp)
	lw $t0, -3148($fp)
	sw $t0, -3152($fp)
	lw $t0, -3152($fp)
	sw $t0, -3156($fp)
	li $t0, 29669
	sw $t0, -3160($fp)
	lw $t0, -3160($fp)
	sw $t0, -3164($fp)
	lw $t0, -3164($fp)
	sw $t0, -3168($fp)
	li $t0, 35158
	sw $t0, -3172($fp)
	lw $t0, -3172($fp)
	sw $t0, -3176($fp)
	lw $t0, -3176($fp)
	sw $t0, -3180($fp)
	li $t0, 0
	sw $t0, -3184($fp)
	li $t0, 0
	sw $t0, -3188($fp)
	li $t0, 19265
	sw $t0, -3192($fp)
	lw $t0, -684($fp)
	sw $t0, -3196($fp)
	lw $t0, -3192($fp)
	lw $t1, -3196($fp)
	mul $t0, $t0, $t1
	sw $t0, -3200($fp)
	lw $t0, -456($fp)
	sw $t0, -3204($fp)
	lw $t1, -3200($fp)
	lw $t2, -3204($fp)
	bge $t1, $t2, label977
	j label978
label977:
	li $t0, 1
	sw $t0, -3188($fp)
label978:
	li $t0, 28229
	sw $t0, -3208($fp)
	li $t0, 12937
	sw $t0, -3212($fp)
	lw $t0, -3208($fp)
	lw $t1, -3212($fp)
	add $t0, $t0, $t1
	sw $t0, -3216($fp)
	lw $t1, -3188($fp)
	lw $t2, -3216($fp)
	bgt $t1, $t2, label975
	j label976
label975:
	li $t0, 1
	sw $t0, -3184($fp)
label976:
	li $t0, 0
	sw $t0, -3220($fp)
	addi $t0, $fp, -84
	sw $t0, -3224($fp)
	li $t0, 0
	sw $t0, -3228($fp)
	li $t0, 4
	lw $t1, -3228($fp)
	mul $t0, $t0, $t1
	sw $t0, -3232($fp)
	lw $t0, -3232($fp)
	lw $t1, -3224($fp)
	add $t0, $t0, $t1
	sw $t0, -3236($fp)
	lw $t0, -3236($fp)
	lw $t1, 0($t0)
	sw $t1, -3240($fp)
	lw $t0, -492($fp)
	sw $t0, -3244($fp)
	lw $t1, -3240($fp)
	lw $t2, -3244($fp)
	blt $t1, $t2, label979
	j label980
label979:
	li $t0, 1
	sw $t0, -3220($fp)
label980:
	li $t0, 0
	sw $t0, -3248($fp)
	li $t0, 26940
	sw $t0, -3252($fp)
	lw $t1, -3252($fp)
	li $t2, 0
	bne $t1, $t2, label981
	j label983
label983:
	li $t0, 61040
	sw $t0, -3256($fp)
	lw $t1, -3256($fp)
	li $t2, 0
	bne $t1, $t2, label981
	j label982
label981:
	li $t0, 1
	sw $t0, -3248($fp)
label982:
	li $t0, 0
	sw $t0, -3260($fp)
	li $t0, 64191
	sw $t0, -3264($fp)
	lw $t0, -480($fp)
	sw $t0, -3268($fp)
	lw $t0, -3264($fp)
	lw $t1, -3268($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3272($fp)
	lw $t0, -156($fp)
	sw $t0, -3276($fp)
	lw $t1, -3272($fp)
	lw $t2, -3276($fp)
	blt $t1, $t2, label984
	j label985
label984:
	li $t0, 1
	sw $t0, -3260($fp)
label985:
	li $t0, 0
	sw $t0, -3280($fp)
	addi $t0, $fp, -60
	sw $t0, -3284($fp)
	li $t0, 0
	sw $t0, -3288($fp)
	li $t0, 4
	lw $t1, -3288($fp)
	mul $t0, $t0, $t1
	sw $t0, -3292($fp)
	lw $t0, -3292($fp)
	lw $t1, -3284($fp)
	add $t0, $t0, $t1
	sw $t0, -3296($fp)
	lw $t0, -3296($fp)
	lw $t1, 0($t0)
	sw $t1, -3300($fp)
	lw $t1, -3300($fp)
	li $t2, 0
	bne $t1, $t2, label987
	j label986
label986:
	li $t0, 1
	sw $t0, -3280($fp)
label987:
	li $t0, 0
	sw $t0, -3304($fp)
	li $t0, 0
	sw $t0, -3308($fp)
	lw $t0, -156($fp)
	sw $t0, -3312($fp)
	lw $t0, -420($fp)
	sw $t0, -3316($fp)
	lw $t1, -3312($fp)
	lw $t2, -3316($fp)
	ble $t1, $t2, label990
	j label991
label990:
	li $t0, 1
	sw $t0, -3308($fp)
label991:
	li $t0, 22762
	sw $t0, -3320($fp)
	lw $t1, -3308($fp)
	lw $t2, -3320($fp)
	beq $t1, $t2, label988
	j label989
label988:
	li $t0, 1
	sw $t0, -3304($fp)
label989:
	addi $sp, $sp, -4
	lw $t0, -3260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3304($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3324($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -40
	sw $t0, -3328($fp)
	lw $t0, -3176($fp)
	sw $t0, -3332($fp)
	li $t0, 4
	lw $t1, -3332($fp)
	mul $t0, $t0, $t1
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	lw $t1, -3328($fp)
	add $t0, $t0, $t1
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	lw $t1, 0($t0)
	sw $t1, -3344($fp)
	addi $sp, $sp, -4
	lw $t0, -3220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3344($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3348($fp)
	addi $sp, $sp, 20
	lw $t1, -3184($fp)
	lw $t2, -3348($fp)
	ble $t1, $t2, label971
	j label974
label974:
	li $t0, 24267
	sw $t0, -3352($fp)
	lw $t1, -3352($fp)
	li $t2, 0
	bne $t1, $t2, label992
	j label972
label992:
	lw $t0, -672($fp)
	sw $t0, -3356($fp)
	li $t0, 43908
	sw $t0, -3360($fp)
	lw $t0, -3356($fp)
	lw $t1, -3360($fp)
	add $t0, $t0, $t1
	sw $t0, -3364($fp)
	lw $t1, -3364($fp)
	li $t2, 0
	bne $t1, $t2, label971
	j label972
label971:
	li $t0, 32524
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	sw $t0, -3376($fp)
	li $t0, 62824
	sw $t0, -3380($fp)
	lw $t0, -3380($fp)
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	sw $t0, -3388($fp)
	lw $t0, -1092($fp)
	sw $t0, -3392($fp)
	lw $t0, -3392($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -3396($fp)
	li $t0, 0
	sw $t0, -3400($fp)
	li $t0, 40471
	sw $t0, -3404($fp)
	lw $t0, -3384($fp)
	sw $t0, -3408($fp)
	lw $t0, -3404($fp)
	lw $t1, -3408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3412($fp)
	li $t0, 0
	lw $t1, -3412($fp)
	sub $t0, $t0, $t1
	sw $t0, -3416($fp)
	lw $t0, -168($fp)
	sw $t0, -3420($fp)
	lw $t0, -684($fp)
	sw $t0, -3424($fp)
	lw $t0, -3420($fp)
	lw $t1, -3424($fp)
	mul $t0, $t0, $t1
	sw $t0, -3428($fp)
	lw $t1, -3416($fp)
	lw $t2, -3428($fp)
	blt $t1, $t2, label993
	j label994
label993:
	li $t0, 1
	sw $t0, -3400($fp)
label994:
	lw $t0, -3400($fp)
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	sw $t0, -3432($fp)
	j label973
label972:
	li $t0, 0
	sw $t0, -3436($fp)
	li $t0, 0
	sw $t0, -3440($fp)
	lw $t0, -1080($fp)
	sw $t0, -3444($fp)
	li $t0, 0
	lw $t1, -3444($fp)
	sub $t0, $t0, $t1
	sw $t0, -3448($fp)
	li $t0, 26304
	sw $t0, -3452($fp)
	lw $t1, -3448($fp)
	lw $t2, -3452($fp)
	bne $t1, $t2, label997
	j label998
label997:
	li $t0, 1
	sw $t0, -3440($fp)
label998:
	li $t0, 0
	sw $t0, -3456($fp)
	li $t0, 39407
	sw $t0, -3460($fp)
	li $t0, 1064
	sw $t0, -3464($fp)
	lw $t1, -3460($fp)
	lw $t2, -3464($fp)
	bgt $t1, $t2, label999
	j label1000
label999:
	li $t0, 1
	sw $t0, -3456($fp)
label1000:
	li $t0, 0
	sw $t0, -3468($fp)
	li $t0, 12960
	sw $t0, -3472($fp)
	lw $t1, -3472($fp)
	li $t2, 0
	bne $t1, $t2, label1002
	j label1003
label1003:
	lw $t0, -504($fp)
	sw $t0, -3476($fp)
	lw $t1, -3476($fp)
	li $t2, 0
	bne $t1, $t2, label1001
	j label1002
label1001:
	li $t0, 1
	sw $t0, -3468($fp)
label1002:
	li $t0, 16831
	sw $t0, -3480($fp)
	li $t0, 0
	sw $t0, -3484($fp)
	addi $t0, $fp, -84
	sw $t0, -3488($fp)
	lw $t0, -492($fp)
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
	lw $t1, -3504($fp)
	li $t2, 0
	bne $t1, $t2, label1005
	j label1004
label1004:
	li $t0, 1
	sw $t0, -3484($fp)
label1005:
	li $t0, 0
	sw $t0, -3508($fp)
	lw $t0, -432($fp)
	sw $t0, -3512($fp)
	lw $t1, -3512($fp)
	li $t2, 0
	bne $t1, $t2, label1009
	j label1007
label1009:
	lw $t0, -636($fp)
	sw $t0, -3516($fp)
	lw $t1, -3516($fp)
	li $t2, 0
	bne $t1, $t2, label1008
	j label1007
label1008:
	lw $t0, -684($fp)
	sw $t0, -3520($fp)
	lw $t1, -3520($fp)
	li $t2, 0
	bne $t1, $t2, label1006
	j label1007
label1006:
	li $t0, 1
	sw $t0, -3508($fp)
label1007:
	lw $t0, -660($fp)
	sw $t0, -3524($fp)
	li $t0, 0
	sw $t0, -3528($fp)
	lw $t0, -444($fp)
	sw $t0, -3532($fp)
	lw $t0, -3164($fp)
	sw $t0, -3536($fp)
	lw $t1, -3532($fp)
	lw $t2, -3536($fp)
	beq $t1, $t2, label1010
	j label1011
label1010:
	li $t0, 1
	sw $t0, -3528($fp)
label1011:
	addi $sp, $sp, -4
	lw $t0, -3508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3528($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3540($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -3544($fp)
	li $t0, 0
	sw $t0, -3548($fp)
	lw $t0, -492($fp)
	sw $t0, -3552($fp)
	lw $t0, -636($fp)
	sw $t0, -3556($fp)
	lw $t0, -3552($fp)
	lw $t1, -3556($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3560($fp)
	lw $t1, -3560($fp)
	li $t2, 0
	bne $t1, $t2, label1014
	j label1016
label1016:
	li $t0, 11198
	sw $t0, -3564($fp)
	lw $t1, -3564($fp)
	li $t2, 0
	bne $t1, $t2, label1014
	j label1015
label1014:
	li $t0, 1
	sw $t0, -3548($fp)
label1015:
	li $t0, 0
	sw $t0, -3568($fp)
	li $t0, 58176
	sw $t0, -3572($fp)
	lw $t1, -3572($fp)
	li $t2, 0
	bne $t1, $t2, label1020
	j label1019
label1020:
	li $t0, 55663
	sw $t0, -3576($fp)
	lw $t1, -3576($fp)
	li $t2, 0
	bne $t1, $t2, label1017
	j label1019
label1019:
	li $t0, 39783
	sw $t0, -3580($fp)
	lw $t1, -3580($fp)
	li $t2, 0
	bne $t1, $t2, label1017
	j label1018
label1017:
	li $t0, 1
	sw $t0, -3568($fp)
label1018:
	lw $t0, -192($fp)
	sw $t0, -3584($fp)
	lw $t0, -3152($fp)
	sw $t0, -3588($fp)
	lw $t0, -3584($fp)
	lw $t1, -3588($fp)
	mul $t0, $t0, $t1
	sw $t0, -3592($fp)
	lw $t0, -504($fp)
	sw $t0, -3596($fp)
	lw $t0, -3592($fp)
	lw $t1, -3596($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3600($fp)
	addi $sp, $sp, -4
	lw $t0, -3548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3600($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3604($fp)
	addi $sp, $sp, 16
	lw $t0, -480($fp)
	sw $t0, -3608($fp)
	lw $t1, -3604($fp)
	lw $t2, -3608($fp)
	bne $t1, $t2, label1012
	j label1013
label1012:
	li $t0, 1
	sw $t0, -3544($fp)
label1013:
	addi $sp, $sp, -4
	lw $t0, -3480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3544($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3612($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -3440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3612($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3616($fp)
	addi $sp, $sp, 20
	lw $t1, -3616($fp)
	li $t2, 0
	bne $t1, $t2, label996
	j label995
label995:
	li $t0, 1
	sw $t0, -3436($fp)
label996:
	addi $t0, $fp, -60
	sw $t0, -3620($fp)
	li $t0, 0
	sw $t0, -3624($fp)
	li $t0, 10389
	sw $t0, -3628($fp)
	lw $t1, -3628($fp)
	li $t2, 0
	bne $t1, $t2, label1023
	j label1022
label1023:
	lw $t0, -492($fp)
	sw $t0, -3632($fp)
	lw $t1, -3632($fp)
	li $t2, 0
	bne $t1, $t2, label1021
	j label1022
label1021:
	li $t0, 1
	sw $t0, -3624($fp)
label1022:
	li $t0, 4
	lw $t1, -3624($fp)
	mul $t0, $t0, $t1
	sw $t0, -3636($fp)
	lw $t0, -3636($fp)
	lw $t1, -3620($fp)
	add $t0, $t0, $t1
	sw $t0, -3640($fp)
	lw $t0, -3640($fp)
	lw $t1, 0($t0)
	sw $t1, -3644($fp)
	lw $t0, -3436($fp)
	lw $t1, -3644($fp)
	add $t0, $t0, $t1
	sw $t0, -3648($fp)
	lw $ra, -4($fp)
	lw $v0, -3648($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label973:
	lw $t0, -3152($fp)
	sw $t0, -3652($fp)
	lw $t0, -3652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3164($fp)
	sw $t0, -3656($fp)
	lw $t0, -3656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3176($fp)
	sw $t0, -3660($fp)
	lw $t0, -3660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 62112
	sw $t0, -3664($fp)
	li $t0, 45514
	sw $t0, -3668($fp)
	lw $t0, -3664($fp)
	lw $t1, -3668($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3672($fp)
	li $t0, 0
	lw $t1, -3672($fp)
	sub $t0, $t0, $t1
	sw $t0, -3676($fp)
	lw $ra, -4($fp)
	lw $v0, -3676($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -132($fp)
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -156($fp)
	sw $t0, -3688($fp)
	lw $t0, -3688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -3700($fp)
	lw $t0, -3700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -3704($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -3724($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -3744($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -3764($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -3784($fp)
	li $t0, 4
	sw $t0, -3788($fp)
	li $t0, 4
	lw $t1, -3788($fp)
	mul $t0, $t0, $t1
	sw $t0, -3792($fp)
	lw $t0, -3792($fp)
	lw $t1, -3784($fp)
	add $t0, $t0, $t1
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	lw $t1, 0($t0)
	sw $t1, -3800($fp)
	lw $t0, -3800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -3804($fp)
	li $t0, 5
	sw $t0, -3808($fp)
	li $t0, 4
	lw $t1, -3808($fp)
	mul $t0, $t0, $t1
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	lw $t1, -3804($fp)
	add $t0, $t0, $t1
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	lw $t1, 0($t0)
	sw $t1, -3820($fp)
	lw $t0, -3820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -3824($fp)
	li $t0, 6
	sw $t0, -3828($fp)
	li $t0, 4
	lw $t1, -3828($fp)
	mul $t0, $t0, $t1
	sw $t0, -3832($fp)
	lw $t0, -3832($fp)
	lw $t1, -3824($fp)
	add $t0, $t0, $t1
	sw $t0, -3836($fp)
	lw $t0, -3836($fp)
	lw $t1, 0($t0)
	sw $t1, -3840($fp)
	lw $t0, -3840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -3844($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -3864($fp)
	li $t0, 8
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
	lw $t0, -420($fp)
	sw $t0, -3884($fp)
	lw $t0, -3884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -3888($fp)
	lw $t0, -3888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -3892($fp)
	lw $t0, -3892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -3896($fp)
	lw $t0, -3896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -3900($fp)
	lw $t0, -3900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -3904($fp)
	lw $t0, -3904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -3908($fp)
	lw $t0, -3908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -3912($fp)
	lw $t0, -3912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3916($fp)
	li $t0, 0
	sw $t0, -3920($fp)
	li $t0, 4
	lw $t1, -3920($fp)
	mul $t0, $t0, $t1
	sw $t0, -3924($fp)
	lw $t0, -3924($fp)
	lw $t1, -3916($fp)
	add $t0, $t0, $t1
	sw $t0, -3928($fp)
	lw $t0, -3928($fp)
	lw $t1, 0($t0)
	sw $t1, -3932($fp)
	lw $t0, -3932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3936($fp)
	li $t0, 1
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
	lw $t0, -3952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3956($fp)
	li $t0, 2
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
	lw $t0, -3972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3976($fp)
	li $t0, 3
	sw $t0, -3980($fp)
	li $t0, 4
	lw $t1, -3980($fp)
	mul $t0, $t0, $t1
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	lw $t1, -3976($fp)
	add $t0, $t0, $t1
	sw $t0, -3988($fp)
	lw $t0, -3988($fp)
	lw $t1, 0($t0)
	sw $t1, -3992($fp)
	lw $t0, -3992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3996($fp)
	li $t0, 4
	sw $t0, -4000($fp)
	li $t0, 4
	lw $t1, -4000($fp)
	mul $t0, $t0, $t1
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	lw $t1, -3996($fp)
	add $t0, $t0, $t1
	sw $t0, -4008($fp)
	lw $t0, -4008($fp)
	lw $t1, 0($t0)
	sw $t1, -4012($fp)
	lw $t0, -4012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -4016($fp)
	lw $t0, -4016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -4020($fp)
	lw $t0, -4020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -4028($fp)
	lw $t0, -4028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -684($fp)
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -4036($fp)
	li $t0, 0
	sw $t0, -4040($fp)
	li $t0, 4
	lw $t1, -4040($fp)
	mul $t0, $t0, $t1
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	lw $t1, -4036($fp)
	add $t0, $t0, $t1
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	lw $t1, 0($t0)
	sw $t1, -4052($fp)
	lw $t0, -4052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -4056($fp)
	li $t0, 1
	sw $t0, -4060($fp)
	li $t0, 4
	lw $t1, -4060($fp)
	mul $t0, $t0, $t1
	sw $t0, -4064($fp)
	lw $t0, -4064($fp)
	lw $t1, -4056($fp)
	add $t0, $t0, $t1
	sw $t0, -4068($fp)
	lw $t0, -4068($fp)
	lw $t1, 0($t0)
	sw $t1, -4072($fp)
	lw $t0, -4072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -4076($fp)
	li $t0, 2
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
	addi $t0, $fp, -84
	sw $t0, -4096($fp)
	li $t0, 3
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
	addi $t0, $fp, -84
	sw $t0, -4116($fp)
	li $t0, 4
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
	addi $t0, $fp, -84
	sw $t0, -4136($fp)
	li $t0, 5
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
	addi $t0, $fp, -124
	sw $t0, -4156($fp)
	li $t0, 0
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
	addi $t0, $fp, -124
	sw $t0, -4176($fp)
	li $t0, 1
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
	addi $t0, $fp, -124
	sw $t0, -4196($fp)
	li $t0, 2
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
	addi $t0, $fp, -124
	sw $t0, -4216($fp)
	li $t0, 3
	sw $t0, -4220($fp)
	li $t0, 4
	lw $t1, -4220($fp)
	mul $t0, $t0, $t1
	sw $t0, -4224($fp)
	lw $t0, -4224($fp)
	lw $t1, -4216($fp)
	add $t0, $t0, $t1
	sw $t0, -4228($fp)
	lw $t0, -4228($fp)
	lw $t1, 0($t0)
	sw $t1, -4232($fp)
	lw $t0, -4232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -4236($fp)
	li $t0, 4
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
	lw $t0, -4252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -4256($fp)
	li $t0, 5
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
	lw $t0, -4272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -4276($fp)
	li $t0, 6
	sw $t0, -4280($fp)
	li $t0, 4
	lw $t1, -4280($fp)
	mul $t0, $t0, $t1
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	lw $t1, -4276($fp)
	add $t0, $t0, $t1
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	lw $t1, 0($t0)
	sw $t1, -4292($fp)
	lw $t0, -4292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -4296($fp)
	li $t0, 7
	sw $t0, -4300($fp)
	li $t0, 4
	lw $t1, -4300($fp)
	mul $t0, $t0, $t1
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	lw $t1, -4296($fp)
	add $t0, $t0, $t1
	sw $t0, -4308($fp)
	lw $t0, -4308($fp)
	lw $t1, 0($t0)
	sw $t1, -4312($fp)
	lw $t0, -4312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -4316($fp)
	li $t0, 8
	sw $t0, -4320($fp)
	li $t0, 4
	lw $t1, -4320($fp)
	mul $t0, $t0, $t1
	sw $t0, -4324($fp)
	lw $t0, -4324($fp)
	lw $t1, -4316($fp)
	add $t0, $t0, $t1
	sw $t0, -4328($fp)
	lw $t0, -4328($fp)
	lw $t1, 0($t0)
	sw $t1, -4332($fp)
	lw $t0, -4332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -4336($fp)
	li $t0, 9
	sw $t0, -4340($fp)
	li $t0, 4
	lw $t1, -4340($fp)
	mul $t0, $t0, $t1
	sw $t0, -4344($fp)
	lw $t0, -4344($fp)
	lw $t1, -4336($fp)
	add $t0, $t0, $t1
	sw $t0, -4348($fp)
	lw $t0, -4348($fp)
	lw $t1, 0($t0)
	sw $t1, -4352($fp)
	lw $t0, -4352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1080($fp)
	sw $t0, -4356($fp)
	lw $t0, -4356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1092($fp)
	sw $t0, -4360($fp)
	lw $t0, -4360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4364($fp)
	li $t0, 0
	sw $t0, -4368($fp)
	lw $t0, -480($fp)
	sw $t0, -4372($fp)
	li $t0, 8965
	sw $t0, -4376($fp)
	lw $t0, -4372($fp)
	lw $t1, -4376($fp)
	mul $t0, $t0, $t1
	sw $t0, -4380($fp)
	li $t0, 26246
	sw $t0, -4384($fp)
	lw $t1, -4380($fp)
	lw $t2, -4384($fp)
	bne $t1, $t2, label1026
	j label1027
label1026:
	li $t0, 1
	sw $t0, -4368($fp)
label1027:
	li $t0, 15136
	sw $t0, -4388($fp)
	lw $t1, -4368($fp)
	lw $t2, -4388($fp)
	bne $t1, $t2, label1024
	j label1025
label1024:
	li $t0, 1
	sw $t0, -4364($fp)
label1025:
	lw $t0, -4364($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -4392($fp)
	lw $ra, -4($fp)
	lw $v0, -4392($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -3104
	li $t0, 28231
	sw $t0, -48($fp)
	addi $t0, $fp, -8
	sw $t0, -52($fp)
	li $t0, 0
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -60($fp)
	lw $t0, -52($fp)
	lw $t1, -60($fp)
	add $t0, $t0, $t1
	sw $t0, -64($fp)
	lw $t0, -48($fp)
	lw $t1, -64($fp)
	sw $t0, 0($t1)
	lw $t0, -64($fp)
	lw $t1, 0($t0)
	sw $t1, -68($fp)
	li $t0, 54475
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	li $t0, 28074
	sw $t0, -84($fp)
	addi $t0, $fp, -28
	sw $t0, -88($fp)
	li $t0, 0
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
	li $t0, 50993
	sw $t0, -108($fp)
	addi $t0, $fp, -28
	sw $t0, -112($fp)
	li $t0, 1
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
	li $t0, 4683
	sw $t0, -132($fp)
	addi $t0, $fp, -28
	sw $t0, -136($fp)
	li $t0, 2
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
	li $t0, 50295
	sw $t0, -156($fp)
	addi $t0, $fp, -28
	sw $t0, -160($fp)
	li $t0, 3
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
	li $t0, 49648
	sw $t0, -180($fp)
	addi $t0, $fp, -28
	sw $t0, -184($fp)
	li $t0, 4
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
	li $t0, 31623
	sw $t0, -204($fp)
	addi $t0, $fp, -44
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
	li $t0, 45799
	sw $t0, -228($fp)
	addi $t0, $fp, -44
	sw $t0, -232($fp)
	li $t0, 1
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
	li $t0, 3436
	sw $t0, -252($fp)
	addi $t0, $fp, -44
	sw $t0, -256($fp)
	li $t0, 2
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
	li $t0, 26482
	sw $t0, -276($fp)
	addi $t0, $fp, -44
	sw $t0, -280($fp)
	li $t0, 3
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
	li $t0, 4530
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	li $t0, 47344
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	li $t0, 59006
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	li $t0, 1818
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	li $t0, 22279
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	li $t0, 51646
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	li $t0, 57481
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	li $t0, 62062
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	li $t0, 62844
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	li $t0, 8776
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	li $t0, 9486
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	li $t0, 36716
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	li $t0, 9840
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	li $t0, 35790
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	li $t0, 47105
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	li $t0, 6417
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	lw $t0, -472($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -484($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -500($fp)
	addi $t0, $fp, -44
	sw $t0, -504($fp)
	li $t0, 0
	sw $t0, -508($fp)
	li $t0, 0
	sw $t0, -512($fp)
	lw $t0, -412($fp)
	sw $t0, -516($fp)
	li $t0, 15768
	sw $t0, -520($fp)
	lw $t1, -516($fp)
	lw $t2, -520($fp)
	beq $t1, $t2, label1032
	j label1033
label1032:
	li $t0, 1
	sw $t0, -512($fp)
label1033:
	lw $t0, -400($fp)
	sw $t0, -524($fp)
	lw $t1, -512($fp)
	lw $t2, -524($fp)
	bne $t1, $t2, label1030
	j label1031
label1030:
	li $t0, 1
	sw $t0, -508($fp)
label1031:
	li $t0, 4
	lw $t1, -508($fp)
	mul $t0, $t0, $t1
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	lw $t1, -504($fp)
	add $t0, $t0, $t1
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	lw $t1, 0($t0)
	sw $t1, -536($fp)
	li $t0, 0
	sw $t0, -540($fp)
	lw $t0, -448($fp)
	sw $t0, -544($fp)
	lw $t1, -544($fp)
	li $t2, 0
	bne $t1, $t2, label1034
	j label1037
label1037:
	lw $t0, -352($fp)
	sw $t0, -548($fp)
	lw $t1, -548($fp)
	li $t2, 0
	bne $t1, $t2, label1034
	j label1036
label1036:
	li $t0, 32663
	sw $t0, -552($fp)
	lw $t1, -552($fp)
	li $t2, 0
	bne $t1, $t2, label1034
	j label1035
label1034:
	li $t0, 1
	sw $t0, -540($fp)
label1035:
	li $t0, 0
	sw $t0, -556($fp)
	lw $t0, 8($fp)
	sw $t0, -560($fp)
	li $t0, 0
	lw $t1, -560($fp)
	sub $t0, $t0, $t1
	sw $t0, -564($fp)
	lw $t1, -564($fp)
	li $t2, 0
	bne $t1, $t2, label1039
	j label1038
label1038:
	li $t0, 1
	sw $t0, -556($fp)
label1039:
	lw $t0, -460($fp)
	sw $t0, -568($fp)
	li $t0, 56070
	sw $t0, -572($fp)
	lw $t0, -568($fp)
	lw $t1, -572($fp)
	sub $t0, $t0, $t1
	sw $t0, -576($fp)
	addi $sp, $sp, -4
	lw $t0, -540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -576($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -580($fp)
	addi $sp, $sp, 16
	lw $t1, -536($fp)
	lw $t2, -580($fp)
	bne $t1, $t2, label1028
	j label1029
label1028:
	li $t0, 1
	sw $t0, -500($fp)
label1029:
	lw $ra, -4($fp)
	lw $v0, -500($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 30905
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	li $t0, 18765
	sw $t0, -620($fp)
	addi $t0, $fp, -604
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
	li $t0, 21602
	sw $t0, -644($fp)
	addi $t0, $fp, -604
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
	li $t0, 58979
	sw $t0, -668($fp)
	addi $t0, $fp, -604
	sw $t0, -672($fp)
	li $t0, 2
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
	li $t0, 4223
	sw $t0, -692($fp)
	addi $t0, $fp, -604
	sw $t0, -696($fp)
	li $t0, 3
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
	li $t0, 26285
	sw $t0, -716($fp)
	addi $t0, $fp, -604
	sw $t0, -720($fp)
	li $t0, 4
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
	li $t0, 43738
	sw $t0, -740($fp)
	addi $t0, $fp, -604
	sw $t0, -744($fp)
	li $t0, 5
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
	li $t0, 53871
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -772($fp)
	li $t0, 57908
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	lw $t0, -612($fp)
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -604
	sw $t0, -792($fp)
	li $t0, 0
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
	addi $t0, $fp, -604
	sw $t0, -812($fp)
	li $t0, 1
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
	addi $t0, $fp, -604
	sw $t0, -832($fp)
	li $t0, 2
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
	addi $t0, $fp, -604
	sw $t0, -852($fp)
	li $t0, 3
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
	addi $t0, $fp, -604
	sw $t0, -872($fp)
	li $t0, 4
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
	addi $t0, $fp, -604
	sw $t0, -892($fp)
	li $t0, 5
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
	lw $t0, -768($fp)
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -780($fp)
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -920($fp)
	lw $ra, -4($fp)
	lw $v0, -920($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 24002
	sw $t0, -924($fp)
	lw $t1, -924($fp)
	li $t2, 0
	bne $t1, $t2, label1040
	j label1041
label1040:
label1043:
	li $t0, 0
	sw $t0, -928($fp)
	li $t0, 57307
	sw $t0, -932($fp)
	lw $t1, -932($fp)
	li $t2, 0
	bne $t1, $t2, label1046
	j label1047
label1046:
	li $t0, 1
	sw $t0, -928($fp)
label1047:
	lw $t0, -448($fp)
	sw $t0, -936($fp)
	lw $t0, -928($fp)
	lw $t1, -936($fp)
	mul $t0, $t0, $t1
	sw $t0, -940($fp)
	addi $t0, $fp, -604
	sw $t0, -944($fp)
	lw $t0, -424($fp)
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
	lw $t0, -940($fp)
	lw $t1, -960($fp)
	mul $t0, $t0, $t1
	sw $t0, -964($fp)
	li $t0, 0
	sw $t0, -968($fp)
	lw $t0, -340($fp)
	sw $t0, -972($fp)
	lw $t1, -972($fp)
	li $t2, 0
	bne $t1, $t2, label1049
	j label1048
label1048:
	li $t0, 1
	sw $t0, -968($fp)
label1049:
	lw $t1, -964($fp)
	lw $t2, -968($fp)
	bne $t1, $t2, label1044
	j label1045
label1044:
	li $t0, 18854
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -1008($fp)
	li $t0, 28532
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1020($fp)
	li $t0, 39115
	sw $t0, -1024($fp)
	addi $t0, $fp, -996
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
	li $t0, 12324
	sw $t0, -1048($fp)
	addi $t0, $fp, -996
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
	li $t0, 30351
	sw $t0, -1072($fp)
	addi $t0, $fp, -996
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
	li $t0, 61395
	sw $t0, -1096($fp)
	addi $t0, $fp, -996
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
	li $t0, 63971
	sw $t0, -1120($fp)
	addi $t0, $fp, -996
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
	li $t0, 22296
	sw $t0, -1144($fp)
	addi $t0, $fp, -996
	sw $t0, -1148($fp)
	li $t0, 5
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
	li $t0, 57921
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -1176($fp)
	li $t0, 61279
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -1188($fp)
	li $t0, 31073
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -1200($fp)
	lw $t0, -1004($fp)
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1016($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -996
	sw $t0, -1212($fp)
	li $t0, 0
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
	addi $t0, $fp, -996
	sw $t0, -1232($fp)
	li $t0, 1
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
	addi $t0, $fp, -996
	sw $t0, -1252($fp)
	li $t0, 2
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
	addi $t0, $fp, -996
	sw $t0, -1272($fp)
	li $t0, 3
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
	addi $t0, $fp, -996
	sw $t0, -1292($fp)
	li $t0, 4
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
	addi $t0, $fp, -996
	sw $t0, -1312($fp)
	li $t0, 5
	sw $t0, -1316($fp)
	li $t0, 4
	lw $t1, -1316($fp)
	mul $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	lw $t1, -1312($fp)
	add $t0, $t0, $t1
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	lw $t1, 0($t0)
	sw $t1, -1328($fp)
	lw $t0, -1328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1172($fp)
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1184($fp)
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1196($fp)
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1344($fp)
	li $t0, 1872
	sw $t0, -1348($fp)
	li $t0, 0
	lw $t1, -1348($fp)
	sub $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t1, -1352($fp)
	li $t2, 0
	bne $t1, $t2, label1052
	j label1050
label1052:
	li $t0, 0
	sw $t0, -1356($fp)
	lw $t0, -388($fp)
	sw $t0, -1360($fp)
	lw $t1, -1360($fp)
	li $t2, 0
	bne $t1, $t2, label1054
	j label1053
label1053:
	li $t0, 1
	sw $t0, -1356($fp)
label1054:
	lw $t0, -612($fp)
	sw $t0, -1364($fp)
	lw $t0, -1356($fp)
	lw $t1, -1364($fp)
	sub $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t0, -1016($fp)
	sw $t0, -1372($fp)
	lw $t0, -448($fp)
	sw $t0, -1376($fp)
	lw $t0, -1372($fp)
	lw $t1, -1376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1380($fp)
	lw $t0, -1368($fp)
	lw $t1, -1380($fp)
	add $t0, $t0, $t1
	sw $t0, -1384($fp)
	lw $t1, -1384($fp)
	li $t2, 0
	bne $t1, $t2, label1050
	j label1051
label1050:
	li $t0, 1
	sw $t0, -1344($fp)
label1051:
	lw $ra, -4($fp)
	lw $v0, -1344($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 32459
	sw $t0, -1388($fp)
	lw $t1, -1388($fp)
	li $t2, 0
	bne $t1, $t2, label1055
	j label1056
label1055:
label1058:
	li $t0, 40913
	sw $t0, -1392($fp)
	lw $t1, -1392($fp)
	li $t2, 0
	bne $t1, $t2, label1059
	j label1060
label1059:
	lw $t0, -340($fp)
	sw $t0, -1396($fp)
	lw $ra, -4($fp)
	lw $v0, -1396($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1058
label1060:
	j label1057
label1056:
label1061:
	li $t0, 0
	sw $t0, -1400($fp)
	lw $t0, -424($fp)
	sw $t0, -1404($fp)
	lw $t0, -1196($fp)
	sw $t0, -1408($fp)
	lw $t1, -1404($fp)
	lw $t2, -1408($fp)
	beq $t1, $t2, label1067
	j label1066
label1067:
	lw $t0, -376($fp)
	sw $t0, -1412($fp)
	lw $t1, -1412($fp)
	li $t2, 0
	bne $t1, $t2, label1065
	j label1066
label1065:
	li $t0, 1
	sw $t0, -1400($fp)
label1066:
	li $t0, 37662
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -1420($fp)
	li $t0, 0
	sw $t0, -1424($fp)
	lw $t0, -412($fp)
	sw $t0, -1428($fp)
	li $t0, 0
	lw $t1, -1428($fp)
	sub $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t1, -1432($fp)
	li $t2, 0
	bne $t1, $t2, label1068
	j label1070
label1070:
	lw $t0, -412($fp)
	sw $t0, -1436($fp)
	lw $t1, -1436($fp)
	li $t2, 0
	bne $t1, $t2, label1068
	j label1069
label1068:
	li $t0, 1
	sw $t0, -1424($fp)
label1069:
	addi $sp, $sp, -4
	lw $t0, -1400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1424($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1440($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -1440($fp)
	sub $t0, $t0, $t1
	sw $t0, -1444($fp)
	lw $t1, -1444($fp)
	li $t2, 0
	bne $t1, $t2, label1064
	j label1062
label1064:
	lw $t0, -448($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -1452($fp)
	li $t0, 0
	sw $t0, -1456($fp)
	li $t0, 0
	sw $t0, -1460($fp)
	lw $t0, -1004($fp)
	sw $t0, -1464($fp)
	lw $t0, -412($fp)
	sw $t0, -1468($fp)
	lw $t1, -1464($fp)
	lw $t2, -1468($fp)
	bgt $t1, $t2, label1073
	j label1074
label1073:
	li $t0, 1
	sw $t0, -1460($fp)
label1074:
	li $t0, 47330
	sw $t0, -1472($fp)
	lw $t1, -1460($fp)
	lw $t2, -1472($fp)
	blt $t1, $t2, label1071
	j label1072
label1071:
	li $t0, 1
	sw $t0, -1456($fp)
label1072:
	li $t0, 0
	sw $t0, -1476($fp)
	lw $t0, -388($fp)
	sw $t0, -1480($fp)
	li $t0, 14028
	sw $t0, -1484($fp)
	lw $t0, -1480($fp)
	lw $t1, -1484($fp)
	mul $t0, $t0, $t1
	sw $t0, -1488($fp)
	lw $t0, -460($fp)
	sw $t0, -1492($fp)
	lw $t1, -1488($fp)
	lw $t2, -1492($fp)
	ble $t1, $t2, label1075
	j label1076
label1075:
	li $t0, 1
	sw $t0, -1476($fp)
label1076:
	addi $sp, $sp, -4
	lw $t0, -1452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1476($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1496($fp)
	addi $sp, $sp, 16
	li $t0, 53431
	sw $t0, -1500($fp)
	lw $t0, -376($fp)
	sw $t0, -1504($fp)
	lw $t0, -1500($fp)
	lw $t1, -1504($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1508($fp)
	lw $t0, -1496($fp)
	lw $t1, -1508($fp)
	add $t0, $t0, $t1
	sw $t0, -1512($fp)
	lw $t1, -1512($fp)
	li $t2, 0
	bne $t1, $t2, label1062
	j label1063
label1062:
	addi $t0, $fp, -604
	sw $t0, -1516($fp)
	li $t0, 0
	sw $t0, -1520($fp)
	lw $t0, -424($fp)
	sw $t0, -1524($fp)
	lw $t1, -1524($fp)
	li $t2, 0
	bne $t1, $t2, label1082
	j label1081
label1082:
	lw $t0, -376($fp)
	sw $t0, -1528($fp)
	lw $t1, -1528($fp)
	li $t2, 0
	bne $t1, $t2, label1080
	j label1081
label1080:
	li $t0, 1
	sw $t0, -1520($fp)
label1081:
	li $t0, 14457
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -1536($fp)
	li $t0, 4563
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -1544($fp)
	addi $sp, $sp, -4
	lw $t0, -1520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1544($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1548($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -1552($fp)
	li $t0, 27551
	sw $t0, -1556($fp)
	lw $t1, -1556($fp)
	li $t2, 0
	bne $t1, $t2, label1084
	j label1083
label1083:
	li $t0, 1
	sw $t0, -1552($fp)
label1084:
	li $t0, 62344
	sw $t0, -1560($fp)
	lw $t0, -1552($fp)
	lw $t1, -1560($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1564($fp)
	li $t0, 12243
	sw $t0, -1568($fp)
	li $t0, 0
	sw $t0, -1572($fp)
	lw $t0, -424($fp)
	sw $t0, -1576($fp)
	lw $t0, -376($fp)
	sw $t0, -1580($fp)
	lw $t0, -1576($fp)
	lw $t1, -1580($fp)
	add $t0, $t0, $t1
	sw $t0, -1584($fp)
	li $t0, 36059
	sw $t0, -1588($fp)
	lw $t1, -1584($fp)
	lw $t2, -1588($fp)
	bgt $t1, $t2, label1085
	j label1086
label1085:
	li $t0, 1
	sw $t0, -1572($fp)
label1086:
	li $t0, 0
	sw $t0, -1592($fp)
	li $t0, 18800
	sw $t0, -1596($fp)
	li $t0, 23328
	sw $t0, -1600($fp)
	lw $t0, -1596($fp)
	lw $t1, -1600($fp)
	mul $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, 12($fp)
	sw $t0, -1608($fp)
	lw $t1, -1604($fp)
	lw $t2, -1608($fp)
	ble $t1, $t2, label1087
	j label1088
label1087:
	li $t0, 1
	sw $t0, -1592($fp)
label1088:
	addi $sp, $sp, -4
	lw $t0, -1564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1592($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1612($fp)
	addi $sp, $sp, 20
	lw $t0, -1548($fp)
	lw $t1, -1612($fp)
	add $t0, $t0, $t1
	sw $t0, -1616($fp)
	li $t0, 4
	lw $t1, -1616($fp)
	mul $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	lw $t1, -1516($fp)
	add $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	lw $t1, 0($t0)
	sw $t1, -1628($fp)
	lw $t1, -1628($fp)
	li $t2, 0
	bne $t1, $t2, label1077
	j label1078
label1077:
	li $t0, 0
	sw $t0, -1632($fp)
	li $t0, 55981
	sw $t0, -1636($fp)
	li $t0, 0
	sw $t0, -1640($fp)
	li $t0, 15887
	sw $t0, -1644($fp)
	lw $t1, -1644($fp)
	li $t2, 0
	bne $t1, $t2, label1093
	j label1092
label1092:
	li $t0, 1
	sw $t0, -1640($fp)
label1093:
	li $t0, 54717
	sw $t0, -1648($fp)
	lw $t0, -1640($fp)
	lw $t1, -1648($fp)
	mul $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $t0, -1636($fp)
	lw $t1, -1652($fp)
	sub $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $t1, -1656($fp)
	li $t2, 0
	bne $t1, $t2, label1089
	j label1091
label1091:
	lw $t0, -400($fp)
	sw $t0, -1660($fp)
	lw $t0, -412($fp)
	sw $t0, -1664($fp)
	lw $t0, -1660($fp)
	lw $t1, -1664($fp)
	add $t0, $t0, $t1
	sw $t0, -1668($fp)
	lw $t1, -1668($fp)
	li $t2, 0
	bne $t1, $t2, label1095
	j label1090
label1095:
	lw $t0, -352($fp)
	sw $t0, -1672($fp)
	lw $t1, -1672($fp)
	li $t2, 0
	bne $t1, $t2, label1094
	j label1090
label1094:
	li $t0, 14447
	sw $t0, -1676($fp)
	li $t0, 0
	lw $t1, -1676($fp)
	sub $t0, $t0, $t1
	sw $t0, -1680($fp)
	lw $t1, -1680($fp)
	li $t2, 0
	bne $t1, $t2, label1089
	j label1090
label1089:
	li $t0, 1
	sw $t0, -1632($fp)
label1090:
	j label1079
label1078:
	li $t0, 42980
	sw $t0, -1684($fp)
	li $t0, 46774
	sw $t0, -1688($fp)
	lw $t0, -1684($fp)
	lw $t1, -1688($fp)
	add $t0, $t0, $t1
	sw $t0, -1692($fp)
	li $t0, 20360
	sw $t0, -1696($fp)
	lw $t0, -1692($fp)
	lw $t1, -1696($fp)
	add $t0, $t0, $t1
	sw $t0, -1700($fp)
	li $t0, 0
	sw $t0, -1704($fp)
	lw $t0, -412($fp)
	sw $t0, -1708($fp)
	lw $t1, -1708($fp)
	li $t2, 0
	bne $t1, $t2, label1099
	j label1097
label1099:
	lw $t0, -376($fp)
	sw $t0, -1712($fp)
	lw $t1, -1712($fp)
	li $t2, 0
	bne $t1, $t2, label1098
	j label1097
label1098:
	lw $t0, -304($fp)
	sw $t0, -1716($fp)
	lw $t1, -1716($fp)
	li $t2, 0
	bne $t1, $t2, label1096
	j label1097
label1096:
	li $t0, 1
	sw $t0, -1704($fp)
label1097:
	addi $t0, $fp, -996
	sw $t0, -1720($fp)
	li $t0, 3
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
	sw $t0, -1740($fp)
	li $t0, 0
	sw $t0, -1744($fp)
	lw $t0, -1184($fp)
	sw $t0, -1748($fp)
	lw $t1, -1748($fp)
	li $t2, 0
	bne $t1, $t2, label1103
	j label1102
label1102:
	li $t0, 1
	sw $t0, -1744($fp)
label1103:
	lw $t0, -412($fp)
	sw $t0, -1752($fp)
	lw $t1, -1744($fp)
	lw $t2, -1752($fp)
	ble $t1, $t2, label1100
	j label1101
label1100:
	li $t0, 1
	sw $t0, -1740($fp)
label1101:
	addi $sp, $sp, -4
	lw $t0, -1700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1740($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1756($fp)
	addi $sp, $sp, 20
label1079:
	j label1061
label1063:
label1057:
	lw $t0, -1004($fp)
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1016($fp)
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -996
	sw $t0, -1768($fp)
	li $t0, 0
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
	addi $t0, $fp, -996
	sw $t0, -1788($fp)
	li $t0, 1
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
	addi $t0, $fp, -996
	sw $t0, -1808($fp)
	li $t0, 2
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
	addi $t0, $fp, -996
	sw $t0, -1828($fp)
	li $t0, 3
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
	addi $t0, $fp, -996
	sw $t0, -1848($fp)
	li $t0, 4
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
	addi $t0, $fp, -996
	sw $t0, -1868($fp)
	li $t0, 5
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
	lw $t0, -1172($fp)
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1184($fp)
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1196($fp)
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1900($fp)
	addi $t0, $fp, -604
	sw $t0, -1904($fp)
	li $t0, 0
	sw $t0, -1908($fp)
	li $t0, 7795
	sw $t0, -1912($fp)
	lw $t1, -1912($fp)
	li $t2, 0
	bne $t1, $t2, label1107
	j label1106
label1106:
	li $t0, 1
	sw $t0, -1908($fp)
label1107:
	li $t0, 4
	lw $t1, -1908($fp)
	mul $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	lw $t1, -1904($fp)
	add $t0, $t0, $t1
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	lw $t1, 0($t0)
	sw $t1, -1924($fp)
	li $t0, 0
	lw $t1, -1924($fp)
	sub $t0, $t0, $t1
	sw $t0, -1928($fp)
	li $t0, 0
	sw $t0, -1932($fp)
	li $t0, 42633
	sw $t0, -1936($fp)
	lw $t1, -1936($fp)
	li $t2, 0
	bne $t1, $t2, label1109
	j label1108
label1108:
	li $t0, 1
	sw $t0, -1932($fp)
label1109:
	lw $t1, -1928($fp)
	lw $t2, -1932($fp)
	blt $t1, $t2, label1104
	j label1105
label1104:
	li $t0, 1
	sw $t0, -1900($fp)
label1105:
	lw $ra, -4($fp)
	lw $v0, -1900($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 18795
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	sw $t0, -1944($fp)
	lw $t0, -1944($fp)
	sw $t0, -1948($fp)
	li $t0, 30091
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	sw $t0, -1960($fp)
	li $t0, 35018
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	sw $t0, -1972($fp)
label1110:
	addi $t0, $fp, -44
	sw $t0, -1976($fp)
	li $t0, 0
	sw $t0, -1980($fp)
	lw $t0, -340($fp)
	sw $t0, -1984($fp)
	lw $t1, -1984($fp)
	li $t2, 0
	bne $t1, $t2, label1114
	j label1116
label1116:
	li $t0, 14538
	sw $t0, -1988($fp)
	lw $t1, -1988($fp)
	li $t2, 0
	bne $t1, $t2, label1114
	j label1115
label1114:
	li $t0, 1
	sw $t0, -1980($fp)
label1115:
	li $t0, 4
	lw $t1, -1980($fp)
	mul $t0, $t0, $t1
	sw $t0, -1992($fp)
	lw $t0, -1992($fp)
	lw $t1, -1976($fp)
	add $t0, $t0, $t1
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	lw $t1, 0($t0)
	sw $t1, -2000($fp)
	lw $t1, -2000($fp)
	li $t2, 0
	bne $t1, $t2, label1112
	j label1113
label1113:
	li $t0, 61164
	sw $t0, -2004($fp)
	li $t0, 0
	lw $t1, -2004($fp)
	sub $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $t1, -2008($fp)
	li $t2, 0
	bne $t1, $t2, label1111
	j label1112
label1111:
	li $t0, 0
	sw $t0, -2012($fp)
	li $t0, 0
	sw $t0, -2016($fp)
	li $t0, 36890
	sw $t0, -2020($fp)
	li $t0, 0
	lw $t1, -2020($fp)
	sub $t0, $t0, $t1
	sw $t0, -2024($fp)
	li $t0, 46998
	sw $t0, -2028($fp)
	lw $t1, -2024($fp)
	lw $t2, -2028($fp)
	ble $t1, $t2, label1119
	j label1120
label1119:
	li $t0, 1
	sw $t0, -2016($fp)
label1120:
	li $t0, 36542
	sw $t0, -2032($fp)
	lw $t1, -2016($fp)
	lw $t2, -2032($fp)
	ble $t1, $t2, label1117
	j label1118
label1117:
	li $t0, 1
	sw $t0, -2012($fp)
label1118:
	lw $t0, -2012($fp)
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	sw $t0, -2036($fp)
	lw $ra, -4($fp)
	lw $v0, -2036($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1110
label1112:
	lw $t0, -412($fp)
	sw $t0, -2040($fp)
	lw $t0, -448($fp)
	sw $t0, -2044($fp)
	lw $t0, -2040($fp)
	lw $t1, -2044($fp)
	mul $t0, $t0, $t1
	sw $t0, -2048($fp)
	lw $t0, -340($fp)
	sw $t0, -2052($fp)
	lw $t0, -2048($fp)
	lw $t1, -2052($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2056($fp)
	li $t0, 0
	lw $t1, -2056($fp)
	sub $t0, $t0, $t1
	sw $t0, -2060($fp)
	lw $t0, -472($fp)
	sw $t0, -2064($fp)
	lw $t0, -1956($fp)
	sw $t0, -2068($fp)
	lw $t0, -2064($fp)
	lw $t1, -2068($fp)
	mul $t0, $t0, $t1
	sw $t0, -2072($fp)
	li $t0, 9017
	sw $t0, -2076($fp)
	lw $t0, -2072($fp)
	lw $t1, -2076($fp)
	sub $t0, $t0, $t1
	sw $t0, -2080($fp)
	lw $t1, -2060($fp)
	lw $t2, -2080($fp)
	bge $t1, $t2, label1124
	j label1122
label1124:
	li $t0, 61026
	sw $t0, -2084($fp)
	lw $t1, -2084($fp)
	li $t2, 0
	bne $t1, $t2, label1121
	j label1122
label1121:
label1125:
	li $t0, 0
	sw $t0, -2088($fp)
	li $t0, 0
	sw $t0, -2092($fp)
	li $t0, 18336
	sw $t0, -2096($fp)
	li $t0, 62448
	sw $t0, -2100($fp)
	li $t0, 53
	sw $t0, -2104($fp)
	lw $t0, -2100($fp)
	lw $t1, -2104($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2108($fp)
	lw $t1, -2096($fp)
	lw $t2, -2108($fp)
	bgt $t1, $t2, label1130
	j label1131
label1130:
	li $t0, 1
	sw $t0, -2092($fp)
label1131:
	lw $t0, -1944($fp)
	sw $t0, -2112($fp)
	lw $t1, -2092($fp)
	lw $t2, -2112($fp)
	ble $t1, $t2, label1128
	j label1129
label1128:
	li $t0, 1
	sw $t0, -2088($fp)
label1129:
	addi $t0, $fp, -44
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
	li $t0, 0
	lw $t1, -2132($fp)
	sub $t0, $t0, $t1
	sw $t0, -2136($fp)
	lw $t1, -2088($fp)
	lw $t2, -2136($fp)
	bge $t1, $t2, label1126
	j label1127
label1126:
	li $t0, 23382
	sw $t0, -2140($fp)
	lw $ra, -4($fp)
	lw $v0, -2140($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1125
label1127:
	j label1123
label1122:
label1132:
	addi $t0, $fp, -8
	sw $t0, -2144($fp)
	li $t0, 0
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
	lw $t1, -2160($fp)
	li $t2, 0
	bne $t1, $t2, label1133
	j label1135
label1135:
	li $t0, 8943
	sw $t0, -2164($fp)
	li $t0, 62878
	sw $t0, -2168($fp)
	lw $t0, -2164($fp)
	lw $t1, -2168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2172($fp)
	li $t0, 10292
	sw $t0, -2176($fp)
	lw $t0, -2172($fp)
	lw $t1, -2176($fp)
	mul $t0, $t0, $t1
	sw $t0, -2180($fp)
	li $t0, 1284
	sw $t0, -2184($fp)
	li $t0, 54843
	sw $t0, -2188($fp)
	lw $t0, -2184($fp)
	lw $t1, -2188($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2192($fp)
	li $t0, 32848
	sw $t0, -2196($fp)
	lw $t0, -2192($fp)
	lw $t1, -2196($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2200($fp)
	addi $t0, $fp, -604
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
	li $t0, 18400
	sw $t0, -2224($fp)
	lw $t0, -2220($fp)
	lw $t1, -2224($fp)
	add $t0, $t0, $t1
	sw $t0, -2228($fp)
	addi $sp, $sp, -4
	lw $t0, -2180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2228($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2232($fp)
	addi $sp, $sp, 16
	lw $t1, -2232($fp)
	li $t2, 0
	bne $t1, $t2, label1133
	j label1134
label1133:
	li $t0, 0
	sw $t0, -2236($fp)
	lw $t0, -424($fp)
	sw $t0, -2240($fp)
	li $t0, 55717
	sw $t0, -2244($fp)
	li $t0, 17702
	sw $t0, -2248($fp)
	lw $t0, -2244($fp)
	lw $t1, -2248($fp)
	mul $t0, $t0, $t1
	sw $t0, -2252($fp)
	lw $t1, -2240($fp)
	lw $t2, -2252($fp)
	beq $t1, $t2, label1136
	j label1137
label1136:
	li $t0, 1
	sw $t0, -2236($fp)
label1137:
	lw $t0, -2236($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -2256($fp)
	j label1132
label1134:
label1123:
	j label1043
label1045:
	j label1042
label1041:
	li $t0, 0
	sw $t0, -2260($fp)
	li $t0, 0
	sw $t0, -2264($fp)
	lw $t0, -768($fp)
	sw $t0, -2268($fp)
	li $t0, 2296
	sw $t0, -2272($fp)
	lw $t0, -2268($fp)
	lw $t1, -2272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2276($fp)
	lw $t0, 4($fp)
	sw $t0, -2280($fp)
	lw $t1, -2276($fp)
	lw $t2, -2280($fp)
	bge $t1, $t2, label1140
	j label1141
label1140:
	li $t0, 1
	sw $t0, -2264($fp)
label1141:
	li $t0, 0
	sw $t0, -2284($fp)
	addi $t0, $fp, -44
	sw $t0, -2288($fp)
	lw $t0, -448($fp)
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
	lw $t1, -2304($fp)
	li $t2, 0
	bne $t1, $t2, label1144
	j label1143
label1144:
	lw $t0, -780($fp)
	sw $t0, -2308($fp)
	lw $t1, -2308($fp)
	li $t2, 0
	bne $t1, $t2, label1142
	j label1143
label1142:
	li $t0, 1
	sw $t0, -2284($fp)
label1143:
	li $t0, 0
	sw $t0, -2312($fp)
	lw $t0, -448($fp)
	sw $t0, -2316($fp)
	lw $t0, -412($fp)
	sw $t0, -2320($fp)
	lw $t0, -2316($fp)
	lw $t1, -2320($fp)
	mul $t0, $t0, $t1
	sw $t0, -2324($fp)
	li $t0, 48178
	sw $t0, -2328($fp)
	lw $t1, -2324($fp)
	lw $t2, -2328($fp)
	bne $t1, $t2, label1145
	j label1146
label1145:
	li $t0, 1
	sw $t0, -2312($fp)
label1146:
	addi $sp, $sp, -4
	lw $t0, -2264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2312($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2332($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -44
	sw $t0, -2336($fp)
	lw $t0, -612($fp)
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
	li $t0, 36497
	sw $t0, -2356($fp)
	lw $t0, -472($fp)
	sw $t0, -2360($fp)
	lw $t0, -2356($fp)
	lw $t1, -2360($fp)
	sub $t0, $t0, $t1
	sw $t0, -2364($fp)
	lw $t0, -424($fp)
	sw $t0, -2368($fp)
	li $t0, 18087
	sw $t0, -2372($fp)
	lw $t0, -2368($fp)
	lw $t1, -2372($fp)
	add $t0, $t0, $t1
	sw $t0, -2376($fp)
	li $t0, 32814
	sw $t0, -2380($fp)
	lw $t0, -2376($fp)
	lw $t1, -2380($fp)
	sub $t0, $t0, $t1
	sw $t0, -2384($fp)
	addi $sp, $sp, -4
	lw $t0, -2332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2384($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2388($fp)
	addi $sp, $sp, 20
	lw $t1, -2388($fp)
	li $t2, 0
	bne $t1, $t2, label1138
	j label1139
label1138:
	li $t0, 1
	sw $t0, -2260($fp)
label1139:
label1042:
	li $t0, 0
	sw $t0, -2392($fp)
	lw $t0, 8($fp)
	sw $t0, -2396($fp)
	lw $t1, -2396($fp)
	li $t2, 0
	bne $t1, $t2, label1148
	j label1147
label1147:
	li $t0, 1
	sw $t0, -2392($fp)
label1148:
	lw $t0, -484($fp)
	sw $t0, -2400($fp)
	lw $t0, -2392($fp)
	lw $t1, -2400($fp)
	mul $t0, $t0, $t1
	sw $t0, -2404($fp)
	lw $t0, -424($fp)
	sw $t0, -2408($fp)
	lw $t0, -2404($fp)
	lw $t1, -2408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2412($fp)
	lw $t0, -2412($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -2416($fp)
	addi $t0, $fp, -44
	sw $t0, -2420($fp)
	li $t0, 3
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
	lw $t0, -316($fp)
	sw $t0, -2440($fp)
	li $t0, 0
	lw $t1, -2440($fp)
	sub $t0, $t0, $t1
	sw $t0, -2444($fp)
	lw $t0, -2436($fp)
	lw $t1, -2444($fp)
	mul $t0, $t0, $t1
	sw $t0, -2448($fp)
	li $t0, 0
	lw $t1, -2448($fp)
	sub $t0, $t0, $t1
	sw $t0, -2452($fp)
	li $t0, 0
	sw $t0, -2456($fp)
	li $t0, 39187
	sw $t0, -2460($fp)
	li $t0, 0
	lw $t1, -2460($fp)
	sub $t0, $t0, $t1
	sw $t0, -2464($fp)
	lw $t1, -2464($fp)
	li $t2, 0
	bne $t1, $t2, label1153
	j label1152
label1152:
	li $t0, 1
	sw $t0, -2456($fp)
label1153:
	lw $t1, -2452($fp)
	lw $t2, -2456($fp)
	bgt $t1, $t2, label1149
	j label1150
label1149:
	li $t0, 0
	sw $t0, -2468($fp)
	li $t0, 0
	sw $t0, -2472($fp)
	li $t0, 0
	sw $t0, -2476($fp)
	li $t0, 0
	sw $t0, -2480($fp)
	li $t0, 0
	sw $t0, -2484($fp)
	li $t0, 60828
	sw $t0, -2488($fp)
	li $t0, 51424
	sw $t0, -2492($fp)
	lw $t1, -2488($fp)
	lw $t2, -2492($fp)
	beq $t1, $t2, label1162
	j label1163
label1162:
	li $t0, 1
	sw $t0, -2484($fp)
label1163:
	li $t0, 407
	sw $t0, -2496($fp)
	li $t0, 0
	sw $t0, -2500($fp)
	li $t0, 0
	sw $t0, -2504($fp)
	lw $t0, -412($fp)
	sw $t0, -2508($fp)
	lw $t1, -2508($fp)
	li $t2, 0
	bne $t1, $t2, label1168
	j label1169
label1169:
	lw $t0, -412($fp)
	sw $t0, -2512($fp)
	lw $t1, -2512($fp)
	li $t2, 0
	bne $t1, $t2, label1167
	j label1168
label1167:
	li $t0, 1
	sw $t0, -2504($fp)
label1168:
	li $t0, 28042
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -2520($fp)
	li $t0, 0
	sw $t0, -2524($fp)
	lw $t0, -316($fp)
	sw $t0, -2528($fp)
	li $t0, 33149
	sw $t0, -2532($fp)
	lw $t0, -2528($fp)
	lw $t1, -2532($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2536($fp)
	li $t0, 45116
	sw $t0, -2540($fp)
	lw $t1, -2536($fp)
	lw $t2, -2540($fp)
	beq $t1, $t2, label1170
	j label1171
label1170:
	li $t0, 1
	sw $t0, -2524($fp)
label1171:
	addi $t0, $fp, -8
	sw $t0, -2544($fp)
	li $t0, 0
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
	addi $sp, $sp, -4
	lw $t0, -2504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2560($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2564($fp)
	addi $sp, $sp, 20
	lw $t1, -2564($fp)
	li $t2, 0
	bne $t1, $t2, label1164
	j label1166
label1166:
	lw $t0, -424($fp)
	sw $t0, -2568($fp)
	lw $t1, -2568($fp)
	li $t2, 0
	bne $t1, $t2, label1164
	j label1165
label1164:
	li $t0, 1
	sw $t0, -2500($fp)
label1165:
	addi $sp, $sp, -4
	lw $t0, -2484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2500($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2572($fp)
	addi $sp, $sp, 16
	li $t0, 3725
	sw $t0, -2576($fp)
	lw $t1, -2572($fp)
	lw $t2, -2576($fp)
	blt $t1, $t2, label1160
	j label1161
label1160:
	li $t0, 1
	sw $t0, -2480($fp)
label1161:
	lw $t0, -364($fp)
	sw $t0, -2580($fp)
	li $t0, 0
	sw $t0, -2584($fp)
	lw $t0, -424($fp)
	sw $t0, -2588($fp)
	li $t0, 14813
	sw $t0, -2592($fp)
	lw $t1, -2588($fp)
	lw $t2, -2592($fp)
	beq $t1, $t2, label1172
	j label1173
label1172:
	li $t0, 1
	sw $t0, -2584($fp)
label1173:
	addi $sp, $sp, -4
	lw $t0, -2480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2584($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2596($fp)
	addi $sp, $sp, 16
	lw $t1, -2596($fp)
	li $t2, 0
	bne $t1, $t2, label1159
	j label1158
label1158:
	li $t0, 1
	sw $t0, -2476($fp)
label1159:
	li $t0, 0
	sw $t0, -2600($fp)
	li $t0, 32498
	sw $t0, -2604($fp)
	lw $t1, -2604($fp)
	li $t2, 0
	bne $t1, $t2, label1174
	j label1177
label1177:
	lw $t0, -460($fp)
	sw $t0, -2608($fp)
	lw $t1, -2608($fp)
	li $t2, 0
	bne $t1, $t2, label1174
	j label1176
label1176:
	lw $t0, -448($fp)
	sw $t0, -2612($fp)
	lw $t1, -2612($fp)
	li $t2, 0
	bne $t1, $t2, label1174
	j label1175
label1174:
	li $t0, 1
	sw $t0, -2600($fp)
label1175:
	addi $t0, $fp, -44
	sw $t0, -2616($fp)
	lw $t0, -340($fp)
	sw $t0, -2620($fp)
	li $t0, 4
	lw $t1, -2620($fp)
	mul $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	lw $t1, -2616($fp)
	add $t0, $t0, $t1
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	lw $t1, 0($t0)
	sw $t1, -2632($fp)
	addi $sp, $sp, -4
	lw $t0, -2476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2632($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2636($fp)
	addi $sp, $sp, 16
	lw $t1, -2636($fp)
	li $t2, 0
	bne $t1, $t2, label1156
	j label1157
label1156:
	li $t0, 1
	sw $t0, -2472($fp)
label1157:
	lw $t0, -328($fp)
	sw $t0, -2640($fp)
	li $t0, 0
	lw $t1, -2640($fp)
	sub $t0, $t0, $t1
	sw $t0, -2644($fp)
	lw $t0, -2472($fp)
	lw $t1, -2644($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2648($fp)
	lw $t0, -436($fp)
	sw $t0, -2652($fp)
	li $t0, 3851
	sw $t0, -2656($fp)
	lw $t0, -2652($fp)
	lw $t1, -2656($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2660($fp)
	lw $t0, -448($fp)
	sw $t0, -2664($fp)
	lw $t0, -2660($fp)
	lw $t1, -2664($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2668($fp)
	li $t0, 0
	sw $t0, -2672($fp)
	li $t0, 23247
	sw $t0, -2676($fp)
	li $t0, 36821
	sw $t0, -2680($fp)
	lw $t1, -2676($fp)
	lw $t2, -2680($fp)
	bge $t1, $t2, label1180
	j label1179
label1180:
	lw $t0, -412($fp)
	sw $t0, -2684($fp)
	lw $t1, -2684($fp)
	li $t2, 0
	bne $t1, $t2, label1178
	j label1179
label1178:
	li $t0, 1
	sw $t0, -2672($fp)
label1179:
	li $t0, 0
	sw $t0, -2688($fp)
	addi $t0, $fp, -28
	sw $t0, -2692($fp)
	lw $t0, -340($fp)
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
	lw $t1, -2708($fp)
	li $t2, 0
	bne $t1, $t2, label1183
	j label1182
label1183:
	lw $t0, -388($fp)
	sw $t0, -2712($fp)
	lw $t1, -2712($fp)
	li $t2, 0
	bne $t1, $t2, label1181
	j label1182
label1181:
	li $t0, 1
	sw $t0, -2688($fp)
label1182:
	addi $sp, $sp, -4
	lw $t0, -2668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2688($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2716($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -2720($fp)
	lw $t0, -376($fp)
	sw $t0, -2724($fp)
	lw $t1, -2724($fp)
	li $t2, 0
	bne $t1, $t2, label1185
	j label1184
label1184:
	li $t0, 1
	sw $t0, -2720($fp)
label1185:
	lw $t0, -2716($fp)
	lw $t1, -2720($fp)
	sub $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t1, -2648($fp)
	lw $t2, -2728($fp)
	beq $t1, $t2, label1154
	j label1155
label1154:
	li $t0, 1
	sw $t0, -2468($fp)
label1155:
	lw $ra, -4($fp)
	lw $v0, -2468($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label1150:
	addi $t0, $fp, -8
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
	lw $t0, -76($fp)
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2756($fp)
	li $t0, 0
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
	lw $t0, -2772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -2776($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -2796($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -2816($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -2836($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -2856($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -2876($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -2896($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -2916($fp)
	li $t0, 3
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
	lw $t0, -304($fp)
	sw $t0, -2936($fp)
	lw $t0, -2936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -328($fp)
	sw $t0, -2944($fp)
	lw $t0, -2944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -340($fp)
	sw $t0, -2948($fp)
	lw $t0, -2948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -352($fp)
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -364($fp)
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -376($fp)
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -388($fp)
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -400($fp)
	sw $t0, -2968($fp)
	lw $t0, -2968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -412($fp)
	sw $t0, -2972($fp)
	lw $t0, -2972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -424($fp)
	sw $t0, -2976($fp)
	lw $t0, -2976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -436($fp)
	sw $t0, -2980($fp)
	lw $t0, -2980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -448($fp)
	sw $t0, -2984($fp)
	lw $t0, -2984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -460($fp)
	sw $t0, -2988($fp)
	lw $t0, -2988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2992($fp)
	li $t0, 41647
	sw $t0, -2996($fp)
	li $t0, 38106
	sw $t0, -3000($fp)
	lw $t0, -2996($fp)
	lw $t1, -3000($fp)
	mul $t0, $t0, $t1
	sw $t0, -3004($fp)
	li $t0, 0
	lw $t1, -3004($fp)
	sub $t0, $t0, $t1
	sw $t0, -3008($fp)
	lw $t1, -3008($fp)
	li $t2, 0
	bne $t1, $t2, label1190
	j label1189
label1190:
	addi $t0, $fp, -44
	sw $t0, -3012($fp)
	li $t0, 3
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
	lw $t1, -3028($fp)
	li $t2, 0
	bne $t1, $t2, label1186
	j label1189
label1189:
	li $t0, 47049
	sw $t0, -3032($fp)
	lw $t0, -412($fp)
	sw $t0, -3036($fp)
	lw $t0, -3032($fp)
	lw $t1, -3036($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3040($fp)
	lw $t0, -352($fp)
	sw $t0, -3044($fp)
	lw $t0, -3040($fp)
	lw $t1, -3044($fp)
	mul $t0, $t0, $t1
	sw $t0, -3048($fp)
	lw $t1, -3048($fp)
	li $t2, 0
	bne $t1, $t2, label1186
	j label1188
label1188:
	lw $t0, -304($fp)
	sw $t0, -3052($fp)
	li $t0, 37230
	sw $t0, -3056($fp)
	lw $t0, -3052($fp)
	lw $t1, -3056($fp)
	mul $t0, $t0, $t1
	sw $t0, -3060($fp)
	lw $t0, -448($fp)
	sw $t0, -3064($fp)
	lw $t0, -3060($fp)
	lw $t1, -3064($fp)
	sub $t0, $t0, $t1
	sw $t0, -3068($fp)
	lw $t0, -400($fp)
	sw $t0, -3072($fp)
	lw $t0, -448($fp)
	sw $t0, -3076($fp)
	li $t0, 0
	lw $t1, -3076($fp)
	sub $t0, $t0, $t1
	sw $t0, -3080($fp)
	li $t0, 0
	lw $t1, -3080($fp)
	sub $t0, $t0, $t1
	sw $t0, -3084($fp)
	li $t0, 0
	sw $t0, -3088($fp)
	li $t0, 56036
	sw $t0, -3092($fp)
	lw $t0, -76($fp)
	sw $t0, -3096($fp)
	lw $t1, -3092($fp)
	lw $t2, -3096($fp)
	beq $t1, $t2, label1193
	j label1192
label1193:
	li $t0, 19251
	sw $t0, -3100($fp)
	lw $t1, -3100($fp)
	li $t2, 0
	bne $t1, $t2, label1191
	j label1192
label1191:
	li $t0, 1
	sw $t0, -3088($fp)
label1192:
	addi $sp, $sp, -4
	lw $t0, -3068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3088($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3104($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -3104($fp)
	sub $t0, $t0, $t1
	sw $t0, -3108($fp)
	lw $t1, -3108($fp)
	li $t2, 0
	bne $t1, $t2, label1187
	j label1186
label1186:
	li $t0, 1
	sw $t0, -2992($fp)
label1187:
	lw $ra, -4($fp)
	lw $v0, -2992($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1304
	li $t0, 8203
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 37338
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	li $t0, 4508
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	li $t0, 44700
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	li $t0, 19981
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	li $t0, 6804
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	li $t0, 30200
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	li $t0, 63788
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	li $t0, 45991
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	li $t0, 62698
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	li $t0, 13065
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	li $t0, 28659
	sw $t0, -152($fp)
	addi $t0, $fp, -16
	sw $t0, -156($fp)
	li $t0, 0
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
	li $t0, 25151
	sw $t0, -176($fp)
	addi $t0, $fp, -16
	sw $t0, -180($fp)
	li $t0, 1
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
	li $t0, 46214
	sw $t0, -200($fp)
	addi $t0, $fp, -16
	sw $t0, -204($fp)
	li $t0, 2
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $t0, -204($fp)
	lw $t1, -212($fp)
	add $t0, $t0, $t1
	sw $t0, -216($fp)
	lw $t0, -200($fp)
	lw $t1, -216($fp)
	sw $t0, 0($t1)
	lw $t0, -216($fp)
	lw $t1, 0($t0)
	sw $t1, -220($fp)
	li $t0, 0
	sw $t0, -224($fp)
	li $t0, 8239
	sw $t0, -228($fp)
	li $t0, 53193
	sw $t0, -232($fp)
	lw $t0, -36($fp)
	sw $t0, -236($fp)
	lw $t0, -232($fp)
	lw $t1, -236($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -240($fp)
	lw $t1, -228($fp)
	lw $t2, -240($fp)
	ble $t1, $t2, label1196
	j label1195
label1196:
	addi $t0, $fp, -16
	sw $t0, -244($fp)
	li $t0, 0
	sw $t0, -248($fp)
	li $t0, 46622
	sw $t0, -252($fp)
	lw $t1, -252($fp)
	li $t2, 0
	bne $t1, $t2, label1197
	j label1199
label1199:
	li $t0, 3531
	sw $t0, -256($fp)
	lw $t1, -256($fp)
	li $t2, 0
	bne $t1, $t2, label1197
	j label1198
label1197:
	li $t0, 1
	sw $t0, -248($fp)
label1198:
	li $t0, 4
	lw $t1, -248($fp)
	mul $t0, $t0, $t1
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	lw $t1, -244($fp)
	add $t0, $t0, $t1
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	lw $t1, 0($t0)
	sw $t1, -268($fp)
	lw $t1, -268($fp)
	li $t2, 0
	bne $t1, $t2, label1194
	j label1195
label1194:
	li $t0, 1
	sw $t0, -224($fp)
label1195:
	lw $t0, -24($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -36($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -48($fp)
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -316($fp)
	li $t0, 0
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
	addi $t0, $fp, -16
	sw $t0, -336($fp)
	li $t0, 1
	sw $t0, -340($fp)
	li $t0, 4
	lw $t1, -340($fp)
	mul $t0, $t0, $t1
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	lw $t1, -336($fp)
	add $t0, $t0, $t1
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	lw $t1, 0($t0)
	sw $t1, -352($fp)
	lw $t0, -352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -356($fp)
	li $t0, 2
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
	lw $t0, -372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 39081
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -380($fp)
	addi $sp, $sp, -4
	lw $t0, -380($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -384($fp)
	addi $sp, $sp, 8
	lw $ra, -4($fp)
	lw $v0, -384($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 50347
	sw $t0, -388($fp)
	lw $t1, -388($fp)
	li $t2, 0
	bne $t1, $t2, label1200
	j label1201
label1200:
label1203:
	lw $t0, -132($fp)
	sw $t0, -392($fp)
	lw $t1, -392($fp)
	li $t2, 0
	bne $t1, $t2, label1204
	j label1205
label1204:
	li $t0, 0
	sw $t0, -396($fp)
	lw $t0, -72($fp)
	sw $t0, -400($fp)
	li $t0, 0
	sw $t0, -404($fp)
	lw $t0, -48($fp)
	sw $t0, -408($fp)
	li $t0, 0
	lw $t1, -408($fp)
	sub $t0, $t0, $t1
	sw $t0, -412($fp)
	li $t0, 54198
	sw $t0, -416($fp)
	lw $t1, -412($fp)
	lw $t2, -416($fp)
	beq $t1, $t2, label1209
	j label1210
label1209:
	li $t0, 1
	sw $t0, -404($fp)
label1210:
	li $t0, 0
	sw $t0, -420($fp)
	li $t0, 0
	sw $t0, -424($fp)
	lw $t0, 12($fp)
	sw $t0, -428($fp)
	lw $t0, 8($fp)
	sw $t0, -432($fp)
	lw $t1, -428($fp)
	lw $t2, -432($fp)
	blt $t1, $t2, label1213
	j label1214
label1213:
	li $t0, 1
	sw $t0, -424($fp)
label1214:
	li $t0, 10366
	sw $t0, -436($fp)
	lw $t1, -424($fp)
	lw $t2, -436($fp)
	bge $t1, $t2, label1211
	j label1212
label1211:
	li $t0, 1
	sw $t0, -420($fp)
label1212:
	lw $t0, 8($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -444($fp)
	li $t0, 0
	sw $t0, -448($fp)
	lw $t0, -24($fp)
	sw $t0, -452($fp)
	li $t0, 0
	lw $t1, -452($fp)
	sub $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t1, -456($fp)
	li $t2, 0
	bne $t1, $t2, label1215
	j label1217
label1217:
	li $t0, 26778
	sw $t0, -460($fp)
	lw $t1, -460($fp)
	li $t2, 0
	bne $t1, $t2, label1215
	j label1216
label1215:
	li $t0, 1
	sw $t0, -448($fp)
label1216:
	addi $sp, $sp, -4
	lw $t0, -404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -448($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -464($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -464($fp)
	sub $t0, $t0, $t1
	sw $t0, -468($fp)
	lw $t0, -400($fp)
	lw $t1, -468($fp)
	mul $t0, $t0, $t1
	sw $t0, -472($fp)
	li $t0, 0
	lw $t1, -472($fp)
	sub $t0, $t0, $t1
	sw $t0, -476($fp)
	lw $t1, -476($fp)
	li $t2, 0
	bne $t1, $t2, label1206
	j label1208
label1208:
	li $t0, 0
	sw $t0, -480($fp)
	li $t0, 0
	sw $t0, -484($fp)
	lw $t0, -84($fp)
	sw $t0, -488($fp)
	lw $t0, 16($fp)
	sw $t0, -492($fp)
	lw $t1, -488($fp)
	lw $t2, -492($fp)
	blt $t1, $t2, label1220
	j label1221
label1220:
	li $t0, 1
	sw $t0, -484($fp)
label1221:
	lw $t0, -36($fp)
	sw $t0, -496($fp)
	lw $t1, -484($fp)
	lw $t2, -496($fp)
	ble $t1, $t2, label1218
	j label1219
label1218:
	li $t0, 1
	sw $t0, -480($fp)
label1219:
	lw $t0, 4($fp)
	sw $t0, -500($fp)
	lw $t1, -480($fp)
	lw $t2, -500($fp)
	ble $t1, $t2, label1206
	j label1207
label1206:
	li $t0, 1
	sw $t0, -396($fp)
label1207:
	lw $ra, -4($fp)
	lw $v0, -396($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1203
label1205:
label1201:
	lw $t0, -24($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -36($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -48($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -548($fp)
	li $t0, 0
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
	lw $t0, -564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -568($fp)
	li $t0, 1
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
	lw $t0, -584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -588($fp)
	li $t0, 2
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
	lw $t0, -604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -608($fp)
	li $t0, 0
	sw $t0, -612($fp)
	addi $t0, $fp, -16
	sw $t0, -616($fp)
	lw $t0, -36($fp)
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
	addi $t0, $fp, -16
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
	lw $t0, -632($fp)
	lw $t1, -652($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -656($fp)
	li $t0, 0
	sw $t0, -660($fp)
	li $t0, 47356
	sw $t0, -664($fp)
	lw $t1, -664($fp)
	li $t2, 0
	bne $t1, $t2, label1227
	j label1226
label1226:
	li $t0, 1
	sw $t0, -660($fp)
label1227:
	li $t0, 0
	lw $t1, -660($fp)
	sub $t0, $t0, $t1
	sw $t0, -668($fp)
	lw $t1, -656($fp)
	lw $t2, -668($fp)
	bgt $t1, $t2, label1224
	j label1225
label1224:
	li $t0, 1
	sw $t0, -612($fp)
label1225:
	li $t0, 11849
	sw $t0, -672($fp)
	lw $t1, -612($fp)
	lw $t2, -672($fp)
	blt $t1, $t2, label1222
	j label1223
label1222:
	li $t0, 1
	sw $t0, -608($fp)
label1223:
	lw $ra, -4($fp)
	lw $v0, -608($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, 16($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -680($fp)
	li $t0, 0
	sw $t0, -684($fp)
	lw $t0, -36($fp)
	sw $t0, -688($fp)
	li $t0, 31101
	sw $t0, -692($fp)
	lw $t1, -688($fp)
	lw $t2, -692($fp)
	bne $t1, $t2, label1233
	j label1232
label1233:
	lw $t0, 12($fp)
	sw $t0, -696($fp)
	lw $t1, -696($fp)
	li $t2, 0
	bne $t1, $t2, label1231
	j label1232
label1231:
	li $t0, 1
	sw $t0, -684($fp)
label1232:
	li $t0, 0
	sw $t0, -700($fp)
	lw $t0, -48($fp)
	sw $t0, -704($fp)
	li $t0, 0
	lw $t1, -704($fp)
	sub $t0, $t0, $t1
	sw $t0, -708($fp)
	lw $t1, -708($fp)
	li $t2, 0
	bne $t1, $t2, label1235
	j label1234
label1234:
	li $t0, 1
	sw $t0, -700($fp)
label1235:
	li $t0, 0
	sw $t0, -712($fp)
	li $t0, 0
	sw $t0, -716($fp)
	lw $t0, -36($fp)
	sw $t0, -720($fp)
	li $t0, 29985
	sw $t0, -724($fp)
	lw $t1, -720($fp)
	lw $t2, -724($fp)
	bne $t1, $t2, label1238
	j label1239
label1238:
	li $t0, 1
	sw $t0, -716($fp)
label1239:
	li $t0, 37856
	sw $t0, -728($fp)
	lw $t1, -716($fp)
	lw $t2, -728($fp)
	bne $t1, $t2, label1236
	j label1237
label1236:
	li $t0, 1
	sw $t0, -712($fp)
label1237:
	addi $sp, $sp, -4
	lw $t0, -680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -712($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -732($fp)
	addi $sp, $sp, 20
	lw $t1, -732($fp)
	li $t2, 0
	bne $t1, $t2, label1228
	j label1229
label1228:
	li $t0, 0
	sw $t0, -736($fp)
	addi $t0, $fp, -16
	sw $t0, -740($fp)
	lw $t0, -96($fp)
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
	li $t0, 1679
	sw $t0, -760($fp)
	lw $t0, -756($fp)
	lw $t1, -760($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -764($fp)
	lw $t1, -764($fp)
	li $t2, 0
	bne $t1, $t2, label1244
	j label1241
label1244:
	li $t0, 46059
	sw $t0, -768($fp)
	lw $t0, 8($fp)
	sw $t0, -772($fp)
	lw $t1, -768($fp)
	lw $t2, -772($fp)
	bne $t1, $t2, label1243
	j label1241
label1243:
	lw $t0, -144($fp)
	sw $t0, -776($fp)
	li $t0, 2903
	sw $t0, -780($fp)
	lw $t0, -776($fp)
	lw $t1, -780($fp)
	sub $t0, $t0, $t1
	sw $t0, -784($fp)
	lw $t0, -108($fp)
	sw $t0, -788($fp)
	lw $t1, -784($fp)
	lw $t2, -788($fp)
	bge $t1, $t2, label1242
	j label1241
label1242:
	lw $t0, 4($fp)
	sw $t0, -792($fp)
	li $t0, 6187
	sw $t0, -796($fp)
	lw $t0, -792($fp)
	lw $t1, -796($fp)
	mul $t0, $t0, $t1
	sw $t0, -800($fp)
	li $t0, 25224
	sw $t0, -804($fp)
	lw $t0, -800($fp)
	lw $t1, -804($fp)
	sub $t0, $t0, $t1
	sw $t0, -808($fp)
	li $t0, 22884
	sw $t0, -812($fp)
	lw $t0, 8($fp)
	sw $t0, -816($fp)
	lw $t0, -812($fp)
	lw $t1, -816($fp)
	add $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t1, -808($fp)
	lw $t2, -820($fp)
	bne $t1, $t2, label1240
	j label1241
label1240:
	li $t0, 1
	sw $t0, -736($fp)
label1241:
	lw $ra, -4($fp)
	lw $v0, -736($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1230
label1229:
	li $t0, 12992
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	li $t0, 55424
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	li $t0, 21136
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -856($fp)
	li $t0, 0
	sw $t0, -860($fp)
	li $t0, 0
	sw $t0, -864($fp)
	li $t0, 52587
	sw $t0, -868($fp)
	lw $t1, -868($fp)
	li $t2, 0
	bne $t1, $t2, label1248
	j label1247
label1247:
	li $t0, 1
	sw $t0, -864($fp)
label1248:
	li $t0, 34201
	sw $t0, -872($fp)
	lw $t0, -864($fp)
	lw $t1, -872($fp)
	mul $t0, $t0, $t1
	sw $t0, -876($fp)
	lw $t0, -24($fp)
	sw $t0, -880($fp)
	lw $t0, -828($fp)
	sw $t0, -884($fp)
	lw $t0, -880($fp)
	lw $t1, -884($fp)
	add $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -132($fp)
	sw $t0, -892($fp)
	lw $t0, -888($fp)
	lw $t1, -892($fp)
	sub $t0, $t0, $t1
	sw $t0, -896($fp)
	li $t0, 0
	sw $t0, -900($fp)
	lw $t0, -840($fp)
	sw $t0, -904($fp)
	lw $t0, 8($fp)
	sw $t0, -908($fp)
	lw $t0, -904($fp)
	lw $t1, -908($fp)
	sub $t0, $t0, $t1
	sw $t0, -912($fp)
	li $t0, 58983
	sw $t0, -916($fp)
	lw $t1, -912($fp)
	lw $t2, -916($fp)
	bgt $t1, $t2, label1249
	j label1250
label1249:
	li $t0, 1
	sw $t0, -900($fp)
label1250:
	lw $t0, -828($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -924($fp)
	addi $sp, $sp, -4
	lw $t0, -876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -924($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -928($fp)
	addi $sp, $sp, 20
	lw $t1, -928($fp)
	li $t2, 0
	bne $t1, $t2, label1245
	j label1246
label1245:
	li $t0, 1
	sw $t0, -860($fp)
label1246:
	lw $t0, -132($fp)
	sw $t0, -932($fp)
	li $t0, 65395
	sw $t0, -936($fp)
	lw $t0, -932($fp)
	lw $t1, -936($fp)
	sub $t0, $t0, $t1
	sw $t0, -940($fp)
	li $t0, 30346
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -948($fp)
	lw $t0, -144($fp)
	sw $t0, -952($fp)
	li $t0, 0
	sw $t0, -956($fp)
	li $t0, 22107
	sw $t0, -960($fp)
	li $t0, 12202
	sw $t0, -964($fp)
	lw $t0, -960($fp)
	lw $t1, -964($fp)
	sub $t0, $t0, $t1
	sw $t0, -968($fp)
	lw $t1, -968($fp)
	li $t2, 0
	bne $t1, $t2, label1251
	j label1253
label1253:
	li $t0, 14880
	sw $t0, -972($fp)
	lw $t1, -972($fp)
	li $t2, 0
	bne $t1, $t2, label1251
	j label1252
label1251:
	li $t0, 1
	sw $t0, -956($fp)
label1252:
	addi $sp, $sp, -4
	lw $t0, -940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -956($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -976($fp)
	addi $sp, $sp, 20
	lw $t0, -860($fp)
	lw $t1, -976($fp)
	add $t0, $t0, $t1
	sw $t0, -980($fp)
	li $t0, 61502
	sw $t0, -984($fp)
	lw $t0, -852($fp)
	sw $t0, -988($fp)
	li $t0, 0
	sw $t0, -992($fp)
	li $t0, 49306
	sw $t0, -996($fp)
	li $t0, 34975
	sw $t0, -1000($fp)
	lw $t0, -996($fp)
	lw $t1, -1000($fp)
	add $t0, $t0, $t1
	sw $t0, -1004($fp)
	li $t0, 63546
	sw $t0, -1008($fp)
	lw $t1, -1004($fp)
	lw $t2, -1008($fp)
	bne $t1, $t2, label1254
	j label1255
label1254:
	li $t0, 1
	sw $t0, -992($fp)
label1255:
	addi $sp, $sp, -4
	lw $t0, -992($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1012($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1016($fp)
	lw $t0, -60($fp)
	sw $t0, -1020($fp)
	lw $t0, 8($fp)
	sw $t0, -1024($fp)
	lw $t0, -1020($fp)
	lw $t1, -1024($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1028($fp)
	li $t0, 60656
	sw $t0, -1032($fp)
	lw $t1, -1028($fp)
	lw $t2, -1032($fp)
	bne $t1, $t2, label1256
	j label1257
label1256:
	li $t0, 1
	sw $t0, -1016($fp)
label1257:
	addi $sp, $sp, -4
	lw $t0, -1016($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1036($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1040($fp)
	li $t0, 33878
	sw $t0, -1044($fp)
	li $t0, 38940
	sw $t0, -1048($fp)
	lw $t0, -1044($fp)
	lw $t1, -1048($fp)
	sub $t0, $t0, $t1
	sw $t0, -1052($fp)
	li $t0, 46313
	sw $t0, -1056($fp)
	lw $t1, -1052($fp)
	lw $t2, -1056($fp)
	bne $t1, $t2, label1258
	j label1259
label1258:
	li $t0, 1
	sw $t0, -1040($fp)
label1259:
	addi $sp, $sp, -4
	lw $t0, -988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1040($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1060($fp)
	addi $sp, $sp, 20
	lw $t0, -984($fp)
	lw $t1, -1060($fp)
	mul $t0, $t0, $t1
	sw $t0, -1064($fp)
	addi $t0, $fp, -16
	sw $t0, -1068($fp)
	addi $t0, $fp, -16
	sw $t0, -1072($fp)
	li $t0, 1
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
	lw $t0, -96($fp)
	sw $t0, -1092($fp)
	li $t0, 0
	lw $t1, -1092($fp)
	sub $t0, $t0, $t1
	sw $t0, -1096($fp)
	lw $t0, -1088($fp)
	lw $t1, -1096($fp)
	sub $t0, $t0, $t1
	sw $t0, -1100($fp)
	li $t0, 4
	lw $t1, -1100($fp)
	mul $t0, $t0, $t1
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	lw $t1, -1068($fp)
	add $t0, $t0, $t1
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	lw $t1, 0($t0)
	sw $t1, -1112($fp)
	li $t0, 9860
	sw $t0, -1116($fp)
	addi $t0, $fp, -16
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
	lw $t0, -1116($fp)
	lw $t1, -1136($fp)
	mul $t0, $t0, $t1
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -1144($fp)
label1230:
	lw $t0, -24($fp)
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -36($fp)
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -48($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -1192($fp)
	li $t0, 0
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
	addi $t0, $fp, -16
	sw $t0, -1212($fp)
	li $t0, 1
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
	addi $t0, $fp, -16
	sw $t0, -1232($fp)
	li $t0, 2
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
	li $t0, 0
	sw $t0, -1252($fp)
	lw $t0, -24($fp)
	sw $t0, -1256($fp)
	lw $t1, -1256($fp)
	li $t2, 0
	bne $t1, $t2, label1263
	j label1261
label1263:
	addi $t0, $fp, -16
	sw $t0, -1260($fp)
	lw $t0, -96($fp)
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
	lw $t0, 12($fp)
	sw $t0, -1280($fp)
	lw $t1, -1276($fp)
	lw $t2, -1280($fp)
	bne $t1, $t2, label1262
	j label1261
label1262:
	li $t0, 0
	sw $t0, -1284($fp)
	li $t0, 0
	sw $t0, -1288($fp)
	li $t0, 40961
	sw $t0, -1292($fp)
	lw $t1, -1292($fp)
	li $t2, 0
	bne $t1, $t2, label1267
	j label1266
label1266:
	li $t0, 1
	sw $t0, -1288($fp)
label1267:
	lw $t0, -96($fp)
	sw $t0, -1296($fp)
	lw $t1, -1288($fp)
	lw $t2, -1296($fp)
	ble $t1, $t2, label1264
	j label1265
label1264:
	li $t0, 1
	sw $t0, -1284($fp)
label1265:
	lw $t0, -120($fp)
	sw $t0, -1300($fp)
	lw $t0, -96($fp)
	sw $t0, -1304($fp)
	lw $t0, -1300($fp)
	lw $t1, -1304($fp)
	sub $t0, $t0, $t1
	sw $t0, -1308($fp)
	lw $t1, -1284($fp)
	lw $t2, -1308($fp)
	bge $t1, $t2, label1260
	j label1261
label1260:
	li $t0, 1
	sw $t0, -1252($fp)
label1261:
	lw $ra, -4($fp)
	lw $v0, -1252($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -708
	li $t0, 63908
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	li $t0, 35175
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	li $t0, 43864
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	li $t0, 4559
	sw $t0, -76($fp)
	addi $t0, $fp, -36
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
	li $t0, 60399
	sw $t0, -100($fp)
	addi $t0, $fp, -36
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
	li $t0, 1213
	sw $t0, -124($fp)
	addi $t0, $fp, -36
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
	li $t0, 17551
	sw $t0, -148($fp)
	addi $t0, $fp, -36
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
	li $t0, 50287
	sw $t0, -172($fp)
	addi $t0, $fp, -36
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
	li $t0, 22349
	sw $t0, -196($fp)
	addi $t0, $fp, -36
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
	li $t0, 10999
	sw $t0, -220($fp)
	addi $t0, $fp, -36
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
	li $t0, 37338
	sw $t0, -244($fp)
	addi $t0, $fp, -36
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
	lw $t0, -44($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -56($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
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
	li $t0, 0
	sw $t0, -440($fp)
	li $t0, 0
	sw $t0, -444($fp)
	lw $t0, -44($fp)
	sw $t0, -448($fp)
	li $t0, 49540
	sw $t0, -452($fp)
	lw $t0, -448($fp)
	lw $t1, -452($fp)
	mul $t0, $t0, $t1
	sw $t0, -456($fp)
	li $t0, 0
	lw $t1, -456($fp)
	sub $t0, $t0, $t1
	sw $t0, -460($fp)
	addi $t0, $fp, -36
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
	lw $t0, -44($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -488($fp)
	addi $sp, $sp, -4
	lw $t0, -488($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -492($fp)
	addi $sp, $sp, 8
	lw $t0, -44($fp)
	sw $t0, -496($fp)
	lw $t0, -56($fp)
	sw $t0, -500($fp)
	lw $t0, -496($fp)
	lw $t1, -500($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -504($fp)
	lw $t0, -44($fp)
	sw $t0, -508($fp)
	lw $t0, -504($fp)
	lw $t1, -508($fp)
	mul $t0, $t0, $t1
	sw $t0, -512($fp)
	addi $sp, $sp, -4
	lw $t0, -460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -512($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -516($fp)
	addi $sp, $sp, 20
	lw $t1, -516($fp)
	li $t2, 0
	bne $t1, $t2, label1271
	j label1270
label1270:
	li $t0, 1
	sw $t0, -444($fp)
label1271:
	li $t0, 0
	lw $t1, -444($fp)
	sub $t0, $t0, $t1
	sw $t0, -520($fp)
	lw $t0, -44($fp)
	sw $t0, -524($fp)
	li $t0, 0
	lw $t1, -524($fp)
	sub $t0, $t0, $t1
	sw $t0, -528($fp)
	lw $t1, -520($fp)
	lw $t2, -528($fp)
	ble $t1, $t2, label1268
	j label1269
label1268:
	li $t0, 1
	sw $t0, -440($fp)
label1269:
	lw $ra, -4($fp)
	lw $v0, -440($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -44($fp)
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -56($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -544($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -564($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -584($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -604($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -624($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -644($fp)
	li $t0, 5
	sw $t0, -648($fp)
	li $t0, 4
	lw $t1, -648($fp)
	mul $t0, $t0, $t1
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	lw $t1, -644($fp)
	add $t0, $t0, $t1
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	lw $t1, 0($t0)
	sw $t1, -660($fp)
	lw $t0, -660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -664($fp)
	li $t0, 6
	sw $t0, -668($fp)
	li $t0, 4
	lw $t1, -668($fp)
	mul $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	lw $t1, -664($fp)
	add $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	lw $t1, 0($t0)
	sw $t1, -680($fp)
	lw $t0, -680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -684($fp)
	li $t0, 7
	sw $t0, -688($fp)
	li $t0, 4
	lw $t1, -688($fp)
	mul $t0, $t0, $t1
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	lw $t1, -684($fp)
	add $t0, $t0, $t1
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	lw $t1, 0($t0)
	sw $t1, -700($fp)
	lw $t0, -700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 5895
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -712($fp)
	lw $ra, -4($fp)
	lw $v0, -712($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -28
	li $t0, 63452
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	lw $t0, -12($fp)
	sw $t0, -20($fp)
	addi $sp, $sp, -4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -24($fp)
	addi $sp, $sp, 8
	lw $t0, -12($fp)
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 49399
	sw $t0, -32($fp)
	lw $ra, -4($fp)
	lw $v0, -32($fp)
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
