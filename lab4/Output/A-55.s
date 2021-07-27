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
	addi $sp, $sp, -2712
	li $t0, 45768
	sw $t0, -48($fp)
	addi $t0, $fp, -20
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
	li $t0, 2664
	sw $t0, -72($fp)
	addi $t0, $fp, -20
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
	li $t0, 706
	sw $t0, -96($fp)
	addi $t0, $fp, -20
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
	li $t0, 24289
	sw $t0, -120($fp)
	addi $t0, $fp, -20
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
	li $t0, 34898
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	li $t0, 46316
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	li $t0, 29418
	sw $t0, -168($fp)
	addi $t0, $fp, -32
	sw $t0, -172($fp)
	li $t0, 0
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
	li $t0, 44476
	sw $t0, -192($fp)
	addi $t0, $fp, -32
	sw $t0, -196($fp)
	li $t0, 1
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
	li $t0, 15454
	sw $t0, -216($fp)
	addi $t0, $fp, -32
	sw $t0, -220($fp)
	li $t0, 2
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
	li $t0, 31187
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	li $t0, 54627
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	li $t0, 3583
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	li $t0, 33357
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	li $t0, 20132
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
	li $t0, 45396
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
	li $t0, 58501
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
	li $t0, 1454
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	li $t0, 7474
	sw $t0, -436($fp)
	addi $t0, $fp, -396
	sw $t0, -440($fp)
	li $t0, 0
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
	li $t0, 47438
	sw $t0, -460($fp)
	addi $t0, $fp, -396
	sw $t0, -464($fp)
	li $t0, 1
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
	li $t0, 42952
	sw $t0, -484($fp)
	addi $t0, $fp, -396
	sw $t0, -488($fp)
	li $t0, 2
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
	li $t0, 21080
	sw $t0, -508($fp)
	addi $t0, $fp, -396
	sw $t0, -512($fp)
	li $t0, 3
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
	li $t0, 35688
	sw $t0, -532($fp)
	addi $t0, $fp, -396
	sw $t0, -536($fp)
	li $t0, 4
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
	li $t0, 20957
	sw $t0, -556($fp)
	addi $t0, $fp, -396
	sw $t0, -560($fp)
	li $t0, 5
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
	li $t0, 23588
	sw $t0, -580($fp)
	addi $t0, $fp, -396
	sw $t0, -584($fp)
	li $t0, 6
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
	li $t0, 42862
	sw $t0, -604($fp)
	addi $t0, $fp, -432
	sw $t0, -608($fp)
	li $t0, 0
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
	li $t0, 32783
	sw $t0, -628($fp)
	addi $t0, $fp, -432
	sw $t0, -632($fp)
	li $t0, 1
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
	li $t0, 56622
	sw $t0, -652($fp)
	addi $t0, $fp, -432
	sw $t0, -656($fp)
	li $t0, 2
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
	li $t0, 26407
	sw $t0, -676($fp)
	addi $t0, $fp, -432
	sw $t0, -680($fp)
	li $t0, 3
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
	li $t0, 58157
	sw $t0, -700($fp)
	addi $t0, $fp, -432
	sw $t0, -704($fp)
	li $t0, 4
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
	li $t0, 18620
	sw $t0, -724($fp)
	addi $t0, $fp, -432
	sw $t0, -728($fp)
	li $t0, 5
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
	li $t0, 44322
	sw $t0, -748($fp)
	addi $t0, $fp, -432
	sw $t0, -752($fp)
	li $t0, 6
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
	li $t0, 38390
	sw $t0, -772($fp)
	addi $t0, $fp, -432
	sw $t0, -776($fp)
	li $t0, 7
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
	li $t0, 21284
	sw $t0, -796($fp)
	addi $t0, $fp, -432
	sw $t0, -800($fp)
	li $t0, 8
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
	li $t0, 0
	sw $t0, -820($fp)
	li $t0, 0
	sw $t0, -824($fp)
	li $t0, 0
	sw $t0, -828($fp)
	li $t0, 0
	sw $t0, -832($fp)
	li $t0, 0
	sw $t0, -836($fp)
	li $t0, 45028
	sw $t0, -840($fp)
	li $t0, 1
	sw $t0, -844($fp)
	lw $t0, -840($fp)
	lw $t1, -844($fp)
	mul $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t1, -848($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label130
label131:
	lw $t0, -148($fp)
	sw $t0, -852($fp)
	lw $t1, -852($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label130
label129:
	li $t0, 1
	sw $t0, -836($fp)
label130:
	addi $sp, $sp, -4
	lw $t0, -836($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -856($fp)
	addi $sp, $sp, 8
	lw $t0, -364($fp)
	sw $t0, -860($fp)
	lw $t1, -856($fp)
	lw $t2, -860($fp)
	blt $t1, $t2, label127
	j label128
label127:
	li $t0, 1
	sw $t0, -832($fp)
label128:
	lw $t0, -280($fp)
	sw $t0, -864($fp)
	lw $t1, -832($fp)
	lw $t2, -864($fp)
	blt $t1, $t2, label125
	j label126
label125:
	li $t0, 1
	sw $t0, -828($fp)
label126:
	addi $t0, $fp, -44
	sw $t0, -868($fp)
	lw $t0, -160($fp)
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
	li $t0, 0
	lw $t1, -884($fp)
	sub $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t1, -828($fp)
	lw $t2, -888($fp)
	ble $t1, $t2, label123
	j label124
label123:
	li $t0, 1
	sw $t0, -824($fp)
label124:
	li $t0, 0
	sw $t0, -892($fp)
	addi $t0, $fp, -396
	sw $t0, -896($fp)
	li $t0, 0
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
	lw $t1, -912($fp)
	li $t2, 0
	bne $t1, $t2, label133
	j label132
label132:
	li $t0, 1
	sw $t0, -892($fp)
label133:
	lw $t1, -824($fp)
	lw $t2, -892($fp)
	beq $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -820($fp)
label122:
	li $t0, 0
	sw $t0, -916($fp)
	li $t0, 26561
	sw $t0, -920($fp)
	lw $t1, -920($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label140
label140:
	lw $t0, -148($fp)
	sw $t0, -924($fp)
	lw $t1, -924($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label139
label139:
	lw $t0, -256($fp)
	sw $t0, -928($fp)
	lw $t1, -928($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label138
label137:
	li $t0, 1
	sw $t0, -916($fp)
label138:
	addi $sp, $sp, -4
	lw $t0, -916($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -932($fp)
	addi $sp, $sp, 8
	lw $t1, -932($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label135
label134:
	li $t0, 0
	sw $t0, -936($fp)
	lw $t0, 4($fp)
	sw $t0, -940($fp)
	li $t0, 35123
	sw $t0, -944($fp)
	li $t0, 41263
	sw $t0, -948($fp)
	lw $t0, -944($fp)
	lw $t1, -948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -952($fp)
	li $t0, 0
	lw $t1, -952($fp)
	sub $t0, $t0, $t1
	sw $t0, -956($fp)
	lw $t0, -940($fp)
	lw $t1, -956($fp)
	add $t0, $t0, $t1
	sw $t0, -960($fp)
	li $t0, 0
	sw $t0, -964($fp)
	addi $t0, $fp, -396
	sw $t0, -968($fp)
	li $t0, 0
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
	lw $t1, -984($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label143
label143:
	li $t0, 1
	sw $t0, -964($fp)
label144:
	addi $sp, $sp, -4
	lw $t0, -964($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -988($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -988($fp)
	sub $t0, $t0, $t1
	sw $t0, -992($fp)
	lw $t1, -960($fp)
	lw $t2, -992($fp)
	beq $t1, $t2, label141
	j label142
label141:
	li $t0, 1
	sw $t0, -936($fp)
label142:
	lw $ra, -4($fp)
	lw $v0, -936($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label136
label135:
	li $t0, 0
	sw $t0, -996($fp)
	li $t0, 0
	sw $t0, -1000($fp)
	addi $t0, $fp, -44
	sw $t0, -1004($fp)
	li $t0, 0
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
	lw $t0, -256($fp)
	sw $t0, -1024($fp)
	lw $t1, -1020($fp)
	lw $t2, -1024($fp)
	bge $t1, $t2, label147
	j label148
label147:
	li $t0, 1
	sw $t0, -1000($fp)
label148:
	addi $t0, $fp, -432
	sw $t0, -1028($fp)
	li $t0, 6
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
	lw $t1, -1000($fp)
	lw $t2, -1044($fp)
	bgt $t1, $t2, label145
	j label146
label145:
	li $t0, 1
	sw $t0, -996($fp)
label146:
	lw $t0, -996($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -1048($fp)
	lw $ra, -4($fp)
	lw $v0, -1048($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label136:
	addi $t0, $fp, -20
	sw $t0, -1052($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
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
	lw $t0, -1088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -1092($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -1112($fp)
	li $t0, 3
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
	lw $t0, -148($fp)
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	lw $t0, -1196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -244($fp)
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -256($fp)
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1216($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -1236($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -1256($fp)
	li $t0, 2
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
	lw $t0, -364($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -1284($fp)
	addi $sp, $sp, -4
	lw $t0, -1284($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1288($fp)
	addi $sp, $sp, 8
	lw $ra, -4($fp)
	lw $v0, -1288($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1292($fp)
	li $t0, 0
	sw $t0, -1296($fp)
	addi $t0, $fp, -32
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
	li $t0, 0
	lw $t1, -1316($fp)
	sub $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $t1, -1320($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label151
label151:
	li $t0, 1
	sw $t0, -1296($fp)
label152:
	li $t0, 32180
	sw $t0, -1324($fp)
	lw $t1, -1296($fp)
	lw $t2, -1324($fp)
	bgt $t1, $t2, label149
	j label150
label149:
	li $t0, 1
	sw $t0, -1292($fp)
label150:
label153:
	li $t0, 0
	sw $t0, -1328($fp)
	addi $t0, $fp, -20
	sw $t0, -1332($fp)
	li $t0, 2
	sw $t0, -1336($fp)
	li $t0, 4
	lw $t1, -1336($fp)
	mul $t0, $t0, $t1
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	lw $t1, -1332($fp)
	add $t0, $t0, $t1
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	lw $t1, 0($t0)
	sw $t1, -1348($fp)
	li $t0, 0
	lw $t1, -1348($fp)
	sub $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t1, -1352($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label156
label156:
	li $t0, 1
	sw $t0, -1328($fp)
label157:
	li $t0, 0
	sw $t0, -1356($fp)
	lw $t0, -148($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -1364($fp)
	addi $sp, $sp, -4
	lw $t0, -1364($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1368($fp)
	addi $sp, $sp, 8
	li $t0, 53260
	sw $t0, -1372($fp)
	lw $t1, -1368($fp)
	lw $t2, -1372($fp)
	bne $t1, $t2, label158
	j label159
label158:
	li $t0, 1
	sw $t0, -1356($fp)
label159:
	addi $sp, $sp, -4
	lw $t0, -1356($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1376($fp)
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -1380($fp)
	li $t0, 0
	lw $t1, -1380($fp)
	sub $t0, $t0, $t1
	sw $t0, -1384($fp)
	lw $t0, -1376($fp)
	lw $t1, -1384($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1388($fp)
	lw $t0, -1328($fp)
	lw $t1, -1388($fp)
	sub $t0, $t0, $t1
	sw $t0, -1392($fp)
	lw $t1, -1392($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label155
label154:
	li $t0, 36125
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	sw $t0, -1424($fp)
	li $t0, 44175
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	sw $t0, -1436($fp)
	li $t0, 11312
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	sw $t0, -1448($fp)
	li $t0, 13451
	sw $t0, -1452($fp)
	addi $t0, $fp, -1412
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
	li $t0, 11423
	sw $t0, -1476($fp)
	addi $t0, $fp, -1412
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
	li $t0, 2399
	sw $t0, -1500($fp)
	addi $t0, $fp, -1412
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
	li $t0, 39859
	sw $t0, -1524($fp)
	addi $t0, $fp, -1412
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
	li $t0, 4044
	sw $t0, -1548($fp)
	addi $t0, $fp, -1412
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
	li $t0, 21019
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	sw $t0, -1580($fp)
	li $t0, 18645
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	sw $t0, -1592($fp)
	li $t0, 0
	sw $t0, -1596($fp)
	li $t0, 0
	sw $t0, -1600($fp)
	addi $t0, $fp, -44
	sw $t0, -1604($fp)
	li $t0, 2
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
	lw $t1, -1620($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label165
label165:
	lw $t0, -364($fp)
	sw $t0, -1624($fp)
	lw $t1, -1624($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label164
label163:
	li $t0, 1
	sw $t0, -1600($fp)
label164:
	addi $sp, $sp, -4
	lw $t0, -1600($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1628($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -1628($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1632($fp)
	addi $sp, $sp, 8
	lw $t1, -1632($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label162
label162:
	lw $t0, -148($fp)
	sw $t0, -1636($fp)
	addi $sp, $sp, -4
	lw $t0, -1636($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1640($fp)
	addi $sp, $sp, 8
	li $t0, 63673
	sw $t0, -1644($fp)
	lw $t0, -1640($fp)
	lw $t1, -1644($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1648($fp)
	lw $t1, -1648($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label161
label166:
	lw $t0, -1588($fp)
	sw $t0, -1652($fp)
	li $t0, 39578
	sw $t0, -1656($fp)
	lw $t0, -1652($fp)
	lw $t1, -1656($fp)
	mul $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $t1, -1660($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label161
label160:
	li $t0, 1
	sw $t0, -1596($fp)
label161:
label167:
	li $t0, 32950
	sw $t0, -1664($fp)
	lw $t1, -1664($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label169
label168:
	lw $t0, -1444($fp)
	sw $t0, -1668($fp)
	li $t0, 0
	sw $t0, -1672($fp)
	lw $t0, -280($fp)
	sw $t0, -1676($fp)
	lw $t1, -1676($fp)
	li $t2, 0
	bne $t1, $t2, label173
	j label174
label173:
	li $t0, 1
	sw $t0, -1672($fp)
label174:
	lw $t0, -1668($fp)
	lw $t1, -1672($fp)
	mul $t0, $t0, $t1
	sw $t0, -1680($fp)
	li $t0, 23945
	sw $t0, -1684($fp)
	li $t0, 603
	sw $t0, -1688($fp)
	lw $t0, -1684($fp)
	lw $t1, -1688($fp)
	mul $t0, $t0, $t1
	sw $t0, -1692($fp)
	li $t0, 1
	sw $t0, -1696($fp)
	lw $t0, -1692($fp)
	lw $t1, -1696($fp)
	mul $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t0, -280($fp)
	sw $t0, -1704($fp)
	lw $t0, -1700($fp)
	lw $t1, -1704($fp)
	sub $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $t1, -1680($fp)
	lw $t2, -1708($fp)
	bgt $t1, $t2, label170
	j label171
label170:
	li $t0, 65208
	sw $t0, -1732($fp)
	addi $t0, $fp, -1728
	sw $t0, -1736($fp)
	li $t0, 0
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
	li $t0, 58352
	sw $t0, -1756($fp)
	addi $t0, $fp, -1728
	sw $t0, -1760($fp)
	li $t0, 1
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
	li $t0, 26752
	sw $t0, -1780($fp)
	addi $t0, $fp, -1728
	sw $t0, -1784($fp)
	li $t0, 2
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
	li $t0, 44518
	sw $t0, -1804($fp)
	addi $t0, $fp, -1728
	sw $t0, -1808($fp)
	li $t0, 3
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
	li $t0, 18385
	sw $t0, -1828($fp)
	addi $t0, $fp, -1728
	sw $t0, -1832($fp)
	li $t0, 4
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
	addi $t0, $fp, -1728
	sw $t0, -1852($fp)
	li $t0, 0
	sw $t0, -1856($fp)
	li $t0, 5563
	sw $t0, -1860($fp)
	li $t0, 3689
	sw $t0, -1864($fp)
	lw $t1, -1860($fp)
	lw $t2, -1864($fp)
	blt $t1, $t2, label175
	j label176
label175:
	li $t0, 1
	sw $t0, -1856($fp)
label176:
	li $t0, 4
	lw $t1, -1856($fp)
	mul $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	lw $t1, -1852($fp)
	add $t0, $t0, $t1
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	lw $t1, 0($t0)
	sw $t1, -1876($fp)
	addi $t0, $fp, -44
	sw $t0, -1880($fp)
	lw $t0, -1576($fp)
	sw $t0, -1884($fp)
	li $t0, 4
	lw $t1, -1884($fp)
	mul $t0, $t0, $t1
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	lw $t1, -1880($fp)
	add $t0, $t0, $t1
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	lw $t1, 0($t0)
	sw $t1, -1896($fp)
	lw $t0, -1876($fp)
	lw $t1, -1896($fp)
	add $t0, $t0, $t1
	sw $t0, -1900($fp)
	li $t0, 0
	sw $t0, -1904($fp)
	li $t0, 36920
	sw $t0, -1908($fp)
	lw $t1, -1908($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label177
label177:
	li $t0, 1
	sw $t0, -1904($fp)
label178:
	li $t0, 0
	lw $t1, -1904($fp)
	sub $t0, $t0, $t1
	sw $t0, -1912($fp)
	lw $t0, -1900($fp)
	lw $t1, -1912($fp)
	add $t0, $t0, $t1
	sw $t0, -1916($fp)
	li $t0, 0
	sw $t0, -1920($fp)
	li $t0, 51364
	sw $t0, -1924($fp)
	lw $t1, -1924($fp)
	li $t2, 0
	bne $t1, $t2, label180
	j label179
label179:
	li $t0, 1
	sw $t0, -1920($fp)
label180:
	li $t0, 0
	lw $t1, -1920($fp)
	sub $t0, $t0, $t1
	sw $t0, -1928($fp)
	j label172
label171:
	li $t0, 35869
	sw $t0, -1932($fp)
	li $t0, 0
	lw $t1, -1932($fp)
	sub $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -1940($fp)
	lw $t1, -1940($fp)
	li $t2, 0
	bne $t1, $t2, label181
	j label182
label181:
	lw $t0, -148($fp)
	sw $t0, -1944($fp)
	li $t0, 37357
	sw $t0, -1948($fp)
	lw $t0, -1944($fp)
	lw $t1, -1948($fp)
	sub $t0, $t0, $t1
	sw $t0, -1952($fp)
	addi $t0, $fp, -32
	sw $t0, -1956($fp)
	li $t0, 0
	sw $t0, -1960($fp)
	li $t0, 9046
	sw $t0, -1964($fp)
	lw $t1, -1964($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label185
label186:
	lw $t0, -1432($fp)
	sw $t0, -1968($fp)
	lw $t1, -1968($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label185
label184:
	li $t0, 1
	sw $t0, -1960($fp)
label185:
	li $t0, 4
	lw $t1, -1960($fp)
	mul $t0, $t0, $t1
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	lw $t1, -1956($fp)
	add $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	lw $t1, 0($t0)
	sw $t1, -1980($fp)
	lw $t0, -1952($fp)
	lw $t1, -1980($fp)
	add $t0, $t0, $t1
	sw $t0, -1984($fp)
	j label183
label182:
	lw $t0, -1588($fp)
	sw $t0, -1988($fp)
	li $t0, 0
	sw $t0, -1992($fp)
	li $t0, 23594
	sw $t0, -1996($fp)
	lw $t1, -1996($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label187
label187:
	li $t0, 1
	sw $t0, -1992($fp)
label188:
	li $t0, 7946
	sw $t0, -2000($fp)
	lw $t0, -1992($fp)
	lw $t1, -2000($fp)
	mul $t0, $t0, $t1
	sw $t0, -2004($fp)
	li $t0, 0
	lw $t1, -2004($fp)
	sub $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $t0, -1988($fp)
	lw $t1, -2008($fp)
	mul $t0, $t0, $t1
	sw $t0, -2012($fp)
label183:
label172:
	j label167
label169:
	li $t0, 0
	sw $t0, -2016($fp)
	li $t0, 53222
	sw $t0, -2020($fp)
	lw $t0, -160($fp)
	sw $t0, -2024($fp)
	lw $t1, -2020($fp)
	lw $t2, -2024($fp)
	ble $t1, $t2, label189
	j label190
label189:
	li $t0, 1
	sw $t0, -2016($fp)
label190:
	lw $t0, -2016($fp)
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -2032($fp)
	lw $ra, -4($fp)
	lw $v0, -2032($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -2036($fp)
	li $t0, 34906
	sw $t0, -2040($fp)
	lw $t1, -2040($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label192
label191:
	li $t0, 1
	sw $t0, -2036($fp)
label192:
	lw $ra, -4($fp)
	lw $v0, -2036($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1420($fp)
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1432($fp)
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1444($fp)
	sw $t0, -2052($fp)
	lw $t0, -2052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1412
	sw $t0, -2056($fp)
	li $t0, 0
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
	addi $t0, $fp, -1412
	sw $t0, -2076($fp)
	li $t0, 1
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
	addi $t0, $fp, -1412
	sw $t0, -2096($fp)
	li $t0, 2
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
	addi $t0, $fp, -1412
	sw $t0, -2116($fp)
	li $t0, 3
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
	addi $t0, $fp, -1412
	sw $t0, -2136($fp)
	li $t0, 4
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
	lw $t0, -1576($fp)
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2160($fp)
	addi $t0, $fp, -20
	sw $t0, -2164($fp)
	li $t0, 1
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
	li $t0, 37305
	sw $t0, -2184($fp)
	lw $t0, -2180($fp)
	lw $t1, -2184($fp)
	add $t0, $t0, $t1
	sw $t0, -2188($fp)
	li $t0, 61257
	sw $t0, -2192($fp)
	lw $t0, -2188($fp)
	lw $t1, -2192($fp)
	add $t0, $t0, $t1
	sw $t0, -2196($fp)
	lw $t0, -256($fp)
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	sw $t0, -2204($fp)
	addi $sp, $sp, -4
	lw $t0, -2204($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2208($fp)
	addi $sp, $sp, 8
	lw $t0, -1444($fp)
	sw $t0, -2212($fp)
	lw $t0, -2208($fp)
	lw $t1, -2212($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2216($fp)
	addi $sp, $sp, -4
	lw $t0, -2216($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2220($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -2220($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2224($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -2224($fp)
	sub $t0, $t0, $t1
	sw $t0, -2228($fp)
	lw $t0, -2196($fp)
	lw $t1, -2228($fp)
	add $t0, $t0, $t1
	sw $t0, -2232($fp)
	li $t0, 0
	sw $t0, -2236($fp)
	li $t0, 3153
	sw $t0, -2240($fp)
	li $t0, 58324
	sw $t0, -2244($fp)
	li $t0, 0
	lw $t1, -2244($fp)
	sub $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t1, -2240($fp)
	lw $t2, -2248($fp)
	blt $t1, $t2, label195
	j label196
label195:
	li $t0, 1
	sw $t0, -2236($fp)
label196:
	lw $t1, -2232($fp)
	lw $t2, -2236($fp)
	bne $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -2160($fp)
label194:
	lw $ra, -4($fp)
	lw $v0, -2160($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -1412
	sw $t0, -2252($fp)
	li $t0, 0
	sw $t0, -2256($fp)
	li $t0, 14366
	sw $t0, -2260($fp)
	li $t0, 0
	lw $t1, -2260($fp)
	sub $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t0, -256($fp)
	sw $t0, -2268($fp)
	lw $t1, -2264($fp)
	lw $t2, -2268($fp)
	ble $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -2256($fp)
label201:
	li $t0, 4
	lw $t1, -2256($fp)
	mul $t0, $t0, $t1
	sw $t0, -2272($fp)
	lw $t0, -2272($fp)
	lw $t1, -2252($fp)
	add $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	lw $t1, 0($t0)
	sw $t1, -2280($fp)
	li $t0, 0
	lw $t1, -2280($fp)
	sub $t0, $t0, $t1
	sw $t0, -2284($fp)
	lw $t1, -2284($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label198
label197:
label202:
	li $t0, 45588
	sw $t0, -2288($fp)
	lw $t1, -2288($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label204
label203:
	li $t0, 0
	sw $t0, -2292($fp)
	li $t0, 0
	sw $t0, -2296($fp)
	li $t0, 0
	sw $t0, -2300($fp)
	lw $t0, -160($fp)
	sw $t0, -2304($fp)
	li $t0, 0
	lw $t1, -2304($fp)
	sub $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $t1, -2308($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label209
label209:
	li $t0, 1
	sw $t0, -2300($fp)
label210:
	li $t0, 0
	lw $t1, -2300($fp)
	sub $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t1, -2312($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label207
label207:
	li $t0, 1
	sw $t0, -2296($fp)
label208:
	li $t0, 35092
	sw $t0, -2316($fp)
	lw $t1, -2296($fp)
	lw $t2, -2316($fp)
	bgt $t1, $t2, label205
	j label206
label205:
	li $t0, 1
	sw $t0, -2292($fp)
label206:
	lw $ra, -4($fp)
	lw $v0, -2292($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label202
label204:
	j label199
label198:
	lw $t0, -268($fp)
	sw $t0, -2320($fp)
	lw $t0, -1432($fp)
	sw $t0, -2324($fp)
	lw $t0, -2320($fp)
	lw $t1, -2324($fp)
	mul $t0, $t0, $t1
	sw $t0, -2328($fp)
	li $t0, 0
	sw $t0, -2332($fp)
	lw $t0, -1576($fp)
	sw $t0, -2336($fp)
	li $t0, 0
	lw $t1, -2336($fp)
	sub $t0, $t0, $t1
	sw $t0, -2340($fp)
	lw $t1, -2340($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label211
label211:
	li $t0, 1
	sw $t0, -2332($fp)
label212:
	lw $t0, -2328($fp)
	lw $t1, -2332($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2344($fp)
	lw $ra, -4($fp)
	lw $v0, -2344($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label199:
	li $t0, 0
	sw $t0, -2348($fp)
	li $t0, 0
	sw $t0, -2352($fp)
	lw $t0, -244($fp)
	sw $t0, -2356($fp)
	lw $t1, -2356($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label216
label216:
	li $t0, 1
	sw $t0, -2352($fp)
label217:
	li $t0, 0
	sw $t0, -2360($fp)
	lw $t0, -268($fp)
	sw $t0, -2364($fp)
	li $t0, 0
	lw $t1, -2364($fp)
	sub $t0, $t0, $t1
	sw $t0, -2368($fp)
	li $t0, 12503
	sw $t0, -2372($fp)
	lw $t1, -2368($fp)
	lw $t2, -2372($fp)
	bne $t1, $t2, label218
	j label219
label218:
	li $t0, 1
	sw $t0, -2360($fp)
label219:
	addi $sp, $sp, -4
	lw $t0, -2360($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2376($fp)
	addi $sp, $sp, 8
	lw $t0, -2352($fp)
	lw $t1, -2376($fp)
	mul $t0, $t0, $t1
	sw $t0, -2380($fp)
	li $t0, 0
	sw $t0, -2384($fp)
	li $t0, 0
	sw $t0, -2388($fp)
	li $t0, 19630
	sw $t0, -2392($fp)
	lw $t1, -2392($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label222
label222:
	li $t0, 1
	sw $t0, -2388($fp)
label223:
	li $t0, 2506
	sw $t0, -2396($fp)
	lw $t1, -2388($fp)
	lw $t2, -2396($fp)
	bgt $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -2384($fp)
label221:
	lw $t1, -2380($fp)
	lw $t2, -2384($fp)
	beq $t1, $t2, label213
	j label215
label215:
	addi $t0, $fp, -44
	sw $t0, -2400($fp)
	lw $t0, -280($fp)
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
	lw $t1, -2416($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label214
label224:
	li $t0, 36448
	sw $t0, -2420($fp)
	lw $t0, 4($fp)
	sw $t0, -2424($fp)
	lw $t0, -2420($fp)
	lw $t1, -2424($fp)
	sub $t0, $t0, $t1
	sw $t0, -2428($fp)
	lw $t1, -2428($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label214
label213:
	li $t0, 1
	sw $t0, -2348($fp)
label214:
	j label153
label155:
	addi $t0, $fp, -32
	sw $t0, -2432($fp)
	li $t0, 0
	sw $t0, -2436($fp)
	li $t0, 20233
	sw $t0, -2440($fp)
	li $t0, 5044
	sw $t0, -2444($fp)
	lw $t1, -2440($fp)
	lw $t2, -2444($fp)
	bne $t1, $t2, label227
	j label226
label227:
	li $t0, 36121
	sw $t0, -2448($fp)
	lw $t1, -2448($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label226
label225:
	li $t0, 1
	sw $t0, -2436($fp)
label226:
	li $t0, 4
	lw $t1, -2436($fp)
	mul $t0, $t0, $t1
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	lw $t1, -2432($fp)
	add $t0, $t0, $t1
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	lw $t1, 0($t0)
	sw $t1, -2460($fp)
	li $t0, 0
	sw $t0, -2464($fp)
	lw $t0, -244($fp)
	sw $t0, -2468($fp)
	li $t0, 0
	lw $t1, -2468($fp)
	sub $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t0, -256($fp)
	sw $t0, -2476($fp)
	lw $t1, -2472($fp)
	lw $t2, -2476($fp)
	ble $t1, $t2, label228
	j label229
label228:
	li $t0, 1
	sw $t0, -2464($fp)
label229:
	addi $sp, $sp, -4
	lw $t0, -2464($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2480($fp)
	addi $sp, $sp, 8
	lw $t0, -2460($fp)
	lw $t1, -2480($fp)
	sub $t0, $t0, $t1
	sw $t0, -2484($fp)
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	lw $t0, -148($fp)
	sw $t0, -2568($fp)
	lw $t0, -2568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2576($fp)
	li $t0, 0
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
	lw $t0, -2592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2596($fp)
	li $t0, 1
	sw $t0, -2600($fp)
	li $t0, 4
	lw $t1, -2600($fp)
	mul $t0, $t0, $t1
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	lw $t1, -2596($fp)
	add $t0, $t0, $t1
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	lw $t1, 0($t0)
	sw $t1, -2612($fp)
	lw $t0, -2612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2616($fp)
	li $t0, 2
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
	lw $t0, -2632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -244($fp)
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -256($fp)
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	lw $t0, -364($fp)
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	sw $t0, -2716($fp)
	lw $ra, -4($fp)
	lw $v0, -2716($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -8
	li $t0, 13049
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
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -108
	li $t0, 31796
	sw $t0, -12($fp)
	addi $t0, $fp, -8
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -24($fp)
	lw $t0, -16($fp)
	lw $t1, -24($fp)
	add $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t0, -12($fp)
	lw $t1, -28($fp)
	sw $t0, 0($t1)
	lw $t0, -28($fp)
	lw $t1, 0($t0)
	sw $t1, -32($fp)
	addi $t0, $fp, -8
	sw $t0, -36($fp)
	li $t0, 0
	sw $t0, -40($fp)
	li $t0, 4
	lw $t1, -40($fp)
	mul $t0, $t0, $t1
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	lw $t1, -36($fp)
	add $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	lw $t1, 0($t0)
	sw $t1, -52($fp)
	lw $t0, -52($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -56($fp)
	addi $t0, $fp, -8
	sw $t0, -60($fp)
	li $t0, 0
	sw $t0, -64($fp)
	lw $t0, 4($fp)
	sw $t0, -68($fp)
	lw $t0, 4($fp)
	sw $t0, -72($fp)
	lw $t1, -68($fp)
	lw $t2, -72($fp)
	bgt $t1, $t2, label232
	j label233
label232:
	li $t0, 1
	sw $t0, -64($fp)
label233:
	li $t0, 4
	lw $t1, -64($fp)
	mul $t0, $t0, $t1
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	lw $t1, -60($fp)
	add $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	lw $t1, 0($t0)
	sw $t1, -84($fp)
	lw $t0, 4($fp)
	sw $t0, -88($fp)
	li $t0, 15103
	sw $t0, -92($fp)
	lw $t0, -88($fp)
	lw $t1, -92($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -96($fp)
	li $t0, 0
	lw $t1, -96($fp)
	sub $t0, $t0, $t1
	sw $t0, -100($fp)
	lw $t0, -84($fp)
	lw $t1, -100($fp)
	add $t0, $t0, $t1
	sw $t0, -104($fp)
	lw $t0, 4($fp)
	sw $t0, -108($fp)
	li $t0, 0
	lw $t1, -108($fp)
	sub $t0, $t0, $t1
	sw $t0, -112($fp)
	lw $t1, -104($fp)
	lw $t2, -112($fp)
	blt $t1, $t2, label230
	j label231
label230:
	li $t0, 1
	sw $t0, -56($fp)
label231:
	lw $ra, -4($fp)
	lw $v0, -56($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1328
	li $t0, 31435
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -20($fp)
	li $t0, 37359
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	li $t0, 18792
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	li $t0, 2819
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
	li $t0, 23187
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	li $t0, 54662
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	li $t0, 40177
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	li $t0, 32234
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	li $t0, 12720
	sw $t0, -160($fp)
	addi $t0, $fp, -132
	sw $t0, -164($fp)
	li $t0, 0
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
	li $t0, 48123
	sw $t0, -184($fp)
	addi $t0, $fp, -132
	sw $t0, -188($fp)
	li $t0, 1
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
	li $t0, 19920
	sw $t0, -208($fp)
	addi $t0, $fp, -132
	sw $t0, -212($fp)
	li $t0, 2
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
	li $t0, 47626
	sw $t0, -232($fp)
	addi $t0, $fp, -132
	sw $t0, -236($fp)
	li $t0, 3
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
	li $t0, 3985
	sw $t0, -256($fp)
	addi $t0, $fp, -132
	sw $t0, -260($fp)
	li $t0, 4
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
	li $t0, 19029
	sw $t0, -280($fp)
	addi $t0, $fp, -132
	sw $t0, -284($fp)
	li $t0, 5
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
	li $t0, 19396
	sw $t0, -304($fp)
	addi $t0, $fp, -132
	sw $t0, -308($fp)
	li $t0, 6
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
	li $t0, 65242
	sw $t0, -328($fp)
	addi $t0, $fp, -132
	sw $t0, -332($fp)
	li $t0, 7
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
	li $t0, 22182
	sw $t0, -352($fp)
	addi $t0, $fp, -132
	sw $t0, -356($fp)
	li $t0, 8
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
	li $t0, 12184
	sw $t0, -376($fp)
	addi $t0, $fp, -132
	sw $t0, -380($fp)
	li $t0, 9
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
	lw $t0, -140($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -152($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -408($fp)
	li $t0, 0
	sw $t0, -412($fp)
	li $t0, 4
	lw $t1, -412($fp)
	mul $t0, $t0, $t1
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	lw $t1, -408($fp)
	add $t0, $t0, $t1
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	lw $t1, 0($t0)
	sw $t1, -424($fp)
	lw $t0, -424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -428($fp)
	li $t0, 1
	sw $t0, -432($fp)
	li $t0, 4
	lw $t1, -432($fp)
	mul $t0, $t0, $t1
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	lw $t1, -428($fp)
	add $t0, $t0, $t1
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	lw $t1, 0($t0)
	sw $t1, -444($fp)
	lw $t0, -444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -448($fp)
	li $t0, 2
	sw $t0, -452($fp)
	li $t0, 4
	lw $t1, -452($fp)
	mul $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	lw $t1, -448($fp)
	add $t0, $t0, $t1
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	lw $t1, 0($t0)
	sw $t1, -464($fp)
	lw $t0, -464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -468($fp)
	li $t0, 3
	sw $t0, -472($fp)
	li $t0, 4
	lw $t1, -472($fp)
	mul $t0, $t0, $t1
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	lw $t1, -468($fp)
	add $t0, $t0, $t1
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	lw $t1, 0($t0)
	sw $t1, -484($fp)
	lw $t0, -484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -488($fp)
	li $t0, 4
	sw $t0, -492($fp)
	li $t0, 4
	lw $t1, -492($fp)
	mul $t0, $t0, $t1
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	lw $t1, -488($fp)
	add $t0, $t0, $t1
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	lw $t1, 0($t0)
	sw $t1, -504($fp)
	lw $t0, -504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -508($fp)
	li $t0, 5
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
	addi $t0, $fp, -132
	sw $t0, -528($fp)
	li $t0, 6
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
	addi $t0, $fp, -132
	sw $t0, -548($fp)
	li $t0, 7
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
	addi $t0, $fp, -132
	sw $t0, -568($fp)
	li $t0, 8
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
	addi $t0, $fp, -132
	sw $t0, -588($fp)
	li $t0, 9
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
	li $t0, 14072
	sw $t0, -612($fp)
	li $t0, 0
	sw $t0, -616($fp)
	li $t0, 2234
	sw $t0, -620($fp)
	lw $t0, -152($fp)
	sw $t0, -624($fp)
	lw $t0, -620($fp)
	lw $t1, -624($fp)
	add $t0, $t0, $t1
	sw $t0, -628($fp)
	lw $t1, -628($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label239
label239:
	lw $t0, -16($fp)
	sw $t0, -632($fp)
	lw $t1, -632($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label238
label237:
	li $t0, 1
	sw $t0, -616($fp)
label238:
	addi $sp, $sp, -4
	lw $t0, -616($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -636($fp)
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	lw $t1, -636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -640($fp)
	lw $t1, -640($fp)
	li $t2, 0
	bne $t1, $t2, label234
	j label236
label236:
	lw $t0, -140($fp)
	sw $t0, -644($fp)
	lw $t1, -644($fp)
	li $t2, 0
	bne $t1, $t2, label234
	j label235
label234:
	li $t0, 1
	sw $t0, -608($fp)
label235:
	lw $ra, -4($fp)
	lw $v0, -608($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 47276
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	li $t0, 0
	sw $t0, -660($fp)
	li $t0, 26575
	sw $t0, -664($fp)
	lw $t1, -664($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label241
label243:
	li $t0, 21864
	sw $t0, -668($fp)
	addi $sp, $sp, -4
	lw $t0, -668($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -672($fp)
	addi $sp, $sp, 8
	lw $t1, -672($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label241
label242:
	li $t0, 0
	sw $t0, -676($fp)
	lw $t0, -652($fp)
	sw $t0, -680($fp)
	lw $t1, -680($fp)
	li $t2, 0
	bne $t1, $t2, label244
	j label245
label244:
	li $t0, 1
	sw $t0, -676($fp)
label245:
	li $t0, 0
	sw $t0, -684($fp)
	lw $t0, -76($fp)
	sw $t0, -688($fp)
	lw $t1, -688($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label246
label246:
	li $t0, 1
	sw $t0, -684($fp)
label247:
	lw $t1, -676($fp)
	lw $t2, -684($fp)
	blt $t1, $t2, label240
	j label241
label240:
	li $t0, 1
	sw $t0, -660($fp)
label241:
	li $t0, 0
	sw $t0, -692($fp)
	li $t0, 0
	sw $t0, -696($fp)
	lw $t0, -652($fp)
	sw $t0, -700($fp)
	lw $t1, -700($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label250
label250:
	li $t0, 1
	sw $t0, -696($fp)
label251:
	li $t0, 49783
	sw $t0, -704($fp)
	lw $t0, -696($fp)
	lw $t1, -704($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -708($fp)
	li $t0, 0
	lw $t1, -708($fp)
	sub $t0, $t0, $t1
	sw $t0, -712($fp)
	lw $t0, -76($fp)
	sw $t0, -716($fp)
	li $t0, 0
	lw $t1, -716($fp)
	sub $t0, $t0, $t1
	sw $t0, -720($fp)
	li $t0, 0
	sw $t0, -724($fp)
	lw $t0, -16($fp)
	sw $t0, -728($fp)
	li $t0, 21087
	sw $t0, -732($fp)
	lw $t1, -728($fp)
	lw $t2, -732($fp)
	beq $t1, $t2, label254
	j label253
label254:
	li $t0, 48712
	sw $t0, -736($fp)
	lw $t1, -736($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label253
label252:
	li $t0, 1
	sw $t0, -724($fp)
label253:
	li $t0, 0
	sw $t0, -740($fp)
	lw $t0, -76($fp)
	sw $t0, -744($fp)
	lw $t1, -744($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label255
label255:
	li $t0, 1
	sw $t0, -740($fp)
label256:
	lw $t0, -152($fp)
	sw $t0, -748($fp)
	lw $t0, -740($fp)
	lw $t1, -748($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -752($fp)
	li $t0, 0
	sw $t0, -756($fp)
	li $t0, 54827
	sw $t0, -760($fp)
	li $t0, 33609
	sw $t0, -764($fp)
	lw $t1, -760($fp)
	lw $t2, -764($fp)
	beq $t1, $t2, label257
	j label259
label259:
	li $t0, 55147
	sw $t0, -768($fp)
	lw $t1, -768($fp)
	li $t2, 0
	bne $t1, $t2, label257
	j label258
label257:
	li $t0, 1
	sw $t0, -756($fp)
label258:
	addi $sp, $sp, -4
	lw $t0, -720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -756($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -772($fp)
	addi $sp, $sp, 20
	li $t0, 21046
	sw $t0, -776($fp)
	lw $t0, -772($fp)
	lw $t1, -776($fp)
	sub $t0, $t0, $t1
	sw $t0, -780($fp)
	li $t0, 0
	sw $t0, -784($fp)
	li $t0, 63024
	sw $t0, -788($fp)
	li $t0, 42098
	sw $t0, -792($fp)
	lw $t0, -788($fp)
	lw $t1, -792($fp)
	sub $t0, $t0, $t1
	sw $t0, -796($fp)
	lw $t0, -40($fp)
	sw $t0, -800($fp)
	lw $t1, -796($fp)
	lw $t2, -800($fp)
	ble $t1, $t2, label260
	j label261
label260:
	li $t0, 1
	sw $t0, -784($fp)
label261:
	addi $sp, $sp, -4
	lw $t0, -780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -784($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -804($fp)
	addi $sp, $sp, 12
	li $t0, 58446
	sw $t0, -808($fp)
	lw $t0, -804($fp)
	lw $t1, -808($fp)
	mul $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t0, -712($fp)
	lw $t1, -812($fp)
	sub $t0, $t0, $t1
	sw $t0, -816($fp)
	li $t0, 0
	sw $t0, -820($fp)
	li $t0, 1969
	sw $t0, -824($fp)
	lw $t1, -824($fp)
	li $t2, 0
	bne $t1, $t2, label264
	j label262
label264:
	li $t0, 23866
	sw $t0, -828($fp)
	lw $t1, -828($fp)
	li $t2, 0
	bne $t1, $t2, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -820($fp)
label263:
	addi $sp, $sp, -4
	lw $t0, -820($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -832($fp)
	addi $sp, $sp, 8
	lw $t1, -816($fp)
	lw $t2, -832($fp)
	bgt $t1, $t2, label248
	j label249
label248:
	li $t0, 1
	sw $t0, -692($fp)
label249:
	li $t0, 16097
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	li $t0, 56631
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -856($fp)
	addi $t0, $fp, -8
	sw $t0, -860($fp)
	li $t0, 0
	sw $t0, -864($fp)
	li $t0, 4
	lw $t1, -864($fp)
	mul $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	lw $t1, -860($fp)
	add $t0, $t0, $t1
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	lw $t1, 0($t0)
	sw $t1, -876($fp)
	addi $sp, $sp, -4
	lw $t0, -876($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -880($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -884($fp)
	lw $t0, -852($fp)
	sw $t0, -888($fp)
	lw $t1, -888($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label266
label265:
	li $t0, 1
	sw $t0, -884($fp)
label266:
	addi $t0, $fp, -8
	sw $t0, -892($fp)
	li $t0, 0
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
	lw $t0, -884($fp)
	lw $t1, -908($fp)
	mul $t0, $t0, $t1
	sw $t0, -912($fp)
	lw $t0, -880($fp)
	lw $t1, -912($fp)
	add $t0, $t0, $t1
	sw $t0, -916($fp)
	addi $t0, $fp, -132
	sw $t0, -920($fp)
	li $t0, 0
	sw $t0, -924($fp)
	li $t0, 2715
	sw $t0, -928($fp)
	lw $t0, -40($fp)
	sw $t0, -932($fp)
	lw $t0, -928($fp)
	lw $t1, -932($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -936($fp)
	lw $t0, -152($fp)
	sw $t0, -940($fp)
	lw $t0, -936($fp)
	lw $t1, -940($fp)
	sub $t0, $t0, $t1
	sw $t0, -944($fp)
	lw $t0, -840($fp)
	sw $t0, -948($fp)
	li $t0, 0
	lw $t1, -948($fp)
	sub $t0, $t0, $t1
	sw $t0, -952($fp)
	lw $t1, -944($fp)
	lw $t2, -952($fp)
	beq $t1, $t2, label267
	j label268
label267:
	li $t0, 1
	sw $t0, -924($fp)
label268:
	li $t0, 4
	lw $t1, -924($fp)
	mul $t0, $t0, $t1
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	lw $t1, -920($fp)
	add $t0, $t0, $t1
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	lw $t1, 0($t0)
	sw $t1, -964($fp)
	li $t0, 51441
	sw $t0, -968($fp)
	li $t0, 0
	sw $t0, -972($fp)
	li $t0, 0
	sw $t0, -976($fp)
	lw $t0, -76($fp)
	sw $t0, -980($fp)
	li $t0, 50616
	sw $t0, -984($fp)
	lw $t1, -980($fp)
	lw $t2, -984($fp)
	bgt $t1, $t2, label274
	j label275
label274:
	li $t0, 1
	sw $t0, -976($fp)
label275:
	li $t0, 21744
	sw $t0, -988($fp)
	lw $t1, -976($fp)
	lw $t2, -988($fp)
	beq $t1, $t2, label272
	j label273
label272:
	li $t0, 1
	sw $t0, -972($fp)
label273:
	addi $sp, $sp, -4
	lw $t0, -972($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -992($fp)
	addi $sp, $sp, 8
	li $t0, 5301
	sw $t0, -996($fp)
	li $t0, 50322
	sw $t0, -1000($fp)
	lw $t0, -996($fp)
	lw $t1, -1000($fp)
	mul $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t0, -992($fp)
	lw $t1, -1004($fp)
	sub $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t1, -968($fp)
	lw $t2, -1008($fp)
	ble $t1, $t2, label269
	j label270
label269:
label276:
	li $t0, 0
	sw $t0, -1012($fp)
	addi $t0, $fp, -132
	sw $t0, -1016($fp)
	lw $t0, -16($fp)
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
	bne $t1, $t2, label279
	j label281
label281:
	li $t0, 43927
	sw $t0, -1036($fp)
	lw $t1, -1036($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label280
label279:
	li $t0, 1
	sw $t0, -1012($fp)
label280:
	addi $sp, $sp, -4
	lw $t0, -1012($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1040($fp)
	addi $sp, $sp, 8
	li $t0, 17486
	sw $t0, -1044($fp)
	lw $t0, -1040($fp)
	lw $t1, -1044($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1048($fp)
	li $t0, 64395
	sw $t0, -1052($fp)
	lw $t1, -1048($fp)
	lw $t2, -1052($fp)
	bge $t1, $t2, label277
	j label278
label277:
	li $t0, 0
	sw $t0, -1056($fp)
	li $t0, 46161
	sw $t0, -1060($fp)
	lw $t0, -152($fp)
	sw $t0, -1064($fp)
	lw $t1, -1060($fp)
	lw $t2, -1064($fp)
	bne $t1, $t2, label282
	j label284
label284:
	lw $t0, -16($fp)
	sw $t0, -1068($fp)
	lw $t1, -1068($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -1056($fp)
label283:
	addi $t0, $fp, -132
	sw $t0, -1072($fp)
	lw $t0, -88($fp)
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
	addi $sp, $sp, -4
	lw $t0, -1056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1088($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1092($fp)
	addi $sp, $sp, 12
	j label276
label278:
	j label271
label270:
	addi $t0, $fp, -132
	sw $t0, -1096($fp)
	addi $t0, $fp, -8
	sw $t0, -1100($fp)
	lw $t0, -152($fp)
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
	li $t0, 0
	lw $t1, -1116($fp)
	sub $t0, $t0, $t1
	sw $t0, -1120($fp)
	li $t0, 4
	lw $t1, -1120($fp)
	mul $t0, $t0, $t1
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	lw $t1, -1096($fp)
	add $t0, $t0, $t1
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	lw $t1, 0($t0)
	sw $t1, -1132($fp)
label271:
	li $t0, 0
	sw $t0, -1136($fp)
	lw $t0, -140($fp)
	sw $t0, -1140($fp)
	lw $t0, -76($fp)
	sw $t0, -1144($fp)
	lw $t0, -1140($fp)
	lw $t1, -1144($fp)
	mul $t0, $t0, $t1
	sw $t0, -1148($fp)
	li $t0, 25434
	sw $t0, -1152($fp)
	lw $t1, -1148($fp)
	lw $t2, -1152($fp)
	bne $t1, $t2, label285
	j label286
label285:
	li $t0, 1
	sw $t0, -1136($fp)
label286:
	li $t0, 0
	sw $t0, -1156($fp)
	li $t0, 64762
	sw $t0, -1160($fp)
	lw $t1, -1160($fp)
	li $t2, 0
	bne $t1, $t2, label287
	j label288
label287:
	li $t0, 1
	sw $t0, -1156($fp)
label288:
	addi $sp, $sp, -4
	lw $t0, -1136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1156($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1164($fp)
	addi $sp, $sp, 12
label289:
	lw $t0, 4($fp)
	sw $t0, -1168($fp)
	li $t0, 0
	lw $t1, -1168($fp)
	sub $t0, $t0, $t1
	sw $t0, -1172($fp)
	li $t0, 0
	lw $t1, -1172($fp)
	sub $t0, $t0, $t1
	sw $t0, -1176($fp)
	addi $t0, $fp, -8
	sw $t0, -1180($fp)
	li $t0, 0
	sw $t0, -1184($fp)
	li $t0, 22922
	sw $t0, -1188($fp)
	li $t0, 44588
	sw $t0, -1192($fp)
	lw $t0, -1188($fp)
	lw $t1, -1192($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1196($fp)
	lw $t1, -1196($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label294
label294:
	lw $t0, -40($fp)
	sw $t0, -1200($fp)
	lw $t1, -1200($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label293
label292:
	li $t0, 1
	sw $t0, -1184($fp)
label293:
	li $t0, 0
	sw $t0, -1204($fp)
	lw $t0, -16($fp)
	sw $t0, -1208($fp)
	lw $t1, -1208($fp)
	li $t2, 0
	bne $t1, $t2, label296
	j label295
label295:
	li $t0, 1
	sw $t0, -1204($fp)
label296:
	li $t0, 49009
	sw $t0, -1212($fp)
	lw $t0, -1204($fp)
	lw $t1, -1212($fp)
	mul $t0, $t0, $t1
	sw $t0, -1216($fp)
	lw $t0, -88($fp)
	sw $t0, -1220($fp)
	li $t0, 0
	sw $t0, -1224($fp)
	lw $t0, -76($fp)
	sw $t0, -1228($fp)
	li $t0, 2490
	sw $t0, -1232($fp)
	lw $t0, -1228($fp)
	lw $t1, -1232($fp)
	mul $t0, $t0, $t1
	sw $t0, -1236($fp)
	lw $t0, -28($fp)
	sw $t0, -1240($fp)
	lw $t1, -1236($fp)
	lw $t2, -1240($fp)
	blt $t1, $t2, label297
	j label298
label297:
	li $t0, 1
	sw $t0, -1224($fp)
label298:
	addi $sp, $sp, -4
	lw $t0, -1184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1224($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1244($fp)
	addi $sp, $sp, 20
	li $t0, 4
	lw $t1, -1244($fp)
	mul $t0, $t0, $t1
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	lw $t1, -1180($fp)
	add $t0, $t0, $t1
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	lw $t1, 0($t0)
	sw $t1, -1256($fp)
	lw $t0, -1176($fp)
	lw $t1, -1256($fp)
	add $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t1, -1260($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label291
label290:
	li $t0, 0
	sw $t0, -1264($fp)
	li $t0, 0
	sw $t0, -1268($fp)
	lw $t0, -40($fp)
	sw $t0, -1272($fp)
	lw $t1, -1272($fp)
	li $t2, 0
	bne $t1, $t2, label302
	j label301
label301:
	li $t0, 1
	sw $t0, -1268($fp)
label302:
	li $t0, 0
	sw $t0, -1276($fp)
	li $t0, 0
	sw $t0, -1280($fp)
	li $t0, 38300
	sw $t0, -1284($fp)
	lw $t1, -1284($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label305
label305:
	li $t0, 1
	sw $t0, -1280($fp)
label306:
	li $t0, 0
	lw $t1, -1280($fp)
	sub $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $t1, -1288($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label303
label303:
	li $t0, 1
	sw $t0, -1276($fp)
label304:
	lw $t1, -1268($fp)
	lw $t2, -1276($fp)
	beq $t1, $t2, label299
	j label300
label299:
	li $t0, 1
	sw $t0, -1264($fp)
label300:
	j label289
label291:
	lw $t0, -16($fp)
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -28($fp)
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -40($fp)
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -1304($fp)
	li $t0, 0
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
	lw $t0, -76($fp)
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -88($fp)
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 56531
	sw $t0, -1332($fp)
	lw $ra, -4($fp)
	lw $v0, -1332($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1012
	li $t0, 34199
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	li $t0, 59387
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	li $t0, 39708
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	li $t0, 55246
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	li $t0, 52297
	sw $t0, -92($fp)
	addi $t0, $fp, -28
	sw $t0, -96($fp)
	li $t0, 0
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
	li $t0, 41677
	sw $t0, -116($fp)
	addi $t0, $fp, -28
	sw $t0, -120($fp)
	li $t0, 1
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
	li $t0, 13576
	sw $t0, -140($fp)
	addi $t0, $fp, -28
	sw $t0, -144($fp)
	li $t0, 2
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
	li $t0, 2859
	sw $t0, -164($fp)
	addi $t0, $fp, -28
	sw $t0, -168($fp)
	li $t0, 3
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
	li $t0, 32772
	sw $t0, -188($fp)
	addi $t0, $fp, -28
	sw $t0, -192($fp)
	li $t0, 4
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
	li $t0, 12083
	sw $t0, -212($fp)
	addi $t0, $fp, -28
	sw $t0, -216($fp)
	li $t0, 5
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
	li $t0, 51190
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	li $t0, 36587
	sw $t0, -248($fp)
	addi $t0, $fp, -40
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
	li $t0, 58713
	sw $t0, -272($fp)
	addi $t0, $fp, -40
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
	li $t0, 53906
	sw $t0, -296($fp)
	addi $t0, $fp, -40
	sw $t0, -300($fp)
	li $t0, 2
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
label307:
	lw $t0, -84($fp)
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -324($fp)
	lw $t1, -324($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label309
label308:
	lw $t0, -84($fp)
	sw $t0, -328($fp)
	li $t0, 0
	lw $t1, -328($fp)
	sub $t0, $t0, $t1
	sw $t0, -332($fp)
	lw $ra, -4($fp)
	lw $v0, -332($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label307
label309:
	lw $t0, -60($fp)
	sw $t0, -336($fp)
	lw $t1, -336($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label311
label310:
	li $t0, 0
	sw $t0, -340($fp)
	li $t0, 0
	sw $t0, -344($fp)
	lw $t0, -84($fp)
	sw $t0, -348($fp)
	li $t0, 22492
	sw $t0, -352($fp)
	li $t0, 0
	lw $t1, -352($fp)
	sub $t0, $t0, $t1
	sw $t0, -356($fp)
	lw $t0, -348($fp)
	lw $t1, -356($fp)
	sub $t0, $t0, $t1
	sw $t0, -360($fp)
	li $t0, 43793
	sw $t0, -364($fp)
	lw $t1, -360($fp)
	lw $t2, -364($fp)
	blt $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -344($fp)
label316:
	li $t0, 0
	sw $t0, -368($fp)
	lw $t0, -72($fp)
	sw $t0, -372($fp)
	lw $t1, -372($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label317
label317:
	li $t0, 1
	sw $t0, -368($fp)
label318:
	addi $t0, $fp, -40
	sw $t0, -376($fp)
	lw $t0, -48($fp)
	sw $t0, -380($fp)
	li $t0, 4
	lw $t1, -380($fp)
	mul $t0, $t0, $t1
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	lw $t1, -376($fp)
	add $t0, $t0, $t1
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	lw $t1, 0($t0)
	sw $t1, -392($fp)
	lw $t0, -368($fp)
	lw $t1, -392($fp)
	sub $t0, $t0, $t1
	sw $t0, -396($fp)
	lw $t1, -344($fp)
	lw $t2, -396($fp)
	bgt $t1, $t2, label313
	j label314
label313:
	li $t0, 1
	sw $t0, -340($fp)
label314:
	lw $ra, -4($fp)
	lw $v0, -340($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label312
label311:
	addi $t0, $fp, -40
	sw $t0, -400($fp)
	lw $t0, -84($fp)
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
	li $t0, 0
	lw $t1, -416($fp)
	sub $t0, $t0, $t1
	sw $t0, -420($fp)
	li $t0, 0
	sw $t0, -424($fp)
	li $t0, 10114
	sw $t0, -428($fp)
	lw $t1, -428($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label319
label319:
	li $t0, 1
	sw $t0, -424($fp)
label320:
	li $t0, 27794
	sw $t0, -432($fp)
	lw $t0, -424($fp)
	lw $t1, -432($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -436($fp)
label312:
	li $t0, 28580
	sw $t0, -440($fp)
	li $t0, 54041
	sw $t0, -444($fp)
	lw $t0, -48($fp)
	sw $t0, -448($fp)
	lw $t0, -444($fp)
	lw $t1, -448($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -452($fp)
	li $t0, 0
	sw $t0, -456($fp)
	addi $t0, $fp, -40
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
	lw $t1, -476($fp)
	li $t2, 0
	bne $t1, $t2, label321
	j label323
label323:
	li $t0, 37157
	sw $t0, -480($fp)
	lw $t1, -480($fp)
	li $t2, 0
	bne $t1, $t2, label321
	j label322
label321:
	li $t0, 1
	sw $t0, -456($fp)
label322:
	li $t0, 0
	sw $t0, -484($fp)
	li $t0, 45280
	sw $t0, -488($fp)
	li $t0, 27439
	sw $t0, -492($fp)
	lw $t0, -488($fp)
	lw $t1, -492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -496($fp)
	lw $t1, -496($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label325
label326:
	li $t0, 34667
	sw $t0, -500($fp)
	lw $t1, -500($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label325
label324:
	li $t0, 1
	sw $t0, -484($fp)
label325:
	addi $sp, $sp, -4
	lw $t0, -456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -484($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -504($fp)
	addi $sp, $sp, 12
	lw $t0, -452($fp)
	lw $t1, -504($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -508($fp)
	lw $t0, -48($fp)
	sw $t0, -512($fp)
	li $t0, 0
	sw $t0, -516($fp)
	li $t0, 0
	sw $t0, -520($fp)
	li $t0, 0
	sw $t0, -524($fp)
	lw $t0, -48($fp)
	sw $t0, -528($fp)
	lw $t1, -528($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label331
label331:
	li $t0, 1
	sw $t0, -524($fp)
label332:
	lw $t0, -48($fp)
	sw $t0, -532($fp)
	li $t0, 0
	lw $t1, -532($fp)
	sub $t0, $t0, $t1
	sw $t0, -536($fp)
	lw $t0, -524($fp)
	lw $t1, -536($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -540($fp)
	li $t0, 0
	sw $t0, -544($fp)
	lw $t0, -60($fp)
	sw $t0, -548($fp)
	li $t0, 0
	lw $t1, -548($fp)
	sub $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t1, -552($fp)
	li $t2, 0
	bne $t1, $t2, label334
	j label333
label333:
	li $t0, 1
	sw $t0, -544($fp)
label334:
	lw $t1, -540($fp)
	lw $t2, -544($fp)
	bgt $t1, $t2, label329
	j label330
label329:
	li $t0, 1
	sw $t0, -520($fp)
label330:
	lw $t0, -48($fp)
	sw $t0, -556($fp)
	lw $t1, -520($fp)
	lw $t2, -556($fp)
	bgt $t1, $t2, label327
	j label328
label327:
	li $t0, 1
	sw $t0, -516($fp)
label328:
	lw $t0, -48($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -576($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -596($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -616($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -636($fp)
	li $t0, 3
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
	li $t0, 4
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
	li $t0, 5
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
	lw $t0, -240($fp)
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -700($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -720($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -740($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -760($fp)
	li $t0, 27980
	sw $t0, -764($fp)
	li $t0, 0
	lw $t1, -764($fp)
	sub $t0, $t0, $t1
	sw $t0, -768($fp)
	addi $sp, $sp, -4
	lw $t0, -768($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -772($fp)
	addi $sp, $sp, 8
	li $t0, 10260
	sw $t0, -776($fp)
	lw $t0, -772($fp)
	lw $t1, -776($fp)
	mul $t0, $t0, $t1
	sw $t0, -780($fp)
	li $t0, 16209
	sw $t0, -784($fp)
	lw $t0, -780($fp)
	lw $t1, -784($fp)
	add $t0, $t0, $t1
	sw $t0, -788($fp)
	li $t0, 4
	lw $t1, -788($fp)
	mul $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	lw $t1, -760($fp)
	add $t0, $t0, $t1
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	lw $t1, 0($t0)
	sw $t1, -800($fp)
	lw $ra, -4($fp)
	lw $v0, -800($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -48($fp)
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -820($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -840($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -860($fp)
	li $t0, 2
	sw $t0, -864($fp)
	li $t0, 4
	lw $t1, -864($fp)
	mul $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	lw $t1, -860($fp)
	add $t0, $t0, $t1
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	lw $t1, 0($t0)
	sw $t1, -876($fp)
	lw $t0, -876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -880($fp)
	li $t0, 3
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
	lw $t0, -896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -900($fp)
	li $t0, 4
	sw $t0, -904($fp)
	li $t0, 4
	lw $t1, -904($fp)
	mul $t0, $t0, $t1
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	lw $t1, -900($fp)
	add $t0, $t0, $t1
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	lw $t1, 0($t0)
	sw $t1, -916($fp)
	lw $t0, -916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -920($fp)
	li $t0, 5
	sw $t0, -924($fp)
	li $t0, 4
	lw $t1, -924($fp)
	mul $t0, $t0, $t1
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	lw $t1, -920($fp)
	add $t0, $t0, $t1
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	lw $t1, 0($t0)
	sw $t1, -936($fp)
	lw $t0, -936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -240($fp)
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -944($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -964($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -984($fp)
	li $t0, 2
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
	li $t0, 0
	sw $t0, -1004($fp)
	li $t0, 744
	sw $t0, -1008($fp)
	lw $t1, -1008($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label338
label338:
	li $t0, 1255
	sw $t0, -1012($fp)
	lw $t1, -1012($fp)
	li $t2, 0
	bne $t1, $t2, label335
	j label337
label337:
	lw $t0, -84($fp)
	sw $t0, -1016($fp)
	lw $t1, -1016($fp)
	li $t2, 0
	bne $t1, $t2, label335
	j label336
label335:
	li $t0, 1
	sw $t0, -1004($fp)
label336:
	lw $ra, -4($fp)
	lw $v0, -1004($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -520
	li $t0, 50408
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
	li $t0, 60132
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
	li $t0, 40963
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
	li $t0, 40118
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
	li $t0, 46893
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
	li $t0, 17104
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
	li $t0, 53694
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
	li $t0, 0
	sw $t0, -204($fp)
	li $t0, 0
	sw $t0, -208($fp)
	li $t0, 35407
	sw $t0, -212($fp)
	li $t0, 20927
	sw $t0, -216($fp)
	lw $t0, -212($fp)
	lw $t1, -216($fp)
	sub $t0, $t0, $t1
	sw $t0, -220($fp)
	lw $t1, -220($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label342
label343:
	li $t0, 58955
	sw $t0, -224($fp)
	lw $t1, -224($fp)
	li $t2, 0
	bne $t1, $t2, label341
	j label342
label341:
	li $t0, 1
	sw $t0, -208($fp)
label342:
	li $t0, 0
	sw $t0, -228($fp)
	li $t0, 49876
	sw $t0, -232($fp)
	lw $t0, 4($fp)
	sw $t0, -236($fp)
	lw $t0, -232($fp)
	lw $t1, -236($fp)
	add $t0, $t0, $t1
	sw $t0, -240($fp)
	li $t0, 241
	sw $t0, -244($fp)
	lw $t1, -240($fp)
	lw $t2, -244($fp)
	bgt $t1, $t2, label344
	j label345
label344:
	li $t0, 1
	sw $t0, -228($fp)
label345:
	li $t0, 49752
	sw $t0, -248($fp)
	addi $sp, $sp, -4
	lw $t0, -208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -248($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -252($fp)
	addi $sp, $sp, 16
	lw $t1, -252($fp)
	li $t2, 0
	bne $t1, $t2, label340
	j label339
label339:
	li $t0, 1
	sw $t0, -204($fp)
label340:
label346:
	li $t0, 0
	sw $t0, -256($fp)
	li $t0, 0
	sw $t0, -260($fp)
	lw $t0, 4($fp)
	sw $t0, -264($fp)
	lw $t0, 8($fp)
	sw $t0, -268($fp)
	lw $t1, -264($fp)
	lw $t2, -268($fp)
	bgt $t1, $t2, label351
	j label352
label351:
	li $t0, 1
	sw $t0, -260($fp)
label352:
	lw $t0, 8($fp)
	sw $t0, -272($fp)
	lw $t1, -260($fp)
	lw $t2, -272($fp)
	blt $t1, $t2, label349
	j label350
label349:
	li $t0, 1
	sw $t0, -256($fp)
label350:
	addi $sp, $sp, -4
	lw $t0, -256($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -276($fp)
	addi $sp, $sp, 8
	lw $t1, -276($fp)
	li $t2, 0
	bne $t1, $t2, label347
	j label348
label347:
	lw $t0, 8($fp)
	sw $t0, -280($fp)
	lw $ra, -4($fp)
	lw $v0, -280($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label346
label348:
	addi $t0, $fp, -32
	sw $t0, -284($fp)
	li $t0, 0
	sw $t0, -288($fp)
	li $t0, 4
	lw $t1, -288($fp)
	mul $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	lw $t1, -284($fp)
	add $t0, $t0, $t1
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	lw $t1, 0($t0)
	sw $t1, -300($fp)
	lw $t0, -300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -304($fp)
	li $t0, 1
	sw $t0, -308($fp)
	li $t0, 4
	lw $t1, -308($fp)
	mul $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	lw $t1, -304($fp)
	add $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	lw $t1, 0($t0)
	sw $t1, -320($fp)
	lw $t0, -320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -324($fp)
	li $t0, 2
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
	lw $t0, -340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -344($fp)
	li $t0, 3
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
	lw $t0, -360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -364($fp)
	li $t0, 4
	sw $t0, -368($fp)
	li $t0, 4
	lw $t1, -368($fp)
	mul $t0, $t0, $t1
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	lw $t1, -364($fp)
	add $t0, $t0, $t1
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	lw $t1, 0($t0)
	sw $t1, -380($fp)
	lw $t0, -380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -384($fp)
	li $t0, 5
	sw $t0, -388($fp)
	li $t0, 4
	lw $t1, -388($fp)
	mul $t0, $t0, $t1
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	lw $t1, -384($fp)
	add $t0, $t0, $t1
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	lw $t1, 0($t0)
	sw $t1, -400($fp)
	lw $t0, -400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -404($fp)
	li $t0, 6
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
	li $t0, 0
	sw $t0, -424($fp)
	li $t0, 0
	sw $t0, -428($fp)
	addi $t0, $fp, -32
	sw $t0, -432($fp)
	li $t0, 2
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
	li $t0, 37212
	sw $t0, -452($fp)
	lw $t0, -448($fp)
	lw $t1, -452($fp)
	sub $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t0, 4($fp)
	sw $t0, -460($fp)
	lw $t0, 12($fp)
	sw $t0, -464($fp)
	lw $t0, -460($fp)
	lw $t1, -464($fp)
	sub $t0, $t0, $t1
	sw $t0, -468($fp)
	lw $t1, -456($fp)
	lw $t2, -468($fp)
	ble $t1, $t2, label356
	j label357
label356:
	li $t0, 1
	sw $t0, -428($fp)
label357:
	li $t0, 33891
	sw $t0, -472($fp)
	li $t0, 0
	lw $t1, -472($fp)
	sub $t0, $t0, $t1
	sw $t0, -476($fp)
	lw $t1, -428($fp)
	lw $t2, -476($fp)
	bne $t1, $t2, label353
	j label355
label355:
	li $t0, 0
	sw $t0, -480($fp)
	lw $t0, 4($fp)
	sw $t0, -484($fp)
	lw $t1, -484($fp)
	li $t2, 0
	bne $t1, $t2, label359
	j label358
label358:
	li $t0, 1
	sw $t0, -480($fp)
label359:
	addi $sp, $sp, -4
	lw $t0, -480($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -488($fp)
	addi $sp, $sp, 8
	li $t0, 5678
	sw $t0, -492($fp)
	lw $t0, -488($fp)
	lw $t1, -492($fp)
	add $t0, $t0, $t1
	sw $t0, -496($fp)
	lw $t0, 4($fp)
	sw $t0, -500($fp)
	li $t0, 256
	sw $t0, -504($fp)
	lw $t0, -500($fp)
	lw $t1, -504($fp)
	mul $t0, $t0, $t1
	sw $t0, -508($fp)
	addi $sp, $sp, -4
	lw $t0, -508($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -512($fp)
	addi $sp, $sp, 8
	lw $t0, 4($fp)
	sw $t0, -516($fp)
	lw $t0, -512($fp)
	lw $t1, -516($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -520($fp)
	addi $sp, $sp, -4
	lw $t0, -520($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -524($fp)
	addi $sp, $sp, 8
	lw $t1, -496($fp)
	lw $t2, -524($fp)
	beq $t1, $t2, label353
	j label354
label353:
	li $t0, 1
	sw $t0, -424($fp)
label354:
	lw $ra, -4($fp)
	lw $v0, -424($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -72
	li $t0, 22397
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 50958
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 0
	sw $t0, -32($fp)
	li $t0, 0
	sw $t0, -36($fp)
	lw $t0, -24($fp)
	sw $t0, -40($fp)
	lw $t0, -12($fp)
	sw $t0, -44($fp)
	lw $t1, -40($fp)
	lw $t2, -44($fp)
	bgt $t1, $t2, label362
	j label363
label362:
	li $t0, 1
	sw $t0, -36($fp)
label363:
	li $t0, 27695
	sw $t0, -48($fp)
	lw $t1, -36($fp)
	lw $t2, -48($fp)
	bgt $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -32($fp)
label361:
	li $t0, 0
	sw $t0, -52($fp)
	jal f10
	sw $v0, -56($fp)
	addi $sp, $sp, 4
	lw $t0, -24($fp)
	sw $t0, -60($fp)
	lw $t1, -56($fp)
	lw $t2, -60($fp)
	bne $t1, $t2, label364
	j label365
label364:
	li $t0, 1
	sw $t0, -52($fp)
label365:
	addi $sp, $sp, -4
	lw $t0, -32($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -52($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -64($fp)
	addi $sp, $sp, 12
	lw $t0, -12($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 57064
	sw $t0, -76($fp)
	lw $ra, -4($fp)
	lw $v0, -76($fp)
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
