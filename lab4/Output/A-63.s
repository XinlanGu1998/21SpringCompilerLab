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
	addi $sp, $sp, -100
	li $t0, 44369
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 37901
	sw $t0, -20($fp)
	li $t0, 0
	sw $t0, -24($fp)
	li $t0, 46137
	sw $t0, -28($fp)
	li $t0, 25769
	sw $t0, -32($fp)
	li $t0, 0
	lw $t1, -32($fp)
	sub $t0, $t0, $t1
	sw $t0, -36($fp)
	li $t0, 0
	lw $t1, -36($fp)
	sub $t0, $t0, $t1
	sw $t0, -40($fp)
	lw $t0, -28($fp)
	lw $t1, -40($fp)
	sub $t0, $t0, $t1
	sw $t0, -44($fp)
	li $t0, 42653
	sw $t0, -48($fp)
	lw $t1, -44($fp)
	lw $t2, -48($fp)
	blt $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -24($fp)
label122:
	lw $t0, -12($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 31368
	sw $t0, -56($fp)
	lw $t0, -12($fp)
	sw $t0, -60($fp)
	li $t0, 30719
	sw $t0, -64($fp)
	lw $t0, -60($fp)
	lw $t1, -64($fp)
	mul $t0, $t0, $t1
	sw $t0, -68($fp)
	lw $t0, -56($fp)
	lw $t1, -68($fp)
	add $t0, $t0, $t1
	sw $t0, -72($fp)
	li $t0, 52527
	sw $t0, -76($fp)
	li $t0, 17785
	sw $t0, -80($fp)
	lw $t0, -76($fp)
	lw $t1, -80($fp)
	mul $t0, $t0, $t1
	sw $t0, -84($fp)
	li $t0, 1
	sw $t0, -88($fp)
	lw $t0, -84($fp)
	lw $t1, -88($fp)
	mul $t0, $t0, $t1
	sw $t0, -92($fp)
	lw $t0, -12($fp)
	sw $t0, -96($fp)
	lw $t0, -92($fp)
	lw $t1, -96($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -100($fp)
	lw $t0, -72($fp)
	lw $t1, -100($fp)
	add $t0, $t0, $t1
	sw $t0, -104($fp)
	lw $ra, -4($fp)
	lw $v0, -104($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -7160
	li $t0, 15851
	sw $t0, -220($fp)
	addi $t0, $fp, -32
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
	li $t0, 19798
	sw $t0, -244($fp)
	addi $t0, $fp, -32
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
	li $t0, 56770
	sw $t0, -268($fp)
	addi $t0, $fp, -32
	sw $t0, -272($fp)
	li $t0, 2
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -280($fp)
	lw $t0, -272($fp)
	lw $t1, -280($fp)
	add $t0, $t0, $t1
	sw $t0, -284($fp)
	lw $t0, -268($fp)
	lw $t1, -284($fp)
	sw $t0, 0($t1)
	lw $t0, -284($fp)
	lw $t1, 0($t0)
	sw $t1, -288($fp)
	li $t0, 57082
	sw $t0, -292($fp)
	addi $t0, $fp, -32
	sw $t0, -296($fp)
	li $t0, 3
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -304($fp)
	lw $t0, -296($fp)
	lw $t1, -304($fp)
	add $t0, $t0, $t1
	sw $t0, -308($fp)
	lw $t0, -292($fp)
	lw $t1, -308($fp)
	sw $t0, 0($t1)
	lw $t0, -308($fp)
	lw $t1, 0($t0)
	sw $t1, -312($fp)
	li $t0, 59788
	sw $t0, -316($fp)
	addi $t0, $fp, -32
	sw $t0, -320($fp)
	li $t0, 4
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -328($fp)
	lw $t0, -320($fp)
	lw $t1, -328($fp)
	add $t0, $t0, $t1
	sw $t0, -332($fp)
	lw $t0, -316($fp)
	lw $t1, -332($fp)
	sw $t0, 0($t1)
	lw $t0, -332($fp)
	lw $t1, 0($t0)
	sw $t1, -336($fp)
	li $t0, 36540
	sw $t0, -340($fp)
	addi $t0, $fp, -32
	sw $t0, -344($fp)
	li $t0, 5
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
	li $t0, 20179
	sw $t0, -364($fp)
	addi $t0, $fp, -32
	sw $t0, -368($fp)
	li $t0, 6
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
	li $t0, 28991
	sw $t0, -388($fp)
	addi $t0, $fp, -56
	sw $t0, -392($fp)
	li $t0, 0
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
	li $t0, 26886
	sw $t0, -412($fp)
	addi $t0, $fp, -56
	sw $t0, -416($fp)
	li $t0, 1
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
	li $t0, 31304
	sw $t0, -436($fp)
	addi $t0, $fp, -56
	sw $t0, -440($fp)
	li $t0, 2
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
	li $t0, 55711
	sw $t0, -460($fp)
	addi $t0, $fp, -56
	sw $t0, -464($fp)
	li $t0, 3
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
	li $t0, 62340
	sw $t0, -484($fp)
	addi $t0, $fp, -56
	sw $t0, -488($fp)
	li $t0, 4
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
	li $t0, 59445
	sw $t0, -508($fp)
	addi $t0, $fp, -56
	sw $t0, -512($fp)
	li $t0, 5
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
	li $t0, 47249
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	li $t0, 56277
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	li $t0, 45829
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 18066
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	li $t0, 56688
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	li $t0, 1433
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	li $t0, 43106
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	li $t0, 5245
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	li $t0, 45802
	sw $t0, -628($fp)
	lw $t0, -628($fp)
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	li $t0, 15472
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	li $t0, 51382
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	li $t0, 6035
	sw $t0, -664($fp)
	addi $t0, $fp, -96
	sw $t0, -668($fp)
	li $t0, 0
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
	li $t0, 58125
	sw $t0, -688($fp)
	addi $t0, $fp, -96
	sw $t0, -692($fp)
	li $t0, 1
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
	li $t0, 17215
	sw $t0, -712($fp)
	addi $t0, $fp, -96
	sw $t0, -716($fp)
	li $t0, 2
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
	li $t0, 36754
	sw $t0, -736($fp)
	addi $t0, $fp, -96
	sw $t0, -740($fp)
	li $t0, 3
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
	li $t0, 45117
	sw $t0, -760($fp)
	addi $t0, $fp, -96
	sw $t0, -764($fp)
	li $t0, 4
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
	li $t0, 35000
	sw $t0, -784($fp)
	addi $t0, $fp, -96
	sw $t0, -788($fp)
	li $t0, 5
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
	li $t0, 49375
	sw $t0, -808($fp)
	addi $t0, $fp, -96
	sw $t0, -812($fp)
	li $t0, 6
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
	li $t0, 60968
	sw $t0, -832($fp)
	addi $t0, $fp, -96
	sw $t0, -836($fp)
	li $t0, 7
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
	li $t0, 54798
	sw $t0, -856($fp)
	addi $t0, $fp, -96
	sw $t0, -860($fp)
	li $t0, 8
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
	li $t0, 40609
	sw $t0, -880($fp)
	addi $t0, $fp, -96
	sw $t0, -884($fp)
	li $t0, 9
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
	li $t0, 52514
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -912($fp)
	li $t0, 49051
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	li $t0, 11614
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	li $t0, 7157
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -948($fp)
	li $t0, 12506
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -960($fp)
	li $t0, 38500
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -972($fp)
	li $t0, 38462
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	sw $t0, -984($fp)
	li $t0, 2681
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	li $t0, 35304
	sw $t0, -1000($fp)
	addi $t0, $fp, -120
	sw $t0, -1004($fp)
	li $t0, 0
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
	li $t0, 32371
	sw $t0, -1024($fp)
	addi $t0, $fp, -120
	sw $t0, -1028($fp)
	li $t0, 1
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
	li $t0, 49930
	sw $t0, -1048($fp)
	addi $t0, $fp, -120
	sw $t0, -1052($fp)
	li $t0, 2
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
	li $t0, 26046
	sw $t0, -1072($fp)
	addi $t0, $fp, -120
	sw $t0, -1076($fp)
	li $t0, 3
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
	li $t0, 12664
	sw $t0, -1096($fp)
	addi $t0, $fp, -120
	sw $t0, -1100($fp)
	li $t0, 4
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
	li $t0, 2460
	sw $t0, -1120($fp)
	addi $t0, $fp, -120
	sw $t0, -1124($fp)
	li $t0, 5
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
	li $t0, 17198
	sw $t0, -1144($fp)
	addi $t0, $fp, -140
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
	li $t0, 14097
	sw $t0, -1168($fp)
	addi $t0, $fp, -140
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
	li $t0, 45566
	sw $t0, -1192($fp)
	addi $t0, $fp, -140
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
	li $t0, 22443
	sw $t0, -1216($fp)
	addi $t0, $fp, -140
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
	li $t0, 59899
	sw $t0, -1240($fp)
	addi $t0, $fp, -140
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
	li $t0, 61038
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	li $t0, 8290
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	li $t0, 398
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -1296($fp)
	li $t0, 53628
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -1308($fp)
	li $t0, 25505
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -1320($fp)
	li $t0, 37153
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	sw $t0, -1332($fp)
	li $t0, 33209
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	sw $t0, -1344($fp)
	li $t0, 60505
	sw $t0, -1348($fp)
	addi $t0, $fp, -176
	sw $t0, -1352($fp)
	li $t0, 0
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
	li $t0, 20992
	sw $t0, -1372($fp)
	addi $t0, $fp, -176
	sw $t0, -1376($fp)
	li $t0, 1
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
	li $t0, 28641
	sw $t0, -1396($fp)
	addi $t0, $fp, -176
	sw $t0, -1400($fp)
	li $t0, 2
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
	li $t0, 49767
	sw $t0, -1420($fp)
	addi $t0, $fp, -176
	sw $t0, -1424($fp)
	li $t0, 3
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
	li $t0, 61601
	sw $t0, -1444($fp)
	addi $t0, $fp, -176
	sw $t0, -1448($fp)
	li $t0, 4
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
	li $t0, 15620
	sw $t0, -1468($fp)
	addi $t0, $fp, -176
	sw $t0, -1472($fp)
	li $t0, 5
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
	li $t0, 33282
	sw $t0, -1492($fp)
	addi $t0, $fp, -176
	sw $t0, -1496($fp)
	li $t0, 6
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
	li $t0, 7679
	sw $t0, -1516($fp)
	addi $t0, $fp, -176
	sw $t0, -1520($fp)
	li $t0, 7
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
	li $t0, 22777
	sw $t0, -1540($fp)
	addi $t0, $fp, -176
	sw $t0, -1544($fp)
	li $t0, 8
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
	li $t0, 45788
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	sw $t0, -1572($fp)
	li $t0, 46180
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	sw $t0, -1584($fp)
	li $t0, 61239
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	sw $t0, -1596($fp)
	li $t0, 48469
	sw $t0, -1600($fp)
	addi $t0, $fp, -180
	sw $t0, -1604($fp)
	li $t0, 0
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
	li $t0, 15948
	sw $t0, -1624($fp)
	addi $t0, $fp, -216
	sw $t0, -1628($fp)
	li $t0, 0
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
	li $t0, 28074
	sw $t0, -1648($fp)
	addi $t0, $fp, -216
	sw $t0, -1652($fp)
	li $t0, 1
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
	li $t0, 32863
	sw $t0, -1672($fp)
	addi $t0, $fp, -216
	sw $t0, -1676($fp)
	li $t0, 2
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
	li $t0, 41994
	sw $t0, -1696($fp)
	addi $t0, $fp, -216
	sw $t0, -1700($fp)
	li $t0, 3
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
	li $t0, 40738
	sw $t0, -1720($fp)
	addi $t0, $fp, -216
	sw $t0, -1724($fp)
	li $t0, 4
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1732($fp)
	lw $t0, -1724($fp)
	lw $t1, -1732($fp)
	add $t0, $t0, $t1
	sw $t0, -1736($fp)
	lw $t0, -1720($fp)
	lw $t1, -1736($fp)
	sw $t0, 0($t1)
	lw $t0, -1736($fp)
	lw $t1, 0($t0)
	sw $t1, -1740($fp)
	li $t0, 35323
	sw $t0, -1744($fp)
	addi $t0, $fp, -216
	sw $t0, -1748($fp)
	li $t0, 5
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1756($fp)
	lw $t0, -1748($fp)
	lw $t1, -1756($fp)
	add $t0, $t0, $t1
	sw $t0, -1760($fp)
	lw $t0, -1744($fp)
	lw $t1, -1760($fp)
	sw $t0, 0($t1)
	lw $t0, -1760($fp)
	lw $t1, 0($t0)
	sw $t1, -1764($fp)
	li $t0, 59192
	sw $t0, -1768($fp)
	addi $t0, $fp, -216
	sw $t0, -1772($fp)
	li $t0, 6
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1780($fp)
	lw $t0, -1772($fp)
	lw $t1, -1780($fp)
	add $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $t0, -1768($fp)
	lw $t1, -1784($fp)
	sw $t0, 0($t1)
	lw $t0, -1784($fp)
	lw $t1, 0($t0)
	sw $t1, -1788($fp)
	li $t0, 54835
	sw $t0, -1792($fp)
	addi $t0, $fp, -216
	sw $t0, -1796($fp)
	li $t0, 7
	sw $t0, -1800($fp)
	lw $t0, -1800($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t0, -1796($fp)
	lw $t1, -1804($fp)
	add $t0, $t0, $t1
	sw $t0, -1808($fp)
	lw $t0, -1792($fp)
	lw $t1, -1808($fp)
	sw $t0, 0($t1)
	lw $t0, -1808($fp)
	lw $t1, 0($t0)
	sw $t1, -1812($fp)
	li $t0, 15354
	sw $t0, -1816($fp)
	addi $t0, $fp, -216
	sw $t0, -1820($fp)
	li $t0, 8
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1828($fp)
	lw $t0, -1820($fp)
	lw $t1, -1828($fp)
	add $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t0, -1816($fp)
	lw $t1, -1832($fp)
	sw $t0, 0($t1)
	lw $t0, -1832($fp)
	lw $t1, 0($t0)
	sw $t1, -1836($fp)
	addi $t0, $fp, -176
	sw $t0, -1840($fp)
	li $t0, 0
	sw $t0, -1844($fp)
	lw $t0, 8($fp)
	sw $t0, -1848($fp)
	lw $t1, -1848($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label126
label126:
	li $t0, 1
	sw $t0, -1844($fp)
label127:
	li $t0, 0
	sw $t0, -1852($fp)
	li $t0, 16100
	sw $t0, -1856($fp)
	lw $t1, -1856($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label128
label128:
	li $t0, 1
	sw $t0, -1852($fp)
label129:
	lw $t0, -1844($fp)
	lw $t1, -1852($fp)
	sub $t0, $t0, $t1
	sw $t0, -1860($fp)
	li $t0, 4
	lw $t1, -1860($fp)
	mul $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	lw $t1, -1840($fp)
	add $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	lw $t1, 0($t0)
	sw $t1, -1872($fp)
	lw $t1, -1872($fp)
	li $t2, 0
	bne $t1, $t2, label123
	j label124
label123:
	addi $t0, $fp, -176
	sw $t0, -1876($fp)
	lw $t0, -1580($fp)
	sw $t0, -1880($fp)
	li $t0, 4
	lw $t1, -1880($fp)
	mul $t0, $t0, $t1
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	lw $t1, -1876($fp)
	add $t0, $t0, $t1
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	lw $t1, 0($t0)
	sw $t1, -1892($fp)
	addi $t0, $fp, -140
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
	lw $t0, -1316($fp)
	sw $t0, -1916($fp)
	lw $t0, -1912($fp)
	lw $t1, -1916($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1920($fp)
	lw $t1, -1892($fp)
	lw $t2, -1920($fp)
	blt $t1, $t2, label130
	j label131
label130:
label133:
	li $t0, 24390
	sw $t0, -1924($fp)
	addi $t0, $fp, -96
	sw $t0, -1928($fp)
	lw $t0, -656($fp)
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
	lw $t0, -1592($fp)
	sw $t0, -1948($fp)
	lw $t0, -1944($fp)
	lw $t1, -1948($fp)
	mul $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $t1, -1924($fp)
	lw $t2, -1952($fp)
	bne $t1, $t2, label134
	j label136
label136:
	lw $t0, -536($fp)
	sw $t0, -1956($fp)
	lw $t1, -1956($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label134
label134:
	li $t0, 0
	sw $t0, -1960($fp)
	lw $t0, -1292($fp)
	sw $t0, -1964($fp)
	lw $t1, -1964($fp)
	li $t2, 0
	bne $t1, $t2, label138
	j label137
label137:
	li $t0, 1
	sw $t0, -1960($fp)
label138:
	li $t0, 0
	sw $t0, -1968($fp)
	jal f6
	sw $v0, -1972($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1972($fp)
	sub $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $t1, -1976($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label139
label139:
	li $t0, 1
	sw $t0, -1968($fp)
label140:
	lw $t0, -1960($fp)
	lw $t1, -1968($fp)
	mul $t0, $t0, $t1
	sw $t0, -1980($fp)
	j label133
label135:
	j label132
label131:
label141:
	lw $t0, -956($fp)
	sw $t0, -1984($fp)
	li $t0, 0
	lw $t1, -1984($fp)
	sub $t0, $t0, $t1
	sw $t0, -1988($fp)
	li $t0, 0
	lw $t1, -1988($fp)
	sub $t0, $t0, $t1
	sw $t0, -1992($fp)
	lw $t0, -1316($fp)
	sw $t0, -1996($fp)
	lw $t0, -1292($fp)
	sw $t0, -2000($fp)
	lw $t0, -1996($fp)
	lw $t1, -2000($fp)
	sub $t0, $t0, $t1
	sw $t0, -2004($fp)
	lw $t1, -1992($fp)
	lw $t2, -2004($fp)
	bne $t1, $t2, label145
	j label144
label145:
	addi $t0, $fp, -56
	sw $t0, -2008($fp)
	lw $t0, -644($fp)
	sw $t0, -2012($fp)
	li $t0, 4
	lw $t1, -2012($fp)
	mul $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	lw $t1, -2008($fp)
	add $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	lw $t1, 0($t0)
	sw $t1, -2024($fp)
	lw $t1, -2024($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label142
label144:
	li $t0, 49597
	sw $t0, -2028($fp)
	lw $t1, -2028($fp)
	li $t2, 0
	bne $t1, $t2, label142
	j label143
label142:
	li $t0, 64484
	sw $t0, -2032($fp)
	li $t0, 0
	sw $t0, -2036($fp)
	addi $t0, $fp, -180
	sw $t0, -2040($fp)
	lw $t0, -920($fp)
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
	lw $t1, -2056($fp)
	li $t2, 0
	bne $t1, $t2, label149
	j label151
label151:
	li $t0, 32157
	sw $t0, -2060($fp)
	lw $t1, -2060($fp)
	li $t2, 0
	bne $t1, $t2, label149
	j label150
label149:
	li $t0, 1
	sw $t0, -2036($fp)
label150:
	li $t0, 0
	sw $t0, -2064($fp)
	li $t0, 21214
	sw $t0, -2068($fp)
	lw $t0, -1268($fp)
	sw $t0, -2072($fp)
	lw $t0, -2068($fp)
	lw $t1, -2072($fp)
	add $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t1, -2076($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label154
label154:
	lw $t0, -608($fp)
	sw $t0, -2080($fp)
	lw $t1, -2080($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label153
label152:
	li $t0, 1
	sw $t0, -2064($fp)
label153:
	lw $t0, -1316($fp)
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -2088($fp)
	li $t0, 49895
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -2096($fp)
	addi $sp, $sp, -4
	lw $t0, -2036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2096($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2100($fp)
	addi $sp, $sp, 20
	lw $t0, -2032($fp)
	lw $t1, -2100($fp)
	mul $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $t1, -2104($fp)
	li $t2, 0
	bne $t1, $t2, label146
	j label147
label146:
	li $t0, 0
	sw $t0, -2108($fp)
	lw $t0, -1316($fp)
	sw $t0, -2112($fp)
	jal f6
	sw $v0, -2116($fp)
	addi $sp, $sp, 4
	lw $t0, -1580($fp)
	sw $t0, -2120($fp)
	lw $t0, -2116($fp)
	lw $t1, -2120($fp)
	mul $t0, $t0, $t1
	sw $t0, -2124($fp)
	li $t0, 44864
	sw $t0, -2128($fp)
	lw $t0, -1580($fp)
	sw $t0, -2132($fp)
	lw $t0, -2128($fp)
	lw $t1, -2132($fp)
	mul $t0, $t0, $t1
	sw $t0, -2136($fp)
	lw $t0, -2124($fp)
	lw $t1, -2136($fp)
	add $t0, $t0, $t1
	sw $t0, -2140($fp)
	lw $t1, -2112($fp)
	lw $t2, -2140($fp)
	ble $t1, $t2, label155
	j label156
label155:
	li $t0, 1
	sw $t0, -2108($fp)
label156:
	lw $ra, -4($fp)
	lw $v0, -2108($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label148
label147:
	li $t0, 0
	sw $t0, -2144($fp)
	lw $t0, -1592($fp)
	sw $t0, -2148($fp)
	jal f6
	sw $v0, -2152($fp)
	addi $sp, $sp, 4
	lw $t0, -2148($fp)
	lw $t1, -2152($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2156($fp)
	lw $t1, -2156($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label159
label159:
	li $t0, 0
	sw $t0, -2160($fp)
	lw $t0, -620($fp)
	sw $t0, -2164($fp)
	lw $t0, -596($fp)
	sw $t0, -2168($fp)
	lw $t1, -2164($fp)
	lw $t2, -2168($fp)
	beq $t1, $t2, label160
	j label161
label160:
	li $t0, 1
	sw $t0, -2160($fp)
label161:
	li $t0, 0
	sw $t0, -2172($fp)
	lw $t0, -1316($fp)
	sw $t0, -2176($fp)
	lw $t1, -2176($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label162
label162:
	li $t0, 1
	sw $t0, -2172($fp)
label163:
	lw $t1, -2160($fp)
	lw $t2, -2172($fp)
	beq $t1, $t2, label157
	j label158
label157:
	li $t0, 1
	sw $t0, -2144($fp)
label158:
label148:
	j label141
label143:
label132:
	j label125
label124:
	li $t0, 42206
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	sw $t0, -2188($fp)
	li $t0, 60799
	sw $t0, -2192($fp)
	lw $t0, -2192($fp)
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	sw $t0, -2200($fp)
	li $t0, 0
	sw $t0, -2204($fp)
	jal f6
	sw $v0, -2208($fp)
	addi $sp, $sp, 4
	li $t0, 29095
	sw $t0, -2212($fp)
	lw $t0, -548($fp)
	sw $t0, -2216($fp)
	lw $t0, -2212($fp)
	lw $t1, -2216($fp)
	add $t0, $t0, $t1
	sw $t0, -2220($fp)
	lw $t1, -2208($fp)
	lw $t2, -2220($fp)
	bne $t1, $t2, label164
	j label165
label164:
	li $t0, 1
	sw $t0, -2204($fp)
label165:
	lw $t0, -2204($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -2224($fp)
label166:
	li $t0, 0
	sw $t0, -2228($fp)
	li $t0, 45951
	sw $t0, -2232($fp)
	li $t0, 0
	sw $t0, -2236($fp)
	lw $t0, -1316($fp)
	sw $t0, -2240($fp)
	lw $t1, -2240($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label171
label171:
	li $t0, 1
	sw $t0, -2236($fp)
label172:
	lw $t0, 12($fp)
	sw $t0, -2244($fp)
	lw $t0, -2236($fp)
	lw $t1, -2244($fp)
	mul $t0, $t0, $t1
	sw $t0, -2248($fp)
	li $t0, 0
	sw $t0, -2252($fp)
	lw $t0, -908($fp)
	sw $t0, -2256($fp)
	lw $t1, -2256($fp)
	li $t2, 0
	bne $t1, $t2, label173
	j label176
label176:
	li $t0, 10883
	sw $t0, -2260($fp)
	lw $t1, -2260($fp)
	li $t2, 0
	bne $t1, $t2, label173
	j label175
label175:
	li $t0, 62378
	sw $t0, -2264($fp)
	lw $t1, -2264($fp)
	li $t2, 0
	bne $t1, $t2, label173
	j label174
label173:
	li $t0, 1
	sw $t0, -2252($fp)
label174:
	li $t0, 0
	sw $t0, -2268($fp)
	li $t0, 38271
	sw $t0, -2272($fp)
	lw $t0, 4($fp)
	sw $t0, -2276($fp)
	lw $t0, -2272($fp)
	lw $t1, -2276($fp)
	add $t0, $t0, $t1
	sw $t0, -2280($fp)
	lw $t0, -536($fp)
	sw $t0, -2284($fp)
	lw $t1, -2280($fp)
	lw $t2, -2284($fp)
	bge $t1, $t2, label177
	j label178
label177:
	li $t0, 1
	sw $t0, -2268($fp)
label178:
	addi $sp, $sp, -4
	lw $t0, -2232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2268($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2288($fp)
	addi $sp, $sp, 20
	li $t0, 33660
	sw $t0, -2292($fp)
	lw $t1, -2288($fp)
	lw $t2, -2292($fp)
	blt $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -2228($fp)
label170:
	lw $t0, -2228($fp)
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	sw $t0, -2296($fp)
	lw $t1, -2296($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label168
label167:
	li $t0, 0
	sw $t0, -2300($fp)
	li $t0, 0
	sw $t0, -2304($fp)
	addi $t0, $fp, -216
	sw $t0, -2308($fp)
	li $t0, 8
	sw $t0, -2312($fp)
	li $t0, 4
	lw $t1, -2312($fp)
	mul $t0, $t0, $t1
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	lw $t1, -2308($fp)
	add $t0, $t0, $t1
	sw $t0, -2320($fp)
	lw $t0, -2320($fp)
	lw $t1, 0($t0)
	sw $t1, -2324($fp)
	lw $t1, -2324($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label181
label181:
	li $t0, 1
	sw $t0, -2304($fp)
label182:
	addi $t0, $fp, -176
	sw $t0, -2328($fp)
	lw $t0, 8($fp)
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
	lw $t0, -2304($fp)
	lw $t1, -2344($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2348($fp)
	li $t0, 0
	sw $t0, -2352($fp)
	li $t0, 29364
	sw $t0, -2356($fp)
	lw $t1, -2356($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label183
label183:
	li $t0, 1
	sw $t0, -2352($fp)
label184:
	li $t0, 0
	sw $t0, -2360($fp)
	li $t0, 25564
	sw $t0, -2364($fp)
	lw $t1, -2364($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label185
label185:
	li $t0, 1
	sw $t0, -2360($fp)
label186:
	lw $t0, -2352($fp)
	lw $t1, -2360($fp)
	add $t0, $t0, $t1
	sw $t0, -2368($fp)
	lw $t1, -2348($fp)
	lw $t2, -2368($fp)
	ble $t1, $t2, label179
	j label180
label179:
	li $t0, 1
	sw $t0, -2300($fp)
label180:
	j label166
label168:
label187:
	jal f6
	sw $v0, -2372($fp)
	addi $sp, $sp, 4
	lw $t1, -2372($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label189
label188:
	lw $t0, -1568($fp)
	sw $t0, -2376($fp)
	li $t0, 42543
	sw $t0, -2380($fp)
	lw $t0, -2376($fp)
	lw $t1, -2380($fp)
	mul $t0, $t0, $t1
	sw $t0, -2384($fp)
	lw $t0, -1580($fp)
	sw $t0, -2388($fp)
	lw $t0, -2384($fp)
	lw $t1, -2388($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2392($fp)
	li $t0, 57438
	sw $t0, -2396($fp)
	lw $t0, -2392($fp)
	lw $t1, -2396($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2400($fp)
	li $t0, 19003
	sw $t0, -2404($fp)
	lw $t0, -2400($fp)
	lw $t1, -2404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2408($fp)
	jal f6
	sw $v0, -2412($fp)
	addi $sp, $sp, 4
	li $t0, 32641
	sw $t0, -2416($fp)
	li $t0, 0
	lw $t1, -2416($fp)
	sub $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t0, -2412($fp)
	lw $t1, -2420($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2424($fp)
	lw $t0, -2408($fp)
	lw $t1, -2424($fp)
	add $t0, $t0, $t1
	sw $t0, -2428($fp)
	j label187
label189:
label190:
	li $t0, 0
	sw $t0, -2432($fp)
	li $t0, 0
	sw $t0, -2436($fp)
	addi $t0, $fp, -180
	sw $t0, -2440($fp)
	lw $t0, -548($fp)
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
	li $t0, 28215
	sw $t0, -2460($fp)
	lw $t1, -2456($fp)
	lw $t2, -2460($fp)
	beq $t1, $t2, label195
	j label196
label195:
	li $t0, 1
	sw $t0, -2436($fp)
label196:
	li $t0, 12658
	sw $t0, -2464($fp)
	lw $t0, -1316($fp)
	sw $t0, -2468($fp)
	lw $t0, -2464($fp)
	lw $t1, -2468($fp)
	add $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t0, -980($fp)
	sw $t0, -2476($fp)
	lw $t0, -2472($fp)
	lw $t1, -2476($fp)
	sub $t0, $t0, $t1
	sw $t0, -2480($fp)
	lw $t1, -2436($fp)
	lw $t2, -2480($fp)
	bne $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -2432($fp)
label194:
	addi $t0, $fp, -180
	sw $t0, -2484($fp)
	li $t0, 0
	sw $t0, -2488($fp)
	lw $t0, -1316($fp)
	sw $t0, -2492($fp)
	lw $t1, -2492($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label198
label199:
	lw $t0, -644($fp)
	sw $t0, -2496($fp)
	lw $t1, -2496($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label198
label197:
	li $t0, 1
	sw $t0, -2488($fp)
label198:
	li $t0, 4
	lw $t1, -2488($fp)
	mul $t0, $t0, $t1
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	lw $t1, -2484($fp)
	add $t0, $t0, $t1
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	lw $t1, 0($t0)
	sw $t1, -2508($fp)
	lw $t1, -2432($fp)
	lw $t2, -2508($fp)
	bne $t1, $t2, label191
	j label192
label191:
	li $t0, 0
	sw $t0, -2512($fp)
	lw $t0, -548($fp)
	sw $t0, -2516($fp)
	li $t0, 21940
	sw $t0, -2520($fp)
	lw $t0, -2516($fp)
	lw $t1, -2520($fp)
	sub $t0, $t0, $t1
	sw $t0, -2524($fp)
	li $t0, 43569
	sw $t0, -2528($fp)
	lw $t1, -2524($fp)
	lw $t2, -2528($fp)
	ble $t1, $t2, label202
	j label201
label202:
	lw $t0, -2196($fp)
	sw $t0, -2532($fp)
	li $t0, 0
	lw $t1, -2532($fp)
	sub $t0, $t0, $t1
	sw $t0, -2536($fp)
	lw $t1, -2536($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -2512($fp)
label201:
	lw $t0, -2512($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -2540($fp)
	j label190
label192:
label203:
	li $t0, 28758
	sw $t0, -2544($fp)
	li $t0, 5603
	sw $t0, -2548($fp)
	lw $t1, -2544($fp)
	lw $t2, -2548($fp)
	ble $t1, $t2, label204
	j label205
label204:
	li $t0, 0
	sw $t0, -2552($fp)
	addi $t0, $fp, -176
	sw $t0, -2556($fp)
	li $t0, 0
	sw $t0, -2560($fp)
	lw $t0, -620($fp)
	sw $t0, -2564($fp)
	lw $t0, -560($fp)
	sw $t0, -2568($fp)
	lw $t1, -2564($fp)
	lw $t2, -2568($fp)
	beq $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -2560($fp)
label209:
	li $t0, 4
	lw $t1, -2560($fp)
	mul $t0, $t0, $t1
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	lw $t1, -2556($fp)
	add $t0, $t0, $t1
	sw $t0, -2576($fp)
	lw $t0, -2576($fp)
	lw $t1, 0($t0)
	sw $t1, -2580($fp)
	li $t0, 0
	sw $t0, -2584($fp)
	li $t0, 54425
	sw $t0, -2588($fp)
	lw $t1, -2588($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label210
label210:
	li $t0, 1
	sw $t0, -2584($fp)
label211:
	lw $t0, -2580($fp)
	lw $t1, -2584($fp)
	mul $t0, $t0, $t1
	sw $t0, -2592($fp)
	li $t0, 53148
	sw $t0, -2596($fp)
	lw $t0, -632($fp)
	sw $t0, -2600($fp)
	lw $t0, -2596($fp)
	lw $t1, -2600($fp)
	mul $t0, $t0, $t1
	sw $t0, -2604($fp)
	li $t0, 55200
	sw $t0, -2608($fp)
	lw $t0, -2604($fp)
	lw $t1, -2608($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2612($fp)
	addi $t0, $fp, -176
	sw $t0, -2616($fp)
	lw $t0, -1316($fp)
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
	lw $t0, -2612($fp)
	lw $t1, -2632($fp)
	mul $t0, $t0, $t1
	sw $t0, -2636($fp)
	lw $t1, -2592($fp)
	lw $t2, -2636($fp)
	ble $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -2552($fp)
label207:
	j label203
label205:
label212:
	lw $t0, -1268($fp)
	sw $t0, -2640($fp)
	jal f6
	sw $v0, -2644($fp)
	addi $sp, $sp, 4
	lw $t0, -2640($fp)
	lw $t1, -2644($fp)
	sub $t0, $t0, $t1
	sw $t0, -2648($fp)
	li $t0, 0
	sw $t0, -2652($fp)
	lw $t0, -992($fp)
	sw $t0, -2656($fp)
	lw $t0, -1316($fp)
	sw $t0, -2660($fp)
	lw $t0, -2656($fp)
	lw $t1, -2660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2664($fp)
	li $t0, 53374
	sw $t0, -2668($fp)
	lw $t1, -2664($fp)
	lw $t2, -2668($fp)
	blt $t1, $t2, label216
	j label217
label216:
	li $t0, 1
	sw $t0, -2652($fp)
label217:
	lw $t1, -2648($fp)
	lw $t2, -2652($fp)
	bne $t1, $t2, label213
	j label215
label215:
	lw $t0, -572($fp)
	sw $t0, -2672($fp)
	li $t0, 0
	lw $t1, -2672($fp)
	sub $t0, $t0, $t1
	sw $t0, -2676($fp)
	lw $t0, -1340($fp)
	sw $t0, -2680($fp)
	lw $t1, -2676($fp)
	lw $t2, -2680($fp)
	beq $t1, $t2, label218
	j label214
label218:
	lw $t0, 4($fp)
	sw $t0, -2684($fp)
	lw $t1, -2684($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label213
label213:
	li $t0, 0
	sw $t0, -2688($fp)
	lw $t0, -2184($fp)
	sw $t0, -2692($fp)
	li $t0, 0
	lw $t1, -2692($fp)
	sub $t0, $t0, $t1
	sw $t0, -2696($fp)
	lw $t1, -2696($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label221
label221:
	li $t0, 37507
	sw $t0, -2700($fp)
	lw $t1, -2700($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label220
label219:
	li $t0, 1
	sw $t0, -2688($fp)
label220:
	j label212
label214:
label125:
	li $t0, 10878
	sw $t0, -2704($fp)
	li $t0, 0
	lw $t1, -2704($fp)
	sub $t0, $t0, $t1
	sw $t0, -2708($fp)
	lw $t1, -2708($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label222
label222:
	li $t0, 0
	sw $t0, -2712($fp)
	lw $t0, -1316($fp)
	sw $t0, -2716($fp)
	li $t0, 0
	lw $t1, -2716($fp)
	sub $t0, $t0, $t1
	sw $t0, -2720($fp)
	addi $t0, $fp, -120
	sw $t0, -2724($fp)
	li $t0, 1
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
	lw $t1, -2720($fp)
	lw $t2, -2740($fp)
	bge $t1, $t2, label225
	j label226
label225:
	li $t0, 1
	sw $t0, -2712($fp)
label226:
	j label224
label223:
	li $t0, 0
	sw $t0, -2744($fp)
	li $t0, 0
	sw $t0, -2748($fp)
	li $t0, 45931
	sw $t0, -2752($fp)
	lw $t1, -2752($fp)
	li $t2, 0
	bne $t1, $t2, label230
	j label229
label229:
	li $t0, 1
	sw $t0, -2748($fp)
label230:
	li $t0, 53084
	sw $t0, -2756($fp)
	li $t0, 0
	lw $t1, -2756($fp)
	sub $t0, $t0, $t1
	sw $t0, -2760($fp)
	li $t0, 15258
	sw $t0, -2764($fp)
	lw $t0, -2760($fp)
	lw $t1, -2764($fp)
	add $t0, $t0, $t1
	sw $t0, -2768($fp)
	addi $t0, $fp, -180
	sw $t0, -2772($fp)
	lw $t0, -1304($fp)
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
	li $t0, 0
	sw $t0, -2792($fp)
	lw $t0, -992($fp)
	sw $t0, -2796($fp)
	lw $t0, -1280($fp)
	sw $t0, -2800($fp)
	lw $t1, -2796($fp)
	lw $t2, -2800($fp)
	bge $t1, $t2, label231
	j label232
label231:
	li $t0, 1
	sw $t0, -2792($fp)
label232:
	addi $sp, $sp, -4
	lw $t0, -2748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2792($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2804($fp)
	addi $sp, $sp, 20
	lw $t1, -2804($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label227
label227:
	li $t0, 1
	sw $t0, -2744($fp)
label228:
	li $t0, 0
	lw $t1, -2744($fp)
	sub $t0, $t0, $t1
	sw $t0, -2808($fp)
	lw $ra, -4($fp)
	lw $v0, -2808($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label224:
	li $t0, 0
	sw $t0, -2812($fp)
	lw $t0, -548($fp)
	sw $t0, -2816($fp)
	li $t0, 0
	sw $t0, -2820($fp)
	li $t0, 25819
	sw $t0, -2824($fp)
	li $t0, 0
	lw $t1, -2824($fp)
	sub $t0, $t0, $t1
	sw $t0, -2828($fp)
	lw $t1, -2828($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -2820($fp)
label236:
	lw $t0, -2816($fp)
	lw $t1, -2820($fp)
	mul $t0, $t0, $t1
	sw $t0, -2832($fp)
	li $t0, 0
	lw $t1, -2832($fp)
	sub $t0, $t0, $t1
	sw $t0, -2836($fp)
	li $t0, 0
	lw $t1, -2836($fp)
	sub $t0, $t0, $t1
	sw $t0, -2840($fp)
	lw $t1, -2840($fp)
	li $t2, 0
	bne $t1, $t2, label233
	j label234
label233:
	li $t0, 1
	sw $t0, -2812($fp)
label234:
	li $t0, 26141
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	sw $t0, -2884($fp)
	li $t0, 42773
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	sw $t0, -2896($fp)
	li $t0, 6234
	sw $t0, -2900($fp)
	addi $t0, $fp, -2872
	sw $t0, -2904($fp)
	li $t0, 0
	sw $t0, -2908($fp)
	lw $t0, -2908($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2912($fp)
	lw $t0, -2904($fp)
	lw $t1, -2912($fp)
	add $t0, $t0, $t1
	sw $t0, -2916($fp)
	lw $t0, -2900($fp)
	lw $t1, -2916($fp)
	sw $t0, 0($t1)
	lw $t0, -2916($fp)
	lw $t1, 0($t0)
	sw $t1, -2920($fp)
	li $t0, 59802
	sw $t0, -2924($fp)
	addi $t0, $fp, -2872
	sw $t0, -2928($fp)
	li $t0, 1
	sw $t0, -2932($fp)
	lw $t0, -2932($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2936($fp)
	lw $t0, -2928($fp)
	lw $t1, -2936($fp)
	add $t0, $t0, $t1
	sw $t0, -2940($fp)
	lw $t0, -2924($fp)
	lw $t1, -2940($fp)
	sw $t0, 0($t1)
	lw $t0, -2940($fp)
	lw $t1, 0($t0)
	sw $t1, -2944($fp)
	li $t0, 19867
	sw $t0, -2948($fp)
	addi $t0, $fp, -2872
	sw $t0, -2952($fp)
	li $t0, 2
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2960($fp)
	lw $t0, -2952($fp)
	lw $t1, -2960($fp)
	add $t0, $t0, $t1
	sw $t0, -2964($fp)
	lw $t0, -2948($fp)
	lw $t1, -2964($fp)
	sw $t0, 0($t1)
	lw $t0, -2964($fp)
	lw $t1, 0($t0)
	sw $t1, -2968($fp)
	li $t0, 32829
	sw $t0, -2972($fp)
	addi $t0, $fp, -2872
	sw $t0, -2976($fp)
	li $t0, 3
	sw $t0, -2980($fp)
	lw $t0, -2980($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2984($fp)
	lw $t0, -2976($fp)
	lw $t1, -2984($fp)
	add $t0, $t0, $t1
	sw $t0, -2988($fp)
	lw $t0, -2972($fp)
	lw $t1, -2988($fp)
	sw $t0, 0($t1)
	lw $t0, -2988($fp)
	lw $t1, 0($t0)
	sw $t1, -2992($fp)
	li $t0, 23630
	sw $t0, -2996($fp)
	addi $t0, $fp, -2872
	sw $t0, -3000($fp)
	li $t0, 4
	sw $t0, -3004($fp)
	lw $t0, -3004($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3008($fp)
	lw $t0, -3000($fp)
	lw $t1, -3008($fp)
	add $t0, $t0, $t1
	sw $t0, -3012($fp)
	lw $t0, -2996($fp)
	lw $t1, -3012($fp)
	sw $t0, 0($t1)
	lw $t0, -3012($fp)
	lw $t1, 0($t0)
	sw $t1, -3016($fp)
	li $t0, 45431
	sw $t0, -3020($fp)
	addi $t0, $fp, -2872
	sw $t0, -3024($fp)
	li $t0, 5
	sw $t0, -3028($fp)
	lw $t0, -3028($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -3024($fp)
	lw $t1, -3032($fp)
	add $t0, $t0, $t1
	sw $t0, -3036($fp)
	lw $t0, -3020($fp)
	lw $t1, -3036($fp)
	sw $t0, 0($t1)
	lw $t0, -3036($fp)
	lw $t1, 0($t0)
	sw $t1, -3040($fp)
	li $t0, 9837
	sw $t0, -3044($fp)
	addi $t0, $fp, -2872
	sw $t0, -3048($fp)
	li $t0, 6
	sw $t0, -3052($fp)
	lw $t0, -3052($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3056($fp)
	lw $t0, -3048($fp)
	lw $t1, -3056($fp)
	add $t0, $t0, $t1
	sw $t0, -3060($fp)
	lw $t0, -3044($fp)
	lw $t1, -3060($fp)
	sw $t0, 0($t1)
	lw $t0, -3060($fp)
	lw $t1, 0($t0)
	sw $t1, -3064($fp)
	li $t0, 15532
	sw $t0, -3068($fp)
	addi $t0, $fp, -2872
	sw $t0, -3072($fp)
	li $t0, 7
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3080($fp)
	lw $t0, -3072($fp)
	lw $t1, -3080($fp)
	add $t0, $t0, $t1
	sw $t0, -3084($fp)
	lw $t0, -3068($fp)
	lw $t1, -3084($fp)
	sw $t0, 0($t1)
	lw $t0, -3084($fp)
	lw $t1, 0($t0)
	sw $t1, -3088($fp)
	lw $t0, -2880($fp)
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2892($fp)
	sw $t0, -3096($fp)
	lw $t0, -3096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2872
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
	addi $t0, $fp, -2872
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
	addi $t0, $fp, -2872
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
	addi $t0, $fp, -2872
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
	addi $t0, $fp, -2872
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
	addi $t0, $fp, -2872
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
	addi $t0, $fp, -2872
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
	addi $t0, $fp, -2872
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
	li $t0, 38323
	sw $t0, -3260($fp)
	li $t0, 0
	lw $t1, -3260($fp)
	sub $t0, $t0, $t1
	sw $t0, -3264($fp)
	lw $t0, -3264($fp)
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -3268($fp)
	lw $ra, -4($fp)
	lw $v0, -3268($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -2880($fp)
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2892($fp)
	sw $t0, -3276($fp)
	lw $t0, -3276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2872
	sw $t0, -3280($fp)
	li $t0, 0
	sw $t0, -3284($fp)
	li $t0, 4
	lw $t1, -3284($fp)
	mul $t0, $t0, $t1
	sw $t0, -3288($fp)
	lw $t0, -3288($fp)
	lw $t1, -3280($fp)
	add $t0, $t0, $t1
	sw $t0, -3292($fp)
	lw $t0, -3292($fp)
	lw $t1, 0($t0)
	sw $t1, -3296($fp)
	lw $t0, -3296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2872
	sw $t0, -3300($fp)
	li $t0, 1
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
	lw $t0, -3316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2872
	sw $t0, -3320($fp)
	li $t0, 2
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
	addi $t0, $fp, -2872
	sw $t0, -3340($fp)
	li $t0, 3
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
	addi $t0, $fp, -2872
	sw $t0, -3360($fp)
	li $t0, 4
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
	addi $t0, $fp, -2872
	sw $t0, -3380($fp)
	li $t0, 5
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
	addi $t0, $fp, -2872
	sw $t0, -3400($fp)
	li $t0, 6
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
	addi $t0, $fp, -2872
	sw $t0, -3420($fp)
	li $t0, 7
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
	li $t0, 0
	sw $t0, -3440($fp)
	addi $t0, $fp, -32
	sw $t0, -3444($fp)
	lw $t0, -548($fp)
	sw $t0, -3448($fp)
	lw $t0, -3448($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -3452($fp)
	li $t0, 4
	lw $t1, -3452($fp)
	mul $t0, $t0, $t1
	sw $t0, -3456($fp)
	lw $t0, -3456($fp)
	lw $t1, -3444($fp)
	add $t0, $t0, $t1
	sw $t0, -3460($fp)
	lw $t0, -3460($fp)
	lw $t1, 0($t0)
	sw $t1, -3464($fp)
	lw $t0, -2892($fp)
	sw $t0, -3468($fp)
	lw $t0, -3468($fp)
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -3472($fp)
	li $t0, 0
	sw $t0, -3476($fp)
	li $t0, 1002
	sw $t0, -3480($fp)
	lw $t1, -3480($fp)
	li $t2, 0
	bne $t1, $t2, label240
	j label239
label239:
	li $t0, 1
	sw $t0, -3476($fp)
label240:
	li $t0, 0
	lw $t1, -3476($fp)
	sub $t0, $t0, $t1
	sw $t0, -3484($fp)
	li $t0, 0
	sw $t0, -3488($fp)
	li $t0, 48173
	sw $t0, -3492($fp)
	lw $t0, -536($fp)
	sw $t0, -3496($fp)
	lw $t1, -3492($fp)
	lw $t2, -3496($fp)
	bge $t1, $t2, label241
	j label243
label243:
	lw $t0, -584($fp)
	sw $t0, -3500($fp)
	lw $t1, -3500($fp)
	li $t2, 0
	bne $t1, $t2, label241
	j label242
label241:
	li $t0, 1
	sw $t0, -3488($fp)
label242:
	li $t0, 0
	sw $t0, -3504($fp)
	li $t0, 28839
	sw $t0, -3508($fp)
	lw $t0, -632($fp)
	sw $t0, -3512($fp)
	lw $t0, -3508($fp)
	lw $t1, -3512($fp)
	mul $t0, $t0, $t1
	sw $t0, -3516($fp)
	lw $t0, -1292($fp)
	sw $t0, -3520($fp)
	lw $t1, -3516($fp)
	lw $t2, -3520($fp)
	bge $t1, $t2, label244
	j label245
label244:
	li $t0, 1
	sw $t0, -3504($fp)
label245:
	addi $sp, $sp, -4
	lw $t0, -3472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3504($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3524($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -3528($fp)
	lw $t0, -584($fp)
	sw $t0, -3532($fp)
	lw $t1, -3532($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label246
label246:
	li $t0, 1
	sw $t0, -3528($fp)
label247:
	lw $t0, -3524($fp)
	lw $t1, -3528($fp)
	mul $t0, $t0, $t1
	sw $t0, -3536($fp)
	lw $t1, -3464($fp)
	lw $t2, -3536($fp)
	bne $t1, $t2, label237
	j label238
label237:
	li $t0, 1
	sw $t0, -3440($fp)
label238:
	lw $ra, -4($fp)
	lw $v0, -3440($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -3540($fp)
	addi $t0, $fp, -176
	sw $t0, -3544($fp)
	lw $t0, -1568($fp)
	sw $t0, -3548($fp)
	li $t0, 4
	lw $t1, -3548($fp)
	mul $t0, $t0, $t1
	sw $t0, -3552($fp)
	lw $t0, -3552($fp)
	lw $t1, -3544($fp)
	add $t0, $t0, $t1
	sw $t0, -3556($fp)
	lw $t0, -3556($fp)
	lw $t1, 0($t0)
	sw $t1, -3560($fp)
	li $t0, 0
	lw $t1, -3560($fp)
	sub $t0, $t0, $t1
	sw $t0, -3564($fp)
	lw $t0, -2880($fp)
	sw $t0, -3568($fp)
	li $t0, 4578
	sw $t0, -3572($fp)
	li $t0, 0
	lw $t1, -3572($fp)
	sub $t0, $t0, $t1
	sw $t0, -3576($fp)
	lw $t0, -1316($fp)
	sw $t0, -3580($fp)
	li $t0, 41497
	sw $t0, -3584($fp)
	lw $t0, -3580($fp)
	lw $t1, -3584($fp)
	mul $t0, $t0, $t1
	sw $t0, -3588($fp)
	li $t0, 0
	lw $t1, -3588($fp)
	sub $t0, $t0, $t1
	sw $t0, -3592($fp)
	addi $sp, $sp, -4
	lw $t0, -3564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3592($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3596($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -3596($fp)
	sub $t0, $t0, $t1
	sw $t0, -3600($fp)
	lw $t1, -3600($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label248
label248:
	li $t0, 1
	sw $t0, -3540($fp)
label249:
	lw $t0, -2880($fp)
	sw $t0, -3604($fp)
	lw $t0, -3604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2892($fp)
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2872
	sw $t0, -3612($fp)
	li $t0, 0
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
	addi $t0, $fp, -2872
	sw $t0, -3632($fp)
	li $t0, 1
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
	addi $t0, $fp, -2872
	sw $t0, -3652($fp)
	li $t0, 2
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
	addi $t0, $fp, -2872
	sw $t0, -3672($fp)
	li $t0, 3
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
	addi $t0, $fp, -2872
	sw $t0, -3692($fp)
	li $t0, 4
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
	lw $t0, -3708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2872
	sw $t0, -3712($fp)
	li $t0, 5
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
	addi $t0, $fp, -2872
	sw $t0, -3732($fp)
	li $t0, 6
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
	addi $t0, $fp, -2872
	sw $t0, -3752($fp)
	li $t0, 7
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
	li $t0, 0
	sw $t0, -3772($fp)
	addi $t0, $fp, -2872
	sw $t0, -3776($fp)
	lw $t0, -932($fp)
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
	lw $t0, 8($fp)
	sw $t0, -3796($fp)
	lw $t0, -3792($fp)
	lw $t1, -3796($fp)
	mul $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t0, -1580($fp)
	sw $t0, -3804($fp)
	lw $t1, -3800($fp)
	lw $t2, -3804($fp)
	beq $t1, $t2, label252
	j label251
label252:
	jal f6
	sw $v0, -3808($fp)
	addi $sp, $sp, 4
	lw $t0, 4($fp)
	sw $t0, -3812($fp)
	lw $t0, -3808($fp)
	lw $t1, -3812($fp)
	sub $t0, $t0, $t1
	sw $t0, -3816($fp)
	lw $t1, -3816($fp)
	li $t2, 0
	bne $t1, $t2, label250
	j label251
label250:
	li $t0, 1
	sw $t0, -3772($fp)
label251:
	lw $ra, -4($fp)
	lw $v0, -3772($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 44571
	sw $t0, -3820($fp)
	lw $t0, -3820($fp)
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	sw $t0, -3828($fp)
	li $t0, 0
	sw $t0, -3832($fp)
	li $t0, 4720
	sw $t0, -3836($fp)
	li $t0, 10181
	sw $t0, -3840($fp)
	li $t0, 33460
	sw $t0, -3844($fp)
	lw $t0, -3840($fp)
	lw $t1, -3844($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3848($fp)
	lw $t0, -3836($fp)
	lw $t1, -3848($fp)
	sub $t0, $t0, $t1
	sw $t0, -3852($fp)
	li $t0, 57868
	sw $t0, -3856($fp)
	lw $t0, -1580($fp)
	sw $t0, -3860($fp)
	lw $t0, -3856($fp)
	lw $t1, -3860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3864($fp)
	lw $t0, -3852($fp)
	lw $t1, -3864($fp)
	sub $t0, $t0, $t1
	sw $t0, -3868($fp)
	lw $t0, -596($fp)
	sw $t0, -3872($fp)
	lw $t0, -3824($fp)
	sw $t0, -3876($fp)
	lw $t0, -3872($fp)
	lw $t1, -3876($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3880($fp)
	lw $t0, -656($fp)
	sw $t0, -3884($fp)
	lw $t0, -3880($fp)
	lw $t1, -3884($fp)
	add $t0, $t0, $t1
	sw $t0, -3888($fp)
	li $t0, 0
	sw $t0, -3892($fp)
	li $t0, 65381
	sw $t0, -3896($fp)
	lw $t1, -3896($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label255
label255:
	li $t0, 1
	sw $t0, -3892($fp)
label256:
	lw $t0, -3888($fp)
	lw $t1, -3892($fp)
	sub $t0, $t0, $t1
	sw $t0, -3900($fp)
	lw $t1, -3868($fp)
	lw $t2, -3900($fp)
	bne $t1, $t2, label253
	j label254
label253:
	li $t0, 1
	sw $t0, -3832($fp)
label254:
	li $t0, 0
	sw $t0, -3904($fp)
	addi $t0, $fp, -96
	sw $t0, -3908($fp)
	lw $t0, 8($fp)
	sw $t0, -3912($fp)
	lw $t0, -1268($fp)
	sw $t0, -3916($fp)
	lw $t0, -3912($fp)
	lw $t1, -3916($fp)
	mul $t0, $t0, $t1
	sw $t0, -3920($fp)
	li $t0, 21298
	sw $t0, -3924($fp)
	lw $t0, -3920($fp)
	lw $t1, -3924($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3928($fp)
	li $t0, 4
	lw $t1, -3928($fp)
	mul $t0, $t0, $t1
	sw $t0, -3932($fp)
	lw $t0, -3932($fp)
	lw $t1, -3908($fp)
	add $t0, $t0, $t1
	sw $t0, -3936($fp)
	lw $t0, -3936($fp)
	lw $t1, 0($t0)
	sw $t1, -3940($fp)
	lw $t1, -3940($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label257
label257:
	li $t0, 1
	sw $t0, -3904($fp)
label258:
	li $t0, 29840
	sw $t0, -3944($fp)
	li $t0, 0
	lw $t1, -3944($fp)
	sub $t0, $t0, $t1
	sw $t0, -3948($fp)
	li $t0, 0
	lw $t1, -3948($fp)
	sub $t0, $t0, $t1
	sw $t0, -3952($fp)
	li $t0, 10723
	sw $t0, -3968($fp)
	addi $t0, $fp, -3964
	sw $t0, -3972($fp)
	li $t0, 0
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3980($fp)
	lw $t0, -3972($fp)
	lw $t1, -3980($fp)
	add $t0, $t0, $t1
	sw $t0, -3984($fp)
	lw $t0, -3968($fp)
	lw $t1, -3984($fp)
	sw $t0, 0($t1)
	lw $t0, -3984($fp)
	lw $t1, 0($t0)
	sw $t1, -3988($fp)
	li $t0, 41294
	sw $t0, -3992($fp)
	addi $t0, $fp, -3964
	sw $t0, -3996($fp)
	li $t0, 1
	sw $t0, -4000($fp)
	lw $t0, -4000($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4004($fp)
	lw $t0, -3996($fp)
	lw $t1, -4004($fp)
	add $t0, $t0, $t1
	sw $t0, -4008($fp)
	lw $t0, -3992($fp)
	lw $t1, -4008($fp)
	sw $t0, 0($t1)
	lw $t0, -4008($fp)
	lw $t1, 0($t0)
	sw $t1, -4012($fp)
	li $t0, 46675
	sw $t0, -4016($fp)
	addi $t0, $fp, -3964
	sw $t0, -4020($fp)
	li $t0, 2
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4028($fp)
	lw $t0, -4020($fp)
	lw $t1, -4028($fp)
	add $t0, $t0, $t1
	sw $t0, -4032($fp)
	lw $t0, -4016($fp)
	lw $t1, -4032($fp)
	sw $t0, 0($t1)
	lw $t0, -4032($fp)
	lw $t1, 0($t0)
	sw $t1, -4036($fp)
	li $t0, 63807
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	sw $t0, -4048($fp)
	li $t0, 56552
	sw $t0, -4052($fp)
	lw $t0, -4052($fp)
	sw $t0, -4056($fp)
	lw $t0, -4056($fp)
	sw $t0, -4060($fp)
	li $t0, 0
	sw $t0, -4064($fp)
	li $t0, 0
	sw $t0, -4068($fp)
	addi $t0, $fp, -3964
	sw $t0, -4072($fp)
	lw $t0, -944($fp)
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
	lw $t1, -4088($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label264
label264:
	li $t0, 1
	sw $t0, -4068($fp)
label265:
	li $t0, 27070
	sw $t0, -4092($fp)
	lw $t1, -4068($fp)
	lw $t2, -4092($fp)
	bgt $t1, $t2, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -4064($fp)
label263:
	lw $t0, -4064($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -4096($fp)
	lw $t1, -4096($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label260
label259:
	li $t0, 0
	sw $t0, -4100($fp)
	lw $t0, -608($fp)
	sw $t0, -4104($fp)
	addi $t0, $fp, -140
	sw $t0, -4108($fp)
	lw $t0, 12($fp)
	sw $t0, -4112($fp)
	lw $t0, -4112($fp)
	sw $t0, -4056($fp)
	lw $t0, -4056($fp)
	sw $t0, -4116($fp)
	li $t0, 4
	lw $t1, -4116($fp)
	mul $t0, $t0, $t1
	sw $t0, -4120($fp)
	lw $t0, -4120($fp)
	lw $t1, -4108($fp)
	add $t0, $t0, $t1
	sw $t0, -4124($fp)
	lw $t0, -4124($fp)
	lw $t1, 0($t0)
	sw $t1, -4128($fp)
	lw $t1, -4104($fp)
	lw $t2, -4128($fp)
	bge $t1, $t2, label266
	j label267
label266:
	li $t0, 1
	sw $t0, -4100($fp)
label267:
	j label261
label260:
	li $t0, 0
	sw $t0, -4132($fp)
	addi $t0, $fp, -2872
	sw $t0, -4136($fp)
	lw $t0, -1328($fp)
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
	li $t0, 24090
	sw $t0, -4156($fp)
	lw $t0, -4152($fp)
	lw $t1, -4156($fp)
	sub $t0, $t0, $t1
	sw $t0, -4160($fp)
	lw $t1, -4160($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label272
label272:
	lw $t0, -1316($fp)
	sw $t0, -4164($fp)
	lw $t0, -4044($fp)
	sw $t0, -4168($fp)
	lw $t0, -4164($fp)
	lw $t1, -4168($fp)
	add $t0, $t0, $t1
	sw $t0, -4172($fp)
	lw $t1, -4172($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label271
label271:
	lw $t0, -560($fp)
	sw $t0, -4176($fp)
	li $t0, 0
	lw $t1, -4176($fp)
	sub $t0, $t0, $t1
	sw $t0, -4180($fp)
	lw $t1, -4180($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label270
label270:
	li $t0, 17158
	sw $t0, -4184($fp)
	li $t0, 4307
	sw $t0, -4188($fp)
	lw $t0, -4184($fp)
	lw $t1, -4188($fp)
	mul $t0, $t0, $t1
	sw $t0, -4192($fp)
	lw $t0, 8($fp)
	sw $t0, -4196($fp)
	lw $t0, -4192($fp)
	lw $t1, -4196($fp)
	mul $t0, $t0, $t1
	sw $t0, -4200($fp)
	addi $t0, $fp, -140
	sw $t0, -4204($fp)
	li $t0, 1
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
	lw $t1, -4200($fp)
	lw $t2, -4220($fp)
	bne $t1, $t2, label268
	j label269
label268:
	li $t0, 1
	sw $t0, -4132($fp)
label269:
label261:
	li $t0, 24175
	sw $t0, -4300($fp)
	lw $t0, -4300($fp)
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	sw $t0, -4308($fp)
	li $t0, 63154
	sw $t0, -4312($fp)
	lw $t0, -4312($fp)
	sw $t0, -4316($fp)
	lw $t0, -4316($fp)
	sw $t0, -4320($fp)
	li $t0, 35054
	sw $t0, -4324($fp)
	addi $t0, $fp, -4248
	sw $t0, -4328($fp)
	li $t0, 0
	sw $t0, -4332($fp)
	lw $t0, -4332($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4336($fp)
	lw $t0, -4328($fp)
	lw $t1, -4336($fp)
	add $t0, $t0, $t1
	sw $t0, -4340($fp)
	lw $t0, -4324($fp)
	lw $t1, -4340($fp)
	sw $t0, 0($t1)
	lw $t0, -4340($fp)
	lw $t1, 0($t0)
	sw $t1, -4344($fp)
	li $t0, 4070
	sw $t0, -4348($fp)
	addi $t0, $fp, -4248
	sw $t0, -4352($fp)
	li $t0, 1
	sw $t0, -4356($fp)
	lw $t0, -4356($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4360($fp)
	lw $t0, -4352($fp)
	lw $t1, -4360($fp)
	add $t0, $t0, $t1
	sw $t0, -4364($fp)
	lw $t0, -4348($fp)
	lw $t1, -4364($fp)
	sw $t0, 0($t1)
	lw $t0, -4364($fp)
	lw $t1, 0($t0)
	sw $t1, -4368($fp)
	li $t0, 7455
	sw $t0, -4372($fp)
	addi $t0, $fp, -4248
	sw $t0, -4376($fp)
	li $t0, 2
	sw $t0, -4380($fp)
	lw $t0, -4380($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4384($fp)
	lw $t0, -4376($fp)
	lw $t1, -4384($fp)
	add $t0, $t0, $t1
	sw $t0, -4388($fp)
	lw $t0, -4372($fp)
	lw $t1, -4388($fp)
	sw $t0, 0($t1)
	lw $t0, -4388($fp)
	lw $t1, 0($t0)
	sw $t1, -4392($fp)
	li $t0, 50586
	sw $t0, -4396($fp)
	addi $t0, $fp, -4248
	sw $t0, -4400($fp)
	li $t0, 3
	sw $t0, -4404($fp)
	lw $t0, -4404($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4408($fp)
	lw $t0, -4400($fp)
	lw $t1, -4408($fp)
	add $t0, $t0, $t1
	sw $t0, -4412($fp)
	lw $t0, -4396($fp)
	lw $t1, -4412($fp)
	sw $t0, 0($t1)
	lw $t0, -4412($fp)
	lw $t1, 0($t0)
	sw $t1, -4416($fp)
	li $t0, 42393
	sw $t0, -4420($fp)
	addi $t0, $fp, -4248
	sw $t0, -4424($fp)
	li $t0, 4
	sw $t0, -4428($fp)
	lw $t0, -4428($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4432($fp)
	lw $t0, -4424($fp)
	lw $t1, -4432($fp)
	add $t0, $t0, $t1
	sw $t0, -4436($fp)
	lw $t0, -4420($fp)
	lw $t1, -4436($fp)
	sw $t0, 0($t1)
	lw $t0, -4436($fp)
	lw $t1, 0($t0)
	sw $t1, -4440($fp)
	li $t0, 36294
	sw $t0, -4444($fp)
	addi $t0, $fp, -4248
	sw $t0, -4448($fp)
	li $t0, 5
	sw $t0, -4452($fp)
	lw $t0, -4452($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4456($fp)
	lw $t0, -4448($fp)
	lw $t1, -4456($fp)
	add $t0, $t0, $t1
	sw $t0, -4460($fp)
	lw $t0, -4444($fp)
	lw $t1, -4460($fp)
	sw $t0, 0($t1)
	lw $t0, -4460($fp)
	lw $t1, 0($t0)
	sw $t1, -4464($fp)
	li $t0, 33224
	sw $t0, -4468($fp)
	addi $t0, $fp, -4248
	sw $t0, -4472($fp)
	li $t0, 6
	sw $t0, -4476($fp)
	lw $t0, -4476($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4480($fp)
	lw $t0, -4472($fp)
	lw $t1, -4480($fp)
	add $t0, $t0, $t1
	sw $t0, -4484($fp)
	lw $t0, -4468($fp)
	lw $t1, -4484($fp)
	sw $t0, 0($t1)
	lw $t0, -4484($fp)
	lw $t1, 0($t0)
	sw $t1, -4488($fp)
	li $t0, 43395
	sw $t0, -4492($fp)
	addi $t0, $fp, -4252
	sw $t0, -4496($fp)
	li $t0, 0
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4504($fp)
	lw $t0, -4496($fp)
	lw $t1, -4504($fp)
	add $t0, $t0, $t1
	sw $t0, -4508($fp)
	lw $t0, -4492($fp)
	lw $t1, -4508($fp)
	sw $t0, 0($t1)
	lw $t0, -4508($fp)
	lw $t1, 0($t0)
	sw $t1, -4512($fp)
	li $t0, 12256
	sw $t0, -4516($fp)
	addi $t0, $fp, -4268
	sw $t0, -4520($fp)
	li $t0, 0
	sw $t0, -4524($fp)
	lw $t0, -4524($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4528($fp)
	lw $t0, -4520($fp)
	lw $t1, -4528($fp)
	add $t0, $t0, $t1
	sw $t0, -4532($fp)
	lw $t0, -4516($fp)
	lw $t1, -4532($fp)
	sw $t0, 0($t1)
	lw $t0, -4532($fp)
	lw $t1, 0($t0)
	sw $t1, -4536($fp)
	li $t0, 37802
	sw $t0, -4540($fp)
	addi $t0, $fp, -4268
	sw $t0, -4544($fp)
	li $t0, 1
	sw $t0, -4548($fp)
	lw $t0, -4548($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4552($fp)
	lw $t0, -4544($fp)
	lw $t1, -4552($fp)
	add $t0, $t0, $t1
	sw $t0, -4556($fp)
	lw $t0, -4540($fp)
	lw $t1, -4556($fp)
	sw $t0, 0($t1)
	lw $t0, -4556($fp)
	lw $t1, 0($t0)
	sw $t1, -4560($fp)
	li $t0, 22430
	sw $t0, -4564($fp)
	addi $t0, $fp, -4268
	sw $t0, -4568($fp)
	li $t0, 2
	sw $t0, -4572($fp)
	lw $t0, -4572($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4576($fp)
	lw $t0, -4568($fp)
	lw $t1, -4576($fp)
	add $t0, $t0, $t1
	sw $t0, -4580($fp)
	lw $t0, -4564($fp)
	lw $t1, -4580($fp)
	sw $t0, 0($t1)
	lw $t0, -4580($fp)
	lw $t1, 0($t0)
	sw $t1, -4584($fp)
	li $t0, 16976
	sw $t0, -4588($fp)
	addi $t0, $fp, -4268
	sw $t0, -4592($fp)
	li $t0, 3
	sw $t0, -4596($fp)
	lw $t0, -4596($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4600($fp)
	lw $t0, -4592($fp)
	lw $t1, -4600($fp)
	add $t0, $t0, $t1
	sw $t0, -4604($fp)
	lw $t0, -4588($fp)
	lw $t1, -4604($fp)
	sw $t0, 0($t1)
	lw $t0, -4604($fp)
	lw $t1, 0($t0)
	sw $t1, -4608($fp)
	li $t0, 47983
	sw $t0, -4612($fp)
	lw $t0, -4612($fp)
	sw $t0, -4616($fp)
	lw $t0, -4616($fp)
	sw $t0, -4620($fp)
	li $t0, 55891
	sw $t0, -4624($fp)
	addi $t0, $fp, -4296
	sw $t0, -4628($fp)
	li $t0, 0
	sw $t0, -4632($fp)
	lw $t0, -4632($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4636($fp)
	lw $t0, -4628($fp)
	lw $t1, -4636($fp)
	add $t0, $t0, $t1
	sw $t0, -4640($fp)
	lw $t0, -4624($fp)
	lw $t1, -4640($fp)
	sw $t0, 0($t1)
	lw $t0, -4640($fp)
	lw $t1, 0($t0)
	sw $t1, -4644($fp)
	li $t0, 9308
	sw $t0, -4648($fp)
	addi $t0, $fp, -4296
	sw $t0, -4652($fp)
	li $t0, 1
	sw $t0, -4656($fp)
	lw $t0, -4656($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4660($fp)
	lw $t0, -4652($fp)
	lw $t1, -4660($fp)
	add $t0, $t0, $t1
	sw $t0, -4664($fp)
	lw $t0, -4648($fp)
	lw $t1, -4664($fp)
	sw $t0, 0($t1)
	lw $t0, -4664($fp)
	lw $t1, 0($t0)
	sw $t1, -4668($fp)
	li $t0, 47828
	sw $t0, -4672($fp)
	addi $t0, $fp, -4296
	sw $t0, -4676($fp)
	li $t0, 2
	sw $t0, -4680($fp)
	lw $t0, -4680($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4684($fp)
	lw $t0, -4676($fp)
	lw $t1, -4684($fp)
	add $t0, $t0, $t1
	sw $t0, -4688($fp)
	lw $t0, -4672($fp)
	lw $t1, -4688($fp)
	sw $t0, 0($t1)
	lw $t0, -4688($fp)
	lw $t1, 0($t0)
	sw $t1, -4692($fp)
	li $t0, 11653
	sw $t0, -4696($fp)
	addi $t0, $fp, -4296
	sw $t0, -4700($fp)
	li $t0, 3
	sw $t0, -4704($fp)
	lw $t0, -4704($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4708($fp)
	lw $t0, -4700($fp)
	lw $t1, -4708($fp)
	add $t0, $t0, $t1
	sw $t0, -4712($fp)
	lw $t0, -4696($fp)
	lw $t1, -4712($fp)
	sw $t0, 0($t1)
	lw $t0, -4712($fp)
	lw $t1, 0($t0)
	sw $t1, -4716($fp)
	li $t0, 39148
	sw $t0, -4720($fp)
	addi $t0, $fp, -4296
	sw $t0, -4724($fp)
	li $t0, 4
	sw $t0, -4728($fp)
	lw $t0, -4728($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4732($fp)
	lw $t0, -4724($fp)
	lw $t1, -4732($fp)
	add $t0, $t0, $t1
	sw $t0, -4736($fp)
	lw $t0, -4720($fp)
	lw $t1, -4736($fp)
	sw $t0, 0($t1)
	lw $t0, -4736($fp)
	lw $t1, 0($t0)
	sw $t1, -4740($fp)
	li $t0, 58551
	sw $t0, -4744($fp)
	addi $t0, $fp, -4296
	sw $t0, -4748($fp)
	li $t0, 5
	sw $t0, -4752($fp)
	lw $t0, -4752($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4756($fp)
	lw $t0, -4748($fp)
	lw $t1, -4756($fp)
	add $t0, $t0, $t1
	sw $t0, -4760($fp)
	lw $t0, -4744($fp)
	lw $t1, -4760($fp)
	sw $t0, 0($t1)
	lw $t0, -4760($fp)
	lw $t1, 0($t0)
	sw $t1, -4764($fp)
	li $t0, 52947
	sw $t0, -4768($fp)
	addi $t0, $fp, -4296
	sw $t0, -4772($fp)
	li $t0, 6
	sw $t0, -4776($fp)
	lw $t0, -4776($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4780($fp)
	lw $t0, -4772($fp)
	lw $t1, -4780($fp)
	add $t0, $t0, $t1
	sw $t0, -4784($fp)
	lw $t0, -4768($fp)
	lw $t1, -4784($fp)
	sw $t0, 0($t1)
	lw $t0, -4784($fp)
	lw $t1, 0($t0)
	sw $t1, -4788($fp)
label273:
	li $t0, 20288
	sw $t0, -4792($fp)
	li $t0, 0
	lw $t1, -4792($fp)
	sub $t0, $t0, $t1
	sw $t0, -4796($fp)
	li $t0, 0
	sw $t0, -4800($fp)
	lw $t0, -1316($fp)
	sw $t0, -4804($fp)
	lw $t1, -4804($fp)
	li $t2, 0
	bne $t1, $t2, label276
	j label277
label276:
	li $t0, 1
	sw $t0, -4800($fp)
label277:
	lw $t0, -4796($fp)
	lw $t1, -4800($fp)
	add $t0, $t0, $t1
	sw $t0, -4808($fp)
	lw $t0, -992($fp)
	sw $t0, -4812($fp)
	li $t0, 0
	sw $t0, -4816($fp)
	li $t0, 56822
	sw $t0, -4820($fp)
	lw $t1, -4820($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label278
label278:
	li $t0, 1
	sw $t0, -4816($fp)
label279:
	lw $t0, -4812($fp)
	lw $t1, -4816($fp)
	add $t0, $t0, $t1
	sw $t0, -4824($fp)
	lw $t1, -4808($fp)
	lw $t2, -4824($fp)
	blt $t1, $t2, label274
	j label275
label274:
	lw $t0, -1280($fp)
	sw $t0, -4828($fp)
	lw $t1, -4828($fp)
	li $t2, 0
	bne $t1, $t2, label280
	j label281
label280:
label283:
	li $t0, 43964
	sw $t0, -4832($fp)
	li $t0, 0
	lw $t1, -4832($fp)
	sub $t0, $t0, $t1
	sw $t0, -4836($fp)
	lw $t1, -4836($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label285
label284:
	li $t0, 0
	sw $t0, -4840($fp)
	li $t0, 0
	sw $t0, -4844($fp)
	li $t0, 15376
	sw $t0, -4848($fp)
	lw $t0, -1316($fp)
	sw $t0, -4852($fp)
	lw $t0, -4848($fp)
	lw $t1, -4852($fp)
	add $t0, $t0, $t1
	sw $t0, -4856($fp)
	lw $t1, -4856($fp)
	li $t2, 0
	bne $t1, $t2, label288
	j label290
label290:
	lw $t0, -584($fp)
	sw $t0, -4860($fp)
	lw $t1, -4860($fp)
	li $t2, 0
	bne $t1, $t2, label288
	j label289
label288:
	li $t0, 1
	sw $t0, -4844($fp)
label289:
	li $t0, 47358
	sw $t0, -4864($fp)
	lw $t0, -4864($fp)
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -4868($fp)
	jal f6
	sw $v0, -4872($fp)
	addi $sp, $sp, 4
	jal f6
	sw $v0, -4876($fp)
	addi $sp, $sp, 4
	lw $t0, -1316($fp)
	sw $t0, -4880($fp)
	lw $t0, -4876($fp)
	lw $t1, -4880($fp)
	sub $t0, $t0, $t1
	sw $t0, -4884($fp)
	addi $sp, $sp, -4
	lw $t0, -4844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4884($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4888($fp)
	addi $sp, $sp, 20
	li $t0, 61122
	sw $t0, -4892($fp)
	lw $t0, -4888($fp)
	lw $t1, -4892($fp)
	mul $t0, $t0, $t1
	sw $t0, -4896($fp)
	lw $t0, -1580($fp)
	sw $t0, -4900($fp)
	lw $t1, -4896($fp)
	lw $t2, -4900($fp)
	blt $t1, $t2, label286
	j label287
label286:
	li $t0, 1
	sw $t0, -4840($fp)
label287:
	lw $t0, -4840($fp)
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	sw $t0, -4904($fp)
	li $t0, 0
	sw $t0, -4908($fp)
	li $t0, 0
	sw $t0, -4912($fp)
	li $t0, 51666
	sw $t0, -4916($fp)
	lw $t1, -4916($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label293
label293:
	li $t0, 1
	sw $t0, -4912($fp)
label294:
	addi $t0, $fp, -140
	sw $t0, -4920($fp)
	li $t0, 2
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
	lw $t0, -4912($fp)
	lw $t1, -4936($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4940($fp)
	li $t0, 0
	sw $t0, -4944($fp)
	lw $t0, 16($fp)
	sw $t0, -4948($fp)
	lw $t1, -4948($fp)
	li $t2, 0
	bne $t1, $t2, label295
	j label296
label295:
	li $t0, 1
	sw $t0, -4944($fp)
label296:
	lw $t0, -4940($fp)
	lw $t1, -4944($fp)
	mul $t0, $t0, $t1
	sw $t0, -4952($fp)
	li $t0, 0
	sw $t0, -4956($fp)
	li $t0, 10305
	sw $t0, -4960($fp)
	lw $t1, -4960($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label297
label297:
	li $t0, 1
	sw $t0, -4956($fp)
label298:
	lw $t1, -4952($fp)
	lw $t2, -4956($fp)
	bne $t1, $t2, label291
	j label292
label291:
	li $t0, 1
	sw $t0, -4908($fp)
label292:
	j label283
label285:
	j label282
label281:
	addi $t0, $fp, -4296
	sw $t0, -4964($fp)
	li $t0, 0
	sw $t0, -4968($fp)
	li $t0, 43320
	sw $t0, -4972($fp)
	lw $t1, -4972($fp)
	li $t2, 0
	bne $t1, $t2, label300
	j label299
label299:
	li $t0, 1
	sw $t0, -4968($fp)
label300:
	li $t0, 4
	lw $t1, -4968($fp)
	mul $t0, $t0, $t1
	sw $t0, -4976($fp)
	lw $t0, -4976($fp)
	lw $t1, -4964($fp)
	add $t0, $t0, $t1
	sw $t0, -4980($fp)
	lw $t0, -4980($fp)
	lw $t1, 0($t0)
	sw $t1, -4984($fp)
label282:
	j label273
label275:
	li $t0, 42064
	sw $t0, -4988($fp)
	lw $t0, 8($fp)
	sw $t0, -4992($fp)
	lw $t1, -4988($fp)
	lw $t2, -4992($fp)
	ble $t1, $t2, label301
	j label302
label301:
	li $t0, 0
	sw $t0, -4996($fp)
	lw $t0, -908($fp)
	sw $t0, -5000($fp)
	li $t0, 0
	lw $t1, -5000($fp)
	sub $t0, $t0, $t1
	sw $t0, -5004($fp)
	lw $t1, -5004($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label305
label306:
	li $t0, 14375
	sw $t0, -5008($fp)
	li $t0, 0
	sw $t0, -5012($fp)
	lw $t0, -4616($fp)
	sw $t0, -5016($fp)
	lw $t1, -5016($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label307
label307:
	li $t0, 1
	sw $t0, -5012($fp)
label308:
	lw $t1, -5008($fp)
	lw $t2, -5012($fp)
	blt $t1, $t2, label304
	j label305
label304:
	li $t0, 1
	sw $t0, -4996($fp)
label305:
	lw $ra, -4($fp)
	lw $v0, -4996($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label303
label302:
	li $t0, 0
	sw $t0, -5020($fp)
	li $t0, 50775
	sw $t0, -5024($fp)
	lw $t0, -980($fp)
	sw $t0, -5028($fp)
	lw $t0, -5024($fp)
	lw $t1, -5028($fp)
	sub $t0, $t0, $t1
	sw $t0, -5032($fp)
	lw $t1, -5032($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label310
label311:
	lw $t0, -548($fp)
	sw $t0, -5036($fp)
	lw $t1, -5036($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label310
label309:
	li $t0, 1
	sw $t0, -5020($fp)
label310:
label303:
	addi $t0, $fp, -140
	sw $t0, -5040($fp)
	li $t0, 0
	sw $t0, -5044($fp)
	addi $t0, $fp, -56
	sw $t0, -5048($fp)
	li $t0, 5
	sw $t0, -5052($fp)
	li $t0, 4
	lw $t1, -5052($fp)
	mul $t0, $t0, $t1
	sw $t0, -5056($fp)
	lw $t0, -5056($fp)
	lw $t1, -5048($fp)
	add $t0, $t0, $t1
	sw $t0, -5060($fp)
	lw $t0, -5060($fp)
	lw $t1, 0($t0)
	sw $t1, -5064($fp)
	li $t0, 21534
	sw $t0, -5068($fp)
	lw $t0, -5064($fp)
	lw $t1, -5068($fp)
	mul $t0, $t0, $t1
	sw $t0, -5072($fp)
	lw $t1, -5072($fp)
	li $t2, 0
	bne $t1, $t2, label315
	j label317
label317:
	li $t0, 60338
	sw $t0, -5076($fp)
	lw $t0, -632($fp)
	sw $t0, -5080($fp)
	lw $t0, -5076($fp)
	lw $t1, -5080($fp)
	mul $t0, $t0, $t1
	sw $t0, -5084($fp)
	lw $t1, -5084($fp)
	li $t2, 0
	bne $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -5044($fp)
label316:
	li $t0, 4
	lw $t1, -5044($fp)
	mul $t0, $t0, $t1
	sw $t0, -5088($fp)
	lw $t0, -5088($fp)
	lw $t1, -5040($fp)
	add $t0, $t0, $t1
	sw $t0, -5092($fp)
	lw $t0, -5092($fp)
	lw $t1, 0($t0)
	sw $t1, -5096($fp)
	lw $t1, -5096($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label313
label312:
label318:
	addi $t0, $fp, -4252
	sw $t0, -5100($fp)
	li $t0, 0
	sw $t0, -5104($fp)
	li $t0, 4
	lw $t1, -5104($fp)
	mul $t0, $t0, $t1
	sw $t0, -5108($fp)
	lw $t0, -5108($fp)
	lw $t1, -5100($fp)
	add $t0, $t0, $t1
	sw $t0, -5112($fp)
	lw $t0, -5112($fp)
	lw $t1, 0($t0)
	sw $t1, -5116($fp)
	lw $t1, -5116($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label320
label319:
	li $t0, 0
	sw $t0, -5120($fp)
	li $t0, 0
	sw $t0, -5124($fp)
	jal f6
	sw $v0, -5128($fp)
	addi $sp, $sp, 4
	lw $t0, -536($fp)
	sw $t0, -5132($fp)
	lw $t0, -5128($fp)
	lw $t1, -5132($fp)
	add $t0, $t0, $t1
	sw $t0, -5136($fp)
	jal f6
	sw $v0, -5140($fp)
	addi $sp, $sp, 4
	lw $t1, -5136($fp)
	lw $t2, -5140($fp)
	bge $t1, $t2, label323
	j label324
label323:
	li $t0, 1
	sw $t0, -5124($fp)
label324:
	addi $t0, $fp, -180
	sw $t0, -5144($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -5160($fp)
	sub $t0, $t0, $t1
	sw $t0, -5164($fp)
	lw $t1, -5124($fp)
	lw $t2, -5164($fp)
	blt $t1, $t2, label321
	j label322
label321:
	li $t0, 1
	sw $t0, -5120($fp)
label322:
	j label318
label320:
	j label314
label313:
	li $t0, 0
	sw $t0, -5168($fp)
	li $t0, 0
	sw $t0, -5172($fp)
	lw $t0, -1328($fp)
	sw $t0, -5176($fp)
	lw $t0, -908($fp)
	sw $t0, -5180($fp)
	lw $t1, -5176($fp)
	lw $t2, -5180($fp)
	blt $t1, $t2, label330
	j label331
label330:
	li $t0, 1
	sw $t0, -5172($fp)
label331:
	li $t0, 47180
	sw $t0, -5184($fp)
	lw $t1, -5172($fp)
	lw $t2, -5184($fp)
	beq $t1, $t2, label328
	j label329
label328:
	li $t0, 1
	sw $t0, -5168($fp)
label329:
	li $t0, 55894
	sw $t0, -5188($fp)
	li $t0, 1
	sw $t0, -5192($fp)
	lw $t0, -5188($fp)
	lw $t1, -5192($fp)
	mul $t0, $t0, $t1
	sw $t0, -5196($fp)
	li $t0, 53975
	sw $t0, -5200($fp)
	lw $t0, -5196($fp)
	lw $t1, -5200($fp)
	sub $t0, $t0, $t1
	sw $t0, -5204($fp)
	li $t0, 0
	sw $t0, -5208($fp)
	lw $t0, -560($fp)
	sw $t0, -5212($fp)
	lw $t0, -920($fp)
	sw $t0, -5216($fp)
	lw $t1, -5212($fp)
	lw $t2, -5216($fp)
	bne $t1, $t2, label332
	j label333
label332:
	li $t0, 1
	sw $t0, -5208($fp)
label333:
	addi $t0, $fp, -96
	sw $t0, -5220($fp)
	lw $t0, -572($fp)
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
	li $t0, 33687
	sw $t0, -5240($fp)
	lw $t0, -5236($fp)
	lw $t1, -5240($fp)
	add $t0, $t0, $t1
	sw $t0, -5244($fp)
	addi $t0, $fp, -4268
	sw $t0, -5248($fp)
	lw $t0, -908($fp)
	sw $t0, -5252($fp)
	li $t0, 4
	lw $t1, -5252($fp)
	mul $t0, $t0, $t1
	sw $t0, -5256($fp)
	lw $t0, -5256($fp)
	lw $t1, -5248($fp)
	add $t0, $t0, $t1
	sw $t0, -5260($fp)
	lw $t0, -5260($fp)
	lw $t1, 0($t0)
	sw $t1, -5264($fp)
	addi $t0, $fp, -4248
	sw $t0, -5268($fp)
	li $t0, 5
	sw $t0, -5272($fp)
	li $t0, 4
	lw $t1, -5272($fp)
	mul $t0, $t0, $t1
	sw $t0, -5276($fp)
	lw $t0, -5276($fp)
	lw $t1, -5268($fp)
	add $t0, $t0, $t1
	sw $t0, -5280($fp)
	lw $t0, -5280($fp)
	lw $t1, 0($t0)
	sw $t1, -5284($fp)
	addi $sp, $sp, -4
	lw $t0, -5208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5284($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5288($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -5288($fp)
	sub $t0, $t0, $t1
	sw $t0, -5292($fp)
	li $t0, 60074
	sw $t0, -5296($fp)
	lw $t0, -1292($fp)
	sw $t0, -5300($fp)
	lw $t0, -5296($fp)
	lw $t1, -5300($fp)
	sub $t0, $t0, $t1
	sw $t0, -5304($fp)
	addi $sp, $sp, -4
	lw $t0, -5168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5304($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5308($fp)
	addi $sp, $sp, 20
	lw $t0, 4($fp)
	sw $t0, -5312($fp)
	li $t0, 0
	lw $t1, -5312($fp)
	sub $t0, $t0, $t1
	sw $t0, -5316($fp)
	lw $t0, -5308($fp)
	lw $t1, -5316($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5320($fp)
	addi $t0, $fp, -180
	sw $t0, -5324($fp)
	lw $t0, -4304($fp)
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
	lw $t0, -5320($fp)
	lw $t1, -5340($fp)
	add $t0, $t0, $t1
	sw $t0, -5344($fp)
	li $t0, 0
	sw $t0, -5348($fp)
	addi $t0, $fp, -120
	sw $t0, -5352($fp)
	lw $t0, -4316($fp)
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
	lw $t1, -5368($fp)
	li $t2, 0
	bne $t1, $t2, label334
	j label335
label334:
	li $t0, 1
	sw $t0, -5348($fp)
label335:
	lw $t1, -5344($fp)
	lw $t2, -5348($fp)
	ble $t1, $t2, label325
	j label326
label325:
label336:
	addi $t0, $fp, -140
	sw $t0, -5372($fp)
	li $t0, 0
	sw $t0, -5376($fp)
	li $t0, 24907
	sw $t0, -5380($fp)
	lw $t1, -5380($fp)
	li $t2, 0
	bne $t1, $t2, label341
	j label340
label341:
	lw $t0, -908($fp)
	sw $t0, -5384($fp)
	lw $t1, -5384($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label340
label339:
	li $t0, 1
	sw $t0, -5376($fp)
label340:
	li $t0, 4
	lw $t1, -5376($fp)
	mul $t0, $t0, $t1
	sw $t0, -5388($fp)
	lw $t0, -5388($fp)
	lw $t1, -5372($fp)
	add $t0, $t0, $t1
	sw $t0, -5392($fp)
	lw $t0, -5392($fp)
	lw $t1, 0($t0)
	sw $t1, -5396($fp)
	lw $t0, -548($fp)
	sw $t0, -5400($fp)
	li $t0, 0
	lw $t1, -5400($fp)
	sub $t0, $t0, $t1
	sw $t0, -5404($fp)
	lw $t0, -5396($fp)
	lw $t1, -5404($fp)
	mul $t0, $t0, $t1
	sw $t0, -5408($fp)
	li $t0, 35797
	sw $t0, -5412($fp)
	lw $t0, -5408($fp)
	lw $t1, -5412($fp)
	sub $t0, $t0, $t1
	sw $t0, -5416($fp)
	lw $t1, -5416($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label338
label337:
	li $t0, 0
	sw $t0, -5420($fp)
	li $t0, 0
	sw $t0, -5424($fp)
	addi $t0, $fp, -120
	sw $t0, -5428($fp)
	lw $t0, -4304($fp)
	sw $t0, -5432($fp)
	li $t0, 4
	lw $t1, -5432($fp)
	mul $t0, $t0, $t1
	sw $t0, -5436($fp)
	lw $t0, -5436($fp)
	lw $t1, -5428($fp)
	add $t0, $t0, $t1
	sw $t0, -5440($fp)
	lw $t0, -5440($fp)
	lw $t1, 0($t0)
	sw $t1, -5444($fp)
	lw $t1, -5444($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label345
label345:
	li $t0, 1
	sw $t0, -5424($fp)
label346:
	li $t0, 0
	lw $t1, -5424($fp)
	sub $t0, $t0, $t1
	sw $t0, -5448($fp)
	li $t0, 0
	lw $t1, -5448($fp)
	sub $t0, $t0, $t1
	sw $t0, -5452($fp)
	lw $t1, -5452($fp)
	li $t2, 0
	bne $t1, $t2, label344
	j label343
label344:
	lw $t0, -4304($fp)
	sw $t0, -5456($fp)
	lw $t0, -548($fp)
	sw $t0, -5460($fp)
	lw $t0, -5456($fp)
	lw $t1, -5460($fp)
	add $t0, $t0, $t1
	sw $t0, -5464($fp)
	lw $t0, -644($fp)
	sw $t0, -5468($fp)
	lw $t0, -5464($fp)
	lw $t1, -5468($fp)
	sub $t0, $t0, $t1
	sw $t0, -5472($fp)
	jal f6
	sw $v0, -5476($fp)
	addi $sp, $sp, 4
	lw $t0, -5472($fp)
	lw $t1, -5476($fp)
	add $t0, $t0, $t1
	sw $t0, -5480($fp)
	lw $t1, -5480($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label343
label342:
	li $t0, 1
	sw $t0, -5420($fp)
label343:
	j label336
label338:
	j label327
label326:
	addi $t0, $fp, -180
	sw $t0, -5484($fp)
	li $t0, 0
	sw $t0, -5488($fp)
	li $t0, 0
	sw $t0, -5492($fp)
	li $t0, 62557
	sw $t0, -5496($fp)
	lw $t0, 8($fp)
	sw $t0, -5500($fp)
	lw $t1, -5496($fp)
	lw $t2, -5500($fp)
	ble $t1, $t2, label352
	j label353
label352:
	li $t0, 1
	sw $t0, -5492($fp)
label353:
	lw $t0, -584($fp)
	sw $t0, -5504($fp)
	li $t0, 20493
	sw $t0, -5508($fp)
	lw $t0, -5504($fp)
	lw $t1, -5508($fp)
	add $t0, $t0, $t1
	sw $t0, -5512($fp)
	lw $t1, -5492($fp)
	lw $t2, -5512($fp)
	ble $t1, $t2, label350
	j label351
label350:
	li $t0, 1
	sw $t0, -5488($fp)
label351:
	li $t0, 4
	lw $t1, -5488($fp)
	mul $t0, $t0, $t1
	sw $t0, -5516($fp)
	lw $t0, -5516($fp)
	lw $t1, -5484($fp)
	add $t0, $t0, $t1
	sw $t0, -5520($fp)
	lw $t0, -5520($fp)
	lw $t1, 0($t0)
	sw $t1, -5524($fp)
	lw $t1, -5524($fp)
	li $t2, 0
	bne $t1, $t2, label347
	j label348
label347:
	li $t0, 0
	sw $t0, -5528($fp)
	li $t0, 0
	sw $t0, -5532($fp)
	li $t0, 21927
	sw $t0, -5536($fp)
	li $t0, 0
	lw $t1, -5536($fp)
	sub $t0, $t0, $t1
	sw $t0, -5540($fp)
	lw $t0, -908($fp)
	sw $t0, -5544($fp)
	li $t0, 0
	lw $t1, -5544($fp)
	sub $t0, $t0, $t1
	sw $t0, -5548($fp)
	li $t0, 0
	lw $t1, -5548($fp)
	sub $t0, $t0, $t1
	sw $t0, -5552($fp)
	lw $t1, -5540($fp)
	lw $t2, -5552($fp)
	bge $t1, $t2, label356
	j label357
label356:
	li $t0, 1
	sw $t0, -5532($fp)
label357:
	jal f6
	sw $v0, -5556($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -180
	sw $t0, -5560($fp)
	li $t0, 0
	sw $t0, -5564($fp)
	li $t0, 4
	lw $t1, -5564($fp)
	mul $t0, $t0, $t1
	sw $t0, -5568($fp)
	lw $t0, -5568($fp)
	lw $t1, -5560($fp)
	add $t0, $t0, $t1
	sw $t0, -5572($fp)
	lw $t0, -5572($fp)
	lw $t1, 0($t0)
	sw $t1, -5576($fp)
	lw $t0, -5556($fp)
	lw $t1, -5576($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5580($fp)
	lw $t1, -5532($fp)
	lw $t2, -5580($fp)
	ble $t1, $t2, label354
	j label355
label354:
	li $t0, 1
	sw $t0, -5528($fp)
label355:
	j label349
label348:
	li $t0, 32232
	sw $t0, -5584($fp)
label349:
label327:
label314:
	li $t0, 20506
	sw $t0, -5608($fp)
	lw $t0, -5608($fp)
	sw $t0, -5612($fp)
	lw $t0, -5612($fp)
	sw $t0, -5616($fp)
	li $t0, 4031
	sw $t0, -5620($fp)
	lw $t0, -5620($fp)
	sw $t0, -5624($fp)
	lw $t0, -5624($fp)
	sw $t0, -5628($fp)
	li $t0, 46608
	sw $t0, -5632($fp)
	lw $t0, -5632($fp)
	sw $t0, -5636($fp)
	lw $t0, -5636($fp)
	sw $t0, -5640($fp)
	li $t0, 5746
	sw $t0, -5644($fp)
	addi $t0, $fp, -5604
	sw $t0, -5648($fp)
	li $t0, 0
	sw $t0, -5652($fp)
	lw $t0, -5652($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5656($fp)
	lw $t0, -5648($fp)
	lw $t1, -5656($fp)
	add $t0, $t0, $t1
	sw $t0, -5660($fp)
	lw $t0, -5644($fp)
	lw $t1, -5660($fp)
	sw $t0, 0($t1)
	lw $t0, -5660($fp)
	lw $t1, 0($t0)
	sw $t1, -5664($fp)
	li $t0, 31145
	sw $t0, -5668($fp)
	addi $t0, $fp, -5604
	sw $t0, -5672($fp)
	li $t0, 1
	sw $t0, -5676($fp)
	lw $t0, -5676($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5680($fp)
	lw $t0, -5672($fp)
	lw $t1, -5680($fp)
	add $t0, $t0, $t1
	sw $t0, -5684($fp)
	lw $t0, -5668($fp)
	lw $t1, -5684($fp)
	sw $t0, 0($t1)
	lw $t0, -5684($fp)
	lw $t1, 0($t0)
	sw $t1, -5688($fp)
	li $t0, 37841
	sw $t0, -5692($fp)
	addi $t0, $fp, -5604
	sw $t0, -5696($fp)
	li $t0, 2
	sw $t0, -5700($fp)
	lw $t0, -5700($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5704($fp)
	lw $t0, -5696($fp)
	lw $t1, -5704($fp)
	add $t0, $t0, $t1
	sw $t0, -5708($fp)
	lw $t0, -5692($fp)
	lw $t1, -5708($fp)
	sw $t0, 0($t1)
	lw $t0, -5708($fp)
	lw $t1, 0($t0)
	sw $t1, -5712($fp)
	li $t0, 27280
	sw $t0, -5716($fp)
	addi $t0, $fp, -5604
	sw $t0, -5720($fp)
	li $t0, 3
	sw $t0, -5724($fp)
	lw $t0, -5724($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5728($fp)
	lw $t0, -5720($fp)
	lw $t1, -5728($fp)
	add $t0, $t0, $t1
	sw $t0, -5732($fp)
	lw $t0, -5716($fp)
	lw $t1, -5732($fp)
	sw $t0, 0($t1)
	lw $t0, -5732($fp)
	lw $t1, 0($t0)
	sw $t1, -5736($fp)
	li $t0, 25948
	sw $t0, -5740($fp)
	addi $t0, $fp, -5604
	sw $t0, -5744($fp)
	li $t0, 4
	sw $t0, -5748($fp)
	lw $t0, -5748($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5752($fp)
	lw $t0, -5744($fp)
	lw $t1, -5752($fp)
	add $t0, $t0, $t1
	sw $t0, -5756($fp)
	lw $t0, -5740($fp)
	lw $t1, -5756($fp)
	sw $t0, 0($t1)
	lw $t0, -5756($fp)
	lw $t1, 0($t0)
	sw $t1, -5760($fp)
	addi $t0, $fp, -5604
	sw $t0, -5764($fp)
	lw $t0, -5624($fp)
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
	li $t0, 0
	sw $t0, -5784($fp)
	li $t0, 0
	sw $t0, -5788($fp)
	li $t0, 58552
	sw $t0, -5792($fp)
	li $t0, 63992
	sw $t0, -5796($fp)
	lw $t1, -5792($fp)
	lw $t2, -5796($fp)
	blt $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -5788($fp)
label361:
	lw $t0, -956($fp)
	sw $t0, -5800($fp)
	lw $t1, -5788($fp)
	lw $t2, -5800($fp)
	bge $t1, $t2, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -5784($fp)
label359:
	li $t0, 0
	sw $t0, -5804($fp)
	addi $t0, $fp, -216
	sw $t0, -5808($fp)
	lw $t0, 12($fp)
	sw $t0, -5812($fp)
	li $t0, 4
	lw $t1, -5812($fp)
	mul $t0, $t0, $t1
	sw $t0, -5816($fp)
	lw $t0, -5816($fp)
	lw $t1, -5808($fp)
	add $t0, $t0, $t1
	sw $t0, -5820($fp)
	lw $t0, -5820($fp)
	lw $t1, 0($t0)
	sw $t1, -5824($fp)
	lw $t1, -5824($fp)
	li $t2, 0
	bne $t1, $t2, label364
	j label363
label364:
	li $t0, 61070
	sw $t0, -5828($fp)
	lw $t1, -5828($fp)
	li $t2, 0
	bne $t1, $t2, label362
	j label363
label362:
	li $t0, 1
	sw $t0, -5804($fp)
label363:
	lw $t0, -5612($fp)
	sw $t0, -5832($fp)
	li $t0, 6933
	sw $t0, -5836($fp)
	lw $t0, -5832($fp)
	lw $t1, -5836($fp)
	mul $t0, $t0, $t1
	sw $t0, -5840($fp)
	li $t0, 0
	lw $t1, -5840($fp)
	sub $t0, $t0, $t1
	sw $t0, -5844($fp)
	addi $sp, $sp, -4
	lw $t0, -5780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5844($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5848($fp)
	addi $sp, $sp, 20
	lw $t0, -5636($fp)
	sw $t0, -5852($fp)
	li $t0, 0
	lw $t1, -5852($fp)
	sub $t0, $t0, $t1
	sw $t0, -5856($fp)
	li $t0, 0
	sw $t0, -5860($fp)
	li $t0, 46300
	sw $t0, -5864($fp)
	lw $t1, -5864($fp)
	li $t2, 0
	bne $t1, $t2, label366
	j label365
label365:
	li $t0, 1
	sw $t0, -5860($fp)
label366:
	lw $t0, -932($fp)
	sw $t0, -5868($fp)
	lw $t0, -5860($fp)
	lw $t1, -5868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5872($fp)
	addi $t0, $fp, -140
	sw $t0, -5876($fp)
	li $t0, 3
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
	lw $t0, -5872($fp)
	lw $t1, -5892($fp)
	mul $t0, $t0, $t1
	sw $t0, -5896($fp)
	li $t0, 0
	sw $t0, -5900($fp)
	jal f6
	sw $v0, -5904($fp)
	addi $sp, $sp, 4
	lw $t1, -5904($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label367
label367:
	li $t0, 1
	sw $t0, -5900($fp)
label368:
	lw $t0, -5896($fp)
	lw $t1, -5900($fp)
	mul $t0, $t0, $t1
	sw $t0, -5908($fp)
	lw $ra, -4($fp)
	lw $v0, -5908($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 5411
	sw $t0, -5912($fp)
	li $t0, 0
	sw $t0, -5916($fp)
	lw $t0, -944($fp)
	sw $t0, -5920($fp)
	lw $t1, -5920($fp)
	li $t2, 0
	bne $t1, $t2, label369
	j label370
label369:
	li $t0, 1
	sw $t0, -5916($fp)
label370:
	li $t0, 40838
	sw $t0, -5924($fp)
	lw $t0, -5924($fp)
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -5928($fp)
	lw $t0, -1316($fp)
	sw $t0, -5932($fp)
	addi $sp, $sp, -4
	lw $t0, -5912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5932($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5936($fp)
	addi $sp, $sp, 20
	lw $ra, -4($fp)
	lw $v0, -5936($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -32
	sw $t0, -5940($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -5960($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -5980($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -6000($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -6020($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -6040($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -6060($fp)
	li $t0, 6
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
	addi $t0, $fp, -56
	sw $t0, -6080($fp)
	li $t0, 0
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
	addi $t0, $fp, -56
	sw $t0, -6100($fp)
	li $t0, 1
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
	addi $t0, $fp, -56
	sw $t0, -6120($fp)
	li $t0, 2
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
	addi $t0, $fp, -56
	sw $t0, -6140($fp)
	li $t0, 3
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
	addi $t0, $fp, -56
	sw $t0, -6160($fp)
	li $t0, 4
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
	addi $t0, $fp, -56
	sw $t0, -6180($fp)
	li $t0, 5
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
	lw $t0, -536($fp)
	sw $t0, -6200($fp)
	lw $t0, -6200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -548($fp)
	sw $t0, -6204($fp)
	lw $t0, -6204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -6208($fp)
	lw $t0, -6208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -6212($fp)
	lw $t0, -6212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -584($fp)
	sw $t0, -6216($fp)
	lw $t0, -6216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -596($fp)
	sw $t0, -6220($fp)
	lw $t0, -6220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -608($fp)
	sw $t0, -6224($fp)
	lw $t0, -6224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -620($fp)
	sw $t0, -6228($fp)
	lw $t0, -6228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -632($fp)
	sw $t0, -6232($fp)
	lw $t0, -6232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -644($fp)
	sw $t0, -6236($fp)
	lw $t0, -6236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -656($fp)
	sw $t0, -6240($fp)
	lw $t0, -6240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -6244($fp)
	li $t0, 0
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
	addi $t0, $fp, -96
	sw $t0, -6264($fp)
	li $t0, 1
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
	addi $t0, $fp, -96
	sw $t0, -6284($fp)
	li $t0, 2
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
	addi $t0, $fp, -96
	sw $t0, -6304($fp)
	li $t0, 3
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
	addi $t0, $fp, -96
	sw $t0, -6324($fp)
	li $t0, 4
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
	addi $t0, $fp, -96
	sw $t0, -6344($fp)
	li $t0, 5
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
	addi $t0, $fp, -96
	sw $t0, -6364($fp)
	li $t0, 6
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
	addi $t0, $fp, -96
	sw $t0, -6384($fp)
	li $t0, 7
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
	addi $t0, $fp, -96
	sw $t0, -6404($fp)
	li $t0, 8
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
	addi $t0, $fp, -96
	sw $t0, -6424($fp)
	li $t0, 9
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
	lw $t0, -908($fp)
	sw $t0, -6444($fp)
	lw $t0, -6444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -920($fp)
	sw $t0, -6448($fp)
	lw $t0, -6448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -932($fp)
	sw $t0, -6452($fp)
	lw $t0, -6452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -944($fp)
	sw $t0, -6456($fp)
	lw $t0, -6456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -956($fp)
	sw $t0, -6460($fp)
	lw $t0, -6460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -968($fp)
	sw $t0, -6464($fp)
	lw $t0, -6464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -980($fp)
	sw $t0, -6468($fp)
	lw $t0, -6468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -992($fp)
	sw $t0, -6472($fp)
	lw $t0, -6472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -6476($fp)
	li $t0, 0
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
	addi $t0, $fp, -120
	sw $t0, -6496($fp)
	li $t0, 1
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
	addi $t0, $fp, -120
	sw $t0, -6516($fp)
	li $t0, 2
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
	lw $t0, -6532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -6536($fp)
	li $t0, 3
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
	addi $t0, $fp, -120
	sw $t0, -6556($fp)
	li $t0, 4
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
	addi $t0, $fp, -120
	sw $t0, -6576($fp)
	li $t0, 5
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
	addi $t0, $fp, -140
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
	addi $t0, $fp, -140
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
	addi $t0, $fp, -140
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
	addi $t0, $fp, -140
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
	addi $t0, $fp, -140
	sw $t0, -6676($fp)
	li $t0, 4
	sw $t0, -6680($fp)
	li $t0, 4
	lw $t1, -6680($fp)
	mul $t0, $t0, $t1
	sw $t0, -6684($fp)
	lw $t0, -6684($fp)
	lw $t1, -6676($fp)
	add $t0, $t0, $t1
	sw $t0, -6688($fp)
	lw $t0, -6688($fp)
	lw $t1, 0($t0)
	sw $t1, -6692($fp)
	lw $t0, -6692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1268($fp)
	sw $t0, -6696($fp)
	lw $t0, -6696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1280($fp)
	sw $t0, -6700($fp)
	lw $t0, -6700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1292($fp)
	sw $t0, -6704($fp)
	lw $t0, -6704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1304($fp)
	sw $t0, -6708($fp)
	lw $t0, -6708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1316($fp)
	sw $t0, -6712($fp)
	lw $t0, -6712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1328($fp)
	sw $t0, -6716($fp)
	lw $t0, -6716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1340($fp)
	sw $t0, -6720($fp)
	lw $t0, -6720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -6724($fp)
	li $t0, 0
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
	addi $t0, $fp, -176
	sw $t0, -6744($fp)
	li $t0, 1
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
	addi $t0, $fp, -176
	sw $t0, -6764($fp)
	li $t0, 2
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
	addi $t0, $fp, -176
	sw $t0, -6784($fp)
	li $t0, 3
	sw $t0, -6788($fp)
	li $t0, 4
	lw $t1, -6788($fp)
	mul $t0, $t0, $t1
	sw $t0, -6792($fp)
	lw $t0, -6792($fp)
	lw $t1, -6784($fp)
	add $t0, $t0, $t1
	sw $t0, -6796($fp)
	lw $t0, -6796($fp)
	lw $t1, 0($t0)
	sw $t1, -6800($fp)
	lw $t0, -6800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -6804($fp)
	li $t0, 4
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
	lw $t0, -6820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -6824($fp)
	li $t0, 5
	sw $t0, -6828($fp)
	li $t0, 4
	lw $t1, -6828($fp)
	mul $t0, $t0, $t1
	sw $t0, -6832($fp)
	lw $t0, -6832($fp)
	lw $t1, -6824($fp)
	add $t0, $t0, $t1
	sw $t0, -6836($fp)
	lw $t0, -6836($fp)
	lw $t1, 0($t0)
	sw $t1, -6840($fp)
	lw $t0, -6840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -6844($fp)
	li $t0, 6
	sw $t0, -6848($fp)
	li $t0, 4
	lw $t1, -6848($fp)
	mul $t0, $t0, $t1
	sw $t0, -6852($fp)
	lw $t0, -6852($fp)
	lw $t1, -6844($fp)
	add $t0, $t0, $t1
	sw $t0, -6856($fp)
	lw $t0, -6856($fp)
	lw $t1, 0($t0)
	sw $t1, -6860($fp)
	lw $t0, -6860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -6864($fp)
	li $t0, 7
	sw $t0, -6868($fp)
	li $t0, 4
	lw $t1, -6868($fp)
	mul $t0, $t0, $t1
	sw $t0, -6872($fp)
	lw $t0, -6872($fp)
	lw $t1, -6864($fp)
	add $t0, $t0, $t1
	sw $t0, -6876($fp)
	lw $t0, -6876($fp)
	lw $t1, 0($t0)
	sw $t1, -6880($fp)
	lw $t0, -6880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -6884($fp)
	li $t0, 8
	sw $t0, -6888($fp)
	li $t0, 4
	lw $t1, -6888($fp)
	mul $t0, $t0, $t1
	sw $t0, -6892($fp)
	lw $t0, -6892($fp)
	lw $t1, -6884($fp)
	add $t0, $t0, $t1
	sw $t0, -6896($fp)
	lw $t0, -6896($fp)
	lw $t1, 0($t0)
	sw $t1, -6900($fp)
	lw $t0, -6900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1568($fp)
	sw $t0, -6904($fp)
	lw $t0, -6904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1580($fp)
	sw $t0, -6908($fp)
	lw $t0, -6908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1592($fp)
	sw $t0, -6912($fp)
	lw $t0, -6912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -6916($fp)
	li $t0, 0
	sw $t0, -6920($fp)
	li $t0, 4
	lw $t1, -6920($fp)
	mul $t0, $t0, $t1
	sw $t0, -6924($fp)
	lw $t0, -6924($fp)
	lw $t1, -6916($fp)
	add $t0, $t0, $t1
	sw $t0, -6928($fp)
	lw $t0, -6928($fp)
	lw $t1, 0($t0)
	sw $t1, -6932($fp)
	lw $t0, -6932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -6936($fp)
	li $t0, 0
	sw $t0, -6940($fp)
	li $t0, 4
	lw $t1, -6940($fp)
	mul $t0, $t0, $t1
	sw $t0, -6944($fp)
	lw $t0, -6944($fp)
	lw $t1, -6936($fp)
	add $t0, $t0, $t1
	sw $t0, -6948($fp)
	lw $t0, -6948($fp)
	lw $t1, 0($t0)
	sw $t1, -6952($fp)
	lw $t0, -6952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -6956($fp)
	li $t0, 1
	sw $t0, -6960($fp)
	li $t0, 4
	lw $t1, -6960($fp)
	mul $t0, $t0, $t1
	sw $t0, -6964($fp)
	lw $t0, -6964($fp)
	lw $t1, -6956($fp)
	add $t0, $t0, $t1
	sw $t0, -6968($fp)
	lw $t0, -6968($fp)
	lw $t1, 0($t0)
	sw $t1, -6972($fp)
	lw $t0, -6972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -6976($fp)
	li $t0, 2
	sw $t0, -6980($fp)
	li $t0, 4
	lw $t1, -6980($fp)
	mul $t0, $t0, $t1
	sw $t0, -6984($fp)
	lw $t0, -6984($fp)
	lw $t1, -6976($fp)
	add $t0, $t0, $t1
	sw $t0, -6988($fp)
	lw $t0, -6988($fp)
	lw $t1, 0($t0)
	sw $t1, -6992($fp)
	lw $t0, -6992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -6996($fp)
	li $t0, 3
	sw $t0, -7000($fp)
	li $t0, 4
	lw $t1, -7000($fp)
	mul $t0, $t0, $t1
	sw $t0, -7004($fp)
	lw $t0, -7004($fp)
	lw $t1, -6996($fp)
	add $t0, $t0, $t1
	sw $t0, -7008($fp)
	lw $t0, -7008($fp)
	lw $t1, 0($t0)
	sw $t1, -7012($fp)
	lw $t0, -7012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -7016($fp)
	li $t0, 4
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
	addi $t0, $fp, -216
	sw $t0, -7036($fp)
	li $t0, 5
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
	addi $t0, $fp, -216
	sw $t0, -7056($fp)
	li $t0, 6
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
	addi $t0, $fp, -216
	sw $t0, -7076($fp)
	li $t0, 7
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
	addi $t0, $fp, -216
	sw $t0, -7096($fp)
	li $t0, 8
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
	addi $t0, $fp, -180
	sw $t0, -7116($fp)
	lw $t0, -1340($fp)
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
	addi $t0, $fp, -32
	sw $t0, -7136($fp)
	jal f6
	sw $v0, -7140($fp)
	addi $sp, $sp, 4
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
	lw $t0, -7132($fp)
	lw $t1, -7152($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7156($fp)
	li $t0, 0
	lw $t1, -7156($fp)
	sub $t0, $t0, $t1
	sw $t0, -7160($fp)
	li $t0, 0
	lw $t1, -7160($fp)
	sub $t0, $t0, $t1
	sw $t0, -7164($fp)
	lw $ra, -4($fp)
	lw $v0, -7164($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -5720
	li $t0, 39402
	sw $t0, -88($fp)
	addi $t0, $fp, -24
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
	li $t0, 8989
	sw $t0, -112($fp)
	addi $t0, $fp, -24
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
	li $t0, 61306
	sw $t0, -136($fp)
	addi $t0, $fp, -24
	sw $t0, -140($fp)
	li $t0, 2
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
	li $t0, 20345
	sw $t0, -160($fp)
	addi $t0, $fp, -24
	sw $t0, -164($fp)
	li $t0, 3
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
	li $t0, 62964
	sw $t0, -184($fp)
	addi $t0, $fp, -24
	sw $t0, -188($fp)
	li $t0, 4
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
	li $t0, 42950
	sw $t0, -208($fp)
	addi $t0, $fp, -52
	sw $t0, -212($fp)
	li $t0, 0
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
	li $t0, 45252
	sw $t0, -232($fp)
	addi $t0, $fp, -52
	sw $t0, -236($fp)
	li $t0, 1
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
	li $t0, 33226
	sw $t0, -256($fp)
	addi $t0, $fp, -52
	sw $t0, -260($fp)
	li $t0, 2
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
	li $t0, 39971
	sw $t0, -280($fp)
	addi $t0, $fp, -52
	sw $t0, -284($fp)
	li $t0, 3
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
	li $t0, 209
	sw $t0, -304($fp)
	addi $t0, $fp, -52
	sw $t0, -308($fp)
	li $t0, 4
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
	li $t0, 55153
	sw $t0, -328($fp)
	addi $t0, $fp, -52
	sw $t0, -332($fp)
	li $t0, 5
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
	li $t0, 17158
	sw $t0, -352($fp)
	addi $t0, $fp, -52
	sw $t0, -356($fp)
	li $t0, 6
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
	li $t0, 27712
	sw $t0, -376($fp)
	addi $t0, $fp, -84
	sw $t0, -380($fp)
	li $t0, 0
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
	li $t0, 21850
	sw $t0, -400($fp)
	addi $t0, $fp, -84
	sw $t0, -404($fp)
	li $t0, 1
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
	li $t0, 37664
	sw $t0, -424($fp)
	addi $t0, $fp, -84
	sw $t0, -428($fp)
	li $t0, 2
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
	li $t0, 31743
	sw $t0, -448($fp)
	addi $t0, $fp, -84
	sw $t0, -452($fp)
	li $t0, 3
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
	li $t0, 2922
	sw $t0, -472($fp)
	addi $t0, $fp, -84
	sw $t0, -476($fp)
	li $t0, 4
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
	li $t0, 43410
	sw $t0, -496($fp)
	addi $t0, $fp, -84
	sw $t0, -500($fp)
	li $t0, 5
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
	li $t0, 62888
	sw $t0, -520($fp)
	addi $t0, $fp, -84
	sw $t0, -524($fp)
	li $t0, 6
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
	li $t0, 40763
	sw $t0, -544($fp)
	addi $t0, $fp, -84
	sw $t0, -548($fp)
	li $t0, 7
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
	li $t0, 5154
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	li $t0, 0
	sw $t0, -580($fp)
	lw $t0, 12($fp)
	sw $t0, -584($fp)
	li $t0, 23300
	sw $t0, -588($fp)
	lw $t1, -584($fp)
	lw $t2, -588($fp)
	beq $t1, $t2, label371
	j label372
label371:
	li $t0, 1
	sw $t0, -580($fp)
label372:
	li $t0, 47696
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	li $t0, 0
	sw $t0, -604($fp)
	li $t0, 688
	sw $t0, -608($fp)
	li $t0, 0
	sw $t0, -612($fp)
	li $t0, 16317
	sw $t0, -616($fp)
	lw $t1, -616($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label375
label375:
	li $t0, 1
	sw $t0, -612($fp)
label376:
	lw $t0, -608($fp)
	lw $t1, -612($fp)
	mul $t0, $t0, $t1
	sw $t0, -620($fp)
	li $t0, 46153
	sw $t0, -624($fp)
	li $t0, 0
	lw $t1, -624($fp)
	sub $t0, $t0, $t1
	sw $t0, -628($fp)
	lw $t1, -620($fp)
	lw $t2, -628($fp)
	bgt $t1, $t2, label373
	j label374
label373:
	li $t0, 1
	sw $t0, -604($fp)
label374:
	lw $t0, -596($fp)
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -636($fp)
	li $t0, 0
	sw $t0, -640($fp)
	li $t0, 46988
	sw $t0, -644($fp)
	lw $t0, -596($fp)
	sw $t0, -648($fp)
	lw $t0, -644($fp)
	lw $t1, -648($fp)
	mul $t0, $t0, $t1
	sw $t0, -652($fp)
	li $t0, 24385
	sw $t0, -656($fp)
	lw $t0, -652($fp)
	lw $t1, -656($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -660($fp)
	lw $t1, -660($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label378
label379:
	li $t0, 26487
	sw $t0, -664($fp)
	lw $t0, -572($fp)
	sw $t0, -668($fp)
	lw $t0, -664($fp)
	lw $t1, -668($fp)
	add $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $t1, -672($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label378
label377:
	li $t0, 1
	sw $t0, -640($fp)
label378:
	li $t0, 4
	lw $t1, -640($fp)
	mul $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	lw $t1, -636($fp)
	add $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	lw $t1, 0($t0)
	sw $t1, -684($fp)
	lw $ra, -4($fp)
	lw $v0, -684($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 22291
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	li $t0, 29796
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	sw $t0, -804($fp)
	li $t0, 353
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	li $t0, 31280
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	li $t0, 25566
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	li $t0, 20698
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	li $t0, 28709
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	li $t0, 2981
	sw $t0, -868($fp)
	addi $t0, $fp, -712
	sw $t0, -872($fp)
	li $t0, 0
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -880($fp)
	lw $t0, -872($fp)
	lw $t1, -880($fp)
	add $t0, $t0, $t1
	sw $t0, -884($fp)
	lw $t0, -868($fp)
	lw $t1, -884($fp)
	sw $t0, 0($t1)
	lw $t0, -884($fp)
	lw $t1, 0($t0)
	sw $t1, -888($fp)
	li $t0, 414
	sw $t0, -892($fp)
	addi $t0, $fp, -712
	sw $t0, -896($fp)
	li $t0, 1
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -904($fp)
	lw $t0, -896($fp)
	lw $t1, -904($fp)
	add $t0, $t0, $t1
	sw $t0, -908($fp)
	lw $t0, -892($fp)
	lw $t1, -908($fp)
	sw $t0, 0($t1)
	lw $t0, -908($fp)
	lw $t1, 0($t0)
	sw $t1, -912($fp)
	li $t0, 61935
	sw $t0, -916($fp)
	addi $t0, $fp, -712
	sw $t0, -920($fp)
	li $t0, 2
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
	li $t0, 42952
	sw $t0, -940($fp)
	addi $t0, $fp, -712
	sw $t0, -944($fp)
	li $t0, 3
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
	li $t0, 623
	sw $t0, -964($fp)
	addi $t0, $fp, -712
	sw $t0, -968($fp)
	li $t0, 4
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
	li $t0, 51552
	sw $t0, -988($fp)
	addi $t0, $fp, -712
	sw $t0, -992($fp)
	li $t0, 5
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
	li $t0, 60110
	sw $t0, -1012($fp)
	addi $t0, $fp, -712
	sw $t0, -1016($fp)
	li $t0, 6
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
	li $t0, 28335
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	sw $t0, -1044($fp)
	li $t0, 7866
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1056($fp)
	li $t0, 32239
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -1068($fp)
	li $t0, 60078
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -1080($fp)
	li $t0, 10788
	sw $t0, -1084($fp)
	addi $t0, $fp, -736
	sw $t0, -1088($fp)
	li $t0, 0
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
	li $t0, 10113
	sw $t0, -1108($fp)
	addi $t0, $fp, -736
	sw $t0, -1112($fp)
	li $t0, 1
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
	li $t0, 57431
	sw $t0, -1132($fp)
	addi $t0, $fp, -736
	sw $t0, -1136($fp)
	li $t0, 2
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1144($fp)
	lw $t0, -1136($fp)
	lw $t1, -1144($fp)
	add $t0, $t0, $t1
	sw $t0, -1148($fp)
	lw $t0, -1132($fp)
	lw $t1, -1148($fp)
	sw $t0, 0($t1)
	lw $t0, -1148($fp)
	lw $t1, 0($t0)
	sw $t1, -1152($fp)
	li $t0, 51551
	sw $t0, -1156($fp)
	addi $t0, $fp, -736
	sw $t0, -1160($fp)
	li $t0, 3
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1168($fp)
	lw $t0, -1160($fp)
	lw $t1, -1168($fp)
	add $t0, $t0, $t1
	sw $t0, -1172($fp)
	lw $t0, -1156($fp)
	lw $t1, -1172($fp)
	sw $t0, 0($t1)
	lw $t0, -1172($fp)
	lw $t1, 0($t0)
	sw $t1, -1176($fp)
	li $t0, 15268
	sw $t0, -1180($fp)
	addi $t0, $fp, -736
	sw $t0, -1184($fp)
	li $t0, 4
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1192($fp)
	lw $t0, -1184($fp)
	lw $t1, -1192($fp)
	add $t0, $t0, $t1
	sw $t0, -1196($fp)
	lw $t0, -1180($fp)
	lw $t1, -1196($fp)
	sw $t0, 0($t1)
	lw $t0, -1196($fp)
	lw $t1, 0($t0)
	sw $t1, -1200($fp)
	li $t0, 15195
	sw $t0, -1204($fp)
	addi $t0, $fp, -736
	sw $t0, -1208($fp)
	li $t0, 5
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1216($fp)
	lw $t0, -1208($fp)
	lw $t1, -1216($fp)
	add $t0, $t0, $t1
	sw $t0, -1220($fp)
	lw $t0, -1204($fp)
	lw $t1, -1220($fp)
	sw $t0, 0($t1)
	lw $t0, -1220($fp)
	lw $t1, 0($t0)
	sw $t1, -1224($fp)
	li $t0, 33712
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	sw $t0, -1236($fp)
	li $t0, 15956
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -1248($fp)
	li $t0, 31512
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -1260($fp)
	li $t0, 14329
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	li $t0, 62945
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	li $t0, 55897
	sw $t0, -1288($fp)
	addi $t0, $fp, -752
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
	li $t0, 40816
	sw $t0, -1312($fp)
	addi $t0, $fp, -752
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
	li $t0, 19700
	sw $t0, -1336($fp)
	addi $t0, $fp, -752
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
	li $t0, 20158
	sw $t0, -1360($fp)
	addi $t0, $fp, -752
	sw $t0, -1364($fp)
	li $t0, 3
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
	li $t0, 41170
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -1392($fp)
	li $t0, 50980
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -1404($fp)
	li $t0, 45724
	sw $t0, -1408($fp)
	addi $t0, $fp, -780
	sw $t0, -1412($fp)
	li $t0, 0
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
	li $t0, 61868
	sw $t0, -1432($fp)
	addi $t0, $fp, -780
	sw $t0, -1436($fp)
	li $t0, 1
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
	li $t0, 14153
	sw $t0, -1456($fp)
	addi $t0, $fp, -780
	sw $t0, -1460($fp)
	li $t0, 2
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1468($fp)
	lw $t0, -1460($fp)
	lw $t1, -1468($fp)
	add $t0, $t0, $t1
	sw $t0, -1472($fp)
	lw $t0, -1456($fp)
	lw $t1, -1472($fp)
	sw $t0, 0($t1)
	lw $t0, -1472($fp)
	lw $t1, 0($t0)
	sw $t1, -1476($fp)
	li $t0, 48705
	sw $t0, -1480($fp)
	addi $t0, $fp, -780
	sw $t0, -1484($fp)
	li $t0, 3
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1492($fp)
	lw $t0, -1484($fp)
	lw $t1, -1492($fp)
	add $t0, $t0, $t1
	sw $t0, -1496($fp)
	lw $t0, -1480($fp)
	lw $t1, -1496($fp)
	sw $t0, 0($t1)
	lw $t0, -1496($fp)
	lw $t1, 0($t0)
	sw $t1, -1500($fp)
	li $t0, 62283
	sw $t0, -1504($fp)
	addi $t0, $fp, -780
	sw $t0, -1508($fp)
	li $t0, 4
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t0, -1508($fp)
	lw $t1, -1516($fp)
	add $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $t0, -1504($fp)
	lw $t1, -1520($fp)
	sw $t0, 0($t1)
	lw $t0, -1520($fp)
	lw $t1, 0($t0)
	sw $t1, -1524($fp)
	li $t0, 10552
	sw $t0, -1528($fp)
	addi $t0, $fp, -780
	sw $t0, -1532($fp)
	li $t0, 5
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t0, -1532($fp)
	lw $t1, -1540($fp)
	add $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $t0, -1528($fp)
	lw $t1, -1544($fp)
	sw $t0, 0($t1)
	lw $t0, -1544($fp)
	lw $t1, 0($t0)
	sw $t1, -1548($fp)
	li $t0, 26122
	sw $t0, -1552($fp)
	addi $t0, $fp, -780
	sw $t0, -1556($fp)
	li $t0, 6
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1564($fp)
	lw $t0, -1556($fp)
	lw $t1, -1564($fp)
	add $t0, $t0, $t1
	sw $t0, -1568($fp)
	lw $t0, -1552($fp)
	lw $t1, -1568($fp)
	sw $t0, 0($t1)
	lw $t0, -1568($fp)
	lw $t1, 0($t0)
	sw $t1, -1572($fp)
	li $t0, 62906
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	sw $t0, -1584($fp)
	li $t0, 62105
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	sw $t0, -1596($fp)
	li $t0, 20696
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	sw $t0, -1608($fp)
label380:
	lw $t0, -1604($fp)
	sw $t0, -1612($fp)
	lw $t0, -1280($fp)
	sw $t0, -1616($fp)
	li $t0, 25706
	sw $t0, -1620($fp)
	lw $t0, -1616($fp)
	lw $t1, -1620($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1624($fp)
	addi $t0, $fp, -84
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
	lw $t0, -1624($fp)
	lw $t1, -1644($fp)
	add $t0, $t0, $t1
	sw $t0, -1648($fp)
	lw $t1, -1612($fp)
	lw $t2, -1648($fp)
	beq $t1, $t2, label381
	j label382
label381:
	li $t0, 20248
	sw $t0, -1652($fp)
	lw $t0, -1040($fp)
	sw $t0, -1656($fp)
	li $t0, 45846
	sw $t0, -1660($fp)
	lw $t0, -1656($fp)
	lw $t1, -1660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1664($fp)
	li $t0, 0
	sw $t0, -1668($fp)
	li $t0, 0
	sw $t0, -1672($fp)
	li $t0, 24561
	sw $t0, -1676($fp)
	lw $t0, -1280($fp)
	sw $t0, -1680($fp)
	lw $t1, -1676($fp)
	lw $t2, -1680($fp)
	bgt $t1, $t2, label388
	j label389
label388:
	li $t0, 1
	sw $t0, -1672($fp)
label389:
	lw $t0, -836($fp)
	sw $t0, -1684($fp)
	lw $t1, -1672($fp)
	lw $t2, -1684($fp)
	blt $t1, $t2, label386
	j label387
label386:
	li $t0, 1
	sw $t0, -1668($fp)
label387:
	jal f6
	sw $v0, -1688($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -1692($fp)
	li $t0, 49280
	sw $t0, -1696($fp)
	li $t0, 26146
	sw $t0, -1700($fp)
	lw $t1, -1696($fp)
	lw $t2, -1700($fp)
	ble $t1, $t2, label392
	j label391
label392:
	li $t0, 49213
	sw $t0, -1704($fp)
	lw $t1, -1704($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label391
label390:
	li $t0, 1
	sw $t0, -1692($fp)
label391:
	lw $t0, -1040($fp)
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -1712($fp)
	addi $sp, $sp, -4
	lw $t0, -1668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1712($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1716($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -84
	sw $t0, -1720($fp)
	lw $t0, -1076($fp)
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
	li $t0, 58851
	sw $t0, -1744($fp)
	lw $t0, -1268($fp)
	sw $t0, -1748($fp)
	lw $t0, -1744($fp)
	lw $t1, -1748($fp)
	add $t0, $t0, $t1
	sw $t0, -1752($fp)
	lw $t0, -1040($fp)
	sw $t0, -1756($fp)
	lw $t1, -1752($fp)
	lw $t2, -1756($fp)
	bgt $t1, $t2, label393
	j label394
label393:
	li $t0, 1
	sw $t0, -1740($fp)
label394:
	li $t0, 0
	sw $t0, -1760($fp)
	li $t0, 0
	sw $t0, -1764($fp)
	li $t0, 34951
	sw $t0, -1768($fp)
	lw $t0, 8($fp)
	sw $t0, -1772($fp)
	lw $t1, -1768($fp)
	lw $t2, -1772($fp)
	beq $t1, $t2, label397
	j label398
label397:
	li $t0, 1
	sw $t0, -1764($fp)
label398:
	li $t0, 28737
	sw $t0, -1776($fp)
	lw $t1, -1764($fp)
	lw $t2, -1776($fp)
	beq $t1, $t2, label395
	j label396
label395:
	li $t0, 1
	sw $t0, -1760($fp)
label396:
	li $t0, 12781
	sw $t0, -1780($fp)
	li $t0, 27339
	sw $t0, -1784($fp)
	lw $t0, -1780($fp)
	lw $t1, -1784($fp)
	mul $t0, $t0, $t1
	sw $t0, -1788($fp)
	li $t0, 0
	sw $t0, -1792($fp)
	li $t0, 12143
	sw $t0, -1796($fp)
	lw $t1, -1796($fp)
	li $t2, 0
	bne $t1, $t2, label401
	j label400
label401:
	li $t0, 1239
	sw $t0, -1800($fp)
	lw $t1, -1800($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label400
label399:
	li $t0, 1
	sw $t0, -1792($fp)
label400:
	addi $sp, $sp, -4
	lw $t0, -1740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1792($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1804($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -1804($fp)
	sub $t0, $t0, $t1
	sw $t0, -1808($fp)
	jal f6
	sw $v0, -1812($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -1736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1812($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1816($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -1820($fp)
	li $t0, 15224
	sw $t0, -1824($fp)
	lw $t0, -788($fp)
	sw $t0, -1828($fp)
	lw $t1, -1824($fp)
	lw $t2, -1828($fp)
	ble $t1, $t2, label404
	j label403
label404:
	li $t0, 63049
	sw $t0, -1832($fp)
	lw $t1, -1832($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -1820($fp)
label403:
	addi $sp, $sp, -4
	lw $t0, -1664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1820($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1836($fp)
	addi $sp, $sp, 20
	lw $t0, -1652($fp)
	lw $t1, -1836($fp)
	mul $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t1, -1840($fp)
	li $t2, 0
	bne $t1, $t2, label383
	j label384
label383:
	li $t0, 0
	sw $t0, -1844($fp)
	li $t0, 0
	sw $t0, -1848($fp)
	li $t0, 3835
	sw $t0, -1852($fp)
	lw $t1, -1852($fp)
	li $t2, 0
	bne $t1, $t2, label408
	j label407
label407:
	li $t0, 1
	sw $t0, -1848($fp)
label408:
	li $t0, 195
	sw $t0, -1856($fp)
	li $t0, 0
	lw $t1, -1856($fp)
	sub $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $t0, -1848($fp)
	lw $t1, -1860($fp)
	add $t0, $t0, $t1
	sw $t0, -1864($fp)
	li $t0, 31291
	sw $t0, -1868($fp)
	lw $t1, -1864($fp)
	lw $t2, -1868($fp)
	beq $t1, $t2, label405
	j label406
label405:
	li $t0, 1
	sw $t0, -1844($fp)
label406:
	lw $ra, -4($fp)
	lw $v0, -1844($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	jal f6
	sw $v0, -1872($fp)
	addi $sp, $sp, 4
	li $t0, 49559
	sw $t0, -1876($fp)
	addi $t0, $fp, -712
	sw $t0, -1880($fp)
	li $t0, 1
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
	mul $t0, $t0, $t1
	sw $t0, -1900($fp)
	lw $t0, -1872($fp)
	lw $t1, -1900($fp)
	sub $t0, $t0, $t1
	sw $t0, -1904($fp)
	lw $t1, -1904($fp)
	li $t2, 0
	bne $t1, $t2, label409
	j label410
label409:
	li $t0, 32729
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	sw $t0, -1916($fp)
	li $t0, 58810
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	sw $t0, -1928($fp)
	addi $t0, $fp, -712
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
	addi $t0, $fp, -752
	sw $t0, -1952($fp)
	li $t0, 0
	sw $t0, -1956($fp)
	lw $t0, -812($fp)
	sw $t0, -1960($fp)
	lw $t1, -1960($fp)
	li $t2, 0
	bne $t1, $t2, label415
	j label413
label415:
	lw $t0, -824($fp)
	sw $t0, -1964($fp)
	lw $t1, -1964($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label413
label414:
	li $t0, 14011
	sw $t0, -1968($fp)
	lw $t1, -1968($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label413
label412:
	li $t0, 1
	sw $t0, -1956($fp)
label413:
	li $t0, 0
	sw $t0, -1972($fp)
	li $t0, 56181
	sw $t0, -1976($fp)
	li $t0, 52566
	sw $t0, -1980($fp)
	lw $t0, -1976($fp)
	lw $t1, -1980($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1984($fp)
	lw $t1, -1984($fp)
	li $t2, 0
	bne $t1, $t2, label418
	j label417
label418:
	lw $t0, 4($fp)
	sw $t0, -1988($fp)
	lw $t1, -1988($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label417
label416:
	li $t0, 1
	sw $t0, -1972($fp)
label417:
	li $t0, 0
	sw $t0, -1992($fp)
	lw $t0, -1580($fp)
	sw $t0, -1996($fp)
	lw $t0, 12($fp)
	sw $t0, -2000($fp)
	lw $t0, -1996($fp)
	lw $t1, -2000($fp)
	mul $t0, $t0, $t1
	sw $t0, -2004($fp)
	lw $t0, -1052($fp)
	sw $t0, -2008($fp)
	lw $t1, -2004($fp)
	lw $t2, -2008($fp)
	beq $t1, $t2, label419
	j label420
label419:
	li $t0, 1
	sw $t0, -1992($fp)
label420:
	addi $t0, $fp, -752
	sw $t0, -2012($fp)
	lw $t0, -1280($fp)
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
	addi $sp, $sp, -4
	lw $t0, -1956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2028($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2032($fp)
	addi $sp, $sp, 20
	li $t0, 4
	lw $t1, -2032($fp)
	mul $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	lw $t1, -1952($fp)
	add $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	lw $t1, 0($t0)
	sw $t1, -2044($fp)
	lw $t0, -1948($fp)
	lw $t1, -2044($fp)
	sub $t0, $t0, $t1
	sw $t0, -2048($fp)
	li $t0, 16351
	sw $t0, -2052($fp)
	lw $t0, -2052($fp)
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	sw $t0, -2060($fp)
	lw $t0, 12($fp)
	sw $t0, -2064($fp)
	lw $t0, -800($fp)
	sw $t0, -2068($fp)
	lw $t0, -2064($fp)
	lw $t1, -2068($fp)
	sub $t0, $t0, $t1
	sw $t0, -2072($fp)
	li $t0, 1411
	sw $t0, -2076($fp)
	lw $t0, -2072($fp)
	lw $t1, -2076($fp)
	sub $t0, $t0, $t1
	sw $t0, -2080($fp)
	jal f6
	sw $v0, -2084($fp)
	addi $sp, $sp, 4
	lw $t0, -1256($fp)
	sw $t0, -2088($fp)
	li $t0, 0
	lw $t1, -2088($fp)
	sub $t0, $t0, $t1
	sw $t0, -2092($fp)
	lw $t0, -1052($fp)
	sw $t0, -2096($fp)
	lw $t0, -2092($fp)
	lw $t1, -2096($fp)
	sub $t0, $t0, $t1
	sw $t0, -2100($fp)
	li $t0, 57001
	sw $t0, -2104($fp)
	addi $sp, $sp, -4
	lw $t0, -2080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2104($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2108($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -52
	sw $t0, -2112($fp)
	li $t0, 6
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
	lw $t0, -2108($fp)
	lw $t1, -2128($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2132($fp)
	jal f6
	sw $v0, -2136($fp)
	addi $sp, $sp, 4
	lw $t0, -2132($fp)
	lw $t1, -2136($fp)
	mul $t0, $t0, $t1
	sw $t0, -2140($fp)
	li $t0, 0
	sw $t0, -2144($fp)
	li $t0, 0
	sw $t0, -2148($fp)
	li $t0, 0
	sw $t0, -2152($fp)
	lw $t0, -572($fp)
	sw $t0, -2156($fp)
	li $t0, 64460
	sw $t0, -2160($fp)
	lw $t0, -2156($fp)
	lw $t1, -2160($fp)
	mul $t0, $t0, $t1
	sw $t0, -2164($fp)
	addi $t0, $fp, -752
	sw $t0, -2168($fp)
	lw $t0, -1268($fp)
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
	lw $t1, -2164($fp)
	lw $t2, -2184($fp)
	bne $t1, $t2, label425
	j label426
label425:
	li $t0, 1
	sw $t0, -2152($fp)
label426:
	li $t0, 0
	sw $t0, -2188($fp)
	lw $t0, -1256($fp)
	sw $t0, -2192($fp)
	lw $t0, -1280($fp)
	sw $t0, -2196($fp)
	lw $t0, -2192($fp)
	lw $t1, -2196($fp)
	add $t0, $t0, $t1
	sw $t0, -2200($fp)
	li $t0, 48743
	sw $t0, -2204($fp)
	lw $t1, -2200($fp)
	lw $t2, -2204($fp)
	bge $t1, $t2, label427
	j label428
label427:
	li $t0, 1
	sw $t0, -2188($fp)
label428:
	lw $t1, -2152($fp)
	lw $t2, -2188($fp)
	bne $t1, $t2, label423
	j label424
label423:
	li $t0, 1
	sw $t0, -2148($fp)
label424:
	jal f6
	sw $v0, -2208($fp)
	addi $sp, $sp, 4
	lw $t1, -2148($fp)
	lw $t2, -2208($fp)
	bne $t1, $t2, label421
	j label422
label421:
	li $t0, 1
	sw $t0, -2144($fp)
label422:
	li $t0, 0
	sw $t0, -2212($fp)
	li $t0, 0
	sw $t0, -2216($fp)
	li $t0, 7929
	sw $t0, -2220($fp)
	lw $t1, -2220($fp)
	li $t2, 0
	bne $t1, $t2, label433
	j label432
label432:
	li $t0, 1
	sw $t0, -2216($fp)
label433:
	li $t0, 0
	lw $t1, -2216($fp)
	sub $t0, $t0, $t1
	sw $t0, -2224($fp)
	lw $t1, -2224($fp)
	li $t2, 0
	bne $t1, $t2, label429
	j label431
label431:
	li $t0, 0
	sw $t0, -2228($fp)
	li $t0, 11705
	sw $t0, -2232($fp)
	li $t0, 10546
	sw $t0, -2236($fp)
	lw $t1, -2232($fp)
	lw $t2, -2236($fp)
	bne $t1, $t2, label434
	j label435
label434:
	li $t0, 1
	sw $t0, -2228($fp)
label435:
	lw $t0, -788($fp)
	sw $t0, -2240($fp)
	lw $t1, -2228($fp)
	lw $t2, -2240($fp)
	beq $t1, $t2, label429
	j label430
label429:
	li $t0, 1
	sw $t0, -2212($fp)
label430:
	li $t0, 0
	sw $t0, -2244($fp)
	li $t0, 42880
	sw $t0, -2248($fp)
	lw $t0, -800($fp)
	sw $t0, -2252($fp)
	lw $t0, -2248($fp)
	lw $t1, -2252($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2256($fp)
	lw $t1, -2256($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label437
label438:
	li $t0, 0
	sw $t0, -2260($fp)
	li $t0, 40442
	sw $t0, -2264($fp)
	li $t0, 0
	lw $t1, -2264($fp)
	sub $t0, $t0, $t1
	sw $t0, -2268($fp)
	lw $t1, -2268($fp)
	li $t2, 0
	bne $t1, $t2, label440
	j label439
label439:
	li $t0, 1
	sw $t0, -2260($fp)
label440:
	addi $t0, $fp, -752
	sw $t0, -2272($fp)
	lw $t0, -1040($fp)
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
	lw $t1, -2260($fp)
	lw $t2, -2288($fp)
	beq $t1, $t2, label436
	j label437
label436:
	li $t0, 1
	sw $t0, -2244($fp)
label437:
	addi $t0, $fp, -24
	sw $t0, -2292($fp)
	li $t0, 0
	sw $t0, -2296($fp)
	li $t0, 0
	sw $t0, -2300($fp)
	lw $t0, -2056($fp)
	sw $t0, -2304($fp)
	lw $t1, -2304($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label443
label443:
	li $t0, 1
	sw $t0, -2300($fp)
label444:
	lw $t0, -1064($fp)
	sw $t0, -2308($fp)
	lw $t0, -2300($fp)
	lw $t1, -2308($fp)
	mul $t0, $t0, $t1
	sw $t0, -2312($fp)
	li $t0, 3861
	sw $t0, -2316($fp)
	li $t0, 26625
	sw $t0, -2320($fp)
	lw $t0, -2316($fp)
	lw $t1, -2320($fp)
	sub $t0, $t0, $t1
	sw $t0, -2324($fp)
	lw $t1, -2312($fp)
	lw $t2, -2324($fp)
	beq $t1, $t2, label441
	j label442
label441:
	li $t0, 1
	sw $t0, -2296($fp)
label442:
	li $t0, 4
	lw $t1, -2296($fp)
	mul $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	lw $t1, -2292($fp)
	add $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	lw $t1, 0($t0)
	sw $t1, -2336($fp)
	li $t0, 0
	sw $t0, -2340($fp)
	li $t0, 1053
	sw $t0, -2344($fp)
	li $t0, 0
	lw $t1, -2344($fp)
	sub $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t1, -2348($fp)
	li $t2, 0
	bne $t1, $t2, label447
	j label446
label447:
	addi $t0, $fp, -780
	sw $t0, -2352($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -2372($fp)
	lw $t0, -1400($fp)
	sw $t0, -2376($fp)
	lw $t1, -2376($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label448
label448:
	li $t0, 1
	sw $t0, -2372($fp)
label449:
	lw $t0, -2368($fp)
	lw $t1, -2372($fp)
	mul $t0, $t0, $t1
	sw $t0, -2380($fp)
	lw $t1, -2380($fp)
	li $t2, 0
	bne $t1, $t2, label445
	j label446
label445:
	li $t0, 1
	sw $t0, -2340($fp)
label446:
	lw $t0, -1280($fp)
	sw $t0, -2384($fp)
	lw $t0, -1592($fp)
	sw $t0, -2388($fp)
	li $t0, 46899
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	sw $t0, -2400($fp)
label450:
	li $t0, 56909
	sw $t0, -2404($fp)
	lw $t0, -2396($fp)
	sw $t0, -2408($fp)
	lw $t0, -2404($fp)
	lw $t1, -2408($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2412($fp)
	lw $t0, -800($fp)
	sw $t0, -2416($fp)
	lw $t0, -2412($fp)
	lw $t1, -2416($fp)
	mul $t0, $t0, $t1
	sw $t0, -2420($fp)
	addi $t0, $fp, -736
	sw $t0, -2424($fp)
	lw $t0, -848($fp)
	sw $t0, -2428($fp)
	li $t0, 4
	lw $t1, -2428($fp)
	mul $t0, $t0, $t1
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	lw $t1, -2424($fp)
	add $t0, $t0, $t1
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	lw $t1, 0($t0)
	sw $t1, -2440($fp)
	lw $t0, -2420($fp)
	lw $t1, -2440($fp)
	mul $t0, $t0, $t1
	sw $t0, -2444($fp)
	li $t0, 51381
	sw $t0, -2448($fp)
	lw $t0, -2444($fp)
	lw $t1, -2448($fp)
	sub $t0, $t0, $t1
	sw $t0, -2452($fp)
	lw $t1, -2452($fp)
	li $t2, 0
	bne $t1, $t2, label451
	j label453
label453:
	li $t0, 0
	sw $t0, -2456($fp)
	li $t0, 47908
	sw $t0, -2460($fp)
	lw $t1, -2460($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label456
label456:
	li $t0, 58099
	sw $t0, -2464($fp)
	lw $t1, -2464($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label455
label454:
	li $t0, 1
	sw $t0, -2456($fp)
label455:
	lw $t0, -1256($fp)
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -2472($fp)
	li $t0, 0
	sw $t0, -2476($fp)
	li $t0, 12654
	sw $t0, -2480($fp)
	lw $t0, -572($fp)
	sw $t0, -2484($fp)
	lw $t0, -2480($fp)
	lw $t1, -2484($fp)
	mul $t0, $t0, $t1
	sw $t0, -2488($fp)
	li $t0, 40933
	sw $t0, -2492($fp)
	lw $t1, -2488($fp)
	lw $t2, -2492($fp)
	beq $t1, $t2, label457
	j label458
label457:
	li $t0, 1
	sw $t0, -2476($fp)
label458:
	addi $sp, $sp, -4
	lw $t0, -2456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2476($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2496($fp)
	addi $sp, $sp, 16
	lw $t1, -2496($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label451
label451:
	li $t0, 0
	sw $t0, -2500($fp)
	li $t0, 8126
	sw $t0, -2504($fp)
	lw $t1, -2504($fp)
	li $t2, 0
	bne $t1, $t2, label460
	j label459
label459:
	li $t0, 1
	sw $t0, -2500($fp)
label460:
	lw $t0, -2500($fp)
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -2508($fp)
	lw $ra, -4($fp)
	lw $v0, -2508($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label450
label452:
label461:
	li $t0, 41183
	sw $t0, -2512($fp)
	lw $t1, -2512($fp)
	li $t2, 0
	bne $t1, $t2, label462
	j label463
label462:
label464:
	li $t0, 48560
	sw $t0, -2516($fp)
	li $t0, 33745
	sw $t0, -2520($fp)
	lw $t0, -1592($fp)
	sw $t0, -2524($fp)
	lw $t0, -2520($fp)
	lw $t1, -2524($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2528($fp)
	lw $t0, -1244($fp)
	sw $t0, -2532($fp)
	lw $t0, -2528($fp)
	lw $t1, -2532($fp)
	sub $t0, $t0, $t1
	sw $t0, -2536($fp)
	li $t0, 0
	sw $t0, -2540($fp)
	li $t0, 19242
	sw $t0, -2544($fp)
	lw $t0, -1580($fp)
	sw $t0, -2548($fp)
	lw $t0, -2544($fp)
	lw $t1, -2548($fp)
	add $t0, $t0, $t1
	sw $t0, -2552($fp)
	lw $t0, -1076($fp)
	sw $t0, -2556($fp)
	lw $t1, -2552($fp)
	lw $t2, -2556($fp)
	ble $t1, $t2, label467
	j label468
label467:
	li $t0, 1
	sw $t0, -2540($fp)
label468:
	li $t0, 0
	sw $t0, -2560($fp)
	li $t0, 0
	sw $t0, -2564($fp)
	li $t0, 27055
	sw $t0, -2568($fp)
	li $t0, 16863
	sw $t0, -2572($fp)
	lw $t0, -2568($fp)
	lw $t1, -2572($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2576($fp)
	lw $t0, -1232($fp)
	sw $t0, -2580($fp)
	lw $t1, -2576($fp)
	lw $t2, -2580($fp)
	bge $t1, $t2, label472
	j label473
label472:
	li $t0, 1
	sw $t0, -2564($fp)
label473:
	li $t0, 0
	sw $t0, -2584($fp)
	li $t0, 15452
	sw $t0, -2588($fp)
	lw $t1, -2588($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label474
label476:
	li $t0, 48179
	sw $t0, -2592($fp)
	lw $t1, -2592($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label475
label474:
	li $t0, 1
	sw $t0, -2584($fp)
label475:
	li $t0, 0
	sw $t0, -2596($fp)
	lw $t0, -572($fp)
	sw $t0, -2600($fp)
	li $t0, 31828
	sw $t0, -2604($fp)
	lw $t1, -2600($fp)
	lw $t2, -2604($fp)
	bgt $t1, $t2, label477
	j label479
label479:
	li $t0, 35590
	sw $t0, -2608($fp)
	lw $t1, -2608($fp)
	li $t2, 0
	bne $t1, $t2, label477
	j label478
label477:
	li $t0, 1
	sw $t0, -2596($fp)
label478:
	addi $sp, $sp, -4
	lw $t0, -2564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2596($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2612($fp)
	addi $sp, $sp, 16
	lw $t1, -2612($fp)
	li $t2, 0
	bne $t1, $t2, label471
	j label470
label471:
	lw $t0, -1912($fp)
	sw $t0, -2616($fp)
	lw $t1, -2616($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label470
label469:
	li $t0, 1
	sw $t0, -2560($fp)
label470:
	li $t0, 0
	sw $t0, -2620($fp)
	li $t0, 1441
	sw $t0, -2624($fp)
	lw $t1, -2624($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label481
label480:
	li $t0, 1
	sw $t0, -2620($fp)
label481:
	addi $sp, $sp, -4
	lw $t0, -2536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2620($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2628($fp)
	addi $sp, $sp, 20
	lw $t0, -2516($fp)
	lw $t1, -2628($fp)
	sub $t0, $t0, $t1
	sw $t0, -2632($fp)
	lw $t1, -2632($fp)
	li $t2, 0
	bne $t1, $t2, label465
	j label466
label465:
	li $t0, 15787
	sw $t0, -2636($fp)
	lw $t1, -2636($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label483
label482:
	li $t0, 2449
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	sw $t0, -2648($fp)
	li $t0, 0
	sw $t0, -2652($fp)
	li $t0, 0
	sw $t0, -2656($fp)
	lw $t0, -800($fp)
	sw $t0, -2660($fp)
	lw $t1, -2660($fp)
	li $t2, 0
	bne $t1, $t2, label487
	j label489
label489:
	li $t0, 2399
	sw $t0, -2664($fp)
	lw $t1, -2664($fp)
	li $t2, 0
	bne $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -2656($fp)
label488:
	li $t0, 0
	sw $t0, -2668($fp)
	li $t0, 19018
	sw $t0, -2672($fp)
	lw $t1, -2672($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label490
label490:
	li $t0, 1
	sw $t0, -2668($fp)
label491:
	li $t0, 0
	sw $t0, -2676($fp)
	lw $t0, -1232($fp)
	sw $t0, -2680($fp)
	lw $t1, -2680($fp)
	li $t2, 0
	bne $t1, $t2, label493
	j label492
label492:
	li $t0, 1
	sw $t0, -2676($fp)
label493:
	li $t0, 0
	lw $t1, -2676($fp)
	sub $t0, $t0, $t1
	sw $t0, -2684($fp)
	li $t0, 0
	sw $t0, -2688($fp)
	li $t0, 12995
	sw $t0, -2692($fp)
	lw $t0, 8($fp)
	sw $t0, -2696($fp)
	lw $t0, -2692($fp)
	lw $t1, -2696($fp)
	add $t0, $t0, $t1
	sw $t0, -2700($fp)
	lw $t0, -812($fp)
	sw $t0, -2704($fp)
	lw $t1, -2700($fp)
	lw $t2, -2704($fp)
	bge $t1, $t2, label494
	j label495
label494:
	li $t0, 1
	sw $t0, -2688($fp)
label495:
	lw $t0, -2644($fp)
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -2712($fp)
	addi $sp, $sp, -4
	lw $t0, -2684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2712($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2716($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -2720($fp)
	li $t0, 41674
	sw $t0, -2724($fp)
	li $t0, 27492
	sw $t0, -2728($fp)
	lw $t0, -2724($fp)
	lw $t1, -2728($fp)
	sub $t0, $t0, $t1
	sw $t0, -2732($fp)
	lw $t1, -2732($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label498
label498:
	lw $t0, -860($fp)
	sw $t0, -2736($fp)
	lw $t1, -2736($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label497
label496:
	li $t0, 1
	sw $t0, -2720($fp)
label497:
	addi $sp, $sp, -4
	lw $t0, -2656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2720($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2740($fp)
	addi $sp, $sp, 20
	li $t0, 16857
	sw $t0, -2744($fp)
	li $t0, 0
	lw $t1, -2744($fp)
	sub $t0, $t0, $t1
	sw $t0, -2748($fp)
	li $t0, 45643
	sw $t0, -2752($fp)
	lw $t0, -2748($fp)
	lw $t1, -2752($fp)
	sub $t0, $t0, $t1
	sw $t0, -2756($fp)
	lw $t1, -2740($fp)
	lw $t2, -2756($fp)
	bgt $t1, $t2, label485
	j label486
label485:
	li $t0, 1
	sw $t0, -2652($fp)
label486:
	li $t0, 4395
	sw $t0, -2760($fp)
	li $t0, 0
	sw $t0, -2764($fp)
	li $t0, 3452
	sw $t0, -2768($fp)
	lw $t0, -1076($fp)
	sw $t0, -2772($fp)
	lw $t0, -2768($fp)
	lw $t1, -2772($fp)
	mul $t0, $t0, $t1
	sw $t0, -2776($fp)
	lw $t0, -1388($fp)
	sw $t0, -2780($fp)
	lw $t1, -2776($fp)
	lw $t2, -2780($fp)
	bne $t1, $t2, label499
	j label500
label499:
	li $t0, 1
	sw $t0, -2764($fp)
label500:
	lw $t0, 4($fp)
	sw $t0, -2784($fp)
	lw $t0, -2784($fp)
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	sw $t0, -2788($fp)
	addi $sp, $sp, -4
	lw $t0, -2760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2788($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2792($fp)
	addi $sp, $sp, 16
	lw $t0, -836($fp)
	sw $t0, -2796($fp)
	li $t0, 0
	lw $t1, -2796($fp)
	sub $t0, $t0, $t1
	sw $t0, -2800($fp)
	lw $t0, -2792($fp)
	lw $t1, -2800($fp)
	add $t0, $t0, $t1
	sw $t0, -2804($fp)
	j label484
label483:
	li $t0, 31293
	sw $t0, -2812($fp)
	addi $t0, $fp, -2808
	sw $t0, -2816($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -2836($fp)
	addi $t0, $fp, -2808
	sw $t0, -2840($fp)
	li $t0, 0
	sw $t0, -2844($fp)
	lw $t0, -1592($fp)
	sw $t0, -2848($fp)
	li $t0, 0
	lw $t1, -2848($fp)
	sub $t0, $t0, $t1
	sw $t0, -2852($fp)
	lw $t1, -2852($fp)
	li $t2, 0
	bne $t1, $t2, label505
	j label504
label505:
	lw $t0, -1924($fp)
	sw $t0, -2856($fp)
	lw $t1, -2856($fp)
	li $t2, 0
	bne $t1, $t2, label503
	j label504
label503:
	li $t0, 1
	sw $t0, -2844($fp)
label504:
	li $t0, 4
	lw $t1, -2844($fp)
	mul $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	lw $t1, -2840($fp)
	add $t0, $t0, $t1
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	lw $t1, 0($t0)
	sw $t1, -2868($fp)
	lw $t1, -2868($fp)
	li $t2, 0
	bne $t1, $t2, label502
	j label501
label501:
	li $t0, 1
	sw $t0, -2836($fp)
label502:
label484:
	j label464
label466:
	j label461
label463:
label410:
	j label385
label384:
	li $t0, 50351
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	sw $t0, -2900($fp)
	lw $t0, -2900($fp)
	sw $t0, -2904($fp)
	li $t0, 61305
	sw $t0, -2908($fp)
	addi $t0, $fp, -2892
	sw $t0, -2912($fp)
	li $t0, 0
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
	li $t0, 17138
	sw $t0, -2932($fp)
	addi $t0, $fp, -2892
	sw $t0, -2936($fp)
	li $t0, 1
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
	li $t0, 63006
	sw $t0, -2956($fp)
	addi $t0, $fp, -2892
	sw $t0, -2960($fp)
	li $t0, 2
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2968($fp)
	lw $t0, -2960($fp)
	lw $t1, -2968($fp)
	add $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $t0, -2956($fp)
	lw $t1, -2972($fp)
	sw $t0, 0($t1)
	lw $t0, -2972($fp)
	lw $t1, 0($t0)
	sw $t1, -2976($fp)
	li $t0, 36702
	sw $t0, -2980($fp)
	addi $t0, $fp, -2892
	sw $t0, -2984($fp)
	li $t0, 3
	sw $t0, -2988($fp)
	lw $t0, -2988($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2992($fp)
	lw $t0, -2984($fp)
	lw $t1, -2992($fp)
	add $t0, $t0, $t1
	sw $t0, -2996($fp)
	lw $t0, -2980($fp)
	lw $t1, -2996($fp)
	sw $t0, 0($t1)
	lw $t0, -2996($fp)
	lw $t1, 0($t0)
	sw $t1, -3000($fp)
	li $t0, 65047
	sw $t0, -3004($fp)
	addi $t0, $fp, -2892
	sw $t0, -3008($fp)
	li $t0, 4
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3016($fp)
	lw $t0, -3008($fp)
	lw $t1, -3016($fp)
	add $t0, $t0, $t1
	sw $t0, -3020($fp)
	lw $t0, -3004($fp)
	lw $t1, -3020($fp)
	sw $t0, 0($t1)
	lw $t0, -3020($fp)
	lw $t1, 0($t0)
	sw $t1, -3024($fp)
	li $t0, 55569
	sw $t0, -3028($fp)
	addi $t0, $fp, -2892
	sw $t0, -3032($fp)
	li $t0, 5
	sw $t0, -3036($fp)
	lw $t0, -3036($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3040($fp)
	lw $t0, -3032($fp)
	lw $t1, -3040($fp)
	add $t0, $t0, $t1
	sw $t0, -3044($fp)
	lw $t0, -3028($fp)
	lw $t1, -3044($fp)
	sw $t0, 0($t1)
	lw $t0, -3044($fp)
	lw $t1, 0($t0)
	sw $t1, -3048($fp)
	li $t0, 44828
	sw $t0, -3052($fp)
	lw $t0, -3052($fp)
	sw $t0, -3056($fp)
	lw $t0, -3056($fp)
	sw $t0, -3060($fp)
	li $t0, 40694
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	sw $t0, -3072($fp)
	li $t0, 38593
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	sw $t0, -3084($fp)
	lw $t0, -1040($fp)
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	sw $t0, -3096($fp)
	lw $t1, -3096($fp)
	li $t2, 0
	bne $t1, $t2, label506
	j label507
label506:
	jal f6
	sw $v0, -3100($fp)
	addi $sp, $sp, 4
	addi $t0, $fp, -2892
	sw $t0, -3104($fp)
	lw $t0, -1052($fp)
	sw $t0, -3108($fp)
	li $t0, 4
	lw $t1, -3108($fp)
	mul $t0, $t0, $t1
	sw $t0, -3112($fp)
	lw $t0, -3112($fp)
	lw $t1, -3104($fp)
	add $t0, $t0, $t1
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	lw $t1, 0($t0)
	sw $t1, -3120($fp)
	li $t0, 46269
	sw $t0, -3124($fp)
	lw $t0, -3120($fp)
	lw $t1, -3124($fp)
	add $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t1, -3100($fp)
	lw $t2, -3128($fp)
	bge $t1, $t2, label509
	j label510
label509:
	lw $t0, 4($fp)
	sw $t0, -3132($fp)
	lw $t0, -800($fp)
	sw $t0, -3136($fp)
	lw $t1, -3132($fp)
	lw $t2, -3136($fp)
	bge $t1, $t2, label512
	j label513
label512:
	li $t0, 0
	sw $t0, -3140($fp)
	li $t0, 6986
	sw $t0, -3144($fp)
	lw $t1, -3144($fp)
	li $t2, 0
	bne $t1, $t2, label516
	j label515
label515:
	li $t0, 1
	sw $t0, -3140($fp)
label516:
	li $t0, 0
	sw $t0, -3148($fp)
	li $t0, 55165
	sw $t0, -3152($fp)
	li $t0, 35702
	sw $t0, -3156($fp)
	lw $t0, -3152($fp)
	lw $t1, -3156($fp)
	add $t0, $t0, $t1
	sw $t0, -3160($fp)
	lw $t0, -1232($fp)
	sw $t0, -3164($fp)
	lw $t0, -3160($fp)
	lw $t1, -3164($fp)
	sub $t0, $t0, $t1
	sw $t0, -3168($fp)
	li $t0, 0
	sw $t0, -3172($fp)
	lw $t0, -1244($fp)
	sw $t0, -3176($fp)
	lw $t1, -3176($fp)
	li $t2, 0
	bne $t1, $t2, label520
	j label519
label519:
	li $t0, 1
	sw $t0, -3172($fp)
label520:
	li $t0, 0
	lw $t1, -3172($fp)
	sub $t0, $t0, $t1
	sw $t0, -3180($fp)
	addi $t0, $fp, -712
	sw $t0, -3184($fp)
	li $t0, 4
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
	li $t0, 0
	lw $t1, -3200($fp)
	sub $t0, $t0, $t1
	sw $t0, -3204($fp)
	addi $sp, $sp, -4
	lw $t0, -3168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3204($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3208($fp)
	addi $sp, $sp, 16
	lw $t1, -3208($fp)
	li $t2, 0
	bne $t1, $t2, label518
	j label517
label517:
	li $t0, 1
	sw $t0, -3148($fp)
label518:
	lw $t0, -3140($fp)
	lw $t1, -3148($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3212($fp)
	li $t0, 0
	lw $t1, -3212($fp)
	sub $t0, $t0, $t1
	sw $t0, -3216($fp)
	j label514
label513:
	lw $t0, -572($fp)
	sw $t0, -3220($fp)
	lw $t1, -3220($fp)
	li $t2, 0
	bne $t1, $t2, label521
	j label522
label521:
	li $t0, 0
	sw $t0, -3224($fp)
	li $t0, 13049
	sw $t0, -3228($fp)
	li $t0, 0
	lw $t1, -3228($fp)
	sub $t0, $t0, $t1
	sw $t0, -3232($fp)
	lw $t1, -3232($fp)
	li $t2, 0
	bne $t1, $t2, label525
	j label524
label524:
	li $t0, 1
	sw $t0, -3224($fp)
label525:
	addi $t0, $fp, -84
	sw $t0, -3236($fp)
	lw $t0, -1604($fp)
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
	lw $t0, -3224($fp)
	lw $t1, -3252($fp)
	add $t0, $t0, $t1
	sw $t0, -3256($fp)
	li $t0, 8871
	sw $t0, -3260($fp)
	lw $t0, -3256($fp)
	lw $t1, -3260($fp)
	add $t0, $t0, $t1
	sw $t0, -3264($fp)
	li $t0, 3911
	sw $t0, -3268($fp)
	lw $t0, -1592($fp)
	sw $t0, -3272($fp)
	li $t0, 0
	lw $t1, -3272($fp)
	sub $t0, $t0, $t1
	sw $t0, -3276($fp)
	lw $t0, -3268($fp)
	lw $t1, -3276($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3280($fp)
	lw $t0, -3264($fp)
	lw $t1, -3280($fp)
	add $t0, $t0, $t1
	sw $t0, -3284($fp)
	j label523
label522:
	lw $t0, -812($fp)
	sw $t0, -3288($fp)
	li $t0, 0
	sw $t0, -3292($fp)
	li $t0, 28836
	sw $t0, -3296($fp)
	lw $t0, -3056($fp)
	sw $t0, -3300($fp)
	lw $t0, -3296($fp)
	lw $t1, -3300($fp)
	add $t0, $t0, $t1
	sw $t0, -3304($fp)
	lw $t1, -3304($fp)
	li $t2, 0
	bne $t1, $t2, label528
	j label527
label528:
	li $t0, 11321
	sw $t0, -3308($fp)
	lw $t1, -3308($fp)
	li $t2, 0
	bne $t1, $t2, label526
	j label527
label526:
	li $t0, 1
	sw $t0, -3292($fp)
label527:
	lw $t0, -1256($fp)
	sw $t0, -3312($fp)
	lw $t0, -3080($fp)
	sw $t0, -3316($fp)
	lw $t0, -3312($fp)
	lw $t1, -3316($fp)
	add $t0, $t0, $t1
	sw $t0, -3320($fp)
	addi $sp, $sp, -4
	lw $t0, -3288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3320($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3324($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -3324($fp)
	sub $t0, $t0, $t1
	sw $t0, -3328($fp)
	li $t0, 0
	lw $t1, -3328($fp)
	sub $t0, $t0, $t1
	sw $t0, -3332($fp)
label523:
label514:
	j label511
label510:
	lw $t0, 4($fp)
	sw $t0, -3336($fp)
label511:
	j label508
label507:
	li $t0, 45585
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	sw $t0, -3348($fp)
	li $t0, 0
	sw $t0, -3352($fp)
	lw $t0, -1244($fp)
	sw $t0, -3356($fp)
	lw $t0, -572($fp)
	sw $t0, -3360($fp)
	lw $t1, -3356($fp)
	lw $t2, -3360($fp)
	bne $t1, $t2, label531
	j label530
label531:
	li $t0, 41173
	sw $t0, -3364($fp)
	lw $t1, -3364($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label530
label529:
	li $t0, 1
	sw $t0, -3352($fp)
label530:
	lw $t0, -836($fp)
	sw $t0, -3368($fp)
	li $t0, 0
	lw $t1, -3368($fp)
	sub $t0, $t0, $t1
	sw $t0, -3372($fp)
	li $t0, 58728
	sw $t0, -3376($fp)
	lw $t0, -3372($fp)
	lw $t1, -3376($fp)
	sub $t0, $t0, $t1
	sw $t0, -3380($fp)
	li $t0, 0
	sw $t0, -3384($fp)
	li $t0, 56329
	sw $t0, -3388($fp)
	li $t0, 24316
	sw $t0, -3392($fp)
	lw $t0, -3388($fp)
	lw $t1, -3392($fp)
	add $t0, $t0, $t1
	sw $t0, -3396($fp)
	li $t0, 64604
	sw $t0, -3400($fp)
	lw $t1, -3396($fp)
	lw $t2, -3400($fp)
	bge $t1, $t2, label532
	j label533
label532:
	li $t0, 1
	sw $t0, -3384($fp)
label533:
	addi $sp, $sp, -4
	lw $t0, -3352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3384($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3404($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -3404($fp)
	sub $t0, $t0, $t1
	sw $t0, -3408($fp)
	li $t0, 0
	sw $t0, -3412($fp)
	addi $t0, $fp, -84
	sw $t0, -3416($fp)
	li $t0, 4
	sw $t0, -3420($fp)
	li $t0, 4
	lw $t1, -3420($fp)
	mul $t0, $t0, $t1
	sw $t0, -3424($fp)
	lw $t0, -3424($fp)
	lw $t1, -3416($fp)
	add $t0, $t0, $t1
	sw $t0, -3428($fp)
	lw $t0, -3428($fp)
	lw $t1, 0($t0)
	sw $t1, -3432($fp)
	li $t0, 45569
	sw $t0, -3436($fp)
	lw $t0, -1580($fp)
	sw $t0, -3440($fp)
	lw $t0, -3436($fp)
	lw $t1, -3440($fp)
	mul $t0, $t0, $t1
	sw $t0, -3444($fp)
	lw $t0, -3432($fp)
	lw $t1, -3444($fp)
	sub $t0, $t0, $t1
	sw $t0, -3448($fp)
	jal f6
	sw $v0, -3452($fp)
	addi $sp, $sp, 4
	lw $t0, -3448($fp)
	lw $t1, -3452($fp)
	sub $t0, $t0, $t1
	sw $t0, -3456($fp)
	lw $t1, -3456($fp)
	li $t2, 0
	bne $t1, $t2, label536
	j label535
label536:
	lw $t0, -848($fp)
	sw $t0, -3460($fp)
	li $t0, 0
	sw $t0, -3464($fp)
	lw $t0, -3344($fp)
	sw $t0, -3468($fp)
	lw $t1, -3468($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label537
label537:
	li $t0, 1
	sw $t0, -3464($fp)
label538:
	lw $t0, -3460($fp)
	lw $t1, -3464($fp)
	sub $t0, $t0, $t1
	sw $t0, -3472($fp)
	lw $t1, -3472($fp)
	li $t2, 0
	bne $t1, $t2, label534
	j label535
label534:
	li $t0, 1
	sw $t0, -3412($fp)
label535:
	li $t0, 10469
	sw $t0, -3476($fp)
label508:
	lw $t0, -2900($fp)
	sw $t0, -3480($fp)
	lw $t0, -3480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2892
	sw $t0, -3484($fp)
	li $t0, 0
	sw $t0, -3488($fp)
	li $t0, 4
	lw $t1, -3488($fp)
	mul $t0, $t0, $t1
	sw $t0, -3492($fp)
	lw $t0, -3492($fp)
	lw $t1, -3484($fp)
	add $t0, $t0, $t1
	sw $t0, -3496($fp)
	lw $t0, -3496($fp)
	lw $t1, 0($t0)
	sw $t1, -3500($fp)
	lw $t0, -3500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2892
	sw $t0, -3504($fp)
	li $t0, 1
	sw $t0, -3508($fp)
	li $t0, 4
	lw $t1, -3508($fp)
	mul $t0, $t0, $t1
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	lw $t1, -3504($fp)
	add $t0, $t0, $t1
	sw $t0, -3516($fp)
	lw $t0, -3516($fp)
	lw $t1, 0($t0)
	sw $t1, -3520($fp)
	lw $t0, -3520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2892
	sw $t0, -3524($fp)
	li $t0, 2
	sw $t0, -3528($fp)
	li $t0, 4
	lw $t1, -3528($fp)
	mul $t0, $t0, $t1
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	lw $t1, -3524($fp)
	add $t0, $t0, $t1
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	lw $t1, 0($t0)
	sw $t1, -3540($fp)
	lw $t0, -3540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2892
	sw $t0, -3544($fp)
	li $t0, 3
	sw $t0, -3548($fp)
	li $t0, 4
	lw $t1, -3548($fp)
	mul $t0, $t0, $t1
	sw $t0, -3552($fp)
	lw $t0, -3552($fp)
	lw $t1, -3544($fp)
	add $t0, $t0, $t1
	sw $t0, -3556($fp)
	lw $t0, -3556($fp)
	lw $t1, 0($t0)
	sw $t1, -3560($fp)
	lw $t0, -3560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2892
	sw $t0, -3564($fp)
	li $t0, 4
	sw $t0, -3568($fp)
	li $t0, 4
	lw $t1, -3568($fp)
	mul $t0, $t0, $t1
	sw $t0, -3572($fp)
	lw $t0, -3572($fp)
	lw $t1, -3564($fp)
	add $t0, $t0, $t1
	sw $t0, -3576($fp)
	lw $t0, -3576($fp)
	lw $t1, 0($t0)
	sw $t1, -3580($fp)
	lw $t0, -3580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2892
	sw $t0, -3584($fp)
	li $t0, 5
	sw $t0, -3588($fp)
	li $t0, 4
	lw $t1, -3588($fp)
	mul $t0, $t0, $t1
	sw $t0, -3592($fp)
	lw $t0, -3592($fp)
	lw $t1, -3584($fp)
	add $t0, $t0, $t1
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	lw $t1, 0($t0)
	sw $t1, -3600($fp)
	lw $t0, -3600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3056($fp)
	sw $t0, -3604($fp)
	lw $t0, -3604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3068($fp)
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3080($fp)
	sw $t0, -3612($fp)
	lw $t0, -3612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3616($fp)
	jal f6
	sw $v0, -3620($fp)
	addi $sp, $sp, 4
	lw $t1, -3620($fp)
	li $t2, 0
	bne $t1, $t2, label540
	j label539
label539:
	li $t0, 1
	sw $t0, -3616($fp)
label540:
	lw $ra, -4($fp)
	lw $v0, -3616($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1280($fp)
	sw $t0, -3624($fp)
	li $t0, 46995
	sw $t0, -3628($fp)
	lw $t0, -3624($fp)
	lw $t1, -3628($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3632($fp)
	li $t0, 41338
	sw $t0, -3636($fp)
	lw $t0, -3632($fp)
	lw $t1, -3636($fp)
	mul $t0, $t0, $t1
	sw $t0, -3640($fp)
	lw $t1, -3640($fp)
	li $t2, 0
	bne $t1, $t2, label541
	j label542
label541:
	li $t0, 27607
	sw $t0, -3692($fp)
	addi $t0, $fp, -3660
	sw $t0, -3696($fp)
	li $t0, 0
	sw $t0, -3700($fp)
	lw $t0, -3700($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3704($fp)
	lw $t0, -3696($fp)
	lw $t1, -3704($fp)
	add $t0, $t0, $t1
	sw $t0, -3708($fp)
	lw $t0, -3692($fp)
	lw $t1, -3708($fp)
	sw $t0, 0($t1)
	lw $t0, -3708($fp)
	lw $t1, 0($t0)
	sw $t1, -3712($fp)
	li $t0, 44465
	sw $t0, -3716($fp)
	addi $t0, $fp, -3660
	sw $t0, -3720($fp)
	li $t0, 1
	sw $t0, -3724($fp)
	lw $t0, -3724($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3728($fp)
	lw $t0, -3720($fp)
	lw $t1, -3728($fp)
	add $t0, $t0, $t1
	sw $t0, -3732($fp)
	lw $t0, -3716($fp)
	lw $t1, -3732($fp)
	sw $t0, 0($t1)
	lw $t0, -3732($fp)
	lw $t1, 0($t0)
	sw $t1, -3736($fp)
	li $t0, 12504
	sw $t0, -3740($fp)
	addi $t0, $fp, -3660
	sw $t0, -3744($fp)
	li $t0, 2
	sw $t0, -3748($fp)
	lw $t0, -3748($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3752($fp)
	lw $t0, -3744($fp)
	lw $t1, -3752($fp)
	add $t0, $t0, $t1
	sw $t0, -3756($fp)
	lw $t0, -3740($fp)
	lw $t1, -3756($fp)
	sw $t0, 0($t1)
	lw $t0, -3756($fp)
	lw $t1, 0($t0)
	sw $t1, -3760($fp)
	li $t0, 27118
	sw $t0, -3764($fp)
	addi $t0, $fp, -3660
	sw $t0, -3768($fp)
	li $t0, 3
	sw $t0, -3772($fp)
	lw $t0, -3772($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3776($fp)
	lw $t0, -3768($fp)
	lw $t1, -3776($fp)
	add $t0, $t0, $t1
	sw $t0, -3780($fp)
	lw $t0, -3764($fp)
	lw $t1, -3780($fp)
	sw $t0, 0($t1)
	lw $t0, -3780($fp)
	lw $t1, 0($t0)
	sw $t1, -3784($fp)
	li $t0, 34498
	sw $t0, -3788($fp)
	addi $t0, $fp, -3660
	sw $t0, -3792($fp)
	li $t0, 4
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t0, -3792($fp)
	lw $t1, -3800($fp)
	add $t0, $t0, $t1
	sw $t0, -3804($fp)
	lw $t0, -3788($fp)
	lw $t1, -3804($fp)
	sw $t0, 0($t1)
	lw $t0, -3804($fp)
	lw $t1, 0($t0)
	sw $t1, -3808($fp)
	li $t0, 57332
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	sw $t0, -3820($fp)
	li $t0, 2276
	sw $t0, -3824($fp)
	addi $t0, $fp, -3688
	sw $t0, -3828($fp)
	li $t0, 0
	sw $t0, -3832($fp)
	lw $t0, -3832($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3836($fp)
	lw $t0, -3828($fp)
	lw $t1, -3836($fp)
	add $t0, $t0, $t1
	sw $t0, -3840($fp)
	lw $t0, -3824($fp)
	lw $t1, -3840($fp)
	sw $t0, 0($t1)
	lw $t0, -3840($fp)
	lw $t1, 0($t0)
	sw $t1, -3844($fp)
	li $t0, 7555
	sw $t0, -3848($fp)
	addi $t0, $fp, -3688
	sw $t0, -3852($fp)
	li $t0, 1
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3860($fp)
	lw $t0, -3852($fp)
	lw $t1, -3860($fp)
	add $t0, $t0, $t1
	sw $t0, -3864($fp)
	lw $t0, -3848($fp)
	lw $t1, -3864($fp)
	sw $t0, 0($t1)
	lw $t0, -3864($fp)
	lw $t1, 0($t0)
	sw $t1, -3868($fp)
	li $t0, 38065
	sw $t0, -3872($fp)
	addi $t0, $fp, -3688
	sw $t0, -3876($fp)
	li $t0, 2
	sw $t0, -3880($fp)
	lw $t0, -3880($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3884($fp)
	lw $t0, -3876($fp)
	lw $t1, -3884($fp)
	add $t0, $t0, $t1
	sw $t0, -3888($fp)
	lw $t0, -3872($fp)
	lw $t1, -3888($fp)
	sw $t0, 0($t1)
	lw $t0, -3888($fp)
	lw $t1, 0($t0)
	sw $t1, -3892($fp)
	li $t0, 9262
	sw $t0, -3896($fp)
	addi $t0, $fp, -3688
	sw $t0, -3900($fp)
	li $t0, 3
	sw $t0, -3904($fp)
	lw $t0, -3904($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3908($fp)
	lw $t0, -3900($fp)
	lw $t1, -3908($fp)
	add $t0, $t0, $t1
	sw $t0, -3912($fp)
	lw $t0, -3896($fp)
	lw $t1, -3912($fp)
	sw $t0, 0($t1)
	lw $t0, -3912($fp)
	lw $t1, 0($t0)
	sw $t1, -3916($fp)
	li $t0, 16202
	sw $t0, -3920($fp)
	addi $t0, $fp, -3688
	sw $t0, -3924($fp)
	li $t0, 4
	sw $t0, -3928($fp)
	lw $t0, -3928($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3932($fp)
	lw $t0, -3924($fp)
	lw $t1, -3932($fp)
	add $t0, $t0, $t1
	sw $t0, -3936($fp)
	lw $t0, -3920($fp)
	lw $t1, -3936($fp)
	sw $t0, 0($t1)
	lw $t0, -3936($fp)
	lw $t1, 0($t0)
	sw $t1, -3940($fp)
	li $t0, 34250
	sw $t0, -3944($fp)
	addi $t0, $fp, -3688
	sw $t0, -3948($fp)
	li $t0, 5
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3956($fp)
	lw $t0, -3948($fp)
	lw $t1, -3956($fp)
	add $t0, $t0, $t1
	sw $t0, -3960($fp)
	lw $t0, -3944($fp)
	lw $t1, -3960($fp)
	sw $t0, 0($t1)
	lw $t0, -3960($fp)
	lw $t1, 0($t0)
	sw $t1, -3964($fp)
	li $t0, 64427
	sw $t0, -3968($fp)
	addi $t0, $fp, -3688
	sw $t0, -3972($fp)
	li $t0, 6
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3980($fp)
	lw $t0, -3972($fp)
	lw $t1, -3980($fp)
	add $t0, $t0, $t1
	sw $t0, -3984($fp)
	lw $t0, -3968($fp)
	lw $t1, -3984($fp)
	sw $t0, 0($t1)
	lw $t0, -3984($fp)
	lw $t1, 0($t0)
	sw $t1, -3988($fp)
	addi $t0, $fp, -3660
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
	addi $t0, $fp, -3660
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
	addi $t0, $fp, -3660
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
	addi $t0, $fp, -3660
	sw $t0, -4052($fp)
	li $t0, 3
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
	addi $t0, $fp, -3660
	sw $t0, -4072($fp)
	li $t0, 4
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
	lw $t0, -3816($fp)
	sw $t0, -4092($fp)
	lw $t0, -4092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3688
	sw $t0, -4096($fp)
	li $t0, 0
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
	addi $t0, $fp, -3688
	sw $t0, -4116($fp)
	li $t0, 1
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
	addi $t0, $fp, -3688
	sw $t0, -4136($fp)
	li $t0, 2
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
	addi $t0, $fp, -3688
	sw $t0, -4156($fp)
	li $t0, 3
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
	addi $t0, $fp, -3688
	sw $t0, -4176($fp)
	li $t0, 4
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
	addi $t0, $fp, -3688
	sw $t0, -4196($fp)
	li $t0, 5
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
	addi $t0, $fp, -3688
	sw $t0, -4216($fp)
	li $t0, 6
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
	lw $t0, -1232($fp)
	sw $t0, -4236($fp)
	lw $ra, -4($fp)
	lw $v0, -4236($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -3688
	sw $t0, -4240($fp)
	li $t0, 0
	sw $t0, -4244($fp)
	li $t0, 51905
	sw $t0, -4248($fp)
	lw $t1, -4248($fp)
	li $t2, 0
	bne $t1, $t2, label547
	j label548
label547:
	li $t0, 1
	sw $t0, -4244($fp)
label548:
	li $t0, 4
	lw $t1, -4244($fp)
	mul $t0, $t0, $t1
	sw $t0, -4252($fp)
	lw $t0, -4252($fp)
	lw $t1, -4240($fp)
	add $t0, $t0, $t1
	sw $t0, -4256($fp)
	lw $t0, -4256($fp)
	lw $t1, 0($t0)
	sw $t1, -4260($fp)
	li $t0, 0
	sw $t0, -4264($fp)
	li $t0, 0
	sw $t0, -4268($fp)
	li $t0, 19084
	sw $t0, -4272($fp)
	lw $t1, -4272($fp)
	li $t2, 0
	bne $t1, $t2, label552
	j label551
label551:
	li $t0, 1
	sw $t0, -4268($fp)
label552:
	li $t0, 35866
	sw $t0, -4276($fp)
	lw $t0, -4268($fp)
	lw $t1, -4276($fp)
	mul $t0, $t0, $t1
	sw $t0, -4280($fp)
	li $t0, 0
	sw $t0, -4284($fp)
	li $t0, 0
	sw $t0, -4288($fp)
	li $t0, 55816
	sw $t0, -4292($fp)
	li $t0, 10600
	sw $t0, -4296($fp)
	lw $t1, -4292($fp)
	lw $t2, -4296($fp)
	bge $t1, $t2, label555
	j label556
label555:
	li $t0, 1
	sw $t0, -4288($fp)
label556:
	lw $t0, 12($fp)
	sw $t0, -4300($fp)
	lw $t1, -4288($fp)
	lw $t2, -4300($fp)
	beq $t1, $t2, label553
	j label554
label553:
	li $t0, 1
	sw $t0, -4284($fp)
label554:
	addi $t0, $fp, -736
	sw $t0, -4304($fp)
	lw $t0, -800($fp)
	sw $t0, -4308($fp)
	li $t0, 4
	lw $t1, -4308($fp)
	mul $t0, $t0, $t1
	sw $t0, -4312($fp)
	lw $t0, -4312($fp)
	lw $t1, -4304($fp)
	add $t0, $t0, $t1
	sw $t0, -4316($fp)
	lw $t0, -4316($fp)
	lw $t1, 0($t0)
	sw $t1, -4320($fp)
	li $t0, 0
	lw $t1, -4320($fp)
	sub $t0, $t0, $t1
	sw $t0, -4324($fp)
	addi $t0, $fp, -3660
	sw $t0, -4328($fp)
	li $t0, 1
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
	addi $sp, $sp, -4
	lw $t0, -4280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4344($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4348($fp)
	addi $sp, $sp, 20
	lw $t1, -4348($fp)
	li $t2, 0
	bne $t1, $t2, label550
	j label549
label549:
	li $t0, 1
	sw $t0, -4264($fp)
label550:
	lw $t0, -4260($fp)
	lw $t1, -4264($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4352($fp)
	lw $t1, -4352($fp)
	li $t2, 0
	bne $t1, $t2, label544
	j label545
label544:
	li $t0, 0
	sw $t0, -4356($fp)
	lw $t0, -1400($fp)
	sw $t0, -4360($fp)
	lw $t1, -4360($fp)
	li $t2, 0
	bne $t1, $t2, label557
	j label559
label559:
	lw $t0, -3816($fp)
	sw $t0, -4364($fp)
	lw $t1, -4364($fp)
	li $t2, 0
	bne $t1, $t2, label560
	j label558
label560:
	lw $t0, -1604($fp)
	sw $t0, -4368($fp)
	lw $t0, -848($fp)
	sw $t0, -4372($fp)
	lw $t0, -4368($fp)
	lw $t1, -4372($fp)
	add $t0, $t0, $t1
	sw $t0, -4376($fp)
	lw $t1, -4376($fp)
	li $t2, 0
	bne $t1, $t2, label557
	j label558
label557:
	li $t0, 1
	sw $t0, -4356($fp)
label558:
	j label546
label545:
	li $t0, 0
	sw $t0, -4380($fp)
	li $t0, 0
	sw $t0, -4384($fp)
	li $t0, 14109
	sw $t0, -4388($fp)
	lw $t0, -836($fp)
	sw $t0, -4392($fp)
	lw $t0, -4388($fp)
	lw $t1, -4392($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4396($fp)
	li $t0, 56765
	sw $t0, -4400($fp)
	lw $t1, -4396($fp)
	lw $t2, -4400($fp)
	ble $t1, $t2, label564
	j label565
label564:
	li $t0, 1
	sw $t0, -4384($fp)
label565:
	li $t0, 0
	sw $t0, -4404($fp)
	li $t0, 19038
	sw $t0, -4408($fp)
	lw $t1, -4408($fp)
	li $t2, 0
	bne $t1, $t2, label566
	j label567
label566:
	li $t0, 1
	sw $t0, -4404($fp)
label567:
	li $t0, 0
	sw $t0, -4412($fp)
	lw $t0, -1040($fp)
	sw $t0, -4416($fp)
	lw $t1, -4416($fp)
	li $t2, 0
	bne $t1, $t2, label571
	j label570
label571:
	li $t0, 60121
	sw $t0, -4420($fp)
	lw $t1, -4420($fp)
	li $t2, 0
	bne $t1, $t2, label568
	j label570
label570:
	lw $t0, -2900($fp)
	sw $t0, -4424($fp)
	lw $t1, -4424($fp)
	li $t2, 0
	bne $t1, $t2, label568
	j label569
label568:
	li $t0, 1
	sw $t0, -4412($fp)
label569:
	lw $t0, -1388($fp)
	sw $t0, -4428($fp)
	jal f6
	sw $v0, -4432($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -4436($fp)
	li $t0, 43400
	sw $t0, -4440($fp)
	lw $t0, -1076($fp)
	sw $t0, -4444($fp)
	lw $t1, -4440($fp)
	lw $t2, -4444($fp)
	bne $t1, $t2, label572
	j label574
label574:
	li $t0, 34934
	sw $t0, -4448($fp)
	lw $t1, -4448($fp)
	li $t2, 0
	bne $t1, $t2, label572
	j label573
label572:
	li $t0, 1
	sw $t0, -4436($fp)
label573:
	li $t0, 1393
	sw $t0, -4452($fp)
	li $t0, 0
	lw $t1, -4452($fp)
	sub $t0, $t0, $t1
	sw $t0, -4456($fp)
	li $t0, 0
	lw $t1, -4456($fp)
	sub $t0, $t0, $t1
	sw $t0, -4460($fp)
	addi $sp, $sp, -4
	lw $t0, -4428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4460($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4464($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -4384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4464($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4468($fp)
	addi $sp, $sp, 20
	lw $t1, -4468($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label562
label563:
	li $t0, 64607
	sw $t0, -4472($fp)
	lw $t0, -824($fp)
	sw $t0, -4476($fp)
	lw $t0, -4472($fp)
	lw $t1, -4476($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4480($fp)
	li $t0, 0
	sw $t0, -4484($fp)
	li $t0, 24578
	sw $t0, -4488($fp)
	lw $t1, -4488($fp)
	li $t2, 0
	bne $t1, $t2, label576
	j label575
label575:
	li $t0, 1
	sw $t0, -4484($fp)
label576:
	lw $t0, -4480($fp)
	lw $t1, -4484($fp)
	add $t0, $t0, $t1
	sw $t0, -4492($fp)
	lw $t1, -4492($fp)
	li $t2, 0
	bne $t1, $t2, label561
	j label562
label561:
	li $t0, 1
	sw $t0, -4380($fp)
label562:
label546:
	li $t0, 38224
	sw $t0, -4496($fp)
	lw $t0, -4496($fp)
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	sw $t0, -4504($fp)
	li $t0, 0
	sw $t0, -4508($fp)
	lw $t0, -1400($fp)
	sw $t0, -4512($fp)
	li $t0, 0
	sw $t0, -4516($fp)
	li $t0, 0
	sw $t0, -4520($fp)
	li $t0, 52186
	sw $t0, -4524($fp)
	li $t0, 17154
	sw $t0, -4528($fp)
	lw $t1, -4524($fp)
	lw $t2, -4528($fp)
	bgt $t1, $t2, label582
	j label583
label582:
	li $t0, 1
	sw $t0, -4520($fp)
label583:
	li $t0, 52913
	sw $t0, -4532($fp)
	lw $t1, -4520($fp)
	lw $t2, -4532($fp)
	bne $t1, $t2, label580
	j label581
label580:
	li $t0, 1
	sw $t0, -4516($fp)
label581:
	li $t0, 40409
	sw $t0, -4536($fp)
	addi $sp, $sp, -4
	lw $t0, -4512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4536($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4540($fp)
	addi $sp, $sp, 16
	lw $t1, -4540($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label578
label579:
	li $t0, 13768
	sw $t0, -4544($fp)
	lw $t0, -836($fp)
	sw $t0, -4548($fp)
	lw $t0, -4548($fp)
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -4552($fp)
	li $t0, 16045
	sw $t0, -4556($fp)
	lw $t0, -4556($fp)
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	sw $t0, -4560($fp)
	addi $t0, $fp, -84
	sw $t0, -4564($fp)
	li $t0, 5
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
	li $t0, 0
	lw $t1, -4580($fp)
	sub $t0, $t0, $t1
	sw $t0, -4584($fp)
	addi $sp, $sp, -4
	lw $t0, -4552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4584($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4588($fp)
	addi $sp, $sp, 16
	lw $t1, -4544($fp)
	lw $t2, -4588($fp)
	beq $t1, $t2, label577
	j label578
label577:
	li $t0, 1
	sw $t0, -4508($fp)
label578:
	j label543
label542:
	li $t0, 0
	sw $t0, -4592($fp)
	lw $t0, -1040($fp)
	sw $t0, -4596($fp)
	lw $t1, -4596($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label584
label584:
	li $t0, 1
	sw $t0, -4592($fp)
label585:
	li $t0, 0
	lw $t1, -4592($fp)
	sub $t0, $t0, $t1
	sw $t0, -4600($fp)
label543:
	li $t0, 59208
	sw $t0, -4640($fp)
	addi $t0, $fp, -4636
	sw $t0, -4644($fp)
	li $t0, 0
	sw $t0, -4648($fp)
	lw $t0, -4648($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4652($fp)
	lw $t0, -4644($fp)
	lw $t1, -4652($fp)
	add $t0, $t0, $t1
	sw $t0, -4656($fp)
	lw $t0, -4640($fp)
	lw $t1, -4656($fp)
	sw $t0, 0($t1)
	lw $t0, -4656($fp)
	lw $t1, 0($t0)
	sw $t1, -4660($fp)
	li $t0, 17238
	sw $t0, -4664($fp)
	addi $t0, $fp, -4636
	sw $t0, -4668($fp)
	li $t0, 1
	sw $t0, -4672($fp)
	lw $t0, -4672($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4676($fp)
	lw $t0, -4668($fp)
	lw $t1, -4676($fp)
	add $t0, $t0, $t1
	sw $t0, -4680($fp)
	lw $t0, -4664($fp)
	lw $t1, -4680($fp)
	sw $t0, 0($t1)
	lw $t0, -4680($fp)
	lw $t1, 0($t0)
	sw $t1, -4684($fp)
	li $t0, 25307
	sw $t0, -4688($fp)
	addi $t0, $fp, -4636
	sw $t0, -4692($fp)
	li $t0, 2
	sw $t0, -4696($fp)
	lw $t0, -4696($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4700($fp)
	lw $t0, -4692($fp)
	lw $t1, -4700($fp)
	add $t0, $t0, $t1
	sw $t0, -4704($fp)
	lw $t0, -4688($fp)
	lw $t1, -4704($fp)
	sw $t0, 0($t1)
	lw $t0, -4704($fp)
	lw $t1, 0($t0)
	sw $t1, -4708($fp)
	li $t0, 9874
	sw $t0, -4712($fp)
	addi $t0, $fp, -4636
	sw $t0, -4716($fp)
	li $t0, 3
	sw $t0, -4720($fp)
	lw $t0, -4720($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4724($fp)
	lw $t0, -4716($fp)
	lw $t1, -4724($fp)
	add $t0, $t0, $t1
	sw $t0, -4728($fp)
	lw $t0, -4712($fp)
	lw $t1, -4728($fp)
	sw $t0, 0($t1)
	lw $t0, -4728($fp)
	lw $t1, 0($t0)
	sw $t1, -4732($fp)
	li $t0, 51488
	sw $t0, -4736($fp)
	addi $t0, $fp, -4636
	sw $t0, -4740($fp)
	li $t0, 4
	sw $t0, -4744($fp)
	lw $t0, -4744($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4748($fp)
	lw $t0, -4740($fp)
	lw $t1, -4748($fp)
	add $t0, $t0, $t1
	sw $t0, -4752($fp)
	lw $t0, -4736($fp)
	lw $t1, -4752($fp)
	sw $t0, 0($t1)
	lw $t0, -4752($fp)
	lw $t1, 0($t0)
	sw $t1, -4756($fp)
	li $t0, 24199
	sw $t0, -4760($fp)
	addi $t0, $fp, -4636
	sw $t0, -4764($fp)
	li $t0, 5
	sw $t0, -4768($fp)
	lw $t0, -4768($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4772($fp)
	lw $t0, -4764($fp)
	lw $t1, -4772($fp)
	add $t0, $t0, $t1
	sw $t0, -4776($fp)
	lw $t0, -4760($fp)
	lw $t1, -4776($fp)
	sw $t0, 0($t1)
	lw $t0, -4776($fp)
	lw $t1, 0($t0)
	sw $t1, -4780($fp)
	li $t0, 61779
	sw $t0, -4784($fp)
	addi $t0, $fp, -4636
	sw $t0, -4788($fp)
	li $t0, 6
	sw $t0, -4792($fp)
	lw $t0, -4792($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4796($fp)
	lw $t0, -4788($fp)
	lw $t1, -4796($fp)
	add $t0, $t0, $t1
	sw $t0, -4800($fp)
	lw $t0, -4784($fp)
	lw $t1, -4800($fp)
	sw $t0, 0($t1)
	lw $t0, -4800($fp)
	lw $t1, 0($t0)
	sw $t1, -4804($fp)
	li $t0, 33252
	sw $t0, -4808($fp)
	addi $t0, $fp, -4636
	sw $t0, -4812($fp)
	li $t0, 7
	sw $t0, -4816($fp)
	lw $t0, -4816($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4820($fp)
	lw $t0, -4812($fp)
	lw $t1, -4820($fp)
	add $t0, $t0, $t1
	sw $t0, -4824($fp)
	lw $t0, -4808($fp)
	lw $t1, -4824($fp)
	sw $t0, 0($t1)
	lw $t0, -4824($fp)
	lw $t1, 0($t0)
	sw $t1, -4828($fp)
	li $t0, 31962
	sw $t0, -4832($fp)
	addi $t0, $fp, -4636
	sw $t0, -4836($fp)
	li $t0, 8
	sw $t0, -4840($fp)
	lw $t0, -4840($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4844($fp)
	lw $t0, -4836($fp)
	lw $t1, -4844($fp)
	add $t0, $t0, $t1
	sw $t0, -4848($fp)
	lw $t0, -4832($fp)
	lw $t1, -4848($fp)
	sw $t0, 0($t1)
	lw $t0, -4848($fp)
	lw $t1, 0($t0)
	sw $t1, -4852($fp)
	li $t0, 52060
	sw $t0, -4856($fp)
	lw $t0, -4856($fp)
	sw $t0, -4860($fp)
	lw $t0, -4860($fp)
	sw $t0, -4864($fp)
	lw $t0, -848($fp)
	sw $t0, -4868($fp)
	addi $t0, $fp, -4636
	sw $t0, -4872($fp)
	lw $t0, -4860($fp)
	sw $t0, -4876($fp)
	lw $t0, -1592($fp)
	sw $t0, -4880($fp)
	lw $t0, -4876($fp)
	lw $t1, -4880($fp)
	add $t0, $t0, $t1
	sw $t0, -4884($fp)
	li $t0, 4
	lw $t1, -4884($fp)
	mul $t0, $t0, $t1
	sw $t0, -4888($fp)
	lw $t0, -4888($fp)
	lw $t1, -4872($fp)
	add $t0, $t0, $t1
	sw $t0, -4892($fp)
	lw $t0, -4892($fp)
	lw $t1, 0($t0)
	sw $t1, -4896($fp)
	lw $t0, -4868($fp)
	lw $t1, -4896($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4900($fp)
	lw $t1, -4900($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label587
label586:
	li $t0, 0
	sw $t0, -4904($fp)
	lw $t0, -1064($fp)
	sw $t0, -4908($fp)
	lw $t1, -4908($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label589
label589:
	li $t0, 1
	sw $t0, -4904($fp)
label590:
	lw $ra, -4($fp)
	lw $v0, -4904($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label588
label587:
	li $t0, 0
	sw $t0, -4912($fp)
	jal f6
	sw $v0, -4916($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -4916($fp)
	sub $t0, $t0, $t1
	sw $t0, -4920($fp)
	li $t0, 0
	lw $t1, -4920($fp)
	sub $t0, $t0, $t1
	sw $t0, -4924($fp)
	lw $t1, -4924($fp)
	li $t2, 0
	bne $t1, $t2, label592
	j label591
label591:
	li $t0, 1
	sw $t0, -4912($fp)
label592:
	lw $ra, -4($fp)
	lw $v0, -4912($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label588:
	li $t0, 43852
	sw $t0, -4928($fp)
	lw $t0, -4928($fp)
	sw $t0, -4932($fp)
	lw $t0, -4932($fp)
	sw $t0, -4936($fp)
	addi $t0, $fp, -24
	sw $t0, -4940($fp)
	li $t0, 0
	sw $t0, -4944($fp)
	li $t0, 51046
	sw $t0, -4948($fp)
	lw $t0, -4932($fp)
	sw $t0, -4952($fp)
	lw $t1, -4948($fp)
	lw $t2, -4952($fp)
	bge $t1, $t2, label596
	j label595
label596:
	li $t0, 22390
	sw $t0, -4956($fp)
	lw $t1, -4956($fp)
	li $t2, 0
	bne $t1, $t2, label593
	j label595
label595:
	li $t0, 45245
	sw $t0, -4960($fp)
	li $t0, 28910
	sw $t0, -4964($fp)
	lw $t1, -4960($fp)
	lw $t2, -4964($fp)
	bne $t1, $t2, label593
	j label594
label593:
	li $t0, 1
	sw $t0, -4944($fp)
label594:
	li $t0, 4
	lw $t1, -4944($fp)
	mul $t0, $t0, $t1
	sw $t0, -4968($fp)
	lw $t0, -4968($fp)
	lw $t1, -4940($fp)
	add $t0, $t0, $t1
	sw $t0, -4972($fp)
	lw $t0, -4972($fp)
	lw $t1, 0($t0)
	sw $t1, -4976($fp)
	lw $t0, -860($fp)
	sw $t0, -4980($fp)
	addi $t0, $fp, -752
	sw $t0, -4984($fp)
	li $t0, 0
	sw $t0, -4988($fp)
	lw $t0, -3056($fp)
	sw $t0, -4992($fp)
	lw $t1, -4992($fp)
	li $t2, 0
	bne $t1, $t2, label599
	j label598
label599:
	li $t0, 39830
	sw $t0, -4996($fp)
	lw $t1, -4996($fp)
	li $t2, 0
	bne $t1, $t2, label597
	j label598
label597:
	li $t0, 1
	sw $t0, -4988($fp)
label598:
	lw $t0, -1244($fp)
	sw $t0, -5000($fp)
	lw $t0, -5000($fp)
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -5004($fp)
	li $t0, 0
	sw $t0, -5008($fp)
	lw $t0, -2900($fp)
	sw $t0, -5012($fp)
	lw $t0, -3056($fp)
	sw $t0, -5016($fp)
	lw $t1, -5012($fp)
	lw $t2, -5016($fp)
	bge $t1, $t2, label600
	j label601
label600:
	li $t0, 1
	sw $t0, -5008($fp)
label601:
	li $t0, 0
	sw $t0, -5020($fp)
	lw $t0, -1244($fp)
	sw $t0, -5024($fp)
	li $t0, 57324
	sw $t0, -5028($fp)
	lw $t0, -5024($fp)
	lw $t1, -5028($fp)
	add $t0, $t0, $t1
	sw $t0, -5032($fp)
	lw $t0, -1040($fp)
	sw $t0, -5036($fp)
	lw $t1, -5032($fp)
	lw $t2, -5036($fp)
	bge $t1, $t2, label602
	j label603
label602:
	li $t0, 1
	sw $t0, -5020($fp)
label603:
	addi $sp, $sp, -4
	lw $t0, -4988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5020($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5040($fp)
	addi $sp, $sp, 20
	li $t0, 4
	lw $t1, -5040($fp)
	mul $t0, $t0, $t1
	sw $t0, -5044($fp)
	lw $t0, -5044($fp)
	lw $t1, -4984($fp)
	add $t0, $t0, $t1
	sw $t0, -5048($fp)
	lw $t0, -5048($fp)
	lw $t1, 0($t0)
	sw $t1, -5052($fp)
	lw $t0, -4980($fp)
	lw $t1, -5052($fp)
	mul $t0, $t0, $t1
	sw $t0, -5056($fp)
	li $t0, 0
	sw $t0, -5060($fp)
	li $t0, 47948
	sw $t0, -5064($fp)
	lw $t1, -5064($fp)
	li $t2, 0
	bne $t1, $t2, label606
	j label605
label606:
	li $t0, 5897
	sw $t0, -5068($fp)
	lw $t1, -5068($fp)
	li $t2, 0
	bne $t1, $t2, label604
	j label605
label604:
	li $t0, 1
	sw $t0, -5060($fp)
label605:
	lw $t0, -5060($fp)
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -5072($fp)
	lw $t0, -5072($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -5076($fp)
	lw $t0, -2900($fp)
	sw $t0, -5080($fp)
	lw $t0, -5080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2892
	sw $t0, -5084($fp)
	li $t0, 0
	sw $t0, -5088($fp)
	li $t0, 4
	lw $t1, -5088($fp)
	mul $t0, $t0, $t1
	sw $t0, -5092($fp)
	lw $t0, -5092($fp)
	lw $t1, -5084($fp)
	add $t0, $t0, $t1
	sw $t0, -5096($fp)
	lw $t0, -5096($fp)
	lw $t1, 0($t0)
	sw $t1, -5100($fp)
	lw $t0, -5100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2892
	sw $t0, -5104($fp)
	li $t0, 1
	sw $t0, -5108($fp)
	li $t0, 4
	lw $t1, -5108($fp)
	mul $t0, $t0, $t1
	sw $t0, -5112($fp)
	lw $t0, -5112($fp)
	lw $t1, -5104($fp)
	add $t0, $t0, $t1
	sw $t0, -5116($fp)
	lw $t0, -5116($fp)
	lw $t1, 0($t0)
	sw $t1, -5120($fp)
	lw $t0, -5120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2892
	sw $t0, -5124($fp)
	li $t0, 2
	sw $t0, -5128($fp)
	li $t0, 4
	lw $t1, -5128($fp)
	mul $t0, $t0, $t1
	sw $t0, -5132($fp)
	lw $t0, -5132($fp)
	lw $t1, -5124($fp)
	add $t0, $t0, $t1
	sw $t0, -5136($fp)
	lw $t0, -5136($fp)
	lw $t1, 0($t0)
	sw $t1, -5140($fp)
	lw $t0, -5140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2892
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
	lw $t0, -5160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2892
	sw $t0, -5164($fp)
	li $t0, 4
	sw $t0, -5168($fp)
	li $t0, 4
	lw $t1, -5168($fp)
	mul $t0, $t0, $t1
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	lw $t1, -5164($fp)
	add $t0, $t0, $t1
	sw $t0, -5176($fp)
	lw $t0, -5176($fp)
	lw $t1, 0($t0)
	sw $t1, -5180($fp)
	lw $t0, -5180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2892
	sw $t0, -5184($fp)
	li $t0, 5
	sw $t0, -5188($fp)
	li $t0, 4
	lw $t1, -5188($fp)
	mul $t0, $t0, $t1
	sw $t0, -5192($fp)
	lw $t0, -5192($fp)
	lw $t1, -5184($fp)
	add $t0, $t0, $t1
	sw $t0, -5196($fp)
	lw $t0, -5196($fp)
	lw $t1, 0($t0)
	sw $t1, -5200($fp)
	lw $t0, -5200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3056($fp)
	sw $t0, -5204($fp)
	lw $t0, -5204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3068($fp)
	sw $t0, -5208($fp)
	lw $t0, -5208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3080($fp)
	sw $t0, -5212($fp)
	lw $t0, -5212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	jal f6
	sw $v0, -5216($fp)
	addi $sp, $sp, 4
	lw $ra, -4($fp)
	lw $v0, -5216($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label607:
	lw $t0, -836($fp)
	sw $t0, -5220($fp)
	lw $t1, -5220($fp)
	li $t2, 0
	bne $t1, $t2, label608
	j label609
label608:
	li $t0, 0
	sw $t0, -5224($fp)
	li $t0, 31059
	sw $t0, -5228($fp)
	li $t0, 0
	sw $t0, -5232($fp)
	li $t0, 47019
	sw $t0, -5236($fp)
	lw $t1, -5236($fp)
	li $t2, 0
	bne $t1, $t2, label612
	j label613
label612:
	li $t0, 1
	sw $t0, -5232($fp)
label613:
	lw $t0, -5228($fp)
	lw $t1, -5232($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5240($fp)
	li $t0, 0
	sw $t0, -5244($fp)
	lw $t0, -1400($fp)
	sw $t0, -5248($fp)
	lw $t1, -5248($fp)
	li $t2, 0
	bne $t1, $t2, label614
	j label615
label614:
	li $t0, 1
	sw $t0, -5244($fp)
label615:
	addi $t0, $fp, -780
	sw $t0, -5252($fp)
	lw $t0, -1076($fp)
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
	lw $t0, -5244($fp)
	lw $t1, -5268($fp)
	mul $t0, $t0, $t1
	sw $t0, -5272($fp)
	lw $t1, -5240($fp)
	lw $t2, -5272($fp)
	beq $t1, $t2, label610
	j label611
label610:
	li $t0, 1
	sw $t0, -5224($fp)
label611:
	lw $ra, -4($fp)
	lw $v0, -5224($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label607
label609:
label385:
	j label380
label382:
	li $t0, 30476
	sw $t0, -5276($fp)
	addi $t0, $fp, -24
	sw $t0, -5280($fp)
	li $t0, 0
	sw $t0, -5284($fp)
	li $t0, 4
	lw $t1, -5284($fp)
	mul $t0, $t0, $t1
	sw $t0, -5288($fp)
	lw $t0, -5288($fp)
	lw $t1, -5280($fp)
	add $t0, $t0, $t1
	sw $t0, -5292($fp)
	lw $t0, -5292($fp)
	lw $t1, 0($t0)
	sw $t1, -5296($fp)
	lw $t0, -5296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -5300($fp)
	li $t0, 1
	sw $t0, -5304($fp)
	li $t0, 4
	lw $t1, -5304($fp)
	mul $t0, $t0, $t1
	sw $t0, -5308($fp)
	lw $t0, -5308($fp)
	lw $t1, -5300($fp)
	add $t0, $t0, $t1
	sw $t0, -5312($fp)
	lw $t0, -5312($fp)
	lw $t1, 0($t0)
	sw $t1, -5316($fp)
	lw $t0, -5316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -5320($fp)
	li $t0, 2
	sw $t0, -5324($fp)
	li $t0, 4
	lw $t1, -5324($fp)
	mul $t0, $t0, $t1
	sw $t0, -5328($fp)
	lw $t0, -5328($fp)
	lw $t1, -5320($fp)
	add $t0, $t0, $t1
	sw $t0, -5332($fp)
	lw $t0, -5332($fp)
	lw $t1, 0($t0)
	sw $t1, -5336($fp)
	lw $t0, -5336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -5340($fp)
	li $t0, 3
	sw $t0, -5344($fp)
	li $t0, 4
	lw $t1, -5344($fp)
	mul $t0, $t0, $t1
	sw $t0, -5348($fp)
	lw $t0, -5348($fp)
	lw $t1, -5340($fp)
	add $t0, $t0, $t1
	sw $t0, -5352($fp)
	lw $t0, -5352($fp)
	lw $t1, 0($t0)
	sw $t1, -5356($fp)
	lw $t0, -5356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -5360($fp)
	li $t0, 4
	sw $t0, -5364($fp)
	li $t0, 4
	lw $t1, -5364($fp)
	mul $t0, $t0, $t1
	sw $t0, -5368($fp)
	lw $t0, -5368($fp)
	lw $t1, -5360($fp)
	add $t0, $t0, $t1
	sw $t0, -5372($fp)
	lw $t0, -5372($fp)
	lw $t1, 0($t0)
	sw $t1, -5376($fp)
	lw $t0, -5376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -5380($fp)
	li $t0, 0
	sw $t0, -5384($fp)
	li $t0, 4
	lw $t1, -5384($fp)
	mul $t0, $t0, $t1
	sw $t0, -5388($fp)
	lw $t0, -5388($fp)
	lw $t1, -5380($fp)
	add $t0, $t0, $t1
	sw $t0, -5392($fp)
	lw $t0, -5392($fp)
	lw $t1, 0($t0)
	sw $t1, -5396($fp)
	lw $t0, -5396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -5400($fp)
	li $t0, 1
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
	lw $t0, -5416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -5420($fp)
	li $t0, 2
	sw $t0, -5424($fp)
	li $t0, 4
	lw $t1, -5424($fp)
	mul $t0, $t0, $t1
	sw $t0, -5428($fp)
	lw $t0, -5428($fp)
	lw $t1, -5420($fp)
	add $t0, $t0, $t1
	sw $t0, -5432($fp)
	lw $t0, -5432($fp)
	lw $t1, 0($t0)
	sw $t1, -5436($fp)
	lw $t0, -5436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -5440($fp)
	li $t0, 3
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
	lw $t0, -5456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -5460($fp)
	li $t0, 4
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
	lw $t0, -5476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -5480($fp)
	li $t0, 5
	sw $t0, -5484($fp)
	li $t0, 4
	lw $t1, -5484($fp)
	mul $t0, $t0, $t1
	sw $t0, -5488($fp)
	lw $t0, -5488($fp)
	lw $t1, -5480($fp)
	add $t0, $t0, $t1
	sw $t0, -5492($fp)
	lw $t0, -5492($fp)
	lw $t1, 0($t0)
	sw $t1, -5496($fp)
	lw $t0, -5496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -5500($fp)
	li $t0, 6
	sw $t0, -5504($fp)
	li $t0, 4
	lw $t1, -5504($fp)
	mul $t0, $t0, $t1
	sw $t0, -5508($fp)
	lw $t0, -5508($fp)
	lw $t1, -5500($fp)
	add $t0, $t0, $t1
	sw $t0, -5512($fp)
	lw $t0, -5512($fp)
	lw $t1, 0($t0)
	sw $t1, -5516($fp)
	lw $t0, -5516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
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
	addi $t0, $fp, -84
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
	addi $t0, $fp, -84
	sw $t0, -5560($fp)
	li $t0, 2
	sw $t0, -5564($fp)
	li $t0, 4
	lw $t1, -5564($fp)
	mul $t0, $t0, $t1
	sw $t0, -5568($fp)
	lw $t0, -5568($fp)
	lw $t1, -5560($fp)
	add $t0, $t0, $t1
	sw $t0, -5572($fp)
	lw $t0, -5572($fp)
	lw $t1, 0($t0)
	sw $t1, -5576($fp)
	lw $t0, -5576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -5580($fp)
	li $t0, 3
	sw $t0, -5584($fp)
	li $t0, 4
	lw $t1, -5584($fp)
	mul $t0, $t0, $t1
	sw $t0, -5588($fp)
	lw $t0, -5588($fp)
	lw $t1, -5580($fp)
	add $t0, $t0, $t1
	sw $t0, -5592($fp)
	lw $t0, -5592($fp)
	lw $t1, 0($t0)
	sw $t1, -5596($fp)
	lw $t0, -5596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -5600($fp)
	li $t0, 4
	sw $t0, -5604($fp)
	li $t0, 4
	lw $t1, -5604($fp)
	mul $t0, $t0, $t1
	sw $t0, -5608($fp)
	lw $t0, -5608($fp)
	lw $t1, -5600($fp)
	add $t0, $t0, $t1
	sw $t0, -5612($fp)
	lw $t0, -5612($fp)
	lw $t1, 0($t0)
	sw $t1, -5616($fp)
	lw $t0, -5616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -5620($fp)
	li $t0, 5
	sw $t0, -5624($fp)
	li $t0, 4
	lw $t1, -5624($fp)
	mul $t0, $t0, $t1
	sw $t0, -5628($fp)
	lw $t0, -5628($fp)
	lw $t1, -5620($fp)
	add $t0, $t0, $t1
	sw $t0, -5632($fp)
	lw $t0, -5632($fp)
	lw $t1, 0($t0)
	sw $t1, -5636($fp)
	lw $t0, -5636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -5640($fp)
	li $t0, 6
	sw $t0, -5644($fp)
	li $t0, 4
	lw $t1, -5644($fp)
	mul $t0, $t0, $t1
	sw $t0, -5648($fp)
	lw $t0, -5648($fp)
	lw $t1, -5640($fp)
	add $t0, $t0, $t1
	sw $t0, -5652($fp)
	lw $t0, -5652($fp)
	lw $t1, 0($t0)
	sw $t1, -5656($fp)
	lw $t0, -5656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -84
	sw $t0, -5660($fp)
	li $t0, 7
	sw $t0, -5664($fp)
	li $t0, 4
	lw $t1, -5664($fp)
	mul $t0, $t0, $t1
	sw $t0, -5668($fp)
	lw $t0, -5668($fp)
	lw $t1, -5660($fp)
	add $t0, $t0, $t1
	sw $t0, -5672($fp)
	lw $t0, -5672($fp)
	lw $t1, 0($t0)
	sw $t1, -5676($fp)
	lw $t0, -5676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -5680($fp)
	lw $t0, -5680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -5684($fp)
	li $t0, 0
	sw $t0, -5688($fp)
	addi $t0, $fp, -84
	sw $t0, -5692($fp)
	li $t0, 4
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
	li $t0, 17126
	sw $t0, -5712($fp)
	lw $t1, -5708($fp)
	lw $t2, -5712($fp)
	bgt $t1, $t2, label616
	j label617
label616:
	li $t0, 1
	sw $t0, -5688($fp)
label617:
	li $t0, 4
	lw $t1, -5688($fp)
	mul $t0, $t0, $t1
	sw $t0, -5716($fp)
	lw $t0, -5716($fp)
	lw $t1, -5684($fp)
	add $t0, $t0, $t1
	sw $t0, -5720($fp)
	lw $t0, -5720($fp)
	lw $t1, 0($t0)
	sw $t1, -5724($fp)
	lw $ra, -4($fp)
	lw $v0, -5724($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -380
	li $t0, 20901
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
	li $t0, 9269
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
	li $t0, 30894
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
	li $t0, 7018
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
	li $t0, 53978
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
	li $t0, 46939
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
	li $t0, 690
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 0
	sw $t0, -188($fp)
	addi $t0, $fp, -28
	sw $t0, -192($fp)
	lw $t0, -180($fp)
	sw $t0, -196($fp)
	li $t0, 4
	lw $t1, -196($fp)
	mul $t0, $t0, $t1
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	lw $t1, -192($fp)
	add $t0, $t0, $t1
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	lw $t1, 0($t0)
	sw $t1, -208($fp)
	li $t0, 6808
	sw $t0, -212($fp)
	lw $t1, -208($fp)
	lw $t2, -212($fp)
	beq $t1, $t2, label618
	j label619
label618:
	li $t0, 1
	sw $t0, -188($fp)
label619:
	li $t0, 0
	sw $t0, -216($fp)
	li $t0, 10564
	sw $t0, -220($fp)
	li $t0, 57169
	sw $t0, -224($fp)
	lw $t0, -220($fp)
	lw $t1, -224($fp)
	sub $t0, $t0, $t1
	sw $t0, -228($fp)
	lw $t1, -228($fp)
	li $t2, 0
	bne $t1, $t2, label622
	j label621
label622:
	li $t0, 30910
	sw $t0, -232($fp)
	lw $t1, -232($fp)
	li $t2, 0
	bne $t1, $t2, label620
	j label621
label620:
	li $t0, 1
	sw $t0, -216($fp)
label621:
	li $t0, 0
	sw $t0, -236($fp)
	li $t0, 5680
	sw $t0, -240($fp)
	lw $t0, -180($fp)
	sw $t0, -244($fp)
	lw $t0, -240($fp)
	lw $t1, -244($fp)
	sub $t0, $t0, $t1
	sw $t0, -248($fp)
	li $t0, 6711
	sw $t0, -252($fp)
	lw $t1, -248($fp)
	lw $t2, -252($fp)
	blt $t1, $t2, label623
	j label624
label623:
	li $t0, 1
	sw $t0, -236($fp)
label624:
	addi $sp, $sp, -4
	lw $t0, -188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -236($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -256($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -28
	sw $t0, -260($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -280($fp)
	li $t0, 1
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
	li $t0, 2
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
	li $t0, 3
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
	li $t0, 4
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
	li $t0, 5
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
	lw $t0, -180($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 24885
	sw $t0, -384($fp)
	lw $ra, -4($fp)
	lw $v0, -384($fp)
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
	jal f9
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
