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
	addi $sp, $sp, -12
	li $t0, 27482
	sw $t0, -8($fp)
	li $t0, 0
	sw $t0, -12($fp)
	li $t0, 60158
	sw $t0, -16($fp)
	lw $t1, -16($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label121
label121:
	li $t0, 1
	sw $t0, -12($fp)
label122:
	lw $ra, -4($fp)
	lw $v0, -12($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -6860
	li $t0, 63047
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	li $t0, 45049
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	li $t0, 35345
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	li $t0, 60366
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	li $t0, 35935
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	li $t0, 54019
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	li $t0, 21946
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	li $t0, 16623
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	li $t0, 33905
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	li $t0, 23403
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	li $t0, 42905
	sw $t0, -184($fp)
	addi $t0, $fp, -20
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
	li $t0, 26405
	sw $t0, -208($fp)
	addi $t0, $fp, -20
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
	li $t0, 54375
	sw $t0, -232($fp)
	addi $t0, $fp, -20
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
	li $t0, 51042
	sw $t0, -256($fp)
	addi $t0, $fp, -20
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
	li $t0, 33412
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	li $t0, 2185
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	li $t0, 36117
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	li $t0, 60696
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	li $t0, 11360
	sw $t0, -328($fp)
	addi $t0, $fp, -40
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
	li $t0, 55287
	sw $t0, -352($fp)
	addi $t0, $fp, -40
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
	li $t0, 42948
	sw $t0, -376($fp)
	addi $t0, $fp, -40
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
	li $t0, 6411
	sw $t0, -400($fp)
	addi $t0, $fp, -40
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
	li $t0, 20142
	sw $t0, -424($fp)
	addi $t0, $fp, -40
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
	li $t0, 23286
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	li $t0, 37155
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	li $t0, 8140
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	li $t0, 57679
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	li $t0, 34740
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	li $t0, 55265
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	li $t0, 19625
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	li $t0, 29362
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	li $t0, 52776
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	li $t0, 64674
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 64707
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	li $t0, 47606
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	li $t0, 35074
	sw $t0, -592($fp)
	addi $t0, $fp, -60
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
	li $t0, 53191
	sw $t0, -616($fp)
	addi $t0, $fp, -60
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
	li $t0, 4016
	sw $t0, -640($fp)
	addi $t0, $fp, -60
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
	li $t0, 51697
	sw $t0, -664($fp)
	addi $t0, $fp, -60
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
	li $t0, 21560
	sw $t0, -688($fp)
	addi $t0, $fp, -60
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
	li $t0, 27420
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	li $t0, 29066
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -732($fp)
	li $t0, 47965
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -744($fp)
	li $t0, 16259
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -756($fp)
	li $t0, 14573
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	li $t0, 15842
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	li $t0, 18444
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	li $t0, 50690
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -804($fp)
	li $t0, 11002
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	li $t0, 29805
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	li $t0, 40441
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	lw $t0, -284($fp)
	sw $t0, -844($fp)
	li $t0, 0
	lw $t1, -844($fp)
	sub $t0, $t0, $t1
	sw $t0, -848($fp)
	li $t0, 53951
	sw $t0, -852($fp)
	li $t0, 0
	lw $t1, -852($fp)
	sub $t0, $t0, $t1
	sw $t0, -856($fp)
	lw $t0, -848($fp)
	lw $t1, -856($fp)
	add $t0, $t0, $t1
	sw $t0, -860($fp)
	li $t0, 36216
	sw $t0, -864($fp)
	lw $t0, -860($fp)
	lw $t1, -864($fp)
	add $t0, $t0, $t1
	sw $t0, -868($fp)
	li $t0, 60584
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -972($fp)
	li $t0, 11701
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	sw $t0, -984($fp)
	li $t0, 7835
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	li $t0, 3188
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -1008($fp)
	li $t0, 3845
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1020($fp)
	li $t0, 42575
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	sw $t0, -1032($fp)
	li $t0, 58453
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	sw $t0, -1044($fp)
	li $t0, 23470
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1056($fp)
	li $t0, 6402
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -1068($fp)
	li $t0, 45693
	sw $t0, -1072($fp)
	addi $t0, $fp, -904
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
	li $t0, 22609
	sw $t0, -1096($fp)
	addi $t0, $fp, -904
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
	li $t0, 5573
	sw $t0, -1120($fp)
	addi $t0, $fp, -904
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
	li $t0, 27764
	sw $t0, -1144($fp)
	addi $t0, $fp, -904
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
	li $t0, 57683
	sw $t0, -1168($fp)
	addi $t0, $fp, -904
	sw $t0, -1172($fp)
	li $t0, 4
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
	li $t0, 58764
	sw $t0, -1192($fp)
	addi $t0, $fp, -904
	sw $t0, -1196($fp)
	li $t0, 5
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
	li $t0, 31780
	sw $t0, -1216($fp)
	addi $t0, $fp, -904
	sw $t0, -1220($fp)
	li $t0, 6
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
	li $t0, 43844
	sw $t0, -1240($fp)
	addi $t0, $fp, -904
	sw $t0, -1244($fp)
	li $t0, 7
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
	li $t0, 14788
	sw $t0, -1264($fp)
	addi $t0, $fp, -904
	sw $t0, -1268($fp)
	li $t0, 8
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
	li $t0, 59200
	sw $t0, -1288($fp)
	addi $t0, $fp, -916
	sw $t0, -1292($fp)
	li $t0, 0
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
	li $t0, 7374
	sw $t0, -1312($fp)
	addi $t0, $fp, -916
	sw $t0, -1316($fp)
	li $t0, 1
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
	li $t0, 62754
	sw $t0, -1336($fp)
	addi $t0, $fp, -916
	sw $t0, -1340($fp)
	li $t0, 2
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
	li $t0, 9923
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -1368($fp)
	li $t0, 21947
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	sw $t0, -1380($fp)
	li $t0, 13060
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -1392($fp)
	li $t0, 28368
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -1404($fp)
	li $t0, 7101
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	sw $t0, -1416($fp)
	li $t0, 24062
	sw $t0, -1420($fp)
	addi $t0, $fp, -920
	sw $t0, -1424($fp)
	li $t0, 0
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
	li $t0, 58173
	sw $t0, -1444($fp)
	addi $t0, $fp, -936
	sw $t0, -1448($fp)
	li $t0, 0
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1456($fp)
	lw $t0, -1448($fp)
	lw $t1, -1456($fp)
	add $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t0, -1444($fp)
	lw $t1, -1460($fp)
	sw $t0, 0($t1)
	lw $t0, -1460($fp)
	lw $t1, 0($t0)
	sw $t1, -1464($fp)
	li $t0, 47543
	sw $t0, -1468($fp)
	addi $t0, $fp, -936
	sw $t0, -1472($fp)
	li $t0, 1
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
	li $t0, 12477
	sw $t0, -1492($fp)
	addi $t0, $fp, -936
	sw $t0, -1496($fp)
	li $t0, 2
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
	li $t0, 28853
	sw $t0, -1516($fp)
	addi $t0, $fp, -936
	sw $t0, -1520($fp)
	li $t0, 3
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
	li $t0, 42591
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -1548($fp)
	li $t0, 24179
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	sw $t0, -1560($fp)
	li $t0, 36688
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	sw $t0, -1572($fp)
	li $t0, 45779
	sw $t0, -1576($fp)
	addi $t0, $fp, -960
	sw $t0, -1580($fp)
	li $t0, 0
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
	li $t0, 28024
	sw $t0, -1600($fp)
	addi $t0, $fp, -960
	sw $t0, -1604($fp)
	li $t0, 1
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
	li $t0, 13728
	sw $t0, -1624($fp)
	addi $t0, $fp, -960
	sw $t0, -1628($fp)
	li $t0, 2
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
	li $t0, 38696
	sw $t0, -1648($fp)
	addi $t0, $fp, -960
	sw $t0, -1652($fp)
	li $t0, 3
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $t0, -1652($fp)
	lw $t1, -1660($fp)
	add $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t0, -1648($fp)
	lw $t1, -1664($fp)
	sw $t0, 0($t1)
	lw $t0, -1664($fp)
	lw $t1, 0($t0)
	sw $t1, -1668($fp)
	li $t0, 51494
	sw $t0, -1672($fp)
	addi $t0, $fp, -960
	sw $t0, -1676($fp)
	li $t0, 4
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
	li $t0, 20130
	sw $t0, -1696($fp)
	addi $t0, $fp, -960
	sw $t0, -1700($fp)
	li $t0, 5
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
	li $t0, 18853
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	sw $t0, -1728($fp)
	li $t0, 8567
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	sw $t0, -1740($fp)
	li $t0, 25703
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	sw $t0, -1752($fp)
	li $t0, 46617
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	sw $t0, -1764($fp)
	li $t0, 714
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -1776($fp)
	li $t0, 18932
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	sw $t0, -1788($fp)
	li $t0, 12862
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	sw $t0, -1800($fp)
	li $t0, 44558
	sw $t0, -1804($fp)
	lw $t0, -1804($fp)
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	sw $t0, -1812($fp)
	li $t0, 33720
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -1824($fp)
	li $t0, 6526
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	sw $t0, -1836($fp)
	li $t0, 51933
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	sw $t0, -1848($fp)
	li $t0, 30938
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	sw $t0, -1860($fp)
	li $t0, 16450
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	sw $t0, -1872($fp)
	li $t0, 8344
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	sw $t0, -1884($fp)
	li $t0, 0
	sw $t0, -1888($fp)
	li $t0, 43998
	sw $t0, -1892($fp)
	lw $t1, -1892($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label124
label125:
	li $t0, 0
	sw $t0, -1896($fp)
	li $t0, 62989
	sw $t0, -1900($fp)
	li $t0, 15002
	sw $t0, -1904($fp)
	lw $t1, -1900($fp)
	lw $t2, -1904($fp)
	beq $t1, $t2, label128
	j label127
label128:
	lw $t0, 4($fp)
	sw $t0, -1908($fp)
	lw $t1, -1908($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label127
label126:
	li $t0, 1
	sw $t0, -1896($fp)
label127:
	li $t0, 0
	sw $t0, -1912($fp)
	li $t0, 2525
	sw $t0, -1916($fp)
	li $t0, 37455
	sw $t0, -1920($fp)
	lw $t1, -1916($fp)
	lw $t2, -1920($fp)
	beq $t1, $t2, label129
	j label131
label131:
	lw $t0, -560($fp)
	sw $t0, -1924($fp)
	lw $t1, -1924($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label130
label129:
	li $t0, 1
	sw $t0, -1912($fp)
label130:
	li $t0, 0
	sw $t0, -1928($fp)
	addi $t0, $fp, -920
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
	lw $t1, -1948($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label133
label134:
	lw $t0, -284($fp)
	sw $t0, -1952($fp)
	lw $t1, -1952($fp)
	li $t2, 0
	bne $t1, $t2, label132
	j label133
label132:
	li $t0, 1
	sw $t0, -1928($fp)
label133:
	lw $t0, -1736($fp)
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1960($fp)
	addi $sp, $sp, -4
	lw $t0, -1896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1960($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1964($fp)
	addi $sp, $sp, 20
	lw $t1, -1964($fp)
	li $t2, 0
	bne $t1, $t2, label123
	j label124
label123:
	li $t0, 1
	sw $t0, -1888($fp)
label124:
	lw $t0, -1736($fp)
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1748($fp)
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1760($fp)
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1772($fp)
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1784($fp)
	sw $t0, -1984($fp)
	lw $t0, -1984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1796($fp)
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1808($fp)
	sw $t0, -1992($fp)
	lw $t0, -1992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1820($fp)
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1832($fp)
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1844($fp)
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1856($fp)
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1868($fp)
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1880($fp)
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -836($fp)
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -2024($fp)
	lw $ra, -4($fp)
	lw $v0, -2024($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1736($fp)
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1748($fp)
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1760($fp)
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1772($fp)
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1784($fp)
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1796($fp)
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1808($fp)
	sw $t0, -2052($fp)
	lw $t0, -2052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1820($fp)
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1832($fp)
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1844($fp)
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1856($fp)
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1868($fp)
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1880($fp)
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1856($fp)
	sw $t0, -2080($fp)
	lw $ra, -4($fp)
	lw $v0, -2080($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 772
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	sw $t0, -2092($fp)
	lw $t0, -2088($fp)
	sw $t0, -2096($fp)
	addi $t0, $fp, -60
	sw $t0, -2100($fp)
	lw $t0, -1016($fp)
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
	li $t0, 39182
	sw $t0, -2120($fp)
	lw $t0, -2116($fp)
	lw $t1, -2120($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2124($fp)
	lw $t0, -2096($fp)
	lw $t1, -2124($fp)
	sub $t0, $t0, $t1
	sw $t0, -2128($fp)
label135:
	li $t0, 0
	sw $t0, -2132($fp)
	li $t0, 37460
	sw $t0, -2136($fp)
	lw $t1, -2136($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label140
label140:
	li $t0, 1
	sw $t0, -2132($fp)
label141:
	li $t0, 20287
	sw $t0, -2140($fp)
	lw $t0, -2132($fp)
	lw $t1, -2140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2144($fp)
	lw $t0, -1544($fp)
	sw $t0, -2148($fp)
	lw $t0, -2148($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -2152($fp)
	addi $t0, $fp, -936
	sw $t0, -2156($fp)
	lw $t0, -1796($fp)
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
	li $t0, 0
	sw $t0, -2176($fp)
	lw $t0, -572($fp)
	sw $t0, -2180($fp)
	lw $t1, -2180($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label143
label144:
	li $t0, 58983
	sw $t0, -2184($fp)
	lw $t1, -2184($fp)
	li $t2, 0
	bne $t1, $t2, label142
	j label143
label142:
	li $t0, 1
	sw $t0, -2176($fp)
label143:
	li $t0, 0
	sw $t0, -2188($fp)
	li $t0, 1669
	sw $t0, -2192($fp)
	lw $t1, -2192($fp)
	li $t2, 0
	bne $t1, $t2, label146
	j label145
label145:
	li $t0, 1
	sw $t0, -2188($fp)
label146:
	li $t0, 51188
	sw $t0, -2196($fp)
	lw $t0, -2188($fp)
	lw $t1, -2196($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2200($fp)
	addi $sp, $sp, -4
	lw $t0, -2152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2200($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2204($fp)
	addi $sp, $sp, 20
	lw $t0, -2144($fp)
	lw $t1, -2204($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2208($fp)
	lw $t1, -2208($fp)
	li $t2, 0
	bne $t1, $t2, label136
	j label139
label139:
	li $t0, 53164
	sw $t0, -2212($fp)
	lw $t0, -1736($fp)
	sw $t0, -2216($fp)
	lw $t0, -2212($fp)
	lw $t1, -2216($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2220($fp)
	lw $t1, -2220($fp)
	li $t2, 0
	bne $t1, $t2, label136
	j label138
label138:
	li $t0, 0
	sw $t0, -2224($fp)
	li $t0, 0
	sw $t0, -2228($fp)
	lw $t0, -488($fp)
	sw $t0, -2232($fp)
	lw $t1, -2232($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label149
label149:
	li $t0, 1
	sw $t0, -2228($fp)
label150:
	li $t0, 27707
	sw $t0, -2236($fp)
	lw $t1, -2228($fp)
	lw $t2, -2236($fp)
	bne $t1, $t2, label147
	j label148
label147:
	li $t0, 1
	sw $t0, -2224($fp)
label148:
	li $t0, 57068
	sw $t0, -2240($fp)
	lw $t0, -1808($fp)
	sw $t0, -2244($fp)
	lw $t0, -2240($fp)
	lw $t1, -2244($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2248($fp)
	li $t0, 34235
	sw $t0, -2252($fp)
	lw $t0, -2248($fp)
	lw $t1, -2252($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2256($fp)
	lw $t0, -572($fp)
	sw $t0, -2260($fp)
	lw $t0, -512($fp)
	sw $t0, -2264($fp)
	lw $t0, 20($fp)
	sw $t0, -2268($fp)
	lw $t0, -308($fp)
	sw $t0, -2272($fp)
	lw $t0, -2268($fp)
	lw $t1, -2272($fp)
	add $t0, $t0, $t1
	sw $t0, -2276($fp)
	li $t0, 41587
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -2284($fp)
	addi $sp, $sp, -4
	lw $t0, -2256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2284($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2288($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -2288($fp)
	sub $t0, $t0, $t1
	sw $t0, -2292($fp)
	li $t0, 0
	sw $t0, -2296($fp)
	lw $t0, -1412($fp)
	sw $t0, -2300($fp)
	lw $t1, -2300($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label153
label154:
	lw $t0, -560($fp)
	sw $t0, -2304($fp)
	lw $t1, -2304($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label153
label153:
	li $t0, 25732
	sw $t0, -2308($fp)
	lw $t1, -2308($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label152
label151:
	li $t0, 1
	sw $t0, -2296($fp)
label152:
	li $t0, 0
	sw $t0, -2312($fp)
	lw $t0, -752($fp)
	sw $t0, -2316($fp)
	lw $t0, -764($fp)
	sw $t0, -2320($fp)
	lw $t0, -2316($fp)
	lw $t1, -2320($fp)
	mul $t0, $t0, $t1
	sw $t0, -2324($fp)
	lw $t1, -2324($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label157
label157:
	li $t0, 62048
	sw $t0, -2328($fp)
	lw $t1, -2328($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label156
label155:
	li $t0, 1
	sw $t0, -2312($fp)
label156:
	li $t0, 0
	sw $t0, -2332($fp)
	li $t0, 45059
	sw $t0, -2336($fp)
	lw $t0, -1820($fp)
	sw $t0, -2340($fp)
	lw $t1, -2336($fp)
	lw $t2, -2340($fp)
	beq $t1, $t2, label158
	j label159
label158:
	li $t0, 1
	sw $t0, -2332($fp)
label159:
	li $t0, 0
	sw $t0, -2344($fp)
	lw $t0, -80($fp)
	sw $t0, -2348($fp)
	li $t0, 49277
	sw $t0, -2352($fp)
	lw $t0, -2348($fp)
	lw $t1, -2352($fp)
	mul $t0, $t0, $t1
	sw $t0, -2356($fp)
	li $t0, 0
	sw $t0, -2360($fp)
	li $t0, 1579
	sw $t0, -2364($fp)
	li $t0, 26457
	sw $t0, -2368($fp)
	lw $t0, -2364($fp)
	lw $t1, -2368($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2372($fp)
	lw $t1, -2372($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label163
label164:
	lw $t0, -560($fp)
	sw $t0, -2376($fp)
	lw $t1, -2376($fp)
	li $t2, 0
	bne $t1, $t2, label162
	j label163
label162:
	li $t0, 1
	sw $t0, -2360($fp)
label163:
	li $t0, 0
	sw $t0, -2380($fp)
	li $t0, 0
	sw $t0, -2384($fp)
	li $t0, 4669
	sw $t0, -2388($fp)
	li $t0, 41575
	sw $t0, -2392($fp)
	lw $t1, -2388($fp)
	lw $t2, -2392($fp)
	bne $t1, $t2, label167
	j label168
label167:
	li $t0, 1
	sw $t0, -2384($fp)
label168:
	li $t0, 43033
	sw $t0, -2396($fp)
	lw $t1, -2384($fp)
	lw $t2, -2396($fp)
	beq $t1, $t2, label165
	j label166
label165:
	li $t0, 1
	sw $t0, -2380($fp)
label166:
	addi $t0, $fp, -904
	sw $t0, -2400($fp)
	lw $t0, -572($fp)
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
	addi $sp, $sp, -4
	lw $t0, -2356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2416($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2420($fp)
	addi $sp, $sp, 20
	li $t0, 43048
	sw $t0, -2424($fp)
	lw $t1, -2420($fp)
	lw $t2, -2424($fp)
	blt $t1, $t2, label160
	j label161
label160:
	li $t0, 1
	sw $t0, -2344($fp)
label161:
	li $t0, 49651
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	sw $t0, -2432($fp)
	li $t0, 0
	sw $t0, -2436($fp)
	lw $t0, -1880($fp)
	sw $t0, -2440($fp)
	lw $t0, -548($fp)
	sw $t0, -2444($fp)
	lw $t0, -2440($fp)
	lw $t1, -2444($fp)
	add $t0, $t0, $t1
	sw $t0, -2448($fp)
	lw $t1, -2448($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label171
label171:
	lw $t0, -1412($fp)
	sw $t0, -2452($fp)
	lw $t1, -2452($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -2436($fp)
label170:
	li $t0, 0
	sw $t0, -2456($fp)
	lw $t0, -824($fp)
	sw $t0, -2460($fp)
	lw $t0, -296($fp)
	sw $t0, -2464($fp)
	lw $t0, -2460($fp)
	lw $t1, -2464($fp)
	sub $t0, $t0, $t1
	sw $t0, -2468($fp)
	lw $t1, -2468($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label173
label174:
	lw $t0, -1760($fp)
	sw $t0, -2472($fp)
	lw $t1, -2472($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label173
label172:
	li $t0, 1
	sw $t0, -2456($fp)
label173:
	li $t0, 0
	sw $t0, -2476($fp)
	li $t0, 0
	sw $t0, -2480($fp)
	li $t0, 10089
	sw $t0, -2484($fp)
	li $t0, 0
	lw $t1, -2484($fp)
	sub $t0, $t0, $t1
	sw $t0, -2488($fp)
	lw $t1, -2488($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label179
label179:
	lw $t0, -308($fp)
	sw $t0, -2492($fp)
	lw $t1, -2492($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label178
label177:
	li $t0, 1
	sw $t0, -2480($fp)
label178:
	li $t0, 8474
	sw $t0, -2496($fp)
	lw $t0, -452($fp)
	sw $t0, -2500($fp)
	lw $t0, -2496($fp)
	lw $t1, -2500($fp)
	mul $t0, $t0, $t1
	sw $t0, -2504($fp)
	lw $t0, -500($fp)
	sw $t0, -2508($fp)
	lw $t0, -2504($fp)
	lw $t1, -2508($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2512($fp)
	li $t0, 0
	sw $t0, -2516($fp)
	lw $t0, -548($fp)
	sw $t0, -2520($fp)
	li $t0, 37351
	sw $t0, -2524($fp)
	lw $t0, -2520($fp)
	lw $t1, -2524($fp)
	add $t0, $t0, $t1
	sw $t0, -2528($fp)
	lw $t1, -2528($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label181
label182:
	lw $t0, -1868($fp)
	sw $t0, -2532($fp)
	lw $t1, -2532($fp)
	li $t2, 0
	bne $t1, $t2, label180
	j label181
label180:
	li $t0, 1
	sw $t0, -2516($fp)
label181:
	lw $t0, -776($fp)
	sw $t0, -2536($fp)
	li $t0, 0
	sw $t0, -2540($fp)
	li $t0, 43904
	sw $t0, -2544($fp)
	li $t0, 20846
	sw $t0, -2548($fp)
	lw $t0, -2544($fp)
	lw $t1, -2548($fp)
	mul $t0, $t0, $t1
	sw $t0, -2552($fp)
	lw $t1, -2552($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label185
label185:
	li $t0, 4306
	sw $t0, -2556($fp)
	lw $t1, -2556($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label184
label183:
	li $t0, 1
	sw $t0, -2540($fp)
label184:
	addi $sp, $sp, -4
	lw $t0, -2480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2540($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2560($fp)
	addi $sp, $sp, 24
	lw $t0, -1736($fp)
	sw $t0, -2564($fp)
	lw $t1, -2560($fp)
	lw $t2, -2564($fp)
	bne $t1, $t2, label175
	j label176
label175:
	li $t0, 1
	sw $t0, -2476($fp)
label176:
	li $t0, 18654
	sw $t0, -2568($fp)
	addi $sp, $sp, -4
	lw $t0, -2436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2568($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2572($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -2576($fp)
	li $t0, 19176
	sw $t0, -2580($fp)
	lw $t1, -2580($fp)
	li $t2, 0
	bne $t1, $t2, label187
	j label186
label186:
	li $t0, 1
	sw $t0, -2576($fp)
label187:
	li $t0, 0
	sw $t0, -2584($fp)
	lw $t0, -536($fp)
	sw $t0, -2588($fp)
	li $t0, 23617
	sw $t0, -2592($fp)
	lw $t1, -2588($fp)
	lw $t2, -2592($fp)
	bne $t1, $t2, label188
	j label190
label190:
	lw $t0, -1028($fp)
	sw $t0, -2596($fp)
	lw $t1, -2596($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label189
label188:
	li $t0, 1
	sw $t0, -2584($fp)
label189:
	addi $sp, $sp, -4
	lw $t0, -2432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2584($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2600($fp)
	addi $sp, $sp, 20
	lw $t0, -548($fp)
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	sw $t0, -2608($fp)
	li $t0, 0
	sw $t0, -2612($fp)
	lw $t0, -1556($fp)
	sw $t0, -2616($fp)
	li $t0, 45531
	sw $t0, -2620($fp)
	lw $t0, -2616($fp)
	lw $t1, -2620($fp)
	mul $t0, $t0, $t1
	sw $t0, -2624($fp)
	li $t0, 46729
	sw $t0, -2628($fp)
	lw $t1, -2624($fp)
	lw $t2, -2628($fp)
	bgt $t1, $t2, label191
	j label192
label191:
	li $t0, 1
	sw $t0, -2612($fp)
label192:
	li $t0, 0
	sw $t0, -2632($fp)
	li $t0, 45957
	sw $t0, -2636($fp)
	li $t0, 0
	lw $t1, -2636($fp)
	sub $t0, $t0, $t1
	sw $t0, -2640($fp)
	addi $t0, $fp, -916
	sw $t0, -2644($fp)
	li $t0, 0
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
	li $t0, 30528
	sw $t0, -2664($fp)
	lw $t0, -2660($fp)
	lw $t1, -2664($fp)
	add $t0, $t0, $t1
	sw $t0, -2668($fp)
	li $t0, 0
	sw $t0, -2672($fp)
	lw $t0, -152($fp)
	sw $t0, -2676($fp)
	lw $t1, -2676($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label195
label195:
	li $t0, 1
	sw $t0, -2672($fp)
label196:
	li $t0, 0
	lw $t1, -2672($fp)
	sub $t0, $t0, $t1
	sw $t0, -2680($fp)
	li $t0, 36210
	sw $t0, -2684($fp)
	li $t0, 28003
	sw $t0, -2688($fp)
	lw $t0, -2684($fp)
	lw $t1, -2688($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2692($fp)
	lw $t0, -1412($fp)
	sw $t0, -2696($fp)
	lw $t0, -2692($fp)
	lw $t1, -2696($fp)
	sub $t0, $t0, $t1
	sw $t0, -2700($fp)
	li $t0, 0
	sw $t0, -2704($fp)
	addi $t0, $fp, -40
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
	bne $t1, $t2, label197
	j label199
label199:
	lw $t0, -584($fp)
	sw $t0, -2728($fp)
	lw $t1, -2728($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label198
label197:
	li $t0, 1
	sw $t0, -2704($fp)
label198:
	addi $sp, $sp, -4
	lw $t0, -2640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2704($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2732($fp)
	addi $sp, $sp, 24
	li $t0, 49109
	sw $t0, -2736($fp)
	lw $t1, -2732($fp)
	lw $t2, -2736($fp)
	bne $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -2632($fp)
label194:
	li $t0, 0
	sw $t0, -2740($fp)
	li $t0, 12770
	sw $t0, -2744($fp)
	li $t0, 27865
	sw $t0, -2748($fp)
	lw $t0, -2744($fp)
	lw $t1, -2748($fp)
	sub $t0, $t0, $t1
	sw $t0, -2752($fp)
	lw $t1, -2752($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label201
label202:
	lw $t0, -1772($fp)
	sw $t0, -2756($fp)
	lw $t1, -2756($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -2740($fp)
label201:
	li $t0, 18602
	sw $t0, -2760($fp)
	lw $t0, -2760($fp)
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -2764($fp)
	li $t0, 41468
	sw $t0, -2768($fp)
	addi $sp, $sp, -4
	lw $t0, -2612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2768($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2772($fp)
	addi $sp, $sp, 24
	lw $t0, -1064($fp)
	sw $t0, -2776($fp)
	lw $t0, -2772($fp)
	lw $t1, -2776($fp)
	mul $t0, $t0, $t1
	sw $t0, -2780($fp)
	lw $t0, -116($fp)
	sw $t0, -2784($fp)
	lw $t0, -2784($fp)
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -2788($fp)
	lw $t0, -776($fp)
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -2796($fp)
	li $t0, 0
	sw $t0, -2800($fp)
	li $t0, 50418
	sw $t0, -2804($fp)
	lw $t0, -296($fp)
	sw $t0, -2808($fp)
	lw $t0, -2804($fp)
	lw $t1, -2808($fp)
	mul $t0, $t0, $t1
	sw $t0, -2812($fp)
	lw $t1, -2812($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label205
label205:
	li $t0, 6244
	sw $t0, -2816($fp)
	lw $t1, -2816($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -2800($fp)
label204:
	li $t0, 0
	sw $t0, -2820($fp)
	lw $t0, -1052($fp)
	sw $t0, -2824($fp)
	li $t0, 58918
	sw $t0, -2828($fp)
	lw $t0, -2824($fp)
	lw $t1, -2828($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2832($fp)
	li $t0, 62446
	sw $t0, -2836($fp)
	lw $t1, -2832($fp)
	lw $t2, -2836($fp)
	bne $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -2820($fp)
label207:
	addi $sp, $sp, -4
	lw $t0, -2788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2820($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2840($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -2600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2840($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2844($fp)
	addi $sp, $sp, 20
	li $t0, 31486
	sw $t0, -2848($fp)
	lw $t0, -2848($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -2852($fp)
	addi $sp, $sp, -4
	lw $t0, -2312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2852($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2856($fp)
	addi $sp, $sp, 24
	li $t0, 5377
	sw $t0, -2860($fp)
	lw $t0, -2856($fp)
	lw $t1, -2860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2864($fp)
	lw $t0, -1820($fp)
	sw $t0, -2868($fp)
	li $t0, 61731
	sw $t0, -2872($fp)
	li $t0, 0
	lw $t1, -2872($fp)
	sub $t0, $t0, $t1
	sw $t0, -2876($fp)
	addi $t0, $fp, -904
	sw $t0, -2880($fp)
	li $t0, 5
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
	addi $sp, $sp, -4
	lw $t0, -2864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2896($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2900($fp)
	addi $sp, $sp, 20
	li $t0, 29064
	sw $t0, -2904($fp)
	lw $t0, -2900($fp)
	lw $t1, -2904($fp)
	add $t0, $t0, $t1
	sw $t0, -2908($fp)
	addi $sp, $sp, -4
	lw $t0, -2224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2908($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2912($fp)
	addi $sp, $sp, 20
	li $t0, 14657
	sw $t0, -2916($fp)
	lw $t0, -2912($fp)
	lw $t1, -2916($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2920($fp)
	li $t0, 0
	lw $t1, -2920($fp)
	sub $t0, $t0, $t1
	sw $t0, -2924($fp)
	lw $t1, -2924($fp)
	li $t2, 0
	bne $t1, $t2, label136
	j label137
label136:
	li $t0, 0
	sw $t0, -2928($fp)
	li $t0, 11280
	sw $t0, -2932($fp)
	li $t0, 18810
	sw $t0, -2936($fp)
	lw $t0, -2936($fp)
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	sw $t0, -2940($fp)
	lw $t0, 16($fp)
	sw $t0, -2944($fp)
	lw $t0, -1748($fp)
	sw $t0, -2948($fp)
	lw $t0, -2944($fp)
	lw $t1, -2948($fp)
	add $t0, $t0, $t1
	sw $t0, -2952($fp)
	li $t0, 0
	sw $t0, -2956($fp)
	li $t0, 0
	sw $t0, -2960($fp)
	lw $t0, -1808($fp)
	sw $t0, -2964($fp)
	li $t0, 42078
	sw $t0, -2968($fp)
	lw $t1, -2964($fp)
	lw $t2, -2968($fp)
	ble $t1, $t2, label212
	j label213
label212:
	li $t0, 1
	sw $t0, -2960($fp)
label213:
	lw $t0, -476($fp)
	sw $t0, -2972($fp)
	lw $t1, -2960($fp)
	lw $t2, -2972($fp)
	bne $t1, $t2, label210
	j label211
label210:
	li $t0, 1
	sw $t0, -2956($fp)
label211:
	li $t0, 0
	sw $t0, -2976($fp)
	li $t0, 14504
	sw $t0, -2980($fp)
	lw $t0, -284($fp)
	sw $t0, -2984($fp)
	lw $t0, -2980($fp)
	lw $t1, -2984($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2988($fp)
	li $t0, 13265
	sw $t0, -2992($fp)
	lw $t0, -2988($fp)
	lw $t1, -2992($fp)
	mul $t0, $t0, $t1
	sw $t0, -2996($fp)
	li $t0, 0
	sw $t0, -3000($fp)
	li $t0, 21232
	sw $t0, -3004($fp)
	lw $t0, 12($fp)
	sw $t0, -3008($fp)
	lw $t0, -3004($fp)
	lw $t1, -3008($fp)
	add $t0, $t0, $t1
	sw $t0, -3012($fp)
	lw $t0, -584($fp)
	sw $t0, -3016($fp)
	lw $t1, -3012($fp)
	lw $t2, -3016($fp)
	beq $t1, $t2, label216
	j label217
label216:
	li $t0, 1
	sw $t0, -3000($fp)
label217:
	li $t0, 0
	sw $t0, -3020($fp)
	lw $t0, -1784($fp)
	sw $t0, -3024($fp)
	lw $t0, -1388($fp)
	sw $t0, -3028($fp)
	lw $t0, -3024($fp)
	lw $t1, -3028($fp)
	mul $t0, $t0, $t1
	sw $t0, -3032($fp)
	li $t0, 34897
	sw $t0, -3036($fp)
	lw $t1, -3032($fp)
	lw $t2, -3036($fp)
	beq $t1, $t2, label218
	j label219
label218:
	li $t0, 1
	sw $t0, -3020($fp)
label219:
	lw $t0, -500($fp)
	sw $t0, -3040($fp)
	li $t0, 61386
	sw $t0, -3044($fp)
	lw $t0, -3040($fp)
	lw $t1, -3044($fp)
	mul $t0, $t0, $t1
	sw $t0, -3048($fp)
	lw $t0, -68($fp)
	sw $t0, -3052($fp)
	lw $t0, -3048($fp)
	lw $t1, -3052($fp)
	mul $t0, $t0, $t1
	sw $t0, -3056($fp)
	li $t0, 0
	sw $t0, -3060($fp)
	li $t0, 2055
	sw $t0, -3064($fp)
	lw $t1, -3064($fp)
	li $t2, 0
	bne $t1, $t2, label221
	j label220
label220:
	li $t0, 1
	sw $t0, -3060($fp)
label221:
	addi $sp, $sp, -4
	lw $t0, -2996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3060($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3068($fp)
	addi $sp, $sp, 24
	lw $t1, -3068($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label214
label214:
	li $t0, 1
	sw $t0, -2976($fp)
label215:
	addi $sp, $sp, -4
	lw $t0, -2940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2976($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3072($fp)
	addi $sp, $sp, 20
	lw $t0, -2932($fp)
	lw $t1, -3072($fp)
	mul $t0, $t0, $t1
	sw $t0, -3076($fp)
	li $t0, 0
	sw $t0, -3080($fp)
	li $t0, 0
	sw $t0, -3084($fp)
	li $t0, 0
	sw $t0, -3088($fp)
	lw $t0, -296($fp)
	sw $t0, -3092($fp)
	li $t0, 55221
	sw $t0, -3096($fp)
	lw $t1, -3092($fp)
	lw $t2, -3096($fp)
	bge $t1, $t2, label226
	j label227
label226:
	li $t0, 1
	sw $t0, -3088($fp)
label227:
	li $t0, 4938
	sw $t0, -3100($fp)
	lw $t1, -3088($fp)
	lw $t2, -3100($fp)
	bgt $t1, $t2, label224
	j label225
label224:
	li $t0, 1
	sw $t0, -3084($fp)
label225:
	li $t0, 34732
	sw $t0, -3104($fp)
	lw $t0, -452($fp)
	sw $t0, -3108($fp)
	lw $t0, -3104($fp)
	lw $t1, -3108($fp)
	sub $t0, $t0, $t1
	sw $t0, -3112($fp)
	lw $t0, -80($fp)
	sw $t0, -3116($fp)
	lw $t0, -3112($fp)
	lw $t1, -3116($fp)
	add $t0, $t0, $t1
	sw $t0, -3120($fp)
	lw $t0, -152($fp)
	sw $t0, -3124($fp)
	li $t0, 0
	lw $t1, -3124($fp)
	sub $t0, $t0, $t1
	sw $t0, -3128($fp)
	li $t0, 0
	sw $t0, -3132($fp)
	li $t0, 28899
	sw $t0, -3136($fp)
	lw $t0, -488($fp)
	sw $t0, -3140($fp)
	lw $t0, -3136($fp)
	lw $t1, -3140($fp)
	add $t0, $t0, $t1
	sw $t0, -3144($fp)
	lw $t0, -68($fp)
	sw $t0, -3148($fp)
	lw $t1, -3144($fp)
	lw $t2, -3148($fp)
	beq $t1, $t2, label228
	j label229
label228:
	li $t0, 1
	sw $t0, -3132($fp)
label229:
	li $t0, 0
	sw $t0, -3152($fp)
	li $t0, 50616
	sw $t0, -3156($fp)
	lw $t0, -296($fp)
	sw $t0, -3160($fp)
	lw $t0, -3156($fp)
	lw $t1, -3160($fp)
	add $t0, $t0, $t1
	sw $t0, -3164($fp)
	lw $t1, -3164($fp)
	li $t2, 0
	bne $t1, $t2, label230
	j label232
label232:
	li $t0, 50552
	sw $t0, -3168($fp)
	lw $t1, -3168($fp)
	li $t2, 0
	bne $t1, $t2, label230
	j label231
label230:
	li $t0, 1
	sw $t0, -3152($fp)
label231:
	addi $sp, $sp, -4
	lw $t0, -3084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3152($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3172($fp)
	addi $sp, $sp, 24
	li $t0, 12229
	sw $t0, -3176($fp)
	lw $t0, -1736($fp)
	sw $t0, -3180($fp)
	lw $t0, -3176($fp)
	lw $t1, -3180($fp)
	sub $t0, $t0, $t1
	sw $t0, -3184($fp)
	lw $t1, -3172($fp)
	lw $t2, -3184($fp)
	bgt $t1, $t2, label222
	j label223
label222:
	li $t0, 1
	sw $t0, -3080($fp)
label223:
	lw $t1, -3076($fp)
	lw $t2, -3080($fp)
	beq $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -2928($fp)
label209:
	lw $ra, -4($fp)
	lw $v0, -2928($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label135
label137:
	li $t0, 0
	sw $t0, -3188($fp)
	addi $t0, $fp, -916
	sw $t0, -3192($fp)
	lw $t0, -1028($fp)
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
	lw $t1, -3208($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label236
label236:
	li $t0, 1
	sw $t0, -3188($fp)
label237:
	li $t0, 0
	sw $t0, -3212($fp)
	lw $t0, -80($fp)
	sw $t0, -3216($fp)
	li $t0, 0
	lw $t1, -3216($fp)
	sub $t0, $t0, $t1
	sw $t0, -3220($fp)
	li $t0, 0
	lw $t1, -3220($fp)
	sub $t0, $t0, $t1
	sw $t0, -3224($fp)
	lw $t1, -3224($fp)
	li $t2, 0
	bne $t1, $t2, label239
	j label238
label238:
	li $t0, 1
	sw $t0, -3212($fp)
label239:
	lw $t0, -3188($fp)
	lw $t1, -3212($fp)
	mul $t0, $t0, $t1
	sw $t0, -3228($fp)
	li $t0, 0
	lw $t1, -3228($fp)
	sub $t0, $t0, $t1
	sw $t0, -3232($fp)
	li $t0, 0
	lw $t1, -3232($fp)
	sub $t0, $t0, $t1
	sw $t0, -3236($fp)
	lw $t1, -3236($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label234
label233:
label240:
	li $t0, 0
	sw $t0, -3240($fp)
	li $t0, 0
	sw $t0, -3244($fp)
	li $t0, 0
	sw $t0, -3248($fp)
	li $t0, 56801
	sw $t0, -3252($fp)
	lw $t0, -1412($fp)
	sw $t0, -3256($fp)
	lw $t1, -3252($fp)
	lw $t2, -3256($fp)
	bne $t1, $t2, label247
	j label248
label247:
	li $t0, 1
	sw $t0, -3248($fp)
label248:
	addi $t0, $fp, -916
	sw $t0, -3260($fp)
	lw $t0, -992($fp)
	sw $t0, -3264($fp)
	li $t0, 4
	lw $t1, -3264($fp)
	mul $t0, $t0, $t1
	sw $t0, -3268($fp)
	lw $t0, -3268($fp)
	lw $t1, -3260($fp)
	add $t0, $t0, $t1
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	lw $t1, 0($t0)
	sw $t1, -3276($fp)
	lw $t1, -3248($fp)
	lw $t2, -3276($fp)
	bne $t1, $t2, label245
	j label246
label245:
	li $t0, 1
	sw $t0, -3244($fp)
label246:
	li $t0, 0
	sw $t0, -3280($fp)
	li $t0, 0
	sw $t0, -3284($fp)
	lw $t0, -968($fp)
	sw $t0, -3288($fp)
	lw $t1, -3288($fp)
	li $t2, 0
	bne $t1, $t2, label254
	j label252
label254:
	li $t0, 55631
	sw $t0, -3292($fp)
	lw $t1, -3292($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label252
label253:
	lw $t0, -1016($fp)
	sw $t0, -3296($fp)
	lw $t1, -3296($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label252
label251:
	li $t0, 1
	sw $t0, -3284($fp)
label252:
	li $t0, 0
	sw $t0, -3300($fp)
	li $t0, 54730
	sw $t0, -3304($fp)
	lw $t0, -1400($fp)
	sw $t0, -3308($fp)
	lw $t1, -3304($fp)
	lw $t2, -3308($fp)
	bne $t1, $t2, label255
	j label256
label255:
	li $t0, 1
	sw $t0, -3300($fp)
label256:
	li $t0, 0
	sw $t0, -3312($fp)
	lw $t0, -1400($fp)
	sw $t0, -3316($fp)
	lw $t0, -1052($fp)
	sw $t0, -3320($fp)
	lw $t1, -3316($fp)
	lw $t2, -3320($fp)
	bne $t1, $t2, label259
	j label258
label259:
	li $t0, 1571
	sw $t0, -3324($fp)
	lw $t1, -3324($fp)
	li $t2, 0
	bne $t1, $t2, label257
	j label258
label257:
	li $t0, 1
	sw $t0, -3312($fp)
label258:
	li $t0, 53576
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -3332($fp)
	li $t0, 0
	sw $t0, -3336($fp)
	li $t0, 43449
	sw $t0, -3340($fp)
	lw $t1, -3340($fp)
	li $t2, 0
	bne $t1, $t2, label261
	j label260
label260:
	li $t0, 1
	sw $t0, -3336($fp)
label261:
	li $t0, 52450
	sw $t0, -3344($fp)
	lw $t0, 16($fp)
	sw $t0, -3348($fp)
	lw $t0, -3344($fp)
	lw $t1, -3348($fp)
	mul $t0, $t0, $t1
	sw $t0, -3352($fp)
	lw $t0, -284($fp)
	sw $t0, -3356($fp)
	lw $t0, -3352($fp)
	lw $t1, -3356($fp)
	mul $t0, $t0, $t1
	sw $t0, -3360($fp)
	addi $sp, $sp, -4
	lw $t0, -3300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3360($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3364($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -3368($fp)
	li $t0, 31515
	sw $t0, -3372($fp)
	li $t0, 0
	lw $t1, -3372($fp)
	sub $t0, $t0, $t1
	sw $t0, -3376($fp)
	lw $t1, -3376($fp)
	li $t2, 0
	bne $t1, $t2, label264
	j label263
label264:
	lw $t0, -296($fp)
	sw $t0, -3380($fp)
	lw $t1, -3380($fp)
	li $t2, 0
	bne $t1, $t2, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -3368($fp)
label263:
	li $t0, 0
	sw $t0, -3384($fp)
	li $t0, 0
	sw $t0, -3388($fp)
	lw $t0, -536($fp)
	sw $t0, -3392($fp)
	lw $t0, -452($fp)
	sw $t0, -3396($fp)
	lw $t0, -3392($fp)
	lw $t1, -3396($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3400($fp)
	lw $t1, -3400($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label269
label269:
	lw $t0, 16($fp)
	sw $t0, -3404($fp)
	lw $t1, -3404($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label268
label267:
	li $t0, 1
	sw $t0, -3388($fp)
label268:
	li $t0, 0
	sw $t0, -3408($fp)
	lw $t0, -560($fp)
	sw $t0, -3412($fp)
	lw $t0, -584($fp)
	sw $t0, -3416($fp)
	lw $t1, -3412($fp)
	lw $t2, -3416($fp)
	bne $t1, $t2, label272
	j label271
label272:
	li $t0, 15742
	sw $t0, -3420($fp)
	lw $t1, -3420($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label271
label270:
	li $t0, 1
	sw $t0, -3408($fp)
label271:
	li $t0, 0
	sw $t0, -3424($fp)
	lw $t0, -788($fp)
	sw $t0, -3428($fp)
	lw $t1, -3428($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label275
label275:
	li $t0, 18215
	sw $t0, -3432($fp)
	lw $t1, -3432($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -3424($fp)
label274:
	li $t0, 0
	sw $t0, -3436($fp)
	lw $t0, -476($fp)
	sw $t0, -3440($fp)
	lw $t0, -3440($fp)
	sw $t0, 20($fp)
	lw $t0, 20($fp)
	sw $t0, -3444($fp)
	li $t0, 0
	sw $t0, -3448($fp)
	addi $t0, $fp, -916
	sw $t0, -3452($fp)
	lw $t0, -1364($fp)
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
	lw $t1, -3468($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label280
label281:
	li $t0, 39690
	sw $t0, -3472($fp)
	lw $t1, -3472($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label280
label279:
	li $t0, 1
	sw $t0, -3448($fp)
label280:
	li $t0, 0
	sw $t0, -3476($fp)
	li $t0, 10919
	sw $t0, -3480($fp)
	lw $t1, -3480($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label285
label285:
	lw $t0, -740($fp)
	sw $t0, -3484($fp)
	lw $t1, -3484($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label284
label284:
	li $t0, 58019
	sw $t0, -3488($fp)
	lw $t1, -3488($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -3476($fp)
label283:
	li $t0, 0
	sw $t0, -3492($fp)
	lw $t0, -1004($fp)
	sw $t0, -3496($fp)
	lw $t0, -452($fp)
	sw $t0, -3500($fp)
	lw $t1, -3496($fp)
	lw $t2, -3500($fp)
	bne $t1, $t2, label288
	j label287
label288:
	li $t0, 34313
	sw $t0, -3504($fp)
	lw $t1, -3504($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label287
label286:
	li $t0, 1
	sw $t0, -3492($fp)
label287:
	addi $sp, $sp, -4
	lw $t0, -3444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3492($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3508($fp)
	addi $sp, $sp, 20
	lw $t1, -3508($fp)
	li $t2, 0
	bne $t1, $t2, label276
	j label278
label278:
	li $t0, 39983
	sw $t0, -3512($fp)
	lw $t1, -3512($fp)
	li $t2, 0
	bne $t1, $t2, label276
	j label277
label276:
	li $t0, 1
	sw $t0, -3436($fp)
label277:
	li $t0, 0
	sw $t0, -3516($fp)
	li $t0, 0
	sw $t0, -3520($fp)
	li $t0, 31395
	sw $t0, -3524($fp)
	lw $t1, -3524($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label291
label291:
	li $t0, 1
	sw $t0, -3520($fp)
label292:
	li $t0, 61507
	sw $t0, -3528($fp)
	lw $t1, -3520($fp)
	lw $t2, -3528($fp)
	blt $t1, $t2, label289
	j label290
label289:
	li $t0, 1
	sw $t0, -3516($fp)
label290:
	addi $sp, $sp, -4
	lw $t0, -3388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3516($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3532($fp)
	addi $sp, $sp, 24
	lw $t0, -1388($fp)
	sw $t0, -3536($fp)
	lw $t1, -3532($fp)
	lw $t2, -3536($fp)
	beq $t1, $t2, label265
	j label266
label265:
	li $t0, 1
	sw $t0, -3384($fp)
label266:
	addi $sp, $sp, -4
	lw $t0, -3284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3384($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3540($fp)
	addi $sp, $sp, 20
	li $t0, 62957
	sw $t0, -3544($fp)
	lw $t1, -3540($fp)
	lw $t2, -3544($fp)
	bge $t1, $t2, label249
	j label250
label249:
	li $t0, 1
	sw $t0, -3280($fp)
label250:
	lw $t1, -3244($fp)
	lw $t2, -3280($fp)
	beq $t1, $t2, label243
	j label244
label243:
	li $t0, 1
	sw $t0, -3240($fp)
label244:
	li $t0, 0
	sw $t0, -3548($fp)
	li $t0, 0
	sw $t0, -3552($fp)
	li $t0, 24091
	sw $t0, -3556($fp)
	lw $t1, -3556($fp)
	li $t2, 0
	bne $t1, $t2, label296
	j label295
label295:
	li $t0, 1
	sw $t0, -3552($fp)
label296:
	li $t0, 0
	lw $t1, -3552($fp)
	sub $t0, $t0, $t1
	sw $t0, -3560($fp)
	li $t0, 0
	sw $t0, -3564($fp)
	li $t0, 11327
	sw $t0, -3568($fp)
	lw $t1, -3568($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label297
label297:
	li $t0, 1
	sw $t0, -3564($fp)
label298:
	lw $t1, -3560($fp)
	lw $t2, -3564($fp)
	blt $t1, $t2, label293
	j label294
label293:
	li $t0, 1
	sw $t0, -3548($fp)
label294:
	lw $t1, -3240($fp)
	lw $t2, -3548($fp)
	bne $t1, $t2, label241
	j label242
label241:
label299:
	li $t0, 0
	sw $t0, -3572($fp)
	li $t0, 38421
	sw $t0, -3576($fp)
	li $t0, 59635
	sw $t0, -3580($fp)
	lw $t1, -3576($fp)
	lw $t2, -3580($fp)
	bge $t1, $t2, label302
	j label303
label302:
	li $t0, 1
	sw $t0, -3572($fp)
label303:
	li $t0, 0
	sw $t0, -3584($fp)
	li $t0, 0
	sw $t0, -3588($fp)
	lw $t0, -1052($fp)
	sw $t0, -3592($fp)
	lw $t0, -1724($fp)
	sw $t0, -3596($fp)
	lw $t1, -3592($fp)
	lw $t2, -3596($fp)
	bgt $t1, $t2, label306
	j label307
label306:
	li $t0, 1
	sw $t0, -3588($fp)
label307:
	li $t0, 22437
	sw $t0, -3600($fp)
	lw $t1, -3588($fp)
	lw $t2, -3600($fp)
	beq $t1, $t2, label304
	j label305
label304:
	li $t0, 1
	sw $t0, -3584($fp)
label305:
	addi $t0, $fp, -960
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
	li $t0, 11925
	sw $t0, -3624($fp)
	li $t0, 37357
	sw $t0, -3628($fp)
	lw $t0, -3624($fp)
	lw $t1, -3628($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3632($fp)
	lw $t0, -68($fp)
	sw $t0, -3636($fp)
	lw $t0, -3632($fp)
	lw $t1, -3636($fp)
	sub $t0, $t0, $t1
	sw $t0, -3640($fp)
	addi $sp, $sp, -4
	lw $t0, -3572($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3640($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3644($fp)
	addi $sp, $sp, 20
	lw $t1, -3644($fp)
	li $t2, 0
	bne $t1, $t2, label300
	j label301
label300:
	addi $t0, $fp, -936
	sw $t0, -3648($fp)
	li $t0, 3
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
	lw $t1, -3664($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label308
label308:
	li $t0, 0
	sw $t0, -3668($fp)
	lw $t0, -1040($fp)
	sw $t0, -3672($fp)
	li $t0, 0
	lw $t1, -3672($fp)
	sub $t0, $t0, $t1
	sw $t0, -3676($fp)
	lw $t1, -3676($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label315
label314:
	li $t0, 1
	sw $t0, -3668($fp)
label315:
	li $t0, 64573
	sw $t0, -3680($fp)
	lw $t0, -3668($fp)
	lw $t1, -3680($fp)
	sub $t0, $t0, $t1
	sw $t0, -3684($fp)
	addi $t0, $fp, -920
	sw $t0, -3688($fp)
	li $t0, 0
	sw $t0, -3692($fp)
	li $t0, 4
	lw $t1, -3692($fp)
	mul $t0, $t0, $t1
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	lw $t1, -3688($fp)
	add $t0, $t0, $t1
	sw $t0, -3700($fp)
	lw $t0, -3700($fp)
	lw $t1, 0($t0)
	sw $t1, -3704($fp)
	li $t0, 0
	sw $t0, -3708($fp)
	li $t0, 30433
	sw $t0, -3712($fp)
	li $t0, 65370
	sw $t0, -3716($fp)
	lw $t1, -3712($fp)
	lw $t2, -3716($fp)
	bne $t1, $t2, label316
	j label318
label318:
	li $t0, 53685
	sw $t0, -3720($fp)
	lw $t1, -3720($fp)
	li $t2, 0
	bne $t1, $t2, label316
	j label317
label316:
	li $t0, 1
	sw $t0, -3708($fp)
label317:
	li $t0, 19372
	sw $t0, -3724($fp)
	lw $t0, -3724($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -3728($fp)
	lw $t0, -1376($fp)
	sw $t0, -3732($fp)
	li $t0, 3863
	sw $t0, -3736($fp)
	lw $t0, -3732($fp)
	lw $t1, -3736($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3740($fp)
	addi $sp, $sp, -4
	lw $t0, -3704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3740($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3744($fp)
	addi $sp, $sp, 20
	lw $t0, -3684($fp)
	lw $t1, -3744($fp)
	add $t0, $t0, $t1
	sw $t0, -3748($fp)
	lw $t1, -3748($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label312
label311:
	li $t0, 27839
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	sw $t0, -3824($fp)
	li $t0, 15799
	sw $t0, -3828($fp)
	addi $t0, $fp, -3784
	sw $t0, -3832($fp)
	li $t0, 0
	sw $t0, -3836($fp)
	lw $t0, -3836($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3840($fp)
	lw $t0, -3832($fp)
	lw $t1, -3840($fp)
	add $t0, $t0, $t1
	sw $t0, -3844($fp)
	lw $t0, -3828($fp)
	lw $t1, -3844($fp)
	sw $t0, 0($t1)
	lw $t0, -3844($fp)
	lw $t1, 0($t0)
	sw $t1, -3848($fp)
	li $t0, 10532
	sw $t0, -3852($fp)
	addi $t0, $fp, -3784
	sw $t0, -3856($fp)
	li $t0, 1
	sw $t0, -3860($fp)
	lw $t0, -3860($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3864($fp)
	lw $t0, -3856($fp)
	lw $t1, -3864($fp)
	add $t0, $t0, $t1
	sw $t0, -3868($fp)
	lw $t0, -3852($fp)
	lw $t1, -3868($fp)
	sw $t0, 0($t1)
	lw $t0, -3868($fp)
	lw $t1, 0($t0)
	sw $t1, -3872($fp)
	li $t0, 43581
	sw $t0, -3876($fp)
	addi $t0, $fp, -3784
	sw $t0, -3880($fp)
	li $t0, 2
	sw $t0, -3884($fp)
	lw $t0, -3884($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3888($fp)
	lw $t0, -3880($fp)
	lw $t1, -3888($fp)
	add $t0, $t0, $t1
	sw $t0, -3892($fp)
	lw $t0, -3876($fp)
	lw $t1, -3892($fp)
	sw $t0, 0($t1)
	lw $t0, -3892($fp)
	lw $t1, 0($t0)
	sw $t1, -3896($fp)
	li $t0, 47315
	sw $t0, -3900($fp)
	addi $t0, $fp, -3784
	sw $t0, -3904($fp)
	li $t0, 3
	sw $t0, -3908($fp)
	lw $t0, -3908($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3912($fp)
	lw $t0, -3904($fp)
	lw $t1, -3912($fp)
	add $t0, $t0, $t1
	sw $t0, -3916($fp)
	lw $t0, -3900($fp)
	lw $t1, -3916($fp)
	sw $t0, 0($t1)
	lw $t0, -3916($fp)
	lw $t1, 0($t0)
	sw $t1, -3920($fp)
	li $t0, 62983
	sw $t0, -3924($fp)
	addi $t0, $fp, -3784
	sw $t0, -3928($fp)
	li $t0, 4
	sw $t0, -3932($fp)
	lw $t0, -3932($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3936($fp)
	lw $t0, -3928($fp)
	lw $t1, -3936($fp)
	add $t0, $t0, $t1
	sw $t0, -3940($fp)
	lw $t0, -3924($fp)
	lw $t1, -3940($fp)
	sw $t0, 0($t1)
	lw $t0, -3940($fp)
	lw $t1, 0($t0)
	sw $t1, -3944($fp)
	li $t0, 21495
	sw $t0, -3948($fp)
	addi $t0, $fp, -3784
	sw $t0, -3952($fp)
	li $t0, 5
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3960($fp)
	lw $t0, -3952($fp)
	lw $t1, -3960($fp)
	add $t0, $t0, $t1
	sw $t0, -3964($fp)
	lw $t0, -3948($fp)
	lw $t1, -3964($fp)
	sw $t0, 0($t1)
	lw $t0, -3964($fp)
	lw $t1, 0($t0)
	sw $t1, -3968($fp)
	li $t0, 35355
	sw $t0, -3972($fp)
	addi $t0, $fp, -3784
	sw $t0, -3976($fp)
	li $t0, 6
	sw $t0, -3980($fp)
	lw $t0, -3980($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3984($fp)
	lw $t0, -3976($fp)
	lw $t1, -3984($fp)
	add $t0, $t0, $t1
	sw $t0, -3988($fp)
	lw $t0, -3972($fp)
	lw $t1, -3988($fp)
	sw $t0, 0($t1)
	lw $t0, -3988($fp)
	lw $t1, 0($t0)
	sw $t1, -3992($fp)
	li $t0, 64554
	sw $t0, -3996($fp)
	addi $t0, $fp, -3784
	sw $t0, -4000($fp)
	li $t0, 7
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4008($fp)
	lw $t0, -4000($fp)
	lw $t1, -4008($fp)
	add $t0, $t0, $t1
	sw $t0, -4012($fp)
	lw $t0, -3996($fp)
	lw $t1, -4012($fp)
	sw $t0, 0($t1)
	lw $t0, -4012($fp)
	lw $t1, 0($t0)
	sw $t1, -4016($fp)
	li $t0, 10689
	sw $t0, -4020($fp)
	addi $t0, $fp, -3784
	sw $t0, -4024($fp)
	li $t0, 8
	sw $t0, -4028($fp)
	lw $t0, -4028($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4032($fp)
	lw $t0, -4024($fp)
	lw $t1, -4032($fp)
	add $t0, $t0, $t1
	sw $t0, -4036($fp)
	lw $t0, -4020($fp)
	lw $t1, -4036($fp)
	sw $t0, 0($t1)
	lw $t0, -4036($fp)
	lw $t1, 0($t0)
	sw $t1, -4040($fp)
	li $t0, 25450
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	sw $t0, -4052($fp)
	li $t0, 61975
	sw $t0, -4056($fp)
	addi $t0, $fp, -3812
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
	li $t0, 34780
	sw $t0, -4080($fp)
	addi $t0, $fp, -3812
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
	li $t0, 36778
	sw $t0, -4104($fp)
	addi $t0, $fp, -3812
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
	li $t0, 8364
	sw $t0, -4128($fp)
	addi $t0, $fp, -3812
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
	li $t0, 6601
	sw $t0, -4152($fp)
	addi $t0, $fp, -3812
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
	li $t0, 24647
	sw $t0, -4176($fp)
	addi $t0, $fp, -3812
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
	li $t0, 39099
	sw $t0, -4200($fp)
	addi $t0, $fp, -3812
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
	li $t0, 29039
	sw $t0, -4224($fp)
	lw $t0, -4224($fp)
	sw $t0, -4228($fp)
	lw $t0, -4228($fp)
	sw $t0, -4232($fp)
	li $t0, 0
	sw $t0, -4236($fp)
	lw $t0, -812($fp)
	sw $t0, -4240($fp)
	lw $t0, -4048($fp)
	sw $t0, -4244($fp)
	lw $t0, -4240($fp)
	lw $t1, -4244($fp)
	sub $t0, $t0, $t1
	sw $t0, -4248($fp)
	li $t0, 0
	sw $t0, -4252($fp)
	li $t0, 20672
	sw $t0, -4256($fp)
	lw $t1, -4256($fp)
	li $t2, 0
	bne $t1, $t2, label322
	j label321
label321:
	li $t0, 1
	sw $t0, -4252($fp)
label322:
	li $t0, 0
	lw $t1, -4252($fp)
	sub $t0, $t0, $t1
	sw $t0, -4260($fp)
	li $t0, 0
	sw $t0, -4264($fp)
	lw $t0, -1556($fp)
	sw $t0, -4268($fp)
	lw $t1, -4268($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label323
label323:
	li $t0, 1
	sw $t0, -4264($fp)
label324:
	li $t0, 33198
	sw $t0, -4272($fp)
	lw $t0, -560($fp)
	sw $t0, -4276($fp)
	lw $t0, -4272($fp)
	lw $t1, -4276($fp)
	mul $t0, $t0, $t1
	sw $t0, -4280($fp)
	lw $t0, -776($fp)
	sw $t0, -4284($fp)
	lw $t0, -4280($fp)
	lw $t1, -4284($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4288($fp)
	li $t0, 63069
	sw $t0, -4292($fp)
	lw $t0, -4292($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -4296($fp)
	addi $sp, $sp, -4
	lw $t0, -4248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4296($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4300($fp)
	addi $sp, $sp, 24
	li $t0, 25640
	sw $t0, -4304($fp)
	li $t0, 0
	lw $t1, -4304($fp)
	sub $t0, $t0, $t1
	sw $t0, -4308($fp)
	lw $t1, -4300($fp)
	lw $t2, -4308($fp)
	ble $t1, $t2, label319
	j label320
label319:
	li $t0, 1
	sw $t0, -4236($fp)
label320:
	lw $t0, -776($fp)
	sw $t0, -4312($fp)
	addi $t0, $fp, -936
	sw $t0, -4316($fp)
	li $t0, 3
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
	lw $t0, -4312($fp)
	lw $t1, -4332($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4336($fp)
	addi $t0, $fp, -60
	sw $t0, -4340($fp)
	li $t0, 0
	sw $t0, -4344($fp)
	lw $t0, -80($fp)
	sw $t0, -4348($fp)
	lw $t1, -4348($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label327
label327:
	li $t0, 45012
	sw $t0, -4352($fp)
	lw $t1, -4352($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label326
label325:
	li $t0, 1
	sw $t0, -4344($fp)
label326:
	li $t0, 4
	lw $t1, -4344($fp)
	mul $t0, $t0, $t1
	sw $t0, -4356($fp)
	lw $t0, -4356($fp)
	lw $t1, -4340($fp)
	add $t0, $t0, $t1
	sw $t0, -4360($fp)
	lw $t0, -4360($fp)
	lw $t1, 0($t0)
	sw $t1, -4364($fp)
	lw $t0, -4336($fp)
	lw $t1, -4364($fp)
	add $t0, $t0, $t1
	sw $t0, -4368($fp)
	li $t0, 0
	sw $t0, -4372($fp)
	li $t0, 62669
	sw $t0, -4376($fp)
	lw $t1, -4376($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label331
label331:
	li $t0, 24369
	sw $t0, -4380($fp)
	lw $t1, -4380($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label328
label330:
	li $t0, 38485
	sw $t0, -4384($fp)
	lw $t0, -572($fp)
	sw $t0, -4388($fp)
	li $t0, 0
	lw $t1, -4388($fp)
	sub $t0, $t0, $t1
	sw $t0, -4392($fp)
	li $t0, 0
	lw $t1, -4392($fp)
	sub $t0, $t0, $t1
	sw $t0, -4396($fp)
	addi $t0, $fp, -3812
	sw $t0, -4400($fp)
	lw $t0, -4228($fp)
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
	li $t0, 33161
	sw $t0, -4420($fp)
	lw $t0, -4420($fp)
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -4424($fp)
	addi $sp, $sp, -4
	lw $t0, -4384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4424($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4428($fp)
	addi $sp, $sp, 20
	lw $t1, -4428($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label329
label328:
	li $t0, 1
	sw $t0, -4372($fp)
label329:
	addi $t0, $fp, -3784
	sw $t0, -4432($fp)
	li $t0, 16686
	sw $t0, -4436($fp)
	li $t0, 61000
	sw $t0, -4440($fp)
	lw $t0, -4436($fp)
	lw $t1, -4440($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4444($fp)
	lw $t0, -104($fp)
	sw $t0, -4448($fp)
	lw $t0, -4444($fp)
	lw $t1, -4448($fp)
	mul $t0, $t0, $t1
	sw $t0, -4452($fp)
	li $t0, 4
	lw $t1, -4452($fp)
	mul $t0, $t0, $t1
	sw $t0, -4456($fp)
	lw $t0, -4456($fp)
	lw $t1, -4432($fp)
	add $t0, $t0, $t1
	sw $t0, -4460($fp)
	lw $t0, -4460($fp)
	lw $t1, 0($t0)
	sw $t1, -4464($fp)
	li $t0, 0
	sw $t0, -4468($fp)
	li $t0, 2050
	sw $t0, -4472($fp)
	lw $t1, -4472($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label332
label332:
	li $t0, 1
	sw $t0, -4468($fp)
label333:
	li $t0, 0
	lw $t1, -4468($fp)
	sub $t0, $t0, $t1
	sw $t0, -4476($fp)
	li $t0, 27222
	sw $t0, -4480($fp)
	li $t0, 0
	sw $t0, -4484($fp)
	li $t0, 0
	sw $t0, -4488($fp)
	li $t0, 0
	sw $t0, -4492($fp)
	lw $t0, -3820($fp)
	sw $t0, -4496($fp)
	lw $t1, -4496($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label338
label338:
	li $t0, 1
	sw $t0, -4492($fp)
label339:
	li $t0, 28487
	sw $t0, -4500($fp)
	lw $t1, -4492($fp)
	lw $t2, -4500($fp)
	beq $t1, $t2, label336
	j label337
label336:
	li $t0, 1
	sw $t0, -4488($fp)
label337:
	li $t0, 0
	sw $t0, -4504($fp)
	li $t0, 40474
	sw $t0, -4508($fp)
	li $t0, 2575
	sw $t0, -4512($fp)
	lw $t0, -4508($fp)
	lw $t1, -4512($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4516($fp)
	lw $t1, -4516($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label341
label342:
	lw $t0, -812($fp)
	sw $t0, -4520($fp)
	lw $t1, -4520($fp)
	li $t2, 0
	bne $t1, $t2, label340
	j label341
label340:
	li $t0, 1
	sw $t0, -4504($fp)
label341:
	li $t0, 0
	sw $t0, -4524($fp)
	lw $t0, -284($fp)
	sw $t0, -4528($fp)
	lw $t1, -4528($fp)
	li $t2, 0
	bne $t1, $t2, label344
	j label343
label343:
	li $t0, 1
	sw $t0, -4524($fp)
label344:
	li $t0, 0
	sw $t0, -4532($fp)
	li $t0, 5694
	sw $t0, -4536($fp)
	lw $t1, -4536($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label346
label348:
	li $t0, 31333
	sw $t0, -4540($fp)
	lw $t1, -4540($fp)
	li $t2, 0
	bne $t1, $t2, label347
	j label346
label347:
	li $t0, 20123
	sw $t0, -4544($fp)
	lw $t1, -4544($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label346
label345:
	li $t0, 1
	sw $t0, -4532($fp)
label346:
	addi $sp, $sp, -4
	lw $t0, -4488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4532($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4548($fp)
	addi $sp, $sp, 20
	li $t0, 47076
	sw $t0, -4552($fp)
	lw $t1, -4548($fp)
	lw $t2, -4552($fp)
	bgt $t1, $t2, label334
	j label335
label334:
	li $t0, 1
	sw $t0, -4484($fp)
label335:
	li $t0, 0
	sw $t0, -4556($fp)
	lw $t0, -1544($fp)
	sw $t0, -4560($fp)
	li $t0, 23684
	sw $t0, -4564($fp)
	lw $t0, -4560($fp)
	lw $t1, -4564($fp)
	mul $t0, $t0, $t1
	sw $t0, -4568($fp)
	lw $t1, -4568($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label350
label351:
	lw $t0, -1412($fp)
	sw $t0, -4572($fp)
	lw $t1, -4572($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label350
label349:
	li $t0, 1
	sw $t0, -4556($fp)
label350:
	li $t0, 0
	sw $t0, -4576($fp)
	li $t0, 5882
	sw $t0, -4580($fp)
	lw $t1, -4580($fp)
	li $t2, 0
	bne $t1, $t2, label353
	j label352
label352:
	li $t0, 1
	sw $t0, -4576($fp)
label353:
	lw $t0, -488($fp)
	sw $t0, -4584($fp)
	lw $t0, -4576($fp)
	lw $t1, -4584($fp)
	add $t0, $t0, $t1
	sw $t0, -4588($fp)
	addi $sp, $sp, -4
	lw $t0, -4476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4588($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4592($fp)
	addi $sp, $sp, 24
	li $t0, 10579
	sw $t0, -4596($fp)
	lw $t0, -4592($fp)
	lw $t1, -4596($fp)
	add $t0, $t0, $t1
	sw $t0, -4600($fp)
	li $t0, 0
	sw $t0, -4604($fp)
	lw $t0, -152($fp)
	sw $t0, -4608($fp)
	lw $t1, -4608($fp)
	li $t2, 0
	bne $t1, $t2, label357
	j label355
label357:
	li $t0, 60541
	sw $t0, -4612($fp)
	lw $t1, -4612($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label355
label356:
	lw $t0, 12($fp)
	sw $t0, -4616($fp)
	lw $t1, -4616($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label355
label354:
	li $t0, 1
	sw $t0, -4604($fp)
label355:
	lw $t0, 16($fp)
	sw $t0, -4620($fp)
	lw $t0, -560($fp)
	sw $t0, -4624($fp)
	lw $t0, -4620($fp)
	lw $t1, -4624($fp)
	sub $t0, $t0, $t1
	sw $t0, -4628($fp)
	lw $t0, 8($fp)
	sw $t0, -4632($fp)
	lw $t0, -4628($fp)
	lw $t1, -4632($fp)
	sub $t0, $t0, $t1
	sw $t0, -4636($fp)
	lw $t0, -1412($fp)
	sw $t0, -4640($fp)
	lw $t0, -4640($fp)
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -4644($fp)
	li $t0, 0
	sw $t0, -4648($fp)
	li $t0, 24666
	sw $t0, -4652($fp)
	lw $t0, -152($fp)
	sw $t0, -4656($fp)
	lw $t0, -4652($fp)
	lw $t1, -4656($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4660($fp)
	lw $t0, 4($fp)
	sw $t0, -4664($fp)
	lw $t1, -4660($fp)
	lw $t2, -4664($fp)
	bge $t1, $t2, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -4648($fp)
label359:
	addi $sp, $sp, -4
	lw $t0, -4600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4648($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4668($fp)
	addi $sp, $sp, 24
	li $t0, 24755
	sw $t0, -4672($fp)
	lw $t0, -4668($fp)
	lw $t1, -4672($fp)
	mul $t0, $t0, $t1
	sw $t0, -4676($fp)
	li $t0, 0
	sw $t0, -4680($fp)
	li $t0, 39046
	sw $t0, -4684($fp)
	li $t0, 36063
	sw $t0, -4688($fp)
	lw $t0, -4684($fp)
	lw $t1, -4688($fp)
	sub $t0, $t0, $t1
	sw $t0, -4692($fp)
	lw $t0, -1004($fp)
	sw $t0, -4696($fp)
	lw $t1, -4692($fp)
	lw $t2, -4696($fp)
	ble $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -4680($fp)
label361:
	addi $t0, $fp, -960
	sw $t0, -4700($fp)
	lw $t0, -488($fp)
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
	li $t0, 0
	lw $t1, -4716($fp)
	sub $t0, $t0, $t1
	sw $t0, -4720($fp)
	li $t0, 54284
	sw $t0, -4724($fp)
	lw $t0, -980($fp)
	sw $t0, -4728($fp)
	lw $t0, -4724($fp)
	lw $t1, -4728($fp)
	mul $t0, $t0, $t1
	sw $t0, -4732($fp)
	li $t0, 27219
	sw $t0, -4736($fp)
	lw $t0, -4732($fp)
	lw $t1, -4736($fp)
	mul $t0, $t0, $t1
	sw $t0, -4740($fp)
	addi $sp, $sp, -4
	lw $t0, -4676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4740($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4744($fp)
	addi $sp, $sp, 20
	li $t0, 35249
	sw $t0, -4748($fp)
	lw $t0, -4744($fp)
	lw $t1, -4748($fp)
	mul $t0, $t0, $t1
	sw $t0, -4752($fp)
	lw $t0, -4464($fp)
	lw $t1, -4752($fp)
	sub $t0, $t0, $t1
	sw $t0, -4756($fp)
	j label313
label312:
label362:
	li $t0, 31251
	sw $t0, -4760($fp)
	li $t0, 50395
	sw $t0, -4764($fp)
	lw $t1, -4760($fp)
	lw $t2, -4764($fp)
	beq $t1, $t2, label363
	j label364
label363:
label365:
	li $t0, 0
	sw $t0, -4768($fp)
	li $t0, 55787
	sw $t0, -4772($fp)
	lw $t1, -4772($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label371
label371:
	lw $t0, -284($fp)
	sw $t0, -4776($fp)
	lw $t1, -4776($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label370
label370:
	lw $t0, -1400($fp)
	sw $t0, -4780($fp)
	lw $t1, -4780($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label369
label368:
	li $t0, 1
	sw $t0, -4768($fp)
label369:
	li $t0, 0
	sw $t0, -4784($fp)
	addi $t0, $fp, -916
	sw $t0, -4788($fp)
	lw $t0, -560($fp)
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
	lw $t0, -560($fp)
	sw $t0, -4808($fp)
	lw $t1, -4804($fp)
	lw $t2, -4808($fp)
	ble $t1, $t2, label372
	j label373
label372:
	li $t0, 1
	sw $t0, -4784($fp)
label373:
	li $t0, 0
	sw $t0, -4812($fp)
	lw $t0, -1412($fp)
	sw $t0, -4816($fp)
	lw $t0, -476($fp)
	sw $t0, -4820($fp)
	lw $t1, -4816($fp)
	lw $t2, -4820($fp)
	bne $t1, $t2, label374
	j label375
label374:
	li $t0, 1
	sw $t0, -4812($fp)
label375:
	li $t0, 0
	sw $t0, -4824($fp)
	li $t0, 0
	sw $t0, -4828($fp)
	lw $t0, -1412($fp)
	sw $t0, -4832($fp)
	lw $t1, -4832($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label378
label378:
	li $t0, 1
	sw $t0, -4828($fp)
label379:
	lw $t0, -1568($fp)
	sw $t0, -4836($fp)
	lw $t1, -4828($fp)
	lw $t2, -4836($fp)
	bne $t1, $t2, label376
	j label377
label376:
	li $t0, 1
	sw $t0, -4824($fp)
label377:
	li $t0, 0
	sw $t0, -4840($fp)
	li $t0, 0
	sw $t0, -4844($fp)
	lw $t0, -536($fp)
	sw $t0, -4848($fp)
	lw $t0, -836($fp)
	sw $t0, -4852($fp)
	lw $t1, -4848($fp)
	lw $t2, -4852($fp)
	bge $t1, $t2, label382
	j label383
label382:
	li $t0, 1
	sw $t0, -4844($fp)
label383:
	li $t0, 1949
	sw $t0, -4856($fp)
	lw $t1, -4844($fp)
	lw $t2, -4856($fp)
	bge $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -4840($fp)
label381:
	addi $sp, $sp, -4
	lw $t0, -4768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4840($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4860($fp)
	addi $sp, $sp, 24
	lw $t1, -4860($fp)
	li $t2, 0
	bne $t1, $t2, label366
	j label367
label366:
label384:
	addi $t0, $fp, -904
	sw $t0, -4864($fp)
	lw $t0, -140($fp)
	sw $t0, -4868($fp)
	li $t0, 0
	sw $t0, -4872($fp)
	li $t0, 29871
	sw $t0, -4876($fp)
	lw $t1, -4876($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label387
label387:
	li $t0, 1
	sw $t0, -4872($fp)
label388:
	lw $t0, -4868($fp)
	lw $t1, -4872($fp)
	sub $t0, $t0, $t1
	sw $t0, -4880($fp)
	li $t0, 4
	lw $t1, -4880($fp)
	mul $t0, $t0, $t1
	sw $t0, -4884($fp)
	lw $t0, -4884($fp)
	lw $t1, -4864($fp)
	add $t0, $t0, $t1
	sw $t0, -4888($fp)
	lw $t0, -4888($fp)
	lw $t1, 0($t0)
	sw $t1, -4892($fp)
	lw $t1, -4892($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label386
label385:
	li $t0, 0
	sw $t0, -4896($fp)
	li $t0, 2725
	sw $t0, -4900($fp)
	lw $t1, -4900($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label391
label391:
	li $t0, 41340
	sw $t0, -4904($fp)
	lw $t1, -4904($fp)
	li $t2, 0
	bne $t1, $t2, label389
	j label390
label389:
	li $t0, 1
	sw $t0, -4896($fp)
label390:
	li $t0, 0
	sw $t0, -4908($fp)
	lw $t0, -752($fp)
	sw $t0, -4912($fp)
	li $t0, 17656
	sw $t0, -4916($fp)
	lw $t0, -4912($fp)
	lw $t1, -4916($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4920($fp)
	li $t0, 27012
	sw $t0, -4924($fp)
	lw $t1, -4920($fp)
	lw $t2, -4924($fp)
	bne $t1, $t2, label392
	j label393
label392:
	li $t0, 1
	sw $t0, -4908($fp)
label393:
	addi $t0, $fp, -60
	sw $t0, -4928($fp)
	lw $t0, -452($fp)
	sw $t0, -4932($fp)
	li $t0, 4
	lw $t1, -4932($fp)
	mul $t0, $t0, $t1
	sw $t0, -4936($fp)
	lw $t0, -4936($fp)
	lw $t1, -4928($fp)
	add $t0, $t0, $t1
	sw $t0, -4940($fp)
	lw $t0, -4940($fp)
	lw $t1, 0($t0)
	sw $t1, -4944($fp)
	li $t0, 0
	lw $t1, -4944($fp)
	sub $t0, $t0, $t1
	sw $t0, -4948($fp)
	li $t0, 58526
	sw $t0, -4952($fp)
	lw $t0, -716($fp)
	sw $t0, -4956($fp)
	lw $t0, -4952($fp)
	lw $t1, -4956($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4960($fp)
	li $t0, 32007
	sw $t0, -4964($fp)
	lw $t0, -4960($fp)
	lw $t1, -4964($fp)
	add $t0, $t0, $t1
	sw $t0, -4968($fp)
	li $t0, 26315
	sw $t0, -4972($fp)
	li $t0, 0
	lw $t1, -4972($fp)
	sub $t0, $t0, $t1
	sw $t0, -4976($fp)
	li $t0, 37567
	sw $t0, -4980($fp)
	li $t0, 31307
	sw $t0, -4984($fp)
	lw $t0, -4980($fp)
	lw $t1, -4984($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4988($fp)
	li $t0, 58497
	sw $t0, -4992($fp)
	lw $t0, -4988($fp)
	lw $t1, -4992($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4996($fp)
	addi $sp, $sp, -4
	lw $t0, -4948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4996($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5000($fp)
	addi $sp, $sp, 20
	li $t0, 62379
	sw $t0, -5004($fp)
	lw $t0, -5000($fp)
	lw $t1, -5004($fp)
	add $t0, $t0, $t1
	sw $t0, -5008($fp)
	li $t0, 0
	sw $t0, -5012($fp)
	addi $t0, $fp, -60
	sw $t0, -5016($fp)
	lw $t0, -1064($fp)
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
	bne $t1, $t2, label395
	j label394
label394:
	li $t0, 1
	sw $t0, -5012($fp)
label395:
	li $t0, 0
	sw $t0, -5036($fp)
	li $t0, 64618
	sw $t0, -5040($fp)
	li $t0, 14620
	sw $t0, -5044($fp)
	lw $t1, -5040($fp)
	lw $t2, -5044($fp)
	bne $t1, $t2, label396
	j label398
label398:
	li $t0, 63032
	sw $t0, -5048($fp)
	lw $t1, -5048($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label397
label396:
	li $t0, 1
	sw $t0, -5036($fp)
label397:
	addi $sp, $sp, -4
	lw $t0, -4896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5036($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5052($fp)
	addi $sp, $sp, 24
	j label384
label386:
	j label365
label367:
	j label362
label364:
label313:
	j label310
label309:
label399:
	li $t0, 32706
	sw $t0, -5056($fp)
	li $t0, 0
	sw $t0, -5060($fp)
	li $t0, 34058
	sw $t0, -5064($fp)
	lw $t1, -5064($fp)
	li $t2, 0
	bne $t1, $t2, label404
	j label403
label403:
	li $t0, 1
	sw $t0, -5060($fp)
label404:
	lw $t0, -5056($fp)
	lw $t1, -5060($fp)
	add $t0, $t0, $t1
	sw $t0, -5068($fp)
	lw $t1, -5068($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label401
label402:
	li $t0, 61463
	sw $t0, -5072($fp)
	li $t0, 7644
	sw $t0, -5076($fp)
	lw $t0, -5072($fp)
	lw $t1, -5076($fp)
	mul $t0, $t0, $t1
	sw $t0, -5080($fp)
	li $t0, 0
	lw $t1, -5080($fp)
	sub $t0, $t0, $t1
	sw $t0, -5084($fp)
	addi $t0, $fp, -904
	sw $t0, -5088($fp)
	li $t0, 5
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
	lw $t1, -5084($fp)
	lw $t2, -5104($fp)
	bne $t1, $t2, label400
	j label401
label400:
	li $t0, 0
	sw $t0, -5108($fp)
	li $t0, 0
	sw $t0, -5112($fp)
	li $t0, 54720
	sw $t0, -5116($fp)
	li $t0, 63856
	sw $t0, -5120($fp)
	li $t0, 0
	lw $t1, -5120($fp)
	sub $t0, $t0, $t1
	sw $t0, -5124($fp)
	lw $t1, -5116($fp)
	lw $t2, -5124($fp)
	bgt $t1, $t2, label407
	j label408
label407:
	li $t0, 1
	sw $t0, -5112($fp)
label408:
	li $t0, 26464
	sw $t0, -5128($fp)
	lw $t0, -536($fp)
	sw $t0, -5132($fp)
	lw $t0, -5128($fp)
	lw $t1, -5132($fp)
	add $t0, $t0, $t1
	sw $t0, -5136($fp)
	lw $t0, -560($fp)
	sw $t0, -5140($fp)
	lw $t0, -5136($fp)
	lw $t1, -5140($fp)
	add $t0, $t0, $t1
	sw $t0, -5144($fp)
	li $t0, 65299
	sw $t0, -5148($fp)
	lw $t0, -68($fp)
	sw $t0, -5152($fp)
	lw $t0, -5148($fp)
	lw $t1, -5152($fp)
	mul $t0, $t0, $t1
	sw $t0, -5156($fp)
	lw $t0, -5144($fp)
	lw $t1, -5156($fp)
	add $t0, $t0, $t1
	sw $t0, -5160($fp)
	lw $t1, -5112($fp)
	lw $t2, -5160($fp)
	beq $t1, $t2, label405
	j label406
label405:
	li $t0, 1
	sw $t0, -5108($fp)
label406:
	j label399
label401:
label310:
	j label299
label301:
	j label240
label242:
label234:
label409:
	lw $t0, -836($fp)
	sw $t0, -5164($fp)
	lw $t1, -5164($fp)
	li $t2, 0
	bne $t1, $t2, label410
	j label411
label410:
	li $t0, 0
	sw $t0, -5168($fp)
	addi $t0, $fp, -60
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
	lw $t1, -5188($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label413
label412:
	li $t0, 1
	sw $t0, -5168($fp)
label413:
	lw $ra, -4($fp)
	lw $v0, -5168($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label409
label411:
	lw $t0, -68($fp)
	sw $t0, -5192($fp)
	lw $t0, -5192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -5196($fp)
	lw $t0, -5196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -5200($fp)
	lw $t0, -5200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	sw $t0, -5204($fp)
	lw $t0, -5204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -116($fp)
	sw $t0, -5208($fp)
	lw $t0, -5208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -128($fp)
	sw $t0, -5212($fp)
	lw $t0, -5212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -140($fp)
	sw $t0, -5216($fp)
	lw $t0, -5216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -152($fp)
	sw $t0, -5220($fp)
	lw $t0, -5220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -164($fp)
	sw $t0, -5224($fp)
	lw $t0, -5224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -176($fp)
	sw $t0, -5228($fp)
	lw $t0, -5228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -5232($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
	sw $t0, -5252($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -5272($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -5292($fp)
	li $t0, 3
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
	lw $t0, -284($fp)
	sw $t0, -5312($fp)
	lw $t0, -5312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -296($fp)
	sw $t0, -5316($fp)
	lw $t0, -5316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -308($fp)
	sw $t0, -5320($fp)
	lw $t0, -5320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -320($fp)
	sw $t0, -5324($fp)
	lw $t0, -5324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -5328($fp)
	li $t0, 0
	sw $t0, -5332($fp)
	li $t0, 4
	lw $t1, -5332($fp)
	mul $t0, $t0, $t1
	sw $t0, -5336($fp)
	lw $t0, -5336($fp)
	lw $t1, -5328($fp)
	add $t0, $t0, $t1
	sw $t0, -5340($fp)
	lw $t0, -5340($fp)
	lw $t1, 0($t0)
	sw $t1, -5344($fp)
	lw $t0, -5344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -5348($fp)
	li $t0, 1
	sw $t0, -5352($fp)
	li $t0, 4
	lw $t1, -5352($fp)
	mul $t0, $t0, $t1
	sw $t0, -5356($fp)
	lw $t0, -5356($fp)
	lw $t1, -5348($fp)
	add $t0, $t0, $t1
	sw $t0, -5360($fp)
	lw $t0, -5360($fp)
	lw $t1, 0($t0)
	sw $t1, -5364($fp)
	lw $t0, -5364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -5368($fp)
	li $t0, 2
	sw $t0, -5372($fp)
	li $t0, 4
	lw $t1, -5372($fp)
	mul $t0, $t0, $t1
	sw $t0, -5376($fp)
	lw $t0, -5376($fp)
	lw $t1, -5368($fp)
	add $t0, $t0, $t1
	sw $t0, -5380($fp)
	lw $t0, -5380($fp)
	lw $t1, 0($t0)
	sw $t1, -5384($fp)
	lw $t0, -5384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -5388($fp)
	li $t0, 3
	sw $t0, -5392($fp)
	li $t0, 4
	lw $t1, -5392($fp)
	mul $t0, $t0, $t1
	sw $t0, -5396($fp)
	lw $t0, -5396($fp)
	lw $t1, -5388($fp)
	add $t0, $t0, $t1
	sw $t0, -5400($fp)
	lw $t0, -5400($fp)
	lw $t1, 0($t0)
	sw $t1, -5404($fp)
	lw $t0, -5404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -5408($fp)
	li $t0, 4
	sw $t0, -5412($fp)
	li $t0, 4
	lw $t1, -5412($fp)
	mul $t0, $t0, $t1
	sw $t0, -5416($fp)
	lw $t0, -5416($fp)
	lw $t1, -5408($fp)
	add $t0, $t0, $t1
	sw $t0, -5420($fp)
	lw $t0, -5420($fp)
	lw $t1, 0($t0)
	sw $t1, -5424($fp)
	lw $t0, -5424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -5428($fp)
	lw $t0, -5428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -464($fp)
	sw $t0, -5432($fp)
	lw $t0, -5432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	sw $t0, -5436($fp)
	lw $t0, -5436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -488($fp)
	sw $t0, -5440($fp)
	lw $t0, -5440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -5444($fp)
	lw $t0, -5444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -5448($fp)
	lw $t0, -5448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -5452($fp)
	lw $t0, -5452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -5456($fp)
	lw $t0, -5456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -5460($fp)
	lw $t0, -5460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -5464($fp)
	lw $t0, -5464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -5468($fp)
	lw $t0, -5468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -584($fp)
	sw $t0, -5472($fp)
	lw $t0, -5472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
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
	addi $t0, $fp, -60
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
	addi $t0, $fp, -60
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
	addi $t0, $fp, -60
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
	addi $t0, $fp, -60
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
	lw $t0, -716($fp)
	sw $t0, -5576($fp)
	lw $t0, -5576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -728($fp)
	sw $t0, -5580($fp)
	lw $t0, -5580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -740($fp)
	sw $t0, -5584($fp)
	lw $t0, -5584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -752($fp)
	sw $t0, -5588($fp)
	lw $t0, -5588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -764($fp)
	sw $t0, -5592($fp)
	lw $t0, -5592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -776($fp)
	sw $t0, -5596($fp)
	lw $t0, -5596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -788($fp)
	sw $t0, -5600($fp)
	lw $t0, -5600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -800($fp)
	sw $t0, -5604($fp)
	lw $t0, -5604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -812($fp)
	sw $t0, -5608($fp)
	lw $t0, -5608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -824($fp)
	sw $t0, -5612($fp)
	lw $t0, -5612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -836($fp)
	sw $t0, -5616($fp)
	lw $t0, -5616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 31015
	sw $t0, -5620($fp)
	lw $ra, -4($fp)
	lw $v0, -5620($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label414:
	li $t0, 0
	sw $t0, -5624($fp)
	li $t0, 0
	sw $t0, -5628($fp)
	li $t0, 21266
	sw $t0, -5632($fp)
	lw $t1, -5632($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label421
label422:
	li $t0, 37806
	sw $t0, -5636($fp)
	lw $t1, -5636($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label421
label421:
	li $t0, 62744
	sw $t0, -5640($fp)
	lw $t1, -5640($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label420
label419:
	li $t0, 1
	sw $t0, -5628($fp)
label420:
	lw $t0, -824($fp)
	sw $t0, -5644($fp)
	li $t0, 63662
	sw $t0, -5648($fp)
	lw $t0, -5644($fp)
	lw $t1, -5648($fp)
	mul $t0, $t0, $t1
	sw $t0, -5652($fp)
	li $t0, 0
	sw $t0, -5656($fp)
	li $t0, 7935
	sw $t0, -5660($fp)
	lw $t0, -320($fp)
	sw $t0, -5664($fp)
	lw $t1, -5660($fp)
	lw $t2, -5664($fp)
	bne $t1, $t2, label423
	j label424
label423:
	li $t0, 1
	sw $t0, -5656($fp)
label424:
	lw $t0, -68($fp)
	sw $t0, -5668($fp)
	addi $sp, $sp, -4
	lw $t0, -5628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5668($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5672($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -40
	sw $t0, -5676($fp)
	li $t0, 4
	sw $t0, -5680($fp)
	li $t0, 4
	lw $t1, -5680($fp)
	mul $t0, $t0, $t1
	sw $t0, -5684($fp)
	lw $t0, -5684($fp)
	lw $t1, -5676($fp)
	add $t0, $t0, $t1
	sw $t0, -5688($fp)
	lw $t0, -5688($fp)
	lw $t1, 0($t0)
	sw $t1, -5692($fp)
	lw $t0, -5672($fp)
	lw $t1, -5692($fp)
	mul $t0, $t0, $t1
	sw $t0, -5696($fp)
	li $t0, 0
	lw $t1, -5696($fp)
	sub $t0, $t0, $t1
	sw $t0, -5700($fp)
	lw $t0, 4($fp)
	sw $t0, -5704($fp)
	li $t0, 0
	lw $t1, -5704($fp)
	sub $t0, $t0, $t1
	sw $t0, -5708($fp)
	lw $t0, -584($fp)
	sw $t0, -5712($fp)
	lw $t0, -5708($fp)
	lw $t1, -5712($fp)
	add $t0, $t0, $t1
	sw $t0, -5716($fp)
	li $t0, 0
	sw $t0, -5720($fp)
	lw $t0, -452($fp)
	sw $t0, -5724($fp)
	lw $t0, -5724($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -5728($fp)
	li $t0, 0
	sw $t0, -5732($fp)
	li $t0, 16524
	sw $t0, -5736($fp)
	lw $t0, -116($fp)
	sw $t0, -5740($fp)
	lw $t0, -5736($fp)
	lw $t1, -5740($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5744($fp)
	lw $t1, -5744($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label429
label430:
	li $t0, 29610
	sw $t0, -5748($fp)
	lw $t1, -5748($fp)
	li $t2, 0
	bne $t1, $t2, label428
	j label429
label428:
	li $t0, 1
	sw $t0, -5732($fp)
label429:
	li $t0, 0
	sw $t0, -5752($fp)
	li $t0, 0
	sw $t0, -5756($fp)
	lw $t0, -488($fp)
	sw $t0, -5760($fp)
	lw $t1, -5760($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label433
label433:
	li $t0, 1
	sw $t0, -5756($fp)
label434:
	lw $t0, -560($fp)
	sw $t0, -5764($fp)
	lw $t1, -5756($fp)
	lw $t2, -5764($fp)
	beq $t1, $t2, label431
	j label432
label431:
	li $t0, 1
	sw $t0, -5752($fp)
label432:
	li $t0, 0
	sw $t0, -5768($fp)
	addi $t0, $fp, -20
	sw $t0, -5772($fp)
	li $t0, 3
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
	li $t0, 31090
	sw $t0, -5792($fp)
	lw $t1, -5788($fp)
	lw $t2, -5792($fp)
	bne $t1, $t2, label435
	j label436
label435:
	li $t0, 1
	sw $t0, -5768($fp)
label436:
	li $t0, 0
	sw $t0, -5796($fp)
	lw $t0, -752($fp)
	sw $t0, -5800($fp)
	li $t0, 0
	lw $t1, -5800($fp)
	sub $t0, $t0, $t1
	sw $t0, -5804($fp)
	lw $t1, -5804($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label437
label437:
	li $t0, 1
	sw $t0, -5796($fp)
label438:
	li $t0, 0
	sw $t0, -5808($fp)
	lw $t0, -740($fp)
	sw $t0, -5812($fp)
	li $t0, 34913
	sw $t0, -5816($fp)
	lw $t0, -5812($fp)
	lw $t1, -5816($fp)
	sub $t0, $t0, $t1
	sw $t0, -5820($fp)
	lw $t0, -476($fp)
	sw $t0, -5824($fp)
	lw $t1, -5820($fp)
	lw $t2, -5824($fp)
	bne $t1, $t2, label439
	j label440
label439:
	li $t0, 1
	sw $t0, -5808($fp)
label440:
	li $t0, 0
	sw $t0, -5828($fp)
	lw $t0, 16($fp)
	sw $t0, -5832($fp)
	lw $t0, -476($fp)
	sw $t0, -5836($fp)
	lw $t1, -5832($fp)
	lw $t2, -5836($fp)
	beq $t1, $t2, label443
	j label442
label443:
	li $t0, 64135
	sw $t0, -5840($fp)
	lw $t1, -5840($fp)
	li $t2, 0
	bne $t1, $t2, label441
	j label442
label441:
	li $t0, 1
	sw $t0, -5828($fp)
label442:
	li $t0, 51282
	sw $t0, -5844($fp)
	lw $t0, -5844($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -5848($fp)
	li $t0, 0
	sw $t0, -5852($fp)
	li $t0, 279
	sw $t0, -5856($fp)
	lw $t1, -5856($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label446
label447:
	lw $t0, -320($fp)
	sw $t0, -5860($fp)
	lw $t1, -5860($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label446
label446:
	li $t0, 8448
	sw $t0, -5864($fp)
	lw $t1, -5864($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label445
label444:
	li $t0, 1
	sw $t0, -5852($fp)
label445:
	lw $t0, 20($fp)
	sw $t0, -5868($fp)
	lw $t0, -5868($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -5872($fp)
	addi $sp, $sp, -4
	lw $t0, -5828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5872($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5876($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -5880($fp)
	lw $t0, -284($fp)
	sw $t0, -5884($fp)
	lw $t1, -5884($fp)
	li $t2, 0
	bne $t1, $t2, label451
	j label450
label451:
	lw $t0, -308($fp)
	sw $t0, -5888($fp)
	lw $t1, -5888($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label450
label450:
	lw $t0, -320($fp)
	sw $t0, -5892($fp)
	lw $t1, -5892($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label449
label448:
	li $t0, 1
	sw $t0, -5880($fp)
label449:
	addi $sp, $sp, -4
	lw $t0, -5796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5880($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5896($fp)
	addi $sp, $sp, 20
	lw $t0, -284($fp)
	sw $t0, -5900($fp)
	lw $t0, -5896($fp)
	lw $t1, -5900($fp)
	mul $t0, $t0, $t1
	sw $t0, -5904($fp)
	addi $sp, $sp, -4
	lw $t0, -5728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5904($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5908($fp)
	addi $sp, $sp, 24
	lw $t1, -5908($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label426
label427:
	li $t0, 29217
	sw $t0, -5912($fp)
	lw $t1, -5912($fp)
	li $t2, 0
	bne $t1, $t2, label425
	j label426
label425:
	li $t0, 1
	sw $t0, -5720($fp)
label426:
	li $t0, 49570
	sw $t0, -5916($fp)
	li $t0, 62097
	sw $t0, -5920($fp)
	lw $t0, -5916($fp)
	lw $t1, -5920($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5924($fp)
	addi $t0, $fp, -40
	sw $t0, -5928($fp)
	lw $t0, -104($fp)
	sw $t0, -5932($fp)
	li $t0, 4
	lw $t1, -5932($fp)
	mul $t0, $t0, $t1
	sw $t0, -5936($fp)
	lw $t0, -5936($fp)
	lw $t1, -5928($fp)
	add $t0, $t0, $t1
	sw $t0, -5940($fp)
	lw $t0, -5940($fp)
	lw $t1, 0($t0)
	sw $t1, -5944($fp)
	lw $t0, -548($fp)
	sw $t0, -5948($fp)
	lw $t0, -5944($fp)
	lw $t1, -5948($fp)
	add $t0, $t0, $t1
	sw $t0, -5952($fp)
	lw $t0, -752($fp)
	sw $t0, -5956($fp)
	li $t0, 0
	lw $t1, -5956($fp)
	sub $t0, $t0, $t1
	sw $t0, -5960($fp)
	li $t0, 0
	sw $t0, -5964($fp)
	lw $t0, -776($fp)
	sw $t0, -5968($fp)
	li $t0, 0
	lw $t1, -5968($fp)
	sub $t0, $t0, $t1
	sw $t0, -5972($fp)
	lw $t1, -5972($fp)
	li $t2, 0
	bne $t1, $t2, label453
	j label452
label452:
	li $t0, 1
	sw $t0, -5964($fp)
label453:
	addi $sp, $sp, -4
	lw $t0, -5720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5964($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5976($fp)
	addi $sp, $sp, 24
	lw $t0, -320($fp)
	sw $t0, -5980($fp)
	lw $t0, -5976($fp)
	lw $t1, -5980($fp)
	sub $t0, $t0, $t1
	sw $t0, -5984($fp)
	li $t0, 54453
	sw $t0, -5988($fp)
	li $t0, 29182
	sw $t0, -5992($fp)
	lw $t0, -5988($fp)
	lw $t1, -5992($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5996($fp)
	li $t0, 53643
	sw $t0, -6000($fp)
	li $t0, 0
	sw $t0, -6004($fp)
	li $t0, 0
	sw $t0, -6008($fp)
	lw $t0, -176($fp)
	sw $t0, -6012($fp)
	li $t0, 60659
	sw $t0, -6016($fp)
	lw $t1, -6012($fp)
	lw $t2, -6016($fp)
	ble $t1, $t2, label456
	j label457
label456:
	li $t0, 1
	sw $t0, -6008($fp)
label457:
	lw $t0, -560($fp)
	sw $t0, -6020($fp)
	lw $t1, -6008($fp)
	lw $t2, -6020($fp)
	bgt $t1, $t2, label454
	j label455
label454:
	li $t0, 1
	sw $t0, -6004($fp)
label455:
	addi $sp, $sp, -4
	lw $t0, -5716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6004($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6024($fp)
	addi $sp, $sp, 24
	li $t0, 37790
	sw $t0, -6028($fp)
	lw $t0, -6024($fp)
	lw $t1, -6028($fp)
	sub $t0, $t0, $t1
	sw $t0, -6032($fp)
	lw $t0, -572($fp)
	sw $t0, -6036($fp)
	lw $t0, -6036($fp)
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -6040($fp)
	li $t0, 0
	sw $t0, -6044($fp)
	li $t0, 12303
	sw $t0, -6048($fp)
	li $t0, 21747
	sw $t0, -6052($fp)
	lw $t1, -6048($fp)
	lw $t2, -6052($fp)
	bne $t1, $t2, label458
	j label460
label460:
	lw $t0, 4($fp)
	sw $t0, -6056($fp)
	lw $t1, -6056($fp)
	li $t2, 0
	bne $t1, $t2, label458
	j label459
label458:
	li $t0, 1
	sw $t0, -6044($fp)
label459:
	li $t0, 0
	sw $t0, -6060($fp)
	lw $t0, -716($fp)
	sw $t0, -6064($fp)
	lw $t0, -788($fp)
	sw $t0, -6068($fp)
	lw $t0, -6064($fp)
	lw $t1, -6068($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6072($fp)
	lw $t0, -560($fp)
	sw $t0, -6076($fp)
	lw $t1, -6072($fp)
	lw $t2, -6076($fp)
	bne $t1, $t2, label461
	j label462
label461:
	li $t0, 1
	sw $t0, -6060($fp)
label462:
	li $t0, 57934
	sw $t0, -6080($fp)
	lw $t0, -80($fp)
	sw $t0, -6084($fp)
	lw $t0, -6080($fp)
	lw $t1, -6084($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6088($fp)
	li $t0, 0
	lw $t1, -6088($fp)
	sub $t0, $t0, $t1
	sw $t0, -6092($fp)
	lw $t0, -572($fp)
	sw $t0, -6096($fp)
	lw $t0, -6096($fp)
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -6100($fp)
	li $t0, 60271
	sw $t0, -6104($fp)
	lw $t0, -6104($fp)
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -6108($fp)
	addi $sp, $sp, -4
	lw $t0, -6044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6108($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6112($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -6116($fp)
	lw $t0, -80($fp)
	sw $t0, -6120($fp)
	li $t0, 60183
	sw $t0, -6124($fp)
	lw $t0, -6120($fp)
	lw $t1, -6124($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6128($fp)
	lw $t1, -6128($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label465
label465:
	lw $t0, -92($fp)
	sw $t0, -6132($fp)
	lw $t1, -6132($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label464
label463:
	li $t0, 1
	sw $t0, -6116($fp)
label464:
	li $t0, 0
	sw $t0, -6136($fp)
	li $t0, 28264
	sw $t0, -6140($fp)
	lw $t0, -500($fp)
	sw $t0, -6144($fp)
	lw $t1, -6140($fp)
	lw $t2, -6144($fp)
	beq $t1, $t2, label468
	j label467
label468:
	li $t0, 61091
	sw $t0, -6148($fp)
	lw $t1, -6148($fp)
	li $t2, 0
	bne $t1, $t2, label466
	j label467
label466:
	li $t0, 1
	sw $t0, -6136($fp)
label467:
	li $t0, 0
	sw $t0, -6152($fp)
	lw $t0, 12($fp)
	sw $t0, -6156($fp)
	li $t0, 0
	lw $t1, -6156($fp)
	sub $t0, $t0, $t1
	sw $t0, -6160($fp)
	lw $t1, -6160($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label471
label471:
	lw $t0, -512($fp)
	sw $t0, -6164($fp)
	lw $t1, -6164($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label470
label469:
	li $t0, 1
	sw $t0, -6152($fp)
label470:
	lw $t0, -728($fp)
	sw $t0, -6168($fp)
	lw $t0, -6168($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -6172($fp)
	lw $t0, 12($fp)
	sw $t0, -6176($fp)
	lw $t0, -464($fp)
	sw $t0, -6180($fp)
	lw $t0, -6176($fp)
	lw $t1, -6180($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6184($fp)
	li $t0, 1657
	sw $t0, -6188($fp)
	lw $t0, -6184($fp)
	lw $t1, -6188($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6192($fp)
	li $t0, 0
	sw $t0, -6196($fp)
	li $t0, 34775
	sw $t0, -6200($fp)
	lw $t1, -6200($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label472
label472:
	li $t0, 1
	sw $t0, -6196($fp)
label473:
	addi $sp, $sp, -4
	lw $t0, -6136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6196($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6204($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -6204($fp)
	sub $t0, $t0, $t1
	sw $t0, -6208($fp)
	addi $sp, $sp, -4
	lw $t0, -6032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6208($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6212($fp)
	addi $sp, $sp, 24
	lw $t1, -5700($fp)
	lw $t2, -6212($fp)
	bge $t1, $t2, label417
	j label418
label417:
	li $t0, 1
	sw $t0, -5624($fp)
label418:
	lw $t0, -764($fp)
	sw $t0, -6216($fp)
	lw $t1, -5624($fp)
	lw $t2, -6216($fp)
	beq $t1, $t2, label415
	j label416
label415:
	li $t0, 0
	sw $t0, -6220($fp)
	li $t0, 0
	sw $t0, -6224($fp)
	li $t0, 37183
	sw $t0, -6228($fp)
	lw $t0, -80($fp)
	sw $t0, -6232($fp)
	lw $t0, -6228($fp)
	lw $t1, -6232($fp)
	mul $t0, $t0, $t1
	sw $t0, -6236($fp)
	li $t0, 61201
	sw $t0, -6240($fp)
	lw $t1, -6236($fp)
	lw $t2, -6240($fp)
	blt $t1, $t2, label476
	j label477
label476:
	li $t0, 1
	sw $t0, -6224($fp)
label477:
	li $t0, 0
	sw $t0, -6244($fp)
	li $t0, 8141
	sw $t0, -6248($fp)
	lw $t1, -6248($fp)
	li $t2, 0
	bne $t1, $t2, label479
	j label478
label478:
	li $t0, 1
	sw $t0, -6244($fp)
label479:
	li $t0, 26425
	sw $t0, -6252($fp)
	lw $t0, -6252($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -6256($fp)
	li $t0, 0
	sw $t0, -6260($fp)
	li $t0, 0
	sw $t0, -6264($fp)
	lw $t0, -296($fp)
	sw $t0, -6268($fp)
	li $t0, 1880
	sw $t0, -6272($fp)
	lw $t1, -6268($fp)
	lw $t2, -6272($fp)
	bge $t1, $t2, label482
	j label483
label482:
	li $t0, 1
	sw $t0, -6264($fp)
label483:
	lw $t0, 4($fp)
	sw $t0, -6276($fp)
	lw $t1, -6264($fp)
	lw $t2, -6276($fp)
	bge $t1, $t2, label480
	j label481
label480:
	li $t0, 1
	sw $t0, -6260($fp)
label481:
	addi $sp, $sp, -4
	lw $t0, -6224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6260($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6280($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -6280($fp)
	sub $t0, $t0, $t1
	sw $t0, -6284($fp)
	li $t0, 0
	lw $t1, -6284($fp)
	sub $t0, $t0, $t1
	sw $t0, -6288($fp)
	addi $t0, $fp, -20
	sw $t0, -6292($fp)
	lw $t0, -128($fp)
	sw $t0, -6296($fp)
	li $t0, 4
	lw $t1, -6296($fp)
	mul $t0, $t0, $t1
	sw $t0, -6300($fp)
	lw $t0, -6300($fp)
	lw $t1, -6292($fp)
	add $t0, $t0, $t1
	sw $t0, -6304($fp)
	lw $t0, -6304($fp)
	lw $t1, 0($t0)
	sw $t1, -6308($fp)
	li $t0, 4446
	sw $t0, -6312($fp)
	lw $t0, -6308($fp)
	lw $t1, -6312($fp)
	sub $t0, $t0, $t1
	sw $t0, -6316($fp)
	li $t0, 0
	sw $t0, -6320($fp)
	lw $t0, -524($fp)
	sw $t0, -6324($fp)
	li $t0, 56756
	sw $t0, -6328($fp)
	lw $t1, -6324($fp)
	lw $t2, -6328($fp)
	beq $t1, $t2, label484
	j label485
label484:
	li $t0, 1
	sw $t0, -6320($fp)
label485:
	li $t0, 0
	sw $t0, -6332($fp)
	li $t0, 9798
	sw $t0, -6336($fp)
	lw $t1, -6336($fp)
	li $t2, 0
	bne $t1, $t2, label489
	j label488
label489:
	lw $t0, -752($fp)
	sw $t0, -6340($fp)
	lw $t1, -6340($fp)
	li $t2, 0
	bne $t1, $t2, label486
	j label488
label488:
	li $t0, 65447
	sw $t0, -6344($fp)
	lw $t1, -6344($fp)
	li $t2, 0
	bne $t1, $t2, label486
	j label487
label486:
	li $t0, 1
	sw $t0, -6332($fp)
label487:
	li $t0, 0
	sw $t0, -6348($fp)
	lw $t0, -476($fp)
	sw $t0, -6352($fp)
	lw $t0, -512($fp)
	sw $t0, -6356($fp)
	lw $t1, -6352($fp)
	lw $t2, -6356($fp)
	bne $t1, $t2, label490
	j label491
label490:
	li $t0, 1
	sw $t0, -6348($fp)
label491:
	lw $t0, -464($fp)
	sw $t0, -6360($fp)
	lw $t0, -6360($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -6364($fp)
	addi $sp, $sp, -4
	lw $t0, -6316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6364($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6368($fp)
	addi $sp, $sp, 24
	lw $t0, -6288($fp)
	lw $t1, -6368($fp)
	sub $t0, $t0, $t1
	sw $t0, -6372($fp)
	addi $t0, $fp, -60
	sw $t0, -6376($fp)
	lw $t0, -140($fp)
	sw $t0, -6380($fp)
	li $t0, 4
	lw $t1, -6380($fp)
	mul $t0, $t0, $t1
	sw $t0, -6384($fp)
	lw $t0, -6384($fp)
	lw $t1, -6376($fp)
	add $t0, $t0, $t1
	sw $t0, -6388($fp)
	lw $t0, -6388($fp)
	lw $t1, 0($t0)
	sw $t1, -6392($fp)
	li $t0, 0
	lw $t1, -6392($fp)
	sub $t0, $t0, $t1
	sw $t0, -6396($fp)
	lw $t1, -6372($fp)
	lw $t2, -6396($fp)
	blt $t1, $t2, label474
	j label475
label474:
	li $t0, 1
	sw $t0, -6220($fp)
label475:
	j label414
label416:
	lw $t0, -68($fp)
	sw $t0, -6400($fp)
	lw $t0, -6400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -6404($fp)
	lw $t0, -6404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -6408($fp)
	lw $t0, -6408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	sw $t0, -6412($fp)
	lw $t0, -6412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -116($fp)
	sw $t0, -6416($fp)
	lw $t0, -6416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -128($fp)
	sw $t0, -6420($fp)
	lw $t0, -6420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -140($fp)
	sw $t0, -6424($fp)
	lw $t0, -6424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -152($fp)
	sw $t0, -6428($fp)
	lw $t0, -6428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -164($fp)
	sw $t0, -6432($fp)
	lw $t0, -6432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -176($fp)
	sw $t0, -6436($fp)
	lw $t0, -6436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -6440($fp)
	li $t0, 0
	sw $t0, -6444($fp)
	li $t0, 4
	lw $t1, -6444($fp)
	mul $t0, $t0, $t1
	sw $t0, -6448($fp)
	lw $t0, -6448($fp)
	lw $t1, -6440($fp)
	add $t0, $t0, $t1
	sw $t0, -6452($fp)
	lw $t0, -6452($fp)
	lw $t1, 0($t0)
	sw $t1, -6456($fp)
	lw $t0, -6456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -6460($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -6480($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -6500($fp)
	li $t0, 3
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
	lw $t0, -284($fp)
	sw $t0, -6520($fp)
	lw $t0, -6520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -296($fp)
	sw $t0, -6524($fp)
	lw $t0, -6524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -308($fp)
	sw $t0, -6528($fp)
	lw $t0, -6528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -320($fp)
	sw $t0, -6532($fp)
	lw $t0, -6532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -6536($fp)
	li $t0, 0
	sw $t0, -6540($fp)
	li $t0, 4
	lw $t1, -6540($fp)
	mul $t0, $t0, $t1
	sw $t0, -6544($fp)
	lw $t0, -6544($fp)
	lw $t1, -6536($fp)
	add $t0, $t0, $t1
	sw $t0, -6548($fp)
	lw $t0, -6548($fp)
	lw $t1, 0($t0)
	sw $t1, -6552($fp)
	lw $t0, -6552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -6556($fp)
	li $t0, 1
	sw $t0, -6560($fp)
	li $t0, 4
	lw $t1, -6560($fp)
	mul $t0, $t0, $t1
	sw $t0, -6564($fp)
	lw $t0, -6564($fp)
	lw $t1, -6556($fp)
	add $t0, $t0, $t1
	sw $t0, -6568($fp)
	lw $t0, -6568($fp)
	lw $t1, 0($t0)
	sw $t1, -6572($fp)
	lw $t0, -6572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -6576($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -6596($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -6616($fp)
	li $t0, 4
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
	lw $t0, -452($fp)
	sw $t0, -6636($fp)
	lw $t0, -6636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -464($fp)
	sw $t0, -6640($fp)
	lw $t0, -6640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -476($fp)
	sw $t0, -6644($fp)
	lw $t0, -6644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -488($fp)
	sw $t0, -6648($fp)
	lw $t0, -6648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -500($fp)
	sw $t0, -6652($fp)
	lw $t0, -6652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -6656($fp)
	lw $t0, -6656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -6660($fp)
	lw $t0, -6660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -536($fp)
	sw $t0, -6664($fp)
	lw $t0, -6664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -6668($fp)
	lw $t0, -6668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -6672($fp)
	lw $t0, -6672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -6676($fp)
	lw $t0, -6676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -584($fp)
	sw $t0, -6680($fp)
	lw $t0, -6680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -6684($fp)
	li $t0, 0
	sw $t0, -6688($fp)
	li $t0, 4
	lw $t1, -6688($fp)
	mul $t0, $t0, $t1
	sw $t0, -6692($fp)
	lw $t0, -6692($fp)
	lw $t1, -6684($fp)
	add $t0, $t0, $t1
	sw $t0, -6696($fp)
	lw $t0, -6696($fp)
	lw $t1, 0($t0)
	sw $t1, -6700($fp)
	lw $t0, -6700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -6704($fp)
	li $t0, 1
	sw $t0, -6708($fp)
	li $t0, 4
	lw $t1, -6708($fp)
	mul $t0, $t0, $t1
	sw $t0, -6712($fp)
	lw $t0, -6712($fp)
	lw $t1, -6704($fp)
	add $t0, $t0, $t1
	sw $t0, -6716($fp)
	lw $t0, -6716($fp)
	lw $t1, 0($t0)
	sw $t1, -6720($fp)
	lw $t0, -6720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -6724($fp)
	li $t0, 2
	sw $t0, -6728($fp)
	li $t0, 4
	lw $t1, -6728($fp)
	mul $t0, $t0, $t1
	sw $t0, -6732($fp)
	lw $t0, -6732($fp)
	lw $t1, -6724($fp)
	add $t0, $t0, $t1
	sw $t0, -6736($fp)
	lw $t0, -6736($fp)
	lw $t1, 0($t0)
	sw $t1, -6740($fp)
	lw $t0, -6740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -6744($fp)
	li $t0, 3
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
	lw $t0, -6760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -6764($fp)
	li $t0, 4
	sw $t0, -6768($fp)
	li $t0, 4
	lw $t1, -6768($fp)
	mul $t0, $t0, $t1
	sw $t0, -6772($fp)
	lw $t0, -6772($fp)
	lw $t1, -6764($fp)
	add $t0, $t0, $t1
	sw $t0, -6776($fp)
	lw $t0, -6776($fp)
	lw $t1, 0($t0)
	sw $t1, -6780($fp)
	lw $t0, -6780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -716($fp)
	sw $t0, -6784($fp)
	lw $t0, -6784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -728($fp)
	sw $t0, -6788($fp)
	lw $t0, -6788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -740($fp)
	sw $t0, -6792($fp)
	lw $t0, -6792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -752($fp)
	sw $t0, -6796($fp)
	lw $t0, -6796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -764($fp)
	sw $t0, -6800($fp)
	lw $t0, -6800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -776($fp)
	sw $t0, -6804($fp)
	lw $t0, -6804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -788($fp)
	sw $t0, -6808($fp)
	lw $t0, -6808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -800($fp)
	sw $t0, -6812($fp)
	lw $t0, -6812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -812($fp)
	sw $t0, -6816($fp)
	lw $t0, -6816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -824($fp)
	sw $t0, -6820($fp)
	lw $t0, -6820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -836($fp)
	sw $t0, -6824($fp)
	lw $t0, -6824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6828($fp)
	lw $t0, -572($fp)
	sw $t0, -6832($fp)
	lw $t0, 12($fp)
	sw $t0, -6836($fp)
	li $t0, 60182
	sw $t0, -6840($fp)
	lw $t0, -6836($fp)
	lw $t1, -6840($fp)
	mul $t0, $t0, $t1
	sw $t0, -6844($fp)
	li $t0, 0
	lw $t1, -6844($fp)
	sub $t0, $t0, $t1
	sw $t0, -6848($fp)
	lw $t0, -6832($fp)
	lw $t1, -6848($fp)
	mul $t0, $t0, $t1
	sw $t0, -6852($fp)
	li $t0, 49154
	sw $t0, -6856($fp)
	li $t0, 16749
	sw $t0, -6860($fp)
	lw $t0, -6856($fp)
	lw $t1, -6860($fp)
	mul $t0, $t0, $t1
	sw $t0, -6864($fp)
	lw $t1, -6852($fp)
	lw $t2, -6864($fp)
	beq $t1, $t2, label492
	j label493
label492:
	li $t0, 1
	sw $t0, -6828($fp)
label493:
	lw $ra, -4($fp)
	lw $v0, -6828($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -292
	li $t0, 16393
	sw $t0, -24($fp)
	addi $t0, $fp, -20
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
	li $t0, 44277
	sw $t0, -48($fp)
	addi $t0, $fp, -20
	sw $t0, -52($fp)
	li $t0, 1
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
	li $t0, 4857
	sw $t0, -72($fp)
	addi $t0, $fp, -20
	sw $t0, -76($fp)
	li $t0, 2
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
	li $t0, 5310
	sw $t0, -96($fp)
	addi $t0, $fp, -20
	sw $t0, -100($fp)
	li $t0, 3
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
	addi $t0, $fp, -20
	sw $t0, -120($fp)
	li $t0, 0
	sw $t0, -124($fp)
	li $t0, 4
	lw $t1, -124($fp)
	mul $t0, $t0, $t1
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	lw $t1, -120($fp)
	add $t0, $t0, $t1
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	lw $t1, 0($t0)
	sw $t1, -136($fp)
	lw $t0, -136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -140($fp)
	li $t0, 1
	sw $t0, -144($fp)
	li $t0, 4
	lw $t1, -144($fp)
	mul $t0, $t0, $t1
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	lw $t1, -140($fp)
	add $t0, $t0, $t1
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	lw $t1, 0($t0)
	sw $t1, -156($fp)
	lw $t0, -156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -160($fp)
	li $t0, 2
	sw $t0, -164($fp)
	li $t0, 4
	lw $t1, -164($fp)
	mul $t0, $t0, $t1
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	lw $t1, -160($fp)
	add $t0, $t0, $t1
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	lw $t1, 0($t0)
	sw $t1, -176($fp)
	lw $t0, -176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -180($fp)
	li $t0, 3
	sw $t0, -184($fp)
	li $t0, 4
	lw $t1, -184($fp)
	mul $t0, $t0, $t1
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	lw $t1, -180($fp)
	add $t0, $t0, $t1
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	lw $t1, 0($t0)
	sw $t1, -196($fp)
	lw $t0, -196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -200($fp)
	li $t0, 0
	sw $t0, -204($fp)
	li $t0, 62876
	sw $t0, -208($fp)
	li $t0, 53154
	sw $t0, -212($fp)
	lw $t0, -208($fp)
	lw $t1, -212($fp)
	add $t0, $t0, $t1
	sw $t0, -216($fp)
	lw $t0, 8($fp)
	sw $t0, -220($fp)
	lw $t1, -216($fp)
	lw $t2, -220($fp)
	bgt $t1, $t2, label496
	j label497
label496:
	li $t0, 1
	sw $t0, -204($fp)
label497:
	lw $t0, 8($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -228($fp)
	li $t0, 0
	sw $t0, -232($fp)
	addi $t0, $fp, -20
	sw $t0, -236($fp)
	li $t0, 3
	sw $t0, -240($fp)
	li $t0, 4
	lw $t1, -240($fp)
	mul $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	lw $t1, -236($fp)
	add $t0, $t0, $t1
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	lw $t1, 0($t0)
	sw $t1, -252($fp)
	lw $t1, -252($fp)
	li $t2, 0
	bne $t1, $t2, label499
	j label498
label498:
	li $t0, 1
	sw $t0, -232($fp)
label499:
	li $t0, 0
	sw $t0, -256($fp)
	lw $t0, 8($fp)
	sw $t0, -260($fp)
	lw $t1, -260($fp)
	li $t2, 0
	bne $t1, $t2, label502
	j label500
label502:
	li $t0, 54427
	sw $t0, -264($fp)
	lw $t1, -264($fp)
	li $t2, 0
	bne $t1, $t2, label500
	j label501
label500:
	li $t0, 1
	sw $t0, -256($fp)
label501:
	lw $t0, 8($fp)
	sw $t0, -268($fp)
	li $t0, 7923
	sw $t0, -272($fp)
	lw $t0, -268($fp)
	lw $t1, -272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -276($fp)
	addi $sp, $sp, -4
	lw $t0, -204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -276($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -280($fp)
	addi $sp, $sp, 24
	li $t0, 6802
	sw $t0, -284($fp)
	li $t0, 0
	sw $t0, -288($fp)
	li $t0, 32253
	sw $t0, -292($fp)
	lw $t1, -292($fp)
	li $t2, 0
	bne $t1, $t2, label504
	j label503
label503:
	li $t0, 1
	sw $t0, -288($fp)
label504:
	lw $t0, -284($fp)
	lw $t1, -288($fp)
	sub $t0, $t0, $t1
	sw $t0, -296($fp)
	lw $t1, -280($fp)
	lw $t2, -296($fp)
	beq $t1, $t2, label494
	j label495
label494:
	li $t0, 1
	sw $t0, -200($fp)
label495:
	lw $ra, -4($fp)
	lw $v0, -200($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1128
	li $t0, 38663
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
	li $t0, 28477
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	li $t0, 63343
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	li $t0, 55188
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	li $t0, 58087
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	li $t0, 27024
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	li $t0, 27442
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	li $t0, 59968
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	li $t0, 53450
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	li $t0, 35583
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	li $t0, 31615
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	li $t0, 49115
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	addi $t0, $fp, -8
	sw $t0, -168($fp)
	li $t0, 0
	sw $t0, -172($fp)
	li $t0, 4
	lw $t1, -172($fp)
	mul $t0, $t0, $t1
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	lw $t1, -168($fp)
	add $t0, $t0, $t1
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	lw $t1, 0($t0)
	sw $t1, -184($fp)
	lw $t0, -184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -40($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -52($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -76($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -88($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -100($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -112($fp)
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -124($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 42567
	sw $t0, -232($fp)
	lw $t0, -112($fp)
	sw $t0, -236($fp)
	lw $t0, -232($fp)
	lw $t1, -236($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -240($fp)
	lw $t0, 8($fp)
	sw $t0, -244($fp)
	lw $t0, -100($fp)
	sw $t0, -248($fp)
	li $t0, 23953
	sw $t0, -252($fp)
	lw $t0, -248($fp)
	lw $t1, -252($fp)
	mul $t0, $t0, $t1
	sw $t0, -256($fp)
	li $t0, 1041
	sw $t0, -260($fp)
	lw $t0, -256($fp)
	lw $t1, -260($fp)
	sub $t0, $t0, $t1
	sw $t0, -264($fp)
	li $t0, 49828
	sw $t0, -268($fp)
	lw $t0, -88($fp)
	sw $t0, -272($fp)
	lw $t0, -268($fp)
	lw $t1, -272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -276($fp)
	li $t0, 26173
	sw $t0, -280($fp)
	lw $t0, -276($fp)
	lw $t1, -280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -284($fp)
	li $t0, 0
	sw $t0, -288($fp)
	li $t0, 45382
	sw $t0, -292($fp)
	li $t0, 31527
	sw $t0, -296($fp)
	lw $t0, -292($fp)
	lw $t1, -296($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -300($fp)
	lw $t1, -300($fp)
	li $t2, 0
	bne $t1, $t2, label507
	j label506
label507:
	li $t0, 40335
	sw $t0, -304($fp)
	lw $t1, -304($fp)
	li $t2, 0
	bne $t1, $t2, label505
	j label506
label505:
	li $t0, 1
	sw $t0, -288($fp)
label506:
	addi $sp, $sp, -4
	lw $t0, -240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -288($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -308($fp)
	addi $sp, $sp, 24
	li $t0, 2694
	sw $t0, -312($fp)
	lw $t0, -308($fp)
	lw $t1, -312($fp)
	add $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $ra, -4($fp)
	lw $v0, -316($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label508:
	li $t0, 0
	sw $t0, -320($fp)
	addi $t0, $fp, -8
	sw $t0, -324($fp)
	li $t0, 0
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
	lw $t0, 12($fp)
	sw $t0, -344($fp)
	lw $t1, -340($fp)
	lw $t2, -344($fp)
	bgt $t1, $t2, label513
	j label512
label513:
	lw $t0, -100($fp)
	sw $t0, -348($fp)
	lw $t1, -348($fp)
	li $t2, 0
	bne $t1, $t2, label511
	j label512
label511:
	li $t0, 1
	sw $t0, -320($fp)
label512:
	lw $t0, -320($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -352($fp)
	lw $t1, -352($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label510
label509:
	li $t0, 0
	sw $t0, -356($fp)
	li $t0, 10618
	sw $t0, -360($fp)
	lw $t1, -360($fp)
	li $t2, 0
	bne $t1, $t2, label515
	j label516
label516:
	li $t0, 0
	sw $t0, -364($fp)
	li $t0, 0
	sw $t0, -368($fp)
	lw $t0, -160($fp)
	sw $t0, -372($fp)
	lw $t1, -372($fp)
	li $t2, 0
	bne $t1, $t2, label520
	j label519
label519:
	li $t0, 1
	sw $t0, -368($fp)
label520:
	lw $t0, 4($fp)
	sw $t0, -376($fp)
	lw $t1, -368($fp)
	lw $t2, -376($fp)
	bgt $t1, $t2, label517
	j label518
label517:
	li $t0, 1
	sw $t0, -364($fp)
label518:
	addi $t0, $fp, -8
	sw $t0, -380($fp)
	li $t0, 0
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
	lw $t1, -364($fp)
	lw $t2, -396($fp)
	bne $t1, $t2, label514
	j label515
label514:
	li $t0, 1
	sw $t0, -356($fp)
label515:
	j label508
label510:
	li $t0, 0
	sw $t0, -400($fp)
	li $t0, 0
	sw $t0, -404($fp)
	lw $t0, -112($fp)
	sw $t0, -408($fp)
	lw $t0, -136($fp)
	sw $t0, -412($fp)
	lw $t0, -408($fp)
	lw $t1, -412($fp)
	add $t0, $t0, $t1
	sw $t0, -416($fp)
	li $t0, 25623
	sw $t0, -420($fp)
	lw $t1, -416($fp)
	lw $t2, -420($fp)
	beq $t1, $t2, label523
	j label524
label523:
	li $t0, 1
	sw $t0, -404($fp)
label524:
	li $t0, 0
	sw $t0, -424($fp)
	li $t0, 57666
	sw $t0, -428($fp)
	lw $t0, -52($fp)
	sw $t0, -432($fp)
	lw $t0, -428($fp)
	lw $t1, -432($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -436($fp)
	lw $t1, -436($fp)
	li $t2, 0
	bne $t1, $t2, label525
	j label527
label527:
	li $t0, 37367
	sw $t0, -440($fp)
	lw $t1, -440($fp)
	li $t2, 0
	bne $t1, $t2, label525
	j label526
label525:
	li $t0, 1
	sw $t0, -424($fp)
label526:
	lw $t0, 8($fp)
	sw $t0, -444($fp)
	li $t0, 18821
	sw $t0, -448($fp)
	lw $t0, -444($fp)
	lw $t1, -448($fp)
	mul $t0, $t0, $t1
	sw $t0, -452($fp)
	lw $t0, -40($fp)
	sw $t0, -456($fp)
	lw $t0, -452($fp)
	lw $t1, -456($fp)
	mul $t0, $t0, $t1
	sw $t0, -460($fp)
	addi $sp, $sp, -4
	lw $t0, -404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -460($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -464($fp)
	addi $sp, $sp, 16
	lw $t1, -464($fp)
	li $t2, 0
	bne $t1, $t2, label522
	j label521
label521:
	li $t0, 1
	sw $t0, -400($fp)
label522:
	li $t0, 24383
	sw $t0, -484($fp)
	addi $t0, $fp, -480
	sw $t0, -488($fp)
	li $t0, 0
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
	li $t0, 10495
	sw $t0, -508($fp)
	addi $t0, $fp, -480
	sw $t0, -512($fp)
	li $t0, 1
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
	li $t0, 54101
	sw $t0, -532($fp)
	addi $t0, $fp, -480
	sw $t0, -536($fp)
	li $t0, 2
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
	li $t0, 22190
	sw $t0, -556($fp)
	addi $t0, $fp, -480
	sw $t0, -560($fp)
	li $t0, 3
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
	li $t0, 147
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	li $t0, 46652
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	li $t0, 0
	sw $t0, -604($fp)
	li $t0, 0
	sw $t0, -608($fp)
	li $t0, 49215
	sw $t0, -612($fp)
	lw $t0, -52($fp)
	sw $t0, -616($fp)
	lw $t0, -612($fp)
	lw $t1, -616($fp)
	mul $t0, $t0, $t1
	sw $t0, -620($fp)
	lw $t0, 4($fp)
	sw $t0, -624($fp)
	lw $t0, -620($fp)
	lw $t1, -624($fp)
	add $t0, $t0, $t1
	sw $t0, -628($fp)
	li $t0, 0
	sw $t0, -632($fp)
	li $t0, 27589
	sw $t0, -636($fp)
	lw $t1, -636($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label532
label532:
	li $t0, 1
	sw $t0, -632($fp)
label533:
	lw $t0, -628($fp)
	lw $t1, -632($fp)
	sub $t0, $t0, $t1
	sw $t0, -640($fp)
	li $t0, 41084
	sw $t0, -644($fp)
	li $t0, 37129
	sw $t0, -648($fp)
	lw $t0, -644($fp)
	lw $t1, -648($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -652($fp)
	lw $t0, -136($fp)
	sw $t0, -656($fp)
	lw $t0, -652($fp)
	lw $t1, -656($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -660($fp)
	lw $t1, -640($fp)
	lw $t2, -660($fp)
	ble $t1, $t2, label530
	j label531
label530:
	li $t0, 1
	sw $t0, -608($fp)
label531:
	addi $t0, $fp, -480
	sw $t0, -664($fp)
	lw $t0, -112($fp)
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
	li $t0, 0
	lw $t1, -680($fp)
	sub $t0, $t0, $t1
	sw $t0, -684($fp)
	lw $t1, -608($fp)
	lw $t2, -684($fp)
	bgt $t1, $t2, label528
	j label529
label528:
	li $t0, 1
	sw $t0, -604($fp)
label529:
	li $t0, 0
	sw $t0, -688($fp)
	li $t0, 63173
	sw $t0, -692($fp)
	lw $t1, -692($fp)
	li $t2, 0
	bne $t1, $t2, label535
	j label534
label534:
	li $t0, 1
	sw $t0, -688($fp)
label535:
	addi $t0, $fp, -480
	sw $t0, -696($fp)
	li $t0, 0
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
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -716($fp)
	addi $t0, $fp, -8
	sw $t0, -720($fp)
	li $t0, 0
	sw $t0, -724($fp)
	li $t0, 43019
	sw $t0, -728($fp)
	lw $t0, -136($fp)
	sw $t0, -732($fp)
	lw $t1, -728($fp)
	lw $t2, -732($fp)
	bne $t1, $t2, label536
	j label537
label536:
	li $t0, 1
	sw $t0, -724($fp)
label537:
	li $t0, 4
	lw $t1, -724($fp)
	mul $t0, $t0, $t1
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	lw $t1, -720($fp)
	add $t0, $t0, $t1
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	lw $t1, 0($t0)
	sw $t1, -744($fp)
	li $t0, 0
	sw $t0, -748($fp)
	li $t0, 41895
	sw $t0, -752($fp)
	lw $t0, -88($fp)
	sw $t0, -756($fp)
	lw $t0, -752($fp)
	lw $t1, -756($fp)
	add $t0, $t0, $t1
	sw $t0, -760($fp)
	lw $t0, -100($fp)
	sw $t0, -764($fp)
	lw $t1, -760($fp)
	lw $t2, -764($fp)
	beq $t1, $t2, label538
	j label539
label538:
	li $t0, 1
	sw $t0, -748($fp)
label539:
	li $t0, 0
	sw $t0, -768($fp)
	lw $t0, -88($fp)
	sw $t0, -772($fp)
	lw $t0, -76($fp)
	sw $t0, -776($fp)
	lw $t1, -772($fp)
	lw $t2, -776($fp)
	beq $t1, $t2, label540
	j label541
label540:
	li $t0, 1
	sw $t0, -768($fp)
label541:
	li $t0, 0
	sw $t0, -780($fp)
	li $t0, 19460
	sw $t0, -784($fp)
	lw $t1, -784($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label544
label545:
	lw $t0, -100($fp)
	sw $t0, -788($fp)
	lw $t1, -788($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label544
label544:
	li $t0, 28352
	sw $t0, -792($fp)
	lw $t1, -792($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label543
label542:
	li $t0, 1
	sw $t0, -780($fp)
label543:
	li $t0, 0
	sw $t0, -796($fp)
	lw $t0, 8($fp)
	sw $t0, -800($fp)
	lw $t1, -800($fp)
	li $t2, 0
	bne $t1, $t2, label547
	j label546
label546:
	li $t0, 1
	sw $t0, -796($fp)
label547:
	li $t0, 0
	sw $t0, -804($fp)
	lw $t0, -112($fp)
	sw $t0, -808($fp)
	lw $t1, -808($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label548
label548:
	li $t0, 1
	sw $t0, -804($fp)
label549:
	li $t0, 64864
	sw $t0, -812($fp)
	lw $t0, -804($fp)
	lw $t1, -812($fp)
	mul $t0, $t0, $t1
	sw $t0, -816($fp)
	li $t0, 0
	sw $t0, -820($fp)
	lw $t0, -112($fp)
	sw $t0, -824($fp)
	lw $t0, -584($fp)
	sw $t0, -828($fp)
	lw $t0, -824($fp)
	lw $t1, -828($fp)
	mul $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t1, -832($fp)
	li $t2, 0
	bne $t1, $t2, label552
	j label551
label552:
	li $t0, 27311
	sw $t0, -836($fp)
	lw $t1, -836($fp)
	li $t2, 0
	bne $t1, $t2, label550
	j label551
label550:
	li $t0, 1
	sw $t0, -820($fp)
label551:
	lw $t0, -112($fp)
	sw $t0, -840($fp)
	addi $sp, $sp, -4
	lw $t0, -780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -840($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -844($fp)
	addi $sp, $sp, 24
	lw $t0, -136($fp)
	sw $t0, -848($fp)
	li $t0, 61043
	sw $t0, -852($fp)
	lw $t0, -848($fp)
	lw $t1, -852($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -856($fp)
	li $t0, 38691
	sw $t0, -860($fp)
	addi $sp, $sp, -4
	lw $t0, -748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -860($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -864($fp)
	addi $sp, $sp, 24
	lw $t0, -744($fp)
	lw $t1, -864($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -868($fp)
	li $t0, 0
	sw $t0, -872($fp)
	li $t0, 22154
	sw $t0, -876($fp)
	lw $t1, -876($fp)
	li $t2, 0
	bne $t1, $t2, label554
	j label553
label553:
	li $t0, 1
	sw $t0, -872($fp)
label554:
	lw $t0, -40($fp)
	sw $t0, -880($fp)
	lw $t0, -872($fp)
	lw $t1, -880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -884($fp)
	li $t0, 0
	sw $t0, -888($fp)
	lw $t0, -160($fp)
	sw $t0, -892($fp)
	lw $t1, -892($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label555
label555:
	li $t0, 1
	sw $t0, -888($fp)
label556:
	lw $t0, -884($fp)
	lw $t1, -888($fp)
	mul $t0, $t0, $t1
	sw $t0, -896($fp)
	lw $t0, -868($fp)
	lw $t1, -896($fp)
	add $t0, $t0, $t1
	sw $t0, -900($fp)
	addi $t0, $fp, -8
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
	lw $t0, -40($fp)
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -52($fp)
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -76($fp)
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -88($fp)
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -100($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -112($fp)
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -124($fp)
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -968($fp)
	li $t0, 0
	sw $t0, -972($fp)
	li $t0, 0
	sw $t0, -976($fp)
	lw $t0, 12($fp)
	sw $t0, -980($fp)
	lw $t1, -980($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label562
label562:
	li $t0, 1
	sw $t0, -976($fp)
label563:
	lw $t0, -148($fp)
	sw $t0, -984($fp)
	lw $t1, -976($fp)
	lw $t2, -984($fp)
	bgt $t1, $t2, label560
	j label561
label560:
	li $t0, 1
	sw $t0, -972($fp)
label561:
	li $t0, 0
	sw $t0, -988($fp)
	li $t0, 0
	sw $t0, -992($fp)
	lw $t0, -76($fp)
	sw $t0, -996($fp)
	lw $t0, -124($fp)
	sw $t0, -1000($fp)
	lw $t1, -996($fp)
	lw $t2, -1000($fp)
	bge $t1, $t2, label566
	j label567
label566:
	li $t0, 1
	sw $t0, -992($fp)
label567:
	lw $t0, -52($fp)
	sw $t0, -1004($fp)
	lw $t1, -992($fp)
	lw $t2, -1004($fp)
	bne $t1, $t2, label564
	j label565
label564:
	li $t0, 1
	sw $t0, -988($fp)
label565:
	li $t0, 0
	sw $t0, -1008($fp)
	lw $t0, -100($fp)
	sw $t0, -1012($fp)
	lw $t1, -1012($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label568
label568:
	li $t0, 1
	sw $t0, -1008($fp)
label569:
	li $t0, 0
	lw $t1, -1008($fp)
	sub $t0, $t0, $t1
	sw $t0, -1016($fp)
	addi $sp, $sp, -4
	lw $t0, -972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1016($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1020($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -1024($fp)
	li $t0, 0
	sw $t0, -1028($fp)
	lw $t0, -112($fp)
	sw $t0, -1032($fp)
	li $t0, 34251
	sw $t0, -1036($fp)
	lw $t1, -1032($fp)
	lw $t2, -1036($fp)
	bgt $t1, $t2, label572
	j label573
label572:
	li $t0, 1
	sw $t0, -1028($fp)
label573:
	lw $t0, 8($fp)
	sw $t0, -1040($fp)
	lw $t1, -1028($fp)
	lw $t2, -1040($fp)
	bge $t1, $t2, label570
	j label571
label570:
	li $t0, 1
	sw $t0, -1024($fp)
label571:
	lw $t1, -1020($fp)
	lw $t2, -1024($fp)
	bne $t1, $t2, label557
	j label559
label559:
	li $t0, 0
	sw $t0, -1044($fp)
	lw $t0, 12($fp)
	sw $t0, -1048($fp)
	lw $t1, -1048($fp)
	li $t2, 0
	bne $t1, $t2, label575
	j label574
label574:
	li $t0, 1
	sw $t0, -1044($fp)
label575:
	li $t0, 0
	lw $t1, -1044($fp)
	sub $t0, $t0, $t1
	sw $t0, -1052($fp)
	li $t0, 0
	sw $t0, -1056($fp)
	li $t0, 8450
	sw $t0, -1060($fp)
	li $t0, 51593
	sw $t0, -1064($fp)
	lw $t1, -1060($fp)
	lw $t2, -1064($fp)
	bne $t1, $t2, label576
	j label578
label578:
	li $t0, 21171
	sw $t0, -1068($fp)
	lw $t1, -1068($fp)
	li $t2, 0
	bne $t1, $t2, label576
	j label577
label576:
	li $t0, 1
	sw $t0, -1056($fp)
label577:
	lw $t0, -136($fp)
	sw $t0, -1072($fp)
	lw $t0, 8($fp)
	sw $t0, -1076($fp)
	lw $t0, -1072($fp)
	lw $t1, -1076($fp)
	add $t0, $t0, $t1
	sw $t0, -1080($fp)
	lw $t0, -136($fp)
	sw $t0, -1084($fp)
	lw $t0, -1080($fp)
	lw $t1, -1084($fp)
	add $t0, $t0, $t1
	sw $t0, -1088($fp)
	li $t0, 29041
	sw $t0, -1092($fp)
	lw $t0, -136($fp)
	sw $t0, -1096($fp)
	lw $t0, -1092($fp)
	lw $t1, -1096($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1100($fp)
	li $t0, 24237
	sw $t0, -1104($fp)
	li $t0, 32772
	sw $t0, -1108($fp)
	lw $t0, -1104($fp)
	lw $t1, -1108($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1112($fp)
	li $t0, 0
	lw $t1, -1112($fp)
	sub $t0, $t0, $t1
	sw $t0, -1116($fp)
	li $t0, 0
	sw $t0, -1120($fp)
	lw $t0, -64($fp)
	sw $t0, -1124($fp)
	lw $t1, -1124($fp)
	li $t2, 0
	bne $t1, $t2, label580
	j label579
label579:
	li $t0, 1
	sw $t0, -1120($fp)
label580:
	addi $sp, $sp, -4
	lw $t0, -1056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1120($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1128($fp)
	addi $sp, $sp, 24
	lw $t0, -1052($fp)
	lw $t1, -1128($fp)
	sub $t0, $t0, $t1
	sw $t0, -1132($fp)
	lw $t1, -1132($fp)
	li $t2, 0
	bne $t1, $t2, label557
	j label558
label557:
	li $t0, 1
	sw $t0, -968($fp)
label558:
	lw $ra, -4($fp)
	lw $v0, -968($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -112
	li $t0, 45818
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 11681
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 45554
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	li $t0, 0
	sw $t0, -44($fp)
	lw $t0, -24($fp)
	sw $t0, -48($fp)
	li $t0, 2208
	sw $t0, -52($fp)
	lw $t0, -48($fp)
	lw $t1, -52($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -56($fp)
	lw $t0, -12($fp)
	sw $t0, -60($fp)
	lw $t1, -56($fp)
	lw $t2, -60($fp)
	ble $t1, $t2, label581
	j label582
label581:
	li $t0, 1
	sw $t0, -44($fp)
label582:
	lw $t0, -12($fp)
	sw $t0, -64($fp)
	lw $t0, -12($fp)
	sw $t0, -68($fp)
	lw $t0, -64($fp)
	lw $t1, -68($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -72($fp)
	li $t0, 246
	sw $t0, -76($fp)
	lw $t0, -72($fp)
	lw $t1, -76($fp)
	add $t0, $t0, $t1
	sw $t0, -80($fp)
	li $t0, 0
	sw $t0, -84($fp)
	li $t0, 56313
	sw $t0, -88($fp)
	lw $t0, -36($fp)
	sw $t0, -92($fp)
	lw $t1, -88($fp)
	lw $t2, -92($fp)
	ble $t1, $t2, label583
	j label584
label583:
	li $t0, 1
	sw $t0, -84($fp)
label584:
	lw $t0, -24($fp)
	sw $t0, -96($fp)
	addi $sp, $sp, -4
	lw $t0, -44($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -80($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -84($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -96($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -100($fp)
	addi $sp, $sp, 20
	lw $t0, -12($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -36($fp)
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 56460
	sw $t0, -116($fp)
	lw $ra, -4($fp)
	lw $v0, -116($fp)
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
