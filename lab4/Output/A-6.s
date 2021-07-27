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
	addi $sp, $sp, -628
	li $t0, 31766
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	li $t0, 51059
	sw $t0, -48($fp)
	addi $t0, $fp, -32
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
	li $t0, 8740
	sw $t0, -72($fp)
	addi $t0, $fp, -32
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
	li $t0, 430
	sw $t0, -96($fp)
	addi $t0, $fp, -32
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
	li $t0, 60528
	sw $t0, -120($fp)
	addi $t0, $fp, -32
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
	li $t0, 52289
	sw $t0, -144($fp)
	addi $t0, $fp, -32
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
	li $t0, 16345
	sw $t0, -168($fp)
	addi $t0, $fp, -32
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
	li $t0, 9939
	sw $t0, -192($fp)
	addi $t0, $fp, -32
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
	li $t0, 15941
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	li $t0, 0
	sw $t0, -228($fp)
	addi $t0, $fp, -32
	sw $t0, -232($fp)
	lw $t0, -220($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -240($fp)
	li $t0, 4
	lw $t1, -240($fp)
	mul $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	lw $t1, -232($fp)
	add $t0, $t0, $t1
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	lw $t1, 0($t0)
	sw $t1, -252($fp)
	lw $t1, -252($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label121
label121:
	li $t0, 1
	sw $t0, -228($fp)
label122:
	li $t0, 48804
	sw $t0, -256($fp)
	lw $t0, -228($fp)
	lw $t1, -256($fp)
	sub $t0, $t0, $t1
	sw $t0, -260($fp)
	lw $t0, -40($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -268($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -288($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -308($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -328($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -348($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -368($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -388($fp)
	li $t0, 6
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
	lw $t0, -220($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -412($fp)
	li $t0, 0
	sw $t0, -416($fp)
	lw $t0, 4($fp)
	sw $t0, -420($fp)
	lw $t1, -420($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label126
label126:
	li $t0, 1
	sw $t0, -416($fp)
label127:
	li $t0, 55852
	sw $t0, -424($fp)
	lw $t0, -416($fp)
	lw $t1, -424($fp)
	mul $t0, $t0, $t1
	sw $t0, -428($fp)
	li $t0, 0
	sw $t0, -432($fp)
	li $t0, 0
	sw $t0, -436($fp)
	li $t0, 15756
	sw $t0, -440($fp)
	lw $t1, -440($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label130
label130:
	li $t0, 1
	sw $t0, -436($fp)
label131:
	li $t0, 41156
	sw $t0, -444($fp)
	lw $t1, -436($fp)
	lw $t2, -444($fp)
	beq $t1, $t2, label128
	j label129
label128:
	li $t0, 1
	sw $t0, -432($fp)
label129:
	li $t0, 29620
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -452($fp)
	li $t0, 37255
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -460($fp)
	li $t0, 0
	sw $t0, -464($fp)
	li $t0, 0
	sw $t0, -468($fp)
	lw $t0, 4($fp)
	sw $t0, -472($fp)
	li $t0, 30242
	sw $t0, -476($fp)
	lw $t0, -472($fp)
	lw $t1, -476($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -480($fp)
	lw $t1, -480($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label136
label136:
	lw $t0, 8($fp)
	sw $t0, -484($fp)
	lw $t1, -484($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label135
label134:
	li $t0, 1
	sw $t0, -468($fp)
label135:
	li $t0, 0
	sw $t0, -488($fp)
	li $t0, 42476
	sw $t0, -492($fp)
	lw $t1, -492($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label139
label140:
	li $t0, 45532
	sw $t0, -496($fp)
	lw $t1, -496($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label139
label139:
	lw $t0, 8($fp)
	sw $t0, -500($fp)
	lw $t1, -500($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label138
label137:
	li $t0, 1
	sw $t0, -488($fp)
label138:
	li $t0, 0
	sw $t0, -504($fp)
	li $t0, 0
	sw $t0, -508($fp)
	li $t0, 10340
	sw $t0, -512($fp)
	lw $t0, 8($fp)
	sw $t0, -516($fp)
	lw $t1, -512($fp)
	lw $t2, -516($fp)
	bge $t1, $t2, label143
	j label144
label143:
	li $t0, 1
	sw $t0, -508($fp)
label144:
	li $t0, 23069
	sw $t0, -520($fp)
	lw $t1, -508($fp)
	lw $t2, -520($fp)
	bge $t1, $t2, label141
	j label142
label141:
	li $t0, 1
	sw $t0, -504($fp)
label142:
	li $t0, 0
	sw $t0, -524($fp)
	lw $t0, 8($fp)
	sw $t0, -528($fp)
	lw $t1, -528($fp)
	li $t2, 0
	bne $t1, $t2, label146
	j label147
label147:
	li $t0, 42111
	sw $t0, -532($fp)
	lw $t1, -532($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label146
label145:
	li $t0, 1
	sw $t0, -524($fp)
label146:
	addi $sp, $sp, -4
	lw $t0, -468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -524($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -536($fp)
	addi $sp, $sp, 20
	lw $t1, -536($fp)
	li $t2, 0
	bne $t1, $t2, label133
	j label132
label132:
	li $t0, 1
	sw $t0, -464($fp)
label133:
	addi $sp, $sp, -4
	lw $t0, -432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -464($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -540($fp)
	addi $sp, $sp, 20
	lw $t0, -428($fp)
	lw $t1, -540($fp)
	mul $t0, $t0, $t1
	sw $t0, -544($fp)
	addi $t0, $fp, -32
	sw $t0, -548($fp)
	lw $t0, -40($fp)
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
	lw $t0, -544($fp)
	lw $t1, -564($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -568($fp)
	lw $t1, -568($fp)
	li $t2, 0
	bne $t1, $t2, label123
	j label125
label125:
	li $t0, 0
	sw $t0, -572($fp)
	lw $t0, 8($fp)
	sw $t0, -576($fp)
	lw $t0, 4($fp)
	sw $t0, -580($fp)
	lw $t0, -576($fp)
	lw $t1, -580($fp)
	sub $t0, $t0, $t1
	sw $t0, -584($fp)
	lw $t0, 4($fp)
	sw $t0, -588($fp)
	lw $t1, -584($fp)
	lw $t2, -588($fp)
	beq $t1, $t2, label148
	j label149
label148:
	li $t0, 1
	sw $t0, -572($fp)
label149:
	li $t0, 50749
	sw $t0, -592($fp)
	lw $t0, 4($fp)
	sw $t0, -596($fp)
	lw $t0, 8($fp)
	sw $t0, -600($fp)
	lw $t0, -596($fp)
	lw $t1, -600($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -604($fp)
	li $t0, 0
	lw $t1, -604($fp)
	sub $t0, $t0, $t1
	sw $t0, -608($fp)
	li $t0, 0
	sw $t0, -612($fp)
	lw $t0, 4($fp)
	sw $t0, -616($fp)
	lw $t1, -616($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label152
label152:
	li $t0, 52089
	sw $t0, -620($fp)
	lw $t1, -620($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -612($fp)
label151:
	li $t0, 37765
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -628($fp)
	addi $sp, $sp, -4
	lw $t0, -592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -628($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -632($fp)
	addi $sp, $sp, 20
	lw $t1, -572($fp)
	lw $t2, -632($fp)
	beq $t1, $t2, label123
	j label124
label123:
	li $t0, 1
	sw $t0, -412($fp)
label124:
	lw $ra, -4($fp)
	lw $v0, -412($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1276
	li $t0, 21534
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	li $t0, 12185
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	li $t0, 47526
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	li $t0, 12653
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	li $t0, 45256
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	li $t0, 63604
	sw $t0, -92($fp)
	addi $t0, $fp, -12
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
	li $t0, 32638
	sw $t0, -116($fp)
	addi $t0, $fp, -12
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
	li $t0, 11486
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	li $t0, 49128
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	li $t0, 41378
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	li $t0, 11916
	sw $t0, -176($fp)
	addi $t0, $fp, -28
	sw $t0, -180($fp)
	li $t0, 0
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
	li $t0, 44120
	sw $t0, -200($fp)
	addi $t0, $fp, -28
	sw $t0, -204($fp)
	li $t0, 1
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
	li $t0, 28132
	sw $t0, -224($fp)
	addi $t0, $fp, -28
	sw $t0, -228($fp)
	li $t0, 2
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
	li $t0, 28261
	sw $t0, -248($fp)
	addi $t0, $fp, -28
	sw $t0, -252($fp)
	li $t0, 3
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
	li $t0, 54059
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	li $t0, 44073
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	li $t0, 0
	sw $t0, -296($fp)
	li $t0, 0
	sw $t0, -300($fp)
	lw $t0, -72($fp)
	sw $t0, -304($fp)
	lw $t1, -304($fp)
	li $t2, 0
	bne $t1, $t2, label156
	j label155
label155:
	li $t0, 1
	sw $t0, -300($fp)
label156:
	addi $t0, $fp, -28
	sw $t0, -308($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -328($fp)
	li $t0, 20648
	sw $t0, -332($fp)
	lw $t1, -332($fp)
	li $t2, 0
	bne $t1, $t2, label158
	j label157
label157:
	li $t0, 1
	sw $t0, -328($fp)
label158:
	lw $t0, -324($fp)
	lw $t1, -328($fp)
	sub $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $t1, -300($fp)
	lw $t2, -336($fp)
	ble $t1, $t2, label153
	j label154
label153:
	li $t0, 1
	sw $t0, -296($fp)
label154:
label159:
	li $t0, 0
	sw $t0, -340($fp)
	lw $t0, -72($fp)
	sw $t0, -344($fp)
	li $t0, 34844
	sw $t0, -348($fp)
	lw $t0, -344($fp)
	lw $t1, -348($fp)
	mul $t0, $t0, $t1
	sw $t0, -352($fp)
	li $t0, 31487
	sw $t0, -356($fp)
	lw $t1, -352($fp)
	lw $t2, -356($fp)
	bgt $t1, $t2, label162
	j label163
label162:
	li $t0, 1
	sw $t0, -340($fp)
label163:
	li $t0, 0
	sw $t0, -360($fp)
	li $t0, 1866
	sw $t0, -364($fp)
	lw $t0, -84($fp)
	sw $t0, -368($fp)
	lw $t1, -364($fp)
	lw $t2, -368($fp)
	ble $t1, $t2, label164
	j label166
label166:
	li $t0, 32152
	sw $t0, -372($fp)
	lw $t1, -372($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label165
label164:
	li $t0, 1
	sw $t0, -360($fp)
label165:
	li $t0, 1909
	sw $t0, -376($fp)
	li $t0, 0
	lw $t1, -376($fp)
	sub $t0, $t0, $t1
	sw $t0, -380($fp)
	li $t0, 63124
	sw $t0, -384($fp)
	lw $t0, -380($fp)
	lw $t1, -384($fp)
	sub $t0, $t0, $t1
	sw $t0, -388($fp)
	li $t0, 0
	sw $t0, -392($fp)
	li $t0, 21870
	sw $t0, -396($fp)
	lw $t1, -396($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label169
label169:
	lw $t0, -276($fp)
	sw $t0, -400($fp)
	lw $t1, -400($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label168
label167:
	li $t0, 1
	sw $t0, -392($fp)
label168:
	addi $sp, $sp, -4
	lw $t0, -340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -392($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -404($fp)
	addi $sp, $sp, 20
	lw $t1, -404($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label161
label160:
	addi $t0, $fp, -28
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
	li $t0, 0
	sw $t0, -428($fp)
	li $t0, 0
	sw $t0, -432($fp)
	lw $t0, -72($fp)
	sw $t0, -436($fp)
	lw $t1, -436($fp)
	li $t2, 0
	bne $t1, $t2, label173
	j label172
label172:
	li $t0, 1
	sw $t0, -432($fp)
label173:
	lw $t0, -72($fp)
	sw $t0, -440($fp)
	lw $t0, -432($fp)
	lw $t1, -440($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -444($fp)
	addi $t0, $fp, -12
	sw $t0, -448($fp)
	lw $t0, -72($fp)
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
	lw $t0, -444($fp)
	lw $t1, -464($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -468($fp)
	addi $t0, $fp, -28
	sw $t0, -472($fp)
	li $t0, 1
	sw $t0, -476($fp)
	li $t0, 4
	lw $t1, -476($fp)
	mul $t0, $t0, $t1
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	lw $t1, -472($fp)
	add $t0, $t0, $t1
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	lw $t1, 0($t0)
	sw $t1, -488($fp)
	lw $t0, -468($fp)
	lw $t1, -488($fp)
	mul $t0, $t0, $t1
	sw $t0, -492($fp)
	lw $t0, -72($fp)
	sw $t0, -496($fp)
	lw $t1, -492($fp)
	lw $t2, -496($fp)
	bne $t1, $t2, label170
	j label171
label170:
	li $t0, 1
	sw $t0, -428($fp)
label171:
	li $t0, 61213
	sw $t0, -500($fp)
	lw $t0, -288($fp)
	sw $t0, -504($fp)
	lw $t0, -500($fp)
	lw $t1, -504($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -508($fp)
	j label159
label161:
	lw $t0, -36($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -48($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -532($fp)
	li $t0, 0
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
	lw $t0, -548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -552($fp)
	li $t0, 1
	sw $t0, -556($fp)
	li $t0, 4
	lw $t1, -556($fp)
	mul $t0, $t0, $t1
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	lw $t1, -552($fp)
	add $t0, $t0, $t1
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	lw $t1, 0($t0)
	sw $t1, -568($fp)
	lw $t0, -568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -156($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -584($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -604($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -624($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -644($fp)
	li $t0, 3
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
	lw $t0, -276($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -672($fp)
	li $t0, 0
	sw $t0, -676($fp)
	li $t0, 0
	sw $t0, -680($fp)
	lw $t0, -276($fp)
	sw $t0, -684($fp)
	lw $t0, -72($fp)
	sw $t0, -688($fp)
	lw $t0, -684($fp)
	lw $t1, -688($fp)
	sub $t0, $t0, $t1
	sw $t0, -692($fp)
	addi $t0, $fp, -12
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
	lw $t1, -692($fp)
	lw $t2, -712($fp)
	ble $t1, $t2, label178
	j label179
label178:
	li $t0, 1
	sw $t0, -680($fp)
label179:
	li $t0, 0
	sw $t0, -716($fp)
	li $t0, 43203
	sw $t0, -720($fp)
	lw $t1, -720($fp)
	li $t2, 0
	bne $t1, $t2, label181
	j label180
label180:
	li $t0, 1
	sw $t0, -716($fp)
label181:
	li $t0, 0
	lw $t1, -716($fp)
	sub $t0, $t0, $t1
	sw $t0, -724($fp)
	lw $t1, -680($fp)
	lw $t2, -724($fp)
	blt $t1, $t2, label176
	j label177
label176:
	li $t0, 1
	sw $t0, -676($fp)
label177:
	li $t0, 0
	sw $t0, -728($fp)
	addi $t0, $fp, -28
	sw $t0, -732($fp)
	lw $t0, -288($fp)
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
	li $t0, 37903
	sw $t0, -752($fp)
	lw $t1, -748($fp)
	lw $t2, -752($fp)
	blt $t1, $t2, label182
	j label183
label182:
	li $t0, 1
	sw $t0, -728($fp)
label183:
	lw $t1, -676($fp)
	lw $t2, -728($fp)
	bne $t1, $t2, label174
	j label175
label174:
	li $t0, 1
	sw $t0, -672($fp)
label175:
	lw $ra, -4($fp)
	lw $v0, -672($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -36($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -48($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -776($fp)
	li $t0, 0
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
	addi $t0, $fp, -12
	sw $t0, -796($fp)
	li $t0, 1
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
	lw $t0, -144($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -156($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -828($fp)
	li $t0, 0
	sw $t0, -832($fp)
	li $t0, 4
	lw $t1, -832($fp)
	mul $t0, $t0, $t1
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	lw $t1, -828($fp)
	add $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	lw $t1, 0($t0)
	sw $t1, -844($fp)
	lw $t0, -844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -848($fp)
	li $t0, 1
	sw $t0, -852($fp)
	li $t0, 4
	lw $t1, -852($fp)
	mul $t0, $t0, $t1
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	lw $t1, -848($fp)
	add $t0, $t0, $t1
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	lw $t1, 0($t0)
	sw $t1, -864($fp)
	lw $t0, -864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -868($fp)
	li $t0, 2
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
	lw $t0, -884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -888($fp)
	li $t0, 3
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
	lw $t0, -904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -276($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 26367
	sw $t0, -916($fp)
	li $t0, 41272
	sw $t0, -920($fp)
	lw $t0, -916($fp)
	lw $t1, -920($fp)
	mul $t0, $t0, $t1
	sw $t0, -924($fp)
	li $t0, 5005
	sw $t0, -928($fp)
	lw $t0, -924($fp)
	lw $t1, -928($fp)
	sub $t0, $t0, $t1
	sw $t0, -932($fp)
	lw $t0, -144($fp)
	sw $t0, -936($fp)
	li $t0, 24864
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -944($fp)
	li $t0, 0
	sw $t0, -948($fp)
	lw $t0, -156($fp)
	sw $t0, -952($fp)
	lw $t1, -952($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label186
label186:
	lw $t0, -72($fp)
	sw $t0, -956($fp)
	lw $t1, -956($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label185
label184:
	li $t0, 1
	sw $t0, -948($fp)
label185:
	addi $t0, $fp, -28
	sw $t0, -960($fp)
	lw $t0, -144($fp)
	sw $t0, -964($fp)
	li $t0, 4
	lw $t1, -964($fp)
	mul $t0, $t0, $t1
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	lw $t1, -960($fp)
	add $t0, $t0, $t1
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	lw $t1, 0($t0)
	sw $t1, -976($fp)
	li $t0, 0
	sw $t0, -980($fp)
	lw $t0, -60($fp)
	sw $t0, -984($fp)
	lw $t0, -36($fp)
	sw $t0, -988($fp)
	lw $t0, -984($fp)
	lw $t1, -988($fp)
	add $t0, $t0, $t1
	sw $t0, -992($fp)
	li $t0, 37853
	sw $t0, -996($fp)
	lw $t1, -992($fp)
	lw $t2, -996($fp)
	ble $t1, $t2, label187
	j label188
label187:
	li $t0, 1
	sw $t0, -980($fp)
label188:
	addi $t0, $fp, -12
	sw $t0, -1000($fp)
	lw $t0, -48($fp)
	sw $t0, -1004($fp)
	li $t0, 4
	lw $t1, -1004($fp)
	mul $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	lw $t1, -1000($fp)
	add $t0, $t0, $t1
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	lw $t1, 0($t0)
	sw $t1, -1016($fp)
	li $t0, 0
	sw $t0, -1020($fp)
	jal f7
	sw $v0, -1024($fp)
	addi $sp, $sp, 4
	lw $t1, -1024($fp)
	li $t2, 0
	bne $t1, $t2, label189
	j label191
label191:
	lw $t0, -84($fp)
	sw $t0, -1028($fp)
	lw $t1, -1028($fp)
	li $t2, 0
	bne $t1, $t2, label189
	j label190
label189:
	li $t0, 1
	sw $t0, -1020($fp)
label190:
	addi $sp, $sp, -4
	lw $t0, -976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1020($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1032($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -1032($fp)
	sub $t0, $t0, $t1
	sw $t0, -1036($fp)
	addi $sp, $sp, -4
	lw $t0, -936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1036($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1040($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -12
	sw $t0, -1044($fp)
	lw $t0, -72($fp)
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
	lw $t0, -1040($fp)
	lw $t1, -1060($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1064($fp)
	li $t0, 0
	lw $t1, -1064($fp)
	sub $t0, $t0, $t1
	sw $t0, -1068($fp)
	lw $t0, -932($fp)
	lw $t1, -1068($fp)
	add $t0, $t0, $t1
	sw $t0, -1072($fp)
	lw $ra, -4($fp)
	lw $v0, -1072($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -36($fp)
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -48($fp)
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -1096($fp)
	li $t0, 0
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
	addi $t0, $fp, -12
	sw $t0, -1116($fp)
	li $t0, 1
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
	lw $t0, -144($fp)
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -156($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1148($fp)
	li $t0, 0
	sw $t0, -1152($fp)
	li $t0, 4
	lw $t1, -1152($fp)
	mul $t0, $t0, $t1
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	lw $t1, -1148($fp)
	add $t0, $t0, $t1
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	lw $t1, 0($t0)
	sw $t1, -1164($fp)
	lw $t0, -1164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1168($fp)
	li $t0, 1
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
	lw $t0, -1184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1188($fp)
	li $t0, 2
	sw $t0, -1192($fp)
	li $t0, 4
	lw $t1, -1192($fp)
	mul $t0, $t0, $t1
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	lw $t1, -1188($fp)
	add $t0, $t0, $t1
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	lw $t1, 0($t0)
	sw $t1, -1204($fp)
	lw $t0, -1204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1208($fp)
	li $t0, 3
	sw $t0, -1212($fp)
	li $t0, 4
	lw $t1, -1212($fp)
	mul $t0, $t0, $t1
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	lw $t1, -1208($fp)
	add $t0, $t0, $t1
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	lw $t1, 0($t0)
	sw $t1, -1224($fp)
	lw $t0, -1224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -276($fp)
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1236($fp)
	addi $t0, $fp, -28
	sw $t0, -1240($fp)
	li $t0, 46383
	sw $t0, -1244($fp)
	li $t0, 0
	lw $t1, -1244($fp)
	sub $t0, $t0, $t1
	sw $t0, -1248($fp)
	lw $t0, -168($fp)
	sw $t0, -1252($fp)
	lw $t0, -1248($fp)
	lw $t1, -1252($fp)
	sub $t0, $t0, $t1
	sw $t0, -1256($fp)
	li $t0, 4
	lw $t1, -1256($fp)
	mul $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	lw $t1, -1240($fp)
	add $t0, $t0, $t1
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	lw $t1, 0($t0)
	sw $t1, -1268($fp)
	lw $t1, -1268($fp)
	li $t2, 0
	bne $t1, $t2, label194
	j label193
label194:
	li $t0, 49770
	sw $t0, -1272($fp)
	jal f7
	sw $v0, -1276($fp)
	addi $sp, $sp, 4
	lw $t0, -1272($fp)
	lw $t1, -1276($fp)
	add $t0, $t0, $t1
	sw $t0, -1280($fp)
	lw $t1, -1280($fp)
	li $t2, 0
	bne $t1, $t2, label192
	j label193
label192:
	li $t0, 1
	sw $t0, -1236($fp)
label193:
	lw $ra, -4($fp)
	lw $v0, -1236($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -712
	li $t0, 3448
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
	li $t0, 8979
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
	li $t0, 12495
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
	li $t0, 57508
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
	li $t0, 53052
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	li $t0, 24025
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	li $t0, 36348
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	li $t0, 8164
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	li $t0, 45896
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	li $t0, 0
	sw $t0, -180($fp)
	addi $t0, $fp, -20
	sw $t0, -184($fp)
	li $t0, 0
	sw $t0, -188($fp)
	lw $t0, -172($fp)
	sw $t0, -192($fp)
	li $t0, 38257
	sw $t0, -196($fp)
	lw $t1, -192($fp)
	lw $t2, -196($fp)
	ble $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -188($fp)
label201:
	li $t0, 4
	lw $t1, -188($fp)
	mul $t0, $t0, $t1
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	lw $t1, -184($fp)
	add $t0, $t0, $t1
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	lw $t1, 0($t0)
	sw $t1, -208($fp)
	lw $t1, -208($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label198
label198:
	li $t0, 1
	sw $t0, -180($fp)
label199:
	li $t0, 0
	sw $t0, -212($fp)
	lw $t0, -160($fp)
	sw $t0, -216($fp)
	lw $t1, -216($fp)
	li $t2, 0
	bne $t1, $t2, label204
	j label203
label204:
	lw $t0, -136($fp)
	sw $t0, -220($fp)
	lw $t1, -220($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label203
label202:
	li $t0, 1
	sw $t0, -212($fp)
label203:
	li $t0, 5753
	sw $t0, -224($fp)
	jal f7
	sw $v0, -228($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -232($fp)
	lw $t0, -148($fp)
	sw $t0, -236($fp)
	lw $t1, -236($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label205
label205:
	li $t0, 1
	sw $t0, -232($fp)
label206:
	li $t0, 0
	lw $t1, -232($fp)
	sub $t0, $t0, $t1
	sw $t0, -240($fp)
	addi $sp, $sp, -4
	lw $t0, -212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -240($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -244($fp)
	addi $sp, $sp, 20
	lw $t0, -180($fp)
	lw $t1, -244($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -248($fp)
	lw $t1, -248($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label196
label195:
label207:
	addi $t0, $fp, -20
	sw $t0, -252($fp)
	li $t0, 1
	sw $t0, -256($fp)
	li $t0, 4
	lw $t1, -256($fp)
	mul $t0, $t0, $t1
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	lw $t1, -252($fp)
	add $t0, $t0, $t1
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	lw $t1, 0($t0)
	sw $t1, -268($fp)
	addi $sp, $sp, -4
	lw $t0, -268($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -272($fp)
	addi $sp, $sp, 8
	lw $t1, -272($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label209
label211:
	li $t0, 40597
	sw $t0, -276($fp)
	li $t0, 0
	lw $t1, -276($fp)
	sub $t0, $t0, $t1
	sw $t0, -280($fp)
	li $t0, 0
	lw $t1, -280($fp)
	sub $t0, $t0, $t1
	sw $t0, -284($fp)
	lw $t1, -284($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label209
label210:
	addi $t0, $fp, -20
	sw $t0, -288($fp)
	lw $t0, -160($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -296($fp)
	li $t0, 4
	lw $t1, -296($fp)
	mul $t0, $t0, $t1
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	lw $t1, -288($fp)
	add $t0, $t0, $t1
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	lw $t1, 0($t0)
	sw $t1, -308($fp)
	lw $t1, -308($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label209
label208:
	li $t0, 13713
	sw $t0, -312($fp)
	li $t0, 0
	lw $t1, -312($fp)
	sub $t0, $t0, $t1
	sw $t0, -316($fp)
	li $t0, 0
	lw $t1, -316($fp)
	sub $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $ra, -4($fp)
	lw $v0, -320($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label207
label209:
	j label197
label196:
	li $t0, 52781
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	li $t0, 51061
	sw $t0, -336($fp)
	lw $t0, -336($fp)
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	li $t0, 17429
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	li $t0, 21707
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -364($fp)
	addi $sp, $sp, -4
	lw $t0, -364($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -368($fp)
	addi $sp, $sp, 8
	lw $t1, -368($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label213
label212:
label215:
	li $t0, 0
	sw $t0, -372($fp)
	li $t0, 46738
	sw $t0, -376($fp)
	lw $t0, -160($fp)
	sw $t0, -380($fp)
	lw $t0, -376($fp)
	lw $t1, -380($fp)
	sub $t0, $t0, $t1
	sw $t0, -384($fp)
	lw $t0, -340($fp)
	sw $t0, -388($fp)
	lw $t0, -384($fp)
	lw $t1, -388($fp)
	sub $t0, $t0, $t1
	sw $t0, -392($fp)
	addi $sp, $sp, -4
	lw $t0, -392($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -396($fp)
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -400($fp)
	lw $t0, -352($fp)
	sw $t0, -404($fp)
	lw $t0, -400($fp)
	lw $t1, -404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -408($fp)
	lw $t1, -396($fp)
	lw $t2, -408($fp)
	beq $t1, $t2, label218
	j label219
label218:
	li $t0, 1
	sw $t0, -372($fp)
label219:
	lw $t0, -372($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -412($fp)
	lw $t1, -412($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label217
label216:
	li $t0, 0
	sw $t0, -416($fp)
	li $t0, 0
	sw $t0, -420($fp)
	lw $t0, -160($fp)
	sw $t0, -424($fp)
	lw $t1, -424($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label222
label222:
	li $t0, 1
	sw $t0, -420($fp)
label223:
	li $t0, 0
	lw $t1, -420($fp)
	sub $t0, $t0, $t1
	sw $t0, -428($fp)
	lw $t0, -136($fp)
	sw $t0, -432($fp)
	lw $t1, -428($fp)
	lw $t2, -432($fp)
	bgt $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -416($fp)
label221:
	lw $ra, -4($fp)
	lw $v0, -416($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label215
label217:
	j label214
label213:
	lw $t0, -124($fp)
	sw $t0, -436($fp)
	li $t0, 0
	sw $t0, -440($fp)
	jal f7
	sw $v0, -444($fp)
	addi $sp, $sp, 4
	li $t0, 42679
	sw $t0, -448($fp)
	lw $t1, -444($fp)
	lw $t2, -448($fp)
	beq $t1, $t2, label224
	j label225
label224:
	li $t0, 1
	sw $t0, -440($fp)
label225:
label214:
	li $t0, 0
	sw $t0, -452($fp)
	addi $t0, $fp, -20
	sw $t0, -456($fp)
	jal f7
	sw $v0, -460($fp)
	addi $sp, $sp, 4
	li $t0, 2817
	sw $t0, -464($fp)
	lw $t0, -460($fp)
	lw $t1, -464($fp)
	add $t0, $t0, $t1
	sw $t0, -468($fp)
	li $t0, 4
	lw $t1, -468($fp)
	mul $t0, $t0, $t1
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	lw $t1, -456($fp)
	add $t0, $t0, $t1
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	lw $t1, 0($t0)
	sw $t1, -480($fp)
	lw $t1, -480($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label227
label228:
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
	sw $t0, -504($fp)
	lw $t0, -160($fp)
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
	addi $t0, $fp, -20
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
	li $t0, 142
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -548($fp)
	li $t0, 0
	sw $t0, -552($fp)
	li $t0, 0
	sw $t0, -556($fp)
	lw $t0, -124($fp)
	sw $t0, -560($fp)
	lw $t0, -124($fp)
	sw $t0, -564($fp)
	lw $t1, -560($fp)
	lw $t2, -564($fp)
	beq $t1, $t2, label231
	j label232
label231:
	li $t0, 1
	sw $t0, -556($fp)
label232:
	li $t0, 29184
	sw $t0, -568($fp)
	lw $t1, -556($fp)
	lw $t2, -568($fp)
	beq $t1, $t2, label229
	j label230
label229:
	li $t0, 1
	sw $t0, -552($fp)
label230:
	addi $sp, $sp, -4
	lw $t0, -520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -552($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -572($fp)
	addi $sp, $sp, 20
	lw $t1, -500($fp)
	lw $t2, -572($fp)
	blt $t1, $t2, label226
	j label227
label226:
	li $t0, 1
	sw $t0, -452($fp)
label227:
label197:
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	lw $t0, -124($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -172($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -676($fp)
	addi $t0, $fp, -20
	sw $t0, -680($fp)
	li $t0, 0
	sw $t0, -684($fp)
	lw $t0, -124($fp)
	sw $t0, -688($fp)
	lw $t1, -688($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label236
label237:
	li $t0, 25006
	sw $t0, -692($fp)
	lw $t1, -692($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -684($fp)
label236:
	li $t0, 4
	lw $t1, -684($fp)
	mul $t0, $t0, $t1
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	lw $t1, -680($fp)
	add $t0, $t0, $t1
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	lw $t1, 0($t0)
	sw $t1, -704($fp)
	li $t0, 899
	sw $t0, -708($fp)
	lw $t0, -704($fp)
	lw $t1, -708($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -712($fp)
	lw $t0, 4($fp)
	sw $t0, -716($fp)
	lw $t1, -712($fp)
	lw $t2, -716($fp)
	bne $t1, $t2, label233
	j label234
label233:
	li $t0, 1
	sw $t0, -676($fp)
label234:
	lw $ra, -4($fp)
	lw $v0, -676($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -400
	li $t0, 51272
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
	li $t0, 28454
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
	li $t0, 9878
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
	li $t0, 63767
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
	li $t0, 20426
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	li $t0, 62931
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	addi $t0, $fp, -20
	sw $t0, -144($fp)
	li $t0, 0
	sw $t0, -148($fp)
	addi $t0, $fp, -20
	sw $t0, -152($fp)
	lw $t0, 8($fp)
	sw $t0, -156($fp)
	li $t0, 4
	lw $t1, -156($fp)
	mul $t0, $t0, $t1
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	lw $t1, -152($fp)
	add $t0, $t0, $t1
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	lw $t1, 0($t0)
	sw $t1, -168($fp)
	lw $t1, -168($fp)
	li $t2, 0
	bne $t1, $t2, label240
	j label239
label240:
	lw $t0, 8($fp)
	sw $t0, -172($fp)
	lw $t1, -172($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -148($fp)
label239:
	li $t0, 4
	lw $t1, -148($fp)
	mul $t0, $t0, $t1
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	lw $t1, -144($fp)
	add $t0, $t0, $t1
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	lw $t1, 0($t0)
	sw $t1, -184($fp)
	jal f7
	sw $v0, -188($fp)
	addi $sp, $sp, 4
	lw $t0, -184($fp)
	lw $t1, -188($fp)
	mul $t0, $t0, $t1
	sw $t0, -192($fp)
	li $t0, 22257
	sw $t0, -196($fp)
	lw $t0, 8($fp)
	sw $t0, -200($fp)
	lw $t0, 8($fp)
	sw $t0, -204($fp)
	jal f7
	sw $v0, -208($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -208($fp)
	sub $t0, $t0, $t1
	sw $t0, -212($fp)
	li $t0, 0
	sw $t0, -216($fp)
	lw $t0, 8($fp)
	sw $t0, -220($fp)
	lw $t1, -220($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label241
label241:
	li $t0, 1
	sw $t0, -216($fp)
label242:
	li $t0, 29496
	sw $t0, -224($fp)
	lw $t0, -216($fp)
	lw $t1, -224($fp)
	mul $t0, $t0, $t1
	sw $t0, -228($fp)
	lw $t0, 8($fp)
	sw $t0, -232($fp)
	li $t0, 0
	sw $t0, -236($fp)
	li $t0, 2617
	sw $t0, -240($fp)
	lw $t0, 8($fp)
	sw $t0, -244($fp)
	lw $t1, -240($fp)
	lw $t2, -244($fp)
	blt $t1, $t2, label243
	j label244
label243:
	li $t0, 1
	sw $t0, -236($fp)
label244:
	li $t0, 5559
	sw $t0, -248($fp)
	li $t0, 0
	sw $t0, -252($fp)
	lw $t0, -136($fp)
	sw $t0, -256($fp)
	li $t0, 56774
	sw $t0, -260($fp)
	lw $t0, -256($fp)
	lw $t1, -260($fp)
	sub $t0, $t0, $t1
	sw $t0, -264($fp)
	lw $t1, -264($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label247
label247:
	lw $t0, 4($fp)
	sw $t0, -268($fp)
	lw $t1, -268($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label246
label245:
	li $t0, 1
	sw $t0, -252($fp)
label246:
	li $t0, 0
	sw $t0, -272($fp)
	lw $t0, 4($fp)
	sw $t0, -276($fp)
	lw $t0, 8($fp)
	sw $t0, -280($fp)
	lw $t1, -276($fp)
	lw $t2, -280($fp)
	bgt $t1, $t2, label250
	j label249
label250:
	lw $t0, -124($fp)
	sw $t0, -284($fp)
	lw $t1, -284($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label249
label248:
	li $t0, 1
	sw $t0, -272($fp)
label249:
	addi $sp, $sp, -4
	lw $t0, -236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -272($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -288($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -288($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -292($fp)
	addi $sp, $sp, 20
	lw $t0, -204($fp)
	lw $t1, -292($fp)
	mul $t0, $t0, $t1
	sw $t0, -296($fp)
	lw $t0, -200($fp)
	lw $t1, -296($fp)
	add $t0, $t0, $t1
	sw $t0, -300($fp)
	li $t0, 0
	sw $t0, -304($fp)
	jal f7
	sw $v0, -308($fp)
	addi $sp, $sp, 4
	li $t0, 11312
	sw $t0, -312($fp)
	lw $t1, -308($fp)
	lw $t2, -312($fp)
	beq $t1, $t2, label251
	j label252
label251:
	li $t0, 1
	sw $t0, -304($fp)
label252:
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
	sw $t0, -376($fp)
	li $t0, 3
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
	lw $t0, -392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -124($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 50379
	sw $t0, -404($fp)
	lw $ra, -4($fp)
	lw $v0, -404($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2076
	li $t0, 34369
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	li $t0, 51909
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	li $t0, 64093
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	li $t0, 21615
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	li $t0, 37434
	sw $t0, -104($fp)
	addi $t0, $fp, -20
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
	li $t0, 15986
	sw $t0, -128($fp)
	addi $t0, $fp, -20
	sw $t0, -132($fp)
	li $t0, 1
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
	li $t0, 43322
	sw $t0, -152($fp)
	addi $t0, $fp, -20
	sw $t0, -156($fp)
	li $t0, 2
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
	li $t0, 18637
	sw $t0, -176($fp)
	addi $t0, $fp, -20
	sw $t0, -180($fp)
	li $t0, 3
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
	li $t0, 58666
	sw $t0, -200($fp)
	addi $t0, $fp, -32
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
	li $t0, 46139
	sw $t0, -224($fp)
	addi $t0, $fp, -32
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
	li $t0, 43043
	sw $t0, -248($fp)
	addi $t0, $fp, -32
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
	li $t0, 8176
	sw $t0, -272($fp)
	addi $t0, $fp, -48
	sw $t0, -276($fp)
	li $t0, 0
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
	li $t0, 9788
	sw $t0, -296($fp)
	addi $t0, $fp, -48
	sw $t0, -300($fp)
	li $t0, 1
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
	li $t0, 43185
	sw $t0, -320($fp)
	addi $t0, $fp, -48
	sw $t0, -324($fp)
	li $t0, 2
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
	li $t0, 28228
	sw $t0, -344($fp)
	addi $t0, $fp, -48
	sw $t0, -348($fp)
	li $t0, 3
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
	li $t0, 11290
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	li $t0, 2655
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	li $t0, 29127
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	li $t0, 62562
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	li $t0, 31109
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	li $t0, 39005
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	li $t0, 60793
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	li $t0, 51536
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	li $t0, 36400
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	li $t0, 17514
	sw $t0, -476($fp)
	addi $t0, $fp, -52
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
	li $t0, 42774
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	li $t0, 41960
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	li $t0, 20131
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
label253:
	lw $t0, -96($fp)
	sw $t0, -536($fp)
	lw $t0, -420($fp)
	sw $t0, -540($fp)
	lw $t0, -536($fp)
	lw $t1, -540($fp)
	mul $t0, $t0, $t1
	sw $t0, -544($fp)
	li $t0, 6734
	sw $t0, -548($fp)
	lw $t0, -544($fp)
	lw $t1, -548($fp)
	mul $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t0, 8($fp)
	sw $t0, -556($fp)
	lw $t0, -552($fp)
	lw $t1, -556($fp)
	mul $t0, $t0, $t1
	sw $t0, -560($fp)
	lw $t0, -72($fp)
	sw $t0, -564($fp)
	li $t0, 0
	lw $t1, -564($fp)
	sub $t0, $t0, $t1
	sw $t0, -568($fp)
	lw $t0, -560($fp)
	lw $t1, -568($fp)
	mul $t0, $t0, $t1
	sw $t0, -572($fp)
	addi $t0, $fp, -52
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
	li $t0, 0
	lw $t1, -592($fp)
	sub $t0, $t0, $t1
	sw $t0, -596($fp)
	lw $t0, -572($fp)
	lw $t1, -596($fp)
	sub $t0, $t0, $t1
	sw $t0, -600($fp)
	lw $t1, -600($fp)
	li $t2, 0
	bne $t1, $t2, label254
	j label255
label254:
	li $t0, 0
	sw $t0, -604($fp)
	lw $t0, -72($fp)
	sw $t0, -608($fp)
	li $t0, 41104
	sw $t0, -612($fp)
	li $t0, 0
	lw $t1, -612($fp)
	sub $t0, $t0, $t1
	sw $t0, -616($fp)
	lw $t0, -608($fp)
	lw $t1, -616($fp)
	mul $t0, $t0, $t1
	sw $t0, -620($fp)
	lw $t1, -620($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label257
label259:
	li $t0, 39646
	sw $t0, -624($fp)
	li $t0, 0
	lw $t1, -624($fp)
	sub $t0, $t0, $t1
	sw $t0, -628($fp)
	lw $t0, -420($fp)
	sw $t0, -632($fp)
	lw $t0, -628($fp)
	lw $t1, -632($fp)
	add $t0, $t0, $t1
	sw $t0, -636($fp)
	lw $t1, -636($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label257
label258:
	lw $t0, -420($fp)
	sw $t0, -640($fp)
	li $t0, 0
	sw $t0, -644($fp)
	li $t0, 3532
	sw $t0, -648($fp)
	lw $t1, -648($fp)
	li $t2, 0
	bne $t1, $t2, label261
	j label260
label260:
	li $t0, 1
	sw $t0, -644($fp)
label261:
	lw $t0, -640($fp)
	lw $t1, -644($fp)
	sub $t0, $t0, $t1
	sw $t0, -652($fp)
	lw $t1, -652($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label257
label256:
	li $t0, 1
	sw $t0, -604($fp)
label257:
	lw $ra, -4($fp)
	lw $v0, -604($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label253
label255:
label262:
	li $t0, 0
	sw $t0, -656($fp)
	lw $t0, -420($fp)
	sw $t0, -660($fp)
	lw $t1, -660($fp)
	li $t2, 0
	bne $t1, $t2, label266
	j label265
label265:
	li $t0, 1
	sw $t0, -656($fp)
label266:
	li $t0, 0
	lw $t1, -656($fp)
	sub $t0, $t0, $t1
	sw $t0, -664($fp)
	li $t0, 0
	lw $t1, -664($fp)
	sub $t0, $t0, $t1
	sw $t0, -668($fp)
	li $t0, 0
	lw $t1, -668($fp)
	sub $t0, $t0, $t1
	sw $t0, -672($fp)
	li $t0, 0
	sw $t0, -676($fp)
	li $t0, 62719
	sw $t0, -680($fp)
	lw $t1, -680($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label269
label270:
	lw $t0, -528($fp)
	sw $t0, -684($fp)
	lw $t1, -684($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label269
label269:
	lw $t0, -432($fp)
	sw $t0, -688($fp)
	lw $t1, -688($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label268
label267:
	li $t0, 1
	sw $t0, -676($fp)
label268:
	lw $t0, -60($fp)
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -696($fp)
	lw $t0, 4($fp)
	sw $t0, -700($fp)
	jal f7
	sw $v0, -704($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -704($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -708($fp)
	addi $sp, $sp, 20
	lw $t1, -672($fp)
	lw $t2, -708($fp)
	beq $t1, $t2, label263
	j label264
label263:
label271:
	li $t0, 0
	sw $t0, -712($fp)
	lw $t0, -420($fp)
	sw $t0, -716($fp)
	li $t0, 11544
	sw $t0, -720($fp)
	lw $t0, -716($fp)
	lw $t1, -720($fp)
	add $t0, $t0, $t1
	sw $t0, -724($fp)
	li $t0, 0
	sw $t0, -728($fp)
	li $t0, 0
	sw $t0, -732($fp)
	li $t0, 0
	sw $t0, -736($fp)
	li $t0, 19518
	sw $t0, -740($fp)
	lw $t0, -72($fp)
	sw $t0, -744($fp)
	lw $t1, -740($fp)
	lw $t2, -744($fp)
	ble $t1, $t2, label280
	j label281
label280:
	li $t0, 1
	sw $t0, -736($fp)
label281:
	lw $t0, 8($fp)
	sw $t0, -748($fp)
	lw $t1, -736($fp)
	lw $t2, -748($fp)
	bge $t1, $t2, label278
	j label279
label278:
	li $t0, 1
	sw $t0, -732($fp)
label279:
	addi $sp, $sp, -4
	lw $t0, -732($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -752($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -752($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -756($fp)
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -760($fp)
	lw $t1, -756($fp)
	lw $t2, -760($fp)
	ble $t1, $t2, label276
	j label277
label276:
	li $t0, 1
	sw $t0, -728($fp)
label277:
	addi $sp, $sp, -4
	lw $t0, -728($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -764($fp)
	addi $sp, $sp, 8
	li $t0, 40505
	sw $t0, -768($fp)
	lw $t0, -764($fp)
	lw $t1, -768($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -772($fp)
	lw $t1, -724($fp)
	lw $t2, -772($fp)
	bgt $t1, $t2, label274
	j label275
label274:
	li $t0, 1
	sw $t0, -712($fp)
label275:
	li $t0, 30181
	sw $t0, -776($fp)
	li $t0, 12648
	sw $t0, -780($fp)
	lw $t0, -776($fp)
	lw $t1, -780($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -784($fp)
	lw $t1, -712($fp)
	lw $t2, -784($fp)
	bgt $t1, $t2, label272
	j label273
label272:
	li $t0, 0
	sw $t0, -788($fp)
	lw $t0, -396($fp)
	sw $t0, -792($fp)
	lw $t1, -792($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label285
label285:
	li $t0, 1
	sw $t0, -788($fp)
label286:
	li $t0, 0
	sw $t0, -796($fp)
	li $t0, 0
	sw $t0, -800($fp)
	lw $t0, -384($fp)
	sw $t0, -804($fp)
	lw $t0, -72($fp)
	sw $t0, -808($fp)
	lw $t0, -804($fp)
	lw $t1, -808($fp)
	mul $t0, $t0, $t1
	sw $t0, -812($fp)
	li $t0, 20825
	sw $t0, -816($fp)
	lw $t1, -812($fp)
	lw $t2, -816($fp)
	beq $t1, $t2, label289
	j label290
label289:
	li $t0, 1
	sw $t0, -800($fp)
label290:
	lw $t0, -420($fp)
	sw $t0, -820($fp)
	li $t0, 21108
	sw $t0, -824($fp)
	li $t0, 7688
	sw $t0, -828($fp)
	lw $t0, -824($fp)
	lw $t1, -828($fp)
	sub $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t0, -420($fp)
	sw $t0, -836($fp)
	lw $t0, -832($fp)
	lw $t1, -836($fp)
	add $t0, $t0, $t1
	sw $t0, -840($fp)
	addi $sp, $sp, -4
	lw $t0, -800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -840($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -844($fp)
	addi $sp, $sp, 16
	lw $t1, -844($fp)
	li $t2, 0
	bne $t1, $t2, label288
	j label287
label287:
	li $t0, 1
	sw $t0, -796($fp)
label288:
	lw $t0, -788($fp)
	lw $t1, -796($fp)
	mul $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, -432($fp)
	sw $t0, -852($fp)
	lw $t1, -848($fp)
	lw $t2, -852($fp)
	ble $t1, $t2, label282
	j label283
label282:
label291:
	lw $t0, -420($fp)
	sw $t0, -856($fp)
	li $t0, 30896
	sw $t0, -860($fp)
	li $t0, 0
	lw $t1, -860($fp)
	sub $t0, $t0, $t1
	sw $t0, -864($fp)
	lw $t0, -856($fp)
	lw $t1, -864($fp)
	mul $t0, $t0, $t1
	sw $t0, -868($fp)
	li $t0, 0
	lw $t1, -868($fp)
	sub $t0, $t0, $t1
	sw $t0, -872($fp)
	li $t0, 0
	sw $t0, -876($fp)
	li $t0, 50873
	sw $t0, -880($fp)
	lw $t1, -880($fp)
	li $t2, 0
	bne $t1, $t2, label295
	j label294
label294:
	li $t0, 1
	sw $t0, -876($fp)
label295:
	lw $t0, -872($fp)
	lw $t1, -876($fp)
	sub $t0, $t0, $t1
	sw $t0, -884($fp)
	lw $t1, -884($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label293
label292:
	li $t0, 0
	sw $t0, -888($fp)
	addi $t0, $fp, -52
	sw $t0, -892($fp)
	li $t0, 0
	sw $t0, -896($fp)
	li $t0, 0
	sw $t0, -900($fp)
	lw $t0, -516($fp)
	sw $t0, -904($fp)
	lw $t1, -904($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label300
label300:
	li $t0, 1
	sw $t0, -900($fp)
label301:
	lw $t0, -432($fp)
	sw $t0, -908($fp)
	lw $t1, -900($fp)
	lw $t2, -908($fp)
	ble $t1, $t2, label298
	j label299
label298:
	li $t0, 1
	sw $t0, -896($fp)
label299:
	li $t0, 4
	lw $t1, -896($fp)
	mul $t0, $t0, $t1
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	lw $t1, -892($fp)
	add $t0, $t0, $t1
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	lw $t1, 0($t0)
	sw $t1, -920($fp)
	lw $t1, -920($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label296
label296:
	li $t0, 1
	sw $t0, -888($fp)
label297:
	j label291
label293:
	j label284
label283:
	li $t0, 0
	sw $t0, -924($fp)
	li $t0, 0
	sw $t0, -928($fp)
	jal f7
	sw $v0, -932($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -48
	sw $t0, -936($fp)
	li $t0, 2
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
	lw $t0, -932($fp)
	lw $t1, -952($fp)
	sub $t0, $t0, $t1
	sw $t0, -956($fp)
	lw $t0, -468($fp)
	sw $t0, -960($fp)
	lw $t1, -956($fp)
	lw $t2, -960($fp)
	ble $t1, $t2, label304
	j label305
label304:
	li $t0, 1
	sw $t0, -928($fp)
label305:
	lw $t0, -408($fp)
	sw $t0, -964($fp)
	lw $t0, 12($fp)
	sw $t0, -968($fp)
	lw $t0, -964($fp)
	lw $t1, -968($fp)
	add $t0, $t0, $t1
	sw $t0, -972($fp)
	lw $t1, -928($fp)
	lw $t2, -972($fp)
	beq $t1, $t2, label302
	j label303
label302:
	li $t0, 1
	sw $t0, -924($fp)
label303:
label284:
	j label271
label273:
	j label262
label264:
	lw $t0, -60($fp)
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -20
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
	addi $t0, $fp, -32
	sw $t0, -1072($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -1092($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -1112($fp)
	li $t0, 2
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
	addi $t0, $fp, -48
	sw $t0, -1132($fp)
	li $t0, 0
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
	addi $t0, $fp, -48
	sw $t0, -1152($fp)
	li $t0, 1
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
	addi $t0, $fp, -48
	sw $t0, -1172($fp)
	li $t0, 2
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
	addi $t0, $fp, -48
	sw $t0, -1192($fp)
	li $t0, 3
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
	lw $t0, -372($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -408($fp)
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1248($fp)
	li $t0, 0
	sw $t0, -1252($fp)
	li $t0, 4
	lw $t1, -1252($fp)
	mul $t0, $t0, $t1
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	lw $t1, -1248($fp)
	add $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	lw $t1, 0($t0)
	sw $t1, -1264($fp)
	lw $t0, -1264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1280($fp)
	li $t0, 0
	sw $t0, -1284($fp)
	li $t0, 0
	sw $t0, -1288($fp)
	li $t0, 0
	sw $t0, -1292($fp)
	li $t0, 19102
	sw $t0, -1296($fp)
	lw $t0, -396($fp)
	sw $t0, -1300($fp)
	lw $t1, -1296($fp)
	lw $t2, -1300($fp)
	blt $t1, $t2, label313
	j label314
label313:
	li $t0, 1
	sw $t0, -1292($fp)
label314:
	lw $t0, -420($fp)
	sw $t0, -1304($fp)
	li $t0, 0
	lw $t1, -1304($fp)
	sub $t0, $t0, $t1
	sw $t0, -1308($fp)
	li $t0, 12644
	sw $t0, -1312($fp)
	lw $t0, -1308($fp)
	lw $t1, -1312($fp)
	sub $t0, $t0, $t1
	sw $t0, -1316($fp)
	li $t0, 0
	sw $t0, -1320($fp)
	lw $t0, 4($fp)
	sw $t0, -1324($fp)
	lw $t1, -1324($fp)
	li $t2, 0
	bne $t1, $t2, label316
	j label315
label315:
	li $t0, 1
	sw $t0, -1320($fp)
label316:
	lw $t0, -72($fp)
	sw $t0, -1328($fp)
	lw $t0, -1320($fp)
	lw $t1, -1328($fp)
	sub $t0, $t0, $t1
	sw $t0, -1332($fp)
	addi $t0, $fp, -48
	sw $t0, -1336($fp)
	lw $t0, 4($fp)
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
	li $t0, 0
	lw $t1, -1352($fp)
	sub $t0, $t0, $t1
	sw $t0, -1356($fp)
	addi $sp, $sp, -4
	lw $t0, -1316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1356($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1360($fp)
	addi $sp, $sp, 16
	li $t0, 39212
	sw $t0, -1364($fp)
	lw $t0, -1360($fp)
	lw $t1, -1364($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1368($fp)
	li $t0, 0
	sw $t0, -1372($fp)
	li $t0, 53528
	sw $t0, -1376($fp)
	lw $t0, -96($fp)
	sw $t0, -1380($fp)
	lw $t0, -1376($fp)
	lw $t1, -1380($fp)
	mul $t0, $t0, $t1
	sw $t0, -1384($fp)
	lw $t0, -384($fp)
	sw $t0, -1388($fp)
	lw $t1, -1384($fp)
	lw $t2, -1388($fp)
	bne $t1, $t2, label317
	j label318
label317:
	li $t0, 1
	sw $t0, -1372($fp)
label318:
	addi $sp, $sp, -4
	lw $t0, -1292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1372($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1392($fp)
	addi $sp, $sp, 16
	lw $t0, -84($fp)
	sw $t0, -1396($fp)
	lw $t1, -1392($fp)
	lw $t2, -1396($fp)
	bne $t1, $t2, label311
	j label312
label311:
	li $t0, 1
	sw $t0, -1288($fp)
label312:
	li $t0, 0
	sw $t0, -1400($fp)
	lw $t0, -96($fp)
	sw $t0, -1404($fp)
	lw $t0, -60($fp)
	sw $t0, -1408($fp)
	lw $t1, -1404($fp)
	lw $t2, -1408($fp)
	bgt $t1, $t2, label319
	j label320
label319:
	li $t0, 1
	sw $t0, -1400($fp)
label320:
	lw $t1, -1288($fp)
	lw $t2, -1400($fp)
	bne $t1, $t2, label309
	j label310
label309:
	li $t0, 1
	sw $t0, -1284($fp)
label310:
	addi $t0, $fp, -20
	sw $t0, -1412($fp)
	lw $t0, -408($fp)
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
	li $t0, 51649
	sw $t0, -1432($fp)
	lw $t0, -1428($fp)
	lw $t1, -1432($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1436($fp)
	lw $t1, -1284($fp)
	lw $t2, -1436($fp)
	bne $t1, $t2, label308
	j label307
label308:
	li $t0, 34470
	sw $t0, -1440($fp)
	li $t0, 5102
	sw $t0, -1444($fp)
	lw $t0, -1440($fp)
	lw $t1, -1444($fp)
	mul $t0, $t0, $t1
	sw $t0, -1448($fp)
	li $t0, 22514
	sw $t0, -1452($fp)
	lw $t0, -1448($fp)
	lw $t1, -1452($fp)
	sub $t0, $t0, $t1
	sw $t0, -1456($fp)
	lw $t0, -504($fp)
	sw $t0, -1460($fp)
	li $t0, 0
	lw $t1, -1460($fp)
	sub $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t0, -1456($fp)
	lw $t1, -1464($fp)
	add $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $t1, -1468($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label307
label306:
	li $t0, 1
	sw $t0, -1280($fp)
label307:
	lw $ra, -4($fp)
	lw $v0, -1280($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -32
	sw $t0, -1472($fp)
	li $t0, 0
	sw $t0, -1476($fp)
	addi $t0, $fp, -32
	sw $t0, -1480($fp)
	lw $t0, -504($fp)
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
	lw $t0, -528($fp)
	sw $t0, -1500($fp)
	li $t0, 0
	lw $t1, -1500($fp)
	sub $t0, $t0, $t1
	sw $t0, -1504($fp)
	li $t0, 11555
	sw $t0, -1508($fp)
	lw $t0, -1504($fp)
	lw $t1, -1508($fp)
	sub $t0, $t0, $t1
	sw $t0, -1512($fp)
	li $t0, 0
	sw $t0, -1516($fp)
	li $t0, 6580
	sw $t0, -1520($fp)
	li $t0, 54611
	sw $t0, -1524($fp)
	lw $t0, -1520($fp)
	lw $t1, -1524($fp)
	mul $t0, $t0, $t1
	sw $t0, -1528($fp)
	li $t0, 52210
	sw $t0, -1532($fp)
	lw $t1, -1528($fp)
	lw $t2, -1532($fp)
	bne $t1, $t2, label326
	j label327
label326:
	li $t0, 1
	sw $t0, -1516($fp)
label327:
	li $t0, 0
	sw $t0, -1536($fp)
	li $t0, 64474
	sw $t0, -1540($fp)
	lw $t1, -1540($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label328
label328:
	li $t0, 1
	sw $t0, -1536($fp)
label329:
	addi $sp, $sp, -4
	lw $t0, -1496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1536($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1544($fp)
	addi $sp, $sp, 20
	li $t0, 47876
	sw $t0, -1548($fp)
	li $t0, 0
	sw $t0, -1552($fp)
	lw $t0, -372($fp)
	sw $t0, -1556($fp)
	li $t0, 51984
	sw $t0, -1560($fp)
	lw $t0, -1556($fp)
	lw $t1, -1560($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1564($fp)
	lw $t0, -528($fp)
	sw $t0, -1568($fp)
	lw $t1, -1564($fp)
	lw $t2, -1568($fp)
	beq $t1, $t2, label330
	j label331
label330:
	li $t0, 1
	sw $t0, -1552($fp)
label331:
	addi $sp, $sp, -4
	lw $t0, -1544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1552($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1572($fp)
	addi $sp, $sp, 16
	lw $t1, -1572($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label324
label324:
	li $t0, 1
	sw $t0, -1476($fp)
label325:
	li $t0, 4
	lw $t1, -1476($fp)
	mul $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	lw $t1, -1472($fp)
	add $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	lw $t1, 0($t0)
	sw $t1, -1584($fp)
	li $t0, 30179
	sw $t0, -1588($fp)
	lw $t0, -1584($fp)
	lw $t1, -1588($fp)
	mul $t0, $t0, $t1
	sw $t0, -1592($fp)
	lw $t1, -1592($fp)
	li $t2, 0
	bne $t1, $t2, label321
	j label322
label321:
	li $t0, 0
	sw $t0, -1596($fp)
	addi $t0, $fp, -48
	sw $t0, -1600($fp)
	lw $t0, -528($fp)
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
	li $t0, 26320
	sw $t0, -1620($fp)
	lw $t0, -1616($fp)
	lw $t1, -1620($fp)
	mul $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t0, 8($fp)
	sw $t0, -1628($fp)
	lw $t0, -1624($fp)
	lw $t1, -1628($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1632($fp)
	addi $t0, $fp, -52
	sw $t0, -1636($fp)
	lw $t0, -420($fp)
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
	lw $t0, -1632($fp)
	lw $t1, -1652($fp)
	mul $t0, $t0, $t1
	sw $t0, -1656($fp)
	li $t0, 0
	sw $t0, -1660($fp)
	li $t0, 15087
	sw $t0, -1664($fp)
	lw $t1, -1664($fp)
	li $t2, 0
	bne $t1, $t2, label334
	j label335
label334:
	li $t0, 1
	sw $t0, -1660($fp)
label335:
	lw $t1, -1656($fp)
	lw $t2, -1660($fp)
	beq $t1, $t2, label332
	j label333
label332:
	li $t0, 1
	sw $t0, -1596($fp)
label333:
	lw $ra, -4($fp)
	lw $v0, -1596($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label323
label322:
	li $t0, 0
	sw $t0, -1668($fp)
	addi $t0, $fp, -52
	sw $t0, -1672($fp)
	li $t0, 0
	sw $t0, -1676($fp)
	lw $t0, -420($fp)
	sw $t0, -1680($fp)
	lw $t1, -1680($fp)
	li $t2, 0
	bne $t1, $t2, label338
	j label340
label340:
	li $t0, 27362
	sw $t0, -1684($fp)
	lw $t1, -1684($fp)
	li $t2, 0
	bne $t1, $t2, label338
	j label339
label338:
	li $t0, 1
	sw $t0, -1676($fp)
label339:
	li $t0, 4
	lw $t1, -1676($fp)
	mul $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	lw $t1, -1672($fp)
	add $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	lw $t1, 0($t0)
	sw $t1, -1696($fp)
	li $t0, 0
	sw $t0, -1700($fp)
	lw $t0, -528($fp)
	sw $t0, -1704($fp)
	lw $t1, -1704($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label341
label341:
	li $t0, 1
	sw $t0, -1700($fp)
label342:
	lw $t0, -1696($fp)
	lw $t1, -1700($fp)
	sub $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $t0, -384($fp)
	sw $t0, -1712($fp)
	lw $t1, -1708($fp)
	lw $t2, -1712($fp)
	beq $t1, $t2, label336
	j label337
label336:
	li $t0, 1
	sw $t0, -1668($fp)
label337:
	li $t0, 37865
	sw $t0, -1716($fp)
	li $t0, 0
	lw $t1, -1716($fp)
	sub $t0, $t0, $t1
	sw $t0, -1720($fp)
	li $t0, 0
	lw $t1, -1720($fp)
	sub $t0, $t0, $t1
	sw $t0, -1724($fp)
label323:
	lw $t0, -60($fp)
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -72($fp)
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -84($fp)
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -1744($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
	sw $t0, -1764($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -1784($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -1804($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -48
	sw $t0, -1884($fp)
	li $t0, 0
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
	addi $t0, $fp, -48
	sw $t0, -1904($fp)
	li $t0, 1
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
	addi $t0, $fp, -48
	sw $t0, -1924($fp)
	li $t0, 2
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
	addi $t0, $fp, -48
	sw $t0, -1944($fp)
	li $t0, 3
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
	lw $t0, -372($fp)
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -408($fp)
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -1984($fp)
	lw $t0, -1984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -1992($fp)
	lw $t0, -1992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -2000($fp)
	li $t0, 0
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
	lw $t0, -504($fp)
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -2032($fp)
	li $t0, 0
	sw $t0, -2036($fp)
	lw $t0, -444($fp)
	sw $t0, -2040($fp)
	lw $t0, -468($fp)
	sw $t0, -2044($fp)
	lw $t0, -2040($fp)
	lw $t1, -2044($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2048($fp)
	lw $t0, -456($fp)
	sw $t0, -2052($fp)
	lw $t0, -2048($fp)
	lw $t1, -2052($fp)
	sub $t0, $t0, $t1
	sw $t0, -2056($fp)
	li $t0, 0
	sw $t0, -2060($fp)
	li $t0, 34605
	sw $t0, -2064($fp)
	lw $t0, -72($fp)
	sw $t0, -2068($fp)
	lw $t1, -2064($fp)
	lw $t2, -2068($fp)
	ble $t1, $t2, label345
	j label346
label345:
	li $t0, 1
	sw $t0, -2060($fp)
label346:
	lw $t1, -2056($fp)
	lw $t2, -2060($fp)
	bne $t1, $t2, label343
	j label344
label343:
	li $t0, 1
	sw $t0, -2036($fp)
label344:
	li $t0, 4
	lw $t1, -2036($fp)
	mul $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	lw $t1, -2032($fp)
	add $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	lw $t1, 0($t0)
	sw $t1, -2080($fp)
	lw $ra, -4($fp)
	lw $v0, -2080($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -592
	li $t0, 2331
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	li $t0, 2510
	sw $t0, -60($fp)
	addi $t0, $fp, -44
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
	li $t0, 47254
	sw $t0, -84($fp)
	addi $t0, $fp, -44
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
	li $t0, 23439
	sw $t0, -108($fp)
	addi $t0, $fp, -44
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
	li $t0, 10199
	sw $t0, -132($fp)
	addi $t0, $fp, -44
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
	li $t0, 2543
	sw $t0, -156($fp)
	addi $t0, $fp, -44
	sw $t0, -160($fp)
	li $t0, 4
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
	li $t0, 54336
	sw $t0, -180($fp)
	addi $t0, $fp, -44
	sw $t0, -184($fp)
	li $t0, 5
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
	li $t0, 61072
	sw $t0, -204($fp)
	addi $t0, $fp, -44
	sw $t0, -208($fp)
	li $t0, 6
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
	li $t0, 51596
	sw $t0, -228($fp)
	addi $t0, $fp, -44
	sw $t0, -232($fp)
	li $t0, 7
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
	li $t0, 30986
	sw $t0, -252($fp)
	addi $t0, $fp, -44
	sw $t0, -256($fp)
	li $t0, 8
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
	li $t0, 49065
	sw $t0, -276($fp)
	addi $t0, $fp, -44
	sw $t0, -280($fp)
	li $t0, 9
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
	li $t0, 64240
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	li $t0, 4663
	sw $t0, -312($fp)
	lw $t0, -52($fp)
	sw $t0, -316($fp)
	li $t0, 0
	lw $t1, -316($fp)
	sub $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t0, -312($fp)
	lw $t1, -320($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -324($fp)
	lw $t0, -52($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -332($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -352($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -372($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -392($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -412($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -432($fp)
	li $t0, 5
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
	addi $t0, $fp, -44
	sw $t0, -452($fp)
	li $t0, 6
	sw $t0, -456($fp)
	li $t0, 4
	lw $t1, -456($fp)
	mul $t0, $t0, $t1
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	lw $t1, -452($fp)
	add $t0, $t0, $t1
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	lw $t1, 0($t0)
	sw $t1, -468($fp)
	lw $t0, -468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -472($fp)
	li $t0, 7
	sw $t0, -476($fp)
	li $t0, 4
	lw $t1, -476($fp)
	mul $t0, $t0, $t1
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	lw $t1, -472($fp)
	add $t0, $t0, $t1
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	lw $t1, 0($t0)
	sw $t1, -488($fp)
	lw $t0, -488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -492($fp)
	li $t0, 8
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
	lw $t0, -508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -512($fp)
	li $t0, 9
	sw $t0, -516($fp)
	li $t0, 4
	lw $t1, -516($fp)
	mul $t0, $t0, $t1
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	lw $t1, -512($fp)
	add $t0, $t0, $t1
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	lw $t1, 0($t0)
	sw $t1, -528($fp)
	lw $t0, -528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -536($fp)
	li $t0, 0
	sw $t0, -540($fp)
	lw $t0, -304($fp)
	sw $t0, -544($fp)
	lw $t0, -52($fp)
	sw $t0, -548($fp)
	lw $t1, -544($fp)
	lw $t2, -548($fp)
	blt $t1, $t2, label349
	j label350
label349:
	li $t0, 1
	sw $t0, -540($fp)
label350:
	lw $t0, 4($fp)
	sw $t0, -552($fp)
	lw $t1, -540($fp)
	lw $t2, -552($fp)
	beq $t1, $t2, label347
	j label348
label347:
	li $t0, 1
	sw $t0, -536($fp)
label348:
	li $t0, 0
	sw $t0, -556($fp)
	lw $t0, -52($fp)
	sw $t0, -560($fp)
	lw $t1, -560($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label352
label354:
	lw $t0, -304($fp)
	sw $t0, -564($fp)
	lw $t1, -564($fp)
	li $t2, 0
	bne $t1, $t2, label353
	j label352
label353:
	lw $t0, 4($fp)
	sw $t0, -568($fp)
	lw $t1, -568($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label352
label351:
	li $t0, 1
	sw $t0, -556($fp)
label352:
	addi $t0, $fp, -44
	sw $t0, -572($fp)
	lw $t0, 4($fp)
	sw $t0, -576($fp)
	li $t0, 4
	lw $t1, -576($fp)
	mul $t0, $t0, $t1
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	lw $t1, -572($fp)
	add $t0, $t0, $t1
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	lw $t1, 0($t0)
	sw $t1, -588($fp)
	addi $sp, $sp, -4
	lw $t0, -536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -588($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -592($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -592($fp)
	sub $t0, $t0, $t1
	sw $t0, -596($fp)
	lw $ra, -4($fp)
	lw $v0, -596($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -36
	li $t0, 2631
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	lw $t0, -12($fp)
	sw $t0, -20($fp)
	lw $t0, -12($fp)
	sw $t0, -24($fp)
	lw $t0, -20($fp)
	lw $t1, -24($fp)
	sub $t0, $t0, $t1
	sw $t0, -28($fp)
	addi $sp, $sp, -4
	lw $t0, -28($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -32($fp)
	addi $sp, $sp, 8
	lw $t0, -12($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 50353
	sw $t0, -40($fp)
	lw $ra, -4($fp)
	lw $v0, -40($fp)
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
