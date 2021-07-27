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
	addi $sp, $sp, -596
	li $t0, 20156
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
	li $t0, 710
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
	li $t0, 59019
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -72($fp)
	li $t0, 2404
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	li $t0, 10088
	sw $t0, -124($fp)
	addi $t0, $fp, -120
	sw $t0, -128($fp)
	li $t0, 0
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
	li $t0, 56626
	sw $t0, -148($fp)
	addi $t0, $fp, -120
	sw $t0, -152($fp)
	li $t0, 1
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
	li $t0, 63234
	sw $t0, -172($fp)
	addi $t0, $fp, -120
	sw $t0, -176($fp)
	li $t0, 2
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
	li $t0, 12877
	sw $t0, -196($fp)
	addi $t0, $fp, -120
	sw $t0, -200($fp)
	li $t0, 3
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
	li $t0, 49200
	sw $t0, -220($fp)
	addi $t0, $fp, -120
	sw $t0, -224($fp)
	li $t0, 4
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
	li $t0, 18575
	sw $t0, -244($fp)
	addi $t0, $fp, -120
	sw $t0, -248($fp)
	li $t0, 5
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
	li $t0, 2628
	sw $t0, -268($fp)
	addi $t0, $fp, -120
	sw $t0, -272($fp)
	li $t0, 6
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
	li $t0, 37128
	sw $t0, -292($fp)
	addi $t0, $fp, -120
	sw $t0, -296($fp)
	li $t0, 7
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
	li $t0, 44660
	sw $t0, -316($fp)
	addi $t0, $fp, -120
	sw $t0, -320($fp)
	li $t0, 8
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
	li $t0, 0
	sw $t0, -340($fp)
	lw $t0, 8($fp)
	sw $t0, -344($fp)
	li $t0, 0
	lw $t1, -344($fp)
	sub $t0, $t0, $t1
	sw $t0, -348($fp)
	li $t0, 0
	sw $t0, -352($fp)
	li $t0, 337
	sw $t0, -356($fp)
	li $t0, 42902
	sw $t0, -360($fp)
	lw $t0, -356($fp)
	lw $t1, -360($fp)
	mul $t0, $t0, $t1
	sw $t0, -364($fp)
	li $t0, 0
	lw $t1, -364($fp)
	sub $t0, $t0, $t1
	sw $t0, -368($fp)
	addi $t0, $fp, -120
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
	lw $t1, -368($fp)
	lw $t2, -388($fp)
	blt $t1, $t2, label123
	j label124
label123:
	li $t0, 1
	sw $t0, -352($fp)
label124:
	lw $t1, -348($fp)
	lw $t2, -352($fp)
	beq $t1, $t2, label121
	j label122
label121:
	li $t0, 1
	sw $t0, -340($fp)
