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
	addi $sp, $sp, -4312
	li $t0, 59529
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	li $t0, 7091
	sw $t0, -120($fp)
	addi $t0, $fp, -12
	sw $t0, -124($fp)
	li $t0, 0
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
	li $t0, 6342
	sw $t0, -144($fp)
	addi $t0, $fp, -12
	sw $t0, -148($fp)
	li $t0, 1
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
	li $t0, 52193
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	li $t0, 64694
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	li $t0, 16673
	sw $t0, -192($fp)
	addi $t0, $fp, -32
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
	li $t0, 44592
	sw $t0, -216($fp)
	addi $t0, $fp, -32
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
	li $t0, 45804
	sw $t0, -240($fp)
	addi $t0, $fp, -32
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
	li $t0, 37964
	sw $t0, -264($fp)
	addi $t0, $fp, -32
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
	li $t0, 29956
	sw $t0, -288($fp)
	addi $t0, $fp, -32
	sw $t0, -292($fp)
	li $t0, 4
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
	li $t0, 44118
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	li $t0, 35649
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	li $t0, 65507
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	li $t0, 38746
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	li $t0, 28298
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	li $t0, 29062
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	li $t0, 50915
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
	li $t0, 3556
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
	li $t0, 22248
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
	li $t0, 31855
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
	li $t0, 510
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	li $t0, 9763
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	li $t0, 17051
	sw $t0, -504($fp)
	addi $t0, $fp, -56
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
	li $t0, 63241
	sw $t0, -528($fp)
	addi $t0, $fp, -56
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
	li $t0, 62842
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	li $t0, 10584
	sw $t0, -564($fp)
	addi $t0, $fp, -60
	sw $t0, -568($fp)
	li $t0, 0
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
	li $t0, 40685
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	li $t0, 40036
	sw $t0, -600($fp)
	addi $t0, $fp, -72
	sw $t0, -604($fp)
	li $t0, 0
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
	li $t0, 64411
	sw $t0, -624($fp)
	addi $t0, $fp, -72
	sw $t0, -628($fp)
	li $t0, 1
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
	li $t0, 19657
	sw $t0, -648($fp)
	addi $t0, $fp, -72
	sw $t0, -652($fp)
	li $t0, 2
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
	li $t0, 28737
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	li $t0, 58404
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	li $t0, 26748
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	li $t0, 35079
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	li $t0, 45061
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	li $t0, 25906
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	li $t0, 51752
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	li $t0, 24118
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	li $t0, 6174
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -776($fp)
	li $t0, 24181
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -788($fp)
	li $t0, 54074
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -800($fp)
	li $t0, 50293
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	li $t0, 59830
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	li $t0, 54045
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	li $t0, 23503
	sw $t0, -840($fp)
	addi $t0, $fp, -104
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
	li $t0, 22592
	sw $t0, -864($fp)
	addi $t0, $fp, -104
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
	li $t0, 17571
	sw $t0, -888($fp)
	addi $t0, $fp, -104
	sw $t0, -892($fp)
	li $t0, 2
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
	li $t0, 8882
	sw $t0, -912($fp)
	addi $t0, $fp, -104
	sw $t0, -916($fp)
	li $t0, 3
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
	li $t0, 26148
	sw $t0, -936($fp)
	addi $t0, $fp, -104
	sw $t0, -940($fp)
	li $t0, 4
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
	li $t0, 39819
	sw $t0, -960($fp)
	addi $t0, $fp, -104
	sw $t0, -964($fp)
	li $t0, 5
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
	li $t0, 40737
	sw $t0, -984($fp)
	addi $t0, $fp, -104
	sw $t0, -988($fp)
	li $t0, 6
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
	li $t0, 26658
	sw $t0, -1008($fp)
	addi $t0, $fp, -104
	sw $t0, -1012($fp)
	li $t0, 7
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
	li $t0, 49583
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	li $t0, 57788
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	li $t0, 24363
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -1064($fp)
	li $t0, 46889
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -1076($fp)
	li $t0, 2837
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -1088($fp)
	li $t0, 65049
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -1100($fp)
	li $t0, 21389
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	sw $t0, -1112($fp)
	li $t0, 1712
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	sw $t0, -1124($fp)
	li $t0, 19170
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	sw $t0, -1136($fp)
	li $t0, 50126
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	sw $t0, -1148($fp)
	li $t0, 60116
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	sw $t0, -1160($fp)
	li $t0, 45918
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -1172($fp)
	li $t0, 19670
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -1184($fp)
	li $t0, 39641
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	li $t0, 6288
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -1208($fp)
	li $t0, 5886
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	sw $t0, -1220($fp)
	li $t0, 63759
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	sw $t0, -1232($fp)
	li $t0, 12462
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	sw $t0, -1244($fp)
	li $t0, 30067
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -1256($fp)
	li $t0, 52297
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -1268($fp)
	li $t0, 62755
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	li $t0, 24362
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	li $t0, 0
	sw $t0, -1296($fp)
	addi $t0, $fp, -12
	sw $t0, -1300($fp)
	lw $t0, -1120($fp)
	sw $t0, -1304($fp)
	li $t0, 4
	lw $t1, -1304($fp)
	mul $t0, $t0, $t1
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	lw $t1, -1300($fp)
	add $t0, $t0, $t1
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	lw $t1, 0($t0)
	sw $t1, -1316($fp)
	li $t0, 0
	lw $t1, -1316($fp)
	sub $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $t1, -1320($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label125
label124:
	li $t0, 1
	sw $t0, -1296($fp)
label125:
	addi $t0, $fp, -56
	sw $t0, -1324($fp)
	li $t0, 0
	sw $t0, -1328($fp)
	li $t0, 40806
	sw $t0, -1332($fp)
	lw $t1, -1332($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label127
label128:
	li $t0, 20722
	sw $t0, -1336($fp)
	lw $t1, -1336($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label127
label126:
	li $t0, 1
	sw $t0, -1328($fp)
label127:
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
	lw $t0, -1296($fp)
	lw $t1, -1348($fp)
	sub $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t1, -1352($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
	li $t0, 0
	sw $t0, -1356($fp)
	lw $t0, -1216($fp)
	sw $t0, -1360($fp)
	lw $t1, -1360($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label130
label131:
	lw $t0, -1072($fp)
	sw $t0, -1364($fp)
	li $t0, 0
	sw $t0, -1368($fp)
	lw $t0, -1168($fp)
	sw $t0, -1372($fp)
	lw $t1, -1372($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label133
label135:
	lw $t0, -1084($fp)
	sw $t0, -1376($fp)
	lw $t1, -1376($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label133
label134:
	li $t0, 16708
	sw $t0, -1380($fp)
	lw $t1, -1380($fp)
	li $t2, 0
	bne $t1, $t2, label132
	j label133
label132:
	li $t0, 1
	sw $t0, -1368($fp)
label133:
	li $t0, 0
	sw $t0, -1384($fp)
	lw $t0, -1072($fp)
	sw $t0, -1388($fp)
	lw $t0, -1048($fp)
	sw $t0, -1392($fp)
	lw $t0, -1388($fp)
	lw $t1, -1392($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1396($fp)
	li $t0, 34225
	sw $t0, -1400($fp)
	lw $t1, -1396($fp)
	lw $t2, -1400($fp)
	bge $t1, $t2, label136
	j label137
label136:
	li $t0, 1
	sw $t0, -1384($fp)
label137:
	li $t0, 0
	sw $t0, -1404($fp)
	lw $t0, -1276($fp)
	sw $t0, -1408($fp)
	li $t0, 32661
	sw $t0, -1412($fp)
	lw $t0, -1408($fp)
	lw $t1, -1412($fp)
	sub $t0, $t0, $t1
	sw $t0, -1416($fp)
	li $t0, 4806
	sw $t0, -1420($fp)
	lw $t1, -1416($fp)
	lw $t2, -1420($fp)
	beq $t1, $t2, label138
	j label139
label138:
	li $t0, 1
	sw $t0, -1404($fp)
label139:
	li $t0, 0
	sw $t0, -1424($fp)
	li $t0, 0
	sw $t0, -1428($fp)
	lw $t0, -1252($fp)
	sw $t0, -1432($fp)
	lw $t0, -316($fp)
	sw $t0, -1436($fp)
	lw $t1, -1432($fp)
	lw $t2, -1436($fp)
	beq $t1, $t2, label142
	j label143
label142:
	li $t0, 1
	sw $t0, -1428($fp)
label143:
	li $t0, 7567
	sw $t0, -1440($fp)
	lw $t1, -1428($fp)
	lw $t2, -1440($fp)
	beq $t1, $t2, label140
	j label141
label140:
	li $t0, 1
	sw $t0, -1424($fp)
label141:
	addi $sp, $sp, -4
	lw $t0, -1384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1424($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1444($fp)
	addi $sp, $sp, 16
	li $t0, 46954
	sw $t0, -1448($fp)
	li $t0, 58377
	sw $t0, -1452($fp)
	lw $t0, -1448($fp)
	lw $t1, -1452($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1456($fp)
	li $t0, 29604
	sw $t0, -1460($fp)
	lw $t0, -1456($fp)
	lw $t1, -1460($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1464($fp)
	addi $sp, $sp, -4
	lw $t0, -1368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1464($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1468($fp)
	addi $sp, $sp, 16
	lw $t0, -1364($fp)
	lw $t1, -1468($fp)
	sub $t0, $t0, $t1
	sw $t0, -1472($fp)
	lw $t1, -1472($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label130
label129:
	li $t0, 1
	sw $t0, -1356($fp)
label130:
	lw $ra, -4($fp)
	lw $v0, -1356($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label123
label122:
	lw $t0, -484($fp)
	sw $t0, -1476($fp)
	lw $t1, -1476($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label145
label144:
label147:
	lw $t0, -316($fp)
	sw $t0, -1480($fp)
	li $t0, 62594
	sw $t0, -1484($fp)
	lw $t0, -1480($fp)
	lw $t1, -1484($fp)
	mul $t0, $t0, $t1
	sw $t0, -1488($fp)
	li $t0, 58589
	sw $t0, -1492($fp)
	li $t0, 0
	lw $t1, -1492($fp)
	sub $t0, $t0, $t1
	sw $t0, -1496($fp)
	lw $t0, -1488($fp)
	lw $t1, -1496($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1500($fp)
	li $t0, 0
	sw $t0, -1504($fp)
	lw $t0, -592($fp)
	sw $t0, -1508($fp)
	lw $t1, -1508($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label151
label151:
	li $t0, 1
	sw $t0, -1504($fp)
label152:
	li $t0, 0
	lw $t1, -1504($fp)
	sub $t0, $t0, $t1
	sw $t0, -1512($fp)
	lw $t0, -1500($fp)
	lw $t1, -1512($fp)
	sub $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t1, -1516($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label149
label150:
	lw $t0, -1192($fp)
	sw $t0, -1520($fp)
	li $t0, 0
	sw $t0, -1524($fp)
	li $t0, 65431
	sw $t0, -1528($fp)
	lw $t1, -1528($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label153
label153:
	li $t0, 1
	sw $t0, -1524($fp)
label154:
	li $t0, 0
	sw $t0, -1532($fp)
	lw $t0, -1072($fp)
	sw $t0, -1536($fp)
	li $t0, 63597
	sw $t0, -1540($fp)
	lw $t0, -1536($fp)
	lw $t1, -1540($fp)
	mul $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $t0, -316($fp)
	sw $t0, -1548($fp)
	lw $t1, -1544($fp)
	lw $t2, -1548($fp)
	blt $t1, $t2, label155
	j label156
label155:
	li $t0, 1
	sw $t0, -1532($fp)
label156:
	addi $sp, $sp, -4
	lw $t0, -1520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1532($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1552($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -1552($fp)
	sub $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $t1, -1556($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label149
label148:
	addi $t0, $fp, -56
	sw $t0, -1560($fp)
	li $t0, 0
	sw $t0, -1564($fp)
	lw $t0, -1204($fp)
	sw $t0, -1568($fp)
	lw $t1, -1568($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label162
label162:
	lw $t0, -688($fp)
	sw $t0, -1572($fp)
	lw $t1, -1572($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label161
label160:
	li $t0, 1
	sw $t0, -1564($fp)
label161:
	li $t0, 4
	lw $t1, -1564($fp)
	mul $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	lw $t1, -1560($fp)
	add $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	lw $t1, 0($t0)
	sw $t1, -1584($fp)
	li $t0, 0
	sw $t0, -1588($fp)
	li $t0, 58102
	sw $t0, -1592($fp)
	lw $t0, -1264($fp)
	sw $t0, -1596($fp)
	lw $t0, -1592($fp)
	lw $t1, -1596($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1600($fp)
	li $t0, 19450
	sw $t0, -1604($fp)
	lw $t0, -1600($fp)
	lw $t1, -1604($fp)
	sub $t0, $t0, $t1
	sw $t0, -1608($fp)
	li $t0, 1607
	sw $t0, -1612($fp)
	li $t0, 0
	lw $t1, -1612($fp)
	sub $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t1, -1608($fp)
	lw $t2, -1616($fp)
	bgt $t1, $t2, label163
	j label164
label163:
	li $t0, 1
	sw $t0, -1588($fp)
label164:
	lw $t1, -1584($fp)
	lw $t2, -1588($fp)
	bne $t1, $t2, label157
	j label158
label157:
	li $t0, 0
	sw $t0, -1620($fp)
	li $t0, 0
	sw $t0, -1624($fp)
	li $t0, 57654
	sw $t0, -1628($fp)
	li $t0, 0
	lw $t1, -1628($fp)
	sub $t0, $t0, $t1
	sw $t0, -1632($fp)
	li $t0, 23710
	sw $t0, -1636($fp)
	lw $t1, -1632($fp)
	lw $t2, -1636($fp)
	bne $t1, $t2, label167
	j label168
label167:
	li $t0, 1
	sw $t0, -1624($fp)
label168:
	lw $t0, -1072($fp)
	sw $t0, -1640($fp)
	li $t0, 0
	sw $t0, -1644($fp)
	lw $t0, -1228($fp)
	sw $t0, -1648($fp)
	lw $t0, -1228($fp)
	sw $t0, -1652($fp)
	lw $t0, -1648($fp)
	lw $t1, -1652($fp)
	mul $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $t0, -556($fp)
	sw $t0, -1660($fp)
	lw $t1, -1656($fp)
	lw $t2, -1660($fp)
	blt $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -1644($fp)
label170:
	li $t0, 0
	sw $t0, -1664($fp)
	li $t0, 4040
	sw $t0, -1668($fp)
	li $t0, 61723
	sw $t0, -1672($fp)
	lw $t0, -1668($fp)
	lw $t1, -1672($fp)
	sub $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t1, -1676($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label173
label173:
	lw $t0, 12($fp)
	sw $t0, -1680($fp)
	lw $t1, -1680($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label172
label171:
	li $t0, 1
	sw $t0, -1664($fp)
label172:
	li $t0, 0
	sw $t0, -1684($fp)
	li $t0, 11736
	sw $t0, -1688($fp)
	lw $t1, -1688($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label174
label174:
	li $t0, 1
	sw $t0, -1684($fp)
label175:
	lw $t0, -1120($fp)
	sw $t0, -1692($fp)
	lw $t0, -1684($fp)
	lw $t1, -1692($fp)
	add $t0, $t0, $t1
	sw $t0, -1696($fp)
	addi $sp, $sp, -4
	lw $t0, -1644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1696($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1700($fp)
	addi $sp, $sp, 16
	lw $t0, -352($fp)
	sw $t0, -1704($fp)
	lw $t0, -1700($fp)
	lw $t1, -1704($fp)
	mul $t0, $t0, $t1
	sw $t0, -1708($fp)
	addi $sp, $sp, -4
	lw $t0, -1624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1708($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1712($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -60
	sw $t0, -1716($fp)
	lw $t0, -808($fp)
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
	li $t0, 0
	sw $t0, -1736($fp)
	li $t0, 35829
	sw $t0, -1740($fp)
	lw $t1, -1740($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label176
label176:
	li $t0, 1
	sw $t0, -1736($fp)
label177:
	lw $t0, -1732($fp)
	lw $t1, -1736($fp)
	mul $t0, $t0, $t1
	sw $t0, -1744($fp)
	li $t0, 0
	lw $t1, -1744($fp)
	sub $t0, $t0, $t1
	sw $t0, -1748($fp)
	lw $t1, -1712($fp)
	lw $t2, -1748($fp)
	bge $t1, $t2, label165
	j label166
label165:
	li $t0, 1
	sw $t0, -1620($fp)
label166:
	j label159
label158:
	li $t0, 0
	sw $t0, -1752($fp)
	li $t0, 63942
	sw $t0, -1756($fp)
	lw $t0, -1252($fp)
	sw $t0, -1760($fp)
	lw $t0, -1756($fp)
	lw $t1, -1760($fp)
	add $t0, $t0, $t1
	sw $t0, -1764($fp)
	lw $t0, -1288($fp)
	sw $t0, -1768($fp)
	lw $t0, -1764($fp)
	lw $t1, -1768($fp)
	add $t0, $t0, $t1
	sw $t0, -1772($fp)
	addi $t0, $fp, -48
	sw $t0, -1776($fp)
	li $t0, 2
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
	li $t0, 0
	lw $t1, -1792($fp)
	sub $t0, $t0, $t1
	sw $t0, -1796($fp)
	lw $t0, -1180($fp)
	sw $t0, -1800($fp)
	li $t0, 10868
	sw $t0, -1804($fp)
	lw $t0, -1800($fp)
	lw $t1, -1804($fp)
	mul $t0, $t0, $t1
	sw $t0, -1808($fp)
	li $t0, 0
	sw $t0, -1812($fp)
	li $t0, 29597
	sw $t0, -1816($fp)
	li $t0, 34052
	sw $t0, -1820($fp)
	lw $t0, -1816($fp)
	lw $t1, -1820($fp)
	mul $t0, $t0, $t1
	sw $t0, -1824($fp)
	lw $t1, -1824($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label182
label183:
	lw $t0, -364($fp)
	sw $t0, -1828($fp)
	lw $t1, -1828($fp)
	li $t2, 0
	bne $t1, $t2, label181
	j label182
label181:
	li $t0, 1
	sw $t0, -1812($fp)
label182:
	addi $sp, $sp, -4
	lw $t0, -1796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1812($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1832($fp)
	addi $sp, $sp, 16
	lw $t0, -1772($fp)
	lw $t1, -1832($fp)
	sub $t0, $t0, $t1
	sw $t0, -1836($fp)
	li $t0, 8088
	sw $t0, -1840($fp)
	li $t0, 18490
	sw $t0, -1844($fp)
	lw $t0, -1840($fp)
	lw $t1, -1844($fp)
	mul $t0, $t0, $t1
	sw $t0, -1848($fp)
	li $t0, 0
	lw $t1, -1848($fp)
	sub $t0, $t0, $t1
	sw $t0, -1852($fp)
	lw $t1, -1836($fp)
	lw $t2, -1852($fp)
	beq $t1, $t2, label178
	j label180
label180:
	li $t0, 0
	sw $t0, -1856($fp)
	li $t0, 61620
	sw $t0, -1860($fp)
	lw $t1, -1860($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label184
label184:
	li $t0, 1
	sw $t0, -1856($fp)
label185:
	lw $t0, -340($fp)
	sw $t0, -1864($fp)
	lw $t0, -1856($fp)
	lw $t1, -1864($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1868($fp)
	lw $t0, -748($fp)
	sw $t0, -1872($fp)
	lw $t1, -1868($fp)
	lw $t2, -1872($fp)
	bgt $t1, $t2, label178
	j label179
label178:
	li $t0, 1
	sw $t0, -1752($fp)
label179:
label159:
	j label147
label149:
	j label146
label145:
	li $t0, 0
	sw $t0, -1876($fp)
	li $t0, 0
	sw $t0, -1880($fp)
	lw $t0, -1240($fp)
	sw $t0, -1884($fp)
	lw $t0, -496($fp)
	sw $t0, -1888($fp)
	lw $t1, -1884($fp)
	lw $t2, -1888($fp)
	ble $t1, $t2, label189
	j label190
label189:
	li $t0, 1
	sw $t0, -1880($fp)
label190:
	li $t0, 28810
	sw $t0, -1892($fp)
	lw $t1, -1880($fp)
	lw $t2, -1892($fp)
	beq $t1, $t2, label188
	j label187
label188:
	li $t0, 0
	sw $t0, -1896($fp)
	li $t0, 54462
	sw $t0, -1900($fp)
	lw $t1, -1900($fp)
	li $t2, 0
	bne $t1, $t2, label192
	j label191
label191:
	li $t0, 1
	sw $t0, -1896($fp)
label192:
	li $t0, 0
	sw $t0, -1904($fp)
	addi $t0, $fp, -32
	sw $t0, -1908($fp)
	lw $t0, -676($fp)
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
	li $t0, 65445
	sw $t0, -1928($fp)
	lw $t1, -1924($fp)
	lw $t2, -1928($fp)
	bne $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -1904($fp)
label194:
	li $t0, 0
	sw $t0, -1932($fp)
	li $t0, 0
	sw $t0, -1936($fp)
	lw $t0, -1072($fp)
	sw $t0, -1940($fp)
	lw $t0, -688($fp)
	sw $t0, -1944($fp)
	lw $t1, -1940($fp)
	lw $t2, -1944($fp)
	bgt $t1, $t2, label197
	j label198
label197:
	li $t0, 1
	sw $t0, -1936($fp)
label198:
	lw $t0, -688($fp)
	sw $t0, -1948($fp)
	lw $t1, -1936($fp)
	lw $t2, -1948($fp)
	blt $t1, $t2, label195
	j label196
label195:
	li $t0, 1
	sw $t0, -1932($fp)
label196:
	addi $sp, $sp, -4
	lw $t0, -1896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1932($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1952($fp)
	addi $sp, $sp, 16
	lw $t1, -1952($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label187
label186:
	li $t0, 1
	sw $t0, -1876($fp)
label187:
	lw $t0, -1876($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -1956($fp)
	lw $ra, -4($fp)
	lw $v0, -1956($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label146:
label123:
label199:
	li $t0, 0
	sw $t0, -1960($fp)
	li $t0, 0
	sw $t0, -1964($fp)
	li $t0, 58415
	sw $t0, -1968($fp)
	li $t0, 0
	lw $t1, -1968($fp)
	sub $t0, $t0, $t1
	sw $t0, -1972($fp)
	li $t0, 7476
	sw $t0, -1976($fp)
	lw $t1, -1972($fp)
	lw $t2, -1976($fp)
	bge $t1, $t2, label205
	j label206
label205:
	li $t0, 1
	sw $t0, -1964($fp)
label206:
	li $t0, 0
	sw $t0, -1980($fp)
	lw $t0, -796($fp)
	sw $t0, -1984($fp)
	lw $t0, 8($fp)
	sw $t0, -1988($fp)
	lw $t1, -1984($fp)
	lw $t2, -1988($fp)
	blt $t1, $t2, label207
	j label208
label207:
	li $t0, 1
	sw $t0, -1980($fp)
label208:
	lw $t1, -1964($fp)
	lw $t2, -1980($fp)
	beq $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -1960($fp)
label204:
	li $t0, 21587
	sw $t0, -1992($fp)
	lw $t1, -1960($fp)
	lw $t2, -1992($fp)
	beq $t1, $t2, label200
	j label202
label202:
	li $t0, 63221
	sw $t0, -1996($fp)
	lw $t1, -1996($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
	addi $t0, $fp, -56
	sw $t0, -2000($fp)
	li $t0, 0
	sw $t0, -2004($fp)
	lw $t0, -760($fp)
	sw $t0, -2008($fp)
	li $t0, 41701
	sw $t0, -2012($fp)
	lw $t1, -2008($fp)
	lw $t2, -2012($fp)
	bgt $t1, $t2, label209
	j label210
label209:
	li $t0, 1
	sw $t0, -2004($fp)
label210:
	li $t0, 4
	lw $t1, -2004($fp)
	mul $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	lw $t1, -2000($fp)
	add $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	lw $t1, 0($t0)
	sw $t1, -2024($fp)
	li $t0, 38295
	sw $t0, -2028($fp)
	lw $t0, -688($fp)
	sw $t0, -2032($fp)
	lw $t0, -2028($fp)
	lw $t1, -2032($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2036($fp)
	li $t0, 60279
	sw $t0, -2040($fp)
	lw $t0, -2036($fp)
	lw $t1, -2040($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2044($fp)
	lw $t0, -2024($fp)
	lw $t1, -2044($fp)
	sub $t0, $t0, $t1
	sw $t0, -2048($fp)
	li $t0, 34754
	sw $t0, -2052($fp)
	lw $t0, -2048($fp)
	lw $t1, -2052($fp)
	sub $t0, $t0, $t1
	sw $t0, -2056($fp)
	j label199
label201:
	li $t0, 0
	sw $t0, -2060($fp)
	li $t0, 36356
	sw $t0, -2064($fp)
	lw $t1, -2064($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label213
label213:
	li $t0, 0
	sw $t0, -2068($fp)
	li $t0, 0
	sw $t0, -2072($fp)
	li $t0, 0
	sw $t0, -2076($fp)
	li $t0, 61782
	sw $t0, -2080($fp)
	lw $t0, -808($fp)
	sw $t0, -2084($fp)
	lw $t1, -2080($fp)
	lw $t2, -2084($fp)
	beq $t1, $t2, label219
	j label220
label219:
	li $t0, 1
	sw $t0, -2076($fp)
label220:
	li $t0, 39056
	sw $t0, -2088($fp)
	lw $t1, -2076($fp)
	lw $t2, -2088($fp)
	beq $t1, $t2, label217
	j label218
label217:
	li $t0, 1
	sw $t0, -2072($fp)
label218:
	li $t0, 0
	sw $t0, -2092($fp)
	addi $t0, $fp, -72
	sw $t0, -2096($fp)
	lw $t0, -748($fp)
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
	lw $t0, -688($fp)
	sw $t0, -2116($fp)
	lw $t1, -2112($fp)
	lw $t2, -2116($fp)
	bgt $t1, $t2, label221
	j label222
label221:
	li $t0, 1
	sw $t0, -2092($fp)
label222:
	li $t0, 0
	sw $t0, -2120($fp)
	li $t0, 55806
	sw $t0, -2124($fp)
	lw $t1, -2124($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label223
label223:
	li $t0, 1
	sw $t0, -2120($fp)
label224:
	lw $t0, -592($fp)
	sw $t0, -2128($fp)
	lw $t0, -2120($fp)
	lw $t1, -2128($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2132($fp)
	addi $sp, $sp, -4
	lw $t0, -2072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2132($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2136($fp)
	addi $sp, $sp, 16
	lw $t1, -2136($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label216
label216:
	li $t0, 59846
	sw $t0, -2140($fp)
	lw $t1, -2140($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label215
label214:
	li $t0, 1
	sw $t0, -2068($fp)
label215:
	li $t0, 0
	sw $t0, -2144($fp)
	li $t0, 27320
	sw $t0, -2148($fp)
	lw $t1, -2148($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label226
label227:
	lw $t0, -184($fp)
	sw $t0, -2152($fp)
	lw $t1, -2152($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label226
label225:
	li $t0, 1
	sw $t0, -2144($fp)
label226:
	lw $t0, -328($fp)
	sw $t0, -2156($fp)
	lw $t0, 4($fp)
	sw $t0, -2160($fp)
	lw $t0, -2156($fp)
	lw $t1, -2160($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2164($fp)
	li $t0, 60175
	sw $t0, -2168($fp)
	lw $t0, -2164($fp)
	lw $t1, -2168($fp)
	sub $t0, $t0, $t1
	sw $t0, -2172($fp)
	addi $sp, $sp, -4
	lw $t0, -2068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2172($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2176($fp)
	addi $sp, $sp, 16
	lw $t0, -1036($fp)
	sw $t0, -2180($fp)
	lw $t0, -2176($fp)
	lw $t1, -2180($fp)
	mul $t0, $t0, $t1
	sw $t0, -2184($fp)
	addi $t0, $fp, -72
	sw $t0, -2188($fp)
	li $t0, 2
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
	lw $t0, -2184($fp)
	lw $t1, -2204($fp)
	mul $t0, $t0, $t1
	sw $t0, -2208($fp)
	lw $t1, -2208($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label212
label211:
	li $t0, 1
	sw $t0, -2060($fp)
label212:
	li $t0, 0
	sw $t0, -2212($fp)
	li $t0, 0
	sw $t0, -2216($fp)
	li $t0, 18021
	sw $t0, -2220($fp)
	lw $t0, -724($fp)
	sw $t0, -2224($fp)
	lw $t1, -2220($fp)
	lw $t2, -2224($fp)
	blt $t1, $t2, label230
	j label231
label230:
	li $t0, 1
	sw $t0, -2216($fp)
label231:
	lw $t0, -592($fp)
	sw $t0, -2228($fp)
	lw $t1, -2216($fp)
	lw $t2, -2228($fp)
	bge $t1, $t2, label228
	j label229
label228:
	li $t0, 1
	sw $t0, -2212($fp)
label229:
label232:
	li $t0, 0
	sw $t0, -2232($fp)
	lw $t0, -676($fp)
	sw $t0, -2236($fp)
	li $t0, 28263
	sw $t0, -2240($fp)
	lw $t0, -316($fp)
	sw $t0, -2244($fp)
	lw $t0, -2240($fp)
	lw $t1, -2244($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2248($fp)
	lw $t1, -2236($fp)
	lw $t2, -2248($fp)
	bge $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -2232($fp)
label236:
	li $t0, 0
	sw $t0, -2252($fp)
	li $t0, 0
	sw $t0, -2256($fp)
	addi $t0, $fp, -72
	sw $t0, -2260($fp)
	li $t0, 2
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
	lw $t1, -2276($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label240
label241:
	li $t0, 62315
	sw $t0, -2280($fp)
	lw $t1, -2280($fp)
	li $t2, 0
	bne $t1, $t2, label239
	j label240
label239:
	li $t0, 1
	sw $t0, -2256($fp)
label240:
	lw $t0, -1060($fp)
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -2288($fp)
	lw $t0, -724($fp)
	sw $t0, -2292($fp)
	addi $sp, $sp, -4
	lw $t0, -2256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2292($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2296($fp)
	addi $sp, $sp, 16
	li $t0, 40449
	sw $t0, -2300($fp)
	lw $t0, -2296($fp)
	lw $t1, -2300($fp)
	add $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $t0, -784($fp)
	sw $t0, -2308($fp)
	lw $t0, -1168($fp)
	sw $t0, -2312($fp)
	lw $t0, -2308($fp)
	lw $t1, -2312($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2316($fp)
	lw $t1, -2304($fp)
	lw $t2, -2316($fp)
	blt $t1, $t2, label237
	j label238
label237:
	li $t0, 1
	sw $t0, -2252($fp)
label238:
	lw $t1, -2232($fp)
	lw $t2, -2252($fp)
	bne $t1, $t2, label233
	j label234
label233:
label242:
	li $t0, 13678
	sw $t0, -2320($fp)
	li $t0, 0
	sw $t0, -2324($fp)
	li $t0, 48537
	sw $t0, -2328($fp)
	lw $t1, -2328($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label246
label248:
	li $t0, 60237
	sw $t0, -2332($fp)
	lw $t1, -2332($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label246
label247:
	lw $t0, -1072($fp)
	sw $t0, -2336($fp)
	lw $t1, -2336($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label246
label245:
	li $t0, 1
	sw $t0, -2324($fp)
label246:
	li $t0, 41746
	sw $t0, -2340($fp)
	li $t0, 17593
	sw $t0, -2344($fp)
	lw $t0, -2340($fp)
	lw $t1, -2344($fp)
	mul $t0, $t0, $t1
	sw $t0, -2348($fp)
	addi $sp, $sp, -4
	lw $t0, -2320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2348($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2352($fp)
	addi $sp, $sp, 16
	li $t0, 11811
	sw $t0, -2356($fp)
	lw $t0, -2352($fp)
	lw $t1, -2356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2360($fp)
	li $t0, 0
	lw $t1, -2360($fp)
	sub $t0, $t0, $t1
	sw $t0, -2364($fp)
	lw $t1, -2364($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label244
label243:
	li $t0, 0
	sw $t0, -2368($fp)
	lw $t0, -1096($fp)
	sw $t0, -2372($fp)
	li $t0, 60146
	sw $t0, -2376($fp)
	lw $t0, -2372($fp)
	lw $t1, -2376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2380($fp)
	lw $t0, -688($fp)
	sw $t0, -2384($fp)
	lw $t0, -592($fp)
	sw $t0, -2388($fp)
	lw $t0, -2384($fp)
	lw $t1, -2388($fp)
	mul $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t0, -2380($fp)
	lw $t1, -2392($fp)
	sub $t0, $t0, $t1
	sw $t0, -2396($fp)
	lw $t1, -2396($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label250
label252:
	lw $t0, -1036($fp)
	sw $t0, -2400($fp)
	lw $t0, -808($fp)
	sw $t0, -2404($fp)
	li $t0, 4690
	sw $t0, -2408($fp)
	lw $t0, -2404($fp)
	lw $t1, -2408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2412($fp)
	lw $t0, -316($fp)
	sw $t0, -2416($fp)
	lw $t0, -2412($fp)
	lw $t1, -2416($fp)
	mul $t0, $t0, $t1
	sw $t0, -2420($fp)
	li $t0, 0
	sw $t0, -2424($fp)
	li $t0, 2604
	sw $t0, -2428($fp)
	lw $t1, -2428($fp)
	li $t2, 0
	bne $t1, $t2, label254
	j label253
label253:
	li $t0, 1
	sw $t0, -2424($fp)
label254:
	li $t0, 0
	lw $t1, -2424($fp)
	sub $t0, $t0, $t1
	sw $t0, -2432($fp)
	addi $sp, $sp, -4
	lw $t0, -2400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2432($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2436($fp)
	addi $sp, $sp, 16
	lw $t0, -1108($fp)
	sw $t0, -2440($fp)
	lw $t0, -2436($fp)
	lw $t1, -2440($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2444($fp)
	lw $t1, -2444($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label250
label251:
	addi $t0, $fp, -48
	sw $t0, -2448($fp)
	lw $t0, -496($fp)
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
	li $t0, 2086
	sw $t0, -2468($fp)
	li $t0, 0
	lw $t1, -2468($fp)
	sub $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t0, -2464($fp)
	lw $t1, -2472($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2476($fp)
	lw $t1, -2476($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label250
label249:
	li $t0, 1
	sw $t0, -2368($fp)
label250:
	lw $ra, -4($fp)
	lw $v0, -2368($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label242
label244:
	j label232
label234:
	addi $t0, $fp, -56
	sw $t0, -2480($fp)
	li $t0, 0
	sw $t0, -2484($fp)
	lw $t0, -700($fp)
	sw $t0, -2488($fp)
	lw $t0, -484($fp)
	sw $t0, -2492($fp)
	lw $t1, -2488($fp)
	lw $t2, -2492($fp)
	bne $t1, $t2, label258
	j label259
label258:
	li $t0, 1
	sw $t0, -2484($fp)
label259:
	li $t0, 4
	lw $t1, -2484($fp)
	mul $t0, $t0, $t1
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	lw $t1, -2480($fp)
	add $t0, $t0, $t1
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	lw $t1, 0($t0)
	sw $t1, -2504($fp)
	lw $t0, -820($fp)
	sw $t0, -2508($fp)
	li $t0, 0
	lw $t1, -2508($fp)
	sub $t0, $t0, $t1
	sw $t0, -2512($fp)
	li $t0, 0
	lw $t1, -2512($fp)
	sub $t0, $t0, $t1
	sw $t0, -2516($fp)
	lw $t0, -2504($fp)
	lw $t1, -2516($fp)
	add $t0, $t0, $t1
	sw $t0, -2520($fp)
	lw $t1, -2520($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label256
label255:
	li $t0, 0
	sw $t0, -2524($fp)
	li $t0, 0
	sw $t0, -2528($fp)
	addi $t0, $fp, -48
	sw $t0, -2532($fp)
	lw $t0, -1072($fp)
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
	li $t0, 24191
	sw $t0, -2552($fp)
	lw $t1, -2548($fp)
	lw $t2, -2552($fp)
	bgt $t1, $t2, label265
	j label266
label265:
	li $t0, 1
	sw $t0, -2528($fp)
label266:
	li $t0, 2375
	sw $t0, -2556($fp)
	lw $t1, -2528($fp)
	lw $t2, -2556($fp)
	beq $t1, $t2, label263
	j label264
label263:
	li $t0, 1
	sw $t0, -2524($fp)
label264:
	lw $t0, -2524($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -2560($fp)
	lw $t1, -2560($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label261
label260:
	addi $t0, $fp, -12
	sw $t0, -2564($fp)
	lw $t0, -808($fp)
	sw $t0, -2568($fp)
	li $t0, 0
	lw $t1, -2568($fp)
	sub $t0, $t0, $t1
	sw $t0, -2572($fp)
	li $t0, 0
	sw $t0, -2576($fp)
	li $t0, 43787
	sw $t0, -2580($fp)
	lw $t1, -2580($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label267
label267:
	li $t0, 1
	sw $t0, -2576($fp)
label268:
	li $t0, 62486
	sw $t0, -2584($fp)
	lw $t0, -2576($fp)
	lw $t1, -2584($fp)
	add $t0, $t0, $t1
	sw $t0, -2588($fp)
	lw $t0, -808($fp)
	sw $t0, -2592($fp)
	lw $t0, -748($fp)
	sw $t0, -2596($fp)
	lw $t0, -2592($fp)
	lw $t1, -2596($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2600($fp)
	lw $t0, -1072($fp)
	sw $t0, -2604($fp)
	lw $t0, -2600($fp)
	lw $t1, -2604($fp)
	sub $t0, $t0, $t1
	sw $t0, -2608($fp)
	addi $sp, $sp, -4
	lw $t0, -2572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2608($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2612($fp)
	addi $sp, $sp, 16
	lw $t0, -2612($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -2616($fp)
	li $t0, 4
	lw $t1, -2616($fp)
	mul $t0, $t0, $t1
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	lw $t1, -2564($fp)
	add $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	lw $t1, 0($t0)
	sw $t1, -2628($fp)
	lw $ra, -4($fp)
	lw $v0, -2628($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label262
label261:
label269:
	lw $t0, -376($fp)
	sw $t0, -2632($fp)
	li $t0, 57294
	sw $t0, -2636($fp)
	lw $t0, -2632($fp)
	lw $t1, -2636($fp)
	sub $t0, $t0, $t1
	sw $t0, -2640($fp)
	li $t0, 40326
	sw $t0, -2644($fp)
	lw $t0, -2640($fp)
	lw $t1, -2644($fp)
	add $t0, $t0, $t1
	sw $t0, -2648($fp)
	li $t0, 0
	sw $t0, -2652($fp)
	li $t0, 0
	sw $t0, -2656($fp)
	li $t0, 33306
	sw $t0, -2660($fp)
	lw $t0, -592($fp)
	sw $t0, -2664($fp)
	lw $t1, -2660($fp)
	lw $t2, -2664($fp)
	ble $t1, $t2, label274
	j label275
label274:
	li $t0, 1
	sw $t0, -2656($fp)
label275:
	lw $t0, -796($fp)
	sw $t0, -2668($fp)
	lw $t1, -2656($fp)
	lw $t2, -2668($fp)
	bne $t1, $t2, label272
	j label273
label272:
	li $t0, 1
	sw $t0, -2652($fp)
label273:
	li $t0, 62655
	sw $t0, -2672($fp)
	li $t0, 0
	lw $t1, -2672($fp)
	sub $t0, $t0, $t1
	sw $t0, -2676($fp)
	li $t0, 13006
	sw $t0, -2680($fp)
	lw $t0, -2676($fp)
	lw $t1, -2680($fp)
	sub $t0, $t0, $t1
	sw $t0, -2684($fp)
	addi $sp, $sp, -4
	lw $t0, -2648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2684($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2688($fp)
	addi $sp, $sp, 16
	lw $t0, -784($fp)
	sw $t0, -2692($fp)
	li $t0, 0
	lw $t1, -2692($fp)
	sub $t0, $t0, $t1
	sw $t0, -2696($fp)
	lw $t0, -2688($fp)
	lw $t1, -2696($fp)
	mul $t0, $t0, $t1
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -2704($fp)
	lw $t1, -2704($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label271
label270:
	li $t0, 0
	sw $t0, -2708($fp)
	addi $t0, $fp, -48
	sw $t0, -2712($fp)
	li $t0, 0
	sw $t0, -2716($fp)
	li $t0, 23576
	sw $t0, -2720($fp)
	lw $t0, -1156($fp)
	sw $t0, -2724($fp)
	lw $t1, -2720($fp)
	lw $t2, -2724($fp)
	bgt $t1, $t2, label278
	j label279
label278:
	li $t0, 1
	sw $t0, -2716($fp)
label279:
	li $t0, 4
	lw $t1, -2716($fp)
	mul $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	lw $t1, -2712($fp)
	add $t0, $t0, $t1
	sw $t0, -2732($fp)
	lw $t0, -2732($fp)
	lw $t1, 0($t0)
	sw $t1, -2736($fp)
	lw $t1, -2736($fp)
	li $t2, 0
	bne $t1, $t2, label277
	j label276
label276:
	li $t0, 1
	sw $t0, -2708($fp)
label277:
	li $t0, 0
	sw $t0, -2740($fp)
	lw $t0, -364($fp)
	sw $t0, -2744($fp)
	li $t0, 0
	lw $t1, -2744($fp)
	sub $t0, $t0, $t1
	sw $t0, -2748($fp)
	lw $t1, -2748($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label280
label280:
	li $t0, 1
	sw $t0, -2740($fp)
label281:
	li $t0, 0
	lw $t1, -2740($fp)
	sub $t0, $t0, $t1
	sw $t0, -2752($fp)
	lw $t0, -2708($fp)
	lw $t1, -2752($fp)
	mul $t0, $t0, $t1
	sw $t0, -2756($fp)
	j label269
label271:
label262:
	j label257
label256:
	li $t0, 17886
	sw $t0, -2760($fp)
	lw $t0, 4($fp)
	sw $t0, -2764($fp)
	lw $t0, -2760($fp)
	lw $t1, -2764($fp)
	sub $t0, $t0, $t1
	sw $t0, -2768($fp)
	li $t0, 45974
	sw $t0, -2772($fp)
	lw $t0, -2768($fp)
	lw $t1, -2772($fp)
	add $t0, $t0, $t1
	sw $t0, -2776($fp)
	li $t0, 13847
	sw $t0, -2780($fp)
	lw $t0, -772($fp)
	sw $t0, -2784($fp)
	lw $t0, -2780($fp)
	lw $t1, -2784($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2788($fp)
	li $t0, 0
	sw $t0, -2792($fp)
	li $t0, 53540
	sw $t0, -2796($fp)
	lw $t0, -736($fp)
	sw $t0, -2800($fp)
	lw $t1, -2796($fp)
	lw $t2, -2800($fp)
	bge $t1, $t2, label285
	j label286
label285:
	li $t0, 1
	sw $t0, -2792($fp)
label286:
	addi $sp, $sp, -4
	lw $t0, -2776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2792($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2804($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -2808($fp)
	li $t0, 45021
	sw $t0, -2812($fp)
	lw $t1, -2812($fp)
	li $t2, 0
	bne $t1, $t2, label287
	j label288
label287:
	li $t0, 1
	sw $t0, -2808($fp)
label288:
	lw $t0, -2804($fp)
	lw $t1, -2808($fp)
	mul $t0, $t0, $t1
	sw $t0, -2816($fp)
	li $t0, 0
	lw $t1, -2816($fp)
	sub $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $t1, -2820($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label283
label282:
	lw $t0, -808($fp)
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -2828($fp)
	lw $t1, -2828($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label290
label289:
	li $t0, 35907
	sw $t0, -2832($fp)
	li $t0, 0
	lw $t1, -2832($fp)
	sub $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t1, -2836($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label295
label297:
	lw $t0, -700($fp)
	sw $t0, -2840($fp)
	lw $t1, -2840($fp)
	li $t2, 0
	bne $t1, $t2, label296
	j label295
label296:
	lw $t0, -1048($fp)
	sw $t0, -2844($fp)
	lw $t1, -2844($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label295
label295:
	li $t0, 8701
	sw $t0, -2848($fp)
	lw $t1, -2848($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label293
label292:
	li $t0, 0
	sw $t0, -2852($fp)
	lw $t0, -1060($fp)
	sw $t0, -2856($fp)
	lw $t1, -2856($fp)
	li $t2, 0
	bne $t1, $t2, label302
	j label301
label301:
	li $t0, 1
	sw $t0, -2852($fp)
label302:
	addi $t0, $fp, -12
	sw $t0, -2860($fp)
	lw $t0, -760($fp)
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
	lw $t0, -2852($fp)
	lw $t1, -2876($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2880($fp)
	lw $t0, -832($fp)
	sw $t0, -2884($fp)
	lw $t0, -2880($fp)
	lw $t1, -2884($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2888($fp)
	li $t0, 0
	lw $t1, -2888($fp)
	sub $t0, $t0, $t1
	sw $t0, -2892($fp)
	addi $t0, $fp, -104
	sw $t0, -2896($fp)
	li $t0, 0
	sw $t0, -2900($fp)
	li $t0, 9066
	sw $t0, -2904($fp)
	lw $t1, -2904($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label305
label305:
	lw $t0, -1072($fp)
	sw $t0, -2908($fp)
	lw $t1, -2908($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label304
label303:
	li $t0, 1
	sw $t0, -2900($fp)
label304:
	li $t0, 4
	lw $t1, -2900($fp)
	mul $t0, $t0, $t1
	sw $t0, -2912($fp)
	lw $t0, -2912($fp)
	lw $t1, -2896($fp)
	add $t0, $t0, $t1
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	lw $t1, 0($t0)
	sw $t1, -2920($fp)
	lw $t0, -2892($fp)
	lw $t1, -2920($fp)
	add $t0, $t0, $t1
	sw $t0, -2924($fp)
	lw $t1, -2924($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label299
label298:
	li $t0, 0
	sw $t0, -2928($fp)
	li $t0, 0
	sw $t0, -2932($fp)
	lw $t0, -1072($fp)
	sw $t0, -2936($fp)
	li $t0, 23074
	sw $t0, -2940($fp)
	lw $t0, -2936($fp)
	lw $t1, -2940($fp)
	sub $t0, $t0, $t1
	sw $t0, -2944($fp)
	li $t0, 59736
	sw $t0, -2948($fp)
	lw $t0, -2948($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -2952($fp)
	lw $t0, -1168($fp)
	sw $t0, -2956($fp)
	li $t0, 0
	lw $t1, -2956($fp)
	sub $t0, $t0, $t1
	sw $t0, -2960($fp)
	li $t0, 0
	lw $t1, -2960($fp)
	sub $t0, $t0, $t1
	sw $t0, -2964($fp)
	addi $sp, $sp, -4
	lw $t0, -2944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2964($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2968($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -2972($fp)
	li $t0, 17989
	sw $t0, -2976($fp)
	li $t0, 5481
	sw $t0, -2980($fp)
	lw $t0, -2976($fp)
	lw $t1, -2980($fp)
	mul $t0, $t0, $t1
	sw $t0, -2984($fp)
	lw $t1, -2984($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label312
label312:
	li $t0, 49515
	sw $t0, -2988($fp)
	lw $t1, -2988($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label311
label310:
	li $t0, 1
	sw $t0, -2972($fp)
label311:
	li $t0, 0
	sw $t0, -2992($fp)
	lw $t0, -1084($fp)
	sw $t0, -2996($fp)
	lw $t0, -808($fp)
	sw $t0, -3000($fp)
	lw $t0, -2996($fp)
	lw $t1, -3000($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3004($fp)
	lw $t1, -3004($fp)
	li $t2, 0
	bne $t1, $t2, label315
	j label314
label315:
	lw $t0, -1072($fp)
	sw $t0, -3008($fp)
	lw $t1, -3008($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label314
label313:
	li $t0, 1
	sw $t0, -2992($fp)
label314:
	addi $sp, $sp, -4
	lw $t0, -2968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2992($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3012($fp)
	addi $sp, $sp, 16
	lw $t1, -3012($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label308
label308:
	li $t0, 1
	sw $t0, -2932($fp)
label309:
	li $t0, 32516
	sw $t0, -3016($fp)
	li $t0, 54437
	sw $t0, -3020($fp)
	lw $t0, -3016($fp)
	lw $t1, -3020($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3024($fp)
	li $t0, 0
	lw $t1, -3024($fp)
	sub $t0, $t0, $t1
	sw $t0, -3028($fp)
	lw $t1, -2932($fp)
	lw $t2, -3028($fp)
	bgt $t1, $t2, label306
	j label307
label306:
	li $t0, 1
	sw $t0, -2928($fp)
label307:
	j label300
label299:
label316:
	lw $t0, -724($fp)
	sw $t0, -3032($fp)
	lw $t1, -3032($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label318
label319:
	li $t0, 0
	sw $t0, -3036($fp)
	lw $t0, -808($fp)
	sw $t0, -3040($fp)
	lw $t0, -1036($fp)
	sw $t0, -3044($fp)
	lw $t0, -3040($fp)
	lw $t1, -3044($fp)
	mul $t0, $t0, $t1
	sw $t0, -3048($fp)
	li $t0, 36752
	sw $t0, -3052($fp)
	lw $t1, -3048($fp)
	lw $t2, -3052($fp)
	bne $t1, $t2, label320
	j label321
label320:
	li $t0, 1
	sw $t0, -3036($fp)
label321:
	lw $t0, -688($fp)
	sw $t0, -3056($fp)
	li $t0, 0
	lw $t1, -3056($fp)
	sub $t0, $t0, $t1
	sw $t0, -3060($fp)
	lw $t1, -3036($fp)
	lw $t2, -3060($fp)
	bne $t1, $t2, label317
	j label318
label317:
	li $t0, 44327
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -3068($fp)
	j label316
label318:
label300:
	j label294
label293:
	lw $t0, -1144($fp)
	sw $t0, -3072($fp)
	lw $t0, -1132($fp)
	sw $t0, -3076($fp)
	li $t0, 49047
	sw $t0, -3080($fp)
	lw $t0, -3076($fp)
	lw $t1, -3080($fp)
	mul $t0, $t0, $t1
	sw $t0, -3084($fp)
	lw $t0, -808($fp)
	sw $t0, -3088($fp)
	lw $t0, -808($fp)
	sw $t0, -3092($fp)
	lw $t0, -3088($fp)
	lw $t1, -3092($fp)
	mul $t0, $t0, $t1
	sw $t0, -3096($fp)
	lw $t0, -376($fp)
	sw $t0, -3100($fp)
	lw $t0, -3096($fp)
	lw $t1, -3100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3104($fp)
	addi $sp, $sp, -4
	lw $t0, -3072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3104($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3108($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -3112($fp)
	li $t0, 39356
	sw $t0, -3116($fp)
	lw $t1, -3116($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label325
label325:
	li $t0, 1
	sw $t0, -3112($fp)
label326:
	lw $t0, -3108($fp)
	lw $t1, -3112($fp)
	add $t0, $t0, $t1
	sw $t0, -3120($fp)
	lw $t0, -352($fp)
	sw $t0, -3124($fp)
	lw $t1, -3120($fp)
	lw $t2, -3124($fp)
	bge $t1, $t2, label322
	j label323
label322:
	li $t0, 49018
	sw $t0, -3128($fp)
	li $t0, 0
	lw $t1, -3128($fp)
	sub $t0, $t0, $t1
	sw $t0, -3132($fp)
	lw $t0, -316($fp)
	sw $t0, -3136($fp)
	li $t0, 51133
	sw $t0, -3140($fp)
	li $t0, 0
	lw $t1, -3140($fp)
	sub $t0, $t0, $t1
	sw $t0, -3144($fp)
	lw $t0, -3136($fp)
	lw $t1, -3144($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3148($fp)
	li $t0, 0
	lw $t1, -3148($fp)
	sub $t0, $t0, $t1
	sw $t0, -3152($fp)
	lw $t1, -3132($fp)
	lw $t2, -3152($fp)
	bgt $t1, $t2, label327
	j label328
label327:
	li $t0, 0
	sw $t0, -3156($fp)
	li $t0, 0
	sw $t0, -3160($fp)
	lw $t0, -1072($fp)
	sw $t0, -3164($fp)
	li $t0, 51843
	sw $t0, -3168($fp)
	lw $t0, -1072($fp)
	sw $t0, -3172($fp)
	lw $t0, -3168($fp)
	lw $t1, -3172($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3176($fp)
	lw $t0, -712($fp)
	sw $t0, -3180($fp)
	lw $t0, -3180($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -3184($fp)
	li $t0, 0
	sw $t0, -3188($fp)
	lw $t0, -112($fp)
	sw $t0, -3192($fp)
	lw $t0, -376($fp)
	sw $t0, -3196($fp)
	lw $t1, -3192($fp)
	lw $t2, -3196($fp)
	bne $t1, $t2, label336
	j label335
label336:
	lw $t0, -484($fp)
	sw $t0, -3200($fp)
	lw $t1, -3200($fp)
	li $t2, 0
	bne $t1, $t2, label334
	j label335
label334:
	li $t0, 1
	sw $t0, -3188($fp)
label335:
	li $t0, 0
	sw $t0, -3204($fp)
	lw $t0, -484($fp)
	sw $t0, -3208($fp)
	lw $t1, -3208($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label339
label339:
	li $t0, 40270
	sw $t0, -3212($fp)
	lw $t1, -3212($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label338
label337:
	li $t0, 1
	sw $t0, -3204($fp)
label338:
	li $t0, 0
	sw $t0, -3216($fp)
	li $t0, 42390
	sw $t0, -3220($fp)
	li $t0, 28267
	sw $t0, -3224($fp)
	lw $t1, -3220($fp)
	lw $t2, -3224($fp)
	bgt $t1, $t2, label342
	j label341
label342:
	lw $t0, -184($fp)
	sw $t0, -3228($fp)
	lw $t1, -3228($fp)
	li $t2, 0
	bne $t1, $t2, label340
	j label341
label340:
	li $t0, 1
	sw $t0, -3216($fp)
label341:
	addi $sp, $sp, -4
	lw $t0, -3188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3216($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3232($fp)
	addi $sp, $sp, 16
	li $t0, 17181
	sw $t0, -3236($fp)
	lw $t0, -3232($fp)
	lw $t1, -3236($fp)
	sub $t0, $t0, $t1
	sw $t0, -3240($fp)
	li $t0, 0
	sw $t0, -3244($fp)
	lw $t0, -496($fp)
	sw $t0, -3248($fp)
	li $t0, 0
	sw $t0, -3252($fp)
	li $t0, 60497
	sw $t0, -3256($fp)
	li $t0, 48512
	sw $t0, -3260($fp)
	lw $t1, -3256($fp)
	lw $t2, -3260($fp)
	blt $t1, $t2, label345
	j label346
label345:
	li $t0, 1
	sw $t0, -3252($fp)
label346:
	li $t0, 0
	sw $t0, -3264($fp)
	li $t0, 29384
	sw $t0, -3268($fp)
	lw $t0, -808($fp)
	sw $t0, -3272($fp)
	lw $t0, -3268($fp)
	lw $t1, -3272($fp)
	add $t0, $t0, $t1
	sw $t0, -3276($fp)
	lw $t0, -496($fp)
	sw $t0, -3280($fp)
	lw $t1, -3276($fp)
	lw $t2, -3280($fp)
	beq $t1, $t2, label347
	j label348
label347:
	li $t0, 1
	sw $t0, -3264($fp)
label348:
	addi $sp, $sp, -4
	lw $t0, -3248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3264($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3284($fp)
	addi $sp, $sp, 16
	lw $t0, -316($fp)
	sw $t0, -3288($fp)
	lw $t1, -3284($fp)
	lw $t2, -3288($fp)
	beq $t1, $t2, label343
	j label344
label343:
	li $t0, 1
	sw $t0, -3244($fp)
label344:
	li $t0, 0
	sw $t0, -3292($fp)
	li $t0, 0
	sw $t0, -3296($fp)
	lw $t0, -760($fp)
	sw $t0, -3300($fp)
	li $t0, 63547
	sw $t0, -3304($fp)
	lw $t1, -3300($fp)
	lw $t2, -3304($fp)
	blt $t1, $t2, label351
	j label352
label351:
	li $t0, 1
	sw $t0, -3296($fp)
label352:
	li $t0, 51393
	sw $t0, -3308($fp)
	lw $t1, -3296($fp)
	lw $t2, -3308($fp)
	blt $t1, $t2, label349
	j label350
label349:
	li $t0, 1
	sw $t0, -3292($fp)
label350:
	addi $sp, $sp, -4
	lw $t0, -3240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3292($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3312($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -3176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3312($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3316($fp)
	addi $sp, $sp, 16
	lw $t1, -3164($fp)
	lw $t2, -3316($fp)
	blt $t1, $t2, label332
	j label333
label332:
	li $t0, 1
	sw $t0, -3160($fp)
label333:
	li $t0, 0
	sw $t0, -3320($fp)
	li $t0, 0
	sw $t0, -3324($fp)
	lw $t0, 8($fp)
	sw $t0, -3328($fp)
	lw $t0, -772($fp)
	sw $t0, -3332($fp)
	lw $t1, -3328($fp)
	lw $t2, -3332($fp)
	bne $t1, $t2, label355
	j label356
label355:
	li $t0, 1
	sw $t0, -3324($fp)
label356:
	li $t0, 10513
	sw $t0, -3336($fp)
	lw $t1, -3324($fp)
	lw $t2, -3336($fp)
	beq $t1, $t2, label353
	j label354
label353:
	li $t0, 1
	sw $t0, -3320($fp)
label354:
	li $t0, 0
	sw $t0, -3340($fp)
	lw $t0, -748($fp)
	sw $t0, -3344($fp)
	li $t0, 4194
	sw $t0, -3348($fp)
	lw $t0, -3344($fp)
	lw $t1, -3348($fp)
	add $t0, $t0, $t1
	sw $t0, -3352($fp)
	lw $t1, -3352($fp)
	li $t2, 0
	bne $t1, $t2, label357
	j label359
label359:
	li $t0, 8713
	sw $t0, -3356($fp)
	lw $t1, -3356($fp)
	li $t2, 0
	bne $t1, $t2, label357
	j label358
label357:
	li $t0, 1
	sw $t0, -3340($fp)
label358:
	li $t0, 0
	sw $t0, -3360($fp)
	addi $t0, $fp, -12
	sw $t0, -3364($fp)
	li $t0, 0
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
	lw $t0, -1096($fp)
	sw $t0, -3384($fp)
	lw $t1, -3380($fp)
	lw $t2, -3384($fp)
	bge $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -3360($fp)
label361:
	addi $sp, $sp, -4
	lw $t0, -3320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3360($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3388($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -60
	sw $t0, -3392($fp)
	li $t0, 0
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
	lw $t0, -3388($fp)
	lw $t1, -3408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3412($fp)
	lw $t1, -3160($fp)
	lw $t2, -3412($fp)
	beq $t1, $t2, label330
	j label331
label330:
	li $t0, 1
	sw $t0, -3156($fp)
label331:
	j label329
label328:
	li $t0, 0
	sw $t0, -3416($fp)
	li $t0, 19579
	sw $t0, -3420($fp)
	lw $t1, -3420($fp)
	li $t2, 0
	bne $t1, $t2, label365
	j label363
label365:
	lw $t0, -760($fp)
	sw $t0, -3424($fp)
	li $t0, 58091
	sw $t0, -3428($fp)
	lw $t0, -3424($fp)
	lw $t1, -3428($fp)
	mul $t0, $t0, $t1
	sw $t0, -3432($fp)
	lw $t1, -3432($fp)
	li $t2, 0
	bne $t1, $t2, label364
	j label363
label364:
	lw $t0, -760($fp)
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -3440($fp)
	li $t0, 0
	sw $t0, -3444($fp)
	li $t0, 0
	sw $t0, -3448($fp)
	li $t0, 22896
	sw $t0, -3452($fp)
	lw $t0, -556($fp)
	sw $t0, -3456($fp)
	lw $t1, -3452($fp)
	lw $t2, -3456($fp)
	bgt $t1, $t2, label368
	j label369
label368:
	li $t0, 1
	sw $t0, -3448($fp)
label369:
	lw $t0, 12($fp)
	sw $t0, -3460($fp)
	lw $t1, -3448($fp)
	lw $t2, -3460($fp)
	bne $t1, $t2, label366
	j label367
label366:
	li $t0, 1
	sw $t0, -3444($fp)
label367:
	li $t0, 0
	sw $t0, -3464($fp)
	lw $t0, -340($fp)
	sw $t0, -3468($fp)
	lw $t1, -3468($fp)
	li $t2, 0
	bne $t1, $t2, label370
	j label372
label372:
	lw $t0, -1084($fp)
	sw $t0, -3472($fp)
	lw $t1, -3472($fp)
	li $t2, 0
	bne $t1, $t2, label370
	j label371
label370:
	li $t0, 1
	sw $t0, -3464($fp)
label371:
	addi $sp, $sp, -4
	lw $t0, -3440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3464($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3476($fp)
	addi $sp, $sp, 16
	li $t0, 3558
	sw $t0, -3480($fp)
	lw $t0, -3476($fp)
	lw $t1, -3480($fp)
	mul $t0, $t0, $t1
	sw $t0, -3484($fp)
	li $t0, 52291
	sw $t0, -3488($fp)
	lw $t0, -1072($fp)
	sw $t0, -3492($fp)
	lw $t0, -3488($fp)
	lw $t1, -3492($fp)
	mul $t0, $t0, $t1
	sw $t0, -3496($fp)
	lw $t1, -3484($fp)
	lw $t2, -3496($fp)
	blt $t1, $t2, label362
	j label363
label362:
	li $t0, 1
	sw $t0, -3416($fp)
label363:
label329:
	j label324
label323:
	lw $t0, -808($fp)
	sw $t0, -3500($fp)
	lw $t0, -724($fp)
	sw $t0, -3504($fp)
	lw $t0, -3500($fp)
	lw $t1, -3504($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3508($fp)
	li $t0, 0
	sw $t0, -3512($fp)
	lw $t0, -1120($fp)
	sw $t0, -3516($fp)
	li $t0, 45970
	sw $t0, -3520($fp)
	lw $t0, -3516($fp)
	lw $t1, -3520($fp)
	sub $t0, $t0, $t1
	sw $t0, -3524($fp)
	lw $t1, -3524($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label375
label375:
	li $t0, 36074
	sw $t0, -3528($fp)
	lw $t1, -3528($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label374
label373:
	li $t0, 1
	sw $t0, -3512($fp)
label374:
	addi $t0, $fp, -32
	sw $t0, -3532($fp)
	lw $t0, -592($fp)
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
	addi $sp, $sp, -4
	lw $t0, -3508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3548($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3552($fp)
	addi $sp, $sp, 16
	li $t0, 41192
	sw $t0, -3556($fp)
	lw $t0, -3552($fp)
	lw $t1, -3556($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3560($fp)
	lw $t0, -328($fp)
	sw $t0, -3564($fp)
	lw $t0, -3560($fp)
	lw $t1, -3564($fp)
	sub $t0, $t0, $t1
	sw $t0, -3568($fp)
label324:
label294:
	j label291
label290:
	li $t0, 17187
	sw $t0, -3572($fp)
label291:
	j label284
label283:
label376:
	li $t0, 0
	sw $t0, -3576($fp)
	li $t0, 56543
	sw $t0, -3580($fp)
	li $t0, 0
	lw $t1, -3580($fp)
	sub $t0, $t0, $t1
	sw $t0, -3584($fp)
	lw $t1, -3584($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label381
label381:
	lw $t0, -1084($fp)
	sw $t0, -3588($fp)
	lw $t1, -3588($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label380
label379:
	li $t0, 1
	sw $t0, -3576($fp)
label380:
	li $t0, 0
	sw $t0, -3592($fp)
	lw $t0, -376($fp)
	sw $t0, -3596($fp)
	lw $t1, -3596($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label385
label385:
	lw $t0, -592($fp)
	sw $t0, -3600($fp)
	lw $t1, -3600($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label384
label384:
	li $t0, 24703
	sw $t0, -3604($fp)
	lw $t1, -3604($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label383
label382:
	li $t0, 1
	sw $t0, -3592($fp)
label383:
	li $t0, 0
	sw $t0, -3608($fp)
	li $t0, 14866
	sw $t0, -3612($fp)
	li $t0, 0
	lw $t1, -3612($fp)
	sub $t0, $t0, $t1
	sw $t0, -3616($fp)
	lw $t0, -484($fp)
	sw $t0, -3620($fp)
	lw $t1, -3616($fp)
	lw $t2, -3620($fp)
	bne $t1, $t2, label386
	j label387
label386:
	li $t0, 1
	sw $t0, -3608($fp)
label387:
	addi $sp, $sp, -4
	lw $t0, -3576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3608($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3624($fp)
	addi $sp, $sp, 16
	lw $t1, -3624($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label378
label377:
	li $t0, 0
	sw $t0, -3628($fp)
	lw $t0, -1120($fp)
	sw $t0, -3632($fp)
	lw $t0, -316($fp)
	sw $t0, -3636($fp)
	lw $t1, -3632($fp)
	lw $t2, -3636($fp)
	bne $t1, $t2, label388
	j label389
label388:
	li $t0, 1
	sw $t0, -3628($fp)
label389:
	li $t0, 0
	sw $t0, -3640($fp)
	li $t0, 63884
	sw $t0, -3644($fp)
	li $t0, 10300
	sw $t0, -3648($fp)
	lw $t1, -3644($fp)
	lw $t2, -3648($fp)
	beq $t1, $t2, label390
	j label391
label390:
	li $t0, 1
	sw $t0, -3640($fp)
label391:
	lw $t0, -1036($fp)
	sw $t0, -3652($fp)
	addi $sp, $sp, -4
	lw $t0, -3628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3652($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3656($fp)
	addi $sp, $sp, 16
	j label376
label378:
label284:
label257:
	lw $t0, -112($fp)
	sw $t0, -3660($fp)
	lw $t0, -3660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
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
	addi $t0, $fp, -12
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
	lw $t0, -172($fp)
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -184($fp)
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -3712($fp)
	li $t0, 0
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
	lw $t0, -3728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
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
	lw $t0, -3748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -3752($fp)
	li $t0, 2
	sw $t0, -3756($fp)
	li $t0, 4
	lw $t1, -3756($fp)
	mul $t0, $t0, $t1
	sw $t0, -3760($fp)
	lw $t0, -3760($fp)
	lw $t1, -3752($fp)
	add $t0, $t0, $t1
	sw $t0, -3764($fp)
	lw $t0, -3764($fp)
	lw $t1, 0($t0)
	sw $t1, -3768($fp)
	lw $t0, -3768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -3772($fp)
	li $t0, 3
	sw $t0, -3776($fp)
	li $t0, 4
	lw $t1, -3776($fp)
	mul $t0, $t0, $t1
	sw $t0, -3780($fp)
	lw $t0, -3780($fp)
	lw $t1, -3772($fp)
	add $t0, $t0, $t1
	sw $t0, -3784($fp)
	lw $t0, -3784($fp)
	lw $t1, 0($t0)
	sw $t1, -3788($fp)
	lw $t0, -3788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -3792($fp)
	li $t0, 4
	sw $t0, -3796($fp)
	li $t0, 4
	lw $t1, -3796($fp)
	mul $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	lw $t1, -3792($fp)
	add $t0, $t0, $t1
	sw $t0, -3804($fp)
	lw $t0, -3804($fp)
	lw $t1, 0($t0)
	sw $t1, -3808($fp)
	lw $t0, -3808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -328($fp)
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -340($fp)
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -352($fp)
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -364($fp)
	sw $t0, -3828($fp)
	lw $t0, -3828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -376($fp)
	sw $t0, -3832($fp)
	lw $t0, -3832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
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
	lw $t0, -3852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -3856($fp)
	li $t0, 1
	sw $t0, -3860($fp)
	li $t0, 4
	lw $t1, -3860($fp)
	mul $t0, $t0, $t1
	sw $t0, -3864($fp)
	lw $t0, -3864($fp)
	lw $t1, -3856($fp)
	add $t0, $t0, $t1
	sw $t0, -3868($fp)
	lw $t0, -3868($fp)
	lw $t1, 0($t0)
	sw $t1, -3872($fp)
	lw $t0, -3872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -3876($fp)
	li $t0, 2
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
	lw $t0, -3892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -3896($fp)
	li $t0, 3
	sw $t0, -3900($fp)
	li $t0, 4
	lw $t1, -3900($fp)
	mul $t0, $t0, $t1
	sw $t0, -3904($fp)
	lw $t0, -3904($fp)
	lw $t1, -3896($fp)
	add $t0, $t0, $t1
	sw $t0, -3908($fp)
	lw $t0, -3908($fp)
	lw $t1, 0($t0)
	sw $t1, -3912($fp)
	lw $t0, -3912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -484($fp)
	sw $t0, -3916($fp)
	lw $t0, -3916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
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
	addi $t0, $fp, -56
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
	lw $t0, -556($fp)
	sw $t0, -3964($fp)
	lw $t0, -3964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
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
	lw $t0, -3984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -592($fp)
	sw $t0, -3988($fp)
	lw $t0, -3988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -3992($fp)
	li $t0, 0
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
	addi $t0, $fp, -72
	sw $t0, -4012($fp)
	li $t0, 1
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
	addi $t0, $fp, -72
	sw $t0, -4032($fp)
	li $t0, 2
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
	lw $t0, -676($fp)
	sw $t0, -4052($fp)
	lw $t0, -4052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -4056($fp)
	lw $t0, -4056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -4060($fp)
	lw $t0, -4060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	sw $t0, -4064($fp)
	lw $t0, -4064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -724($fp)
	sw $t0, -4068($fp)
	lw $t0, -4068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -736($fp)
	sw $t0, -4072($fp)
	lw $t0, -4072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -748($fp)
	sw $t0, -4076($fp)
	lw $t0, -4076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -760($fp)
	sw $t0, -4080($fp)
	lw $t0, -4080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -772($fp)
	sw $t0, -4084($fp)
	lw $t0, -4084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -784($fp)
	sw $t0, -4088($fp)
	lw $t0, -4088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -796($fp)
	sw $t0, -4092($fp)
	lw $t0, -4092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -808($fp)
	sw $t0, -4096($fp)
	lw $t0, -4096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -820($fp)
	sw $t0, -4100($fp)
	lw $t0, -4100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -832($fp)
	sw $t0, -4104($fp)
	lw $t0, -4104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -4108($fp)
	li $t0, 0
	sw $t0, -4112($fp)
	li $t0, 4
	lw $t1, -4112($fp)
	mul $t0, $t0, $t1
	sw $t0, -4116($fp)
	lw $t0, -4116($fp)
	lw $t1, -4108($fp)
	add $t0, $t0, $t1
	sw $t0, -4120($fp)
	lw $t0, -4120($fp)
	lw $t1, 0($t0)
	sw $t1, -4124($fp)
	lw $t0, -4124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -4128($fp)
	li $t0, 1
	sw $t0, -4132($fp)
	li $t0, 4
	lw $t1, -4132($fp)
	mul $t0, $t0, $t1
	sw $t0, -4136($fp)
	lw $t0, -4136($fp)
	lw $t1, -4128($fp)
	add $t0, $t0, $t1
	sw $t0, -4140($fp)
	lw $t0, -4140($fp)
	lw $t1, 0($t0)
	sw $t1, -4144($fp)
	lw $t0, -4144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -4148($fp)
	li $t0, 2
	sw $t0, -4152($fp)
	li $t0, 4
	lw $t1, -4152($fp)
	mul $t0, $t0, $t1
	sw $t0, -4156($fp)
	lw $t0, -4156($fp)
	lw $t1, -4148($fp)
	add $t0, $t0, $t1
	sw $t0, -4160($fp)
	lw $t0, -4160($fp)
	lw $t1, 0($t0)
	sw $t1, -4164($fp)
	lw $t0, -4164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -4168($fp)
	li $t0, 3
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
	addi $t0, $fp, -104
	sw $t0, -4188($fp)
	li $t0, 4
	sw $t0, -4192($fp)
	li $t0, 4
	lw $t1, -4192($fp)
	mul $t0, $t0, $t1
	sw $t0, -4196($fp)
	lw $t0, -4196($fp)
	lw $t1, -4188($fp)
	add $t0, $t0, $t1
	sw $t0, -4200($fp)
	lw $t0, -4200($fp)
	lw $t1, 0($t0)
	sw $t1, -4204($fp)
	lw $t0, -4204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -4208($fp)
	li $t0, 5
	sw $t0, -4212($fp)
	li $t0, 4
	lw $t1, -4212($fp)
	mul $t0, $t0, $t1
	sw $t0, -4216($fp)
	lw $t0, -4216($fp)
	lw $t1, -4208($fp)
	add $t0, $t0, $t1
	sw $t0, -4220($fp)
	lw $t0, -4220($fp)
	lw $t1, 0($t0)
	sw $t1, -4224($fp)
	lw $t0, -4224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -4228($fp)
	li $t0, 6
	sw $t0, -4232($fp)
	li $t0, 4
	lw $t1, -4232($fp)
	mul $t0, $t0, $t1
	sw $t0, -4236($fp)
	lw $t0, -4236($fp)
	lw $t1, -4228($fp)
	add $t0, $t0, $t1
	sw $t0, -4240($fp)
	lw $t0, -4240($fp)
	lw $t1, 0($t0)
	sw $t1, -4244($fp)
	lw $t0, -4244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -4248($fp)
	li $t0, 7
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
	lw $t0, -1036($fp)
	sw $t0, -4268($fp)
	lw $t0, -4268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1048($fp)
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1060($fp)
	sw $t0, -4276($fp)
	lw $t0, -4276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1072($fp)
	sw $t0, -4280($fp)
	lw $t0, -4280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1084($fp)
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1096($fp)
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1108($fp)
	sw $t0, -4292($fp)
	lw $t0, -4292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1120($fp)
	sw $t0, -4296($fp)
	lw $t0, -4296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1132($fp)
	sw $t0, -4300($fp)
	lw $t0, -4300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1144($fp)
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1156($fp)
	sw $t0, -4308($fp)
	lw $t0, -4308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1168($fp)
	sw $t0, -4312($fp)
	lw $t0, -4312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 54555
	sw $t0, -4316($fp)
	lw $ra, -4($fp)
	lw $v0, -4316($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1256
	li $t0, 49741
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 39684
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	li $t0, 49516
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	li $t0, 32718
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	li $t0, 16539
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	li $t0, 12248
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	li $t0, 7452
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	li $t0, 33720
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	li $t0, 64091
	sw $t0, -136($fp)
	addi $t0, $fp, -48
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
	li $t0, 35727
	sw $t0, -160($fp)
	addi $t0, $fp, -48
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
	li $t0, 64748
	sw $t0, -184($fp)
	addi $t0, $fp, -48
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
	li $t0, 2749
	sw $t0, -208($fp)
	addi $t0, $fp, -48
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
	li $t0, 44441
	sw $t0, -232($fp)
	addi $t0, $fp, -48
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
	li $t0, 9725
	sw $t0, -256($fp)
	addi $t0, $fp, -48
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
	li $t0, 42851
	sw $t0, -280($fp)
	addi $t0, $fp, -48
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
	li $t0, 61856
	sw $t0, -304($fp)
	addi $t0, $fp, -48
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
	li $t0, 29305
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	li $t0, 35406
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	li $t0, 19216
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	li $t0, 32863
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	li $t0, 22161
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	li $t0, 65186
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	li $t0, 3402
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	li $t0, 63353
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
label392:
	li $t0, 0
	sw $t0, -424($fp)
	lw $t0, 12($fp)
	sw $t0, -428($fp)
	lw $t0, -416($fp)
	sw $t0, -432($fp)
	lw $t0, -428($fp)
	lw $t1, -432($fp)
	mul $t0, $t0, $t1
	sw $t0, -436($fp)
	lw $t0, -332($fp)
	sw $t0, -440($fp)
	lw $t1, -436($fp)
	lw $t2, -440($fp)
	bne $t1, $t2, label396
	j label397
label396:
	li $t0, 1
	sw $t0, -424($fp)
label397:
	li $t0, 0
	sw $t0, -444($fp)
	li $t0, 0
	sw $t0, -448($fp)
	li $t0, 22520
	sw $t0, -452($fp)
	li $t0, 7845
	sw $t0, -456($fp)
	lw $t0, -452($fp)
	lw $t1, -456($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -460($fp)
	lw $t1, -460($fp)
	li $t2, 0
	bne $t1, $t2, label401
	j label403
label403:
	li $t0, 16616
	sw $t0, -464($fp)
	lw $t1, -464($fp)
	li $t2, 0
	bne $t1, $t2, label401
	j label402
label401:
	li $t0, 1
	sw $t0, -448($fp)
label402:
	lw $t0, -368($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -472($fp)
	li $t0, 0
	sw $t0, -476($fp)
	lw $t0, -368($fp)
	sw $t0, -480($fp)
	li $t0, 16837
	sw $t0, -484($fp)
	lw $t0, -480($fp)
	lw $t1, -484($fp)
	add $t0, $t0, $t1
	sw $t0, -488($fp)
	li $t0, 18268
	sw $t0, -492($fp)
	lw $t1, -488($fp)
	lw $t2, -492($fp)
	bge $t1, $t2, label404
	j label405
label404:
	li $t0, 1
	sw $t0, -476($fp)
label405:
	addi $sp, $sp, -4
	lw $t0, -448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -476($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -496($fp)
	addi $sp, $sp, 16
	lw $t1, -496($fp)
	li $t2, 0
	bne $t1, $t2, label400
	j label399
label400:
	lw $t0, -92($fp)
	sw $t0, -500($fp)
	lw $t1, -500($fp)
	li $t2, 0
	bne $t1, $t2, label398
	j label399
label398:
	li $t0, 1
	sw $t0, -444($fp)
label399:
	li $t0, 0
	sw $t0, -504($fp)
	lw $t0, -368($fp)
	sw $t0, -508($fp)
	lw $t0, 16($fp)
	sw $t0, -512($fp)
	lw $t0, -508($fp)
	lw $t1, -512($fp)
	sub $t0, $t0, $t1
	sw $t0, -516($fp)
	lw $t1, -516($fp)
	li $t2, 0
	bne $t1, $t2, label406
	j label408
label408:
	lw $t0, 20($fp)
	sw $t0, -520($fp)
	lw $t1, -520($fp)
	li $t2, 0
	bne $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -504($fp)
label407:
	addi $sp, $sp, -4
	lw $t0, -424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -504($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -524($fp)
	addi $sp, $sp, 16
	lw $t1, -524($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label395
label395:
	li $t0, 0
	sw $t0, -528($fp)
	li $t0, 0
	sw $t0, -532($fp)
	li $t0, 62400
	sw $t0, -536($fp)
	lw $t0, -104($fp)
	sw $t0, -540($fp)
	lw $t1, -536($fp)
	lw $t2, -540($fp)
	ble $t1, $t2, label411
	j label412
label411:
	li $t0, 1
	sw $t0, -532($fp)
label412:
	lw $t0, -92($fp)
	sw $t0, -544($fp)
	lw $t1, -532($fp)
	lw $t2, -544($fp)
	blt $t1, $t2, label409
	j label410
label409:
	li $t0, 1
	sw $t0, -528($fp)
label410:
	li $t0, 0
	sw $t0, -548($fp)
	lw $t0, -368($fp)
	sw $t0, -552($fp)
	li $t0, 32820
	sw $t0, -556($fp)
	lw $t1, -552($fp)
	lw $t2, -556($fp)
	beq $t1, $t2, label415
	j label414
label415:
	lw $t0, -104($fp)
	sw $t0, -560($fp)
	lw $t1, -560($fp)
	li $t2, 0
	bne $t1, $t2, label413
	j label414
label413:
	li $t0, 1
	sw $t0, -548($fp)
label414:
	lw $t0, 16($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -568($fp)
	lw $t0, 16($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -576($fp)
	li $t0, 0
	sw $t0, -580($fp)
	li $t0, 0
	sw $t0, -584($fp)
	lw $t0, -128($fp)
	sw $t0, -588($fp)
	lw $t0, 12($fp)
	sw $t0, -592($fp)
	lw $t1, -588($fp)
	lw $t2, -592($fp)
	bne $t1, $t2, label418
	j label419
label418:
	li $t0, 1
	sw $t0, -584($fp)
label419:
	lw $t0, -368($fp)
	sw $t0, -596($fp)
	lw $t1, -584($fp)
	lw $t2, -596($fp)
	beq $t1, $t2, label416
	j label417
label416:
	li $t0, 1
	sw $t0, -580($fp)
label417:
	addi $sp, $sp, -4
	lw $t0, -528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -580($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -600($fp)
	addi $sp, $sp, 24
	lw $t1, -600($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label394
label393:
	li $t0, 821
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	li $t0, 58628
	sw $t0, -616($fp)
	li $t0, 1
	sw $t0, -620($fp)
	lw $t0, -616($fp)
	lw $t1, -620($fp)
	mul $t0, $t0, $t1
	sw $t0, -624($fp)
	li $t0, 57227
	sw $t0, -628($fp)
	lw $t0, -624($fp)
	lw $t1, -628($fp)
	sub $t0, $t0, $t1
	sw $t0, -632($fp)
	li $t0, 0
	sw $t0, -636($fp)
	lw $t0, -56($fp)
	sw $t0, -640($fp)
	lw $t0, -356($fp)
	sw $t0, -644($fp)
	lw $t0, -640($fp)
	lw $t1, -644($fp)
	add $t0, $t0, $t1
	sw $t0, -648($fp)
	li $t0, 23507
	sw $t0, -652($fp)
	lw $t1, -648($fp)
	lw $t2, -652($fp)
	ble $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -636($fp)
label421:
	li $t0, 33539
	sw $t0, -656($fp)
	lw $t0, -368($fp)
	sw $t0, -660($fp)
	lw $t0, -656($fp)
	lw $t1, -660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -664($fp)
	lw $t0, 8($fp)
	sw $t0, -668($fp)
	lw $t0, -664($fp)
	lw $t1, -668($fp)
	sub $t0, $t0, $t1
	sw $t0, -672($fp)
	li $t0, 0
	sw $t0, -676($fp)
	lw $t0, -12($fp)
	sw $t0, -680($fp)
	lw $t0, -12($fp)
	sw $t0, -684($fp)
	lw $t0, -680($fp)
	lw $t1, -684($fp)
	mul $t0, $t0, $t1
	sw $t0, -688($fp)
	lw $t1, -688($fp)
	li $t2, 0
	bne $t1, $t2, label424
	j label423
label424:
	lw $t0, -104($fp)
	sw $t0, -692($fp)
	lw $t1, -692($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label423
label422:
	li $t0, 1
	sw $t0, -676($fp)
label423:
	li $t0, 6968
	sw $t0, -696($fp)
	li $t0, 46380
	sw $t0, -700($fp)
	lw $t0, -696($fp)
	lw $t1, -700($fp)
	sub $t0, $t0, $t1
	sw $t0, -704($fp)
	addi $sp, $sp, -4
	lw $t0, -632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -704($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -708($fp)
	addi $sp, $sp, 24
	li $t0, 57184
	sw $t0, -712($fp)
	li $t0, 0
	lw $t1, -712($fp)
	sub $t0, $t0, $t1
	sw $t0, -716($fp)
	lw $t0, -708($fp)
	lw $t1, -716($fp)
	mul $t0, $t0, $t1
	sw $t0, -720($fp)
	li $t0, 0
	sw $t0, -724($fp)
	li $t0, 0
	sw $t0, -728($fp)
	li $t0, 11183
	sw $t0, -732($fp)
	lw $t1, -732($fp)
	li $t2, 0
	bne $t1, $t2, label428
	j label427
label427:
	li $t0, 1
	sw $t0, -728($fp)
label428:
	lw $t0, -80($fp)
	sw $t0, -736($fp)
	lw $t1, -728($fp)
	lw $t2, -736($fp)
	beq $t1, $t2, label425
	j label426
label425:
	li $t0, 1
	sw $t0, -724($fp)
label426:
	lw $t0, -724($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -740($fp)
	j label392
label394:
	li $t0, 56439
	sw $t0, -744($fp)
	li $t0, 59933
	sw $t0, -748($fp)
label429:
	lw $t0, -416($fp)
	sw $t0, -752($fp)
	lw $t1, -752($fp)
	li $t2, 0
	bne $t1, $t2, label432
	j label431
label432:
	lw $t0, -380($fp)
	sw $t0, -756($fp)
	li $t0, 55624
	sw $t0, -760($fp)
	lw $t0, -756($fp)
	lw $t1, -760($fp)
	add $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t0, -416($fp)
	sw $t0, -768($fp)
	lw $t0, -416($fp)
	sw $t0, -772($fp)
	lw $t0, -768($fp)
	lw $t1, -772($fp)
	sub $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t1, -764($fp)
	lw $t2, -776($fp)
	bne $t1, $t2, label430
	j label431
label430:
	lw $t0, -92($fp)
	sw $t0, -780($fp)
	li $t0, 629
	sw $t0, -784($fp)
	lw $t0, -780($fp)
	lw $t1, -784($fp)
	sub $t0, $t0, $t1
	sw $t0, -788($fp)
	addi $t0, $fp, -48
	sw $t0, -792($fp)
	li $t0, 0
	sw $t0, -796($fp)
	li $t0, 0
	sw $t0, -800($fp)
	li $t0, 51944
	sw $t0, -804($fp)
	lw $t0, -356($fp)
	sw $t0, -808($fp)
	lw $t1, -804($fp)
	lw $t2, -808($fp)
	ble $t1, $t2, label435
	j label436
label435:
	li $t0, 1
	sw $t0, -800($fp)
label436:
	lw $t0, -56($fp)
	sw $t0, -812($fp)
	lw $t1, -800($fp)
	lw $t2, -812($fp)
	beq $t1, $t2, label433
	j label434
label433:
	li $t0, 1
	sw $t0, -796($fp)
label434:
	li $t0, 0
	sw $t0, -816($fp)
	lw $t0, -368($fp)
	sw $t0, -820($fp)
	li $t0, 0
	lw $t1, -820($fp)
	sub $t0, $t0, $t1
	sw $t0, -824($fp)
	lw $t1, -824($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label438
label439:
	lw $t0, -104($fp)
	sw $t0, -828($fp)
	lw $t1, -828($fp)
	li $t2, 0
	bne $t1, $t2, label437
	j label438
label437:
	li $t0, 1
	sw $t0, -816($fp)
label438:
	li $t0, 37248
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -836($fp)
	addi $sp, $sp, -4
	lw $t0, -796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -836($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -840($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -840($fp)
	sub $t0, $t0, $t1
	sw $t0, -844($fp)
	li $t0, 4
	lw $t1, -844($fp)
	mul $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	lw $t1, -792($fp)
	add $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	lw $t1, 0($t0)
	sw $t1, -856($fp)
	j label429
label431:
	li $t0, 0
	sw $t0, -860($fp)
	li $t0, 0
	sw $t0, -864($fp)
	lw $t0, -116($fp)
	sw $t0, -868($fp)
	lw $t0, -104($fp)
	sw $t0, -872($fp)
	lw $t0, -868($fp)
	lw $t1, -872($fp)
	mul $t0, $t0, $t1
	sw $t0, -876($fp)
	lw $t0, -344($fp)
	sw $t0, -880($fp)
	lw $t0, -876($fp)
	lw $t1, -880($fp)
	add $t0, $t0, $t1
	sw $t0, -884($fp)
	li $t0, 27096
	sw $t0, -888($fp)
	li $t0, 22112
	sw $t0, -892($fp)
	lw $t0, -888($fp)
	lw $t1, -892($fp)
	add $t0, $t0, $t1
	sw $t0, -896($fp)
	li $t0, 0
	sw $t0, -900($fp)
	li $t0, 663
	sw $t0, -904($fp)
	lw $t0, -392($fp)
	sw $t0, -908($fp)
	lw $t1, -904($fp)
	lw $t2, -908($fp)
	bne $t1, $t2, label444
	j label446
label446:
	lw $t0, -80($fp)
	sw $t0, -912($fp)
	lw $t1, -912($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label445
label444:
	li $t0, 1
	sw $t0, -900($fp)
label445:
	li $t0, 5275
	sw $t0, -916($fp)
	lw $t0, 8($fp)
	sw $t0, -920($fp)
	li $t0, 0
	sw $t0, -924($fp)
	li $t0, 62797
	sw $t0, -928($fp)
	lw $t1, -928($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label447
label447:
	li $t0, 1
	sw $t0, -924($fp)
label448:
	li $t0, 29279
	sw $t0, -932($fp)
	lw $t0, -924($fp)
	lw $t1, -932($fp)
	add $t0, $t0, $t1
	sw $t0, -936($fp)
	li $t0, 0
	sw $t0, -940($fp)
	li $t0, 5624
	sw $t0, -944($fp)
	lw $t0, -368($fp)
	sw $t0, -948($fp)
	lw $t0, -944($fp)
	lw $t1, -948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -952($fp)
	lw $t0, -416($fp)
	sw $t0, -956($fp)
	lw $t1, -952($fp)
	lw $t2, -956($fp)
	blt $t1, $t2, label449
	j label450
label449:
	li $t0, 1
	sw $t0, -940($fp)
label450:
	li $t0, 0
	sw $t0, -960($fp)
	li $t0, 7118
	sw $t0, -964($fp)
	lw $t1, -964($fp)
	li $t2, 0
	bne $t1, $t2, label451
	j label452
label451:
	li $t0, 1
	sw $t0, -960($fp)
label452:
	addi $sp, $sp, -4
	lw $t0, -936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -960($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -968($fp)
	addi $sp, $sp, 16
	lw $t0, -68($fp)
	sw $t0, -972($fp)
	lw $t0, -968($fp)
	lw $t1, -972($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -976($fp)
	li $t0, 29934
	sw $t0, -980($fp)
	lw $t0, -128($fp)
	sw $t0, -984($fp)
	lw $t0, -980($fp)
	lw $t1, -984($fp)
	add $t0, $t0, $t1
	sw $t0, -988($fp)
	addi $sp, $sp, -4
	lw $t0, -900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -988($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -992($fp)
	addi $sp, $sp, 24
	lw $t0, -368($fp)
	sw $t0, -996($fp)
	li $t0, 0
	lw $t1, -996($fp)
	sub $t0, $t0, $t1
	sw $t0, -1000($fp)
	lw $t0, -404($fp)
	sw $t0, -1004($fp)
	lw $t0, -1000($fp)
	lw $t1, -1004($fp)
	add $t0, $t0, $t1
	sw $t0, -1008($fp)
	li $t0, 0
	sw $t0, -1012($fp)
	addi $t0, $fp, -48
	sw $t0, -1016($fp)
	lw $t0, -416($fp)
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
	lw $t1, -1032($fp)
	li $t2, 0
	bne $t1, $t2, label453
	j label455
label455:
	lw $t0, -80($fp)
	sw $t0, -1036($fp)
	lw $t1, -1036($fp)
	li $t2, 0
	bne $t1, $t2, label453
	j label454
label453:
	li $t0, 1
	sw $t0, -1012($fp)
label454:
	addi $sp, $sp, -4
	lw $t0, -884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1012($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1040($fp)
	addi $sp, $sp, 24
	lw $t1, -1040($fp)
	li $t2, 0
	bne $t1, $t2, label443
	j label442
label442:
	li $t0, 1
	sw $t0, -864($fp)
label443:
	li $t0, 18931
	sw $t0, -1044($fp)
	lw $t0, -864($fp)
	lw $t1, -1044($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1048($fp)
	li $t0, 0
	lw $t1, -1048($fp)
	sub $t0, $t0, $t1
	sw $t0, -1052($fp)
	lw $t1, -1052($fp)
	li $t2, 0
	bne $t1, $t2, label441
	j label440
label440:
	li $t0, 1
	sw $t0, -860($fp)
label441:
	li $t0, 0
	sw $t0, -1056($fp)
	li $t0, 45364
	sw $t0, -1060($fp)
	lw $t1, -1060($fp)
	li $t2, 0
	bne $t1, $t2, label460
	j label459
label459:
	li $t0, 1
	sw $t0, -1056($fp)
label460:
	li $t0, 39068
	sw $t0, -1064($fp)
	lw $t0, -1056($fp)
	lw $t1, -1064($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1068($fp)
	li $t0, 0
	sw $t0, -1072($fp)
	lw $t0, -368($fp)
	sw $t0, -1076($fp)
	lw $t0, -356($fp)
	sw $t0, -1080($fp)
	lw $t0, -1076($fp)
	lw $t1, -1080($fp)
	mul $t0, $t0, $t1
	sw $t0, -1084($fp)
	li $t0, 758
	sw $t0, -1088($fp)
	lw $t1, -1084($fp)
	lw $t2, -1088($fp)
	bne $t1, $t2, label461
	j label462
label461:
	li $t0, 1
	sw $t0, -1072($fp)
label462:
	li $t0, 47376
	sw $t0, -1092($fp)
	li $t0, 0
	sw $t0, -1096($fp)
	li $t0, 23869
	sw $t0, -1100($fp)
	li $t0, 7666
	sw $t0, -1104($fp)
	lw $t0, -1100($fp)
	lw $t1, -1104($fp)
	mul $t0, $t0, $t1
	sw $t0, -1108($fp)
	lw $t1, -1108($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label465
label465:
	li $t0, 4372
	sw $t0, -1112($fp)
	lw $t1, -1112($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label464
label463:
	li $t0, 1
	sw $t0, -1096($fp)
label464:
	li $t0, 36369
	sw $t0, -1116($fp)
	li $t0, 0
	lw $t1, -1116($fp)
	sub $t0, $t0, $t1
	sw $t0, -1120($fp)
	li $t0, 0
	lw $t1, -1120($fp)
	sub $t0, $t0, $t1
	sw $t0, -1124($fp)
	li $t0, 16900
	sw $t0, -1128($fp)
	li $t0, 26821
	sw $t0, -1132($fp)
	lw $t0, -1128($fp)
	lw $t1, -1132($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1136($fp)
	lw $t0, 12($fp)
	sw $t0, -1140($fp)
	lw $t0, -1136($fp)
	lw $t1, -1140($fp)
	sub $t0, $t0, $t1
	sw $t0, -1144($fp)
	li $t0, 0
	sw $t0, -1148($fp)
	lw $t0, -416($fp)
	sw $t0, -1152($fp)
	li $t0, 0
	lw $t1, -1152($fp)
	sub $t0, $t0, $t1
	sw $t0, -1156($fp)
	lw $t0, -56($fp)
	sw $t0, -1160($fp)
	lw $t1, -1156($fp)
	lw $t2, -1160($fp)
	beq $t1, $t2, label466
	j label467
label466:
	li $t0, 1
	sw $t0, -1148($fp)
label467:
	addi $sp, $sp, -4
	lw $t0, -1092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1148($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1164($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -48
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
	li $t0, 0
	sw $t0, -1188($fp)
	lw $t0, -356($fp)
	sw $t0, -1192($fp)
	li $t0, 49616
	sw $t0, -1196($fp)
	lw $t0, -1192($fp)
	lw $t1, -1196($fp)
	add $t0, $t0, $t1
	sw $t0, -1200($fp)
	lw $t0, 4($fp)
	sw $t0, -1204($fp)
	lw $t1, -1200($fp)
	lw $t2, -1204($fp)
	bne $t1, $t2, label468
	j label469
label468:
	li $t0, 1
	sw $t0, -1188($fp)
label469:
	addi $sp, $sp, -4
	lw $t0, -1068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1188($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1208($fp)
	addi $sp, $sp, 24
	lw $t0, -116($fp)
	sw $t0, -1212($fp)
	li $t0, 57942
	sw $t0, -1216($fp)
	lw $t0, -1212($fp)
	lw $t1, -1216($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1220($fp)
	li $t0, 0
	lw $t1, -1220($fp)
	sub $t0, $t0, $t1
	sw $t0, -1224($fp)
	lw $t0, -1208($fp)
	lw $t1, -1224($fp)
	mul $t0, $t0, $t1
	sw $t0, -1228($fp)
	lw $t1, -1228($fp)
	li $t2, 0
	bne $t1, $t2, label456
	j label457
label456:
	li $t0, 0
	sw $t0, -1232($fp)
	lw $t0, -104($fp)
	sw $t0, -1236($fp)
	lw $t1, -1236($fp)
	li $t2, 0
	bne $t1, $t2, label470
	j label472
label472:
	lw $t0, -392($fp)
	sw $t0, -1240($fp)
	lw $t1, -1240($fp)
	li $t2, 0
	bne $t1, $t2, label470
	j label471
label470:
	li $t0, 1
	sw $t0, -1232($fp)
label471:
label457:
	lw $t0, -12($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1248($fp)
	lw $t0, -12($fp)
	sw $t0, -1252($fp)
	lw $t1, -1252($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label473
label473:
	li $t0, 1
	sw $t0, -1248($fp)
label474:
	li $t0, 56548
	sw $t0, -1256($fp)
	lw $t0, -1248($fp)
	lw $t1, -1256($fp)
	add $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $ra, -4($fp)
	lw $v0, -1260($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4040
	li $t0, 29971
	sw $t0, -144($fp)
	addi $t0, $fp, -20
	sw $t0, -148($fp)
	li $t0, 0
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
	li $t0, 52340
	sw $t0, -168($fp)
	addi $t0, $fp, -20
	sw $t0, -172($fp)
	li $t0, 1
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
	li $t0, 46636
	sw $t0, -192($fp)
	addi $t0, $fp, -20
	sw $t0, -196($fp)
	li $t0, 2
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
	li $t0, 30600
	sw $t0, -216($fp)
	addi $t0, $fp, -20
	sw $t0, -220($fp)
	li $t0, 3
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
	li $t0, 24052
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	li $t0, 33045
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	li $t0, 60534
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	li $t0, 31171
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	li $t0, 38669
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	li $t0, 57796
	sw $t0, -300($fp)
	addi $t0, $fp, -40
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
	li $t0, 60450
	sw $t0, -324($fp)
	addi $t0, $fp, -40
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
	li $t0, 43944
	sw $t0, -348($fp)
	addi $t0, $fp, -40
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
	li $t0, 58459
	sw $t0, -372($fp)
	addi $t0, $fp, -40
	sw $t0, -376($fp)
	li $t0, 3
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
	li $t0, 22011
	sw $t0, -396($fp)
	addi $t0, $fp, -40
	sw $t0, -400($fp)
	li $t0, 4
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
	li $t0, 521
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	li $t0, 11855
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	li $t0, 6091
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	li $t0, 30478
	sw $t0, -456($fp)
	addi $t0, $fp, -80
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
	li $t0, 47402
	sw $t0, -480($fp)
	addi $t0, $fp, -80
	sw $t0, -484($fp)
	li $t0, 1
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
	li $t0, 22992
	sw $t0, -504($fp)
	addi $t0, $fp, -80
	sw $t0, -508($fp)
	li $t0, 2
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
	li $t0, 57300
	sw $t0, -528($fp)
	addi $t0, $fp, -80
	sw $t0, -532($fp)
	li $t0, 3
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
	li $t0, 18235
	sw $t0, -552($fp)
	addi $t0, $fp, -80
	sw $t0, -556($fp)
	li $t0, 4
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
	li $t0, 46861
	sw $t0, -576($fp)
	addi $t0, $fp, -80
	sw $t0, -580($fp)
	li $t0, 5
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
	li $t0, 64966
	sw $t0, -600($fp)
	addi $t0, $fp, -80
	sw $t0, -604($fp)
	li $t0, 6
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
	li $t0, 22608
	sw $t0, -624($fp)
	addi $t0, $fp, -80
	sw $t0, -628($fp)
	li $t0, 7
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
	li $t0, 28701
	sw $t0, -648($fp)
	addi $t0, $fp, -80
	sw $t0, -652($fp)
	li $t0, 8
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
	li $t0, 188
	sw $t0, -672($fp)
	addi $t0, $fp, -80
	sw $t0, -676($fp)
	li $t0, 9
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
	li $t0, 2436
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	li $t0, 2233
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	li $t0, 58131
	sw $t0, -720($fp)
	addi $t0, $fp, -120
	sw $t0, -724($fp)
	li $t0, 0
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
	li $t0, 58984
	sw $t0, -744($fp)
	addi $t0, $fp, -120
	sw $t0, -748($fp)
	li $t0, 1
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
	li $t0, 32205
	sw $t0, -768($fp)
	addi $t0, $fp, -120
	sw $t0, -772($fp)
	li $t0, 2
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
	li $t0, 44935
	sw $t0, -792($fp)
	addi $t0, $fp, -120
	sw $t0, -796($fp)
	li $t0, 3
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
	li $t0, 40085
	sw $t0, -816($fp)
	addi $t0, $fp, -120
	sw $t0, -820($fp)
	li $t0, 4
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -828($fp)
	lw $t0, -820($fp)
	lw $t1, -828($fp)
	add $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t0, -816($fp)
	lw $t1, -832($fp)
	sw $t0, 0($t1)
	lw $t0, -832($fp)
	lw $t1, 0($t0)
	sw $t1, -836($fp)
	li $t0, 62805
	sw $t0, -840($fp)
	addi $t0, $fp, -120
	sw $t0, -844($fp)
	li $t0, 5
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
	li $t0, 3451
	sw $t0, -864($fp)
	addi $t0, $fp, -120
	sw $t0, -868($fp)
	li $t0, 6
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
	li $t0, 7594
	sw $t0, -888($fp)
	addi $t0, $fp, -120
	sw $t0, -892($fp)
	li $t0, 7
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
	li $t0, 57804
	sw $t0, -912($fp)
	addi $t0, $fp, -120
	sw $t0, -916($fp)
	li $t0, 8
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
	li $t0, 34622
	sw $t0, -936($fp)
	addi $t0, $fp, -120
	sw $t0, -940($fp)
	li $t0, 9
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
	li $t0, 46263
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -968($fp)
	li $t0, 50064
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	sw $t0, -980($fp)
	li $t0, 29537
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	li $t0, 24672
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -1004($fp)
	li $t0, 42987
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -1016($fp)
	li $t0, 51548
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	li $t0, 25193
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	li $t0, 54842
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	li $t0, 57639
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -1064($fp)
	li $t0, 55671
	sw $t0, -1068($fp)
	addi $t0, $fp, -140
	sw $t0, -1072($fp)
	li $t0, 0
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
	li $t0, 36709
	sw $t0, -1092($fp)
	addi $t0, $fp, -140
	sw $t0, -1096($fp)
	li $t0, 1
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
	li $t0, 15095
	sw $t0, -1116($fp)
	addi $t0, $fp, -140
	sw $t0, -1120($fp)
	li $t0, 2
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
	li $t0, 47435
	sw $t0, -1140($fp)
	addi $t0, $fp, -140
	sw $t0, -1144($fp)
	li $t0, 3
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1152($fp)
	lw $t0, -1144($fp)
	lw $t1, -1152($fp)
	add $t0, $t0, $t1
	sw $t0, -1156($fp)
	lw $t0, -1140($fp)
	lw $t1, -1156($fp)
	sw $t0, 0($t1)
	lw $t0, -1156($fp)
	lw $t1, 0($t0)
	sw $t1, -1160($fp)
	li $t0, 54944
	sw $t0, -1164($fp)
	addi $t0, $fp, -140
	sw $t0, -1168($fp)
	li $t0, 4
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1176($fp)
	lw $t0, -1168($fp)
	lw $t1, -1176($fp)
	add $t0, $t0, $t1
	sw $t0, -1180($fp)
	lw $t0, -1164($fp)
	lw $t1, -1180($fp)
	sw $t0, 0($t1)
	lw $t0, -1180($fp)
	lw $t1, 0($t0)
	sw $t1, -1184($fp)
	li $t0, 61956
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	li $t0, 46865
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -1208($fp)
	li $t0, 12016
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	sw $t0, -1220($fp)
	li $t0, 25122
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	sw $t0, -1232($fp)
	li $t0, 47054
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	sw $t0, -1244($fp)
	li $t0, 14453
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -1256($fp)
	li $t0, 27355
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -1268($fp)
	li $t0, 39649
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	li $t0, 7901
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
label475:
	li $t0, 19048
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -1300($fp)
	li $t0, 0
	sw $t0, -1304($fp)
	lw $t0, -1024($fp)
	sw $t0, -1308($fp)
	lw $t1, -1308($fp)
	li $t2, 0
	bne $t1, $t2, label479
	j label478
label478:
	li $t0, 1
	sw $t0, -1304($fp)
label479:
	li $t0, 59560
	sw $t0, -1312($fp)
	lw $t0, -1304($fp)
	lw $t1, -1312($fp)
	mul $t0, $t0, $t1
	sw $t0, -1316($fp)
	lw $t0, -1228($fp)
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1324($fp)
	addi $sp, $sp, -4
	lw $t0, -1300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1324($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1328($fp)
	addi $sp, $sp, 16
	lw $t0, -292($fp)
	sw $t0, -1332($fp)
	lw $t0, -1328($fp)
	lw $t1, -1332($fp)
	mul $t0, $t0, $t1
	sw $t0, -1336($fp)
	li $t0, 47986
	sw $t0, -1340($fp)
	lw $t0, -1336($fp)
	lw $t1, -1340($fp)
	mul $t0, $t0, $t1
	sw $t0, -1344($fp)
	lw $t1, -1344($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label477
label476:
label480:
	li $t0, 0
	sw $t0, -1348($fp)
	lw $t0, -1228($fp)
	sw $t0, -1352($fp)
	lw $t0, -436($fp)
	sw $t0, -1356($fp)
	lw $t0, -1352($fp)
	lw $t1, -1356($fp)
	add $t0, $t0, $t1
	sw $t0, -1360($fp)
	li $t0, 56830
	sw $t0, -1364($fp)
	lw $t1, -1360($fp)
	lw $t2, -1364($fp)
	blt $t1, $t2, label483
	j label484
label483:
	li $t0, 1
	sw $t0, -1348($fp)
label484:
	lw $t0, -1348($fp)
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -1368($fp)
	lw $t1, -1368($fp)
	li $t2, 0
	bne $t1, $t2, label481
	j label482
label481:
	li $t0, 0
	sw $t0, -1372($fp)
	li $t0, 22499
	sw $t0, -1376($fp)
	lw $t1, -1376($fp)
	li $t2, 0
	bne $t1, $t2, label485
	j label487
label487:
	lw $t0, -1276($fp)
	sw $t0, -1380($fp)
	lw $t0, -1048($fp)
	sw $t0, -1384($fp)
	lw $t0, -1380($fp)
	lw $t1, -1384($fp)
	mul $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $t0, -436($fp)
	sw $t0, -1392($fp)
	lw $t0, -1388($fp)
	lw $t1, -1392($fp)
	mul $t0, $t0, $t1
	sw $t0, -1396($fp)
	lw $t1, -1396($fp)
	li $t2, 0
	bne $t1, $t2, label485
	j label486
label485:
	li $t0, 1
	sw $t0, -1372($fp)
label486:
	j label480
label482:
	j label475
label477:
label488:
	li $t0, 55580
	sw $t0, -1400($fp)
	lw $t0, 12($fp)
	sw $t0, -1404($fp)
	li $t0, 0
	lw $t1, -1404($fp)
	sub $t0, $t0, $t1
	sw $t0, -1408($fp)
	li $t0, 0
	sw $t0, -1412($fp)
	lw $t0, -1276($fp)
	sw $t0, -1416($fp)
	lw $t0, -1216($fp)
	sw $t0, -1420($fp)
	lw $t0, -1416($fp)
	lw $t1, -1420($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1424($fp)
	li $t0, 11077
	sw $t0, -1428($fp)
	lw $t1, -1424($fp)
	lw $t2, -1428($fp)
	bne $t1, $t2, label491
	j label492
label491:
	li $t0, 1
	sw $t0, -1412($fp)
label492:
	li $t0, 0
	sw $t0, -1432($fp)
	addi $t0, $fp, -80
	sw $t0, -1436($fp)
	lw $t0, -436($fp)
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
	lw $t1, -1452($fp)
	li $t2, 0
	bne $t1, $t2, label494
	j label493
label493:
	li $t0, 1
	sw $t0, -1432($fp)
label494:
	li $t0, 0
	sw $t0, -1456($fp)
	lw $t0, -436($fp)
	sw $t0, -1460($fp)
	li $t0, 33626
	sw $t0, -1464($fp)
	lw $t0, -1460($fp)
	lw $t1, -1464($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1468($fp)
	li $t0, 21123
	sw $t0, -1472($fp)
	lw $t1, -1468($fp)
	lw $t2, -1472($fp)
	beq $t1, $t2, label495
	j label496
label495:
	li $t0, 1
	sw $t0, -1456($fp)
label496:
	li $t0, 0
	sw $t0, -1476($fp)
	li $t0, 36308
	sw $t0, -1480($fp)
	lw $t0, -1252($fp)
	sw $t0, -1484($fp)
	lw $t1, -1480($fp)
	lw $t2, -1484($fp)
	beq $t1, $t2, label497
	j label498
label497:
	li $t0, 1
	sw $t0, -1476($fp)
label498:
	li $t0, 49098
	sw $t0, -1488($fp)
	li $t0, 0
	lw $t1, -1488($fp)
	sub $t0, $t0, $t1
	sw $t0, -1492($fp)
	li $t0, 57122
	sw $t0, -1496($fp)
	lw $t0, -1492($fp)
	lw $t1, -1496($fp)
	add $t0, $t0, $t1
	sw $t0, -1500($fp)
	addi $sp, $sp, -4
	lw $t0, -1432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1500($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1504($fp)
	addi $sp, $sp, 20
	li $t0, 60980
	sw $t0, -1508($fp)
	lw $t0, -1504($fp)
	lw $t1, -1508($fp)
	sub $t0, $t0, $t1
	sw $t0, -1512($fp)
	li $t0, 0
	sw $t0, -1516($fp)
	lw $t0, 16($fp)
	sw $t0, -1520($fp)
	lw $t1, -1520($fp)
	li $t2, 0
	bne $t1, $t2, label502
	j label500
label502:
	lw $t0, -700($fp)
	sw $t0, -1524($fp)
	lw $t1, -1524($fp)
	li $t2, 0
	bne $t1, $t2, label501
	j label500
label501:
	lw $t0, -1228($fp)
	sw $t0, -1528($fp)
	lw $t1, -1528($fp)
	li $t2, 0
	bne $t1, $t2, label499
	j label500
label499:
	li $t0, 1
	sw $t0, -1516($fp)
label500:
	addi $sp, $sp, -4
	lw $t0, -1408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1516($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1532($fp)
	addi $sp, $sp, 20
	lw $t0, -1400($fp)
	lw $t1, -1532($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1536($fp)
	lw $t1, -1536($fp)
	li $t2, 0
	bne $t1, $t2, label489
	j label490
label489:
label503:
	li $t0, 0
	sw $t0, -1540($fp)
	addi $t0, $fp, -40
	sw $t0, -1544($fp)
	lw $t0, -1216($fp)
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
	lw $t1, -1560($fp)
	li $t2, 0
	bne $t1, $t2, label507
	j label509
label509:
	lw $t0, 8($fp)
	sw $t0, -1564($fp)
	lw $t1, -1564($fp)
	li $t2, 0
	bne $t1, $t2, label507
	j label508
label507:
	li $t0, 1
	sw $t0, -1540($fp)
label508:
	li $t0, 0
	sw $t0, -1568($fp)
	li $t0, 0
	sw $t0, -1572($fp)
	li $t0, 0
	sw $t0, -1576($fp)
	lw $t0, -1192($fp)
	sw $t0, -1580($fp)
	lw $t0, -280($fp)
	sw $t0, -1584($fp)
	lw $t1, -1580($fp)
	lw $t2, -1584($fp)
	ble $t1, $t2, label515
	j label516
label515:
	li $t0, 1
	sw $t0, -1576($fp)
label516:
	lw $t0, 12($fp)
	sw $t0, -1588($fp)
	lw $t1, -1576($fp)
	lw $t2, -1588($fp)
	ble $t1, $t2, label513
	j label514
label513:
	li $t0, 1
	sw $t0, -1572($fp)
label514:
	li $t0, 0
	sw $t0, -1592($fp)
	li $t0, 0
	sw $t0, -1596($fp)
	li $t0, 20637
	sw $t0, -1600($fp)
	li $t0, 384
	sw $t0, -1604($fp)
	lw $t1, -1600($fp)
	lw $t2, -1604($fp)
	bne $t1, $t2, label519
	j label520
label519:
	li $t0, 1
	sw $t0, -1596($fp)
label520:
	li $t0, 64774
	sw $t0, -1608($fp)
	lw $t1, -1596($fp)
	lw $t2, -1608($fp)
	bne $t1, $t2, label517
	j label518
label517:
	li $t0, 1
	sw $t0, -1592($fp)
label518:
	li $t0, 7135
	sw $t0, -1612($fp)
	li $t0, 0
	lw $t1, -1612($fp)
	sub $t0, $t0, $t1
	sw $t0, -1616($fp)
	li $t0, 0
	lw $t1, -1616($fp)
	sub $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t0, -1060($fp)
	sw $t0, -1624($fp)
	addi $sp, $sp, -4
	lw $t0, -1572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1624($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1628($fp)
	addi $sp, $sp, 20
	lw $t1, -1628($fp)
	li $t2, 0
	bne $t1, $t2, label510
	j label512
label512:
	lw $t0, -700($fp)
	sw $t0, -1632($fp)
	lw $t1, -1632($fp)
	li $t2, 0
	bne $t1, $t2, label510
	j label511
label510:
	li $t0, 1
	sw $t0, -1568($fp)
label511:
	li $t0, 0
	sw $t0, -1636($fp)
	lw $t0, -1024($fp)
	sw $t0, -1640($fp)
	lw $t1, -1640($fp)
	li $t2, 0
	bne $t1, $t2, label522
	j label521
label521:
	li $t0, 1
	sw $t0, -1636($fp)
label522:
	lw $t0, -436($fp)
	sw $t0, -1644($fp)
	lw $t0, -1636($fp)
	lw $t1, -1644($fp)
	mul $t0, $t0, $t1
	sw $t0, -1648($fp)
	addi $sp, $sp, -4
	lw $t0, -1540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1648($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1652($fp)
	addi $sp, $sp, 16
	lw $t1, -1652($fp)
	li $t2, 0
	bne $t1, $t2, label504
	j label506
label506:
	li $t0, 10772
	sw $t0, -1656($fp)
	lw $t0, -256($fp)
	sw $t0, -1660($fp)
	lw $t0, -1656($fp)
	lw $t1, -1660($fp)
	mul $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t0, -964($fp)
	sw $t0, -1668($fp)
	lw $t0, -1664($fp)
	lw $t1, -1668($fp)
	add $t0, $t0, $t1
	sw $t0, -1672($fp)
	li $t0, 37093
	sw $t0, -1676($fp)
	lw $t1, -1672($fp)
	lw $t2, -1676($fp)
	bne $t1, $t2, label504
	j label505
label504:
	li $t0, 0
	sw $t0, -1680($fp)
	li $t0, 40644
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	sw $t0, -1688($fp)
	addi $t0, $fp, -40
	sw $t0, -1692($fp)
	li $t0, 0
	sw $t0, -1696($fp)
	li $t0, 4
	lw $t1, -1696($fp)
	mul $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	lw $t1, -1692($fp)
	add $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	lw $t1, 0($t0)
	sw $t1, -1708($fp)
	lw $t0, -988($fp)
	sw $t0, -1712($fp)
	lw $t0, -1708($fp)
	lw $t1, -1712($fp)
	mul $t0, $t0, $t1
	sw $t0, -1716($fp)
	li $t0, 0
	sw $t0, -1720($fp)
	lw $t0, -1012($fp)
	sw $t0, -1724($fp)
	li $t0, 0
	lw $t1, -1724($fp)
	sub $t0, $t0, $t1
	sw $t0, -1728($fp)
	lw $t1, -1728($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label528
label529:
	li $t0, 48923
	sw $t0, -1732($fp)
	lw $t1, -1732($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label528
label527:
	li $t0, 1
	sw $t0, -1720($fp)
label528:
	lw $t0, -256($fp)
	sw $t0, -1736($fp)
	lw $t0, 16($fp)
	sw $t0, -1740($fp)
	lw $t0, -1736($fp)
	lw $t1, -1740($fp)
	mul $t0, $t0, $t1
	sw $t0, -1744($fp)
	li $t0, 35675
	sw $t0, -1748($fp)
	addi $t0, $fp, -140
	sw $t0, -1752($fp)
	li $t0, 3
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
	lw $t0, 8($fp)
	sw $t0, -1772($fp)
	lw $t0, -268($fp)
	sw $t0, -1776($fp)
	lw $t0, -1772($fp)
	lw $t1, -1776($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1780($fp)
	li $t0, 0
	lw $t1, -1780($fp)
	sub $t0, $t0, $t1
	sw $t0, -1784($fp)
	li $t0, 0
	sw $t0, -1788($fp)
	li $t0, 63202
	sw $t0, -1792($fp)
	li $t0, 15351
	sw $t0, -1796($fp)
	lw $t0, -1276($fp)
	sw $t0, -1800($fp)
	lw $t0, -436($fp)
	sw $t0, -1804($fp)
	lw $t0, -1800($fp)
	lw $t1, -1804($fp)
	add $t0, $t0, $t1
	sw $t0, -1808($fp)
	li $t0, 9722
	sw $t0, -1812($fp)
	lw $t0, -1808($fp)
	lw $t1, -1812($fp)
	add $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t0, 8($fp)
	sw $t0, -1820($fp)
	li $t0, 0
	sw $t0, -1824($fp)
	li $t0, 48757
	sw $t0, -1828($fp)
	li $t0, 0
	lw $t1, -1828($fp)
	sub $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t1, -1832($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label532
label532:
	li $t0, 1
	sw $t0, -1824($fp)
label533:
	addi $t0, $fp, -40
	sw $t0, -1836($fp)
	li $t0, 4
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
	li $t0, 0
	sw $t0, -1856($fp)
	lw $t0, -1276($fp)
	sw $t0, -1860($fp)
	lw $t1, -1860($fp)
	li $t2, 0
	bne $t1, $t2, label534
	j label536
label536:
	li $t0, 11664
	sw $t0, -1864($fp)
	lw $t1, -1864($fp)
	li $t2, 0
	bne $t1, $t2, label534
	j label535
label534:
	li $t0, 1
	sw $t0, -1856($fp)
label535:
	li $t0, 0
	sw $t0, -1868($fp)
	lw $t0, -244($fp)
	sw $t0, -1872($fp)
	li $t0, 56560
	sw $t0, -1876($fp)
	lw $t0, -1872($fp)
	lw $t1, -1876($fp)
	add $t0, $t0, $t1
	sw $t0, -1880($fp)
	li $t0, 20220
	sw $t0, -1884($fp)
	lw $t1, -1880($fp)
	lw $t2, -1884($fp)
	bne $t1, $t2, label537
	j label538
label537:
	li $t0, 1
	sw $t0, -1868($fp)
label538:
	addi $sp, $sp, -4
	lw $t0, -1824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1868($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1888($fp)
	addi $sp, $sp, 20
	li $t0, 4596
	sw $t0, -1892($fp)
	lw $t0, -1888($fp)
	lw $t1, -1892($fp)
	add $t0, $t0, $t1
	sw $t0, -1896($fp)
	li $t0, 0
	sw $t0, -1900($fp)
	lw $t0, -268($fp)
	sw $t0, -1904($fp)
	li $t0, 0
	lw $t1, -1904($fp)
	sub $t0, $t0, $t1
	sw $t0, -1908($fp)
	li $t0, 49425
	sw $t0, -1912($fp)
	li $t0, 65119
	sw $t0, -1916($fp)
	lw $t0, -1912($fp)
	lw $t1, -1916($fp)
	sub $t0, $t0, $t1
	sw $t0, -1920($fp)
	li $t0, 11280
	sw $t0, -1924($fp)
	lw $t0, -1920($fp)
	lw $t1, -1924($fp)
	add $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t0, -1288($fp)
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -1936($fp)
	li $t0, 202
	sw $t0, -1940($fp)
	li $t0, 0
	sw $t0, -1944($fp)
	li $t0, 28302
	sw $t0, -1948($fp)
	lw $t1, -1948($fp)
	li $t2, 0
	bne $t1, $t2, label541
	j label543
label543:
	li $t0, 4139
	sw $t0, -1952($fp)
	lw $t1, -1952($fp)
	li $t2, 0
	bne $t1, $t2, label541
	j label542
label541:
	li $t0, 1
	sw $t0, -1944($fp)
label542:
	addi $sp, $sp, -4
	lw $t0, -1908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1944($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1956($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -1956($fp)
	sub $t0, $t0, $t1
	sw $t0, -1960($fp)
	li $t0, 32112
	sw $t0, -1964($fp)
	li $t0, 0
	sw $t0, -1968($fp)
	li $t0, 33367
	sw $t0, -1972($fp)
	lw $t0, -1048($fp)
	sw $t0, -1976($fp)
	lw $t0, -1972($fp)
	lw $t1, -1976($fp)
	add $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, -1048($fp)
	sw $t0, -1984($fp)
	lw $t1, -1980($fp)
	lw $t2, -1984($fp)
	bge $t1, $t2, label544
	j label545
label544:
	li $t0, 1
	sw $t0, -1968($fp)
label545:
	li $t0, 0
	sw $t0, -1988($fp)
	lw $t0, 8($fp)
	sw $t0, -1992($fp)
	lw $t0, -1264($fp)
	sw $t0, -1996($fp)
	lw $t1, -1992($fp)
	lw $t2, -1996($fp)
	beq $t1, $t2, label548
	j label547
label548:
	li $t0, 36716
	sw $t0, -2000($fp)
	lw $t1, -2000($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label547
label546:
	li $t0, 1
	sw $t0, -1988($fp)
label547:
	addi $sp, $sp, -4
	lw $t0, -1960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1988($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2004($fp)
	addi $sp, $sp, 20
	lw $t1, -2004($fp)
	li $t2, 0
	bne $t1, $t2, label540
	j label539
label539:
	li $t0, 1
	sw $t0, -1900($fp)
label540:
	li $t0, 0
	sw $t0, -2008($fp)
	lw $t0, -964($fp)
	sw $t0, -2012($fp)
	li $t0, 43323
	sw $t0, -2016($fp)
	lw $t0, -2012($fp)
	lw $t1, -2016($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2020($fp)
	lw $t1, -2020($fp)
	li $t2, 0
	bne $t1, $t2, label551
	j label550
label551:
	li $t0, 48550
	sw $t0, -2024($fp)
	lw $t1, -2024($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label550
label549:
	li $t0, 1
	sw $t0, -2008($fp)
label550:
	li $t0, 0
	sw $t0, -2028($fp)
	lw $t0, 16($fp)
	sw $t0, -2032($fp)
	lw $t0, -700($fp)
	sw $t0, -2036($fp)
	lw $t0, -2032($fp)
	lw $t1, -2036($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2040($fp)
	li $t0, 14216
	sw $t0, -2044($fp)
	lw $t1, -2040($fp)
	lw $t2, -2044($fp)
	beq $t1, $t2, label552
	j label553
label552:
	li $t0, 1
	sw $t0, -2028($fp)
label553:
	li $t0, 0
	sw $t0, -2048($fp)
	li $t0, 57256
	sw $t0, -2052($fp)
	lw $t1, -2052($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label555
label556:
	lw $t0, -1024($fp)
	sw $t0, -2056($fp)
	lw $t1, -2056($fp)
	li $t2, 0
	bne $t1, $t2, label554
	j label555
label554:
	li $t0, 1
	sw $t0, -2048($fp)
label555:
	li $t0, 0
	sw $t0, -2060($fp)
	li $t0, 0
	sw $t0, -2064($fp)
	li $t0, 60704
	sw $t0, -2068($fp)
	li $t0, 60872
	sw $t0, -2072($fp)
	lw $t1, -2068($fp)
	lw $t2, -2072($fp)
	ble $t1, $t2, label559
	j label560
label559:
	li $t0, 1
	sw $t0, -2064($fp)
label560:
	lw $t0, -964($fp)
	sw $t0, -2076($fp)
	lw $t1, -2064($fp)
	lw $t2, -2076($fp)
	bne $t1, $t2, label557
	j label558
label557:
	li $t0, 1
	sw $t0, -2060($fp)
label558:
	addi $sp, $sp, -4
	lw $t0, -1900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2060($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2080($fp)
	addi $sp, $sp, 24
	lw $t0, -256($fp)
	sw $t0, -2084($fp)
	lw $t0, -2080($fp)
	lw $t1, -2084($fp)
	sub $t0, $t0, $t1
	sw $t0, -2088($fp)
	li $t0, 63232
	sw $t0, -2092($fp)
	addi $sp, $sp, -4
	lw $t0, -1820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2092($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2096($fp)
	addi $sp, $sp, 20
	li $t0, 23665
	sw $t0, -2100($fp)
	lw $t0, -2096($fp)
	lw $t1, -2100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2104($fp)
	addi $t0, $fp, -120
	sw $t0, -2108($fp)
	lw $t0, -1036($fp)
	sw $t0, -2112($fp)
	li $t0, 4
	lw $t1, -2112($fp)
	mul $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	lw $t1, -2108($fp)
	add $t0, $t0, $t1
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	lw $t1, 0($t0)
	sw $t1, -2124($fp)
	addi $t0, $fp, -20
	sw $t0, -2128($fp)
	li $t0, 3
	sw $t0, -2132($fp)
	li $t0, 4
	lw $t1, -2132($fp)
	mul $t0, $t0, $t1
	sw $t0, -2136($fp)
	lw $t0, -2136($fp)
	lw $t1, -2128($fp)
	add $t0, $t0, $t1
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	lw $t1, 0($t0)
	sw $t1, -2144($fp)
	lw $t0, -1036($fp)
	sw $t0, -2148($fp)
	lw $t0, -2144($fp)
	lw $t1, -2148($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2152($fp)
	addi $sp, $sp, -4
	lw $t0, -1816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2152($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2156($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -2160($fp)
	li $t0, 38518
	sw $t0, -2164($fp)
	li $t0, 35876
	sw $t0, -2168($fp)
	lw $t0, -2164($fp)
	lw $t1, -2168($fp)
	add $t0, $t0, $t1
	sw $t0, -2172($fp)
	lw $t1, -2172($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label562
label563:
	lw $t0, -1048($fp)
	sw $t0, -2176($fp)
	lw $t1, -2176($fp)
	li $t2, 0
	bne $t1, $t2, label561
	j label562
label561:
	li $t0, 1
	sw $t0, -2160($fp)
label562:
	addi $sp, $sp, -4
	lw $t0, -1792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2160($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2180($fp)
	addi $sp, $sp, 20
	li $t0, 48240
	sw $t0, -2184($fp)
	lw $t1, -2180($fp)
	lw $t2, -2184($fp)
	bgt $t1, $t2, label530
	j label531
label530:
	li $t0, 1
	sw $t0, -1788($fp)
label531:
	li $t0, 39537
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -2192($fp)
	li $t0, 0
	sw $t0, -2196($fp)
	li $t0, 58208
	sw $t0, -2200($fp)
	li $t0, 26501
	sw $t0, -2204($fp)
	lw $t1, -2200($fp)
	lw $t2, -2204($fp)
	beq $t1, $t2, label566
	j label565
label566:
	li $t0, 10754
	sw $t0, -2208($fp)
	lw $t1, -2208($fp)
	li $t2, 0
	bne $t1, $t2, label564
	j label565
label564:
	li $t0, 1
	sw $t0, -2196($fp)
label565:
	li $t0, 0
	sw $t0, -2212($fp)
	li $t0, 0
	sw $t0, -2216($fp)
	lw $t0, -280($fp)
	sw $t0, -2220($fp)
	lw $t1, -2220($fp)
	li $t2, 0
	bne $t1, $t2, label570
	j label569
label569:
	li $t0, 1
	sw $t0, -2216($fp)
label570:
	lw $t0, -436($fp)
	sw $t0, -2224($fp)
	lw $t1, -2216($fp)
	lw $t2, -2224($fp)
	beq $t1, $t2, label567
	j label568
label567:
	li $t0, 1
	sw $t0, -2212($fp)
label568:
	addi $sp, $sp, -4
	lw $t0, -1788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2212($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2228($fp)
	addi $sp, $sp, 20
	li $t0, 14334
	sw $t0, -2232($fp)
	addi $sp, $sp, -4
	lw $t0, -1784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2232($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2236($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -2236($fp)
	sub $t0, $t0, $t1
	sw $t0, -2240($fp)
	addi $sp, $sp, -4
	lw $t0, -1744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2240($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2244($fp)
	addi $sp, $sp, 20
	lw $t0, -424($fp)
	sw $t0, -2248($fp)
	lw $t0, -2244($fp)
	lw $t1, -2248($fp)
	mul $t0, $t0, $t1
	sw $t0, -2252($fp)
	addi $sp, $sp, -4
	lw $t0, -1688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2252($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2256($fp)
	addi $sp, $sp, 20
	lw $t1, -2256($fp)
	li $t2, 0
	bne $t1, $t2, label523
	j label526
label526:
	li $t0, 0
	sw $t0, -2260($fp)
	lw $t0, -436($fp)
	sw $t0, -2264($fp)
	lw $t0, -1240($fp)
	sw $t0, -2268($fp)
	lw $t1, -2264($fp)
	lw $t2, -2268($fp)
	beq $t1, $t2, label571
	j label572
label571:
	li $t0, 1
	sw $t0, -2260($fp)
label572:
	li $t0, 28107
	sw $t0, -2272($fp)
	lw $t1, -2260($fp)
	lw $t2, -2272($fp)
	beq $t1, $t2, label523
	j label525
label525:
	li $t0, 23658
	sw $t0, -2276($fp)
	lw $t0, -424($fp)
	sw $t0, -2280($fp)
	lw $t0, -2276($fp)
	lw $t1, -2280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2284($fp)
	li $t0, 0
	lw $t1, -2284($fp)
	sub $t0, $t0, $t1
	sw $t0, -2288($fp)
	li $t0, 0
	sw $t0, -2292($fp)
	lw $t0, -1264($fp)
	sw $t0, -2296($fp)
	lw $t1, -2296($fp)
	li $t2, 0
	bne $t1, $t2, label575
	j label574
label574:
	li $t0, 1
	sw $t0, -2292($fp)
label575:
	li $t0, 0
	lw $t1, -2292($fp)
	sub $t0, $t0, $t1
	sw $t0, -2300($fp)
	li $t0, 8799
	sw $t0, -2304($fp)
	li $t0, 0
	lw $t1, -2304($fp)
	sub $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $t0, -424($fp)
	sw $t0, -2312($fp)
	li $t0, 0
	lw $t1, -2312($fp)
	sub $t0, $t0, $t1
	sw $t0, -2316($fp)
	lw $t0, -1252($fp)
	sw $t0, -2320($fp)
	lw $t0, -2316($fp)
	lw $t1, -2320($fp)
	add $t0, $t0, $t1
	sw $t0, -2324($fp)
	li $t0, 0
	sw $t0, -2328($fp)
	lw $t0, -1276($fp)
	sw $t0, -2332($fp)
	lw $t1, -2332($fp)
	li $t2, 0
	bne $t1, $t2, label577
	j label576
label576:
	li $t0, 1
	sw $t0, -2328($fp)
label577:
	addi $sp, $sp, -4
	lw $t0, -2288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2328($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2336($fp)
	addi $sp, $sp, 24
	lw $t1, -2336($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label524
label573:
	li $t0, 64823
	sw $t0, -2340($fp)
	lw $t1, -2340($fp)
	li $t2, 0
	bne $t1, $t2, label523
	j label524
label523:
	li $t0, 1
	sw $t0, -1680($fp)
label524:
	j label503
label505:
	j label488
label490:
label578:
	addi $t0, $fp, -140
	sw $t0, -2344($fp)
	lw $t0, -436($fp)
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
	lw $t0, -448($fp)
	sw $t0, -2364($fp)
	lw $t0, -2360($fp)
	lw $t1, -2364($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2368($fp)
	lw $t0, 8($fp)
	sw $t0, -2372($fp)
	lw $t0, -2368($fp)
	lw $t1, -2372($fp)
	sub $t0, $t0, $t1
	sw $t0, -2376($fp)
	li $t0, 42166
	sw $t0, -2380($fp)
	li $t0, 0
	lw $t1, -2380($fp)
	sub $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t1, -2376($fp)
	lw $t2, -2384($fp)
	bge $t1, $t2, label579
	j label580
label579:
	li $t0, 55771
	sw $t0, -2388($fp)
	li $t0, 0
	sw $t0, -2392($fp)
	li $t0, 27589
	sw $t0, -2396($fp)
	lw $t1, -2396($fp)
	li $t2, 0
	bne $t1, $t2, label582
	j label581
label581:
	li $t0, 1
	sw $t0, -2392($fp)
label582:
	lw $t0, -2388($fp)
	lw $t1, -2392($fp)
	add $t0, $t0, $t1
	sw $t0, -2400($fp)
	j label578
label580:
label583:
	li $t0, 0
	sw $t0, -2404($fp)
	addi $t0, $fp, -140
	sw $t0, -2408($fp)
	li $t0, 1
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
	lw $t1, -2424($fp)
	li $t2, 0
	bne $t1, $t2, label588
	j label587
label588:
	lw $t0, -436($fp)
	sw $t0, -2428($fp)
	li $t0, 0
	lw $t1, -2428($fp)
	sub $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t1, -2432($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label587
label586:
	li $t0, 1
	sw $t0, -2404($fp)
label587:
	lw $t0, -2404($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -2436($fp)
	lw $t1, -2436($fp)
	li $t2, 0
	bne $t1, $t2, label584
	j label585
label584:
	li $t0, 0
	sw $t0, -2440($fp)
	li $t0, 0
	sw $t0, -2444($fp)
	li $t0, 45889
	sw $t0, -2448($fp)
	lw $t1, -2448($fp)
	li $t2, 0
	bne $t1, $t2, label592
	j label591
label591:
	li $t0, 1
	sw $t0, -2444($fp)
label592:
	lw $t0, 8($fp)
	sw $t0, -2452($fp)
	lw $t0, -2444($fp)
	lw $t1, -2452($fp)
	sub $t0, $t0, $t1
	sw $t0, -2456($fp)
	li $t0, 11478
	sw $t0, -2460($fp)
	li $t0, 0
	sw $t0, -2464($fp)
	li $t0, 0
	sw $t0, -2468($fp)
	lw $t0, 12($fp)
	sw $t0, -2472($fp)
	lw $t0, 16($fp)
	sw $t0, -2476($fp)
	lw $t1, -2472($fp)
	lw $t2, -2476($fp)
	ble $t1, $t2, label595
	j label596
label595:
	li $t0, 1
	sw $t0, -2468($fp)
label596:
	lw $t0, -976($fp)
	sw $t0, -2480($fp)
	lw $t1, -2468($fp)
	lw $t2, -2480($fp)
	beq $t1, $t2, label593
	j label594
label593:
	li $t0, 1
	sw $t0, -2464($fp)
label594:
	addi $sp, $sp, -4
	lw $t0, -2456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2464($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2484($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -2484($fp)
	sub $t0, $t0, $t1
	sw $t0, -2488($fp)
	lw $t1, -2488($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label589
label589:
	li $t0, 1
	sw $t0, -2440($fp)
label590:
	lw $ra, -4($fp)
	lw $v0, -2440($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label583
label585:
	li $t0, 0
	sw $t0, -2492($fp)
	li $t0, 62897
	sw $t0, -2496($fp)
	li $t0, 0
	lw $t1, -2496($fp)
	sub $t0, $t0, $t1
	sw $t0, -2500($fp)
	li $t0, 55232
	sw $t0, -2504($fp)
	lw $t1, -2500($fp)
	lw $t2, -2504($fp)
	ble $t1, $t2, label597
	j label598
label597:
	li $t0, 1
	sw $t0, -2492($fp)
label598:
	li $t0, 0
	sw $t0, -2508($fp)
	addi $t0, $fp, -140
	sw $t0, -2512($fp)
	li $t0, 4
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
	lw $t1, -2528($fp)
	li $t2, 0
	bne $t1, $t2, label599
	j label601
label601:
	lw $t0, -436($fp)
	sw $t0, -2532($fp)
	lw $t1, -2532($fp)
	li $t2, 0
	bne $t1, $t2, label599
	j label600
label599:
	li $t0, 1
	sw $t0, -2508($fp)
label600:
	li $t0, 0
	sw $t0, -2536($fp)
	li $t0, 58300
	sw $t0, -2540($fp)
	lw $t0, -292($fp)
	sw $t0, -2544($fp)
	lw $t0, -2540($fp)
	lw $t1, -2544($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2548($fp)
	lw $t1, -2548($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label604
label604:
	lw $t0, -1036($fp)
	sw $t0, -2552($fp)
	lw $t1, -2552($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label603
label602:
	li $t0, 1
	sw $t0, -2536($fp)
label603:
	li $t0, 0
	sw $t0, -2556($fp)
	li $t0, 574
	sw $t0, -2560($fp)
	li $t0, 13381
	sw $t0, -2564($fp)
	lw $t0, -2560($fp)
	lw $t1, -2564($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2568($fp)
	lw $t1, -2568($fp)
	li $t2, 0
	bne $t1, $t2, label607
	j label606
label607:
	lw $t0, 4($fp)
	sw $t0, -2572($fp)
	lw $t1, -2572($fp)
	li $t2, 0
	bne $t1, $t2, label605
	j label606
label605:
	li $t0, 1
	sw $t0, -2556($fp)
label606:
	addi $t0, $fp, -40
	sw $t0, -2576($fp)
	li $t0, 1
	sw $t0, -2580($fp)
	li $t0, 4
	lw $t1, -2580($fp)
	mul $t0, $t0, $t1
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	lw $t1, -2576($fp)
	add $t0, $t0, $t1
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	lw $t1, 0($t0)
	sw $t1, -2592($fp)
	lw $t0, -988($fp)
	sw $t0, -2596($fp)
	lw $t0, -2592($fp)
	lw $t1, -2596($fp)
	sub $t0, $t0, $t1
	sw $t0, -2600($fp)
	addi $sp, $sp, -4
	lw $t0, -2492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2600($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2604($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -40
	sw $t0, -2608($fp)
	li $t0, 0
	sw $t0, -2612($fp)
	lw $t0, -964($fp)
	sw $t0, -2616($fp)
	lw $t1, -2616($fp)
	li $t2, 0
	bne $t1, $t2, label609
	j label608
label608:
	li $t0, 1
	sw $t0, -2612($fp)
label609:
	li $t0, 4
	lw $t1, -2612($fp)
	mul $t0, $t0, $t1
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	lw $t1, -2608($fp)
	add $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	lw $t1, 0($t0)
	sw $t1, -2628($fp)
	lw $t0, -2604($fp)
	lw $t1, -2628($fp)
	sub $t0, $t0, $t1
	sw $t0, -2632($fp)
	li $t0, 0
	sw $t0, -2636($fp)
	addi $t0, $fp, -40
	sw $t0, -2640($fp)
	li $t0, 0
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
	lw $t1, -2656($fp)
	li $t2, 0
	bne $t1, $t2, label614
	j label613
label613:
	li $t0, 1
	sw $t0, -2636($fp)
label614:
	lw $t0, -268($fp)
	sw $t0, -2660($fp)
	lw $t0, -2636($fp)
	lw $t1, -2660($fp)
	mul $t0, $t0, $t1
	sw $t0, -2664($fp)
	lw $t0, 8($fp)
	sw $t0, -2668($fp)
	lw $t0, -712($fp)
	sw $t0, -2672($fp)
	lw $t0, -2668($fp)
	lw $t1, -2672($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2676($fp)
	li $t0, 47327
	sw $t0, -2680($fp)
	lw $t0, -2676($fp)
	lw $t1, -2680($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2684($fp)
	addi $t0, $fp, -120
	sw $t0, -2688($fp)
	li $t0, 9
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
	li $t0, 63939
	sw $t0, -2708($fp)
	li $t0, 52898
	sw $t0, -2712($fp)
	li $t0, 54565
	sw $t0, -2716($fp)
	lw $t0, -2712($fp)
	lw $t1, -2716($fp)
	add $t0, $t0, $t1
	sw $t0, -2720($fp)
	addi $sp, $sp, -4
	lw $t0, -2684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2720($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2724($fp)
	addi $sp, $sp, 20
	lw $t0, -2664($fp)
	lw $t1, -2724($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2728($fp)
	lw $t1, -2728($fp)
	li $t2, 0
	bne $t1, $t2, label610
	j label611
label610:
	li $t0, 19975
	sw $t0, -2772($fp)
	addi $t0, $fp, -2768
	sw $t0, -2776($fp)
	li $t0, 0
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2784($fp)
	lw $t0, -2776($fp)
	lw $t1, -2784($fp)
	add $t0, $t0, $t1
	sw $t0, -2788($fp)
	lw $t0, -2772($fp)
	lw $t1, -2788($fp)
	sw $t0, 0($t1)
	lw $t0, -2788($fp)
	lw $t1, 0($t0)
	sw $t1, -2792($fp)
	li $t0, 55717
	sw $t0, -2796($fp)
	addi $t0, $fp, -2768
	sw $t0, -2800($fp)
	li $t0, 1
	sw $t0, -2804($fp)
	lw $t0, -2804($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2808($fp)
	lw $t0, -2800($fp)
	lw $t1, -2808($fp)
	add $t0, $t0, $t1
	sw $t0, -2812($fp)
	lw $t0, -2796($fp)
	lw $t1, -2812($fp)
	sw $t0, 0($t1)
	lw $t0, -2812($fp)
	lw $t1, 0($t0)
	sw $t1, -2816($fp)
	li $t0, 22435
	sw $t0, -2820($fp)
	addi $t0, $fp, -2768
	sw $t0, -2824($fp)
	li $t0, 2
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2832($fp)
	lw $t0, -2824($fp)
	lw $t1, -2832($fp)
	add $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t0, -2820($fp)
	lw $t1, -2836($fp)
	sw $t0, 0($t1)
	lw $t0, -2836($fp)
	lw $t1, 0($t0)
	sw $t1, -2840($fp)
	li $t0, 48082
	sw $t0, -2844($fp)
	addi $t0, $fp, -2768
	sw $t0, -2848($fp)
	li $t0, 3
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -2848($fp)
	lw $t1, -2856($fp)
	add $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $t0, -2844($fp)
	lw $t1, -2860($fp)
	sw $t0, 0($t1)
	lw $t0, -2860($fp)
	lw $t1, 0($t0)
	sw $t1, -2864($fp)
	li $t0, 64516
	sw $t0, -2868($fp)
	addi $t0, $fp, -2768
	sw $t0, -2872($fp)
	li $t0, 4
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2880($fp)
	lw $t0, -2872($fp)
	lw $t1, -2880($fp)
	add $t0, $t0, $t1
	sw $t0, -2884($fp)
	lw $t0, -2868($fp)
	lw $t1, -2884($fp)
	sw $t0, 0($t1)
	lw $t0, -2884($fp)
	lw $t1, 0($t0)
	sw $t1, -2888($fp)
	li $t0, 46093
	sw $t0, -2892($fp)
	addi $t0, $fp, -2768
	sw $t0, -2896($fp)
	li $t0, 5
	sw $t0, -2900($fp)
	lw $t0, -2900($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $t0, -2896($fp)
	lw $t1, -2904($fp)
	add $t0, $t0, $t1
	sw $t0, -2908($fp)
	lw $t0, -2892($fp)
	lw $t1, -2908($fp)
	sw $t0, 0($t1)
	lw $t0, -2908($fp)
	lw $t1, 0($t0)
	sw $t1, -2912($fp)
	li $t0, 47369
	sw $t0, -2916($fp)
	addi $t0, $fp, -2768
	sw $t0, -2920($fp)
	li $t0, 6
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2928($fp)
	lw $t0, -2920($fp)
	lw $t1, -2928($fp)
	add $t0, $t0, $t1
	sw $t0, -2932($fp)
	lw $t0, -2916($fp)
	lw $t1, -2932($fp)
	sw $t0, 0($t1)
	lw $t0, -2932($fp)
	lw $t1, 0($t0)
	sw $t1, -2936($fp)
	li $t0, 41146
	sw $t0, -2940($fp)
	addi $t0, $fp, -2768
	sw $t0, -2944($fp)
	li $t0, 7
	sw $t0, -2948($fp)
	lw $t0, -2948($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2952($fp)
	lw $t0, -2944($fp)
	lw $t1, -2952($fp)
	add $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t0, -2940($fp)
	lw $t1, -2956($fp)
	sw $t0, 0($t1)
	lw $t0, -2956($fp)
	lw $t1, 0($t0)
	sw $t1, -2960($fp)
	li $t0, 36328
	sw $t0, -2964($fp)
	addi $t0, $fp, -2768
	sw $t0, -2968($fp)
	li $t0, 8
	sw $t0, -2972($fp)
	lw $t0, -2972($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2976($fp)
	lw $t0, -2968($fp)
	lw $t1, -2976($fp)
	add $t0, $t0, $t1
	sw $t0, -2980($fp)
	lw $t0, -2964($fp)
	lw $t1, -2980($fp)
	sw $t0, 0($t1)
	lw $t0, -2980($fp)
	lw $t1, 0($t0)
	sw $t1, -2984($fp)
	li $t0, 9422
	sw $t0, -2988($fp)
	addi $t0, $fp, -2768
	sw $t0, -2992($fp)
	li $t0, 9
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3000($fp)
	lw $t0, -2992($fp)
	lw $t1, -3000($fp)
	add $t0, $t0, $t1
	sw $t0, -3004($fp)
	lw $t0, -2988($fp)
	lw $t1, -3004($fp)
	sw $t0, 0($t1)
	lw $t0, -3004($fp)
	lw $t1, 0($t0)
	sw $t1, -3008($fp)
	li $t0, 21916
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	sw $t0, -3016($fp)
	lw $t0, -3016($fp)
	sw $t0, -3020($fp)
	li $t0, 26766
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	sw $t0, -3028($fp)
	lw $t0, -3028($fp)
	sw $t0, -3032($fp)
	li $t0, 20900
	sw $t0, -3036($fp)
	lw $t0, -3036($fp)
	sw $t0, -3040($fp)
	lw $t0, -3040($fp)
	sw $t0, -3044($fp)
	lw $t0, -3016($fp)
	sw $t0, -3048($fp)
	li $t0, 0
	sw $t0, -3052($fp)
	addi $t0, $fp, -2768
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
	lw $t1, -3072($fp)
	li $t2, 0
	bne $t1, $t2, label616
	j label615
label615:
	li $t0, 1
	sw $t0, -3052($fp)
label616:
	li $t0, 0
	sw $t0, -3076($fp)
	li $t0, 0
	sw $t0, -3080($fp)
	lw $t0, -3040($fp)
	sw $t0, -3084($fp)
	li $t0, 28483
	sw $t0, -3088($fp)
	lw $t1, -3084($fp)
	lw $t2, -3088($fp)
	blt $t1, $t2, label619
	j label620
label619:
	li $t0, 1
	sw $t0, -3080($fp)
label620:
	lw $t0, -1192($fp)
	sw $t0, -3092($fp)
	lw $t1, -3080($fp)
	lw $t2, -3092($fp)
	beq $t1, $t2, label617
	j label618
label617:
	li $t0, 1
	sw $t0, -3076($fp)
label618:
	li $t0, 0
	sw $t0, -3096($fp)
	li $t0, 0
	sw $t0, -3100($fp)
	lw $t0, -436($fp)
	sw $t0, -3104($fp)
	lw $t1, -3104($fp)
	li $t2, 0
	bne $t1, $t2, label624
	j label623
label623:
	li $t0, 1
	sw $t0, -3100($fp)
label624:
	lw $t0, -1216($fp)
	sw $t0, -3108($fp)
	lw $t0, -3100($fp)
	lw $t1, -3108($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3112($fp)
	li $t0, 0
	sw $t0, -3116($fp)
	lw $t0, -268($fp)
	sw $t0, -3120($fp)
	lw $t1, -3120($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label627
label627:
	li $t0, 2270
	sw $t0, -3124($fp)
	lw $t1, -3124($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label626
label625:
	li $t0, 1
	sw $t0, -3116($fp)
label626:
	lw $t0, -988($fp)
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -3132($fp)
	addi $sp, $sp, -4
	lw $t0, -3112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3132($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3136($fp)
	addi $sp, $sp, 16
	lw $t1, -3136($fp)
	li $t2, 0
	bne $t1, $t2, label622
	j label621
label621:
	li $t0, 1
	sw $t0, -3096($fp)
label622:
	li $t0, 0
	sw $t0, -3140($fp)
	lw $t0, -700($fp)
	sw $t0, -3144($fp)
	lw $t0, -1012($fp)
	sw $t0, -3148($fp)
	lw $t0, -3144($fp)
	lw $t1, -3148($fp)
	sub $t0, $t0, $t1
	sw $t0, -3152($fp)
	lw $t0, -1000($fp)
	sw $t0, -3156($fp)
	lw $t1, -3152($fp)
	lw $t2, -3156($fp)
	beq $t1, $t2, label628
	j label629
label628:
	li $t0, 1
	sw $t0, -3140($fp)
label629:
	lw $t0, 8($fp)
	sw $t0, -3160($fp)
	lw $t0, -3160($fp)
	sw $t0, -3028($fp)
	lw $t0, -3028($fp)
	sw $t0, -3164($fp)
	addi $sp, $sp, -4
	lw $t0, -3052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3164($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3168($fp)
	addi $sp, $sp, 24
	lw $t0, -3048($fp)
	lw $t1, -3168($fp)
	add $t0, $t0, $t1
	sw $t0, -3172($fp)
	j label612
label611:
	li $t0, 0
	sw $t0, -3176($fp)
	li $t0, 0
	sw $t0, -3180($fp)
	lw $t0, -1264($fp)
	sw $t0, -3184($fp)
	lw $t0, -1000($fp)
	sw $t0, -3188($fp)
	lw $t1, -3184($fp)
	lw $t2, -3188($fp)
	bne $t1, $t2, label633
	j label634
label633:
	li $t0, 1
	sw $t0, -3180($fp)
label634:
	li $t0, 0
	sw $t0, -3192($fp)
	li $t0, 34411
	sw $t0, -3196($fp)
	lw $t1, -3196($fp)
	li $t2, 0
	bne $t1, $t2, label638
	j label637
label638:
	li $t0, 38467
	sw $t0, -3200($fp)
	lw $t1, -3200($fp)
	li $t2, 0
	bne $t1, $t2, label635
	j label637
label637:
	li $t0, 13527
	sw $t0, -3204($fp)
	lw $t1, -3204($fp)
	li $t2, 0
	bne $t1, $t2, label635
	j label636
label635:
	li $t0, 1
	sw $t0, -3192($fp)
label636:
	li $t0, 0
	sw $t0, -3208($fp)
	lw $t0, -292($fp)
	sw $t0, -3212($fp)
	li $t0, 41865
	sw $t0, -3216($fp)
	lw $t1, -3212($fp)
	lw $t2, -3216($fp)
	blt $t1, $t2, label641
	j label640
label641:
	li $t0, 16166
	sw $t0, -3220($fp)
	lw $t1, -3220($fp)
	li $t2, 0
	bne $t1, $t2, label639
	j label640
label639:
	li $t0, 1
	sw $t0, -3208($fp)
label640:
	addi $sp, $sp, -4
	lw $t0, -3180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3208($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3224($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -3224($fp)
	sub $t0, $t0, $t1
	sw $t0, -3228($fp)
	lw $t1, -3228($fp)
	li $t2, 0
	bne $t1, $t2, label632
	j label631
label632:
	li $t0, 24107
	sw $t0, -3232($fp)
	li $t0, 0
	lw $t1, -3232($fp)
	sub $t0, $t0, $t1
	sw $t0, -3236($fp)
	li $t0, 44792
	sw $t0, -3240($fp)
	lw $t1, -3236($fp)
	lw $t2, -3240($fp)
	beq $t1, $t2, label630
	j label631
label630:
	li $t0, 1
	sw $t0, -3176($fp)
label631:
label612:
	addi $t0, $fp, -20
	sw $t0, -3244($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
	sw $t0, -3264($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -3284($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -3304($fp)
	li $t0, 3
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
	lw $t0, -244($fp)
	sw $t0, -3324($fp)
	lw $t0, -3324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -256($fp)
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	sw $t0, -3332($fp)
	lw $t0, -3332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -292($fp)
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	lw $t0, -424($fp)
	sw $t0, -3444($fp)
	lw $t0, -3444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -436($fp)
	sw $t0, -3448($fp)
	lw $t0, -3448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -448($fp)
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3456($fp)
	li $t0, 0
	sw $t0, -3460($fp)
	li $t0, 4
	lw $t1, -3460($fp)
	mul $t0, $t0, $t1
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	lw $t1, -3456($fp)
	add $t0, $t0, $t1
	sw $t0, -3468($fp)
	lw $t0, -3468($fp)
	lw $t1, 0($t0)
	sw $t1, -3472($fp)
	lw $t0, -3472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3476($fp)
	li $t0, 1
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
	lw $t0, -3492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3496($fp)
	li $t0, 2
	sw $t0, -3500($fp)
	li $t0, 4
	lw $t1, -3500($fp)
	mul $t0, $t0, $t1
	sw $t0, -3504($fp)
	lw $t0, -3504($fp)
	lw $t1, -3496($fp)
	add $t0, $t0, $t1
	sw $t0, -3508($fp)
	lw $t0, -3508($fp)
	lw $t1, 0($t0)
	sw $t1, -3512($fp)
	lw $t0, -3512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3516($fp)
	li $t0, 3
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
	lw $t0, -3532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3536($fp)
	li $t0, 4
	sw $t0, -3540($fp)
	li $t0, 4
	lw $t1, -3540($fp)
	mul $t0, $t0, $t1
	sw $t0, -3544($fp)
	lw $t0, -3544($fp)
	lw $t1, -3536($fp)
	add $t0, $t0, $t1
	sw $t0, -3548($fp)
	lw $t0, -3548($fp)
	lw $t1, 0($t0)
	sw $t1, -3552($fp)
	lw $t0, -3552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3556($fp)
	li $t0, 5
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
	lw $t0, -3572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3576($fp)
	li $t0, 6
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
	addi $t0, $fp, -80
	sw $t0, -3596($fp)
	li $t0, 7
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
	addi $t0, $fp, -80
	sw $t0, -3616($fp)
	li $t0, 8
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
	addi $t0, $fp, -80
	sw $t0, -3636($fp)
	li $t0, 9
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
	lw $t0, -700($fp)
	sw $t0, -3656($fp)
	lw $t0, -3656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	sw $t0, -3660($fp)
	lw $t0, -3660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
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
	addi $t0, $fp, -120
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
	addi $t0, $fp, -120
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
	addi $t0, $fp, -120
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
	addi $t0, $fp, -120
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
	addi $t0, $fp, -120
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
	addi $t0, $fp, -120
	sw $t0, -3784($fp)
	li $t0, 6
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
	addi $t0, $fp, -120
	sw $t0, -3804($fp)
	li $t0, 7
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
	addi $t0, $fp, -120
	sw $t0, -3824($fp)
	li $t0, 8
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
	addi $t0, $fp, -120
	sw $t0, -3844($fp)
	li $t0, 9
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
	lw $t0, -964($fp)
	sw $t0, -3864($fp)
	lw $t0, -3864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -976($fp)
	sw $t0, -3868($fp)
	lw $t0, -3868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -988($fp)
	sw $t0, -3872($fp)
	lw $t0, -3872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1000($fp)
	sw $t0, -3876($fp)
	lw $t0, -3876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1012($fp)
	sw $t0, -3880($fp)
	lw $t0, -3880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1024($fp)
	sw $t0, -3884($fp)
	lw $t0, -3884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1036($fp)
	sw $t0, -3888($fp)
	lw $t0, -3888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1048($fp)
	sw $t0, -3892($fp)
	lw $t0, -3892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1060($fp)
	sw $t0, -3896($fp)
	lw $t0, -3896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -3900($fp)
	li $t0, 0
	sw $t0, -3904($fp)
	li $t0, 4
	lw $t1, -3904($fp)
	mul $t0, $t0, $t1
	sw $t0, -3908($fp)
	lw $t0, -3908($fp)
	lw $t1, -3900($fp)
	add $t0, $t0, $t1
	sw $t0, -3912($fp)
	lw $t0, -3912($fp)
	lw $t1, 0($t0)
	sw $t1, -3916($fp)
	lw $t0, -3916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -3920($fp)
	li $t0, 1
	sw $t0, -3924($fp)
	li $t0, 4
	lw $t1, -3924($fp)
	mul $t0, $t0, $t1
	sw $t0, -3928($fp)
	lw $t0, -3928($fp)
	lw $t1, -3920($fp)
	add $t0, $t0, $t1
	sw $t0, -3932($fp)
	lw $t0, -3932($fp)
	lw $t1, 0($t0)
	sw $t1, -3936($fp)
	lw $t0, -3936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -3940($fp)
	li $t0, 2
	sw $t0, -3944($fp)
	li $t0, 4
	lw $t1, -3944($fp)
	mul $t0, $t0, $t1
	sw $t0, -3948($fp)
	lw $t0, -3948($fp)
	lw $t1, -3940($fp)
	add $t0, $t0, $t1
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	lw $t1, 0($t0)
	sw $t1, -3956($fp)
	lw $t0, -3956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -3960($fp)
	li $t0, 3
	sw $t0, -3964($fp)
	li $t0, 4
	lw $t1, -3964($fp)
	mul $t0, $t0, $t1
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	lw $t1, -3960($fp)
	add $t0, $t0, $t1
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	lw $t1, 0($t0)
	sw $t1, -3976($fp)
	lw $t0, -3976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -3980($fp)
	li $t0, 4
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
	lw $t0, -3996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1192($fp)
	sw $t0, -4000($fp)
	lw $t0, -4000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1204($fp)
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1216($fp)
	sw $t0, -4008($fp)
	lw $t0, -4008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1228($fp)
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1240($fp)
	sw $t0, -4016($fp)
	lw $t0, -4016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1252($fp)
	sw $t0, -4020($fp)
	lw $t0, -4020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1264($fp)
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1276($fp)
	sw $t0, -4028($fp)
	lw $t0, -4028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1288($fp)
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4036($fp)
	lw $t0, -292($fp)
	sw $t0, -4040($fp)
	lw $t1, -4040($fp)
	li $t2, 0
	bne $t1, $t2, label643
	j label642
label642:
	li $t0, 1
	sw $t0, -4036($fp)
label643:
	li $t0, 0
	lw $t1, -4036($fp)
	sub $t0, $t0, $t1
	sw $t0, -4044($fp)
	lw $ra, -4($fp)
	lw $v0, -4044($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -6816
	li $t0, 26239
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	li $t0, 11469
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	li $t0, 33822
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	li $t0, 24643
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	li $t0, 17554
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	li $t0, 58527
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	li $t0, 6434
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	li $t0, 37529
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	li $t0, 48708
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	li $t0, 28869
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	li $t0, 20075
	sw $t0, -340($fp)
	addi $t0, $fp, -36
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
	li $t0, 47688
	sw $t0, -364($fp)
	addi $t0, $fp, -36
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
	li $t0, 9426
	sw $t0, -388($fp)
	addi $t0, $fp, -36
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
	li $t0, 1908
	sw $t0, -412($fp)
	addi $t0, $fp, -36
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
	li $t0, 23298
	sw $t0, -436($fp)
	addi $t0, $fp, -36
	sw $t0, -440($fp)
	li $t0, 4
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
	li $t0, 45755
	sw $t0, -460($fp)
	addi $t0, $fp, -36
	sw $t0, -464($fp)
	li $t0, 5
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
	li $t0, 11330
	sw $t0, -484($fp)
	addi $t0, $fp, -36
	sw $t0, -488($fp)
	li $t0, 6
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
	li $t0, 45215
	sw $t0, -508($fp)
	addi $t0, $fp, -36
	sw $t0, -512($fp)
	li $t0, 7
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
	li $t0, 6985
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	li $t0, 32230
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	li $t0, 47485
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 35468
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	li $t0, 55632
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	li $t0, 50329
	sw $t0, -592($fp)
	addi $t0, $fp, -52
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
	li $t0, 11797
	sw $t0, -616($fp)
	addi $t0, $fp, -52
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
	li $t0, 6262
	sw $t0, -640($fp)
	addi $t0, $fp, -52
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
	li $t0, 19204
	sw $t0, -664($fp)
	addi $t0, $fp, -52
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
	li $t0, 50265
	sw $t0, -688($fp)
	addi $t0, $fp, -60
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
	li $t0, 19790
	sw $t0, -712($fp)
	addi $t0, $fp, -60
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
	li $t0, 43311
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -744($fp)
	li $t0, 29521
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -756($fp)
	li $t0, 46029
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	li $t0, 54780
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	li $t0, 63343
	sw $t0, -784($fp)
	addi $t0, $fp, -76
	sw $t0, -788($fp)
	li $t0, 0
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
	li $t0, 5136
	sw $t0, -808($fp)
	addi $t0, $fp, -76
	sw $t0, -812($fp)
	li $t0, 1
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
	li $t0, 6798
	sw $t0, -832($fp)
	addi $t0, $fp, -76
	sw $t0, -836($fp)
	li $t0, 2
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
	li $t0, 56334
	sw $t0, -856($fp)
	addi $t0, $fp, -76
	sw $t0, -860($fp)
	li $t0, 3
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
	li $t0, 11570
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -888($fp)
	li $t0, 44327
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	li $t0, 39506
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -912($fp)
	li $t0, 40439
	sw $t0, -916($fp)
	addi $t0, $fp, -112
	sw $t0, -920($fp)
	li $t0, 0
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
	li $t0, 64402
	sw $t0, -940($fp)
	addi $t0, $fp, -112
	sw $t0, -944($fp)
	li $t0, 1
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
	li $t0, 21658
	sw $t0, -964($fp)
	addi $t0, $fp, -112
	sw $t0, -968($fp)
	li $t0, 2
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $t0, -968($fp)
	lw $t1, -976($fp)
	add $t0, $t0, $t1
	sw $t0, -980($fp)
	lw $t0, -964($fp)
	lw $t1, -980($fp)
	sw $t0, 0($t1)
	lw $t0, -980($fp)
	lw $t1, 0($t0)
	sw $t1, -984($fp)
	li $t0, 49866
	sw $t0, -988($fp)
	addi $t0, $fp, -112
	sw $t0, -992($fp)
	li $t0, 3
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1000($fp)
	lw $t0, -992($fp)
	lw $t1, -1000($fp)
	add $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t0, -988($fp)
	lw $t1, -1004($fp)
	sw $t0, 0($t1)
	lw $t0, -1004($fp)
	lw $t1, 0($t0)
	sw $t1, -1008($fp)
	li $t0, 774
	sw $t0, -1012($fp)
	addi $t0, $fp, -112
	sw $t0, -1016($fp)
	li $t0, 4
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t0, -1016($fp)
	lw $t1, -1024($fp)
	add $t0, $t0, $t1
	sw $t0, -1028($fp)
	lw $t0, -1012($fp)
	lw $t1, -1028($fp)
	sw $t0, 0($t1)
	lw $t0, -1028($fp)
	lw $t1, 0($t0)
	sw $t1, -1032($fp)
	li $t0, 44957
	sw $t0, -1036($fp)
	addi $t0, $fp, -112
	sw $t0, -1040($fp)
	li $t0, 5
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t0, -1040($fp)
	lw $t1, -1048($fp)
	add $t0, $t0, $t1
	sw $t0, -1052($fp)
	lw $t0, -1036($fp)
	lw $t1, -1052($fp)
	sw $t0, 0($t1)
	lw $t0, -1052($fp)
	lw $t1, 0($t0)
	sw $t1, -1056($fp)
	li $t0, 30085
	sw $t0, -1060($fp)
	addi $t0, $fp, -112
	sw $t0, -1064($fp)
	li $t0, 6
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1072($fp)
	lw $t0, -1064($fp)
	lw $t1, -1072($fp)
	add $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t0, -1060($fp)
	lw $t1, -1076($fp)
	sw $t0, 0($t1)
	lw $t0, -1076($fp)
	lw $t1, 0($t0)
	sw $t1, -1080($fp)
	li $t0, 12104
	sw $t0, -1084($fp)
	addi $t0, $fp, -112
	sw $t0, -1088($fp)
	li $t0, 7
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1096($fp)
	lw $t0, -1088($fp)
	lw $t1, -1096($fp)
	add $t0, $t0, $t1
	sw $t0, -1100($fp)
	lw $t0, -1084($fp)
	lw $t1, -1100($fp)
	sw $t0, 0($t1)
	lw $t0, -1100($fp)
	lw $t1, 0($t0)
	sw $t1, -1104($fp)
	li $t0, 24636
	sw $t0, -1108($fp)
	addi $t0, $fp, -112
	sw $t0, -1112($fp)
	li $t0, 8
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1120($fp)
	lw $t0, -1112($fp)
	lw $t1, -1120($fp)
	add $t0, $t0, $t1
	sw $t0, -1124($fp)
	lw $t0, -1108($fp)
	lw $t1, -1124($fp)
	sw $t0, 0($t1)
	lw $t0, -1124($fp)
	lw $t1, 0($t0)
	sw $t1, -1128($fp)
	li $t0, 37070
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	sw $t0, -1140($fp)
	li $t0, 44334
	sw $t0, -1144($fp)
	addi $t0, $fp, -124
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
	li $t0, 6585
	sw $t0, -1168($fp)
	addi $t0, $fp, -124
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
	li $t0, 7002
	sw $t0, -1192($fp)
	addi $t0, $fp, -124
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
	li $t0, 34430
	sw $t0, -1216($fp)
	addi $t0, $fp, -164
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
	li $t0, 56914
	sw $t0, -1240($fp)
	addi $t0, $fp, -164
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
	li $t0, 18800
	sw $t0, -1264($fp)
	addi $t0, $fp, -164
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
	li $t0, 40693
	sw $t0, -1288($fp)
	addi $t0, $fp, -164
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
	li $t0, 10582
	sw $t0, -1312($fp)
	addi $t0, $fp, -164
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
	li $t0, 3529
	sw $t0, -1336($fp)
	addi $t0, $fp, -164
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
	li $t0, 60483
	sw $t0, -1360($fp)
	addi $t0, $fp, -164
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
	li $t0, 53893
	sw $t0, -1384($fp)
	addi $t0, $fp, -164
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
	li $t0, 33050
	sw $t0, -1408($fp)
	addi $t0, $fp, -164
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
	li $t0, 40976
	sw $t0, -1432($fp)
	addi $t0, $fp, -164
	sw $t0, -1436($fp)
	li $t0, 9
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1444($fp)
	lw $t0, -1436($fp)
	lw $t1, -1444($fp)
	add $t0, $t0, $t1
	sw $t0, -1448($fp)
	lw $t0, -1432($fp)
	lw $t1, -1448($fp)
	sw $t0, 0($t1)
	lw $t0, -1448($fp)
	lw $t1, 0($t0)
	sw $t1, -1452($fp)
	li $t0, 43137
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -1464($fp)
	li $t0, 30858
	sw $t0, -1468($fp)
	addi $t0, $fp, -192
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
	li $t0, 46113
	sw $t0, -1492($fp)
	addi $t0, $fp, -192
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
	li $t0, 49936
	sw $t0, -1516($fp)
	addi $t0, $fp, -192
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
	li $t0, 21656
	sw $t0, -1540($fp)
	addi $t0, $fp, -192
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
	li $t0, 57683
	sw $t0, -1564($fp)
	addi $t0, $fp, -192
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
	li $t0, 28727
	sw $t0, -1588($fp)
	addi $t0, $fp, -192
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
	li $t0, 61163
	sw $t0, -1612($fp)
	addi $t0, $fp, -192
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
	li $t0, 32587
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	sw $t0, -1644($fp)
	li $t0, 27594
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	sw $t0, -1656($fp)
	li $t0, 17285
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	sw $t0, -1668($fp)
	li $t0, 16917
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	sw $t0, -1680($fp)
	li $t0, 28368
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	sw $t0, -1692($fp)
	li $t0, 62242
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	sw $t0, -1704($fp)
	li $t0, 47002
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
	li $t0, 40473
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
	li $t0, 21342
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	sw $t0, -1764($fp)
	li $t0, 18536
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -1776($fp)
	li $t0, 19271
	sw $t0, -1780($fp)
	addi $t0, $fp, -216
	sw $t0, -1784($fp)
	li $t0, 0
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1792($fp)
	lw $t0, -1784($fp)
	lw $t1, -1792($fp)
	add $t0, $t0, $t1
	sw $t0, -1796($fp)
	lw $t0, -1780($fp)
	lw $t1, -1796($fp)
	sw $t0, 0($t1)
	lw $t0, -1796($fp)
	lw $t1, 0($t0)
	sw $t1, -1800($fp)
	li $t0, 27927
	sw $t0, -1804($fp)
	addi $t0, $fp, -216
	sw $t0, -1808($fp)
	li $t0, 1
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
	li $t0, 25538
	sw $t0, -1828($fp)
	addi $t0, $fp, -216
	sw $t0, -1832($fp)
	li $t0, 2
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
	li $t0, 53702
	sw $t0, -1852($fp)
	addi $t0, $fp, -216
	sw $t0, -1856($fp)
	li $t0, 3
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
	li $t0, 19305
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	sw $t0, -1884($fp)
	li $t0, 44338
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	sw $t0, -1896($fp)
label644:
	addi $t0, $fp, -164
	sw $t0, -1900($fp)
	addi $t0, $fp, -60
	sw $t0, -1904($fp)
	lw $t0, -1460($fp)
	sw $t0, -1908($fp)
	li $t0, 4
	lw $t1, -1908($fp)
	mul $t0, $t0, $t1
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	lw $t1, -1904($fp)
	add $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	lw $t1, 0($t0)
	sw $t1, -1920($fp)
	li $t0, 0
	sw $t0, -1924($fp)
	addi $t0, $fp, -216
	sw $t0, -1928($fp)
	li $t0, 1
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
	li $t0, 63523
	sw $t0, -1948($fp)
	lw $t1, -1944($fp)
	lw $t2, -1948($fp)
	blt $t1, $t2, label647
	j label648
label647:
	li $t0, 1
	sw $t0, -1924($fp)
label648:
	li $t0, 45782
	sw $t0, -1952($fp)
	li $t0, 2360
	sw $t0, -1956($fp)
	lw $t0, -1952($fp)
	lw $t1, -1956($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1960($fp)
	li $t0, 0
	lw $t1, -1960($fp)
	sub $t0, $t0, $t1
	sw $t0, -1964($fp)
	li $t0, 0
	sw $t0, -1968($fp)
	li $t0, 15382
	sw $t0, -1972($fp)
	li $t0, 64782
	sw $t0, -1976($fp)
	lw $t0, -1972($fp)
	lw $t1, -1976($fp)
	sub $t0, $t0, $t1
	sw $t0, -1980($fp)
	li $t0, 61382
	sw $t0, -1984($fp)
	lw $t1, -1980($fp)
	lw $t2, -1984($fp)
	ble $t1, $t2, label649
	j label650
label649:
	li $t0, 1
	sw $t0, -1968($fp)
label650:
	li $t0, 0
	sw $t0, -1988($fp)
	lw $t0, -236($fp)
	sw $t0, -1992($fp)
	lw $t0, -776($fp)
	sw $t0, -1996($fp)
	lw $t0, -1992($fp)
	lw $t1, -1996($fp)
	mul $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $t0, 4($fp)
	sw $t0, -2004($fp)
	lw $t1, -2000($fp)
	lw $t2, -2004($fp)
	bne $t1, $t2, label651
	j label652
label651:
	li $t0, 1
	sw $t0, -1988($fp)
label652:
	li $t0, 0
	sw $t0, -2008($fp)
	li $t0, 18244
	sw $t0, -2012($fp)
	lw $t1, -2012($fp)
	li $t2, 0
	bne $t1, $t2, label654
	j label653
label653:
	li $t0, 1
	sw $t0, -2008($fp)
label654:
	addi $t0, $fp, -60
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
	addi $sp, $sp, -4
	lw $t0, -1968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2032($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2036($fp)
	addi $sp, $sp, 20
	li $t0, 46240
	sw $t0, -2040($fp)
	lw $t0, -2036($fp)
	lw $t1, -2040($fp)
	mul $t0, $t0, $t1
	sw $t0, -2044($fp)
	li $t0, 0
	sw $t0, -2048($fp)
	li $t0, 29887
	sw $t0, -2052($fp)
	lw $t1, -2052($fp)
	li $t2, 0
	bne $t1, $t2, label655
	j label657
label657:
	lw $t0, -236($fp)
	sw $t0, -2056($fp)
	lw $t1, -2056($fp)
	li $t2, 0
	bne $t1, $t2, label655
	j label656
label655:
	li $t0, 1
	sw $t0, -2048($fp)
label656:
	addi $t0, $fp, -192
	sw $t0, -2060($fp)
	lw $t0, -1652($fp)
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
	addi $t0, $fp, -76
	sw $t0, -2080($fp)
	lw $t0, -224($fp)
	sw $t0, -2084($fp)
	li $t0, 4
	lw $t1, -2084($fp)
	mul $t0, $t0, $t1
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	lw $t1, -2080($fp)
	add $t0, $t0, $t1
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	lw $t1, 0($t0)
	sw $t1, -2096($fp)
	addi $sp, $sp, -4
	lw $t0, -2044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2096($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2100($fp)
	addi $sp, $sp, 20
	li $t0, 45359
	sw $t0, -2104($fp)
	lw $t0, -2100($fp)
	lw $t1, -2104($fp)
	add $t0, $t0, $t1
	sw $t0, -2108($fp)
	li $t0, 28859
	sw $t0, -2112($fp)
	addi $sp, $sp, -4
	lw $t0, -1920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2112($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2116($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -2116($fp)
	sub $t0, $t0, $t1
	sw $t0, -2120($fp)
	li $t0, 4
	lw $t1, -2120($fp)
	mul $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t0, -2124($fp)
	lw $t1, -1900($fp)
	add $t0, $t0, $t1
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	lw $t1, 0($t0)
	sw $t1, -2132($fp)
	lw $t0, -536($fp)
	sw $t0, -2136($fp)
	li $t0, 4558
	sw $t0, -2140($fp)
	lw $t0, -2136($fp)
	lw $t1, -2140($fp)
	mul $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t1, -2132($fp)
	lw $t2, -2144($fp)
	blt $t1, $t2, label645
	j label646
label645:
	lw $t0, -908($fp)
	sw $t0, -2148($fp)
	addi $t0, $fp, -112
	sw $t0, -2152($fp)
	lw $t0, -1460($fp)
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
	lw $t0, -2148($fp)
	lw $t1, -2168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2172($fp)
	lw $t0, -2172($fp)
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	sw $t0, -2176($fp)
	lw $t1, -2176($fp)
	li $t2, 0
	bne $t1, $t2, label658
	j label659
label658:
label661:
	lw $t0, 12($fp)
	sw $t0, -2180($fp)
	lw $t1, -2180($fp)
	li $t2, 0
	bne $t1, $t2, label662
	j label663
label662:
	li $t0, 36567
	sw $t0, -2196($fp)
	addi $t0, $fp, -2192
	sw $t0, -2200($fp)
	li $t0, 0
	sw $t0, -2204($fp)
	lw $t0, -2204($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2208($fp)
	lw $t0, -2200($fp)
	lw $t1, -2208($fp)
	add $t0, $t0, $t1
	sw $t0, -2212($fp)
	lw $t0, -2196($fp)
	lw $t1, -2212($fp)
	sw $t0, 0($t1)
	lw $t0, -2212($fp)
	lw $t1, 0($t0)
	sw $t1, -2216($fp)
	li $t0, 15273
	sw $t0, -2220($fp)
	addi $t0, $fp, -2192
	sw $t0, -2224($fp)
	li $t0, 1
	sw $t0, -2228($fp)
	lw $t0, -2228($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2232($fp)
	lw $t0, -2224($fp)
	lw $t1, -2232($fp)
	add $t0, $t0, $t1
	sw $t0, -2236($fp)
	lw $t0, -2220($fp)
	lw $t1, -2236($fp)
	sw $t0, 0($t1)
	lw $t0, -2236($fp)
	lw $t1, 0($t0)
	sw $t1, -2240($fp)
	li $t0, 21475
	sw $t0, -2244($fp)
	addi $t0, $fp, -2192
	sw $t0, -2248($fp)
	li $t0, 2
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2256($fp)
	lw $t0, -2248($fp)
	lw $t1, -2256($fp)
	add $t0, $t0, $t1
	sw $t0, -2260($fp)
	lw $t0, -2244($fp)
	lw $t1, -2260($fp)
	sw $t0, 0($t1)
	lw $t0, -2260($fp)
	lw $t1, 0($t0)
	sw $t1, -2264($fp)
	li $t0, 64936
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	sw $t0, -2272($fp)
	lw $t0, -2272($fp)
	sw $t0, -2276($fp)
	li $t0, 11979
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	sw $t0, -2288($fp)
	li $t0, 2941
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	sw $t0, -2300($fp)
	li $t0, 39873
	sw $t0, -2304($fp)
	lw $t0, -2304($fp)
	sw $t0, -2308($fp)
	lw $t0, -2308($fp)
	sw $t0, -2312($fp)
	li $t0, 33322
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	sw $t0, -2320($fp)
	lw $t0, -2320($fp)
	sw $t0, -2324($fp)
	li $t0, 21477
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	sw $t0, -2336($fp)
	addi $t0, $fp, -216
	sw $t0, -2340($fp)
	li $t0, 0
	sw $t0, -2344($fp)
	li $t0, 59144
	sw $t0, -2348($fp)
	lw $t0, -1880($fp)
	sw $t0, -2352($fp)
	lw $t1, -2348($fp)
	lw $t2, -2352($fp)
	bne $t1, $t2, label664
	j label665
label664:
	li $t0, 1
	sw $t0, -2344($fp)
label665:
	li $t0, 4
	lw $t1, -2344($fp)
	mul $t0, $t0, $t1
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	lw $t1, -2340($fp)
	add $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	lw $t1, 0($t0)
	sw $t1, -2364($fp)
	li $t0, 0
	sw $t0, -2368($fp)
	li $t0, 61249
	sw $t0, -2372($fp)
	lw $t1, -2372($fp)
	li $t2, 0
	bne $t1, $t2, label667
	j label666
label666:
	li $t0, 1
	sw $t0, -2368($fp)
label667:
	lw $t0, -2364($fp)
	lw $t1, -2368($fp)
	sub $t0, $t0, $t1
	sw $t0, -2376($fp)
	li $t0, 0
	sw $t0, -2380($fp)
	lw $t0, -236($fp)
	sw $t0, -2384($fp)
	li $t0, 0
	sw $t0, -2388($fp)
	li $t0, 47015
	sw $t0, -2392($fp)
	lw $t1, -2392($fp)
	li $t2, 0
	bne $t1, $t2, label672
	j label671
label671:
	li $t0, 1
	sw $t0, -2388($fp)
label672:
	lw $t0, -236($fp)
	sw $t0, -2396($fp)
	lw $t0, -2388($fp)
	lw $t1, -2396($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2400($fp)
	lw $t1, -2384($fp)
	lw $t2, -2400($fp)
	beq $t1, $t2, label670
	j label669
label670:
	li $t0, 0
	sw $t0, -2404($fp)
	li $t0, 0
	sw $t0, -2408($fp)
	li $t0, 10633
	sw $t0, -2412($fp)
	lw $t0, -908($fp)
	sw $t0, -2416($fp)
	lw $t0, -2412($fp)
	lw $t1, -2416($fp)
	add $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t1, -2420($fp)
	li $t2, 0
	bne $t1, $t2, label675
	j label677
label677:
	li $t0, 44906
	sw $t0, -2424($fp)
	lw $t1, -2424($fp)
	li $t2, 0
	bne $t1, $t2, label675
	j label676
label675:
	li $t0, 1
	sw $t0, -2408($fp)
label676:
	li $t0, 15019
	sw $t0, -2428($fp)
	lw $t0, -572($fp)
	sw $t0, -2432($fp)
	lw $t0, -2428($fp)
	lw $t1, -2432($fp)
	sub $t0, $t0, $t1
	sw $t0, -2436($fp)
	li $t0, 25818
	sw $t0, -2440($fp)
	lw $t0, -2436($fp)
	lw $t1, -2440($fp)
	sub $t0, $t0, $t1
	sw $t0, -2444($fp)
	addi $t0, $fp, -76
	sw $t0, -2448($fp)
	lw $t0, -2272($fp)
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
	li $t0, 47310
	sw $t0, -2468($fp)
	lw $t0, -2464($fp)
	lw $t1, -2468($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2472($fp)
	addi $sp, $sp, -4
	lw $t0, -2408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2472($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2476($fp)
	addi $sp, $sp, 16
	lw $t0, -2272($fp)
	sw $t0, -2480($fp)
	lw $t1, -2476($fp)
	lw $t2, -2480($fp)
	ble $t1, $t2, label673
	j label674
label673:
	li $t0, 1
	sw $t0, -2404($fp)
label674:
	li $t0, 8149
	sw $t0, -2484($fp)
	li $t0, 34439
	sw $t0, -2488($fp)
	lw $t0, -2484($fp)
	lw $t1, -2488($fp)
	add $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $t1, -2404($fp)
	lw $t2, -2492($fp)
	blt $t1, $t2, label668
	j label669
label668:
	li $t0, 1
	sw $t0, -2380($fp)
label669:
	li $t0, 0
	sw $t0, -2496($fp)
	li $t0, 0
	sw $t0, -2500($fp)
	li $t0, 0
	sw $t0, -2504($fp)
	li $t0, 58997
	sw $t0, -2508($fp)
	lw $t0, 16($fp)
	sw $t0, -2512($fp)
	lw $t1, -2508($fp)
	lw $t2, -2512($fp)
	blt $t1, $t2, label682
	j label683
label682:
	li $t0, 1
	sw $t0, -2504($fp)
label683:
	li $t0, 4235
	sw $t0, -2516($fp)
	lw $t1, -2504($fp)
	lw $t2, -2516($fp)
	blt $t1, $t2, label680
	j label681
label680:
	li $t0, 1
	sw $t0, -2500($fp)
label681:
	lw $t0, -2320($fp)
	sw $t0, -2520($fp)
	lw $t0, -2332($fp)
	sw $t0, -2524($fp)
	lw $t0, -2520($fp)
	lw $t1, -2524($fp)
	sub $t0, $t0, $t1
	sw $t0, -2528($fp)
	lw $t0, -248($fp)
	sw $t0, -2532($fp)
	lw $t0, -2528($fp)
	lw $t1, -2532($fp)
	add $t0, $t0, $t1
	sw $t0, -2536($fp)
	li $t0, 33686
	sw $t0, -2540($fp)
	li $t0, 0
	lw $t1, -2540($fp)
	sub $t0, $t0, $t1
	sw $t0, -2544($fp)
	li $t0, 0
	lw $t1, -2544($fp)
	sub $t0, $t0, $t1
	sw $t0, -2548($fp)
	li $t0, 0
	sw $t0, -2552($fp)
	lw $t0, -260($fp)
	sw $t0, -2556($fp)
	lw $t0, -236($fp)
	sw $t0, -2560($fp)
	lw $t1, -2556($fp)
	lw $t2, -2560($fp)
	bgt $t1, $t2, label684
	j label685
label684:
	li $t0, 1
	sw $t0, -2552($fp)
label685:
	li $t0, 0
	sw $t0, -2564($fp)
	li $t0, 63151
	sw $t0, -2568($fp)
	li $t0, 23531
	sw $t0, -2572($fp)
	lw $t0, -2568($fp)
	lw $t1, -2572($fp)
	add $t0, $t0, $t1
	sw $t0, -2576($fp)
	lw $t1, -2576($fp)
	li $t2, 0
	bne $t1, $t2, label688
	j label687
label688:
	lw $t0, -560($fp)
	sw $t0, -2580($fp)
	lw $t1, -2580($fp)
	li $t2, 0
	bne $t1, $t2, label686
	j label687
label686:
	li $t0, 1
	sw $t0, -2564($fp)
label687:
	addi $sp, $sp, -4
	lw $t0, -2500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2564($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2584($fp)
	addi $sp, $sp, 24
	lw $t1, -2584($fp)
	li $t2, 0
	bne $t1, $t2, label679
	j label678
label678:
	li $t0, 1
	sw $t0, -2496($fp)
label679:
	addi $t0, $fp, -2192
	sw $t0, -2588($fp)
	li $t0, 0
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
	addi $t0, $fp, -2192
	sw $t0, -2608($fp)
	li $t0, 1
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
	addi $t0, $fp, -2192
	sw $t0, -2628($fp)
	li $t0, 2
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
	lw $t0, -2272($fp)
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2284($fp)
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2296($fp)
	sw $t0, -2656($fp)
	lw $t0, -2656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2308($fp)
	sw $t0, -2660($fp)
	lw $t0, -2660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2320($fp)
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2668($fp)
	li $t0, 13509
	sw $t0, -2672($fp)
	lw $t0, -272($fp)
	sw $t0, -2676($fp)
	lw $t0, -2672($fp)
	lw $t1, -2676($fp)
	mul $t0, $t0, $t1
	sw $t0, -2680($fp)
	li $t0, 39243
	sw $t0, -2684($fp)
	lw $t0, -2680($fp)
	lw $t1, -2684($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2688($fp)
	li $t0, 6596
	sw $t0, -2692($fp)
	lw $t0, -2688($fp)
	lw $t1, -2692($fp)
	add $t0, $t0, $t1
	sw $t0, -2696($fp)
	lw $t1, -2696($fp)
	li $t2, 0
	bne $t1, $t2, label691
	j label690
label691:
	lw $t0, -560($fp)
	sw $t0, -2700($fp)
	li $t0, 51016
	sw $t0, -2704($fp)
	li $t0, 0
	lw $t1, -2704($fp)
	sub $t0, $t0, $t1
	sw $t0, -2708($fp)
	lw $t0, -2700($fp)
	lw $t1, -2708($fp)
	mul $t0, $t0, $t1
	sw $t0, -2712($fp)
	lw $t1, -2712($fp)
	li $t2, 0
	bne $t1, $t2, label689
	j label690
label689:
	li $t0, 1
	sw $t0, -2668($fp)
label690:
	lw $ra, -4($fp)
	lw $v0, -2668($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -164
	sw $t0, -2716($fp)
	li $t0, 9
	sw $t0, -2720($fp)
	li $t0, 4
	lw $t1, -2720($fp)
	mul $t0, $t0, $t1
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	lw $t1, -2716($fp)
	add $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	lw $t1, 0($t0)
	sw $t1, -2732($fp)
	lw $t0, -584($fp)
	sw $t0, -2736($fp)
	lw $t0, -2732($fp)
	lw $t1, -2736($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2740($fp)
	lw $t0, -248($fp)
	sw $t0, -2744($fp)
	li $t0, 0
	lw $t1, -2744($fp)
	sub $t0, $t0, $t1
	sw $t0, -2748($fp)
	lw $t0, -2740($fp)
	lw $t1, -2748($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2752($fp)
	addi $t0, $fp, -192
	sw $t0, -2756($fp)
	li $t0, 1
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
	li $t0, 0
	lw $t1, -2772($fp)
	sub $t0, $t0, $t1
	sw $t0, -2776($fp)
	lw $t1, -2752($fp)
	lw $t2, -2776($fp)
	bne $t1, $t2, label692
	j label695
label695:
	lw $t0, -1700($fp)
	sw $t0, -2780($fp)
	lw $t1, -2780($fp)
	li $t2, 0
	bne $t1, $t2, label692
	j label693
label692:
	li $t0, 0
	sw $t0, -2784($fp)
	li $t0, 19856
	sw $t0, -2788($fp)
	li $t0, 11513
	sw $t0, -2792($fp)
	addi $t0, $fp, -124
	sw $t0, -2796($fp)
	lw $t0, -2320($fp)
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
	lw $t0, -2792($fp)
	lw $t1, -2812($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2816($fp)
	li $t0, 0
	lw $t1, -2816($fp)
	sub $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $t0, -2788($fp)
	lw $t1, -2820($fp)
	mul $t0, $t0, $t1
	sw $t0, -2824($fp)
	li $t0, 18648
	sw $t0, -2828($fp)
	lw $t0, -1688($fp)
	sw $t0, -2832($fp)
	lw $t0, -2828($fp)
	lw $t1, -2832($fp)
	mul $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t1, -2824($fp)
	lw $t2, -2836($fp)
	beq $t1, $t2, label696
	j label697
label696:
	li $t0, 1
	sw $t0, -2784($fp)
label697:
	lw $ra, -4($fp)
	lw $v0, -2784($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label694
label693:
	li $t0, 0
	sw $t0, -2840($fp)
	lw $t0, -1460($fp)
	sw $t0, -2844($fp)
	lw $t1, -2844($fp)
	li $t2, 0
	bne $t1, $t2, label702
	j label701
label701:
	li $t0, 1
	sw $t0, -2840($fp)
label702:
	li $t0, 0
	lw $t1, -2840($fp)
	sub $t0, $t0, $t1
	sw $t0, -2848($fp)
	lw $t1, -2848($fp)
	li $t2, 0
	bne $t1, $t2, label698
	j label699
label698:
	li $t0, 0
	sw $t0, -2852($fp)
	li $t0, 0
	sw $t0, -2856($fp)
	addi $t0, $fp, -2192
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
	li $t0, 0
	sw $t0, -2880($fp)
	lw $t0, -1892($fp)
	sw $t0, -2884($fp)
	li $t0, 31836
	sw $t0, -2888($fp)
	lw $t0, -2884($fp)
	lw $t1, -2888($fp)
	mul $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t0, -1880($fp)
	sw $t0, -2896($fp)
	lw $t1, -2892($fp)
	lw $t2, -2896($fp)
	beq $t1, $t2, label708
	j label709
label708:
	li $t0, 1
	sw $t0, -2880($fp)
label709:
	addi $t0, $fp, -60
	sw $t0, -2900($fp)
	lw $t0, -2272($fp)
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
	lw $t0, -284($fp)
	sw $t0, -2920($fp)
	lw $t0, -2916($fp)
	lw $t1, -2920($fp)
	mul $t0, $t0, $t1
	sw $t0, -2924($fp)
	addi $sp, $sp, -4
	lw $t0, -2876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2924($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2928($fp)
	addi $sp, $sp, 16
	lw $t1, -2928($fp)
	li $t2, 0
	bne $t1, $t2, label706
	j label707
label706:
	li $t0, 1
	sw $t0, -2856($fp)
label707:
	li $t0, 65158
	sw $t0, -2932($fp)
	lw $t1, -2856($fp)
	lw $t2, -2932($fp)
	bne $t1, $t2, label703
	j label705
label705:
	li $t0, 35931
	sw $t0, -2936($fp)
	lw $t1, -2936($fp)
	li $t2, 0
	bne $t1, $t2, label703
	j label704
label703:
	li $t0, 1
	sw $t0, -2852($fp)
label704:
	j label700
label699:
	li $t0, 0
	sw $t0, -2940($fp)
	li $t0, 0
	sw $t0, -2944($fp)
	li $t0, 43229
	sw $t0, -2948($fp)
	lw $t0, -776($fp)
	sw $t0, -2952($fp)
	lw $t1, -2948($fp)
	lw $t2, -2952($fp)
	bne $t1, $t2, label712
	j label713
label712:
	li $t0, 1
	sw $t0, -2944($fp)
label713:
	lw $t0, -908($fp)
	sw $t0, -2956($fp)
	lw $t1, -2944($fp)
	lw $t2, -2956($fp)
	beq $t1, $t2, label710
	j label711
label710:
	li $t0, 1
	sw $t0, -2940($fp)
label711:
	li $t0, 0
	sw $t0, -2960($fp)
	li $t0, 0
	sw $t0, -2964($fp)
	lw $t0, -2284($fp)
	sw $t0, -2968($fp)
	li $t0, 10354
	sw $t0, -2972($fp)
	lw $t1, -2968($fp)
	lw $t2, -2972($fp)
	bgt $t1, $t2, label716
	j label717
label716:
	li $t0, 1
	sw $t0, -2964($fp)
label717:
	lw $t0, -2296($fp)
	sw $t0, -2976($fp)
	lw $t1, -2964($fp)
	lw $t2, -2976($fp)
	beq $t1, $t2, label714
	j label715
label714:
	li $t0, 1
	sw $t0, -2960($fp)
label715:
	li $t0, 17411
	sw $t0, -2980($fp)
	lw $t0, -1136($fp)
	sw $t0, -2984($fp)
	lw $t0, -2980($fp)
	lw $t1, -2984($fp)
	mul $t0, $t0, $t1
	sw $t0, -2988($fp)
	li $t0, 33904
	sw $t0, -2992($fp)
	lw $t0, -2988($fp)
	lw $t1, -2992($fp)
	mul $t0, $t0, $t1
	sw $t0, -2996($fp)
	lw $t0, -248($fp)
	sw $t0, -3000($fp)
	li $t0, 60871
	sw $t0, -3004($fp)
	lw $t0, -3000($fp)
	lw $t1, -3004($fp)
	sub $t0, $t0, $t1
	sw $t0, -3008($fp)
	li $t0, 0
	sw $t0, -3012($fp)
	li $t0, 52129
	sw $t0, -3016($fp)
	lw $t0, -536($fp)
	sw $t0, -3020($fp)
	lw $t1, -3016($fp)
	lw $t2, -3020($fp)
	bgt $t1, $t2, label718
	j label719
label718:
	li $t0, 1
	sw $t0, -3012($fp)
label719:
	addi $sp, $sp, -4
	lw $t0, -2940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3012($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3024($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -3024($fp)
	sub $t0, $t0, $t1
	sw $t0, -3028($fp)
	li $t0, 0
	lw $t1, -3028($fp)
	sub $t0, $t0, $t1
	sw $t0, -3032($fp)
label700:
label694:
label720:
	lw $t0, -752($fp)
	sw $t0, -3036($fp)
	addi $t0, $fp, -76
	sw $t0, -3040($fp)
	lw $t0, -884($fp)
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
	lw $t0, -3036($fp)
	lw $t1, -3056($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3060($fp)
	lw $t1, -3060($fp)
	li $t2, 0
	bne $t1, $t2, label721
	j label723
label723:
	li $t0, 44537
	sw $t0, -3064($fp)
	li $t0, 0
	lw $t1, -3064($fp)
	sub $t0, $t0, $t1
	sw $t0, -3068($fp)
	li $t0, 55261
	sw $t0, -3072($fp)
	lw $t0, -2308($fp)
	sw $t0, -3076($fp)
	lw $t0, -3072($fp)
	lw $t1, -3076($fp)
	mul $t0, $t0, $t1
	sw $t0, -3080($fp)
	lw $t1, -3068($fp)
	lw $t2, -3080($fp)
	beq $t1, $t2, label721
	j label722
label721:
	li $t0, 0
	sw $t0, -3084($fp)
	li $t0, 51378
	sw $t0, -3088($fp)
	li $t0, 0
	sw $t0, -3092($fp)
	lw $t0, -896($fp)
	sw $t0, -3096($fp)
	lw $t1, -3096($fp)
	li $t2, 0
	bne $t1, $t2, label727
	j label726
label726:
	li $t0, 1
	sw $t0, -3092($fp)
label727:
	lw $t0, -3088($fp)
	lw $t1, -3092($fp)
	sub $t0, $t0, $t1
	sw $t0, -3100($fp)
	li $t0, 0
	sw $t0, -3104($fp)
	lw $t0, -584($fp)
	sw $t0, -3108($fp)
	li $t0, 46337
	sw $t0, -3112($fp)
	lw $t1, -3108($fp)
	lw $t2, -3112($fp)
	bge $t1, $t2, label730
	j label729
label730:
	li $t0, 13609
	sw $t0, -3116($fp)
	lw $t1, -3116($fp)
	li $t2, 0
	bne $t1, $t2, label728
	j label729
label728:
	li $t0, 1
	sw $t0, -3104($fp)
label729:
	li $t0, 0
	sw $t0, -3120($fp)
	addi $t0, $fp, -2192
	sw $t0, -3124($fp)
	li $t0, 2
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
	lw $t1, -3140($fp)
	li $t2, 0
	bne $t1, $t2, label733
	j label732
label733:
	li $t0, 47127
	sw $t0, -3144($fp)
	lw $t1, -3144($fp)
	li $t2, 0
	bne $t1, $t2, label731
	j label732
label731:
	li $t0, 1
	sw $t0, -3120($fp)
label732:
	lw $t0, -2272($fp)
	sw $t0, -3148($fp)
	lw $t0, -560($fp)
	sw $t0, -3152($fp)
	lw $t0, -3148($fp)
	lw $t1, -3152($fp)
	sub $t0, $t0, $t1
	sw $t0, -3156($fp)
	lw $t0, -572($fp)
	sw $t0, -3160($fp)
	lw $t0, -3156($fp)
	lw $t1, -3160($fp)
	sub $t0, $t0, $t1
	sw $t0, -3164($fp)
	li $t0, 0
	sw $t0, -3168($fp)
	lw $t0, -224($fp)
	sw $t0, -3172($fp)
	li $t0, 13441
	sw $t0, -3176($fp)
	lw $t0, -3172($fp)
	lw $t1, -3176($fp)
	add $t0, $t0, $t1
	sw $t0, -3180($fp)
	lw $t0, -1772($fp)
	sw $t0, -3184($fp)
	lw $t1, -3180($fp)
	lw $t2, -3184($fp)
	ble $t1, $t2, label734
	j label735
label734:
	li $t0, 1
	sw $t0, -3168($fp)
label735:
	addi $sp, $sp, -4
	lw $t0, -3104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3168($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3188($fp)
	addi $sp, $sp, 20
	lw $t0, -3100($fp)
	lw $t1, -3188($fp)
	sub $t0, $t0, $t1
	sw $t0, -3192($fp)
	lw $t0, -1136($fp)
	sw $t0, -3196($fp)
	lw $t1, -3192($fp)
	lw $t2, -3196($fp)
	blt $t1, $t2, label724
	j label725
label724:
	li $t0, 1
	sw $t0, -3084($fp)
label725:
	lw $ra, -4($fp)
	lw $v0, -3084($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label720
label722:
	li $t0, 60636
	sw $t0, -3212($fp)
	addi $t0, $fp, -3208
	sw $t0, -3216($fp)
	li $t0, 0
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
	li $t0, 20044
	sw $t0, -3236($fp)
	addi $t0, $fp, -3208
	sw $t0, -3240($fp)
	li $t0, 1
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
	li $t0, 20205
	sw $t0, -3260($fp)
	addi $t0, $fp, -3208
	sw $t0, -3264($fp)
	li $t0, 2
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
	addi $t0, $fp, -60
	sw $t0, -3284($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -3304($fp)
	li $t0, 24789
	sw $t0, -3308($fp)
	lw $t1, -3308($fp)
	li $t2, 0
	bne $t1, $t2, label739
	j label737
label739:
	li $t0, 36155
	sw $t0, -3312($fp)
	lw $t1, -3312($fp)
	li $t2, 0
	bne $t1, $t2, label738
	j label737
label738:
	li $t0, 21972
	sw $t0, -3316($fp)
	lw $t1, -3316($fp)
	li $t2, 0
	bne $t1, $t2, label736
	j label737
label736:
	li $t0, 1
	sw $t0, -3304($fp)
label737:
	li $t0, 0
	sw $t0, -3320($fp)
	lw $t0, -1700($fp)
	sw $t0, -3324($fp)
	li $t0, 46117
	sw $t0, -3328($fp)
	lw $t0, -3324($fp)
	lw $t1, -3328($fp)
	sub $t0, $t0, $t1
	sw $t0, -3332($fp)
	lw $t1, -3332($fp)
	li $t2, 0
	bne $t1, $t2, label740
	j label742
label742:
	li $t0, 2724
	sw $t0, -3336($fp)
	lw $t1, -3336($fp)
	li $t2, 0
	bne $t1, $t2, label740
	j label741
label740:
	li $t0, 1
	sw $t0, -3320($fp)
label741:
	lw $t0, -572($fp)
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	sw $t0, -3344($fp)
	li $t0, 0
	sw $t0, -3348($fp)
	lw $t0, -272($fp)
	sw $t0, -3352($fp)
	lw $t1, -3352($fp)
	li $t2, 0
	bne $t1, $t2, label743
	j label744
label743:
	li $t0, 1
	sw $t0, -3348($fp)
label744:
	addi $sp, $sp, -4
	lw $t0, -3300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3348($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3356($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -3208
	sw $t0, -3360($fp)
	addi $t0, $fp, -200
	sw $t0, -3364($fp)
	lw $t0, -1880($fp)
	sw $t0, -3368($fp)
	li $t0, 0
	lw $t1, -3368($fp)
	sub $t0, $t0, $t1
	sw $t0, -3372($fp)
	li $t0, 4
	lw $t1, -3372($fp)
	mul $t0, $t0, $t1
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	lw $t1, -3364($fp)
	add $t0, $t0, $t1
	sw $t0, -3380($fp)
	lw $t0, -3380($fp)
	lw $t1, 0($t0)
	sw $t1, -3384($fp)
	li $t0, 4
	lw $t1, -3384($fp)
	mul $t0, $t0, $t1
	sw $t0, -3388($fp)
	lw $t0, -3388($fp)
	lw $t1, -3360($fp)
	add $t0, $t0, $t1
	sw $t0, -3392($fp)
	lw $t0, -3392($fp)
	lw $t1, 0($t0)
	sw $t1, -3396($fp)
	li $t0, 0
	sw $t0, -3400($fp)
	li $t0, 40620
	sw $t0, -3404($fp)
	li $t0, 10945
	sw $t0, -3408($fp)
	lw $t0, -3404($fp)
	lw $t1, -3408($fp)
	add $t0, $t0, $t1
	sw $t0, -3412($fp)
	li $t0, 62123
	sw $t0, -3416($fp)
	lw $t1, -3412($fp)
	lw $t2, -3416($fp)
	bne $t1, $t2, label745
	j label746
label745:
	li $t0, 1
	sw $t0, -3400($fp)
label746:
	lw $t0, -3400($fp)
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	sw $t0, -3420($fp)
	j label661
label663:
	j label660
label659:
	li $t0, 10567
	sw $t0, -3424($fp)
	lw $t0, -3424($fp)
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -3428($fp)
	li $t0, 0
	sw $t0, -3432($fp)
	li $t0, 33605
	sw $t0, -3436($fp)
	lw $t0, -236($fp)
	sw $t0, -3440($fp)
	lw $t1, -3436($fp)
	lw $t2, -3440($fp)
	ble $t1, $t2, label750
	j label752
label752:
	lw $t0, -1760($fp)
	sw $t0, -3444($fp)
	lw $t1, -3444($fp)
	li $t2, 0
	bne $t1, $t2, label750
	j label751
label750:
	li $t0, 1
	sw $t0, -3432($fp)
label751:
	lw $t0, -548($fp)
	sw $t0, -3448($fp)
	li $t0, 0
	lw $t1, -3448($fp)
	sub $t0, $t0, $t1
	sw $t0, -3452($fp)
	li $t0, 0
	lw $t1, -3452($fp)
	sub $t0, $t0, $t1
	sw $t0, -3456($fp)
	addi $sp, $sp, -4
	lw $t0, -3428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3456($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3460($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -3464($fp)
	li $t0, 0
	sw $t0, -3468($fp)
	li $t0, 0
	sw $t0, -3472($fp)
	lw $t0, -1136($fp)
	sw $t0, -3476($fp)
	li $t0, 32519
	sw $t0, -3480($fp)
	lw $t1, -3476($fp)
	lw $t2, -3480($fp)
	ble $t1, $t2, label757
	j label758
label757:
	li $t0, 1
	sw $t0, -3472($fp)
label758:
	lw $t0, 4($fp)
	sw $t0, -3484($fp)
	lw $t1, -3472($fp)
	lw $t2, -3484($fp)
	ble $t1, $t2, label755
	j label756
label755:
	li $t0, 1
	sw $t0, -3468($fp)
label756:
	li $t0, 20199
	sw $t0, -3488($fp)
	lw $t1, -3468($fp)
	lw $t2, -3488($fp)
	blt $t1, $t2, label753
	j label754
label753:
	li $t0, 1
	sw $t0, -3464($fp)
label754:
	lw $t1, -3460($fp)
	lw $t2, -3464($fp)
	beq $t1, $t2, label747
	j label748
label747:
label759:
	li $t0, 0
	sw $t0, -3492($fp)
	lw $t0, -764($fp)
	sw $t0, -3496($fp)
	lw $t1, -3496($fp)
	li $t2, 0
	bne $t1, $t2, label764
	j label763
label763:
	li $t0, 1
	sw $t0, -3492($fp)
label764:
	li $t0, 5903
	sw $t0, -3500($fp)
	lw $t0, -3492($fp)
	lw $t1, -3500($fp)
	sub $t0, $t0, $t1
	sw $t0, -3504($fp)
	li $t0, 0
	sw $t0, -3508($fp)
	lw $t0, -1664($fp)
	sw $t0, -3512($fp)
	lw $t1, -3512($fp)
	li $t2, 0
	bne $t1, $t2, label766
	j label765
label765:
	li $t0, 1
	sw $t0, -3508($fp)
label766:
	lw $t0, -3504($fp)
	lw $t1, -3508($fp)
	sub $t0, $t0, $t1
	sw $t0, -3516($fp)
	lw $t0, -1676($fp)
	sw $t0, -3520($fp)
	lw $t1, -3516($fp)
	lw $t2, -3520($fp)
	bne $t1, $t2, label762
	j label761
label762:
	li $t0, 49930
	sw $t0, -3524($fp)
	addi $t0, $fp, -124
	sw $t0, -3528($fp)
	li $t0, 2
	sw $t0, -3532($fp)
	li $t0, 4
	lw $t1, -3532($fp)
	mul $t0, $t0, $t1
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	lw $t1, -3528($fp)
	add $t0, $t0, $t1
	sw $t0, -3540($fp)
	lw $t0, -3540($fp)
	lw $t1, 0($t0)
	sw $t1, -3544($fp)
	lw $t0, -3524($fp)
	lw $t1, -3544($fp)
	mul $t0, $t0, $t1
	sw $t0, -3548($fp)
	lw $t1, -3548($fp)
	li $t2, 0
	bne $t1, $t2, label760
	j label761
label760:
	li $t0, 27623
	sw $t0, -3552($fp)
	lw $t0, -3552($fp)
	sw $t0, -3556($fp)
	lw $t0, -3556($fp)
	sw $t0, -3560($fp)
	li $t0, 33104
	sw $t0, -3564($fp)
	lw $t0, -3564($fp)
	sw $t0, -3568($fp)
	lw $t0, -3568($fp)
	sw $t0, -3572($fp)
label767:
	li $t0, 0
	sw $t0, -3576($fp)
	li $t0, 22839
	sw $t0, -3580($fp)
	lw $t0, -1880($fp)
	sw $t0, -3584($fp)
	lw $t0, -3580($fp)
	lw $t1, -3584($fp)
	sub $t0, $t0, $t1
	sw $t0, -3588($fp)
	li $t0, 28136
	sw $t0, -3592($fp)
	lw $t1, -3588($fp)
	lw $t2, -3592($fp)
	beq $t1, $t2, label770
	j label771
label770:
	li $t0, 1
	sw $t0, -3576($fp)
label771:
	li $t0, 58858
	sw $t0, -3596($fp)
	addi $t0, $fp, -124
	sw $t0, -3600($fp)
	lw $t0, -3568($fp)
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
	lw $t0, -1880($fp)
	sw $t0, -3620($fp)
	lw $t0, -3616($fp)
	lw $t1, -3620($fp)
	sub $t0, $t0, $t1
	sw $t0, -3624($fp)
	li $t0, 46545
	sw $t0, -3628($fp)
	lw $t0, -3628($fp)
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -3632($fp)
	li $t0, 0
	sw $t0, -3636($fp)
	li $t0, 5982
	sw $t0, -3640($fp)
	lw $t0, -3556($fp)
	sw $t0, -3644($fp)
	lw $t0, -3640($fp)
	lw $t1, -3644($fp)
	mul $t0, $t0, $t1
	sw $t0, -3648($fp)
	li $t0, 13465
	sw $t0, -3652($fp)
	lw $t1, -3648($fp)
	lw $t2, -3652($fp)
	beq $t1, $t2, label772
	j label773
label772:
	li $t0, 1
	sw $t0, -3636($fp)
label773:
	addi $sp, $sp, -4
	lw $t0, -3576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3636($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3656($fp)
	addi $sp, $sp, 24
	lw $t1, -3656($fp)
	li $t2, 0
	bne $t1, $t2, label769
	j label768
label768:
	li $t0, 0
	sw $t0, -3660($fp)
	lw $t0, 20($fp)
	sw $t0, -3664($fp)
	lw $t1, -3664($fp)
	li $t2, 0
	bne $t1, $t2, label775
	j label774
label774:
	li $t0, 1
	sw $t0, -3660($fp)
label775:
	li $t0, 0
	sw $t0, -3668($fp)
	li $t0, 36449
	sw $t0, -3672($fp)
	lw $t1, -3672($fp)
	li $t2, 0
	bne $t1, $t2, label777
	j label776
label776:
	li $t0, 1
	sw $t0, -3668($fp)
label777:
	li $t0, 0
	sw $t0, -3676($fp)
	li $t0, 0
	sw $t0, -3680($fp)
	lw $t0, 16($fp)
	sw $t0, -3684($fp)
	li $t0, 39659
	sw $t0, -3688($fp)
	lw $t1, -3684($fp)
	lw $t2, -3688($fp)
	beq $t1, $t2, label780
	j label781
label780:
	li $t0, 1
	sw $t0, -3680($fp)
label781:
	lw $t0, -536($fp)
	sw $t0, -3692($fp)
	lw $t1, -3680($fp)
	lw $t2, -3692($fp)
	beq $t1, $t2, label778
	j label779
label778:
	li $t0, 1
	sw $t0, -3676($fp)
label779:
	addi $sp, $sp, -4
	lw $t0, -3660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3676($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3696($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -3700($fp)
	addi $t0, $fp, -76
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
	lw $t1, -3720($fp)
	li $t2, 0
	bne $t1, $t2, label783
	j label782
label782:
	li $t0, 1
	sw $t0, -3700($fp)
label783:
	lw $t0, -3696($fp)
	lw $t1, -3700($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3724($fp)
	j label767
label769:
label784:
	addi $t0, $fp, -76
	sw $t0, -3728($fp)
	li $t0, 0
	sw $t0, -3732($fp)
	li $t0, 4
	lw $t1, -3732($fp)
	mul $t0, $t0, $t1
	sw $t0, -3736($fp)
	lw $t0, -3736($fp)
	lw $t1, -3728($fp)
	add $t0, $t0, $t1
	sw $t0, -3740($fp)
	lw $t0, -3740($fp)
	lw $t1, 0($t0)
	sw $t1, -3744($fp)
	li $t0, 0
	sw $t0, -3748($fp)
	lw $t0, -548($fp)
	sw $t0, -3752($fp)
	li $t0, 56654
	sw $t0, -3756($fp)
	lw $t0, -3752($fp)
	lw $t1, -3756($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3760($fp)
	lw $t1, -3760($fp)
	li $t2, 0
	bne $t1, $t2, label789
	j label788
label789:
	lw $t0, -584($fp)
	sw $t0, -3764($fp)
	lw $t1, -3764($fp)
	li $t2, 0
	bne $t1, $t2, label787
	j label788
label787:
	li $t0, 1
	sw $t0, -3748($fp)
label788:
	li $t0, 0
	sw $t0, -3768($fp)
	lw $t0, -584($fp)
	sw $t0, -3772($fp)
	lw $t1, -3772($fp)
	li $t2, 0
	bne $t1, $t2, label790
	j label793
label793:
	lw $t0, -560($fp)
	sw $t0, -3776($fp)
	lw $t1, -3776($fp)
	li $t2, 0
	bne $t1, $t2, label790
	j label792
label792:
	lw $t0, -224($fp)
	sw $t0, -3780($fp)
	lw $t1, -3780($fp)
	li $t2, 0
	bne $t1, $t2, label790
	j label791
label790:
	li $t0, 1
	sw $t0, -3768($fp)
label791:
	lw $t0, 12($fp)
	sw $t0, -3784($fp)
	li $t0, 0
	lw $t1, -3784($fp)
	sub $t0, $t0, $t1
	sw $t0, -3788($fp)
	addi $sp, $sp, -4
	lw $t0, -3744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3788($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3792($fp)
	addi $sp, $sp, 20
	lw $t1, -3792($fp)
	li $t2, 0
	bne $t1, $t2, label785
	j label786
label785:
label794:
	addi $t0, $fp, -164
	sw $t0, -3796($fp)
	li $t0, 8
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
	lw $t1, -3812($fp)
	li $t2, 0
	bne $t1, $t2, label795
	j label796
label795:
	li $t0, 0
	sw $t0, -3816($fp)
	li $t0, 0
	sw $t0, -3820($fp)
	li $t0, 60553
	sw $t0, -3824($fp)
	lw $t1, -3824($fp)
	li $t2, 0
	bne $t1, $t2, label801
	j label800
label800:
	li $t0, 1
	sw $t0, -3820($fp)
label801:
	li $t0, 0
	lw $t1, -3820($fp)
	sub $t0, $t0, $t1
	sw $t0, -3828($fp)
	lw $t1, -3828($fp)
	li $t2, 0
	bne $t1, $t2, label798
	j label799
label799:
	addi $t0, $fp, -200
	sw $t0, -3832($fp)
	li $t0, 0
	sw $t0, -3836($fp)
	lw $t0, -1640($fp)
	sw $t0, -3840($fp)
	lw $t1, -3840($fp)
	li $t2, 0
	bne $t1, $t2, label803
	j label802
label802:
	li $t0, 1
	sw $t0, -3836($fp)
label803:
	li $t0, 4
	lw $t1, -3836($fp)
	mul $t0, $t0, $t1
	sw $t0, -3844($fp)
	lw $t0, -3844($fp)
	lw $t1, -3832($fp)
	add $t0, $t0, $t1
	sw $t0, -3848($fp)
	lw $t0, -3848($fp)
	lw $t1, 0($t0)
	sw $t1, -3852($fp)
	lw $t1, -3852($fp)
	li $t2, 0
	bne $t1, $t2, label797
	j label798
label797:
	li $t0, 1
	sw $t0, -3816($fp)
label798:
	j label794
label796:
	j label784
label786:
	li $t0, 22106
	sw $t0, -3856($fp)
label804:
	li $t0, 59485
	sw $t0, -3860($fp)
	addi $t0, $fp, -124
	sw $t0, -3864($fp)
	lw $t0, -1880($fp)
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
	lw $t0, -3860($fp)
	lw $t1, -3880($fp)
	mul $t0, $t0, $t1
	sw $t0, -3884($fp)
	addi $t0, $fp, -164
	sw $t0, -3888($fp)
	lw $t0, -908($fp)
	sw $t0, -3892($fp)
	li $t0, 4
	lw $t1, -3892($fp)
	mul $t0, $t0, $t1
	sw $t0, -3896($fp)
	lw $t0, -3896($fp)
	lw $t1, -3888($fp)
	add $t0, $t0, $t1
	sw $t0, -3900($fp)
	lw $t0, -3900($fp)
	lw $t1, 0($t0)
	sw $t1, -3904($fp)
	lw $t0, -3884($fp)
	lw $t1, -3904($fp)
	mul $t0, $t0, $t1
	sw $t0, -3908($fp)
	li $t0, 5962
	sw $t0, -3912($fp)
	lw $t0, -3908($fp)
	lw $t1, -3912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3916($fp)
	lw $t1, -3916($fp)
	li $t2, 0
	bne $t1, $t2, label805
	j label806
label805:
label807:
	li $t0, 18694
	sw $t0, -3920($fp)
	lw $t1, -3920($fp)
	li $t2, 0
	bne $t1, $t2, label808
	j label809
label808:
	addi $t0, $fp, -124
	sw $t0, -3924($fp)
	li $t0, 2
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
	j label807
label809:
	j label804
label806:
	j label759
label761:
	j label749
label748:
	li $t0, 51213
	sw $t0, -3944($fp)
	li $t0, 0
	lw $t1, -3944($fp)
	sub $t0, $t0, $t1
	sw $t0, -3948($fp)
	lw $t0, -3948($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -3952($fp)
	lw $ra, -4($fp)
	lw $v0, -3952($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label749:
label660:
	j label644
label646:
	li $t0, 47753
	sw $t0, -3956($fp)
	li $t0, 0
	lw $t1, -3956($fp)
	sub $t0, $t0, $t1
	sw $t0, -3960($fp)
	lw $t1, -3960($fp)
	li $t2, 0
	bne $t1, $t2, label810
	j label811
label810:
label813:
	li $t0, 0
	sw $t0, -3964($fp)
	addi $t0, $fp, -60
	sw $t0, -3968($fp)
	lw $t0, -296($fp)
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
	lw $t1, -3984($fp)
	li $t2, 0
	bne $t1, $t2, label818
	j label817
label817:
	li $t0, 1
	sw $t0, -3964($fp)
label818:
	lw $t0, -1880($fp)
	sw $t0, -3988($fp)
	lw $t0, -3964($fp)
	lw $t1, -3988($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3992($fp)
	lw $t1, -3992($fp)
	li $t2, 0
	bne $t1, $t2, label814
	j label816
label816:
	li $t0, 36272
	sw $t0, -3996($fp)
	lw $t0, -1880($fp)
	sw $t0, -4000($fp)
	lw $t0, -3996($fp)
	lw $t1, -4000($fp)
	mul $t0, $t0, $t1
	sw $t0, -4004($fp)
	li $t0, 0
	lw $t1, -4004($fp)
	sub $t0, $t0, $t1
	sw $t0, -4008($fp)
	li $t0, 12119
	sw $t0, -4012($fp)
	li $t0, 4912
	sw $t0, -4016($fp)
	lw $t0, -4012($fp)
	lw $t1, -4016($fp)
	add $t0, $t0, $t1
	sw $t0, -4020($fp)
	li $t0, 33999
	sw $t0, -4024($fp)
	li $t0, 13035
	sw $t0, -4028($fp)
	lw $t0, -4024($fp)
	lw $t1, -4028($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4032($fp)
	li $t0, 0
	sw $t0, -4036($fp)
	addi $t0, $fp, -36
	sw $t0, -4040($fp)
	li $t0, 3
	sw $t0, -4044($fp)
	li $t0, 4
	lw $t1, -4044($fp)
	mul $t0, $t0, $t1
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	lw $t1, -4040($fp)
	add $t0, $t0, $t1
	sw $t0, -4052($fp)
	lw $t0, -4052($fp)
	lw $t1, 0($t0)
	sw $t1, -4056($fp)
	lw $t0, 4($fp)
	sw $t0, -4060($fp)
	lw $t1, -4056($fp)
	lw $t2, -4060($fp)
	bgt $t1, $t2, label819
	j label820
label819:
	li $t0, 1
	sw $t0, -4036($fp)
label820:
	li $t0, 44673
	sw $t0, -4064($fp)
	li $t0, 11159
	sw $t0, -4068($fp)
	lw $t0, -4064($fp)
	lw $t1, -4068($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4072($fp)
	li $t0, 0
	sw $t0, -4076($fp)
	lw $t0, -320($fp)
	sw $t0, -4080($fp)
	lw $t1, -4080($fp)
	li $t2, 0
	bne $t1, $t2, label822
	j label821
label821:
	li $t0, 1
	sw $t0, -4076($fp)
label822:
	lw $t0, -896($fp)
	sw $t0, -4084($fp)
	lw $t0, -548($fp)
	sw $t0, -4088($fp)
	li $t0, 63230
	sw $t0, -4092($fp)
	lw $t0, -4088($fp)
	lw $t1, -4092($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4096($fp)
	li $t0, 3889
	sw $t0, -4100($fp)
	lw $t0, -4096($fp)
	lw $t1, -4100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4104($fp)
	lw $t0, -896($fp)
	sw $t0, -4108($fp)
	lw $t0, -4108($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -4112($fp)
	li $t0, 0
	sw $t0, -4116($fp)
	li $t0, 35607
	sw $t0, -4120($fp)
	li $t0, 36320
	sw $t0, -4124($fp)
	lw $t1, -4120($fp)
	lw $t2, -4124($fp)
	ble $t1, $t2, label825
	j label824
label825:
	li $t0, 38690
	sw $t0, -4128($fp)
	lw $t1, -4128($fp)
	li $t2, 0
	bne $t1, $t2, label823
	j label824
label823:
	li $t0, 1
	sw $t0, -4116($fp)
label824:
	addi $sp, $sp, -4
	lw $t0, -4076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4116($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4132($fp)
	addi $sp, $sp, 24
	li $t0, 22433
	sw $t0, -4136($fp)
	lw $t0, -4136($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -4140($fp)
	addi $sp, $sp, -4
	lw $t0, -4072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4140($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4144($fp)
	addi $sp, $sp, 16
	lw $t0, -260($fp)
	sw $t0, -4148($fp)
	lw $t0, -4144($fp)
	lw $t1, -4148($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4152($fp)
	addi $sp, $sp, -4
	lw $t0, -4008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4152($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4156($fp)
	addi $sp, $sp, 24
	lw $t1, -4156($fp)
	li $t2, 0
	bne $t1, $t2, label814
	j label815
label814:
	li $t0, 6286
	sw $t0, -4160($fp)
	lw $t0, -4160($fp)
	sw $t0, -4164($fp)
	lw $t0, -4164($fp)
	sw $t0, -4168($fp)
	li $t0, 61566
	sw $t0, -4172($fp)
	lw $t0, -4172($fp)
	sw $t0, -4176($fp)
	lw $t0, -4176($fp)
	sw $t0, -4180($fp)
	li $t0, 40090
	sw $t0, -4184($fp)
	lw $t0, -4184($fp)
	sw $t0, -4188($fp)
	lw $t0, -4188($fp)
	sw $t0, -4192($fp)
	li $t0, 3178
	sw $t0, -4196($fp)
	lw $t0, -4196($fp)
	sw $t0, -4200($fp)
	lw $t0, -4200($fp)
	sw $t0, -4204($fp)
	li $t0, 11938
	sw $t0, -4208($fp)
	lw $t0, -4208($fp)
	sw $t0, -4212($fp)
	lw $t0, -4212($fp)
	sw $t0, -4216($fp)
	li $t0, 14527
	sw $t0, -4220($fp)
	lw $t0, -4220($fp)
	sw $t0, -4224($fp)
	lw $t0, -4224($fp)
	sw $t0, -4228($fp)
	li $t0, 22043
	sw $t0, -4232($fp)
	lw $t0, -4232($fp)
	sw $t0, -4236($fp)
	lw $t0, -4236($fp)
	sw $t0, -4240($fp)
	li $t0, 6955
	sw $t0, -4244($fp)
	lw $t0, -4244($fp)
	sw $t0, -4248($fp)
	lw $t0, -4248($fp)
	sw $t0, -4252($fp)
	li $t0, 36634
	sw $t0, -4256($fp)
	lw $t0, -4256($fp)
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	sw $t0, -4264($fp)
	li $t0, 15992
	sw $t0, -4268($fp)
	lw $t0, -4268($fp)
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	sw $t0, -4276($fp)
	li $t0, 12917
	sw $t0, -4280($fp)
	lw $t0, -4280($fp)
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	sw $t0, -4288($fp)
	li $t0, 55328
	sw $t0, -4292($fp)
	lw $t0, -4292($fp)
	sw $t0, -4296($fp)
	lw $t0, -4296($fp)
	sw $t0, -4300($fp)
	li $t0, 0
	sw $t0, -4304($fp)
	lw $t0, -1664($fp)
	sw $t0, -4308($fp)
	lw $t1, -4308($fp)
	li $t2, 0
	bne $t1, $t2, label828
	j label827
label828:
	li $t0, 0
	sw $t0, -4312($fp)
	li $t0, 43546
	sw $t0, -4316($fp)
	lw $t1, -4316($fp)
	li $t2, 0
	bne $t1, $t2, label830
	j label829
label829:
	li $t0, 1
	sw $t0, -4312($fp)
label830:
	li $t0, 29447
	sw $t0, -4320($fp)
	lw $t0, -4312($fp)
	lw $t1, -4320($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4324($fp)
	addi $t0, $fp, -164
	sw $t0, -4328($fp)
	lw $t0, -1676($fp)
	sw $t0, -4332($fp)
	li $t0, 4
	lw $t1, -4332($fp)
	mul $t0, $t0, $t1
	sw $t0, -4336($fp)
	lw $t0, -4336($fp)
	lw $t1, -4328($fp)
	add $t0, $t0, $t1
	sw $t0, -4340($fp)
	lw $t0, -4340($fp)
	lw $t1, 0($t0)
	sw $t1, -4344($fp)
	lw $t1, -4324($fp)
	lw $t2, -4344($fp)
	beq $t1, $t2, label826
	j label827
label826:
	li $t0, 1
	sw $t0, -4304($fp)
label827:
	lw $t0, -1688($fp)
	sw $t0, -4348($fp)
	li $t0, 0
	sw $t0, -4352($fp)
	li $t0, 41005
	sw $t0, -4356($fp)
	li $t0, 0
	lw $t1, -4356($fp)
	sub $t0, $t0, $t1
	sw $t0, -4360($fp)
	li $t0, 0
	lw $t1, -4360($fp)
	sub $t0, $t0, $t1
	sw $t0, -4364($fp)
	li $t0, 0
	sw $t0, -4368($fp)
	lw $t0, -4284($fp)
	sw $t0, -4372($fp)
	li $t0, 0
	lw $t1, -4372($fp)
	sub $t0, $t0, $t1
	sw $t0, -4376($fp)
	lw $t1, -4376($fp)
	li $t2, 0
	bne $t1, $t2, label833
	j label834
label833:
	li $t0, 1
	sw $t0, -4368($fp)
label834:
	lw $t1, -4364($fp)
	lw $t2, -4368($fp)
	bgt $t1, $t2, label831
	j label832
label831:
	li $t0, 1
	sw $t0, -4352($fp)
label832:
	li $t0, 25035
	sw $t0, -4380($fp)
	lw $t0, -4380($fp)
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	sw $t0, -4384($fp)
	li $t0, 0
	sw $t0, -4388($fp)
	li $t0, 62084
	sw $t0, -4392($fp)
	lw $t1, -4392($fp)
	li $t2, 0
	bne $t1, $t2, label836
	j label835
label835:
	li $t0, 1
	sw $t0, -4388($fp)
label836:
	li $t0, 0
	lw $t1, -4388($fp)
	sub $t0, $t0, $t1
	sw $t0, -4396($fp)
	li $t0, 0
	sw $t0, -4400($fp)
	li $t0, 0
	sw $t0, -4404($fp)
	lw $t0, -4296($fp)
	sw $t0, -4408($fp)
	lw $t1, -4408($fp)
	li $t2, 0
	bne $t1, $t2, label840
	j label839
label839:
	li $t0, 1
	sw $t0, -4404($fp)
label840:
	li $t0, 11076
	sw $t0, -4412($fp)
	lw $t1, -4404($fp)
	lw $t2, -4412($fp)
	bne $t1, $t2, label837
	j label838
label837:
	li $t0, 1
	sw $t0, -4400($fp)
label838:
	addi $t0, $fp, -76
	sw $t0, -4416($fp)
	li $t0, 0
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
	addi $sp, $sp, -4
	lw $t0, -4384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4432($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4436($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -164
	sw $t0, -4440($fp)
	li $t0, 1
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
	lw $t0, -4164($fp)
	sw $t0, -4460($fp)
	lw $t0, -4460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4176($fp)
	sw $t0, -4464($fp)
	lw $t0, -4464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4188($fp)
	sw $t0, -4468($fp)
	lw $t0, -4468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4200($fp)
	sw $t0, -4472($fp)
	lw $t0, -4472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4212($fp)
	sw $t0, -4476($fp)
	lw $t0, -4476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4224($fp)
	sw $t0, -4480($fp)
	lw $t0, -4480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4236($fp)
	sw $t0, -4484($fp)
	lw $t0, -4484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4248($fp)
	sw $t0, -4488($fp)
	lw $t0, -4488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4260($fp)
	sw $t0, -4492($fp)
	lw $t0, -4492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4272($fp)
	sw $t0, -4496($fp)
	lw $t0, -4496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4260($fp)
	sw $t0, -4500($fp)
	li $t0, 0
	sw $t0, -4504($fp)
	lw $t0, -1892($fp)
	sw $t0, -4508($fp)
	li $t0, 50872
	sw $t0, -4512($fp)
	lw $t1, -4508($fp)
	lw $t2, -4512($fp)
	blt $t1, $t2, label843
	j label842
label843:
	li $t0, 42167
	sw $t0, -4516($fp)
	lw $t1, -4516($fp)
	li $t2, 0
	bne $t1, $t2, label841
	j label842
label841:
	li $t0, 1
	sw $t0, -4504($fp)
label842:
	li $t0, 0
	sw $t0, -4520($fp)
	li $t0, 0
	sw $t0, -4524($fp)
	lw $t0, -4248($fp)
	sw $t0, -4528($fp)
	lw $t0, -1880($fp)
	sw $t0, -4532($fp)
	lw $t1, -4528($fp)
	lw $t2, -4532($fp)
	bgt $t1, $t2, label846
	j label847
label846:
	li $t0, 1
	sw $t0, -4524($fp)
label847:
	lw $t0, -1880($fp)
	sw $t0, -4536($fp)
	lw $t1, -4524($fp)
	lw $t2, -4536($fp)
	bne $t1, $t2, label844
	j label845
label844:
	li $t0, 1
	sw $t0, -4520($fp)
label845:
	li $t0, 0
	sw $t0, -4540($fp)
	lw $t0, -260($fp)
	sw $t0, -4544($fp)
	lw $t0, -332($fp)
	sw $t0, -4548($fp)
	lw $t0, -4544($fp)
	lw $t1, -4548($fp)
	add $t0, $t0, $t1
	sw $t0, -4552($fp)
	lw $t1, -4552($fp)
	li $t2, 0
	bne $t1, $t2, label850
	j label849
label850:
	li $t0, 19929
	sw $t0, -4556($fp)
	lw $t1, -4556($fp)
	li $t2, 0
	bne $t1, $t2, label848
	j label849
label848:
	li $t0, 1
	sw $t0, -4540($fp)
label849:
	lw $t0, -584($fp)
	sw $t0, -4560($fp)
	li $t0, 4172
	sw $t0, -4564($fp)
	lw $t0, -4560($fp)
	lw $t1, -4564($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4568($fp)
	li $t0, 0
	lw $t1, -4568($fp)
	sub $t0, $t0, $t1
	sw $t0, -4572($fp)
	addi $sp, $sp, -4
	lw $t0, -4500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4572($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4576($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -4576($fp)
	sub $t0, $t0, $t1
	sw $t0, -4580($fp)
	lw $ra, -4($fp)
	lw $v0, -4580($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -4164($fp)
	sw $t0, -4584($fp)
	lw $t0, -4584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4176($fp)
	sw $t0, -4588($fp)
	lw $t0, -4588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4188($fp)
	sw $t0, -4592($fp)
	lw $t0, -4592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4200($fp)
	sw $t0, -4596($fp)
	lw $t0, -4596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4212($fp)
	sw $t0, -4600($fp)
	lw $t0, -4600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4224($fp)
	sw $t0, -4604($fp)
	lw $t0, -4604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4236($fp)
	sw $t0, -4608($fp)
	lw $t0, -4608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4248($fp)
	sw $t0, -4612($fp)
	lw $t0, -4612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4260($fp)
	sw $t0, -4616($fp)
	lw $t0, -4616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4272($fp)
	sw $t0, -4620($fp)
	lw $t0, -4620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -4624($fp)
	li $t0, 9
	sw $t0, -4628($fp)
	li $t0, 4
	lw $t1, -4628($fp)
	mul $t0, $t0, $t1
	sw $t0, -4632($fp)
	lw $t0, -4632($fp)
	lw $t1, -4624($fp)
	add $t0, $t0, $t1
	sw $t0, -4636($fp)
	lw $t0, -4636($fp)
	lw $t1, 0($t0)
	sw $t1, -4640($fp)
	li $t0, 54286
	sw $t0, -4644($fp)
	li $t0, 0
	lw $t1, -4644($fp)
	sub $t0, $t0, $t1
	sw $t0, -4648($fp)
	lw $t0, -4640($fp)
	lw $t1, -4648($fp)
	add $t0, $t0, $t1
	sw $t0, -4652($fp)
	lw $t0, -4652($fp)
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -4656($fp)
	lw $ra, -4($fp)
	lw $v0, -4656($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -4660($fp)
	li $t0, 9197
	sw $t0, -4664($fp)
	lw $t0, -272($fp)
	sw $t0, -4668($fp)
	lw $t0, -4664($fp)
	lw $t1, -4668($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4672($fp)
	lw $t1, -4672($fp)
	li $t2, 0
	bne $t1, $t2, label854
	j label856
label856:
	lw $t0, -284($fp)
	sw $t0, -4676($fp)
	lw $t1, -4676($fp)
	li $t2, 0
	bne $t1, $t2, label854
	j label855
label854:
	li $t0, 1
	sw $t0, -4660($fp)
label855:
	li $t0, 0
	sw $t0, -4680($fp)
	lw $t0, -260($fp)
	sw $t0, -4684($fp)
	li $t0, 60573
	sw $t0, -4688($fp)
	lw $t0, -4684($fp)
	lw $t1, -4688($fp)
	mul $t0, $t0, $t1
	sw $t0, -4692($fp)
	lw $t1, -4692($fp)
	li $t2, 0
	bne $t1, $t2, label859
	j label858
label859:
	li $t0, 54871
	sw $t0, -4696($fp)
	lw $t1, -4696($fp)
	li $t2, 0
	bne $t1, $t2, label857
	j label858
label857:
	li $t0, 1
	sw $t0, -4680($fp)
label858:
	lw $t0, -248($fp)
	sw $t0, -4700($fp)
	lw $t0, -4176($fp)
	sw $t0, -4704($fp)
	lw $t0, -4704($fp)
	sw $t0, -4164($fp)
	lw $t0, -4164($fp)
	sw $t0, -4708($fp)
	li $t0, 0
	sw $t0, -4712($fp)
	li $t0, 0
	sw $t0, -4716($fp)
	li $t0, 58840
	sw $t0, -4720($fp)
	lw $t0, -4272($fp)
	sw $t0, -4724($fp)
	lw $t1, -4720($fp)
	lw $t2, -4724($fp)
	beq $t1, $t2, label862
	j label863
label862:
	li $t0, 1
	sw $t0, -4716($fp)
label863:
	li $t0, 34643
	sw $t0, -4728($fp)
	lw $t1, -4716($fp)
	lw $t2, -4728($fp)
	bne $t1, $t2, label860
	j label861
label860:
	li $t0, 1
	sw $t0, -4712($fp)
label861:
	addi $sp, $sp, -4
	lw $t0, -4660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4712($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4732($fp)
	addi $sp, $sp, 24
	lw $t1, -4732($fp)
	li $t2, 0
	bne $t1, $t2, label851
	j label852
label851:
	li $t0, 63751
	sw $t0, -4736($fp)
	lw $t0, -4736($fp)
	sw $t0, -4740($fp)
	lw $t0, -4740($fp)
	sw $t0, -4744($fp)
	li $t0, 1273
	sw $t0, -4748($fp)
	lw $t0, -4748($fp)
	sw $t0, -4752($fp)
	lw $t0, -4752($fp)
	sw $t0, -4756($fp)
	addi $t0, $fp, -192
	sw $t0, -4760($fp)
	lw $t0, -332($fp)
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
	li $t0, 0
	lw $t1, -4776($fp)
	sub $t0, $t0, $t1
	sw $t0, -4780($fp)
	lw $t0, 12($fp)
	sw $t0, -4784($fp)
	lw $t0, -4780($fp)
	lw $t1, -4784($fp)
	add $t0, $t0, $t1
	sw $t0, -4788($fp)
	lw $t0, -4788($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -4792($fp)
	li $t0, 0
	sw $t0, -4796($fp)
	lw $t0, 4($fp)
	sw $t0, -4800($fp)
	li $t0, 0
	sw $t0, -4804($fp)
	lw $t0, -248($fp)
	sw $t0, -4808($fp)
	lw $t1, -4808($fp)
	li $t2, 0
	bne $t1, $t2, label867
	j label866
label866:
	li $t0, 1
	sw $t0, -4804($fp)
label867:
	lw $t0, -4800($fp)
	lw $t1, -4804($fp)
	mul $t0, $t0, $t1
	sw $t0, -4812($fp)
	li $t0, 60358
	sw $t0, -4816($fp)
	lw $t0, -4816($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -4820($fp)
	li $t0, 0
	sw $t0, -4824($fp)
	lw $t0, 8($fp)
	sw $t0, -4828($fp)
	li $t0, 0
	lw $t1, -4828($fp)
	sub $t0, $t0, $t1
	sw $t0, -4832($fp)
	lw $t1, -4832($fp)
	li $t2, 0
	bne $t1, $t2, label868
	j label870
label870:
	li $t0, 8228
	sw $t0, -4836($fp)
	lw $t1, -4836($fp)
	li $t2, 0
	bne $t1, $t2, label868
	j label869
label868:
	li $t0, 1
	sw $t0, -4824($fp)
label869:
	li $t0, 0
	sw $t0, -4840($fp)
	li $t0, 23724
	sw $t0, -4844($fp)
	lw $t1, -4844($fp)
	li $t2, 0
	bne $t1, $t2, label872
	j label871
label871:
	li $t0, 1
	sw $t0, -4840($fp)
label872:
	li $t0, 20258
	sw $t0, -4848($fp)
	lw $t0, -4840($fp)
	lw $t1, -4848($fp)
	mul $t0, $t0, $t1
	sw $t0, -4852($fp)
	addi $sp, $sp, -4
	lw $t0, -4820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4852($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4856($fp)
	addi $sp, $sp, 16
	li $t0, 36250
	sw $t0, -4860($fp)
	li $t0, 21145
	sw $t0, -4864($fp)
	lw $t0, -4860($fp)
	lw $t1, -4864($fp)
	mul $t0, $t0, $t1
	sw $t0, -4868($fp)
	lw $t0, -4856($fp)
	lw $t1, -4868($fp)
	sub $t0, $t0, $t1
	sw $t0, -4872($fp)
	lw $t1, -4812($fp)
	lw $t2, -4872($fp)
	bne $t1, $t2, label864
	j label865
label864:
	li $t0, 1
	sw $t0, -4796($fp)
label865:
	li $t0, 0
	sw $t0, -4876($fp)
	lw $t0, -1664($fp)
	sw $t0, -4880($fp)
	li $t0, 50150
	sw $t0, -4884($fp)
	lw $t0, -4880($fp)
	lw $t1, -4884($fp)
	mul $t0, $t0, $t1
	sw $t0, -4888($fp)
	li $t0, 14261
	sw $t0, -4892($fp)
	lw $t0, -4888($fp)
	lw $t1, -4892($fp)
	sub $t0, $t0, $t1
	sw $t0, -4896($fp)
	li $t0, 0
	sw $t0, -4900($fp)
	lw $t0, -752($fp)
	sw $t0, -4904($fp)
	lw $t1, -4904($fp)
	li $t2, 0
	bne $t1, $t2, label876
	j label875
label875:
	li $t0, 1
	sw $t0, -4900($fp)
label876:
	lw $t1, -4896($fp)
	lw $t2, -4900($fp)
	beq $t1, $t2, label873
	j label874
label873:
	li $t0, 1
	sw $t0, -4876($fp)
label874:
	lw $t0, -4876($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -4908($fp)
	li $t0, 0
	sw $t0, -4912($fp)
	li $t0, 0
	sw $t0, -4916($fp)
	li $t0, 0
	sw $t0, -4920($fp)
	lw $t0, -4752($fp)
	sw $t0, -4924($fp)
	lw $t0, -584($fp)
	sw $t0, -4928($fp)
	lw $t1, -4924($fp)
	lw $t2, -4928($fp)
	ble $t1, $t2, label881
	j label882
label881:
	li $t0, 1
	sw $t0, -4920($fp)
label882:
	lw $t0, -296($fp)
	sw $t0, -4932($fp)
	lw $t1, -4920($fp)
	lw $t2, -4932($fp)
	ble $t1, $t2, label879
	j label880
label879:
	li $t0, 1
	sw $t0, -4916($fp)
label880:
	li $t0, 0
	sw $t0, -4936($fp)
	lw $t0, -224($fp)
	sw $t0, -4940($fp)
	lw $t0, 4($fp)
	sw $t0, -4944($fp)
	lw $t0, -4940($fp)
	lw $t1, -4944($fp)
	add $t0, $t0, $t1
	sw $t0, -4948($fp)
	lw $t0, -764($fp)
	sw $t0, -4952($fp)
	lw $t1, -4948($fp)
	lw $t2, -4952($fp)
	beq $t1, $t2, label883
	j label884
label883:
	li $t0, 1
	sw $t0, -4936($fp)
label884:
	lw $t0, -1700($fp)
	sw $t0, -4956($fp)
	li $t0, 50593
	sw $t0, -4960($fp)
	lw $t0, -4956($fp)
	lw $t1, -4960($fp)
	mul $t0, $t0, $t1
	sw $t0, -4964($fp)
	li $t0, 25619
	sw $t0, -4968($fp)
	lw $t0, -4964($fp)
	lw $t1, -4968($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4972($fp)
	addi $sp, $sp, -4
	lw $t0, -4916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4972($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4976($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -164
	sw $t0, -4980($fp)
	lw $t0, -296($fp)
	sw $t0, -4984($fp)
	li $t0, 4
	lw $t1, -4984($fp)
	mul $t0, $t0, $t1
	sw $t0, -4988($fp)
	lw $t0, -4988($fp)
	lw $t1, -4980($fp)
	add $t0, $t0, $t1
	sw $t0, -4992($fp)
	lw $t0, -4992($fp)
	lw $t1, 0($t0)
	sw $t1, -4996($fp)
	lw $t0, -4976($fp)
	lw $t1, -4996($fp)
	mul $t0, $t0, $t1
	sw $t0, -5000($fp)
	li $t0, 0
	sw $t0, -5004($fp)
	addi $t0, $fp, -60
	sw $t0, -5008($fp)
	li $t0, 1
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
	lw $t1, -5024($fp)
	li $t2, 0
	bne $t1, $t2, label885
	j label887
label887:
	lw $t0, -4740($fp)
	sw $t0, -5028($fp)
	lw $t1, -5028($fp)
	li $t2, 0
	bne $t1, $t2, label885
	j label886
label885:
	li $t0, 1
	sw $t0, -5004($fp)
label886:
	li $t0, 0
	sw $t0, -5032($fp)
	lw $t0, -548($fp)
	sw $t0, -5036($fp)
	li $t0, 0
	lw $t1, -5036($fp)
	sub $t0, $t0, $t1
	sw $t0, -5040($fp)
	lw $t1, -5040($fp)
	li $t2, 0
	bne $t1, $t2, label889
	j label888
label888:
	li $t0, 1
	sw $t0, -5032($fp)
label889:
	li $t0, 0
	sw $t0, -5044($fp)
	lw $t0, -4188($fp)
	sw $t0, -5048($fp)
	lw $t1, -5048($fp)
	li $t2, 0
	bne $t1, $t2, label891
	j label890
label890:
	li $t0, 1
	sw $t0, -5044($fp)
label891:
	li $t0, 36573
	sw $t0, -5052($fp)
	lw $t0, -5044($fp)
	lw $t1, -5052($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5056($fp)
	li $t0, 36695
	sw $t0, -5060($fp)
	li $t0, 0
	sw $t0, -5064($fp)
	li $t0, 40025
	sw $t0, -5068($fp)
	li $t0, 36937
	sw $t0, -5072($fp)
	lw $t1, -5068($fp)
	lw $t2, -5072($fp)
	ble $t1, $t2, label892
	j label893
label892:
	li $t0, 1
	sw $t0, -5064($fp)
label893:
	addi $sp, $sp, -4
	lw $t0, -5004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5064($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5076($fp)
	addi $sp, $sp, 24
	lw $t0, -5000($fp)
	lw $t1, -5076($fp)
	mul $t0, $t0, $t1
	sw $t0, -5080($fp)
	li $t0, 0
	sw $t0, -5084($fp)
	addi $t0, $fp, -60
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
	lw $t1, -5104($fp)
	li $t2, 0
	bne $t1, $t2, label895
	j label894
label894:
	li $t0, 1
	sw $t0, -5084($fp)
label895:
	lw $t1, -5080($fp)
	lw $t2, -5084($fp)
	beq $t1, $t2, label877
	j label878
label877:
	li $t0, 1
	sw $t0, -4912($fp)
label878:
	j label853
label852:
label896:
	lw $t0, -572($fp)
	sw $t0, -5108($fp)
	addi $t0, $fp, -112
	sw $t0, -5112($fp)
	li $t0, 1
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
	li $t0, 0
	lw $t1, -5128($fp)
	sub $t0, $t0, $t1
	sw $t0, -5132($fp)
	lw $t0, -5108($fp)
	lw $t1, -5132($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5136($fp)
	lw $t1, -5136($fp)
	li $t2, 0
	bne $t1, $t2, label897
	j label898
label897:
label899:
	lw $t0, -1640($fp)
	sw $t0, -5140($fp)
	lw $t0, -1892($fp)
	sw $t0, -5144($fp)
	lw $t0, -5140($fp)
	lw $t1, -5144($fp)
	sub $t0, $t0, $t1
	sw $t0, -5148($fp)
	lw $t1, -5148($fp)
	li $t2, 0
	bne $t1, $t2, label900
	j label901
label900:
label902:
	li $t0, 42776
	sw $t0, -5152($fp)
	lw $t0, -740($fp)
	sw $t0, -5156($fp)
	li $t0, 0
	lw $t1, -5156($fp)
	sub $t0, $t0, $t1
	sw $t0, -5160($fp)
	li $t0, 0
	lw $t1, -5160($fp)
	sub $t0, $t0, $t1
	sw $t0, -5164($fp)
	lw $t0, -5152($fp)
	lw $t1, -5164($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5168($fp)
	lw $t1, -5168($fp)
	li $t2, 0
	bne $t1, $t2, label905
	j label904
label905:
	li $t0, 0
	sw $t0, -5172($fp)
	li $t0, 55361
	sw $t0, -5176($fp)
	li $t0, 26563
	sw $t0, -5180($fp)
	lw $t0, -5176($fp)
	lw $t1, -5180($fp)
	mul $t0, $t0, $t1
	sw $t0, -5184($fp)
	li $t0, 36427
	sw $t0, -5188($fp)
	lw $t1, -5184($fp)
	lw $t2, -5188($fp)
	beq $t1, $t2, label906
	j label907
label906:
	li $t0, 1
	sw $t0, -5172($fp)
label907:
	li $t0, 0
	sw $t0, -5192($fp)
	lw $t0, -332($fp)
	sw $t0, -5196($fp)
	lw $t0, -776($fp)
	sw $t0, -5200($fp)
	lw $t0, -5196($fp)
	lw $t1, -5200($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5204($fp)
	lw $t1, -5204($fp)
	li $t2, 0
	bne $t1, $t2, label910
	j label909
label910:
	li $t0, 47092
	sw $t0, -5208($fp)
	lw $t1, -5208($fp)
	li $t2, 0
	bne $t1, $t2, label908
	j label909
label908:
	li $t0, 1
	sw $t0, -5192($fp)
label909:
	addi $t0, $fp, -216
	sw $t0, -5212($fp)
	lw $t0, -224($fp)
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
	li $t0, 0
	lw $t1, -5228($fp)
	sub $t0, $t0, $t1
	sw $t0, -5232($fp)
	li $t0, 0
	sw $t0, -5236($fp)
	li $t0, 0
	sw $t0, -5240($fp)
	lw $t0, -332($fp)
	sw $t0, -5244($fp)
	lw $t0, -4188($fp)
	sw $t0, -5248($fp)
	lw $t1, -5244($fp)
	lw $t2, -5248($fp)
	blt $t1, $t2, label913
	j label914
label913:
	li $t0, 1
	sw $t0, -5240($fp)
label914:
	li $t0, 31526
	sw $t0, -5252($fp)
	lw $t1, -5240($fp)
	lw $t2, -5252($fp)
	bgt $t1, $t2, label911
	j label912
label911:
	li $t0, 1
	sw $t0, -5236($fp)
label912:
	li $t0, 0
	sw $t0, -5256($fp)
	addi $t0, $fp, -164
	sw $t0, -5260($fp)
	lw $t0, -4164($fp)
	sw $t0, -5264($fp)
	li $t0, 4
	lw $t1, -5264($fp)
	mul $t0, $t0, $t1
	sw $t0, -5268($fp)
	lw $t0, -5268($fp)
	lw $t1, -5260($fp)
	add $t0, $t0, $t1
	sw $t0, -5272($fp)
	lw $t0, -5272($fp)
	lw $t1, 0($t0)
	sw $t1, -5276($fp)
	lw $t0, -260($fp)
	sw $t0, -5280($fp)
	lw $t1, -5276($fp)
	lw $t2, -5280($fp)
	beq $t1, $t2, label915
	j label916
label915:
	li $t0, 1
	sw $t0, -5256($fp)
label916:
	li $t0, 20718
	sw $t0, -5284($fp)
	li $t0, 0
	lw $t1, -5284($fp)
	sub $t0, $t0, $t1
	sw $t0, -5288($fp)
	li $t0, 0
	lw $t1, -5288($fp)
	sub $t0, $t0, $t1
	sw $t0, -5292($fp)
	li $t0, 53787
	sw $t0, -5296($fp)
	addi $sp, $sp, -4
	lw $t0, -5236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5296($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5300($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -5172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5300($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5304($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -5304($fp)
	sub $t0, $t0, $t1
	sw $t0, -5308($fp)
	lw $t1, -5308($fp)
	li $t2, 0
	bne $t1, $t2, label903
	j label904
label903:
	li $t0, 0
	sw $t0, -5312($fp)
	lw $t0, -4224($fp)
	sw $t0, -5316($fp)
	li $t0, 37700
	sw $t0, -5320($fp)
	lw $t0, -5316($fp)
	lw $t1, -5320($fp)
	sub $t0, $t0, $t1
	sw $t0, -5324($fp)
	li $t0, 0
	sw $t0, -5328($fp)
	lw $t0, -224($fp)
	sw $t0, -5332($fp)
	li $t0, 24779
	sw $t0, -5336($fp)
	lw $t0, -5332($fp)
	lw $t1, -5336($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5340($fp)
	lw $t1, -5340($fp)
	li $t2, 0
	bne $t1, $t2, label921
	j label920
label921:
	lw $t0, -4212($fp)
	sw $t0, -5344($fp)
	lw $t1, -5344($fp)
	li $t2, 0
	bne $t1, $t2, label919
	j label920
label919:
	li $t0, 1
	sw $t0, -5328($fp)
label920:
	li $t0, 0
	sw $t0, -5348($fp)
	lw $t0, -536($fp)
	sw $t0, -5352($fp)
	lw $t0, -4200($fp)
	sw $t0, -5356($fp)
	lw $t0, -5352($fp)
	lw $t1, -5356($fp)
	sub $t0, $t0, $t1
	sw $t0, -5360($fp)
	lw $t1, -5360($fp)
	li $t2, 0
	bne $t1, $t2, label922
	j label924
label924:
	lw $t0, -584($fp)
	sw $t0, -5364($fp)
	lw $t1, -5364($fp)
	li $t2, 0
	bne $t1, $t2, label922
	j label923
label922:
	li $t0, 1
	sw $t0, -5348($fp)
label923:
	li $t0, 64558
	sw $t0, -5368($fp)
	addi $sp, $sp, -4
	lw $t0, -5324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5368($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5372($fp)
	addi $sp, $sp, 20
	li $t0, 17569
	sw $t0, -5376($fp)
	lw $t0, -1460($fp)
	sw $t0, -5380($fp)
	lw $t0, -5380($fp)
	sw $t0, -4164($fp)
	lw $t0, -4164($fp)
	sw $t0, -5384($fp)
	li $t0, 0
	sw $t0, -5388($fp)
	lw $t0, -4236($fp)
	sw $t0, -5392($fp)
	lw $t0, -884($fp)
	sw $t0, -5396($fp)
	lw $t0, -5392($fp)
	lw $t1, -5396($fp)
	mul $t0, $t0, $t1
	sw $t0, -5400($fp)
	lw $t1, -5400($fp)
	li $t2, 0
	bne $t1, $t2, label925
	j label927
label927:
	li $t0, 45928
	sw $t0, -5404($fp)
	lw $t1, -5404($fp)
	li $t2, 0
	bne $t1, $t2, label925
	j label926
label925:
	li $t0, 1
	sw $t0, -5388($fp)
label926:
	li $t0, 0
	sw $t0, -5408($fp)
	li $t0, 22746
	sw $t0, -5412($fp)
	lw $t1, -5412($fp)
	li $t2, 0
	bne $t1, $t2, label929
	j label930
label930:
	li $t0, 45037
	sw $t0, -5416($fp)
	lw $t1, -5416($fp)
	li $t2, 0
	bne $t1, $t2, label928
	j label929
label928:
	li $t0, 1
	sw $t0, -5408($fp)
label929:
	addi $sp, $sp, -4
	lw $t0, -5376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5408($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5420($fp)
	addi $sp, $sp, 20
	lw $t0, -560($fp)
	sw $t0, -5424($fp)
	lw $t0, -5420($fp)
	lw $t1, -5424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5428($fp)
	lw $t1, -5372($fp)
	lw $t2, -5428($fp)
	bne $t1, $t2, label917
	j label918
label917:
	li $t0, 1
	sw $t0, -5312($fp)
label918:
	j label902
label904:
	j label899
label901:
	j label896
label898:
label853:
	j label813
label815:
label811:
	li $t0, 15752
	sw $t0, -5432($fp)
	addi $t0, $fp, -164
	sw $t0, -5436($fp)
	lw $t0, -740($fp)
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
	lw $t0, -5432($fp)
	lw $t1, -5452($fp)
	sub $t0, $t0, $t1
	sw $t0, -5456($fp)
	addi $t0, $fp, -52
	sw $t0, -5460($fp)
	li $t0, 3
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
	lw $t0, -5456($fp)
	lw $t1, -5476($fp)
	add $t0, $t0, $t1
	sw $t0, -5480($fp)
	li $t0, 30013
	sw $t0, -5484($fp)
	addi $t0, $fp, -60
	sw $t0, -5488($fp)
	addi $t0, $fp, -76
	sw $t0, -5492($fp)
	li $t0, 3
	sw $t0, -5496($fp)
	li $t0, 4
	lw $t1, -5496($fp)
	mul $t0, $t0, $t1
	sw $t0, -5500($fp)
	lw $t0, -5500($fp)
	lw $t1, -5492($fp)
	add $t0, $t0, $t1
	sw $t0, -5504($fp)
	lw $t0, -5504($fp)
	lw $t1, 0($t0)
	sw $t1, -5508($fp)
	li $t0, 4
	lw $t1, -5508($fp)
	mul $t0, $t0, $t1
	sw $t0, -5512($fp)
	lw $t0, -5512($fp)
	lw $t1, -5488($fp)
	add $t0, $t0, $t1
	sw $t0, -5516($fp)
	lw $t0, -5516($fp)
	lw $t1, 0($t0)
	sw $t1, -5520($fp)
	lw $t0, -5484($fp)
	lw $t1, -5520($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5524($fp)
	addi $t0, $fp, -112
	sw $t0, -5528($fp)
	lw $t0, -332($fp)
	sw $t0, -5532($fp)
	lw $t0, -5532($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -5536($fp)
	li $t0, 4
	lw $t1, -5536($fp)
	mul $t0, $t0, $t1
	sw $t0, -5540($fp)
	lw $t0, -5540($fp)
	lw $t1, -5528($fp)
	add $t0, $t0, $t1
	sw $t0, -5544($fp)
	lw $t0, -5544($fp)
	lw $t1, 0($t0)
	sw $t1, -5548($fp)
	li $t0, 0
	lw $t1, -5548($fp)
	sub $t0, $t0, $t1
	sw $t0, -5552($fp)
	addi $t0, $fp, -36
	sw $t0, -5556($fp)
	lw $t0, -536($fp)
	sw $t0, -5560($fp)
	li $t0, 4502
	sw $t0, -5564($fp)
	lw $t0, -5560($fp)
	lw $t1, -5564($fp)
	mul $t0, $t0, $t1
	sw $t0, -5568($fp)
	li $t0, 0
	lw $t1, -5568($fp)
	sub $t0, $t0, $t1
	sw $t0, -5572($fp)
	li $t0, 4
	lw $t1, -5572($fp)
	mul $t0, $t0, $t1
	sw $t0, -5576($fp)
	lw $t0, -5576($fp)
	lw $t1, -5556($fp)
	add $t0, $t0, $t1
	sw $t0, -5580($fp)
	lw $t0, -5580($fp)
	lw $t1, 0($t0)
	sw $t1, -5584($fp)
	li $t0, 0
	lw $t1, -5584($fp)
	sub $t0, $t0, $t1
	sw $t0, -5588($fp)
	lw $t0, -224($fp)
	sw $t0, -5592($fp)
	lw $t0, -5592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -236($fp)
	sw $t0, -5596($fp)
	lw $t0, -5596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -248($fp)
	sw $t0, -5600($fp)
	lw $t0, -5600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -260($fp)
	sw $t0, -5604($fp)
	lw $t0, -5604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -272($fp)
	sw $t0, -5608($fp)
	lw $t0, -5608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	sw $t0, -5612($fp)
	lw $t0, -5612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -296($fp)
	sw $t0, -5616($fp)
	lw $t0, -5616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -308($fp)
	sw $t0, -5620($fp)
	lw $t0, -5620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -320($fp)
	sw $t0, -5624($fp)
	lw $t0, -5624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -332($fp)
	sw $t0, -5628($fp)
	lw $t0, -5628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5632($fp)
	li $t0, 0
	sw $t0, -5636($fp)
	li $t0, 4
	lw $t1, -5636($fp)
	mul $t0, $t0, $t1
	sw $t0, -5640($fp)
	lw $t0, -5640($fp)
	lw $t1, -5632($fp)
	add $t0, $t0, $t1
	sw $t0, -5644($fp)
	lw $t0, -5644($fp)
	lw $t1, 0($t0)
	sw $t1, -5648($fp)
	lw $t0, -5648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5652($fp)
	li $t0, 1
	sw $t0, -5656($fp)
	li $t0, 4
	lw $t1, -5656($fp)
	mul $t0, $t0, $t1
	sw $t0, -5660($fp)
	lw $t0, -5660($fp)
	lw $t1, -5652($fp)
	add $t0, $t0, $t1
	sw $t0, -5664($fp)
	lw $t0, -5664($fp)
	lw $t1, 0($t0)
	sw $t1, -5668($fp)
	lw $t0, -5668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5672($fp)
	li $t0, 2
	sw $t0, -5676($fp)
	li $t0, 4
	lw $t1, -5676($fp)
	mul $t0, $t0, $t1
	sw $t0, -5680($fp)
	lw $t0, -5680($fp)
	lw $t1, -5672($fp)
	add $t0, $t0, $t1
	sw $t0, -5684($fp)
	lw $t0, -5684($fp)
	lw $t1, 0($t0)
	sw $t1, -5688($fp)
	lw $t0, -5688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5692($fp)
	li $t0, 3
	sw $t0, -5696($fp)
	li $t0, 4
	lw $t1, -5696($fp)
	mul $t0, $t0, $t1
	sw $t0, -5700($fp)
	lw $t0, -5700($fp)
	lw $t1, -5692($fp)
	add $t0, $t0, $t1
	sw $t0, -5704($fp)
	lw $t0, -5704($fp)
	lw $t1, 0($t0)
	sw $t1, -5708($fp)
	lw $t0, -5708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5712($fp)
	li $t0, 4
	sw $t0, -5716($fp)
	li $t0, 4
	lw $t1, -5716($fp)
	mul $t0, $t0, $t1
	sw $t0, -5720($fp)
	lw $t0, -5720($fp)
	lw $t1, -5712($fp)
	add $t0, $t0, $t1
	sw $t0, -5724($fp)
	lw $t0, -5724($fp)
	lw $t1, 0($t0)
	sw $t1, -5728($fp)
	lw $t0, -5728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5732($fp)
	li $t0, 5
	sw $t0, -5736($fp)
	li $t0, 4
	lw $t1, -5736($fp)
	mul $t0, $t0, $t1
	sw $t0, -5740($fp)
	lw $t0, -5740($fp)
	lw $t1, -5732($fp)
	add $t0, $t0, $t1
	sw $t0, -5744($fp)
	lw $t0, -5744($fp)
	lw $t1, 0($t0)
	sw $t1, -5748($fp)
	lw $t0, -5748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5752($fp)
	li $t0, 6
	sw $t0, -5756($fp)
	li $t0, 4
	lw $t1, -5756($fp)
	mul $t0, $t0, $t1
	sw $t0, -5760($fp)
	lw $t0, -5760($fp)
	lw $t1, -5752($fp)
	add $t0, $t0, $t1
	sw $t0, -5764($fp)
	lw $t0, -5764($fp)
	lw $t1, 0($t0)
	sw $t1, -5768($fp)
	lw $t0, -5768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5772($fp)
	li $t0, 7
	sw $t0, -5776($fp)
	li $t0, 4
	lw $t1, -5776($fp)
	mul $t0, $t0, $t1
	sw $t0, -5780($fp)
	lw $t0, -5780($fp)
	lw $t1, -5772($fp)
	add $t0, $t0, $t1
	sw $t0, -5784($fp)
	lw $t0, -5784($fp)
	lw $t1, 0($t0)
	sw $t1, -5788($fp)
	lw $t0, -5788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -5792($fp)
	lw $t0, -5792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -5796($fp)
	lw $t0, -5796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -5800($fp)
	lw $t0, -5800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -5804($fp)
	lw $t0, -5804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -584($fp)
	sw $t0, -5808($fp)
	lw $t0, -5808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -5812($fp)
	li $t0, 0
	sw $t0, -5816($fp)
	li $t0, 4
	lw $t1, -5816($fp)
	mul $t0, $t0, $t1
	sw $t0, -5820($fp)
	lw $t0, -5820($fp)
	lw $t1, -5812($fp)
	add $t0, $t0, $t1
	sw $t0, -5824($fp)
	lw $t0, -5824($fp)
	lw $t1, 0($t0)
	sw $t1, -5828($fp)
	lw $t0, -5828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -5832($fp)
	li $t0, 1
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
	lw $t0, -5848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -5852($fp)
	li $t0, 2
	sw $t0, -5856($fp)
	li $t0, 4
	lw $t1, -5856($fp)
	mul $t0, $t0, $t1
	sw $t0, -5860($fp)
	lw $t0, -5860($fp)
	lw $t1, -5852($fp)
	add $t0, $t0, $t1
	sw $t0, -5864($fp)
	lw $t0, -5864($fp)
	lw $t1, 0($t0)
	sw $t1, -5868($fp)
	lw $t0, -5868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -5872($fp)
	li $t0, 3
	sw $t0, -5876($fp)
	li $t0, 4
	lw $t1, -5876($fp)
	mul $t0, $t0, $t1
	sw $t0, -5880($fp)
	lw $t0, -5880($fp)
	lw $t1, -5872($fp)
	add $t0, $t0, $t1
	sw $t0, -5884($fp)
	lw $t0, -5884($fp)
	lw $t1, 0($t0)
	sw $t1, -5888($fp)
	lw $t0, -5888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -5892($fp)
	li $t0, 0
	sw $t0, -5896($fp)
	li $t0, 4
	lw $t1, -5896($fp)
	mul $t0, $t0, $t1
	sw $t0, -5900($fp)
	lw $t0, -5900($fp)
	lw $t1, -5892($fp)
	add $t0, $t0, $t1
	sw $t0, -5904($fp)
	lw $t0, -5904($fp)
	lw $t1, 0($t0)
	sw $t1, -5908($fp)
	lw $t0, -5908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -5912($fp)
	li $t0, 1
	sw $t0, -5916($fp)
	li $t0, 4
	lw $t1, -5916($fp)
	mul $t0, $t0, $t1
	sw $t0, -5920($fp)
	lw $t0, -5920($fp)
	lw $t1, -5912($fp)
	add $t0, $t0, $t1
	sw $t0, -5924($fp)
	lw $t0, -5924($fp)
	lw $t1, 0($t0)
	sw $t1, -5928($fp)
	lw $t0, -5928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -740($fp)
	sw $t0, -5932($fp)
	lw $t0, -5932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -752($fp)
	sw $t0, -5936($fp)
	lw $t0, -5936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -764($fp)
	sw $t0, -5940($fp)
	lw $t0, -5940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -776($fp)
	sw $t0, -5944($fp)
	lw $t0, -5944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -5948($fp)
	li $t0, 0
	sw $t0, -5952($fp)
	li $t0, 4
	lw $t1, -5952($fp)
	mul $t0, $t0, $t1
	sw $t0, -5956($fp)
	lw $t0, -5956($fp)
	lw $t1, -5948($fp)
	add $t0, $t0, $t1
	sw $t0, -5960($fp)
	lw $t0, -5960($fp)
	lw $t1, 0($t0)
	sw $t1, -5964($fp)
	lw $t0, -5964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -5968($fp)
	li $t0, 1
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
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -5988($fp)
	li $t0, 2
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
	lw $t0, -6004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -6008($fp)
	li $t0, 3
	sw $t0, -6012($fp)
	li $t0, 4
	lw $t1, -6012($fp)
	mul $t0, $t0, $t1
	sw $t0, -6016($fp)
	lw $t0, -6016($fp)
	lw $t1, -6008($fp)
	add $t0, $t0, $t1
	sw $t0, -6020($fp)
	lw $t0, -6020($fp)
	lw $t1, 0($t0)
	sw $t1, -6024($fp)
	lw $t0, -6024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -884($fp)
	sw $t0, -6028($fp)
	lw $t0, -6028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -896($fp)
	sw $t0, -6032($fp)
	lw $t0, -6032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -908($fp)
	sw $t0, -6036($fp)
	lw $t0, -6036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -6040($fp)
	li $t0, 0
	sw $t0, -6044($fp)
	li $t0, 4
	lw $t1, -6044($fp)
	mul $t0, $t0, $t1
	sw $t0, -6048($fp)
	lw $t0, -6048($fp)
	lw $t1, -6040($fp)
	add $t0, $t0, $t1
	sw $t0, -6052($fp)
	lw $t0, -6052($fp)
	lw $t1, 0($t0)
	sw $t1, -6056($fp)
	lw $t0, -6056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -6060($fp)
	li $t0, 1
	sw $t0, -6064($fp)
	li $t0, 4
	lw $t1, -6064($fp)
	mul $t0, $t0, $t1
	sw $t0, -6068($fp)
	lw $t0, -6068($fp)
	lw $t1, -6060($fp)
	add $t0, $t0, $t1
	sw $t0, -6072($fp)
	lw $t0, -6072($fp)
	lw $t1, 0($t0)
	sw $t1, -6076($fp)
	lw $t0, -6076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -6080($fp)
	li $t0, 2
	sw $t0, -6084($fp)
	li $t0, 4
	lw $t1, -6084($fp)
	mul $t0, $t0, $t1
	sw $t0, -6088($fp)
	lw $t0, -6088($fp)
	lw $t1, -6080($fp)
	add $t0, $t0, $t1
	sw $t0, -6092($fp)
	lw $t0, -6092($fp)
	lw $t1, 0($t0)
	sw $t1, -6096($fp)
	lw $t0, -6096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -6100($fp)
	li $t0, 3
	sw $t0, -6104($fp)
	li $t0, 4
	lw $t1, -6104($fp)
	mul $t0, $t0, $t1
	sw $t0, -6108($fp)
	lw $t0, -6108($fp)
	lw $t1, -6100($fp)
	add $t0, $t0, $t1
	sw $t0, -6112($fp)
	lw $t0, -6112($fp)
	lw $t1, 0($t0)
	sw $t1, -6116($fp)
	lw $t0, -6116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -6120($fp)
	li $t0, 4
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
	addi $t0, $fp, -112
	sw $t0, -6140($fp)
	li $t0, 5
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
	addi $t0, $fp, -112
	sw $t0, -6160($fp)
	li $t0, 6
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
	addi $t0, $fp, -112
	sw $t0, -6180($fp)
	li $t0, 7
	sw $t0, -6184($fp)
	li $t0, 4
	lw $t1, -6184($fp)
	mul $t0, $t0, $t1
	sw $t0, -6188($fp)
	lw $t0, -6188($fp)
	lw $t1, -6180($fp)
	add $t0, $t0, $t1
	sw $t0, -6192($fp)
	lw $t0, -6192($fp)
	lw $t1, 0($t0)
	sw $t1, -6196($fp)
	lw $t0, -6196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -6200($fp)
	li $t0, 8
	sw $t0, -6204($fp)
	li $t0, 4
	lw $t1, -6204($fp)
	mul $t0, $t0, $t1
	sw $t0, -6208($fp)
	lw $t0, -6208($fp)
	lw $t1, -6200($fp)
	add $t0, $t0, $t1
	sw $t0, -6212($fp)
	lw $t0, -6212($fp)
	lw $t1, 0($t0)
	sw $t1, -6216($fp)
	lw $t0, -6216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1136($fp)
	sw $t0, -6220($fp)
	lw $t0, -6220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -6224($fp)
	li $t0, 0
	sw $t0, -6228($fp)
	li $t0, 4
	lw $t1, -6228($fp)
	mul $t0, $t0, $t1
	sw $t0, -6232($fp)
	lw $t0, -6232($fp)
	lw $t1, -6224($fp)
	add $t0, $t0, $t1
	sw $t0, -6236($fp)
	lw $t0, -6236($fp)
	lw $t1, 0($t0)
	sw $t1, -6240($fp)
	lw $t0, -6240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -6244($fp)
	li $t0, 1
	sw $t0, -6248($fp)
	li $t0, 4
	lw $t1, -6248($fp)
	mul $t0, $t0, $t1
	sw $t0, -6252($fp)
	lw $t0, -6252($fp)
	lw $t1, -6244($fp)
	add $t0, $t0, $t1
	sw $t0, -6256($fp)
	lw $t0, -6256($fp)
	lw $t1, 0($t0)
	sw $t1, -6260($fp)
	lw $t0, -6260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -6264($fp)
	li $t0, 2
	sw $t0, -6268($fp)
	li $t0, 4
	lw $t1, -6268($fp)
	mul $t0, $t0, $t1
	sw $t0, -6272($fp)
	lw $t0, -6272($fp)
	lw $t1, -6264($fp)
	add $t0, $t0, $t1
	sw $t0, -6276($fp)
	lw $t0, -6276($fp)
	lw $t1, 0($t0)
	sw $t1, -6280($fp)
	lw $t0, -6280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -6284($fp)
	li $t0, 0
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
	lw $t0, -6300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -6304($fp)
	li $t0, 1
	sw $t0, -6308($fp)
	li $t0, 4
	lw $t1, -6308($fp)
	mul $t0, $t0, $t1
	sw $t0, -6312($fp)
	lw $t0, -6312($fp)
	lw $t1, -6304($fp)
	add $t0, $t0, $t1
	sw $t0, -6316($fp)
	lw $t0, -6316($fp)
	lw $t1, 0($t0)
	sw $t1, -6320($fp)
	lw $t0, -6320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -6324($fp)
	li $t0, 2
	sw $t0, -6328($fp)
	li $t0, 4
	lw $t1, -6328($fp)
	mul $t0, $t0, $t1
	sw $t0, -6332($fp)
	lw $t0, -6332($fp)
	lw $t1, -6324($fp)
	add $t0, $t0, $t1
	sw $t0, -6336($fp)
	lw $t0, -6336($fp)
	lw $t1, 0($t0)
	sw $t1, -6340($fp)
	lw $t0, -6340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -6344($fp)
	li $t0, 3
	sw $t0, -6348($fp)
	li $t0, 4
	lw $t1, -6348($fp)
	mul $t0, $t0, $t1
	sw $t0, -6352($fp)
	lw $t0, -6352($fp)
	lw $t1, -6344($fp)
	add $t0, $t0, $t1
	sw $t0, -6356($fp)
	lw $t0, -6356($fp)
	lw $t1, 0($t0)
	sw $t1, -6360($fp)
	lw $t0, -6360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -6364($fp)
	li $t0, 4
	sw $t0, -6368($fp)
	li $t0, 4
	lw $t1, -6368($fp)
	mul $t0, $t0, $t1
	sw $t0, -6372($fp)
	lw $t0, -6372($fp)
	lw $t1, -6364($fp)
	add $t0, $t0, $t1
	sw $t0, -6376($fp)
	lw $t0, -6376($fp)
	lw $t1, 0($t0)
	sw $t1, -6380($fp)
	lw $t0, -6380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -6384($fp)
	li $t0, 5
	sw $t0, -6388($fp)
	li $t0, 4
	lw $t1, -6388($fp)
	mul $t0, $t0, $t1
	sw $t0, -6392($fp)
	lw $t0, -6392($fp)
	lw $t1, -6384($fp)
	add $t0, $t0, $t1
	sw $t0, -6396($fp)
	lw $t0, -6396($fp)
	lw $t1, 0($t0)
	sw $t1, -6400($fp)
	lw $t0, -6400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -6404($fp)
	li $t0, 6
	sw $t0, -6408($fp)
	li $t0, 4
	lw $t1, -6408($fp)
	mul $t0, $t0, $t1
	sw $t0, -6412($fp)
	lw $t0, -6412($fp)
	lw $t1, -6404($fp)
	add $t0, $t0, $t1
	sw $t0, -6416($fp)
	lw $t0, -6416($fp)
	lw $t1, 0($t0)
	sw $t1, -6420($fp)
	lw $t0, -6420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -6424($fp)
	li $t0, 7
	sw $t0, -6428($fp)
	li $t0, 4
	lw $t1, -6428($fp)
	mul $t0, $t0, $t1
	sw $t0, -6432($fp)
	lw $t0, -6432($fp)
	lw $t1, -6424($fp)
	add $t0, $t0, $t1
	sw $t0, -6436($fp)
	lw $t0, -6436($fp)
	lw $t1, 0($t0)
	sw $t1, -6440($fp)
	lw $t0, -6440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -6444($fp)
	li $t0, 8
	sw $t0, -6448($fp)
	li $t0, 4
	lw $t1, -6448($fp)
	mul $t0, $t0, $t1
	sw $t0, -6452($fp)
	lw $t0, -6452($fp)
	lw $t1, -6444($fp)
	add $t0, $t0, $t1
	sw $t0, -6456($fp)
	lw $t0, -6456($fp)
	lw $t1, 0($t0)
	sw $t1, -6460($fp)
	lw $t0, -6460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -6464($fp)
	li $t0, 9
	sw $t0, -6468($fp)
	li $t0, 4
	lw $t1, -6468($fp)
	mul $t0, $t0, $t1
	sw $t0, -6472($fp)
	lw $t0, -6472($fp)
	lw $t1, -6464($fp)
	add $t0, $t0, $t1
	sw $t0, -6476($fp)
	lw $t0, -6476($fp)
	lw $t1, 0($t0)
	sw $t1, -6480($fp)
	lw $t0, -6480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1460($fp)
	sw $t0, -6484($fp)
	lw $t0, -6484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -6488($fp)
	li $t0, 0
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
	addi $t0, $fp, -192
	sw $t0, -6508($fp)
	li $t0, 1
	sw $t0, -6512($fp)
	li $t0, 4
	lw $t1, -6512($fp)
	mul $t0, $t0, $t1
	sw $t0, -6516($fp)
	lw $t0, -6516($fp)
	lw $t1, -6508($fp)
	add $t0, $t0, $t1
	sw $t0, -6520($fp)
	lw $t0, -6520($fp)
	lw $t1, 0($t0)
	sw $t1, -6524($fp)
	lw $t0, -6524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -6528($fp)
	li $t0, 2
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
	addi $t0, $fp, -192
	sw $t0, -6548($fp)
	li $t0, 3
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
	addi $t0, $fp, -192
	sw $t0, -6568($fp)
	li $t0, 4
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
	addi $t0, $fp, -192
	sw $t0, -6588($fp)
	li $t0, 5
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
	addi $t0, $fp, -192
	sw $t0, -6608($fp)
	li $t0, 6
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
	lw $t0, -1640($fp)
	sw $t0, -6628($fp)
	lw $t0, -6628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1652($fp)
	sw $t0, -6632($fp)
	lw $t0, -6632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1664($fp)
	sw $t0, -6636($fp)
	lw $t0, -6636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1676($fp)
	sw $t0, -6640($fp)
	lw $t0, -6640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1688($fp)
	sw $t0, -6644($fp)
	lw $t0, -6644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1700($fp)
	sw $t0, -6648($fp)
	lw $t0, -6648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -6652($fp)
	li $t0, 0
	sw $t0, -6656($fp)
	li $t0, 4
	lw $t1, -6656($fp)
	mul $t0, $t0, $t1
	sw $t0, -6660($fp)
	lw $t0, -6660($fp)
	lw $t1, -6652($fp)
	add $t0, $t0, $t1
	sw $t0, -6664($fp)
	lw $t0, -6664($fp)
	lw $t1, 0($t0)
	sw $t1, -6668($fp)
	lw $t0, -6668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -6672($fp)
	li $t0, 1
	sw $t0, -6676($fp)
	li $t0, 4
	lw $t1, -6676($fp)
	mul $t0, $t0, $t1
	sw $t0, -6680($fp)
	lw $t0, -6680($fp)
	lw $t1, -6672($fp)
	add $t0, $t0, $t1
	sw $t0, -6684($fp)
	lw $t0, -6684($fp)
	lw $t1, 0($t0)
	sw $t1, -6688($fp)
	lw $t0, -6688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1760($fp)
	sw $t0, -6692($fp)
	lw $t0, -6692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1772($fp)
	sw $t0, -6696($fp)
	lw $t0, -6696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -6700($fp)
	li $t0, 0
	sw $t0, -6704($fp)
	li $t0, 4
	lw $t1, -6704($fp)
	mul $t0, $t0, $t1
	sw $t0, -6708($fp)
	lw $t0, -6708($fp)
	lw $t1, -6700($fp)
	add $t0, $t0, $t1
	sw $t0, -6712($fp)
	lw $t0, -6712($fp)
	lw $t1, 0($t0)
	sw $t1, -6716($fp)
	lw $t0, -6716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -6720($fp)
	li $t0, 1
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
	lw $t0, -6736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -6740($fp)
	li $t0, 2
	sw $t0, -6744($fp)
	li $t0, 4
	lw $t1, -6744($fp)
	mul $t0, $t0, $t1
	sw $t0, -6748($fp)
	lw $t0, -6748($fp)
	lw $t1, -6740($fp)
	add $t0, $t0, $t1
	sw $t0, -6752($fp)
	lw $t0, -6752($fp)
	lw $t1, 0($t0)
	sw $t1, -6756($fp)
	lw $t0, -6756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -6760($fp)
	li $t0, 3
	sw $t0, -6764($fp)
	li $t0, 4
	lw $t1, -6764($fp)
	mul $t0, $t0, $t1
	sw $t0, -6768($fp)
	lw $t0, -6768($fp)
	lw $t1, -6760($fp)
	add $t0, $t0, $t1
	sw $t0, -6772($fp)
	lw $t0, -6772($fp)
	lw $t1, 0($t0)
	sw $t1, -6776($fp)
	lw $t0, -6776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1880($fp)
	sw $t0, -6780($fp)
	lw $t0, -6780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1892($fp)
	sw $t0, -6784($fp)
	lw $t0, -6784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6788($fp)
	lw $t0, -548($fp)
	sw $t0, -6792($fp)
	addi $t0, $fp, -216
	sw $t0, -6796($fp)
	li $t0, 2
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
	lw $t0, -6792($fp)
	lw $t1, -6812($fp)
	mul $t0, $t0, $t1
	sw $t0, -6816($fp)
	li $t0, 41075
	sw $t0, -6820($fp)
	lw $t1, -6816($fp)
	lw $t2, -6820($fp)
	bgt $t1, $t2, label931
	j label932
label931:
	li $t0, 1
	sw $t0, -6788($fp)
label932:
	lw $ra, -4($fp)
	lw $v0, -6788($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2852
	li $t0, 19968
	sw $t0, -96($fp)
	addi $t0, $fp, -32
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
	li $t0, 44428
	sw $t0, -120($fp)
	addi $t0, $fp, -32
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
	li $t0, 12550
	sw $t0, -144($fp)
	addi $t0, $fp, -32
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
	li $t0, 20577
	sw $t0, -168($fp)
	addi $t0, $fp, -32
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
	li $t0, 44287
	sw $t0, -192($fp)
	addi $t0, $fp, -32
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
	li $t0, 34897
	sw $t0, -216($fp)
	addi $t0, $fp, -32
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
	li $t0, 63353
	sw $t0, -240($fp)
	addi $t0, $fp, -32
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
	li $t0, 32538
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	li $t0, 55615
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	li $t0, 29343
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	li $t0, 14094
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	li $t0, 45440
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	li $t0, 55907
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	li $t0, 50521
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	li $t0, 44462
	sw $t0, -348($fp)
	addi $t0, $fp, -60
	sw $t0, -352($fp)
	li $t0, 0
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
	li $t0, 15150
	sw $t0, -372($fp)
	addi $t0, $fp, -60
	sw $t0, -376($fp)
	li $t0, 1
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
	li $t0, 22685
	sw $t0, -396($fp)
	addi $t0, $fp, -60
	sw $t0, -400($fp)
	li $t0, 2
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
	li $t0, 1673
	sw $t0, -420($fp)
	addi $t0, $fp, -60
	sw $t0, -424($fp)
	li $t0, 3
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
	li $t0, 60187
	sw $t0, -444($fp)
	addi $t0, $fp, -60
	sw $t0, -448($fp)
	li $t0, 4
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
	li $t0, 3077
	sw $t0, -468($fp)
	addi $t0, $fp, -60
	sw $t0, -472($fp)
	li $t0, 5
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
	li $t0, 19242
	sw $t0, -492($fp)
	addi $t0, $fp, -60
	sw $t0, -496($fp)
	li $t0, 6
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
	li $t0, 10403
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	li $t0, 4615
	sw $t0, -528($fp)
	addi $t0, $fp, -92
	sw $t0, -532($fp)
	li $t0, 0
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
	li $t0, 21425
	sw $t0, -552($fp)
	addi $t0, $fp, -92
	sw $t0, -556($fp)
	li $t0, 1
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
	li $t0, 40416
	sw $t0, -576($fp)
	addi $t0, $fp, -92
	sw $t0, -580($fp)
	li $t0, 2
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
	li $t0, 56745
	sw $t0, -600($fp)
	addi $t0, $fp, -92
	sw $t0, -604($fp)
	li $t0, 3
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
	li $t0, 49228
	sw $t0, -624($fp)
	addi $t0, $fp, -92
	sw $t0, -628($fp)
	li $t0, 4
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
	li $t0, 44918
	sw $t0, -648($fp)
	addi $t0, $fp, -92
	sw $t0, -652($fp)
	li $t0, 5
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
	li $t0, 14741
	sw $t0, -672($fp)
	addi $t0, $fp, -92
	sw $t0, -676($fp)
	li $t0, 6
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
	li $t0, 48191
	sw $t0, -696($fp)
	addi $t0, $fp, -92
	sw $t0, -700($fp)
	li $t0, 7
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
	li $t0, 20458
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	li $t0, 34710
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	li $t0, 27083
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	li $t0, 33008
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	li $t0, 55287
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -776($fp)
	li $t0, 5834
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -788($fp)
	li $t0, 2370
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -800($fp)
	li $t0, 53104
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	li $t0, 38372
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	li $t0, 57985
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	li $t0, 16911
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	addi $t0, $fp, -32
	sw $t0, -852($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -872($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -892($fp)
	li $t0, 2
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
	lw $t0, -928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -932($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -952($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -972($fp)
	li $t0, 6
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
	lw $t0, -268($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -292($fp)
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -328($fp)
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -340($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1020($fp)
	li $t0, 0
	sw $t0, -1024($fp)
	li $t0, 4
	lw $t1, -1024($fp)
	mul $t0, $t0, $t1
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	lw $t1, -1020($fp)
	add $t0, $t0, $t1
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	lw $t1, 0($t0)
	sw $t1, -1036($fp)
	lw $t0, -1036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1040($fp)
	li $t0, 1
	sw $t0, -1044($fp)
	li $t0, 4
	lw $t1, -1044($fp)
	mul $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	lw $t1, -1040($fp)
	add $t0, $t0, $t1
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	lw $t1, 0($t0)
	sw $t1, -1056($fp)
	lw $t0, -1056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1060($fp)
	li $t0, 2
	sw $t0, -1064($fp)
	li $t0, 4
	lw $t1, -1064($fp)
	mul $t0, $t0, $t1
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	lw $t1, -1060($fp)
	add $t0, $t0, $t1
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	lw $t1, 0($t0)
	sw $t1, -1076($fp)
	lw $t0, -1076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1080($fp)
	li $t0, 3
	sw $t0, -1084($fp)
	li $t0, 4
	lw $t1, -1084($fp)
	mul $t0, $t0, $t1
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	lw $t1, -1080($fp)
	add $t0, $t0, $t1
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	lw $t1, 0($t0)
	sw $t1, -1096($fp)
	lw $t0, -1096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1100($fp)
	li $t0, 4
	sw $t0, -1104($fp)
	li $t0, 4
	lw $t1, -1104($fp)
	mul $t0, $t0, $t1
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	lw $t1, -1100($fp)
	add $t0, $t0, $t1
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	lw $t1, 0($t0)
	sw $t1, -1116($fp)
	lw $t0, -1116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1120($fp)
	li $t0, 5
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
	lw $t0, -1136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1140($fp)
	li $t0, 6
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
	lw $t0, -520($fp)
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1164($fp)
	li $t0, 0
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
	li $t0, 1
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
	addi $t0, $fp, -92
	sw $t0, -1204($fp)
	li $t0, 2
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
	addi $t0, $fp, -92
	sw $t0, -1224($fp)
	li $t0, 3
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
	addi $t0, $fp, -92
	sw $t0, -1244($fp)
	li $t0, 4
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
	addi $t0, $fp, -92
	sw $t0, -1264($fp)
	li $t0, 5
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
	addi $t0, $fp, -92
	sw $t0, -1284($fp)
	li $t0, 6
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
	addi $t0, $fp, -92
	sw $t0, -1304($fp)
	li $t0, 7
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
	lw $t0, -724($fp)
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -736($fp)
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -748($fp)
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -760($fp)
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -772($fp)
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -784($fp)
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -796($fp)
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -808($fp)
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -820($fp)
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -832($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -844($fp)
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1368($fp)
	li $t0, 0
	sw $t0, -1372($fp)
	lw $t0, -304($fp)
	sw $t0, -1376($fp)
	lw $t1, -1376($fp)
	li $t2, 0
	bne $t1, $t2, label936
	j label935
label935:
	li $t0, 1
	sw $t0, -1372($fp)
label936:
	li $t0, 52467
	sw $t0, -1380($fp)
	lw $t1, -1372($fp)
	lw $t2, -1380($fp)
	bge $t1, $t2, label933
	j label934
label933:
	li $t0, 1
	sw $t0, -1368($fp)
label934:
	lw $ra, -4($fp)
	lw $v0, -1368($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 37890
	sw $t0, -1384($fp)
	li $t0, 7282
	sw $t0, -1388($fp)
	li $t0, 37452
	sw $t0, -1392($fp)
	lw $t0, -1388($fp)
	lw $t1, -1392($fp)
	mul $t0, $t0, $t1
	sw $t0, -1396($fp)
	li $t0, 1
	sw $t0, -1400($fp)
	lw $t0, -1396($fp)
	lw $t1, -1400($fp)
	mul $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t0, -1384($fp)
	lw $t1, -1404($fp)
	add $t0, $t0, $t1
	sw $t0, -1408($fp)
	lw $t0, -280($fp)
	sw $t0, -1412($fp)
	li $t0, 22432
	sw $t0, -1416($fp)
	lw $t0, -1412($fp)
	lw $t1, -1416($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1420($fp)
	lw $t1, -1408($fp)
	lw $t2, -1420($fp)
	blt $t1, $t2, label937
	j label938
label937:
	li $t0, 0
	sw $t0, -1424($fp)
	li $t0, 60138
	sw $t0, -1428($fp)
	li $t0, 0
	lw $t1, -1428($fp)
	sub $t0, $t0, $t1
	sw $t0, -1432($fp)
	li $t0, 18489
	sw $t0, -1436($fp)
	lw $t0, -1432($fp)
	lw $t1, -1436($fp)
	sub $t0, $t0, $t1
	sw $t0, -1440($fp)
	lw $t0, -796($fp)
	sw $t0, -1444($fp)
	li $t0, 17084
	sw $t0, -1448($fp)
	lw $t0, -1444($fp)
	lw $t1, -1448($fp)
	mul $t0, $t0, $t1
	sw $t0, -1452($fp)
	lw $t0, -1440($fp)
	lw $t1, -1452($fp)
	sub $t0, $t0, $t1
	sw $t0, -1456($fp)
	addi $t0, $fp, -32
	sw $t0, -1460($fp)
	lw $t0, 12($fp)
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
	lw $t1, -1456($fp)
	lw $t2, -1476($fp)
	blt $t1, $t2, label942
	j label941
label942:
	li $t0, 0
	sw $t0, -1480($fp)
	addi $t0, $fp, -32
	sw $t0, -1484($fp)
	li $t0, 5
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
	lw $t1, -1500($fp)
	li $t2, 0
	bne $t1, $t2, label944
	j label943
label943:
	li $t0, 1
	sw $t0, -1480($fp)
label944:
	lw $t0, 12($fp)
	sw $t0, -1504($fp)
	lw $t0, 12($fp)
	sw $t0, -1508($fp)
	lw $t0, -1504($fp)
	lw $t1, -1508($fp)
	mul $t0, $t0, $t1
	sw $t0, -1512($fp)
	lw $t0, -1480($fp)
	lw $t1, -1512($fp)
	add $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t1, -1516($fp)
	li $t2, 0
	bne $t1, $t2, label940
	j label941
label940:
	li $t0, 1
	sw $t0, -1424($fp)
label941:
	j label939
label938:
	li $t0, 0
	sw $t0, -1520($fp)
	addi $t0, $fp, -92
	sw $t0, -1524($fp)
	li $t0, 0
	sw $t0, -1528($fp)
	li $t0, 27487
	sw $t0, -1532($fp)
	lw $t1, -1532($fp)
	li $t2, 0
	bne $t1, $t2, label950
	j label949
label949:
	li $t0, 1
	sw $t0, -1528($fp)
label950:
	li $t0, 4
	lw $t1, -1528($fp)
	mul $t0, $t0, $t1
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	lw $t1, -1524($fp)
	add $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	lw $t1, 0($t0)
	sw $t1, -1544($fp)
	lw $t1, -1544($fp)
	li $t2, 0
	bne $t1, $t2, label948
	j label947
label948:
	li $t0, 0
	sw $t0, -1548($fp)
	li $t0, 0
	sw $t0, -1552($fp)
	li $t0, 44468
	sw $t0, -1556($fp)
	lw $t0, -784($fp)
	sw $t0, -1560($fp)
	lw $t1, -1556($fp)
	lw $t2, -1560($fp)
	blt $t1, $t2, label953
	j label954
label953:
	li $t0, 1
	sw $t0, -1552($fp)
label954:
	li $t0, 55641
	sw $t0, -1564($fp)
	lw $t1, -1552($fp)
	lw $t2, -1564($fp)
	bgt $t1, $t2, label951
	j label952
label951:
	li $t0, 1
	sw $t0, -1548($fp)
label952:
	li $t0, 18189
	sw $t0, -1568($fp)
	li $t0, 2390
	sw $t0, -1572($fp)
	lw $t0, -1568($fp)
	lw $t1, -1572($fp)
	add $t0, $t0, $t1
	sw $t0, -1576($fp)
	li $t0, 0
	sw $t0, -1580($fp)
	addi $t0, $fp, -92
	sw $t0, -1584($fp)
	li $t0, 2
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
	lw $t1, -1600($fp)
	li $t2, 0
	bne $t1, $t2, label957
	j label956
label957:
	lw $t0, -736($fp)
	sw $t0, -1604($fp)
	lw $t1, -1604($fp)
	li $t2, 0
	bne $t1, $t2, label955
	j label956
label955:
	li $t0, 1
	sw $t0, -1580($fp)
label956:
	li $t0, 0
	sw $t0, -1608($fp)
	lw $t0, -844($fp)
	sw $t0, -1612($fp)
	lw $t0, -304($fp)
	sw $t0, -1616($fp)
	lw $t0, -1612($fp)
	lw $t1, -1616($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1620($fp)
	li $t0, 0
	sw $t0, -1624($fp)
	li $t0, 20274
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -1632($fp)
	li $t0, 0
	sw $t0, -1636($fp)
	li $t0, 32706
	sw $t0, -1640($fp)
	lw $t1, -1640($fp)
	li $t2, 0
	bne $t1, $t2, label966
	j label965
label966:
	li $t0, 58421
	sw $t0, -1644($fp)
	lw $t1, -1644($fp)
	li $t2, 0
	bne $t1, $t2, label963
	j label965
label965:
	li $t0, 37587
	sw $t0, -1648($fp)
	lw $t1, -1648($fp)
	li $t2, 0
	bne $t1, $t2, label963
	j label964
label963:
	li $t0, 1
	sw $t0, -1636($fp)
label964:
	li $t0, 0
	sw $t0, -1652($fp)
	lw $t0, -280($fp)
	sw $t0, -1656($fp)
	li $t0, 0
	lw $t1, -1656($fp)
	sub $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $t1, -1660($fp)
	li $t2, 0
	bne $t1, $t2, label969
	j label968
label969:
	lw $t0, -268($fp)
	sw $t0, -1664($fp)
	lw $t1, -1664($fp)
	li $t2, 0
	bne $t1, $t2, label967
	j label968
label967:
	li $t0, 1
	sw $t0, -1652($fp)
label968:
	li $t0, 2208
	sw $t0, -1668($fp)
	li $t0, 42955
	sw $t0, -1672($fp)
	lw $t0, -1668($fp)
	lw $t1, -1672($fp)
	add $t0, $t0, $t1
	sw $t0, -1676($fp)
	li $t0, 52587
	sw $t0, -1680($fp)
	lw $t0, -1676($fp)
	lw $t1, -1680($fp)
	sub $t0, $t0, $t1
	sw $t0, -1684($fp)
	lw $t0, -520($fp)
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -1692($fp)
	addi $t0, $fp, -32
	sw $t0, -1696($fp)
	li $t0, 1
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
	li $t0, 47286
	sw $t0, -1720($fp)
	lw $t1, -1720($fp)
	li $t2, 0
	bne $t1, $t2, label972
	j label971
label972:
	lw $t0, -280($fp)
	sw $t0, -1724($fp)
	lw $t1, -1724($fp)
	li $t2, 0
	bne $t1, $t2, label970
	j label971
label970:
	li $t0, 1
	sw $t0, -1716($fp)
label971:
	li $t0, 0
	sw $t0, -1728($fp)
	li $t0, 0
	sw $t0, -1732($fp)
	lw $t0, -832($fp)
	sw $t0, -1736($fp)
	li $t0, 42849
	sw $t0, -1740($fp)
	lw $t1, -1736($fp)
	lw $t2, -1740($fp)
	bgt $t1, $t2, label975
	j label976
label975:
	li $t0, 1
	sw $t0, -1732($fp)
label976:
	lw $t0, -304($fp)
	sw $t0, -1744($fp)
	lw $t1, -1732($fp)
	lw $t2, -1744($fp)
	blt $t1, $t2, label973
	j label974
label973:
	li $t0, 1
	sw $t0, -1728($fp)
label974:
	addi $sp, $sp, -4
	lw $t0, -1684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1728($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1748($fp)
	addi $sp, $sp, 24
	li $t0, 35217
	sw $t0, -1752($fp)
	lw $t0, -1748($fp)
	lw $t1, -1752($fp)
	sub $t0, $t0, $t1
	sw $t0, -1756($fp)
	lw $t0, -280($fp)
	sw $t0, -1760($fp)
	li $t0, 59040
	sw $t0, -1764($fp)
	lw $t0, -1760($fp)
	lw $t1, -1764($fp)
	sub $t0, $t0, $t1
	sw $t0, -1768($fp)
	addi $sp, $sp, -4
	lw $t0, -1632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1768($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1772($fp)
	addi $sp, $sp, 24
	lw $t1, -1772($fp)
	li $t2, 0
	bne $t1, $t2, label962
	j label961
label962:
	li $t0, 31258
	sw $t0, -1776($fp)
	lw $t1, -1776($fp)
	li $t2, 0
	bne $t1, $t2, label960
	j label961
label960:
	li $t0, 1
	sw $t0, -1624($fp)
label961:
	li $t0, 0
	sw $t0, -1780($fp)
	lw $t0, -340($fp)
	sw $t0, -1784($fp)
	li $t0, 0
	lw $t1, -1784($fp)
	sub $t0, $t0, $t1
	sw $t0, -1788($fp)
	lw $t1, -1788($fp)
	li $t2, 0
	bne $t1, $t2, label978
	j label977
label977:
	li $t0, 1
	sw $t0, -1780($fp)
label978:
	li $t0, 0
	sw $t0, -1792($fp)
	lw $t0, -832($fp)
	sw $t0, -1796($fp)
	li $t0, 0
	lw $t1, -1796($fp)
	sub $t0, $t0, $t1
	sw $t0, -1800($fp)
	lw $t1, -1800($fp)
	li $t2, 0
	bne $t1, $t2, label980
	j label979
label979:
	li $t0, 1
	sw $t0, -1792($fp)
label980:
	addi $sp, $sp, -4
	lw $t0, -1620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1792($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1804($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -1808($fp)
	li $t0, 0
	sw $t0, -1812($fp)
	lw $t0, -304($fp)
	sw $t0, -1816($fp)
	lw $t1, -1816($fp)
	li $t2, 0
	bne $t1, $t2, label984
	j label983
label983:
	li $t0, 1
	sw $t0, -1812($fp)
label984:
	li $t0, 2368
	sw $t0, -1820($fp)
	lw $t1, -1812($fp)
	lw $t2, -1820($fp)
	bgt $t1, $t2, label981
	j label982
label981:
	li $t0, 1
	sw $t0, -1808($fp)
label982:
	li $t0, 0
	sw $t0, -1824($fp)
	addi $t0, $fp, -60
	sw $t0, -1828($fp)
	lw $t0, -340($fp)
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
	li $t0, 59157
	sw $t0, -1848($fp)
	lw $t1, -1844($fp)
	lw $t2, -1848($fp)
	bgt $t1, $t2, label985
	j label986
label985:
	li $t0, 1
	sw $t0, -1824($fp)
label986:
	li $t0, 0
	sw $t0, -1852($fp)
	lw $t0, 12($fp)
	sw $t0, -1856($fp)
	lw $t0, -736($fp)
	sw $t0, -1860($fp)
	lw $t1, -1856($fp)
	lw $t2, -1860($fp)
	ble $t1, $t2, label987
	j label988
label987:
	li $t0, 1
	sw $t0, -1852($fp)
label988:
	li $t0, 2294
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -1868($fp)
	addi $sp, $sp, -4
	lw $t0, -1804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1868($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1872($fp)
	addi $sp, $sp, 24
	lw $t1, -1872($fp)
	li $t2, 0
	bne $t1, $t2, label959
	j label958
label958:
	li $t0, 1
	sw $t0, -1608($fp)
label959:
	addi $sp, $sp, -4
	lw $t0, -1548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1608($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1876($fp)
	addi $sp, $sp, 20
	lw $t1, -1876($fp)
	li $t2, 0
	bne $t1, $t2, label945
	j label947
label947:
	li $t0, 19207
	sw $t0, -1880($fp)
	lw $t1, -1880($fp)
	li $t2, 0
	bne $t1, $t2, label945
	j label946
label945:
	li $t0, 1
	sw $t0, -1520($fp)
label946:
	lw $ra, -4($fp)
	lw $v0, -1520($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label939:
	li $t0, 0
	sw $t0, -1884($fp)
	li $t0, 1365
	sw $t0, -1888($fp)
	lw $t1, -1888($fp)
	li $t2, 0
	bne $t1, $t2, label992
	j label994
label994:
	li $t0, 50243
	sw $t0, -1892($fp)
	lw $t1, -1892($fp)
	li $t2, 0
	bne $t1, $t2, label992
	j label993
label992:
	li $t0, 1
	sw $t0, -1884($fp)
label993:
	lw $t0, -1884($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -1900($fp)
	lw $t1, -1900($fp)
	li $t2, 0
	bne $t1, $t2, label989
	j label990
label989:
	li $t0, 0
	sw $t0, -1904($fp)
	li $t0, 0
	sw $t0, -1908($fp)
	li $t0, 9892
	sw $t0, -1912($fp)
	lw $t1, -1912($fp)
	li $t2, 0
	bne $t1, $t2, label998
	j label997
label997:
	li $t0, 1
	sw $t0, -1908($fp)
label998:
	lw $t0, 12($fp)
	sw $t0, -1916($fp)
	lw $t0, -1908($fp)
	lw $t1, -1916($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1920($fp)
	lw $t0, -724($fp)
	sw $t0, -1924($fp)
	li $t0, 0
	lw $t1, -1924($fp)
	sub $t0, $t0, $t1
	sw $t0, -1928($fp)
	li $t0, 0
	sw $t0, -1932($fp)
	addi $t0, $fp, -32
	sw $t0, -1936($fp)
	li $t0, 6
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
	bne $t1, $t2, label1001
	j label1000
label1001:
	lw $t0, 12($fp)
	sw $t0, -1956($fp)
	lw $t1, -1956($fp)
	li $t2, 0
	bne $t1, $t2, label999
	j label1000
label999:
	li $t0, 1
	sw $t0, -1932($fp)
label1000:
	li $t0, 37696
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -1964($fp)
	li $t0, 0
	sw $t0, -1968($fp)
	lw $t0, 12($fp)
	sw $t0, -1972($fp)
	lw $t0, 4($fp)
	sw $t0, -1976($fp)
	lw $t0, -1972($fp)
	lw $t1, -1976($fp)
	add $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, 4($fp)
	sw $t0, -1984($fp)
	lw $t1, -1980($fp)
	lw $t2, -1984($fp)
	blt $t1, $t2, label1002
	j label1003
label1002:
	li $t0, 1
	sw $t0, -1968($fp)
label1003:
	addi $sp, $sp, -4
	lw $t0, -1920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1968($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1988($fp)
	addi $sp, $sp, 24
	lw $t1, -1988($fp)
	li $t2, 0
	bne $t1, $t2, label996
	j label995
label995:
	li $t0, 1
	sw $t0, -1904($fp)
label996:
	li $t0, 0
	lw $t1, -1904($fp)
	sub $t0, $t0, $t1
	sw $t0, -1992($fp)
	lw $ra, -4($fp)
	lw $v0, -1992($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label991
label990:
	lw $t0, -736($fp)
	sw $t0, -1996($fp)
	lw $t1, -1996($fp)
	li $t2, 0
	bne $t1, $t2, label1004
	j label1005
label1004:
	addi $t0, $fp, -60
	sw $t0, -2000($fp)
	li $t0, 0
	sw $t0, -2004($fp)
	lw $t0, -772($fp)
	sw $t0, -2008($fp)
	li $t0, 45936
	sw $t0, -2012($fp)
	lw $t0, -2008($fp)
	lw $t1, -2012($fp)
	sub $t0, $t0, $t1
	sw $t0, -2016($fp)
	li $t0, 50217
	sw $t0, -2020($fp)
	lw $t1, -2016($fp)
	lw $t2, -2020($fp)
	ble $t1, $t2, label1007
	j label1008
label1007:
	li $t0, 1
	sw $t0, -2004($fp)
label1008:
	li $t0, 4
	lw $t1, -2004($fp)
	mul $t0, $t0, $t1
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	lw $t1, -2000($fp)
	add $t0, $t0, $t1
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	lw $t1, 0($t0)
	sw $t1, -2032($fp)
	li $t0, 43721
	sw $t0, -2036($fp)
	lw $t0, -328($fp)
	sw $t0, -2040($fp)
	lw $t0, -2036($fp)
	lw $t1, -2040($fp)
	mul $t0, $t0, $t1
	sw $t0, -2044($fp)
	lw $t0, -304($fp)
	sw $t0, -2048($fp)
	lw $t0, -2044($fp)
	lw $t1, -2048($fp)
	mul $t0, $t0, $t1
	sw $t0, -2052($fp)
	lw $t0, -820($fp)
	sw $t0, -2056($fp)
	li $t0, 0
	lw $t1, -2056($fp)
	sub $t0, $t0, $t1
	sw $t0, -2060($fp)
	addi $t0, $fp, -60
	sw $t0, -2064($fp)
	li $t0, 6
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
	lw $t0, -340($fp)
	sw $t0, -2084($fp)
	lw $t0, -2080($fp)
	lw $t1, -2084($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2088($fp)
	addi $sp, $sp, -4
	lw $t0, -2052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2088($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2092($fp)
	addi $sp, $sp, 16
	lw $t0, -2032($fp)
	lw $t1, -2092($fp)
	mul $t0, $t0, $t1
	sw $t0, -2096($fp)
	j label1006
label1005:
	li $t0, 0
	sw $t0, -2100($fp)
	li $t0, 0
	sw $t0, -2104($fp)
	lw $t0, -772($fp)
	sw $t0, -2108($fp)
	lw $t0, 12($fp)
	sw $t0, -2112($fp)
	lw $t0, -2108($fp)
	lw $t1, -2112($fp)
	add $t0, $t0, $t1
	sw $t0, -2116($fp)
	li $t0, 0
	sw $t0, -2120($fp)
	li $t0, 32263
	sw $t0, -2124($fp)
	li $t0, 29386
	sw $t0, -2128($fp)
	lw $t0, -2124($fp)
	lw $t1, -2128($fp)
	sub $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $t0, -748($fp)
	sw $t0, -2136($fp)
	lw $t0, -772($fp)
	sw $t0, -2140($fp)
	lw $t0, -2136($fp)
	lw $t1, -2140($fp)
	sub $t0, $t0, $t1
	sw $t0, -2144($fp)
	li $t0, 0
	sw $t0, -2148($fp)
	lw $t0, 12($fp)
	sw $t0, -2152($fp)
	li $t0, 0
	lw $t1, -2152($fp)
	sub $t0, $t0, $t1
	sw $t0, -2156($fp)
	li $t0, 6331
	sw $t0, -2160($fp)
	lw $t1, -2156($fp)
	lw $t2, -2160($fp)
	beq $t1, $t2, label1015
	j label1016
label1015:
	li $t0, 1
	sw $t0, -2148($fp)
label1016:
	li $t0, 0
	sw $t0, -2164($fp)
	addi $t0, $fp, -60
	sw $t0, -2168($fp)
	lw $t0, -760($fp)
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
	lw $t0, -280($fp)
	sw $t0, -2188($fp)
	lw $t1, -2184($fp)
	lw $t2, -2188($fp)
	bgt $t1, $t2, label1017
	j label1018
label1017:
	li $t0, 1
	sw $t0, -2164($fp)
label1018:
	lw $t0, -520($fp)
	sw $t0, -2192($fp)
	li $t0, 0
	lw $t1, -2192($fp)
	sub $t0, $t0, $t1
	sw $t0, -2196($fp)
	lw $t0, -292($fp)
	sw $t0, -2200($fp)
	lw $t0, -2196($fp)
	lw $t1, -2200($fp)
	add $t0, $t0, $t1
	sw $t0, -2204($fp)
	addi $sp, $sp, -4
	lw $t0, -2148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2204($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2208($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -2132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2208($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2212($fp)
	addi $sp, $sp, 16
	lw $t0, -340($fp)
	sw $t0, -2216($fp)
	lw $t1, -2212($fp)
	lw $t2, -2216($fp)
	ble $t1, $t2, label1013
	j label1014
label1013:
	li $t0, 1
	sw $t0, -2120($fp)
label1014:
	li $t0, 0
	sw $t0, -2220($fp)
	lw $t0, -748($fp)
	sw $t0, -2224($fp)
	lw $t1, -2224($fp)
	li $t2, 0
	bne $t1, $t2, label1019
	j label1022
label1022:
	li $t0, 51967
	sw $t0, -2228($fp)
	lw $t1, -2228($fp)
	li $t2, 0
	bne $t1, $t2, label1019
	j label1021
label1021:
	lw $t0, 8($fp)
	sw $t0, -2232($fp)
	lw $t1, -2232($fp)
	li $t2, 0
	bne $t1, $t2, label1019
	j label1020
label1019:
	li $t0, 1
	sw $t0, -2220($fp)
label1020:
	li $t0, 0
	sw $t0, -2236($fp)
	li $t0, 46362
	sw $t0, -2240($fp)
	li $t0, 30055
	sw $t0, -2244($fp)
	lw $t1, -2240($fp)
	lw $t2, -2244($fp)
	bge $t1, $t2, label1023
	j label1024
label1023:
	li $t0, 1
	sw $t0, -2236($fp)
label1024:
	lw $t0, -832($fp)
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -2252($fp)
	addi $sp, $sp, -4
	lw $t0, -2116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2252($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2256($fp)
	addi $sp, $sp, 24
	lw $t1, -2256($fp)
	li $t2, 0
	bne $t1, $t2, label1011
	j label1012
label1011:
	li $t0, 1
	sw $t0, -2104($fp)
label1012:
	li $t0, 58918
	sw $t0, -2260($fp)
	lw $t0, -2104($fp)
	lw $t1, -2260($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2264($fp)
	lw $t0, -340($fp)
	sw $t0, -2268($fp)
	li $t0, 1944
	sw $t0, -2272($fp)
	lw $t0, -2268($fp)
	lw $t1, -2272($fp)
	mul $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $t1, -2264($fp)
	lw $t2, -2276($fp)
	bne $t1, $t2, label1009
	j label1010
label1009:
	li $t0, 1
	sw $t0, -2100($fp)
label1010:
label1006:
label991:
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	lw $t0, -268($fp)
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -2424($fp)
	lw $t0, -2424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -292($fp)
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -328($fp)
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -340($fp)
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2448($fp)
	li $t0, 0
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
	lw $t0, -2464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2468($fp)
	li $t0, 1
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
	lw $t0, -2484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2488($fp)
	li $t0, 2
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
	addi $t0, $fp, -60
	sw $t0, -2508($fp)
	li $t0, 3
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
	addi $t0, $fp, -60
	sw $t0, -2528($fp)
	li $t0, 4
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
	addi $t0, $fp, -60
	sw $t0, -2548($fp)
	li $t0, 5
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
	addi $t0, $fp, -60
	sw $t0, -2568($fp)
	li $t0, 6
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
	lw $t0, -520($fp)
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -2592($fp)
	li $t0, 0
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
	addi $t0, $fp, -92
	sw $t0, -2612($fp)
	li $t0, 1
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
	addi $t0, $fp, -92
	sw $t0, -2632($fp)
	li $t0, 2
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
	addi $t0, $fp, -92
	sw $t0, -2652($fp)
	li $t0, 3
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
	addi $t0, $fp, -92
	sw $t0, -2672($fp)
	li $t0, 4
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
	addi $t0, $fp, -92
	sw $t0, -2692($fp)
	li $t0, 5
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
	addi $t0, $fp, -92
	sw $t0, -2712($fp)
	li $t0, 6
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
	addi $t0, $fp, -92
	sw $t0, -2732($fp)
	li $t0, 7
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
	lw $t0, -724($fp)
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -736($fp)
	sw $t0, -2756($fp)
	lw $t0, -2756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -748($fp)
	sw $t0, -2760($fp)
	lw $t0, -2760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -760($fp)
	sw $t0, -2764($fp)
	lw $t0, -2764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -772($fp)
	sw $t0, -2768($fp)
	lw $t0, -2768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -784($fp)
	sw $t0, -2772($fp)
	lw $t0, -2772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -796($fp)
	sw $t0, -2776($fp)
	lw $t0, -2776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -808($fp)
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -820($fp)
	sw $t0, -2784($fp)
	lw $t0, -2784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -832($fp)
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -844($fp)
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2796($fp)
	addi $t0, $fp, -60
	sw $t0, -2800($fp)
	li $t0, 0
	sw $t0, -2804($fp)
	li $t0, 4
	lw $t1, -2804($fp)
	mul $t0, $t0, $t1
	sw $t0, -2808($fp)
	lw $t0, -2808($fp)
	lw $t1, -2800($fp)
	add $t0, $t0, $t1
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	lw $t1, 0($t0)
	sw $t1, -2816($fp)
	li $t0, 0
	lw $t1, -2816($fp)
	sub $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $t0, -832($fp)
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -2828($fp)
	lw $t0, -772($fp)
	sw $t0, -2832($fp)
	li $t0, 0
	sw $t0, -2836($fp)
	li $t0, 0
	sw $t0, -2840($fp)
	lw $t0, -304($fp)
	sw $t0, -2844($fp)
	lw $t0, -340($fp)
	sw $t0, -2848($fp)
	lw $t1, -2844($fp)
	lw $t2, -2848($fp)
	ble $t1, $t2, label1029
	j label1030
label1029:
	li $t0, 1
	sw $t0, -2840($fp)
label1030:
	li $t0, 39531
	sw $t0, -2852($fp)
	lw $t1, -2840($fp)
	lw $t2, -2852($fp)
	bge $t1, $t2, label1027
	j label1028
label1027:
	li $t0, 1
	sw $t0, -2836($fp)
label1028:
	addi $sp, $sp, -4
	lw $t0, -2828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2836($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2856($fp)
	addi $sp, $sp, 16
	lw $t1, -2820($fp)
	lw $t2, -2856($fp)
	blt $t1, $t2, label1025
	j label1026
label1025:
	li $t0, 1
	sw $t0, -2796($fp)
label1026:
	lw $ra, -4($fp)
	lw $v0, -2796($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1368
	li $t0, 16831
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
	li $t0, 17526
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
	li $t0, 4032
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
	li $t0, 54017
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
	li $t0, 35715
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
	li $t0, 6422
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	addi $t0, $fp, -24
	sw $t0, -160($fp)
	lw $t0, -152($fp)
	sw $t0, -164($fp)
	li $t0, 32950
	sw $t0, -168($fp)
	lw $t0, -164($fp)
	lw $t1, -168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -172($fp)
	li $t0, 4
	lw $t1, -172($fp)
	mul $t0, $t0, $t1
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	lw $t1, -160($fp)
	add $t0, $t0, $t1
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	lw $t1, 0($t0)
	sw $t1, -184($fp)
	li $t0, 25820
	sw $t0, -216($fp)
	addi $t0, $fp, -212
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
	li $t0, 25629
	sw $t0, -240($fp)
	addi $t0, $fp, -212
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
	li $t0, 34315
	sw $t0, -264($fp)
	addi $t0, $fp, -212
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
	li $t0, 10528
	sw $t0, -288($fp)
	addi $t0, $fp, -212
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
	li $t0, 63326
	sw $t0, -312($fp)
	addi $t0, $fp, -212
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
	li $t0, 52764
	sw $t0, -336($fp)
	addi $t0, $fp, -212
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
	li $t0, 58451
	sw $t0, -360($fp)
	addi $t0, $fp, -212
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
	lw $t0, 4($fp)
	sw $t0, -384($fp)
	addi $t0, $fp, -212
	sw $t0, -388($fp)
	li $t0, 0
	sw $t0, -392($fp)
	li $t0, 0
	sw $t0, -396($fp)
	addi $t0, $fp, -24
	sw $t0, -400($fp)
	li $t0, 1
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
	lw $t1, -416($fp)
	li $t2, 0
	bne $t1, $t2, label1034
	j label1033
label1033:
	li $t0, 1
	sw $t0, -396($fp)
label1034:
	li $t0, 21318
	sw $t0, -420($fp)
	li $t0, 57557
	sw $t0, -424($fp)
	lw $t0, -420($fp)
	lw $t1, -424($fp)
	add $t0, $t0, $t1
	sw $t0, -428($fp)
	li $t0, 45988
	sw $t0, -432($fp)
	lw $t0, -428($fp)
	lw $t1, -432($fp)
	add $t0, $t0, $t1
	sw $t0, -436($fp)
	li $t0, 0
	sw $t0, -440($fp)
	addi $t0, $fp, -24
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
	lw $t0, 12($fp)
	sw $t0, -464($fp)
	lw $t1, -460($fp)
	lw $t2, -464($fp)
	bne $t1, $t2, label1035
	j label1036
label1035:
	li $t0, 1
	sw $t0, -440($fp)
label1036:
	li $t0, 0
	sw $t0, -468($fp)
	lw $t0, 20($fp)
	sw $t0, -472($fp)
	lw $t0, 16($fp)
	sw $t0, -476($fp)
	lw $t0, -472($fp)
	lw $t1, -476($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -480($fp)
	lw $t0, 4($fp)
	sw $t0, -484($fp)
	lw $t1, -480($fp)
	lw $t2, -484($fp)
	ble $t1, $t2, label1037
	j label1038
label1037:
	li $t0, 1
	sw $t0, -468($fp)
label1038:
	li $t0, 0
	sw $t0, -488($fp)
	li $t0, 7682
	sw $t0, -492($fp)
	li $t0, 33164
	sw $t0, -496($fp)
	lw $t0, -492($fp)
	lw $t1, -496($fp)
	mul $t0, $t0, $t1
	sw $t0, -500($fp)
	lw $t1, -500($fp)
	li $t2, 0
	bne $t1, $t2, label1041
	j label1040
label1041:
	li $t0, 43132
	sw $t0, -504($fp)
	lw $t1, -504($fp)
	li $t2, 0
	bne $t1, $t2, label1039
	j label1040
label1039:
	li $t0, 1
	sw $t0, -488($fp)
label1040:
	addi $sp, $sp, -4
	lw $t0, -396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -488($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -508($fp)
	addi $sp, $sp, 24
	li $t0, 12715
	sw $t0, -512($fp)
	lw $t0, -508($fp)
	lw $t1, -512($fp)
	add $t0, $t0, $t1
	sw $t0, -516($fp)
	li $t0, 37135
	sw $t0, -520($fp)
	lw $t0, 4($fp)
	sw $t0, -524($fp)
	lw $t0, -520($fp)
	lw $t1, -524($fp)
	mul $t0, $t0, $t1
	sw $t0, -528($fp)
	lw $t1, -516($fp)
	lw $t2, -528($fp)
	ble $t1, $t2, label1031
	j label1032
label1031:
	li $t0, 1
	sw $t0, -392($fp)
label1032:
	li $t0, 4
	lw $t1, -392($fp)
	mul $t0, $t0, $t1
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	lw $t1, -388($fp)
	add $t0, $t0, $t1
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	lw $t1, 0($t0)
	sw $t1, -540($fp)
	li $t0, 57271
	sw $t0, -616($fp)
	addi $t0, $fp, -580
	sw $t0, -620($fp)
	li $t0, 0
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
	li $t0, 14660
	sw $t0, -640($fp)
	addi $t0, $fp, -580
	sw $t0, -644($fp)
	li $t0, 1
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
	li $t0, 33692
	sw $t0, -664($fp)
	addi $t0, $fp, -580
	sw $t0, -668($fp)
	li $t0, 2
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
	li $t0, 43539
	sw $t0, -688($fp)
	addi $t0, $fp, -580
	sw $t0, -692($fp)
	li $t0, 3
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
	li $t0, 54191
	sw $t0, -712($fp)
	addi $t0, $fp, -580
	sw $t0, -716($fp)
	li $t0, 4
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
	li $t0, 50524
	sw $t0, -736($fp)
	addi $t0, $fp, -580
	sw $t0, -740($fp)
	li $t0, 5
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
	li $t0, 61065
	sw $t0, -760($fp)
	addi $t0, $fp, -580
	sw $t0, -764($fp)
	li $t0, 6
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
	li $t0, 58223
	sw $t0, -784($fp)
	addi $t0, $fp, -580
	sw $t0, -788($fp)
	li $t0, 7
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
	li $t0, 39005
	sw $t0, -808($fp)
	addi $t0, $fp, -580
	sw $t0, -812($fp)
	li $t0, 8
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
	li $t0, 31244
	sw $t0, -832($fp)
	addi $t0, $fp, -580
	sw $t0, -836($fp)
	li $t0, 9
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
	li $t0, 64646
	sw $t0, -856($fp)
	addi $t0, $fp, -612
	sw $t0, -860($fp)
	li $t0, 0
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
	li $t0, 6419
	sw $t0, -880($fp)
	addi $t0, $fp, -612
	sw $t0, -884($fp)
	li $t0, 1
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
	li $t0, 57064
	sw $t0, -904($fp)
	addi $t0, $fp, -612
	sw $t0, -908($fp)
	li $t0, 2
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
	li $t0, 24739
	sw $t0, -928($fp)
	addi $t0, $fp, -612
	sw $t0, -932($fp)
	li $t0, 3
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
	li $t0, 40734
	sw $t0, -952($fp)
	addi $t0, $fp, -612
	sw $t0, -956($fp)
	li $t0, 4
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
	li $t0, 2056
	sw $t0, -976($fp)
	addi $t0, $fp, -612
	sw $t0, -980($fp)
	li $t0, 5
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
	li $t0, 22529
	sw $t0, -1000($fp)
	addi $t0, $fp, -612
	sw $t0, -1004($fp)
	li $t0, 6
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
	li $t0, 27962
	sw $t0, -1024($fp)
	addi $t0, $fp, -612
	sw $t0, -1028($fp)
	li $t0, 7
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
	li $t0, 0
	sw $t0, -1048($fp)
	lw $t0, 12($fp)
	sw $t0, -1052($fp)
	li $t0, 30211
	sw $t0, -1056($fp)
	lw $t0, -1052($fp)
	lw $t1, -1056($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1060($fp)
	li $t0, 0
	sw $t0, -1064($fp)
	li $t0, 60507
	sw $t0, -1068($fp)
	lw $t1, -1068($fp)
	li $t2, 0
	bne $t1, $t2, label1045
	j label1044
label1044:
	li $t0, 1
	sw $t0, -1064($fp)
label1045:
	li $t0, 0
	lw $t1, -1064($fp)
	sub $t0, $t0, $t1
	sw $t0, -1072($fp)
	addi $t0, $fp, -580
	sw $t0, -1076($fp)
	lw $t0, 4($fp)
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
	lw $t0, 16($fp)
	sw $t0, -1096($fp)
	lw $t0, -1092($fp)
	lw $t1, -1096($fp)
	mul $t0, $t0, $t1
	sw $t0, -1100($fp)
	addi $sp, $sp, -4
	lw $t0, -1060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1100($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1104($fp)
	addi $sp, $sp, 16
	lw $t1, -1104($fp)
	li $t2, 0
	bne $t1, $t2, label1043
	j label1042
label1042:
	li $t0, 1
	sw $t0, -1048($fp)
label1043:
	lw $t0, -1048($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -1108($fp)
	addi $t0, $fp, -612
	sw $t0, -1112($fp)
	addi $t0, $fp, -580
	sw $t0, -1116($fp)
	li $t0, 8
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
	li $t0, 4
	lw $t1, -1132($fp)
	mul $t0, $t0, $t1
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	lw $t1, -1112($fp)
	add $t0, $t0, $t1
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	lw $t1, 0($t0)
	sw $t1, -1144($fp)
label1046:
	li $t0, 0
	sw $t0, -1148($fp)
	lw $t0, 4($fp)
	sw $t0, -1152($fp)
	li $t0, 41406
	sw $t0, -1156($fp)
	lw $t0, -1152($fp)
	lw $t1, -1156($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1160($fp)
	li $t0, 0
	lw $t1, -1160($fp)
	sub $t0, $t0, $t1
	sw $t0, -1164($fp)
	lw $t1, -1164($fp)
	li $t2, 0
	bne $t1, $t2, label1049
	j label1051
label1051:
	li $t0, 11524
	sw $t0, -1168($fp)
	li $t0, 59422
	sw $t0, -1172($fp)
	lw $t1, -1168($fp)
	lw $t2, -1172($fp)
	bge $t1, $t2, label1049
	j label1050
label1049:
	li $t0, 1
	sw $t0, -1148($fp)
label1050:
	lw $t0, -1148($fp)
	sw $t0, 20($fp)
	lw $t0, 20($fp)
	sw $t0, -1176($fp)
	lw $t1, -1176($fp)
	li $t2, 0
	bne $t1, $t2, label1047
	j label1048
label1047:
label1052:
	lw $t0, 12($fp)
	sw $t0, -1180($fp)
	li $t0, 0
	lw $t1, -1180($fp)
	sub $t0, $t0, $t1
	sw $t0, -1184($fp)
	lw $t1, -1184($fp)
	li $t2, 0
	bne $t1, $t2, label1053
	j label1054
label1053:
	li $t0, 0
	sw $t0, -1188($fp)
	li $t0, 33428
	sw $t0, -1192($fp)
	lw $t1, -1192($fp)
	li $t2, 0
	bne $t1, $t2, label1055
	j label1057
label1057:
	li $t0, 0
	sw $t0, -1196($fp)
	lw $t0, -152($fp)
	sw $t0, -1200($fp)
	li $t0, 38770
	sw $t0, -1204($fp)
	lw $t1, -1200($fp)
	lw $t2, -1204($fp)
	ble $t1, $t2, label1060
	j label1059
label1060:
	li $t0, 23515
	sw $t0, -1208($fp)
	lw $t1, -1208($fp)
	li $t2, 0
	bne $t1, $t2, label1058
	j label1059
label1058:
	li $t0, 1
	sw $t0, -1196($fp)
label1059:
	lw $t0, 4($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -1216($fp)
	li $t0, 1635
	sw $t0, -1220($fp)
	li $t0, 31780
	sw $t0, -1224($fp)
	lw $t0, -1220($fp)
	lw $t1, -1224($fp)
	mul $t0, $t0, $t1
	sw $t0, -1228($fp)
	li $t0, 1
	sw $t0, -1232($fp)
	lw $t0, -1228($fp)
	lw $t1, -1232($fp)
	mul $t0, $t0, $t1
	sw $t0, -1236($fp)
	li $t0, 0
	sw $t0, -1240($fp)
	lw $t0, 4($fp)
	sw $t0, -1244($fp)
	lw $t0, 4($fp)
	sw $t0, -1248($fp)
	lw $t1, -1244($fp)
	lw $t2, -1248($fp)
	beq $t1, $t2, label1063
	j label1062
label1063:
	li $t0, 57512
	sw $t0, -1252($fp)
	lw $t1, -1252($fp)
	li $t2, 0
	bne $t1, $t2, label1061
	j label1062
label1061:
	li $t0, 1
	sw $t0, -1240($fp)
label1062:
	addi $sp, $sp, -4
	lw $t0, -1196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1240($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1256($fp)
	addi $sp, $sp, 20
	lw $t1, -1256($fp)
	li $t2, 0
	bne $t1, $t2, label1055
	j label1056
label1055:
	li $t0, 1
	sw $t0, -1188($fp)
label1056:
	j label1052
label1054:
	j label1046
label1048:
	addi $t0, $fp, -24
	sw $t0, -1260($fp)
	li $t0, 0
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
	lw $t0, -1276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1280($fp)
	li $t0, 1
	sw $t0, -1284($fp)
	li $t0, 4
	lw $t1, -1284($fp)
	mul $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	lw $t1, -1280($fp)
	add $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	lw $t1, 0($t0)
	sw $t1, -1296($fp)
	lw $t0, -1296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1300($fp)
	li $t0, 2
	sw $t0, -1304($fp)
	li $t0, 4
	lw $t1, -1304($fp)
	mul $t0, $t0, $t1
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	lw $t1, -1300($fp)
	add $t0, $t0, $t1
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	lw $t1, 0($t0)
	sw $t1, -1316($fp)
	lw $t0, -1316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1320($fp)
	li $t0, 3
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
	lw $t0, -1336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1340($fp)
	li $t0, 4
	sw $t0, -1344($fp)
	li $t0, 4
	lw $t1, -1344($fp)
	mul $t0, $t0, $t1
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	lw $t1, -1340($fp)
	add $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	lw $t1, 0($t0)
	sw $t1, -1356($fp)
	lw $t0, -1356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -152($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 19351
	sw $t0, -1364($fp)
	li $t0, 0
	lw $t1, -1364($fp)
	sub $t0, $t0, $t1
	sw $t0, -1368($fp)
	li $t0, 0
	lw $t1, -1368($fp)
	sub $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $ra, -4($fp)
	lw $v0, -1372($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -104
	li $t0, 6927
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 1518
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 8007
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	lw $t0, -36($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -48($fp)
	li $t0, 0
	sw $t0, -52($fp)
	lw $t0, -12($fp)
	sw $t0, -56($fp)
	lw $t0, -36($fp)
	sw $t0, -60($fp)
	lw $t0, -56($fp)
	lw $t1, -60($fp)
	add $t0, $t0, $t1
	sw $t0, -64($fp)
	lw $t1, -64($fp)
	li $t2, 0
	bne $t1, $t2, label1066
	j label1065
label1066:
	lw $t0, -12($fp)
	sw $t0, -68($fp)
	lw $t1, -68($fp)
	li $t2, 0
	bne $t1, $t2, label1064
	j label1065
label1064:
	li $t0, 1
	sw $t0, -52($fp)
label1065:
	li $t0, 0
	sw $t0, -72($fp)
	li $t0, 57451
	sw $t0, -76($fp)
	lw $t0, -36($fp)
	sw $t0, -80($fp)
	lw $t0, -76($fp)
	lw $t1, -80($fp)
	sub $t0, $t0, $t1
	sw $t0, -84($fp)
	lw $t1, -84($fp)
	li $t2, 0
	bne $t1, $t2, label1067
	j label1069
label1069:
	lw $t0, -36($fp)
	sw $t0, -88($fp)
	lw $t1, -88($fp)
	li $t2, 0
	bne $t1, $t2, label1067
	j label1068
label1067:
	li $t0, 1
	sw $t0, -72($fp)
label1068:
	addi $sp, $sp, -4
	lw $t0, -48($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -52($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -72($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -92($fp)
	addi $sp, $sp, 16
	lw $t0, -12($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -36($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 62583
	sw $t0, -108($fp)
	lw $ra, -4($fp)
	lw $v0, -108($fp)
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
