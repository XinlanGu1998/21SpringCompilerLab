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
	addi $sp, $sp, -684
	li $t0, 57292
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
	li $t0, 26327
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
	li $t0, 18039
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
	li $t0, 23721
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
	li $t0, 23153
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
	li $t0, 11211
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
	li $t0, 20880
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
	li $t0, 22008
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
	li $t0, 22169
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	li $t0, 24822
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	li $t0, 27433
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	li $t0, 48659
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	li $t0, 6689
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	li $t0, 0
	sw $t0, -292($fp)
	lw $t0, -284($fp)
	sw $t0, -296($fp)
	li $t0, 0
	sw $t0, -300($fp)
	li $t0, 163
	sw $t0, -304($fp)
	lw $t0, 4($fp)
	sw $t0, -308($fp)
	lw $t0, -304($fp)
	lw $t1, -308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -312($fp)
	lw $t0, -260($fp)
	sw $t0, -316($fp)
	lw $t1, -312($fp)
	lw $t2, -316($fp)
	beq $t1, $t2, label123
	j label124
label123:
	li $t0, 1
	sw $t0, -300($fp)
label124:
	lw $t0, 4($fp)
	sw $t0, -320($fp)
	lw $t0, -272($fp)
	sw $t0, -324($fp)
	lw $t0, -320($fp)
	lw $t1, -324($fp)
	add $t0, $t0, $t1
	sw $t0, -328($fp)
	addi $sp, $sp, -4
	lw $t0, -300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -328($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -332($fp)
	addi $sp, $sp, 12
	li $t0, 28578
	sw $t0, -336($fp)
	li $t0, 16970
	sw $t0, -340($fp)
	lw $t0, -336($fp)
	lw $t1, -340($fp)
	mul $t0, $t0, $t1
	sw $t0, -344($fp)
	li $t0, 0
	sw $t0, -348($fp)
	lw $t0, 8($fp)
	sw $t0, -352($fp)
	li $t0, 28753
	sw $t0, -356($fp)
	lw $t0, -352($fp)
	lw $t1, -356($fp)
	sub $t0, $t0, $t1
	sw $t0, -360($fp)
	lw $t1, -360($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label127
label127:
	lw $t0, -260($fp)
	sw $t0, -364($fp)
	lw $t1, -364($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label126
label125:
	li $t0, 1
	sw $t0, -348($fp)
label126:
	addi $sp, $sp, -4
	lw $t0, -344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -348($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -368($fp)
	addi $sp, $sp, 12
	lw $t0, -332($fp)
	lw $t1, -368($fp)
	add $t0, $t0, $t1
	sw $t0, -372($fp)
	lw $t1, -296($fp)
	lw $t2, -372($fp)
	ble $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -292($fp)
label122:
	li $t0, 0
	sw $t0, -376($fp)
	li $t0, 57025
	sw $t0, -380($fp)
	lw $t0, 8($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -388($fp)
	addi $sp, $sp, -4
	lw $t0, -380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -388($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -392($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -396($fp)
	lw $t0, -248($fp)
	sw $t0, -400($fp)
	lw $t0, 8($fp)
	sw $t0, -404($fp)
	lw $t1, -400($fp)
	lw $t2, -404($fp)
	ble $t1, $t2, label130
	j label131
label130:
	li $t0, 1
	sw $t0, -396($fp)
label131:
	lw $t1, -392($fp)
	lw $t2, -396($fp)
	beq $t1, $t2, label128
	j label129
label128:
	li $t0, 1
	sw $t0, -376($fp)
label129:
	lw $t0, -376($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -408($fp)
	addi $t0, $fp, -36
	sw $t0, -412($fp)
	lw $t0, 8($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -420($fp)
	li $t0, 4
	lw $t1, -420($fp)
	mul $t0, $t0, $t1
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	lw $t1, -412($fp)
	add $t0, $t0, $t1
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	lw $t1, 0($t0)
	sw $t1, -432($fp)
	li $t0, 46976
	sw $t0, -436($fp)
	lw $t0, 8($fp)
	sw $t0, -440($fp)
	lw $t0, -436($fp)
	lw $t1, -440($fp)
	mul $t0, $t0, $t1
	sw $t0, -444($fp)
	li $t0, 0
	lw $t1, -444($fp)
	sub $t0, $t0, $t1
	sw $t0, -448($fp)
	lw $t0, -432($fp)
	lw $t1, -448($fp)
	sub $t0, $t0, $t1
	sw $t0, -452($fp)
	li $t0, 0
	sw $t0, -456($fp)
	lw $t0, -236($fp)
	sw $t0, -460($fp)
	lw $t1, -460($fp)
	li $t2, 0
	bne $t1, $t2, label133
	j label132
label132:
	li $t0, 1
	sw $t0, -456($fp)
label133:
	addi $t0, $fp, -36
	sw $t0, -464($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -484($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -504($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -524($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -544($fp)
	li $t0, 4
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
	li $t0, 5
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
	li $t0, 6
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
	li $t0, 7
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
	lw $t0, -236($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -248($fp)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -260($fp)
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -272($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -644($fp)
	lw $t0, -260($fp)
	sw $t0, -648($fp)
	lw $t0, 4($fp)
	sw $t0, -652($fp)
	lw $t0, -648($fp)
	lw $t1, -652($fp)
	sub $t0, $t0, $t1
	sw $t0, -656($fp)
	lw $t0, 4($fp)
	sw $t0, -660($fp)
	lw $t0, -656($fp)
	lw $t1, -660($fp)
	add $t0, $t0, $t1
	sw $t0, -664($fp)
	li $t0, 0
	sw $t0, -668($fp)
	li $t0, 25158
	sw $t0, -672($fp)
	li $t0, 0
	lw $t1, -672($fp)
	sub $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $t0, 4($fp)
	sw $t0, -680($fp)
	lw $t0, 4($fp)
	sw $t0, -684($fp)
	lw $t0, -680($fp)
	lw $t1, -684($fp)
	add $t0, $t0, $t1
	sw $t0, -688($fp)
	lw $t1, -676($fp)
	lw $t2, -688($fp)
	blt $t1, $t2, label136
	j label137
label136:
	li $t0, 1
	sw $t0, -668($fp)
label137:
	lw $t1, -664($fp)
	lw $t2, -668($fp)
	bne $t1, $t2, label134
	j label135
label134:
	li $t0, 1
	sw $t0, -644($fp)
label135:
	lw $ra, -4($fp)
	lw $v0, -644($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -700
	li $t0, 4172
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	li $t0, 11778
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	li $t0, 28438
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	li $t0, 32143
	sw $t0, -52($fp)
	addi $t0, $fp, -8
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
	li $t0, 33297
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	li $t0, 59320
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	li $t0, 63842
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	li $t0, 65269
	sw $t0, -112($fp)
	addi $t0, $fp, -12
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
	li $t0, 24912
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	lw $t0, -20($fp)
	sw $t0, -148($fp)
	li $t0, 0
	sw $t0, -152($fp)
	li $t0, 0
	sw $t0, -156($fp)
	li $t0, 8847
	sw $t0, -160($fp)
	li $t0, 0
	lw $t1, -160($fp)
	sub $t0, $t0, $t1
	sw $t0, -164($fp)
	lw $t1, -164($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label143
label143:
	li $t0, 1
	sw $t0, -156($fp)
label144:
	addi $sp, $sp, -4
	lw $t0, -156($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -168($fp)
	addi $sp, $sp, 8
	li $t0, 42707
	sw $t0, -172($fp)
	lw $t1, -168($fp)
	lw $t2, -172($fp)
	bgt $t1, $t2, label141
	j label142
label141:
	li $t0, 1
	sw $t0, -152($fp)
label142:
	addi $sp, $sp, -4
	lw $t0, -152($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -176($fp)
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -180($fp)
	lw $t0, -140($fp)
	sw $t0, -184($fp)
	lw $t0, -180($fp)
	lw $t1, -184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -188($fp)
	lw $t0, -176($fp)
	lw $t1, -188($fp)
	sub $t0, $t0, $t1
	sw $t0, -192($fp)
	lw $t1, -148($fp)
	lw $t2, -192($fp)
	bgt $t1, $t2, label138
	j label139
label138:
label145:
	li $t0, 0
	sw $t0, -196($fp)
	li $t0, 0
	sw $t0, -200($fp)
	li $t0, 16669
	sw $t0, -204($fp)
	li $t0, 0
	lw $t1, -204($fp)
	sub $t0, $t0, $t1
	sw $t0, -208($fp)
	lw $t1, -208($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label150
label150:
	li $t0, 1
	sw $t0, -200($fp)
label151:
	li $t0, 0
	sw $t0, -212($fp)
	lw $t0, -80($fp)
	sw $t0, -216($fp)
	lw $t0, -32($fp)
	sw $t0, -220($fp)
	lw $t0, -216($fp)
	lw $t1, -220($fp)
	mul $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t0, -32($fp)
	sw $t0, -228($fp)
	lw $t1, -224($fp)
	lw $t2, -228($fp)
	blt $t1, $t2, label152
	j label153
label152:
	li $t0, 1
	sw $t0, -212($fp)
label153:
	addi $sp, $sp, -4
	lw $t0, -200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -212($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -232($fp)
	addi $sp, $sp, 12
	lw $t0, -80($fp)
	sw $t0, -236($fp)
	lw $t1, -232($fp)
	lw $t2, -236($fp)
	bge $t1, $t2, label148
	j label149
label148:
	li $t0, 1
	sw $t0, -196($fp)
label149:
	li $t0, 35174
	sw $t0, -240($fp)
	li $t0, 0
	lw $t1, -240($fp)
	sub $t0, $t0, $t1
	sw $t0, -244($fp)
	li $t0, 0
	lw $t1, -244($fp)
	sub $t0, $t0, $t1
	sw $t0, -248($fp)
	lw $t1, -196($fp)
	lw $t2, -248($fp)
	ble $t1, $t2, label146
	j label147
label146:
	li $t0, 0
	sw $t0, -252($fp)
	li $t0, 0
	sw $t0, -256($fp)
	addi $t0, $fp, -8
	sw $t0, -260($fp)
	lw $t0, -32($fp)
	sw $t0, -264($fp)
	li $t0, 4
	lw $t1, -264($fp)
	mul $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	lw $t1, -260($fp)
	add $t0, $t0, $t1
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	lw $t1, 0($t0)
	sw $t1, -276($fp)
	li $t0, 60746
	sw $t0, -280($fp)
	lw $t1, -276($fp)
	lw $t2, -280($fp)
	ble $t1, $t2, label156
	j label157
label156:
	li $t0, 1
	sw $t0, -256($fp)
label157:
	addi $sp, $sp, -4
	lw $t0, -256($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -284($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -288($fp)
	li $t0, 40390
	sw $t0, -292($fp)
	lw $t1, -292($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label158
label158:
	li $t0, 1
	sw $t0, -288($fp)
label159:
	addi $sp, $sp, -4
	lw $t0, -288($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -296($fp)
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	lw $t1, -296($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -300($fp)
	li $t0, 0
	sw $t0, -304($fp)
	lw $t0, -92($fp)
	sw $t0, -308($fp)
	lw $t1, -308($fp)
	li $t2, 0
	bne $t1, $t2, label161
	j label160
label160:
	li $t0, 1
	sw $t0, -304($fp)
label161:
	lw $t1, -300($fp)
	lw $t2, -304($fp)
	bne $t1, $t2, label154
	j label155
label154:
	li $t0, 1
	sw $t0, -252($fp)
label155:
	lw $ra, -4($fp)
	lw $v0, -252($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label145
label147:
label139:
label162:
	li $t0, 0
	sw $t0, -312($fp)
	li $t0, 58328
	sw $t0, -316($fp)
	lw $t1, -316($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label167
label167:
	li $t0, 1
	sw $t0, -312($fp)
label168:
	lw $t0, -44($fp)
	sw $t0, -320($fp)
	lw $t0, -312($fp)
	lw $t1, -320($fp)
	add $t0, $t0, $t1
	sw $t0, -324($fp)
	addi $sp, $sp, -4
	lw $t0, -324($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -328($fp)
	addi $sp, $sp, 8
	lw $t1, -328($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label165
label166:
	li $t0, 6421
	sw $t0, -332($fp)
	li $t0, 61271
	sw $t0, -336($fp)
	lw $t1, -332($fp)
	lw $t2, -336($fp)
	ble $t1, $t2, label163
	j label165
label165:
	li $t0, 0
	sw $t0, -340($fp)
	li $t0, 0
	sw $t0, -344($fp)
	li $t0, 14800
	sw $t0, -348($fp)
	lw $t1, -348($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label171
label171:
	li $t0, 1
	sw $t0, -344($fp)
label172:
	lw $t0, 4($fp)
	sw $t0, -352($fp)
	lw $t1, -344($fp)
	lw $t2, -352($fp)
	bne $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -340($fp)
label170:
	li $t0, 0
	sw $t0, -356($fp)
	li $t0, 28590
	sw $t0, -360($fp)
	lw $t0, -92($fp)
	sw $t0, -364($fp)
	lw $t1, -360($fp)
	lw $t2, -364($fp)
	bge $t1, $t2, label173
	j label174
label173:
	li $t0, 1
	sw $t0, -356($fp)
label174:
	lw $t1, -340($fp)
	lw $t2, -356($fp)
	bne $t1, $t2, label163
	j label164
label163:
	li $t0, 0
	sw $t0, -368($fp)
	addi $t0, $fp, -8
	sw $t0, -372($fp)
	lw $t0, -32($fp)
	sw $t0, -376($fp)
	li $t0, 20557
	sw $t0, -380($fp)
	lw $t0, -376($fp)
	lw $t1, -380($fp)
	add $t0, $t0, $t1
	sw $t0, -384($fp)
	li $t0, 4
	lw $t1, -384($fp)
	mul $t0, $t0, $t1
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	lw $t1, -372($fp)
	add $t0, $t0, $t1
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	lw $t1, 0($t0)
	sw $t1, -396($fp)
	li $t0, 42233
	sw $t0, -400($fp)
	lw $t0, -396($fp)
	lw $t1, -400($fp)
	mul $t0, $t0, $t1
	sw $t0, -404($fp)
	lw $t1, -404($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label177
label177:
	li $t0, 11714
	sw $t0, -408($fp)
	lw $t0, -104($fp)
	sw $t0, -412($fp)
	lw $t0, -408($fp)
	lw $t1, -412($fp)
	mul $t0, $t0, $t1
	sw $t0, -416($fp)
	li $t0, 0
	sw $t0, -420($fp)
	li $t0, 27246
	sw $t0, -424($fp)
	lw $t0, -80($fp)
	sw $t0, -428($fp)
	lw $t1, -424($fp)
	lw $t2, -428($fp)
	bge $t1, $t2, label178
	j label179
label178:
	li $t0, 1
	sw $t0, -420($fp)
label179:
	lw $t1, -416($fp)
	lw $t2, -420($fp)
	beq $t1, $t2, label175
	j label176
label175:
	li $t0, 1
	sw $t0, -368($fp)
label176:
	j label162
label164:
	lw $t0, -20($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -32($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -44($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -444($fp)
	li $t0, 0
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
	lw $t0, -80($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -476($fp)
	li $t0, 0
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
	lw $t0, -492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -140($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -32($fp)
	sw $t0, -500($fp)
	lw $t0, -20($fp)
	sw $t0, -504($fp)
	lw $t0, -500($fp)
	lw $t1, -504($fp)
	mul $t0, $t0, $t1
	sw $t0, -508($fp)
	li $t0, 42397
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -516($fp)
	addi $sp, $sp, -4
	lw $t0, -516($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -520($fp)
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	lw $t1, -520($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -524($fp)
	li $t0, 0
	sw $t0, -528($fp)
	addi $t0, $fp, -12
	sw $t0, -532($fp)
	lw $t0, -140($fp)
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
	lw $t1, -548($fp)
	li $t2, 0
	bne $t1, $t2, label181
	j label180
label180:
	li $t0, 1
	sw $t0, -528($fp)
label181:
	lw $t0, -524($fp)
	lw $t1, -528($fp)
	mul $t0, $t0, $t1
	sw $t0, -552($fp)
	li $t0, 40467
	sw $t0, -556($fp)
	lw $t0, -552($fp)
	lw $t1, -556($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -560($fp)
	lw $ra, -4($fp)
	lw $v0, -560($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -12
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
	lw $t1, -580($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label182
label182:
	lw $t0, -32($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -588($fp)
	lw $t0, -92($fp)
	sw $t0, -592($fp)
	lw $t0, 4($fp)
	sw $t0, -596($fp)
	lw $t0, -592($fp)
	lw $t1, -596($fp)
	sub $t0, $t0, $t1
	sw $t0, -600($fp)
	li $t0, 18990
	sw $t0, -604($fp)
label183:
	lw $t0, -20($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -32($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -44($fp)
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -620($fp)
	li $t0, 0
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
	lw $t0, -80($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -652($fp)
	li $t0, 0
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
	lw $t0, -140($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 36129
	sw $t0, -676($fp)
	li $t0, 0
	sw $t0, -680($fp)
	addi $t0, $fp, -12
	sw $t0, -684($fp)
	lw $t0, -80($fp)
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
	lw $t1, -700($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label185
label185:
	li $t0, 1
	sw $t0, -680($fp)
label186:
	lw $t0, -676($fp)
	lw $t1, -680($fp)
	mul $t0, $t0, $t1
	sw $t0, -704($fp)
	lw $ra, -4($fp)
	lw $v0, -704($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -440
	li $t0, 49043
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 47428
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 2736
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
	li $t0, 16804
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
	li $t0, 0
	sw $t0, -88($fp)
	addi $t0, $fp, -36
	sw $t0, -92($fp)
	li $t0, 0
	sw $t0, -96($fp)
	lw $t0, -24($fp)
	sw $t0, -100($fp)
	lw $t1, -100($fp)
	li $t2, 0
	bne $t1, $t2, label189
	j label191
label191:
	li $t0, 41213
	sw $t0, -104($fp)
	lw $t1, -104($fp)
	li $t2, 0
	bne $t1, $t2, label189
	j label190
label189:
	li $t0, 1
	sw $t0, -96($fp)
label190:
	li $t0, 4
	lw $t1, -96($fp)
	mul $t0, $t0, $t1
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	lw $t1, -92($fp)
	add $t0, $t0, $t1
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	lw $t1, 0($t0)
	sw $t1, -116($fp)
	li $t0, 0
	lw $t1, -116($fp)
	sub $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t1, -120($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label187
label187:
	li $t0, 1
	sw $t0, -88($fp)
label188:
	jal f8
	sw $v0, -124($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -124($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -128($fp)
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -132($fp)
	li $t0, 0
	sw $t0, -136($fp)
	li $t0, 1042
	sw $t0, -140($fp)
	lw $t1, -140($fp)
	li $t2, 0
	bne $t1, $t2, label192
	j label194
label194:
	li $t0, 0
	sw $t0, -144($fp)
	li $t0, 16538
	sw $t0, -148($fp)
	lw $t0, -24($fp)
	sw $t0, -152($fp)
	lw $t1, -148($fp)
	lw $t2, -152($fp)
	blt $t1, $t2, label196
	j label197
label196:
	li $t0, 1
	sw $t0, -144($fp)
label197:
	lw $t0, -12($fp)
	sw $t0, -156($fp)
	lw $t1, -144($fp)
	lw $t2, -156($fp)
	bne $t1, $t2, label195
	j label193
label195:
	li $t0, 589
	sw $t0, -160($fp)
	li $t0, 0
	lw $t1, -160($fp)
	sub $t0, $t0, $t1
	sw $t0, -164($fp)
	lw $t1, -164($fp)
	li $t2, 0
	bne $t1, $t2, label192
	j label193
label192:
	li $t0, 1
	sw $t0, -136($fp)
label193:
	li $t0, 9889
	sw $t0, -168($fp)
	li $t0, 59245
	sw $t0, -172($fp)
	lw $t0, -168($fp)
	lw $t1, -172($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -176($fp)
	li $t0, 17258
	sw $t0, -204($fp)
	addi $t0, $fp, -200
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
	li $t0, 45064
	sw $t0, -228($fp)
	addi $t0, $fp, -200
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
	li $t0, 54455
	sw $t0, -252($fp)
	addi $t0, $fp, -200
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
	li $t0, 57649
	sw $t0, -276($fp)
	addi $t0, $fp, -200
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
	li $t0, 37856
	sw $t0, -300($fp)
	addi $t0, $fp, -200
	sw $t0, -304($fp)
	li $t0, 4
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
	li $t0, 60876
	sw $t0, -324($fp)
	addi $t0, $fp, -200
	sw $t0, -328($fp)
	li $t0, 5
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
	addi $t0, $fp, -200
	sw $t0, -348($fp)
	lw $t0, -24($fp)
	sw $t0, -352($fp)
	li $t0, 53384
	sw $t0, -356($fp)
	lw $t0, -352($fp)
	lw $t1, -356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -360($fp)
	li $t0, 4
	lw $t1, -360($fp)
	mul $t0, $t0, $t1
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	lw $t1, -348($fp)
	add $t0, $t0, $t1
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	lw $t1, 0($t0)
	sw $t1, -372($fp)
	li $t0, 0
	sw $t0, -376($fp)
	lw $t0, -12($fp)
	sw $t0, -380($fp)
	lw $t1, -380($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label198
label198:
	li $t0, 1
	sw $t0, -376($fp)
label199:
	lw $t0, -372($fp)
	lw $t1, -376($fp)
	mul $t0, $t0, $t1
	sw $t0, -384($fp)
	jal f8
	sw $v0, -388($fp)
	addi $sp, $sp, 4
	lw $t0, -384($fp)
	lw $t1, -388($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -392($fp)
	lw $t0, -12($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -404($fp)
	li $t0, 0
	sw $t0, -408($fp)
	li $t0, 52656
	sw $t0, -412($fp)
	lw $t1, -412($fp)
	li $t2, 0
	bne $t1, $t2, label204
	j label203
label203:
	li $t0, 1
	sw $t0, -408($fp)
label204:
	lw $t0, -12($fp)
	sw $t0, -416($fp)
	lw $t0, -24($fp)
	sw $t0, -420($fp)
	lw $t0, -416($fp)
	lw $t1, -420($fp)
	mul $t0, $t0, $t1
	sw $t0, -424($fp)
	li $t0, 0
	lw $t1, -424($fp)
	sub $t0, $t0, $t1
	sw $t0, -428($fp)
	lw $t0, -408($fp)
	lw $t1, -428($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -432($fp)
	lw $t1, -432($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label201
label202:
	li $t0, 23930
	sw $t0, -436($fp)
	lw $t0, -24($fp)
	sw $t0, -440($fp)
	li $t0, 0
	lw $t1, -440($fp)
	sub $t0, $t0, $t1
	sw $t0, -444($fp)
	lw $t1, -436($fp)
	lw $t2, -444($fp)
	bne $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -404($fp)
label201:
	lw $ra, -4($fp)
	lw $v0, -404($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -676
	li $t0, 8405
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	li $t0, 29353
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	li $t0, 35644
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	li $t0, 35651
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
	li $t0, 6214
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
	li $t0, 10575
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
	li $t0, 25940
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
	li $t0, 46
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
	li $t0, 42532
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
	li $t0, 63205
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
	li $t0, 19036
	sw $t0, -240($fp)
	lw $t0, -52($fp)
	sw $t0, -244($fp)
	lw $t0, -240($fp)
	lw $t1, -244($fp)
	mul $t0, $t0, $t1
	sw $t0, -248($fp)
	addi $t0, $fp, -32
	sw $t0, -252($fp)
	lw $t0, 8($fp)
	sw $t0, -256($fp)
	li $t0, 13125
	sw $t0, -260($fp)
	lw $t0, -256($fp)
	lw $t1, -260($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -264($fp)
	li $t0, 4
	lw $t1, -264($fp)
	mul $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	lw $t1, -252($fp)
	add $t0, $t0, $t1
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	lw $t1, 0($t0)
	sw $t1, -276($fp)
	lw $t0, -248($fp)
	lw $t1, -276($fp)
	sub $t0, $t0, $t1
	sw $t0, -280($fp)
	li $t0, 0
	sw $t0, -284($fp)
	li $t0, 0
	sw $t0, -288($fp)
	li $t0, 46713
	sw $t0, -292($fp)
	lw $t1, -292($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -288($fp)
label209:
	li $t0, 928
	sw $t0, -296($fp)
	lw $t0, -288($fp)
	lw $t1, -296($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -300($fp)
	lw $t0, -40($fp)
	sw $t0, -304($fp)
	li $t0, 0
	lw $t1, -304($fp)
	sub $t0, $t0, $t1
	sw $t0, -308($fp)
	lw $t0, -300($fp)
	lw $t1, -308($fp)
	mul $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t1, -312($fp)
	li $t2, 0
	bne $t1, $t2, label207
	j label206
label207:
	lw $t0, -52($fp)
	sw $t0, -316($fp)
	jal f8
	sw $v0, -320($fp)
	addi $sp, $sp, 4
	lw $t0, -316($fp)
	lw $t1, -320($fp)
	mul $t0, $t0, $t1
	sw $t0, -324($fp)
	lw $t1, -324($fp)
	li $t2, 0
	bne $t1, $t2, label205
	j label206
label205:
	li $t0, 1
	sw $t0, -284($fp)
label206:
	li $t0, 0
	sw $t0, -328($fp)
	lw $t0, -52($fp)
	sw $t0, -332($fp)
	lw $t1, -332($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label212
label212:
	lw $t0, -64($fp)
	sw $t0, -336($fp)
	lw $t0, -40($fp)
	sw $t0, -340($fp)
	lw $t0, -336($fp)
	lw $t1, -340($fp)
	mul $t0, $t0, $t1
	sw $t0, -344($fp)
	li $t0, 15861
	sw $t0, -348($fp)
	lw $t0, -344($fp)
	lw $t1, -348($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -352($fp)
	li $t0, 63517
	sw $t0, -356($fp)
	li $t0, 0
	lw $t1, -356($fp)
	sub $t0, $t0, $t1
	sw $t0, -360($fp)
	lw $t0, -352($fp)
	lw $t1, -360($fp)
	mul $t0, $t0, $t1
	sw $t0, -364($fp)
	lw $t1, -364($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label211
label210:
	li $t0, 1
	sw $t0, -328($fp)
label211:
	lw $t0, 8($fp)
	sw $t0, -368($fp)
	li $t0, 0
	sw $t0, -372($fp)
	li $t0, 59989
	sw $t0, -376($fp)
	li $t0, 6321
	sw $t0, -380($fp)
	lw $t0, -376($fp)
	lw $t1, -380($fp)
	sub $t0, $t0, $t1
	sw $t0, -384($fp)
	lw $t1, -384($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label215
label215:
	lw $t0, 12($fp)
	sw $t0, -388($fp)
	lw $t1, -388($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label214
label213:
	li $t0, 1
	sw $t0, -372($fp)
label214:
	li $t0, 0
	sw $t0, -392($fp)
	li $t0, 0
	sw $t0, -396($fp)
	lw $t0, -52($fp)
	sw $t0, -400($fp)
	lw $t0, 8($fp)
	sw $t0, -404($fp)
	lw $t0, -400($fp)
	lw $t1, -404($fp)
	sub $t0, $t0, $t1
	sw $t0, -408($fp)
	lw $t1, -408($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label219
label220:
	lw $t0, -52($fp)
	sw $t0, -412($fp)
	lw $t1, -412($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label219
label218:
	li $t0, 1
	sw $t0, -396($fp)
label219:
	lw $t0, -64($fp)
	sw $t0, -416($fp)
	li $t0, 42731
	sw $t0, -420($fp)
	li $t0, 26793
	sw $t0, -424($fp)
	lw $t0, -420($fp)
	lw $t1, -424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -428($fp)
	li $t0, 8228
	sw $t0, -432($fp)
	lw $t0, -428($fp)
	lw $t1, -432($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -436($fp)
	addi $sp, $sp, -4
	lw $t0, -396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -436($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -440($fp)
	addi $sp, $sp, 16
	lw $t1, -440($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label216
label216:
	li $t0, 1
	sw $t0, -392($fp)
label217:
	addi $sp, $sp, -4
	lw $t0, -372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -392($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -444($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -444($fp)
	sub $t0, $t0, $t1
	sw $t0, -448($fp)
	li $t0, 0
	sw $t0, -452($fp)
	li $t0, 14519
	sw $t0, -456($fp)
	lw $t0, 4($fp)
	sw $t0, -460($fp)
	lw $t1, -456($fp)
	lw $t2, -460($fp)
	bgt $t1, $t2, label221
	j label223
label223:
	lw $t0, -52($fp)
	sw $t0, -464($fp)
	lw $t1, -464($fp)
	li $t2, 0
	bne $t1, $t2, label221
	j label222
label221:
	li $t0, 1
	sw $t0, -452($fp)
label222:
	addi $sp, $sp, -4
	lw $t0, -452($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -468($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -472($fp)
	lw $t0, -52($fp)
	sw $t0, -476($fp)
	li $t0, 42141
	sw $t0, -480($fp)
	lw $t0, -476($fp)
	lw $t1, -480($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -484($fp)
	lw $t1, -484($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label226
label226:
	li $t0, 16903
	sw $t0, -488($fp)
	lw $t1, -488($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label225
label224:
	li $t0, 1
	sw $t0, -472($fp)
label225:
	addi $sp, $sp, -4
	lw $t0, -448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -472($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -492($fp)
	addi $sp, $sp, 16
	lw $t0, -40($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -52($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -508($fp)
	li $t0, 0
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
	lw $t0, -524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -528($fp)
	li $t0, 1
	sw $t0, -532($fp)
	li $t0, 4
	lw $t1, -532($fp)
	mul $t0, $t0, $t1
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	lw $t1, -528($fp)
	add $t0, $t0, $t1
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	lw $t1, 0($t0)
	sw $t1, -544($fp)
	lw $t0, -544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
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
	lw $t0, -564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -568($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -588($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -608($fp)
	li $t0, 5
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
	lw $t0, -624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -628($fp)
	li $t0, 6
	sw $t0, -632($fp)
	li $t0, 4
	lw $t1, -632($fp)
	mul $t0, $t0, $t1
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	lw $t1, -628($fp)
	add $t0, $t0, $t1
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	lw $t1, 0($t0)
	sw $t1, -644($fp)
	lw $t0, -644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -648($fp)
	li $t0, 62683
	sw $t0, -652($fp)
	lw $t1, -652($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label228
label229:
	li $t0, 0
	sw $t0, -656($fp)
	lw $t0, -52($fp)
	sw $t0, -660($fp)
	lw $t1, -660($fp)
	li $t2, 0
	bne $t1, $t2, label231
	j label230
label230:
	li $t0, 1
	sw $t0, -656($fp)
label231:
	lw $t0, -52($fp)
	sw $t0, -664($fp)
	lw $t0, -656($fp)
	lw $t1, -664($fp)
	mul $t0, $t0, $t1
	sw $t0, -668($fp)
	li $t0, 0
	sw $t0, -672($fp)
	lw $t0, -52($fp)
	sw $t0, -676($fp)
	lw $t1, -676($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label232
label232:
	li $t0, 1
	sw $t0, -672($fp)
label233:
	lw $t0, -668($fp)
	lw $t1, -672($fp)
	mul $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $t1, -680($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label228
label227:
	li $t0, 1
	sw $t0, -648($fp)
label228:
	lw $ra, -4($fp)
	lw $v0, -648($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2168
	li $t0, 52102
	sw $t0, -40($fp)
	addi $t0, $fp, -28
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
	li $t0, 44177
	sw $t0, -64($fp)
	addi $t0, $fp, -28
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
	li $t0, 58023
	sw $t0, -88($fp)
	addi $t0, $fp, -28
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
	li $t0, 39950
	sw $t0, -112($fp)
	addi $t0, $fp, -28
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
	li $t0, 31297
	sw $t0, -136($fp)
	addi $t0, $fp, -28
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
	li $t0, 16418
	sw $t0, -160($fp)
	addi $t0, $fp, -28
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
	li $t0, 48355
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	li $t0, 60650
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	li $t0, 52062
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	li $t0, 18471
	sw $t0, -220($fp)
	addi $t0, $fp, -36
	sw $t0, -224($fp)
	li $t0, 0
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
	li $t0, 1329
	sw $t0, -244($fp)
	addi $t0, $fp, -36
	sw $t0, -248($fp)
	li $t0, 1
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
	li $t0, 62638
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	lw $t0, -188($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -212($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	lw $t0, -272($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -456($fp)
	addi $t0, $fp, -28
	sw $t0, -460($fp)
	li $t0, 0
	sw $t0, -464($fp)
	li $t0, 44411
	sw $t0, -468($fp)
	lw $t0, 16($fp)
	sw $t0, -472($fp)
	lw $t0, -468($fp)
	lw $t1, -472($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -476($fp)
	lw $t1, -476($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label238
label238:
	li $t0, 1375
	sw $t0, -480($fp)
	lw $t1, -480($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -464($fp)
label237:
	li $t0, 4
	lw $t1, -464($fp)
	mul $t0, $t0, $t1
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	lw $t1, -460($fp)
	add $t0, $t0, $t1
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	lw $t1, 0($t0)
	sw $t1, -492($fp)
	lw $t0, -212($fp)
	sw $t0, -496($fp)
	li $t0, 0
	lw $t1, -496($fp)
	sub $t0, $t0, $t1
	sw $t0, -500($fp)
	li $t0, 0
	lw $t1, -500($fp)
	sub $t0, $t0, $t1
	sw $t0, -504($fp)
	li $t0, 39634
	sw $t0, -508($fp)
	lw $t0, -504($fp)
	lw $t1, -508($fp)
	add $t0, $t0, $t1
	sw $t0, -512($fp)
	lw $t1, -492($fp)
	lw $t2, -512($fp)
	bge $t1, $t2, label234
	j label235
label234:
	li $t0, 1
	sw $t0, -456($fp)
label235:
	lw $ra, -4($fp)
	lw $v0, -456($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label239:
	li $t0, 42081
	sw $t0, -516($fp)
	lw $t1, -516($fp)
	li $t2, 0
	bne $t1, $t2, label240
	j label241
label240:
	li $t0, 20411
	sw $t0, -548($fp)
	addi $t0, $fp, -528
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
	li $t0, 52759
	sw $t0, -572($fp)
	addi $t0, $fp, -528
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
	li $t0, 23258
	sw $t0, -596($fp)
	addi $t0, $fp, -528
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
	li $t0, 21339
	sw $t0, -620($fp)
	addi $t0, $fp, -544
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
	li $t0, 3084
	sw $t0, -644($fp)
	addi $t0, $fp, -544
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
	li $t0, 21239
	sw $t0, -668($fp)
	addi $t0, $fp, -544
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
	li $t0, 63481
	sw $t0, -692($fp)
	addi $t0, $fp, -544
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
	li $t0, 19987
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	li $t0, 35759
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	li $t0, 0
	sw $t0, -740($fp)
	lw $t0, -720($fp)
	sw $t0, -744($fp)
	li $t0, 0
	lw $t1, -744($fp)
	sub $t0, $t0, $t1
	sw $t0, -748($fp)
	lw $t1, -748($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label243
label245:
	li $t0, 40676
	sw $t0, -752($fp)
	li $t0, 46780
	sw $t0, -756($fp)
	lw $t0, -752($fp)
	lw $t1, -756($fp)
	sub $t0, $t0, $t1
	sw $t0, -760($fp)
	li $t0, 43987
	sw $t0, -764($fp)
	lw $t1, -760($fp)
	lw $t2, -764($fp)
	bne $t1, $t2, label244
	j label243
label244:
	addi $t0, $fp, -36
	sw $t0, -768($fp)
	li $t0, 35129
	sw $t0, -772($fp)
	li $t0, 53101
	sw $t0, -776($fp)
	lw $t0, -772($fp)
	lw $t1, -776($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -780($fp)
	li $t0, 4
	lw $t1, -780($fp)
	mul $t0, $t0, $t1
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	lw $t1, -768($fp)
	add $t0, $t0, $t1
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	lw $t1, 0($t0)
	sw $t1, -792($fp)
	lw $t1, -792($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label243
label242:
	li $t0, 1
	sw $t0, -740($fp)
label243:
	li $t0, 0
	sw $t0, -796($fp)
	li $t0, 41135
	sw $t0, -800($fp)
	li $t0, 0
	lw $t1, -800($fp)
	sub $t0, $t0, $t1
	sw $t0, -804($fp)
	addi $sp, $sp, -4
	lw $t0, -804($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -808($fp)
	addi $sp, $sp, 8
	lw $t1, -808($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label248
label248:
	li $t0, 21696
	sw $t0, -812($fp)
	lw $t1, -812($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label247
label246:
	li $t0, 1
	sw $t0, -796($fp)
label247:
label249:
	li $t0, 0
	sw $t0, -816($fp)
	addi $t0, $fp, -36
	sw $t0, -820($fp)
	lw $t0, -732($fp)
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
	lw $t1, -836($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label252
label252:
	li $t0, 1
	sw $t0, -816($fp)
label253:
	li $t0, 0
	sw $t0, -840($fp)
	lw $t0, -188($fp)
	sw $t0, -844($fp)
	lw $t1, -844($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label254
label254:
	li $t0, 1
	sw $t0, -840($fp)
label255:
	li $t0, 33622
	sw $t0, -848($fp)
	lw $t0, -840($fp)
	lw $t1, -848($fp)
	add $t0, $t0, $t1
	sw $t0, -852($fp)
	li $t0, 31742
	sw $t0, -856($fp)
	jal f8
	sw $v0, -860($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -860($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -864($fp)
	addi $sp, $sp, 16
	lw $t1, -816($fp)
	lw $t2, -864($fp)
	beq $t1, $t2, label250
	j label251
label250:
	lw $t0, -200($fp)
	sw $t0, -868($fp)
	li $t0, 61646
	sw $t0, -872($fp)
	lw $t1, -868($fp)
	lw $t2, -872($fp)
	bge $t1, $t2, label256
	j label257
label256:
	li $t0, 63039
	sw $t0, -904($fp)
	addi $t0, $fp, -900
	sw $t0, -908($fp)
	li $t0, 0
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
	li $t0, 50040
	sw $t0, -928($fp)
	addi $t0, $fp, -900
	sw $t0, -932($fp)
	li $t0, 1
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
	li $t0, 44466
	sw $t0, -952($fp)
	addi $t0, $fp, -900
	sw $t0, -956($fp)
	li $t0, 2
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
	li $t0, 58154
	sw $t0, -976($fp)
	addi $t0, $fp, -900
	sw $t0, -980($fp)
	li $t0, 3
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
	li $t0, 36567
	sw $t0, -1000($fp)
	addi $t0, $fp, -900
	sw $t0, -1004($fp)
	li $t0, 4
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
	li $t0, 62937
	sw $t0, -1024($fp)
	addi $t0, $fp, -900
	sw $t0, -1028($fp)
	li $t0, 5
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
	li $t0, 59483
	sw $t0, -1048($fp)
	addi $t0, $fp, -900
	sw $t0, -1052($fp)
	li $t0, 6
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
label259:
	li $t0, 0
	sw $t0, -1072($fp)
	li $t0, 0
	sw $t0, -1076($fp)
	li $t0, 33669
	sw $t0, -1080($fp)
	lw $t1, -1080($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label264
label264:
	li $t0, 1
	sw $t0, -1076($fp)
label265:
	li $t0, 0
	lw $t1, -1076($fp)
	sub $t0, $t0, $t1
	sw $t0, -1084($fp)
	lw $t0, -732($fp)
	sw $t0, -1088($fp)
	li $t0, 0
	lw $t1, -1088($fp)
	sub $t0, $t0, $t1
	sw $t0, -1092($fp)
	lw $t0, -1084($fp)
	lw $t1, -1092($fp)
	sub $t0, $t0, $t1
	sw $t0, -1096($fp)
	li $t0, 41812
	sw $t0, -1100($fp)
	lw $t1, -1096($fp)
	lw $t2, -1100($fp)
	ble $t1, $t2, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -1072($fp)
label263:
	li $t0, 0
	sw $t0, -1104($fp)
	addi $t0, $fp, -544
	sw $t0, -1108($fp)
	lw $t0, -200($fp)
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
	lw $t1, -1124($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label266
label266:
	li $t0, 1
	sw $t0, -1104($fp)
label267:
	lw $t1, -1072($fp)
	lw $t2, -1104($fp)
	blt $t1, $t2, label260
	j label261
label260:
	addi $t0, $fp, -900
	sw $t0, -1128($fp)
	li $t0, 0
	sw $t0, -1132($fp)
	li $t0, 60858
	sw $t0, -1136($fp)
	li $t0, 0
	sw $t0, -1140($fp)
	li $t0, 7767
	sw $t0, -1144($fp)
	lw $t1, -1144($fp)
	li $t2, 0
	bne $t1, $t2, label271
	j label270
label270:
	li $t0, 1
	sw $t0, -1140($fp)
label271:
	lw $t1, -1136($fp)
	lw $t2, -1140($fp)
	blt $t1, $t2, label268
	j label269
label268:
	li $t0, 1
	sw $t0, -1132($fp)
label269:
	li $t0, 4
	lw $t1, -1132($fp)
	mul $t0, $t0, $t1
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	lw $t1, -1128($fp)
	add $t0, $t0, $t1
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	lw $t1, 0($t0)
	sw $t1, -1156($fp)
	lw $ra, -4($fp)
	lw $v0, -1156($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label259
label261:
	j label258
label257:
	addi $t0, $fp, -28
	sw $t0, -1160($fp)
	li $t0, 0
	sw $t0, -1164($fp)
	li $t0, 0
	sw $t0, -1168($fp)
	lw $t0, -212($fp)
	sw $t0, -1172($fp)
	lw $t0, -200($fp)
	sw $t0, -1176($fp)
	lw $t1, -1172($fp)
	lw $t2, -1176($fp)
	ble $t1, $t2, label274
	j label275
label274:
	li $t0, 1
	sw $t0, -1168($fp)
label275:
	lw $t0, -200($fp)
	sw $t0, -1180($fp)
	lw $t1, -1168($fp)
	lw $t2, -1180($fp)
	bne $t1, $t2, label272
	j label273
label272:
	li $t0, 1
	sw $t0, -1164($fp)
label273:
	li $t0, 4
	lw $t1, -1164($fp)
	mul $t0, $t0, $t1
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	lw $t1, -1160($fp)
	add $t0, $t0, $t1
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	lw $t1, 0($t0)
	sw $t1, -1192($fp)
	lw $t0, -200($fp)
	sw $t0, -1196($fp)
	lw $t0, -1192($fp)
	lw $t1, -1196($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1200($fp)
label258:
	j label249
label251:
	jal f8
	sw $v0, -1204($fp)
	addi $sp, $sp, 4
	lw $t1, -1204($fp)
	li $t2, 0
	bne $t1, $t2, label276
	j label277
label276:
	jal f8
	sw $v0, -1208($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1208($fp)
	sub $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $ra, -4($fp)
	lw $v0, -1212($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label278
label277:
label279:
	addi $t0, $fp, -528
	sw $t0, -1216($fp)
	lw $t0, -188($fp)
	sw $t0, -1220($fp)
	li $t0, 18357
	sw $t0, -1224($fp)
	li $t0, 15733
	sw $t0, -1228($fp)
	lw $t0, -1224($fp)
	lw $t1, -1228($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1232($fp)
	lw $t0, -1220($fp)
	lw $t1, -1232($fp)
	add $t0, $t0, $t1
	sw $t0, -1236($fp)
	li $t0, 4
	lw $t1, -1236($fp)
	mul $t0, $t0, $t1
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	lw $t1, -1216($fp)
	add $t0, $t0, $t1
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	lw $t1, 0($t0)
	sw $t1, -1248($fp)
	lw $t1, -1248($fp)
	li $t2, 0
	bne $t1, $t2, label280
	j label281
label280:
	li $t0, 0
	sw $t0, -1252($fp)
	lw $t0, -212($fp)
	sw $t0, -1256($fp)
	lw $t1, -1256($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label282
label282:
	li $t0, 1
	sw $t0, -1252($fp)
label283:
	li $t0, 0
	lw $t1, -1252($fp)
	sub $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t0, 16($fp)
	sw $t0, -1264($fp)
	li $t0, 0
	lw $t1, -1264($fp)
	sub $t0, $t0, $t1
	sw $t0, -1268($fp)
	li $t0, 0
	lw $t1, -1268($fp)
	sub $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t0, -1260($fp)
	lw $t1, -1272($fp)
	add $t0, $t0, $t1
	sw $t0, -1276($fp)
	li $t0, 0
	sw $t0, -1280($fp)
	addi $t0, $fp, -36
	sw $t0, -1284($fp)
	li $t0, 0
	sw $t0, -1288($fp)
	addi $t0, $fp, -528
	sw $t0, -1292($fp)
	li $t0, 0
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
	lw $t0, -200($fp)
	sw $t0, -1312($fp)
	lw $t1, -1308($fp)
	lw $t2, -1312($fp)
	beq $t1, $t2, label286
	j label287
label286:
	li $t0, 1
	sw $t0, -1288($fp)
label287:
	li $t0, 4
	lw $t1, -1288($fp)
	mul $t0, $t0, $t1
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	lw $t1, -1284($fp)
	add $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	lw $t1, 0($t0)
	sw $t1, -1324($fp)
	li $t0, 37072
	sw $t0, -1328($fp)
	li $t0, 0
	lw $t1, -1328($fp)
	sub $t0, $t0, $t1
	sw $t0, -1332($fp)
	li $t0, 0
	lw $t1, -1332($fp)
	sub $t0, $t0, $t1
	sw $t0, -1336($fp)
	li $t0, 0
	sw $t0, -1340($fp)
	lw $t0, -188($fp)
	sw $t0, -1344($fp)
	lw $t1, -1344($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label288
label288:
	li $t0, 1
	sw $t0, -1340($fp)
label289:
	lw $t0, -1336($fp)
	lw $t1, -1340($fp)
	sub $t0, $t0, $t1
	sw $t0, -1348($fp)
	lw $t1, -1324($fp)
	lw $t2, -1348($fp)
	ble $t1, $t2, label284
	j label285
label284:
	li $t0, 1
	sw $t0, -1280($fp)
label285:
	j label279
label281:
label278:
	addi $t0, $fp, -528
	sw $t0, -1352($fp)
	li $t0, 0
	sw $t0, -1356($fp)
	li $t0, 4
	lw $t1, -1356($fp)
	mul $t0, $t0, $t1
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	lw $t1, -1352($fp)
	add $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	lw $t1, 0($t0)
	sw $t1, -1368($fp)
	lw $t0, -1368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -528
	sw $t0, -1372($fp)
	li $t0, 1
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
	lw $t0, -1388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -528
	sw $t0, -1392($fp)
	li $t0, 2
	sw $t0, -1396($fp)
	li $t0, 4
	lw $t1, -1396($fp)
	mul $t0, $t0, $t1
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	lw $t1, -1392($fp)
	add $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	lw $t1, 0($t0)
	sw $t1, -1408($fp)
	lw $t0, -1408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -544
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
	addi $t0, $fp, -544
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
	addi $t0, $fp, -544
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
	addi $t0, $fp, -544
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
	lw $t0, -720($fp)
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -732($fp)
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -1500($fp)
	lw $t0, -200($fp)
	sw $t0, -1504($fp)
	lw $t0, -1500($fp)
	lw $t1, -1504($fp)
	sub $t0, $t0, $t1
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -1516($fp)
	lw $ra, -4($fp)
	lw $v0, -1516($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 63610
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	sw $t0, -1528($fp)
	li $t0, 62855
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	sw $t0, -1540($fp)
	li $t0, 35017
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	sw $t0, -1552($fp)
	li $t0, 18061
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	sw $t0, -1564($fp)
	li $t0, 0
	sw $t0, -1568($fp)
	addi $t0, $fp, -544
	sw $t0, -1572($fp)
	lw $t0, -1536($fp)
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -1580($fp)
	li $t0, 4
	lw $t1, -1580($fp)
	mul $t0, $t0, $t1
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	lw $t1, -1572($fp)
	add $t0, $t0, $t1
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	lw $t1, 0($t0)
	sw $t1, -1592($fp)
	lw $t0, -1548($fp)
	sw $t0, -1596($fp)
	li $t0, 11529
	sw $t0, -1600($fp)
	lw $t0, -1596($fp)
	lw $t1, -1600($fp)
	add $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, -732($fp)
	sw $t0, -1608($fp)
	lw $t0, -1604($fp)
	lw $t1, -1608($fp)
	add $t0, $t0, $t1
	sw $t0, -1612($fp)
	li $t0, 0
	sw $t0, -1616($fp)
	li $t0, 64842
	sw $t0, -1620($fp)
	lw $t1, -1620($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label292
label292:
	li $t0, 1
	sw $t0, -1616($fp)
label293:
	li $t0, 33078
	sw $t0, -1624($fp)
	li $t0, 10157
	sw $t0, -1628($fp)
	lw $t0, -1624($fp)
	lw $t1, -1628($fp)
	sub $t0, $t0, $t1
	sw $t0, -1632($fp)
	lw $t0, -1548($fp)
	sw $t0, -1636($fp)
	lw $t0, -1632($fp)
	lw $t1, -1636($fp)
	sub $t0, $t0, $t1
	sw $t0, -1640($fp)
	addi $sp, $sp, -4
	lw $t0, -1640($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1644($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -1612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1644($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1648($fp)
	addi $sp, $sp, 16
	li $t0, 45287
	sw $t0, -1652($fp)
	lw $t0, -1648($fp)
	lw $t1, -1652($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1656($fp)
	lw $t0, -1592($fp)
	lw $t1, -1656($fp)
	sub $t0, $t0, $t1
	sw $t0, -1660($fp)
	li $t0, 52407
	sw $t0, -1664($fp)
	li $t0, 52664
	sw $t0, -1668($fp)
	lw $t0, -1664($fp)
	lw $t1, -1668($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1672($fp)
	li $t0, 0
	sw $t0, -1676($fp)
	lw $t0, -212($fp)
	sw $t0, -1680($fp)
	lw $t1, -1680($fp)
	li $t2, 0
	bne $t1, $t2, label295
	j label294
label294:
	li $t0, 1
	sw $t0, -1676($fp)
label295:
	lw $t0, -1672($fp)
	lw $t1, -1676($fp)
	mul $t0, $t0, $t1
	sw $t0, -1684($fp)
	li $t0, 0
	lw $t1, -1684($fp)
	sub $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t1, -1660($fp)
	lw $t2, -1688($fp)
	bge $t1, $t2, label290
	j label291
label290:
	li $t0, 1
	sw $t0, -1568($fp)
label291:
	lw $t0, 8($fp)
	sw $t0, -1692($fp)
	li $t0, 0
	sw $t0, -1696($fp)
	li $t0, 0
	sw $t0, -1700($fp)
	addi $t0, $fp, -36
	sw $t0, -1704($fp)
	li $t0, 0
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
	lw $t1, -1720($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label298
label298:
	li $t0, 1
	sw $t0, -1700($fp)
label299:
	li $t0, 20751
	sw $t0, -1724($fp)
	lw $t0, -1700($fp)
	lw $t1, -1724($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1728($fp)
	li $t0, 63093
	sw $t0, -1732($fp)
	lw $t0, -272($fp)
	sw $t0, -1736($fp)
	lw $t0, -1732($fp)
	lw $t1, -1736($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1740($fp)
	lw $t0, -1560($fp)
	sw $t0, -1744($fp)
	li $t0, 0
	lw $t1, -1744($fp)
	sub $t0, $t0, $t1
	sw $t0, -1748($fp)
	lw $t0, -1740($fp)
	lw $t1, -1748($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1752($fp)
	li $t0, 0
	lw $t1, -1752($fp)
	sub $t0, $t0, $t1
	sw $t0, -1756($fp)
	lw $t1, -1728($fp)
	lw $t2, -1756($fp)
	bgt $t1, $t2, label296
	j label297
label296:
	li $t0, 1
	sw $t0, -1696($fp)
label297:
	li $t0, 0
	sw $t0, -1760($fp)
	li $t0, 0
	sw $t0, -1764($fp)
	lw $t0, 16($fp)
	sw $t0, -1768($fp)
	li $t0, 16117
	sw $t0, -1772($fp)
	lw $t0, -1768($fp)
	lw $t1, -1772($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1776($fp)
	lw $t0, 4($fp)
	sw $t0, -1780($fp)
	lw $t1, -1776($fp)
	lw $t2, -1780($fp)
	blt $t1, $t2, label302
	j label303
label302:
	li $t0, 1
	sw $t0, -1764($fp)
label303:
	addi $sp, $sp, -4
	lw $t0, -1764($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1784($fp)
	addi $sp, $sp, 8
	lw $t1, -1784($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label300
label300:
	li $t0, 1
	sw $t0, -1760($fp)
label301:
	li $t0, 0
	sw $t0, -1788($fp)
	li $t0, 41822
	sw $t0, -1792($fp)
	li $t0, 39424
	sw $t0, -1796($fp)
	lw $t0, -1792($fp)
	lw $t1, -1796($fp)
	sub $t0, $t0, $t1
	sw $t0, -1800($fp)
	lw $t1, -1800($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label305
label306:
	lw $t0, -212($fp)
	sw $t0, -1804($fp)
	lw $t1, -1804($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label305
label304:
	li $t0, 1
	sw $t0, -1788($fp)
label305:
	li $t0, 8735
	sw $t0, -1808($fp)
	li $t0, 0
	sw $t0, -1812($fp)
	li $t0, 5255
	sw $t0, -1816($fp)
	lw $t1, -1816($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label309
label310:
	li $t0, 42023
	sw $t0, -1820($fp)
	lw $t1, -1820($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label309
label309:
	lw $t0, 12($fp)
	sw $t0, -1824($fp)
	lw $t1, -1824($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label308
label307:
	li $t0, 1
	sw $t0, -1812($fp)
label308:
	addi $sp, $sp, -4
	lw $t0, -1788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1812($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1828($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -1832($fp)
	lw $t0, 16($fp)
	sw $t0, -1836($fp)
	lw $t1, -1836($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label311
label311:
	li $t0, 1
	sw $t0, -1832($fp)
label312:
	lw $t0, -1828($fp)
	lw $t1, -1832($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1840($fp)
	li $t0, 0
	lw $t1, -1840($fp)
	sub $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $t0, -1760($fp)
	lw $t1, -1844($fp)
	mul $t0, $t0, $t1
	sw $t0, -1848($fp)
	lw $t0, -1524($fp)
	sw $t0, -1852($fp)
	li $t0, 0
	sw $t0, -1856($fp)
	li $t0, 63540
	sw $t0, -1860($fp)
	li $t0, 17722
	sw $t0, -1864($fp)
	lw $t0, -1860($fp)
	lw $t1, -1864($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1868($fp)
	li $t0, 0
	sw $t0, -1872($fp)
	lw $t0, 8($fp)
	sw $t0, -1876($fp)
	lw $t1, -1876($fp)
	li $t2, 0
	bne $t1, $t2, label316
	j label315
label315:
	li $t0, 1
	sw $t0, -1872($fp)
label316:
	li $t0, 0
	lw $t1, -1872($fp)
	sub $t0, $t0, $t1
	sw $t0, -1880($fp)
	li $t0, 15701
	sw $t0, -1884($fp)
	lw $t0, 20($fp)
	sw $t0, -1888($fp)
	lw $t0, -1884($fp)
	lw $t1, -1888($fp)
	mul $t0, $t0, $t1
	sw $t0, -1892($fp)
	li $t0, 0
	sw $t0, -1896($fp)
	lw $t0, -1560($fp)
	sw $t0, -1900($fp)
	li $t0, 2682
	sw $t0, -1904($fp)
	lw $t0, -1900($fp)
	lw $t1, -1904($fp)
	sub $t0, $t0, $t1
	sw $t0, -1908($fp)
	li $t0, 9955
	sw $t0, -1912($fp)
	lw $t1, -1908($fp)
	lw $t2, -1912($fp)
	beq $t1, $t2, label317
	j label318
label317:
	li $t0, 1
	sw $t0, -1896($fp)
label318:
	li $t0, 0
	sw $t0, -1916($fp)
	lw $t0, 16($fp)
	sw $t0, -1920($fp)
	lw $t0, -1548($fp)
	sw $t0, -1924($fp)
	lw $t0, -1920($fp)
	lw $t1, -1924($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1928($fp)
	lw $t1, -1928($fp)
	li $t2, 0
	bne $t1, $t2, label321
	j label320
label321:
	lw $t0, -200($fp)
	sw $t0, -1932($fp)
	lw $t1, -1932($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label320
label319:
	li $t0, 1
	sw $t0, -1916($fp)
label320:
	addi $sp, $sp, -4
	lw $t0, -1868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1916($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1936($fp)
	addi $sp, $sp, 24
	lw $t1, -1936($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label313
label313:
	li $t0, 1
	sw $t0, -1856($fp)
label314:
	lw $t0, -1852($fp)
	lw $t1, -1856($fp)
	add $t0, $t0, $t1
	sw $t0, -1940($fp)
	j label239
label241:
	addi $t0, $fp, -28
	sw $t0, -1944($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -1964($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -1984($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -2004($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -2024($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -2044($fp)
	li $t0, 5
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
	lw $t0, -188($fp)
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -212($fp)
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2076($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -2096($fp)
	li $t0, 1
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
	lw $t0, -272($fp)
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2120($fp)
	lw $t0, -200($fp)
	sw $t0, -2124($fp)
	lw $t0, -188($fp)
	sw $t0, -2128($fp)
	lw $t1, -2124($fp)
	lw $t2, -2128($fp)
	blt $t1, $t2, label322
	j label325
label325:
	li $t0, 34058
	sw $t0, -2132($fp)
	lw $t0, -212($fp)
	sw $t0, -2136($fp)
	lw $t0, -2132($fp)
	lw $t1, -2136($fp)
	sub $t0, $t0, $t1
	sw $t0, -2140($fp)
	lw $t0, -272($fp)
	sw $t0, -2144($fp)
	lw $t1, -2140($fp)
	lw $t2, -2144($fp)
	bge $t1, $t2, label322
	j label324
label324:
	addi $t0, $fp, -36
	sw $t0, -2148($fp)
	lw $t0, -200($fp)
	sw $t0, -2152($fp)
	li $t0, 13737
	sw $t0, -2156($fp)
	lw $t0, -2152($fp)
	lw $t1, -2156($fp)
	add $t0, $t0, $t1
	sw $t0, -2160($fp)
	li $t0, 4
	lw $t1, -2160($fp)
	mul $t0, $t0, $t1
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	lw $t1, -2148($fp)
	add $t0, $t0, $t1
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	lw $t1, 0($t0)
	sw $t1, -2172($fp)
	lw $t1, -2172($fp)
	li $t2, 0
	bne $t1, $t2, label322
	j label323
label322:
	li $t0, 1
	sw $t0, -2120($fp)
label323:
	lw $ra, -4($fp)
	lw $v0, -2120($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -684
	li $t0, 12712
	sw $t0, -48($fp)
	addi $t0, $fp, -44
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
	li $t0, 10138
	sw $t0, -72($fp)
	addi $t0, $fp, -44
	sw $t0, -76($fp)
	li $t0, 1
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
	li $t0, 50810
	sw $t0, -96($fp)
	addi $t0, $fp, -44
	sw $t0, -100($fp)
	li $t0, 2
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
	li $t0, 10786
	sw $t0, -120($fp)
	addi $t0, $fp, -44
	sw $t0, -124($fp)
	li $t0, 3
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
	li $t0, 7457
	sw $t0, -144($fp)
	addi $t0, $fp, -44
	sw $t0, -148($fp)
	li $t0, 4
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
	li $t0, 20291
	sw $t0, -168($fp)
	addi $t0, $fp, -44
	sw $t0, -172($fp)
	li $t0, 5
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
	li $t0, 28848
	sw $t0, -192($fp)
	addi $t0, $fp, -44
	sw $t0, -196($fp)
	li $t0, 6
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
	li $t0, 40535
	sw $t0, -216($fp)
	addi $t0, $fp, -44
	sw $t0, -220($fp)
	li $t0, 7
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
	li $t0, 30449
	sw $t0, -240($fp)
	addi $t0, $fp, -44
	sw $t0, -244($fp)
	li $t0, 8
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
	li $t0, 28154
	sw $t0, -264($fp)
	addi $t0, $fp, -44
	sw $t0, -268($fp)
	li $t0, 9
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
	li $t0, 52064
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	li $t0, 10200
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	li $t0, 15025
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	li $t0, 0
	sw $t0, -324($fp)
	addi $t0, $fp, -44
	sw $t0, -328($fp)
	lw $t0, 4($fp)
	sw $t0, -332($fp)
	lw $t0, 4($fp)
	sw $t0, -336($fp)
	lw $t0, -332($fp)
	lw $t1, -336($fp)
	add $t0, $t0, $t1
	sw $t0, -340($fp)
	li $t0, 4
	lw $t1, -340($fp)
	mul $t0, $t0, $t1
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	lw $t1, -328($fp)
	add $t0, $t0, $t1
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	lw $t1, 0($t0)
	sw $t1, -352($fp)
	lw $t0, 4($fp)
	sw $t0, -356($fp)
	lw $t1, -352($fp)
	lw $t2, -356($fp)
	bgt $t1, $t2, label329
	j label330
label329:
	li $t0, 1
	sw $t0, -324($fp)
label330:
	lw $t0, 4($fp)
	sw $t0, -360($fp)
	lw $t1, -324($fp)
	lw $t2, -360($fp)
	blt $t1, $t2, label326
	j label327
label326:
	li $t0, 0
	sw $t0, -364($fp)
	lw $t0, -316($fp)
	sw $t0, -368($fp)
	li $t0, 0
	lw $t1, -368($fp)
	sub $t0, $t0, $t1
	sw $t0, -372($fp)
	li $t0, 39193
	sw $t0, -376($fp)
	lw $t1, -372($fp)
	lw $t2, -376($fp)
	bge $t1, $t2, label331
	j label332
label331:
	li $t0, 1
	sw $t0, -364($fp)
label332:
	j label328
label327:
	li $t0, 0
	sw $t0, -380($fp)
	li $t0, 0
	sw $t0, -384($fp)
	li $t0, 11647
	sw $t0, -388($fp)
	lw $t1, -388($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label336
label336:
	li $t0, 1
	sw $t0, -384($fp)
label337:
	lw $t0, -292($fp)
	sw $t0, -392($fp)
	lw $t0, -384($fp)
	lw $t1, -392($fp)
	add $t0, $t0, $t1
	sw $t0, -396($fp)
	lw $t1, -396($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label335
label335:
	li $t0, 33639
	sw $t0, -400($fp)
	lw $t0, 4($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -408($fp)
	li $t0, 59944
	sw $t0, -412($fp)
	lw $t0, 4($fp)
	sw $t0, -416($fp)
	lw $t0, -412($fp)
	lw $t1, -416($fp)
	mul $t0, $t0, $t1
	sw $t0, -420($fp)
	li $t0, 9204
	sw $t0, -424($fp)
	lw $t0, -420($fp)
	lw $t1, -424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -428($fp)
	lw $t0, 4($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -436($fp)
	addi $sp, $sp, -4
	lw $t0, -408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -436($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -440($fp)
	addi $sp, $sp, 16
	lw $t1, -400($fp)
	lw $t2, -440($fp)
	bne $t1, $t2, label333
	j label334
label333:
	li $t0, 1
	sw $t0, -380($fp)
label334:
label328:
	addi $t0, $fp, -44
	sw $t0, -444($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -464($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -484($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -504($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -524($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -544($fp)
	li $t0, 5
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
	addi $t0, $fp, -44
	sw $t0, -564($fp)
	li $t0, 6
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
	addi $t0, $fp, -44
	sw $t0, -584($fp)
	li $t0, 7
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
	addi $t0, $fp, -44
	sw $t0, -604($fp)
	li $t0, 8
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
	addi $t0, $fp, -44
	sw $t0, -624($fp)
	li $t0, 9
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
	lw $t0, -292($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -656($fp)
	lw $t0, -292($fp)
	sw $t0, -660($fp)
	li $t0, 49757
	sw $t0, -664($fp)
	lw $t0, -660($fp)
	lw $t1, -664($fp)
	sub $t0, $t0, $t1
	sw $t0, -668($fp)
	lw $t0, 4($fp)
	sw $t0, -672($fp)
	lw $t0, -668($fp)
	lw $t1, -672($fp)
	add $t0, $t0, $t1
	sw $t0, -676($fp)
	li $t0, 0
	sw $t0, -680($fp)
	lw $t0, -316($fp)
	sw $t0, -684($fp)
	lw $t1, -684($fp)
	li $t2, 0
	bne $t1, $t2, label341
	j label340
label340:
	li $t0, 1
	sw $t0, -680($fp)
label341:
	lw $t1, -676($fp)
	lw $t2, -680($fp)
	bgt $t1, $t2, label338
	j label339
label338:
	li $t0, 1
	sw $t0, -656($fp)
label339:
	lw $t0, -656($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -688($fp)
	lw $ra, -4($fp)
	lw $v0, -688($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -5928
	li $t0, 65199
	sw $t0, -140($fp)
	addi $t0, $fp, -28
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
	li $t0, 51228
	sw $t0, -164($fp)
	addi $t0, $fp, -28
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
	li $t0, 58492
	sw $t0, -188($fp)
	addi $t0, $fp, -28
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
	li $t0, 41486
	sw $t0, -212($fp)
	addi $t0, $fp, -28
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
	li $t0, 25116
	sw $t0, -236($fp)
	addi $t0, $fp, -28
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
	li $t0, 61175
	sw $t0, -260($fp)
	addi $t0, $fp, -28
	sw $t0, -264($fp)
	li $t0, 5
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
	li $t0, 51441
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	li $t0, 40817
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	li $t0, 59179
	sw $t0, -308($fp)
	addi $t0, $fp, -60
	sw $t0, -312($fp)
	li $t0, 0
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
	li $t0, 3628
	sw $t0, -332($fp)
	addi $t0, $fp, -60
	sw $t0, -336($fp)
	li $t0, 1
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
	li $t0, 9340
	sw $t0, -356($fp)
	addi $t0, $fp, -60
	sw $t0, -360($fp)
	li $t0, 2
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
	li $t0, 7381
	sw $t0, -380($fp)
	addi $t0, $fp, -60
	sw $t0, -384($fp)
	li $t0, 3
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
	li $t0, 16340
	sw $t0, -404($fp)
	addi $t0, $fp, -60
	sw $t0, -408($fp)
	li $t0, 4
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
	li $t0, 19478
	sw $t0, -428($fp)
	addi $t0, $fp, -60
	sw $t0, -432($fp)
	li $t0, 5
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
	li $t0, 58191
	sw $t0, -452($fp)
	addi $t0, $fp, -60
	sw $t0, -456($fp)
	li $t0, 6
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
	li $t0, 27127
	sw $t0, -476($fp)
	addi $t0, $fp, -60
	sw $t0, -480($fp)
	li $t0, 7
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
	li $t0, 26935
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	li $t0, 12946
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	li $t0, 55975
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	li $t0, 1934
	sw $t0, -536($fp)
	addi $t0, $fp, -96
	sw $t0, -540($fp)
	li $t0, 0
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
	li $t0, 43395
	sw $t0, -560($fp)
	addi $t0, $fp, -96
	sw $t0, -564($fp)
	li $t0, 1
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
	li $t0, 18593
	sw $t0, -584($fp)
	addi $t0, $fp, -96
	sw $t0, -588($fp)
	li $t0, 2
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
	li $t0, 53998
	sw $t0, -608($fp)
	addi $t0, $fp, -96
	sw $t0, -612($fp)
	li $t0, 3
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
	li $t0, 53595
	sw $t0, -632($fp)
	addi $t0, $fp, -96
	sw $t0, -636($fp)
	li $t0, 4
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
	li $t0, 33618
	sw $t0, -656($fp)
	addi $t0, $fp, -96
	sw $t0, -660($fp)
	li $t0, 5
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
	li $t0, 27655
	sw $t0, -680($fp)
	addi $t0, $fp, -96
	sw $t0, -684($fp)
	li $t0, 6
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
	li $t0, 65242
	sw $t0, -704($fp)
	addi $t0, $fp, -96
	sw $t0, -708($fp)
	li $t0, 7
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
	li $t0, 1722
	sw $t0, -728($fp)
	addi $t0, $fp, -96
	sw $t0, -732($fp)
	li $t0, 8
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
	li $t0, 22063
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -760($fp)
	li $t0, 8911
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -772($fp)
	li $t0, 51479
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	li $t0, 21727
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	li $t0, 60139
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
	li $t0, 44435
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	li $t0, 63213
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	li $t0, 19719
	sw $t0, -836($fp)
	addi $t0, $fp, -104
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
	li $t0, 40074
	sw $t0, -860($fp)
	addi $t0, $fp, -104
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
	li $t0, 49118
	sw $t0, -884($fp)
	addi $t0, $fp, -136
	sw $t0, -888($fp)
	li $t0, 0
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
	li $t0, 60537
	sw $t0, -908($fp)
	addi $t0, $fp, -136
	sw $t0, -912($fp)
	li $t0, 1
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
	li $t0, 33718
	sw $t0, -932($fp)
	addi $t0, $fp, -136
	sw $t0, -936($fp)
	li $t0, 2
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
	li $t0, 52746
	sw $t0, -956($fp)
	addi $t0, $fp, -136
	sw $t0, -960($fp)
	li $t0, 3
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
	li $t0, 4341
	sw $t0, -980($fp)
	addi $t0, $fp, -136
	sw $t0, -984($fp)
	li $t0, 4
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
	li $t0, 41099
	sw $t0, -1004($fp)
	addi $t0, $fp, -136
	sw $t0, -1008($fp)
	li $t0, 5
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
	li $t0, 3551
	sw $t0, -1028($fp)
	addi $t0, $fp, -136
	sw $t0, -1032($fp)
	li $t0, 6
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
	li $t0, 23819
	sw $t0, -1052($fp)
	addi $t0, $fp, -136
	sw $t0, -1056($fp)
	li $t0, 7
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
	li $t0, 33754
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
label342:
	addi $t0, $fp, -96
	sw $t0, -1088($fp)
	lw $t0, -756($fp)
	sw $t0, -1092($fp)
	li $t0, 0
	lw $t1, -1092($fp)
	sub $t0, $t0, $t1
	sw $t0, -1096($fp)
	li $t0, 4
	lw $t1, -1096($fp)
	mul $t0, $t0, $t1
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	lw $t1, -1088($fp)
	add $t0, $t0, $t1
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	lw $t1, 0($t0)
	sw $t1, -1108($fp)
	lw $t1, -1108($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label344
label343:
	li $t0, 30678
	sw $t0, -1208($fp)
	addi $t0, $fp, -1144
	sw $t0, -1212($fp)
	li $t0, 0
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
	li $t0, 50754
	sw $t0, -1232($fp)
	addi $t0, $fp, -1144
	sw $t0, -1236($fp)
	li $t0, 1
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
	li $t0, 46700
	sw $t0, -1256($fp)
	addi $t0, $fp, -1144
	sw $t0, -1260($fp)
	li $t0, 2
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
	li $t0, 21117
	sw $t0, -1280($fp)
	addi $t0, $fp, -1144
	sw $t0, -1284($fp)
	li $t0, 3
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
	li $t0, 52688
	sw $t0, -1304($fp)
	addi $t0, $fp, -1144
	sw $t0, -1308($fp)
	li $t0, 4
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
	li $t0, 24560
	sw $t0, -1328($fp)
	addi $t0, $fp, -1144
	sw $t0, -1332($fp)
	li $t0, 5
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
	li $t0, 39710
	sw $t0, -1352($fp)
	addi $t0, $fp, -1144
	sw $t0, -1356($fp)
	li $t0, 6
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
	li $t0, 41150
	sw $t0, -1376($fp)
	addi $t0, $fp, -1144
	sw $t0, -1380($fp)
	li $t0, 7
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
	li $t0, 12619
	sw $t0, -1400($fp)
	addi $t0, $fp, -1144
	sw $t0, -1404($fp)
	li $t0, 8
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
	li $t0, 7792
	sw $t0, -1424($fp)
	addi $t0, $fp, -1184
	sw $t0, -1428($fp)
	li $t0, 0
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t0, -1428($fp)
	lw $t1, -1436($fp)
	add $t0, $t0, $t1
	sw $t0, -1440($fp)
	lw $t0, -1424($fp)
	lw $t1, -1440($fp)
	sw $t0, 0($t1)
	lw $t0, -1440($fp)
	lw $t1, 0($t0)
	sw $t1, -1444($fp)
	li $t0, 3270
	sw $t0, -1448($fp)
	addi $t0, $fp, -1184
	sw $t0, -1452($fp)
	li $t0, 1
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t0, -1452($fp)
	lw $t1, -1460($fp)
	add $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t0, -1448($fp)
	lw $t1, -1464($fp)
	sw $t0, 0($t1)
	lw $t0, -1464($fp)
	lw $t1, 0($t0)
	sw $t1, -1468($fp)
	li $t0, 12326
	sw $t0, -1472($fp)
	addi $t0, $fp, -1184
	sw $t0, -1476($fp)
	li $t0, 2
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1484($fp)
	lw $t0, -1476($fp)
	lw $t1, -1484($fp)
	add $t0, $t0, $t1
	sw $t0, -1488($fp)
	lw $t0, -1472($fp)
	lw $t1, -1488($fp)
	sw $t0, 0($t1)
	lw $t0, -1488($fp)
	lw $t1, 0($t0)
	sw $t1, -1492($fp)
	li $t0, 9514
	sw $t0, -1496($fp)
	addi $t0, $fp, -1184
	sw $t0, -1500($fp)
	li $t0, 3
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1508($fp)
	lw $t0, -1500($fp)
	lw $t1, -1508($fp)
	add $t0, $t0, $t1
	sw $t0, -1512($fp)
	lw $t0, -1496($fp)
	lw $t1, -1512($fp)
	sw $t0, 0($t1)
	lw $t0, -1512($fp)
	lw $t1, 0($t0)
	sw $t1, -1516($fp)
	li $t0, 25333
	sw $t0, -1520($fp)
	addi $t0, $fp, -1184
	sw $t0, -1524($fp)
	li $t0, 4
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1532($fp)
	lw $t0, -1524($fp)
	lw $t1, -1532($fp)
	add $t0, $t0, $t1
	sw $t0, -1536($fp)
	lw $t0, -1520($fp)
	lw $t1, -1536($fp)
	sw $t0, 0($t1)
	lw $t0, -1536($fp)
	lw $t1, 0($t0)
	sw $t1, -1540($fp)
	li $t0, 21237
	sw $t0, -1544($fp)
	addi $t0, $fp, -1184
	sw $t0, -1548($fp)
	li $t0, 5
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $t0, -1548($fp)
	lw $t1, -1556($fp)
	add $t0, $t0, $t1
	sw $t0, -1560($fp)
	lw $t0, -1544($fp)
	lw $t1, -1560($fp)
	sw $t0, 0($t1)
	lw $t0, -1560($fp)
	lw $t1, 0($t0)
	sw $t1, -1564($fp)
	li $t0, 60993
	sw $t0, -1568($fp)
	addi $t0, $fp, -1184
	sw $t0, -1572($fp)
	li $t0, 6
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $t0, -1572($fp)
	lw $t1, -1580($fp)
	add $t0, $t0, $t1
	sw $t0, -1584($fp)
	lw $t0, -1568($fp)
	lw $t1, -1584($fp)
	sw $t0, 0($t1)
	lw $t0, -1584($fp)
	lw $t1, 0($t0)
	sw $t1, -1588($fp)
	li $t0, 47060
	sw $t0, -1592($fp)
	addi $t0, $fp, -1184
	sw $t0, -1596($fp)
	li $t0, 7
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, -1596($fp)
	lw $t1, -1604($fp)
	add $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t0, -1592($fp)
	lw $t1, -1608($fp)
	sw $t0, 0($t1)
	lw $t0, -1608($fp)
	lw $t1, 0($t0)
	sw $t1, -1612($fp)
	li $t0, 15840
	sw $t0, -1616($fp)
	addi $t0, $fp, -1184
	sw $t0, -1620($fp)
	li $t0, 8
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1628($fp)
	lw $t0, -1620($fp)
	lw $t1, -1628($fp)
	add $t0, $t0, $t1
	sw $t0, -1632($fp)
	lw $t0, -1616($fp)
	lw $t1, -1632($fp)
	sw $t0, 0($t1)
	lw $t0, -1632($fp)
	lw $t1, 0($t0)
	sw $t1, -1636($fp)
	li $t0, 39893
	sw $t0, -1640($fp)
	addi $t0, $fp, -1184
	sw $t0, -1644($fp)
	li $t0, 9
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $t0, -1644($fp)
	lw $t1, -1652($fp)
	add $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $t0, -1640($fp)
	lw $t1, -1656($fp)
	sw $t0, 0($t1)
	lw $t0, -1656($fp)
	lw $t1, 0($t0)
	sw $t1, -1660($fp)
	li $t0, 44737
	sw $t0, -1664($fp)
	addi $t0, $fp, -1204
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
	li $t0, 35559
	sw $t0, -1688($fp)
	addi $t0, $fp, -1204
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
	li $t0, 14431
	sw $t0, -1712($fp)
	addi $t0, $fp, -1204
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
	li $t0, 28320
	sw $t0, -1736($fp)
	addi $t0, $fp, -1204
	sw $t0, -1740($fp)
	li $t0, 3
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1748($fp)
	lw $t0, -1740($fp)
	lw $t1, -1748($fp)
	add $t0, $t0, $t1
	sw $t0, -1752($fp)
	lw $t0, -1736($fp)
	lw $t1, -1752($fp)
	sw $t0, 0($t1)
	lw $t0, -1752($fp)
	lw $t1, 0($t0)
	sw $t1, -1756($fp)
	li $t0, 30560
	sw $t0, -1760($fp)
	addi $t0, $fp, -1204
	sw $t0, -1764($fp)
	li $t0, 4
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
	li $t0, 48149
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	sw $t0, -1792($fp)
	li $t0, 15530
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	sw $t0, -1800($fp)
	lw $t0, -1800($fp)
	sw $t0, -1804($fp)
	addi $t0, $fp, -1144
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
	li $t0, 0
	lw $t1, -1824($fp)
	sub $t0, $t0, $t1
	sw $t0, -1828($fp)
	li $t0, 0
	sw $t0, -1832($fp)
	li $t0, 58720
	sw $t0, -1836($fp)
	lw $t1, -1836($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label349
label348:
	li $t0, 1
	sw $t0, -1832($fp)
label349:
	lw $t0, -1828($fp)
	lw $t1, -1832($fp)
	sub $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t1, -1840($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label346
label345:
	li $t0, 0
	sw $t0, -1844($fp)
	li $t0, 38631
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -1852($fp)
	li $t0, 43938
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -1860($fp)
	addi $t0, $fp, -1184
	sw $t0, -1864($fp)
	li $t0, 1
	sw $t0, -1868($fp)
	li $t0, 4
	lw $t1, -1868($fp)
	mul $t0, $t0, $t1
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	lw $t1, -1864($fp)
	add $t0, $t0, $t1
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	lw $t1, 0($t0)
	sw $t1, -1880($fp)
	lw $t0, 4($fp)
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	sw $t0, -1888($fp)
	li $t0, 0
	sw $t0, -1892($fp)
	lw $t0, -288($fp)
	sw $t0, -1896($fp)
	lw $t0, -528($fp)
	sw $t0, -1900($fp)
	lw $t1, -1896($fp)
	lw $t2, -1900($fp)
	bge $t1, $t2, label353
	j label354
label353:
	li $t0, 1
	sw $t0, -1892($fp)
label354:
	addi $sp, $sp, -4
	lw $t0, -1852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1892($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1904($fp)
	addi $sp, $sp, 24
	lw $t1, -1904($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label352
label352:
	li $t0, 5340
	sw $t0, -1908($fp)
	lw $t1, -1908($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label351
label350:
	li $t0, 1
	sw $t0, -1844($fp)
label351:
	lw $ra, -4($fp)
	lw $v0, -1844($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label347
label346:
label355:
	addi $t0, $fp, -60
	sw $t0, -1912($fp)
	li $t0, 0
	sw $t0, -1916($fp)
	li $t0, 31090
	sw $t0, -1920($fp)
	li $t0, 63191
	sw $t0, -1924($fp)
	lw $t0, -1920($fp)
	lw $t1, -1924($fp)
	sub $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t0, -1788($fp)
	sw $t0, -1932($fp)
	lw $t1, -1928($fp)
	lw $t2, -1932($fp)
	ble $t1, $t2, label358
	j label360
label360:
	li $t0, 45050
	sw $t0, -1936($fp)
	li $t0, 6705
	sw $t0, -1940($fp)
	lw $t0, -1936($fp)
	lw $t1, -1940($fp)
	add $t0, $t0, $t1
	sw $t0, -1944($fp)
	lw $t1, -1944($fp)
	li $t2, 0
	bne $t1, $t2, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -1916($fp)
label359:
	li $t0, 4
	lw $t1, -1916($fp)
	mul $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	lw $t1, -1912($fp)
	add $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	lw $t1, 0($t0)
	sw $t1, -1956($fp)
	lw $t1, -1956($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label357
label356:
	li $t0, 0
	sw $t0, -1960($fp)
	li $t0, 9975
	sw $t0, -1964($fp)
	lw $t0, -756($fp)
	sw $t0, -1968($fp)
	lw $t0, -1964($fp)
	lw $t1, -1968($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1972($fp)
	lw $t0, -780($fp)
	sw $t0, -1976($fp)
	lw $t0, -1972($fp)
	lw $t1, -1976($fp)
	sub $t0, $t0, $t1
	sw $t0, -1980($fp)
	li $t0, 0
	sw $t0, -1984($fp)
	li $t0, 52843
	sw $t0, -1988($fp)
	lw $t1, -1988($fp)
	li $t2, 0
	bne $t1, $t2, label366
	j label368
label368:
	lw $t0, 8($fp)
	sw $t0, -1992($fp)
	lw $t1, -1992($fp)
	li $t2, 0
	bne $t1, $t2, label366
	j label367
label366:
	li $t0, 1
	sw $t0, -1984($fp)
label367:
	lw $t0, -756($fp)
	sw $t0, -1996($fp)
	lw $t0, -288($fp)
	sw $t0, -2000($fp)
	lw $t0, -1996($fp)
	lw $t1, -2000($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2004($fp)
	lw $t0, -1800($fp)
	sw $t0, -2008($fp)
	lw $t0, -2004($fp)
	lw $t1, -2008($fp)
	sub $t0, $t0, $t1
	sw $t0, -2012($fp)
	addi $sp, $sp, -4
	lw $t0, -1984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2012($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2016($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2016($fp)
	sub $t0, $t0, $t1
	sw $t0, -2020($fp)
	li $t0, 10274
	sw $t0, -2024($fp)
	addi $sp, $sp, -4
	lw $t0, -2020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2024($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2028($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -1980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2028($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2032($fp)
	addi $sp, $sp, 12
	lw $t0, -528($fp)
	sw $t0, -2036($fp)
	lw $t0, -2032($fp)
	lw $t1, -2036($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2040($fp)
	li $t0, 22600
	sw $t0, -2044($fp)
	li $t0, 0
	lw $t1, -2044($fp)
	sub $t0, $t0, $t1
	sw $t0, -2048($fp)
	lw $t0, -2040($fp)
	lw $t1, -2048($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2052($fp)
	li $t0, 62357
	sw $t0, -2056($fp)
	lw $t1, -2052($fp)
	lw $t2, -2056($fp)
	blt $t1, $t2, label364
	j label365
label364:
	li $t0, 1
	sw $t0, -1960($fp)
label365:
	li $t0, 0
	sw $t0, -2060($fp)
	lw $t0, -1800($fp)
	sw $t0, -2064($fp)
	li $t0, 16833
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -2072($fp)
	addi $t0, $fp, -1184
	sw $t0, -2076($fp)
	li $t0, 9
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
	lw $t0, -516($fp)
	sw $t0, -2096($fp)
	lw $t0, -2092($fp)
	lw $t1, -2096($fp)
	mul $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $t0, 8($fp)
	sw $t0, -2104($fp)
	lw $t0, -780($fp)
	sw $t0, -2108($fp)
	lw $t0, -2104($fp)
	lw $t1, -2108($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2112($fp)
	li $t0, 35308
	sw $t0, -2116($fp)
	lw $t0, -2112($fp)
	lw $t1, -2116($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2120($fp)
	li $t0, 0
	sw $t0, -2124($fp)
	lw $t0, -828($fp)
	sw $t0, -2128($fp)
	lw $t1, -2128($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label372
label373:
	lw $t0, 8($fp)
	sw $t0, -2132($fp)
	lw $t1, -2132($fp)
	li $t2, 0
	bne $t1, $t2, label371
	j label372
label371:
	li $t0, 1
	sw $t0, -2124($fp)
label372:
	addi $sp, $sp, -4
	lw $t0, -2064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2124($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2136($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -1204
	sw $t0, -2140($fp)
	lw $t0, -768($fp)
	sw $t0, -2144($fp)
	li $t0, 4
	lw $t1, -2144($fp)
	mul $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t0, -2148($fp)
	lw $t1, -2140($fp)
	add $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	lw $t1, 0($t0)
	sw $t1, -2156($fp)
	lw $t1, -2136($fp)
	lw $t2, -2156($fp)
	blt $t1, $t2, label369
	j label370
label369:
	li $t0, 1
	sw $t0, -2060($fp)
label370:
	lw $t1, -1960($fp)
	lw $t2, -2060($fp)
	bne $t1, $t2, label361
	j label362
label361:
	li $t0, 0
	sw $t0, -2160($fp)
	lw $t0, -756($fp)
	sw $t0, -2164($fp)
	li $t0, 0
	lw $t1, -2164($fp)
	sub $t0, $t0, $t1
	sw $t0, -2168($fp)
	li $t0, 0
	lw $t1, -2168($fp)
	sub $t0, $t0, $t1
	sw $t0, -2172($fp)
	li $t0, 0
	lw $t1, -2172($fp)
	sub $t0, $t0, $t1
	sw $t0, -2176($fp)
	li $t0, 0
	lw $t1, -2176($fp)
	sub $t0, $t0, $t1
	sw $t0, -2180($fp)
	li $t0, 0
	sw $t0, -2184($fp)
	li $t0, 59677
	sw $t0, -2188($fp)
	lw $t1, -2188($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label376
label376:
	li $t0, 1
	sw $t0, -2184($fp)
label377:
	lw $t0, -756($fp)
	sw $t0, -2192($fp)
	lw $t0, -2184($fp)
	lw $t1, -2192($fp)
	mul $t0, $t0, $t1
	sw $t0, -2196($fp)
	li $t0, 0
	sw $t0, -2200($fp)
	li $t0, 32172
	sw $t0, -2204($fp)
	lw $t1, -2204($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label378
label378:
	li $t0, 1
	sw $t0, -2200($fp)
label379:
	lw $t0, -2196($fp)
	lw $t1, -2200($fp)
	add $t0, $t0, $t1
	sw $t0, -2208($fp)
	lw $t1, -2180($fp)
	lw $t2, -2208($fp)
	blt $t1, $t2, label374
	j label375
label374:
	li $t0, 1
	sw $t0, -2160($fp)
label375:
	j label363
label362:
	li $t0, 0
	sw $t0, -2212($fp)
	lw $t0, 4($fp)
	sw $t0, -2216($fp)
	lw $t1, -2216($fp)
	li $t2, 0
	bne $t1, $t2, label381
	j label380
label380:
	li $t0, 1
	sw $t0, -2212($fp)
label381:
label363:
	j label355
label357:
label347:
	li $t0, 61570
	sw $t0, -2256($fp)
	addi $t0, $fp, -2252
	sw $t0, -2260($fp)
	li $t0, 0
	sw $t0, -2264($fp)
	lw $t0, -2264($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2268($fp)
	lw $t0, -2260($fp)
	lw $t1, -2268($fp)
	add $t0, $t0, $t1
	sw $t0, -2272($fp)
	lw $t0, -2256($fp)
	lw $t1, -2272($fp)
	sw $t0, 0($t1)
	lw $t0, -2272($fp)
	lw $t1, 0($t0)
	sw $t1, -2276($fp)
	li $t0, 29701
	sw $t0, -2280($fp)
	addi $t0, $fp, -2252
	sw $t0, -2284($fp)
	li $t0, 1
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t0, -2284($fp)
	lw $t1, -2292($fp)
	add $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -2280($fp)
	lw $t1, -2296($fp)
	sw $t0, 0($t1)
	lw $t0, -2296($fp)
	lw $t1, 0($t0)
	sw $t1, -2300($fp)
	li $t0, 46603
	sw $t0, -2304($fp)
	addi $t0, $fp, -2252
	sw $t0, -2308($fp)
	li $t0, 2
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2316($fp)
	lw $t0, -2308($fp)
	lw $t1, -2316($fp)
	add $t0, $t0, $t1
	sw $t0, -2320($fp)
	lw $t0, -2304($fp)
	lw $t1, -2320($fp)
	sw $t0, 0($t1)
	lw $t0, -2320($fp)
	lw $t1, 0($t0)
	sw $t1, -2324($fp)
	li $t0, 24354
	sw $t0, -2328($fp)
	addi $t0, $fp, -2252
	sw $t0, -2332($fp)
	li $t0, 3
	sw $t0, -2336($fp)
	lw $t0, -2336($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2340($fp)
	lw $t0, -2332($fp)
	lw $t1, -2340($fp)
	add $t0, $t0, $t1
	sw $t0, -2344($fp)
	lw $t0, -2328($fp)
	lw $t1, -2344($fp)
	sw $t0, 0($t1)
	lw $t0, -2344($fp)
	lw $t1, 0($t0)
	sw $t1, -2348($fp)
	li $t0, 60261
	sw $t0, -2352($fp)
	addi $t0, $fp, -2252
	sw $t0, -2356($fp)
	li $t0, 4
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2364($fp)
	lw $t0, -2356($fp)
	lw $t1, -2364($fp)
	add $t0, $t0, $t1
	sw $t0, -2368($fp)
	lw $t0, -2352($fp)
	lw $t1, -2368($fp)
	sw $t0, 0($t1)
	lw $t0, -2368($fp)
	lw $t1, 0($t0)
	sw $t1, -2372($fp)
	li $t0, 29217
	sw $t0, -2376($fp)
	addi $t0, $fp, -2252
	sw $t0, -2380($fp)
	li $t0, 5
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
	li $t0, 39885
	sw $t0, -2400($fp)
	addi $t0, $fp, -2252
	sw $t0, -2404($fp)
	li $t0, 6
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2412($fp)
	lw $t0, -2404($fp)
	lw $t1, -2412($fp)
	add $t0, $t0, $t1
	sw $t0, -2416($fp)
	lw $t0, -2400($fp)
	lw $t1, -2416($fp)
	sw $t0, 0($t1)
	lw $t0, -2416($fp)
	lw $t1, 0($t0)
	sw $t1, -2420($fp)
	li $t0, 29627
	sw $t0, -2424($fp)
	addi $t0, $fp, -2252
	sw $t0, -2428($fp)
	li $t0, 7
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2436($fp)
	lw $t0, -2428($fp)
	lw $t1, -2436($fp)
	add $t0, $t0, $t1
	sw $t0, -2440($fp)
	lw $t0, -2424($fp)
	lw $t1, -2440($fp)
	sw $t0, 0($t1)
	lw $t0, -2440($fp)
	lw $t1, 0($t0)
	sw $t1, -2444($fp)
	li $t0, 52929
	sw $t0, -2448($fp)
	addi $t0, $fp, -2252
	sw $t0, -2452($fp)
	li $t0, 8
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2460($fp)
	lw $t0, -2452($fp)
	lw $t1, -2460($fp)
	add $t0, $t0, $t1
	sw $t0, -2464($fp)
	lw $t0, -2448($fp)
	lw $t1, -2464($fp)
	sw $t0, 0($t1)
	lw $t0, -2464($fp)
	lw $t1, 0($t0)
	sw $t1, -2468($fp)
	li $t0, 58966
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	sw $t0, -2480($fp)
	li $t0, 22811
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	sw $t0, -2492($fp)
	li $t0, 44860
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	sw $t0, -2504($fp)
	li $t0, 43190
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	sw $t0, -2516($fp)
	li $t0, 1214
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	sw $t0, -2528($fp)
	addi $t0, $fp, -2252
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
	addi $t0, $fp, -2252
	sw $t0, -2552($fp)
	li $t0, 1
	sw $t0, -2556($fp)
	li $t0, 4
	lw $t1, -2556($fp)
	mul $t0, $t0, $t1
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	lw $t1, -2552($fp)
	add $t0, $t0, $t1
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	lw $t1, 0($t0)
	sw $t1, -2568($fp)
	lw $t0, -2568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2252
	sw $t0, -2572($fp)
	li $t0, 2
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
	lw $t0, -2588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2252
	sw $t0, -2592($fp)
	li $t0, 3
	sw $t0, -2596($fp)
	li $t0, 4
	lw $t1, -2596($fp)
	mul $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $t0, -2600($fp)
	lw $t1, -2592($fp)
	add $t0, $t0, $t1
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	lw $t1, 0($t0)
	sw $t1, -2608($fp)
	lw $t0, -2608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2252
	sw $t0, -2612($fp)
	li $t0, 4
	sw $t0, -2616($fp)
	li $t0, 4
	lw $t1, -2616($fp)
	mul $t0, $t0, $t1
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	lw $t1, -2612($fp)
	add $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	lw $t1, 0($t0)
	sw $t1, -2628($fp)
	lw $t0, -2628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2252
	sw $t0, -2632($fp)
	li $t0, 5
	sw $t0, -2636($fp)
	li $t0, 4
	lw $t1, -2636($fp)
	mul $t0, $t0, $t1
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	lw $t1, -2632($fp)
	add $t0, $t0, $t1
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	lw $t1, 0($t0)
	sw $t1, -2648($fp)
	lw $t0, -2648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2252
	sw $t0, -2652($fp)
	li $t0, 6
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
	addi $t0, $fp, -2252
	sw $t0, -2672($fp)
	li $t0, 7
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
	addi $t0, $fp, -2252
	sw $t0, -2692($fp)
	li $t0, 8
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
	lw $t0, -2476($fp)
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2488($fp)
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2500($fp)
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2512($fp)
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2524($fp)
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2732($fp)
	li $t0, 0
	sw $t0, -2736($fp)
	li $t0, 0
	sw $t0, -2740($fp)
	lw $t0, -1788($fp)
	sw $t0, -2744($fp)
	lw $t1, -2744($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label386
label386:
	li $t0, 1
	sw $t0, -2740($fp)
label387:
	lw $t0, -756($fp)
	sw $t0, -2748($fp)
	lw $t0, -2512($fp)
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -2756($fp)
	li $t0, 0
	sw $t0, -2760($fp)
	lw $t0, -2488($fp)
	sw $t0, -2764($fp)
	li $t0, 28045
	sw $t0, -2768($fp)
	lw $t1, -2764($fp)
	lw $t2, -2768($fp)
	bgt $t1, $t2, label390
	j label389
label390:
	li $t0, 39009
	sw $t0, -2772($fp)
	lw $t1, -2772($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label389
label388:
	li $t0, 1
	sw $t0, -2760($fp)
label389:
	li $t0, 0
	sw $t0, -2776($fp)
	li $t0, 32304
	sw $t0, -2780($fp)
	lw $t1, -2780($fp)
	li $t2, 0
	bne $t1, $t2, label394
	j label393
label394:
	lw $t0, -804($fp)
	sw $t0, -2784($fp)
	lw $t1, -2784($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label393
label393:
	li $t0, 15610
	sw $t0, -2788($fp)
	lw $t1, -2788($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label392
label391:
	li $t0, 1
	sw $t0, -2776($fp)
label392:
	addi $t0, $fp, -96
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
	addi $sp, $sp, -4
	lw $t0, -2748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2808($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2812($fp)
	addi $sp, $sp, 24
	lw $t1, -2740($fp)
	lw $t2, -2812($fp)
	bgt $t1, $t2, label384
	j label385
label384:
	li $t0, 1
	sw $t0, -2736($fp)
label385:
	lw $t0, -756($fp)
	sw $t0, -2816($fp)
	lw $t0, -756($fp)
	sw $t0, -2820($fp)
	lw $t0, -2816($fp)
	lw $t1, -2820($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2824($fp)
	li $t0, 15352
	sw $t0, -2828($fp)
	lw $t0, -2824($fp)
	lw $t1, -2828($fp)
	sub $t0, $t0, $t1
	sw $t0, -2832($fp)
	li $t0, 25884
	sw $t0, -2836($fp)
	li $t0, 0
	lw $t1, -2836($fp)
	sub $t0, $t0, $t1
	sw $t0, -2840($fp)
	lw $t0, -2500($fp)
	sw $t0, -2844($fp)
	lw $t0, -2840($fp)
	lw $t1, -2844($fp)
	sub $t0, $t0, $t1
	sw $t0, -2848($fp)
	addi $sp, $sp, -4
	lw $t0, -2832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2848($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2852($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2852($fp)
	sub $t0, $t0, $t1
	sw $t0, -2856($fp)
	li $t0, 48984
	sw $t0, -2860($fp)
	li $t0, 0
	lw $t1, -2860($fp)
	sub $t0, $t0, $t1
	sw $t0, -2864($fp)
	lw $t0, -2856($fp)
	lw $t1, -2864($fp)
	sub $t0, $t0, $t1
	sw $t0, -2868($fp)
	lw $t1, -2736($fp)
	lw $t2, -2868($fp)
	ble $t1, $t2, label382
	j label383
label382:
	li $t0, 1
	sw $t0, -2732($fp)
label383:
	lw $ra, -4($fp)
	lw $v0, -2732($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -2252
	sw $t0, -2872($fp)
	li $t0, 0
	sw $t0, -2876($fp)
	li $t0, 4
	lw $t1, -2876($fp)
	mul $t0, $t0, $t1
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	lw $t1, -2872($fp)
	add $t0, $t0, $t1
	sw $t0, -2884($fp)
	lw $t0, -2884($fp)
	lw $t1, 0($t0)
	sw $t1, -2888($fp)
	lw $t0, -2888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2252
	sw $t0, -2892($fp)
	li $t0, 1
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
	addi $t0, $fp, -2252
	sw $t0, -2912($fp)
	li $t0, 2
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
	addi $t0, $fp, -2252
	sw $t0, -2932($fp)
	li $t0, 3
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
	addi $t0, $fp, -2252
	sw $t0, -2952($fp)
	li $t0, 4
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
	addi $t0, $fp, -2252
	sw $t0, -2972($fp)
	li $t0, 5
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
	addi $t0, $fp, -2252
	sw $t0, -2992($fp)
	li $t0, 6
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
	addi $t0, $fp, -2252
	sw $t0, -3012($fp)
	li $t0, 7
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
	addi $t0, $fp, -2252
	sw $t0, -3032($fp)
	li $t0, 8
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
	lw $t0, -2476($fp)
	sw $t0, -3052($fp)
	lw $t0, -3052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2488($fp)
	sw $t0, -3056($fp)
	lw $t0, -3056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2500($fp)
	sw $t0, -3060($fp)
	lw $t0, -3060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2512($fp)
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2524($fp)
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3072($fp)
	li $t0, 48485
	sw $t0, -3076($fp)
	li $t0, 0
	lw $t1, -3076($fp)
	sub $t0, $t0, $t1
	sw $t0, -3080($fp)
	addi $t0, $fp, -104
	sw $t0, -3084($fp)
	li $t0, 1
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
	lw $t0, -3080($fp)
	lw $t1, -3100($fp)
	sub $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t1, -3104($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label396
label397:
	li $t0, 0
	sw $t0, -3108($fp)
	lw $t0, -756($fp)
	sw $t0, -3112($fp)
	li $t0, 0
	lw $t1, -3112($fp)
	sub $t0, $t0, $t1
	sw $t0, -3116($fp)
	lw $t1, -3116($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label398
label398:
	li $t0, 1
	sw $t0, -3108($fp)
label399:
	addi $t0, $fp, -104
	sw $t0, -3120($fp)
	lw $t0, -756($fp)
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
	li $t0, 0
	sw $t0, -3140($fp)
	lw $t0, -2524($fp)
	sw $t0, -3144($fp)
	lw $t0, -780($fp)
	sw $t0, -3148($fp)
	lw $t0, -3144($fp)
	lw $t1, -3148($fp)
	sub $t0, $t0, $t1
	sw $t0, -3152($fp)
	lw $t0, -804($fp)
	sw $t0, -3156($fp)
	lw $t1, -3152($fp)
	lw $t2, -3156($fp)
	bne $t1, $t2, label400
	j label401
label400:
	li $t0, 1
	sw $t0, -3140($fp)
label401:
	li $t0, 0
	sw $t0, -3160($fp)
	li $t0, 0
	sw $t0, -3164($fp)
	li $t0, 35590
	sw $t0, -3168($fp)
	lw $t0, -816($fp)
	sw $t0, -3172($fp)
	lw $t1, -3168($fp)
	lw $t2, -3172($fp)
	bge $t1, $t2, label404
	j label405
label404:
	li $t0, 1
	sw $t0, -3164($fp)
label405:
	li $t0, 20928
	sw $t0, -3176($fp)
	lw $t1, -3164($fp)
	lw $t2, -3176($fp)
	bne $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -3160($fp)
label403:
	addi $t0, $fp, -2252
	sw $t0, -3180($fp)
	lw $t0, -768($fp)
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
	lw $t0, -288($fp)
	sw $t0, -3200($fp)
	lw $t0, -3196($fp)
	lw $t1, -3200($fp)
	sub $t0, $t0, $t1
	sw $t0, -3204($fp)
	li $t0, 4452
	sw $t0, -3208($fp)
	addi $sp, $sp, -4
	lw $t0, -3160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3208($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3212($fp)
	addi $sp, $sp, 16
	lw $t0, -2476($fp)
	sw $t0, -3216($fp)
	li $t0, 26786
	sw $t0, -3220($fp)
	addi $sp, $sp, -4
	lw $t0, -3136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3220($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3224($fp)
	addi $sp, $sp, 24
	lw $t1, -3108($fp)
	lw $t2, -3224($fp)
	bne $t1, $t2, label395
	j label396
label395:
	li $t0, 1
	sw $t0, -3072($fp)
label396:
	lw $ra, -4($fp)
	lw $v0, -3072($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -3228($fp)
	addi $t0, $fp, -28
	sw $t0, -3232($fp)
	lw $t0, -828($fp)
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
	lw $t1, -3248($fp)
	li $t2, 0
	bne $t1, $t2, label406
	j label408
label408:
	lw $t0, -516($fp)
	sw $t0, -3252($fp)
	li $t0, 36624
	sw $t0, -3256($fp)
	lw $t1, -3252($fp)
	lw $t2, -3256($fp)
	ble $t1, $t2, label409
	j label407
label409:
	li $t0, 31624
	sw $t0, -3260($fp)
	lw $t0, -828($fp)
	sw $t0, -3264($fp)
	lw $t0, -3260($fp)
	lw $t1, -3264($fp)
	add $t0, $t0, $t1
	sw $t0, -3268($fp)
	lw $t1, -3268($fp)
	li $t2, 0
	bne $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -3228($fp)
label407:
	j label342
label344:
label410:
	li $t0, 50629
	sw $t0, -3272($fp)
	li $t0, 0
	lw $t1, -3272($fp)
	sub $t0, $t0, $t1
	sw $t0, -3276($fp)
	lw $t0, -816($fp)
	sw $t0, -3280($fp)
	addi $sp, $sp, -4
	lw $t0, -3276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3280($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3284($fp)
	addi $sp, $sp, 12
	lw $t1, -3284($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label412
label411:
	lw $t0, -756($fp)
	sw $t0, -3288($fp)
	li $t0, 17692
	sw $t0, -3292($fp)
	lw $t0, -3288($fp)
	lw $t1, -3292($fp)
	mul $t0, $t0, $t1
	sw $t0, -3296($fp)
	li $t0, 55979
	sw $t0, -3300($fp)
	lw $t0, -3296($fp)
	lw $t1, -3300($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3304($fp)
	addi $t0, $fp, -104
	sw $t0, -3308($fp)
	lw $t0, -828($fp)
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
	lw $t0, -3304($fp)
	lw $t1, -3324($fp)
	mul $t0, $t0, $t1
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -3332($fp)
	lw $t1, -3332($fp)
	li $t2, 0
	bne $t1, $t2, label413
	j label414
label413:
	lw $t0, 8($fp)
	sw $t0, -3336($fp)
	lw $ra, -4($fp)
	lw $v0, -3336($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label415
label414:
	li $t0, 45354
	sw $t0, -3340($fp)
	lw $ra, -4($fp)
	lw $v0, -3340($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label415:
	j label410
label412:
	addi $t0, $fp, -28
	sw $t0, -3344($fp)
	li $t0, 0
	sw $t0, -3348($fp)
	li $t0, 4
	lw $t1, -3348($fp)
	mul $t0, $t0, $t1
	sw $t0, -3352($fp)
	lw $t0, -3352($fp)
	lw $t1, -3344($fp)
	add $t0, $t0, $t1
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	lw $t1, 0($t0)
	sw $t1, -3360($fp)
	lw $t0, -3360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -3364($fp)
	li $t0, 1
	sw $t0, -3368($fp)
	li $t0, 4
	lw $t1, -3368($fp)
	mul $t0, $t0, $t1
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	lw $t1, -3364($fp)
	add $t0, $t0, $t1
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	lw $t1, 0($t0)
	sw $t1, -3380($fp)
	lw $t0, -3380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -3384($fp)
	li $t0, 2
	sw $t0, -3388($fp)
	li $t0, 4
	lw $t1, -3388($fp)
	mul $t0, $t0, $t1
	sw $t0, -3392($fp)
	lw $t0, -3392($fp)
	lw $t1, -3384($fp)
	add $t0, $t0, $t1
	sw $t0, -3396($fp)
	lw $t0, -3396($fp)
	lw $t1, 0($t0)
	sw $t1, -3400($fp)
	lw $t0, -3400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -3404($fp)
	li $t0, 3
	sw $t0, -3408($fp)
	li $t0, 4
	lw $t1, -3408($fp)
	mul $t0, $t0, $t1
	sw $t0, -3412($fp)
	lw $t0, -3412($fp)
	lw $t1, -3404($fp)
	add $t0, $t0, $t1
	sw $t0, -3416($fp)
	lw $t0, -3416($fp)
	lw $t1, 0($t0)
	sw $t1, -3420($fp)
	lw $t0, -3420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -3424($fp)
	li $t0, 4
	sw $t0, -3428($fp)
	li $t0, 4
	lw $t1, -3428($fp)
	mul $t0, $t0, $t1
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	lw $t1, -3424($fp)
	add $t0, $t0, $t1
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	lw $t1, 0($t0)
	sw $t1, -3440($fp)
	lw $t0, -3440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -3444($fp)
	li $t0, 5
	sw $t0, -3448($fp)
	li $t0, 4
	lw $t1, -3448($fp)
	mul $t0, $t0, $t1
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	lw $t1, -3444($fp)
	add $t0, $t0, $t1
	sw $t0, -3456($fp)
	lw $t0, -3456($fp)
	lw $t1, 0($t0)
	sw $t1, -3460($fp)
	lw $t0, -3460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -300($fp)
	sw $t0, -3468($fp)
	lw $t0, -3468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3472($fp)
	li $t0, 0
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
	lw $t0, -3488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3492($fp)
	li $t0, 1
	sw $t0, -3496($fp)
	li $t0, 4
	lw $t1, -3496($fp)
	mul $t0, $t0, $t1
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	lw $t1, -3492($fp)
	add $t0, $t0, $t1
	sw $t0, -3504($fp)
	lw $t0, -3504($fp)
	lw $t1, 0($t0)
	sw $t1, -3508($fp)
	lw $t0, -3508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3512($fp)
	li $t0, 2
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
	lw $t0, -3528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3532($fp)
	li $t0, 3
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
	lw $t0, -3548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3552($fp)
	li $t0, 4
	sw $t0, -3556($fp)
	li $t0, 4
	lw $t1, -3556($fp)
	mul $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t0, -3560($fp)
	lw $t1, -3552($fp)
	add $t0, $t0, $t1
	sw $t0, -3564($fp)
	lw $t0, -3564($fp)
	lw $t1, 0($t0)
	sw $t1, -3568($fp)
	lw $t0, -3568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3572($fp)
	li $t0, 5
	sw $t0, -3576($fp)
	li $t0, 4
	lw $t1, -3576($fp)
	mul $t0, $t0, $t1
	sw $t0, -3580($fp)
	lw $t0, -3580($fp)
	lw $t1, -3572($fp)
	add $t0, $t0, $t1
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	lw $t1, 0($t0)
	sw $t1, -3588($fp)
	lw $t0, -3588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3592($fp)
	li $t0, 6
	sw $t0, -3596($fp)
	li $t0, 4
	lw $t1, -3596($fp)
	mul $t0, $t0, $t1
	sw $t0, -3600($fp)
	lw $t0, -3600($fp)
	lw $t1, -3592($fp)
	add $t0, $t0, $t1
	sw $t0, -3604($fp)
	lw $t0, -3604($fp)
	lw $t1, 0($t0)
	sw $t1, -3608($fp)
	lw $t0, -3608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3612($fp)
	li $t0, 7
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
	lw $t0, -3628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -3632($fp)
	lw $t0, -3632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -3636($fp)
	lw $t0, -3636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -3640($fp)
	lw $t0, -3640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -3644($fp)
	li $t0, 0
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
	addi $t0, $fp, -96
	sw $t0, -3664($fp)
	li $t0, 1
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
	addi $t0, $fp, -96
	sw $t0, -3684($fp)
	li $t0, 2
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
	addi $t0, $fp, -96
	sw $t0, -3704($fp)
	li $t0, 3
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
	addi $t0, $fp, -96
	sw $t0, -3724($fp)
	li $t0, 4
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
	addi $t0, $fp, -96
	sw $t0, -3744($fp)
	li $t0, 5
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
	addi $t0, $fp, -96
	sw $t0, -3764($fp)
	li $t0, 6
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
	addi $t0, $fp, -96
	sw $t0, -3784($fp)
	li $t0, 7
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
	addi $t0, $fp, -96
	sw $t0, -3804($fp)
	li $t0, 8
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
	lw $t0, -756($fp)
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -768($fp)
	sw $t0, -3828($fp)
	lw $t0, -3828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -780($fp)
	sw $t0, -3832($fp)
	lw $t0, -3832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -792($fp)
	sw $t0, -3836($fp)
	lw $t0, -3836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -804($fp)
	sw $t0, -3840($fp)
	lw $t0, -3840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -816($fp)
	sw $t0, -3844($fp)
	lw $t0, -3844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -828($fp)
	sw $t0, -3848($fp)
	lw $t0, -3848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3852($fp)
	li $t0, 0
	sw $t0, -3856($fp)
	li $t0, 4
	lw $t1, -3856($fp)
	mul $t0, $t0, $t1
	sw $t0, -3860($fp)
	lw $t0, -3860($fp)
	lw $t1, -3852($fp)
	add $t0, $t0, $t1
	sw $t0, -3864($fp)
	lw $t0, -3864($fp)
	lw $t1, 0($t0)
	sw $t1, -3868($fp)
	lw $t0, -3868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -3872($fp)
	li $t0, 1
	sw $t0, -3876($fp)
	li $t0, 4
	lw $t1, -3876($fp)
	mul $t0, $t0, $t1
	sw $t0, -3880($fp)
	lw $t0, -3880($fp)
	lw $t1, -3872($fp)
	add $t0, $t0, $t1
	sw $t0, -3884($fp)
	lw $t0, -3884($fp)
	lw $t1, 0($t0)
	sw $t1, -3888($fp)
	lw $t0, -3888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -3892($fp)
	li $t0, 0
	sw $t0, -3896($fp)
	li $t0, 4
	lw $t1, -3896($fp)
	mul $t0, $t0, $t1
	sw $t0, -3900($fp)
	lw $t0, -3900($fp)
	lw $t1, -3892($fp)
	add $t0, $t0, $t1
	sw $t0, -3904($fp)
	lw $t0, -3904($fp)
	lw $t1, 0($t0)
	sw $t1, -3908($fp)
	lw $t0, -3908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
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
	lw $t0, -3928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -3932($fp)
	li $t0, 2
	sw $t0, -3936($fp)
	li $t0, 4
	lw $t1, -3936($fp)
	mul $t0, $t0, $t1
	sw $t0, -3940($fp)
	lw $t0, -3940($fp)
	lw $t1, -3932($fp)
	add $t0, $t0, $t1
	sw $t0, -3944($fp)
	lw $t0, -3944($fp)
	lw $t1, 0($t0)
	sw $t1, -3948($fp)
	lw $t0, -3948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
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
	lw $t0, -3968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -3972($fp)
	li $t0, 4
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
	lw $t0, -3988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -3992($fp)
	li $t0, 5
	sw $t0, -3996($fp)
	li $t0, 4
	lw $t1, -3996($fp)
	mul $t0, $t0, $t1
	sw $t0, -4000($fp)
	lw $t0, -4000($fp)
	lw $t1, -3992($fp)
	add $t0, $t0, $t1
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	lw $t1, 0($t0)
	sw $t1, -4008($fp)
	lw $t0, -4008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -4012($fp)
	li $t0, 6
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
	lw $t0, -4028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -4032($fp)
	li $t0, 7
	sw $t0, -4036($fp)
	li $t0, 4
	lw $t1, -4036($fp)
	mul $t0, $t0, $t1
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	lw $t1, -4032($fp)
	add $t0, $t0, $t1
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	lw $t1, 0($t0)
	sw $t1, -4048($fp)
	lw $t0, -4048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1080($fp)
	sw $t0, -4052($fp)
	lw $t0, -4052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4056($fp)
	li $t0, 0
	sw $t0, -4060($fp)
	addi $t0, $fp, -60
	sw $t0, -4064($fp)
	lw $t0, -1080($fp)
	sw $t0, -4068($fp)
	li $t0, 4
	lw $t1, -4068($fp)
	mul $t0, $t0, $t1
	sw $t0, -4072($fp)
	lw $t0, -4072($fp)
	lw $t1, -4064($fp)
	add $t0, $t0, $t1
	sw $t0, -4076($fp)
	lw $t0, -4076($fp)
	lw $t1, 0($t0)
	sw $t1, -4080($fp)
	lw $t1, -4080($fp)
	li $t2, 0
	bne $t1, $t2, label420
	j label419
label419:
	li $t0, 1
	sw $t0, -4060($fp)
label420:
	addi $t0, $fp, -136
	sw $t0, -4084($fp)
	li $t0, 0
	sw $t0, -4088($fp)
	li $t0, 4
	lw $t1, -4088($fp)
	mul $t0, $t0, $t1
	sw $t0, -4092($fp)
	lw $t0, -4092($fp)
	lw $t1, -4084($fp)
	add $t0, $t0, $t1
	sw $t0, -4096($fp)
	lw $t0, -4096($fp)
	lw $t1, 0($t0)
	sw $t1, -4100($fp)
	lw $t0, -4060($fp)
	lw $t1, -4100($fp)
	mul $t0, $t0, $t1
	sw $t0, -4104($fp)
	lw $t1, -4104($fp)
	li $t2, 0
	bne $t1, $t2, label418
	j label417
label418:
	li $t0, 9445
	sw $t0, -4108($fp)
	lw $t1, -4108($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label417
label416:
	li $t0, 1
	sw $t0, -4056($fp)
label417:
	lw $ra, -4($fp)
	lw $v0, -4056($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label421:
	lw $t0, -780($fp)
	sw $t0, -4112($fp)
	lw $t0, -4112($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -4116($fp)
	li $t0, 0
	sw $t0, -4120($fp)
	li $t0, 32257
	sw $t0, -4124($fp)
	lw $t0, -756($fp)
	sw $t0, -4128($fp)
	lw $t0, -4124($fp)
	lw $t1, -4128($fp)
	mul $t0, $t0, $t1
	sw $t0, -4132($fp)
	lw $t1, -4132($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label425
label426:
	lw $t0, -528($fp)
	sw $t0, -4136($fp)
	lw $t1, -4136($fp)
	li $t2, 0
	bne $t1, $t2, label424
	j label425
label424:
	li $t0, 1
	sw $t0, -4120($fp)
label425:
	lw $t0, -300($fp)
	sw $t0, -4140($fp)
	lw $t0, -4140($fp)
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -4144($fp)
	li $t0, 34302
	sw $t0, -4148($fp)
	li $t0, 23758
	sw $t0, -4152($fp)
	lw $t0, -4148($fp)
	lw $t1, -4152($fp)
	mul $t0, $t0, $t1
	sw $t0, -4156($fp)
	lw $t0, -504($fp)
	sw $t0, -4160($fp)
	lw $t0, -4156($fp)
	lw $t1, -4160($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4164($fp)
	lw $t0, 4($fp)
	sw $t0, -4168($fp)
	addi $sp, $sp, -4
	lw $t0, -4116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4168($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -4172($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -60
	sw $t0, -4176($fp)
	li $t0, 0
	sw $t0, -4180($fp)
	li $t0, 13626
	sw $t0, -4184($fp)
	lw $t1, -4184($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label429
label429:
	lw $t0, 4($fp)
	sw $t0, -4188($fp)
	lw $t1, -4188($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label428
label427:
	li $t0, 1
	sw $t0, -4180($fp)
label428:
	li $t0, 4
	lw $t1, -4180($fp)
	mul $t0, $t0, $t1
	sw $t0, -4192($fp)
	lw $t0, -4192($fp)
	lw $t1, -4176($fp)
	add $t0, $t0, $t1
	sw $t0, -4196($fp)
	lw $t0, -4196($fp)
	lw $t1, 0($t0)
	sw $t1, -4200($fp)
	lw $t0, -4172($fp)
	lw $t1, -4200($fp)
	add $t0, $t0, $t1
	sw $t0, -4204($fp)
	lw $t1, -4204($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label423
label422:
	li $t0, 1412
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	sw $t0, -4292($fp)
	li $t0, 33471
	sw $t0, -4296($fp)
	addi $t0, $fp, -4244
	sw $t0, -4300($fp)
	li $t0, 0
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4308($fp)
	lw $t0, -4300($fp)
	lw $t1, -4308($fp)
	add $t0, $t0, $t1
	sw $t0, -4312($fp)
	lw $t0, -4296($fp)
	lw $t1, -4312($fp)
	sw $t0, 0($t1)
	lw $t0, -4312($fp)
	lw $t1, 0($t0)
	sw $t1, -4316($fp)
	li $t0, 31581
	sw $t0, -4320($fp)
	addi $t0, $fp, -4244
	sw $t0, -4324($fp)
	li $t0, 1
	sw $t0, -4328($fp)
	lw $t0, -4328($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4332($fp)
	lw $t0, -4324($fp)
	lw $t1, -4332($fp)
	add $t0, $t0, $t1
	sw $t0, -4336($fp)
	lw $t0, -4320($fp)
	lw $t1, -4336($fp)
	sw $t0, 0($t1)
	lw $t0, -4336($fp)
	lw $t1, 0($t0)
	sw $t1, -4340($fp)
	li $t0, 49943
	sw $t0, -4344($fp)
	addi $t0, $fp, -4244
	sw $t0, -4348($fp)
	li $t0, 2
	sw $t0, -4352($fp)
	lw $t0, -4352($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4356($fp)
	lw $t0, -4348($fp)
	lw $t1, -4356($fp)
	add $t0, $t0, $t1
	sw $t0, -4360($fp)
	lw $t0, -4344($fp)
	lw $t1, -4360($fp)
	sw $t0, 0($t1)
	lw $t0, -4360($fp)
	lw $t1, 0($t0)
	sw $t1, -4364($fp)
	li $t0, 239
	sw $t0, -4368($fp)
	addi $t0, $fp, -4244
	sw $t0, -4372($fp)
	li $t0, 3
	sw $t0, -4376($fp)
	lw $t0, -4376($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4380($fp)
	lw $t0, -4372($fp)
	lw $t1, -4380($fp)
	add $t0, $t0, $t1
	sw $t0, -4384($fp)
	lw $t0, -4368($fp)
	lw $t1, -4384($fp)
	sw $t0, 0($t1)
	lw $t0, -4384($fp)
	lw $t1, 0($t0)
	sw $t1, -4388($fp)
	li $t0, 47191
	sw $t0, -4392($fp)
	addi $t0, $fp, -4244
	sw $t0, -4396($fp)
	li $t0, 4
	sw $t0, -4400($fp)
	lw $t0, -4400($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4404($fp)
	lw $t0, -4396($fp)
	lw $t1, -4404($fp)
	add $t0, $t0, $t1
	sw $t0, -4408($fp)
	lw $t0, -4392($fp)
	lw $t1, -4408($fp)
	sw $t0, 0($t1)
	lw $t0, -4408($fp)
	lw $t1, 0($t0)
	sw $t1, -4412($fp)
	li $t0, 12452
	sw $t0, -4416($fp)
	addi $t0, $fp, -4244
	sw $t0, -4420($fp)
	li $t0, 5
	sw $t0, -4424($fp)
	lw $t0, -4424($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4428($fp)
	lw $t0, -4420($fp)
	lw $t1, -4428($fp)
	add $t0, $t0, $t1
	sw $t0, -4432($fp)
	lw $t0, -4416($fp)
	lw $t1, -4432($fp)
	sw $t0, 0($t1)
	lw $t0, -4432($fp)
	lw $t1, 0($t0)
	sw $t1, -4436($fp)
	li $t0, 39249
	sw $t0, -4440($fp)
	addi $t0, $fp, -4244
	sw $t0, -4444($fp)
	li $t0, 6
	sw $t0, -4448($fp)
	lw $t0, -4448($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4452($fp)
	lw $t0, -4444($fp)
	lw $t1, -4452($fp)
	add $t0, $t0, $t1
	sw $t0, -4456($fp)
	lw $t0, -4440($fp)
	lw $t1, -4456($fp)
	sw $t0, 0($t1)
	lw $t0, -4456($fp)
	lw $t1, 0($t0)
	sw $t1, -4460($fp)
	li $t0, 7540
	sw $t0, -4464($fp)
	addi $t0, $fp, -4244
	sw $t0, -4468($fp)
	li $t0, 7
	sw $t0, -4472($fp)
	lw $t0, -4472($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4476($fp)
	lw $t0, -4468($fp)
	lw $t1, -4476($fp)
	add $t0, $t0, $t1
	sw $t0, -4480($fp)
	lw $t0, -4464($fp)
	lw $t1, -4480($fp)
	sw $t0, 0($t1)
	lw $t0, -4480($fp)
	lw $t1, 0($t0)
	sw $t1, -4484($fp)
	li $t0, 27804
	sw $t0, -4488($fp)
	addi $t0, $fp, -4244
	sw $t0, -4492($fp)
	li $t0, 8
	sw $t0, -4496($fp)
	lw $t0, -4496($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4500($fp)
	lw $t0, -4492($fp)
	lw $t1, -4500($fp)
	add $t0, $t0, $t1
	sw $t0, -4504($fp)
	lw $t0, -4488($fp)
	lw $t1, -4504($fp)
	sw $t0, 0($t1)
	lw $t0, -4504($fp)
	lw $t1, 0($t0)
	sw $t1, -4508($fp)
	li $t0, 22697
	sw $t0, -4512($fp)
	addi $t0, $fp, -4244
	sw $t0, -4516($fp)
	li $t0, 9
	sw $t0, -4520($fp)
	lw $t0, -4520($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4524($fp)
	lw $t0, -4516($fp)
	lw $t1, -4524($fp)
	add $t0, $t0, $t1
	sw $t0, -4528($fp)
	lw $t0, -4512($fp)
	lw $t1, -4528($fp)
	sw $t0, 0($t1)
	lw $t0, -4528($fp)
	lw $t1, 0($t0)
	sw $t1, -4532($fp)
	li $t0, 56025
	sw $t0, -4536($fp)
	addi $t0, $fp, -4252
	sw $t0, -4540($fp)
	li $t0, 0
	sw $t0, -4544($fp)
	lw $t0, -4544($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4548($fp)
	lw $t0, -4540($fp)
	lw $t1, -4548($fp)
	add $t0, $t0, $t1
	sw $t0, -4552($fp)
	lw $t0, -4536($fp)
	lw $t1, -4552($fp)
	sw $t0, 0($t1)
	lw $t0, -4552($fp)
	lw $t1, 0($t0)
	sw $t1, -4556($fp)
	li $t0, 39977
	sw $t0, -4560($fp)
	addi $t0, $fp, -4252
	sw $t0, -4564($fp)
	li $t0, 1
	sw $t0, -4568($fp)
	lw $t0, -4568($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4572($fp)
	lw $t0, -4564($fp)
	lw $t1, -4572($fp)
	add $t0, $t0, $t1
	sw $t0, -4576($fp)
	lw $t0, -4560($fp)
	lw $t1, -4576($fp)
	sw $t0, 0($t1)
	lw $t0, -4576($fp)
	lw $t1, 0($t0)
	sw $t1, -4580($fp)
	li $t0, 41454
	sw $t0, -4584($fp)
	lw $t0, -4584($fp)
	sw $t0, -4588($fp)
	lw $t0, -4588($fp)
	sw $t0, -4592($fp)
	li $t0, 17275
	sw $t0, -4596($fp)
	lw $t0, -4596($fp)
	sw $t0, -4600($fp)
	lw $t0, -4600($fp)
	sw $t0, -4604($fp)
	li $t0, 44430
	sw $t0, -4608($fp)
	lw $t0, -4608($fp)
	sw $t0, -4612($fp)
	lw $t0, -4612($fp)
	sw $t0, -4616($fp)
	li $t0, 11508
	sw $t0, -4620($fp)
	addi $t0, $fp, -4280
	sw $t0, -4624($fp)
	li $t0, 0
	sw $t0, -4628($fp)
	lw $t0, -4628($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4632($fp)
	lw $t0, -4624($fp)
	lw $t1, -4632($fp)
	add $t0, $t0, $t1
	sw $t0, -4636($fp)
	lw $t0, -4620($fp)
	lw $t1, -4636($fp)
	sw $t0, 0($t1)
	lw $t0, -4636($fp)
	lw $t1, 0($t0)
	sw $t1, -4640($fp)
	li $t0, 38203
	sw $t0, -4644($fp)
	addi $t0, $fp, -4280
	sw $t0, -4648($fp)
	li $t0, 1
	sw $t0, -4652($fp)
	lw $t0, -4652($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4656($fp)
	lw $t0, -4648($fp)
	lw $t1, -4656($fp)
	add $t0, $t0, $t1
	sw $t0, -4660($fp)
	lw $t0, -4644($fp)
	lw $t1, -4660($fp)
	sw $t0, 0($t1)
	lw $t0, -4660($fp)
	lw $t1, 0($t0)
	sw $t1, -4664($fp)
	li $t0, 15518
	sw $t0, -4668($fp)
	addi $t0, $fp, -4280
	sw $t0, -4672($fp)
	li $t0, 2
	sw $t0, -4676($fp)
	lw $t0, -4676($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4680($fp)
	lw $t0, -4672($fp)
	lw $t1, -4680($fp)
	add $t0, $t0, $t1
	sw $t0, -4684($fp)
	lw $t0, -4668($fp)
	lw $t1, -4684($fp)
	sw $t0, 0($t1)
	lw $t0, -4684($fp)
	lw $t1, 0($t0)
	sw $t1, -4688($fp)
	li $t0, 43133
	sw $t0, -4692($fp)
	addi $t0, $fp, -4280
	sw $t0, -4696($fp)
	li $t0, 3
	sw $t0, -4700($fp)
	lw $t0, -4700($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4704($fp)
	lw $t0, -4696($fp)
	lw $t1, -4704($fp)
	add $t0, $t0, $t1
	sw $t0, -4708($fp)
	lw $t0, -4692($fp)
	lw $t1, -4708($fp)
	sw $t0, 0($t1)
	lw $t0, -4708($fp)
	lw $t1, 0($t0)
	sw $t1, -4712($fp)
	li $t0, 23296
	sw $t0, -4716($fp)
	addi $t0, $fp, -4280
	sw $t0, -4720($fp)
	li $t0, 4
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
	li $t0, 33210
	sw $t0, -4740($fp)
	addi $t0, $fp, -4280
	sw $t0, -4744($fp)
	li $t0, 5
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
	li $t0, 33576
	sw $t0, -4764($fp)
	addi $t0, $fp, -4280
	sw $t0, -4768($fp)
	li $t0, 6
	sw $t0, -4772($fp)
	lw $t0, -4772($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4776($fp)
	lw $t0, -4768($fp)
	lw $t1, -4776($fp)
	add $t0, $t0, $t1
	sw $t0, -4780($fp)
	lw $t0, -4764($fp)
	lw $t1, -4780($fp)
	sw $t0, 0($t1)
	lw $t0, -4780($fp)
	lw $t1, 0($t0)
	sw $t1, -4784($fp)
	li $t0, 0
	sw $t0, -4788($fp)
	addi $t0, $fp, -104
	sw $t0, -4792($fp)
	lw $t0, -780($fp)
	sw $t0, -4796($fp)
	li $t0, 4
	lw $t1, -4796($fp)
	mul $t0, $t0, $t1
	sw $t0, -4800($fp)
	lw $t0, -4800($fp)
	lw $t1, -4792($fp)
	add $t0, $t0, $t1
	sw $t0, -4804($fp)
	lw $t0, -4804($fp)
	lw $t1, 0($t0)
	sw $t1, -4808($fp)
	lw $t0, -4612($fp)
	sw $t0, -4812($fp)
	lw $t0, -4808($fp)
	lw $t1, -4812($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4816($fp)
	addi $t0, $fp, -4244
	sw $t0, -4820($fp)
	li $t0, 7
	sw $t0, -4824($fp)
	li $t0, 4
	lw $t1, -4824($fp)
	mul $t0, $t0, $t1
	sw $t0, -4828($fp)
	lw $t0, -4828($fp)
	lw $t1, -4820($fp)
	add $t0, $t0, $t1
	sw $t0, -4832($fp)
	lw $t0, -4832($fp)
	lw $t1, 0($t0)
	sw $t1, -4836($fp)
	lw $t0, -4816($fp)
	lw $t1, -4836($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4840($fp)
	lw $t0, -504($fp)
	sw $t0, -4844($fp)
	lw $t0, -4840($fp)
	lw $t1, -4844($fp)
	add $t0, $t0, $t1
	sw $t0, -4848($fp)
	addi $t0, $fp, -28
	sw $t0, -4852($fp)
	li $t0, 4
	sw $t0, -4856($fp)
	li $t0, 4
	lw $t1, -4856($fp)
	mul $t0, $t0, $t1
	sw $t0, -4860($fp)
	lw $t0, -4860($fp)
	lw $t1, -4852($fp)
	add $t0, $t0, $t1
	sw $t0, -4864($fp)
	lw $t0, -4864($fp)
	lw $t1, 0($t0)
	sw $t1, -4868($fp)
	li $t0, 0
	sw $t0, -4872($fp)
	addi $t0, $fp, -96
	sw $t0, -4876($fp)
	li $t0, 5
	sw $t0, -4880($fp)
	li $t0, 4
	lw $t1, -4880($fp)
	mul $t0, $t0, $t1
	sw $t0, -4884($fp)
	lw $t0, -4884($fp)
	lw $t1, -4876($fp)
	add $t0, $t0, $t1
	sw $t0, -4888($fp)
	lw $t0, -4888($fp)
	lw $t1, 0($t0)
	sw $t1, -4892($fp)
	li $t0, 44817
	sw $t0, -4896($fp)
	addi $t0, $fp, -136
	sw $t0, -4900($fp)
	lw $t0, -4600($fp)
	sw $t0, -4904($fp)
	li $t0, 4
	lw $t1, -4904($fp)
	mul $t0, $t0, $t1
	sw $t0, -4908($fp)
	lw $t0, -4908($fp)
	lw $t1, -4900($fp)
	add $t0, $t0, $t1
	sw $t0, -4912($fp)
	lw $t0, -4912($fp)
	lw $t1, 0($t0)
	sw $t1, -4916($fp)
	li $t0, 0
	lw $t1, -4916($fp)
	sub $t0, $t0, $t1
	sw $t0, -4920($fp)
	li $t0, 0
	sw $t0, -4924($fp)
	lw $t0, -828($fp)
	sw $t0, -4928($fp)
	lw $t1, -4928($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label436
label435:
	li $t0, 1
	sw $t0, -4924($fp)
label436:
	lw $t0, -768($fp)
	sw $t0, -4932($fp)
	lw $t0, -756($fp)
	sw $t0, -4936($fp)
	lw $t0, -4932($fp)
	lw $t1, -4936($fp)
	add $t0, $t0, $t1
	sw $t0, -4940($fp)
	addi $sp, $sp, -4
	lw $t0, -4892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4940($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -4944($fp)
	addi $sp, $sp, 24
	lw $t1, -4944($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label433
label434:
	lw $t0, 4($fp)
	sw $t0, -4948($fp)
	lw $t1, -4948($fp)
	li $t2, 0
	bne $t1, $t2, label432
	j label433
label432:
	li $t0, 1
	sw $t0, -4872($fp)
label433:
	lw $t0, -528($fp)
	sw $t0, -4952($fp)
	li $t0, 22126
	sw $t0, -4956($fp)
	lw $t0, -4952($fp)
	lw $t1, -4956($fp)
	sub $t0, $t0, $t1
	sw $t0, -4960($fp)
	lw $t0, -1080($fp)
	sw $t0, -4964($fp)
	lw $t0, -4960($fp)
	lw $t1, -4964($fp)
	sub $t0, $t0, $t1
	sw $t0, -4968($fp)
	addi $sp, $sp, -4
	lw $t0, -4872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4968($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -4972($fp)
	addi $sp, $sp, 12
	lw $t0, -528($fp)
	sw $t0, -4976($fp)
	lw $t0, -4972($fp)
	lw $t1, -4976($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4980($fp)
	lw $t0, 4($fp)
	sw $t0, -4984($fp)
	addi $sp, $sp, -4
	lw $t0, -4980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4984($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4988($fp)
	addi $sp, $sp, 12
	li $t0, 48886
	sw $t0, -4992($fp)
	li $t0, 0
	sw $t0, -4996($fp)
	lw $t0, -528($fp)
	sw $t0, -5000($fp)
	lw $t1, -5000($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label437
label437:
	li $t0, 1
	sw $t0, -4996($fp)
label438:
	li $t0, 0
	lw $t1, -4996($fp)
	sub $t0, $t0, $t1
	sw $t0, -5004($fp)
	addi $sp, $sp, -4
	lw $t0, -4988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5004($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5008($fp)
	addi $sp, $sp, 16
	lw $t0, -4868($fp)
	lw $t1, -5008($fp)
	mul $t0, $t0, $t1
	sw $t0, -5012($fp)
	lw $t1, -4848($fp)
	lw $t2, -5012($fp)
	bne $t1, $t2, label430
	j label431
label430:
	li $t0, 1
	sw $t0, -4788($fp)
label431:
	li $t0, 0
	sw $t0, -5016($fp)
	addi $t0, $fp, -4280
	sw $t0, -5020($fp)
	li $t0, 0
	sw $t0, -5024($fp)
	li $t0, 4
	lw $t1, -5024($fp)
	mul $t0, $t0, $t1
	sw $t0, -5028($fp)
	lw $t0, -5028($fp)
	lw $t1, -5020($fp)
	add $t0, $t0, $t1
	sw $t0, -5032($fp)
	lw $t0, -5032($fp)
	lw $t1, 0($t0)
	sw $t1, -5036($fp)
	addi $t0, $fp, -28
	sw $t0, -5040($fp)
	lw $t0, -780($fp)
	sw $t0, -5044($fp)
	li $t0, 4
	lw $t1, -5044($fp)
	mul $t0, $t0, $t1
	sw $t0, -5048($fp)
	lw $t0, -5048($fp)
	lw $t1, -5040($fp)
	add $t0, $t0, $t1
	sw $t0, -5052($fp)
	lw $t0, -5052($fp)
	lw $t1, 0($t0)
	sw $t1, -5056($fp)
	lw $t1, -5036($fp)
	lw $t2, -5056($fp)
	bne $t1, $t2, label439
	j label440
label439:
	li $t0, 1
	sw $t0, -5016($fp)
label440:
	lw $t0, -5016($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -5060($fp)
	li $t0, 0
	sw $t0, -5064($fp)
	addi $t0, $fp, -4252
	sw $t0, -5068($fp)
	li $t0, 0
	sw $t0, -5072($fp)
	lw $t0, 8($fp)
	sw $t0, -5076($fp)
	lw $t1, -5076($fp)
	li $t2, 0
	bne $t1, $t2, label443
	j label445
label445:
	li $t0, 7946
	sw $t0, -5080($fp)
	lw $t1, -5080($fp)
	li $t2, 0
	bne $t1, $t2, label443
	j label444
label443:
	li $t0, 1
	sw $t0, -5072($fp)
label444:
	li $t0, 4
	lw $t1, -5072($fp)
	mul $t0, $t0, $t1
	sw $t0, -5084($fp)
	lw $t0, -5084($fp)
	lw $t1, -5068($fp)
	add $t0, $t0, $t1
	sw $t0, -5088($fp)
	lw $t0, -5088($fp)
	lw $t1, 0($t0)
	sw $t1, -5092($fp)
	lw $t1, -5092($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label441
label441:
	li $t0, 1
	sw $t0, -5064($fp)
label442:
	li $t0, 10214
	sw $t0, -5096($fp)
	lw $t0, -5064($fp)
	lw $t1, -5096($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5100($fp)
	li $t0, 0
	sw $t0, -5104($fp)
	li $t0, 0
	sw $t0, -5108($fp)
	lw $t0, -504($fp)
	sw $t0, -5112($fp)
	li $t0, 0
	lw $t1, -5112($fp)
	sub $t0, $t0, $t1
	sw $t0, -5116($fp)
	lw $t0, -4288($fp)
	sw $t0, -5120($fp)
	addi $sp, $sp, -4
	lw $t0, -5116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5120($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5124($fp)
	addi $sp, $sp, 12
	lw $t1, -5124($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label448
label448:
	li $t0, 1
	sw $t0, -5108($fp)
label449:
	lw $t0, -4588($fp)
	sw $t0, -5128($fp)
	li $t0, 0
	lw $t1, -5128($fp)
	sub $t0, $t0, $t1
	sw $t0, -5132($fp)
	li $t0, 0
	lw $t1, -5132($fp)
	sub $t0, $t0, $t1
	sw $t0, -5136($fp)
	li $t0, 0
	lw $t1, -5136($fp)
	sub $t0, $t0, $t1
	sw $t0, -5140($fp)
	lw $t1, -5108($fp)
	lw $t2, -5140($fp)
	bne $t1, $t2, label446
	j label447
label446:
	li $t0, 1
	sw $t0, -5104($fp)
label447:
	li $t0, 0
	sw $t0, -5144($fp)
	lw $t0, -516($fp)
	sw $t0, -5148($fp)
	li $t0, 0
	lw $t1, -5148($fp)
	sub $t0, $t0, $t1
	sw $t0, -5152($fp)
	lw $t1, -5152($fp)
	li $t2, 0
	bne $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -5144($fp)
label451:
	lw $t0, -5144($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -5156($fp)
	li $t0, 20398
	sw $t0, -5160($fp)
	lw $t0, -756($fp)
	sw $t0, -5164($fp)
	lw $t0, -5164($fp)
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -5168($fp)
	addi $sp, $sp, -4
	lw $t0, -5160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5168($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -5172($fp)
	addi $sp, $sp, 12
	j label421
label423:
	addi $t0, $fp, -28
	sw $t0, -5176($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -5196($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -5216($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -5236($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -5256($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -5276($fp)
	li $t0, 5
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
	lw $t0, -288($fp)
	sw $t0, -5296($fp)
	lw $t0, -5296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -300($fp)
	sw $t0, -5300($fp)
	lw $t0, -5300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -5304($fp)
	li $t0, 0
	sw $t0, -5308($fp)
	li $t0, 4
	lw $t1, -5308($fp)
	mul $t0, $t0, $t1
	sw $t0, -5312($fp)
	lw $t0, -5312($fp)
	lw $t1, -5304($fp)
	add $t0, $t0, $t1
	sw $t0, -5316($fp)
	lw $t0, -5316($fp)
	lw $t1, 0($t0)
	sw $t1, -5320($fp)
	lw $t0, -5320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -5324($fp)
	li $t0, 1
	sw $t0, -5328($fp)
	li $t0, 4
	lw $t1, -5328($fp)
	mul $t0, $t0, $t1
	sw $t0, -5332($fp)
	lw $t0, -5332($fp)
	lw $t1, -5324($fp)
	add $t0, $t0, $t1
	sw $t0, -5336($fp)
	lw $t0, -5336($fp)
	lw $t1, 0($t0)
	sw $t1, -5340($fp)
	lw $t0, -5340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -5344($fp)
	li $t0, 2
	sw $t0, -5348($fp)
	li $t0, 4
	lw $t1, -5348($fp)
	mul $t0, $t0, $t1
	sw $t0, -5352($fp)
	lw $t0, -5352($fp)
	lw $t1, -5344($fp)
	add $t0, $t0, $t1
	sw $t0, -5356($fp)
	lw $t0, -5356($fp)
	lw $t1, 0($t0)
	sw $t1, -5360($fp)
	lw $t0, -5360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -5364($fp)
	li $t0, 3
	sw $t0, -5368($fp)
	li $t0, 4
	lw $t1, -5368($fp)
	mul $t0, $t0, $t1
	sw $t0, -5372($fp)
	lw $t0, -5372($fp)
	lw $t1, -5364($fp)
	add $t0, $t0, $t1
	sw $t0, -5376($fp)
	lw $t0, -5376($fp)
	lw $t1, 0($t0)
	sw $t1, -5380($fp)
	lw $t0, -5380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -5384($fp)
	li $t0, 4
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
	lw $t0, -5400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -5404($fp)
	li $t0, 5
	sw $t0, -5408($fp)
	li $t0, 4
	lw $t1, -5408($fp)
	mul $t0, $t0, $t1
	sw $t0, -5412($fp)
	lw $t0, -5412($fp)
	lw $t1, -5404($fp)
	add $t0, $t0, $t1
	sw $t0, -5416($fp)
	lw $t0, -5416($fp)
	lw $t1, 0($t0)
	sw $t1, -5420($fp)
	lw $t0, -5420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -5424($fp)
	li $t0, 6
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
	lw $t0, -5440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -5444($fp)
	li $t0, 7
	sw $t0, -5448($fp)
	li $t0, 4
	lw $t1, -5448($fp)
	mul $t0, $t0, $t1
	sw $t0, -5452($fp)
	lw $t0, -5452($fp)
	lw $t1, -5444($fp)
	add $t0, $t0, $t1
	sw $t0, -5456($fp)
	lw $t0, -5456($fp)
	lw $t1, 0($t0)
	sw $t1, -5460($fp)
	lw $t0, -5460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -5464($fp)
	lw $t0, -5464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -5468($fp)
	lw $t0, -5468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -5472($fp)
	lw $t0, -5472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -5476($fp)
	li $t0, 0
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
	addi $t0, $fp, -96
	sw $t0, -5496($fp)
	li $t0, 1
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
	addi $t0, $fp, -96
	sw $t0, -5516($fp)
	li $t0, 2
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
	addi $t0, $fp, -96
	sw $t0, -5536($fp)
	li $t0, 3
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
	addi $t0, $fp, -96
	sw $t0, -5556($fp)
	li $t0, 4
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
	addi $t0, $fp, -96
	sw $t0, -5576($fp)
	li $t0, 5
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
	addi $t0, $fp, -96
	sw $t0, -5596($fp)
	li $t0, 6
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
	addi $t0, $fp, -96
	sw $t0, -5616($fp)
	li $t0, 7
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
	addi $t0, $fp, -96
	sw $t0, -5636($fp)
	li $t0, 8
	sw $t0, -5640($fp)
	li $t0, 4
	lw $t1, -5640($fp)
	mul $t0, $t0, $t1
	sw $t0, -5644($fp)
	lw $t0, -5644($fp)
	lw $t1, -5636($fp)
	add $t0, $t0, $t1
	sw $t0, -5648($fp)
	lw $t0, -5648($fp)
	lw $t1, 0($t0)
	sw $t1, -5652($fp)
	lw $t0, -5652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -756($fp)
	sw $t0, -5656($fp)
	lw $t0, -5656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -768($fp)
	sw $t0, -5660($fp)
	lw $t0, -5660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -780($fp)
	sw $t0, -5664($fp)
	lw $t0, -5664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -792($fp)
	sw $t0, -5668($fp)
	lw $t0, -5668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -804($fp)
	sw $t0, -5672($fp)
	lw $t0, -5672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -816($fp)
	sw $t0, -5676($fp)
	lw $t0, -5676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -828($fp)
	sw $t0, -5680($fp)
	lw $t0, -5680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -5684($fp)
	li $t0, 0
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
	addi $t0, $fp, -104
	sw $t0, -5704($fp)
	li $t0, 1
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
	addi $t0, $fp, -136
	sw $t0, -5724($fp)
	li $t0, 0
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
	addi $t0, $fp, -136
	sw $t0, -5744($fp)
	li $t0, 1
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
	addi $t0, $fp, -136
	sw $t0, -5764($fp)
	li $t0, 2
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
	addi $t0, $fp, -136
	sw $t0, -5784($fp)
	li $t0, 3
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
	addi $t0, $fp, -136
	sw $t0, -5804($fp)
	li $t0, 4
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
	lw $t0, -5820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -5824($fp)
	li $t0, 5
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
	lw $t0, -5840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -5844($fp)
	li $t0, 6
	sw $t0, -5848($fp)
	li $t0, 4
	lw $t1, -5848($fp)
	mul $t0, $t0, $t1
	sw $t0, -5852($fp)
	lw $t0, -5852($fp)
	lw $t1, -5844($fp)
	add $t0, $t0, $t1
	sw $t0, -5856($fp)
	lw $t0, -5856($fp)
	lw $t1, 0($t0)
	sw $t1, -5860($fp)
	lw $t0, -5860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -5864($fp)
	li $t0, 7
	sw $t0, -5868($fp)
	li $t0, 4
	lw $t1, -5868($fp)
	mul $t0, $t0, $t1
	sw $t0, -5872($fp)
	lw $t0, -5872($fp)
	lw $t1, -5864($fp)
	add $t0, $t0, $t1
	sw $t0, -5876($fp)
	lw $t0, -5876($fp)
	lw $t1, 0($t0)
	sw $t1, -5880($fp)
	lw $t0, -5880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1080($fp)
	sw $t0, -5884($fp)
	lw $t0, -5884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5888($fp)
	addi $t0, $fp, -96
	sw $t0, -5892($fp)
	lw $t0, -756($fp)
	sw $t0, -5896($fp)
	li $t0, 0
	lw $t1, -5896($fp)
	sub $t0, $t0, $t1
	sw $t0, -5900($fp)
	li $t0, 4
	lw $t1, -5900($fp)
	mul $t0, $t0, $t1
	sw $t0, -5904($fp)
	lw $t0, -5904($fp)
	lw $t1, -5892($fp)
	add $t0, $t0, $t1
	sw $t0, -5908($fp)
	lw $t0, -5908($fp)
	lw $t1, 0($t0)
	sw $t1, -5912($fp)
	lw $t0, -288($fp)
	sw $t0, -5916($fp)
	li $t0, 52241
	sw $t0, -5920($fp)
	lw $t0, -5916($fp)
	lw $t1, -5920($fp)
	mul $t0, $t0, $t1
	sw $t0, -5924($fp)
	li $t0, 0
	lw $t1, -5924($fp)
	sub $t0, $t0, $t1
	sw $t0, -5928($fp)
	lw $t1, -5912($fp)
	lw $t2, -5928($fp)
	beq $t1, $t2, label454
	j label453
label454:
	lw $t0, 4($fp)
	sw $t0, -5932($fp)
	lw $t1, -5932($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label453
label452:
	li $t0, 1
	sw $t0, -5888($fp)
label453:
	lw $ra, -4($fp)
	lw $v0, -5888($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -340
	li $t0, 17753
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
	li $t0, 48202
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
	li $t0, 9402
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
	li $t0, 8242
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
	li $t0, 22643
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
	li $t0, 0
	sw $t0, -148($fp)
	li $t0, 50857
	sw $t0, -152($fp)
	li $t0, 0
	lw $t1, -152($fp)
	sub $t0, $t0, $t1
	sw $t0, -156($fp)
	li $t0, 0
	lw $t1, -156($fp)
	sub $t0, $t0, $t1
	sw $t0, -160($fp)
	lw $t1, -160($fp)
	li $t2, 0
	bne $t1, $t2, label456
	j label455
label455:
	li $t0, 1
	sw $t0, -148($fp)
label456:
	lw $t0, 8($fp)
	sw $t0, -164($fp)
	lw $t0, -148($fp)
	lw $t1, -164($fp)
	add $t0, $t0, $t1
	sw $t0, -168($fp)
	addi $t0, $fp, -24
	sw $t0, -172($fp)
	li $t0, 2
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
	lw $t0, -168($fp)
	lw $t1, -188($fp)
	add $t0, $t0, $t1
	sw $t0, -192($fp)
	lw $t0, 4($fp)
	sw $t0, -196($fp)
	li $t0, 0
	lw $t1, -196($fp)
	sub $t0, $t0, $t1
	sw $t0, -200($fp)
	li $t0, 0
	lw $t1, -200($fp)
	sub $t0, $t0, $t1
	sw $t0, -204($fp)
	addi $t0, $fp, -24
	sw $t0, -208($fp)
	li $t0, 4
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
	li $t0, 39962
	sw $t0, -228($fp)
	lw $t0, -224($fp)
	lw $t1, -228($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -232($fp)
	addi $sp, $sp, -4
	lw $t0, -204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -232($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -236($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -24
	sw $t0, -240($fp)
	li $t0, 0
	sw $t0, -244($fp)
	li $t0, 4
	lw $t1, -244($fp)
	mul $t0, $t0, $t1
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	lw $t1, -240($fp)
	add $t0, $t0, $t1
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	lw $t1, 0($t0)
	sw $t1, -256($fp)
	lw $t0, -256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -260($fp)
	li $t0, 1
	sw $t0, -264($fp)
	li $t0, 4
	lw $t1, -264($fp)
	mul $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	lw $t1, -260($fp)
	add $t0, $t0, $t1
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	lw $t1, 0($t0)
	sw $t1, -276($fp)
	lw $t0, -276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -280($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -300($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -320($fp)
	li $t0, 4
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
	lw $t0, 8($fp)
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -344($fp)
	lw $ra, -4($fp)
	lw $v0, -344($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -5160
	li $t0, 21482
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	li $t0, 50266
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	li $t0, 8002
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	li $t0, 24597
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	li $t0, 64850
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	li $t0, 6370
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	li $t0, 37157
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	li $t0, 48200
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	li $t0, 28497
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	li $t0, 16439
	sw $t0, -180($fp)
	addi $t0, $fp, -16
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
	li $t0, 45176
	sw $t0, -204($fp)
	addi $t0, $fp, -16
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
	li $t0, 52036
	sw $t0, -228($fp)
	addi $t0, $fp, -16
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
	li $t0, 29191
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	li $t0, 8198
	sw $t0, -264($fp)
	addi $t0, $fp, -24
	sw $t0, -268($fp)
	li $t0, 0
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
	li $t0, 59982
	sw $t0, -288($fp)
	addi $t0, $fp, -24
	sw $t0, -292($fp)
	li $t0, 1
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
	li $t0, 42183
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	li $t0, 18412
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	li $t0, 14844
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	li $t0, 28888
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	li $t0, 36165
	sw $t0, -360($fp)
	addi $t0, $fp, -48
	sw $t0, -364($fp)
	li $t0, 0
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
	li $t0, 63046
	sw $t0, -384($fp)
	addi $t0, $fp, -48
	sw $t0, -388($fp)
	li $t0, 1
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
	li $t0, 38291
	sw $t0, -408($fp)
	addi $t0, $fp, -48
	sw $t0, -412($fp)
	li $t0, 2
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
	li $t0, 44408
	sw $t0, -432($fp)
	addi $t0, $fp, -48
	sw $t0, -436($fp)
	li $t0, 3
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
	li $t0, 20153
	sw $t0, -456($fp)
	addi $t0, $fp, -48
	sw $t0, -460($fp)
	li $t0, 4
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
	li $t0, 23612
	sw $t0, -480($fp)
	addi $t0, $fp, -48
	sw $t0, -484($fp)
	li $t0, 5
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
	li $t0, 4390
	sw $t0, -504($fp)
	addi $t0, $fp, -68
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
	li $t0, 21691
	sw $t0, -528($fp)
	addi $t0, $fp, -68
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
	li $t0, 20441
	sw $t0, -552($fp)
	addi $t0, $fp, -68
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
	li $t0, 2575
	sw $t0, -576($fp)
	addi $t0, $fp, -68
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
	li $t0, 38747
	sw $t0, -600($fp)
	addi $t0, $fp, -68
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
	li $t0, 60404
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	li $t0, 24057
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	li $t0, 23477
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	li $t0, 2870
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	li $t0, 0
	sw $t0, -672($fp)
	li $t0, 48654
	sw $t0, -676($fp)
	li $t0, 22791
	sw $t0, -680($fp)
	lw $t0, -676($fp)
	lw $t1, -680($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -684($fp)
	lw $t0, -76($fp)
	sw $t0, -688($fp)
	lw $t0, -684($fp)
	lw $t1, -688($fp)
	add $t0, $t0, $t1
	sw $t0, -692($fp)
	lw $t0, -148($fp)
	sw $t0, -696($fp)
	li $t0, 0
	lw $t1, -696($fp)
	sub $t0, $t0, $t1
	sw $t0, -700($fp)
	li $t0, 0
	lw $t1, -700($fp)
	sub $t0, $t0, $t1
	sw $t0, -704($fp)
	li $t0, 0
	sw $t0, -708($fp)
	li $t0, 9241
	sw $t0, -712($fp)
	li $t0, 20276
	sw $t0, -716($fp)
	lw $t0, -712($fp)
	lw $t1, -716($fp)
	mul $t0, $t0, $t1
	sw $t0, -720($fp)
	li $t0, 5455
	sw $t0, -724($fp)
	lw $t1, -720($fp)
	lw $t2, -724($fp)
	bgt $t1, $t2, label461
	j label462
label461:
	li $t0, 1
	sw $t0, -708($fp)
label462:
	addi $sp, $sp, -4
	lw $t0, -704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -708($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -728($fp)
	addi $sp, $sp, 12
	lw $t0, -692($fp)
	lw $t1, -728($fp)
	add $t0, $t0, $t1
	sw $t0, -732($fp)
	lw $t1, -732($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label460
label460:
	addi $t0, $fp, -48
	sw $t0, -736($fp)
	lw $t0, 4($fp)
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
	li $t0, 0
	sw $t0, -756($fp)
	lw $t0, -316($fp)
	sw $t0, -760($fp)
	li $t0, 11706
	sw $t0, -764($fp)
	lw $t0, -760($fp)
	lw $t1, -764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -768($fp)
	lw $t0, -88($fp)
	sw $t0, -772($fp)
	lw $t1, -768($fp)
	lw $t2, -772($fp)
	beq $t1, $t2, label463
	j label464
label463:
	li $t0, 1
	sw $t0, -756($fp)
label464:
	lw $t0, -256($fp)
	sw $t0, -776($fp)
	li $t0, 0
	sw $t0, -780($fp)
	li $t0, 0
	sw $t0, -784($fp)
	li $t0, 42554
	sw $t0, -788($fp)
	lw $t0, -148($fp)
	sw $t0, -792($fp)
	lw $t1, -788($fp)
	lw $t2, -792($fp)
	bge $t1, $t2, label467
	j label468
label467:
	li $t0, 1
	sw $t0, -784($fp)
label468:
	lw $t0, -328($fp)
	sw $t0, -796($fp)
	lw $t1, -784($fp)
	lw $t2, -796($fp)
	bgt $t1, $t2, label465
	j label466
label465:
	li $t0, 1
	sw $t0, -780($fp)
label466:
	li $t0, 0
	sw $t0, -800($fp)
	li $t0, 58830
	sw $t0, -804($fp)
	lw $t1, -804($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label471
label471:
	li $t0, 18684
	sw $t0, -808($fp)
	lw $t1, -808($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label470
label469:
	li $t0, 1
	sw $t0, -800($fp)
label470:
	li $t0, 0
	sw $t0, -812($fp)
	li $t0, 0
	sw $t0, -816($fp)
	li $t0, 370
	sw $t0, -820($fp)
	lw $t1, -820($fp)
	li $t2, 0
	bne $t1, $t2, label475
	j label474
label474:
	li $t0, 1
	sw $t0, -816($fp)
label475:
	lw $t0, 20($fp)
	sw $t0, -824($fp)
	lw $t1, -816($fp)
	lw $t2, -824($fp)
	bne $t1, $t2, label472
	j label473
label472:
	li $t0, 1
	sw $t0, -812($fp)
label473:
	lw $t0, -256($fp)
	sw $t0, -828($fp)
	li $t0, 24238
	sw $t0, -832($fp)
	lw $t0, -828($fp)
	lw $t1, -832($fp)
	add $t0, $t0, $t1
	sw $t0, -836($fp)
	addi $sp, $sp, -4
	lw $t0, -776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -836($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -840($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -844($fp)
	lw $t0, -652($fp)
	sw $t0, -848($fp)
	li $t0, 0
	lw $t1, -848($fp)
	sub $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t1, -852($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label478
label478:
	li $t0, 50632
	sw $t0, -856($fp)
	lw $t1, -856($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label477
label476:
	li $t0, 1
	sw $t0, -844($fp)
label477:
	li $t0, 0
	sw $t0, -860($fp)
	li $t0, 37738
	sw $t0, -864($fp)
	li $t0, 36715
	sw $t0, -868($fp)
	lw $t1, -864($fp)
	lw $t2, -868($fp)
	beq $t1, $t2, label479
	j label480
label479:
	li $t0, 1
	sw $t0, -860($fp)
label480:
	addi $sp, $sp, -4
	lw $t0, -752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -860($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -872($fp)
	addi $sp, $sp, 24
	lw $t1, -872($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label459
label459:
	lw $t0, -352($fp)
	sw $t0, -876($fp)
	lw $t1, -876($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label458
label457:
	li $t0, 1
	sw $t0, -672($fp)
label458:
	li $t0, 33528
	sw $t0, -972($fp)
	addi $t0, $fp, -896
	sw $t0, -976($fp)
	li $t0, 0
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
	li $t0, 5906
	sw $t0, -996($fp)
	addi $t0, $fp, -896
	sw $t0, -1000($fp)
	li $t0, 1
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
	li $t0, 47872
	sw $t0, -1020($fp)
	addi $t0, $fp, -896
	sw $t0, -1024($fp)
	li $t0, 2
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
	li $t0, 31038
	sw $t0, -1044($fp)
	addi $t0, $fp, -896
	sw $t0, -1048($fp)
	li $t0, 3
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
	li $t0, 44197
	sw $t0, -1068($fp)
	addi $t0, $fp, -896
	sw $t0, -1072($fp)
	li $t0, 4
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
	li $t0, 26744
	sw $t0, -1092($fp)
	addi $t0, $fp, -900
	sw $t0, -1096($fp)
	li $t0, 0
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
	li $t0, 51191
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	sw $t0, -1124($fp)
	li $t0, 2273
	sw $t0, -1128($fp)
	addi $t0, $fp, -940
	sw $t0, -1132($fp)
	li $t0, 0
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
	li $t0, 31134
	sw $t0, -1152($fp)
	addi $t0, $fp, -940
	sw $t0, -1156($fp)
	li $t0, 1
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
	li $t0, 7346
	sw $t0, -1176($fp)
	addi $t0, $fp, -940
	sw $t0, -1180($fp)
	li $t0, 2
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
	li $t0, 22715
	sw $t0, -1200($fp)
	addi $t0, $fp, -940
	sw $t0, -1204($fp)
	li $t0, 3
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
	li $t0, 33709
	sw $t0, -1224($fp)
	addi $t0, $fp, -940
	sw $t0, -1228($fp)
	li $t0, 4
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
	li $t0, 46093
	sw $t0, -1248($fp)
	addi $t0, $fp, -940
	sw $t0, -1252($fp)
	li $t0, 5
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
	li $t0, 17583
	sw $t0, -1272($fp)
	addi $t0, $fp, -940
	sw $t0, -1276($fp)
	li $t0, 6
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
	li $t0, 57767
	sw $t0, -1296($fp)
	addi $t0, $fp, -940
	sw $t0, -1300($fp)
	li $t0, 7
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
	li $t0, 4035
	sw $t0, -1320($fp)
	addi $t0, $fp, -940
	sw $t0, -1324($fp)
	li $t0, 8
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
	li $t0, 20453
	sw $t0, -1344($fp)
	addi $t0, $fp, -940
	sw $t0, -1348($fp)
	li $t0, 9
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
	li $t0, 40885
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -1376($fp)
	li $t0, 26826
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1388($fp)
	li $t0, 29694
	sw $t0, -1392($fp)
	addi $t0, $fp, -968
	sw $t0, -1396($fp)
	li $t0, 0
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
	li $t0, 61161
	sw $t0, -1416($fp)
	addi $t0, $fp, -968
	sw $t0, -1420($fp)
	li $t0, 1
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
	li $t0, 32282
	sw $t0, -1440($fp)
	addi $t0, $fp, -968
	sw $t0, -1444($fp)
	li $t0, 2
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
	li $t0, 1896
	sw $t0, -1464($fp)
	addi $t0, $fp, -968
	sw $t0, -1468($fp)
	li $t0, 3
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
	li $t0, 32340
	sw $t0, -1488($fp)
	addi $t0, $fp, -968
	sw $t0, -1492($fp)
	li $t0, 4
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1500($fp)
	lw $t0, -1492($fp)
	lw $t1, -1500($fp)
	add $t0, $t0, $t1
	sw $t0, -1504($fp)
	lw $t0, -1488($fp)
	lw $t1, -1504($fp)
	sw $t0, 0($t1)
	lw $t0, -1504($fp)
	lw $t1, 0($t0)
	sw $t1, -1508($fp)
	li $t0, 17378
	sw $t0, -1512($fp)
	addi $t0, $fp, -968
	sw $t0, -1516($fp)
	li $t0, 5
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t0, -1516($fp)
	lw $t1, -1524($fp)
	add $t0, $t0, $t1
	sw $t0, -1528($fp)
	lw $t0, -1512($fp)
	lw $t1, -1528($fp)
	sw $t0, 0($t1)
	lw $t0, -1528($fp)
	lw $t1, 0($t0)
	sw $t1, -1532($fp)
	li $t0, 26134
	sw $t0, -1536($fp)
	addi $t0, $fp, -968
	sw $t0, -1540($fp)
	li $t0, 6
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $t0, -1540($fp)
	lw $t1, -1548($fp)
	add $t0, $t0, $t1
	sw $t0, -1552($fp)
	lw $t0, -1536($fp)
	lw $t1, -1552($fp)
	sw $t0, 0($t1)
	lw $t0, -1552($fp)
	lw $t1, 0($t0)
	sw $t1, -1556($fp)
	li $t0, 32711
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	sw $t0, -1568($fp)
	li $t0, 0
	sw $t0, -1572($fp)
	li $t0, 0
	sw $t0, -1576($fp)
	li $t0, 0
	sw $t0, -1580($fp)
	lw $t0, -1564($fp)
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -1588($fp)
	lw $t0, -76($fp)
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -1596($fp)
	addi $sp, $sp, -4
	lw $t0, -1588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1596($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1600($fp)
	addi $sp, $sp, 12
	li $t0, 59833
	sw $t0, -1604($fp)
	lw $t1, -1600($fp)
	lw $t2, -1604($fp)
	beq $t1, $t2, label485
	j label486
label485:
	li $t0, 1
	sw $t0, -1580($fp)
label486:
	li $t0, 0
	sw $t0, -1608($fp)
	lw $t0, -316($fp)
	sw $t0, -1612($fp)
	lw $t0, -640($fp)
	sw $t0, -1616($fp)
	lw $t0, -1612($fp)
	lw $t1, -1616($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1620($fp)
	lw $t1, -1620($fp)
	li $t2, 0
	bne $t1, $t2, label489
	j label488
label489:
	lw $t0, -88($fp)
	sw $t0, -1624($fp)
	lw $t1, -1624($fp)
	li $t2, 0
	bne $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -1608($fp)
label488:
	li $t0, 4715
	sw $t0, -1628($fp)
	lw $t0, -340($fp)
	sw $t0, -1632($fp)
	lw $t0, -1628($fp)
	lw $t1, -1632($fp)
	add $t0, $t0, $t1
	sw $t0, -1636($fp)
	li $t0, 43848
	sw $t0, -1640($fp)
	lw $t0, -1636($fp)
	lw $t1, -1640($fp)
	sub $t0, $t0, $t1
	sw $t0, -1644($fp)
	li $t0, 15635
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1652($fp)
	li $t0, 22379
	sw $t0, -1656($fp)
	li $t0, 0
	sw $t0, -1660($fp)
	li $t0, 44818
	sw $t0, -1664($fp)
	li $t0, 9729
	sw $t0, -1668($fp)
	lw $t0, -1664($fp)
	lw $t1, -1668($fp)
	mul $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $t1, -1672($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label491
label492:
	lw $t0, -340($fp)
	sw $t0, -1676($fp)
	lw $t1, -1676($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label491
label490:
	li $t0, 1
	sw $t0, -1660($fp)
label491:
	li $t0, 0
	sw $t0, -1680($fp)
	lw $t0, -340($fp)
	sw $t0, -1684($fp)
	li $t0, 0
	lw $t1, -1684($fp)
	sub $t0, $t0, $t1
	sw $t0, -1688($fp)
	li $t0, 10672
	sw $t0, -1692($fp)
	lw $t1, -1688($fp)
	lw $t2, -1692($fp)
	bge $t1, $t2, label493
	j label494
label493:
	li $t0, 1
	sw $t0, -1680($fp)
label494:
	addi $sp, $sp, -4
	lw $t0, -1656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1680($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1696($fp)
	addi $sp, $sp, 16
	li $t0, 12810
	sw $t0, -1700($fp)
	lw $t0, -1696($fp)
	lw $t1, -1700($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1704($fp)
	addi $sp, $sp, -4
	lw $t0, -1580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1704($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -1708($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -968
	sw $t0, -1712($fp)
	li $t0, 1
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
	li $t0, 0
	lw $t1, -1728($fp)
	sub $t0, $t0, $t1
	sw $t0, -1732($fp)
	lw $t1, -1708($fp)
	lw $t2, -1732($fp)
	bgt $t1, $t2, label483
	j label484
label483:
	li $t0, 1
	sw $t0, -1576($fp)
label484:
	li $t0, 0
	sw $t0, -1736($fp)
	li $t0, 62106
	sw $t0, -1740($fp)
	lw $t0, -256($fp)
	sw $t0, -1744($fp)
	lw $t0, -1740($fp)
	lw $t1, -1744($fp)
	mul $t0, $t0, $t1
	sw $t0, -1748($fp)
	lw $t0, 20($fp)
	sw $t0, -1752($fp)
	lw $t0, -1748($fp)
	lw $t1, -1752($fp)
	mul $t0, $t0, $t1
	sw $t0, -1756($fp)
	li $t0, 62593
	sw $t0, -1760($fp)
	lw $t0, -1120($fp)
	sw $t0, -1764($fp)
	lw $t0, -1760($fp)
	lw $t1, -1764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1768($fp)
	lw $t1, -1756($fp)
	lw $t2, -1768($fp)
	bge $t1, $t2, label495
	j label496
label495:
	li $t0, 1
	sw $t0, -1736($fp)
label496:
	lw $t1, -1576($fp)
	lw $t2, -1736($fp)
	beq $t1, $t2, label481
	j label482
label481:
	li $t0, 1
	sw $t0, -1572($fp)
label482:
	li $t0, 36850
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	sw $t0, -1800($fp)
	li $t0, 19285
	sw $t0, -1804($fp)
	addi $t0, $fp, -1788
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
	li $t0, 30766
	sw $t0, -1828($fp)
	addi $t0, $fp, -1788
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
	li $t0, 17408
	sw $t0, -1852($fp)
	addi $t0, $fp, -1788
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
	li $t0, 36868
	sw $t0, -1876($fp)
	addi $t0, $fp, -1788
	sw $t0, -1880($fp)
	li $t0, 3
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1888($fp)
	lw $t0, -1880($fp)
	lw $t1, -1888($fp)
	add $t0, $t0, $t1
	sw $t0, -1892($fp)
	lw $t0, -1876($fp)
	lw $t1, -1892($fp)
	sw $t0, 0($t1)
	lw $t0, -1892($fp)
	lw $t1, 0($t0)
	sw $t1, -1896($fp)
	li $t0, 22997
	sw $t0, -1900($fp)
	addi $t0, $fp, -1788
	sw $t0, -1904($fp)
	li $t0, 4
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
	li $t0, 21443
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	sw $t0, -1932($fp)
	li $t0, 57322
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	sw $t0, -1944($fp)
	addi $t0, $fp, -48
	sw $t0, -1948($fp)
	li $t0, 0
	sw $t0, -1952($fp)
	li $t0, 0
	sw $t0, -1956($fp)
	addi $t0, $fp, -1788
	sw $t0, -1960($fp)
	lw $t0, -136($fp)
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
	lw $t0, -1940($fp)
	sw $t0, -1980($fp)
	lw $t0, -1976($fp)
	lw $t1, -1980($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1984($fp)
	addi $t0, $fp, -48
	sw $t0, -1988($fp)
	lw $t0, -340($fp)
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
	addi $sp, $sp, -4
	lw $t0, -1984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2004($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2008($fp)
	addi $sp, $sp, 12
	lw $t0, -340($fp)
	sw $t0, -2012($fp)
	lw $t1, -2008($fp)
	lw $t2, -2012($fp)
	beq $t1, $t2, label502
	j label503
label502:
	li $t0, 1
	sw $t0, -1956($fp)
label503:
	addi $t0, $fp, -16
	sw $t0, -2016($fp)
	li $t0, 1
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
	lw $t1, -1956($fp)
	lw $t2, -2032($fp)
	bne $t1, $t2, label500
	j label501
label500:
	li $t0, 1
	sw $t0, -1952($fp)
label501:
	li $t0, 4
	lw $t1, -1952($fp)
	mul $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	lw $t1, -1948($fp)
	add $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	lw $t1, 0($t0)
	sw $t1, -2044($fp)
	lw $t1, -2044($fp)
	li $t2, 0
	bne $t1, $t2, label497
	j label498
label497:
	addi $t0, $fp, -48
	sw $t0, -2048($fp)
	li $t0, 4
	sw $t0, -2052($fp)
	li $t0, 4
	lw $t1, -2052($fp)
	mul $t0, $t0, $t1
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	lw $t1, -2048($fp)
	add $t0, $t0, $t1
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	lw $t1, 0($t0)
	sw $t1, -2064($fp)
	li $t0, 0
	sw $t0, -2068($fp)
	li $t0, 15015
	sw $t0, -2072($fp)
	li $t0, 0
	lw $t1, -2072($fp)
	sub $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t1, -2076($fp)
	li $t2, 0
	bne $t1, $t2, label505
	j label504
label504:
	li $t0, 1
	sw $t0, -2068($fp)
label505:
	li $t0, 0
	sw $t0, -2080($fp)
	li $t0, 23377
	sw $t0, -2084($fp)
	lw $t1, -2084($fp)
	li $t2, 0
	bne $t1, $t2, label508
	j label507
label508:
	addi $t0, $fp, -16
	sw $t0, -2088($fp)
	li $t0, 1
	sw $t0, -2092($fp)
	li $t0, 4
	lw $t1, -2092($fp)
	mul $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	lw $t1, -2088($fp)
	add $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	lw $t1, 0($t0)
	sw $t1, -2104($fp)
	li $t0, 49511
	sw $t0, -2108($fp)
	li $t0, 1
	sw $t0, -2112($fp)
	lw $t0, -2108($fp)
	lw $t1, -2112($fp)
	mul $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t0, -2104($fp)
	lw $t1, -2116($fp)
	sub $t0, $t0, $t1
	sw $t0, -2120($fp)
	lw $t1, -2120($fp)
	li $t2, 0
	bne $t1, $t2, label506
	j label507
label506:
	li $t0, 1
	sw $t0, -2080($fp)
label507:
	j label499
label498:
	li $t0, 0
	sw $t0, -2124($fp)
	li $t0, 0
	sw $t0, -2128($fp)
	lw $t0, -1796($fp)
	sw $t0, -2132($fp)
	li $t0, 0
	sw $t0, -2136($fp)
	li $t0, 0
	sw $t0, -2140($fp)
	lw $t0, -1928($fp)
	sw $t0, -2144($fp)
	lw $t0, -112($fp)
	sw $t0, -2148($fp)
	lw $t1, -2144($fp)
	lw $t2, -2148($fp)
	bge $t1, $t2, label515
	j label516
label515:
	li $t0, 1
	sw $t0, -2140($fp)
label516:
	li $t0, 43066
	sw $t0, -2152($fp)
	li $t0, 28794
	sw $t0, -2156($fp)
	lw $t0, -2152($fp)
	lw $t1, -2156($fp)
	sub $t0, $t0, $t1
	sw $t0, -2160($fp)
	lw $t0, -664($fp)
	sw $t0, -2164($fp)
	lw $t0, -2160($fp)
	lw $t1, -2164($fp)
	add $t0, $t0, $t1
	sw $t0, -2168($fp)
	addi $sp, $sp, -4
	lw $t0, -2140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2168($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2172($fp)
	addi $sp, $sp, 12
	lw $t0, -1372($fp)
	sw $t0, -2176($fp)
	lw $t1, -2172($fp)
	lw $t2, -2176($fp)
	blt $t1, $t2, label513
	j label514
label513:
	li $t0, 1
	sw $t0, -2136($fp)
label514:
	lw $t1, -2132($fp)
	lw $t2, -2136($fp)
	beq $t1, $t2, label511
	j label512
label511:
	li $t0, 1
	sw $t0, -2128($fp)
label512:
	lw $t0, -340($fp)
	sw $t0, -2180($fp)
	lw $t1, -2128($fp)
	lw $t2, -2180($fp)
	bne $t1, $t2, label509
	j label510
label509:
	li $t0, 1
	sw $t0, -2124($fp)
label510:
label499:
	lw $t0, -1796($fp)
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1788
	sw $t0, -2188($fp)
	li $t0, 0
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
	addi $t0, $fp, -1788
	sw $t0, -2208($fp)
	li $t0, 1
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
	addi $t0, $fp, -1788
	sw $t0, -2228($fp)
	li $t0, 2
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
	addi $t0, $fp, -1788
	sw $t0, -2248($fp)
	li $t0, 3
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
	addi $t0, $fp, -1788
	sw $t0, -2268($fp)
	li $t0, 4
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
	lw $t0, -1928($fp)
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1940($fp)
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 3217
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -2300($fp)
	lw $ra, -4($fp)
	lw $v0, -2300($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 65445
	sw $t0, -2316($fp)
	addi $t0, $fp, -2312
	sw $t0, -2320($fp)
	li $t0, 0
	sw $t0, -2324($fp)
	lw $t0, -2324($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t0, -2320($fp)
	lw $t1, -2328($fp)
	add $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t0, -2316($fp)
	lw $t1, -2332($fp)
	sw $t0, 0($t1)
	lw $t0, -2332($fp)
	lw $t1, 0($t0)
	sw $t1, -2336($fp)
	li $t0, 41604
	sw $t0, -2340($fp)
	addi $t0, $fp, -2312
	sw $t0, -2344($fp)
	li $t0, 1
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2352($fp)
	lw $t0, -2344($fp)
	lw $t1, -2352($fp)
	add $t0, $t0, $t1
	sw $t0, -2356($fp)
	lw $t0, -2340($fp)
	lw $t1, -2356($fp)
	sw $t0, 0($t1)
	lw $t0, -2356($fp)
	lw $t1, 0($t0)
	sw $t1, -2360($fp)
	li $t0, 18852
	sw $t0, -2364($fp)
	addi $t0, $fp, -2312
	sw $t0, -2368($fp)
	li $t0, 2
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2376($fp)
	lw $t0, -2368($fp)
	lw $t1, -2376($fp)
	add $t0, $t0, $t1
	sw $t0, -2380($fp)
	lw $t0, -2364($fp)
	lw $t1, -2380($fp)
	sw $t0, 0($t1)
	lw $t0, -2380($fp)
	lw $t1, 0($t0)
	sw $t1, -2384($fp)
	li $t0, 4624
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	sw $t0, -2396($fp)
	li $t0, 0
	sw $t0, -2400($fp)
	li $t0, 49421
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	sw $t0, -2408($fp)
	li $t0, 0
	sw $t0, -2412($fp)
	li $t0, 13149
	sw $t0, -2416($fp)
	lw $t0, 20($fp)
	sw $t0, -2420($fp)
	lw $t1, -2416($fp)
	lw $t2, -2420($fp)
	bne $t1, $t2, label521
	j label520
label521:
	li $t0, 36083
	sw $t0, -2424($fp)
	lw $t1, -2424($fp)
	li $t2, 0
	bne $t1, $t2, label519
	j label520
label519:
	li $t0, 1
	sw $t0, -2412($fp)
label520:
	lw $t0, 16($fp)
	sw $t0, -2428($fp)
	li $t0, 19917
	sw $t0, -2432($fp)
	lw $t0, -2428($fp)
	lw $t1, -2432($fp)
	mul $t0, $t0, $t1
	sw $t0, -2436($fp)
	li $t0, 0
	lw $t1, -2436($fp)
	sub $t0, $t0, $t1
	sw $t0, -2440($fp)
	addi $sp, $sp, -4
	lw $t0, -2408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2440($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2444($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -2444($fp)
	sub $t0, $t0, $t1
	sw $t0, -2448($fp)
	li $t0, 0
	lw $t1, -2448($fp)
	sub $t0, $t0, $t1
	sw $t0, -2452($fp)
	li $t0, 9720
	sw $t0, -2456($fp)
	lw $t1, -2452($fp)
	lw $t2, -2456($fp)
	beq $t1, $t2, label517
	j label518
label517:
	li $t0, 1
	sw $t0, -2400($fp)
label518:
	lw $t0, -2392($fp)
	sw $t0, -2460($fp)
	lw $t0, -328($fp)
	sw $t0, -2464($fp)
	li $t0, 63906
	sw $t0, -2468($fp)
	lw $t0, -2464($fp)
	lw $t1, -2468($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2472($fp)
	addi $t0, $fp, -48
	sw $t0, -2476($fp)
	li $t0, 1
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
	li $t0, 33140
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -2500($fp)
	addi $sp, $sp, -4
	lw $t0, -2472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2500($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2504($fp)
	addi $sp, $sp, 16
	lw $t0, -2460($fp)
	lw $t1, -2504($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2508($fp)
	li $t0, 0
	sw $t0, -2512($fp)
	addi $t0, $fp, -48
	sw $t0, -2516($fp)
	lw $t0, -256($fp)
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
	lw $t1, -2532($fp)
	li $t2, 0
	bne $t1, $t2, label523
	j label522
label522:
	li $t0, 1
	sw $t0, -2512($fp)
label523:
	lw $t0, -2508($fp)
	lw $t1, -2512($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2536($fp)
	addi $t0, $fp, -2312
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
	addi $t0, $fp, -48
	sw $t0, -2560($fp)
	lw $t0, -340($fp)
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
	lw $t0, -2556($fp)
	lw $t1, -2576($fp)
	add $t0, $t0, $t1
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -2584($fp)
label524:
	addi $t0, $fp, -16
	sw $t0, -2588($fp)
	addi $t0, $fp, -896
	sw $t0, -2592($fp)
	li $t0, 4
	sw $t0, -2596($fp)
	li $t0, 4
	lw $t1, -2596($fp)
	mul $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $t0, -2600($fp)
	lw $t1, -2592($fp)
	add $t0, $t0, $t1
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	lw $t1, 0($t0)
	sw $t1, -2608($fp)
	li $t0, 0
	lw $t1, -2608($fp)
	sub $t0, $t0, $t1
	sw $t0, -2612($fp)
	li $t0, 4
	lw $t1, -2612($fp)
	mul $t0, $t0, $t1
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	lw $t1, -2588($fp)
	add $t0, $t0, $t1
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	lw $t1, 0($t0)
	sw $t1, -2624($fp)
	li $t0, 57660
	sw $t0, -2628($fp)
	lw $t1, -2624($fp)
	lw $t2, -2628($fp)
	bgt $t1, $t2, label525
	j label526
label525:
	addi $t0, $fp, -940
	sw $t0, -2632($fp)
	lw $t0, -100($fp)
	sw $t0, -2636($fp)
	li $t0, 4
	lw $t1, -2636($fp)
	mul $t0, $t0, $t1
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	lw $t1, -2632($fp)
	add $t0, $t0, $t1
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	lw $t1, 0($t0)
	sw $t1, -2648($fp)
	li $t0, 0
	lw $t1, -2648($fp)
	sub $t0, $t0, $t1
	sw $t0, -2652($fp)
	lw $t1, -2652($fp)
	li $t2, 0
	bne $t1, $t2, label531
	j label530
label531:
	addi $t0, $fp, -896
	sw $t0, -2656($fp)
	li $t0, 4
	sw $t0, -2660($fp)
	li $t0, 4
	lw $t1, -2660($fp)
	mul $t0, $t0, $t1
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	lw $t1, -2656($fp)
	add $t0, $t0, $t1
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	lw $t1, 0($t0)
	sw $t1, -2672($fp)
	li $t0, 0
	lw $t1, -2672($fp)
	sub $t0, $t0, $t1
	sw $t0, -2676($fp)
	lw $t1, -2676($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label530
label530:
	li $t0, 0
	sw $t0, -2680($fp)
	lw $t0, -172($fp)
	sw $t0, -2684($fp)
	lw $t1, -2684($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label532
label532:
	li $t0, 1
	sw $t0, -2680($fp)
label533:
	li $t0, 0
	lw $t1, -2680($fp)
	sub $t0, $t0, $t1
	sw $t0, -2688($fp)
	li $t0, 13604
	sw $t0, -2692($fp)
	addi $sp, $sp, -4
	lw $t0, -2688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2692($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -2696($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2696($fp)
	sub $t0, $t0, $t1
	sw $t0, -2700($fp)
	lw $t1, -2700($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label528
label527:
	li $t0, 0
	sw $t0, -2704($fp)
	lw $t0, -256($fp)
	sw $t0, -2708($fp)
	lw $t1, -2708($fp)
	li $t2, 0
	bne $t1, $t2, label535
	j label534
label534:
	li $t0, 1
	sw $t0, -2704($fp)
label535:
	lw $ra, -4($fp)
	lw $v0, -2704($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label529
label528:
	li $t0, 13687
	sw $t0, -2732($fp)
	addi $t0, $fp, -2728
	sw $t0, -2736($fp)
	li $t0, 0
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
	li $t0, 57335
	sw $t0, -2756($fp)
	addi $t0, $fp, -2728
	sw $t0, -2760($fp)
	li $t0, 1
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
	li $t0, 36981
	sw $t0, -2780($fp)
	addi $t0, $fp, -2728
	sw $t0, -2784($fp)
	li $t0, 2
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
	li $t0, 40000
	sw $t0, -2804($fp)
	addi $t0, $fp, -2728
	sw $t0, -2808($fp)
	li $t0, 3
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
	li $t0, 24193
	sw $t0, -2828($fp)
	addi $t0, $fp, -2728
	sw $t0, -2832($fp)
	li $t0, 4
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
	li $t0, 20957
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	sw $t0, -2860($fp)
	li $t0, 33488
	sw $t0, -2864($fp)
	li $t0, 1723
	sw $t0, -2868($fp)
	li $t0, 49751
	sw $t0, -2872($fp)
	lw $t0, -2868($fp)
	lw $t1, -2872($fp)
	mul $t0, $t0, $t1
	sw $t0, -2876($fp)
	li $t0, 36705
	sw $t0, -2880($fp)
	lw $t0, -2876($fp)
	lw $t1, -2880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2884($fp)
	addi $sp, $sp, -4
	lw $t0, -2884($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2888($fp)
	addi $sp, $sp, 8
	lw $t0, -2864($fp)
	lw $t1, -2888($fp)
	mul $t0, $t0, $t1
	sw $t0, -2892($fp)
	li $t0, 0
	sw $t0, -2896($fp)
	lw $t0, -2856($fp)
	sw $t0, -2900($fp)
	li $t0, 45736
	sw $t0, -2904($fp)
	lw $t0, -2900($fp)
	lw $t1, -2904($fp)
	add $t0, $t0, $t1
	sw $t0, -2908($fp)
	li $t0, 6256
	sw $t0, -2912($fp)
	lw $t0, -2912($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -2916($fp)
	addi $t0, $fp, -2728
	sw $t0, -2920($fp)
	lw $t0, -1564($fp)
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
	li $t0, 0
	sw $t0, -2940($fp)
	addi $t0, $fp, -48
	sw $t0, -2944($fp)
	li $t0, 3
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
	li $t0, 55558
	sw $t0, -2964($fp)
	lw $t1, -2960($fp)
	lw $t2, -2964($fp)
	bne $t1, $t2, label538
	j label539
label538:
	li $t0, 1
	sw $t0, -2940($fp)
label539:
	li $t0, 0
	sw $t0, -2968($fp)
	addi $t0, $fp, -48
	sw $t0, -2972($fp)
	lw $t0, -652($fp)
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
	lw $t1, -2988($fp)
	li $t2, 0
	bne $t1, $t2, label541
	j label540
label540:
	li $t0, 1
	sw $t0, -2968($fp)
label541:
	addi $sp, $sp, -4
	lw $t0, -2908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2968($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2992($fp)
	addi $sp, $sp, 24
	jal f8
	sw $v0, -2996($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -2996($fp)
	sub $t0, $t0, $t1
	sw $t0, -3000($fp)
	addi $sp, $sp, -4
	lw $t0, -2992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3000($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -3004($fp)
	addi $sp, $sp, 12
	lw $t1, -3004($fp)
	li $t2, 0
	bne $t1, $t2, label537
	j label536
label536:
	li $t0, 1
	sw $t0, -2896($fp)
label537:
	addi $t0, $fp, -68
	sw $t0, -3008($fp)
	li $t0, 0
	sw $t0, -3012($fp)
	lw $t0, -1372($fp)
	sw $t0, -3016($fp)
	lw $t1, -3016($fp)
	li $t2, 0
	bne $t1, $t2, label543
	j label542
label542:
	li $t0, 1
	sw $t0, -3012($fp)
label543:
	li $t0, 4
	lw $t1, -3012($fp)
	mul $t0, $t0, $t1
	sw $t0, -3020($fp)
	lw $t0, -3020($fp)
	lw $t1, -3008($fp)
	add $t0, $t0, $t1
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	lw $t1, 0($t0)
	sw $t1, -3028($fp)
	lw $t0, -2896($fp)
	lw $t1, -3028($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3032($fp)
	li $t0, 3171
	sw $t0, -3036($fp)
label529:
	j label524
label526:
	addi $t0, $fp, -896
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
	addi $t0, $fp, -896
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
	addi $t0, $fp, -896
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
	addi $t0, $fp, -896
	sw $t0, -3100($fp)
	li $t0, 3
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
	addi $t0, $fp, -896
	sw $t0, -3120($fp)
	li $t0, 4
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
	addi $t0, $fp, -900
	sw $t0, -3140($fp)
	li $t0, 0
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
	lw $t0, -1120($fp)
	sw $t0, -3160($fp)
	lw $t0, -3160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -940
	sw $t0, -3164($fp)
	li $t0, 0
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
	addi $t0, $fp, -940
	sw $t0, -3184($fp)
	li $t0, 1
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
	addi $t0, $fp, -940
	sw $t0, -3204($fp)
	li $t0, 2
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
	addi $t0, $fp, -940
	sw $t0, -3224($fp)
	li $t0, 3
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
	addi $t0, $fp, -940
	sw $t0, -3244($fp)
	li $t0, 4
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
	addi $t0, $fp, -940
	sw $t0, -3264($fp)
	li $t0, 5
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
	addi $t0, $fp, -940
	sw $t0, -3284($fp)
	li $t0, 6
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
	addi $t0, $fp, -940
	sw $t0, -3304($fp)
	li $t0, 7
	sw $t0, -3308($fp)
	li $t0, 4
	lw $t1, -3308($fp)
	mul $t0, $t0, $t1
	sw $t0, -3312($fp)
	lw $t0, -3312($fp)
	lw $t1, -3304($fp)
	add $t0, $t0, $t1
	sw $t0, -3316($fp)
	lw $t0, -3316($fp)
	lw $t1, 0($t0)
	sw $t1, -3320($fp)
	lw $t0, -3320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -940
	sw $t0, -3324($fp)
	li $t0, 8
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
	lw $t0, -3340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -940
	sw $t0, -3344($fp)
	li $t0, 9
	sw $t0, -3348($fp)
	li $t0, 4
	lw $t1, -3348($fp)
	mul $t0, $t0, $t1
	sw $t0, -3352($fp)
	lw $t0, -3352($fp)
	lw $t1, -3344($fp)
	add $t0, $t0, $t1
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	lw $t1, 0($t0)
	sw $t1, -3360($fp)
	lw $t0, -3360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1372($fp)
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1384($fp)
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -968
	sw $t0, -3372($fp)
	li $t0, 0
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
	addi $t0, $fp, -968
	sw $t0, -3392($fp)
	li $t0, 1
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
	addi $t0, $fp, -968
	sw $t0, -3412($fp)
	li $t0, 2
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
	addi $t0, $fp, -968
	sw $t0, -3432($fp)
	li $t0, 3
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
	addi $t0, $fp, -968
	sw $t0, -3452($fp)
	li $t0, 4
	sw $t0, -3456($fp)
	li $t0, 4
	lw $t1, -3456($fp)
	mul $t0, $t0, $t1
	sw $t0, -3460($fp)
	lw $t0, -3460($fp)
	lw $t1, -3452($fp)
	add $t0, $t0, $t1
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	lw $t1, 0($t0)
	sw $t1, -3468($fp)
	lw $t0, -3468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -968
	sw $t0, -3472($fp)
	li $t0, 5
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
	lw $t0, -3488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -968
	sw $t0, -3492($fp)
	li $t0, 6
	sw $t0, -3496($fp)
	li $t0, 4
	lw $t1, -3496($fp)
	mul $t0, $t0, $t1
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	lw $t1, -3492($fp)
	add $t0, $t0, $t1
	sw $t0, -3504($fp)
	lw $t0, -3504($fp)
	lw $t1, 0($t0)
	sw $t1, -3508($fp)
	lw $t0, -3508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1564($fp)
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3516($fp)
	addi $t0, $fp, -48
	sw $t0, -3520($fp)
	li $t0, 42339
	sw $t0, -3524($fp)
	lw $t0, -1384($fp)
	sw $t0, -3528($fp)
	lw $t0, -3524($fp)
	lw $t1, -3528($fp)
	sub $t0, $t0, $t1
	sw $t0, -3532($fp)
	li $t0, 4
	lw $t1, -3532($fp)
	mul $t0, $t0, $t1
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	lw $t1, -3520($fp)
	add $t0, $t0, $t1
	sw $t0, -3540($fp)
	lw $t0, -3540($fp)
	lw $t1, 0($t0)
	sw $t1, -3544($fp)
	addi $t0, $fp, -16
	sw $t0, -3548($fp)
	lw $t0, -640($fp)
	sw $t0, -3552($fp)
	li $t0, 4
	lw $t1, -3552($fp)
	mul $t0, $t0, $t1
	sw $t0, -3556($fp)
	lw $t0, -3556($fp)
	lw $t1, -3548($fp)
	add $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t0, -3560($fp)
	lw $t1, 0($t0)
	sw $t1, -3564($fp)
	lw $t0, -3544($fp)
	lw $t1, -3564($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3568($fp)
	li $t0, 29621
	sw $t0, -3572($fp)
	lw $t1, -3568($fp)
	lw $t2, -3572($fp)
	bge $t1, $t2, label544
	j label545
label544:
	li $t0, 1
	sw $t0, -3516($fp)
label545:
	lw $ra, -4($fp)
	lw $v0, -3516($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -896
	sw $t0, -3576($fp)
	li $t0, 0
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
	lw $t0, -3592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -896
	sw $t0, -3596($fp)
	li $t0, 1
	sw $t0, -3600($fp)
	li $t0, 4
	lw $t1, -3600($fp)
	mul $t0, $t0, $t1
	sw $t0, -3604($fp)
	lw $t0, -3604($fp)
	lw $t1, -3596($fp)
	add $t0, $t0, $t1
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	lw $t1, 0($t0)
	sw $t1, -3612($fp)
	lw $t0, -3612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -896
	sw $t0, -3616($fp)
	li $t0, 2
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
	lw $t0, -3632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -896
	sw $t0, -3636($fp)
	li $t0, 3
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
	lw $t0, -3652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -896
	sw $t0, -3656($fp)
	li $t0, 4
	sw $t0, -3660($fp)
	li $t0, 4
	lw $t1, -3660($fp)
	mul $t0, $t0, $t1
	sw $t0, -3664($fp)
	lw $t0, -3664($fp)
	lw $t1, -3656($fp)
	add $t0, $t0, $t1
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	lw $t1, 0($t0)
	sw $t1, -3672($fp)
	lw $t0, -3672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -900
	sw $t0, -3676($fp)
	li $t0, 0
	sw $t0, -3680($fp)
	li $t0, 4
	lw $t1, -3680($fp)
	mul $t0, $t0, $t1
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	lw $t1, -3676($fp)
	add $t0, $t0, $t1
	sw $t0, -3688($fp)
	lw $t0, -3688($fp)
	lw $t1, 0($t0)
	sw $t1, -3692($fp)
	lw $t0, -3692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1120($fp)
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -940
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
	lw $t0, -3716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -940
	sw $t0, -3720($fp)
	li $t0, 1
	sw $t0, -3724($fp)
	li $t0, 4
	lw $t1, -3724($fp)
	mul $t0, $t0, $t1
	sw $t0, -3728($fp)
	lw $t0, -3728($fp)
	lw $t1, -3720($fp)
	add $t0, $t0, $t1
	sw $t0, -3732($fp)
	lw $t0, -3732($fp)
	lw $t1, 0($t0)
	sw $t1, -3736($fp)
	lw $t0, -3736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -940
	sw $t0, -3740($fp)
	li $t0, 2
	sw $t0, -3744($fp)
	li $t0, 4
	lw $t1, -3744($fp)
	mul $t0, $t0, $t1
	sw $t0, -3748($fp)
	lw $t0, -3748($fp)
	lw $t1, -3740($fp)
	add $t0, $t0, $t1
	sw $t0, -3752($fp)
	lw $t0, -3752($fp)
	lw $t1, 0($t0)
	sw $t1, -3756($fp)
	lw $t0, -3756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -940
	sw $t0, -3760($fp)
	li $t0, 3
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
	lw $t0, -3776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -940
	sw $t0, -3780($fp)
	li $t0, 4
	sw $t0, -3784($fp)
	li $t0, 4
	lw $t1, -3784($fp)
	mul $t0, $t0, $t1
	sw $t0, -3788($fp)
	lw $t0, -3788($fp)
	lw $t1, -3780($fp)
	add $t0, $t0, $t1
	sw $t0, -3792($fp)
	lw $t0, -3792($fp)
	lw $t1, 0($t0)
	sw $t1, -3796($fp)
	lw $t0, -3796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -940
	sw $t0, -3800($fp)
	li $t0, 5
	sw $t0, -3804($fp)
	li $t0, 4
	lw $t1, -3804($fp)
	mul $t0, $t0, $t1
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	lw $t1, -3800($fp)
	add $t0, $t0, $t1
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	lw $t1, 0($t0)
	sw $t1, -3816($fp)
	lw $t0, -3816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -940
	sw $t0, -3820($fp)
	li $t0, 6
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
	lw $t0, -3836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -940
	sw $t0, -3840($fp)
	li $t0, 7
	sw $t0, -3844($fp)
	li $t0, 4
	lw $t1, -3844($fp)
	mul $t0, $t0, $t1
	sw $t0, -3848($fp)
	lw $t0, -3848($fp)
	lw $t1, -3840($fp)
	add $t0, $t0, $t1
	sw $t0, -3852($fp)
	lw $t0, -3852($fp)
	lw $t1, 0($t0)
	sw $t1, -3856($fp)
	lw $t0, -3856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -940
	sw $t0, -3860($fp)
	li $t0, 8
	sw $t0, -3864($fp)
	li $t0, 4
	lw $t1, -3864($fp)
	mul $t0, $t0, $t1
	sw $t0, -3868($fp)
	lw $t0, -3868($fp)
	lw $t1, -3860($fp)
	add $t0, $t0, $t1
	sw $t0, -3872($fp)
	lw $t0, -3872($fp)
	lw $t1, 0($t0)
	sw $t1, -3876($fp)
	lw $t0, -3876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -940
	sw $t0, -3880($fp)
	li $t0, 9
	sw $t0, -3884($fp)
	li $t0, 4
	lw $t1, -3884($fp)
	mul $t0, $t0, $t1
	sw $t0, -3888($fp)
	lw $t0, -3888($fp)
	lw $t1, -3880($fp)
	add $t0, $t0, $t1
	sw $t0, -3892($fp)
	lw $t0, -3892($fp)
	lw $t1, 0($t0)
	sw $t1, -3896($fp)
	lw $t0, -3896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1372($fp)
	sw $t0, -3900($fp)
	lw $t0, -3900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1384($fp)
	sw $t0, -3904($fp)
	lw $t0, -3904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -968
	sw $t0, -3908($fp)
	li $t0, 0
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
	lw $t0, -3924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -968
	sw $t0, -3928($fp)
	li $t0, 1
	sw $t0, -3932($fp)
	li $t0, 4
	lw $t1, -3932($fp)
	mul $t0, $t0, $t1
	sw $t0, -3936($fp)
	lw $t0, -3936($fp)
	lw $t1, -3928($fp)
	add $t0, $t0, $t1
	sw $t0, -3940($fp)
	lw $t0, -3940($fp)
	lw $t1, 0($t0)
	sw $t1, -3944($fp)
	lw $t0, -3944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -968
	sw $t0, -3948($fp)
	li $t0, 2
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
	lw $t0, -3964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -968
	sw $t0, -3968($fp)
	li $t0, 3
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
	lw $t0, -3984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -968
	sw $t0, -3988($fp)
	li $t0, 4
	sw $t0, -3992($fp)
	li $t0, 4
	lw $t1, -3992($fp)
	mul $t0, $t0, $t1
	sw $t0, -3996($fp)
	lw $t0, -3996($fp)
	lw $t1, -3988($fp)
	add $t0, $t0, $t1
	sw $t0, -4000($fp)
	lw $t0, -4000($fp)
	lw $t1, 0($t0)
	sw $t1, -4004($fp)
	lw $t0, -4004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -968
	sw $t0, -4008($fp)
	li $t0, 5
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
	lw $t0, -4024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -968
	sw $t0, -4028($fp)
	li $t0, 6
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
	lw $t0, -4044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1564($fp)
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4052($fp)
	lw $t0, 20($fp)
	sw $t0, -4056($fp)
	li $t0, 0
	lw $t1, -4056($fp)
	sub $t0, $t0, $t1
	sw $t0, -4060($fp)
	lw $t0, 12($fp)
	sw $t0, -4064($fp)
	lw $t0, -4060($fp)
	lw $t1, -4064($fp)
	sub $t0, $t0, $t1
	sw $t0, -4068($fp)
	addi $sp, $sp, -4
	lw $t0, -4068($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4072($fp)
	addi $sp, $sp, 8
	lw $t0, 16($fp)
	sw $t0, -4076($fp)
	lw $t0, -4072($fp)
	lw $t1, -4076($fp)
	add $t0, $t0, $t1
	sw $t0, -4080($fp)
	li $t0, 0
	sw $t0, -4084($fp)
	addi $t0, $fp, -900
	sw $t0, -4088($fp)
	li $t0, 0
	sw $t0, -4092($fp)
	li $t0, 4
	lw $t1, -4092($fp)
	mul $t0, $t0, $t1
	sw $t0, -4096($fp)
	lw $t0, -4096($fp)
	lw $t1, -4088($fp)
	add $t0, $t0, $t1
	sw $t0, -4100($fp)
	lw $t0, -4100($fp)
	lw $t1, 0($t0)
	sw $t1, -4104($fp)
	lw $t1, -4104($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label548
label548:
	li $t0, 1
	sw $t0, -4084($fp)
label549:
	lw $t1, -4080($fp)
	lw $t2, -4084($fp)
	beq $t1, $t2, label546
	j label547
label546:
	li $t0, 1
	sw $t0, -4052($fp)
label547:
	lw $ra, -4($fp)
	lw $v0, -4052($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label550:
	li $t0, 0
	sw $t0, -4108($fp)
	lw $t0, -124($fp)
	sw $t0, -4112($fp)
	lw $t1, -4112($fp)
	li $t2, 0
	bne $t1, $t2, label554
	j label553
label553:
	li $t0, 1
	sw $t0, -4108($fp)
label554:
	li $t0, 50357
	sw $t0, -4116($fp)
	lw $t1, -4108($fp)
	lw $t2, -4116($fp)
	bge $t1, $t2, label551
	j label552
label551:
	li $t0, 0
	sw $t0, -4120($fp)
	li $t0, 0
	sw $t0, -4124($fp)
	li $t0, 0
	sw $t0, -4128($fp)
	lw $t0, -340($fp)
	sw $t0, -4132($fp)
	lw $t1, -4132($fp)
	li $t2, 0
	bne $t1, $t2, label560
	j label559
label559:
	li $t0, 1
	sw $t0, -4128($fp)
label560:
	li $t0, 0
	lw $t1, -4128($fp)
	sub $t0, $t0, $t1
	sw $t0, -4136($fp)
	li $t0, 0
	sw $t0, -4140($fp)
	lw $t0, 12($fp)
	sw $t0, -4144($fp)
	lw $t1, -4144($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label561
label561:
	li $t0, 1
	sw $t0, -4140($fp)
label562:
	lw $t0, -4136($fp)
	lw $t1, -4140($fp)
	add $t0, $t0, $t1
	sw $t0, -4148($fp)
	li $t0, 0
	sw $t0, -4152($fp)
	lw $t0, -160($fp)
	sw $t0, -4156($fp)
	lw $t0, 16($fp)
	sw $t0, -4160($fp)
	lw $t0, -4156($fp)
	lw $t1, -4160($fp)
	mul $t0, $t0, $t1
	sw $t0, -4164($fp)
	lw $t0, -628($fp)
	sw $t0, -4168($fp)
	lw $t1, -4164($fp)
	lw $t2, -4168($fp)
	bge $t1, $t2, label563
	j label564
label563:
	li $t0, 1
	sw $t0, -4152($fp)
label564:
	lw $t1, -4148($fp)
	lw $t2, -4152($fp)
	bne $t1, $t2, label557
	j label558
label557:
	li $t0, 1
	sw $t0, -4124($fp)
label558:
	li $t0, 41897
	sw $t0, -4172($fp)
	lw $t1, -4124($fp)
	lw $t2, -4172($fp)
	beq $t1, $t2, label555
	j label556
label555:
	li $t0, 1
	sw $t0, -4120($fp)
label556:
	lw $ra, -4($fp)
	lw $v0, -4120($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label550
label552:
label565:
	addi $t0, $fp, -48
	sw $t0, -4176($fp)
	li $t0, 0
	sw $t0, -4180($fp)
	lw $t0, -628($fp)
	sw $t0, -4184($fp)
	li $t0, 8313
	sw $t0, -4188($fp)
	lw $t1, -4184($fp)
	lw $t2, -4188($fp)
	beq $t1, $t2, label570
	j label569
label570:
	li $t0, 22964
	sw $t0, -4192($fp)
	lw $t1, -4192($fp)
	li $t2, 0
	bne $t1, $t2, label568
	j label569
label568:
	li $t0, 1
	sw $t0, -4180($fp)
label569:
	li $t0, 4
	lw $t1, -4180($fp)
	mul $t0, $t0, $t1
	sw $t0, -4196($fp)
	lw $t0, -4196($fp)
	lw $t1, -4176($fp)
	add $t0, $t0, $t1
	sw $t0, -4200($fp)
	lw $t0, -4200($fp)
	lw $t1, 0($t0)
	sw $t1, -4204($fp)
	li $t0, 0
	sw $t0, -4208($fp)
	addi $t0, $fp, -48
	sw $t0, -4212($fp)
	lw $t0, -340($fp)
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
	lw $t1, -4228($fp)
	li $t2, 0
	bne $t1, $t2, label572
	j label571
label571:
	li $t0, 1
	sw $t0, -4208($fp)
label572:
	lw $t0, -4204($fp)
	lw $t1, -4208($fp)
	add $t0, $t0, $t1
	sw $t0, -4232($fp)
	lw $t1, -4232($fp)
	li $t2, 0
	bne $t1, $t2, label566
	j label567
label566:
	addi $t0, $fp, -48
	sw $t0, -4236($fp)
	li $t0, 0
	sw $t0, -4240($fp)
	li $t0, 42235
	sw $t0, -4244($fp)
	li $t0, 29681
	sw $t0, -4248($fp)
	lw $t0, -4244($fp)
	lw $t1, -4248($fp)
	add $t0, $t0, $t1
	sw $t0, -4252($fp)
	lw $t0, -340($fp)
	sw $t0, -4256($fp)
	lw $t1, -4252($fp)
	lw $t2, -4256($fp)
	bne $t1, $t2, label576
	j label577
label576:
	li $t0, 1
	sw $t0, -4240($fp)
label577:
	li $t0, 4
	lw $t1, -4240($fp)
	mul $t0, $t0, $t1
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	lw $t1, -4236($fp)
	add $t0, $t0, $t1
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	lw $t1, 0($t0)
	sw $t1, -4268($fp)
	li $t0, 0
	sw $t0, -4272($fp)
	lw $t0, 16($fp)
	sw $t0, -4276($fp)
	lw $t1, -4276($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label578
label578:
	li $t0, 1
	sw $t0, -4272($fp)
label579:
	lw $t0, -4268($fp)
	lw $t1, -4272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4280($fp)
	lw $t1, -4280($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label574
label573:
	li $t0, 17015
	sw $t0, -4284($fp)
	j label575
label574:
label580:
	li $t0, 0
	sw $t0, -4288($fp)
	li $t0, 34359
	sw $t0, -4292($fp)
	lw $t1, -4292($fp)
	li $t2, 0
	bne $t1, $t2, label584
	j label583
label583:
	li $t0, 1
	sw $t0, -4288($fp)
label584:
	li $t0, 0
	lw $t1, -4288($fp)
	sub $t0, $t0, $t1
	sw $t0, -4296($fp)
	lw $t1, -4296($fp)
	li $t2, 0
	bne $t1, $t2, label581
	j label582
label581:
label585:
	lw $t0, -136($fp)
	sw $t0, -4300($fp)
	lw $t1, -4300($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label587
label586:
	jal f8
	sw $v0, -4304($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -4308($fp)
	li $t0, 51134
	sw $t0, -4312($fp)
	lw $t1, -4312($fp)
	li $t2, 0
	bne $t1, $t2, label589
	j label588
label588:
	li $t0, 1
	sw $t0, -4308($fp)
label589:
	li $t0, 63084
	sw $t0, -4316($fp)
	li $t0, 47963
	sw $t0, -4320($fp)
	li $t0, 59335
	sw $t0, -4324($fp)
	li $t0, 0
	sw $t0, -4328($fp)
	lw $t0, 12($fp)
	sw $t0, -4332($fp)
	li $t0, 49396
	sw $t0, -4336($fp)
	lw $t0, -4332($fp)
	lw $t1, -4336($fp)
	sub $t0, $t0, $t1
	sw $t0, -4340($fp)
	lw $t1, -4340($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label592
label592:
	lw $t0, -340($fp)
	sw $t0, -4344($fp)
	lw $t1, -4344($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label591
label590:
	li $t0, 1
	sw $t0, -4328($fp)
label591:
	addi $sp, $sp, -4
	lw $t0, -4308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4328($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -4348($fp)
	addi $sp, $sp, 24
	li $t0, 19409
	sw $t0, -4352($fp)
	lw $t0, -4348($fp)
	lw $t1, -4352($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4356($fp)
	lw $t0, -4304($fp)
	lw $t1, -4356($fp)
	add $t0, $t0, $t1
	sw $t0, -4360($fp)
	j label585
label587:
	j label580
label582:
label575:
	j label565
label567:
	lw $t0, -76($fp)
	sw $t0, -4364($fp)
	lw $t0, -4364($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -4368($fp)
label593:
	li $t0, 0
	sw $t0, -4372($fp)
	addi $t0, $fp, -68
	sw $t0, -4376($fp)
	lw $t0, -640($fp)
	sw $t0, -4380($fp)
	li $t0, 4
	lw $t1, -4380($fp)
	mul $t0, $t0, $t1
	sw $t0, -4384($fp)
	lw $t0, -4384($fp)
	lw $t1, -4376($fp)
	add $t0, $t0, $t1
	sw $t0, -4388($fp)
	lw $t0, -4388($fp)
	lw $t1, 0($t0)
	sw $t1, -4392($fp)
	lw $t1, -4392($fp)
	li $t2, 0
	bne $t1, $t2, label597
	j label596
label596:
	li $t0, 1
	sw $t0, -4372($fp)
label597:
	li $t0, 0
	lw $t1, -4372($fp)
	sub $t0, $t0, $t1
	sw $t0, -4396($fp)
	lw $t1, -4396($fp)
	li $t2, 0
	bne $t1, $t2, label595
	j label594
label594:
	li $t0, 0
	sw $t0, -4400($fp)
	li $t0, 9791
	sw $t0, -4404($fp)
	li $t0, 40366
	sw $t0, -4408($fp)
	lw $t1, -4404($fp)
	lw $t2, -4408($fp)
	beq $t1, $t2, label602
	j label603
label602:
	li $t0, 1
	sw $t0, -4400($fp)
label603:
	li $t0, 0
	sw $t0, -4412($fp)
	li $t0, 37548
	sw $t0, -4416($fp)
	lw $t1, -4416($fp)
	li $t2, 0
	bne $t1, $t2, label605
	j label604
label604:
	li $t0, 1
	sw $t0, -4412($fp)
label605:
	li $t0, 0
	lw $t1, -4412($fp)
	sub $t0, $t0, $t1
	sw $t0, -4420($fp)
	addi $sp, $sp, -4
	lw $t0, -4400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4420($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -4424($fp)
	addi $sp, $sp, 12
	li $t0, 5501
	sw $t0, -4428($fp)
	li $t0, 0
	lw $t1, -4428($fp)
	sub $t0, $t0, $t1
	sw $t0, -4432($fp)
	lw $t0, -352($fp)
	sw $t0, -4436($fp)
	lw $t0, -4432($fp)
	lw $t1, -4436($fp)
	sub $t0, $t0, $t1
	sw $t0, -4440($fp)
	lw $t1, -4424($fp)
	lw $t2, -4440($fp)
	blt $t1, $t2, label601
	j label599
label601:
	li $t0, 11514
	sw $t0, -4444($fp)
	li $t0, 24581
	sw $t0, -4448($fp)
	lw $t0, 20($fp)
	sw $t0, -4452($fp)
	lw $t0, -4448($fp)
	lw $t1, -4452($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4456($fp)
	lw $t0, -4444($fp)
	lw $t1, -4456($fp)
	add $t0, $t0, $t1
	sw $t0, -4460($fp)
	lw $t1, -4460($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label599
label598:
	li $t0, 0
	sw $t0, -4464($fp)
	addi $t0, $fp, -48
	sw $t0, -4468($fp)
	addi $t0, $fp, -16
	sw $t0, -4472($fp)
	lw $t0, -172($fp)
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
	li $t0, 4
	lw $t1, -4488($fp)
	mul $t0, $t0, $t1
	sw $t0, -4492($fp)
	lw $t0, -4492($fp)
	lw $t1, -4468($fp)
	add $t0, $t0, $t1
	sw $t0, -4496($fp)
	lw $t0, -4496($fp)
	lw $t1, 0($t0)
	sw $t1, -4500($fp)
	addi $t0, $fp, -16
	sw $t0, -4504($fp)
	li $t0, 1
	sw $t0, -4508($fp)
	li $t0, 4
	lw $t1, -4508($fp)
	mul $t0, $t0, $t1
	sw $t0, -4512($fp)
	lw $t0, -4512($fp)
	lw $t1, -4504($fp)
	add $t0, $t0, $t1
	sw $t0, -4516($fp)
	lw $t0, -4516($fp)
	lw $t1, 0($t0)
	sw $t1, -4520($fp)
	lw $t0, -4500($fp)
	lw $t1, -4520($fp)
	sub $t0, $t0, $t1
	sw $t0, -4524($fp)
	lw $t1, -4524($fp)
	li $t2, 0
	bne $t1, $t2, label606
	j label608
label608:
	li $t0, 50400
	sw $t0, -4528($fp)
	lw $t1, -4528($fp)
	li $t2, 0
	bne $t1, $t2, label606
	j label607
label606:
	li $t0, 1
	sw $t0, -4464($fp)
label607:
	j label600
label599:
	addi $t0, $fp, -48
	sw $t0, -4532($fp)
	lw $t0, -664($fp)
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
label600:
	j label593
label595:
label609:
	addi $t0, $fp, -48
	sw $t0, -4552($fp)
	li $t0, 0
	sw $t0, -4556($fp)
	li $t0, 32228
	sw $t0, -4560($fp)
	lw $t0, -340($fp)
	sw $t0, -4564($fp)
	lw $t1, -4560($fp)
	lw $t2, -4564($fp)
	bne $t1, $t2, label614
	j label615
label614:
	li $t0, 1
	sw $t0, -4556($fp)
label615:
	li $t0, 4
	lw $t1, -4556($fp)
	mul $t0, $t0, $t1
	sw $t0, -4568($fp)
	lw $t0, -4568($fp)
	lw $t1, -4552($fp)
	add $t0, $t0, $t1
	sw $t0, -4572($fp)
	lw $t0, -4572($fp)
	lw $t1, 0($t0)
	sw $t1, -4576($fp)
	lw $t1, -4576($fp)
	li $t2, 0
	bne $t1, $t2, label613
	j label611
label613:
	lw $t0, -664($fp)
	sw $t0, -4580($fp)
	li $t0, 0
	lw $t1, -4580($fp)
	sub $t0, $t0, $t1
	sw $t0, -4584($fp)
	lw $t1, -4584($fp)
	li $t2, 0
	bne $t1, $t2, label612
	j label611
label612:
	li $t0, 35400
	sw $t0, -4588($fp)
	addi $t0, $fp, -24
	sw $t0, -4592($fp)
	li $t0, 1
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
	addi $sp, $sp, -4
	lw $t0, -4588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4608($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -4612($fp)
	addi $sp, $sp, 12
	jal f8
	sw $v0, -4616($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -4612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4616($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -4620($fp)
	addi $sp, $sp, 12
	lw $t1, -4620($fp)
	li $t2, 0
	bne $t1, $t2, label610
	j label611
label610:
	li $t0, 0
	sw $t0, -4624($fp)
	lw $t0, -100($fp)
	sw $t0, -4628($fp)
	lw $t0, 16($fp)
	sw $t0, -4632($fp)
	li $t0, 0
	lw $t1, -4632($fp)
	sub $t0, $t0, $t1
	sw $t0, -4636($fp)
	lw $t0, -340($fp)
	sw $t0, -4640($fp)
	lw $t0, -4636($fp)
	lw $t1, -4640($fp)
	add $t0, $t0, $t1
	sw $t0, -4644($fp)
	li $t0, 0
	sw $t0, -4648($fp)
	li $t0, 61741
	sw $t0, -4652($fp)
	lw $t0, -340($fp)
	sw $t0, -4656($fp)
	lw $t0, -4652($fp)
	lw $t1, -4656($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4660($fp)
	lw $t1, -4660($fp)
	li $t2, 0
	bne $t1, $t2, label619
	j label621
label621:
	li $t0, 60222
	sw $t0, -4664($fp)
	lw $t1, -4664($fp)
	li $t2, 0
	bne $t1, $t2, label619
	j label620
label619:
	li $t0, 1
	sw $t0, -4648($fp)
label620:
	addi $sp, $sp, -4
	lw $t0, -4644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4648($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4668($fp)
	addi $sp, $sp, 12
	lw $t0, -4628($fp)
	lw $t1, -4668($fp)
	add $t0, $t0, $t1
	sw $t0, -4672($fp)
	lw $t1, -4672($fp)
	li $t2, 0
	bne $t1, $t2, label616
	j label618
label618:
	li $t0, 48291
	sw $t0, -4676($fp)
	lw $t0, -124($fp)
	sw $t0, -4680($fp)
	li $t0, 0
	lw $t1, -4680($fp)
	sub $t0, $t0, $t1
	sw $t0, -4684($fp)
	lw $t1, -4676($fp)
	lw $t2, -4684($fp)
	ble $t1, $t2, label616
	j label617
label616:
	li $t0, 1
	sw $t0, -4624($fp)
label617:
	lw $ra, -4($fp)
	lw $v0, -4624($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label609
label611:
	lw $t0, -76($fp)
	sw $t0, -4688($fp)
	lw $t0, -4688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -88($fp)
	sw $t0, -4692($fp)
	lw $t0, -4692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -100($fp)
	sw $t0, -4696($fp)
	lw $t0, -4696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -112($fp)
	sw $t0, -4700($fp)
	lw $t0, -4700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -124($fp)
	sw $t0, -4704($fp)
	lw $t0, -4704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -4708($fp)
	lw $t0, -4708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -4712($fp)
	lw $t0, -4712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -4716($fp)
	lw $t0, -4716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -172($fp)
	sw $t0, -4720($fp)
	lw $t0, -4720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -4724($fp)
	li $t0, 0
	sw $t0, -4728($fp)
	li $t0, 4
	lw $t1, -4728($fp)
	mul $t0, $t0, $t1
	sw $t0, -4732($fp)
	lw $t0, -4732($fp)
	lw $t1, -4724($fp)
	add $t0, $t0, $t1
	sw $t0, -4736($fp)
	lw $t0, -4736($fp)
	lw $t1, 0($t0)
	sw $t1, -4740($fp)
	lw $t0, -4740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -4744($fp)
	li $t0, 1
	sw $t0, -4748($fp)
	li $t0, 4
	lw $t1, -4748($fp)
	mul $t0, $t0, $t1
	sw $t0, -4752($fp)
	lw $t0, -4752($fp)
	lw $t1, -4744($fp)
	add $t0, $t0, $t1
	sw $t0, -4756($fp)
	lw $t0, -4756($fp)
	lw $t1, 0($t0)
	sw $t1, -4760($fp)
	lw $t0, -4760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -4764($fp)
	li $t0, 2
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
	lw $t0, -256($fp)
	sw $t0, -4784($fp)
	lw $t0, -4784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -4788($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -4808($fp)
	li $t0, 1
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
	lw $t0, -316($fp)
	sw $t0, -4828($fp)
	lw $t0, -4828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -328($fp)
	sw $t0, -4832($fp)
	lw $t0, -4832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -340($fp)
	sw $t0, -4836($fp)
	lw $t0, -4836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -352($fp)
	sw $t0, -4840($fp)
	lw $t0, -4840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -4844($fp)
	li $t0, 0
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
	addi $t0, $fp, -48
	sw $t0, -4864($fp)
	li $t0, 1
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
	addi $t0, $fp, -48
	sw $t0, -4884($fp)
	li $t0, 2
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
	addi $t0, $fp, -48
	sw $t0, -4904($fp)
	li $t0, 3
	sw $t0, -4908($fp)
	li $t0, 4
	lw $t1, -4908($fp)
	mul $t0, $t0, $t1
	sw $t0, -4912($fp)
	lw $t0, -4912($fp)
	lw $t1, -4904($fp)
	add $t0, $t0, $t1
	sw $t0, -4916($fp)
	lw $t0, -4916($fp)
	lw $t1, 0($t0)
	sw $t1, -4920($fp)
	lw $t0, -4920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -4924($fp)
	li $t0, 4
	sw $t0, -4928($fp)
	li $t0, 4
	lw $t1, -4928($fp)
	mul $t0, $t0, $t1
	sw $t0, -4932($fp)
	lw $t0, -4932($fp)
	lw $t1, -4924($fp)
	add $t0, $t0, $t1
	sw $t0, -4936($fp)
	lw $t0, -4936($fp)
	lw $t1, 0($t0)
	sw $t1, -4940($fp)
	lw $t0, -4940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -4944($fp)
	li $t0, 5
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
	lw $t0, -4960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -4964($fp)
	li $t0, 0
	sw $t0, -4968($fp)
	li $t0, 4
	lw $t1, -4968($fp)
	mul $t0, $t0, $t1
	sw $t0, -4972($fp)
	lw $t0, -4972($fp)
	lw $t1, -4964($fp)
	add $t0, $t0, $t1
	sw $t0, -4976($fp)
	lw $t0, -4976($fp)
	lw $t1, 0($t0)
	sw $t1, -4980($fp)
	lw $t0, -4980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -4984($fp)
	li $t0, 1
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
	lw $t0, -5000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -5004($fp)
	li $t0, 2
	sw $t0, -5008($fp)
	li $t0, 4
	lw $t1, -5008($fp)
	mul $t0, $t0, $t1
	sw $t0, -5012($fp)
	lw $t0, -5012($fp)
	lw $t1, -5004($fp)
	add $t0, $t0, $t1
	sw $t0, -5016($fp)
	lw $t0, -5016($fp)
	lw $t1, 0($t0)
	sw $t1, -5020($fp)
	lw $t0, -5020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -5024($fp)
	li $t0, 3
	sw $t0, -5028($fp)
	li $t0, 4
	lw $t1, -5028($fp)
	mul $t0, $t0, $t1
	sw $t0, -5032($fp)
	lw $t0, -5032($fp)
	lw $t1, -5024($fp)
	add $t0, $t0, $t1
	sw $t0, -5036($fp)
	lw $t0, -5036($fp)
	lw $t1, 0($t0)
	sw $t1, -5040($fp)
	lw $t0, -5040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -5044($fp)
	li $t0, 4
	sw $t0, -5048($fp)
	li $t0, 4
	lw $t1, -5048($fp)
	mul $t0, $t0, $t1
	sw $t0, -5052($fp)
	lw $t0, -5052($fp)
	lw $t1, -5044($fp)
	add $t0, $t0, $t1
	sw $t0, -5056($fp)
	lw $t0, -5056($fp)
	lw $t1, 0($t0)
	sw $t1, -5060($fp)
	lw $t0, -5060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -628($fp)
	sw $t0, -5064($fp)
	lw $t0, -5064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -640($fp)
	sw $t0, -5068($fp)
	lw $t0, -5068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -652($fp)
	sw $t0, -5072($fp)
	lw $t0, -5072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -664($fp)
	sw $t0, -5076($fp)
	lw $t0, -5076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5080($fp)
	li $t0, 0
	sw $t0, -5084($fp)
	li $t0, 0
	sw $t0, -5088($fp)
	addi $t0, $fp, -48
	sw $t0, -5092($fp)
	li $t0, 4
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
	lw $t1, -5108($fp)
	li $t2, 0
	bne $t1, $t2, label628
	j label627
label628:
	lw $t0, -112($fp)
	sw $t0, -5112($fp)
	lw $t1, -5112($fp)
	li $t2, 0
	bne $t1, $t2, label626
	j label627
label626:
	li $t0, 1
	sw $t0, -5088($fp)
label627:
	li $t0, 6148
	sw $t0, -5116($fp)
	lw $t0, -100($fp)
	sw $t0, -5120($fp)
	lw $t0, -5116($fp)
	lw $t1, -5120($fp)
	sub $t0, $t0, $t1
	sw $t0, -5124($fp)
	lw $t0, -340($fp)
	sw $t0, -5128($fp)
	li $t0, 0
	sw $t0, -5132($fp)
	lw $t0, -160($fp)
	sw $t0, -5136($fp)
	lw $t0, 20($fp)
	sw $t0, -5140($fp)
	lw $t1, -5136($fp)
	lw $t2, -5140($fp)
	ble $t1, $t2, label629
	j label630
label629:
	li $t0, 1
	sw $t0, -5132($fp)
label630:
	li $t0, 0
	sw $t0, -5144($fp)
	lw $t0, 16($fp)
	sw $t0, -5148($fp)
	lw $t1, -5148($fp)
	li $t2, 0
	bne $t1, $t2, label632
	j label631
label631:
	li $t0, 1
	sw $t0, -5144($fp)
label632:
	li $t0, 0
	lw $t1, -5144($fp)
	sub $t0, $t0, $t1
	sw $t0, -5152($fp)
	addi $sp, $sp, -4
	lw $t0, -5088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5152($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -5156($fp)
	addi $sp, $sp, 24
	lw $t1, -5156($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label624
label624:
	li $t0, 1
	sw $t0, -5084($fp)
label625:
	li $t0, 0
	lw $t1, -5084($fp)
	sub $t0, $t0, $t1
	sw $t0, -5160($fp)
	lw $t1, -5160($fp)
	li $t2, 0
	bne $t1, $t2, label623
	j label622
label622:
	li $t0, 1
	sw $t0, -5080($fp)
label623:
	li $t0, 0
	lw $t1, -5080($fp)
	sub $t0, $t0, $t1
	sw $t0, -5164($fp)
	lw $ra, -4($fp)
	lw $v0, -5164($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f15:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -56
	li $t0, 14462
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	li $t0, 44143
	sw $t0, -24($fp)
	li $t0, 0
	lw $t1, -24($fp)
	sub $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t1, -28($fp)
	li $t2, 0
	bne $t1, $t2, label634
	j label633
label633:
	li $t0, 1
	sw $t0, -20($fp)
label634:
	li $t0, 0
	sw $t0, -32($fp)
	li $t0, 0
	sw $t0, -36($fp)
	li $t0, 2472
	sw $t0, -40($fp)
	lw $t0, -12($fp)
	sw $t0, -44($fp)
	lw $t1, -40($fp)
	lw $t2, -44($fp)
	bge $t1, $t2, label637
	j label638
label637:
	li $t0, 1
	sw $t0, -36($fp)
label638:
	li $t0, 1351
	sw $t0, -48($fp)
	lw $t1, -36($fp)
	lw $t2, -48($fp)
	bne $t1, $t2, label635
	j label636
label635:
	li $t0, 1
	sw $t0, -32($fp)
label636:
	addi $sp, $sp, -4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -32($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -52($fp)
	addi $sp, $sp, 12
	lw $t0, -12($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 19487
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
	jal f15
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