label122:
	li $t0, 0
	sw $t0, -392($fp)
	lw $t0, 8($fp)
	sw $t0, -396($fp)
	lw $t1, -396($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label127
label127:
	li $t0, 0
	sw $t0, -400($fp)
	lw $t0, -80($fp)
	sw $t0, -404($fp)
	lw $t0, 8($fp)
	sw $t0, -408($fp)
	lw $t1, -404($fp)
	lw $t2, -408($fp)
	ble $t1, $t2, label128
	j label129
label128:
	li $t0, 1
	sw $t0, -400($fp)
label129:
	addi $t0, $fp, -120
	sw $t0, -412($fp)
	li $t0, 7
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
	addi $t0, $fp, -12
	sw $t0, -432($fp)
	lw $t0, -80($fp)
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
	addi $t0, $fp, -12
	sw $t0, -452($fp)
	li $t0, 1
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
	addi $sp, $sp, -4
	lw $t0, -448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -468($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -472($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -472($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -476($fp)
	addi $sp, $sp, 12
	lw $t1, -400($fp)
	lw $t2, -476($fp)
	bne $t1, $t2, label125
	j label126
label125:
	li $t0, 1
	sw $t0, -392($fp)
label126:
	lw $t0, -68($fp)
	sw $t0, -480($fp)
	addi $t0, $fp, -12
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
	addi $t0, $fp, -12
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
	lw $t0, -68($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -532($fp)
	addi $t0, $fp, -12
	sw $t0, -536($fp)
	lw $t0, 8($fp)
	sw $t0, -540($fp)
	li $t0, 4
	lw $t1, -540($fp)
	mul $t0, $t0, $t1
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	lw $t1, -536($fp)
	add $t0, $t0, $t1
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	lw $t1, 0($t0)
	sw $t1, -552($fp)
	lw $t1, -552($fp)
	li $t2, 0
	bne $t1, $t2, label132
	j label131
label132:
	lw $t0, 4($fp)
	sw $t0, -556($fp)
	lw $t1, -556($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label131
label130:
	li $t0, 1
	sw $t0, -532($fp)
label131:
	lw $t0, -80($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	sw $t0, -564($fp)
	addi $sp, $sp, -4
	lw $t0, -532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -564($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -568($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -572($fp)
	addi $t0, $fp, -12
	sw $t0, -576($fp)
	li $t0, 1
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
	lw $t1, -592($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label133
label133:
	li $t0, 1
	sw $t0, -572($fp)
label134:
	li $t0, 0
	lw $t1, -572($fp)
	sub $t0, $t0, $t1
	sw $t0, -596($fp)
	lw $t0, -568($fp)
	lw $t1, -596($fp)
	sub $t0, $t0, $t1
	sw $t0, -600($fp)
	lw $ra, -4($fp)
	lw $v0, -600($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -812
	li $t0, 105
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	li $t0, 8394
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
	li $t0, 61553
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
	li $t0, 50509
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
	li $t0, 35012
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
	li $t0, 24847
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
	li $t0, 24725
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
	li $t0, 47030
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
	li $t0, 45003
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	li $t0, 25435
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	li $t0, 40513
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	lw $t0, -244($fp)
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -244($fp)
	sw $t0, -256($fp)
	lw $ra, -4($fp)
	lw $v0, -256($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 47408
	sw $t0, -260($fp)
	li $t0, 0
	lw $t1, -260($fp)
	sub $t0, $t0, $t1
	sw $t0, -264($fp)
	li $t0, 0
	lw $t1, -264($fp)
	sub $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $t0, -244($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -276($fp)
	addi $t0, $fp, -32
	sw $t0, -280($fp)
	li $t0, 3
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
	lw $t0, -40($fp)
	sw $t0, -300($fp)
	lw $t0, -296($fp)
	lw $t1, -300($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -304($fp)
	li $t0, 0
	sw $t0, -308($fp)
	lw $t0, -220($fp)
	sw $t0, -312($fp)
	li $t0, 15268
	sw $t0, -316($fp)
	lw $t1, -312($fp)
	lw $t2, -316($fp)
	beq $t1, $t2, label138
	j label140
label140:
	li $t0, 63681
	sw $t0, -320($fp)
	lw $t1, -320($fp)
	li $t2, 0
	bne $t1, $t2, label138
	j label139
label138:
	li $t0, 1
	sw $t0, -308($fp)
label139:
	li $t0, 0
	sw $t0, -324($fp)
	li $t0, 31603
	sw $t0, -328($fp)
	li $t0, 45106
	sw $t0, -332($fp)
	lw $t0, -328($fp)
	lw $t1, -332($fp)
	add $t0, $t0, $t1
	sw $t0, -336($fp)
	li $t0, 48401
	sw $t0, -340($fp)
	lw $t1, -336($fp)
	lw $t2, -340($fp)
	bne $t1, $t2, label141
	j label142
label141:
	li $t0, 1
	sw $t0, -324($fp)
label142:
	li $t0, 0
	sw $t0, -344($fp)
	lw $t0, 4($fp)
	sw $t0, -348($fp)
	li $t0, 35523
	sw $t0, -352($fp)
	lw $t0, -348($fp)
	lw $t1, -352($fp)
	mul $t0, $t0, $t1
	sw $t0, -356($fp)
	lw $t1, -356($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label145
label145:
	lw $t0, 4($fp)
	sw $t0, -360($fp)
	lw $t1, -360($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label144
label143:
	li $t0, 1
	sw $t0, -344($fp)
label144:
	addi $sp, $sp, -4
	lw $t0, -324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -344($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -364($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -364($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -368($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -368($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -372($fp)
	addi $sp, $sp, 12
	lw $t1, -372($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label136
label137:
	li $t0, 0
	sw $t0, -376($fp)
	li $t0, 0
	sw $t0, -380($fp)
	lw $t0, -220($fp)
	sw $t0, -384($fp)
	lw $t0, -220($fp)
	sw $t0, -388($fp)
	lw $t1, -384($fp)
	lw $t2, -388($fp)
	ble $t1, $t2, label148
	j label149
label148:
	li $t0, 1
	sw $t0, -380($fp)
label149:
	lw $t0, 16($fp)
	sw $t0, -392($fp)
	lw $t1, -380($fp)
	lw $t2, -392($fp)
	bne $t1, $t2, label146
	j label147
label146:
	li $t0, 1
	sw $t0, -376($fp)
label147:
	lw $t0, -220($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -400($fp)
	li $t0, 45069
	sw $t0, -404($fp)
	li $t0, 0
	lw $t1, -404($fp)
	sub $t0, $t0, $t1
	sw $t0, -408($fp)
	li $t0, 0
	sw $t0, -412($fp)
	li $t0, 29693
	sw $t0, -416($fp)
	li $t0, 0
	lw $t1, -416($fp)
	sub $t0, $t0, $t1
	sw $t0, -420($fp)
	lw $t1, -420($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label152
label152:
	li $t0, 30784
	sw $t0, -424($fp)
	lw $t1, -424($fp)
	li $t2, 0
	bne $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -412($fp)
label151:
	li $t0, 0
	sw $t0, -428($fp)
	lw $t0, -232($fp)
	sw $t0, -432($fp)
	lw $t1, -432($fp)
	li $t2, 0
	bne $t1, $t2, label156
	j label154
label156:
	lw $t0, -220($fp)
	sw $t0, -436($fp)
	lw $t1, -436($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label154
label155:
	lw $t0, -244($fp)
	sw $t0, -440($fp)
	lw $t1, -440($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label154
label153:
	li $t0, 1
	sw $t0, -428($fp)
label154:
	li $t0, 0
	sw $t0, -444($fp)
	lw $t0, 4($fp)
	sw $t0, -448($fp)
	lw $t1, -448($fp)
	li $t2, 0
	bne $t1, $t2, label158
	j label157
label157:
	li $t0, 1
	sw $t0, -444($fp)
label158:
	lw $t0, -40($fp)
	sw $t0, -452($fp)
	lw $t0, -444($fp)
	lw $t1, -452($fp)
	add $t0, $t0, $t1
	sw $t0, -456($fp)
	li $t0, 20513
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, 20($fp)
	lw $t0, 20($fp)
	sw $t0, -464($fp)
	addi $sp, $sp, -4
	lw $t0, -408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -464($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -468($fp)
	addi $sp, $sp, 24
	lw $t0, -232($fp)
	sw $t0, -472($fp)
	lw $t0, -468($fp)
	lw $t1, -472($fp)
	sub $t0, $t0, $t1
	sw $t0, -476($fp)
	li $t0, 60889
	sw $t0, -480($fp)
	li $t0, 0
	lw $t1, -480($fp)
	sub $t0, $t0, $t1
	sw $t0, -484($fp)
	li $t0, 0
	sw $t0, -488($fp)
	li $t0, 0
	sw $t0, -492($fp)
	li $t0, 60291
	sw $t0, -496($fp)
	lw $t0, 8($fp)
	sw $t0, -500($fp)
	lw $t0, -496($fp)
	lw $t1, -500($fp)
	mul $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $t0, -40($fp)
	sw $t0, -508($fp)
	lw $t1, -504($fp)
	lw $t2, -508($fp)
	beq $t1, $t2, label161
	j label162
label161:
	li $t0, 1
	sw $t0, -492($fp)
label162:
	li $t0, 0
	sw $t0, -512($fp)
	li $t0, 29762
	sw $t0, -516($fp)
	li $t0, 48456
	sw $t0, -520($fp)
	lw $t0, -516($fp)
	lw $t1, -520($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -524($fp)
	li $t0, 0
	sw $t0, -528($fp)
	li $t0, 42805
	sw $t0, -532($fp)
	lw $t0, -232($fp)
	sw $t0, -536($fp)
	lw $t0, -532($fp)
	lw $t1, -536($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -540($fp)
	li $t0, 51366
	sw $t0, -544($fp)
	lw $t1, -540($fp)
	lw $t2, -544($fp)
	beq $t1, $t2, label165
	j label166
label165:
	li $t0, 1
	sw $t0, -528($fp)
label166:
	addi $sp, $sp, -4
	lw $t0, -524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -528($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -548($fp)
	addi $sp, $sp, 12
	lw $t0, 4($fp)
	sw $t0, -552($fp)
	lw $t1, -548($fp)
	lw $t2, -552($fp)
	bne $t1, $t2, label163
	j label164
label163:
	li $t0, 1
	sw $t0, -512($fp)
label164:
	addi $sp, $sp, -4
	lw $t0, -492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -512($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -556($fp)
	addi $sp, $sp, 12
	li $t0, 29611
	sw $t0, -560($fp)
	lw $t1, -556($fp)
	lw $t2, -560($fp)
	bne $t1, $t2, label159
	j label160
label159:
	li $t0, 1
	sw $t0, -488($fp)
label160:
	addi $sp, $sp, -4
	lw $t0, -376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -488($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -564($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -564($fp)
	sub $t0, $t0, $t1
	sw $t0, -568($fp)
	li $t0, 0
	sw $t0, -572($fp)
	li $t0, 29798
	sw $t0, -576($fp)
	lw $t1, -576($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label167
label167:
	li $t0, 1
	sw $t0, -572($fp)
label168:
	lw $t1, -568($fp)
	lw $t2, -572($fp)
	bge $t1, $t2, label135
	j label136
label135:
	li $t0, 1
	sw $t0, -276($fp)
label136:
	lw $ra, -4($fp)
	lw $v0, -276($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 39178
	sw $t0, -580($fp)
	li $t0, 0
	sw $t0, -584($fp)
	addi $t0, $fp, -32
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
	lw $t1, -604($fp)
	li $t2, 0
	bne $t1, $t2, label170
	j label171
label171:
	lw $t0, 20($fp)
	sw $t0, -608($fp)
	li $t0, 0
	lw $t1, -608($fp)
	sub $t0, $t0, $t1
	sw $t0, -612($fp)
	lw $t1, -612($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -584($fp)
label170:
	lw $t0, -40($fp)
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
	sw $t0, -640($fp)
	li $t0, 1
	sw $t0, -644($fp)
	li $t0, 4
	lw $t1, -644($fp)
	mul $t0, $t0, $t1
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	lw $t1, -640($fp)
	add $t0, $t0, $t1
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	lw $t1, 0($t0)
	sw $t1, -656($fp)
	lw $t0, -656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -660($fp)
	li $t0, 2
	sw $t0, -664($fp)
	li $t0, 4
	lw $t1, -664($fp)
	mul $t0, $t0, $t1
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	lw $t1, -660($fp)
	add $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	lw $t1, 0($t0)
	sw $t1, -676($fp)
	lw $t0, -676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -680($fp)
	li $t0, 3
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
	lw $t0, -696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -700($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -720($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -740($fp)
	li $t0, 6
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
	lw $t0, -220($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -232($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -768($fp)
	addi $t0, $fp, -32
	sw $t0, -772($fp)
	li $t0, 5
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
	li $t0, 39496
	sw $t0, -792($fp)
	li $t0, 0
	lw $t1, -792($fp)
	sub $t0, $t0, $t1
	sw $t0, -796($fp)
	lw $t0, -788($fp)
	lw $t1, -796($fp)
	add $t0, $t0, $t1
	sw $t0, -800($fp)
	lw $t0, -220($fp)
	sw $t0, -804($fp)
	lw $t0, -40($fp)
	sw $t0, -808($fp)
	lw $t0, -804($fp)
	lw $t1, -808($fp)
	sub $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t1, -800($fp)
	lw $t2, -812($fp)
	beq $t1, $t2, label174
	j label173
label174:
	li $t0, 55685
	sw $t0, -816($fp)
	lw $t1, -816($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label173
label172:
	li $t0, 1
	sw $t0, -768($fp)
label173:
	lw $ra, -4($fp)
	lw $v0, -768($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -12196
	li $t0, 45401
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	li $t0, 64932
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	li $t0, 30662
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	li $t0, 27273
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	li $t0, 34919
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	li $t0, 62265
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	li $t0, 6844
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	li $t0, 17784
	sw $t0, -500($fp)
	addi $t0, $fp, -8
	sw $t0, -504($fp)
	li $t0, 0
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
	li $t0, 11997
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	li $t0, 4989
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	li $t0, 3277
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	li $t0, 64393
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	li $t0, 47795
	sw $t0, -572($fp)
	addi $t0, $fp, -36
	sw $t0, -576($fp)
	li $t0, 0
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
	li $t0, 54643
	sw $t0, -596($fp)
	addi $t0, $fp, -36
	sw $t0, -600($fp)
	li $t0, 1
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
	li $t0, 28620
	sw $t0, -620($fp)
	addi $t0, $fp, -36
	sw $t0, -624($fp)
	li $t0, 2
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
	li $t0, 30715
	sw $t0, -644($fp)
	addi $t0, $fp, -36
	sw $t0, -648($fp)
	li $t0, 3
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
	li $t0, 49399
	sw $t0, -668($fp)
	addi $t0, $fp, -36
	sw $t0, -672($fp)
	li $t0, 4
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
	li $t0, 58231
	sw $t0, -692($fp)
	addi $t0, $fp, -36
	sw $t0, -696($fp)
	li $t0, 5
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
	li $t0, 26068
	sw $t0, -716($fp)
	addi $t0, $fp, -36
	sw $t0, -720($fp)
	li $t0, 6
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
	li $t0, 4376
	sw $t0, -740($fp)
	addi $t0, $fp, -48
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
	li $t0, 22389
	sw $t0, -764($fp)
	addi $t0, $fp, -48
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
	li $t0, 56852
	sw $t0, -788($fp)
	addi $t0, $fp, -48
	sw $t0, -792($fp)
	li $t0, 2
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
	li $t0, 49445
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	li $t0, 52187
	sw $t0, -824($fp)
	addi $t0, $fp, -52
	sw $t0, -828($fp)
	li $t0, 0
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
	li $t0, 30494
	sw $t0, -848($fp)
	addi $t0, $fp, -76
	sw $t0, -852($fp)
	li $t0, 0
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
	li $t0, 24996
	sw $t0, -872($fp)
	addi $t0, $fp, -76
	sw $t0, -876($fp)
	li $t0, 1
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
	li $t0, 1423
	sw $t0, -896($fp)
	addi $t0, $fp, -76
	sw $t0, -900($fp)
	li $t0, 2
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
	li $t0, 39149
	sw $t0, -920($fp)
	addi $t0, $fp, -76
	sw $t0, -924($fp)
	li $t0, 3
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
	li $t0, 25394
	sw $t0, -944($fp)
	addi $t0, $fp, -76
	sw $t0, -948($fp)
	li $t0, 4
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
	li $t0, 40919
	sw $t0, -968($fp)
	addi $t0, $fp, -76
	sw $t0, -972($fp)
	li $t0, 5
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
	li $t0, 29298
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -1000($fp)
	li $t0, 5259
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	sw $t0, -1012($fp)
	li $t0, 40315
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	sw $t0, -1024($fp)
	li $t0, 59960
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -1036($fp)
	li $t0, 32533
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, -1048($fp)
	li $t0, 9699
	sw $t0, -1052($fp)
	addi $t0, $fp, -112
	sw $t0, -1056($fp)
	li $t0, 0
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
	li $t0, 56690
	sw $t0, -1076($fp)
	addi $t0, $fp, -112
	sw $t0, -1080($fp)
	li $t0, 1
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
	li $t0, 39377
	sw $t0, -1100($fp)
	addi $t0, $fp, -112
	sw $t0, -1104($fp)
	li $t0, 2
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1112($fp)
	lw $t0, -1104($fp)
	lw $t1, -1112($fp)
	add $t0, $t0, $t1
	sw $t0, -1116($fp)
	lw $t0, -1100($fp)
	lw $t1, -1116($fp)
	sw $t0, 0($t1)
	lw $t0, -1116($fp)
	lw $t1, 0($t0)
	sw $t1, -1120($fp)
	li $t0, 27483
	sw $t0, -1124($fp)
	addi $t0, $fp, -112
	sw $t0, -1128($fp)
	li $t0, 3
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1136($fp)
	lw $t0, -1128($fp)
	lw $t1, -1136($fp)
	add $t0, $t0, $t1
	sw $t0, -1140($fp)
	lw $t0, -1124($fp)
	lw $t1, -1140($fp)
	sw $t0, 0($t1)
	lw $t0, -1140($fp)
	lw $t1, 0($t0)
	sw $t1, -1144($fp)
	li $t0, 3151
	sw $t0, -1148($fp)
	addi $t0, $fp, -112
	sw $t0, -1152($fp)
	li $t0, 4
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1160($fp)
	lw $t0, -1152($fp)
	lw $t1, -1160($fp)
	add $t0, $t0, $t1
	sw $t0, -1164($fp)
	lw $t0, -1148($fp)
	lw $t1, -1164($fp)
	sw $t0, 0($t1)
	lw $t0, -1164($fp)
	lw $t1, 0($t0)
	sw $t1, -1168($fp)
	li $t0, 44366
	sw $t0, -1172($fp)
	addi $t0, $fp, -112
	sw $t0, -1176($fp)
	li $t0, 5
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1184($fp)
	lw $t0, -1176($fp)
	lw $t1, -1184($fp)
	add $t0, $t0, $t1
	sw $t0, -1188($fp)
	lw $t0, -1172($fp)
	lw $t1, -1188($fp)
	sw $t0, 0($t1)
	lw $t0, -1188($fp)
	lw $t1, 0($t0)
	sw $t1, -1192($fp)
	li $t0, 30761
	sw $t0, -1196($fp)
	addi $t0, $fp, -112
	sw $t0, -1200($fp)
	li $t0, 6
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t0, -1200($fp)
	lw $t1, -1208($fp)
	add $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t0, -1196($fp)
	lw $t1, -1212($fp)
	sw $t0, 0($t1)
	lw $t0, -1212($fp)
	lw $t1, 0($t0)
	sw $t1, -1216($fp)
	li $t0, 2009
	sw $t0, -1220($fp)
	addi $t0, $fp, -112
	sw $t0, -1224($fp)
	li $t0, 7
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1232($fp)
	lw $t0, -1224($fp)
	lw $t1, -1232($fp)
	add $t0, $t0, $t1
	sw $t0, -1236($fp)
	lw $t0, -1220($fp)
	lw $t1, -1236($fp)
	sw $t0, 0($t1)
	lw $t0, -1236($fp)
	lw $t1, 0($t0)
	sw $t1, -1240($fp)
	li $t0, 26625
	sw $t0, -1244($fp)
	addi $t0, $fp, -112
	sw $t0, -1248($fp)
	li $t0, 8
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1256($fp)
	lw $t0, -1248($fp)
	lw $t1, -1256($fp)
	add $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t0, -1244($fp)
	lw $t1, -1260($fp)
	sw $t0, 0($t1)
	lw $t0, -1260($fp)
	lw $t1, 0($t0)
	sw $t1, -1264($fp)
	li $t0, 19868
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	li $t0, 30629
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	li $t0, 57340
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	li $t0, 3731
	sw $t0, -1304($fp)
	addi $t0, $fp, -132
	sw $t0, -1308($fp)
	li $t0, 0
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
	li $t0, 23324
	sw $t0, -1328($fp)
	addi $t0, $fp, -132
	sw $t0, -1332($fp)
	li $t0, 1
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
	li $t0, 17872
	sw $t0, -1352($fp)
	addi $t0, $fp, -132
	sw $t0, -1356($fp)
	li $t0, 2
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
	li $t0, 8108
	sw $t0, -1376($fp)
	addi $t0, $fp, -132
	sw $t0, -1380($fp)
	li $t0, 3
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
	li $t0, 45713
	sw $t0, -1400($fp)
	addi $t0, $fp, -132
	sw $t0, -1404($fp)
	li $t0, 4
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
	li $t0, 9188
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	sw $t0, -1432($fp)
	li $t0, 57553
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	sw $t0, -1444($fp)
	li $t0, 32365
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	sw $t0, -1456($fp)
	li $t0, 39683
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	sw $t0, -1468($fp)
	li $t0, 17013
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	sw $t0, -1480($fp)
	li $t0, 33788
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	sw $t0, -1492($fp)
	li $t0, 13296
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	sw $t0, -1504($fp)
	li $t0, 42407
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	sw $t0, -1516($fp)
	li $t0, 9171
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	sw $t0, -1528($fp)
	li $t0, 42595
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	sw $t0, -1540($fp)
	li $t0, 47667
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	sw $t0, -1552($fp)
	li $t0, 49487
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	sw $t0, -1564($fp)
	li $t0, 37019
	sw $t0, -1568($fp)
	addi $t0, $fp, -152
	sw $t0, -1572($fp)
	li $t0, 0
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
	li $t0, 14664
	sw $t0, -1592($fp)
	addi $t0, $fp, -152
	sw $t0, -1596($fp)
	li $t0, 1
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
	li $t0, 59186
	sw $t0, -1616($fp)
	addi $t0, $fp, -152
	sw $t0, -1620($fp)
	li $t0, 2
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
	li $t0, 28173
	sw $t0, -1640($fp)
	addi $t0, $fp, -152
	sw $t0, -1644($fp)
	li $t0, 3
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
	li $t0, 54041
	sw $t0, -1664($fp)
	addi $t0, $fp, -152
	sw $t0, -1668($fp)
	li $t0, 4
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
	li $t0, 21133
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	sw $t0, -1696($fp)
	li $t0, 31325
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	sw $t0, -1708($fp)
	li $t0, 32871
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	sw $t0, -1720($fp)
	li $t0, 51894
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	sw $t0, -1732($fp)
	li $t0, 33334
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -1744($fp)
	li $t0, 59497
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	sw $t0, -1756($fp)
	li $t0, 6227
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	sw $t0, -1768($fp)
	li $t0, 63963
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	sw $t0, -1780($fp)
	li $t0, 51301
	sw $t0, -1784($fp)
	addi $t0, $fp, -180
	sw $t0, -1788($fp)
	li $t0, 0
	sw $t0, -1792($fp)
	lw $t0, -1792($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1796($fp)
	lw $t0, -1788($fp)
	lw $t1, -1796($fp)
	add $t0, $t0, $t1
	sw $t0, -1800($fp)
	lw $t0, -1784($fp)
	lw $t1, -1800($fp)
	sw $t0, 0($t1)
	lw $t0, -1800($fp)
	lw $t1, 0($t0)
	sw $t1, -1804($fp)
	li $t0, 9958
	sw $t0, -1808($fp)
	addi $t0, $fp, -180
	sw $t0, -1812($fp)
	li $t0, 1
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t0, -1812($fp)
	lw $t1, -1820($fp)
	add $t0, $t0, $t1
	sw $t0, -1824($fp)
	lw $t0, -1808($fp)
	lw $t1, -1824($fp)
	sw $t0, 0($t1)
	lw $t0, -1824($fp)
	lw $t1, 0($t0)
	sw $t1, -1828($fp)
	li $t0, 21751
	sw $t0, -1832($fp)
	addi $t0, $fp, -180
	sw $t0, -1836($fp)
	li $t0, 2
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $t0, -1836($fp)
	lw $t1, -1844($fp)
	add $t0, $t0, $t1
	sw $t0, -1848($fp)
	lw $t0, -1832($fp)
	lw $t1, -1848($fp)
	sw $t0, 0($t1)
	lw $t0, -1848($fp)
	lw $t1, 0($t0)
	sw $t1, -1852($fp)
	li $t0, 3638
	sw $t0, -1856($fp)
	addi $t0, $fp, -180
	sw $t0, -1860($fp)
	li $t0, 3
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $t0, -1860($fp)
	lw $t1, -1868($fp)
	add $t0, $t0, $t1
	sw $t0, -1872($fp)
	lw $t0, -1856($fp)
	lw $t1, -1872($fp)
	sw $t0, 0($t1)
	lw $t0, -1872($fp)
	lw $t1, 0($t0)
	sw $t1, -1876($fp)
	li $t0, 18066
	sw $t0, -1880($fp)
	addi $t0, $fp, -180
	sw $t0, -1884($fp)
	li $t0, 4
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1892($fp)
	lw $t0, -1884($fp)
	lw $t1, -1892($fp)
	add $t0, $t0, $t1
	sw $t0, -1896($fp)
	lw $t0, -1880($fp)
	lw $t1, -1896($fp)
	sw $t0, 0($t1)
	lw $t0, -1896($fp)
	lw $t1, 0($t0)
	sw $t1, -1900($fp)
	li $t0, 1929
	sw $t0, -1904($fp)
	addi $t0, $fp, -180
	sw $t0, -1908($fp)
	li $t0, 5
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t0, -1908($fp)
	lw $t1, -1916($fp)
	add $t0, $t0, $t1
	sw $t0, -1920($fp)
	lw $t0, -1904($fp)
	lw $t1, -1920($fp)
	sw $t0, 0($t1)
	lw $t0, -1920($fp)
	lw $t1, 0($t0)
	sw $t1, -1924($fp)
	li $t0, 12826
	sw $t0, -1928($fp)
	addi $t0, $fp, -180
	sw $t0, -1932($fp)
	li $t0, 6
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t0, -1932($fp)
	lw $t1, -1940($fp)
	add $t0, $t0, $t1
	sw $t0, -1944($fp)
	lw $t0, -1928($fp)
	lw $t1, -1944($fp)
	sw $t0, 0($t1)
	lw $t0, -1944($fp)
	lw $t1, 0($t0)
	sw $t1, -1948($fp)
	li $t0, 10084
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	sw $t0, -1960($fp)
	li $t0, 34294
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	sw $t0, -1972($fp)
	li $t0, 52509
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	sw $t0, -1984($fp)
	li $t0, 27097
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	sw $t0, -1992($fp)
	lw $t0, -1992($fp)
	sw $t0, -1996($fp)
	li $t0, 2546
	sw $t0, -2000($fp)
	addi $t0, $fp, -216
	sw $t0, -2004($fp)
	li $t0, 0
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2012($fp)
	lw $t0, -2004($fp)
	lw $t1, -2012($fp)
	add $t0, $t0, $t1
	sw $t0, -2016($fp)
	lw $t0, -2000($fp)
	lw $t1, -2016($fp)
	sw $t0, 0($t1)
	lw $t0, -2016($fp)
	lw $t1, 0($t0)
	sw $t1, -2020($fp)
	li $t0, 270
	sw $t0, -2024($fp)
	addi $t0, $fp, -216
	sw $t0, -2028($fp)
	li $t0, 1
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2028($fp)
	lw $t1, -2036($fp)
	add $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $t0, -2024($fp)
	lw $t1, -2040($fp)
	sw $t0, 0($t1)
	lw $t0, -2040($fp)
	lw $t1, 0($t0)
	sw $t1, -2044($fp)
	li $t0, 3969
	sw $t0, -2048($fp)
	addi $t0, $fp, -216
	sw $t0, -2052($fp)
	li $t0, 2
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2060($fp)
	lw $t0, -2052($fp)
	lw $t1, -2060($fp)
	add $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t0, -2048($fp)
	lw $t1, -2064($fp)
	sw $t0, 0($t1)
	lw $t0, -2064($fp)
	lw $t1, 0($t0)
	sw $t1, -2068($fp)
	li $t0, 11717
	sw $t0, -2072($fp)
	addi $t0, $fp, -216
	sw $t0, -2076($fp)
	li $t0, 3
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2084($fp)
	lw $t0, -2076($fp)
	lw $t1, -2084($fp)
	add $t0, $t0, $t1
	sw $t0, -2088($fp)
	lw $t0, -2072($fp)
	lw $t1, -2088($fp)
	sw $t0, 0($t1)
	lw $t0, -2088($fp)
	lw $t1, 0($t0)
	sw $t1, -2092($fp)
	li $t0, 42865
	sw $t0, -2096($fp)
	addi $t0, $fp, -216
	sw $t0, -2100($fp)
	li $t0, 4
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t0, -2100($fp)
	lw $t1, -2108($fp)
	add $t0, $t0, $t1
	sw $t0, -2112($fp)
	lw $t0, -2096($fp)
	lw $t1, -2112($fp)
	sw $t0, 0($t1)
	lw $t0, -2112($fp)
	lw $t1, 0($t0)
	sw $t1, -2116($fp)
	li $t0, 51636
	sw $t0, -2120($fp)
	addi $t0, $fp, -216
	sw $t0, -2124($fp)
	li $t0, 5
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $t0, -2124($fp)
	lw $t1, -2132($fp)
	add $t0, $t0, $t1
	sw $t0, -2136($fp)
	lw $t0, -2120($fp)
	lw $t1, -2136($fp)
	sw $t0, 0($t1)
	lw $t0, -2136($fp)
	lw $t1, 0($t0)
	sw $t1, -2140($fp)
	li $t0, 61204
	sw $t0, -2144($fp)
	addi $t0, $fp, -216
	sw $t0, -2148($fp)
	li $t0, 6
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2156($fp)
	lw $t0, -2148($fp)
	lw $t1, -2156($fp)
	add $t0, $t0, $t1
	sw $t0, -2160($fp)
	lw $t0, -2144($fp)
	lw $t1, -2160($fp)
	sw $t0, 0($t1)
	lw $t0, -2160($fp)
	lw $t1, 0($t0)
	sw $t1, -2164($fp)
	li $t0, 14348
	sw $t0, -2168($fp)
	addi $t0, $fp, -216
	sw $t0, -2172($fp)
	li $t0, 7
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2180($fp)
	lw $t0, -2172($fp)
	lw $t1, -2180($fp)
	add $t0, $t0, $t1
	sw $t0, -2184($fp)
	lw $t0, -2168($fp)
	lw $t1, -2184($fp)
	sw $t0, 0($t1)
	lw $t0, -2184($fp)
	lw $t1, 0($t0)
	sw $t1, -2188($fp)
	li $t0, 764
	sw $t0, -2192($fp)
	addi $t0, $fp, -216
	sw $t0, -2196($fp)
	li $t0, 8
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2204($fp)
	lw $t0, -2196($fp)
	lw $t1, -2204($fp)
	add $t0, $t0, $t1
	sw $t0, -2208($fp)
	lw $t0, -2192($fp)
	lw $t1, -2208($fp)
	sw $t0, 0($t1)
	lw $t0, -2208($fp)
	lw $t1, 0($t0)
	sw $t1, -2212($fp)
	li $t0, 54854
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	sw $t0, -2224($fp)
	li $t0, 42522
	sw $t0, -2228($fp)
	addi $t0, $fp, -256
	sw $t0, -2232($fp)
	li $t0, 0
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $t0, -2232($fp)
	lw $t1, -2240($fp)
	add $t0, $t0, $t1
	sw $t0, -2244($fp)
	lw $t0, -2228($fp)
	lw $t1, -2244($fp)
	sw $t0, 0($t1)
	lw $t0, -2244($fp)
	lw $t1, 0($t0)
	sw $t1, -2248($fp)
	li $t0, 54805
	sw $t0, -2252($fp)
	addi $t0, $fp, -256
	sw $t0, -2256($fp)
	li $t0, 1
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t0, -2256($fp)
	lw $t1, -2264($fp)
	add $t0, $t0, $t1
	sw $t0, -2268($fp)
	lw $t0, -2252($fp)
	lw $t1, -2268($fp)
	sw $t0, 0($t1)
	lw $t0, -2268($fp)
	lw $t1, 0($t0)
	sw $t1, -2272($fp)
	li $t0, 10452
	sw $t0, -2276($fp)
	addi $t0, $fp, -256
	sw $t0, -2280($fp)
	li $t0, 2
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
	li $t0, 8311
	sw $t0, -2300($fp)
	addi $t0, $fp, -256
	sw $t0, -2304($fp)
	li $t0, 3
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
	li $t0, 22140
	sw $t0, -2324($fp)
	addi $t0, $fp, -256
	sw $t0, -2328($fp)
	li $t0, 4
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
	li $t0, 62346
	sw $t0, -2348($fp)
	addi $t0, $fp, -256
	sw $t0, -2352($fp)
	li $t0, 5
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
	li $t0, 41645
	sw $t0, -2372($fp)
	addi $t0, $fp, -256
	sw $t0, -2376($fp)
	li $t0, 6
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
	li $t0, 16101
	sw $t0, -2396($fp)
	addi $t0, $fp, -256
	sw $t0, -2400($fp)
	li $t0, 7
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
	li $t0, 3037
	sw $t0, -2420($fp)
	addi $t0, $fp, -256
	sw $t0, -2424($fp)
	li $t0, 8
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
	li $t0, 40072
	sw $t0, -2444($fp)
	addi $t0, $fp, -256
	sw $t0, -2448($fp)
	li $t0, 9
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
	li $t0, 1867
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	sw $t0, -2476($fp)
	li $t0, 12996
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	sw $t0, -2488($fp)
	li $t0, 61823
	sw $t0, -2492($fp)
	lw $t0, -2492($fp)
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	sw $t0, -2500($fp)
	li $t0, 5505
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	sw $t0, -2508($fp)
	lw $t0, -2508($fp)
	sw $t0, -2512($fp)
	li $t0, 31062
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	sw $t0, -2524($fp)
	li $t0, 63752
	sw $t0, -2528($fp)
	lw $t0, -2528($fp)
	sw $t0, -2532($fp)
	lw $t0, -2532($fp)
	sw $t0, -2536($fp)
	li $t0, 18331
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	sw $t0, -2548($fp)
	li $t0, 41146
	sw $t0, -2552($fp)
	addi $t0, $fp, -292
	sw $t0, -2556($fp)
	li $t0, 0
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
	li $t0, 32510
	sw $t0, -2576($fp)
	addi $t0, $fp, -292
	sw $t0, -2580($fp)
	li $t0, 1
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
	li $t0, 5305
	sw $t0, -2600($fp)
	addi $t0, $fp, -292
	sw $t0, -2604($fp)
	li $t0, 2
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
	li $t0, 2708
	sw $t0, -2624($fp)
	addi $t0, $fp, -292
	sw $t0, -2628($fp)
	li $t0, 3
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
	li $t0, 35056
	sw $t0, -2648($fp)
	addi $t0, $fp, -292
	sw $t0, -2652($fp)
	li $t0, 4
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
	li $t0, 5575
	sw $t0, -2672($fp)
	addi $t0, $fp, -292
	sw $t0, -2676($fp)
	li $t0, 5
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
	li $t0, 6677
	sw $t0, -2696($fp)
	addi $t0, $fp, -292
	sw $t0, -2700($fp)
	li $t0, 6
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
	li $t0, 46774
	sw $t0, -2720($fp)
	addi $t0, $fp, -292
	sw $t0, -2724($fp)
	li $t0, 7
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2732($fp)
	lw $t0, -2724($fp)
	lw $t1, -2732($fp)
	add $t0, $t0, $t1
	sw $t0, -2736($fp)
	lw $t0, -2720($fp)
	lw $t1, -2736($fp)
	sw $t0, 0($t1)
	lw $t0, -2736($fp)
	lw $t1, 0($t0)
	sw $t1, -2740($fp)
	li $t0, 48440
	sw $t0, -2744($fp)
	addi $t0, $fp, -292
	sw $t0, -2748($fp)
	li $t0, 8
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2756($fp)
	lw $t0, -2748($fp)
	lw $t1, -2756($fp)
	add $t0, $t0, $t1
	sw $t0, -2760($fp)
	lw $t0, -2744($fp)
	lw $t1, -2760($fp)
	sw $t0, 0($t1)
	lw $t0, -2760($fp)
	lw $t1, 0($t0)
	sw $t1, -2764($fp)
	li $t0, 58313
	sw $t0, -2768($fp)
	lw $t0, -2768($fp)
	sw $t0, -2772($fp)
	lw $t0, -2772($fp)
	sw $t0, -2776($fp)
	li $t0, 42442
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	sw $t0, -2784($fp)
	lw $t0, -2784($fp)
	sw $t0, -2788($fp)
	li $t0, 62788
	sw $t0, -2792($fp)
	addi $t0, $fp, -328
	sw $t0, -2796($fp)
	li $t0, 0
	sw $t0, -2800($fp)
	lw $t0, -2800($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2804($fp)
	lw $t0, -2796($fp)
	lw $t1, -2804($fp)
	add $t0, $t0, $t1
	sw $t0, -2808($fp)
	lw $t0, -2792($fp)
	lw $t1, -2808($fp)
	sw $t0, 0($t1)
	lw $t0, -2808($fp)
	lw $t1, 0($t0)
	sw $t1, -2812($fp)
	li $t0, 59077
	sw $t0, -2816($fp)
	addi $t0, $fp, -328
	sw $t0, -2820($fp)
	li $t0, 1
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2828($fp)
	lw $t0, -2820($fp)
	lw $t1, -2828($fp)
	add $t0, $t0, $t1
	sw $t0, -2832($fp)
	lw $t0, -2816($fp)
	lw $t1, -2832($fp)
	sw $t0, 0($t1)
	lw $t0, -2832($fp)
	lw $t1, 0($t0)
	sw $t1, -2836($fp)
	li $t0, 31761
	sw $t0, -2840($fp)
	addi $t0, $fp, -328
	sw $t0, -2844($fp)
	li $t0, 2
	sw $t0, -2848($fp)
	lw $t0, -2848($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2852($fp)
	lw $t0, -2844($fp)
	lw $t1, -2852($fp)
	add $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -2840($fp)
	lw $t1, -2856($fp)
	sw $t0, 0($t1)
	lw $t0, -2856($fp)
	lw $t1, 0($t0)
	sw $t1, -2860($fp)
	li $t0, 39774
	sw $t0, -2864($fp)
	addi $t0, $fp, -328
	sw $t0, -2868($fp)
	li $t0, 3
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2876($fp)
	lw $t0, -2868($fp)
	lw $t1, -2876($fp)
	add $t0, $t0, $t1
	sw $t0, -2880($fp)
	lw $t0, -2864($fp)
	lw $t1, -2880($fp)
	sw $t0, 0($t1)
	lw $t0, -2880($fp)
	lw $t1, 0($t0)
	sw $t1, -2884($fp)
	li $t0, 48346
	sw $t0, -2888($fp)
	addi $t0, $fp, -328
	sw $t0, -2892($fp)
	li $t0, 4
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $t0, -2892($fp)
	lw $t1, -2900($fp)
	add $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $t0, -2888($fp)
	lw $t1, -2904($fp)
	sw $t0, 0($t1)
	lw $t0, -2904($fp)
	lw $t1, 0($t0)
	sw $t1, -2908($fp)
	li $t0, 42213
	sw $t0, -2912($fp)
	addi $t0, $fp, -328
	sw $t0, -2916($fp)
	li $t0, 5
	sw $t0, -2920($fp)
	lw $t0, -2920($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2924($fp)
	lw $t0, -2916($fp)
	lw $t1, -2924($fp)
	add $t0, $t0, $t1
	sw $t0, -2928($fp)
	lw $t0, -2912($fp)
	lw $t1, -2928($fp)
	sw $t0, 0($t1)
	lw $t0, -2928($fp)
	lw $t1, 0($t0)
	sw $t1, -2932($fp)
	li $t0, 48085
	sw $t0, -2936($fp)
	addi $t0, $fp, -328
	sw $t0, -2940($fp)
	li $t0, 6
	sw $t0, -2944($fp)
	lw $t0, -2944($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2948($fp)
	lw $t0, -2940($fp)
	lw $t1, -2948($fp)
	add $t0, $t0, $t1
	sw $t0, -2952($fp)
	lw $t0, -2936($fp)
	lw $t1, -2952($fp)
	sw $t0, 0($t1)
	lw $t0, -2952($fp)
	lw $t1, 0($t0)
	sw $t1, -2956($fp)
	li $t0, 4950
	sw $t0, -2960($fp)
	addi $t0, $fp, -328
	sw $t0, -2964($fp)
	li $t0, 7
	sw $t0, -2968($fp)
	lw $t0, -2968($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $t0, -2964($fp)
	lw $t1, -2972($fp)
	add $t0, $t0, $t1
	sw $t0, -2976($fp)
	lw $t0, -2960($fp)
	lw $t1, -2976($fp)
	sw $t0, 0($t1)
	lw $t0, -2976($fp)
	lw $t1, 0($t0)
	sw $t1, -2980($fp)
	li $t0, 39023
	sw $t0, -2984($fp)
	addi $t0, $fp, -328
	sw $t0, -2988($fp)
	li $t0, 8
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2996($fp)
	lw $t0, -2988($fp)
	lw $t1, -2996($fp)
	add $t0, $t0, $t1
	sw $t0, -3000($fp)
	lw $t0, -2984($fp)
	lw $t1, -3000($fp)
	sw $t0, 0($t1)
	lw $t0, -3000($fp)
	lw $t1, 0($t0)
	sw $t1, -3004($fp)
	li $t0, 24194
	sw $t0, -3008($fp)
	addi $t0, $fp, -368
	sw $t0, -3012($fp)
	li $t0, 0
	sw $t0, -3016($fp)
	lw $t0, -3016($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3020($fp)
	lw $t0, -3012($fp)
	lw $t1, -3020($fp)
	add $t0, $t0, $t1
	sw $t0, -3024($fp)
	lw $t0, -3008($fp)
	lw $t1, -3024($fp)
	sw $t0, 0($t1)
	lw $t0, -3024($fp)
	lw $t1, 0($t0)
	sw $t1, -3028($fp)
	li $t0, 21052
	sw $t0, -3032($fp)
	addi $t0, $fp, -368
	sw $t0, -3036($fp)
	li $t0, 1
	sw $t0, -3040($fp)
	lw $t0, -3040($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3044($fp)
	lw $t0, -3036($fp)
	lw $t1, -3044($fp)
	add $t0, $t0, $t1
	sw $t0, -3048($fp)
	lw $t0, -3032($fp)
	lw $t1, -3048($fp)
	sw $t0, 0($t1)
	lw $t0, -3048($fp)
	lw $t1, 0($t0)
	sw $t1, -3052($fp)
	li $t0, 42061
	sw $t0, -3056($fp)
	addi $t0, $fp, -368
	sw $t0, -3060($fp)
	li $t0, 2
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3068($fp)
	lw $t0, -3060($fp)
	lw $t1, -3068($fp)
	add $t0, $t0, $t1
	sw $t0, -3072($fp)
	lw $t0, -3056($fp)
	lw $t1, -3072($fp)
	sw $t0, 0($t1)
	lw $t0, -3072($fp)
	lw $t1, 0($t0)
	sw $t1, -3076($fp)
	li $t0, 64266
	sw $t0, -3080($fp)
	addi $t0, $fp, -368
	sw $t0, -3084($fp)
	li $t0, 3
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3092($fp)
	lw $t0, -3084($fp)
	lw $t1, -3092($fp)
	add $t0, $t0, $t1
	sw $t0, -3096($fp)
	lw $t0, -3080($fp)
	lw $t1, -3096($fp)
	sw $t0, 0($t1)
	lw $t0, -3096($fp)
	lw $t1, 0($t0)
	sw $t1, -3100($fp)
	li $t0, 22919
	sw $t0, -3104($fp)
	addi $t0, $fp, -368
	sw $t0, -3108($fp)
	li $t0, 4
	sw $t0, -3112($fp)
	lw $t0, -3112($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3116($fp)
	lw $t0, -3108($fp)
	lw $t1, -3116($fp)
	add $t0, $t0, $t1
	sw $t0, -3120($fp)
	lw $t0, -3104($fp)
	lw $t1, -3120($fp)
	sw $t0, 0($t1)
	lw $t0, -3120($fp)
	lw $t1, 0($t0)
	sw $t1, -3124($fp)
	li $t0, 55057
	sw $t0, -3128($fp)
	addi $t0, $fp, -368
	sw $t0, -3132($fp)
	li $t0, 5
	sw $t0, -3136($fp)
	lw $t0, -3136($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3140($fp)
	lw $t0, -3132($fp)
	lw $t1, -3140($fp)
	add $t0, $t0, $t1
	sw $t0, -3144($fp)
	lw $t0, -3128($fp)
	lw $t1, -3144($fp)
	sw $t0, 0($t1)
	lw $t0, -3144($fp)
	lw $t1, 0($t0)
	sw $t1, -3148($fp)
	li $t0, 60554
	sw $t0, -3152($fp)
	addi $t0, $fp, -368
	sw $t0, -3156($fp)
	li $t0, 6
	sw $t0, -3160($fp)
	lw $t0, -3160($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3164($fp)
	lw $t0, -3156($fp)
	lw $t1, -3164($fp)
	add $t0, $t0, $t1
	sw $t0, -3168($fp)
	lw $t0, -3152($fp)
	lw $t1, -3168($fp)
	sw $t0, 0($t1)
	lw $t0, -3168($fp)
	lw $t1, 0($t0)
	sw $t1, -3172($fp)
	li $t0, 28424
	sw $t0, -3176($fp)
	addi $t0, $fp, -368
	sw $t0, -3180($fp)
	li $t0, 7
	sw $t0, -3184($fp)
	lw $t0, -3184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3188($fp)
	lw $t0, -3180($fp)
	lw $t1, -3188($fp)
	add $t0, $t0, $t1
	sw $t0, -3192($fp)
	lw $t0, -3176($fp)
	lw $t1, -3192($fp)
	sw $t0, 0($t1)
	lw $t0, -3192($fp)
	lw $t1, 0($t0)
	sw $t1, -3196($fp)
	li $t0, 20583
	sw $t0, -3200($fp)
	addi $t0, $fp, -368
	sw $t0, -3204($fp)
	li $t0, 8
	sw $t0, -3208($fp)
	lw $t0, -3208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3212($fp)
	lw $t0, -3204($fp)
	lw $t1, -3212($fp)
	add $t0, $t0, $t1
	sw $t0, -3216($fp)
	lw $t0, -3200($fp)
	lw $t1, -3216($fp)
	sw $t0, 0($t1)
	lw $t0, -3216($fp)
	lw $t1, 0($t0)
	sw $t1, -3220($fp)
	li $t0, 58770
	sw $t0, -3224($fp)
	addi $t0, $fp, -368
	sw $t0, -3228($fp)
	li $t0, 9
	sw $t0, -3232($fp)
	lw $t0, -3232($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3236($fp)
	lw $t0, -3228($fp)
	lw $t1, -3236($fp)
	add $t0, $t0, $t1
	sw $t0, -3240($fp)
	lw $t0, -3224($fp)
	lw $t1, -3240($fp)
	sw $t0, 0($t1)
	lw $t0, -3240($fp)
	lw $t1, 0($t0)
	sw $t1, -3244($fp)
	li $t0, 46755
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	sw $t0, -3252($fp)
	lw $t0, -3252($fp)
	sw $t0, -3256($fp)
	li $t0, 61730
	sw $t0, -3260($fp)
	lw $t0, -3260($fp)
	sw $t0, -3264($fp)
	lw $t0, -3264($fp)
	sw $t0, -3268($fp)
	li $t0, 25745
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	sw $t0, -3276($fp)
	lw $t0, -3276($fp)
	sw $t0, -3280($fp)
	li $t0, 52060
	sw $t0, -3284($fp)
	lw $t0, -3284($fp)
	sw $t0, -3288($fp)
	lw $t0, -3288($fp)
	sw $t0, -3292($fp)
	li $t0, 64438
	sw $t0, -3296($fp)
	lw $t0, -3296($fp)
	sw $t0, -3300($fp)
	lw $t0, -3300($fp)
	sw $t0, -3304($fp)
	li $t0, 60801
	sw $t0, -3308($fp)
	addi $t0, $fp, -388
	sw $t0, -3312($fp)
	li $t0, 0
	sw $t0, -3316($fp)
	lw $t0, -3316($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3320($fp)
	lw $t0, -3312($fp)
	lw $t1, -3320($fp)
	add $t0, $t0, $t1
	sw $t0, -3324($fp)
	lw $t0, -3308($fp)
	lw $t1, -3324($fp)
	sw $t0, 0($t1)
	lw $t0, -3324($fp)
	lw $t1, 0($t0)
	sw $t1, -3328($fp)
	li $t0, 57635
	sw $t0, -3332($fp)
	addi $t0, $fp, -388
	sw $t0, -3336($fp)
	li $t0, 1
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3344($fp)
	lw $t0, -3336($fp)
	lw $t1, -3344($fp)
	add $t0, $t0, $t1
	sw $t0, -3348($fp)
	lw $t0, -3332($fp)
	lw $t1, -3348($fp)
	sw $t0, 0($t1)
	lw $t0, -3348($fp)
	lw $t1, 0($t0)
	sw $t1, -3352($fp)
	li $t0, 5579
	sw $t0, -3356($fp)
	addi $t0, $fp, -388
	sw $t0, -3360($fp)
	li $t0, 2
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3368($fp)
	lw $t0, -3360($fp)
	lw $t1, -3368($fp)
	add $t0, $t0, $t1
	sw $t0, -3372($fp)
	lw $t0, -3356($fp)
	lw $t1, -3372($fp)
	sw $t0, 0($t1)
	lw $t0, -3372($fp)
	lw $t1, 0($t0)
	sw $t1, -3376($fp)
	li $t0, 42039
	sw $t0, -3380($fp)
	addi $t0, $fp, -388
	sw $t0, -3384($fp)
	li $t0, 3
	sw $t0, -3388($fp)
	lw $t0, -3388($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3392($fp)
	lw $t0, -3384($fp)
	lw $t1, -3392($fp)
	add $t0, $t0, $t1
	sw $t0, -3396($fp)
	lw $t0, -3380($fp)
	lw $t1, -3396($fp)
	sw $t0, 0($t1)
	lw $t0, -3396($fp)
	lw $t1, 0($t0)
	sw $t1, -3400($fp)
	li $t0, 40539
	sw $t0, -3404($fp)
	addi $t0, $fp, -388
	sw $t0, -3408($fp)
	li $t0, 4
	sw $t0, -3412($fp)
	lw $t0, -3412($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3416($fp)
	lw $t0, -3408($fp)
	lw $t1, -3416($fp)
	add $t0, $t0, $t1
	sw $t0, -3420($fp)
	lw $t0, -3404($fp)
	lw $t1, -3420($fp)
	sw $t0, 0($t1)
	lw $t0, -3420($fp)
	lw $t1, 0($t0)
	sw $t1, -3424($fp)
	li $t0, 63892
	sw $t0, -3428($fp)
	lw $t0, -3428($fp)
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	sw $t0, -3436($fp)
	li $t0, 18946
	sw $t0, -3440($fp)
	lw $t0, -3440($fp)
	sw $t0, -3444($fp)
	lw $t0, -3444($fp)
	sw $t0, -3448($fp)
	li $t0, 37792
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	sw $t0, -3456($fp)
	lw $t0, -3456($fp)
	sw $t0, -3460($fp)
	li $t0, 57433
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	sw $t0, -3468($fp)
	lw $t0, -3468($fp)
	sw $t0, -3472($fp)
	li $t0, 50707
	sw $t0, -3476($fp)
	lw $t0, -3476($fp)
	sw $t0, -3480($fp)
	lw $t0, -3480($fp)
	sw $t0, -3484($fp)
	li $t0, 12030
	sw $t0, -3488($fp)
	addi $t0, $fp, -392
	sw $t0, -3492($fp)
	li $t0, 0
	sw $t0, -3496($fp)
	lw $t0, -3496($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3500($fp)
	lw $t0, -3492($fp)
	lw $t1, -3500($fp)
	add $t0, $t0, $t1
	sw $t0, -3504($fp)
	lw $t0, -3488($fp)
	lw $t1, -3504($fp)
	sw $t0, 0($t1)
	lw $t0, -3504($fp)
	lw $t1, 0($t0)
	sw $t1, -3508($fp)
	li $t0, 40243
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	sw $t0, -3516($fp)
	lw $t0, -3516($fp)
	sw $t0, -3520($fp)
	li $t0, 27384
	sw $t0, -3524($fp)
	lw $t0, -3524($fp)
	sw $t0, -3528($fp)
	lw $t0, -3528($fp)
	sw $t0, -3532($fp)
	li $t0, 60116
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	sw $t0, -3540($fp)
	lw $t0, -3540($fp)
	sw $t0, -3544($fp)
	li $t0, 45193
	sw $t0, -3548($fp)
	addi $t0, $fp, -412
	sw $t0, -3552($fp)
	li $t0, 0
	sw $t0, -3556($fp)
	lw $t0, -3556($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t0, -3552($fp)
	lw $t1, -3560($fp)
	add $t0, $t0, $t1
	sw $t0, -3564($fp)
	lw $t0, -3548($fp)
	lw $t1, -3564($fp)
	sw $t0, 0($t1)
	lw $t0, -3564($fp)
	lw $t1, 0($t0)
	sw $t1, -3568($fp)
	li $t0, 871
	sw $t0, -3572($fp)
	addi $t0, $fp, -412
	sw $t0, -3576($fp)
	li $t0, 1
	sw $t0, -3580($fp)
	lw $t0, -3580($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3584($fp)
	lw $t0, -3576($fp)
	lw $t1, -3584($fp)
	add $t0, $t0, $t1
	sw $t0, -3588($fp)
	lw $t0, -3572($fp)
	lw $t1, -3588($fp)
	sw $t0, 0($t1)
	lw $t0, -3588($fp)
	lw $t1, 0($t0)
	sw $t1, -3592($fp)
	li $t0, 18774
	sw $t0, -3596($fp)
	addi $t0, $fp, -412
	sw $t0, -3600($fp)
	li $t0, 2
	sw $t0, -3604($fp)
	lw $t0, -3604($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3608($fp)
	lw $t0, -3600($fp)
	lw $t1, -3608($fp)
	add $t0, $t0, $t1
	sw $t0, -3612($fp)
	lw $t0, -3596($fp)
	lw $t1, -3612($fp)
	sw $t0, 0($t1)
	lw $t0, -3612($fp)
	lw $t1, 0($t0)
	sw $t1, -3616($fp)
	li $t0, 709
	sw $t0, -3620($fp)
	addi $t0, $fp, -412
	sw $t0, -3624($fp)
	li $t0, 3
	sw $t0, -3628($fp)
	lw $t0, -3628($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3632($fp)
	lw $t0, -3624($fp)
	lw $t1, -3632($fp)
	add $t0, $t0, $t1
	sw $t0, -3636($fp)
	lw $t0, -3620($fp)
	lw $t1, -3636($fp)
	sw $t0, 0($t1)
	lw $t0, -3636($fp)
	lw $t1, 0($t0)
	sw $t1, -3640($fp)
	li $t0, 42932
	sw $t0, -3644($fp)
	addi $t0, $fp, -412
	sw $t0, -3648($fp)
	li $t0, 4
	sw $t0, -3652($fp)
	lw $t0, -3652($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3656($fp)
	lw $t0, -3648($fp)
	lw $t1, -3656($fp)
	add $t0, $t0, $t1
	sw $t0, -3660($fp)
	lw $t0, -3644($fp)
	lw $t1, -3660($fp)
	sw $t0, 0($t1)
	lw $t0, -3660($fp)
	lw $t1, 0($t0)
	sw $t1, -3664($fp)
	lw $t0, -3444($fp)
	sw $t0, -3668($fp)
	lw $t0, -3528($fp)
	sw $t0, -3672($fp)
	lw $t1, -3668($fp)
	lw $t2, -3672($fp)
	bgt $t1, $t2, label175
	j label176
label175:
	addi $t0, $fp, -152
	sw $t0, -3676($fp)
	li $t0, 0
	sw $t0, -3680($fp)
	li $t0, 17505
	sw $t0, -3684($fp)
	li $t0, 23628
	sw $t0, -3688($fp)
	lw $t0, -3684($fp)
	lw $t1, -3688($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3692($fp)
	lw $t1, -3692($fp)
	li $t2, 0
	bne $t1, $t2, label181
	j label180
label181:
	lw $t0, -1692($fp)
	sw $t0, -3696($fp)
	lw $t1, -3696($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label180
label180:
	lw $t0, -1992($fp)
	sw $t0, -3700($fp)
	li $t0, 32453
	sw $t0, -3704($fp)
	lw $t0, -3700($fp)
	lw $t1, -3704($fp)
	add $t0, $t0, $t1
	sw $t0, -3708($fp)
	lw $t1, -3708($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label179
label178:
	li $t0, 1
	sw $t0, -3680($fp)
label179:
	li $t0, 4
	lw $t1, -3680($fp)
	mul $t0, $t0, $t1
	sw $t0, -3712($fp)
	lw $t0, -3712($fp)
	lw $t1, -3676($fp)
	add $t0, $t0, $t1
	sw $t0, -3716($fp)
	lw $t0, -3716($fp)
	lw $t1, 0($t0)
	sw $t1, -3720($fp)
	j label177
label176:
	lw $t0, -444($fp)
	sw $t0, -3724($fp)
	lw $t1, -3724($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label183
label182:
	addi $t0, $fp, -48
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
	lw $t1, -3744($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label186
label185:
	li $t0, 0
	sw $t0, -3748($fp)
	lw $t0, -2544($fp)
	sw $t0, -3752($fp)
	li $t0, 26768
	sw $t0, -3756($fp)
	lw $t1, -3752($fp)
	lw $t2, -3756($fp)
	bgt $t1, $t2, label193
	j label192
label193:
	lw $t0, -1992($fp)
	sw $t0, -3760($fp)
	lw $t1, -3760($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label192
label191:
	li $t0, 1
	sw $t0, -3748($fp)
label192:
	li $t0, 0
	sw $t0, -3764($fp)
	lw $t0, -1536($fp)
	sw $t0, -3768($fp)
	lw $t0, -1284($fp)
	sw $t0, -3772($fp)
	lw $t0, -3768($fp)
	lw $t1, -3772($fp)
	add $t0, $t0, $t1
	sw $t0, -3776($fp)
	li $t0, 48133
	sw $t0, -3780($fp)
	lw $t1, -3776($fp)
	lw $t2, -3780($fp)
	bge $t1, $t2, label194
	j label195
label194:
	li $t0, 1
	sw $t0, -3764($fp)
label195:
	addi $t0, $fp, -76
	sw $t0, -3784($fp)
	li $t0, 2
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
	li $t0, 0
	lw $t1, -3800($fp)
	sub $t0, $t0, $t1
	sw $t0, -3804($fp)
	addi $t0, $fp, -256
	sw $t0, -3808($fp)
	lw $t0, 8($fp)
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
	addi $sp, $sp, -4
	lw $t0, -3764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3824($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3828($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -3832($fp)
	li $t0, 0
	sw $t0, -3836($fp)
	lw $t0, -492($fp)
	sw $t0, -3840($fp)
	lw $t1, -3840($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label198
label198:
	li $t0, 1
	sw $t0, -3836($fp)
label199:
	lw $t0, -1740($fp)
	sw $t0, -3844($fp)
	lw $t1, -3836($fp)
	lw $t2, -3844($fp)
	bgt $t1, $t2, label196
	j label197
label196:
	li $t0, 1
	sw $t0, -3832($fp)
label197:
	li $t0, 0
	sw $t0, -3848($fp)
	li $t0, 0
	sw $t0, -3852($fp)
	li $t0, 5757
	sw $t0, -3856($fp)
	li $t0, 33272
	sw $t0, -3860($fp)
	lw $t1, -3856($fp)
	lw $t2, -3860($fp)
	bge $t1, $t2, label202
	j label203
label202:
	li $t0, 1
	sw $t0, -3852($fp)
label203:
	li $t0, 49231
	sw $t0, -3864($fp)
	lw $t1, -3852($fp)
	lw $t2, -3864($fp)
	beq $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -3848($fp)
label201:
	li $t0, 0
	sw $t0, -3868($fp)
	li $t0, 53037
	sw $t0, -3872($fp)
	li $t0, 0
	lw $t1, -3872($fp)
	sub $t0, $t0, $t1
	sw $t0, -3876($fp)
	lw $t1, -3876($fp)
	li $t2, 0
	bne $t1, $t2, label205
	j label204
label204:
	li $t0, 1
	sw $t0, -3868($fp)
label205:
	addi $sp, $sp, -4
	lw $t0, -3748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3868($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3880($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -3884($fp)
	lw $t0, -1716($fp)
	sw $t0, -3888($fp)
	li $t0, 0
	lw $t1, -3888($fp)
	sub $t0, $t0, $t1
	sw $t0, -3892($fp)
	lw $t1, -3892($fp)
	li $t2, 0
	bne $t1, $t2, label207
	j label206
label206:
	li $t0, 1
	sw $t0, -3884($fp)
label207:
	lw $t0, -3880($fp)
	lw $t1, -3884($fp)
	mul $t0, $t0, $t1
	sw $t0, -3896($fp)
	lw $t1, -3896($fp)
	li $t2, 0
	bne $t1, $t2, label188
	j label189
label188:
	lw $t0, -1512($fp)
	sw $t0, -3900($fp)
	lw $t0, -2772($fp)
	sw $t0, -3904($fp)
	lw $t0, -3900($fp)
	lw $t1, -3904($fp)
	mul $t0, $t0, $t1
	sw $t0, -3908($fp)
	li $t0, 11896
	sw $t0, -3912($fp)
	lw $t0, -3908($fp)
	lw $t1, -3912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3916($fp)
	lw $t0, -3916($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -3920($fp)
	j label190
label189:
label208:
	li $t0, 0
	sw $t0, -3924($fp)
	lw $t0, -2472($fp)
	sw $t0, -3928($fp)
	lw $t1, -3928($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label211
label211:
	li $t0, 1
	sw $t0, -3924($fp)
label212:
	lw $t0, -3480($fp)
	sw $t0, -3932($fp)
	lw $t0, -3924($fp)
	lw $t1, -3932($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3936($fp)
	lw $t1, -3936($fp)
	li $t2, 0
	bne $t1, $t2, label209
	j label210
label209:
label213:
	li $t0, 0
	sw $t0, -3940($fp)
	addi $t0, $fp, -76
	sw $t0, -3944($fp)
	lw $t0, -3480($fp)
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
	lw $t1, -3960($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label218
label219:
	li $t0, 3271
	sw $t0, -3964($fp)
	lw $t1, -3964($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label218
label217:
	li $t0, 1
	sw $t0, -3940($fp)
label218:
	lw $t0, -1752($fp)
	sw $t0, -3968($fp)
	li $t0, 53712
	sw $t0, -3972($fp)
	lw $t0, -3968($fp)
	lw $t1, -3972($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3976($fp)
	addi $sp, $sp, -4
	lw $t0, -3940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3976($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3980($fp)
	addi $sp, $sp, 12
	lw $t1, -3980($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label216
label216:
	li $t0, 0
	sw $t0, -3984($fp)
	lw $t0, -1020($fp)
	sw $t0, -3988($fp)
	lw $t1, -3988($fp)
	li $t2, 0
	bne $t1, $t2, label222
	j label221
label222:
	li $t0, 43965
	sw $t0, -3992($fp)
	lw $t1, -3992($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -3984($fp)
label221:
	li $t0, 0
	sw $t0, -3996($fp)
	li $t0, 22217
	sw $t0, -4000($fp)
	li $t0, 24691
	sw $t0, -4004($fp)
	lw $t0, -4000($fp)
	lw $t1, -4004($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4008($fp)
	lw $t0, 8($fp)
	sw $t0, -4012($fp)
	lw $t1, -4008($fp)
	lw $t2, -4012($fp)
	beq $t1, $t2, label223
	j label224
label223:
	li $t0, 1
	sw $t0, -3996($fp)
label224:
	li $t0, 0
	sw $t0, -4016($fp)
	lw $t0, -2784($fp)
	sw $t0, -4020($fp)
	lw $t0, -1740($fp)
	sw $t0, -4024($fp)
	lw $t1, -4020($fp)
	lw $t2, -4024($fp)
	beq $t1, $t2, label225
	j label226
label225:
	li $t0, 1
	sw $t0, -4016($fp)
label226:
	li $t0, 0
	sw $t0, -4028($fp)
	lw $t0, -1512($fp)
	sw $t0, -4032($fp)
	lw $t1, -4032($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label227
label227:
	li $t0, 1
	sw $t0, -4028($fp)
label228:
	li $t0, 52068
	sw $t0, -4036($fp)
	lw $t0, -4028($fp)
	lw $t1, -4036($fp)
	add $t0, $t0, $t1
	sw $t0, -4040($fp)
	li $t0, 0
	sw $t0, -4044($fp)
	li $t0, 52435
	sw $t0, -4048($fp)
	li $t0, 0
	lw $t1, -4048($fp)
	sub $t0, $t0, $t1
	sw $t0, -4052($fp)
	lw $t1, -4052($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label231
label231:
	lw $t0, -468($fp)
	sw $t0, -4056($fp)
	lw $t1, -4056($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label230
label229:
	li $t0, 1
	sw $t0, -4044($fp)
label230:
	addi $sp, $sp, -4
	lw $t0, -3984($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4044($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4060($fp)
	addi $sp, $sp, 24
	lw $t1, -4060($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label215
label214:
	li $t0, 0
	sw $t0, -4064($fp)
	lw $t0, -420($fp)
	sw $t0, -4068($fp)
	lw $t1, -4068($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label234
label235:
	lw $t0, -2484($fp)
	sw $t0, -4072($fp)
	lw $t1, -4072($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label234
label234:
	li $t0, 18672
	sw $t0, -4076($fp)
	lw $t1, -4076($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label233
label232:
	li $t0, 1
	sw $t0, -4064($fp)
label233:
	li $t0, 36722
	sw $t0, -4080($fp)
	lw $t0, -3276($fp)
	sw $t0, -4084($fp)
	lw $t0, -4084($fp)
	sw $t0, -3264($fp)
	lw $t0, -3264($fp)
	sw $t0, -4088($fp)
	li $t0, 0
	sw $t0, -4092($fp)
	li $t0, 0
	sw $t0, -4096($fp)
	lw $t0, -480($fp)
	sw $t0, -4100($fp)
	lw $t0, -1704($fp)
	sw $t0, -4104($fp)
	lw $t1, -4100($fp)
	lw $t2, -4104($fp)
	blt $t1, $t2, label238
	j label239
label238:
	li $t0, 1
	sw $t0, -4096($fp)
label239:
	li $t0, 7388
	sw $t0, -4108($fp)
	lw $t1, -4096($fp)
	lw $t2, -4108($fp)
	bgt $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -4092($fp)
label237:
	lw $t0, -1692($fp)
	sw $t0, -4112($fp)
	addi $sp, $sp, -4
	lw $t0, -4064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4112($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4116($fp)
	addi $sp, $sp, 24
	j label213
label215:
	li $t0, 34772
	sw $t0, -4120($fp)
	lw $t0, -4120($fp)
	sw $t0, -4124($fp)
	lw $t0, -4124($fp)
	sw $t0, -4128($fp)
	li $t0, 31302
	sw $t0, -4132($fp)
	lw $t0, -4132($fp)
	sw $t0, -4136($fp)
	lw $t0, -4136($fp)
	sw $t0, -4140($fp)
	li $t0, 35644
	sw $t0, -4144($fp)
	li $t0, 0
	sw $t0, -4148($fp)
	li $t0, 63865
	sw $t0, -4152($fp)
	lw $t1, -4152($fp)
	li $t2, 0
	bne $t1, $t2, label244
	j label243
label243:
	li $t0, 1
	sw $t0, -4148($fp)
label244:
	addi $sp, $sp, -4
	lw $t0, -4144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4148($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4156($fp)
	addi $sp, $sp, 12
	lw $t1, -4156($fp)
	li $t2, 0
	bne $t1, $t2, label240
	j label241
label240:
	li $t0, 0
	sw $t0, -4160($fp)
	li $t0, 50076
	sw $t0, -4164($fp)
	lw $t1, -4164($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label245
label245:
	li $t0, 1
	sw $t0, -4160($fp)
label246:
	j label242
label241:
	li $t0, 0
	sw $t0, -4168($fp)
	lw $t0, -4124($fp)
	sw $t0, -4172($fp)
	lw $t0, -1752($fp)
	sw $t0, -4176($fp)
	lw $t0, -4176($fp)
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	sw $t0, -4180($fp)
	addi $sp, $sp, -4
	lw $t0, -4172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4180($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4184($fp)
	addi $sp, $sp, 12
	li $t0, 64575
	sw $t0, -4188($fp)
	addi $t0, $fp, -368
	sw $t0, -4192($fp)
	lw $t0, -4136($fp)
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
	lw $t0, -4188($fp)
	lw $t1, -4208($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4212($fp)
	lw $t1, -4184($fp)
	lw $t2, -4212($fp)
	bne $t1, $t2, label247
	j label248
label247:
	li $t0, 1
	sw $t0, -4168($fp)
label248:
label242:
	li $t0, 13040
	sw $t0, -4216($fp)
	lw $t0, -1740($fp)
	sw $t0, -4220($fp)
	li $t0, 0
	lw $t1, -4220($fp)
	sub $t0, $t0, $t1
	sw $t0, -4224($fp)
	lw $t0, -4216($fp)
	lw $t1, -4224($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4228($fp)
	li $t0, 0
	lw $t1, -4228($fp)
	sub $t0, $t0, $t1
	sw $t0, -4232($fp)
	j label208
label210:
label190:
label186:
	j label184
label183:
	li $t0, 2045
	sw $t0, -4236($fp)
	lw $t0, -1272($fp)
	sw $t0, -4240($fp)
	lw $t0, -4236($fp)
	lw $t1, -4240($fp)
	sub $t0, $t0, $t1
	sw $t0, -4244($fp)
	lw $ra, -4($fp)
	lw $v0, -4244($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label184:
label177:
	li $t0, 0
	sw $t0, -4248($fp)
	addi $t0, $fp, -36
	sw $t0, -4252($fp)
	lw $t0, -1488($fp)
	sw $t0, -4256($fp)
	lw $t0, -4256($fp)
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	sw $t0, -4260($fp)
	li $t0, 4
	lw $t1, -4260($fp)
	mul $t0, $t0, $t1
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	lw $t1, -4252($fp)
	add $t0, $t0, $t1
	sw $t0, -4268($fp)
	lw $t0, -4268($fp)
	lw $t1, 0($t0)
	sw $t1, -4272($fp)
	lw $t1, -4272($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label252
label252:
	li $t0, 0
	sw $t0, -4276($fp)
	li $t0, 22667
	sw $t0, -4280($fp)
	lw $t1, -4280($fp)
	li $t2, 0
	bne $t1, $t2, label254
	j label253
label253:
	li $t0, 1
	sw $t0, -4276($fp)
label254:
	lw $t0, -2508($fp)
	sw $t0, -4284($fp)
	lw $t1, -4276($fp)
	lw $t2, -4284($fp)
	bgt $t1, $t2, label249
	j label251
label251:
	addi $t0, $fp, -180
	sw $t0, -4288($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -4304($fp)
	sub $t0, $t0, $t1
	sw $t0, -4308($fp)
	li $t0, 9184
	sw $t0, -4312($fp)
	lw $t1, -4308($fp)
	lw $t2, -4312($fp)
	bgt $t1, $t2, label249
	j label250
label249:
	li $t0, 1
	sw $t0, -4248($fp)
label250:
	li $t0, 32995
	sw $t0, -4356($fp)
	lw $t0, -4356($fp)
	sw $t0, -4360($fp)
	lw $t0, -4360($fp)
	sw $t0, -4364($fp)
	li $t0, 20326
	sw $t0, -4368($fp)
	lw $t0, -4368($fp)
	sw $t0, -4372($fp)
	lw $t0, -4372($fp)
	sw $t0, -4376($fp)
	li $t0, 42456
	sw $t0, -4380($fp)
	addi $t0, $fp, -4352
	sw $t0, -4384($fp)
	li $t0, 0
	sw $t0, -4388($fp)
	lw $t0, -4388($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4392($fp)
	lw $t0, -4384($fp)
	lw $t1, -4392($fp)
	add $t0, $t0, $t1
	sw $t0, -4396($fp)
	lw $t0, -4380($fp)
	lw $t1, -4396($fp)
	sw $t0, 0($t1)
	lw $t0, -4396($fp)
	lw $t1, 0($t0)
	sw $t1, -4400($fp)
	li $t0, 16690
	sw $t0, -4404($fp)
	addi $t0, $fp, -4352
	sw $t0, -4408($fp)
	li $t0, 1
	sw $t0, -4412($fp)
	lw $t0, -4412($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4416($fp)
	lw $t0, -4408($fp)
	lw $t1, -4416($fp)
	add $t0, $t0, $t1
	sw $t0, -4420($fp)
	lw $t0, -4404($fp)
	lw $t1, -4420($fp)
	sw $t0, 0($t1)
	lw $t0, -4420($fp)
	lw $t1, 0($t0)
	sw $t1, -4424($fp)
	li $t0, 51828
	sw $t0, -4428($fp)
	addi $t0, $fp, -4352
	sw $t0, -4432($fp)
	li $t0, 2
	sw $t0, -4436($fp)
	lw $t0, -4436($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4440($fp)
	lw $t0, -4432($fp)
	lw $t1, -4440($fp)
	add $t0, $t0, $t1
	sw $t0, -4444($fp)
	lw $t0, -4428($fp)
	lw $t1, -4444($fp)
	sw $t0, 0($t1)
	lw $t0, -4444($fp)
	lw $t1, 0($t0)
	sw $t1, -4448($fp)
	li $t0, 62252
	sw $t0, -4452($fp)
	addi $t0, $fp, -4352
	sw $t0, -4456($fp)
	li $t0, 3
	sw $t0, -4460($fp)
	lw $t0, -4460($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4464($fp)
	lw $t0, -4456($fp)
	lw $t1, -4464($fp)
	add $t0, $t0, $t1
	sw $t0, -4468($fp)
	lw $t0, -4452($fp)
	lw $t1, -4468($fp)
	sw $t0, 0($t1)
	lw $t0, -4468($fp)
	lw $t1, 0($t0)
	sw $t1, -4472($fp)
	li $t0, 64823
	sw $t0, -4476($fp)
	addi $t0, $fp, -4352
	sw $t0, -4480($fp)
	li $t0, 4
	sw $t0, -4484($fp)
	lw $t0, -4484($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4488($fp)
	lw $t0, -4480($fp)
	lw $t1, -4488($fp)
	add $t0, $t0, $t1
	sw $t0, -4492($fp)
	lw $t0, -4476($fp)
	lw $t1, -4492($fp)
	sw $t0, 0($t1)
	lw $t0, -4492($fp)
	lw $t1, 0($t0)
	sw $t1, -4496($fp)
	li $t0, 13060
	sw $t0, -4500($fp)
	addi $t0, $fp, -4352
	sw $t0, -4504($fp)
	li $t0, 5
	sw $t0, -4508($fp)
	lw $t0, -4508($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4512($fp)
	lw $t0, -4504($fp)
	lw $t1, -4512($fp)
	add $t0, $t0, $t1
	sw $t0, -4516($fp)
	lw $t0, -4500($fp)
	lw $t1, -4516($fp)
	sw $t0, 0($t1)
	lw $t0, -4516($fp)
	lw $t1, 0($t0)
	sw $t1, -4520($fp)
	li $t0, 8612
	sw $t0, -4524($fp)
	addi $t0, $fp, -4352
	sw $t0, -4528($fp)
	li $t0, 6
	sw $t0, -4532($fp)
	lw $t0, -4532($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4536($fp)
	lw $t0, -4528($fp)
	lw $t1, -4536($fp)
	add $t0, $t0, $t1
	sw $t0, -4540($fp)
	lw $t0, -4524($fp)
	lw $t1, -4540($fp)
	sw $t0, 0($t1)
	lw $t0, -4540($fp)
	lw $t1, 0($t0)
	sw $t1, -4544($fp)
	li $t0, 52999
	sw $t0, -4548($fp)
	addi $t0, $fp, -4352
	sw $t0, -4552($fp)
	li $t0, 7
	sw $t0, -4556($fp)
	lw $t0, -4556($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4560($fp)
	lw $t0, -4552($fp)
	lw $t1, -4560($fp)
	add $t0, $t0, $t1
	sw $t0, -4564($fp)
	lw $t0, -4548($fp)
	lw $t1, -4564($fp)
	sw $t0, 0($t1)
	lw $t0, -4564($fp)
	lw $t1, 0($t0)
	sw $t1, -4568($fp)
	li $t0, 16332
	sw $t0, -4572($fp)
	addi $t0, $fp, -4352
	sw $t0, -4576($fp)
	li $t0, 8
	sw $t0, -4580($fp)
	lw $t0, -4580($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4584($fp)
	lw $t0, -4576($fp)
	lw $t1, -4584($fp)
	add $t0, $t0, $t1
	sw $t0, -4588($fp)
	lw $t0, -4572($fp)
	lw $t1, -4588($fp)
	sw $t0, 0($t1)
	lw $t0, -4588($fp)
	lw $t1, 0($t0)
	sw $t1, -4592($fp)
	li $t0, 61048
	sw $t0, -4596($fp)
	addi $t0, $fp, -4352
	sw $t0, -4600($fp)
	li $t0, 9
	sw $t0, -4604($fp)
	lw $t0, -4604($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4608($fp)
	lw $t0, -4600($fp)
	lw $t1, -4608($fp)
	add $t0, $t0, $t1
	sw $t0, -4612($fp)
	lw $t0, -4596($fp)
	lw $t1, -4612($fp)
	sw $t0, 0($t1)
	lw $t0, -4612($fp)
	lw $t1, 0($t0)
	sw $t1, -4616($fp)
	li $t0, 39531
	sw $t0, -4620($fp)
	lw $t0, -4620($fp)
	sw $t0, -4624($fp)
	lw $t0, -4624($fp)
	sw $t0, -4628($fp)
	li $t0, 38549
	sw $t0, -4632($fp)
	lw $t0, -4632($fp)
	sw $t0, -4636($fp)
	lw $t0, -4636($fp)
	sw $t0, -4640($fp)
	li $t0, 20203
	sw $t0, -4644($fp)
	lw $t0, -4644($fp)
	sw $t0, -4648($fp)
	lw $t0, -4648($fp)
	sw $t0, -4652($fp)
	li $t0, 17960
	sw $t0, -4656($fp)
	lw $t0, -4656($fp)
	sw $t0, -4660($fp)
	lw $t0, -4660($fp)
	sw $t0, -4664($fp)
	li $t0, 45938
	sw $t0, -4668($fp)
	lw $t0, -4668($fp)
	sw $t0, -4672($fp)
	lw $t0, -4672($fp)
	sw $t0, -4676($fp)
	li $t0, 56925
	sw $t0, -4680($fp)
	li $t0, 36632
	sw $t0, -4684($fp)
	lw $t0, -4680($fp)
	lw $t1, -4684($fp)
	sub $t0, $t0, $t1
	sw $t0, -4688($fp)
	lw $t1, -4688($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label256
label255:
label258:
	lw $t0, -2484($fp)
	sw $t0, -4692($fp)
	lw $t1, -4692($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label260
label259:
	li $t0, 0
	sw $t0, -4696($fp)
	lw $t0, -1728($fp)
	sw $t0, -4700($fp)
	li $t0, 15174
	sw $t0, -4704($fp)
	lw $t0, -4700($fp)
	lw $t1, -4704($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4708($fp)
	lw $t0, -4636($fp)
	sw $t0, -4712($fp)
	lw $t0, -4708($fp)
	lw $t1, -4712($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4716($fp)
	lw $t1, -4716($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label262
label263:
	li $t0, 22691
	sw $t0, -4720($fp)
	lw $t1, -4720($fp)
	li $t2, 0
	bne $t1, $t2, label261
	j label262
label261:
	li $t0, 1
	sw $t0, -4696($fp)
label262:
	lw $t0, -4696($fp)
	sw $t0, -3480($fp)
	lw $t0, -3480($fp)
	sw $t0, -4724($fp)
	lw $ra, -4($fp)
	lw $v0, -4724($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label258
label260:
	j label257
label256:
	addi $t0, $fp, -292
	sw $t0, -4728($fp)
	lw $t0, -564($fp)
	sw $t0, -4732($fp)
	li $t0, 4
	lw $t1, -4732($fp)
	mul $t0, $t0, $t1
	sw $t0, -4736($fp)
	lw $t0, -4736($fp)
	lw $t1, -4728($fp)
	add $t0, $t0, $t1
	sw $t0, -4740($fp)
	lw $t0, -4740($fp)
	lw $t1, 0($t0)
	sw $t1, -4744($fp)
	li $t0, 0
	lw $t1, -4744($fp)
	sub $t0, $t0, $t1
	sw $t0, -4748($fp)
	lw $t1, -4748($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label265
label267:
	li $t0, 34961
	sw $t0, -4752($fp)
	li $t0, 50818
	sw $t0, -4756($fp)
	lw $t0, -4752($fp)
	lw $t1, -4756($fp)
	sub $t0, $t0, $t1
	sw $t0, -4760($fp)
	li $t0, 7232
	sw $t0, -4764($fp)
	lw $t0, -4760($fp)
	lw $t1, -4764($fp)
	add $t0, $t0, $t1
	sw $t0, -4768($fp)
	addi $t0, $fp, -216
	sw $t0, -4772($fp)
	lw $t0, -1740($fp)
	sw $t0, -4776($fp)
	li $t0, 4
	lw $t1, -4776($fp)
	mul $t0, $t0, $t1
	sw $t0, -4780($fp)
	lw $t0, -4780($fp)
	lw $t1, -4772($fp)
	add $t0, $t0, $t1
	sw $t0, -4784($fp)
	lw $t0, -4784($fp)
	lw $t1, 0($t0)
	sw $t1, -4788($fp)
	lw $t0, -4768($fp)
	lw $t1, -4788($fp)
	add $t0, $t0, $t1
	sw $t0, -4792($fp)
	lw $t1, -4792($fp)
	li $t2, 0
	bne $t1, $t2, label264
	j label265
label264:
	li $t0, 0
	sw $t0, -4796($fp)
	lw $t0, -3516($fp)
	sw $t0, -4800($fp)
	li $t0, 34000
	sw $t0, -4804($fp)
	lw $t0, -4800($fp)
	lw $t1, -4804($fp)
	add $t0, $t0, $t1
	sw $t0, -4808($fp)
	lw $t1, -4808($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label269
label270:
	li $t0, 0
	sw $t0, -4812($fp)
	li $t0, 63859
	sw $t0, -4816($fp)
	lw $t1, -4816($fp)
	li $t2, 0
	bne $t1, $t2, label272
	j label271
label271:
	li $t0, 1
	sw $t0, -4812($fp)
label272:
	lw $t0, -1956($fp)
	sw $t0, -4820($fp)
	lw $t0, -2784($fp)
	sw $t0, -4824($fp)
	lw $t0, -4820($fp)
	lw $t1, -4824($fp)
	mul $t0, $t0, $t1
	sw $t0, -4828($fp)
	lw $t1, -4812($fp)
	lw $t2, -4828($fp)
	beq $t1, $t2, label268
	j label269
label268:
	li $t0, 1
	sw $t0, -4796($fp)
label269:
	j label266
label265:
	li $t0, 0
	sw $t0, -4832($fp)
	lw $t0, -528($fp)
	sw $t0, -4836($fp)
	li $t0, 9277
	sw $t0, -4840($fp)
	li $t0, 0
	lw $t1, -4840($fp)
	sub $t0, $t0, $t1
	sw $t0, -4844($fp)
	lw $t0, -4836($fp)
	lw $t1, -4844($fp)
	mul $t0, $t0, $t1
	sw $t0, -4848($fp)
	addi $t0, $fp, -412
	sw $t0, -4852($fp)
	li $t0, 0
	sw $t0, -4856($fp)
	lw $t0, -1704($fp)
	sw $t0, -4860($fp)
	lw $t0, -2496($fp)
	sw $t0, -4864($fp)
	lw $t1, -4860($fp)
	lw $t2, -4864($fp)
	beq $t1, $t2, label275
	j label276
label275:
	li $t0, 1
	sw $t0, -4856($fp)
label276:
	li $t0, 4
	lw $t1, -4856($fp)
	mul $t0, $t0, $t1
	sw $t0, -4868($fp)
	lw $t0, -4868($fp)
	lw $t1, -4852($fp)
	add $t0, $t0, $t1
	sw $t0, -4872($fp)
	lw $t0, -4872($fp)
	lw $t1, 0($t0)
	sw $t1, -4876($fp)
	lw $t1, -4848($fp)
	lw $t2, -4876($fp)
	bgt $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -4832($fp)
label274:
	lw $ra, -4($fp)
	lw $v0, -4832($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label266:
label257:
	lw $t0, -4360($fp)
	sw $t0, -4880($fp)
	lw $t0, -4880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4372($fp)
	sw $t0, -4884($fp)
	lw $t0, -4884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4352
	sw $t0, -4888($fp)
	li $t0, 0
	sw $t0, -4892($fp)
	li $t0, 4
	lw $t1, -4892($fp)
	mul $t0, $t0, $t1
	sw $t0, -4896($fp)
	lw $t0, -4896($fp)
	lw $t1, -4888($fp)
	add $t0, $t0, $t1
	sw $t0, -4900($fp)
	lw $t0, -4900($fp)
	lw $t1, 0($t0)
	sw $t1, -4904($fp)
	lw $t0, -4904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4352
	sw $t0, -4908($fp)
	li $t0, 1
	sw $t0, -4912($fp)
	li $t0, 4
	lw $t1, -4912($fp)
	mul $t0, $t0, $t1
	sw $t0, -4916($fp)
	lw $t0, -4916($fp)
	lw $t1, -4908($fp)
	add $t0, $t0, $t1
	sw $t0, -4920($fp)
	lw $t0, -4920($fp)
	lw $t1, 0($t0)
	sw $t1, -4924($fp)
	lw $t0, -4924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4352
	sw $t0, -4928($fp)
	li $t0, 2
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
	lw $t0, -4944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4352
	sw $t0, -4948($fp)
	li $t0, 3
	sw $t0, -4952($fp)
	li $t0, 4
	lw $t1, -4952($fp)
	mul $t0, $t0, $t1
	sw $t0, -4956($fp)
	lw $t0, -4956($fp)
	lw $t1, -4948($fp)
	add $t0, $t0, $t1
	sw $t0, -4960($fp)
	lw $t0, -4960($fp)
	lw $t1, 0($t0)
	sw $t1, -4964($fp)
	lw $t0, -4964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4352
	sw $t0, -4968($fp)
	li $t0, 4
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
	lw $t0, -4984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4352
	sw $t0, -4988($fp)
	li $t0, 5
	sw $t0, -4992($fp)
	li $t0, 4
	lw $t1, -4992($fp)
	mul $t0, $t0, $t1
	sw $t0, -4996($fp)
	lw $t0, -4996($fp)
	lw $t1, -4988($fp)
	add $t0, $t0, $t1
	sw $t0, -5000($fp)
	lw $t0, -5000($fp)
	lw $t1, 0($t0)
	sw $t1, -5004($fp)
	lw $t0, -5004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4352
	sw $t0, -5008($fp)
	li $t0, 6
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
	lw $t0, -5024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4352
	sw $t0, -5028($fp)
	li $t0, 7
	sw $t0, -5032($fp)
	li $t0, 4
	lw $t1, -5032($fp)
	mul $t0, $t0, $t1
	sw $t0, -5036($fp)
	lw $t0, -5036($fp)
	lw $t1, -5028($fp)
	add $t0, $t0, $t1
	sw $t0, -5040($fp)
	lw $t0, -5040($fp)
	lw $t1, 0($t0)
	sw $t1, -5044($fp)
	lw $t0, -5044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4352
	sw $t0, -5048($fp)
	li $t0, 8
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
	lw $t0, -5064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4352
	sw $t0, -5068($fp)
	li $t0, 9
	sw $t0, -5072($fp)
	li $t0, 4
	lw $t1, -5072($fp)
	mul $t0, $t0, $t1
	sw $t0, -5076($fp)
	lw $t0, -5076($fp)
	lw $t1, -5068($fp)
	add $t0, $t0, $t1
	sw $t0, -5080($fp)
	lw $t0, -5080($fp)
	lw $t1, 0($t0)
	sw $t1, -5084($fp)
	lw $t0, -5084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4624($fp)
	sw $t0, -5088($fp)
	lw $t0, -5088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4636($fp)
	sw $t0, -5092($fp)
	lw $t0, -5092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4648($fp)
	sw $t0, -5096($fp)
	lw $t0, -5096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4660($fp)
	sw $t0, -5100($fp)
	lw $t0, -5100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4672($fp)
	sw $t0, -5104($fp)
	lw $t0, -5104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5108($fp)
	lw $t0, -1980($fp)
	sw $t0, -5112($fp)
	lw $t1, -5112($fp)
	li $t2, 0
	bne $t1, $t2, label278
	j label277
label277:
	li $t0, 1
	sw $t0, -5108($fp)
label278:
	lw $t0, -432($fp)
	sw $t0, -5116($fp)
	lw $t0, -5108($fp)
	lw $t1, -5116($fp)
	mul $t0, $t0, $t1
	sw $t0, -5120($fp)
	lw $ra, -4($fp)
	lw $v0, -5120($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -2544($fp)
	sw $t0, -5124($fp)
	li $t0, 56668
	sw $t0, -5128($fp)
	lw $t0, -5124($fp)
	lw $t1, -5128($fp)
	sub $t0, $t0, $t1
	sw $t0, -5132($fp)
	li $t0, 43817
	sw $t0, -5136($fp)
	lw $t0, -5136($fp)
	sw $t0, -5140($fp)
	lw $t0, -5140($fp)
	sw $t0, -5144($fp)
	li $t0, 23846
	sw $t0, -5148($fp)
	addi $t0, $fp, -328
	sw $t0, -5152($fp)
	lw $t0, -1992($fp)
	sw $t0, -5156($fp)
	lw $t0, -528($fp)
	sw $t0, -5160($fp)
	lw $t0, -5156($fp)
	lw $t1, -5160($fp)
	add $t0, $t0, $t1
	sw $t0, -5164($fp)
	li $t0, 4
	lw $t1, -5164($fp)
	mul $t0, $t0, $t1
	sw $t0, -5168($fp)
	lw $t0, -5168($fp)
	lw $t1, -5152($fp)
	add $t0, $t0, $t1
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	lw $t1, 0($t0)
	sw $t1, -5176($fp)
	lw $t0, -5148($fp)
	lw $t1, -5176($fp)
	sub $t0, $t0, $t1
	sw $t0, -5180($fp)
	li $t0, 316
	sw $t0, -5184($fp)
	li $t0, 11276
	sw $t0, -5188($fp)
	li $t0, 44172
	sw $t0, -5192($fp)
	lw $t0, -5188($fp)
	lw $t1, -5192($fp)
	add $t0, $t0, $t1
	sw $t0, -5196($fp)
	lw $t1, -5184($fp)
	lw $t2, -5196($fp)
	ble $t1, $t2, label283
	j label282
label283:
	lw $t0, -1776($fp)
	sw $t0, -5200($fp)
	lw $t1, -5200($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label282
label282:
	li $t0, 0
	sw $t0, -5204($fp)
	li $t0, 42772
	sw $t0, -5208($fp)
	lw $t1, -5208($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label285
label284:
	li $t0, 1
	sw $t0, -5204($fp)
label285:
	lw $t0, -1752($fp)
	sw $t0, -5212($fp)
	lw $t0, -5204($fp)
	lw $t1, -5212($fp)
	add $t0, $t0, $t1
	sw $t0, -5216($fp)
	lw $t1, -5216($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label280
label279:
	li $t0, 27966
	sw $t0, -5220($fp)
	li $t0, 0
	sw $t0, -5224($fp)
	addi $t0, $fp, -216
	sw $t0, -5228($fp)
	lw $t0, -1776($fp)
	sw $t0, -5232($fp)
	li $t0, 4
	lw $t1, -5232($fp)
	mul $t0, $t0, $t1
	sw $t0, -5236($fp)
	lw $t0, -5236($fp)
	lw $t1, -5228($fp)
	add $t0, $t0, $t1
	sw $t0, -5240($fp)
	lw $t0, -5240($fp)
	lw $t1, 0($t0)
	sw $t1, -5244($fp)
	li $t0, 30464
	sw $t0, -5248($fp)
	lw $t0, -1728($fp)
	sw $t0, -5252($fp)
	lw $t0, -5248($fp)
	lw $t1, -5252($fp)
	add $t0, $t0, $t1
	sw $t0, -5256($fp)
	lw $t1, -5244($fp)
	lw $t2, -5256($fp)
	blt $t1, $t2, label289
	j label290
label289:
	li $t0, 1
	sw $t0, -5224($fp)
label290:
	lw $t1, -5220($fp)
	lw $t2, -5224($fp)
	beq $t1, $t2, label286
	j label287
label286:
	addi $t0, $fp, -4352
	sw $t0, -5260($fp)
	li $t0, 28447
	sw $t0, -5264($fp)
	li $t0, 0
	sw $t0, -5268($fp)
	lw $t0, -456($fp)
	sw $t0, -5272($fp)
	li $t0, 43303
	sw $t0, -5276($fp)
	lw $t0, -5272($fp)
	lw $t1, -5276($fp)
	add $t0, $t0, $t1
	sw $t0, -5280($fp)
	lw $t1, -5280($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label293
label293:
	lw $t0, -456($fp)
	sw $t0, -5284($fp)
	lw $t1, -5284($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label292
label291:
	li $t0, 1
	sw $t0, -5268($fp)
label292:
	lw $t0, 12($fp)
	sw $t0, -5288($fp)
	li $t0, 55206
	sw $t0, -5292($fp)
	lw $t0, -5288($fp)
	lw $t1, -5292($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5296($fp)
	li $t0, 0
	lw $t1, -5296($fp)
	sub $t0, $t0, $t1
	sw $t0, -5300($fp)
	addi $t0, $fp, -8
	sw $t0, -5304($fp)
	lw $t0, -444($fp)
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
	li $t0, 13272
	sw $t0, -5324($fp)
	lw $t0, -1728($fp)
	sw $t0, -5328($fp)
	lw $t0, -5324($fp)
	lw $t1, -5328($fp)
	add $t0, $t0, $t1
	sw $t0, -5332($fp)
	lw $t0, -1284($fp)
	sw $t0, -5336($fp)
	addi $sp, $sp, -4
	lw $t0, -5268($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5336($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5340($fp)
	addi $sp, $sp, 24
	li $t0, 6671
	sw $t0, -5344($fp)
	lw $t0, -480($fp)
	sw $t0, -5348($fp)
	lw $t0, -5344($fp)
	lw $t1, -5348($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5352($fp)
	lw $t0, -1272($fp)
	sw $t0, -5356($fp)
	lw $t0, -5352($fp)
	lw $t1, -5356($fp)
	add $t0, $t0, $t1
	sw $t0, -5360($fp)
	li $t0, 0
	sw $t0, -5364($fp)
	lw $t0, -1452($fp)
	sw $t0, -5368($fp)
	li $t0, 32870
	sw $t0, -5372($fp)
	lw $t1, -5368($fp)
	lw $t2, -5372($fp)
	beq $t1, $t2, label296
	j label295
label296:
	li $t0, 63816
	sw $t0, -5376($fp)
	lw $t1, -5376($fp)
	li $t2, 0
	bne $t1, $t2, label294
	j label295
label294:
	li $t0, 1
	sw $t0, -5364($fp)
label295:
	lw $t0, -432($fp)
	sw $t0, -5380($fp)
	li $t0, 54247
	sw $t0, -5384($fp)
	lw $t0, -5380($fp)
	lw $t1, -5384($fp)
	add $t0, $t0, $t1
	sw $t0, -5388($fp)
	lw $t0, -3540($fp)
	sw $t0, -5392($fp)
	li $t0, 0
	lw $t1, -5392($fp)
	sub $t0, $t0, $t1
	sw $t0, -5396($fp)
	li $t0, 43613
	sw $t0, -5400($fp)
	lw $t0, -5396($fp)
	lw $t1, -5400($fp)
	sub $t0, $t0, $t1
	sw $t0, -5404($fp)
	addi $sp, $sp, -4
	lw $t0, -5340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5404($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5408($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -5412($fp)
	li $t0, 0
	sw $t0, -5416($fp)
	lw $t0, -552($fp)
	sw $t0, -5420($fp)
	lw $t0, -3276($fp)
	sw $t0, -5424($fp)
	lw $t1, -5420($fp)
	lw $t2, -5424($fp)
	blt $t1, $t2, label299
	j label300
label299:
	li $t0, 1
	sw $t0, -5416($fp)
label300:
	lw $t0, -1980($fp)
	sw $t0, -5428($fp)
	lw $t1, -5416($fp)
	lw $t2, -5428($fp)
	blt $t1, $t2, label297
	j label298
label297:
	li $t0, 1
	sw $t0, -5412($fp)
label298:
	li $t0, 0
	sw $t0, -5432($fp)
	li $t0, 59857
	sw $t0, -5436($fp)
	lw $t1, -5436($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label302
label301:
	li $t0, 1
	sw $t0, -5432($fp)
label302:
	li $t0, 0
	sw $t0, -5440($fp)
	li $t0, 48101
	sw $t0, -5444($fp)
	li $t0, 0
	lw $t1, -5444($fp)
	sub $t0, $t0, $t1
	sw $t0, -5448($fp)
	li $t0, 14716
	sw $t0, -5452($fp)
	lw $t1, -5448($fp)
	lw $t2, -5452($fp)
	bne $t1, $t2, label303
	j label304
label303:
	li $t0, 1
	sw $t0, -5440($fp)
label304:
	lw $t0, 4($fp)
	sw $t0, -5456($fp)
	lw $t0, -5456($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -5460($fp)
	li $t0, 0
	sw $t0, -5464($fp)
	addi $t0, $fp, -292
	sw $t0, -5468($fp)
	li $t0, 3
	sw $t0, -5472($fp)
	li $t0, 4
	lw $t1, -5472($fp)
	mul $t0, $t0, $t1
	sw $t0, -5476($fp)
	lw $t0, -5476($fp)
	lw $t1, -5468($fp)
	add $t0, $t0, $t1
	sw $t0, -5480($fp)
	lw $t0, -5480($fp)
	lw $t1, 0($t0)
	sw $t1, -5484($fp)
	li $t0, 43525
	sw $t0, -5488($fp)
	lw $t1, -5484($fp)
	lw $t2, -5488($fp)
	bgt $t1, $t2, label305
	j label306
label305:
	li $t0, 1
	sw $t0, -5464($fp)
label306:
	addi $sp, $sp, -4
	lw $t0, -5460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5464($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5492($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -5432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5492($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5496($fp)
	addi $sp, $sp, 16
	lw $t0, -2496($fp)
	sw $t0, -5500($fp)
	lw $t0, -420($fp)
	sw $t0, -5504($fp)
	lw $t0, -5500($fp)
	lw $t1, -5504($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5508($fp)
	li $t0, 0
	lw $t1, -5508($fp)
	sub $t0, $t0, $t1
	sw $t0, -5512($fp)
	addi $sp, $sp, -4
	lw $t0, -5264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5512($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5516($fp)
	addi $sp, $sp, 24
	li $t0, 4
	lw $t1, -5516($fp)
	mul $t0, $t0, $t1
	sw $t0, -5520($fp)
	lw $t0, -5520($fp)
	lw $t1, -5260($fp)
	add $t0, $t0, $t1
	sw $t0, -5524($fp)
	lw $t0, -5524($fp)
	lw $t1, 0($t0)
	sw $t1, -5528($fp)
	li $t0, 0
	lw $t1, -5528($fp)
	sub $t0, $t0, $t1
	sw $t0, -5532($fp)
	lw $ra, -4($fp)
	lw $v0, -5532($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label288
label287:
	li $t0, 0
	sw $t0, -5536($fp)
	lw $t0, -1548($fp)
	sw $t0, -5540($fp)
	lw $t1, -5540($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label308
label307:
	li $t0, 1
	sw $t0, -5536($fp)
label308:
	lw $t0, -1740($fp)
	sw $t0, -5544($fp)
	li $t0, 0
	lw $t1, -5544($fp)
	sub $t0, $t0, $t1
	sw $t0, -5548($fp)
	lw $t0, -5536($fp)
	lw $t1, -5548($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5552($fp)
	li $t0, 0
	sw $t0, -5556($fp)
	li $t0, 0
	sw $t0, -5560($fp)
	li $t0, 46729
	sw $t0, -5564($fp)
	lw $t0, -2508($fp)
	sw $t0, -5568($fp)
	lw $t1, -5564($fp)
	lw $t2, -5568($fp)
	bge $t1, $t2, label311
	j label312
label311:
	li $t0, 1
	sw $t0, -5560($fp)
label312:
	lw $t0, -2772($fp)
	sw $t0, -5572($fp)
	lw $t1, -5560($fp)
	lw $t2, -5572($fp)
	bge $t1, $t2, label309
	j label310
label309:
	li $t0, 1
	sw $t0, -5556($fp)
label310:
	li $t0, 0
	sw $t0, -5576($fp)
	lw $t0, -1740($fp)
	sw $t0, -5580($fp)
	lw $t0, -1764($fp)
	sw $t0, -5584($fp)
	lw $t0, -5580($fp)
	lw $t1, -5584($fp)
	sub $t0, $t0, $t1
	sw $t0, -5588($fp)
	lw $t0, -480($fp)
	sw $t0, -5592($fp)
	lw $t1, -5588($fp)
	lw $t2, -5592($fp)
	blt $t1, $t2, label313
	j label314
label313:
	li $t0, 1
	sw $t0, -5576($fp)
label314:
	lw $t0, -1692($fp)
	sw $t0, -5596($fp)
	li $t0, 19593
	sw $t0, -5600($fp)
	lw $t0, -5596($fp)
	lw $t1, -5600($fp)
	mul $t0, $t0, $t1
	sw $t0, -5604($fp)
	lw $t0, -2472($fp)
	sw $t0, -5608($fp)
	lw $t0, -5604($fp)
	lw $t1, -5608($fp)
	mul $t0, $t0, $t1
	sw $t0, -5612($fp)
	lw $t0, -2784($fp)
	sw $t0, -5616($fp)
	li $t0, 0
	sw $t0, -5620($fp)
	lw $t0, -1548($fp)
	sw $t0, -5624($fp)
	li $t0, 12728
	sw $t0, -5628($fp)
	lw $t0, -5624($fp)
	lw $t1, -5628($fp)
	add $t0, $t0, $t1
	sw $t0, -5632($fp)
	li $t0, 0
	sw $t0, -5636($fp)
	lw $t0, -564($fp)
	sw $t0, -5640($fp)
	lw $t1, -5640($fp)
	li $t2, 0
	bne $t1, $t2, label321
	j label320
label321:
	lw $t0, -540($fp)
	sw $t0, -5644($fp)
	lw $t1, -5644($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label320
label320:
	lw $t0, -1740($fp)
	sw $t0, -5648($fp)
	lw $t1, -5648($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label319
label318:
	li $t0, 1
	sw $t0, -5636($fp)
label319:
	li $t0, 0
	sw $t0, -5652($fp)
	li $t0, 0
	sw $t0, -5656($fp)
	lw $t0, -1536($fp)
	sw $t0, -5660($fp)
	li $t0, 12361
	sw $t0, -5664($fp)
	lw $t1, -5660($fp)
	lw $t2, -5664($fp)
	beq $t1, $t2, label324
	j label325
label324:
	li $t0, 1
	sw $t0, -5656($fp)
label325:
	lw $t0, -1740($fp)
	sw $t0, -5668($fp)
	lw $t1, -5656($fp)
	lw $t2, -5668($fp)
	beq $t1, $t2, label322
	j label323
label322:
	li $t0, 1
	sw $t0, -5652($fp)
label323:
	addi $sp, $sp, -4
	lw $t0, -5632($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5652($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5672($fp)
	addi $sp, $sp, 16
	lw $t1, -5672($fp)
	li $t2, 0
	bne $t1, $t2, label315
	j label317
label317:
	li $t0, 13729
	sw $t0, -5676($fp)
	lw $t1, -5676($fp)
	li $t2, 0
	bne $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -5620($fp)
label316:
	addi $sp, $sp, -4
	lw $t0, -5556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5620($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5680($fp)
	addi $sp, $sp, 24
	li $t0, 12052
	sw $t0, -5684($fp)
	lw $t0, -5680($fp)
	lw $t1, -5684($fp)
	mul $t0, $t0, $t1
	sw $t0, -5688($fp)
	lw $t0, -5552($fp)
	lw $t1, -5688($fp)
	add $t0, $t0, $t1
	sw $t0, -5692($fp)
	lw $t0, -2532($fp)
	sw $t0, -5696($fp)
	lw $t0, -5696($fp)
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	sw $t0, -5700($fp)
	lw $t0, -2496($fp)
	sw $t0, -5704($fp)
	addi $sp, $sp, -4
	lw $t0, -5700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5704($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5708($fp)
	addi $sp, $sp, 12
	lw $t0, -5692($fp)
	lw $t1, -5708($fp)
	add $t0, $t0, $t1
	sw $t0, -5712($fp)
label288:
	j label281
label280:
	li $t0, 0
	sw $t0, -5716($fp)
	li $t0, 0
	sw $t0, -5720($fp)
	li $t0, 0
	sw $t0, -5724($fp)
	lw $t0, -1704($fp)
	sw $t0, -5728($fp)
	lw $t1, -5728($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label330
label330:
	li $t0, 1
	sw $t0, -5724($fp)
label331:
	li $t0, 0
	lw $t1, -5724($fp)
	sub $t0, $t0, $t1
	sw $t0, -5732($fp)
	li $t0, 0
	lw $t1, -5732($fp)
	sub $t0, $t0, $t1
	sw $t0, -5736($fp)
	lw $t0, -1740($fp)
	sw $t0, -5740($fp)
	lw $t1, -5736($fp)
	lw $t2, -5740($fp)
	blt $t1, $t2, label328
	j label329
label328:
	li $t0, 1
	sw $t0, -5720($fp)
label329:
	li $t0, 0
	sw $t0, -5744($fp)
	lw $t0, -5140($fp)
	sw $t0, -5748($fp)
	lw $t1, -5748($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label332
label332:
	li $t0, 1
	sw $t0, -5744($fp)
label333:
	li $t0, 0
	lw $t1, -5744($fp)
	sub $t0, $t0, $t1
	sw $t0, -5752($fp)
	lw $t1, -5720($fp)
	lw $t2, -5752($fp)
	bge $t1, $t2, label326
	j label327
label326:
	li $t0, 1
	sw $t0, -5716($fp)
label327:
label281:
	li $t0, 0
	sw $t0, -5756($fp)
	lw $t0, -456($fp)
	sw $t0, -5760($fp)
	lw $t0, -4660($fp)
	sw $t0, -5764($fp)
	lw $t0, -5764($fp)
	sw $t0, -4648($fp)
	lw $t0, -4648($fp)
	sw $t0, -5768($fp)
	li $t0, 0
	sw $t0, -5772($fp)
	li $t0, 55869
	sw $t0, -5776($fp)
	lw $t1, -5776($fp)
	li $t2, 0
	bne $t1, $t2, label338
	j label337
label337:
	li $t0, 1
	sw $t0, -5772($fp)
label338:
	li $t0, 0
	lw $t1, -5772($fp)
	sub $t0, $t0, $t1
	sw $t0, -5780($fp)
	li $t0, 0
	sw $t0, -5784($fp)
	li $t0, 28871
	sw $t0, -5788($fp)
	lw $t1, -5788($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label341
label342:
	li $t0, 37861
	sw $t0, -5792($fp)
	lw $t1, -5792($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label341
label341:
	lw $t0, -4624($fp)
	sw $t0, -5796($fp)
	lw $t1, -5796($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label340
label339:
	li $t0, 1
	sw $t0, -5784($fp)
label340:
	lw $t0, -1968($fp)
	sw $t0, -5800($fp)
	lw $t0, -5800($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -5804($fp)
	addi $sp, $sp, -4
	lw $t0, -5780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5804($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5808($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -5760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5808($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5812($fp)
	addi $sp, $sp, 16
	li $t0, 52717
	sw $t0, -5816($fp)
	lw $t0, -5812($fp)
	lw $t1, -5816($fp)
	sub $t0, $t0, $t1
	sw $t0, -5820($fp)
	lw $t1, -5820($fp)
	li $t2, 0
	bne $t1, $t2, label336
	j label335
label336:
	li $t0, 0
	sw $t0, -5824($fp)
	lw $t0, -468($fp)
	sw $t0, -5828($fp)
	lw $t1, -5828($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label344
label345:
	lw $t0, -4360($fp)
	sw $t0, -5832($fp)
	lw $t1, -5832($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label344
label343:
	li $t0, 1
	sw $t0, -5824($fp)
label344:
	lw $t0, -564($fp)
	sw $t0, -5836($fp)
	li $t0, 31353
	sw $t0, -5840($fp)
	lw $t0, -5836($fp)
	lw $t1, -5840($fp)
	mul $t0, $t0, $t1
	sw $t0, -5844($fp)
	addi $sp, $sp, -4
	lw $t0, -5824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5844($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5848($fp)
	addi $sp, $sp, 12
	li $t0, 15413
	sw $t0, -5852($fp)
	lw $t0, -5848($fp)
	lw $t1, -5852($fp)
	mul $t0, $t0, $t1
	sw $t0, -5856($fp)
	li $t0, 0
	sw $t0, -5860($fp)
	lw $t0, -4672($fp)
	sw $t0, -5864($fp)
	lw $t0, -1716($fp)
	sw $t0, -5868($fp)
	lw $t0, -5864($fp)
	lw $t1, -5868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5872($fp)
	li $t0, 1609
	sw $t0, -5876($fp)
	lw $t1, -5872($fp)
	lw $t2, -5876($fp)
	beq $t1, $t2, label346
	j label347
label346:
	li $t0, 1
	sw $t0, -5860($fp)
label347:
	li $t0, 0
	sw $t0, -5880($fp)
	lw $t0, -1740($fp)
	sw $t0, -5884($fp)
	lw $t1, -5884($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label348
label348:
	li $t0, 1
	sw $t0, -5880($fp)
label349:
	li $t0, 38177
	sw $t0, -5888($fp)
	lw $t0, -5880($fp)
	lw $t1, -5888($fp)
	sub $t0, $t0, $t1
	sw $t0, -5892($fp)
	addi $sp, $sp, -4
	lw $t0, -5856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5892($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5896($fp)
	addi $sp, $sp, 16
	lw $t1, -5896($fp)
	li $t2, 0
	bne $t1, $t2, label334
	j label335
label334:
	li $t0, 1
	sw $t0, -5756($fp)
label335:
	lw $t0, -5756($fp)
	sw $t0, -4372($fp)
	lw $t0, -4372($fp)
	sw $t0, -5900($fp)
	li $t0, 0
	sw $t0, -5904($fp)
	li $t0, 29575
	sw $t0, -5908($fp)
	lw $t1, -5908($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label350
label350:
	li $t0, 1
	sw $t0, -5904($fp)
label351:
	lw $t0, -3264($fp)
	sw $t0, -5912($fp)
	li $t0, 61817
	sw $t0, -5916($fp)
	lw $t0, -5912($fp)
	lw $t1, -5916($fp)
	mul $t0, $t0, $t1
	sw $t0, -5920($fp)
	lw $t0, -5904($fp)
	lw $t1, -5920($fp)
	add $t0, $t0, $t1
	sw $t0, -5924($fp)
	addi $t0, $fp, -256
	sw $t0, -5928($fp)
	lw $t0, -1704($fp)
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
	lw $t0, -528($fp)
	sw $t0, -5948($fp)
	lw $t0, -1740($fp)
	sw $t0, -5952($fp)
	lw $t0, -5948($fp)
	lw $t1, -5952($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5956($fp)
	li $t0, 0
	lw $t1, -5956($fp)
	sub $t0, $t0, $t1
	sw $t0, -5960($fp)
	lw $t0, -4624($fp)
	sw $t0, -5964($fp)
	lw $t0, -1560($fp)
	sw $t0, -5968($fp)
	lw $t0, -5964($fp)
	lw $t1, -5968($fp)
	mul $t0, $t0, $t1
	sw $t0, -5972($fp)
	li $t0, 54901
	sw $t0, -5976($fp)
	lw $t0, -5972($fp)
	lw $t1, -5976($fp)
	mul $t0, $t0, $t1
	sw $t0, -5980($fp)
	addi $sp, $sp, -4
	lw $t0, -5944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5980($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5984($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -5984($fp)
	sub $t0, $t0, $t1
	sw $t0, -5988($fp)
	li $t0, 0
	sw $t0, -5992($fp)
	addi $t0, $fp, -4352
	sw $t0, -5996($fp)
	lw $t0, -1548($fp)
	sw $t0, -6000($fp)
	li $t0, 4
	lw $t1, -6000($fp)
	mul $t0, $t0, $t1
	sw $t0, -6004($fp)
	lw $t0, -6004($fp)
	lw $t1, -5996($fp)
	add $t0, $t0, $t1
	sw $t0, -6008($fp)
	lw $t0, -6008($fp)
	lw $t1, 0($t0)
	sw $t1, -6012($fp)
	lw $t1, -6012($fp)
	li $t2, 0
	bne $t1, $t2, label353
	j label352
label352:
	li $t0, 1
	sw $t0, -5992($fp)
label353:
	addi $sp, $sp, -4
	lw $t0, -5988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5992($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6016($fp)
	addi $sp, $sp, 12
	lw $t0, -5924($fp)
	lw $t1, -6016($fp)
	add $t0, $t0, $t1
	sw $t0, -6020($fp)
	addi $t0, $fp, -412
	sw $t0, -6024($fp)
	li $t0, 0
	sw $t0, -6028($fp)
	li $t0, 56828
	sw $t0, -6032($fp)
	lw $t0, -1500($fp)
	sw $t0, -6036($fp)
	lw $t1, -6032($fp)
	lw $t2, -6036($fp)
	blt $t1, $t2, label357
	j label358
label357:
	li $t0, 1
	sw $t0, -6028($fp)
label358:
	li $t0, 4
	lw $t1, -6028($fp)
	mul $t0, $t0, $t1
	sw $t0, -6040($fp)
	lw $t0, -6040($fp)
	lw $t1, -6024($fp)
	add $t0, $t0, $t1
	sw $t0, -6044($fp)
	lw $t0, -6044($fp)
	lw $t1, 0($t0)
	sw $t1, -6048($fp)
	addi $t0, $fp, -412
	sw $t0, -6052($fp)
	lw $t0, -1536($fp)
	sw $t0, -6056($fp)
	li $t0, 4
	lw $t1, -6056($fp)
	mul $t0, $t0, $t1
	sw $t0, -6060($fp)
	lw $t0, -6060($fp)
	lw $t1, -6052($fp)
	add $t0, $t0, $t1
	sw $t0, -6064($fp)
	lw $t0, -6064($fp)
	lw $t1, 0($t0)
	sw $t1, -6068($fp)
	lw $t0, -6048($fp)
	lw $t1, -6068($fp)
	mul $t0, $t0, $t1
	sw $t0, -6072($fp)
	addi $t0, $fp, -412
	sw $t0, -6076($fp)
	li $t0, 0
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
	lw $t1, -6072($fp)
	lw $t2, -6092($fp)
	beq $t1, $t2, label354
	j label355
label354:
	lw $t0, -540($fp)
	sw $t0, -6096($fp)
	lw $t0, -6096($fp)
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	sw $t0, -6100($fp)
	lw $t1, -6100($fp)
	li $t2, 0
	bne $t1, $t2, label359
	j label360
label359:
	li $t0, 6008
	sw $t0, -6128($fp)
	addi $t0, $fp, -6124
	sw $t0, -6132($fp)
	li $t0, 0
	sw $t0, -6136($fp)
	lw $t0, -6136($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6140($fp)
	lw $t0, -6132($fp)
	lw $t1, -6140($fp)
	add $t0, $t0, $t1
	sw $t0, -6144($fp)
	lw $t0, -6128($fp)
	lw $t1, -6144($fp)
	sw $t0, 0($t1)
	lw $t0, -6144($fp)
	lw $t1, 0($t0)
	sw $t1, -6148($fp)
	li $t0, 34127
	sw $t0, -6152($fp)
	addi $t0, $fp, -6124
	sw $t0, -6156($fp)
	li $t0, 1
	sw $t0, -6160($fp)
	lw $t0, -6160($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6164($fp)
	lw $t0, -6156($fp)
	lw $t1, -6164($fp)
	add $t0, $t0, $t1
	sw $t0, -6168($fp)
	lw $t0, -6152($fp)
	lw $t1, -6168($fp)
	sw $t0, 0($t1)
	lw $t0, -6168($fp)
	lw $t1, 0($t0)
	sw $t1, -6172($fp)
	li $t0, 15543
	sw $t0, -6176($fp)
	addi $t0, $fp, -6124
	sw $t0, -6180($fp)
	li $t0, 2
	sw $t0, -6184($fp)
	lw $t0, -6184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6188($fp)
	lw $t0, -6180($fp)
	lw $t1, -6188($fp)
	add $t0, $t0, $t1
	sw $t0, -6192($fp)
	lw $t0, -6176($fp)
	lw $t1, -6192($fp)
	sw $t0, 0($t1)
	lw $t0, -6192($fp)
	lw $t1, 0($t0)
	sw $t1, -6196($fp)
	li $t0, 60255
	sw $t0, -6200($fp)
	addi $t0, $fp, -6124
	sw $t0, -6204($fp)
	li $t0, 3
	sw $t0, -6208($fp)
	lw $t0, -6208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6212($fp)
	lw $t0, -6204($fp)
	lw $t1, -6212($fp)
	add $t0, $t0, $t1
	sw $t0, -6216($fp)
	lw $t0, -6200($fp)
	lw $t1, -6216($fp)
	sw $t0, 0($t1)
	lw $t0, -6216($fp)
	lw $t1, 0($t0)
	sw $t1, -6220($fp)
	li $t0, 1462
	sw $t0, -6224($fp)
	addi $t0, $fp, -6124
	sw $t0, -6228($fp)
	li $t0, 4
	sw $t0, -6232($fp)
	lw $t0, -6232($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6236($fp)
	lw $t0, -6228($fp)
	lw $t1, -6236($fp)
	add $t0, $t0, $t1
	sw $t0, -6240($fp)
	lw $t0, -6224($fp)
	lw $t1, -6240($fp)
	sw $t0, 0($t1)
	lw $t0, -6240($fp)
	lw $t1, 0($t0)
	sw $t1, -6244($fp)
	li $t0, 13824
	sw $t0, -6248($fp)
	addi $t0, $fp, -6124
	sw $t0, -6252($fp)
	li $t0, 5
	sw $t0, -6256($fp)
	lw $t0, -6256($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6260($fp)
	lw $t0, -6252($fp)
	lw $t1, -6260($fp)
	add $t0, $t0, $t1
	sw $t0, -6264($fp)
	lw $t0, -6248($fp)
	lw $t1, -6264($fp)
	sw $t0, 0($t1)
	lw $t0, -6264($fp)
	lw $t1, 0($t0)
	sw $t1, -6268($fp)
	li $t0, 1390
	sw $t0, -6272($fp)
	lw $t0, -6272($fp)
	sw $t0, -6276($fp)
	lw $t0, -6276($fp)
	sw $t0, -6280($fp)
	li $t0, 0
	sw $t0, -6284($fp)
	addi $t0, $fp, -6124
	sw $t0, -6288($fp)
	li $t0, 0
	sw $t0, -6292($fp)
	lw $t0, -1740($fp)
	sw $t0, -6296($fp)
	li $t0, 14734
	sw $t0, -6300($fp)
	lw $t1, -6296($fp)
	lw $t2, -6300($fp)
	blt $t1, $t2, label365
	j label366
label365:
	li $t0, 1
	sw $t0, -6292($fp)
label366:
	li $t0, 4
	lw $t1, -6292($fp)
	mul $t0, $t0, $t1
	sw $t0, -6304($fp)
	lw $t0, -6304($fp)
	lw $t1, -6288($fp)
	add $t0, $t0, $t1
	sw $t0, -6308($fp)
	lw $t0, -6308($fp)
	lw $t1, 0($t0)
	sw $t1, -6312($fp)
	lw $t0, -1284($fp)
	sw $t0, -6316($fp)
	lw $t0, -6312($fp)
	lw $t1, -6316($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6320($fp)
	lw $t1, -6320($fp)
	li $t2, 0
	bne $t1, $t2, label364
	j label363
label364:
	li $t0, 3494
	sw $t0, -6324($fp)
	li $t0, 0
	sw $t0, -6328($fp)
	li $t0, 44693
	sw $t0, -6332($fp)
	li $t0, 43181
	sw $t0, -6336($fp)
	lw $t1, -6332($fp)
	lw $t2, -6336($fp)
	bgt $t1, $t2, label367
	j label368
label367:
	li $t0, 1
	sw $t0, -6328($fp)
label368:
	lw $t1, -6324($fp)
	lw $t2, -6328($fp)
	beq $t1, $t2, label362
	j label363
label362:
	li $t0, 1
	sw $t0, -6284($fp)
label363:
	addi $t0, $fp, -6124
	sw $t0, -6340($fp)
	li $t0, 0
	sw $t0, -6344($fp)
	li $t0, 4
	lw $t1, -6344($fp)
	mul $t0, $t0, $t1
	sw $t0, -6348($fp)
	lw $t0, -6348($fp)
	lw $t1, -6340($fp)
	add $t0, $t0, $t1
	sw $t0, -6352($fp)
	lw $t0, -6352($fp)
	lw $t1, 0($t0)
	sw $t1, -6356($fp)
	lw $t0, -6356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6124
	sw $t0, -6360($fp)
	li $t0, 1
	sw $t0, -6364($fp)
	li $t0, 4
	lw $t1, -6364($fp)
	mul $t0, $t0, $t1
	sw $t0, -6368($fp)
	lw $t0, -6368($fp)
	lw $t1, -6360($fp)
	add $t0, $t0, $t1
	sw $t0, -6372($fp)
	lw $t0, -6372($fp)
	lw $t1, 0($t0)
	sw $t1, -6376($fp)
	lw $t0, -6376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6124
	sw $t0, -6380($fp)
	li $t0, 2
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
	lw $t0, -6396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6124
	sw $t0, -6400($fp)
	li $t0, 3
	sw $t0, -6404($fp)
	li $t0, 4
	lw $t1, -6404($fp)
	mul $t0, $t0, $t1
	sw $t0, -6408($fp)
	lw $t0, -6408($fp)
	lw $t1, -6400($fp)
	add $t0, $t0, $t1
	sw $t0, -6412($fp)
	lw $t0, -6412($fp)
	lw $t1, 0($t0)
	sw $t1, -6416($fp)
	lw $t0, -6416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6124
	sw $t0, -6420($fp)
	li $t0, 4
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
	lw $t0, -6436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6124
	sw $t0, -6440($fp)
	li $t0, 5
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
	lw $t0, -6276($fp)
	sw $t0, -6460($fp)
	lw $t0, -6460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 35449
	sw $t0, -6464($fp)
	li $t0, 0
	sw $t0, -6468($fp)
	lw $t0, -1488($fp)
	sw $t0, -6472($fp)
	lw $t1, -6472($fp)
	li $t2, 0
	bne $t1, $t2, label370
	j label369
label369:
	li $t0, 1
	sw $t0, -6468($fp)
label370:
	li $t0, 0
	lw $t1, -6468($fp)
	sub $t0, $t0, $t1
	sw $t0, -6476($fp)
	li $t0, 0
	sw $t0, -6480($fp)
	lw $t0, -6276($fp)
	sw $t0, -6484($fp)
	lw $t1, -6484($fp)
	li $t2, 0
	bne $t1, $t2, label372
	j label371
label371:
	li $t0, 1
	sw $t0, -6480($fp)
label372:
	li $t0, 56911
	sw $t0, -6488($fp)
	lw $t0, -6480($fp)
	lw $t1, -6488($fp)
	add $t0, $t0, $t1
	sw $t0, -6492($fp)
	lw $t0, -3300($fp)
	sw $t0, -6496($fp)
	li $t0, 15855
	sw $t0, -6500($fp)
	li $t0, 57422
	sw $t0, -6504($fp)
	lw $t0, -6500($fp)
	lw $t1, -6504($fp)
	mul $t0, $t0, $t1
	sw $t0, -6508($fp)
	addi $sp, $sp, -4
	lw $t0, -6464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6476($fp)
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
	jal f7
	sw $v0, -6512($fp)
	addi $sp, $sp, 24
	lw $t0, -6512($fp)
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	sw $t0, -6516($fp)
	lw $ra, -4($fp)
	lw $v0, -6516($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -6520($fp)
	li $t0, 59297
	sw $t0, -6524($fp)
	lw $t0, -6524($fp)
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	sw $t0, -6528($fp)
	li $t0, 0
	sw $t0, -6532($fp)
	lw $t0, -552($fp)
	sw $t0, -6536($fp)
	li $t0, 64320
	sw $t0, -6540($fp)
	lw $t0, -6536($fp)
	lw $t1, -6540($fp)
	mul $t0, $t0, $t1
	sw $t0, -6544($fp)
	li $t0, 10940
	sw $t0, -6548($fp)
	lw $t1, -6544($fp)
	lw $t2, -6548($fp)
	beq $t1, $t2, label376
	j label377
label376:
	li $t0, 1
	sw $t0, -6532($fp)
label377:
	li $t0, 0
	sw $t0, -6552($fp)
	lw $t0, -3252($fp)
	sw $t0, -6556($fp)
	lw $t1, -6556($fp)
	li $t2, 0
	bne $t1, $t2, label378
	j label381
label381:
	li $t0, 38615
	sw $t0, -6560($fp)
	lw $t1, -6560($fp)
	li $t2, 0
	bne $t1, $t2, label378
	j label380
label380:
	li $t0, 3427
	sw $t0, -6564($fp)
	lw $t1, -6564($fp)
	li $t2, 0
	bne $t1, $t2, label378
	j label379
label378:
	li $t0, 1
	sw $t0, -6552($fp)
label379:
	addi $sp, $sp, -4
	lw $t0, -6528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6552($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6568($fp)
	addi $sp, $sp, 16
	li $t0, 51501
	sw $t0, -6572($fp)
	lw $t0, -6568($fp)
	lw $t1, -6572($fp)
	mul $t0, $t0, $t1
	sw $t0, -6576($fp)
	li $t0, 0
	lw $t1, -6576($fp)
	sub $t0, $t0, $t1
	sw $t0, -6580($fp)
	lw $t1, -6580($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label374
label375:
	li $t0, 0
	sw $t0, -6584($fp)
	li $t0, 49117
	sw $t0, -6588($fp)
	li $t0, 60906
	sw $t0, -6592($fp)
	lw $t1, -6588($fp)
	lw $t2, -6592($fp)
	blt $t1, $t2, label382
	j label383
label382:
	li $t0, 1
	sw $t0, -6584($fp)
label383:
	lw $t0, -1548($fp)
	sw $t0, -6596($fp)
	li $t0, 17318
	sw $t0, -6600($fp)
	lw $t0, -6596($fp)
	lw $t1, -6600($fp)
	mul $t0, $t0, $t1
	sw $t0, -6604($fp)
	lw $t1, -6584($fp)
	lw $t2, -6604($fp)
	bne $t1, $t2, label373
	j label374
label373:
	li $t0, 1
	sw $t0, -6520($fp)
label374:
	addi $t0, $fp, -6124
	sw $t0, -6608($fp)
	li $t0, 0
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
	addi $t0, $fp, -6124
	sw $t0, -6628($fp)
	li $t0, 1
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
	addi $t0, $fp, -6124
	sw $t0, -6648($fp)
	li $t0, 2
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
	addi $t0, $fp, -6124
	sw $t0, -6668($fp)
	li $t0, 3
	sw $t0, -6672($fp)
	li $t0, 4
	lw $t1, -6672($fp)
	mul $t0, $t0, $t1
	sw $t0, -6676($fp)
	lw $t0, -6676($fp)
	lw $t1, -6668($fp)
	add $t0, $t0, $t1
	sw $t0, -6680($fp)
	lw $t0, -6680($fp)
	lw $t1, 0($t0)
	sw $t1, -6684($fp)
	lw $t0, -6684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6124
	sw $t0, -6688($fp)
	li $t0, 4
	sw $t0, -6692($fp)
	li $t0, 4
	lw $t1, -6692($fp)
	mul $t0, $t0, $t1
	sw $t0, -6696($fp)
	lw $t0, -6696($fp)
	lw $t1, -6688($fp)
	add $t0, $t0, $t1
	sw $t0, -6700($fp)
	lw $t0, -6700($fp)
	lw $t1, 0($t0)
	sw $t1, -6704($fp)
	lw $t0, -6704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6124
	sw $t0, -6708($fp)
	li $t0, 5
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
	lw $t0, -6724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -6276($fp)
	sw $t0, -6728($fp)
	lw $t0, -6728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6732($fp)
	lw $t0, -432($fp)
	sw $t0, -6736($fp)
	lw $t0, -1956($fp)
	sw $t0, -6740($fp)
	lw $t0, -6736($fp)
	lw $t1, -6740($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6744($fp)
	lw $t1, -6744($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label386
label386:
	li $t0, 64530
	sw $t0, -6748($fp)
	lw $t1, -6748($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label385
label384:
	li $t0, 1
	sw $t0, -6732($fp)
label385:
	lw $ra, -4($fp)
	lw $v0, -6732($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label361
label360:
	addi $t0, $fp, -256
	sw $t0, -6752($fp)
	li $t0, 0
	sw $t0, -6756($fp)
	li $t0, 24946
	sw $t0, -6760($fp)
	lw $t1, -6760($fp)
	li $t2, 0
	bne $t1, $t2, label392
	j label391
label392:
	li $t0, 13599
	sw $t0, -6764($fp)
	lw $t1, -6764($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label391
label390:
	li $t0, 1
	sw $t0, -6756($fp)
label391:
	li $t0, 4
	lw $t1, -6756($fp)
	mul $t0, $t0, $t1
	sw $t0, -6768($fp)
	lw $t0, -6768($fp)
	lw $t1, -6752($fp)
	add $t0, $t0, $t1
	sw $t0, -6772($fp)
	lw $t0, -6772($fp)
	lw $t1, 0($t0)
	sw $t1, -6776($fp)
	lw $t1, -6776($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label388
label387:
	li $t0, 53895
	sw $t0, -6820($fp)
	lw $t0, -6820($fp)
	sw $t0, -6824($fp)
	lw $t0, -6824($fp)
	sw $t0, -6828($fp)
	li $t0, 16238
	sw $t0, -6832($fp)
	addi $t0, $fp, -6800
	sw $t0, -6836($fp)
	li $t0, 0
	sw $t0, -6840($fp)
	lw $t0, -6840($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6844($fp)
	lw $t0, -6836($fp)
	lw $t1, -6844($fp)
	add $t0, $t0, $t1
	sw $t0, -6848($fp)
	lw $t0, -6832($fp)
	lw $t1, -6848($fp)
	sw $t0, 0($t1)
	lw $t0, -6848($fp)
	lw $t1, 0($t0)
	sw $t1, -6852($fp)
	li $t0, 53406
	sw $t0, -6856($fp)
	addi $t0, $fp, -6800
	sw $t0, -6860($fp)
	li $t0, 1
	sw $t0, -6864($fp)
	lw $t0, -6864($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6868($fp)
	lw $t0, -6860($fp)
	lw $t1, -6868($fp)
	add $t0, $t0, $t1
	sw $t0, -6872($fp)
	lw $t0, -6856($fp)
	lw $t1, -6872($fp)
	sw $t0, 0($t1)
	lw $t0, -6872($fp)
	lw $t1, 0($t0)
	sw $t1, -6876($fp)
	li $t0, 25826
	sw $t0, -6880($fp)
	addi $t0, $fp, -6800
	sw $t0, -6884($fp)
	li $t0, 2
	sw $t0, -6888($fp)
	lw $t0, -6888($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6892($fp)
	lw $t0, -6884($fp)
	lw $t1, -6892($fp)
	add $t0, $t0, $t1
	sw $t0, -6896($fp)
	lw $t0, -6880($fp)
	lw $t1, -6896($fp)
	sw $t0, 0($t1)
	lw $t0, -6896($fp)
	lw $t1, 0($t0)
	sw $t1, -6900($fp)
	li $t0, 22247
	sw $t0, -6904($fp)
	addi $t0, $fp, -6800
	sw $t0, -6908($fp)
	li $t0, 3
	sw $t0, -6912($fp)
	lw $t0, -6912($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6916($fp)
	lw $t0, -6908($fp)
	lw $t1, -6916($fp)
	add $t0, $t0, $t1
	sw $t0, -6920($fp)
	lw $t0, -6904($fp)
	lw $t1, -6920($fp)
	sw $t0, 0($t1)
	lw $t0, -6920($fp)
	lw $t1, 0($t0)
	sw $t1, -6924($fp)
	li $t0, 21997
	sw $t0, -6928($fp)
	addi $t0, $fp, -6800
	sw $t0, -6932($fp)
	li $t0, 4
	sw $t0, -6936($fp)
	lw $t0, -6936($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6940($fp)
	lw $t0, -6932($fp)
	lw $t1, -6940($fp)
	add $t0, $t0, $t1
	sw $t0, -6944($fp)
	lw $t0, -6928($fp)
	lw $t1, -6944($fp)
	sw $t0, 0($t1)
	lw $t0, -6944($fp)
	lw $t1, 0($t0)
	sw $t1, -6948($fp)
	li $t0, 41369
	sw $t0, -6952($fp)
	addi $t0, $fp, -6800
	sw $t0, -6956($fp)
	li $t0, 5
	sw $t0, -6960($fp)
	lw $t0, -6960($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6964($fp)
	lw $t0, -6956($fp)
	lw $t1, -6964($fp)
	add $t0, $t0, $t1
	sw $t0, -6968($fp)
	lw $t0, -6952($fp)
	lw $t1, -6968($fp)
	sw $t0, 0($t1)
	lw $t0, -6968($fp)
	lw $t1, 0($t0)
	sw $t1, -6972($fp)
	li $t0, 16966
	sw $t0, -6976($fp)
	addi $t0, $fp, -6816
	sw $t0, -6980($fp)
	li $t0, 0
	sw $t0, -6984($fp)
	lw $t0, -6984($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6988($fp)
	lw $t0, -6980($fp)
	lw $t1, -6988($fp)
	add $t0, $t0, $t1
	sw $t0, -6992($fp)
	lw $t0, -6976($fp)
	lw $t1, -6992($fp)
	sw $t0, 0($t1)
	lw $t0, -6992($fp)
	lw $t1, 0($t0)
	sw $t1, -6996($fp)
	li $t0, 23459
	sw $t0, -7000($fp)
	addi $t0, $fp, -6816
	sw $t0, -7004($fp)
	li $t0, 1
	sw $t0, -7008($fp)
	lw $t0, -7008($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7012($fp)
	lw $t0, -7004($fp)
	lw $t1, -7012($fp)
	add $t0, $t0, $t1
	sw $t0, -7016($fp)
	lw $t0, -7000($fp)
	lw $t1, -7016($fp)
	sw $t0, 0($t1)
	lw $t0, -7016($fp)
	lw $t1, 0($t0)
	sw $t1, -7020($fp)
	li $t0, 55193
	sw $t0, -7024($fp)
	addi $t0, $fp, -6816
	sw $t0, -7028($fp)
	li $t0, 2
	sw $t0, -7032($fp)
	lw $t0, -7032($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7036($fp)
	lw $t0, -7028($fp)
	lw $t1, -7036($fp)
	add $t0, $t0, $t1
	sw $t0, -7040($fp)
	lw $t0, -7024($fp)
	lw $t1, -7040($fp)
	sw $t0, 0($t1)
	lw $t0, -7040($fp)
	lw $t1, 0($t0)
	sw $t1, -7044($fp)
	li $t0, 18357
	sw $t0, -7048($fp)
	addi $t0, $fp, -6816
	sw $t0, -7052($fp)
	li $t0, 3
	sw $t0, -7056($fp)
	lw $t0, -7056($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7060($fp)
	lw $t0, -7052($fp)
	lw $t1, -7060($fp)
	add $t0, $t0, $t1
	sw $t0, -7064($fp)
	lw $t0, -7048($fp)
	lw $t1, -7064($fp)
	sw $t0, 0($t1)
	lw $t0, -7064($fp)
	lw $t1, 0($t0)
	sw $t1, -7068($fp)
	li $t0, 38194
	sw $t0, -7072($fp)
	lw $t0, -7072($fp)
	sw $t0, -7076($fp)
	lw $t0, -7076($fp)
	sw $t0, -7080($fp)
	li $t0, 58687
	sw $t0, -7084($fp)
	lw $t0, -7084($fp)
	sw $t0, -7088($fp)
	lw $t0, -7088($fp)
	sw $t0, -7092($fp)
	li $t0, 63050
	sw $t0, -7096($fp)
	lw $t0, -7096($fp)
	sw $t0, -7100($fp)
	lw $t0, -7100($fp)
	sw $t0, -7104($fp)
	li $t0, 15839
	sw $t0, -7108($fp)
	lw $t0, -7108($fp)
	sw $t0, -7112($fp)
	lw $t0, -7112($fp)
	sw $t0, -7116($fp)
	li $t0, 9007
	sw $t0, -7120($fp)
	lw $t0, -7120($fp)
	sw $t0, -7124($fp)
	lw $t0, -7124($fp)
	sw $t0, -7128($fp)
	li $t0, 28015
	sw $t0, -7132($fp)
	lw $t0, -7132($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -7136($fp)
	addi $t0, $fp, -6800
	sw $t0, -7140($fp)
	li $t0, 4
	sw $t0, -7144($fp)
	li $t0, 4
	lw $t1, -7144($fp)
	mul $t0, $t0, $t1
	sw $t0, -7148($fp)
	lw $t0, -7148($fp)
	lw $t1, -7140($fp)
	add $t0, $t0, $t1
	sw $t0, -7152($fp)
	lw $t0, -7152($fp)
	lw $t1, 0($t0)
	sw $t1, -7156($fp)
	li $t0, 54936
	sw $t0, -7160($fp)
	addi $sp, $sp, -4
	lw $t0, -7136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7160($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7164($fp)
	addi $sp, $sp, 16
	li $t0, 4403
	sw $t0, -7168($fp)
	li $t0, 29205
	sw $t0, -7172($fp)
	lw $t0, -7168($fp)
	lw $t1, -7172($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7176($fp)
	li $t0, 22536
	sw $t0, -7180($fp)
	lw $t0, -7176($fp)
	lw $t1, -7180($fp)
	add $t0, $t0, $t1
	sw $t0, -7184($fp)
	li $t0, 43240
	sw $t0, -7188($fp)
	li $t0, 0
	sw $t0, -7192($fp)
	lw $t0, -1488($fp)
	sw $t0, -7196($fp)
	lw $t1, -7196($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label397
label396:
	li $t0, 1
	sw $t0, -7192($fp)
label397:
	li $t0, 10642
	sw $t0, -7200($fp)
	lw $t0, -7200($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -7204($fp)
	addi $sp, $sp, -4
	lw $t0, -7188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7204($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7208($fp)
	addi $sp, $sp, 16
	li $t0, 38955
	sw $t0, -7212($fp)
	lw $t0, -7208($fp)
	lw $t1, -7212($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7216($fp)
	addi $sp, $sp, -4
	lw $t0, -7184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7216($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7220($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -7220($fp)
	sub $t0, $t0, $t1
	sw $t0, -7224($fp)
	lw $t0, -7164($fp)
	lw $t1, -7224($fp)
	mul $t0, $t0, $t1
	sw $t0, -7228($fp)
	lw $t1, -7228($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label394
label393:
	li $t0, 0
	sw $t0, -7232($fp)
	li $t0, 0
	sw $t0, -7236($fp)
	li $t0, 65309
	sw $t0, -7240($fp)
	addi $t0, $fp, -6816
	sw $t0, -7244($fp)
	li $t0, 2
	sw $t0, -7248($fp)
	li $t0, 4
	lw $t1, -7248($fp)
	mul $t0, $t0, $t1
	sw $t0, -7252($fp)
	lw $t0, -7252($fp)
	lw $t1, -7244($fp)
	add $t0, $t0, $t1
	sw $t0, -7256($fp)
	lw $t0, -7256($fp)
	lw $t1, 0($t0)
	sw $t1, -7260($fp)
	lw $t0, -7240($fp)
	lw $t1, -7260($fp)
	mul $t0, $t0, $t1
	sw $t0, -7264($fp)
	li $t0, 9890
	sw $t0, -7268($fp)
	lw $t0, -1548($fp)
	sw $t0, -7272($fp)
	lw $t0, -7268($fp)
	lw $t1, -7272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7276($fp)
	li $t0, 40958
	sw $t0, -7280($fp)
	lw $t0, -7276($fp)
	lw $t1, -7280($fp)
	add $t0, $t0, $t1
	sw $t0, -7284($fp)
	li $t0, 0
	sw $t0, -7288($fp)
	lw $t0, -1020($fp)
	sw $t0, -7292($fp)
	li $t0, 24719
	sw $t0, -7296($fp)
	lw $t0, -7292($fp)
	lw $t1, -7296($fp)
	mul $t0, $t0, $t1
	sw $t0, -7300($fp)
	lw $t1, -7300($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label404
label404:
	li $t0, 60122
	sw $t0, -7304($fp)
	lw $t1, -7304($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -7288($fp)
label403:
	addi $sp, $sp, -4
	lw $t0, -7284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7288($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7308($fp)
	addi $sp, $sp, 12
	lw $t1, -7264($fp)
	lw $t2, -7308($fp)
	ble $t1, $t2, label400
	j label401
label400:
	li $t0, 1
	sw $t0, -7236($fp)
label401:
	li $t0, 0
	sw $t0, -7312($fp)
	lw $t0, -1764($fp)
	sw $t0, -7316($fp)
	lw $t1, -7316($fp)
	li $t2, 0
	bne $t1, $t2, label406
	j label405
label405:
	li $t0, 1
	sw $t0, -7312($fp)
label406:
	lw $t1, -7236($fp)
	lw $t2, -7312($fp)
	beq $t1, $t2, label398
	j label399
label398:
	li $t0, 1
	sw $t0, -7232($fp)
label399:
	j label395
label394:
	li $t0, 47992
	sw $t0, -7320($fp)
	lw $t1, -7320($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label410
label410:
	lw $t0, -3252($fp)
	sw $t0, -7324($fp)
	li $t0, 0
	lw $t1, -7324($fp)
	sub $t0, $t0, $t1
	sw $t0, -7328($fp)
	lw $t1, -7328($fp)
	li $t2, 0
	bne $t1, $t2, label407
	j label408
label407:
	lw $t0, -528($fp)
	sw $t0, -7332($fp)
	j label409
label408:
	li $t0, 0
	sw $t0, -7336($fp)
	li $t0, 35716
	sw $t0, -7340($fp)
	li $t0, 0
	lw $t1, -7340($fp)
	sub $t0, $t0, $t1
	sw $t0, -7344($fp)
	lw $t1, -7344($fp)
	li $t2, 0
	bne $t1, $t2, label413
	j label412
label413:
	addi $t0, $fp, -216
	sw $t0, -7348($fp)
	li $t0, 1
	sw $t0, -7352($fp)
	li $t0, 4
	lw $t1, -7352($fp)
	mul $t0, $t0, $t1
	sw $t0, -7356($fp)
	lw $t0, -7356($fp)
	lw $t1, -7348($fp)
	add $t0, $t0, $t1
	sw $t0, -7360($fp)
	lw $t0, -7360($fp)
	lw $t1, 0($t0)
	sw $t1, -7364($fp)
	addi $t0, $fp, -48
	sw $t0, -7368($fp)
	lw $t0, -456($fp)
	sw $t0, -7372($fp)
	li $t0, 4
	lw $t1, -7372($fp)
	mul $t0, $t0, $t1
	sw $t0, -7376($fp)
	lw $t0, -7376($fp)
	lw $t1, -7368($fp)
	add $t0, $t0, $t1
	sw $t0, -7380($fp)
	lw $t0, -7380($fp)
	lw $t1, 0($t0)
	sw $t1, -7384($fp)
	lw $t0, -7364($fp)
	lw $t1, -7384($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7388($fp)
	lw $t1, -7388($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label412
label411:
	li $t0, 1
	sw $t0, -7336($fp)
label412:
	lw $ra, -4($fp)
	lw $v0, -7336($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label409:
label395:
	lw $t0, -6824($fp)
	sw $t0, -7392($fp)
	lw $t0, -7392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6800
	sw $t0, -7396($fp)
	li $t0, 0
	sw $t0, -7400($fp)
	li $t0, 4
	lw $t1, -7400($fp)
	mul $t0, $t0, $t1
	sw $t0, -7404($fp)
	lw $t0, -7404($fp)
	lw $t1, -7396($fp)
	add $t0, $t0, $t1
	sw $t0, -7408($fp)
	lw $t0, -7408($fp)
	lw $t1, 0($t0)
	sw $t1, -7412($fp)
	lw $t0, -7412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6800
	sw $t0, -7416($fp)
	li $t0, 1
	sw $t0, -7420($fp)
	li $t0, 4
	lw $t1, -7420($fp)
	mul $t0, $t0, $t1
	sw $t0, -7424($fp)
	lw $t0, -7424($fp)
	lw $t1, -7416($fp)
	add $t0, $t0, $t1
	sw $t0, -7428($fp)
	lw $t0, -7428($fp)
	lw $t1, 0($t0)
	sw $t1, -7432($fp)
	lw $t0, -7432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6800
	sw $t0, -7436($fp)
	li $t0, 2
	sw $t0, -7440($fp)
	li $t0, 4
	lw $t1, -7440($fp)
	mul $t0, $t0, $t1
	sw $t0, -7444($fp)
	lw $t0, -7444($fp)
	lw $t1, -7436($fp)
	add $t0, $t0, $t1
	sw $t0, -7448($fp)
	lw $t0, -7448($fp)
	lw $t1, 0($t0)
	sw $t1, -7452($fp)
	lw $t0, -7452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6800
	sw $t0, -7456($fp)
	li $t0, 3
	sw $t0, -7460($fp)
	li $t0, 4
	lw $t1, -7460($fp)
	mul $t0, $t0, $t1
	sw $t0, -7464($fp)
	lw $t0, -7464($fp)
	lw $t1, -7456($fp)
	add $t0, $t0, $t1
	sw $t0, -7468($fp)
	lw $t0, -7468($fp)
	lw $t1, 0($t0)
	sw $t1, -7472($fp)
	lw $t0, -7472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6800
	sw $t0, -7476($fp)
	li $t0, 4
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
	addi $t0, $fp, -6800
	sw $t0, -7496($fp)
	li $t0, 5
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
	addi $t0, $fp, -6816
	sw $t0, -7516($fp)
	li $t0, 0
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
	addi $t0, $fp, -6816
	sw $t0, -7536($fp)
	li $t0, 1
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
	addi $t0, $fp, -6816
	sw $t0, -7556($fp)
	li $t0, 2
	sw $t0, -7560($fp)
	li $t0, 4
	lw $t1, -7560($fp)
	mul $t0, $t0, $t1
	sw $t0, -7564($fp)
	lw $t0, -7564($fp)
	lw $t1, -7556($fp)
	add $t0, $t0, $t1
	sw $t0, -7568($fp)
	lw $t0, -7568($fp)
	lw $t1, 0($t0)
	sw $t1, -7572($fp)
	lw $t0, -7572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -6816
	sw $t0, -7576($fp)
	li $t0, 3
	sw $t0, -7580($fp)
	li $t0, 4
	lw $t1, -7580($fp)
	mul $t0, $t0, $t1
	sw $t0, -7584($fp)
	lw $t0, -7584($fp)
	lw $t1, -7576($fp)
	add $t0, $t0, $t1
	sw $t0, -7588($fp)
	lw $t0, -7588($fp)
	lw $t1, 0($t0)
	sw $t1, -7592($fp)
	lw $t0, -7592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7076($fp)
	sw $t0, -7596($fp)
	lw $t0, -7596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7088($fp)
	sw $t0, -7600($fp)
	lw $t0, -7600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7100($fp)
	sw $t0, -7604($fp)
	lw $t0, -7604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7112($fp)
	sw $t0, -7608($fp)
	lw $t0, -7608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7124($fp)
	sw $t0, -7612($fp)
	lw $t0, -7612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -7616($fp)
	li $t0, 11549
	sw $t0, -7620($fp)
	lw $t1, -7620($fp)
	li $t2, 0
	bne $t1, $t2, label415
	j label414
label414:
	li $t0, 1
	sw $t0, -7616($fp)
label415:
	lw $t0, -1992($fp)
	sw $t0, -7624($fp)
	lw $t0, -7616($fp)
	lw $t1, -7624($fp)
	mul $t0, $t0, $t1
	sw $t0, -7628($fp)
	lw $ra, -4($fp)
	lw $v0, -7628($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -7076($fp)
	sw $t0, -7632($fp)
	lw $t0, -528($fp)
	sw $t0, -7636($fp)
	lw $t0, -7632($fp)
	lw $t1, -7636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7640($fp)
	addi $t0, $fp, -328
	sw $t0, -7644($fp)
	li $t0, 5
	sw $t0, -7648($fp)
	li $t0, 4
	lw $t1, -7648($fp)
	mul $t0, $t0, $t1
	sw $t0, -7652($fp)
	lw $t0, -7652($fp)
	lw $t1, -7644($fp)
	add $t0, $t0, $t1
	sw $t0, -7656($fp)
	lw $t0, -7656($fp)
	lw $t1, 0($t0)
	sw $t1, -7660($fp)
	lw $t0, -7640($fp)
	lw $t1, -7660($fp)
	mul $t0, $t0, $t1
	sw $t0, -7664($fp)
	li $t0, 0
	sw $t0, -7668($fp)
	lw $t0, -1776($fp)
	sw $t0, -7672($fp)
	lw $t1, -7672($fp)
	li $t2, 0
	bne $t1, $t2, label420
	j label419
label419:
	li $t0, 1
	sw $t0, -7668($fp)
label420:
	li $t0, 0
	lw $t1, -7668($fp)
	sub $t0, $t0, $t1
	sw $t0, -7676($fp)
	lw $t0, -7664($fp)
	lw $t1, -7676($fp)
	mul $t0, $t0, $t1
	sw $t0, -7680($fp)
	lw $t1, -7680($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label417
label416:
	addi $t0, $fp, -8
	sw $t0, -7684($fp)
	addi $t0, $fp, -368
	sw $t0, -7688($fp)
	lw $t0, -3516($fp)
	sw $t0, -7692($fp)
	lw $t0, -2472($fp)
	sw $t0, -7696($fp)
	lw $t0, -7692($fp)
	lw $t1, -7696($fp)
	mul $t0, $t0, $t1
	sw $t0, -7700($fp)
	li $t0, 4
	lw $t1, -7700($fp)
	mul $t0, $t0, $t1
	sw $t0, -7704($fp)
	lw $t0, -7704($fp)
	lw $t1, -7688($fp)
	add $t0, $t0, $t1
	sw $t0, -7708($fp)
	lw $t0, -7708($fp)
	lw $t1, 0($t0)
	sw $t1, -7712($fp)
	li $t0, 4
	lw $t1, -7712($fp)
	mul $t0, $t0, $t1
	sw $t0, -7716($fp)
	lw $t0, -7716($fp)
	lw $t1, -7684($fp)
	add $t0, $t0, $t1
	sw $t0, -7720($fp)
	lw $t0, -7720($fp)
	lw $t1, 0($t0)
	sw $t1, -7724($fp)
	lw $t1, -7724($fp)
	li $t2, 0
	bne $t1, $t2, label421
	j label422
label421:
label424:
	lw $t0, -1452($fp)
	sw $t0, -7728($fp)
	lw $t0, -444($fp)
	sw $t0, -7732($fp)
	lw $t0, -7728($fp)
	lw $t1, -7732($fp)
	sub $t0, $t0, $t1
	sw $t0, -7736($fp)
	lw $t1, -7736($fp)
	li $t2, 0
	bne $t1, $t2, label425
	j label426
label425:
	lw $t0, -2220($fp)
	sw $t0, -7740($fp)
	lw $t1, -7740($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label428
label427:
label430:
	li $t0, 1207
	sw $t0, -7744($fp)
	li $t0, 32992
	sw $t0, -7748($fp)
	addi $t0, $fp, -76
	sw $t0, -7752($fp)
	lw $t0, -564($fp)
	sw $t0, -7756($fp)
	li $t0, 4
	lw $t1, -7756($fp)
	mul $t0, $t0, $t1
	sw $t0, -7760($fp)
	lw $t0, -7760($fp)
	lw $t1, -7752($fp)
	add $t0, $t0, $t1
	sw $t0, -7764($fp)
	lw $t0, -7764($fp)
	lw $t1, 0($t0)
	sw $t1, -7768($fp)
	lw $t0, -7748($fp)
	lw $t1, -7768($fp)
	add $t0, $t0, $t1
	sw $t0, -7772($fp)
	lw $t1, -7744($fp)
	lw $t2, -7772($fp)
	blt $t1, $t2, label431
	j label432
label431:
	li $t0, 0
	sw $t0, -7776($fp)
	addi $t0, $fp, -388
	sw $t0, -7780($fp)
	li $t0, 0
	sw $t0, -7784($fp)
	addi $t0, $fp, -256
	sw $t0, -7788($fp)
	li $t0, 2
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
	li $t0, 30507
	sw $t0, -7808($fp)
	lw $t1, -7804($fp)
	lw $t2, -7808($fp)
	bne $t1, $t2, label435
	j label436
label435:
	li $t0, 1
	sw $t0, -7784($fp)
label436:
	li $t0, 4
	lw $t1, -7784($fp)
	mul $t0, $t0, $t1
	sw $t0, -7812($fp)
	lw $t0, -7812($fp)
	lw $t1, -7780($fp)
	add $t0, $t0, $t1
	sw $t0, -7816($fp)
	lw $t0, -7816($fp)
	lw $t1, 0($t0)
	sw $t1, -7820($fp)
	lw $t1, -7820($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label433
label433:
	li $t0, 1
	sw $t0, -7776($fp)
label434:
	lw $ra, -4($fp)
	lw $v0, -7776($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label430
label432:
	j label429
label428:
	li $t0, 0
	sw $t0, -7824($fp)
	li $t0, 34267
	sw $t0, -7828($fp)
	lw $t0, -7828($fp)
	sw $t0, -3276($fp)
	lw $t0, -3276($fp)
	sw $t0, -7832($fp)
	li $t0, 0
	sw $t0, -7836($fp)
	li $t0, 0
	sw $t0, -7840($fp)
	lw $t0, -1488($fp)
	sw $t0, -7844($fp)
	lw $t0, -552($fp)
	sw $t0, -7848($fp)
	lw $t1, -7844($fp)
	lw $t2, -7848($fp)
	bgt $t1, $t2, label441
	j label442
label441:
	li $t0, 1
	sw $t0, -7840($fp)
label442:
	li $t0, 47923
	sw $t0, -7852($fp)
	lw $t1, -7840($fp)
	lw $t2, -7852($fp)
	bgt $t1, $t2, label439
	j label440
label439:
	li $t0, 1
	sw $t0, -7836($fp)
label440:
	li $t0, 0
	sw $t0, -7856($fp)
	li $t0, 0
	sw $t0, -7860($fp)
	li $t0, 19907
	sw $t0, -7864($fp)
	lw $t1, -7864($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label448
label449:
	lw $t0, -7088($fp)
	sw $t0, -7868($fp)
	lw $t1, -7868($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label448
label448:
	li $t0, 23625
	sw $t0, -7872($fp)
	lw $t1, -7872($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label447
label446:
	li $t0, 1
	sw $t0, -7860($fp)
label447:
	li $t0, 0
	sw $t0, -7876($fp)
	li $t0, 3365
	sw $t0, -7880($fp)
	li $t0, 0
	lw $t1, -7880($fp)
	sub $t0, $t0, $t1
	sw $t0, -7884($fp)
	lw $t0, -444($fp)
	sw $t0, -7888($fp)
	lw $t1, -7884($fp)
	lw $t2, -7888($fp)
	ble $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -7876($fp)
label451:
	li $t0, 16411
	sw $t0, -7892($fp)
	lw $t0, -7892($fp)
	sw $t0, -2772($fp)
	lw $t0, -2772($fp)
	sw $t0, -7896($fp)
	addi $sp, $sp, -4
	lw $t0, -7860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7896($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7900($fp)
	addi $sp, $sp, 16
	lw $t1, -7900($fp)
	li $t2, 0
	bne $t1, $t2, label445
	j label444
label445:
	li $t0, 47821
	sw $t0, -7904($fp)
	lw $t1, -7904($fp)
	li $t2, 0
	bne $t1, $t2, label443
	j label444
label443:
	li $t0, 1
	sw $t0, -7856($fp)
label444:
	addi $sp, $sp, -4
	lw $t0, -7832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7856($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -7908($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -7912($fp)
	li $t0, 0
	sw $t0, -7916($fp)
	lw $t0, -7088($fp)
	sw $t0, -7920($fp)
	li $t0, 25525
	sw $t0, -7924($fp)
	lw $t0, -7920($fp)
	lw $t1, -7924($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7928($fp)
	li $t0, 21342
	sw $t0, -7932($fp)
	lw $t1, -7928($fp)
	lw $t2, -7932($fp)
	bgt $t1, $t2, label454
	j label455
label454:
	li $t0, 1
	sw $t0, -7916($fp)
label455:
	lw $t0, -420($fp)
	sw $t0, -7936($fp)
	lw $t0, -3480($fp)
	sw $t0, -7940($fp)
	lw $t0, -7936($fp)
	lw $t1, -7940($fp)
	mul $t0, $t0, $t1
	sw $t0, -7944($fp)
	lw $t1, -7916($fp)
	lw $t2, -7944($fp)
	bge $t1, $t2, label452
	j label453
label452:
	li $t0, 1
	sw $t0, -7912($fp)
label453:
	lw $t1, -7908($fp)
	lw $t2, -7912($fp)
	beq $t1, $t2, label437
	j label438
label437:
	li $t0, 1
	sw $t0, -7824($fp)
label438:
label429:
	j label424
label426:
	j label423
label422:
	li $t0, 38670
	sw $t0, -7948($fp)
	addi $t0, $fp, -292
	sw $t0, -7952($fp)
	li $t0, 3
	sw $t0, -7956($fp)
	li $t0, 4
	lw $t1, -7956($fp)
	mul $t0, $t0, $t1
	sw $t0, -7960($fp)
	lw $t0, -7960($fp)
	lw $t1, -7952($fp)
	add $t0, $t0, $t1
	sw $t0, -7964($fp)
	lw $t0, -7964($fp)
	lw $t1, 0($t0)
	sw $t1, -7968($fp)
	li $t0, 38444
	sw $t0, -7972($fp)
	lw $t0, -7968($fp)
	lw $t1, -7972($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7976($fp)
	lw $t0, -7948($fp)
	lw $t1, -7976($fp)
	sub $t0, $t0, $t1
	sw $t0, -7980($fp)
	lw $t0, -564($fp)
	sw $t0, -7984($fp)
	li $t0, 35717
	sw $t0, -7988($fp)
	li $t0, 0
	lw $t1, -7988($fp)
	sub $t0, $t0, $t1
	sw $t0, -7992($fp)
	lw $t0, -7984($fp)
	lw $t1, -7992($fp)
	sub $t0, $t0, $t1
	sw $t0, -7996($fp)
	lw $t1, -7980($fp)
	lw $t2, -7996($fp)
	beq $t1, $t2, label456
	j label457
label456:
	li $t0, 65409
	sw $t0, -8000($fp)
	lw $t0, -1536($fp)
	sw $t0, -8004($fp)
	lw $t0, -8000($fp)
	lw $t1, -8004($fp)
	mul $t0, $t0, $t1
	sw $t0, -8008($fp)
	lw $t0, -8008($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -8012($fp)
	li $t0, 63163
	sw $t0, -8016($fp)
	li $t0, 0
	lw $t1, -8016($fp)
	sub $t0, $t0, $t1
	sw $t0, -8020($fp)
	lw $t0, -1452($fp)
	sw $t0, -8024($fp)
	addi $sp, $sp, -4
	lw $t0, -8020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8024($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8028($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -8032($fp)
	li $t0, 30304
	sw $t0, -8036($fp)
	lw $t1, -8036($fp)
	li $t2, 0
	bne $t1, $t2, label459
	j label460
label459:
	li $t0, 1
	sw $t0, -8032($fp)
label460:
	lw $t0, -8028($fp)
	lw $t1, -8032($fp)
	add $t0, $t0, $t1
	sw $t0, -8040($fp)
	j label458
label457:
	li $t0, 0
	sw $t0, -8044($fp)
	lw $t0, -1776($fp)
	sw $t0, -8048($fp)
	lw $t1, -8048($fp)
	li $t2, 0
	bne $t1, $t2, label462
	j label461
label461:
	li $t0, 1
	sw $t0, -8044($fp)
label462:
	addi $t0, $fp, -412
	sw $t0, -8052($fp)
	li $t0, 3
	sw $t0, -8056($fp)
	li $t0, 4
	lw $t1, -8056($fp)
	mul $t0, $t0, $t1
	sw $t0, -8060($fp)
	lw $t0, -8060($fp)
	lw $t1, -8052($fp)
	add $t0, $t0, $t1
	sw $t0, -8064($fp)
	lw $t0, -8064($fp)
	lw $t1, 0($t0)
	sw $t1, -8068($fp)
	addi $t0, $fp, -8
	sw $t0, -8072($fp)
	lw $t0, -528($fp)
	sw $t0, -8076($fp)
	li $t0, 4
	lw $t1, -8076($fp)
	mul $t0, $t0, $t1
	sw $t0, -8080($fp)
	lw $t0, -8080($fp)
	lw $t1, -8072($fp)
	add $t0, $t0, $t1
	sw $t0, -8084($fp)
	lw $t0, -8084($fp)
	lw $t1, 0($t0)
	sw $t1, -8088($fp)
	lw $t0, -3288($fp)
	sw $t0, -8092($fp)
	lw $t0, -8088($fp)
	lw $t1, -8092($fp)
	mul $t0, $t0, $t1
	sw $t0, -8096($fp)
	addi $sp, $sp, -4
	lw $t0, -8044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8096($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8100($fp)
	addi $sp, $sp, 16
	lw $t0, -1008($fp)
	sw $t0, -8104($fp)
	lw $t0, -8100($fp)
	lw $t1, -8104($fp)
	mul $t0, $t0, $t1
	sw $t0, -8108($fp)
	li $t0, 0
	lw $t1, -8108($fp)
	sub $t0, $t0, $t1
	sw $t0, -8112($fp)
label458:
label423:
	j label418
label417:
	li $t0, 12760
	sw $t0, -8116($fp)
	li $t0, 45479
	sw $t0, -8120($fp)
	lw $t0, -8116($fp)
	lw $t1, -8120($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8124($fp)
	lw $t1, -8124($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label464
label463:
	li $t0, 0
	sw $t0, -8128($fp)
	addi $t0, $fp, -256
	sw $t0, -8132($fp)
	lw $t0, -1512($fp)
	sw $t0, -8136($fp)
	li $t0, 4
	lw $t1, -8136($fp)
	mul $t0, $t0, $t1
	sw $t0, -8140($fp)
	lw $t0, -8140($fp)
	lw $t1, -8132($fp)
	add $t0, $t0, $t1
	sw $t0, -8144($fp)
	lw $t0, -8144($fp)
	lw $t1, 0($t0)
	sw $t1, -8148($fp)
	lw $t0, -7100($fp)
	sw $t0, -8152($fp)
	li $t0, 0
	sw $t0, -8156($fp)
	li $t0, 54467
	sw $t0, -8160($fp)
	lw $t0, -3300($fp)
	sw $t0, -8164($fp)
	lw $t1, -8160($fp)
	lw $t2, -8164($fp)
	bne $t1, $t2, label471
	j label473
label473:
	li $t0, 63771
	sw $t0, -8168($fp)
	lw $t1, -8168($fp)
	li $t2, 0
	bne $t1, $t2, label471
	j label472
label471:
	li $t0, 1
	sw $t0, -8156($fp)
label472:
	li $t0, 0
	sw $t0, -8172($fp)
	lw $t0, -2532($fp)
	sw $t0, -8176($fp)
	li $t0, 51148
	sw $t0, -8180($fp)
	lw $t0, -8176($fp)
	lw $t1, -8180($fp)
	sub $t0, $t0, $t1
	sw $t0, -8184($fp)
	lw $t1, -8184($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label476
label476:
	lw $t0, -1704($fp)
	sw $t0, -8188($fp)
	lw $t1, -8188($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label475
label474:
	li $t0, 1
	sw $t0, -8172($fp)
label475:
	li $t0, 0
	sw $t0, -8192($fp)
	addi $t0, $fp, -8
	sw $t0, -8196($fp)
	lw $t0, -7124($fp)
	sw $t0, -8200($fp)
	li $t0, 4
	lw $t1, -8200($fp)
	mul $t0, $t0, $t1
	sw $t0, -8204($fp)
	lw $t0, -8204($fp)
	lw $t1, -8196($fp)
	add $t0, $t0, $t1
	sw $t0, -8208($fp)
	lw $t0, -8208($fp)
	lw $t1, 0($t0)
	sw $t1, -8212($fp)
	li $t0, 0
	sw $t0, -8216($fp)
	li $t0, 0
	sw $t0, -8220($fp)
	li $t0, 20200
	sw $t0, -8224($fp)
	lw $t0, -1752($fp)
	sw $t0, -8228($fp)
	lw $t1, -8224($fp)
	lw $t2, -8228($fp)
	bne $t1, $t2, label482
	j label483
label482:
	li $t0, 1
	sw $t0, -8220($fp)
label483:
	lw $t0, -6824($fp)
	sw $t0, -8232($fp)
	lw $t1, -8220($fp)
	lw $t2, -8232($fp)
	beq $t1, $t2, label480
	j label481
label480:
	li $t0, 1
	sw $t0, -8216($fp)
label481:
	li $t0, 0
	sw $t0, -8236($fp)
	lw $t0, -3300($fp)
	sw $t0, -8240($fp)
	lw $t1, -8240($fp)
	li $t2, 0
	bne $t1, $t2, label484
	j label487
label487:
	li $t0, 3225
	sw $t0, -8244($fp)
	lw $t1, -8244($fp)
	li $t2, 0
	bne $t1, $t2, label484
	j label486
label486:
	lw $t0, -1464($fp)
	sw $t0, -8248($fp)
	lw $t1, -8248($fp)
	li $t2, 0
	bne $t1, $t2, label484
	j label485
label484:
	li $t0, 1
	sw $t0, -8236($fp)
label485:
	li $t0, 55960
	sw $t0, -8252($fp)
	lw $t0, -8252($fp)
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	sw $t0, -8256($fp)
	li $t0, 0
	sw $t0, -8260($fp)
	li $t0, 48853
	sw $t0, -8264($fp)
	li $t0, 0
	lw $t1, -8264($fp)
	sub $t0, $t0, $t1
	sw $t0, -8268($fp)
	li $t0, 62110
	sw $t0, -8272($fp)
	lw $t1, -8268($fp)
	lw $t2, -8272($fp)
	bne $t1, $t2, label488
	j label489
label488:
	li $t0, 1
	sw $t0, -8260($fp)
label489:
	li $t0, 0
	sw $t0, -8276($fp)
	li $t0, 45699
	sw $t0, -8280($fp)
	lw $t1, -8280($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label493
label493:
	li $t0, 52594
	sw $t0, -8284($fp)
	lw $t1, -8284($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label492
label492:
	lw $t0, -1704($fp)
	sw $t0, -8288($fp)
	lw $t1, -8288($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label491
label490:
	li $t0, 1
	sw $t0, -8276($fp)
label491:
	li $t0, 58236
	sw $t0, -8292($fp)
	lw $t0, 12($fp)
	sw $t0, -8296($fp)
	lw $t0, -8292($fp)
	lw $t1, -8296($fp)
	mul $t0, $t0, $t1
	sw $t0, -8300($fp)
	li $t0, 18346
	sw $t0, -8304($fp)
	lw $t0, -8300($fp)
	lw $t1, -8304($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8308($fp)
	li $t0, 0
	sw $t0, -8312($fp)
	li $t0, 45128
	sw $t0, -8316($fp)
	lw $t1, -8316($fp)
	li $t2, 0
	bne $t1, $t2, label495
	j label494
label494:
	li $t0, 1
	sw $t0, -8312($fp)
label495:
	li $t0, 0
	sw $t0, -8320($fp)
	li $t0, 17214
	sw $t0, -8324($fp)
	li $t0, 57029
	sw $t0, -8328($fp)
	lw $t0, -8324($fp)
	lw $t1, -8328($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8332($fp)
	lw $t1, -8332($fp)
	li $t2, 0
	bne $t1, $t2, label498
	j label497
label498:
	li $t0, 50890
	sw $t0, -8336($fp)
	lw $t1, -8336($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label497
label496:
	li $t0, 1
	sw $t0, -8320($fp)
label497:
	li $t0, 0
	sw $t0, -8340($fp)
	lw $t0, 8($fp)
	sw $t0, -8344($fp)
	lw $t1, -8344($fp)
	li $t2, 0
	bne $t1, $t2, label500
	j label499
label499:
	li $t0, 1
	sw $t0, -8340($fp)
label500:
	li $t0, 0
	lw $t1, -8340($fp)
	sub $t0, $t0, $t1
	sw $t0, -8348($fp)
	li $t0, 0
	sw $t0, -8352($fp)
	addi $t0, $fp, -328
	sw $t0, -8356($fp)
	lw $t0, -564($fp)
	sw $t0, -8360($fp)
	li $t0, 4
	lw $t1, -8360($fp)
	mul $t0, $t0, $t1
	sw $t0, -8364($fp)
	lw $t0, -8364($fp)
	lw $t1, -8356($fp)
	add $t0, $t0, $t1
	sw $t0, -8368($fp)
	lw $t0, -8368($fp)
	lw $t1, 0($t0)
	sw $t1, -8372($fp)
	lw $t1, -8372($fp)
	li $t2, 0
	bne $t1, $t2, label502
	j label501
label501:
	li $t0, 1
	sw $t0, -8352($fp)
label502:
	addi $sp, $sp, -4
	lw $t0, -8308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8352($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8376($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -8236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8376($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8380($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -8212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8380($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8384($fp)
	addi $sp, $sp, 16
	lw $t1, -8384($fp)
	li $t2, 0
	bne $t1, $t2, label477
	j label479
label479:
	li $t0, 38245
	sw $t0, -8388($fp)
	lw $t1, -8388($fp)
	li $t2, 0
	bne $t1, $t2, label477
	j label478
label477:
	li $t0, 1
	sw $t0, -8192($fp)
label478:
	li $t0, 36254
	sw $t0, -8392($fp)
	lw $t0, 4($fp)
	sw $t0, -8396($fp)
	lw $t0, -8392($fp)
	lw $t1, -8396($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8400($fp)
	lw $t0, -564($fp)
	sw $t0, -8404($fp)
	lw $t0, -8400($fp)
	lw $t1, -8404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8408($fp)
	addi $sp, $sp, -4
	lw $t0, -8152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8408($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8412($fp)
	addi $sp, $sp, 24
	lw $t1, -8148($fp)
	lw $t2, -8412($fp)
	beq $t1, $t2, label469
	j label470
label469:
	li $t0, 1
	sw $t0, -8128($fp)
label470:
	lw $t0, -8128($fp)
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	sw $t0, -8416($fp)
	lw $t1, -8416($fp)
	li $t2, 0
	bne $t1, $t2, label466
	j label467
label466:
	addi $t0, $fp, -388
	sw $t0, -8420($fp)
	li $t0, 0
	sw $t0, -8424($fp)
	addi $t0, $fp, -8
	sw $t0, -8428($fp)
	lw $t0, -456($fp)
	sw $t0, -8432($fp)
	li $t0, 4
	lw $t1, -8432($fp)
	mul $t0, $t0, $t1
	sw $t0, -8436($fp)
	lw $t0, -8436($fp)
	lw $t1, -8428($fp)
	add $t0, $t0, $t1
	sw $t0, -8440($fp)
	lw $t0, -8440($fp)
	lw $t1, 0($t0)
	sw $t1, -8444($fp)
	lw $t1, -8444($fp)
	li $t2, 0
	bne $t1, $t2, label504
	j label503
label503:
	li $t0, 1
	sw $t0, -8424($fp)
label504:
	li $t0, 0
	lw $t1, -8424($fp)
	sub $t0, $t0, $t1
	sw $t0, -8448($fp)
	li $t0, 4
	lw $t1, -8448($fp)
	mul $t0, $t0, $t1
	sw $t0, -8452($fp)
	lw $t0, -8452($fp)
	lw $t1, -8420($fp)
	add $t0, $t0, $t1
	sw $t0, -8456($fp)
	lw $t0, -8456($fp)
	lw $t1, 0($t0)
	sw $t1, -8460($fp)
	lw $ra, -4($fp)
	lw $v0, -8460($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label468
label467:
	lw $t0, -2472($fp)
	sw $t0, -8464($fp)
	lw $t0, -3432($fp)
	sw $t0, -8468($fp)
	li $t0, 0
	lw $t1, -8468($fp)
	sub $t0, $t0, $t1
	sw $t0, -8472($fp)
	li $t0, 0
	lw $t1, -8472($fp)
	sub $t0, $t0, $t1
	sw $t0, -8476($fp)
	lw $t0, -8464($fp)
	lw $t1, -8476($fp)
	mul $t0, $t0, $t1
	sw $t0, -8480($fp)
	lw $t1, -8480($fp)
	li $t2, 0
	bne $t1, $t2, label505
	j label506
label505:
	li $t0, 0
	sw $t0, -8484($fp)
	lw $t0, -1740($fp)
	sw $t0, -8488($fp)
	lw $t0, -3516($fp)
	sw $t0, -8492($fp)
	lw $t0, -8488($fp)
	lw $t1, -8492($fp)
	mul $t0, $t0, $t1
	sw $t0, -8496($fp)
	lw $t1, -8496($fp)
	li $t2, 0
	bne $t1, $t2, label511
	j label509
label511:
	li $t0, 6954
	sw $t0, -8500($fp)
	lw $t1, -8500($fp)
	li $t2, 0
	bne $t1, $t2, label510
	j label509
label510:
	li $t0, 27602
	sw $t0, -8504($fp)
	li $t0, 0
	lw $t1, -8504($fp)
	sub $t0, $t0, $t1
	sw $t0, -8508($fp)
	lw $t1, -8508($fp)
	li $t2, 0
	bne $t1, $t2, label508
	j label509
label508:
	li $t0, 1
	sw $t0, -8484($fp)
label509:
	lw $t0, -8484($fp)
	sw $t0, -7112($fp)
	lw $t0, -7112($fp)
	sw $t0, -8512($fp)
	j label507
label506:
	li $t0, 0
	sw $t0, -8516($fp)
	li $t0, 52965
	sw $t0, -8520($fp)
	lw $t1, -8520($fp)
	li $t2, 0
	bne $t1, $t2, label512
	j label514
label514:
	li $t0, 0
	sw $t0, -8524($fp)
	lw $t0, -564($fp)
	sw $t0, -8528($fp)
	lw $t0, -7124($fp)
	sw $t0, -8532($fp)
	lw $t0, -8528($fp)
	lw $t1, -8532($fp)
	sub $t0, $t0, $t1
	sw $t0, -8536($fp)
	li $t0, 50833
	sw $t0, -8540($fp)
	lw $t1, -8536($fp)
	lw $t2, -8540($fp)
	ble $t1, $t2, label515
	j label516
label515:
	li $t0, 1
	sw $t0, -8524($fp)
label516:
	li $t0, 0
	sw $t0, -8544($fp)
	lw $t0, -3252($fp)
	sw $t0, -8548($fp)
	lw $t1, -8548($fp)
	li $t2, 0
	bne $t1, $t2, label518
	j label517
label517:
	li $t0, 1
	sw $t0, -8544($fp)
label518:
	lw $t1, -8524($fp)
	lw $t2, -8544($fp)
	bne $t1, $t2, label512
	j label513
label512:
	li $t0, 1
	sw $t0, -8516($fp)
label513:
label507:
label468:
	j label465
label464:
	li $t0, 0
	sw $t0, -8552($fp)
	lw $t0, -3528($fp)
	sw $t0, -8556($fp)
	lw $t0, 8($fp)
	sw $t0, -8560($fp)
	lw $t1, -8556($fp)
	lw $t2, -8560($fp)
	beq $t1, $t2, label521
	j label520
label521:
	lw $t0, -3540($fp)
	sw $t0, -8564($fp)
	li $t0, 510
	sw $t0, -8568($fp)
	lw $t1, -8564($fp)
	lw $t2, -8568($fp)
	ble $t1, $t2, label519
	j label520
label519:
	li $t0, 1
	sw $t0, -8552($fp)
label520:
	lw $t0, -8552($fp)
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	sw $t0, -8572($fp)
	li $t0, 23147
	sw $t0, -8576($fp)
	addi $t0, $fp, -412
	sw $t0, -8580($fp)
	li $t0, 1
	sw $t0, -8584($fp)
	li $t0, 4
	lw $t1, -8584($fp)
	mul $t0, $t0, $t1
	sw $t0, -8588($fp)
	lw $t0, -8588($fp)
	lw $t1, -8580($fp)
	add $t0, $t0, $t1
	sw $t0, -8592($fp)
	lw $t0, -8592($fp)
	lw $t1, 0($t0)
	sw $t1, -8596($fp)
	li $t0, 0
	lw $t1, -8596($fp)
	sub $t0, $t0, $t1
	sw $t0, -8600($fp)
	lw $t0, -8576($fp)
	lw $t1, -8600($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8604($fp)
label465:
label418:
	j label389
label388:
	addi $t0, $fp, -388
	sw $t0, -8608($fp)
	addi $t0, $fp, -8
	sw $t0, -8612($fp)
	lw $t0, -564($fp)
	sw $t0, -8616($fp)
	li $t0, 4
	lw $t1, -8616($fp)
	mul $t0, $t0, $t1
	sw $t0, -8620($fp)
	lw $t0, -8620($fp)
	lw $t1, -8612($fp)
	add $t0, $t0, $t1
	sw $t0, -8624($fp)
	lw $t0, -8624($fp)
	lw $t1, 0($t0)
	sw $t1, -8628($fp)
	li $t0, 4
	lw $t1, -8628($fp)
	mul $t0, $t0, $t1
	sw $t0, -8632($fp)
	lw $t0, -8632($fp)
	lw $t1, -8608($fp)
	add $t0, $t0, $t1
	sw $t0, -8636($fp)
	lw $t0, -8636($fp)
	lw $t1, 0($t0)
	sw $t1, -8640($fp)
	li $t0, 0
	sw $t0, -8644($fp)
	li $t0, 53451
	sw $t0, -8648($fp)
	lw $t1, -8648($fp)
	li $t2, 0
	bne $t1, $t2, label525
	j label526
label525:
	li $t0, 1
	sw $t0, -8644($fp)
label526:
	lw $t0, -8640($fp)
	lw $t1, -8644($fp)
	sub $t0, $t0, $t1
	sw $t0, -8652($fp)
	lw $t1, -8652($fp)
	li $t2, 0
	bne $t1, $t2, label522
	j label523
label522:
	lw $t0, -2508($fp)
	sw $t0, -8656($fp)
	li $t0, 60470
	sw $t0, -8660($fp)
	lw $t0, -8656($fp)
	lw $t1, -8660($fp)
	mul $t0, $t0, $t1
	sw $t0, -8664($fp)
	lw $t0, -2220($fp)
	sw $t0, -8668($fp)
	lw $t0, -8664($fp)
	lw $t1, -8668($fp)
	mul $t0, $t0, $t1
	sw $t0, -8672($fp)
	li $t0, 0
	sw $t0, -8676($fp)
	addi $t0, $fp, -8
	sw $t0, -8680($fp)
	lw $t0, -1512($fp)
	sw $t0, -8684($fp)
	li $t0, 4
	lw $t1, -8684($fp)
	mul $t0, $t0, $t1
	sw $t0, -8688($fp)
	lw $t0, -8688($fp)
	lw $t1, -8680($fp)
	add $t0, $t0, $t1
	sw $t0, -8692($fp)
	lw $t0, -8692($fp)
	lw $t1, 0($t0)
	sw $t1, -8696($fp)
	lw $t1, -8696($fp)
	li $t2, 0
	bne $t1, $t2, label531
	j label530
label530:
	li $t0, 1
	sw $t0, -8676($fp)
label531:
	lw $t0, -8672($fp)
	lw $t1, -8676($fp)
	sub $t0, $t0, $t1
	sw $t0, -8700($fp)
	li $t0, 0
	sw $t0, -8704($fp)
	li $t0, 0
	sw $t0, -8708($fp)
	li $t0, 0
	sw $t0, -8712($fp)
	lw $t0, -1740($fp)
	sw $t0, -8716($fp)
	li $t0, 63018
	sw $t0, -8720($fp)
	lw $t1, -8716($fp)
	lw $t2, -8720($fp)
	ble $t1, $t2, label536
	j label537
label536:
	li $t0, 1
	sw $t0, -8712($fp)
label537:
	li $t0, 24607
	sw $t0, -8724($fp)
	lw $t1, -8712($fp)
	lw $t2, -8724($fp)
	beq $t1, $t2, label534
	j label535
label534:
	li $t0, 1
	sw $t0, -8708($fp)
label535:
	li $t0, 58331
	sw $t0, -8728($fp)
	li $t0, 31907
	sw $t0, -8732($fp)
	li $t0, 0
	sw $t0, -8736($fp)
	lw $t0, -1728($fp)
	sw $t0, -8740($fp)
	li $t0, 7441
	sw $t0, -8744($fp)
	lw $t1, -8740($fp)
	lw $t2, -8744($fp)
	beq $t1, $t2, label540
	j label539
label540:
	li $t0, 17890
	sw $t0, -8748($fp)
	lw $t1, -8748($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label539
label538:
	li $t0, 1
	sw $t0, -8736($fp)
label539:
	addi $t0, $fp, -256
	sw $t0, -8752($fp)
	li $t0, 1
	sw $t0, -8756($fp)
	li $t0, 4
	lw $t1, -8756($fp)
	mul $t0, $t0, $t1
	sw $t0, -8760($fp)
	lw $t0, -8760($fp)
	lw $t1, -8752($fp)
	add $t0, $t0, $t1
	sw $t0, -8764($fp)
	lw $t0, -8764($fp)
	lw $t1, 0($t0)
	sw $t1, -8768($fp)
	li $t0, 40414
	sw $t0, -8772($fp)
	lw $t0, -8768($fp)
	lw $t1, -8772($fp)
	add $t0, $t0, $t1
	sw $t0, -8776($fp)
	addi $sp, $sp, -4
	lw $t0, -8708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8776($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8780($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -8784($fp)
	li $t0, 11142
	sw $t0, -8788($fp)
	lw $t1, -8788($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label541
label541:
	li $t0, 1
	sw $t0, -8784($fp)
label542:
	lw $t1, -8780($fp)
	lw $t2, -8784($fp)
	blt $t1, $t2, label532
	j label533
label532:
	li $t0, 1
	sw $t0, -8704($fp)
label533:
	lw $t1, -8700($fp)
	lw $t2, -8704($fp)
	bne $t1, $t2, label527
	j label528
label527:
	addi $t0, $fp, -48
	sw $t0, -8792($fp)
	li $t0, 0
	sw $t0, -8796($fp)
	lw $t0, -816($fp)
	sw $t0, -8800($fp)
	lw $t1, -8800($fp)
	li $t2, 0
	bne $t1, $t2, label547
	j label546
label546:
	li $t0, 1
	sw $t0, -8796($fp)
label547:
	li $t0, 0
	lw $t1, -8796($fp)
	sub $t0, $t0, $t1
	sw $t0, -8804($fp)
	li $t0, 43181
	sw $t0, -8808($fp)
	addi $sp, $sp, -4
	lw $t0, -8804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8808($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8812($fp)
	addi $sp, $sp, 12
	li $t0, 4
	lw $t1, -8812($fp)
	mul $t0, $t0, $t1
	sw $t0, -8816($fp)
	lw $t0, -8816($fp)
	lw $t1, -8792($fp)
	add $t0, $t0, $t1
	sw $t0, -8820($fp)
	lw $t0, -8820($fp)
	lw $t1, 0($t0)
	sw $t1, -8824($fp)
	addi $t0, $fp, -392
	sw $t0, -8828($fp)
	li $t0, 0
	sw $t0, -8832($fp)
	li $t0, 4
	lw $t1, -8832($fp)
	mul $t0, $t0, $t1
	sw $t0, -8836($fp)
	lw $t0, -8836($fp)
	lw $t1, -8828($fp)
	add $t0, $t0, $t1
	sw $t0, -8840($fp)
	lw $t0, -8840($fp)
	lw $t1, 0($t0)
	sw $t1, -8844($fp)
	lw $t0, -8824($fp)
	lw $t1, -8844($fp)
	add $t0, $t0, $t1
	sw $t0, -8848($fp)
	lw $t1, -8848($fp)
	li $t2, 0
	bne $t1, $t2, label543
	j label544
label543:
label548:
	li $t0, 2089
	sw $t0, -8852($fp)
	lw $t0, -8852($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -8856($fp)
	lw $t0, -3456($fp)
	sw $t0, -8860($fp)
	addi $sp, $sp, -4
	lw $t0, -8856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8860($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8864($fp)
	addi $sp, $sp, 12
	lw $t0, -444($fp)
	sw $t0, -8868($fp)
	lw $t0, -8864($fp)
	lw $t1, -8868($fp)
	sub $t0, $t0, $t1
	sw $t0, -8872($fp)
	addi $t0, $fp, -52
	sw $t0, -8876($fp)
	lw $t0, -3432($fp)
	sw $t0, -8880($fp)
	li $t0, 4
	lw $t1, -8880($fp)
	mul $t0, $t0, $t1
	sw $t0, -8884($fp)
	lw $t0, -8884($fp)
	lw $t1, -8876($fp)
	add $t0, $t0, $t1
	sw $t0, -8888($fp)
	lw $t0, -8888($fp)
	lw $t1, 0($t0)
	sw $t1, -8892($fp)
	lw $t0, -8872($fp)
	lw $t1, -8892($fp)
	add $t0, $t0, $t1
	sw $t0, -8896($fp)
	addi $t0, $fp, -76
	sw $t0, -8900($fp)
	li $t0, 2
	sw $t0, -8904($fp)
	li $t0, 4
	lw $t1, -8904($fp)
	mul $t0, $t0, $t1
	sw $t0, -8908($fp)
	lw $t0, -8908($fp)
	lw $t1, -8900($fp)
	add $t0, $t0, $t1
	sw $t0, -8912($fp)
	lw $t0, -8912($fp)
	lw $t1, 0($t0)
	sw $t1, -8916($fp)
	lw $t0, -8896($fp)
	lw $t1, -8916($fp)
	add $t0, $t0, $t1
	sw $t0, -8920($fp)
	li $t0, 0
	sw $t0, -8924($fp)
	li $t0, 0
	sw $t0, -8928($fp)
	lw $t0, -3456($fp)
	sw $t0, -8932($fp)
	lw $t0, -1776($fp)
	sw $t0, -8936($fp)
	lw $t1, -8932($fp)
	lw $t2, -8936($fp)
	bne $t1, $t2, label553
	j label555
label555:
	li $t0, 55787
	sw $t0, -8940($fp)
	lw $t1, -8940($fp)
	li $t2, 0
	bne $t1, $t2, label553
	j label554
label553:
	li $t0, 1
	sw $t0, -8928($fp)
label554:
	li $t0, 0
	sw $t0, -8944($fp)
	li $t0, 0
	sw $t0, -8948($fp)
	li $t0, 48832
	sw $t0, -8952($fp)
	li $t0, 48887
	sw $t0, -8956($fp)
	lw $t1, -8952($fp)
	lw $t2, -8956($fp)
	beq $t1, $t2, label558
	j label559
label558:
	li $t0, 1
	sw $t0, -8948($fp)
label559:
	li $t0, 38570
	sw $t0, -8960($fp)
	lw $t1, -8948($fp)
	lw $t2, -8960($fp)
	beq $t1, $t2, label556
	j label557
label556:
	li $t0, 1
	sw $t0, -8944($fp)
label557:
	li $t0, 40335
	sw $t0, -8964($fp)
	li $t0, 0
	lw $t1, -8964($fp)
	sub $t0, $t0, $t1
	sw $t0, -8968($fp)
	lw $t0, -420($fp)
	sw $t0, -8972($fp)
	lw $t0, -8968($fp)
	lw $t1, -8972($fp)
	add $t0, $t0, $t1
	sw $t0, -8976($fp)
	addi $sp, $sp, -4
	lw $t0, -8928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8976($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8980($fp)
	addi $sp, $sp, 16
	lw $t1, -8980($fp)
	li $t2, 0
	bne $t1, $t2, label552
	j label551
label551:
	li $t0, 1
	sw $t0, -8924($fp)
label552:
	lw $t1, -8920($fp)
	lw $t2, -8924($fp)
	beq $t1, $t2, label549
	j label550
label549:
label560:
	li $t0, 10953
	sw $t0, -8984($fp)
	lw $t1, -8984($fp)
	li $t2, 0
	bne $t1, $t2, label561
	j label562
label561:
	li $t0, 0
	sw $t0, -8988($fp)
	li $t0, 0
	sw $t0, -8992($fp)
	addi $t0, $fp, -216
	sw $t0, -8996($fp)
	li $t0, 0
	sw $t0, -9000($fp)
	li $t0, 4
	lw $t1, -9000($fp)
	mul $t0, $t0, $t1
	sw $t0, -9004($fp)
	lw $t0, -9004($fp)
	lw $t1, -8996($fp)
	add $t0, $t0, $t1
	sw $t0, -9008($fp)
	lw $t0, -9008($fp)
	lw $t1, 0($t0)
	sw $t1, -9012($fp)
	lw $t1, -9012($fp)
	li $t2, 0
	bne $t1, $t2, label567
	j label566
label566:
	li $t0, 1
	sw $t0, -8992($fp)
label567:
	li $t0, 0
	lw $t1, -8992($fp)
	sub $t0, $t0, $t1
	sw $t0, -9016($fp)
	lw $t1, -9016($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label565
label565:
	lw $t0, -3468($fp)
	sw $t0, -9020($fp)
	li $t0, 11463
	sw $t0, -9024($fp)
	lw $t0, -9020($fp)
	lw $t1, -9024($fp)
	mul $t0, $t0, $t1
	sw $t0, -9028($fp)
	li $t0, 49146
	sw $t0, -9032($fp)
	lw $t0, -9028($fp)
	lw $t1, -9032($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9036($fp)
	addi $t0, $fp, -368
	sw $t0, -9040($fp)
	lw $t0, -3480($fp)
	sw $t0, -9044($fp)
	li $t0, 4
	lw $t1, -9044($fp)
	mul $t0, $t0, $t1
	sw $t0, -9048($fp)
	lw $t0, -9048($fp)
	lw $t1, -9040($fp)
	add $t0, $t0, $t1
	sw $t0, -9052($fp)
	lw $t0, -9052($fp)
	lw $t1, 0($t0)
	sw $t1, -9056($fp)
	lw $t0, -9036($fp)
	lw $t1, -9056($fp)
	sub $t0, $t0, $t1
	sw $t0, -9060($fp)
	lw $t1, -9060($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label564
label563:
	li $t0, 1
	sw $t0, -8988($fp)
label564:
	lw $ra, -4($fp)
	lw $v0, -8988($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label560
label562:
	j label548
label550:
	j label545
label544:
label568:
	addi $t0, $fp, -8
	sw $t0, -9064($fp)
	addi $t0, $fp, -392
	sw $t0, -9068($fp)
	li $t0, 0
	sw $t0, -9072($fp)
	li $t0, 4
	lw $t1, -9072($fp)
	mul $t0, $t0, $t1
	sw $t0, -9076($fp)
	lw $t0, -9076($fp)
	lw $t1, -9068($fp)
	add $t0, $t0, $t1
	sw $t0, -9080($fp)
	lw $t0, -9080($fp)
	lw $t1, 0($t0)
	sw $t1, -9084($fp)
	li $t0, 4
	lw $t1, -9084($fp)
	mul $t0, $t0, $t1
	sw $t0, -9088($fp)
	lw $t0, -9088($fp)
	lw $t1, -9064($fp)
	add $t0, $t0, $t1
	sw $t0, -9092($fp)
	lw $t0, -9092($fp)
	lw $t1, 0($t0)
	sw $t1, -9096($fp)
	li $t0, 0
	sw $t0, -9100($fp)
	li $t0, 37061
	sw $t0, -9104($fp)
	lw $t1, -9104($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label572
label572:
	li $t0, 1
	sw $t0, -9100($fp)
label573:
	lw $t0, -9096($fp)
	lw $t1, -9100($fp)
	sub $t0, $t0, $t1
	sw $t0, -9108($fp)
	lw $t1, -9108($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label571
label571:
	lw $t0, -1500($fp)
	sw $t0, -9112($fp)
	lw $t0, -2544($fp)
	sw $t0, -9116($fp)
	li $t0, 21190
	sw $t0, -9120($fp)
	lw $t0, -9116($fp)
	lw $t1, -9120($fp)
	add $t0, $t0, $t1
	sw $t0, -9124($fp)
	lw $t1, -9112($fp)
	lw $t2, -9124($fp)
	beq $t1, $t2, label569
	j label570
label569:
label574:
	li $t0, 27975
	sw $t0, -9128($fp)
	lw $t0, -1008($fp)
	sw $t0, -9132($fp)
	lw $t0, -9128($fp)
	lw $t1, -9132($fp)
	add $t0, $t0, $t1
	sw $t0, -9136($fp)
	li $t0, 0
	sw $t0, -9140($fp)
	lw $t0, -2544($fp)
	sw $t0, -9144($fp)
	li $t0, 55627
	sw $t0, -9148($fp)
	lw $t1, -9144($fp)
	lw $t2, -9148($fp)
	blt $t1, $t2, label577
	j label578
label577:
	li $t0, 1
	sw $t0, -9140($fp)
label578:
	li $t0, 0
	sw $t0, -9152($fp)
	lw $t0, -1524($fp)
	sw $t0, -9156($fp)
	lw $t1, -9156($fp)
	li $t2, 0
	bne $t1, $t2, label582
	j label580
label582:
	li $t0, 61604
	sw $t0, -9160($fp)
	lw $t1, -9160($fp)
	li $t2, 0
	bne $t1, $t2, label581
	j label580
label581:
	li $t0, 53765
	sw $t0, -9164($fp)
	lw $t1, -9164($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label580
label579:
	li $t0, 1
	sw $t0, -9152($fp)
label580:
	li $t0, 0
	sw $t0, -9168($fp)
	lw $t0, -1008($fp)
	sw $t0, -9172($fp)
	li $t0, 37737
	sw $t0, -9176($fp)
	lw $t0, -9172($fp)
	lw $t1, -9176($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9180($fp)
	lw $t0, -1512($fp)
	sw $t0, -9184($fp)
	lw $t1, -9180($fp)
	lw $t2, -9184($fp)
	bne $t1, $t2, label583
	j label584
label583:
	li $t0, 1
	sw $t0, -9168($fp)
label584:
	li $t0, 0
	sw $t0, -9188($fp)
	lw $t0, 8($fp)
	sw $t0, -9192($fp)
	li $t0, 0
	lw $t1, -9192($fp)
	sub $t0, $t0, $t1
	sw $t0, -9196($fp)
	lw $t1, -9196($fp)
	li $t2, 0
	bne $t1, $t2, label587
	j label586
label587:
	li $t0, 46324
	sw $t0, -9200($fp)
	lw $t1, -9200($fp)
	li $t2, 0
	bne $t1, $t2, label585
	j label586
label585:
	li $t0, 1
	sw $t0, -9188($fp)
label586:
	addi $sp, $sp, -4
	lw $t0, -9136($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9188($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9204($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -132
	sw $t0, -9208($fp)
	li $t0, 0
	sw $t0, -9212($fp)
	li $t0, 46561
	sw $t0, -9216($fp)
	lw $t1, -9216($fp)
	li $t2, 0
	bne $t1, $t2, label589
	j label588
label588:
	li $t0, 1
	sw $t0, -9212($fp)
label589:
	li $t0, 4
	lw $t1, -9212($fp)
	mul $t0, $t0, $t1
	sw $t0, -9220($fp)
	lw $t0, -9220($fp)
	lw $t1, -9208($fp)
	add $t0, $t0, $t1
	sw $t0, -9224($fp)
	lw $t0, -9224($fp)
	lw $t1, 0($t0)
	sw $t1, -9228($fp)
	lw $t1, -9204($fp)
	lw $t2, -9228($fp)
	ble $t1, $t2, label575
	j label576
label575:
	li $t0, 0
	sw $t0, -9232($fp)
	lw $t0, -1776($fp)
	sw $t0, -9236($fp)
	li $t0, 0
	sw $t0, -9240($fp)
	li $t0, 59235
	sw $t0, -9244($fp)
	li $t0, 40169
	sw $t0, -9248($fp)
	lw $t0, -9244($fp)
	lw $t1, -9248($fp)
	add $t0, $t0, $t1
	sw $t0, -9252($fp)
	lw $t1, -9252($fp)
	li $t2, 0
	bne $t1, $t2, label593
	j label595
label595:
	lw $t0, -996($fp)
	sw $t0, -9256($fp)
	lw $t1, -9256($fp)
	li $t2, 0
	bne $t1, $t2, label593
	j label594
label593:
	li $t0, 1
	sw $t0, -9240($fp)
label594:
	li $t0, 0
	sw $t0, -9260($fp)
	li $t0, 23394
	sw $t0, -9264($fp)
	li $t0, 0
	lw $t1, -9264($fp)
	sub $t0, $t0, $t1
	sw $t0, -9268($fp)
	lw $t1, -9268($fp)
	li $t2, 0
	bne $t1, $t2, label597
	j label596
label596:
	li $t0, 1
	sw $t0, -9260($fp)
label597:
	li $t0, 0
	sw $t0, -9272($fp)
	addi $t0, $fp, -256
	sw $t0, -9276($fp)
	lw $t0, -3264($fp)
	sw $t0, -9280($fp)
	li $t0, 4
	lw $t1, -9280($fp)
	mul $t0, $t0, $t1
	sw $t0, -9284($fp)
	lw $t0, -9284($fp)
	lw $t1, -9276($fp)
	add $t0, $t0, $t1
	sw $t0, -9288($fp)
	lw $t0, -9288($fp)
	lw $t1, 0($t0)
	sw $t1, -9292($fp)
	lw $t1, -9292($fp)
	li $t2, 0
	bne $t1, $t2, label600
	j label599
label600:
	li $t0, 14170
	sw $t0, -9296($fp)
	lw $t1, -9296($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label599
label598:
	li $t0, 1
	sw $t0, -9272($fp)
label599:
	lw $t0, -1776($fp)
	sw $t0, -9300($fp)
	li $t0, 48282
	sw $t0, -9304($fp)
	lw $t0, -9300($fp)
	lw $t1, -9304($fp)
	sub $t0, $t0, $t1
	sw $t0, -9308($fp)
	lw $t0, -1428($fp)
	sw $t0, -9312($fp)
	li $t0, 0
	lw $t1, -9312($fp)
	sub $t0, $t0, $t1
	sw $t0, -9316($fp)
	li $t0, 0
	sw $t0, -9320($fp)
	li $t0, 33143
	sw $t0, -9324($fp)
	lw $t1, -9324($fp)
	li $t2, 0
	bne $t1, $t2, label602
	j label601
label601:
	li $t0, 1
	sw $t0, -9320($fp)
label602:
	addi $t0, $fp, -132
	sw $t0, -9328($fp)
	li $t0, 4
	sw $t0, -9332($fp)
	li $t0, 4
	lw $t1, -9332($fp)
	mul $t0, $t0, $t1
	sw $t0, -9336($fp)
	lw $t0, -9336($fp)
	lw $t1, -9328($fp)
	add $t0, $t0, $t1
	sw $t0, -9340($fp)
	lw $t0, -9340($fp)
	lw $t1, 0($t0)
	sw $t1, -9344($fp)
	li $t0, 0
	sw $t0, -9348($fp)
	li $t0, 0
	sw $t0, -9352($fp)
	li $t0, 4974
	sw $t0, -9356($fp)
	li $t0, 801
	sw $t0, -9360($fp)
	lw $t1, -9356($fp)
	lw $t2, -9360($fp)
	bge $t1, $t2, label605
	j label606
label605:
	li $t0, 1
	sw $t0, -9352($fp)
label606:
	li $t0, 49847
	sw $t0, -9364($fp)
	lw $t1, -9352($fp)
	lw $t2, -9364($fp)
	bgt $t1, $t2, label603
	j label604
label603:
	li $t0, 1
	sw $t0, -9348($fp)
label604:
	addi $sp, $sp, -4
	lw $t0, -9308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9348($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9368($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -9272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9368($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9372($fp)
	addi $sp, $sp, 12
	lw $t0, -1440($fp)
	sw $t0, -9376($fp)
	lw $t0, -9372($fp)
	lw $t1, -9376($fp)
	mul $t0, $t0, $t1
	sw $t0, -9380($fp)
	li $t0, 0
	sw $t0, -9384($fp)
	li $t0, 52162
	sw $t0, -9388($fp)
	lw $t1, -9388($fp)
	li $t2, 0
	bne $t1, $t2, label607
	j label608
label607:
	li $t0, 1
	sw $t0, -9384($fp)
label608:
	li $t0, 0
	sw $t0, -9392($fp)
	li $t0, 64247
	sw $t0, -9396($fp)
	li $t0, 0
	lw $t1, -9396($fp)
	sub $t0, $t0, $t1
	sw $t0, -9400($fp)
	lw $t1, -9400($fp)
	li $t2, 0
	bne $t1, $t2, label609
	j label611
label611:
	lw $t0, -1296($fp)
	sw $t0, -9404($fp)
	lw $t1, -9404($fp)
	li $t2, 0
	bne $t1, $t2, label609
	j label610
label609:
	li $t0, 1
	sw $t0, -9392($fp)
label610:
	li $t0, 0
	sw $t0, -9408($fp)
	li $t0, 0
	sw $t0, -9412($fp)
	lw $t0, -3288($fp)
	sw $t0, -9416($fp)
	li $t0, 57703
	sw $t0, -9420($fp)
	lw $t1, -9416($fp)
	lw $t2, -9420($fp)
	beq $t1, $t2, label614
	j label615
label614:
	li $t0, 1
	sw $t0, -9412($fp)
label615:
	li $t0, 30754
	sw $t0, -9424($fp)
	lw $t1, -9412($fp)
	lw $t2, -9424($fp)
	beq $t1, $t2, label612
	j label613
label612:
	li $t0, 1
	sw $t0, -9408($fp)
label613:
	addi $sp, $sp, -4
	lw $t0, -9384($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9408($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -9428($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -9432($fp)
	li $t0, 53109
	sw $t0, -9436($fp)
	lw $t0, -1440($fp)
	sw $t0, -9440($fp)
	lw $t0, -9436($fp)
	lw $t1, -9440($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9444($fp)
	li $t0, 52582
	sw $t0, -9448($fp)
	lw $t1, -9444($fp)
	lw $t2, -9448($fp)
	bne $t1, $t2, label616
	j label617
label616:
	li $t0, 1
	sw $t0, -9432($fp)
label617:
	addi $sp, $sp, -4
	lw $t0, -9240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9432($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9452($fp)
	addi $sp, $sp, 24
	lw $t0, -9236($fp)
	lw $t1, -9452($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9456($fp)
	li $t0, 0
	lw $t1, -9456($fp)
	sub $t0, $t0, $t1
	sw $t0, -9460($fp)
	li $t0, 0
	lw $t1, -9460($fp)
	sub $t0, $t0, $t1
	sw $t0, -9464($fp)
	lw $t0, -1008($fp)
	sw $t0, -9468($fp)
	lw $t0, -1020($fp)
	sw $t0, -9472($fp)
	lw $t0, -9468($fp)
	lw $t1, -9472($fp)
	add $t0, $t0, $t1
	sw $t0, -9476($fp)
	li $t0, 64479
	sw $t0, -9480($fp)
	lw $t0, -9476($fp)
	lw $t1, -9480($fp)
	sub $t0, $t0, $t1
	sw $t0, -9484($fp)
	lw $t1, -9464($fp)
	lw $t2, -9484($fp)
	bgt $t1, $t2, label592
	j label591
label592:
	addi $t0, $fp, -392
	sw $t0, -9488($fp)
	lw $t0, -1032($fp)
	sw $t0, -9492($fp)
	li $t0, 4
	lw $t1, -9492($fp)
	mul $t0, $t0, $t1
	sw $t0, -9496($fp)
	lw $t0, -9496($fp)
	lw $t1, -9488($fp)
	add $t0, $t0, $t1
	sw $t0, -9500($fp)
	lw $t0, -9500($fp)
	lw $t1, 0($t0)
	sw $t1, -9504($fp)
	lw $t0, -1044($fp)
	sw $t0, -9508($fp)
	lw $t0, -9504($fp)
	lw $t1, -9508($fp)
	add $t0, $t0, $t1
	sw $t0, -9512($fp)
	li $t0, 5163
	sw $t0, -9516($fp)
	li $t0, 23780
	sw $t0, -9520($fp)
	lw $t0, -9516($fp)
	lw $t1, -9520($fp)
	sub $t0, $t0, $t1
	sw $t0, -9524($fp)
	lw $t1, -9512($fp)
	lw $t2, -9524($fp)
	ble $t1, $t2, label590
	j label591
label590:
	li $t0, 1
	sw $t0, -9232($fp)
label591:
	j label574
label576:
	j label568
label570:
label545:
	j label529
label528:
label618:
	addi $t0, $fp, -112
	sw $t0, -9528($fp)
	lw $t0, -456($fp)
	sw $t0, -9532($fp)
	li $t0, 4
	lw $t1, -9532($fp)
	mul $t0, $t0, $t1
	sw $t0, -9536($fp)
	lw $t0, -9536($fp)
	lw $t1, -9528($fp)
	add $t0, $t0, $t1
	sw $t0, -9540($fp)
	lw $t0, -9540($fp)
	lw $t1, 0($t0)
	sw $t1, -9544($fp)
	lw $t0, -1272($fp)
	sw $t0, -9548($fp)
	lw $t0, -1464($fp)
	sw $t0, -9552($fp)
	lw $t0, -9548($fp)
	lw $t1, -9552($fp)
	mul $t0, $t0, $t1
	sw $t0, -9556($fp)
	li $t0, 0
	lw $t1, -9556($fp)
	sub $t0, $t0, $t1
	sw $t0, -9560($fp)
	li $t0, 0
	lw $t1, -9560($fp)
	sub $t0, $t0, $t1
	sw $t0, -9564($fp)
	lw $t0, -9544($fp)
	lw $t1, -9564($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9568($fp)
	lw $t1, -9568($fp)
	li $t2, 0
	bne $t1, $t2, label619
	j label620
label619:
	li $t0, 25198
	sw $t0, -9572($fp)
	lw $t0, -9572($fp)
	sw $t0, -9576($fp)
	lw $t0, -9576($fp)
	sw $t0, -9580($fp)
	li $t0, 14764
	sw $t0, -9584($fp)
	lw $t0, -9584($fp)
	sw $t0, -9588($fp)
	lw $t0, -9588($fp)
	sw $t0, -9592($fp)
	li $t0, 0
	sw $t0, -9596($fp)
	lw $t0, -9588($fp)
	sw $t0, -9600($fp)
	li $t0, 0
	lw $t1, -9600($fp)
	sub $t0, $t0, $t1
	sw $t0, -9604($fp)
	lw $t1, -9604($fp)
	li $t2, 0
	bne $t1, $t2, label622
	j label621
label621:
	li $t0, 1
	sw $t0, -9596($fp)
label622:
	li $t0, 0
	sw $t0, -9608($fp)
	lw $t0, -552($fp)
	sw $t0, -9612($fp)
	lw $t0, -1992($fp)
	sw $t0, -9616($fp)
	lw $t0, -9612($fp)
	lw $t1, -9616($fp)
	add $t0, $t0, $t1
	sw $t0, -9620($fp)
	lw $t0, -2496($fp)
	sw $t0, -9624($fp)
	lw $t1, -9620($fp)
	lw $t2, -9624($fp)
	beq $t1, $t2, label623
	j label624
label623:
	li $t0, 1
	sw $t0, -9608($fp)
label624:
	li $t0, 0
	sw $t0, -9628($fp)
	lw $t0, -1980($fp)
	sw $t0, -9632($fp)
	li $t0, 60841
	sw $t0, -9636($fp)
	lw $t1, -9632($fp)
	lw $t2, -9636($fp)
	bge $t1, $t2, label625
	j label626
label625:
	li $t0, 1
	sw $t0, -9628($fp)
label626:
	lw $t0, -540($fp)
	sw $t0, -9640($fp)
	lw $t0, -1284($fp)
	sw $t0, -9644($fp)
	lw $t0, -9640($fp)
	lw $t1, -9644($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9648($fp)
	lw $t0, -1968($fp)
	sw $t0, -9652($fp)
	lw $t0, -9648($fp)
	lw $t1, -9652($fp)
	mul $t0, $t0, $t1
	sw $t0, -9656($fp)
	addi $sp, $sp, -4
	lw $t0, -9608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9656($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -9660($fp)
	addi $sp, $sp, 16
	li $t0, 46388
	sw $t0, -9664($fp)
	li $t0, 0
	sw $t0, -9668($fp)
	li $t0, 61088
	sw $t0, -9672($fp)
	addi $t0, $fp, -216
	sw $t0, -9676($fp)
	lw $t0, 8($fp)
	sw $t0, -9680($fp)
	li $t0, 4
	lw $t1, -9680($fp)
	mul $t0, $t0, $t1
	sw $t0, -9684($fp)
	lw $t0, -9684($fp)
	lw $t1, -9676($fp)
	add $t0, $t0, $t1
	sw $t0, -9688($fp)
	lw $t0, -9688($fp)
	lw $t1, 0($t0)
	sw $t1, -9692($fp)
	lw $t0, -9672($fp)
	lw $t1, -9692($fp)
	sub $t0, $t0, $t1
	sw $t0, -9696($fp)
	lw $t1, -9696($fp)
	li $t2, 0
	bne $t1, $t2, label627
	j label629
label629:
	lw $t0, -9576($fp)
	sw $t0, -9700($fp)
	lw $t0, -1764($fp)
	sw $t0, -9704($fp)
	li $t0, 0
	sw $t0, -9708($fp)
	li $t0, 4895
	sw $t0, -9712($fp)
	li $t0, 0
	lw $t1, -9712($fp)
	sub $t0, $t0, $t1
	sw $t0, -9716($fp)
	lw $t0, -2496($fp)
	sw $t0, -9720($fp)
	lw $t1, -9716($fp)
	lw $t2, -9720($fp)
	blt $t1, $t2, label630
	j label631
label630:
	li $t0, 1
	sw $t0, -9708($fp)
label631:
	li $t0, 0
	sw $t0, -9724($fp)
	li $t0, 42456
	sw $t0, -9728($fp)
	li $t0, 49317
	sw $t0, -9732($fp)
	lw $t1, -9728($fp)
	lw $t2, -9732($fp)
	bgt $t1, $t2, label632
	j label634
label634:
	li $t0, 23133
	sw $t0, -9736($fp)
	lw $t1, -9736($fp)
	li $t2, 0
	bne $t1, $t2, label632
	j label633
label632:
	li $t0, 1
	sw $t0, -9724($fp)
label633:
	addi $sp, $sp, -4
	lw $t0, -9704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9724($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -9740($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -9744($fp)
	li $t0, 0
	sw $t0, -9748($fp)
	lw $t0, -1464($fp)
	sw $t0, -9752($fp)
	lw $t0, -3480($fp)
	sw $t0, -9756($fp)
	lw $t1, -9752($fp)
	lw $t2, -9756($fp)
	bge $t1, $t2, label637
	j label638
label637:
	li $t0, 1
	sw $t0, -9748($fp)
label638:
	li $t0, 33042
	sw $t0, -9760($fp)
	lw $t1, -9748($fp)
	lw $t2, -9760($fp)
	blt $t1, $t2, label635
	j label636
label635:
	li $t0, 1
	sw $t0, -9744($fp)
label636:
	addi $sp, $sp, -4
	lw $t0, -9700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9744($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -9764($fp)
	addi $sp, $sp, 16
	li $t0, 30342
	sw $t0, -9768($fp)
	li $t0, 10706
	sw $t0, -9772($fp)
	lw $t0, -9768($fp)
	lw $t1, -9772($fp)
	sub $t0, $t0, $t1
	sw $t0, -9776($fp)
	lw $t1, -9764($fp)
	lw $t2, -9776($fp)
	bne $t1, $t2, label627
	j label628
label627:
	li $t0, 1
	sw $t0, -9668($fp)
label628:
	j label618
label620:
label529:
	j label524
label523:
label639:
	addi $t0, $fp, -8
	sw $t0, -9780($fp)
	li $t0, 0
	sw $t0, -9784($fp)
	lw $t0, -1272($fp)
	sw $t0, -9788($fp)
	li $t0, 0
	lw $t1, -9788($fp)
	sub $t0, $t0, $t1
	sw $t0, -9792($fp)
	lw $t1, -9792($fp)
	li $t2, 0
	bne $t1, $t2, label643
	j label642
label642:
	li $t0, 1
	sw $t0, -9784($fp)
label643:
	li $t0, 4
	lw $t1, -9784($fp)
	mul $t0, $t0, $t1
	sw $t0, -9796($fp)
	lw $t0, -9796($fp)
	lw $t1, -9780($fp)
	add $t0, $t0, $t1
	sw $t0, -9800($fp)
	lw $t0, -9800($fp)
	lw $t1, 0($t0)
	sw $t1, -9804($fp)
	lw $t1, -9804($fp)
	li $t2, 0
	bne $t1, $t2, label640
	j label641
label640:
	li $t0, 0
	sw $t0, -9808($fp)
	li $t0, 57477
	sw $t0, -9812($fp)
	lw $t1, -9812($fp)
	li $t2, 0
	bne $t1, $t2, label645
	j label644
label644:
	li $t0, 1
	sw $t0, -9808($fp)
label645:
	li $t0, 0
	lw $t1, -9808($fp)
	sub $t0, $t0, $t1
	sw $t0, -9816($fp)
	lw $t0, -1476($fp)
	sw $t0, -9820($fp)
	li $t0, 0
	lw $t1, -9820($fp)
	sub $t0, $t0, $t1
	sw $t0, -9824($fp)
	lw $t0, -9816($fp)
	lw $t1, -9824($fp)
	add $t0, $t0, $t1
	sw $t0, -9828($fp)
	j label639
label641:
label524:
label389:
label361:
	j label356
label355:
label646:
	addi $t0, $fp, -216
	sw $t0, -9832($fp)
	addi $t0, $fp, -256
	sw $t0, -9836($fp)
	li $t0, 3
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
	lw $t0, -480($fp)
	sw $t0, -9856($fp)
	lw $t0, -9852($fp)
	lw $t1, -9856($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9860($fp)
	li $t0, 0
	lw $t1, -9860($fp)
	sub $t0, $t0, $t1
	sw $t0, -9864($fp)
	li $t0, 4
	lw $t1, -9864($fp)
	mul $t0, $t0, $t1
	sw $t0, -9868($fp)
	lw $t0, -9868($fp)
	lw $t1, -9832($fp)
	add $t0, $t0, $t1
	sw $t0, -9872($fp)
	lw $t0, -9872($fp)
	lw $t1, 0($t0)
	sw $t1, -9876($fp)
	lw $t1, -9876($fp)
	li $t2, 0
	bne $t1, $t2, label647
	j label648
label647:
	lw $t0, -492($fp)
	sw $t0, -9880($fp)
	lw $ra, -4($fp)
	lw $v0, -9880($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label646
label648:
label356:
	lw $t0, -420($fp)
	sw $t0, -9884($fp)
	lw $t0, -9884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -9888($fp)
	lw $t0, -9888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -9892($fp)
	lw $t0, -9892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -9896($fp)
	lw $t0, -9896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -9900($fp)
	lw $t0, -9900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -9904($fp)
	lw $t0, -9904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -9908($fp)
	lw $t0, -9908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -9912($fp)
	li $t0, 0
	sw $t0, -9916($fp)
	li $t0, 4
	lw $t1, -9916($fp)
	mul $t0, $t0, $t1
	sw $t0, -9920($fp)
	lw $t0, -9920($fp)
	lw $t1, -9912($fp)
	add $t0, $t0, $t1
	sw $t0, -9924($fp)
	lw $t0, -9924($fp)
	lw $t1, 0($t0)
	sw $t1, -9928($fp)
	lw $t0, -9928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -9932($fp)
	lw $t0, -9932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -9936($fp)
	lw $t0, -9936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -9940($fp)
	lw $t0, -9940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -9944($fp)
	lw $t0, -9944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -9948($fp)
	li $t0, 0
	sw $t0, -9952($fp)
	li $t0, 4
	lw $t1, -9952($fp)
	mul $t0, $t0, $t1
	sw $t0, -9956($fp)
	lw $t0, -9956($fp)
	lw $t1, -9948($fp)
	add $t0, $t0, $t1
	sw $t0, -9960($fp)
	lw $t0, -9960($fp)
	lw $t1, 0($t0)
	sw $t1, -9964($fp)
	lw $t0, -9964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -9968($fp)
	li $t0, 1
	sw $t0, -9972($fp)
	li $t0, 4
	lw $t1, -9972($fp)
	mul $t0, $t0, $t1
	sw $t0, -9976($fp)
	lw $t0, -9976($fp)
	lw $t1, -9968($fp)
	add $t0, $t0, $t1
	sw $t0, -9980($fp)
	lw $t0, -9980($fp)
	lw $t1, 0($t0)
	sw $t1, -9984($fp)
	lw $t0, -9984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -9988($fp)
	li $t0, 2
	sw $t0, -9992($fp)
	li $t0, 4
	lw $t1, -9992($fp)
	mul $t0, $t0, $t1
	sw $t0, -9996($fp)
	lw $t0, -9996($fp)
	lw $t1, -9988($fp)
	add $t0, $t0, $t1
	sw $t0, -10000($fp)
	lw $t0, -10000($fp)
	lw $t1, 0($t0)
	sw $t1, -10004($fp)
	lw $t0, -10004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -10008($fp)
	li $t0, 3
	sw $t0, -10012($fp)
	li $t0, 4
	lw $t1, -10012($fp)
	mul $t0, $t0, $t1
	sw $t0, -10016($fp)
	lw $t0, -10016($fp)
	lw $t1, -10008($fp)
	add $t0, $t0, $t1
	sw $t0, -10020($fp)
	lw $t0, -10020($fp)
	lw $t1, 0($t0)
	sw $t1, -10024($fp)
	lw $t0, -10024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -10028($fp)
	li $t0, 4
	sw $t0, -10032($fp)
	li $t0, 4
	lw $t1, -10032($fp)
	mul $t0, $t0, $t1
	sw $t0, -10036($fp)
	lw $t0, -10036($fp)
	lw $t1, -10028($fp)
	add $t0, $t0, $t1
	sw $t0, -10040($fp)
	lw $t0, -10040($fp)
	lw $t1, 0($t0)
	sw $t1, -10044($fp)
	lw $t0, -10044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -10048($fp)
	li $t0, 5
	sw $t0, -10052($fp)
	li $t0, 4
	lw $t1, -10052($fp)
	mul $t0, $t0, $t1
	sw $t0, -10056($fp)
	lw $t0, -10056($fp)
	lw $t1, -10048($fp)
	add $t0, $t0, $t1
	sw $t0, -10060($fp)
	lw $t0, -10060($fp)
	lw $t1, 0($t0)
	sw $t1, -10064($fp)
	lw $t0, -10064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -10068($fp)
	li $t0, 6
	sw $t0, -10072($fp)
	li $t0, 4
	lw $t1, -10072($fp)
	mul $t0, $t0, $t1
	sw $t0, -10076($fp)
	lw $t0, -10076($fp)
	lw $t1, -10068($fp)
	add $t0, $t0, $t1
	sw $t0, -10080($fp)
	lw $t0, -10080($fp)
	lw $t1, 0($t0)
	sw $t1, -10084($fp)
	lw $t0, -10084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -10088($fp)
	li $t0, 0
	sw $t0, -10092($fp)
	li $t0, 4
	lw $t1, -10092($fp)
	mul $t0, $t0, $t1
	sw $t0, -10096($fp)
	lw $t0, -10096($fp)
	lw $t1, -10088($fp)
	add $t0, $t0, $t1
	sw $t0, -10100($fp)
	lw $t0, -10100($fp)
	lw $t1, 0($t0)
	sw $t1, -10104($fp)
	lw $t0, -10104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -10108($fp)
	li $t0, 1
	sw $t0, -10112($fp)
	li $t0, 4
	lw $t1, -10112($fp)
	mul $t0, $t0, $t1
	sw $t0, -10116($fp)
	lw $t0, -10116($fp)
	lw $t1, -10108($fp)
	add $t0, $t0, $t1
	sw $t0, -10120($fp)
	lw $t0, -10120($fp)
	lw $t1, 0($t0)
	sw $t1, -10124($fp)
	lw $t0, -10124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -10128($fp)
	li $t0, 2
	sw $t0, -10132($fp)
	li $t0, 4
	lw $t1, -10132($fp)
	mul $t0, $t0, $t1
	sw $t0, -10136($fp)
	lw $t0, -10136($fp)
	lw $t1, -10128($fp)
	add $t0, $t0, $t1
	sw $t0, -10140($fp)
	lw $t0, -10140($fp)
	lw $t1, 0($t0)
	sw $t1, -10144($fp)
	lw $t0, -10144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -816($fp)
	sw $t0, -10148($fp)
	lw $t0, -10148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -10152($fp)
	li $t0, 0
	sw $t0, -10156($fp)
	li $t0, 4
	lw $t1, -10156($fp)
	mul $t0, $t0, $t1
	sw $t0, -10160($fp)
	lw $t0, -10160($fp)
	lw $t1, -10152($fp)
	add $t0, $t0, $t1
	sw $t0, -10164($fp)
	lw $t0, -10164($fp)
	lw $t1, 0($t0)
	sw $t1, -10168($fp)
	lw $t0, -10168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -10172($fp)
	li $t0, 0
	sw $t0, -10176($fp)
	li $t0, 4
	lw $t1, -10176($fp)
	mul $t0, $t0, $t1
	sw $t0, -10180($fp)
	lw $t0, -10180($fp)
	lw $t1, -10172($fp)
	add $t0, $t0, $t1
	sw $t0, -10184($fp)
	lw $t0, -10184($fp)
	lw $t1, 0($t0)
	sw $t1, -10188($fp)
	lw $t0, -10188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -10192($fp)
	li $t0, 1
	sw $t0, -10196($fp)
	li $t0, 4
	lw $t1, -10196($fp)
	mul $t0, $t0, $t1
	sw $t0, -10200($fp)
	lw $t0, -10200($fp)
	lw $t1, -10192($fp)
	add $t0, $t0, $t1
	sw $t0, -10204($fp)
	lw $t0, -10204($fp)
	lw $t1, 0($t0)
	sw $t1, -10208($fp)
	lw $t0, -10208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -10212($fp)
	li $t0, 2
	sw $t0, -10216($fp)
	li $t0, 4
	lw $t1, -10216($fp)
	mul $t0, $t0, $t1
	sw $t0, -10220($fp)
	lw $t0, -10220($fp)
	lw $t1, -10212($fp)
	add $t0, $t0, $t1
	sw $t0, -10224($fp)
	lw $t0, -10224($fp)
	lw $t1, 0($t0)
	sw $t1, -10228($fp)
	lw $t0, -10228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -10232($fp)
	li $t0, 3
	sw $t0, -10236($fp)
	li $t0, 4
	lw $t1, -10236($fp)
	mul $t0, $t0, $t1
	sw $t0, -10240($fp)
	lw $t0, -10240($fp)
	lw $t1, -10232($fp)
	add $t0, $t0, $t1
	sw $t0, -10244($fp)
	lw $t0, -10244($fp)
	lw $t1, 0($t0)
	sw $t1, -10248($fp)
	lw $t0, -10248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -10252($fp)
	li $t0, 4
	sw $t0, -10256($fp)
	li $t0, 4
	lw $t1, -10256($fp)
	mul $t0, $t0, $t1
	sw $t0, -10260($fp)
	lw $t0, -10260($fp)
	lw $t1, -10252($fp)
	add $t0, $t0, $t1
	sw $t0, -10264($fp)
	lw $t0, -10264($fp)
	lw $t1, 0($t0)
	sw $t1, -10268($fp)
	lw $t0, -10268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -10272($fp)
	li $t0, 5
	sw $t0, -10276($fp)
	li $t0, 4
	lw $t1, -10276($fp)
	mul $t0, $t0, $t1
	sw $t0, -10280($fp)
	lw $t0, -10280($fp)
	lw $t1, -10272($fp)
	add $t0, $t0, $t1
	sw $t0, -10284($fp)
	lw $t0, -10284($fp)
	lw $t1, 0($t0)
	sw $t1, -10288($fp)
	lw $t0, -10288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -996($fp)
	sw $t0, -10292($fp)
	lw $t0, -10292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1008($fp)
	sw $t0, -10296($fp)
	lw $t0, -10296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1020($fp)
	sw $t0, -10300($fp)
	lw $t0, -10300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1032($fp)
	sw $t0, -10304($fp)
	lw $t0, -10304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1044($fp)
	sw $t0, -10308($fp)
	lw $t0, -10308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -10312($fp)
	li $t0, 0
	sw $t0, -10316($fp)
	li $t0, 4
	lw $t1, -10316($fp)
	mul $t0, $t0, $t1
	sw $t0, -10320($fp)
	lw $t0, -10320($fp)
	lw $t1, -10312($fp)
	add $t0, $t0, $t1
	sw $t0, -10324($fp)
	lw $t0, -10324($fp)
	lw $t1, 0($t0)
	sw $t1, -10328($fp)
	lw $t0, -10328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -10332($fp)
	li $t0, 1
	sw $t0, -10336($fp)
	li $t0, 4
	lw $t1, -10336($fp)
	mul $t0, $t0, $t1
	sw $t0, -10340($fp)
	lw $t0, -10340($fp)
	lw $t1, -10332($fp)
	add $t0, $t0, $t1
	sw $t0, -10344($fp)
	lw $t0, -10344($fp)
	lw $t1, 0($t0)
	sw $t1, -10348($fp)
	lw $t0, -10348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -10352($fp)
	li $t0, 2
	sw $t0, -10356($fp)
	li $t0, 4
	lw $t1, -10356($fp)
	mul $t0, $t0, $t1
	sw $t0, -10360($fp)
	lw $t0, -10360($fp)
	lw $t1, -10352($fp)
	add $t0, $t0, $t1
	sw $t0, -10364($fp)
	lw $t0, -10364($fp)
	lw $t1, 0($t0)
	sw $t1, -10368($fp)
	lw $t0, -10368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -10372($fp)
	li $t0, 3
	sw $t0, -10376($fp)
	li $t0, 4
	lw $t1, -10376($fp)
	mul $t0, $t0, $t1
	sw $t0, -10380($fp)
	lw $t0, -10380($fp)
	lw $t1, -10372($fp)
	add $t0, $t0, $t1
	sw $t0, -10384($fp)
	lw $t0, -10384($fp)
	lw $t1, 0($t0)
	sw $t1, -10388($fp)
	lw $t0, -10388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -10392($fp)
	li $t0, 4
	sw $t0, -10396($fp)
	li $t0, 4
	lw $t1, -10396($fp)
	mul $t0, $t0, $t1
	sw $t0, -10400($fp)
	lw $t0, -10400($fp)
	lw $t1, -10392($fp)
	add $t0, $t0, $t1
	sw $t0, -10404($fp)
	lw $t0, -10404($fp)
	lw $t1, 0($t0)
	sw $t1, -10408($fp)
	lw $t0, -10408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -10412($fp)
	li $t0, 5
	sw $t0, -10416($fp)
	li $t0, 4
	lw $t1, -10416($fp)
	mul $t0, $t0, $t1
	sw $t0, -10420($fp)
	lw $t0, -10420($fp)
	lw $t1, -10412($fp)
	add $t0, $t0, $t1
	sw $t0, -10424($fp)
	lw $t0, -10424($fp)
	lw $t1, 0($t0)
	sw $t1, -10428($fp)
	lw $t0, -10428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -10432($fp)
	li $t0, 6
	sw $t0, -10436($fp)
	li $t0, 4
	lw $t1, -10436($fp)
	mul $t0, $t0, $t1
	sw $t0, -10440($fp)
	lw $t0, -10440($fp)
	lw $t1, -10432($fp)
	add $t0, $t0, $t1
	sw $t0, -10444($fp)
	lw $t0, -10444($fp)
	lw $t1, 0($t0)
	sw $t1, -10448($fp)
	lw $t0, -10448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -10452($fp)
	li $t0, 7
	sw $t0, -10456($fp)
	li $t0, 4
	lw $t1, -10456($fp)
	mul $t0, $t0, $t1
	sw $t0, -10460($fp)
	lw $t0, -10460($fp)
	lw $t1, -10452($fp)
	add $t0, $t0, $t1
	sw $t0, -10464($fp)
	lw $t0, -10464($fp)
	lw $t1, 0($t0)
	sw $t1, -10468($fp)
	lw $t0, -10468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -10472($fp)
	li $t0, 8
	sw $t0, -10476($fp)
	li $t0, 4
	lw $t1, -10476($fp)
	mul $t0, $t0, $t1
	sw $t0, -10480($fp)
	lw $t0, -10480($fp)
	lw $t1, -10472($fp)
	add $t0, $t0, $t1
	sw $t0, -10484($fp)
	lw $t0, -10484($fp)
	lw $t1, 0($t0)
	sw $t1, -10488($fp)
	lw $t0, -10488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1272($fp)
	sw $t0, -10492($fp)
	lw $t0, -10492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1284($fp)
	sw $t0, -10496($fp)
	lw $t0, -10496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1296($fp)
	sw $t0, -10500($fp)
	lw $t0, -10500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -10504($fp)
	li $t0, 0
	sw $t0, -10508($fp)
	li $t0, 4
	lw $t1, -10508($fp)
	mul $t0, $t0, $t1
	sw $t0, -10512($fp)
	lw $t0, -10512($fp)
	lw $t1, -10504($fp)
	add $t0, $t0, $t1
	sw $t0, -10516($fp)
	lw $t0, -10516($fp)
	lw $t1, 0($t0)
	sw $t1, -10520($fp)
	lw $t0, -10520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -10524($fp)
	li $t0, 1
	sw $t0, -10528($fp)
	li $t0, 4
	lw $t1, -10528($fp)
	mul $t0, $t0, $t1
	sw $t0, -10532($fp)
	lw $t0, -10532($fp)
	lw $t1, -10524($fp)
	add $t0, $t0, $t1
	sw $t0, -10536($fp)
	lw $t0, -10536($fp)
	lw $t1, 0($t0)
	sw $t1, -10540($fp)
	lw $t0, -10540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -10544($fp)
	li $t0, 2
	sw $t0, -10548($fp)
	li $t0, 4
	lw $t1, -10548($fp)
	mul $t0, $t0, $t1
	sw $t0, -10552($fp)
	lw $t0, -10552($fp)
	lw $t1, -10544($fp)
	add $t0, $t0, $t1
	sw $t0, -10556($fp)
	lw $t0, -10556($fp)
	lw $t1, 0($t0)
	sw $t1, -10560($fp)
	lw $t0, -10560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -10564($fp)
	li $t0, 3
	sw $t0, -10568($fp)
	li $t0, 4
	lw $t1, -10568($fp)
	mul $t0, $t0, $t1
	sw $t0, -10572($fp)
	lw $t0, -10572($fp)
	lw $t1, -10564($fp)
	add $t0, $t0, $t1
	sw $t0, -10576($fp)
	lw $t0, -10576($fp)
	lw $t1, 0($t0)
	sw $t1, -10580($fp)
	lw $t0, -10580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -10584($fp)
	li $t0, 4
	sw $t0, -10588($fp)
	li $t0, 4
	lw $t1, -10588($fp)
	mul $t0, $t0, $t1
	sw $t0, -10592($fp)
	lw $t0, -10592($fp)
	lw $t1, -10584($fp)
	add $t0, $t0, $t1
	sw $t0, -10596($fp)
	lw $t0, -10596($fp)
	lw $t1, 0($t0)
	sw $t1, -10600($fp)
	lw $t0, -10600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1428($fp)
	sw $t0, -10604($fp)
	lw $t0, -10604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1440($fp)
	sw $t0, -10608($fp)
	lw $t0, -10608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1452($fp)
	sw $t0, -10612($fp)
	lw $t0, -10612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1464($fp)
	sw $t0, -10616($fp)
	lw $t0, -10616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1476($fp)
	sw $t0, -10620($fp)
	lw $t0, -10620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1488($fp)
	sw $t0, -10624($fp)
	lw $t0, -10624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1500($fp)
	sw $t0, -10628($fp)
	lw $t0, -10628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1512($fp)
	sw $t0, -10632($fp)
	lw $t0, -10632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1524($fp)
	sw $t0, -10636($fp)
	lw $t0, -10636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1536($fp)
	sw $t0, -10640($fp)
	lw $t0, -10640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1548($fp)
	sw $t0, -10644($fp)
	lw $t0, -10644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1560($fp)
	sw $t0, -10648($fp)
	lw $t0, -10648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -10652($fp)
	li $t0, 0
	sw $t0, -10656($fp)
	li $t0, 4
	lw $t1, -10656($fp)
	mul $t0, $t0, $t1
	sw $t0, -10660($fp)
	lw $t0, -10660($fp)
	lw $t1, -10652($fp)
	add $t0, $t0, $t1
	sw $t0, -10664($fp)
	lw $t0, -10664($fp)
	lw $t1, 0($t0)
	sw $t1, -10668($fp)
	lw $t0, -10668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -10672($fp)
	li $t0, 1
	sw $t0, -10676($fp)
	li $t0, 4
	lw $t1, -10676($fp)
	mul $t0, $t0, $t1
	sw $t0, -10680($fp)
	lw $t0, -10680($fp)
	lw $t1, -10672($fp)
	add $t0, $t0, $t1
	sw $t0, -10684($fp)
	lw $t0, -10684($fp)
	lw $t1, 0($t0)
	sw $t1, -10688($fp)
	lw $t0, -10688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -10692($fp)
	li $t0, 2
	sw $t0, -10696($fp)
	li $t0, 4
	lw $t1, -10696($fp)
	mul $t0, $t0, $t1
	sw $t0, -10700($fp)
	lw $t0, -10700($fp)
	lw $t1, -10692($fp)
	add $t0, $t0, $t1
	sw $t0, -10704($fp)
	lw $t0, -10704($fp)
	lw $t1, 0($t0)
	sw $t1, -10708($fp)
	lw $t0, -10708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -10712($fp)
	li $t0, 3
	sw $t0, -10716($fp)
	li $t0, 4
	lw $t1, -10716($fp)
	mul $t0, $t0, $t1
	sw $t0, -10720($fp)
	lw $t0, -10720($fp)
	lw $t1, -10712($fp)
	add $t0, $t0, $t1
	sw $t0, -10724($fp)
	lw $t0, -10724($fp)
	lw $t1, 0($t0)
	sw $t1, -10728($fp)
	lw $t0, -10728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -10732($fp)
	li $t0, 4
	sw $t0, -10736($fp)
	li $t0, 4
	lw $t1, -10736($fp)
	mul $t0, $t0, $t1
	sw $t0, -10740($fp)
	lw $t0, -10740($fp)
	lw $t1, -10732($fp)
	add $t0, $t0, $t1
	sw $t0, -10744($fp)
	lw $t0, -10744($fp)
	lw $t1, 0($t0)
	sw $t1, -10748($fp)
	lw $t0, -10748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1692($fp)
	sw $t0, -10752($fp)
	lw $t0, -10752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1704($fp)
	sw $t0, -10756($fp)
	lw $t0, -10756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1716($fp)
	sw $t0, -10760($fp)
	lw $t0, -10760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1728($fp)
	sw $t0, -10764($fp)
	lw $t0, -10764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1740($fp)
	sw $t0, -10768($fp)
	lw $t0, -10768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1752($fp)
	sw $t0, -10772($fp)
	lw $t0, -10772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1764($fp)
	sw $t0, -10776($fp)
	lw $t0, -10776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1776($fp)
	sw $t0, -10780($fp)
	lw $t0, -10780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -10784($fp)
	li $t0, 0
	sw $t0, -10788($fp)
	li $t0, 4
	lw $t1, -10788($fp)
	mul $t0, $t0, $t1
	sw $t0, -10792($fp)
	lw $t0, -10792($fp)
	lw $t1, -10784($fp)
	add $t0, $t0, $t1
	sw $t0, -10796($fp)
	lw $t0, -10796($fp)
	lw $t1, 0($t0)
	sw $t1, -10800($fp)
	lw $t0, -10800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -10804($fp)
	li $t0, 1
	sw $t0, -10808($fp)
	li $t0, 4
	lw $t1, -10808($fp)
	mul $t0, $t0, $t1
	sw $t0, -10812($fp)
	lw $t0, -10812($fp)
	lw $t1, -10804($fp)
	add $t0, $t0, $t1
	sw $t0, -10816($fp)
	lw $t0, -10816($fp)
	lw $t1, 0($t0)
	sw $t1, -10820($fp)
	lw $t0, -10820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -10824($fp)
	li $t0, 2
	sw $t0, -10828($fp)
	li $t0, 4
	lw $t1, -10828($fp)
	mul $t0, $t0, $t1
	sw $t0, -10832($fp)
	lw $t0, -10832($fp)
	lw $t1, -10824($fp)
	add $t0, $t0, $t1
	sw $t0, -10836($fp)
	lw $t0, -10836($fp)
	lw $t1, 0($t0)
	sw $t1, -10840($fp)
	lw $t0, -10840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -10844($fp)
	li $t0, 3
	sw $t0, -10848($fp)
	li $t0, 4
	lw $t1, -10848($fp)
	mul $t0, $t0, $t1
	sw $t0, -10852($fp)
	lw $t0, -10852($fp)
	lw $t1, -10844($fp)
	add $t0, $t0, $t1
	sw $t0, -10856($fp)
	lw $t0, -10856($fp)
	lw $t1, 0($t0)
	sw $t1, -10860($fp)
	lw $t0, -10860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -10864($fp)
	li $t0, 4
	sw $t0, -10868($fp)
	li $t0, 4
	lw $t1, -10868($fp)
	mul $t0, $t0, $t1
	sw $t0, -10872($fp)
	lw $t0, -10872($fp)
	lw $t1, -10864($fp)
	add $t0, $t0, $t1
	sw $t0, -10876($fp)
	lw $t0, -10876($fp)
	lw $t1, 0($t0)
	sw $t1, -10880($fp)
	lw $t0, -10880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -10884($fp)
	li $t0, 5
	sw $t0, -10888($fp)
	li $t0, 4
	lw $t1, -10888($fp)
	mul $t0, $t0, $t1
	sw $t0, -10892($fp)
	lw $t0, -10892($fp)
	lw $t1, -10884($fp)
	add $t0, $t0, $t1
	sw $t0, -10896($fp)
	lw $t0, -10896($fp)
	lw $t1, 0($t0)
	sw $t1, -10900($fp)
	lw $t0, -10900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -10904($fp)
	li $t0, 6
	sw $t0, -10908($fp)
	li $t0, 4
	lw $t1, -10908($fp)
	mul $t0, $t0, $t1
	sw $t0, -10912($fp)
	lw $t0, -10912($fp)
	lw $t1, -10904($fp)
	add $t0, $t0, $t1
	sw $t0, -10916($fp)
	lw $t0, -10916($fp)
	lw $t1, 0($t0)
	sw $t1, -10920($fp)
	lw $t0, -10920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1956($fp)
	sw $t0, -10924($fp)
	lw $t0, -10924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1968($fp)
	sw $t0, -10928($fp)
	lw $t0, -10928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1980($fp)
	sw $t0, -10932($fp)
	lw $t0, -10932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1992($fp)
	sw $t0, -10936($fp)
	lw $t0, -10936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -10940($fp)
	li $t0, 0
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
	addi $t0, $fp, -216
	sw $t0, -10960($fp)
	li $t0, 1
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
	addi $t0, $fp, -216
	sw $t0, -10980($fp)
	li $t0, 2
	sw $t0, -10984($fp)
	li $t0, 4
	lw $t1, -10984($fp)
	mul $t0, $t0, $t1
	sw $t0, -10988($fp)
	lw $t0, -10988($fp)
	lw $t1, -10980($fp)
	add $t0, $t0, $t1
	sw $t0, -10992($fp)
	lw $t0, -10992($fp)
	lw $t1, 0($t0)
	sw $t1, -10996($fp)
	lw $t0, -10996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -11000($fp)
	li $t0, 3
	sw $t0, -11004($fp)
	li $t0, 4
	lw $t1, -11004($fp)
	mul $t0, $t0, $t1
	sw $t0, -11008($fp)
	lw $t0, -11008($fp)
	lw $t1, -11000($fp)
	add $t0, $t0, $t1
	sw $t0, -11012($fp)
	lw $t0, -11012($fp)
	lw $t1, 0($t0)
	sw $t1, -11016($fp)
	lw $t0, -11016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -11020($fp)
	li $t0, 4
	sw $t0, -11024($fp)
	li $t0, 4
	lw $t1, -11024($fp)
	mul $t0, $t0, $t1
	sw $t0, -11028($fp)
	lw $t0, -11028($fp)
	lw $t1, -11020($fp)
	add $t0, $t0, $t1
	sw $t0, -11032($fp)
	lw $t0, -11032($fp)
	lw $t1, 0($t0)
	sw $t1, -11036($fp)
	lw $t0, -11036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -11040($fp)
	li $t0, 5
	sw $t0, -11044($fp)
	li $t0, 4
	lw $t1, -11044($fp)
	mul $t0, $t0, $t1
	sw $t0, -11048($fp)
	lw $t0, -11048($fp)
	lw $t1, -11040($fp)
	add $t0, $t0, $t1
	sw $t0, -11052($fp)
	lw $t0, -11052($fp)
	lw $t1, 0($t0)
	sw $t1, -11056($fp)
	lw $t0, -11056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -11060($fp)
	li $t0, 6
	sw $t0, -11064($fp)
	li $t0, 4
	lw $t1, -11064($fp)
	mul $t0, $t0, $t1
	sw $t0, -11068($fp)
	lw $t0, -11068($fp)
	lw $t1, -11060($fp)
	add $t0, $t0, $t1
	sw $t0, -11072($fp)
	lw $t0, -11072($fp)
	lw $t1, 0($t0)
	sw $t1, -11076($fp)
	lw $t0, -11076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -11080($fp)
	li $t0, 7
	sw $t0, -11084($fp)
	li $t0, 4
	lw $t1, -11084($fp)
	mul $t0, $t0, $t1
	sw $t0, -11088($fp)
	lw $t0, -11088($fp)
	lw $t1, -11080($fp)
	add $t0, $t0, $t1
	sw $t0, -11092($fp)
	lw $t0, -11092($fp)
	lw $t1, 0($t0)
	sw $t1, -11096($fp)
	lw $t0, -11096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -216
	sw $t0, -11100($fp)
	li $t0, 8
	sw $t0, -11104($fp)
	li $t0, 4
	lw $t1, -11104($fp)
	mul $t0, $t0, $t1
	sw $t0, -11108($fp)
	lw $t0, -11108($fp)
	lw $t1, -11100($fp)
	add $t0, $t0, $t1
	sw $t0, -11112($fp)
	lw $t0, -11112($fp)
	lw $t1, 0($t0)
	sw $t1, -11116($fp)
	lw $t0, -11116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2220($fp)
	sw $t0, -11120($fp)
	lw $t0, -11120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -256
	sw $t0, -11124($fp)
	li $t0, 0
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
	addi $t0, $fp, -256
	sw $t0, -11144($fp)
	li $t0, 1
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
	addi $t0, $fp, -256
	sw $t0, -11164($fp)
	li $t0, 2
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
	addi $t0, $fp, -256
	sw $t0, -11184($fp)
	li $t0, 3
	sw $t0, -11188($fp)
	li $t0, 4
	lw $t1, -11188($fp)
	mul $t0, $t0, $t1
	sw $t0, -11192($fp)
	lw $t0, -11192($fp)
	lw $t1, -11184($fp)
	add $t0, $t0, $t1
	sw $t0, -11196($fp)
	lw $t0, -11196($fp)
	lw $t1, 0($t0)
	sw $t1, -11200($fp)
	lw $t0, -11200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -256
	sw $t0, -11204($fp)
	li $t0, 4
	sw $t0, -11208($fp)
	li $t0, 4
	lw $t1, -11208($fp)
	mul $t0, $t0, $t1
	sw $t0, -11212($fp)
	lw $t0, -11212($fp)
	lw $t1, -11204($fp)
	add $t0, $t0, $t1
	sw $t0, -11216($fp)
	lw $t0, -11216($fp)
	lw $t1, 0($t0)
	sw $t1, -11220($fp)
	lw $t0, -11220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -256
	sw $t0, -11224($fp)
	li $t0, 5
	sw $t0, -11228($fp)
	li $t0, 4
	lw $t1, -11228($fp)
	mul $t0, $t0, $t1
	sw $t0, -11232($fp)
	lw $t0, -11232($fp)
	lw $t1, -11224($fp)
	add $t0, $t0, $t1
	sw $t0, -11236($fp)
	lw $t0, -11236($fp)
	lw $t1, 0($t0)
	sw $t1, -11240($fp)
	lw $t0, -11240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -256
	sw $t0, -11244($fp)
	li $t0, 6
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
	lw $t0, -11260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -256
	sw $t0, -11264($fp)
	li $t0, 7
	sw $t0, -11268($fp)
	li $t0, 4
	lw $t1, -11268($fp)
	mul $t0, $t0, $t1
	sw $t0, -11272($fp)
	lw $t0, -11272($fp)
	lw $t1, -11264($fp)
	add $t0, $t0, $t1
	sw $t0, -11276($fp)
	lw $t0, -11276($fp)
	lw $t1, 0($t0)
	sw $t1, -11280($fp)
	lw $t0, -11280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -256
	sw $t0, -11284($fp)
	li $t0, 8
	sw $t0, -11288($fp)
	li $t0, 4
	lw $t1, -11288($fp)
	mul $t0, $t0, $t1
	sw $t0, -11292($fp)
	lw $t0, -11292($fp)
	lw $t1, -11284($fp)
	add $t0, $t0, $t1
	sw $t0, -11296($fp)
	lw $t0, -11296($fp)
	lw $t1, 0($t0)
	sw $t1, -11300($fp)
	lw $t0, -11300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -256
	sw $t0, -11304($fp)
	li $t0, 9
	sw $t0, -11308($fp)
	li $t0, 4
	lw $t1, -11308($fp)
	mul $t0, $t0, $t1
	sw $t0, -11312($fp)
	lw $t0, -11312($fp)
	lw $t1, -11304($fp)
	add $t0, $t0, $t1
	sw $t0, -11316($fp)
	lw $t0, -11316($fp)
	lw $t1, 0($t0)
	sw $t1, -11320($fp)
	lw $t0, -11320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2472($fp)
	sw $t0, -11324($fp)
	lw $t0, -11324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2484($fp)
	sw $t0, -11328($fp)
	lw $t0, -11328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2496($fp)
	sw $t0, -11332($fp)
	lw $t0, -11332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2508($fp)
	sw $t0, -11336($fp)
	lw $t0, -11336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2520($fp)
	sw $t0, -11340($fp)
	lw $t0, -11340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2532($fp)
	sw $t0, -11344($fp)
	lw $t0, -11344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2544($fp)
	sw $t0, -11348($fp)
	lw $t0, -11348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -292
	sw $t0, -11352($fp)
	li $t0, 0
	sw $t0, -11356($fp)
	li $t0, 4
	lw $t1, -11356($fp)
	mul $t0, $t0, $t1
	sw $t0, -11360($fp)
	lw $t0, -11360($fp)
	lw $t1, -11352($fp)
	add $t0, $t0, $t1
	sw $t0, -11364($fp)
	lw $t0, -11364($fp)
	lw $t1, 0($t0)
	sw $t1, -11368($fp)
	lw $t0, -11368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -292
	sw $t0, -11372($fp)
	li $t0, 1
	sw $t0, -11376($fp)
	li $t0, 4
	lw $t1, -11376($fp)
	mul $t0, $t0, $t1
	sw $t0, -11380($fp)
	lw $t0, -11380($fp)
	lw $t1, -11372($fp)
	add $t0, $t0, $t1
	sw $t0, -11384($fp)
	lw $t0, -11384($fp)
	lw $t1, 0($t0)
	sw $t1, -11388($fp)
	lw $t0, -11388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -292
	sw $t0, -11392($fp)
	li $t0, 2
	sw $t0, -11396($fp)
	li $t0, 4
	lw $t1, -11396($fp)
	mul $t0, $t0, $t1
	sw $t0, -11400($fp)
	lw $t0, -11400($fp)
	lw $t1, -11392($fp)
	add $t0, $t0, $t1
	sw $t0, -11404($fp)
	lw $t0, -11404($fp)
	lw $t1, 0($t0)
	sw $t1, -11408($fp)
	lw $t0, -11408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -292
	sw $t0, -11412($fp)
	li $t0, 3
	sw $t0, -11416($fp)
	li $t0, 4
	lw $t1, -11416($fp)
	mul $t0, $t0, $t1
	sw $t0, -11420($fp)
	lw $t0, -11420($fp)
	lw $t1, -11412($fp)
	add $t0, $t0, $t1
	sw $t0, -11424($fp)
	lw $t0, -11424($fp)
	lw $t1, 0($t0)
	sw $t1, -11428($fp)
	lw $t0, -11428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -292
	sw $t0, -11432($fp)
	li $t0, 4
	sw $t0, -11436($fp)
	li $t0, 4
	lw $t1, -11436($fp)
	mul $t0, $t0, $t1
	sw $t0, -11440($fp)
	lw $t0, -11440($fp)
	lw $t1, -11432($fp)
	add $t0, $t0, $t1
	sw $t0, -11444($fp)
	lw $t0, -11444($fp)
	lw $t1, 0($t0)
	sw $t1, -11448($fp)
	lw $t0, -11448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -292
	sw $t0, -11452($fp)
	li $t0, 5
	sw $t0, -11456($fp)
	li $t0, 4
	lw $t1, -11456($fp)
	mul $t0, $t0, $t1
	sw $t0, -11460($fp)
	lw $t0, -11460($fp)
	lw $t1, -11452($fp)
	add $t0, $t0, $t1
	sw $t0, -11464($fp)
	lw $t0, -11464($fp)
	lw $t1, 0($t0)
	sw $t1, -11468($fp)
	lw $t0, -11468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -292
	sw $t0, -11472($fp)
	li $t0, 6
	sw $t0, -11476($fp)
	li $t0, 4
	lw $t1, -11476($fp)
	mul $t0, $t0, $t1
	sw $t0, -11480($fp)
	lw $t0, -11480($fp)
	lw $t1, -11472($fp)
	add $t0, $t0, $t1
	sw $t0, -11484($fp)
	lw $t0, -11484($fp)
	lw $t1, 0($t0)
	sw $t1, -11488($fp)
	lw $t0, -11488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -292
	sw $t0, -11492($fp)
	li $t0, 7
	sw $t0, -11496($fp)
	li $t0, 4
	lw $t1, -11496($fp)
	mul $t0, $t0, $t1
	sw $t0, -11500($fp)
	lw $t0, -11500($fp)
	lw $t1, -11492($fp)
	add $t0, $t0, $t1
	sw $t0, -11504($fp)
	lw $t0, -11504($fp)
	lw $t1, 0($t0)
	sw $t1, -11508($fp)
	lw $t0, -11508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -292
	sw $t0, -11512($fp)
	li $t0, 8
	sw $t0, -11516($fp)
	li $t0, 4
	lw $t1, -11516($fp)
	mul $t0, $t0, $t1
	sw $t0, -11520($fp)
	lw $t0, -11520($fp)
	lw $t1, -11512($fp)
	add $t0, $t0, $t1
	sw $t0, -11524($fp)
	lw $t0, -11524($fp)
	lw $t1, 0($t0)
	sw $t1, -11528($fp)
	lw $t0, -11528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2772($fp)
	sw $t0, -11532($fp)
	lw $t0, -11532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2784($fp)
	sw $t0, -11536($fp)
	lw $t0, -11536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -328
	sw $t0, -11540($fp)
	li $t0, 0
	sw $t0, -11544($fp)
	li $t0, 4
	lw $t1, -11544($fp)
	mul $t0, $t0, $t1
	sw $t0, -11548($fp)
	lw $t0, -11548($fp)
	lw $t1, -11540($fp)
	add $t0, $t0, $t1
	sw $t0, -11552($fp)
	lw $t0, -11552($fp)
	lw $t1, 0($t0)
	sw $t1, -11556($fp)
	lw $t0, -11556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -328
	sw $t0, -11560($fp)
	li $t0, 1
	sw $t0, -11564($fp)
	li $t0, 4
	lw $t1, -11564($fp)
	mul $t0, $t0, $t1
	sw $t0, -11568($fp)
	lw $t0, -11568($fp)
	lw $t1, -11560($fp)
	add $t0, $t0, $t1
	sw $t0, -11572($fp)
	lw $t0, -11572($fp)
	lw $t1, 0($t0)
	sw $t1, -11576($fp)
	lw $t0, -11576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -328
	sw $t0, -11580($fp)
	li $t0, 2
	sw $t0, -11584($fp)
	li $t0, 4
	lw $t1, -11584($fp)
	mul $t0, $t0, $t1
	sw $t0, -11588($fp)
	lw $t0, -11588($fp)
	lw $t1, -11580($fp)
	add $t0, $t0, $t1
	sw $t0, -11592($fp)
	lw $t0, -11592($fp)
	lw $t1, 0($t0)
	sw $t1, -11596($fp)
	lw $t0, -11596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -328
	sw $t0, -11600($fp)
	li $t0, 3
	sw $t0, -11604($fp)
	li $t0, 4
	lw $t1, -11604($fp)
	mul $t0, $t0, $t1
	sw $t0, -11608($fp)
	lw $t0, -11608($fp)
	lw $t1, -11600($fp)
	add $t0, $t0, $t1
	sw $t0, -11612($fp)
	lw $t0, -11612($fp)
	lw $t1, 0($t0)
	sw $t1, -11616($fp)
	lw $t0, -11616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -328
	sw $t0, -11620($fp)
	li $t0, 4
	sw $t0, -11624($fp)
	li $t0, 4
	lw $t1, -11624($fp)
	mul $t0, $t0, $t1
	sw $t0, -11628($fp)
	lw $t0, -11628($fp)
	lw $t1, -11620($fp)
	add $t0, $t0, $t1
	sw $t0, -11632($fp)
	lw $t0, -11632($fp)
	lw $t1, 0($t0)
	sw $t1, -11636($fp)
	lw $t0, -11636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -328
	sw $t0, -11640($fp)
	li $t0, 5
	sw $t0, -11644($fp)
	li $t0, 4
	lw $t1, -11644($fp)
	mul $t0, $t0, $t1
	sw $t0, -11648($fp)
	lw $t0, -11648($fp)
	lw $t1, -11640($fp)
	add $t0, $t0, $t1
	sw $t0, -11652($fp)
	lw $t0, -11652($fp)
	lw $t1, 0($t0)
	sw $t1, -11656($fp)
	lw $t0, -11656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -328
	sw $t0, -11660($fp)
	li $t0, 6
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
	addi $t0, $fp, -328
	sw $t0, -11680($fp)
	li $t0, 7
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
	addi $t0, $fp, -328
	sw $t0, -11700($fp)
	li $t0, 8
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
	addi $t0, $fp, -368
	sw $t0, -11720($fp)
	li $t0, 0
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
	addi $t0, $fp, -368
	sw $t0, -11740($fp)
	li $t0, 1
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
	addi $t0, $fp, -368
	sw $t0, -11760($fp)
	li $t0, 2
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
	addi $t0, $fp, -368
	sw $t0, -11780($fp)
	li $t0, 3
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
	addi $t0, $fp, -368
	sw $t0, -11800($fp)
	li $t0, 4
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
	addi $t0, $fp, -368
	sw $t0, -11820($fp)
	li $t0, 5
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
	addi $t0, $fp, -368
	sw $t0, -11840($fp)
	li $t0, 6
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
	addi $t0, $fp, -368
	sw $t0, -11860($fp)
	li $t0, 7
	sw $t0, -11864($fp)
	li $t0, 4
	lw $t1, -11864($fp)
	mul $t0, $t0, $t1
	sw $t0, -11868($fp)
	lw $t0, -11868($fp)
	lw $t1, -11860($fp)
	add $t0, $t0, $t1
	sw $t0, -11872($fp)
	lw $t0, -11872($fp)
	lw $t1, 0($t0)
	sw $t1, -11876($fp)
	lw $t0, -11876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -368
	sw $t0, -11880($fp)
	li $t0, 8
	sw $t0, -11884($fp)
	li $t0, 4
	lw $t1, -11884($fp)
	mul $t0, $t0, $t1
	sw $t0, -11888($fp)
	lw $t0, -11888($fp)
	lw $t1, -11880($fp)
	add $t0, $t0, $t1
	sw $t0, -11892($fp)
	lw $t0, -11892($fp)
	lw $t1, 0($t0)
	sw $t1, -11896($fp)
	lw $t0, -11896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -368
	sw $t0, -11900($fp)
	li $t0, 9
	sw $t0, -11904($fp)
	li $t0, 4
	lw $t1, -11904($fp)
	mul $t0, $t0, $t1
	sw $t0, -11908($fp)
	lw $t0, -11908($fp)
	lw $t1, -11900($fp)
	add $t0, $t0, $t1
	sw $t0, -11912($fp)
	lw $t0, -11912($fp)
	lw $t1, 0($t0)
	sw $t1, -11916($fp)
	lw $t0, -11916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3252($fp)
	sw $t0, -11920($fp)
	lw $t0, -11920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3264($fp)
	sw $t0, -11924($fp)
	lw $t0, -11924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3276($fp)
	sw $t0, -11928($fp)
	lw $t0, -11928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3288($fp)
	sw $t0, -11932($fp)
	lw $t0, -11932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3300($fp)
	sw $t0, -11936($fp)
	lw $t0, -11936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -388
	sw $t0, -11940($fp)
	li $t0, 0
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
	lw $t0, -11956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -388
	sw $t0, -11960($fp)
	li $t0, 1
	sw $t0, -11964($fp)
	li $t0, 4
	lw $t1, -11964($fp)
	mul $t0, $t0, $t1
	sw $t0, -11968($fp)
	lw $t0, -11968($fp)
	lw $t1, -11960($fp)
	add $t0, $t0, $t1
	sw $t0, -11972($fp)
	lw $t0, -11972($fp)
	lw $t1, 0($t0)
	sw $t1, -11976($fp)
	lw $t0, -11976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -388
	sw $t0, -11980($fp)
	li $t0, 2
	sw $t0, -11984($fp)
	li $t0, 4
	lw $t1, -11984($fp)
	mul $t0, $t0, $t1
	sw $t0, -11988($fp)
	lw $t0, -11988($fp)
	lw $t1, -11980($fp)
	add $t0, $t0, $t1
	sw $t0, -11992($fp)
	lw $t0, -11992($fp)
	lw $t1, 0($t0)
	sw $t1, -11996($fp)
	lw $t0, -11996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -388
	sw $t0, -12000($fp)
	li $t0, 3
	sw $t0, -12004($fp)
	li $t0, 4
	lw $t1, -12004($fp)
	mul $t0, $t0, $t1
	sw $t0, -12008($fp)
	lw $t0, -12008($fp)
	lw $t1, -12000($fp)
	add $t0, $t0, $t1
	sw $t0, -12012($fp)
	lw $t0, -12012($fp)
	lw $t1, 0($t0)
	sw $t1, -12016($fp)
	lw $t0, -12016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -388
	sw $t0, -12020($fp)
	li $t0, 4
	sw $t0, -12024($fp)
	li $t0, 4
	lw $t1, -12024($fp)
	mul $t0, $t0, $t1
	sw $t0, -12028($fp)
	lw $t0, -12028($fp)
	lw $t1, -12020($fp)
	add $t0, $t0, $t1
	sw $t0, -12032($fp)
	lw $t0, -12032($fp)
	lw $t1, 0($t0)
	sw $t1, -12036($fp)
	lw $t0, -12036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3432($fp)
	sw $t0, -12040($fp)
	lw $t0, -12040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3444($fp)
	sw $t0, -12044($fp)
	lw $t0, -12044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3456($fp)
	sw $t0, -12048($fp)
	lw $t0, -12048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3468($fp)
	sw $t0, -12052($fp)
	lw $t0, -12052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3480($fp)
	sw $t0, -12056($fp)
	lw $t0, -12056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -392
	sw $t0, -12060($fp)
	li $t0, 0
	sw $t0, -12064($fp)
	li $t0, 4
	lw $t1, -12064($fp)
	mul $t0, $t0, $t1
	sw $t0, -12068($fp)
	lw $t0, -12068($fp)
	lw $t1, -12060($fp)
	add $t0, $t0, $t1
	sw $t0, -12072($fp)
	lw $t0, -12072($fp)
	lw $t1, 0($t0)
	sw $t1, -12076($fp)
	lw $t0, -12076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3516($fp)
	sw $t0, -12080($fp)
	lw $t0, -12080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3528($fp)
	sw $t0, -12084($fp)
	lw $t0, -12084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3540($fp)
	sw $t0, -12088($fp)
	lw $t0, -12088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -412
	sw $t0, -12092($fp)
	li $t0, 0
	sw $t0, -12096($fp)
	li $t0, 4
	lw $t1, -12096($fp)
	mul $t0, $t0, $t1
	sw $t0, -12100($fp)
	lw $t0, -12100($fp)
	lw $t1, -12092($fp)
	add $t0, $t0, $t1
	sw $t0, -12104($fp)
	lw $t0, -12104($fp)
	lw $t1, 0($t0)
	sw $t1, -12108($fp)
	lw $t0, -12108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -412
	sw $t0, -12112($fp)
	li $t0, 1
	sw $t0, -12116($fp)
	li $t0, 4
	lw $t1, -12116($fp)
	mul $t0, $t0, $t1
	sw $t0, -12120($fp)
	lw $t0, -12120($fp)
	lw $t1, -12112($fp)
	add $t0, $t0, $t1
	sw $t0, -12124($fp)
	lw $t0, -12124($fp)
	lw $t1, 0($t0)
	sw $t1, -12128($fp)
	lw $t0, -12128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -412
	sw $t0, -12132($fp)
	li $t0, 2
	sw $t0, -12136($fp)
	li $t0, 4
	lw $t1, -12136($fp)
	mul $t0, $t0, $t1
	sw $t0, -12140($fp)
	lw $t0, -12140($fp)
	lw $t1, -12132($fp)
	add $t0, $t0, $t1
	sw $t0, -12144($fp)
	lw $t0, -12144($fp)
	lw $t1, 0($t0)
	sw $t1, -12148($fp)
	lw $t0, -12148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -412
	sw $t0, -12152($fp)
	li $t0, 3
	sw $t0, -12156($fp)
	li $t0, 4
	lw $t1, -12156($fp)
	mul $t0, $t0, $t1
	sw $t0, -12160($fp)
	lw $t0, -12160($fp)
	lw $t1, -12152($fp)
	add $t0, $t0, $t1
	sw $t0, -12164($fp)
	lw $t0, -12164($fp)
	lw $t1, 0($t0)
	sw $t1, -12168($fp)
	lw $t0, -12168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -412
	sw $t0, -12172($fp)
	li $t0, 4
	sw $t0, -12176($fp)
	li $t0, 4
	lw $t1, -12176($fp)
	mul $t0, $t0, $t1
	sw $t0, -12180($fp)
	lw $t0, -12180($fp)
	lw $t1, -12172($fp)
	add $t0, $t0, $t1
	sw $t0, -12184($fp)
	lw $t0, -12184($fp)
	lw $t1, 0($t0)
	sw $t1, -12188($fp)
	lw $t0, -12188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -12192($fp)
	lw $t0, -1272($fp)
	sw $t0, -12196($fp)
	lw $t1, -12196($fp)
	li $t2, 0
	bne $t1, $t2, label650
	j label649
label649:
	li $t0, 1
	sw $t0, -12192($fp)
label650:
	li $t0, 0
	lw $t1, -12192($fp)
	sub $t0, $t0, $t1
	sw $t0, -12200($fp)
	lw $ra, -4($fp)
	lw $v0, -12200($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -512
	li $t0, 56189
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	li $t0, 9136
	sw $t0, -52($fp)
	addi $t0, $fp, -36
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
	li $t0, 46435
	sw $t0, -76($fp)
	addi $t0, $fp, -36
	sw $t0, -80($fp)
	li $t0, 1
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
	li $t0, 56990
	sw $t0, -100($fp)
	addi $t0, $fp, -36
	sw $t0, -104($fp)
	li $t0, 2
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
	li $t0, 58983
	sw $t0, -124($fp)
	addi $t0, $fp, -36
	sw $t0, -128($fp)
	li $t0, 3
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
	li $t0, 45830
	sw $t0, -148($fp)
	addi $t0, $fp, -36
	sw $t0, -152($fp)
	li $t0, 4
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
	li $t0, 32590
	sw $t0, -172($fp)
	addi $t0, $fp, -36
	sw $t0, -176($fp)
	li $t0, 5
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
	li $t0, 26590
	sw $t0, -196($fp)
	addi $t0, $fp, -36
	sw $t0, -200($fp)
	li $t0, 6
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
	li $t0, 28576
	sw $t0, -220($fp)
	addi $t0, $fp, -36
	sw $t0, -224($fp)
	li $t0, 7
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
	li $t0, 46760
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	li $t0, 49985
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	lw $t0, -44($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -272($fp)
	addi $t0, $fp, -36
	sw $t0, -276($fp)
	li $t0, 6
	sw $t0, -280($fp)
	li $t0, 4
	lw $t1, -280($fp)
	mul $t0, $t0, $t1
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	lw $t1, -276($fp)
	add $t0, $t0, $t1
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	lw $t1, 0($t0)
	sw $t1, -292($fp)
	li $t0, 48928
	sw $t0, -296($fp)
	lw $t0, -44($fp)
	sw $t0, -300($fp)
	lw $t0, -296($fp)
	lw $t1, -300($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -304($fp)
	li $t0, 27438
	sw $t0, -308($fp)
	lw $t0, -304($fp)
	lw $t1, -308($fp)
	sub $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t0, -44($fp)
	sw $t0, -316($fp)
	li $t0, 21393
	sw $t0, -320($fp)
	lw $t0, -316($fp)
	lw $t1, -320($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -324($fp)
	li $t0, 0
	lw $t1, -324($fp)
	sub $t0, $t0, $t1
	sw $t0, -328($fp)
	li $t0, 22275
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -336($fp)
	addi $sp, $sp, -4
	lw $t0, -272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -336($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -340($fp)
	addi $sp, $sp, 24
	lw $t0, -44($fp)
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -348($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -368($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -388($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -408($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -428($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -448($fp)
	li $t0, 5
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
	addi $t0, $fp, -36
	sw $t0, -468($fp)
	li $t0, 6
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
	addi $t0, $fp, -36
	sw $t0, -488($fp)
	li $t0, 7
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
	lw $t0, -248($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -260($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 42202
	sw $t0, -516($fp)
	lw $ra, -4($fp)
	lw $v0, -516($fp)
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
