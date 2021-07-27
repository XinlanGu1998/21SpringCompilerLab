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
	addi $sp, $sp, -2108
	li $t0, 56452
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 5344
	sw $t0, -32($fp)
	addi $t0, $fp, -16
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
	li $t0, 42742
	sw $t0, -56($fp)
	addi $t0, $fp, -16
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
	li $t0, 61207
	sw $t0, -80($fp)
	addi $t0, $fp, -16
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
	li $t0, 53802
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	li $t0, 19541
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	li $t0, 53016
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	li $t0, 20299
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	li $t0, 20383
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	li $t0, 59532
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	li $t0, 19668
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 0
	sw $t0, -188($fp)
	li $t0, 0
	sw $t0, -192($fp)
	lw $t0, -108($fp)
	sw $t0, -196($fp)
	lw $t0, -180($fp)
	sw $t0, -200($fp)
	lw $t0, -196($fp)
	lw $t1, -200($fp)
	add $t0, $t0, $t1
	sw $t0, -204($fp)
	lw $t0, -144($fp)
	sw $t0, -208($fp)
	lw $t1, -204($fp)
	lw $t2, -208($fp)
	ble $t1, $t2, label126
	j label127
label126:
	li $t0, 1
	sw $t0, -192($fp)
label127:
	lw $t0, -120($fp)
	sw $t0, -212($fp)
	lw $t1, -192($fp)
	lw $t2, -212($fp)
	bgt $t1, $t2, label124
	j label125
label124:
	li $t0, 1
	sw $t0, -188($fp)
