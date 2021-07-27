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
	addi $sp, $sp, -2724
	li $t0, 19284
	sw $t0, -60($fp)
	addi $t0, $fp, -16
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
	li $t0, 32631
	sw $t0, -84($fp)
	addi $t0, $fp, -16
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
	li $t0, 34164
	sw $t0, -108($fp)
	addi $t0, $fp, -16
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
	li $t0, 18365
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	li $t0, 58682
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	li $t0, 570
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	li $t0, 47964
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	li $t0, 59179
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	li $t0, 44139
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	li $t0, 45800
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	li $t0, 5843
	sw $t0, -216($fp)
	addi $t0, $fp, -56
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
	li $t0, 27125
	sw $t0, -240($fp)
	addi $t0, $fp, -56
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
	li $t0, 25748
	sw $t0, -264($fp)
	addi $t0, $fp, -56
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
	li $t0, 63927
	sw $t0, -288($fp)
	addi $t0, $fp, -56
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
	li $t0, 55194
	sw $t0, -312($fp)
	addi $t0, $fp, -56
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
	li $t0, 11946
	sw $t0, -336($fp)
	addi $t0, $fp, -56
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
	li $t0, 48796
	sw $t0, -360($fp)
	addi $t0, $fp, -56
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
	li $t0, 1975
	sw $t0, -384($fp)
	addi $t0, $fp, -56
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
	li $t0, 22654
	sw $t0, -408($fp)
	addi $t0, $fp, -56
	sw $t0, -412($fp)
	li $t0, 8
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
	li $t0, 64798
	sw $t0, -432($fp)
	addi $t0, $fp, -56
	sw $t0, -436($fp)
	li $t0, 9
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
	li $t0, 41192
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	li $t0, 38957
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	li $t0, 25776
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	li $t0, 61821
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	li $t0, 52901
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	li $t0, 15932
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	li $t0, 0
	sw $t0, -528($fp)
	lw $t0, -484($fp)
	sw $t0, -532($fp)
	lw $t1, -532($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label124
label126:
	lw $t0, -508($fp)
	sw $t0, -536($fp)
	lw $t1, -536($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label125
label124:
	li $t0, 1
	sw $t0, -528($fp)
label125:
	addi $sp, $sp, -4
	lw $t0, -528($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -540($fp)
	addi $sp, $sp, 8
	lw $t1, -540($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
label127:
	li $t0, 51032
	sw $t0, -544($fp)
	li $t0, 0
	lw $t1, -544($fp)
	sub $t0, $t0, $t1
	sw $t0, -548($fp)
	li $t0, 0
	lw $t1, -548($fp)
	sub $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t0, -184($fp)
	sw $t0, -556($fp)
	lw $t0, -552($fp)
	lw $t1, -556($fp)
	sub $t0, $t0, $t1
	sw $t0, -560($fp)
	lw $t1, -560($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label129
label128:
	li $t0, 0
	sw $t0, -564($fp)
	lw $t0, -496($fp)
	sw $t0, -568($fp)
	lw $t1, -568($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label134
label134:
	li $t0, 1
	sw $t0, -564($fp)
label135:
	li $t0, 39627
	sw $t0, -572($fp)
	lw $t0, -564($fp)
	lw $t1, -572($fp)
	mul $t0, $t0, $t1
	sw $t0, -576($fp)
	lw $t1, -576($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label133
label133:
	li $t0, 0
	sw $t0, -580($fp)
	li $t0, 0
	sw $t0, -584($fp)
	lw $t0, -496($fp)
	sw $t0, -588($fp)
	lw $t1, -588($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label138
label138:
	li $t0, 1
	sw $t0, -584($fp)
label139:
	addi $sp, $sp, -4
	lw $t0, -584($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -592($fp)
	addi $sp, $sp, 8
	lw $t1, -592($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label136
label136:
	li $t0, 1
	sw $t0, -580($fp)
label137:
	lw $t0, -460($fp)
	sw $t0, -596($fp)
	lw $t0, -184($fp)
	sw $t0, -600($fp)
	lw $t0, -596($fp)
	lw $t1, -600($fp)
	mul $t0, $t0, $t1
	sw $t0, -604($fp)
	li $t0, 1693
	sw $t0, -608($fp)
	lw $t0, -604($fp)
	lw $t1, -608($fp)
	mul $t0, $t0, $t1
	sw $t0, -612($fp)
	addi $sp, $sp, -4
	lw $t0, -612($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -616($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -616($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -620($fp)
	addi $sp, $sp, 8
	lw $t0, -580($fp)
	lw $t1, -620($fp)
	sub $t0, $t0, $t1
	sw $t0, -624($fp)
	lw $t1, -624($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label131
label130:
	li $t0, 0
	sw $t0, -628($fp)
	li $t0, 0
	sw $t0, -632($fp)
	li $t0, 25530
	sw $t0, -636($fp)
	li $t0, 7564
	sw $t0, -640($fp)
	lw $t0, -636($fp)
	lw $t1, -640($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -644($fp)
	lw $t1, -644($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label147
label147:
	li $t0, 20977
	sw $t0, -648($fp)
	lw $t1, -648($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label146
label145:
	li $t0, 1
	sw $t0, -632($fp)
label146:
	addi $sp, $sp, -4
	lw $t0, -632($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -652($fp)
	addi $sp, $sp, 8
	lw $t1, -652($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label143
label143:
	li $t0, 1
	sw $t0, -628($fp)
label144:
	li $t0, 58161
	sw $t0, -656($fp)
	lw $t0, -628($fp)
	lw $t1, -656($fp)
	mul $t0, $t0, $t1
	sw $t0, -660($fp)
	li $t0, 0
	sw $t0, -664($fp)
	li $t0, 41729
	sw $t0, -668($fp)
	lw $t1, -668($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label149
label148:
	li $t0, 1
	sw $t0, -664($fp)
label149:
	lw $t0, -660($fp)
	lw $t1, -664($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -672($fp)
	li $t0, 0
	sw $t0, -676($fp)
	addi $t0, $fp, -16
	sw $t0, -680($fp)
	li $t0, 1
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
	lw $t1, -696($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label150
label150:
	li $t0, 1
	sw $t0, -676($fp)
label151:
	lw $t0, -672($fp)
	lw $t1, -676($fp)
	mul $t0, $t0, $t1
	sw $t0, -700($fp)
	lw $t1, -700($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label141
label140:
	li $t0, 0
	sw $t0, -704($fp)
	li $t0, 0
	sw $t0, -708($fp)
	li $t0, 0
	sw $t0, -712($fp)
	li $t0, 42299
	sw $t0, -716($fp)
	lw $t1, -716($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label156
label156:
	li $t0, 1
	sw $t0, -712($fp)
label157:
	lw $t0, -184($fp)
	sw $t0, -720($fp)
	lw $t1, -712($fp)
	lw $t2, -720($fp)
	bge $t1, $t2, label154
	j label155
label154:
	li $t0, 1
	sw $t0, -708($fp)
label155:
	addi $sp, $sp, -4
	lw $t0, -708($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -724($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -728($fp)
	li $t0, 21770
	sw $t0, -732($fp)
	li $t0, 0
	lw $t1, -732($fp)
	sub $t0, $t0, $t1
	sw $t0, -736($fp)
	li $t0, 0
	lw $t1, -736($fp)
	sub $t0, $t0, $t1
	sw $t0, -740($fp)
	lw $t1, -740($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label158
label158:
	li $t0, 1
	sw $t0, -728($fp)
label159:
	lw $t1, -724($fp)
	lw $t2, -728($fp)
	blt $t1, $t2, label152
	j label153
label152:
	li $t0, 1
	sw $t0, -704($fp)
label153:
	lw $ra, -4($fp)
	lw $v0, -704($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label142
label141:
label160:
	li $t0, 0
	sw $t0, -744($fp)
	lw $t0, -136($fp)
	sw $t0, -748($fp)
	li $t0, 44950
	sw $t0, -752($fp)
	li $t0, 20902
	sw $t0, -756($fp)
	lw $t0, -752($fp)
	lw $t1, -756($fp)
	mul $t0, $t0, $t1
	sw $t0, -760($fp)
	lw $t1, -748($fp)
	lw $t2, -760($fp)
	ble $t1, $t2, label164
	j label165
label164:
	li $t0, 1
	sw $t0, -744($fp)
label165:
	li $t0, 0
	sw $t0, -764($fp)
	lw $t0, -508($fp)
	sw $t0, -768($fp)
	li $t0, 0
	lw $t1, -768($fp)
	sub $t0, $t0, $t1
	sw $t0, -772($fp)
	lw $t1, -772($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label166
label166:
	li $t0, 1
	sw $t0, -764($fp)
label167:
	lw $t1, -744($fp)
	lw $t2, -764($fp)
	bne $t1, $t2, label163
	j label162
label163:
	li $t0, 2034
	sw $t0, -776($fp)
	li $t0, 0
	lw $t1, -776($fp)
	sub $t0, $t0, $t1
	sw $t0, -780($fp)
	lw $t1, -780($fp)
	li $t2, 0
	bne $t1, $t2, label161
	j label162
label161:
	li $t0, 0
	sw $t0, -784($fp)
	lw $t0, -508($fp)
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -792($fp)
	addi $sp, $sp, -4
	lw $t0, -792($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -796($fp)
	addi $sp, $sp, 8
	lw $t1, -796($fp)
	li $t2, 0
	bne $t1, $t2, label170
	j label169
label170:
	lw $t0, -172($fp)
	sw $t0, -800($fp)
	lw $t1, -800($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label169
label168:
	li $t0, 1
	sw $t0, -784($fp)
label169:
	lw $ra, -4($fp)
	lw $v0, -784($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label160
label162:
label142:
	j label132
label131:
label171:
	li $t0, 0
	sw $t0, -804($fp)
	lw $t0, -196($fp)
	sw $t0, -808($fp)
	lw $t1, -808($fp)
	li $t2, 0
	bne $t1, $t2, label175
	j label174
label174:
	li $t0, 1
	sw $t0, -804($fp)
label175:
	addi $sp, $sp, -4
	lw $t0, -804($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -812($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -812($fp)
	sub $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t1, -816($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label173
label172:
	lw $t0, -520($fp)
	sw $t0, -820($fp)
	lw $ra, -4($fp)
	lw $v0, -820($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label171
label173:
label132:
	j label127
label129:
label122:
label176:
	li $t0, 0
	sw $t0, -824($fp)
	li $t0, 50794
	sw $t0, -828($fp)
	lw $t1, -828($fp)
	li $t2, 0
	bne $t1, $t2, label179
	j label180
label179:
	li $t0, 1
	sw $t0, -824($fp)
label180:
	li $t0, 0
	lw $t1, -824($fp)
	sub $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t1, -832($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label178
label177:
	li $t0, 48027
	sw $t0, -836($fp)
	addi $t0, $fp, -16
	sw $t0, -840($fp)
	lw $t0, -508($fp)
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
	li $t0, 0
	lw $t1, -856($fp)
	sub $t0, $t0, $t1
	sw $t0, -860($fp)
	lw $t0, -836($fp)
	lw $t1, -860($fp)
	sub $t0, $t0, $t1
	sw $t0, -864($fp)
	j label176
label178:
	li $t0, 27783
	sw $t0, -900($fp)
	addi $t0, $fp, -868
	sw $t0, -904($fp)
	li $t0, 0
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
	li $t0, 49185
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	li $t0, 37685
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	li $t0, 39729
	sw $t0, -948($fp)
	addi $t0, $fp, -896
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
	li $t0, 32445
	sw $t0, -972($fp)
	addi $t0, $fp, -896
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
	li $t0, 39660
	sw $t0, -996($fp)
	addi $t0, $fp, -896
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
	li $t0, 62383
	sw $t0, -1020($fp)
	addi $t0, $fp, -896
	sw $t0, -1024($fp)
	li $t0, 3
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
	li $t0, 31707
	sw $t0, -1044($fp)
	addi $t0, $fp, -896
	sw $t0, -1048($fp)
	li $t0, 4
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
	li $t0, 15317
	sw $t0, -1068($fp)
	addi $t0, $fp, -896
	sw $t0, -1072($fp)
	li $t0, 5
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
	li $t0, 35804
	sw $t0, -1092($fp)
	addi $t0, $fp, -896
	sw $t0, -1096($fp)
	li $t0, 6
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
	addi $t0, $fp, -868
	sw $t0, -1116($fp)
	li $t0, 0
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
	lw $t0, -928($fp)
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -940($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -896
	sw $t0, -1144($fp)
	li $t0, 0
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
	addi $t0, $fp, -896
	sw $t0, -1164($fp)
	li $t0, 1
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
	addi $t0, $fp, -896
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
	lw $t0, -1200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -896
	sw $t0, -1204($fp)
	li $t0, 3
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
	addi $t0, $fp, -896
	sw $t0, -1224($fp)
	li $t0, 4
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
	addi $t0, $fp, -896
	sw $t0, -1244($fp)
	li $t0, 5
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
	addi $t0, $fp, -896
	sw $t0, -1264($fp)
	li $t0, 6
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
	li $t0, 57483
	sw $t0, -1284($fp)
	addi $t0, $fp, -896
	sw $t0, -1288($fp)
	lw $t0, -940($fp)
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
	div $t0, $t1
	mflo $t2
	sw $t2, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -1312($fp)
	lw $ra, -4($fp)
	lw $v0, -1312($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 11602
	sw $t0, -1344($fp)
	addi $t0, $fp, -1340
	sw $t0, -1348($fp)
	li $t0, 0
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
	li $t0, 23169
	sw $t0, -1368($fp)
	addi $t0, $fp, -1340
	sw $t0, -1372($fp)
	li $t0, 1
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $t0, -1372($fp)
	lw $t1, -1380($fp)
	add $t0, $t0, $t1
	sw $t0, -1384($fp)
	lw $t0, -1368($fp)
	lw $t1, -1384($fp)
	sw $t0, 0($t1)
	lw $t0, -1384($fp)
	lw $t1, 0($t0)
	sw $t1, -1388($fp)
	li $t0, 7880
	sw $t0, -1392($fp)
	addi $t0, $fp, -1340
	sw $t0, -1396($fp)
	li $t0, 2
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
	li $t0, 62634
	sw $t0, -1416($fp)
	addi $t0, $fp, -1340
	sw $t0, -1420($fp)
	li $t0, 3
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
	li $t0, 62796
	sw $t0, -1440($fp)
	addi $t0, $fp, -1340
	sw $t0, -1444($fp)
	li $t0, 4
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
	li $t0, 9573
	sw $t0, -1464($fp)
	addi $t0, $fp, -1340
	sw $t0, -1468($fp)
	li $t0, 5
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
	li $t0, 22629
	sw $t0, -1488($fp)
	addi $t0, $fp, -1340
	sw $t0, -1492($fp)
	li $t0, 6
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
	addi $t0, $fp, -1340
	sw $t0, -1512($fp)
	li $t0, 0
	sw $t0, -1516($fp)
	li $t0, 4
	lw $t1, -1516($fp)
	mul $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	lw $t1, -1512($fp)
	add $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	lw $t1, 0($t0)
	sw $t1, -1528($fp)
	lw $t0, -1528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1340
	sw $t0, -1532($fp)
	li $t0, 1
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
	lw $t0, -1548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1340
	sw $t0, -1552($fp)
	li $t0, 2
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
	lw $t0, -1568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1340
	sw $t0, -1572($fp)
	li $t0, 3
	sw $t0, -1576($fp)
	li $t0, 4
	lw $t1, -1576($fp)
	mul $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	lw $t1, -1572($fp)
	add $t0, $t0, $t1
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	lw $t1, 0($t0)
	sw $t1, -1588($fp)
	lw $t0, -1588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1340
	sw $t0, -1592($fp)
	li $t0, 4
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
	addi $t0, $fp, -1340
	sw $t0, -1612($fp)
	li $t0, 5
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
	addi $t0, $fp, -1340
	sw $t0, -1632($fp)
	li $t0, 6
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
	li $t0, 4825
	sw $t0, -1652($fp)
	li $t0, 30550
	sw $t0, -1656($fp)
	lw $t0, -1652($fp)
	lw $t1, -1656($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1660($fp)
	lw $t0, -520($fp)
	sw $t0, -1664($fp)
	lw $t0, -1660($fp)
	lw $t1, -1664($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1668($fp)
	addi $sp, $sp, -4
	lw $t0, -1668($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1672($fp)
	addi $sp, $sp, 8
	lw $ra, -4($fp)
	lw $v0, -1672($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label181:
	li $t0, 15254
	sw $t0, -1676($fp)
	li $t0, 46554
	sw $t0, -1680($fp)
	lw $t0, -1676($fp)
	lw $t1, -1680($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1684($fp)
	lw $t1, -1684($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label184
label184:
	lw $t0, -520($fp)
	sw $t0, -1688($fp)
	addi $sp, $sp, -4
	lw $t0, -1688($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1692($fp)
	addi $sp, $sp, 8
	lw $t1, -1692($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label183
label182:
label185:
	li $t0, 4356
	sw $t0, -1696($fp)
	addi $t0, $fp, -1340
	sw $t0, -1700($fp)
	li $t0, 0
	sw $t0, -1704($fp)
	li $t0, 1026
	sw $t0, -1708($fp)
	lw $t1, -1708($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label189
label190:
	lw $t0, -196($fp)
	sw $t0, -1712($fp)
	lw $t1, -1712($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label189
label188:
	li $t0, 1
	sw $t0, -1704($fp)
label189:
	li $t0, 4
	lw $t1, -1704($fp)
	mul $t0, $t0, $t1
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	lw $t1, -1700($fp)
	add $t0, $t0, $t1
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	lw $t1, 0($t0)
	sw $t1, -1724($fp)
	lw $t1, -1696($fp)
	lw $t2, -1724($fp)
	bgt $t1, $t2, label186
	j label187
label186:
	li $t0, 0
	sw $t0, -1728($fp)
	li $t0, 23317
	sw $t0, -1732($fp)
	li $t0, 26127
	sw $t0, -1736($fp)
	lw $t0, -1732($fp)
	lw $t1, -1736($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1740($fp)
	li $t0, 45976
	sw $t0, -1744($fp)
	lw $t0, -172($fp)
	sw $t0, -1748($fp)
	lw $t0, -1744($fp)
	lw $t1, -1748($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1752($fp)
	lw $t1, -1740($fp)
	lw $t2, -1752($fp)
	bgt $t1, $t2, label191
	j label192
label191:
	li $t0, 1
	sw $t0, -1728($fp)
label192:
	lw $t0, -1728($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -1756($fp)
	j label185
label187:
	j label181
label183:
	lw $t0, -172($fp)
	sw $t0, -1760($fp)
	li $t0, 0
	sw $t0, -1764($fp)
	lw $t0, -928($fp)
	sw $t0, -1768($fp)
	li $t0, 28162
	sw $t0, -1772($fp)
	lw $t0, -1768($fp)
	lw $t1, -1772($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1776($fp)
	li $t0, 0
	lw $t1, -1776($fp)
	sub $t0, $t0, $t1
	sw $t0, -1780($fp)
	lw $t1, -1780($fp)
	li $t2, 0
	bne $t1, $t2, label194
	j label193
label193:
	li $t0, 1
	sw $t0, -1764($fp)
label194:
	lw $t0, -1760($fp)
	lw $t1, -1764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1784($fp)
label195:
	lw $t0, -172($fp)
	sw $t0, -1788($fp)
	li $t0, 0
	sw $t0, -1792($fp)
	lw $t0, -496($fp)
	sw $t0, -1796($fp)
	lw $t1, -1796($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label202
label202:
	li $t0, 31234
	sw $t0, -1800($fp)
	lw $t1, -1800($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label201
label201:
	li $t0, 26711
	sw $t0, -1804($fp)
	lw $t1, -1804($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label200
label199:
	li $t0, 1
	sw $t0, -1792($fp)
label200:
	addi $sp, $sp, -4
	lw $t0, -1792($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1808($fp)
	addi $sp, $sp, 8
	lw $t0, -1788($fp)
	lw $t1, -1808($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1812($fp)
	lw $t0, 4($fp)
	sw $t0, -1816($fp)
	lw $t0, -1812($fp)
	lw $t1, -1816($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1820($fp)
	lw $t1, -1820($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label197
label198:
	lw $t0, -940($fp)
	sw $t0, -1824($fp)
	lw $t1, -1824($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label197
label196:
	li $t0, 55944
	sw $t0, -1828($fp)
	lw $t1, -1828($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label204
label203:
	li $t0, 0
	sw $t0, -1832($fp)
	li $t0, 0
	sw $t0, -1836($fp)
	li $t0, 0
	sw $t0, -1840($fp)
	lw $t0, -508($fp)
	sw $t0, -1844($fp)
	lw $t1, -1844($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label210
label210:
	li $t0, 1
	sw $t0, -1840($fp)
label211:
	lw $t0, -508($fp)
	sw $t0, -1848($fp)
	li $t0, 14883
	sw $t0, -1852($fp)
	lw $t0, -1848($fp)
	lw $t1, -1852($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1856($fp)
	lw $t0, -1840($fp)
	lw $t1, -1856($fp)
	add $t0, $t0, $t1
	sw $t0, -1860($fp)
	li $t0, 64397
	sw $t0, -1864($fp)
	lw $t1, -1860($fp)
	lw $t2, -1864($fp)
	bgt $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -1836($fp)
label209:
	li $t0, 0
	sw $t0, -1868($fp)
	li $t0, 30138
	sw $t0, -1872($fp)
	li $t0, 0
	lw $t1, -1872($fp)
	sub $t0, $t0, $t1
	sw $t0, -1876($fp)
	lw $t1, -1876($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label212
label212:
	li $t0, 1
	sw $t0, -1868($fp)
label213:
	lw $t1, -1836($fp)
	lw $t2, -1868($fp)
	bne $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -1832($fp)
label207:
	lw $ra, -4($fp)
	lw $v0, -1832($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label205
label204:
label214:
	addi $t0, $fp, -868
	sw $t0, -1880($fp)
	li $t0, 0
	sw $t0, -1884($fp)
	lw $t0, -460($fp)
	sw $t0, -1888($fp)
	li $t0, 47329
	sw $t0, -1892($fp)
	lw $t1, -1888($fp)
	lw $t2, -1892($fp)
	bge $t1, $t2, label217
	j label219
label219:
	li $t0, 38521
	sw $t0, -1896($fp)
	lw $t1, -1896($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label218
label217:
	li $t0, 1
	sw $t0, -1884($fp)
label218:
	li $t0, 4
	lw $t1, -1884($fp)
	mul $t0, $t0, $t1
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	lw $t1, -1880($fp)
	add $t0, $t0, $t1
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	lw $t1, 0($t0)
	sw $t1, -1908($fp)
	li $t0, 0
	sw $t0, -1912($fp)
	addi $t0, $fp, -16
	sw $t0, -1916($fp)
	li $t0, 1
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
	lw $t1, -1932($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label222
label222:
	li $t0, 53838
	sw $t0, -1936($fp)
	lw $t1, -1936($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -1912($fp)
label221:
	addi $sp, $sp, -4
	lw $t0, -1912($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1940($fp)
	addi $sp, $sp, 8
	lw $t0, -1908($fp)
	lw $t1, -1940($fp)
	mul $t0, $t0, $t1
	sw $t0, -1944($fp)
	lw $t1, -1944($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label216
label215:
label223:
	li $t0, 0
	sw $t0, -1948($fp)
	lw $t0, 4($fp)
	sw $t0, -1952($fp)
	lw $t0, -520($fp)
	sw $t0, -1956($fp)
	lw $t0, -1952($fp)
	lw $t1, -1956($fp)
	mul $t0, $t0, $t1
	sw $t0, -1960($fp)
	lw $t1, -1960($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label227
label228:
	li $t0, 62790
	sw $t0, -1964($fp)
	lw $t1, -1964($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label227
label226:
	li $t0, 1
	sw $t0, -1948($fp)
label227:
	addi $sp, $sp, -4
	lw $t0, -1948($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1968($fp)
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -1972($fp)
	lw $t0, -1968($fp)
	lw $t1, -1972($fp)
	add $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $t1, -1976($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label225
label224:
	li $t0, 0
	sw $t0, -1980($fp)
	addi $t0, $fp, -16
	sw $t0, -1984($fp)
	lw $t0, 4($fp)
	sw $t0, -1988($fp)
	lw $t0, -136($fp)
	sw $t0, -1992($fp)
	lw $t0, -1988($fp)
	lw $t1, -1992($fp)
	sub $t0, $t0, $t1
	sw $t0, -1996($fp)
	lw $t0, -520($fp)
	sw $t0, -2000($fp)
	lw $t0, -1996($fp)
	lw $t1, -2000($fp)
	add $t0, $t0, $t1
	sw $t0, -2004($fp)
	li $t0, 4
	lw $t1, -2004($fp)
	mul $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	lw $t1, -1984($fp)
	add $t0, $t0, $t1
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	lw $t1, 0($t0)
	sw $t1, -2016($fp)
	li $t0, 0
	sw $t0, -2020($fp)
	addi $t0, $fp, -16
	sw $t0, -2024($fp)
	li $t0, 1
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
	lw $t1, -2040($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label231
label231:
	li $t0, 1
	sw $t0, -2020($fp)
label232:
	li $t0, 0
	sw $t0, -2044($fp)
	lw $t0, -520($fp)
	sw $t0, -2048($fp)
	lw $t1, -2048($fp)
	li $t2, 0
	bne $t1, $t2, label234
	j label233
label233:
	li $t0, 1
	sw $t0, -2044($fp)
label234:
	lw $t0, -2020($fp)
	lw $t1, -2044($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2052($fp)
	lw $t1, -2016($fp)
	lw $t2, -2052($fp)
	beq $t1, $t2, label229
	j label230
label229:
	li $t0, 1
	sw $t0, -1980($fp)
label230:
	j label223
label225:
	j label214
label216:
label205:
	j label195
label197:
	li $t0, 20423
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	sw $t0, -2064($fp)
	li $t0, 13328
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	sw $t0, -2076($fp)
	li $t0, 62539
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	sw $t0, -2088($fp)
label235:
	addi $t0, $fp, -868
	sw $t0, -2092($fp)
	li $t0, 0
	sw $t0, -2096($fp)
	li $t0, 17684
	sw $t0, -2100($fp)
	lw $t1, -2100($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label240
label241:
	lw $t0, -2060($fp)
	sw $t0, -2104($fp)
	lw $t1, -2104($fp)
	li $t2, 0
	bne $t1, $t2, label239
	j label240
label239:
	li $t0, 1
	sw $t0, -2096($fp)
label240:
	li $t0, 4
	lw $t1, -2096($fp)
	mul $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	lw $t1, -2092($fp)
	add $t0, $t0, $t1
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	lw $t1, 0($t0)
	sw $t1, -2116($fp)
	li $t0, 22901
	sw $t0, -2120($fp)
	lw $t0, -2116($fp)
	lw $t1, -2120($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2124($fp)
	lw $t1, -2124($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label238
label238:
	li $t0, 0
	sw $t0, -2128($fp)
	li $t0, 19632
	sw $t0, -2132($fp)
	li $t0, 22509
	sw $t0, -2136($fp)
	lw $t0, -2132($fp)
	lw $t1, -2136($fp)
	add $t0, $t0, $t1
	sw $t0, -2140($fp)
	lw $t1, -2140($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label244
label244:
	li $t0, 53451
	sw $t0, -2144($fp)
	lw $t1, -2144($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label243
label242:
	li $t0, 1
	sw $t0, -2128($fp)
label243:
	addi $sp, $sp, -4
	lw $t0, -2128($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2148($fp)
	addi $sp, $sp, 8
	lw $t1, -2148($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label237
label236:
	li $t0, 34887
	sw $t0, -2152($fp)
	lw $ra, -4($fp)
	lw $v0, -2152($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label235
label237:
	lw $t0, -2060($fp)
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2072($fp)
	sw $t0, -2160($fp)
	lw $t0, -2160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2084($fp)
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2168($fp)
	lw $t0, -172($fp)
	sw $t0, -2172($fp)
	lw $t0, -2084($fp)
	sw $t0, -2176($fp)
	lw $t0, -2172($fp)
	lw $t1, -2176($fp)
	add $t0, $t0, $t1
	sw $t0, -2180($fp)
	addi $sp, $sp, -4
	lw $t0, -2180($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2184($fp)
	addi $sp, $sp, 8
	lw $t1, -2184($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label245
label245:
	li $t0, 1
	sw $t0, -2168($fp)
label246:
	lw $ra, -4($fp)
	lw $v0, -2168($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label247:
	li $t0, 0
	sw $t0, -2188($fp)
	li $t0, 0
	sw $t0, -2192($fp)
	li $t0, 3527
	sw $t0, -2196($fp)
	lw $t1, -2196($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label252
label252:
	li $t0, 1
	sw $t0, -2192($fp)
label253:
	addi $sp, $sp, -4
	lw $t0, -2192($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2200($fp)
	addi $sp, $sp, 8
	lw $t1, -2200($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label250
label250:
	li $t0, 1
	sw $t0, -2188($fp)
label251:
	lw $t0, 4($fp)
	sw $t0, -2204($fp)
	li $t0, 0
	lw $t1, -2204($fp)
	sub $t0, $t0, $t1
	sw $t0, -2208($fp)
	lw $t0, -2188($fp)
	lw $t1, -2208($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2212($fp)
	lw $t1, -2212($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label249
label248:
label254:
	lw $t0, -460($fp)
	sw $t0, -2216($fp)
	lw $t0, 4($fp)
	sw $t0, -2220($fp)
	lw $t0, -2216($fp)
	lw $t1, -2220($fp)
	mul $t0, $t0, $t1
	sw $t0, -2224($fp)
	lw $t0, -508($fp)
	sw $t0, -2228($fp)
	lw $t0, -2224($fp)
	lw $t1, -2228($fp)
	mul $t0, $t0, $t1
	sw $t0, -2232($fp)
	li $t0, 0
	sw $t0, -2236($fp)
	li $t0, 0
	sw $t0, -2240($fp)
	lw $t0, -460($fp)
	sw $t0, -2244($fp)
	li $t0, 57807
	sw $t0, -2248($fp)
	lw $t0, -2244($fp)
	lw $t1, -2248($fp)
	add $t0, $t0, $t1
	sw $t0, -2252($fp)
	lw $t0, -160($fp)
	sw $t0, -2256($fp)
	lw $t1, -2252($fp)
	lw $t2, -2256($fp)
	bge $t1, $t2, label259
	j label260
label259:
	li $t0, 1
	sw $t0, -2240($fp)
label260:
	addi $sp, $sp, -4
	lw $t0, -2240($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2260($fp)
	addi $sp, $sp, 8
	lw $t1, -2260($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label257
label257:
	li $t0, 1
	sw $t0, -2236($fp)
label258:
	addi $sp, $sp, -4
	lw $t0, -2236($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2264($fp)
	addi $sp, $sp, 8
	lw $t0, -2232($fp)
	lw $t1, -2264($fp)
	mul $t0, $t0, $t1
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	sw $t0, -2272($fp)
	lw $t1, -2272($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label256
label255:
	addi $t0, $fp, -16
	sw $t0, -2276($fp)
	li $t0, 0
	sw $t0, -2280($fp)
	lw $t0, -508($fp)
	sw $t0, -2284($fp)
	li $t0, 35913
	sw $t0, -2288($fp)
	lw $t0, -2284($fp)
	lw $t1, -2288($fp)
	mul $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t1, -2292($fp)
	li $t2, 0
	bne $t1, $t2, label261
	j label264
label264:
	lw $t0, -928($fp)
	sw $t0, -2296($fp)
	lw $t1, -2296($fp)
	li $t2, 0
	bne $t1, $t2, label261
	j label263
label263:
	li $t0, 26844
	sw $t0, -2300($fp)
	lw $t1, -2300($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label262
label265:
	li $t0, 18398
	sw $t0, -2304($fp)
	lw $t1, -2304($fp)
	li $t2, 0
	bne $t1, $t2, label261
	j label262
label261:
	li $t0, 1
	sw $t0, -2280($fp)
label262:
	li $t0, 4
	lw $t1, -2280($fp)
	mul $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $t0, -2308($fp)
	lw $t1, -2276($fp)
	add $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	lw $t1, 0($t0)
	sw $t1, -2316($fp)
	j label254
label256:
	j label247
label249:
	li $t0, 0
	sw $t0, -2320($fp)
	lw $t0, -208($fp)
	sw $t0, -2324($fp)
	lw $t0, -184($fp)
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -2332($fp)
	addi $sp, $sp, -4
	lw $t0, -2332($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2336($fp)
	addi $sp, $sp, 8
	lw $t0, -2324($fp)
	lw $t1, -2336($fp)
	add $t0, $t0, $t1
	sw $t0, -2340($fp)
	li $t0, 0
	sw $t0, -2344($fp)
	lw $t0, -136($fp)
	sw $t0, -2348($fp)
	lw $t1, -2348($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label269
label269:
	li $t0, 1
	sw $t0, -2344($fp)
label270:
	lw $t1, -2340($fp)
	lw $t2, -2344($fp)
	blt $t1, $t2, label268
	j label267
label268:
	addi $t0, $fp, -56
	sw $t0, -2352($fp)
	lw $t0, -460($fp)
	sw $t0, -2356($fp)
	li $t0, 4
	lw $t1, -2356($fp)
	mul $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	lw $t1, -2352($fp)
	add $t0, $t0, $t1
	sw $t0, -2364($fp)
	lw $t0, -2364($fp)
	lw $t1, 0($t0)
	sw $t1, -2368($fp)
	li $t0, 16353
	sw $t0, -2372($fp)
	li $t0, 5528
	sw $t0, -2376($fp)
	lw $t0, -2372($fp)
	lw $t1, -2376($fp)
	mul $t0, $t0, $t1
	sw $t0, -2380($fp)
	lw $t0, -2368($fp)
	lw $t1, -2380($fp)
	sub $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t1, -2384($fp)
	li $t2, 0
	bne $t1, $t2, label266
	j label267
label266:
	li $t0, 1
	sw $t0, -2320($fp)
label267:
label271:
	li $t0, 46560
	sw $t0, -2388($fp)
	lw $t1, -2388($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label272
label272:
	li $t0, 0
	sw $t0, -2392($fp)
	lw $t0, -148($fp)
	sw $t0, -2396($fp)
	lw $t1, -2396($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label274
label274:
	li $t0, 1
	sw $t0, -2392($fp)
label275:
	lw $t0, -2392($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -2404($fp)
	lw $ra, -4($fp)
	lw $v0, -2404($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label271
label273:
	addi $t0, $fp, -16
	sw $t0, -2408($fp)
	li $t0, 0
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
	lw $t0, -2424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -2428($fp)
	li $t0, 1
	sw $t0, -2432($fp)
	li $t0, 4
	lw $t1, -2432($fp)
	mul $t0, $t0, $t1
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	lw $t1, -2428($fp)
	add $t0, $t0, $t1
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	lw $t1, 0($t0)
	sw $t1, -2444($fp)
	lw $t0, -2444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -2448($fp)
	li $t0, 2
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
	lw $t0, -136($fp)
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -160($fp)
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -172($fp)
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -184($fp)
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -196($fp)
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -208($fp)
	sw $t0, -2492($fp)
	lw $t0, -2492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
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
	addi $t0, $fp, -56
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
	addi $t0, $fp, -56
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
	addi $t0, $fp, -56
	sw $t0, -2556($fp)
	li $t0, 3
	sw $t0, -2560($fp)
	li $t0, 4
	lw $t1, -2560($fp)
	mul $t0, $t0, $t1
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	lw $t1, -2556($fp)
	add $t0, $t0, $t1
	sw $t0, -2568($fp)
	lw $t0, -2568($fp)
	lw $t1, 0($t0)
	sw $t1, -2572($fp)
	lw $t0, -2572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2576($fp)
	li $t0, 4
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
	addi $t0, $fp, -56
	sw $t0, -2596($fp)
	li $t0, 5
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
	addi $t0, $fp, -56
	sw $t0, -2616($fp)
	li $t0, 6
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
	addi $t0, $fp, -56
	sw $t0, -2636($fp)
	li $t0, 7
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
	addi $t0, $fp, -56
	sw $t0, -2656($fp)
	li $t0, 8
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
	lw $t0, -2672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2676($fp)
	li $t0, 9
	sw $t0, -2680($fp)
	li $t0, 4
	lw $t1, -2680($fp)
	mul $t0, $t0, $t1
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	lw $t1, -2676($fp)
	add $t0, $t0, $t1
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	lw $t1, 0($t0)
	sw $t1, -2692($fp)
	lw $t0, -2692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -460($fp)
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -472($fp)
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -484($fp)
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2720($fp)
	li $t0, 47588
	sw $t0, -2724($fp)
	lw $t0, -160($fp)
	sw $t0, -2728($fp)
	lw $t1, -2724($fp)
	lw $t2, -2728($fp)
	bgt $t1, $t2, label276
	j label277
label276:
	li $t0, 1
	sw $t0, -2720($fp)
label277:
	lw $ra, -4($fp)
	lw $v0, -2720($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -36
	lw $t0, 4($fp)
	sw $t0, -8($fp)
	li $t0, 0
	lw $t1, -8($fp)
	sub $t0, $t0, $t1
	sw $t0, -12($fp)
	lw $t0, 8($fp)
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	lw $t0, 8($fp)
	sw $t0, -24($fp)
	li $t0, 0
	lw $t1, -24($fp)
	sub $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t1, -28($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label278
label278:
	li $t0, 1
	sw $t0, -20($fp)
label279:
	lw $t0, -16($fp)
	lw $t1, -20($fp)
	mul $t0, $t0, $t1
	sw $t0, -32($fp)
	li $t0, 32240
	sw $t0, -36($fp)
	lw $t0, -32($fp)
	lw $t1, -36($fp)
	add $t0, $t0, $t1
	sw $t0, -40($fp)
	lw $ra, -4($fp)
	lw $v0, -40($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -288
	li $t0, 36968
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 62471
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 31101
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
label280:
	lw $t0, -36($fp)
	sw $t0, -44($fp)
	li $t0, 0
	lw $t1, -44($fp)
	sub $t0, $t0, $t1
	sw $t0, -48($fp)
	lw $t1, -48($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label282
label281:
	li $t0, 1570
	sw $t0, -68($fp)
	addi $t0, $fp, -64
	sw $t0, -72($fp)
	li $t0, 0
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
	li $t0, 44264
	sw $t0, -92($fp)
	addi $t0, $fp, -64
	sw $t0, -96($fp)
	li $t0, 1
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
	li $t0, 4086
	sw $t0, -116($fp)
	addi $t0, $fp, -64
	sw $t0, -120($fp)
	li $t0, 2
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
	li $t0, 28556
	sw $t0, -140($fp)
	addi $t0, $fp, -64
	sw $t0, -144($fp)
	li $t0, 3
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
	li $t0, 0
	sw $t0, -164($fp)
	addi $t0, $fp, -64
	sw $t0, -168($fp)
	li $t0, 0
	sw $t0, -172($fp)
	li $t0, 57765
	sw $t0, -176($fp)
	lw $t1, -176($fp)
	li $t2, 0
	bne $t1, $t2, label287
	j label286
label287:
	lw $t0, -36($fp)
	sw $t0, -180($fp)
	lw $t1, -180($fp)
	li $t2, 0
	bne $t1, $t2, label285
	j label286
label285:
	li $t0, 1
	sw $t0, -172($fp)
label286:
	li $t0, 4
	lw $t1, -172($fp)
	mul $t0, $t0, $t1
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	lw $t1, -168($fp)
	add $t0, $t0, $t1
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	lw $t1, 0($t0)
	sw $t1, -192($fp)
	lw $t1, -192($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label283
label283:
	li $t0, 1
	sw $t0, -164($fp)
label284:
	li $t0, 57925
	sw $t0, -196($fp)
	lw $t0, -164($fp)
	lw $t1, -196($fp)
	sub $t0, $t0, $t1
	sw $t0, -200($fp)
	li $t0, 0
	sw $t0, -204($fp)
	addi $t0, $fp, -64
	sw $t0, -208($fp)
	li $t0, 0
	sw $t0, -212($fp)
	li $t0, 25810
	sw $t0, -216($fp)
	li $t0, 63213
	sw $t0, -220($fp)
	lw $t1, -216($fp)
	lw $t2, -220($fp)
	blt $t1, $t2, label293
	j label292
label293:
	lw $t0, -24($fp)
	sw $t0, -224($fp)
	lw $t1, -224($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label292
label291:
	li $t0, 1
	sw $t0, -212($fp)
label292:
	li $t0, 4
	lw $t1, -212($fp)
	mul $t0, $t0, $t1
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	lw $t1, -208($fp)
	add $t0, $t0, $t1
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	lw $t1, 0($t0)
	sw $t1, -236($fp)
	lw $t1, -236($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label289
label290:
	lw $t0, -12($fp)
	sw $t0, -240($fp)
	jal f8
	sw $v0, -244($fp)
	addi $sp, $sp, 4
	lw $t1, -240($fp)
	lw $t2, -244($fp)
	beq $t1, $t2, label288
	j label289
label288:
	li $t0, 1
	sw $t0, -204($fp)
label289:
	j label280
label282:
	lw $t0, -12($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -36($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -260($fp)
	lw $t0, -24($fp)
	sw $t0, -264($fp)
	lw $t0, -36($fp)
	sw $t0, -268($fp)
	lw $t0, -12($fp)
	sw $t0, -272($fp)
	lw $t0, -268($fp)
	lw $t1, -272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -276($fp)
	li $t0, 57830
	sw $t0, -280($fp)
	lw $t0, -276($fp)
	lw $t1, -280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -284($fp)
	li $t0, 46233
	sw $t0, -288($fp)
	lw $t0, -284($fp)
	lw $t1, -288($fp)
	sub $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t1, -264($fp)
	lw $t2, -292($fp)
	bge $t1, $t2, label294
	j label295
label294:
	li $t0, 1
	sw $t0, -260($fp)
label295:
	lw $ra, -4($fp)
	lw $v0, -260($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -216
	li $t0, 11005
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
	li $t0, 54833
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
	li $t0, 63917
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
	addi $t0, $fp, -16
	sw $t0, -92($fp)
	addi $t0, $fp, -16
	sw $t0, -96($fp)
	li $t0, 2
	sw $t0, -100($fp)
	li $t0, 4
	lw $t1, -100($fp)
	mul $t0, $t0, $t1
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	lw $t1, -96($fp)
	add $t0, $t0, $t1
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	lw $t1, 0($t0)
	sw $t1, -112($fp)
	li $t0, 4
	lw $t1, -112($fp)
	mul $t0, $t0, $t1
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	lw $t1, -92($fp)
	add $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	lw $t1, 0($t0)
	sw $t1, -124($fp)
	lw $t0, 4($fp)
	sw $t0, -128($fp)
	lw $t0, 4($fp)
	sw $t0, -132($fp)
	lw $t0, -128($fp)
	lw $t1, -132($fp)
	mul $t0, $t0, $t1
	sw $t0, -136($fp)
	li $t0, 0
	lw $t1, -136($fp)
	sub $t0, $t0, $t1
	sw $t0, -140($fp)
	lw $t0, -124($fp)
	lw $t1, -140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -144($fp)
	addi $t0, $fp, -16
	sw $t0, -148($fp)
	li $t0, 0
	sw $t0, -152($fp)
	li $t0, 4
	lw $t1, -152($fp)
	mul $t0, $t0, $t1
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	lw $t1, -148($fp)
	add $t0, $t0, $t1
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	lw $t1, 0($t0)
	sw $t1, -164($fp)
	lw $t0, -164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -168($fp)
	li $t0, 1
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
	addi $t0, $fp, -16
	sw $t0, -188($fp)
	li $t0, 2
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
	lw $t0, -204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -208($fp)
	li $t0, 20890
	sw $t0, -212($fp)
	li $t0, 0
	lw $t1, -212($fp)
	sub $t0, $t0, $t1
	sw $t0, -216($fp)
	lw $t1, -216($fp)
	li $t2, 0
	bne $t1, $t2, label296
	j label298
label298:
	li $t0, 21821
	sw $t0, -220($fp)
	lw $t1, -220($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label296
label296:
	li $t0, 1
	sw $t0, -208($fp)
label297:
	lw $ra, -4($fp)
	lw $v0, -208($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -3716
	li $t0, 43817
	sw $t0, -88($fp)
	addi $t0, $fp, -12
	sw $t0, -92($fp)
	li $t0, 0
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
	li $t0, 24417
	sw $t0, -112($fp)
	addi $t0, $fp, -12
	sw $t0, -116($fp)
	li $t0, 1
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
	li $t0, 14092
	sw $t0, -136($fp)
	addi $t0, $fp, -36
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
	li $t0, 14194
	sw $t0, -160($fp)
	addi $t0, $fp, -36
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
	li $t0, 51262
	sw $t0, -184($fp)
	addi $t0, $fp, -36
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
	li $t0, 32491
	sw $t0, -208($fp)
	addi $t0, $fp, -36
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
	li $t0, 30547
	sw $t0, -232($fp)
	addi $t0, $fp, -36
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
	li $t0, 56790
	sw $t0, -256($fp)
	addi $t0, $fp, -36
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
	li $t0, 13515
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	li $t0, 12599
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -300($fp)
	li $t0, 23494
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	li $t0, 50483
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	li $t0, 9535
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	li $t0, 54595
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	li $t0, 52054
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	li $t0, 53799
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	li $t0, 58682
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	li $t0, 15074
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	li $t0, 46028
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	li $t0, 51071
	sw $t0, -412($fp)
	addi $t0, $fp, -60
	sw $t0, -416($fp)
	li $t0, 0
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
	li $t0, 40884
	sw $t0, -436($fp)
	addi $t0, $fp, -60
	sw $t0, -440($fp)
	li $t0, 1
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
	li $t0, 43705
	sw $t0, -460($fp)
	addi $t0, $fp, -60
	sw $t0, -464($fp)
	li $t0, 2
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
	li $t0, 43365
	sw $t0, -484($fp)
	addi $t0, $fp, -60
	sw $t0, -488($fp)
	li $t0, 3
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
	li $t0, 21581
	sw $t0, -508($fp)
	addi $t0, $fp, -60
	sw $t0, -512($fp)
	li $t0, 4
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
	li $t0, 54710
	sw $t0, -532($fp)
	addi $t0, $fp, -60
	sw $t0, -536($fp)
	li $t0, 5
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
	li $t0, 32662
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 19963
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	li $t0, 23080
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	li $t0, 41592
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	li $t0, 40853
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	li $t0, 44901
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	li $t0, 19873
	sw $t0, -628($fp)
	addi $t0, $fp, -84
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
	li $t0, 65271
	sw $t0, -652($fp)
	addi $t0, $fp, -84
	sw $t0, -656($fp)
	li $t0, 1
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
	li $t0, 58994
	sw $t0, -676($fp)
	addi $t0, $fp, -84
	sw $t0, -680($fp)
	li $t0, 2
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
	li $t0, 34067
	sw $t0, -700($fp)
	addi $t0, $fp, -84
	sw $t0, -704($fp)
	li $t0, 3
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
	li $t0, 50997
	sw $t0, -724($fp)
	addi $t0, $fp, -84
	sw $t0, -728($fp)
	li $t0, 4
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
	li $t0, 25949
	sw $t0, -748($fp)
	addi $t0, $fp, -84
	sw $t0, -752($fp)
	li $t0, 5
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
	li $t0, 64615
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	li $t0, 42251
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	li $t0, 39464
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -804($fp)
	li $t0, 11678
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	li $t0, 210
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	li $t0, 24411
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	li $t0, 21213
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	li $t0, 54805
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	li $t0, 10929
	sw $t0, -868($fp)
	li $t0, 0
	sw $t0, -872($fp)
	lw $t0, -368($fp)
	sw $t0, -876($fp)
	lw $t1, -876($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label303
label303:
	li $t0, 1
	sw $t0, -872($fp)
label304:
	lw $t0, -776($fp)
	sw $t0, -880($fp)
	lw $t0, -872($fp)
	lw $t1, -880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -884($fp)
	lw $t1, -868($fp)
	lw $t2, -884($fp)
	bne $t1, $t2, label299
	j label302
label302:
	li $t0, 9477
	sw $t0, -888($fp)
	lw $t1, -888($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label300
label299:
	li $t0, 0
	sw $t0, -892($fp)
	li $t0, 0
	sw $t0, -896($fp)
	addi $t0, $fp, -84
	sw $t0, -900($fp)
	li $t0, 3
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
	li $t0, 0
	lw $t1, -916($fp)
	sub $t0, $t0, $t1
	sw $t0, -920($fp)
	li $t0, 0
	lw $t1, -920($fp)
	sub $t0, $t0, $t1
	sw $t0, -924($fp)
	li $t0, 55505
	sw $t0, -928($fp)
	li $t0, 33486
	sw $t0, -932($fp)
	lw $t0, -928($fp)
	lw $t1, -932($fp)
	mul $t0, $t0, $t1
	sw $t0, -936($fp)
	lw $t1, -924($fp)
	lw $t2, -936($fp)
	bgt $t1, $t2, label307
	j label308
label307:
	li $t0, 1
	sw $t0, -896($fp)
label308:
	addi $t0, $fp, -84
	sw $t0, -940($fp)
	lw $t0, -356($fp)
	sw $t0, -944($fp)
	li $t0, 4
	lw $t1, -944($fp)
	mul $t0, $t0, $t1
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	lw $t1, -940($fp)
	add $t0, $t0, $t1
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	lw $t1, 0($t0)
	sw $t1, -956($fp)
	li $t0, 1351
	sw $t0, -960($fp)
	lw $t0, -956($fp)
	lw $t1, -960($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -964($fp)
	lw $t1, -896($fp)
	lw $t2, -964($fp)
	bne $t1, $t2, label305
	j label306
label305:
	li $t0, 1
	sw $t0, -892($fp)
label306:
label309:
	addi $t0, $fp, -84
	sw $t0, -968($fp)
	li $t0, 33675
	sw $t0, -972($fp)
	lw $t0, -308($fp)
	sw $t0, -976($fp)
	lw $t0, -972($fp)
	lw $t1, -976($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -980($fp)
	lw $t0, -392($fp)
	sw $t0, -984($fp)
	lw $t0, -980($fp)
	lw $t1, -984($fp)
	mul $t0, $t0, $t1
	sw $t0, -988($fp)
	li $t0, 4
	lw $t1, -988($fp)
	mul $t0, $t0, $t1
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	lw $t1, -968($fp)
	add $t0, $t0, $t1
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	lw $t1, 0($t0)
	sw $t1, -1000($fp)
	li $t0, 0
	lw $t1, -1000($fp)
	sub $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t1, -1004($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label311
label310:
	addi $t0, $fp, -12
	sw $t0, -1008($fp)
	li $t0, 11315
	sw $t0, -1012($fp)
	lw $t0, -344($fp)
	sw $t0, -1016($fp)
	lw $t0, -1012($fp)
	lw $t1, -1016($fp)
	mul $t0, $t0, $t1
	sw $t0, -1020($fp)
	li $t0, 22933
	sw $t0, -1024($fp)
	lw $t0, -1020($fp)
	lw $t1, -1024($fp)
	sub $t0, $t0, $t1
	sw $t0, -1028($fp)
	li $t0, 4
	lw $t1, -1028($fp)
	mul $t0, $t0, $t1
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	lw $t1, -1008($fp)
	add $t0, $t0, $t1
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	lw $t1, 0($t0)
	sw $t1, -1040($fp)
	li $t0, 0
	lw $t1, -1040($fp)
	sub $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $ra, -4($fp)
	lw $v0, -1044($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label309
label311:
label300:
	li $t0, 22849
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1056($fp)
	li $t0, 43978
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -1068($fp)
label312:
	li $t0, 0
	sw $t0, -1072($fp)
	li $t0, 0
	sw $t0, -1076($fp)
	li $t0, 20034
	sw $t0, -1080($fp)
	lw $t1, -1080($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label317
label317:
	li $t0, 1
	sw $t0, -1076($fp)
label318:
	li $t0, 18213
	sw $t0, -1084($fp)
	lw $t1, -1076($fp)
	lw $t2, -1084($fp)
	bge $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -1072($fp)
label316:
	li $t0, 0
	sw $t0, -1088($fp)
	li $t0, 42896
	sw $t0, -1092($fp)
	li $t0, 45930
	sw $t0, -1096($fp)
	lw $t0, -1092($fp)
	lw $t1, -1096($fp)
	mul $t0, $t0, $t1
	sw $t0, -1100($fp)
	lw $t0, -308($fp)
	sw $t0, -1104($fp)
	lw $t1, -1100($fp)
	lw $t2, -1104($fp)
	blt $t1, $t2, label319
	j label320
label319:
	li $t0, 1
	sw $t0, -1088($fp)
label320:
	addi $sp, $sp, -4
	lw $t0, -1072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1088($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1108($fp)
	addi $sp, $sp, 12
	lw $t1, -1108($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label314
label313:
	li $t0, 25295
	sw $t0, -1144($fp)
	addi $t0, $fp, -1140
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
	li $t0, 39908
	sw $t0, -1168($fp)
	addi $t0, $fp, -1140
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
	li $t0, 17948
	sw $t0, -1192($fp)
	addi $t0, $fp, -1140
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
	li $t0, 18753
	sw $t0, -1216($fp)
	addi $t0, $fp, -1140
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
	li $t0, 8439
	sw $t0, -1240($fp)
	addi $t0, $fp, -1140
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
	li $t0, 3409
	sw $t0, -1264($fp)
	addi $t0, $fp, -1140
	sw $t0, -1268($fp)
	li $t0, 5
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
	li $t0, 44702
	sw $t0, -1288($fp)
	addi $t0, $fp, -1140
	sw $t0, -1292($fp)
	li $t0, 6
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
	li $t0, 7518
	sw $t0, -1312($fp)
	addi $t0, $fp, -1140
	sw $t0, -1316($fp)
	li $t0, 7
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
	li $t0, 45661
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	sw $t0, -1344($fp)
	li $t0, 18630
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	sw $t0, -1356($fp)
	li $t0, 19197
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -1368($fp)
label321:
	li $t0, 45871
	sw $t0, -1372($fp)
	jal f8
	sw $v0, -1376($fp)
	addi $sp, $sp, 4
	lw $t0, -1372($fp)
	lw $t1, -1376($fp)
	sub $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $t1, -1380($fp)
	li $t2, 0
	bne $t1, $t2, label322
	j label323
label322:
	li $t0, 43042
	sw $t0, -1384($fp)
	li $t0, 0
	lw $t1, -1384($fp)
	sub $t0, $t0, $t1
	sw $t0, -1388($fp)
	li $t0, 0
	lw $t1, -1388($fp)
	sub $t0, $t0, $t1
	sw $t0, -1392($fp)
	lw $t1, -1392($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label327
label327:
	lw $t0, -1052($fp)
	sw $t0, -1396($fp)
	li $t0, 40410
	sw $t0, -1400($fp)
	lw $t0, -1396($fp)
	lw $t1, -1400($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1404($fp)
	addi $t0, $fp, -1140
	sw $t0, -1408($fp)
	lw $t0, -1352($fp)
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
	lw $t0, -1404($fp)
	lw $t1, -1424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1428($fp)
	lw $t1, -1428($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label325
label324:
	lw $t0, -1364($fp)
	sw $t0, -1432($fp)
	li $t0, 0
	lw $t1, -1432($fp)
	sub $t0, $t0, $t1
	sw $t0, -1436($fp)
	li $t0, 0
	lw $t1, -1436($fp)
	sub $t0, $t0, $t1
	sw $t0, -1440($fp)
	li $t0, 0
	lw $t1, -1440($fp)
	sub $t0, $t0, $t1
	sw $t0, -1444($fp)
	lw $ra, -4($fp)
	lw $v0, -1444($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label326
label325:
	li $t0, 0
	sw $t0, -1448($fp)
	li $t0, 0
	sw $t0, -1452($fp)
	li $t0, 0
	sw $t0, -1456($fp)
	li $t0, 0
	sw $t0, -1460($fp)
	lw $t0, -608($fp)
	sw $t0, -1464($fp)
	lw $t0, -620($fp)
	sw $t0, -1468($fp)
	lw $t1, -1464($fp)
	lw $t2, -1468($fp)
	bgt $t1, $t2, label334
	j label335
label334:
	li $t0, 1
	sw $t0, -1460($fp)
label335:
	li $t0, 14439
	sw $t0, -1472($fp)
	lw $t1, -1460($fp)
	lw $t2, -1472($fp)
	blt $t1, $t2, label332
	j label333
label332:
	li $t0, 1
	sw $t0, -1456($fp)
label333:
	li $t0, 0
	sw $t0, -1476($fp)
	li $t0, 49887
	sw $t0, -1480($fp)
	li $t0, 17556
	sw $t0, -1484($fp)
	lw $t1, -1480($fp)
	lw $t2, -1484($fp)
	bgt $t1, $t2, label338
	j label337
label338:
	lw $t0, -284($fp)
	sw $t0, -1488($fp)
	lw $t1, -1488($fp)
	li $t2, 0
	bne $t1, $t2, label336
	j label337
label336:
	li $t0, 1
	sw $t0, -1476($fp)
label337:
	li $t0, 0
	sw $t0, -1492($fp)
	li $t0, 35140
	sw $t0, -1496($fp)
	li $t0, 53971
	sw $t0, -1500($fp)
	lw $t0, -1496($fp)
	lw $t1, -1500($fp)
	sub $t0, $t0, $t1
	sw $t0, -1504($fp)
	lw $t0, -380($fp)
	sw $t0, -1508($fp)
	lw $t1, -1504($fp)
	lw $t2, -1508($fp)
	blt $t1, $t2, label339
	j label340
label339:
	li $t0, 1
	sw $t0, -1492($fp)
label340:
	lw $t0, -368($fp)
	sw $t0, -1512($fp)
	lw $t0, 4($fp)
	sw $t0, -1516($fp)
	lw $t0, -620($fp)
	sw $t0, -1520($fp)
	lw $t0, -1516($fp)
	lw $t1, -1520($fp)
	add $t0, $t0, $t1
	sw $t0, -1524($fp)
	addi $sp, $sp, -4
	lw $t0, -1456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1524($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1528($fp)
	addi $sp, $sp, 24
	lw $t1, -1528($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label330
label330:
	li $t0, 1
	sw $t0, -1452($fp)
label331:
	lw $t0, -296($fp)
	sw $t0, -1532($fp)
	li $t0, 39857
	sw $t0, -1536($fp)
	lw $t0, -1532($fp)
	lw $t1, -1536($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1540($fp)
	lw $t1, -1452($fp)
	lw $t2, -1540($fp)
	beq $t1, $t2, label328
	j label329
label328:
	li $t0, 1
	sw $t0, -1448($fp)
label329:
	lw $t0, -1448($fp)
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	sw $t0, -1544($fp)
label326:
	j label321
label323:
	j label312
label314:
	li $t0, 51042
	sw $t0, -1548($fp)
	li $t0, 15790
	sw $t0, -1552($fp)
	lw $t0, -1548($fp)
	lw $t1, -1552($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1556($fp)
	li $t0, 7996
	sw $t0, -1560($fp)
	lw $t0, -1556($fp)
	lw $t1, -1560($fp)
	mul $t0, $t0, $t1
	sw $t0, -1564($fp)
	li $t0, 0
	lw $t1, -1564($fp)
	sub $t0, $t0, $t1
	sw $t0, -1568($fp)
	lw $t0, -584($fp)
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -1576($fp)
	li $t0, 38723
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -1584($fp)
	li $t0, 62358
	sw $t0, -1588($fp)
	lw $t0, -620($fp)
	sw $t0, -1592($fp)
	lw $t0, -1588($fp)
	lw $t1, -1592($fp)
	sub $t0, $t0, $t1
	sw $t0, -1596($fp)
	addi $sp, $sp, -4
	lw $t0, -1576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1596($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1600($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -1600($fp)
	sub $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, -1568($fp)
	lw $t1, -1604($fp)
	add $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t1, -1608($fp)
	li $t2, 0
	bne $t1, $t2, label341
	j label342
label341:
	li $t0, 30845
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	sw $t0, -1620($fp)
	lw $t0, -1616($fp)
	sw $t0, -1624($fp)
	li $t0, 40800
	sw $t0, -1628($fp)
	lw $t0, -1624($fp)
	lw $t1, -1628($fp)
	sub $t0, $t0, $t1
	sw $t0, -1632($fp)
	lw $t0, -368($fp)
	sw $t0, -1636($fp)
	lw $t0, -1632($fp)
	lw $t1, -1636($fp)
	add $t0, $t0, $t1
	sw $t0, -1640($fp)
	addi $sp, $sp, -4
	lw $t0, -1640($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1644($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -1644($fp)
	sub $t0, $t0, $t1
	sw $t0, -1648($fp)
	li $t0, 0
	sw $t0, -1652($fp)
	lw $t0, -332($fp)
	sw $t0, -1656($fp)
	addi $sp, $sp, -4
	lw $t0, -1656($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1660($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -1664($fp)
	lw $t0, -308($fp)
	sw $t0, -1668($fp)
	li $t0, 4
	lw $t1, -1668($fp)
	mul $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	lw $t1, -1664($fp)
	add $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	lw $t1, 0($t0)
	sw $t1, -1680($fp)
	lw $t0, -1660($fp)
	lw $t1, -1680($fp)
	add $t0, $t0, $t1
	sw $t0, -1684($fp)
	li $t0, 0
	sw $t0, -1688($fp)
	li $t0, 36535
	sw $t0, -1692($fp)
	li $t0, 35206
	sw $t0, -1696($fp)
	lw $t1, -1692($fp)
	lw $t2, -1696($fp)
	bne $t1, $t2, label348
	j label347
label348:
	li $t0, 52245
	sw $t0, -1700($fp)
	lw $t1, -1700($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label347
label346:
	li $t0, 1
	sw $t0, -1688($fp)
label347:
	li $t0, 34297
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -1708($fp)
	lw $t0, -812($fp)
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1716($fp)
	li $t0, 0
	sw $t0, -1720($fp)
	li $t0, 11239
	sw $t0, -1724($fp)
	li $t0, 60834
	sw $t0, -1728($fp)
	lw $t0, -1724($fp)
	lw $t1, -1728($fp)
	mul $t0, $t0, $t1
	sw $t0, -1732($fp)
	lw $t1, -1732($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label351
label351:
	lw $t0, 4($fp)
	sw $t0, -1736($fp)
	lw $t1, -1736($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label350
label349:
	li $t0, 1
	sw $t0, -1720($fp)
label350:
	li $t0, 0
	sw $t0, -1740($fp)
	li $t0, 0
	sw $t0, -1744($fp)
	li $t0, 16083
	sw $t0, -1748($fp)
	lw $t0, 8($fp)
	sw $t0, -1752($fp)
	lw $t1, -1748($fp)
	lw $t2, -1752($fp)
	ble $t1, $t2, label354
	j label355
label354:
	li $t0, 1
	sw $t0, -1744($fp)
label355:
	lw $t0, -620($fp)
	sw $t0, -1756($fp)
	lw $t1, -1744($fp)
	lw $t2, -1756($fp)
	beq $t1, $t2, label352
	j label353
label352:
	li $t0, 1
	sw $t0, -1740($fp)
label353:
	addi $sp, $sp, -4
	lw $t0, -1688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1740($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1760($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -84
	sw $t0, -1764($fp)
	lw $t0, -788($fp)
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
	lw $t0, -1760($fp)
	lw $t1, -1780($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1784($fp)
	lw $t1, -1684($fp)
	lw $t2, -1784($fp)
	ble $t1, $t2, label344
	j label345
label344:
	li $t0, 1
	sw $t0, -1652($fp)
label345:
	lw $t0, -860($fp)
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -1792($fp)
	li $t0, 0
	sw $t0, -1796($fp)
	jal f8
	sw $v0, -1800($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -1804($fp)
	lw $t0, -320($fp)
	sw $t0, -1808($fp)
	lw $t0, 4($fp)
	sw $t0, -1812($fp)
	lw $t0, -1808($fp)
	lw $t1, -1812($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1816($fp)
	lw $t0, -848($fp)
	sw $t0, -1820($fp)
	lw $t1, -1816($fp)
	lw $t2, -1820($fp)
	blt $t1, $t2, label359
	j label360
label359:
	li $t0, 1
	sw $t0, -1804($fp)
label360:
	lw $t1, -1800($fp)
	lw $t2, -1804($fp)
	beq $t1, $t2, label358
	j label357
label358:
	lw $t0, -620($fp)
	sw $t0, -1824($fp)
	li $t0, 55288
	sw $t0, -1828($fp)
	lw $t0, -1824($fp)
	lw $t1, -1828($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1832($fp)
	lw $t0, -356($fp)
	sw $t0, -1836($fp)
	lw $t0, -1832($fp)
	lw $t1, -1836($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1840($fp)
	li $t0, 55656
	sw $t0, -1844($fp)
	lw $t0, -1840($fp)
	lw $t1, -1844($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1848($fp)
	lw $t1, -1848($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label357
label356:
	li $t0, 1
	sw $t0, -1796($fp)
label357:
	j label343
label342:
	li $t0, 34455
	sw $t0, -1892($fp)
	addi $t0, $fp, -1888
	sw $t0, -1896($fp)
	li $t0, 0
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1904($fp)
	lw $t0, -1896($fp)
	lw $t1, -1904($fp)
	add $t0, $t0, $t1
	sw $t0, -1908($fp)
	lw $t0, -1892($fp)
	lw $t1, -1908($fp)
	sw $t0, 0($t1)
	lw $t0, -1908($fp)
	lw $t1, 0($t0)
	sw $t1, -1912($fp)
	li $t0, 51164
	sw $t0, -1916($fp)
	addi $t0, $fp, -1888
	sw $t0, -1920($fp)
	li $t0, 1
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t0, -1920($fp)
	lw $t1, -1928($fp)
	add $t0, $t0, $t1
	sw $t0, -1932($fp)
	lw $t0, -1916($fp)
	lw $t1, -1932($fp)
	sw $t0, 0($t1)
	lw $t0, -1932($fp)
	lw $t1, 0($t0)
	sw $t1, -1936($fp)
	li $t0, 35780
	sw $t0, -1940($fp)
	addi $t0, $fp, -1888
	sw $t0, -1944($fp)
	li $t0, 2
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $t0, -1944($fp)
	lw $t1, -1952($fp)
	add $t0, $t0, $t1
	sw $t0, -1956($fp)
	lw $t0, -1940($fp)
	lw $t1, -1956($fp)
	sw $t0, 0($t1)
	lw $t0, -1956($fp)
	lw $t1, 0($t0)
	sw $t1, -1960($fp)
	li $t0, 53085
	sw $t0, -1964($fp)
	addi $t0, $fp, -1888
	sw $t0, -1968($fp)
	li $t0, 3
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $t0, -1968($fp)
	lw $t1, -1976($fp)
	add $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, -1964($fp)
	lw $t1, -1980($fp)
	sw $t0, 0($t1)
	lw $t0, -1980($fp)
	lw $t1, 0($t0)
	sw $t1, -1984($fp)
	li $t0, 4825
	sw $t0, -1988($fp)
	addi $t0, $fp, -1888
	sw $t0, -1992($fp)
	li $t0, 4
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $t0, -1992($fp)
	lw $t1, -2000($fp)
	add $t0, $t0, $t1
	sw $t0, -2004($fp)
	lw $t0, -1988($fp)
	lw $t1, -2004($fp)
	sw $t0, 0($t1)
	lw $t0, -2004($fp)
	lw $t1, 0($t0)
	sw $t1, -2008($fp)
	li $t0, 16115
	sw $t0, -2012($fp)
	addi $t0, $fp, -1888
	sw $t0, -2016($fp)
	li $t0, 5
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2024($fp)
	lw $t0, -2016($fp)
	lw $t1, -2024($fp)
	add $t0, $t0, $t1
	sw $t0, -2028($fp)
	lw $t0, -2012($fp)
	lw $t1, -2028($fp)
	sw $t0, 0($t1)
	lw $t0, -2028($fp)
	lw $t1, 0($t0)
	sw $t1, -2032($fp)
	li $t0, 30591
	sw $t0, -2036($fp)
	addi $t0, $fp, -1888
	sw $t0, -2040($fp)
	li $t0, 6
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2048($fp)
	lw $t0, -2040($fp)
	lw $t1, -2048($fp)
	add $t0, $t0, $t1
	sw $t0, -2052($fp)
	lw $t0, -2036($fp)
	lw $t1, -2052($fp)
	sw $t0, 0($t1)
	lw $t0, -2052($fp)
	lw $t1, 0($t0)
	sw $t1, -2056($fp)
	li $t0, 45236
	sw $t0, -2060($fp)
	addi $t0, $fp, -1888
	sw $t0, -2064($fp)
	li $t0, 7
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $t0, -2064($fp)
	lw $t1, -2072($fp)
	add $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t0, -2060($fp)
	lw $t1, -2076($fp)
	sw $t0, 0($t1)
	lw $t0, -2076($fp)
	lw $t1, 0($t0)
	sw $t1, -2080($fp)
	li $t0, 51255
	sw $t0, -2084($fp)
	addi $t0, $fp, -1888
	sw $t0, -2088($fp)
	li $t0, 8
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t0, -2088($fp)
	lw $t1, -2096($fp)
	add $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $t0, -2084($fp)
	lw $t1, -2100($fp)
	sw $t0, 0($t1)
	lw $t0, -2100($fp)
	lw $t1, 0($t0)
	sw $t1, -2104($fp)
	li $t0, 19027
	sw $t0, -2108($fp)
	addi $t0, $fp, -1888
	sw $t0, -2112($fp)
	li $t0, 9
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2120($fp)
	lw $t0, -2112($fp)
	lw $t1, -2120($fp)
	add $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t0, -2108($fp)
	lw $t1, -2124($fp)
	sw $t0, 0($t1)
	lw $t0, -2124($fp)
	lw $t1, 0($t0)
	sw $t1, -2128($fp)
	lw $t0, -1064($fp)
	sw $t0, -2132($fp)
	addi $t0, $fp, -84
	sw $t0, -2136($fp)
	lw $t0, 4($fp)
	sw $t0, -2140($fp)
	lw $t0, 4($fp)
	sw $t0, -2144($fp)
	lw $t0, -2140($fp)
	lw $t1, -2144($fp)
	mul $t0, $t0, $t1
	sw $t0, -2148($fp)
	li $t0, 4
	lw $t1, -2148($fp)
	mul $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	lw $t1, -2136($fp)
	add $t0, $t0, $t1
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	lw $t1, 0($t0)
	sw $t1, -2160($fp)
	lw $t0, -2132($fp)
	lw $t1, -2160($fp)
	add $t0, $t0, $t1
	sw $t0, -2164($fp)
	li $t0, 0
	sw $t0, -2168($fp)
	li $t0, 0
	sw $t0, -2172($fp)
	lw $t0, -620($fp)
	sw $t0, -2176($fp)
	lw $t0, -596($fp)
	sw $t0, -2180($fp)
	lw $t1, -2176($fp)
	lw $t2, -2180($fp)
	beq $t1, $t2, label365
	j label366
label365:
	li $t0, 1
	sw $t0, -2172($fp)
label366:
	addi $sp, $sp, -4
	lw $t0, -2172($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2184($fp)
	addi $sp, $sp, 8
	li $t0, 29587
	sw $t0, -2188($fp)
	lw $t0, -2184($fp)
	lw $t1, -2188($fp)
	mul $t0, $t0, $t1
	sw $t0, -2192($fp)
	lw $t0, -608($fp)
	sw $t0, -2196($fp)
	li $t0, 0
	lw $t1, -2196($fp)
	sub $t0, $t0, $t1
	sw $t0, -2200($fp)
	lw $t0, -2192($fp)
	lw $t1, -2200($fp)
	sub $t0, $t0, $t1
	sw $t0, -2204($fp)
	lw $t1, -2204($fp)
	li $t2, 0
	bne $t1, $t2, label364
	j label363
label364:
	lw $t0, -836($fp)
	sw $t0, -2208($fp)
	lw $t1, -2208($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label363
label363:
	li $t0, 0
	sw $t0, -2212($fp)
	li $t0, 3275
	sw $t0, -2216($fp)
	lw $t1, -2216($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label368
label367:
	li $t0, 1
	sw $t0, -2212($fp)
label368:
	li $t0, 54318
	sw $t0, -2220($fp)
	lw $t0, -380($fp)
	sw $t0, -2224($fp)
	lw $t0, -2220($fp)
	lw $t1, -2224($fp)
	sub $t0, $t0, $t1
	sw $t0, -2228($fp)
	li $t0, 49256
	sw $t0, -2232($fp)
	lw $t0, -2228($fp)
	lw $t1, -2232($fp)
	add $t0, $t0, $t1
	sw $t0, -2236($fp)
	addi $t0, $fp, -1888
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
	addi $sp, $sp, -4
	lw $t0, -2236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2256($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2260($fp)
	addi $sp, $sp, 12
	lw $t0, -2212($fp)
	lw $t1, -2260($fp)
	add $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t1, -2264($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label362
label361:
	li $t0, 1
	sw $t0, -2168($fp)
label362:
	li $t0, 11904
	sw $t0, -2268($fp)
label343:
label369:
	li $t0, 7288
	sw $t0, -2272($fp)
	li $t0, 24988
	sw $t0, -2276($fp)
	lw $t0, -2272($fp)
	lw $t1, -2276($fp)
	sub $t0, $t0, $t1
	sw $t0, -2280($fp)
	li $t0, 0
	sw $t0, -2284($fp)
	lw $t0, -368($fp)
	sw $t0, -2288($fp)
	lw $t0, -836($fp)
	sw $t0, -2292($fp)
	lw $t0, -2288($fp)
	lw $t1, -2292($fp)
	mul $t0, $t0, $t1
	sw $t0, -2296($fp)
	li $t0, 21702
	sw $t0, -2300($fp)
	lw $t1, -2296($fp)
	lw $t2, -2300($fp)
	beq $t1, $t2, label373
	j label374
label373:
	li $t0, 1
	sw $t0, -2284($fp)
label374:
	li $t0, 0
	sw $t0, -2304($fp)
	li $t0, 38527
	sw $t0, -2308($fp)
	lw $t1, -2308($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label375
label375:
	li $t0, 1
	sw $t0, -2304($fp)
label376:
	li $t0, 53989
	sw $t0, -2312($fp)
	lw $t0, -2304($fp)
	lw $t1, -2312($fp)
	mul $t0, $t0, $t1
	sw $t0, -2316($fp)
	lw $t0, -824($fp)
	sw $t0, -2320($fp)
	li $t0, 0
	sw $t0, -2324($fp)
	li $t0, 42750
	sw $t0, -2328($fp)
	lw $t0, -332($fp)
	sw $t0, -2332($fp)
	lw $t1, -2328($fp)
	lw $t2, -2332($fp)
	blt $t1, $t2, label377
	j label379
label379:
	li $t0, 26404
	sw $t0, -2336($fp)
	lw $t1, -2336($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label378
label377:
	li $t0, 1
	sw $t0, -2324($fp)
label378:
	addi $sp, $sp, -4
	lw $t0, -2320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2324($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2340($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -2344($fp)
	li $t0, 51140
	sw $t0, -2348($fp)
	li $t0, 22444
	sw $t0, -2352($fp)
	lw $t0, -2348($fp)
	lw $t1, -2352($fp)
	sub $t0, $t0, $t1
	sw $t0, -2356($fp)
	lw $t1, -2356($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label381
label382:
	lw $t0, -320($fp)
	sw $t0, -2360($fp)
	lw $t1, -2360($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -2344($fp)
label381:
	addi $sp, $sp, -4
	lw $t0, -2280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2344($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2364($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -2368($fp)
	addi $t0, $fp, -84
	sw $t0, -2372($fp)
	lw $t0, 4($fp)
	sw $t0, -2376($fp)
	li $t0, 4
	lw $t1, -2376($fp)
	mul $t0, $t0, $t1
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	lw $t1, -2372($fp)
	add $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	lw $t1, 0($t0)
	sw $t1, -2388($fp)
	lw $t1, -2388($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label383
label383:
	li $t0, 1
	sw $t0, -2368($fp)
label384:
	lw $t1, -2364($fp)
	lw $t2, -2368($fp)
	beq $t1, $t2, label372
	j label371
label372:
	li $t0, 34760
	sw $t0, -2392($fp)
	li $t0, 20828
	sw $t0, -2396($fp)
	lw $t0, -572($fp)
	sw $t0, -2400($fp)
	lw $t0, -2396($fp)
	lw $t1, -2400($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2404($fp)
	li $t0, 0
	sw $t0, -2408($fp)
	li $t0, 0
	sw $t0, -2412($fp)
	li $t0, 1801
	sw $t0, -2416($fp)
	li $t0, 5173
	sw $t0, -2420($fp)
	lw $t1, -2416($fp)
	lw $t2, -2420($fp)
	beq $t1, $t2, label387
	j label389
label389:
	li $t0, 21731
	sw $t0, -2424($fp)
	lw $t1, -2424($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label388
label387:
	li $t0, 1
	sw $t0, -2412($fp)
label388:
	li $t0, 25473
	sw $t0, -2428($fp)
	li $t0, 0
	lw $t1, -2428($fp)
	sub $t0, $t0, $t1
	sw $t0, -2432($fp)
	li $t0, 36012
	sw $t0, -2436($fp)
	lw $t0, -2432($fp)
	lw $t1, -2436($fp)
	sub $t0, $t0, $t1
	sw $t0, -2440($fp)
	addi $t0, $fp, -60
	sw $t0, -2444($fp)
	lw $t0, -344($fp)
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
	addi $t0, $fp, -84
	sw $t0, -2464($fp)
	li $t0, 3
	sw $t0, -2468($fp)
	li $t0, 4
	lw $t1, -2468($fp)
	mul $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	lw $t1, -2464($fp)
	add $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	lw $t1, 0($t0)
	sw $t1, -2480($fp)
	li $t0, 20647
	sw $t0, -2484($fp)
	lw $t0, -392($fp)
	sw $t0, -2488($fp)
	lw $t0, -2484($fp)
	lw $t1, -2488($fp)
	mul $t0, $t0, $t1
	sw $t0, -2492($fp)
	li $t0, 0
	sw $t0, -2496($fp)
	li $t0, 49196
	sw $t0, -2500($fp)
	lw $t1, -2500($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label390
label390:
	li $t0, 1
	sw $t0, -2496($fp)
label391:
	li $t0, 0
	lw $t1, -2496($fp)
	sub $t0, $t0, $t1
	sw $t0, -2504($fp)
	lw $t0, -812($fp)
	sw $t0, -2508($fp)
	li $t0, 0
	sw $t0, -2512($fp)
	lw $t0, -800($fp)
	sw $t0, -2516($fp)
	lw $t1, -2516($fp)
	li $t2, 0
	bne $t1, $t2, label392
	j label394
label394:
	li $t0, 49653
	sw $t0, -2520($fp)
	lw $t1, -2520($fp)
	li $t2, 0
	bne $t1, $t2, label392
	j label393
label392:
	li $t0, 1
	sw $t0, -2512($fp)
label393:
	li $t0, 35019
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	sw $t0, -2528($fp)
	addi $sp, $sp, -4
	lw $t0, -2492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2528($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2532($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -2412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2532($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2536($fp)
	addi $sp, $sp, 24
	lw $t0, -560($fp)
	sw $t0, -2540($fp)
	lw $t1, -2536($fp)
	lw $t2, -2540($fp)
	bge $t1, $t2, label385
	j label386
label385:
	li $t0, 1
	sw $t0, -2408($fp)
label386:
	lw $t0, -812($fp)
	sw $t0, -2544($fp)
	lw $t0, -620($fp)
	sw $t0, -2548($fp)
	lw $t0, -2544($fp)
	lw $t1, -2548($fp)
	sub $t0, $t0, $t1
	sw $t0, -2552($fp)
	li $t0, 0
	sw $t0, -2556($fp)
	li $t0, 56909
	sw $t0, -2560($fp)
	li $t0, 59534
	sw $t0, -2564($fp)
	lw $t1, -2560($fp)
	lw $t2, -2564($fp)
	bgt $t1, $t2, label397
	j label396
label397:
	li $t0, 14741
	sw $t0, -2568($fp)
	lw $t1, -2568($fp)
	li $t2, 0
	bne $t1, $t2, label395
	j label396
label395:
	li $t0, 1
	sw $t0, -2556($fp)
label396:
	addi $sp, $sp, -4
	lw $t0, -2392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2556($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2572($fp)
	addi $sp, $sp, 24
	lw $t0, -356($fp)
	sw $t0, -2576($fp)
	lw $t0, -368($fp)
	sw $t0, -2580($fp)
	lw $t0, -2576($fp)
	lw $t1, -2580($fp)
	mul $t0, $t0, $t1
	sw $t0, -2584($fp)
	lw $t0, -2572($fp)
	lw $t1, -2584($fp)
	add $t0, $t0, $t1
	sw $t0, -2588($fp)
	lw $t1, -2588($fp)
	li $t2, 0
	bne $t1, $t2, label370
	j label371
label370:
	li $t0, 0
	sw $t0, -2592($fp)
	jal f8
	sw $v0, -2596($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -2600($fp)
	lw $t0, -368($fp)
	sw $t0, -2604($fp)
	li $t0, 0
	lw $t1, -2604($fp)
	sub $t0, $t0, $t1
	sw $t0, -2608($fp)
	lw $t0, -788($fp)
	sw $t0, -2612($fp)
	lw $t1, -2608($fp)
	lw $t2, -2612($fp)
	bge $t1, $t2, label401
	j label402
label401:
	li $t0, 1
	sw $t0, -2600($fp)
label402:
	li $t0, 0
	sw $t0, -2616($fp)
	lw $t0, -380($fp)
	sw $t0, -2620($fp)
	lw $t1, -2620($fp)
	li $t2, 0
	bne $t1, $t2, label405
	j label404
label405:
	lw $t0, -812($fp)
	sw $t0, -2624($fp)
	lw $t1, -2624($fp)
	li $t2, 0
	bne $t1, $t2, label403
	j label404
label403:
	li $t0, 1
	sw $t0, -2616($fp)
label404:
	addi $sp, $sp, -4
	lw $t0, -2596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2600($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2616($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2628($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -84
	sw $t0, -2632($fp)
	lw $t0, -392($fp)
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
	lw $t0, -2628($fp)
	lw $t1, -2648($fp)
	sub $t0, $t0, $t1
	sw $t0, -2652($fp)
	lw $t1, -2652($fp)
	li $t2, 0
	bne $t1, $t2, label398
	j label400
label400:
	addi $t0, $fp, -84
	sw $t0, -2656($fp)
	li $t0, 5
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
	li $t0, 0
	sw $t0, -2680($fp)
	lw $t0, -404($fp)
	sw $t0, -2684($fp)
	li $t0, 25007
	sw $t0, -2688($fp)
	lw $t1, -2684($fp)
	lw $t2, -2688($fp)
	beq $t1, $t2, label406
	j label408
label408:
	li $t0, 54294
	sw $t0, -2692($fp)
	lw $t1, -2692($fp)
	li $t2, 0
	bne $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -2680($fp)
label407:
	addi $sp, $sp, -4
	lw $t0, -2676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2680($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2696($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2696($fp)
	sub $t0, $t0, $t1
	sw $t0, -2700($fp)
	lw $t1, -2700($fp)
	li $t2, 0
	bne $t1, $t2, label398
	j label399
label398:
	li $t0, 1
	sw $t0, -2592($fp)
label399:
	j label369
label371:
label409:
	lw $t0, -344($fp)
	sw $t0, -2704($fp)
	lw $t0, -356($fp)
	sw $t0, -2708($fp)
	li $t0, 38014
	sw $t0, -2712($fp)
	lw $t0, -2708($fp)
	lw $t1, -2712($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2716($fp)
	addi $sp, $sp, -4
	lw $t0, -2704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2716($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2720($fp)
	addi $sp, $sp, 12
	lw $t1, -2720($fp)
	li $t2, 0
	bne $t1, $t2, label410
	j label411
label410:
	li $t0, 0
	sw $t0, -2724($fp)
	addi $t0, $fp, -84
	sw $t0, -2728($fp)
	addi $t0, $fp, -12
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
	li $t0, 4
	lw $t1, -2748($fp)
	mul $t0, $t0, $t1
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	lw $t1, -2728($fp)
	add $t0, $t0, $t1
	sw $t0, -2756($fp)
	lw $t0, -2756($fp)
	lw $t1, 0($t0)
	sw $t1, -2760($fp)
	lw $t1, -2760($fp)
	li $t2, 0
	bne $t1, $t2, label413
	j label412
label412:
	li $t0, 1
	sw $t0, -2724($fp)
label413:
	j label409
label411:
	li $t0, 0
	sw $t0, -2764($fp)
	lw $t0, 4($fp)
	sw $t0, -2768($fp)
	lw $t0, -332($fp)
	sw $t0, -2772($fp)
	li $t0, 0
	sw $t0, -2776($fp)
	li $t0, 60458
	sw $t0, -2780($fp)
	lw $t1, -2780($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label416
label416:
	li $t0, 1
	sw $t0, -2776($fp)
label417:
	lw $t0, -2772($fp)
	lw $t1, -2776($fp)
	add $t0, $t0, $t1
	sw $t0, -2784($fp)
	lw $t1, -2768($fp)
	lw $t2, -2784($fp)
	bge $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -2764($fp)
label415:
	addi $t0, $fp, -36
	sw $t0, -2788($fp)
	li $t0, 0
	sw $t0, -2792($fp)
	lw $t0, -620($fp)
	sw $t0, -2796($fp)
	lw $t1, -2796($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label421
label421:
	li $t0, 1
	sw $t0, -2792($fp)
label422:
	li $t0, 27787
	sw $t0, -2800($fp)
	lw $t0, -2792($fp)
	lw $t1, -2800($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2804($fp)
	li $t0, 4
	lw $t1, -2804($fp)
	mul $t0, $t0, $t1
	sw $t0, -2808($fp)
	lw $t0, -2808($fp)
	lw $t1, -2788($fp)
	add $t0, $t0, $t1
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	lw $t1, 0($t0)
	sw $t1, -2816($fp)
	lw $t0, -824($fp)
	sw $t0, -2820($fp)
	lw $t1, -2816($fp)
	lw $t2, -2820($fp)
	blt $t1, $t2, label418
	j label419
label418:
	li $t0, 0
	sw $t0, -2824($fp)
	li $t0, 0
	sw $t0, -2828($fp)
	addi $t0, $fp, -12
	sw $t0, -2832($fp)
	li $t0, 1
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
	lw $t1, -2848($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label425
label425:
	li $t0, 1
	sw $t0, -2828($fp)
label426:
	addi $t0, $fp, -84
	sw $t0, -2852($fp)
	lw $t0, -584($fp)
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
	li $t0, 0
	sw $t0, -2872($fp)
	lw $t0, -296($fp)
	sw $t0, -2876($fp)
	li $t0, 25797
	sw $t0, -2880($fp)
	lw $t0, -2876($fp)
	lw $t1, -2880($fp)
	mul $t0, $t0, $t1
	sw $t0, -2884($fp)
	li $t0, 33450
	sw $t0, -2888($fp)
	lw $t1, -2884($fp)
	lw $t2, -2888($fp)
	bne $t1, $t2, label427
	j label428
label427:
	li $t0, 1
	sw $t0, -2872($fp)
label428:
	addi $sp, $sp, -4
	lw $t0, -2828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2872($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2892($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -84
	sw $t0, -2896($fp)
	li $t0, 40738
	sw $t0, -2900($fp)
	lw $t0, -860($fp)
	sw $t0, -2904($fp)
	lw $t0, -2900($fp)
	lw $t1, -2904($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2908($fp)
	li $t0, 4
	lw $t1, -2908($fp)
	mul $t0, $t0, $t1
	sw $t0, -2912($fp)
	lw $t0, -2912($fp)
	lw $t1, -2896($fp)
	add $t0, $t0, $t1
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	lw $t1, 0($t0)
	sw $t1, -2920($fp)
	lw $t1, -2892($fp)
	lw $t2, -2920($fp)
	blt $t1, $t2, label423
	j label424
label423:
	li $t0, 1
	sw $t0, -2824($fp)
label424:
	j label420
label419:
	li $t0, 41229
	sw $t0, -2924($fp)
	addi $t0, $fp, -12
	sw $t0, -2928($fp)
	li $t0, 0
	sw $t0, -2932($fp)
	li $t0, 4
	lw $t1, -2932($fp)
	mul $t0, $t0, $t1
	sw $t0, -2936($fp)
	lw $t0, -2936($fp)
	lw $t1, -2928($fp)
	add $t0, $t0, $t1
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	lw $t1, 0($t0)
	sw $t1, -2944($fp)
	lw $t0, -2924($fp)
	lw $t1, -2944($fp)
	mul $t0, $t0, $t1
	sw $t0, -2948($fp)
	li $t0, 0
	lw $t1, -2948($fp)
	sub $t0, $t0, $t1
	sw $t0, -2952($fp)
	li $t0, 0
	lw $t1, -2952($fp)
	sub $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -2960($fp)
	lw $t1, -2960($fp)
	li $t2, 0
	bne $t1, $t2, label429
	j label430
label429:
	li $t0, 0
	sw $t0, -2964($fp)
	addi $t0, $fp, -12
	sw $t0, -2968($fp)
	li $t0, 1
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
	li $t0, 18853
	sw $t0, -2988($fp)
	li $t0, 39630
	sw $t0, -2992($fp)
	lw $t0, -2988($fp)
	lw $t1, -2992($fp)
	mul $t0, $t0, $t1
	sw $t0, -2996($fp)
	li $t0, 29003
	sw $t0, -3000($fp)
	lw $t0, -2996($fp)
	lw $t1, -3000($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3004($fp)
	lw $t0, -2984($fp)
	lw $t1, -3004($fp)
	sub $t0, $t0, $t1
	sw $t0, -3008($fp)
	li $t0, 0
	sw $t0, -3012($fp)
	lw $t0, -812($fp)
	sw $t0, -3016($fp)
	li $t0, 38750
	sw $t0, -3020($fp)
	lw $t0, -3016($fp)
	lw $t1, -3020($fp)
	mul $t0, $t0, $t1
	sw $t0, -3024($fp)
	li $t0, 0
	lw $t1, -3024($fp)
	sub $t0, $t0, $t1
	sw $t0, -3028($fp)
	li $t0, 10840
	sw $t0, -3032($fp)
	li $t0, 54476
	sw $t0, -3036($fp)
	lw $t0, -3032($fp)
	lw $t1, -3036($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3040($fp)
	lw $t1, -3028($fp)
	lw $t2, -3040($fp)
	ble $t1, $t2, label434
	j label435
label434:
	li $t0, 1
	sw $t0, -3012($fp)
label435:
	lw $t1, -3008($fp)
	lw $t2, -3012($fp)
	beq $t1, $t2, label432
	j label433
label432:
	li $t0, 1
	sw $t0, -2964($fp)
label433:
	j label431
label430:
	li $t0, 9226
	sw $t0, -3044($fp)
	lw $t0, -3044($fp)
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	sw $t0, -3052($fp)
	addi $t0, $fp, -84
	sw $t0, -3056($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -3076($fp)
	lw $t0, -824($fp)
	sw $t0, -3080($fp)
	li $t0, 0
	lw $t1, -3080($fp)
	sub $t0, $t0, $t1
	sw $t0, -3084($fp)
	lw $t0, -608($fp)
	sw $t0, -3088($fp)
	lw $t1, -3084($fp)
	lw $t2, -3088($fp)
	ble $t1, $t2, label436
	j label437
label436:
	li $t0, 1
	sw $t0, -3076($fp)
label437:
	addi $sp, $sp, -4
	lw $t0, -3072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3076($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3092($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -3096($fp)
	lw $t0, -3048($fp)
	sw $t0, -3100($fp)
	li $t0, 30958
	sw $t0, -3104($fp)
	lw $t1, -3100($fp)
	lw $t2, -3104($fp)
	ble $t1, $t2, label438
	j label440
label440:
	lw $t0, -800($fp)
	sw $t0, -3108($fp)
	lw $t0, -776($fp)
	sw $t0, -3112($fp)
	li $t0, 0
	lw $t1, -3112($fp)
	sub $t0, $t0, $t1
	sw $t0, -3116($fp)
	lw $t1, -3108($fp)
	lw $t2, -3116($fp)
	bge $t1, $t2, label438
	j label439
label438:
	li $t0, 1
	sw $t0, -3096($fp)
label439:
	li $t0, 33469
	sw $t0, -3120($fp)
label431:
label420:
	addi $t0, $fp, -12
	sw $t0, -3124($fp)
	li $t0, 0
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
	lw $t0, -3140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -3144($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	lw $t0, -284($fp)
	sw $t0, -3284($fp)
	lw $t0, -3284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -296($fp)
	sw $t0, -3288($fp)
	lw $t0, -3288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -308($fp)
	sw $t0, -3292($fp)
	lw $t0, -3292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -320($fp)
	sw $t0, -3296($fp)
	lw $t0, -3296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -332($fp)
	sw $t0, -3300($fp)
	lw $t0, -3300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -344($fp)
	sw $t0, -3304($fp)
	lw $t0, -3304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -356($fp)
	sw $t0, -3308($fp)
	lw $t0, -3308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	sw $t0, -3312($fp)
	lw $t0, -3312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -3316($fp)
	lw $t0, -3316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -392($fp)
	sw $t0, -3320($fp)
	lw $t0, -3320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -404($fp)
	sw $t0, -3324($fp)
	lw $t0, -3324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3328($fp)
	li $t0, 0
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
	addi $t0, $fp, -60
	sw $t0, -3348($fp)
	li $t0, 1
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
	addi $t0, $fp, -60
	sw $t0, -3368($fp)
	li $t0, 2
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
	addi $t0, $fp, -60
	sw $t0, -3388($fp)
	li $t0, 3
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
	addi $t0, $fp, -60
	sw $t0, -3408($fp)
	li $t0, 4
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
	addi $t0, $fp, -60
	sw $t0, -3428($fp)
	li $t0, 5
	sw $t0, -3432($fp)
	li $t0, 4
	lw $t1, -3432($fp)
	mul $t0, $t0, $t1
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	lw $t1, -3428($fp)
	add $t0, $t0, $t1
	sw $t0, -3440($fp)
	lw $t0, -3440($fp)
	lw $t1, 0($t0)
	sw $t1, -3444($fp)
	lw $t0, -3444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -3448($fp)
	lw $t0, -3448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -584($fp)
	sw $t0, -3456($fp)
	lw $t0, -3456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -596($fp)
	sw $t0, -3460($fp)
	lw $t0, -3460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -608($fp)
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -620($fp)
	sw $t0, -3468($fp)
	lw $t0, -3468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
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
	addi $t0, $fp, -84
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
	addi $t0, $fp, -84
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
	addi $t0, $fp, -84
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
	addi $t0, $fp, -84
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
	addi $t0, $fp, -84
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
	lw $t0, -776($fp)
	sw $t0, -3592($fp)
	lw $t0, -3592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -788($fp)
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -800($fp)
	sw $t0, -3600($fp)
	lw $t0, -3600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -812($fp)
	sw $t0, -3604($fp)
	lw $t0, -3604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -824($fp)
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -836($fp)
	sw $t0, -3612($fp)
	lw $t0, -3612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -848($fp)
	sw $t0, -3616($fp)
	lw $t0, -3616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -860($fp)
	sw $t0, -3620($fp)
	lw $t0, -3620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -836($fp)
	sw $t0, -3624($fp)
	lw $t0, -368($fp)
	sw $t0, -3628($fp)
	li $t0, 0
	lw $t1, -3628($fp)
	sub $t0, $t0, $t1
	sw $t0, -3632($fp)
	li $t0, 0
	lw $t1, -3632($fp)
	sub $t0, $t0, $t1
	sw $t0, -3636($fp)
	lw $t0, -3624($fp)
	lw $t1, -3636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3640($fp)
	li $t0, 0
	sw $t0, -3644($fp)
	jal f8
	sw $v0, -3648($fp)
	addi $sp, $sp, 4
	lw $t1, -3648($fp)
	li $t2, 0
	bne $t1, $t2, label441
	j label443
label443:
	lw $t0, -296($fp)
	sw $t0, -3652($fp)
	lw $t1, -3652($fp)
	li $t2, 0
	bne $t1, $t2, label441
	j label442
label441:
	li $t0, 1
	sw $t0, -3644($fp)
label442:
	lw $t0, -284($fp)
	sw $t0, -3656($fp)
	li $t0, 0
	sw $t0, -3660($fp)
	lw $t0, -620($fp)
	sw $t0, -3664($fp)
	li $t0, 60241
	sw $t0, -3668($fp)
	lw $t1, -3664($fp)
	lw $t2, -3668($fp)
	bge $t1, $t2, label444
	j label445
label444:
	li $t0, 1
	sw $t0, -3660($fp)
label445:
	li $t0, 0
	sw $t0, -3672($fp)
	li $t0, 0
	sw $t0, -3676($fp)
	li $t0, 2006
	sw $t0, -3680($fp)
	lw $t1, -3680($fp)
	li $t2, 0
	bne $t1, $t2, label450
	j label448
label450:
	li $t0, 4218
	sw $t0, -3684($fp)
	lw $t1, -3684($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label449
label448:
	li $t0, 1
	sw $t0, -3676($fp)
label449:
	lw $t0, -848($fp)
	sw $t0, -3688($fp)
	li $t0, 55965
	sw $t0, -3692($fp)
	lw $t0, -3688($fp)
	lw $t1, -3692($fp)
	sub $t0, $t0, $t1
	sw $t0, -3696($fp)
	li $t0, 22227
	sw $t0, -3700($fp)
	lw $t0, -3696($fp)
	lw $t1, -3700($fp)
	add $t0, $t0, $t1
	sw $t0, -3704($fp)
	addi $sp, $sp, -4
	lw $t0, -3676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3704($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3708($fp)
	addi $sp, $sp, 12
	lw $t1, -3708($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label446
label446:
	li $t0, 1
	sw $t0, -3672($fp)
label447:
	li $t0, 28873
	sw $t0, -3712($fp)
	addi $sp, $sp, -4
	lw $t0, -3644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3712($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3716($fp)
	addi $sp, $sp, 24
	lw $t0, -3640($fp)
	lw $t1, -3716($fp)
	sub $t0, $t0, $t1
	sw $t0, -3720($fp)
	lw $ra, -4($fp)
	lw $v0, -3720($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -160
	li $t0, 52580
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 3611
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 55164
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	li $t0, 0
	sw $t0, -44($fp)
	li $t0, 0
	sw $t0, -48($fp)
	li $t0, 0
	sw $t0, -52($fp)
	lw $t0, -36($fp)
	sw $t0, -56($fp)
	li $t0, 23078
	sw $t0, -60($fp)
	lw $t1, -56($fp)
	lw $t2, -60($fp)
	bne $t1, $t2, label456
	j label457
label456:
	li $t0, 1
	sw $t0, -52($fp)
label457:
	lw $t0, -12($fp)
	sw $t0, -64($fp)
	lw $t1, -52($fp)
	lw $t2, -64($fp)
	bne $t1, $t2, label454
	j label455
label454:
	li $t0, 1
	sw $t0, -48($fp)
label455:
	li $t0, 0
	sw $t0, -68($fp)
	li $t0, 14831
	sw $t0, -72($fp)
	lw $t0, -24($fp)
	sw $t0, -76($fp)
	lw $t0, -72($fp)
	lw $t1, -76($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -80($fp)
	li $t0, 29408
	sw $t0, -84($fp)
	lw $t1, -80($fp)
	lw $t2, -84($fp)
	bne $t1, $t2, label458
	j label459
label458:
	li $t0, 1
	sw $t0, -68($fp)
label459:
	addi $sp, $sp, -4
	lw $t0, -48($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -68($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -88($fp)
	addi $sp, $sp, 12
	lw $t0, -24($fp)
	sw $t0, -92($fp)
	li $t0, 0
	lw $t1, -92($fp)
	sub $t0, $t0, $t1
	sw $t0, -96($fp)
	lw $t0, -88($fp)
	lw $t1, -96($fp)
	mul $t0, $t0, $t1
	sw $t0, -100($fp)
	lw $t1, -100($fp)
	li $t2, 0
	bne $t1, $t2, label453
	j label452
label453:
	li $t0, 31072
	sw $t0, -104($fp)
	lw $t1, -104($fp)
	li $t2, 0
	bne $t1, $t2, label451
	j label452
label451:
	li $t0, 1
	sw $t0, -44($fp)
label452:
	li $t0, 0
	sw $t0, -108($fp)
	li $t0, 11371
	sw $t0, -112($fp)
	lw $t1, -112($fp)
	li $t2, 0
	bne $t1, $t2, label462
	j label461
label462:
	li $t0, 63816
	sw $t0, -116($fp)
	lw $t0, -12($fp)
	sw $t0, -120($fp)
	lw $t0, -116($fp)
	lw $t1, -120($fp)
	mul $t0, $t0, $t1
	sw $t0, -124($fp)
	lw $t0, -12($fp)
	sw $t0, -128($fp)
	lw $t0, -124($fp)
	lw $t1, -128($fp)
	sub $t0, $t0, $t1
	sw $t0, -132($fp)
	lw $t0, -36($fp)
	sw $t0, -136($fp)
	li $t0, 6766
	sw $t0, -140($fp)
	lw $t0, -136($fp)
	lw $t1, -140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -144($fp)
	lw $t0, -132($fp)
	lw $t1, -144($fp)
	sub $t0, $t0, $t1
	sw $t0, -148($fp)
	lw $t1, -148($fp)
	li $t2, 0
	bne $t1, $t2, label460
	j label461
label460:
	li $t0, 1
	sw $t0, -108($fp)
label461:
	lw $t0, -12($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -36($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 50244
	sw $t0, -164($fp)
	lw $ra, -4($fp)
	lw $v0, -164($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4220
	li $t0, 33017
	sw $t0, -28($fp)
	lw $t0, -28($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	li $t0, 62736
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	li $t0, 58599
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	li $t0, 51870
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	li $t0, 36831
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	li $t0, 22066
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	li $t0, 25085
	sw $t0, -100($fp)
	addi $t0, $fp, -24
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
	li $t0, 47671
	sw $t0, -124($fp)
	addi $t0, $fp, -24
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
	li $t0, 11006
	sw $t0, -148($fp)
	addi $t0, $fp, -24
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
	li $t0, 34311
	sw $t0, -172($fp)
	addi $t0, $fp, -24
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
	li $t0, 60312
	sw $t0, -196($fp)
	addi $t0, $fp, -24
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
	li $t0, 0
	sw $t0, -220($fp)
	li $t0, 5119
	sw $t0, -224($fp)
	lw $t1, -224($fp)
	li $t2, 0
	bne $t1, $t2, label465
	j label464
label465:
	lw $t0, -92($fp)
	sw $t0, -228($fp)
	lw $t0, -80($fp)
	sw $t0, -232($fp)
	lw $t0, -228($fp)
	lw $t1, -232($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -236($fp)
	lw $t1, -236($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label464
label463:
	li $t0, 1
	sw $t0, -220($fp)
label464:
	lw $t0, -220($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -240($fp)
	jal f8
	sw $v0, -244($fp)
	addi $sp, $sp, 4
	lw $t1, -244($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label467
label469:
	lw $t0, -32($fp)
	sw $t0, -248($fp)
	lw $t1, -248($fp)
	li $t2, 0
	bne $t1, $t2, label466
	j label467
label466:
	li $t0, 0
	sw $t0, -252($fp)
	addi $t0, $fp, -24
	sw $t0, -256($fp)
	li $t0, 3
	sw $t0, -260($fp)
	li $t0, 4
	lw $t1, -260($fp)
	mul $t0, $t0, $t1
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	lw $t1, -256($fp)
	add $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	lw $t1, 0($t0)
	sw $t1, -272($fp)
	lw $t1, -272($fp)
	li $t2, 0
	bne $t1, $t2, label471
	j label470
label470:
	li $t0, 1
	sw $t0, -252($fp)
label471:
	lw $t0, -252($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -276($fp)
	lw $ra, -4($fp)
	lw $v0, -276($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label467:
	li $t0, 33993
	sw $t0, -372($fp)
	addi $t0, $fp, -308
	sw $t0, -376($fp)
	li $t0, 0
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
	li $t0, 55698
	sw $t0, -396($fp)
	addi $t0, $fp, -308
	sw $t0, -400($fp)
	li $t0, 1
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
	li $t0, 50472
	sw $t0, -420($fp)
	addi $t0, $fp, -308
	sw $t0, -424($fp)
	li $t0, 2
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
	li $t0, 35999
	sw $t0, -444($fp)
	addi $t0, $fp, -308
	sw $t0, -448($fp)
	li $t0, 3
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
	li $t0, 59916
	sw $t0, -468($fp)
	addi $t0, $fp, -308
	sw $t0, -472($fp)
	li $t0, 4
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
	li $t0, 45177
	sw $t0, -492($fp)
	addi $t0, $fp, -308
	sw $t0, -496($fp)
	li $t0, 5
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
	li $t0, 23043
	sw $t0, -516($fp)
	addi $t0, $fp, -308
	sw $t0, -520($fp)
	li $t0, 6
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
	li $t0, 63527
	sw $t0, -540($fp)
	addi $t0, $fp, -308
	sw $t0, -544($fp)
	li $t0, 7
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
	li $t0, 34805
	sw $t0, -564($fp)
	addi $t0, $fp, -312
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
	li $t0, 37875
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	li $t0, 27399
	sw $t0, -600($fp)
	addi $t0, $fp, -324
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
	li $t0, 57883
	sw $t0, -624($fp)
	addi $t0, $fp, -324
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
	li $t0, 3411
	sw $t0, -648($fp)
	addi $t0, $fp, -324
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
	li $t0, 38771
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	li $t0, 56164
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	li $t0, 10177
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	li $t0, 23479
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	li $t0, 23645
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	li $t0, 7378
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	li $t0, 16542
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -752($fp)
	li $t0, 9979
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -764($fp)
	li $t0, 44209
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -776($fp)
	li $t0, 38609
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -788($fp)
	li $t0, 35064
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -800($fp)
	li $t0, 26344
	sw $t0, -804($fp)
	addi $t0, $fp, -336
	sw $t0, -808($fp)
	li $t0, 0
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
	li $t0, 49615
	sw $t0, -828($fp)
	addi $t0, $fp, -336
	sw $t0, -832($fp)
	li $t0, 1
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
	li $t0, 3840
	sw $t0, -852($fp)
	addi $t0, $fp, -336
	sw $t0, -856($fp)
	li $t0, 2
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
	li $t0, 21120
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -884($fp)
	li $t0, 54735
	sw $t0, -888($fp)
	addi $t0, $fp, -348
	sw $t0, -892($fp)
	li $t0, 0
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
	li $t0, 3573
	sw $t0, -912($fp)
	addi $t0, $fp, -348
	sw $t0, -916($fp)
	li $t0, 1
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
	li $t0, 49365
	sw $t0, -936($fp)
	addi $t0, $fp, -348
	sw $t0, -940($fp)
	li $t0, 2
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
	li $t0, 23192
	sw $t0, -960($fp)
	addi $t0, $fp, -368
	sw $t0, -964($fp)
	li $t0, 0
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
	li $t0, 59272
	sw $t0, -984($fp)
	addi $t0, $fp, -368
	sw $t0, -988($fp)
	li $t0, 1
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
	li $t0, 34301
	sw $t0, -1008($fp)
	addi $t0, $fp, -368
	sw $t0, -1012($fp)
	li $t0, 2
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
	li $t0, 59191
	sw $t0, -1032($fp)
	addi $t0, $fp, -368
	sw $t0, -1036($fp)
	li $t0, 3
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
	li $t0, 53652
	sw $t0, -1056($fp)
	addi $t0, $fp, -368
	sw $t0, -1060($fp)
	li $t0, 4
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
	li $t0, 13942
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -1088($fp)
	li $t0, 16699
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -1100($fp)
	li $t0, 51644
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	sw $t0, -1112($fp)
label472:
	li $t0, 0
	sw $t0, -1116($fp)
	li $t0, 0
	sw $t0, -1120($fp)
	li $t0, 0
	sw $t0, -1124($fp)
	li $t0, 48748
	sw $t0, -1128($fp)
	li $t0, 54574
	sw $t0, -1132($fp)
	lw $t1, -1128($fp)
	lw $t2, -1132($fp)
	bgt $t1, $t2, label479
	j label481
label481:
	li $t0, 13507
	sw $t0, -1136($fp)
	lw $t1, -1136($fp)
	li $t2, 0
	bne $t1, $t2, label479
	j label480
label479:
	li $t0, 1
	sw $t0, -1124($fp)
label480:
	li $t0, 0
	sw $t0, -1140($fp)
	lw $t0, -1096($fp)
	sw $t0, -1144($fp)
	lw $t1, -1144($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label485
label485:
	lw $t0, -56($fp)
	sw $t0, -1148($fp)
	lw $t1, -1148($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label484
label484:
	lw $t0, -32($fp)
	sw $t0, -1152($fp)
	lw $t1, -1152($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label483
label482:
	li $t0, 1
	sw $t0, -1140($fp)
label483:
	addi $sp, $sp, -4
	lw $t0, -1124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1140($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1156($fp)
	addi $sp, $sp, 12
	li $t0, 41095
	sw $t0, -1160($fp)
	lw $t1, -1156($fp)
	lw $t2, -1160($fp)
	bgt $t1, $t2, label477
	j label478
label477:
	li $t0, 1
	sw $t0, -1120($fp)
label478:
	li $t0, 57985
	sw $t0, -1164($fp)
	lw $t0, -676($fp)
	sw $t0, -1168($fp)
	lw $t0, -1164($fp)
	lw $t1, -1168($fp)
	mul $t0, $t0, $t1
	sw $t0, -1172($fp)
	lw $t1, -1120($fp)
	lw $t2, -1172($fp)
	ble $t1, $t2, label475
	j label476
label475:
	li $t0, 1
	sw $t0, -1116($fp)
label476:
	lw $t0, -1116($fp)
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -1176($fp)
	lw $t1, -1176($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label474
label473:
	li $t0, 0
	sw $t0, -1180($fp)
	li $t0, 0
	sw $t0, -1184($fp)
	li $t0, 0
	sw $t0, -1188($fp)
	addi $t0, $fp, -308
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
	lw $t1, -1208($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label490
label490:
	li $t0, 1
	sw $t0, -1188($fp)
label491:
	li $t0, 0
	sw $t0, -1212($fp)
	lw $t0, -688($fp)
	sw $t0, -1216($fp)
	li $t0, 55368
	sw $t0, -1220($fp)
	lw $t1, -1216($fp)
	lw $t2, -1220($fp)
	beq $t1, $t2, label492
	j label493
label492:
	li $t0, 1
	sw $t0, -1212($fp)
label493:
	li $t0, 0
	sw $t0, -1224($fp)
	li $t0, 10221
	sw $t0, -1228($fp)
	lw $t1, -1228($fp)
	li $t2, 0
	bne $t1, $t2, label497
	j label495
label497:
	lw $t0, -1108($fp)
	sw $t0, -1232($fp)
	lw $t1, -1232($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label495
label496:
	lw $t0, -44($fp)
	sw $t0, -1236($fp)
	lw $t1, -1236($fp)
	li $t2, 0
	bne $t1, $t2, label494
	j label495
label494:
	li $t0, 1
	sw $t0, -1224($fp)
label495:
	li $t0, 2627
	sw $t0, -1240($fp)
	addi $sp, $sp, -4
	lw $t0, -1212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1240($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1244($fp)
	addi $sp, $sp, 16
	lw $t1, -1188($fp)
	lw $t2, -1244($fp)
	bge $t1, $t2, label488
	j label489
label488:
	li $t0, 1
	sw $t0, -1184($fp)
label489:
	lw $t0, -796($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -1252($fp)
	li $t0, 15022
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -1260($fp)
	li $t0, 0
	sw $t0, -1264($fp)
	li $t0, 54214
	sw $t0, -1268($fp)
	li $t0, 65373
	sw $t0, -1272($fp)
	lw $t0, -1268($fp)
	lw $t1, -1272($fp)
	add $t0, $t0, $t1
	sw $t0, -1276($fp)
	lw $t1, -1276($fp)
	li $t2, 0
	bne $t1, $t2, label498
	j label500
label500:
	li $t0, 34876
	sw $t0, -1280($fp)
	lw $t1, -1280($fp)
	li $t2, 0
	bne $t1, $t2, label498
	j label499
label498:
	li $t0, 1
	sw $t0, -1264($fp)
label499:
	li $t0, 10005
	sw $t0, -1284($fp)
	li $t0, 26764
	sw $t0, -1288($fp)
	lw $t0, -1284($fp)
	lw $t1, -1288($fp)
	sub $t0, $t0, $t1
	sw $t0, -1292($fp)
	li $t0, 65348
	sw $t0, -1296($fp)
	lw $t0, -1292($fp)
	lw $t1, -1296($fp)
	sub $t0, $t0, $t1
	sw $t0, -1300($fp)
	addi $sp, $sp, -4
	lw $t0, -1252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1300($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -1304($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -1308($fp)
	li $t0, 49452
	sw $t0, -1312($fp)
	lw $t1, -1312($fp)
	li $t2, 0
	bne $t1, $t2, label502
	j label501
label501:
	li $t0, 1
	sw $t0, -1308($fp)
label502:
	lw $t0, -1304($fp)
	lw $t1, -1308($fp)
	mul $t0, $t0, $t1
	sw $t0, -1316($fp)
	lw $t1, -1184($fp)
	lw $t2, -1316($fp)
	bgt $t1, $t2, label486
	j label487
label486:
	li $t0, 1
	sw $t0, -1180($fp)
label487:
	j label472
label474:
	li $t0, 38716
	sw $t0, -1320($fp)
	lw $t1, -1320($fp)
	li $t2, 0
	bne $t1, $t2, label503
	j label504
label503:
label506:
	li $t0, 36142
	sw $t0, -1324($fp)
	lw $t1, -1324($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label508
label509:
	addi $t0, $fp, -348
	sw $t0, -1328($fp)
	li $t0, 0
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
	li $t0, 19971
	sw $t0, -1348($fp)
	lw $t0, -1344($fp)
	lw $t1, -1348($fp)
	sub $t0, $t0, $t1
	sw $t0, -1352($fp)
	li $t0, 61843
	sw $t0, -1356($fp)
	li $t0, 36026
	sw $t0, -1360($fp)
	lw $t0, -1356($fp)
	lw $t1, -1360($fp)
	add $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t1, -1352($fp)
	lw $t2, -1364($fp)
	ble $t1, $t2, label507
	j label508
label507:
	li $t0, 54272
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -1376($fp)
	li $t0, 55499
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1388($fp)
	li $t0, 24142
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	sw $t0, -1400($fp)
	li $t0, 2678
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	sw $t0, -1412($fp)
	li $t0, 6662
	sw $t0, -1416($fp)
	lw $t0, -1416($fp)
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	sw $t0, -1424($fp)
	li $t0, 10250
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	sw $t0, -1436($fp)
	li $t0, 51426
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	sw $t0, -1448($fp)
	li $t0, 61236
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	sw $t0, -1460($fp)
	li $t0, 23758
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	sw $t0, -1472($fp)
	li $t0, 0
	sw $t0, -1476($fp)
	li $t0, 26986
	sw $t0, -1480($fp)
	addi $t0, $fp, -348
	sw $t0, -1484($fp)
	li $t0, 0
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
	li $t0, 58709
	sw $t0, -1504($fp)
	lw $t0, -1500($fp)
	lw $t1, -1504($fp)
	mul $t0, $t0, $t1
	sw $t0, -1508($fp)
	lw $t1, -1480($fp)
	lw $t2, -1508($fp)
	bgt $t1, $t2, label513
	j label514
label513:
	li $t0, 1
	sw $t0, -1476($fp)
label514:
	addi $t0, $fp, -368
	sw $t0, -1512($fp)
	li $t0, 2
	sw $t0, -1516($fp)
	li $t0, 4
	lw $t1, -1516($fp)
	mul $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	lw $t1, -1512($fp)
	add $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	lw $t1, 0($t0)
	sw $t1, -1528($fp)
	li $t0, 48542
	sw $t0, -1532($fp)
	li $t0, 781
	sw $t0, -1536($fp)
	lw $t0, -1532($fp)
	lw $t1, -1536($fp)
	mul $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t0, -1528($fp)
	lw $t1, -1540($fp)
	add $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $t1, -1476($fp)
	lw $t2, -1544($fp)
	beq $t1, $t2, label510
	j label511
label510:
	li $t0, 0
	sw $t0, -1548($fp)
	lw $t0, -1420($fp)
	sw $t0, -1552($fp)
	li $t0, 47323
	sw $t0, -1556($fp)
	lw $t1, -1552($fp)
	lw $t2, -1556($fp)
	beq $t1, $t2, label515
	j label517
label517:
	li $t0, 17694
	sw $t0, -1560($fp)
	lw $t1, -1560($fp)
	li $t2, 0
	bne $t1, $t2, label515
	j label516
label515:
	li $t0, 1
	sw $t0, -1548($fp)
label516:
	li $t0, 0
	sw $t0, -1564($fp)
	lw $t0, -92($fp)
	sw $t0, -1568($fp)
	li $t0, 54995
	sw $t0, -1572($fp)
	lw $t0, -1568($fp)
	lw $t1, -1572($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1576($fp)
	lw $t0, -772($fp)
	sw $t0, -1580($fp)
	lw $t1, -1576($fp)
	lw $t2, -1580($fp)
	bne $t1, $t2, label518
	j label519
label518:
	li $t0, 1
	sw $t0, -1564($fp)
label519:
	li $t0, 0
	sw $t0, -1584($fp)
	lw $t0, -1456($fp)
	sw $t0, -1588($fp)
	lw $t0, -1444($fp)
	sw $t0, -1592($fp)
	lw $t0, -1588($fp)
	lw $t1, -1592($fp)
	mul $t0, $t0, $t1
	sw $t0, -1596($fp)
	lw $t0, -760($fp)
	sw $t0, -1600($fp)
	lw $t0, -1596($fp)
	lw $t1, -1600($fp)
	mul $t0, $t0, $t1
	sw $t0, -1604($fp)
	li $t0, 0
	sw $t0, -1608($fp)
	lw $t0, -1468($fp)
	sw $t0, -1612($fp)
	li $t0, 48354
	sw $t0, -1616($fp)
	lw $t0, -1612($fp)
	lw $t1, -1616($fp)
	sub $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t0, -1432($fp)
	sw $t0, -1624($fp)
	lw $t1, -1620($fp)
	lw $t2, -1624($fp)
	beq $t1, $t2, label522
	j label523
label522:
	li $t0, 1
	sw $t0, -1608($fp)
label523:
	li $t0, 47486
	sw $t0, -1628($fp)
	lw $t0, -32($fp)
	sw $t0, -1632($fp)
	lw $t0, -1628($fp)
	lw $t1, -1632($fp)
	mul $t0, $t0, $t1
	sw $t0, -1636($fp)
	lw $t0, 8($fp)
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -1644($fp)
	addi $sp, $sp, -4
	lw $t0, -1604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1644($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -1648($fp)
	addi $sp, $sp, 20
	lw $t0, -760($fp)
	sw $t0, -1652($fp)
	lw $t1, -1648($fp)
	lw $t2, -1652($fp)
	beq $t1, $t2, label520
	j label521
label520:
	li $t0, 1
	sw $t0, -1584($fp)
label521:
	addi $sp, $sp, -4
	lw $t0, -1548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1584($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1656($fp)
	addi $sp, $sp, 16
	lw $t0, -92($fp)
	sw $t0, -1660($fp)
	lw $t0, -1656($fp)
	lw $t1, -1660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1664($fp)
	j label512
label511:
	li $t0, 4481
	sw $t0, -1668($fp)
	li $t0, 0
	sw $t0, -1672($fp)
	li $t0, 31239
	sw $t0, -1676($fp)
	lw $t1, -1676($fp)
	li $t2, 0
	bne $t1, $t2, label524
	j label525
label524:
	li $t0, 1
	sw $t0, -1672($fp)
label525:
	lw $t0, -1668($fp)
	lw $t1, -1672($fp)
	mul $t0, $t0, $t1
	sw $t0, -1680($fp)
label512:
	lw $t0, -1372($fp)
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1384($fp)
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1396($fp)
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1408($fp)
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1420($fp)
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1432($fp)
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1444($fp)
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1456($fp)
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1468($fp)
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	jal f11
	sw $v0, -1720($fp)
	addi $sp, $sp, 4
	lw $ra, -4($fp)
	lw $v0, -1720($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1372($fp)
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1384($fp)
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1396($fp)
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1408($fp)
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1420($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1432($fp)
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1444($fp)
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1456($fp)
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1468($fp)
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1760($fp)
	li $t0, 0
	sw $t0, -1764($fp)
	li $t0, 56411
	sw $t0, -1768($fp)
	lw $t1, -1768($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label528
label528:
	li $t0, 1
	sw $t0, -1764($fp)
label529:
	lw $t0, -1084($fp)
	sw $t0, -1772($fp)
	lw $t0, -56($fp)
	sw $t0, -1776($fp)
	li $t0, 0
	lw $t1, -1776($fp)
	sub $t0, $t0, $t1
	sw $t0, -1780($fp)
	li $t0, 0
	lw $t1, -1780($fp)
	sub $t0, $t0, $t1
	sw $t0, -1784($fp)
	addi $t0, $fp, -308
	sw $t0, -1788($fp)
	lw $t0, -784($fp)
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
	li $t0, 0
	sw $t0, -1808($fp)
	lw $t0, -592($fp)
	sw $t0, -1812($fp)
	lw $t0, -1372($fp)
	sw $t0, -1816($fp)
	lw $t1, -1812($fp)
	lw $t2, -1816($fp)
	bne $t1, $t2, label532
	j label531
label532:
	li $t0, 662
	sw $t0, -1820($fp)
	lw $t1, -1820($fp)
	li $t2, 0
	bne $t1, $t2, label530
	j label531
label530:
	li $t0, 1
	sw $t0, -1808($fp)
label531:
	li $t0, 0
	sw $t0, -1824($fp)
	lw $t0, -56($fp)
	sw $t0, -1828($fp)
	li $t0, 60594
	sw $t0, -1832($fp)
	lw $t0, -1828($fp)
	lw $t1, -1832($fp)
	sub $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t0, -700($fp)
	sw $t0, -1840($fp)
	lw $t1, -1836($fp)
	lw $t2, -1840($fp)
	bne $t1, $t2, label533
	j label534
label533:
	li $t0, 1
	sw $t0, -1824($fp)
label534:
	li $t0, 0
	sw $t0, -1844($fp)
	li $t0, 4355
	sw $t0, -1848($fp)
	lw $t1, -1848($fp)
	li $t2, 0
	bne $t1, $t2, label535
	j label538
label538:
	lw $t0, -1108($fp)
	sw $t0, -1852($fp)
	lw $t1, -1852($fp)
	li $t2, 0
	bne $t1, $t2, label535
	j label537
label537:
	li $t0, 33165
	sw $t0, -1856($fp)
	lw $t1, -1856($fp)
	li $t2, 0
	bne $t1, $t2, label535
	j label536
label535:
	li $t0, 1
	sw $t0, -1844($fp)
label536:
	li $t0, 40623
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1864($fp)
	addi $sp, $sp, -4
	lw $t0, -1808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1864($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -1868($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -312
	sw $t0, -1872($fp)
	lw $t0, -784($fp)
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
	addi $sp, $sp, -4
	lw $t0, -1772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1888($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1892($fp)
	addi $sp, $sp, 24
	lw $t0, -1764($fp)
	lw $t1, -1892($fp)
	mul $t0, $t0, $t1
	sw $t0, -1896($fp)
	lw $t0, -1396($fp)
	sw $t0, -1900($fp)
	lw $t1, -1896($fp)
	lw $t2, -1900($fp)
	ble $t1, $t2, label526
	j label527
label526:
	li $t0, 1
	sw $t0, -1760($fp)
label527:
	lw $ra, -4($fp)
	lw $v0, -1760($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label539:
	lw $t0, -748($fp)
	sw $t0, -1904($fp)
	li $t0, 0
	lw $t1, -1904($fp)
	sub $t0, $t0, $t1
	sw $t0, -1908($fp)
	lw $t1, -1908($fp)
	li $t2, 0
	bne $t1, $t2, label540
	j label541
label540:
	lw $t0, -676($fp)
	sw $t0, -1912($fp)
	j label539
label541:
	li $t0, 0
	sw $t0, -1916($fp)
	li $t0, 0
	sw $t0, -1920($fp)
	li $t0, 52009
	sw $t0, -1924($fp)
	li $t0, 62823
	sw $t0, -1928($fp)
	lw $t1, -1924($fp)
	lw $t2, -1928($fp)
	blt $t1, $t2, label545
	j label546
label545:
	li $t0, 1
	sw $t0, -1920($fp)
label546:
	jal f11
	sw $v0, -1932($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -1936($fp)
	li $t0, 49330
	sw $t0, -1940($fp)
	li $t0, 56161
	sw $t0, -1944($fp)
	lw $t0, -1940($fp)
	lw $t1, -1944($fp)
	sub $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t1, -1948($fp)
	li $t2, 0
	bne $t1, $t2, label549
	j label548
label549:
	li $t0, 27797
	sw $t0, -1952($fp)
	lw $t1, -1952($fp)
	li $t2, 0
	bne $t1, $t2, label547
	j label548
label547:
	li $t0, 1
	sw $t0, -1936($fp)
label548:
	li $t0, 0
	sw $t0, -1956($fp)
	li $t0, 3655
	sw $t0, -1960($fp)
	lw $t1, -1960($fp)
	li $t2, 0
	bne $t1, $t2, label551
	j label550
label550:
	li $t0, 1
	sw $t0, -1956($fp)
label551:
	li $t0, 0
	lw $t1, -1956($fp)
	sub $t0, $t0, $t1
	sw $t0, -1964($fp)
	addi $sp, $sp, -4
	lw $t0, -1932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1964($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1968($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -1920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1968($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1972($fp)
	addi $sp, $sp, 12
	lw $t1, -1972($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label544
label544:
	lw $t0, -32($fp)
	sw $t0, -1976($fp)
	lw $t1, -1976($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label543
label542:
	li $t0, 1
	sw $t0, -1916($fp)
label543:
	addi $t0, $fp, -348
	sw $t0, -1980($fp)
	li $t0, 0
	sw $t0, -1984($fp)
	li $t0, 38048
	sw $t0, -1988($fp)
	lw $t1, -1988($fp)
	li $t2, 0
	bne $t1, $t2, label556
	j label555
label555:
	li $t0, 1
	sw $t0, -1984($fp)
label556:
	lw $t0, -760($fp)
	sw $t0, -1992($fp)
	lw $t0, -32($fp)
	sw $t0, -1996($fp)
	lw $t0, -1992($fp)
	lw $t1, -1996($fp)
	mul $t0, $t0, $t1
	sw $t0, -2000($fp)
	lw $t0, -1984($fp)
	lw $t1, -2000($fp)
	sub $t0, $t0, $t1
	sw $t0, -2004($fp)
	li $t0, 4
	lw $t1, -2004($fp)
	mul $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	lw $t1, -1980($fp)
	add $t0, $t0, $t1
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	lw $t1, 0($t0)
	sw $t1, -2016($fp)
	lw $t1, -2016($fp)
	li $t2, 0
	bne $t1, $t2, label552
	j label553
label552:
	li $t0, 0
	sw $t0, -2020($fp)
	jal f11
	sw $v0, -2024($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -2028($fp)
	lw $t0, -784($fp)
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -2036($fp)
	lw $t0, -92($fp)
	sw $t0, -2040($fp)
	li $t0, 0
	sw $t0, -2044($fp)
	li $t0, 0
	sw $t0, -2048($fp)
	li $t0, 58523
	sw $t0, -2052($fp)
	lw $t0, -1408($fp)
	sw $t0, -2056($fp)
	lw $t1, -2052($fp)
	lw $t2, -2056($fp)
	beq $t1, $t2, label563
	j label564
label563:
	li $t0, 1
	sw $t0, -2048($fp)
label564:
	li $t0, 61806
	sw $t0, -2060($fp)
	lw $t1, -2048($fp)
	lw $t2, -2060($fp)
	bne $t1, $t2, label561
	j label562
label561:
	li $t0, 1
	sw $t0, -2044($fp)
label562:
	li $t0, 0
	sw $t0, -2064($fp)
	lw $t0, -80($fp)
	sw $t0, -2068($fp)
	lw $t1, -2068($fp)
	li $t2, 0
	bne $t1, $t2, label565
	j label567
label567:
	lw $t0, -92($fp)
	sw $t0, -2072($fp)
	lw $t1, -2072($fp)
	li $t2, 0
	bne $t1, $t2, label565
	j label566
label565:
	li $t0, 1
	sw $t0, -2064($fp)
label566:
	li $t0, 37899
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	sw $t0, -2080($fp)
	addi $sp, $sp, -4
	lw $t0, -2036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2080($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2084($fp)
	addi $sp, $sp, 24
	lw $t0, -748($fp)
	sw $t0, -2088($fp)
	lw $t0, -2084($fp)
	lw $t1, -2088($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2092($fp)
	li $t0, 64885
	sw $t0, -2096($fp)
	lw $t0, -1108($fp)
	sw $t0, -2100($fp)
	lw $t0, -2096($fp)
	lw $t1, -2100($fp)
	add $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $t1, -2092($fp)
	lw $t2, -2104($fp)
	blt $t1, $t2, label559
	j label560
label559:
	li $t0, 1
	sw $t0, -2028($fp)
label560:
	lw $t1, -2024($fp)
	lw $t2, -2028($fp)
	bne $t1, $t2, label557
	j label558
label557:
	li $t0, 1
	sw $t0, -2020($fp)
label558:
label553:
	j label506
label508:
	j label505
label504:
	li $t0, 0
	sw $t0, -2108($fp)
	lw $t0, -688($fp)
	sw $t0, -2112($fp)
	li $t0, 6770
	sw $t0, -2116($fp)
	li $t0, 58059
	sw $t0, -2120($fp)
	lw $t0, -2116($fp)
	lw $t1, -2120($fp)
	mul $t0, $t0, $t1
	sw $t0, -2124($fp)
	li $t0, 37449
	sw $t0, -2128($fp)
	lw $t0, -2124($fp)
	lw $t1, -2128($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2132($fp)
	li $t0, 46673
	sw $t0, -2136($fp)
	lw $t0, -2136($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -2140($fp)
	addi $sp, $sp, -4
	lw $t0, -2112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2140($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2144($fp)
	addi $sp, $sp, 16
	lw $t1, -2144($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label568
label568:
	li $t0, 1
	sw $t0, -2108($fp)
label569:
	li $t0, 0
	lw $t1, -2108($fp)
	sub $t0, $t0, $t1
	sw $t0, -2148($fp)
	li $t0, 0
	sw $t0, -2152($fp)
	li $t0, 0
	sw $t0, -2156($fp)
	li $t0, 41065
	sw $t0, -2160($fp)
	li $t0, 38231
	sw $t0, -2164($fp)
	lw $t0, -2160($fp)
	lw $t1, -2164($fp)
	sub $t0, $t0, $t1
	sw $t0, -2168($fp)
	lw $t1, -2168($fp)
	li $t2, 0
	bne $t1, $t2, label572
	j label574
label574:
	lw $t0, 4($fp)
	sw $t0, -2172($fp)
	lw $t1, -2172($fp)
	li $t2, 0
	bne $t1, $t2, label572
	j label573
label572:
	li $t0, 1
	sw $t0, -2156($fp)
label573:
	li $t0, 27492
	sw $t0, -2176($fp)
	addi $sp, $sp, -4
	lw $t0, -2156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2176($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2180($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2180($fp)
	sub $t0, $t0, $t1
	sw $t0, -2184($fp)
	lw $t1, -2184($fp)
	li $t2, 0
	bne $t1, $t2, label571
	j label570
label570:
	li $t0, 1
	sw $t0, -2152($fp)
label571:
	lw $t0, -2148($fp)
	lw $t1, -2152($fp)
	add $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $ra, -4($fp)
	lw $v0, -2188($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label505:
	li $t0, 0
	sw $t0, -2192($fp)
	addi $t0, $fp, -324
	sw $t0, -2196($fp)
	lw $t0, -736($fp)
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -2204($fp)
	li $t0, 4
	lw $t1, -2204($fp)
	mul $t0, $t0, $t1
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	lw $t1, -2196($fp)
	add $t0, $t0, $t1
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	lw $t1, 0($t0)
	sw $t1, -2216($fp)
	lw $t0, -724($fp)
	sw $t0, -2220($fp)
	lw $t1, -2216($fp)
	lw $t2, -2220($fp)
	bne $t1, $t2, label575
	j label576
label575:
	li $t0, 1
	sw $t0, -2192($fp)
label576:
	li $t0, 9442
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	sw $t0, -2260($fp)
	li $t0, 23883
	sw $t0, -2264($fp)
	lw $t0, -2264($fp)
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	sw $t0, -2272($fp)
	li $t0, 27690
	sw $t0, -2276($fp)
	addi $t0, $fp, -2248
	sw $t0, -2280($fp)
	li $t0, 0
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2288($fp)
	lw $t0, -2280($fp)
	lw $t1, -2288($fp)
	add $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t0, -2276($fp)
	lw $t1, -2292($fp)
	sw $t0, 0($t1)
	lw $t0, -2292($fp)
	lw $t1, 0($t0)
	sw $t1, -2296($fp)
	li $t0, 56765
	sw $t0, -2300($fp)
	addi $t0, $fp, -2248
	sw $t0, -2304($fp)
	li $t0, 1
	sw $t0, -2308($fp)
	lw $t0, -2308($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -2304($fp)
	lw $t1, -2312($fp)
	add $t0, $t0, $t1
	sw $t0, -2316($fp)
	lw $t0, -2300($fp)
	lw $t1, -2316($fp)
	sw $t0, 0($t1)
	lw $t0, -2316($fp)
	lw $t1, 0($t0)
	sw $t1, -2320($fp)
	li $t0, 41577
	sw $t0, -2324($fp)
	addi $t0, $fp, -2248
	sw $t0, -2328($fp)
	li $t0, 2
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2336($fp)
	lw $t0, -2328($fp)
	lw $t1, -2336($fp)
	add $t0, $t0, $t1
	sw $t0, -2340($fp)
	lw $t0, -2324($fp)
	lw $t1, -2340($fp)
	sw $t0, 0($t1)
	lw $t0, -2340($fp)
	lw $t1, 0($t0)
	sw $t1, -2344($fp)
	li $t0, 32172
	sw $t0, -2348($fp)
	addi $t0, $fp, -2248
	sw $t0, -2352($fp)
	li $t0, 3
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $t0, -2352($fp)
	lw $t1, -2360($fp)
	add $t0, $t0, $t1
	sw $t0, -2364($fp)
	lw $t0, -2348($fp)
	lw $t1, -2364($fp)
	sw $t0, 0($t1)
	lw $t0, -2364($fp)
	lw $t1, 0($t0)
	sw $t1, -2368($fp)
	li $t0, 22469
	sw $t0, -2372($fp)
	addi $t0, $fp, -2248
	sw $t0, -2376($fp)
	li $t0, 4
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -2376($fp)
	lw $t1, -2384($fp)
	add $t0, $t0, $t1
	sw $t0, -2388($fp)
	lw $t0, -2372($fp)
	lw $t1, -2388($fp)
	sw $t0, 0($t1)
	lw $t0, -2388($fp)
	lw $t1, 0($t0)
	sw $t1, -2392($fp)
	li $t0, 32452
	sw $t0, -2396($fp)
	addi $t0, $fp, -2248
	sw $t0, -2400($fp)
	li $t0, 5
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2408($fp)
	lw $t0, -2400($fp)
	lw $t1, -2408($fp)
	add $t0, $t0, $t1
	sw $t0, -2412($fp)
	lw $t0, -2396($fp)
	lw $t1, -2412($fp)
	sw $t0, 0($t1)
	lw $t0, -2412($fp)
	lw $t1, 0($t0)
	sw $t1, -2416($fp)
	li $t0, 7259
	sw $t0, -2420($fp)
	addi $t0, $fp, -2248
	sw $t0, -2424($fp)
	li $t0, 6
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t0, -2424($fp)
	lw $t1, -2432($fp)
	add $t0, $t0, $t1
	sw $t0, -2436($fp)
	lw $t0, -2420($fp)
	lw $t1, -2436($fp)
	sw $t0, 0($t1)
	lw $t0, -2436($fp)
	lw $t1, 0($t0)
	sw $t1, -2440($fp)
	li $t0, 26824
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	sw $t0, -2448($fp)
	lw $t0, -2448($fp)
	sw $t0, -2452($fp)
	li $t0, 81
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	sw $t0, -2464($fp)
	li $t0, 2318
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	sw $t0, -2476($fp)
	lw $t0, -2472($fp)
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2484($fp)
	li $t0, 27486
	sw $t0, -2488($fp)
	lw $t1, -2488($fp)
	li $t2, 0
	bne $t1, $t2, label578
	j label577
label577:
	li $t0, 1
	sw $t0, -2484($fp)
label578:
	lw $t0, -2484($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -2492($fp)
	lw $ra, -4($fp)
	lw $v0, -2492($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -2472($fp)
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2500($fp)
	li $t0, 3736
	sw $t0, -2504($fp)
	lw $t1, -2504($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label582
label582:
	addi $t0, $fp, -2248
	sw $t0, -2508($fp)
	lw $t0, -56($fp)
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
	li $t0, 51648
	sw $t0, -2528($fp)
	lw $t1, -2524($fp)
	lw $t2, -2528($fp)
	beq $t1, $t2, label579
	j label581
label581:
	addi $t0, $fp, -348
	sw $t0, -2532($fp)
	lw $t0, -592($fp)
	sw $t0, -2536($fp)
	li $t0, 0
	lw $t1, -2536($fp)
	sub $t0, $t0, $t1
	sw $t0, -2540($fp)
	li $t0, 4
	lw $t1, -2540($fp)
	mul $t0, $t0, $t1
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	lw $t1, -2532($fp)
	add $t0, $t0, $t1
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	lw $t1, 0($t0)
	sw $t1, -2552($fp)
	lw $t1, -2552($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label580
label579:
	li $t0, 1
	sw $t0, -2500($fp)
label580:
	lw $ra, -4($fp)
	lw $v0, -2500($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -80($fp)
	sw $t0, -2556($fp)
	lw $t1, -2556($fp)
	li $t2, 0
	bne $t1, $t2, label583
	j label584
label583:
	li $t0, 0
	sw $t0, -2560($fp)
	li $t0, 18112
	sw $t0, -2564($fp)
	lw $t0, -80($fp)
	sw $t0, -2568($fp)
	lw $t0, -2564($fp)
	lw $t1, -2568($fp)
	add $t0, $t0, $t1
	sw $t0, -2572($fp)
	li $t0, 0
	sw $t0, -2576($fp)
	lw $t0, -44($fp)
	sw $t0, -2580($fp)
	li $t0, 31534
	sw $t0, -2584($fp)
	lw $t1, -2580($fp)
	lw $t2, -2584($fp)
	blt $t1, $t2, label588
	j label589
label588:
	li $t0, 1
	sw $t0, -2576($fp)
label589:
	lw $t1, -2572($fp)
	lw $t2, -2576($fp)
	bne $t1, $t2, label586
	j label587
label586:
	li $t0, 1
	sw $t0, -2560($fp)
label587:
	lw $t0, -2560($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	sw $t0, -2588($fp)
label584:
	li $t0, 38121
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	sw $t0, -2600($fp)
	li $t0, 0
	sw $t0, -2604($fp)
	lw $t0, -44($fp)
	sw $t0, -2608($fp)
	jal f8
	sw $v0, -2612($fp)
	addi $sp, $sp, 4
	lw $t0, -1084($fp)
	sw $t0, -2616($fp)
	lw $t0, -2612($fp)
	lw $t1, -2616($fp)
	mul $t0, $t0, $t1
	sw $t0, -2620($fp)
	lw $t0, -2608($fp)
	lw $t1, -2620($fp)
	sub $t0, $t0, $t1
	sw $t0, -2624($fp)
	li $t0, 15399
	sw $t0, -2628($fp)
	lw $t1, -2624($fp)
	lw $t2, -2628($fp)
	bgt $t1, $t2, label590
	j label591
label590:
	li $t0, 1
	sw $t0, -2604($fp)
label591:
	lw $t0, -2596($fp)
	sw $t0, -2632($fp)
	li $t0, 0
	sw $t0, -2636($fp)
	li $t0, 0
	sw $t0, -2640($fp)
	li $t0, 0
	sw $t0, -2644($fp)
	li $t0, 0
	sw $t0, -2648($fp)
	lw $t0, 16($fp)
	sw $t0, -2652($fp)
	lw $t1, -2652($fp)
	li $t2, 0
	bne $t1, $t2, label601
	j label599
label601:
	li $t0, 10485
	sw $t0, -2656($fp)
	lw $t1, -2656($fp)
	li $t2, 0
	bne $t1, $t2, label600
	j label599
label600:
	lw $t0, -32($fp)
	sw $t0, -2660($fp)
	lw $t1, -2660($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label599
label598:
	li $t0, 1
	sw $t0, -2648($fp)
label599:
	li $t0, 4046
	sw $t0, -2664($fp)
	lw $t0, -32($fp)
	sw $t0, -2668($fp)
	lw $t0, -2664($fp)
	lw $t1, -2668($fp)
	mul $t0, $t0, $t1
	sw $t0, -2672($fp)
	addi $sp, $sp, -4
	lw $t0, -2648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2672($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2676($fp)
	addi $sp, $sp, 12
	lw $t1, -2676($fp)
	li $t2, 0
	bne $t1, $t2, label597
	j label596
label596:
	li $t0, 1
	sw $t0, -2644($fp)
label597:
	li $t0, 8387
	sw $t0, -2680($fp)
	lw $t0, -700($fp)
	sw $t0, -2684($fp)
	lw $t0, -2680($fp)
	lw $t1, -2684($fp)
	mul $t0, $t0, $t1
	sw $t0, -2688($fp)
	lw $t0, -2644($fp)
	lw $t1, -2688($fp)
	sub $t0, $t0, $t1
	sw $t0, -2692($fp)
	li $t0, 0
	sw $t0, -2696($fp)
	addi $t0, $fp, -368
	sw $t0, -2700($fp)
	li $t0, 4
	sw $t0, -2704($fp)
	li $t0, 4
	lw $t1, -2704($fp)
	mul $t0, $t0, $t1
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	lw $t1, -2700($fp)
	add $t0, $t0, $t1
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	lw $t1, 0($t0)
	sw $t1, -2716($fp)
	lw $t1, -2716($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label602
label602:
	li $t0, 1
	sw $t0, -2696($fp)
label603:
	lw $t1, -2692($fp)
	lw $t2, -2696($fp)
	bge $t1, $t2, label594
	j label595
label594:
	li $t0, 1
	sw $t0, -2640($fp)
label595:
	li $t0, 0
	sw $t0, -2720($fp)
	li $t0, 0
	sw $t0, -2724($fp)
	lw $t0, -712($fp)
	sw $t0, -2728($fp)
	lw $t1, -2728($fp)
	li $t2, 0
	bne $t1, $t2, label607
	j label606
label606:
	li $t0, 1
	sw $t0, -2724($fp)
label607:
	li $t0, 59531
	sw $t0, -2732($fp)
	lw $t1, -2724($fp)
	lw $t2, -2732($fp)
	blt $t1, $t2, label604
	j label605
label604:
	li $t0, 1
	sw $t0, -2720($fp)
label605:
	li $t0, 0
	sw $t0, -2736($fp)
	lw $t0, -56($fp)
	sw $t0, -2740($fp)
	lw $t0, -796($fp)
	sw $t0, -2744($fp)
	lw $t0, -2740($fp)
	lw $t1, -2744($fp)
	sub $t0, $t0, $t1
	sw $t0, -2748($fp)
	lw $t1, -2748($fp)
	li $t2, 0
	bne $t1, $t2, label610
	j label609
label610:
	li $t0, 43347
	sw $t0, -2752($fp)
	lw $t1, -2752($fp)
	li $t2, 0
	bne $t1, $t2, label608
	j label609
label608:
	li $t0, 1
	sw $t0, -2736($fp)
label609:
	addi $t0, $fp, -24
	sw $t0, -2756($fp)
	li $t0, 4
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
	li $t0, 35251
	sw $t0, -2776($fp)
	lw $t0, -2772($fp)
	lw $t1, -2776($fp)
	sub $t0, $t0, $t1
	sw $t0, -2780($fp)
	li $t0, 44021
	sw $t0, -2784($fp)
	li $t0, 0
	lw $t1, -2784($fp)
	sub $t0, $t0, $t1
	sw $t0, -2788($fp)
	li $t0, 0
	lw $t1, -2788($fp)
	sub $t0, $t0, $t1
	sw $t0, -2792($fp)
	addi $sp, $sp, -4
	lw $t0, -2720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2792($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -2796($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -2800($fp)
	lw $t0, -712($fp)
	sw $t0, -2804($fp)
	lw $t1, -2804($fp)
	li $t2, 0
	bne $t1, $t2, label614
	j label612
label614:
	li $t0, 43422
	sw $t0, -2808($fp)
	lw $t1, -2808($fp)
	li $t2, 0
	bne $t1, $t2, label613
	j label612
label613:
	li $t0, 65204
	sw $t0, -2812($fp)
	lw $t1, -2812($fp)
	li $t2, 0
	bne $t1, $t2, label611
	j label612
label611:
	li $t0, 1
	sw $t0, -2800($fp)
label612:
	li $t0, 0
	sw $t0, -2816($fp)
	lw $t0, -688($fp)
	sw $t0, -2820($fp)
	lw $t1, -2820($fp)
	li $t2, 0
	bne $t1, $t2, label616
	j label615
label615:
	li $t0, 1
	sw $t0, -2816($fp)
label616:
	lw $t0, -92($fp)
	sw $t0, -2824($fp)
	lw $t0, -2816($fp)
	lw $t1, -2824($fp)
	sub $t0, $t0, $t1
	sw $t0, -2828($fp)
	lw $t0, -32($fp)
	sw $t0, -2832($fp)
	li $t0, 34579
	sw $t0, -2836($fp)
	lw $t0, -2832($fp)
	lw $t1, -2836($fp)
	sub $t0, $t0, $t1
	sw $t0, -2840($fp)
	li $t0, 0
	sw $t0, -2844($fp)
	li $t0, 26973
	sw $t0, -2848($fp)
	li $t0, 0
	lw $t1, -2848($fp)
	sub $t0, $t0, $t1
	sw $t0, -2852($fp)
	lw $t1, -2852($fp)
	li $t2, 0
	bne $t1, $t2, label618
	j label617
label617:
	li $t0, 1
	sw $t0, -2844($fp)
label618:
	addi $sp, $sp, -4
	lw $t0, -2796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2844($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2856($fp)
	addi $sp, $sp, 24
	lw $t0, -44($fp)
	sw $t0, -2860($fp)
	li $t0, 2357
	sw $t0, -2864($fp)
	lw $t0, -2860($fp)
	lw $t1, -2864($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2868($fp)
	li $t0, 0
	sw $t0, -2872($fp)
	lw $t0, -2460($fp)
	sw $t0, -2876($fp)
	li $t0, 55060
	sw $t0, -2880($fp)
	lw $t0, -2876($fp)
	lw $t1, -2880($fp)
	add $t0, $t0, $t1
	sw $t0, -2884($fp)
	lw $t1, -2884($fp)
	li $t2, 0
	bne $t1, $t2, label619
	j label621
label621:
	li $t0, 7086
	sw $t0, -2888($fp)
	lw $t1, -2888($fp)
	li $t2, 0
	bne $t1, $t2, label619
	j label620
label619:
	li $t0, 1
	sw $t0, -2872($fp)
label620:
	addi $sp, $sp, -4
	lw $t0, -2856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2872($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2892($fp)
	addi $sp, $sp, 16
	lw $t1, -2640($fp)
	lw $t2, -2892($fp)
	beq $t1, $t2, label592
	j label593
label592:
	li $t0, 1
	sw $t0, -2636($fp)
label593:
	lw $t0, -688($fp)
	sw $t0, -2896($fp)
	lw $t1, -2896($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label623
label625:
	lw $t0, -712($fp)
	sw $t0, -2900($fp)
	li $t0, 0
	lw $t1, -2900($fp)
	sub $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $t1, -2904($fp)
	li $t2, 0
	bne $t1, $t2, label623
	j label622
label622:
label626:
	lw $t0, -592($fp)
	sw $t0, -2908($fp)
	addi $sp, $sp, -4
	lw $t0, -2908($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2912($fp)
	addi $sp, $sp, 8
	li $t0, 57720
	sw $t0, -2916($fp)
	lw $t0, -760($fp)
	sw $t0, -2920($fp)
	lw $t0, -2916($fp)
	lw $t1, -2920($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2924($fp)
	li $t0, 10263
	sw $t0, -2928($fp)
	lw $t0, -2924($fp)
	lw $t1, -2928($fp)
	mul $t0, $t0, $t1
	sw $t0, -2932($fp)
	lw $t1, -2912($fp)
	lw $t2, -2932($fp)
	bgt $t1, $t2, label627
	j label629
label629:
	li $t0, 1254
	sw $t0, -2936($fp)
	lw $t0, -80($fp)
	sw $t0, -2940($fp)
	lw $t0, -2936($fp)
	lw $t1, -2940($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2944($fp)
	li $t0, 19008
	sw $t0, -2948($fp)
	li $t0, 0
	lw $t1, -2948($fp)
	sub $t0, $t0, $t1
	sw $t0, -2952($fp)
	lw $t0, -2944($fp)
	lw $t1, -2952($fp)
	sub $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t1, -2956($fp)
	li $t2, 0
	bne $t1, $t2, label627
	j label628
label627:
	li $t0, 0
	sw $t0, -2960($fp)
	li $t0, 10345
	sw $t0, -2964($fp)
	lw $t1, -2964($fp)
	li $t2, 0
	bne $t1, $t2, label633
	j label632
label633:
	li $t0, 14081
	sw $t0, -2968($fp)
	lw $t0, -2968($fp)
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	sw $t0, -2972($fp)
	lw $t0, -760($fp)
	sw $t0, -2976($fp)
	li $t0, 0
	sw $t0, -2980($fp)
	li $t0, 3572
	sw $t0, -2984($fp)
	li $t0, 46494
	sw $t0, -2988($fp)
	lw $t1, -2984($fp)
	lw $t2, -2988($fp)
	bge $t1, $t2, label636
	j label635
label636:
	lw $t0, -2472($fp)
	sw $t0, -2992($fp)
	lw $t1, -2992($fp)
	li $t2, 0
	bne $t1, $t2, label634
	j label635
label634:
	li $t0, 1
	sw $t0, -2980($fp)
label635:
	lw $t0, -80($fp)
	sw $t0, -2996($fp)
	li $t0, 0
	sw $t0, -3000($fp)
	lw $t0, -92($fp)
	sw $t0, -3004($fp)
	lw $t1, -3004($fp)
	li $t2, 0
	bne $t1, $t2, label638
	j label637
label637:
	li $t0, 1
	sw $t0, -3000($fp)
label638:
	addi $sp, $sp, -4
	lw $t0, -2972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3000($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3008($fp)
	addi $sp, $sp, 24
	lw $t0, -592($fp)
	sw $t0, -3012($fp)
	lw $t0, -3008($fp)
	lw $t1, -3012($fp)
	add $t0, $t0, $t1
	sw $t0, -3016($fp)
	lw $t1, -3016($fp)
	li $t2, 0
	bne $t1, $t2, label630
	j label632
label632:
	li $t0, 0
	sw $t0, -3020($fp)
	li $t0, 55221
	sw $t0, -3024($fp)
	lw $t0, -676($fp)
	sw $t0, -3028($fp)
	lw $t0, -3024($fp)
	lw $t1, -3028($fp)
	mul $t0, $t0, $t1
	sw $t0, -3032($fp)
	li $t0, 64606
	sw $t0, -3036($fp)
	lw $t1, -3032($fp)
	lw $t2, -3036($fp)
	blt $t1, $t2, label639
	j label640
label639:
	li $t0, 1
	sw $t0, -3020($fp)
label640:
	li $t0, 45615
	sw $t0, -3040($fp)
	lw $t1, -3020($fp)
	lw $t2, -3040($fp)
	bge $t1, $t2, label630
	j label631
label630:
	li $t0, 1
	sw $t0, -2960($fp)
label631:
	j label626
label628:
label623:
label641:
	li $t0, 27806
	sw $t0, -3044($fp)
	li $t0, 14470
	sw $t0, -3048($fp)
	li $t0, 0
	lw $t1, -3048($fp)
	sub $t0, $t0, $t1
	sw $t0, -3052($fp)
	lw $t0, -3044($fp)
	lw $t1, -3052($fp)
	mul $t0, $t0, $t1
	sw $t0, -3056($fp)
	lw $t0, -772($fp)
	sw $t0, -3060($fp)
	addi $t0, $fp, -2248
	sw $t0, -3064($fp)
	lw $t0, -2448($fp)
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
	lw $t0, -3060($fp)
	lw $t1, -3080($fp)
	mul $t0, $t0, $t1
	sw $t0, -3084($fp)
	lw $t1, -3056($fp)
	lw $t2, -3084($fp)
	beq $t1, $t2, label642
	j label643
label642:
label644:
	jal f11
	sw $v0, -3088($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -3088($fp)
	sub $t0, $t0, $t1
	sw $t0, -3092($fp)
	addi $t0, $fp, -24
	sw $t0, -3096($fp)
	li $t0, 2
	sw $t0, -3100($fp)
	li $t0, 4
	lw $t1, -3100($fp)
	mul $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	lw $t1, -3096($fp)
	add $t0, $t0, $t1
	sw $t0, -3108($fp)
	lw $t0, -3108($fp)
	lw $t1, 0($t0)
	sw $t1, -3112($fp)
	lw $t0, -80($fp)
	sw $t0, -3116($fp)
	lw $t0, -3112($fp)
	lw $t1, -3116($fp)
	mul $t0, $t0, $t1
	sw $t0, -3120($fp)
	lw $t0, -3092($fp)
	lw $t1, -3120($fp)
	add $t0, $t0, $t1
	sw $t0, -3124($fp)
	li $t0, 0
	sw $t0, -3128($fp)
	li $t0, 22857
	sw $t0, -3132($fp)
	lw $t0, 4($fp)
	sw $t0, -3136($fp)
	lw $t0, -3132($fp)
	lw $t1, -3136($fp)
	mul $t0, $t0, $t1
	sw $t0, -3140($fp)
	li $t0, 0
	lw $t1, -3140($fp)
	sub $t0, $t0, $t1
	sw $t0, -3144($fp)
	lw $t1, -3144($fp)
	li $t2, 0
	bne $t1, $t2, label648
	j label647
label647:
	li $t0, 1
	sw $t0, -3128($fp)
label648:
	lw $t1, -3124($fp)
	lw $t2, -3128($fp)
	bne $t1, $t2, label645
	j label646
label645:
	li $t0, 0
	sw $t0, -3148($fp)
	li $t0, 0
	sw $t0, -3152($fp)
	addi $t0, $fp, -312
	sw $t0, -3156($fp)
	lw $t0, -80($fp)
	sw $t0, -3160($fp)
	li $t0, 4
	lw $t1, -3160($fp)
	mul $t0, $t0, $t1
	sw $t0, -3164($fp)
	lw $t0, -3164($fp)
	lw $t1, -3156($fp)
	add $t0, $t0, $t1
	sw $t0, -3168($fp)
	lw $t0, -3168($fp)
	lw $t1, 0($t0)
	sw $t1, -3172($fp)
	jal f11
	sw $v0, -3176($fp)
	addi $sp, $sp, 4
	lw $t0, -3172($fp)
	lw $t1, -3176($fp)
	sub $t0, $t0, $t1
	sw $t0, -3180($fp)
	lw $t0, -772($fp)
	sw $t0, -3184($fp)
	lw $t0, -80($fp)
	sw $t0, -3188($fp)
	lw $t0, -3184($fp)
	lw $t1, -3188($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3192($fp)
	lw $t1, -3180($fp)
	lw $t2, -3192($fp)
	ble $t1, $t2, label651
	j label652
label651:
	li $t0, 1
	sw $t0, -3152($fp)
label652:
	li $t0, 49977
	sw $t0, -3196($fp)
	li $t0, 0
	sw $t0, -3200($fp)
	li $t0, 48126
	sw $t0, -3204($fp)
	lw $t1, -3204($fp)
	li $t2, 0
	bne $t1, $t2, label654
	j label653
label653:
	li $t0, 1
	sw $t0, -3200($fp)
label654:
	lw $t0, -3196($fp)
	lw $t1, -3200($fp)
	mul $t0, $t0, $t1
	sw $t0, -3208($fp)
	lw $t1, -3152($fp)
	lw $t2, -3208($fp)
	bgt $t1, $t2, label649
	j label650
label649:
	li $t0, 1
	sw $t0, -3148($fp)
label650:
	j label644
label646:
	j label641
label643:
label655:
	addi $t0, $fp, -348
	sw $t0, -3212($fp)
	lw $t0, 12($fp)
	sw $t0, -3216($fp)
	li $t0, 4
	lw $t1, -3216($fp)
	mul $t0, $t0, $t1
	sw $t0, -3220($fp)
	lw $t0, -3220($fp)
	lw $t1, -3212($fp)
	add $t0, $t0, $t1
	sw $t0, -3224($fp)
	lw $t0, -3224($fp)
	lw $t1, 0($t0)
	sw $t1, -3228($fp)
	addi $t0, $fp, -312
	sw $t0, -3232($fp)
	lw $t0, -592($fp)
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
	li $t0, 39354
	sw $t0, -3252($fp)
	lw $t0, -2268($fp)
	sw $t0, -3256($fp)
	lw $t0, -3252($fp)
	lw $t1, -3256($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3260($fp)
	li $t0, 26107
	sw $t0, -3264($fp)
	lw $t0, -3260($fp)
	lw $t1, -3264($fp)
	add $t0, $t0, $t1
	sw $t0, -3268($fp)
	li $t0, 0
	sw $t0, -3272($fp)
	li $t0, 57064
	sw $t0, -3276($fp)
	lw $t1, -3276($fp)
	li $t2, 0
	bne $t1, $t2, label659
	j label660
label660:
	li $t0, 50483
	sw $t0, -3280($fp)
	lw $t1, -3280($fp)
	li $t2, 0
	bne $t1, $t2, label658
	j label659
label658:
	li $t0, 1
	sw $t0, -3272($fp)
label659:
	li $t0, 0
	sw $t0, -3284($fp)
	li $t0, 0
	sw $t0, -3288($fp)
	lw $t0, -2460($fp)
	sw $t0, -3292($fp)
	lw $t1, -3292($fp)
	li $t2, 0
	bne $t1, $t2, label664
	j label663
label663:
	li $t0, 1
	sw $t0, -3288($fp)
label664:
	lw $t0, -688($fp)
	sw $t0, -3296($fp)
	lw $t1, -3288($fp)
	lw $t2, -3296($fp)
	ble $t1, $t2, label661
	j label662
label661:
	li $t0, 1
	sw $t0, -3284($fp)
label662:
	lw $t0, -784($fp)
	sw $t0, -3300($fp)
	lw $t0, -3300($fp)
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -3304($fp)
	li $t0, 12381
	sw $t0, -3308($fp)
	lw $t0, 16($fp)
	sw $t0, -3312($fp)
	lw $t0, -3308($fp)
	lw $t1, -3312($fp)
	mul $t0, $t0, $t1
	sw $t0, -3316($fp)
	addi $t0, $fp, -308
	sw $t0, -3320($fp)
	lw $t0, -92($fp)
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
	addi $sp, $sp, -4
	lw $t0, -3284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3336($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -3340($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -3340($fp)
	sub $t0, $t0, $t1
	sw $t0, -3344($fp)
	addi $sp, $sp, -4
	lw $t0, -3248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3344($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -3348($fp)
	addi $sp, $sp, 20
	lw $t0, -3228($fp)
	lw $t1, -3348($fp)
	mul $t0, $t0, $t1
	sw $t0, -3352($fp)
	lw $t1, -3352($fp)
	li $t2, 0
	bne $t1, $t2, label656
	j label657
label656:
	lw $t0, -592($fp)
	sw $t0, -3356($fp)
	lw $t0, -676($fp)
	sw $t0, -3360($fp)
	lw $t0, -3360($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	sw $t0, -3364($fp)
	li $t0, 4592
	sw $t0, -3368($fp)
	li $t0, 0
	sw $t0, -3372($fp)
	jal f11
	sw $v0, -3376($fp)
	addi $sp, $sp, 4
	li $t0, 39023
	sw $t0, -3380($fp)
	lw $t1, -3376($fp)
	lw $t2, -3380($fp)
	bgt $t1, $t2, label665
	j label666
label665:
	li $t0, 1
	sw $t0, -3372($fp)
label666:
	lw $t0, -92($fp)
	sw $t0, -3384($fp)
	li $t0, 0
	lw $t1, -3384($fp)
	sub $t0, $t0, $t1
	sw $t0, -3388($fp)
	lw $t0, -748($fp)
	sw $t0, -3392($fp)
	lw $t0, -3388($fp)
	lw $t1, -3392($fp)
	add $t0, $t0, $t1
	sw $t0, -3396($fp)
	li $t0, 0
	sw $t0, -3400($fp)
	li $t0, 28370
	sw $t0, -3404($fp)
	lw $t0, -700($fp)
	sw $t0, -3408($fp)
	lw $t1, -3404($fp)
	lw $t2, -3408($fp)
	blt $t1, $t2, label667
	j label668
label667:
	li $t0, 1
	sw $t0, -3400($fp)
label668:
	li $t0, 0
	sw $t0, -3412($fp)
	lw $t0, -92($fp)
	sw $t0, -3416($fp)
	lw $t0, -2256($fp)
	sw $t0, -3420($fp)
	lw $t0, -3416($fp)
	lw $t1, -3420($fp)
	add $t0, $t0, $t1
	sw $t0, -3424($fp)
	lw $t1, -3424($fp)
	li $t2, 0
	bne $t1, $t2, label669
	j label671
label671:
	lw $t0, -688($fp)
	sw $t0, -3428($fp)
	lw $t1, -3428($fp)
	li $t2, 0
	bne $t1, $t2, label669
	j label670
label669:
	li $t0, 1
	sw $t0, -3412($fp)
label670:
	addi $sp, $sp, -4
	lw $t0, -3368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3412($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3432($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -3356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3432($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3436($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -3436($fp)
	sub $t0, $t0, $t1
	sw $t0, -3440($fp)
	li $t0, 0
	lw $t1, -3440($fp)
	sub $t0, $t0, $t1
	sw $t0, -3444($fp)
	lw $ra, -4($fp)
	lw $v0, -3444($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label655
label657:
	addi $t0, $fp, -308
	sw $t0, -3448($fp)
	li $t0, 0
	sw $t0, -3452($fp)
	li $t0, 4
	lw $t1, -3452($fp)
	mul $t0, $t0, $t1
	sw $t0, -3456($fp)
	lw $t0, -3456($fp)
	lw $t1, -3448($fp)
	add $t0, $t0, $t1
	sw $t0, -3460($fp)
	lw $t0, -3460($fp)
	lw $t1, 0($t0)
	sw $t1, -3464($fp)
	lw $t0, -3464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -308
	sw $t0, -3468($fp)
	li $t0, 1
	sw $t0, -3472($fp)
	li $t0, 4
	lw $t1, -3472($fp)
	mul $t0, $t0, $t1
	sw $t0, -3476($fp)
	lw $t0, -3476($fp)
	lw $t1, -3468($fp)
	add $t0, $t0, $t1
	sw $t0, -3480($fp)
	lw $t0, -3480($fp)
	lw $t1, 0($t0)
	sw $t1, -3484($fp)
	lw $t0, -3484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -308
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
	lw $t0, -3504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -308
	sw $t0, -3508($fp)
	li $t0, 3
	sw $t0, -3512($fp)
	li $t0, 4
	lw $t1, -3512($fp)
	mul $t0, $t0, $t1
	sw $t0, -3516($fp)
	lw $t0, -3516($fp)
	lw $t1, -3508($fp)
	add $t0, $t0, $t1
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	lw $t1, 0($t0)
	sw $t1, -3524($fp)
	lw $t0, -3524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -308
	sw $t0, -3528($fp)
	li $t0, 4
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
	lw $t0, -3544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -308
	sw $t0, -3548($fp)
	li $t0, 5
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
	lw $t0, -3564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -308
	sw $t0, -3568($fp)
	li $t0, 6
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
	addi $t0, $fp, -308
	sw $t0, -3588($fp)
	li $t0, 7
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
	addi $t0, $fp, -312
	sw $t0, -3608($fp)
	li $t0, 0
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
	lw $t0, -592($fp)
	sw $t0, -3628($fp)
	lw $t0, -3628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -3632($fp)
	li $t0, 0
	sw $t0, -3636($fp)
	li $t0, 4
	lw $t1, -3636($fp)
	mul $t0, $t0, $t1
	sw $t0, -3640($fp)
	lw $t0, -3640($fp)
	lw $t1, -3632($fp)
	add $t0, $t0, $t1
	sw $t0, -3644($fp)
	lw $t0, -3644($fp)
	lw $t1, 0($t0)
	sw $t1, -3648($fp)
	lw $t0, -3648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -3652($fp)
	li $t0, 1
	sw $t0, -3656($fp)
	li $t0, 4
	lw $t1, -3656($fp)
	mul $t0, $t0, $t1
	sw $t0, -3660($fp)
	lw $t0, -3660($fp)
	lw $t1, -3652($fp)
	add $t0, $t0, $t1
	sw $t0, -3664($fp)
	lw $t0, -3664($fp)
	lw $t1, 0($t0)
	sw $t1, -3668($fp)
	lw $t0, -3668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -324
	sw $t0, -3672($fp)
	li $t0, 2
	sw $t0, -3676($fp)
	li $t0, 4
	lw $t1, -3676($fp)
	mul $t0, $t0, $t1
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	lw $t1, -3672($fp)
	add $t0, $t0, $t1
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	lw $t1, 0($t0)
	sw $t1, -3688($fp)
	lw $t0, -3688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -3700($fp)
	lw $t0, -3700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -724($fp)
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -736($fp)
	sw $t0, -3712($fp)
	lw $t0, -3712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -748($fp)
	sw $t0, -3716($fp)
	lw $t0, -3716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -760($fp)
	sw $t0, -3720($fp)
	lw $t0, -3720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -772($fp)
	sw $t0, -3724($fp)
	lw $t0, -3724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -784($fp)
	sw $t0, -3728($fp)
	lw $t0, -3728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -796($fp)
	sw $t0, -3732($fp)
	lw $t0, -3732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -336
	sw $t0, -3736($fp)
	li $t0, 0
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
	addi $t0, $fp, -336
	sw $t0, -3756($fp)
	li $t0, 1
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
	addi $t0, $fp, -336
	sw $t0, -3776($fp)
	li $t0, 2
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
	lw $t0, -880($fp)
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -348
	sw $t0, -3800($fp)
	li $t0, 0
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
	addi $t0, $fp, -348
	sw $t0, -3820($fp)
	li $t0, 1
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
	addi $t0, $fp, -348
	sw $t0, -3840($fp)
	li $t0, 2
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
	addi $t0, $fp, -368
	sw $t0, -3860($fp)
	li $t0, 0
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
	addi $t0, $fp, -368
	sw $t0, -3880($fp)
	li $t0, 1
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
	addi $t0, $fp, -368
	sw $t0, -3900($fp)
	li $t0, 2
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
	addi $t0, $fp, -368
	sw $t0, -3920($fp)
	li $t0, 3
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
	addi $t0, $fp, -368
	sw $t0, -3940($fp)
	li $t0, 4
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
	lw $t0, -1084($fp)
	sw $t0, -3960($fp)
	lw $t0, -3960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	jal f8
	sw $v0, -3964($fp)
	addi $sp, $sp, 4
	lw $ra, -4($fp)
	lw $v0, -3964($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -336
	sw $t0, -3968($fp)
	li $t0, 0
	sw $t0, -3972($fp)
	li $t0, 30139
	sw $t0, -3976($fp)
	li $t0, 846
	sw $t0, -3980($fp)
	lw $t1, -3976($fp)
	lw $t2, -3980($fp)
	ble $t1, $t2, label677
	j label676
label677:
	li $t0, 39843
	sw $t0, -3984($fp)
	lw $t1, -3984($fp)
	li $t2, 0
	bne $t1, $t2, label675
	j label676
label675:
	li $t0, 1
	sw $t0, -3972($fp)
label676:
	li $t0, 4
	lw $t1, -3972($fp)
	mul $t0, $t0, $t1
	sw $t0, -3988($fp)
	lw $t0, -3988($fp)
	lw $t1, -3968($fp)
	add $t0, $t0, $t1
	sw $t0, -3992($fp)
	lw $t0, -3992($fp)
	lw $t1, 0($t0)
	sw $t1, -3996($fp)
	addi $t0, $fp, -336
	sw $t0, -4000($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -4016($fp)
	sub $t0, $t0, $t1
	sw $t0, -4020($fp)
	lw $t1, -3996($fp)
	lw $t2, -4020($fp)
	bne $t1, $t2, label672
	j label673
label672:
	li $t0, 32027
	sw $t0, -4024($fp)
	li $t0, 18214
	sw $t0, -4028($fp)
	li $t0, 61631
	sw $t0, -4032($fp)
	lw $t0, -4028($fp)
	lw $t1, -4032($fp)
	mul $t0, $t0, $t1
	sw $t0, -4036($fp)
	lw $t0, -4024($fp)
	lw $t1, -4036($fp)
	sub $t0, $t0, $t1
	sw $t0, -4040($fp)
	li $t0, 0
	sw $t0, -4044($fp)
	jal f11
	sw $v0, -4048($fp)
	addi $sp, $sp, 4
	lw $t1, -4048($fp)
	li $t2, 0
	bne $t1, $t2, label679
	j label678
label678:
	li $t0, 1
	sw $t0, -4044($fp)
label679:
	lw $t0, -880($fp)
	sw $t0, -4052($fp)
	li $t0, 0
	lw $t1, -4052($fp)
	sub $t0, $t0, $t1
	sw $t0, -4056($fp)
	lw $t0, -4044($fp)
	lw $t1, -4056($fp)
	mul $t0, $t0, $t1
	sw $t0, -4060($fp)
	lw $t0, -4040($fp)
	lw $t1, -4060($fp)
	add $t0, $t0, $t1
	sw $t0, -4064($fp)
	lw $ra, -4($fp)
	lw $v0, -4064($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label674
label673:
	li $t0, 0
	sw $t0, -4068($fp)
	li $t0, 51035
	sw $t0, -4072($fp)
	addi $t0, $fp, -24
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
	li $t0, 0
	lw $t1, -4092($fp)
	sub $t0, $t0, $t1
	sw $t0, -4096($fp)
	lw $t1, -4072($fp)
	lw $t2, -4096($fp)
	bge $t1, $t2, label680
	j label681
label680:
	li $t0, 1
	sw $t0, -4068($fp)
label681:
	lw $ra, -4($fp)
	lw $v0, -4068($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label674:
	lw $t0, -32($fp)
	sw $t0, -4100($fp)
	lw $t0, -4100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -44($fp)
	sw $t0, -4104($fp)
	lw $t0, -4104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -56($fp)
	sw $t0, -4108($fp)
	lw $t0, -4108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -4112($fp)
	lw $t0, -4112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -4116($fp)
	lw $t0, -4116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -4120($fp)
	lw $t0, -4120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -4124($fp)
	li $t0, 0
	sw $t0, -4128($fp)
	li $t0, 4
	lw $t1, -4128($fp)
	mul $t0, $t0, $t1
	sw $t0, -4132($fp)
	lw $t0, -4132($fp)
	lw $t1, -4124($fp)
	add $t0, $t0, $t1
	sw $t0, -4136($fp)
	lw $t0, -4136($fp)
	lw $t1, 0($t0)
	sw $t1, -4140($fp)
	lw $t0, -4140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -4144($fp)
	li $t0, 1
	sw $t0, -4148($fp)
	li $t0, 4
	lw $t1, -4148($fp)
	mul $t0, $t0, $t1
	sw $t0, -4152($fp)
	lw $t0, -4152($fp)
	lw $t1, -4144($fp)
	add $t0, $t0, $t1
	sw $t0, -4156($fp)
	lw $t0, -4156($fp)
	lw $t1, 0($t0)
	sw $t1, -4160($fp)
	lw $t0, -4160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -4164($fp)
	li $t0, 2
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
	lw $t0, -4180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -4184($fp)
	li $t0, 3
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
	lw $t0, -4200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -4204($fp)
	li $t0, 4
	sw $t0, -4208($fp)
	li $t0, 4
	lw $t1, -4208($fp)
	mul $t0, $t0, $t1
	sw $t0, -4212($fp)
	lw $t0, -4212($fp)
	lw $t1, -4204($fp)
	add $t0, $t0, $t1
	sw $t0, -4216($fp)
	lw $t0, -4216($fp)
	lw $t1, 0($t0)
	sw $t1, -4220($fp)
	lw $t0, -4220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -68($fp)
	sw $t0, -4224($fp)
	lw $ra, -4($fp)
	lw $v0, -4224($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -428
	li $t0, 31994
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	li $t0, 42640
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	li $t0, 54889
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
	li $t0, 31064
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
	li $t0, 22720
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
	li $t0, 17159
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
	li $t0, 45534
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
	li $t0, 6845
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
	li $t0, 22988
	sw $t0, -200($fp)
	li $t0, 0
	lw $t1, -200($fp)
	sub $t0, $t0, $t1
	sw $t0, -204($fp)
	lw $t0, -36($fp)
	sw $t0, -208($fp)
	lw $t0, -204($fp)
	lw $t1, -208($fp)
	add $t0, $t0, $t1
	sw $t0, -212($fp)
	li $t0, 15236
	sw $t0, -216($fp)
	li $t0, 0
	lw $t1, -216($fp)
	sub $t0, $t0, $t1
	sw $t0, -220($fp)
	li $t0, 48351
	sw $t0, -224($fp)
	lw $t0, -220($fp)
	lw $t1, -224($fp)
	add $t0, $t0, $t1
	sw $t0, -228($fp)
	lw $t0, -48($fp)
	sw $t0, -232($fp)
	lw $t0, -36($fp)
	sw $t0, -236($fp)
	lw $t0, -232($fp)
	lw $t1, -236($fp)
	sub $t0, $t0, $t1
	sw $t0, -240($fp)
	li $t0, 38041
	sw $t0, -244($fp)
	lw $t0, -240($fp)
	lw $t1, -244($fp)
	sub $t0, $t0, $t1
	sw $t0, -248($fp)
	li $t0, 0
	sw $t0, -252($fp)
	addi $t0, $fp, -28
	sw $t0, -256($fp)
	li $t0, 1
	sw $t0, -260($fp)
	li $t0, 4
	lw $t1, -260($fp)
	mul $t0, $t0, $t1
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	lw $t1, -256($fp)
	add $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	lw $t1, 0($t0)
	sw $t1, -272($fp)
	lw $t0, -36($fp)
	sw $t0, -276($fp)
	lw $t1, -272($fp)
	lw $t2, -276($fp)
	blt $t1, $t2, label682
	j label683
label682:
	li $t0, 1
	sw $t0, -252($fp)
label683:
	li $t0, 0
	sw $t0, -280($fp)
	li $t0, 55451
	sw $t0, -284($fp)
	lw $t0, -36($fp)
	sw $t0, -288($fp)
	lw $t0, -284($fp)
	lw $t1, -288($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -292($fp)
	lw $t1, -292($fp)
	li $t2, 0
	bne $t1, $t2, label684
	j label686
label686:
	lw $t0, -36($fp)
	sw $t0, -296($fp)
	lw $t1, -296($fp)
	li $t2, 0
	bne $t1, $t2, label684
	j label685
label684:
	li $t0, 1
	sw $t0, -280($fp)
label685:
	addi $sp, $sp, -4
	lw $t0, -212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -280($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -300($fp)
	addi $sp, $sp, 24
	lw $t0, -36($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -48($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -312($fp)
	li $t0, 0
	sw $t0, -316($fp)
	li $t0, 4
	lw $t1, -316($fp)
	mul $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	lw $t1, -312($fp)
	add $t0, $t0, $t1
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	lw $t1, 0($t0)
	sw $t1, -328($fp)
	lw $t0, -328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -332($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -352($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
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
	lw $t0, -388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -392($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -412($fp)
	li $t0, 5
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
	li $t0, 54591
	sw $t0, -432($fp)
	lw $ra, -4($fp)
	lw $v0, -432($fp)
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
