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
	addi $sp, $sp, -4140
	li $t0, 26881
	sw $t0, -116($fp)
	addi $t0, $fp, -12
	sw $t0, -120($fp)
	li $t0, 0
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
	li $t0, 11823
	sw $t0, -140($fp)
	addi $t0, $fp, -12
	sw $t0, -144($fp)
	li $t0, 1
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
	li $t0, 56711
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	li $t0, 48006
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 1399
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	li $t0, 55618
	sw $t0, -200($fp)
	addi $t0, $fp, -48
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
	li $t0, 29391
	sw $t0, -224($fp)
	addi $t0, $fp, -48
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
	li $t0, 8348
	sw $t0, -248($fp)
	addi $t0, $fp, -48
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
	li $t0, 10037
	sw $t0, -272($fp)
	addi $t0, $fp, -48
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
	li $t0, 10903
	sw $t0, -296($fp)
	addi $t0, $fp, -48
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
	li $t0, 58884
	sw $t0, -320($fp)
	addi $t0, $fp, -48
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
	li $t0, 12178
	sw $t0, -344($fp)
	addi $t0, $fp, -48
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
	li $t0, 410
	sw $t0, -368($fp)
	addi $t0, $fp, -48
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
	li $t0, 4492
	sw $t0, -392($fp)
	addi $t0, $fp, -48
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
	li $t0, 48141
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	li $t0, 30165
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	li $t0, 10689
	sw $t0, -440($fp)
	addi $t0, $fp, -80
	sw $t0, -444($fp)
	li $t0, 0
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
	li $t0, 14280
	sw $t0, -464($fp)
	addi $t0, $fp, -80
	sw $t0, -468($fp)
	li $t0, 1
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
	li $t0, 31113
	sw $t0, -488($fp)
	addi $t0, $fp, -80
	sw $t0, -492($fp)
	li $t0, 2
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -500($fp)
	lw $t0, -492($fp)
	lw $t1, -500($fp)
	add $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $t0, -488($fp)
	lw $t1, -504($fp)
	sw $t0, 0($t1)
	lw $t0, -504($fp)
	lw $t1, 0($t0)
	sw $t1, -508($fp)
	li $t0, 37010
	sw $t0, -512($fp)
	addi $t0, $fp, -80
	sw $t0, -516($fp)
	li $t0, 3
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
	li $t0, 48787
	sw $t0, -536($fp)
	addi $t0, $fp, -80
	sw $t0, -540($fp)
	li $t0, 4
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
	li $t0, 16066
	sw $t0, -560($fp)
	addi $t0, $fp, -80
	sw $t0, -564($fp)
	li $t0, 5
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
	li $t0, 60245
	sw $t0, -584($fp)
	addi $t0, $fp, -80
	sw $t0, -588($fp)
	li $t0, 6
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
	li $t0, 61857
	sw $t0, -608($fp)
	addi $t0, $fp, -80
	sw $t0, -612($fp)
	li $t0, 7
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
	li $t0, 39137
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	li $t0, 9456
	sw $t0, -644($fp)
	addi $t0, $fp, -112
	sw $t0, -648($fp)
	li $t0, 0
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
	li $t0, 28415
	sw $t0, -668($fp)
	addi $t0, $fp, -112
	sw $t0, -672($fp)
	li $t0, 1
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
	li $t0, 5327
	sw $t0, -692($fp)
	addi $t0, $fp, -112
	sw $t0, -696($fp)
	li $t0, 2
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
	li $t0, 18835
	sw $t0, -716($fp)
	addi $t0, $fp, -112
	sw $t0, -720($fp)
	li $t0, 3
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
	li $t0, 1236
	sw $t0, -740($fp)
	addi $t0, $fp, -112
	sw $t0, -744($fp)
	li $t0, 4
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
	li $t0, 90
	sw $t0, -764($fp)
	addi $t0, $fp, -112
	sw $t0, -768($fp)
	li $t0, 5
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
	li $t0, 45716
	sw $t0, -788($fp)
	addi $t0, $fp, -112
	sw $t0, -792($fp)
	li $t0, 6
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
	li $t0, 13060
	sw $t0, -812($fp)
	addi $t0, $fp, -112
	sw $t0, -816($fp)
	li $t0, 7
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
	li $t0, 56801
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	sw $t0, -844($fp)
	li $t0, 28186
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	sw $t0, -856($fp)
	li $t0, 14459
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -868($fp)
	li $t0, 46884
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -880($fp)
	li $t0, 57577
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -892($fp)
	addi $t0, $fp, -12
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
	lw $t0, -912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -916($fp)
	li $t0, 1
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
	lw $t0, -168($fp)
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -948($fp)
	li $t0, 0
	sw $t0, -952($fp)
	li $t0, 4
	lw $t1, -952($fp)
	mul $t0, $t0, $t1
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	lw $t1, -948($fp)
	add $t0, $t0, $t1
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	lw $t1, 0($t0)
	sw $t1, -964($fp)
	lw $t0, -964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -968($fp)
	li $t0, 1
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
	lw $t0, -984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -988($fp)
	li $t0, 2
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
	lw $t0, -1004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1008($fp)
	li $t0, 3
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
	lw $t0, -1024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1028($fp)
	li $t0, 4
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
	lw $t0, -1044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1048($fp)
	li $t0, 5
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
	lw $t0, -1064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1068($fp)
	li $t0, 6
	sw $t0, -1072($fp)
	li $t0, 4
	lw $t1, -1072($fp)
	mul $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	lw $t1, -1068($fp)
	add $t0, $t0, $t1
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	lw $t1, 0($t0)
	sw $t1, -1084($fp)
	lw $t0, -1084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1088($fp)
	li $t0, 7
	sw $t0, -1092($fp)
	li $t0, 4
	lw $t1, -1092($fp)
	mul $t0, $t0, $t1
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	lw $t1, -1088($fp)
	add $t0, $t0, $t1
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	lw $t1, 0($t0)
	sw $t1, -1104($fp)
	lw $t0, -1104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1108($fp)
	li $t0, 8
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
	lw $t0, -1124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1136($fp)
	li $t0, 0
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
	addi $t0, $fp, -80
	sw $t0, -1156($fp)
	li $t0, 1
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
	addi $t0, $fp, -80
	sw $t0, -1176($fp)
	li $t0, 2
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
	addi $t0, $fp, -80
	sw $t0, -1196($fp)
	li $t0, 3
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
	addi $t0, $fp, -80
	sw $t0, -1216($fp)
	li $t0, 4
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
	addi $t0, $fp, -80
	sw $t0, -1236($fp)
	li $t0, 5
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
	addi $t0, $fp, -80
	sw $t0, -1256($fp)
	li $t0, 6
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
	addi $t0, $fp, -80
	sw $t0, -1276($fp)
	li $t0, 7
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
	lw $t0, -636($fp)
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -1300($fp)
	li $t0, 0
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
	addi $t0, $fp, -112
	sw $t0, -1320($fp)
	li $t0, 1
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
	addi $t0, $fp, -112
	sw $t0, -1340($fp)
	li $t0, 2
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
	addi $t0, $fp, -112
	sw $t0, -1360($fp)
	li $t0, 3
	sw $t0, -1364($fp)
	li $t0, 4
	lw $t1, -1364($fp)
	mul $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	lw $t1, -1360($fp)
	add $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	lw $t1, 0($t0)
	sw $t1, -1376($fp)
	lw $t0, -1376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -1380($fp)
	li $t0, 4
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
	lw $t0, -1396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -1400($fp)
	li $t0, 5
	sw $t0, -1404($fp)
	li $t0, 4
	lw $t1, -1404($fp)
	mul $t0, $t0, $t1
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	lw $t1, -1400($fp)
	add $t0, $t0, $t1
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	lw $t1, 0($t0)
	sw $t1, -1416($fp)
	lw $t0, -1416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -1420($fp)
	li $t0, 6
	sw $t0, -1424($fp)
	li $t0, 4
	lw $t1, -1424($fp)
	mul $t0, $t0, $t1
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	lw $t1, -1420($fp)
	add $t0, $t0, $t1
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	lw $t1, 0($t0)
	sw $t1, -1436($fp)
	lw $t0, -1436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -1440($fp)
	li $t0, 7
	sw $t0, -1444($fp)
	li $t0, 4
	lw $t1, -1444($fp)
	mul $t0, $t0, $t1
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	lw $t1, -1440($fp)
	add $t0, $t0, $t1
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	lw $t1, 0($t0)
	sw $t1, -1456($fp)
	lw $t0, -1456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -840($fp)
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -852($fp)
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -864($fp)
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -876($fp)
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -888($fp)
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1480($fp)
	li $t0, 0
	sw $t0, -1484($fp)
	li $t0, 22807
	sw $t0, -1488($fp)
	lw $t1, -1488($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label124
label124:
	li $t0, 1
	sw $t0, -1484($fp)
label125:
	li $t0, 56921
	sw $t0, -1492($fp)
	lw $t0, -1484($fp)
	lw $t1, -1492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1496($fp)
	lw $t1, -1496($fp)
	li $t2, 0
	bne $t1, $t2, label123
	j label122
label123:
	li $t0, 2945
	sw $t0, -1500($fp)
	lw $t0, -192($fp)
	sw $t0, -1504($fp)
	lw $t0, -1500($fp)
	lw $t1, -1504($fp)
	add $t0, $t0, $t1
	sw $t0, -1508($fp)
	lw $t1, -1508($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -1480($fp)
label122:
	lw $t0, -1480($fp)
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -1512($fp)
	lw $ra, -4($fp)
	lw $v0, -1512($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 16156
	sw $t0, -1560($fp)
	addi $t0, $fp, -1536
	sw $t0, -1564($fp)
	li $t0, 0
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t0, -1564($fp)
	lw $t1, -1572($fp)
	add $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t0, -1560($fp)
	lw $t1, -1576($fp)
	sw $t0, 0($t1)
	lw $t0, -1576($fp)
	lw $t1, 0($t0)
	sw $t1, -1580($fp)
	li $t0, 3563
	sw $t0, -1584($fp)
	addi $t0, $fp, -1536
	sw $t0, -1588($fp)
	li $t0, 1
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1596($fp)
	lw $t0, -1588($fp)
	lw $t1, -1596($fp)
	add $t0, $t0, $t1
	sw $t0, -1600($fp)
	lw $t0, -1584($fp)
	lw $t1, -1600($fp)
	sw $t0, 0($t1)
	lw $t0, -1600($fp)
	lw $t1, 0($t0)
	sw $t1, -1604($fp)
	li $t0, 3355
	sw $t0, -1608($fp)
	addi $t0, $fp, -1536
	sw $t0, -1612($fp)
	li $t0, 2
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t0, -1612($fp)
	lw $t1, -1620($fp)
	add $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t0, -1608($fp)
	lw $t1, -1624($fp)
	sw $t0, 0($t1)
	lw $t0, -1624($fp)
	lw $t1, 0($t0)
	sw $t1, -1628($fp)
	li $t0, 20648
	sw $t0, -1632($fp)
	addi $t0, $fp, -1536
	sw $t0, -1636($fp)
	li $t0, 3
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1644($fp)
	lw $t0, -1636($fp)
	lw $t1, -1644($fp)
	add $t0, $t0, $t1
	sw $t0, -1648($fp)
	lw $t0, -1632($fp)
	lw $t1, -1648($fp)
	sw $t0, 0($t1)
	lw $t0, -1648($fp)
	lw $t1, 0($t0)
	sw $t1, -1652($fp)
	li $t0, 51704
	sw $t0, -1656($fp)
	addi $t0, $fp, -1536
	sw $t0, -1660($fp)
	li $t0, 4
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1668($fp)
	lw $t0, -1660($fp)
	lw $t1, -1668($fp)
	add $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $t0, -1656($fp)
	lw $t1, -1672($fp)
	sw $t0, 0($t1)
	lw $t0, -1672($fp)
	lw $t1, 0($t0)
	sw $t1, -1676($fp)
	li $t0, 33520
	sw $t0, -1680($fp)
	addi $t0, $fp, -1536
	sw $t0, -1684($fp)
	li $t0, 5
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $t0, -1684($fp)
	lw $t1, -1692($fp)
	add $t0, $t0, $t1
	sw $t0, -1696($fp)
	lw $t0, -1680($fp)
	lw $t1, -1696($fp)
	sw $t0, 0($t1)
	lw $t0, -1696($fp)
	lw $t1, 0($t0)
	sw $t1, -1700($fp)
	li $t0, 31338
	sw $t0, -1704($fp)
	addi $t0, $fp, -1556
	sw $t0, -1708($fp)
	li $t0, 0
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1716($fp)
	lw $t0, -1708($fp)
	lw $t1, -1716($fp)
	add $t0, $t0, $t1
	sw $t0, -1720($fp)
	lw $t0, -1704($fp)
	lw $t1, -1720($fp)
	sw $t0, 0($t1)
	lw $t0, -1720($fp)
	lw $t1, 0($t0)
	sw $t1, -1724($fp)
	li $t0, 448
	sw $t0, -1728($fp)
	addi $t0, $fp, -1556
	sw $t0, -1732($fp)
	li $t0, 1
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1740($fp)
	lw $t0, -1732($fp)
	lw $t1, -1740($fp)
	add $t0, $t0, $t1
	sw $t0, -1744($fp)
	lw $t0, -1728($fp)
	lw $t1, -1744($fp)
	sw $t0, 0($t1)
	lw $t0, -1744($fp)
	lw $t1, 0($t0)
	sw $t1, -1748($fp)
	li $t0, 64633
	sw $t0, -1752($fp)
	addi $t0, $fp, -1556
	sw $t0, -1756($fp)
	li $t0, 2
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1764($fp)
	lw $t0, -1756($fp)
	lw $t1, -1764($fp)
	add $t0, $t0, $t1
	sw $t0, -1768($fp)
	lw $t0, -1752($fp)
	lw $t1, -1768($fp)
	sw $t0, 0($t1)
	lw $t0, -1768($fp)
	lw $t1, 0($t0)
	sw $t1, -1772($fp)
	li $t0, 2812
	sw $t0, -1776($fp)
	addi $t0, $fp, -1556
	sw $t0, -1780($fp)
	li $t0, 3
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1788($fp)
	lw $t0, -1780($fp)
	lw $t1, -1788($fp)
	add $t0, $t0, $t1
	sw $t0, -1792($fp)
	lw $t0, -1776($fp)
	lw $t1, -1792($fp)
	sw $t0, 0($t1)
	lw $t0, -1792($fp)
	lw $t1, 0($t0)
	sw $t1, -1796($fp)
	li $t0, 49236
	sw $t0, -1800($fp)
	addi $t0, $fp, -1556
	sw $t0, -1804($fp)
	li $t0, 4
	sw $t0, -1808($fp)
	lw $t0, -1808($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1812($fp)
	lw $t0, -1804($fp)
	lw $t1, -1812($fp)
	add $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t0, -1800($fp)
	lw $t1, -1816($fp)
	sw $t0, 0($t1)
	lw $t0, -1816($fp)
	lw $t1, 0($t0)
	sw $t1, -1820($fp)
	li $t0, 15164
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	sw $t0, -1832($fp)
	li $t0, 63058
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	sw $t0, -1844($fp)
	li $t0, 0
	sw $t0, -1848($fp)
	lw $t0, -864($fp)
	sw $t0, -1852($fp)
	lw $t1, -1852($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label126
label126:
	li $t0, 1
	sw $t0, -1848($fp)
label127:
	addi $sp, $sp, -4
	lw $t0, -1848($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1856($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1860($fp)
	li $t0, 45557
	sw $t0, -1864($fp)
	li $t0, 0
	lw $t1, -1864($fp)
	sub $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $t1, -1868($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label130
label130:
	li $t0, 54301
	sw $t0, -1872($fp)
	lw $t1, -1872($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label129
label128:
	li $t0, 1
	sw $t0, -1860($fp)
label129:
	addi $sp, $sp, -4
	lw $t0, -1860($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1876($fp)
	addi $sp, $sp, 8
	lw $t0, -1856($fp)
	lw $t1, -1876($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1880($fp)
	addi $t0, $fp, -1556
	sw $t0, -1884($fp)
	li $t0, 0
	sw $t0, -1888($fp)
	li $t0, 6978
	sw $t0, -1892($fp)
	li $t0, 8436
	sw $t0, -1896($fp)
	lw $t1, -1892($fp)
	lw $t2, -1896($fp)
	beq $t1, $t2, label131
	j label132
label131:
	li $t0, 1
	sw $t0, -1888($fp)
label132:
	li $t0, 4
	lw $t1, -1888($fp)
	mul $t0, $t0, $t1
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	lw $t1, -1884($fp)
	add $t0, $t0, $t1
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	lw $t1, 0($t0)
	sw $t1, -1908($fp)
	lw $t0, -1880($fp)
	lw $t1, -1908($fp)
	add $t0, $t0, $t1
	sw $t0, -1912($fp)
label133:
	addi $t0, $fp, -12
	sw $t0, -1916($fp)
	li $t0, 59628
	sw $t0, -1920($fp)
	li $t0, 0
	lw $t1, -1920($fp)
	sub $t0, $t0, $t1
	sw $t0, -1924($fp)
	lw $t0, -1840($fp)
	sw $t0, -1928($fp)
	lw $t0, -1924($fp)
	lw $t1, -1928($fp)
	add $t0, $t0, $t1
	sw $t0, -1932($fp)
	li $t0, 4
	lw $t1, -1932($fp)
	mul $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	lw $t1, -1916($fp)
	add $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t0, -1940($fp)
	lw $t1, 0($t0)
	sw $t1, -1944($fp)
	li $t0, 0
	sw $t0, -1948($fp)
	lw $t0, -192($fp)
	sw $t0, -1952($fp)
	li $t0, 25813
	sw $t0, -1956($fp)
	lw $t0, -1952($fp)
	lw $t1, -1956($fp)
	sub $t0, $t0, $t1
	sw $t0, -1960($fp)
	lw $t0, -192($fp)
	sw $t0, -1964($fp)
	li $t0, 9672
	sw $t0, -1968($fp)
	lw $t0, -1964($fp)
	lw $t1, -1968($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1972($fp)
	lw $t1, -1960($fp)
	lw $t2, -1972($fp)
	bgt $t1, $t2, label136
	j label137
label136:
	li $t0, 1
	sw $t0, -1948($fp)
label137:
	lw $t1, -1944($fp)
	lw $t2, -1948($fp)
	beq $t1, $t2, label134
	j label135
label134:
	lw $t0, -636($fp)
	sw $t0, -1976($fp)
	lw $ra, -4($fp)
	lw $v0, -1976($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label133
label135:
label138:
	addi $t0, $fp, -112
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
	li $t0, 0
	sw $t0, -2000($fp)
	li $t0, 0
	sw $t0, -2004($fp)
	lw $t0, -888($fp)
	sw $t0, -2008($fp)
	li $t0, 22732
	sw $t0, -2012($fp)
	lw $t1, -2008($fp)
	lw $t2, -2012($fp)
	bne $t1, $t2, label143
	j label144
label143:
	li $t0, 1
	sw $t0, -2004($fp)
label144:
	addi $sp, $sp, -4
	lw $t0, -2004($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2016($fp)
	addi $sp, $sp, 8
	lw $t1, -2016($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label142
label141:
	li $t0, 1
	sw $t0, -2000($fp)
label142:
	lw $t0, -1996($fp)
	lw $t1, -2000($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2020($fp)
	lw $t1, -2020($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label140
label139:
	li $t0, 0
	sw $t0, -2024($fp)
	li $t0, 0
	sw $t0, -2028($fp)
	lw $t0, -192($fp)
	sw $t0, -2032($fp)
	lw $t1, -2032($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label152
label152:
	lw $t0, -180($fp)
	sw $t0, -2036($fp)
	lw $t1, -2036($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -2028($fp)
label151:
	addi $sp, $sp, -4
	lw $t0, -2028($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2040($fp)
	addi $sp, $sp, 8
	lw $t1, -2040($fp)
	li $t2, 0
	bne $t1, $t2, label149
	j label148
label148:
	li $t0, 1
	sw $t0, -2024($fp)
label149:
	addi $t0, $fp, -1536
	sw $t0, -2044($fp)
	li $t0, 0
	sw $t0, -2048($fp)
	li $t0, 50984
	sw $t0, -2052($fp)
	lw $t0, -168($fp)
	sw $t0, -2056($fp)
	lw $t1, -2052($fp)
	lw $t2, -2056($fp)
	bne $t1, $t2, label153
	j label154
label153:
	li $t0, 1
	sw $t0, -2048($fp)
label154:
	li $t0, 4
	lw $t1, -2048($fp)
	mul $t0, $t0, $t1
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	lw $t1, -2044($fp)
	add $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	lw $t1, 0($t0)
	sw $t1, -2068($fp)
	lw $t0, -2024($fp)
	lw $t1, -2068($fp)
	mul $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $t1, -2072($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label146
label145:
	li $t0, 34179
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	sw $t0, -2084($fp)
	lw $t0, -2080($fp)
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2092($fp)
	li $t0, 37191
	sw $t0, -2096($fp)
	li $t0, 32332
	sw $t0, -2100($fp)
	lw $t0, -2096($fp)
	lw $t1, -2100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2104($fp)
	li $t0, 0
	lw $t1, -2104($fp)
	sub $t0, $t0, $t1
	sw $t0, -2108($fp)
	addi $sp, $sp, -4
	lw $t0, -2108($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2112($fp)
	addi $sp, $sp, 8
	lw $t1, -2112($fp)
	li $t2, 0
	bne $t1, $t2, label158
	j label156
label158:
	li $t0, 0
	sw $t0, -2116($fp)
	lw $t0, -1840($fp)
	sw $t0, -2120($fp)
	lw $t1, -2120($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label159
label159:
	li $t0, 1
	sw $t0, -2116($fp)
label160:
	li $t0, 26221
	sw $t0, -2124($fp)
	lw $t1, -2116($fp)
	lw $t2, -2124($fp)
	ble $t1, $t2, label157
	j label156
label157:
	li $t0, 59999
	sw $t0, -2128($fp)
	lw $t1, -2128($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label156
label155:
	li $t0, 1
	sw $t0, -2092($fp)
label156:
	lw $ra, -4($fp)
	lw $v0, -2092($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label161:
	lw $t0, -2080($fp)
	sw $t0, -2132($fp)
	lw $t0, -864($fp)
	sw $t0, -2136($fp)
	lw $t0, -852($fp)
	sw $t0, -2140($fp)
	lw $t0, -2136($fp)
	lw $t1, -2140($fp)
	mul $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t0, -852($fp)
	sw $t0, -2148($fp)
	lw $t0, -2144($fp)
	lw $t1, -2148($fp)
	mul $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2132($fp)
	lw $t1, -2152($fp)
	add $t0, $t0, $t1
	sw $t0, -2156($fp)
	lw $t0, -876($fp)
	sw $t0, -2160($fp)
	lw $t0, -2156($fp)
	lw $t1, -2160($fp)
	sub $t0, $t0, $t1
	sw $t0, -2164($fp)
	lw $t1, -2164($fp)
	li $t2, 0
	bne $t1, $t2, label162
	j label163
label162:
	lw $t0, -192($fp)
	sw $t0, -2168($fp)
	addi $sp, $sp, -4
	lw $t0, -2168($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2172($fp)
	addi $sp, $sp, 8
	lw $t1, -2172($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label167
label168:
	li $t0, 0
	sw $t0, -2176($fp)
	li $t0, 0
	sw $t0, -2180($fp)
	lw $t0, -840($fp)
	sw $t0, -2184($fp)
	lw $t1, -2184($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label171
label171:
	li $t0, 1
	sw $t0, -2180($fp)
label172:
	lw $t0, -864($fp)
	sw $t0, -2188($fp)
	lw $t1, -2180($fp)
	lw $t2, -2188($fp)
	ble $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -2176($fp)
label170:
	addi $sp, $sp, -4
	lw $t0, -2176($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2192($fp)
	addi $sp, $sp, 8
	lw $t0, 4($fp)
	sw $t0, -2196($fp)
	lw $t0, -2192($fp)
	lw $t1, -2196($fp)
	mul $t0, $t0, $t1
	sw $t0, -2200($fp)
	lw $t1, -2200($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label167
label167:
	lw $t0, -192($fp)
	sw $t0, -2204($fp)
	lw $t0, -1828($fp)
	sw $t0, -2208($fp)
	lw $t0, -2204($fp)
	lw $t1, -2208($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2212($fp)
	li $t0, 23717
	sw $t0, -2216($fp)
	lw $t0, -2212($fp)
	lw $t1, -2216($fp)
	mul $t0, $t0, $t1
	sw $t0, -2220($fp)
	li $t0, 29166
	sw $t0, -2224($fp)
	addi $sp, $sp, -4
	lw $t0, -2224($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2228($fp)
	addi $sp, $sp, 8
	lw $t0, -2220($fp)
	lw $t1, -2228($fp)
	sub $t0, $t0, $t1
	sw $t0, -2232($fp)
	lw $t1, -2232($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label165
label164:
	li $t0, 0
	sw $t0, -2236($fp)
	li $t0, 0
	sw $t0, -2240($fp)
	li $t0, 10619
	sw $t0, -2244($fp)
	lw $t0, -876($fp)
	sw $t0, -2248($fp)
	lw $t0, -2244($fp)
	lw $t1, -2248($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2252($fp)
	lw $t0, -864($fp)
	sw $t0, -2256($fp)
	lw $t0, -2252($fp)
	lw $t1, -2256($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2260($fp)
	addi $sp, $sp, -4
	lw $t0, -2260($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2264($fp)
	addi $sp, $sp, 8
	lw $t0, -876($fp)
	sw $t0, -2268($fp)
	lw $t1, -2264($fp)
	lw $t2, -2268($fp)
	ble $t1, $t2, label176
	j label177
label176:
	li $t0, 1
	sw $t0, -2240($fp)
label177:
	addi $sp, $sp, -4
	lw $t0, -2240($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2272($fp)
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -2276($fp)
	lw $t0, -2080($fp)
	sw $t0, -2280($fp)
	lw $t0, -2276($fp)
	lw $t1, -2280($fp)
	mul $t0, $t0, $t1
	sw $t0, -2284($fp)
	lw $t0, 4($fp)
	sw $t0, -2288($fp)
	lw $t0, -2284($fp)
	lw $t1, -2288($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2292($fp)
	lw $t1, -2272($fp)
	lw $t2, -2292($fp)
	bgt $t1, $t2, label175
	j label174
label175:
	li $t0, 27280
	sw $t0, -2296($fp)
	li $t0, 32521
	sw $t0, -2300($fp)
	lw $t1, -2296($fp)
	lw $t2, -2300($fp)
	bgt $t1, $t2, label173
	j label174
label173:
	li $t0, 1
	sw $t0, -2236($fp)
label174:
	lw $ra, -4($fp)
	lw $v0, -2236($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label166
label165:
	li $t0, 31267
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	sw $t0, -2320($fp)
	lw $t0, -2320($fp)
	sw $t0, -2324($fp)
	li $t0, 13448
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	sw $t0, -2336($fp)
	li $t0, 506
	sw $t0, -2340($fp)
	addi $t0, $fp, -2312
	sw $t0, -2344($fp)
	li $t0, 0
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
	li $t0, 62605
	sw $t0, -2364($fp)
	addi $t0, $fp, -2312
	sw $t0, -2368($fp)
	li $t0, 1
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
	li $t0, 13896
	sw $t0, -2388($fp)
	addi $t0, $fp, -2312
	sw $t0, -2392($fp)
	li $t0, 2
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2400($fp)
	lw $t0, -2392($fp)
	lw $t1, -2400($fp)
	add $t0, $t0, $t1
	sw $t0, -2404($fp)
	lw $t0, -2388($fp)
	lw $t1, -2404($fp)
	sw $t0, 0($t1)
	lw $t0, -2404($fp)
	lw $t1, 0($t0)
	sw $t1, -2408($fp)
	li $t0, 0
	sw $t0, -2412($fp)
	addi $t0, $fp, -12
	sw $t0, -2416($fp)
	lw $t0, -2332($fp)
	sw $t0, -2420($fp)
	lw $t0, -168($fp)
	sw $t0, -2424($fp)
	lw $t0, -2420($fp)
	lw $t1, -2424($fp)
	mul $t0, $t0, $t1
	sw $t0, -2428($fp)
	li $t0, 4
	lw $t1, -2428($fp)
	mul $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	lw $t1, -2416($fp)
	add $t0, $t0, $t1
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	lw $t1, 0($t0)
	sw $t1, -2440($fp)
	addi $t0, $fp, -2312
	sw $t0, -2444($fp)
	lw $t0, -2320($fp)
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
	lw $t0, -2440($fp)
	lw $t1, -2460($fp)
	mul $t0, $t0, $t1
	sw $t0, -2464($fp)
	lw $t1, -2464($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label180
label180:
	addi $t0, $fp, -112
	sw $t0, -2468($fp)
	lw $t0, -1828($fp)
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
	li $t0, 65139
	sw $t0, -2488($fp)
	lw $t0, -2484($fp)
	lw $t1, -2488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2492($fp)
	lw $t1, -2492($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label179
label178:
	li $t0, 1
	sw $t0, -2412($fp)
label179:
label166:
	j label161
label163:
	j label147
label146:
	li $t0, 0
	sw $t0, -2496($fp)
	li $t0, 65418
	sw $t0, -2500($fp)
	addi $sp, $sp, -4
	lw $t0, -2500($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2504($fp)
	addi $sp, $sp, 8
	li $t0, 63132
	sw $t0, -2508($fp)
	lw $t1, -2504($fp)
	lw $t2, -2508($fp)
	bgt $t1, $t2, label181
	j label182
label181:
	li $t0, 1
	sw $t0, -2496($fp)
label182:
	lw $ra, -4($fp)
	lw $v0, -2496($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -2512($fp)
	li $t0, 0
	sw $t0, -2516($fp)
	addi $t0, $fp, -48
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
	lw $t1, -2536($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label185
label185:
	li $t0, 1
	sw $t0, -2516($fp)
label186:
	li $t0, 0
	lw $t1, -2516($fp)
	sub $t0, $t0, $t1
	sw $t0, -2540($fp)
	li $t0, 0
	sw $t0, -2544($fp)
	lw $t0, -192($fp)
	sw $t0, -2548($fp)
	li $t0, 43153
	sw $t0, -2552($fp)
	lw $t0, -2548($fp)
	lw $t1, -2552($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2556($fp)
	li $t0, 3533
	sw $t0, -2560($fp)
	lw $t0, -2556($fp)
	lw $t1, -2560($fp)
	add $t0, $t0, $t1
	sw $t0, -2564($fp)
	lw $t0, -1840($fp)
	sw $t0, -2568($fp)
	lw $t0, -864($fp)
	sw $t0, -2572($fp)
	lw $t0, -2568($fp)
	lw $t1, -2572($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2576($fp)
	lw $t1, -2564($fp)
	lw $t2, -2576($fp)
	bgt $t1, $t2, label187
	j label188
label187:
	li $t0, 1
	sw $t0, -2544($fp)
label188:
	lw $t1, -2540($fp)
	lw $t2, -2544($fp)
	beq $t1, $t2, label183
	j label184
label183:
	li $t0, 1
	sw $t0, -2512($fp)
label184:
label147:
	j label138
label140:
label189:
	lw $t0, -864($fp)
	sw $t0, -2580($fp)
	li $t0, 4382
	sw $t0, -2584($fp)
	lw $t0, -2580($fp)
	lw $t1, -2584($fp)
	mul $t0, $t0, $t1
	sw $t0, -2588($fp)
	lw $t0, -876($fp)
	sw $t0, -2592($fp)
	lw $t0, -2588($fp)
	lw $t1, -2592($fp)
	sub $t0, $t0, $t1
	sw $t0, -2596($fp)
	lw $t1, -2596($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label191
label190:
	lw $t0, -888($fp)
	sw $t0, -2600($fp)
	li $t0, 51589
	sw $t0, -2604($fp)
	lw $t0, -2600($fp)
	lw $t1, -2604($fp)
	mul $t0, $t0, $t1
	sw $t0, -2608($fp)
	li $t0, 63161
	sw $t0, -2612($fp)
	lw $t0, -420($fp)
	sw $t0, -2616($fp)
	lw $t0, -2612($fp)
	lw $t1, -2616($fp)
	mul $t0, $t0, $t1
	sw $t0, -2620($fp)
	addi $sp, $sp, -4
	lw $t0, -2620($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2624($fp)
	addi $sp, $sp, 8
	lw $t0, -2608($fp)
	lw $t1, -2624($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2628($fp)
	lw $ra, -4($fp)
	lw $v0, -2628($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label189
label191:
label192:
	li $t0, 30196
	sw $t0, -2632($fp)
	lw $t1, -2632($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label194
label193:
	lw $t0, -864($fp)
	sw $t0, -2636($fp)
	j label192
label194:
	li $t0, 61262
	sw $t0, -2640($fp)
	li $t0, 36190
	sw $t0, -2644($fp)
	lw $t0, -2640($fp)
	lw $t1, -2644($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2648($fp)
	lw $t0, -2648($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -2652($fp)
	lw $t1, -2652($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label196
label195:
	li $t0, 0
	sw $t0, -2656($fp)
	li $t0, 18458
	sw $t0, -2660($fp)
	lw $t1, -2660($fp)
	li $t2, 0
	bne $t1, $t2, label201
	j label203
label203:
	li $t0, 42792
	sw $t0, -2664($fp)
	lw $t1, -2664($fp)
	li $t2, 0
	bne $t1, $t2, label201
	j label202
label201:
	li $t0, 1
	sw $t0, -2656($fp)
label202:
	addi $sp, $sp, -4
	lw $t0, -2656($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2668($fp)
	addi $sp, $sp, 8
	lw $t1, -2668($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label199
label198:
	li $t0, 0
	sw $t0, -2672($fp)
	li $t0, 4833
	sw $t0, -2676($fp)
	li $t0, 0
	sw $t0, -2680($fp)
	lw $t0, -192($fp)
	sw $t0, -2684($fp)
	li $t0, 55650
	sw $t0, -2688($fp)
	lw $t0, -2684($fp)
	lw $t1, -2688($fp)
	mul $t0, $t0, $t1
	sw $t0, -2692($fp)
	li $t0, 0
	lw $t1, -2692($fp)
	sub $t0, $t0, $t1
	sw $t0, -2696($fp)
	li $t0, 9588
	sw $t0, -2700($fp)
	li $t0, 0
	lw $t1, -2700($fp)
	sub $t0, $t0, $t1
	sw $t0, -2704($fp)
	lw $t1, -2696($fp)
	lw $t2, -2704($fp)
	bgt $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -2680($fp)
label207:
	lw $t1, -2676($fp)
	lw $t2, -2680($fp)
	bne $t1, $t2, label204
	j label205
label204:
	li $t0, 1
	sw $t0, -2672($fp)
label205:
	j label200
label199:
label208:
	li $t0, 31054
	sw $t0, -2708($fp)
	lw $t1, -2708($fp)
	li $t2, 0
	bne $t1, $t2, label209
	j label210
label209:
	li $t0, 50113
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	sw $t0, -2720($fp)
	li $t0, 33305
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	sw $t0, -2732($fp)
	li $t0, 60220
	sw $t0, -2736($fp)
	lw $t0, -2736($fp)
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	sw $t0, -2744($fp)
	li $t0, 60732
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	sw $t0, -2756($fp)
	li $t0, 0
	sw $t0, -2760($fp)
	lw $t0, -840($fp)
	sw $t0, -2764($fp)
	lw $t0, -2728($fp)
	sw $t0, -2768($fp)
	lw $t0, -2764($fp)
	lw $t1, -2768($fp)
	sub $t0, $t0, $t1
	sw $t0, -2772($fp)
	li $t0, 60585
	sw $t0, -2776($fp)
	lw $t1, -2772($fp)
	lw $t2, -2776($fp)
	bne $t1, $t2, label211
	j label212
label211:
	li $t0, 1
	sw $t0, -2760($fp)
label212:
	addi $sp, $sp, -4
	lw $t0, -2760($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2780($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2784($fp)
	li $t0, 27205
	sw $t0, -2788($fp)
	lw $t1, -2788($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label215
label215:
	lw $t0, -876($fp)
	sw $t0, -2792($fp)
	li $t0, 26463
	sw $t0, -2796($fp)
	lw $t0, -2792($fp)
	lw $t1, -2796($fp)
	mul $t0, $t0, $t1
	sw $t0, -2800($fp)
	lw $t1, -2800($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label214
label213:
	li $t0, 1
	sw $t0, -2784($fp)
label214:
	lw $t0, -2784($fp)
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	sw $t0, -2804($fp)
	li $t0, 8497
	sw $t0, -2820($fp)
	addi $t0, $fp, -2816
	sw $t0, -2824($fp)
	li $t0, 0
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
	li $t0, 27711
	sw $t0, -2844($fp)
	addi $t0, $fp, -2816
	sw $t0, -2848($fp)
	li $t0, 1
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
	li $t0, 23533
	sw $t0, -2868($fp)
	addi $t0, $fp, -2816
	sw $t0, -2872($fp)
	li $t0, 2
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
	li $t0, 22393
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	sw $t0, -2900($fp)
	li $t0, 0
	sw $t0, -2904($fp)
	lw $t0, -852($fp)
	sw $t0, -2908($fp)
	lw $t1, -2908($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label216
label216:
	li $t0, 1
	sw $t0, -2904($fp)
label217:
	addi $sp, $sp, -4
	lw $t0, -2904($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2912($fp)
	addi $sp, $sp, 8
	lw $t0, -876($fp)
	sw $t0, -2916($fp)
	lw $t0, -2912($fp)
	lw $t1, -2916($fp)
	mul $t0, $t0, $t1
	sw $t0, -2920($fp)
	lw $t0, -168($fp)
	sw $t0, -2924($fp)
	li $t0, 0
	lw $t1, -2924($fp)
	sub $t0, $t0, $t1
	sw $t0, -2928($fp)
	li $t0, 0
	lw $t1, -2928($fp)
	sub $t0, $t0, $t1
	sw $t0, -2932($fp)
	lw $t0, -2920($fp)
	lw $t1, -2932($fp)
	mul $t0, $t0, $t1
	sw $t0, -2936($fp)
	li $t0, 0
	sw $t0, -2940($fp)
	addi $t0, $fp, -12
	sw $t0, -2944($fp)
	lw $t0, -180($fp)
	sw $t0, -2948($fp)
	lw $t0, -2948($fp)
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -2952($fp)
	li $t0, 4
	lw $t1, -2952($fp)
	mul $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	lw $t1, -2944($fp)
	add $t0, $t0, $t1
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	lw $t1, 0($t0)
	sw $t1, -2964($fp)
	addi $t0, $fp, -112
	sw $t0, -2968($fp)
	lw $t0, -852($fp)
	sw $t0, -2972($fp)
	li $t0, 4
	lw $t1, -2972($fp)
	mul $t0, $t0, $t1
	sw $t0, -2976($fp)
	lw $t0, -2976($fp)
	lw $t1, -2968($fp)
	add $t0, $t0, $t1
	sw $t0, -2980($fp)
	lw $t0, -2980($fp)
	lw $t1, 0($t0)
	sw $t1, -2984($fp)
	lw $t0, -2964($fp)
	lw $t1, -2984($fp)
	mul $t0, $t0, $t1
	sw $t0, -2988($fp)
	li $t0, 27315
	sw $t0, -2992($fp)
	lw $t0, -636($fp)
	sw $t0, -2996($fp)
	lw $t0, -2992($fp)
	lw $t1, -2996($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3000($fp)
	li $t0, 0
	lw $t1, -3000($fp)
	sub $t0, $t0, $t1
	sw $t0, -3004($fp)
	addi $sp, $sp, -4
	lw $t0, -3004($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3008($fp)
	addi $sp, $sp, 8
	lw $t1, -2988($fp)
	lw $t2, -3008($fp)
	bne $t1, $t2, label218
	j label219
label218:
	li $t0, 1
	sw $t0, -2940($fp)
label219:
	addi $t0, $fp, -2816
	sw $t0, -3012($fp)
	lw $t0, -2896($fp)
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
	li $t0, 0
	lw $t1, -3028($fp)
	sub $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -864($fp)
	sw $t0, -3036($fp)
	addi $t0, $fp, -48
	sw $t0, -3040($fp)
	li $t0, 0
	sw $t0, -3044($fp)
	li $t0, 23415
	sw $t0, -3048($fp)
	lw $t1, -3048($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label223
label223:
	li $t0, 1
	sw $t0, -3044($fp)
label224:
	li $t0, 4
	lw $t1, -3044($fp)
	mul $t0, $t0, $t1
	sw $t0, -3052($fp)
	lw $t0, -3052($fp)
	lw $t1, -3040($fp)
	add $t0, $t0, $t1
	sw $t0, -3056($fp)
	lw $t0, -3056($fp)
	lw $t1, 0($t0)
	sw $t1, -3060($fp)
	lw $t0, -3036($fp)
	lw $t1, -3060($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3064($fp)
	lw $t1, -3064($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label221
label220:
	li $t0, 19990
	sw $t0, -3092($fp)
	addi $t0, $fp, -3088
	sw $t0, -3096($fp)
	li $t0, 0
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
	li $t0, 42082
	sw $t0, -3116($fp)
	addi $t0, $fp, -3088
	sw $t0, -3120($fp)
	li $t0, 1
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
	li $t0, 20819
	sw $t0, -3140($fp)
	addi $t0, $fp, -3088
	sw $t0, -3144($fp)
	li $t0, 2
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
	li $t0, 63143
	sw $t0, -3164($fp)
	addi $t0, $fp, -3088
	sw $t0, -3168($fp)
	li $t0, 3
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
	li $t0, 45615
	sw $t0, -3188($fp)
	addi $t0, $fp, -3088
	sw $t0, -3192($fp)
	li $t0, 4
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
	li $t0, 25201
	sw $t0, -3212($fp)
	addi $t0, $fp, -3088
	sw $t0, -3216($fp)
	li $t0, 5
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
	addi $t0, $fp, -3088
	sw $t0, -3236($fp)
	li $t0, 5
	sw $t0, -3240($fp)
	li $t0, 4
	lw $t1, -3240($fp)
	mul $t0, $t0, $t1
	sw $t0, -3244($fp)
	lw $t0, -3244($fp)
	lw $t1, -3236($fp)
	add $t0, $t0, $t1
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	lw $t1, 0($t0)
	sw $t1, -3252($fp)
	li $t0, 0
	sw $t0, -3256($fp)
	li $t0, 44923
	sw $t0, -3260($fp)
	lw $t1, -3260($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label225
label225:
	li $t0, 1
	sw $t0, -3256($fp)
label226:
	lw $t0, -3252($fp)
	lw $t1, -3256($fp)
	mul $t0, $t0, $t1
	sw $t0, -3264($fp)
	j label222
label221:
	li $t0, 0
	sw $t0, -3268($fp)
	addi $t0, $fp, -12
	sw $t0, -3272($fp)
	lw $t0, -2716($fp)
	sw $t0, -3276($fp)
	li $t0, 4
	lw $t1, -3276($fp)
	mul $t0, $t0, $t1
	sw $t0, -3280($fp)
	lw $t0, -3280($fp)
	lw $t1, -3272($fp)
	add $t0, $t0, $t1
	sw $t0, -3284($fp)
	lw $t0, -3284($fp)
	lw $t1, 0($t0)
	sw $t1, -3288($fp)
	li $t0, 0
	lw $t1, -3288($fp)
	sub $t0, $t0, $t1
	sw $t0, -3292($fp)
	li $t0, 0
	lw $t1, -3292($fp)
	sub $t0, $t0, $t1
	sw $t0, -3296($fp)
	lw $t1, -3296($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label227
label227:
	li $t0, 1
	sw $t0, -3268($fp)
label228:
	li $t0, 0
	sw $t0, -3300($fp)
	lw $t0, -864($fp)
	sw $t0, -3304($fp)
	lw $t1, -3304($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label230
label232:
	lw $t0, -2740($fp)
	sw $t0, -3308($fp)
	lw $t1, -3308($fp)
	li $t2, 0
	bne $t1, $t2, label231
	j label230
label231:
	lw $t0, -180($fp)
	sw $t0, -3312($fp)
	lw $t1, -3312($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label230
label229:
	li $t0, 1
	sw $t0, -3300($fp)
label230:
	addi $sp, $sp, -4
	lw $t0, -3300($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3316($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -3316($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3320($fp)
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -3324($fp)
	li $t0, 0
	lw $t1, -3324($fp)
	sub $t0, $t0, $t1
	sw $t0, -3328($fp)
	lw $t0, -3320($fp)
	lw $t1, -3328($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3332($fp)
	li $t0, 0
	lw $t1, -3332($fp)
	sub $t0, $t0, $t1
	sw $t0, -3336($fp)
	lw $t0, -3268($fp)
	lw $t1, -3336($fp)
	add $t0, $t0, $t1
	sw $t0, -3340($fp)
	lw $ra, -4($fp)
	lw $v0, -3340($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label222:
	j label208
label210:
label200:
	j label197
label196:
	lw $t0, 4($fp)
	sw $t0, -3344($fp)
	li $t0, 35049
	sw $t0, -3348($fp)
	lw $t0, -3344($fp)
	lw $t1, -3348($fp)
	add $t0, $t0, $t1
	sw $t0, -3352($fp)
	lw $t1, -3352($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label234
label236:
	li $t0, 0
	sw $t0, -3356($fp)
	addi $t0, $fp, -12
	sw $t0, -3360($fp)
	lw $t0, -888($fp)
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
	lw $t1, -3376($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label237
label237:
	li $t0, 1
	sw $t0, -3356($fp)
label238:
	addi $sp, $sp, -4
	lw $t0, -3356($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3380($fp)
	addi $sp, $sp, 8
	lw $t1, -3380($fp)
	li $t2, 0
	bne $t1, $t2, label234
	j label233
label233:
	li $t0, 0
	sw $t0, -3384($fp)
	li $t0, 26051
	sw $t0, -3388($fp)
	lw $t0, -840($fp)
	sw $t0, -3392($fp)
	lw $t0, -3388($fp)
	lw $t1, -3392($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3396($fp)
	li $t0, 0
	lw $t1, -3396($fp)
	sub $t0, $t0, $t1
	sw $t0, -3400($fp)
	addi $t0, $fp, -80
	sw $t0, -3404($fp)
	li $t0, 1
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
	li $t0, 0
	lw $t1, -3420($fp)
	sub $t0, $t0, $t1
	sw $t0, -3424($fp)
	lw $t1, -3400($fp)
	lw $t2, -3424($fp)
	ble $t1, $t2, label239
	j label240
label239:
	li $t0, 1
	sw $t0, -3384($fp)
label240:
	lw $ra, -4($fp)
	lw $v0, -3384($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label235
label234:
	li $t0, 0
	sw $t0, -3428($fp)
	addi $t0, $fp, -12
	sw $t0, -3432($fp)
	li $t0, 0
	sw $t0, -3436($fp)
	lw $t0, -840($fp)
	sw $t0, -3440($fp)
	lw $t1, -3440($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label244
label245:
	lw $t0, 4($fp)
	sw $t0, -3444($fp)
	lw $t1, -3444($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label244
label243:
	li $t0, 1
	sw $t0, -3436($fp)
label244:
	li $t0, 4
	lw $t1, -3436($fp)
	mul $t0, $t0, $t1
	sw $t0, -3448($fp)
	lw $t0, -3448($fp)
	lw $t1, -3432($fp)
	add $t0, $t0, $t1
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	lw $t1, 0($t0)
	sw $t1, -3456($fp)
	li $t0, 30884
	sw $t0, -3460($fp)
	li $t0, 53495
	sw $t0, -3464($fp)
	lw $t0, -3460($fp)
	lw $t1, -3464($fp)
	mul $t0, $t0, $t1
	sw $t0, -3468($fp)
	lw $t0, -168($fp)
	sw $t0, -3472($fp)
	lw $t0, -3468($fp)
	lw $t1, -3472($fp)
	mul $t0, $t0, $t1
	sw $t0, -3476($fp)
	lw $t0, -3456($fp)
	lw $t1, -3476($fp)
	sub $t0, $t0, $t1
	sw $t0, -3480($fp)
	li $t0, 21893
	sw $t0, -3484($fp)
	addi $t0, $fp, -80
	sw $t0, -3488($fp)
	lw $t0, -876($fp)
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
	lw $t0, -3484($fp)
	lw $t1, -3504($fp)
	sub $t0, $t0, $t1
	sw $t0, -3508($fp)
	lw $t1, -3480($fp)
	lw $t2, -3508($fp)
	beq $t1, $t2, label241
	j label242
label241:
	li $t0, 1
	sw $t0, -3428($fp)
label242:
	lw $ra, -4($fp)
	lw $v0, -3428($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label235:
label197:
	lw $t0, -432($fp)
	sw $t0, -3512($fp)
	addi $t0, $fp, -12
	sw $t0, -3516($fp)
	li $t0, 0
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
	addi $t0, $fp, -12
	sw $t0, -3536($fp)
	li $t0, 1
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
	lw $t0, -168($fp)
	sw $t0, -3556($fp)
	lw $t0, -3556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -3560($fp)
	lw $t0, -3560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -3564($fp)
	lw $t0, -3564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -3568($fp)
	li $t0, 0
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
	lw $t0, -3584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -3588($fp)
	li $t0, 1
	sw $t0, -3592($fp)
	li $t0, 4
	lw $t1, -3592($fp)
	mul $t0, $t0, $t1
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	lw $t1, -3588($fp)
	add $t0, $t0, $t1
	sw $t0, -3600($fp)
	lw $t0, -3600($fp)
	lw $t1, 0($t0)
	sw $t1, -3604($fp)
	lw $t0, -3604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -3608($fp)
	li $t0, 2
	sw $t0, -3612($fp)
	li $t0, 4
	lw $t1, -3612($fp)
	mul $t0, $t0, $t1
	sw $t0, -3616($fp)
	lw $t0, -3616($fp)
	lw $t1, -3608($fp)
	add $t0, $t0, $t1
	sw $t0, -3620($fp)
	lw $t0, -3620($fp)
	lw $t1, 0($t0)
	sw $t1, -3624($fp)
	lw $t0, -3624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -3628($fp)
	li $t0, 3
	sw $t0, -3632($fp)
	li $t0, 4
	lw $t1, -3632($fp)
	mul $t0, $t0, $t1
	sw $t0, -3636($fp)
	lw $t0, -3636($fp)
	lw $t1, -3628($fp)
	add $t0, $t0, $t1
	sw $t0, -3640($fp)
	lw $t0, -3640($fp)
	lw $t1, 0($t0)
	sw $t1, -3644($fp)
	lw $t0, -3644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -3648($fp)
	li $t0, 4
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
	lw $t0, -3664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -3668($fp)
	li $t0, 5
	sw $t0, -3672($fp)
	li $t0, 4
	lw $t1, -3672($fp)
	mul $t0, $t0, $t1
	sw $t0, -3676($fp)
	lw $t0, -3676($fp)
	lw $t1, -3668($fp)
	add $t0, $t0, $t1
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	lw $t1, 0($t0)
	sw $t1, -3684($fp)
	lw $t0, -3684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -3688($fp)
	li $t0, 6
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
	lw $t0, -3704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -3708($fp)
	li $t0, 7
	sw $t0, -3712($fp)
	li $t0, 4
	lw $t1, -3712($fp)
	mul $t0, $t0, $t1
	sw $t0, -3716($fp)
	lw $t0, -3716($fp)
	lw $t1, -3708($fp)
	add $t0, $t0, $t1
	sw $t0, -3720($fp)
	lw $t0, -3720($fp)
	lw $t1, 0($t0)
	sw $t1, -3724($fp)
	lw $t0, -3724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -3728($fp)
	li $t0, 8
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
	lw $t0, -3744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -3748($fp)
	lw $t0, -3748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -3752($fp)
	lw $t0, -3752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -3756($fp)
	li $t0, 0
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
	addi $t0, $fp, -80
	sw $t0, -3776($fp)
	li $t0, 1
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
	addi $t0, $fp, -80
	sw $t0, -3796($fp)
	li $t0, 2
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
	addi $t0, $fp, -80
	sw $t0, -3816($fp)
	li $t0, 3
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
	addi $t0, $fp, -80
	sw $t0, -3836($fp)
	li $t0, 4
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
	addi $t0, $fp, -80
	sw $t0, -3856($fp)
	li $t0, 5
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
	addi $t0, $fp, -80
	sw $t0, -3876($fp)
	li $t0, 6
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
	addi $t0, $fp, -80
	sw $t0, -3896($fp)
	li $t0, 7
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
	lw $t0, -636($fp)
	sw $t0, -3916($fp)
	lw $t0, -3916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -3920($fp)
	li $t0, 0
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
	addi $t0, $fp, -112
	sw $t0, -3940($fp)
	li $t0, 1
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
	addi $t0, $fp, -112
	sw $t0, -3960($fp)
	li $t0, 2
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
	addi $t0, $fp, -112
	sw $t0, -3980($fp)
	li $t0, 3
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
	addi $t0, $fp, -112
	sw $t0, -4000($fp)
	li $t0, 4
	sw $t0, -4004($fp)
	li $t0, 4
	lw $t1, -4004($fp)
	mul $t0, $t0, $t1
	sw $t0, -4008($fp)
	lw $t0, -4008($fp)
	lw $t1, -4000($fp)
	add $t0, $t0, $t1
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	lw $t1, 0($t0)
	sw $t1, -4016($fp)
	lw $t0, -4016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -4020($fp)
	li $t0, 5
	sw $t0, -4024($fp)
	li $t0, 4
	lw $t1, -4024($fp)
	mul $t0, $t0, $t1
	sw $t0, -4028($fp)
	lw $t0, -4028($fp)
	lw $t1, -4020($fp)
	add $t0, $t0, $t1
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	lw $t1, 0($t0)
	sw $t1, -4036($fp)
	lw $t0, -4036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -4040($fp)
	li $t0, 6
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
	lw $t0, -4056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -4060($fp)
	li $t0, 7
	sw $t0, -4064($fp)
	li $t0, 4
	lw $t1, -4064($fp)
	mul $t0, $t0, $t1
	sw $t0, -4068($fp)
	lw $t0, -4068($fp)
	lw $t1, -4060($fp)
	add $t0, $t0, $t1
	sw $t0, -4072($fp)
	lw $t0, -4072($fp)
	lw $t1, 0($t0)
	sw $t1, -4076($fp)
	lw $t0, -4076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -840($fp)
	sw $t0, -4080($fp)
	lw $t0, -4080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -852($fp)
	sw $t0, -4084($fp)
	lw $t0, -4084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -864($fp)
	sw $t0, -4088($fp)
	lw $t0, -4088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -876($fp)
	sw $t0, -4092($fp)
	lw $t0, -4092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -888($fp)
	sw $t0, -4096($fp)
	lw $t0, -4096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4100($fp)
	li $t0, 0
	sw $t0, -4104($fp)
	li $t0, 0
	sw $t0, -4108($fp)
	li $t0, 61938
	sw $t0, -4112($fp)
	li $t0, 38072
	sw $t0, -4116($fp)
	lw $t1, -4112($fp)
	lw $t2, -4116($fp)
	beq $t1, $t2, label250
	j label251
label250:
	li $t0, 1
	sw $t0, -4108($fp)
label251:
	li $t0, 55198
	sw $t0, -4120($fp)
	lw $t1, -4108($fp)
	lw $t2, -4120($fp)
	bne $t1, $t2, label248
	j label249
label248:
	li $t0, 1
	sw $t0, -4104($fp)
label249:
	addi $sp, $sp, -4
	lw $t0, -4104($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4124($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4128($fp)
	lw $t0, -636($fp)
	sw $t0, -4132($fp)
	lw $t1, -4132($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label253
label252:
	li $t0, 1
	sw $t0, -4128($fp)
label253:
	li $t0, 0
	sw $t0, -4136($fp)
	lw $t0, -864($fp)
	sw $t0, -4140($fp)
	lw $t1, -4140($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label254
label254:
	li $t0, 1
	sw $t0, -4136($fp)
label255:
	lw $t0, -4128($fp)
	lw $t1, -4136($fp)
	add $t0, $t0, $t1
	sw $t0, -4144($fp)
	lw $t1, -4124($fp)
	lw $t2, -4144($fp)
	beq $t1, $t2, label246
	j label247
label246:
	li $t0, 1
	sw $t0, -4100($fp)
label247:
	lw $ra, -4($fp)
	lw $v0, -4100($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4672
	li $t0, 56622
	sw $t0, -80($fp)
	addi $t0, $fp, -44
	sw $t0, -84($fp)
	li $t0, 0
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
	li $t0, 33268
	sw $t0, -104($fp)
	addi $t0, $fp, -44
	sw $t0, -108($fp)
	li $t0, 1
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
	li $t0, 50247
	sw $t0, -128($fp)
	addi $t0, $fp, -44
	sw $t0, -132($fp)
	li $t0, 2
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
	li $t0, 18291
	sw $t0, -152($fp)
	addi $t0, $fp, -44
	sw $t0, -156($fp)
	li $t0, 3
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
	li $t0, 59732
	sw $t0, -176($fp)
	addi $t0, $fp, -44
	sw $t0, -180($fp)
	li $t0, 4
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
	li $t0, 58744
	sw $t0, -200($fp)
	addi $t0, $fp, -44
	sw $t0, -204($fp)
	li $t0, 5
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
	li $t0, 46003
	sw $t0, -224($fp)
	addi $t0, $fp, -44
	sw $t0, -228($fp)
	li $t0, 6
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
	li $t0, 17729
	sw $t0, -248($fp)
	addi $t0, $fp, -44
	sw $t0, -252($fp)
	li $t0, 7
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
	li $t0, 15601
	sw $t0, -272($fp)
	addi $t0, $fp, -44
	sw $t0, -276($fp)
	li $t0, 8
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
	li $t0, 7782
	sw $t0, -296($fp)
	addi $t0, $fp, -44
	sw $t0, -300($fp)
	li $t0, 9
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
	li $t0, 41144
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	li $t0, 35591
	sw $t0, -332($fp)
	addi $t0, $fp, -48
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
	li $t0, 49864
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	li $t0, 61963
	sw $t0, -368($fp)
	addi $t0, $fp, -64
	sw $t0, -372($fp)
	li $t0, 0
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
	li $t0, 33199
	sw $t0, -392($fp)
	addi $t0, $fp, -64
	sw $t0, -396($fp)
	li $t0, 1
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
	li $t0, 29944
	sw $t0, -416($fp)
	addi $t0, $fp, -64
	sw $t0, -420($fp)
	li $t0, 2
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
	li $t0, 21628
	sw $t0, -440($fp)
	addi $t0, $fp, -64
	sw $t0, -444($fp)
	li $t0, 3
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
	li $t0, 16860
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	li $t0, 7649
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	li $t0, 11490
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	li $t0, 61783
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	li $t0, 42698
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	li $t0, 37541
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	li $t0, 59628
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	li $t0, 55003
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	li $t0, 2889
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	li $t0, 47588
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	li $t0, 11360
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	li $t0, 64827
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	li $t0, 20124
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	li $t0, 1022
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	li $t0, 55913
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	li $t0, 53393
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	li $t0, 51269
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	li $t0, 8668
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	li $t0, 47589
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	li $t0, 44477
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	li $t0, 54671
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	li $t0, 65318
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	li $t0, 60078
	sw $t0, -728($fp)
	addi $t0, $fp, -76
	sw $t0, -732($fp)
	li $t0, 0
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
	li $t0, 62453
	sw $t0, -752($fp)
	addi $t0, $fp, -76
	sw $t0, -756($fp)
	li $t0, 1
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t0, -756($fp)
	lw $t1, -764($fp)
	add $t0, $t0, $t1
	sw $t0, -768($fp)
	lw $t0, -752($fp)
	lw $t1, -768($fp)
	sw $t0, 0($t1)
	lw $t0, -768($fp)
	lw $t1, 0($t0)
	sw $t1, -772($fp)
	li $t0, 40926
	sw $t0, -776($fp)
	addi $t0, $fp, -76
	sw $t0, -780($fp)
	li $t0, 2
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -788($fp)
	lw $t0, -780($fp)
	lw $t1, -788($fp)
	add $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $t0, -776($fp)
	lw $t1, -792($fp)
	sw $t0, 0($t1)
	lw $t0, -792($fp)
	lw $t1, 0($t0)
	sw $t1, -796($fp)
	li $t0, 30134
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
	li $t0, 46782
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	li $t0, 37353
	sw $t0, -860($fp)
	addi $t0, $fp, -856
	sw $t0, -864($fp)
	li $t0, 0
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
	li $t0, 63333
	sw $t0, -884($fp)
	addi $t0, $fp, -856
	sw $t0, -888($fp)
	li $t0, 1
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
	li $t0, 11190
	sw $t0, -908($fp)
	addi $t0, $fp, -856
	sw $t0, -912($fp)
	li $t0, 2
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
	li $t0, 58981
	sw $t0, -932($fp)
	addi $t0, $fp, -856
	sw $t0, -936($fp)
	li $t0, 3
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
	li $t0, 14657
	sw $t0, -956($fp)
	addi $t0, $fp, -856
	sw $t0, -960($fp)
	li $t0, 4
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
	li $t0, 18839
	sw $t0, -980($fp)
	addi $t0, $fp, -856
	sw $t0, -984($fp)
	li $t0, 5
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
	li $t0, 4935
	sw $t0, -1004($fp)
	addi $t0, $fp, -856
	sw $t0, -1008($fp)
	li $t0, 6
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
	li $t0, 10904
	sw $t0, -1028($fp)
	addi $t0, $fp, -856
	sw $t0, -1032($fp)
	li $t0, 7
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
	li $t0, 61537
	sw $t0, -1052($fp)
	addi $t0, $fp, -856
	sw $t0, -1056($fp)
	li $t0, 8
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
	li $t0, 42476
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
	li $t0, 4996
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -1096($fp)
	li $t0, 51004
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -1108($fp)
	li $t0, 45365
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	li $t0, 52584
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	sw $t0, -1132($fp)
	li $t0, 62364
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -1144($fp)
label256:
	addi $t0, $fp, -64
	sw $t0, -1148($fp)
	li $t0, 0
	sw $t0, -1152($fp)
	li $t0, 0
	sw $t0, -1156($fp)
	li $t0, 44656
	sw $t0, -1160($fp)
	lw $t0, -1128($fp)
	sw $t0, -1164($fp)
	lw $t1, -1160($fp)
	lw $t2, -1164($fp)
	bgt $t1, $t2, label261
	j label262
label261:
	li $t0, 1
	sw $t0, -1156($fp)
label262:
	lw $t0, 12($fp)
	sw $t0, -1168($fp)
	lw $t1, -1156($fp)
	lw $t2, -1168($fp)
	blt $t1, $t2, label259
	j label260
label259:
	li $t0, 1
	sw $t0, -1152($fp)
label260:
	li $t0, 4
	lw $t1, -1152($fp)
	mul $t0, $t0, $t1
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	lw $t1, -1148($fp)
	add $t0, $t0, $t1
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	lw $t1, 0($t0)
	sw $t1, -1180($fp)
	li $t0, 0
	lw $t1, -1180($fp)
	sub $t0, $t0, $t1
	sw $t0, -1184($fp)
	lw $t1, -1184($fp)
	li $t2, 0
	bne $t1, $t2, label257
	j label258
label257:
	li $t0, 7173
	sw $t0, -1228($fp)
	addi $t0, $fp, -1224
	sw $t0, -1232($fp)
	li $t0, 0
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1240($fp)
	lw $t0, -1232($fp)
	lw $t1, -1240($fp)
	add $t0, $t0, $t1
	sw $t0, -1244($fp)
	lw $t0, -1228($fp)
	lw $t1, -1244($fp)
	sw $t0, 0($t1)
	lw $t0, -1244($fp)
	lw $t1, 0($t0)
	sw $t1, -1248($fp)
	li $t0, 63386
	sw $t0, -1252($fp)
	addi $t0, $fp, -1224
	sw $t0, -1256($fp)
	li $t0, 1
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1264($fp)
	lw $t0, -1256($fp)
	lw $t1, -1264($fp)
	add $t0, $t0, $t1
	sw $t0, -1268($fp)
	lw $t0, -1252($fp)
	lw $t1, -1268($fp)
	sw $t0, 0($t1)
	lw $t0, -1268($fp)
	lw $t1, 0($t0)
	sw $t1, -1272($fp)
	li $t0, 35033
	sw $t0, -1276($fp)
	addi $t0, $fp, -1224
	sw $t0, -1280($fp)
	li $t0, 2
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $t0, -1280($fp)
	lw $t1, -1288($fp)
	add $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t0, -1276($fp)
	lw $t1, -1292($fp)
	sw $t0, 0($t1)
	lw $t0, -1292($fp)
	lw $t1, 0($t0)
	sw $t1, -1296($fp)
	li $t0, 60566
	sw $t0, -1300($fp)
	addi $t0, $fp, -1224
	sw $t0, -1304($fp)
	li $t0, 3
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
	li $t0, 49119
	sw $t0, -1324($fp)
	addi $t0, $fp, -1224
	sw $t0, -1328($fp)
	li $t0, 4
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
	li $t0, 43702
	sw $t0, -1348($fp)
	addi $t0, $fp, -1224
	sw $t0, -1352($fp)
	li $t0, 5
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1360($fp)
	lw $t0, -1352($fp)
	lw $t1, -1360($fp)
	add $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t0, -1348($fp)
	lw $t1, -1364($fp)
	sw $t0, 0($t1)
	lw $t0, -1364($fp)
	lw $t1, 0($t0)
	sw $t1, -1368($fp)
	li $t0, 42619
	sw $t0, -1372($fp)
	addi $t0, $fp, -1224
	sw $t0, -1376($fp)
	li $t0, 6
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1384($fp)
	lw $t0, -1376($fp)
	lw $t1, -1384($fp)
	add $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $t0, -1372($fp)
	lw $t1, -1388($fp)
	sw $t0, 0($t1)
	lw $t0, -1388($fp)
	lw $t1, 0($t0)
	sw $t1, -1392($fp)
	li $t0, 28060
	sw $t0, -1396($fp)
	addi $t0, $fp, -1224
	sw $t0, -1400($fp)
	li $t0, 7
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
	li $t0, 32837
	sw $t0, -1420($fp)
	addi $t0, $fp, -1224
	sw $t0, -1424($fp)
	li $t0, 8
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
	li $t0, 42401
	sw $t0, -1444($fp)
	addi $t0, $fp, -1224
	sw $t0, -1448($fp)
	li $t0, 9
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
	li $t0, 22602
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, -1476($fp)
	li $t0, 29755
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	sw $t0, -1488($fp)
label263:
	lw $t0, -360($fp)
	sw $t0, -1492($fp)
	lw $t0, -624($fp)
	sw $t0, -1496($fp)
	lw $t0, -648($fp)
	sw $t0, -1500($fp)
	lw $t0, -1496($fp)
	lw $t1, -1500($fp)
	mul $t0, $t0, $t1
	sw $t0, -1504($fp)
	lw $t0, -624($fp)
	sw $t0, -1508($fp)
	lw $t0, -1504($fp)
	lw $t1, -1508($fp)
	add $t0, $t0, $t1
	sw $t0, -1512($fp)
	li $t0, 0
	sw $t0, -1516($fp)
	li $t0, 17791
	sw $t0, -1520($fp)
	lw $t1, -1520($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label266
label266:
	li $t0, 1
	sw $t0, -1516($fp)
label267:
	lw $t0, -1512($fp)
	lw $t1, -1516($fp)
	add $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t1, -1492($fp)
	lw $t2, -1524($fp)
	beq $t1, $t2, label264
	j label265
label264:
	lw $t0, -528($fp)
	sw $t0, -1528($fp)
	li $t0, 0
	sw $t0, -1532($fp)
	li $t0, 52736
	sw $t0, -1536($fp)
	lw $t1, -1536($fp)
	li $t2, 0
	bne $t1, $t2, label269
	j label268
label268:
	li $t0, 1
	sw $t0, -1532($fp)
label269:
	lw $t0, -1528($fp)
	lw $t1, -1532($fp)
	mul $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t0, -1472($fp)
	sw $t0, -1544($fp)
	lw $t0, -1540($fp)
	lw $t1, -1544($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1548($fp)
	j label263
label265:
	li $t0, 0
	sw $t0, -1552($fp)
	addi $t0, $fp, -44
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
	addi $sp, $sp, -4
	lw $t0, -1572($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1576($fp)
	addi $sp, $sp, 8
	li $t0, 22191
	sw $t0, -1580($fp)
	lw $t1, -1576($fp)
	lw $t2, -1580($fp)
	bge $t1, $t2, label270
	j label271
label270:
	li $t0, 1
	sw $t0, -1552($fp)
label271:
	addi $t0, $fp, -64
	sw $t0, -1584($fp)
	lw $t0, -720($fp)
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
	li $t0, 0
	sw $t0, -1604($fp)
	li $t0, 11001
	sw $t0, -1608($fp)
	lw $t0, -696($fp)
	sw $t0, -1612($fp)
	lw $t0, -1608($fp)
	lw $t1, -1612($fp)
	add $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t1, -1616($fp)
	li $t2, 0
	bne $t1, $t2, label274
	j label273
label274:
	lw $t0, -516($fp)
	sw $t0, -1620($fp)
	lw $t1, -1620($fp)
	li $t2, 0
	bne $t1, $t2, label272
	j label273
label272:
	li $t0, 1
	sw $t0, -1604($fp)
label273:
	addi $sp, $sp, -4
	lw $t0, -1552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1604($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1624($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -1628($fp)
	li $t0, 0
	sw $t0, -1632($fp)
	lw $t0, -1484($fp)
	sw $t0, -1636($fp)
	lw $t0, -1140($fp)
	sw $t0, -1640($fp)
	lw $t1, -1636($fp)
	lw $t2, -1640($fp)
	ble $t1, $t2, label277
	j label278
label277:
	li $t0, 1
	sw $t0, -1632($fp)
label278:
	lw $t0, -492($fp)
	sw $t0, -1644($fp)
	lw $t1, -1632($fp)
	lw $t2, -1644($fp)
	bne $t1, $t2, label275
	j label276
label275:
	li $t0, 1
	sw $t0, -1628($fp)
label276:
	addi $sp, $sp, -4
	lw $t0, -1628($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1648($fp)
	addi $sp, $sp, 8
	lw $t0, -1624($fp)
	lw $t1, -1648($fp)
	add $t0, $t0, $t1
	sw $t0, -1652($fp)
	li $t0, 0
	sw $t0, -1656($fp)
	lw $t0, -660($fp)
	sw $t0, -1660($fp)
	lw $t0, -1140($fp)
	sw $t0, -1664($fp)
	lw $t1, -1660($fp)
	lw $t2, -1664($fp)
	bne $t1, $t2, label281
	j label280
label281:
	li $t0, 41030
	sw $t0, -1668($fp)
	lw $t1, -1668($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label280
label279:
	li $t0, 1
	sw $t0, -1656($fp)
label280:
	lw $t0, -660($fp)
	sw $t0, -1672($fp)
	li $t0, 0
	sw $t0, -1676($fp)
	lw $t0, 8($fp)
	sw $t0, -1680($fp)
	li $t0, 48589
	sw $t0, -1684($fp)
	lw $t1, -1680($fp)
	lw $t2, -1684($fp)
	blt $t1, $t2, label284
	j label283
label284:
	li $t0, 65190
	sw $t0, -1688($fp)
	lw $t1, -1688($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -1676($fp)
label283:
	addi $sp, $sp, -4
	lw $t0, -1656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1676($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1692($fp)
	addi $sp, $sp, 16
	lw $t0, -1652($fp)
	lw $t1, -1692($fp)
	sub $t0, $t0, $t1
	sw $t0, -1696($fp)
	li $t0, 37031
	sw $t0, -1700($fp)
	li $t0, 0
	sw $t0, -1704($fp)
	lw $t0, -660($fp)
	sw $t0, -1708($fp)
	lw $t1, -1708($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label285
label285:
	li $t0, 1
	sw $t0, -1704($fp)
label286:
	li $t0, 0
	sw $t0, -1712($fp)
	lw $t0, -468($fp)
	sw $t0, -1716($fp)
	li $t0, 53525
	sw $t0, -1720($fp)
	lw $t0, -1716($fp)
	lw $t1, -1720($fp)
	mul $t0, $t0, $t1
	sw $t0, -1724($fp)
	li $t0, 10558
	sw $t0, -1728($fp)
	lw $t1, -1724($fp)
	lw $t2, -1728($fp)
	bgt $t1, $t2, label287
	j label288
label287:
	li $t0, 1
	sw $t0, -1712($fp)
label288:
	addi $sp, $sp, -4
	lw $t0, -1700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1712($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1732($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -1224
	sw $t0, -1736($fp)
	lw $t0, -480($fp)
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
	lw $t0, -1732($fp)
	lw $t1, -1752($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1756($fp)
	lw $t0, -1696($fp)
	lw $t1, -1756($fp)
	sub $t0, $t0, $t1
	sw $t0, -1760($fp)
	addi $t0, $fp, -64
	sw $t0, -1764($fp)
	lw $t0, -624($fp)
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
	addi $t0, $fp, -76
	sw $t0, -1784($fp)
	li $t0, 0
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
	lw $t0, -1780($fp)
	lw $t1, -1800($fp)
	mul $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t0, -552($fp)
	sw $t0, -1808($fp)
	lw $t0, -1804($fp)
	lw $t1, -1808($fp)
	add $t0, $t0, $t1
	sw $t0, -1812($fp)
	li $t0, 22499
	sw $t0, -1816($fp)
	lw $t1, -1812($fp)
	lw $t2, -1816($fp)
	bne $t1, $t2, label289
	j label290
label289:
	li $t0, 0
	sw $t0, -1820($fp)
	lw $t0, -1080($fp)
	sw $t0, -1824($fp)
	lw $t1, -1824($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label294
label294:
	addi $t0, $fp, -64
	sw $t0, -1828($fp)
	lw $t0, -600($fp)
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
	lw $t1, -1844($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label292
label292:
	li $t0, 1
	sw $t0, -1820($fp)
label293:
	j label291
label290:
	lw $t0, -480($fp)
	sw $t0, -1848($fp)
label291:
	li $t0, 0
	sw $t0, -1852($fp)
	lw $t0, -624($fp)
	sw $t0, -1856($fp)
	addi $t0, $fp, -48
	sw $t0, -1860($fp)
	lw $t0, -360($fp)
	sw $t0, -1864($fp)
	li $t0, 4
	lw $t1, -1864($fp)
	mul $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	lw $t1, -1860($fp)
	add $t0, $t0, $t1
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	lw $t1, 0($t0)
	sw $t1, -1876($fp)
	li $t0, 0
	sw $t0, -1880($fp)
	li $t0, 10295
	sw $t0, -1884($fp)
	lw $t1, -1884($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label297
label297:
	li $t0, 1
	sw $t0, -1880($fp)
label298:
	lw $t0, -1876($fp)
	lw $t1, -1880($fp)
	mul $t0, $t0, $t1
	sw $t0, -1888($fp)
	lw $t1, -1856($fp)
	lw $t2, -1888($fp)
	bge $t1, $t2, label295
	j label296
label295:
	li $t0, 1
	sw $t0, -1852($fp)
label296:
	j label256
label258:
label299:
	lw $t0, -624($fp)
	sw $t0, -1892($fp)
	lw $t0, -624($fp)
	sw $t0, -1896($fp)
	lw $t0, -1892($fp)
	lw $t1, -1896($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1900($fp)
	lw $t0, -672($fp)
	sw $t0, -1904($fp)
	lw $t0, -1900($fp)
	lw $t1, -1904($fp)
	mul $t0, $t0, $t1
	sw $t0, -1908($fp)
	lw $t0, -1116($fp)
	sw $t0, -1912($fp)
	lw $t0, -1908($fp)
	lw $t1, -1912($fp)
	add $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -1920($fp)
	lw $t1, -1920($fp)
	li $t2, 0
	bne $t1, $t2, label300
	j label301
label300:
label302:
	li $t0, 0
	sw $t0, -1924($fp)
	addi $t0, $fp, -856
	sw $t0, -1928($fp)
	li $t0, 2
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
	li $t0, 0
	lw $t1, -1944($fp)
	sub $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t1, -1948($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label306
label307:
	lw $t0, -804($fp)
	sw $t0, -1952($fp)
	lw $t0, -324($fp)
	sw $t0, -1956($fp)
	lw $t0, -1952($fp)
	lw $t1, -1956($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1960($fp)
	lw $t1, -1960($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label306
label305:
	li $t0, 1
	sw $t0, -1924($fp)
label306:
	lw $t0, -1924($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -1964($fp)
	lw $t1, -1964($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label304
label303:
	lw $t0, -600($fp)
	sw $t0, -1968($fp)
	lw $t1, -1968($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label309
label308:
	lw $t0, -588($fp)
	sw $t0, -1972($fp)
	lw $t0, -1092($fp)
	sw $t0, -1976($fp)
	lw $t0, -1972($fp)
	lw $t1, -1976($fp)
	mul $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, -1104($fp)
	sw $t0, -1984($fp)
	lw $t0, -1980($fp)
	lw $t1, -1984($fp)
	mul $t0, $t0, $t1
	sw $t0, -1988($fp)
	li $t0, 54951
	sw $t0, -1992($fp)
	lw $t0, -324($fp)
	sw $t0, -1996($fp)
	lw $t0, -1992($fp)
	lw $t1, -1996($fp)
	add $t0, $t0, $t1
	sw $t0, -2000($fp)
	li $t0, 9776
	sw $t0, -2004($fp)
	lw $t0, -2000($fp)
	lw $t1, -2004($fp)
	add $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $t0, -1128($fp)
	sw $t0, -2012($fp)
	addi $sp, $sp, -4
	lw $t0, -1988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2012($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2016($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -2020($fp)
	lw $t0, -624($fp)
	sw $t0, -2024($fp)
	lw $t1, -2024($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label316
label318:
	lw $t0, -564($fp)
	sw $t0, -2028($fp)
	lw $t1, -2028($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label316
label317:
	lw $t0, -540($fp)
	sw $t0, -2032($fp)
	lw $t1, -2032($fp)
	li $t2, 0
	bne $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -2020($fp)
label316:
	lw $t0, 8($fp)
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -2040($fp)
	addi $sp, $sp, -4
	lw $t0, -2016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2040($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2044($fp)
	addi $sp, $sp, 16
	lw $t1, -2044($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label314
label314:
	li $t0, 0
	sw $t0, -2048($fp)
	li $t0, 24449
	sw $t0, -2052($fp)
	lw $t0, -816($fp)
	sw $t0, -2056($fp)
	lw $t0, -2052($fp)
	lw $t1, -2056($fp)
	add $t0, $t0, $t1
	sw $t0, -2060($fp)
	li $t0, 4806
	sw $t0, -2064($fp)
	lw $t1, -2060($fp)
	lw $t2, -2064($fp)
	beq $t1, $t2, label319
	j label320
label319:
	li $t0, 1
	sw $t0, -2048($fp)
label320:
	li $t0, 0
	sw $t0, -2068($fp)
	li $t0, 0
	sw $t0, -2072($fp)
	lw $t0, -600($fp)
	sw $t0, -2076($fp)
	lw $t1, -2076($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label323
label323:
	li $t0, 1
	sw $t0, -2072($fp)
label324:
	li $t0, 17177
	sw $t0, -2080($fp)
	lw $t1, -2072($fp)
	lw $t2, -2080($fp)
	blt $t1, $t2, label321
	j label322
label321:
	li $t0, 1
	sw $t0, -2068($fp)
label322:
	lw $t0, -624($fp)
	sw $t0, -2084($fp)
	addi $sp, $sp, -4
	lw $t0, -2084($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2088($fp)
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -2092($fp)
	lw $t0, -2088($fp)
	lw $t1, -2092($fp)
	add $t0, $t0, $t1
	sw $t0, -2096($fp)
	addi $sp, $sp, -4
	lw $t0, -2048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2096($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2100($fp)
	addi $sp, $sp, 16
	lw $t1, -2100($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label312
label311:
	li $t0, 760
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	sw $t0, -2112($fp)
	li $t0, 2615
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	sw $t0, -2124($fp)
	li $t0, 0
	sw $t0, -2128($fp)
	addi $t0, $fp, -64
	sw $t0, -2132($fp)
	li $t0, 47425
	sw $t0, -2136($fp)
	lw $t0, -2108($fp)
	sw $t0, -2140($fp)
	lw $t0, -2136($fp)
	lw $t1, -2140($fp)
	sub $t0, $t0, $t1
	sw $t0, -2144($fp)
	li $t0, 4
	lw $t1, -2144($fp)
	mul $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t0, -2148($fp)
	lw $t1, -2132($fp)
	add $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	lw $t1, 0($t0)
	sw $t1, -2156($fp)
	lw $t1, -2156($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label325
label325:
	li $t0, 1
	sw $t0, -2128($fp)
label326:
	lw $t0, -1140($fp)
	sw $t0, -2160($fp)
	lw $t0, -2128($fp)
	lw $t1, -2160($fp)
	add $t0, $t0, $t1
	sw $t0, -2164($fp)
	addi $t0, $fp, -64
	sw $t0, -2168($fp)
	li $t0, 0
	sw $t0, -2172($fp)
	lw $t0, -564($fp)
	sw $t0, -2176($fp)
	lw $t0, -2120($fp)
	sw $t0, -2180($fp)
	lw $t0, -588($fp)
	sw $t0, -2184($fp)
	lw $t0, -2180($fp)
	lw $t1, -2184($fp)
	mul $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t1, -2176($fp)
	lw $t2, -2188($fp)
	bgt $t1, $t2, label327
	j label328
label327:
	li $t0, 1
	sw $t0, -2172($fp)
label328:
	li $t0, 4
	lw $t1, -2172($fp)
	mul $t0, $t0, $t1
	sw $t0, -2192($fp)
	lw $t0, -2192($fp)
	lw $t1, -2168($fp)
	add $t0, $t0, $t1
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	lw $t1, 0($t0)
	sw $t1, -2200($fp)
	j label313
label312:
label329:
	li $t0, 0
	sw $t0, -2204($fp)
	li $t0, 28820
	sw $t0, -2208($fp)
	li $t0, 35452
	sw $t0, -2212($fp)
	lw $t0, -2208($fp)
	lw $t1, -2212($fp)
	mul $t0, $t0, $t1
	sw $t0, -2216($fp)
	li $t0, 24290
	sw $t0, -2220($fp)
	lw $t1, -2216($fp)
	lw $t2, -2220($fp)
	ble $t1, $t2, label333
	j label334
label333:
	li $t0, 1
	sw $t0, -2204($fp)
label334:
	addi $sp, $sp, -4
	lw $t0, -2204($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2224($fp)
	addi $sp, $sp, 8
	li $t0, 51422
	sw $t0, -2228($fp)
	lw $t0, -2224($fp)
	lw $t1, -2228($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2232($fp)
	li $t0, 0
	lw $t1, -2232($fp)
	sub $t0, $t0, $t1
	sw $t0, -2236($fp)
	lw $t1, -2236($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label332
label332:
	addi $t0, $fp, -76
	sw $t0, -2240($fp)
	li $t0, 2
	sw $t0, -2244($fp)
	li $t0, 4
	lw $t1, -2244($fp)
	mul $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	lw $t1, -2240($fp)
	add $t0, $t0, $t1
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	lw $t1, 0($t0)
	sw $t1, -2256($fp)
	addi $t0, $fp, -76
	sw $t0, -2260($fp)
	li $t0, 1
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
	lw $t0, -2256($fp)
	lw $t1, -2276($fp)
	sub $t0, $t0, $t1
	sw $t0, -2280($fp)
	lw $t1, -2280($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label331
label330:
	li $t0, 0
	sw $t0, -2284($fp)
	li $t0, 31689
	sw $t0, -2288($fp)
	lw $t1, -2288($fp)
	li $t2, 0
	bne $t1, $t2, label336
	j label335
label335:
	li $t0, 1
	sw $t0, -2284($fp)
label336:
	li $t0, 23620
	sw $t0, -2292($fp)
	lw $t0, -2284($fp)
	lw $t1, -2292($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2296($fp)
	li $t0, 32863
	sw $t0, -2300($fp)
	li $t0, 0
	lw $t1, -2300($fp)
	sub $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $t0, -492($fp)
	sw $t0, -2308($fp)
	lw $t0, -2304($fp)
	lw $t1, -2308($fp)
	sub $t0, $t0, $t1
	sw $t0, -2312($fp)
	addi $sp, $sp, -4
	lw $t0, -2312($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2316($fp)
	addi $sp, $sp, 8
	lw $t0, -2296($fp)
	lw $t1, -2316($fp)
	mul $t0, $t0, $t1
	sw $t0, -2320($fp)
	j label329
label331:
label313:
	j label310
label309:
	li $t0, 14743
	sw $t0, -2364($fp)
	addi $t0, $fp, -2328
	sw $t0, -2368($fp)
	li $t0, 0
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
	li $t0, 23275
	sw $t0, -2388($fp)
	addi $t0, $fp, -2328
	sw $t0, -2392($fp)
	li $t0, 1
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2400($fp)
	lw $t0, -2392($fp)
	lw $t1, -2400($fp)
	add $t0, $t0, $t1
	sw $t0, -2404($fp)
	lw $t0, -2388($fp)
	lw $t1, -2404($fp)
	sw $t0, 0($t1)
	lw $t0, -2404($fp)
	lw $t1, 0($t0)
	sw $t1, -2408($fp)
	li $t0, 8357
	sw $t0, -2412($fp)
	addi $t0, $fp, -2360
	sw $t0, -2416($fp)
	li $t0, 0
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2424($fp)
	lw $t0, -2416($fp)
	lw $t1, -2424($fp)
	add $t0, $t0, $t1
	sw $t0, -2428($fp)
	lw $t0, -2412($fp)
	lw $t1, -2428($fp)
	sw $t0, 0($t1)
	lw $t0, -2428($fp)
	lw $t1, 0($t0)
	sw $t1, -2432($fp)
	li $t0, 2732
	sw $t0, -2436($fp)
	addi $t0, $fp, -2360
	sw $t0, -2440($fp)
	li $t0, 1
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2448($fp)
	lw $t0, -2440($fp)
	lw $t1, -2448($fp)
	add $t0, $t0, $t1
	sw $t0, -2452($fp)
	lw $t0, -2436($fp)
	lw $t1, -2452($fp)
	sw $t0, 0($t1)
	lw $t0, -2452($fp)
	lw $t1, 0($t0)
	sw $t1, -2456($fp)
	li $t0, 33833
	sw $t0, -2460($fp)
	addi $t0, $fp, -2360
	sw $t0, -2464($fp)
	li $t0, 2
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t0, -2464($fp)
	lw $t1, -2472($fp)
	add $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $t0, -2460($fp)
	lw $t1, -2476($fp)
	sw $t0, 0($t1)
	lw $t0, -2476($fp)
	lw $t1, 0($t0)
	sw $t1, -2480($fp)
	li $t0, 45388
	sw $t0, -2484($fp)
	addi $t0, $fp, -2360
	sw $t0, -2488($fp)
	li $t0, 3
	sw $t0, -2492($fp)
	lw $t0, -2492($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2496($fp)
	lw $t0, -2488($fp)
	lw $t1, -2496($fp)
	add $t0, $t0, $t1
	sw $t0, -2500($fp)
	lw $t0, -2484($fp)
	lw $t1, -2500($fp)
	sw $t0, 0($t1)
	lw $t0, -2500($fp)
	lw $t1, 0($t0)
	sw $t1, -2504($fp)
	li $t0, 33197
	sw $t0, -2508($fp)
	addi $t0, $fp, -2360
	sw $t0, -2512($fp)
	li $t0, 4
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2520($fp)
	lw $t0, -2512($fp)
	lw $t1, -2520($fp)
	add $t0, $t0, $t1
	sw $t0, -2524($fp)
	lw $t0, -2508($fp)
	lw $t1, -2524($fp)
	sw $t0, 0($t1)
	lw $t0, -2524($fp)
	lw $t1, 0($t0)
	sw $t1, -2528($fp)
	li $t0, 49388
	sw $t0, -2532($fp)
	addi $t0, $fp, -2360
	sw $t0, -2536($fp)
	li $t0, 5
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2544($fp)
	lw $t0, -2536($fp)
	lw $t1, -2544($fp)
	add $t0, $t0, $t1
	sw $t0, -2548($fp)
	lw $t0, -2532($fp)
	lw $t1, -2548($fp)
	sw $t0, 0($t1)
	lw $t0, -2548($fp)
	lw $t1, 0($t0)
	sw $t1, -2552($fp)
	li $t0, 2351
	sw $t0, -2556($fp)
	addi $t0, $fp, -2360
	sw $t0, -2560($fp)
	li $t0, 6
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2568($fp)
	lw $t0, -2560($fp)
	lw $t1, -2568($fp)
	add $t0, $t0, $t1
	sw $t0, -2572($fp)
	lw $t0, -2556($fp)
	lw $t1, -2572($fp)
	sw $t0, 0($t1)
	lw $t0, -2572($fp)
	lw $t1, 0($t0)
	sw $t1, -2576($fp)
	li $t0, 43492
	sw $t0, -2580($fp)
	addi $t0, $fp, -2360
	sw $t0, -2584($fp)
	li $t0, 7
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2592($fp)
	lw $t0, -2584($fp)
	lw $t1, -2592($fp)
	add $t0, $t0, $t1
	sw $t0, -2596($fp)
	lw $t0, -2580($fp)
	lw $t1, -2596($fp)
	sw $t0, 0($t1)
	lw $t0, -2596($fp)
	lw $t1, 0($t0)
	sw $t1, -2600($fp)
	li $t0, 0
	sw $t0, -2604($fp)
	addi $t0, $fp, -2360
	sw $t0, -2608($fp)
	li $t0, 7
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
	li $t0, 32908
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -2632($fp)
	addi $t0, $fp, -2328
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
	addi $sp, $sp, -4
	lw $t0, -2624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2652($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2656($fp)
	addi $sp, $sp, 16
	li $t0, 57357
	sw $t0, -2660($fp)
	lw $t0, -2656($fp)
	lw $t1, -2660($fp)
	sub $t0, $t0, $t1
	sw $t0, -2664($fp)
	lw $t0, -516($fp)
	sw $t0, -2668($fp)
	li $t0, 0
	sw $t0, -2672($fp)
	lw $t0, -648($fp)
	sw $t0, -2676($fp)
	lw $t1, -2676($fp)
	li $t2, 0
	bne $t1, $t2, label341
	j label340
label341:
	lw $t0, -672($fp)
	sw $t0, -2680($fp)
	lw $t1, -2680($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label340
label339:
	li $t0, 1
	sw $t0, -2672($fp)
label340:
	addi $sp, $sp, -4
	lw $t0, -2664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2672($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2684($fp)
	addi $sp, $sp, 16
	lw $t1, -2684($fp)
	li $t2, 0
	bne $t1, $t2, label338
	j label337
label337:
	li $t0, 1
	sw $t0, -2604($fp)
label338:
	lw $t0, 4($fp)
	sw $t0, -2688($fp)
	li $t0, 0
	lw $t1, -2688($fp)
	sub $t0, $t0, $t1
	sw $t0, -2692($fp)
	lw $t0, -2604($fp)
	lw $t1, -2692($fp)
	mul $t0, $t0, $t1
	sw $t0, -2696($fp)
label310:
	j label302
label304:
	j label299
label301:
	li $t0, 0
	sw $t0, -2700($fp)
	li $t0, 1039
	sw $t0, -2704($fp)
	li $t0, 0
	lw $t1, -2704($fp)
	sub $t0, $t0, $t1
	sw $t0, -2708($fp)
	li $t0, 39615
	sw $t0, -2712($fp)
	lw $t1, -2708($fp)
	lw $t2, -2712($fp)
	bge $t1, $t2, label342
	j label343
label342:
	li $t0, 1
	sw $t0, -2700($fp)
label343:
	addi $sp, $sp, -4
	lw $t0, -2700($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2716($fp)
	addi $sp, $sp, 8
	li $t0, 59972
	sw $t0, -2720($fp)
	li $t0, 0
	lw $t1, -2720($fp)
	sub $t0, $t0, $t1
	sw $t0, -2724($fp)
	lw $t0, -2716($fp)
	lw $t1, -2724($fp)
	mul $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -2732($fp)
	addi $t0, $fp, -44
	sw $t0, -2736($fp)
	li $t0, 0
	sw $t0, -2740($fp)
	li $t0, 4
	lw $t1, -2740($fp)
	mul $t0, $t0, $t1
	sw $t0, -2744($fp)
	lw $t0, -2744($fp)
	lw $t1, -2736($fp)
	add $t0, $t0, $t1
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	lw $t1, 0($t0)
	sw $t1, -2752($fp)
	lw $t0, -2752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
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
	lw $t0, -2772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -2776($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -2796($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -2816($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -2836($fp)
	li $t0, 5
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
	li $t0, 6
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
	li $t0, 7
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
	li $t0, 8
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
	li $t0, 9
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
	lw $t0, -324($fp)
	sw $t0, -2936($fp)
	lw $t0, -2936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -2940($fp)
	li $t0, 0
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
	lw $t0, -360($fp)
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -2964($fp)
	li $t0, 0
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
	lw $t0, -2980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -2984($fp)
	li $t0, 1
	sw $t0, -2988($fp)
	li $t0, 4
	lw $t1, -2988($fp)
	mul $t0, $t0, $t1
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	lw $t1, -2984($fp)
	add $t0, $t0, $t1
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	lw $t1, 0($t0)
	sw $t1, -3000($fp)
	lw $t0, -3000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -3004($fp)
	li $t0, 2
	sw $t0, -3008($fp)
	li $t0, 4
	lw $t1, -3008($fp)
	mul $t0, $t0, $t1
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	lw $t1, -3004($fp)
	add $t0, $t0, $t1
	sw $t0, -3016($fp)
	lw $t0, -3016($fp)
	lw $t1, 0($t0)
	sw $t1, -3020($fp)
	lw $t0, -3020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -3024($fp)
	li $t0, 3
	sw $t0, -3028($fp)
	li $t0, 4
	lw $t1, -3028($fp)
	mul $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -3032($fp)
	lw $t1, -3024($fp)
	add $t0, $t0, $t1
	sw $t0, -3036($fp)
	lw $t0, -3036($fp)
	lw $t1, 0($t0)
	sw $t1, -3040($fp)
	lw $t0, -3040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -3044($fp)
	lw $t0, -3044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -3052($fp)
	lw $t0, -3052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -3056($fp)
	lw $t0, -3056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -3060($fp)
	lw $t0, -3060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -3084($fp)
	lw $t0, -3084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -600($fp)
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -3096($fp)
	lw $t0, -3096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -3100($fp)
	lw $t0, -3100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -3108($fp)
	lw $t0, -3108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -3112($fp)
	lw $t0, -3112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -684($fp)
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -696($fp)
	sw $t0, -3120($fp)
	lw $t0, -3120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -720($fp)
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -3132($fp)
	li $t0, 0
	sw $t0, -3136($fp)
	li $t0, 4
	lw $t1, -3136($fp)
	mul $t0, $t0, $t1
	sw $t0, -3140($fp)
	lw $t0, -3140($fp)
	lw $t1, -3132($fp)
	add $t0, $t0, $t1
	sw $t0, -3144($fp)
	lw $t0, -3144($fp)
	lw $t1, 0($t0)
	sw $t1, -3148($fp)
	lw $t0, -3148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -3152($fp)
	li $t0, 1
	sw $t0, -3156($fp)
	li $t0, 4
	lw $t1, -3156($fp)
	mul $t0, $t0, $t1
	sw $t0, -3160($fp)
	lw $t0, -3160($fp)
	lw $t1, -3152($fp)
	add $t0, $t0, $t1
	sw $t0, -3164($fp)
	lw $t0, -3164($fp)
	lw $t1, 0($t0)
	sw $t1, -3168($fp)
	lw $t0, -3168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -3172($fp)
	li $t0, 2
	sw $t0, -3176($fp)
	li $t0, 4
	lw $t1, -3176($fp)
	mul $t0, $t0, $t1
	sw $t0, -3180($fp)
	lw $t0, -3180($fp)
	lw $t1, -3172($fp)
	add $t0, $t0, $t1
	sw $t0, -3184($fp)
	lw $t0, -3184($fp)
	lw $t1, 0($t0)
	sw $t1, -3188($fp)
	lw $t0, -3188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -804($fp)
	sw $t0, -3192($fp)
	lw $t0, -3192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -816($fp)
	sw $t0, -3196($fp)
	lw $t0, -3196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 48464
	sw $t0, -3200($fp)
	lw $ra, -4($fp)
	lw $v0, -3200($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 2899
	sw $t0, -3204($fp)
	lw $t0, -3204($fp)
	sw $t0, -3208($fp)
	lw $t0, -3208($fp)
	sw $t0, -3212($fp)
	li $t0, 29888
	sw $t0, -3216($fp)
	lw $t0, -3216($fp)
	sw $t0, -3220($fp)
	lw $t0, -3220($fp)
	sw $t0, -3224($fp)
	li $t0, 7219
	sw $t0, -3228($fp)
	lw $t0, -3228($fp)
	sw $t0, -3232($fp)
	lw $t0, -3232($fp)
	sw $t0, -3236($fp)
	li $t0, 54322
	sw $t0, -3240($fp)
	lw $t0, -3240($fp)
	sw $t0, -3244($fp)
	lw $t0, -3244($fp)
	sw $t0, -3248($fp)
	li $t0, 0
	sw $t0, -3252($fp)
	li $t0, 0
	sw $t0, -3256($fp)
	lw $t0, -624($fp)
	sw $t0, -3260($fp)
	lw $t0, -492($fp)
	sw $t0, -3264($fp)
	lw $t0, -3260($fp)
	lw $t1, -3264($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3268($fp)
	lw $t1, -3268($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label347
label348:
	lw $t0, 4($fp)
	sw $t0, -3272($fp)
	lw $t1, -3272($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label347
label346:
	li $t0, 1
	sw $t0, -3256($fp)
label347:
	li $t0, 0
	sw $t0, -3276($fp)
	lw $t0, -3244($fp)
	sw $t0, -3280($fp)
	lw $t1, -3280($fp)
	li $t2, 0
	bne $t1, $t2, label352
	j label350
label352:
	lw $t0, 8($fp)
	sw $t0, -3284($fp)
	lw $t1, -3284($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label350
label351:
	li $t0, 40232
	sw $t0, -3288($fp)
	lw $t1, -3288($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label350
label349:
	li $t0, 1
	sw $t0, -3276($fp)
label350:
	li $t0, 0
	sw $t0, -3292($fp)
	lw $t0, -468($fp)
	sw $t0, -3296($fp)
	li $t0, 27409
	sw $t0, -3300($fp)
	lw $t1, -3296($fp)
	lw $t2, -3300($fp)
	bne $t1, $t2, label353
	j label354
label353:
	li $t0, 1
	sw $t0, -3292($fp)
label354:
	li $t0, 0
	sw $t0, -3304($fp)
	li $t0, 49300
	sw $t0, -3308($fp)
	lw $t1, -3308($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label355
label355:
	li $t0, 1
	sw $t0, -3304($fp)
label356:
	addi $sp, $sp, -4
	lw $t0, -3276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3304($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3312($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -3316($fp)
	li $t0, 29560
	sw $t0, -3320($fp)
	li $t0, 0
	lw $t1, -3320($fp)
	sub $t0, $t0, $t1
	sw $t0, -3324($fp)
	lw $t1, -3324($fp)
	li $t2, 0
	bne $t1, $t2, label359
	j label358
label359:
	lw $t0, -3232($fp)
	sw $t0, -3328($fp)
	lw $t1, -3328($fp)
	li $t2, 0
	bne $t1, $t2, label357
	j label358
label357:
	li $t0, 1
	sw $t0, -3316($fp)
label358:
	addi $sp, $sp, -4
	lw $t0, -3256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3316($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3332($fp)
	addi $sp, $sp, 16
	lw $t1, -3332($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label344
label344:
	li $t0, 1
	sw $t0, -3252($fp)
label345:
	li $t0, 51029
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -3340($fp)
	addi $t0, $fp, -64
	sw $t0, -3344($fp)
	lw $t0, -480($fp)
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
	li $t0, 0
	sw $t0, -3364($fp)
	li $t0, 15454
	sw $t0, -3368($fp)
	lw $t1, -3368($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label360
label360:
	li $t0, 1
	sw $t0, -3364($fp)
label361:
	li $t0, 0
	lw $t1, -3364($fp)
	sub $t0, $t0, $t1
	sw $t0, -3372($fp)
	addi $sp, $sp, -4
	lw $t0, -3340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3372($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3376($fp)
	addi $sp, $sp, 16
	lw $t0, -3252($fp)
	lw $t1, -3376($fp)
	mul $t0, $t0, $t1
	sw $t0, -3380($fp)
	lw $t0, -588($fp)
	sw $t0, -3384($fp)
	lw $t0, -3380($fp)
	lw $t1, -3384($fp)
	add $t0, $t0, $t1
	sw $t0, -3388($fp)
	li $t0, 7560
	sw $t0, -3392($fp)
	li $t0, 0
	lw $t1, -3392($fp)
	sub $t0, $t0, $t1
	sw $t0, -3396($fp)
	li $t0, 0
	lw $t1, -3396($fp)
	sub $t0, $t0, $t1
	sw $t0, -3400($fp)
	li $t0, 0
	lw $t1, -3400($fp)
	sub $t0, $t0, $t1
	sw $t0, -3404($fp)
	lw $t0, -3388($fp)
	lw $t1, -3404($fp)
	add $t0, $t0, $t1
	sw $t0, -3408($fp)
	li $t0, 0
	sw $t0, -3412($fp)
	li $t0, 0
	sw $t0, -3416($fp)
	li $t0, 0
	sw $t0, -3420($fp)
	li $t0, 32929
	sw $t0, -3424($fp)
	li $t0, 42602
	sw $t0, -3428($fp)
	lw $t1, -3424($fp)
	lw $t2, -3428($fp)
	beq $t1, $t2, label366
	j label367
label366:
	li $t0, 1
	sw $t0, -3420($fp)
label367:
	li $t0, 0
	sw $t0, -3432($fp)
	lw $t0, -588($fp)
	sw $t0, -3436($fp)
	lw $t1, -3436($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label370
label370:
	lw $t0, -3208($fp)
	sw $t0, -3440($fp)
	lw $t1, -3440($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label369
label368:
	li $t0, 1
	sw $t0, -3432($fp)
label369:
	li $t0, 0
	sw $t0, -3444($fp)
	li $t0, 0
	sw $t0, -3448($fp)
	li $t0, 0
	sw $t0, -3452($fp)
	li $t0, 30197
	sw $t0, -3456($fp)
	li $t0, 8768
	sw $t0, -3460($fp)
	lw $t1, -3456($fp)
	lw $t2, -3460($fp)
	blt $t1, $t2, label375
	j label376
label375:
	li $t0, 1
	sw $t0, -3452($fp)
label376:
	lw $t0, -624($fp)
	sw $t0, -3464($fp)
	lw $t1, -3452($fp)
	lw $t2, -3464($fp)
	blt $t1, $t2, label373
	j label374
label373:
	li $t0, 1
	sw $t0, -3448($fp)
label374:
	addi $sp, $sp, -4
	lw $t0, -3448($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3468($fp)
	addi $sp, $sp, 8
	li $t0, 15917
	sw $t0, -3472($fp)
	lw $t1, -3468($fp)
	lw $t2, -3472($fp)
	bge $t1, $t2, label371
	j label372
label371:
	li $t0, 1
	sw $t0, -3444($fp)
label372:
	addi $sp, $sp, -4
	lw $t0, -3420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3444($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3476($fp)
	addi $sp, $sp, 16
	li $t0, 61306
	sw $t0, -3480($fp)
	lw $t0, -3480($fp)
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -3484($fp)
	addi $sp, $sp, -4
	lw $t0, -3484($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3488($fp)
	addi $sp, $sp, 8
	lw $t0, -3476($fp)
	lw $t1, -3488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3492($fp)
	addi $t0, $fp, -64
	sw $t0, -3496($fp)
	lw $t0, -816($fp)
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
	lw $t0, -624($fp)
	sw $t0, -3516($fp)
	lw $t0, -3512($fp)
	lw $t1, -3516($fp)
	sub $t0, $t0, $t1
	sw $t0, -3520($fp)
	lw $t1, -3492($fp)
	lw $t2, -3520($fp)
	bge $t1, $t2, label364
	j label365
label364:
	li $t0, 1
	sw $t0, -3416($fp)
label365:
	lw $t0, -3220($fp)
	sw $t0, -3524($fp)
	lw $t0, -672($fp)
	sw $t0, -3528($fp)
	lw $t0, -3524($fp)
	lw $t1, -3528($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3532($fp)
	li $t0, 590
	sw $t0, -3536($fp)
	li $t0, 0
	lw $t1, -3536($fp)
	sub $t0, $t0, $t1
	sw $t0, -3540($fp)
	lw $t0, -3532($fp)
	lw $t1, -3540($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3544($fp)
	lw $t1, -3416($fp)
	lw $t2, -3544($fp)
	ble $t1, $t2, label362
	j label363
label362:
	li $t0, 1
	sw $t0, -3412($fp)
label363:
	addi $t0, $fp, -64
	sw $t0, -3548($fp)
	lw $t0, -324($fp)
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
	li $t0, 0
	lw $t1, -3564($fp)
	sub $t0, $t0, $t1
	sw $t0, -3568($fp)
	lw $t1, -3568($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label378
label377:
	li $t0, 26454
	sw $t0, -3572($fp)
	lw $t0, -3572($fp)
	sw $t0, -3576($fp)
	lw $t0, -3576($fp)
	sw $t0, -3580($fp)
	li $t0, 0
	sw $t0, -3584($fp)
	li $t0, 0
	sw $t0, -3588($fp)
	lw $t0, -540($fp)
	sw $t0, -3592($fp)
	lw $t1, -3592($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label384
label384:
	li $t0, 1
	sw $t0, -3588($fp)
label385:
	li $t0, 0
	lw $t1, -3588($fp)
	sub $t0, $t0, $t1
	sw $t0, -3596($fp)
	li $t0, 0
	lw $t1, -3596($fp)
	sub $t0, $t0, $t1
	sw $t0, -3600($fp)
	lw $t1, -3600($fp)
	li $t2, 0
	bne $t1, $t2, label383
	j label382
label383:
	lw $t0, -3576($fp)
	sw $t0, -3604($fp)
	li $t0, 0
	lw $t1, -3604($fp)
	sub $t0, $t0, $t1
	sw $t0, -3608($fp)
	lw $t0, 12($fp)
	sw $t0, -3612($fp)
	lw $t0, -3608($fp)
	lw $t1, -3612($fp)
	add $t0, $t0, $t1
	sw $t0, -3616($fp)
	lw $t1, -3616($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label382
label382:
	li $t0, 0
	sw $t0, -3620($fp)
	li $t0, 63657
	sw $t0, -3624($fp)
	lw $t0, -720($fp)
	sw $t0, -3628($fp)
	lw $t0, -3624($fp)
	lw $t1, -3628($fp)
	add $t0, $t0, $t1
	sw $t0, -3632($fp)
	li $t0, 44083
	sw $t0, -3636($fp)
	lw $t1, -3632($fp)
	lw $t2, -3636($fp)
	blt $t1, $t2, label386
	j label387
label386:
	li $t0, 1
	sw $t0, -3620($fp)
label387:
	addi $t0, $fp, -48
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
	lw $t1, -3620($fp)
	lw $t2, -3656($fp)
	beq $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -3584($fp)
label381:
	addi $t0, $fp, -76
	sw $t0, -3660($fp)
	lw $t0, -480($fp)
	sw $t0, -3664($fp)
	lw $t0, -3664($fp)
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -3668($fp)
	li $t0, 4
	lw $t1, -3668($fp)
	mul $t0, $t0, $t1
	sw $t0, -3672($fp)
	lw $t0, -3672($fp)
	lw $t1, -3660($fp)
	add $t0, $t0, $t1
	sw $t0, -3676($fp)
	lw $t0, -3676($fp)
	lw $t1, 0($t0)
	sw $t1, -3680($fp)
	li $t0, 0
	lw $t1, -3680($fp)
	sub $t0, $t0, $t1
	sw $t0, -3684($fp)
	j label379
label378:
label388:
	addi $t0, $fp, -76
	sw $t0, -3688($fp)
	lw $t0, -660($fp)
	sw $t0, -3692($fp)
	li $t0, 0
	lw $t1, -3692($fp)
	sub $t0, $t0, $t1
	sw $t0, -3696($fp)
	li $t0, 4
	lw $t1, -3696($fp)
	mul $t0, $t0, $t1
	sw $t0, -3700($fp)
	lw $t0, -3700($fp)
	lw $t1, -3688($fp)
	add $t0, $t0, $t1
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	lw $t1, 0($t0)
	sw $t1, -3708($fp)
	li $t0, 0
	sw $t0, -3712($fp)
	lw $t0, -816($fp)
	sw $t0, -3716($fp)
	lw $t1, -3716($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label392
label392:
	li $t0, 1
	sw $t0, -3712($fp)
label393:
	li $t0, 0
	lw $t1, -3712($fp)
	sub $t0, $t0, $t1
	sw $t0, -3720($fp)
	lw $t1, -3708($fp)
	lw $t2, -3720($fp)
	bge $t1, $t2, label389
	j label391
label391:
	li $t0, 0
	sw $t0, -3724($fp)
	lw $t0, -708($fp)
	sw $t0, -3728($fp)
	lw $t0, -516($fp)
	sw $t0, -3732($fp)
	lw $t1, -3728($fp)
	lw $t2, -3732($fp)
	bge $t1, $t2, label395
	j label396
label395:
	li $t0, 1
	sw $t0, -3724($fp)
label396:
	lw $t0, 12($fp)
	sw $t0, -3736($fp)
	lw $t1, -3724($fp)
	lw $t2, -3736($fp)
	beq $t1, $t2, label394
	j label390
label394:
	lw $t0, -696($fp)
	sw $t0, -3740($fp)
	li $t0, 11455
	sw $t0, -3744($fp)
	lw $t1, -3740($fp)
	lw $t2, -3744($fp)
	bgt $t1, $t2, label389
	j label390
label389:
	li $t0, 0
	sw $t0, -3748($fp)
	li $t0, 0
	sw $t0, -3752($fp)
	li $t0, 9143
	sw $t0, -3756($fp)
	lw $t0, -612($fp)
	sw $t0, -3760($fp)
	li $t0, 0
	lw $t1, -3760($fp)
	sub $t0, $t0, $t1
	sw $t0, -3764($fp)
	lw $t0, -3756($fp)
	lw $t1, -3764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3768($fp)
	li $t0, 0
	lw $t1, -3768($fp)
	sub $t0, $t0, $t1
	sw $t0, -3772($fp)
	lw $t1, -3772($fp)
	li $t2, 0
	bne $t1, $t2, label401
	j label400
label400:
	li $t0, 1
	sw $t0, -3752($fp)
label401:
	li $t0, 58655
	sw $t0, -3776($fp)
	lw $t0, -3232($fp)
	sw $t0, -3780($fp)
	lw $t0, -3776($fp)
	lw $t1, -3780($fp)
	mul $t0, $t0, $t1
	sw $t0, -3784($fp)
	lw $t0, -696($fp)
	sw $t0, -3788($fp)
	lw $t0, -3784($fp)
	lw $t1, -3788($fp)
	add $t0, $t0, $t1
	sw $t0, -3792($fp)
	lw $t1, -3752($fp)
	lw $t2, -3792($fp)
	beq $t1, $t2, label399
	j label398
label399:
	lw $t0, -324($fp)
	sw $t0, -3796($fp)
	lw $t1, -3796($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label398
label397:
	li $t0, 1
	sw $t0, -3748($fp)
label398:
	j label388
label390:
label379:
	li $t0, 0
	sw $t0, -3800($fp)
	lw $t0, 8($fp)
	sw $t0, -3804($fp)
	li $t0, 3276
	sw $t0, -3808($fp)
	lw $t0, -3804($fp)
	lw $t1, -3808($fp)
	sub $t0, $t0, $t1
	sw $t0, -3812($fp)
	lw $t0, -3208($fp)
	sw $t0, -3816($fp)
	lw $t0, -3812($fp)
	lw $t1, -3816($fp)
	sub $t0, $t0, $t1
	sw $t0, -3820($fp)
	lw $t1, -3820($fp)
	li $t2, 0
	bne $t1, $t2, label404
	j label403
label404:
	lw $t0, -564($fp)
	sw $t0, -3824($fp)
	li $t0, 10182
	sw $t0, -3828($fp)
	lw $t0, -3824($fp)
	lw $t1, -3828($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3832($fp)
	lw $t1, -3832($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -3800($fp)
label403:
	lw $t0, -3800($fp)
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -3836($fp)
	lw $t0, -360($fp)
	sw $t0, -3840($fp)
	li $t0, 0
	lw $t1, -3840($fp)
	sub $t0, $t0, $t1
	sw $t0, -3844($fp)
	li $t0, 0
	lw $t1, -3844($fp)
	sub $t0, $t0, $t1
	sw $t0, -3848($fp)
	lw $ra, -4($fp)
	lw $v0, -3848($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -3852($fp)
	li $t0, 0
	sw $t0, -3856($fp)
	li $t0, 0
	sw $t0, -3860($fp)
	lw $t0, -528($fp)
	sw $t0, -3864($fp)
	li $t0, 0
	lw $t1, -3864($fp)
	sub $t0, $t0, $t1
	sw $t0, -3868($fp)
	lw $t1, -3868($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label410
label410:
	li $t0, 1
	sw $t0, -3860($fp)
label411:
	lw $t0, -528($fp)
	sw $t0, -3872($fp)
	lw $t0, -3872($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -3876($fp)
	li $t0, 32735
	sw $t0, -3880($fp)
	addi $sp, $sp, -4
	lw $t0, -3860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3880($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3884($fp)
	addi $sp, $sp, 16
	li $t0, 63248
	sw $t0, -3888($fp)
	lw $t0, -552($fp)
	sw $t0, -3892($fp)
	lw $t0, -3888($fp)
	lw $t1, -3892($fp)
	add $t0, $t0, $t1
	sw $t0, -3896($fp)
	lw $t1, -3884($fp)
	lw $t2, -3896($fp)
	blt $t1, $t2, label408
	j label409
label408:
	li $t0, 1
	sw $t0, -3856($fp)
label409:
	li $t0, 0
	sw $t0, -3900($fp)
	li $t0, 58646
	sw $t0, -3904($fp)
	lw $t1, -3904($fp)
	li $t2, 0
	bne $t1, $t2, label413
	j label412
label412:
	li $t0, 1
	sw $t0, -3900($fp)
label413:
	lw $t1, -3856($fp)
	lw $t2, -3900($fp)
	bne $t1, $t2, label405
	j label407
label407:
	lw $t0, 12($fp)
	sw $t0, -3908($fp)
	lw $t0, -492($fp)
	sw $t0, -3912($fp)
	lw $t0, -3908($fp)
	lw $t1, -3912($fp)
	mul $t0, $t0, $t1
	sw $t0, -3916($fp)
	li $t0, 0
	lw $t1, -3916($fp)
	sub $t0, $t0, $t1
	sw $t0, -3920($fp)
	addi $sp, $sp, -4
	lw $t0, -3920($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3924($fp)
	addi $sp, $sp, 8
	lw $t1, -3924($fp)
	li $t2, 0
	bne $t1, $t2, label405
	j label406
label405:
	li $t0, 1
	sw $t0, -3852($fp)
label406:
	li $t0, 0
	sw $t0, -3928($fp)
	addi $t0, $fp, -44
	sw $t0, -3932($fp)
	li $t0, 3
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
	lw $t0, -600($fp)
	sw $t0, -3952($fp)
	lw $t0, -324($fp)
	sw $t0, -3956($fp)
	lw $t0, -3952($fp)
	lw $t1, -3956($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3960($fp)
	li $t0, 0
	sw $t0, -3964($fp)
	lw $t0, 8($fp)
	sw $t0, -3968($fp)
	lw $t1, -3968($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label416
label416:
	li $t0, 1
	sw $t0, -3964($fp)
label417:
	lw $t0, -3960($fp)
	lw $t1, -3964($fp)
	mul $t0, $t0, $t1
	sw $t0, -3972($fp)
	lw $t1, -3948($fp)
	lw $t2, -3972($fp)
	ble $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -3928($fp)
label415:
	li $t0, 0
	sw $t0, -3976($fp)
	li $t0, 0
	sw $t0, -3980($fp)
	li $t0, 0
	sw $t0, -3984($fp)
	lw $t0, 8($fp)
	sw $t0, -3988($fp)
	lw $t1, -3988($fp)
	li $t2, 0
	bne $t1, $t2, label423
	j label422
label422:
	li $t0, 1
	sw $t0, -3984($fp)
label423:
	lw $t0, -540($fp)
	sw $t0, -3992($fp)
	lw $t1, -3984($fp)
	lw $t2, -3992($fp)
	bne $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -3980($fp)
label421:
	addi $sp, $sp, -4
	lw $t0, -3980($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3996($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4000($fp)
	li $t0, 0
	sw $t0, -4004($fp)
	li $t0, 24420
	sw $t0, -4008($fp)
	lw $t1, -4008($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label426
label426:
	li $t0, 1
	sw $t0, -4004($fp)
label427:
	li $t0, 0
	lw $t1, -4004($fp)
	sub $t0, $t0, $t1
	sw $t0, -4012($fp)
	lw $t1, -4012($fp)
	li $t2, 0
	bne $t1, $t2, label425
	j label424
label424:
	li $t0, 1
	sw $t0, -4000($fp)
label425:
	lw $t1, -3996($fp)
	lw $t2, -4000($fp)
	bgt $t1, $t2, label418
	j label419
label418:
	li $t0, 1
	sw $t0, -3976($fp)
label419:
label428:
	li $t0, 0
	sw $t0, -4016($fp)
	addi $t0, $fp, -64
	sw $t0, -4020($fp)
	li $t0, 2
	sw $t0, -4024($fp)
	li $t0, 4
	lw $t1, -4024($fp)
	mul $t0, $t0, $t1
	sw $t0, -4028($fp)
	lw $t0, -4028($fp)
	lw $t1, -4020($fp)
	add $t0, $t0, $t1
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	lw $t1, 0($t0)
	sw $t1, -4036($fp)
	lw $t1, -4036($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label433
label434:
	li $t0, 51829
	sw $t0, -4040($fp)
	lw $t1, -4040($fp)
	li $t2, 0
	bne $t1, $t2, label432
	j label433
label432:
	li $t0, 1
	sw $t0, -4016($fp)
label433:
	li $t0, 0
	sw $t0, -4044($fp)
	lw $t0, -360($fp)
	sw $t0, -4048($fp)
	lw $t0, -324($fp)
	sw $t0, -4052($fp)
	lw $t0, -4048($fp)
	lw $t1, -4052($fp)
	sub $t0, $t0, $t1
	sw $t0, -4056($fp)
	lw $t1, -4056($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label437
label437:
	lw $t0, -324($fp)
	sw $t0, -4060($fp)
	lw $t1, -4060($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label436
label435:
	li $t0, 1
	sw $t0, -4044($fp)
label436:
	lw $t0, -708($fp)
	sw $t0, -4064($fp)
	lw $t0, -4064($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -4068($fp)
	addi $sp, $sp, -4
	lw $t0, -4016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4068($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4072($fp)
	addi $sp, $sp, 16
	li $t0, 31857
	sw $t0, -4076($fp)
	lw $t0, -576($fp)
	sw $t0, -4080($fp)
	lw $t0, -4076($fp)
	lw $t1, -4080($fp)
	mul $t0, $t0, $t1
	sw $t0, -4084($fp)
	lw $t1, -4072($fp)
	lw $t2, -4084($fp)
	blt $t1, $t2, label429
	j label431
label431:
	lw $t0, 12($fp)
	sw $t0, -4088($fp)
	lw $t0, -696($fp)
	sw $t0, -4092($fp)
	li $t0, 0
	lw $t1, -4092($fp)
	sub $t0, $t0, $t1
	sw $t0, -4096($fp)
	lw $t1, -4088($fp)
	lw $t2, -4096($fp)
	bge $t1, $t2, label429
	j label430
label429:
	addi $t0, $fp, -64
	sw $t0, -4100($fp)
	lw $t0, -684($fp)
	sw $t0, -4104($fp)
	li $t0, 4
	lw $t1, -4104($fp)
	mul $t0, $t0, $t1
	sw $t0, -4108($fp)
	lw $t0, -4108($fp)
	lw $t1, -4100($fp)
	add $t0, $t0, $t1
	sw $t0, -4112($fp)
	lw $t0, -4112($fp)
	lw $t1, 0($t0)
	sw $t1, -4116($fp)
	lw $t0, -636($fp)
	sw $t0, -4120($fp)
	lw $t0, -624($fp)
	sw $t0, -4124($fp)
	li $t0, 65084
	sw $t0, -4128($fp)
	lw $t0, -4124($fp)
	lw $t1, -4128($fp)
	mul $t0, $t0, $t1
	sw $t0, -4132($fp)
	li $t0, 0
	lw $t1, -4132($fp)
	sub $t0, $t0, $t1
	sw $t0, -4136($fp)
	addi $sp, $sp, -4
	lw $t0, -4116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4136($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4140($fp)
	addi $sp, $sp, 16
	li $t0, 37323
	sw $t0, -4144($fp)
	lw $t0, -4140($fp)
	lw $t1, -4144($fp)
	mul $t0, $t0, $t1
	sw $t0, -4148($fp)
	addi $sp, $sp, -4
	lw $t0, -4148($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4152($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -4152($fp)
	sub $t0, $t0, $t1
	sw $t0, -4156($fp)
	lw $t0, -504($fp)
	sw $t0, -4160($fp)
	lw $t0, -4156($fp)
	lw $t1, -4160($fp)
	add $t0, $t0, $t1
	sw $t0, -4164($fp)
	j label428
label430:
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
	sw $t0, -4188($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -4208($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -4228($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -4248($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -4268($fp)
	li $t0, 5
	sw $t0, -4272($fp)
	li $t0, 4
	lw $t1, -4272($fp)
	mul $t0, $t0, $t1
	sw $t0, -4276($fp)
	lw $t0, -4276($fp)
	lw $t1, -4268($fp)
	add $t0, $t0, $t1
	sw $t0, -4280($fp)
	lw $t0, -4280($fp)
	lw $t1, 0($t0)
	sw $t1, -4284($fp)
	lw $t0, -4284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4288($fp)
	li $t0, 6
	sw $t0, -4292($fp)
	li $t0, 4
	lw $t1, -4292($fp)
	mul $t0, $t0, $t1
	sw $t0, -4296($fp)
	lw $t0, -4296($fp)
	lw $t1, -4288($fp)
	add $t0, $t0, $t1
	sw $t0, -4300($fp)
	lw $t0, -4300($fp)
	lw $t1, 0($t0)
	sw $t1, -4304($fp)
	lw $t0, -4304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4308($fp)
	li $t0, 7
	sw $t0, -4312($fp)
	li $t0, 4
	lw $t1, -4312($fp)
	mul $t0, $t0, $t1
	sw $t0, -4316($fp)
	lw $t0, -4316($fp)
	lw $t1, -4308($fp)
	add $t0, $t0, $t1
	sw $t0, -4320($fp)
	lw $t0, -4320($fp)
	lw $t1, 0($t0)
	sw $t1, -4324($fp)
	lw $t0, -4324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4328($fp)
	li $t0, 8
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
	lw $t0, -4344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4348($fp)
	li $t0, 9
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
	lw $t0, -4364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -324($fp)
	sw $t0, -4368($fp)
	lw $t0, -4368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -4372($fp)
	li $t0, 0
	sw $t0, -4376($fp)
	li $t0, 4
	lw $t1, -4376($fp)
	mul $t0, $t0, $t1
	sw $t0, -4380($fp)
	lw $t0, -4380($fp)
	lw $t1, -4372($fp)
	add $t0, $t0, $t1
	sw $t0, -4384($fp)
	lw $t0, -4384($fp)
	lw $t1, 0($t0)
	sw $t1, -4388($fp)
	lw $t0, -4388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -4392($fp)
	lw $t0, -4392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4396($fp)
	li $t0, 0
	sw $t0, -4400($fp)
	li $t0, 4
	lw $t1, -4400($fp)
	mul $t0, $t0, $t1
	sw $t0, -4404($fp)
	lw $t0, -4404($fp)
	lw $t1, -4396($fp)
	add $t0, $t0, $t1
	sw $t0, -4408($fp)
	lw $t0, -4408($fp)
	lw $t1, 0($t0)
	sw $t1, -4412($fp)
	lw $t0, -4412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4416($fp)
	li $t0, 1
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
	lw $t0, -4432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4436($fp)
	li $t0, 2
	sw $t0, -4440($fp)
	li $t0, 4
	lw $t1, -4440($fp)
	mul $t0, $t0, $t1
	sw $t0, -4444($fp)
	lw $t0, -4444($fp)
	lw $t1, -4436($fp)
	add $t0, $t0, $t1
	sw $t0, -4448($fp)
	lw $t0, -4448($fp)
	lw $t1, 0($t0)
	sw $t1, -4452($fp)
	lw $t0, -4452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4456($fp)
	li $t0, 3
	sw $t0, -4460($fp)
	li $t0, 4
	lw $t1, -4460($fp)
	mul $t0, $t0, $t1
	sw $t0, -4464($fp)
	lw $t0, -4464($fp)
	lw $t1, -4456($fp)
	add $t0, $t0, $t1
	sw $t0, -4468($fp)
	lw $t0, -4468($fp)
	lw $t1, 0($t0)
	sw $t1, -4472($fp)
	lw $t0, -4472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -4476($fp)
	lw $t0, -4476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -4480($fp)
	lw $t0, -4480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -4484($fp)
	lw $t0, -4484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -4488($fp)
	lw $t0, -4488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -4492($fp)
	lw $t0, -4492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -4496($fp)
	lw $t0, -4496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -4508($fp)
	lw $t0, -4508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -4512($fp)
	lw $t0, -4512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -4516($fp)
	lw $t0, -4516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -600($fp)
	sw $t0, -4520($fp)
	lw $t0, -4520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -4524($fp)
	lw $t0, -4524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -4528($fp)
	lw $t0, -4528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -4532($fp)
	lw $t0, -4532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -4536($fp)
	lw $t0, -4536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -4540($fp)
	lw $t0, -4540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -4544($fp)
	lw $t0, -4544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -684($fp)
	sw $t0, -4548($fp)
	lw $t0, -4548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -696($fp)
	sw $t0, -4552($fp)
	lw $t0, -4552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -4556($fp)
	lw $t0, -4556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -720($fp)
	sw $t0, -4560($fp)
	lw $t0, -4560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -4564($fp)
	li $t0, 0
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
	lw $t0, -4580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -4584($fp)
	li $t0, 1
	sw $t0, -4588($fp)
	li $t0, 4
	lw $t1, -4588($fp)
	mul $t0, $t0, $t1
	sw $t0, -4592($fp)
	lw $t0, -4592($fp)
	lw $t1, -4584($fp)
	add $t0, $t0, $t1
	sw $t0, -4596($fp)
	lw $t0, -4596($fp)
	lw $t1, 0($t0)
	sw $t1, -4600($fp)
	lw $t0, -4600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -4604($fp)
	li $t0, 2
	sw $t0, -4608($fp)
	li $t0, 4
	lw $t1, -4608($fp)
	mul $t0, $t0, $t1
	sw $t0, -4612($fp)
	lw $t0, -4612($fp)
	lw $t1, -4604($fp)
	add $t0, $t0, $t1
	sw $t0, -4616($fp)
	lw $t0, -4616($fp)
	lw $t1, 0($t0)
	sw $t1, -4620($fp)
	lw $t0, -4620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -804($fp)
	sw $t0, -4624($fp)
	lw $t0, -4624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -816($fp)
	sw $t0, -4628($fp)
	lw $t0, -4628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4632($fp)
	addi $t0, $fp, -64
	sw $t0, -4636($fp)
	li $t0, 1
	sw $t0, -4640($fp)
	li $t0, 4
	lw $t1, -4640($fp)
	mul $t0, $t0, $t1
	sw $t0, -4644($fp)
	lw $t0, -4644($fp)
	lw $t1, -4636($fp)
	add $t0, $t0, $t1
	sw $t0, -4648($fp)
	lw $t0, -4648($fp)
	lw $t1, 0($t0)
	sw $t1, -4652($fp)
	lw $t1, -4652($fp)
	li $t2, 0
	bne $t1, $t2, label440
	j label441
label441:
	addi $t0, $fp, -76
	sw $t0, -4656($fp)
	lw $t0, 12($fp)
	sw $t0, -4660($fp)
	li $t0, 4
	lw $t1, -4660($fp)
	mul $t0, $t0, $t1
	sw $t0, -4664($fp)
	lw $t0, -4664($fp)
	lw $t1, -4656($fp)
	add $t0, $t0, $t1
	sw $t0, -4668($fp)
	lw $t0, -4668($fp)
	lw $t1, 0($t0)
	sw $t1, -4672($fp)
	lw $t1, -4672($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label440
label440:
	lw $t0, 12($fp)
	sw $t0, -4676($fp)
	lw $t1, -4676($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label439
label438:
	li $t0, 1
	sw $t0, -4632($fp)
label439:
	lw $ra, -4($fp)
	lw $v0, -4632($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1980
	li $t0, 46091
	sw $t0, -80($fp)
	addi $t0, $fp, -40
	sw $t0, -84($fp)
	li $t0, 0
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
	li $t0, 55334
	sw $t0, -104($fp)
	addi $t0, $fp, -40
	sw $t0, -108($fp)
	li $t0, 1
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
	li $t0, 62674
	sw $t0, -128($fp)
	addi $t0, $fp, -40
	sw $t0, -132($fp)
	li $t0, 2
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
	li $t0, 23157
	sw $t0, -152($fp)
	addi $t0, $fp, -40
	sw $t0, -156($fp)
	li $t0, 3
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
	li $t0, 51104
	sw $t0, -176($fp)
	addi $t0, $fp, -40
	sw $t0, -180($fp)
	li $t0, 4
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
	li $t0, 63264
	sw $t0, -200($fp)
	addi $t0, $fp, -40
	sw $t0, -204($fp)
	li $t0, 5
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
	li $t0, 49612
	sw $t0, -224($fp)
	addi $t0, $fp, -40
	sw $t0, -228($fp)
	li $t0, 6
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
	li $t0, 49226
	sw $t0, -248($fp)
	addi $t0, $fp, -40
	sw $t0, -252($fp)
	li $t0, 7
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
	li $t0, 41811
	sw $t0, -272($fp)
	addi $t0, $fp, -40
	sw $t0, -276($fp)
	li $t0, 8
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
	li $t0, 62522
	sw $t0, -296($fp)
	addi $t0, $fp, -56
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
	li $t0, 3490
	sw $t0, -320($fp)
	addi $t0, $fp, -56
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
	li $t0, 53266
	sw $t0, -344($fp)
	addi $t0, $fp, -56
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
	li $t0, 6129
	sw $t0, -368($fp)
	addi $t0, $fp, -56
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
	li $t0, 62145
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	li $t0, 56542
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	li $t0, 16311
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	li $t0, 29344
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	li $t0, 54254
	sw $t0, -440($fp)
	addi $t0, $fp, -76
	sw $t0, -444($fp)
	li $t0, 0
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
	li $t0, 9422
	sw $t0, -464($fp)
	addi $t0, $fp, -76
	sw $t0, -468($fp)
	li $t0, 1
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
	li $t0, 64979
	sw $t0, -488($fp)
	addi $t0, $fp, -76
	sw $t0, -492($fp)
	li $t0, 2
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -500($fp)
	lw $t0, -492($fp)
	lw $t1, -500($fp)
	add $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $t0, -488($fp)
	lw $t1, -504($fp)
	sw $t0, 0($t1)
	lw $t0, -504($fp)
	lw $t1, 0($t0)
	sw $t1, -508($fp)
	li $t0, 16319
	sw $t0, -512($fp)
	addi $t0, $fp, -76
	sw $t0, -516($fp)
	li $t0, 3
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
	li $t0, 9751
	sw $t0, -536($fp)
	addi $t0, $fp, -76
	sw $t0, -540($fp)
	li $t0, 4
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
	li $t0, 23863
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	li $t0, 7943
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	li $t0, 59381
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	li $t0, 10157
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	li $t0, 39800
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	li $t0, 58929
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	li $t0, 47480
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	li $t0, 13681
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	li $t0, 23138
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	li $t0, 28035
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	li $t0, 3480
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	li $t0, 20276
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	addi $t0, $fp, -76
	sw $t0, -704($fp)
	li $t0, 0
	sw $t0, -708($fp)
	li $t0, 51193
	sw $t0, -712($fp)
	lw $t1, -712($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label447
label448:
	lw $t0, -612($fp)
	sw $t0, -716($fp)
	lw $t1, -716($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label447
label446:
	li $t0, 1
	sw $t0, -708($fp)
label447:
	li $t0, 4
	lw $t1, -708($fp)
	mul $t0, $t0, $t1
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	lw $t1, -704($fp)
	add $t0, $t0, $t1
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	lw $t1, 0($t0)
	sw $t1, -728($fp)
	lw $t1, -728($fp)
	li $t2, 0
	bne $t1, $t2, label443
	j label445
label445:
	li $t0, 18005
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -736($fp)
	li $t0, 0
	sw $t0, -740($fp)
	li $t0, 54584
	sw $t0, -744($fp)
	li $t0, 0
	lw $t1, -744($fp)
	sub $t0, $t0, $t1
	sw $t0, -748($fp)
	lw $t1, -748($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label451
label451:
	lw $t0, -624($fp)
	sw $t0, -752($fp)
	lw $t1, -752($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label450
label449:
	li $t0, 1
	sw $t0, -740($fp)
label450:
	addi $sp, $sp, -4
	lw $t0, -736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -740($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -756($fp)
	addi $sp, $sp, 12
	lw $t0, -612($fp)
	sw $t0, -760($fp)
	lw $t0, -756($fp)
	lw $t1, -760($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -764($fp)
	lw $t1, -764($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label443
label442:
	li $t0, 0
	sw $t0, -768($fp)
	li $t0, 35269
	sw $t0, -772($fp)
	lw $t1, -772($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label456
label456:
	li $t0, 1
	sw $t0, -768($fp)
label457:
	li $t0, 0
	lw $t1, -768($fp)
	sub $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t0, -420($fp)
	sw $t0, -780($fp)
	lw $t1, -776($fp)
	lw $t2, -780($fp)
	bge $t1, $t2, label455
	j label453
label455:
	addi $t0, $fp, -76
	sw $t0, -784($fp)
	li $t0, 4
	sw $t0, -788($fp)
	li $t0, 4
	lw $t1, -788($fp)
	mul $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	lw $t1, -784($fp)
	add $t0, $t0, $t1
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	lw $t1, 0($t0)
	sw $t1, -800($fp)
	li $t0, 32255
	sw $t0, -804($fp)
	lw $t0, -800($fp)
	lw $t1, -804($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -808($fp)
	li $t0, 41764
	sw $t0, -812($fp)
	li $t0, 47547
	sw $t0, -816($fp)
	lw $t0, -812($fp)
	lw $t1, -816($fp)
	mul $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t0, -808($fp)
	lw $t1, -820($fp)
	add $t0, $t0, $t1
	sw $t0, -824($fp)
	lw $t1, -824($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label453
label452:
	li $t0, 0
	sw $t0, -828($fp)
	li $t0, 0
	sw $t0, -832($fp)
	li $t0, 0
	sw $t0, -836($fp)
	lw $t0, -420($fp)
	sw $t0, -840($fp)
	lw $t0, 4($fp)
	sw $t0, -844($fp)
	lw $t0, -840($fp)
	lw $t1, -844($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -848($fp)
	li $t0, 38385
	sw $t0, -852($fp)
	lw $t1, -848($fp)
	lw $t2, -852($fp)
	bge $t1, $t2, label465
	j label466
label465:
	li $t0, 1
	sw $t0, -836($fp)
label466:
	li $t0, 0
	sw $t0, -856($fp)
	lw $t0, -660($fp)
	sw $t0, -860($fp)
	lw $t0, 8($fp)
	sw $t0, -864($fp)
	lw $t0, -860($fp)
	lw $t1, -864($fp)
	mul $t0, $t0, $t1
	sw $t0, -868($fp)
	li $t0, 38374
	sw $t0, -872($fp)
	lw $t1, -868($fp)
	lw $t2, -872($fp)
	ble $t1, $t2, label467
	j label468
label467:
	li $t0, 1
	sw $t0, -856($fp)
label468:
	addi $sp, $sp, -4
	lw $t0, -856($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -876($fp)
	addi $sp, $sp, 8
	lw $t1, -836($fp)
	lw $t2, -876($fp)
	bge $t1, $t2, label463
	j label464
label463:
	li $t0, 1
	sw $t0, -832($fp)
label464:
	addi $t0, $fp, -56
	sw $t0, -880($fp)
	lw $t0, -672($fp)
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
	lw $t0, -660($fp)
	sw $t0, -900($fp)
	lw $t0, -896($fp)
	lw $t1, -900($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -904($fp)
	lw $t1, -832($fp)
	lw $t2, -904($fp)
	bge $t1, $t2, label461
	j label462
label461:
	li $t0, 1
	sw $t0, -828($fp)
label462:
	lw $t0, -624($fp)
	sw $t0, -908($fp)
	li $t0, 54697
	sw $t0, -912($fp)
	lw $t0, -908($fp)
	lw $t1, -912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -916($fp)
	lw $t1, -828($fp)
	lw $t2, -916($fp)
	beq $t1, $t2, label458
	j label459
label458:
	li $t0, 0
	sw $t0, -920($fp)
	li $t0, 2182
	sw $t0, -924($fp)
	lw $t0, -660($fp)
	sw $t0, -928($fp)
	lw $t0, -924($fp)
	lw $t1, -928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -932($fp)
	li $t0, 0
	sw $t0, -936($fp)
	li $t0, 8334
	sw $t0, -940($fp)
	lw $t1, -940($fp)
	li $t2, 0
	bne $t1, $t2, label472
	j label475
label475:
	lw $t0, -636($fp)
	sw $t0, -944($fp)
	lw $t1, -944($fp)
	li $t2, 0
	bne $t1, $t2, label472
	j label474
label474:
	li $t0, 25489
	sw $t0, -948($fp)
	lw $t1, -948($fp)
	li $t2, 0
	bne $t1, $t2, label472
	j label473
label472:
	li $t0, 1
	sw $t0, -936($fp)
label473:
	li $t0, 0
	sw $t0, -952($fp)
	li $t0, 0
	sw $t0, -956($fp)
	li $t0, 1625
	sw $t0, -960($fp)
	lw $t0, -624($fp)
	sw $t0, -964($fp)
	lw $t1, -960($fp)
	lw $t2, -964($fp)
	ble $t1, $t2, label478
	j label479
label478:
	li $t0, 1
	sw $t0, -956($fp)
label479:
	li $t0, 43591
	sw $t0, -968($fp)
	lw $t1, -956($fp)
	lw $t2, -968($fp)
	beq $t1, $t2, label476
	j label477
label476:
	li $t0, 1
	sw $t0, -952($fp)
label477:
	lw $t0, -420($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -976($fp)
	addi $sp, $sp, -4
	lw $t0, -936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -976($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -980($fp)
	addi $sp, $sp, 16
	li $t0, 27272
	sw $t0, -984($fp)
	lw $t0, -600($fp)
	sw $t0, -988($fp)
	lw $t0, -984($fp)
	lw $t1, -988($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -992($fp)
	li $t0, 64118
	sw $t0, -996($fp)
	lw $t0, -992($fp)
	lw $t1, -996($fp)
	mul $t0, $t0, $t1
	sw $t0, -1000($fp)
	addi $sp, $sp, -4
	lw $t0, -980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1000($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1004($fp)
	addi $sp, $sp, 12
	lw $t0, -932($fp)
	lw $t1, -1004($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1008($fp)
	lw $t0, -624($fp)
	sw $t0, -1012($fp)
	lw $t0, -1012($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -1016($fp)
	li $t0, 0
	sw $t0, -1020($fp)
	li $t0, 2179
	sw $t0, -1024($fp)
	lw $t1, -1024($fp)
	li $t2, 0
	bne $t1, $t2, label483
	j label481
label483:
	li $t0, 35646
	sw $t0, -1028($fp)
	lw $t1, -1028($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label481
label482:
	li $t0, 25799
	sw $t0, -1032($fp)
	lw $t1, -1032($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label481
label480:
	li $t0, 1
	sw $t0, -1020($fp)
label481:
	li $t0, 51534
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -1040($fp)
	addi $sp, $sp, -4
	lw $t0, -1016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1040($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1044($fp)
	addi $sp, $sp, 16
	lw $t0, -1008($fp)
	lw $t1, -1044($fp)
	mul $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t1, -1048($fp)
	li $t2, 0
	bne $t1, $t2, label471
	j label470
label471:
	li $t0, 0
	sw $t0, -1052($fp)
	li $t0, 61109
	sw $t0, -1056($fp)
	li $t0, 0
	lw $t1, -1056($fp)
	sub $t0, $t0, $t1
	sw $t0, -1060($fp)
	lw $t0, -576($fp)
	sw $t0, -1064($fp)
	lw $t1, -1060($fp)
	lw $t2, -1064($fp)
	beq $t1, $t2, label484
	j label485
label484:
	li $t0, 1
	sw $t0, -1052($fp)
label485:
	lw $t0, -648($fp)
	sw $t0, -1068($fp)
	lw $t1, -1052($fp)
	lw $t2, -1068($fp)
	beq $t1, $t2, label469
	j label470
label469:
	li $t0, 1
	sw $t0, -920($fp)
label470:
	lw $ra, -4($fp)
	lw $v0, -920($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label460
label459:
	lw $t0, -612($fp)
	sw $t0, -1072($fp)
	lw $t0, 8($fp)
	sw $t0, -1076($fp)
	lw $t0, -1072($fp)
	lw $t1, -1076($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1080($fp)
	lw $t0, -684($fp)
	sw $t0, -1084($fp)
	lw $t0, -1080($fp)
	lw $t1, -1084($fp)
	sub $t0, $t0, $t1
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -1092($fp)
	lw $t1, -1092($fp)
	li $t2, 0
	bne $t1, $t2, label486
	j label487
label486:
	lw $t0, -612($fp)
	sw $t0, -1096($fp)
	lw $t0, -396($fp)
	sw $t0, -1100($fp)
	lw $t0, -1096($fp)
	lw $t1, -1100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1104($fp)
	j label488
label487:
	lw $t0, -576($fp)
	sw $t0, -1108($fp)
	li $t0, 0
	sw $t0, -1112($fp)
	li $t0, 17590
	sw $t0, -1116($fp)
	lw $t0, -624($fp)
	sw $t0, -1120($fp)
	lw $t0, -1116($fp)
	lw $t1, -1120($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1124($fp)
	lw $t0, -660($fp)
	sw $t0, -1128($fp)
	lw $t1, -1124($fp)
	lw $t2, -1128($fp)
	beq $t1, $t2, label489
	j label490
label489:
	li $t0, 1
	sw $t0, -1112($fp)
label490:
	addi $sp, $sp, -4
	lw $t0, -1108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1112($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1132($fp)
	addi $sp, $sp, 12
	lw $t0, -576($fp)
	sw $t0, -1136($fp)
	addi $sp, $sp, -4
	lw $t0, -1132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1136($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1140($fp)
	addi $sp, $sp, 12
	lw $t0, -636($fp)
	sw $t0, -1144($fp)
	lw $t0, -1140($fp)
	lw $t1, -1144($fp)
	mul $t0, $t0, $t1
	sw $t0, -1148($fp)
	li $t0, 0
	lw $t1, -1148($fp)
	sub $t0, $t0, $t1
	sw $t0, -1152($fp)
label488:
label460:
	j label454
label453:
	li $t0, 0
	sw $t0, -1156($fp)
	lw $t0, -624($fp)
	sw $t0, -1160($fp)
	lw $t0, -564($fp)
	sw $t0, -1164($fp)
	lw $t0, -1160($fp)
	lw $t1, -1164($fp)
	mul $t0, $t0, $t1
	sw $t0, -1168($fp)
	lw $t0, -600($fp)
	sw $t0, -1172($fp)
	lw $t0, -1168($fp)
	lw $t1, -1172($fp)
	add $t0, $t0, $t1
	sw $t0, -1176($fp)
	lw $t0, -660($fp)
	sw $t0, -1180($fp)
	lw $t0, 8($fp)
	sw $t0, -1184($fp)
	lw $t0, -1180($fp)
	lw $t1, -1184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1188($fp)
	lw $t1, -1176($fp)
	lw $t2, -1188($fp)
	blt $t1, $t2, label495
	j label496
label495:
	li $t0, 1
	sw $t0, -1156($fp)
label496:
	li $t0, 45625
	sw $t0, -1192($fp)
	lw $t0, -660($fp)
	sw $t0, -1196($fp)
	lw $t0, -1192($fp)
	lw $t1, -1196($fp)
	mul $t0, $t0, $t1
	sw $t0, -1200($fp)
	li $t0, 0
	lw $t1, -1200($fp)
	sub $t0, $t0, $t1
	sw $t0, -1204($fp)
	li $t0, 39480
	sw $t0, -1208($fp)
	lw $t0, -624($fp)
	sw $t0, -1212($fp)
	lw $t0, -1208($fp)
	lw $t1, -1212($fp)
	mul $t0, $t0, $t1
	sw $t0, -1216($fp)
	li $t0, 18711
	sw $t0, -1220($fp)
	lw $t0, -1216($fp)
	lw $t1, -1220($fp)
	add $t0, $t0, $t1
	sw $t0, -1224($fp)
	addi $sp, $sp, -4
	lw $t0, -1204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1224($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1228($fp)
	addi $sp, $sp, 12
	li $t0, 42960
	sw $t0, -1232($fp)
	lw $t0, -1228($fp)
	lw $t1, -1232($fp)
	add $t0, $t0, $t1
	sw $t0, -1236($fp)
	lw $t1, -1156($fp)
	lw $t2, -1236($fp)
	blt $t1, $t2, label494
	j label492
label494:
	li $t0, 38988
	sw $t0, -1240($fp)
	li $t0, 0
	sw $t0, -1244($fp)
	li $t0, 31282
	sw $t0, -1248($fp)
	lw $t1, -1248($fp)
	li $t2, 0
	bne $t1, $t2, label498
	j label497
label497:
	li $t0, 1
	sw $t0, -1244($fp)
label498:
	lw $t0, -1240($fp)
	lw $t1, -1244($fp)
	sub $t0, $t0, $t1
	sw $t0, -1252($fp)
	lw $t1, -1252($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label492
label491:
	lw $t0, -648($fp)
	sw $t0, -1256($fp)
	li $t0, 0
	lw $t1, -1256($fp)
	sub $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t1, -1260($fp)
	li $t2, 0
	bne $t1, $t2, label499
	j label500
label499:
	li $t0, 0
	sw $t0, -1264($fp)
	li $t0, 0
	sw $t0, -1268($fp)
	lw $t0, -576($fp)
	sw $t0, -1272($fp)
	li $t0, 32009
	sw $t0, -1276($fp)
	lw $t0, 4($fp)
	sw $t0, -1280($fp)
	lw $t0, -1276($fp)
	lw $t1, -1280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1284($fp)
	li $t0, 56993
	sw $t0, -1288($fp)
	lw $t0, -1284($fp)
	lw $t1, -1288($fp)
	sub $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t1, -1272($fp)
	lw $t2, -1292($fp)
	blt $t1, $t2, label504
	j label505
label504:
	li $t0, 1
	sw $t0, -1268($fp)
label505:
	li $t0, 0
	sw $t0, -1296($fp)
	li $t0, 4747
	sw $t0, -1300($fp)
	li $t0, 51273
	sw $t0, -1304($fp)
	lw $t0, -1300($fp)
	lw $t1, -1304($fp)
	sub $t0, $t0, $t1
	sw $t0, -1308($fp)
	li $t0, 33271
	sw $t0, -1312($fp)
	lw $t1, -1308($fp)
	lw $t2, -1312($fp)
	bge $t1, $t2, label506
	j label507
label506:
	li $t0, 1
	sw $t0, -1296($fp)
label507:
	li $t0, 1015
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -1320($fp)
	addi $sp, $sp, -4
	lw $t0, -1296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1320($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1324($fp)
	addi $sp, $sp, 12
	lw $t1, -1268($fp)
	lw $t2, -1324($fp)
	blt $t1, $t2, label502
	j label503
label502:
	li $t0, 1
	sw $t0, -1264($fp)
label503:
	j label501
label500:
	li $t0, 0
	sw $t0, -1328($fp)
	li $t0, 0
	sw $t0, -1332($fp)
	lw $t0, -648($fp)
	sw $t0, -1336($fp)
	li $t0, 46512
	sw $t0, -1340($fp)
	lw $t0, -1336($fp)
	lw $t1, -1340($fp)
	add $t0, $t0, $t1
	sw $t0, -1344($fp)
	li $t0, 33284
	sw $t0, -1348($fp)
	li $t0, 6120
	sw $t0, -1352($fp)
	lw $t0, -1348($fp)
	lw $t1, -1352($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1356($fp)
	lw $t1, -1344($fp)
	lw $t2, -1356($fp)
	bne $t1, $t2, label511
	j label512
label511:
	li $t0, 1
	sw $t0, -1332($fp)
label512:
	li $t0, 0
	sw $t0, -1360($fp)
	lw $t0, -672($fp)
	sw $t0, -1364($fp)
	lw $t1, -1364($fp)
	li $t2, 0
	bne $t1, $t2, label515
	j label514
label515:
	li $t0, 60816
	sw $t0, -1368($fp)
	lw $t1, -1368($fp)
	li $t2, 0
	bne $t1, $t2, label513
	j label514
label513:
	li $t0, 1
	sw $t0, -1360($fp)
label514:
	li $t0, 6302
	sw $t0, -1372($fp)
	li $t0, 0
	lw $t1, -1372($fp)
	sub $t0, $t0, $t1
	sw $t0, -1376($fp)
	li $t0, 0
	sw $t0, -1380($fp)
	lw $t0, -432($fp)
	sw $t0, -1384($fp)
	li $t0, 19350
	sw $t0, -1388($fp)
	lw $t0, -1384($fp)
	lw $t1, -1388($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1392($fp)
	lw $t1, -1392($fp)
	li $t2, 0
	bne $t1, $t2, label518
	j label517
label518:
	lw $t0, -696($fp)
	sw $t0, -1396($fp)
	lw $t1, -1396($fp)
	li $t2, 0
	bne $t1, $t2, label516
	j label517
label516:
	li $t0, 1
	sw $t0, -1380($fp)
label517:
	addi $sp, $sp, -4
	lw $t0, -1360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1380($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1400($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -1400($fp)
	sub $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t1, -1332($fp)
	lw $t2, -1404($fp)
	beq $t1, $t2, label508
	j label510
label510:
	lw $t0, -684($fp)
	sw $t0, -1408($fp)
	lw $t1, -1408($fp)
	li $t2, 0
	bne $t1, $t2, label508
	j label509
label508:
	li $t0, 1
	sw $t0, -1328($fp)
label509:
label501:
	j label493
label492:
	li $t0, 21532
	sw $t0, -1412($fp)
label493:
label454:
	j label444
label443:
	li $t0, 0
	sw $t0, -1416($fp)
	li $t0, 0
	sw $t0, -1420($fp)
	lw $t0, -672($fp)
	sw $t0, -1424($fp)
	li $t0, 33574
	sw $t0, -1428($fp)
	lw $t0, -1424($fp)
	lw $t1, -1428($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1432($fp)
	li $t0, 59399
	sw $t0, -1436($fp)
	lw $t0, -1432($fp)
	lw $t1, -1436($fp)
	mul $t0, $t0, $t1
	sw $t0, -1440($fp)
	lw $t0, -684($fp)
	sw $t0, -1444($fp)
	lw $t1, -1440($fp)
	lw $t2, -1444($fp)
	bge $t1, $t2, label522
	j label523
label522:
	li $t0, 1
	sw $t0, -1420($fp)
label523:
	li $t0, 0
	sw $t0, -1448($fp)
	li $t0, 23158
	sw $t0, -1452($fp)
	addi $sp, $sp, -4
	lw $t0, -1452($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1456($fp)
	addi $sp, $sp, 8
	lw $t1, -1456($fp)
	li $t2, 0
	bne $t1, $t2, label525
	j label524
label524:
	li $t0, 1
	sw $t0, -1448($fp)
label525:
	lw $t1, -1420($fp)
	lw $t2, -1448($fp)
	bne $t1, $t2, label521
	j label520
label521:
	addi $t0, $fp, -76
	sw $t0, -1460($fp)
	lw $t0, -588($fp)
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
	lw $t0, -600($fp)
	sw $t0, -1480($fp)
	li $t0, 0
	lw $t1, -1480($fp)
	sub $t0, $t0, $t1
	sw $t0, -1484($fp)
	lw $t1, -1476($fp)
	lw $t2, -1484($fp)
	beq $t1, $t2, label519
	j label520
label519:
	li $t0, 1
	sw $t0, -1416($fp)
label520:
	lw $ra, -4($fp)
	lw $v0, -1416($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label444:
	addi $t0, $fp, -40
	sw $t0, -1488($fp)
	li $t0, 0
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
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -1528($fp)
	li $t0, 2
	sw $t0, -1532($fp)
	li $t0, 4
	lw $t1, -1532($fp)
	mul $t0, $t0, $t1
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	lw $t1, -1528($fp)
	add $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	lw $t1, 0($t0)
	sw $t1, -1544($fp)
	lw $t0, -1544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1548($fp)
	li $t0, 3
	sw $t0, -1552($fp)
	li $t0, 4
	lw $t1, -1552($fp)
	mul $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	lw $t1, -1548($fp)
	add $t0, $t0, $t1
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	lw $t1, 0($t0)
	sw $t1, -1564($fp)
	lw $t0, -1564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1568($fp)
	li $t0, 4
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
	lw $t0, -1584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1588($fp)
	li $t0, 5
	sw $t0, -1592($fp)
	li $t0, 4
	lw $t1, -1592($fp)
	mul $t0, $t0, $t1
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	lw $t1, -1588($fp)
	add $t0, $t0, $t1
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	lw $t1, 0($t0)
	sw $t1, -1604($fp)
	lw $t0, -1604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
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
	lw $t0, -1624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1628($fp)
	li $t0, 7
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
	lw $t0, -1644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1648($fp)
	li $t0, 8
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
	lw $t0, -1664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1668($fp)
	li $t0, 0
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
	lw $t0, -1684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1688($fp)
	li $t0, 1
	sw $t0, -1692($fp)
	li $t0, 4
	lw $t1, -1692($fp)
	mul $t0, $t0, $t1
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	lw $t1, -1688($fp)
	add $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	lw $t1, 0($t0)
	sw $t1, -1704($fp)
	lw $t0, -1704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1708($fp)
	li $t0, 2
	sw $t0, -1712($fp)
	li $t0, 4
	lw $t1, -1712($fp)
	mul $t0, $t0, $t1
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	lw $t1, -1708($fp)
	add $t0, $t0, $t1
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	lw $t1, 0($t0)
	sw $t1, -1724($fp)
	lw $t0, -1724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -1728($fp)
	li $t0, 3
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
	lw $t0, -396($fp)
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -408($fp)
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -1764($fp)
	li $t0, 0
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
	addi $t0, $fp, -76
	sw $t0, -1784($fp)
	li $t0, 1
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
	addi $t0, $fp, -76
	sw $t0, -1804($fp)
	li $t0, 2
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
	addi $t0, $fp, -76
	sw $t0, -1824($fp)
	li $t0, 3
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
	addi $t0, $fp, -76
	sw $t0, -1844($fp)
	li $t0, 4
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
	lw $t0, -564($fp)
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -600($fp)
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -1892($fp)
	lw $t0, -1892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -684($fp)
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -696($fp)
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1912($fp)
	addi $t0, $fp, -40
	sw $t0, -1916($fp)
	li $t0, 7
	sw $t0, -1920($fp)
	li $t0, 4
	lw $t1, -1920($fp)
	mul $t0, $t0, $t1
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	lw $t1, -1916($fp)
	add $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	lw $t1, 0($t0)
	sw $t1, -1932($fp)
	li $t0, 63163
	sw $t0, -1936($fp)
	lw $t0, -1932($fp)
	lw $t1, -1936($fp)
	mul $t0, $t0, $t1
	sw $t0, -1940($fp)
	li $t0, 0
	sw $t0, -1944($fp)
	addi $t0, $fp, -76
	sw $t0, -1948($fp)
	lw $t0, -660($fp)
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
	lw $t1, -1964($fp)
	li $t2, 0
	bne $t1, $t2, label530
	j label529
label530:
	li $t0, 11629
	sw $t0, -1968($fp)
	lw $t1, -1968($fp)
	li $t2, 0
	bne $t1, $t2, label528
	j label529
label528:
	li $t0, 1
	sw $t0, -1944($fp)
label529:
	addi $sp, $sp, -4
	lw $t0, -1940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1944($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1972($fp)
	addi $sp, $sp, 12
	li $t0, 4376
	sw $t0, -1976($fp)
	lw $t0, -612($fp)
	sw $t0, -1980($fp)
	lw $t0, -1976($fp)
	lw $t1, -1980($fp)
	add $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t1, -1972($fp)
	lw $t2, -1984($fp)
	bne $t1, $t2, label526
	j label527
label526:
	li $t0, 1
	sw $t0, -1912($fp)
label527:
	lw $ra, -4($fp)
	lw $v0, -1912($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -472
	li $t0, 18757
	sw $t0, -16($fp)
	addi $t0, $fp, -12
	sw $t0, -20($fp)
	li $t0, 0
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t0, -20($fp)
	lw $t1, -28($fp)
	add $t0, $t0, $t1
	sw $t0, -32($fp)
	lw $t0, -16($fp)
	lw $t1, -32($fp)
	sw $t0, 0($t1)
	lw $t0, -32($fp)
	lw $t1, 0($t0)
	sw $t1, -36($fp)
	li $t0, 23426
	sw $t0, -40($fp)
	addi $t0, $fp, -12
	sw $t0, -44($fp)
	li $t0, 1
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
	li $t0, 65485
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	li $t0, 36347
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	li $t0, 62907
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	addi $t0, $fp, -12
	sw $t0, -100($fp)
	li $t0, 0
	sw $t0, -104($fp)
	li $t0, 4
	lw $t1, -104($fp)
	mul $t0, $t0, $t1
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	lw $t1, -100($fp)
	add $t0, $t0, $t1
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	lw $t1, 0($t0)
	sw $t1, -116($fp)
	lw $t0, -116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -120($fp)
	li $t0, 1
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
	lw $t0, -68($fp)
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -152($fp)
	li $t0, 0
	sw $t0, -156($fp)
	li $t0, 0
	sw $t0, -160($fp)
	lw $t0, 4($fp)
	sw $t0, -164($fp)
	lw $t1, -164($fp)
	li $t2, 0
	bne $t1, $t2, label535
	j label534
label534:
	li $t0, 1
	sw $t0, -160($fp)
label535:
	li $t0, 0
	lw $t1, -160($fp)
	sub $t0, $t0, $t1
	sw $t0, -168($fp)
	lw $t1, -168($fp)
	li $t2, 0
	bne $t1, $t2, label531
	j label533
label533:
	li $t0, 18661
	sw $t0, -172($fp)
	lw $t0, -68($fp)
	sw $t0, -176($fp)
	lw $t0, -172($fp)
	lw $t1, -176($fp)
	mul $t0, $t0, $t1
	sw $t0, -180($fp)
	lw $t1, -180($fp)
	li $t2, 0
	bne $t1, $t2, label531
	j label532
label531:
	li $t0, 1
	sw $t0, -156($fp)
label532:
	li $t0, 4
	lw $t1, -156($fp)
	mul $t0, $t0, $t1
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	lw $t1, -152($fp)
	add $t0, $t0, $t1
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	lw $t1, 0($t0)
	sw $t1, -192($fp)
	lw $ra, -4($fp)
	lw $v0, -192($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label536:
	lw $t0, 8($fp)
	sw $t0, -196($fp)
	li $t0, 0
	lw $t1, -196($fp)
	sub $t0, $t0, $t1
	sw $t0, -200($fp)
	li $t0, 16436
	sw $t0, -204($fp)
	lw $t1, -200($fp)
	lw $t2, -204($fp)
	bne $t1, $t2, label537
	j label538
label537:
label539:
	addi $t0, $fp, -12
	sw $t0, -208($fp)
	li $t0, 1
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
	li $t0, 47719
	sw $t0, -228($fp)
	lw $t0, -224($fp)
	lw $t1, -228($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -232($fp)
	addi $t0, $fp, -12
	sw $t0, -236($fp)
	lw $t0, 16($fp)
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
	lw $t0, -232($fp)
	lw $t1, -252($fp)
	mul $t0, $t0, $t1
	sw $t0, -256($fp)
	li $t0, 0
	sw $t0, -260($fp)
	lw $t0, 16($fp)
	sw $t0, -264($fp)
	lw $t1, -264($fp)
	li $t2, 0
	bne $t1, $t2, label544
	j label543
label543:
	li $t0, 1
	sw $t0, -260($fp)
label544:
	lw $t0, -80($fp)
	sw $t0, -268($fp)
	lw $t0, -260($fp)
	lw $t1, -268($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -272($fp)
	lw $t1, -256($fp)
	lw $t2, -272($fp)
	beq $t1, $t2, label540
	j label542
label542:
	li $t0, 0
	sw $t0, -276($fp)
	li $t0, 49106
	sw $t0, -280($fp)
	lw $t0, 4($fp)
	sw $t0, -284($fp)
	lw $t0, -280($fp)
	lw $t1, -284($fp)
	mul $t0, $t0, $t1
	sw $t0, -288($fp)
	li $t0, 48734
	sw $t0, -292($fp)
	lw $t1, -288($fp)
	lw $t2, -292($fp)
	bge $t1, $t2, label545
	j label546
label545:
	li $t0, 1
	sw $t0, -276($fp)
label546:
	li $t0, 0
	sw $t0, -296($fp)
	lw $t0, 12($fp)
	sw $t0, -300($fp)
	lw $t1, -300($fp)
	li $t2, 0
	bne $t1, $t2, label548
	j label547
label547:
	li $t0, 1
	sw $t0, -296($fp)
label548:
	li $t0, 6804
	sw $t0, -304($fp)
	lw $t0, -296($fp)
	lw $t1, -304($fp)
	sub $t0, $t0, $t1
	sw $t0, -308($fp)
	li $t0, 0
	sw $t0, -312($fp)
	lw $t0, -80($fp)
	sw $t0, -316($fp)
	lw $t1, -316($fp)
	li $t2, 0
	bne $t1, $t2, label551
	j label550
label551:
	lw $t0, -92($fp)
	sw $t0, -320($fp)
	lw $t1, -320($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label550
label549:
	li $t0, 1
	sw $t0, -312($fp)
label550:
	addi $sp, $sp, -4
	lw $t0, -276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -312($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -324($fp)
	addi $sp, $sp, 16
	lw $t0, -92($fp)
	sw $t0, -328($fp)
	lw $t1, -324($fp)
	lw $t2, -328($fp)
	ble $t1, $t2, label540
	j label541
label540:
	li $t0, 0
	sw $t0, -332($fp)
	addi $t0, $fp, -12
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
	lw $t1, -352($fp)
	li $t2, 0
	bne $t1, $t2, label553
	j label552
label552:
	li $t0, 1
	sw $t0, -332($fp)
label553:
	lw $t0, -332($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -356($fp)
	lw $ra, -4($fp)
	lw $v0, -356($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label539
label541:
	j label536
label538:
	addi $t0, $fp, -12
	sw $t0, -360($fp)
	li $t0, 0
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
	addi $t0, $fp, -12
	sw $t0, -380($fp)
	li $t0, 1
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
	lw $t0, -68($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, 4($fp)
	sw $t0, -412($fp)
	lw $t0, 16($fp)
	sw $t0, -416($fp)
	lw $t0, -412($fp)
	lw $t1, -416($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -420($fp)
	addi $t0, $fp, -12
	sw $t0, -424($fp)
	lw $t0, 12($fp)
	sw $t0, -428($fp)
	li $t0, 4
	lw $t1, -428($fp)
	mul $t0, $t0, $t1
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	lw $t1, -424($fp)
	add $t0, $t0, $t1
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	lw $t1, 0($t0)
	sw $t1, -440($fp)
	addi $sp, $sp, -4
	lw $t0, -420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -440($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -444($fp)
	addi $sp, $sp, 12
	lw $t0, 4($fp)
	sw $t0, -448($fp)
	addi $t0, $fp, -12
	sw $t0, -452($fp)
	li $t0, 0
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
	lw $t0, -448($fp)
	lw $t1, -468($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -472($fp)
	lw $t0, -444($fp)
	lw $t1, -472($fp)
	add $t0, $t0, $t1
	sw $t0, -476($fp)
	lw $ra, -4($fp)
	lw $v0, -476($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1652
	li $t0, 2592
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
	li $t0, 22589
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
	li $t0, 11878
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
	li $t0, 8894
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
	li $t0, 17870
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
	li $t0, 33410
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
	li $t0, 42468
	sw $t0, -236($fp)
	addi $t0, $fp, -52
	sw $t0, -240($fp)
	li $t0, 0
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
	li $t0, 11733
	sw $t0, -260($fp)
	addi $t0, $fp, -52
	sw $t0, -264($fp)
	li $t0, 1
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
	li $t0, 56568
	sw $t0, -284($fp)
	addi $t0, $fp, -52
	sw $t0, -288($fp)
	li $t0, 2
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
	li $t0, 54097
	sw $t0, -308($fp)
	addi $t0, $fp, -52
	sw $t0, -312($fp)
	li $t0, 3
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
	li $t0, 13930
	sw $t0, -332($fp)
	addi $t0, $fp, -52
	sw $t0, -336($fp)
	li $t0, 4
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
	li $t0, 39679
	sw $t0, -356($fp)
	addi $t0, $fp, -52
	sw $t0, -360($fp)
	li $t0, 5
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
	li $t0, 51724
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	li $t0, 18306
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	li $t0, 58436
	sw $t0, -404($fp)
	addi $t0, $fp, -88
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
	li $t0, 9615
	sw $t0, -428($fp)
	addi $t0, $fp, -88
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
	li $t0, 18256
	sw $t0, -452($fp)
	addi $t0, $fp, -88
	sw $t0, -456($fp)
	li $t0, 2
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
	li $t0, 29247
	sw $t0, -476($fp)
	addi $t0, $fp, -88
	sw $t0, -480($fp)
	li $t0, 3
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
	li $t0, 6986
	sw $t0, -500($fp)
	addi $t0, $fp, -88
	sw $t0, -504($fp)
	li $t0, 4
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
	li $t0, 36917
	sw $t0, -524($fp)
	addi $t0, $fp, -88
	sw $t0, -528($fp)
	li $t0, 5
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
	li $t0, 45684
	sw $t0, -548($fp)
	addi $t0, $fp, -88
	sw $t0, -552($fp)
	li $t0, 6
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
	li $t0, 47317
	sw $t0, -572($fp)
	addi $t0, $fp, -88
	sw $t0, -576($fp)
	li $t0, 7
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
	li $t0, 29030
	sw $t0, -596($fp)
	addi $t0, $fp, -88
	sw $t0, -600($fp)
	li $t0, 8
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
	li $t0, 27867
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	li $t0, 54122
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	li $t0, 12600
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
label554:
	li $t0, 11065
	sw $t0, -656($fp)
	lw $t1, -656($fp)
	li $t2, 0
	bne $t1, $t2, label555
	j label556
label555:
	addi $t0, $fp, -52
	sw $t0, -660($fp)
	lw $t0, 16($fp)
	sw $t0, -664($fp)
	li $t0, 138
	sw $t0, -668($fp)
	lw $t0, -664($fp)
	lw $t1, -668($fp)
	mul $t0, $t0, $t1
	sw $t0, -672($fp)
	li $t0, 4
	lw $t1, -672($fp)
	mul $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	lw $t1, -660($fp)
	add $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	lw $t1, 0($t0)
	sw $t1, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -688($fp)
	j label554
label556:
label557:
	addi $t0, $fp, -88
	sw $t0, -692($fp)
	lw $t0, 8($fp)
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
	li $t0, 50124
	sw $t0, -712($fp)
	lw $t0, -708($fp)
	lw $t1, -712($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -716($fp)
	li $t0, 58202
	sw $t0, -720($fp)
	li $t0, 50035
	sw $t0, -724($fp)
	lw $t0, -720($fp)
	lw $t1, -724($fp)
	add $t0, $t0, $t1
	sw $t0, -728($fp)
	li $t0, 27535
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -736($fp)
	li $t0, 0
	sw $t0, -740($fp)
	lw $t0, -396($fp)
	sw $t0, -744($fp)
	lw $t1, -744($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label561
label562:
	lw $t0, 4($fp)
	sw $t0, -748($fp)
	lw $t1, -748($fp)
	li $t2, 0
	bne $t1, $t2, label560
	j label561
label560:
	li $t0, 1
	sw $t0, -740($fp)
label561:
	lw $t0, -384($fp)
	sw $t0, -752($fp)
	lw $t0, 12($fp)
	sw $t0, -756($fp)
	lw $t0, -752($fp)
	lw $t1, -756($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -760($fp)
	li $t0, 47443
	sw $t0, -764($fp)
	lw $t0, -760($fp)
	lw $t1, -764($fp)
	add $t0, $t0, $t1
	sw $t0, -768($fp)
	addi $sp, $sp, -4
	lw $t0, -716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -768($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -772($fp)
	addi $sp, $sp, 24
	lw $t1, -772($fp)
	li $t2, 0
	bne $t1, $t2, label558
	j label559
label558:
	li $t0, 4544
	sw $t0, -776($fp)
	j label557
label559:
	addi $t0, $fp, -88
	sw $t0, -780($fp)
	li $t0, 3
	sw $t0, -784($fp)
	li $t0, 4
	lw $t1, -784($fp)
	mul $t0, $t0, $t1
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	lw $t1, -780($fp)
	add $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	lw $t1, 0($t0)
	sw $t1, -796($fp)
	li $t0, 0
	sw $t0, -800($fp)
	lw $t0, 20($fp)
	sw $t0, -804($fp)
	lw $t1, -804($fp)
	li $t2, 0
	bne $t1, $t2, label568
	j label567
label567:
	li $t0, 1
	sw $t0, -800($fp)
label568:
	lw $t0, -796($fp)
	lw $t1, -800($fp)
	mul $t0, $t0, $t1
	sw $t0, -808($fp)
	li $t0, 14191
	sw $t0, -812($fp)
	li $t0, 0
	lw $t1, -812($fp)
	sub $t0, $t0, $t1
	sw $t0, -816($fp)
	li $t0, 28987
	sw $t0, -820($fp)
	lw $t0, -816($fp)
	lw $t1, -820($fp)
	add $t0, $t0, $t1
	sw $t0, -824($fp)
	li $t0, 0
	sw $t0, -828($fp)
	li $t0, 37954
	sw $t0, -832($fp)
	li $t0, 35861
	sw $t0, -836($fp)
	lw $t0, -832($fp)
	lw $t1, -836($fp)
	mul $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t0, 8($fp)
	sw $t0, -844($fp)
	lw $t1, -840($fp)
	lw $t2, -844($fp)
	bgt $t1, $t2, label569
	j label570
label569:
	li $t0, 1
	sw $t0, -828($fp)
label570:
	addi $sp, $sp, -4
	lw $t0, -824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -828($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -848($fp)
	addi $sp, $sp, 12
	li $t0, 24422
	sw $t0, -852($fp)
	lw $t0, -848($fp)
	lw $t1, -852($fp)
	sub $t0, $t0, $t1
	sw $t0, -856($fp)
	lw $t1, -808($fp)
	lw $t2, -856($fp)
	ble $t1, $t2, label563
	j label566
label566:
	li $t0, 0
	sw $t0, -860($fp)
	lw $t0, -624($fp)
	sw $t0, -864($fp)
	li $t0, 46428
	sw $t0, -868($fp)
	lw $t0, -864($fp)
	lw $t1, -868($fp)
	mul $t0, $t0, $t1
	sw $t0, -872($fp)
	lw $t1, -872($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label572
label573:
	li $t0, 61567
	sw $t0, -876($fp)
	lw $t1, -876($fp)
	li $t2, 0
	bne $t1, $t2, label571
	j label572
label571:
	li $t0, 1
	sw $t0, -860($fp)
label572:
	addi $t0, $fp, -88
	sw $t0, -880($fp)
	li $t0, 8
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
	li $t0, 10611
	sw $t0, -900($fp)
	lw $t0, -896($fp)
	lw $t1, -900($fp)
	mul $t0, $t0, $t1
	sw $t0, -904($fp)
	addi $sp, $sp, -4
	lw $t0, -860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -904($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -908($fp)
	addi $sp, $sp, 12
	lw $t1, -908($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label564
label563:
	lw $t0, 20($fp)
	sw $t0, -912($fp)
	j label565
label564:
	li $t0, 20226
	sw $t0, -916($fp)
label565:
label574:
	li $t0, 0
	sw $t0, -920($fp)
	li $t0, 0
	sw $t0, -924($fp)
	li $t0, 27212
	sw $t0, -928($fp)
	lw $t1, -928($fp)
	li $t2, 0
	bne $t1, $t2, label581
	j label580
label581:
	lw $t0, -384($fp)
	sw $t0, -932($fp)
	lw $t1, -932($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label580
label579:
	li $t0, 1
	sw $t0, -924($fp)
label580:
	addi $t0, $fp, -88
	sw $t0, -936($fp)
	lw $t0, -624($fp)
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
	li $t0, 0
	sw $t0, -956($fp)
	li $t0, 64684
	sw $t0, -960($fp)
	lw $t1, -960($fp)
	li $t2, 0
	bne $t1, $t2, label582
	j label585
label585:
	li $t0, 25278
	sw $t0, -964($fp)
	lw $t1, -964($fp)
	li $t2, 0
	bne $t1, $t2, label582
	j label584
label584:
	lw $t0, 20($fp)
	sw $t0, -968($fp)
	lw $t1, -968($fp)
	li $t2, 0
	bne $t1, $t2, label582
	j label583
label582:
	li $t0, 1
	sw $t0, -956($fp)
label583:
	addi $sp, $sp, -4
	lw $t0, -924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -956($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -972($fp)
	addi $sp, $sp, 16
	lw $t1, -972($fp)
	li $t2, 0
	bne $t1, $t2, label578
	j label577
label577:
	li $t0, 1
	sw $t0, -920($fp)
label578:
	lw $t0, 20($fp)
	sw $t0, -976($fp)
	lw $t0, -920($fp)
	lw $t1, -976($fp)
	mul $t0, $t0, $t1
	sw $t0, -980($fp)
	li $t0, 0
	sw $t0, -984($fp)
	lw $t0, -624($fp)
	sw $t0, -988($fp)
	lw $t1, -988($fp)
	li $t2, 0
	bne $t1, $t2, label587
	j label586
label586:
	li $t0, 1
	sw $t0, -984($fp)
label587:
	lw $t0, -980($fp)
	lw $t1, -984($fp)
	mul $t0, $t0, $t1
	sw $t0, -992($fp)
	li $t0, 0
	lw $t1, -992($fp)
	sub $t0, $t0, $t1
	sw $t0, -996($fp)
	lw $t1, -996($fp)
	li $t2, 0
	bne $t1, $t2, label575
	j label576
label575:
	li $t0, 0
	sw $t0, -1000($fp)
	addi $t0, $fp, -28
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
	li $t0, 0
	lw $t1, -1020($fp)
	sub $t0, $t0, $t1
	sw $t0, -1024($fp)
	li $t0, 0
	sw $t0, -1028($fp)
	li $t0, 0
	sw $t0, -1032($fp)
	lw $t0, -624($fp)
	sw $t0, -1036($fp)
	lw $t0, 12($fp)
	sw $t0, -1040($fp)
	lw $t1, -1036($fp)
	lw $t2, -1040($fp)
	blt $t1, $t2, label595
	j label596
label595:
	li $t0, 1
	sw $t0, -1032($fp)
label596:
	li $t0, 36065
	sw $t0, -1044($fp)
	lw $t1, -1032($fp)
	lw $t2, -1044($fp)
	bne $t1, $t2, label593
	j label594
label593:
	li $t0, 1
	sw $t0, -1028($fp)
label594:
	lw $t0, 12($fp)
	sw $t0, -1048($fp)
	addi $sp, $sp, -4
	lw $t0, -1024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1048($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1052($fp)
	addi $sp, $sp, 16
	lw $t0, -396($fp)
	sw $t0, -1056($fp)
	lw $t1, -1052($fp)
	lw $t2, -1056($fp)
	bne $t1, $t2, label591
	j label592
label591:
	li $t0, 1
	sw $t0, -1000($fp)
label592:
	addi $sp, $sp, -4
	lw $t0, -1000($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1060($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -1064($fp)
	li $t0, 5
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
	lw $t0, -1060($fp)
	lw $t1, -1080($fp)
	sub $t0, $t0, $t1
	sw $t0, -1084($fp)
	lw $t0, -648($fp)
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -1092($fp)
	addi $sp, $sp, -4
	lw $t0, -1092($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1096($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -1096($fp)
	sub $t0, $t0, $t1
	sw $t0, -1100($fp)
	lw $t0, -1084($fp)
	lw $t1, -1100($fp)
	sub $t0, $t0, $t1
	sw $t0, -1104($fp)
	lw $t1, -1104($fp)
	li $t2, 0
	bne $t1, $t2, label588
	j label589
label588:
	addi $t0, $fp, -52
	sw $t0, -1108($fp)
	li $t0, 63115
	sw $t0, -1112($fp)
	li $t0, 12159
	sw $t0, -1116($fp)
	lw $t0, -1112($fp)
	lw $t1, -1116($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1120($fp)
	li $t0, 4
	lw $t1, -1120($fp)
	mul $t0, $t0, $t1
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	lw $t1, -1108($fp)
	add $t0, $t0, $t1
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	lw $t1, 0($t0)
	sw $t1, -1132($fp)
	li $t0, 0
	lw $t1, -1132($fp)
	sub $t0, $t0, $t1
	sw $t0, -1136($fp)
	lw $t0, 8($fp)
	sw $t0, -1140($fp)
	lw $t0, 12($fp)
	sw $t0, -1144($fp)
	li $t0, 0
	lw $t1, -1144($fp)
	sub $t0, $t0, $t1
	sw $t0, -1148($fp)
	lw $t0, -1140($fp)
	lw $t1, -1148($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1152($fp)
	lw $t0, -1136($fp)
	lw $t1, -1152($fp)
	sub $t0, $t0, $t1
	sw $t0, -1156($fp)
	j label590
label589:
	li $t0, 44359
	sw $t0, -1160($fp)
	li $t0, 0
	lw $t1, -1160($fp)
	sub $t0, $t0, $t1
	sw $t0, -1164($fp)
label590:
	j label574
label576:
	addi $t0, $fp, -28
	sw $t0, -1168($fp)
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -1228($fp)
	li $t0, 3
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
	lw $t0, -1244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1248($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -1268($fp)
	li $t0, 5
	sw $t0, -1272($fp)
	li $t0, 4
	lw $t1, -1272($fp)
	mul $t0, $t0, $t1
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	lw $t1, -1268($fp)
	add $t0, $t0, $t1
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	lw $t1, 0($t0)
	sw $t1, -1284($fp)
	lw $t0, -1284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1288($fp)
	li $t0, 0
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
	lw $t0, -1304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1308($fp)
	li $t0, 1
	sw $t0, -1312($fp)
	li $t0, 4
	lw $t1, -1312($fp)
	mul $t0, $t0, $t1
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	lw $t1, -1308($fp)
	add $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	lw $t1, 0($t0)
	sw $t1, -1324($fp)
	lw $t0, -1324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1328($fp)
	li $t0, 2
	sw $t0, -1332($fp)
	li $t0, 4
	lw $t1, -1332($fp)
	mul $t0, $t0, $t1
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	lw $t1, -1328($fp)
	add $t0, $t0, $t1
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	lw $t1, 0($t0)
	sw $t1, -1344($fp)
	lw $t0, -1344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -1348($fp)
	li $t0, 3
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
	addi $t0, $fp, -52
	sw $t0, -1368($fp)
	li $t0, 4
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
	addi $t0, $fp, -52
	sw $t0, -1388($fp)
	li $t0, 5
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
	lw $t0, -384($fp)
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -1416($fp)
	li $t0, 0
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
	addi $t0, $fp, -88
	sw $t0, -1436($fp)
	li $t0, 1
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
	lw $t0, -1452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -1456($fp)
	li $t0, 2
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
	addi $t0, $fp, -88
	sw $t0, -1476($fp)
	li $t0, 3
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
	addi $t0, $fp, -88
	sw $t0, -1496($fp)
	li $t0, 4
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
	addi $t0, $fp, -88
	sw $t0, -1516($fp)
	li $t0, 5
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
	addi $t0, $fp, -88
	sw $t0, -1536($fp)
	li $t0, 6
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
	addi $t0, $fp, -88
	sw $t0, -1556($fp)
	li $t0, 7
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
	addi $t0, $fp, -88
	sw $t0, -1576($fp)
	li $t0, 8
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
	lw $t0, -624($fp)
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -1608($fp)
	li $t0, 0
	sw $t0, -1612($fp)
	addi $t0, $fp, -28
	sw $t0, -1616($fp)
	li $t0, 4
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
	lw $t0, 8($fp)
	sw $t0, -1636($fp)
	lw $t1, -1632($fp)
	lw $t2, -1636($fp)
	bne $t1, $t2, label599
	j label598
label599:
	lw $t0, -648($fp)
	sw $t0, -1640($fp)
	lw $t0, 12($fp)
	sw $t0, -1644($fp)
	lw $t1, -1640($fp)
	lw $t2, -1644($fp)
	bne $t1, $t2, label597
	j label598
label597:
	li $t0, 1
	sw $t0, -1612($fp)
label598:
	li $t0, 4
	lw $t1, -1612($fp)
	mul $t0, $t0, $t1
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	lw $t1, -1608($fp)
	add $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	lw $t1, 0($t0)
	sw $t1, -1656($fp)
	lw $ra, -4($fp)
	lw $v0, -1656($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -112
	li $t0, 6358
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 55919
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	lw $t0, -12($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 44102
	sw $t0, -40($fp)
	lw $ra, -4($fp)
	lw $v0, -40($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label600:
	li $t0, 56482
	sw $t0, -44($fp)
	li $t0, 60463
	sw $t0, -48($fp)
	li $t0, 0
	lw $t1, -48($fp)
	sub $t0, $t0, $t1
	sw $t0, -52($fp)
	lw $t1, -44($fp)
	lw $t2, -52($fp)
	bge $t1, $t2, label601
	j label602
label601:
	li $t0, 0
	sw $t0, -56($fp)
	li $t0, 37495
	sw $t0, -60($fp)
	li $t0, 58941
	sw $t0, -64($fp)
	lw $t0, -60($fp)
	lw $t1, -64($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -68($fp)
	lw $t0, -24($fp)
	sw $t0, -72($fp)
	lw $t0, -68($fp)
	lw $t1, -72($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -76($fp)
	li $t0, 32882
	sw $t0, -80($fp)
	lw $t0, -76($fp)
	lw $t1, -80($fp)
	mul $t0, $t0, $t1
	sw $t0, -84($fp)
	lw $t1, -84($fp)
	li $t2, 0
	bne $t1, $t2, label606
	j label605
label606:
	li $t0, 7821
	sw $t0, -88($fp)
	li $t0, 0
	lw $t1, -88($fp)
	sub $t0, $t0, $t1
	sw $t0, -92($fp)
	li $t0, 7596
	sw $t0, -96($fp)
	lw $t1, -92($fp)
	lw $t2, -96($fp)
	bgt $t1, $t2, label603
	j label605
label605:
	lw $t0, -12($fp)
	sw $t0, -100($fp)
	lw $t1, -100($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label604
label603:
	li $t0, 1
	sw $t0, -56($fp)
label604:
	lw $ra, -4($fp)
	lw $v0, -56($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label600
label602:
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
	li $t0, 0
	sw $t0, -112($fp)
	lw $t0, -12($fp)
	sw $t0, -116($fp)
	lw $t1, -116($fp)
	li $t2, 0
	bne $t1, $t2, label608
	j label607
label607:
	li $t0, 1
	sw $t0, -112($fp)
label608:
	lw $ra, -4($fp)
	lw $v0, -112($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -3184
	li $t0, 61869
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	li $t0, 32243
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	li $t0, 35718
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	li $t0, 64999
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	li $t0, 42854
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	li $t0, 16610
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	li $t0, 61030
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	li $t0, 63080
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	li $t0, 15758
	sw $t0, -216($fp)
	addi $t0, $fp, -36
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
	li $t0, 20773
	sw $t0, -240($fp)
	addi $t0, $fp, -36
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
	li $t0, 24756
	sw $t0, -264($fp)
	addi $t0, $fp, -36
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
	li $t0, 51823
	sw $t0, -288($fp)
	addi $t0, $fp, -36
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
	li $t0, 26199
	sw $t0, -312($fp)
	addi $t0, $fp, -36
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
	li $t0, 33750
	sw $t0, -336($fp)
	addi $t0, $fp, -36
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
	li $t0, 51382
	sw $t0, -360($fp)
	addi $t0, $fp, -36
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
	li $t0, 59493
	sw $t0, -384($fp)
	addi $t0, $fp, -36
	sw $t0, -388($fp)
	li $t0, 7
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
	li $t0, 31329
	sw $t0, -408($fp)
	addi $t0, $fp, -44
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
	li $t0, 63541
	sw $t0, -432($fp)
	addi $t0, $fp, -44
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
	li $t0, 38316
	sw $t0, -456($fp)
	addi $t0, $fp, -84
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
	li $t0, 29047
	sw $t0, -480($fp)
	addi $t0, $fp, -84
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
	li $t0, 57607
	sw $t0, -504($fp)
	addi $t0, $fp, -84
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
	li $t0, 44674
	sw $t0, -528($fp)
	addi $t0, $fp, -84
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
	li $t0, 19430
	sw $t0, -552($fp)
	addi $t0, $fp, -84
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
	li $t0, 36173
	sw $t0, -576($fp)
	addi $t0, $fp, -84
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
	li $t0, 35620
	sw $t0, -600($fp)
	addi $t0, $fp, -84
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
	li $t0, 14358
	sw $t0, -624($fp)
	addi $t0, $fp, -84
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
	li $t0, 8133
	sw $t0, -648($fp)
	addi $t0, $fp, -84
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
	li $t0, 29025
	sw $t0, -672($fp)
	addi $t0, $fp, -84
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
	li $t0, 47240
	sw $t0, -696($fp)
	addi $t0, $fp, -116
	sw $t0, -700($fp)
	li $t0, 0
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
	li $t0, 15954
	sw $t0, -720($fp)
	addi $t0, $fp, -116
	sw $t0, -724($fp)
	li $t0, 1
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
	li $t0, 36622
	sw $t0, -744($fp)
	addi $t0, $fp, -116
	sw $t0, -748($fp)
	li $t0, 2
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
	li $t0, 43573
	sw $t0, -768($fp)
	addi $t0, $fp, -116
	sw $t0, -772($fp)
	li $t0, 3
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
	li $t0, 48197
	sw $t0, -792($fp)
	addi $t0, $fp, -116
	sw $t0, -796($fp)
	li $t0, 4
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
	li $t0, 6804
	sw $t0, -816($fp)
	addi $t0, $fp, -116
	sw $t0, -820($fp)
	li $t0, 5
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
	li $t0, 43036
	sw $t0, -840($fp)
	addi $t0, $fp, -116
	sw $t0, -844($fp)
	li $t0, 6
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
	li $t0, 25516
	sw $t0, -864($fp)
	addi $t0, $fp, -116
	sw $t0, -868($fp)
	li $t0, 7
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
	li $t0, 23414
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -896($fp)
	li $t0, 38531
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	li $t0, 23060
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	li $t0, 0
	sw $t0, -924($fp)
	lw $t0, -208($fp)
	sw $t0, -928($fp)
	li $t0, 39172
	sw $t0, -932($fp)
	lw $t0, -928($fp)
	lw $t1, -932($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -936($fp)
	li $t0, 59304
	sw $t0, -940($fp)
	lw $t1, -936($fp)
	lw $t2, -940($fp)
	blt $t1, $t2, label613
	j label614
label613:
	li $t0, 1
	sw $t0, -924($fp)
label614:
	addi $sp, $sp, -4
	lw $t0, -924($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -944($fp)
	addi $sp, $sp, 8
	lw $t0, -184($fp)
	sw $t0, -948($fp)
	lw $t0, -136($fp)
	sw $t0, -952($fp)
	lw $t0, -948($fp)
	lw $t1, -952($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -956($fp)
	li $t0, 11305
	sw $t0, -960($fp)
	lw $t0, -956($fp)
	lw $t1, -960($fp)
	add $t0, $t0, $t1
	sw $t0, -964($fp)
	li $t0, 0
	sw $t0, -968($fp)
	lw $t0, -196($fp)
	sw $t0, -972($fp)
	lw $t0, -892($fp)
	sw $t0, -976($fp)
	lw $t1, -972($fp)
	lw $t2, -976($fp)
	bge $t1, $t2, label615
	j label616
label615:
	li $t0, 1
	sw $t0, -968($fp)
label616:
	li $t0, 0
	sw $t0, -980($fp)
	lw $t0, -124($fp)
	sw $t0, -984($fp)
	li $t0, 19967
	sw $t0, -988($fp)
	lw $t1, -984($fp)
	lw $t2, -988($fp)
	beq $t1, $t2, label617
	j label619
label619:
	li $t0, 16031
	sw $t0, -992($fp)
	lw $t1, -992($fp)
	li $t2, 0
	bne $t1, $t2, label617
	j label618
label617:
	li $t0, 1
	sw $t0, -980($fp)
label618:
	li $t0, 25459
	sw $t0, -996($fp)
	li $t0, 47817
	sw $t0, -1000($fp)
	addi $sp, $sp, -4
	lw $t0, -964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1000($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1004($fp)
	addi $sp, $sp, 24
	li $t0, 13924
	sw $t0, -1008($fp)
	lw $t0, -1004($fp)
	lw $t1, -1008($fp)
	mul $t0, $t0, $t1
	sw $t0, -1012($fp)
	lw $t1, -944($fp)
	lw $t2, -1012($fp)
	bgt $t1, $t2, label609
	j label612
label612:
	li $t0, 47360
	sw $t0, -1016($fp)
	lw $t1, -1016($fp)
	li $t2, 0
	bne $t1, $t2, label610
	j label609
label609:
	li $t0, 9310
	sw $t0, -1036($fp)
	addi $t0, $fp, -1032
	sw $t0, -1040($fp)
	li $t0, 0
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
	li $t0, 52240
	sw $t0, -1060($fp)
	addi $t0, $fp, -1032
	sw $t0, -1064($fp)
	li $t0, 1
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
	li $t0, 10871
	sw $t0, -1084($fp)
	addi $t0, $fp, -1032
	sw $t0, -1088($fp)
	li $t0, 2
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
	li $t0, 1381
	sw $t0, -1108($fp)
	addi $t0, $fp, -1032
	sw $t0, -1112($fp)
	li $t0, 3
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
	li $t0, 31378
	sw $t0, -1164($fp)
	addi $t0, $fp, -1160
	sw $t0, -1168($fp)
	li $t0, 0
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
	li $t0, 30302
	sw $t0, -1188($fp)
	addi $t0, $fp, -1160
	sw $t0, -1192($fp)
	li $t0, 1
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1200($fp)
	lw $t0, -1192($fp)
	lw $t1, -1200($fp)
	add $t0, $t0, $t1
	sw $t0, -1204($fp)
	lw $t0, -1188($fp)
	lw $t1, -1204($fp)
	sw $t0, 0($t1)
	lw $t0, -1204($fp)
	lw $t1, 0($t0)
	sw $t1, -1208($fp)
	li $t0, 37555
	sw $t0, -1212($fp)
	addi $t0, $fp, -1160
	sw $t0, -1216($fp)
	li $t0, 2
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1224($fp)
	lw $t0, -1216($fp)
	lw $t1, -1224($fp)
	add $t0, $t0, $t1
	sw $t0, -1228($fp)
	lw $t0, -1212($fp)
	lw $t1, -1228($fp)
	sw $t0, 0($t1)
	lw $t0, -1228($fp)
	lw $t1, 0($t0)
	sw $t1, -1232($fp)
	li $t0, 1463
	sw $t0, -1236($fp)
	addi $t0, $fp, -1160
	sw $t0, -1240($fp)
	li $t0, 3
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1248($fp)
	lw $t0, -1240($fp)
	lw $t1, -1248($fp)
	add $t0, $t0, $t1
	sw $t0, -1252($fp)
	lw $t0, -1236($fp)
	lw $t1, -1252($fp)
	sw $t0, 0($t1)
	lw $t0, -1252($fp)
	lw $t1, 0($t0)
	sw $t1, -1256($fp)
	li $t0, 44660
	sw $t0, -1260($fp)
	addi $t0, $fp, -1160
	sw $t0, -1264($fp)
	li $t0, 4
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t0, -1264($fp)
	lw $t1, -1272($fp)
	add $t0, $t0, $t1
	sw $t0, -1276($fp)
	lw $t0, -1260($fp)
	lw $t1, -1276($fp)
	sw $t0, 0($t1)
	lw $t0, -1276($fp)
	lw $t1, 0($t0)
	sw $t1, -1280($fp)
	li $t0, 45688
	sw $t0, -1284($fp)
	addi $t0, $fp, -1160
	sw $t0, -1288($fp)
	li $t0, 5
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1296($fp)
	lw $t0, -1288($fp)
	lw $t1, -1296($fp)
	add $t0, $t0, $t1
	sw $t0, -1300($fp)
	lw $t0, -1284($fp)
	lw $t1, -1300($fp)
	sw $t0, 0($t1)
	lw $t0, -1300($fp)
	lw $t1, 0($t0)
	sw $t1, -1304($fp)
	li $t0, 30488
	sw $t0, -1308($fp)
	addi $t0, $fp, -1160
	sw $t0, -1312($fp)
	li $t0, 6
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $t0, -1312($fp)
	lw $t1, -1320($fp)
	add $t0, $t0, $t1
	sw $t0, -1324($fp)
	lw $t0, -1308($fp)
	lw $t1, -1324($fp)
	sw $t0, 0($t1)
	lw $t0, -1324($fp)
	lw $t1, 0($t0)
	sw $t1, -1328($fp)
	li $t0, 26364
	sw $t0, -1332($fp)
	addi $t0, $fp, -1160
	sw $t0, -1336($fp)
	li $t0, 7
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
	addi $t0, $fp, -1160
	sw $t0, -1356($fp)
	li $t0, 0
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
	addi $t0, $fp, -1160
	sw $t0, -1376($fp)
	li $t0, 1
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
	addi $t0, $fp, -1160
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
	lw $t0, -1412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1160
	sw $t0, -1416($fp)
	li $t0, 3
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
	addi $t0, $fp, -1160
	sw $t0, -1436($fp)
	li $t0, 4
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
	lw $t0, -1452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1160
	sw $t0, -1456($fp)
	li $t0, 5
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
	addi $t0, $fp, -1160
	sw $t0, -1476($fp)
	li $t0, 6
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
	addi $t0, $fp, -1160
	sw $t0, -1496($fp)
	li $t0, 7
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
	li $t0, 0
	sw $t0, -1516($fp)
	li $t0, 4401
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -1524($fp)
	li $t0, 0
	sw $t0, -1528($fp)
	lw $t0, -916($fp)
	sw $t0, -1532($fp)
	li $t0, 1574
	sw $t0, -1536($fp)
	lw $t1, -1532($fp)
	lw $t2, -1536($fp)
	bge $t1, $t2, label622
	j label623
label622:
	li $t0, 1
	sw $t0, -1528($fp)
label623:
	li $t0, 0
	sw $t0, -1540($fp)
	li $t0, 61642
	sw $t0, -1544($fp)
	lw $t1, -1544($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label624
label624:
	li $t0, 1
	sw $t0, -1540($fp)
label625:
	lw $t0, -148($fp)
	sw $t0, -1548($fp)
	lw $t0, -1540($fp)
	lw $t1, -1548($fp)
	sub $t0, $t0, $t1
	sw $t0, -1552($fp)
	addi $t0, $fp, -1160
	sw $t0, -1556($fp)
	lw $t0, 4($fp)
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
	addi $sp, $sp, -4
	lw $t0, -1524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1572($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1576($fp)
	addi $sp, $sp, 20
	lw $t1, -1576($fp)
	li $t2, 0
	bne $t1, $t2, label621
	j label620
label620:
	li $t0, 1
	sw $t0, -1516($fp)
label621:
	li $t0, 0
	lw $t1, -1516($fp)
	sub $t0, $t0, $t1
	sw $t0, -1580($fp)
	li $t0, 0
	lw $t1, -1580($fp)
	sub $t0, $t0, $t1
	sw $t0, -1584($fp)
	li $t0, 0
	lw $t1, -1584($fp)
	sub $t0, $t0, $t1
	sw $t0, -1588($fp)
	lw $ra, -4($fp)
	lw $v0, -1588($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -1032
	sw $t0, -1592($fp)
	li $t0, 0
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
	lw $t0, -1608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1032
	sw $t0, -1612($fp)
	li $t0, 1
	sw $t0, -1616($fp)
	li $t0, 4
	lw $t1, -1616($fp)
	mul $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	lw $t1, -1612($fp)
	add $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	lw $t1, 0($t0)
	sw $t1, -1628($fp)
	lw $t0, -1628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1032
	sw $t0, -1632($fp)
	li $t0, 2
	sw $t0, -1636($fp)
	li $t0, 4
	lw $t1, -1636($fp)
	mul $t0, $t0, $t1
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	lw $t1, -1632($fp)
	add $t0, $t0, $t1
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	lw $t1, 0($t0)
	sw $t1, -1648($fp)
	lw $t0, -1648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1032
	sw $t0, -1652($fp)
	li $t0, 3
	sw $t0, -1656($fp)
	li $t0, 4
	lw $t1, -1656($fp)
	mul $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	lw $t1, -1652($fp)
	add $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	lw $t1, 0($t0)
	sw $t1, -1668($fp)
	lw $t0, -1668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1672($fp)
	jal f11
	sw $v0, -1676($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1676($fp)
	sub $t0, $t0, $t1
	sw $t0, -1680($fp)
	li $t0, 0
	lw $t1, -1680($fp)
	sub $t0, $t0, $t1
	sw $t0, -1684($fp)
	addi $t0, $fp, -1032
	sw $t0, -1688($fp)
	lw $t0, 8($fp)
	sw $t0, -1692($fp)
	li $t0, 4
	lw $t1, -1692($fp)
	mul $t0, $t0, $t1
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	lw $t1, -1688($fp)
	add $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	lw $t1, 0($t0)
	sw $t1, -1704($fp)
	li $t0, 0
	lw $t1, -1704($fp)
	sub $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $t1, -1684($fp)
	lw $t2, -1708($fp)
	bne $t1, $t2, label626
	j label627
label626:
	li $t0, 1
	sw $t0, -1672($fp)
label627:
	lw $ra, -4($fp)
	lw $v0, -1672($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label610:
	li $t0, 44303
	sw $t0, -1712($fp)
label628:
	addi $t0, $fp, -84
	sw $t0, -1716($fp)
	addi $t0, $fp, -116
	sw $t0, -1720($fp)
	lw $t0, -172($fp)
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
	lw $t0, -184($fp)
	sw $t0, -1740($fp)
	lw $t0, -1736($fp)
	lw $t1, -1740($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1744($fp)
	lw $t0, -916($fp)
	sw $t0, -1748($fp)
	li $t0, 4283
	sw $t0, -1752($fp)
	lw $t0, -1748($fp)
	lw $t1, -1752($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1756($fp)
	li $t0, 31792
	sw $t0, -1760($fp)
	lw $t0, -1756($fp)
	lw $t1, -1760($fp)
	sub $t0, $t0, $t1
	sw $t0, -1764($fp)
	lw $t0, -124($fp)
	sw $t0, -1768($fp)
	li $t0, 47437
	sw $t0, -1772($fp)
	lw $t0, -1768($fp)
	lw $t1, -1772($fp)
	sub $t0, $t0, $t1
	sw $t0, -1776($fp)
	li $t0, 8378
	sw $t0, -1780($fp)
	addi $sp, $sp, -4
	lw $t0, -1764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1780($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -1784($fp)
	addi $sp, $sp, 16
	lw $t0, -1744($fp)
	lw $t1, -1784($fp)
	mul $t0, $t0, $t1
	sw $t0, -1788($fp)
	li $t0, 4
	lw $t1, -1788($fp)
	mul $t0, $t0, $t1
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	lw $t1, -1716($fp)
	add $t0, $t0, $t1
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	lw $t1, 0($t0)
	sw $t1, -1800($fp)
	lw $t1, -1800($fp)
	li $t2, 0
	bne $t1, $t2, label629
	j label630
label629:
	li $t0, 0
	sw $t0, -1804($fp)
	li $t0, 20432
	sw $t0, -1808($fp)
	li $t0, 27344
	sw $t0, -1812($fp)
	lw $t0, 4($fp)
	sw $t0, -1816($fp)
	lw $t0, -1812($fp)
	lw $t1, -1816($fp)
	mul $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t0, 12($fp)
	sw $t0, -1824($fp)
	lw $t0, -1820($fp)
	lw $t1, -1824($fp)
	mul $t0, $t0, $t1
	sw $t0, -1828($fp)
	lw $t0, -1808($fp)
	lw $t1, -1828($fp)
	add $t0, $t0, $t1
	sw $t0, -1832($fp)
	addi $t0, $fp, -36
	sw $t0, -1836($fp)
	li $t0, 0
	sw $t0, -1840($fp)
	lw $t0, -136($fp)
	sw $t0, -1844($fp)
	lw $t0, -196($fp)
	sw $t0, -1848($fp)
	lw $t1, -1844($fp)
	lw $t2, -1848($fp)
	beq $t1, $t2, label633
	j label634
label633:
	li $t0, 1
	sw $t0, -1840($fp)
label634:
	li $t0, 4
	lw $t1, -1840($fp)
	mul $t0, $t0, $t1
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	lw $t1, -1836($fp)
	add $t0, $t0, $t1
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	lw $t1, 0($t0)
	sw $t1, -1860($fp)
	lw $t1, -1832($fp)
	lw $t2, -1860($fp)
	ble $t1, $t2, label631
	j label632
label631:
	li $t0, 1
	sw $t0, -1804($fp)
label632:
	lw $ra, -4($fp)
	lw $v0, -1804($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label628
label630:
	li $t0, 5428
	sw $t0, -1864($fp)
	li $t0, 14200
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	sw $t0, -1876($fp)
	li $t0, 9625
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	sw $t0, -1888($fp)
	lw $t0, 12($fp)
	sw $t0, -1892($fp)
	lw $t1, -1892($fp)
	li $t2, 0
	bne $t1, $t2, label638
	j label636
label638:
	lw $t0, -124($fp)
	sw $t0, -1896($fp)
	lw $t1, -1896($fp)
	li $t2, 0
	bne $t1, $t2, label635
	j label636
label635:
	addi $t0, $fp, -116
	sw $t0, -1900($fp)
	li $t0, 0
	sw $t0, -1904($fp)
	li $t0, 4
	lw $t1, -1904($fp)
	mul $t0, $t0, $t1
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	lw $t1, -1900($fp)
	add $t0, $t0, $t1
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	lw $t1, 0($t0)
	sw $t1, -1916($fp)
	lw $t0, -1916($fp)
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -1924($fp)
	lw $t1, -1924($fp)
	li $t2, 0
	bne $t1, $t2, label639
	j label640
label639:
	li $t0, 0
	sw $t0, -1928($fp)
	li $t0, 0
	sw $t0, -1932($fp)
	addi $t0, $fp, -44
	sw $t0, -1936($fp)
	li $t0, 0
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
	bne $t1, $t2, label645
	j label644
label644:
	li $t0, 1
	sw $t0, -1932($fp)
label645:
	li $t0, 48092
	sw $t0, -1956($fp)
	lw $t1, -1932($fp)
	lw $t2, -1956($fp)
	bge $t1, $t2, label642
	j label643
label642:
	li $t0, 1
	sw $t0, -1928($fp)
label643:
	lw $t0, -1928($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -1960($fp)
	lw $ra, -4($fp)
	lw $v0, -1960($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label641
label640:
	li $t0, 0
	sw $t0, -1964($fp)
	li $t0, 0
	sw $t0, -1968($fp)
	lw $t0, -124($fp)
	sw $t0, -1972($fp)
	lw $t1, -1972($fp)
	li $t2, 0
	bne $t1, $t2, label651
	j label650
label650:
	li $t0, 1
	sw $t0, -1968($fp)
label651:
	li $t0, 7480
	sw $t0, -1976($fp)
	lw $t0, -1968($fp)
	lw $t1, -1976($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1980($fp)
	lw $t0, 12($fp)
	sw $t0, -1984($fp)
	li $t0, 0
	lw $t1, -1984($fp)
	sub $t0, $t0, $t1
	sw $t0, -1988($fp)
	lw $t0, -1980($fp)
	lw $t1, -1988($fp)
	sub $t0, $t0, $t1
	sw $t0, -1992($fp)
	lw $t1, -1992($fp)
	li $t2, 0
	bne $t1, $t2, label649
	j label648
label649:
	li $t0, 0
	sw $t0, -1996($fp)
	li $t0, 51502
	sw $t0, -2000($fp)
	lw $t0, -172($fp)
	sw $t0, -2004($fp)
	lw $t1, -2000($fp)
	lw $t2, -2004($fp)
	bne $t1, $t2, label652
	j label653
label652:
	li $t0, 1
	sw $t0, -1996($fp)
label653:
	li $t0, 34797
	sw $t0, -2008($fp)
	lw $t1, -1996($fp)
	lw $t2, -2008($fp)
	beq $t1, $t2, label646
	j label648
label648:
	addi $t0, $fp, -44
	sw $t0, -2012($fp)
	lw $t0, 12($fp)
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
	lw $t0, -1884($fp)
	sw $t0, -2032($fp)
	lw $t0, -2028($fp)
	lw $t1, -2032($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2036($fp)
	li $t0, 0
	lw $t1, -2036($fp)
	sub $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $t1, -2040($fp)
	li $t2, 0
	bne $t1, $t2, label646
	j label647
label646:
	li $t0, 1
	sw $t0, -1964($fp)
label647:
	lw $ra, -4($fp)
	lw $v0, -1964($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label641:
	j label637
label636:
	li $t0, 18352
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	sw $t0, -2052($fp)
label654:
	addi $t0, $fp, -84
	sw $t0, -2056($fp)
	lw $t0, -916($fp)
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
	li $t0, 52884
	sw $t0, -2076($fp)
	lw $t0, -2072($fp)
	lw $t1, -2076($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2080($fp)
	li $t0, 639
	sw $t0, -2084($fp)
	lw $t0, -2080($fp)
	lw $t1, -2084($fp)
	add $t0, $t0, $t1
	sw $t0, -2088($fp)
	li $t0, 0
	sw $t0, -2092($fp)
	lw $t0, -172($fp)
	sw $t0, -2096($fp)
	li $t0, 48654
	sw $t0, -2100($fp)
	lw $t0, -136($fp)
	sw $t0, -2104($fp)
	lw $t0, -2100($fp)
	lw $t1, -2104($fp)
	sub $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t1, -2096($fp)
	lw $t2, -2108($fp)
	ble $t1, $t2, label657
	j label658
label657:
	li $t0, 1
	sw $t0, -2092($fp)
label658:
	lw $t1, -2088($fp)
	lw $t2, -2092($fp)
	beq $t1, $t2, label655
	j label656
label655:
label659:
	jal f11
	sw $v0, -2112($fp)
	addi $sp, $sp, 4
	lw $t0, -196($fp)
	sw $t0, -2116($fp)
	lw $t0, -2112($fp)
	lw $t1, -2116($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2120($fp)
	li $t0, 2103
	sw $t0, -2124($fp)
	lw $t0, -2120($fp)
	lw $t1, -2124($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2128($fp)
	addi $t0, $fp, -44
	sw $t0, -2132($fp)
	lw $t0, -2048($fp)
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
	lw $t1, -2128($fp)
	lw $t2, -2148($fp)
	ble $t1, $t2, label660
	j label662
label662:
	lw $t0, -196($fp)
	sw $t0, -2152($fp)
	lw $t1, -2152($fp)
	li $t2, 0
	bne $t1, $t2, label660
	j label661
label660:
label663:
	li $t0, 27778
	sw $t0, -2156($fp)
	li $t0, 5055
	sw $t0, -2160($fp)
	li $t0, 32591
	sw $t0, -2164($fp)
	lw $t0, -2160($fp)
	lw $t1, -2164($fp)
	add $t0, $t0, $t1
	sw $t0, -2168($fp)
	lw $t0, -148($fp)
	sw $t0, -2172($fp)
	lw $t0, -2168($fp)
	lw $t1, -2172($fp)
	sub $t0, $t0, $t1
	sw $t0, -2176($fp)
	addi $sp, $sp, -4
	lw $t0, -2176($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2180($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -2180($fp)
	sub $t0, $t0, $t1
	sw $t0, -2184($fp)
	lw $t0, -2156($fp)
	lw $t1, -2184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2188($fp)
	li $t0, 54142
	sw $t0, -2192($fp)
	lw $t1, -2188($fp)
	lw $t2, -2192($fp)
	blt $t1, $t2, label664
	j label665
label664:
	li $t0, 1161
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	sw $t0, -2204($fp)
	li $t0, 34165
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	sw $t0, -2216($fp)
	lw $t0, -916($fp)
	sw $t0, -2220($fp)
	li $t0, 58543
	sw $t0, -2224($fp)
	lw $t0, -2220($fp)
	lw $t1, -2224($fp)
	add $t0, $t0, $t1
	sw $t0, -2228($fp)
	lw $t0, -2048($fp)
	sw $t0, -2232($fp)
	addi $t0, $fp, -36
	sw $t0, -2236($fp)
	lw $t0, -124($fp)
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
	lw $t0, -2232($fp)
	lw $t1, -2252($fp)
	mul $t0, $t0, $t1
	sw $t0, -2256($fp)
	li $t0, 45464
	sw $t0, -2260($fp)
	lw $t0, -2256($fp)
	lw $t1, -2260($fp)
	add $t0, $t0, $t1
	sw $t0, -2264($fp)
	li $t0, 42544
	sw $t0, -2268($fp)
	li $t0, 0
	sw $t0, -2272($fp)
	lw $t0, -916($fp)
	sw $t0, -2276($fp)
	lw $t0, -124($fp)
	sw $t0, -2280($fp)
	lw $t0, -2276($fp)
	lw $t1, -2280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2284($fp)
	lw $t0, -136($fp)
	sw $t0, -2288($fp)
	lw $t1, -2284($fp)
	lw $t2, -2288($fp)
	bgt $t1, $t2, label666
	j label667
label666:
	li $t0, 1
	sw $t0, -2272($fp)
label667:
	addi $sp, $sp, -4
	lw $t0, -2272($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2292($fp)
	addi $sp, $sp, 8
	lw $t0, -2268($fp)
	lw $t1, -2292($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2296($fp)
	li $t0, 0
	sw $t0, -2300($fp)
	li $t0, 0
	sw $t0, -2304($fp)
	li $t0, 8800
	sw $t0, -2308($fp)
	lw $t1, -2308($fp)
	li $t2, 0
	bne $t1, $t2, label673
	j label671
label673:
	lw $t0, -196($fp)
	sw $t0, -2312($fp)
	lw $t1, -2312($fp)
	li $t2, 0
	bne $t1, $t2, label671
	j label672
label671:
	li $t0, 1
	sw $t0, -2304($fp)
label672:
	lw $t0, -184($fp)
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	sw $t0, -2320($fp)
	li $t0, 0
	sw $t0, -2324($fp)
	addi $t0, $fp, -84
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
	lw $t0, -892($fp)
	sw $t0, -2348($fp)
	lw $t1, -2344($fp)
	lw $t2, -2348($fp)
	ble $t1, $t2, label674
	j label675
label674:
	li $t0, 1
	sw $t0, -2324($fp)
label675:
	addi $sp, $sp, -4
	lw $t0, -2304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2324($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2352($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -2356($fp)
	lw $t0, -196($fp)
	sw $t0, -2360($fp)
	lw $t0, -208($fp)
	sw $t0, -2364($fp)
	lw $t0, -2360($fp)
	lw $t1, -2364($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2368($fp)
	li $t0, 0
	lw $t1, -2368($fp)
	sub $t0, $t0, $t1
	sw $t0, -2372($fp)
	li $t0, 0
	sw $t0, -2376($fp)
	li $t0, 11556
	sw $t0, -2380($fp)
	lw $t1, -2380($fp)
	li $t2, 0
	bne $t1, $t2, label681
	j label679
label681:
	li $t0, 14229
	sw $t0, -2384($fp)
	lw $t1, -2384($fp)
	li $t2, 0
	bne $t1, $t2, label679
	j label680
label679:
	li $t0, 1
	sw $t0, -2376($fp)
label680:
	addi $sp, $sp, -4
	lw $t0, -2372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2376($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2388($fp)
	addi $sp, $sp, 12
	lw $t1, -2388($fp)
	li $t2, 0
	bne $t1, $t2, label676
	j label678
label678:
	lw $t0, -124($fp)
	sw $t0, -2392($fp)
	lw $t1, -2392($fp)
	li $t2, 0
	bne $t1, $t2, label676
	j label677
label676:
	li $t0, 1
	sw $t0, -2356($fp)
label677:
	lw $t0, -2200($fp)
	sw $t0, -2396($fp)
	li $t0, 60877
	sw $t0, -2400($fp)
	addi $sp, $sp, -4
	lw $t0, -2356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2400($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2404($fp)
	addi $sp, $sp, 16
	lw $t0, -2352($fp)
	lw $t1, -2404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2408($fp)
	lw $t1, -2408($fp)
	li $t2, 0
	bne $t1, $t2, label670
	j label669
label670:
	li $t0, 7739
	sw $t0, -2412($fp)
	li $t0, 0
	sw $t0, -2416($fp)
	li $t0, 21773
	sw $t0, -2420($fp)
	li $t0, 26266
	sw $t0, -2424($fp)
	lw $t0, -2420($fp)
	lw $t1, -2424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2428($fp)
	li $t0, 54317
	sw $t0, -2432($fp)
	lw $t1, -2428($fp)
	lw $t2, -2432($fp)
	blt $t1, $t2, label682
	j label683
label682:
	li $t0, 1
	sw $t0, -2416($fp)
label683:
	li $t0, 0
	sw $t0, -2436($fp)
	li $t0, 43709
	sw $t0, -2440($fp)
	li $t0, 46837
	sw $t0, -2444($fp)
	lw $t1, -2440($fp)
	lw $t2, -2444($fp)
	bne $t1, $t2, label684
	j label686
label686:
	lw $t0, -124($fp)
	sw $t0, -2448($fp)
	lw $t1, -2448($fp)
	li $t2, 0
	bne $t1, $t2, label684
	j label685
label684:
	li $t0, 1
	sw $t0, -2436($fp)
label685:
	li $t0, 0
	sw $t0, -2452($fp)
	li $t0, 21181
	sw $t0, -2456($fp)
	lw $t1, -2456($fp)
	li $t2, 0
	bne $t1, $t2, label690
	j label689
label690:
	lw $t0, 4($fp)
	sw $t0, -2460($fp)
	lw $t1, -2460($fp)
	li $t2, 0
	bne $t1, $t2, label687
	j label689
label689:
	li $t0, 45116
	sw $t0, -2464($fp)
	lw $t1, -2464($fp)
	li $t2, 0
	bne $t1, $t2, label687
	j label688
label687:
	li $t0, 1
	sw $t0, -2452($fp)
label688:
	lw $t0, -148($fp)
	sw $t0, -2468($fp)
	li $t0, 9541
	sw $t0, -2472($fp)
	lw $t0, -2468($fp)
	lw $t1, -2472($fp)
	mul $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $t0, -208($fp)
	sw $t0, -2480($fp)
	lw $t0, -2476($fp)
	lw $t1, -2480($fp)
	sub $t0, $t0, $t1
	sw $t0, -2484($fp)
	addi $sp, $sp, -4
	lw $t0, -2412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2484($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2488($fp)
	addi $sp, $sp, 24
	lw $t1, -2488($fp)
	li $t2, 0
	bne $t1, $t2, label668
	j label669
label668:
	li $t0, 1
	sw $t0, -2300($fp)
label669:
	j label663
label665:
	j label659
label661:
	j label654
label656:
label637:
	lw $t0, -124($fp)
	sw $t0, -2492($fp)
	lw $t0, -2492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -136($fp)
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -172($fp)
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -184($fp)
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -196($fp)
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -208($fp)
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2524($fp)
	li $t0, 0
	sw $t0, -2528($fp)
	li $t0, 4
	lw $t1, -2528($fp)
	mul $t0, $t0, $t1
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	lw $t1, -2524($fp)
	add $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	lw $t1, 0($t0)
	sw $t1, -2540($fp)
	lw $t0, -2540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2544($fp)
	li $t0, 1
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
	lw $t0, -2560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2564($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -2584($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -2604($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -2624($fp)
	li $t0, 5
	sw $t0, -2628($fp)
	li $t0, 4
	lw $t1, -2628($fp)
	mul $t0, $t0, $t1
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	lw $t1, -2624($fp)
	add $t0, $t0, $t1
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	lw $t1, 0($t0)
	sw $t1, -2640($fp)
	lw $t0, -2640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2644($fp)
	li $t0, 6
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
	lw $t0, -2660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -2664($fp)
	li $t0, 7
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
	lw $t0, -2680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -2684($fp)
	li $t0, 0
	sw $t0, -2688($fp)
	li $t0, 4
	lw $t1, -2688($fp)
	mul $t0, $t0, $t1
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	lw $t1, -2684($fp)
	add $t0, $t0, $t1
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	lw $t1, 0($t0)
	sw $t1, -2700($fp)
	lw $t0, -2700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -2704($fp)
	li $t0, 1
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
	lw $t0, -2720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -2724($fp)
	li $t0, 0
	sw $t0, -2728($fp)
	li $t0, 4
	lw $t1, -2728($fp)
	mul $t0, $t0, $t1
	sw $t0, -2732($fp)
	lw $t0, -2732($fp)
	lw $t1, -2724($fp)
	add $t0, $t0, $t1
	sw $t0, -2736($fp)
	lw $t0, -2736($fp)
	lw $t1, 0($t0)
	sw $t1, -2740($fp)
	lw $t0, -2740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -2744($fp)
	li $t0, 1
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
	lw $t0, -2760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -2764($fp)
	li $t0, 2
	sw $t0, -2768($fp)
	li $t0, 4
	lw $t1, -2768($fp)
	mul $t0, $t0, $t1
	sw $t0, -2772($fp)
	lw $t0, -2772($fp)
	lw $t1, -2764($fp)
	add $t0, $t0, $t1
	sw $t0, -2776($fp)
	lw $t0, -2776($fp)
	lw $t1, 0($t0)
	sw $t1, -2780($fp)
	lw $t0, -2780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -2784($fp)
	li $t0, 3
	sw $t0, -2788($fp)
	li $t0, 4
	lw $t1, -2788($fp)
	mul $t0, $t0, $t1
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	lw $t1, -2784($fp)
	add $t0, $t0, $t1
	sw $t0, -2796($fp)
	lw $t0, -2796($fp)
	lw $t1, 0($t0)
	sw $t1, -2800($fp)
	lw $t0, -2800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -2804($fp)
	li $t0, 4
	sw $t0, -2808($fp)
	li $t0, 4
	lw $t1, -2808($fp)
	mul $t0, $t0, $t1
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	lw $t1, -2804($fp)
	add $t0, $t0, $t1
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	lw $t1, 0($t0)
	sw $t1, -2820($fp)
	lw $t0, -2820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -2824($fp)
	li $t0, 5
	sw $t0, -2828($fp)
	li $t0, 4
	lw $t1, -2828($fp)
	mul $t0, $t0, $t1
	sw $t0, -2832($fp)
	lw $t0, -2832($fp)
	lw $t1, -2824($fp)
	add $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	lw $t1, 0($t0)
	sw $t1, -2840($fp)
	lw $t0, -2840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -2844($fp)
	li $t0, 6
	sw $t0, -2848($fp)
	li $t0, 4
	lw $t1, -2848($fp)
	mul $t0, $t0, $t1
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	lw $t1, -2844($fp)
	add $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	lw $t1, 0($t0)
	sw $t1, -2860($fp)
	lw $t0, -2860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -2864($fp)
	li $t0, 7
	sw $t0, -2868($fp)
	li $t0, 4
	lw $t1, -2868($fp)
	mul $t0, $t0, $t1
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	lw $t1, -2864($fp)
	add $t0, $t0, $t1
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	lw $t1, 0($t0)
	sw $t1, -2880($fp)
	lw $t0, -2880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -2884($fp)
	li $t0, 8
	sw $t0, -2888($fp)
	li $t0, 4
	lw $t1, -2888($fp)
	mul $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	lw $t1, -2884($fp)
	add $t0, $t0, $t1
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	lw $t1, 0($t0)
	sw $t1, -2900($fp)
	lw $t0, -2900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -2904($fp)
	li $t0, 9
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
	addi $t0, $fp, -116
	sw $t0, -2924($fp)
	li $t0, 0
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
	addi $t0, $fp, -116
	sw $t0, -2944($fp)
	li $t0, 1
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
	lw $t0, -2960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -2964($fp)
	li $t0, 2
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
	lw $t0, -2980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -2984($fp)
	li $t0, 3
	sw $t0, -2988($fp)
	li $t0, 4
	lw $t1, -2988($fp)
	mul $t0, $t0, $t1
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	lw $t1, -2984($fp)
	add $t0, $t0, $t1
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	lw $t1, 0($t0)
	sw $t1, -3000($fp)
	lw $t0, -3000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -3004($fp)
	li $t0, 4
	sw $t0, -3008($fp)
	li $t0, 4
	lw $t1, -3008($fp)
	mul $t0, $t0, $t1
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	lw $t1, -3004($fp)
	add $t0, $t0, $t1
	sw $t0, -3016($fp)
	lw $t0, -3016($fp)
	lw $t1, 0($t0)
	sw $t1, -3020($fp)
	lw $t0, -3020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -3024($fp)
	li $t0, 5
	sw $t0, -3028($fp)
	li $t0, 4
	lw $t1, -3028($fp)
	mul $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -3032($fp)
	lw $t1, -3024($fp)
	add $t0, $t0, $t1
	sw $t0, -3036($fp)
	lw $t0, -3036($fp)
	lw $t1, 0($t0)
	sw $t1, -3040($fp)
	lw $t0, -3040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -3044($fp)
	li $t0, 6
	sw $t0, -3048($fp)
	li $t0, 4
	lw $t1, -3048($fp)
	mul $t0, $t0, $t1
	sw $t0, -3052($fp)
	lw $t0, -3052($fp)
	lw $t1, -3044($fp)
	add $t0, $t0, $t1
	sw $t0, -3056($fp)
	lw $t0, -3056($fp)
	lw $t1, 0($t0)
	sw $t1, -3060($fp)
	lw $t0, -3060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -116
	sw $t0, -3064($fp)
	li $t0, 7
	sw $t0, -3068($fp)
	li $t0, 4
	lw $t1, -3068($fp)
	mul $t0, $t0, $t1
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	lw $t1, -3064($fp)
	add $t0, $t0, $t1
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	lw $t1, 0($t0)
	sw $t1, -3080($fp)
	lw $t0, -3080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -892($fp)
	sw $t0, -3084($fp)
	lw $t0, -3084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -904($fp)
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -916($fp)
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -3096($fp)
	li $t0, 60623
	sw $t0, -3100($fp)
	lw $t0, -3096($fp)
	lw $t1, -3100($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3104($fp)
	lw $t0, -904($fp)
	sw $t0, -3108($fp)
	lw $t0, -3104($fp)
	lw $t1, -3108($fp)
	add $t0, $t0, $t1
	sw $t0, -3112($fp)
	li $t0, 0
	sw $t0, -3116($fp)
	li $t0, 7133
	sw $t0, -3120($fp)
	lw $t1, -3120($fp)
	li $t2, 0
	bne $t1, $t2, label692
	j label691
label691:
	li $t0, 1
	sw $t0, -3116($fp)
label692:
	li $t0, 0
	lw $t1, -3116($fp)
	sub $t0, $t0, $t1
	sw $t0, -3124($fp)
	lw $t0, -208($fp)
	sw $t0, -3128($fp)
	lw $t0, -172($fp)
	sw $t0, -3132($fp)
	lw $t0, -3128($fp)
	lw $t1, -3132($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3136($fp)
	lw $t0, -196($fp)
	sw $t0, -3140($fp)
	lw $t0, -3136($fp)
	lw $t1, -3140($fp)
	mul $t0, $t0, $t1
	sw $t0, -3144($fp)
	li $t0, 0
	sw $t0, -3148($fp)
	addi $t0, $fp, -44
	sw $t0, -3152($fp)
	lw $t0, 4($fp)
	sw $t0, -3156($fp)
	li $t0, 4
	lw $t1, -3156($fp)
	mul $t0, $t0, $t1
	sw $t0, -3160($fp)
	lw $t0, -3160($fp)
	lw $t1, -3152($fp)
	add $t0, $t0, $t1
	sw $t0, -3164($fp)
	lw $t0, -3164($fp)
	lw $t1, 0($t0)
	sw $t1, -3168($fp)
	lw $t0, -208($fp)
	sw $t0, -3172($fp)
	lw $t1, -3168($fp)
	lw $t2, -3172($fp)
	beq $t1, $t2, label693
	j label694
label693:
	li $t0, 1
	sw $t0, -3148($fp)
label694:
	li $t0, 0
	sw $t0, -3176($fp)
	li $t0, 61063
	sw $t0, -3180($fp)
	li $t0, 0
	lw $t1, -3180($fp)
	sub $t0, $t0, $t1
	sw $t0, -3184($fp)
	lw $t1, -3184($fp)
	li $t2, 0
	bne $t1, $t2, label696
	j label695
label695:
	li $t0, 1
	sw $t0, -3176($fp)
label696:
	addi $sp, $sp, -4
	lw $t0, -3112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3176($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3188($fp)
	addi $sp, $sp, 24
	lw $ra, -4($fp)
	lw $v0, -3188($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -44
	lw $t0, 4($fp)
	sw $t0, -8($fp)
	li $t0, 0
	lw $t1, -8($fp)
	sub $t0, $t0, $t1
	sw $t0, -12($fp)
	lw $t0, 4($fp)
	sw $t0, -16($fp)
	addi $sp, $sp, -4
	lw $t0, -16($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -20($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -24($fp)
	li $t0, 61702
	sw $t0, -28($fp)
	lw $t1, -28($fp)
	li $t2, 0
	bne $t1, $t2, label698
	j label697
label697:
	li $t0, 1
	sw $t0, -24($fp)
label698:
	li $t0, 55787
	sw $t0, -32($fp)
	lw $t0, -24($fp)
	lw $t1, -32($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -36($fp)
	li $t0, 0
	sw $t0, -40($fp)
	li $t0, 19990
	sw $t0, -44($fp)
	lw $t1, -44($fp)
	li $t2, 0
	bne $t1, $t2, label700
	j label699
label699:
	li $t0, 1
	sw $t0, -40($fp)
label700:
	lw $t0, -36($fp)
	lw $t1, -40($fp)
	mul $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $ra, -4($fp)
	lw $v0, -48($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2476
	li $t0, 63805
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	li $t0, 18029
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	li $t0, 25045
	sw $t0, -120($fp)
	addi $t0, $fp, -24
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
	li $t0, 30860
	sw $t0, -144($fp)
	addi $t0, $fp, -24
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
	li $t0, 6635
	sw $t0, -168($fp)
	addi $t0, $fp, -24
	sw $t0, -172($fp)
	li $t0, 2
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
	li $t0, 26206
	sw $t0, -192($fp)
	addi $t0, $fp, -24
	sw $t0, -196($fp)
	li $t0, 3
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
	li $t0, 65025
	sw $t0, -216($fp)
	addi $t0, $fp, -24
	sw $t0, -220($fp)
	li $t0, 4
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
	li $t0, 65178
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	li $t0, 6135
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	li $t0, 42033
	sw $t0, -264($fp)
	addi $t0, $fp, -64
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
	li $t0, 40087
	sw $t0, -288($fp)
	addi $t0, $fp, -64
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
	li $t0, 55883
	sw $t0, -312($fp)
	addi $t0, $fp, -64
	sw $t0, -316($fp)
	li $t0, 2
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
	li $t0, 50834
	sw $t0, -336($fp)
	addi $t0, $fp, -64
	sw $t0, -340($fp)
	li $t0, 3
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
	li $t0, 35428
	sw $t0, -360($fp)
	addi $t0, $fp, -64
	sw $t0, -364($fp)
	li $t0, 4
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
	li $t0, 1903
	sw $t0, -384($fp)
	addi $t0, $fp, -64
	sw $t0, -388($fp)
	li $t0, 5
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
	li $t0, 65063
	sw $t0, -408($fp)
	addi $t0, $fp, -64
	sw $t0, -412($fp)
	li $t0, 6
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
	li $t0, 44969
	sw $t0, -432($fp)
	addi $t0, $fp, -64
	sw $t0, -436($fp)
	li $t0, 7
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
	li $t0, 23084
	sw $t0, -456($fp)
	addi $t0, $fp, -64
	sw $t0, -460($fp)
	li $t0, 8
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
	li $t0, 44643
	sw $t0, -480($fp)
	addi $t0, $fp, -64
	sw $t0, -484($fp)
	li $t0, 9
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
	li $t0, 23143
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	li $t0, 4385
	sw $t0, -516($fp)
	addi $t0, $fp, -84
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
	li $t0, 880
	sw $t0, -540($fp)
	addi $t0, $fp, -84
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
	li $t0, 49409
	sw $t0, -564($fp)
	addi $t0, $fp, -84
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
	li $t0, 58702
	sw $t0, -588($fp)
	addi $t0, $fp, -84
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
	li $t0, 8620
	sw $t0, -612($fp)
	addi $t0, $fp, -84
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
	li $t0, 44936
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	li $t0, 300
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	li $t0, 3707
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	li $t0, 41102
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	li $t0, 56087
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	li $t0, 23698
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	li $t0, 39371
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	li $t0, 8581
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	li $t0, 48743
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	li $t0, 4695
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	li $t0, 15216
	sw $t0, -756($fp)
	addi $t0, $fp, -92
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
	li $t0, 9414
	sw $t0, -780($fp)
	addi $t0, $fp, -92
	sw $t0, -784($fp)
	li $t0, 1
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
	li $t0, 4185
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	li $t0, 14859
	sw $t0, -816($fp)
	li $t0, 0
	sw $t0, -820($fp)
	li $t0, 15549
	sw $t0, -824($fp)
	lw $t1, -824($fp)
	li $t2, 0
	bne $t1, $t2, label702
	j label701
label701:
	li $t0, 1
	sw $t0, -820($fp)
label702:
	li $t0, 46218
	sw $t0, -828($fp)
	li $t0, 54946
	sw $t0, -832($fp)
	lw $t0, -828($fp)
	lw $t1, -832($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -836($fp)
	li $t0, 5896
	sw $t0, -840($fp)
	lw $t0, -836($fp)
	lw $t1, -840($fp)
	mul $t0, $t0, $t1
	sw $t0, -844($fp)
	addi $sp, $sp, -4
	lw $t0, -844($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -848($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -852($fp)
	lw $t0, -652($fp)
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
	lw $t0, -848($fp)
	lw $t1, -868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -872($fp)
	lw $t1, -872($fp)
	li $t2, 0
	bne $t1, $t2, label706
	j label704
label706:
	li $t0, 0
	sw $t0, -876($fp)
	li $t0, 31516
	sw $t0, -880($fp)
	lw $t0, -664($fp)
	sw $t0, -884($fp)
	lw $t1, -880($fp)
	lw $t2, -884($fp)
	blt $t1, $t2, label707
	j label708
label707:
	li $t0, 1
	sw $t0, -876($fp)
label708:
	addi $t0, $fp, -24
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
	lw $t1, -876($fp)
	lw $t2, -904($fp)
	beq $t1, $t2, label703
	j label704
label703:
	jal f11
	sw $v0, -908($fp)
	addi $sp, $sp, 4
	lw $t1, -908($fp)
	li $t2, 0
	bne $t1, $t2, label709
	j label710
label709:
label712:
	addi $t0, $fp, -24
	sw $t0, -912($fp)
	li $t0, 2
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
	lw $t1, -928($fp)
	li $t2, 0
	bne $t1, $t2, label713
	j label714
label713:
	li $t0, 0
	sw $t0, -932($fp)
	jal f11
	sw $v0, -936($fp)
	addi $sp, $sp, 4
	lw $t1, -936($fp)
	li $t2, 0
	bne $t1, $t2, label717
	j label716
label717:
	addi $t0, $fp, -92
	sw $t0, -940($fp)
	li $t0, 0
	sw $t0, -944($fp)
	lw $t0, -748($fp)
	sw $t0, -948($fp)
	li $t0, 30883
	sw $t0, -952($fp)
	lw $t1, -948($fp)
	lw $t2, -952($fp)
	beq $t1, $t2, label718
	j label719
label718:
	li $t0, 1
	sw $t0, -944($fp)
label719:
	li $t0, 4
	lw $t1, -944($fp)
	mul $t0, $t0, $t1
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	lw $t1, -940($fp)
	add $t0, $t0, $t1
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	lw $t1, 0($t0)
	sw $t1, -964($fp)
	lw $t1, -964($fp)
	li $t2, 0
	bne $t1, $t2, label715
	j label716
label715:
	li $t0, 1
	sw $t0, -932($fp)
label716:
	j label712
label714:
	j label711
label710:
	li $t0, 0
	sw $t0, -968($fp)
	addi $t0, $fp, -24
	sw $t0, -972($fp)
	lw $t0, -112($fp)
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
	li $t0, 0
	lw $t1, -988($fp)
	sub $t0, $t0, $t1
	sw $t0, -992($fp)
	li $t0, 0
	lw $t1, -992($fp)
	sub $t0, $t0, $t1
	sw $t0, -996($fp)
	lw $t1, -996($fp)
	li $t2, 0
	bne $t1, $t2, label720
	j label722
label722:
	addi $t0, $fp, -24
	sw $t0, -1000($fp)
	li $t0, 2
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
	lw $t1, -1016($fp)
	li $t2, 0
	bne $t1, $t2, label721
	j label720
label720:
	li $t0, 1
	sw $t0, -968($fp)
label721:
	lw $ra, -4($fp)
	lw $v0, -968($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label711:
	j label705
label704:
label723:
	addi $t0, $fp, -24
	sw $t0, -1020($fp)
	addi $t0, $fp, -84
	sw $t0, -1024($fp)
	lw $t0, -724($fp)
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
	li $t0, 4
	lw $t1, -1040($fp)
	mul $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	lw $t1, -1020($fp)
	add $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	lw $t1, 0($t0)
	sw $t1, -1052($fp)
	lw $t1, -1052($fp)
	li $t2, 0
	bne $t1, $t2, label725
	j label724
label724:
	li $t0, 0
	sw $t0, -1056($fp)
	li $t0, 35268
	sw $t0, -1060($fp)
	lw $t1, -1060($fp)
	li $t2, 0
	bne $t1, $t2, label726
	j label728
label728:
	li $t0, 0
	sw $t0, -1064($fp)
	li $t0, 11031
	sw $t0, -1068($fp)
	li $t0, 11287
	sw $t0, -1072($fp)
	lw $t0, -1068($fp)
	lw $t1, -1072($fp)
	add $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t0, -244($fp)
	sw $t0, -1080($fp)
	lw $t1, -1076($fp)
	lw $t2, -1080($fp)
	blt $t1, $t2, label729
	j label730
label729:
	li $t0, 1
	sw $t0, -1064($fp)
label730:
	addi $t0, $fp, -24
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
	li $t0, 23359
	sw $t0, -1104($fp)
	lw $t0, -1100($fp)
	lw $t1, -1104($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1108($fp)
	li $t0, 0
	sw $t0, -1112($fp)
	li $t0, 28434
	sw $t0, -1116($fp)
	lw $t1, -1116($fp)
	li $t2, 0
	bne $t1, $t2, label734
	j label733
label734:
	li $t0, 19651
	sw $t0, -1120($fp)
	lw $t1, -1120($fp)
	li $t2, 0
	bne $t1, $t2, label731
	j label733
label733:
	lw $t0, -652($fp)
	sw $t0, -1124($fp)
	lw $t1, -1124($fp)
	li $t2, 0
	bne $t1, $t2, label731
	j label732
label731:
	li $t0, 1
	sw $t0, -1112($fp)
label732:
	li $t0, 0
	sw $t0, -1128($fp)
	lw $t0, -112($fp)
	sw $t0, -1132($fp)
	lw $t0, -256($fp)
	sw $t0, -1136($fp)
	lw $t1, -1132($fp)
	lw $t2, -1136($fp)
	bne $t1, $t2, label735
	j label737
label737:
	lw $t0, -652($fp)
	sw $t0, -1140($fp)
	lw $t1, -1140($fp)
	li $t2, 0
	bne $t1, $t2, label735
	j label736
label735:
	li $t0, 1
	sw $t0, -1128($fp)
label736:
	addi $sp, $sp, -4
	lw $t0, -1108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1128($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1144($fp)
	addi $sp, $sp, 16
	lw $t1, -1064($fp)
	lw $t2, -1144($fp)
	bne $t1, $t2, label726
	j label727
label726:
	li $t0, 1
	sw $t0, -1056($fp)
label727:
	j label723
label725:
label705:
	li $t0, 0
	sw $t0, -1148($fp)
	li $t0, 31790
	sw $t0, -1152($fp)
	lw $t1, -1152($fp)
	li $t2, 0
	bne $t1, $t2, label742
	j label741
label741:
	li $t0, 1
	sw $t0, -1148($fp)
label742:
	li $t0, 0
	lw $t1, -1148($fp)
	sub $t0, $t0, $t1
	sw $t0, -1156($fp)
	lw $t1, -1156($fp)
	li $t2, 0
	bne $t1, $t2, label738
	j label739
label738:
	li $t0, 0
	sw $t0, -1160($fp)
	li $t0, 47057
	sw $t0, -1164($fp)
	li $t0, 5625
	sw $t0, -1168($fp)
	lw $t1, -1164($fp)
	lw $t2, -1168($fp)
	bne $t1, $t2, label747
	j label748
label747:
	li $t0, 1
	sw $t0, -1160($fp)
label748:
	lw $t0, -100($fp)
	sw $t0, -1172($fp)
	lw $t0, -748($fp)
	sw $t0, -1176($fp)
	lw $t0, -1172($fp)
	lw $t1, -1176($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1180($fp)
	lw $t0, -112($fp)
	sw $t0, -1184($fp)
	li $t0, 19286
	sw $t0, -1188($fp)
	lw $t0, -1184($fp)
	lw $t1, -1188($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1192($fp)
	li $t0, 0
	lw $t1, -1192($fp)
	sub $t0, $t0, $t1
	sw $t0, -1196($fp)
	addi $sp, $sp, -4
	lw $t0, -1160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1196($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1200($fp)
	addi $sp, $sp, 16
	lw $t1, -1200($fp)
	li $t2, 0
	bne $t1, $t2, label746
	j label744
label746:
	li $t0, 0
	sw $t0, -1204($fp)
	lw $t0, -808($fp)
	sw $t0, -1208($fp)
	lw $t1, -1208($fp)
	li $t2, 0
	bne $t1, $t2, label750
	j label749
label749:
	li $t0, 1
	sw $t0, -1204($fp)
label750:
	li $t0, 0
	lw $t1, -1204($fp)
	sub $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t1, -1212($fp)
	li $t2, 0
	bne $t1, $t2, label743
	j label744
label743:
	li $t0, 0
	sw $t0, -1216($fp)
	li $t0, 0
	sw $t0, -1220($fp)
	li $t0, 0
	sw $t0, -1224($fp)
	lw $t0, -112($fp)
	sw $t0, -1228($fp)
	lw $t1, -1228($fp)
	li $t2, 0
	bne $t1, $t2, label755
	j label756
label755:
	li $t0, 1
	sw $t0, -1224($fp)
label756:
	li $t0, 27867
	sw $t0, -1232($fp)
	lw $t1, -1224($fp)
	lw $t2, -1232($fp)
	ble $t1, $t2, label753
	j label754
label753:
	li $t0, 1
	sw $t0, -1220($fp)
label754:
	lw $t0, -712($fp)
	sw $t0, -1236($fp)
	lw $t1, -1220($fp)
	lw $t2, -1236($fp)
	bgt $t1, $t2, label751
	j label752
label751:
	li $t0, 1
	sw $t0, -1216($fp)
label752:
	j label745
label744:
label757:
	li $t0, 0
	sw $t0, -1240($fp)
	li $t0, 34269
	sw $t0, -1244($fp)
	lw $t0, -724($fp)
	sw $t0, -1248($fp)
	lw $t0, -1244($fp)
	lw $t1, -1248($fp)
	add $t0, $t0, $t1
	sw $t0, -1252($fp)
	lw $t1, -1252($fp)
	li $t2, 0
	bne $t1, $t2, label762
	j label761
label762:
	lw $t0, -736($fp)
	sw $t0, -1256($fp)
	lw $t1, -1256($fp)
	li $t2, 0
	bne $t1, $t2, label760
	j label761
label760:
	li $t0, 1
	sw $t0, -1240($fp)
label761:
	li $t0, 0
	sw $t0, -1260($fp)
	li $t0, 0
	sw $t0, -1264($fp)
	li $t0, 57748
	sw $t0, -1268($fp)
	lw $t1, -1268($fp)
	li $t2, 0
	bne $t1, $t2, label768
	j label766
label768:
	lw $t0, -112($fp)
	sw $t0, -1272($fp)
	lw $t1, -1272($fp)
	li $t2, 0
	bne $t1, $t2, label767
	j label766
label767:
	li $t0, 10926
	sw $t0, -1276($fp)
	lw $t1, -1276($fp)
	li $t2, 0
	bne $t1, $t2, label765
	j label766
label765:
	li $t0, 1
	sw $t0, -1264($fp)
label766:
	li $t0, 0
	sw $t0, -1280($fp)
	li $t0, 0
	sw $t0, -1284($fp)
	li $t0, 26705
	sw $t0, -1288($fp)
	li $t0, 6654
	sw $t0, -1292($fp)
	lw $t1, -1288($fp)
	lw $t2, -1292($fp)
	beq $t1, $t2, label771
	j label772
label771:
	li $t0, 1
	sw $t0, -1284($fp)
label772:
	li $t0, 3386
	sw $t0, -1296($fp)
	lw $t1, -1284($fp)
	lw $t2, -1296($fp)
	bne $t1, $t2, label769
	j label770
label769:
	li $t0, 1
	sw $t0, -1280($fp)
label770:
	li $t0, 0
	sw $t0, -1300($fp)
	lw $t0, -808($fp)
	sw $t0, -1304($fp)
	lw $t1, -1304($fp)
	li $t2, 0
	bne $t1, $t2, label776
	j label775
label776:
	li $t0, 47352
	sw $t0, -1308($fp)
	lw $t1, -1308($fp)
	li $t2, 0
	bne $t1, $t2, label773
	j label775
label775:
	li $t0, 61123
	sw $t0, -1312($fp)
	lw $t1, -1312($fp)
	li $t2, 0
	bne $t1, $t2, label773
	j label774
label773:
	li $t0, 1
	sw $t0, -1300($fp)
label774:
	li $t0, 0
	sw $t0, -1316($fp)
	li $t0, 55227
	sw $t0, -1320($fp)
	li $t0, 0
	sw $t0, -1324($fp)
	li $t0, 14506
	sw $t0, -1328($fp)
	lw $t0, -640($fp)
	sw $t0, -1332($fp)
	lw $t1, -1328($fp)
	lw $t2, -1332($fp)
	blt $t1, $t2, label782
	j label781
label782:
	li $t0, 57942
	sw $t0, -1336($fp)
	lw $t1, -1336($fp)
	li $t2, 0
	bne $t1, $t2, label780
	j label781
label780:
	li $t0, 1
	sw $t0, -1324($fp)
label781:
	li $t0, 43083
	sw $t0, -1340($fp)
	li $t0, 39678
	sw $t0, -1344($fp)
	lw $t0, -1340($fp)
	lw $t1, -1344($fp)
	sub $t0, $t0, $t1
	sw $t0, -1348($fp)
	lw $t0, -244($fp)
	sw $t0, -1352($fp)
	li $t0, 0
	sw $t0, -1356($fp)
	lw $t0, -112($fp)
	sw $t0, -1360($fp)
	lw $t0, -652($fp)
	sw $t0, -1364($fp)
	lw $t0, -1360($fp)
	lw $t1, -1364($fp)
	sub $t0, $t0, $t1
	sw $t0, -1368($fp)
	li $t0, 10321
	sw $t0, -1372($fp)
	lw $t1, -1368($fp)
	lw $t2, -1372($fp)
	bgt $t1, $t2, label783
	j label784
label783:
	li $t0, 1
	sw $t0, -1356($fp)
label784:
	addi $sp, $sp, -4
	lw $t0, -1320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1356($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1376($fp)
	addi $sp, $sp, 24
	lw $t1, -1376($fp)
	li $t2, 0
	bne $t1, $t2, label779
	j label778
label779:
	li $t0, 60724
	sw $t0, -1380($fp)
	lw $t1, -1380($fp)
	li $t2, 0
	bne $t1, $t2, label777
	j label778
label777:
	li $t0, 1
	sw $t0, -1316($fp)
label778:
	addi $sp, $sp, -4
	lw $t0, -1264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1316($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1384($fp)
	addi $sp, $sp, 20
	lw $t0, -724($fp)
	sw $t0, -1388($fp)
	lw $t1, -1384($fp)
	lw $t2, -1388($fp)
	blt $t1, $t2, label763
	j label764
label763:
	li $t0, 1
	sw $t0, -1260($fp)
label764:
	li $t0, 30264
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -1396($fp)
	addi $sp, $sp, -4
	lw $t0, -1240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1396($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -1400($fp)
	addi $sp, $sp, 16
	lw $t1, -1400($fp)
	li $t2, 0
	bne $t1, $t2, label758
	j label759
label758:
	li $t0, 2363
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	sw $t0, -1420($fp)
	li $t0, 38340
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	sw $t0, -1432($fp)
	li $t0, 4001
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	sw $t0, -1444($fp)
	li $t0, 13395
	sw $t0, -1448($fp)
	addi $t0, $fp, -1408
	sw $t0, -1452($fp)
	li $t0, 0
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
	li $t0, 49628
	sw $t0, -1472($fp)
	addi $t0, $fp, -1408
	sw $t0, -1476($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -1496($fp)
	addi $t0, $fp, -24
	sw $t0, -1500($fp)
	li $t0, 0
	sw $t0, -1504($fp)
	li $t0, 0
	sw $t0, -1508($fp)
	lw $t0, -808($fp)
	sw $t0, -1512($fp)
	lw $t0, -712($fp)
	sw $t0, -1516($fp)
	lw $t1, -1512($fp)
	lw $t2, -1516($fp)
	bne $t1, $t2, label789
	j label790
label789:
	li $t0, 1
	sw $t0, -1508($fp)
label790:
	li $t0, 32436
	sw $t0, -1520($fp)
	lw $t1, -1508($fp)
	lw $t2, -1520($fp)
	beq $t1, $t2, label787
	j label788
label787:
	li $t0, 1
	sw $t0, -1504($fp)
label788:
	li $t0, 4
	lw $t1, -1504($fp)
	mul $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	lw $t1, -1500($fp)
	add $t0, $t0, $t1
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	lw $t1, 0($t0)
	sw $t1, -1532($fp)
	addi $t0, $fp, -92
	sw $t0, -1536($fp)
	lw $t0, -724($fp)
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
	addi $t0, $fp, -24
	sw $t0, -1556($fp)
	li $t0, 2
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
	lw $t0, -1552($fp)
	lw $t1, -1572($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1576($fp)
	lw $t1, -1532($fp)
	lw $t2, -1576($fp)
	ble $t1, $t2, label785
	j label786
label785:
	li $t0, 1
	sw $t0, -1496($fp)
label786:
	li $t0, 61170
	sw $t0, -1580($fp)
	lw $t0, -1440($fp)
	sw $t0, -1584($fp)
	li $t0, 0
	sw $t0, -1588($fp)
	lw $t0, -112($fp)
	sw $t0, -1592($fp)
	li $t0, 56405
	sw $t0, -1596($fp)
	lw $t1, -1592($fp)
	lw $t2, -1596($fp)
	bne $t1, $t2, label791
	j label793
label793:
	li $t0, 6569
	sw $t0, -1600($fp)
	lw $t1, -1600($fp)
	li $t2, 0
	bne $t1, $t2, label791
	j label792
label791:
	li $t0, 1
	sw $t0, -1588($fp)
label792:
	addi $sp, $sp, -4
	lw $t0, -1584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1588($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1604($fp)
	addi $sp, $sp, 12
	lw $t0, -1580($fp)
	lw $t1, -1604($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1608($fp)
	addi $t0, $fp, -24
	sw $t0, -1612($fp)
	lw $t0, -664($fp)
	sw $t0, -1616($fp)
	lw $t0, -1416($fp)
	sw $t0, -1620($fp)
	lw $t0, -1616($fp)
	lw $t1, -1620($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1624($fp)
	li $t0, 4
	lw $t1, -1624($fp)
	mul $t0, $t0, $t1
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	lw $t1, -1612($fp)
	add $t0, $t0, $t1
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	lw $t1, 0($t0)
	sw $t1, -1636($fp)
	lw $t0, -1608($fp)
	lw $t1, -1636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1640($fp)
	li $t0, 0
	sw $t0, -1644($fp)
	li $t0, 14920
	sw $t0, -1648($fp)
	lw $t1, -1648($fp)
	li $t2, 0
	bne $t1, $t2, label795
	j label796
label796:
	li $t0, 0
	sw $t0, -1652($fp)
	li $t0, 0
	sw $t0, -1656($fp)
	lw $t0, -724($fp)
	sw $t0, -1660($fp)
	lw $t0, -244($fp)
	sw $t0, -1664($fp)
	lw $t1, -1660($fp)
	lw $t2, -1664($fp)
	bne $t1, $t2, label799
	j label800
label799:
	li $t0, 1
	sw $t0, -1656($fp)
label800:
	li $t0, 22516
	sw $t0, -1668($fp)
	lw $t1, -1656($fp)
	lw $t2, -1668($fp)
	beq $t1, $t2, label797
	j label798
label797:
	li $t0, 1
	sw $t0, -1652($fp)
label798:
	lw $t0, -664($fp)
	sw $t0, -1672($fp)
	li $t0, 2655
	sw $t0, -1676($fp)
	li $t0, 0
	sw $t0, -1680($fp)
	li $t0, 12195
	sw $t0, -1684($fp)
	li $t0, 42787
	sw $t0, -1688($fp)
	lw $t0, -1684($fp)
	lw $t1, -1688($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1692($fp)
	lw $t0, -724($fp)
	sw $t0, -1696($fp)
	lw $t1, -1692($fp)
	lw $t2, -1696($fp)
	ble $t1, $t2, label801
	j label802
label801:
	li $t0, 1
	sw $t0, -1680($fp)
label802:
	li $t0, 0
	sw $t0, -1700($fp)
	lw $t0, -808($fp)
	sw $t0, -1704($fp)
	lw $t1, -1704($fp)
	li $t2, 0
	bne $t1, $t2, label803
	j label804
label803:
	li $t0, 1
	sw $t0, -1700($fp)
label804:
	li $t0, 0
	sw $t0, -1708($fp)
	li $t0, 0
	sw $t0, -1712($fp)
	li $t0, 37926
	sw $t0, -1716($fp)
	lw $t1, -1716($fp)
	li $t2, 0
	bne $t1, $t2, label808
	j label807
label807:
	li $t0, 1
	sw $t0, -1712($fp)
label808:
	lw $t0, -1428($fp)
	sw $t0, -1720($fp)
	lw $t1, -1712($fp)
	lw $t2, -1720($fp)
	bne $t1, $t2, label805
	j label806
label805:
	li $t0, 1
	sw $t0, -1708($fp)
label806:
	addi $sp, $sp, -4
	lw $t0, -1672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1708($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1724($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -1652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1724($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1728($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -1728($fp)
	sub $t0, $t0, $t1
	sw $t0, -1732($fp)
	lw $t1, -1732($fp)
	li $t2, 0
	bne $t1, $t2, label794
	j label795
label794:
	li $t0, 1
	sw $t0, -1644($fp)
label795:
	li $t0, 0
	sw $t0, -1736($fp)
	addi $t0, $fp, -92
	sw $t0, -1740($fp)
	lw $t0, -1416($fp)
	sw $t0, -1744($fp)
	li $t0, 20335
	sw $t0, -1748($fp)
	lw $t0, -1744($fp)
	lw $t1, -1748($fp)
	sub $t0, $t0, $t1
	sw $t0, -1752($fp)
	li $t0, 4
	lw $t1, -1752($fp)
	mul $t0, $t0, $t1
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	lw $t1, -1740($fp)
	add $t0, $t0, $t1
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	lw $t1, 0($t0)
	sw $t1, -1764($fp)
	li $t0, 0
	sw $t0, -1768($fp)
	li $t0, 0
	sw $t0, -1772($fp)
	addi $t0, $fp, -1408
	sw $t0, -1776($fp)
	lw $t0, -724($fp)
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
	li $t0, 42333
	sw $t0, -1796($fp)
	lw $t1, -1792($fp)
	lw $t2, -1796($fp)
	bgt $t1, $t2, label813
	j label814
label813:
	li $t0, 1
	sw $t0, -1772($fp)
label814:
	lw $t0, -1416($fp)
	sw $t0, -1800($fp)
	lw $t0, -700($fp)
	sw $t0, -1804($fp)
	lw $t0, -1800($fp)
	lw $t1, -1804($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1808($fp)
	lw $t1, -1772($fp)
	lw $t2, -1808($fp)
	ble $t1, $t2, label811
	j label812
label811:
	li $t0, 1
	sw $t0, -1768($fp)
label812:
	lw $t1, -1764($fp)
	lw $t2, -1768($fp)
	bne $t1, $t2, label809
	j label810
label809:
	li $t0, 1
	sw $t0, -1736($fp)
label810:
	j label757
label759:
label745:
	j label740
label739:
	li $t0, 60094
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -1816($fp)
	li $t0, 32210
	sw $t0, -1820($fp)
	li $t0, 0
	sw $t0, -1824($fp)
	li $t0, 12741
	sw $t0, -1828($fp)
	li $t0, 32025
	sw $t0, -1832($fp)
	lw $t0, -1828($fp)
	lw $t1, -1832($fp)
	sub $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t1, -1836($fp)
	li $t2, 0
	bne $t1, $t2, label820
	j label819
label820:
	lw $t0, -244($fp)
	sw $t0, -1840($fp)
	lw $t1, -1840($fp)
	li $t2, 0
	bne $t1, $t2, label818
	j label819
label818:
	li $t0, 1
	sw $t0, -1824($fp)
label819:
	li $t0, 0
	sw $t0, -1844($fp)
	lw $t0, -748($fp)
	sw $t0, -1848($fp)
	lw $t0, -676($fp)
	sw $t0, -1852($fp)
	lw $t1, -1848($fp)
	lw $t2, -1852($fp)
	bge $t1, $t2, label821
	j label823
label823:
	li $t0, 37022
	sw $t0, -1856($fp)
	lw $t1, -1856($fp)
	li $t2, 0
	bne $t1, $t2, label821
	j label822
label821:
	li $t0, 1
	sw $t0, -1844($fp)
label822:
	addi $sp, $sp, -4
	lw $t0, -1820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1844($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -1860($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -1864($fp)
	lw $t0, -688($fp)
	sw $t0, -1868($fp)
	lw $t0, -724($fp)
	sw $t0, -1872($fp)
	lw $t1, -1868($fp)
	lw $t2, -1872($fp)
	bgt $t1, $t2, label826
	j label825
label826:
	lw $t0, -724($fp)
	sw $t0, -1876($fp)
	lw $t1, -1876($fp)
	li $t2, 0
	bne $t1, $t2, label824
	j label825
label824:
	li $t0, 1
	sw $t0, -1864($fp)
label825:
	addi $sp, $sp, -4
	lw $t0, -1816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1864($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1880($fp)
	addi $sp, $sp, 16
	lw $t0, -1880($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -1884($fp)
	lw $t1, -1884($fp)
	li $t2, 0
	bne $t1, $t2, label815
	j label816
label815:
	lw $t0, -724($fp)
	sw $t0, -1888($fp)
	lw $ra, -4($fp)
	lw $v0, -1888($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label817
label816:
	li $t0, 0
	sw $t0, -1892($fp)
	addi $t0, $fp, -64
	sw $t0, -1896($fp)
	li $t0, 1
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
	li $t0, 1212
	sw $t0, -1916($fp)
	lw $t0, -1912($fp)
	lw $t1, -1916($fp)
	mul $t0, $t0, $t1
	sw $t0, -1920($fp)
	addi $sp, $sp, -4
	lw $t0, -1920($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -1924($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -1924($fp)
	sub $t0, $t0, $t1
	sw $t0, -1928($fp)
	li $t0, 0
	lw $t1, -1928($fp)
	sub $t0, $t0, $t1
	sw $t0, -1932($fp)
	li $t0, 0
	sw $t0, -1936($fp)
	li $t0, 30999
	sw $t0, -1940($fp)
	lw $t1, -1940($fp)
	li $t2, 0
	bne $t1, $t2, label830
	j label829
label829:
	li $t0, 1
	sw $t0, -1936($fp)
label830:
	li $t0, 51128
	sw $t0, -1944($fp)
	lw $t0, -1936($fp)
	lw $t1, -1944($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1948($fp)
	lw $t1, -1932($fp)
	lw $t2, -1948($fp)
	bge $t1, $t2, label827
	j label828
label827:
	li $t0, 1
	sw $t0, -1892($fp)
label828:
label817:
label740:
	jal f11
	sw $v0, -1952($fp)
	addi $sp, $sp, 4
	lw $t0, -112($fp)
	sw $t0, -1956($fp)
	li $t0, 0
	lw $t1, -1956($fp)
	sub $t0, $t0, $t1
	sw $t0, -1960($fp)
	lw $t0, -1952($fp)
	lw $t1, -1960($fp)
	mul $t0, $t0, $t1
	sw $t0, -1964($fp)
	li $t0, 12138
	sw $t0, -1968($fp)
	lw $t0, -1964($fp)
	lw $t1, -1968($fp)
	sub $t0, $t0, $t1
	sw $t0, -1972($fp)
	lw $t0, -100($fp)
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -112($fp)
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1984($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -2004($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -2024($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -2044($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -2064($fp)
	li $t0, 4
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
	lw $t0, -244($fp)
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -256($fp)
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -2092($fp)
	li $t0, 0
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
	addi $t0, $fp, -64
	sw $t0, -2112($fp)
	li $t0, 1
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
	addi $t0, $fp, -64
	sw $t0, -2132($fp)
	li $t0, 2
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
	addi $t0, $fp, -64
	sw $t0, -2152($fp)
	li $t0, 3
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
	addi $t0, $fp, -64
	sw $t0, -2172($fp)
	li $t0, 4
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
	addi $t0, $fp, -64
	sw $t0, -2192($fp)
	li $t0, 5
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
	lw $t0, -2208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -2212($fp)
	li $t0, 6
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
	lw $t0, -2228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -2232($fp)
	li $t0, 7
	sw $t0, -2236($fp)
	li $t0, 4
	lw $t1, -2236($fp)
	mul $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	lw $t1, -2232($fp)
	add $t0, $t0, $t1
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	lw $t1, 0($t0)
	sw $t1, -2248($fp)
	lw $t0, -2248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -2252($fp)
	li $t0, 8
	sw $t0, -2256($fp)
	li $t0, 4
	lw $t1, -2256($fp)
	mul $t0, $t0, $t1
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	lw $t1, -2252($fp)
	add $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t0, -2264($fp)
	lw $t1, 0($t0)
	sw $t1, -2268($fp)
	lw $t0, -2268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -2272($fp)
	li $t0, 9
	sw $t0, -2276($fp)
	li $t0, 4
	lw $t1, -2276($fp)
	mul $t0, $t0, $t1
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	lw $t1, -2272($fp)
	add $t0, $t0, $t1
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	lw $t1, 0($t0)
	sw $t1, -2288($fp)
	lw $t0, -2288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -2296($fp)
	li $t0, 0
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
	addi $t0, $fp, -84
	sw $t0, -2316($fp)
	li $t0, 1
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
	addi $t0, $fp, -84
	sw $t0, -2336($fp)
	li $t0, 2
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
	addi $t0, $fp, -84
	sw $t0, -2356($fp)
	li $t0, 3
	sw $t0, -2360($fp)
	li $t0, 4
	lw $t1, -2360($fp)
	mul $t0, $t0, $t1
	sw $t0, -2364($fp)
	lw $t0, -2364($fp)
	lw $t1, -2356($fp)
	add $t0, $t0, $t1
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	lw $t1, 0($t0)
	sw $t1, -2372($fp)
	lw $t0, -2372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -2376($fp)
	li $t0, 4
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
	lw $t0, -640($fp)
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -652($fp)
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -664($fp)
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -724($fp)
	sw $t0, -2424($fp)
	lw $t0, -2424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -736($fp)
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -748($fp)
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -2436($fp)
	li $t0, 0
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
	addi $t0, $fp, -92
	sw $t0, -2456($fp)
	li $t0, 1
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
	lw $t0, -808($fp)
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 65268
	sw $t0, -2480($fp)
	lw $ra, -4($fp)
	lw $v0, -2480($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f15:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -36
	li $t0, 53491
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	li $t0, 50479
	sw $t0, -24($fp)
	lw $t0, -12($fp)
	sw $t0, -28($fp)
	lw $t1, -24($fp)
	lw $t2, -28($fp)
	beq $t1, $t2, label831
	j label832
label831:
	li $t0, 1
	sw $t0, -20($fp)
label832:
	addi $sp, $sp, -4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -32($fp)
	addi $sp, $sp, 8
	lw $t0, -12($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 3734
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