label125:
	lw $t0, -188($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -216($fp)
	lw $t1, -216($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
	li $t0, 58973
	sw $t0, -288($fp)
	addi $t0, $fp, -256
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
	li $t0, 58799
	sw $t0, -312($fp)
	addi $t0, $fp, -256
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
	li $t0, 23043
	sw $t0, -336($fp)
	addi $t0, $fp, -256
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
	li $t0, 18146
	sw $t0, -360($fp)
	addi $t0, $fp, -256
	sw $t0, -364($fp)
	li $t0, 3
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
	li $t0, 4876
	sw $t0, -384($fp)
	addi $t0, $fp, -256
	sw $t0, -388($fp)
	li $t0, 4
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
	li $t0, 23214
	sw $t0, -408($fp)
	addi $t0, $fp, -256
	sw $t0, -412($fp)
	li $t0, 5
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
	li $t0, 16018
	sw $t0, -432($fp)
	addi $t0, $fp, -256
	sw $t0, -436($fp)
	li $t0, 6
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
	li $t0, 13060
	sw $t0, -456($fp)
	addi $t0, $fp, -256
	sw $t0, -460($fp)
	li $t0, 7
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
	li $t0, 31766
	sw $t0, -480($fp)
	addi $t0, $fp, -256
	sw $t0, -484($fp)
	li $t0, 8
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
	li $t0, 34322
	sw $t0, -504($fp)
	addi $t0, $fp, -256
	sw $t0, -508($fp)
	li $t0, 9
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
	li $t0, 35904
	sw $t0, -528($fp)
	addi $t0, $fp, -284
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
	li $t0, 18356
	sw $t0, -552($fp)
	addi $t0, $fp, -284
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
	li $t0, 54458
	sw $t0, -576($fp)
	addi $t0, $fp, -284
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
	li $t0, 16078
	sw $t0, -600($fp)
	addi $t0, $fp, -284
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
	li $t0, 52175
	sw $t0, -624($fp)
	addi $t0, $fp, -284
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
	li $t0, 45928
	sw $t0, -648($fp)
	addi $t0, $fp, -284
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
	li $t0, 6005
	sw $t0, -672($fp)
	addi $t0, $fp, -284
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
label128:
	addi $t0, $fp, -284
	sw $t0, -696($fp)
	li $t0, 0
	sw $t0, -700($fp)
	lw $t0, -144($fp)
	sw $t0, -704($fp)
	lw $t0, 4($fp)
	sw $t0, -708($fp)
	lw $t0, -704($fp)
	lw $t1, -708($fp)
	sub $t0, $t0, $t1
	sw $t0, -712($fp)
	lw $t0, -24($fp)
	sw $t0, -716($fp)
	lw $t1, -712($fp)
	lw $t2, -716($fp)
	bne $t1, $t2, label131
	j label132
label131:
	li $t0, 1
	sw $t0, -700($fp)
label132:
	li $t0, 4
	lw $t1, -700($fp)
	mul $t0, $t0, $t1
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	lw $t1, -696($fp)
	add $t0, $t0, $t1
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	lw $t1, 0($t0)
	sw $t1, -728($fp)
	li $t0, 0
	sw $t0, -732($fp)
	addi $t0, $fp, -256
	sw $t0, -736($fp)
	lw $t0, -24($fp)
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
	lw $t1, -752($fp)
	li $t2, 0
	bne $t1, $t2, label133
	j label134
label133:
	li $t0, 1
	sw $t0, -732($fp)
label134:
	lw $t1, -728($fp)
	lw $t2, -732($fp)
	beq $t1, $t2, label129
	j label130
label129:
	li $t0, 46217
	sw $t0, -816($fp)
	addi $t0, $fp, -788
	sw $t0, -820($fp)
	li $t0, 0
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
	li $t0, 15221
	sw $t0, -840($fp)
	addi $t0, $fp, -788
	sw $t0, -844($fp)
	li $t0, 1
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
	li $t0, 44356
	sw $t0, -864($fp)
	addi $t0, $fp, -788
	sw $t0, -868($fp)
	li $t0, 2
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
	li $t0, 37133
	sw $t0, -888($fp)
	addi $t0, $fp, -788
	sw $t0, -892($fp)
	li $t0, 3
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
	li $t0, 20566
	sw $t0, -912($fp)
	addi $t0, $fp, -788
	sw $t0, -916($fp)
	li $t0, 4
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
	li $t0, 21562
	sw $t0, -936($fp)
	addi $t0, $fp, -788
	sw $t0, -940($fp)
	li $t0, 5
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
	li $t0, 32804
	sw $t0, -960($fp)
	addi $t0, $fp, -788
	sw $t0, -964($fp)
	li $t0, 6
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
	li $t0, 8832
	sw $t0, -984($fp)
	addi $t0, $fp, -788
	sw $t0, -988($fp)
	li $t0, 7
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
	li $t0, 41103
	sw $t0, -1008($fp)
	addi $t0, $fp, -788
	sw $t0, -1012($fp)
	li $t0, 8
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
	li $t0, 20284
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -1040($fp)
	li $t0, 29132
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	li $t0, 61486
	sw $t0, -1056($fp)
	addi $t0, $fp, -812
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
	li $t0, 14280
	sw $t0, -1080($fp)
	addi $t0, $fp, -812
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
	li $t0, 48800
	sw $t0, -1104($fp)
	addi $t0, $fp, -812
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
	li $t0, 54923
	sw $t0, -1128($fp)
	addi $t0, $fp, -812
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
	li $t0, 7544
	sw $t0, -1152($fp)
	addi $t0, $fp, -812
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
	li $t0, 6307
	sw $t0, -1176($fp)
	addi $t0, $fp, -812
	sw $t0, -1180($fp)
	li $t0, 5
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
	li $t0, 7533
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -1208($fp)
	li $t0, 0
	sw $t0, -1212($fp)
	lw $t0, -1036($fp)
	sw $t0, -1216($fp)
	li $t0, 0
	sw $t0, -1220($fp)
	addi $t0, $fp, -788
	sw $t0, -1224($fp)
	li $t0, 5
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
	li $t0, 0
	sw $t0, -1244($fp)
	li $t0, 23551
	sw $t0, -1248($fp)
	lw $t0, 8($fp)
	sw $t0, -1252($fp)
	lw $t1, -1248($fp)
	lw $t2, -1252($fp)
	beq $t1, $t2, label139
	j label141
label141:
	lw $t0, 4($fp)
	sw $t0, -1256($fp)
	lw $t1, -1256($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label140
label139:
	li $t0, 1
	sw $t0, -1244($fp)
label140:
	lw $t0, 4($fp)
	sw $t0, -1260($fp)
	lw $t0, -108($fp)
	sw $t0, -1264($fp)
	lw $t0, -1260($fp)
	lw $t1, -1264($fp)
	mul $t0, $t0, $t1
	sw $t0, -1268($fp)
	lw $t0, -120($fp)
	sw $t0, -1272($fp)
	lw $t0, -1268($fp)
	lw $t1, -1272($fp)
	sub $t0, $t0, $t1
	sw $t0, -1276($fp)
	lw $t0, -24($fp)
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -1284($fp)
	addi $t0, $fp, -284
	sw $t0, -1288($fp)
	li $t0, 5
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
	lw $t0, -1240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1304($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1308($fp)
	addi $sp, $sp, 24
	lw $t1, -1308($fp)
	li $t2, 0
	bne $t1, $t2, label138
	j label137
label137:
	li $t0, 1
	sw $t0, -1220($fp)
label138:
	lw $t0, -132($fp)
	sw $t0, -1312($fp)
	lw $t0, -1220($fp)
	lw $t1, -1312($fp)
	mul $t0, $t0, $t1
	sw $t0, -1316($fp)
	lw $t1, -1216($fp)
	lw $t2, -1316($fp)
	bge $t1, $t2, label135
	j label136
label135:
	li $t0, 1
	sw $t0, -1212($fp)
label136:
	addi $t0, $fp, -16
	sw $t0, -1320($fp)
	li $t0, 2
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
	li $t0, 0
	lw $t1, -1336($fp)
	sub $t0, $t0, $t1
	sw $t0, -1340($fp)
	lw $t0, -132($fp)
	sw $t0, -1344($fp)
	lw $t1, -1340($fp)
	lw $t2, -1344($fp)
	beq $t1, $t2, label145
	j label143
label145:
	li $t0, 0
	sw $t0, -1348($fp)
	li $t0, 14108
	sw $t0, -1352($fp)
	lw $t1, -1352($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label146
label146:
	li $t0, 1
	sw $t0, -1348($fp)
label147:
	lw $t0, -1204($fp)
	sw $t0, -1356($fp)
	lw $t0, -1348($fp)
	lw $t1, -1356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1360($fp)
	li $t0, 46796
	sw $t0, -1364($fp)
	lw $t0, -144($fp)
	sw $t0, -1368($fp)
	lw $t0, -1364($fp)
	lw $t1, -1368($fp)
	mul $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $t1, -1360($fp)
	lw $t2, -1372($fp)
	ble $t1, $t2, label142
	j label143
label142:
	li $t0, 11926
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -1384($fp)
	li $t0, 747
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	sw $t0, -1396($fp)
	lw $t0, -156($fp)
	sw $t0, -1400($fp)
	addi $t0, $fp, -16
	sw $t0, -1404($fp)
	lw $t0, -1036($fp)
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
	lw $t0, 4($fp)
	sw $t0, -1424($fp)
	li $t0, 54498
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1432($fp)
	li $t0, 0
	sw $t0, -1436($fp)
	li $t0, 24976
	sw $t0, -1440($fp)
	lw $t1, -1440($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label153
label155:
	li $t0, 52289
	sw $t0, -1444($fp)
	lw $t1, -1444($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label153
label154:
	li $t0, 40359
	sw $t0, -1448($fp)
	lw $t1, -1448($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label153
label152:
	li $t0, 1
	sw $t0, -1436($fp)
label153:
	li $t0, 0
	sw $t0, -1452($fp)
	li $t0, 27939
	sw $t0, -1456($fp)
	lw $t0, 12($fp)
	sw $t0, -1460($fp)
	lw $t0, -1456($fp)
	lw $t1, -1460($fp)
	sub $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t0, -120($fp)
	sw $t0, -1468($fp)
	lw $t1, -1464($fp)
	lw $t2, -1468($fp)
	bne $t1, $t2, label156
	j label157
label156:
	li $t0, 1
	sw $t0, -1452($fp)
label157:
	li $t0, 0
	sw $t0, -1472($fp)
	li $t0, 44755
	sw $t0, -1476($fp)
	lw $t0, -132($fp)
	sw $t0, -1480($fp)
	lw $t1, -1476($fp)
	lw $t2, -1480($fp)
	ble $t1, $t2, label158
	j label159
label158:
	li $t0, 1
	sw $t0, -1472($fp)
label159:
	li $t0, 0
	sw $t0, -1484($fp)
	li $t0, 0
	sw $t0, -1488($fp)
	li $t0, 0
	sw $t0, -1492($fp)
	li $t0, 18668
	sw $t0, -1496($fp)
	lw $t0, -1204($fp)
	sw $t0, -1500($fp)
	lw $t1, -1496($fp)
	lw $t2, -1500($fp)
	beq $t1, $t2, label164
	j label165
label164:
	li $t0, 1
	sw $t0, -1492($fp)
label165:
	lw $t0, -24($fp)
	sw $t0, -1504($fp)
	lw $t1, -1492($fp)
	lw $t2, -1504($fp)
	beq $t1, $t2, label162
	j label163
label162:
	li $t0, 1
	sw $t0, -1488($fp)
label163:
	lw $t0, 16($fp)
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -1512($fp)
	li $t0, 0
	sw $t0, -1516($fp)
	lw $t0, -180($fp)
	sw $t0, -1520($fp)
	li $t0, 55368
	sw $t0, -1524($fp)
	lw $t0, -1520($fp)
	lw $t1, -1524($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1528($fp)
	lw $t1, -1528($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label168
label168:
	li $t0, 20395
	sw $t0, -1532($fp)
	lw $t1, -1532($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label167
label166:
	li $t0, 1
	sw $t0, -1516($fp)
label167:
	li $t0, 0
	sw $t0, -1536($fp)
	li $t0, 59417
	sw $t0, -1540($fp)
	li $t0, 6114
	sw $t0, -1544($fp)
	lw $t0, -1540($fp)
	lw $t1, -1544($fp)
	mul $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $t1, -1548($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label170
label171:
	li $t0, 35404
	sw $t0, -1552($fp)
	lw $t1, -1552($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -1536($fp)
label170:
	addi $t0, $fp, -16
	sw $t0, -1556($fp)
	lw $t0, -1204($fp)
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
	lw $t0, -1488($fp)
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
	addi $sp, $sp, -4
	lw $t0, -1572($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1576($fp)
	addi $sp, $sp, 24
	lw $t0, -1380($fp)
	sw $t0, -1580($fp)
	lw $t1, -1576($fp)
	lw $t2, -1580($fp)
	bne $t1, $t2, label160
	j label161
label160:
	li $t0, 1
	sw $t0, -1484($fp)
label161:
	li $t0, 0
	sw $t0, -1584($fp)
	li $t0, 51366
	sw $t0, -1588($fp)
	li $t0, 6272
	sw $t0, -1592($fp)
	lw $t1, -1588($fp)
	lw $t2, -1592($fp)
	beq $t1, $t2, label172
	j label174
label174:
	lw $t0, -132($fp)
	sw $t0, -1596($fp)
	lw $t1, -1596($fp)
	li $t2, 0
	bne $t1, $t2, label172
	j label173
label172:
	li $t0, 1
	sw $t0, -1584($fp)
label173:
	lw $t0, -180($fp)
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	sw $t0, 20($fp)
	lw $t0, 20($fp)
	sw $t0, -1604($fp)
	li $t0, 0
	sw $t0, -1608($fp)
	addi $t0, $fp, -788
	sw $t0, -1612($fp)
	li $t0, 4
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
	lw $t1, -1628($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label175
label175:
	li $t0, 1
	sw $t0, -1608($fp)
label176:
	addi $t0, $fp, -284
	sw $t0, -1632($fp)
	li $t0, 4
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
	li $t0, 18561
	sw $t0, -1652($fp)
	lw $t0, -1648($fp)
	lw $t1, -1652($fp)
	add $t0, $t0, $t1
	sw $t0, -1656($fp)
	addi $sp, $sp, -4
	lw $t0, -1484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1656($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1660($fp)
	addi $sp, $sp, 24
	lw $t0, -168($fp)
	sw $t0, -1664($fp)
	lw $t0, -1660($fp)
	lw $t1, -1664($fp)
	mul $t0, $t0, $t1
	sw $t0, -1668($fp)
	li $t0, 0
	sw $t0, -1672($fp)
	li $t0, 17931
	sw $t0, -1676($fp)
	lw $t1, -1676($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label177
label177:
	li $t0, 1
	sw $t0, -1672($fp)
label178:
	li $t0, 46964
	sw $t0, -1680($fp)
	lw $t0, -1672($fp)
	lw $t1, -1680($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1684($fp)
	addi $sp, $sp, -4
	lw $t0, -1436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1684($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1688($fp)
	addi $sp, $sp, 24
	li $t0, 27188
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	sw $t0, -1696($fp)
	addi $sp, $sp, -4
	lw $t0, -1420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1696($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1700($fp)
	addi $sp, $sp, 24
	lw $t0, -1400($fp)
	lw $t1, -1700($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1704($fp)
	lw $t1, -1704($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label149
label151:
	li $t0, 10304
	sw $t0, -1708($fp)
	li $t0, 303
	sw $t0, -1712($fp)
	lw $t0, -1708($fp)
	lw $t1, -1712($fp)
	sub $t0, $t0, $t1
	sw $t0, -1716($fp)
	lw $t1, -1716($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label149
label148:
	li $t0, 0
	sw $t0, -1720($fp)
	lw $t0, -156($fp)
	sw $t0, -1724($fp)
	li $t0, 0
	lw $t1, -1724($fp)
	sub $t0, $t0, $t1
	sw $t0, -1728($fp)
	li $t0, 0
	sw $t0, -1732($fp)
	li $t0, 50250
	sw $t0, -1736($fp)
	lw $t1, -1736($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label182
label182:
	li $t0, 1
	sw $t0, -1732($fp)
label183:
	li $t0, 2642
	sw $t0, -1740($fp)
	lw $t0, -1732($fp)
	lw $t1, -1740($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1744($fp)
	lw $t0, -1728($fp)
	lw $t1, -1744($fp)
	sub $t0, $t0, $t1
	sw $t0, -1748($fp)
	lw $t1, -1748($fp)
	li $t2, 0
	bne $t1, $t2, label181
	j label180
label181:
	li $t0, 0
	sw $t0, -1752($fp)
	lw $t0, -180($fp)
	sw $t0, -1756($fp)
	lw $t1, -1756($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label185
label184:
	li $t0, 1
	sw $t0, -1752($fp)
label185:
	li $t0, 61687
	sw $t0, -1760($fp)
	li $t0, 0
	lw $t1, -1760($fp)
	sub $t0, $t0, $t1
	sw $t0, -1764($fp)
	lw $t0, -1752($fp)
	lw $t1, -1764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1768($fp)
	lw $t1, -1768($fp)
	li $t2, 0
	bne $t1, $t2, label179
	j label180
label179:
	li $t0, 1
	sw $t0, -1720($fp)
label180:
	j label150
label149:
	li $t0, 64359
	sw $t0, -1772($fp)
label150:
	lw $t0, -1380($fp)
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1392($fp)
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1784($fp)
	lw $t0, 8($fp)
	sw $t0, -1788($fp)
	li $t0, 49438
	sw $t0, -1792($fp)
	lw $t0, -1788($fp)
	lw $t1, -1792($fp)
	sub $t0, $t0, $t1
	sw $t0, -1796($fp)
	li $t0, 8077
	sw $t0, -1800($fp)
	lw $t1, -1796($fp)
	lw $t2, -1800($fp)
	bne $t1, $t2, label186
	j label187
label186:
	li $t0, 1
	sw $t0, -1784($fp)
label187:
	lw $ra, -4($fp)
	lw $v0, -1784($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label144
label143:
	li $t0, 0
	sw $t0, -1804($fp)
	addi $t0, $fp, -16
	sw $t0, -1808($fp)
	li $t0, 0
	sw $t0, -1812($fp)
	lw $t0, -1204($fp)
	sw $t0, -1816($fp)
	lw $t1, -1816($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label192
label192:
	li $t0, 65106
	sw $t0, -1820($fp)
	lw $t1, -1820($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label191
label190:
	li $t0, 1
	sw $t0, -1812($fp)
label191:
	li $t0, 4
	lw $t1, -1812($fp)
	mul $t0, $t0, $t1
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	lw $t1, -1808($fp)
	add $t0, $t0, $t1
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	lw $t1, 0($t0)
	sw $t1, -1832($fp)
	lw $t0, -1204($fp)
	sw $t0, -1836($fp)
	li $t0, 0
	lw $t1, -1836($fp)
	sub $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t0, -180($fp)
	sw $t0, -1844($fp)
	li $t0, 22759
	sw $t0, -1848($fp)
	lw $t0, -1844($fp)
	lw $t1, -1848($fp)
	mul $t0, $t0, $t1
	sw $t0, -1852($fp)
	li $t0, 0
	sw $t0, -1856($fp)
	addi $t0, $fp, -16
	sw $t0, -1860($fp)
	li $t0, 1
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
	lw $t1, -1876($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label194
label195:
	lw $t0, -108($fp)
	sw $t0, -1880($fp)
	lw $t1, -1880($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -1856($fp)
label194:
	addi $t0, $fp, -812
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
	li $t0, 0
	lw $t1, -1900($fp)
	sub $t0, $t0, $t1
	sw $t0, -1904($fp)
	lw $t0, -1048($fp)
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -1912($fp)
	addi $sp, $sp, -4
	lw $t0, -1840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1912($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1916($fp)
	addi $sp, $sp, 24
	li $t0, 65096
	sw $t0, -1920($fp)
	lw $t0, -1916($fp)
	lw $t1, -1920($fp)
	sub $t0, $t0, $t1
	sw $t0, -1924($fp)
	lw $t1, -1832($fp)
	lw $t2, -1924($fp)
	blt $t1, $t2, label188
	j label189
label188:
	li $t0, 1
	sw $t0, -1804($fp)
label189:
	lw $ra, -4($fp)
	lw $v0, -1804($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label144:
	j label128
label130:
	j label123
label122:
	li $t0, 0
	sw $t0, -1928($fp)
	li $t0, 50940
	sw $t0, -1932($fp)
	li $t0, 41073
	sw $t0, -1936($fp)
	lw $t0, -1932($fp)
	lw $t1, -1936($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1940($fp)
	lw $t0, -168($fp)
	sw $t0, -1944($fp)
	li $t0, 0
	lw $t1, -1944($fp)
	sub $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t0, -1940($fp)
	lw $t1, -1948($fp)
	mul $t0, $t0, $t1
	sw $t0, -1952($fp)
	li $t0, 0
	lw $t1, -1952($fp)
	sub $t0, $t0, $t1
	sw $t0, -1956($fp)
	lw $t1, -1956($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label196
label196:
	li $t0, 1
	sw $t0, -1928($fp)
label197:
	li $t0, 0
	sw $t0, -1960($fp)
	li $t0, 50926
	sw $t0, -1964($fp)
	lw $t1, -1964($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label199
label198:
	li $t0, 1
	sw $t0, -1960($fp)
label199:
	li $t0, 0
	sw $t0, -1968($fp)
	lw $t0, -156($fp)
	sw $t0, -1972($fp)
	lw $t1, -1972($fp)
	li $t2, 0
	bne $t1, $t2, label201
	j label200
label200:
	li $t0, 1
	sw $t0, -1968($fp)
label201:
	lw $t0, -1960($fp)
	lw $t1, -1968($fp)
	mul $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $t0, -1928($fp)
	lw $t1, -1976($fp)
	sub $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $ra, -4($fp)
	lw $v0, -1980($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label123:
	lw $t0, -24($fp)
	sw $t0, -1984($fp)
	lw $t0, -1984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -1988($fp)
	li $t0, 0
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
	lw $t0, -2004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -2008($fp)
	li $t0, 1
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
	lw $t0, -2024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -2028($fp)
	li $t0, 2
	sw $t0, -2032($fp)
	li $t0, 4
	lw $t1, -2032($fp)
	mul $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	lw $t1, -2028($fp)
	add $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	lw $t1, 0($t0)
	sw $t1, -2044($fp)
	lw $t0, -2044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -2052($fp)
	lw $t0, -2052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -156($fp)
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -2072($fp)
	lw $t0, -2072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -2076($fp)
	li $t0, 57213
	sw $t0, -2080($fp)
	lw $t0, -132($fp)
	sw $t0, -2084($fp)
	lw $t0, -2080($fp)
	lw $t1, -2084($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2088($fp)
	li $t0, 0
	lw $t1, -2088($fp)
	sub $t0, $t0, $t1
	sw $t0, -2092($fp)
	li $t0, 4
	lw $t1, -2092($fp)
	mul $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	lw $t1, -2076($fp)
	add $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	lw $t1, 0($t0)
	sw $t1, -2104($fp)
	lw $t0, -24($fp)
	sw $t0, -2108($fp)
	lw $t0, -2104($fp)
	lw $t1, -2108($fp)
	add $t0, $t0, $t1
	sw $t0, -2112($fp)
	lw $ra, -4($fp)
	lw $v0, -2112($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -972
	li $t0, 34955
	sw $t0, -36($fp)
	addi $t0, $fp, -16
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
	li $t0, 57041
	sw $t0, -60($fp)
	addi $t0, $fp, -16
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
	li $t0, 27081
	sw $t0, -84($fp)
	addi $t0, $fp, -16
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
	li $t0, 24787
	sw $t0, -108($fp)
	addi $t0, $fp, -32
	sw $t0, -112($fp)
	li $t0, 0
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
	li $t0, 11900
	sw $t0, -132($fp)
	addi $t0, $fp, -32
	sw $t0, -136($fp)
	li $t0, 1
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
	li $t0, 45750
	sw $t0, -156($fp)
	addi $t0, $fp, -32
	sw $t0, -160($fp)
	li $t0, 2
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
	li $t0, 4006
	sw $t0, -180($fp)
	addi $t0, $fp, -32
	sw $t0, -184($fp)
	li $t0, 3
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
	li $t0, 39839
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	li $t0, 5190
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	li $t0, 56295
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
label202:
	lw $t0, -208($fp)
	sw $t0, -240($fp)
	lw $t1, -240($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label204
label203:
	li $t0, 0
	sw $t0, -244($fp)
	li $t0, 14662
	sw $t0, -248($fp)
	lw $t1, -248($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label205
label205:
	li $t0, 1
	sw $t0, -244($fp)
label206:
	j label202
label204:
	addi $t0, $fp, -16
	sw $t0, -252($fp)
	li $t0, 0
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
	lw $t0, -268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -272($fp)
	li $t0, 1
	sw $t0, -276($fp)
	li $t0, 4
	lw $t1, -276($fp)
	mul $t0, $t0, $t1
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	lw $t1, -272($fp)
	add $t0, $t0, $t1
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	lw $t1, 0($t0)
	sw $t1, -288($fp)
	lw $t0, -288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -292($fp)
	li $t0, 2
	sw $t0, -296($fp)
	li $t0, 4
	lw $t1, -296($fp)
	mul $t0, $t0, $t1
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	lw $t1, -292($fp)
	add $t0, $t0, $t1
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	lw $t1, 0($t0)
	sw $t1, -308($fp)
	lw $t0, -308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	lw $t0, -208($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -232($fp)
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
	li $t0, 0
	sw $t0, -412($fp)
	li $t0, 59688
	sw $t0, -416($fp)
	lw $t1, -416($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label212
label212:
	li $t0, 1
	sw $t0, -412($fp)
label213:
	li $t0, 0
	lw $t1, -412($fp)
	sub $t0, $t0, $t1
	sw $t0, -420($fp)
	li $t0, 1064
	sw $t0, -424($fp)
	lw $t1, -420($fp)
	lw $t2, -424($fp)
	ble $t1, $t2, label210
	j label211
label210:
	li $t0, 1
	sw $t0, -408($fp)
label211:
	addi $t0, $fp, -16
	sw $t0, -428($fp)
	lw $t0, -232($fp)
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
	li $t0, 0
	lw $t1, -444($fp)
	sub $t0, $t0, $t1
	sw $t0, -448($fp)
	lw $t1, -408($fp)
	lw $t2, -448($fp)
	blt $t1, $t2, label207
	j label209
label209:
	li $t0, 14965
	sw $t0, -452($fp)
	lw $t1, -452($fp)
	li $t2, 0
	bne $t1, $t2, label207
	j label208
label207:
	li $t0, 1
	sw $t0, -404($fp)
label208:
	lw $ra, -4($fp)
	lw $v0, -404($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -16
	sw $t0, -456($fp)
	li $t0, 0
	sw $t0, -460($fp)
	li $t0, 4
	lw $t1, -460($fp)
	mul $t0, $t0, $t1
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	lw $t1, -456($fp)
	add $t0, $t0, $t1
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	lw $t1, 0($t0)
	sw $t1, -472($fp)
	lw $t0, -472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -476($fp)
	li $t0, 1
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
	addi $t0, $fp, -16
	sw $t0, -496($fp)
	li $t0, 2
	sw $t0, -500($fp)
	li $t0, 4
	lw $t1, -500($fp)
	mul $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	lw $t1, -496($fp)
	add $t0, $t0, $t1
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	lw $t1, 0($t0)
	sw $t1, -512($fp)
	lw $t0, -512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -516($fp)
	li $t0, 0
	sw $t0, -520($fp)
	li $t0, 4
	lw $t1, -520($fp)
	mul $t0, $t0, $t1
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	lw $t1, -516($fp)
	add $t0, $t0, $t1
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	lw $t1, 0($t0)
	sw $t1, -532($fp)
	lw $t0, -532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -536($fp)
	li $t0, 1
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
	lw $t0, -552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -556($fp)
	li $t0, 2
	sw $t0, -560($fp)
	li $t0, 4
	lw $t1, -560($fp)
	mul $t0, $t0, $t1
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	lw $t1, -556($fp)
	add $t0, $t0, $t1
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	lw $t1, 0($t0)
	sw $t1, -572($fp)
	lw $t0, -572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -576($fp)
	li $t0, 3
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
	lw $t0, -208($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -232($fp)
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -608($fp)
	li $t0, 44402
	sw $t0, -612($fp)
	li $t0, 3706
	sw $t0, -616($fp)
	lw $t0, -612($fp)
	lw $t1, -616($fp)
	sub $t0, $t0, $t1
	sw $t0, -620($fp)
	li $t0, 11116
	sw $t0, -624($fp)
	li $t0, 43225
	sw $t0, -628($fp)
	lw $t0, -624($fp)
	lw $t1, -628($fp)
	add $t0, $t0, $t1
	sw $t0, -632($fp)
	lw $t1, -620($fp)
	lw $t2, -632($fp)
	bgt $t1, $t2, label214
	j label215
label214:
	li $t0, 1
	sw $t0, -608($fp)
label215:
	lw $t0, -608($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -636($fp)
	lw $ra, -4($fp)
	lw $v0, -636($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, 4($fp)
	sw $t0, -640($fp)
	lw $t1, -640($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label217
label216:
label219:
	li $t0, 64234
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -648($fp)
	li $t0, 42796
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -656($fp)
	li $t0, 0
	sw $t0, -660($fp)
	addi $t0, $fp, -32
	sw $t0, -664($fp)
	lw $t0, 8($fp)
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
	li $t0, 19193
	sw $t0, -684($fp)
	lw $t1, -680($fp)
	lw $t2, -684($fp)
	bne $t1, $t2, label222
	j label223
label222:
	li $t0, 1
	sw $t0, -660($fp)
label223:
	li $t0, 53144
	sw $t0, -688($fp)
	lw $t0, 8($fp)
	sw $t0, -692($fp)
	addi $sp, $sp, -4
	lw $t0, -648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -692($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -696($fp)
	addi $sp, $sp, 24
	lw $t1, -696($fp)
	li $t2, 0
	bne $t1, $t2, label220
	j label221
label220:
	li $t0, 45201
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -704($fp)
	j label219
label221:
label217:
	li $t0, 23795
	sw $t0, -708($fp)
	li $t0, 0
	sw $t0, -712($fp)
	li $t0, 52199
	sw $t0, -716($fp)
	lw $t1, -716($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label224
label224:
	li $t0, 1
	sw $t0, -712($fp)
label225:
	lw $t0, -708($fp)
	lw $t1, -712($fp)
	mul $t0, $t0, $t1
	sw $t0, -720($fp)
	addi $t0, $fp, -32
	sw $t0, -724($fp)
	lw $t0, 8($fp)
	sw $t0, -728($fp)
	li $t0, 4
	lw $t1, -728($fp)
	mul $t0, $t0, $t1
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	lw $t1, -724($fp)
	add $t0, $t0, $t1
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	lw $t1, 0($t0)
	sw $t1, -740($fp)
	lw $t0, -720($fp)
	lw $t1, -740($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -744($fp)
	addi $t0, $fp, -32
	sw $t0, -748($fp)
	li $t0, 2424
	sw $t0, -752($fp)
	lw $t0, -208($fp)
	sw $t0, -756($fp)
	lw $t0, -752($fp)
	lw $t1, -756($fp)
	sub $t0, $t0, $t1
	sw $t0, -760($fp)
	li $t0, 4
	lw $t1, -760($fp)
	mul $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	lw $t1, -748($fp)
	add $t0, $t0, $t1
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	lw $t1, 0($t0)
	sw $t1, -772($fp)
	lw $t0, -744($fp)
	lw $t1, -772($fp)
	mul $t0, $t0, $t1
	sw $t0, -776($fp)
	li $t0, 0
	lw $t1, -776($fp)
	sub $t0, $t0, $t1
	sw $t0, -780($fp)
	li $t0, 0
	lw $t1, -780($fp)
	sub $t0, $t0, $t1
	sw $t0, -784($fp)
	addi $t0, $fp, -16
	sw $t0, -788($fp)
	li $t0, 0
	sw $t0, -792($fp)
	li $t0, 4
	lw $t1, -792($fp)
	mul $t0, $t0, $t1
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	lw $t1, -788($fp)
	add $t0, $t0, $t1
	sw $t0, -800($fp)
	lw $t0, -800($fp)
	lw $t1, 0($t0)
	sw $t1, -804($fp)
	lw $t0, -804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -808($fp)
	li $t0, 1
	sw $t0, -812($fp)
	li $t0, 4
	lw $t1, -812($fp)
	mul $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	lw $t1, -808($fp)
	add $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	lw $t1, 0($t0)
	sw $t1, -824($fp)
	lw $t0, -824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -828($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -848($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -868($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -888($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -908($fp)
	li $t0, 3
	sw $t0, -912($fp)
	li $t0, 4
	lw $t1, -912($fp)
	mul $t0, $t0, $t1
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	lw $t1, -908($fp)
	add $t0, $t0, $t1
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	lw $t1, 0($t0)
	sw $t1, -924($fp)
	lw $t0, -924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -208($fp)
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -232($fp)
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -940($fp)
	addi $t0, $fp, -32
	sw $t0, -944($fp)
	li $t0, 3
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
	li $t0, 0
	lw $t1, -960($fp)
	sub $t0, $t0, $t1
	sw $t0, -964($fp)
	li $t0, 0
	sw $t0, -968($fp)
	lw $t0, -232($fp)
	sw $t0, -972($fp)
	lw $t1, -972($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label228
label228:
	li $t0, 1
	sw $t0, -968($fp)
label229:
	lw $t1, -964($fp)
	lw $t2, -968($fp)
	ble $t1, $t2, label226
	j label227
label226:
	li $t0, 1
	sw $t0, -940($fp)
label227:
	lw $t0, -940($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -976($fp)
	lw $ra, -4($fp)
	lw $v0, -976($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2228
	li $t0, 43498
	sw $t0, -44($fp)
	addi $t0, $fp, -12
	sw $t0, -48($fp)
	li $t0, 0
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
	li $t0, 8746
	sw $t0, -68($fp)
	addi $t0, $fp, -12
	sw $t0, -72($fp)
	li $t0, 1
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
	li $t0, 29280
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	li $t0, 12917
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	li $t0, 251
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	li $t0, 56362
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	li $t0, 37704
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	li $t0, 12151
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	sw $t0, -160($fp)
	li $t0, 36576
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	li $t0, 41710
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 51990
	sw $t0, -188($fp)
	addi $t0, $fp, -40
	sw $t0, -192($fp)
	li $t0, 0
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
	li $t0, 41766
	sw $t0, -212($fp)
	addi $t0, $fp, -40
	sw $t0, -216($fp)
	li $t0, 1
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
	li $t0, 32470
	sw $t0, -236($fp)
	addi $t0, $fp, -40
	sw $t0, -240($fp)
	li $t0, 2
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
	li $t0, 1116
	sw $t0, -260($fp)
	addi $t0, $fp, -40
	sw $t0, -264($fp)
	li $t0, 3
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
	li $t0, 35918
	sw $t0, -284($fp)
	addi $t0, $fp, -40
	sw $t0, -288($fp)
	li $t0, 4
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
	li $t0, 33534
	sw $t0, -308($fp)
	addi $t0, $fp, -40
	sw $t0, -312($fp)
	li $t0, 5
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
	li $t0, 16081
	sw $t0, -332($fp)
	addi $t0, $fp, -40
	sw $t0, -336($fp)
	li $t0, 6
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
	li $t0, 14784
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	li $t0, 37240
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	li $t0, 27197
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	li $t0, 58010
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	li $t0, 24848
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	li $t0, 46390
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
label230:
	li $t0, 0
	sw $t0, -428($fp)
	addi $t0, $fp, -40
	sw $t0, -432($fp)
	li $t0, 0
	sw $t0, -436($fp)
	lw $t0, -168($fp)
	sw $t0, -440($fp)
	li $t0, 35270
	sw $t0, -444($fp)
	lw $t1, -440($fp)
	lw $t2, -444($fp)
	bne $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -436($fp)
label236:
	li $t0, 4
	lw $t1, -436($fp)
	mul $t0, $t0, $t1
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	lw $t1, -432($fp)
	add $t0, $t0, $t1
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	lw $t1, 0($t0)
	sw $t1, -456($fp)
	li $t0, 0
	sw $t0, -460($fp)
	lw $t0, 8($fp)
	sw $t0, -464($fp)
	lw $t1, -464($fp)
	li $t2, 0
	bne $t1, $t2, label238
	j label237
label237:
	li $t0, 1
	sw $t0, -460($fp)
label238:
	lw $t0, -372($fp)
	sw $t0, -468($fp)
	lw $t0, -460($fp)
	lw $t1, -468($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -472($fp)
	lw $t1, -456($fp)
	lw $t2, -472($fp)
	ble $t1, $t2, label233
	j label234
label233:
	li $t0, 1
	sw $t0, -428($fp)
label234:
	li $t0, 0
	sw $t0, -476($fp)
	li $t0, 0
	sw $t0, -480($fp)
	li $t0, 28479
	sw $t0, -484($fp)
	li $t0, 16884
	sw $t0, -488($fp)
	lw $t0, -484($fp)
	lw $t1, -488($fp)
	add $t0, $t0, $t1
	sw $t0, -492($fp)
	li $t0, 47813
	sw $t0, -496($fp)
	lw $t1, -492($fp)
	lw $t2, -496($fp)
	bgt $t1, $t2, label241
	j label242
label241:
	li $t0, 1
	sw $t0, -480($fp)
label242:
	li $t0, 0
	sw $t0, -500($fp)
	li $t0, 26055
	sw $t0, -504($fp)
	li $t0, 59065
	sw $t0, -508($fp)
	lw $t0, -504($fp)
	lw $t1, -508($fp)
	add $t0, $t0, $t1
	sw $t0, -512($fp)
	li $t0, 10209
	sw $t0, -516($fp)
	lw $t1, -512($fp)
	lw $t2, -516($fp)
	bne $t1, $t2, label243
	j label244
label243:
	li $t0, 1
	sw $t0, -500($fp)
label244:
	lw $t0, -96($fp)
	sw $t0, -520($fp)
	li $t0, 23546
	sw $t0, -524($fp)
	lw $t0, -520($fp)
	lw $t1, -524($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -528($fp)
	lw $t0, -396($fp)
	sw $t0, -532($fp)
	lw $t0, -528($fp)
	lw $t1, -532($fp)
	sub $t0, $t0, $t1
	sw $t0, -536($fp)
	addi $sp, $sp, -4
	lw $t0, -480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -536($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -540($fp)
	addi $sp, $sp, 16
	lw $t1, -540($fp)
	li $t2, 0
	bne $t1, $t2, label240
	j label239
label239:
	li $t0, 1
	sw $t0, -476($fp)
label240:
	li $t0, 0
	sw $t0, -544($fp)
	li $t0, 6441
	sw $t0, -548($fp)
	lw $t1, -548($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label245
label245:
	li $t0, 1
	sw $t0, -544($fp)
label246:
	lw $t0, -476($fp)
	lw $t1, -544($fp)
	mul $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t1, -428($fp)
	lw $t2, -552($fp)
	bne $t1, $t2, label231
	j label232
label231:
	li $t0, 25630
	sw $t0, -556($fp)
	li $t0, 0
	sw $t0, -560($fp)
	addi $t0, $fp, -12
	sw $t0, -564($fp)
	lw $t0, -360($fp)
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
	bne $t1, $t2, label247
	j label249
label249:
	lw $t0, -96($fp)
	sw $t0, -584($fp)
	lw $t1, -584($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label248
label247:
	li $t0, 1
	sw $t0, -560($fp)
label248:
	li $t0, 11557
	sw $t0, -588($fp)
	addi $t0, $fp, -40
	sw $t0, -592($fp)
	lw $t0, -108($fp)
	sw $t0, -596($fp)
	li $t0, 4
	lw $t1, -596($fp)
	mul $t0, $t0, $t1
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	lw $t1, -592($fp)
	add $t0, $t0, $t1
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	lw $t1, 0($t0)
	sw $t1, -608($fp)
	lw $t0, -180($fp)
	sw $t0, -612($fp)
	lw $t0, -608($fp)
	lw $t1, -612($fp)
	add $t0, $t0, $t1
	sw $t0, -616($fp)
	addi $sp, $sp, -4
	lw $t0, -560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -616($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -620($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -620($fp)
	sub $t0, $t0, $t1
	sw $t0, -624($fp)
	j label230
label232:
	addi $t0, $fp, -12
	sw $t0, -628($fp)
	li $t0, 0
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
	addi $t0, $fp, -12
	sw $t0, -648($fp)
	li $t0, 1
	sw $t0, -652($fp)
	li $t0, 4
	lw $t1, -652($fp)
	mul $t0, $t0, $t1
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	lw $t1, -648($fp)
	add $t0, $t0, $t1
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	lw $t1, 0($t0)
	sw $t1, -664($fp)
	lw $t0, -664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -156($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
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
	addi $t0, $fp, -40
	sw $t0, -760($fp)
	li $t0, 3
	sw $t0, -764($fp)
	li $t0, 4
	lw $t1, -764($fp)
	mul $t0, $t0, $t1
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	lw $t1, -760($fp)
	add $t0, $t0, $t1
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	lw $t1, 0($t0)
	sw $t1, -776($fp)
	lw $t0, -776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -780($fp)
	li $t0, 4
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
	lw $t0, -796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -800($fp)
	li $t0, 5
	sw $t0, -804($fp)
	li $t0, 4
	lw $t1, -804($fp)
	mul $t0, $t0, $t1
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	lw $t1, -800($fp)
	add $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	lw $t1, 0($t0)
	sw $t1, -816($fp)
	lw $t0, -816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -820($fp)
	li $t0, 6
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
	lw $t0, -360($fp)
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -408($fp)
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -864($fp)
	li $t0, 0
	sw $t0, -868($fp)
	lw $t0, -372($fp)
	sw $t0, -872($fp)
	lw $t0, -420($fp)
	sw $t0, -876($fp)
	lw $t0, -872($fp)
	lw $t1, -876($fp)
	add $t0, $t0, $t1
	sw $t0, -880($fp)
	lw $t0, -384($fp)
	sw $t0, -884($fp)
	li $t0, 0
	lw $t1, -884($fp)
	sub $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -880($fp)
	lw $t1, -888($fp)
	add $t0, $t0, $t1
	sw $t0, -892($fp)
	li $t0, 19358
	sw $t0, -896($fp)
	lw $t1, -892($fp)
	lw $t2, -896($fp)
	ble $t1, $t2, label252
	j label253
label252:
	li $t0, 1
	sw $t0, -868($fp)
label253:
	li $t0, 25881
	sw $t0, -900($fp)
	lw $t1, -868($fp)
	lw $t2, -900($fp)
	beq $t1, $t2, label250
	j label251
label250:
	li $t0, 1
	sw $t0, -864($fp)
label251:
	lw $ra, -4($fp)
	lw $v0, -864($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 2383
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -912($fp)
	li $t0, 57062
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	li $t0, 38032
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	li $t0, 38959
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -948($fp)
	li $t0, 33237
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -960($fp)
	li $t0, 24486
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -972($fp)
	li $t0, 15189
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	sw $t0, -984($fp)
	li $t0, 171
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	li $t0, 0
	sw $t0, -1000($fp)
	li $t0, 0
	sw $t0, -1004($fp)
	li $t0, 0
	sw $t0, -1008($fp)
	li $t0, 25602
	sw $t0, -1012($fp)
	lw $t0, -180($fp)
	sw $t0, -1016($fp)
	lw $t0, -1012($fp)
	lw $t1, -1016($fp)
	mul $t0, $t0, $t1
	sw $t0, -1020($fp)
	li $t0, 0
	lw $t1, -1020($fp)
	sub $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t0, -372($fp)
	sw $t0, -1028($fp)
	li $t0, 51107
	sw $t0, -1032($fp)
	lw $t0, -1028($fp)
	lw $t1, -1032($fp)
	mul $t0, $t0, $t1
	sw $t0, -1036($fp)
	lw $t1, -1024($fp)
	lw $t2, -1036($fp)
	ble $t1, $t2, label258
	j label259
label258:
	li $t0, 1
	sw $t0, -1008($fp)
label259:
	li $t0, 0
	sw $t0, -1040($fp)
	li $t0, 10765
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -1048($fp)
	li $t0, 27601
	sw $t0, -1052($fp)
	li $t0, 27766
	sw $t0, -1056($fp)
	lw $t0, -1052($fp)
	lw $t1, -1056($fp)
	add $t0, $t0, $t1
	sw $t0, -1060($fp)
	lw $t0, -372($fp)
	sw $t0, -1064($fp)
	lw $t0, -1060($fp)
	lw $t1, -1064($fp)
	add $t0, $t0, $t1
	sw $t0, -1068($fp)
	li $t0, 0
	sw $t0, -1072($fp)
	li $t0, 0
	sw $t0, -1076($fp)
	li $t0, 63045
	sw $t0, -1080($fp)
	li $t0, 26567
	sw $t0, -1084($fp)
	lw $t1, -1080($fp)
	lw $t2, -1084($fp)
	bge $t1, $t2, label264
	j label265
label264:
	li $t0, 1
	sw $t0, -1076($fp)
label265:
	lw $t0, -920($fp)
	sw $t0, -1088($fp)
	lw $t1, -1076($fp)
	lw $t2, -1088($fp)
	beq $t1, $t2, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -1072($fp)
label263:
	li $t0, 0
	sw $t0, -1092($fp)
	li $t0, 34771
	sw $t0, -1096($fp)
	lw $t1, -1096($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label266
label266:
	li $t0, 1
	sw $t0, -1092($fp)
label267:
	li $t0, 0
	lw $t1, -1092($fp)
	sub $t0, $t0, $t1
	sw $t0, -1100($fp)
	li $t0, 0
	sw $t0, -1104($fp)
	lw $t0, -408($fp)
	sw $t0, -1108($fp)
	lw $t0, -956($fp)
	sw $t0, -1112($fp)
	lw $t1, -1108($fp)
	lw $t2, -1112($fp)
	ble $t1, $t2, label268
	j label270
label270:
	lw $t0, -396($fp)
	sw $t0, -1116($fp)
	lw $t1, -1116($fp)
	li $t2, 0
	bne $t1, $t2, label268
	j label269
label268:
	li $t0, 1
	sw $t0, -1104($fp)
label269:
	li $t0, 0
	sw $t0, -1120($fp)
	lw $t0, -980($fp)
	sw $t0, -1124($fp)
	lw $t0, -920($fp)
	sw $t0, -1128($fp)
	lw $t0, -1124($fp)
	lw $t1, -1128($fp)
	sub $t0, $t0, $t1
	sw $t0, -1132($fp)
	lw $t1, -1132($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label272
label273:
	lw $t0, -120($fp)
	sw $t0, -1136($fp)
	lw $t1, -1136($fp)
	li $t2, 0
	bne $t1, $t2, label271
	j label272
label271:
	li $t0, 1
	sw $t0, -1120($fp)
label272:
	li $t0, 0
	sw $t0, -1140($fp)
	li $t0, 57636
	sw $t0, -1144($fp)
	li $t0, 23222
	sw $t0, -1148($fp)
	lw $t0, -1144($fp)
	lw $t1, -1148($fp)
	mul $t0, $t0, $t1
	sw $t0, -1152($fp)
	lw $t0, -932($fp)
	sw $t0, -1156($fp)
	lw $t1, -1152($fp)
	lw $t2, -1156($fp)
	beq $t1, $t2, label274
	j label275
label274:
	li $t0, 1
	sw $t0, -1140($fp)
label275:
	li $t0, 0
	sw $t0, -1160($fp)
	li $t0, 47075
	sw $t0, -1164($fp)
	lw $t1, -1164($fp)
	li $t2, 0
	bne $t1, $t2, label277
	j label276
label276:
	li $t0, 1
	sw $t0, -1160($fp)
label277:
	li $t0, 34415
	sw $t0, -1168($fp)
	lw $t0, -1160($fp)
	lw $t1, -1168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1172($fp)
	li $t0, 0
	sw $t0, -1176($fp)
	li $t0, 0
	sw $t0, -1180($fp)
	li $t0, 23931
	sw $t0, -1184($fp)
	lw $t1, -1184($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label280
label280:
	li $t0, 1
	sw $t0, -1180($fp)
label281:
	lw $t0, -96($fp)
	sw $t0, -1188($fp)
	lw $t1, -1180($fp)
	lw $t2, -1188($fp)
	blt $t1, $t2, label278
	j label279
label278:
	li $t0, 1
	sw $t0, -1176($fp)
label279:
	addi $sp, $sp, -4
	lw $t0, -1140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1176($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1192($fp)
	addi $sp, $sp, 16
	lw $t0, -96($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -1200($fp)
	addi $sp, $sp, -4
	lw $t0, -1100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1200($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1204($fp)
	addi $sp, $sp, 24
	lw $t0, -372($fp)
	sw $t0, -1208($fp)
	lw $t0, -180($fp)
	sw $t0, -1212($fp)
	lw $t0, -1208($fp)
	lw $t1, -1212($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1216($fp)
	li $t0, 48844
	sw $t0, -1220($fp)
	lw $t0, -1216($fp)
	lw $t1, -1220($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1224($fp)
	lw $t0, -180($fp)
	sw $t0, -1228($fp)
	addi $sp, $sp, -4
	lw $t0, -1204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1228($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1232($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -1236($fp)
	li $t0, 33654
	sw $t0, -1240($fp)
	li $t0, 23760
	sw $t0, -1244($fp)
	lw $t0, -1240($fp)
	lw $t1, -1244($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1248($fp)
	li $t0, 0
	sw $t0, -1252($fp)
	li $t0, 62522
	sw $t0, -1256($fp)
	lw $t1, -1256($fp)
	li $t2, 0
	bne $t1, $t2, label285
	j label284
label284:
	li $t0, 1
	sw $t0, -1252($fp)
label285:
	li $t0, 0
	lw $t1, -1252($fp)
	sub $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t0, -992($fp)
	sw $t0, -1264($fp)
	lw $t0, -908($fp)
	sw $t0, -1268($fp)
	lw $t0, -1264($fp)
	lw $t1, -1268($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1272($fp)
	li $t0, 56059
	sw $t0, -1276($fp)
	lw $t0, -1272($fp)
	lw $t1, -1276($fp)
	add $t0, $t0, $t1
	sw $t0, -1280($fp)
	li $t0, 0
	sw $t0, -1284($fp)
	li $t0, 0
	sw $t0, -1288($fp)
	lw $t0, 4($fp)
	sw $t0, -1292($fp)
	lw $t1, -1292($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label288
label288:
	li $t0, 1
	sw $t0, -1288($fp)
label289:
	li $t0, 24489
	sw $t0, -1296($fp)
	lw $t0, -1288($fp)
	lw $t1, -1296($fp)
	sub $t0, $t0, $t1
	sw $t0, -1300($fp)
	li $t0, 64533
	sw $t0, -1304($fp)
	lw $t0, -108($fp)
	sw $t0, -1308($fp)
	lw $t0, -1304($fp)
	lw $t1, -1308($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1312($fp)
	li $t0, 0
	lw $t1, -1312($fp)
	sub $t0, $t0, $t1
	sw $t0, -1316($fp)
	addi $t0, $fp, -40
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
	li $t0, 0
	sw $t0, -1340($fp)
	li $t0, 0
	sw $t0, -1344($fp)
	li $t0, 46290
	sw $t0, -1348($fp)
	lw $t1, -1348($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label292
label292:
	li $t0, 1
	sw $t0, -1344($fp)
label293:
	li $t0, 45174
	sw $t0, -1352($fp)
	lw $t1, -1344($fp)
	lw $t2, -1352($fp)
	bgt $t1, $t2, label290
	j label291
label290:
	li $t0, 1
	sw $t0, -1340($fp)
label291:
	li $t0, 0
	sw $t0, -1356($fp)
	li $t0, 0
	sw $t0, -1360($fp)
	lw $t0, -980($fp)
	sw $t0, -1364($fp)
	lw $t0, 4($fp)
	sw $t0, -1368($fp)
	lw $t1, -1364($fp)
	lw $t2, -1368($fp)
	blt $t1, $t2, label296
	j label297
label296:
	li $t0, 1
	sw $t0, -1360($fp)
label297:
	lw $t0, -180($fp)
	sw $t0, -1372($fp)
	lw $t1, -1360($fp)
	lw $t2, -1372($fp)
	bge $t1, $t2, label294
	j label295
label294:
	li $t0, 1
	sw $t0, -1356($fp)
label295:
	addi $sp, $sp, -4
	lw $t0, -1300($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1336($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1356($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1376($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -1380($fp)
	li $t0, 38733
	sw $t0, -1384($fp)
	li $t0, 0
	lw $t1, -1384($fp)
	sub $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $t1, -1388($fp)
	li $t2, 0
	bne $t1, $t2, label300
	j label299
label300:
	li $t0, 38513
	sw $t0, -1392($fp)
	lw $t1, -1392($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label299
label298:
	li $t0, 1
	sw $t0, -1380($fp)
label299:
	li $t0, 64013
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -1400($fp)
	addi $t0, $fp, -40
	sw $t0, -1404($fp)
	li $t0, 4
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
	li $t0, 0
	sw $t0, -1424($fp)
	li $t0, 53803
	sw $t0, -1428($fp)
	lw $t1, -1428($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label302
label301:
	li $t0, 1
	sw $t0, -1424($fp)
label302:
	addi $sp, $sp, -4
	lw $t0, -1400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1424($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1432($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -1436($fp)
	li $t0, 49734
	sw $t0, -1440($fp)
	li $t0, 28100
	sw $t0, -1444($fp)
	lw $t1, -1440($fp)
	lw $t2, -1444($fp)
	bne $t1, $t2, label303
	j label304
label303:
	li $t0, 1
	sw $t0, -1436($fp)
label304:
	li $t0, 58366
	sw $t0, -1448($fp)
	li $t0, 30257
	sw $t0, -1452($fp)
	lw $t0, -1448($fp)
	lw $t1, -1452($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1456($fp)
	lw $t0, 8($fp)
	sw $t0, -1460($fp)
	li $t0, 3344
	sw $t0, -1464($fp)
	lw $t0, -1460($fp)
	lw $t1, -1464($fp)
	sub $t0, $t0, $t1
	sw $t0, -1468($fp)
	addi $sp, $sp, -4
	lw $t0, -1380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1468($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1472($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -1376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1472($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1476($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -1480($fp)
	lw $t0, -408($fp)
	sw $t0, -1484($fp)
	lw $t1, -1484($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label307
label307:
	lw $t0, -920($fp)
	sw $t0, -1488($fp)
	lw $t1, -1488($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label306
label305:
	li $t0, 1
	sw $t0, -1480($fp)
label306:
	addi $sp, $sp, -4
	lw $t0, -1476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1480($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1492($fp)
	addi $sp, $sp, 12
	li $t0, 60231
	sw $t0, -1496($fp)
	lw $t1, -1492($fp)
	lw $t2, -1496($fp)
	bne $t1, $t2, label286
	j label287
label286:
	li $t0, 1
	sw $t0, -1284($fp)
label287:
	lw $t0, 4($fp)
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -1504($fp)
	li $t0, 0
	sw $t0, -1508($fp)
	lw $t0, -96($fp)
	sw $t0, -1512($fp)
	li $t0, 5409
	sw $t0, -1516($fp)
	lw $t0, -1512($fp)
	lw $t1, -1516($fp)
	sub $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $t0, 8($fp)
	sw $t0, -1524($fp)
	lw $t1, -1520($fp)
	lw $t2, -1524($fp)
	blt $t1, $t2, label308
	j label309
label308:
	li $t0, 1
	sw $t0, -1508($fp)
label309:
	li $t0, 0
	sw $t0, -1528($fp)
	li $t0, 41683
	sw $t0, -1532($fp)
	li $t0, 356
	sw $t0, -1536($fp)
	lw $t0, -1532($fp)
	lw $t1, -1536($fp)
	mul $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t0, -156($fp)
	sw $t0, -1544($fp)
	lw $t1, -1540($fp)
	lw $t2, -1544($fp)
	bgt $t1, $t2, label310
	j label311
label310:
	li $t0, 1
	sw $t0, -1528($fp)
label311:
	addi $sp, $sp, -4
	lw $t0, -1280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1528($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1548($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -40
	sw $t0, -1552($fp)
	lw $t0, -372($fp)
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
	lw $t0, 12($fp)
	sw $t0, -1572($fp)
	lw $t0, -1568($fp)
	lw $t1, -1572($fp)
	add $t0, $t0, $t1
	sw $t0, -1576($fp)
	li $t0, 33705
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -1584($fp)
	addi $sp, $sp, -4
	lw $t0, -1548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1584($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1588($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -1248($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1588($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1592($fp)
	addi $sp, $sp, 16
	li $t0, 21472
	sw $t0, -1596($fp)
	lw $t1, -1592($fp)
	lw $t2, -1596($fp)
	blt $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -1236($fp)
label283:
	addi $sp, $sp, -4
	lw $t0, -1048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1236($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1600($fp)
	addi $sp, $sp, 24
	lw $t1, -1600($fp)
	li $t2, 0
	bne $t1, $t2, label261
	j label260
label260:
	li $t0, 1
	sw $t0, -1040($fp)
label261:
	lw $t1, -1008($fp)
	lw $t2, -1040($fp)
	blt $t1, $t2, label256
	j label257
label256:
	li $t0, 1
	sw $t0, -1004($fp)
label257:
	lw $t0, -396($fp)
	sw $t0, -1604($fp)
	li $t0, 0
	lw $t1, -1604($fp)
	sub $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t0, -360($fp)
	sw $t0, -1612($fp)
	lw $t0, -1608($fp)
	lw $t1, -1612($fp)
	sub $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, 4($fp)
	sw $t0, -1620($fp)
	li $t0, 0
	lw $t1, -1620($fp)
	sub $t0, $t0, $t1
	sw $t0, -1624($fp)
	li $t0, 0
	lw $t1, -1624($fp)
	sub $t0, $t0, $t1
	sw $t0, -1628($fp)
	addi $sp, $sp, -4
	lw $t0, -1616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1628($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1632($fp)
	addi $sp, $sp, 12
	lw $t1, -1004($fp)
	lw $t2, -1632($fp)
	ble $t1, $t2, label254
	j label255
label254:
	li $t0, 1
	sw $t0, -1000($fp)
label255:
	addi $t0, $fp, -40
	sw $t0, -1636($fp)
	lw $t0, -168($fp)
	sw $t0, -1640($fp)
	li $t0, 55701
	sw $t0, -1644($fp)
	lw $t0, -1640($fp)
	lw $t1, -1644($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1648($fp)
	lw $t0, -408($fp)
	sw $t0, -1652($fp)
	lw $t0, -1648($fp)
	lw $t1, -1652($fp)
	mul $t0, $t0, $t1
	sw $t0, -1656($fp)
	li $t0, 0
	sw $t0, -1660($fp)
	lw $t0, -980($fp)
	sw $t0, -1664($fp)
	lw $t1, -1664($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label312
label312:
	li $t0, 1
	sw $t0, -1660($fp)
label313:
	lw $t0, -1656($fp)
	lw $t1, -1660($fp)
	add $t0, $t0, $t1
	sw $t0, -1668($fp)
	li $t0, 4
	lw $t1, -1668($fp)
	mul $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	lw $t1, -1636($fp)
	add $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	lw $t1, 0($t0)
	sw $t1, -1680($fp)
	li $t0, 0
	sw $t0, -1684($fp)
	li $t0, 59752
	sw $t0, -1688($fp)
	lw $t1, -1688($fp)
	li $t2, 0
	bne $t1, $t2, label315
	j label314
label314:
	li $t0, 1
	sw $t0, -1684($fp)
label315:
	lw $t0, -96($fp)
	sw $t0, -1692($fp)
	lw $t0, -408($fp)
	sw $t0, -1696($fp)
	lw $t0, -1692($fp)
	lw $t1, -1696($fp)
	mul $t0, $t0, $t1
	sw $t0, -1700($fp)
	li $t0, 0
	lw $t1, -1700($fp)
	sub $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t0, -180($fp)
	sw $t0, -1708($fp)
	li $t0, 0
	lw $t1, -1708($fp)
	sub $t0, $t0, $t1
	sw $t0, -1712($fp)
	lw $t0, -180($fp)
	sw $t0, -1716($fp)
	lw $t0, -1712($fp)
	lw $t1, -1716($fp)
	sub $t0, $t0, $t1
	sw $t0, -1720($fp)
	li $t0, 0
	sw $t0, -1724($fp)
	li $t0, 16034
	sw $t0, -1728($fp)
	li $t0, 21019
	sw $t0, -1732($fp)
	lw $t1, -1728($fp)
	lw $t2, -1732($fp)
	ble $t1, $t2, label318
	j label317
label318:
	li $t0, 11794
	sw $t0, -1736($fp)
	lw $t1, -1736($fp)
	li $t2, 0
	bne $t1, $t2, label316
	j label317
label316:
	li $t0, 1
	sw $t0, -1724($fp)
label317:
	lw $t0, -944($fp)
	sw $t0, -1740($fp)
	addi $sp, $sp, -4
	lw $t0, -1720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1740($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1744($fp)
	addi $sp, $sp, 16
	li $t0, 14511
	sw $t0, -1748($fp)
	lw $t0, -1744($fp)
	lw $t1, -1748($fp)
	add $t0, $t0, $t1
	sw $t0, -1752($fp)
	addi $sp, $sp, -4
	lw $t0, -1684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1752($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1756($fp)
	addi $sp, $sp, 16
	lw $t0, -144($fp)
	sw $t0, -1760($fp)
	lw $t0, -408($fp)
	sw $t0, -1764($fp)
	lw $t0, -1760($fp)
	lw $t1, -1764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1768($fp)
	li $t0, 50308
	sw $t0, -1772($fp)
	li $t0, 60801
	sw $t0, -1776($fp)
	lw $t0, -1772($fp)
	lw $t1, -1776($fp)
	mul $t0, $t0, $t1
	sw $t0, -1780($fp)
	li $t0, 0
	lw $t1, -1780($fp)
	sub $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $t0, -1768($fp)
	lw $t1, -1784($fp)
	mul $t0, $t0, $t1
	sw $t0, -1788($fp)
	li $t0, 0
	sw $t0, -1792($fp)
	li $t0, 0
	sw $t0, -1796($fp)
	lw $t0, -360($fp)
	sw $t0, -1800($fp)
	lw $t1, -1800($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label324
label324:
	li $t0, 1
	sw $t0, -1796($fp)
label325:
	li $t0, 0
	lw $t1, -1796($fp)
	sub $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t1, -1804($fp)
	li $t2, 0
	bne $t1, $t2, label323
	j label322
label322:
	li $t0, 1
	sw $t0, -1792($fp)
label323:
	lw $t0, -1788($fp)
	lw $t1, -1792($fp)
	add $t0, $t0, $t1
	sw $t0, -1808($fp)
	lw $t1, -1808($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label320
label319:
	lw $t0, -156($fp)
	sw $t0, -1812($fp)
	lw $ra, -4($fp)
	lw $v0, -1812($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label321
label320:
	li $t0, 39390
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -1824($fp)
	li $t0, 53112
	sw $t0, -1828($fp)
	lw $t0, -168($fp)
	sw $t0, -1832($fp)
	lw $t0, -1820($fp)
	sw $t0, -1836($fp)
	lw $t0, -1832($fp)
	lw $t1, -1836($fp)
	mul $t0, $t0, $t1
	sw $t0, -1840($fp)
	li $t0, 48916
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -1848($fp)
	addi $sp, $sp, -4
	lw $t0, -1828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1848($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1852($fp)
	addi $sp, $sp, 16
	lw $t0, -108($fp)
	sw $t0, -1856($fp)
	lw $t0, -1852($fp)
	lw $t1, -1856($fp)
	add $t0, $t0, $t1
	sw $t0, -1860($fp)
label321:
label326:
	li $t0, 38387
	sw $t0, -1864($fp)
	lw $t1, -1864($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label328
label329:
	li $t0, 7869
	sw $t0, -1868($fp)
	li $t0, 47807
	sw $t0, -1872($fp)
	lw $t0, -1868($fp)
	lw $t1, -1872($fp)
	mul $t0, $t0, $t1
	sw $t0, -1876($fp)
	lw $t0, -120($fp)
	sw $t0, -1880($fp)
	lw $t0, -1876($fp)
	lw $t1, -1880($fp)
	mul $t0, $t0, $t1
	sw $t0, -1884($fp)
	lw $t1, -1884($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label328
label327:
	li $t0, 0
	sw $t0, -1888($fp)
	li $t0, 0
	sw $t0, -1892($fp)
	li $t0, 0
	sw $t0, -1896($fp)
	li $t0, 28911
	sw $t0, -1900($fp)
	li $t0, 0
	lw $t1, -1900($fp)
	sub $t0, $t0, $t1
	sw $t0, -1904($fp)
	lw $t1, -1904($fp)
	li $t2, 0
	bne $t1, $t2, label335
	j label334
label334:
	li $t0, 1
	sw $t0, -1896($fp)
label335:
	li $t0, 4855
	sw $t0, -1908($fp)
	lw $t1, -1896($fp)
	lw $t2, -1908($fp)
	bge $t1, $t2, label332
	j label333
label332:
	li $t0, 1
	sw $t0, -1892($fp)
label333:
	addi $t0, $fp, -40
	sw $t0, -1912($fp)
	lw $t0, -360($fp)
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
	li $t0, 26328
	sw $t0, -1932($fp)
	li $t0, 0
	sw $t0, -1936($fp)
	li $t0, 15926
	sw $t0, -1940($fp)
	lw $t1, -1940($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label336
label336:
	li $t0, 1
	sw $t0, -1936($fp)
label337:
	li $t0, 52671
	sw $t0, -1944($fp)
	lw $t0, -1936($fp)
	lw $t1, -1944($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1948($fp)
	addi $sp, $sp, -4
	lw $t0, -1928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1948($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1952($fp)
	addi $sp, $sp, 16
	lw $t1, -1892($fp)
	lw $t2, -1952($fp)
	bge $t1, $t2, label330
	j label331
label330:
	li $t0, 1
	sw $t0, -1888($fp)
label331:
	lw $ra, -4($fp)
	lw $v0, -1888($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label326
label328:
	addi $t0, $fp, -12
	sw $t0, -1956($fp)
	li $t0, 0
	sw $t0, -1960($fp)
	li $t0, 4
	lw $t1, -1960($fp)
	mul $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	lw $t1, -1956($fp)
	add $t0, $t0, $t1
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	lw $t1, 0($t0)
	sw $t1, -1972($fp)
	lw $t0, -1972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -1976($fp)
	li $t0, 1
	sw $t0, -1980($fp)
	li $t0, 4
	lw $t1, -1980($fp)
	mul $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t0, -1984($fp)
	lw $t1, -1976($fp)
	add $t0, $t0, $t1
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	lw $t1, 0($t0)
	sw $t1, -1992($fp)
	lw $t0, -1992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -156($fp)
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -168($fp)
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2028($fp)
	li $t0, 0
	sw $t0, -2032($fp)
	li $t0, 4
	lw $t1, -2032($fp)
	mul $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	lw $t1, -2028($fp)
	add $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	lw $t1, 0($t0)
	sw $t1, -2044($fp)
	lw $t0, -2044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2048($fp)
	li $t0, 1
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
	lw $t0, -2064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2068($fp)
	li $t0, 2
	sw $t0, -2072($fp)
	li $t0, 4
	lw $t1, -2072($fp)
	mul $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	lw $t1, -2068($fp)
	add $t0, $t0, $t1
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	lw $t1, 0($t0)
	sw $t1, -2084($fp)
	lw $t0, -2084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2088($fp)
	li $t0, 3
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
	lw $t0, -2104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2108($fp)
	li $t0, 4
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
	lw $t0, -2124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2128($fp)
	li $t0, 5
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
	lw $t0, -2144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -2148($fp)
	li $t0, 6
	sw $t0, -2152($fp)
	li $t0, 4
	lw $t1, -2152($fp)
	mul $t0, $t0, $t1
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	lw $t1, -2148($fp)
	add $t0, $t0, $t1
	sw $t0, -2160($fp)
	lw $t0, -2160($fp)
	lw $t1, 0($t0)
	sw $t1, -2164($fp)
	lw $t0, -2164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -2172($fp)
	lw $t0, -2172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -408($fp)
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2192($fp)
	li $t0, 64770
	sw $t0, -2196($fp)
	li $t0, 11067
	sw $t0, -2200($fp)
	lw $t0, -2196($fp)
	lw $t1, -2200($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2204($fp)
	addi $t0, $fp, -12
	sw $t0, -2208($fp)
	lw $t0, -408($fp)
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
	li $t0, 0
	lw $t1, -2224($fp)
	sub $t0, $t0, $t1
	sw $t0, -2228($fp)
	lw $t1, -2204($fp)
	lw $t2, -2228($fp)
	beq $t1, $t2, label340
	j label339
label340:
	lw $t0, -132($fp)
	sw $t0, -2232($fp)
	lw $t1, -2232($fp)
	li $t2, 0
	bne $t1, $t2, label338
	j label339
label338:
	li $t0, 1
	sw $t0, -2192($fp)
label339:
	lw $ra, -4($fp)
	lw $v0, -2192($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -608
	li $t0, 7867
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	li $t0, 33649
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	li $t0, 3167
	sw $t0, -72($fp)
	addi $t0, $fp, -44
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
	li $t0, 31089
	sw $t0, -96($fp)
	addi $t0, $fp, -44
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
	li $t0, 2885
	sw $t0, -120($fp)
	addi $t0, $fp, -44
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
	li $t0, 677
	sw $t0, -144($fp)
	addi $t0, $fp, -44
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
	li $t0, 57656
	sw $t0, -168($fp)
	addi $t0, $fp, -44
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
	li $t0, 30486
	sw $t0, -192($fp)
	addi $t0, $fp, -44
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
	li $t0, 28443
	sw $t0, -216($fp)
	addi $t0, $fp, -44
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
	li $t0, 2886
	sw $t0, -240($fp)
	addi $t0, $fp, -44
	sw $t0, -244($fp)
	li $t0, 7
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
	li $t0, 20652
	sw $t0, -264($fp)
	addi $t0, $fp, -44
	sw $t0, -268($fp)
	li $t0, 8
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
	li $t0, 44477
	sw $t0, -288($fp)
	addi $t0, $fp, -44
	sw $t0, -292($fp)
	li $t0, 9
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
	li $t0, 0
	sw $t0, -312($fp)
	li $t0, 57511
	sw $t0, -316($fp)
	lw $t0, -52($fp)
	sw $t0, -320($fp)
	lw $t0, -316($fp)
	lw $t1, -320($fp)
	mul $t0, $t0, $t1
	sw $t0, -324($fp)
	li $t0, 598
	sw $t0, -328($fp)
	lw $t1, -324($fp)
	lw $t2, -328($fp)
	bne $t1, $t2, label341
	j label342
label341:
	li $t0, 1
	sw $t0, -312($fp)
label342:
	li $t0, 0
	sw $t0, -332($fp)
	li $t0, 17218
	sw $t0, -336($fp)
	lw $t0, -64($fp)
	sw $t0, -340($fp)
	lw $t0, -336($fp)
	lw $t1, -340($fp)
	mul $t0, $t0, $t1
	sw $t0, -344($fp)
	li $t0, 54253
	sw $t0, -348($fp)
	lw $t1, -344($fp)
	lw $t2, -348($fp)
	beq $t1, $t2, label343
	j label344
label343:
	li $t0, 1
	sw $t0, -332($fp)
label344:
	lw $t0, -52($fp)
	sw $t0, -352($fp)
	li $t0, 0
	sw $t0, -356($fp)
	addi $t0, $fp, -44
	sw $t0, -360($fp)
	li $t0, 2
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
	lw $t1, -376($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label347
label347:
	li $t0, 18121
	sw $t0, -380($fp)
	lw $t1, -380($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label346
label345:
	li $t0, 1
	sw $t0, -356($fp)
label346:
	li $t0, 0
	sw $t0, -384($fp)
	lw $t0, -64($fp)
	sw $t0, -388($fp)
	lw $t0, -64($fp)
	sw $t0, -392($fp)
	lw $t1, -388($fp)
	lw $t2, -392($fp)
	blt $t1, $t2, label348
	j label350
label350:
	li $t0, 23905
	sw $t0, -396($fp)
	lw $t1, -396($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label349
label348:
	li $t0, 1
	sw $t0, -384($fp)
label349:
	addi $sp, $sp, -4
	lw $t0, -312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -332($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -384($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -400($fp)
	addi $sp, $sp, 24
	lw $t0, -52($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
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
	addi $t0, $fp, -44
	sw $t0, -452($fp)
	li $t0, 2
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
	li $t0, 3
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
	li $t0, 4
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
	li $t0, 5
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
	addi $t0, $fp, -44
	sw $t0, -532($fp)
	li $t0, 6
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
	addi $t0, $fp, -44
	sw $t0, -552($fp)
	li $t0, 7
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
	addi $t0, $fp, -44
	sw $t0, -572($fp)
	li $t0, 8
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
	lw $t0, -588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -592($fp)
	li $t0, 9
	sw $t0, -596($fp)
	li $t0, 4
	lw $t1, -596($fp)
	mul $t0, $t0, $t1
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	lw $t1, -592($fp)
	add $t0, $t0, $t1
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	lw $t1, 0($t0)
	sw $t1, -608($fp)
	lw $t0, -608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 41830
	sw $t0, -612($fp)
	lw $ra, -4($fp)
	lw $v0, -612($fp)
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
