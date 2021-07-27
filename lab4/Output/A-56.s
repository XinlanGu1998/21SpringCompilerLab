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
	addi $sp, $sp, -17956
	li $t0, 37848
	sw $t0, -492($fp)
	addi $t0, $fp, -24
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
	li $t0, 28585
	sw $t0, -516($fp)
	addi $t0, $fp, -24
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
	li $t0, 27534
	sw $t0, -540($fp)
	addi $t0, $fp, -24
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
	li $t0, 53513
	sw $t0, -564($fp)
	addi $t0, $fp, -24
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
	li $t0, 21824
	sw $t0, -588($fp)
	addi $t0, $fp, -24
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
	li $t0, 62613
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -620($fp)
	li $t0, 43341
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	li $t0, 15537
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	li $t0, 15197
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	li $t0, 43629
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	li $t0, 9639
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	li $t0, 1674
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	li $t0, 42353
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	li $t0, 60499
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	li $t0, 27033
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	li $t0, 25180
	sw $t0, -732($fp)
	addi $t0, $fp, -56
	sw $t0, -736($fp)
	li $t0, 0
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -744($fp)
	lw $t0, -736($fp)
	lw $t1, -744($fp)
	add $t0, $t0, $t1
	sw $t0, -748($fp)
	lw $t0, -732($fp)
	lw $t1, -748($fp)
	sw $t0, 0($t1)
	lw $t0, -748($fp)
	lw $t1, 0($t0)
	sw $t1, -752($fp)
	li $t0, 13242
	sw $t0, -756($fp)
	addi $t0, $fp, -56
	sw $t0, -760($fp)
	li $t0, 1
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
	li $t0, 9016
	sw $t0, -780($fp)
	addi $t0, $fp, -56
	sw $t0, -784($fp)
	li $t0, 2
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $t0, -784($fp)
	lw $t1, -792($fp)
	add $t0, $t0, $t1
	sw $t0, -796($fp)
	lw $t0, -780($fp)
	lw $t1, -796($fp)
	sw $t0, 0($t1)
	lw $t0, -796($fp)
	lw $t1, 0($t0)
	sw $t1, -800($fp)
	li $t0, 61827
	sw $t0, -804($fp)
	addi $t0, $fp, -56
	sw $t0, -808($fp)
	li $t0, 3
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t0, -808($fp)
	lw $t1, -816($fp)
	add $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t0, -804($fp)
	lw $t1, -820($fp)
	sw $t0, 0($t1)
	lw $t0, -820($fp)
	lw $t1, 0($t0)
	sw $t1, -824($fp)
	li $t0, 53501
	sw $t0, -828($fp)
	addi $t0, $fp, -56
	sw $t0, -832($fp)
	li $t0, 4
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t0, -832($fp)
	lw $t1, -840($fp)
	add $t0, $t0, $t1
	sw $t0, -844($fp)
	lw $t0, -828($fp)
	lw $t1, -844($fp)
	sw $t0, 0($t1)
	lw $t0, -844($fp)
	lw $t1, 0($t0)
	sw $t1, -848($fp)
	li $t0, 38479
	sw $t0, -852($fp)
	addi $t0, $fp, -56
	sw $t0, -856($fp)
	li $t0, 5
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -864($fp)
	lw $t0, -856($fp)
	lw $t1, -864($fp)
	add $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $t0, -852($fp)
	lw $t1, -868($fp)
	sw $t0, 0($t1)
	lw $t0, -868($fp)
	lw $t1, 0($t0)
	sw $t1, -872($fp)
	li $t0, 17451
	sw $t0, -876($fp)
	addi $t0, $fp, -56
	sw $t0, -880($fp)
	li $t0, 6
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -880($fp)
	lw $t1, -888($fp)
	add $t0, $t0, $t1
	sw $t0, -892($fp)
	lw $t0, -876($fp)
	lw $t1, -892($fp)
	sw $t0, 0($t1)
	lw $t0, -892($fp)
	lw $t1, 0($t0)
	sw $t1, -896($fp)
	li $t0, 29257
	sw $t0, -900($fp)
	addi $t0, $fp, -56
	sw $t0, -904($fp)
	li $t0, 7
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
	li $t0, 36641
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	li $t0, 52784
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	li $t0, 58058
	sw $t0, -948($fp)
	addi $t0, $fp, -68
	sw $t0, -952($fp)
	li $t0, 0
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
	li $t0, 22333
	sw $t0, -972($fp)
	addi $t0, $fp, -68
	sw $t0, -976($fp)
	li $t0, 1
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
	li $t0, 52856
	sw $t0, -996($fp)
	addi $t0, $fp, -68
	sw $t0, -1000($fp)
	li $t0, 2
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
	li $t0, 16824
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	li $t0, 34066
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	li $t0, 27138
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	li $t0, 54672
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -1064($fp)
	li $t0, 62651
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -1076($fp)
	li $t0, 54672
	sw $t0, -1080($fp)
	addi $t0, $fp, -80
	sw $t0, -1084($fp)
	li $t0, 0
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
	li $t0, 42650
	sw $t0, -1104($fp)
	addi $t0, $fp, -80
	sw $t0, -1108($fp)
	li $t0, 1
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
	li $t0, 18939
	sw $t0, -1128($fp)
	addi $t0, $fp, -80
	sw $t0, -1132($fp)
	li $t0, 2
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
	li $t0, 51749
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	sw $t0, -1160($fp)
	li $t0, 20455
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -1172($fp)
	li $t0, 34476
	sw $t0, -1176($fp)
	addi $t0, $fp, -108
	sw $t0, -1180($fp)
	li $t0, 0
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
	li $t0, 1410
	sw $t0, -1200($fp)
	addi $t0, $fp, -108
	sw $t0, -1204($fp)
	li $t0, 1
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
	li $t0, 64084
	sw $t0, -1224($fp)
	addi $t0, $fp, -108
	sw $t0, -1228($fp)
	li $t0, 2
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
	li $t0, 44115
	sw $t0, -1248($fp)
	addi $t0, $fp, -108
	sw $t0, -1252($fp)
	li $t0, 3
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
	li $t0, 3084
	sw $t0, -1272($fp)
	addi $t0, $fp, -108
	sw $t0, -1276($fp)
	li $t0, 4
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
	li $t0, 40902
	sw $t0, -1296($fp)
	addi $t0, $fp, -108
	sw $t0, -1300($fp)
	li $t0, 5
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
	li $t0, 39079
	sw $t0, -1320($fp)
	addi $t0, $fp, -108
	sw $t0, -1324($fp)
	li $t0, 6
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
	li $t0, 30117
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	sw $t0, -1352($fp)
	li $t0, 546
	sw $t0, -1356($fp)
	addi $t0, $fp, -124
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
	li $t0, 52321
	sw $t0, -1380($fp)
	addi $t0, $fp, -124
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
	li $t0, 39134
	sw $t0, -1404($fp)
	addi $t0, $fp, -124
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
	li $t0, 62373
	sw $t0, -1428($fp)
	addi $t0, $fp, -124
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
	li $t0, 40286
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	sw $t0, -1460($fp)
	li $t0, 12077
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	sw $t0, -1472($fp)
	li $t0, 14288
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	sw $t0, -1484($fp)
	li $t0, 4007
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	sw $t0, -1496($fp)
	li $t0, 48718
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	sw $t0, -1508($fp)
	li $t0, 1536
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	sw $t0, -1520($fp)
	li $t0, 62066
	sw $t0, -1524($fp)
	addi $t0, $fp, -136
	sw $t0, -1528($fp)
	li $t0, 0
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
	li $t0, 5515
	sw $t0, -1548($fp)
	addi $t0, $fp, -136
	sw $t0, -1552($fp)
	li $t0, 1
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
	li $t0, 54393
	sw $t0, -1572($fp)
	addi $t0, $fp, -136
	sw $t0, -1576($fp)
	li $t0, 2
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
	li $t0, 13354
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	sw $t0, -1604($fp)
	li $t0, 39581
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	sw $t0, -1616($fp)
	li $t0, 15995
	sw $t0, -1620($fp)
	addi $t0, $fp, -168
	sw $t0, -1624($fp)
	li $t0, 0
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
	li $t0, 2490
	sw $t0, -1644($fp)
	addi $t0, $fp, -168
	sw $t0, -1648($fp)
	li $t0, 1
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
	li $t0, 36696
	sw $t0, -1668($fp)
	addi $t0, $fp, -168
	sw $t0, -1672($fp)
	li $t0, 2
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1680($fp)
	lw $t0, -1672($fp)
	lw $t1, -1680($fp)
	add $t0, $t0, $t1
	sw $t0, -1684($fp)
	lw $t0, -1668($fp)
	lw $t1, -1684($fp)
	sw $t0, 0($t1)
	lw $t0, -1684($fp)
	lw $t1, 0($t0)
	sw $t1, -1688($fp)
	li $t0, 5132
	sw $t0, -1692($fp)
	addi $t0, $fp, -168
	sw $t0, -1696($fp)
	li $t0, 3
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t0, -1696($fp)
	lw $t1, -1704($fp)
	add $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $t0, -1692($fp)
	lw $t1, -1708($fp)
	sw $t0, 0($t1)
	lw $t0, -1708($fp)
	lw $t1, 0($t0)
	sw $t1, -1712($fp)
	li $t0, 45140
	sw $t0, -1716($fp)
	addi $t0, $fp, -168
	sw $t0, -1720($fp)
	li $t0, 4
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1728($fp)
	lw $t0, -1720($fp)
	lw $t1, -1728($fp)
	add $t0, $t0, $t1
	sw $t0, -1732($fp)
	lw $t0, -1716($fp)
	lw $t1, -1732($fp)
	sw $t0, 0($t1)
	lw $t0, -1732($fp)
	lw $t1, 0($t0)
	sw $t1, -1736($fp)
	li $t0, 55635
	sw $t0, -1740($fp)
	addi $t0, $fp, -168
	sw $t0, -1744($fp)
	li $t0, 5
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1752($fp)
	lw $t0, -1744($fp)
	lw $t1, -1752($fp)
	add $t0, $t0, $t1
	sw $t0, -1756($fp)
	lw $t0, -1740($fp)
	lw $t1, -1756($fp)
	sw $t0, 0($t1)
	lw $t0, -1756($fp)
	lw $t1, 0($t0)
	sw $t1, -1760($fp)
	li $t0, 56881
	sw $t0, -1764($fp)
	addi $t0, $fp, -168
	sw $t0, -1768($fp)
	li $t0, 6
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1776($fp)
	lw $t0, -1768($fp)
	lw $t1, -1776($fp)
	add $t0, $t0, $t1
	sw $t0, -1780($fp)
	lw $t0, -1764($fp)
	lw $t1, -1780($fp)
	sw $t0, 0($t1)
	lw $t0, -1780($fp)
	lw $t1, 0($t0)
	sw $t1, -1784($fp)
	li $t0, 59
	sw $t0, -1788($fp)
	addi $t0, $fp, -168
	sw $t0, -1792($fp)
	li $t0, 7
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1800($fp)
	lw $t0, -1792($fp)
	lw $t1, -1800($fp)
	add $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t0, -1788($fp)
	lw $t1, -1804($fp)
	sw $t0, 0($t1)
	lw $t0, -1804($fp)
	lw $t1, 0($t0)
	sw $t1, -1808($fp)
	li $t0, 24576
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	sw $t0, -1820($fp)
	li $t0, 58292
	sw $t0, -1824($fp)
	addi $t0, $fp, -200
	sw $t0, -1828($fp)
	li $t0, 0
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t0, -1828($fp)
	lw $t1, -1836($fp)
	add $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t0, -1824($fp)
	lw $t1, -1840($fp)
	sw $t0, 0($t1)
	lw $t0, -1840($fp)
	lw $t1, 0($t0)
	sw $t1, -1844($fp)
	li $t0, 64144
	sw $t0, -1848($fp)
	addi $t0, $fp, -200
	sw $t0, -1852($fp)
	li $t0, 1
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $t0, -1852($fp)
	lw $t1, -1860($fp)
	add $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t0, -1848($fp)
	lw $t1, -1864($fp)
	sw $t0, 0($t1)
	lw $t0, -1864($fp)
	lw $t1, 0($t0)
	sw $t1, -1868($fp)
	li $t0, 3155
	sw $t0, -1872($fp)
	addi $t0, $fp, -200
	sw $t0, -1876($fp)
	li $t0, 2
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
	li $t0, 61376
	sw $t0, -1896($fp)
	addi $t0, $fp, -200
	sw $t0, -1900($fp)
	li $t0, 3
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
	li $t0, 39510
	sw $t0, -1920($fp)
	addi $t0, $fp, -200
	sw $t0, -1924($fp)
	li $t0, 4
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
	li $t0, 42234
	sw $t0, -1944($fp)
	addi $t0, $fp, -200
	sw $t0, -1948($fp)
	li $t0, 5
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
	li $t0, 25958
	sw $t0, -1968($fp)
	addi $t0, $fp, -200
	sw $t0, -1972($fp)
	li $t0, 6
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
	li $t0, 40056
	sw $t0, -1992($fp)
	addi $t0, $fp, -200
	sw $t0, -1996($fp)
	li $t0, 7
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
	li $t0, 29019
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	sw $t0, -2024($fp)
	li $t0, 65092
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	sw $t0, -2036($fp)
	li $t0, 36893
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	sw $t0, -2048($fp)
	li $t0, 3769
	sw $t0, -2052($fp)
	lw $t0, -2052($fp)
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	sw $t0, -2060($fp)
	li $t0, 11633
	sw $t0, -2064($fp)
	addi $t0, $fp, -208
	sw $t0, -2068($fp)
	li $t0, 0
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
	li $t0, 51182
	sw $t0, -2088($fp)
	addi $t0, $fp, -208
	sw $t0, -2092($fp)
	li $t0, 1
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
	li $t0, 7777
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	sw $t0, -2120($fp)
	li $t0, 60351
	sw $t0, -2124($fp)
	lw $t0, -2124($fp)
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	sw $t0, -2132($fp)
	li $t0, 52718
	sw $t0, -2136($fp)
	lw $t0, -2136($fp)
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	sw $t0, -2144($fp)
	li $t0, 4307
	sw $t0, -2148($fp)
	lw $t0, -2148($fp)
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	sw $t0, -2156($fp)
	li $t0, 330
	sw $t0, -2160($fp)
	lw $t0, -2160($fp)
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	sw $t0, -2168($fp)
	li $t0, 41575
	sw $t0, -2172($fp)
	lw $t0, -2172($fp)
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	sw $t0, -2180($fp)
	li $t0, 17661
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	sw $t0, -2192($fp)
	li $t0, 39912
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	sw $t0, -2204($fp)
	li $t0, 57571
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	sw $t0, -2216($fp)
	li $t0, 20151
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	sw $t0, -2228($fp)
	li $t0, 11072
	sw $t0, -2232($fp)
	lw $t0, -2232($fp)
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	sw $t0, -2240($fp)
	li $t0, 62703
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	sw $t0, -2252($fp)
	li $t0, 65292
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	sw $t0, -2264($fp)
	li $t0, 1172
	sw $t0, -2268($fp)
	addi $t0, $fp, -220
	sw $t0, -2272($fp)
	li $t0, 0
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2280($fp)
	lw $t0, -2272($fp)
	lw $t1, -2280($fp)
	add $t0, $t0, $t1
	sw $t0, -2284($fp)
	lw $t0, -2268($fp)
	lw $t1, -2284($fp)
	sw $t0, 0($t1)
	lw $t0, -2284($fp)
	lw $t1, 0($t0)
	sw $t1, -2288($fp)
	li $t0, 54048
	sw $t0, -2292($fp)
	addi $t0, $fp, -220
	sw $t0, -2296($fp)
	li $t0, 1
	sw $t0, -2300($fp)
	lw $t0, -2300($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $t0, -2296($fp)
	lw $t1, -2304($fp)
	add $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $t0, -2292($fp)
	lw $t1, -2308($fp)
	sw $t0, 0($t1)
	lw $t0, -2308($fp)
	lw $t1, 0($t0)
	sw $t1, -2312($fp)
	li $t0, 65351
	sw $t0, -2316($fp)
	addi $t0, $fp, -220
	sw $t0, -2320($fp)
	li $t0, 2
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
	li $t0, 25748
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	sw $t0, -2348($fp)
	li $t0, 46804
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	sw $t0, -2360($fp)
	li $t0, 63959
	sw $t0, -2364($fp)
	lw $t0, -2364($fp)
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	sw $t0, -2372($fp)
	li $t0, 28903
	sw $t0, -2376($fp)
	lw $t0, -2376($fp)
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	sw $t0, -2384($fp)
	li $t0, 42645
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	sw $t0, -2396($fp)
	li $t0, 37933
	sw $t0, -2400($fp)
	addi $t0, $fp, -232
	sw $t0, -2404($fp)
	li $t0, 0
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
	li $t0, 5602
	sw $t0, -2424($fp)
	addi $t0, $fp, -232
	sw $t0, -2428($fp)
	li $t0, 1
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
	li $t0, 3067
	sw $t0, -2448($fp)
	addi $t0, $fp, -232
	sw $t0, -2452($fp)
	li $t0, 2
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
	li $t0, 12453
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	sw $t0, -2480($fp)
	li $t0, 34621
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	sw $t0, -2492($fp)
	li $t0, 2623
	sw $t0, -2496($fp)
	addi $t0, $fp, -252
	sw $t0, -2500($fp)
	li $t0, 0
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2508($fp)
	lw $t0, -2500($fp)
	lw $t1, -2508($fp)
	add $t0, $t0, $t1
	sw $t0, -2512($fp)
	lw $t0, -2496($fp)
	lw $t1, -2512($fp)
	sw $t0, 0($t1)
	lw $t0, -2512($fp)
	lw $t1, 0($t0)
	sw $t1, -2516($fp)
	li $t0, 49347
	sw $t0, -2520($fp)
	addi $t0, $fp, -252
	sw $t0, -2524($fp)
	li $t0, 1
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2532($fp)
	lw $t0, -2524($fp)
	lw $t1, -2532($fp)
	add $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $t0, -2520($fp)
	lw $t1, -2536($fp)
	sw $t0, 0($t1)
	lw $t0, -2536($fp)
	lw $t1, 0($t0)
	sw $t1, -2540($fp)
	li $t0, 38391
	sw $t0, -2544($fp)
	addi $t0, $fp, -252
	sw $t0, -2548($fp)
	li $t0, 2
	sw $t0, -2552($fp)
	lw $t0, -2552($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2556($fp)
	lw $t0, -2548($fp)
	lw $t1, -2556($fp)
	add $t0, $t0, $t1
	sw $t0, -2560($fp)
	lw $t0, -2544($fp)
	lw $t1, -2560($fp)
	sw $t0, 0($t1)
	lw $t0, -2560($fp)
	lw $t1, 0($t0)
	sw $t1, -2564($fp)
	li $t0, 14256
	sw $t0, -2568($fp)
	addi $t0, $fp, -252
	sw $t0, -2572($fp)
	li $t0, 3
	sw $t0, -2576($fp)
	lw $t0, -2576($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2580($fp)
	lw $t0, -2572($fp)
	lw $t1, -2580($fp)
	add $t0, $t0, $t1
	sw $t0, -2584($fp)
	lw $t0, -2568($fp)
	lw $t1, -2584($fp)
	sw $t0, 0($t1)
	lw $t0, -2584($fp)
	lw $t1, 0($t0)
	sw $t1, -2588($fp)
	li $t0, 34993
	sw $t0, -2592($fp)
	addi $t0, $fp, -252
	sw $t0, -2596($fp)
	li $t0, 4
	sw $t0, -2600($fp)
	lw $t0, -2600($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2604($fp)
	lw $t0, -2596($fp)
	lw $t1, -2604($fp)
	add $t0, $t0, $t1
	sw $t0, -2608($fp)
	lw $t0, -2592($fp)
	lw $t1, -2608($fp)
	sw $t0, 0($t1)
	lw $t0, -2608($fp)
	lw $t1, 0($t0)
	sw $t1, -2612($fp)
	li $t0, 46168
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	sw $t0, -2624($fp)
	li $t0, 9071
	sw $t0, -2628($fp)
	addi $t0, $fp, -280
	sw $t0, -2632($fp)
	li $t0, 0
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2640($fp)
	lw $t0, -2632($fp)
	lw $t1, -2640($fp)
	add $t0, $t0, $t1
	sw $t0, -2644($fp)
	lw $t0, -2628($fp)
	lw $t1, -2644($fp)
	sw $t0, 0($t1)
	lw $t0, -2644($fp)
	lw $t1, 0($t0)
	sw $t1, -2648($fp)
	li $t0, 22175
	sw $t0, -2652($fp)
	addi $t0, $fp, -280
	sw $t0, -2656($fp)
	li $t0, 1
	sw $t0, -2660($fp)
	lw $t0, -2660($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2664($fp)
	lw $t0, -2656($fp)
	lw $t1, -2664($fp)
	add $t0, $t0, $t1
	sw $t0, -2668($fp)
	lw $t0, -2652($fp)
	lw $t1, -2668($fp)
	sw $t0, 0($t1)
	lw $t0, -2668($fp)
	lw $t1, 0($t0)
	sw $t1, -2672($fp)
	li $t0, 50475
	sw $t0, -2676($fp)
	addi $t0, $fp, -280
	sw $t0, -2680($fp)
	li $t0, 2
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2688($fp)
	lw $t0, -2680($fp)
	lw $t1, -2688($fp)
	add $t0, $t0, $t1
	sw $t0, -2692($fp)
	lw $t0, -2676($fp)
	lw $t1, -2692($fp)
	sw $t0, 0($t1)
	lw $t0, -2692($fp)
	lw $t1, 0($t0)
	sw $t1, -2696($fp)
	li $t0, 9401
	sw $t0, -2700($fp)
	addi $t0, $fp, -280
	sw $t0, -2704($fp)
	li $t0, 3
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2712($fp)
	lw $t0, -2704($fp)
	lw $t1, -2712($fp)
	add $t0, $t0, $t1
	sw $t0, -2716($fp)
	lw $t0, -2700($fp)
	lw $t1, -2716($fp)
	sw $t0, 0($t1)
	lw $t0, -2716($fp)
	lw $t1, 0($t0)
	sw $t1, -2720($fp)
	li $t0, 63751
	sw $t0, -2724($fp)
	addi $t0, $fp, -280
	sw $t0, -2728($fp)
	li $t0, 4
	sw $t0, -2732($fp)
	lw $t0, -2732($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2736($fp)
	lw $t0, -2728($fp)
	lw $t1, -2736($fp)
	add $t0, $t0, $t1
	sw $t0, -2740($fp)
	lw $t0, -2724($fp)
	lw $t1, -2740($fp)
	sw $t0, 0($t1)
	lw $t0, -2740($fp)
	lw $t1, 0($t0)
	sw $t1, -2744($fp)
	li $t0, 2600
	sw $t0, -2748($fp)
	addi $t0, $fp, -280
	sw $t0, -2752($fp)
	li $t0, 5
	sw $t0, -2756($fp)
	lw $t0, -2756($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2760($fp)
	lw $t0, -2752($fp)
	lw $t1, -2760($fp)
	add $t0, $t0, $t1
	sw $t0, -2764($fp)
	lw $t0, -2748($fp)
	lw $t1, -2764($fp)
	sw $t0, 0($t1)
	lw $t0, -2764($fp)
	lw $t1, 0($t0)
	sw $t1, -2768($fp)
	li $t0, 49313
	sw $t0, -2772($fp)
	addi $t0, $fp, -280
	sw $t0, -2776($fp)
	li $t0, 6
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
	li $t0, 55786
	sw $t0, -2796($fp)
	lw $t0, -2796($fp)
	sw $t0, -2800($fp)
	lw $t0, -2800($fp)
	sw $t0, -2804($fp)
	li $t0, 22751
	sw $t0, -2808($fp)
	lw $t0, -2808($fp)
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	sw $t0, -2816($fp)
	li $t0, 60386
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	sw $t0, -2828($fp)
	li $t0, 52953
	sw $t0, -2832($fp)
	lw $t0, -2832($fp)
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	sw $t0, -2840($fp)
	li $t0, 22507
	sw $t0, -2844($fp)
	lw $t0, -2844($fp)
	sw $t0, -2848($fp)
	lw $t0, -2848($fp)
	sw $t0, -2852($fp)
	li $t0, 61558
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	sw $t0, -2864($fp)
	li $t0, 41465
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	sw $t0, -2876($fp)
	li $t0, 22323
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	sw $t0, -2884($fp)
	lw $t0, -2884($fp)
	sw $t0, -2888($fp)
	li $t0, 21770
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	sw $t0, -2900($fp)
	li $t0, 22734
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	sw $t0, -2908($fp)
	lw $t0, -2908($fp)
	sw $t0, -2912($fp)
	li $t0, 20746
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	sw $t0, -2920($fp)
	lw $t0, -2920($fp)
	sw $t0, -2924($fp)
	li $t0, 50673
	sw $t0, -2928($fp)
	addi $t0, $fp, -312
	sw $t0, -2932($fp)
	li $t0, 0
	sw $t0, -2936($fp)
	lw $t0, -2936($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2940($fp)
	lw $t0, -2932($fp)
	lw $t1, -2940($fp)
	add $t0, $t0, $t1
	sw $t0, -2944($fp)
	lw $t0, -2928($fp)
	lw $t1, -2944($fp)
	sw $t0, 0($t1)
	lw $t0, -2944($fp)
	lw $t1, 0($t0)
	sw $t1, -2948($fp)
	li $t0, 65379
	sw $t0, -2952($fp)
	addi $t0, $fp, -312
	sw $t0, -2956($fp)
	li $t0, 1
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2964($fp)
	lw $t0, -2956($fp)
	lw $t1, -2964($fp)
	add $t0, $t0, $t1
	sw $t0, -2968($fp)
	lw $t0, -2952($fp)
	lw $t1, -2968($fp)
	sw $t0, 0($t1)
	lw $t0, -2968($fp)
	lw $t1, 0($t0)
	sw $t1, -2972($fp)
	li $t0, 58680
	sw $t0, -2976($fp)
	addi $t0, $fp, -312
	sw $t0, -2980($fp)
	li $t0, 2
	sw $t0, -2984($fp)
	lw $t0, -2984($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2988($fp)
	lw $t0, -2980($fp)
	lw $t1, -2988($fp)
	add $t0, $t0, $t1
	sw $t0, -2992($fp)
	lw $t0, -2976($fp)
	lw $t1, -2992($fp)
	sw $t0, 0($t1)
	lw $t0, -2992($fp)
	lw $t1, 0($t0)
	sw $t1, -2996($fp)
	li $t0, 56275
	sw $t0, -3000($fp)
	addi $t0, $fp, -312
	sw $t0, -3004($fp)
	li $t0, 3
	sw $t0, -3008($fp)
	lw $t0, -3008($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3012($fp)
	lw $t0, -3004($fp)
	lw $t1, -3012($fp)
	add $t0, $t0, $t1
	sw $t0, -3016($fp)
	lw $t0, -3000($fp)
	lw $t1, -3016($fp)
	sw $t0, 0($t1)
	lw $t0, -3016($fp)
	lw $t1, 0($t0)
	sw $t1, -3020($fp)
	li $t0, 2910
	sw $t0, -3024($fp)
	addi $t0, $fp, -312
	sw $t0, -3028($fp)
	li $t0, 4
	sw $t0, -3032($fp)
	lw $t0, -3032($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3036($fp)
	lw $t0, -3028($fp)
	lw $t1, -3036($fp)
	add $t0, $t0, $t1
	sw $t0, -3040($fp)
	lw $t0, -3024($fp)
	lw $t1, -3040($fp)
	sw $t0, 0($t1)
	lw $t0, -3040($fp)
	lw $t1, 0($t0)
	sw $t1, -3044($fp)
	li $t0, 5597
	sw $t0, -3048($fp)
	addi $t0, $fp, -312
	sw $t0, -3052($fp)
	li $t0, 5
	sw $t0, -3056($fp)
	lw $t0, -3056($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3060($fp)
	lw $t0, -3052($fp)
	lw $t1, -3060($fp)
	add $t0, $t0, $t1
	sw $t0, -3064($fp)
	lw $t0, -3048($fp)
	lw $t1, -3064($fp)
	sw $t0, 0($t1)
	lw $t0, -3064($fp)
	lw $t1, 0($t0)
	sw $t1, -3068($fp)
	li $t0, 25361
	sw $t0, -3072($fp)
	addi $t0, $fp, -312
	sw $t0, -3076($fp)
	li $t0, 6
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3084($fp)
	lw $t0, -3076($fp)
	lw $t1, -3084($fp)
	add $t0, $t0, $t1
	sw $t0, -3088($fp)
	lw $t0, -3072($fp)
	lw $t1, -3088($fp)
	sw $t0, 0($t1)
	lw $t0, -3088($fp)
	lw $t1, 0($t0)
	sw $t1, -3092($fp)
	li $t0, 5533
	sw $t0, -3096($fp)
	addi $t0, $fp, -312
	sw $t0, -3100($fp)
	li $t0, 7
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3108($fp)
	lw $t0, -3100($fp)
	lw $t1, -3108($fp)
	add $t0, $t0, $t1
	sw $t0, -3112($fp)
	lw $t0, -3096($fp)
	lw $t1, -3112($fp)
	sw $t0, 0($t1)
	lw $t0, -3112($fp)
	lw $t1, 0($t0)
	sw $t1, -3116($fp)
	li $t0, 54944
	sw $t0, -3120($fp)
	lw $t0, -3120($fp)
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	sw $t0, -3128($fp)
	li $t0, 63752
	sw $t0, -3132($fp)
	lw $t0, -3132($fp)
	sw $t0, -3136($fp)
	lw $t0, -3136($fp)
	sw $t0, -3140($fp)
	li $t0, 19789
	sw $t0, -3144($fp)
	lw $t0, -3144($fp)
	sw $t0, -3148($fp)
	lw $t0, -3148($fp)
	sw $t0, -3152($fp)
	li $t0, 24401
	sw $t0, -3156($fp)
	lw $t0, -3156($fp)
	sw $t0, -3160($fp)
	lw $t0, -3160($fp)
	sw $t0, -3164($fp)
	li $t0, 44384
	sw $t0, -3168($fp)
	lw $t0, -3168($fp)
	sw $t0, -3172($fp)
	lw $t0, -3172($fp)
	sw $t0, -3176($fp)
	li $t0, 28860
	sw $t0, -3180($fp)
	addi $t0, $fp, -324
	sw $t0, -3184($fp)
	li $t0, 0
	sw $t0, -3188($fp)
	lw $t0, -3188($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3192($fp)
	lw $t0, -3184($fp)
	lw $t1, -3192($fp)
	add $t0, $t0, $t1
	sw $t0, -3196($fp)
	lw $t0, -3180($fp)
	lw $t1, -3196($fp)
	sw $t0, 0($t1)
	lw $t0, -3196($fp)
	lw $t1, 0($t0)
	sw $t1, -3200($fp)
	li $t0, 46577
	sw $t0, -3204($fp)
	addi $t0, $fp, -324
	sw $t0, -3208($fp)
	li $t0, 1
	sw $t0, -3212($fp)
	lw $t0, -3212($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3216($fp)
	lw $t0, -3208($fp)
	lw $t1, -3216($fp)
	add $t0, $t0, $t1
	sw $t0, -3220($fp)
	lw $t0, -3204($fp)
	lw $t1, -3220($fp)
	sw $t0, 0($t1)
	lw $t0, -3220($fp)
	lw $t1, 0($t0)
	sw $t1, -3224($fp)
	li $t0, 29323
	sw $t0, -3228($fp)
	addi $t0, $fp, -324
	sw $t0, -3232($fp)
	li $t0, 2
	sw $t0, -3236($fp)
	lw $t0, -3236($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3240($fp)
	lw $t0, -3232($fp)
	lw $t1, -3240($fp)
	add $t0, $t0, $t1
	sw $t0, -3244($fp)
	lw $t0, -3228($fp)
	lw $t1, -3244($fp)
	sw $t0, 0($t1)
	lw $t0, -3244($fp)
	lw $t1, 0($t0)
	sw $t1, -3248($fp)
	li $t0, 38261
	sw $t0, -3252($fp)
	lw $t0, -3252($fp)
	sw $t0, -3256($fp)
	lw $t0, -3256($fp)
	sw $t0, -3260($fp)
	li $t0, 44792
	sw $t0, -3264($fp)
	addi $t0, $fp, -364
	sw $t0, -3268($fp)
	li $t0, 0
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3276($fp)
	lw $t0, -3268($fp)
	lw $t1, -3276($fp)
	add $t0, $t0, $t1
	sw $t0, -3280($fp)
	lw $t0, -3264($fp)
	lw $t1, -3280($fp)
	sw $t0, 0($t1)
	lw $t0, -3280($fp)
	lw $t1, 0($t0)
	sw $t1, -3284($fp)
	li $t0, 31923
	sw $t0, -3288($fp)
	addi $t0, $fp, -364
	sw $t0, -3292($fp)
	li $t0, 1
	sw $t0, -3296($fp)
	lw $t0, -3296($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3300($fp)
	lw $t0, -3292($fp)
	lw $t1, -3300($fp)
	add $t0, $t0, $t1
	sw $t0, -3304($fp)
	lw $t0, -3288($fp)
	lw $t1, -3304($fp)
	sw $t0, 0($t1)
	lw $t0, -3304($fp)
	lw $t1, 0($t0)
	sw $t1, -3308($fp)
	li $t0, 22039
	sw $t0, -3312($fp)
	addi $t0, $fp, -364
	sw $t0, -3316($fp)
	li $t0, 2
	sw $t0, -3320($fp)
	lw $t0, -3320($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3324($fp)
	lw $t0, -3316($fp)
	lw $t1, -3324($fp)
	add $t0, $t0, $t1
	sw $t0, -3328($fp)
	lw $t0, -3312($fp)
	lw $t1, -3328($fp)
	sw $t0, 0($t1)
	lw $t0, -3328($fp)
	lw $t1, 0($t0)
	sw $t1, -3332($fp)
	li $t0, 35042
	sw $t0, -3336($fp)
	addi $t0, $fp, -364
	sw $t0, -3340($fp)
	li $t0, 3
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3348($fp)
	lw $t0, -3340($fp)
	lw $t1, -3348($fp)
	add $t0, $t0, $t1
	sw $t0, -3352($fp)
	lw $t0, -3336($fp)
	lw $t1, -3352($fp)
	sw $t0, 0($t1)
	lw $t0, -3352($fp)
	lw $t1, 0($t0)
	sw $t1, -3356($fp)
	li $t0, 54674
	sw $t0, -3360($fp)
	addi $t0, $fp, -364
	sw $t0, -3364($fp)
	li $t0, 4
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3372($fp)
	lw $t0, -3364($fp)
	lw $t1, -3372($fp)
	add $t0, $t0, $t1
	sw $t0, -3376($fp)
	lw $t0, -3360($fp)
	lw $t1, -3376($fp)
	sw $t0, 0($t1)
	lw $t0, -3376($fp)
	lw $t1, 0($t0)
	sw $t1, -3380($fp)
	li $t0, 16889
	sw $t0, -3384($fp)
	addi $t0, $fp, -364
	sw $t0, -3388($fp)
	li $t0, 5
	sw $t0, -3392($fp)
	lw $t0, -3392($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3396($fp)
	lw $t0, -3388($fp)
	lw $t1, -3396($fp)
	add $t0, $t0, $t1
	sw $t0, -3400($fp)
	lw $t0, -3384($fp)
	lw $t1, -3400($fp)
	sw $t0, 0($t1)
	lw $t0, -3400($fp)
	lw $t1, 0($t0)
	sw $t1, -3404($fp)
	li $t0, 22459
	sw $t0, -3408($fp)
	addi $t0, $fp, -364
	sw $t0, -3412($fp)
	li $t0, 6
	sw $t0, -3416($fp)
	lw $t0, -3416($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3420($fp)
	lw $t0, -3412($fp)
	lw $t1, -3420($fp)
	add $t0, $t0, $t1
	sw $t0, -3424($fp)
	lw $t0, -3408($fp)
	lw $t1, -3424($fp)
	sw $t0, 0($t1)
	lw $t0, -3424($fp)
	lw $t1, 0($t0)
	sw $t1, -3428($fp)
	li $t0, 11646
	sw $t0, -3432($fp)
	addi $t0, $fp, -364
	sw $t0, -3436($fp)
	li $t0, 7
	sw $t0, -3440($fp)
	lw $t0, -3440($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3444($fp)
	lw $t0, -3436($fp)
	lw $t1, -3444($fp)
	add $t0, $t0, $t1
	sw $t0, -3448($fp)
	lw $t0, -3432($fp)
	lw $t1, -3448($fp)
	sw $t0, 0($t1)
	lw $t0, -3448($fp)
	lw $t1, 0($t0)
	sw $t1, -3452($fp)
	li $t0, 12911
	sw $t0, -3456($fp)
	addi $t0, $fp, -364
	sw $t0, -3460($fp)
	li $t0, 8
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3468($fp)
	lw $t0, -3460($fp)
	lw $t1, -3468($fp)
	add $t0, $t0, $t1
	sw $t0, -3472($fp)
	lw $t0, -3456($fp)
	lw $t1, -3472($fp)
	sw $t0, 0($t1)
	lw $t0, -3472($fp)
	lw $t1, 0($t0)
	sw $t1, -3476($fp)
	li $t0, 63924
	sw $t0, -3480($fp)
	addi $t0, $fp, -364
	sw $t0, -3484($fp)
	li $t0, 9
	sw $t0, -3488($fp)
	lw $t0, -3488($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3492($fp)
	lw $t0, -3484($fp)
	lw $t1, -3492($fp)
	add $t0, $t0, $t1
	sw $t0, -3496($fp)
	lw $t0, -3480($fp)
	lw $t1, -3496($fp)
	sw $t0, 0($t1)
	lw $t0, -3496($fp)
	lw $t1, 0($t0)
	sw $t1, -3500($fp)
	li $t0, 33969
	sw $t0, -3504($fp)
	lw $t0, -3504($fp)
	sw $t0, -3508($fp)
	lw $t0, -3508($fp)
	sw $t0, -3512($fp)
	li $t0, 34681
	sw $t0, -3516($fp)
	lw $t0, -3516($fp)
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	sw $t0, -3524($fp)
	li $t0, 21122
	sw $t0, -3528($fp)
	addi $t0, $fp, -400
	sw $t0, -3532($fp)
	li $t0, 0
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3540($fp)
	lw $t0, -3532($fp)
	lw $t1, -3540($fp)
	add $t0, $t0, $t1
	sw $t0, -3544($fp)
	lw $t0, -3528($fp)
	lw $t1, -3544($fp)
	sw $t0, 0($t1)
	lw $t0, -3544($fp)
	lw $t1, 0($t0)
	sw $t1, -3548($fp)
	li $t0, 54715
	sw $t0, -3552($fp)
	addi $t0, $fp, -400
	sw $t0, -3556($fp)
	li $t0, 1
	sw $t0, -3560($fp)
	lw $t0, -3560($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3564($fp)
	lw $t0, -3556($fp)
	lw $t1, -3564($fp)
	add $t0, $t0, $t1
	sw $t0, -3568($fp)
	lw $t0, -3552($fp)
	lw $t1, -3568($fp)
	sw $t0, 0($t1)
	lw $t0, -3568($fp)
	lw $t1, 0($t0)
	sw $t1, -3572($fp)
	li $t0, 19818
	sw $t0, -3576($fp)
	addi $t0, $fp, -400
	sw $t0, -3580($fp)
	li $t0, 2
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3588($fp)
	lw $t0, -3580($fp)
	lw $t1, -3588($fp)
	add $t0, $t0, $t1
	sw $t0, -3592($fp)
	lw $t0, -3576($fp)
	lw $t1, -3592($fp)
	sw $t0, 0($t1)
	lw $t0, -3592($fp)
	lw $t1, 0($t0)
	sw $t1, -3596($fp)
	li $t0, 20965
	sw $t0, -3600($fp)
	addi $t0, $fp, -400
	sw $t0, -3604($fp)
	li $t0, 3
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3612($fp)
	lw $t0, -3604($fp)
	lw $t1, -3612($fp)
	add $t0, $t0, $t1
	sw $t0, -3616($fp)
	lw $t0, -3600($fp)
	lw $t1, -3616($fp)
	sw $t0, 0($t1)
	lw $t0, -3616($fp)
	lw $t1, 0($t0)
	sw $t1, -3620($fp)
	li $t0, 47859
	sw $t0, -3624($fp)
	addi $t0, $fp, -400
	sw $t0, -3628($fp)
	li $t0, 4
	sw $t0, -3632($fp)
	lw $t0, -3632($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3636($fp)
	lw $t0, -3628($fp)
	lw $t1, -3636($fp)
	add $t0, $t0, $t1
	sw $t0, -3640($fp)
	lw $t0, -3624($fp)
	lw $t1, -3640($fp)
	sw $t0, 0($t1)
	lw $t0, -3640($fp)
	lw $t1, 0($t0)
	sw $t1, -3644($fp)
	li $t0, 10558
	sw $t0, -3648($fp)
	addi $t0, $fp, -400
	sw $t0, -3652($fp)
	li $t0, 5
	sw $t0, -3656($fp)
	lw $t0, -3656($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3660($fp)
	lw $t0, -3652($fp)
	lw $t1, -3660($fp)
	add $t0, $t0, $t1
	sw $t0, -3664($fp)
	lw $t0, -3648($fp)
	lw $t1, -3664($fp)
	sw $t0, 0($t1)
	lw $t0, -3664($fp)
	lw $t1, 0($t0)
	sw $t1, -3668($fp)
	li $t0, 23875
	sw $t0, -3672($fp)
	addi $t0, $fp, -400
	sw $t0, -3676($fp)
	li $t0, 6
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3684($fp)
	lw $t0, -3676($fp)
	lw $t1, -3684($fp)
	add $t0, $t0, $t1
	sw $t0, -3688($fp)
	lw $t0, -3672($fp)
	lw $t1, -3688($fp)
	sw $t0, 0($t1)
	lw $t0, -3688($fp)
	lw $t1, 0($t0)
	sw $t1, -3692($fp)
	li $t0, 53457
	sw $t0, -3696($fp)
	addi $t0, $fp, -400
	sw $t0, -3700($fp)
	li $t0, 7
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3708($fp)
	lw $t0, -3700($fp)
	lw $t1, -3708($fp)
	add $t0, $t0, $t1
	sw $t0, -3712($fp)
	lw $t0, -3696($fp)
	lw $t1, -3712($fp)
	sw $t0, 0($t1)
	lw $t0, -3712($fp)
	lw $t1, 0($t0)
	sw $t1, -3716($fp)
	li $t0, 35919
	sw $t0, -3720($fp)
	addi $t0, $fp, -400
	sw $t0, -3724($fp)
	li $t0, 8
	sw $t0, -3728($fp)
	lw $t0, -3728($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3732($fp)
	lw $t0, -3724($fp)
	lw $t1, -3732($fp)
	add $t0, $t0, $t1
	sw $t0, -3736($fp)
	lw $t0, -3720($fp)
	lw $t1, -3736($fp)
	sw $t0, 0($t1)
	lw $t0, -3736($fp)
	lw $t1, 0($t0)
	sw $t1, -3740($fp)
	li $t0, 29408
	sw $t0, -3744($fp)
	lw $t0, -3744($fp)
	sw $t0, -3748($fp)
	lw $t0, -3748($fp)
	sw $t0, -3752($fp)
	li $t0, 42865
	sw $t0, -3756($fp)
	lw $t0, -3756($fp)
	sw $t0, -3760($fp)
	lw $t0, -3760($fp)
	sw $t0, -3764($fp)
	li $t0, 34135
	sw $t0, -3768($fp)
	lw $t0, -3768($fp)
	sw $t0, -3772($fp)
	lw $t0, -3772($fp)
	sw $t0, -3776($fp)
	li $t0, 49197
	sw $t0, -3780($fp)
	lw $t0, -3780($fp)
	sw $t0, -3784($fp)
	lw $t0, -3784($fp)
	sw $t0, -3788($fp)
	li $t0, 1731
	sw $t0, -3792($fp)
	lw $t0, -3792($fp)
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	sw $t0, -3800($fp)
	li $t0, 12983
	sw $t0, -3804($fp)
	lw $t0, -3804($fp)
	sw $t0, -3808($fp)
	lw $t0, -3808($fp)
	sw $t0, -3812($fp)
	li $t0, 12521
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	sw $t0, -3824($fp)
	li $t0, 48308
	sw $t0, -3828($fp)
	lw $t0, -3828($fp)
	sw $t0, -3832($fp)
	lw $t0, -3832($fp)
	sw $t0, -3836($fp)
	li $t0, 42306
	sw $t0, -3840($fp)
	lw $t0, -3840($fp)
	sw $t0, -3844($fp)
	lw $t0, -3844($fp)
	sw $t0, -3848($fp)
	li $t0, 50783
	sw $t0, -3852($fp)
	lw $t0, -3852($fp)
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	sw $t0, -3860($fp)
	li $t0, 27564
	sw $t0, -3864($fp)
	lw $t0, -3864($fp)
	sw $t0, -3868($fp)
	lw $t0, -3868($fp)
	sw $t0, -3872($fp)
	li $t0, 8693
	sw $t0, -3876($fp)
	lw $t0, -3876($fp)
	sw $t0, -3880($fp)
	lw $t0, -3880($fp)
	sw $t0, -3884($fp)
	li $t0, 7286
	sw $t0, -3888($fp)
	lw $t0, -3888($fp)
	sw $t0, -3892($fp)
	lw $t0, -3892($fp)
	sw $t0, -3896($fp)
	li $t0, 62606
	sw $t0, -3900($fp)
	lw $t0, -3900($fp)
	sw $t0, -3904($fp)
	lw $t0, -3904($fp)
	sw $t0, -3908($fp)
	li $t0, 63367
	sw $t0, -3912($fp)
	lw $t0, -3912($fp)
	sw $t0, -3916($fp)
	lw $t0, -3916($fp)
	sw $t0, -3920($fp)
	li $t0, 24175
	sw $t0, -3924($fp)
	lw $t0, -3924($fp)
	sw $t0, -3928($fp)
	lw $t0, -3928($fp)
	sw $t0, -3932($fp)
	li $t0, 19529
	sw $t0, -3936($fp)
	lw $t0, -3936($fp)
	sw $t0, -3940($fp)
	lw $t0, -3940($fp)
	sw $t0, -3944($fp)
	li $t0, 9477
	sw $t0, -3948($fp)
	lw $t0, -3948($fp)
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	sw $t0, -3956($fp)
	li $t0, 37086
	sw $t0, -3960($fp)
	addi $t0, $fp, -408
	sw $t0, -3964($fp)
	li $t0, 0
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3972($fp)
	lw $t0, -3964($fp)
	lw $t1, -3972($fp)
	add $t0, $t0, $t1
	sw $t0, -3976($fp)
	lw $t0, -3960($fp)
	lw $t1, -3976($fp)
	sw $t0, 0($t1)
	lw $t0, -3976($fp)
	lw $t1, 0($t0)
	sw $t1, -3980($fp)
	li $t0, 17917
	sw $t0, -3984($fp)
	addi $t0, $fp, -408
	sw $t0, -3988($fp)
	li $t0, 1
	sw $t0, -3992($fp)
	lw $t0, -3992($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3996($fp)
	lw $t0, -3988($fp)
	lw $t1, -3996($fp)
	add $t0, $t0, $t1
	sw $t0, -4000($fp)
	lw $t0, -3984($fp)
	lw $t1, -4000($fp)
	sw $t0, 0($t1)
	lw $t0, -4000($fp)
	lw $t1, 0($t0)
	sw $t1, -4004($fp)
	li $t0, 43446
	sw $t0, -4008($fp)
	lw $t0, -4008($fp)
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	sw $t0, -4016($fp)
	li $t0, 6231
	sw $t0, -4020($fp)
	lw $t0, -4020($fp)
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	sw $t0, -4028($fp)
	li $t0, 39040
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	sw $t0, -4040($fp)
	li $t0, 32626
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	sw $t0, -4052($fp)
	li $t0, 26049
	sw $t0, -4056($fp)
	addi $t0, $fp, -440
	sw $t0, -4060($fp)
	li $t0, 0
	sw $t0, -4064($fp)
	lw $t0, -4064($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4068($fp)
	lw $t0, -4060($fp)
	lw $t1, -4068($fp)
	add $t0, $t0, $t1
	sw $t0, -4072($fp)
	lw $t0, -4056($fp)
	lw $t1, -4072($fp)
	sw $t0, 0($t1)
	lw $t0, -4072($fp)
	lw $t1, 0($t0)
	sw $t1, -4076($fp)
	li $t0, 60005
	sw $t0, -4080($fp)
	addi $t0, $fp, -440
	sw $t0, -4084($fp)
	li $t0, 1
	sw $t0, -4088($fp)
	lw $t0, -4088($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4092($fp)
	lw $t0, -4084($fp)
	lw $t1, -4092($fp)
	add $t0, $t0, $t1
	sw $t0, -4096($fp)
	lw $t0, -4080($fp)
	lw $t1, -4096($fp)
	sw $t0, 0($t1)
	lw $t0, -4096($fp)
	lw $t1, 0($t0)
	sw $t1, -4100($fp)
	li $t0, 14949
	sw $t0, -4104($fp)
	addi $t0, $fp, -440
	sw $t0, -4108($fp)
	li $t0, 2
	sw $t0, -4112($fp)
	lw $t0, -4112($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4116($fp)
	lw $t0, -4108($fp)
	lw $t1, -4116($fp)
	add $t0, $t0, $t1
	sw $t0, -4120($fp)
	lw $t0, -4104($fp)
	lw $t1, -4120($fp)
	sw $t0, 0($t1)
	lw $t0, -4120($fp)
	lw $t1, 0($t0)
	sw $t1, -4124($fp)
	li $t0, 36607
	sw $t0, -4128($fp)
	addi $t0, $fp, -440
	sw $t0, -4132($fp)
	li $t0, 3
	sw $t0, -4136($fp)
	lw $t0, -4136($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4140($fp)
	lw $t0, -4132($fp)
	lw $t1, -4140($fp)
	add $t0, $t0, $t1
	sw $t0, -4144($fp)
	lw $t0, -4128($fp)
	lw $t1, -4144($fp)
	sw $t0, 0($t1)
	lw $t0, -4144($fp)
	lw $t1, 0($t0)
	sw $t1, -4148($fp)
	li $t0, 18345
	sw $t0, -4152($fp)
	addi $t0, $fp, -440
	sw $t0, -4156($fp)
	li $t0, 4
	sw $t0, -4160($fp)
	lw $t0, -4160($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4164($fp)
	lw $t0, -4156($fp)
	lw $t1, -4164($fp)
	add $t0, $t0, $t1
	sw $t0, -4168($fp)
	lw $t0, -4152($fp)
	lw $t1, -4168($fp)
	sw $t0, 0($t1)
	lw $t0, -4168($fp)
	lw $t1, 0($t0)
	sw $t1, -4172($fp)
	li $t0, 2870
	sw $t0, -4176($fp)
	addi $t0, $fp, -440
	sw $t0, -4180($fp)
	li $t0, 5
	sw $t0, -4184($fp)
	lw $t0, -4184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4188($fp)
	lw $t0, -4180($fp)
	lw $t1, -4188($fp)
	add $t0, $t0, $t1
	sw $t0, -4192($fp)
	lw $t0, -4176($fp)
	lw $t1, -4192($fp)
	sw $t0, 0($t1)
	lw $t0, -4192($fp)
	lw $t1, 0($t0)
	sw $t1, -4196($fp)
	li $t0, 6990
	sw $t0, -4200($fp)
	addi $t0, $fp, -440
	sw $t0, -4204($fp)
	li $t0, 6
	sw $t0, -4208($fp)
	lw $t0, -4208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4212($fp)
	lw $t0, -4204($fp)
	lw $t1, -4212($fp)
	add $t0, $t0, $t1
	sw $t0, -4216($fp)
	lw $t0, -4200($fp)
	lw $t1, -4216($fp)
	sw $t0, 0($t1)
	lw $t0, -4216($fp)
	lw $t1, 0($t0)
	sw $t1, -4220($fp)
	li $t0, 47753
	sw $t0, -4224($fp)
	addi $t0, $fp, -440
	sw $t0, -4228($fp)
	li $t0, 7
	sw $t0, -4232($fp)
	lw $t0, -4232($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4236($fp)
	lw $t0, -4228($fp)
	lw $t1, -4236($fp)
	add $t0, $t0, $t1
	sw $t0, -4240($fp)
	lw $t0, -4224($fp)
	lw $t1, -4240($fp)
	sw $t0, 0($t1)
	lw $t0, -4240($fp)
	lw $t1, 0($t0)
	sw $t1, -4244($fp)
	li $t0, 45736
	sw $t0, -4248($fp)
	lw $t0, -4248($fp)
	sw $t0, -4252($fp)
	lw $t0, -4252($fp)
	sw $t0, -4256($fp)
	li $t0, 41125
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	sw $t0, -4268($fp)
	li $t0, 31415
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	sw $t0, -4276($fp)
	lw $t0, -4276($fp)
	sw $t0, -4280($fp)
	li $t0, 47467
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	sw $t0, -4292($fp)
	li $t0, 54108
	sw $t0, -4296($fp)
	lw $t0, -4296($fp)
	sw $t0, -4300($fp)
	lw $t0, -4300($fp)
	sw $t0, -4304($fp)
	li $t0, 43936
	sw $t0, -4308($fp)
	addi $t0, $fp, -444
	sw $t0, -4312($fp)
	li $t0, 0
	sw $t0, -4316($fp)
	lw $t0, -4316($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4320($fp)
	lw $t0, -4312($fp)
	lw $t1, -4320($fp)
	add $t0, $t0, $t1
	sw $t0, -4324($fp)
	lw $t0, -4308($fp)
	lw $t1, -4324($fp)
	sw $t0, 0($t1)
	lw $t0, -4324($fp)
	lw $t1, 0($t0)
	sw $t1, -4328($fp)
	li $t0, 30239
	sw $t0, -4332($fp)
	lw $t0, -4332($fp)
	sw $t0, -4336($fp)
	lw $t0, -4336($fp)
	sw $t0, -4340($fp)
	li $t0, 30878
	sw $t0, -4344($fp)
	lw $t0, -4344($fp)
	sw $t0, -4348($fp)
	lw $t0, -4348($fp)
	sw $t0, -4352($fp)
	li $t0, 29183
	sw $t0, -4356($fp)
	lw $t0, -4356($fp)
	sw $t0, -4360($fp)
	lw $t0, -4360($fp)
	sw $t0, -4364($fp)
	li $t0, 57803
	sw $t0, -4368($fp)
	lw $t0, -4368($fp)
	sw $t0, -4372($fp)
	lw $t0, -4372($fp)
	sw $t0, -4376($fp)
	li $t0, 39571
	sw $t0, -4380($fp)
	lw $t0, -4380($fp)
	sw $t0, -4384($fp)
	lw $t0, -4384($fp)
	sw $t0, -4388($fp)
	li $t0, 36469
	sw $t0, -4392($fp)
	lw $t0, -4392($fp)
	sw $t0, -4396($fp)
	lw $t0, -4396($fp)
	sw $t0, -4400($fp)
	li $t0, 54873
	sw $t0, -4404($fp)
	lw $t0, -4404($fp)
	sw $t0, -4408($fp)
	lw $t0, -4408($fp)
	sw $t0, -4412($fp)
	li $t0, 37403
	sw $t0, -4416($fp)
	addi $t0, $fp, -448
	sw $t0, -4420($fp)
	li $t0, 0
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
	li $t0, 60644
	sw $t0, -4440($fp)
	addi $t0, $fp, -488
	sw $t0, -4444($fp)
	li $t0, 0
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
	li $t0, 8866
	sw $t0, -4464($fp)
	addi $t0, $fp, -488
	sw $t0, -4468($fp)
	li $t0, 1
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
	li $t0, 46880
	sw $t0, -4488($fp)
	addi $t0, $fp, -488
	sw $t0, -4492($fp)
	li $t0, 2
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
	li $t0, 32194
	sw $t0, -4512($fp)
	addi $t0, $fp, -488
	sw $t0, -4516($fp)
	li $t0, 3
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
	li $t0, 26783
	sw $t0, -4536($fp)
	addi $t0, $fp, -488
	sw $t0, -4540($fp)
	li $t0, 4
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
	li $t0, 24791
	sw $t0, -4560($fp)
	addi $t0, $fp, -488
	sw $t0, -4564($fp)
	li $t0, 5
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
	li $t0, 38425
	sw $t0, -4584($fp)
	addi $t0, $fp, -488
	sw $t0, -4588($fp)
	li $t0, 6
	sw $t0, -4592($fp)
	lw $t0, -4592($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4596($fp)
	lw $t0, -4588($fp)
	lw $t1, -4596($fp)
	add $t0, $t0, $t1
	sw $t0, -4600($fp)
	lw $t0, -4584($fp)
	lw $t1, -4600($fp)
	sw $t0, 0($t1)
	lw $t0, -4600($fp)
	lw $t1, 0($t0)
	sw $t1, -4604($fp)
	li $t0, 287
	sw $t0, -4608($fp)
	addi $t0, $fp, -488
	sw $t0, -4612($fp)
	li $t0, 7
	sw $t0, -4616($fp)
	lw $t0, -4616($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4620($fp)
	lw $t0, -4612($fp)
	lw $t1, -4620($fp)
	add $t0, $t0, $t1
	sw $t0, -4624($fp)
	lw $t0, -4608($fp)
	lw $t1, -4624($fp)
	sw $t0, 0($t1)
	lw $t0, -4624($fp)
	lw $t1, 0($t0)
	sw $t1, -4628($fp)
	li $t0, 57417
	sw $t0, -4632($fp)
	addi $t0, $fp, -488
	sw $t0, -4636($fp)
	li $t0, 8
	sw $t0, -4640($fp)
	lw $t0, -4640($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4644($fp)
	lw $t0, -4636($fp)
	lw $t1, -4644($fp)
	add $t0, $t0, $t1
	sw $t0, -4648($fp)
	lw $t0, -4632($fp)
	lw $t1, -4648($fp)
	sw $t0, 0($t1)
	lw $t0, -4648($fp)
	lw $t1, 0($t0)
	sw $t1, -4652($fp)
	li $t0, 64475
	sw $t0, -4656($fp)
	addi $t0, $fp, -488
	sw $t0, -4660($fp)
	li $t0, 9
	sw $t0, -4664($fp)
	lw $t0, -4664($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4668($fp)
	lw $t0, -4660($fp)
	lw $t1, -4668($fp)
	add $t0, $t0, $t1
	sw $t0, -4672($fp)
	lw $t0, -4656($fp)
	lw $t1, -4672($fp)
	sw $t0, 0($t1)
	lw $t0, -4672($fp)
	lw $t1, 0($t0)
	sw $t1, -4676($fp)
	li $t0, 60293
	sw $t0, -4680($fp)
	lw $t0, -4680($fp)
	sw $t0, -4684($fp)
	lw $t0, -4684($fp)
	sw $t0, -4688($fp)
	li $t0, 6830
	sw $t0, -4692($fp)
	lw $t0, -4692($fp)
	sw $t0, -4696($fp)
	lw $t0, -4696($fp)
	sw $t0, -4700($fp)
	li $t0, 35546
	sw $t0, -4704($fp)
	lw $t0, -4704($fp)
	sw $t0, -4708($fp)
	lw $t0, -4708($fp)
	sw $t0, -4712($fp)
	li $t0, 13102
	sw $t0, -4716($fp)
	lw $t0, -4716($fp)
	sw $t0, -4720($fp)
	lw $t0, -4720($fp)
	sw $t0, -4724($fp)
	li $t0, 9701
	sw $t0, -4728($fp)
	lw $t0, -4728($fp)
	sw $t0, -4732($fp)
	lw $t0, -4732($fp)
	sw $t0, -4736($fp)
	li $t0, 42537
	sw $t0, -4740($fp)
	lw $t0, -4740($fp)
	sw $t0, -4744($fp)
	lw $t0, -4744($fp)
	sw $t0, -4748($fp)
	li $t0, 60855
	sw $t0, -4752($fp)
	lw $t0, -4752($fp)
	sw $t0, -4756($fp)
	lw $t0, -4756($fp)
	sw $t0, -4760($fp)
	li $t0, 55437
	sw $t0, -4764($fp)
	lw $t0, -4764($fp)
	sw $t0, -4768($fp)
	lw $t0, -4768($fp)
	sw $t0, -4772($fp)
	li $t0, 18126
	sw $t0, -4776($fp)
	lw $t0, -4776($fp)
	sw $t0, -4780($fp)
	lw $t0, -4780($fp)
	sw $t0, -4784($fp)
	li $t0, 26734
	sw $t0, -4788($fp)
	lw $t0, -4788($fp)
	sw $t0, -4792($fp)
	lw $t0, -4792($fp)
	sw $t0, -4796($fp)
	li $t0, 37368
	sw $t0, -4800($fp)
	lw $t0, -4800($fp)
	sw $t0, -4804($fp)
	lw $t0, -4804($fp)
	sw $t0, -4808($fp)
	li $t0, 6699
	sw $t0, -4812($fp)
	lw $t0, -4812($fp)
	sw $t0, -4816($fp)
	lw $t0, -4816($fp)
	sw $t0, -4820($fp)
	li $t0, 5135
	sw $t0, -4824($fp)
	lw $t0, -4824($fp)
	sw $t0, -4828($fp)
	lw $t0, -4828($fp)
	sw $t0, -4832($fp)
	li $t0, 2071
	sw $t0, -4836($fp)
	lw $t0, -4836($fp)
	sw $t0, -4840($fp)
	lw $t0, -4840($fp)
	sw $t0, -4844($fp)
	li $t0, 37577
	sw $t0, -4848($fp)
	lw $t0, -4848($fp)
	sw $t0, -4852($fp)
	lw $t0, -4852($fp)
	sw $t0, -4856($fp)
	li $t0, 34318
	sw $t0, -4860($fp)
	lw $t1, -4860($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
	li $t0, 59874
	sw $t0, -4864($fp)
	lw $t1, -4864($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label125
label124:
	lw $t0, -3940($fp)
	sw $t0, -4868($fp)
	li $t0, 0
	lw $t1, -4868($fp)
	sub $t0, $t0, $t1
	sw $t0, -4872($fp)
	li $t0, 0
	lw $t1, -4872($fp)
	sub $t0, $t0, $t1
	sw $t0, -4876($fp)
	li $t0, 0
	lw $t1, -4876($fp)
	sub $t0, $t0, $t1
	sw $t0, -4880($fp)
	lw $t1, -4880($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label128
label127:
label130:
	li $t0, 0
	sw $t0, -4884($fp)
	lw $t0, -3148($fp)
	sw $t0, -4888($fp)
	lw $t0, 8($fp)
	sw $t0, -4892($fp)
	lw $t0, -4888($fp)
	lw $t1, -4892($fp)
	add $t0, $t0, $t1
	sw $t0, -4896($fp)
	lw $t1, -4896($fp)
	li $t2, 0
	bne $t1, $t2, label133
	j label135
label135:
	lw $t0, 12($fp)
	sw $t0, -4900($fp)
	lw $t1, -4900($fp)
	li $t2, 0
	bne $t1, $t2, label133
	j label134
label133:
	li $t0, 1
	sw $t0, -4884($fp)
label134:
	li $t0, 49016
	sw $t0, -4904($fp)
	li $t0, 360
	sw $t0, -4908($fp)
	lw $t0, -4904($fp)
	lw $t1, -4908($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4912($fp)
	lw $t0, 4($fp)
	sw $t0, -4916($fp)
	lw $t0, -4916($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -4920($fp)
	li $t0, 5252
	sw $t0, -4924($fp)
	li $t0, 49211
	sw $t0, -4928($fp)
	lw $t0, -4924($fp)
	lw $t1, -4928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4932($fp)
	lw $t0, -3160($fp)
	sw $t0, -4936($fp)
	lw $t0, -4932($fp)
	lw $t1, -4936($fp)
	mul $t0, $t0, $t1
	sw $t0, -4940($fp)
	li $t0, 0
	sw $t0, -4944($fp)
	li $t0, 11613
	sw $t0, -4948($fp)
	lw $t1, -4948($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label136
label136:
	li $t0, 1
	sw $t0, -4944($fp)
label137:
	addi $sp, $sp, -4
	lw $t0, -4884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4944($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4952($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -4952($fp)
	sub $t0, $t0, $t1
	sw $t0, -4956($fp)
	li $t0, 0
	lw $t1, -4956($fp)
	sub $t0, $t0, $t1
	sw $t0, -4960($fp)
	li $t0, 0
	sw $t0, -4964($fp)
	addi $t0, $fp, -24
	sw $t0, -4968($fp)
	li $t0, 2
	sw $t0, -4972($fp)
	li $t0, 4
	lw $t1, -4972($fp)
	mul $t0, $t0, $t1
	sw $t0, -4976($fp)
	lw $t0, -4976($fp)
	lw $t1, -4968($fp)
	add $t0, $t0, $t1
	sw $t0, -4980($fp)
	lw $t0, -4980($fp)
	lw $t1, 0($t0)
	sw $t1, -4984($fp)
	li $t0, 0
	lw $t1, -4984($fp)
	sub $t0, $t0, $t1
	sw $t0, -4988($fp)
	lw $t1, -4988($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label138
label138:
	li $t0, 1
	sw $t0, -4964($fp)
label139:
	lw $t0, -4960($fp)
	lw $t1, -4964($fp)
	add $t0, $t0, $t1
	sw $t0, -4992($fp)
	lw $t1, -4992($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label132
label131:
	li $t0, 0
	sw $t0, -4996($fp)
	li $t0, 0
	sw $t0, -5000($fp)
	lw $t0, -2248($fp)
	sw $t0, -5004($fp)
	li $t0, 5444
	sw $t0, -5008($fp)
	lw $t1, -5004($fp)
	lw $t2, -5008($fp)
	beq $t1, $t2, label147
	j label146
label147:
	lw $t0, -1024($fp)
	sw $t0, -5012($fp)
	lw $t1, -5012($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label146
label145:
	li $t0, 1
	sw $t0, -5000($fp)
label146:
	li $t0, 0
	sw $t0, -5016($fp)
	li $t0, 0
	sw $t0, -5020($fp)
	li $t0, 19324
	sw $t0, -5024($fp)
	lw $t0, -616($fp)
	sw $t0, -5028($fp)
	lw $t1, -5024($fp)
	lw $t2, -5028($fp)
	ble $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -5020($fp)
label151:
	li $t0, 55151
	sw $t0, -5032($fp)
	lw $t1, -5020($fp)
	lw $t2, -5032($fp)
	bne $t1, $t2, label148
	j label149
label148:
	li $t0, 1
	sw $t0, -5016($fp)
label149:
	addi $t0, $fp, -68
	sw $t0, -5036($fp)
	lw $t0, 16($fp)
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
	lw $t0, 20($fp)
	sw $t0, -5056($fp)
	lw $t0, -5052($fp)
	lw $t1, -5056($fp)
	mul $t0, $t0, $t1
	sw $t0, -5060($fp)
	li $t0, 0
	sw $t0, -5064($fp)
	lw $t0, -3172($fp)
	sw $t0, -5068($fp)
	li $t0, 0
	lw $t1, -5068($fp)
	sub $t0, $t0, $t1
	sw $t0, -5072($fp)
	lw $t1, -5072($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label152
label152:
	li $t0, 1
	sw $t0, -5064($fp)
label153:
	li $t0, 32555
	sw $t0, -5076($fp)
	lw $t0, -3520($fp)
	sw $t0, -5080($fp)
	lw $t0, -5076($fp)
	lw $t1, -5080($fp)
	mul $t0, $t0, $t1
	sw $t0, -5084($fp)
	addi $sp, $sp, -4
	lw $t0, -5000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5084($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5088($fp)
	addi $sp, $sp, 24
	lw $t1, -5088($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label143
label143:
	li $t0, 1
	sw $t0, -4996($fp)
label144:
	li $t0, 0
	sw $t0, -5092($fp)
	lw $t0, -2824($fp)
	sw $t0, -5096($fp)
	lw $t1, -5096($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label154
label154:
	li $t0, 1
	sw $t0, -5092($fp)
label155:
	lw $t0, -4996($fp)
	lw $t1, -5092($fp)
	mul $t0, $t0, $t1
	sw $t0, -5100($fp)
	lw $t0, -2044($fp)
	sw $t0, -5104($fp)
	lw $t0, -5100($fp)
	lw $t1, -5104($fp)
	mul $t0, $t0, $t1
	sw $t0, -5108($fp)
	addi $t0, $fp, -208
	sw $t0, -5112($fp)
	lw $t0, -4264($fp)
	sw $t0, -5116($fp)
	li $t0, 19612
	sw $t0, -5120($fp)
	lw $t0, -5116($fp)
	lw $t1, -5120($fp)
	add $t0, $t0, $t1
	sw $t0, -5124($fp)
	li $t0, 4
	lw $t1, -5124($fp)
	mul $t0, $t0, $t1
	sw $t0, -5128($fp)
	lw $t0, -5128($fp)
	lw $t1, -5112($fp)
	add $t0, $t0, $t1
	sw $t0, -5132($fp)
	lw $t0, -5132($fp)
	lw $t1, 0($t0)
	sw $t1, -5136($fp)
	lw $t1, -5108($fp)
	lw $t2, -5136($fp)
	bne $t1, $t2, label140
	j label141
label140:
	li $t0, 47032
	sw $t0, -5140($fp)
	lw $t0, -5140($fp)
	sw $t0, -5144($fp)
	lw $t0, -5144($fp)
	sw $t0, -5148($fp)
	li $t0, 4383
	sw $t0, -5152($fp)
	lw $t0, -5152($fp)
	sw $t0, -5156($fp)
	lw $t0, -5156($fp)
	sw $t0, -5160($fp)
	lw $t0, -5144($fp)
	sw $t0, -5164($fp)
	lw $t0, -5164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5156($fp)
	sw $t0, -5168($fp)
	lw $t0, -5168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5172($fp)
	li $t0, 13162
	sw $t0, -5176($fp)
	lw $t1, -5176($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label157
label159:
	lw $t0, -2032($fp)
	sw $t0, -5180($fp)
	lw $t1, -5180($fp)
	li $t2, 0
	bne $t1, $t2, label158
	j label157
label158:
	lw $t0, -4348($fp)
	sw $t0, -5184($fp)
	lw $t1, -5184($fp)
	li $t2, 0
	bne $t1, $t2, label156
	j label157
label156:
	li $t0, 1
	sw $t0, -5172($fp)
label157:
	li $t0, 0
	sw $t0, -5188($fp)
	li $t0, 64226
	sw $t0, -5192($fp)
	li $t0, 45832
	sw $t0, -5196($fp)
	lw $t1, -5192($fp)
	lw $t2, -5196($fp)
	bge $t1, $t2, label160
	j label161
label160:
	li $t0, 1
	sw $t0, -5188($fp)
label161:
	li $t0, 0
	sw $t0, -5200($fp)
	li $t0, 5902
	sw $t0, -5204($fp)
	lw $t1, -5204($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label162
label162:
	li $t0, 1
	sw $t0, -5200($fp)
label163:
	li $t0, 51227
	sw $t0, -5208($fp)
	lw $t0, -5200($fp)
	lw $t1, -5208($fp)
	sub $t0, $t0, $t1
	sw $t0, -5212($fp)
	li $t0, 0
	sw $t0, -5216($fp)
	li $t0, 1518
	sw $t0, -5220($fp)
	li $t0, 36858
	sw $t0, -5224($fp)
	lw $t1, -5220($fp)
	lw $t2, -5224($fp)
	beq $t1, $t2, label164
	j label166
label166:
	li $t0, 10363
	sw $t0, -5228($fp)
	lw $t1, -5228($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label165
label164:
	li $t0, 1
	sw $t0, -5216($fp)
label165:
	li $t0, 0
	sw $t0, -5232($fp)
	lw $t0, -2848($fp)
	sw $t0, -5236($fp)
	lw $t1, -5236($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label167
label167:
	li $t0, 1
	sw $t0, -5232($fp)
label168:
	li $t0, 28867
	sw $t0, -5240($fp)
	lw $t0, -5232($fp)
	lw $t1, -5240($fp)
	add $t0, $t0, $t1
	sw $t0, -5244($fp)
	li $t0, 17246
	sw $t0, -5248($fp)
	li $t0, 0
	sw $t0, -5252($fp)
	li $t0, 39251
	sw $t0, -5256($fp)
	lw $t1, -5256($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label170
label171:
	li $t0, 61610
	sw $t0, -5260($fp)
	lw $t1, -5260($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -5252($fp)
label170:
	li $t0, 63458
	sw $t0, -5264($fp)
	li $t0, 0
	sw $t0, -5268($fp)
	lw $t0, -1024($fp)
	sw $t0, -5272($fp)
	lw $t1, -5272($fp)
	li $t2, 0
	bne $t1, $t2, label173
	j label172
label172:
	li $t0, 1
	sw $t0, -5268($fp)
label173:
	lw $t0, -3904($fp)
	sw $t0, -5276($fp)
	lw $t0, -5268($fp)
	lw $t1, -5276($fp)
	mul $t0, $t0, $t1
	sw $t0, -5280($fp)
	li $t0, 0
	sw $t0, -5284($fp)
	lw $t0, -2344($fp)
	sw $t0, -5288($fp)
	lw $t0, -5288($fp)
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	sw $t0, -5292($fp)
	li $t0, 0
	sw $t0, -5296($fp)
	li $t0, 29055
	sw $t0, -5300($fp)
	lw $t0, -2128($fp)
	sw $t0, -5304($fp)
	lw $t0, -5300($fp)
	lw $t1, -5304($fp)
	add $t0, $t0, $t1
	sw $t0, -5308($fp)
	lw $t0, -3760($fp)
	sw $t0, -5312($fp)
	lw $t1, -5308($fp)
	lw $t2, -5312($fp)
	blt $t1, $t2, label177
	j label178
label177:
	li $t0, 1
	sw $t0, -5296($fp)
label178:
	li $t0, 8891
	sw $t0, -5316($fp)
	lw $t0, -5316($fp)
	sw $t0, -4732($fp)
	lw $t0, -4732($fp)
	sw $t0, -5320($fp)
	li $t0, 0
	sw $t0, -5324($fp)
	li $t0, 5381
	sw $t0, -5328($fp)
	lw $t0, -4756($fp)
	sw $t0, -5332($fp)
	lw $t0, -5328($fp)
	lw $t1, -5332($fp)
	add $t0, $t0, $t1
	sw $t0, -5336($fp)
	lw $t0, -712($fp)
	sw $t0, -5340($fp)
	lw $t1, -5336($fp)
	lw $t2, -5340($fp)
	beq $t1, $t2, label179
	j label180
label179:
	li $t0, 1
	sw $t0, -5324($fp)
label180:
	li $t0, 28694
	sw $t0, -5344($fp)
	lw $t0, -5344($fp)
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	sw $t0, -5348($fp)
	addi $sp, $sp, -4
	lw $t0, -5292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5348($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5352($fp)
	addi $sp, $sp, 24
	lw $t1, -5352($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label175
label176:
	lw $t0, -4336($fp)
	sw $t0, -5356($fp)
	lw $t1, -5356($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label175
label174:
	li $t0, 1
	sw $t0, -5284($fp)
label175:
	addi $sp, $sp, -4
	lw $t0, -5248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5284($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5360($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -5364($fp)
	lw $t0, -5144($fp)
	sw $t0, -5368($fp)
	lw $t1, -5368($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label181
label181:
	li $t0, 1
	sw $t0, -5364($fp)
label182:
	li $t0, 0
	lw $t1, -5364($fp)
	sub $t0, $t0, $t1
	sw $t0, -5372($fp)
	li $t0, 0
	sw $t0, -5376($fp)
	li $t0, 0
	sw $t0, -5380($fp)
	lw $t0, -1048($fp)
	sw $t0, -5384($fp)
	li $t0, 21706
	sw $t0, -5388($fp)
	lw $t1, -5384($fp)
	lw $t2, -5388($fp)
	bge $t1, $t2, label185
	j label186
label185:
	li $t0, 1
	sw $t0, -5380($fp)
label186:
	li $t0, 25411
	sw $t0, -5392($fp)
	lw $t1, -5380($fp)
	lw $t2, -5392($fp)
	bge $t1, $t2, label183
	j label184
label183:
	li $t0, 1
	sw $t0, -5376($fp)
label184:
	li $t0, 0
	sw $t0, -5396($fp)
	addi $t0, $fp, -448
	sw $t0, -5400($fp)
	li $t0, 0
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
	lw $t1, -5416($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label187
label187:
	li $t0, 1
	sw $t0, -5396($fp)
label188:
	li $t0, 0
	sw $t0, -5420($fp)
	li $t0, 27368
	sw $t0, -5424($fp)
	li $t0, 0
	lw $t1, -5424($fp)
	sub $t0, $t0, $t1
	sw $t0, -5428($fp)
	lw $t1, -5428($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label189
label189:
	li $t0, 1
	sw $t0, -5420($fp)
label190:
	lw $t0, -1024($fp)
	sw $t0, -5432($fp)
	addi $sp, $sp, -4
	lw $t0, -5372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5432($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5436($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -5436($fp)
	sub $t0, $t0, $t1
	sw $t0, -5440($fp)
	li $t0, 54660
	sw $t0, -5444($fp)
	addi $t0, $fp, -80
	sw $t0, -5448($fp)
	li $t0, 1
	sw $t0, -5452($fp)
	li $t0, 4
	lw $t1, -5452($fp)
	mul $t0, $t0, $t1
	sw $t0, -5456($fp)
	lw $t0, -5456($fp)
	lw $t1, -5448($fp)
	add $t0, $t0, $t1
	sw $t0, -5460($fp)
	lw $t0, -5460($fp)
	lw $t1, 0($t0)
	sw $t1, -5464($fp)
	li $t0, 49525
	sw $t0, -5468($fp)
	lw $t0, -5468($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -5472($fp)
	addi $sp, $sp, -4
	lw $t0, -5360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5472($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5476($fp)
	addi $sp, $sp, 24
	li $t0, 35057
	sw $t0, -5480($fp)
	lw $t0, -5480($fp)
	sw $t0, -4792($fp)
	lw $t0, -4792($fp)
	sw $t0, -5484($fp)
	lw $t0, -2824($fp)
	sw $t0, -5488($fp)
	li $t0, 22790
	sw $t0, -5492($fp)
	lw $t0, -5488($fp)
	lw $t1, -5492($fp)
	sub $t0, $t0, $t1
	sw $t0, -5496($fp)
	li $t0, 53465
	sw $t0, -5500($fp)
	lw $t0, -5496($fp)
	lw $t1, -5500($fp)
	add $t0, $t0, $t1
	sw $t0, -5504($fp)
	addi $sp, $sp, -4
	lw $t0, -5216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5504($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5508($fp)
	addi $sp, $sp, 24
	lw $t0, -5156($fp)
	sw $t0, -5512($fp)
	lw $t0, -5508($fp)
	lw $t1, -5512($fp)
	mul $t0, $t0, $t1
	sw $t0, -5516($fp)
	li $t0, 0
	sw $t0, -5520($fp)
	addi $t0, $fp, -208
	sw $t0, -5524($fp)
	li $t0, 1
	sw $t0, -5528($fp)
	li $t0, 4
	lw $t1, -5528($fp)
	mul $t0, $t0, $t1
	sw $t0, -5532($fp)
	lw $t0, -5532($fp)
	lw $t1, -5524($fp)
	add $t0, $t0, $t1
	sw $t0, -5536($fp)
	lw $t0, -5536($fp)
	lw $t1, 0($t0)
	sw $t1, -5540($fp)
	lw $t0, -2116($fp)
	sw $t0, -5544($fp)
	lw $t1, -5540($fp)
	lw $t2, -5544($fp)
	ble $t1, $t2, label191
	j label192
label191:
	li $t0, 1
	sw $t0, -5520($fp)
label192:
	li $t0, 0
	sw $t0, -5548($fp)
	li $t0, 39930
	sw $t0, -5552($fp)
	li $t0, 27471
	sw $t0, -5556($fp)
	lw $t1, -5552($fp)
	lw $t2, -5556($fp)
	bne $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -5548($fp)
label194:
	li $t0, 53863
	sw $t0, -5560($fp)
	lw $t0, -5560($fp)
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	sw $t0, -5564($fp)
	li $t0, 0
	sw $t0, -5568($fp)
	li $t0, 0
	sw $t0, -5572($fp)
	lw $t0, -2188($fp)
	sw $t0, -5576($fp)
	lw $t0, -2368($fp)
	sw $t0, -5580($fp)
	lw $t1, -5576($fp)
	lw $t2, -5580($fp)
	bgt $t1, $t2, label197
	j label198
label197:
	li $t0, 1
	sw $t0, -5572($fp)
label198:
	li $t0, 14369
	sw $t0, -5584($fp)
	lw $t1, -5572($fp)
	lw $t2, -5584($fp)
	beq $t1, $t2, label195
	j label196
label195:
	li $t0, 1
	sw $t0, -5568($fp)
label196:
	lw $t0, -4012($fp)
	sw $t0, -5588($fp)
	lw $t0, -2056($fp)
	sw $t0, -5592($fp)
	lw $t0, -5588($fp)
	lw $t1, -5592($fp)
	add $t0, $t0, $t1
	sw $t0, -5596($fp)
	lw $t0, -4252($fp)
	sw $t0, -5600($fp)
	lw $t0, -5596($fp)
	lw $t1, -5600($fp)
	add $t0, $t0, $t1
	sw $t0, -5604($fp)
	addi $sp, $sp, -4
	lw $t0, -5520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5604($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5608($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -5172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5608($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5612($fp)
	addi $sp, $sp, 24
	lw $ra, -4($fp)
	lw $v0, -5612($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label142
label141:
	li $t0, 62254
	sw $t0, -5640($fp)
	lw $t0, -5640($fp)
	sw $t0, -5644($fp)
	lw $t0, -5644($fp)
	sw $t0, -5648($fp)
	li $t0, 62763
	sw $t0, -5652($fp)
	lw $t0, -5652($fp)
	sw $t0, -5656($fp)
	lw $t0, -5656($fp)
	sw $t0, -5660($fp)
	li $t0, 35953
	sw $t0, -5664($fp)
	lw $t0, -5664($fp)
	sw $t0, -5668($fp)
	lw $t0, -5668($fp)
	sw $t0, -5672($fp)
	li $t0, 50183
	sw $t0, -5676($fp)
	lw $t0, -5676($fp)
	sw $t0, -5680($fp)
	lw $t0, -5680($fp)
	sw $t0, -5684($fp)
	li $t0, 32284
	sw $t0, -5688($fp)
	lw $t0, -5688($fp)
	sw $t0, -5692($fp)
	lw $t0, -5692($fp)
	sw $t0, -5696($fp)
	li $t0, 19942
	sw $t0, -5700($fp)
	lw $t0, -5700($fp)
	sw $t0, -5704($fp)
	lw $t0, -5704($fp)
	sw $t0, -5708($fp)
	li $t0, 9944
	sw $t0, -5712($fp)
	lw $t0, -5712($fp)
	sw $t0, -5716($fp)
	lw $t0, -5716($fp)
	sw $t0, -5720($fp)
	li $t0, 8505
	sw $t0, -5724($fp)
	addi $t0, $fp, -5636
	sw $t0, -5728($fp)
	li $t0, 0
	sw $t0, -5732($fp)
	lw $t0, -5732($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5736($fp)
	lw $t0, -5728($fp)
	lw $t1, -5736($fp)
	add $t0, $t0, $t1
	sw $t0, -5740($fp)
	lw $t0, -5724($fp)
	lw $t1, -5740($fp)
	sw $t0, 0($t1)
	lw $t0, -5740($fp)
	lw $t1, 0($t0)
	sw $t1, -5744($fp)
	li $t0, 9066
	sw $t0, -5748($fp)
	addi $t0, $fp, -5636
	sw $t0, -5752($fp)
	li $t0, 1
	sw $t0, -5756($fp)
	lw $t0, -5756($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5760($fp)
	lw $t0, -5752($fp)
	lw $t1, -5760($fp)
	add $t0, $t0, $t1
	sw $t0, -5764($fp)
	lw $t0, -5748($fp)
	lw $t1, -5764($fp)
	sw $t0, 0($t1)
	lw $t0, -5764($fp)
	lw $t1, 0($t0)
	sw $t1, -5768($fp)
	li $t0, 37312
	sw $t0, -5772($fp)
	addi $t0, $fp, -5636
	sw $t0, -5776($fp)
	li $t0, 2
	sw $t0, -5780($fp)
	lw $t0, -5780($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5784($fp)
	lw $t0, -5776($fp)
	lw $t1, -5784($fp)
	add $t0, $t0, $t1
	sw $t0, -5788($fp)
	lw $t0, -5772($fp)
	lw $t1, -5788($fp)
	sw $t0, 0($t1)
	lw $t0, -5788($fp)
	lw $t1, 0($t0)
	sw $t1, -5792($fp)
	li $t0, 22303
	sw $t0, -5796($fp)
	addi $t0, $fp, -5636
	sw $t0, -5800($fp)
	li $t0, 3
	sw $t0, -5804($fp)
	lw $t0, -5804($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5808($fp)
	lw $t0, -5800($fp)
	lw $t1, -5808($fp)
	add $t0, $t0, $t1
	sw $t0, -5812($fp)
	lw $t0, -5796($fp)
	lw $t1, -5812($fp)
	sw $t0, 0($t1)
	lw $t0, -5812($fp)
	lw $t1, 0($t0)
	sw $t1, -5816($fp)
	li $t0, 32508
	sw $t0, -5820($fp)
	addi $t0, $fp, -5636
	sw $t0, -5824($fp)
	li $t0, 4
	sw $t0, -5828($fp)
	lw $t0, -5828($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5832($fp)
	lw $t0, -5824($fp)
	lw $t1, -5832($fp)
	add $t0, $t0, $t1
	sw $t0, -5836($fp)
	lw $t0, -5820($fp)
	lw $t1, -5836($fp)
	sw $t0, 0($t1)
	lw $t0, -5836($fp)
	lw $t1, 0($t0)
	sw $t1, -5840($fp)
	li $t0, 59018
	sw $t0, -5844($fp)
	addi $t0, $fp, -5636
	sw $t0, -5848($fp)
	li $t0, 5
	sw $t0, -5852($fp)
	lw $t0, -5852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5856($fp)
	lw $t0, -5848($fp)
	lw $t1, -5856($fp)
	add $t0, $t0, $t1
	sw $t0, -5860($fp)
	lw $t0, -5844($fp)
	lw $t1, -5860($fp)
	sw $t0, 0($t1)
	lw $t0, -5860($fp)
	lw $t1, 0($t0)
	sw $t1, -5864($fp)
	li $t0, 0
	sw $t0, -5868($fp)
	addi $t0, $fp, -408
	sw $t0, -5872($fp)
	li $t0, 0
	sw $t0, -5876($fp)
	lw $t0, -3520($fp)
	sw $t0, -5880($fp)
	lw $t1, -5880($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label202
label203:
	li $t0, 47714
	sw $t0, -5884($fp)
	lw $t1, -5884($fp)
	li $t2, 0
	bne $t1, $t2, label201
	j label202
label201:
	li $t0, 1
	sw $t0, -5876($fp)
label202:
	li $t0, 4
	lw $t1, -5876($fp)
	mul $t0, $t0, $t1
	sw $t0, -5888($fp)
	lw $t0, -5888($fp)
	lw $t1, -5872($fp)
	add $t0, $t0, $t1
	sw $t0, -5892($fp)
	lw $t0, -5892($fp)
	lw $t1, 0($t0)
	sw $t1, -5896($fp)
	lw $t1, -5896($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label199
label199:
	li $t0, 1
	sw $t0, -5868($fp)
label200:
	li $t0, 61203
	sw $t0, -5900($fp)
	lw $t0, -5868($fp)
	lw $t1, -5900($fp)
	mul $t0, $t0, $t1
	sw $t0, -5904($fp)
	li $t0, 0
	sw $t0, -5908($fp)
	addi $t0, $fp, -312
	sw $t0, -5912($fp)
	lw $t0, -700($fp)
	sw $t0, -5916($fp)
	lw $t0, -5656($fp)
	sw $t0, -5920($fp)
	lw $t0, -5916($fp)
	lw $t1, -5920($fp)
	add $t0, $t0, $t1
	sw $t0, -5924($fp)
	li $t0, 59187
	sw $t0, -5928($fp)
	lw $t0, -5924($fp)
	lw $t1, -5928($fp)
	sub $t0, $t0, $t1
	sw $t0, -5932($fp)
	li $t0, 14032
	sw $t0, -5936($fp)
	li $t0, 0
	lw $t1, -5936($fp)
	sub $t0, $t0, $t1
	sw $t0, -5940($fp)
	li $t0, 0
	sw $t0, -5944($fp)
	li $t0, 62321
	sw $t0, -5948($fp)
	lw $t1, -5948($fp)
	li $t2, 0
	bne $t1, $t2, label209
	j label207
label209:
	li $t0, 30320
	sw $t0, -5952($fp)
	lw $t1, -5952($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label207
label208:
	li $t0, 20796
	sw $t0, -5956($fp)
	lw $t1, -5956($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -5944($fp)
label207:
	li $t0, 56605
	sw $t0, -5960($fp)
	li $t0, 24722
	sw $t0, -5964($fp)
	lw $t0, -5960($fp)
	lw $t1, -5964($fp)
	mul $t0, $t0, $t1
	sw $t0, -5968($fp)
	lw $t0, -2488($fp)
	sw $t0, -5972($fp)
	lw $t0, -5968($fp)
	lw $t1, -5972($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5976($fp)
	li $t0, 0
	sw $t0, -5980($fp)
	lw $t0, -2260($fp)
	sw $t0, -5984($fp)
	lw $t0, -724($fp)
	sw $t0, -5988($fp)
	lw $t0, -5984($fp)
	lw $t1, -5988($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5992($fp)
	lw $t1, -5992($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label211
label212:
	li $t0, 64399
	sw $t0, -5996($fp)
	lw $t1, -5996($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label211
label210:
	li $t0, 1
	sw $t0, -5980($fp)
label211:
	addi $sp, $sp, -4
	lw $t0, -5932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5980($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6000($fp)
	addi $sp, $sp, 24
	li $t0, 4
	lw $t1, -6000($fp)
	mul $t0, $t0, $t1
	sw $t0, -6004($fp)
	lw $t0, -6004($fp)
	lw $t1, -5912($fp)
	add $t0, $t0, $t1
	sw $t0, -6008($fp)
	lw $t0, -6008($fp)
	lw $t1, 0($t0)
	sw $t1, -6012($fp)
	lw $t0, -3520($fp)
	sw $t0, -6016($fp)
	li $t0, 0
	lw $t1, -6016($fp)
	sub $t0, $t0, $t1
	sw $t0, -6020($fp)
	lw $t1, -6012($fp)
	lw $t2, -6020($fp)
	bne $t1, $t2, label204
	j label205
label204:
	li $t0, 1
	sw $t0, -5908($fp)
label205:
	li $t0, 0
	sw $t0, -6024($fp)
	lw $t0, -5668($fp)
	sw $t0, -6028($fp)
	li $t0, 22314
	sw $t0, -6032($fp)
	li $t0, 0
	lw $t1, -6032($fp)
	sub $t0, $t0, $t1
	sw $t0, -6036($fp)
	lw $t0, -6028($fp)
	lw $t1, -6036($fp)
	mul $t0, $t0, $t1
	sw $t0, -6040($fp)
	li $t0, 0
	lw $t1, -6040($fp)
	sub $t0, $t0, $t1
	sw $t0, -6044($fp)
	addi $t0, $fp, -252
	sw $t0, -6048($fp)
	lw $t0, -700($fp)
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
	lw $t0, -6044($fp)
	lw $t1, -6064($fp)
	sub $t0, $t0, $t1
	sw $t0, -6068($fp)
	lw $t1, -6068($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label215
label215:
	li $t0, 0
	sw $t0, -6072($fp)
	addi $t0, $fp, -168
	sw $t0, -6076($fp)
	lw $t0, -4276($fp)
	sw $t0, -6080($fp)
	li $t0, 4
	lw $t1, -6080($fp)
	mul $t0, $t0, $t1
	sw $t0, -6084($fp)
	lw $t0, -6084($fp)
	lw $t1, -6076($fp)
	add $t0, $t0, $t1
	sw $t0, -6088($fp)
	lw $t0, -6088($fp)
	lw $t1, 0($t0)
	sw $t1, -6092($fp)
	li $t0, 2705
	sw $t0, -6096($fp)
	lw $t1, -6092($fp)
	lw $t2, -6096($fp)
	bgt $t1, $t2, label216
	j label217
label216:
	li $t0, 1
	sw $t0, -6072($fp)
label217:
	li $t0, 0
	sw $t0, -6100($fp)
	li $t0, 28216
	sw $t0, -6104($fp)
	lw $t1, -6104($fp)
	li $t2, 0
	bne $t1, $t2, label221
	j label219
label221:
	li $t0, 36582
	sw $t0, -6108($fp)
	lw $t1, -6108($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label219
label220:
	lw $t0, -3880($fp)
	sw $t0, -6112($fp)
	lw $t1, -6112($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label219
label218:
	li $t0, 1
	sw $t0, -6100($fp)
label219:
	li $t0, 4015
	sw $t0, -6116($fp)
	lw $t0, -6116($fp)
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	sw $t0, -6120($fp)
	addi $t0, $fp, -252
	sw $t0, -6124($fp)
	lw $t0, -5680($fp)
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
	li $t0, 50890
	sw $t0, -6144($fp)
	addi $sp, $sp, -4
	lw $t0, -6072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6144($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6148($fp)
	addi $sp, $sp, 24
	lw $t1, -6148($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label214
label213:
	li $t0, 1
	sw $t0, -6024($fp)
label214:
	li $t0, 0
	sw $t0, -6152($fp)
	li $t0, 8512
	sw $t0, -6156($fp)
	lw $t1, -6156($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label225
label225:
	li $t0, 1
	sw $t0, -6152($fp)
label226:
	li $t0, 0
	lw $t1, -6152($fp)
	sub $t0, $t0, $t1
	sw $t0, -6160($fp)
	li $t0, 0
	lw $t1, -6160($fp)
	sub $t0, $t0, $t1
	sw $t0, -6164($fp)
	lw $t0, -5692($fp)
	sw $t0, -6168($fp)
	li $t0, 0
	sw $t0, -6172($fp)
	lw $t0, -5704($fp)
	sw $t0, -6176($fp)
	lw $t1, -6176($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label227
label227:
	li $t0, 1
	sw $t0, -6172($fp)
label228:
	lw $t0, -6168($fp)
	lw $t1, -6172($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6180($fp)
	li $t0, 0
	lw $t1, -6180($fp)
	sub $t0, $t0, $t1
	sw $t0, -6184($fp)
	li $t0, 0
	lw $t1, -6184($fp)
	sub $t0, $t0, $t1
	sw $t0, -6188($fp)
	lw $t1, -6164($fp)
	lw $t2, -6188($fp)
	blt $t1, $t2, label222
	j label223
label222:
	lw $t0, -4288($fp)
	sw $t0, -6192($fp)
	lw $ra, -4($fp)
	lw $v0, -6192($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label224
label223:
	lw $t0, -4300($fp)
	sw $t0, -6196($fp)
	lw $t1, -6196($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label230
label229:
label232:
	li $t0, 40103
	sw $t0, -6200($fp)
	lw $t0, -6200($fp)
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	sw $t0, -6204($fp)
	li $t0, 38024
	sw $t0, -6208($fp)
	lw $t0, -6208($fp)
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	sw $t0, -6212($fp)
	li $t0, 0
	sw $t0, -6216($fp)
	addi $t0, $fp, -124
	sw $t0, -6220($fp)
	li $t0, 1
	sw $t0, -6224($fp)
	li $t0, 4
	lw $t1, -6224($fp)
	mul $t0, $t0, $t1
	sw $t0, -6228($fp)
	lw $t0, -6228($fp)
	lw $t1, -6220($fp)
	add $t0, $t0, $t1
	sw $t0, -6232($fp)
	lw $t0, -6232($fp)
	lw $t1, 0($t0)
	sw $t1, -6236($fp)
	li $t0, 49607
	sw $t0, -6240($fp)
	lw $t1, -6236($fp)
	lw $t2, -6240($fp)
	bge $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -6216($fp)
label236:
	lw $t0, -5716($fp)
	sw $t0, -6244($fp)
	lw $t0, -2620($fp)
	sw $t0, -6248($fp)
	lw $t0, -6244($fp)
	lw $t1, -6248($fp)
	sub $t0, $t0, $t1
	sw $t0, -6252($fp)
	li $t0, 64960
	sw $t0, -6256($fp)
	lw $t0, -6252($fp)
	lw $t1, -6256($fp)
	add $t0, $t0, $t1
	sw $t0, -6260($fp)
	li $t0, 49744
	sw $t0, -6264($fp)
	lw $t0, -6264($fp)
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -6268($fp)
	addi $sp, $sp, -4
	lw $t0, -6204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6268($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6272($fp)
	addi $sp, $sp, 24
	lw $t1, -6272($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label234
label233:
	li $t0, 0
	sw $t0, -6276($fp)
	li $t0, 59552
	sw $t0, -6280($fp)
	lw $t1, -6280($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label241
label241:
	li $t0, 1
	sw $t0, -6276($fp)
label242:
	li $t0, 46529
	sw $t0, -6284($fp)
	lw $t0, -928($fp)
	sw $t0, -6288($fp)
	lw $t0, -6284($fp)
	lw $t1, -6288($fp)
	mul $t0, $t0, $t1
	sw $t0, -6292($fp)
	lw $t0, -6276($fp)
	lw $t1, -6292($fp)
	sub $t0, $t0, $t1
	sw $t0, -6296($fp)
	lw $t1, -6296($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label240
label240:
	li $t0, 49169
	sw $t0, -6300($fp)
	lw $t1, -6300($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label238
label237:
	li $t0, 0
	sw $t0, -6304($fp)
	addi $t0, $fp, -5636
	sw $t0, -6308($fp)
	lw $t0, -4732($fp)
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
	li $t0, 0
	lw $t1, -6324($fp)
	sub $t0, $t0, $t1
	sw $t0, -6328($fp)
	lw $t1, -6328($fp)
	li $t2, 0
	bne $t1, $t2, label244
	j label243
label243:
	li $t0, 1
	sw $t0, -6304($fp)
label244:
	lw $t0, -6304($fp)
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	sw $t0, -6332($fp)
	lw $ra, -4($fp)
	lw $v0, -6332($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label239
label238:
	li $t0, 0
	sw $t0, -6336($fp)
	li $t0, 31328
	sw $t0, -6340($fp)
	lw $t1, -6340($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label247
label247:
	lw $t0, -5644($fp)
	sw $t0, -6344($fp)
	li $t0, 0
	sw $t0, -6348($fp)
	lw $t0, -4792($fp)
	sw $t0, -6352($fp)
	lw $t1, -6352($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label248
label248:
	li $t0, 1
	sw $t0, -6348($fp)
label249:
	lw $t0, -6344($fp)
	lw $t1, -6348($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6356($fp)
	lw $t1, -6356($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label246
label245:
	li $t0, 1
	sw $t0, -6336($fp)
label246:
label239:
	j label232
label234:
	j label231
label230:
	li $t0, 3296
	sw $t0, -6360($fp)
	lw $t0, -6360($fp)
	sw $t0, -6364($fp)
	lw $t0, -6364($fp)
	sw $t0, -6368($fp)
	li $t0, 0
	sw $t0, -6372($fp)
	lw $t0, -6364($fp)
	sw $t0, -6376($fp)
	addi $t0, $fp, -208
	sw $t0, -6380($fp)
	lw $t0, -2848($fp)
	sw $t0, -6384($fp)
	li $t0, 4
	lw $t1, -6384($fp)
	mul $t0, $t0, $t1
	sw $t0, -6388($fp)
	lw $t0, -6388($fp)
	lw $t1, -6380($fp)
	add $t0, $t0, $t1
	sw $t0, -6392($fp)
	lw $t0, -6392($fp)
	lw $t1, 0($t0)
	sw $t1, -6396($fp)
	lw $t0, -6376($fp)
	lw $t1, -6396($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6400($fp)
	li $t0, 16142
	sw $t0, -6404($fp)
	lw $t0, -6400($fp)
	lw $t1, -6404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6408($fp)
	li $t0, 24811
	sw $t0, -6412($fp)
	li $t0, 0
	lw $t1, -6412($fp)
	sub $t0, $t0, $t1
	sw $t0, -6416($fp)
	lw $t0, -6408($fp)
	lw $t1, -6416($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6420($fp)
	li $t0, 0
	lw $t1, -6420($fp)
	sub $t0, $t0, $t1
	sw $t0, -6424($fp)
	lw $t1, -6424($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label250
label250:
	li $t0, 1
	sw $t0, -6372($fp)
label251:
	lw $t0, -2344($fp)
	sw $t0, -6428($fp)
	li $t0, 0
	lw $t1, -6428($fp)
	sub $t0, $t0, $t1
	sw $t0, -6432($fp)
label231:
label224:
label142:
	j label130
label132:
	j label129
label128:
label252:
	li $t0, 6863
	sw $t0, -6436($fp)
	lw $t0, -2164($fp)
	sw $t0, -6440($fp)
	lw $t0, -6436($fp)
	lw $t1, -6440($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6444($fp)
	li $t0, 20460
	sw $t0, -6448($fp)
	lw $t0, -1060($fp)
	sw $t0, -6452($fp)
	lw $t0, -6448($fp)
	lw $t1, -6452($fp)
	mul $t0, $t0, $t1
	sw $t0, -6456($fp)
	li $t0, 42079
	sw $t0, -6460($fp)
	li $t0, 36531
	sw $t0, -6464($fp)
	lw $t0, -6460($fp)
	lw $t1, -6464($fp)
	add $t0, $t0, $t1
	sw $t0, -6468($fp)
	li $t0, 0
	sw $t0, -6472($fp)
	li $t0, 0
	sw $t0, -6476($fp)
	li $t0, 23674
	sw $t0, -6480($fp)
	lw $t1, -6480($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label257
label257:
	li $t0, 1
	sw $t0, -6476($fp)
label258:
	lw $t0, -2164($fp)
	sw $t0, -6484($fp)
	lw $t1, -6476($fp)
	lw $t2, -6484($fp)
	bgt $t1, $t2, label255
	j label256
label255:
	li $t0, 1
	sw $t0, -6472($fp)
label256:
	li $t0, 11809
	sw $t0, -6488($fp)
	lw $t0, -6488($fp)
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	sw $t0, -6492($fp)
	li $t0, 0
	sw $t0, -6496($fp)
	li $t0, 51010
	sw $t0, -6500($fp)
	lw $t0, -2152($fp)
	sw $t0, -6504($fp)
	lw $t1, -6500($fp)
	lw $t2, -6504($fp)
	beq $t1, $t2, label259
	j label260
label259:
	li $t0, 1
	sw $t0, -6496($fp)
label260:
	li $t0, 0
	sw $t0, -6508($fp)
	lw $t0, -2128($fp)
	sw $t0, -6512($fp)
	lw $t0, -2140($fp)
	sw $t0, -6516($fp)
	lw $t1, -6512($fp)
	lw $t2, -6516($fp)
	beq $t1, $t2, label263
	j label262
label263:
	lw $t0, -2884($fp)
	sw $t0, -6520($fp)
	lw $t1, -6520($fp)
	li $t2, 0
	bne $t1, $t2, label261
	j label262
label261:
	li $t0, 1
	sw $t0, -6508($fp)
label262:
	lw $t0, -4756($fp)
	sw $t0, -6524($fp)
	lw $t0, -3928($fp)
	sw $t0, -6528($fp)
	lw $t0, -6524($fp)
	lw $t1, -6528($fp)
	sub $t0, $t0, $t1
	sw $t0, -6532($fp)
	lw $t0, -3784($fp)
	sw $t0, -6536($fp)
	lw $t0, -6532($fp)
	lw $t1, -6536($fp)
	add $t0, $t0, $t1
	sw $t0, -6540($fp)
	addi $sp, $sp, -4
	lw $t0, -6472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6540($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6544($fp)
	addi $sp, $sp, 24
	lw $t0, -3256($fp)
	sw $t0, -6548($fp)
	lw $t0, -6548($fp)
	sw $t0, -3880($fp)
	lw $t0, -3880($fp)
	sw $t0, -6552($fp)
	addi $sp, $sp, -4
	lw $t0, -6444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6552($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6556($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -6560($fp)
	li $t0, 4530
	sw $t0, -6564($fp)
	lw $t0, 8($fp)
	sw $t0, -6568($fp)
	lw $t0, -6564($fp)
	lw $t1, -6568($fp)
	add $t0, $t0, $t1
	sw $t0, -6572($fp)
	lw $t1, -6572($fp)
	li $t2, 0
	bne $t1, $t2, label264
	j label266
label266:
	lw $t0, -3844($fp)
	sw $t0, -6576($fp)
	lw $t1, -6576($fp)
	li $t2, 0
	bne $t1, $t2, label264
	j label265
label264:
	li $t0, 1
	sw $t0, -6560($fp)
label265:
	li $t0, 0
	sw $t0, -6580($fp)
	li $t0, 19846
	sw $t0, -6584($fp)
	lw $t1, -6584($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label267
label267:
	li $t0, 1
	sw $t0, -6580($fp)
label268:
	li $t0, 0
	lw $t1, -6580($fp)
	sub $t0, $t0, $t1
	sw $t0, -6588($fp)
	li $t0, 0
	sw $t0, -6592($fp)
	li $t0, 0
	sw $t0, -6596($fp)
	li $t0, 14105
	sw $t0, -6600($fp)
	lw $t0, -2188($fp)
	sw $t0, -6604($fp)
	lw $t1, -6600($fp)
	lw $t2, -6604($fp)
	bge $t1, $t2, label271
	j label272
label271:
	li $t0, 1
	sw $t0, -6596($fp)
label272:
	lw $t0, -2824($fp)
	sw $t0, -6608($fp)
	lw $t1, -6596($fp)
	lw $t2, -6608($fp)
	bge $t1, $t2, label269
	j label270
label269:
	li $t0, 1
	sw $t0, -6592($fp)
label270:
	li $t0, 0
	sw $t0, -6612($fp)
	li $t0, 34492
	sw $t0, -6616($fp)
	li $t0, 515
	sw $t0, -6620($fp)
	lw $t0, -6616($fp)
	lw $t1, -6620($fp)
	sub $t0, $t0, $t1
	sw $t0, -6624($fp)
	lw $t0, -2176($fp)
	sw $t0, -6628($fp)
	lw $t1, -6624($fp)
	lw $t2, -6628($fp)
	ble $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -6612($fp)
label274:
	li $t0, 0
	sw $t0, -6632($fp)
	li $t0, 57327
	sw $t0, -6636($fp)
	lw $t1, -6636($fp)
	li $t2, 0
	bne $t1, $t2, label276
	j label275
label275:
	li $t0, 1
	sw $t0, -6632($fp)
label276:
	li $t0, 0
	lw $t1, -6632($fp)
	sub $t0, $t0, $t1
	sw $t0, -6640($fp)
	addi $sp, $sp, -4
	lw $t0, -6560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6640($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6644($fp)
	addi $sp, $sp, 24
	lw $t0, -6556($fp)
	lw $t1, -6644($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6648($fp)
	li $t0, 29062
	sw $t0, -6652($fp)
	lw $t0, -6652($fp)
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	sw $t0, -6656($fp)
	li $t0, 56267
	sw $t0, -6660($fp)
	lw $t0, -6660($fp)
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	sw $t0, -6664($fp)
	lw $t0, -2200($fp)
	sw $t0, -6668($fp)
	lw $t0, -1024($fp)
	sw $t0, -6672($fp)
	lw $t0, -6668($fp)
	lw $t1, -6672($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6676($fp)
	li $t0, 0
	sw $t0, -6680($fp)
	li $t0, 60798
	sw $t0, -6684($fp)
	lw $t1, -6684($fp)
	li $t2, 0
	bne $t1, $t2, label278
	j label277
label277:
	li $t0, 1
	sw $t0, -6680($fp)
label278:
	lw $t0, -1492($fp)
	sw $t0, -6688($fp)
	li $t0, 0
	sw $t0, -6692($fp)
	lw $t0, -3520($fp)
	sw $t0, -6696($fp)
	li $t0, 6659
	sw $t0, -6700($fp)
	lw $t0, -6696($fp)
	lw $t1, -6700($fp)
	mul $t0, $t0, $t1
	sw $t0, -6704($fp)
	li $t0, 56574
	sw $t0, -6708($fp)
	lw $t1, -6704($fp)
	lw $t2, -6708($fp)
	bne $t1, $t2, label279
	j label280
label279:
	li $t0, 1
	sw $t0, -6692($fp)
label280:
	li $t0, 0
	sw $t0, -6712($fp)
	li $t0, 40637
	sw $t0, -6716($fp)
	lw $t1, -6716($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label283
label283:
	lw $t0, -1480($fp)
	sw $t0, -6720($fp)
	lw $t1, -6720($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label282
label281:
	li $t0, 1
	sw $t0, -6712($fp)
label282:
	li $t0, 0
	sw $t0, -6724($fp)
	li $t0, 0
	sw $t0, -6728($fp)
	lw $t0, -2056($fp)
	sw $t0, -6732($fp)
	li $t0, 7235
	sw $t0, -6736($fp)
	lw $t1, -6732($fp)
	lw $t2, -6736($fp)
	bgt $t1, $t2, label286
	j label287
label286:
	li $t0, 1
	sw $t0, -6728($fp)
label287:
	li $t0, 50834
	sw $t0, -6740($fp)
	lw $t1, -6728($fp)
	lw $t2, -6740($fp)
	blt $t1, $t2, label284
	j label285
label284:
	li $t0, 1
	sw $t0, -6724($fp)
label285:
	addi $t0, $fp, -232
	sw $t0, -6744($fp)
	li $t0, 0
	sw $t0, -6748($fp)
	li $t0, 4
	lw $t1, -6748($fp)
	mul $t0, $t0, $t1
	sw $t0, -6752($fp)
	lw $t0, -6752($fp)
	lw $t1, -6744($fp)
	add $t0, $t0, $t1
	sw $t0, -6756($fp)
	lw $t0, -6756($fp)
	lw $t1, 0($t0)
	sw $t1, -6760($fp)
	lw $t0, -676($fp)
	sw $t0, -6764($fp)
	lw $t0, -6760($fp)
	lw $t1, -6764($fp)
	mul $t0, $t0, $t1
	sw $t0, -6768($fp)
	addi $sp, $sp, -4
	lw $t0, -6688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6768($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6772($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -6656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6772($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6776($fp)
	addi $sp, $sp, 24
	li $t0, 35366
	sw $t0, -6780($fp)
	lw $t0, -6776($fp)
	lw $t1, -6780($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6784($fp)
	lw $t0, -6648($fp)
	lw $t1, -6784($fp)
	sub $t0, $t0, $t1
	sw $t0, -6788($fp)
	li $t0, 0
	sw $t0, -6792($fp)
	lw $t0, -3928($fp)
	sw $t0, -6796($fp)
	li $t0, 0
	sw $t0, -6800($fp)
	lw $t0, -2224($fp)
	sw $t0, -6804($fp)
	lw $t1, -6804($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label290
label290:
	li $t0, 1
	sw $t0, -6800($fp)
label291:
	lw $t0, -6796($fp)
	lw $t1, -6800($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6808($fp)
	li $t0, 0
	lw $t1, -6808($fp)
	sub $t0, $t0, $t1
	sw $t0, -6812($fp)
	lw $t1, -6812($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label288
label288:
	li $t0, 1
	sw $t0, -6792($fp)
label289:
	lw $t0, -6788($fp)
	lw $t1, -6792($fp)
	add $t0, $t0, $t1
	sw $t0, -6816($fp)
	lw $t1, -6816($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label254
label253:
	addi $t0, $fp, -444
	sw $t0, -6820($fp)
	li $t0, 0
	sw $t0, -6824($fp)
	lw $t0, -2236($fp)
	sw $t0, -6828($fp)
	li $t0, 50283
	sw $t0, -6832($fp)
	lw $t1, -6828($fp)
	lw $t2, -6832($fp)
	beq $t1, $t2, label295
	j label296
label295:
	li $t0, 1
	sw $t0, -6824($fp)
label296:
	li $t0, 4
	lw $t1, -6824($fp)
	mul $t0, $t0, $t1
	sw $t0, -6836($fp)
	lw $t0, -6836($fp)
	lw $t1, -6820($fp)
	add $t0, $t0, $t1
	sw $t0, -6840($fp)
	lw $t0, -6840($fp)
	lw $t1, 0($t0)
	sw $t1, -6844($fp)
	lw $t0, -1168($fp)
	sw $t0, -6848($fp)
	lw $t0, -6844($fp)
	lw $t1, -6848($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6852($fp)
	li $t0, 0
	lw $t1, -6852($fp)
	sub $t0, $t0, $t1
	sw $t0, -6856($fp)
	lw $t1, -6856($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label293
label292:
	addi $t0, $fp, -108
	sw $t0, -6860($fp)
	addi $t0, $fp, -324
	sw $t0, -6864($fp)
	li $t0, 0
	sw $t0, -6868($fp)
	lw $t0, -3844($fp)
	sw $t0, -6872($fp)
	lw $t0, -1348($fp)
	sw $t0, -6876($fp)
	lw $t1, -6872($fp)
	lw $t2, -6876($fp)
	bgt $t1, $t2, label300
	j label301
label300:
	li $t0, 1
	sw $t0, -6868($fp)
label301:
	li $t0, 4
	lw $t1, -6868($fp)
	mul $t0, $t0, $t1
	sw $t0, -6880($fp)
	lw $t0, -6880($fp)
	lw $t1, -6864($fp)
	add $t0, $t0, $t1
	sw $t0, -6884($fp)
	lw $t0, -6884($fp)
	lw $t1, 0($t0)
	sw $t1, -6888($fp)
	li $t0, 4
	lw $t1, -6888($fp)
	mul $t0, $t0, $t1
	sw $t0, -6892($fp)
	lw $t0, -6892($fp)
	lw $t1, -6860($fp)
	add $t0, $t0, $t1
	sw $t0, -6896($fp)
	lw $t0, -6896($fp)
	lw $t1, 0($t0)
	sw $t1, -6900($fp)
	lw $t1, -6900($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label298
label297:
	li $t0, 10055
	sw $t0, -6904($fp)
	lw $t1, -6904($fp)
	li $t2, 0
	bne $t1, $t2, label302
	j label303
label302:
	addi $t0, $fp, -124
	sw $t0, -6908($fp)
	lw $t0, -3808($fp)
	sw $t0, -6912($fp)
	li $t0, 4
	lw $t1, -6912($fp)
	mul $t0, $t0, $t1
	sw $t0, -6916($fp)
	lw $t0, -6916($fp)
	lw $t1, -6908($fp)
	add $t0, $t0, $t1
	sw $t0, -6920($fp)
	lw $t0, -6920($fp)
	lw $t1, 0($t0)
	sw $t1, -6924($fp)
	li $t0, 0
	sw $t0, -6928($fp)
	li $t0, 18999
	sw $t0, -6932($fp)
	lw $t1, -6932($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label305
label305:
	li $t0, 1
	sw $t0, -6928($fp)
label306:
	lw $t0, -6924($fp)
	lw $t1, -6928($fp)
	add $t0, $t0, $t1
	sw $t0, -6936($fp)
	lw $t0, -6936($fp)
	sw $t0, -3508($fp)
	lw $t0, -3508($fp)
	sw $t0, -6940($fp)
	lw $ra, -4($fp)
	lw $v0, -6940($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label304
label303:
	li $t0, 0
	sw $t0, -6944($fp)
	addi $t0, $fp, -364
	sw $t0, -6948($fp)
	lw $t0, -2824($fp)
	sw $t0, -6952($fp)
	li $t0, 4
	lw $t1, -6952($fp)
	mul $t0, $t0, $t1
	sw $t0, -6956($fp)
	lw $t0, -6956($fp)
	lw $t1, -6948($fp)
	add $t0, $t0, $t1
	sw $t0, -6960($fp)
	lw $t0, -6960($fp)
	lw $t1, 0($t0)
	sw $t1, -6964($fp)
	li $t0, 0
	sw $t0, -6968($fp)
	lw $t0, -940($fp)
	sw $t0, -6972($fp)
	lw $t0, -6972($fp)
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	sw $t0, -6976($fp)
	li $t0, 0
	sw $t0, -6980($fp)
	li $t0, 47767
	sw $t0, -6984($fp)
	li $t0, 9736
	sw $t0, -6988($fp)
	lw $t1, -6984($fp)
	lw $t2, -6988($fp)
	bge $t1, $t2, label313
	j label314
label313:
	li $t0, 1
	sw $t0, -6980($fp)
label314:
	li $t0, 0
	sw $t0, -6992($fp)
	li $t0, 0
	sw $t0, -6996($fp)
	li $t0, 17945
	sw $t0, -7000($fp)
	lw $t1, -7000($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label317
label317:
	li $t0, 1
	sw $t0, -6996($fp)
label318:
	li $t0, 19485
	sw $t0, -7004($fp)
	lw $t1, -6996($fp)
	lw $t2, -7004($fp)
	bne $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -6992($fp)
label316:
	li $t0, 0
	sw $t0, -7008($fp)
	li $t0, 0
	sw $t0, -7012($fp)
	lw $t0, -1480($fp)
	sw $t0, -7016($fp)
	lw $t0, -1492($fp)
	sw $t0, -7020($fp)
	lw $t1, -7016($fp)
	lw $t2, -7020($fp)
	bgt $t1, $t2, label321
	j label322
label321:
	li $t0, 1
	sw $t0, -7012($fp)
label322:
	li $t0, 40904
	sw $t0, -7024($fp)
	lw $t1, -7012($fp)
	lw $t2, -7024($fp)
	bne $t1, $t2, label319
	j label320
label319:
	li $t0, 1
	sw $t0, -7008($fp)
label320:
	lw $t0, -4336($fp)
	sw $t0, -7028($fp)
	lw $t0, -7028($fp)
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	sw $t0, -7032($fp)
	li $t0, 64561
	sw $t0, -7036($fp)
	lw $t0, -7036($fp)
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	sw $t0, -7040($fp)
	lw $t0, -3796($fp)
	sw $t0, -7044($fp)
	li $t0, 46950
	sw $t0, -7048($fp)
	lw $t0, -7044($fp)
	lw $t1, -7048($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7052($fp)
	li $t0, 0
	lw $t1, -7052($fp)
	sub $t0, $t0, $t1
	sw $t0, -7056($fp)
	lw $t0, -3844($fp)
	sw $t0, -7060($fp)
	li $t0, 64361
	sw $t0, -7064($fp)
	lw $t0, -7060($fp)
	lw $t1, -7064($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7068($fp)
	addi $sp, $sp, -4
	lw $t0, -7008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7068($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7072($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -7072($fp)
	sub $t0, $t0, $t1
	sw $t0, -7076($fp)
	li $t0, 40886
	sw $t0, -7080($fp)
	lw $t0, -7080($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -7084($fp)
	addi $sp, $sp, -4
	lw $t0, -6976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7084($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7088($fp)
	addi $sp, $sp, 24
	lw $t1, -7088($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label312
label312:
	lw $t0, -1504($fp)
	sw $t0, -7092($fp)
	lw $t1, -7092($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label311
label310:
	li $t0, 1
	sw $t0, -6968($fp)
label311:
	li $t0, 35141
	sw $t0, -7096($fp)
	lw $t0, -7096($fp)
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	sw $t0, -7100($fp)
	li $t0, 13351
	sw $t0, -7104($fp)
	li $t0, 16075
	sw $t0, -7108($fp)
	lw $t0, -7108($fp)
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	sw $t0, -7112($fp)
	addi $sp, $sp, -4
	lw $t0, -6964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7112($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7116($fp)
	addi $sp, $sp, 24
	lw $t1, -7116($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label308
label309:
	li $t0, 0
	sw $t0, -7120($fp)
	lw $t0, -676($fp)
	sw $t0, -7124($fp)
	lw $t1, -7124($fp)
	li $t2, 0
	bne $t1, $t2, label323
	j label324
label323:
	li $t0, 1
	sw $t0, -7120($fp)
label324:
	li $t0, 53977
	sw $t0, -7128($fp)
	lw $t0, -1516($fp)
	sw $t0, -7132($fp)
	lw $t0, -7128($fp)
	lw $t1, -7132($fp)
	sub $t0, $t0, $t1
	sw $t0, -7136($fp)
	lw $t1, -7120($fp)
	lw $t2, -7136($fp)
	bge $t1, $t2, label307
	j label308
label307:
	li $t0, 1
	sw $t0, -6944($fp)
label308:
label304:
	j label299
label298:
	li $t0, 0
	sw $t0, -7140($fp)
	addi $t0, $fp, -136
	sw $t0, -7144($fp)
	lw $t0, -2344($fp)
	sw $t0, -7148($fp)
	lw $t0, -7148($fp)
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	sw $t0, -7152($fp)
	li $t0, 4
	lw $t1, -7152($fp)
	mul $t0, $t0, $t1
	sw $t0, -7156($fp)
	lw $t0, -7156($fp)
	lw $t1, -7144($fp)
	add $t0, $t0, $t1
	sw $t0, -7160($fp)
	lw $t0, -7160($fp)
	lw $t1, 0($t0)
	sw $t1, -7164($fp)
	li $t0, 0
	sw $t0, -7168($fp)
	lw $t0, -2488($fp)
	sw $t0, -7172($fp)
	li $t0, 0
	lw $t1, -7172($fp)
	sub $t0, $t0, $t1
	sw $t0, -7176($fp)
	li $t0, 0
	lw $t1, -7176($fp)
	sub $t0, $t0, $t1
	sw $t0, -7180($fp)
	li $t0, 0
	sw $t0, -7184($fp)
	lw $t0, -4744($fp)
	sw $t0, -7188($fp)
	lw $t1, -7188($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label330
label331:
	li $t0, 64716
	sw $t0, -7192($fp)
	lw $t1, -7192($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label330
label329:
	li $t0, 1
	sw $t0, -7184($fp)
label330:
	li $t0, 52812
	sw $t0, -7196($fp)
	li $t0, 0
	lw $t1, -7196($fp)
	sub $t0, $t0, $t1
	sw $t0, -7200($fp)
	li $t0, 628
	sw $t0, -7204($fp)
	lw $t0, -7200($fp)
	lw $t1, -7204($fp)
	add $t0, $t0, $t1
	sw $t0, -7208($fp)
	lw $t0, -1168($fp)
	sw $t0, -7212($fp)
	li $t0, 23842
	sw $t0, -7216($fp)
	lw $t0, -7212($fp)
	lw $t1, -7216($fp)
	mul $t0, $t0, $t1
	sw $t0, -7220($fp)
	li $t0, 8287
	sw $t0, -7224($fp)
	lw $t0, -7220($fp)
	lw $t1, -7224($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7228($fp)
	li $t0, 48282
	sw $t0, -7232($fp)
	lw $t0, -7232($fp)
	sw $t0, -3832($fp)
	lw $t0, -3832($fp)
	sw $t0, -7236($fp)
	addi $sp, $sp, -4
	lw $t0, -7180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7236($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7240($fp)
	addi $sp, $sp, 24
	lw $t1, -7240($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label327
label327:
	li $t0, 1
	sw $t0, -7168($fp)
label328:
	lw $t0, -7164($fp)
	lw $t1, -7168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7244($fp)
	li $t0, 0
	sw $t0, -7248($fp)
	lw $t0, -3880($fp)
	sw $t0, -7252($fp)
	lw $t1, -7252($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label332
label332:
	li $t0, 1
	sw $t0, -7248($fp)
label333:
	lw $t1, -7244($fp)
	lw $t2, -7248($fp)
	beq $t1, $t2, label325
	j label326
label325:
	li $t0, 1
	sw $t0, -7140($fp)
label326:
label299:
	j label294
label293:
	li $t0, 60048
	sw $t0, -7256($fp)
	li $t0, 1
	sw $t0, -7260($fp)
	lw $t0, -7256($fp)
	lw $t1, -7260($fp)
	mul $t0, $t0, $t1
	sw $t0, -7264($fp)
	li $t0, 39817
	sw $t0, -7268($fp)
	li $t0, 0
	lw $t1, -7268($fp)
	sub $t0, $t0, $t1
	sw $t0, -7272($fp)
	li $t0, 0
	lw $t1, -7272($fp)
	sub $t0, $t0, $t1
	sw $t0, -7276($fp)
	li $t0, 1171
	sw $t0, -7280($fp)
	li $t0, 0
	lw $t1, -7280($fp)
	sub $t0, $t0, $t1
	sw $t0, -7284($fp)
	lw $t0, -7276($fp)
	lw $t1, -7284($fp)
	add $t0, $t0, $t1
	sw $t0, -7288($fp)
	lw $t1, -7264($fp)
	lw $t2, -7288($fp)
	bne $t1, $t2, label334
	j label335
label334:
	addi $t0, $fp, -440
	sw $t0, -7292($fp)
	li $t0, 7
	sw $t0, -7296($fp)
	li $t0, 4
	lw $t1, -7296($fp)
	mul $t0, $t0, $t1
	sw $t0, -7300($fp)
	lw $t0, -7300($fp)
	lw $t1, -7292($fp)
	add $t0, $t0, $t1
	sw $t0, -7304($fp)
	lw $t0, -7304($fp)
	lw $t1, 0($t0)
	sw $t1, -7308($fp)
	addi $t0, $fp, -168
	sw $t0, -7312($fp)
	lw $t0, -2020($fp)
	sw $t0, -7316($fp)
	li $t0, 4
	lw $t1, -7316($fp)
	mul $t0, $t0, $t1
	sw $t0, -7320($fp)
	lw $t0, -7320($fp)
	lw $t1, -7312($fp)
	add $t0, $t0, $t1
	sw $t0, -7324($fp)
	lw $t0, -7324($fp)
	lw $t1, 0($t0)
	sw $t1, -7328($fp)
	lw $t0, -1612($fp)
	sw $t0, -7332($fp)
	lw $t0, -7332($fp)
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	sw $t0, -7336($fp)
	addi $t0, $fp, -232
	sw $t0, -7340($fp)
	lw $t0, -4288($fp)
	sw $t0, -7344($fp)
	li $t0, 4
	lw $t1, -7344($fp)
	mul $t0, $t0, $t1
	sw $t0, -7348($fp)
	lw $t0, -7348($fp)
	lw $t1, -7340($fp)
	add $t0, $t0, $t1
	sw $t0, -7352($fp)
	lw $t0, -7352($fp)
	lw $t1, 0($t0)
	sw $t1, -7356($fp)
	lw $t0, -3172($fp)
	sw $t0, -7360($fp)
	addi $sp, $sp, -4
	lw $t0, -7308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7360($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7364($fp)
	addi $sp, $sp, 24
	j label336
label335:
	lw $t0, -4768($fp)
	sw $t0, -7368($fp)
	li $t0, 0
	sw $t0, -7372($fp)
	lw $t0, -1816($fp)
	sw $t0, -7376($fp)
	li $t0, 57438
	sw $t0, -7380($fp)
	lw $t0, -7376($fp)
	lw $t1, -7380($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7384($fp)
	li $t0, 6026
	sw $t0, -7388($fp)
	lw $t0, -7384($fp)
	lw $t1, -7388($fp)
	mul $t0, $t0, $t1
	sw $t0, -7392($fp)
	li $t0, 4909
	sw $t0, -7396($fp)
	li $t0, 42185
	sw $t0, -7400($fp)
	lw $t0, -7396($fp)
	lw $t1, -7400($fp)
	sub $t0, $t0, $t1
	sw $t0, -7404($fp)
	lw $t1, -7392($fp)
	lw $t2, -7404($fp)
	bge $t1, $t2, label340
	j label341
label340:
	li $t0, 1
	sw $t0, -7372($fp)
label341:
	lw $t1, -7368($fp)
	lw $t2, -7372($fp)
	beq $t1, $t2, label337
	j label338
label337:
	addi $t0, $fp, -220
	sw $t0, -7408($fp)
	li $t0, 0
	sw $t0, -7412($fp)
	li $t0, 40465
	sw $t0, -7416($fp)
	lw $t1, -7416($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label343
label342:
	li $t0, 1
	sw $t0, -7412($fp)
label343:
	li $t0, 0
	sw $t0, -7420($fp)
	lw $t0, -4360($fp)
	sw $t0, -7424($fp)
	lw $t0, -3928($fp)
	sw $t0, -7428($fp)
	lw $t0, -2812($fp)
	sw $t0, -7432($fp)
	li $t0, 0
	sw $t0, -7436($fp)
	li $t0, 0
	sw $t0, -7440($fp)
	li $t0, 33611
	sw $t0, -7444($fp)
	lw $t1, -7444($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label349
label349:
	li $t0, 1
	sw $t0, -7440($fp)
label350:
	li $t0, 28257
	sw $t0, -7448($fp)
	lw $t1, -7440($fp)
	lw $t2, -7448($fp)
	beq $t1, $t2, label347
	j label348
label347:
	li $t0, 1
	sw $t0, -7436($fp)
label348:
	lw $t0, -2032($fp)
	sw $t0, -7452($fp)
	lw $t0, -4780($fp)
	sw $t0, -7456($fp)
	lw $t0, -7452($fp)
	lw $t1, -7456($fp)
	mul $t0, $t0, $t1
	sw $t0, -7460($fp)
	addi $sp, $sp, -4
	lw $t0, -7424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7460($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7464($fp)
	addi $sp, $sp, 24
	lw $t1, -7464($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label345
label346:
	lw $t0, -4372($fp)
	sw $t0, -7468($fp)
	lw $t1, -7468($fp)
	li $t2, 0
	bne $t1, $t2, label344
	j label345
label344:
	li $t0, 1
	sw $t0, -7420($fp)
label345:
	li $t0, 0
	sw $t0, -7472($fp)
	li $t0, 59050
	sw $t0, -7476($fp)
	lw $t1, -7476($fp)
	li $t2, 0
	bne $t1, $t2, label353
	j label351
label353:
	lw $t0, -2020($fp)
	sw $t0, -7480($fp)
	lw $t1, -7480($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label352
label351:
	li $t0, 1
	sw $t0, -7472($fp)
label352:
	li $t0, 0
	sw $t0, -7484($fp)
	addi $t0, $fp, -200
	sw $t0, -7488($fp)
	li $t0, 5
	sw $t0, -7492($fp)
	li $t0, 4
	lw $t1, -7492($fp)
	mul $t0, $t0, $t1
	sw $t0, -7496($fp)
	lw $t0, -7496($fp)
	lw $t1, -7488($fp)
	add $t0, $t0, $t1
	sw $t0, -7500($fp)
	lw $t0, -7500($fp)
	lw $t1, 0($t0)
	sw $t1, -7504($fp)
	lw $t1, -7504($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label355
label356:
	li $t0, 29432
	sw $t0, -7508($fp)
	lw $t1, -7508($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label355
label354:
	li $t0, 1
	sw $t0, -7484($fp)
label355:
	li $t0, 0
	sw $t0, -7512($fp)
	lw $t0, -2020($fp)
	sw $t0, -7516($fp)
	lw $t1, -7516($fp)
	li $t2, 0
	bne $t1, $t2, label359
	j label358
label359:
	li $t0, 16081
	sw $t0, -7520($fp)
	lw $t1, -7520($fp)
	li $t2, 0
	bne $t1, $t2, label357
	j label358
label357:
	li $t0, 1
	sw $t0, -7512($fp)
label358:
	addi $sp, $sp, -4
	lw $t0, -7412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7512($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7524($fp)
	addi $sp, $sp, 24
	li $t0, 4
	lw $t1, -7524($fp)
	mul $t0, $t0, $t1
	sw $t0, -7528($fp)
	lw $t0, -7528($fp)
	lw $t1, -7408($fp)
	add $t0, $t0, $t1
	sw $t0, -7532($fp)
	lw $t0, -7532($fp)
	lw $t1, 0($t0)
	sw $t1, -7536($fp)
	lw $ra, -4($fp)
	lw $v0, -7536($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label339
label338:
	li $t0, 0
	sw $t0, -7540($fp)
	lw $t0, -4384($fp)
	sw $t0, -7544($fp)
	li $t0, 32636
	sw $t0, -7548($fp)
	lw $t0, -652($fp)
	sw $t0, -7552($fp)
	lw $t0, -7548($fp)
	lw $t1, -7552($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7556($fp)
	li $t0, 0
	lw $t1, -7556($fp)
	sub $t0, $t0, $t1
	sw $t0, -7560($fp)
	lw $t1, -7544($fp)
	lw $t2, -7560($fp)
	beq $t1, $t2, label360
	j label362
label362:
	addi $t0, $fp, -252
	sw $t0, -7564($fp)
	lw $t0, -3520($fp)
	sw $t0, -7568($fp)
	li $t0, 4
	lw $t1, -7568($fp)
	mul $t0, $t0, $t1
	sw $t0, -7572($fp)
	lw $t0, -7572($fp)
	lw $t1, -7564($fp)
	add $t0, $t0, $t1
	sw $t0, -7576($fp)
	lw $t0, -7576($fp)
	lw $t1, 0($t0)
	sw $t1, -7580($fp)
	lw $t0, -4732($fp)
	sw $t0, -7584($fp)
	lw $t0, -7584($fp)
	sw $t0, -2848($fp)
	lw $t0, -2848($fp)
	sw $t0, -7588($fp)
	lw $t0, -2836($fp)
	sw $t0, -7592($fp)
	lw $t0, -7592($fp)
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	sw $t0, -7596($fp)
	li $t0, 0
	sw $t0, -7600($fp)
	li $t0, 0
	sw $t0, -7604($fp)
	li $t0, 0
	sw $t0, -7608($fp)
	li $t0, 0
	sw $t0, -7612($fp)
	li $t0, 43912
	sw $t0, -7616($fp)
	lw $t1, -7616($fp)
	li $t2, 0
	bne $t1, $t2, label371
	j label370
label370:
	li $t0, 1
	sw $t0, -7612($fp)
label371:
	li $t0, 41512
	sw $t0, -7620($fp)
	lw $t1, -7612($fp)
	lw $t2, -7620($fp)
	beq $t1, $t2, label368
	j label369
label368:
	li $t0, 1
	sw $t0, -7608($fp)
label369:
	li $t0, 12080
	sw $t0, -7624($fp)
	li $t0, 20673
	sw $t0, -7628($fp)
	lw $t0, -7624($fp)
	lw $t1, -7628($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7632($fp)
	lw $t0, -4720($fp)
	sw $t0, -7636($fp)
	lw $t0, -7632($fp)
	lw $t1, -7636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7640($fp)
	li $t0, 51187
	sw $t0, -7644($fp)
	li $t0, 0
	lw $t1, -7644($fp)
	sub $t0, $t0, $t1
	sw $t0, -7648($fp)
	li $t0, 0
	sw $t0, -7652($fp)
	li $t0, 62300
	sw $t0, -7656($fp)
	lw $t0, -3808($fp)
	sw $t0, -7660($fp)
	lw $t1, -7656($fp)
	lw $t2, -7660($fp)
	beq $t1, $t2, label374
	j label373
label374:
	lw $t0, -1492($fp)
	sw $t0, -7664($fp)
	lw $t1, -7664($fp)
	li $t2, 0
	bne $t1, $t2, label372
	j label373
label372:
	li $t0, 1
	sw $t0, -7652($fp)
label373:
	li $t0, 0
	sw $t0, -7668($fp)
	li $t0, 9002
	sw $t0, -7672($fp)
	lw $t0, 8($fp)
	sw $t0, -7676($fp)
	lw $t0, -7672($fp)
	lw $t1, -7676($fp)
	add $t0, $t0, $t1
	sw $t0, -7680($fp)
	li $t0, 61534
	sw $t0, -7684($fp)
	lw $t1, -7680($fp)
	lw $t2, -7684($fp)
	blt $t1, $t2, label375
	j label376
label375:
	li $t0, 1
	sw $t0, -7668($fp)
label376:
	li $t0, 57390
	sw $t0, -7688($fp)
	lw $t0, -3844($fp)
	sw $t0, -7692($fp)
	lw $t0, -7688($fp)
	lw $t1, -7692($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7696($fp)
	li $t0, 0
	sw $t0, -7700($fp)
	li $t0, 17099
	sw $t0, -7704($fp)
	li $t0, 55508
	sw $t0, -7708($fp)
	lw $t1, -7704($fp)
	lw $t2, -7708($fp)
	ble $t1, $t2, label379
	j label378
label379:
	lw $t0, -4708($fp)
	sw $t0, -7712($fp)
	lw $t1, -7712($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label378
label377:
	li $t0, 1
	sw $t0, -7700($fp)
label378:
	addi $sp, $sp, -4
	lw $t0, -7648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7700($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7716($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -252
	sw $t0, -7720($fp)
	lw $t0, -2188($fp)
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
	li $t0, 0
	lw $t1, -7736($fp)
	sub $t0, $t0, $t1
	sw $t0, -7740($fp)
	li $t0, 0
	sw $t0, -7744($fp)
	li $t0, 22311
	sw $t0, -7748($fp)
	lw $t1, -7748($fp)
	li $t2, 0
	bne $t1, $t2, label381
	j label382
label382:
	lw $t0, -3820($fp)
	sw $t0, -7752($fp)
	lw $t1, -7752($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -7744($fp)
label381:
	addi $sp, $sp, -4
	lw $t0, -7608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7744($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7756($fp)
	addi $sp, $sp, 24
	lw $t1, -7756($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label366
label367:
	li $t0, 14187
	sw $t0, -7760($fp)
	lw $t1, -7760($fp)
	li $t2, 0
	bne $t1, $t2, label365
	j label366
label365:
	li $t0, 1
	sw $t0, -7604($fp)
label366:
	addi $t0, $fp, -208
	sw $t0, -7764($fp)
	lw $t0, -1024($fp)
	sw $t0, -7768($fp)
	li $t0, 4
	lw $t1, -7768($fp)
	mul $t0, $t0, $t1
	sw $t0, -7772($fp)
	lw $t0, -7772($fp)
	lw $t1, -7764($fp)
	add $t0, $t0, $t1
	sw $t0, -7776($fp)
	lw $t0, -7776($fp)
	lw $t1, 0($t0)
	sw $t1, -7780($fp)
	li $t0, 0
	sw $t0, -7784($fp)
	addi $t0, $fp, -68
	sw $t0, -7788($fp)
	lw $t0, -4696($fp)
	sw $t0, -7792($fp)
	li $t0, 4
	lw $t1, -7792($fp)
	mul $t0, $t0, $t1
	sw $t0, -7796($fp)
	lw $t0, -7796($fp)
	lw $t1, -7788($fp)
	add $t0, $t0, $t1
	sw $t0, -7800($fp)
	lw $t0, -7800($fp)
	lw $t1, 0($t0)
	sw $t1, -7804($fp)
	li $t0, 13007
	sw $t0, -7808($fp)
	lw $t1, -7804($fp)
	lw $t2, -7808($fp)
	bge $t1, $t2, label383
	j label384
label383:
	li $t0, 1
	sw $t0, -7784($fp)
label384:
	addi $t0, $fp, -488
	sw $t0, -7812($fp)
	lw $t0, -2368($fp)
	sw $t0, -7816($fp)
	li $t0, 4
	lw $t1, -7816($fp)
	mul $t0, $t0, $t1
	sw $t0, -7820($fp)
	lw $t0, -7820($fp)
	lw $t1, -7812($fp)
	add $t0, $t0, $t1
	sw $t0, -7824($fp)
	lw $t0, -7824($fp)
	lw $t1, 0($t0)
	sw $t1, -7828($fp)
	lw $t0, -4684($fp)
	sw $t0, -7832($fp)
	lw $t0, -7828($fp)
	lw $t1, -7832($fp)
	add $t0, $t0, $t1
	sw $t0, -7836($fp)
	addi $t0, $fp, -448
	sw $t0, -7840($fp)
	li $t0, 0
	sw $t0, -7844($fp)
	li $t0, 4
	lw $t1, -7844($fp)
	mul $t0, $t0, $t1
	sw $t0, -7848($fp)
	lw $t0, -7848($fp)
	lw $t1, -7840($fp)
	add $t0, $t0, $t1
	sw $t0, -7852($fp)
	lw $t0, -7852($fp)
	lw $t1, 0($t0)
	sw $t1, -7856($fp)
	addi $sp, $sp, -4
	lw $t0, -7604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7856($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7860($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -7864($fp)
	li $t0, 27081
	sw $t0, -7868($fp)
	lw $t1, -7868($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label385
label387:
	lw $t0, -2176($fp)
	sw $t0, -7872($fp)
	lw $t1, -7872($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label386
label385:
	li $t0, 1
	sw $t0, -7864($fp)
label386:
	li $t0, 0
	sw $t0, -7876($fp)
	li $t0, 26453
	sw $t0, -7880($fp)
	li $t0, 48850
	sw $t0, -7884($fp)
	lw $t0, -7880($fp)
	lw $t1, -7884($fp)
	mul $t0, $t0, $t1
	sw $t0, -7888($fp)
	li $t0, 21416
	sw $t0, -7892($fp)
	lw $t1, -7888($fp)
	lw $t2, -7892($fp)
	beq $t1, $t2, label388
	j label389
label388:
	li $t0, 1
	sw $t0, -7876($fp)
label389:
	li $t0, 34139
	sw $t0, -7896($fp)
	lw $t0, -2032($fp)
	sw $t0, -7900($fp)
	lw $t0, -7896($fp)
	lw $t1, -7900($fp)
	mul $t0, $t0, $t1
	sw $t0, -7904($fp)
	li $t0, 51393
	sw $t0, -7908($fp)
	li $t0, 2611
	sw $t0, -7912($fp)
	lw $t0, -7908($fp)
	lw $t1, -7912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7916($fp)
	li $t0, 40562
	sw $t0, -7920($fp)
	lw $t0, -7916($fp)
	lw $t1, -7920($fp)
	mul $t0, $t0, $t1
	sw $t0, -7924($fp)
	li $t0, 0
	sw $t0, -7928($fp)
	addi $t0, $fp, -56
	sw $t0, -7932($fp)
	lw $t0, -4396($fp)
	sw $t0, -7936($fp)
	li $t0, 4
	lw $t1, -7936($fp)
	mul $t0, $t0, $t1
	sw $t0, -7940($fp)
	lw $t0, -7940($fp)
	lw $t1, -7932($fp)
	add $t0, $t0, $t1
	sw $t0, -7944($fp)
	lw $t0, -7944($fp)
	lw $t1, 0($t0)
	sw $t1, -7948($fp)
	lw $t0, -4408($fp)
	sw $t0, -7952($fp)
	lw $t1, -7948($fp)
	lw $t2, -7952($fp)
	beq $t1, $t2, label390
	j label391
label390:
	li $t0, 1
	sw $t0, -7928($fp)
label391:
	li $t0, 52121
	sw $t0, -7956($fp)
	li $t0, 58410
	sw $t0, -7960($fp)
	lw $t0, -7960($fp)
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	sw $t0, -7964($fp)
	addi $sp, $sp, -4
	lw $t0, -7904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7964($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7968($fp)
	addi $sp, $sp, 24
	li $t0, 3625
	sw $t0, -7972($fp)
	addi $sp, $sp, -4
	lw $t0, -7860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7972($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7976($fp)
	addi $sp, $sp, 24
	li $t0, 11988
	sw $t0, -7980($fp)
	lw $t1, -7976($fp)
	lw $t2, -7980($fp)
	bgt $t1, $t2, label363
	j label364
label363:
	li $t0, 1
	sw $t0, -7600($fp)
label364:
	lw $t0, -4384($fp)
	sw $t0, -7984($fp)
	lw $t0, -7984($fp)
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	sw $t0, -7988($fp)
	addi $sp, $sp, -4
	lw $t0, -7580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7988($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7992($fp)
	addi $sp, $sp, 24
	lw $t1, -7992($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -7540($fp)
label361:
label339:
label336:
label294:
	j label252
label254:
label129:
	j label126
label125:
label392:
	li $t0, 0
	sw $t0, -7996($fp)
	li $t0, 0
	sw $t0, -8000($fp)
	li $t0, 0
	sw $t0, -8004($fp)
	li $t0, 0
	sw $t0, -8008($fp)
	lw $t0, -4816($fp)
	sw $t0, -8012($fp)
	lw $t1, -8012($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label401
label401:
	li $t0, 1
	sw $t0, -8008($fp)
label402:
	li $t0, 27856
	sw $t0, -8016($fp)
	lw $t0, -8008($fp)
	lw $t1, -8016($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8020($fp)
	li $t0, 0
	sw $t0, -8024($fp)
	lw $t0, -4780($fp)
	sw $t0, -8028($fp)
	li $t0, 6236
	sw $t0, -8032($fp)
	lw $t0, -8028($fp)
	lw $t1, -8032($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8036($fp)
	lw $t1, -8036($fp)
	li $t2, 0
	bne $t1, $t2, label405
	j label404
label405:
	lw $t0, -3772($fp)
	sw $t0, -8040($fp)
	lw $t1, -8040($fp)
	li $t2, 0
	bne $t1, $t2, label403
	j label404
label403:
	li $t0, 1
	sw $t0, -8024($fp)
label404:
	li $t0, 0
	sw $t0, -8044($fp)
	li $t0, 59252
	sw $t0, -8048($fp)
	li $t0, 0
	lw $t1, -8048($fp)
	sub $t0, $t0, $t1
	sw $t0, -8052($fp)
	li $t0, 50138
	sw $t0, -8056($fp)
	lw $t1, -8052($fp)
	lw $t2, -8056($fp)
	bne $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -8044($fp)
label407:
	lw $t0, -4792($fp)
	sw $t0, -8060($fp)
	li $t0, 0
	lw $t1, -8060($fp)
	sub $t0, $t0, $t1
	sw $t0, -8064($fp)
	lw $t0, -4804($fp)
	sw $t0, -8068($fp)
	lw $t0, -8064($fp)
	lw $t1, -8068($fp)
	add $t0, $t0, $t1
	sw $t0, -8072($fp)
	lw $t0, -4780($fp)
	sw $t0, -8076($fp)
	addi $sp, $sp, -4
	lw $t0, -8020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8076($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8080($fp)
	addi $sp, $sp, 24
	li $t0, 11055
	sw $t0, -8084($fp)
	lw $t1, -8080($fp)
	lw $t2, -8084($fp)
	bne $t1, $t2, label399
	j label400
label399:
	li $t0, 1
	sw $t0, -8004($fp)
label400:
	lw $t0, -4768($fp)
	sw $t0, -8088($fp)
	addi $t0, $fp, -208
	sw $t0, -8092($fp)
	lw $t0, -2392($fp)
	sw $t0, -8096($fp)
	li $t0, 4
	lw $t1, -8096($fp)
	mul $t0, $t0, $t1
	sw $t0, -8100($fp)
	lw $t0, -8100($fp)
	lw $t1, -8092($fp)
	add $t0, $t0, $t1
	sw $t0, -8104($fp)
	lw $t0, -8104($fp)
	lw $t1, 0($t0)
	sw $t1, -8108($fp)
	li $t0, 0
	lw $t1, -8108($fp)
	sub $t0, $t0, $t1
	sw $t0, -8112($fp)
	li $t0, 0
	sw $t0, -8116($fp)
	li $t0, 31210
	sw $t0, -8120($fp)
	lw $t1, -8120($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label410
label411:
	lw $t0, -4768($fp)
	sw $t0, -8124($fp)
	lw $t1, -8124($fp)
	li $t2, 0
	bne $t1, $t2, label408
	j label410
label410:
	lw $t0, -700($fp)
	sw $t0, -8128($fp)
	lw $t1, -8128($fp)
	li $t2, 0
	bne $t1, $t2, label408
	j label409
label408:
	li $t0, 1
	sw $t0, -8116($fp)
label409:
	li $t0, 7859
	sw $t0, -8132($fp)
	li $t0, 47527
	sw $t0, -8136($fp)
	lw $t0, -8132($fp)
	lw $t1, -8136($fp)
	mul $t0, $t0, $t1
	sw $t0, -8140($fp)
	li $t0, 0
	lw $t1, -8140($fp)
	sub $t0, $t0, $t1
	sw $t0, -8144($fp)
	addi $sp, $sp, -4
	lw $t0, -8004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8144($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8148($fp)
	addi $sp, $sp, 24
	lw $t1, -8148($fp)
	li $t2, 0
	bne $t1, $t2, label398
	j label397
label397:
	li $t0, 1
	sw $t0, -8000($fp)
label398:
	li $t0, 0
	sw $t0, -8152($fp)
	li $t0, 54652
	sw $t0, -8156($fp)
	li $t0, 44624
	sw $t0, -8160($fp)
	lw $t1, -8156($fp)
	lw $t2, -8160($fp)
	blt $t1, $t2, label412
	j label413
label412:
	li $t0, 1
	sw $t0, -8152($fp)
label413:
	lw $t0, -2476($fp)
	sw $t0, -8164($fp)
	lw $t0, -2344($fp)
	sw $t0, -8168($fp)
	lw $t0, -8164($fp)
	lw $t1, -8168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8172($fp)
	lw $t0, -4756($fp)
	sw $t0, -8176($fp)
	lw $t0, -8172($fp)
	lw $t1, -8176($fp)
	add $t0, $t0, $t1
	sw $t0, -8180($fp)
	li $t0, 0
	sw $t0, -8184($fp)
	lw $t0, -1168($fp)
	sw $t0, -8188($fp)
	lw $t1, -8188($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label415
label417:
	lw $t0, -3952($fp)
	sw $t0, -8192($fp)
	lw $t1, -8192($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label415
label416:
	lw $t0, -3520($fp)
	sw $t0, -8196($fp)
	lw $t1, -8196($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -8184($fp)
label415:
	li $t0, 0
	sw $t0, -8200($fp)
	li $t0, 4234
	sw $t0, -8204($fp)
	lw $t1, -8204($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label418
label418:
	li $t0, 1
	sw $t0, -8200($fp)
label419:
	lw $t0, -4744($fp)
	sw $t0, -8208($fp)
	lw $t0, -8200($fp)
	lw $t1, -8208($fp)
	add $t0, $t0, $t1
	sw $t0, -8212($fp)
	addi $sp, $sp, -4
	lw $t0, -8000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8212($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8216($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -8220($fp)
	lw $t0, -2344($fp)
	sw $t0, -8224($fp)
	lw $t1, -8224($fp)
	li $t2, 0
	bne $t1, $t2, label421
	j label420
label420:
	li $t0, 1
	sw $t0, -8220($fp)
label421:
	li $t0, 0
	lw $t1, -8220($fp)
	sub $t0, $t0, $t1
	sw $t0, -8228($fp)
	li $t0, 0
	sw $t0, -8232($fp)
	lw $t0, -652($fp)
	sw $t0, -8236($fp)
	li $t0, 0
	lw $t1, -8236($fp)
	sub $t0, $t0, $t1
	sw $t0, -8240($fp)
	li $t0, 11417
	sw $t0, -8244($fp)
	lw $t1, -8240($fp)
	lw $t2, -8244($fp)
	bge $t1, $t2, label422
	j label423
label422:
	li $t0, 1
	sw $t0, -8232($fp)
label423:
	li $t0, 48510
	sw $t0, -8248($fp)
	li $t0, 0
	sw $t0, -8252($fp)
	li $t0, 25765
	sw $t0, -8256($fp)
	lw $t1, -8256($fp)
	li $t2, 0
	bne $t1, $t2, label425
	j label424
label424:
	li $t0, 1
	sw $t0, -8252($fp)
label425:
	li $t0, 37114
	sw $t0, -8260($fp)
	lw $t0, -8252($fp)
	lw $t1, -8260($fp)
	mul $t0, $t0, $t1
	sw $t0, -8264($fp)
	addi $t0, $fp, -312
	sw $t0, -8268($fp)
	li $t0, 3
	sw $t0, -8272($fp)
	li $t0, 4
	lw $t1, -8272($fp)
	mul $t0, $t0, $t1
	sw $t0, -8276($fp)
	lw $t0, -8276($fp)
	lw $t1, -8268($fp)
	add $t0, $t0, $t1
	sw $t0, -8280($fp)
	lw $t0, -8280($fp)
	lw $t1, 0($t0)
	sw $t1, -8284($fp)
	li $t0, 51746
	sw $t0, -8288($fp)
	lw $t0, -8284($fp)
	lw $t1, -8288($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8292($fp)
	addi $sp, $sp, -4
	lw $t0, -8228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8292($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8296($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -8300($fp)
	lw $t0, -4012($fp)
	sw $t0, -8304($fp)
	li $t0, 0
	lw $t1, -8304($fp)
	sub $t0, $t0, $t1
	sw $t0, -8308($fp)
	lw $t0, -640($fp)
	sw $t0, -8312($fp)
	lw $t1, -8308($fp)
	lw $t2, -8312($fp)
	ble $t1, $t2, label426
	j label427
label426:
	li $t0, 1
	sw $t0, -8300($fp)
label427:
	li $t0, 0
	sw $t0, -8316($fp)
	lw $t0, -3832($fp)
	sw $t0, -8320($fp)
	li $t0, 0
	lw $t1, -8320($fp)
	sub $t0, $t0, $t1
	sw $t0, -8324($fp)
	lw $t0, -628($fp)
	sw $t0, -8328($fp)
	lw $t1, -8324($fp)
	lw $t2, -8328($fp)
	bgt $t1, $t2, label428
	j label429
label428:
	li $t0, 1
	sw $t0, -8316($fp)
label429:
	li $t0, 65200
	sw $t0, -8332($fp)
	li $t0, 51143
	sw $t0, -8336($fp)
	lw $t0, -8332($fp)
	lw $t1, -8336($fp)
	sub $t0, $t0, $t1
	sw $t0, -8340($fp)
	li $t0, 59891
	sw $t0, -8344($fp)
	lw $t0, -8340($fp)
	lw $t1, -8344($fp)
	sub $t0, $t0, $t1
	sw $t0, -8348($fp)
	li $t0, 0
	sw $t0, -8352($fp)
	lw $t0, -4840($fp)
	sw $t0, -8356($fp)
	li $t0, 0
	lw $t1, -8356($fp)
	sub $t0, $t0, $t1
	sw $t0, -8360($fp)
	lw $t1, -8360($fp)
	li $t2, 0
	bne $t1, $t2, label432
	j label431
label432:
	lw $t0, -4852($fp)
	sw $t0, -8364($fp)
	lw $t1, -8364($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label431
label430:
	li $t0, 1
	sw $t0, -8352($fp)
label431:
	li $t0, 37580
	sw $t0, -8368($fp)
	addi $sp, $sp, -4
	lw $t0, -8300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8368($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8372($fp)
	addi $sp, $sp, 24
	lw $t0, -2836($fp)
	sw $t0, -8376($fp)
	lw $t0, -8372($fp)
	lw $t1, -8376($fp)
	mul $t0, $t0, $t1
	sw $t0, -8380($fp)
	lw $t0, -4756($fp)
	sw $t0, -8384($fp)
	addi $t0, $fp, -208
	sw $t0, -8388($fp)
	li $t0, 0
	sw $t0, -8392($fp)
	li $t0, 4
	lw $t1, -8392($fp)
	mul $t0, $t0, $t1
	sw $t0, -8396($fp)
	lw $t0, -8396($fp)
	lw $t1, -8388($fp)
	add $t0, $t0, $t1
	sw $t0, -8400($fp)
	lw $t0, -8400($fp)
	lw $t1, 0($t0)
	sw $t1, -8404($fp)
	lw $t0, -4828($fp)
	sw $t0, -8408($fp)
	lw $t0, -8404($fp)
	lw $t1, -8408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8412($fp)
	li $t0, 0
	sw $t0, -8416($fp)
	li $t0, 55086
	sw $t0, -8420($fp)
	lw $t1, -8420($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label433
label433:
	li $t0, 1
	sw $t0, -8416($fp)
label434:
	addi $sp, $sp, -4
	lw $t0, -8296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8416($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8424($fp)
	addi $sp, $sp, 24
	lw $t1, -8216($fp)
	lw $t2, -8424($fp)
	bne $t1, $t2, label395
	j label396
label395:
	li $t0, 1
	sw $t0, -7996($fp)
label396:
	lw $t0, -7996($fp)
	sw $t0, -3868($fp)
	lw $t0, -3868($fp)
	sw $t0, -8428($fp)
	lw $t1, -8428($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label394
label393:
label435:
	li $t0, 0
	sw $t0, -8432($fp)
	li $t0, 12080
	sw $t0, -8436($fp)
	li $t0, 30980
	sw $t0, -8440($fp)
	lw $t0, -8436($fp)
	lw $t1, -8440($fp)
	add $t0, $t0, $t1
	sw $t0, -8444($fp)
	lw $t0, -688($fp)
	sw $t0, -8448($fp)
	lw $t1, -8444($fp)
	lw $t2, -8448($fp)
	bgt $t1, $t2, label438
	j label439
label438:
	li $t0, 1
	sw $t0, -8432($fp)
label439:
	li $t0, 0
	sw $t0, -8452($fp)
	lw $t0, -676($fp)
	sw $t0, -8456($fp)
	lw $t1, -8456($fp)
	li $t2, 0
	bne $t1, $t2, label441
	j label440
label440:
	li $t0, 1
	sw $t0, -8452($fp)
label441:
	li $t0, 54478
	sw $t0, -8460($fp)
	lw $t0, -8452($fp)
	lw $t1, -8460($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8464($fp)
	lw $t0, -4264($fp)
	sw $t0, -8468($fp)
	lw $t0, -2164($fp)
	sw $t0, -8472($fp)
	lw $t0, -8468($fp)
	lw $t1, -8472($fp)
	sub $t0, $t0, $t1
	sw $t0, -8476($fp)
	lw $t0, -712($fp)
	sw $t0, -8480($fp)
	lw $t0, -8476($fp)
	lw $t1, -8480($fp)
	sub $t0, $t0, $t1
	sw $t0, -8484($fp)
	li $t0, 0
	sw $t0, -8488($fp)
	li $t0, 0
	sw $t0, -8492($fp)
	lw $t0, -664($fp)
	sw $t0, -8496($fp)
	lw $t1, -8496($fp)
	li $t2, 0
	bne $t1, $t2, label445
	j label444
label444:
	li $t0, 1
	sw $t0, -8492($fp)
label445:
	li $t0, 37264
	sw $t0, -8500($fp)
	lw $t1, -8492($fp)
	lw $t2, -8500($fp)
	ble $t1, $t2, label442
	j label443
label442:
	li $t0, 1
	sw $t0, -8488($fp)
label443:
	li $t0, 0
	sw $t0, -8504($fp)
	lw $t0, -4732($fp)
	sw $t0, -8508($fp)
	lw $t1, -8508($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label449
label449:
	li $t0, 6951
	sw $t0, -8512($fp)
	lw $t1, -8512($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label448
label448:
	li $t0, 46406
	sw $t0, -8516($fp)
	lw $t1, -8516($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label447
label446:
	li $t0, 1
	sw $t0, -8504($fp)
label447:
	li $t0, 0
	sw $t0, -8520($fp)
	li $t0, 17834
	sw $t0, -8524($fp)
	li $t0, 1781
	sw $t0, -8528($fp)
	lw $t1, -8524($fp)
	lw $t2, -8528($fp)
	bge $t1, $t2, label450
	j label452
label452:
	li $t0, 29404
	sw $t0, -8532($fp)
	lw $t1, -8532($fp)
	li $t2, 0
	bne $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -8520($fp)
label451:
	addi $sp, $sp, -4
	lw $t0, -8464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8520($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8536($fp)
	addi $sp, $sp, 24
	li $t0, 55329
	sw $t0, -8540($fp)
	li $t0, 25170
	sw $t0, -8544($fp)
	lw $t0, -8540($fp)
	lw $t1, -8544($fp)
	add $t0, $t0, $t1
	sw $t0, -8548($fp)
	lw $t0, -1024($fp)
	sw $t0, -8552($fp)
	lw $t0, -8548($fp)
	lw $t1, -8552($fp)
	sub $t0, $t0, $t1
	sw $t0, -8556($fp)
	lw $t0, -2344($fp)
	sw $t0, -8560($fp)
	li $t0, 0
	sw $t0, -8564($fp)
	li $t0, 49194
	sw $t0, -8568($fp)
	lw $t1, -8568($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label453
label453:
	li $t0, 1
	sw $t0, -8564($fp)
label454:
	li $t0, 3647
	sw $t0, -8572($fp)
	lw $t0, -8564($fp)
	lw $t1, -8572($fp)
	add $t0, $t0, $t1
	sw $t0, -8576($fp)
	addi $sp, $sp, -4
	lw $t0, -8432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8576($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8580($fp)
	addi $sp, $sp, 24
	lw $t1, -8580($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label437
label436:
	addi $t0, $fp, -408
	sw $t0, -8584($fp)
	lw $t0, -2620($fp)
	sw $t0, -8588($fp)
	li $t0, 4
	lw $t1, -8588($fp)
	mul $t0, $t0, $t1
	sw $t0, -8592($fp)
	lw $t0, -8592($fp)
	lw $t1, -8584($fp)
	add $t0, $t0, $t1
	sw $t0, -8596($fp)
	lw $t0, -8596($fp)
	lw $t1, 0($t0)
	sw $t1, -8600($fp)
	li $t0, 0
	sw $t0, -8604($fp)
	li $t0, 22735
	sw $t0, -8608($fp)
	li $t0, 45447
	sw $t0, -8612($fp)
	lw $t1, -8608($fp)
	lw $t2, -8612($fp)
	bge $t1, $t2, label458
	j label459
label458:
	li $t0, 1
	sw $t0, -8604($fp)
label459:
	li $t0, 7867
	sw $t0, -8616($fp)
	lw $t0, -700($fp)
	sw $t0, -8620($fp)
	lw $t0, -8616($fp)
	lw $t1, -8620($fp)
	mul $t0, $t0, $t1
	sw $t0, -8624($fp)
	li $t0, 42572
	sw $t0, -8628($fp)
	lw $t0, -8624($fp)
	lw $t1, -8628($fp)
	sub $t0, $t0, $t1
	sw $t0, -8632($fp)
	li $t0, 58836
	sw $t0, -8636($fp)
	li $t0, 50135
	sw $t0, -8640($fp)
	lw $t0, -8636($fp)
	lw $t1, -8640($fp)
	sub $t0, $t0, $t1
	sw $t0, -8644($fp)
	li $t0, 0
	sw $t0, -8648($fp)
	lw $t0, -712($fp)
	sw $t0, -8652($fp)
	lw $t1, -8652($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label461
label463:
	li $t0, 39080
	sw $t0, -8656($fp)
	lw $t1, -8656($fp)
	li $t2, 0
	bne $t1, $t2, label462
	j label461
label462:
	li $t0, 18316
	sw $t0, -8660($fp)
	lw $t1, -8660($fp)
	li $t2, 0
	bne $t1, $t2, label460
	j label461
label460:
	li $t0, 1
	sw $t0, -8648($fp)
label461:
	addi $sp, $sp, -4
	lw $t0, -8600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8648($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8664($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -280
	sw $t0, -8668($fp)
	li $t0, 0
	sw $t0, -8672($fp)
	lw $t0, -2920($fp)
	sw $t0, -8676($fp)
	lw $t1, -8676($fp)
	li $t2, 0
	bne $t1, $t2, label464
	j label466
label466:
	lw $t0, -712($fp)
	sw $t0, -8680($fp)
	lw $t1, -8680($fp)
	li $t2, 0
	bne $t1, $t2, label464
	j label465
label464:
	li $t0, 1
	sw $t0, -8672($fp)
label465:
	li $t0, 4
	lw $t1, -8672($fp)
	mul $t0, $t0, $t1
	sw $t0, -8684($fp)
	lw $t0, -8684($fp)
	lw $t1, -8668($fp)
	add $t0, $t0, $t1
	sw $t0, -8688($fp)
	lw $t0, -8688($fp)
	lw $t1, 0($t0)
	sw $t1, -8692($fp)
	lw $t0, -8664($fp)
	lw $t1, -8692($fp)
	mul $t0, $t0, $t1
	sw $t0, -8696($fp)
	lw $t1, -8696($fp)
	li $t2, 0
	bne $t1, $t2, label455
	j label456
label455:
label467:
	lw $t0, -1492($fp)
	sw $t0, -8700($fp)
	lw $t0, -8700($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -8704($fp)
	lw $t1, -8704($fp)
	li $t2, 0
	bne $t1, $t2, label468
	j label469
label468:
	li $t0, 0
	sw $t0, -8708($fp)
	addi $t0, $fp, -68
	sw $t0, -8712($fp)
	lw $t0, -1024($fp)
	sw $t0, -8716($fp)
	li $t0, 4
	lw $t1, -8716($fp)
	mul $t0, $t0, $t1
	sw $t0, -8720($fp)
	lw $t0, -8720($fp)
	lw $t1, -8712($fp)
	add $t0, $t0, $t1
	sw $t0, -8724($fp)
	lw $t0, -8724($fp)
	lw $t1, 0($t0)
	sw $t1, -8728($fp)
	li $t0, 0
	sw $t0, -8732($fp)
	li $t0, 30646
	sw $t0, -8736($fp)
	lw $t0, -940($fp)
	sw $t0, -8740($fp)
	lw $t1, -8736($fp)
	lw $t2, -8740($fp)
	bgt $t1, $t2, label474
	j label473
label474:
	li $t0, 4694
	sw $t0, -8744($fp)
	lw $t1, -8744($fp)
	li $t2, 0
	bne $t1, $t2, label472
	j label473
label472:
	li $t0, 1
	sw $t0, -8732($fp)
label473:
	lw $t0, -1468($fp)
	sw $t0, -8748($fp)
	li $t0, 0
	sw $t0, -8752($fp)
	lw $t0, -2800($fp)
	sw $t0, -8756($fp)
	lw $t0, -8756($fp)
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	sw $t0, -8760($fp)
	li $t0, 0
	sw $t0, -8764($fp)
	li $t0, 21036
	sw $t0, -8768($fp)
	lw $t0, -928($fp)
	sw $t0, -8772($fp)
	lw $t0, -8768($fp)
	lw $t1, -8772($fp)
	sub $t0, $t0, $t1
	sw $t0, -8776($fp)
	lw $t0, -3916($fp)
	sw $t0, -8780($fp)
	lw $t1, -8776($fp)
	lw $t2, -8780($fp)
	bgt $t1, $t2, label478
	j label479
label478:
	li $t0, 1
	sw $t0, -8764($fp)
label479:
	addi $t0, $fp, -56
	sw $t0, -8784($fp)
	li $t0, 5
	sw $t0, -8788($fp)
	li $t0, 4
	lw $t1, -8788($fp)
	mul $t0, $t0, $t1
	sw $t0, -8792($fp)
	lw $t0, -8792($fp)
	lw $t1, -8784($fp)
	add $t0, $t0, $t1
	sw $t0, -8796($fp)
	lw $t0, -8796($fp)
	lw $t1, 0($t0)
	sw $t1, -8800($fp)
	li $t0, 49458
	sw $t0, -8804($fp)
	lw $t0, -8804($fp)
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	sw $t0, -8808($fp)
	lw $t0, -724($fp)
	sw $t0, -8812($fp)
	li $t0, 39803
	sw $t0, -8816($fp)
	lw $t0, -8812($fp)
	lw $t1, -8816($fp)
	mul $t0, $t0, $t1
	sw $t0, -8820($fp)
	li $t0, 59000
	sw $t0, -8824($fp)
	lw $t0, -8820($fp)
	lw $t1, -8824($fp)
	add $t0, $t0, $t1
	sw $t0, -8828($fp)
	addi $sp, $sp, -4
	lw $t0, -8760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8828($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8832($fp)
	addi $sp, $sp, 24
	lw $t1, -8832($fp)
	li $t2, 0
	bne $t1, $t2, label477
	j label476
label477:
	li $t0, 8987
	sw $t0, -8836($fp)
	lw $t1, -8836($fp)
	li $t2, 0
	bne $t1, $t2, label475
	j label476
label475:
	li $t0, 1
	sw $t0, -8752($fp)
label476:
	addi $t0, $fp, -364
	sw $t0, -8840($fp)
	li $t0, 8
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
	addi $sp, $sp, -4
	lw $t0, -8728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8856($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8860($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -8864($fp)
	li $t0, 12634
	sw $t0, -8868($fp)
	li $t0, 20440
	sw $t0, -8872($fp)
	lw $t1, -8868($fp)
	lw $t2, -8872($fp)
	bge $t1, $t2, label480
	j label481
label480:
	li $t0, 1
	sw $t0, -8864($fp)
label481:
	lw $t1, -8860($fp)
	lw $t2, -8864($fp)
	beq $t1, $t2, label470
	j label471
label470:
	li $t0, 1
	sw $t0, -8708($fp)
label471:
	lw $t0, -8708($fp)
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	sw $t0, -8876($fp)
	lw $ra, -4($fp)
	lw $v0, -8876($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label467
label469:
	j label457
label456:
label482:
	li $t0, 0
	sw $t0, -8880($fp)
	li $t0, 29864
	sw $t0, -8884($fp)
	li $t0, 0
	lw $t1, -8884($fp)
	sub $t0, $t0, $t1
	sw $t0, -8888($fp)
	li $t0, 0
	lw $t1, -8888($fp)
	sub $t0, $t0, $t1
	sw $t0, -8892($fp)
	li $t0, 0
	sw $t0, -8896($fp)
	lw $t0, -1036($fp)
	sw $t0, -8900($fp)
	lw $t1, -8900($fp)
	li $t2, 0
	bne $t1, $t2, label489
	j label488
label488:
	li $t0, 1
	sw $t0, -8896($fp)
label489:
	lw $t1, -8892($fp)
	lw $t2, -8896($fp)
	ble $t1, $t2, label486
	j label487
label486:
	li $t0, 1
	sw $t0, -8880($fp)
label487:
	addi $t0, $fp, -232
	sw $t0, -8904($fp)
	li $t0, 2
	sw $t0, -8908($fp)
	li $t0, 4
	lw $t1, -8908($fp)
	mul $t0, $t0, $t1
	sw $t0, -8912($fp)
	lw $t0, -8912($fp)
	lw $t1, -8904($fp)
	add $t0, $t0, $t1
	sw $t0, -8916($fp)
	lw $t0, -8916($fp)
	lw $t1, 0($t0)
	sw $t1, -8920($fp)
	lw $t0, 4($fp)
	sw $t0, -8924($fp)
	lw $t0, -8920($fp)
	lw $t1, -8924($fp)
	mul $t0, $t0, $t1
	sw $t0, -8928($fp)
	lw $t1, -8880($fp)
	lw $t2, -8928($fp)
	bge $t1, $t2, label485
	j label484
label485:
	li $t0, 0
	sw $t0, -8932($fp)
	addi $t0, $fp, -56
	sw $t0, -8936($fp)
	lw $t0, -4300($fp)
	sw $t0, -8940($fp)
	li $t0, 4
	lw $t1, -8940($fp)
	mul $t0, $t0, $t1
	sw $t0, -8944($fp)
	lw $t0, -8944($fp)
	lw $t1, -8936($fp)
	add $t0, $t0, $t1
	sw $t0, -8948($fp)
	lw $t0, -8948($fp)
	lw $t1, 0($t0)
	sw $t1, -8952($fp)
	li $t0, 59269
	sw $t0, -8956($fp)
	lw $t1, -8952($fp)
	lw $t2, -8956($fp)
	blt $t1, $t2, label490
	j label491
label490:
	li $t0, 1
	sw $t0, -8932($fp)
label491:
	li $t0, 37419
	sw $t0, -8960($fp)
	li $t0, 3091
	sw $t0, -8964($fp)
	lw $t0, -8960($fp)
	lw $t1, -8964($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8968($fp)
	lw $t1, -8932($fp)
	lw $t2, -8968($fp)
	beq $t1, $t2, label483
	j label484
label483:
	lw $t0, -1060($fp)
	sw $t0, -8972($fp)
	lw $t0, -8972($fp)
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	sw $t0, -8976($fp)
	li $t0, 0
	sw $t0, -8980($fp)
	lw $t0, -2344($fp)
	sw $t0, -8984($fp)
	lw $t0, -1048($fp)
	sw $t0, -8988($fp)
	lw $t0, -8984($fp)
	lw $t1, -8988($fp)
	mul $t0, $t0, $t1
	sw $t0, -8992($fp)
	lw $t1, -8992($fp)
	li $t2, 0
	bne $t1, $t2, label495
	j label497
label497:
	li $t0, 61977
	sw $t0, -8996($fp)
	lw $t1, -8996($fp)
	li $t2, 0
	bne $t1, $t2, label495
	j label496
label495:
	li $t0, 1
	sw $t0, -8980($fp)
label496:
	li $t0, 15171
	sw $t0, -9000($fp)
	li $t0, 0
	lw $t1, -9000($fp)
	sub $t0, $t0, $t1
	sw $t0, -9004($fp)
	li $t0, 0
	lw $t1, -9004($fp)
	sub $t0, $t0, $t1
	sw $t0, -9008($fp)
	li $t0, 0
	sw $t0, -9012($fp)
	addi $t0, $fp, -208
	sw $t0, -9016($fp)
	lw $t0, -2824($fp)
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
	li $t0, 26361
	sw $t0, -9036($fp)
	lw $t1, -9032($fp)
	lw $t2, -9036($fp)
	ble $t1, $t2, label498
	j label499
label498:
	li $t0, 1
	sw $t0, -9012($fp)
label499:
	li $t0, 30997
	sw $t0, -9040($fp)
	addi $sp, $sp, -4
	lw $t0, -8976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9040($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9044($fp)
	addi $sp, $sp, 24
	lw $t0, -9044($fp)
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	sw $t0, -9048($fp)
	lw $t1, -9048($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label493
label492:
	li $t0, 65441
	sw $t0, -9052($fp)
	li $t0, 33488
	sw $t0, -9056($fp)
	lw $t0, -9052($fp)
	lw $t1, -9056($fp)
	sub $t0, $t0, $t1
	sw $t0, -9060($fp)
	lw $t0, -9060($fp)
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	sw $t0, -9064($fp)
	lw $t1, -9064($fp)
	li $t2, 0
	bne $t1, $t2, label500
	j label501
label500:
	li $t0, 21266
	sw $t0, -9068($fp)
	li $t0, 9015
	sw $t0, -9072($fp)
	lw $t0, -9068($fp)
	lw $t1, -9072($fp)
	sub $t0, $t0, $t1
	sw $t0, -9076($fp)
	lw $t0, -700($fp)
	sw $t0, -9080($fp)
	lw $t0, -9076($fp)
	lw $t1, -9080($fp)
	add $t0, $t0, $t1
	sw $t0, -9084($fp)
	li $t0, 7239
	sw $t0, -9088($fp)
	li $t0, 32314
	sw $t0, -9092($fp)
	lw $t0, -2212($fp)
	sw $t0, -9096($fp)
	li $t0, 50040
	sw $t0, -9100($fp)
	li $t0, 41355
	sw $t0, -9104($fp)
	lw $t0, -9100($fp)
	lw $t1, -9104($fp)
	mul $t0, $t0, $t1
	sw $t0, -9108($fp)
	addi $t0, $fp, -80
	sw $t0, -9112($fp)
	lw $t0, -1156($fp)
	sw $t0, -9116($fp)
	li $t0, 4
	lw $t1, -9116($fp)
	mul $t0, $t0, $t1
	sw $t0, -9120($fp)
	lw $t0, -9120($fp)
	lw $t1, -9112($fp)
	add $t0, $t0, $t1
	sw $t0, -9124($fp)
	lw $t0, -9124($fp)
	lw $t1, 0($t0)
	sw $t1, -9128($fp)
	lw $t0, -628($fp)
	sw $t0, -9132($fp)
	lw $t0, -9128($fp)
	lw $t1, -9132($fp)
	sub $t0, $t0, $t1
	sw $t0, -9136($fp)
	addi $sp, $sp, -4
	lw $t0, -9088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9136($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9140($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -9144($fp)
	addi $t0, $fp, -364
	sw $t0, -9148($fp)
	lw $t0, -2260($fp)
	sw $t0, -9152($fp)
	li $t0, 4
	lw $t1, -9152($fp)
	mul $t0, $t0, $t1
	sw $t0, -9156($fp)
	lw $t0, -9156($fp)
	lw $t1, -9148($fp)
	add $t0, $t0, $t1
	sw $t0, -9160($fp)
	lw $t0, -9160($fp)
	lw $t1, 0($t0)
	sw $t1, -9164($fp)
	li $t0, 55278
	sw $t0, -9168($fp)
	lw $t1, -9164($fp)
	lw $t2, -9168($fp)
	beq $t1, $t2, label503
	j label504
label503:
	li $t0, 1
	sw $t0, -9144($fp)
label504:
	lw $t0, -4780($fp)
	sw $t0, -9172($fp)
	lw $t0, -9172($fp)
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -9176($fp)
	lw $t0, -940($fp)
	sw $t0, -9180($fp)
	addi $sp, $sp, -4
	lw $t0, -9084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9180($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9184($fp)
	addi $sp, $sp, 24
	j label502
label501:
	li $t0, 15582
	sw $t0, -9188($fp)
	lw $t0, -9188($fp)
	sw $t0, -9192($fp)
	lw $t0, -9192($fp)
	sw $t0, -9196($fp)
	li $t0, 61069
	sw $t0, -9200($fp)
	lw $t0, -9200($fp)
	sw $t0, -9204($fp)
	lw $t0, -9204($fp)
	sw $t0, -9208($fp)
	li $t0, 2479
	sw $t0, -9212($fp)
	lw $t0, -9212($fp)
	sw $t0, -9216($fp)
	lw $t0, -9216($fp)
	sw $t0, -9220($fp)
	li $t0, 65040
	sw $t0, -9224($fp)
	lw $t0, -9224($fp)
	sw $t0, -9228($fp)
	lw $t0, -9228($fp)
	sw $t0, -9232($fp)
	li $t0, 21546
	sw $t0, -9236($fp)
	lw $t0, -9236($fp)
	sw $t0, -9240($fp)
	lw $t0, -9240($fp)
	sw $t0, -9244($fp)
	li $t0, 21708
	sw $t0, -9248($fp)
	lw $t0, -9248($fp)
	sw $t0, -9252($fp)
	lw $t0, -9252($fp)
	sw $t0, -9256($fp)
	addi $t0, $fp, -448
	sw $t0, -9260($fp)
	li $t0, 0
	sw $t0, -9264($fp)
	addi $t0, $fp, -444
	sw $t0, -9268($fp)
	li $t0, 0
	sw $t0, -9272($fp)
	li $t0, 4
	lw $t1, -9272($fp)
	mul $t0, $t0, $t1
	sw $t0, -9276($fp)
	lw $t0, -9276($fp)
	lw $t1, -9268($fp)
	add $t0, $t0, $t1
	sw $t0, -9280($fp)
	lw $t0, -9280($fp)
	lw $t1, 0($t0)
	sw $t1, -9284($fp)
	li $t0, 52355
	sw $t0, -9288($fp)
	lw $t1, -9284($fp)
	lw $t2, -9288($fp)
	beq $t1, $t2, label507
	j label506
label507:
	li $t0, 25234
	sw $t0, -9292($fp)
	li $t0, 43167
	sw $t0, -9296($fp)
	lw $t1, -9292($fp)
	lw $t2, -9296($fp)
	blt $t1, $t2, label505
	j label506
label505:
	li $t0, 1
	sw $t0, -9264($fp)
label506:
	li $t0, 4
	lw $t1, -9264($fp)
	mul $t0, $t0, $t1
	sw $t0, -9300($fp)
	lw $t0, -9300($fp)
	lw $t1, -9260($fp)
	add $t0, $t0, $t1
	sw $t0, -9304($fp)
	lw $t0, -9304($fp)
	lw $t1, 0($t0)
	sw $t1, -9308($fp)
	li $t0, 0
	sw $t0, -9312($fp)
	lw $t0, -2836($fp)
	sw $t0, -9316($fp)
	lw $t0, -9192($fp)
	sw $t0, -9320($fp)
	lw $t0, -9316($fp)
	lw $t1, -9320($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9324($fp)
	li $t0, 7259
	sw $t0, -9328($fp)
	lw $t0, -9324($fp)
	lw $t1, -9328($fp)
	mul $t0, $t0, $t1
	sw $t0, -9332($fp)
	li $t0, 0
	sw $t0, -9336($fp)
	li $t0, 55098
	sw $t0, -9340($fp)
	lw $t1, -9340($fp)
	li $t2, 0
	bne $t1, $t2, label513
	j label512
label512:
	li $t0, 1
	sw $t0, -9336($fp)
label513:
	lw $t0, -9332($fp)
	lw $t1, -9336($fp)
	sub $t0, $t0, $t1
	sw $t0, -9344($fp)
	lw $t1, -9344($fp)
	li $t2, 0
	bne $t1, $t2, label511
	j label509
label511:
	li $t0, 8100
	sw $t0, -9348($fp)
	lw $t0, -2032($fp)
	sw $t0, -9352($fp)
	lw $t0, -9348($fp)
	lw $t1, -9352($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9356($fp)
	lw $t0, 20($fp)
	sw $t0, -9360($fp)
	lw $t1, -9356($fp)
	lw $t2, -9360($fp)
	bne $t1, $t2, label510
	j label509
label510:
	addi $t0, $fp, -280
	sw $t0, -9364($fp)
	lw $t0, -3520($fp)
	sw $t0, -9368($fp)
	lw $t0, 8($fp)
	sw $t0, -9372($fp)
	lw $t0, -9368($fp)
	lw $t1, -9372($fp)
	sub $t0, $t0, $t1
	sw $t0, -9376($fp)
	li $t0, 4
	lw $t1, -9376($fp)
	mul $t0, $t0, $t1
	sw $t0, -9380($fp)
	lw $t0, -9380($fp)
	lw $t1, -9364($fp)
	add $t0, $t0, $t1
	sw $t0, -9384($fp)
	lw $t0, -9384($fp)
	lw $t1, 0($t0)
	sw $t1, -9388($fp)
	lw $t1, -9388($fp)
	li $t2, 0
	bne $t1, $t2, label508
	j label509
label508:
	li $t0, 1
	sw $t0, -9312($fp)
label509:
	li $t0, 0
	sw $t0, -9392($fp)
	li $t0, 29480
	sw $t0, -9396($fp)
	lw $t0, -2800($fp)
	sw $t0, -9400($fp)
	lw $t0, -9396($fp)
	lw $t1, -9400($fp)
	sub $t0, $t0, $t1
	sw $t0, -9404($fp)
	lw $t1, -9404($fp)
	li $t2, 0
	bne $t1, $t2, label517
	j label516
label517:
	li $t0, 48831
	sw $t0, -9408($fp)
	lw $t1, -9408($fp)
	li $t2, 0
	bne $t1, $t2, label514
	j label516
label516:
	lw $t0, -9204($fp)
	sw $t0, -9412($fp)
	li $t0, 0
	lw $t1, -9412($fp)
	sub $t0, $t0, $t1
	sw $t0, -9416($fp)
	lw $t1, -9416($fp)
	li $t2, 0
	bne $t1, $t2, label514
	j label515
label514:
	li $t0, 1
	sw $t0, -9392($fp)
label515:
	lw $t0, -9392($fp)
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	sw $t0, -9420($fp)
	li $t0, 0
	sw $t0, -9424($fp)
	lw $t0, -652($fp)
	sw $t0, -9428($fp)
	lw $t1, -9428($fp)
	li $t2, 0
	bne $t1, $t2, label519
	j label518
label518:
	li $t0, 1
	sw $t0, -9424($fp)
label519:
	li $t0, 0
	sw $t0, -9432($fp)
	li $t0, 0
	sw $t0, -9436($fp)
	lw $t0, -4408($fp)
	sw $t0, -9440($fp)
	li $t0, 6345
	sw $t0, -9444($fp)
	lw $t0, -9440($fp)
	lw $t1, -9444($fp)
	add $t0, $t0, $t1
	sw $t0, -9448($fp)
	lw $t1, -9448($fp)
	li $t2, 0
	bne $t1, $t2, label522
	j label524
label524:
	lw $t0, -2824($fp)
	sw $t0, -9452($fp)
	lw $t1, -9452($fp)
	li $t2, 0
	bne $t1, $t2, label522
	j label523
label522:
	li $t0, 1
	sw $t0, -9436($fp)
label523:
	addi $t0, $fp, -80
	sw $t0, -9456($fp)
	lw $t0, -2812($fp)
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
	li $t0, 14292
	sw $t0, -9476($fp)
	lw $t0, -2188($fp)
	sw $t0, -9480($fp)
	lw $t0, -9476($fp)
	lw $t1, -9480($fp)
	mul $t0, $t0, $t1
	sw $t0, -9484($fp)
	lw $t0, -712($fp)
	sw $t0, -9488($fp)
	lw $t0, -9484($fp)
	lw $t1, -9488($fp)
	mul $t0, $t0, $t1
	sw $t0, -9492($fp)
	lw $t0, -2020($fp)
	sw $t0, -9496($fp)
	li $t0, 0
	lw $t1, -9496($fp)
	sub $t0, $t0, $t1
	sw $t0, -9500($fp)
	lw $t0, -2056($fp)
	sw $t0, -9504($fp)
	li $t0, 45519
	sw $t0, -9508($fp)
	lw $t0, -9504($fp)
	lw $t1, -9508($fp)
	mul $t0, $t0, $t1
	sw $t0, -9512($fp)
	li $t0, 32572
	sw $t0, -9516($fp)
	lw $t0, -9512($fp)
	lw $t1, -9516($fp)
	add $t0, $t0, $t1
	sw $t0, -9520($fp)
	addi $sp, $sp, -4
	lw $t0, -9436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9520($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9524($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -9528($fp)
	li $t0, 13576
	sw $t0, -9532($fp)
	li $t0, 8314
	sw $t0, -9536($fp)
	lw $t0, -9532($fp)
	lw $t1, -9536($fp)
	add $t0, $t0, $t1
	sw $t0, -9540($fp)
	lw $t1, -9540($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label526
label527:
	li $t0, 44284
	sw $t0, -9544($fp)
	lw $t1, -9544($fp)
	li $t2, 0
	bne $t1, $t2, label525
	j label526
label525:
	li $t0, 1
	sw $t0, -9528($fp)
label526:
	lw $t0, -2860($fp)
	sw $t0, -9548($fp)
	li $t0, 41805
	sw $t0, -9552($fp)
	lw $t0, -9552($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -9556($fp)
	lw $t0, -2032($fp)
	sw $t0, -9560($fp)
	lw $t0, -9560($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -9564($fp)
	li $t0, 0
	sw $t0, -9568($fp)
	li $t0, 0
	sw $t0, -9572($fp)
	li $t0, 0
	sw $t0, -9576($fp)
	lw $t0, -4792($fp)
	sw $t0, -9580($fp)
	lw $t0, -9252($fp)
	sw $t0, -9584($fp)
	lw $t1, -9580($fp)
	lw $t2, -9584($fp)
	beq $t1, $t2, label532
	j label533
label532:
	li $t0, 1
	sw $t0, -9576($fp)
label533:
	li $t0, 12781
	sw $t0, -9588($fp)
	lw $t1, -9576($fp)
	lw $t2, -9588($fp)
	bne $t1, $t2, label530
	j label531
label530:
	li $t0, 1
	sw $t0, -9572($fp)
label531:
	li $t0, 0
	sw $t0, -9592($fp)
	lw $t0, -712($fp)
	sw $t0, -9596($fp)
	lw $t0, -3256($fp)
	sw $t0, -9600($fp)
	lw $t0, -9596($fp)
	lw $t1, -9600($fp)
	mul $t0, $t0, $t1
	sw $t0, -9604($fp)
	lw $t1, -9604($fp)
	li $t2, 0
	bne $t1, $t2, label534
	j label536
label536:
	lw $t0, -2356($fp)
	sw $t0, -9608($fp)
	lw $t1, -9608($fp)
	li $t2, 0
	bne $t1, $t2, label534
	j label535
label534:
	li $t0, 1
	sw $t0, -9592($fp)
label535:
	li $t0, 0
	sw $t0, -9612($fp)
	lw $t0, -3748($fp)
	sw $t0, -9616($fp)
	lw $t0, -4756($fp)
	sw $t0, -9620($fp)
	lw $t0, -9616($fp)
	lw $t1, -9620($fp)
	sub $t0, $t0, $t1
	sw $t0, -9624($fp)
	lw $t1, -9624($fp)
	li $t2, 0
	bne $t1, $t2, label539
	j label538
label539:
	li $t0, 63530
	sw $t0, -9628($fp)
	lw $t1, -9628($fp)
	li $t2, 0
	bne $t1, $t2, label537
	j label538
label537:
	li $t0, 1
	sw $t0, -9612($fp)
label538:
	lw $t0, -2848($fp)
	sw $t0, -9632($fp)
	lw $t0, -4732($fp)
	sw $t0, -9636($fp)
	lw $t0, -9632($fp)
	lw $t1, -9636($fp)
	mul $t0, $t0, $t1
	sw $t0, -9640($fp)
	li $t0, 57050
	sw $t0, -9644($fp)
	lw $t0, -9640($fp)
	lw $t1, -9644($fp)
	mul $t0, $t0, $t1
	sw $t0, -9648($fp)
	li $t0, 0
	sw $t0, -9652($fp)
	li $t0, 476
	sw $t0, -9656($fp)
	lw $t0, -4756($fp)
	sw $t0, -9660($fp)
	lw $t0, -9656($fp)
	lw $t1, -9660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9664($fp)
	li $t0, 56291
	sw $t0, -9668($fp)
	lw $t1, -9664($fp)
	lw $t2, -9668($fp)
	bne $t1, $t2, label540
	j label541
label540:
	li $t0, 1
	sw $t0, -9652($fp)
label541:
	lw $t0, -1468($fp)
	sw $t0, -9672($fp)
	li $t0, 0
	lw $t1, -9672($fp)
	sub $t0, $t0, $t1
	sw $t0, -9676($fp)
	li $t0, 0
	lw $t1, -9676($fp)
	sub $t0, $t0, $t1
	sw $t0, -9680($fp)
	li $t0, 0
	sw $t0, -9684($fp)
	lw $t0, -2836($fp)
	sw $t0, -9688($fp)
	lw $t1, -9688($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label545
label545:
	li $t0, 15695
	sw $t0, -9692($fp)
	lw $t1, -9692($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label544
label544:
	lw $t0, -2824($fp)
	sw $t0, -9696($fp)
	lw $t1, -9696($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label543
label542:
	li $t0, 1
	sw $t0, -9684($fp)
label543:
	li $t0, 0
	sw $t0, -9700($fp)
	li $t0, 10734
	sw $t0, -9704($fp)
	li $t0, 6250
	sw $t0, -9708($fp)
	lw $t0, -9704($fp)
	lw $t1, -9708($fp)
	mul $t0, $t0, $t1
	sw $t0, -9712($fp)
	lw $t1, -9712($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label548
label548:
	lw $t0, -9240($fp)
	sw $t0, -9716($fp)
	lw $t1, -9716($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label547
label546:
	li $t0, 1
	sw $t0, -9700($fp)
label547:
	addi $sp, $sp, -4
	lw $t0, -9648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9700($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9720($fp)
	addi $sp, $sp, 24
	li $t0, 32790
	sw $t0, -9724($fp)
	lw $t0, -9720($fp)
	lw $t1, -9724($fp)
	mul $t0, $t0, $t1
	sw $t0, -9728($fp)
	li $t0, 0
	sw $t0, -9732($fp)
	lw $t0, -9216($fp)
	sw $t0, -9736($fp)
	li $t0, 47743
	sw $t0, -9740($fp)
	lw $t0, -9736($fp)
	lw $t1, -9740($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9744($fp)
	lw $t0, -9228($fp)
	sw $t0, -9748($fp)
	lw $t1, -9744($fp)
	lw $t2, -9748($fp)
	ble $t1, $t2, label549
	j label550
label549:
	li $t0, 1
	sw $t0, -9732($fp)
label550:
	addi $sp, $sp, -4
	lw $t0, -9572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9732($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9752($fp)
	addi $sp, $sp, 24
	lw $t0, -2836($fp)
	sw $t0, -9756($fp)
	lw $t1, -9752($fp)
	lw $t2, -9756($fp)
	beq $t1, $t2, label528
	j label529
label528:
	li $t0, 1
	sw $t0, -9568($fp)
label529:
	addi $sp, $sp, -4
	lw $t0, -9528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9568($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9760($fp)
	addi $sp, $sp, 24
	lw $t0, -2824($fp)
	sw $t0, -9764($fp)
	lw $t0, -9760($fp)
	lw $t1, -9764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9768($fp)
	lw $t1, -9524($fp)
	lw $t2, -9768($fp)
	bne $t1, $t2, label520
	j label521
label520:
	li $t0, 1
	sw $t0, -9432($fp)
label521:
label502:
	j label494
label493:
	li $t0, 0
	sw $t0, -9772($fp)
	li $t0, 13080
	sw $t0, -9776($fp)
	lw $t0, -2872($fp)
	sw $t0, -9780($fp)
	lw $t0, -9776($fp)
	lw $t1, -9780($fp)
	mul $t0, $t0, $t1
	sw $t0, -9784($fp)
	lw $t0, -4336($fp)
	sw $t0, -9788($fp)
	lw $t0, -9784($fp)
	lw $t1, -9788($fp)
	mul $t0, $t0, $t1
	sw $t0, -9792($fp)
	li $t0, 29861
	sw $t0, -9796($fp)
	lw $t1, -9792($fp)
	lw $t2, -9796($fp)
	beq $t1, $t2, label554
	j label553
label554:
	li $t0, 0
	sw $t0, -9800($fp)
	lw $t0, -2884($fp)
	sw $t0, -9804($fp)
	li $t0, 457
	sw $t0, -9808($fp)
	lw $t1, -9804($fp)
	lw $t2, -9808($fp)
	beq $t1, $t2, label555
	j label556
label555:
	li $t0, 1
	sw $t0, -9800($fp)
label556:
	li $t0, 33620
	sw $t0, -9812($fp)
	lw $t1, -9800($fp)
	lw $t2, -9812($fp)
	bne $t1, $t2, label551
	j label553
label553:
	li $t0, 56587
	sw $t0, -9816($fp)
	lw $t0, -1480($fp)
	sw $t0, -9820($fp)
	li $t0, 0
	sw $t0, -9824($fp)
	li $t0, 31712
	sw $t0, -9828($fp)
	li $t0, 0
	lw $t1, -9828($fp)
	sub $t0, $t0, $t1
	sw $t0, -9832($fp)
	addi $t0, $fp, -312
	sw $t0, -9836($fp)
	lw $t0, -2260($fp)
	sw $t0, -9840($fp)
	li $t0, 4
	lw $t1, -9840($fp)
	mul $t0, $t0, $t1
	sw $t0, -9844($fp)
	lw $t0, -9844($fp)
	lw $t1, -9836($fp)
	add $t0, $t0, $t1
	sw $t0, -9848($fp)
	lw $t0, -9848($fp)
	lw $t1, 0($t0)
	sw $t1, -9852($fp)
	lw $t0, -3508($fp)
	sw $t0, -9856($fp)
	lw $t0, -9852($fp)
	lw $t1, -9856($fp)
	sub $t0, $t0, $t1
	sw $t0, -9860($fp)
	li $t0, 0
	sw $t0, -9864($fp)
	lw $t0, -4264($fp)
	sw $t0, -9868($fp)
	lw $t0, -1024($fp)
	sw $t0, -9872($fp)
	lw $t1, -9868($fp)
	lw $t2, -9872($fp)
	bne $t1, $t2, label559
	j label560
label559:
	li $t0, 1
	sw $t0, -9864($fp)
label560:
	li $t0, 24015
	sw $t0, -9876($fp)
	lw $t0, -9876($fp)
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	sw $t0, -9880($fp)
	lw $t0, -4768($fp)
	sw $t0, -9884($fp)
	lw $t0, -9884($fp)
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	sw $t0, -9888($fp)
	addi $sp, $sp, -4
	lw $t0, -9832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9888($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9892($fp)
	addi $sp, $sp, 24
	li $t0, 26109
	sw $t0, -9896($fp)
	lw $t1, -9892($fp)
	lw $t2, -9896($fp)
	bge $t1, $t2, label557
	j label558
label557:
	li $t0, 1
	sw $t0, -9824($fp)
label558:
	li $t0, 0
	sw $t0, -9900($fp)
	lw $t0, -2920($fp)
	sw $t0, -9904($fp)
	lw $t1, -9904($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label561
label561:
	li $t0, 1
	sw $t0, -9900($fp)
label562:
	lw $t0, -4756($fp)
	sw $t0, -9908($fp)
	li $t0, 0
	lw $t1, -9908($fp)
	sub $t0, $t0, $t1
	sw $t0, -9912($fp)
	lw $t0, -4372($fp)
	sw $t0, -9916($fp)
	li $t0, 48417
	sw $t0, -9920($fp)
	lw $t0, -9916($fp)
	lw $t1, -9920($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9924($fp)
	li $t0, 46126
	sw $t0, -9928($fp)
	lw $t0, -9924($fp)
	lw $t1, -9928($fp)
	sub $t0, $t0, $t1
	sw $t0, -9932($fp)
	li $t0, 0
	sw $t0, -9936($fp)
	li $t0, 0
	sw $t0, -9940($fp)
	li $t0, 58854
	sw $t0, -9944($fp)
	li $t0, 38026
	sw $t0, -9948($fp)
	lw $t1, -9944($fp)
	lw $t2, -9948($fp)
	ble $t1, $t2, label565
	j label566
label565:
	li $t0, 1
	sw $t0, -9940($fp)
label566:
	li $t0, 60071
	sw $t0, -9952($fp)
	lw $t1, -9940($fp)
	lw $t2, -9952($fp)
	beq $t1, $t2, label563
	j label564
label563:
	li $t0, 1
	sw $t0, -9936($fp)
label564:
	li $t0, 52812
	sw $t0, -9956($fp)
	li $t0, 0
	sw $t0, -9960($fp)
	lw $t0, -2212($fp)
	sw $t0, -9964($fp)
	lw $t0, -4732($fp)
	sw $t0, -9968($fp)
	lw $t1, -9964($fp)
	lw $t2, -9968($fp)
	beq $t1, $t2, label567
	j label568
label567:
	li $t0, 1
	sw $t0, -9960($fp)
label568:
	li $t0, 0
	sw $t0, -9972($fp)
	li $t0, 60394
	sw $t0, -9976($fp)
	lw $t0, -4684($fp)
	sw $t0, -9980($fp)
	lw $t0, -9976($fp)
	lw $t1, -9980($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9984($fp)
	lw $t0, -3844($fp)
	sw $t0, -9988($fp)
	lw $t1, -9984($fp)
	lw $t2, -9988($fp)
	ble $t1, $t2, label569
	j label570
label569:
	li $t0, 1
	sw $t0, -9972($fp)
label570:
	addi $sp, $sp, -4
	lw $t0, -9932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9972($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9992($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -9996($fp)
	lw $t0, -2896($fp)
	sw $t0, -10000($fp)
	lw $t0, -2908($fp)
	sw $t0, -10004($fp)
	lw $t1, -10000($fp)
	lw $t2, -10004($fp)
	beq $t1, $t2, label573
	j label572
label573:
	lw $t0, -4048($fp)
	sw $t0, -10008($fp)
	lw $t1, -10008($fp)
	li $t2, 0
	bne $t1, $t2, label571
	j label572
label571:
	li $t0, 1
	sw $t0, -9996($fp)
label572:
	lw $t0, -2920($fp)
	sw $t0, -10012($fp)
	addi $sp, $sp, -4
	lw $t0, -9900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10012($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10016($fp)
	addi $sp, $sp, 24
	lw $t0, -4768($fp)
	sw $t0, -10020($fp)
	addi $sp, $sp, -4
	lw $t0, -9816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10020($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10024($fp)
	addi $sp, $sp, 24
	lw $t1, -10024($fp)
	li $t2, 0
	bne $t1, $t2, label551
	j label552
label551:
	li $t0, 1
	sw $t0, -9772($fp)
label552:
	lw $ra, -4($fp)
	lw $v0, -9772($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label494:
	j label482
label484:
label457:
	j label435
label437:
	j label392
label394:
label126:
	j label123
label122:
	li $t0, 0
	sw $t0, -10028($fp)
	li $t0, 46005
	sw $t0, -10032($fp)
	li $t0, 32454
	sw $t0, -10036($fp)
	lw $t0, -10032($fp)
	lw $t1, -10036($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10040($fp)
	lw $t1, -10040($fp)
	li $t2, 0
	bne $t1, $t2, label577
	j label576
label577:
	li $t0, 38795
	sw $t0, -10044($fp)
	li $t0, 56739
	sw $t0, -10048($fp)
	lw $t0, -10044($fp)
	lw $t1, -10048($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10052($fp)
	lw $t0, -3892($fp)
	sw $t0, -10056($fp)
	lw $t0, -10052($fp)
	lw $t1, -10056($fp)
	add $t0, $t0, $t1
	sw $t0, -10060($fp)
	lw $t1, -10060($fp)
	li $t2, 0
	bne $t1, $t2, label574
	j label576
label576:
	li $t0, 38705
	sw $t0, -10064($fp)
	li $t0, 54490
	sw $t0, -10068($fp)
	lw $t0, -10064($fp)
	lw $t1, -10068($fp)
	add $t0, $t0, $t1
	sw $t0, -10072($fp)
	lw $t0, -3520($fp)
	sw $t0, -10076($fp)
	lw $t1, -10072($fp)
	lw $t2, -10076($fp)
	bge $t1, $t2, label578
	j label575
label578:
	li $t0, 57215
	sw $t0, -10080($fp)
	lw $t1, -10080($fp)
	li $t2, 0
	bne $t1, $t2, label575
	j label574
label574:
	li $t0, 1
	sw $t0, -10028($fp)
label575:
label123:
label579:
	li $t0, 29460
	sw $t0, -10084($fp)
	lw $t0, -2020($fp)
	sw $t0, -10088($fp)
	lw $t0, -10084($fp)
	lw $t1, -10088($fp)
	mul $t0, $t0, $t1
	sw $t0, -10092($fp)
	lw $t0, -3124($fp)
	sw $t0, -10096($fp)
	lw $t0, -10092($fp)
	lw $t1, -10096($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10100($fp)
	lw $t0, -3508($fp)
	sw $t0, -10104($fp)
	lw $t0, -10100($fp)
	lw $t1, -10104($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10108($fp)
	li $t0, 0
	sw $t0, -10112($fp)
	lw $t0, -3136($fp)
	sw $t0, -10116($fp)
	lw $t1, -10116($fp)
	li $t2, 0
	bne $t1, $t2, label583
	j label582
label582:
	li $t0, 1
	sw $t0, -10112($fp)
label583:
	lw $t0, -3520($fp)
	sw $t0, -10120($fp)
	li $t0, 27454
	sw $t0, -10124($fp)
	lw $t0, -4744($fp)
	sw $t0, -10128($fp)
	lw $t0, -10124($fp)
	lw $t1, -10128($fp)
	sub $t0, $t0, $t1
	sw $t0, -10132($fp)
	lw $t0, -3160($fp)
	sw $t0, -10136($fp)
	lw $t0, 8($fp)
	sw $t0, -10140($fp)
	lw $t0, -10136($fp)
	lw $t1, -10140($fp)
	add $t0, $t0, $t1
	sw $t0, -10144($fp)
	lw $t0, -2884($fp)
	sw $t0, -10148($fp)
	li $t0, 24469
	sw $t0, -10152($fp)
	lw $t0, -2212($fp)
	sw $t0, -10156($fp)
	lw $t0, -10152($fp)
	lw $t1, -10156($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10160($fp)
	lw $t0, -3148($fp)
	sw $t0, -10164($fp)
	lw $t0, -10160($fp)
	lw $t1, -10164($fp)
	sub $t0, $t0, $t1
	sw $t0, -10168($fp)
	addi $sp, $sp, -4
	lw $t0, -10120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10168($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10172($fp)
	addi $sp, $sp, 24
	lw $t0, -2848($fp)
	sw $t0, -10176($fp)
	lw $t0, -10172($fp)
	lw $t1, -10176($fp)
	add $t0, $t0, $t1
	sw $t0, -10180($fp)
	addi $t0, $fp, -400
	sw $t0, -10184($fp)
	lw $t0, -4804($fp)
	sw $t0, -10188($fp)
	li $t0, 4
	lw $t1, -10188($fp)
	mul $t0, $t0, $t1
	sw $t0, -10192($fp)
	lw $t0, -10192($fp)
	lw $t1, -10184($fp)
	add $t0, $t0, $t1
	sw $t0, -10196($fp)
	lw $t0, -10196($fp)
	lw $t1, 0($t0)
	sw $t1, -10200($fp)
	li $t0, 0
	sw $t0, -10204($fp)
	lw $t0, -4408($fp)
	sw $t0, -10208($fp)
	lw $t0, -1072($fp)
	sw $t0, -10212($fp)
	lw $t1, -10208($fp)
	lw $t2, -10212($fp)
	ble $t1, $t2, label584
	j label585
label584:
	li $t0, 1
	sw $t0, -10204($fp)
label585:
	li $t0, 46005
	sw $t0, -10216($fp)
	addi $t0, $fp, -208
	sw $t0, -10220($fp)
	lw $t0, -2224($fp)
	sw $t0, -10224($fp)
	li $t0, 4
	lw $t1, -10224($fp)
	mul $t0, $t0, $t1
	sw $t0, -10228($fp)
	lw $t0, -10228($fp)
	lw $t1, -10220($fp)
	add $t0, $t0, $t1
	sw $t0, -10232($fp)
	lw $t0, -10232($fp)
	lw $t1, 0($t0)
	sw $t1, -10236($fp)
	addi $sp, $sp, -4
	lw $t0, -10180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10236($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10240($fp)
	addi $sp, $sp, 24
	lw $t0, -10112($fp)
	lw $t1, -10240($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10244($fp)
	li $t0, 0
	lw $t1, -10244($fp)
	sub $t0, $t0, $t1
	sw $t0, -10248($fp)
	lw $t0, -10108($fp)
	lw $t1, -10248($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10252($fp)
	lw $t1, -10252($fp)
	li $t2, 0
	bne $t1, $t2, label580
	j label581
label580:
	li $t0, 58786
	sw $t0, -10328($fp)
	lw $t0, -10328($fp)
	sw $t0, -10332($fp)
	lw $t0, -10332($fp)
	sw $t0, -10336($fp)
	li $t0, 739
	sw $t0, -10340($fp)
	lw $t0, -10340($fp)
	sw $t0, -10344($fp)
	lw $t0, -10344($fp)
	sw $t0, -10348($fp)
	li $t0, 41031
	sw $t0, -10352($fp)
	lw $t0, -10352($fp)
	sw $t0, -10356($fp)
	lw $t0, -10356($fp)
	sw $t0, -10360($fp)
	li $t0, 1564
	sw $t0, -10364($fp)
	addi $t0, $fp, -10284
	sw $t0, -10368($fp)
	li $t0, 0
	sw $t0, -10372($fp)
	lw $t0, -10372($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10376($fp)
	lw $t0, -10368($fp)
	lw $t1, -10376($fp)
	add $t0, $t0, $t1
	sw $t0, -10380($fp)
	lw $t0, -10364($fp)
	lw $t1, -10380($fp)
	sw $t0, 0($t1)
	lw $t0, -10380($fp)
	lw $t1, 0($t0)
	sw $t1, -10384($fp)
	li $t0, 45023
	sw $t0, -10388($fp)
	addi $t0, $fp, -10284
	sw $t0, -10392($fp)
	li $t0, 1
	sw $t0, -10396($fp)
	lw $t0, -10396($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10400($fp)
	lw $t0, -10392($fp)
	lw $t1, -10400($fp)
	add $t0, $t0, $t1
	sw $t0, -10404($fp)
	lw $t0, -10388($fp)
	lw $t1, -10404($fp)
	sw $t0, 0($t1)
	lw $t0, -10404($fp)
	lw $t1, 0($t0)
	sw $t1, -10408($fp)
	li $t0, 54111
	sw $t0, -10412($fp)
	addi $t0, $fp, -10284
	sw $t0, -10416($fp)
	li $t0, 2
	sw $t0, -10420($fp)
	lw $t0, -10420($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10424($fp)
	lw $t0, -10416($fp)
	lw $t1, -10424($fp)
	add $t0, $t0, $t1
	sw $t0, -10428($fp)
	lw $t0, -10412($fp)
	lw $t1, -10428($fp)
	sw $t0, 0($t1)
	lw $t0, -10428($fp)
	lw $t1, 0($t0)
	sw $t1, -10432($fp)
	li $t0, 31425
	sw $t0, -10436($fp)
	addi $t0, $fp, -10284
	sw $t0, -10440($fp)
	li $t0, 3
	sw $t0, -10444($fp)
	lw $t0, -10444($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10448($fp)
	lw $t0, -10440($fp)
	lw $t1, -10448($fp)
	add $t0, $t0, $t1
	sw $t0, -10452($fp)
	lw $t0, -10436($fp)
	lw $t1, -10452($fp)
	sw $t0, 0($t1)
	lw $t0, -10452($fp)
	lw $t1, 0($t0)
	sw $t1, -10456($fp)
	li $t0, 45480
	sw $t0, -10460($fp)
	addi $t0, $fp, -10284
	sw $t0, -10464($fp)
	li $t0, 4
	sw $t0, -10468($fp)
	lw $t0, -10468($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10472($fp)
	lw $t0, -10464($fp)
	lw $t1, -10472($fp)
	add $t0, $t0, $t1
	sw $t0, -10476($fp)
	lw $t0, -10460($fp)
	lw $t1, -10476($fp)
	sw $t0, 0($t1)
	lw $t0, -10476($fp)
	lw $t1, 0($t0)
	sw $t1, -10480($fp)
	li $t0, 22196
	sw $t0, -10484($fp)
	addi $t0, $fp, -10284
	sw $t0, -10488($fp)
	li $t0, 5
	sw $t0, -10492($fp)
	lw $t0, -10492($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10496($fp)
	lw $t0, -10488($fp)
	lw $t1, -10496($fp)
	add $t0, $t0, $t1
	sw $t0, -10500($fp)
	lw $t0, -10484($fp)
	lw $t1, -10500($fp)
	sw $t0, 0($t1)
	lw $t0, -10500($fp)
	lw $t1, 0($t0)
	sw $t1, -10504($fp)
	li $t0, 26284
	sw $t0, -10508($fp)
	addi $t0, $fp, -10284
	sw $t0, -10512($fp)
	li $t0, 6
	sw $t0, -10516($fp)
	lw $t0, -10516($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10520($fp)
	lw $t0, -10512($fp)
	lw $t1, -10520($fp)
	add $t0, $t0, $t1
	sw $t0, -10524($fp)
	lw $t0, -10508($fp)
	lw $t1, -10524($fp)
	sw $t0, 0($t1)
	lw $t0, -10524($fp)
	lw $t1, 0($t0)
	sw $t1, -10528($fp)
	li $t0, 32756
	sw $t0, -10532($fp)
	addi $t0, $fp, -10284
	sw $t0, -10536($fp)
	li $t0, 7
	sw $t0, -10540($fp)
	lw $t0, -10540($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10544($fp)
	lw $t0, -10536($fp)
	lw $t1, -10544($fp)
	add $t0, $t0, $t1
	sw $t0, -10548($fp)
	lw $t0, -10532($fp)
	lw $t1, -10548($fp)
	sw $t0, 0($t1)
	lw $t0, -10548($fp)
	lw $t1, 0($t0)
	sw $t1, -10552($fp)
	li $t0, 15514
	sw $t0, -10556($fp)
	lw $t0, -10556($fp)
	sw $t0, -10560($fp)
	lw $t0, -10560($fp)
	sw $t0, -10564($fp)
	li $t0, 64310
	sw $t0, -10568($fp)
	addi $t0, $fp, -10324
	sw $t0, -10572($fp)
	li $t0, 0
	sw $t0, -10576($fp)
	lw $t0, -10576($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10580($fp)
	lw $t0, -10572($fp)
	lw $t1, -10580($fp)
	add $t0, $t0, $t1
	sw $t0, -10584($fp)
	lw $t0, -10568($fp)
	lw $t1, -10584($fp)
	sw $t0, 0($t1)
	lw $t0, -10584($fp)
	lw $t1, 0($t0)
	sw $t1, -10588($fp)
	li $t0, 27291
	sw $t0, -10592($fp)
	addi $t0, $fp, -10324
	sw $t0, -10596($fp)
	li $t0, 1
	sw $t0, -10600($fp)
	lw $t0, -10600($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10604($fp)
	lw $t0, -10596($fp)
	lw $t1, -10604($fp)
	add $t0, $t0, $t1
	sw $t0, -10608($fp)
	lw $t0, -10592($fp)
	lw $t1, -10608($fp)
	sw $t0, 0($t1)
	lw $t0, -10608($fp)
	lw $t1, 0($t0)
	sw $t1, -10612($fp)
	li $t0, 63931
	sw $t0, -10616($fp)
	addi $t0, $fp, -10324
	sw $t0, -10620($fp)
	li $t0, 2
	sw $t0, -10624($fp)
	lw $t0, -10624($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10628($fp)
	lw $t0, -10620($fp)
	lw $t1, -10628($fp)
	add $t0, $t0, $t1
	sw $t0, -10632($fp)
	lw $t0, -10616($fp)
	lw $t1, -10632($fp)
	sw $t0, 0($t1)
	lw $t0, -10632($fp)
	lw $t1, 0($t0)
	sw $t1, -10636($fp)
	li $t0, 44900
	sw $t0, -10640($fp)
	addi $t0, $fp, -10324
	sw $t0, -10644($fp)
	li $t0, 3
	sw $t0, -10648($fp)
	lw $t0, -10648($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10652($fp)
	lw $t0, -10644($fp)
	lw $t1, -10652($fp)
	add $t0, $t0, $t1
	sw $t0, -10656($fp)
	lw $t0, -10640($fp)
	lw $t1, -10656($fp)
	sw $t0, 0($t1)
	lw $t0, -10656($fp)
	lw $t1, 0($t0)
	sw $t1, -10660($fp)
	li $t0, 51307
	sw $t0, -10664($fp)
	addi $t0, $fp, -10324
	sw $t0, -10668($fp)
	li $t0, 4
	sw $t0, -10672($fp)
	lw $t0, -10672($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10676($fp)
	lw $t0, -10668($fp)
	lw $t1, -10676($fp)
	add $t0, $t0, $t1
	sw $t0, -10680($fp)
	lw $t0, -10664($fp)
	lw $t1, -10680($fp)
	sw $t0, 0($t1)
	lw $t0, -10680($fp)
	lw $t1, 0($t0)
	sw $t1, -10684($fp)
	li $t0, 30108
	sw $t0, -10688($fp)
	addi $t0, $fp, -10324
	sw $t0, -10692($fp)
	li $t0, 5
	sw $t0, -10696($fp)
	lw $t0, -10696($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10700($fp)
	lw $t0, -10692($fp)
	lw $t1, -10700($fp)
	add $t0, $t0, $t1
	sw $t0, -10704($fp)
	lw $t0, -10688($fp)
	lw $t1, -10704($fp)
	sw $t0, 0($t1)
	lw $t0, -10704($fp)
	lw $t1, 0($t0)
	sw $t1, -10708($fp)
	li $t0, 5473
	sw $t0, -10712($fp)
	addi $t0, $fp, -10324
	sw $t0, -10716($fp)
	li $t0, 6
	sw $t0, -10720($fp)
	lw $t0, -10720($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10724($fp)
	lw $t0, -10716($fp)
	lw $t1, -10724($fp)
	add $t0, $t0, $t1
	sw $t0, -10728($fp)
	lw $t0, -10712($fp)
	lw $t1, -10728($fp)
	sw $t0, 0($t1)
	lw $t0, -10728($fp)
	lw $t1, 0($t0)
	sw $t1, -10732($fp)
	li $t0, 42358
	sw $t0, -10736($fp)
	addi $t0, $fp, -10324
	sw $t0, -10740($fp)
	li $t0, 7
	sw $t0, -10744($fp)
	lw $t0, -10744($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10748($fp)
	lw $t0, -10740($fp)
	lw $t1, -10748($fp)
	add $t0, $t0, $t1
	sw $t0, -10752($fp)
	lw $t0, -10736($fp)
	lw $t1, -10752($fp)
	sw $t0, 0($t1)
	lw $t0, -10752($fp)
	lw $t1, 0($t0)
	sw $t1, -10756($fp)
	li $t0, 10577
	sw $t0, -10760($fp)
	addi $t0, $fp, -10324
	sw $t0, -10764($fp)
	li $t0, 8
	sw $t0, -10768($fp)
	lw $t0, -10768($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10772($fp)
	lw $t0, -10764($fp)
	lw $t1, -10772($fp)
	add $t0, $t0, $t1
	sw $t0, -10776($fp)
	lw $t0, -10760($fp)
	lw $t1, -10776($fp)
	sw $t0, 0($t1)
	lw $t0, -10776($fp)
	lw $t1, 0($t0)
	sw $t1, -10780($fp)
	li $t0, 37928
	sw $t0, -10784($fp)
	addi $t0, $fp, -10324
	sw $t0, -10788($fp)
	li $t0, 9
	sw $t0, -10792($fp)
	lw $t0, -10792($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -10796($fp)
	lw $t0, -10788($fp)
	lw $t1, -10796($fp)
	add $t0, $t0, $t1
	sw $t0, -10800($fp)
	lw $t0, -10784($fp)
	lw $t1, -10800($fp)
	sw $t0, 0($t1)
	lw $t0, -10800($fp)
	lw $t1, 0($t0)
	sw $t1, -10804($fp)
	lw $t0, -10332($fp)
	sw $t0, -10808($fp)
	lw $t0, -10808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10344($fp)
	sw $t0, -10812($fp)
	lw $t0, -10812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10356($fp)
	sw $t0, -10816($fp)
	lw $t0, -10816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10284
	sw $t0, -10820($fp)
	li $t0, 0
	sw $t0, -10824($fp)
	li $t0, 4
	lw $t1, -10824($fp)
	mul $t0, $t0, $t1
	sw $t0, -10828($fp)
	lw $t0, -10828($fp)
	lw $t1, -10820($fp)
	add $t0, $t0, $t1
	sw $t0, -10832($fp)
	lw $t0, -10832($fp)
	lw $t1, 0($t0)
	sw $t1, -10836($fp)
	lw $t0, -10836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10284
	sw $t0, -10840($fp)
	li $t0, 1
	sw $t0, -10844($fp)
	li $t0, 4
	lw $t1, -10844($fp)
	mul $t0, $t0, $t1
	sw $t0, -10848($fp)
	lw $t0, -10848($fp)
	lw $t1, -10840($fp)
	add $t0, $t0, $t1
	sw $t0, -10852($fp)
	lw $t0, -10852($fp)
	lw $t1, 0($t0)
	sw $t1, -10856($fp)
	lw $t0, -10856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10284
	sw $t0, -10860($fp)
	li $t0, 2
	sw $t0, -10864($fp)
	li $t0, 4
	lw $t1, -10864($fp)
	mul $t0, $t0, $t1
	sw $t0, -10868($fp)
	lw $t0, -10868($fp)
	lw $t1, -10860($fp)
	add $t0, $t0, $t1
	sw $t0, -10872($fp)
	lw $t0, -10872($fp)
	lw $t1, 0($t0)
	sw $t1, -10876($fp)
	lw $t0, -10876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10284
	sw $t0, -10880($fp)
	li $t0, 3
	sw $t0, -10884($fp)
	li $t0, 4
	lw $t1, -10884($fp)
	mul $t0, $t0, $t1
	sw $t0, -10888($fp)
	lw $t0, -10888($fp)
	lw $t1, -10880($fp)
	add $t0, $t0, $t1
	sw $t0, -10892($fp)
	lw $t0, -10892($fp)
	lw $t1, 0($t0)
	sw $t1, -10896($fp)
	lw $t0, -10896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10284
	sw $t0, -10900($fp)
	li $t0, 4
	sw $t0, -10904($fp)
	li $t0, 4
	lw $t1, -10904($fp)
	mul $t0, $t0, $t1
	sw $t0, -10908($fp)
	lw $t0, -10908($fp)
	lw $t1, -10900($fp)
	add $t0, $t0, $t1
	sw $t0, -10912($fp)
	lw $t0, -10912($fp)
	lw $t1, 0($t0)
	sw $t1, -10916($fp)
	lw $t0, -10916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10284
	sw $t0, -10920($fp)
	li $t0, 5
	sw $t0, -10924($fp)
	li $t0, 4
	lw $t1, -10924($fp)
	mul $t0, $t0, $t1
	sw $t0, -10928($fp)
	lw $t0, -10928($fp)
	lw $t1, -10920($fp)
	add $t0, $t0, $t1
	sw $t0, -10932($fp)
	lw $t0, -10932($fp)
	lw $t1, 0($t0)
	sw $t1, -10936($fp)
	lw $t0, -10936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10284
	sw $t0, -10940($fp)
	li $t0, 6
	sw $t0, -10944($fp)
	li $t0, 4
	lw $t1, -10944($fp)
	mul $t0, $t0, $t1
	sw $t0, -10948($fp)
	lw $t0, -10948($fp)
	lw $t1, -10940($fp)
	add $t0, $t0, $t1
	sw $t0, -10952($fp)
	lw $t0, -10952($fp)
	lw $t1, 0($t0)
	sw $t1, -10956($fp)
	lw $t0, -10956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10284
	sw $t0, -10960($fp)
	li $t0, 7
	sw $t0, -10964($fp)
	li $t0, 4
	lw $t1, -10964($fp)
	mul $t0, $t0, $t1
	sw $t0, -10968($fp)
	lw $t0, -10968($fp)
	lw $t1, -10960($fp)
	add $t0, $t0, $t1
	sw $t0, -10972($fp)
	lw $t0, -10972($fp)
	lw $t1, 0($t0)
	sw $t1, -10976($fp)
	lw $t0, -10976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10560($fp)
	sw $t0, -10980($fp)
	lw $t0, -10980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -10984($fp)
	li $t0, 0
	sw $t0, -10988($fp)
	li $t0, 4
	lw $t1, -10988($fp)
	mul $t0, $t0, $t1
	sw $t0, -10992($fp)
	lw $t0, -10992($fp)
	lw $t1, -10984($fp)
	add $t0, $t0, $t1
	sw $t0, -10996($fp)
	lw $t0, -10996($fp)
	lw $t1, 0($t0)
	sw $t1, -11000($fp)
	lw $t0, -11000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11004($fp)
	li $t0, 1
	sw $t0, -11008($fp)
	li $t0, 4
	lw $t1, -11008($fp)
	mul $t0, $t0, $t1
	sw $t0, -11012($fp)
	lw $t0, -11012($fp)
	lw $t1, -11004($fp)
	add $t0, $t0, $t1
	sw $t0, -11016($fp)
	lw $t0, -11016($fp)
	lw $t1, 0($t0)
	sw $t1, -11020($fp)
	lw $t0, -11020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11024($fp)
	li $t0, 2
	sw $t0, -11028($fp)
	li $t0, 4
	lw $t1, -11028($fp)
	mul $t0, $t0, $t1
	sw $t0, -11032($fp)
	lw $t0, -11032($fp)
	lw $t1, -11024($fp)
	add $t0, $t0, $t1
	sw $t0, -11036($fp)
	lw $t0, -11036($fp)
	lw $t1, 0($t0)
	sw $t1, -11040($fp)
	lw $t0, -11040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11044($fp)
	li $t0, 3
	sw $t0, -11048($fp)
	li $t0, 4
	lw $t1, -11048($fp)
	mul $t0, $t0, $t1
	sw $t0, -11052($fp)
	lw $t0, -11052($fp)
	lw $t1, -11044($fp)
	add $t0, $t0, $t1
	sw $t0, -11056($fp)
	lw $t0, -11056($fp)
	lw $t1, 0($t0)
	sw $t1, -11060($fp)
	lw $t0, -11060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11064($fp)
	li $t0, 4
	sw $t0, -11068($fp)
	li $t0, 4
	lw $t1, -11068($fp)
	mul $t0, $t0, $t1
	sw $t0, -11072($fp)
	lw $t0, -11072($fp)
	lw $t1, -11064($fp)
	add $t0, $t0, $t1
	sw $t0, -11076($fp)
	lw $t0, -11076($fp)
	lw $t1, 0($t0)
	sw $t1, -11080($fp)
	lw $t0, -11080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11084($fp)
	li $t0, 5
	sw $t0, -11088($fp)
	li $t0, 4
	lw $t1, -11088($fp)
	mul $t0, $t0, $t1
	sw $t0, -11092($fp)
	lw $t0, -11092($fp)
	lw $t1, -11084($fp)
	add $t0, $t0, $t1
	sw $t0, -11096($fp)
	lw $t0, -11096($fp)
	lw $t1, 0($t0)
	sw $t1, -11100($fp)
	lw $t0, -11100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11104($fp)
	li $t0, 6
	sw $t0, -11108($fp)
	li $t0, 4
	lw $t1, -11108($fp)
	mul $t0, $t0, $t1
	sw $t0, -11112($fp)
	lw $t0, -11112($fp)
	lw $t1, -11104($fp)
	add $t0, $t0, $t1
	sw $t0, -11116($fp)
	lw $t0, -11116($fp)
	lw $t1, 0($t0)
	sw $t1, -11120($fp)
	lw $t0, -11120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11124($fp)
	li $t0, 7
	sw $t0, -11128($fp)
	li $t0, 4
	lw $t1, -11128($fp)
	mul $t0, $t0, $t1
	sw $t0, -11132($fp)
	lw $t0, -11132($fp)
	lw $t1, -11124($fp)
	add $t0, $t0, $t1
	sw $t0, -11136($fp)
	lw $t0, -11136($fp)
	lw $t1, 0($t0)
	sw $t1, -11140($fp)
	lw $t0, -11140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11144($fp)
	li $t0, 8
	sw $t0, -11148($fp)
	li $t0, 4
	lw $t1, -11148($fp)
	mul $t0, $t0, $t1
	sw $t0, -11152($fp)
	lw $t0, -11152($fp)
	lw $t1, -11144($fp)
	add $t0, $t0, $t1
	sw $t0, -11156($fp)
	lw $t0, -11156($fp)
	lw $t1, 0($t0)
	sw $t1, -11160($fp)
	lw $t0, -11160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11164($fp)
	li $t0, 9
	sw $t0, -11168($fp)
	li $t0, 4
	lw $t1, -11168($fp)
	mul $t0, $t0, $t1
	sw $t0, -11172($fp)
	lw $t0, -11172($fp)
	lw $t1, -11164($fp)
	add $t0, $t0, $t1
	sw $t0, -11176($fp)
	lw $t0, -11176($fp)
	lw $t1, 0($t0)
	sw $t1, -11180($fp)
	lw $t0, -11180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -11184($fp)
	li $t0, 0
	sw $t0, -11188($fp)
	lw $t0, -3256($fp)
	sw $t0, -11192($fp)
	lw $t1, -11192($fp)
	li $t2, 0
	bne $t1, $t2, label588
	j label587
label588:
	lw $t0, -3172($fp)
	sw $t0, -11196($fp)
	lw $t1, -11196($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label587
label586:
	li $t0, 1
	sw $t0, -11188($fp)
label587:
	li $t0, 4
	lw $t1, -11188($fp)
	mul $t0, $t0, $t1
	sw $t0, -11200($fp)
	lw $t0, -11200($fp)
	lw $t1, -11184($fp)
	add $t0, $t0, $t1
	sw $t0, -11204($fp)
	lw $t0, -11204($fp)
	lw $t1, 0($t0)
	sw $t1, -11208($fp)
	li $t0, 0
	sw $t0, -11212($fp)
	addi $t0, $fp, -312
	sw $t0, -11216($fp)
	lw $t0, -4264($fp)
	sw $t0, -11220($fp)
	li $t0, 4
	lw $t1, -11220($fp)
	mul $t0, $t0, $t1
	sw $t0, -11224($fp)
	lw $t0, -11224($fp)
	lw $t1, -11216($fp)
	add $t0, $t0, $t1
	sw $t0, -11228($fp)
	lw $t0, -11228($fp)
	lw $t1, 0($t0)
	sw $t1, -11232($fp)
	lw $t1, -11232($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label589
label589:
	li $t0, 1
	sw $t0, -11212($fp)
label590:
	lw $t0, -11208($fp)
	lw $t1, -11212($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11236($fp)
	li $t0, 0
	sw $t0, -11240($fp)
	addi $t0, $fp, -324
	sw $t0, -11244($fp)
	lw $t0, -10332($fp)
	sw $t0, -11248($fp)
	li $t0, 4
	lw $t1, -11248($fp)
	mul $t0, $t0, $t1
	sw $t0, -11252($fp)
	lw $t0, -11252($fp)
	lw $t1, -11244($fp)
	add $t0, $t0, $t1
	sw $t0, -11256($fp)
	lw $t0, -11256($fp)
	lw $t1, 0($t0)
	sw $t1, -11260($fp)
	lw $t1, -11260($fp)
	li $t2, 0
	bne $t1, $t2, label591
	j label592
label591:
	li $t0, 1
	sw $t0, -11240($fp)
label592:
	lw $t0, -11236($fp)
	lw $t1, -11240($fp)
	mul $t0, $t0, $t1
	sw $t0, -11264($fp)
	lw $ra, -4($fp)
	lw $v0, -11264($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label593:
	addi $t0, $fp, -208
	sw $t0, -11268($fp)
	addi $t0, $fp, -10324
	sw $t0, -11272($fp)
	lw $t0, -3256($fp)
	sw $t0, -11276($fp)
	li $t0, 4
	lw $t1, -11276($fp)
	mul $t0, $t0, $t1
	sw $t0, -11280($fp)
	lw $t0, -11280($fp)
	lw $t1, -11272($fp)
	add $t0, $t0, $t1
	sw $t0, -11284($fp)
	lw $t0, -11284($fp)
	lw $t1, 0($t0)
	sw $t1, -11288($fp)
	li $t0, 15617
	sw $t0, -11292($fp)
	li $t0, 0
	lw $t1, -11292($fp)
	sub $t0, $t0, $t1
	sw $t0, -11296($fp)
	lw $t0, -11288($fp)
	lw $t1, -11296($fp)
	mul $t0, $t0, $t1
	sw $t0, -11300($fp)
	li $t0, 4
	lw $t1, -11300($fp)
	mul $t0, $t0, $t1
	sw $t0, -11304($fp)
	lw $t0, -11304($fp)
	lw $t1, -11268($fp)
	add $t0, $t0, $t1
	sw $t0, -11308($fp)
	lw $t0, -11308($fp)
	lw $t1, 0($t0)
	sw $t1, -11312($fp)
	lw $t1, -11312($fp)
	li $t2, 0
	bne $t1, $t2, label594
	j label595
label594:
	lw $t0, -10344($fp)
	sw $t0, -11316($fp)
	li $t0, 0
	sw $t0, -11320($fp)
	li $t0, 1780
	sw $t0, -11324($fp)
	lw $t1, -11324($fp)
	li $t2, 0
	bne $t1, $t2, label597
	j label596
label596:
	li $t0, 1
	sw $t0, -11320($fp)
label597:
	li $t0, 0
	lw $t1, -11320($fp)
	sub $t0, $t0, $t1
	sw $t0, -11328($fp)
	lw $t0, -11316($fp)
	lw $t1, -11328($fp)
	mul $t0, $t0, $t1
	sw $t0, -11332($fp)
	addi $t0, $fp, -232
	sw $t0, -11336($fp)
	li $t0, 2
	sw $t0, -11340($fp)
	li $t0, 4
	lw $t1, -11340($fp)
	mul $t0, $t0, $t1
	sw $t0, -11344($fp)
	lw $t0, -11344($fp)
	lw $t1, -11336($fp)
	add $t0, $t0, $t1
	sw $t0, -11348($fp)
	lw $t0, -11348($fp)
	lw $t1, 0($t0)
	sw $t1, -11352($fp)
	lw $t0, -3520($fp)
	sw $t0, -11356($fp)
	lw $t0, -11352($fp)
	lw $t1, -11356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11360($fp)
	li $t0, 18667
	sw $t0, -11364($fp)
	li $t0, 43827
	sw $t0, -11368($fp)
	li $t0, 0
	lw $t1, -11368($fp)
	sub $t0, $t0, $t1
	sw $t0, -11372($fp)
	li $t0, 2475
	sw $t0, -11376($fp)
	lw $t0, -11376($fp)
	sw $t0, -3508($fp)
	lw $t0, -3508($fp)
	sw $t0, -11380($fp)
	li $t0, 0
	sw $t0, -11384($fp)
	addi $t0, $fp, -400
	sw $t0, -11388($fp)
	lw $t0, -2116($fp)
	sw $t0, -11392($fp)
	li $t0, 4
	lw $t1, -11392($fp)
	mul $t0, $t0, $t1
	sw $t0, -11396($fp)
	lw $t0, -11396($fp)
	lw $t1, -11388($fp)
	add $t0, $t0, $t1
	sw $t0, -11400($fp)
	lw $t0, -11400($fp)
	lw $t1, 0($t0)
	sw $t1, -11404($fp)
	li $t0, 17928
	sw $t0, -11408($fp)
	lw $t1, -11404($fp)
	lw $t2, -11408($fp)
	bne $t1, $t2, label598
	j label599
label598:
	li $t0, 1
	sw $t0, -11384($fp)
label599:
	addi $sp, $sp, -4
	lw $t0, -11360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11384($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11412($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -364
	sw $t0, -11416($fp)
	li $t0, 5
	sw $t0, -11420($fp)
	li $t0, 4
	lw $t1, -11420($fp)
	mul $t0, $t0, $t1
	sw $t0, -11424($fp)
	lw $t0, -11424($fp)
	lw $t1, -11416($fp)
	add $t0, $t0, $t1
	sw $t0, -11428($fp)
	lw $t0, -11428($fp)
	lw $t1, 0($t0)
	sw $t1, -11432($fp)
	lw $t0, -3856($fp)
	sw $t0, -11436($fp)
	li $t0, 0
	lw $t1, -11436($fp)
	sub $t0, $t0, $t1
	sw $t0, -11440($fp)
	li $t0, 0
	sw $t0, -11444($fp)
	li $t0, 4572
	sw $t0, -11448($fp)
	li $t0, 0
	lw $t1, -11448($fp)
	sub $t0, $t0, $t1
	sw $t0, -11452($fp)
	lw $t1, -11452($fp)
	li $t2, 0
	bne $t1, $t2, label600
	j label602
label602:
	li $t0, 58995
	sw $t0, -11456($fp)
	lw $t1, -11456($fp)
	li $t2, 0
	bne $t1, $t2, label600
	j label601
label600:
	li $t0, 1
	sw $t0, -11444($fp)
label601:
	li $t0, 0
	sw $t0, -11460($fp)
	li $t0, 11097
	sw $t0, -11464($fp)
	lw $t1, -11464($fp)
	li $t2, 0
	bne $t1, $t2, label604
	j label603
label603:
	li $t0, 1
	sw $t0, -11460($fp)
label604:
	addi $sp, $sp, -4
	lw $t0, -11412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11460($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11468($fp)
	addi $sp, $sp, 24
	li $t0, 63691
	sw $t0, -11472($fp)
	lw $t0, -11468($fp)
	lw $t1, -11472($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11476($fp)
	lw $t0, -11332($fp)
	lw $t1, -11476($fp)
	sub $t0, $t0, $t1
	sw $t0, -11480($fp)
	lw $ra, -4($fp)
	lw $v0, -11480($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label593
label595:
	lw $t0, -10332($fp)
	sw $t0, -11484($fp)
	lw $t0, -11484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10344($fp)
	sw $t0, -11488($fp)
	lw $t0, -11488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10356($fp)
	sw $t0, -11492($fp)
	lw $t0, -11492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10284
	sw $t0, -11496($fp)
	li $t0, 0
	sw $t0, -11500($fp)
	li $t0, 4
	lw $t1, -11500($fp)
	mul $t0, $t0, $t1
	sw $t0, -11504($fp)
	lw $t0, -11504($fp)
	lw $t1, -11496($fp)
	add $t0, $t0, $t1
	sw $t0, -11508($fp)
	lw $t0, -11508($fp)
	lw $t1, 0($t0)
	sw $t1, -11512($fp)
	lw $t0, -11512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10284
	sw $t0, -11516($fp)
	li $t0, 1
	sw $t0, -11520($fp)
	li $t0, 4
	lw $t1, -11520($fp)
	mul $t0, $t0, $t1
	sw $t0, -11524($fp)
	lw $t0, -11524($fp)
	lw $t1, -11516($fp)
	add $t0, $t0, $t1
	sw $t0, -11528($fp)
	lw $t0, -11528($fp)
	lw $t1, 0($t0)
	sw $t1, -11532($fp)
	lw $t0, -11532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10284
	sw $t0, -11536($fp)
	li $t0, 2
	sw $t0, -11540($fp)
	li $t0, 4
	lw $t1, -11540($fp)
	mul $t0, $t0, $t1
	sw $t0, -11544($fp)
	lw $t0, -11544($fp)
	lw $t1, -11536($fp)
	add $t0, $t0, $t1
	sw $t0, -11548($fp)
	lw $t0, -11548($fp)
	lw $t1, 0($t0)
	sw $t1, -11552($fp)
	lw $t0, -11552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10284
	sw $t0, -11556($fp)
	li $t0, 3
	sw $t0, -11560($fp)
	li $t0, 4
	lw $t1, -11560($fp)
	mul $t0, $t0, $t1
	sw $t0, -11564($fp)
	lw $t0, -11564($fp)
	lw $t1, -11556($fp)
	add $t0, $t0, $t1
	sw $t0, -11568($fp)
	lw $t0, -11568($fp)
	lw $t1, 0($t0)
	sw $t1, -11572($fp)
	lw $t0, -11572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10284
	sw $t0, -11576($fp)
	li $t0, 4
	sw $t0, -11580($fp)
	li $t0, 4
	lw $t1, -11580($fp)
	mul $t0, $t0, $t1
	sw $t0, -11584($fp)
	lw $t0, -11584($fp)
	lw $t1, -11576($fp)
	add $t0, $t0, $t1
	sw $t0, -11588($fp)
	lw $t0, -11588($fp)
	lw $t1, 0($t0)
	sw $t1, -11592($fp)
	lw $t0, -11592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10284
	sw $t0, -11596($fp)
	li $t0, 5
	sw $t0, -11600($fp)
	li $t0, 4
	lw $t1, -11600($fp)
	mul $t0, $t0, $t1
	sw $t0, -11604($fp)
	lw $t0, -11604($fp)
	lw $t1, -11596($fp)
	add $t0, $t0, $t1
	sw $t0, -11608($fp)
	lw $t0, -11608($fp)
	lw $t1, 0($t0)
	sw $t1, -11612($fp)
	lw $t0, -11612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10284
	sw $t0, -11616($fp)
	li $t0, 6
	sw $t0, -11620($fp)
	li $t0, 4
	lw $t1, -11620($fp)
	mul $t0, $t0, $t1
	sw $t0, -11624($fp)
	lw $t0, -11624($fp)
	lw $t1, -11616($fp)
	add $t0, $t0, $t1
	sw $t0, -11628($fp)
	lw $t0, -11628($fp)
	lw $t1, 0($t0)
	sw $t1, -11632($fp)
	lw $t0, -11632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10284
	sw $t0, -11636($fp)
	li $t0, 7
	sw $t0, -11640($fp)
	li $t0, 4
	lw $t1, -11640($fp)
	mul $t0, $t0, $t1
	sw $t0, -11644($fp)
	lw $t0, -11644($fp)
	lw $t1, -11636($fp)
	add $t0, $t0, $t1
	sw $t0, -11648($fp)
	lw $t0, -11648($fp)
	lw $t1, 0($t0)
	sw $t1, -11652($fp)
	lw $t0, -11652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -10560($fp)
	sw $t0, -11656($fp)
	lw $t0, -11656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11660($fp)
	li $t0, 0
	sw $t0, -11664($fp)
	li $t0, 4
	lw $t1, -11664($fp)
	mul $t0, $t0, $t1
	sw $t0, -11668($fp)
	lw $t0, -11668($fp)
	lw $t1, -11660($fp)
	add $t0, $t0, $t1
	sw $t0, -11672($fp)
	lw $t0, -11672($fp)
	lw $t1, 0($t0)
	sw $t1, -11676($fp)
	lw $t0, -11676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11680($fp)
	li $t0, 1
	sw $t0, -11684($fp)
	li $t0, 4
	lw $t1, -11684($fp)
	mul $t0, $t0, $t1
	sw $t0, -11688($fp)
	lw $t0, -11688($fp)
	lw $t1, -11680($fp)
	add $t0, $t0, $t1
	sw $t0, -11692($fp)
	lw $t0, -11692($fp)
	lw $t1, 0($t0)
	sw $t1, -11696($fp)
	lw $t0, -11696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11700($fp)
	li $t0, 2
	sw $t0, -11704($fp)
	li $t0, 4
	lw $t1, -11704($fp)
	mul $t0, $t0, $t1
	sw $t0, -11708($fp)
	lw $t0, -11708($fp)
	lw $t1, -11700($fp)
	add $t0, $t0, $t1
	sw $t0, -11712($fp)
	lw $t0, -11712($fp)
	lw $t1, 0($t0)
	sw $t1, -11716($fp)
	lw $t0, -11716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11720($fp)
	li $t0, 3
	sw $t0, -11724($fp)
	li $t0, 4
	lw $t1, -11724($fp)
	mul $t0, $t0, $t1
	sw $t0, -11728($fp)
	lw $t0, -11728($fp)
	lw $t1, -11720($fp)
	add $t0, $t0, $t1
	sw $t0, -11732($fp)
	lw $t0, -11732($fp)
	lw $t1, 0($t0)
	sw $t1, -11736($fp)
	lw $t0, -11736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11740($fp)
	li $t0, 4
	sw $t0, -11744($fp)
	li $t0, 4
	lw $t1, -11744($fp)
	mul $t0, $t0, $t1
	sw $t0, -11748($fp)
	lw $t0, -11748($fp)
	lw $t1, -11740($fp)
	add $t0, $t0, $t1
	sw $t0, -11752($fp)
	lw $t0, -11752($fp)
	lw $t1, 0($t0)
	sw $t1, -11756($fp)
	lw $t0, -11756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11760($fp)
	li $t0, 5
	sw $t0, -11764($fp)
	li $t0, 4
	lw $t1, -11764($fp)
	mul $t0, $t0, $t1
	sw $t0, -11768($fp)
	lw $t0, -11768($fp)
	lw $t1, -11760($fp)
	add $t0, $t0, $t1
	sw $t0, -11772($fp)
	lw $t0, -11772($fp)
	lw $t1, 0($t0)
	sw $t1, -11776($fp)
	lw $t0, -11776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11780($fp)
	li $t0, 6
	sw $t0, -11784($fp)
	li $t0, 4
	lw $t1, -11784($fp)
	mul $t0, $t0, $t1
	sw $t0, -11788($fp)
	lw $t0, -11788($fp)
	lw $t1, -11780($fp)
	add $t0, $t0, $t1
	sw $t0, -11792($fp)
	lw $t0, -11792($fp)
	lw $t1, 0($t0)
	sw $t1, -11796($fp)
	lw $t0, -11796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11800($fp)
	li $t0, 7
	sw $t0, -11804($fp)
	li $t0, 4
	lw $t1, -11804($fp)
	mul $t0, $t0, $t1
	sw $t0, -11808($fp)
	lw $t0, -11808($fp)
	lw $t1, -11800($fp)
	add $t0, $t0, $t1
	sw $t0, -11812($fp)
	lw $t0, -11812($fp)
	lw $t1, 0($t0)
	sw $t1, -11816($fp)
	lw $t0, -11816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11820($fp)
	li $t0, 8
	sw $t0, -11824($fp)
	li $t0, 4
	lw $t1, -11824($fp)
	mul $t0, $t0, $t1
	sw $t0, -11828($fp)
	lw $t0, -11828($fp)
	lw $t1, -11820($fp)
	add $t0, $t0, $t1
	sw $t0, -11832($fp)
	lw $t0, -11832($fp)
	lw $t1, 0($t0)
	sw $t1, -11836($fp)
	lw $t0, -11836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -10324
	sw $t0, -11840($fp)
	li $t0, 9
	sw $t0, -11844($fp)
	li $t0, 4
	lw $t1, -11844($fp)
	mul $t0, $t0, $t1
	sw $t0, -11848($fp)
	lw $t0, -11848($fp)
	lw $t1, -11840($fp)
	add $t0, $t0, $t1
	sw $t0, -11852($fp)
	lw $t0, -11852($fp)
	lw $t1, 0($t0)
	sw $t1, -11856($fp)
	lw $t0, -11856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3520($fp)
	sw $t0, -11860($fp)
	lw $ra, -4($fp)
	lw $v0, -11860($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -24
	sw $t0, -11864($fp)
	lw $t0, -4684($fp)
	sw $t0, -11868($fp)
	li $t0, 4
	lw $t1, -11868($fp)
	mul $t0, $t0, $t1
	sw $t0, -11872($fp)
	lw $t0, -11872($fp)
	lw $t1, -11864($fp)
	add $t0, $t0, $t1
	sw $t0, -11876($fp)
	lw $t0, -11876($fp)
	lw $t1, 0($t0)
	sw $t1, -11880($fp)
	li $t0, 0
	sw $t0, -11884($fp)
	lw $t0, -2620($fp)
	sw $t0, -11888($fp)
	lw $t1, -11888($fp)
	li $t2, 0
	bne $t1, $t2, label609
	j label608
label608:
	li $t0, 1
	sw $t0, -11884($fp)
label609:
	li $t0, 0
	lw $t1, -11884($fp)
	sub $t0, $t0, $t1
	sw $t0, -11892($fp)
	li $t0, 0
	lw $t1, -11892($fp)
	sub $t0, $t0, $t1
	sw $t0, -11896($fp)
	addi $t0, $fp, -400
	sw $t0, -11900($fp)
	lw $t0, -4264($fp)
	sw $t0, -11904($fp)
	lw $t0, -3844($fp)
	sw $t0, -11908($fp)
	lw $t0, -11904($fp)
	lw $t1, -11908($fp)
	mul $t0, $t0, $t1
	sw $t0, -11912($fp)
	li $t0, 4
	lw $t1, -11912($fp)
	mul $t0, $t0, $t1
	sw $t0, -11916($fp)
	lw $t0, -11916($fp)
	lw $t1, -11900($fp)
	add $t0, $t0, $t1
	sw $t0, -11920($fp)
	lw $t0, -11920($fp)
	lw $t1, 0($t0)
	sw $t1, -11924($fp)
	lw $t0, -11896($fp)
	lw $t1, -11924($fp)
	add $t0, $t0, $t1
	sw $t0, -11928($fp)
	lw $t1, -11928($fp)
	li $t2, 0
	bne $t1, $t2, label605
	j label606
label605:
	lw $t0, -676($fp)
	sw $t0, -11932($fp)
	li $t0, 0
	sw $t0, -11936($fp)
	addi $t0, $fp, -208
	sw $t0, -11940($fp)
	li $t0, 1
	sw $t0, -11944($fp)
	li $t0, 4
	lw $t1, -11944($fp)
	mul $t0, $t0, $t1
	sw $t0, -11948($fp)
	lw $t0, -11948($fp)
	lw $t1, -11940($fp)
	add $t0, $t0, $t1
	sw $t0, -11952($fp)
	lw $t0, -11952($fp)
	lw $t1, 0($t0)
	sw $t1, -11956($fp)
	lw $t1, -11956($fp)
	li $t2, 0
	bne $t1, $t2, label614
	j label613
label613:
	li $t0, 1
	sw $t0, -11936($fp)
label614:
	lw $t0, -11932($fp)
	lw $t1, -11936($fp)
	mul $t0, $t0, $t1
	sw $t0, -11960($fp)
	lw $t1, -11960($fp)
	li $t2, 0
	bne $t1, $t2, label610
	j label611
label610:
	li $t0, 43635
	sw $t0, -12020($fp)
	lw $t0, -12020($fp)
	sw $t0, -12024($fp)
	lw $t0, -12024($fp)
	sw $t0, -12028($fp)
	li $t0, 54278
	sw $t0, -12032($fp)
	lw $t0, -12032($fp)
	sw $t0, -12036($fp)
	lw $t0, -12036($fp)
	sw $t0, -12040($fp)
	li $t0, 37565
	sw $t0, -12044($fp)
	addi $t0, $fp, -11980
	sw $t0, -12048($fp)
	li $t0, 0
	sw $t0, -12052($fp)
	lw $t0, -12052($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12056($fp)
	lw $t0, -12048($fp)
	lw $t1, -12056($fp)
	add $t0, $t0, $t1
	sw $t0, -12060($fp)
	lw $t0, -12044($fp)
	lw $t1, -12060($fp)
	sw $t0, 0($t1)
	lw $t0, -12060($fp)
	lw $t1, 0($t0)
	sw $t1, -12064($fp)
	li $t0, 10856
	sw $t0, -12068($fp)
	addi $t0, $fp, -11980
	sw $t0, -12072($fp)
	li $t0, 1
	sw $t0, -12076($fp)
	lw $t0, -12076($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12080($fp)
	lw $t0, -12072($fp)
	lw $t1, -12080($fp)
	add $t0, $t0, $t1
	sw $t0, -12084($fp)
	lw $t0, -12068($fp)
	lw $t1, -12084($fp)
	sw $t0, 0($t1)
	lw $t0, -12084($fp)
	lw $t1, 0($t0)
	sw $t1, -12088($fp)
	li $t0, 4256
	sw $t0, -12092($fp)
	addi $t0, $fp, -11980
	sw $t0, -12096($fp)
	li $t0, 2
	sw $t0, -12100($fp)
	lw $t0, -12100($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12104($fp)
	lw $t0, -12096($fp)
	lw $t1, -12104($fp)
	add $t0, $t0, $t1
	sw $t0, -12108($fp)
	lw $t0, -12092($fp)
	lw $t1, -12108($fp)
	sw $t0, 0($t1)
	lw $t0, -12108($fp)
	lw $t1, 0($t0)
	sw $t1, -12112($fp)
	li $t0, 36339
	sw $t0, -12116($fp)
	addi $t0, $fp, -11980
	sw $t0, -12120($fp)
	li $t0, 3
	sw $t0, -12124($fp)
	lw $t0, -12124($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12128($fp)
	lw $t0, -12120($fp)
	lw $t1, -12128($fp)
	add $t0, $t0, $t1
	sw $t0, -12132($fp)
	lw $t0, -12116($fp)
	lw $t1, -12132($fp)
	sw $t0, 0($t1)
	lw $t0, -12132($fp)
	lw $t1, 0($t0)
	sw $t1, -12136($fp)
	li $t0, 38147
	sw $t0, -12140($fp)
	addi $t0, $fp, -11980
	sw $t0, -12144($fp)
	li $t0, 4
	sw $t0, -12148($fp)
	lw $t0, -12148($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12152($fp)
	lw $t0, -12144($fp)
	lw $t1, -12152($fp)
	add $t0, $t0, $t1
	sw $t0, -12156($fp)
	lw $t0, -12140($fp)
	lw $t1, -12156($fp)
	sw $t0, 0($t1)
	lw $t0, -12156($fp)
	lw $t1, 0($t0)
	sw $t1, -12160($fp)
	li $t0, 2652
	sw $t0, -12164($fp)
	addi $t0, $fp, -12008
	sw $t0, -12168($fp)
	li $t0, 0
	sw $t0, -12172($fp)
	lw $t0, -12172($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12176($fp)
	lw $t0, -12168($fp)
	lw $t1, -12176($fp)
	add $t0, $t0, $t1
	sw $t0, -12180($fp)
	lw $t0, -12164($fp)
	lw $t1, -12180($fp)
	sw $t0, 0($t1)
	lw $t0, -12180($fp)
	lw $t1, 0($t0)
	sw $t1, -12184($fp)
	li $t0, 15703
	sw $t0, -12188($fp)
	addi $t0, $fp, -12008
	sw $t0, -12192($fp)
	li $t0, 1
	sw $t0, -12196($fp)
	lw $t0, -12196($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12200($fp)
	lw $t0, -12192($fp)
	lw $t1, -12200($fp)
	add $t0, $t0, $t1
	sw $t0, -12204($fp)
	lw $t0, -12188($fp)
	lw $t1, -12204($fp)
	sw $t0, 0($t1)
	lw $t0, -12204($fp)
	lw $t1, 0($t0)
	sw $t1, -12208($fp)
	li $t0, 23918
	sw $t0, -12212($fp)
	addi $t0, $fp, -12008
	sw $t0, -12216($fp)
	li $t0, 2
	sw $t0, -12220($fp)
	lw $t0, -12220($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12224($fp)
	lw $t0, -12216($fp)
	lw $t1, -12224($fp)
	add $t0, $t0, $t1
	sw $t0, -12228($fp)
	lw $t0, -12212($fp)
	lw $t1, -12228($fp)
	sw $t0, 0($t1)
	lw $t0, -12228($fp)
	lw $t1, 0($t0)
	sw $t1, -12232($fp)
	li $t0, 32760
	sw $t0, -12236($fp)
	addi $t0, $fp, -12008
	sw $t0, -12240($fp)
	li $t0, 3
	sw $t0, -12244($fp)
	lw $t0, -12244($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12248($fp)
	lw $t0, -12240($fp)
	lw $t1, -12248($fp)
	add $t0, $t0, $t1
	sw $t0, -12252($fp)
	lw $t0, -12236($fp)
	lw $t1, -12252($fp)
	sw $t0, 0($t1)
	lw $t0, -12252($fp)
	lw $t1, 0($t0)
	sw $t1, -12256($fp)
	li $t0, 21176
	sw $t0, -12260($fp)
	addi $t0, $fp, -12008
	sw $t0, -12264($fp)
	li $t0, 4
	sw $t0, -12268($fp)
	lw $t0, -12268($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12272($fp)
	lw $t0, -12264($fp)
	lw $t1, -12272($fp)
	add $t0, $t0, $t1
	sw $t0, -12276($fp)
	lw $t0, -12260($fp)
	lw $t1, -12276($fp)
	sw $t0, 0($t1)
	lw $t0, -12276($fp)
	lw $t1, 0($t0)
	sw $t1, -12280($fp)
	li $t0, 741
	sw $t0, -12284($fp)
	addi $t0, $fp, -12008
	sw $t0, -12288($fp)
	li $t0, 5
	sw $t0, -12292($fp)
	lw $t0, -12292($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12296($fp)
	lw $t0, -12288($fp)
	lw $t1, -12296($fp)
	add $t0, $t0, $t1
	sw $t0, -12300($fp)
	lw $t0, -12284($fp)
	lw $t1, -12300($fp)
	sw $t0, 0($t1)
	lw $t0, -12300($fp)
	lw $t1, 0($t0)
	sw $t1, -12304($fp)
	li $t0, 43337
	sw $t0, -12308($fp)
	addi $t0, $fp, -12008
	sw $t0, -12312($fp)
	li $t0, 6
	sw $t0, -12316($fp)
	lw $t0, -12316($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12320($fp)
	lw $t0, -12312($fp)
	lw $t1, -12320($fp)
	add $t0, $t0, $t1
	sw $t0, -12324($fp)
	lw $t0, -12308($fp)
	lw $t1, -12324($fp)
	sw $t0, 0($t1)
	lw $t0, -12324($fp)
	lw $t1, 0($t0)
	sw $t1, -12328($fp)
	li $t0, 59104
	sw $t0, -12332($fp)
	lw $t0, -12332($fp)
	sw $t0, -12336($fp)
	lw $t0, -12336($fp)
	sw $t0, -12340($fp)
	li $t0, 16358
	sw $t0, -12344($fp)
	lw $t0, -12344($fp)
	sw $t0, -12348($fp)
	lw $t0, -12348($fp)
	sw $t0, -12352($fp)
	li $t0, 45117
	sw $t0, -12356($fp)
	lw $t0, -12356($fp)
	sw $t0, -12360($fp)
	lw $t0, -12360($fp)
	sw $t0, -12364($fp)
	li $t0, 4665
	sw $t0, -12368($fp)
	addi $t0, $fp, -12016
	sw $t0, -12372($fp)
	li $t0, 0
	sw $t0, -12376($fp)
	lw $t0, -12376($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12380($fp)
	lw $t0, -12372($fp)
	lw $t1, -12380($fp)
	add $t0, $t0, $t1
	sw $t0, -12384($fp)
	lw $t0, -12368($fp)
	lw $t1, -12384($fp)
	sw $t0, 0($t1)
	lw $t0, -12384($fp)
	lw $t1, 0($t0)
	sw $t1, -12388($fp)
	li $t0, 20930
	sw $t0, -12392($fp)
	addi $t0, $fp, -12016
	sw $t0, -12396($fp)
	li $t0, 1
	sw $t0, -12400($fp)
	lw $t0, -12400($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -12404($fp)
	lw $t0, -12396($fp)
	lw $t1, -12404($fp)
	add $t0, $t0, $t1
	sw $t0, -12408($fp)
	lw $t0, -12392($fp)
	lw $t1, -12408($fp)
	sw $t0, 0($t1)
	lw $t0, -12408($fp)
	lw $t1, 0($t0)
	sw $t1, -12412($fp)
	li $t0, 0
	sw $t0, -12416($fp)
	lw $t0, -2164($fp)
	sw $t0, -12420($fp)
	li $t0, 0
	lw $t1, -12420($fp)
	sub $t0, $t0, $t1
	sw $t0, -12424($fp)
	li $t0, 0
	sw $t0, -12428($fp)
	lw $t0, -3880($fp)
	sw $t0, -12432($fp)
	li $t0, 24978
	sw $t0, -12436($fp)
	lw $t0, -12432($fp)
	lw $t1, -12436($fp)
	mul $t0, $t0, $t1
	sw $t0, -12440($fp)
	lw $t1, -12440($fp)
	li $t2, 0
	bne $t1, $t2, label618
	j label620
label620:
	lw $t0, -3520($fp)
	sw $t0, -12444($fp)
	lw $t1, -12444($fp)
	li $t2, 0
	bne $t1, $t2, label618
	j label619
label618:
	li $t0, 1
	sw $t0, -12428($fp)
label619:
	li $t0, 0
	sw $t0, -12448($fp)
	lw $t0, -3868($fp)
	sw $t0, -12452($fp)
	lw $t1, -12452($fp)
	li $t2, 0
	bne $t1, $t2, label622
	j label621
label621:
	li $t0, 1
	sw $t0, -12448($fp)
label622:
	li $t0, 51194
	sw $t0, -12456($fp)
	lw $t0, -12448($fp)
	lw $t1, -12456($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12460($fp)
	li $t0, 0
	sw $t0, -12464($fp)
	addi $t0, $fp, -10284
	sw $t0, -12468($fp)
	li $t0, 3
	sw $t0, -12472($fp)
	li $t0, 4
	lw $t1, -12472($fp)
	mul $t0, $t0, $t1
	sw $t0, -12476($fp)
	lw $t0, -12476($fp)
	lw $t1, -12468($fp)
	add $t0, $t0, $t1
	sw $t0, -12480($fp)
	lw $t0, -12480($fp)
	lw $t1, 0($t0)
	sw $t1, -12484($fp)
	li $t0, 6397
	sw $t0, -12488($fp)
	lw $t1, -12484($fp)
	lw $t2, -12488($fp)
	blt $t1, $t2, label623
	j label624
label623:
	li $t0, 1
	sw $t0, -12464($fp)
label624:
	li $t0, 0
	sw $t0, -12492($fp)
	li $t0, 7551
	sw $t0, -12496($fp)
	lw $t0, -1048($fp)
	sw $t0, -12500($fp)
	lw $t1, -12496($fp)
	lw $t2, -12500($fp)
	ble $t1, $t2, label627
	j label626
label627:
	li $t0, 46265
	sw $t0, -12504($fp)
	lw $t1, -12504($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label626
label625:
	li $t0, 1
	sw $t0, -12492($fp)
label626:
	addi $sp, $sp, -4
	lw $t0, -12424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12492($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12508($fp)
	addi $sp, $sp, 24
	lw $t0, -12348($fp)
	sw $t0, -12512($fp)
	lw $t0, -12508($fp)
	lw $t1, -12512($fp)
	add $t0, $t0, $t1
	sw $t0, -12516($fp)
	li $t0, 0
	sw $t0, -12520($fp)
	li $t0, 0
	sw $t0, -12524($fp)
	li $t0, 64103
	sw $t0, -12528($fp)
	lw $t1, -12528($fp)
	li $t2, 0
	bne $t1, $t2, label631
	j label630
label630:
	li $t0, 1
	sw $t0, -12524($fp)
label631:
	li $t0, 37278
	sw $t0, -12532($fp)
	lw $t1, -12524($fp)
	lw $t2, -12532($fp)
	bne $t1, $t2, label628
	j label629
label628:
	li $t0, 1
	sw $t0, -12520($fp)
label629:
	addi $t0, $fp, -324
	sw $t0, -12536($fp)
	li $t0, 1
	sw $t0, -12540($fp)
	li $t0, 4
	lw $t1, -12540($fp)
	mul $t0, $t0, $t1
	sw $t0, -12544($fp)
	lw $t0, -12544($fp)
	lw $t1, -12536($fp)
	add $t0, $t0, $t1
	sw $t0, -12548($fp)
	lw $t0, -12548($fp)
	lw $t1, 0($t0)
	sw $t1, -12552($fp)
	li $t0, 0
	sw $t0, -12556($fp)
	li $t0, 0
	sw $t0, -12560($fp)
	lw $t0, -4780($fp)
	sw $t0, -12564($fp)
	lw $t0, -3844($fp)
	sw $t0, -12568($fp)
	lw $t1, -12564($fp)
	lw $t2, -12568($fp)
	bgt $t1, $t2, label634
	j label635
label634:
	li $t0, 1
	sw $t0, -12560($fp)
label635:
	li $t0, 18880
	sw $t0, -12572($fp)
	lw $t1, -12560($fp)
	lw $t2, -12572($fp)
	bgt $t1, $t2, label632
	j label633
label632:
	li $t0, 1
	sw $t0, -12556($fp)
label633:
	lw $t0, -12336($fp)
	sw $t0, -12576($fp)
	li $t0, 0
	sw $t0, -12580($fp)
	lw $t0, -3856($fp)
	sw $t0, -12584($fp)
	lw $t1, -12584($fp)
	li $t2, 0
	bne $t1, $t2, label637
	j label636
label636:
	li $t0, 1
	sw $t0, -12580($fp)
label637:
	li $t0, 43543
	sw $t0, -12588($fp)
	lw $t0, -12580($fp)
	lw $t1, -12588($fp)
	add $t0, $t0, $t1
	sw $t0, -12592($fp)
	li $t0, 0
	sw $t0, -12596($fp)
	li $t0, 63962
	sw $t0, -12600($fp)
	li $t0, 14215
	sw $t0, -12604($fp)
	lw $t0, -12600($fp)
	lw $t1, -12604($fp)
	add $t0, $t0, $t1
	sw $t0, -12608($fp)
	lw $t1, -12608($fp)
	li $t2, 0
	bne $t1, $t2, label638
	j label640
label640:
	li $t0, 10376
	sw $t0, -12612($fp)
	lw $t1, -12612($fp)
	li $t2, 0
	bne $t1, $t2, label638
	j label639
label638:
	li $t0, 1
	sw $t0, -12596($fp)
label639:
	li $t0, 59553
	sw $t0, -12616($fp)
	lw $t0, -12616($fp)
	sw $t0, -10344($fp)
	lw $t0, -10344($fp)
	sw $t0, -12620($fp)
	li $t0, 0
	sw $t0, -12624($fp)
	li $t0, 20646
	sw $t0, -12628($fp)
	lw $t0, -2116($fp)
	sw $t0, -12632($fp)
	lw $t1, -12628($fp)
	lw $t2, -12632($fp)
	ble $t1, $t2, label643
	j label642
label643:
	lw $t0, -2476($fp)
	sw $t0, -12636($fp)
	lw $t1, -12636($fp)
	li $t2, 0
	bne $t1, $t2, label641
	j label642
label641:
	li $t0, 1
	sw $t0, -12624($fp)
label642:
	li $t0, 0
	sw $t0, -12640($fp)
	li $t0, 20625
	sw $t0, -12644($fp)
	lw $t0, -3844($fp)
	sw $t0, -12648($fp)
	lw $t1, -12644($fp)
	lw $t2, -12648($fp)
	blt $t1, $t2, label644
	j label646
label646:
	lw $t0, -3148($fp)
	sw $t0, -12652($fp)
	lw $t1, -12652($fp)
	li $t2, 0
	bne $t1, $t2, label644
	j label645
label644:
	li $t0, 1
	sw $t0, -12640($fp)
label645:
	addi $sp, $sp, -4
	lw $t0, -12592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12640($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12656($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -12656($fp)
	sub $t0, $t0, $t1
	sw $t0, -12660($fp)
	lw $t0, -3832($fp)
	sw $t0, -12664($fp)
	li $t0, 0
	sw $t0, -12668($fp)
	lw $t0, -3820($fp)
	sw $t0, -12672($fp)
	li $t0, 58812
	sw $t0, -12676($fp)
	lw $t0, -12672($fp)
	lw $t1, -12676($fp)
	sub $t0, $t0, $t1
	sw $t0, -12680($fp)
	lw $t1, -12680($fp)
	li $t2, 0
	bne $t1, $t2, label649
	j label648
label649:
	lw $t0, -712($fp)
	sw $t0, -12684($fp)
	lw $t1, -12684($fp)
	li $t2, 0
	bne $t1, $t2, label647
	j label648
label647:
	li $t0, 1
	sw $t0, -12668($fp)
label648:
	lw $t0, -2356($fp)
	sw $t0, -12688($fp)
	lw $t0, -12688($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	sw $t0, -12692($fp)
	lw $t0, -3808($fp)
	sw $t0, -12696($fp)
	li $t0, 65006
	sw $t0, -12700($fp)
	lw $t0, -12696($fp)
	lw $t1, -12700($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12704($fp)
	li $t0, 0
	lw $t1, -12704($fp)
	sub $t0, $t0, $t1
	sw $t0, -12708($fp)
	li $t0, 0
	sw $t0, -12712($fp)
	li $t0, 0
	sw $t0, -12716($fp)
	lw $t0, -3796($fp)
	sw $t0, -12720($fp)
	lw $t0, -3760($fp)
	sw $t0, -12724($fp)
	lw $t0, -12720($fp)
	lw $t1, -12724($fp)
	add $t0, $t0, $t1
	sw $t0, -12728($fp)
	lw $t1, -12728($fp)
	li $t2, 0
	bne $t1, $t2, label652
	j label654
label654:
	li $t0, 53401
	sw $t0, -12732($fp)
	lw $t1, -12732($fp)
	li $t2, 0
	bne $t1, $t2, label652
	j label653
label652:
	li $t0, 1
	sw $t0, -12716($fp)
label653:
	li $t0, 0
	sw $t0, -12736($fp)
	li $t0, 34894
	sw $t0, -12740($fp)
	lw $t1, -12740($fp)
	li $t2, 0
	bne $t1, $t2, label656
	j label655
label655:
	li $t0, 1
	sw $t0, -12736($fp)
label656:
	lw $t0, -2920($fp)
	sw $t0, -12744($fp)
	lw $t0, -12736($fp)
	lw $t1, -12744($fp)
	add $t0, $t0, $t1
	sw $t0, -12748($fp)
	addi $t0, $fp, -324
	sw $t0, -12752($fp)
	li $t0, 2
	sw $t0, -12756($fp)
	li $t0, 4
	lw $t1, -12756($fp)
	mul $t0, $t0, $t1
	sw $t0, -12760($fp)
	lw $t0, -12760($fp)
	lw $t1, -12752($fp)
	add $t0, $t0, $t1
	sw $t0, -12764($fp)
	lw $t0, -12764($fp)
	lw $t1, 0($t0)
	sw $t1, -12768($fp)
	li $t0, 0
	sw $t0, -12772($fp)
	lw $t0, -3784($fp)
	sw $t0, -12776($fp)
	lw $t0, -4756($fp)
	sw $t0, -12780($fp)
	lw $t1, -12776($fp)
	lw $t2, -12780($fp)
	bge $t1, $t2, label657
	j label658
label657:
	li $t0, 1
	sw $t0, -12772($fp)
label658:
	li $t0, 0
	sw $t0, -12784($fp)
	li $t0, 0
	sw $t0, -12788($fp)
	li $t0, 12964
	sw $t0, -12792($fp)
	lw $t0, -3796($fp)
	sw $t0, -12796($fp)
	lw $t1, -12792($fp)
	lw $t2, -12796($fp)
	bne $t1, $t2, label661
	j label662
label661:
	li $t0, 1
	sw $t0, -12788($fp)
label662:
	li $t0, 62282
	sw $t0, -12800($fp)
	lw $t1, -12788($fp)
	lw $t2, -12800($fp)
	beq $t1, $t2, label659
	j label660
label659:
	li $t0, 1
	sw $t0, -12784($fp)
label660:
	addi $sp, $sp, -4
	lw $t0, -12716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12784($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12804($fp)
	addi $sp, $sp, 24
	lw $t1, -12804($fp)
	li $t2, 0
	bne $t1, $t2, label651
	j label650
label650:
	li $t0, 1
	sw $t0, -12712($fp)
label651:
	addi $sp, $sp, -4
	lw $t0, -12664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12712($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12808($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -12008
	sw $t0, -12812($fp)
	lw $t0, -4264($fp)
	sw $t0, -12816($fp)
	li $t0, 4
	lw $t1, -12816($fp)
	mul $t0, $t0, $t1
	sw $t0, -12820($fp)
	lw $t0, -12820($fp)
	lw $t1, -12812($fp)
	add $t0, $t0, $t1
	sw $t0, -12824($fp)
	lw $t0, -12824($fp)
	lw $t1, 0($t0)
	sw $t1, -12828($fp)
	li $t0, 0
	lw $t1, -12828($fp)
	sub $t0, $t0, $t1
	sw $t0, -12832($fp)
	addi $sp, $sp, -4
	lw $t0, -12556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12832($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12836($fp)
	addi $sp, $sp, 24
	lw $t0, -3772($fp)
	sw $t0, -12840($fp)
	li $t0, 0
	lw $t1, -12840($fp)
	sub $t0, $t0, $t1
	sw $t0, -12844($fp)
	li $t0, 46492
	sw $t0, -12848($fp)
	lw $t0, -12848($fp)
	sw $t0, -3928($fp)
	lw $t0, -3928($fp)
	sw $t0, -12852($fp)
	li $t0, 0
	sw $t0, -12856($fp)
	addi $t0, $fp, -11980
	sw $t0, -12860($fp)
	lw $t0, -2188($fp)
	sw $t0, -12864($fp)
	li $t0, 4
	lw $t1, -12864($fp)
	mul $t0, $t0, $t1
	sw $t0, -12868($fp)
	lw $t0, -12868($fp)
	lw $t1, -12860($fp)
	add $t0, $t0, $t1
	sw $t0, -12872($fp)
	lw $t0, -12872($fp)
	lw $t1, 0($t0)
	sw $t1, -12876($fp)
	lw $t1, -12876($fp)
	li $t2, 0
	bne $t1, $t2, label665
	j label664
label665:
	lw $t0, -2020($fp)
	sw $t0, -12880($fp)
	lw $t1, -12880($fp)
	li $t2, 0
	bne $t1, $t2, label663
	j label664
label663:
	li $t0, 1
	sw $t0, -12856($fp)
label664:
	li $t0, 0
	sw $t0, -12884($fp)
	lw $t0, -2392($fp)
	sw $t0, -12888($fp)
	li $t0, 51426
	sw $t0, -12892($fp)
	lw $t1, -12888($fp)
	lw $t2, -12892($fp)
	bge $t1, $t2, label666
	j label667
label666:
	li $t0, 1
	sw $t0, -12884($fp)
label667:
	li $t0, 0
	sw $t0, -12896($fp)
	lw $t0, -4684($fp)
	sw $t0, -12900($fp)
	lw $t1, -12900($fp)
	li $t2, 0
	bne $t1, $t2, label669
	j label668
label668:
	li $t0, 1
	sw $t0, -12896($fp)
label669:
	li $t0, 0
	lw $t1, -12896($fp)
	sub $t0, $t0, $t1
	sw $t0, -12904($fp)
	li $t0, 0
	sw $t0, -12908($fp)
	lw $t0, -2392($fp)
	sw $t0, -12912($fp)
	li $t0, 40935
	sw $t0, -12916($fp)
	lw $t0, -12912($fp)
	lw $t1, -12916($fp)
	mul $t0, $t0, $t1
	sw $t0, -12920($fp)
	lw $t1, -12920($fp)
	li $t2, 0
	bne $t1, $t2, label670
	j label672
label672:
	lw $t0, -4732($fp)
	sw $t0, -12924($fp)
	lw $t1, -12924($fp)
	li $t2, 0
	bne $t1, $t2, label670
	j label671
label670:
	li $t0, 1
	sw $t0, -12908($fp)
label671:
	lw $t0, -3760($fp)
	sw $t0, -12928($fp)
	li $t0, 57750
	sw $t0, -12932($fp)
	lw $t0, -12932($fp)
	sw $t0, -4252($fp)
	lw $t0, -4252($fp)
	sw $t0, -12936($fp)
	addi $sp, $sp, -4
	lw $t0, -12884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12936($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12940($fp)
	addi $sp, $sp, 24
	li $t0, 7791
	sw $t0, -12944($fp)
	lw $t0, -12944($fp)
	sw $t0, -4744($fp)
	lw $t0, -4744($fp)
	sw $t0, -12948($fp)
	li $t0, 0
	sw $t0, -12952($fp)
	lw $t0, 8($fp)
	sw $t0, -12956($fp)
	li $t0, 29654
	sw $t0, -12960($fp)
	lw $t1, -12956($fp)
	lw $t2, -12960($fp)
	bgt $t1, $t2, label673
	j label675
label675:
	lw $t0, -1492($fp)
	sw $t0, -12964($fp)
	lw $t1, -12964($fp)
	li $t2, 0
	bne $t1, $t2, label673
	j label674
label673:
	li $t0, 1
	sw $t0, -12952($fp)
label674:
	addi $sp, $sp, -4
	lw $t0, -12852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12952($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12968($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -12972($fp)
	lw $t0, -4348($fp)
	sw $t0, -12976($fp)
	lw $t1, -12976($fp)
	li $t2, 0
	bne $t1, $t2, label678
	j label677
label678:
	lw $t0, -12036($fp)
	sw $t0, -12980($fp)
	lw $t1, -12980($fp)
	li $t2, 0
	bne $t1, $t2, label676
	j label677
label676:
	li $t0, 1
	sw $t0, -12972($fp)
label677:
	li $t0, 0
	sw $t0, -12984($fp)
	li $t0, 0
	sw $t0, -12988($fp)
	li $t0, 49798
	sw $t0, -12992($fp)
	li $t0, 9636
	sw $t0, -12996($fp)
	lw $t1, -12992($fp)
	lw $t2, -12996($fp)
	bne $t1, $t2, label681
	j label682
label681:
	li $t0, 1
	sw $t0, -12988($fp)
label682:
	li $t0, 25668
	sw $t0, -13000($fp)
	lw $t1, -12988($fp)
	lw $t2, -13000($fp)
	bne $t1, $t2, label679
	j label680
label679:
	li $t0, 1
	sw $t0, -12984($fp)
label680:
	lw $t0, -4300($fp)
	sw $t0, -13004($fp)
	li $t0, 56504
	sw $t0, -13008($fp)
	lw $t0, -13004($fp)
	lw $t1, -13008($fp)
	add $t0, $t0, $t1
	sw $t0, -13012($fp)
	li $t0, 47698
	sw $t0, -13016($fp)
	lw $t0, -13012($fp)
	lw $t1, -13016($fp)
	add $t0, $t0, $t1
	sw $t0, -13020($fp)
	addi $sp, $sp, -4
	lw $t0, -12844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13020($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13024($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -13028($fp)
	li $t0, 5971
	sw $t0, -13032($fp)
	lw $t1, -13032($fp)
	li $t2, 0
	bne $t1, $t2, label683
	j label684
label683:
	li $t0, 1
	sw $t0, -13028($fp)
label684:
	lw $t0, -3748($fp)
	sw $t0, -13036($fp)
	addi $sp, $sp, -4
	lw $t0, -12552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13036($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13040($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -13044($fp)
	li $t0, 45222
	sw $t0, -13048($fp)
	lw $t0, -2824($fp)
	sw $t0, -13052($fp)
	lw $t0, -13048($fp)
	lw $t1, -13052($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13056($fp)
	lw $t0, -10356($fp)
	sw $t0, -13060($fp)
	lw $t1, -13056($fp)
	lw $t2, -13060($fp)
	bgt $t1, $t2, label685
	j label686
label685:
	li $t0, 1
	sw $t0, -13044($fp)
label686:
	lw $t0, -12024($fp)
	sw $t0, -13064($fp)
	lw $t0, -2800($fp)
	sw $t0, -13068($fp)
	lw $t0, -13064($fp)
	lw $t1, -13068($fp)
	mul $t0, $t0, $t1
	sw $t0, -13072($fp)
	li $t0, 38576
	sw $t0, -13076($fp)
	lw $t0, -13072($fp)
	lw $t1, -13076($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13080($fp)
	addi $sp, $sp, -4
	lw $t0, -12516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13080($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13084($fp)
	addi $sp, $sp, 24
	lw $t1, -13084($fp)
	li $t2, 0
	bne $t1, $t2, label617
	j label616
label617:
	lw $t0, -12360($fp)
	sw $t0, -13088($fp)
	lw $t0, -2200($fp)
	sw $t0, -13092($fp)
	li $t0, 0
	lw $t1, -13092($fp)
	sub $t0, $t0, $t1
	sw $t0, -13096($fp)
	lw $t1, -13088($fp)
	lw $t2, -13096($fp)
	bne $t1, $t2, label615
	j label616
label615:
	li $t0, 1
	sw $t0, -12416($fp)
label616:
label687:
	li $t0, 0
	sw $t0, -13100($fp)
	lw $t0, -3868($fp)
	sw $t0, -13104($fp)
	li $t0, 64148
	sw $t0, -13108($fp)
	lw $t0, -13104($fp)
	lw $t1, -13108($fp)
	mul $t0, $t0, $t1
	sw $t0, -13112($fp)
	li $t0, 26593
	sw $t0, -13116($fp)
	lw $t0, -13112($fp)
	lw $t1, -13116($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13120($fp)
	li $t0, 0
	sw $t0, -13124($fp)
	lw $t0, -3892($fp)
	sw $t0, -13128($fp)
	lw $t1, -13128($fp)
	li $t2, 0
	bne $t1, $t2, label693
	j label692
label692:
	li $t0, 1
	sw $t0, -13124($fp)
label693:
	lw $t0, -13120($fp)
	lw $t1, -13124($fp)
	add $t0, $t0, $t1
	sw $t0, -13132($fp)
	li $t0, 10869
	sw $t0, -13136($fp)
	li $t0, 45104
	sw $t0, -13140($fp)
	lw $t0, -13136($fp)
	lw $t1, -13140($fp)
	mul $t0, $t0, $t1
	sw $t0, -13144($fp)
	li $t0, 39557
	sw $t0, -13148($fp)
	lw $t0, -13144($fp)
	lw $t1, -13148($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13152($fp)
	lw $t1, -13132($fp)
	lw $t2, -13152($fp)
	bge $t1, $t2, label690
	j label691
label690:
	li $t0, 1
	sw $t0, -13100($fp)
label691:
	lw $t0, -10560($fp)
	sw $t0, -13156($fp)
	lw $t1, -13100($fp)
	lw $t2, -13156($fp)
	bgt $t1, $t2, label688
	j label689
label688:
	lw $t0, -4264($fp)
	sw $t0, -13160($fp)
	li $t0, 0
	lw $t1, -13160($fp)
	sub $t0, $t0, $t1
	sw $t0, -13164($fp)
	j label687
label689:
	li $t0, 0
	sw $t0, -13168($fp)
	lw $t0, -4012($fp)
	sw $t0, -13172($fp)
	lw $t1, -13172($fp)
	li $t2, 0
	bne $t1, $t2, label695
	j label694
label694:
	li $t0, 1
	sw $t0, -13168($fp)
label695:
	li $t0, 30318
	sw $t0, -13176($fp)
	lw $t0, -13168($fp)
	lw $t1, -13176($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13180($fp)
	li $t0, 0
	lw $t1, -13180($fp)
	sub $t0, $t0, $t1
	sw $t0, -13184($fp)
	lw $t0, -13184($fp)
	sw $t0, -3892($fp)
	lw $t0, -3892($fp)
	sw $t0, -13188($fp)
	li $t0, 0
	sw $t0, -13192($fp)
	li $t0, 15240
	sw $t0, -13196($fp)
	lw $t0, -13196($fp)
	sw $t0, -3940($fp)
	lw $t0, -3940($fp)
	sw $t0, -13200($fp)
	li $t0, 40179
	sw $t0, -13204($fp)
	lw $t0, -13204($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -13208($fp)
	li $t0, 0
	sw $t0, -13212($fp)
	li $t0, 0
	sw $t0, -13216($fp)
	li $t0, 57656
	sw $t0, -13220($fp)
	lw $t0, -3808($fp)
	sw $t0, -13224($fp)
	lw $t1, -13220($fp)
	lw $t2, -13224($fp)
	bne $t1, $t2, label700
	j label701
label700:
	li $t0, 1
	sw $t0, -13216($fp)
label701:
	lw $t0, 12($fp)
	sw $t0, -13228($fp)
	lw $t1, -13216($fp)
	lw $t2, -13228($fp)
	bne $t1, $t2, label698
	j label699
label698:
	li $t0, 1
	sw $t0, -13212($fp)
label699:
	li $t0, 0
	sw $t0, -13232($fp)
	lw $t0, -3928($fp)
	sw $t0, -13236($fp)
	lw $t1, -13236($fp)
	li $t2, 0
	bne $t1, $t2, label705
	j label704
label705:
	li $t0, 37233
	sw $t0, -13240($fp)
	lw $t1, -13240($fp)
	li $t2, 0
	bne $t1, $t2, label702
	j label704
label704:
	lw $t0, -3520($fp)
	sw $t0, -13244($fp)
	lw $t1, -13244($fp)
	li $t2, 0
	bne $t1, $t2, label702
	j label703
label702:
	li $t0, 1
	sw $t0, -13232($fp)
label703:
	li $t0, 0
	sw $t0, -13248($fp)
	li $t0, 29803
	sw $t0, -13252($fp)
	lw $t0, -2836($fp)
	sw $t0, -13256($fp)
	lw $t1, -13252($fp)
	lw $t2, -13256($fp)
	bne $t1, $t2, label706
	j label708
label708:
	lw $t0, -2140($fp)
	sw $t0, -13260($fp)
	lw $t1, -13260($fp)
	li $t2, 0
	bne $t1, $t2, label706
	j label707
label706:
	li $t0, 1
	sw $t0, -13248($fp)
label707:
	li $t0, 0
	sw $t0, -13264($fp)
	li $t0, 0
	sw $t0, -13268($fp)
	li $t0, 38807
	sw $t0, -13272($fp)
	li $t0, 43441
	sw $t0, -13276($fp)
	lw $t1, -13272($fp)
	lw $t2, -13276($fp)
	bge $t1, $t2, label711
	j label712
label711:
	li $t0, 1
	sw $t0, -13268($fp)
label712:
	lw $t0, -4012($fp)
	sw $t0, -13280($fp)
	lw $t1, -13268($fp)
	lw $t2, -13280($fp)
	bne $t1, $t2, label709
	j label710
label709:
	li $t0, 1
	sw $t0, -13264($fp)
label710:
	lw $t0, -3916($fp)
	sw $t0, -13284($fp)
	li $t0, 0
	lw $t1, -13284($fp)
	sub $t0, $t0, $t1
	sw $t0, -13288($fp)
	li $t0, 35786
	sw $t0, -13292($fp)
	lw $t0, -13288($fp)
	lw $t1, -13292($fp)
	add $t0, $t0, $t1
	sw $t0, -13296($fp)
	li $t0, 0
	sw $t0, -13300($fp)
	li $t0, 18182
	sw $t0, -13304($fp)
	lw $t0, -3904($fp)
	sw $t0, -13308($fp)
	lw $t0, -13304($fp)
	lw $t1, -13308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -13312($fp)
	li $t0, 22794
	sw $t0, -13316($fp)
	lw $t1, -13312($fp)
	lw $t2, -13316($fp)
	blt $t1, $t2, label713
	j label714
label713:
	li $t0, 1
	sw $t0, -13300($fp)
label714:
	li $t0, 0
	sw $t0, -13320($fp)
	lw $t0, -700($fp)
	sw $t0, -13324($fp)
	lw $t1, -13324($fp)
	li $t2, 0
	bne $t1, $t2, label718
	j label716
label718:
	li $t0, 23324
	sw $t0, -13328($fp)
	lw $t1, -13328($fp)
	li $t2, 0
	bne $t1, $t2, label717
	j label716
label717:
	li $t0, 42509
	sw $t0, -13332($fp)
	lw $t1, -13332($fp)
	li $t2, 0
	bne $t1, $t2, label715
	j label716
label715:
	li $t0, 1
	sw $t0, -13320($fp)
label716:
	addi $sp, $sp, -4
	lw $t0, -13248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13320($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13336($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -13200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13336($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13340($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -13344($fp)
	li $t0, 64768
	sw $t0, -13348($fp)
	li $t0, 56562
	sw $t0, -13352($fp)
	lw $t0, -13348($fp)
	lw $t1, -13352($fp)
	sub $t0, $t0, $t1
	sw $t0, -13356($fp)
	li $t0, 62230
	sw $t0, -13360($fp)
	lw $t1, -13356($fp)
	lw $t2, -13360($fp)
	beq $t1, $t2, label719
	j label720
label719:
	li $t0, 1
	sw $t0, -13344($fp)
label720:
	li $t0, 0
	sw $t0, -13364($fp)
	li $t0, 0
	sw $t0, -13368($fp)
	li $t0, 43228
	sw $t0, -13372($fp)
	li $t0, 39375
	sw $t0, -13376($fp)
	lw $t1, -13372($fp)
	lw $t2, -13376($fp)
	bge $t1, $t2, label723
	j label724
label723:
	li $t0, 1
	sw $t0, -13368($fp)
label724:
	li $t0, 55832
	sw $t0, -13380($fp)
	lw $t1, -13368($fp)
	lw $t2, -13380($fp)
	bge $t1, $t2, label721
	j label722
label721:
	li $t0, 1
	sw $t0, -13364($fp)
label722:
	li $t0, 9567
	sw $t0, -13384($fp)
	li $t0, 0
	lw $t1, -13384($fp)
	sub $t0, $t0, $t1
	sw $t0, -13388($fp)
	lw $t0, -2860($fp)
	sw $t0, -13392($fp)
	lw $t0, -13388($fp)
	lw $t1, -13392($fp)
	add $t0, $t0, $t1
	sw $t0, -13396($fp)
	li $t0, 0
	sw $t0, -13400($fp)
	lw $t0, -3952($fp)
	sw $t0, -13404($fp)
	li $t0, 31823
	sw $t0, -13408($fp)
	lw $t1, -13404($fp)
	lw $t2, -13408($fp)
	ble $t1, $t2, label727
	j label726
label727:
	lw $t0, -2368($fp)
	sw $t0, -13412($fp)
	lw $t1, -13412($fp)
	li $t2, 0
	bne $t1, $t2, label725
	j label726
label725:
	li $t0, 1
	sw $t0, -13400($fp)
label726:
	addi $t0, $fp, -280
	sw $t0, -13416($fp)
	li $t0, 5
	sw $t0, -13420($fp)
	li $t0, 4
	lw $t1, -13420($fp)
	mul $t0, $t0, $t1
	sw $t0, -13424($fp)
	lw $t0, -13424($fp)
	lw $t1, -13416($fp)
	add $t0, $t0, $t1
	sw $t0, -13428($fp)
	lw $t0, -13428($fp)
	lw $t1, 0($t0)
	sw $t1, -13432($fp)
	addi $sp, $sp, -4
	lw $t0, -13344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -13432($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -13436($fp)
	addi $sp, $sp, 24
	lw $t1, -13340($fp)
	lw $t2, -13436($fp)
	bne $t1, $t2, label696
	j label697
label696:
	li $t0, 1
	sw $t0, -13192($fp)
label697:
	li $t0, 0
	sw $t0, -13440($fp)
	li $t0, 50427
	sw $t0, -13444($fp)
	lw $t1, -13444($fp)
	li $t2, 0
	bne $t1, $t2, label729
	j label728
label728:
	li $t0, 1
	sw $t0, -13440($fp)
label729:
	lw $t0, -4756($fp)
	sw $t0, -13448($fp)
	lw $t0, -13440($fp)
	lw $t1, -13448($fp)
	mul $t0, $t0, $t1
	sw $t0, -13452($fp)
	lw $t0, -12024($fp)
	sw $t0, -13456($fp)
	lw $t0, -13456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12036($fp)
	sw $t0, -13460($fp)
	lw $t0, -13460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -11980
	sw $t0, -13464($fp)
	li $t0, 0
	sw $t0, -13468($fp)
	li $t0, 4
	lw $t1, -13468($fp)
	mul $t0, $t0, $t1
	sw $t0, -13472($fp)
	lw $t0, -13472($fp)
	lw $t1, -13464($fp)
	add $t0, $t0, $t1
	sw $t0, -13476($fp)
	lw $t0, -13476($fp)
	lw $t1, 0($t0)
	sw $t1, -13480($fp)
	lw $t0, -13480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -11980
	sw $t0, -13484($fp)
	li $t0, 1
	sw $t0, -13488($fp)
	li $t0, 4
	lw $t1, -13488($fp)
	mul $t0, $t0, $t1
	sw $t0, -13492($fp)
	lw $t0, -13492($fp)
	lw $t1, -13484($fp)
	add $t0, $t0, $t1
	sw $t0, -13496($fp)
	lw $t0, -13496($fp)
	lw $t1, 0($t0)
	sw $t1, -13500($fp)
	lw $t0, -13500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -11980
	sw $t0, -13504($fp)
	li $t0, 2
	sw $t0, -13508($fp)
	li $t0, 4
	lw $t1, -13508($fp)
	mul $t0, $t0, $t1
	sw $t0, -13512($fp)
	lw $t0, -13512($fp)
	lw $t1, -13504($fp)
	add $t0, $t0, $t1
	sw $t0, -13516($fp)
	lw $t0, -13516($fp)
	lw $t1, 0($t0)
	sw $t1, -13520($fp)
	lw $t0, -13520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -11980
	sw $t0, -13524($fp)
	li $t0, 3
	sw $t0, -13528($fp)
	li $t0, 4
	lw $t1, -13528($fp)
	mul $t0, $t0, $t1
	sw $t0, -13532($fp)
	lw $t0, -13532($fp)
	lw $t1, -13524($fp)
	add $t0, $t0, $t1
	sw $t0, -13536($fp)
	lw $t0, -13536($fp)
	lw $t1, 0($t0)
	sw $t1, -13540($fp)
	lw $t0, -13540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -11980
	sw $t0, -13544($fp)
	li $t0, 4
	sw $t0, -13548($fp)
	li $t0, 4
	lw $t1, -13548($fp)
	mul $t0, $t0, $t1
	sw $t0, -13552($fp)
	lw $t0, -13552($fp)
	lw $t1, -13544($fp)
	add $t0, $t0, $t1
	sw $t0, -13556($fp)
	lw $t0, -13556($fp)
	lw $t1, 0($t0)
	sw $t1, -13560($fp)
	lw $t0, -13560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12008
	sw $t0, -13564($fp)
	li $t0, 0
	sw $t0, -13568($fp)
	li $t0, 4
	lw $t1, -13568($fp)
	mul $t0, $t0, $t1
	sw $t0, -13572($fp)
	lw $t0, -13572($fp)
	lw $t1, -13564($fp)
	add $t0, $t0, $t1
	sw $t0, -13576($fp)
	lw $t0, -13576($fp)
	lw $t1, 0($t0)
	sw $t1, -13580($fp)
	lw $t0, -13580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12008
	sw $t0, -13584($fp)
	li $t0, 1
	sw $t0, -13588($fp)
	li $t0, 4
	lw $t1, -13588($fp)
	mul $t0, $t0, $t1
	sw $t0, -13592($fp)
	lw $t0, -13592($fp)
	lw $t1, -13584($fp)
	add $t0, $t0, $t1
	sw $t0, -13596($fp)
	lw $t0, -13596($fp)
	lw $t1, 0($t0)
	sw $t1, -13600($fp)
	lw $t0, -13600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12008
	sw $t0, -13604($fp)
	li $t0, 2
	sw $t0, -13608($fp)
	li $t0, 4
	lw $t1, -13608($fp)
	mul $t0, $t0, $t1
	sw $t0, -13612($fp)
	lw $t0, -13612($fp)
	lw $t1, -13604($fp)
	add $t0, $t0, $t1
	sw $t0, -13616($fp)
	lw $t0, -13616($fp)
	lw $t1, 0($t0)
	sw $t1, -13620($fp)
	lw $t0, -13620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12008
	sw $t0, -13624($fp)
	li $t0, 3
	sw $t0, -13628($fp)
	li $t0, 4
	lw $t1, -13628($fp)
	mul $t0, $t0, $t1
	sw $t0, -13632($fp)
	lw $t0, -13632($fp)
	lw $t1, -13624($fp)
	add $t0, $t0, $t1
	sw $t0, -13636($fp)
	lw $t0, -13636($fp)
	lw $t1, 0($t0)
	sw $t1, -13640($fp)
	lw $t0, -13640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12008
	sw $t0, -13644($fp)
	li $t0, 4
	sw $t0, -13648($fp)
	li $t0, 4
	lw $t1, -13648($fp)
	mul $t0, $t0, $t1
	sw $t0, -13652($fp)
	lw $t0, -13652($fp)
	lw $t1, -13644($fp)
	add $t0, $t0, $t1
	sw $t0, -13656($fp)
	lw $t0, -13656($fp)
	lw $t1, 0($t0)
	sw $t1, -13660($fp)
	lw $t0, -13660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12008
	sw $t0, -13664($fp)
	li $t0, 5
	sw $t0, -13668($fp)
	li $t0, 4
	lw $t1, -13668($fp)
	mul $t0, $t0, $t1
	sw $t0, -13672($fp)
	lw $t0, -13672($fp)
	lw $t1, -13664($fp)
	add $t0, $t0, $t1
	sw $t0, -13676($fp)
	lw $t0, -13676($fp)
	lw $t1, 0($t0)
	sw $t1, -13680($fp)
	lw $t0, -13680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12008
	sw $t0, -13684($fp)
	li $t0, 6
	sw $t0, -13688($fp)
	li $t0, 4
	lw $t1, -13688($fp)
	mul $t0, $t0, $t1
	sw $t0, -13692($fp)
	lw $t0, -13692($fp)
	lw $t1, -13684($fp)
	add $t0, $t0, $t1
	sw $t0, -13696($fp)
	lw $t0, -13696($fp)
	lw $t1, 0($t0)
	sw $t1, -13700($fp)
	lw $t0, -13700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12336($fp)
	sw $t0, -13704($fp)
	lw $t0, -13704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12348($fp)
	sw $t0, -13708($fp)
	lw $t0, -13708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12360($fp)
	sw $t0, -13712($fp)
	lw $t0, -13712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12016
	sw $t0, -13716($fp)
	li $t0, 0
	sw $t0, -13720($fp)
	li $t0, 4
	lw $t1, -13720($fp)
	mul $t0, $t0, $t1
	sw $t0, -13724($fp)
	lw $t0, -13724($fp)
	lw $t1, -13716($fp)
	add $t0, $t0, $t1
	sw $t0, -13728($fp)
	lw $t0, -13728($fp)
	lw $t1, 0($t0)
	sw $t1, -13732($fp)
	lw $t0, -13732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12016
	sw $t0, -13736($fp)
	li $t0, 1
	sw $t0, -13740($fp)
	li $t0, 4
	lw $t1, -13740($fp)
	mul $t0, $t0, $t1
	sw $t0, -13744($fp)
	lw $t0, -13744($fp)
	lw $t1, -13736($fp)
	add $t0, $t0, $t1
	sw $t0, -13748($fp)
	lw $t0, -13748($fp)
	lw $t1, 0($t0)
	sw $t1, -13752($fp)
	lw $t0, -13752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -13756($fp)
	li $t0, 0
	sw $t0, -13760($fp)
	li $t0, 16005
	sw $t0, -13764($fp)
	li $t0, 60842
	sw $t0, -13768($fp)
	lw $t1, -13764($fp)
	lw $t2, -13768($fp)
	bge $t1, $t2, label732
	j label733
label732:
	li $t0, 1
	sw $t0, -13760($fp)
label733:
	addi $t0, $fp, -12016
	sw $t0, -13772($fp)
	lw $t0, -3868($fp)
	sw $t0, -13776($fp)
	li $t0, 4
	lw $t1, -13776($fp)
	mul $t0, $t0, $t1
	sw $t0, -13780($fp)
	lw $t0, -13780($fp)
	lw $t1, -13772($fp)
	add $t0, $t0, $t1
	sw $t0, -13784($fp)
	lw $t0, -13784($fp)
	lw $t1, 0($t0)
	sw $t1, -13788($fp)
	lw $t0, -4048($fp)
	sw $t0, -13792($fp)
	lw $t0, -13788($fp)
	lw $t1, -13792($fp)
	mul $t0, $t0, $t1
	sw $t0, -13796($fp)
	lw $t1, -13760($fp)
	lw $t2, -13796($fp)
	beq $t1, $t2, label730
	j label731
label730:
	li $t0, 1
	sw $t0, -13756($fp)
label731:
	lw $ra, -4($fp)
	lw $v0, -13756($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label612
label611:
	li $t0, 0
	sw $t0, -13800($fp)
	addi $t0, $fp, -408
	sw $t0, -13804($fp)
	lw $t0, -1480($fp)
	sw $t0, -13808($fp)
	li $t0, 4
	lw $t1, -13808($fp)
	mul $t0, $t0, $t1
	sw $t0, -13812($fp)
	lw $t0, -13812($fp)
	lw $t1, -13804($fp)
	add $t0, $t0, $t1
	sw $t0, -13816($fp)
	lw $t0, -13816($fp)
	lw $t1, 0($t0)
	sw $t1, -13820($fp)
	lw $t1, -13820($fp)
	li $t2, 0
	bne $t1, $t2, label738
	j label737
label737:
	li $t0, 1
	sw $t0, -13800($fp)
label738:
	lw $t0, -13800($fp)
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	sw $t0, -13824($fp)
	lw $t1, -13824($fp)
	li $t2, 0
	bne $t1, $t2, label734
	j label735
label734:
	addi $t0, $fp, -220
	sw $t0, -13828($fp)
	lw $t0, -2164($fp)
	sw $t0, -13832($fp)
	li $t0, 11484
	sw $t0, -13836($fp)
	lw $t0, -13832($fp)
	lw $t1, -13836($fp)
	sub $t0, $t0, $t1
	sw $t0, -13840($fp)
	li $t0, 4
	lw $t1, -13840($fp)
	mul $t0, $t0, $t1
	sw $t0, -13844($fp)
	lw $t0, -13844($fp)
	lw $t1, -13828($fp)
	add $t0, $t0, $t1
	sw $t0, -13848($fp)
	lw $t0, -13848($fp)
	lw $t1, 0($t0)
	sw $t1, -13852($fp)
	li $t0, 0
	lw $t1, -13852($fp)
	sub $t0, $t0, $t1
	sw $t0, -13856($fp)
	lw $t1, -13856($fp)
	li $t2, 0
	bne $t1, $t2, label739
	j label740
label739:
	addi $t0, $fp, -80
	sw $t0, -13860($fp)
	addi $t0, $fp, -408
	sw $t0, -13864($fp)
	li $t0, 0
	sw $t0, -13868($fp)
	li $t0, 4
	lw $t1, -13868($fp)
	mul $t0, $t0, $t1
	sw $t0, -13872($fp)
	lw $t0, -13872($fp)
	lw $t1, -13864($fp)
	add $t0, $t0, $t1
	sw $t0, -13876($fp)
	lw $t0, -13876($fp)
	lw $t1, 0($t0)
	sw $t1, -13880($fp)
	lw $t0, -10560($fp)
	sw $t0, -13884($fp)
	lw $t0, -13880($fp)
	lw $t1, -13884($fp)
	add $t0, $t0, $t1
	sw $t0, -13888($fp)
	li $t0, 4
	lw $t1, -13888($fp)
	mul $t0, $t0, $t1
	sw $t0, -13892($fp)
	lw $t0, -13892($fp)
	lw $t1, -13860($fp)
	add $t0, $t0, $t1
	sw $t0, -13896($fp)
	lw $t0, -13896($fp)
	lw $t1, 0($t0)
	sw $t1, -13900($fp)
	lw $t0, -1060($fp)
	sw $t0, -13904($fp)
	lw $t0, -13900($fp)
	lw $t1, -13904($fp)
	sub $t0, $t0, $t1
	sw $t0, -13908($fp)
	lw $ra, -4($fp)
	lw $v0, -13908($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label740:
label735:
label612:
label606:
	li $t0, 51042
	sw $t0, -13912($fp)
	lw $t0, -13912($fp)
	sw $t0, -13916($fp)
	lw $t0, -13916($fp)
	sw $t0, -13920($fp)
	li $t0, 34489
	sw $t0, -13924($fp)
	lw $t0, -13924($fp)
	sw $t0, -13928($fp)
	lw $t0, -13928($fp)
	sw $t0, -13932($fp)
	li $t0, 5192
	sw $t0, -13936($fp)
	lw $t0, -13936($fp)
	sw $t0, -13940($fp)
	lw $t0, -13940($fp)
	sw $t0, -13944($fp)
	li $t0, 8830
	sw $t0, -13948($fp)
	lw $t0, -13948($fp)
	sw $t0, -13952($fp)
	lw $t0, -13952($fp)
	sw $t0, -13956($fp)
	li $t0, 11463
	sw $t0, -13960($fp)
	lw $t0, -13960($fp)
	sw $t0, -13964($fp)
	lw $t0, -13964($fp)
	sw $t0, -13968($fp)
	li $t0, 23374
	sw $t0, -13972($fp)
	lw $t0, -13972($fp)
	sw $t0, -13976($fp)
	lw $t0, -13976($fp)
	sw $t0, -13980($fp)
	li $t0, 31625
	sw $t0, -13984($fp)
	lw $t0, -13984($fp)
	sw $t0, -13988($fp)
	lw $t0, -13988($fp)
	sw $t0, -13992($fp)
	li $t0, 47249
	sw $t0, -13996($fp)
	lw $t0, -13996($fp)
	sw $t0, -14000($fp)
	lw $t0, -14000($fp)
	sw $t0, -14004($fp)
	li $t0, 62182
	sw $t0, -14008($fp)
	li $t0, 0
	sw $t0, -14012($fp)
	li $t0, 44925
	sw $t0, -14016($fp)
	li $t0, 16452
	sw $t0, -14020($fp)
	lw $t1, -14016($fp)
	lw $t2, -14020($fp)
	beq $t1, $t2, label745
	j label747
label747:
	li $t0, 57641
	sw $t0, -14024($fp)
	lw $t1, -14024($fp)
	li $t2, 0
	bne $t1, $t2, label745
	j label746
label745:
	li $t0, 1
	sw $t0, -14012($fp)
label746:
	addi $t0, $fp, -444
	sw $t0, -14028($fp)
	lw $t0, -14000($fp)
	sw $t0, -14032($fp)
	li $t0, 4
	lw $t1, -14032($fp)
	mul $t0, $t0, $t1
	sw $t0, -14036($fp)
	lw $t0, -14036($fp)
	lw $t1, -14028($fp)
	add $t0, $t0, $t1
	sw $t0, -14040($fp)
	lw $t0, -14040($fp)
	lw $t1, 0($t0)
	sw $t1, -14044($fp)
	li $t0, 0
	sw $t0, -14048($fp)
	addi $t0, $fp, -448
	sw $t0, -14052($fp)
	li $t0, 0
	sw $t0, -14056($fp)
	li $t0, 4
	lw $t1, -14056($fp)
	mul $t0, $t0, $t1
	sw $t0, -14060($fp)
	lw $t0, -14060($fp)
	lw $t1, -14052($fp)
	add $t0, $t0, $t1
	sw $t0, -14064($fp)
	lw $t0, -14064($fp)
	lw $t1, 0($t0)
	sw $t1, -14068($fp)
	lw $t1, -14068($fp)
	li $t2, 0
	bne $t1, $t2, label749
	j label748
label748:
	li $t0, 1
	sw $t0, -14048($fp)
label749:
	lw $t0, -14000($fp)
	sw $t0, -14072($fp)
	li $t0, 61814
	sw $t0, -14076($fp)
	lw $t0, -14072($fp)
	lw $t1, -14076($fp)
	mul $t0, $t0, $t1
	sw $t0, -14080($fp)
	li $t0, 4514
	sw $t0, -14084($fp)
	lw $t0, -14080($fp)
	lw $t1, -14084($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14088($fp)
	li $t0, 0
	sw $t0, -14092($fp)
	li $t0, 0
	sw $t0, -14096($fp)
	li $t0, 9208
	sw $t0, -14100($fp)
	li $t0, 19461
	sw $t0, -14104($fp)
	lw $t0, -14100($fp)
	lw $t1, -14104($fp)
	add $t0, $t0, $t1
	sw $t0, -14108($fp)
	lw $t0, -4300($fp)
	sw $t0, -14112($fp)
	lw $t1, -14108($fp)
	lw $t2, -14112($fp)
	bne $t1, $t2, label753
	j label754
label753:
	li $t0, 1
	sw $t0, -14096($fp)
label754:
	lw $t0, -2824($fp)
	sw $t0, -14116($fp)
	lw $t0, -4288($fp)
	sw $t0, -14120($fp)
	lw $t0, -14116($fp)
	lw $t1, -14120($fp)
	mul $t0, $t0, $t1
	sw $t0, -14124($fp)
	li $t0, 45809
	sw $t0, -14128($fp)
	lw $t0, -14124($fp)
	lw $t1, -14128($fp)
	sub $t0, $t0, $t1
	sw $t0, -14132($fp)
	lw $t0, -13976($fp)
	sw $t0, -14136($fp)
	lw $t0, -13988($fp)
	sw $t0, -14140($fp)
	lw $t0, -14136($fp)
	lw $t1, -14140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14144($fp)
	lw $t0, -3760($fp)
	sw $t0, -14148($fp)
	lw $t0, -14144($fp)
	lw $t1, -14148($fp)
	sub $t0, $t0, $t1
	sw $t0, -14152($fp)
	li $t0, 0
	sw $t0, -14156($fp)
	lw $t0, -4276($fp)
	sw $t0, -14160($fp)
	lw $t1, -14160($fp)
	li $t2, 0
	bne $t1, $t2, label756
	j label755
label755:
	li $t0, 1
	sw $t0, -14156($fp)
label756:
	lw $t0, -3520($fp)
	sw $t0, -14164($fp)
	li $t0, 0
	lw $t1, -14164($fp)
	sub $t0, $t0, $t1
	sw $t0, -14168($fp)
	li $t0, 0
	sw $t0, -14172($fp)
	addi $t0, $fp, -208
	sw $t0, -14176($fp)
	lw $t0, -13964($fp)
	sw $t0, -14180($fp)
	li $t0, 4
	lw $t1, -14180($fp)
	mul $t0, $t0, $t1
	sw $t0, -14184($fp)
	lw $t0, -14184($fp)
	lw $t1, -14176($fp)
	add $t0, $t0, $t1
	sw $t0, -14188($fp)
	lw $t0, -14188($fp)
	lw $t1, 0($t0)
	sw $t1, -14192($fp)
	lw $t1, -14192($fp)
	li $t2, 0
	bne $t1, $t2, label758
	j label757
label757:
	li $t0, 1
	sw $t0, -14172($fp)
label758:
	li $t0, 0
	sw $t0, -14196($fp)
	addi $t0, $fp, -10324
	sw $t0, -14200($fp)
	li $t0, 8
	sw $t0, -14204($fp)
	li $t0, 4
	lw $t1, -14204($fp)
	mul $t0, $t0, $t1
	sw $t0, -14208($fp)
	lw $t0, -14208($fp)
	lw $t1, -14200($fp)
	add $t0, $t0, $t1
	sw $t0, -14212($fp)
	lw $t0, -14212($fp)
	lw $t1, 0($t0)
	sw $t1, -14216($fp)
	lw $t1, -14216($fp)
	li $t2, 0
	bne $t1, $t2, label759
	j label761
label761:
	li $t0, 34570
	sw $t0, -14220($fp)
	lw $t1, -14220($fp)
	li $t2, 0
	bne $t1, $t2, label759
	j label760
label759:
	li $t0, 1
	sw $t0, -14196($fp)
label760:
	addi $t0, $fp, -448
	sw $t0, -14224($fp)
	lw $t0, -4264($fp)
	sw $t0, -14228($fp)
	li $t0, 4
	lw $t1, -14228($fp)
	mul $t0, $t0, $t1
	sw $t0, -14232($fp)
	lw $t0, -14232($fp)
	lw $t1, -14224($fp)
	add $t0, $t0, $t1
	sw $t0, -14236($fp)
	lw $t0, -14236($fp)
	lw $t1, 0($t0)
	sw $t1, -14240($fp)
	lw $t0, -640($fp)
	sw $t0, -14244($fp)
	lw $t0, -14240($fp)
	lw $t1, -14244($fp)
	sub $t0, $t0, $t1
	sw $t0, -14248($fp)
	li $t0, 0
	sw $t0, -14252($fp)
	li $t0, 22218
	sw $t0, -14256($fp)
	li $t0, 35338
	sw $t0, -14260($fp)
	lw $t0, -14256($fp)
	lw $t1, -14260($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14264($fp)
	lw $t0, -13952($fp)
	sw $t0, -14268($fp)
	lw $t1, -14264($fp)
	lw $t2, -14268($fp)
	bge $t1, $t2, label762
	j label763
label762:
	li $t0, 1
	sw $t0, -14252($fp)
label763:
	li $t0, 0
	sw $t0, -14272($fp)
	li $t0, 15407
	sw $t0, -14276($fp)
	lw $t0, -3520($fp)
	sw $t0, -14280($fp)
	lw $t1, -14276($fp)
	lw $t2, -14280($fp)
	beq $t1, $t2, label764
	j label765
label764:
	li $t0, 1
	sw $t0, -14272($fp)
label765:
	li $t0, 0
	sw $t0, -14284($fp)
	addi $t0, $fp, -440
	sw $t0, -14288($fp)
	lw $t0, -1492($fp)
	sw $t0, -14292($fp)
	li $t0, 4
	lw $t1, -14292($fp)
	mul $t0, $t0, $t1
	sw $t0, -14296($fp)
	lw $t0, -14296($fp)
	lw $t1, -14288($fp)
	add $t0, $t0, $t1
	sw $t0, -14300($fp)
	lw $t0, -14300($fp)
	lw $t1, 0($t0)
	sw $t1, -14304($fp)
	lw $t0, -4252($fp)
	sw $t0, -14308($fp)
	lw $t1, -14304($fp)
	lw $t2, -14308($fp)
	bge $t1, $t2, label766
	j label767
label766:
	li $t0, 1
	sw $t0, -14284($fp)
label767:
	addi $sp, $sp, -4
	lw $t0, -14196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14284($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14312($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -14312($fp)
	sub $t0, $t0, $t1
	sw $t0, -14316($fp)
	lw $t0, -4036($fp)
	sw $t0, -14320($fp)
	li $t0, 0
	lw $t1, -14320($fp)
	sub $t0, $t0, $t1
	sw $t0, -14324($fp)
	lw $t0, -4048($fp)
	sw $t0, -14328($fp)
	lw $t0, -14324($fp)
	lw $t1, -14328($fp)
	sub $t0, $t0, $t1
	sw $t0, -14332($fp)
	li $t0, 57646
	sw $t0, -14336($fp)
	addi $sp, $sp, -4
	lw $t0, -14168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14336($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14340($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -14096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14340($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14344($fp)
	addi $sp, $sp, 24
	lw $t1, -14344($fp)
	li $t2, 0
	bne $t1, $t2, label750
	j label752
label752:
	lw $t0, -2836($fp)
	sw $t0, -14348($fp)
	lw $t1, -14348($fp)
	li $t2, 0
	bne $t1, $t2, label750
	j label751
label750:
	li $t0, 1
	sw $t0, -14092($fp)
label751:
	addi $sp, $sp, -4
	lw $t0, -14012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14092($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14352($fp)
	addi $sp, $sp, 24
	li $t0, 12650
	sw $t0, -14356($fp)
	lw $t0, -4024($fp)
	sw $t0, -14360($fp)
	lw $t0, -14356($fp)
	lw $t1, -14360($fp)
	sub $t0, $t0, $t1
	sw $t0, -14364($fp)
	lw $t0, -13940($fp)
	sw $t0, -14368($fp)
	lw $t0, -14364($fp)
	lw $t1, -14368($fp)
	add $t0, $t0, $t1
	sw $t0, -14372($fp)
	li $t0, 49120
	sw $t0, -14376($fp)
	lw $t0, -14376($fp)
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	sw $t0, -14380($fp)
	li $t0, 0
	sw $t0, -14384($fp)
	li $t0, 0
	sw $t0, -14388($fp)
	li $t0, 1650
	sw $t0, -14392($fp)
	lw $t0, -1024($fp)
	sw $t0, -14396($fp)
	lw $t1, -14392($fp)
	lw $t2, -14396($fp)
	ble $t1, $t2, label770
	j label771
label770:
	li $t0, 1
	sw $t0, -14388($fp)
label771:
	li $t0, 51696
	sw $t0, -14400($fp)
	lw $t1, -14388($fp)
	lw $t2, -14400($fp)
	bgt $t1, $t2, label768
	j label769
label768:
	li $t0, 1
	sw $t0, -14384($fp)
label769:
	li $t0, 0
	sw $t0, -14404($fp)
	li $t0, 9530
	sw $t0, -14408($fp)
	lw $t1, -14408($fp)
	li $t2, 0
	bne $t1, $t2, label775
	j label773
label775:
	li $t0, 11516
	sw $t0, -14412($fp)
	lw $t1, -14412($fp)
	li $t2, 0
	bne $t1, $t2, label774
	j label773
label774:
	li $t0, 33879
	sw $t0, -14416($fp)
	lw $t1, -14416($fp)
	li $t2, 0
	bne $t1, $t2, label772
	j label773
label772:
	li $t0, 1
	sw $t0, -14404($fp)
label773:
	addi $sp, $sp, -4
	lw $t0, -14352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14404($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14420($fp)
	addi $sp, $sp, 24
	lw $t0, -14008($fp)
	lw $t1, -14420($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14424($fp)
	li $t0, 50117
	sw $t0, -14428($fp)
	lw $t0, -14424($fp)
	lw $t1, -14428($fp)
	mul $t0, $t0, $t1
	sw $t0, -14432($fp)
	lw $t1, -14432($fp)
	li $t2, 0
	bne $t1, $t2, label742
	j label743
label742:
	li $t0, 0
	sw $t0, -14436($fp)
	li $t0, 25282
	sw $t0, -14440($fp)
	lw $t1, -14440($fp)
	li $t2, 0
	bne $t1, $t2, label778
	j label777
label778:
	li $t0, 0
	sw $t0, -14444($fp)
	li $t0, 3568
	sw $t0, -14448($fp)
	lw $t1, -14448($fp)
	li $t2, 0
	bne $t1, $t2, label779
	j label780
label779:
	li $t0, 1
	sw $t0, -14444($fp)
label780:
	li $t0, 0
	lw $t1, -14444($fp)
	sub $t0, $t0, $t1
	sw $t0, -14452($fp)
	lw $t1, -14452($fp)
	li $t2, 0
	bne $t1, $t2, label776
	j label777
label776:
	li $t0, 1
	sw $t0, -14436($fp)
label777:
	j label744
label743:
	li $t0, 0
	sw $t0, -14456($fp)
	li $t0, 0
	sw $t0, -14460($fp)
	lw $t0, -2476($fp)
	sw $t0, -14464($fp)
	lw $t1, -14464($fp)
	li $t2, 0
	bne $t1, $t2, label784
	j label785
label784:
	li $t0, 1
	sw $t0, -14460($fp)
label785:
	li $t0, 0
	sw $t0, -14468($fp)
	lw $t0, -2260($fp)
	sw $t0, -14472($fp)
	lw $t0, -2188($fp)
	sw $t0, -14476($fp)
	lw $t1, -14472($fp)
	lw $t2, -14476($fp)
	bge $t1, $t2, label786
	j label788
label788:
	li $t0, 4601
	sw $t0, -14480($fp)
	lw $t1, -14480($fp)
	li $t2, 0
	bne $t1, $t2, label786
	j label787
label786:
	li $t0, 1
	sw $t0, -14468($fp)
label787:
	li $t0, 0
	sw $t0, -14484($fp)
	li $t0, 50817
	sw $t0, -14488($fp)
	li $t0, 0
	lw $t1, -14488($fp)
	sub $t0, $t0, $t1
	sw $t0, -14492($fp)
	lw $t0, -2248($fp)
	sw $t0, -14496($fp)
	lw $t1, -14492($fp)
	lw $t2, -14496($fp)
	beq $t1, $t2, label789
	j label790
label789:
	li $t0, 1
	sw $t0, -14484($fp)
label790:
	li $t0, 0
	sw $t0, -14500($fp)
	lw $t0, -3892($fp)
	sw $t0, -14504($fp)
	lw $t0, -2032($fp)
	sw $t0, -14508($fp)
	lw $t0, -14504($fp)
	lw $t1, -14508($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14512($fp)
	lw $t0, -4408($fp)
	sw $t0, -14516($fp)
	lw $t1, -14512($fp)
	lw $t2, -14516($fp)
	bge $t1, $t2, label791
	j label792
label791:
	li $t0, 1
	sw $t0, -14500($fp)
label792:
	li $t0, 7955
	sw $t0, -14520($fp)
	li $t0, 56907
	sw $t0, -14524($fp)
	lw $t0, -14520($fp)
	lw $t1, -14524($fp)
	mul $t0, $t0, $t1
	sw $t0, -14528($fp)
	addi $sp, $sp, -4
	lw $t0, -14460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14528($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14532($fp)
	addi $sp, $sp, 24
	li $t0, 901
	sw $t0, -14536($fp)
	li $t0, 0
	lw $t1, -14536($fp)
	sub $t0, $t0, $t1
	sw $t0, -14540($fp)
	li $t0, 0
	lw $t1, -14540($fp)
	sub $t0, $t0, $t1
	sw $t0, -14544($fp)
	lw $t1, -14532($fp)
	lw $t2, -14544($fp)
	ble $t1, $t2, label783
	j label782
label783:
	li $t0, 62334
	sw $t0, -14548($fp)
	li $t0, 0
	lw $t1, -14548($fp)
	sub $t0, $t0, $t1
	sw $t0, -14552($fp)
	li $t0, 0
	sw $t0, -14556($fp)
	li $t0, 38481
	sw $t0, -14560($fp)
	lw $t0, -13916($fp)
	sw $t0, -14564($fp)
	lw $t1, -14560($fp)
	lw $t2, -14564($fp)
	ble $t1, $t2, label793
	j label794
label793:
	li $t0, 1
	sw $t0, -14556($fp)
label794:
	lw $t1, -14552($fp)
	lw $t2, -14556($fp)
	beq $t1, $t2, label781
	j label782
label781:
	li $t0, 1
	sw $t0, -14456($fp)
label782:
	lw $ra, -4($fp)
	lw $v0, -14456($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label744:
	li $t0, 2551
	sw $t0, -14568($fp)
	lw $t0, -14568($fp)
	sw $t0, -14572($fp)
	lw $t0, -14572($fp)
	sw $t0, -14576($fp)
label795:
	li $t0, 0
	sw $t0, -14580($fp)
	addi $t0, $fp, -220
	sw $t0, -14584($fp)
	li $t0, 0
	sw $t0, -14588($fp)
	li $t0, 48494
	sw $t0, -14592($fp)
	lw $t1, -14592($fp)
	li $t2, 0
	bne $t1, $t2, label801
	j label800
label800:
	li $t0, 1
	sw $t0, -14588($fp)
label801:
	li $t0, 4
	lw $t1, -14588($fp)
	mul $t0, $t0, $t1
	sw $t0, -14596($fp)
	lw $t0, -14596($fp)
	lw $t1, -14584($fp)
	add $t0, $t0, $t1
	sw $t0, -14600($fp)
	lw $t0, -14600($fp)
	lw $t1, 0($t0)
	sw $t1, -14604($fp)
	li $t0, 22065
	sw $t0, -14608($fp)
	lw $t0, -3796($fp)
	sw $t0, -14612($fp)
	lw $t0, -14608($fp)
	lw $t1, -14612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14616($fp)
	lw $t1, -14604($fp)
	lw $t2, -14616($fp)
	ble $t1, $t2, label798
	j label799
label798:
	li $t0, 1
	sw $t0, -14580($fp)
label799:
	li $t0, 15202
	sw $t0, -14620($fp)
	lw $t1, -14580($fp)
	lw $t2, -14620($fp)
	blt $t1, $t2, label796
	j label797
label796:
	li $t0, 0
	sw $t0, -14624($fp)
	li $t0, 44976
	sw $t0, -14628($fp)
	lw $t0, -3772($fp)
	sw $t0, -14632($fp)
	lw $t0, -14628($fp)
	lw $t1, -14632($fp)
	sub $t0, $t0, $t1
	sw $t0, -14636($fp)
	li $t0, 6992
	sw $t0, -14640($fp)
	lw $t1, -14636($fp)
	lw $t2, -14640($fp)
	bge $t1, $t2, label802
	j label803
label802:
	li $t0, 1
	sw $t0, -14624($fp)
label803:
	li $t0, 0
	sw $t0, -14644($fp)
	lw $t0, -2020($fp)
	sw $t0, -14648($fp)
	li $t0, 0
	lw $t1, -14648($fp)
	sub $t0, $t0, $t1
	sw $t0, -14652($fp)
	lw $t1, -14652($fp)
	li $t2, 0
	bne $t1, $t2, label804
	j label806
label806:
	lw $t0, -4792($fp)
	sw $t0, -14656($fp)
	lw $t1, -14656($fp)
	li $t2, 0
	bne $t1, $t2, label804
	j label805
label804:
	li $t0, 1
	sw $t0, -14644($fp)
label805:
	li $t0, 0
	sw $t0, -14660($fp)
	lw $t0, -3808($fp)
	sw $t0, -14664($fp)
	li $t0, 0
	lw $t1, -14664($fp)
	sub $t0, $t0, $t1
	sw $t0, -14668($fp)
	lw $t0, -712($fp)
	sw $t0, -14672($fp)
	lw $t1, -14668($fp)
	lw $t2, -14672($fp)
	bne $t1, $t2, label807
	j label808
label807:
	li $t0, 1
	sw $t0, -14660($fp)
label808:
	li $t0, 49934
	sw $t0, -14676($fp)
	li $t0, 0
	sw $t0, -14680($fp)
	lw $t0, -2824($fp)
	sw $t0, -14684($fp)
	lw $t0, -10356($fp)
	sw $t0, -14688($fp)
	lw $t0, -14684($fp)
	lw $t1, -14688($fp)
	add $t0, $t0, $t1
	sw $t0, -14692($fp)
	li $t0, 26719
	sw $t0, -14696($fp)
	lw $t1, -14692($fp)
	lw $t2, -14696($fp)
	bne $t1, $t2, label809
	j label810
label809:
	li $t0, 1
	sw $t0, -14680($fp)
label810:
	li $t0, 10406
	sw $t0, -14700($fp)
	li $t0, 0
	lw $t1, -14700($fp)
	sub $t0, $t0, $t1
	sw $t0, -14704($fp)
	li $t0, 0
	lw $t1, -14704($fp)
	sub $t0, $t0, $t1
	sw $t0, -14708($fp)
	lw $t0, -2812($fp)
	sw $t0, -14712($fp)
	lw $t0, -1024($fp)
	sw $t0, -14716($fp)
	lw $t0, -14712($fp)
	lw $t1, -14716($fp)
	mul $t0, $t0, $t1
	sw $t0, -14720($fp)
	lw $t0, -2212($fp)
	sw $t0, -14724($fp)
	lw $t0, -14720($fp)
	lw $t1, -14724($fp)
	sub $t0, $t0, $t1
	sw $t0, -14728($fp)
	li $t0, 0
	sw $t0, -14732($fp)
	li $t0, 40604
	sw $t0, -14736($fp)
	li $t0, 37472
	sw $t0, -14740($fp)
	lw $t0, -14736($fp)
	lw $t1, -14740($fp)
	add $t0, $t0, $t1
	sw $t0, -14744($fp)
	li $t0, 37420
	sw $t0, -14748($fp)
	lw $t1, -14744($fp)
	lw $t2, -14748($fp)
	bge $t1, $t2, label811
	j label812
label811:
	li $t0, 1
	sw $t0, -14732($fp)
label812:
	lw $t0, -2344($fp)
	sw $t0, -14752($fp)
	li $t0, 0
	lw $t1, -14752($fp)
	sub $t0, $t0, $t1
	sw $t0, -14756($fp)
	li $t0, 0
	lw $t1, -14756($fp)
	sub $t0, $t0, $t1
	sw $t0, -14760($fp)
	addi $sp, $sp, -4
	lw $t0, -14680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14760($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14764($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -14624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14764($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14768($fp)
	addi $sp, $sp, 24
	j label795
label797:
	li $t0, 0
	sw $t0, -14772($fp)
	addi $t0, $fp, -280
	sw $t0, -14776($fp)
	li $t0, 2
	sw $t0, -14780($fp)
	li $t0, 4
	lw $t1, -14780($fp)
	mul $t0, $t0, $t1
	sw $t0, -14784($fp)
	lw $t0, -14784($fp)
	lw $t1, -14776($fp)
	add $t0, $t0, $t1
	sw $t0, -14788($fp)
	lw $t0, -14788($fp)
	lw $t1, 0($t0)
	sw $t1, -14792($fp)
	li $t0, 3270
	sw $t0, -14796($fp)
	lw $t0, -14792($fp)
	lw $t1, -14796($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14800($fp)
	lw $t0, -3844($fp)
	sw $t0, -14804($fp)
	lw $t0, -14800($fp)
	lw $t1, -14804($fp)
	mul $t0, $t0, $t1
	sw $t0, -14808($fp)
	li $t0, 0
	sw $t0, -14812($fp)
	li $t0, 0
	sw $t0, -14816($fp)
	li $t0, 0
	sw $t0, -14820($fp)
	li $t0, 43046
	sw $t0, -14824($fp)
	li $t0, 46300
	sw $t0, -14828($fp)
	lw $t1, -14824($fp)
	lw $t2, -14828($fp)
	ble $t1, $t2, label820
	j label821
label820:
	li $t0, 1
	sw $t0, -14820($fp)
label821:
	lw $t0, -2380($fp)
	sw $t0, -14832($fp)
	lw $t1, -14820($fp)
	lw $t2, -14832($fp)
	bne $t1, $t2, label818
	j label819
label818:
	li $t0, 1
	sw $t0, -14816($fp)
label819:
	addi $t0, $fp, -208
	sw $t0, -14836($fp)
	lw $t0, -14572($fp)
	sw $t0, -14840($fp)
	li $t0, 4
	lw $t1, -14840($fp)
	mul $t0, $t0, $t1
	sw $t0, -14844($fp)
	lw $t0, -14844($fp)
	lw $t1, -14836($fp)
	add $t0, $t0, $t1
	sw $t0, -14848($fp)
	lw $t0, -14848($fp)
	lw $t1, 0($t0)
	sw $t1, -14852($fp)
	lw $t0, -4300($fp)
	sw $t0, -14856($fp)
	lw $t0, -14852($fp)
	lw $t1, -14856($fp)
	sub $t0, $t0, $t1
	sw $t0, -14860($fp)
	lw $t0, -2356($fp)
	sw $t0, -14864($fp)
	lw $t0, -2368($fp)
	sw $t0, -14868($fp)
	lw $t0, -14864($fp)
	lw $t1, -14868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14872($fp)
	li $t0, 26422
	sw $t0, -14876($fp)
	li $t0, 0
	lw $t1, -14876($fp)
	sub $t0, $t0, $t1
	sw $t0, -14880($fp)
	li $t0, 0
	sw $t0, -14884($fp)
	li $t0, 63657
	sw $t0, -14888($fp)
	lw $t1, -14888($fp)
	li $t2, 0
	bne $t1, $t2, label822
	j label825
label825:
	li $t0, 29848
	sw $t0, -14892($fp)
	lw $t1, -14892($fp)
	li $t2, 0
	bne $t1, $t2, label822
	j label824
label824:
	lw $t0, -2848($fp)
	sw $t0, -14896($fp)
	lw $t1, -14896($fp)
	li $t2, 0
	bne $t1, $t2, label822
	j label823
label822:
	li $t0, 1
	sw $t0, -14884($fp)
label823:
	addi $sp, $sp, -4
	lw $t0, -14816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -14884($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -14900($fp)
	addi $sp, $sp, 24
	lw $t1, -14900($fp)
	li $t2, 0
	bne $t1, $t2, label817
	j label816
label816:
	li $t0, 1
	sw $t0, -14812($fp)
label817:
	lw $t0, -14808($fp)
	lw $t1, -14812($fp)
	mul $t0, $t0, $t1
	sw $t0, -14904($fp)
	lw $t1, -14904($fp)
	li $t2, 0
	bne $t1, $t2, label815
	j label814
label815:
	li $t0, 18527
	sw $t0, -14908($fp)
	lw $t1, -14908($fp)
	li $t2, 0
	bne $t1, $t2, label813
	j label814
label813:
	li $t0, 1
	sw $t0, -14772($fp)
label814:
label826:
	lw $t0, -2392($fp)
	sw $t0, -14912($fp)
	lw $t0, -13928($fp)
	sw $t0, -14916($fp)
	lw $t0, -14912($fp)
	lw $t1, -14916($fp)
	mul $t0, $t0, $t1
	sw $t0, -14920($fp)
	li $t0, 0
	lw $t1, -14920($fp)
	sub $t0, $t0, $t1
	sw $t0, -14924($fp)
	addi $t0, $fp, -232
	sw $t0, -14928($fp)
	li $t0, 2
	sw $t0, -14932($fp)
	li $t0, 4
	lw $t1, -14932($fp)
	mul $t0, $t0, $t1
	sw $t0, -14936($fp)
	lw $t0, -14936($fp)
	lw $t1, -14928($fp)
	add $t0, $t0, $t1
	sw $t0, -14940($fp)
	lw $t0, -14940($fp)
	lw $t1, 0($t0)
	sw $t1, -14944($fp)
	lw $t0, -3520($fp)
	sw $t0, -14948($fp)
	lw $t0, -14944($fp)
	lw $t1, -14948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -14952($fp)
	lw $t0, -2860($fp)
	sw $t0, -14956($fp)
	lw $t0, -14952($fp)
	lw $t1, -14956($fp)
	mul $t0, $t0, $t1
	sw $t0, -14960($fp)
	lw $t1, -14924($fp)
	lw $t2, -14960($fp)
	bgt $t1, $t2, label827
	j label828
label827:
label829:
	addi $t0, $fp, -10284
	sw $t0, -14964($fp)
	lw $t0, -2476($fp)
	sw $t0, -14968($fp)
	lw $t0, -14968($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -14972($fp)
	li $t0, 4
	lw $t1, -14972($fp)
	mul $t0, $t0, $t1
	sw $t0, -14976($fp)
	lw $t0, -14976($fp)
	lw $t1, -14964($fp)
	add $t0, $t0, $t1
	sw $t0, -14980($fp)
	lw $t0, -14980($fp)
	lw $t1, 0($t0)
	sw $t1, -14984($fp)
	li $t0, 22096
	sw $t0, -14988($fp)
	li $t0, 0
	lw $t1, -14988($fp)
	sub $t0, $t0, $t1
	sw $t0, -14992($fp)
	lw $t0, -14984($fp)
	lw $t1, -14992($fp)
	mul $t0, $t0, $t1
	sw $t0, -14996($fp)
	lw $t1, -14996($fp)
	li $t2, 0
	bne $t1, $t2, label830
	j label831
label830:
	li $t0, 0
	sw $t0, -15000($fp)
	li $t0, 35583
	sw $t0, -15004($fp)
	addi $t0, $fp, -488
	sw $t0, -15008($fp)
	lw $t0, -2848($fp)
	sw $t0, -15012($fp)
	li $t0, 4
	lw $t1, -15012($fp)
	mul $t0, $t0, $t1
	sw $t0, -15016($fp)
	lw $t0, -15016($fp)
	lw $t1, -15008($fp)
	add $t0, $t0, $t1
	sw $t0, -15020($fp)
	lw $t0, -15020($fp)
	lw $t1, 0($t0)
	sw $t1, -15024($fp)
	li $t0, 62954
	sw $t0, -15028($fp)
	lw $t0, -15024($fp)
	lw $t1, -15028($fp)
	add $t0, $t0, $t1
	sw $t0, -15032($fp)
	lw $t1, -15004($fp)
	lw $t2, -15032($fp)
	bne $t1, $t2, label832
	j label834
label834:
	li $t0, 7377
	sw $t0, -15036($fp)
	lw $t1, -15036($fp)
	li $t2, 0
	bne $t1, $t2, label832
	j label833
label832:
	li $t0, 1
	sw $t0, -15000($fp)
label833:
	lw $ra, -4($fp)
	lw $v0, -15000($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label829
label831:
	j label826
label828:
	j label579
label581:
	addi $t0, $fp, -24
	sw $t0, -15040($fp)
	li $t0, 0
	sw $t0, -15044($fp)
	li $t0, 4
	lw $t1, -15044($fp)
	mul $t0, $t0, $t1
	sw $t0, -15048($fp)
	lw $t0, -15048($fp)
	lw $t1, -15040($fp)
	add $t0, $t0, $t1
	sw $t0, -15052($fp)
	lw $t0, -15052($fp)
	lw $t1, 0($t0)
	sw $t1, -15056($fp)
	lw $t0, -15056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -15060($fp)
	li $t0, 1
	sw $t0, -15064($fp)
	li $t0, 4
	lw $t1, -15064($fp)
	mul $t0, $t0, $t1
	sw $t0, -15068($fp)
	lw $t0, -15068($fp)
	lw $t1, -15060($fp)
	add $t0, $t0, $t1
	sw $t0, -15072($fp)
	lw $t0, -15072($fp)
	lw $t1, 0($t0)
	sw $t1, -15076($fp)
	lw $t0, -15076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -15080($fp)
	li $t0, 2
	sw $t0, -15084($fp)
	li $t0, 4
	lw $t1, -15084($fp)
	mul $t0, $t0, $t1
	sw $t0, -15088($fp)
	lw $t0, -15088($fp)
	lw $t1, -15080($fp)
	add $t0, $t0, $t1
	sw $t0, -15092($fp)
	lw $t0, -15092($fp)
	lw $t1, 0($t0)
	sw $t1, -15096($fp)
	lw $t0, -15096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -15100($fp)
	li $t0, 3
	sw $t0, -15104($fp)
	li $t0, 4
	lw $t1, -15104($fp)
	mul $t0, $t0, $t1
	sw $t0, -15108($fp)
	lw $t0, -15108($fp)
	lw $t1, -15100($fp)
	add $t0, $t0, $t1
	sw $t0, -15112($fp)
	lw $t0, -15112($fp)
	lw $t1, 0($t0)
	sw $t1, -15116($fp)
	lw $t0, -15116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -15120($fp)
	li $t0, 4
	sw $t0, -15124($fp)
	li $t0, 4
	lw $t1, -15124($fp)
	mul $t0, $t0, $t1
	sw $t0, -15128($fp)
	lw $t0, -15128($fp)
	lw $t1, -15120($fp)
	add $t0, $t0, $t1
	sw $t0, -15132($fp)
	lw $t0, -15132($fp)
	lw $t1, 0($t0)
	sw $t1, -15136($fp)
	lw $t0, -15136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -616($fp)
	sw $t0, -15140($fp)
	lw $t0, -15140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -628($fp)
	sw $t0, -15144($fp)
	lw $t0, -15144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -640($fp)
	sw $t0, -15148($fp)
	lw $t0, -15148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -652($fp)
	sw $t0, -15152($fp)
	lw $t0, -15152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -664($fp)
	sw $t0, -15156($fp)
	lw $t0, -15156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -15160($fp)
	lw $t0, -15160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -15164($fp)
	lw $t0, -15164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -15168($fp)
	lw $t0, -15168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	sw $t0, -15172($fp)
	lw $t0, -15172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -724($fp)
	sw $t0, -15176($fp)
	lw $t0, -15176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -15180($fp)
	li $t0, 0
	sw $t0, -15184($fp)
	li $t0, 4
	lw $t1, -15184($fp)
	mul $t0, $t0, $t1
	sw $t0, -15188($fp)
	lw $t0, -15188($fp)
	lw $t1, -15180($fp)
	add $t0, $t0, $t1
	sw $t0, -15192($fp)
	lw $t0, -15192($fp)
	lw $t1, 0($t0)
	sw $t1, -15196($fp)
	lw $t0, -15196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -15200($fp)
	li $t0, 1
	sw $t0, -15204($fp)
	li $t0, 4
	lw $t1, -15204($fp)
	mul $t0, $t0, $t1
	sw $t0, -15208($fp)
	lw $t0, -15208($fp)
	lw $t1, -15200($fp)
	add $t0, $t0, $t1
	sw $t0, -15212($fp)
	lw $t0, -15212($fp)
	lw $t1, 0($t0)
	sw $t1, -15216($fp)
	lw $t0, -15216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -15220($fp)
	li $t0, 2
	sw $t0, -15224($fp)
	li $t0, 4
	lw $t1, -15224($fp)
	mul $t0, $t0, $t1
	sw $t0, -15228($fp)
	lw $t0, -15228($fp)
	lw $t1, -15220($fp)
	add $t0, $t0, $t1
	sw $t0, -15232($fp)
	lw $t0, -15232($fp)
	lw $t1, 0($t0)
	sw $t1, -15236($fp)
	lw $t0, -15236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -15240($fp)
	li $t0, 3
	sw $t0, -15244($fp)
	li $t0, 4
	lw $t1, -15244($fp)
	mul $t0, $t0, $t1
	sw $t0, -15248($fp)
	lw $t0, -15248($fp)
	lw $t1, -15240($fp)
	add $t0, $t0, $t1
	sw $t0, -15252($fp)
	lw $t0, -15252($fp)
	lw $t1, 0($t0)
	sw $t1, -15256($fp)
	lw $t0, -15256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -15260($fp)
	li $t0, 4
	sw $t0, -15264($fp)
	li $t0, 4
	lw $t1, -15264($fp)
	mul $t0, $t0, $t1
	sw $t0, -15268($fp)
	lw $t0, -15268($fp)
	lw $t1, -15260($fp)
	add $t0, $t0, $t1
	sw $t0, -15272($fp)
	lw $t0, -15272($fp)
	lw $t1, 0($t0)
	sw $t1, -15276($fp)
	lw $t0, -15276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -15280($fp)
	li $t0, 5
	sw $t0, -15284($fp)
	li $t0, 4
	lw $t1, -15284($fp)
	mul $t0, $t0, $t1
	sw $t0, -15288($fp)
	lw $t0, -15288($fp)
	lw $t1, -15280($fp)
	add $t0, $t0, $t1
	sw $t0, -15292($fp)
	lw $t0, -15292($fp)
	lw $t1, 0($t0)
	sw $t1, -15296($fp)
	lw $t0, -15296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -15300($fp)
	li $t0, 6
	sw $t0, -15304($fp)
	li $t0, 4
	lw $t1, -15304($fp)
	mul $t0, $t0, $t1
	sw $t0, -15308($fp)
	lw $t0, -15308($fp)
	lw $t1, -15300($fp)
	add $t0, $t0, $t1
	sw $t0, -15312($fp)
	lw $t0, -15312($fp)
	lw $t1, 0($t0)
	sw $t1, -15316($fp)
	lw $t0, -15316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -15320($fp)
	li $t0, 7
	sw $t0, -15324($fp)
	li $t0, 4
	lw $t1, -15324($fp)
	mul $t0, $t0, $t1
	sw $t0, -15328($fp)
	lw $t0, -15328($fp)
	lw $t1, -15320($fp)
	add $t0, $t0, $t1
	sw $t0, -15332($fp)
	lw $t0, -15332($fp)
	lw $t1, 0($t0)
	sw $t1, -15336($fp)
	lw $t0, -15336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -928($fp)
	sw $t0, -15340($fp)
	lw $t0, -15340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -940($fp)
	sw $t0, -15344($fp)
	lw $t0, -15344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -15348($fp)
	li $t0, 0
	sw $t0, -15352($fp)
	li $t0, 4
	lw $t1, -15352($fp)
	mul $t0, $t0, $t1
	sw $t0, -15356($fp)
	lw $t0, -15356($fp)
	lw $t1, -15348($fp)
	add $t0, $t0, $t1
	sw $t0, -15360($fp)
	lw $t0, -15360($fp)
	lw $t1, 0($t0)
	sw $t1, -15364($fp)
	lw $t0, -15364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -15368($fp)
	li $t0, 1
	sw $t0, -15372($fp)
	li $t0, 4
	lw $t1, -15372($fp)
	mul $t0, $t0, $t1
	sw $t0, -15376($fp)
	lw $t0, -15376($fp)
	lw $t1, -15368($fp)
	add $t0, $t0, $t1
	sw $t0, -15380($fp)
	lw $t0, -15380($fp)
	lw $t1, 0($t0)
	sw $t1, -15384($fp)
	lw $t0, -15384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -15388($fp)
	li $t0, 2
	sw $t0, -15392($fp)
	li $t0, 4
	lw $t1, -15392($fp)
	mul $t0, $t0, $t1
	sw $t0, -15396($fp)
	lw $t0, -15396($fp)
	lw $t1, -15388($fp)
	add $t0, $t0, $t1
	sw $t0, -15400($fp)
	lw $t0, -15400($fp)
	lw $t1, 0($t0)
	sw $t1, -15404($fp)
	lw $t0, -15404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1024($fp)
	sw $t0, -15408($fp)
	lw $t0, -15408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1036($fp)
	sw $t0, -15412($fp)
	lw $t0, -15412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1048($fp)
	sw $t0, -15416($fp)
	lw $t0, -15416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1060($fp)
	sw $t0, -15420($fp)
	lw $t0, -15420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1072($fp)
	sw $t0, -15424($fp)
	lw $t0, -15424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -15428($fp)
	li $t0, 0
	sw $t0, -15432($fp)
	li $t0, 4
	lw $t1, -15432($fp)
	mul $t0, $t0, $t1
	sw $t0, -15436($fp)
	lw $t0, -15436($fp)
	lw $t1, -15428($fp)
	add $t0, $t0, $t1
	sw $t0, -15440($fp)
	lw $t0, -15440($fp)
	lw $t1, 0($t0)
	sw $t1, -15444($fp)
	lw $t0, -15444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -15448($fp)
	li $t0, 1
	sw $t0, -15452($fp)
	li $t0, 4
	lw $t1, -15452($fp)
	mul $t0, $t0, $t1
	sw $t0, -15456($fp)
	lw $t0, -15456($fp)
	lw $t1, -15448($fp)
	add $t0, $t0, $t1
	sw $t0, -15460($fp)
	lw $t0, -15460($fp)
	lw $t1, 0($t0)
	sw $t1, -15464($fp)
	lw $t0, -15464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -15468($fp)
	li $t0, 2
	sw $t0, -15472($fp)
	li $t0, 4
	lw $t1, -15472($fp)
	mul $t0, $t0, $t1
	sw $t0, -15476($fp)
	lw $t0, -15476($fp)
	lw $t1, -15468($fp)
	add $t0, $t0, $t1
	sw $t0, -15480($fp)
	lw $t0, -15480($fp)
	lw $t1, 0($t0)
	sw $t1, -15484($fp)
	lw $t0, -15484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1156($fp)
	sw $t0, -15488($fp)
	lw $t0, -15488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1168($fp)
	sw $t0, -15492($fp)
	lw $t0, -15492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -15496($fp)
	li $t0, 0
	sw $t0, -15500($fp)
	li $t0, 4
	lw $t1, -15500($fp)
	mul $t0, $t0, $t1
	sw $t0, -15504($fp)
	lw $t0, -15504($fp)
	lw $t1, -15496($fp)
	add $t0, $t0, $t1
	sw $t0, -15508($fp)
	lw $t0, -15508($fp)
	lw $t1, 0($t0)
	sw $t1, -15512($fp)
	lw $t0, -15512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -15516($fp)
	li $t0, 1
	sw $t0, -15520($fp)
	li $t0, 4
	lw $t1, -15520($fp)
	mul $t0, $t0, $t1
	sw $t0, -15524($fp)
	lw $t0, -15524($fp)
	lw $t1, -15516($fp)
	add $t0, $t0, $t1
	sw $t0, -15528($fp)
	lw $t0, -15528($fp)
	lw $t1, 0($t0)
	sw $t1, -15532($fp)
	lw $t0, -15532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -15536($fp)
	li $t0, 2
	sw $t0, -15540($fp)
	li $t0, 4
	lw $t1, -15540($fp)
	mul $t0, $t0, $t1
	sw $t0, -15544($fp)
	lw $t0, -15544($fp)
	lw $t1, -15536($fp)
	add $t0, $t0, $t1
	sw $t0, -15548($fp)
	lw $t0, -15548($fp)
	lw $t1, 0($t0)
	sw $t1, -15552($fp)
	lw $t0, -15552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -15556($fp)
	li $t0, 3
	sw $t0, -15560($fp)
	li $t0, 4
	lw $t1, -15560($fp)
	mul $t0, $t0, $t1
	sw $t0, -15564($fp)
	lw $t0, -15564($fp)
	lw $t1, -15556($fp)
	add $t0, $t0, $t1
	sw $t0, -15568($fp)
	lw $t0, -15568($fp)
	lw $t1, 0($t0)
	sw $t1, -15572($fp)
	lw $t0, -15572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -15576($fp)
	li $t0, 4
	sw $t0, -15580($fp)
	li $t0, 4
	lw $t1, -15580($fp)
	mul $t0, $t0, $t1
	sw $t0, -15584($fp)
	lw $t0, -15584($fp)
	lw $t1, -15576($fp)
	add $t0, $t0, $t1
	sw $t0, -15588($fp)
	lw $t0, -15588($fp)
	lw $t1, 0($t0)
	sw $t1, -15592($fp)
	lw $t0, -15592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -15596($fp)
	li $t0, 5
	sw $t0, -15600($fp)
	li $t0, 4
	lw $t1, -15600($fp)
	mul $t0, $t0, $t1
	sw $t0, -15604($fp)
	lw $t0, -15604($fp)
	lw $t1, -15596($fp)
	add $t0, $t0, $t1
	sw $t0, -15608($fp)
	lw $t0, -15608($fp)
	lw $t1, 0($t0)
	sw $t1, -15612($fp)
	lw $t0, -15612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -15616($fp)
	li $t0, 6
	sw $t0, -15620($fp)
	li $t0, 4
	lw $t1, -15620($fp)
	mul $t0, $t0, $t1
	sw $t0, -15624($fp)
	lw $t0, -15624($fp)
	lw $t1, -15616($fp)
	add $t0, $t0, $t1
	sw $t0, -15628($fp)
	lw $t0, -15628($fp)
	lw $t1, 0($t0)
	sw $t1, -15632($fp)
	lw $t0, -15632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1348($fp)
	sw $t0, -15636($fp)
	lw $t0, -15636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -15640($fp)
	li $t0, 0
	sw $t0, -15644($fp)
	li $t0, 4
	lw $t1, -15644($fp)
	mul $t0, $t0, $t1
	sw $t0, -15648($fp)
	lw $t0, -15648($fp)
	lw $t1, -15640($fp)
	add $t0, $t0, $t1
	sw $t0, -15652($fp)
	lw $t0, -15652($fp)
	lw $t1, 0($t0)
	sw $t1, -15656($fp)
	lw $t0, -15656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -15660($fp)
	li $t0, 1
	sw $t0, -15664($fp)
	li $t0, 4
	lw $t1, -15664($fp)
	mul $t0, $t0, $t1
	sw $t0, -15668($fp)
	lw $t0, -15668($fp)
	lw $t1, -15660($fp)
	add $t0, $t0, $t1
	sw $t0, -15672($fp)
	lw $t0, -15672($fp)
	lw $t1, 0($t0)
	sw $t1, -15676($fp)
	lw $t0, -15676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -15680($fp)
	li $t0, 2
	sw $t0, -15684($fp)
	li $t0, 4
	lw $t1, -15684($fp)
	mul $t0, $t0, $t1
	sw $t0, -15688($fp)
	lw $t0, -15688($fp)
	lw $t1, -15680($fp)
	add $t0, $t0, $t1
	sw $t0, -15692($fp)
	lw $t0, -15692($fp)
	lw $t1, 0($t0)
	sw $t1, -15696($fp)
	lw $t0, -15696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -15700($fp)
	li $t0, 3
	sw $t0, -15704($fp)
	li $t0, 4
	lw $t1, -15704($fp)
	mul $t0, $t0, $t1
	sw $t0, -15708($fp)
	lw $t0, -15708($fp)
	lw $t1, -15700($fp)
	add $t0, $t0, $t1
	sw $t0, -15712($fp)
	lw $t0, -15712($fp)
	lw $t1, 0($t0)
	sw $t1, -15716($fp)
	lw $t0, -15716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1456($fp)
	sw $t0, -15720($fp)
	lw $t0, -15720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1468($fp)
	sw $t0, -15724($fp)
	lw $t0, -15724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1480($fp)
	sw $t0, -15728($fp)
	lw $t0, -15728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1492($fp)
	sw $t0, -15732($fp)
	lw $t0, -15732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1504($fp)
	sw $t0, -15736($fp)
	lw $t0, -15736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1516($fp)
	sw $t0, -15740($fp)
	lw $t0, -15740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -15744($fp)
	li $t0, 0
	sw $t0, -15748($fp)
	li $t0, 4
	lw $t1, -15748($fp)
	mul $t0, $t0, $t1
	sw $t0, -15752($fp)
	lw $t0, -15752($fp)
	lw $t1, -15744($fp)
	add $t0, $t0, $t1
	sw $t0, -15756($fp)
	lw $t0, -15756($fp)
	lw $t1, 0($t0)
	sw $t1, -15760($fp)
	lw $t0, -15760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -15764($fp)
	li $t0, 1
	sw $t0, -15768($fp)
	li $t0, 4
	lw $t1, -15768($fp)
	mul $t0, $t0, $t1
	sw $t0, -15772($fp)
	lw $t0, -15772($fp)
	lw $t1, -15764($fp)
	add $t0, $t0, $t1
	sw $t0, -15776($fp)
	lw $t0, -15776($fp)
	lw $t1, 0($t0)
	sw $t1, -15780($fp)
	lw $t0, -15780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -15784($fp)
	li $t0, 2
	sw $t0, -15788($fp)
	li $t0, 4
	lw $t1, -15788($fp)
	mul $t0, $t0, $t1
	sw $t0, -15792($fp)
	lw $t0, -15792($fp)
	lw $t1, -15784($fp)
	add $t0, $t0, $t1
	sw $t0, -15796($fp)
	lw $t0, -15796($fp)
	lw $t1, 0($t0)
	sw $t1, -15800($fp)
	lw $t0, -15800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1600($fp)
	sw $t0, -15804($fp)
	lw $t0, -15804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1612($fp)
	sw $t0, -15808($fp)
	lw $t0, -15808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -15812($fp)
	li $t0, 0
	sw $t0, -15816($fp)
	li $t0, 4
	lw $t1, -15816($fp)
	mul $t0, $t0, $t1
	sw $t0, -15820($fp)
	lw $t0, -15820($fp)
	lw $t1, -15812($fp)
	add $t0, $t0, $t1
	sw $t0, -15824($fp)
	lw $t0, -15824($fp)
	lw $t1, 0($t0)
	sw $t1, -15828($fp)
	lw $t0, -15828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -15832($fp)
	li $t0, 1
	sw $t0, -15836($fp)
	li $t0, 4
	lw $t1, -15836($fp)
	mul $t0, $t0, $t1
	sw $t0, -15840($fp)
	lw $t0, -15840($fp)
	lw $t1, -15832($fp)
	add $t0, $t0, $t1
	sw $t0, -15844($fp)
	lw $t0, -15844($fp)
	lw $t1, 0($t0)
	sw $t1, -15848($fp)
	lw $t0, -15848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -15852($fp)
	li $t0, 2
	sw $t0, -15856($fp)
	li $t0, 4
	lw $t1, -15856($fp)
	mul $t0, $t0, $t1
	sw $t0, -15860($fp)
	lw $t0, -15860($fp)
	lw $t1, -15852($fp)
	add $t0, $t0, $t1
	sw $t0, -15864($fp)
	lw $t0, -15864($fp)
	lw $t1, 0($t0)
	sw $t1, -15868($fp)
	lw $t0, -15868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -15872($fp)
	li $t0, 3
	sw $t0, -15876($fp)
	li $t0, 4
	lw $t1, -15876($fp)
	mul $t0, $t0, $t1
	sw $t0, -15880($fp)
	lw $t0, -15880($fp)
	lw $t1, -15872($fp)
	add $t0, $t0, $t1
	sw $t0, -15884($fp)
	lw $t0, -15884($fp)
	lw $t1, 0($t0)
	sw $t1, -15888($fp)
	lw $t0, -15888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -15892($fp)
	li $t0, 4
	sw $t0, -15896($fp)
	li $t0, 4
	lw $t1, -15896($fp)
	mul $t0, $t0, $t1
	sw $t0, -15900($fp)
	lw $t0, -15900($fp)
	lw $t1, -15892($fp)
	add $t0, $t0, $t1
	sw $t0, -15904($fp)
	lw $t0, -15904($fp)
	lw $t1, 0($t0)
	sw $t1, -15908($fp)
	lw $t0, -15908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -15912($fp)
	li $t0, 5
	sw $t0, -15916($fp)
	li $t0, 4
	lw $t1, -15916($fp)
	mul $t0, $t0, $t1
	sw $t0, -15920($fp)
	lw $t0, -15920($fp)
	lw $t1, -15912($fp)
	add $t0, $t0, $t1
	sw $t0, -15924($fp)
	lw $t0, -15924($fp)
	lw $t1, 0($t0)
	sw $t1, -15928($fp)
	lw $t0, -15928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -15932($fp)
	li $t0, 6
	sw $t0, -15936($fp)
	li $t0, 4
	lw $t1, -15936($fp)
	mul $t0, $t0, $t1
	sw $t0, -15940($fp)
	lw $t0, -15940($fp)
	lw $t1, -15932($fp)
	add $t0, $t0, $t1
	sw $t0, -15944($fp)
	lw $t0, -15944($fp)
	lw $t1, 0($t0)
	sw $t1, -15948($fp)
	lw $t0, -15948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
	sw $t0, -15952($fp)
	li $t0, 7
	sw $t0, -15956($fp)
	li $t0, 4
	lw $t1, -15956($fp)
	mul $t0, $t0, $t1
	sw $t0, -15960($fp)
	lw $t0, -15960($fp)
	lw $t1, -15952($fp)
	add $t0, $t0, $t1
	sw $t0, -15964($fp)
	lw $t0, -15964($fp)
	lw $t1, 0($t0)
	sw $t1, -15968($fp)
	lw $t0, -15968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1816($fp)
	sw $t0, -15972($fp)
	lw $t0, -15972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -15976($fp)
	li $t0, 0
	sw $t0, -15980($fp)
	li $t0, 4
	lw $t1, -15980($fp)
	mul $t0, $t0, $t1
	sw $t0, -15984($fp)
	lw $t0, -15984($fp)
	lw $t1, -15976($fp)
	add $t0, $t0, $t1
	sw $t0, -15988($fp)
	lw $t0, -15988($fp)
	lw $t1, 0($t0)
	sw $t1, -15992($fp)
	lw $t0, -15992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -15996($fp)
	li $t0, 1
	sw $t0, -16000($fp)
	li $t0, 4
	lw $t1, -16000($fp)
	mul $t0, $t0, $t1
	sw $t0, -16004($fp)
	lw $t0, -16004($fp)
	lw $t1, -15996($fp)
	add $t0, $t0, $t1
	sw $t0, -16008($fp)
	lw $t0, -16008($fp)
	lw $t1, 0($t0)
	sw $t1, -16012($fp)
	lw $t0, -16012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -16016($fp)
	li $t0, 2
	sw $t0, -16020($fp)
	li $t0, 4
	lw $t1, -16020($fp)
	mul $t0, $t0, $t1
	sw $t0, -16024($fp)
	lw $t0, -16024($fp)
	lw $t1, -16016($fp)
	add $t0, $t0, $t1
	sw $t0, -16028($fp)
	lw $t0, -16028($fp)
	lw $t1, 0($t0)
	sw $t1, -16032($fp)
	lw $t0, -16032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -16036($fp)
	li $t0, 3
	sw $t0, -16040($fp)
	li $t0, 4
	lw $t1, -16040($fp)
	mul $t0, $t0, $t1
	sw $t0, -16044($fp)
	lw $t0, -16044($fp)
	lw $t1, -16036($fp)
	add $t0, $t0, $t1
	sw $t0, -16048($fp)
	lw $t0, -16048($fp)
	lw $t1, 0($t0)
	sw $t1, -16052($fp)
	lw $t0, -16052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -16056($fp)
	li $t0, 4
	sw $t0, -16060($fp)
	li $t0, 4
	lw $t1, -16060($fp)
	mul $t0, $t0, $t1
	sw $t0, -16064($fp)
	lw $t0, -16064($fp)
	lw $t1, -16056($fp)
	add $t0, $t0, $t1
	sw $t0, -16068($fp)
	lw $t0, -16068($fp)
	lw $t1, 0($t0)
	sw $t1, -16072($fp)
	lw $t0, -16072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -16076($fp)
	li $t0, 5
	sw $t0, -16080($fp)
	li $t0, 4
	lw $t1, -16080($fp)
	mul $t0, $t0, $t1
	sw $t0, -16084($fp)
	lw $t0, -16084($fp)
	lw $t1, -16076($fp)
	add $t0, $t0, $t1
	sw $t0, -16088($fp)
	lw $t0, -16088($fp)
	lw $t1, 0($t0)
	sw $t1, -16092($fp)
	lw $t0, -16092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -16096($fp)
	li $t0, 6
	sw $t0, -16100($fp)
	li $t0, 4
	lw $t1, -16100($fp)
	mul $t0, $t0, $t1
	sw $t0, -16104($fp)
	lw $t0, -16104($fp)
	lw $t1, -16096($fp)
	add $t0, $t0, $t1
	sw $t0, -16108($fp)
	lw $t0, -16108($fp)
	lw $t1, 0($t0)
	sw $t1, -16112($fp)
	lw $t0, -16112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -16116($fp)
	li $t0, 7
	sw $t0, -16120($fp)
	li $t0, 4
	lw $t1, -16120($fp)
	mul $t0, $t0, $t1
	sw $t0, -16124($fp)
	lw $t0, -16124($fp)
	lw $t1, -16116($fp)
	add $t0, $t0, $t1
	sw $t0, -16128($fp)
	lw $t0, -16128($fp)
	lw $t1, 0($t0)
	sw $t1, -16132($fp)
	lw $t0, -16132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2020($fp)
	sw $t0, -16136($fp)
	lw $t0, -16136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2032($fp)
	sw $t0, -16140($fp)
	lw $t0, -16140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2044($fp)
	sw $t0, -16144($fp)
	lw $t0, -16144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2056($fp)
	sw $t0, -16148($fp)
	lw $t0, -16148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -16152($fp)
	li $t0, 0
	sw $t0, -16156($fp)
	li $t0, 4
	lw $t1, -16156($fp)
	mul $t0, $t0, $t1
	sw $t0, -16160($fp)
	lw $t0, -16160($fp)
	lw $t1, -16152($fp)
	add $t0, $t0, $t1
	sw $t0, -16164($fp)
	lw $t0, -16164($fp)
	lw $t1, 0($t0)
	sw $t1, -16168($fp)
	lw $t0, -16168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -16172($fp)
	li $t0, 1
	sw $t0, -16176($fp)
	li $t0, 4
	lw $t1, -16176($fp)
	mul $t0, $t0, $t1
	sw $t0, -16180($fp)
	lw $t0, -16180($fp)
	lw $t1, -16172($fp)
	add $t0, $t0, $t1
	sw $t0, -16184($fp)
	lw $t0, -16184($fp)
	lw $t1, 0($t0)
	sw $t1, -16188($fp)
	lw $t0, -16188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2116($fp)
	sw $t0, -16192($fp)
	lw $t0, -16192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2128($fp)
	sw $t0, -16196($fp)
	lw $t0, -16196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2140($fp)
	sw $t0, -16200($fp)
	lw $t0, -16200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2152($fp)
	sw $t0, -16204($fp)
	lw $t0, -16204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2164($fp)
	sw $t0, -16208($fp)
	lw $t0, -16208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2176($fp)
	sw $t0, -16212($fp)
	lw $t0, -16212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2188($fp)
	sw $t0, -16216($fp)
	lw $t0, -16216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2200($fp)
	sw $t0, -16220($fp)
	lw $t0, -16220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2212($fp)
	sw $t0, -16224($fp)
	lw $t0, -16224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2224($fp)
	sw $t0, -16228($fp)
	lw $t0, -16228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2236($fp)
	sw $t0, -16232($fp)
	lw $t0, -16232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2248($fp)
	sw $t0, -16236($fp)
	lw $t0, -16236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2260($fp)
	sw $t0, -16240($fp)
	lw $t0, -16240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -16244($fp)
	li $t0, 0
	sw $t0, -16248($fp)
	li $t0, 4
	lw $t1, -16248($fp)
	mul $t0, $t0, $t1
	sw $t0, -16252($fp)
	lw $t0, -16252($fp)
	lw $t1, -16244($fp)
	add $t0, $t0, $t1
	sw $t0, -16256($fp)
	lw $t0, -16256($fp)
	lw $t1, 0($t0)
	sw $t1, -16260($fp)
	lw $t0, -16260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -16264($fp)
	li $t0, 1
	sw $t0, -16268($fp)
	li $t0, 4
	lw $t1, -16268($fp)
	mul $t0, $t0, $t1
	sw $t0, -16272($fp)
	lw $t0, -16272($fp)
	lw $t1, -16264($fp)
	add $t0, $t0, $t1
	sw $t0, -16276($fp)
	lw $t0, -16276($fp)
	lw $t1, 0($t0)
	sw $t1, -16280($fp)
	lw $t0, -16280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -16284($fp)
	li $t0, 2
	sw $t0, -16288($fp)
	li $t0, 4
	lw $t1, -16288($fp)
	mul $t0, $t0, $t1
	sw $t0, -16292($fp)
	lw $t0, -16292($fp)
	lw $t1, -16284($fp)
	add $t0, $t0, $t1
	sw $t0, -16296($fp)
	lw $t0, -16296($fp)
	lw $t1, 0($t0)
	sw $t1, -16300($fp)
	lw $t0, -16300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2344($fp)
	sw $t0, -16304($fp)
	lw $t0, -16304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2356($fp)
	sw $t0, -16308($fp)
	lw $t0, -16308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2368($fp)
	sw $t0, -16312($fp)
	lw $t0, -16312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2380($fp)
	sw $t0, -16316($fp)
	lw $t0, -16316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2392($fp)
	sw $t0, -16320($fp)
	lw $t0, -16320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -232
	sw $t0, -16324($fp)
	li $t0, 0
	sw $t0, -16328($fp)
	li $t0, 4
	lw $t1, -16328($fp)
	mul $t0, $t0, $t1
	sw $t0, -16332($fp)
	lw $t0, -16332($fp)
	lw $t1, -16324($fp)
	add $t0, $t0, $t1
	sw $t0, -16336($fp)
	lw $t0, -16336($fp)
	lw $t1, 0($t0)
	sw $t1, -16340($fp)
	lw $t0, -16340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -232
	sw $t0, -16344($fp)
	li $t0, 1
	sw $t0, -16348($fp)
	li $t0, 4
	lw $t1, -16348($fp)
	mul $t0, $t0, $t1
	sw $t0, -16352($fp)
	lw $t0, -16352($fp)
	lw $t1, -16344($fp)
	add $t0, $t0, $t1
	sw $t0, -16356($fp)
	lw $t0, -16356($fp)
	lw $t1, 0($t0)
	sw $t1, -16360($fp)
	lw $t0, -16360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -232
	sw $t0, -16364($fp)
	li $t0, 2
	sw $t0, -16368($fp)
	li $t0, 4
	lw $t1, -16368($fp)
	mul $t0, $t0, $t1
	sw $t0, -16372($fp)
	lw $t0, -16372($fp)
	lw $t1, -16364($fp)
	add $t0, $t0, $t1
	sw $t0, -16376($fp)
	lw $t0, -16376($fp)
	lw $t1, 0($t0)
	sw $t1, -16380($fp)
	lw $t0, -16380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2476($fp)
	sw $t0, -16384($fp)
	lw $t0, -16384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2488($fp)
	sw $t0, -16388($fp)
	lw $t0, -16388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -16392($fp)
	li $t0, 0
	sw $t0, -16396($fp)
	li $t0, 4
	lw $t1, -16396($fp)
	mul $t0, $t0, $t1
	sw $t0, -16400($fp)
	lw $t0, -16400($fp)
	lw $t1, -16392($fp)
	add $t0, $t0, $t1
	sw $t0, -16404($fp)
	lw $t0, -16404($fp)
	lw $t1, 0($t0)
	sw $t1, -16408($fp)
	lw $t0, -16408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -16412($fp)
	li $t0, 1
	sw $t0, -16416($fp)
	li $t0, 4
	lw $t1, -16416($fp)
	mul $t0, $t0, $t1
	sw $t0, -16420($fp)
	lw $t0, -16420($fp)
	lw $t1, -16412($fp)
	add $t0, $t0, $t1
	sw $t0, -16424($fp)
	lw $t0, -16424($fp)
	lw $t1, 0($t0)
	sw $t1, -16428($fp)
	lw $t0, -16428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -16432($fp)
	li $t0, 2
	sw $t0, -16436($fp)
	li $t0, 4
	lw $t1, -16436($fp)
	mul $t0, $t0, $t1
	sw $t0, -16440($fp)
	lw $t0, -16440($fp)
	lw $t1, -16432($fp)
	add $t0, $t0, $t1
	sw $t0, -16444($fp)
	lw $t0, -16444($fp)
	lw $t1, 0($t0)
	sw $t1, -16448($fp)
	lw $t0, -16448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -16452($fp)
	li $t0, 3
	sw $t0, -16456($fp)
	li $t0, 4
	lw $t1, -16456($fp)
	mul $t0, $t0, $t1
	sw $t0, -16460($fp)
	lw $t0, -16460($fp)
	lw $t1, -16452($fp)
	add $t0, $t0, $t1
	sw $t0, -16464($fp)
	lw $t0, -16464($fp)
	lw $t1, 0($t0)
	sw $t1, -16468($fp)
	lw $t0, -16468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -16472($fp)
	li $t0, 4
	sw $t0, -16476($fp)
	li $t0, 4
	lw $t1, -16476($fp)
	mul $t0, $t0, $t1
	sw $t0, -16480($fp)
	lw $t0, -16480($fp)
	lw $t1, -16472($fp)
	add $t0, $t0, $t1
	sw $t0, -16484($fp)
	lw $t0, -16484($fp)
	lw $t1, 0($t0)
	sw $t1, -16488($fp)
	lw $t0, -16488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2620($fp)
	sw $t0, -16492($fp)
	lw $t0, -16492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -16496($fp)
	li $t0, 0
	sw $t0, -16500($fp)
	li $t0, 4
	lw $t1, -16500($fp)
	mul $t0, $t0, $t1
	sw $t0, -16504($fp)
	lw $t0, -16504($fp)
	lw $t1, -16496($fp)
	add $t0, $t0, $t1
	sw $t0, -16508($fp)
	lw $t0, -16508($fp)
	lw $t1, 0($t0)
	sw $t1, -16512($fp)
	lw $t0, -16512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -16516($fp)
	li $t0, 1
	sw $t0, -16520($fp)
	li $t0, 4
	lw $t1, -16520($fp)
	mul $t0, $t0, $t1
	sw $t0, -16524($fp)
	lw $t0, -16524($fp)
	lw $t1, -16516($fp)
	add $t0, $t0, $t1
	sw $t0, -16528($fp)
	lw $t0, -16528($fp)
	lw $t1, 0($t0)
	sw $t1, -16532($fp)
	lw $t0, -16532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -16536($fp)
	li $t0, 2
	sw $t0, -16540($fp)
	li $t0, 4
	lw $t1, -16540($fp)
	mul $t0, $t0, $t1
	sw $t0, -16544($fp)
	lw $t0, -16544($fp)
	lw $t1, -16536($fp)
	add $t0, $t0, $t1
	sw $t0, -16548($fp)
	lw $t0, -16548($fp)
	lw $t1, 0($t0)
	sw $t1, -16552($fp)
	lw $t0, -16552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -16556($fp)
	li $t0, 3
	sw $t0, -16560($fp)
	li $t0, 4
	lw $t1, -16560($fp)
	mul $t0, $t0, $t1
	sw $t0, -16564($fp)
	lw $t0, -16564($fp)
	lw $t1, -16556($fp)
	add $t0, $t0, $t1
	sw $t0, -16568($fp)
	lw $t0, -16568($fp)
	lw $t1, 0($t0)
	sw $t1, -16572($fp)
	lw $t0, -16572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -16576($fp)
	li $t0, 4
	sw $t0, -16580($fp)
	li $t0, 4
	lw $t1, -16580($fp)
	mul $t0, $t0, $t1
	sw $t0, -16584($fp)
	lw $t0, -16584($fp)
	lw $t1, -16576($fp)
	add $t0, $t0, $t1
	sw $t0, -16588($fp)
	lw $t0, -16588($fp)
	lw $t1, 0($t0)
	sw $t1, -16592($fp)
	lw $t0, -16592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -16596($fp)
	li $t0, 5
	sw $t0, -16600($fp)
	li $t0, 4
	lw $t1, -16600($fp)
	mul $t0, $t0, $t1
	sw $t0, -16604($fp)
	lw $t0, -16604($fp)
	lw $t1, -16596($fp)
	add $t0, $t0, $t1
	sw $t0, -16608($fp)
	lw $t0, -16608($fp)
	lw $t1, 0($t0)
	sw $t1, -16612($fp)
	lw $t0, -16612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -16616($fp)
	li $t0, 6
	sw $t0, -16620($fp)
	li $t0, 4
	lw $t1, -16620($fp)
	mul $t0, $t0, $t1
	sw $t0, -16624($fp)
	lw $t0, -16624($fp)
	lw $t1, -16616($fp)
	add $t0, $t0, $t1
	sw $t0, -16628($fp)
	lw $t0, -16628($fp)
	lw $t1, 0($t0)
	sw $t1, -16632($fp)
	lw $t0, -16632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2800($fp)
	sw $t0, -16636($fp)
	lw $t0, -16636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2812($fp)
	sw $t0, -16640($fp)
	lw $t0, -16640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2824($fp)
	sw $t0, -16644($fp)
	lw $t0, -16644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2836($fp)
	sw $t0, -16648($fp)
	lw $t0, -16648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2848($fp)
	sw $t0, -16652($fp)
	lw $t0, -16652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2860($fp)
	sw $t0, -16656($fp)
	lw $t0, -16656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2872($fp)
	sw $t0, -16660($fp)
	lw $t0, -16660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2884($fp)
	sw $t0, -16664($fp)
	lw $t0, -16664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2896($fp)
	sw $t0, -16668($fp)
	lw $t0, -16668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2908($fp)
	sw $t0, -16672($fp)
	lw $t0, -16672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2920($fp)
	sw $t0, -16676($fp)
	lw $t0, -16676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -312
	sw $t0, -16680($fp)
	li $t0, 0
	sw $t0, -16684($fp)
	li $t0, 4
	lw $t1, -16684($fp)
	mul $t0, $t0, $t1
	sw $t0, -16688($fp)
	lw $t0, -16688($fp)
	lw $t1, -16680($fp)
	add $t0, $t0, $t1
	sw $t0, -16692($fp)
	lw $t0, -16692($fp)
	lw $t1, 0($t0)
	sw $t1, -16696($fp)
	lw $t0, -16696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -312
	sw $t0, -16700($fp)
	li $t0, 1
	sw $t0, -16704($fp)
	li $t0, 4
	lw $t1, -16704($fp)
	mul $t0, $t0, $t1
	sw $t0, -16708($fp)
	lw $t0, -16708($fp)
	lw $t1, -16700($fp)
	add $t0, $t0, $t1
	sw $t0, -16712($fp)
	lw $t0, -16712($fp)
	lw $t1, 0($t0)
	sw $t1, -16716($fp)
	lw $t0, -16716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -312
	sw $t0, -16720($fp)
	li $t0, 2
	sw $t0, -16724($fp)
	li $t0, 4
	lw $t1, -16724($fp)
	mul $t0, $t0, $t1
	sw $t0, -16728($fp)
	lw $t0, -16728($fp)
	lw $t1, -16720($fp)
	add $t0, $t0, $t1
	sw $t0, -16732($fp)
	lw $t0, -16732($fp)
	lw $t1, 0($t0)
	sw $t1, -16736($fp)
	lw $t0, -16736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -312
	sw $t0, -16740($fp)
	li $t0, 3
	sw $t0, -16744($fp)
	li $t0, 4
	lw $t1, -16744($fp)
	mul $t0, $t0, $t1
	sw $t0, -16748($fp)
	lw $t0, -16748($fp)
	lw $t1, -16740($fp)
	add $t0, $t0, $t1
	sw $t0, -16752($fp)
	lw $t0, -16752($fp)
	lw $t1, 0($t0)
	sw $t1, -16756($fp)
	lw $t0, -16756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -312
	sw $t0, -16760($fp)
	li $t0, 4
	sw $t0, -16764($fp)
	li $t0, 4
	lw $t1, -16764($fp)
	mul $t0, $t0, $t1
	sw $t0, -16768($fp)
	lw $t0, -16768($fp)
	lw $t1, -16760($fp)
	add $t0, $t0, $t1
	sw $t0, -16772($fp)
	lw $t0, -16772($fp)
	lw $t1, 0($t0)
	sw $t1, -16776($fp)
	lw $t0, -16776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -312
	sw $t0, -16780($fp)
	li $t0, 5
	sw $t0, -16784($fp)
	li $t0, 4
	lw $t1, -16784($fp)
	mul $t0, $t0, $t1
	sw $t0, -16788($fp)
	lw $t0, -16788($fp)
	lw $t1, -16780($fp)
	add $t0, $t0, $t1
	sw $t0, -16792($fp)
	lw $t0, -16792($fp)
	lw $t1, 0($t0)
	sw $t1, -16796($fp)
	lw $t0, -16796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -312
	sw $t0, -16800($fp)
	li $t0, 6
	sw $t0, -16804($fp)
	li $t0, 4
	lw $t1, -16804($fp)
	mul $t0, $t0, $t1
	sw $t0, -16808($fp)
	lw $t0, -16808($fp)
	lw $t1, -16800($fp)
	add $t0, $t0, $t1
	sw $t0, -16812($fp)
	lw $t0, -16812($fp)
	lw $t1, 0($t0)
	sw $t1, -16816($fp)
	lw $t0, -16816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -312
	sw $t0, -16820($fp)
	li $t0, 7
	sw $t0, -16824($fp)
	li $t0, 4
	lw $t1, -16824($fp)
	mul $t0, $t0, $t1
	sw $t0, -16828($fp)
	lw $t0, -16828($fp)
	lw $t1, -16820($fp)
	add $t0, $t0, $t1
	sw $t0, -16832($fp)
	lw $t0, -16832($fp)
	lw $t1, 0($t0)
	sw $t1, -16836($fp)
	lw $t0, -16836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3124($fp)
	sw $t0, -16840($fp)
	lw $t0, -16840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3136($fp)
	sw $t0, -16844($fp)
	lw $t0, -16844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3148($fp)
	sw $t0, -16848($fp)
	lw $t0, -16848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3160($fp)
	sw $t0, -16852($fp)
	lw $t0, -16852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3172($fp)
	sw $t0, -16856($fp)
	lw $t0, -16856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -16860($fp)
	li $t0, 0
	sw $t0, -16864($fp)
	li $t0, 4
	lw $t1, -16864($fp)
	mul $t0, $t0, $t1
	sw $t0, -16868($fp)
	lw $t0, -16868($fp)
	lw $t1, -16860($fp)
	add $t0, $t0, $t1
	sw $t0, -16872($fp)
	lw $t0, -16872($fp)
	lw $t1, 0($t0)
	sw $t1, -16876($fp)
	lw $t0, -16876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -16880($fp)
	li $t0, 1
	sw $t0, -16884($fp)
	li $t0, 4
	lw $t1, -16884($fp)
	mul $t0, $t0, $t1
	sw $t0, -16888($fp)
	lw $t0, -16888($fp)
	lw $t1, -16880($fp)
	add $t0, $t0, $t1
	sw $t0, -16892($fp)
	lw $t0, -16892($fp)
	lw $t1, 0($t0)
	sw $t1, -16896($fp)
	lw $t0, -16896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -16900($fp)
	li $t0, 2
	sw $t0, -16904($fp)
	li $t0, 4
	lw $t1, -16904($fp)
	mul $t0, $t0, $t1
	sw $t0, -16908($fp)
	lw $t0, -16908($fp)
	lw $t1, -16900($fp)
	add $t0, $t0, $t1
	sw $t0, -16912($fp)
	lw $t0, -16912($fp)
	lw $t1, 0($t0)
	sw $t1, -16916($fp)
	lw $t0, -16916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3256($fp)
	sw $t0, -16920($fp)
	lw $t0, -16920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -364
	sw $t0, -16924($fp)
	li $t0, 0
	sw $t0, -16928($fp)
	li $t0, 4
	lw $t1, -16928($fp)
	mul $t0, $t0, $t1
	sw $t0, -16932($fp)
	lw $t0, -16932($fp)
	lw $t1, -16924($fp)
	add $t0, $t0, $t1
	sw $t0, -16936($fp)
	lw $t0, -16936($fp)
	lw $t1, 0($t0)
	sw $t1, -16940($fp)
	lw $t0, -16940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -364
	sw $t0, -16944($fp)
	li $t0, 1
	sw $t0, -16948($fp)
	li $t0, 4
	lw $t1, -16948($fp)
	mul $t0, $t0, $t1
	sw $t0, -16952($fp)
	lw $t0, -16952($fp)
	lw $t1, -16944($fp)
	add $t0, $t0, $t1
	sw $t0, -16956($fp)
	lw $t0, -16956($fp)
	lw $t1, 0($t0)
	sw $t1, -16960($fp)
	lw $t0, -16960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -364
	sw $t0, -16964($fp)
	li $t0, 2
	sw $t0, -16968($fp)
	li $t0, 4
	lw $t1, -16968($fp)
	mul $t0, $t0, $t1
	sw $t0, -16972($fp)
	lw $t0, -16972($fp)
	lw $t1, -16964($fp)
	add $t0, $t0, $t1
	sw $t0, -16976($fp)
	lw $t0, -16976($fp)
	lw $t1, 0($t0)
	sw $t1, -16980($fp)
	lw $t0, -16980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -364
	sw $t0, -16984($fp)
	li $t0, 3
	sw $t0, -16988($fp)
	li $t0, 4
	lw $t1, -16988($fp)
	mul $t0, $t0, $t1
	sw $t0, -16992($fp)
	lw $t0, -16992($fp)
	lw $t1, -16984($fp)
	add $t0, $t0, $t1
	sw $t0, -16996($fp)
	lw $t0, -16996($fp)
	lw $t1, 0($t0)
	sw $t1, -17000($fp)
	lw $t0, -17000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -364
	sw $t0, -17004($fp)
	li $t0, 4
	sw $t0, -17008($fp)
	li $t0, 4
	lw $t1, -17008($fp)
	mul $t0, $t0, $t1
	sw $t0, -17012($fp)
	lw $t0, -17012($fp)
	lw $t1, -17004($fp)
	add $t0, $t0, $t1
	sw $t0, -17016($fp)
	lw $t0, -17016($fp)
	lw $t1, 0($t0)
	sw $t1, -17020($fp)
	lw $t0, -17020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -364
	sw $t0, -17024($fp)
	li $t0, 5
	sw $t0, -17028($fp)
	li $t0, 4
	lw $t1, -17028($fp)
	mul $t0, $t0, $t1
	sw $t0, -17032($fp)
	lw $t0, -17032($fp)
	lw $t1, -17024($fp)
	add $t0, $t0, $t1
	sw $t0, -17036($fp)
	lw $t0, -17036($fp)
	lw $t1, 0($t0)
	sw $t1, -17040($fp)
	lw $t0, -17040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -364
	sw $t0, -17044($fp)
	li $t0, 6
	sw $t0, -17048($fp)
	li $t0, 4
	lw $t1, -17048($fp)
	mul $t0, $t0, $t1
	sw $t0, -17052($fp)
	lw $t0, -17052($fp)
	lw $t1, -17044($fp)
	add $t0, $t0, $t1
	sw $t0, -17056($fp)
	lw $t0, -17056($fp)
	lw $t1, 0($t0)
	sw $t1, -17060($fp)
	lw $t0, -17060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -364
	sw $t0, -17064($fp)
	li $t0, 7
	sw $t0, -17068($fp)
	li $t0, 4
	lw $t1, -17068($fp)
	mul $t0, $t0, $t1
	sw $t0, -17072($fp)
	lw $t0, -17072($fp)
	lw $t1, -17064($fp)
	add $t0, $t0, $t1
	sw $t0, -17076($fp)
	lw $t0, -17076($fp)
	lw $t1, 0($t0)
	sw $t1, -17080($fp)
	lw $t0, -17080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -364
	sw $t0, -17084($fp)
	li $t0, 8
	sw $t0, -17088($fp)
	li $t0, 4
	lw $t1, -17088($fp)
	mul $t0, $t0, $t1
	sw $t0, -17092($fp)
	lw $t0, -17092($fp)
	lw $t1, -17084($fp)
	add $t0, $t0, $t1
	sw $t0, -17096($fp)
	lw $t0, -17096($fp)
	lw $t1, 0($t0)
	sw $t1, -17100($fp)
	lw $t0, -17100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -364
	sw $t0, -17104($fp)
	li $t0, 9
	sw $t0, -17108($fp)
	li $t0, 4
	lw $t1, -17108($fp)
	mul $t0, $t0, $t1
	sw $t0, -17112($fp)
	lw $t0, -17112($fp)
	lw $t1, -17104($fp)
	add $t0, $t0, $t1
	sw $t0, -17116($fp)
	lw $t0, -17116($fp)
	lw $t1, 0($t0)
	sw $t1, -17120($fp)
	lw $t0, -17120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3508($fp)
	sw $t0, -17124($fp)
	lw $t0, -17124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3520($fp)
	sw $t0, -17128($fp)
	lw $t0, -17128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -400
	sw $t0, -17132($fp)
	li $t0, 0
	sw $t0, -17136($fp)
	li $t0, 4
	lw $t1, -17136($fp)
	mul $t0, $t0, $t1
	sw $t0, -17140($fp)
	lw $t0, -17140($fp)
	lw $t1, -17132($fp)
	add $t0, $t0, $t1
	sw $t0, -17144($fp)
	lw $t0, -17144($fp)
	lw $t1, 0($t0)
	sw $t1, -17148($fp)
	lw $t0, -17148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -400
	sw $t0, -17152($fp)
	li $t0, 1
	sw $t0, -17156($fp)
	li $t0, 4
	lw $t1, -17156($fp)
	mul $t0, $t0, $t1
	sw $t0, -17160($fp)
	lw $t0, -17160($fp)
	lw $t1, -17152($fp)
	add $t0, $t0, $t1
	sw $t0, -17164($fp)
	lw $t0, -17164($fp)
	lw $t1, 0($t0)
	sw $t1, -17168($fp)
	lw $t0, -17168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -400
	sw $t0, -17172($fp)
	li $t0, 2
	sw $t0, -17176($fp)
	li $t0, 4
	lw $t1, -17176($fp)
	mul $t0, $t0, $t1
	sw $t0, -17180($fp)
	lw $t0, -17180($fp)
	lw $t1, -17172($fp)
	add $t0, $t0, $t1
	sw $t0, -17184($fp)
	lw $t0, -17184($fp)
	lw $t1, 0($t0)
	sw $t1, -17188($fp)
	lw $t0, -17188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -400
	sw $t0, -17192($fp)
	li $t0, 3
	sw $t0, -17196($fp)
	li $t0, 4
	lw $t1, -17196($fp)
	mul $t0, $t0, $t1
	sw $t0, -17200($fp)
	lw $t0, -17200($fp)
	lw $t1, -17192($fp)
	add $t0, $t0, $t1
	sw $t0, -17204($fp)
	lw $t0, -17204($fp)
	lw $t1, 0($t0)
	sw $t1, -17208($fp)
	lw $t0, -17208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -400
	sw $t0, -17212($fp)
	li $t0, 4
	sw $t0, -17216($fp)
	li $t0, 4
	lw $t1, -17216($fp)
	mul $t0, $t0, $t1
	sw $t0, -17220($fp)
	lw $t0, -17220($fp)
	lw $t1, -17212($fp)
	add $t0, $t0, $t1
	sw $t0, -17224($fp)
	lw $t0, -17224($fp)
	lw $t1, 0($t0)
	sw $t1, -17228($fp)
	lw $t0, -17228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -400
	sw $t0, -17232($fp)
	li $t0, 5
	sw $t0, -17236($fp)
	li $t0, 4
	lw $t1, -17236($fp)
	mul $t0, $t0, $t1
	sw $t0, -17240($fp)
	lw $t0, -17240($fp)
	lw $t1, -17232($fp)
	add $t0, $t0, $t1
	sw $t0, -17244($fp)
	lw $t0, -17244($fp)
	lw $t1, 0($t0)
	sw $t1, -17248($fp)
	lw $t0, -17248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -400
	sw $t0, -17252($fp)
	li $t0, 6
	sw $t0, -17256($fp)
	li $t0, 4
	lw $t1, -17256($fp)
	mul $t0, $t0, $t1
	sw $t0, -17260($fp)
	lw $t0, -17260($fp)
	lw $t1, -17252($fp)
	add $t0, $t0, $t1
	sw $t0, -17264($fp)
	lw $t0, -17264($fp)
	lw $t1, 0($t0)
	sw $t1, -17268($fp)
	lw $t0, -17268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -400
	sw $t0, -17272($fp)
	li $t0, 7
	sw $t0, -17276($fp)
	li $t0, 4
	lw $t1, -17276($fp)
	mul $t0, $t0, $t1
	sw $t0, -17280($fp)
	lw $t0, -17280($fp)
	lw $t1, -17272($fp)
	add $t0, $t0, $t1
	sw $t0, -17284($fp)
	lw $t0, -17284($fp)
	lw $t1, 0($t0)
	sw $t1, -17288($fp)
	lw $t0, -17288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -400
	sw $t0, -17292($fp)
	li $t0, 8
	sw $t0, -17296($fp)
	li $t0, 4
	lw $t1, -17296($fp)
	mul $t0, $t0, $t1
	sw $t0, -17300($fp)
	lw $t0, -17300($fp)
	lw $t1, -17292($fp)
	add $t0, $t0, $t1
	sw $t0, -17304($fp)
	lw $t0, -17304($fp)
	lw $t1, 0($t0)
	sw $t1, -17308($fp)
	lw $t0, -17308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3748($fp)
	sw $t0, -17312($fp)
	lw $t0, -17312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3760($fp)
	sw $t0, -17316($fp)
	lw $t0, -17316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3772($fp)
	sw $t0, -17320($fp)
	lw $t0, -17320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3784($fp)
	sw $t0, -17324($fp)
	lw $t0, -17324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3796($fp)
	sw $t0, -17328($fp)
	lw $t0, -17328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3808($fp)
	sw $t0, -17332($fp)
	lw $t0, -17332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3820($fp)
	sw $t0, -17336($fp)
	lw $t0, -17336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3832($fp)
	sw $t0, -17340($fp)
	lw $t0, -17340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3844($fp)
	sw $t0, -17344($fp)
	lw $t0, -17344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3856($fp)
	sw $t0, -17348($fp)
	lw $t0, -17348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3868($fp)
	sw $t0, -17352($fp)
	lw $t0, -17352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3880($fp)
	sw $t0, -17356($fp)
	lw $t0, -17356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3892($fp)
	sw $t0, -17360($fp)
	lw $t0, -17360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3904($fp)
	sw $t0, -17364($fp)
	lw $t0, -17364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3916($fp)
	sw $t0, -17368($fp)
	lw $t0, -17368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3928($fp)
	sw $t0, -17372($fp)
	lw $t0, -17372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3940($fp)
	sw $t0, -17376($fp)
	lw $t0, -17376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3952($fp)
	sw $t0, -17380($fp)
	lw $t0, -17380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -408
	sw $t0, -17384($fp)
	li $t0, 0
	sw $t0, -17388($fp)
	li $t0, 4
	lw $t1, -17388($fp)
	mul $t0, $t0, $t1
	sw $t0, -17392($fp)
	lw $t0, -17392($fp)
	lw $t1, -17384($fp)
	add $t0, $t0, $t1
	sw $t0, -17396($fp)
	lw $t0, -17396($fp)
	lw $t1, 0($t0)
	sw $t1, -17400($fp)
	lw $t0, -17400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -408
	sw $t0, -17404($fp)
	li $t0, 1
	sw $t0, -17408($fp)
	li $t0, 4
	lw $t1, -17408($fp)
	mul $t0, $t0, $t1
	sw $t0, -17412($fp)
	lw $t0, -17412($fp)
	lw $t1, -17404($fp)
	add $t0, $t0, $t1
	sw $t0, -17416($fp)
	lw $t0, -17416($fp)
	lw $t1, 0($t0)
	sw $t1, -17420($fp)
	lw $t0, -17420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4012($fp)
	sw $t0, -17424($fp)
	lw $t0, -17424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4024($fp)
	sw $t0, -17428($fp)
	lw $t0, -17428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4036($fp)
	sw $t0, -17432($fp)
	lw $t0, -17432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4048($fp)
	sw $t0, -17436($fp)
	lw $t0, -17436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -440
	sw $t0, -17440($fp)
	li $t0, 0
	sw $t0, -17444($fp)
	li $t0, 4
	lw $t1, -17444($fp)
	mul $t0, $t0, $t1
	sw $t0, -17448($fp)
	lw $t0, -17448($fp)
	lw $t1, -17440($fp)
	add $t0, $t0, $t1
	sw $t0, -17452($fp)
	lw $t0, -17452($fp)
	lw $t1, 0($t0)
	sw $t1, -17456($fp)
	lw $t0, -17456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -440
	sw $t0, -17460($fp)
	li $t0, 1
	sw $t0, -17464($fp)
	li $t0, 4
	lw $t1, -17464($fp)
	mul $t0, $t0, $t1
	sw $t0, -17468($fp)
	lw $t0, -17468($fp)
	lw $t1, -17460($fp)
	add $t0, $t0, $t1
	sw $t0, -17472($fp)
	lw $t0, -17472($fp)
	lw $t1, 0($t0)
	sw $t1, -17476($fp)
	lw $t0, -17476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -440
	sw $t0, -17480($fp)
	li $t0, 2
	sw $t0, -17484($fp)
	li $t0, 4
	lw $t1, -17484($fp)
	mul $t0, $t0, $t1
	sw $t0, -17488($fp)
	lw $t0, -17488($fp)
	lw $t1, -17480($fp)
	add $t0, $t0, $t1
	sw $t0, -17492($fp)
	lw $t0, -17492($fp)
	lw $t1, 0($t0)
	sw $t1, -17496($fp)
	lw $t0, -17496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -440
	sw $t0, -17500($fp)
	li $t0, 3
	sw $t0, -17504($fp)
	li $t0, 4
	lw $t1, -17504($fp)
	mul $t0, $t0, $t1
	sw $t0, -17508($fp)
	lw $t0, -17508($fp)
	lw $t1, -17500($fp)
	add $t0, $t0, $t1
	sw $t0, -17512($fp)
	lw $t0, -17512($fp)
	lw $t1, 0($t0)
	sw $t1, -17516($fp)
	lw $t0, -17516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -440
	sw $t0, -17520($fp)
	li $t0, 4
	sw $t0, -17524($fp)
	li $t0, 4
	lw $t1, -17524($fp)
	mul $t0, $t0, $t1
	sw $t0, -17528($fp)
	lw $t0, -17528($fp)
	lw $t1, -17520($fp)
	add $t0, $t0, $t1
	sw $t0, -17532($fp)
	lw $t0, -17532($fp)
	lw $t1, 0($t0)
	sw $t1, -17536($fp)
	lw $t0, -17536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -440
	sw $t0, -17540($fp)
	li $t0, 5
	sw $t0, -17544($fp)
	li $t0, 4
	lw $t1, -17544($fp)
	mul $t0, $t0, $t1
	sw $t0, -17548($fp)
	lw $t0, -17548($fp)
	lw $t1, -17540($fp)
	add $t0, $t0, $t1
	sw $t0, -17552($fp)
	lw $t0, -17552($fp)
	lw $t1, 0($t0)
	sw $t1, -17556($fp)
	lw $t0, -17556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -440
	sw $t0, -17560($fp)
	li $t0, 6
	sw $t0, -17564($fp)
	li $t0, 4
	lw $t1, -17564($fp)
	mul $t0, $t0, $t1
	sw $t0, -17568($fp)
	lw $t0, -17568($fp)
	lw $t1, -17560($fp)
	add $t0, $t0, $t1
	sw $t0, -17572($fp)
	lw $t0, -17572($fp)
	lw $t1, 0($t0)
	sw $t1, -17576($fp)
	lw $t0, -17576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -440
	sw $t0, -17580($fp)
	li $t0, 7
	sw $t0, -17584($fp)
	li $t0, 4
	lw $t1, -17584($fp)
	mul $t0, $t0, $t1
	sw $t0, -17588($fp)
	lw $t0, -17588($fp)
	lw $t1, -17580($fp)
	add $t0, $t0, $t1
	sw $t0, -17592($fp)
	lw $t0, -17592($fp)
	lw $t1, 0($t0)
	sw $t1, -17596($fp)
	lw $t0, -17596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4252($fp)
	sw $t0, -17600($fp)
	lw $t0, -17600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4264($fp)
	sw $t0, -17604($fp)
	lw $t0, -17604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4276($fp)
	sw $t0, -17608($fp)
	lw $t0, -17608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4288($fp)
	sw $t0, -17612($fp)
	lw $t0, -17612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4300($fp)
	sw $t0, -17616($fp)
	lw $t0, -17616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -444
	sw $t0, -17620($fp)
	li $t0, 0
	sw $t0, -17624($fp)
	li $t0, 4
	lw $t1, -17624($fp)
	mul $t0, $t0, $t1
	sw $t0, -17628($fp)
	lw $t0, -17628($fp)
	lw $t1, -17620($fp)
	add $t0, $t0, $t1
	sw $t0, -17632($fp)
	lw $t0, -17632($fp)
	lw $t1, 0($t0)
	sw $t1, -17636($fp)
	lw $t0, -17636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4336($fp)
	sw $t0, -17640($fp)
	lw $t0, -17640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4348($fp)
	sw $t0, -17644($fp)
	lw $t0, -17644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4360($fp)
	sw $t0, -17648($fp)
	lw $t0, -17648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4372($fp)
	sw $t0, -17652($fp)
	lw $t0, -17652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4384($fp)
	sw $t0, -17656($fp)
	lw $t0, -17656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4396($fp)
	sw $t0, -17660($fp)
	lw $t0, -17660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4408($fp)
	sw $t0, -17664($fp)
	lw $t0, -17664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -448
	sw $t0, -17668($fp)
	li $t0, 0
	sw $t0, -17672($fp)
	li $t0, 4
	lw $t1, -17672($fp)
	mul $t0, $t0, $t1
	sw $t0, -17676($fp)
	lw $t0, -17676($fp)
	lw $t1, -17668($fp)
	add $t0, $t0, $t1
	sw $t0, -17680($fp)
	lw $t0, -17680($fp)
	lw $t1, 0($t0)
	sw $t1, -17684($fp)
	lw $t0, -17684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -488
	sw $t0, -17688($fp)
	li $t0, 0
	sw $t0, -17692($fp)
	li $t0, 4
	lw $t1, -17692($fp)
	mul $t0, $t0, $t1
	sw $t0, -17696($fp)
	lw $t0, -17696($fp)
	lw $t1, -17688($fp)
	add $t0, $t0, $t1
	sw $t0, -17700($fp)
	lw $t0, -17700($fp)
	lw $t1, 0($t0)
	sw $t1, -17704($fp)
	lw $t0, -17704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -488
	sw $t0, -17708($fp)
	li $t0, 1
	sw $t0, -17712($fp)
	li $t0, 4
	lw $t1, -17712($fp)
	mul $t0, $t0, $t1
	sw $t0, -17716($fp)
	lw $t0, -17716($fp)
	lw $t1, -17708($fp)
	add $t0, $t0, $t1
	sw $t0, -17720($fp)
	lw $t0, -17720($fp)
	lw $t1, 0($t0)
	sw $t1, -17724($fp)
	lw $t0, -17724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -488
	sw $t0, -17728($fp)
	li $t0, 2
	sw $t0, -17732($fp)
	li $t0, 4
	lw $t1, -17732($fp)
	mul $t0, $t0, $t1
	sw $t0, -17736($fp)
	lw $t0, -17736($fp)
	lw $t1, -17728($fp)
	add $t0, $t0, $t1
	sw $t0, -17740($fp)
	lw $t0, -17740($fp)
	lw $t1, 0($t0)
	sw $t1, -17744($fp)
	lw $t0, -17744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -488
	sw $t0, -17748($fp)
	li $t0, 3
	sw $t0, -17752($fp)
	li $t0, 4
	lw $t1, -17752($fp)
	mul $t0, $t0, $t1
	sw $t0, -17756($fp)
	lw $t0, -17756($fp)
	lw $t1, -17748($fp)
	add $t0, $t0, $t1
	sw $t0, -17760($fp)
	lw $t0, -17760($fp)
	lw $t1, 0($t0)
	sw $t1, -17764($fp)
	lw $t0, -17764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -488
	sw $t0, -17768($fp)
	li $t0, 4
	sw $t0, -17772($fp)
	li $t0, 4
	lw $t1, -17772($fp)
	mul $t0, $t0, $t1
	sw $t0, -17776($fp)
	lw $t0, -17776($fp)
	lw $t1, -17768($fp)
	add $t0, $t0, $t1
	sw $t0, -17780($fp)
	lw $t0, -17780($fp)
	lw $t1, 0($t0)
	sw $t1, -17784($fp)
	lw $t0, -17784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -488
	sw $t0, -17788($fp)
	li $t0, 5
	sw $t0, -17792($fp)
	li $t0, 4
	lw $t1, -17792($fp)
	mul $t0, $t0, $t1
	sw $t0, -17796($fp)
	lw $t0, -17796($fp)
	lw $t1, -17788($fp)
	add $t0, $t0, $t1
	sw $t0, -17800($fp)
	lw $t0, -17800($fp)
	lw $t1, 0($t0)
	sw $t1, -17804($fp)
	lw $t0, -17804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -488
	sw $t0, -17808($fp)
	li $t0, 6
	sw $t0, -17812($fp)
	li $t0, 4
	lw $t1, -17812($fp)
	mul $t0, $t0, $t1
	sw $t0, -17816($fp)
	lw $t0, -17816($fp)
	lw $t1, -17808($fp)
	add $t0, $t0, $t1
	sw $t0, -17820($fp)
	lw $t0, -17820($fp)
	lw $t1, 0($t0)
	sw $t1, -17824($fp)
	lw $t0, -17824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -488
	sw $t0, -17828($fp)
	li $t0, 7
	sw $t0, -17832($fp)
	li $t0, 4
	lw $t1, -17832($fp)
	mul $t0, $t0, $t1
	sw $t0, -17836($fp)
	lw $t0, -17836($fp)
	lw $t1, -17828($fp)
	add $t0, $t0, $t1
	sw $t0, -17840($fp)
	lw $t0, -17840($fp)
	lw $t1, 0($t0)
	sw $t1, -17844($fp)
	lw $t0, -17844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -488
	sw $t0, -17848($fp)
	li $t0, 8
	sw $t0, -17852($fp)
	li $t0, 4
	lw $t1, -17852($fp)
	mul $t0, $t0, $t1
	sw $t0, -17856($fp)
	lw $t0, -17856($fp)
	lw $t1, -17848($fp)
	add $t0, $t0, $t1
	sw $t0, -17860($fp)
	lw $t0, -17860($fp)
	lw $t1, 0($t0)
	sw $t1, -17864($fp)
	lw $t0, -17864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -488
	sw $t0, -17868($fp)
	li $t0, 9
	sw $t0, -17872($fp)
	li $t0, 4
	lw $t1, -17872($fp)
	mul $t0, $t0, $t1
	sw $t0, -17876($fp)
	lw $t0, -17876($fp)
	lw $t1, -17868($fp)
	add $t0, $t0, $t1
	sw $t0, -17880($fp)
	lw $t0, -17880($fp)
	lw $t1, 0($t0)
	sw $t1, -17884($fp)
	lw $t0, -17884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4684($fp)
	sw $t0, -17888($fp)
	lw $t0, -17888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4696($fp)
	sw $t0, -17892($fp)
	lw $t0, -17892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4708($fp)
	sw $t0, -17896($fp)
	lw $t0, -17896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4720($fp)
	sw $t0, -17900($fp)
	lw $t0, -17900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4732($fp)
	sw $t0, -17904($fp)
	lw $t0, -17904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4744($fp)
	sw $t0, -17908($fp)
	lw $t0, -17908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4756($fp)
	sw $t0, -17912($fp)
	lw $t0, -17912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4768($fp)
	sw $t0, -17916($fp)
	lw $t0, -17916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4780($fp)
	sw $t0, -17920($fp)
	lw $t0, -17920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4792($fp)
	sw $t0, -17924($fp)
	lw $t0, -17924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4804($fp)
	sw $t0, -17928($fp)
	lw $t0, -17928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4816($fp)
	sw $t0, -17932($fp)
	lw $t0, -17932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4828($fp)
	sw $t0, -17936($fp)
	lw $t0, -17936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4840($fp)
	sw $t0, -17940($fp)
	lw $t0, -17940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4852($fp)
	sw $t0, -17944($fp)
	lw $t0, -17944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -17948($fp)
	li $t0, 0
	sw $t0, -17952($fp)
	li $t0, 40184
	sw $t0, -17956($fp)
	lw $t1, -17956($fp)
	li $t2, 0
	bne $t1, $t2, label837
	j label838
label837:
	li $t0, 1
	sw $t0, -17952($fp)
label838:
	li $t0, 63855
	sw $t0, -17960($fp)
	lw $t1, -17952($fp)
	lw $t2, -17960($fp)
	beq $t1, $t2, label835
	j label836
label835:
	li $t0, 1
	sw $t0, -17948($fp)
label836:
	lw $ra, -4($fp)
	lw $v0, -17948($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -8348
	li $t0, 4175
	sw $t0, -240($fp)
	addi $t0, $fp, -32
	sw $t0, -244($fp)
	li $t0, 0
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
	li $t0, 13129
	sw $t0, -264($fp)
	addi $t0, $fp, -32
	sw $t0, -268($fp)
	li $t0, 1
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
	li $t0, 871
	sw $t0, -288($fp)
	addi $t0, $fp, -32
	sw $t0, -292($fp)
	li $t0, 2
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
	li $t0, 52669
	sw $t0, -312($fp)
	addi $t0, $fp, -32
	sw $t0, -316($fp)
	li $t0, 3
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
	li $t0, 35194
	sw $t0, -336($fp)
	addi $t0, $fp, -32
	sw $t0, -340($fp)
	li $t0, 4
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
	li $t0, 16073
	sw $t0, -360($fp)
	addi $t0, $fp, -32
	sw $t0, -364($fp)
	li $t0, 5
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
	li $t0, 27737
	sw $t0, -384($fp)
	addi $t0, $fp, -32
	sw $t0, -388($fp)
	li $t0, 6
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
	li $t0, 7131
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	sw $t0, -416($fp)
	li $t0, 53493
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	li $t0, 38143
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	li $t0, 33850
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	li $t0, 37891
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	li $t0, 17584
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	li $t0, 40842
	sw $t0, -480($fp)
	addi $t0, $fp, -72
	sw $t0, -484($fp)
	li $t0, 0
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
	li $t0, 31498
	sw $t0, -504($fp)
	addi $t0, $fp, -72
	sw $t0, -508($fp)
	li $t0, 1
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
	li $t0, 16486
	sw $t0, -528($fp)
	addi $t0, $fp, -72
	sw $t0, -532($fp)
	li $t0, 2
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
	li $t0, 44112
	sw $t0, -552($fp)
	addi $t0, $fp, -72
	sw $t0, -556($fp)
	li $t0, 3
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
	li $t0, 29620
	sw $t0, -576($fp)
	addi $t0, $fp, -72
	sw $t0, -580($fp)
	li $t0, 4
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
	li $t0, 46334
	sw $t0, -600($fp)
	addi $t0, $fp, -72
	sw $t0, -604($fp)
	li $t0, 5
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
	li $t0, 4998
	sw $t0, -624($fp)
	addi $t0, $fp, -72
	sw $t0, -628($fp)
	li $t0, 6
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
	li $t0, 7130
	sw $t0, -648($fp)
	addi $t0, $fp, -72
	sw $t0, -652($fp)
	li $t0, 7
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
	li $t0, 27098
	sw $t0, -672($fp)
	addi $t0, $fp, -72
	sw $t0, -676($fp)
	li $t0, 8
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
	li $t0, 23525
	sw $t0, -696($fp)
	addi $t0, $fp, -72
	sw $t0, -700($fp)
	li $t0, 9
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
	li $t0, 34758
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	li $t0, 33144
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	li $t0, 45621
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	li $t0, 4805
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	li $t0, 30562
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -776($fp)
	li $t0, 52999
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -788($fp)
	li $t0, 44989
	sw $t0, -792($fp)
	addi $t0, $fp, -84
	sw $t0, -796($fp)
	li $t0, 0
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
	li $t0, 28882
	sw $t0, -816($fp)
	addi $t0, $fp, -84
	sw $t0, -820($fp)
	li $t0, 1
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
	li $t0, 57174
	sw $t0, -840($fp)
	addi $t0, $fp, -84
	sw $t0, -844($fp)
	li $t0, 2
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
	li $t0, 58119
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -872($fp)
	li $t0, 29753
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -884($fp)
	li $t0, 44308
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -896($fp)
	li $t0, 27777
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	li $t0, 45826
	sw $t0, -912($fp)
	addi $t0, $fp, -100
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
	li $t0, 6509
	sw $t0, -936($fp)
	addi $t0, $fp, -100
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
	li $t0, 34908
	sw $t0, -960($fp)
	addi $t0, $fp, -100
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
	li $t0, 33783
	sw $t0, -984($fp)
	addi $t0, $fp, -100
	sw $t0, -988($fp)
	li $t0, 3
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
	li $t0, 44653
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -1016($fp)
	li $t0, 3222
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	li $t0, 6138
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	li $t0, 62237
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	li $t0, 44064
	sw $t0, -1056($fp)
	addi $t0, $fp, -120
	sw $t0, -1060($fp)
	li $t0, 0
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
	li $t0, 37637
	sw $t0, -1080($fp)
	addi $t0, $fp, -120
	sw $t0, -1084($fp)
	li $t0, 1
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
	li $t0, 13187
	sw $t0, -1104($fp)
	addi $t0, $fp, -120
	sw $t0, -1108($fp)
	li $t0, 2
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
	li $t0, 22640
	sw $t0, -1128($fp)
	addi $t0, $fp, -120
	sw $t0, -1132($fp)
	li $t0, 3
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
	li $t0, 1721
	sw $t0, -1152($fp)
	addi $t0, $fp, -120
	sw $t0, -1156($fp)
	li $t0, 4
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
	li $t0, 59521
	sw $t0, -1176($fp)
	addi $t0, $fp, -136
	sw $t0, -1180($fp)
	li $t0, 0
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
	li $t0, 27638
	sw $t0, -1200($fp)
	addi $t0, $fp, -136
	sw $t0, -1204($fp)
	li $t0, 1
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
	li $t0, 8851
	sw $t0, -1224($fp)
	addi $t0, $fp, -136
	sw $t0, -1228($fp)
	li $t0, 2
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
	li $t0, 21083
	sw $t0, -1248($fp)
	addi $t0, $fp, -136
	sw $t0, -1252($fp)
	li $t0, 3
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
	li $t0, 51164
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	li $t0, 43609
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	li $t0, 54227
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	li $t0, 31249
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -1316($fp)
	li $t0, 48414
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	sw $t0, -1328($fp)
	li $t0, 19254
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -1340($fp)
	li $t0, 18712
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	sw $t0, -1352($fp)
	li $t0, 27868
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -1364($fp)
	li $t0, 48136
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -1376($fp)
	li $t0, 10351
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1388($fp)
	li $t0, 20451
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	sw $t0, -1400($fp)
	li $t0, 12353
	sw $t0, -1404($fp)
	addi $t0, $fp, -168
	sw $t0, -1408($fp)
	li $t0, 0
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
	li $t0, 54659
	sw $t0, -1428($fp)
	addi $t0, $fp, -168
	sw $t0, -1432($fp)
	li $t0, 1
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
	li $t0, 48228
	sw $t0, -1452($fp)
	addi $t0, $fp, -168
	sw $t0, -1456($fp)
	li $t0, 2
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
	li $t0, 58179
	sw $t0, -1476($fp)
	addi $t0, $fp, -168
	sw $t0, -1480($fp)
	li $t0, 3
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
	li $t0, 61168
	sw $t0, -1500($fp)
	addi $t0, $fp, -168
	sw $t0, -1504($fp)
	li $t0, 4
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
	li $t0, 17601
	sw $t0, -1524($fp)
	addi $t0, $fp, -168
	sw $t0, -1528($fp)
	li $t0, 5
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
	li $t0, 26426
	sw $t0, -1548($fp)
	addi $t0, $fp, -168
	sw $t0, -1552($fp)
	li $t0, 6
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
	li $t0, 40285
	sw $t0, -1572($fp)
	addi $t0, $fp, -168
	sw $t0, -1576($fp)
	li $t0, 7
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
	li $t0, 20823
	sw $t0, -1596($fp)
	addi $t0, $fp, -208
	sw $t0, -1600($fp)
	li $t0, 0
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
	li $t0, 32564
	sw $t0, -1620($fp)
	addi $t0, $fp, -208
	sw $t0, -1624($fp)
	li $t0, 1
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
	li $t0, 36986
	sw $t0, -1644($fp)
	addi $t0, $fp, -208
	sw $t0, -1648($fp)
	li $t0, 2
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
	li $t0, 64888
	sw $t0, -1668($fp)
	addi $t0, $fp, -208
	sw $t0, -1672($fp)
	li $t0, 3
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1680($fp)
	lw $t0, -1672($fp)
	lw $t1, -1680($fp)
	add $t0, $t0, $t1
	sw $t0, -1684($fp)
	lw $t0, -1668($fp)
	lw $t1, -1684($fp)
	sw $t0, 0($t1)
	lw $t0, -1684($fp)
	lw $t1, 0($t0)
	sw $t1, -1688($fp)
	li $t0, 4665
	sw $t0, -1692($fp)
	addi $t0, $fp, -208
	sw $t0, -1696($fp)
	li $t0, 4
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t0, -1696($fp)
	lw $t1, -1704($fp)
	add $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $t0, -1692($fp)
	lw $t1, -1708($fp)
	sw $t0, 0($t1)
	lw $t0, -1708($fp)
	lw $t1, 0($t0)
	sw $t1, -1712($fp)
	li $t0, 50173
	sw $t0, -1716($fp)
	addi $t0, $fp, -208
	sw $t0, -1720($fp)
	li $t0, 5
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1728($fp)
	lw $t0, -1720($fp)
	lw $t1, -1728($fp)
	add $t0, $t0, $t1
	sw $t0, -1732($fp)
	lw $t0, -1716($fp)
	lw $t1, -1732($fp)
	sw $t0, 0($t1)
	lw $t0, -1732($fp)
	lw $t1, 0($t0)
	sw $t1, -1736($fp)
	li $t0, 21992
	sw $t0, -1740($fp)
	addi $t0, $fp, -208
	sw $t0, -1744($fp)
	li $t0, 6
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1752($fp)
	lw $t0, -1744($fp)
	lw $t1, -1752($fp)
	add $t0, $t0, $t1
	sw $t0, -1756($fp)
	lw $t0, -1740($fp)
	lw $t1, -1756($fp)
	sw $t0, 0($t1)
	lw $t0, -1756($fp)
	lw $t1, 0($t0)
	sw $t1, -1760($fp)
	li $t0, 6386
	sw $t0, -1764($fp)
	addi $t0, $fp, -208
	sw $t0, -1768($fp)
	li $t0, 7
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1776($fp)
	lw $t0, -1768($fp)
	lw $t1, -1776($fp)
	add $t0, $t0, $t1
	sw $t0, -1780($fp)
	lw $t0, -1764($fp)
	lw $t1, -1780($fp)
	sw $t0, 0($t1)
	lw $t0, -1780($fp)
	lw $t1, 0($t0)
	sw $t1, -1784($fp)
	li $t0, 44158
	sw $t0, -1788($fp)
	addi $t0, $fp, -208
	sw $t0, -1792($fp)
	li $t0, 8
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1800($fp)
	lw $t0, -1792($fp)
	lw $t1, -1800($fp)
	add $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t0, -1788($fp)
	lw $t1, -1804($fp)
	sw $t0, 0($t1)
	lw $t0, -1804($fp)
	lw $t1, 0($t0)
	sw $t1, -1808($fp)
	li $t0, 49631
	sw $t0, -1812($fp)
	addi $t0, $fp, -208
	sw $t0, -1816($fp)
	li $t0, 9
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1824($fp)
	lw $t0, -1816($fp)
	lw $t1, -1824($fp)
	add $t0, $t0, $t1
	sw $t0, -1828($fp)
	lw $t0, -1812($fp)
	lw $t1, -1828($fp)
	sw $t0, 0($t1)
	lw $t0, -1828($fp)
	lw $t1, 0($t0)
	sw $t1, -1832($fp)
	li $t0, 15238
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	sw $t0, -1844($fp)
	li $t0, 65241
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	sw $t0, -1856($fp)
	li $t0, 35259
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	sw $t0, -1868($fp)
	li $t0, 58847
	sw $t0, -1872($fp)
	addi $t0, $fp, -224
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
	li $t0, 53933
	sw $t0, -1896($fp)
	addi $t0, $fp, -224
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
	li $t0, 972
	sw $t0, -1920($fp)
	addi $t0, $fp, -224
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
	li $t0, 41726
	sw $t0, -1944($fp)
	addi $t0, $fp, -224
	sw $t0, -1948($fp)
	li $t0, 3
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
	li $t0, 7651
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	sw $t0, -1976($fp)
	li $t0, 19685
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	sw $t0, -1984($fp)
	lw $t0, -1984($fp)
	sw $t0, -1988($fp)
	li $t0, 4058
	sw $t0, -1992($fp)
	lw $t0, -1992($fp)
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	sw $t0, -2000($fp)
	li $t0, 55787
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	sw $t0, -2012($fp)
	li $t0, 30036
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	sw $t0, -2024($fp)
	li $t0, 24509
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	sw $t0, -2036($fp)
	li $t0, 2604
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	sw $t0, -2048($fp)
	li $t0, 19159
	sw $t0, -2052($fp)
	lw $t0, -2052($fp)
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	sw $t0, -2060($fp)
	li $t0, 7201
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	sw $t0, -2072($fp)
	li $t0, 60783
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	sw $t0, -2084($fp)
	li $t0, 14791
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	sw $t0, -2096($fp)
	li $t0, 24802
	sw $t0, -2100($fp)
	addi $t0, $fp, -236
	sw $t0, -2104($fp)
	li $t0, 0
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2112($fp)
	lw $t0, -2104($fp)
	lw $t1, -2112($fp)
	add $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t0, -2100($fp)
	lw $t1, -2116($fp)
	sw $t0, 0($t1)
	lw $t0, -2116($fp)
	lw $t1, 0($t0)
	sw $t1, -2120($fp)
	li $t0, 21673
	sw $t0, -2124($fp)
	addi $t0, $fp, -236
	sw $t0, -2128($fp)
	li $t0, 1
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2136($fp)
	lw $t0, -2128($fp)
	lw $t1, -2136($fp)
	add $t0, $t0, $t1
	sw $t0, -2140($fp)
	lw $t0, -2124($fp)
	lw $t1, -2140($fp)
	sw $t0, 0($t1)
	lw $t0, -2140($fp)
	lw $t1, 0($t0)
	sw $t1, -2144($fp)
	li $t0, 55077
	sw $t0, -2148($fp)
	addi $t0, $fp, -236
	sw $t0, -2152($fp)
	li $t0, 2
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2160($fp)
	lw $t0, -2152($fp)
	lw $t1, -2160($fp)
	add $t0, $t0, $t1
	sw $t0, -2164($fp)
	lw $t0, -2148($fp)
	lw $t1, -2164($fp)
	sw $t0, 0($t1)
	lw $t0, -2164($fp)
	lw $t1, 0($t0)
	sw $t1, -2168($fp)
label839:
	li $t0, 0
	sw $t0, -2172($fp)
	li $t0, 0
	sw $t0, -2176($fp)
	li $t0, 0
	sw $t0, -2180($fp)
	lw $t0, -904($fp)
	sw $t0, -2184($fp)
	lw $t0, -2044($fp)
	sw $t0, -2188($fp)
	lw $t1, -2184($fp)
	lw $t2, -2188($fp)
	beq $t1, $t2, label846
	j label847
label846:
	li $t0, 1
	sw $t0, -2180($fp)
label847:
	li $t0, 45626
	sw $t0, -2192($fp)
	lw $t1, -2180($fp)
	lw $t2, -2192($fp)
	bne $t1, $t2, label844
	j label845
label844:
	li $t0, 1
	sw $t0, -2176($fp)
label845:
	li $t0, 0
	sw $t0, -2196($fp)
	lw $t0, 4($fp)
	sw $t0, -2200($fp)
	lw $t0, -436($fp)
	sw $t0, -2204($fp)
	lw $t1, -2200($fp)
	lw $t2, -2204($fp)
	blt $t1, $t2, label848
	j label849
label848:
	li $t0, 1
	sw $t0, -2196($fp)
label849:
	lw $t1, -2176($fp)
	lw $t2, -2196($fp)
	beq $t1, $t2, label842
	j label843
label842:
	li $t0, 1
	sw $t0, -2172($fp)
label843:
	lw $t0, -2172($fp)
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -2208($fp)
	lw $t1, -2208($fp)
	li $t2, 0
	bne $t1, $t2, label840
	j label841
label840:
	li $t0, 0
	sw $t0, -2212($fp)
	li $t0, 26527
	sw $t0, -2216($fp)
	li $t0, 54237
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -2224($fp)
	addi $sp, $sp, -4
	lw $t0, -2216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2224($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2228($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2228($fp)
	sub $t0, $t0, $t1
	sw $t0, -2232($fp)
	lw $t1, -2232($fp)
	li $t2, 0
	bne $t1, $t2, label851
	j label853
label853:
	li $t0, 0
	sw $t0, -2236($fp)
	li $t0, 44978
	sw $t0, -2240($fp)
	lw $t0, 8($fp)
	sw $t0, -2244($fp)
	lw $t1, -2240($fp)
	lw $t2, -2244($fp)
	bgt $t1, $t2, label854
	j label855
label854:
	li $t0, 1
	sw $t0, -2236($fp)
label855:
	li $t0, 58903
	sw $t0, -2248($fp)
	lw $t1, -2236($fp)
	lw $t2, -2248($fp)
	bge $t1, $t2, label852
	j label851
label852:
	lw $t0, -1024($fp)
	sw $t0, -2252($fp)
	li $t0, 11165
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
	bne $t1, $t2, label850
	j label851
label850:
	li $t0, 1
	sw $t0, -2212($fp)
label851:
	lw $ra, -4($fp)
	lw $v0, -2212($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label839
label841:
	li $t0, 1434
	sw $t0, -2268($fp)
	lw $t1, -2268($fp)
	li $t2, 0
	bne $t1, $t2, label856
	j label857
label856:
	li $t0, 0
	sw $t0, -2272($fp)
	li $t0, 65289
	sw $t0, -2276($fp)
	lw $t1, -2276($fp)
	li $t2, 0
	bne $t1, $t2, label861
	j label860
label861:
	li $t0, 55323
	sw $t0, -2280($fp)
	lw $t1, -2280($fp)
	li $t2, 0
	bne $t1, $t2, label860
	j label859
label859:
	li $t0, 1
	sw $t0, -2272($fp)
label860:
	j label858
label857:
label862:
	addi $t0, $fp, -120
	sw $t0, -2284($fp)
	li $t0, 0
	sw $t0, -2288($fp)
	lw $t0, -460($fp)
	sw $t0, -2292($fp)
	lw $t1, -2292($fp)
	li $t2, 0
	bne $t1, $t2, label867
	j label866
label867:
	lw $t0, -1312($fp)
	sw $t0, -2296($fp)
	lw $t1, -2296($fp)
	li $t2, 0
	bne $t1, $t2, label865
	j label866
label865:
	li $t0, 1
	sw $t0, -2288($fp)
label866:
	lw $t0, -2288($fp)
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	sw $t0, -2300($fp)
	li $t0, 4
	lw $t1, -2300($fp)
	mul $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $t0, -2304($fp)
	lw $t1, -2284($fp)
	add $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $t0, -2308($fp)
	lw $t1, 0($t0)
	sw $t1, -2312($fp)
	lw $t1, -2312($fp)
	li $t2, 0
	bne $t1, $t2, label863
	j label864
label863:
	addi $t0, $fp, -236
	sw $t0, -2316($fp)
	li $t0, 0
	sw $t0, -2320($fp)
	addi $t0, $fp, -168
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
	lw $t0, -436($fp)
	sw $t0, -2344($fp)
	lw $t0, -2340($fp)
	lw $t1, -2344($fp)
	sub $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t0, -424($fp)
	sw $t0, -2352($fp)
	lw $t0, -784($fp)
	sw $t0, -2356($fp)
	lw $t0, -2352($fp)
	lw $t1, -2356($fp)
	add $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $t1, -2348($fp)
	lw $t2, -2360($fp)
	bge $t1, $t2, label871
	j label872
label871:
	li $t0, 1
	sw $t0, -2320($fp)
label872:
	li $t0, 4
	lw $t1, -2320($fp)
	mul $t0, $t0, $t1
	sw $t0, -2364($fp)
	lw $t0, -2364($fp)
	lw $t1, -2316($fp)
	add $t0, $t0, $t1
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	lw $t1, 0($t0)
	sw $t1, -2372($fp)
	lw $t1, -2372($fp)
	li $t2, 0
	bne $t1, $t2, label868
	j label869
label868:
	li $t0, 55029
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	sw $t0, -2448($fp)
	lw $t0, -2448($fp)
	sw $t0, -2452($fp)
	li $t0, 20788
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	sw $t0, -2464($fp)
	li $t0, 8303
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	sw $t0, -2476($fp)
	li $t0, 43426
	sw $t0, -2480($fp)
	addi $t0, $fp, -2412
	sw $t0, -2484($fp)
	li $t0, 0
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $t0, -2484($fp)
	lw $t1, -2492($fp)
	add $t0, $t0, $t1
	sw $t0, -2496($fp)
	lw $t0, -2480($fp)
	lw $t1, -2496($fp)
	sw $t0, 0($t1)
	lw $t0, -2496($fp)
	lw $t1, 0($t0)
	sw $t1, -2500($fp)
	li $t0, 21761
	sw $t0, -2504($fp)
	addi $t0, $fp, -2412
	sw $t0, -2508($fp)
	li $t0, 1
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2516($fp)
	lw $t0, -2508($fp)
	lw $t1, -2516($fp)
	add $t0, $t0, $t1
	sw $t0, -2520($fp)
	lw $t0, -2504($fp)
	lw $t1, -2520($fp)
	sw $t0, 0($t1)
	lw $t0, -2520($fp)
	lw $t1, 0($t0)
	sw $t1, -2524($fp)
	li $t0, 50029
	sw $t0, -2528($fp)
	addi $t0, $fp, -2412
	sw $t0, -2532($fp)
	li $t0, 2
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2540($fp)
	lw $t0, -2532($fp)
	lw $t1, -2540($fp)
	add $t0, $t0, $t1
	sw $t0, -2544($fp)
	lw $t0, -2528($fp)
	lw $t1, -2544($fp)
	sw $t0, 0($t1)
	lw $t0, -2544($fp)
	lw $t1, 0($t0)
	sw $t1, -2548($fp)
	li $t0, 51077
	sw $t0, -2552($fp)
	addi $t0, $fp, -2412
	sw $t0, -2556($fp)
	li $t0, 3
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2564($fp)
	lw $t0, -2556($fp)
	lw $t1, -2564($fp)
	add $t0, $t0, $t1
	sw $t0, -2568($fp)
	lw $t0, -2552($fp)
	lw $t1, -2568($fp)
	sw $t0, 0($t1)
	lw $t0, -2568($fp)
	lw $t1, 0($t0)
	sw $t1, -2572($fp)
	li $t0, 41446
	sw $t0, -2576($fp)
	addi $t0, $fp, -2412
	sw $t0, -2580($fp)
	li $t0, 4
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2588($fp)
	lw $t0, -2580($fp)
	lw $t1, -2588($fp)
	add $t0, $t0, $t1
	sw $t0, -2592($fp)
	lw $t0, -2576($fp)
	lw $t1, -2592($fp)
	sw $t0, 0($t1)
	lw $t0, -2592($fp)
	lw $t1, 0($t0)
	sw $t1, -2596($fp)
	li $t0, 54087
	sw $t0, -2600($fp)
	addi $t0, $fp, -2412
	sw $t0, -2604($fp)
	li $t0, 5
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2612($fp)
	lw $t0, -2604($fp)
	lw $t1, -2612($fp)
	add $t0, $t0, $t1
	sw $t0, -2616($fp)
	lw $t0, -2600($fp)
	lw $t1, -2616($fp)
	sw $t0, 0($t1)
	lw $t0, -2616($fp)
	lw $t1, 0($t0)
	sw $t1, -2620($fp)
	li $t0, 41328
	sw $t0, -2624($fp)
	addi $t0, $fp, -2412
	sw $t0, -2628($fp)
	li $t0, 6
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2636($fp)
	lw $t0, -2628($fp)
	lw $t1, -2636($fp)
	add $t0, $t0, $t1
	sw $t0, -2640($fp)
	lw $t0, -2624($fp)
	lw $t1, -2640($fp)
	sw $t0, 0($t1)
	lw $t0, -2640($fp)
	lw $t1, 0($t0)
	sw $t1, -2644($fp)
	li $t0, 5946
	sw $t0, -2648($fp)
	addi $t0, $fp, -2412
	sw $t0, -2652($fp)
	li $t0, 7
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
	li $t0, 13060
	sw $t0, -2672($fp)
	addi $t0, $fp, -2412
	sw $t0, -2676($fp)
	li $t0, 8
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
	li $t0, 43932
	sw $t0, -2696($fp)
	addi $t0, $fp, -2412
	sw $t0, -2700($fp)
	li $t0, 9
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
	li $t0, 25105
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	sw $t0, -2728($fp)
	li $t0, 20261
	sw $t0, -2732($fp)
	addi $t0, $fp, -2440
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
	li $t0, 39179
	sw $t0, -2756($fp)
	addi $t0, $fp, -2440
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
	li $t0, 39896
	sw $t0, -2780($fp)
	addi $t0, $fp, -2440
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
	li $t0, 45064
	sw $t0, -2804($fp)
	addi $t0, $fp, -2440
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
	li $t0, 60852
	sw $t0, -2828($fp)
	addi $t0, $fp, -2440
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
	li $t0, 29437
	sw $t0, -2852($fp)
	addi $t0, $fp, -2440
	sw $t0, -2856($fp)
	li $t0, 5
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
	li $t0, 25154
	sw $t0, -2876($fp)
	addi $t0, $fp, -2440
	sw $t0, -2880($fp)
	li $t0, 6
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
	li $t0, 49553
	sw $t0, -2900($fp)
	lw $t0, -2900($fp)
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	sw $t0, -2908($fp)
	li $t0, 0
	sw $t0, -2912($fp)
	li $t0, 0
	sw $t0, -2916($fp)
	lw $t0, -772($fp)
	sw $t0, -2920($fp)
	lw $t1, -2920($fp)
	li $t2, 0
	bne $t1, $t2, label878
	j label877
label877:
	li $t0, 1
	sw $t0, -2916($fp)
label878:
	lw $t0, -2472($fp)
	sw $t0, -2924($fp)
	lw $t0, -2916($fp)
	lw $t1, -2924($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2928($fp)
	li $t0, 0
	sw $t0, -2932($fp)
	li $t0, 42674
	sw $t0, -2936($fp)
	lw $t0, -1036($fp)
	sw $t0, -2940($fp)
	lw $t0, -2936($fp)
	lw $t1, -2940($fp)
	add $t0, $t0, $t1
	sw $t0, -2944($fp)
	li $t0, 0
	sw $t0, -2948($fp)
	lw $t0, -2904($fp)
	sw $t0, -2952($fp)
	lw $t0, -2044($fp)
	sw $t0, -2956($fp)
	lw $t0, -2952($fp)
	lw $t1, -2956($fp)
	sub $t0, $t0, $t1
	sw $t0, -2960($fp)
	lw $t1, -2960($fp)
	li $t2, 0
	bne $t1, $t2, label884
	j label883
label884:
	li $t0, 6030
	sw $t0, -2964($fp)
	lw $t1, -2964($fp)
	li $t2, 0
	bne $t1, $t2, label882
	j label883
label882:
	li $t0, 1
	sw $t0, -2948($fp)
label883:
	li $t0, 0
	sw $t0, -2968($fp)
	addi $t0, $fp, -100
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
	lw $t1, -2988($fp)
	li $t2, 0
	bne $t1, $t2, label887
	j label886
label887:
	li $t0, 1594
	sw $t0, -2992($fp)
	lw $t1, -2992($fp)
	li $t2, 0
	bne $t1, $t2, label885
	j label886
label885:
	li $t0, 1
	sw $t0, -2968($fp)
label886:
	li $t0, 55965
	sw $t0, -2996($fp)
	addi $t0, $fp, -72
	sw $t0, -3000($fp)
	lw $t0, -2092($fp)
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
	addi $sp, $sp, -4
	lw $t0, -2944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3016($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3020($fp)
	addi $sp, $sp, 24
	lw $t1, -3020($fp)
	li $t2, 0
	bne $t1, $t2, label881
	j label880
label881:
	li $t0, 56917
	sw $t0, -3024($fp)
	lw $t1, -3024($fp)
	li $t2, 0
	bne $t1, $t2, label879
	j label880
label879:
	li $t0, 1
	sw $t0, -2932($fp)
label880:
	addi $sp, $sp, -4
	lw $t0, -2928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2932($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3028($fp)
	addi $sp, $sp, 12
	lw $t1, -3028($fp)
	li $t2, 0
	bne $t1, $t2, label876
	j label875
label876:
	li $t0, 0
	sw $t0, -3032($fp)
	lw $t0, -1312($fp)
	sw $t0, -3036($fp)
	lw $t1, -3036($fp)
	li $t2, 0
	bne $t1, $t2, label889
	j label888
label888:
	li $t0, 1
	sw $t0, -3032($fp)
label889:
	li $t0, 57096
	sw $t0, -3040($fp)
	lw $t0, -3032($fp)
	lw $t1, -3040($fp)
	mul $t0, $t0, $t1
	sw $t0, -3044($fp)
	lw $t1, -3044($fp)
	li $t2, 0
	bne $t1, $t2, label873
	j label875
label875:
	li $t0, 0
	sw $t0, -3048($fp)
	lw $t0, -1012($fp)
	sw $t0, -3052($fp)
	lw $t1, -3052($fp)
	li $t2, 0
	bne $t1, $t2, label891
	j label890
label890:
	li $t0, 1
	sw $t0, -3048($fp)
label891:
	li $t0, 57665
	sw $t0, -3056($fp)
	lw $t0, -3048($fp)
	lw $t1, -3056($fp)
	mul $t0, $t0, $t1
	sw $t0, -3060($fp)
	lw $t1, -3060($fp)
	li $t2, 0
	bne $t1, $t2, label873
	j label874
label873:
	li $t0, 1
	sw $t0, -2912($fp)
label874:
label892:
	lw $t0, 4($fp)
	sw $t0, -3064($fp)
	lw $t0, -748($fp)
	sw $t0, -3068($fp)
	li $t0, 0
	lw $t1, -3068($fp)
	sub $t0, $t0, $t1
	sw $t0, -3072($fp)
	li $t0, 0
	lw $t1, -3072($fp)
	sub $t0, $t0, $t1
	sw $t0, -3076($fp)
	lw $t0, -3064($fp)
	lw $t1, -3076($fp)
	mul $t0, $t0, $t1
	sw $t0, -3080($fp)
	lw $t1, -3080($fp)
	li $t2, 0
	bne $t1, $t2, label893
	j label894
label893:
	li $t0, 0
	sw $t0, -3084($fp)
	li $t0, 0
	sw $t0, -3088($fp)
	li $t0, 432
	sw $t0, -3092($fp)
	lw $t1, -3092($fp)
	li $t2, 0
	bne $t1, $t2, label898
	j label897
label897:
	li $t0, 1
	sw $t0, -3088($fp)
label898:
	li $t0, 24300
	sw $t0, -3096($fp)
	lw $t1, -3088($fp)
	lw $t2, -3096($fp)
	bge $t1, $t2, label895
	j label896
label895:
	li $t0, 1
	sw $t0, -3084($fp)
label896:
	li $t0, 0
	sw $t0, -3100($fp)
	li $t0, 46410
	sw $t0, -3104($fp)
	li $t0, 12348
	sw $t0, -3108($fp)
	lw $t1, -3104($fp)
	lw $t2, -3108($fp)
	beq $t1, $t2, label899
	j label901
label901:
	lw $t0, -1012($fp)
	sw $t0, -3112($fp)
	lw $t1, -3112($fp)
	li $t2, 0
	bne $t1, $t2, label899
	j label900
label899:
	li $t0, 1
	sw $t0, -3100($fp)
label900:
	addi $sp, $sp, -4
	lw $t0, -3084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3100($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3116($fp)
	addi $sp, $sp, 12
	lw $t0, -1384($fp)
	sw $t0, -3120($fp)
	lw $t0, -3116($fp)
	lw $t1, -3120($fp)
	add $t0, $t0, $t1
	sw $t0, -3124($fp)
	j label892
label894:
	li $t0, 34109
	sw $t0, -3128($fp)
label902:
	lw $t0, -2460($fp)
	sw $t0, -3132($fp)
	li $t0, 0
	sw $t0, -3136($fp)
	li $t0, 0
	sw $t0, -3140($fp)
	li $t0, 39012
	sw $t0, -3144($fp)
	lw $t1, -3144($fp)
	li $t2, 0
	bne $t1, $t2, label908
	j label907
label907:
	li $t0, 1
	sw $t0, -3140($fp)
label908:
	li $t0, 51169
	sw $t0, -3148($fp)
	lw $t1, -3140($fp)
	lw $t2, -3148($fp)
	ble $t1, $t2, label905
	j label906
label905:
	li $t0, 1
	sw $t0, -3136($fp)
label906:
	lw $t0, -412($fp)
	sw $t0, -3152($fp)
	li $t0, 0
	lw $t1, -3152($fp)
	sub $t0, $t0, $t1
	sw $t0, -3156($fp)
	li $t0, 10019
	sw $t0, -3160($fp)
	lw $t0, -3156($fp)
	lw $t1, -3160($fp)
	add $t0, $t0, $t1
	sw $t0, -3164($fp)
	lw $t0, -1996($fp)
	sw $t0, -3168($fp)
	li $t0, 9841
	sw $t0, -3172($fp)
	lw $t0, -784($fp)
	sw $t0, -3176($fp)
	lw $t0, -3172($fp)
	lw $t1, -3176($fp)
	sub $t0, $t0, $t1
	sw $t0, -3180($fp)
	lw $t0, -1348($fp)
	sw $t0, -3184($fp)
	lw $t0, -3180($fp)
	lw $t1, -3184($fp)
	add $t0, $t0, $t1
	sw $t0, -3188($fp)
	addi $t0, $fp, -2412
	sw $t0, -3192($fp)
	lw $t0, -1012($fp)
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
	li $t0, 50461
	sw $t0, -3212($fp)
	lw $t0, -3208($fp)
	lw $t1, -3212($fp)
	mul $t0, $t0, $t1
	sw $t0, -3216($fp)
	addi $sp, $sp, -4
	lw $t0, -3136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3216($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3220($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -3224($fp)
	li $t0, 6798
	sw $t0, -3228($fp)
	lw $t0, -1036($fp)
	sw $t0, -3232($fp)
	lw $t0, -3228($fp)
	lw $t1, -3232($fp)
	sub $t0, $t0, $t1
	sw $t0, -3236($fp)
	addi $t0, $fp, -2440
	sw $t0, -3240($fp)
	lw $t0, -784($fp)
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
	li $t0, 29565
	sw $t0, -3260($fp)
	li $t0, 41070
	sw $t0, -3264($fp)
	lw $t0, -3260($fp)
	lw $t1, -3264($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3268($fp)
	lw $t0, -2448($fp)
	sw $t0, -3272($fp)
	lw $t0, -3268($fp)
	lw $t1, -3272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3276($fp)
	li $t0, 0
	sw $t0, -3280($fp)
	li $t0, 15965
	sw $t0, -3284($fp)
	li $t0, 52072
	sw $t0, -3288($fp)
	lw $t0, -3284($fp)
	lw $t1, -3288($fp)
	mul $t0, $t0, $t1
	sw $t0, -3292($fp)
	lw $t0, -448($fp)
	sw $t0, -3296($fp)
	lw $t1, -3292($fp)
	lw $t2, -3296($fp)
	ble $t1, $t2, label912
	j label913
label912:
	li $t0, 1
	sw $t0, -3280($fp)
label913:
	addi $t0, $fp, -208
	sw $t0, -3300($fp)
	lw $t0, -748($fp)
	sw $t0, -3304($fp)
	li $t0, 4
	lw $t1, -3304($fp)
	mul $t0, $t0, $t1
	sw $t0, -3308($fp)
	lw $t0, -3308($fp)
	lw $t1, -3300($fp)
	add $t0, $t0, $t1
	sw $t0, -3312($fp)
	lw $t0, -3312($fp)
	lw $t1, 0($t0)
	sw $t1, -3316($fp)
	lw $t0, -1036($fp)
	sw $t0, -3320($fp)
	lw $t0, -3316($fp)
	lw $t1, -3320($fp)
	add $t0, $t0, $t1
	sw $t0, -3324($fp)
	addi $sp, $sp, -4
	lw $t0, -3236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3324($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3328($fp)
	addi $sp, $sp, 24
	lw $t1, -3328($fp)
	li $t2, 0
	bne $t1, $t2, label909
	j label911
label911:
	li $t0, 3208
	sw $t0, -3332($fp)
	lw $t1, -3332($fp)
	li $t2, 0
	bne $t1, $t2, label909
	j label910
label909:
	li $t0, 1
	sw $t0, -3224($fp)
label910:
	addi $t0, $fp, -236
	sw $t0, -3336($fp)
	lw $t0, -784($fp)
	sw $t0, -3340($fp)
	li $t0, 4
	lw $t1, -3340($fp)
	mul $t0, $t0, $t1
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	lw $t1, -3336($fp)
	add $t0, $t0, $t1
	sw $t0, -3348($fp)
	lw $t0, -3348($fp)
	lw $t1, 0($t0)
	sw $t1, -3352($fp)
	addi $sp, $sp, -4
	lw $t0, -3224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3352($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3356($fp)
	addi $sp, $sp, 12
	lw $t0, -3220($fp)
	lw $t1, -3356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3360($fp)
	lw $t0, -3132($fp)
	lw $t1, -3360($fp)
	add $t0, $t0, $t1
	sw $t0, -3364($fp)
	lw $t1, -3364($fp)
	li $t2, 0
	bne $t1, $t2, label903
	j label904
label903:
	li $t0, 0
	sw $t0, -3368($fp)
	li $t0, 15431
	sw $t0, -3372($fp)
	li $t0, 0
	sw $t0, -3376($fp)
	li $t0, 0
	sw $t0, -3380($fp)
	li $t0, 45624
	sw $t0, -3384($fp)
	lw $t1, -3384($fp)
	li $t2, 0
	bne $t1, $t2, label919
	j label918
label918:
	li $t0, 1
	sw $t0, -3380($fp)
label919:
	li $t0, 43289
	sw $t0, -3388($fp)
	lw $t1, -3380($fp)
	lw $t2, -3388($fp)
	ble $t1, $t2, label916
	j label917
label916:
	li $t0, 1
	sw $t0, -3376($fp)
label917:
	li $t0, 0
	sw $t0, -3392($fp)
	li $t0, 0
	sw $t0, -3396($fp)
	lw $t0, -760($fp)
	sw $t0, -3400($fp)
	lw $t1, -3400($fp)
	li $t2, 0
	bne $t1, $t2, label923
	j label922
label922:
	li $t0, 1
	sw $t0, -3396($fp)
label923:
	li $t0, 60124
	sw $t0, -3404($fp)
	lw $t0, -3396($fp)
	lw $t1, -3404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3408($fp)
	lw $t0, -2092($fp)
	sw $t0, -3412($fp)
	li $t0, 26015
	sw $t0, -3416($fp)
	li $t0, 60698
	sw $t0, -3420($fp)
	lw $t0, -3416($fp)
	lw $t1, -3420($fp)
	add $t0, $t0, $t1
	sw $t0, -3424($fp)
	li $t0, 33448
	sw $t0, -3428($fp)
	lw $t0, -3424($fp)
	lw $t1, -3428($fp)
	add $t0, $t0, $t1
	sw $t0, -3432($fp)
	li $t0, 0
	sw $t0, -3436($fp)
	li $t0, 60266
	sw $t0, -3440($fp)
	lw $t1, -3440($fp)
	li $t2, 0
	bne $t1, $t2, label926
	j label925
label926:
	li $t0, 9147
	sw $t0, -3444($fp)
	lw $t1, -3444($fp)
	li $t2, 0
	bne $t1, $t2, label924
	j label925
label924:
	li $t0, 1
	sw $t0, -3436($fp)
label925:
	li $t0, 0
	sw $t0, -3448($fp)
	li $t0, 13666
	sw $t0, -3452($fp)
	lw $t0, -1984($fp)
	sw $t0, -3456($fp)
	lw $t0, -3452($fp)
	lw $t1, -3456($fp)
	add $t0, $t0, $t1
	sw $t0, -3460($fp)
	lw $t0, -2068($fp)
	sw $t0, -3464($fp)
	lw $t1, -3460($fp)
	lw $t2, -3464($fp)
	bge $t1, $t2, label927
	j label928
label927:
	li $t0, 1
	sw $t0, -3448($fp)
label928:
	li $t0, 0
	sw $t0, -3468($fp)
	lw $t0, -784($fp)
	sw $t0, -3472($fp)
	li $t0, 0
	lw $t1, -3472($fp)
	sub $t0, $t0, $t1
	sw $t0, -3476($fp)
	lw $t0, -460($fp)
	sw $t0, -3480($fp)
	lw $t1, -3476($fp)
	lw $t2, -3480($fp)
	bne $t1, $t2, label929
	j label930
label929:
	li $t0, 1
	sw $t0, -3468($fp)
label930:
	lw $t0, -892($fp)
	sw $t0, -3484($fp)
	lw $t0, -3484($fp)
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	sw $t0, -3488($fp)
	li $t0, 0
	sw $t0, -3492($fp)
	li $t0, 0
	sw $t0, -3496($fp)
	lw $t0, -748($fp)
	sw $t0, -3500($fp)
	li $t0, 2600
	sw $t0, -3504($fp)
	lw $t1, -3500($fp)
	lw $t2, -3504($fp)
	beq $t1, $t2, label933
	j label934
label933:
	li $t0, 1
	sw $t0, -3496($fp)
label934:
	li $t0, 28273
	sw $t0, -3508($fp)
	lw $t1, -3496($fp)
	lw $t2, -3508($fp)
	bne $t1, $t2, label931
	j label932
label931:
	li $t0, 1
	sw $t0, -3492($fp)
label932:
	li $t0, 0
	sw $t0, -3512($fp)
	addi $t0, $fp, -136
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
	li $t0, 22106
	sw $t0, -3536($fp)
	lw $t1, -3532($fp)
	lw $t2, -3536($fp)
	beq $t1, $t2, label935
	j label936
label935:
	li $t0, 1
	sw $t0, -3512($fp)
label936:
	addi $t0, $fp, -32
	sw $t0, -3540($fp)
	lw $t0, -892($fp)
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
	li $t0, 35297
	sw $t0, -3560($fp)
	li $t0, 16076
	sw $t0, -3564($fp)
	lw $t0, -3560($fp)
	lw $t1, -3564($fp)
	mul $t0, $t0, $t1
	sw $t0, -3568($fp)
	addi $sp, $sp, -4
	lw $t0, -3488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3568($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3572($fp)
	addi $sp, $sp, 24
	li $t0, 48078
	sw $t0, -3576($fp)
	addi $sp, $sp, -4
	lw $t0, -3572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3576($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3580($fp)
	addi $sp, $sp, 12
	lw $t0, -448($fp)
	sw $t0, -3584($fp)
	lw $t0, -3580($fp)
	lw $t1, -3584($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3588($fp)
	li $t0, 0
	sw $t0, -3592($fp)
	addi $t0, $fp, -120
	sw $t0, -3596($fp)
	lw $t0, -892($fp)
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
	lw $t1, -3612($fp)
	li $t2, 0
	bne $t1, $t2, label938
	j label937
label937:
	li $t0, 1
	sw $t0, -3592($fp)
label938:
	li $t0, 0
	sw $t0, -3616($fp)
	lw $t0, -1012($fp)
	sw $t0, -3620($fp)
	lw $t1, -3620($fp)
	li $t2, 0
	bne $t1, $t2, label939
	j label941
label941:
	lw $t0, -412($fp)
	sw $t0, -3624($fp)
	lw $t1, -3624($fp)
	li $t2, 0
	bne $t1, $t2, label939
	j label940
label939:
	li $t0, 1
	sw $t0, -3616($fp)
label940:
	addi $sp, $sp, -4
	lw $t0, -3448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3616($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3628($fp)
	addi $sp, $sp, 24
	lw $t0, 8($fp)
	sw $t0, -3632($fp)
	lw $t0, -3628($fp)
	lw $t1, -3632($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3636($fp)
	addi $sp, $sp, -4
	lw $t0, -3408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3636($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3640($fp)
	addi $sp, $sp, 24
	lw $t0, -772($fp)
	sw $t0, -3644($fp)
	lw $t1, -3640($fp)
	lw $t2, -3644($fp)
	bgt $t1, $t2, label920
	j label921
label920:
	li $t0, 1
	sw $t0, -3392($fp)
label921:
	addi $t0, $fp, -236
	sw $t0, -3648($fp)
	li $t0, 1
	sw $t0, -3652($fp)
	li $t0, 4
	lw $t1, -3652($fp)
	mul $t0, $t0, $t1
	sw $t0, -3656($fp)
	lw $t0, -3656($fp)
	lw $t1, -3648($fp)
	add $t0, $t0, $t1
	sw $t0, -3660($fp)
	lw $t0, -3660($fp)
	lw $t1, 0($t0)
	sw $t1, -3664($fp)
	lw $t0, -1036($fp)
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -3672($fp)
	li $t0, 0
	sw $t0, -3676($fp)
	li $t0, 64060
	sw $t0, -3680($fp)
	lw $t0, -1336($fp)
	sw $t0, -3684($fp)
	lw $t0, -3680($fp)
	lw $t1, -3684($fp)
	sub $t0, $t0, $t1
	sw $t0, -3688($fp)
	lw $t0, -448($fp)
	sw $t0, -3692($fp)
	lw $t1, -3688($fp)
	lw $t2, -3692($fp)
	bne $t1, $t2, label942
	j label943
label942:
	li $t0, 1
	sw $t0, -3676($fp)
label943:
	addi $sp, $sp, -4
	lw $t0, -3672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3676($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3696($fp)
	addi $sp, $sp, 12
	lw $t0, -1276($fp)
	sw $t0, -3700($fp)
	lw $t0, -3696($fp)
	lw $t1, -3700($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3704($fp)
	li $t0, 51862
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -3712($fp)
	addi $sp, $sp, -4
	lw $t0, -3376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3712($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3716($fp)
	addi $sp, $sp, 24
	lw $t0, -3372($fp)
	lw $t1, -3716($fp)
	mul $t0, $t0, $t1
	sw $t0, -3720($fp)
	li $t0, 0
	lw $t1, -3720($fp)
	sub $t0, $t0, $t1
	sw $t0, -3724($fp)
	li $t0, 0
	lw $t1, -3724($fp)
	sub $t0, $t0, $t1
	sw $t0, -3728($fp)
	li $t0, 0
	sw $t0, -3732($fp)
	li $t0, 0
	sw $t0, -3736($fp)
	li $t0, 4608
	sw $t0, -3740($fp)
	lw $t1, -3740($fp)
	li $t2, 0
	bne $t1, $t2, label947
	j label946
label946:
	li $t0, 1
	sw $t0, -3736($fp)
label947:
	li $t0, 19100
	sw $t0, -3744($fp)
	lw $t0, -1312($fp)
	sw $t0, -3748($fp)
	lw $t0, -3744($fp)
	lw $t1, -3748($fp)
	sub $t0, $t0, $t1
	sw $t0, -3752($fp)
	lw $t1, -3736($fp)
	lw $t2, -3752($fp)
	ble $t1, $t2, label944
	j label945
label944:
	li $t0, 1
	sw $t0, -3732($fp)
label945:
	lw $t1, -3728($fp)
	lw $t2, -3732($fp)
	beq $t1, $t2, label914
	j label915
label914:
	li $t0, 1
	sw $t0, -3368($fp)
label915:
	j label902
label904:
	lw $t0, -2448($fp)
	sw $t0, -3756($fp)
	lw $t0, -3756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2460($fp)
	sw $t0, -3760($fp)
	lw $t0, -3760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2472($fp)
	sw $t0, -3764($fp)
	lw $t0, -3764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2412
	sw $t0, -3768($fp)
	li $t0, 0
	sw $t0, -3772($fp)
	li $t0, 4
	lw $t1, -3772($fp)
	mul $t0, $t0, $t1
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	lw $t1, -3768($fp)
	add $t0, $t0, $t1
	sw $t0, -3780($fp)
	lw $t0, -3780($fp)
	lw $t1, 0($t0)
	sw $t1, -3784($fp)
	lw $t0, -3784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2412
	sw $t0, -3788($fp)
	li $t0, 1
	sw $t0, -3792($fp)
	li $t0, 4
	lw $t1, -3792($fp)
	mul $t0, $t0, $t1
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	lw $t1, -3788($fp)
	add $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	lw $t1, 0($t0)
	sw $t1, -3804($fp)
	lw $t0, -3804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2412
	sw $t0, -3808($fp)
	li $t0, 2
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
	lw $t0, -3824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2412
	sw $t0, -3828($fp)
	li $t0, 3
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
	lw $t0, -3844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2412
	sw $t0, -3848($fp)
	li $t0, 4
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
	lw $t0, -3864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2412
	sw $t0, -3868($fp)
	li $t0, 5
	sw $t0, -3872($fp)
	li $t0, 4
	lw $t1, -3872($fp)
	mul $t0, $t0, $t1
	sw $t0, -3876($fp)
	lw $t0, -3876($fp)
	lw $t1, -3868($fp)
	add $t0, $t0, $t1
	sw $t0, -3880($fp)
	lw $t0, -3880($fp)
	lw $t1, 0($t0)
	sw $t1, -3884($fp)
	lw $t0, -3884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2412
	sw $t0, -3888($fp)
	li $t0, 6
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
	lw $t0, -3904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2412
	sw $t0, -3908($fp)
	li $t0, 7
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
	addi $t0, $fp, -2412
	sw $t0, -3928($fp)
	li $t0, 8
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
	addi $t0, $fp, -2412
	sw $t0, -3948($fp)
	li $t0, 9
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
	lw $t0, -2724($fp)
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2440
	sw $t0, -3972($fp)
	li $t0, 0
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
	addi $t0, $fp, -2440
	sw $t0, -3992($fp)
	li $t0, 1
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
	addi $t0, $fp, -2440
	sw $t0, -4012($fp)
	li $t0, 2
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
	addi $t0, $fp, -2440
	sw $t0, -4032($fp)
	li $t0, 3
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
	addi $t0, $fp, -2440
	sw $t0, -4052($fp)
	li $t0, 4
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
	addi $t0, $fp, -2440
	sw $t0, -4072($fp)
	li $t0, 5
	sw $t0, -4076($fp)
	li $t0, 4
	lw $t1, -4076($fp)
	mul $t0, $t0, $t1
	sw $t0, -4080($fp)
	lw $t0, -4080($fp)
	lw $t1, -4072($fp)
	add $t0, $t0, $t1
	sw $t0, -4084($fp)
	lw $t0, -4084($fp)
	lw $t1, 0($t0)
	sw $t1, -4088($fp)
	lw $t0, -4088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2440
	sw $t0, -4092($fp)
	li $t0, 6
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
	lw $t0, -4108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2904($fp)
	sw $t0, -4112($fp)
	lw $t0, -4112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4116($fp)
	addi $t0, $fp, -136
	sw $t0, -4120($fp)
	li $t0, 0
	sw $t0, -4124($fp)
	li $t0, 28923
	sw $t0, -4128($fp)
	lw $t1, -4128($fp)
	li $t2, 0
	bne $t1, $t2, label950
	j label952
label952:
	lw $t0, -1396($fp)
	sw $t0, -4132($fp)
	lw $t1, -4132($fp)
	li $t2, 0
	bne $t1, $t2, label950
	j label951
label950:
	li $t0, 1
	sw $t0, -4124($fp)
label951:
	li $t0, 4
	lw $t1, -4124($fp)
	mul $t0, $t0, $t1
	sw $t0, -4136($fp)
	lw $t0, -4136($fp)
	lw $t1, -4120($fp)
	add $t0, $t0, $t1
	sw $t0, -4140($fp)
	lw $t0, -4140($fp)
	lw $t1, 0($t0)
	sw $t1, -4144($fp)
	lw $t1, -4144($fp)
	li $t2, 0
	bne $t1, $t2, label949
	j label948
label948:
	li $t0, 1
	sw $t0, -4116($fp)
label949:
	li $t0, 0
	sw $t0, -4148($fp)
	lw $t0, -1024($fp)
	sw $t0, -4152($fp)
	lw $t1, -4152($fp)
	li $t2, 0
	bne $t1, $t2, label953
	j label954
label953:
	li $t0, 1
	sw $t0, -4148($fp)
label954:
	lw $t0, -4116($fp)
	lw $t1, -4148($fp)
	sub $t0, $t0, $t1
	sw $t0, -4156($fp)
	lw $ra, -4($fp)
	lw $v0, -4156($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label870
label869:
	li $t0, 0
	sw $t0, -4160($fp)
	addi $t0, $fp, -224
	sw $t0, -4164($fp)
	li $t0, 1
	sw $t0, -4168($fp)
	li $t0, 4
	lw $t1, -4168($fp)
	mul $t0, $t0, $t1
	sw $t0, -4172($fp)
	lw $t0, -4172($fp)
	lw $t1, -4164($fp)
	add $t0, $t0, $t1
	sw $t0, -4176($fp)
	lw $t0, -4176($fp)
	lw $t1, 0($t0)
	sw $t1, -4180($fp)
	addi $t0, $fp, -100
	sw $t0, -4184($fp)
	lw $t0, -868($fp)
	sw $t0, -4188($fp)
	li $t0, 4
	lw $t1, -4188($fp)
	mul $t0, $t0, $t1
	sw $t0, -4192($fp)
	lw $t0, -4192($fp)
	lw $t1, -4184($fp)
	add $t0, $t0, $t1
	sw $t0, -4196($fp)
	lw $t0, -4196($fp)
	lw $t1, 0($t0)
	sw $t1, -4200($fp)
	lw $t0, -4180($fp)
	lw $t1, -4200($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4204($fp)
	li $t0, 58488
	sw $t0, -4208($fp)
	li $t0, 0
	lw $t1, -4208($fp)
	sub $t0, $t0, $t1
	sw $t0, -4212($fp)
	li $t0, 61644
	sw $t0, -4216($fp)
	lw $t0, -4212($fp)
	lw $t1, -4216($fp)
	sub $t0, $t0, $t1
	sw $t0, -4220($fp)
	lw $t1, -4204($fp)
	lw $t2, -4220($fp)
	bne $t1, $t2, label957
	j label956
label957:
	li $t0, 26317
	sw $t0, -4224($fp)
	li $t0, 2690
	sw $t0, -4228($fp)
	lw $t0, -4224($fp)
	lw $t1, -4228($fp)
	mul $t0, $t0, $t1
	sw $t0, -4232($fp)
	li $t0, 0
	sw $t0, -4236($fp)
	li $t0, 0
	sw $t0, -4240($fp)
	li $t0, 42763
	sw $t0, -4244($fp)
	li $t0, 0
	lw $t1, -4244($fp)
	sub $t0, $t0, $t1
	sw $t0, -4248($fp)
	li $t0, 0
	lw $t1, -4248($fp)
	sub $t0, $t0, $t1
	sw $t0, -4252($fp)
	li $t0, 0
	sw $t0, -4256($fp)
	lw $t0, -2056($fp)
	sw $t0, -4260($fp)
	li $t0, 56407
	sw $t0, -4264($fp)
	lw $t0, -4260($fp)
	lw $t1, -4264($fp)
	add $t0, $t0, $t1
	sw $t0, -4268($fp)
	li $t0, 10241
	sw $t0, -4272($fp)
	lw $t1, -4268($fp)
	lw $t2, -4272($fp)
	ble $t1, $t2, label962
	j label963
label962:
	li $t0, 1
	sw $t0, -4256($fp)
label963:
	addi $sp, $sp, -4
	lw $t0, -4252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4256($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4276($fp)
	addi $sp, $sp, 12
	lw $t0, -2080($fp)
	sw $t0, -4280($fp)
	lw $t1, -4276($fp)
	lw $t2, -4280($fp)
	bge $t1, $t2, label960
	j label961
label960:
	li $t0, 1
	sw $t0, -4240($fp)
label961:
	li $t0, 0
	sw $t0, -4284($fp)
	li $t0, 60221
	sw $t0, -4288($fp)
	lw $t0, -1312($fp)
	sw $t0, -4292($fp)
	lw $t0, -4288($fp)
	lw $t1, -4292($fp)
	add $t0, $t0, $t1
	sw $t0, -4296($fp)
	lw $t0, -1972($fp)
	sw $t0, -4300($fp)
	lw $t1, -4296($fp)
	lw $t2, -4300($fp)
	ble $t1, $t2, label964
	j label965
label964:
	li $t0, 1
	sw $t0, -4284($fp)
label965:
	li $t0, 0
	sw $t0, -4304($fp)
	li $t0, 64297
	sw $t0, -4308($fp)
	lw $t0, -1276($fp)
	sw $t0, -4312($fp)
	lw $t0, -4308($fp)
	lw $t1, -4312($fp)
	add $t0, $t0, $t1
	sw $t0, -4316($fp)
	lw $t1, -4316($fp)
	li $t2, 0
	bne $t1, $t2, label968
	j label967
label968:
	lw $t0, -904($fp)
	sw $t0, -4320($fp)
	lw $t1, -4320($fp)
	li $t2, 0
	bne $t1, $t2, label966
	j label967
label966:
	li $t0, 1
	sw $t0, -4304($fp)
label967:
	lw $t0, -412($fp)
	sw $t0, -4324($fp)
	li $t0, 61697
	sw $t0, -4328($fp)
	lw $t0, -4324($fp)
	lw $t1, -4328($fp)
	mul $t0, $t0, $t1
	sw $t0, -4332($fp)
	li $t0, 11539
	sw $t0, -4336($fp)
	lw $t0, -4332($fp)
	lw $t1, -4336($fp)
	add $t0, $t0, $t1
	sw $t0, -4340($fp)
	li $t0, 0
	sw $t0, -4344($fp)
	li $t0, 0
	sw $t0, -4348($fp)
	li $t0, 12435
	sw $t0, -4352($fp)
	lw $t1, -4352($fp)
	li $t2, 0
	bne $t1, $t2, label972
	j label971
label971:
	li $t0, 1
	sw $t0, -4348($fp)
label972:
	lw $t0, -880($fp)
	sw $t0, -4356($fp)
	lw $t1, -4348($fp)
	lw $t2, -4356($fp)
	bne $t1, $t2, label969
	j label970
label969:
	li $t0, 1
	sw $t0, -4344($fp)
label970:
	addi $sp, $sp, -4
	lw $t0, -4240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4344($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4360($fp)
	addi $sp, $sp, 24
	li $t0, 26169
	sw $t0, -4364($fp)
	lw $t1, -4360($fp)
	lw $t2, -4364($fp)
	beq $t1, $t2, label958
	j label959
label958:
	li $t0, 1
	sw $t0, -4236($fp)
label959:
	addi $sp, $sp, -4
	lw $t0, -4232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4236($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4368($fp)
	addi $sp, $sp, 12
	lw $t1, -4368($fp)
	li $t2, 0
	bne $t1, $t2, label955
	j label956
label955:
	li $t0, 1
	sw $t0, -4160($fp)
label956:
	lw $ra, -4($fp)
	lw $v0, -4160($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label870:
	j label862
label864:
label858:
label973:
	lw $t0, -748($fp)
	sw $t0, -4372($fp)
	li $t0, 0
	sw $t0, -4376($fp)
	li $t0, 63060
	sw $t0, -4380($fp)
	lw $t0, -784($fp)
	sw $t0, -4384($fp)
	lw $t0, -4384($fp)
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -4388($fp)
	li $t0, 20
	sw $t0, -4392($fp)
	lw $t0, -4392($fp)
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -4396($fp)
	lw $t0, -1324($fp)
	sw $t0, -4400($fp)
	li $t0, 25797
	sw $t0, -4404($fp)
	lw $t0, -4400($fp)
	lw $t1, -4404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4408($fp)
	li $t0, 62090
	sw $t0, -4412($fp)
	lw $t0, -4408($fp)
	lw $t1, -4412($fp)
	mul $t0, $t0, $t1
	sw $t0, -4416($fp)
	li $t0, 5290
	sw $t0, -4420($fp)
	li $t0, 0
	sw $t0, -4424($fp)
	li $t0, 0
	sw $t0, -4428($fp)
	lw $t0, -2020($fp)
	sw $t0, -4432($fp)
	lw $t0, -2032($fp)
	sw $t0, -4436($fp)
	lw $t1, -4432($fp)
	lw $t2, -4436($fp)
	beq $t1, $t2, label980
	j label981
label980:
	li $t0, 1
	sw $t0, -4428($fp)
label981:
	li $t0, 48423
	sw $t0, -4440($fp)
	lw $t1, -4428($fp)
	lw $t2, -4440($fp)
	beq $t1, $t2, label978
	j label979
label978:
	li $t0, 1
	sw $t0, -4424($fp)
label979:
	addi $sp, $sp, -4
	lw $t0, -4388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4424($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4444($fp)
	addi $sp, $sp, 24
	lw $t0, -4380($fp)
	lw $t1, -4444($fp)
	mul $t0, $t0, $t1
	sw $t0, -4448($fp)
	li $t0, 0
	lw $t1, -4448($fp)
	sub $t0, $t0, $t1
	sw $t0, -4452($fp)
	lw $t1, -4452($fp)
	li $t2, 0
	bne $t1, $t2, label977
	j label976
label976:
	li $t0, 1
	sw $t0, -4376($fp)
label977:
	lw $t0, -4372($fp)
	lw $t1, -4376($fp)
	mul $t0, $t0, $t1
	sw $t0, -4456($fp)
	lw $t1, -4456($fp)
	li $t2, 0
	bne $t1, $t2, label974
	j label975
label974:
label982:
	li $t0, 34945
	sw $t0, -4460($fp)
	lw $t1, -4460($fp)
	li $t2, 0
	bne $t1, $t2, label983
	j label984
label983:
	li $t0, 0
	sw $t0, -4464($fp)
	li $t0, 46146
	sw $t0, -4468($fp)
	lw $t0, -892($fp)
	sw $t0, -4472($fp)
	lw $t1, -4468($fp)
	lw $t2, -4472($fp)
	bgt $t1, $t2, label990
	j label989
label990:
	li $t0, 21765
	sw $t0, -4476($fp)
	lw $t1, -4476($fp)
	li $t2, 0
	bne $t1, $t2, label988
	j label989
label988:
	li $t0, 1
	sw $t0, -4464($fp)
label989:
	lw $t0, -1984($fp)
	sw $t0, -4480($fp)
	li $t0, 17157
	sw $t0, -4484($fp)
	lw $t0, -4480($fp)
	lw $t1, -4484($fp)
	mul $t0, $t0, $t1
	sw $t0, -4488($fp)
	li $t0, 40807
	sw $t0, -4492($fp)
	lw $t0, -4488($fp)
	lw $t1, -4492($fp)
	add $t0, $t0, $t1
	sw $t0, -4496($fp)
	li $t0, 0
	sw $t0, -4500($fp)
	addi $t0, $fp, -236
	sw $t0, -4504($fp)
	lw $t0, -1348($fp)
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
	lw $t1, -4520($fp)
	li $t2, 0
	bne $t1, $t2, label993
	j label992
label993:
	lw $t0, -436($fp)
	sw $t0, -4524($fp)
	lw $t1, -4524($fp)
	li $t2, 0
	bne $t1, $t2, label991
	j label992
label991:
	li $t0, 1
	sw $t0, -4500($fp)
label992:
	li $t0, 2857
	sw $t0, -4528($fp)
	lw $t0, 8($fp)
	sw $t0, -4532($fp)
	lw $t0, -4528($fp)
	lw $t1, -4532($fp)
	sub $t0, $t0, $t1
	sw $t0, -4536($fp)
	lw $t0, -472($fp)
	sw $t0, -4540($fp)
	lw $t0, 8($fp)
	sw $t0, -4544($fp)
	lw $t0, -4540($fp)
	lw $t1, -4544($fp)
	mul $t0, $t0, $t1
	sw $t0, -4548($fp)
	lw $t0, -892($fp)
	sw $t0, -4552($fp)
	lw $t0, -4548($fp)
	lw $t1, -4552($fp)
	mul $t0, $t0, $t1
	sw $t0, -4556($fp)
	lw $t0, -736($fp)
	sw $t0, -4560($fp)
	lw $t0, -1012($fp)
	sw $t0, -4564($fp)
	lw $t0, -4560($fp)
	lw $t1, -4564($fp)
	add $t0, $t0, $t1
	sw $t0, -4568($fp)
	li $t0, 60719
	sw $t0, -4572($fp)
	li $t0, 22569
	sw $t0, -4576($fp)
	lw $t0, -4576($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -4580($fp)
	addi $sp, $sp, -4
	lw $t0, -4536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4580($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4584($fp)
	addi $sp, $sp, 24
	lw $t0, -2092($fp)
	sw $t0, -4588($fp)
	lw $t0, -4584($fp)
	lw $t1, -4588($fp)
	add $t0, $t0, $t1
	sw $t0, -4592($fp)
	li $t0, 0
	sw $t0, -4596($fp)
	lw $t0, -2080($fp)
	sw $t0, -4600($fp)
	lw $t0, -1036($fp)
	sw $t0, -4604($fp)
	lw $t0, -4600($fp)
	lw $t1, -4604($fp)
	sub $t0, $t0, $t1
	sw $t0, -4608($fp)
	lw $t1, -4608($fp)
	li $t2, 0
	bne $t1, $t2, label994
	j label996
label996:
	lw $t0, -1300($fp)
	sw $t0, -4612($fp)
	lw $t1, -4612($fp)
	li $t2, 0
	bne $t1, $t2, label994
	j label995
label994:
	li $t0, 1
	sw $t0, -4596($fp)
label995:
	addi $sp, $sp, -4
	lw $t0, -4464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4596($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4616($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -136
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
	li $t0, 0
	sw $t0, -4640($fp)
	li $t0, 58868
	sw $t0, -4644($fp)
	li $t0, 40857
	sw $t0, -4648($fp)
	lw $t0, -4644($fp)
	lw $t1, -4648($fp)
	sub $t0, $t0, $t1
	sw $t0, -4652($fp)
	lw $t1, -4652($fp)
	li $t2, 0
	bne $t1, $t2, label999
	j label998
label999:
	lw $t0, -1312($fp)
	sw $t0, -4656($fp)
	lw $t1, -4656($fp)
	li $t2, 0
	bne $t1, $t2, label997
	j label998
label997:
	li $t0, 1
	sw $t0, -4640($fp)
label998:
	li $t0, 11204
	sw $t0, -4660($fp)
	lw $t0, -4660($fp)
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -4664($fp)
	li $t0, 49986
	sw $t0, -4668($fp)
	lw $t0, -4668($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -4672($fp)
	li $t0, 0
	sw $t0, -4676($fp)
	addi $t0, $fp, -120
	sw $t0, -4680($fp)
	li $t0, 4
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
	li $t0, 38447
	sw $t0, -4700($fp)
	lw $t0, -4700($fp)
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -4704($fp)
	li $t0, 0
	sw $t0, -4708($fp)
	lw $t0, -1360($fp)
	sw $t0, -4712($fp)
	li $t0, 8
	sw $t0, -4716($fp)
	lw $t0, -4712($fp)
	lw $t1, -4716($fp)
	add $t0, $t0, $t1
	sw $t0, -4720($fp)
	lw $t1, -4720($fp)
	li $t2, 0
	bne $t1, $t2, label1004
	j label1003
label1004:
	li $t0, 2486
	sw $t0, -4724($fp)
	lw $t1, -4724($fp)
	li $t2, 0
	bne $t1, $t2, label1002
	j label1003
label1002:
	li $t0, 1
	sw $t0, -4708($fp)
label1003:
	li $t0, 0
	sw $t0, -4728($fp)
	addi $t0, $fp, -168
	sw $t0, -4732($fp)
	lw $t0, -880($fp)
	sw $t0, -4736($fp)
	li $t0, 4
	lw $t1, -4736($fp)
	mul $t0, $t0, $t1
	sw $t0, -4740($fp)
	lw $t0, -4740($fp)
	lw $t1, -4732($fp)
	add $t0, $t0, $t1
	sw $t0, -4744($fp)
	lw $t0, -4744($fp)
	lw $t1, 0($t0)
	sw $t1, -4748($fp)
	lw $t0, -784($fp)
	sw $t0, -4752($fp)
	lw $t1, -4748($fp)
	lw $t2, -4752($fp)
	bge $t1, $t2, label1005
	j label1006
label1005:
	li $t0, 1
	sw $t0, -4728($fp)
label1006:
	lw $t0, -1852($fp)
	sw $t0, -4756($fp)
	li $t0, 9533
	sw $t0, -4760($fp)
	lw $t0, -4756($fp)
	lw $t1, -4760($fp)
	mul $t0, $t0, $t1
	sw $t0, -4764($fp)
	li $t0, 42339
	sw $t0, -4768($fp)
	lw $t0, -4764($fp)
	lw $t1, -4768($fp)
	sub $t0, $t0, $t1
	sw $t0, -4772($fp)
	li $t0, 0
	sw $t0, -4776($fp)
	li $t0, 0
	sw $t0, -4780($fp)
	lw $t0, -1972($fp)
	sw $t0, -4784($fp)
	lw $t0, -1384($fp)
	sw $t0, -4788($fp)
	lw $t1, -4784($fp)
	lw $t2, -4788($fp)
	ble $t1, $t2, label1009
	j label1010
label1009:
	li $t0, 1
	sw $t0, -4780($fp)
label1010:
	lw $t0, -1840($fp)
	sw $t0, -4792($fp)
	lw $t1, -4780($fp)
	lw $t2, -4792($fp)
	bne $t1, $t2, label1007
	j label1008
label1007:
	li $t0, 1
	sw $t0, -4776($fp)
label1008:
	li $t0, 0
	sw $t0, -4796($fp)
	li $t0, 59907
	sw $t0, -4800($fp)
	lw $t1, -4800($fp)
	li $t2, 0
	bne $t1, $t2, label1011
	j label1013
label1013:
	lw $t0, -784($fp)
	sw $t0, -4804($fp)
	lw $t1, -4804($fp)
	li $t2, 0
	bne $t1, $t2, label1011
	j label1012
label1011:
	li $t0, 1
	sw $t0, -4796($fp)
label1012:
	lw $t0, -460($fp)
	sw $t0, -4808($fp)
	addi $sp, $sp, -4
	lw $t0, -4728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4808($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4812($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -4812($fp)
	sub $t0, $t0, $t1
	sw $t0, -4816($fp)
	li $t0, 0
	sw $t0, -4820($fp)
	lw $t0, -1864($fp)
	sw $t0, -4824($fp)
	li $t0, 0
	lw $t1, -4824($fp)
	sub $t0, $t0, $t1
	sw $t0, -4828($fp)
	lw $t1, -4828($fp)
	li $t2, 0
	bne $t1, $t2, label1015
	j label1014
label1014:
	li $t0, 1
	sw $t0, -4820($fp)
label1015:
	addi $sp, $sp, -4
	lw $t0, -4696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4820($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4832($fp)
	addi $sp, $sp, 24
	lw $t0, -2080($fp)
	sw $t0, -4836($fp)
	lw $t1, -4832($fp)
	lw $t2, -4836($fp)
	bgt $t1, $t2, label1000
	j label1001
label1000:
	li $t0, 1
	sw $t0, -4676($fp)
label1001:
	addi $sp, $sp, -4
	lw $t0, -4636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4676($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4840($fp)
	addi $sp, $sp, 24
	lw $t0, -4616($fp)
	lw $t1, -4840($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4844($fp)
	lw $t1, -4844($fp)
	li $t2, 0
	bne $t1, $t2, label985
	j label986
label985:
label1016:
	li $t0, 64551
	sw $t0, -4848($fp)
	lw $t0, -4848($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -4852($fp)
	lw $t0, -1288($fp)
	sw $t0, -4856($fp)
	li $t0, 0
	sw $t0, -4860($fp)
	li $t0, 38786
	sw $t0, -4864($fp)
	lw $t0, -1852($fp)
	sw $t0, -4868($fp)
	lw $t0, -4864($fp)
	lw $t1, -4868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4872($fp)
	lw $t0, -1996($fp)
	sw $t0, -4876($fp)
	addi $sp, $sp, -4
	lw $t0, -4872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4876($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4880($fp)
	addi $sp, $sp, 12
	lw $t0, -1984($fp)
	sw $t0, -4884($fp)
	lw $t1, -4880($fp)
	lw $t2, -4884($fp)
	ble $t1, $t2, label1019
	j label1020
label1019:
	li $t0, 1
	sw $t0, -4860($fp)
label1020:
	li $t0, 47762
	sw $t0, -4888($fp)
	lw $t0, -748($fp)
	sw $t0, -4892($fp)
	lw $t0, -4888($fp)
	lw $t1, -4892($fp)
	sub $t0, $t0, $t1
	sw $t0, -4896($fp)
	lw $t0, -1276($fp)
	sw $t0, -4900($fp)
	lw $t0, -4896($fp)
	lw $t1, -4900($fp)
	sub $t0, $t0, $t1
	sw $t0, -4904($fp)
	li $t0, 0
	sw $t0, -4908($fp)
	lw $t0, -892($fp)
	sw $t0, -4912($fp)
	li $t0, 1490
	sw $t0, -4916($fp)
	lw $t0, -4912($fp)
	lw $t1, -4916($fp)
	sub $t0, $t0, $t1
	sw $t0, -4920($fp)
	lw $t0, -448($fp)
	sw $t0, -4924($fp)
	lw $t1, -4920($fp)
	lw $t2, -4924($fp)
	blt $t1, $t2, label1021
	j label1022
label1021:
	li $t0, 1
	sw $t0, -4908($fp)
label1022:
	addi $sp, $sp, -4
	lw $t0, -4904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4908($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4928($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -4932($fp)
	addi $t0, $fp, -72
	sw $t0, -4936($fp)
	lw $t0, -724($fp)
	sw $t0, -4940($fp)
	li $t0, 4
	lw $t1, -4940($fp)
	mul $t0, $t0, $t1
	sw $t0, -4944($fp)
	lw $t0, -4944($fp)
	lw $t1, -4936($fp)
	add $t0, $t0, $t1
	sw $t0, -4948($fp)
	lw $t0, -4948($fp)
	lw $t1, 0($t0)
	sw $t1, -4952($fp)
	lw $t0, -1864($fp)
	sw $t0, -4956($fp)
	lw $t1, -4952($fp)
	lw $t2, -4956($fp)
	bne $t1, $t2, label1023
	j label1024
label1023:
	li $t0, 1
	sw $t0, -4932($fp)
label1024:
	addi $sp, $sp, -4
	lw $t0, -4852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4932($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4960($fp)
	addi $sp, $sp, 24
	lw $t1, -4960($fp)
	li $t2, 0
	bne $t1, $t2, label1017
	j label1018
label1017:
	lw $t0, -784($fp)
	sw $t0, -4964($fp)
	lw $ra, -4($fp)
	lw $v0, -4964($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1016
label1018:
	j label987
label986:
	lw $t0, -1288($fp)
	sw $t0, -4968($fp)
	addi $t0, $fp, -84
	sw $t0, -4972($fp)
	li $t0, 30650
	sw $t0, -4976($fp)
	lw $t0, -904($fp)
	sw $t0, -4980($fp)
	lw $t0, -4976($fp)
	lw $t1, -4980($fp)
	sub $t0, $t0, $t1
	sw $t0, -4984($fp)
	li $t0, 4
	lw $t1, -4984($fp)
	mul $t0, $t0, $t1
	sw $t0, -4988($fp)
	lw $t0, -4988($fp)
	lw $t1, -4972($fp)
	add $t0, $t0, $t1
	sw $t0, -4992($fp)
	lw $t0, -4992($fp)
	lw $t1, 0($t0)
	sw $t1, -4996($fp)
	lw $t0, -4968($fp)
	lw $t1, -4996($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5000($fp)
	lw $ra, -4($fp)
	lw $v0, -5000($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label987:
	j label982
label984:
	j label973
label975:
	li $t0, 44076
	sw $t0, -5040($fp)
	addi $t0, $fp, -5036
	sw $t0, -5044($fp)
	li $t0, 0
	sw $t0, -5048($fp)
	lw $t0, -5048($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5052($fp)
	lw $t0, -5044($fp)
	lw $t1, -5052($fp)
	add $t0, $t0, $t1
	sw $t0, -5056($fp)
	lw $t0, -5040($fp)
	lw $t1, -5056($fp)
	sw $t0, 0($t1)
	lw $t0, -5056($fp)
	lw $t1, 0($t0)
	sw $t1, -5060($fp)
	li $t0, 24812
	sw $t0, -5064($fp)
	addi $t0, $fp, -5036
	sw $t0, -5068($fp)
	li $t0, 1
	sw $t0, -5072($fp)
	lw $t0, -5072($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5076($fp)
	lw $t0, -5068($fp)
	lw $t1, -5076($fp)
	add $t0, $t0, $t1
	sw $t0, -5080($fp)
	lw $t0, -5064($fp)
	lw $t1, -5080($fp)
	sw $t0, 0($t1)
	lw $t0, -5080($fp)
	lw $t1, 0($t0)
	sw $t1, -5084($fp)
	li $t0, 27204
	sw $t0, -5088($fp)
	addi $t0, $fp, -5036
	sw $t0, -5092($fp)
	li $t0, 2
	sw $t0, -5096($fp)
	lw $t0, -5096($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5100($fp)
	lw $t0, -5092($fp)
	lw $t1, -5100($fp)
	add $t0, $t0, $t1
	sw $t0, -5104($fp)
	lw $t0, -5088($fp)
	lw $t1, -5104($fp)
	sw $t0, 0($t1)
	lw $t0, -5104($fp)
	lw $t1, 0($t0)
	sw $t1, -5108($fp)
	li $t0, 44097
	sw $t0, -5112($fp)
	addi $t0, $fp, -5036
	sw $t0, -5116($fp)
	li $t0, 3
	sw $t0, -5120($fp)
	lw $t0, -5120($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5124($fp)
	lw $t0, -5116($fp)
	lw $t1, -5124($fp)
	add $t0, $t0, $t1
	sw $t0, -5128($fp)
	lw $t0, -5112($fp)
	lw $t1, -5128($fp)
	sw $t0, 0($t1)
	lw $t0, -5128($fp)
	lw $t1, 0($t0)
	sw $t1, -5132($fp)
	li $t0, 59757
	sw $t0, -5136($fp)
	addi $t0, $fp, -5036
	sw $t0, -5140($fp)
	li $t0, 4
	sw $t0, -5144($fp)
	lw $t0, -5144($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5148($fp)
	lw $t0, -5140($fp)
	lw $t1, -5148($fp)
	add $t0, $t0, $t1
	sw $t0, -5152($fp)
	lw $t0, -5136($fp)
	lw $t1, -5152($fp)
	sw $t0, 0($t1)
	lw $t0, -5152($fp)
	lw $t1, 0($t0)
	sw $t1, -5156($fp)
	li $t0, 49773
	sw $t0, -5160($fp)
	addi $t0, $fp, -5036
	sw $t0, -5164($fp)
	li $t0, 5
	sw $t0, -5168($fp)
	lw $t0, -5168($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5172($fp)
	lw $t0, -5164($fp)
	lw $t1, -5172($fp)
	add $t0, $t0, $t1
	sw $t0, -5176($fp)
	lw $t0, -5160($fp)
	lw $t1, -5176($fp)
	sw $t0, 0($t1)
	lw $t0, -5176($fp)
	lw $t1, 0($t0)
	sw $t1, -5180($fp)
	li $t0, 39280
	sw $t0, -5184($fp)
	addi $t0, $fp, -5036
	sw $t0, -5188($fp)
	li $t0, 6
	sw $t0, -5192($fp)
	lw $t0, -5192($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5196($fp)
	lw $t0, -5188($fp)
	lw $t1, -5196($fp)
	add $t0, $t0, $t1
	sw $t0, -5200($fp)
	lw $t0, -5184($fp)
	lw $t1, -5200($fp)
	sw $t0, 0($t1)
	lw $t0, -5200($fp)
	lw $t1, 0($t0)
	sw $t1, -5204($fp)
	li $t0, 62614
	sw $t0, -5208($fp)
	addi $t0, $fp, -5036
	sw $t0, -5212($fp)
	li $t0, 7
	sw $t0, -5216($fp)
	lw $t0, -5216($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5220($fp)
	lw $t0, -5212($fp)
	lw $t1, -5220($fp)
	add $t0, $t0, $t1
	sw $t0, -5224($fp)
	lw $t0, -5208($fp)
	lw $t1, -5224($fp)
	sw $t0, 0($t1)
	lw $t0, -5224($fp)
	lw $t1, 0($t0)
	sw $t1, -5228($fp)
	li $t0, 1394
	sw $t0, -5232($fp)
	addi $t0, $fp, -5036
	sw $t0, -5236($fp)
	li $t0, 8
	sw $t0, -5240($fp)
	lw $t0, -5240($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5244($fp)
	lw $t0, -5236($fp)
	lw $t1, -5244($fp)
	add $t0, $t0, $t1
	sw $t0, -5248($fp)
	lw $t0, -5232($fp)
	lw $t1, -5248($fp)
	sw $t0, 0($t1)
	lw $t0, -5248($fp)
	lw $t1, 0($t0)
	sw $t1, -5252($fp)
	li $t0, 14551
	sw $t0, -5256($fp)
	lw $t0, -5256($fp)
	sw $t0, -5260($fp)
	lw $t0, -5260($fp)
	sw $t0, -5264($fp)
	li $t0, 43225
	sw $t0, -5268($fp)
	lw $t0, -5268($fp)
	sw $t0, -5272($fp)
	lw $t0, -5272($fp)
	sw $t0, -5276($fp)
	lw $t0, -784($fp)
	sw $t0, -5280($fp)
	li $t0, 23160
	sw $t0, -5284($fp)
	lw $t0, -5284($fp)
	sw $t0, -5288($fp)
	lw $t0, -5288($fp)
	sw $t0, -5292($fp)
	li $t0, 8922
	sw $t0, -5296($fp)
	li $t0, 0
	sw $t0, -5300($fp)
	addi $t0, $fp, -208
	sw $t0, -5304($fp)
	li $t0, 1
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
	lw $t1, -5320($fp)
	li $t2, 0
	bne $t1, $t2, label1026
	j label1025
label1025:
	li $t0, 1
	sw $t0, -5300($fp)
label1026:
	lw $t0, -5300($fp)
	sw $t0, -5288($fp)
	lw $t0, -5288($fp)
	sw $t0, -5324($fp)
	li $t0, 0
	sw $t0, -5328($fp)
	li $t0, 8931
	sw $t0, -5332($fp)
	li $t0, 0
	sw $t0, -5336($fp)
	li $t0, 55244
	sw $t0, -5340($fp)
	li $t0, 0
	lw $t1, -5340($fp)
	sub $t0, $t0, $t1
	sw $t0, -5344($fp)
	lw $t1, -5344($fp)
	li $t2, 0
	bne $t1, $t2, label1030
	j label1029
label1029:
	li $t0, 1
	sw $t0, -5336($fp)
label1030:
	lw $t0, -5332($fp)
	lw $t1, -5336($fp)
	mul $t0, $t0, $t1
	sw $t0, -5348($fp)
	addi $t0, $fp, -32
	sw $t0, -5352($fp)
	lw $t0, -772($fp)
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
	li $t0, 38410
	sw $t0, -5372($fp)
	lw $t0, -5368($fp)
	lw $t1, -5372($fp)
	sub $t0, $t0, $t1
	sw $t0, -5376($fp)
	lw $t1, -5348($fp)
	lw $t2, -5376($fp)
	bge $t1, $t2, label1027
	j label1028
label1027:
	li $t0, 1
	sw $t0, -5328($fp)
label1028:
	li $t0, 21374
	sw $t0, -5380($fp)
	lw $t1, -5380($fp)
	li $t2, 0
	bne $t1, $t2, label1031
	j label1032
label1031:
	li $t0, 0
	sw $t0, -5384($fp)
	li $t0, 53891
	sw $t0, -5388($fp)
	lw $t0, -1312($fp)
	sw $t0, -5392($fp)
	lw $t1, -5388($fp)
	lw $t2, -5392($fp)
	blt $t1, $t2, label1036
	j label1035
label1036:
	li $t0, 22860
	sw $t0, -5396($fp)
	lw $t1, -5396($fp)
	li $t2, 0
	bne $t1, $t2, label1034
	j label1035
label1034:
	li $t0, 1
	sw $t0, -5384($fp)
label1035:
	lw $t0, -1036($fp)
	sw $t0, -5400($fp)
	lw $t0, -448($fp)
	sw $t0, -5404($fp)
	lw $t0, -5400($fp)
	lw $t1, -5404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5408($fp)
	addi $sp, $sp, -4
	lw $t0, -5384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5408($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5412($fp)
	addi $sp, $sp, 12
	j label1033
label1032:
	li $t0, 32579
	sw $t0, -5416($fp)
	li $t0, 0
	lw $t1, -5416($fp)
	sub $t0, $t0, $t1
	sw $t0, -5420($fp)
	li $t0, 0
	sw $t0, -5424($fp)
	li $t0, 0
	sw $t0, -5428($fp)
	li $t0, 0
	sw $t0, -5432($fp)
	lw $t0, -2044($fp)
	sw $t0, -5436($fp)
	lw $t1, -5436($fp)
	li $t2, 0
	bne $t1, $t2, label1045
	j label1044
label1044:
	li $t0, 1
	sw $t0, -5432($fp)
label1045:
	lw $t0, -904($fp)
	sw $t0, -5440($fp)
	lw $t1, -5432($fp)
	lw $t2, -5440($fp)
	ble $t1, $t2, label1042
	j label1043
label1042:
	li $t0, 1
	sw $t0, -5428($fp)
label1043:
	li $t0, 47224
	sw $t0, -5444($fp)
	lw $t1, -5428($fp)
	lw $t2, -5444($fp)
	ble $t1, $t2, label1040
	j label1041
label1040:
	li $t0, 1
	sw $t0, -5424($fp)
label1041:
	lw $t1, -5420($fp)
	lw $t2, -5424($fp)
	bne $t1, $t2, label1037
	j label1038
label1037:
	li $t0, 0
	sw $t0, -5448($fp)
	lw $t0, -1864($fp)
	sw $t0, -5452($fp)
	lw $t1, -5452($fp)
	li $t2, 0
	bne $t1, $t2, label1047
	j label1046
label1046:
	li $t0, 1
	sw $t0, -5448($fp)
label1047:
	li $t0, 0
	lw $t1, -5448($fp)
	sub $t0, $t0, $t1
	sw $t0, -5456($fp)
	addi $t0, $fp, -84
	sw $t0, -5460($fp)
	li $t0, 0
	sw $t0, -5464($fp)
	lw $t0, -1048($fp)
	sw $t0, -5468($fp)
	li $t0, 63717
	sw $t0, -5472($fp)
	lw $t1, -5468($fp)
	lw $t2, -5472($fp)
	bne $t1, $t2, label1048
	j label1049
label1048:
	li $t0, 1
	sw $t0, -5464($fp)
label1049:
	li $t0, 4
	lw $t1, -5464($fp)
	mul $t0, $t0, $t1
	sw $t0, -5476($fp)
	lw $t0, -5476($fp)
	lw $t1, -5460($fp)
	add $t0, $t0, $t1
	sw $t0, -5480($fp)
	lw $t0, -5480($fp)
	lw $t1, 0($t0)
	sw $t1, -5484($fp)
	lw $t0, -5456($fp)
	lw $t1, -5484($fp)
	sub $t0, $t0, $t1
	sw $t0, -5488($fp)
	j label1039
label1038:
	li $t0, 0
	sw $t0, -5492($fp)
	li $t0, 0
	sw $t0, -5496($fp)
	lw $t0, -1288($fp)
	sw $t0, -5500($fp)
	li $t0, 0
	lw $t1, -5500($fp)
	sub $t0, $t0, $t1
	sw $t0, -5504($fp)
	lw $t1, -5504($fp)
	li $t2, 0
	bne $t1, $t2, label1056
	j label1055
label1055:
	li $t0, 1
	sw $t0, -5496($fp)
label1056:
	lw $t0, -5260($fp)
	sw $t0, -5508($fp)
	lw $t0, -5508($fp)
	sw $t0, -5272($fp)
	lw $t0, -5272($fp)
	sw $t0, -5512($fp)
	addi $sp, $sp, -4
	lw $t0, -5496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5512($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5516($fp)
	addi $sp, $sp, 12
	lw $t1, -5516($fp)
	li $t2, 0
	bne $t1, $t2, label1054
	j label1053
label1054:
	lw $t0, -1288($fp)
	sw $t0, -5520($fp)
	li $t0, 54024
	sw $t0, -5524($fp)
	lw $t1, -5520($fp)
	lw $t2, -5524($fp)
	bne $t1, $t2, label1050
	j label1053
label1053:
	li $t0, 17784
	sw $t0, -5528($fp)
	li $t0, 65208
	sw $t0, -5532($fp)
	lw $t0, -5528($fp)
	lw $t1, -5532($fp)
	add $t0, $t0, $t1
	sw $t0, -5536($fp)
	lw $t0, -892($fp)
	sw $t0, -5540($fp)
	lw $t1, -5536($fp)
	lw $t2, -5540($fp)
	blt $t1, $t2, label1050
	j label1052
label1052:
	lw $t0, -412($fp)
	sw $t0, -5544($fp)
	lw $t1, -5544($fp)
	li $t2, 0
	bne $t1, $t2, label1050
	j label1051
label1050:
	li $t0, 1
	sw $t0, -5492($fp)
label1051:
label1039:
label1033:
	lw $t0, -748($fp)
	sw $t0, -5548($fp)
	li $t0, 0
	sw $t0, -5552($fp)
	lw $t0, -784($fp)
	sw $t0, -5556($fp)
	lw $t1, -5556($fp)
	li $t2, 0
	bne $t1, $t2, label1060
	j label1059
label1060:
	lw $t0, -1300($fp)
	sw $t0, -5560($fp)
	lw $t1, -5560($fp)
	li $t2, 0
	bne $t1, $t2, label1057
	j label1059
label1059:
	li $t0, 36251
	sw $t0, -5564($fp)
	lw $t1, -5564($fp)
	li $t2, 0
	bne $t1, $t2, label1057
	j label1058
label1057:
	li $t0, 1
	sw $t0, -5552($fp)
label1058:
	addi $t0, $fp, -5036
	sw $t0, -5568($fp)
	lw $t0, -2008($fp)
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
	li $t0, 0
	lw $t1, -5584($fp)
	sub $t0, $t0, $t1
	sw $t0, -5588($fp)
	addi $sp, $sp, -4
	lw $t0, -5552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5588($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5592($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -5592($fp)
	sub $t0, $t0, $t1
	sw $t0, -5596($fp)
	li $t0, 0
	lw $t1, -5596($fp)
	sub $t0, $t0, $t1
	sw $t0, -5600($fp)
	li $t0, 56570
	sw $t0, -5636($fp)
	addi $t0, $fp, -5632
	sw $t0, -5640($fp)
	li $t0, 0
	sw $t0, -5644($fp)
	lw $t0, -5644($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5648($fp)
	lw $t0, -5640($fp)
	lw $t1, -5648($fp)
	add $t0, $t0, $t1
	sw $t0, -5652($fp)
	lw $t0, -5636($fp)
	lw $t1, -5652($fp)
	sw $t0, 0($t1)
	lw $t0, -5652($fp)
	lw $t1, 0($t0)
	sw $t1, -5656($fp)
	li $t0, 64223
	sw $t0, -5660($fp)
	addi $t0, $fp, -5632
	sw $t0, -5664($fp)
	li $t0, 1
	sw $t0, -5668($fp)
	lw $t0, -5668($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5672($fp)
	lw $t0, -5664($fp)
	lw $t1, -5672($fp)
	add $t0, $t0, $t1
	sw $t0, -5676($fp)
	lw $t0, -5660($fp)
	lw $t1, -5676($fp)
	sw $t0, 0($t1)
	lw $t0, -5676($fp)
	lw $t1, 0($t0)
	sw $t1, -5680($fp)
	li $t0, 1365
	sw $t0, -5684($fp)
	addi $t0, $fp, -5632
	sw $t0, -5688($fp)
	li $t0, 2
	sw $t0, -5692($fp)
	lw $t0, -5692($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5696($fp)
	lw $t0, -5688($fp)
	lw $t1, -5696($fp)
	add $t0, $t0, $t1
	sw $t0, -5700($fp)
	lw $t0, -5684($fp)
	lw $t1, -5700($fp)
	sw $t0, 0($t1)
	lw $t0, -5700($fp)
	lw $t1, 0($t0)
	sw $t1, -5704($fp)
	li $t0, 35110
	sw $t0, -5708($fp)
	addi $t0, $fp, -5632
	sw $t0, -5712($fp)
	li $t0, 3
	sw $t0, -5716($fp)
	lw $t0, -5716($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5720($fp)
	lw $t0, -5712($fp)
	lw $t1, -5720($fp)
	add $t0, $t0, $t1
	sw $t0, -5724($fp)
	lw $t0, -5708($fp)
	lw $t1, -5724($fp)
	sw $t0, 0($t1)
	lw $t0, -5724($fp)
	lw $t1, 0($t0)
	sw $t1, -5728($fp)
	li $t0, 23499
	sw $t0, -5732($fp)
	addi $t0, $fp, -5632
	sw $t0, -5736($fp)
	li $t0, 4
	sw $t0, -5740($fp)
	lw $t0, -5740($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5744($fp)
	lw $t0, -5736($fp)
	lw $t1, -5744($fp)
	add $t0, $t0, $t1
	sw $t0, -5748($fp)
	lw $t0, -5732($fp)
	lw $t1, -5748($fp)
	sw $t0, 0($t1)
	lw $t0, -5748($fp)
	lw $t1, 0($t0)
	sw $t1, -5752($fp)
	li $t0, 28569
	sw $t0, -5756($fp)
	addi $t0, $fp, -5632
	sw $t0, -5760($fp)
	li $t0, 5
	sw $t0, -5764($fp)
	lw $t0, -5764($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5768($fp)
	lw $t0, -5760($fp)
	lw $t1, -5768($fp)
	add $t0, $t0, $t1
	sw $t0, -5772($fp)
	lw $t0, -5756($fp)
	lw $t1, -5772($fp)
	sw $t0, 0($t1)
	lw $t0, -5772($fp)
	lw $t1, 0($t0)
	sw $t1, -5776($fp)
	li $t0, 13671
	sw $t0, -5780($fp)
	addi $t0, $fp, -5632
	sw $t0, -5784($fp)
	li $t0, 6
	sw $t0, -5788($fp)
	lw $t0, -5788($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5792($fp)
	lw $t0, -5784($fp)
	lw $t1, -5792($fp)
	add $t0, $t0, $t1
	sw $t0, -5796($fp)
	lw $t0, -5780($fp)
	lw $t1, -5796($fp)
	sw $t0, 0($t1)
	lw $t0, -5796($fp)
	lw $t1, 0($t0)
	sw $t1, -5800($fp)
	li $t0, 17721
	sw $t0, -5804($fp)
	addi $t0, $fp, -5632
	sw $t0, -5808($fp)
	li $t0, 7
	sw $t0, -5812($fp)
	lw $t0, -5812($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5816($fp)
	lw $t0, -5808($fp)
	lw $t1, -5816($fp)
	add $t0, $t0, $t1
	sw $t0, -5820($fp)
	lw $t0, -5804($fp)
	lw $t1, -5820($fp)
	sw $t0, 0($t1)
	lw $t0, -5820($fp)
	lw $t1, 0($t0)
	sw $t1, -5824($fp)
	li $t0, 12806
	sw $t0, -5828($fp)
	lw $t0, -5828($fp)
	sw $t0, -5832($fp)
	lw $t0, -5832($fp)
	sw $t0, -5836($fp)
	li $t0, 52951
	sw $t0, -5840($fp)
	lw $t0, -5840($fp)
	sw $t0, -5844($fp)
	lw $t0, -5844($fp)
	sw $t0, -5848($fp)
	li $t0, 14799
	sw $t0, -5852($fp)
	lw $t0, -5852($fp)
	sw $t0, -5856($fp)
	lw $t0, -5856($fp)
	sw $t0, -5860($fp)
label1061:
	li $t0, 0
	sw $t0, -5864($fp)
	addi $t0, $fp, -208
	sw $t0, -5868($fp)
	li $t0, 8
	sw $t0, -5872($fp)
	li $t0, 4
	lw $t1, -5872($fp)
	mul $t0, $t0, $t1
	sw $t0, -5876($fp)
	lw $t0, -5876($fp)
	lw $t1, -5868($fp)
	add $t0, $t0, $t1
	sw $t0, -5880($fp)
	lw $t0, -5880($fp)
	lw $t1, 0($t0)
	sw $t1, -5884($fp)
	lw $t1, -5884($fp)
	li $t2, 0
	bne $t1, $t2, label1065
	j label1064
label1064:
	li $t0, 1
	sw $t0, -5864($fp)
label1065:
	lw $t0, -5856($fp)
	sw $t0, -5888($fp)
	li $t0, 45247
	sw $t0, -5892($fp)
	lw $t0, -5888($fp)
	lw $t1, -5892($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5896($fp)
	li $t0, 37360
	sw $t0, -5900($fp)
	li $t0, 10889
	sw $t0, -5904($fp)
	lw $t0, -5900($fp)
	lw $t1, -5904($fp)
	mul $t0, $t0, $t1
	sw $t0, -5908($fp)
	lw $t0, -1984($fp)
	sw $t0, -5912($fp)
	lw $t0, -5908($fp)
	lw $t1, -5912($fp)
	add $t0, $t0, $t1
	sw $t0, -5916($fp)
	li $t0, 0
	sw $t0, -5920($fp)
	li $t0, 0
	sw $t0, -5924($fp)
	li $t0, 14200
	sw $t0, -5928($fp)
	li $t0, 1966
	sw $t0, -5932($fp)
	lw $t1, -5928($fp)
	lw $t2, -5932($fp)
	blt $t1, $t2, label1068
	j label1069
label1068:
	li $t0, 1
	sw $t0, -5924($fp)
label1069:
	li $t0, 58024
	sw $t0, -5936($fp)
	lw $t1, -5924($fp)
	lw $t2, -5936($fp)
	blt $t1, $t2, label1066
	j label1067
label1066:
	li $t0, 1
	sw $t0, -5920($fp)
label1067:
	li $t0, 0
	sw $t0, -5940($fp)
	lw $t0, -1276($fp)
	sw $t0, -5944($fp)
	lw $t0, 4($fp)
	sw $t0, -5948($fp)
	lw $t1, -5944($fp)
	lw $t2, -5948($fp)
	blt $t1, $t2, label1070
	j label1071
label1070:
	li $t0, 1
	sw $t0, -5940($fp)
label1071:
	addi $sp, $sp, -4
	lw $t0, -5864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5940($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5952($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -5956($fp)
	addi $t0, $fp, -100
	sw $t0, -5960($fp)
	li $t0, 3
	sw $t0, -5964($fp)
	li $t0, 4
	lw $t1, -5964($fp)
	mul $t0, $t0, $t1
	sw $t0, -5968($fp)
	lw $t0, -5968($fp)
	lw $t1, -5960($fp)
	add $t0, $t0, $t1
	sw $t0, -5972($fp)
	lw $t0, -5972($fp)
	lw $t1, 0($t0)
	sw $t1, -5976($fp)
	li $t0, 0
	sw $t0, -5980($fp)
	li $t0, 4999
	sw $t0, -5984($fp)
	lw $t0, -5832($fp)
	sw $t0, -5988($fp)
	lw $t1, -5984($fp)
	lw $t2, -5988($fp)
	beq $t1, $t2, label1074
	j label1076
label1076:
	li $t0, 31239
	sw $t0, -5992($fp)
	lw $t1, -5992($fp)
	li $t2, 0
	bne $t1, $t2, label1074
	j label1075
label1074:
	li $t0, 1
	sw $t0, -5980($fp)
label1075:
	li $t0, 0
	sw $t0, -5996($fp)
	addi $t0, $fp, -5632
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
	lw $t1, -6016($fp)
	li $t2, 0
	bne $t1, $t2, label1077
	j label1079
label1079:
	li $t0, 8237
	sw $t0, -6020($fp)
	lw $t1, -6020($fp)
	li $t2, 0
	bne $t1, $t2, label1077
	j label1078
label1077:
	li $t0, 1
	sw $t0, -5996($fp)
label1078:
	lw $t0, -736($fp)
	sw $t0, -6024($fp)
	lw $t0, -1276($fp)
	sw $t0, -6028($fp)
	lw $t0, -6024($fp)
	lw $t1, -6028($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6032($fp)
	li $t0, 41194
	sw $t0, -6036($fp)
	lw $t0, -6032($fp)
	lw $t1, -6036($fp)
	sub $t0, $t0, $t1
	sw $t0, -6040($fp)
	addi $t0, $fp, -168
	sw $t0, -6044($fp)
	li $t0, 5
	sw $t0, -6048($fp)
	li $t0, 4
	lw $t1, -6048($fp)
	mul $t0, $t0, $t1
	sw $t0, -6052($fp)
	lw $t0, -6052($fp)
	lw $t1, -6044($fp)
	add $t0, $t0, $t1
	sw $t0, -6056($fp)
	lw $t0, -6056($fp)
	lw $t1, 0($t0)
	sw $t1, -6060($fp)
	addi $sp, $sp, -4
	lw $t0, -5976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6060($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6064($fp)
	addi $sp, $sp, 24
	lw $t1, -6064($fp)
	li $t2, 0
	bne $t1, $t2, label1073
	j label1072
label1072:
	li $t0, 1
	sw $t0, -5956($fp)
label1073:
	lw $t0, -5952($fp)
	lw $t1, -5956($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6068($fp)
	lw $t1, -6068($fp)
	li $t2, 0
	bne $t1, $t2, label1062
	j label1063
label1062:
	li $t0, 0
	sw $t0, -6072($fp)
	li $t0, 30911
	sw $t0, -6076($fp)
	lw $t0, -1312($fp)
	sw $t0, -6080($fp)
	lw $t1, -6076($fp)
	lw $t2, -6080($fp)
	beq $t1, $t2, label1082
	j label1081
label1082:
	li $t0, 32977
	sw $t0, -6084($fp)
	li $t0, 0
	sw $t0, -6088($fp)
	li $t0, 13817
	sw $t0, -6092($fp)
	lw $t1, -6092($fp)
	li $t2, 0
	bne $t1, $t2, label1084
	j label1083
label1083:
	li $t0, 1
	sw $t0, -6088($fp)
label1084:
	lw $t0, -6084($fp)
	lw $t1, -6088($fp)
	mul $t0, $t0, $t1
	sw $t0, -6096($fp)
	li $t0, 0
	lw $t1, -6096($fp)
	sub $t0, $t0, $t1
	sw $t0, -6100($fp)
	lw $t1, -6100($fp)
	li $t2, 0
	bne $t1, $t2, label1080
	j label1081
label1080:
	li $t0, 1
	sw $t0, -6072($fp)
label1081:
	j label1061
label1063:
label1085:
	li $t0, 29598
	sw $t0, -6104($fp)
	lw $t1, -6104($fp)
	li $t2, 0
	bne $t1, $t2, label1086
	j label1087
label1086:
	li $t0, 0
	sw $t0, -6108($fp)
	li $t0, 61742
	sw $t0, -6112($fp)
	lw $t0, -6112($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -6116($fp)
	li $t0, 0
	sw $t0, -6120($fp)
	lw $t0, 8($fp)
	sw $t0, -6124($fp)
	li $t0, 51981
	sw $t0, -6128($fp)
	lw $t1, -6124($fp)
	lw $t2, -6128($fp)
	bne $t1, $t2, label1092
	j label1091
label1092:
	li $t0, 12570
	sw $t0, -6132($fp)
	lw $t1, -6132($fp)
	li $t2, 0
	bne $t1, $t2, label1090
	j label1091
label1090:
	li $t0, 1
	sw $t0, -6120($fp)
label1091:
	li $t0, 24381
	sw $t0, -6136($fp)
	li $t0, 0
	sw $t0, -6140($fp)
	li $t0, 20082
	sw $t0, -6144($fp)
	lw $t0, -760($fp)
	sw $t0, -6148($fp)
	lw $t0, -6144($fp)
	lw $t1, -6148($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6152($fp)
	lw $t0, -1396($fp)
	sw $t0, -6156($fp)
	lw $t1, -6152($fp)
	lw $t2, -6156($fp)
	bgt $t1, $t2, label1093
	j label1094
label1093:
	li $t0, 1
	sw $t0, -6140($fp)
label1094:
	li $t0, 0
	sw $t0, -6160($fp)
	li $t0, 0
	sw $t0, -6164($fp)
	lw $t0, -5844($fp)
	sw $t0, -6168($fp)
	lw $t1, -6168($fp)
	li $t2, 0
	bne $t1, $t2, label1098
	j label1097
label1097:
	li $t0, 1
	sw $t0, -6164($fp)
label1098:
	lw $t0, -1348($fp)
	sw $t0, -6172($fp)
	lw $t1, -6164($fp)
	lw $t2, -6172($fp)
	beq $t1, $t2, label1095
	j label1096
label1095:
	li $t0, 1
	sw $t0, -6160($fp)
label1096:
	li $t0, 0
	sw $t0, -6176($fp)
	li $t0, 0
	sw $t0, -6180($fp)
	lw $t0, -1384($fp)
	sw $t0, -6184($fp)
	li $t0, 0
	lw $t1, -6184($fp)
	sub $t0, $t0, $t1
	sw $t0, -6188($fp)
	lw $t1, -6188($fp)
	li $t2, 0
	bne $t1, $t2, label1102
	j label1101
label1101:
	li $t0, 1
	sw $t0, -6180($fp)
label1102:
	li $t0, 5282
	sw $t0, -6192($fp)
	addi $sp, $sp, -4
	lw $t0, -6180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6192($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6196($fp)
	addi $sp, $sp, 12
	li $t0, 10181
	sw $t0, -6200($fp)
	lw $t1, -6196($fp)
	lw $t2, -6200($fp)
	blt $t1, $t2, label1099
	j label1100
label1099:
	li $t0, 1
	sw $t0, -6176($fp)
label1100:
	li $t0, 0
	sw $t0, -6204($fp)
	li $t0, 0
	sw $t0, -6208($fp)
	lw $t0, -1312($fp)
	sw $t0, -6212($fp)
	li $t0, 62911
	sw $t0, -6216($fp)
	lw $t1, -6212($fp)
	lw $t2, -6216($fp)
	blt $t1, $t2, label1105
	j label1106
label1105:
	li $t0, 1
	sw $t0, -6208($fp)
label1106:
	li $t0, 62599
	sw $t0, -6220($fp)
	lw $t1, -6208($fp)
	lw $t2, -6220($fp)
	bgt $t1, $t2, label1103
	j label1104
label1103:
	li $t0, 1
	sw $t0, -6204($fp)
label1104:
	li $t0, 0
	sw $t0, -6224($fp)
	li $t0, 48927
	sw $t0, -6228($fp)
	li $t0, 53097
	sw $t0, -6232($fp)
	lw $t0, -6228($fp)
	lw $t1, -6232($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6236($fp)
	lw $t1, -6236($fp)
	li $t2, 0
	bne $t1, $t2, label1109
	j label1108
label1109:
	lw $t0, -1276($fp)
	sw $t0, -6240($fp)
	lw $t1, -6240($fp)
	li $t2, 0
	bne $t1, $t2, label1107
	j label1108
label1107:
	li $t0, 1
	sw $t0, -6224($fp)
label1108:
	li $t0, 34342
	sw $t0, -6244($fp)
	addi $sp, $sp, -4
	lw $t0, -6160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6244($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6248($fp)
	addi $sp, $sp, 24
	li $t0, 50014
	sw $t0, -6252($fp)
	lw $t0, -6248($fp)
	lw $t1, -6252($fp)
	mul $t0, $t0, $t1
	sw $t0, -6256($fp)
	addi $sp, $sp, -4
	lw $t0, -6116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6256($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6260($fp)
	addi $sp, $sp, 24
	lw $t1, -6260($fp)
	li $t2, 0
	bne $t1, $t2, label1089
	j label1088
label1088:
	li $t0, 1
	sw $t0, -6108($fp)
label1089:
	j label1085
label1087:
	li $t0, 62870
	sw $t0, -6264($fp)
	lw $t0, -6264($fp)
	sw $t0, -6268($fp)
	lw $t0, -6268($fp)
	sw $t0, -6272($fp)
	lw $t0, -6268($fp)
	sw $t0, -6276($fp)
	lw $t0, -6276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6280($fp)
	li $t0, 0
	sw $t0, -6284($fp)
	li $t0, 0
	sw $t0, -6288($fp)
	li $t0, 57817
	sw $t0, -6292($fp)
	lw $t0, -2092($fp)
	sw $t0, -6296($fp)
	lw $t0, -6292($fp)
	lw $t1, -6296($fp)
	add $t0, $t0, $t1
	sw $t0, -6300($fp)
	li $t0, 33529
	sw $t0, -6304($fp)
	lw $t0, -2068($fp)
	sw $t0, -6308($fp)
	lw $t0, -6304($fp)
	lw $t1, -6308($fp)
	mul $t0, $t0, $t1
	sw $t0, -6312($fp)
	lw $t1, -6300($fp)
	lw $t2, -6312($fp)
	ble $t1, $t2, label1114
	j label1115
label1114:
	li $t0, 1
	sw $t0, -6288($fp)
label1115:
	li $t0, 17154
	sw $t0, -6316($fp)
	lw $t1, -6288($fp)
	lw $t2, -6316($fp)
	bgt $t1, $t2, label1112
	j label1113
label1112:
	li $t0, 1
	sw $t0, -6284($fp)
label1113:
	lw $t0, -1036($fp)
	sw $t0, -6320($fp)
	lw $t1, -6284($fp)
	lw $t2, -6320($fp)
	bne $t1, $t2, label1110
	j label1111
label1110:
	li $t0, 1
	sw $t0, -6280($fp)
label1111:
	lw $ra, -4($fp)
	lw $v0, -6280($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -6324($fp)
	li $t0, 0
	sw $t0, -6328($fp)
	lw $t0, -904($fp)
	sw $t0, -6332($fp)
	lw $t0, -1036($fp)
	sw $t0, -6336($fp)
	lw $t0, -6332($fp)
	lw $t1, -6336($fp)
	add $t0, $t0, $t1
	sw $t0, -6340($fp)
	lw $t1, -6340($fp)
	li $t2, 0
	bne $t1, $t2, label1120
	j label1119
label1120:
	lw $t0, -1036($fp)
	sw $t0, -6344($fp)
	lw $t1, -6344($fp)
	li $t2, 0
	bne $t1, $t2, label1118
	j label1119
label1118:
	li $t0, 1
	sw $t0, -6328($fp)
label1119:
	li $t0, 0
	sw $t0, -6348($fp)
	li $t0, 27237
	sw $t0, -6352($fp)
	lw $t1, -6352($fp)
	li $t2, 0
	bne $t1, $t2, label1121
	j label1124
label1124:
	li $t0, 43727
	sw $t0, -6356($fp)
	lw $t1, -6356($fp)
	li $t2, 0
	bne $t1, $t2, label1121
	j label1123
label1123:
	li $t0, 58348
	sw $t0, -6360($fp)
	lw $t1, -6360($fp)
	li $t2, 0
	bne $t1, $t2, label1121
	j label1122
label1121:
	li $t0, 1
	sw $t0, -6348($fp)
label1122:
	addi $sp, $sp, -4
	lw $t0, -6328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6348($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6364($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -6368($fp)
	lw $t0, 4($fp)
	sw $t0, -6372($fp)
	lw $t1, -6372($fp)
	li $t2, 0
	bne $t1, $t2, label1125
	j label1126
label1125:
	li $t0, 1
	sw $t0, -6368($fp)
label1126:
	addi $sp, $sp, -4
	lw $t0, -6364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6368($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6376($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -6376($fp)
	sub $t0, $t0, $t1
	sw $t0, -6380($fp)
	lw $t1, -6380($fp)
	li $t2, 0
	bne $t1, $t2, label1117
	j label1116
label1116:
	li $t0, 1
	sw $t0, -6324($fp)
label1117:
	lw $t0, -6324($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -6384($fp)
label1127:
	lw $t0, -6268($fp)
	sw $t0, -6388($fp)
	lw $t1, -6388($fp)
	li $t2, 0
	bne $t1, $t2, label1128
	j label1129
label1128:
	li $t0, 50548
	sw $t0, -6404($fp)
	addi $t0, $fp, -6400
	sw $t0, -6408($fp)
	li $t0, 0
	sw $t0, -6412($fp)
	lw $t0, -6412($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6416($fp)
	lw $t0, -6408($fp)
	lw $t1, -6416($fp)
	add $t0, $t0, $t1
	sw $t0, -6420($fp)
	lw $t0, -6404($fp)
	lw $t1, -6420($fp)
	sw $t0, 0($t1)
	lw $t0, -6420($fp)
	lw $t1, 0($t0)
	sw $t1, -6424($fp)
	li $t0, 11248
	sw $t0, -6428($fp)
	addi $t0, $fp, -6400
	sw $t0, -6432($fp)
	li $t0, 1
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
	li $t0, 1050
	sw $t0, -6452($fp)
	addi $t0, $fp, -6400
	sw $t0, -6456($fp)
	li $t0, 2
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
	li $t0, 55547
	sw $t0, -6476($fp)
	lw $t0, -6476($fp)
	sw $t0, -6480($fp)
	lw $t0, -6480($fp)
	sw $t0, -6484($fp)
	li $t0, 42487
	sw $t0, -6488($fp)
	lw $t0, -6488($fp)
	sw $t0, -6492($fp)
	lw $t0, -6492($fp)
	sw $t0, -6496($fp)
	li $t0, 63312
	sw $t0, -6500($fp)
	lw $t0, -6500($fp)
	sw $t0, -6504($fp)
	lw $t0, -6504($fp)
	sw $t0, -6508($fp)
label1130:
	li $t0, 12794
	sw $t0, -6512($fp)
	lw $t1, -6512($fp)
	li $t2, 0
	bne $t1, $t2, label1131
	j label1132
label1131:
	li $t0, 0
	sw $t0, -6516($fp)
	li $t0, 7862
	sw $t0, -6520($fp)
	li $t0, 0
	lw $t1, -6520($fp)
	sub $t0, $t0, $t1
	sw $t0, -6524($fp)
	lw $t1, -6524($fp)
	li $t2, 0
	bne $t1, $t2, label1135
	j label1134
label1135:
	addi $t0, $fp, -6400
	sw $t0, -6528($fp)
	lw $t0, -736($fp)
	sw $t0, -6532($fp)
	li $t0, 0
	lw $t1, -6532($fp)
	sub $t0, $t0, $t1
	sw $t0, -6536($fp)
	li $t0, 4
	lw $t1, -6536($fp)
	mul $t0, $t0, $t1
	sw $t0, -6540($fp)
	lw $t0, -6540($fp)
	lw $t1, -6528($fp)
	add $t0, $t0, $t1
	sw $t0, -6544($fp)
	lw $t0, -6544($fp)
	lw $t1, 0($t0)
	sw $t1, -6548($fp)
	lw $t1, -6548($fp)
	li $t2, 0
	bne $t1, $t2, label1133
	j label1134
label1133:
	li $t0, 1
	sw $t0, -6516($fp)
label1134:
	j label1130
label1132:
	addi $t0, $fp, -100
	sw $t0, -6552($fp)
	lw $t0, -1276($fp)
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
	addi $t0, $fp, -236
	sw $t0, -6572($fp)
	li $t0, 0
	sw $t0, -6576($fp)
	li $t0, 4
	lw $t1, -6576($fp)
	mul $t0, $t0, $t1
	sw $t0, -6580($fp)
	lw $t0, -6580($fp)
	lw $t1, -6572($fp)
	add $t0, $t0, $t1
	sw $t0, -6584($fp)
	lw $t0, -6584($fp)
	lw $t1, 0($t0)
	sw $t1, -6588($fp)
	lw $t0, -6568($fp)
	lw $t1, -6588($fp)
	sub $t0, $t0, $t1
	sw $t0, -6592($fp)
	lw $t0, -1396($fp)
	sw $t0, -6596($fp)
	li $t0, 0
	lw $t1, -6596($fp)
	sub $t0, $t0, $t1
	sw $t0, -6600($fp)
	lw $t0, -6592($fp)
	lw $t1, -6600($fp)
	sub $t0, $t0, $t1
	sw $t0, -6604($fp)
label1136:
	addi $t0, $fp, -208
	sw $t0, -6608($fp)
	li $t0, 0
	sw $t0, -6612($fp)
	lw $t0, -2080($fp)
	sw $t0, -6616($fp)
	lw $t1, -6616($fp)
	li $t2, 0
	bne $t1, $t2, label1139
	j label1141
label1141:
	li $t0, 37460
	sw $t0, -6620($fp)
	lw $t1, -6620($fp)
	li $t2, 0
	bne $t1, $t2, label1139
	j label1140
label1139:
	li $t0, 1
	sw $t0, -6612($fp)
label1140:
	lw $t0, -6612($fp)
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	sw $t0, -6624($fp)
	li $t0, 4
	lw $t1, -6624($fp)
	mul $t0, $t0, $t1
	sw $t0, -6628($fp)
	lw $t0, -6628($fp)
	lw $t1, -6608($fp)
	add $t0, $t0, $t1
	sw $t0, -6632($fp)
	lw $t0, -6632($fp)
	lw $t1, 0($t0)
	sw $t1, -6636($fp)
	lw $t1, -6636($fp)
	li $t2, 0
	bne $t1, $t2, label1137
	j label1138
label1137:
	li $t0, 0
	sw $t0, -6640($fp)
	li $t0, 50825
	sw $t0, -6644($fp)
	lw $t1, -6644($fp)
	li $t2, 0
	bne $t1, $t2, label1142
	j label1145
label1145:
	lw $t0, -6504($fp)
	sw $t0, -6648($fp)
	lw $t1, -6648($fp)
	li $t2, 0
	bne $t1, $t2, label1142
	j label1144
label1144:
	lw $t0, -2080($fp)
	sw $t0, -6652($fp)
	lw $t1, -6652($fp)
	li $t2, 0
	bne $t1, $t2, label1142
	j label1143
label1142:
	li $t0, 1
	sw $t0, -6640($fp)
label1143:
	li $t0, 58013
	sw $t0, -6656($fp)
	li $t0, 16939
	sw $t0, -6660($fp)
	lw $t0, -6656($fp)
	lw $t1, -6660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6664($fp)
	li $t0, 0
	lw $t1, -6664($fp)
	sub $t0, $t0, $t1
	sw $t0, -6668($fp)
	lw $t0, -1348($fp)
	sw $t0, -6672($fp)
	lw $t0, -6672($fp)
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -6676($fp)
	addi $sp, $sp, -4
	lw $t0, -6668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6676($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6680($fp)
	addi $sp, $sp, 12
	li $t0, 39423
	sw $t0, -6684($fp)
	lw $t0, -6680($fp)
	lw $t1, -6684($fp)
	mul $t0, $t0, $t1
	sw $t0, -6688($fp)
	li $t0, 0
	sw $t0, -6692($fp)
	li $t0, 0
	sw $t0, -6696($fp)
	li $t0, 61232
	sw $t0, -6700($fp)
	lw $t1, -6700($fp)
	li $t2, 0
	bne $t1, $t2, label1149
	j label1148
label1148:
	li $t0, 1
	sw $t0, -6696($fp)
label1149:
	lw $t0, -472($fp)
	sw $t0, -6704($fp)
	lw $t1, -6696($fp)
	lw $t2, -6704($fp)
	bge $t1, $t2, label1146
	j label1147
label1146:
	li $t0, 1
	sw $t0, -6692($fp)
label1147:
	addi $t0, $fp, -208
	sw $t0, -6708($fp)
	li $t0, 8
	sw $t0, -6712($fp)
	li $t0, 4
	lw $t1, -6712($fp)
	mul $t0, $t0, $t1
	sw $t0, -6716($fp)
	lw $t0, -6716($fp)
	lw $t1, -6708($fp)
	add $t0, $t0, $t1
	sw $t0, -6720($fp)
	lw $t0, -6720($fp)
	lw $t1, 0($t0)
	sw $t1, -6724($fp)
	li $t0, 0
	sw $t0, -6728($fp)
	li $t0, 27702
	sw $t0, -6732($fp)
	lw $t1, -6732($fp)
	li $t2, 0
	bne $t1, $t2, label1151
	j label1150
label1150:
	li $t0, 1
	sw $t0, -6728($fp)
label1151:
	li $t0, 62957
	sw $t0, -6736($fp)
	lw $t0, -6736($fp)
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	sw $t0, -6740($fp)
	li $t0, 0
	sw $t0, -6744($fp)
	lw $t0, -892($fp)
	sw $t0, -6748($fp)
	lw $t1, -6748($fp)
	li $t2, 0
	bne $t1, $t2, label1153
	j label1152
label1152:
	li $t0, 1
	sw $t0, -6744($fp)
label1153:
	li $t0, 0
	sw $t0, -6752($fp)
	li $t0, 0
	sw $t0, -6756($fp)
	li $t0, 31496
	sw $t0, -6760($fp)
	li $t0, 43525
	sw $t0, -6764($fp)
	lw $t1, -6760($fp)
	lw $t2, -6764($fp)
	ble $t1, $t2, label1156
	j label1157
label1156:
	li $t0, 1
	sw $t0, -6756($fp)
label1157:
	lw $t0, -2044($fp)
	sw $t0, -6768($fp)
	lw $t1, -6756($fp)
	lw $t2, -6768($fp)
	bgt $t1, $t2, label1154
	j label1155
label1154:
	li $t0, 1
	sw $t0, -6752($fp)
label1155:
	lw $t0, -6480($fp)
	sw $t0, -6772($fp)
	lw $t0, -6772($fp)
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -6776($fp)
	li $t0, 0
	sw $t0, -6780($fp)
	li $t0, 0
	sw $t0, -6784($fp)
	li $t0, 30304
	sw $t0, -6788($fp)
	li $t0, 7115
	sw $t0, -6792($fp)
	lw $t0, -6788($fp)
	lw $t1, -6792($fp)
	mul $t0, $t0, $t1
	sw $t0, -6796($fp)
	li $t0, 57080
	sw $t0, -6800($fp)
	lw $t1, -6796($fp)
	lw $t2, -6800($fp)
	beq $t1, $t2, label1161
	j label1162
label1161:
	li $t0, 1
	sw $t0, -6784($fp)
label1162:
	addi $t0, $fp, -168
	sw $t0, -6804($fp)
	li $t0, 1
	sw $t0, -6808($fp)
	li $t0, 4
	lw $t1, -6808($fp)
	mul $t0, $t0, $t1
	sw $t0, -6812($fp)
	lw $t0, -6812($fp)
	lw $t1, -6804($fp)
	add $t0, $t0, $t1
	sw $t0, -6816($fp)
	lw $t0, -6816($fp)
	lw $t1, 0($t0)
	sw $t1, -6820($fp)
	li $t0, 0
	lw $t1, -6820($fp)
	sub $t0, $t0, $t1
	sw $t0, -6824($fp)
	addi $sp, $sp, -4
	lw $t0, -6784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6824($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6828($fp)
	addi $sp, $sp, 12
	lw $t1, -6828($fp)
	li $t2, 0
	bne $t1, $t2, label1158
	j label1160
label1160:
	li $t0, 50386
	sw $t0, -6832($fp)
	lw $t1, -6832($fp)
	li $t2, 0
	bne $t1, $t2, label1158
	j label1159
label1158:
	li $t0, 1
	sw $t0, -6780($fp)
label1159:
	addi $sp, $sp, -4
	lw $t0, -6740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6780($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6836($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -6840($fp)
	li $t0, 0
	sw $t0, -6844($fp)
	li $t0, 25022
	sw $t0, -6848($fp)
	lw $t1, -6848($fp)
	li $t2, 0
	bne $t1, $t2, label1166
	j label1165
label1165:
	li $t0, 1
	sw $t0, -6844($fp)
label1166:
	lw $t0, -6492($fp)
	sw $t0, -6852($fp)
	lw $t1, -6844($fp)
	lw $t2, -6852($fp)
	bgt $t1, $t2, label1163
	j label1164
label1163:
	li $t0, 1
	sw $t0, -6840($fp)
label1164:
	li $t0, 0
	sw $t0, -6856($fp)
	li $t0, 10002
	sw $t0, -6860($fp)
	lw $t1, -6860($fp)
	li $t2, 0
	bne $t1, $t2, label1168
	j label1167
label1167:
	li $t0, 1
	sw $t0, -6856($fp)
label1168:
	lw $t0, -2080($fp)
	sw $t0, -6864($fp)
	lw $t0, -6856($fp)
	lw $t1, -6864($fp)
	sub $t0, $t0, $t1
	sw $t0, -6868($fp)
	addi $sp, $sp, -4
	lw $t0, -6724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6868($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6872($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -6876($fp)
	li $t0, 65095
	sw $t0, -6880($fp)
	lw $t1, -6880($fp)
	li $t2, 0
	bne $t1, $t2, label1171
	j label1170
label1171:
	lw $t0, -880($fp)
	sw $t0, -6884($fp)
	lw $t1, -6884($fp)
	li $t2, 0
	bne $t1, $t2, label1169
	j label1170
label1169:
	li $t0, 1
	sw $t0, -6876($fp)
label1170:
	addi $sp, $sp, -4
	lw $t0, -6640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6876($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6888($fp)
	addi $sp, $sp, 24
	j label1136
label1138:
	li $t0, 0
	sw $t0, -6892($fp)
	li $t0, 51875
	sw $t0, -6896($fp)
	lw $t1, -6896($fp)
	li $t2, 0
	bne $t1, $t2, label1175
	j label1174
label1175:
	lw $t0, -748($fp)
	sw $t0, -6900($fp)
	lw $t1, -6900($fp)
	li $t2, 0
	bne $t1, $t2, label1172
	j label1174
label1174:
	lw $t0, -460($fp)
	sw $t0, -6904($fp)
	lw $t1, -6904($fp)
	li $t2, 0
	bne $t1, $t2, label1172
	j label1173
label1172:
	li $t0, 1
	sw $t0, -6892($fp)
label1173:
	li $t0, 0
	sw $t0, -6908($fp)
	lw $t0, -1036($fp)
	sw $t0, -6912($fp)
	li $t0, 1951
	sw $t0, -6916($fp)
	lw $t1, -6912($fp)
	lw $t2, -6916($fp)
	beq $t1, $t2, label1176
	j label1178
label1178:
	li $t0, 50671
	sw $t0, -6920($fp)
	lw $t1, -6920($fp)
	li $t2, 0
	bne $t1, $t2, label1176
	j label1177
label1176:
	li $t0, 1
	sw $t0, -6908($fp)
label1177:
	addi $sp, $sp, -4
	lw $t0, -6892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6908($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6924($fp)
	addi $sp, $sp, 12
	lw $t0, -6924($fp)
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	sw $t0, -6928($fp)
	addi $t0, $fp, -6400
	sw $t0, -6932($fp)
	li $t0, 0
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
	addi $t0, $fp, -6400
	sw $t0, -6952($fp)
	li $t0, 1
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
	addi $t0, $fp, -6400
	sw $t0, -6972($fp)
	li $t0, 2
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
	lw $t0, -6480($fp)
	sw $t0, -6992($fp)
	lw $t0, -6992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6492($fp)
	sw $t0, -6996($fp)
	lw $t0, -6996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6504($fp)
	sw $t0, -7000($fp)
	lw $t0, -7000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -7004($fp)
	li $t0, 57498
	sw $t0, -7008($fp)
	lw $t1, -7008($fp)
	li $t2, 0
	bne $t1, $t2, label1179
	j label1180
label1179:
	li $t0, 1
	sw $t0, -7004($fp)
label1180:
	lw $ra, -4($fp)
	lw $v0, -7004($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1127
label1129:
	addi $t0, $fp, -32
	sw $t0, -7012($fp)
	li $t0, 0
	sw $t0, -7016($fp)
	li $t0, 4
	lw $t1, -7016($fp)
	mul $t0, $t0, $t1
	sw $t0, -7020($fp)
	lw $t0, -7020($fp)
	lw $t1, -7012($fp)
	add $t0, $t0, $t1
	sw $t0, -7024($fp)
	lw $t0, -7024($fp)
	lw $t1, 0($t0)
	sw $t1, -7028($fp)
	lw $t0, -7028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -7032($fp)
	li $t0, 1
	sw $t0, -7036($fp)
	li $t0, 4
	lw $t1, -7036($fp)
	mul $t0, $t0, $t1
	sw $t0, -7040($fp)
	lw $t0, -7040($fp)
	lw $t1, -7032($fp)
	add $t0, $t0, $t1
	sw $t0, -7044($fp)
	lw $t0, -7044($fp)
	lw $t1, 0($t0)
	sw $t1, -7048($fp)
	lw $t0, -7048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -7052($fp)
	li $t0, 2
	sw $t0, -7056($fp)
	li $t0, 4
	lw $t1, -7056($fp)
	mul $t0, $t0, $t1
	sw $t0, -7060($fp)
	lw $t0, -7060($fp)
	lw $t1, -7052($fp)
	add $t0, $t0, $t1
	sw $t0, -7064($fp)
	lw $t0, -7064($fp)
	lw $t1, 0($t0)
	sw $t1, -7068($fp)
	lw $t0, -7068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -7072($fp)
	li $t0, 3
	sw $t0, -7076($fp)
	li $t0, 4
	lw $t1, -7076($fp)
	mul $t0, $t0, $t1
	sw $t0, -7080($fp)
	lw $t0, -7080($fp)
	lw $t1, -7072($fp)
	add $t0, $t0, $t1
	sw $t0, -7084($fp)
	lw $t0, -7084($fp)
	lw $t1, 0($t0)
	sw $t1, -7088($fp)
	lw $t0, -7088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -7092($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -7112($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -7132($fp)
	li $t0, 6
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
	lw $t0, -412($fp)
	sw $t0, -7152($fp)
	lw $t0, -7152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -424($fp)
	sw $t0, -7156($fp)
	lw $t0, -7156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -436($fp)
	sw $t0, -7160($fp)
	lw $t0, -7160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -448($fp)
	sw $t0, -7164($fp)
	lw $t0, -7164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -460($fp)
	sw $t0, -7168($fp)
	lw $t0, -7168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -472($fp)
	sw $t0, -7172($fp)
	lw $t0, -7172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -7176($fp)
	li $t0, 0
	sw $t0, -7180($fp)
	li $t0, 4
	lw $t1, -7180($fp)
	mul $t0, $t0, $t1
	sw $t0, -7184($fp)
	lw $t0, -7184($fp)
	lw $t1, -7176($fp)
	add $t0, $t0, $t1
	sw $t0, -7188($fp)
	lw $t0, -7188($fp)
	lw $t1, 0($t0)
	sw $t1, -7192($fp)
	lw $t0, -7192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -7196($fp)
	li $t0, 1
	sw $t0, -7200($fp)
	li $t0, 4
	lw $t1, -7200($fp)
	mul $t0, $t0, $t1
	sw $t0, -7204($fp)
	lw $t0, -7204($fp)
	lw $t1, -7196($fp)
	add $t0, $t0, $t1
	sw $t0, -7208($fp)
	lw $t0, -7208($fp)
	lw $t1, 0($t0)
	sw $t1, -7212($fp)
	lw $t0, -7212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -7216($fp)
	li $t0, 2
	sw $t0, -7220($fp)
	li $t0, 4
	lw $t1, -7220($fp)
	mul $t0, $t0, $t1
	sw $t0, -7224($fp)
	lw $t0, -7224($fp)
	lw $t1, -7216($fp)
	add $t0, $t0, $t1
	sw $t0, -7228($fp)
	lw $t0, -7228($fp)
	lw $t1, 0($t0)
	sw $t1, -7232($fp)
	lw $t0, -7232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -7236($fp)
	li $t0, 3
	sw $t0, -7240($fp)
	li $t0, 4
	lw $t1, -7240($fp)
	mul $t0, $t0, $t1
	sw $t0, -7244($fp)
	lw $t0, -7244($fp)
	lw $t1, -7236($fp)
	add $t0, $t0, $t1
	sw $t0, -7248($fp)
	lw $t0, -7248($fp)
	lw $t1, 0($t0)
	sw $t1, -7252($fp)
	lw $t0, -7252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -7256($fp)
	li $t0, 4
	sw $t0, -7260($fp)
	li $t0, 4
	lw $t1, -7260($fp)
	mul $t0, $t0, $t1
	sw $t0, -7264($fp)
	lw $t0, -7264($fp)
	lw $t1, -7256($fp)
	add $t0, $t0, $t1
	sw $t0, -7268($fp)
	lw $t0, -7268($fp)
	lw $t1, 0($t0)
	sw $t1, -7272($fp)
	lw $t0, -7272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -7276($fp)
	li $t0, 5
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
	addi $t0, $fp, -72
	sw $t0, -7296($fp)
	li $t0, 6
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
	addi $t0, $fp, -72
	sw $t0, -7316($fp)
	li $t0, 7
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
	addi $t0, $fp, -72
	sw $t0, -7336($fp)
	li $t0, 8
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
	addi $t0, $fp, -72
	sw $t0, -7356($fp)
	li $t0, 9
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
	lw $t0, -724($fp)
	sw $t0, -7376($fp)
	lw $t0, -7376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -736($fp)
	sw $t0, -7380($fp)
	lw $t0, -7380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -748($fp)
	sw $t0, -7384($fp)
	lw $t0, -7384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -760($fp)
	sw $t0, -7388($fp)
	lw $t0, -7388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -772($fp)
	sw $t0, -7392($fp)
	lw $t0, -7392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -784($fp)
	sw $t0, -7396($fp)
	lw $t0, -7396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -7400($fp)
	li $t0, 0
	sw $t0, -7404($fp)
	li $t0, 4
	lw $t1, -7404($fp)
	mul $t0, $t0, $t1
	sw $t0, -7408($fp)
	lw $t0, -7408($fp)
	lw $t1, -7400($fp)
	add $t0, $t0, $t1
	sw $t0, -7412($fp)
	lw $t0, -7412($fp)
	lw $t1, 0($t0)
	sw $t1, -7416($fp)
	lw $t0, -7416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -7420($fp)
	li $t0, 1
	sw $t0, -7424($fp)
	li $t0, 4
	lw $t1, -7424($fp)
	mul $t0, $t0, $t1
	sw $t0, -7428($fp)
	lw $t0, -7428($fp)
	lw $t1, -7420($fp)
	add $t0, $t0, $t1
	sw $t0, -7432($fp)
	lw $t0, -7432($fp)
	lw $t1, 0($t0)
	sw $t1, -7436($fp)
	lw $t0, -7436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -7440($fp)
	li $t0, 2
	sw $t0, -7444($fp)
	li $t0, 4
	lw $t1, -7444($fp)
	mul $t0, $t0, $t1
	sw $t0, -7448($fp)
	lw $t0, -7448($fp)
	lw $t1, -7440($fp)
	add $t0, $t0, $t1
	sw $t0, -7452($fp)
	lw $t0, -7452($fp)
	lw $t1, 0($t0)
	sw $t1, -7456($fp)
	lw $t0, -7456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -868($fp)
	sw $t0, -7460($fp)
	lw $t0, -7460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -880($fp)
	sw $t0, -7464($fp)
	lw $t0, -7464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -892($fp)
	sw $t0, -7468($fp)
	lw $t0, -7468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -904($fp)
	sw $t0, -7472($fp)
	lw $t0, -7472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -7476($fp)
	li $t0, 0
	sw $t0, -7480($fp)
	li $t0, 4
	lw $t1, -7480($fp)
	mul $t0, $t0, $t1
	sw $t0, -7484($fp)
	lw $t0, -7484($fp)
	lw $t1, -7476($fp)
	add $t0, $t0, $t1
	sw $t0, -7488($fp)
	lw $t0, -7488($fp)
	lw $t1, 0($t0)
	sw $t1, -7492($fp)
	lw $t0, -7492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
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
	lw $t0, -7512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -7516($fp)
	li $t0, 2
	sw $t0, -7520($fp)
	li $t0, 4
	lw $t1, -7520($fp)
	mul $t0, $t0, $t1
	sw $t0, -7524($fp)
	lw $t0, -7524($fp)
	lw $t1, -7516($fp)
	add $t0, $t0, $t1
	sw $t0, -7528($fp)
	lw $t0, -7528($fp)
	lw $t1, 0($t0)
	sw $t1, -7532($fp)
	lw $t0, -7532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -7536($fp)
	li $t0, 3
	sw $t0, -7540($fp)
	li $t0, 4
	lw $t1, -7540($fp)
	mul $t0, $t0, $t1
	sw $t0, -7544($fp)
	lw $t0, -7544($fp)
	lw $t1, -7536($fp)
	add $t0, $t0, $t1
	sw $t0, -7548($fp)
	lw $t0, -7548($fp)
	lw $t1, 0($t0)
	sw $t1, -7552($fp)
	lw $t0, -7552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1012($fp)
	sw $t0, -7556($fp)
	lw $t0, -7556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1024($fp)
	sw $t0, -7560($fp)
	lw $t0, -7560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1036($fp)
	sw $t0, -7564($fp)
	lw $t0, -7564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1048($fp)
	sw $t0, -7568($fp)
	lw $t0, -7568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -7572($fp)
	li $t0, 0
	sw $t0, -7576($fp)
	li $t0, 4
	lw $t1, -7576($fp)
	mul $t0, $t0, $t1
	sw $t0, -7580($fp)
	lw $t0, -7580($fp)
	lw $t1, -7572($fp)
	add $t0, $t0, $t1
	sw $t0, -7584($fp)
	lw $t0, -7584($fp)
	lw $t1, 0($t0)
	sw $t1, -7588($fp)
	lw $t0, -7588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -7592($fp)
	li $t0, 1
	sw $t0, -7596($fp)
	li $t0, 4
	lw $t1, -7596($fp)
	mul $t0, $t0, $t1
	sw $t0, -7600($fp)
	lw $t0, -7600($fp)
	lw $t1, -7592($fp)
	add $t0, $t0, $t1
	sw $t0, -7604($fp)
	lw $t0, -7604($fp)
	lw $t1, 0($t0)
	sw $t1, -7608($fp)
	lw $t0, -7608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -7612($fp)
	li $t0, 2
	sw $t0, -7616($fp)
	li $t0, 4
	lw $t1, -7616($fp)
	mul $t0, $t0, $t1
	sw $t0, -7620($fp)
	lw $t0, -7620($fp)
	lw $t1, -7612($fp)
	add $t0, $t0, $t1
	sw $t0, -7624($fp)
	lw $t0, -7624($fp)
	lw $t1, 0($t0)
	sw $t1, -7628($fp)
	lw $t0, -7628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -7632($fp)
	li $t0, 3
	sw $t0, -7636($fp)
	li $t0, 4
	lw $t1, -7636($fp)
	mul $t0, $t0, $t1
	sw $t0, -7640($fp)
	lw $t0, -7640($fp)
	lw $t1, -7632($fp)
	add $t0, $t0, $t1
	sw $t0, -7644($fp)
	lw $t0, -7644($fp)
	lw $t1, 0($t0)
	sw $t1, -7648($fp)
	lw $t0, -7648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -7652($fp)
	li $t0, 4
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
	addi $t0, $fp, -136
	sw $t0, -7672($fp)
	li $t0, 0
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
	addi $t0, $fp, -136
	sw $t0, -7692($fp)
	li $t0, 1
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
	addi $t0, $fp, -136
	sw $t0, -7712($fp)
	li $t0, 2
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
	addi $t0, $fp, -136
	sw $t0, -7732($fp)
	li $t0, 3
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
	lw $t0, -1276($fp)
	sw $t0, -7752($fp)
	lw $t0, -7752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1288($fp)
	sw $t0, -7756($fp)
	lw $t0, -7756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1300($fp)
	sw $t0, -7760($fp)
	lw $t0, -7760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1312($fp)
	sw $t0, -7764($fp)
	lw $t0, -7764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1324($fp)
	sw $t0, -7768($fp)
	lw $t0, -7768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1336($fp)
	sw $t0, -7772($fp)
	lw $t0, -7772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1348($fp)
	sw $t0, -7776($fp)
	lw $t0, -7776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1360($fp)
	sw $t0, -7780($fp)
	lw $t0, -7780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1372($fp)
	sw $t0, -7784($fp)
	lw $t0, -7784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1384($fp)
	sw $t0, -7788($fp)
	lw $t0, -7788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1396($fp)
	sw $t0, -7792($fp)
	lw $t0, -7792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -168
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
	addi $t0, $fp, -168
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
	addi $t0, $fp, -168
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
	addi $t0, $fp, -168
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
	addi $t0, $fp, -168
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
	addi $t0, $fp, -168
	sw $t0, -7896($fp)
	li $t0, 5
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
	addi $t0, $fp, -168
	sw $t0, -7916($fp)
	li $t0, 6
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
	addi $t0, $fp, -168
	sw $t0, -7936($fp)
	li $t0, 7
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
	addi $t0, $fp, -208
	sw $t0, -7956($fp)
	li $t0, 0
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
	addi $t0, $fp, -208
	sw $t0, -7976($fp)
	li $t0, 1
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
	addi $t0, $fp, -208
	sw $t0, -7996($fp)
	li $t0, 2
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
	addi $t0, $fp, -208
	sw $t0, -8016($fp)
	li $t0, 3
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
	addi $t0, $fp, -208
	sw $t0, -8036($fp)
	li $t0, 4
	sw $t0, -8040($fp)
	li $t0, 4
	lw $t1, -8040($fp)
	mul $t0, $t0, $t1
	sw $t0, -8044($fp)
	lw $t0, -8044($fp)
	lw $t1, -8036($fp)
	add $t0, $t0, $t1
	sw $t0, -8048($fp)
	lw $t0, -8048($fp)
	lw $t1, 0($t0)
	sw $t1, -8052($fp)
	lw $t0, -8052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -8056($fp)
	li $t0, 5
	sw $t0, -8060($fp)
	li $t0, 4
	lw $t1, -8060($fp)
	mul $t0, $t0, $t1
	sw $t0, -8064($fp)
	lw $t0, -8064($fp)
	lw $t1, -8056($fp)
	add $t0, $t0, $t1
	sw $t0, -8068($fp)
	lw $t0, -8068($fp)
	lw $t1, 0($t0)
	sw $t1, -8072($fp)
	lw $t0, -8072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -8076($fp)
	li $t0, 6
	sw $t0, -8080($fp)
	li $t0, 4
	lw $t1, -8080($fp)
	mul $t0, $t0, $t1
	sw $t0, -8084($fp)
	lw $t0, -8084($fp)
	lw $t1, -8076($fp)
	add $t0, $t0, $t1
	sw $t0, -8088($fp)
	lw $t0, -8088($fp)
	lw $t1, 0($t0)
	sw $t1, -8092($fp)
	lw $t0, -8092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -8096($fp)
	li $t0, 7
	sw $t0, -8100($fp)
	li $t0, 4
	lw $t1, -8100($fp)
	mul $t0, $t0, $t1
	sw $t0, -8104($fp)
	lw $t0, -8104($fp)
	lw $t1, -8096($fp)
	add $t0, $t0, $t1
	sw $t0, -8108($fp)
	lw $t0, -8108($fp)
	lw $t1, 0($t0)
	sw $t1, -8112($fp)
	lw $t0, -8112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -8116($fp)
	li $t0, 8
	sw $t0, -8120($fp)
	li $t0, 4
	lw $t1, -8120($fp)
	mul $t0, $t0, $t1
	sw $t0, -8124($fp)
	lw $t0, -8124($fp)
	lw $t1, -8116($fp)
	add $t0, $t0, $t1
	sw $t0, -8128($fp)
	lw $t0, -8128($fp)
	lw $t1, 0($t0)
	sw $t1, -8132($fp)
	lw $t0, -8132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -208
	sw $t0, -8136($fp)
	li $t0, 9
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
	lw $t0, -1840($fp)
	sw $t0, -8156($fp)
	lw $t0, -8156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1852($fp)
	sw $t0, -8160($fp)
	lw $t0, -8160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1864($fp)
	sw $t0, -8164($fp)
	lw $t0, -8164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -8168($fp)
	li $t0, 0
	sw $t0, -8172($fp)
	li $t0, 4
	lw $t1, -8172($fp)
	mul $t0, $t0, $t1
	sw $t0, -8176($fp)
	lw $t0, -8176($fp)
	lw $t1, -8168($fp)
	add $t0, $t0, $t1
	sw $t0, -8180($fp)
	lw $t0, -8180($fp)
	lw $t1, 0($t0)
	sw $t1, -8184($fp)
	lw $t0, -8184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -8188($fp)
	li $t0, 1
	sw $t0, -8192($fp)
	li $t0, 4
	lw $t1, -8192($fp)
	mul $t0, $t0, $t1
	sw $t0, -8196($fp)
	lw $t0, -8196($fp)
	lw $t1, -8188($fp)
	add $t0, $t0, $t1
	sw $t0, -8200($fp)
	lw $t0, -8200($fp)
	lw $t1, 0($t0)
	sw $t1, -8204($fp)
	lw $t0, -8204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -8208($fp)
	li $t0, 2
	sw $t0, -8212($fp)
	li $t0, 4
	lw $t1, -8212($fp)
	mul $t0, $t0, $t1
	sw $t0, -8216($fp)
	lw $t0, -8216($fp)
	lw $t1, -8208($fp)
	add $t0, $t0, $t1
	sw $t0, -8220($fp)
	lw $t0, -8220($fp)
	lw $t1, 0($t0)
	sw $t1, -8224($fp)
	lw $t0, -8224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -8228($fp)
	li $t0, 3
	sw $t0, -8232($fp)
	li $t0, 4
	lw $t1, -8232($fp)
	mul $t0, $t0, $t1
	sw $t0, -8236($fp)
	lw $t0, -8236($fp)
	lw $t1, -8228($fp)
	add $t0, $t0, $t1
	sw $t0, -8240($fp)
	lw $t0, -8240($fp)
	lw $t1, 0($t0)
	sw $t1, -8244($fp)
	lw $t0, -8244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1972($fp)
	sw $t0, -8248($fp)
	lw $t0, -8248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1984($fp)
	sw $t0, -8252($fp)
	lw $t0, -8252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1996($fp)
	sw $t0, -8256($fp)
	lw $t0, -8256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2008($fp)
	sw $t0, -8260($fp)
	lw $t0, -8260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2020($fp)
	sw $t0, -8264($fp)
	lw $t0, -8264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2032($fp)
	sw $t0, -8268($fp)
	lw $t0, -8268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2044($fp)
	sw $t0, -8272($fp)
	lw $t0, -8272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2056($fp)
	sw $t0, -8276($fp)
	lw $t0, -8276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2068($fp)
	sw $t0, -8280($fp)
	lw $t0, -8280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2080($fp)
	sw $t0, -8284($fp)
	lw $t0, -8284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2092($fp)
	sw $t0, -8288($fp)
	lw $t0, -8288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -8292($fp)
	li $t0, 0
	sw $t0, -8296($fp)
	li $t0, 4
	lw $t1, -8296($fp)
	mul $t0, $t0, $t1
	sw $t0, -8300($fp)
	lw $t0, -8300($fp)
	lw $t1, -8292($fp)
	add $t0, $t0, $t1
	sw $t0, -8304($fp)
	lw $t0, -8304($fp)
	lw $t1, 0($t0)
	sw $t1, -8308($fp)
	lw $t0, -8308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -8312($fp)
	li $t0, 1
	sw $t0, -8316($fp)
	li $t0, 4
	lw $t1, -8316($fp)
	mul $t0, $t0, $t1
	sw $t0, -8320($fp)
	lw $t0, -8320($fp)
	lw $t1, -8312($fp)
	add $t0, $t0, $t1
	sw $t0, -8324($fp)
	lw $t0, -8324($fp)
	lw $t1, 0($t0)
	sw $t1, -8328($fp)
	lw $t0, -8328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -236
	sw $t0, -8332($fp)
	li $t0, 2
	sw $t0, -8336($fp)
	li $t0, 4
	lw $t1, -8336($fp)
	mul $t0, $t0, $t1
	sw $t0, -8340($fp)
	lw $t0, -8340($fp)
	lw $t1, -8332($fp)
	add $t0, $t0, $t1
	sw $t0, -8344($fp)
	lw $t0, -8344($fp)
	lw $t1, 0($t0)
	sw $t1, -8348($fp)
	lw $t0, -8348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 27623
	sw $t0, -8352($fp)
	lw $ra, -4($fp)
	lw $v0, -8352($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -6396
	li $t0, 49651
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	li $t0, 4756
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	li $t0, 35485
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 14868
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	li $t0, 31367
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	li $t0, 7410
	sw $t0, -212($fp)
	addi $t0, $fp, -12
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
	li $t0, 14427
	sw $t0, -236($fp)
	addi $t0, $fp, -12
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
	li $t0, 41370
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	li $t0, 32432
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	li $t0, 11361
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	li $t0, 48435
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	li $t0, 62736
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	li $t0, 18476
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	li $t0, 39979
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	li $t0, 47587
	sw $t0, -344($fp)
	addi $t0, $fp, -36
	sw $t0, -348($fp)
	li $t0, 0
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
	li $t0, 49973
	sw $t0, -368($fp)
	addi $t0, $fp, -36
	sw $t0, -372($fp)
	li $t0, 1
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
	li $t0, 17968
	sw $t0, -392($fp)
	addi $t0, $fp, -36
	sw $t0, -396($fp)
	li $t0, 2
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
	li $t0, 45008
	sw $t0, -416($fp)
	addi $t0, $fp, -36
	sw $t0, -420($fp)
	li $t0, 3
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
	li $t0, 12139
	sw $t0, -440($fp)
	addi $t0, $fp, -36
	sw $t0, -444($fp)
	li $t0, 4
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
	li $t0, 58827
	sw $t0, -464($fp)
	addi $t0, $fp, -36
	sw $t0, -468($fp)
	li $t0, 5
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
	li $t0, 34710
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	li $t0, 7835
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	li $t0, 51304
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	li $t0, 51650
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	li $t0, 47258
	sw $t0, -536($fp)
	addi $t0, $fp, -64
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
	li $t0, 36594
	sw $t0, -560($fp)
	addi $t0, $fp, -64
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
	li $t0, 53601
	sw $t0, -584($fp)
	addi $t0, $fp, -64
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
	li $t0, 32394
	sw $t0, -608($fp)
	addi $t0, $fp, -64
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
	li $t0, 22933
	sw $t0, -632($fp)
	addi $t0, $fp, -64
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
	li $t0, 45564
	sw $t0, -656($fp)
	addi $t0, $fp, -64
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
	li $t0, 60017
	sw $t0, -680($fp)
	addi $t0, $fp, -64
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
	li $t0, 7049
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	li $t0, 50320
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	li $t0, 29966
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	li $t0, 21917
	sw $t0, -740($fp)
	addi $t0, $fp, -72
	sw $t0, -744($fp)
	li $t0, 0
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
	li $t0, 16152
	sw $t0, -764($fp)
	addi $t0, $fp, -72
	sw $t0, -768($fp)
	li $t0, 1
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
	li $t0, 37376
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	li $t0, 36345
	sw $t0, -800($fp)
	addi $t0, $fp, -108
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
	li $t0, 57522
	sw $t0, -824($fp)
	addi $t0, $fp, -108
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
	li $t0, 4272
	sw $t0, -848($fp)
	addi $t0, $fp, -108
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
	li $t0, 47706
	sw $t0, -872($fp)
	addi $t0, $fp, -108
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
	li $t0, 40421
	sw $t0, -896($fp)
	addi $t0, $fp, -108
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
	li $t0, 1473
	sw $t0, -920($fp)
	addi $t0, $fp, -108
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
	li $t0, 647
	sw $t0, -944($fp)
	addi $t0, $fp, -108
	sw $t0, -948($fp)
	li $t0, 6
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
	li $t0, 14865
	sw $t0, -968($fp)
	addi $t0, $fp, -108
	sw $t0, -972($fp)
	li $t0, 7
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
	li $t0, 49060
	sw $t0, -992($fp)
	addi $t0, $fp, -108
	sw $t0, -996($fp)
	li $t0, 8
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
	li $t0, 50620
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	sw $t0, -1024($fp)
	li $t0, 32833
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -1036($fp)
	li $t0, 28532
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, -1048($fp)
	li $t0, 62759
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -1060($fp)
	li $t0, 26125
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, -1072($fp)
	li $t0, 63242
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
	li $t0, 5059
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -1096($fp)
	li $t0, 11893
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -1108($fp)
	li $t0, 49356
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	li $t0, 52317
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	sw $t0, -1132($fp)
	li $t0, 48487
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -1144($fp)
	li $t0, 37422
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	sw $t0, -1156($fp)
	li $t0, 19175
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	sw $t0, -1168($fp)
	li $t0, 5885
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -1180($fp)
	li $t0, 17450
	sw $t0, -1184($fp)
	addi $t0, $fp, -148
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
	li $t0, 13656
	sw $t0, -1208($fp)
	addi $t0, $fp, -148
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
	li $t0, 12934
	sw $t0, -1232($fp)
	addi $t0, $fp, -148
	sw $t0, -1236($fp)
	li $t0, 2
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
	li $t0, 2234
	sw $t0, -1256($fp)
	addi $t0, $fp, -148
	sw $t0, -1260($fp)
	li $t0, 3
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
	li $t0, 43623
	sw $t0, -1280($fp)
	addi $t0, $fp, -148
	sw $t0, -1284($fp)
	li $t0, 4
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
	li $t0, 34851
	sw $t0, -1304($fp)
	addi $t0, $fp, -148
	sw $t0, -1308($fp)
	li $t0, 5
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
	li $t0, 18386
	sw $t0, -1328($fp)
	addi $t0, $fp, -148
	sw $t0, -1332($fp)
	li $t0, 6
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
	li $t0, 15463
	sw $t0, -1352($fp)
	addi $t0, $fp, -148
	sw $t0, -1356($fp)
	li $t0, 7
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
	li $t0, 5660
	sw $t0, -1376($fp)
	addi $t0, $fp, -148
	sw $t0, -1380($fp)
	li $t0, 8
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
	li $t0, 10372
	sw $t0, -1400($fp)
	addi $t0, $fp, -148
	sw $t0, -1404($fp)
	li $t0, 9
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
	li $t0, 19736
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	sw $t0, -1432($fp)
	li $t0, 53367
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	sw $t0, -1444($fp)
	li $t0, 50794
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	sw $t0, -1456($fp)
	li $t0, 21209
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	sw $t0, -1468($fp)
	li $t0, 0
	sw $t0, -1472($fp)
	li $t0, 54014
	sw $t0, -1476($fp)
	lw $t1, -1476($fp)
	li $t2, 0
	bne $t1, $t2, label1182
	j label1181
label1181:
	li $t0, 1
	sw $t0, -1472($fp)
label1182:
	li $t0, 123
	sw $t0, -1480($fp)
	jal f8
	sw $v0, -1484($fp)
	addi $sp, $sp, 4
	lw $t0, -1480($fp)
	lw $t1, -1484($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1488($fp)
	jal f8
	sw $v0, -1492($fp)
	addi $sp, $sp, 4
	li $t0, 4733
	sw $t0, -1496($fp)
	lw $t0, -1492($fp)
	lw $t1, -1496($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1500($fp)
	lw $t0, -1488($fp)
	lw $t1, -1500($fp)
	sub $t0, $t0, $t1
	sw $t0, -1504($fp)
	lw $t1, -1504($fp)
	li $t2, 0
	bne $t1, $t2, label1186
	j label1184
label1186:
	lw $t0, -204($fp)
	sw $t0, -1508($fp)
	lw $t1, -1508($fp)
	li $t2, 0
	bne $t1, $t2, label1183
	j label1184
label1183:
label1187:
	lw $t0, -1164($fp)
	sw $t0, -1512($fp)
	lw $t0, -312($fp)
	sw $t0, -1516($fp)
	lw $t0, -1512($fp)
	lw $t1, -1516($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1520($fp)
	lw $t1, -1520($fp)
	li $t2, 0
	bne $t1, $t2, label1191
	j label1190
label1191:
	li $t0, 39098
	sw $t0, -1524($fp)
	lw $t1, -1524($fp)
	li $t2, 0
	bne $t1, $t2, label1188
	j label1190
label1190:
	li $t0, 0
	sw $t0, -1528($fp)
	addi $t0, $fp, -64
	sw $t0, -1532($fp)
	li $t0, 4
	sw $t0, -1536($fp)
	li $t0, 4
	lw $t1, -1536($fp)
	mul $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	lw $t1, -1532($fp)
	add $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	lw $t1, 0($t0)
	sw $t1, -1548($fp)
	lw $t1, -1548($fp)
	li $t2, 0
	bne $t1, $t2, label1193
	j label1192
label1192:
	li $t0, 1
	sw $t0, -1528($fp)
label1193:
	lw $t0, -1140($fp)
	sw $t0, -1552($fp)
	li $t0, 36321
	sw $t0, -1556($fp)
	lw $t0, -1552($fp)
	lw $t1, -1556($fp)
	add $t0, $t0, $t1
	sw $t0, -1560($fp)
	lw $t1, -1528($fp)
	lw $t2, -1560($fp)
	ble $t1, $t2, label1188
	j label1189
label1188:
	li $t0, 59081
	sw $t0, -1564($fp)
	j label1187
label1189:
	j label1185
label1184:
	li $t0, 0
	sw $t0, -1568($fp)
	lw $t0, -720($fp)
	sw $t0, -1572($fp)
	li $t0, 0
	lw $t1, -1572($fp)
	sub $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t1, -1576($fp)
	li $t2, 0
	bne $t1, $t2, label1198
	j label1197
label1197:
	li $t0, 1
	sw $t0, -1568($fp)
label1198:
	li $t0, 0
	sw $t0, -1580($fp)
	jal f8
	sw $v0, -1584($fp)
	addi $sp, $sp, 4
	lw $t1, -1584($fp)
	li $t2, 0
	bne $t1, $t2, label1200
	j label1199
label1199:
	li $t0, 1
	sw $t0, -1580($fp)
label1200:
	li $t0, 28162
	sw $t0, -1588($fp)
	li $t0, 14792
	sw $t0, -1592($fp)
	li $t0, 0
	sw $t0, -1596($fp)
	li $t0, 30971
	sw $t0, -1600($fp)
	li $t0, 41380
	sw $t0, -1604($fp)
	lw $t0, -1600($fp)
	lw $t1, -1604($fp)
	sub $t0, $t0, $t1
	sw $t0, -1608($fp)
	li $t0, 5439
	sw $t0, -1612($fp)
	lw $t1, -1608($fp)
	lw $t2, -1612($fp)
	ble $t1, $t2, label1201
	j label1202
label1201:
	li $t0, 1
	sw $t0, -1596($fp)
label1202:
	addi $sp, $sp, -4
	lw $t0, -1568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1596($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1616($fp)
	addi $sp, $sp, 24
	lw $t1, -1616($fp)
	li $t2, 0
	bne $t1, $t2, label1194
	j label1195
label1194:
	li $t0, 0
	sw $t0, -1620($fp)
	lw $t0, -180($fp)
	sw $t0, -1624($fp)
	lw $t1, -1624($fp)
	li $t2, 0
	bne $t1, $t2, label1203
	j label1204
label1203:
	li $t0, 1
	sw $t0, -1620($fp)
label1204:
	lw $t0, -1620($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -1628($fp)
	j label1196
label1195:
	li $t0, 0
	sw $t0, -1632($fp)
	lw $t0, -1020($fp)
	sw $t0, -1636($fp)
	li $t0, 59811
	sw $t0, -1640($fp)
	lw $t0, -1636($fp)
	lw $t1, -1640($fp)
	sub $t0, $t0, $t1
	sw $t0, -1644($fp)
	lw $t1, -1644($fp)
	li $t2, 0
	bne $t1, $t2, label1210
	j label1209
label1210:
	li $t0, 4128
	sw $t0, -1648($fp)
	lw $t1, -1648($fp)
	li $t2, 0
	bne $t1, $t2, label1208
	j label1209
label1208:
	li $t0, 1
	sw $t0, -1632($fp)
label1209:
	li $t0, 0
	sw $t0, -1652($fp)
	li $t0, 0
	sw $t0, -1656($fp)
	li $t0, 53926
	sw $t0, -1660($fp)
	li $t0, 52214
	sw $t0, -1664($fp)
	lw $t1, -1660($fp)
	lw $t2, -1664($fp)
	blt $t1, $t2, label1213
	j label1214
label1213:
	li $t0, 1
	sw $t0, -1656($fp)
label1214:
	li $t0, 47337
	sw $t0, -1668($fp)
	lw $t1, -1656($fp)
	lw $t2, -1668($fp)
	bne $t1, $t2, label1211
	j label1212
label1211:
	li $t0, 1
	sw $t0, -1652($fp)
label1212:
	addi $sp, $sp, -4
	lw $t0, -1632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1652($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1672($fp)
	addi $sp, $sp, 12
	lw $t1, -1672($fp)
	li $t2, 0
	bne $t1, $t2, label1205
	j label1206
label1205:
	li $t0, 0
	sw $t0, -1676($fp)
	lw $t0, -1440($fp)
	sw $t0, -1680($fp)
	li $t0, 60994
	sw $t0, -1684($fp)
	lw $t1, -1680($fp)
	lw $t2, -1684($fp)
	bne $t1, $t2, label1215
	j label1216
label1215:
	li $t0, 1
	sw $t0, -1676($fp)
label1216:
label1217:
	addi $t0, $fp, -72
	sw $t0, -1688($fp)
	li $t0, 0
	sw $t0, -1692($fp)
	li $t0, 7209
	sw $t0, -1696($fp)
	lw $t1, -1696($fp)
	li $t2, 0
	bne $t1, $t2, label1222
	j label1221
label1222:
	li $t0, 6362
	sw $t0, -1700($fp)
	lw $t1, -1700($fp)
	li $t2, 0
	bne $t1, $t2, label1220
	j label1221
label1220:
	li $t0, 1
	sw $t0, -1692($fp)
label1221:
	li $t0, 4
	lw $t1, -1692($fp)
	mul $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	lw $t1, -1688($fp)
	add $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	lw $t1, 0($t0)
	sw $t1, -1712($fp)
	li $t0, 0
	lw $t1, -1712($fp)
	sub $t0, $t0, $t1
	sw $t0, -1716($fp)
	li $t0, 39081
	sw $t0, -1720($fp)
	lw $t1, -1716($fp)
	lw $t2, -1720($fp)
	beq $t1, $t2, label1218
	j label1219
label1218:
label1223:
	li $t0, 0
	sw $t0, -1724($fp)
	lw $t0, -528($fp)
	sw $t0, -1728($fp)
	lw $t1, -1728($fp)
	li $t2, 0
	bne $t1, $t2, label1227
	j label1226
label1226:
	li $t0, 1
	sw $t0, -1724($fp)
label1227:
	li $t0, 0
	lw $t1, -1724($fp)
	sub $t0, $t0, $t1
	sw $t0, -1732($fp)
	lw $t1, -1732($fp)
	li $t2, 0
	bne $t1, $t2, label1224
	j label1225
label1224:
label1228:
	jal f8
	sw $v0, -1736($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1736($fp)
	sub $t0, $t0, $t1
	sw $t0, -1740($fp)
	lw $t1, -1740($fp)
	li $t2, 0
	bne $t1, $t2, label1229
	j label1230
label1229:
label1231:
	jal f8
	sw $v0, -1744($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -12
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
	lw $t0, -1744($fp)
	lw $t1, -1764($fp)
	sub $t0, $t0, $t1
	sw $t0, -1768($fp)
	lw $t1, -1768($fp)
	li $t2, 0
	bne $t1, $t2, label1232
	j label1234
label1234:
	addi $t0, $fp, -12
	sw $t0, -1772($fp)
	li $t0, 1
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
	li $t0, 8745
	sw $t0, -1792($fp)
	lw $t0, -1788($fp)
	lw $t1, -1792($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1796($fp)
	lw $t1, -1796($fp)
	li $t2, 0
	bne $t1, $t2, label1232
	j label1233
label1232:
	jal f8
	sw $v0, -1800($fp)
	addi $sp, $sp, 4
	lw $t0, -1800($fp)
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	sw $t0, -1804($fp)
	j label1231
label1233:
	j label1228
label1230:
	j label1223
label1225:
	j label1217
label1219:
label1206:
label1196:
label1185:
	addi $t0, $fp, -148
	sw $t0, -1808($fp)
	lw $t0, -516($fp)
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
	li $t0, 35552
	sw $t0, -1828($fp)
	lw $t0, -1824($fp)
	lw $t1, -1828($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1832($fp)
	li $t0, 0
	sw $t0, -1836($fp)
	li $t0, 20379
	sw $t0, -1840($fp)
	lw $t1, -1840($fp)
	li $t2, 0
	bne $t1, $t2, label1240
	j label1239
label1239:
	li $t0, 1
	sw $t0, -1836($fp)
label1240:
	li $t0, 0
	lw $t1, -1836($fp)
	sub $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $t1, -1832($fp)
	lw $t2, -1844($fp)
	beq $t1, $t2, label1238
	j label1236
label1238:
	lw $t0, -336($fp)
	sw $t0, -1848($fp)
	li $t0, 29953
	sw $t0, -1852($fp)
	lw $t0, -180($fp)
	sw $t0, -1856($fp)
	lw $t0, -1852($fp)
	lw $t1, -1856($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1860($fp)
	lw $t0, -1848($fp)
	lw $t1, -1860($fp)
	sub $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t1, -1864($fp)
	li $t2, 0
	bne $t1, $t2, label1235
	j label1236
label1235:
	addi $t0, $fp, -64
	sw $t0, -1868($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -1884($fp)
	sub $t0, $t0, $t1
	sw $t0, -1888($fp)
	li $t0, 0
	sw $t0, -1892($fp)
	li $t0, 24030
	sw $t0, -1896($fp)
	li $t0, 20502
	sw $t0, -1900($fp)
	lw $t1, -1896($fp)
	lw $t2, -1900($fp)
	bge $t1, $t2, label1241
	j label1242
label1241:
	li $t0, 1
	sw $t0, -1892($fp)
label1242:
	addi $sp, $sp, -4
	lw $t0, -1888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1892($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1904($fp)
	addi $sp, $sp, 12
	lw $ra, -4($fp)
	lw $v0, -1904($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1237
label1236:
	li $t0, 0
	sw $t0, -1908($fp)
	li $t0, 0
	sw $t0, -1912($fp)
	li $t0, 0
	sw $t0, -1916($fp)
	li $t0, 34857
	sw $t0, -1920($fp)
	li $t0, 0
	lw $t1, -1920($fp)
	sub $t0, $t0, $t1
	sw $t0, -1924($fp)
	li $t0, 0
	lw $t1, -1924($fp)
	sub $t0, $t0, $t1
	sw $t0, -1928($fp)
	li $t0, 0
	sw $t0, -1932($fp)
	li $t0, 0
	sw $t0, -1936($fp)
	li $t0, 40834
	sw $t0, -1940($fp)
	lw $t1, -1940($fp)
	li $t2, 0
	bne $t1, $t2, label1252
	j label1251
label1251:
	li $t0, 1
	sw $t0, -1936($fp)
label1252:
	lw $t0, -504($fp)
	sw $t0, -1944($fp)
	lw $t1, -1936($fp)
	lw $t2, -1944($fp)
	bne $t1, $t2, label1249
	j label1250
label1249:
	li $t0, 1
	sw $t0, -1932($fp)
label1250:
	li $t0, 0
	sw $t0, -1948($fp)
	jal f8
	sw $v0, -1952($fp)
	addi $sp, $sp, 4
	lw $t1, -1952($fp)
	li $t2, 0
	bne $t1, $t2, label1254
	j label1253
label1253:
	li $t0, 1
	sw $t0, -1948($fp)
label1254:
	jal f8
	sw $v0, -1956($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1956($fp)
	sub $t0, $t0, $t1
	sw $t0, -1960($fp)
	li $t0, 0
	sw $t0, -1964($fp)
	li $t0, 48179
	sw $t0, -1968($fp)
	lw $t1, -1968($fp)
	li $t2, 0
	bne $t1, $t2, label1258
	j label1257
label1258:
	lw $t0, -168($fp)
	sw $t0, -1972($fp)
	lw $t1, -1972($fp)
	li $t2, 0
	bne $t1, $t2, label1255
	j label1257
label1257:
	li $t0, 37920
	sw $t0, -1976($fp)
	lw $t1, -1976($fp)
	li $t2, 0
	bne $t1, $t2, label1255
	j label1256
label1255:
	li $t0, 1
	sw $t0, -1964($fp)
label1256:
	lw $t0, -1068($fp)
	sw $t0, -1980($fp)
	addi $sp, $sp, -4
	lw $t0, -1932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1980($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1984($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -1988($fp)
	lw $t0, -1428($fp)
	sw $t0, -1992($fp)
	li $t0, 52443
	sw $t0, -1996($fp)
	lw $t0, -1992($fp)
	lw $t1, -1996($fp)
	mul $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $t0, -1056($fp)
	sw $t0, -2004($fp)
	lw $t1, -2000($fp)
	lw $t2, -2004($fp)
	blt $t1, $t2, label1259
	j label1260
label1259:
	li $t0, 1
	sw $t0, -1988($fp)
label1260:
	li $t0, 0
	sw $t0, -2008($fp)
	li $t0, 9758
	sw $t0, -2012($fp)
	lw $t1, -2012($fp)
	li $t2, 0
	bne $t1, $t2, label1262
	j label1261
label1261:
	li $t0, 1
	sw $t0, -2008($fp)
label1262:
	li $t0, 0
	lw $t1, -2008($fp)
	sub $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t0, -528($fp)
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -2024($fp)
	li $t0, 0
	sw $t0, -2028($fp)
	li $t0, 47004
	sw $t0, -2032($fp)
	li $t0, 0
	lw $t1, -2032($fp)
	sub $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t1, -2036($fp)
	li $t2, 0
	bne $t1, $t2, label1265
	j label1264
label1265:
	li $t0, 33387
	sw $t0, -2040($fp)
	lw $t1, -2040($fp)
	li $t2, 0
	bne $t1, $t2, label1263
	j label1264
label1263:
	li $t0, 1
	sw $t0, -2028($fp)
label1264:
	li $t0, 0
	sw $t0, -2044($fp)
	addi $t0, $fp, -12
	sw $t0, -2048($fp)
	li $t0, 0
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
	lw $t1, -2064($fp)
	li $t2, 0
	bne $t1, $t2, label1267
	j label1266
label1266:
	li $t0, 1
	sw $t0, -2044($fp)
label1267:
	addi $sp, $sp, -4
	lw $t0, -2028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2044($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2068($fp)
	addi $sp, $sp, 12
	jal f8
	sw $v0, -2072($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -2072($fp)
	sub $t0, $t0, $t1
	sw $t0, -2076($fp)
	li $t0, 0
	sw $t0, -2080($fp)
	lw $t0, -1044($fp)
	sw $t0, -2084($fp)
	li $t0, 53459
	sw $t0, -2088($fp)
	lw $t1, -2084($fp)
	lw $t2, -2088($fp)
	bne $t1, $t2, label1268
	j label1269
label1268:
	li $t0, 1
	sw $t0, -2080($fp)
label1269:
	addi $sp, $sp, -4
	lw $t0, -2016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2080($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2092($fp)
	addi $sp, $sp, 24
	jal f8
	sw $v0, -2096($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -1928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2096($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2100($fp)
	addi $sp, $sp, 24
	lw $t1, -2100($fp)
	li $t2, 0
	bne $t1, $t2, label1248
	j label1247
label1247:
	li $t0, 1
	sw $t0, -1916($fp)
label1248:
	lw $t0, -1116($fp)
	sw $t0, -2104($fp)
	li $t0, 0
	lw $t1, -2104($fp)
	sub $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t1, -1916($fp)
	lw $t2, -2108($fp)
	bne $t1, $t2, label1245
	j label1246
label1245:
	li $t0, 1
	sw $t0, -1912($fp)
label1246:
	li $t0, 19722
	sw $t0, -2112($fp)
	lw $t0, -504($fp)
	sw $t0, -2116($fp)
	lw $t0, -2112($fp)
	lw $t1, -2116($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2120($fp)
	li $t0, 0
	lw $t1, -2120($fp)
	sub $t0, $t0, $t1
	sw $t0, -2124($fp)
	li $t0, 0
	lw $t1, -2124($fp)
	sub $t0, $t0, $t1
	sw $t0, -2128($fp)
	lw $t1, -1912($fp)
	lw $t2, -2128($fp)
	bne $t1, $t2, label1243
	j label1244
label1243:
	li $t0, 1
	sw $t0, -1908($fp)
label1244:
label1237:
	li $t0, 35109
	sw $t0, -2132($fp)
	lw $t0, -1104($fp)
	sw $t0, -2136($fp)
	lw $t1, -2132($fp)
	lw $t2, -2136($fp)
	bge $t1, $t2, label1270
	j label1271
label1270:
	li $t0, 38985
	sw $t0, -2140($fp)
	li $t0, 0
	lw $t1, -2140($fp)
	sub $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t1, -2144($fp)
	li $t2, 0
	bne $t1, $t2, label1274
	j label1276
label1276:
	li $t0, 0
	sw $t0, -2148($fp)
	lw $t0, -1428($fp)
	sw $t0, -2152($fp)
	lw $t1, -2152($fp)
	li $t2, 0
	bne $t1, $t2, label1278
	j label1277
label1277:
	li $t0, 1
	sw $t0, -2148($fp)
label1278:
	lw $t0, -300($fp)
	sw $t0, -2156($fp)
	lw $t0, -2148($fp)
	lw $t1, -2156($fp)
	add $t0, $t0, $t1
	sw $t0, -2160($fp)
	li $t0, 0
	sw $t0, -2164($fp)
	lw $t0, -204($fp)
	sw $t0, -2168($fp)
	lw $t0, -1032($fp)
	sw $t0, -2172($fp)
	lw $t1, -2168($fp)
	lw $t2, -2172($fp)
	bne $t1, $t2, label1281
	j label1280
label1281:
	li $t0, 43269
	sw $t0, -2176($fp)
	lw $t1, -2176($fp)
	li $t2, 0
	bne $t1, $t2, label1279
	j label1280
label1279:
	li $t0, 1
	sw $t0, -2164($fp)
label1280:
	li $t0, 0
	sw $t0, -2180($fp)
	lw $t0, -1068($fp)
	sw $t0, -2184($fp)
	li $t0, 0
	lw $t1, -2184($fp)
	sub $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t1, -2188($fp)
	li $t2, 0
	bne $t1, $t2, label1282
	j label1284
label1284:
	li $t0, 4560
	sw $t0, -2192($fp)
	lw $t1, -2192($fp)
	li $t2, 0
	bne $t1, $t2, label1282
	j label1283
label1282:
	li $t0, 1
	sw $t0, -2180($fp)
label1283:
	li $t0, 0
	sw $t0, -2196($fp)
	lw $t0, -528($fp)
	sw $t0, -2200($fp)
	li $t0, 18844
	sw $t0, -2204($fp)
	lw $t1, -2200($fp)
	lw $t2, -2204($fp)
	blt $t1, $t2, label1285
	j label1287
label1287:
	lw $t0, -288($fp)
	sw $t0, -2208($fp)
	lw $t1, -2208($fp)
	li $t2, 0
	bne $t1, $t2, label1285
	j label1286
label1285:
	li $t0, 1
	sw $t0, -2196($fp)
label1286:
	li $t0, 0
	sw $t0, -2212($fp)
	lw $t0, -528($fp)
	sw $t0, -2216($fp)
	addi $t0, $fp, -12
	sw $t0, -2220($fp)
	lw $t0, -1080($fp)
	sw $t0, -2224($fp)
	li $t0, 4
	lw $t1, -2224($fp)
	mul $t0, $t0, $t1
	sw $t0, -2228($fp)
	lw $t0, -2228($fp)
	lw $t1, -2220($fp)
	add $t0, $t0, $t1
	sw $t0, -2232($fp)
	lw $t0, -2232($fp)
	lw $t1, 0($t0)
	sw $t1, -2236($fp)
	li $t0, 0
	sw $t0, -2240($fp)
	li $t0, 42319
	sw $t0, -2244($fp)
	li $t0, 45347
	sw $t0, -2248($fp)
	lw $t0, -2244($fp)
	lw $t1, -2248($fp)
	add $t0, $t0, $t1
	sw $t0, -2252($fp)
	li $t0, 54261
	sw $t0, -2256($fp)
	lw $t1, -2252($fp)
	lw $t2, -2256($fp)
	bne $t1, $t2, label1290
	j label1291
label1290:
	li $t0, 1
	sw $t0, -2240($fp)
label1291:
	addi $t0, $fp, -12
	sw $t0, -2260($fp)
	lw $t0, -1080($fp)
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
	li $t0, 15180
	sw $t0, -2280($fp)
	addi $sp, $sp, -4
	lw $t0, -2276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2280($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2284($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -64
	sw $t0, -2288($fp)
	lw $t0, -1452($fp)
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
	lw $t0, -204($fp)
	sw $t0, -2308($fp)
	lw $t0, -2304($fp)
	lw $t1, -2308($fp)
	sub $t0, $t0, $t1
	sw $t0, -2312($fp)
	addi $sp, $sp, -4
	lw $t0, -2216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2312($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2316($fp)
	addi $sp, $sp, 24
	lw $t1, -2316($fp)
	li $t2, 0
	bne $t1, $t2, label1289
	j label1288
label1288:
	li $t0, 1
	sw $t0, -2212($fp)
label1289:
	addi $sp, $sp, -4
	lw $t0, -2160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2212($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2320($fp)
	addi $sp, $sp, 24
	lw $t1, -2320($fp)
	li $t2, 0
	bne $t1, $t2, label1273
	j label1274
label1273:
label1292:
	lw $t0, -1464($fp)
	sw $t0, -2324($fp)
	li $t0, 1029
	sw $t0, -2328($fp)
	li $t0, 0
	lw $t1, -2328($fp)
	sub $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t0, -2324($fp)
	lw $t1, -2332($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2336($fp)
	li $t0, 0
	lw $t1, -2336($fp)
	sub $t0, $t0, $t1
	sw $t0, -2340($fp)
	lw $t1, -2340($fp)
	li $t2, 0
	bne $t1, $t2, label1293
	j label1294
label1293:
	li $t0, 39682
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	sw $t0, -2352($fp)
	li $t0, 52014
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	sw $t0, -2364($fp)
	li $t0, 36582
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	sw $t0, -2376($fp)
	li $t0, 60061
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	sw $t0, -2388($fp)
	li $t0, 16431
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	sw $t0, -2400($fp)
	li $t0, 60612
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	sw $t0, -2412($fp)
	li $t0, 15028
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	sw $t0, -2424($fp)
	li $t0, 0
	sw $t0, -2428($fp)
	li $t0, 0
	sw $t0, -2432($fp)
	lw $t0, -708($fp)
	sw $t0, -2436($fp)
	li $t0, 0
	sw $t0, -2440($fp)
	li $t0, 51118
	sw $t0, -2444($fp)
	li $t0, 58205
	sw $t0, -2448($fp)
	lw $t1, -2444($fp)
	lw $t2, -2448($fp)
	bgt $t1, $t2, label1302
	j label1303
label1302:
	li $t0, 1
	sw $t0, -2440($fp)
label1303:
	lw $t1, -2436($fp)
	lw $t2, -2440($fp)
	bne $t1, $t2, label1300
	j label1301
label1300:
	li $t0, 1
	sw $t0, -2432($fp)
label1301:
	li $t0, 0
	sw $t0, -2452($fp)
	lw $t0, -324($fp)
	sw $t0, -2456($fp)
	lw $t1, -2456($fp)
	li $t2, 0
	bne $t1, $t2, label1304
	j label1305
label1304:
	li $t0, 1
	sw $t0, -2452($fp)
label1305:
	lw $t1, -2432($fp)
	lw $t2, -2452($fp)
	beq $t1, $t2, label1298
	j label1299
label1298:
	li $t0, 1
	sw $t0, -2428($fp)
label1299:
	addi $t0, $fp, -12
	sw $t0, -2460($fp)
	li $t0, 0
	sw $t0, -2464($fp)
	lw $t0, -2360($fp)
	sw $t0, -2468($fp)
	lw $t1, -2468($fp)
	li $t2, 0
	bne $t1, $t2, label1306
	j label1308
label1308:
	lw $t0, -2348($fp)
	sw $t0, -2472($fp)
	lw $t1, -2472($fp)
	li $t2, 0
	bne $t1, $t2, label1306
	j label1307
label1306:
	li $t0, 1
	sw $t0, -2464($fp)
label1307:
	li $t0, 4
	lw $t1, -2464($fp)
	mul $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	lw $t1, -2460($fp)
	add $t0, $t0, $t1
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	lw $t1, 0($t0)
	sw $t1, -2484($fp)
	lw $t1, -2428($fp)
	lw $t2, -2484($fp)
	bne $t1, $t2, label1295
	j label1296
label1295:
	lw $t0, -180($fp)
	sw $t0, -2488($fp)
	lw $ra, -4($fp)
	lw $v0, -2488($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1297
label1296:
	li $t0, 2951
	sw $t0, -2492($fp)
	lw $t1, -2492($fp)
	li $t2, 0
	bne $t1, $t2, label1309
	j label1310
label1309:
label1312:
	li $t0, 0
	sw $t0, -2496($fp)
	lw $t0, -1080($fp)
	sw $t0, -2500($fp)
	lw $t0, -720($fp)
	sw $t0, -2504($fp)
	lw $t1, -2500($fp)
	lw $t2, -2504($fp)
	ble $t1, $t2, label1315
	j label1316
label1315:
	li $t0, 1
	sw $t0, -2496($fp)
label1316:
	li $t0, 0
	sw $t0, -2508($fp)
	lw $t0, -204($fp)
	sw $t0, -2512($fp)
	lw $t1, -2512($fp)
	li $t2, 0
	bne $t1, $t2, label1317
	j label1318
label1317:
	li $t0, 1
	sw $t0, -2508($fp)
label1318:
	li $t0, 0
	sw $t0, -2516($fp)
	li $t0, 49955
	sw $t0, -2520($fp)
	li $t0, 0
	lw $t1, -2520($fp)
	sub $t0, $t0, $t1
	sw $t0, -2524($fp)
	lw $t1, -2524($fp)
	li $t2, 0
	bne $t1, $t2, label1319
	j label1321
label1321:
	lw $t0, -276($fp)
	sw $t0, -2528($fp)
	lw $t1, -2528($fp)
	li $t2, 0
	bne $t1, $t2, label1319
	j label1320
label1319:
	li $t0, 1
	sw $t0, -2516($fp)
label1320:
	li $t0, 0
	sw $t0, -2532($fp)
	li $t0, 26583
	sw $t0, -2536($fp)
	lw $t0, -2408($fp)
	sw $t0, -2540($fp)
	lw $t0, -2536($fp)
	lw $t1, -2540($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2544($fp)
	lw $t0, -2372($fp)
	sw $t0, -2548($fp)
	lw $t1, -2544($fp)
	lw $t2, -2548($fp)
	bne $t1, $t2, label1322
	j label1323
label1322:
	li $t0, 1
	sw $t0, -2532($fp)
label1323:
	li $t0, 53533
	sw $t0, -2552($fp)
	addi $sp, $sp, -4
	lw $t0, -2496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2552($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2556($fp)
	addi $sp, $sp, 24
	lw $t0, -708($fp)
	sw $t0, -2560($fp)
	lw $t0, -2556($fp)
	lw $t1, -2560($fp)
	add $t0, $t0, $t1
	sw $t0, -2564($fp)
	li $t0, 0
	sw $t0, -2568($fp)
	li $t0, 21384
	sw $t0, -2572($fp)
	lw $t1, -2572($fp)
	li $t2, 0
	bne $t1, $t2, label1325
	j label1324
label1324:
	li $t0, 1
	sw $t0, -2568($fp)
label1325:
	lw $t1, -2564($fp)
	lw $t2, -2568($fp)
	beq $t1, $t2, label1313
	j label1314
label1313:
	lw $t0, -1428($fp)
	sw $t0, -2576($fp)
	j label1312
label1314:
	j label1311
label1310:
	lw $t0, -2396($fp)
	sw $t0, -2580($fp)
	li $t0, 0
	sw $t0, -2584($fp)
	jal f8
	sw $v0, -2588($fp)
	addi $sp, $sp, 4
	lw $t1, -2588($fp)
	li $t2, 0
	bne $t1, $t2, label1327
	j label1326
label1326:
	li $t0, 1
	sw $t0, -2584($fp)
label1327:
	li $t0, 0
	lw $t1, -2584($fp)
	sub $t0, $t0, $t1
	sw $t0, -2592($fp)
	lw $t0, -2580($fp)
	lw $t1, -2592($fp)
	mul $t0, $t0, $t1
	sw $t0, -2596($fp)
label1311:
label1297:
	lw $t0, -2348($fp)
	sw $t0, -2600($fp)
	lw $t0, -2600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2360($fp)
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2372($fp)
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2384($fp)
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2396($fp)
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2408($fp)
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2420($fp)
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2628($fp)
	jal f8
	sw $v0, -2632($fp)
	addi $sp, $sp, 4
	lw $t1, -2632($fp)
	li $t2, 0
	bne $t1, $t2, label1330
	j label1329
label1330:
	jal f8
	sw $v0, -2636($fp)
	addi $sp, $sp, 4
	li $t0, 36341
	sw $t0, -2640($fp)
	lw $t0, -2636($fp)
	lw $t1, -2640($fp)
	sub $t0, $t0, $t1
	sw $t0, -2644($fp)
	li $t0, 36863
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -2652($fp)
	li $t0, 0
	sw $t0, -2656($fp)
	jal f8
	sw $v0, -2660($fp)
	addi $sp, $sp, 4
	lw $t1, -2660($fp)
	li $t2, 0
	bne $t1, $t2, label1332
	j label1331
label1331:
	li $t0, 1
	sw $t0, -2656($fp)
label1332:
	addi $sp, $sp, -4
	lw $t0, -2652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2656($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2664($fp)
	addi $sp, $sp, 12
	lw $t0, -2644($fp)
	lw $t1, -2664($fp)
	add $t0, $t0, $t1
	sw $t0, -2668($fp)
	lw $t1, -2668($fp)
	li $t2, 0
	bne $t1, $t2, label1328
	j label1329
label1328:
	li $t0, 1
	sw $t0, -2628($fp)
label1329:
	lw $ra, -4($fp)
	lw $v0, -2628($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -2672($fp)
	li $t0, 0
	sw $t0, -2676($fp)
	lw $t0, -2384($fp)
	sw $t0, -2680($fp)
	lw $t1, -2680($fp)
	li $t2, 0
	bne $t1, $t2, label1335
	j label1336
label1335:
	li $t0, 1
	sw $t0, -2676($fp)
label1336:
	li $t0, 0
	sw $t0, -2684($fp)
	lw $t0, -1044($fp)
	sw $t0, -2688($fp)
	lw $t1, -2688($fp)
	li $t2, 0
	bne $t1, $t2, label1338
	j label1337
label1337:
	li $t0, 1
	sw $t0, -2684($fp)
label1338:
	lw $t1, -2676($fp)
	lw $t2, -2684($fp)
	ble $t1, $t2, label1333
	j label1334
label1333:
	li $t0, 1
	sw $t0, -2672($fp)
label1334:
label1339:
	lw $t0, -792($fp)
	sw $t0, -2692($fp)
	li $t0, 0
	lw $t1, -2692($fp)
	sub $t0, $t0, $t1
	sw $t0, -2696($fp)
	addi $t0, $fp, -108
	sw $t0, -2700($fp)
	li $t0, 0
	sw $t0, -2704($fp)
	li $t0, 4027
	sw $t0, -2708($fp)
	lw $t1, -2708($fp)
	li $t2, 0
	bne $t1, $t2, label1344
	j label1343
label1344:
	li $t0, 8726
	sw $t0, -2712($fp)
	lw $t1, -2712($fp)
	li $t2, 0
	bne $t1, $t2, label1342
	j label1343
label1342:
	li $t0, 1
	sw $t0, -2704($fp)
label1343:
	li $t0, 4
	lw $t1, -2704($fp)
	mul $t0, $t0, $t1
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	lw $t1, -2700($fp)
	add $t0, $t0, $t1
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	lw $t1, 0($t0)
	sw $t1, -2724($fp)
	lw $t1, -2696($fp)
	lw $t2, -2724($fp)
	bge $t1, $t2, label1340
	j label1341
label1340:
	li $t0, 0
	sw $t0, -2728($fp)
	jal f8
	sw $v0, -2732($fp)
	addi $sp, $sp, 4
	lw $t1, -2732($fp)
	li $t2, 0
	bne $t1, $t2, label1349
	j label1348
label1348:
	li $t0, 1
	sw $t0, -2728($fp)
label1349:
	li $t0, 47270
	sw $t0, -2736($fp)
	lw $t0, -2348($fp)
	sw $t0, -2740($fp)
	lw $t0, -2736($fp)
	lw $t1, -2740($fp)
	mul $t0, $t0, $t1
	sw $t0, -2744($fp)
	lw $t0, -1440($fp)
	sw $t0, -2748($fp)
	lw $t0, -2744($fp)
	lw $t1, -2748($fp)
	add $t0, $t0, $t1
	sw $t0, -2752($fp)
	li $t0, 0
	sw $t0, -2756($fp)
	li $t0, 0
	sw $t0, -2760($fp)
	lw $t0, -276($fp)
	sw $t0, -2764($fp)
	lw $t0, -1080($fp)
	sw $t0, -2768($fp)
	lw $t1, -2764($fp)
	lw $t2, -2768($fp)
	bge $t1, $t2, label1352
	j label1353
label1352:
	li $t0, 1
	sw $t0, -2760($fp)
label1353:
	li $t0, 28448
	sw $t0, -2772($fp)
	lw $t1, -2760($fp)
	lw $t2, -2772($fp)
	beq $t1, $t2, label1350
	j label1351
label1350:
	li $t0, 1
	sw $t0, -2756($fp)
label1351:
	li $t0, 12161
	sw $t0, -2776($fp)
	li $t0, 38884
	sw $t0, -2780($fp)
	lw $t0, -2776($fp)
	lw $t1, -2780($fp)
	add $t0, $t0, $t1
	sw $t0, -2784($fp)
	lw $t0, -2420($fp)
	sw $t0, -2788($fp)
	lw $t0, -2784($fp)
	lw $t1, -2788($fp)
	sub $t0, $t0, $t1
	sw $t0, -2792($fp)
	addi $t0, $fp, -12
	sw $t0, -2796($fp)
	lw $t0, -276($fp)
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
	addi $sp, $sp, -4
	lw $t0, -2728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2812($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2816($fp)
	addi $sp, $sp, 24
	li $t0, 12333
	sw $t0, -2820($fp)
	lw $t1, -2816($fp)
	lw $t2, -2820($fp)
	bgt $t1, $t2, label1345
	j label1346
label1345:
	lw $t0, -1440($fp)
	sw $t0, -2824($fp)
	li $t0, 43628
	sw $t0, -2828($fp)
	li $t0, 0
	sw $t0, -2832($fp)
	lw $t0, -732($fp)
	sw $t0, -2836($fp)
	lw $t1, -2836($fp)
	li $t2, 0
	bne $t1, $t2, label1355
	j label1354
label1354:
	li $t0, 1
	sw $t0, -2832($fp)
label1355:
	lw $t0, -2828($fp)
	lw $t1, -2832($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2840($fp)
	li $t0, 0
	lw $t1, -2840($fp)
	sub $t0, $t0, $t1
	sw $t0, -2844($fp)
	li $t0, 0
	lw $t1, -2844($fp)
	sub $t0, $t0, $t1
	sw $t0, -2848($fp)
	lw $t0, -2824($fp)
	lw $t1, -2848($fp)
	add $t0, $t0, $t1
	sw $t0, -2852($fp)
	j label1347
label1346:
	jal f8
	sw $v0, -2856($fp)
	addi $sp, $sp, 4
label1347:
	j label1339
label1341:
	j label1292
label1294:
	j label1275
label1274:
label1356:
	li $t0, 0
	sw $t0, -2860($fp)
	addi $t0, $fp, -36
	sw $t0, -2864($fp)
	li $t0, 0
	sw $t0, -2868($fp)
	li $t0, 24053
	sw $t0, -2872($fp)
	lw $t1, -2872($fp)
	li $t2, 0
	bne $t1, $t2, label1363
	j label1362
label1363:
	lw $t0, -492($fp)
	sw $t0, -2876($fp)
	lw $t1, -2876($fp)
	li $t2, 0
	bne $t1, $t2, label1361
	j label1362
label1361:
	li $t0, 1
	sw $t0, -2868($fp)
label1362:
	li $t0, 4
	lw $t1, -2868($fp)
	mul $t0, $t0, $t1
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	lw $t1, -2864($fp)
	add $t0, $t0, $t1
	sw $t0, -2884($fp)
	lw $t0, -2884($fp)
	lw $t1, 0($t0)
	sw $t1, -2888($fp)
	lw $t1, -2888($fp)
	li $t2, 0
	bne $t1, $t2, label1360
	j label1359
label1359:
	li $t0, 1
	sw $t0, -2860($fp)
label1360:
	li $t0, 57681
	sw $t0, -2892($fp)
	li $t0, 32353
	sw $t0, -2896($fp)
	lw $t0, -2892($fp)
	lw $t1, -2896($fp)
	mul $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $t1, -2860($fp)
	lw $t2, -2900($fp)
	bge $t1, $t2, label1357
	j label1358
label1357:
	jal f8
	sw $v0, -2904($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -2908($fp)
	li $t0, 36387
	sw $t0, -2912($fp)
	li $t0, 62100
	sw $t0, -2916($fp)
	lw $t1, -2912($fp)
	lw $t2, -2916($fp)
	beq $t1, $t2, label1364
	j label1366
label1366:
	lw $t0, -732($fp)
	sw $t0, -2920($fp)
	lw $t1, -2920($fp)
	li $t2, 0
	bne $t1, $t2, label1364
	j label1365
label1364:
	li $t0, 1
	sw $t0, -2908($fp)
label1365:
	lw $t0, -720($fp)
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	sw $t0, -2928($fp)
	li $t0, 10086
	sw $t0, -2932($fp)
	li $t0, 43927
	sw $t0, -2936($fp)
	lw $t0, -2932($fp)
	lw $t1, -2936($fp)
	mul $t0, $t0, $t1
	sw $t0, -2940($fp)
	lw $t0, -1020($fp)
	sw $t0, -2944($fp)
	lw $t0, -2940($fp)
	lw $t1, -2944($fp)
	sub $t0, $t0, $t1
	sw $t0, -2948($fp)
	li $t0, 62241
	sw $t0, -2952($fp)
	li $t0, 0
	lw $t1, -2952($fp)
	sub $t0, $t0, $t1
	sw $t0, -2956($fp)
	li $t0, 0
	lw $t1, -2956($fp)
	sub $t0, $t0, $t1
	sw $t0, -2960($fp)
	li $t0, 0
	sw $t0, -2964($fp)
	lw $t0, -1080($fp)
	sw $t0, -2968($fp)
	lw $t0, -324($fp)
	sw $t0, -2972($fp)
	lw $t1, -2968($fp)
	lw $t2, -2972($fp)
	ble $t1, $t2, label1369
	j label1368
label1369:
	li $t0, 42897
	sw $t0, -2976($fp)
	lw $t1, -2976($fp)
	li $t2, 0
	bne $t1, $t2, label1367
	j label1368
label1367:
	li $t0, 1
	sw $t0, -2964($fp)
label1368:
	addi $sp, $sp, -4
	lw $t0, -2908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2964($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2980($fp)
	addi $sp, $sp, 24
	lw $t0, -2904($fp)
	lw $t1, -2980($fp)
	mul $t0, $t0, $t1
	sw $t0, -2984($fp)
	li $t0, 0
	lw $t1, -2984($fp)
	sub $t0, $t0, $t1
	sw $t0, -2988($fp)
	j label1356
label1358:
label1275:
	j label1272
label1271:
	li $t0, 0
	sw $t0, -2992($fp)
	lw $t0, -1092($fp)
	sw $t0, -2996($fp)
	lw $t1, -2996($fp)
	li $t2, 0
	bne $t1, $t2, label1371
	j label1370
label1370:
	li $t0, 1
	sw $t0, -2992($fp)
label1371:
	lw $ra, -4($fp)
	lw $v0, -2992($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label1272:
	lw $t0, -156($fp)
	sw $t0, -3000($fp)
	lw $t0, -3000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -3004($fp)
	lw $t0, -3004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -3008($fp)
	lw $t0, -3008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -3016($fp)
	lw $t0, -3016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -3020($fp)
	li $t0, 0
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
	addi $t0, $fp, -12
	sw $t0, -3040($fp)
	li $t0, 1
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
	lw $t0, -264($fp)
	sw $t0, -3060($fp)
	lw $t0, -3060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -276($fp)
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -300($fp)
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -312($fp)
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -336($fp)
	sw $t0, -3084($fp)
	lw $t0, -3084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -3088($fp)
	li $t0, 0
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
	lw $t0, -3104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -3108($fp)
	li $t0, 1
	sw $t0, -3112($fp)
	li $t0, 4
	lw $t1, -3112($fp)
	mul $t0, $t0, $t1
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	lw $t1, -3108($fp)
	add $t0, $t0, $t1
	sw $t0, -3120($fp)
	lw $t0, -3120($fp)
	lw $t1, 0($t0)
	sw $t1, -3124($fp)
	lw $t0, -3124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -3128($fp)
	li $t0, 2
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
	lw $t0, -3144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -3148($fp)
	li $t0, 3
	sw $t0, -3152($fp)
	li $t0, 4
	lw $t1, -3152($fp)
	mul $t0, $t0, $t1
	sw $t0, -3156($fp)
	lw $t0, -3156($fp)
	lw $t1, -3148($fp)
	add $t0, $t0, $t1
	sw $t0, -3160($fp)
	lw $t0, -3160($fp)
	lw $t1, 0($t0)
	sw $t1, -3164($fp)
	lw $t0, -3164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -3168($fp)
	li $t0, 4
	sw $t0, -3172($fp)
	li $t0, 4
	lw $t1, -3172($fp)
	mul $t0, $t0, $t1
	sw $t0, -3176($fp)
	lw $t0, -3176($fp)
	lw $t1, -3168($fp)
	add $t0, $t0, $t1
	sw $t0, -3180($fp)
	lw $t0, -3180($fp)
	lw $t1, 0($t0)
	sw $t1, -3184($fp)
	lw $t0, -3184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -3188($fp)
	li $t0, 5
	sw $t0, -3192($fp)
	li $t0, 4
	lw $t1, -3192($fp)
	mul $t0, $t0, $t1
	sw $t0, -3196($fp)
	lw $t0, -3196($fp)
	lw $t1, -3188($fp)
	add $t0, $t0, $t1
	sw $t0, -3200($fp)
	lw $t0, -3200($fp)
	lw $t1, 0($t0)
	sw $t1, -3204($fp)
	lw $t0, -3204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -3208($fp)
	lw $t0, -3208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -3212($fp)
	lw $t0, -3212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -3216($fp)
	lw $t0, -3216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -3220($fp)
	lw $t0, -3220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
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
	lw $t0, -3240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -3244($fp)
	li $t0, 1
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
	addi $t0, $fp, -64
	sw $t0, -3264($fp)
	li $t0, 2
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
	addi $t0, $fp, -64
	sw $t0, -3284($fp)
	li $t0, 3
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
	addi $t0, $fp, -64
	sw $t0, -3304($fp)
	li $t0, 4
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
	addi $t0, $fp, -64
	sw $t0, -3324($fp)
	li $t0, 5
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
	addi $t0, $fp, -64
	sw $t0, -3344($fp)
	li $t0, 6
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
	lw $t0, -708($fp)
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -720($fp)
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -732($fp)
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -3376($fp)
	li $t0, 0
	sw $t0, -3380($fp)
	li $t0, 4
	lw $t1, -3380($fp)
	mul $t0, $t0, $t1
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	lw $t1, -3376($fp)
	add $t0, $t0, $t1
	sw $t0, -3388($fp)
	lw $t0, -3388($fp)
	lw $t1, 0($t0)
	sw $t1, -3392($fp)
	lw $t0, -3392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -3396($fp)
	li $t0, 1
	sw $t0, -3400($fp)
	li $t0, 4
	lw $t1, -3400($fp)
	mul $t0, $t0, $t1
	sw $t0, -3404($fp)
	lw $t0, -3404($fp)
	lw $t1, -3396($fp)
	add $t0, $t0, $t1
	sw $t0, -3408($fp)
	lw $t0, -3408($fp)
	lw $t1, 0($t0)
	sw $t1, -3412($fp)
	lw $t0, -3412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -792($fp)
	sw $t0, -3416($fp)
	lw $t0, -3416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -3420($fp)
	li $t0, 0
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
	addi $t0, $fp, -108
	sw $t0, -3440($fp)
	li $t0, 1
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
	addi $t0, $fp, -108
	sw $t0, -3460($fp)
	li $t0, 2
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
	addi $t0, $fp, -108
	sw $t0, -3480($fp)
	li $t0, 3
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
	addi $t0, $fp, -108
	sw $t0, -3500($fp)
	li $t0, 4
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
	addi $t0, $fp, -108
	sw $t0, -3520($fp)
	li $t0, 5
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
	addi $t0, $fp, -108
	sw $t0, -3540($fp)
	li $t0, 6
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
	addi $t0, $fp, -108
	sw $t0, -3560($fp)
	li $t0, 7
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
	addi $t0, $fp, -108
	sw $t0, -3580($fp)
	li $t0, 8
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
	lw $t0, -1020($fp)
	sw $t0, -3600($fp)
	lw $t0, -3600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1032($fp)
	sw $t0, -3604($fp)
	lw $t0, -3604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1044($fp)
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1056($fp)
	sw $t0, -3612($fp)
	lw $t0, -3612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1068($fp)
	sw $t0, -3616($fp)
	lw $t0, -3616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1080($fp)
	sw $t0, -3620($fp)
	lw $t0, -3620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1092($fp)
	sw $t0, -3624($fp)
	lw $t0, -3624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1104($fp)
	sw $t0, -3628($fp)
	lw $t0, -3628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1116($fp)
	sw $t0, -3632($fp)
	lw $t0, -3632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1128($fp)
	sw $t0, -3636($fp)
	lw $t0, -3636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1140($fp)
	sw $t0, -3640($fp)
	lw $t0, -3640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1152($fp)
	sw $t0, -3644($fp)
	lw $t0, -3644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1164($fp)
	sw $t0, -3648($fp)
	lw $t0, -3648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1176($fp)
	sw $t0, -3652($fp)
	lw $t0, -3652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -3656($fp)
	li $t0, 0
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
	addi $t0, $fp, -148
	sw $t0, -3676($fp)
	li $t0, 1
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
	addi $t0, $fp, -148
	sw $t0, -3696($fp)
	li $t0, 2
	sw $t0, -3700($fp)
	li $t0, 4
	lw $t1, -3700($fp)
	mul $t0, $t0, $t1
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	lw $t1, -3696($fp)
	add $t0, $t0, $t1
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	lw $t1, 0($t0)
	sw $t1, -3712($fp)
	lw $t0, -3712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -3716($fp)
	li $t0, 3
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
	lw $t0, -3732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -3736($fp)
	li $t0, 4
	sw $t0, -3740($fp)
	li $t0, 4
	lw $t1, -3740($fp)
	mul $t0, $t0, $t1
	sw $t0, -3744($fp)
	lw $t0, -3744($fp)
	lw $t1, -3736($fp)
	add $t0, $t0, $t1
	sw $t0, -3748($fp)
	lw $t0, -3748($fp)
	lw $t1, 0($t0)
	sw $t1, -3752($fp)
	lw $t0, -3752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -3756($fp)
	li $t0, 5
	sw $t0, -3760($fp)
	li $t0, 4
	lw $t1, -3760($fp)
	mul $t0, $t0, $t1
	sw $t0, -3764($fp)
	lw $t0, -3764($fp)
	lw $t1, -3756($fp)
	add $t0, $t0, $t1
	sw $t0, -3768($fp)
	lw $t0, -3768($fp)
	lw $t1, 0($t0)
	sw $t1, -3772($fp)
	lw $t0, -3772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -3776($fp)
	li $t0, 6
	sw $t0, -3780($fp)
	li $t0, 4
	lw $t1, -3780($fp)
	mul $t0, $t0, $t1
	sw $t0, -3784($fp)
	lw $t0, -3784($fp)
	lw $t1, -3776($fp)
	add $t0, $t0, $t1
	sw $t0, -3788($fp)
	lw $t0, -3788($fp)
	lw $t1, 0($t0)
	sw $t1, -3792($fp)
	lw $t0, -3792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -3796($fp)
	li $t0, 7
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
	lw $t0, -3812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -3816($fp)
	li $t0, 8
	sw $t0, -3820($fp)
	li $t0, 4
	lw $t1, -3820($fp)
	mul $t0, $t0, $t1
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	lw $t1, -3816($fp)
	add $t0, $t0, $t1
	sw $t0, -3828($fp)
	lw $t0, -3828($fp)
	lw $t1, 0($t0)
	sw $t1, -3832($fp)
	lw $t0, -3832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -3836($fp)
	li $t0, 9
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
	lw $t0, -1428($fp)
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1440($fp)
	sw $t0, -3860($fp)
	lw $t0, -3860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1452($fp)
	sw $t0, -3864($fp)
	lw $t0, -3864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1464($fp)
	sw $t0, -3868($fp)
	lw $t0, -3868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3872($fp)
	li $t0, 0
	sw $t0, -3876($fp)
	lw $t0, -192($fp)
	sw $t0, -3880($fp)
	li $t0, 2718
	sw $t0, -3884($fp)
	lw $t1, -3880($fp)
	lw $t2, -3884($fp)
	bgt $t1, $t2, label1374
	j label1375
label1374:
	li $t0, 1
	sw $t0, -3876($fp)
label1375:
	lw $t0, -1428($fp)
	sw $t0, -3888($fp)
	lw $t1, -3876($fp)
	lw $t2, -3888($fp)
	ble $t1, $t2, label1372
	j label1373
label1372:
	li $t0, 1
	sw $t0, -3872($fp)
label1373:
	li $t0, 0
	sw $t0, -3892($fp)
	li $t0, 10049
	sw $t0, -3896($fp)
	li $t0, 45941
	sw $t0, -3900($fp)
	lw $t1, -3896($fp)
	lw $t2, -3900($fp)
	ble $t1, $t2, label1376
	j label1378
label1378:
	li $t0, 64114
	sw $t0, -3904($fp)
	lw $t1, -3904($fp)
	li $t2, 0
	bne $t1, $t2, label1376
	j label1377
label1376:
	li $t0, 1
	sw $t0, -3892($fp)
label1377:
	li $t0, 0
	sw $t0, -3908($fp)
	li $t0, 12996
	sw $t0, -3912($fp)
	lw $t0, -1176($fp)
	sw $t0, -3916($fp)
	lw $t0, -3912($fp)
	lw $t1, -3916($fp)
	add $t0, $t0, $t1
	sw $t0, -3920($fp)
	lw $t0, -1128($fp)
	sw $t0, -3924($fp)
	lw $t1, -3920($fp)
	lw $t2, -3924($fp)
	beq $t1, $t2, label1379
	j label1380
label1379:
	li $t0, 1
	sw $t0, -3908($fp)
label1380:
	li $t0, 0
	sw $t0, -3928($fp)
	li $t0, 0
	sw $t0, -3932($fp)
	lw $t0, -1104($fp)
	sw $t0, -3936($fp)
	lw $t0, -180($fp)
	sw $t0, -3940($fp)
	lw $t1, -3936($fp)
	lw $t2, -3940($fp)
	ble $t1, $t2, label1383
	j label1384
label1383:
	li $t0, 1
	sw $t0, -3932($fp)
label1384:
	li $t0, 30913
	sw $t0, -3944($fp)
	lw $t1, -3932($fp)
	lw $t2, -3944($fp)
	bne $t1, $t2, label1381
	j label1382
label1381:
	li $t0, 1
	sw $t0, -3928($fp)
label1382:
	li $t0, 14973
	sw $t0, -3948($fp)
	lw $t0, -156($fp)
	sw $t0, -3952($fp)
	lw $t0, -3948($fp)
	lw $t1, -3952($fp)
	mul $t0, $t0, $t1
	sw $t0, -3956($fp)
	li $t0, 0
	lw $t1, -3956($fp)
	sub $t0, $t0, $t1
	sw $t0, -3960($fp)
	addi $sp, $sp, -4
	lw $t0, -3872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3892($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3960($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3964($fp)
	addi $sp, $sp, 24
	lw $ra, -4($fp)
	lw $v0, -3964($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 48892
	sw $t0, -3968($fp)
	lw $t0, -3968($fp)
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	sw $t0, -3976($fp)
	li $t0, 52111
	sw $t0, -3980($fp)
	lw $t0, -3980($fp)
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	sw $t0, -3988($fp)
	li $t0, 29301
	sw $t0, -3992($fp)
	lw $t0, -3992($fp)
	sw $t0, -3996($fp)
	lw $t0, -3996($fp)
	sw $t0, -4000($fp)
	lw $t0, -3972($fp)
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3984($fp)
	sw $t0, -4008($fp)
	lw $t0, -4008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3996($fp)
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4016($fp)
	li $t0, 0
	sw $t0, -4020($fp)
	li $t0, 0
	sw $t0, -4024($fp)
	li $t0, 0
	sw $t0, -4028($fp)
	li $t0, 33311
	sw $t0, -4032($fp)
	li $t0, 7960
	sw $t0, -4036($fp)
	lw $t1, -4032($fp)
	lw $t2, -4036($fp)
	beq $t1, $t2, label1391
	j label1392
label1391:
	li $t0, 1
	sw $t0, -4028($fp)
label1392:
	li $t0, 107
	sw $t0, -4040($fp)
	lw $t1, -4028($fp)
	lw $t2, -4040($fp)
	beq $t1, $t2, label1389
	j label1390
label1389:
	li $t0, 1
	sw $t0, -4024($fp)
label1390:
	lw $t0, -3984($fp)
	sw $t0, -4044($fp)
	lw $t1, -4024($fp)
	lw $t2, -4044($fp)
	beq $t1, $t2, label1387
	j label1388
label1387:
	li $t0, 1
	sw $t0, -4020($fp)
label1388:
	lw $t0, -1428($fp)
	sw $t0, -4048($fp)
	lw $t0, -276($fp)
	sw $t0, -4052($fp)
	lw $t0, -4048($fp)
	lw $t1, -4052($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4056($fp)
	li $t0, 0
	sw $t0, -4060($fp)
	lw $t0, -3996($fp)
	sw $t0, -4064($fp)
	lw $t1, -4064($fp)
	li $t2, 0
	bne $t1, $t2, label1394
	j label1393
label1393:
	li $t0, 1
	sw $t0, -4060($fp)
label1394:
	lw $t0, -4056($fp)
	lw $t1, -4060($fp)
	sub $t0, $t0, $t1
	sw $t0, -4068($fp)
	lw $t1, -4020($fp)
	lw $t2, -4068($fp)
	beq $t1, $t2, label1385
	j label1386
label1385:
	li $t0, 1
	sw $t0, -4016($fp)
label1386:
	lw $ra, -4($fp)
	lw $v0, -4016($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 4638
	sw $t0, -4072($fp)
	lw $t0, -4072($fp)
	sw $t0, -4076($fp)
	lw $t0, -4076($fp)
	sw $t0, -4080($fp)
	li $t0, 0
	sw $t0, -4084($fp)
	li $t0, 15373
	sw $t0, -4088($fp)
	lw $t0, -3996($fp)
	sw $t0, -4092($fp)
	lw $t1, -4088($fp)
	lw $t2, -4092($fp)
	bgt $t1, $t2, label1400
	j label1401
label1400:
	li $t0, 1
	sw $t0, -4084($fp)
label1401:
	li $t0, 63205
	sw $t0, -4096($fp)
	lw $t0, -4096($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -4100($fp)
	li $t0, 0
	sw $t0, -4104($fp)
	li $t0, 37281
	sw $t0, -4108($fp)
	li $t0, 0
	lw $t1, -4108($fp)
	sub $t0, $t0, $t1
	sw $t0, -4112($fp)
	li $t0, 64070
	sw $t0, -4116($fp)
	lw $t1, -4112($fp)
	lw $t2, -4116($fp)
	beq $t1, $t2, label1402
	j label1403
label1402:
	li $t0, 1
	sw $t0, -4104($fp)
label1403:
	li $t0, 0
	sw $t0, -4120($fp)
	li $t0, 50872
	sw $t0, -4124($fp)
	lw $t0, -1020($fp)
	sw $t0, -4128($fp)
	lw $t1, -4124($fp)
	lw $t2, -4128($fp)
	bne $t1, $t2, label1406
	j label1405
label1406:
	lw $t0, -708($fp)
	sw $t0, -4132($fp)
	lw $t1, -4132($fp)
	li $t2, 0
	bne $t1, $t2, label1404
	j label1405
label1404:
	li $t0, 1
	sw $t0, -4120($fp)
label1405:
	li $t0, 0
	sw $t0, -4136($fp)
	li $t0, 0
	sw $t0, -4140($fp)
	li $t0, 8833
	sw $t0, -4144($fp)
	lw $t0, -708($fp)
	sw $t0, -4148($fp)
	lw $t1, -4144($fp)
	lw $t2, -4148($fp)
	bgt $t1, $t2, label1409
	j label1410
label1409:
	li $t0, 1
	sw $t0, -4140($fp)
label1410:
	li $t0, 16799
	sw $t0, -4152($fp)
	lw $t1, -4140($fp)
	lw $t2, -4152($fp)
	bgt $t1, $t2, label1407
	j label1408
label1407:
	li $t0, 1
	sw $t0, -4136($fp)
label1408:
	li $t0, 11987
	sw $t0, -4156($fp)
	lw $t0, -4156($fp)
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -4160($fp)
	addi $sp, $sp, -4
	lw $t0, -4100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4160($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4164($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -4084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4164($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4168($fp)
	addi $sp, $sp, 12
	lw $t1, -4168($fp)
	li $t2, 0
	bne $t1, $t2, label1399
	j label1398
label1399:
	addi $t0, $fp, -12
	sw $t0, -4172($fp)
	li $t0, 0
	sw $t0, -4176($fp)
	li $t0, 4
	lw $t1, -4176($fp)
	mul $t0, $t0, $t1
	sw $t0, -4180($fp)
	lw $t0, -4180($fp)
	lw $t1, -4172($fp)
	add $t0, $t0, $t1
	sw $t0, -4184($fp)
	lw $t0, -4184($fp)
	lw $t1, 0($t0)
	sw $t1, -4188($fp)
	lw $t0, -276($fp)
	sw $t0, -4192($fp)
	lw $t0, -4188($fp)
	lw $t1, -4192($fp)
	mul $t0, $t0, $t1
	sw $t0, -4196($fp)
	lw $t1, -4196($fp)
	li $t2, 0
	bne $t1, $t2, label1395
	j label1398
label1398:
	addi $t0, $fp, -64
	sw $t0, -4200($fp)
	li $t0, 5
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
	lw $t1, -4216($fp)
	li $t2, 0
	bne $t1, $t2, label1396
	j label1395
label1395:
label1411:
	li $t0, 57812
	sw $t0, -4220($fp)
	li $t0, 0
	sw $t0, -4224($fp)
	li $t0, 0
	sw $t0, -4228($fp)
	lw $t0, -792($fp)
	sw $t0, -4232($fp)
	li $t0, 52056
	sw $t0, -4236($fp)
	lw $t1, -4232($fp)
	lw $t2, -4236($fp)
	ble $t1, $t2, label1416
	j label1417
label1416:
	li $t0, 1
	sw $t0, -4228($fp)
label1417:
	lw $t0, -1428($fp)
	sw $t0, -4240($fp)
	lw $t1, -4228($fp)
	lw $t2, -4240($fp)
	bgt $t1, $t2, label1414
	j label1415
label1414:
	li $t0, 1
	sw $t0, -4224($fp)
label1415:
	addi $sp, $sp, -4
	lw $t0, -4220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4224($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4244($fp)
	addi $sp, $sp, 12
	lw $t0, -3996($fp)
	sw $t0, -4248($fp)
	li $t0, 0
	lw $t1, -4248($fp)
	sub $t0, $t0, $t1
	sw $t0, -4252($fp)
	lw $t0, -4244($fp)
	lw $t1, -4252($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4256($fp)
	lw $t1, -4256($fp)
	li $t2, 0
	bne $t1, $t2, label1412
	j label1413
label1412:
	li $t0, 0
	sw $t0, -4260($fp)
	li $t0, 0
	sw $t0, -4264($fp)
	li $t0, 0
	sw $t0, -4268($fp)
	li $t0, 0
	sw $t0, -4272($fp)
	li $t0, 0
	sw $t0, -4276($fp)
	li $t0, 43876
	sw $t0, -4280($fp)
	lw $t1, -4280($fp)
	li $t2, 0
	bne $t1, $t2, label1427
	j label1426
label1426:
	li $t0, 1
	sw $t0, -4276($fp)
label1427:
	li $t0, 22907
	sw $t0, -4284($fp)
	lw $t1, -4276($fp)
	lw $t2, -4284($fp)
	ble $t1, $t2, label1424
	j label1425
label1424:
	li $t0, 1
	sw $t0, -4272($fp)
label1425:
	lw $t0, -1056($fp)
	sw $t0, -4288($fp)
	lw $t1, -4272($fp)
	lw $t2, -4288($fp)
	bgt $t1, $t2, label1422
	j label1423
label1422:
	li $t0, 1
	sw $t0, -4268($fp)
label1423:
	addi $t0, $fp, -108
	sw $t0, -4292($fp)
	lw $t0, -180($fp)
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
	lw $t1, -4268($fp)
	lw $t2, -4308($fp)
	bge $t1, $t2, label1420
	j label1421
label1420:
	li $t0, 1
	sw $t0, -4264($fp)
label1421:
	lw $t0, -3972($fp)
	sw $t0, -4312($fp)
	lw $t1, -4264($fp)
	lw $t2, -4312($fp)
	bne $t1, $t2, label1418
	j label1419
label1418:
	li $t0, 1
	sw $t0, -4260($fp)
label1419:
	li $t0, 0
	sw $t0, -4316($fp)
	addi $t0, $fp, -72
	sw $t0, -4320($fp)
	lw $t0, -1452($fp)
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
	li $t0, 54377
	sw $t0, -4340($fp)
	lw $t0, -4336($fp)
	lw $t1, -4340($fp)
	mul $t0, $t0, $t1
	sw $t0, -4344($fp)
	addi $t0, $fp, -64
	sw $t0, -4348($fp)
	li $t0, 6
	sw $t0, -4352($fp)
	li $t0, 4
	lw $t1, -4352($fp)
	mul $t0, $t0, $t1
	sw $t0, -4356($fp)
	lw $t0, -4356($fp)
	lw $t1, -4348($fp)
	add $t0, $t0, $t1
	sw $t0, -4360($fp)
	lw $t0, -4360($fp)
	lw $t1, 0($t0)
	sw $t1, -4364($fp)
	lw $t0, -4344($fp)
	lw $t1, -4364($fp)
	sub $t0, $t0, $t1
	sw $t0, -4368($fp)
	li $t0, 0
	sw $t0, -4372($fp)
	li $t0, 0
	sw $t0, -4376($fp)
	lw $t0, -492($fp)
	sw $t0, -4380($fp)
	lw $t1, -4380($fp)
	li $t2, 0
	bne $t1, $t2, label1432
	j label1433
label1432:
	li $t0, 1
	sw $t0, -4376($fp)
label1433:
	li $t0, 1837
	sw $t0, -4384($fp)
	lw $t1, -4376($fp)
	lw $t2, -4384($fp)
	blt $t1, $t2, label1430
	j label1431
label1430:
	li $t0, 1
	sw $t0, -4372($fp)
label1431:
	lw $t1, -4368($fp)
	lw $t2, -4372($fp)
	beq $t1, $t2, label1428
	j label1429
label1428:
	li $t0, 1
	sw $t0, -4316($fp)
label1429:
	j label1411
label1413:
	j label1397
label1396:
	li $t0, 0
	sw $t0, -4388($fp)
	li $t0, 3362
	sw $t0, -4392($fp)
	li $t0, 0
	sw $t0, -4396($fp)
	lw $t0, -276($fp)
	sw $t0, -4400($fp)
	lw $t0, -1056($fp)
	sw $t0, -4404($fp)
	lw $t1, -4400($fp)
	lw $t2, -4404($fp)
	ble $t1, $t2, label1436
	j label1437
label1436:
	li $t0, 1
	sw $t0, -4396($fp)
label1437:
	jal f8
	sw $v0, -4408($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -148
	sw $t0, -4412($fp)
	lw $t0, -180($fp)
	sw $t0, -4416($fp)
	li $t0, 4
	lw $t1, -4416($fp)
	mul $t0, $t0, $t1
	sw $t0, -4420($fp)
	lw $t0, -4420($fp)
	lw $t1, -4412($fp)
	add $t0, $t0, $t1
	sw $t0, -4424($fp)
	lw $t0, -4424($fp)
	lw $t1, 0($t0)
	sw $t1, -4428($fp)
	li $t0, 0
	sw $t0, -4432($fp)
	li $t0, 415
	sw $t0, -4436($fp)
	lw $t0, -528($fp)
	sw $t0, -4440($fp)
	lw $t1, -4436($fp)
	lw $t2, -4440($fp)
	bgt $t1, $t2, label1438
	j label1440
label1440:
	li $t0, 6081
	sw $t0, -4444($fp)
	lw $t1, -4444($fp)
	li $t2, 0
	bne $t1, $t2, label1438
	j label1439
label1438:
	li $t0, 1
	sw $t0, -4432($fp)
label1439:
	li $t0, 0
	sw $t0, -4448($fp)
	li $t0, 34225
	sw $t0, -4452($fp)
	lw $t1, -4452($fp)
	li $t2, 0
	bne $t1, $t2, label1442
	j label1441
label1441:
	li $t0, 1
	sw $t0, -4448($fp)
label1442:
	lw $t0, -1164($fp)
	sw $t0, -4456($fp)
	lw $t0, -4448($fp)
	lw $t1, -4456($fp)
	mul $t0, $t0, $t1
	sw $t0, -4460($fp)
	addi $sp, $sp, -4
	lw $t0, -4396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4460($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4464($fp)
	addi $sp, $sp, 24
	lw $t0, -4392($fp)
	lw $t1, -4464($fp)
	mul $t0, $t0, $t1
	sw $t0, -4468($fp)
	li $t0, 0
	sw $t0, -4472($fp)
	lw $t0, -792($fp)
	sw $t0, -4476($fp)
	lw $t0, -504($fp)
	sw $t0, -4480($fp)
	lw $t1, -4476($fp)
	lw $t2, -4480($fp)
	beq $t1, $t2, label1443
	j label1445
label1445:
	lw $t0, -1080($fp)
	sw $t0, -4484($fp)
	lw $t1, -4484($fp)
	li $t2, 0
	bne $t1, $t2, label1443
	j label1444
label1443:
	li $t0, 1
	sw $t0, -4472($fp)
label1444:
	li $t0, 35382
	sw $t0, -4488($fp)
	li $t0, 50893
	sw $t0, -4492($fp)
	lw $t0, -4488($fp)
	lw $t1, -4492($fp)
	mul $t0, $t0, $t1
	sw $t0, -4496($fp)
	lw $t0, -1116($fp)
	sw $t0, -4500($fp)
	lw $t0, -4496($fp)
	lw $t1, -4500($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4504($fp)
	li $t0, 52526
	sw $t0, -4508($fp)
	li $t0, 0
	lw $t1, -4508($fp)
	sub $t0, $t0, $t1
	sw $t0, -4512($fp)
	li $t0, 0
	sw $t0, -4516($fp)
	lw $t0, -3996($fp)
	sw $t0, -4520($fp)
	lw $t1, -4520($fp)
	li $t2, 0
	bne $t1, $t2, label1449
	j label1447
label1449:
	lw $t0, -4076($fp)
	sw $t0, -4524($fp)
	lw $t1, -4524($fp)
	li $t2, 0
	bne $t1, $t2, label1448
	j label1447
label1448:
	li $t0, 17581
	sw $t0, -4528($fp)
	lw $t1, -4528($fp)
	li $t2, 0
	bne $t1, $t2, label1446
	j label1447
label1446:
	li $t0, 1
	sw $t0, -4516($fp)
label1447:
	lw $t0, -3996($fp)
	sw $t0, -4532($fp)
	li $t0, 0
	lw $t1, -4532($fp)
	sub $t0, $t0, $t1
	sw $t0, -4536($fp)
	li $t0, 0
	lw $t1, -4536($fp)
	sub $t0, $t0, $t1
	sw $t0, -4540($fp)
	addi $sp, $sp, -4
	lw $t0, -4472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4540($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4544($fp)
	addi $sp, $sp, 24
	lw $t1, -4468($fp)
	lw $t2, -4544($fp)
	bgt $t1, $t2, label1434
	j label1435
label1434:
	li $t0, 1
	sw $t0, -4388($fp)
label1435:
	lw $ra, -4($fp)
	lw $v0, -4388($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label1397:
	li $t0, 60486
	sw $t0, -4548($fp)
	lw $t0, -4548($fp)
	sw $t0, -4552($fp)
	lw $t0, -4552($fp)
	sw $t0, -4556($fp)
	li $t0, 35489
	sw $t0, -4560($fp)
	lw $t0, -4560($fp)
	sw $t0, -4564($fp)
	lw $t0, -4564($fp)
	sw $t0, -4568($fp)
	li $t0, 0
	sw $t0, -4572($fp)
	addi $t0, $fp, -12
	sw $t0, -4576($fp)
	li $t0, 0
	sw $t0, -4580($fp)
	li $t0, 4
	lw $t1, -4580($fp)
	mul $t0, $t0, $t1
	sw $t0, -4584($fp)
	lw $t0, -4584($fp)
	lw $t1, -4576($fp)
	add $t0, $t0, $t1
	sw $t0, -4588($fp)
	lw $t0, -4588($fp)
	lw $t1, 0($t0)
	sw $t1, -4592($fp)
	lw $t1, -4592($fp)
	li $t2, 0
	bne $t1, $t2, label1450
	j label1452
label1452:
	addi $t0, $fp, -12
	sw $t0, -4596($fp)
	li $t0, 0
	sw $t0, -4600($fp)
	li $t0, 55479
	sw $t0, -4604($fp)
	li $t0, 31440
	sw $t0, -4608($fp)
	lw $t0, -4604($fp)
	lw $t1, -4608($fp)
	sub $t0, $t0, $t1
	sw $t0, -4612($fp)
	lw $t1, -4612($fp)
	li $t2, 0
	bne $t1, $t2, label1453
	j label1455
label1455:
	li $t0, 27916
	sw $t0, -4616($fp)
	lw $t1, -4616($fp)
	li $t2, 0
	bne $t1, $t2, label1453
	j label1454
label1453:
	li $t0, 1
	sw $t0, -4600($fp)
label1454:
	li $t0, 5329
	sw $t0, -4620($fp)
	lw $t0, -1128($fp)
	sw $t0, -4624($fp)
	lw $t0, -4620($fp)
	lw $t1, -4624($fp)
	sub $t0, $t0, $t1
	sw $t0, -4628($fp)
	addi $t0, $fp, -64
	sw $t0, -4632($fp)
	li $t0, 5
	sw $t0, -4636($fp)
	li $t0, 4
	lw $t1, -4636($fp)
	mul $t0, $t0, $t1
	sw $t0, -4640($fp)
	lw $t0, -4640($fp)
	lw $t1, -4632($fp)
	add $t0, $t0, $t1
	sw $t0, -4644($fp)
	lw $t0, -4644($fp)
	lw $t1, 0($t0)
	sw $t1, -4648($fp)
	addi $t0, $fp, -36
	sw $t0, -4652($fp)
	lw $t0, -4564($fp)
	sw $t0, -4656($fp)
	li $t0, 4
	lw $t1, -4656($fp)
	mul $t0, $t0, $t1
	sw $t0, -4660($fp)
	lw $t0, -4660($fp)
	lw $t1, -4652($fp)
	add $t0, $t0, $t1
	sw $t0, -4664($fp)
	lw $t0, -4664($fp)
	lw $t1, 0($t0)
	sw $t1, -4668($fp)
	li $t0, 0
	sw $t0, -4672($fp)
	lw $t0, -276($fp)
	sw $t0, -4676($fp)
	li $t0, 44322
	sw $t0, -4680($fp)
	lw $t0, -4676($fp)
	lw $t1, -4680($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4684($fp)
	li $t0, 6795
	sw $t0, -4688($fp)
	lw $t1, -4684($fp)
	lw $t2, -4688($fp)
	bge $t1, $t2, label1456
	j label1457
label1456:
	li $t0, 1
	sw $t0, -4672($fp)
label1457:
	addi $sp, $sp, -4
	lw $t0, -4600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4672($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4692($fp)
	addi $sp, $sp, 24
	li $t0, 4
	lw $t1, -4692($fp)
	mul $t0, $t0, $t1
	sw $t0, -4696($fp)
	lw $t0, -4696($fp)
	lw $t1, -4596($fp)
	add $t0, $t0, $t1
	sw $t0, -4700($fp)
	lw $t0, -4700($fp)
	lw $t1, 0($t0)
	sw $t1, -4704($fp)
	lw $t1, -4704($fp)
	li $t2, 0
	bne $t1, $t2, label1450
	j label1451
label1450:
	li $t0, 1
	sw $t0, -4572($fp)
label1451:
	lw $t0, -528($fp)
	sw $t0, -4708($fp)
	li $t0, 0
	lw $t1, -4708($fp)
	sub $t0, $t0, $t1
	sw $t0, -4712($fp)
	li $t0, 45294
	sw $t0, -4716($fp)
	li $t0, 0
	lw $t1, -4716($fp)
	sub $t0, $t0, $t1
	sw $t0, -4720($fp)
	li $t0, 0
	lw $t1, -4720($fp)
	sub $t0, $t0, $t1
	sw $t0, -4724($fp)
	jal f8
	sw $v0, -4728($fp)
	addi $sp, $sp, 4
	li $t0, 27865
	sw $t0, -4732($fp)
	lw $t0, -4732($fp)
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -4736($fp)
	li $t0, 13630
	sw $t0, -4740($fp)
	addi $sp, $sp, -4
	lw $t0, -4736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4740($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4744($fp)
	addi $sp, $sp, 12
	lw $t0, -4728($fp)
	lw $t1, -4744($fp)
	sub $t0, $t0, $t1
	sw $t0, -4748($fp)
	li $t0, 0
	sw $t0, -4752($fp)
	li $t0, 0
	sw $t0, -4756($fp)
	li $t0, 54721
	sw $t0, -4760($fp)
	lw $t0, -1164($fp)
	sw $t0, -4764($fp)
	lw $t1, -4760($fp)
	lw $t2, -4764($fp)
	ble $t1, $t2, label1460
	j label1461
label1460:
	li $t0, 1
	sw $t0, -4756($fp)
label1461:
	lw $t0, -1044($fp)
	sw $t0, -4768($fp)
	lw $t1, -4756($fp)
	lw $t2, -4768($fp)
	beq $t1, $t2, label1458
	j label1459
label1458:
	li $t0, 1
	sw $t0, -4752($fp)
label1459:
	li $t0, 6205
	sw $t0, -4772($fp)
	li $t0, 5907
	sw $t0, -4776($fp)
	lw $t0, -4776($fp)
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	sw $t0, -4780($fp)
	li $t0, 31814
	sw $t0, -4784($fp)
	li $t0, 0
	sw $t0, -4788($fp)
	lw $t0, -4552($fp)
	sw $t0, -4792($fp)
	lw $t1, -4792($fp)
	li $t2, 0
	bne $t1, $t2, label1462
	j label1463
label1462:
	li $t0, 1
	sw $t0, -4788($fp)
label1463:
	addi $sp, $sp, -4
	lw $t0, -4752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4788($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4796($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -4796($fp)
	sub $t0, $t0, $t1
	sw $t0, -4800($fp)
	lw $t0, -4748($fp)
	lw $t1, -4800($fp)
	add $t0, $t0, $t1
	sw $t0, -4804($fp)
	li $t0, 0
	sw $t0, -4808($fp)
	addi $t0, $fp, -64
	sw $t0, -4812($fp)
	lw $t0, -3984($fp)
	sw $t0, -4816($fp)
	li $t0, 4
	lw $t1, -4816($fp)
	mul $t0, $t0, $t1
	sw $t0, -4820($fp)
	lw $t0, -4820($fp)
	lw $t1, -4812($fp)
	add $t0, $t0, $t1
	sw $t0, -4824($fp)
	lw $t0, -4824($fp)
	lw $t1, 0($t0)
	sw $t1, -4828($fp)
	li $t0, 0
	sw $t0, -4832($fp)
	lw $t0, -192($fp)
	sw $t0, -4836($fp)
	lw $t1, -4836($fp)
	li $t2, 0
	bne $t1, $t2, label1468
	j label1467
label1467:
	li $t0, 1
	sw $t0, -4832($fp)
label1468:
	lw $t0, -4828($fp)
	lw $t1, -4832($fp)
	mul $t0, $t0, $t1
	sw $t0, -4840($fp)
	addi $t0, $fp, -108
	sw $t0, -4844($fp)
	li $t0, 5
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
	li $t0, 0
	lw $t1, -4860($fp)
	sub $t0, $t0, $t1
	sw $t0, -4864($fp)
	lw $t0, -4840($fp)
	lw $t1, -4864($fp)
	mul $t0, $t0, $t1
	sw $t0, -4868($fp)
	lw $t1, -4868($fp)
	li $t2, 0
	bne $t1, $t2, label1464
	j label1466
label1466:
	lw $t0, -528($fp)
	sw $t0, -4872($fp)
	addi $t0, $fp, -64
	sw $t0, -4876($fp)
	lw $t0, -1020($fp)
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
	lw $t1, -4872($fp)
	lw $t2, -4892($fp)
	bgt $t1, $t2, label1464
	j label1465
label1464:
	li $t0, 1
	sw $t0, -4808($fp)
label1465:
	li $t0, 43006
	sw $t0, -4896($fp)
	lw $t0, -4896($fp)
	sw $t0, -4900($fp)
	lw $t0, -4900($fp)
	sw $t0, -4904($fp)
	li $t0, 62121
	sw $t0, -4908($fp)
	lw $t0, -4908($fp)
	sw $t0, -4912($fp)
	lw $t0, -4912($fp)
	sw $t0, -4916($fp)
	li $t0, 2881
	sw $t0, -4920($fp)
	lw $t0, -4920($fp)
	sw $t0, -4924($fp)
	lw $t0, -4924($fp)
	sw $t0, -4928($fp)
	li $t0, 11695
	sw $t0, -4932($fp)
	lw $t0, -4932($fp)
	sw $t0, -4936($fp)
	lw $t0, -4936($fp)
	sw $t0, -4940($fp)
	li $t0, 62536
	sw $t0, -4944($fp)
	lw $t0, -4944($fp)
	sw $t0, -4948($fp)
	lw $t0, -4948($fp)
	sw $t0, -4952($fp)
	li $t0, 8962
	sw $t0, -4956($fp)
	lw $t0, -4956($fp)
	sw $t0, -4960($fp)
	lw $t0, -4960($fp)
	sw $t0, -4964($fp)
	li $t0, 0
	sw $t0, -4968($fp)
	lw $t0, -4900($fp)
	sw $t0, -4972($fp)
	lw $t1, -4972($fp)
	li $t2, 0
	bne $t1, $t2, label1474
	j label1473
label1474:
	lw $t0, -492($fp)
	sw $t0, -4976($fp)
	lw $t1, -4976($fp)
	li $t2, 0
	bne $t1, $t2, label1472
	j label1473
label1472:
	li $t0, 1
	sw $t0, -4968($fp)
label1473:
	li $t0, 0
	sw $t0, -4980($fp)
	lw $t0, -1020($fp)
	sw $t0, -4984($fp)
	li $t0, 29277
	sw $t0, -4988($fp)
	lw $t0, -4984($fp)
	lw $t1, -4988($fp)
	sub $t0, $t0, $t1
	sw $t0, -4992($fp)
	lw $t1, -4992($fp)
	li $t2, 0
	bne $t1, $t2, label1475
	j label1477
label1477:
	li $t0, 49526
	sw $t0, -4996($fp)
	lw $t1, -4996($fp)
	li $t2, 0
	bne $t1, $t2, label1475
	j label1476
label1475:
	li $t0, 1
	sw $t0, -4980($fp)
label1476:
	addi $sp, $sp, -4
	lw $t0, -4968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4980($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5000($fp)
	addi $sp, $sp, 12
	lw $t1, -5000($fp)
	li $t2, 0
	bne $t1, $t2, label1469
	j label1470
label1469:
	lw $t0, -504($fp)
	sw $t0, -5004($fp)
	li $t0, 0
	sw $t0, -5008($fp)
	lw $t0, -1428($fp)
	sw $t0, -5012($fp)
	lw $t1, -5012($fp)
	li $t2, 0
	bne $t1, $t2, label1479
	j label1478
label1478:
	li $t0, 1
	sw $t0, -5008($fp)
label1479:
	lw $t0, -5004($fp)
	lw $t1, -5008($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5016($fp)
	j label1471
label1470:
	li $t0, 0
	sw $t0, -5020($fp)
	li $t0, 0
	sw $t0, -5024($fp)
	li $t0, 14298
	sw $t0, -5028($fp)
	lw $t0, -1068($fp)
	sw $t0, -5032($fp)
	lw $t0, -5028($fp)
	lw $t1, -5032($fp)
	sub $t0, $t0, $t1
	sw $t0, -5036($fp)
	lw $t0, -528($fp)
	sw $t0, -5040($fp)
	lw $t1, -5036($fp)
	lw $t2, -5040($fp)
	bne $t1, $t2, label1484
	j label1485
label1484:
	li $t0, 1
	sw $t0, -5024($fp)
label1485:
	jal f8
	sw $v0, -5044($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -5048($fp)
	addi $t0, $fp, -64
	sw $t0, -5052($fp)
	lw $t0, -708($fp)
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
	li $t0, 44477
	sw $t0, -5072($fp)
	lw $t1, -5068($fp)
	lw $t2, -5072($fp)
	bne $t1, $t2, label1486
	j label1487
label1486:
	li $t0, 1
	sw $t0, -5048($fp)
label1487:
	li $t0, 0
	sw $t0, -5076($fp)
	li $t0, 44344
	sw $t0, -5080($fp)
	li $t0, 14634
	sw $t0, -5084($fp)
	lw $t0, -5080($fp)
	lw $t1, -5084($fp)
	sub $t0, $t0, $t1
	sw $t0, -5088($fp)
	lw $t1, -5088($fp)
	li $t2, 0
	bne $t1, $t2, label1490
	j label1489
label1490:
	lw $t0, -3972($fp)
	sw $t0, -5092($fp)
	lw $t1, -5092($fp)
	li $t2, 0
	bne $t1, $t2, label1488
	j label1489
label1488:
	li $t0, 1
	sw $t0, -5076($fp)
label1489:
	lw $t0, -1092($fp)
	sw $t0, -5096($fp)
	li $t0, 0
	lw $t1, -5096($fp)
	sub $t0, $t0, $t1
	sw $t0, -5100($fp)
	addi $sp, $sp, -4
	lw $t0, -5024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5100($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5104($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -5104($fp)
	sub $t0, $t0, $t1
	sw $t0, -5108($fp)
	li $t0, 0
	lw $t1, -5108($fp)
	sub $t0, $t0, $t1
	sw $t0, -5112($fp)
	lw $t1, -5112($fp)
	li $t2, 0
	bne $t1, $t2, label1483
	j label1481
label1483:
	li $t0, 4629
	sw $t0, -5116($fp)
	lw $t1, -5116($fp)
	li $t2, 0
	bne $t1, $t2, label1482
	j label1481
label1482:
	lw $t0, -4936($fp)
	sw $t0, -5120($fp)
	lw $t0, -792($fp)
	sw $t0, -5124($fp)
	lw $t0, -5120($fp)
	lw $t1, -5124($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5128($fp)
	li $t0, 33632
	sw $t0, -5132($fp)
	lw $t0, -5128($fp)
	lw $t1, -5132($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5136($fp)
	li $t0, 0
	sw $t0, -5140($fp)
	addi $t0, $fp, -64
	sw $t0, -5144($fp)
	li $t0, 3
	sw $t0, -5148($fp)
	li $t0, 4
	lw $t1, -5148($fp)
	mul $t0, $t0, $t1
	sw $t0, -5152($fp)
	lw $t0, -5152($fp)
	lw $t1, -5144($fp)
	add $t0, $t0, $t1
	sw $t0, -5156($fp)
	lw $t0, -5156($fp)
	lw $t1, 0($t0)
	sw $t1, -5160($fp)
	lw $t1, -5160($fp)
	li $t2, 0
	bne $t1, $t2, label1493
	j label1492
label1493:
	li $t0, 16753
	sw $t0, -5164($fp)
	lw $t1, -5164($fp)
	li $t2, 0
	bne $t1, $t2, label1491
	j label1492
label1491:
	li $t0, 1
	sw $t0, -5140($fp)
label1492:
	li $t0, 11424
	sw $t0, -5168($fp)
	lw $t0, -5168($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -5172($fp)
	li $t0, 0
	sw $t0, -5176($fp)
	li $t0, 51415
	sw $t0, -5180($fp)
	lw $t1, -5180($fp)
	li $t2, 0
	bne $t1, $t2, label1497
	j label1495
label1497:
	li $t0, 58620
	sw $t0, -5184($fp)
	lw $t1, -5184($fp)
	li $t2, 0
	bne $t1, $t2, label1496
	j label1495
label1496:
	lw $t0, -1440($fp)
	sw $t0, -5188($fp)
	lw $t1, -5188($fp)
	li $t2, 0
	bne $t1, $t2, label1494
	j label1495
label1494:
	li $t0, 1
	sw $t0, -5176($fp)
label1495:
	addi $t0, $fp, -64
	sw $t0, -5192($fp)
	lw $t0, -1080($fp)
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
	li $t0, 0
	lw $t1, -5208($fp)
	sub $t0, $t0, $t1
	sw $t0, -5212($fp)
	addi $sp, $sp, -4
	lw $t0, -5136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5212($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5216($fp)
	addi $sp, $sp, 24
	lw $t1, -5216($fp)
	li $t2, 0
	bne $t1, $t2, label1480
	j label1481
label1480:
	li $t0, 1
	sw $t0, -5020($fp)
label1481:
label1471:
label1498:
	jal f8
	sw $v0, -5220($fp)
	addi $sp, $sp, 4
	lw $t0, -1092($fp)
	sw $t0, -5224($fp)
	li $t0, 0
	lw $t1, -5224($fp)
	sub $t0, $t0, $t1
	sw $t0, -5228($fp)
	li $t0, 0
	lw $t1, -5228($fp)
	sub $t0, $t0, $t1
	sw $t0, -5232($fp)
	lw $t0, -5220($fp)
	lw $t1, -5232($fp)
	sub $t0, $t0, $t1
	sw $t0, -5236($fp)
	addi $t0, $fp, -72
	sw $t0, -5240($fp)
	lw $t0, -276($fp)
	sw $t0, -5244($fp)
	lw $t0, -5244($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -5248($fp)
	li $t0, 4
	lw $t1, -5248($fp)
	mul $t0, $t0, $t1
	sw $t0, -5252($fp)
	lw $t0, -5252($fp)
	lw $t1, -5240($fp)
	add $t0, $t0, $t1
	sw $t0, -5256($fp)
	lw $t0, -5256($fp)
	lw $t1, 0($t0)
	sw $t1, -5260($fp)
	lw $t1, -5236($fp)
	lw $t2, -5260($fp)
	ble $t1, $t2, label1499
	j label1500
label1499:
	li $t0, 0
	sw $t0, -5264($fp)
	jal f8
	sw $v0, -5268($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -5272($fp)
	addi $t0, $fp, -72
	sw $t0, -5276($fp)
	lw $t0, -4912($fp)
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
	lw $t1, -5292($fp)
	li $t2, 0
	bne $t1, $t2, label1504
	j label1503
label1503:
	li $t0, 1
	sw $t0, -5272($fp)
label1504:
	lw $t0, -4948($fp)
	sw $t0, -5296($fp)
	li $t0, 40592
	sw $t0, -5300($fp)
	lw $t0, -5296($fp)
	lw $t1, -5300($fp)
	mul $t0, $t0, $t1
	sw $t0, -5304($fp)
	addi $sp, $sp, -4
	lw $t0, -5272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5304($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5308($fp)
	addi $sp, $sp, 12
	lw $t1, -5268($fp)
	lw $t2, -5308($fp)
	ble $t1, $t2, label1501
	j label1502
label1501:
	li $t0, 1
	sw $t0, -5264($fp)
label1502:
	j label1498
label1500:
label1505:
	lw $t0, -4924($fp)
	sw $t0, -5312($fp)
	li $t0, 0
	lw $t1, -5312($fp)
	sub $t0, $t0, $t1
	sw $t0, -5316($fp)
	li $t0, 0
	lw $t1, -5316($fp)
	sub $t0, $t0, $t1
	sw $t0, -5320($fp)
	lw $t0, -5320($fp)
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -5324($fp)
	lw $t1, -5324($fp)
	li $t2, 0
	bne $t1, $t2, label1506
	j label1507
label1506:
	li $t0, 0
	sw $t0, -5328($fp)
	addi $t0, $fp, -72
	sw $t0, -5332($fp)
	li $t0, 0
	sw $t0, -5336($fp)
	lw $t0, -1176($fp)
	sw $t0, -5340($fp)
	lw $t1, -5340($fp)
	li $t2, 0
	bne $t1, $t2, label1512
	j label1511
label1512:
	lw $t0, -4960($fp)
	sw $t0, -5344($fp)
	lw $t1, -5344($fp)
	li $t2, 0
	bne $t1, $t2, label1510
	j label1511
label1510:
	li $t0, 1
	sw $t0, -5336($fp)
label1511:
	li $t0, 4
	lw $t1, -5336($fp)
	mul $t0, $t0, $t1
	sw $t0, -5348($fp)
	lw $t0, -5348($fp)
	lw $t1, -5332($fp)
	add $t0, $t0, $t1
	sw $t0, -5352($fp)
	lw $t0, -5352($fp)
	lw $t1, 0($t0)
	sw $t1, -5356($fp)
	li $t0, 0
	sw $t0, -5360($fp)
	li $t0, 44670
	sw $t0, -5364($fp)
	lw $t1, -5364($fp)
	li $t2, 0
	bne $t1, $t2, label1514
	j label1513
label1513:
	li $t0, 1
	sw $t0, -5360($fp)
label1514:
	li $t0, 0
	lw $t1, -5360($fp)
	sub $t0, $t0, $t1
	sw $t0, -5368($fp)
	li $t0, 13390
	sw $t0, -5372($fp)
	li $t0, 0
	lw $t1, -5372($fp)
	sub $t0, $t0, $t1
	sw $t0, -5376($fp)
	lw $t0, -5368($fp)
	lw $t1, -5376($fp)
	add $t0, $t0, $t1
	sw $t0, -5380($fp)
	lw $t1, -5356($fp)
	lw $t2, -5380($fp)
	bgt $t1, $t2, label1508
	j label1509
label1508:
	li $t0, 1
	sw $t0, -5328($fp)
label1509:
	j label1505
label1507:
label1515:
	li $t0, 54223
	sw $t0, -5384($fp)
	lw $t0, -1080($fp)
	sw $t0, -5388($fp)
	lw $t0, -5384($fp)
	lw $t1, -5388($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5392($fp)
	li $t0, 45205
	sw $t0, -5396($fp)
	lw $t0, -5392($fp)
	lw $t1, -5396($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5400($fp)
	lw $t1, -5400($fp)
	li $t2, 0
	bne $t1, $t2, label1516
	j label1517
label1516:
	lw $t0, -168($fp)
	sw $t0, -5404($fp)
	j label1515
label1517:
	lw $t0, -3972($fp)
	sw $t0, -5408($fp)
	lw $t0, -5408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3984($fp)
	sw $t0, -5412($fp)
	lw $t0, -5412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3996($fp)
	sw $t0, -5416($fp)
	lw $t0, -5416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5420($fp)
	li $t0, 34390
	sw $t0, -5424($fp)
	li $t0, 54878
	sw $t0, -5428($fp)
	lw $t0, -5424($fp)
	lw $t1, -5428($fp)
	sub $t0, $t0, $t1
	sw $t0, -5432($fp)
	li $t0, 12723
	sw $t0, -5436($fp)
	lw $t0, -5432($fp)
	lw $t1, -5436($fp)
	add $t0, $t0, $t1
	sw $t0, -5440($fp)
	addi $t0, $fp, -108
	sw $t0, -5444($fp)
	li $t0, 6
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
	addi $sp, $sp, -4
	lw $t0, -5440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5460($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5464($fp)
	addi $sp, $sp, 12
	lw $t1, -5464($fp)
	li $t2, 0
	bne $t1, $t2, label1518
	j label1519
label1518:
	li $t0, 1
	sw $t0, -5420($fp)
label1519:
	li $t0, 0
	sw $t0, -5468($fp)
	li $t0, 11860
	sw $t0, -5472($fp)
	lw $t1, -5472($fp)
	li $t2, 0
	bne $t1, $t2, label1520
	j label1521
label1520:
	li $t0, 1
	sw $t0, -5468($fp)
label1521:
	lw $t0, -5420($fp)
	lw $t1, -5468($fp)
	sub $t0, $t0, $t1
	sw $t0, -5476($fp)
	lw $ra, -4($fp)
	lw $v0, -5476($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -3972($fp)
	sw $t0, -5480($fp)
	lw $t0, -5480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3984($fp)
	sw $t0, -5484($fp)
	lw $t0, -5484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3996($fp)
	sw $t0, -5488($fp)
	lw $t0, -5488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5492($fp)
	jal f8
	sw $v0, -5496($fp)
	addi $sp, $sp, 4
	lw $t1, -5496($fp)
	li $t2, 0
	bne $t1, $t2, label1523
	j label1522
label1522:
	li $t0, 1
	sw $t0, -5492($fp)
label1523:
	lw $ra, -4($fp)
	lw $v0, -5492($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -156($fp)
	sw $t0, -5500($fp)
	lw $t0, -5500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -5504($fp)
	lw $t0, -5504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -5508($fp)
	lw $t0, -5508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -5512($fp)
	lw $t0, -5512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -5516($fp)
	lw $t0, -5516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -5520($fp)
	li $t0, 0
	sw $t0, -5524($fp)
	li $t0, 4
	lw $t1, -5524($fp)
	mul $t0, $t0, $t1
	sw $t0, -5528($fp)
	lw $t0, -5528($fp)
	lw $t1, -5520($fp)
	add $t0, $t0, $t1
	sw $t0, -5532($fp)
	lw $t0, -5532($fp)
	lw $t1, 0($t0)
	sw $t1, -5536($fp)
	lw $t0, -5536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -5540($fp)
	li $t0, 1
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
	lw $t0, -5556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -264($fp)
	sw $t0, -5560($fp)
	lw $t0, -5560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -276($fp)
	sw $t0, -5564($fp)
	lw $t0, -5564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -5568($fp)
	lw $t0, -5568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -300($fp)
	sw $t0, -5572($fp)
	lw $t0, -5572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -312($fp)
	sw $t0, -5576($fp)
	lw $t0, -5576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -5580($fp)
	lw $t0, -5580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -336($fp)
	sw $t0, -5584($fp)
	lw $t0, -5584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5588($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -5608($fp)
	li $t0, 1
	sw $t0, -5612($fp)
	li $t0, 4
	lw $t1, -5612($fp)
	mul $t0, $t0, $t1
	sw $t0, -5616($fp)
	lw $t0, -5616($fp)
	lw $t1, -5608($fp)
	add $t0, $t0, $t1
	sw $t0, -5620($fp)
	lw $t0, -5620($fp)
	lw $t1, 0($t0)
	sw $t1, -5624($fp)
	lw $t0, -5624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5628($fp)
	li $t0, 2
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
	lw $t0, -5644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5648($fp)
	li $t0, 3
	sw $t0, -5652($fp)
	li $t0, 4
	lw $t1, -5652($fp)
	mul $t0, $t0, $t1
	sw $t0, -5656($fp)
	lw $t0, -5656($fp)
	lw $t1, -5648($fp)
	add $t0, $t0, $t1
	sw $t0, -5660($fp)
	lw $t0, -5660($fp)
	lw $t1, 0($t0)
	sw $t1, -5664($fp)
	lw $t0, -5664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5668($fp)
	li $t0, 4
	sw $t0, -5672($fp)
	li $t0, 4
	lw $t1, -5672($fp)
	mul $t0, $t0, $t1
	sw $t0, -5676($fp)
	lw $t0, -5676($fp)
	lw $t1, -5668($fp)
	add $t0, $t0, $t1
	sw $t0, -5680($fp)
	lw $t0, -5680($fp)
	lw $t1, 0($t0)
	sw $t1, -5684($fp)
	lw $t0, -5684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -5688($fp)
	li $t0, 5
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
	lw $t0, -5704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -5708($fp)
	lw $t0, -5708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -5712($fp)
	lw $t0, -5712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -5716($fp)
	lw $t0, -5716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -5720($fp)
	lw $t0, -5720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	addi $t0, $fp, -64
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
	lw $t0, -708($fp)
	sw $t0, -5864($fp)
	lw $t0, -5864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -720($fp)
	sw $t0, -5868($fp)
	lw $t0, -5868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -732($fp)
	sw $t0, -5872($fp)
	lw $t0, -5872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -5876($fp)
	li $t0, 0
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
	addi $t0, $fp, -72
	sw $t0, -5896($fp)
	li $t0, 1
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
	lw $t0, -792($fp)
	sw $t0, -5916($fp)
	lw $t0, -5916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -5920($fp)
	li $t0, 0
	sw $t0, -5924($fp)
	li $t0, 4
	lw $t1, -5924($fp)
	mul $t0, $t0, $t1
	sw $t0, -5928($fp)
	lw $t0, -5928($fp)
	lw $t1, -5920($fp)
	add $t0, $t0, $t1
	sw $t0, -5932($fp)
	lw $t0, -5932($fp)
	lw $t1, 0($t0)
	sw $t1, -5936($fp)
	lw $t0, -5936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -5940($fp)
	li $t0, 1
	sw $t0, -5944($fp)
	li $t0, 4
	lw $t1, -5944($fp)
	mul $t0, $t0, $t1
	sw $t0, -5948($fp)
	lw $t0, -5948($fp)
	lw $t1, -5940($fp)
	add $t0, $t0, $t1
	sw $t0, -5952($fp)
	lw $t0, -5952($fp)
	lw $t1, 0($t0)
	sw $t1, -5956($fp)
	lw $t0, -5956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -5960($fp)
	li $t0, 2
	sw $t0, -5964($fp)
	li $t0, 4
	lw $t1, -5964($fp)
	mul $t0, $t0, $t1
	sw $t0, -5968($fp)
	lw $t0, -5968($fp)
	lw $t1, -5960($fp)
	add $t0, $t0, $t1
	sw $t0, -5972($fp)
	lw $t0, -5972($fp)
	lw $t1, 0($t0)
	sw $t1, -5976($fp)
	lw $t0, -5976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -5980($fp)
	li $t0, 3
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
	addi $t0, $fp, -108
	sw $t0, -6000($fp)
	li $t0, 4
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
	addi $t0, $fp, -108
	sw $t0, -6020($fp)
	li $t0, 5
	sw $t0, -6024($fp)
	li $t0, 4
	lw $t1, -6024($fp)
	mul $t0, $t0, $t1
	sw $t0, -6028($fp)
	lw $t0, -6028($fp)
	lw $t1, -6020($fp)
	add $t0, $t0, $t1
	sw $t0, -6032($fp)
	lw $t0, -6032($fp)
	lw $t1, 0($t0)
	sw $t1, -6036($fp)
	lw $t0, -6036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -6040($fp)
	li $t0, 6
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
	addi $t0, $fp, -108
	sw $t0, -6060($fp)
	li $t0, 7
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
	addi $t0, $fp, -108
	sw $t0, -6080($fp)
	li $t0, 8
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
	lw $t0, -1020($fp)
	sw $t0, -6100($fp)
	lw $t0, -6100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1032($fp)
	sw $t0, -6104($fp)
	lw $t0, -6104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1044($fp)
	sw $t0, -6108($fp)
	lw $t0, -6108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1056($fp)
	sw $t0, -6112($fp)
	lw $t0, -6112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1068($fp)
	sw $t0, -6116($fp)
	lw $t0, -6116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1080($fp)
	sw $t0, -6120($fp)
	lw $t0, -6120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1092($fp)
	sw $t0, -6124($fp)
	lw $t0, -6124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1104($fp)
	sw $t0, -6128($fp)
	lw $t0, -6128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1116($fp)
	sw $t0, -6132($fp)
	lw $t0, -6132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1128($fp)
	sw $t0, -6136($fp)
	lw $t0, -6136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1140($fp)
	sw $t0, -6140($fp)
	lw $t0, -6140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1152($fp)
	sw $t0, -6144($fp)
	lw $t0, -6144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1164($fp)
	sw $t0, -6148($fp)
	lw $t0, -6148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1176($fp)
	sw $t0, -6152($fp)
	lw $t0, -6152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -6156($fp)
	li $t0, 0
	sw $t0, -6160($fp)
	li $t0, 4
	lw $t1, -6160($fp)
	mul $t0, $t0, $t1
	sw $t0, -6164($fp)
	lw $t0, -6164($fp)
	lw $t1, -6156($fp)
	add $t0, $t0, $t1
	sw $t0, -6168($fp)
	lw $t0, -6168($fp)
	lw $t1, 0($t0)
	sw $t1, -6172($fp)
	lw $t0, -6172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -6176($fp)
	li $t0, 1
	sw $t0, -6180($fp)
	li $t0, 4
	lw $t1, -6180($fp)
	mul $t0, $t0, $t1
	sw $t0, -6184($fp)
	lw $t0, -6184($fp)
	lw $t1, -6176($fp)
	add $t0, $t0, $t1
	sw $t0, -6188($fp)
	lw $t0, -6188($fp)
	lw $t1, 0($t0)
	sw $t1, -6192($fp)
	lw $t0, -6192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -6196($fp)
	li $t0, 2
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
	addi $t0, $fp, -148
	sw $t0, -6216($fp)
	li $t0, 3
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
	addi $t0, $fp, -148
	sw $t0, -6236($fp)
	li $t0, 4
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
	addi $t0, $fp, -148
	sw $t0, -6256($fp)
	li $t0, 5
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
	addi $t0, $fp, -148
	sw $t0, -6276($fp)
	li $t0, 6
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
	addi $t0, $fp, -148
	sw $t0, -6296($fp)
	li $t0, 7
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
	addi $t0, $fp, -148
	sw $t0, -6316($fp)
	li $t0, 8
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
	addi $t0, $fp, -148
	sw $t0, -6336($fp)
	li $t0, 9
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
	lw $t0, -1428($fp)
	sw $t0, -6356($fp)
	lw $t0, -6356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1440($fp)
	sw $t0, -6360($fp)
	lw $t0, -6360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1452($fp)
	sw $t0, -6364($fp)
	lw $t0, -6364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1464($fp)
	sw $t0, -6368($fp)
	lw $t0, -6368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6372($fp)
	li $t0, 51463
	sw $t0, -6376($fp)
	lw $t1, -6376($fp)
	li $t2, 0
	bne $t1, $t2, label1528
	j label1527
label1528:
	lw $t0, -1140($fp)
	sw $t0, -6380($fp)
	lw $t1, -6380($fp)
	li $t2, 0
	bne $t1, $t2, label1524
	j label1527
label1527:
	li $t0, 15604
	sw $t0, -6384($fp)
	lw $t1, -6384($fp)
	li $t2, 0
	bne $t1, $t2, label1524
	j label1526
label1526:
	li $t0, 23555
	sw $t0, -6388($fp)
	li $t0, 48463
	sw $t0, -6392($fp)
	lw $t0, -6388($fp)
	lw $t1, -6392($fp)
	sub $t0, $t0, $t1
	sw $t0, -6396($fp)
	lw $t1, -6396($fp)
	li $t2, 0
	bne $t1, $t2, label1524
	j label1525
label1524:
	li $t0, 1
	sw $t0, -6372($fp)
label1525:
	lw $t0, -6372($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -6400($fp)
	lw $ra, -4($fp)
	lw $v0, -6400($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4
	lw $t0, 4($fp)
	sw $t0, -8($fp)
	lw $ra, -4($fp)
	lw $v0, -8($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2052
	li $t0, 24566
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	li $t0, 52832
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	li $t0, 32453
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	li $t0, 3375
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	li $t0, 1930
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	li $t0, 11394
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	li $t0, 17673
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	li $t0, 6560
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	li $t0, 62809
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	li $t0, 10757
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	li $t0, 17984
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	li $t0, 40962
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 19909
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	li $t0, 34738
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	li $t0, 9059
	sw $t0, -212($fp)
	addi $t0, $fp, -40
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
	li $t0, 60502
	sw $t0, -236($fp)
	addi $t0, $fp, -40
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
	li $t0, 13872
	sw $t0, -260($fp)
	addi $t0, $fp, -40
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
	li $t0, 22449
	sw $t0, -284($fp)
	addi $t0, $fp, -40
	sw $t0, -288($fp)
	li $t0, 3
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -296($fp)
	lw $t0, -288($fp)
	lw $t1, -296($fp)
	add $t0, $t0, $t1
	sw $t0, -300($fp)
	lw $t0, -284($fp)
	lw $t1, -300($fp)
	sw $t0, 0($t1)
	lw $t0, -300($fp)
	lw $t1, 0($t0)
	sw $t1, -304($fp)
	li $t0, 49189
	sw $t0, -308($fp)
	addi $t0, $fp, -40
	sw $t0, -312($fp)
	li $t0, 4
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
	li $t0, 20871
	sw $t0, -332($fp)
	addi $t0, $fp, -40
	sw $t0, -336($fp)
	li $t0, 5
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
	li $t0, 2118
	sw $t0, -356($fp)
	addi $t0, $fp, -40
	sw $t0, -360($fp)
	li $t0, 6
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
	li $t0, 43783
	sw $t0, -380($fp)
	addi $t0, $fp, -40
	sw $t0, -384($fp)
	li $t0, 7
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
	li $t0, 34076
	sw $t0, -404($fp)
	addi $t0, $fp, -40
	sw $t0, -408($fp)
	li $t0, 8
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
	lw $t0, -48($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -156($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -484($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -504($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -524($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -544($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -564($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -584($fp)
	li $t0, 5
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
	addi $t0, $fp, -40
	sw $t0, -604($fp)
	li $t0, 6
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
	addi $t0, $fp, -40
	sw $t0, -624($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -644($fp)
	li $t0, 8
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
	li $t0, 7614
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -668($fp)
	li $t0, 0
	sw $t0, -672($fp)
	lw $t0, -120($fp)
	sw $t0, -676($fp)
	li $t0, 18527
	sw $t0, -680($fp)
	lw $t0, -676($fp)
	lw $t1, -680($fp)
	sub $t0, $t0, $t1
	sw $t0, -684($fp)
	lw $t1, -684($fp)
	li $t2, 0
	bne $t1, $t2, label1531
	j label1530
label1531:
	lw $t0, -168($fp)
	sw $t0, -688($fp)
	lw $t1, -688($fp)
	li $t2, 0
	bne $t1, $t2, label1529
	j label1530
label1529:
	li $t0, 1
	sw $t0, -672($fp)
label1530:
	li $t0, 0
	sw $t0, -692($fp)
	li $t0, 20159
	sw $t0, -696($fp)
	lw $t1, -696($fp)
	li $t2, 0
	bne $t1, $t2, label1533
	j label1532
label1532:
	li $t0, 1
	sw $t0, -692($fp)
label1533:
	lw $t0, -156($fp)
	sw $t0, -700($fp)
	li $t0, 0
	lw $t1, -700($fp)
	sub $t0, $t0, $t1
	sw $t0, -704($fp)
	li $t0, 53240
	sw $t0, -708($fp)
	lw $t0, -704($fp)
	lw $t1, -708($fp)
	add $t0, $t0, $t1
	sw $t0, -712($fp)
	li $t0, 0
	sw $t0, -716($fp)
	lw $t0, -132($fp)
	sw $t0, -720($fp)
	lw $t0, -144($fp)
	sw $t0, -724($fp)
	lw $t0, -720($fp)
	lw $t1, -724($fp)
	mul $t0, $t0, $t1
	sw $t0, -728($fp)
	lw $t1, -728($fp)
	li $t2, 0
	bne $t1, $t2, label1536
	j label1535
label1536:
	lw $t0, 8($fp)
	sw $t0, -732($fp)
	lw $t1, -732($fp)
	li $t2, 0
	bne $t1, $t2, label1534
	j label1535
label1534:
	li $t0, 1
	sw $t0, -716($fp)
label1535:
	addi $sp, $sp, -4
	lw $t0, -672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -716($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -736($fp)
	addi $sp, $sp, 20
	lw $t0, -204($fp)
	sw $t0, -740($fp)
	lw $t0, -736($fp)
	lw $t1, -740($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -744($fp)
	li $t0, 43100
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -752($fp)
	li $t0, 2174
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -760($fp)
	li $t0, 0
	sw $t0, -764($fp)
	li $t0, 0
	sw $t0, -768($fp)
	addi $t0, $fp, -40
	sw $t0, -772($fp)
	li $t0, 8
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
	lw $t1, -788($fp)
	li $t2, 0
	bne $t1, $t2, label1542
	j label1541
label1542:
	li $t0, 45827
	sw $t0, -792($fp)
	lw $t1, -792($fp)
	li $t2, 0
	bne $t1, $t2, label1540
	j label1541
label1540:
	li $t0, 1
	sw $t0, -768($fp)
label1541:
	addi $t0, $fp, -40
	sw $t0, -796($fp)
	li $t0, 7
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
	lw $t0, 8($fp)
	sw $t0, -816($fp)
	li $t0, 0
	sw $t0, -820($fp)
	li $t0, 6387
	sw $t0, -824($fp)
	li $t0, 1979
	sw $t0, -828($fp)
	lw $t0, -824($fp)
	lw $t1, -828($fp)
	sub $t0, $t0, $t1
	sw $t0, -832($fp)
	li $t0, 21435
	sw $t0, -836($fp)
	lw $t1, -832($fp)
	lw $t2, -836($fp)
	beq $t1, $t2, label1543
	j label1544
label1543:
	li $t0, 1
	sw $t0, -820($fp)
label1544:
	addi $t0, $fp, -40
	sw $t0, -840($fp)
	li $t0, 2
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
	li $t0, 62404
	sw $t0, -860($fp)
	lw $t0, -856($fp)
	lw $t1, -860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -864($fp)
	lw $t0, -156($fp)
	sw $t0, -868($fp)
	li $t0, 46800
	sw $t0, -872($fp)
	lw $t0, -868($fp)
	lw $t1, -872($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -876($fp)
	lw $t0, -168($fp)
	sw $t0, -880($fp)
	lw $t0, -876($fp)
	lw $t1, -880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -884($fp)
	li $t0, 0
	sw $t0, -888($fp)
	li $t0, 33125
	sw $t0, -892($fp)
	lw $t0, 12($fp)
	sw $t0, -896($fp)
	lw $t0, -892($fp)
	lw $t1, -896($fp)
	sub $t0, $t0, $t1
	sw $t0, -900($fp)
	lw $t1, -900($fp)
	li $t2, 0
	bne $t1, $t2, label1545
	j label1547
label1547:
	lw $t0, -180($fp)
	sw $t0, -904($fp)
	lw $t1, -904($fp)
	li $t2, 0
	bne $t1, $t2, label1545
	j label1546
label1545:
	li $t0, 1
	sw $t0, -888($fp)
label1546:
	lw $t0, -144($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -912($fp)
	li $t0, 0
	sw $t0, -916($fp)
	li $t0, 36508
	sw $t0, -920($fp)
	lw $t1, -920($fp)
	li $t2, 0
	bne $t1, $t2, label1548
	j label1549
label1548:
	li $t0, 1
	sw $t0, -916($fp)
label1549:
	addi $sp, $sp, -4
	lw $t0, -864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -916($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -924($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -924($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -928($fp)
	addi $sp, $sp, 12
	lw $t0, -48($fp)
	sw $t0, -932($fp)
	lw $t0, -168($fp)
	sw $t0, -936($fp)
	lw $t0, -932($fp)
	lw $t1, -936($fp)
	add $t0, $t0, $t1
	sw $t0, -940($fp)
	lw $t0, 4($fp)
	sw $t0, -944($fp)
	lw $t0, -940($fp)
	lw $t1, -944($fp)
	sub $t0, $t0, $t1
	sw $t0, -948($fp)
	addi $sp, $sp, -4
	lw $t0, -768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -948($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -952($fp)
	addi $sp, $sp, 24
	lw $t1, -952($fp)
	li $t2, 0
	bne $t1, $t2, label1537
	j label1539
label1539:
	li $t0, 42483
	sw $t0, -956($fp)
	lw $t1, -956($fp)
	li $t2, 0
	bne $t1, $t2, label1537
	j label1538
label1537:
	li $t0, 1
	sw $t0, -764($fp)
label1538:
	addi $sp, $sp, -4
	lw $t0, -668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -764($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -960($fp)
	addi $sp, $sp, 24
	lw $ra, -4($fp)
	lw $v0, -960($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -48($fp)
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -156($fp)
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
	sw $t0, -1160($fp)
	li $t0, 7
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
	addi $t0, $fp, -40
	sw $t0, -1180($fp)
	li $t0, 8
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
	li $t0, 0
	sw $t0, -1200($fp)
	li $t0, 0
	sw $t0, -1204($fp)
	lw $t0, -48($fp)
	sw $t0, -1208($fp)
	lw $t1, -1208($fp)
	li $t2, 0
	bne $t1, $t2, label1553
	j label1552
label1552:
	li $t0, 1
	sw $t0, -1204($fp)
label1553:
	li $t0, 3233
	sw $t0, -1212($fp)
	lw $t0, -180($fp)
	sw $t0, -1216($fp)
	lw $t0, -1212($fp)
	lw $t1, -1216($fp)
	mul $t0, $t0, $t1
	sw $t0, -1220($fp)
	li $t0, 50035
	sw $t0, -1224($fp)
	lw $t0, -1220($fp)
	lw $t1, -1224($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1228($fp)
	li $t0, 0
	sw $t0, -1232($fp)
	li $t0, 0
	sw $t0, -1236($fp)
	li $t0, 27586
	sw $t0, -1240($fp)
	lw $t0, -144($fp)
	sw $t0, -1244($fp)
	lw $t1, -1240($fp)
	lw $t2, -1244($fp)
	beq $t1, $t2, label1556
	j label1557
label1556:
	li $t0, 1
	sw $t0, -1236($fp)
label1557:
	li $t0, 2580
	sw $t0, -1248($fp)
	lw $t1, -1236($fp)
	lw $t2, -1248($fp)
	beq $t1, $t2, label1554
	j label1555
label1554:
	li $t0, 1
	sw $t0, -1232($fp)
label1555:
	li $t0, 0
	sw $t0, -1252($fp)
	lw $t0, -120($fp)
	sw $t0, -1256($fp)
	li $t0, 54897
	sw $t0, -1260($fp)
	lw $t0, -1256($fp)
	lw $t1, -1260($fp)
	sub $t0, $t0, $t1
	sw $t0, -1264($fp)
	lw $t1, -1264($fp)
	li $t2, 0
	bne $t1, $t2, label1560
	j label1559
label1560:
	lw $t0, -180($fp)
	sw $t0, -1268($fp)
	lw $t1, -1268($fp)
	li $t2, 0
	bne $t1, $t2, label1558
	j label1559
label1558:
	li $t0, 1
	sw $t0, -1252($fp)
label1559:
	lw $t0, -72($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -1276($fp)
	addi $sp, $sp, -4
	lw $t0, -1228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1276($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1280($fp)
	addi $sp, $sp, 20
	lw $t0, -1204($fp)
	lw $t1, -1280($fp)
	mul $t0, $t0, $t1
	sw $t0, -1284($fp)
	li $t0, 0
	lw $t1, -1284($fp)
	sub $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $t1, -1288($fp)
	li $t2, 0
	bne $t1, $t2, label1551
	j label1550
label1550:
	li $t0, 1
	sw $t0, -1200($fp)
label1551:
	lw $ra, -4($fp)
	lw $v0, -1200($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -48($fp)
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -156($fp)
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1348($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -1368($fp)
	li $t0, 1
	sw $t0, -1372($fp)
	li $t0, 4
	lw $t1, -1372($fp)
	mul $t0, $t0, $t1
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	lw $t1, -1368($fp)
	add $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	lw $t1, 0($t0)
	sw $t1, -1384($fp)
	lw $t0, -1384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1388($fp)
	li $t0, 2
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
	lw $t0, -1404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1408($fp)
	li $t0, 3
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
	lw $t0, -1424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1428($fp)
	li $t0, 4
	sw $t0, -1432($fp)
	li $t0, 4
	lw $t1, -1432($fp)
	mul $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	lw $t1, -1428($fp)
	add $t0, $t0, $t1
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	lw $t1, 0($t0)
	sw $t1, -1444($fp)
	lw $t0, -1444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1448($fp)
	li $t0, 5
	sw $t0, -1452($fp)
	li $t0, 4
	lw $t1, -1452($fp)
	mul $t0, $t0, $t1
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	lw $t1, -1448($fp)
	add $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	lw $t1, 0($t0)
	sw $t1, -1464($fp)
	lw $t0, -1464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1468($fp)
	li $t0, 6
	sw $t0, -1472($fp)
	li $t0, 4
	lw $t1, -1472($fp)
	mul $t0, $t0, $t1
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	lw $t1, -1468($fp)
	add $t0, $t0, $t1
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	lw $t1, 0($t0)
	sw $t1, -1484($fp)
	lw $t0, -1484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1488($fp)
	li $t0, 7
	sw $t0, -1492($fp)
	li $t0, 4
	lw $t1, -1492($fp)
	mul $t0, $t0, $t1
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	lw $t1, -1488($fp)
	add $t0, $t0, $t1
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	lw $t1, 0($t0)
	sw $t1, -1504($fp)
	lw $t0, -1504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1508($fp)
	li $t0, 8
	sw $t0, -1512($fp)
	li $t0, 4
	lw $t1, -1512($fp)
	mul $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	lw $t1, -1508($fp)
	add $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	lw $t1, 0($t0)
	sw $t1, -1524($fp)
	lw $t0, -1524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1528($fp)
	lw $t0, -84($fp)
	sw $t0, -1532($fp)
	lw $t1, -1532($fp)
	li $t2, 0
	bne $t1, $t2, label1563
	j label1562
label1563:
	lw $t0, -144($fp)
	sw $t0, -1536($fp)
	lw $t1, -1536($fp)
	li $t2, 0
	bne $t1, $t2, label1561
	j label1562
label1561:
	li $t0, 1
	sw $t0, -1528($fp)
label1562:
	lw $t0, -1528($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -1544($fp)
	lw $ra, -4($fp)
	lw $v0, -1544($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1548($fp)
	lw $t0, -96($fp)
	sw $t0, -1552($fp)
	li $t0, 0
	lw $t1, -1552($fp)
	sub $t0, $t0, $t1
	sw $t0, -1556($fp)
	li $t0, 0
	lw $t1, -1556($fp)
	sub $t0, $t0, $t1
	sw $t0, -1560($fp)
	addi $t0, $fp, -40
	sw $t0, -1564($fp)
	lw $t0, -84($fp)
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
	li $t0, 0
	sw $t0, -1584($fp)
	lw $t0, -84($fp)
	sw $t0, -1588($fp)
	li $t0, 0
	lw $t1, -1588($fp)
	sub $t0, $t0, $t1
	sw $t0, -1592($fp)
	lw $t1, -1592($fp)
	li $t2, 0
	bne $t1, $t2, label1568
	j label1567
label1567:
	li $t0, 1
	sw $t0, -1584($fp)
label1568:
	li $t0, 0
	sw $t0, -1596($fp)
	li $t0, 51769
	sw $t0, -1600($fp)
	lw $t1, -1600($fp)
	li $t2, 0
	bne $t1, $t2, label1570
	j label1569
label1569:
	li $t0, 1
	sw $t0, -1596($fp)
label1570:
	addi $sp, $sp, -4
	lw $t0, -1560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1596($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1604($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -40
	sw $t0, -1608($fp)
	li $t0, 6
	sw $t0, -1612($fp)
	li $t0, 4
	lw $t1, -1612($fp)
	mul $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	lw $t1, -1608($fp)
	add $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	lw $t1, 0($t0)
	sw $t1, -1624($fp)
	lw $t0, -120($fp)
	sw $t0, -1628($fp)
	lw $t0, -1624($fp)
	lw $t1, -1628($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1632($fp)
	lw $t0, -1604($fp)
	lw $t1, -1632($fp)
	sub $t0, $t0, $t1
	sw $t0, -1636($fp)
	lw $t1, -1636($fp)
	li $t2, 0
	bne $t1, $t2, label1566
	j label1565
label1566:
	addi $t0, $fp, -40
	sw $t0, -1640($fp)
	lw $t0, -156($fp)
	sw $t0, -1644($fp)
	lw $t0, -72($fp)
	sw $t0, -1648($fp)
	lw $t0, -1644($fp)
	lw $t1, -1648($fp)
	sub $t0, $t0, $t1
	sw $t0, -1652($fp)
	li $t0, 4
	lw $t1, -1652($fp)
	mul $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	lw $t1, -1640($fp)
	add $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	lw $t1, 0($t0)
	sw $t1, -1664($fp)
	lw $t1, -1664($fp)
	li $t2, 0
	bne $t1, $t2, label1564
	j label1565
label1564:
	li $t0, 1
	sw $t0, -1548($fp)
label1565:
	lw $t0, -48($fp)
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -156($fp)
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1724($fp)
	li $t0, 0
	sw $t0, -1728($fp)
	li $t0, 4
	lw $t1, -1728($fp)
	mul $t0, $t0, $t1
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	lw $t1, -1724($fp)
	add $t0, $t0, $t1
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	lw $t1, 0($t0)
	sw $t1, -1740($fp)
	lw $t0, -1740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1744($fp)
	li $t0, 1
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
	lw $t0, -1760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1764($fp)
	li $t0, 2
	sw $t0, -1768($fp)
	li $t0, 4
	lw $t1, -1768($fp)
	mul $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	lw $t1, -1764($fp)
	add $t0, $t0, $t1
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	lw $t1, 0($t0)
	sw $t1, -1780($fp)
	lw $t0, -1780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1784($fp)
	li $t0, 3
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
	lw $t0, -1800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1804($fp)
	li $t0, 4
	sw $t0, -1808($fp)
	li $t0, 4
	lw $t1, -1808($fp)
	mul $t0, $t0, $t1
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	lw $t1, -1804($fp)
	add $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	lw $t1, 0($t0)
	sw $t1, -1820($fp)
	lw $t0, -1820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1824($fp)
	li $t0, 5
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
	lw $t0, -1840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1844($fp)
	li $t0, 6
	sw $t0, -1848($fp)
	li $t0, 4
	lw $t1, -1848($fp)
	mul $t0, $t0, $t1
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	lw $t1, -1844($fp)
	add $t0, $t0, $t1
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	lw $t1, 0($t0)
	sw $t1, -1860($fp)
	lw $t0, -1860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1864($fp)
	li $t0, 7
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
	lw $t0, -1880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1884($fp)
	li $t0, 8
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
	lw $t0, -1900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1904($fp)
	li $t0, 0
	sw $t0, -1908($fp)
	li $t0, 5957
	sw $t0, -1912($fp)
	lw $t0, 16($fp)
	sw $t0, -1916($fp)
	lw $t0, -1912($fp)
	lw $t1, -1916($fp)
	mul $t0, $t0, $t1
	sw $t0, -1920($fp)
	li $t0, 0
	lw $t1, -1920($fp)
	sub $t0, $t0, $t1
	sw $t0, -1924($fp)
	addi $t0, $fp, -40
	sw $t0, -1928($fp)
	lw $t0, -180($fp)
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
	lw $t0, -60($fp)
	sw $t0, -1948($fp)
	lw $t0, -1944($fp)
	lw $t1, -1948($fp)
	add $t0, $t0, $t1
	sw $t0, -1952($fp)
	li $t0, 0
	sw $t0, -1956($fp)
	li $t0, 39445
	sw $t0, -1960($fp)
	lw $t1, -1960($fp)
	li $t2, 0
	bne $t1, $t2, label1576
	j label1575
label1575:
	li $t0, 1
	sw $t0, -1956($fp)
label1576:
	li $t0, 0
	lw $t1, -1956($fp)
	sub $t0, $t0, $t1
	sw $t0, -1964($fp)
	li $t0, 0
	sw $t0, -1968($fp)
	li $t0, 23125
	sw $t0, -1972($fp)
	lw $t0, -144($fp)
	sw $t0, -1976($fp)
	lw $t1, -1972($fp)
	lw $t2, -1976($fp)
	beq $t1, $t2, label1577
	j label1579
label1579:
	li $t0, 63141
	sw $t0, -1980($fp)
	lw $t1, -1980($fp)
	li $t2, 0
	bne $t1, $t2, label1577
	j label1578
label1577:
	li $t0, 1
	sw $t0, -1968($fp)
label1578:
	lw $t0, -120($fp)
	sw $t0, -1984($fp)
	lw $t0, -1984($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -1988($fp)
	li $t0, 0
	sw $t0, -1992($fp)
	li $t0, 0
	sw $t0, -1996($fp)
	lw $t0, -192($fp)
	sw $t0, -2000($fp)
	lw $t0, -180($fp)
	sw $t0, -2004($fp)
	lw $t1, -2000($fp)
	lw $t2, -2004($fp)
	bgt $t1, $t2, label1582
	j label1583
label1582:
	li $t0, 1
	sw $t0, -1996($fp)
label1583:
	li $t0, 58181
	sw $t0, -2008($fp)
	lw $t1, -1996($fp)
	lw $t2, -2008($fp)
	bgt $t1, $t2, label1580
	j label1581
label1580:
	li $t0, 1
	sw $t0, -1992($fp)
label1581:
	addi $sp, $sp, -4
	lw $t0, -1964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1992($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2012($fp)
	addi $sp, $sp, 20
	lw $t0, 12($fp)
	sw $t0, -2016($fp)
	li $t0, 30016
	sw $t0, -2020($fp)
	lw $t0, -2016($fp)
	lw $t1, -2020($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2024($fp)
	lw $t0, -132($fp)
	sw $t0, -2028($fp)
	lw $t0, -2024($fp)
	lw $t1, -2028($fp)
	sub $t0, $t0, $t1
	sw $t0, -2032($fp)
	addi $sp, $sp, -4
	lw $t0, -1924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2032($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2036($fp)
	addi $sp, $sp, 20
	lw $t1, -2036($fp)
	li $t2, 0
	bne $t1, $t2, label1574
	j label1573
label1573:
	li $t0, 1
	sw $t0, -1908($fp)
label1574:
	li $t0, 16657
	sw $t0, -2040($fp)
	lw $t0, -72($fp)
	sw $t0, -2044($fp)
	lw $t0, -2040($fp)
	lw $t1, -2044($fp)
	mul $t0, $t0, $t1
	sw $t0, -2048($fp)
	lw $t0, -1908($fp)
	lw $t1, -2048($fp)
	add $t0, $t0, $t1
	sw $t0, -2052($fp)
	lw $t0, -108($fp)
	sw $t0, -2056($fp)
	lw $t1, -2052($fp)
	lw $t2, -2056($fp)
	bgt $t1, $t2, label1571
	j label1572
label1571:
	li $t0, 1
	sw $t0, -1904($fp)
label1572:
	lw $ra, -4($fp)
	lw $v0, -1904($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2248
	li $t0, 36313
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	li $t0, 12345
	sw $t0, -100($fp)
	addi $t0, $fp, -32
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
	li $t0, 18636
	sw $t0, -124($fp)
	addi $t0, $fp, -32
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
	li $t0, 57748
	sw $t0, -148($fp)
	addi $t0, $fp, -32
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
	li $t0, 6029
	sw $t0, -172($fp)
	addi $t0, $fp, -32
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
	li $t0, 53068
	sw $t0, -196($fp)
	addi $t0, $fp, -32
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
	li $t0, 17022
	sw $t0, -220($fp)
	addi $t0, $fp, -32
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
	li $t0, 1643
	sw $t0, -244($fp)
	addi $t0, $fp, -32
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
	li $t0, 33359
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	li $t0, 59505
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	li $t0, 3818
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	li $t0, 10924
	sw $t0, -304($fp)
	addi $t0, $fp, -60
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
	li $t0, 47210
	sw $t0, -328($fp)
	addi $t0, $fp, -60
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
	li $t0, 23977
	sw $t0, -352($fp)
	addi $t0, $fp, -60
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
	li $t0, 29451
	sw $t0, -376($fp)
	addi $t0, $fp, -60
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
	li $t0, 54824
	sw $t0, -400($fp)
	addi $t0, $fp, -60
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
	li $t0, 13338
	sw $t0, -424($fp)
	addi $t0, $fp, -60
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
	li $t0, 57037
	sw $t0, -448($fp)
	addi $t0, $fp, -60
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
	li $t0, 57404
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	li $t0, 16571
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	li $t0, 41536
	sw $t0, -496($fp)
	addi $t0, $fp, -84
	sw $t0, -500($fp)
	li $t0, 0
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
	li $t0, 43637
	sw $t0, -520($fp)
	addi $t0, $fp, -84
	sw $t0, -524($fp)
	li $t0, 1
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
	li $t0, 40675
	sw $t0, -544($fp)
	addi $t0, $fp, -84
	sw $t0, -548($fp)
	li $t0, 2
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
	li $t0, 28154
	sw $t0, -568($fp)
	addi $t0, $fp, -84
	sw $t0, -572($fp)
	li $t0, 3
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
	li $t0, 8117
	sw $t0, -592($fp)
	addi $t0, $fp, -84
	sw $t0, -596($fp)
	li $t0, 4
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
	li $t0, 33320
	sw $t0, -616($fp)
	addi $t0, $fp, -84
	sw $t0, -620($fp)
	li $t0, 5
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
	li $t0, 51279
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	li $t0, 5722
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	li $t0, 7229
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	li $t0, 57237
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	li $t0, 22379
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	li $t0, 43543
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
label1584:
	addi $t0, $fp, -60
	sw $t0, -712($fp)
	li $t0, 0
	sw $t0, -716($fp)
	lw $t0, -92($fp)
	sw $t0, -720($fp)
	lw $t0, -644($fp)
	sw $t0, -724($fp)
	lw $t1, -720($fp)
	lw $t2, -724($fp)
	bge $t1, $t2, label1587
	j label1588
label1587:
	li $t0, 1
	sw $t0, -716($fp)
label1588:
	lw $t0, -716($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -728($fp)
	li $t0, 4
	lw $t1, -728($fp)
	mul $t0, $t0, $t1
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	lw $t1, -712($fp)
	add $t0, $t0, $t1
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	lw $t1, 0($t0)
	sw $t1, -740($fp)
	lw $t1, -740($fp)
	li $t2, 0
	bne $t1, $t2, label1585
	j label1586
label1585:
	li $t0, 4046
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	lw $t0, -284($fp)
	sw $t0, -756($fp)
	lw $t0, -92($fp)
	sw $t0, -760($fp)
	lw $t0, -756($fp)
	lw $t1, -760($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -768($fp)
	lw $t0, -92($fp)
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -776($fp)
	lw $t0, -272($fp)
	sw $t0, -780($fp)
	li $t0, 0
	sw $t0, -784($fp)
	li $t0, 10075
	sw $t0, -788($fp)
	li $t0, 28547
	sw $t0, -792($fp)
	lw $t0, -788($fp)
	lw $t1, -792($fp)
	sub $t0, $t0, $t1
	sw $t0, -796($fp)
	li $t0, 52778
	sw $t0, -800($fp)
	lw $t1, -796($fp)
	lw $t2, -800($fp)
	bgt $t1, $t2, label1589
	j label1590
label1589:
	li $t0, 1
	sw $t0, -784($fp)
label1590:
	li $t0, 35755
	sw $t0, -804($fp)
	lw $t0, -748($fp)
	sw $t0, -808($fp)
	lw $t0, -804($fp)
	lw $t1, -808($fp)
	add $t0, $t0, $t1
	sw $t0, -812($fp)
	addi $sp, $sp, -4
	lw $t0, -784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -812($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -816($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -820($fp)
	lw $t0, -656($fp)
	sw $t0, -824($fp)
	li $t0, 41015
	sw $t0, -828($fp)
	lw $t0, -824($fp)
	lw $t1, -828($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -832($fp)
	lw $t0, -644($fp)
	sw $t0, -836($fp)
	lw $t1, -832($fp)
	lw $t2, -836($fp)
	blt $t1, $t2, label1591
	j label1592
label1591:
	li $t0, 1
	sw $t0, -820($fp)
label1592:
	addi $sp, $sp, -4
	lw $t0, -816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -820($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -840($fp)
	addi $sp, $sp, 12
	lw $t0, -780($fp)
	lw $t1, -840($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -844($fp)
	li $t0, 0
	sw $t0, -848($fp)
	lw $t0, -692($fp)
	sw $t0, -852($fp)
	li $t0, 11718
	sw $t0, -856($fp)
	li $t0, 0
	lw $t1, -856($fp)
	sub $t0, $t0, $t1
	sw $t0, -860($fp)
	lw $t1, -852($fp)
	lw $t2, -860($fp)
	blt $t1, $t2, label1593
	j label1594
label1593:
	li $t0, 1
	sw $t0, -848($fp)
label1594:
	li $t0, 61907
	sw $t0, -864($fp)
	jal f8
	sw $v0, -868($fp)
	addi $sp, $sp, 4
	lw $t0, -864($fp)
	lw $t1, -868($fp)
	sub $t0, $t0, $t1
	sw $t0, -872($fp)
	j label1584
label1586:
	li $t0, 46747
	sw $t0, -908($fp)
	addi $t0, $fp, -904
	sw $t0, -912($fp)
	li $t0, 0
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
	li $t0, 15536
	sw $t0, -932($fp)
	addi $t0, $fp, -904
	sw $t0, -936($fp)
	li $t0, 1
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
	li $t0, 7295
	sw $t0, -956($fp)
	addi $t0, $fp, -904
	sw $t0, -960($fp)
	li $t0, 2
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
	li $t0, 28421
	sw $t0, -980($fp)
	addi $t0, $fp, -904
	sw $t0, -984($fp)
	li $t0, 3
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
	li $t0, 39513
	sw $t0, -1004($fp)
	addi $t0, $fp, -904
	sw $t0, -1008($fp)
	li $t0, 4
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
	li $t0, 36746
	sw $t0, -1028($fp)
	addi $t0, $fp, -904
	sw $t0, -1032($fp)
	li $t0, 5
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
	li $t0, 17709
	sw $t0, -1052($fp)
	addi $t0, $fp, -904
	sw $t0, -1056($fp)
	li $t0, 6
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
	li $t0, 52851
	sw $t0, -1076($fp)
	addi $t0, $fp, -904
	sw $t0, -1080($fp)
	li $t0, 7
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
	li $t0, 28247
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -1108($fp)
	li $t0, 9577
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	li $t0, 3886
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	sw $t0, -1132($fp)
	addi $t0, $fp, -84
	sw $t0, -1136($fp)
	li $t0, 0
	sw $t0, -1140($fp)
	lw $t0, -284($fp)
	sw $t0, -1144($fp)
	lw $t0, -1128($fp)
	sw $t0, -1148($fp)
	lw $t1, -1144($fp)
	lw $t2, -1148($fp)
	bne $t1, $t2, label1597
	j label1596
label1597:
	li $t0, 4247
	sw $t0, -1152($fp)
	lw $t1, -1152($fp)
	li $t2, 0
	bne $t1, $t2, label1595
	j label1596
label1595:
	li $t0, 1
	sw $t0, -1140($fp)
label1596:
	addi $sp, $sp, -4
	lw $t0, -1140($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1156($fp)
	addi $sp, $sp, 8
	lw $t0, -644($fp)
	sw $t0, -1160($fp)
	lw $t0, -1156($fp)
	lw $t1, -1160($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1164($fp)
	li $t0, 4
	lw $t1, -1164($fp)
	mul $t0, $t0, $t1
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	lw $t1, -1136($fp)
	add $t0, $t0, $t1
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	lw $t1, 0($t0)
	sw $t1, -1176($fp)
	li $t0, 0
	sw $t0, -1180($fp)
	li $t0, 0
	sw $t0, -1184($fp)
	li $t0, 0
	sw $t0, -1188($fp)
	lw $t0, -692($fp)
	sw $t0, -1192($fp)
	lw $t1, -1192($fp)
	li $t2, 0
	bne $t1, $t2, label1603
	j label1602
label1602:
	li $t0, 1
	sw $t0, -1188($fp)
label1603:
	li $t0, 32401
	sw $t0, -1196($fp)
	lw $t1, -1188($fp)
	lw $t2, -1196($fp)
	bgt $t1, $t2, label1600
	j label1601
label1600:
	li $t0, 1
	sw $t0, -1184($fp)
label1601:
	lw $t0, -488($fp)
	sw $t0, -1200($fp)
	lw $t0, -692($fp)
	sw $t0, -1204($fp)
	lw $t0, -1200($fp)
	lw $t1, -1204($fp)
	add $t0, $t0, $t1
	sw $t0, -1208($fp)
	li $t0, 0
	sw $t0, -1212($fp)
	li $t0, 0
	sw $t0, -1216($fp)
	lw $t0, -680($fp)
	sw $t0, -1220($fp)
	lw $t0, -692($fp)
	sw $t0, -1224($fp)
	lw $t1, -1220($fp)
	lw $t2, -1224($fp)
	beq $t1, $t2, label1606
	j label1607
label1606:
	li $t0, 1
	sw $t0, -1216($fp)
label1607:
	li $t0, 44562
	sw $t0, -1228($fp)
	lw $t1, -1216($fp)
	lw $t2, -1228($fp)
	bne $t1, $t2, label1604
	j label1605
label1604:
	li $t0, 1
	sw $t0, -1212($fp)
label1605:
	li $t0, 0
	sw $t0, -1232($fp)
	li $t0, 53214
	sw $t0, -1236($fp)
	li $t0, 0
	lw $t1, -1236($fp)
	sub $t0, $t0, $t1
	sw $t0, -1240($fp)
	lw $t1, -1240($fp)
	li $t2, 0
	bne $t1, $t2, label1608
	j label1610
label1610:
	lw $t0, -1116($fp)
	sw $t0, -1244($fp)
	lw $t1, -1244($fp)
	li $t2, 0
	bne $t1, $t2, label1608
	j label1609
label1608:
	li $t0, 1
	sw $t0, -1232($fp)
label1609:
	addi $sp, $sp, -4
	lw $t0, -1184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1232($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1248($fp)
	addi $sp, $sp, 20
	lw $t1, -1248($fp)
	li $t2, 0
	bne $t1, $t2, label1599
	j label1598
label1598:
	li $t0, 1
	sw $t0, -1180($fp)
label1599:
	lw $t0, -668($fp)
	sw $t0, -1252($fp)
	li $t0, 0
	lw $t1, -1252($fp)
	sub $t0, $t0, $t1
	sw $t0, -1256($fp)
	lw $t0, -1180($fp)
	lw $t1, -1256($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1260($fp)
	lw $t0, -1176($fp)
	lw $t1, -1260($fp)
	sub $t0, $t0, $t1
	sw $t0, -1264($fp)
	li $t0, 0
	sw $t0, -1268($fp)
	li $t0, 61331
	sw $t0, -1272($fp)
	li $t0, 0
	sw $t0, -1276($fp)
	lw $t0, -656($fp)
	sw $t0, -1280($fp)
	lw $t1, -1280($fp)
	li $t2, 0
	bne $t1, $t2, label1614
	j label1613
label1613:
	li $t0, 1
	sw $t0, -1276($fp)
label1614:
	lw $t0, -1272($fp)
	lw $t1, -1276($fp)
	mul $t0, $t0, $t1
	sw $t0, -1284($fp)
	addi $t0, $fp, -904
	sw $t0, -1288($fp)
	lw $t0, -272($fp)
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
	lw $t0, -1284($fp)
	lw $t1, -1304($fp)
	mul $t0, $t0, $t1
	sw $t0, -1308($fp)
	li $t0, 12346
	sw $t0, -1312($fp)
	li $t0, 18145
	sw $t0, -1316($fp)
	lw $t0, -1312($fp)
	lw $t1, -1316($fp)
	mul $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $t1, -1308($fp)
	lw $t2, -1320($fp)
	bgt $t1, $t2, label1611
	j label1612
label1611:
	li $t0, 1
	sw $t0, -1268($fp)
label1612:
	li $t0, 0
	sw $t0, -1324($fp)
	li $t0, 1517
	sw $t0, -1328($fp)
	li $t0, 0
	sw $t0, -1332($fp)
	li $t0, 19576
	sw $t0, -1336($fp)
	lw $t1, -1336($fp)
	li $t2, 0
	bne $t1, $t2, label1619
	j label1618
label1618:
	li $t0, 1
	sw $t0, -1332($fp)
label1619:
	lw $t0, -1328($fp)
	lw $t1, -1332($fp)
	add $t0, $t0, $t1
	sw $t0, -1340($fp)
	lw $t1, -1340($fp)
	li $t2, 0
	bne $t1, $t2, label1617
	j label1616
label1617:
	lw $t0, -1104($fp)
	sw $t0, -1344($fp)
	lw $t1, -1344($fp)
	li $t2, 0
	bne $t1, $t2, label1615
	j label1616
label1615:
	li $t0, 1
	sw $t0, -1324($fp)
label1616:
	li $t0, 0
	sw $t0, -1348($fp)
	jal f8
	sw $v0, -1352($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -1356($fp)
	lw $t0, -704($fp)
	sw $t0, -1360($fp)
	lw $t1, -1360($fp)
	li $t2, 0
	bne $t1, $t2, label1623
	j label1622
label1622:
	li $t0, 1
	sw $t0, -1356($fp)
label1623:
	li $t0, 0
	lw $t1, -1356($fp)
	sub $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t0, -1352($fp)
	lw $t1, -1364($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1368($fp)
	li $t0, 0
	sw $t0, -1372($fp)
	li $t0, 9846
	sw $t0, -1376($fp)
	lw $t1, -1376($fp)
	li $t2, 0
	bne $t1, $t2, label1625
	j label1624
label1624:
	li $t0, 1
	sw $t0, -1372($fp)
label1625:
	li $t0, 23896
	sw $t0, -1380($fp)
	lw $t0, -1372($fp)
	lw $t1, -1380($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1384($fp)
	lw $t0, -272($fp)
	sw $t0, -1388($fp)
	lw $t0, -1384($fp)
	lw $t1, -1388($fp)
	mul $t0, $t0, $t1
	sw $t0, -1392($fp)
	lw $t1, -1368($fp)
	lw $t2, -1392($fp)
	bge $t1, $t2, label1620
	j label1621
label1620:
	li $t0, 1
	sw $t0, -1348($fp)
label1621:
	li $t0, 63119
	sw $t0, -1396($fp)
	li $t0, 0
	lw $t1, -1396($fp)
	sub $t0, $t0, $t1
	sw $t0, -1400($fp)
	li $t0, 0
	sw $t0, -1404($fp)
	addi $t0, $fp, -60
	sw $t0, -1408($fp)
	li $t0, 0
	sw $t0, -1412($fp)
	li $t0, 13892
	sw $t0, -1416($fp)
	lw $t0, -656($fp)
	sw $t0, -1420($fp)
	lw $t0, -1416($fp)
	lw $t1, -1420($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1424($fp)
	lw $t1, -1424($fp)
	li $t2, 0
	bne $t1, $t2, label1630
	j label1629
label1630:
	li $t0, 64911
	sw $t0, -1428($fp)
	lw $t1, -1428($fp)
	li $t2, 0
	bne $t1, $t2, label1628
	j label1629
label1628:
	li $t0, 1
	sw $t0, -1412($fp)
label1629:
	li $t0, 4
	lw $t1, -1412($fp)
	mul $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	lw $t1, -1408($fp)
	add $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	lw $t1, 0($t0)
	sw $t1, -1440($fp)
	lw $t1, -1440($fp)
	li $t2, 0
	bne $t1, $t2, label1627
	j label1626
label1626:
	li $t0, 1
	sw $t0, -1404($fp)
label1627:
label1631:
	li $t0, 0
	sw $t0, -1444($fp)
	addi $t0, $fp, -84
	sw $t0, -1448($fp)
	li $t0, 1
	sw $t0, -1452($fp)
	li $t0, 4
	lw $t1, -1452($fp)
	mul $t0, $t0, $t1
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	lw $t1, -1448($fp)
	add $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	lw $t1, 0($t0)
	sw $t1, -1464($fp)
	lw $t1, -1464($fp)
	li $t2, 0
	bne $t1, $t2, label1634
	j label1635
label1634:
	li $t0, 1
	sw $t0, -1444($fp)
label1635:
	addi $t0, $fp, -84
	sw $t0, -1468($fp)
	lw $t0, -296($fp)
	sw $t0, -1472($fp)
	li $t0, 4
	lw $t1, -1472($fp)
	mul $t0, $t0, $t1
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	lw $t1, -1468($fp)
	add $t0, $t0, $t1
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	lw $t1, 0($t0)
	sw $t1, -1484($fp)
	lw $t0, -1444($fp)
	lw $t1, -1484($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1488($fp)
	addi $t0, $fp, -32
	sw $t0, -1492($fp)
	li $t0, 0
	sw $t0, -1496($fp)
	lw $t0, -668($fp)
	sw $t0, -1500($fp)
	lw $t1, -1500($fp)
	li $t2, 0
	bne $t1, $t2, label1638
	j label1637
label1638:
	li $t0, 27923
	sw $t0, -1504($fp)
	lw $t1, -1504($fp)
	li $t2, 0
	bne $t1, $t2, label1636
	j label1637
label1636:
	li $t0, 1
	sw $t0, -1496($fp)
label1637:
	li $t0, 4
	lw $t1, -1496($fp)
	mul $t0, $t0, $t1
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	lw $t1, -1492($fp)
	add $t0, $t0, $t1
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	lw $t1, 0($t0)
	sw $t1, -1516($fp)
	lw $t1, -1488($fp)
	lw $t2, -1516($fp)
	bge $t1, $t2, label1632
	j label1633
label1632:
	li $t0, 0
	sw $t0, -1520($fp)
	li $t0, 0
	sw $t0, -1524($fp)
	lw $t0, -272($fp)
	sw $t0, -1528($fp)
	li $t0, 0
	lw $t1, -1528($fp)
	sub $t0, $t0, $t1
	sw $t0, -1532($fp)
	lw $t0, -656($fp)
	sw $t0, -1536($fp)
	lw $t1, -1532($fp)
	lw $t2, -1536($fp)
	bne $t1, $t2, label1642
	j label1643
label1642:
	li $t0, 1
	sw $t0, -1524($fp)
label1643:
	li $t0, 0
	sw $t0, -1540($fp)
	li $t0, 25199
	sw $t0, -1544($fp)
	li $t0, 2799
	sw $t0, -1548($fp)
	lw $t0, -1544($fp)
	lw $t1, -1548($fp)
	sub $t0, $t0, $t1
	sw $t0, -1552($fp)
	lw $t1, -1552($fp)
	li $t2, 0
	bne $t1, $t2, label1646
	j label1645
label1646:
	lw $t0, -488($fp)
	sw $t0, -1556($fp)
	lw $t1, -1556($fp)
	li $t2, 0
	bne $t1, $t2, label1644
	j label1645
label1644:
	li $t0, 1
	sw $t0, -1540($fp)
label1645:
	li $t0, 30213
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -1564($fp)
	addi $t0, $fp, -84
	sw $t0, -1568($fp)
	li $t0, 3
	sw $t0, -1572($fp)
	li $t0, 4
	lw $t1, -1572($fp)
	mul $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	lw $t1, -1568($fp)
	add $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	lw $t1, 0($t0)
	sw $t1, -1584($fp)
	li $t0, 0
	sw $t0, -1588($fp)
	li $t0, 24294
	sw $t0, -1592($fp)
	lw $t0, -692($fp)
	sw $t0, -1596($fp)
	lw $t0, -1592($fp)
	lw $t1, -1596($fp)
	add $t0, $t0, $t1
	sw $t0, -1600($fp)
	li $t0, 1792
	sw $t0, -1604($fp)
	lw $t1, -1600($fp)
	lw $t2, -1604($fp)
	blt $t1, $t2, label1647
	j label1648
label1647:
	li $t0, 1
	sw $t0, -1588($fp)
label1648:
	lw $t0, -272($fp)
	sw $t0, -1608($fp)
	lw $t0, -656($fp)
	sw $t0, -1612($fp)
	lw $t0, -1608($fp)
	lw $t1, -1612($fp)
	sub $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, -668($fp)
	sw $t0, -1620($fp)
	lw $t0, -1616($fp)
	lw $t1, -1620($fp)
	sub $t0, $t0, $t1
	sw $t0, -1624($fp)
	addi $t0, $fp, -84
	sw $t0, -1628($fp)
	li $t0, 3
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
	addi $sp, $sp, -4
	lw $t0, -1584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1644($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1648($fp)
	addi $sp, $sp, 20
	lw $t0, -284($fp)
	sw $t0, -1652($fp)
	li $t0, 0
	lw $t1, -1652($fp)
	sub $t0, $t0, $t1
	sw $t0, -1656($fp)
	addi $sp, $sp, -4
	lw $t0, -1524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1656($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1660($fp)
	addi $sp, $sp, 24
	lw $t1, -1660($fp)
	li $t2, 0
	bne $t1, $t2, label1641
	j label1640
label1641:
	jal f11
	sw $v0, -1664($fp)
	addi $sp, $sp, 4
	lw $t1, -1664($fp)
	li $t2, 0
	bne $t1, $t2, label1639
	j label1640
label1639:
	li $t0, 1
	sw $t0, -1520($fp)
label1640:
	j label1631
label1633:
	lw $t0, -92($fp)
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1672($fp)
	li $t0, 0
	sw $t0, -1676($fp)
	li $t0, 4
	lw $t1, -1676($fp)
	mul $t0, $t0, $t1
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	lw $t1, -1672($fp)
	add $t0, $t0, $t1
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	lw $t1, 0($t0)
	sw $t1, -1688($fp)
	lw $t0, -1688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1692($fp)
	li $t0, 1
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
	lw $t0, -1708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1712($fp)
	li $t0, 2
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
	lw $t0, -1728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1732($fp)
	li $t0, 3
	sw $t0, -1736($fp)
	li $t0, 4
	lw $t1, -1736($fp)
	mul $t0, $t0, $t1
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	lw $t1, -1732($fp)
	add $t0, $t0, $t1
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	lw $t1, 0($t0)
	sw $t1, -1748($fp)
	lw $t0, -1748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1752($fp)
	li $t0, 4
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
	lw $t0, -1768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1772($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -1792($fp)
	li $t0, 6
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
	lw $t0, -272($fp)
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -284($fp)
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -296($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1824($fp)
	li $t0, 0
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
	lw $t0, -1840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1844($fp)
	li $t0, 1
	sw $t0, -1848($fp)
	li $t0, 4
	lw $t1, -1848($fp)
	mul $t0, $t0, $t1
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	lw $t1, -1844($fp)
	add $t0, $t0, $t1
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	lw $t1, 0($t0)
	sw $t1, -1860($fp)
	lw $t0, -1860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1864($fp)
	li $t0, 2
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
	lw $t0, -1880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1884($fp)
	li $t0, 3
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
	lw $t0, -1900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1904($fp)
	li $t0, 4
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
	lw $t0, -1920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1924($fp)
	li $t0, 5
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
	addi $t0, $fp, -60
	sw $t0, -1944($fp)
	li $t0, 6
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
	lw $t0, -476($fp)
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -488($fp)
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -1972($fp)
	li $t0, 0
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
	addi $t0, $fp, -84
	sw $t0, -1992($fp)
	li $t0, 1
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
	addi $t0, $fp, -84
	sw $t0, -2012($fp)
	li $t0, 2
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
	addi $t0, $fp, -84
	sw $t0, -2032($fp)
	li $t0, 3
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
	addi $t0, $fp, -84
	sw $t0, -2052($fp)
	li $t0, 4
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
	addi $t0, $fp, -84
	sw $t0, -2072($fp)
	li $t0, 5
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
	lw $t0, -644($fp)
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -656($fp)
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -668($fp)
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -680($fp)
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -692($fp)
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -704($fp)
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2116($fp)
	li $t0, 0
	sw $t0, -2120($fp)
	li $t0, 35293
	sw $t0, -2124($fp)
	li $t0, 45179
	sw $t0, -2128($fp)
	lw $t0, -2124($fp)
	lw $t1, -2128($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2132($fp)
	lw $t0, -704($fp)
	sw $t0, -2136($fp)
	lw $t1, -2132($fp)
	lw $t2, -2136($fp)
	ble $t1, $t2, label1652
	j label1653
label1652:
	li $t0, 1
	sw $t0, -2120($fp)
label1653:
	li $t0, 0
	sw $t0, -2140($fp)
	addi $t0, $fp, -60
	sw $t0, -2144($fp)
	lw $t0, -296($fp)
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
	li $t0, 16401
	sw $t0, -2164($fp)
	lw $t1, -2160($fp)
	lw $t2, -2164($fp)
	bgt $t1, $t2, label1654
	j label1655
label1654:
	li $t0, 1
	sw $t0, -2140($fp)
label1655:
	li $t0, 57500
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -2172($fp)
	li $t0, 47923
	sw $t0, -2176($fp)
	li $t0, 12515
	sw $t0, -2180($fp)
	lw $t0, -2176($fp)
	lw $t1, -2180($fp)
	add $t0, $t0, $t1
	sw $t0, -2184($fp)
	li $t0, 31046
	sw $t0, -2188($fp)
	lw $t0, -2184($fp)
	lw $t1, -2188($fp)
	add $t0, $t0, $t1
	sw $t0, -2192($fp)
	addi $sp, $sp, -4
	lw $t0, -2120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2192($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2196($fp)
	addi $sp, $sp, 20
	lw $t1, -2196($fp)
	li $t2, 0
	bne $t1, $t2, label1651
	j label1650
label1651:
	li $t0, 0
	sw $t0, -2200($fp)
	jal f11
	sw $v0, -2204($fp)
	addi $sp, $sp, 4
	lw $t1, -2204($fp)
	li $t2, 0
	bne $t1, $t2, label1657
	j label1656
label1656:
	li $t0, 1
	sw $t0, -2200($fp)
label1657:
	lw $t0, -704($fp)
	sw $t0, -2208($fp)
	li $t0, 0
	sw $t0, -2212($fp)
	lw $t0, -668($fp)
	sw $t0, -2216($fp)
	lw $t1, -2216($fp)
	li $t2, 0
	bne $t1, $t2, label1660
	j label1658
label1660:
	li $t0, 40974
	sw $t0, -2220($fp)
	lw $t1, -2220($fp)
	li $t2, 0
	bne $t1, $t2, label1658
	j label1659
label1658:
	li $t0, 1
	sw $t0, -2212($fp)
label1659:
	li $t0, 0
	sw $t0, -2224($fp)
	li $t0, 0
	sw $t0, -2228($fp)
	lw $t0, -656($fp)
	sw $t0, -2232($fp)
	li $t0, 60963
	sw $t0, -2236($fp)
	lw $t1, -2232($fp)
	lw $t2, -2236($fp)
	ble $t1, $t2, label1663
	j label1664
label1663:
	li $t0, 1
	sw $t0, -2228($fp)
label1664:
	li $t0, 2159
	sw $t0, -2240($fp)
	lw $t1, -2228($fp)
	lw $t2, -2240($fp)
	beq $t1, $t2, label1661
	j label1662
label1661:
	li $t0, 1
	sw $t0, -2224($fp)
label1662:
	lw $t0, -296($fp)
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -2248($fp)
	addi $sp, $sp, -4
	lw $t0, -2200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2248($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2252($fp)
	addi $sp, $sp, 24
	lw $t1, -2252($fp)
	li $t2, 0
	bne $t1, $t2, label1649
	j label1650
label1649:
	li $t0, 1
	sw $t0, -2116($fp)
label1650:
	lw $ra, -4($fp)
	lw $v0, -2116($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -140
	li $t0, 7774
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 20304
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 42492
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	li $t0, 0
	sw $t0, -44($fp)
	lw $t0, -12($fp)
	sw $t0, -48($fp)
	li $t0, 27350
	sw $t0, -52($fp)
	lw $t0, -48($fp)
	lw $t1, -52($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -56($fp)
	lw $t1, -56($fp)
	li $t2, 0
	bne $t1, $t2, label1665
	j label1667
label1667:
	li $t0, 0
	sw $t0, -60($fp)
	lw $t0, -24($fp)
	sw $t0, -64($fp)
	lw $t1, -64($fp)
	li $t2, 0
	bne $t1, $t2, label1668
	j label1669
label1668:
	li $t0, 1
	sw $t0, -60($fp)
label1669:
	lw $t0, -24($fp)
	sw $t0, -68($fp)
	lw $t0, -24($fp)
	sw $t0, -72($fp)
	lw $t0, -68($fp)
	lw $t1, -72($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -76($fp)
	lw $t1, -60($fp)
	lw $t2, -76($fp)
	beq $t1, $t2, label1665
	j label1666
label1665:
	li $t0, 1
	sw $t0, -44($fp)
label1666:
	li $t0, 0
	sw $t0, -80($fp)
	jal f8
	sw $v0, -84($fp)
	addi $sp, $sp, 4
	lw $t1, -84($fp)
	li $t2, 0
	bne $t1, $t2, label1671
	j label1670
label1670:
	li $t0, 1
	sw $t0, -80($fp)
label1671:
	li $t0, 0
	sw $t0, -88($fp)
	li $t0, 30150
	sw $t0, -92($fp)
	jal f12
	sw $v0, -96($fp)
	addi $sp, $sp, 4
	lw $t0, -92($fp)
	lw $t1, -96($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -100($fp)
	li $t0, 0
	lw $t1, -100($fp)
	sub $t0, $t0, $t1
	sw $t0, -104($fp)
	li $t0, 0
	lw $t1, -104($fp)
	sub $t0, $t0, $t1
	sw $t0, -108($fp)
	lw $t0, -24($fp)
	sw $t0, -112($fp)
	li $t0, 0
	lw $t1, -112($fp)
	sub $t0, $t0, $t1
	sw $t0, -116($fp)
	lw $t1, -108($fp)
	lw $t2, -116($fp)
	beq $t1, $t2, label1672
	j label1674
label1674:
	lw $t0, -36($fp)
	sw $t0, -120($fp)
	li $t0, 852
	sw $t0, -124($fp)
	lw $t0, -120($fp)
	lw $t1, -124($fp)
	mul $t0, $t0, $t1
	sw $t0, -128($fp)
	lw $t1, -128($fp)
	li $t2, 0
	bne $t1, $t2, label1672
	j label1673
label1672:
	li $t0, 1
	sw $t0, -88($fp)
label1673:
	lw $t0, -12($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -36($fp)
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -144($fp)
	lw $ra, -4($fp)
	lw $v0, -144($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2208
	li $t0, 24933
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	li $t0, 44042
	sw $t0, -96($fp)
	addi $t0, $fp, -24
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
	li $t0, 228
	sw $t0, -120($fp)
	addi $t0, $fp, -24
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
	li $t0, 58271
	sw $t0, -144($fp)
	addi $t0, $fp, -24
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
	li $t0, 2473
	sw $t0, -168($fp)
	addi $t0, $fp, -24
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
	li $t0, 28151
	sw $t0, -192($fp)
	addi $t0, $fp, -24
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
	li $t0, 13316
	sw $t0, -216($fp)
	addi $t0, $fp, -40
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
	li $t0, 38158
	sw $t0, -240($fp)
	addi $t0, $fp, -40
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
	li $t0, 52445
	sw $t0, -264($fp)
	addi $t0, $fp, -40
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
	li $t0, 15108
	sw $t0, -288($fp)
	addi $t0, $fp, -40
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
	li $t0, 23844
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	li $t0, 18498
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	li $t0, 45321
	sw $t0, -336($fp)
	addi $t0, $fp, -60
	sw $t0, -340($fp)
	li $t0, 0
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
	li $t0, 49044
	sw $t0, -360($fp)
	addi $t0, $fp, -60
	sw $t0, -364($fp)
	li $t0, 1
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
	li $t0, 21297
	sw $t0, -384($fp)
	addi $t0, $fp, -60
	sw $t0, -388($fp)
	li $t0, 2
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
	li $t0, 27708
	sw $t0, -408($fp)
	addi $t0, $fp, -60
	sw $t0, -412($fp)
	li $t0, 3
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
	li $t0, 61559
	sw $t0, -432($fp)
	addi $t0, $fp, -60
	sw $t0, -436($fp)
	li $t0, 4
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
	li $t0, 52343
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	li $t0, 19673
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	li $t0, 12424
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	li $t0, 22100
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	li $t0, 64852
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	li $t0, 7852
	sw $t0, -516($fp)
	addi $t0, $fp, -80
	sw $t0, -520($fp)
	li $t0, 0
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
	li $t0, 24259
	sw $t0, -540($fp)
	addi $t0, $fp, -80
	sw $t0, -544($fp)
	li $t0, 1
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
	li $t0, 40290
	sw $t0, -564($fp)
	addi $t0, $fp, -80
	sw $t0, -568($fp)
	li $t0, 2
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
	li $t0, 15626
	sw $t0, -588($fp)
	addi $t0, $fp, -80
	sw $t0, -592($fp)
	li $t0, 3
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
	li $t0, 44563
	sw $t0, -612($fp)
	addi $t0, $fp, -80
	sw $t0, -616($fp)
	li $t0, 4
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
	li $t0, 17246
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	li $t0, 42976
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	li $t0, 9177
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	li $t0, 18099
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	li $t0, 2373
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	li $t0, 53219
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	li $t0, 18327
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	li $t0, 60644
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	li $t0, 55692
	sw $t0, -732($fp)
	lw $t1, -732($fp)
	li $t2, 0
	bne $t1, $t2, label1676
	j label1675
label1675:
	lw $t0, 12($fp)
	sw $t0, -736($fp)
	li $t0, 46478
	sw $t0, -740($fp)
	lw $t0, -736($fp)
	lw $t1, -740($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -744($fp)
	addi $sp, $sp, -4
	lw $t0, -744($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -748($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -748($fp)
	sub $t0, $t0, $t1
	sw $t0, -752($fp)
	addi $t0, $fp, -80
	sw $t0, -756($fp)
	jal f11
	sw $v0, -760($fp)
	addi $sp, $sp, 4
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
	lw $t0, -752($fp)
	lw $t1, -772($fp)
	add $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t1, -776($fp)
	li $t2, 0
	bne $t1, $t2, label1678
	j label1679
label1678:
	li $t0, 0
	sw $t0, -780($fp)
	lw $t0, -316($fp)
	sw $t0, -784($fp)
	lw $t1, -784($fp)
	li $t2, 0
	bne $t1, $t2, label1683
	j label1682
label1683:
	lw $t0, -676($fp)
	sw $t0, -788($fp)
	lw $t1, -788($fp)
	li $t2, 0
	bne $t1, $t2, label1681
	j label1682
label1681:
	li $t0, 1
	sw $t0, -780($fp)
label1682:
	lw $t0, -780($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -796($fp)
	j label1680
label1679:
	li $t0, 0
	sw $t0, -800($fp)
	li $t0, 8424
	sw $t0, -804($fp)
	li $t0, 28315
	sw $t0, -808($fp)
	lw $t0, -804($fp)
	lw $t1, -808($fp)
	add $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t0, -676($fp)
	sw $t0, -816($fp)
	lw $t0, -812($fp)
	lw $t1, -816($fp)
	sub $t0, $t0, $t1
	sw $t0, -820($fp)
	li $t0, 0
	sw $t0, -824($fp)
	lw $t0, -664($fp)
	sw $t0, -828($fp)
	li $t0, 33387
	sw $t0, -832($fp)
	lw $t1, -828($fp)
	lw $t2, -832($fp)
	bge $t1, $t2, label1690
	j label1691
label1690:
	li $t0, 1
	sw $t0, -824($fp)
label1691:
	lw $t1, -820($fp)
	lw $t2, -824($fp)
	bne $t1, $t2, label1688
	j label1689
label1688:
	li $t0, 1
	sw $t0, -800($fp)
label1689:
	li $t0, 0
	sw $t0, -836($fp)
	li $t0, 0
	sw $t0, -840($fp)
	lw $t0, -328($fp)
	sw $t0, -844($fp)
	lw $t0, -472($fp)
	sw $t0, -848($fp)
	lw $t1, -844($fp)
	lw $t2, -848($fp)
	blt $t1, $t2, label1694
	j label1695
label1694:
	li $t0, 1
	sw $t0, -840($fp)
label1695:
	lw $t0, -496($fp)
	sw $t0, -852($fp)
	lw $t1, -840($fp)
	lw $t2, -852($fp)
	bge $t1, $t2, label1692
	j label1693
label1692:
	li $t0, 1
	sw $t0, -836($fp)
label1693:
	lw $t1, -800($fp)
	lw $t2, -836($fp)
	beq $t1, $t2, label1684
	j label1687
label1687:
	lw $t0, 20($fp)
	sw $t0, -856($fp)
	lw $t1, -856($fp)
	li $t2, 0
	bne $t1, $t2, label1684
	j label1685
label1684:
	li $t0, 23532
	sw $t0, -860($fp)
	li $t0, 0
	lw $t1, -860($fp)
	sub $t0, $t0, $t1
	sw $t0, -864($fp)
	lw $ra, -4($fp)
	lw $v0, -864($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1686
label1685:
	li $t0, 0
	sw $t0, -868($fp)
	jal f11
	sw $v0, -872($fp)
	addi $sp, $sp, 4
	lw $t0, -724($fp)
	sw $t0, -876($fp)
	lw $t0, -872($fp)
	lw $t1, -876($fp)
	sub $t0, $t0, $t1
	sw $t0, -880($fp)
	li $t0, 52159
	sw $t0, -884($fp)
	li $t0, 51885
	sw $t0, -888($fp)
	lw $t0, -884($fp)
	lw $t1, -888($fp)
	add $t0, $t0, $t1
	sw $t0, -892($fp)
	li $t0, 3318
	sw $t0, -896($fp)
	lw $t0, -892($fp)
	lw $t1, -896($fp)
	add $t0, $t0, $t1
	sw $t0, -900($fp)
	lw $t1, -880($fp)
	lw $t2, -900($fp)
	bne $t1, $t2, label1699
	j label1700
label1699:
	li $t0, 1
	sw $t0, -868($fp)
label1700:
	lw $t0, -508($fp)
	sw $t0, -904($fp)
	li $t0, 35667
	sw $t0, -908($fp)
	lw $t0, -904($fp)
	lw $t1, -908($fp)
	sub $t0, $t0, $t1
	sw $t0, -912($fp)
	lw $t0, -508($fp)
	sw $t0, -916($fp)
	lw $t0, -912($fp)
	lw $t1, -916($fp)
	sub $t0, $t0, $t1
	sw $t0, -920($fp)
	lw $t1, -868($fp)
	lw $t2, -920($fp)
	bne $t1, $t2, label1696
	j label1697
label1696:
	lw $t0, -676($fp)
	sw $t0, -924($fp)
	j label1698
label1697:
	addi $t0, $fp, -40
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
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -948($fp)
label1698:
label1686:
label1680:
	j label1677
label1676:
	lw $t0, 16($fp)
	sw $t0, -952($fp)
	addi $t0, $fp, -40
	sw $t0, -956($fp)
	lw $t0, 20($fp)
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
	lw $t0, -676($fp)
	sw $t0, -976($fp)
	lw $t0, -972($fp)
	lw $t1, -976($fp)
	mul $t0, $t0, $t1
	sw $t0, -980($fp)
	lw $t1, -952($fp)
	lw $t2, -980($fp)
	beq $t1, $t2, label1704
	j label1702
label1704:
	li $t0, 0
	sw $t0, -984($fp)
	li $t0, 59989
	sw $t0, -988($fp)
	lw $t1, -988($fp)
	li $t2, 0
	bne $t1, $t2, label1706
	j label1705
label1705:
	li $t0, 1
	sw $t0, -984($fp)
label1706:
	li $t0, 50699
	sw $t0, -992($fp)
	lw $t0, -984($fp)
	lw $t1, -992($fp)
	sub $t0, $t0, $t1
	sw $t0, -996($fp)
	jal f11
	sw $v0, -1000($fp)
	addi $sp, $sp, 4
	lw $t0, -996($fp)
	lw $t1, -1000($fp)
	add $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t1, -1004($fp)
	li $t2, 0
	bne $t1, $t2, label1701
	j label1702
label1701:
	li $t0, 0
	sw $t0, -1008($fp)
	addi $t0, $fp, -24
	sw $t0, -1012($fp)
	lw $t0, 4($fp)
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
	lw $t0, -496($fp)
	sw $t0, -1032($fp)
	li $t0, 0
	lw $t1, -1032($fp)
	sub $t0, $t0, $t1
	sw $t0, -1036($fp)
	lw $t0, -1028($fp)
	lw $t1, -1036($fp)
	add $t0, $t0, $t1
	sw $t0, -1040($fp)
	lw $t0, -496($fp)
	sw $t0, -1044($fp)
	li $t0, 0
	lw $t1, -1044($fp)
	sub $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t0, -712($fp)
	sw $t0, -1052($fp)
	lw $t0, -1048($fp)
	lw $t1, -1052($fp)
	sub $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $t1, -1040($fp)
	lw $t2, -1056($fp)
	bne $t1, $t2, label1707
	j label1709
label1709:
	li $t0, 0
	sw $t0, -1060($fp)
	li $t0, 2057
	sw $t0, -1064($fp)
	lw $t0, 12($fp)
	sw $t0, -1068($fp)
	lw $t0, -1064($fp)
	lw $t1, -1068($fp)
	mul $t0, $t0, $t1
	sw $t0, -1072($fp)
	lw $t1, -1072($fp)
	li $t2, 0
	bne $t1, $t2, label1710
	j label1712
label1712:
	li $t0, 19840
	sw $t0, -1076($fp)
	lw $t1, -1076($fp)
	li $t2, 0
	bne $t1, $t2, label1710
	j label1711
label1710:
	li $t0, 1
	sw $t0, -1060($fp)
label1711:
	addi $t0, $fp, -40
	sw $t0, -1080($fp)
	lw $t0, 20($fp)
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
	li $t0, 0
	sw $t0, -1100($fp)
	li $t0, 40813
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -1108($fp)
	lw $t0, -700($fp)
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -1116($fp)
	li $t0, 50015
	sw $t0, -1120($fp)
	li $t0, 1
	sw $t0, -1124($fp)
	lw $t0, -1120($fp)
	lw $t1, -1124($fp)
	mul $t0, $t0, $t1
	sw $t0, -1128($fp)
	lw $t0, -724($fp)
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -1136($fp)
	lw $t0, -712($fp)
	sw $t0, -1140($fp)
	li $t0, 16553
	sw $t0, -1144($fp)
	lw $t0, -1140($fp)
	lw $t1, -1144($fp)
	mul $t0, $t0, $t1
	sw $t0, -1148($fp)
	addi $sp, $sp, -4
	lw $t0, -1108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1148($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -1152($fp)
	addi $sp, $sp, 24
	li $t0, 24770
	sw $t0, -1156($fp)
	lw $t1, -1152($fp)
	lw $t2, -1156($fp)
	bne $t1, $t2, label1713
	j label1714
label1713:
	li $t0, 1
	sw $t0, -1100($fp)
label1714:
	li $t0, 44115
	sw $t0, -1160($fp)
	lw $t0, -88($fp)
	sw $t0, -1164($fp)
	lw $t0, -1160($fp)
	lw $t1, -1164($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1168($fp)
	lw $t0, -688($fp)
	sw $t0, -1172($fp)
	lw $t0, -1168($fp)
	lw $t1, -1172($fp)
	sub $t0, $t0, $t1
	sw $t0, -1176($fp)
	lw $t0, -712($fp)
	sw $t0, -1180($fp)
	lw $t0, -688($fp)
	sw $t0, -1184($fp)
	lw $t0, -1180($fp)
	lw $t1, -1184($fp)
	mul $t0, $t0, $t1
	sw $t0, -1188($fp)
	addi $sp, $sp, -4
	lw $t0, -1060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1096($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1188($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1192($fp)
	addi $sp, $sp, 24
	li $t0, 42016
	sw $t0, -1196($fp)
	lw $t0, -88($fp)
	sw $t0, -1200($fp)
	lw $t0, -1196($fp)
	lw $t1, -1200($fp)
	add $t0, $t0, $t1
	sw $t0, -1204($fp)
	lw $t1, -1192($fp)
	lw $t2, -1204($fp)
	beq $t1, $t2, label1707
	j label1708
label1707:
	li $t0, 1
	sw $t0, -1008($fp)
label1708:
	j label1703
label1702:
label1715:
	addi $t0, $fp, -60
	sw $t0, -1208($fp)
	lw $t0, -460($fp)
	sw $t0, -1212($fp)
	li $t0, 45033
	sw $t0, -1216($fp)
	lw $t0, -1212($fp)
	lw $t1, -1216($fp)
	sub $t0, $t0, $t1
	sw $t0, -1220($fp)
	lw $t0, -472($fp)
	sw $t0, -1224($fp)
	lw $t0, -1220($fp)
	lw $t1, -1224($fp)
	sub $t0, $t0, $t1
	sw $t0, -1228($fp)
	li $t0, 4
	lw $t1, -1228($fp)
	mul $t0, $t0, $t1
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	lw $t1, -1208($fp)
	add $t0, $t0, $t1
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	lw $t1, 0($t0)
	sw $t1, -1240($fp)
	lw $t0, -724($fp)
	sw $t0, -1244($fp)
	lw $t1, -1240($fp)
	lw $t2, -1244($fp)
	bge $t1, $t2, label1716
	j label1717
label1716:
	jal f12
	sw $v0, -1248($fp)
	addi $sp, $sp, 4
	lw $ra, -4($fp)
	lw $v0, -1248($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1715
label1717:
label1703:
label1677:
label1718:
	lw $t0, -460($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -1256($fp)
	lw $t0, -664($fp)
	sw $t0, -1260($fp)
	li $t0, 0
	sw $t0, -1264($fp)
	li $t0, 60115
	sw $t0, -1268($fp)
	lw $t0, 12($fp)
	sw $t0, -1272($fp)
	lw $t0, -1268($fp)
	lw $t1, -1272($fp)
	add $t0, $t0, $t1
	sw $t0, -1276($fp)
	lw $t1, -1276($fp)
	li $t2, 0
	bne $t1, $t2, label1721
	j label1723
label1723:
	li $t0, 47406
	sw $t0, -1280($fp)
	lw $t1, -1280($fp)
	li $t2, 0
	bne $t1, $t2, label1721
	j label1722
label1721:
	li $t0, 1
	sw $t0, -1264($fp)
label1722:
	li $t0, 29018
	sw $t0, -1284($fp)
	addi $t0, $fp, -24
	sw $t0, -1288($fp)
	lw $t0, -484($fp)
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
	addi $sp, $sp, -4
	lw $t0, -1256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1304($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -1308($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -1312($fp)
	jal f8
	sw $v0, -1316($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -1316($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1320($fp)
	addi $sp, $sp, 8
	lw $t1, -1320($fp)
	li $t2, 0
	bne $t1, $t2, label1725
	j label1724
label1724:
	li $t0, 1
	sw $t0, -1312($fp)
label1725:
	lw $t1, -1308($fp)
	lw $t2, -1312($fp)
	bne $t1, $t2, label1719
	j label1720
label1719:
	li $t0, 16701
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	sw $t0, -1332($fp)
	li $t0, 12906
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	sw $t0, -1344($fp)
	li $t0, 42514
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	sw $t0, -1356($fp)
	li $t0, 6858
	sw $t0, -1360($fp)
	li $t0, 59384
	sw $t0, -1364($fp)
	li $t0, 0
	sw $t0, -1368($fp)
	lw $t0, -688($fp)
	sw $t0, -1372($fp)
	lw $t1, -1372($fp)
	li $t2, 0
	bne $t1, $t2, label1727
	j label1726
label1726:
	li $t0, 1
	sw $t0, -1368($fp)
label1727:
	lw $t0, -1364($fp)
	lw $t1, -1368($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1376($fp)
	lw $t0, 12($fp)
	sw $t0, -1380($fp)
	lw $t0, -1376($fp)
	lw $t1, -1380($fp)
	mul $t0, $t0, $t1
	sw $t0, -1384($fp)
	jal f11
	sw $v0, -1388($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1388($fp)
	sub $t0, $t0, $t1
	sw $t0, -1392($fp)
	lw $t0, -1384($fp)
	lw $t1, -1392($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1396($fp)
	li $t0, 0
	sw $t0, -1400($fp)
	addi $t0, $fp, -24
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
	lw $t1, -1420($fp)
	li $t2, 0
	bne $t1, $t2, label1729
	j label1728
label1728:
	li $t0, 1
	sw $t0, -1400($fp)
label1729:
	lw $t0, -1400($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -1424($fp)
	li $t0, 0
	sw $t0, -1428($fp)
	li $t0, 0
	sw $t0, -1432($fp)
	li $t0, 13584
	sw $t0, -1436($fp)
	li $t0, 12253
	sw $t0, -1440($fp)
	lw $t0, -1436($fp)
	lw $t1, -1440($fp)
	sub $t0, $t0, $t1
	sw $t0, -1444($fp)
	lw $t1, -1444($fp)
	li $t2, 0
	bne $t1, $t2, label1734
	j label1733
label1734:
	lw $t0, -1328($fp)
	sw $t0, -1448($fp)
	lw $t1, -1448($fp)
	li $t2, 0
	bne $t1, $t2, label1732
	j label1733
label1732:
	li $t0, 1
	sw $t0, -1432($fp)
label1733:
	lw $t0, -700($fp)
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -1456($fp)
	li $t0, 21796
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -1464($fp)
	li $t0, 0
	sw $t0, -1468($fp)
	lw $t0, -328($fp)
	sw $t0, -1472($fp)
	lw $t0, -472($fp)
	sw $t0, -1476($fp)
	lw $t1, -1472($fp)
	lw $t2, -1476($fp)
	beq $t1, $t2, label1737
	j label1736
label1737:
	lw $t0, -1352($fp)
	sw $t0, -1480($fp)
	lw $t1, -1480($fp)
	li $t2, 0
	bne $t1, $t2, label1735
	j label1736
label1735:
	li $t0, 1
	sw $t0, -1468($fp)
label1736:
	addi $t0, $fp, -40
	sw $t0, -1484($fp)
	li $t0, 3
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
	addi $sp, $sp, -4
	lw $t0, -1432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1500($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -1504($fp)
	addi $sp, $sp, 24
	lw $t0, -676($fp)
	sw $t0, -1508($fp)
	lw $t0, -1504($fp)
	lw $t1, -1508($fp)
	mul $t0, $t0, $t1
	sw $t0, -1512($fp)
	li $t0, 0
	sw $t0, -1516($fp)
	li $t0, 0
	sw $t0, -1520($fp)
	li $t0, 57464
	sw $t0, -1524($fp)
	lw $t0, -1340($fp)
	sw $t0, -1528($fp)
	lw $t0, -1524($fp)
	lw $t1, -1528($fp)
	add $t0, $t0, $t1
	sw $t0, -1532($fp)
	li $t0, 21230
	sw $t0, -1536($fp)
	lw $t1, -1532($fp)
	lw $t2, -1536($fp)
	bge $t1, $t2, label1740
	j label1741
label1740:
	li $t0, 1
	sw $t0, -1520($fp)
label1741:
	addi $t0, $fp, -40
	sw $t0, -1540($fp)
	lw $t0, -664($fp)
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
	lw $t1, -1520($fp)
	lw $t2, -1556($fp)
	ble $t1, $t2, label1738
	j label1739
label1738:
	li $t0, 1
	sw $t0, -1516($fp)
label1739:
	lw $t1, -1512($fp)
	lw $t2, -1516($fp)
	beq $t1, $t2, label1730
	j label1731
label1730:
	li $t0, 1
	sw $t0, -1428($fp)
label1731:
	addi $t0, $fp, -80
	sw $t0, -1560($fp)
	li $t0, 4
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
	j label1718
label1720:
label1742:
	li $t0, 0
	sw $t0, -1580($fp)
	addi $t0, $fp, -80
	sw $t0, -1584($fp)
	li $t0, 0
	sw $t0, -1588($fp)
	li $t0, 15683
	sw $t0, -1592($fp)
	lw $t1, -1592($fp)
	li $t2, 0
	bne $t1, $t2, label1747
	j label1749
label1749:
	lw $t0, -640($fp)
	sw $t0, -1596($fp)
	lw $t1, -1596($fp)
	li $t2, 0
	bne $t1, $t2, label1747
	j label1748
label1747:
	li $t0, 1
	sw $t0, -1588($fp)
label1748:
	li $t0, 4
	lw $t1, -1588($fp)
	mul $t0, $t0, $t1
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	lw $t1, -1584($fp)
	add $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	lw $t1, 0($t0)
	sw $t1, -1608($fp)
	lw $t1, -1608($fp)
	li $t2, 0
	bne $t1, $t2, label1746
	j label1745
label1745:
	li $t0, 1
	sw $t0, -1580($fp)
label1746:
	li $t0, 0
	lw $t1, -1580($fp)
	sub $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $t1, -1612($fp)
	li $t2, 0
	bne $t1, $t2, label1743
	j label1744
label1743:
label1750:
	lw $t0, -472($fp)
	sw $t0, -1616($fp)
	li $t0, 28443
	sw $t0, -1620($fp)
	addi $t0, $fp, -40
	sw $t0, -1624($fp)
	li $t0, 3
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
	lw $t0, -1620($fp)
	lw $t1, -1640($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1644($fp)
	li $t0, 0
	lw $t1, -1644($fp)
	sub $t0, $t0, $t1
	sw $t0, -1648($fp)
	lw $t0, -1616($fp)
	lw $t1, -1648($fp)
	mul $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $t1, -1652($fp)
	li $t2, 0
	bne $t1, $t2, label1751
	j label1752
label1751:
	li $t0, 0
	sw $t0, -1656($fp)
	li $t0, 0
	sw $t0, -1660($fp)
	li $t0, 27354
	sw $t0, -1664($fp)
	lw $t0, 4($fp)
	sw $t0, -1668($fp)
	lw $t1, -1664($fp)
	lw $t2, -1668($fp)
	ble $t1, $t2, label1755
	j label1756
label1755:
	li $t0, 1
	sw $t0, -1660($fp)
label1756:
	li $t0, 14173
	sw $t0, -1672($fp)
	lw $t1, -1660($fp)
	lw $t2, -1672($fp)
	ble $t1, $t2, label1753
	j label1754
label1753:
	li $t0, 1
	sw $t0, -1656($fp)
label1754:
	li $t0, 0
	sw $t0, -1676($fp)
	li $t0, 56221
	sw $t0, -1680($fp)
	lw $t1, -1680($fp)
	li $t2, 0
	bne $t1, $t2, label1760
	j label1759
label1760:
	lw $t0, 20($fp)
	sw $t0, -1684($fp)
	lw $t1, -1684($fp)
	li $t2, 0
	bne $t1, $t2, label1757
	j label1759
label1759:
	lw $t0, -724($fp)
	sw $t0, -1688($fp)
	lw $t1, -1688($fp)
	li $t2, 0
	bne $t1, $t2, label1757
	j label1758
label1757:
	li $t0, 1
	sw $t0, -1676($fp)
label1758:
	li $t0, 37693
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -1696($fp)
	li $t0, 54164
	sw $t0, -1700($fp)
	li $t0, 7514
	sw $t0, -1704($fp)
	lw $t0, -1700($fp)
	lw $t1, -1704($fp)
	add $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $t0, -676($fp)
	sw $t0, -1712($fp)
	lw $t0, -724($fp)
	sw $t0, -1716($fp)
	lw $t0, -1712($fp)
	lw $t1, -1716($fp)
	mul $t0, $t0, $t1
	sw $t0, -1720($fp)
	addi $sp, $sp, -4
	lw $t0, -1656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1720($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1724($fp)
	addi $sp, $sp, 24
	lw $t0, -508($fp)
	sw $t0, -1728($fp)
	lw $t0, -1724($fp)
	lw $t1, -1728($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1732($fp)
	addi $t0, $fp, -40
	sw $t0, -1736($fp)
	li $t0, 0
	sw $t0, -1740($fp)
	li $t0, 35718
	sw $t0, -1744($fp)
	li $t0, 56372
	sw $t0, -1748($fp)
	lw $t1, -1744($fp)
	lw $t2, -1748($fp)
	bne $t1, $t2, label1761
	j label1762
label1761:
	li $t0, 1
	sw $t0, -1740($fp)
label1762:
	li $t0, 4
	lw $t1, -1740($fp)
	mul $t0, $t0, $t1
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	lw $t1, -1736($fp)
	add $t0, $t0, $t1
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	lw $t1, 0($t0)
	sw $t1, -1760($fp)
	lw $t0, -1732($fp)
	lw $t1, -1760($fp)
	add $t0, $t0, $t1
	sw $t0, -1764($fp)
	j label1750
label1752:
	j label1742
label1744:
	lw $t0, -88($fp)
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
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
	addi $t0, $fp, -24
	sw $t0, -1832($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -1852($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
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
	addi $t0, $fp, -40
	sw $t0, -1892($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -1912($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -1932($fp)
	li $t0, 3
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
	lw $t0, -316($fp)
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -328($fp)
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
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
	lw $t0, -1976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1980($fp)
	li $t0, 1
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
	lw $t0, -1996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2000($fp)
	li $t0, 2
	sw $t0, -2004($fp)
	li $t0, 4
	lw $t1, -2004($fp)
	mul $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	lw $t1, -2000($fp)
	add $t0, $t0, $t1
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	lw $t1, 0($t0)
	sw $t1, -2016($fp)
	lw $t0, -2016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2020($fp)
	li $t0, 3
	sw $t0, -2024($fp)
	li $t0, 4
	lw $t1, -2024($fp)
	mul $t0, $t0, $t1
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	lw $t1, -2020($fp)
	add $t0, $t0, $t1
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	lw $t1, 0($t0)
	sw $t1, -2036($fp)
	lw $t0, -2036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2040($fp)
	li $t0, 4
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
	lw $t0, -2056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -460($fp)
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -472($fp)
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -484($fp)
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2080($fp)
	li $t0, 0
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
	lw $t0, -2096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2100($fp)
	li $t0, 1
	sw $t0, -2104($fp)
	li $t0, 4
	lw $t1, -2104($fp)
	mul $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	lw $t1, -2100($fp)
	add $t0, $t0, $t1
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	lw $t1, 0($t0)
	sw $t1, -2116($fp)
	lw $t0, -2116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2120($fp)
	li $t0, 2
	sw $t0, -2124($fp)
	li $t0, 4
	lw $t1, -2124($fp)
	mul $t0, $t0, $t1
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	lw $t1, -2120($fp)
	add $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	lw $t1, 0($t0)
	sw $t1, -2136($fp)
	lw $t0, -2136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2140($fp)
	li $t0, 3
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
	lw $t0, -2156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2160($fp)
	li $t0, 4
	sw $t0, -2164($fp)
	li $t0, 4
	lw $t1, -2164($fp)
	mul $t0, $t0, $t1
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	lw $t1, -2160($fp)
	add $t0, $t0, $t1
	sw $t0, -2172($fp)
	lw $t0, -2172($fp)
	lw $t1, 0($t0)
	sw $t1, -2176($fp)
	lw $t0, -2176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -640($fp)
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -652($fp)
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -664($fp)
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -2192($fp)
	lw $t0, -2192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	sw $t0, -2204($fp)
	lw $t0, -2204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -724($fp)
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	sw $t0, -2212($fp)
	lw $ra, -4($fp)
	lw $v0, -2212($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -44
	li $t0, 8753
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	li $t0, 17588
	sw $t0, -24($fp)
	li $t0, 7538
	sw $t0, -28($fp)
	lw $t0, -24($fp)
	lw $t1, -28($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -32($fp)
	lw $t0, -12($fp)
	sw $t0, -36($fp)
	lw $t1, -32($fp)
	lw $t2, -36($fp)
	ble $t1, $t2, label1763
	j label1764
label1763:
	li $t0, 1
	sw $t0, -20($fp)
label1764:
	addi $sp, $sp, -4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -40($fp)
	addi $sp, $sp, 8
	lw $t0, -12($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 21659
	sw $t0, -48($fp)
	lw $ra, -4($fp)
	lw $v0, -48($fp)
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
