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
	addi $sp, $sp, -7948
	li $t0, 36506
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	li $t0, 27641
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	li $t0, 16680
	sw $t0, -260($fp)
	addi $t0, $fp, -32
	sw $t0, -264($fp)
	li $t0, 0
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
	li $t0, 46345
	sw $t0, -284($fp)
	addi $t0, $fp, -32
	sw $t0, -288($fp)
	li $t0, 1
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
	li $t0, 3941
	sw $t0, -308($fp)
	addi $t0, $fp, -32
	sw $t0, -312($fp)
	li $t0, 2
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
	li $t0, 23601
	sw $t0, -332($fp)
	addi $t0, $fp, -32
	sw $t0, -336($fp)
	li $t0, 3
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
	li $t0, 28465
	sw $t0, -356($fp)
	addi $t0, $fp, -32
	sw $t0, -360($fp)
	li $t0, 4
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
	li $t0, 2001
	sw $t0, -380($fp)
	addi $t0, $fp, -32
	sw $t0, -384($fp)
	li $t0, 5
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
	li $t0, 44017
	sw $t0, -404($fp)
	addi $t0, $fp, -32
	sw $t0, -408($fp)
	li $t0, 6
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
	li $t0, 56584
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	li $t0, 10631
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	li $t0, 53733
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	li $t0, 6877
	sw $t0, -464($fp)
	addi $t0, $fp, -36
	sw $t0, -468($fp)
	li $t0, 0
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
	li $t0, 21646
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	li $t0, 56
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	li $t0, 207
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	li $t0, 5598
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	li $t0, 53277
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	li $t0, 38469
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	li $t0, 44711
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	li $t0, 12095
	sw $t0, -572($fp)
	addi $t0, $fp, -48
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
	li $t0, 45484
	sw $t0, -596($fp)
	addi $t0, $fp, -48
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
	li $t0, 24766
	sw $t0, -620($fp)
	addi $t0, $fp, -48
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
	li $t0, 65051
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	li $t0, 33736
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	li $t0, 11861
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	li $t0, 19071
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	li $t0, 117
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	li $t0, 12599
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	li $t0, 7757
	sw $t0, -716($fp)
	addi $t0, $fp, -52
	sw $t0, -720($fp)
	li $t0, 0
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
	li $t0, 23580
	sw $t0, -740($fp)
	addi $t0, $fp, -88
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
	li $t0, 49105
	sw $t0, -764($fp)
	addi $t0, $fp, -88
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
	li $t0, 35398
	sw $t0, -788($fp)
	addi $t0, $fp, -88
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
	li $t0, 40260
	sw $t0, -812($fp)
	addi $t0, $fp, -88
	sw $t0, -816($fp)
	li $t0, 3
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
	li $t0, 29914
	sw $t0, -836($fp)
	addi $t0, $fp, -88
	sw $t0, -840($fp)
	li $t0, 4
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, -840($fp)
	lw $t1, -848($fp)
	add $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t0, -836($fp)
	lw $t1, -852($fp)
	sw $t0, 0($t1)
	lw $t0, -852($fp)
	lw $t1, 0($t0)
	sw $t1, -856($fp)
	li $t0, 39339
	sw $t0, -860($fp)
	addi $t0, $fp, -88
	sw $t0, -864($fp)
	li $t0, 5
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
	li $t0, 63861
	sw $t0, -884($fp)
	addi $t0, $fp, -88
	sw $t0, -888($fp)
	li $t0, 6
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
	li $t0, 58379
	sw $t0, -908($fp)
	addi $t0, $fp, -88
	sw $t0, -912($fp)
	li $t0, 7
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
	li $t0, 41340
	sw $t0, -932($fp)
	addi $t0, $fp, -88
	sw $t0, -936($fp)
	li $t0, 8
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
	li $t0, 42342
	sw $t0, -956($fp)
	addi $t0, $fp, -100
	sw $t0, -960($fp)
	li $t0, 0
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
	li $t0, 49427
	sw $t0, -980($fp)
	addi $t0, $fp, -100
	sw $t0, -984($fp)
	li $t0, 1
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
	li $t0, 51972
	sw $t0, -1004($fp)
	addi $t0, $fp, -100
	sw $t0, -1008($fp)
	li $t0, 2
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
	li $t0, 30539
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -1036($fp)
	li $t0, 56304
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, -1048($fp)
	li $t0, 8082
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -1060($fp)
	li $t0, 30596
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, -1072($fp)
	li $t0, 56512
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
	li $t0, 13680
	sw $t0, -1088($fp)
	addi $t0, $fp, -120
	sw $t0, -1092($fp)
	li $t0, 0
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1100($fp)
	lw $t0, -1092($fp)
	lw $t1, -1100($fp)
	add $t0, $t0, $t1
	sw $t0, -1104($fp)
	lw $t0, -1088($fp)
	lw $t1, -1104($fp)
	sw $t0, 0($t1)
	lw $t0, -1104($fp)
	lw $t1, 0($t0)
	sw $t1, -1108($fp)
	li $t0, 18337
	sw $t0, -1112($fp)
	addi $t0, $fp, -120
	sw $t0, -1116($fp)
	li $t0, 1
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1124($fp)
	lw $t0, -1116($fp)
	lw $t1, -1124($fp)
	add $t0, $t0, $t1
	sw $t0, -1128($fp)
	lw $t0, -1112($fp)
	lw $t1, -1128($fp)
	sw $t0, 0($t1)
	lw $t0, -1128($fp)
	lw $t1, 0($t0)
	sw $t1, -1132($fp)
	li $t0, 29445
	sw $t0, -1136($fp)
	addi $t0, $fp, -120
	sw $t0, -1140($fp)
	li $t0, 2
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1148($fp)
	lw $t0, -1140($fp)
	lw $t1, -1148($fp)
	add $t0, $t0, $t1
	sw $t0, -1152($fp)
	lw $t0, -1136($fp)
	lw $t1, -1152($fp)
	sw $t0, 0($t1)
	lw $t0, -1152($fp)
	lw $t1, 0($t0)
	sw $t1, -1156($fp)
	li $t0, 58392
	sw $t0, -1160($fp)
	addi $t0, $fp, -120
	sw $t0, -1164($fp)
	li $t0, 3
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1172($fp)
	lw $t0, -1164($fp)
	lw $t1, -1172($fp)
	add $t0, $t0, $t1
	sw $t0, -1176($fp)
	lw $t0, -1160($fp)
	lw $t1, -1176($fp)
	sw $t0, 0($t1)
	lw $t0, -1176($fp)
	lw $t1, 0($t0)
	sw $t1, -1180($fp)
	li $t0, 30432
	sw $t0, -1184($fp)
	addi $t0, $fp, -120
	sw $t0, -1188($fp)
	li $t0, 4
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
	li $t0, 9393
	sw $t0, -1208($fp)
	addi $t0, $fp, -156
	sw $t0, -1212($fp)
	li $t0, 0
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
	li $t0, 17622
	sw $t0, -1232($fp)
	addi $t0, $fp, -156
	sw $t0, -1236($fp)
	li $t0, 1
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
	li $t0, 29948
	sw $t0, -1256($fp)
	addi $t0, $fp, -156
	sw $t0, -1260($fp)
	li $t0, 2
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
	li $t0, 43129
	sw $t0, -1280($fp)
	addi $t0, $fp, -156
	sw $t0, -1284($fp)
	li $t0, 3
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
	li $t0, 29483
	sw $t0, -1304($fp)
	addi $t0, $fp, -156
	sw $t0, -1308($fp)
	li $t0, 4
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
	li $t0, 49019
	sw $t0, -1328($fp)
	addi $t0, $fp, -156
	sw $t0, -1332($fp)
	li $t0, 5
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
	li $t0, 43247
	sw $t0, -1352($fp)
	addi $t0, $fp, -156
	sw $t0, -1356($fp)
	li $t0, 6
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
	li $t0, 42082
	sw $t0, -1376($fp)
	addi $t0, $fp, -156
	sw $t0, -1380($fp)
	li $t0, 7
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
	li $t0, 56776
	sw $t0, -1400($fp)
	addi $t0, $fp, -156
	sw $t0, -1404($fp)
	li $t0, 8
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
	li $t0, 1291
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	sw $t0, -1432($fp)
	li $t0, 25651
	sw $t0, -1436($fp)
	addi $t0, $fp, -192
	sw $t0, -1440($fp)
	li $t0, 0
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1448($fp)
	lw $t0, -1440($fp)
	lw $t1, -1448($fp)
	add $t0, $t0, $t1
	sw $t0, -1452($fp)
	lw $t0, -1436($fp)
	lw $t1, -1452($fp)
	sw $t0, 0($t1)
	lw $t0, -1452($fp)
	lw $t1, 0($t0)
	sw $t1, -1456($fp)
	li $t0, 26638
	sw $t0, -1460($fp)
	addi $t0, $fp, -192
	sw $t0, -1464($fp)
	li $t0, 1
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1472($fp)
	lw $t0, -1464($fp)
	lw $t1, -1472($fp)
	add $t0, $t0, $t1
	sw $t0, -1476($fp)
	lw $t0, -1460($fp)
	lw $t1, -1476($fp)
	sw $t0, 0($t1)
	lw $t0, -1476($fp)
	lw $t1, 0($t0)
	sw $t1, -1480($fp)
	li $t0, 41551
	sw $t0, -1484($fp)
	addi $t0, $fp, -192
	sw $t0, -1488($fp)
	li $t0, 2
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1496($fp)
	lw $t0, -1488($fp)
	lw $t1, -1496($fp)
	add $t0, $t0, $t1
	sw $t0, -1500($fp)
	lw $t0, -1484($fp)
	lw $t1, -1500($fp)
	sw $t0, 0($t1)
	lw $t0, -1500($fp)
	lw $t1, 0($t0)
	sw $t1, -1504($fp)
	li $t0, 55565
	sw $t0, -1508($fp)
	addi $t0, $fp, -192
	sw $t0, -1512($fp)
	li $t0, 3
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1520($fp)
	lw $t0, -1512($fp)
	lw $t1, -1520($fp)
	add $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t0, -1508($fp)
	lw $t1, -1524($fp)
	sw $t0, 0($t1)
	lw $t0, -1524($fp)
	lw $t1, 0($t0)
	sw $t1, -1528($fp)
	li $t0, 442
	sw $t0, -1532($fp)
	addi $t0, $fp, -192
	sw $t0, -1536($fp)
	li $t0, 4
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $t0, -1536($fp)
	lw $t1, -1544($fp)
	add $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $t0, -1532($fp)
	lw $t1, -1548($fp)
	sw $t0, 0($t1)
	lw $t0, -1548($fp)
	lw $t1, 0($t0)
	sw $t1, -1552($fp)
	li $t0, 39876
	sw $t0, -1556($fp)
	addi $t0, $fp, -192
	sw $t0, -1560($fp)
	li $t0, 5
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1568($fp)
	lw $t0, -1560($fp)
	lw $t1, -1568($fp)
	add $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t0, -1556($fp)
	lw $t1, -1572($fp)
	sw $t0, 0($t1)
	lw $t0, -1572($fp)
	lw $t1, 0($t0)
	sw $t1, -1576($fp)
	li $t0, 48408
	sw $t0, -1580($fp)
	addi $t0, $fp, -192
	sw $t0, -1584($fp)
	li $t0, 6
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1592($fp)
	lw $t0, -1584($fp)
	lw $t1, -1592($fp)
	add $t0, $t0, $t1
	sw $t0, -1596($fp)
	lw $t0, -1580($fp)
	lw $t1, -1596($fp)
	sw $t0, 0($t1)
	lw $t0, -1596($fp)
	lw $t1, 0($t0)
	sw $t1, -1600($fp)
	li $t0, 41782
	sw $t0, -1604($fp)
	addi $t0, $fp, -192
	sw $t0, -1608($fp)
	li $t0, 7
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1616($fp)
	lw $t0, -1608($fp)
	lw $t1, -1616($fp)
	add $t0, $t0, $t1
	sw $t0, -1620($fp)
	lw $t0, -1604($fp)
	lw $t1, -1620($fp)
	sw $t0, 0($t1)
	lw $t0, -1620($fp)
	lw $t1, 0($t0)
	sw $t1, -1624($fp)
	li $t0, 16683
	sw $t0, -1628($fp)
	addi $t0, $fp, -192
	sw $t0, -1632($fp)
	li $t0, 8
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1640($fp)
	lw $t0, -1632($fp)
	lw $t1, -1640($fp)
	add $t0, $t0, $t1
	sw $t0, -1644($fp)
	lw $t0, -1628($fp)
	lw $t1, -1644($fp)
	sw $t0, 0($t1)
	lw $t0, -1644($fp)
	lw $t1, 0($t0)
	sw $t1, -1648($fp)
	li $t0, 32299
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	sw $t0, -1660($fp)
	li $t0, 28218
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	sw $t0, -1672($fp)
	li $t0, 47222
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	sw $t0, -1684($fp)
	li $t0, 23068
	sw $t0, -1688($fp)
	addi $t0, $fp, -232
	sw $t0, -1692($fp)
	li $t0, 0
	sw $t0, -1696($fp)
	lw $t0, -1696($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t0, -1692($fp)
	lw $t1, -1700($fp)
	add $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t0, -1688($fp)
	lw $t1, -1704($fp)
	sw $t0, 0($t1)
	lw $t0, -1704($fp)
	lw $t1, 0($t0)
	sw $t1, -1708($fp)
	li $t0, 36300
	sw $t0, -1712($fp)
	addi $t0, $fp, -232
	sw $t0, -1716($fp)
	li $t0, 1
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1724($fp)
	lw $t0, -1716($fp)
	lw $t1, -1724($fp)
	add $t0, $t0, $t1
	sw $t0, -1728($fp)
	lw $t0, -1712($fp)
	lw $t1, -1728($fp)
	sw $t0, 0($t1)
	lw $t0, -1728($fp)
	lw $t1, 0($t0)
	sw $t1, -1732($fp)
	li $t0, 12282
	sw $t0, -1736($fp)
	addi $t0, $fp, -232
	sw $t0, -1740($fp)
	li $t0, 2
	sw $t0, -1744($fp)
	lw $t0, -1744($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1748($fp)
	lw $t0, -1740($fp)
	lw $t1, -1748($fp)
	add $t0, $t0, $t1
	sw $t0, -1752($fp)
	lw $t0, -1736($fp)
	lw $t1, -1752($fp)
	sw $t0, 0($t1)
	lw $t0, -1752($fp)
	lw $t1, 0($t0)
	sw $t1, -1756($fp)
	li $t0, 14044
	sw $t0, -1760($fp)
	addi $t0, $fp, -232
	sw $t0, -1764($fp)
	li $t0, 3
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t0, -1764($fp)
	lw $t1, -1772($fp)
	add $t0, $t0, $t1
	sw $t0, -1776($fp)
	lw $t0, -1760($fp)
	lw $t1, -1776($fp)
	sw $t0, 0($t1)
	lw $t0, -1776($fp)
	lw $t1, 0($t0)
	sw $t1, -1780($fp)
	li $t0, 49981
	sw $t0, -1784($fp)
	addi $t0, $fp, -232
	sw $t0, -1788($fp)
	li $t0, 4
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
	li $t0, 30619
	sw $t0, -1808($fp)
	addi $t0, $fp, -232
	sw $t0, -1812($fp)
	li $t0, 5
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
	li $t0, 43489
	sw $t0, -1832($fp)
	addi $t0, $fp, -232
	sw $t0, -1836($fp)
	li $t0, 6
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
	li $t0, 42837
	sw $t0, -1856($fp)
	addi $t0, $fp, -232
	sw $t0, -1860($fp)
	li $t0, 7
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
	li $t0, 61052
	sw $t0, -1880($fp)
	addi $t0, $fp, -232
	sw $t0, -1884($fp)
	li $t0, 8
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
	li $t0, 52883
	sw $t0, -1904($fp)
	addi $t0, $fp, -232
	sw $t0, -1908($fp)
	li $t0, 9
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
	li $t0, 60459
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	sw $t0, -1936($fp)
	addi $t0, $fp, -192
	sw $t0, -1940($fp)
	li $t0, 4
	sw $t0, -1944($fp)
	li $t0, 4
	lw $t1, -1944($fp)
	mul $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	lw $t1, -1940($fp)
	add $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $t0, -1952($fp)
	lw $t1, 0($t0)
	sw $t1, -1956($fp)
	li $t0, 0
	sw $t0, -1960($fp)
	li $t0, 0
	sw $t0, -1964($fp)
	addi $t0, $fp, -48
	sw $t0, -1968($fp)
	li $t0, 0
	sw $t0, -1972($fp)
	li $t0, 4
	lw $t1, -1972($fp)
	mul $t0, $t0, $t1
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	lw $t1, -1968($fp)
	add $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	lw $t1, 0($t0)
	sw $t1, -1984($fp)
	lw $t1, -1984($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label128
label128:
	li $t0, 8187
	sw $t0, -1988($fp)
	lw $t1, -1988($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label127
label126:
	li $t0, 1
	sw $t0, -1964($fp)
label127:
	addi $sp, $sp, -4
	lw $t0, -1964($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1992($fp)
	addi $sp, $sp, 8
	lw $t1, -1992($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label124
label124:
	li $t0, 1
	sw $t0, -1960($fp)
label125:
	lw $t0, -1956($fp)
	lw $t1, -1960($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1996($fp)
	li $t0, 0
	lw $t1, -1996($fp)
	sub $t0, $t0, $t1
	sw $t0, -2000($fp)
	li $t0, 0
	sw $t0, -2004($fp)
	lw $t0, -696($fp)
	sw $t0, -2008($fp)
	lw $t1, -2008($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label129
label129:
	li $t0, 1
	sw $t0, -2004($fp)
label130:
	lw $t0, -1668($fp)
	sw $t0, -2012($fp)
	lw $t0, -2004($fp)
	lw $t1, -2012($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2016($fp)
	lw $t0, -2000($fp)
	lw $t1, -2016($fp)
	sub $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t1, -2020($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
	li $t0, 953
	sw $t0, -2024($fp)
	li $t0, 188
	sw $t0, -2028($fp)
	lw $t0, -660($fp)
	sw $t0, -2032($fp)
	lw $t0, -2028($fp)
	lw $t1, -2032($fp)
	mul $t0, $t0, $t1
	sw $t0, -2036($fp)
	lw $t0, -2024($fp)
	lw $t1, -2036($fp)
	add $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $t1, -2040($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label132
label131:
	addi $t0, $fp, -120
	sw $t0, -2044($fp)
	li $t0, 0
	sw $t0, -2048($fp)
	li $t0, 9478
	sw $t0, -2052($fp)
	lw $t1, -2052($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label138
label138:
	li $t0, 1
	sw $t0, -2048($fp)
label139:
	li $t0, 26605
	sw $t0, -2056($fp)
	lw $t0, -2048($fp)
	lw $t1, -2056($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2060($fp)
	li $t0, 4
	lw $t1, -2060($fp)
	mul $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	lw $t1, -2044($fp)
	add $t0, $t0, $t1
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	lw $t1, 0($t0)
	sw $t1, -2072($fp)
	lw $t1, -2072($fp)
	li $t2, 0
	bne $t1, $t2, label137
	j label135
label137:
	li $t0, 26826
	sw $t0, -2076($fp)
	lw $t0, -672($fp)
	sw $t0, -2080($fp)
	lw $t0, -2076($fp)
	lw $t1, -2080($fp)
	mul $t0, $t0, $t1
	sw $t0, -2084($fp)
	li $t0, 51029
	sw $t0, -2088($fp)
	lw $t0, -2084($fp)
	lw $t1, -2088($fp)
	add $t0, $t0, $t1
	sw $t0, -2092($fp)
	addi $t0, $fp, -36
	sw $t0, -2096($fp)
	lw $t0, -504($fp)
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
	lw $t0, -2092($fp)
	lw $t1, -2112($fp)
	add $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t1, -2116($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label135
label134:
label140:
	li $t0, 16634
	sw $t0, -2120($fp)
	lw $t1, -2120($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label142
label141:
	li $t0, 0
	sw $t0, -2124($fp)
	li $t0, 27268
	sw $t0, -2128($fp)
	lw $t1, -2128($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label146
label146:
	li $t0, 1
	sw $t0, -2124($fp)
label147:
	li $t0, 0
	lw $t1, -2124($fp)
	sub $t0, $t0, $t1
	sw $t0, -2132($fp)
	li $t0, 0
	sw $t0, -2136($fp)
	li $t0, 25370
	sw $t0, -2140($fp)
	li $t0, 0
	lw $t1, -2140($fp)
	sub $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t1, -2144($fp)
	li $t2, 0
	bne $t1, $t2, label149
	j label148
label148:
	li $t0, 1
	sw $t0, -2136($fp)
label149:
	lw $t0, -672($fp)
	sw $t0, -2148($fp)
	lw $t0, -2136($fp)
	lw $t1, -2148($fp)
	add $t0, $t0, $t1
	sw $t0, -2152($fp)
	lw $t1, -2132($fp)
	lw $t2, -2152($fp)
	blt $t1, $t2, label143
	j label144
label143:
	lw $t0, -672($fp)
	sw $t0, -2156($fp)
	li $t0, 0
	lw $t1, -2156($fp)
	sub $t0, $t0, $t1
	sw $t0, -2160($fp)
	lw $t1, -2160($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label150
label150:
	li $t0, 65043
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	sw $t0, -2172($fp)
	li $t0, 0
	sw $t0, -2176($fp)
	li $t0, 3515
	sw $t0, -2180($fp)
	lw $t0, -696($fp)
	sw $t0, -2184($fp)
	lw $t0, -2180($fp)
	lw $t1, -2184($fp)
	add $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t0, -2168($fp)
	sw $t0, -2192($fp)
	li $t0, 42053
	sw $t0, -2196($fp)
	lw $t0, -2192($fp)
	lw $t1, -2196($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2200($fp)
	li $t0, 31806
	sw $t0, -2204($fp)
	lw $t0, -2200($fp)
	lw $t1, -2204($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2208($fp)
	addi $sp, $sp, -4
	lw $t0, -2208($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2212($fp)
	addi $sp, $sp, 8
	lw $t1, -2188($fp)
	lw $t2, -2212($fp)
	blt $t1, $t2, label153
	j label155
label155:
	li $t0, 0
	sw $t0, -2216($fp)
	lw $t0, -696($fp)
	sw $t0, -2220($fp)
	li $t0, 0
	lw $t1, -2220($fp)
	sub $t0, $t0, $t1
	sw $t0, -2224($fp)
	lw $t1, -2224($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label156
label156:
	li $t0, 1
	sw $t0, -2216($fp)
label157:
	lw $t0, -1080($fp)
	sw $t0, -2228($fp)
	li $t0, 31733
	sw $t0, -2232($fp)
	lw $t0, -2228($fp)
	lw $t1, -2232($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2236($fp)
	lw $t0, -2216($fp)
	lw $t1, -2236($fp)
	add $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $t1, -2240($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label154
label153:
	li $t0, 1
	sw $t0, -2176($fp)
label154:
	li $t0, 23739
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	sw $t0, -2252($fp)
	li $t0, 0
	sw $t0, -2256($fp)
	addi $t0, $fp, -232
	sw $t0, -2260($fp)
	li $t0, 8
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
	bne $t1, $t2, label162
	j label161
label161:
	li $t0, 1
	sw $t0, -2256($fp)
label162:
	addi $sp, $sp, -4
	lw $t0, -2256($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2280($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2284($fp)
	addi $t0, $fp, -232
	sw $t0, -2288($fp)
	li $t0, 4
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
	lw $t1, -2304($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label163
label163:
	li $t0, 1
	sw $t0, -2284($fp)
label164:
	lw $t0, -2280($fp)
	lw $t1, -2284($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2308($fp)
	lw $t0, -2248($fp)
	sw $t0, -2312($fp)
	lw $t0, -2308($fp)
	lw $t1, -2312($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2316($fp)
	lw $t1, -2316($fp)
	li $t2, 0
	bne $t1, $t2, label158
	j label159
label158:
	li $t0, 0
	sw $t0, -2320($fp)
	li $t0, 0
	sw $t0, -2324($fp)
	li $t0, 52479
	sw $t0, -2328($fp)
	lw $t1, -2328($fp)
	li $t2, 0
	bne $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -2324($fp)
label170:
	li $t0, 46873
	sw $t0, -2332($fp)
	lw $t0, -2324($fp)
	lw $t1, -2332($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2336($fp)
	lw $t1, -2336($fp)
	li $t2, 0
	bne $t1, $t2, label165
	j label168
label168:
	lw $t0, -528($fp)
	sw $t0, -2340($fp)
	lw $t1, -2340($fp)
	li $t2, 0
	bne $t1, $t2, label165
	j label167
label167:
	li $t0, 0
	sw $t0, -2344($fp)
	li $t0, 0
	sw $t0, -2348($fp)
	lw $t0, -1068($fp)
	sw $t0, -2352($fp)
	li $t0, 29780
	sw $t0, -2356($fp)
	lw $t1, -2352($fp)
	lw $t2, -2356($fp)
	ble $t1, $t2, label173
	j label174
label173:
	li $t0, 1
	sw $t0, -2348($fp)
label174:
	li $t0, 62157
	sw $t0, -2360($fp)
	lw $t1, -2348($fp)
	lw $t2, -2360($fp)
	blt $t1, $t2, label171
	j label172
label171:
	li $t0, 1
	sw $t0, -2344($fp)
label172:
	li $t0, 0
	sw $t0, -2364($fp)
	li $t0, 34219
	sw $t0, -2368($fp)
	lw $t0, -516($fp)
	sw $t0, -2372($fp)
	lw $t1, -2368($fp)
	lw $t2, -2372($fp)
	bgt $t1, $t2, label175
	j label176
label175:
	li $t0, 1
	sw $t0, -2364($fp)
label176:
	lw $t1, -2344($fp)
	lw $t2, -2364($fp)
	beq $t1, $t2, label165
	j label166
label165:
	li $t0, 1
	sw $t0, -2320($fp)
label166:
	j label160
label159:
	li $t0, 0
	sw $t0, -2376($fp)
	li $t0, 24703
	sw $t0, -2380($fp)
	lw $t0, -444($fp)
	sw $t0, -2384($fp)
	li $t0, 0
	lw $t1, -2384($fp)
	sub $t0, $t0, $t1
	sw $t0, -2388($fp)
	lw $t1, -2380($fp)
	lw $t2, -2388($fp)
	blt $t1, $t2, label177
	j label178
label177:
	li $t0, 1
	sw $t0, -2376($fp)
label178:
label160:
	lw $t0, -492($fp)
	sw $t0, -2392($fp)
	addi $sp, $sp, -4
	lw $t0, -2392($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2396($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -2400($fp)
	li $t0, 0
	sw $t0, -2404($fp)
	lw $t0, -1680($fp)
	sw $t0, -2408($fp)
	lw $t0, -1032($fp)
	sw $t0, -2412($fp)
	lw $t1, -2408($fp)
	lw $t2, -2412($fp)
	bne $t1, $t2, label179
	j label180
label179:
	li $t0, 1
	sw $t0, -2404($fp)
label180:
	li $t0, 4
	lw $t1, -2404($fp)
	mul $t0, $t0, $t1
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	lw $t1, -2400($fp)
	add $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	lw $t1, 0($t0)
	sw $t1, -2424($fp)
	lw $t0, -2396($fp)
	lw $t1, -2424($fp)
	sub $t0, $t0, $t1
	sw $t0, -2428($fp)
	li $t0, 0
	sw $t0, -2432($fp)
	li $t0, 0
	sw $t0, -2436($fp)
	addi $t0, $fp, -88
	sw $t0, -2440($fp)
	lw $t0, -540($fp)
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
	lw $t1, -2456($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label183
label183:
	li $t0, 1
	sw $t0, -2436($fp)
label184:
	li $t0, 0
	lw $t1, -2436($fp)
	sub $t0, $t0, $t1
	sw $t0, -2460($fp)
	li $t0, 0
	sw $t0, -2464($fp)
	lw $t0, -660($fp)
	sw $t0, -2468($fp)
	lw $t1, -2468($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label185
label185:
	li $t0, 1
	sw $t0, -2464($fp)
label186:
	lw $t1, -2460($fp)
	lw $t2, -2464($fp)
	bne $t1, $t2, label181
	j label182
label181:
	li $t0, 1
	sw $t0, -2432($fp)
label182:
	j label152
label151:
	li $t0, 0
	sw $t0, -2472($fp)
	lw $t0, -240($fp)
	sw $t0, -2476($fp)
	li $t0, 22085
	sw $t0, -2480($fp)
	li $t0, 64695
	sw $t0, -2484($fp)
	lw $t0, -2480($fp)
	lw $t1, -2484($fp)
	mul $t0, $t0, $t1
	sw $t0, -2488($fp)
	lw $t1, -2476($fp)
	lw $t2, -2488($fp)
	bge $t1, $t2, label189
	j label188
label189:
	lw $t0, -1932($fp)
	sw $t0, -2492($fp)
	lw $t1, -2492($fp)
	li $t2, 0
	bne $t1, $t2, label187
	j label188
label187:
	li $t0, 1
	sw $t0, -2472($fp)
label188:
label152:
	j label145
label144:
	li $t0, 49110
	sw $t0, -2536($fp)
	lw $t0, -2536($fp)
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	sw $t0, -2544($fp)
	li $t0, 31033
	sw $t0, -2548($fp)
	addi $t0, $fp, -2532
	sw $t0, -2552($fp)
	li $t0, 0
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2560($fp)
	lw $t0, -2552($fp)
	lw $t1, -2560($fp)
	add $t0, $t0, $t1
	sw $t0, -2564($fp)
	lw $t0, -2548($fp)
	lw $t1, -2564($fp)
	sw $t0, 0($t1)
	lw $t0, -2564($fp)
	lw $t1, 0($t0)
	sw $t1, -2568($fp)
	li $t0, 7347
	sw $t0, -2572($fp)
	addi $t0, $fp, -2532
	sw $t0, -2576($fp)
	li $t0, 1
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2584($fp)
	lw $t0, -2576($fp)
	lw $t1, -2584($fp)
	add $t0, $t0, $t1
	sw $t0, -2588($fp)
	lw $t0, -2572($fp)
	lw $t1, -2588($fp)
	sw $t0, 0($t1)
	lw $t0, -2588($fp)
	lw $t1, 0($t0)
	sw $t1, -2592($fp)
	li $t0, 50064
	sw $t0, -2596($fp)
	addi $t0, $fp, -2532
	sw $t0, -2600($fp)
	li $t0, 2
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2608($fp)
	lw $t0, -2600($fp)
	lw $t1, -2608($fp)
	add $t0, $t0, $t1
	sw $t0, -2612($fp)
	lw $t0, -2596($fp)
	lw $t1, -2612($fp)
	sw $t0, 0($t1)
	lw $t0, -2612($fp)
	lw $t1, 0($t0)
	sw $t1, -2616($fp)
	li $t0, 31221
	sw $t0, -2620($fp)
	addi $t0, $fp, -2532
	sw $t0, -2624($fp)
	li $t0, 3
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2632($fp)
	lw $t0, -2624($fp)
	lw $t1, -2632($fp)
	add $t0, $t0, $t1
	sw $t0, -2636($fp)
	lw $t0, -2620($fp)
	lw $t1, -2636($fp)
	sw $t0, 0($t1)
	lw $t0, -2636($fp)
	lw $t1, 0($t0)
	sw $t1, -2640($fp)
	li $t0, 16825
	sw $t0, -2644($fp)
	addi $t0, $fp, -2532
	sw $t0, -2648($fp)
	li $t0, 4
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2656($fp)
	lw $t0, -2648($fp)
	lw $t1, -2656($fp)
	add $t0, $t0, $t1
	sw $t0, -2660($fp)
	lw $t0, -2644($fp)
	lw $t1, -2660($fp)
	sw $t0, 0($t1)
	lw $t0, -2660($fp)
	lw $t1, 0($t0)
	sw $t1, -2664($fp)
	li $t0, 11133
	sw $t0, -2668($fp)
	addi $t0, $fp, -2532
	sw $t0, -2672($fp)
	li $t0, 5
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2680($fp)
	lw $t0, -2672($fp)
	lw $t1, -2680($fp)
	add $t0, $t0, $t1
	sw $t0, -2684($fp)
	lw $t0, -2668($fp)
	lw $t1, -2684($fp)
	sw $t0, 0($t1)
	lw $t0, -2684($fp)
	lw $t1, 0($t0)
	sw $t1, -2688($fp)
	li $t0, 58047
	sw $t0, -2692($fp)
	addi $t0, $fp, -2532
	sw $t0, -2696($fp)
	li $t0, 6
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2704($fp)
	lw $t0, -2696($fp)
	lw $t1, -2704($fp)
	add $t0, $t0, $t1
	sw $t0, -2708($fp)
	lw $t0, -2692($fp)
	lw $t1, -2708($fp)
	sw $t0, 0($t1)
	lw $t0, -2708($fp)
	lw $t1, 0($t0)
	sw $t1, -2712($fp)
	li $t0, 2319
	sw $t0, -2716($fp)
	addi $t0, $fp, -2532
	sw $t0, -2720($fp)
	li $t0, 7
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t0, -2720($fp)
	lw $t1, -2728($fp)
	add $t0, $t0, $t1
	sw $t0, -2732($fp)
	lw $t0, -2716($fp)
	lw $t1, -2732($fp)
	sw $t0, 0($t1)
	lw $t0, -2732($fp)
	lw $t1, 0($t0)
	sw $t1, -2736($fp)
	li $t0, 27767
	sw $t0, -2740($fp)
	addi $t0, $fp, -2532
	sw $t0, -2744($fp)
	li $t0, 8
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2752($fp)
	lw $t0, -2744($fp)
	lw $t1, -2752($fp)
	add $t0, $t0, $t1
	sw $t0, -2756($fp)
	lw $t0, -2740($fp)
	lw $t1, -2756($fp)
	sw $t0, 0($t1)
	lw $t0, -2756($fp)
	lw $t1, 0($t0)
	sw $t1, -2760($fp)
	li $t0, 19780
	sw $t0, -2764($fp)
	addi $t0, $fp, -2532
	sw $t0, -2768($fp)
	li $t0, 9
	sw $t0, -2772($fp)
	lw $t0, -2772($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2776($fp)
	lw $t0, -2768($fp)
	lw $t1, -2776($fp)
	add $t0, $t0, $t1
	sw $t0, -2780($fp)
	lw $t0, -2764($fp)
	lw $t1, -2780($fp)
	sw $t0, 0($t1)
	lw $t0, -2780($fp)
	lw $t1, 0($t0)
	sw $t1, -2784($fp)
	li $t0, 27689
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	sw $t0, -2796($fp)
	li $t0, 27274
	sw $t0, -2800($fp)
	lw $t0, -2800($fp)
	sw $t0, -2804($fp)
	lw $t0, -2804($fp)
	sw $t0, -2808($fp)
	li $t0, 23295
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	sw $t0, -2820($fp)
	lw $t0, -2540($fp)
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2532
	sw $t0, -2828($fp)
	li $t0, 0
	sw $t0, -2832($fp)
	li $t0, 4
	lw $t1, -2832($fp)
	mul $t0, $t0, $t1
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	lw $t1, -2828($fp)
	add $t0, $t0, $t1
	sw $t0, -2840($fp)
	lw $t0, -2840($fp)
	lw $t1, 0($t0)
	sw $t1, -2844($fp)
	lw $t0, -2844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2532
	sw $t0, -2848($fp)
	li $t0, 1
	sw $t0, -2852($fp)
	li $t0, 4
	lw $t1, -2852($fp)
	mul $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	lw $t1, -2848($fp)
	add $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	lw $t1, 0($t0)
	sw $t1, -2864($fp)
	lw $t0, -2864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2532
	sw $t0, -2868($fp)
	li $t0, 2
	sw $t0, -2872($fp)
	li $t0, 4
	lw $t1, -2872($fp)
	mul $t0, $t0, $t1
	sw $t0, -2876($fp)
	lw $t0, -2876($fp)
	lw $t1, -2868($fp)
	add $t0, $t0, $t1
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	lw $t1, 0($t0)
	sw $t1, -2884($fp)
	lw $t0, -2884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2532
	sw $t0, -2888($fp)
	li $t0, 3
	sw $t0, -2892($fp)
	li $t0, 4
	lw $t1, -2892($fp)
	mul $t0, $t0, $t1
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	lw $t1, -2888($fp)
	add $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $t0, -2900($fp)
	lw $t1, 0($t0)
	sw $t1, -2904($fp)
	lw $t0, -2904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2532
	sw $t0, -2908($fp)
	li $t0, 4
	sw $t0, -2912($fp)
	li $t0, 4
	lw $t1, -2912($fp)
	mul $t0, $t0, $t1
	sw $t0, -2916($fp)
	lw $t0, -2916($fp)
	lw $t1, -2908($fp)
	add $t0, $t0, $t1
	sw $t0, -2920($fp)
	lw $t0, -2920($fp)
	lw $t1, 0($t0)
	sw $t1, -2924($fp)
	lw $t0, -2924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2532
	sw $t0, -2928($fp)
	li $t0, 5
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
	lw $t0, -2944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2532
	sw $t0, -2948($fp)
	li $t0, 6
	sw $t0, -2952($fp)
	li $t0, 4
	lw $t1, -2952($fp)
	mul $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	lw $t1, -2948($fp)
	add $t0, $t0, $t1
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	lw $t1, 0($t0)
	sw $t1, -2964($fp)
	lw $t0, -2964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2532
	sw $t0, -2968($fp)
	li $t0, 7
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
	lw $t0, -2984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2532
	sw $t0, -2988($fp)
	li $t0, 8
	sw $t0, -2992($fp)
	li $t0, 4
	lw $t1, -2992($fp)
	mul $t0, $t0, $t1
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	lw $t1, -2988($fp)
	add $t0, $t0, $t1
	sw $t0, -3000($fp)
	lw $t0, -3000($fp)
	lw $t1, 0($t0)
	sw $t1, -3004($fp)
	lw $t0, -3004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2532
	sw $t0, -3008($fp)
	li $t0, 9
	sw $t0, -3012($fp)
	li $t0, 4
	lw $t1, -3012($fp)
	mul $t0, $t0, $t1
	sw $t0, -3016($fp)
	lw $t0, -3016($fp)
	lw $t1, -3008($fp)
	add $t0, $t0, $t1
	sw $t0, -3020($fp)
	lw $t0, -3020($fp)
	lw $t1, 0($t0)
	sw $t1, -3024($fp)
	lw $t0, -3024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2792($fp)
	sw $t0, -3028($fp)
	lw $t0, -3028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2804($fp)
	sw $t0, -3032($fp)
	lw $t0, -3032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2816($fp)
	sw $t0, -3036($fp)
	lw $t0, -3036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -3040($fp)
	li $t0, 4206
	sw $t0, -3044($fp)
	lw $t0, -3040($fp)
	lw $t1, -3044($fp)
	mul $t0, $t0, $t1
	sw $t0, -3048($fp)
	li $t0, 0
	sw $t0, -3052($fp)
	li $t0, 59081
	sw $t0, -3056($fp)
	addi $t0, $fp, -100
	sw $t0, -3060($fp)
	li $t0, 0
	sw $t0, -3064($fp)
	lw $t0, -564($fp)
	sw $t0, -3068($fp)
	lw $t0, -2816($fp)
	sw $t0, -3072($fp)
	lw $t1, -3068($fp)
	lw $t2, -3072($fp)
	bne $t1, $t2, label192
	j label193
label192:
	li $t0, 1
	sw $t0, -3064($fp)
label193:
	li $t0, 4
	lw $t1, -3064($fp)
	mul $t0, $t0, $t1
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	lw $t1, -3060($fp)
	add $t0, $t0, $t1
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	lw $t1, 0($t0)
	sw $t1, -3084($fp)
	lw $t0, -3056($fp)
	lw $t1, -3084($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3088($fp)
	li $t0, 0
	lw $t1, -3088($fp)
	sub $t0, $t0, $t1
	sw $t0, -3092($fp)
	lw $t1, -3092($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label190
label190:
	li $t0, 1
	sw $t0, -3052($fp)
label191:
	lw $t0, -3048($fp)
	lw $t1, -3052($fp)
	mul $t0, $t0, $t1
	sw $t0, -3096($fp)
	li $t0, 0
	lw $t1, -3096($fp)
	sub $t0, $t0, $t1
	sw $t0, -3100($fp)
	li $t0, 0
	lw $t1, -3100($fp)
	sub $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $ra, -4($fp)
	lw $v0, -3104($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -36
	sw $t0, -3108($fp)
	li $t0, 0
	sw $t0, -3112($fp)
	li $t0, 55028
	sw $t0, -3116($fp)
	lw $t1, -3116($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label195
label196:
	lw $t0, -1428($fp)
	sw $t0, -3120($fp)
	li $t0, 0
	lw $t1, -3120($fp)
	sub $t0, $t0, $t1
	sw $t0, -3124($fp)
	lw $t1, -3124($fp)
	li $t2, 0
	bne $t1, $t2, label194
	j label195
label194:
	li $t0, 1
	sw $t0, -3112($fp)
label195:
	li $t0, 4
	lw $t1, -3112($fp)
	mul $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	lw $t1, -3108($fp)
	add $t0, $t0, $t1
	sw $t0, -3132($fp)
	lw $t0, -3132($fp)
	lw $t1, 0($t0)
	sw $t1, -3136($fp)
	li $t0, 0
	sw $t0, -3140($fp)
	li $t0, 27945
	sw $t0, -3144($fp)
	lw $t1, -3144($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label197
label197:
	li $t0, 1
	sw $t0, -3140($fp)
label198:
	li $t0, 0
	sw $t0, -3148($fp)
	lw $t0, -1656($fp)
	sw $t0, -3152($fp)
	lw $t1, -3152($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label199
label199:
	li $t0, 1
	sw $t0, -3148($fp)
label200:
	li $t0, 0
	lw $t1, -3148($fp)
	sub $t0, $t0, $t1
	sw $t0, -3156($fp)
	li $t0, 0
	lw $t1, -3156($fp)
	sub $t0, $t0, $t1
	sw $t0, -3160($fp)
	li $t0, 0
	sw $t0, -3164($fp)
	lw $t0, -2792($fp)
	sw $t0, -3168($fp)
	lw $t1, -3168($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label201
label201:
	li $t0, 1
	sw $t0, -3164($fp)
label202:
	lw $t0, -3160($fp)
	lw $t1, -3164($fp)
	add $t0, $t0, $t1
	sw $t0, -3172($fp)
label203:
	li $t0, 0
	sw $t0, -3176($fp)
	lw $t0, -660($fp)
	sw $t0, -3180($fp)
	li $t0, 48419
	sw $t0, -3184($fp)
	lw $t0, -3180($fp)
	lw $t1, -3184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3188($fp)
	li $t0, 57526
	sw $t0, -3192($fp)
	lw $t1, -3188($fp)
	lw $t2, -3192($fp)
	ble $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -3176($fp)
label207:
	addi $sp, $sp, -4
	lw $t0, -3176($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3196($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -3196($fp)
	sub $t0, $t0, $t1
	sw $t0, -3200($fp)
	lw $t1, -3200($fp)
	li $t2, 0
	bne $t1, $t2, label204
	j label205
label204:
	lw $t0, -2540($fp)
	sw $t0, -3204($fp)
	j label203
label205:
	li $t0, 63967
	sw $t0, -3208($fp)
	lw $t1, -3208($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label209
label208:
	addi $t0, $fp, -2532
	sw $t0, -3212($fp)
	lw $t0, -2804($fp)
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
	addi $sp, $sp, -4
	lw $t0, -3228($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3232($fp)
	addi $sp, $sp, 8
	li $t0, 51802
	sw $t0, -3236($fp)
	lw $t0, -3232($fp)
	lw $t1, -3236($fp)
	mul $t0, $t0, $t1
	sw $t0, -3240($fp)
	j label210
label209:
	addi $t0, $fp, -232
	sw $t0, -3244($fp)
	li $t0, 0
	sw $t0, -3248($fp)
	addi $t0, $fp, -32
	sw $t0, -3252($fp)
	lw $t0, 4($fp)
	sw $t0, -3256($fp)
	li $t0, 4
	lw $t1, -3256($fp)
	mul $t0, $t0, $t1
	sw $t0, -3260($fp)
	lw $t0, -3260($fp)
	lw $t1, -3252($fp)
	add $t0, $t0, $t1
	sw $t0, -3264($fp)
	lw $t0, -3264($fp)
	lw $t1, 0($t0)
	sw $t1, -3268($fp)
	lw $t1, -3268($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label213
label213:
	lw $t0, -1032($fp)
	sw $t0, -3272($fp)
	li $t0, 44469
	sw $t0, -3276($fp)
	lw $t1, -3272($fp)
	lw $t2, -3276($fp)
	bne $t1, $t2, label211
	j label212
label211:
	li $t0, 1
	sw $t0, -3248($fp)
label212:
	li $t0, 4
	lw $t1, -3248($fp)
	mul $t0, $t0, $t1
	sw $t0, -3280($fp)
	lw $t0, -3280($fp)
	lw $t1, -3244($fp)
	add $t0, $t0, $t1
	sw $t0, -3284($fp)
	lw $t0, -3284($fp)
	lw $t1, 0($t0)
	sw $t1, -3288($fp)
label210:
label145:
	j label140
label142:
	j label136
label135:
	li $t0, 0
	sw $t0, -3292($fp)
	li $t0, 0
	sw $t0, -3296($fp)
	li $t0, 0
	sw $t0, -3300($fp)
	li $t0, 0
	sw $t0, -3304($fp)
	lw $t0, -708($fp)
	sw $t0, -3308($fp)
	lw $t1, -3308($fp)
	li $t2, 0
	bne $t1, $t2, label221
	j label224
label224:
	li $t0, 65073
	sw $t0, -3312($fp)
	lw $t1, -3312($fp)
	li $t2, 0
	bne $t1, $t2, label221
	j label223
label223:
	li $t0, 33138
	sw $t0, -3316($fp)
	lw $t1, -3316($fp)
	li $t2, 0
	bne $t1, $t2, label221
	j label222
label221:
	li $t0, 1
	sw $t0, -3304($fp)
label222:
	addi $sp, $sp, -4
	lw $t0, -3304($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3320($fp)
	addi $sp, $sp, 8
	li $t0, 8713
	sw $t0, -3324($fp)
	lw $t1, -3320($fp)
	lw $t2, -3324($fp)
	bge $t1, $t2, label219
	j label220
label219:
	li $t0, 1
	sw $t0, -3300($fp)
label220:
	li $t0, 61694
	sw $t0, -3328($fp)
	lw $t1, -3300($fp)
	lw $t2, -3328($fp)
	bgt $t1, $t2, label217
	j label218
label217:
	li $t0, 1
	sw $t0, -3296($fp)
label218:
	li $t0, 0
	sw $t0, -3332($fp)
	li $t0, 1821
	sw $t0, -3336($fp)
	lw $t1, -3336($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label225
label225:
	li $t0, 1
	sw $t0, -3332($fp)
label226:
	lw $t1, -3296($fp)
	lw $t2, -3332($fp)
	beq $t1, $t2, label214
	j label216
label216:
	li $t0, 33417
	sw $t0, -3340($fp)
	lw $t1, -3340($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label215
label214:
	li $t0, 1
	sw $t0, -3292($fp)
label215:
label136:
	j label133
label132:
	li $t0, 0
	sw $t0, -3344($fp)
	lw $t0, -1032($fp)
	sw $t0, -3348($fp)
	lw $t1, -3348($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label227
label229:
	li $t0, 18244
	sw $t0, -3352($fp)
	li $t0, 16992
	sw $t0, -3356($fp)
	lw $t0, -3352($fp)
	lw $t1, -3356($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3360($fp)
	lw $t1, -3360($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label228
label227:
	li $t0, 1
	sw $t0, -3344($fp)
label228:
	lw $ra, -4($fp)
	lw $v0, -3344($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label133:
	j label123
label122:
label230:
	lw $t0, -432($fp)
	sw $t0, -3364($fp)
	lw $t1, -3364($fp)
	li $t2, 0
	bne $t1, $t2, label231
	j label232
label231:
	addi $t0, $fp, -120
	sw $t0, -3368($fp)
	lw $t0, -1668($fp)
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
	li $t0, 0
	lw $t1, -3384($fp)
	sub $t0, $t0, $t1
	sw $t0, -3388($fp)
	addi $sp, $sp, -4
	lw $t0, -3388($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3392($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -3392($fp)
	sub $t0, $t0, $t1
	sw $t0, -3396($fp)
	lw $ra, -4($fp)
	lw $v0, -3396($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label230
label232:
label123:
	li $t0, 49277
	sw $t0, -3428($fp)
	lw $t0, -3428($fp)
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	sw $t0, -3436($fp)
	li $t0, 8327
	sw $t0, -3440($fp)
	lw $t0, -3440($fp)
	sw $t0, -3444($fp)
	lw $t0, -3444($fp)
	sw $t0, -3448($fp)
	li $t0, 1519
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	sw $t0, -3456($fp)
	lw $t0, -3456($fp)
	sw $t0, -3460($fp)
	li $t0, 14962
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	sw $t0, -3468($fp)
	lw $t0, -3468($fp)
	sw $t0, -3472($fp)
	li $t0, 25153
	sw $t0, -3476($fp)
	addi $t0, $fp, -3424
	sw $t0, -3480($fp)
	li $t0, 0
	sw $t0, -3484($fp)
	lw $t0, -3484($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3488($fp)
	lw $t0, -3480($fp)
	lw $t1, -3488($fp)
	add $t0, $t0, $t1
	sw $t0, -3492($fp)
	lw $t0, -3476($fp)
	lw $t1, -3492($fp)
	sw $t0, 0($t1)
	lw $t0, -3492($fp)
	lw $t1, 0($t0)
	sw $t1, -3496($fp)
	li $t0, 12652
	sw $t0, -3500($fp)
	addi $t0, $fp, -3424
	sw $t0, -3504($fp)
	li $t0, 1
	sw $t0, -3508($fp)
	lw $t0, -3508($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3512($fp)
	lw $t0, -3504($fp)
	lw $t1, -3512($fp)
	add $t0, $t0, $t1
	sw $t0, -3516($fp)
	lw $t0, -3500($fp)
	lw $t1, -3516($fp)
	sw $t0, 0($t1)
	lw $t0, -3516($fp)
	lw $t1, 0($t0)
	sw $t1, -3520($fp)
	li $t0, 7473
	sw $t0, -3524($fp)
	addi $t0, $fp, -3424
	sw $t0, -3528($fp)
	li $t0, 2
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3536($fp)
	lw $t0, -3528($fp)
	lw $t1, -3536($fp)
	add $t0, $t0, $t1
	sw $t0, -3540($fp)
	lw $t0, -3524($fp)
	lw $t1, -3540($fp)
	sw $t0, 0($t1)
	lw $t0, -3540($fp)
	lw $t1, 0($t0)
	sw $t1, -3544($fp)
	li $t0, 27472
	sw $t0, -3548($fp)
	addi $t0, $fp, -3424
	sw $t0, -3552($fp)
	li $t0, 3
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
	li $t0, 40420
	sw $t0, -3572($fp)
	addi $t0, $fp, -3424
	sw $t0, -3576($fp)
	li $t0, 4
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
	li $t0, 27253
	sw $t0, -3596($fp)
	addi $t0, $fp, -3424
	sw $t0, -3600($fp)
	li $t0, 5
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
	li $t0, 55161
	sw $t0, -3620($fp)
	addi $t0, $fp, -3424
	sw $t0, -3624($fp)
	li $t0, 6
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
	li $t0, 2158
	sw $t0, -3644($fp)
	lw $t0, -3644($fp)
	sw $t0, -3648($fp)
	lw $t0, -3648($fp)
	sw $t0, -3652($fp)
	li $t0, 50548
	sw $t0, -3656($fp)
	lw $t0, -3656($fp)
	sw $t0, -3660($fp)
	lw $t0, -3660($fp)
	sw $t0, -3664($fp)
	li $t0, 59367
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	sw $t0, -3672($fp)
	lw $t0, -3672($fp)
	sw $t0, -3676($fp)
	li $t0, 61239
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	sw $t0, -3688($fp)
	li $t0, 40041
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	sw $t0, -3700($fp)
	li $t0, 21776
	sw $t0, -3704($fp)
	lw $t0, -3704($fp)
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	sw $t0, -3712($fp)
	li $t0, 0
	sw $t0, -3716($fp)
	lw $t0, -3684($fp)
	sw $t0, -3720($fp)
	lw $t0, -648($fp)
	sw $t0, -3724($fp)
	lw $t0, -3720($fp)
	lw $t1, -3724($fp)
	add $t0, $t0, $t1
	sw $t0, -3728($fp)
	addi $t0, $fp, -232
	sw $t0, -3732($fp)
	lw $t0, -552($fp)
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
	lw $t0, -3728($fp)
	lw $t1, -3748($fp)
	add $t0, $t0, $t1
	sw $t0, -3752($fp)
	lw $t0, -444($fp)
	sw $t0, -3756($fp)
	lw $t0, 4($fp)
	sw $t0, -3760($fp)
	lw $t0, -3756($fp)
	lw $t1, -3760($fp)
	mul $t0, $t0, $t1
	sw $t0, -3764($fp)
	li $t0, 0
	lw $t1, -3764($fp)
	sub $t0, $t0, $t1
	sw $t0, -3768($fp)
	lw $t1, -3752($fp)
	lw $t2, -3768($fp)
	ble $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -3716($fp)
label237:
	lw $t0, -1656($fp)
	sw $t0, -3772($fp)
	li $t0, 44123
	sw $t0, -3776($fp)
	li $t0, 0
	lw $t1, -3776($fp)
	sub $t0, $t0, $t1
	sw $t0, -3780($fp)
	lw $t0, -3772($fp)
	lw $t1, -3780($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3784($fp)
	lw $t1, -3716($fp)
	lw $t2, -3784($fp)
	bne $t1, $t2, label233
	j label234
label233:
	li $t0, 0
	sw $t0, -3788($fp)
	li $t0, 0
	sw $t0, -3792($fp)
	lw $t0, -660($fp)
	sw $t0, -3796($fp)
	lw $t0, -660($fp)
	sw $t0, -3800($fp)
	lw $t0, -3796($fp)
	lw $t1, -3800($fp)
	sub $t0, $t0, $t1
	sw $t0, -3804($fp)
	li $t0, 32031
	sw $t0, -3808($fp)
	lw $t0, -3804($fp)
	lw $t1, -3808($fp)
	sub $t0, $t0, $t1
	sw $t0, -3812($fp)
	addi $sp, $sp, -4
	lw $t0, -3812($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3816($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -3816($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3820($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -3820($fp)
	sub $t0, $t0, $t1
	sw $t0, -3824($fp)
	li $t0, 0
	sw $t0, -3828($fp)
	li $t0, 20208
	sw $t0, -3832($fp)
	li $t0, 30389
	sw $t0, -3836($fp)
	lw $t1, -3832($fp)
	lw $t2, -3836($fp)
	beq $t1, $t2, label245
	j label247
label247:
	lw $t0, -1032($fp)
	sw $t0, -3840($fp)
	lw $t1, -3840($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label246
label245:
	li $t0, 1
	sw $t0, -3828($fp)
label246:
	addi $sp, $sp, -4
	lw $t0, -3828($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3844($fp)
	addi $sp, $sp, 8
	lw $t1, -3824($fp)
	lw $t2, -3844($fp)
	bge $t1, $t2, label243
	j label244
label243:
	li $t0, 1
	sw $t0, -3792($fp)
label244:
	lw $t0, -3444($fp)
	sw $t0, -3848($fp)
	lw $t1, -3792($fp)
	lw $t2, -3848($fp)
	ble $t1, $t2, label241
	j label242
label241:
	li $t0, 1
	sw $t0, -3788($fp)
label242:
	addi $t0, $fp, -120
	sw $t0, -3852($fp)
	lw $t0, -3444($fp)
	sw $t0, -3856($fp)
	li $t0, 4
	lw $t1, -3856($fp)
	mul $t0, $t0, $t1
	sw $t0, -3860($fp)
	lw $t0, -3860($fp)
	lw $t1, -3852($fp)
	add $t0, $t0, $t1
	sw $t0, -3864($fp)
	lw $t0, -3864($fp)
	lw $t1, 0($t0)
	sw $t1, -3868($fp)
	li $t0, 10965
	sw $t0, -3872($fp)
	lw $t0, -3868($fp)
	lw $t1, -3872($fp)
	mul $t0, $t0, $t1
	sw $t0, -3876($fp)
	li $t0, 19745
	sw $t0, -3880($fp)
	li $t0, 63527
	sw $t0, -3884($fp)
	lw $t0, -3880($fp)
	lw $t1, -3884($fp)
	mul $t0, $t0, $t1
	sw $t0, -3888($fp)
	lw $t0, -3876($fp)
	lw $t1, -3888($fp)
	add $t0, $t0, $t1
	sw $t0, -3892($fp)
	lw $t1, -3788($fp)
	lw $t2, -3892($fp)
	ble $t1, $t2, label238
	j label239
label238:
	li $t0, 0
	sw $t0, -3896($fp)
	li $t0, 0
	sw $t0, -3900($fp)
	li $t0, 19678
	sw $t0, -3904($fp)
	li $t0, 0
	lw $t1, -3904($fp)
	sub $t0, $t0, $t1
	sw $t0, -3908($fp)
	li $t0, 0
	lw $t1, -3908($fp)
	sub $t0, $t0, $t1
	sw $t0, -3912($fp)
	addi $sp, $sp, -4
	lw $t0, -3912($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3916($fp)
	addi $sp, $sp, 8
	lw $t0, -3672($fp)
	sw $t0, -3920($fp)
	lw $t0, -516($fp)
	sw $t0, -3924($fp)
	lw $t0, -3920($fp)
	lw $t1, -3924($fp)
	mul $t0, $t0, $t1
	sw $t0, -3928($fp)
	li $t0, 15903
	sw $t0, -3932($fp)
	lw $t0, -3928($fp)
	lw $t1, -3932($fp)
	mul $t0, $t0, $t1
	sw $t0, -3936($fp)
	lw $t1, -3916($fp)
	lw $t2, -3936($fp)
	ble $t1, $t2, label250
	j label251
label250:
	li $t0, 1
	sw $t0, -3900($fp)
label251:
	li $t0, 65348
	sw $t0, -3940($fp)
	lw $t0, -456($fp)
	sw $t0, -3944($fp)
	lw $t0, -3940($fp)
	lw $t1, -3944($fp)
	mul $t0, $t0, $t1
	sw $t0, -3948($fp)
	li $t0, 34148
	sw $t0, -3952($fp)
	lw $t0, -3948($fp)
	lw $t1, -3952($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3956($fp)
	li $t0, 0
	lw $t1, -3956($fp)
	sub $t0, $t0, $t1
	sw $t0, -3960($fp)
	lw $t1, -3900($fp)
	lw $t2, -3960($fp)
	beq $t1, $t2, label248
	j label249
label248:
	li $t0, 1
	sw $t0, -3896($fp)
label249:
	j label240
label239:
	li $t0, 0
	sw $t0, -3964($fp)
	li $t0, 0
	sw $t0, -3968($fp)
	addi $t0, $fp, -52
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
	lw $t1, -3988($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label255
label255:
	li $t0, 1
	sw $t0, -3968($fp)
label256:
	li $t0, 17888
	sw $t0, -3992($fp)
	li $t0, 0
	lw $t1, -3992($fp)
	sub $t0, $t0, $t1
	sw $t0, -3996($fp)
	li $t0, 0
	lw $t1, -3996($fp)
	sub $t0, $t0, $t1
	sw $t0, -4000($fp)
	lw $t0, -3968($fp)
	lw $t1, -4000($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4004($fp)
	lw $t1, -4004($fp)
	li $t2, 0
	bne $t1, $t2, label254
	j label253
label254:
	lw $t0, -3696($fp)
	sw $t0, -4008($fp)
	li $t0, 9120
	sw $t0, -4012($fp)
	li $t0, 6070
	sw $t0, -4016($fp)
	lw $t0, -4012($fp)
	lw $t1, -4016($fp)
	sub $t0, $t0, $t1
	sw $t0, -4020($fp)
	lw $t1, -4008($fp)
	lw $t2, -4020($fp)
	beq $t1, $t2, label252
	j label253
label252:
	li $t0, 1
	sw $t0, -3964($fp)
label253:
label240:
label234:
	lw $t0, -252($fp)
	sw $t0, -4024($fp)
	li $t0, 32850
	sw $t0, -4028($fp)
	lw $t0, -4024($fp)
	lw $t1, -4028($fp)
	mul $t0, $t0, $t1
	sw $t0, -4032($fp)
	li $t0, 0
	lw $t1, -4032($fp)
	sub $t0, $t0, $t1
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -4040($fp)
	lw $t1, -4040($fp)
	li $t2, 0
	bne $t1, $t2, label257
	j label258
label257:
	lw $t0, -528($fp)
	sw $t0, -4044($fp)
	li $t0, 0
	sw $t0, -4048($fp)
	li $t0, 34273
	sw $t0, -4052($fp)
	lw $t0, -3708($fp)
	sw $t0, -4056($fp)
	lw $t0, -4052($fp)
	lw $t1, -4056($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4060($fp)
	lw $t0, -432($fp)
	sw $t0, -4064($fp)
	lw $t0, -4060($fp)
	lw $t1, -4064($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4068($fp)
	addi $sp, $sp, -4
	lw $t0, -4068($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4072($fp)
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -4076($fp)
	lw $t1, -4072($fp)
	lw $t2, -4076($fp)
	beq $t1, $t2, label260
	j label261
label260:
	li $t0, 1
	sw $t0, -4048($fp)
label261:
	addi $sp, $sp, -4
	lw $t0, -4048($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4080($fp)
	addi $sp, $sp, 8
	lw $t0, -4044($fp)
	lw $t1, -4080($fp)
	mul $t0, $t0, $t1
	sw $t0, -4084($fp)
	lw $ra, -4($fp)
	lw $v0, -4084($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label258:
	li $t0, 0
	sw $t0, -4088($fp)
	addi $t0, $fp, -32
	sw $t0, -4092($fp)
	lw $t0, -432($fp)
	sw $t0, -4096($fp)
	li $t0, 0
	lw $t1, -4096($fp)
	sub $t0, $t0, $t1
	sw $t0, -4100($fp)
	li $t0, 4
	lw $t1, -4100($fp)
	mul $t0, $t0, $t1
	sw $t0, -4104($fp)
	lw $t0, -4104($fp)
	lw $t1, -4092($fp)
	add $t0, $t0, $t1
	sw $t0, -4108($fp)
	lw $t0, -4108($fp)
	lw $t1, 0($t0)
	sw $t1, -4112($fp)
	lw $t1, -4112($fp)
	li $t2, 0
	bne $t1, $t2, label264
	j label263
label264:
	li $t0, 0
	sw $t0, -4116($fp)
	li $t0, 18723
	sw $t0, -4120($fp)
	li $t0, 40324
	sw $t0, -4124($fp)
	lw $t0, -4120($fp)
	lw $t1, -4124($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4128($fp)
	lw $t0, -1044($fp)
	sw $t0, -4132($fp)
	lw $t1, -4128($fp)
	lw $t2, -4132($fp)
	bne $t1, $t2, label265
	j label266
label265:
	li $t0, 1
	sw $t0, -4116($fp)
label266:
	addi $sp, $sp, -4
	lw $t0, -4116($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4136($fp)
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -4140($fp)
	lw $t0, -4136($fp)
	lw $t1, -4140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4144($fp)
	lw $t1, -4144($fp)
	li $t2, 0
	bne $t1, $t2, label262
	j label263
label262:
	li $t0, 1
	sw $t0, -4088($fp)
label263:
	lw $t0, -3672($fp)
	sw $t0, -4148($fp)
	lw $t0, -4148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3684($fp)
	sw $t0, -4152($fp)
	lw $t0, -4152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3696($fp)
	sw $t0, -4156($fp)
	lw $t0, -4156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3708($fp)
	sw $t0, -4160($fp)
	lw $t0, -4160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4164($fp)
	lw $t0, -672($fp)
	sw $t0, -4168($fp)
	li $t0, 61745
	sw $t0, -4172($fp)
	lw $t0, -4168($fp)
	lw $t1, -4172($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4176($fp)
	li $t0, 59143
	sw $t0, -4180($fp)
	lw $t1, -4176($fp)
	lw $t2, -4180($fp)
	bgt $t1, $t2, label267
	j label268
label267:
	li $t0, 1
	sw $t0, -4164($fp)
label268:
	addi $sp, $sp, -4
	lw $t0, -4164($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4184($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -4184($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4188($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -4188($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4192($fp)
	addi $sp, $sp, 8
	li $t0, 2041
	sw $t0, -4196($fp)
	li $t0, 0
	lw $t1, -4196($fp)
	sub $t0, $t0, $t1
	sw $t0, -4200($fp)
	lw $t0, -4192($fp)
	lw $t1, -4200($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4204($fp)
	lw $t0, -4204($fp)
	sw $t0, -3672($fp)
	lw $t0, -3672($fp)
	sw $t0, -4208($fp)
	lw $ra, -4($fp)
	lw $v0, -4208($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label269:
	li $t0, 51370
	sw $t0, -4212($fp)
	li $t0, 0
	lw $t1, -4212($fp)
	sub $t0, $t0, $t1
	sw $t0, -4216($fp)
	lw $t1, -4216($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label271
label270:
	li $t0, 61301
	sw $t0, -4220($fp)
	li $t0, 0
	lw $t1, -4220($fp)
	sub $t0, $t0, $t1
	sw $t0, -4224($fp)
	addi $sp, $sp, -4
	lw $t0, -4224($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4228($fp)
	addi $sp, $sp, 8
	j label269
label271:
	li $t0, 0
	sw $t0, -4232($fp)
	addi $t0, $fp, -32
	sw $t0, -4236($fp)
	li $t0, 0
	sw $t0, -4240($fp)
	lw $t0, 4($fp)
	sw $t0, -4244($fp)
	lw $t0, -684($fp)
	sw $t0, -4248($fp)
	lw $t1, -4244($fp)
	lw $t2, -4248($fp)
	blt $t1, $t2, label275
	j label276
label275:
	li $t0, 1
	sw $t0, -4240($fp)
label276:
	li $t0, 4
	lw $t1, -4240($fp)
	mul $t0, $t0, $t1
	sw $t0, -4252($fp)
	lw $t0, -4252($fp)
	lw $t1, -4236($fp)
	add $t0, $t0, $t1
	sw $t0, -4256($fp)
	lw $t0, -4256($fp)
	lw $t1, 0($t0)
	sw $t1, -4260($fp)
	lw $t0, -708($fp)
	sw $t0, -4264($fp)
	lw $t0, -444($fp)
	sw $t0, -4268($fp)
	lw $t0, -4264($fp)
	lw $t1, -4268($fp)
	add $t0, $t0, $t1
	sw $t0, -4272($fp)
	li $t0, 52590
	sw $t0, -4276($fp)
	lw $t0, -4272($fp)
	lw $t1, -4276($fp)
	add $t0, $t0, $t1
	sw $t0, -4280($fp)
	lw $t1, -4260($fp)
	lw $t2, -4280($fp)
	blt $t1, $t2, label272
	j label274
label274:
	li $t0, 45201
	sw $t0, -4284($fp)
	lw $t1, -4284($fp)
	li $t2, 0
	bne $t1, $t2, label272
	j label273
label272:
	li $t0, 1
	sw $t0, -4232($fp)
label273:
label277:
	lw $t0, -240($fp)
	sw $t0, -4288($fp)
	lw $t0, -3432($fp)
	sw $t0, -4292($fp)
	li $t0, 0
	sw $t0, -4296($fp)
	lw $t0, -1044($fp)
	sw $t0, -4300($fp)
	lw $t1, -4300($fp)
	li $t2, 0
	bne $t1, $t2, label283
	j label281
label283:
	li $t0, 57005
	sw $t0, -4304($fp)
	lw $t1, -4304($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label281
label282:
	lw $t0, -1080($fp)
	sw $t0, -4308($fp)
	lw $t1, -4308($fp)
	li $t2, 0
	bne $t1, $t2, label280
	j label281
label280:
	li $t0, 1
	sw $t0, -4296($fp)
label281:
	addi $sp, $sp, -4
	lw $t0, -4296($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4312($fp)
	addi $sp, $sp, 8
	lw $t0, -4292($fp)
	lw $t1, -4312($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4316($fp)
	lw $t0, -4288($fp)
	lw $t1, -4316($fp)
	sub $t0, $t0, $t1
	sw $t0, -4320($fp)
	lw $t1, -4320($fp)
	li $t2, 0
	bne $t1, $t2, label278
	j label279
label278:
	li $t0, 27095
	sw $t0, -4324($fp)
	li $t0, 0
	sw $t0, -4328($fp)
	lw $t0, -3444($fp)
	sw $t0, -4332($fp)
	lw $t1, -4332($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label288
label288:
	li $t0, 1
	sw $t0, -4328($fp)
label289:
	lw $t1, -4324($fp)
	lw $t2, -4328($fp)
	bgt $t1, $t2, label287
	j label285
label287:
	addi $t0, $fp, -32
	sw $t0, -4336($fp)
	li $t0, 0
	sw $t0, -4340($fp)
	lw $t0, -540($fp)
	sw $t0, -4344($fp)
	lw $t1, -4344($fp)
	li $t2, 0
	bne $t1, $t2, label292
	j label291
label292:
	li $t0, 1441
	sw $t0, -4348($fp)
	lw $t1, -4348($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label291
label290:
	li $t0, 1
	sw $t0, -4340($fp)
label291:
	li $t0, 4
	lw $t1, -4340($fp)
	mul $t0, $t0, $t1
	sw $t0, -4352($fp)
	lw $t0, -4352($fp)
	lw $t1, -4336($fp)
	add $t0, $t0, $t1
	sw $t0, -4356($fp)
	lw $t0, -4356($fp)
	lw $t1, 0($t0)
	sw $t1, -4360($fp)
	lw $t1, -4360($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label285
label284:
	li $t0, 0
	sw $t0, -4364($fp)
	li $t0, 0
	sw $t0, -4368($fp)
	lw $t0, -3468($fp)
	sw $t0, -4372($fp)
	lw $t1, -4372($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label296
label296:
	li $t0, 1
	sw $t0, -4368($fp)
label297:
	li $t0, 35592
	sw $t0, -4376($fp)
	li $t0, 0
	lw $t1, -4376($fp)
	sub $t0, $t0, $t1
	sw $t0, -4380($fp)
	lw $t0, -4368($fp)
	lw $t1, -4380($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4384($fp)
	li $t0, 59126
	sw $t0, -4388($fp)
	li $t0, 21649
	sw $t0, -4392($fp)
	lw $t0, -4388($fp)
	lw $t1, -4392($fp)
	mul $t0, $t0, $t1
	sw $t0, -4396($fp)
	lw $t1, -4384($fp)
	lw $t2, -4396($fp)
	beq $t1, $t2, label293
	j label295
label295:
	addi $t0, $fp, -32
	sw $t0, -4400($fp)
	lw $t0, 4($fp)
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
	li $t0, 0
	lw $t1, -4416($fp)
	sub $t0, $t0, $t1
	sw $t0, -4420($fp)
	addi $sp, $sp, -4
	lw $t0, -4420($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4424($fp)
	addi $sp, $sp, 8
	lw $t1, -4424($fp)
	li $t2, 0
	bne $t1, $t2, label298
	j label294
label298:
	li $t0, 445
	sw $t0, -4428($fp)
	lw $t1, -4428($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label294
label293:
	li $t0, 1
	sw $t0, -4364($fp)
label294:
	lw $ra, -4($fp)
	lw $v0, -4364($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label286
label285:
	li $t0, 0
	sw $t0, -4432($fp)
	addi $t0, $fp, -156
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
	lw $t1, -4452($fp)
	li $t2, 0
	bne $t1, $t2, label300
	j label299
label299:
	li $t0, 1
	sw $t0, -4432($fp)
label300:
	addi $sp, $sp, -4
	lw $t0, -4432($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4456($fp)
	addi $sp, $sp, 8
label286:
	j label277
label279:
	lw $t0, -3432($fp)
	sw $t0, -4460($fp)
	lw $t0, -4460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3444($fp)
	sw $t0, -4464($fp)
	lw $t0, -4464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3456($fp)
	sw $t0, -4468($fp)
	lw $t0, -4468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3468($fp)
	sw $t0, -4472($fp)
	lw $t0, -4472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3424
	sw $t0, -4476($fp)
	li $t0, 0
	sw $t0, -4480($fp)
	li $t0, 4
	lw $t1, -4480($fp)
	mul $t0, $t0, $t1
	sw $t0, -4484($fp)
	lw $t0, -4484($fp)
	lw $t1, -4476($fp)
	add $t0, $t0, $t1
	sw $t0, -4488($fp)
	lw $t0, -4488($fp)
	lw $t1, 0($t0)
	sw $t1, -4492($fp)
	lw $t0, -4492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3424
	sw $t0, -4496($fp)
	li $t0, 1
	sw $t0, -4500($fp)
	li $t0, 4
	lw $t1, -4500($fp)
	mul $t0, $t0, $t1
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	lw $t1, -4496($fp)
	add $t0, $t0, $t1
	sw $t0, -4508($fp)
	lw $t0, -4508($fp)
	lw $t1, 0($t0)
	sw $t1, -4512($fp)
	lw $t0, -4512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3424
	sw $t0, -4516($fp)
	li $t0, 2
	sw $t0, -4520($fp)
	li $t0, 4
	lw $t1, -4520($fp)
	mul $t0, $t0, $t1
	sw $t0, -4524($fp)
	lw $t0, -4524($fp)
	lw $t1, -4516($fp)
	add $t0, $t0, $t1
	sw $t0, -4528($fp)
	lw $t0, -4528($fp)
	lw $t1, 0($t0)
	sw $t1, -4532($fp)
	lw $t0, -4532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3424
	sw $t0, -4536($fp)
	li $t0, 3
	sw $t0, -4540($fp)
	li $t0, 4
	lw $t1, -4540($fp)
	mul $t0, $t0, $t1
	sw $t0, -4544($fp)
	lw $t0, -4544($fp)
	lw $t1, -4536($fp)
	add $t0, $t0, $t1
	sw $t0, -4548($fp)
	lw $t0, -4548($fp)
	lw $t1, 0($t0)
	sw $t1, -4552($fp)
	lw $t0, -4552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3424
	sw $t0, -4556($fp)
	li $t0, 4
	sw $t0, -4560($fp)
	li $t0, 4
	lw $t1, -4560($fp)
	mul $t0, $t0, $t1
	sw $t0, -4564($fp)
	lw $t0, -4564($fp)
	lw $t1, -4556($fp)
	add $t0, $t0, $t1
	sw $t0, -4568($fp)
	lw $t0, -4568($fp)
	lw $t1, 0($t0)
	sw $t1, -4572($fp)
	lw $t0, -4572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3424
	sw $t0, -4576($fp)
	li $t0, 5
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
	lw $t0, -4592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3424
	sw $t0, -4596($fp)
	li $t0, 6
	sw $t0, -4600($fp)
	li $t0, 4
	lw $t1, -4600($fp)
	mul $t0, $t0, $t1
	sw $t0, -4604($fp)
	lw $t0, -4604($fp)
	lw $t1, -4596($fp)
	add $t0, $t0, $t1
	sw $t0, -4608($fp)
	lw $t0, -4608($fp)
	lw $t1, 0($t0)
	sw $t1, -4612($fp)
	lw $t0, -4612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3648($fp)
	sw $t0, -4616($fp)
	lw $t0, -4616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3660($fp)
	sw $t0, -4620($fp)
	lw $t0, -4620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4624($fp)
	lw $t0, -564($fp)
	sw $t0, -4628($fp)
	lw $t1, -4628($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label303
label303:
	lw $t0, -648($fp)
	sw $t0, -4632($fp)
	addi $t0, $fp, -3424
	sw $t0, -4636($fp)
	li $t0, 4
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
	lw $t0, -4632($fp)
	lw $t1, -4652($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4656($fp)
	lw $t1, -4656($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label302
label301:
	li $t0, 1
	sw $t0, -4624($fp)
label302:
	lw $ra, -4($fp)
	lw $v0, -4624($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -3432($fp)
	sw $t0, -4660($fp)
	lw $t0, -4660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3444($fp)
	sw $t0, -4664($fp)
	lw $t0, -4664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3456($fp)
	sw $t0, -4668($fp)
	lw $t0, -4668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3468($fp)
	sw $t0, -4672($fp)
	lw $t0, -4672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3424
	sw $t0, -4676($fp)
	li $t0, 0
	sw $t0, -4680($fp)
	li $t0, 4
	lw $t1, -4680($fp)
	mul $t0, $t0, $t1
	sw $t0, -4684($fp)
	lw $t0, -4684($fp)
	lw $t1, -4676($fp)
	add $t0, $t0, $t1
	sw $t0, -4688($fp)
	lw $t0, -4688($fp)
	lw $t1, 0($t0)
	sw $t1, -4692($fp)
	lw $t0, -4692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3424
	sw $t0, -4696($fp)
	li $t0, 1
	sw $t0, -4700($fp)
	li $t0, 4
	lw $t1, -4700($fp)
	mul $t0, $t0, $t1
	sw $t0, -4704($fp)
	lw $t0, -4704($fp)
	lw $t1, -4696($fp)
	add $t0, $t0, $t1
	sw $t0, -4708($fp)
	lw $t0, -4708($fp)
	lw $t1, 0($t0)
	sw $t1, -4712($fp)
	lw $t0, -4712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3424
	sw $t0, -4716($fp)
	li $t0, 2
	sw $t0, -4720($fp)
	li $t0, 4
	lw $t1, -4720($fp)
	mul $t0, $t0, $t1
	sw $t0, -4724($fp)
	lw $t0, -4724($fp)
	lw $t1, -4716($fp)
	add $t0, $t0, $t1
	sw $t0, -4728($fp)
	lw $t0, -4728($fp)
	lw $t1, 0($t0)
	sw $t1, -4732($fp)
	lw $t0, -4732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3424
	sw $t0, -4736($fp)
	li $t0, 3
	sw $t0, -4740($fp)
	li $t0, 4
	lw $t1, -4740($fp)
	mul $t0, $t0, $t1
	sw $t0, -4744($fp)
	lw $t0, -4744($fp)
	lw $t1, -4736($fp)
	add $t0, $t0, $t1
	sw $t0, -4748($fp)
	lw $t0, -4748($fp)
	lw $t1, 0($t0)
	sw $t1, -4752($fp)
	lw $t0, -4752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3424
	sw $t0, -4756($fp)
	li $t0, 4
	sw $t0, -4760($fp)
	li $t0, 4
	lw $t1, -4760($fp)
	mul $t0, $t0, $t1
	sw $t0, -4764($fp)
	lw $t0, -4764($fp)
	lw $t1, -4756($fp)
	add $t0, $t0, $t1
	sw $t0, -4768($fp)
	lw $t0, -4768($fp)
	lw $t1, 0($t0)
	sw $t1, -4772($fp)
	lw $t0, -4772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3424
	sw $t0, -4776($fp)
	li $t0, 5
	sw $t0, -4780($fp)
	li $t0, 4
	lw $t1, -4780($fp)
	mul $t0, $t0, $t1
	sw $t0, -4784($fp)
	lw $t0, -4784($fp)
	lw $t1, -4776($fp)
	add $t0, $t0, $t1
	sw $t0, -4788($fp)
	lw $t0, -4788($fp)
	lw $t1, 0($t0)
	sw $t1, -4792($fp)
	lw $t0, -4792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3424
	sw $t0, -4796($fp)
	li $t0, 6
	sw $t0, -4800($fp)
	li $t0, 4
	lw $t1, -4800($fp)
	mul $t0, $t0, $t1
	sw $t0, -4804($fp)
	lw $t0, -4804($fp)
	lw $t1, -4796($fp)
	add $t0, $t0, $t1
	sw $t0, -4808($fp)
	lw $t0, -4808($fp)
	lw $t1, 0($t0)
	sw $t1, -4812($fp)
	lw $t0, -4812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3648($fp)
	sw $t0, -4816($fp)
	lw $t0, -4816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3660($fp)
	sw $t0, -4820($fp)
	lw $t0, -4820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4824($fp)
	li $t0, 0
	sw $t0, -4828($fp)
	li $t0, 0
	sw $t0, -4832($fp)
	li $t0, 0
	sw $t0, -4836($fp)
	lw $t0, -3648($fp)
	sw $t0, -4840($fp)
	li $t0, 0
	lw $t1, -4840($fp)
	sub $t0, $t0, $t1
	sw $t0, -4844($fp)
	li $t0, 57298
	sw $t0, -4848($fp)
	lw $t1, -4844($fp)
	lw $t2, -4848($fp)
	ble $t1, $t2, label310
	j label311
label310:
	li $t0, 1
	sw $t0, -4836($fp)
label311:
	li $t0, 63784
	sw $t0, -4852($fp)
	lw $t0, -708($fp)
	sw $t0, -4856($fp)
	lw $t0, -4852($fp)
	lw $t1, -4856($fp)
	add $t0, $t0, $t1
	sw $t0, -4860($fp)
	lw $t1, -4836($fp)
	lw $t2, -4860($fp)
	bge $t1, $t2, label308
	j label309
label308:
	li $t0, 1
	sw $t0, -4832($fp)
label309:
	lw $t0, -1056($fp)
	sw $t0, -4864($fp)
	lw $t1, -4832($fp)
	lw $t2, -4864($fp)
	bge $t1, $t2, label306
	j label307
label306:
	li $t0, 1
	sw $t0, -4828($fp)
label307:
	addi $t0, $fp, -88
	sw $t0, -4868($fp)
	lw $t0, -708($fp)
	sw $t0, -4872($fp)
	lw $t0, -672($fp)
	sw $t0, -4876($fp)
	lw $t0, -4872($fp)
	lw $t1, -4876($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4880($fp)
	li $t0, 4
	lw $t1, -4880($fp)
	mul $t0, $t0, $t1
	sw $t0, -4884($fp)
	lw $t0, -4884($fp)
	lw $t1, -4868($fp)
	add $t0, $t0, $t1
	sw $t0, -4888($fp)
	lw $t0, -4888($fp)
	lw $t1, 0($t0)
	sw $t1, -4892($fp)
	lw $t1, -4828($fp)
	lw $t2, -4892($fp)
	blt $t1, $t2, label304
	j label305
label304:
	li $t0, 1
	sw $t0, -4824($fp)
label305:
	lw $ra, -4($fp)
	lw $v0, -4824($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label312:
	addi $t0, $fp, -32
	sw $t0, -4896($fp)
	li $t0, 0
	sw $t0, -4900($fp)
	li $t0, 11793
	sw $t0, -4904($fp)
	lw $t0, -3444($fp)
	sw $t0, -4908($fp)
	lw $t1, -4904($fp)
	lw $t2, -4908($fp)
	bne $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -4900($fp)
label316:
	li $t0, 4
	lw $t1, -4900($fp)
	mul $t0, $t0, $t1
	sw $t0, -4912($fp)
	lw $t0, -4912($fp)
	lw $t1, -4896($fp)
	add $t0, $t0, $t1
	sw $t0, -4916($fp)
	lw $t0, -4916($fp)
	lw $t1, 0($t0)
	sw $t1, -4920($fp)
	li $t0, 0
	sw $t0, -4924($fp)
	addi $t0, $fp, -120
	sw $t0, -4928($fp)
	lw $t0, -3660($fp)
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
	lw $t0, 4($fp)
	sw $t0, -4948($fp)
	lw $t0, -4944($fp)
	lw $t1, -4948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4952($fp)
	addi $sp, $sp, -4
	lw $t0, -4952($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4956($fp)
	addi $sp, $sp, 8
	lw $t1, -4956($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label317
label317:
	li $t0, 1
	sw $t0, -4924($fp)
label318:
	lw $t0, -4920($fp)
	lw $t1, -4924($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4960($fp)
	li $t0, 25909
	sw $t0, -4964($fp)
	lw $t0, -4960($fp)
	lw $t1, -4964($fp)
	add $t0, $t0, $t1
	sw $t0, -4968($fp)
	lw $t1, -4968($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label314
label313:
label319:
	lw $t0, -3456($fp)
	sw $t0, -4972($fp)
	lw $t0, -4972($fp)
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -4976($fp)
	lw $t1, -4976($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label321
label320:
	li $t0, 0
	sw $t0, -4980($fp)
	lw $t0, -552($fp)
	sw $t0, -4984($fp)
	lw $t1, -4984($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label325
label325:
	li $t0, 1
	sw $t0, -4980($fp)
label326:
	lw $t0, -432($fp)
	sw $t0, -4988($fp)
	lw $t0, -4980($fp)
	lw $t1, -4988($fp)
	add $t0, $t0, $t1
	sw $t0, -4992($fp)
	lw $t0, -1032($fp)
	sw $t0, -4996($fp)
	li $t0, 0
	lw $t1, -4996($fp)
	sub $t0, $t0, $t1
	sw $t0, -5000($fp)
	lw $t0, -4992($fp)
	lw $t1, -5000($fp)
	add $t0, $t0, $t1
	sw $t0, -5004($fp)
	li $t0, 64576
	sw $t0, -5008($fp)
	lw $t0, -5004($fp)
	lw $t1, -5008($fp)
	add $t0, $t0, $t1
	sw $t0, -5012($fp)
	lw $t1, -5012($fp)
	li $t2, 0
	bne $t1, $t2, label322
	j label323
label322:
	li $t0, 0
	sw $t0, -5016($fp)
	li $t0, 0
	sw $t0, -5020($fp)
	li $t0, 16344
	sw $t0, -5024($fp)
	lw $t1, -5024($fp)
	li $t2, 0
	bne $t1, $t2, label331
	j label330
label330:
	li $t0, 1
	sw $t0, -5020($fp)
label331:
	li $t0, 0
	lw $t1, -5020($fp)
	sub $t0, $t0, $t1
	sw $t0, -5028($fp)
	addi $sp, $sp, -4
	lw $t0, -5028($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5032($fp)
	addi $sp, $sp, 8
	lw $t1, -5032($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label328
label329:
	li $t0, 0
	sw $t0, -5036($fp)
	li $t0, 0
	sw $t0, -5040($fp)
	li $t0, 43798
	sw $t0, -5044($fp)
	lw $t0, -660($fp)
	sw $t0, -5048($fp)
	lw $t1, -5044($fp)
	lw $t2, -5048($fp)
	beq $t1, $t2, label334
	j label335
label334:
	li $t0, 1
	sw $t0, -5040($fp)
label335:
	lw $t0, -1428($fp)
	sw $t0, -5052($fp)
	lw $t1, -5040($fp)
	lw $t2, -5052($fp)
	bne $t1, $t2, label332
	j label333
label332:
	li $t0, 1
	sw $t0, -5036($fp)
label333:
	li $t0, 8160
	sw $t0, -5056($fp)
	lw $t0, 4($fp)
	sw $t0, -5060($fp)
	lw $t0, -5056($fp)
	lw $t1, -5060($fp)
	sub $t0, $t0, $t1
	sw $t0, -5064($fp)
	lw $t1, -5036($fp)
	lw $t2, -5064($fp)
	bne $t1, $t2, label327
	j label328
label327:
	li $t0, 1
	sw $t0, -5016($fp)
label328:
	lw $ra, -4($fp)
	lw $v0, -5016($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label324
label323:
	li $t0, 22415
	sw $t0, -5068($fp)
	li $t0, 11112
	sw $t0, -5072($fp)
	lw $t0, -5068($fp)
	lw $t1, -5072($fp)
	add $t0, $t0, $t1
	sw $t0, -5076($fp)
	addi $sp, $sp, -4
	lw $t0, -5076($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5080($fp)
	addi $sp, $sp, 8
	li $t0, 42433
	sw $t0, -5084($fp)
	li $t0, 41138
	sw $t0, -5088($fp)
	li $t0, 0
	lw $t1, -5088($fp)
	sub $t0, $t0, $t1
	sw $t0, -5092($fp)
	lw $t0, -5084($fp)
	lw $t1, -5092($fp)
	mul $t0, $t0, $t1
	sw $t0, -5096($fp)
	lw $t1, -5080($fp)
	lw $t2, -5096($fp)
	ble $t1, $t2, label336
	j label337
label336:
	li $t0, 0
	sw $t0, -5100($fp)
	li $t0, 51436
	sw $t0, -5104($fp)
	lw $t1, -5104($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label342
label342:
	li $t0, 1
	sw $t0, -5100($fp)
label343:
	li $t0, 0
	lw $t1, -5100($fp)
	sub $t0, $t0, $t1
	sw $t0, -5108($fp)
	lw $t1, -5108($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label340
label339:
	li $t0, 0
	sw $t0, -5112($fp)
	lw $t0, 4($fp)
	sw $t0, -5116($fp)
	lw $t1, -5116($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label344
label344:
	li $t0, 1
	sw $t0, -5112($fp)
label345:
	li $t0, 0
	lw $t1, -5112($fp)
	sub $t0, $t0, $t1
	sw $t0, -5120($fp)
	addi $sp, $sp, -4
	lw $t0, -5120($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5124($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5128($fp)
	li $t0, 38642
	sw $t0, -5132($fp)
	li $t0, 34745
	sw $t0, -5136($fp)
	lw $t1, -5132($fp)
	lw $t2, -5136($fp)
	bne $t1, $t2, label348
	j label347
label348:
	lw $t0, -432($fp)
	sw $t0, -5140($fp)
	lw $t1, -5140($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label347
label346:
	li $t0, 1
	sw $t0, -5128($fp)
label347:
	addi $sp, $sp, -4
	lw $t0, -5128($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5144($fp)
	addi $sp, $sp, 8
	lw $t0, -5124($fp)
	lw $t1, -5144($fp)
	mul $t0, $t0, $t1
	sw $t0, -5148($fp)
	li $t0, 53478
	sw $t0, -5152($fp)
	lw $t0, -5148($fp)
	lw $t1, -5152($fp)
	mul $t0, $t0, $t1
	sw $t0, -5156($fp)
	j label341
label340:
	addi $t0, $fp, -156
	sw $t0, -5160($fp)
	lw $t0, -492($fp)
	sw $t0, -5164($fp)
	li $t0, 4
	lw $t1, -5164($fp)
	mul $t0, $t0, $t1
	sw $t0, -5168($fp)
	lw $t0, -5168($fp)
	lw $t1, -5160($fp)
	add $t0, $t0, $t1
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	lw $t1, 0($t0)
	sw $t1, -5176($fp)
	addi $t0, $fp, -156
	sw $t0, -5180($fp)
	li $t0, 0
	sw $t0, -5184($fp)
	lw $t0, 4($fp)
	sw $t0, -5188($fp)
	li $t0, 24476
	sw $t0, -5192($fp)
	lw $t1, -5188($fp)
	lw $t2, -5192($fp)
	beq $t1, $t2, label349
	j label350
label349:
	li $t0, 1
	sw $t0, -5184($fp)
label350:
	li $t0, 4
	lw $t1, -5184($fp)
	mul $t0, $t0, $t1
	sw $t0, -5196($fp)
	lw $t0, -5196($fp)
	lw $t1, -5180($fp)
	add $t0, $t0, $t1
	sw $t0, -5200($fp)
	lw $t0, -5200($fp)
	lw $t1, 0($t0)
	sw $t1, -5204($fp)
	lw $t0, -5176($fp)
	lw $t1, -5204($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5208($fp)
label341:
	j label338
label337:
	addi $t0, $fp, -156
	sw $t0, -5212($fp)
	li $t0, 8
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
	lw $t0, -1080($fp)
	sw $t0, -5232($fp)
	lw $t0, -5228($fp)
	lw $t1, -5232($fp)
	mul $t0, $t0, $t1
	sw $t0, -5236($fp)
	li $t0, 4141
	sw $t0, -5240($fp)
	li $t0, 0
	lw $t1, -5240($fp)
	sub $t0, $t0, $t1
	sw $t0, -5244($fp)
	lw $t0, -5236($fp)
	lw $t1, -5244($fp)
	add $t0, $t0, $t1
	sw $t0, -5248($fp)
	li $t0, 21979
	sw $t0, -5252($fp)
	lw $t0, -696($fp)
	sw $t0, -5256($fp)
	lw $t0, -5252($fp)
	lw $t1, -5256($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5260($fp)
	li $t0, 2091
	sw $t0, -5264($fp)
	lw $t0, -5260($fp)
	lw $t1, -5264($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5268($fp)
	lw $t0, -5248($fp)
	lw $t1, -5268($fp)
	sub $t0, $t0, $t1
	sw $t0, -5272($fp)
	lw $t1, -5272($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label352
label351:
	addi $t0, $fp, -52
	sw $t0, -5276($fp)
	li $t0, 0
	sw $t0, -5280($fp)
	li $t0, 5583
	sw $t0, -5284($fp)
	li $t0, 57571
	sw $t0, -5288($fp)
	lw $t1, -5284($fp)
	lw $t2, -5288($fp)
	blt $t1, $t2, label354
	j label357
label357:
	li $t0, 61217
	sw $t0, -5292($fp)
	lw $t1, -5292($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label356
label356:
	li $t0, 27232
	sw $t0, -5296($fp)
	lw $t0, -1056($fp)
	sw $t0, -5300($fp)
	lw $t0, -5296($fp)
	lw $t1, -5300($fp)
	mul $t0, $t0, $t1
	sw $t0, -5304($fp)
	lw $t1, -5304($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label355
label354:
	li $t0, 1
	sw $t0, -5280($fp)
label355:
	li $t0, 4
	lw $t1, -5280($fp)
	mul $t0, $t0, $t1
	sw $t0, -5308($fp)
	lw $t0, -5308($fp)
	lw $t1, -5276($fp)
	add $t0, $t0, $t1
	sw $t0, -5312($fp)
	lw $t0, -5312($fp)
	lw $t1, 0($t0)
	sw $t1, -5316($fp)
	j label353
label352:
	li $t0, 58016
	sw $t0, -5320($fp)
	li $t0, 237
	sw $t0, -5324($fp)
	lw $t0, -5320($fp)
	lw $t1, -5324($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5328($fp)
	li $t0, 0
	lw $t1, -5328($fp)
	sub $t0, $t0, $t1
	sw $t0, -5332($fp)
label353:
label338:
label324:
	j label319
label321:
	j label312
label314:
	lw $t0, -1068($fp)
	sw $t0, -5336($fp)
	lw $t1, -5336($fp)
	li $t2, 0
	bne $t1, $t2, label358
	j label359
label358:
	li $t0, 3091
	sw $t0, -5340($fp)
	li $t0, 56452
	sw $t0, -5344($fp)
	lw $t0, -5340($fp)
	lw $t1, -5344($fp)
	sub $t0, $t0, $t1
	sw $t0, -5348($fp)
	lw $ra, -4($fp)
	lw $v0, -5348($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label359:
	li $t0, 0
	sw $t0, -5352($fp)
	li $t0, 24471
	sw $t0, -5356($fp)
	li $t0, 60389
	sw $t0, -5360($fp)
	lw $t1, -5356($fp)
	lw $t2, -5360($fp)
	bge $t1, $t2, label364
	j label366
label366:
	lw $t0, -1680($fp)
	sw $t0, -5364($fp)
	lw $t1, -5364($fp)
	li $t2, 0
	bne $t1, $t2, label364
	j label365
label364:
	li $t0, 1
	sw $t0, -5352($fp)
label365:
	addi $sp, $sp, -4
	lw $t0, -5352($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5368($fp)
	addi $sp, $sp, 8
	li $t0, 54700
	sw $t0, -5372($fp)
	lw $t0, -5368($fp)
	lw $t1, -5372($fp)
	mul $t0, $t0, $t1
	sw $t0, -5376($fp)
	lw $t1, -5376($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label362
label361:
	li $t0, 36264
	sw $t0, -5380($fp)
	lw $t0, -5380($fp)
	sw $t0, -5384($fp)
	lw $t0, -5384($fp)
	sw $t0, -5388($fp)
	li $t0, 20762
	sw $t0, -5392($fp)
	lw $t0, -5392($fp)
	sw $t0, -5396($fp)
	lw $t0, -5396($fp)
	sw $t0, -5400($fp)
	li $t0, 53741
	sw $t0, -5404($fp)
	lw $t0, -5404($fp)
	sw $t0, -5408($fp)
	lw $t0, -5408($fp)
	sw $t0, -5412($fp)
	li $t0, 52609
	sw $t0, -5416($fp)
	lw $t0, -5416($fp)
	sw $t0, -5420($fp)
	lw $t0, -5420($fp)
	sw $t0, -5424($fp)
	li $t0, 64560
	sw $t0, -5428($fp)
	lw $t0, -5428($fp)
	sw $t0, -5432($fp)
	lw $t0, -5432($fp)
	sw $t0, -5436($fp)
	li $t0, 61901
	sw $t0, -5440($fp)
	lw $t0, -5440($fp)
	sw $t0, -5444($fp)
	lw $t0, -5444($fp)
	sw $t0, -5448($fp)
	li $t0, 9488
	sw $t0, -5452($fp)
	lw $t0, -5452($fp)
	sw $t0, -5456($fp)
	lw $t0, -5456($fp)
	sw $t0, -5460($fp)
	lw $t0, -5384($fp)
	sw $t0, -5464($fp)
	lw $t0, -5464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5396($fp)
	sw $t0, -5468($fp)
	lw $t0, -5468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5408($fp)
	sw $t0, -5472($fp)
	lw $t0, -5472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5420($fp)
	sw $t0, -5476($fp)
	lw $t0, -5476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5432($fp)
	sw $t0, -5480($fp)
	lw $t0, -5480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5444($fp)
	sw $t0, -5484($fp)
	lw $t0, -5484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5456($fp)
	sw $t0, -5488($fp)
	lw $t0, -5488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -5492($fp)
	li $t0, 2
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
	lw $t0, -492($fp)
	sw $t0, -5512($fp)
	lw $t0, -5508($fp)
	lw $t1, -5512($fp)
	mul $t0, $t0, $t1
	sw $t0, -5516($fp)
	lw $t0, -504($fp)
	sw $t0, -5520($fp)
	li $t0, 0
	lw $t1, -5520($fp)
	sub $t0, $t0, $t1
	sw $t0, -5524($fp)
	lw $t0, -5516($fp)
	lw $t1, -5524($fp)
	add $t0, $t0, $t1
	sw $t0, -5528($fp)
	addi $t0, $fp, -192
	sw $t0, -5532($fp)
	li $t0, 4
	sw $t0, -5536($fp)
	li $t0, 4
	lw $t1, -5536($fp)
	mul $t0, $t0, $t1
	sw $t0, -5540($fp)
	lw $t0, -5540($fp)
	lw $t1, -5532($fp)
	add $t0, $t0, $t1
	sw $t0, -5544($fp)
	lw $t0, -5544($fp)
	lw $t1, 0($t0)
	sw $t1, -5548($fp)
	li $t0, 19836
	sw $t0, -5552($fp)
	lw $t0, -5548($fp)
	lw $t1, -5552($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5556($fp)
	lw $t0, -5528($fp)
	lw $t1, -5556($fp)
	sub $t0, $t0, $t1
	sw $t0, -5560($fp)
	lw $ra, -4($fp)
	lw $v0, -5560($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -5384($fp)
	sw $t0, -5564($fp)
	lw $t0, -5564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5396($fp)
	sw $t0, -5568($fp)
	lw $t0, -5568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5408($fp)
	sw $t0, -5572($fp)
	lw $t0, -5572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5420($fp)
	sw $t0, -5576($fp)
	lw $t0, -5576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5432($fp)
	sw $t0, -5580($fp)
	lw $t0, -5580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5444($fp)
	sw $t0, -5584($fp)
	lw $t0, -5584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5456($fp)
	sw $t0, -5588($fp)
	lw $t0, -5588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1068($fp)
	sw $t0, -5592($fp)
	lw $ra, -4($fp)
	lw $v0, -5592($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -5596($fp)
	lw $t0, -432($fp)
	sw $t0, -5600($fp)
	li $t0, 0
	lw $t1, -5600($fp)
	sub $t0, $t0, $t1
	sw $t0, -5604($fp)
	li $t0, 49515
	sw $t0, -5608($fp)
	li $t0, 36382
	sw $t0, -5612($fp)
	lw $t0, -5608($fp)
	lw $t1, -5612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5616($fp)
	lw $t1, -5604($fp)
	lw $t2, -5616($fp)
	beq $t1, $t2, label370
	j label371
label370:
	li $t0, 1
	sw $t0, -5596($fp)
label371:
	lw $t0, -5596($fp)
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	sw $t0, -5620($fp)
	lw $t1, -5620($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label368
label367:
	li $t0, 50345
	sw $t0, -5624($fp)
	lw $t0, -5624($fp)
	sw $t0, -5628($fp)
	lw $t0, -5628($fp)
	sw $t0, -5632($fp)
	li $t0, 24511
	sw $t0, -5636($fp)
	lw $t0, -5636($fp)
	sw $t0, -5640($fp)
	lw $t0, -5640($fp)
	sw $t0, -5644($fp)
	li $t0, 0
	sw $t0, -5648($fp)
	li $t0, 40523
	sw $t0, -5652($fp)
	lw $t1, -5652($fp)
	li $t2, 0
	bne $t1, $t2, label372
	j label374
label374:
	li $t0, 6789
	sw $t0, -5656($fp)
	lw $t1, -5656($fp)
	li $t2, 0
	bne $t1, $t2, label372
	j label373
label372:
	li $t0, 1
	sw $t0, -5648($fp)
label373:
	li $t0, 26602
	sw $t0, -5660($fp)
	li $t0, 46106
	sw $t0, -5664($fp)
	lw $t0, -5664($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -5668($fp)
	addi $sp, $sp, -4
	lw $t0, -5668($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5672($fp)
	addi $sp, $sp, 8
	lw $t0, -5660($fp)
	lw $t1, -5672($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5676($fp)
	li $t0, 64360
	sw $t0, -5680($fp)
	lw $t0, -5628($fp)
	sw $t0, -5684($fp)
	lw $t0, -648($fp)
	sw $t0, -5688($fp)
	li $t0, 0
	sw $t0, -5692($fp)
	lw $t0, -5640($fp)
	sw $t0, -5696($fp)
	li $t0, 22284
	sw $t0, -5700($fp)
	lw $t0, -5696($fp)
	lw $t1, -5700($fp)
	mul $t0, $t0, $t1
	sw $t0, -5704($fp)
	lw $t0, -456($fp)
	sw $t0, -5708($fp)
	lw $t1, -5704($fp)
	lw $t2, -5708($fp)
	beq $t1, $t2, label375
	j label377
label377:
	lw $t0, -696($fp)
	sw $t0, -5712($fp)
	lw $t1, -5712($fp)
	li $t2, 0
	bne $t1, $t2, label376
	j label375
label375:
	li $t0, 1
	sw $t0, -5692($fp)
label376:
	lw $t0, -5692($fp)
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -5716($fp)
	j label369
label368:
	li $t0, 7803
	sw $t0, -5720($fp)
	lw $t0, -5720($fp)
	sw $t0, -5724($fp)
	lw $t0, -5724($fp)
	sw $t0, -5728($fp)
	li $t0, 56841
	sw $t0, -5732($fp)
	li $t0, 0
	sw $t0, -5736($fp)
	lw $t0, -648($fp)
	sw $t0, -5740($fp)
	lw $t1, -5740($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label378
label378:
	li $t0, 1
	sw $t0, -5736($fp)
label379:
	lw $t0, -5732($fp)
	lw $t1, -5736($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5744($fp)
	li $t0, 0
	sw $t0, -5748($fp)
	li $t0, 22521
	sw $t0, -5752($fp)
	lw $t1, -5752($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label382
label382:
	addi $t0, $fp, -48
	sw $t0, -5756($fp)
	lw $t0, -432($fp)
	sw $t0, -5760($fp)
	lw $t0, -1032($fp)
	sw $t0, -5764($fp)
	lw $t0, -5760($fp)
	lw $t1, -5764($fp)
	mul $t0, $t0, $t1
	sw $t0, -5768($fp)
	li $t0, 4
	lw $t1, -5768($fp)
	mul $t0, $t0, $t1
	sw $t0, -5772($fp)
	lw $t0, -5772($fp)
	lw $t1, -5756($fp)
	add $t0, $t0, $t1
	sw $t0, -5776($fp)
	lw $t0, -5776($fp)
	lw $t1, 0($t0)
	sw $t1, -5780($fp)
	lw $t1, -5780($fp)
	li $t2, 0
	bne $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -5748($fp)
label381:
	lw $t0, -696($fp)
	sw $t0, -5784($fp)
	li $t0, 0
	sw $t0, -5788($fp)
	li $t0, 0
	sw $t0, -5792($fp)
	addi $t0, $fp, -120
	sw $t0, -5796($fp)
	lw $t0, -684($fp)
	sw $t0, -5800($fp)
	li $t0, 4
	lw $t1, -5800($fp)
	mul $t0, $t0, $t1
	sw $t0, -5804($fp)
	lw $t0, -5804($fp)
	lw $t1, -5796($fp)
	add $t0, $t0, $t1
	sw $t0, -5808($fp)
	lw $t0, -5808($fp)
	lw $t1, 0($t0)
	sw $t1, -5812($fp)
	lw $t1, -5812($fp)
	li $t2, 0
	bne $t1, $t2, label386
	j label388
label388:
	lw $t0, -5408($fp)
	sw $t0, -5816($fp)
	lw $t1, -5816($fp)
	li $t2, 0
	bne $t1, $t2, label386
	j label387
label386:
	li $t0, 1
	sw $t0, -5792($fp)
label387:
	addi $sp, $sp, -4
	lw $t0, -5792($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5820($fp)
	addi $sp, $sp, 8
	lw $t1, -5820($fp)
	li $t2, 0
	bne $t1, $t2, label383
	j label385
label385:
	addi $t0, $fp, -36
	sw $t0, -5824($fp)
	li $t0, 0
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
	lw $t1, -5840($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label383
label383:
	li $t0, 1
	sw $t0, -5788($fp)
label384:
	li $t0, 0
	sw $t0, -5844($fp)
	lw $t0, -708($fp)
	sw $t0, -5848($fp)
	lw $t0, -5848($fp)
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -5852($fp)
	addi $sp, $sp, -4
	lw $t0, -5852($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5856($fp)
	addi $sp, $sp, 8
	lw $t1, -5856($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label389
label389:
	li $t0, 1
	sw $t0, -5844($fp)
label390:
	lw $t0, -5724($fp)
	sw $t0, -5860($fp)
	li $t0, 0
	lw $t1, -5860($fp)
	sub $t0, $t0, $t1
	sw $t0, -5864($fp)
	addi $sp, $sp, -4
	lw $t0, -5864($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5868($fp)
	addi $sp, $sp, 8
	lw $t0, -5844($fp)
	lw $t1, -5868($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5872($fp)
label369:
label391:
	addi $t0, $fp, -156
	sw $t0, -5876($fp)
	li $t0, 46992
	sw $t0, -5880($fp)
	lw $t0, -5384($fp)
	sw $t0, -5884($fp)
	lw $t0, -5880($fp)
	lw $t1, -5884($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5888($fp)
	li $t0, 4
	lw $t1, -5888($fp)
	mul $t0, $t0, $t1
	sw $t0, -5892($fp)
	lw $t0, -5892($fp)
	lw $t1, -5876($fp)
	add $t0, $t0, $t1
	sw $t0, -5896($fp)
	lw $t0, -5896($fp)
	lw $t1, 0($t0)
	sw $t1, -5900($fp)
	li $t0, 0
	sw $t0, -5904($fp)
	lw $t0, -696($fp)
	sw $t0, -5908($fp)
	lw $t1, -5908($fp)
	li $t2, 0
	bne $t1, $t2, label395
	j label394
label394:
	li $t0, 1
	sw $t0, -5904($fp)
label395:
	lw $t0, -5900($fp)
	lw $t1, -5904($fp)
	mul $t0, $t0, $t1
	sw $t0, -5912($fp)
	addi $t0, $fp, -32
	sw $t0, -5916($fp)
	li $t0, 0
	sw $t0, -5920($fp)
	lw $t0, 4($fp)
	sw $t0, -5924($fp)
	li $t0, 5747
	sw $t0, -5928($fp)
	lw $t1, -5924($fp)
	lw $t2, -5928($fp)
	bge $t1, $t2, label396
	j label397
label396:
	li $t0, 1
	sw $t0, -5920($fp)
label397:
	li $t0, 4
	lw $t1, -5920($fp)
	mul $t0, $t0, $t1
	sw $t0, -5932($fp)
	lw $t0, -5932($fp)
	lw $t1, -5916($fp)
	add $t0, $t0, $t1
	sw $t0, -5936($fp)
	lw $t0, -5936($fp)
	lw $t1, 0($t0)
	sw $t1, -5940($fp)
	lw $t0, -5912($fp)
	lw $t1, -5940($fp)
	sub $t0, $t0, $t1
	sw $t0, -5944($fp)
	lw $t1, -5944($fp)
	li $t2, 0
	bne $t1, $t2, label392
	j label393
label392:
label398:
	li $t0, 0
	sw $t0, -5948($fp)
	li $t0, 0
	sw $t0, -5952($fp)
	li $t0, 36922
	sw $t0, -5956($fp)
	lw $t0, -456($fp)
	sw $t0, -5960($fp)
	lw $t1, -5956($fp)
	lw $t2, -5960($fp)
	ble $t1, $t2, label404
	j label405
label404:
	li $t0, 1
	sw $t0, -5952($fp)
label405:
	li $t0, 17720
	sw $t0, -5964($fp)
	lw $t1, -5952($fp)
	lw $t2, -5964($fp)
	bge $t1, $t2, label401
	j label403
label403:
	li $t0, 26509
	sw $t0, -5968($fp)
	lw $t0, -1656($fp)
	sw $t0, -5972($fp)
	lw $t1, -5968($fp)
	lw $t2, -5972($fp)
	bne $t1, $t2, label401
	j label402
label401:
	li $t0, 1
	sw $t0, -5948($fp)
label402:
	lw $t0, -5948($fp)
	sw $t0, -5420($fp)
	lw $t0, -5420($fp)
	sw $t0, -5976($fp)
	lw $t1, -5976($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label400
label399:
	li $t0, 25127
	sw $t0, -5980($fp)
	lw $t0, -5980($fp)
	sw $t0, -5984($fp)
	lw $t0, -5984($fp)
	sw $t0, -5988($fp)
	li $t0, 4793
	sw $t0, -5992($fp)
	lw $t0, -5992($fp)
	sw $t0, -5996($fp)
	lw $t0, -5996($fp)
	sw $t0, -6000($fp)
	lw $t0, -432($fp)
	sw $t0, -6004($fp)
	li $t0, 0
	sw $t0, -6008($fp)
	li $t0, 0
	sw $t0, -6012($fp)
	li $t0, 25534
	sw $t0, -6016($fp)
	li $t0, 0
	lw $t1, -6016($fp)
	sub $t0, $t0, $t1
	sw $t0, -6020($fp)
	lw $t1, -6020($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label410
label411:
	li $t0, 21492
	sw $t0, -6024($fp)
	lw $t1, -6024($fp)
	li $t2, 0
	bne $t1, $t2, label409
	j label410
label409:
	li $t0, 1
	sw $t0, -6012($fp)
label410:
	addi $sp, $sp, -4
	lw $t0, -6012($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6028($fp)
	addi $sp, $sp, 8
	lw $t1, -6028($fp)
	li $t2, 0
	bne $t1, $t2, label408
	j label407
label408:
	li $t0, 14281
	sw $t0, -6032($fp)
	lw $t0, 4($fp)
	sw $t0, -6036($fp)
	li $t0, 35671
	sw $t0, -6040($fp)
	lw $t0, -6036($fp)
	lw $t1, -6040($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6044($fp)
	lw $t1, -6032($fp)
	lw $t2, -6044($fp)
	beq $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -6008($fp)
label407:
	lw $t0, -564($fp)
	sw $t0, -6048($fp)
	lw $t0, -1032($fp)
	sw $t0, -6052($fp)
	lw $t0, -6048($fp)
	lw $t1, -6052($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6056($fp)
	li $t0, 60291
	sw $t0, -6060($fp)
	lw $t0, -6056($fp)
	lw $t1, -6060($fp)
	add $t0, $t0, $t1
	sw $t0, -6064($fp)
	addi $sp, $sp, -4
	lw $t0, -6064($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6068($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -6072($fp)
	li $t0, 2
	sw $t0, -6076($fp)
	li $t0, 4
	lw $t1, -6076($fp)
	mul $t0, $t0, $t1
	sw $t0, -6080($fp)
	lw $t0, -6080($fp)
	lw $t1, -6072($fp)
	add $t0, $t0, $t1
	sw $t0, -6084($fp)
	lw $t0, -6084($fp)
	lw $t1, 0($t0)
	sw $t1, -6088($fp)
	li $t0, 0
	lw $t1, -6088($fp)
	sub $t0, $t0, $t1
	sw $t0, -6092($fp)
	lw $t0, -6068($fp)
	lw $t1, -6092($fp)
	sub $t0, $t0, $t1
	sw $t0, -6096($fp)
	li $t0, 6661
	sw $t0, -6100($fp)
	li $t0, 0
	lw $t1, -6100($fp)
	sub $t0, $t0, $t1
	sw $t0, -6104($fp)
	li $t0, 0
	sw $t0, -6108($fp)
	lw $t0, -5984($fp)
	sw $t0, -6112($fp)
	lw $t0, -5984($fp)
	sw $t0, -6116($fp)
	lw $t0, -5996($fp)
	sw $t0, -6120($fp)
	lw $t0, -6116($fp)
	lw $t1, -6120($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6124($fp)
	lw $t0, -6112($fp)
	lw $t1, -6124($fp)
	sub $t0, $t0, $t1
	sw $t0, -6128($fp)
	lw $t1, -6128($fp)
	li $t2, 0
	bne $t1, $t2, label415
	j label414
label415:
	li $t0, 19206
	sw $t0, -6132($fp)
	li $t0, 0
	lw $t1, -6132($fp)
	sub $t0, $t0, $t1
	sw $t0, -6136($fp)
	li $t0, 15688
	sw $t0, -6140($fp)
	lw $t0, -6136($fp)
	lw $t1, -6140($fp)
	add $t0, $t0, $t1
	sw $t0, -6144($fp)
	lw $t1, -6144($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label414
label414:
	li $t0, 0
	sw $t0, -6148($fp)
	li $t0, 0
	sw $t0, -6152($fp)
	lw $t0, -552($fp)
	sw $t0, -6156($fp)
	li $t0, 43043
	sw $t0, -6160($fp)
	lw $t1, -6156($fp)
	lw $t2, -6160($fp)
	beq $t1, $t2, label418
	j label419
label418:
	li $t0, 1
	sw $t0, -6152($fp)
label419:
	lw $t0, -1032($fp)
	sw $t0, -6164($fp)
	lw $t1, -6152($fp)
	lw $t2, -6164($fp)
	bne $t1, $t2, label416
	j label417
label416:
	li $t0, 1
	sw $t0, -6148($fp)
label417:
	addi $sp, $sp, -4
	lw $t0, -6148($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6168($fp)
	addi $sp, $sp, 8
	lw $t1, -6168($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label413
label412:
	li $t0, 1
	sw $t0, -6108($fp)
label413:
	j label398
label400:
	j label391
label393:
	lw $t0, -5384($fp)
	sw $t0, -6172($fp)
	lw $t0, -6172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5396($fp)
	sw $t0, -6176($fp)
	lw $t0, -6176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5408($fp)
	sw $t0, -6180($fp)
	lw $t0, -6180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5420($fp)
	sw $t0, -6184($fp)
	lw $t0, -6184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5432($fp)
	sw $t0, -6188($fp)
	lw $t0, -6188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5444($fp)
	sw $t0, -6192($fp)
	lw $t0, -6192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5456($fp)
	sw $t0, -6196($fp)
	lw $t0, -6196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6200($fp)
	li $t0, 4016
	sw $t0, -6204($fp)
	lw $t1, -6204($fp)
	li $t2, 0
	bne $t1, $t2, label420
	j label422
label422:
	lw $t0, -1056($fp)
	sw $t0, -6208($fp)
	lw $t0, -5432($fp)
	sw $t0, -6212($fp)
	lw $t0, -6208($fp)
	lw $t1, -6212($fp)
	mul $t0, $t0, $t1
	sw $t0, -6216($fp)
	li $t0, 0
	lw $t1, -6216($fp)
	sub $t0, $t0, $t1
	sw $t0, -6220($fp)
	addi $sp, $sp, -4
	lw $t0, -6220($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6224($fp)
	addi $sp, $sp, 8
	lw $t0, -5456($fp)
	sw $t0, -6228($fp)
	lw $t0, -6224($fp)
	lw $t1, -6228($fp)
	sub $t0, $t0, $t1
	sw $t0, -6232($fp)
	lw $t1, -6232($fp)
	li $t2, 0
	bne $t1, $t2, label420
	j label421
label420:
	li $t0, 1
	sw $t0, -6200($fp)
label421:
	lw $ra, -4($fp)
	lw $v0, -6200($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label423:
	li $t0, 40199
	sw $t0, -6236($fp)
	li $t0, 0
	sw $t0, -6240($fp)
	li $t0, 18030
	sw $t0, -6244($fp)
	li $t0, 10805
	sw $t0, -6248($fp)
	lw $t0, -6244($fp)
	lw $t1, -6248($fp)
	mul $t0, $t0, $t1
	sw $t0, -6252($fp)
	addi $sp, $sp, -4
	lw $t0, -6252($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6256($fp)
	addi $sp, $sp, 8
	lw $t1, -6256($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label426
label426:
	li $t0, 1
	sw $t0, -6240($fp)
label427:
	lw $t0, -6236($fp)
	lw $t1, -6240($fp)
	mul $t0, $t0, $t1
	sw $t0, -6260($fp)
	li $t0, 0
	lw $t1, -6260($fp)
	sub $t0, $t0, $t1
	sw $t0, -6264($fp)
	lw $t1, -6264($fp)
	li $t2, 0
	bne $t1, $t2, label424
	j label425
label424:
	li $t0, 0
	sw $t0, -6268($fp)
	li $t0, 1266
	sw $t0, -6272($fp)
	lw $t1, -6272($fp)
	li $t2, 0
	bne $t1, $t2, label432
	j label431
label431:
	li $t0, 1
	sw $t0, -6268($fp)
label432:
	addi $t0, $fp, -192
	sw $t0, -6276($fp)
	li $t0, 8
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
	li $t0, 23550
	sw $t0, -6296($fp)
	addi $sp, $sp, -4
	lw $t0, -6296($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6300($fp)
	addi $sp, $sp, 8
	lw $t0, -6292($fp)
	lw $t1, -6300($fp)
	mul $t0, $t0, $t1
	sw $t0, -6304($fp)
	lw $t0, -6268($fp)
	lw $t1, -6304($fp)
	sub $t0, $t0, $t1
	sw $t0, -6308($fp)
	lw $t1, -6308($fp)
	li $t2, 0
	bne $t1, $t2, label428
	j label429
label428:
	li $t0, 0
	sw $t0, -6312($fp)
	lw $t0, -456($fp)
	sw $t0, -6316($fp)
	lw $t1, -6316($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label437
label437:
	li $t0, 1
	sw $t0, -6312($fp)
label438:
	li $t0, 6404
	sw $t0, -6320($fp)
	lw $t0, -6312($fp)
	lw $t1, -6320($fp)
	add $t0, $t0, $t1
	sw $t0, -6324($fp)
	lw $t1, -6324($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label434
label436:
	addi $t0, $fp, -36
	sw $t0, -6328($fp)
	li $t0, 0
	sw $t0, -6332($fp)
	li $t0, 934
	sw $t0, -6336($fp)
	lw $t0, -492($fp)
	sw $t0, -6340($fp)
	lw $t1, -6336($fp)
	lw $t2, -6340($fp)
	bgt $t1, $t2, label439
	j label440
label439:
	li $t0, 1
	sw $t0, -6332($fp)
label440:
	li $t0, 4
	lw $t1, -6332($fp)
	mul $t0, $t0, $t1
	sw $t0, -6344($fp)
	lw $t0, -6344($fp)
	lw $t1, -6328($fp)
	add $t0, $t0, $t1
	sw $t0, -6348($fp)
	lw $t0, -6348($fp)
	lw $t1, 0($t0)
	sw $t1, -6352($fp)
	lw $t1, -6352($fp)
	li $t2, 0
	bne $t1, $t2, label433
	j label434
label433:
	lw $t0, -456($fp)
	sw $t0, -6356($fp)
	li $t0, 0
	lw $t1, -6356($fp)
	sub $t0, $t0, $t1
	sw $t0, -6360($fp)
	li $t0, 0
	sw $t0, -6364($fp)
	lw $t0, -5408($fp)
	sw $t0, -6368($fp)
	lw $t0, -5444($fp)
	sw $t0, -6372($fp)
	lw $t1, -6368($fp)
	lw $t2, -6372($fp)
	beq $t1, $t2, label444
	j label445
label444:
	li $t0, 1
	sw $t0, -6364($fp)
label445:
	addi $sp, $sp, -4
	lw $t0, -6364($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6376($fp)
	addi $sp, $sp, 8
	li $t0, 46071
	sw $t0, -6380($fp)
	lw $t0, -6376($fp)
	lw $t1, -6380($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6384($fp)
	lw $t0, -6360($fp)
	lw $t1, -6384($fp)
	sub $t0, $t0, $t1
	sw $t0, -6388($fp)
	lw $t1, -6388($fp)
	li $t2, 0
	bne $t1, $t2, label441
	j label442
label441:
	li $t0, 17298
	sw $t0, -6392($fp)
	lw $t0, -5396($fp)
	sw $t0, -6396($fp)
	lw $t0, -6392($fp)
	lw $t1, -6396($fp)
	sub $t0, $t0, $t1
	sw $t0, -6400($fp)
	addi $sp, $sp, -4
	lw $t0, -6400($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6404($fp)
	addi $sp, $sp, 8
	li $t0, 48692
	sw $t0, -6408($fp)
	lw $t0, -6404($fp)
	lw $t1, -6408($fp)
	add $t0, $t0, $t1
	sw $t0, -6412($fp)
	j label443
label442:
	li $t0, 0
	sw $t0, -6416($fp)
	addi $t0, $fp, -32
	sw $t0, -6420($fp)
	li $t0, 0
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
	lw $t0, -540($fp)
	sw $t0, -6440($fp)
	lw $t0, -6436($fp)
	lw $t1, -6440($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6444($fp)
	li $t0, 20078
	sw $t0, -6448($fp)
	lw $t0, -6444($fp)
	lw $t1, -6448($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6452($fp)
	li $t0, 0
	lw $t1, -6452($fp)
	sub $t0, $t0, $t1
	sw $t0, -6456($fp)
	li $t0, 0
	sw $t0, -6460($fp)
	addi $t0, $fp, -120
	sw $t0, -6464($fp)
	lw $t0, -1668($fp)
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
	li $t0, 0
	lw $t1, -6480($fp)
	sub $t0, $t0, $t1
	sw $t0, -6484($fp)
	addi $sp, $sp, -4
	lw $t0, -6484($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6488($fp)
	addi $sp, $sp, 8
	lw $t1, -6488($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label448
label448:
	li $t0, 1
	sw $t0, -6460($fp)
label449:
	lw $t0, -1044($fp)
	sw $t0, -6492($fp)
	lw $t0, -6460($fp)
	lw $t1, -6492($fp)
	add $t0, $t0, $t1
	sw $t0, -6496($fp)
	lw $t1, -6456($fp)
	lw $t2, -6496($fp)
	blt $t1, $t2, label446
	j label447
label446:
	li $t0, 1
	sw $t0, -6416($fp)
label447:
	lw $ra, -4($fp)
	lw $v0, -6416($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label443:
	j label435
label434:
	li $t0, 0
	sw $t0, -6500($fp)
	lw $t0, -648($fp)
	sw $t0, -6504($fp)
	li $t0, 45247
	sw $t0, -6508($fp)
	lw $t1, -6504($fp)
	lw $t2, -6508($fp)
	beq $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -6500($fp)
label451:
label435:
	j label430
label429:
	li $t0, 49554
	sw $t0, -6512($fp)
	lw $t0, -6512($fp)
	sw $t0, -6516($fp)
	lw $t0, -6516($fp)
	sw $t0, -6520($fp)
	li $t0, 0
	sw $t0, -6524($fp)
	li $t0, 0
	sw $t0, -6528($fp)
	lw $t0, -1044($fp)
	sw $t0, -6532($fp)
	lw $t1, -6532($fp)
	li $t2, 0
	bne $t1, $t2, label455
	j label454
label454:
	li $t0, 1
	sw $t0, -6528($fp)
label455:
	addi $t0, $fp, -156
	sw $t0, -6536($fp)
	li $t0, 0
	sw $t0, -6540($fp)
	lw $t0, -5432($fp)
	sw $t0, -6544($fp)
	lw $t0, -696($fp)
	sw $t0, -6548($fp)
	lw $t1, -6544($fp)
	lw $t2, -6548($fp)
	blt $t1, $t2, label456
	j label457
label456:
	li $t0, 1
	sw $t0, -6540($fp)
label457:
	li $t0, 4
	lw $t1, -6540($fp)
	mul $t0, $t0, $t1
	sw $t0, -6552($fp)
	lw $t0, -6552($fp)
	lw $t1, -6536($fp)
	add $t0, $t0, $t1
	sw $t0, -6556($fp)
	lw $t0, -6556($fp)
	lw $t1, 0($t0)
	sw $t1, -6560($fp)
	lw $t1, -6528($fp)
	lw $t2, -6560($fp)
	beq $t1, $t2, label452
	j label453
label452:
	li $t0, 1
	sw $t0, -6524($fp)
label453:
	li $t0, 0
	sw $t0, -6564($fp)
	li $t0, 0
	sw $t0, -6568($fp)
	addi $t0, $fp, -52
	sw $t0, -6572($fp)
	lw $t0, -6516($fp)
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
	lw $t1, -6588($fp)
	li $t2, 0
	bne $t1, $t2, label461
	j label460
label460:
	li $t0, 1
	sw $t0, -6568($fp)
label461:
	li $t0, 0
	lw $t1, -6568($fp)
	sub $t0, $t0, $t1
	sw $t0, -6592($fp)
	lw $t0, -1032($fp)
	sw $t0, -6596($fp)
	li $t0, 0
	lw $t1, -6596($fp)
	sub $t0, $t0, $t1
	sw $t0, -6600($fp)
	lw $t1, -6592($fp)
	lw $t2, -6600($fp)
	beq $t1, $t2, label458
	j label459
label458:
	li $t0, 1
	sw $t0, -6564($fp)
label459:
	addi $t0, $fp, -48
	sw $t0, -6604($fp)
	li $t0, 0
	sw $t0, -6608($fp)
	lw $t0, -1032($fp)
	sw $t0, -6612($fp)
	lw $t1, -6612($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label462
label462:
	li $t0, 1
	sw $t0, -6608($fp)
label463:
	li $t0, 0
	lw $t1, -6608($fp)
	sub $t0, $t0, $t1
	sw $t0, -6616($fp)
	li $t0, 4
	lw $t1, -6616($fp)
	mul $t0, $t0, $t1
	sw $t0, -6620($fp)
	lw $t0, -6620($fp)
	lw $t1, -6604($fp)
	add $t0, $t0, $t1
	sw $t0, -6624($fp)
	lw $t0, -6624($fp)
	lw $t1, 0($t0)
	sw $t1, -6628($fp)
	li $t0, 45205
	sw $t0, -6632($fp)
label430:
	j label423
label425:
	j label363
label362:
	li $t0, 0
	sw $t0, -6636($fp)
	li $t0, 50041
	sw $t0, -6640($fp)
	lw $t1, -6640($fp)
	li $t2, 0
	bne $t1, $t2, label465
	j label464
label464:
	li $t0, 1
	sw $t0, -6636($fp)
label465:
	li $t0, 9552
	sw $t0, -6644($fp)
	lw $t0, 4($fp)
	sw $t0, -6648($fp)
	lw $t0, -6644($fp)
	lw $t1, -6648($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6652($fp)
	lw $t0, -6636($fp)
	lw $t1, -6652($fp)
	add $t0, $t0, $t1
	sw $t0, -6656($fp)
	lw $t0, -6656($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -6660($fp)
	lw $ra, -4($fp)
	lw $v0, -6660($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label363:
	lw $t0, -240($fp)
	sw $t0, -6664($fp)
	lw $t0, -6664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -252($fp)
	sw $t0, -6668($fp)
	lw $t0, -6668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6672($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -6692($fp)
	li $t0, 1
	sw $t0, -6696($fp)
	li $t0, 4
	lw $t1, -6696($fp)
	mul $t0, $t0, $t1
	sw $t0, -6700($fp)
	lw $t0, -6700($fp)
	lw $t1, -6692($fp)
	add $t0, $t0, $t1
	sw $t0, -6704($fp)
	lw $t0, -6704($fp)
	lw $t1, 0($t0)
	sw $t1, -6708($fp)
	lw $t0, -6708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6712($fp)
	li $t0, 2
	sw $t0, -6716($fp)
	li $t0, 4
	lw $t1, -6716($fp)
	mul $t0, $t0, $t1
	sw $t0, -6720($fp)
	lw $t0, -6720($fp)
	lw $t1, -6712($fp)
	add $t0, $t0, $t1
	sw $t0, -6724($fp)
	lw $t0, -6724($fp)
	lw $t1, 0($t0)
	sw $t1, -6728($fp)
	lw $t0, -6728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6732($fp)
	li $t0, 3
	sw $t0, -6736($fp)
	li $t0, 4
	lw $t1, -6736($fp)
	mul $t0, $t0, $t1
	sw $t0, -6740($fp)
	lw $t0, -6740($fp)
	lw $t1, -6732($fp)
	add $t0, $t0, $t1
	sw $t0, -6744($fp)
	lw $t0, -6744($fp)
	lw $t1, 0($t0)
	sw $t1, -6748($fp)
	lw $t0, -6748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6752($fp)
	li $t0, 4
	sw $t0, -6756($fp)
	li $t0, 4
	lw $t1, -6756($fp)
	mul $t0, $t0, $t1
	sw $t0, -6760($fp)
	lw $t0, -6760($fp)
	lw $t1, -6752($fp)
	add $t0, $t0, $t1
	sw $t0, -6764($fp)
	lw $t0, -6764($fp)
	lw $t1, 0($t0)
	sw $t1, -6768($fp)
	lw $t0, -6768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6772($fp)
	li $t0, 5
	sw $t0, -6776($fp)
	li $t0, 4
	lw $t1, -6776($fp)
	mul $t0, $t0, $t1
	sw $t0, -6780($fp)
	lw $t0, -6780($fp)
	lw $t1, -6772($fp)
	add $t0, $t0, $t1
	sw $t0, -6784($fp)
	lw $t0, -6784($fp)
	lw $t1, 0($t0)
	sw $t1, -6788($fp)
	lw $t0, -6788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -6792($fp)
	li $t0, 6
	sw $t0, -6796($fp)
	li $t0, 4
	lw $t1, -6796($fp)
	mul $t0, $t0, $t1
	sw $t0, -6800($fp)
	lw $t0, -6800($fp)
	lw $t1, -6792($fp)
	add $t0, $t0, $t1
	sw $t0, -6804($fp)
	lw $t0, -6804($fp)
	lw $t1, 0($t0)
	sw $t1, -6808($fp)
	lw $t0, -6808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -6812($fp)
	lw $t0, -6812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -6816($fp)
	lw $t0, -6816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -6820($fp)
	lw $t0, -6820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -6824($fp)
	li $t0, 0
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
	lw $t0, -492($fp)
	sw $t0, -6844($fp)
	lw $t0, -6844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -6848($fp)
	lw $t0, -6848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -6852($fp)
	lw $t0, -6852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -6856($fp)
	lw $t0, -6856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -6860($fp)
	lw $t0, -6860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -6864($fp)
	lw $t0, -6864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -6868($fp)
	lw $t0, -6868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -6872($fp)
	li $t0, 0
	sw $t0, -6876($fp)
	li $t0, 4
	lw $t1, -6876($fp)
	mul $t0, $t0, $t1
	sw $t0, -6880($fp)
	lw $t0, -6880($fp)
	lw $t1, -6872($fp)
	add $t0, $t0, $t1
	sw $t0, -6884($fp)
	lw $t0, -6884($fp)
	lw $t1, 0($t0)
	sw $t1, -6888($fp)
	lw $t0, -6888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -6892($fp)
	li $t0, 1
	sw $t0, -6896($fp)
	li $t0, 4
	lw $t1, -6896($fp)
	mul $t0, $t0, $t1
	sw $t0, -6900($fp)
	lw $t0, -6900($fp)
	lw $t1, -6892($fp)
	add $t0, $t0, $t1
	sw $t0, -6904($fp)
	lw $t0, -6904($fp)
	lw $t1, 0($t0)
	sw $t1, -6908($fp)
	lw $t0, -6908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -6912($fp)
	li $t0, 2
	sw $t0, -6916($fp)
	li $t0, 4
	lw $t1, -6916($fp)
	mul $t0, $t0, $t1
	sw $t0, -6920($fp)
	lw $t0, -6920($fp)
	lw $t1, -6912($fp)
	add $t0, $t0, $t1
	sw $t0, -6924($fp)
	lw $t0, -6924($fp)
	lw $t1, 0($t0)
	sw $t1, -6928($fp)
	lw $t0, -6928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -6932($fp)
	lw $t0, -6932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -6936($fp)
	lw $t0, -6936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -6940($fp)
	lw $t0, -6940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -684($fp)
	sw $t0, -6944($fp)
	lw $t0, -6944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -696($fp)
	sw $t0, -6948($fp)
	lw $t0, -6948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -6952($fp)
	lw $t0, -6952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6956($fp)
	li $t0, 0
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
	addi $t0, $fp, -88
	sw $t0, -6976($fp)
	li $t0, 0
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
	addi $t0, $fp, -88
	sw $t0, -6996($fp)
	li $t0, 1
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
	addi $t0, $fp, -88
	sw $t0, -7016($fp)
	li $t0, 2
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
	addi $t0, $fp, -88
	sw $t0, -7036($fp)
	li $t0, 3
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
	addi $t0, $fp, -88
	sw $t0, -7056($fp)
	li $t0, 4
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
	addi $t0, $fp, -88
	sw $t0, -7076($fp)
	li $t0, 5
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
	addi $t0, $fp, -88
	sw $t0, -7096($fp)
	li $t0, 6
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
	addi $t0, $fp, -88
	sw $t0, -7116($fp)
	li $t0, 7
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
	lw $t0, -7132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -7136($fp)
	li $t0, 8
	sw $t0, -7140($fp)
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
	lw $t0, -7152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -7156($fp)
	li $t0, 0
	sw $t0, -7160($fp)
	li $t0, 4
	lw $t1, -7160($fp)
	mul $t0, $t0, $t1
	sw $t0, -7164($fp)
	lw $t0, -7164($fp)
	lw $t1, -7156($fp)
	add $t0, $t0, $t1
	sw $t0, -7168($fp)
	lw $t0, -7168($fp)
	lw $t1, 0($t0)
	sw $t1, -7172($fp)
	lw $t0, -7172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -7176($fp)
	li $t0, 1
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
	addi $t0, $fp, -100
	sw $t0, -7196($fp)
	li $t0, 2
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
	lw $t0, -1032($fp)
	sw $t0, -7216($fp)
	lw $t0, -7216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1044($fp)
	sw $t0, -7220($fp)
	lw $t0, -7220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1056($fp)
	sw $t0, -7224($fp)
	lw $t0, -7224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1068($fp)
	sw $t0, -7228($fp)
	lw $t0, -7228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1080($fp)
	sw $t0, -7232($fp)
	lw $t0, -7232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -120
	sw $t0, -7236($fp)
	li $t0, 0
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
	addi $t0, $fp, -120
	sw $t0, -7256($fp)
	li $t0, 1
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
	addi $t0, $fp, -120
	sw $t0, -7276($fp)
	li $t0, 2
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
	addi $t0, $fp, -120
	sw $t0, -7296($fp)
	li $t0, 3
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
	addi $t0, $fp, -120
	sw $t0, -7316($fp)
	li $t0, 4
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
	addi $t0, $fp, -156
	sw $t0, -7336($fp)
	li $t0, 0
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
	addi $t0, $fp, -156
	sw $t0, -7356($fp)
	li $t0, 1
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
	addi $t0, $fp, -156
	sw $t0, -7376($fp)
	li $t0, 2
	sw $t0, -7380($fp)
	li $t0, 4
	lw $t1, -7380($fp)
	mul $t0, $t0, $t1
	sw $t0, -7384($fp)
	lw $t0, -7384($fp)
	lw $t1, -7376($fp)
	add $t0, $t0, $t1
	sw $t0, -7388($fp)
	lw $t0, -7388($fp)
	lw $t1, 0($t0)
	sw $t1, -7392($fp)
	lw $t0, -7392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -7396($fp)
	li $t0, 3
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
	addi $t0, $fp, -156
	sw $t0, -7416($fp)
	li $t0, 4
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
	addi $t0, $fp, -156
	sw $t0, -7436($fp)
	li $t0, 5
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
	addi $t0, $fp, -156
	sw $t0, -7456($fp)
	li $t0, 6
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
	addi $t0, $fp, -156
	sw $t0, -7476($fp)
	li $t0, 7
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
	addi $t0, $fp, -156
	sw $t0, -7496($fp)
	li $t0, 8
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
	lw $t0, -1428($fp)
	sw $t0, -7516($fp)
	lw $t0, -7516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7520($fp)
	li $t0, 0
	sw $t0, -7524($fp)
	li $t0, 4
	lw $t1, -7524($fp)
	mul $t0, $t0, $t1
	sw $t0, -7528($fp)
	lw $t0, -7528($fp)
	lw $t1, -7520($fp)
	add $t0, $t0, $t1
	sw $t0, -7532($fp)
	lw $t0, -7532($fp)
	lw $t1, 0($t0)
	sw $t1, -7536($fp)
	lw $t0, -7536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7540($fp)
	li $t0, 1
	sw $t0, -7544($fp)
	li $t0, 4
	lw $t1, -7544($fp)
	mul $t0, $t0, $t1
	sw $t0, -7548($fp)
	lw $t0, -7548($fp)
	lw $t1, -7540($fp)
	add $t0, $t0, $t1
	sw $t0, -7552($fp)
	lw $t0, -7552($fp)
	lw $t1, 0($t0)
	sw $t1, -7556($fp)
	lw $t0, -7556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7560($fp)
	li $t0, 2
	sw $t0, -7564($fp)
	li $t0, 4
	lw $t1, -7564($fp)
	mul $t0, $t0, $t1
	sw $t0, -7568($fp)
	lw $t0, -7568($fp)
	lw $t1, -7560($fp)
	add $t0, $t0, $t1
	sw $t0, -7572($fp)
	lw $t0, -7572($fp)
	lw $t1, 0($t0)
	sw $t1, -7576($fp)
	lw $t0, -7576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7580($fp)
	li $t0, 3
	sw $t0, -7584($fp)
	li $t0, 4
	lw $t1, -7584($fp)
	mul $t0, $t0, $t1
	sw $t0, -7588($fp)
	lw $t0, -7588($fp)
	lw $t1, -7580($fp)
	add $t0, $t0, $t1
	sw $t0, -7592($fp)
	lw $t0, -7592($fp)
	lw $t1, 0($t0)
	sw $t1, -7596($fp)
	lw $t0, -7596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7600($fp)
	li $t0, 4
	sw $t0, -7604($fp)
	li $t0, 4
	lw $t1, -7604($fp)
	mul $t0, $t0, $t1
	sw $t0, -7608($fp)
	lw $t0, -7608($fp)
	lw $t1, -7600($fp)
	add $t0, $t0, $t1
	sw $t0, -7612($fp)
	lw $t0, -7612($fp)
	lw $t1, 0($t0)
	sw $t1, -7616($fp)
	lw $t0, -7616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7620($fp)
	li $t0, 5
	sw $t0, -7624($fp)
	li $t0, 4
	lw $t1, -7624($fp)
	mul $t0, $t0, $t1
	sw $t0, -7628($fp)
	lw $t0, -7628($fp)
	lw $t1, -7620($fp)
	add $t0, $t0, $t1
	sw $t0, -7632($fp)
	lw $t0, -7632($fp)
	lw $t1, 0($t0)
	sw $t1, -7636($fp)
	lw $t0, -7636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7640($fp)
	li $t0, 6
	sw $t0, -7644($fp)
	li $t0, 4
	lw $t1, -7644($fp)
	mul $t0, $t0, $t1
	sw $t0, -7648($fp)
	lw $t0, -7648($fp)
	lw $t1, -7640($fp)
	add $t0, $t0, $t1
	sw $t0, -7652($fp)
	lw $t0, -7652($fp)
	lw $t1, 0($t0)
	sw $t1, -7656($fp)
	lw $t0, -7656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7660($fp)
	li $t0, 7
	sw $t0, -7664($fp)
	li $t0, 4
	lw $t1, -7664($fp)
	mul $t0, $t0, $t1
	sw $t0, -7668($fp)
	lw $t0, -7668($fp)
	lw $t1, -7660($fp)
	add $t0, $t0, $t1
	sw $t0, -7672($fp)
	lw $t0, -7672($fp)
	lw $t1, 0($t0)
	sw $t1, -7676($fp)
	lw $t0, -7676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -7680($fp)
	li $t0, 8
	sw $t0, -7684($fp)
	li $t0, 4
	lw $t1, -7684($fp)
	mul $t0, $t0, $t1
	sw $t0, -7688($fp)
	lw $t0, -7688($fp)
	lw $t1, -7680($fp)
	add $t0, $t0, $t1
	sw $t0, -7692($fp)
	lw $t0, -7692($fp)
	lw $t1, 0($t0)
	sw $t1, -7696($fp)
	lw $t0, -7696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1656($fp)
	sw $t0, -7700($fp)
	lw $t0, -7700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1668($fp)
	sw $t0, -7704($fp)
	lw $t0, -7704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1680($fp)
	sw $t0, -7708($fp)
	lw $t0, -7708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -232
	sw $t0, -7712($fp)
	li $t0, 0
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
	addi $t0, $fp, -232
	sw $t0, -7732($fp)
	li $t0, 1
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
	addi $t0, $fp, -232
	sw $t0, -7752($fp)
	li $t0, 2
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
	lw $t0, -7768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -232
	sw $t0, -7772($fp)
	li $t0, 3
	sw $t0, -7776($fp)
	li $t0, 4
	lw $t1, -7776($fp)
	mul $t0, $t0, $t1
	sw $t0, -7780($fp)
	lw $t0, -7780($fp)
	lw $t1, -7772($fp)
	add $t0, $t0, $t1
	sw $t0, -7784($fp)
	lw $t0, -7784($fp)
	lw $t1, 0($t0)
	sw $t1, -7788($fp)
	lw $t0, -7788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -232
	sw $t0, -7792($fp)
	li $t0, 4
	sw $t0, -7796($fp)
	li $t0, 4
	lw $t1, -7796($fp)
	mul $t0, $t0, $t1
	sw $t0, -7800($fp)
	lw $t0, -7800($fp)
	lw $t1, -7792($fp)
	add $t0, $t0, $t1
	sw $t0, -7804($fp)
	lw $t0, -7804($fp)
	lw $t1, 0($t0)
	sw $t1, -7808($fp)
	lw $t0, -7808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -232
	sw $t0, -7812($fp)
	li $t0, 5
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
	lw $t0, -7828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -232
	sw $t0, -7832($fp)
	li $t0, 6
	sw $t0, -7836($fp)
	li $t0, 4
	lw $t1, -7836($fp)
	mul $t0, $t0, $t1
	sw $t0, -7840($fp)
	lw $t0, -7840($fp)
	lw $t1, -7832($fp)
	add $t0, $t0, $t1
	sw $t0, -7844($fp)
	lw $t0, -7844($fp)
	lw $t1, 0($t0)
	sw $t1, -7848($fp)
	lw $t0, -7848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -232
	sw $t0, -7852($fp)
	li $t0, 7
	sw $t0, -7856($fp)
	li $t0, 4
	lw $t1, -7856($fp)
	mul $t0, $t0, $t1
	sw $t0, -7860($fp)
	lw $t0, -7860($fp)
	lw $t1, -7852($fp)
	add $t0, $t0, $t1
	sw $t0, -7864($fp)
	lw $t0, -7864($fp)
	lw $t1, 0($t0)
	sw $t1, -7868($fp)
	lw $t0, -7868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -232
	sw $t0, -7872($fp)
	li $t0, 8
	sw $t0, -7876($fp)
	li $t0, 4
	lw $t1, -7876($fp)
	mul $t0, $t0, $t1
	sw $t0, -7880($fp)
	lw $t0, -7880($fp)
	lw $t1, -7872($fp)
	add $t0, $t0, $t1
	sw $t0, -7884($fp)
	lw $t0, -7884($fp)
	lw $t1, 0($t0)
	sw $t1, -7888($fp)
	lw $t0, -7888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -232
	sw $t0, -7892($fp)
	li $t0, 9
	sw $t0, -7896($fp)
	li $t0, 4
	lw $t1, -7896($fp)
	mul $t0, $t0, $t1
	sw $t0, -7900($fp)
	lw $t0, -7900($fp)
	lw $t1, -7892($fp)
	add $t0, $t0, $t1
	sw $t0, -7904($fp)
	lw $t0, -7904($fp)
	lw $t1, 0($t0)
	sw $t1, -7908($fp)
	lw $t0, -7908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -7912($fp)
	addi $t0, $fp, -52
	sw $t0, -7916($fp)
	li $t0, 0
	sw $t0, -7920($fp)
	lw $t0, 4($fp)
	sw $t0, -7924($fp)
	lw $t1, -7924($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label468
label468:
	li $t0, 1
	sw $t0, -7920($fp)
label469:
	li $t0, 0
	lw $t1, -7920($fp)
	sub $t0, $t0, $t1
	sw $t0, -7928($fp)
	li $t0, 4
	lw $t1, -7928($fp)
	mul $t0, $t0, $t1
	sw $t0, -7932($fp)
	lw $t0, -7932($fp)
	lw $t1, -7916($fp)
	add $t0, $t0, $t1
	sw $t0, -7936($fp)
	lw $t0, -7936($fp)
	lw $t1, 0($t0)
	sw $t1, -7940($fp)
	lw $t0, -672($fp)
	sw $t0, -7944($fp)
	lw $t0, -7944($fp)
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, -7948($fp)
	addi $sp, $sp, -4
	lw $t0, -7948($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7952($fp)
	addi $sp, $sp, 8
	lw $t1, -7940($fp)
	lw $t2, -7952($fp)
	bne $t1, $t2, label466
	j label467
label466:
	li $t0, 1
	sw $t0, -7912($fp)
label467:
	lw $ra, -4($fp)
	lw $v0, -7912($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -520
	li $t0, 1161
	sw $t0, -36($fp)
	addi $t0, $fp, -20
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
	li $t0, 64322
	sw $t0, -60($fp)
	addi $t0, $fp, -20
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
	li $t0, 45223
	sw $t0, -84($fp)
	addi $t0, $fp, -20
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
	li $t0, 61453
	sw $t0, -108($fp)
	addi $t0, $fp, -20
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
	li $t0, 63694
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	li $t0, 11396
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	li $t0, 2578
	sw $t0, -156($fp)
	addi $t0, $fp, -32
	sw $t0, -160($fp)
	li $t0, 0
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
	li $t0, 17364
	sw $t0, -180($fp)
	addi $t0, $fp, -32
	sw $t0, -184($fp)
	li $t0, 1
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
	li $t0, 27084
	sw $t0, -204($fp)
	addi $t0, $fp, -32
	sw $t0, -208($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -228($fp)
	li $t0, 0
	sw $t0, -232($fp)
	lw $t0, -148($fp)
	sw $t0, -236($fp)
	lw $t0, -136($fp)
	sw $t0, -240($fp)
	lw $t0, -236($fp)
	lw $t1, -240($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -244($fp)
	lw $t0, -148($fp)
	sw $t0, -248($fp)
	lw $t0, -244($fp)
	lw $t1, -248($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -252($fp)
	li $t0, 45621
	sw $t0, -256($fp)
	li $t0, 0
	lw $t1, -256($fp)
	sub $t0, $t0, $t1
	sw $t0, -260($fp)
	lw $t1, -252($fp)
	lw $t2, -260($fp)
	ble $t1, $t2, label470
	j label471
label470:
	li $t0, 1
	sw $t0, -232($fp)
label471:
	li $t0, 4
	lw $t1, -232($fp)
	mul $t0, $t0, $t1
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	lw $t1, -228($fp)
	add $t0, $t0, $t1
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	lw $t1, 0($t0)
	sw $t1, -272($fp)
	li $t0, 0
	sw $t0, -276($fp)
	li $t0, 0
	sw $t0, -280($fp)
	lw $t0, -136($fp)
	sw $t0, -284($fp)
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
	lw $t1, -284($fp)
	lw $t2, -304($fp)
	beq $t1, $t2, label474
	j label475
label474:
	li $t0, 1
	sw $t0, -280($fp)
label475:
	li $t0, 0
	sw $t0, -308($fp)
	li $t0, 63651
	sw $t0, -312($fp)
	lw $t0, -136($fp)
	sw $t0, -316($fp)
	lw $t0, -136($fp)
	sw $t0, -320($fp)
	lw $t0, -316($fp)
	lw $t1, -320($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -324($fp)
	lw $t1, -312($fp)
	lw $t2, -324($fp)
	bge $t1, $t2, label476
	j label477
label476:
	li $t0, 1
	sw $t0, -308($fp)
label477:
	lw $t1, -280($fp)
	lw $t2, -308($fp)
	bne $t1, $t2, label472
	j label473
label472:
	li $t0, 1
	sw $t0, -276($fp)
label473:
	addi $t0, $fp, -20
	sw $t0, -328($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
	sw $t0, -348($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -368($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -388($fp)
	li $t0, 3
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
	lw $t0, -136($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -148($fp)
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -416($fp)
	li $t0, 0
	sw $t0, -420($fp)
	li $t0, 4
	lw $t1, -420($fp)
	mul $t0, $t0, $t1
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	lw $t1, -416($fp)
	add $t0, $t0, $t1
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	lw $t1, 0($t0)
	sw $t1, -432($fp)
	lw $t0, -432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -436($fp)
	li $t0, 1
	sw $t0, -440($fp)
	li $t0, 4
	lw $t1, -440($fp)
	mul $t0, $t0, $t1
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	lw $t1, -436($fp)
	add $t0, $t0, $t1
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	lw $t1, 0($t0)
	sw $t1, -452($fp)
	lw $t0, -452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -456($fp)
	li $t0, 2
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
	li $t0, 0
	sw $t0, -476($fp)
	addi $t0, $fp, -32
	sw $t0, -480($fp)
	lw $t0, 4($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -488($fp)
	li $t0, 4
	lw $t1, -488($fp)
	mul $t0, $t0, $t1
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	lw $t1, -480($fp)
	add $t0, $t0, $t1
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	lw $t1, 0($t0)
	sw $t1, -500($fp)
	li $t0, 0
	sw $t0, -504($fp)
	addi $t0, $fp, -20
	sw $t0, -508($fp)
	lw $t0, 4($fp)
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
	lw $t1, -524($fp)
	li $t2, 0
	bne $t1, $t2, label481
	j label480
label480:
	li $t0, 1
	sw $t0, -504($fp)
label481:
	lw $t1, -500($fp)
	lw $t2, -504($fp)
	bgt $t1, $t2, label478
	j label479
label478:
	li $t0, 1
	sw $t0, -476($fp)
label479:
	lw $ra, -4($fp)
	lw $v0, -476($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -396
	li $t0, 32185
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
	li $t0, 3013
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
	li $t0, 62252
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
	li $t0, 41815
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
	li $t0, 26563
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
	li $t0, 3120
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
	li $t0, 42749
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 7098
	sw $t0, -188($fp)
	lw $t0, -180($fp)
	sw $t0, -192($fp)
	lw $t0, -180($fp)
	sw $t0, -196($fp)
	li $t0, 0
	lw $t1, -196($fp)
	sub $t0, $t0, $t1
	sw $t0, -200($fp)
	lw $t0, -192($fp)
	lw $t1, -200($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -204($fp)
	lw $t0, -188($fp)
	lw $t1, -204($fp)
	sub $t0, $t0, $t1
	sw $t0, -208($fp)
	addi $t0, $fp, -28
	sw $t0, -212($fp)
	li $t0, 0
	sw $t0, -216($fp)
	lw $t0, -180($fp)
	sw $t0, -220($fp)
	li $t0, 20418
	sw $t0, -224($fp)
	lw $t1, -220($fp)
	lw $t2, -224($fp)
	bne $t1, $t2, label482
	j label484
label484:
	li $t0, 25905
	sw $t0, -228($fp)
	lw $t1, -228($fp)
	li $t2, 0
	bne $t1, $t2, label482
	j label483
label482:
	li $t0, 1
	sw $t0, -216($fp)
label483:
	addi $sp, $sp, -4
	lw $t0, -216($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -232($fp)
	addi $sp, $sp, 8
	li $t0, 4
	lw $t1, -232($fp)
	mul $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	lw $t1, -212($fp)
	add $t0, $t0, $t1
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	lw $t1, 0($t0)
	sw $t1, -244($fp)
	addi $t0, $fp, -28
	sw $t0, -248($fp)
	li $t0, 0
	sw $t0, -252($fp)
	li $t0, 4
	lw $t1, -252($fp)
	mul $t0, $t0, $t1
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	lw $t1, -248($fp)
	add $t0, $t0, $t1
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	lw $t1, 0($t0)
	sw $t1, -264($fp)
	lw $t0, -264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -268($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -288($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -308($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -328($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -348($fp)
	li $t0, 5
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
	lw $t0, -180($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -372($fp)
	lw $t0, 4($fp)
	sw $t0, -376($fp)
	li $t0, 34625
	sw $t0, -380($fp)
	lw $t0, -376($fp)
	lw $t1, -380($fp)
	mul $t0, $t0, $t1
	sw $t0, -384($fp)
	li $t0, 4
	lw $t1, -384($fp)
	mul $t0, $t0, $t1
	sw $t0, -388($fp)
	lw $t0, -388($fp)
	lw $t1, -372($fp)
	add $t0, $t0, $t1
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	lw $t1, 0($t0)
	sw $t1, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -400($fp)
	lw $ra, -4($fp)
	lw $v0, -400($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -128
	li $t0, 43463
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 45983
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 0
	sw $t0, -32($fp)
	li $t0, 14337
	sw $t0, -36($fp)
	li $t0, 27482
	sw $t0, -40($fp)
	lw $t0, -36($fp)
	lw $t1, -40($fp)
	mul $t0, $t0, $t1
	sw $t0, -44($fp)
	lw $t0, 8($fp)
	sw $t0, -48($fp)
	lw $t0, -44($fp)
	lw $t1, -48($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -52($fp)
	lw $t0, -24($fp)
	sw $t0, -56($fp)
	lw $t0, -52($fp)
	lw $t1, -56($fp)
	sub $t0, $t0, $t1
	sw $t0, -60($fp)
	lw $t0, -12($fp)
	sw $t0, -64($fp)
	lw $t0, 8($fp)
	sw $t0, -68($fp)
	lw $t0, -64($fp)
	lw $t1, -68($fp)
	sub $t0, $t0, $t1
	sw $t0, -72($fp)
	lw $t0, -12($fp)
	sw $t0, -76($fp)
	lw $t0, -72($fp)
	lw $t1, -76($fp)
	sub $t0, $t0, $t1
	sw $t0, -80($fp)
	addi $sp, $sp, -4
	lw $t0, -80($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -84($fp)
	addi $sp, $sp, 8
	lw $t0, -60($fp)
	lw $t1, -84($fp)
	sub $t0, $t0, $t1
	sw $t0, -88($fp)
	li $t0, 0
	sw $t0, -92($fp)
	li $t0, 25652
	sw $t0, -96($fp)
	lw $t0, -24($fp)
	sw $t0, -100($fp)
	lw $t0, -96($fp)
	lw $t1, -100($fp)
	sub $t0, $t0, $t1
	sw $t0, -104($fp)
	lw $t0, -24($fp)
	sw $t0, -108($fp)
	lw $t1, -104($fp)
	lw $t2, -108($fp)
	bge $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -92($fp)
label488:
	addi $sp, $sp, -4
	lw $t0, -92($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -112($fp)
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -116($fp)
	lw $t0, -112($fp)
	lw $t1, -116($fp)
	sub $t0, $t0, $t1
	sw $t0, -120($fp)
	lw $t1, -88($fp)
	lw $t2, -120($fp)
	ble $t1, $t2, label485
	j label486
label485:
	li $t0, 1
	sw $t0, -32($fp)
label486:
	lw $t0, -12($fp)
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, 4($fp)
	sw $t0, -132($fp)
	lw $ra, -4($fp)
	lw $v0, -132($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -288
	li $t0, 64378
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
	li $t0, 37034
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
	li $t0, 26814
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
	li $t0, 63164
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
	li $t0, 16722
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
	li $t0, 0
	sw $t0, -148($fp)
	lw $t0, 4($fp)
	sw $t0, -152($fp)
	li $t0, 22731
	sw $t0, -156($fp)
	lw $t0, -152($fp)
	lw $t1, -156($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -160($fp)
	lw $t1, -160($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label490
label491:
	addi $t0, $fp, -24
	sw $t0, -164($fp)
	li $t0, 61322
	sw $t0, -168($fp)
	li $t0, 28118
	sw $t0, -172($fp)
	lw $t0, -168($fp)
	lw $t1, -172($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -176($fp)
	li $t0, 4
	lw $t1, -176($fp)
	mul $t0, $t0, $t1
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	lw $t1, -164($fp)
	add $t0, $t0, $t1
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	lw $t1, 0($t0)
	sw $t1, -188($fp)
	lw $t1, -188($fp)
	li $t2, 0
	bne $t1, $t2, label489
	j label490
label489:
	li $t0, 1
	sw $t0, -148($fp)
label490:
	addi $t0, $fp, -24
	sw $t0, -192($fp)
	li $t0, 0
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
	lw $t0, -208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -212($fp)
	li $t0, 1
	sw $t0, -216($fp)
	li $t0, 4
	lw $t1, -216($fp)
	mul $t0, $t0, $t1
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	lw $t1, -212($fp)
	add $t0, $t0, $t1
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	lw $t1, 0($t0)
	sw $t1, -228($fp)
	lw $t0, -228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -232($fp)
	li $t0, 2
	sw $t0, -236($fp)
	li $t0, 4
	lw $t1, -236($fp)
	mul $t0, $t0, $t1
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	lw $t1, -232($fp)
	add $t0, $t0, $t1
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	lw $t1, 0($t0)
	sw $t1, -248($fp)
	lw $t0, -248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -252($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -272($fp)
	li $t0, 4
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
	li $t0, 25309
	sw $t0, -292($fp)
	lw $ra, -4($fp)
	lw $v0, -292($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -44
	li $t0, 13151
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	lw $t0, -12($fp)
	sw $t0, -24($fp)
	lw $t0, -12($fp)
	sw $t0, -28($fp)
	lw $t0, -24($fp)
	lw $t1, -28($fp)
	sub $t0, $t0, $t1
	sw $t0, -32($fp)
	li $t0, 55202
	sw $t0, -36($fp)
	lw $t1, -32($fp)
	lw $t2, -36($fp)
	bne $t1, $t2, label492
	j label493
label492:
	li $t0, 1
	sw $t0, -20($fp)
label493:
	addi $sp, $sp, -4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -40($fp)
	addi $sp, $sp, 8
	lw $t0, -12($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 5394
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
	jal f11
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
