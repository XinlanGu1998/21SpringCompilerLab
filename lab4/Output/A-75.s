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
	addi $sp, $sp, -4332
	li $t0, 39482
	sw $t0, -80($fp)
	addi $t0, $fp, -32
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
	li $t0, 26093
	sw $t0, -104($fp)
	addi $t0, $fp, -32
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
	li $t0, 20089
	sw $t0, -128($fp)
	addi $t0, $fp, -32
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
	li $t0, 18306
	sw $t0, -152($fp)
	addi $t0, $fp, -32
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
	li $t0, 22970
	sw $t0, -176($fp)
	addi $t0, $fp, -32
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
	li $t0, 50492
	sw $t0, -200($fp)
	addi $t0, $fp, -32
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
	li $t0, 15750
	sw $t0, -224($fp)
	addi $t0, $fp, -32
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
	li $t0, 14025
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	li $t0, 55862
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	li $t0, 11348
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	li $t0, 36661
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	li $t0, 18959
	sw $t0, -296($fp)
	addi $t0, $fp, -72
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
	li $t0, 6441
	sw $t0, -320($fp)
	addi $t0, $fp, -72
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
	li $t0, 38939
	sw $t0, -344($fp)
	addi $t0, $fp, -72
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
	li $t0, 51782
	sw $t0, -368($fp)
	addi $t0, $fp, -72
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
	li $t0, 25247
	sw $t0, -392($fp)
	addi $t0, $fp, -72
	sw $t0, -396($fp)
	li $t0, 4
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
	li $t0, 47577
	sw $t0, -416($fp)
	addi $t0, $fp, -72
	sw $t0, -420($fp)
	li $t0, 5
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
	li $t0, 30276
	sw $t0, -440($fp)
	addi $t0, $fp, -72
	sw $t0, -444($fp)
	li $t0, 6
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
	li $t0, 24089
	sw $t0, -464($fp)
	addi $t0, $fp, -72
	sw $t0, -468($fp)
	li $t0, 7
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
	li $t0, 17800
	sw $t0, -488($fp)
	addi $t0, $fp, -72
	sw $t0, -492($fp)
	li $t0, 8
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
	li $t0, 16639
	sw $t0, -512($fp)
	addi $t0, $fp, -72
	sw $t0, -516($fp)
	li $t0, 9
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
	li $t0, 63954
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	li $t0, 48662
	sw $t0, -548($fp)
	addi $t0, $fp, -76
	sw $t0, -552($fp)
	li $t0, 0
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
	li $t0, 14668
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	li $t0, 15809
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	li $t0, 58772
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	li $t0, 35614
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -616($fp)
	li $t0, 15400
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	sw $t0, -628($fp)
	li $t0, 36680
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	li $t0, 40143
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	li $t0, 0
	sw $t0, -656($fp)
	li $t0, 21776
	sw $t0, -660($fp)
	lw $t1, -660($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label124
label124:
	li $t0, 1
	sw $t0, -656($fp)
label125:
	li $t0, 10626
	sw $t0, -664($fp)
	lw $t0, -656($fp)
	lw $t1, -664($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -668($fp)
	addi $sp, $sp, -4
	lw $t0, -668($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -672($fp)
	addi $sp, $sp, 8
	li $t0, 700
	sw $t0, -676($fp)
	lw $t0, -672($fp)
	lw $t1, -676($fp)
	mul $t0, $t0, $t1
	sw $t0, -680($fp)
	li $t0, 0
	sw $t0, -684($fp)
	lw $t0, -264($fp)
	sw $t0, -688($fp)
	li $t0, 0
	lw $t1, -688($fp)
	sub $t0, $t0, $t1
	sw $t0, -692($fp)
	lw $t1, -692($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label126
label126:
	li $t0, 1
	sw $t0, -684($fp)
label127:
	lw $t0, -680($fp)
	lw $t1, -684($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -696($fp)
	lw $t0, -600($fp)
	sw $t0, -700($fp)
	li $t0, 0
	sw $t0, -704($fp)
	li $t0, 41865
	sw $t0, -708($fp)
	lw $t1, -708($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label128
label128:
	li $t0, 1
	sw $t0, -704($fp)
label129:
	lw $t0, -700($fp)
	lw $t1, -704($fp)
	mul $t0, $t0, $t1
	sw $t0, -712($fp)
	li $t0, 0
	lw $t1, -712($fp)
	sub $t0, $t0, $t1
	sw $t0, -716($fp)
	lw $t0, -696($fp)
	lw $t1, -716($fp)
	add $t0, $t0, $t1
	sw $t0, -720($fp)
	lw $t1, -720($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
	li $t0, 28933
	sw $t0, -724($fp)
	li $t0, 23671
	sw $t0, -728($fp)
	lw $t0, -724($fp)
	lw $t1, -728($fp)
	mul $t0, $t0, $t1
	sw $t0, -732($fp)
	li $t0, 0
	lw $t1, -732($fp)
	sub $t0, $t0, $t1
	sw $t0, -736($fp)
	li $t0, 26821
	sw $t0, -740($fp)
	lw $t0, -624($fp)
	sw $t0, -744($fp)
	lw $t0, -740($fp)
	lw $t1, -744($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -748($fp)
	lw $t0, -736($fp)
	lw $t1, -748($fp)
	sub $t0, $t0, $t1
	sw $t0, -752($fp)
	li $t0, 44683
	sw $t0, -756($fp)
	li $t0, 37696
	sw $t0, -760($fp)
	lw $t0, -756($fp)
	lw $t1, -760($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -764($fp)
	lw $t0, -624($fp)
	sw $t0, -768($fp)
	lw $t0, -764($fp)
	lw $t1, -768($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -772($fp)
	lw $t0, -752($fp)
	lw $t1, -772($fp)
	sub $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t0, -276($fp)
	sw $t0, -780($fp)
	lw $t1, -776($fp)
	lw $t2, -780($fp)
	beq $t1, $t2, label130
	j label131
label130:
	li $t0, 0
	sw $t0, -784($fp)
	addi $t0, $fp, -76
	sw $t0, -788($fp)
	li $t0, 0
	sw $t0, -792($fp)
	li $t0, 17148
	sw $t0, -796($fp)
	lw $t1, -796($fp)
	li $t2, 0
	bne $t1, $t2, label136
	j label138
label138:
	lw $t0, -624($fp)
	sw $t0, -800($fp)
	lw $t1, -800($fp)
	li $t2, 0
	bne $t1, $t2, label136
	j label137
label136:
	li $t0, 1
	sw $t0, -792($fp)
label137:
	li $t0, 4
	lw $t1, -792($fp)
	mul $t0, $t0, $t1
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	lw $t1, -788($fp)
	add $t0, $t0, $t1
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	lw $t1, 0($t0)
	sw $t1, -812($fp)
	li $t0, 0
	sw $t0, -816($fp)
	li $t0, 56031
	sw $t0, -820($fp)
	li $t0, 8821
	sw $t0, -824($fp)
	lw $t0, -820($fp)
	lw $t1, -824($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -828($fp)
	lw $t0, -624($fp)
	sw $t0, -832($fp)
	lw $t1, -828($fp)
	lw $t2, -832($fp)
	beq $t1, $t2, label139
	j label140
label139:
	li $t0, 1
	sw $t0, -816($fp)
label140:
	addi $sp, $sp, -4
	lw $t0, -816($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -836($fp)
	addi $sp, $sp, 8
	lw $t0, -812($fp)
	lw $t1, -836($fp)
	mul $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t1, -840($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label134
label135:
	lw $t0, -636($fp)
	sw $t0, -844($fp)
	lw $t1, -844($fp)
	li $t2, 0
	bne $t1, $t2, label133
	j label134
label133:
	li $t0, 1
	sw $t0, -784($fp)
label134:
	li $t0, 0
	sw $t0, -848($fp)
	lw $t0, -624($fp)
	sw $t0, -852($fp)
	li $t0, 0
	lw $t1, -852($fp)
	sub $t0, $t0, $t1
	sw $t0, -856($fp)
	lw $t1, -856($fp)
	li $t2, 0
	bne $t1, $t2, label142
	j label141
label141:
	li $t0, 1
	sw $t0, -848($fp)
label142:
	addi $t0, $fp, -72
	sw $t0, -860($fp)
	addi $t0, $fp, -32
	sw $t0, -864($fp)
	li $t0, 5
	sw $t0, -868($fp)
	li $t0, 4
	lw $t1, -868($fp)
	mul $t0, $t0, $t1
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	lw $t1, -864($fp)
	add $t0, $t0, $t1
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	lw $t1, 0($t0)
	sw $t1, -880($fp)
	li $t0, 4
	lw $t1, -880($fp)
	mul $t0, $t0, $t1
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	lw $t1, -860($fp)
	add $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	lw $t1, 0($t0)
	sw $t1, -892($fp)
	lw $t0, -892($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	sw $t0, -896($fp)
	j label132
label131:
	li $t0, 0
	sw $t0, -900($fp)
	li $t0, 47760
	sw $t0, -904($fp)
	lw $t1, -904($fp)
	li $t2, 0
	bne $t1, $t2, label146
	j label147
label146:
	li $t0, 1
	sw $t0, -900($fp)
label147:
	li $t0, 22354
	sw $t0, -908($fp)
	lw $t1, -900($fp)
	lw $t2, -908($fp)
	bne $t1, $t2, label143
	j label144
label143:
	li $t0, 0
	sw $t0, -912($fp)
	li $t0, 0
	sw $t0, -916($fp)
	li $t0, 22183
	sw $t0, -920($fp)
	lw $t0, -600($fp)
	sw $t0, -924($fp)
	lw $t0, -920($fp)
	lw $t1, -924($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -928($fp)
	li $t0, 29801
	sw $t0, -932($fp)
	lw $t1, -928($fp)
	lw $t2, -932($fp)
	bne $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -916($fp)
label151:
	addi $t0, $fp, -72
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
	lw $t1, -916($fp)
	lw $t2, -952($fp)
	beq $t1, $t2, label148
	j label149
label148:
	li $t0, 1
	sw $t0, -912($fp)
label149:
	lw $t0, -912($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -956($fp)
	j label145
label144:
	li $t0, 0
	sw $t0, -960($fp)
	li $t0, 47601
	sw $t0, -964($fp)
	lw $t1, -964($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label154
label154:
	li $t0, 0
	sw $t0, -968($fp)
	li $t0, 3733
	sw $t0, -972($fp)
	lw $t0, -252($fp)
	sw $t0, -976($fp)
	lw $t0, -972($fp)
	lw $t1, -976($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -980($fp)
	li $t0, 44690
	sw $t0, -984($fp)
	lw $t1, -980($fp)
	lw $t2, -984($fp)
	bne $t1, $t2, label155
	j label156
label155:
	li $t0, 1
	sw $t0, -968($fp)
label156:
	addi $sp, $sp, -4
	lw $t0, -968($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -988($fp)
	addi $sp, $sp, 8
	lw $t1, -988($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label153
label152:
	li $t0, 1
	sw $t0, -960($fp)
label153:
	lw $ra, -4($fp)
	lw $v0, -960($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label145:
label132:
	j label123
label122:
	lw $t0, -576($fp)
	sw $t0, -992($fp)
label123:
	addi $t0, $fp, -32
	sw $t0, -996($fp)
	li $t0, 0
	sw $t0, -1000($fp)
	li $t0, 4
	lw $t1, -1000($fp)
	mul $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	lw $t1, -996($fp)
	add $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	lw $t1, 0($t0)
	sw $t1, -1012($fp)
	lw $t0, -1012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1016($fp)
	li $t0, 1
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
	lw $t0, -1032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1036($fp)
	li $t0, 2
	sw $t0, -1040($fp)
	li $t0, 4
	lw $t1, -1040($fp)
	mul $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	lw $t1, -1036($fp)
	add $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	lw $t1, 0($t0)
	sw $t1, -1052($fp)
	lw $t0, -1052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1056($fp)
	li $t0, 3
	sw $t0, -1060($fp)
	li $t0, 4
	lw $t1, -1060($fp)
	mul $t0, $t0, $t1
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	lw $t1, -1056($fp)
	add $t0, $t0, $t1
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	lw $t1, 0($t0)
	sw $t1, -1072($fp)
	lw $t0, -1072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1076($fp)
	li $t0, 4
	sw $t0, -1080($fp)
	li $t0, 4
	lw $t1, -1080($fp)
	mul $t0, $t0, $t1
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	lw $t1, -1076($fp)
	add $t0, $t0, $t1
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	lw $t1, 0($t0)
	sw $t1, -1092($fp)
	lw $t0, -1092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1096($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -1116($fp)
	li $t0, 6
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
	lw $t0, -252($fp)
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -264($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -276($fp)
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1152($fp)
	li $t0, 0
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
	addi $t0, $fp, -72
	sw $t0, -1172($fp)
	li $t0, 1
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
	addi $t0, $fp, -72
	sw $t0, -1192($fp)
	li $t0, 2
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
	addi $t0, $fp, -72
	sw $t0, -1212($fp)
	li $t0, 3
	sw $t0, -1216($fp)
	li $t0, 4
	lw $t1, -1216($fp)
	mul $t0, $t0, $t1
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	lw $t1, -1212($fp)
	add $t0, $t0, $t1
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	lw $t1, 0($t0)
	sw $t1, -1228($fp)
	lw $t0, -1228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1232($fp)
	li $t0, 4
	sw $t0, -1236($fp)
	li $t0, 4
	lw $t1, -1236($fp)
	mul $t0, $t0, $t1
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	lw $t1, -1232($fp)
	add $t0, $t0, $t1
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	lw $t1, 0($t0)
	sw $t1, -1248($fp)
	lw $t0, -1248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1252($fp)
	li $t0, 5
	sw $t0, -1256($fp)
	li $t0, 4
	lw $t1, -1256($fp)
	mul $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	lw $t1, -1252($fp)
	add $t0, $t0, $t1
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	lw $t1, 0($t0)
	sw $t1, -1268($fp)
	lw $t0, -1268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1272($fp)
	li $t0, 6
	sw $t0, -1276($fp)
	li $t0, 4
	lw $t1, -1276($fp)
	mul $t0, $t0, $t1
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	lw $t1, -1272($fp)
	add $t0, $t0, $t1
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	lw $t1, 0($t0)
	sw $t1, -1288($fp)
	lw $t0, -1288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1292($fp)
	li $t0, 7
	sw $t0, -1296($fp)
	li $t0, 4
	lw $t1, -1296($fp)
	mul $t0, $t0, $t1
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	lw $t1, -1292($fp)
	add $t0, $t0, $t1
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	lw $t1, 0($t0)
	sw $t1, -1308($fp)
	lw $t0, -1308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1312($fp)
	li $t0, 8
	sw $t0, -1316($fp)
	li $t0, 4
	lw $t1, -1316($fp)
	mul $t0, $t0, $t1
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	lw $t1, -1312($fp)
	add $t0, $t0, $t1
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	lw $t1, 0($t0)
	sw $t1, -1328($fp)
	lw $t0, -1328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1332($fp)
	li $t0, 9
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
	lw $t0, -1348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
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
	lw $t0, -576($fp)
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -600($fp)
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 30727
	sw $t0, -1400($fp)
	lw $ra, -4($fp)
	lw $v0, -1400($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 18401
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	sw $t0, -1412($fp)
	li $t0, 60499
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	sw $t0, -1496($fp)
	li $t0, 23964
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	sw $t0, -1508($fp)
	li $t0, 54015
	sw $t0, -1512($fp)
	addi $t0, $fp, -1416
	sw $t0, -1516($fp)
	li $t0, 0
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t0, -1516($fp)
	lw $t1, -1524($fp)
	add $t0, $t0, $t1
	sw $t0, -1528($fp)
	lw $t0, -1512($fp)
	lw $t1, -1528($fp)
	sw $t0, 0($t1)
	lw $t0, -1528($fp)
	lw $t1, 0($t0)
	sw $t1, -1532($fp)
	li $t0, 10364
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	sw $t0, -1544($fp)
	li $t0, 60644
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	sw $t0, -1556($fp)
	li $t0, 28622
	sw $t0, -1560($fp)
	addi $t0, $fp, -1444
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
	li $t0, 32140
	sw $t0, -1584($fp)
	addi $t0, $fp, -1444
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
	li $t0, 5734
	sw $t0, -1608($fp)
	addi $t0, $fp, -1444
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
	li $t0, 29323
	sw $t0, -1632($fp)
	addi $t0, $fp, -1444
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
	li $t0, 8469
	sw $t0, -1656($fp)
	addi $t0, $fp, -1444
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
	li $t0, 34667
	sw $t0, -1680($fp)
	addi $t0, $fp, -1444
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
	li $t0, 52994
	sw $t0, -1704($fp)
	addi $t0, $fp, -1444
	sw $t0, -1708($fp)
	li $t0, 6
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
	li $t0, 35290
	sw $t0, -1728($fp)
	addi $t0, $fp, -1484
	sw $t0, -1732($fp)
	li $t0, 0
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
	li $t0, 13814
	sw $t0, -1752($fp)
	addi $t0, $fp, -1484
	sw $t0, -1756($fp)
	li $t0, 1
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
	li $t0, 25154
	sw $t0, -1776($fp)
	addi $t0, $fp, -1484
	sw $t0, -1780($fp)
	li $t0, 2
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
	li $t0, 52438
	sw $t0, -1800($fp)
	addi $t0, $fp, -1484
	sw $t0, -1804($fp)
	li $t0, 3
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
	li $t0, 4309
	sw $t0, -1824($fp)
	addi $t0, $fp, -1484
	sw $t0, -1828($fp)
	li $t0, 4
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
	li $t0, 33975
	sw $t0, -1848($fp)
	addi $t0, $fp, -1484
	sw $t0, -1852($fp)
	li $t0, 5
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
	li $t0, 23010
	sw $t0, -1872($fp)
	addi $t0, $fp, -1484
	sw $t0, -1876($fp)
	li $t0, 6
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
	li $t0, 1245
	sw $t0, -1896($fp)
	addi $t0, $fp, -1484
	sw $t0, -1900($fp)
	li $t0, 7
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
	li $t0, 16199
	sw $t0, -1920($fp)
	addi $t0, $fp, -1484
	sw $t0, -1924($fp)
	li $t0, 8
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
	li $t0, 45364
	sw $t0, -1944($fp)
	addi $t0, $fp, -1484
	sw $t0, -1948($fp)
	li $t0, 9
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
label157:
	li $t0, 23428
	sw $t0, -1968($fp)
	lw $t1, -1968($fp)
	li $t2, 0
	bne $t1, $t2, label158
	j label159
label158:
	li $t0, 46000
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	sw $t0, -1980($fp)
	li $t0, 32458
	sw $t0, -1984($fp)
	lw $t0, -1984($fp)
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	sw $t0, -1992($fp)
	li $t0, 4164
	sw $t0, -1996($fp)
	lw $t1, -1996($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label163
label163:
	lw $t0, -588($fp)
	sw $t0, -2000($fp)
	lw $t1, -2000($fp)
	li $t2, 0
	bne $t1, $t2, label164
	j label161
label164:
	lw $t0, -624($fp)
	sw $t0, -2004($fp)
	li $t0, 28065
	sw $t0, -2008($fp)
	lw $t0, -2004($fp)
	lw $t1, -2008($fp)
	mul $t0, $t0, $t1
	sw $t0, -2012($fp)
	lw $t1, -2012($fp)
	li $t2, 0
	bne $t1, $t2, label160
	j label161
label160:
	lw $t0, -636($fp)
	sw $t0, -2016($fp)
	li $t0, 0
	lw $t1, -2016($fp)
	sub $t0, $t0, $t1
	sw $t0, -2020($fp)
	addi $sp, $sp, -4
	lw $t0, -2020($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2024($fp)
	addi $sp, $sp, 8
	j label162
label161:
	li $t0, 36191
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	sw $t0, -2036($fp)
	li $t0, 48855
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	sw $t0, -2048($fp)
	li $t0, 0
	sw $t0, -2052($fp)
	li $t0, 0
	sw $t0, -2056($fp)
	lw $t0, -2032($fp)
	sw $t0, -2060($fp)
	lw $t0, -636($fp)
	sw $t0, -2064($fp)
	lw $t1, -2060($fp)
	lw $t2, -2064($fp)
	bge $t1, $t2, label169
	j label168
label169:
	li $t0, 58792
	sw $t0, -2068($fp)
	lw $t1, -2068($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label168
label167:
	li $t0, 1
	sw $t0, -2056($fp)
label168:
	addi $sp, $sp, -4
	lw $t0, -2056($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2072($fp)
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -2076($fp)
	lw $t0, -2072($fp)
	lw $t1, -2076($fp)
	sub $t0, $t0, $t1
	sw $t0, -2080($fp)
	addi $t0, $fp, -76
	sw $t0, -2084($fp)
	li $t0, 0
	sw $t0, -2088($fp)
	li $t0, 54592
	sw $t0, -2092($fp)
	lw $t0, -2044($fp)
	sw $t0, -2096($fp)
	lw $t1, -2092($fp)
	lw $t2, -2096($fp)
	ble $t1, $t2, label170
	j label171
label170:
	li $t0, 1
	sw $t0, -2088($fp)
label171:
	li $t0, 4
	lw $t1, -2088($fp)
	mul $t0, $t0, $t1
	sw $t0, -2100($fp)
	lw $t0, -2100($fp)
	lw $t1, -2084($fp)
	add $t0, $t0, $t1
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	lw $t1, 0($t0)
	sw $t1, -2108($fp)
	lw $t1, -2080($fp)
	lw $t2, -2108($fp)
	beq $t1, $t2, label165
	j label166
label165:
	li $t0, 1
	sw $t0, -2052($fp)
label166:
label162:
	lw $t0, -1976($fp)
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1988($fp)
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 43818
	sw $t0, -2120($fp)
	li $t0, 0
	lw $t1, -2120($fp)
	sub $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $ra, -4($fp)
	lw $v0, -2124($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label172:
	lw $t0, -636($fp)
	sw $t0, -2128($fp)
	lw $t1, -2128($fp)
	li $t2, 0
	bne $t1, $t2, label173
	j label174
label173:
label175:
	lw $t0, -264($fp)
	sw $t0, -2132($fp)
	lw $t1, -2132($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label177
label176:
	li $t0, 17220
	sw $t0, -2136($fp)
	lw $t0, -2136($fp)
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	sw $t0, -2144($fp)
	addi $t0, $fp, -1416
	sw $t0, -2148($fp)
	li $t0, 0
	sw $t0, -2152($fp)
	li $t0, 0
	sw $t0, -2156($fp)
	li $t0, 0
	sw $t0, -2160($fp)
	li $t0, 43071
	sw $t0, -2164($fp)
	li $t0, 54182
	sw $t0, -2168($fp)
	lw $t1, -2164($fp)
	lw $t2, -2168($fp)
	blt $t1, $t2, label182
	j label183
label182:
	li $t0, 1
	sw $t0, -2160($fp)
label183:
	li $t0, 12328
	sw $t0, -2172($fp)
	lw $t1, -2160($fp)
	lw $t2, -2172($fp)
	ble $t1, $t2, label180
	j label181
label180:
	li $t0, 1
	sw $t0, -2156($fp)
label181:
	addi $t0, $fp, -72
	sw $t0, -2176($fp)
	lw $t0, -2140($fp)
	sw $t0, -2180($fp)
	li $t0, 4
	lw $t1, -2180($fp)
	mul $t0, $t0, $t1
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	lw $t1, -2176($fp)
	add $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	lw $t1, 0($t0)
	sw $t1, -2192($fp)
	lw $t1, -2156($fp)
	lw $t2, -2192($fp)
	beq $t1, $t2, label178
	j label179
label178:
	li $t0, 1
	sw $t0, -2152($fp)
label179:
	li $t0, 4
	lw $t1, -2152($fp)
	mul $t0, $t0, $t1
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	lw $t1, -2148($fp)
	add $t0, $t0, $t1
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	lw $t1, 0($t0)
	sw $t1, -2204($fp)
	j label175
label177:
	j label172
label174:
	lw $t0, -1976($fp)
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1988($fp)
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2216($fp)
	addi $t0, $fp, -1484
	sw $t0, -2220($fp)
	lw $t0, -1552($fp)
	sw $t0, -2224($fp)
	lw $t0, -1976($fp)
	sw $t0, -2228($fp)
	lw $t0, -2224($fp)
	lw $t1, -2228($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2232($fp)
	li $t0, 4
	lw $t1, -2232($fp)
	mul $t0, $t0, $t1
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	lw $t1, -2220($fp)
	add $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	lw $t1, 0($t0)
	sw $t1, -2244($fp)
	lw $t1, -2244($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label184
label184:
	li $t0, 1
	sw $t0, -2216($fp)
label185:
	lw $ra, -4($fp)
	lw $v0, -2216($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1976($fp)
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1988($fp)
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2256($fp)
	li $t0, 6158
	sw $t0, -2260($fp)
	li $t0, 20786
	sw $t0, -2264($fp)
	lw $t0, -2260($fp)
	lw $t1, -2264($fp)
	mul $t0, $t0, $t1
	sw $t0, -2268($fp)
	lw $t0, -1408($fp)
	sw $t0, -2272($fp)
	lw $t0, -2268($fp)
	lw $t1, -2272($fp)
	mul $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $t0, -1988($fp)
	sw $t0, -2280($fp)
	lw $t0, -2276($fp)
	lw $t1, -2280($fp)
	mul $t0, $t0, $t1
	sw $t0, -2284($fp)
	lw $t0, -576($fp)
	sw $t0, -2288($fp)
	lw $t1, -2284($fp)
	lw $t2, -2288($fp)
	beq $t1, $t2, label188
	j label187
label188:
	li $t0, 18063
	sw $t0, -2292($fp)
	lw $t0, -1492($fp)
	sw $t0, -2296($fp)
	lw $t0, -2292($fp)
	lw $t1, -2296($fp)
	add $t0, $t0, $t1
	sw $t0, -2300($fp)
	lw $t1, -2300($fp)
	li $t2, 0
	bne $t1, $t2, label186
	j label187
label186:
	li $t0, 1
	sw $t0, -2256($fp)
label187:
	lw $ra, -4($fp)
	lw $v0, -2256($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label157
label159:
	lw $t0, -540($fp)
	sw $t0, -2304($fp)
	addi $sp, $sp, -4
	lw $t0, -2304($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2308($fp)
	addi $sp, $sp, 8
	lw $t0, -1492($fp)
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1504($fp)
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1416
	sw $t0, -2320($fp)
	li $t0, 0
	sw $t0, -2324($fp)
	li $t0, 4
	lw $t1, -2324($fp)
	mul $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	lw $t1, -2320($fp)
	add $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	lw $t1, 0($t0)
	sw $t1, -2336($fp)
	lw $t0, -2336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1540($fp)
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1552($fp)
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1444
	sw $t0, -2348($fp)
	li $t0, 0
	sw $t0, -2352($fp)
	li $t0, 4
	lw $t1, -2352($fp)
	mul $t0, $t0, $t1
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	lw $t1, -2348($fp)
	add $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	lw $t1, 0($t0)
	sw $t1, -2364($fp)
	lw $t0, -2364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1444
	sw $t0, -2368($fp)
	li $t0, 1
	sw $t0, -2372($fp)
	li $t0, 4
	lw $t1, -2372($fp)
	mul $t0, $t0, $t1
	sw $t0, -2376($fp)
	lw $t0, -2376($fp)
	lw $t1, -2368($fp)
	add $t0, $t0, $t1
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	lw $t1, 0($t0)
	sw $t1, -2384($fp)
	lw $t0, -2384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1444
	sw $t0, -2388($fp)
	li $t0, 2
	sw $t0, -2392($fp)
	li $t0, 4
	lw $t1, -2392($fp)
	mul $t0, $t0, $t1
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	lw $t1, -2388($fp)
	add $t0, $t0, $t1
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	lw $t1, 0($t0)
	sw $t1, -2404($fp)
	lw $t0, -2404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1444
	sw $t0, -2408($fp)
	li $t0, 3
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
	addi $t0, $fp, -1444
	sw $t0, -2428($fp)
	li $t0, 4
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
	addi $t0, $fp, -1444
	sw $t0, -2448($fp)
	li $t0, 5
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
	addi $t0, $fp, -1444
	sw $t0, -2468($fp)
	li $t0, 6
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
	lw $t0, -2484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1484
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
	addi $t0, $fp, -1484
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
	addi $t0, $fp, -1484
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
	addi $t0, $fp, -1484
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
	addi $t0, $fp, -1484
	sw $t0, -2568($fp)
	li $t0, 4
	sw $t0, -2572($fp)
	li $t0, 4
	lw $t1, -2572($fp)
	mul $t0, $t0, $t1
	sw $t0, -2576($fp)
	lw $t0, -2576($fp)
	lw $t1, -2568($fp)
	add $t0, $t0, $t1
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	lw $t1, 0($t0)
	sw $t1, -2584($fp)
	lw $t0, -2584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1484
	sw $t0, -2588($fp)
	li $t0, 5
	sw $t0, -2592($fp)
	li $t0, 4
	lw $t1, -2592($fp)
	mul $t0, $t0, $t1
	sw $t0, -2596($fp)
	lw $t0, -2596($fp)
	lw $t1, -2588($fp)
	add $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $t0, -2600($fp)
	lw $t1, 0($t0)
	sw $t1, -2604($fp)
	lw $t0, -2604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1484
	sw $t0, -2608($fp)
	li $t0, 6
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
	lw $t0, -2624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1484
	sw $t0, -2628($fp)
	li $t0, 7
	sw $t0, -2632($fp)
	li $t0, 4
	lw $t1, -2632($fp)
	mul $t0, $t0, $t1
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	lw $t1, -2628($fp)
	add $t0, $t0, $t1
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	lw $t1, 0($t0)
	sw $t1, -2644($fp)
	lw $t0, -2644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1484
	sw $t0, -2648($fp)
	li $t0, 8
	sw $t0, -2652($fp)
	li $t0, 4
	lw $t1, -2652($fp)
	mul $t0, $t0, $t1
	sw $t0, -2656($fp)
	lw $t0, -2656($fp)
	lw $t1, -2648($fp)
	add $t0, $t0, $t1
	sw $t0, -2660($fp)
	lw $t0, -2660($fp)
	lw $t1, 0($t0)
	sw $t1, -2664($fp)
	lw $t0, -2664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1484
	sw $t0, -2668($fp)
	li $t0, 9
	sw $t0, -2672($fp)
	li $t0, 4
	lw $t1, -2672($fp)
	mul $t0, $t0, $t1
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	lw $t1, -2668($fp)
	add $t0, $t0, $t1
	sw $t0, -2680($fp)
	lw $t0, -2680($fp)
	lw $t1, 0($t0)
	sw $t1, -2684($fp)
	lw $t0, -2684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2688($fp)
	addi $t0, $fp, -1444
	sw $t0, -2692($fp)
	li $t0, 0
	sw $t0, -2696($fp)
	addi $t0, $fp, -1484
	sw $t0, -2700($fp)
	lw $t0, 4($fp)
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
	bne $t1, $t2, label191
	j label193
label193:
	li $t0, 35481
	sw $t0, -2720($fp)
	lw $t1, -2720($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label192
label191:
	li $t0, 1
	sw $t0, -2696($fp)
label192:
	li $t0, 4
	lw $t1, -2696($fp)
	mul $t0, $t0, $t1
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	lw $t1, -2692($fp)
	add $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	lw $t1, 0($t0)
	sw $t1, -2732($fp)
	li $t0, 29255
	sw $t0, -2736($fp)
	li $t0, 52730
	sw $t0, -2740($fp)
	lw $t0, -2736($fp)
	lw $t1, -2740($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2744($fp)
	lw $t1, -2732($fp)
	lw $t2, -2744($fp)
	blt $t1, $t2, label189
	j label190
label189:
	li $t0, 1
	sw $t0, -2688($fp)
label190:
	lw $ra, -4($fp)
	lw $v0, -2688($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label194:
	lw $t0, -624($fp)
	sw $t0, -2748($fp)
	li $t0, 22939
	sw $t0, -2752($fp)
	lw $t0, -2748($fp)
	lw $t1, -2752($fp)
	add $t0, $t0, $t1
	sw $t0, -2756($fp)
	lw $t0, -252($fp)
	sw $t0, -2760($fp)
	lw $t0, -2756($fp)
	lw $t1, -2760($fp)
	sub $t0, $t0, $t1
	sw $t0, -2764($fp)
	addi $sp, $sp, -4
	lw $t0, -2764($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2768($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -2768($fp)
	sub $t0, $t0, $t1
	sw $t0, -2772($fp)
	lw $t1, -2772($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label196
label195:
	lw $t0, -264($fp)
	sw $t0, -2776($fp)
	addi $t0, $fp, -1484
	sw $t0, -2780($fp)
	li $t0, 7
	sw $t0, -2784($fp)
	li $t0, 4
	lw $t1, -2784($fp)
	mul $t0, $t0, $t1
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	lw $t1, -2780($fp)
	add $t0, $t0, $t1
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	lw $t1, 0($t0)
	sw $t1, -2796($fp)
	li $t0, 0
	lw $t1, -2796($fp)
	sub $t0, $t0, $t1
	sw $t0, -2800($fp)
	addi $sp, $sp, -4
	lw $t0, -2800($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2804($fp)
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2808($fp)
	lw $t0, -624($fp)
	sw $t0, -2812($fp)
	lw $t1, -2812($fp)
	li $t2, 0
	bne $t1, $t2, label201
	j label200
label200:
	li $t0, 1
	sw $t0, -2808($fp)
label201:
	lw $t0, -2804($fp)
	lw $t1, -2808($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2816($fp)
	lw $t0, -2776($fp)
	lw $t1, -2816($fp)
	sub $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $t1, -2820($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label198
label197:
label202:
	addi $t0, $fp, -1444
	sw $t0, -2824($fp)
	li $t0, 1
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
	li $t0, 0
	lw $t1, -2840($fp)
	sub $t0, $t0, $t1
	sw $t0, -2844($fp)
	li $t0, 5318
	sw $t0, -2848($fp)
	li $t0, 16532
	sw $t0, -2852($fp)
	lw $t0, -2848($fp)
	lw $t1, -2852($fp)
	mul $t0, $t0, $t1
	sw $t0, -2856($fp)
	lw $t0, -2844($fp)
	lw $t1, -2856($fp)
	sub $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $t0, -2860($fp)
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	sw $t0, -2864($fp)
	lw $t1, -2864($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label204
label203:
label205:
	li $t0, 0
	sw $t0, -2868($fp)
	lw $t0, -1552($fp)
	sw $t0, -2872($fp)
	lw $t1, -2872($fp)
	li $t2, 0
	bne $t1, $t2, label210
	j label209
label209:
	li $t0, 1
	sw $t0, -2868($fp)
label210:
	li $t0, 0
	lw $t1, -2868($fp)
	sub $t0, $t0, $t1
	sw $t0, -2876($fp)
	li $t0, 0
	sw $t0, -2880($fp)
	li $t0, 8922
	sw $t0, -2884($fp)
	li $t0, 6564
	sw $t0, -2888($fp)
	lw $t1, -2884($fp)
	lw $t2, -2888($fp)
	beq $t1, $t2, label211
	j label212
label211:
	li $t0, 1
	sw $t0, -2880($fp)
label212:
	addi $sp, $sp, -4
	lw $t0, -2880($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2892($fp)
	addi $sp, $sp, 8
	lw $t0, -2876($fp)
	lw $t1, -2892($fp)
	sub $t0, $t0, $t1
	sw $t0, -2896($fp)
	lw $t1, -2896($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label208
label208:
	li $t0, 0
	sw $t0, -2900($fp)
	lw $t0, -1504($fp)
	sw $t0, -2904($fp)
	li $t0, 0
	lw $t1, -2904($fp)
	sub $t0, $t0, $t1
	sw $t0, -2908($fp)
	lw $t1, -2908($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label213
label213:
	li $t0, 1
	sw $t0, -2900($fp)
label214:
	li $t0, 0
	lw $t1, -2900($fp)
	sub $t0, $t0, $t1
	sw $t0, -2912($fp)
	lw $t1, -2912($fp)
	li $t2, 0
	bne $t1, $t2, label206
	j label207
label206:
label215:
	li $t0, 32731
	sw $t0, -2916($fp)
	li $t0, 54286
	sw $t0, -2920($fp)
	lw $t0, -2920($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -2924($fp)
	addi $sp, $sp, -4
	lw $t0, -2924($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2928($fp)
	addi $sp, $sp, 8
	lw $t1, -2916($fp)
	lw $t2, -2928($fp)
	bne $t1, $t2, label216
	j label218
label218:
	li $t0, 0
	sw $t0, -2932($fp)
	li $t0, 29992
	sw $t0, -2936($fp)
	li $t0, 13195
	sw $t0, -2940($fp)
	lw $t1, -2936($fp)
	lw $t2, -2940($fp)
	bne $t1, $t2, label219
	j label220
label219:
	li $t0, 1
	sw $t0, -2932($fp)
label220:
	li $t0, 0
	sw $t0, -2944($fp)
	lw $t0, -624($fp)
	sw $t0, -2948($fp)
	li $t0, 21208
	sw $t0, -2952($fp)
	lw $t1, -2948($fp)
	lw $t2, -2952($fp)
	blt $t1, $t2, label221
	j label222
label221:
	li $t0, 1
	sw $t0, -2944($fp)
label222:
	lw $t1, -2932($fp)
	lw $t2, -2944($fp)
	bne $t1, $t2, label216
	j label217
label216:
	lw $t0, -276($fp)
	sw $t0, -2956($fp)
	addi $t0, $fp, -1416
	sw $t0, -2960($fp)
	li $t0, 0
	sw $t0, -2964($fp)
	li $t0, 4
	lw $t1, -2964($fp)
	mul $t0, $t0, $t1
	sw $t0, -2968($fp)
	lw $t0, -2968($fp)
	lw $t1, -2960($fp)
	add $t0, $t0, $t1
	sw $t0, -2972($fp)
	lw $t0, -2972($fp)
	lw $t1, 0($t0)
	sw $t1, -2976($fp)
	lw $t0, -2956($fp)
	lw $t1, -2976($fp)
	mul $t0, $t0, $t1
	sw $t0, -2980($fp)
	li $t0, 57399
	sw $t0, -2984($fp)
	lw $t0, -2980($fp)
	lw $t1, -2984($fp)
	mul $t0, $t0, $t1
	sw $t0, -2988($fp)
	li $t0, 0
	sw $t0, -2992($fp)
	lw $t0, -600($fp)
	sw $t0, -2996($fp)
	li $t0, 17476
	sw $t0, -3000($fp)
	lw $t0, -264($fp)
	sw $t0, -3004($fp)
	addi $sp, $sp, -4
	lw $t0, -3004($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3008($fp)
	addi $sp, $sp, 8
	lw $t0, -3000($fp)
	lw $t1, -3008($fp)
	mul $t0, $t0, $t1
	sw $t0, -3012($fp)
	lw $t1, -2996($fp)
	lw $t2, -3012($fp)
	beq $t1, $t2, label223
	j label224
label223:
	li $t0, 1
	sw $t0, -2992($fp)
label224:
	li $t0, 0
	sw $t0, -3016($fp)
	lw $t0, -1540($fp)
	sw $t0, -3020($fp)
	li $t0, 0
	lw $t1, -3020($fp)
	sub $t0, $t0, $t1
	sw $t0, -3024($fp)
	lw $t1, -3024($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label225
label227:
	li $t0, 34516
	sw $t0, -3028($fp)
	lw $t0, -588($fp)
	sw $t0, -3032($fp)
	lw $t0, -3028($fp)
	lw $t1, -3032($fp)
	mul $t0, $t0, $t1
	sw $t0, -3036($fp)
	li $t0, 0
	lw $t1, -3036($fp)
	sub $t0, $t0, $t1
	sw $t0, -3040($fp)
	lw $t1, -3040($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label226
label225:
	li $t0, 1
	sw $t0, -3016($fp)
label226:
	li $t0, 0
	sw $t0, -3044($fp)
	addi $t0, $fp, -1484
	sw $t0, -3048($fp)
	li $t0, 46455
	sw $t0, -3052($fp)
	lw $t0, -1504($fp)
	sw $t0, -3056($fp)
	lw $t0, -3052($fp)
	lw $t1, -3056($fp)
	mul $t0, $t0, $t1
	sw $t0, -3060($fp)
	li $t0, 4
	lw $t1, -3060($fp)
	mul $t0, $t0, $t1
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	lw $t1, -3048($fp)
	add $t0, $t0, $t1
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	lw $t1, 0($t0)
	sw $t1, -3072($fp)
	li $t0, 0
	lw $t1, -3072($fp)
	sub $t0, $t0, $t1
	sw $t0, -3076($fp)
	li $t0, 0
	sw $t0, -3080($fp)
	li $t0, 0
	sw $t0, -3084($fp)
	lw $t0, -612($fp)
	sw $t0, -3088($fp)
	lw $t1, -3088($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label235
label235:
	li $t0, 61294
	sw $t0, -3092($fp)
	lw $t1, -3092($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label234
label234:
	li $t0, 51737
	sw $t0, -3096($fp)
	lw $t1, -3096($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label233
label232:
	li $t0, 1
	sw $t0, -3084($fp)
label233:
	addi $sp, $sp, -4
	lw $t0, -3084($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3100($fp)
	addi $sp, $sp, 8
	lw $t1, -3100($fp)
	li $t2, 0
	bne $t1, $t2, label231
	j label230
label230:
	li $t0, 1
	sw $t0, -3080($fp)
label231:
	lw $t1, -3076($fp)
	lw $t2, -3080($fp)
	beq $t1, $t2, label228
	j label229
label228:
	li $t0, 1
	sw $t0, -3044($fp)
label229:
	j label215
label217:
	j label205
label207:
	j label202
label204:
	j label199
label198:
	li $t0, 23991
	sw $t0, -3104($fp)
	lw $t1, -3104($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label240
label240:
	lw $t0, -252($fp)
	sw $t0, -3108($fp)
	lw $t1, -3108($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label239
label239:
	li $t0, 0
	sw $t0, -3112($fp)
	li $t0, 49941
	sw $t0, -3116($fp)
	lw $t1, -3116($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label241
label241:
	li $t0, 1
	sw $t0, -3112($fp)
label242:
	li $t0, 64065
	sw $t0, -3120($fp)
	lw $t0, -1408($fp)
	sw $t0, -3124($fp)
	lw $t0, -3120($fp)
	lw $t1, -3124($fp)
	mul $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t1, -3112($fp)
	lw $t2, -3128($fp)
	beq $t1, $t2, label236
	j label237
label236:
	li $t0, 30149
	sw $t0, -3156($fp)
	addi $t0, $fp, -3152
	sw $t0, -3160($fp)
	li $t0, 0
	sw $t0, -3164($fp)
	lw $t0, -3164($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3168($fp)
	lw $t0, -3160($fp)
	lw $t1, -3168($fp)
	add $t0, $t0, $t1
	sw $t0, -3172($fp)
	lw $t0, -3156($fp)
	lw $t1, -3172($fp)
	sw $t0, 0($t1)
	lw $t0, -3172($fp)
	lw $t1, 0($t0)
	sw $t1, -3176($fp)
	li $t0, 5191
	sw $t0, -3180($fp)
	addi $t0, $fp, -3152
	sw $t0, -3184($fp)
	li $t0, 1
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
	li $t0, 16592
	sw $t0, -3204($fp)
	addi $t0, $fp, -3152
	sw $t0, -3208($fp)
	li $t0, 2
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
	li $t0, 94
	sw $t0, -3228($fp)
	addi $t0, $fp, -3152
	sw $t0, -3232($fp)
	li $t0, 3
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
	li $t0, 34447
	sw $t0, -3252($fp)
	addi $t0, $fp, -3152
	sw $t0, -3256($fp)
	li $t0, 4
	sw $t0, -3260($fp)
	lw $t0, -3260($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3264($fp)
	lw $t0, -3256($fp)
	lw $t1, -3264($fp)
	add $t0, $t0, $t1
	sw $t0, -3268($fp)
	lw $t0, -3252($fp)
	lw $t1, -3268($fp)
	sw $t0, 0($t1)
	lw $t0, -3268($fp)
	lw $t1, 0($t0)
	sw $t1, -3272($fp)
	li $t0, 3787
	sw $t0, -3276($fp)
	addi $t0, $fp, -3152
	sw $t0, -3280($fp)
	li $t0, 5
	sw $t0, -3284($fp)
	lw $t0, -3284($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3288($fp)
	lw $t0, -3280($fp)
	lw $t1, -3288($fp)
	add $t0, $t0, $t1
	sw $t0, -3292($fp)
	lw $t0, -3276($fp)
	lw $t1, -3292($fp)
	sw $t0, 0($t1)
	lw $t0, -3292($fp)
	lw $t1, 0($t0)
	sw $t1, -3296($fp)
	li $t0, 23033
	sw $t0, -3300($fp)
	lw $t0, -3300($fp)
	sw $t0, -3304($fp)
	lw $t0, -3304($fp)
	sw $t0, -3308($fp)
	li $t0, 0
	sw $t0, -3312($fp)
	lw $t0, -1504($fp)
	sw $t0, -3316($fp)
	lw $t1, -3316($fp)
	li $t2, 0
	bne $t1, $t2, label247
	j label246
label246:
	li $t0, 1
	sw $t0, -3312($fp)
label247:
	li $t0, 33457
	sw $t0, -3320($fp)
	lw $t0, -3312($fp)
	lw $t1, -3320($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3324($fp)
	li $t0, 4796
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	sw $t0, -3304($fp)
	lw $t0, -3304($fp)
	sw $t0, -3332($fp)
	addi $sp, $sp, -4
	lw $t0, -3332($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3336($fp)
	addi $sp, $sp, 8
	lw $t0, -3324($fp)
	lw $t1, -3336($fp)
	mul $t0, $t0, $t1
	sw $t0, -3340($fp)
	li $t0, 5590
	sw $t0, -3344($fp)
	lw $t0, -3340($fp)
	lw $t1, -3344($fp)
	add $t0, $t0, $t1
	sw $t0, -3348($fp)
	lw $t0, -636($fp)
	sw $t0, -3352($fp)
	lw $t1, -3348($fp)
	lw $t2, -3352($fp)
	ble $t1, $t2, label243
	j label244
label243:
	li $t0, 0
	sw $t0, -3356($fp)
	li $t0, 19369
	sw $t0, -3360($fp)
	li $t0, 0
	lw $t1, -3360($fp)
	sub $t0, $t0, $t1
	sw $t0, -3364($fp)
	li $t0, 0
	sw $t0, -3368($fp)
	lw $t0, 4($fp)
	sw $t0, -3372($fp)
	lw $t1, -3372($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label250
label250:
	li $t0, 1
	sw $t0, -3368($fp)
label251:
	lw $t1, -3364($fp)
	lw $t2, -3368($fp)
	blt $t1, $t2, label248
	j label249
label248:
	li $t0, 1
	sw $t0, -3356($fp)
label249:
	lw $ra, -4($fp)
	lw $v0, -3356($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label244:
label252:
	li $t0, 10114
	sw $t0, -3376($fp)
	li $t0, 22122
	sw $t0, -3380($fp)
	lw $t0, -3376($fp)
	lw $t1, -3380($fp)
	mul $t0, $t0, $t1
	sw $t0, -3384($fp)
	addi $sp, $sp, -4
	lw $t0, -3384($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3388($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -1484
	sw $t0, -3392($fp)
	li $t0, 0
	sw $t0, -3396($fp)
	lw $t0, -1492($fp)
	sw $t0, -3400($fp)
	li $t0, 28292
	sw $t0, -3404($fp)
	lw $t1, -3400($fp)
	lw $t2, -3404($fp)
	bne $t1, $t2, label255
	j label256
label255:
	li $t0, 1
	sw $t0, -3396($fp)
label256:
	li $t0, 4
	lw $t1, -3396($fp)
	mul $t0, $t0, $t1
	sw $t0, -3408($fp)
	lw $t0, -3408($fp)
	lw $t1, -3392($fp)
	add $t0, $t0, $t1
	sw $t0, -3412($fp)
	lw $t0, -3412($fp)
	lw $t1, 0($t0)
	sw $t1, -3416($fp)
	lw $t0, -3388($fp)
	lw $t1, -3416($fp)
	mul $t0, $t0, $t1
	sw $t0, -3420($fp)
	lw $t1, -3420($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label254
label253:
	li $t0, 16678
	sw $t0, -3424($fp)
	addi $t0, $fp, -32
	sw $t0, -3428($fp)
	lw $t0, -588($fp)
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
	lw $t0, -3424($fp)
	lw $t1, -3444($fp)
	mul $t0, $t0, $t1
	sw $t0, -3448($fp)
	li $t0, 54853
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -3456($fp)
	addi $sp, $sp, -4
	lw $t0, -3456($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3460($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -3460($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3464($fp)
	addi $sp, $sp, 8
	lw $t0, -3448($fp)
	lw $t1, -3464($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3468($fp)
	lw $ra, -4($fp)
	lw $v0, -3468($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label252
label254:
	lw $t0, -276($fp)
	sw $t0, -3472($fp)
	lw $t0, -3472($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -3476($fp)
	addi $sp, $sp, -4
	lw $t0, -3476($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3480($fp)
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -3484($fp)
	addi $sp, $sp, -4
	lw $t0, -3484($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3488($fp)
	addi $sp, $sp, 8
	lw $t0, -3480($fp)
	lw $t1, -3488($fp)
	sub $t0, $t0, $t1
	sw $t0, -3492($fp)
	lw $t1, -3492($fp)
	li $t2, 0
	bne $t1, $t2, label257
	j label258
label257:
label260:
	li $t0, 0
	sw $t0, -3496($fp)
	lw $t0, -252($fp)
	sw $t0, -3500($fp)
	lw $t1, -3500($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label264
label263:
	li $t0, 1
	sw $t0, -3496($fp)
label264:
	li $t0, 0
	sw $t0, -3504($fp)
	addi $t0, $fp, -72
	sw $t0, -3508($fp)
	li $t0, 1
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
	lw $t1, -3524($fp)
	li $t2, 0
	bne $t1, $t2, label266
	j label265
label265:
	li $t0, 1
	sw $t0, -3504($fp)
label266:
	lw $t0, -3496($fp)
	lw $t1, -3504($fp)
	add $t0, $t0, $t1
	sw $t0, -3528($fp)
	lw $t1, -3528($fp)
	li $t2, 0
	bne $t1, $t2, label261
	j label262
label261:
	li $t0, 0
	sw $t0, -3532($fp)
	li $t0, 0
	sw $t0, -3536($fp)
	lw $t0, -1540($fp)
	sw $t0, -3540($fp)
	li $t0, 0
	lw $t1, -3540($fp)
	sub $t0, $t0, $t1
	sw $t0, -3544($fp)
	li $t0, 0
	sw $t0, -3548($fp)
	lw $t0, -264($fp)
	sw $t0, -3552($fp)
	lw $t1, -3552($fp)
	li $t2, 0
	bne $t1, $t2, label272
	j label271
label271:
	li $t0, 1
	sw $t0, -3548($fp)
label272:
	li $t0, 2512
	sw $t0, -3556($fp)
	lw $t0, -3548($fp)
	lw $t1, -3556($fp)
	add $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t1, -3544($fp)
	lw $t2, -3560($fp)
	blt $t1, $t2, label269
	j label270
label269:
	li $t0, 1
	sw $t0, -3536($fp)
label270:
	addi $t0, $fp, -3152
	sw $t0, -3564($fp)
	li $t0, 38251
	sw $t0, -3568($fp)
	lw $t0, -624($fp)
	sw $t0, -3572($fp)
	lw $t0, -3568($fp)
	lw $t1, -3572($fp)
	mul $t0, $t0, $t1
	sw $t0, -3576($fp)
	li $t0, 4
	lw $t1, -3576($fp)
	mul $t0, $t0, $t1
	sw $t0, -3580($fp)
	lw $t0, -3580($fp)
	lw $t1, -3564($fp)
	add $t0, $t0, $t1
	sw $t0, -3584($fp)
	lw $t0, -3584($fp)
	lw $t1, 0($t0)
	sw $t1, -3588($fp)
	lw $t1, -3536($fp)
	lw $t2, -3588($fp)
	beq $t1, $t2, label267
	j label268
label267:
	li $t0, 1
	sw $t0, -3532($fp)
label268:
	j label260
label262:
	j label259
label258:
	li $t0, 0
	sw $t0, -3592($fp)
	li $t0, 15292
	sw $t0, -3596($fp)
	lw $t0, -252($fp)
	sw $t0, -3600($fp)
	lw $t0, -3596($fp)
	lw $t1, -3600($fp)
	sub $t0, $t0, $t1
	sw $t0, -3604($fp)
	lw $t1, -3604($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label275
label275:
	lw $t0, -624($fp)
	sw $t0, -3608($fp)
	lw $t1, -3608($fp)
	li $t2, 0
	bne $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -3592($fp)
label274:
	addi $sp, $sp, -4
	lw $t0, -3592($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3612($fp)
	addi $sp, $sp, 8
label259:
	j label238
label237:
	li $t0, 0
	sw $t0, -3616($fp)
	li $t0, 0
	sw $t0, -3620($fp)
	lw $t0, -276($fp)
	sw $t0, -3624($fp)
	lw $t1, -3624($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label280
label279:
	li $t0, 1
	sw $t0, -3620($fp)
label280:
	addi $sp, $sp, -4
	lw $t0, -3620($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3628($fp)
	addi $sp, $sp, 8
	lw $t1, -3628($fp)
	li $t2, 0
	bne $t1, $t2, label276
	j label278
label278:
	li $t0, 43772
	sw $t0, -3632($fp)
	lw $t1, -3632($fp)
	li $t2, 0
	bne $t1, $t2, label276
	j label277
label276:
	li $t0, 1
	sw $t0, -3616($fp)
label277:
	addi $sp, $sp, -4
	lw $t0, -3616($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3636($fp)
	addi $sp, $sp, 8
	lw $ra, -4($fp)
	lw $v0, -3636($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label238:
label199:
	j label194
label196:
	li $t0, 30114
	sw $t0, -3640($fp)
	li $t0, 0
	lw $t1, -3640($fp)
	sub $t0, $t0, $t1
	sw $t0, -3644($fp)
	li $t0, 32768
	sw $t0, -3664($fp)
	addi $t0, $fp, -3660
	sw $t0, -3668($fp)
	li $t0, 0
	sw $t0, -3672($fp)
	lw $t0, -3672($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3676($fp)
	lw $t0, -3668($fp)
	lw $t1, -3676($fp)
	add $t0, $t0, $t1
	sw $t0, -3680($fp)
	lw $t0, -3664($fp)
	lw $t1, -3680($fp)
	sw $t0, 0($t1)
	lw $t0, -3680($fp)
	lw $t1, 0($t0)
	sw $t1, -3684($fp)
	li $t0, 12752
	sw $t0, -3688($fp)
	addi $t0, $fp, -3660
	sw $t0, -3692($fp)
	li $t0, 1
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3700($fp)
	lw $t0, -3692($fp)
	lw $t1, -3700($fp)
	add $t0, $t0, $t1
	sw $t0, -3704($fp)
	lw $t0, -3688($fp)
	lw $t1, -3704($fp)
	sw $t0, 0($t1)
	lw $t0, -3704($fp)
	lw $t1, 0($t0)
	sw $t1, -3708($fp)
	li $t0, 11034
	sw $t0, -3712($fp)
	addi $t0, $fp, -3660
	sw $t0, -3716($fp)
	li $t0, 2
	sw $t0, -3720($fp)
	lw $t0, -3720($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3724($fp)
	lw $t0, -3716($fp)
	lw $t1, -3724($fp)
	add $t0, $t0, $t1
	sw $t0, -3728($fp)
	lw $t0, -3712($fp)
	lw $t1, -3728($fp)
	sw $t0, 0($t1)
	lw $t0, -3728($fp)
	lw $t1, 0($t0)
	sw $t1, -3732($fp)
	li $t0, 28526
	sw $t0, -3736($fp)
	addi $t0, $fp, -3660
	sw $t0, -3740($fp)
	li $t0, 3
	sw $t0, -3744($fp)
	lw $t0, -3744($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3748($fp)
	lw $t0, -3740($fp)
	lw $t1, -3748($fp)
	add $t0, $t0, $t1
	sw $t0, -3752($fp)
	lw $t0, -3736($fp)
	lw $t1, -3752($fp)
	sw $t0, 0($t1)
	lw $t0, -3752($fp)
	lw $t1, 0($t0)
	sw $t1, -3756($fp)
	li $t0, 64489
	sw $t0, -3760($fp)
	li $t0, 0
	lw $t1, -3760($fp)
	sub $t0, $t0, $t1
	sw $t0, -3764($fp)
	li $t0, 0
	sw $t0, -3768($fp)
	lw $t0, -1408($fp)
	sw $t0, -3772($fp)
	lw $t1, -3772($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label285
label284:
	li $t0, 1
	sw $t0, -3768($fp)
label285:
	lw $t1, -3764($fp)
	lw $t2, -3768($fp)
	ble $t1, $t2, label281
	j label282
label281:
label286:
	li $t0, 0
	sw $t0, -3776($fp)
	addi $t0, $fp, -72
	sw $t0, -3780($fp)
	li $t0, 1
	sw $t0, -3784($fp)
	li $t0, 4
	lw $t1, -3784($fp)
	mul $t0, $t0, $t1
	sw $t0, -3788($fp)
	lw $t0, -3788($fp)
	lw $t1, -3780($fp)
	add $t0, $t0, $t1
	sw $t0, -3792($fp)
	lw $t0, -3792($fp)
	lw $t1, 0($t0)
	sw $t1, -3796($fp)
	lw $t1, -3796($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label289
label289:
	li $t0, 1
	sw $t0, -3776($fp)
label290:
	li $t0, 0
	lw $t1, -3776($fp)
	sub $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t1, -3800($fp)
	li $t2, 0
	bne $t1, $t2, label288
	j label287
label287:
	li $t0, 63019
	sw $t0, -3804($fp)
	lw $t1, -3804($fp)
	li $t2, 0
	bne $t1, $t2, label291
	j label292
label291:
	li $t0, 0
	sw $t0, -3808($fp)
	li $t0, 0
	sw $t0, -3812($fp)
	li $t0, 0
	sw $t0, -3816($fp)
	li $t0, 65174
	sw $t0, -3820($fp)
	li $t0, 18123
	sw $t0, -3824($fp)
	lw $t1, -3820($fp)
	lw $t2, -3824($fp)
	ble $t1, $t2, label298
	j label299
label298:
	li $t0, 1
	sw $t0, -3816($fp)
label299:
	li $t0, 14075
	sw $t0, -3828($fp)
	lw $t1, -3816($fp)
	lw $t2, -3828($fp)
	blt $t1, $t2, label296
	j label297
label296:
	li $t0, 1
	sw $t0, -3812($fp)
label297:
	addi $sp, $sp, -4
	lw $t0, -3812($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3832($fp)
	addi $sp, $sp, 8
	li $t0, 65268
	sw $t0, -3836($fp)
	lw $t1, -3832($fp)
	lw $t2, -3836($fp)
	bge $t1, $t2, label294
	j label295
label294:
	li $t0, 1
	sw $t0, -3808($fp)
label295:
	lw $ra, -4($fp)
	lw $v0, -3808($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label293
label292:
	addi $t0, $fp, -3660
	sw $t0, -3840($fp)
	li $t0, 52570
	sw $t0, -3844($fp)
	lw $t0, -276($fp)
	sw $t0, -3848($fp)
	lw $t0, -3844($fp)
	lw $t1, -3848($fp)
	sub $t0, $t0, $t1
	sw $t0, -3852($fp)
	lw $t0, -3852($fp)
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	sw $t0, -3856($fp)
	li $t0, 4
	lw $t1, -3856($fp)
	mul $t0, $t0, $t1
	sw $t0, -3860($fp)
	lw $t0, -3860($fp)
	lw $t1, -3840($fp)
	add $t0, $t0, $t1
	sw $t0, -3864($fp)
	lw $t0, -3864($fp)
	lw $t1, 0($t0)
	sw $t1, -3868($fp)
label293:
	j label286
label288:
	j label283
label282:
	li $t0, 0
	sw $t0, -3872($fp)
	li $t0, 17862
	sw $t0, -3876($fp)
	li $t0, 0
	lw $t1, -3876($fp)
	sub $t0, $t0, $t1
	sw $t0, -3880($fp)
	li $t0, 0
	lw $t1, -3880($fp)
	sub $t0, $t0, $t1
	sw $t0, -3884($fp)
	addi $sp, $sp, -4
	lw $t0, -3884($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3888($fp)
	addi $sp, $sp, 8
	lw $t1, -3888($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label300
label300:
	li $t0, 1
	sw $t0, -3872($fp)
label301:
label283:
	addi $t0, $fp, -32
	sw $t0, -3892($fp)
	li $t0, 0
	sw $t0, -3896($fp)
	li $t0, 4
	lw $t1, -3896($fp)
	mul $t0, $t0, $t1
	sw $t0, -3900($fp)
	lw $t0, -3900($fp)
	lw $t1, -3892($fp)
	add $t0, $t0, $t1
	sw $t0, -3904($fp)
	lw $t0, -3904($fp)
	lw $t1, 0($t0)
	sw $t1, -3908($fp)
	lw $t0, -3908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -3912($fp)
	li $t0, 1
	sw $t0, -3916($fp)
	li $t0, 4
	lw $t1, -3916($fp)
	mul $t0, $t0, $t1
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	lw $t1, -3912($fp)
	add $t0, $t0, $t1
	sw $t0, -3924($fp)
	lw $t0, -3924($fp)
	lw $t1, 0($t0)
	sw $t1, -3928($fp)
	lw $t0, -3928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -3932($fp)
	li $t0, 2
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
	lw $t0, -3948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -3952($fp)
	li $t0, 3
	sw $t0, -3956($fp)
	li $t0, 4
	lw $t1, -3956($fp)
	mul $t0, $t0, $t1
	sw $t0, -3960($fp)
	lw $t0, -3960($fp)
	lw $t1, -3952($fp)
	add $t0, $t0, $t1
	sw $t0, -3964($fp)
	lw $t0, -3964($fp)
	lw $t1, 0($t0)
	sw $t1, -3968($fp)
	lw $t0, -3968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -3972($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -3992($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -4012($fp)
	li $t0, 6
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
	lw $t0, -252($fp)
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -264($fp)
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -276($fp)
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4048($fp)
	li $t0, 0
	sw $t0, -4052($fp)
	li $t0, 4
	lw $t1, -4052($fp)
	mul $t0, $t0, $t1
	sw $t0, -4056($fp)
	lw $t0, -4056($fp)
	lw $t1, -4048($fp)
	add $t0, $t0, $t1
	sw $t0, -4060($fp)
	lw $t0, -4060($fp)
	lw $t1, 0($t0)
	sw $t1, -4064($fp)
	lw $t0, -4064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4068($fp)
	li $t0, 1
	sw $t0, -4072($fp)
	li $t0, 4
	lw $t1, -4072($fp)
	mul $t0, $t0, $t1
	sw $t0, -4076($fp)
	lw $t0, -4076($fp)
	lw $t1, -4068($fp)
	add $t0, $t0, $t1
	sw $t0, -4080($fp)
	lw $t0, -4080($fp)
	lw $t1, 0($t0)
	sw $t1, -4084($fp)
	lw $t0, -4084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4088($fp)
	li $t0, 2
	sw $t0, -4092($fp)
	li $t0, 4
	lw $t1, -4092($fp)
	mul $t0, $t0, $t1
	sw $t0, -4096($fp)
	lw $t0, -4096($fp)
	lw $t1, -4088($fp)
	add $t0, $t0, $t1
	sw $t0, -4100($fp)
	lw $t0, -4100($fp)
	lw $t1, 0($t0)
	sw $t1, -4104($fp)
	lw $t0, -4104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4108($fp)
	li $t0, 3
	sw $t0, -4112($fp)
	li $t0, 4
	lw $t1, -4112($fp)
	mul $t0, $t0, $t1
	sw $t0, -4116($fp)
	lw $t0, -4116($fp)
	lw $t1, -4108($fp)
	add $t0, $t0, $t1
	sw $t0, -4120($fp)
	lw $t0, -4120($fp)
	lw $t1, 0($t0)
	sw $t1, -4124($fp)
	lw $t0, -4124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4128($fp)
	li $t0, 4
	sw $t0, -4132($fp)
	li $t0, 4
	lw $t1, -4132($fp)
	mul $t0, $t0, $t1
	sw $t0, -4136($fp)
	lw $t0, -4136($fp)
	lw $t1, -4128($fp)
	add $t0, $t0, $t1
	sw $t0, -4140($fp)
	lw $t0, -4140($fp)
	lw $t1, 0($t0)
	sw $t1, -4144($fp)
	lw $t0, -4144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4148($fp)
	li $t0, 5
	sw $t0, -4152($fp)
	li $t0, 4
	lw $t1, -4152($fp)
	mul $t0, $t0, $t1
	sw $t0, -4156($fp)
	lw $t0, -4156($fp)
	lw $t1, -4148($fp)
	add $t0, $t0, $t1
	sw $t0, -4160($fp)
	lw $t0, -4160($fp)
	lw $t1, 0($t0)
	sw $t1, -4164($fp)
	lw $t0, -4164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -4168($fp)
	li $t0, 6
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
	addi $t0, $fp, -72
	sw $t0, -4188($fp)
	li $t0, 7
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
	addi $t0, $fp, -72
	sw $t0, -4208($fp)
	li $t0, 8
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
	addi $t0, $fp, -72
	sw $t0, -4228($fp)
	li $t0, 9
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
	lw $t0, -540($fp)
	sw $t0, -4248($fp)
	lw $t0, -4248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -4252($fp)
	li $t0, 0
	sw $t0, -4256($fp)
	li $t0, 4
	lw $t1, -4256($fp)
	mul $t0, $t0, $t1
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	lw $t1, -4252($fp)
	add $t0, $t0, $t1
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	lw $t1, 0($t0)
	sw $t1, -4268($fp)
	lw $t0, -4268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -4276($fp)
	lw $t0, -4276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -600($fp)
	sw $t0, -4280($fp)
	lw $t0, -4280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -612($fp)
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -624($fp)
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -4292($fp)
	lw $t0, -4292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4296($fp)
	li $t0, 0
	sw $t0, -4300($fp)
	lw $t0, -288($fp)
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -4308($fp)
	addi $sp, $sp, -4
	lw $t0, -4308($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4312($fp)
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -4316($fp)
	lw $t0, -4312($fp)
	lw $t1, -4316($fp)
	add $t0, $t0, $t1
	sw $t0, -4320($fp)
	addi $sp, $sp, -4
	lw $t0, -4320($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4324($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -4324($fp)
	sub $t0, $t0, $t1
	sw $t0, -4328($fp)
	lw $t1, -4328($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label304
label304:
	li $t0, 1
	sw $t0, -4300($fp)
label305:
	lw $t0, -588($fp)
	sw $t0, -4332($fp)
	li $t0, 0
	lw $t1, -4332($fp)
	sub $t0, $t0, $t1
	sw $t0, -4336($fp)
	lw $t1, -4300($fp)
	lw $t2, -4336($fp)
	bne $t1, $t2, label302
	j label303
label302:
	li $t0, 1
	sw $t0, -4296($fp)
label303:
	lw $ra, -4($fp)
	lw $v0, -4296($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -536
	li $t0, 22765
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	li $t0, 20491
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
	li $t0, 22658
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
	li $t0, 28355
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
	li $t0, 39860
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
	li $t0, 32773
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
	li $t0, 50477
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
	li $t0, 2616
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
	li $t0, 49451
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
	li $t0, 39794
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
label306:
	addi $t0, $fp, -36
	sw $t0, -256($fp)
	jal f7
	sw $v0, -260($fp)
	addi $sp, $sp, 4
	lw $t0, -248($fp)
	sw $t0, -264($fp)
	lw $t0, -260($fp)
	lw $t1, -264($fp)
	add $t0, $t0, $t1
	sw $t0, -268($fp)
	li $t0, 4
	lw $t1, -268($fp)
	mul $t0, $t0, $t1
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	lw $t1, -256($fp)
	add $t0, $t0, $t1
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	lw $t1, 0($t0)
	sw $t1, -280($fp)
	li $t0, 0
	sw $t0, -284($fp)
	li $t0, 19659
	sw $t0, -288($fp)
	lw $t1, -288($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label309
label309:
	li $t0, 1
	sw $t0, -284($fp)
label310:
	lw $t0, -280($fp)
	lw $t1, -284($fp)
	mul $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t1, -292($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label308
label307:
	li $t0, 0
	sw $t0, -296($fp)
	li $t0, 30586
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -304($fp)
	addi $sp, $sp, -4
	lw $t0, -304($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -308($fp)
	addi $sp, $sp, 8
	lw $t1, -308($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label312
label313:
	li $t0, 42306
	sw $t0, -312($fp)
	lw $t1, -312($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label312
label311:
	li $t0, 1
	sw $t0, -296($fp)
label312:
	lw $t0, -296($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -316($fp)
	j label306
label308:
	lw $t0, -44($fp)
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
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
	lw $t0, -340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -344($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -364($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -384($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -404($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -424($fp)
	li $t0, 5
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
	lw $t0, -440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -444($fp)
	li $t0, 6
	sw $t0, -448($fp)
	li $t0, 4
	lw $t1, -448($fp)
	mul $t0, $t0, $t1
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	lw $t1, -444($fp)
	add $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	lw $t1, 0($t0)
	sw $t1, -460($fp)
	lw $t0, -460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -464($fp)
	li $t0, 7
	sw $t0, -468($fp)
	li $t0, 4
	lw $t1, -468($fp)
	mul $t0, $t0, $t1
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	lw $t1, -464($fp)
	add $t0, $t0, $t1
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	lw $t1, 0($t0)
	sw $t1, -480($fp)
	lw $t0, -480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -248($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -488($fp)
	li $t0, 0
	sw $t0, -492($fp)
	li $t0, 0
	sw $t0, -496($fp)
	li $t0, 57910
	sw $t0, -500($fp)
	lw $t1, -500($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label318
label318:
	li $t0, 1
	sw $t0, -496($fp)
label319:
	lw $t0, -44($fp)
	sw $t0, -504($fp)
	lw $t0, -496($fp)
	lw $t1, -504($fp)
	add $t0, $t0, $t1
	sw $t0, -508($fp)
	lw $t0, -44($fp)
	sw $t0, -512($fp)
	lw $t0, -508($fp)
	lw $t1, -512($fp)
	add $t0, $t0, $t1
	sw $t0, -516($fp)
	lw $t0, -44($fp)
	sw $t0, -520($fp)
	lw $t1, -516($fp)
	lw $t2, -520($fp)
	ble $t1, $t2, label316
	j label317
label316:
	li $t0, 1
	sw $t0, -492($fp)
label317:
	addi $t0, $fp, -36
	sw $t0, -524($fp)
	jal f7
	sw $v0, -528($fp)
	addi $sp, $sp, 4
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
	lw $t1, -492($fp)
	lw $t2, -540($fp)
	beq $t1, $t2, label314
	j label315
label314:
	li $t0, 1
	sw $t0, -488($fp)
label315:
	lw $ra, -4($fp)
	lw $v0, -488($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -76
	li $t0, 45878
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
	addi $t0, $fp, -8
	sw $t0, -56($fp)
	li $t0, 0
	sw $t0, -60($fp)
	li $t0, 4
	lw $t1, -60($fp)
	mul $t0, $t0, $t1
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	lw $t1, -56($fp)
	add $t0, $t0, $t1
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	lw $t1, 0($t0)
	sw $t1, -72($fp)
	li $t0, 0
	lw $t1, -72($fp)
	sub $t0, $t0, $t1
	sw $t0, -76($fp)
	li $t0, 0
	lw $t1, -76($fp)
	sub $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $ra, -4($fp)
	lw $v0, -80($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1656
	li $t0, 13110
	sw $t0, -48($fp)
	lw $t0, -48($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	li $t0, 33294
	sw $t0, -60($fp)
	lw $t0, -60($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	sw $t0, -68($fp)
	li $t0, 33522
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	li $t0, 41637
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	li $t0, 32248
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	li $t0, 3011
	sw $t0, -108($fp)
	addi $t0, $fp, -44
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
	li $t0, 54568
	sw $t0, -132($fp)
	addi $t0, $fp, -44
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
	li $t0, 29731
	sw $t0, -156($fp)
	addi $t0, $fp, -44
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
	li $t0, 2649
	sw $t0, -180($fp)
	addi $t0, $fp, -44
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
	li $t0, 7155
	sw $t0, -204($fp)
	addi $t0, $fp, -44
	sw $t0, -208($fp)
	li $t0, 4
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
	li $t0, 43806
	sw $t0, -228($fp)
	addi $t0, $fp, -44
	sw $t0, -232($fp)
	li $t0, 5
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
	li $t0, 2381
	sw $t0, -252($fp)
	addi $t0, $fp, -44
	sw $t0, -256($fp)
	li $t0, 6
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
	li $t0, 59725
	sw $t0, -276($fp)
	addi $t0, $fp, -44
	sw $t0, -280($fp)
	li $t0, 7
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
	li $t0, 61669
	sw $t0, -300($fp)
	addi $t0, $fp, -44
	sw $t0, -304($fp)
	li $t0, 8
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t0, -304($fp)
	lw $t1, -312($fp)
	add $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $t0, -300($fp)
	lw $t1, -316($fp)
	sw $t0, 0($t1)
	lw $t0, -316($fp)
	lw $t1, 0($t0)
	sw $t1, -320($fp)
	li $t0, 25146
	sw $t0, -324($fp)
	addi $t0, $fp, -44
	sw $t0, -328($fp)
	li $t0, 9
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $t0, -328($fp)
	lw $t1, -336($fp)
	add $t0, $t0, $t1
	sw $t0, -340($fp)
	lw $t0, -324($fp)
	lw $t1, -340($fp)
	sw $t0, 0($t1)
	lw $t0, -340($fp)
	lw $t1, 0($t0)
	sw $t1, -344($fp)
	lw $t0, -52($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -76($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -88($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -100($fp)
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -368($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -388($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -408($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -428($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -448($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -468($fp)
	li $t0, 5
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
	addi $t0, $fp, -44
	sw $t0, -488($fp)
	li $t0, 6
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
	addi $t0, $fp, -44
	sw $t0, -508($fp)
	li $t0, 7
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
	addi $t0, $fp, -44
	sw $t0, -528($fp)
	li $t0, 8
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
	addi $t0, $fp, -44
	sw $t0, -548($fp)
	li $t0, 9
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
	jal f7
	sw $v0, -568($fp)
	addi $sp, $sp, 4
	lw $ra, -4($fp)
	lw $v0, -568($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -52($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -76($fp)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -88($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -100($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -592($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -612($fp)
	li $t0, 1
	sw $t0, -616($fp)
	li $t0, 4
	lw $t1, -616($fp)
	mul $t0, $t0, $t1
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	lw $t1, -612($fp)
	add $t0, $t0, $t1
	sw $t0, -624($fp)
	lw $t0, -624($fp)
	lw $t1, 0($t0)
	sw $t1, -628($fp)
	lw $t0, -628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -632($fp)
	li $t0, 2
	sw $t0, -636($fp)
	li $t0, 4
	lw $t1, -636($fp)
	mul $t0, $t0, $t1
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	lw $t1, -632($fp)
	add $t0, $t0, $t1
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	lw $t1, 0($t0)
	sw $t1, -648($fp)
	lw $t0, -648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -652($fp)
	li $t0, 3
	sw $t0, -656($fp)
	li $t0, 4
	lw $t1, -656($fp)
	mul $t0, $t0, $t1
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	lw $t1, -652($fp)
	add $t0, $t0, $t1
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	lw $t1, 0($t0)
	sw $t1, -668($fp)
	lw $t0, -668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -672($fp)
	li $t0, 4
	sw $t0, -676($fp)
	li $t0, 4
	lw $t1, -676($fp)
	mul $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	lw $t1, -672($fp)
	add $t0, $t0, $t1
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	lw $t1, 0($t0)
	sw $t1, -688($fp)
	lw $t0, -688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -692($fp)
	li $t0, 5
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
	lw $t0, -708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -712($fp)
	li $t0, 6
	sw $t0, -716($fp)
	li $t0, 4
	lw $t1, -716($fp)
	mul $t0, $t0, $t1
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	lw $t1, -712($fp)
	add $t0, $t0, $t1
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	lw $t1, 0($t0)
	sw $t1, -728($fp)
	lw $t0, -728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -732($fp)
	li $t0, 7
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
	lw $t0, -748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -752($fp)
	li $t0, 8
	sw $t0, -756($fp)
	li $t0, 4
	lw $t1, -756($fp)
	mul $t0, $t0, $t1
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	lw $t1, -752($fp)
	add $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	lw $t1, 0($t0)
	sw $t1, -768($fp)
	lw $t0, -768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -772($fp)
	li $t0, 9
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
	lw $t0, -788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -792($fp)
	li $t0, 0
	sw $t0, -796($fp)
	lw $t0, 12($fp)
	sw $t0, -800($fp)
	lw $t0, 12($fp)
	sw $t0, -804($fp)
	lw $t1, -800($fp)
	lw $t2, -804($fp)
	bge $t1, $t2, label322
	j label323
label322:
	li $t0, 1
	sw $t0, -796($fp)
label323:
	lw $t0, -100($fp)
	sw $t0, -808($fp)
	lw $t1, -796($fp)
	lw $t2, -808($fp)
	beq $t1, $t2, label320
	j label321
label320:
	li $t0, 1
	sw $t0, -792($fp)
label321:
	li $t0, 51564
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -816($fp)
	li $t0, 0
	sw $t0, -820($fp)
	li $t0, 0
	sw $t0, -824($fp)
	li $t0, 53501
	sw $t0, -828($fp)
	lw $t0, -88($fp)
	sw $t0, -832($fp)
	lw $t1, -828($fp)
	lw $t2, -832($fp)
	blt $t1, $t2, label326
	j label327
label326:
	li $t0, 1
	sw $t0, -824($fp)
label327:
	li $t0, 54541
	sw $t0, -836($fp)
	lw $t1, -824($fp)
	lw $t2, -836($fp)
	bge $t1, $t2, label324
	j label325
label324:
	li $t0, 1
	sw $t0, -820($fp)
label325:
	li $t0, 0
	sw $t0, -840($fp)
	li $t0, 14680
	sw $t0, -844($fp)
	lw $t0, -64($fp)
	sw $t0, -848($fp)
	lw $t1, -844($fp)
	lw $t2, -848($fp)
	beq $t1, $t2, label330
	j label329
label330:
	li $t0, 18791
	sw $t0, -852($fp)
	lw $t1, -852($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label329
label328:
	li $t0, 1
	sw $t0, -840($fp)
label329:
	lw $t0, 12($fp)
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -860($fp)
	addi $sp, $sp, -4
	lw $t0, -792($fp)
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
	addi $sp, $sp, -4
	lw $t0, -860($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -864($fp)
	addi $sp, $sp, 24
	addi $sp, $sp, -4
	lw $t0, -864($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -868($fp)
	addi $sp, $sp, 8
	lw $t0, -868($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -872($fp)
	lw $ra, -4($fp)
	lw $v0, -872($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label331:
	addi $t0, $fp, -44
	sw $t0, -876($fp)
	li $t0, 0
	sw $t0, -880($fp)
	li $t0, 0
	sw $t0, -884($fp)
	li $t0, 38442
	sw $t0, -888($fp)
	li $t0, 57157
	sw $t0, -892($fp)
	lw $t1, -888($fp)
	lw $t2, -892($fp)
	beq $t1, $t2, label337
	j label338
label337:
	li $t0, 1
	sw $t0, -884($fp)
label338:
	li $t0, 35480
	sw $t0, -896($fp)
	lw $t1, -884($fp)
	lw $t2, -896($fp)
	beq $t1, $t2, label336
	j label335
label336:
	lw $t0, 12($fp)
	sw $t0, -900($fp)
	lw $t1, -900($fp)
	li $t2, 0
	bne $t1, $t2, label334
	j label335
label334:
	li $t0, 1
	sw $t0, -880($fp)
label335:
	li $t0, 4
	lw $t1, -880($fp)
	mul $t0, $t0, $t1
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	lw $t1, -876($fp)
	add $t0, $t0, $t1
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	lw $t1, 0($t0)
	sw $t1, -912($fp)
	lw $t1, -912($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label333
label332:
	li $t0, 12700
	sw $t0, -916($fp)
	lw $ra, -4($fp)
	lw $v0, -916($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label331
label333:
	li $t0, 11280
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -928($fp)
	li $t0, 530
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -940($fp)
	li $t0, 55006
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	sw $t0, -952($fp)
	li $t0, 3654
	sw $t0, -956($fp)
	lw $t1, -956($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label340
label339:
	lw $t0, 4($fp)
	sw $t0, -960($fp)
	li $t0, 46409
	sw $t0, -964($fp)
	addi $sp, $sp, -4
	lw $t0, -964($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -968($fp)
	addi $sp, $sp, 8
	lw $t0, -960($fp)
	lw $t1, -968($fp)
	mul $t0, $t0, $t1
	sw $t0, -972($fp)
	li $t0, 10012
	sw $t0, -976($fp)
	lw $t0, 4($fp)
	sw $t0, -980($fp)
	li $t0, 35620
	sw $t0, -984($fp)
	lw $t0, -980($fp)
	lw $t1, -984($fp)
	mul $t0, $t0, $t1
	sw $t0, -988($fp)
	li $t0, 10019
	sw $t0, -992($fp)
	lw $t0, -988($fp)
	lw $t1, -992($fp)
	add $t0, $t0, $t1
	sw $t0, -996($fp)
	li $t0, 59665
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -1004($fp)
	li $t0, 0
	sw $t0, -1008($fp)
	lw $t0, 4($fp)
	sw $t0, -1012($fp)
	lw $t1, -1012($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label343
label345:
	li $t0, 59519
	sw $t0, -1016($fp)
	lw $t1, -1016($fp)
	li $t2, 0
	bne $t1, $t2, label344
	j label343
label344:
	li $t0, 43307
	sw $t0, -1020($fp)
	lw $t1, -1020($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label343
label342:
	li $t0, 1
	sw $t0, -1008($fp)
label343:
	li $t0, 0
	sw $t0, -1024($fp)
	lw $t0, -948($fp)
	sw $t0, -1028($fp)
	lw $t0, -100($fp)
	sw $t0, -1032($fp)
	lw $t0, -1028($fp)
	lw $t1, -1032($fp)
	add $t0, $t0, $t1
	sw $t0, -1036($fp)
	lw $t1, -1036($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label348
label348:
	li $t0, 26143
	sw $t0, -1040($fp)
	lw $t1, -1040($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label347
label346:
	li $t0, 1
	sw $t0, -1024($fp)
label347:
	lw $t0, -64($fp)
	sw $t0, -1044($fp)
	lw $t0, 4($fp)
	sw $t0, -1048($fp)
	lw $t0, -1044($fp)
	lw $t1, -1048($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1052($fp)
	lw $t0, -64($fp)
	sw $t0, -1056($fp)
	lw $t0, -1052($fp)
	lw $t1, -1056($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1060($fp)
	addi $sp, $sp, -4
	lw $t0, -996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1060($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1064($fp)
	addi $sp, $sp, 24
	lw $t0, -976($fp)
	lw $t1, -1064($fp)
	mul $t0, $t0, $t1
	sw $t0, -1068($fp)
	lw $t0, -972($fp)
	lw $t1, -1068($fp)
	add $t0, $t0, $t1
	sw $t0, -1072($fp)
	j label341
label340:
	li $t0, 0
	sw $t0, -1076($fp)
	li $t0, 62677
	sw $t0, -1080($fp)
	li $t0, 24653
	sw $t0, -1084($fp)
	lw $t0, -1080($fp)
	lw $t1, -1084($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1088($fp)
	li $t0, 0
	sw $t0, -1092($fp)
	li $t0, 18020
	sw $t0, -1096($fp)
	li $t0, 2172
	sw $t0, -1100($fp)
	lw $t1, -1096($fp)
	lw $t2, -1100($fp)
	beq $t1, $t2, label351
	j label352
label351:
	li $t0, 1
	sw $t0, -1092($fp)
label352:
	li $t0, 0
	sw $t0, -1104($fp)
	li $t0, 65326
	sw $t0, -1108($fp)
	lw $t1, -1108($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label353
label353:
	li $t0, 1
	sw $t0, -1104($fp)
label354:
	li $t0, 31808
	sw $t0, -1112($fp)
	lw $t0, -1104($fp)
	lw $t1, -1112($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1116($fp)
	lw $t0, -100($fp)
	sw $t0, -1120($fp)
	li $t0, 39750
	sw $t0, -1124($fp)
	lw $t0, -1120($fp)
	lw $t1, -1124($fp)
	add $t0, $t0, $t1
	sw $t0, -1128($fp)
	addi $sp, $sp, -4
	lw $t0, -1092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1128($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1132($fp)
	addi $sp, $sp, 16
	li $t0, 25998
	sw $t0, -1136($fp)
	lw $t0, -1132($fp)
	lw $t1, -1136($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1140($fp)
	addi $t0, $fp, -44
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
	lw $t0, -1140($fp)
	lw $t1, -1160($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1164($fp)
	lw $t1, -1088($fp)
	lw $t2, -1164($fp)
	bgt $t1, $t2, label349
	j label350
label349:
	li $t0, 1
	sw $t0, -1076($fp)
label350:
label341:
	li $t0, 0
	sw $t0, -1168($fp)
	li $t0, 0
	sw $t0, -1172($fp)
	li $t0, 0
	sw $t0, -1176($fp)
	li $t0, 0
	sw $t0, -1180($fp)
	li $t0, 40678
	sw $t0, -1184($fp)
	lw $t1, -1184($fp)
	li $t2, 0
	bne $t1, $t2, label363
	j label362
label362:
	li $t0, 1
	sw $t0, -1180($fp)
label363:
	lw $t0, -936($fp)
	sw $t0, -1188($fp)
	lw $t1, -1180($fp)
	lw $t2, -1188($fp)
	ble $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -1176($fp)
label361:
	li $t0, 32945
	sw $t0, -1192($fp)
	li $t0, 15284
	sw $t0, -1196($fp)
	lw $t0, -1192($fp)
	lw $t1, -1196($fp)
	sub $t0, $t0, $t1
	sw $t0, -1200($fp)
	lw $t1, -1176($fp)
	lw $t2, -1200($fp)
	bge $t1, $t2, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -1172($fp)
label359:
	li $t0, 29683
	sw $t0, -1204($fp)
	lw $t1, -1172($fp)
	lw $t2, -1204($fp)
	ble $t1, $t2, label355
	j label357
label357:
	li $t0, 18973
	sw $t0, -1208($fp)
	lw $t1, -1208($fp)
	li $t2, 0
	bne $t1, $t2, label364
	j label356
label364:
	li $t0, 53726
	sw $t0, -1212($fp)
	lw $t1, -1212($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label356
label355:
	li $t0, 1
	sw $t0, -1168($fp)
label356:
	jal f7
	sw $v0, -1216($fp)
	addi $sp, $sp, 4
	li $t0, 36240
	sw $t0, -1220($fp)
	li $t0, 35857
	sw $t0, -1224($fp)
	lw $t0, -1220($fp)
	lw $t1, -1224($fp)
	sub $t0, $t0, $t1
	sw $t0, -1228($fp)
	li $t0, 374
	sw $t0, -1232($fp)
	lw $t0, -1228($fp)
	lw $t1, -1232($fp)
	add $t0, $t0, $t1
	sw $t0, -1236($fp)
	li $t0, 55897
	sw $t0, -1240($fp)
	li $t0, 0
	sw $t0, -1244($fp)
	lw $t0, -924($fp)
	sw $t0, -1248($fp)
	li $t0, 0
	lw $t1, -1248($fp)
	sub $t0, $t0, $t1
	sw $t0, -1252($fp)
	li $t0, 54984
	sw $t0, -1256($fp)
	lw $t1, -1252($fp)
	lw $t2, -1256($fp)
	bne $t1, $t2, label368
	j label369
label368:
	li $t0, 1
	sw $t0, -1244($fp)
label369:
	li $t0, 0
	sw $t0, -1260($fp)
	addi $t0, $fp, -44
	sw $t0, -1264($fp)
	li $t0, 1
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
	lw $t0, -948($fp)
	sw $t0, -1284($fp)
	lw $t1, -1280($fp)
	lw $t2, -1284($fp)
	bgt $t1, $t2, label370
	j label371
label370:
	li $t0, 1
	sw $t0, -1260($fp)
label371:
	li $t0, 21305
	sw $t0, -1288($fp)
	li $t0, 54453
	sw $t0, -1292($fp)
	lw $t0, -1288($fp)
	lw $t1, -1292($fp)
	mul $t0, $t0, $t1
	sw $t0, -1296($fp)
	li $t0, 0
	lw $t1, -1296($fp)
	sub $t0, $t0, $t1
	sw $t0, -1300($fp)
	addi $sp, $sp, -4
	lw $t0, -1236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1300($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1304($fp)
	addi $sp, $sp, 24
	lw $t1, -1216($fp)
	lw $t2, -1304($fp)
	bge $t1, $t2, label365
	j label366
label365:
	li $t0, 62383
	sw $t0, -1308($fp)
	li $t0, 29840
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -1316($fp)
	addi $sp, $sp, -4
	lw $t0, -1316($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1320($fp)
	addi $sp, $sp, 8
	lw $t0, -1308($fp)
	lw $t1, -1320($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1324($fp)
	j label367
label366:
	addi $t0, $fp, -44
	sw $t0, -1328($fp)
	li $t0, 0
	sw $t0, -1332($fp)
	addi $t0, $fp, -44
	sw $t0, -1336($fp)
	lw $t0, -100($fp)
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
	lw $t1, -1352($fp)
	li $t2, 0
	bne $t1, $t2, label372
	j label374
label374:
	lw $t0, -936($fp)
	sw $t0, -1356($fp)
	lw $t0, -924($fp)
	sw $t0, -1360($fp)
	lw $t0, -1356($fp)
	lw $t1, -1360($fp)
	mul $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t1, -1364($fp)
	li $t2, 0
	bne $t1, $t2, label372
	j label373
label372:
	li $t0, 1
	sw $t0, -1332($fp)
label373:
	li $t0, 4
	lw $t1, -1332($fp)
	mul $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	lw $t1, -1328($fp)
	add $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	lw $t1, 0($t0)
	sw $t1, -1376($fp)
label367:
	lw $t0, -924($fp)
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -936($fp)
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -948($fp)
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1392($fp)
	addi $t0, $fp, -44
	sw $t0, -1396($fp)
	li $t0, 43681
	sw $t0, -1400($fp)
	lw $t0, -64($fp)
	sw $t0, -1404($fp)
	lw $t0, -1400($fp)
	lw $t1, -1404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1408($fp)
	li $t0, 56512
	sw $t0, -1412($fp)
	lw $t0, -1408($fp)
	lw $t1, -1412($fp)
	mul $t0, $t0, $t1
	sw $t0, -1416($fp)
	li $t0, 4
	lw $t1, -1416($fp)
	mul $t0, $t0, $t1
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	lw $t1, -1396($fp)
	add $t0, $t0, $t1
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	lw $t1, 0($t0)
	sw $t1, -1428($fp)
	lw $t0, -936($fp)
	sw $t0, -1432($fp)
	lw $t1, -1428($fp)
	lw $t2, -1432($fp)
	ble $t1, $t2, label375
	j label376
label375:
	li $t0, 1
	sw $t0, -1392($fp)
label376:
	lw $ra, -4($fp)
	lw $v0, -1392($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -52($fp)
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -64($fp)
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -76($fp)
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -88($fp)
	sw $t0, -1448($fp)
	lw $t0, -1448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -100($fp)
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1456($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -1476($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -1496($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -1516($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -1536($fp)
	li $t0, 4
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
	lw $t0, -1572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1576($fp)
	li $t0, 6
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
	addi $t0, $fp, -44
	sw $t0, -1596($fp)
	li $t0, 7
	sw $t0, -1600($fp)
	li $t0, 4
	lw $t1, -1600($fp)
	mul $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	lw $t1, -1596($fp)
	add $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	lw $t1, 0($t0)
	sw $t1, -1612($fp)
	lw $t0, -1612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1616($fp)
	li $t0, 8
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
	lw $t0, -1632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1636($fp)
	li $t0, 9
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
	lw $t0, -1652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 65461
	sw $t0, -1656($fp)
	li $t0, 0
	lw $t1, -1656($fp)
	sub $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $ra, -4($fp)
	lw $v0, -1660($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4608
	li $t0, 53700
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	li $t0, 53653
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	li $t0, 24578
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	li $t0, 27914
	sw $t0, -132($fp)
	addi $t0, $fp, -24
	sw $t0, -136($fp)
	li $t0, 0
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
	li $t0, 53444
	sw $t0, -156($fp)
	addi $t0, $fp, -24
	sw $t0, -160($fp)
	li $t0, 1
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
	li $t0, 56386
	sw $t0, -180($fp)
	addi $t0, $fp, -24
	sw $t0, -184($fp)
	li $t0, 2
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
	li $t0, 45934
	sw $t0, -204($fp)
	addi $t0, $fp, -24
	sw $t0, -208($fp)
	li $t0, 3
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
	li $t0, 55616
	sw $t0, -228($fp)
	addi $t0, $fp, -24
	sw $t0, -232($fp)
	li $t0, 4
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
	li $t0, 16848
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	li $t0, 60088
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	li $t0, 17398
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	li $t0, 57527
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	li $t0, 27497
	sw $t0, -300($fp)
	addi $t0, $fp, -64
	sw $t0, -304($fp)
	li $t0, 0
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t0, -304($fp)
	lw $t1, -312($fp)
	add $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $t0, -300($fp)
	lw $t1, -316($fp)
	sw $t0, 0($t1)
	lw $t0, -316($fp)
	lw $t1, 0($t0)
	sw $t1, -320($fp)
	li $t0, 32682
	sw $t0, -324($fp)
	addi $t0, $fp, -64
	sw $t0, -328($fp)
	li $t0, 1
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -336($fp)
	lw $t0, -328($fp)
	lw $t1, -336($fp)
	add $t0, $t0, $t1
	sw $t0, -340($fp)
	lw $t0, -324($fp)
	lw $t1, -340($fp)
	sw $t0, 0($t1)
	lw $t0, -340($fp)
	lw $t1, 0($t0)
	sw $t1, -344($fp)
	li $t0, 21674
	sw $t0, -348($fp)
	addi $t0, $fp, -64
	sw $t0, -352($fp)
	li $t0, 2
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -360($fp)
	lw $t0, -352($fp)
	lw $t1, -360($fp)
	add $t0, $t0, $t1
	sw $t0, -364($fp)
	lw $t0, -348($fp)
	lw $t1, -364($fp)
	sw $t0, 0($t1)
	lw $t0, -364($fp)
	lw $t1, 0($t0)
	sw $t1, -368($fp)
	li $t0, 46470
	sw $t0, -372($fp)
	addi $t0, $fp, -64
	sw $t0, -376($fp)
	li $t0, 3
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
	li $t0, 20873
	sw $t0, -396($fp)
	addi $t0, $fp, -64
	sw $t0, -400($fp)
	li $t0, 4
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
	li $t0, 42979
	sw $t0, -420($fp)
	addi $t0, $fp, -64
	sw $t0, -424($fp)
	li $t0, 5
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
	li $t0, 35388
	sw $t0, -444($fp)
	addi $t0, $fp, -64
	sw $t0, -448($fp)
	li $t0, 6
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
	li $t0, 21764
	sw $t0, -468($fp)
	addi $t0, $fp, -64
	sw $t0, -472($fp)
	li $t0, 7
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
	li $t0, 10029
	sw $t0, -492($fp)
	addi $t0, $fp, -64
	sw $t0, -496($fp)
	li $t0, 8
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
	li $t0, 24836
	sw $t0, -516($fp)
	addi $t0, $fp, -64
	sw $t0, -520($fp)
	li $t0, 9
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
	li $t0, 12125
	sw $t0, -540($fp)
	addi $t0, $fp, -80
	sw $t0, -544($fp)
	li $t0, 0
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
	li $t0, 46269
	sw $t0, -564($fp)
	addi $t0, $fp, -80
	sw $t0, -568($fp)
	li $t0, 1
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
	li $t0, 60693
	sw $t0, -588($fp)
	addi $t0, $fp, -80
	sw $t0, -592($fp)
	li $t0, 2
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
	li $t0, 12499
	sw $t0, -612($fp)
	addi $t0, $fp, -80
	sw $t0, -616($fp)
	li $t0, 3
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
	li $t0, 43116
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	sw $t0, -644($fp)
	li $t0, 24997
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -656($fp)
	li $t0, 56180
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	li $t0, 34092
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	li $t0, 24922
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	li $t0, 44344
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	li $t0, 22210
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	li $t0, 49500
	sw $t0, -720($fp)
	addi $t0, $fp, -92
	sw $t0, -724($fp)
	li $t0, 0
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
	li $t0, 6722
	sw $t0, -744($fp)
	addi $t0, $fp, -92
	sw $t0, -748($fp)
	li $t0, 1
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
	li $t0, 10118
	sw $t0, -768($fp)
	addi $t0, $fp, -92
	sw $t0, -772($fp)
	li $t0, 2
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
	li $t0, 40351
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	lw $t0, -796($fp)
	sw $t0, -800($fp)
	li $t0, 52657
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	li $t0, 198
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	lw $t0, -100($fp)
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -112($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -124($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -840($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -860($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -880($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
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
	lw $t0, -916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -920($fp)
	li $t0, 4
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
	lw $t0, -256($fp)
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -292($fp)
	sw $t0, -952($fp)
	lw $t0, -952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -956($fp)
	li $t0, 0
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
	lw $t0, -972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -976($fp)
	li $t0, 1
	sw $t0, -980($fp)
	li $t0, 4
	lw $t1, -980($fp)
	mul $t0, $t0, $t1
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	lw $t1, -976($fp)
	add $t0, $t0, $t1
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	lw $t1, 0($t0)
	sw $t1, -992($fp)
	lw $t0, -992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -996($fp)
	li $t0, 2
	sw $t0, -1000($fp)
	li $t0, 4
	lw $t1, -1000($fp)
	mul $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	lw $t1, -996($fp)
	add $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	lw $t1, 0($t0)
	sw $t1, -1012($fp)
	lw $t0, -1012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1016($fp)
	li $t0, 3
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
	lw $t0, -1032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1036($fp)
	li $t0, 4
	sw $t0, -1040($fp)
	li $t0, 4
	lw $t1, -1040($fp)
	mul $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	lw $t1, -1036($fp)
	add $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	lw $t1, 0($t0)
	sw $t1, -1052($fp)
	lw $t0, -1052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1056($fp)
	li $t0, 5
	sw $t0, -1060($fp)
	li $t0, 4
	lw $t1, -1060($fp)
	mul $t0, $t0, $t1
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	lw $t1, -1056($fp)
	add $t0, $t0, $t1
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	lw $t1, 0($t0)
	sw $t1, -1072($fp)
	lw $t0, -1072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1076($fp)
	li $t0, 6
	sw $t0, -1080($fp)
	li $t0, 4
	lw $t1, -1080($fp)
	mul $t0, $t0, $t1
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	lw $t1, -1076($fp)
	add $t0, $t0, $t1
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	lw $t1, 0($t0)
	sw $t1, -1092($fp)
	lw $t0, -1092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1096($fp)
	li $t0, 7
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
	addi $t0, $fp, -64
	sw $t0, -1116($fp)
	li $t0, 8
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
	addi $t0, $fp, -64
	sw $t0, -1136($fp)
	li $t0, 9
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
	li $t0, 0
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
	li $t0, 1
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
	li $t0, 2
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
	li $t0, 3
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
	lw $t0, -640($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -652($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -664($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1264($fp)
	li $t0, 0
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
	addi $t0, $fp, -92
	sw $t0, -1284($fp)
	li $t0, 1
	sw $t0, -1288($fp)
	li $t0, 4
	lw $t1, -1288($fp)
	mul $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	lw $t1, -1284($fp)
	add $t0, $t0, $t1
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	lw $t1, 0($t0)
	sw $t1, -1300($fp)
	lw $t0, -1300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1304($fp)
	li $t0, 2
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
	lw $t0, -796($fp)
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -808($fp)
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -820($fp)
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1336($fp)
	li $t0, 57199
	sw $t0, -1340($fp)
	li $t0, 47209
	sw $t0, -1344($fp)
	li $t0, 0
	lw $t1, -1344($fp)
	sub $t0, $t0, $t1
	sw $t0, -1348($fp)
	li $t0, 0
	lw $t1, -1348($fp)
	sub $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t0, -1340($fp)
	lw $t1, -1352($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1356($fp)
	lw $t1, -1356($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label378
label379:
	li $t0, 17596
	sw $t0, -1360($fp)
	li $t0, 49190
	sw $t0, -1364($fp)
	lw $t0, -1360($fp)
	lw $t1, -1364($fp)
	add $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t0, -124($fp)
	sw $t0, -1372($fp)
	lw $t1, -1368($fp)
	lw $t2, -1372($fp)
	bne $t1, $t2, label377
	j label378
label377:
	li $t0, 1
	sw $t0, -1336($fp)
label378:
	lw $ra, -4($fp)
	lw $v0, -1336($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1376($fp)
	addi $t0, $fp, -24
	sw $t0, -1380($fp)
	li $t0, 0
	sw $t0, -1384($fp)
	li $t0, 9170
	sw $t0, -1388($fp)
	li $t0, 50279
	sw $t0, -1392($fp)
	lw $t0, -1388($fp)
	lw $t1, -1392($fp)
	add $t0, $t0, $t1
	sw $t0, -1396($fp)
	lw $t1, -1396($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label383
label384:
	lw $t0, -700($fp)
	sw $t0, -1400($fp)
	lw $t1, -1400($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label383
label382:
	li $t0, 1
	sw $t0, -1384($fp)
label383:
	li $t0, 4
	lw $t1, -1384($fp)
	mul $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	lw $t1, -1380($fp)
	add $t0, $t0, $t1
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	lw $t1, 0($t0)
	sw $t1, -1412($fp)
	lw $t0, -112($fp)
	sw $t0, -1416($fp)
	lw $t1, -1412($fp)
	lw $t2, -1416($fp)
	bge $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -1376($fp)
label381:
	lw $ra, -4($fp)
	lw $v0, -1376($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 5329
	sw $t0, -1420($fp)
	lw $ra, -4($fp)
	lw $v0, -1420($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -100($fp)
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -112($fp)
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -124($fp)
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -1436($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -1456($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -1476($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -1496($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -1516($fp)
	li $t0, 4
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
	lw $t0, -256($fp)
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -292($fp)
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1552($fp)
	li $t0, 0
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
	addi $t0, $fp, -64
	sw $t0, -1572($fp)
	li $t0, 1
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
	addi $t0, $fp, -64
	sw $t0, -1592($fp)
	li $t0, 2
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
	addi $t0, $fp, -64
	sw $t0, -1612($fp)
	li $t0, 3
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
	addi $t0, $fp, -64
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
	lw $t0, -1648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -1652($fp)
	li $t0, 5
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
	addi $t0, $fp, -64
	sw $t0, -1672($fp)
	li $t0, 6
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
	addi $t0, $fp, -64
	sw $t0, -1692($fp)
	li $t0, 7
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
	addi $t0, $fp, -64
	sw $t0, -1712($fp)
	li $t0, 8
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
	addi $t0, $fp, -64
	sw $t0, -1732($fp)
	li $t0, 9
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
	addi $t0, $fp, -80
	sw $t0, -1752($fp)
	li $t0, 0
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
	addi $t0, $fp, -80
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
	lw $t0, -1788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1792($fp)
	li $t0, 2
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
	addi $t0, $fp, -80
	sw $t0, -1812($fp)
	li $t0, 3
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
	lw $t0, -640($fp)
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -652($fp)
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -664($fp)
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1860($fp)
	li $t0, 0
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
	lw $t0, -1876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
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
	lw $t0, -1896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1900($fp)
	li $t0, 2
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
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -796($fp)
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -808($fp)
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -820($fp)
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1932($fp)
	lw $t0, -100($fp)
	sw $t0, -1936($fp)
	lw $t0, -640($fp)
	sw $t0, -1940($fp)
	lw $t1, -1936($fp)
	lw $t2, -1940($fp)
	bge $t1, $t2, label385
	j label387
label387:
	lw $t0, -100($fp)
	sw $t0, -1944($fp)
	lw $t1, -1944($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label386
label385:
	li $t0, 1
	sw $t0, -1932($fp)
label386:
	li $t0, 48308
	sw $t0, -1948($fp)
	lw $t0, -1948($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -1952($fp)
	li $t0, 0
	sw $t0, -1956($fp)
	li $t0, 55640
	sw $t0, -1960($fp)
	lw $t0, -268($fp)
	sw $t0, -1964($fp)
	lw $t0, -1960($fp)
	lw $t1, -1964($fp)
	mul $t0, $t0, $t1
	sw $t0, -1968($fp)
	li $t0, 5616
	sw $t0, -1972($fp)
	lw $t1, -1968($fp)
	lw $t2, -1972($fp)
	ble $t1, $t2, label388
	j label389
label388:
	li $t0, 1
	sw $t0, -1956($fp)
label389:
	addi $sp, $sp, -4
	lw $t0, -1932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1956($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1976($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -1980($fp)
	lw $t0, -280($fp)
	sw $t0, -1984($fp)
	lw $t1, -1984($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label391
label390:
	li $t0, 1
	sw $t0, -1980($fp)
label391:
	lw $t0, -1976($fp)
	lw $t1, -1980($fp)
	add $t0, $t0, $t1
	sw $t0, -1988($fp)
	lw $ra, -4($fp)
	lw $v0, -1988($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label392:
	li $t0, 0
	sw $t0, -1992($fp)
	li $t0, 25492
	sw $t0, -1996($fp)
	lw $t0, -256($fp)
	sw $t0, -2000($fp)
	lw $t0, -1996($fp)
	lw $t1, -2000($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2004($fp)
	lw $t1, -2004($fp)
	li $t2, 0
	bne $t1, $t2, label397
	j label396
label397:
	li $t0, 27380
	sw $t0, -2008($fp)
	lw $t1, -2008($fp)
	li $t2, 0
	bne $t1, $t2, label395
	j label396
label395:
	li $t0, 1
	sw $t0, -1992($fp)
label396:
	addi $sp, $sp, -4
	lw $t0, -1992($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2012($fp)
	addi $sp, $sp, 8
	li $t0, 58337
	sw $t0, -2016($fp)
	li $t0, 0
	lw $t1, -2016($fp)
	sub $t0, $t0, $t1
	sw $t0, -2020($fp)
	addi $sp, $sp, -4
	lw $t0, -2020($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2024($fp)
	addi $sp, $sp, 8
	lw $t0, -2012($fp)
	lw $t1, -2024($fp)
	mul $t0, $t0, $t1
	sw $t0, -2028($fp)
	li $t0, 0
	lw $t1, -2028($fp)
	sub $t0, $t0, $t1
	sw $t0, -2032($fp)
	li $t0, 0
	sw $t0, -2036($fp)
	lw $t0, -652($fp)
	sw $t0, -2040($fp)
	lw $t1, -2040($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label398
label398:
	li $t0, 1
	sw $t0, -2036($fp)
label399:
	lw $t1, -2032($fp)
	lw $t2, -2036($fp)
	bgt $t1, $t2, label393
	j label394
label393:
	li $t0, 0
	sw $t0, -2044($fp)
	li $t0, 50328
	sw $t0, -2048($fp)
	lw $t0, -688($fp)
	sw $t0, -2052($fp)
	lw $t0, -2048($fp)
	lw $t1, -2052($fp)
	add $t0, $t0, $t1
	sw $t0, -2056($fp)
	lw $t0, -796($fp)
	sw $t0, -2060($fp)
	lw $t0, -2056($fp)
	lw $t1, -2060($fp)
	sub $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t0, -676($fp)
	sw $t0, -2068($fp)
	li $t0, 39505
	sw $t0, -2072($fp)
	lw $t0, -2068($fp)
	lw $t1, -2072($fp)
	sub $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t1, -2064($fp)
	lw $t2, -2076($fp)
	bge $t1, $t2, label400
	j label401
label400:
	li $t0, 1
	sw $t0, -2044($fp)
label401:
	lw $t0, -2044($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -2080($fp)
	lw $ra, -4($fp)
	lw $v0, -2080($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label392
label394:
	li $t0, 39070
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	sw $t0, -2120($fp)
	lw $t0, -2120($fp)
	sw $t0, -2124($fp)
	li $t0, 45485
	sw $t0, -2128($fp)
	addi $t0, $fp, -2084
	sw $t0, -2132($fp)
	li $t0, 0
	sw $t0, -2136($fp)
	lw $t0, -2136($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2140($fp)
	lw $t0, -2132($fp)
	lw $t1, -2140($fp)
	add $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t0, -2128($fp)
	lw $t1, -2144($fp)
	sw $t0, 0($t1)
	lw $t0, -2144($fp)
	lw $t1, 0($t0)
	sw $t1, -2148($fp)
	li $t0, 52005
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	sw $t0, -2160($fp)
	li $t0, 16650
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	sw $t0, -2172($fp)
	li $t0, 4947
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	sw $t0, -2184($fp)
	li $t0, 42649
	sw $t0, -2188($fp)
	lw $t0, -2188($fp)
	sw $t0, -2192($fp)
	lw $t0, -2192($fp)
	sw $t0, -2196($fp)
	li $t0, 50743
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	sw $t0, -2204($fp)
	lw $t0, -2204($fp)
	sw $t0, -2208($fp)
	li $t0, 29869
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	sw $t0, -2220($fp)
	li $t0, 21458
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	sw $t0, -2228($fp)
	lw $t0, -2228($fp)
	sw $t0, -2232($fp)
	li $t0, 7417
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	sw $t0, -2244($fp)
	li $t0, 13834
	sw $t0, -2248($fp)
	addi $t0, $fp, -2104
	sw $t0, -2252($fp)
	li $t0, 0
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2260($fp)
	lw $t0, -2252($fp)
	lw $t1, -2260($fp)
	add $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t0, -2248($fp)
	lw $t1, -2264($fp)
	sw $t0, 0($t1)
	lw $t0, -2264($fp)
	lw $t1, 0($t0)
	sw $t1, -2268($fp)
	li $t0, 28180
	sw $t0, -2272($fp)
	addi $t0, $fp, -2104
	sw $t0, -2276($fp)
	li $t0, 1
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2284($fp)
	lw $t0, -2276($fp)
	lw $t1, -2284($fp)
	add $t0, $t0, $t1
	sw $t0, -2288($fp)
	lw $t0, -2272($fp)
	lw $t1, -2288($fp)
	sw $t0, 0($t1)
	lw $t0, -2288($fp)
	lw $t1, 0($t0)
	sw $t1, -2292($fp)
	li $t0, 17535
	sw $t0, -2296($fp)
	addi $t0, $fp, -2104
	sw $t0, -2300($fp)
	li $t0, 2
	sw $t0, -2304($fp)
	lw $t0, -2304($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $t0, -2300($fp)
	lw $t1, -2308($fp)
	add $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -2296($fp)
	lw $t1, -2312($fp)
	sw $t0, 0($t1)
	lw $t0, -2312($fp)
	lw $t1, 0($t0)
	sw $t1, -2316($fp)
	li $t0, 54185
	sw $t0, -2320($fp)
	addi $t0, $fp, -2104
	sw $t0, -2324($fp)
	li $t0, 3
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t0, -2324($fp)
	lw $t1, -2332($fp)
	add $t0, $t0, $t1
	sw $t0, -2336($fp)
	lw $t0, -2320($fp)
	lw $t1, -2336($fp)
	sw $t0, 0($t1)
	lw $t0, -2336($fp)
	lw $t1, 0($t0)
	sw $t1, -2340($fp)
	li $t0, 15301
	sw $t0, -2344($fp)
	addi $t0, $fp, -2104
	sw $t0, -2348($fp)
	li $t0, 4
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2356($fp)
	lw $t0, -2348($fp)
	lw $t1, -2356($fp)
	add $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $t0, -2344($fp)
	lw $t1, -2360($fp)
	sw $t0, 0($t1)
	lw $t0, -2360($fp)
	lw $t1, 0($t0)
	sw $t1, -2364($fp)
	li $t0, 17733
	sw $t0, -2368($fp)
	lw $t0, -2368($fp)
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	sw $t0, -2376($fp)
	li $t0, 45848
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	sw $t0, -2388($fp)
	li $t0, 62510
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	sw $t0, -2400($fp)
	li $t0, 35329
	sw $t0, -2404($fp)
	addi $t0, $fp, -2112
	sw $t0, -2408($fp)
	li $t0, 0
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2416($fp)
	lw $t0, -2408($fp)
	lw $t1, -2416($fp)
	add $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t0, -2404($fp)
	lw $t1, -2420($fp)
	sw $t0, 0($t1)
	lw $t0, -2420($fp)
	lw $t1, 0($t0)
	sw $t1, -2424($fp)
	li $t0, 29503
	sw $t0, -2428($fp)
	addi $t0, $fp, -2112
	sw $t0, -2432($fp)
	li $t0, 1
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2440($fp)
	lw $t0, -2432($fp)
	lw $t1, -2440($fp)
	add $t0, $t0, $t1
	sw $t0, -2444($fp)
	lw $t0, -2428($fp)
	lw $t1, -2444($fp)
	sw $t0, 0($t1)
	lw $t0, -2444($fp)
	lw $t1, 0($t0)
	sw $t1, -2448($fp)
	lw $t0, -676($fp)
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	sw $t0, -2456($fp)
	li $t0, 0
	sw $t0, -2460($fp)
	lw $t0, -2216($fp)
	sw $t0, -2464($fp)
	lw $t1, -2464($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -2460($fp)
label403:
	li $t0, 0
	sw $t0, -2468($fp)
	li $t0, 6144
	sw $t0, -2472($fp)
	lw $t1, -2472($fp)
	li $t2, 0
	bne $t1, $t2, label405
	j label406
label406:
	lw $t0, -2168($fp)
	sw $t0, -2476($fp)
	lw $t1, -2476($fp)
	li $t2, 0
	bne $t1, $t2, label404
	j label405
label404:
	li $t0, 1
	sw $t0, -2468($fp)
label405:
	addi $sp, $sp, -4
	lw $t0, -2456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2460($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2468($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2480($fp)
	addi $sp, $sp, 16
label407:
	lw $t0, -640($fp)
	sw $t0, -2484($fp)
	li $t0, 0
	sw $t0, -2488($fp)
	lw $t0, -2192($fp)
	sw $t0, -2492($fp)
	li $t0, 61785
	sw $t0, -2496($fp)
	lw $t0, -2492($fp)
	lw $t1, -2496($fp)
	sub $t0, $t0, $t1
	sw $t0, -2500($fp)
	lw $t1, -2500($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label414
label414:
	lw $t0, -256($fp)
	sw $t0, -2504($fp)
	lw $t1, -2504($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label413
label412:
	li $t0, 1
	sw $t0, -2488($fp)
label413:
	li $t0, 0
	sw $t0, -2508($fp)
	li $t0, 20072
	sw $t0, -2512($fp)
	lw $t0, -2228($fp)
	sw $t0, -2516($fp)
	lw $t0, -2512($fp)
	lw $t1, -2516($fp)
	mul $t0, $t0, $t1
	sw $t0, -2520($fp)
	li $t0, 34832
	sw $t0, -2524($fp)
	lw $t1, -2520($fp)
	lw $t2, -2524($fp)
	beq $t1, $t2, label415
	j label416
label415:
	li $t0, 1
	sw $t0, -2508($fp)
label416:
	addi $sp, $sp, -4
	lw $t0, -2484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2508($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2528($fp)
	addi $sp, $sp, 16
	lw $t1, -2528($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label410
label411:
	li $t0, 0
	sw $t0, -2532($fp)
	lw $t0, -820($fp)
	sw $t0, -2536($fp)
	lw $t1, -2536($fp)
	li $t2, 0
	bne $t1, $t2, label418
	j label417
label417:
	li $t0, 1
	sw $t0, -2532($fp)
label418:
	lw $t0, -2120($fp)
	sw $t0, -2540($fp)
	lw $t1, -2532($fp)
	lw $t2, -2540($fp)
	blt $t1, $t2, label408
	j label410
label410:
	addi $t0, $fp, -24
	sw $t0, -2544($fp)
	lw $t0, -808($fp)
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
	lw $t1, -2560($fp)
	li $t2, 0
	bne $t1, $t2, label408
	j label409
label408:
label419:
	addi $t0, $fp, -2084
	sw $t0, -2564($fp)
	lw $t0, -2192($fp)
	sw $t0, -2568($fp)
	li $t0, 25688
	sw $t0, -2572($fp)
	lw $t0, -2568($fp)
	lw $t1, -2572($fp)
	add $t0, $t0, $t1
	sw $t0, -2576($fp)
	lw $t0, -2204($fp)
	sw $t0, -2580($fp)
	lw $t0, -2576($fp)
	lw $t1, -2580($fp)
	add $t0, $t0, $t1
	sw $t0, -2584($fp)
	li $t0, 4
	lw $t1, -2584($fp)
	mul $t0, $t0, $t1
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	lw $t1, -2564($fp)
	add $t0, $t0, $t1
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	lw $t1, 0($t0)
	sw $t1, -2596($fp)
	lw $t0, -2192($fp)
	sw $t0, -2600($fp)
	lw $t0, -700($fp)
	sw $t0, -2604($fp)
	lw $t0, -2600($fp)
	lw $t1, -2604($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2608($fp)
	lw $t0, -688($fp)
	sw $t0, -2612($fp)
	lw $t0, -2608($fp)
	lw $t1, -2612($fp)
	mul $t0, $t0, $t1
	sw $t0, -2616($fp)
	li $t0, 0
	sw $t0, -2620($fp)
	jal f7
	sw $v0, -2624($fp)
	addi $sp, $sp, 4
	lw $t1, -2624($fp)
	li $t2, 0
	bne $t1, $t2, label423
	j label422
label422:
	li $t0, 1
	sw $t0, -2620($fp)
label423:
	li $t0, 0
	sw $t0, -2628($fp)
	jal f7
	sw $v0, -2632($fp)
	addi $sp, $sp, 4
	lw $t1, -2632($fp)
	li $t2, 0
	bne $t1, $t2, label425
	j label424
label424:
	li $t0, 1
	sw $t0, -2628($fp)
label425:
	lw $t0, -2120($fp)
	sw $t0, -2636($fp)
	lw $t0, -2204($fp)
	sw $t0, -2640($fp)
	lw $t0, -2636($fp)
	lw $t1, -2640($fp)
	mul $t0, $t0, $t1
	sw $t0, -2644($fp)
	li $t0, 0
	sw $t0, -2648($fp)
	addi $t0, $fp, -24
	sw $t0, -2652($fp)
	lw $t0, -676($fp)
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
	li $t0, 17604
	sw $t0, -2672($fp)
	lw $t1, -2668($fp)
	lw $t2, -2672($fp)
	bne $t1, $t2, label426
	j label427
label426:
	li $t0, 1
	sw $t0, -2648($fp)
label427:
	addi $sp, $sp, -4
	lw $t0, -2616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2648($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2676($fp)
	addi $sp, $sp, 24
	lw $t1, -2596($fp)
	lw $t2, -2676($fp)
	ble $t1, $t2, label420
	j label421
label420:
label428:
	li $t0, 21741
	sw $t0, -2680($fp)
	lw $t1, -2680($fp)
	li $t2, 0
	bne $t1, $t2, label431
	j label429
label431:
	li $t0, 0
	sw $t0, -2684($fp)
	li $t0, 53068
	sw $t0, -2688($fp)
	lw $t0, -808($fp)
	sw $t0, -2692($fp)
	lw $t1, -2688($fp)
	lw $t2, -2692($fp)
	blt $t1, $t2, label432
	j label433
label432:
	li $t0, 1
	sw $t0, -2684($fp)
label433:
	li $t0, 10406
	sw $t0, -2696($fp)
	lw $t1, -2684($fp)
	lw $t2, -2696($fp)
	bne $t1, $t2, label429
	j label430
label429:
	li $t0, 6534
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	sw $t0, -2708($fp)
	li $t0, 27038
	sw $t0, -2712($fp)
	lw $t0, -2712($fp)
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	sw $t0, -2720($fp)
	li $t0, 49476
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	sw $t0, -2732($fp)
	li $t0, 0
	sw $t0, -2736($fp)
	li $t0, 52019
	sw $t0, -2740($fp)
	lw $t1, -2740($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label436
label436:
	lw $t0, -2180($fp)
	sw $t0, -2744($fp)
	lw $t1, -2744($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label435
label434:
	li $t0, 1
	sw $t0, -2736($fp)
label435:
	addi $sp, $sp, -4
	lw $t0, -2736($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2748($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -2104
	sw $t0, -2752($fp)
	li $t0, 0
	sw $t0, -2756($fp)
	lw $t0, -2240($fp)
	sw $t0, -2760($fp)
	lw $t1, -2760($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label437
label437:
	li $t0, 1
	sw $t0, -2756($fp)
label438:
	lw $t0, 4($fp)
	sw $t0, -2764($fp)
	lw $t0, -2756($fp)
	lw $t1, -2764($fp)
	add $t0, $t0, $t1
	sw $t0, -2768($fp)
	li $t0, 4
	lw $t1, -2768($fp)
	mul $t0, $t0, $t1
	sw $t0, -2772($fp)
	lw $t0, -2772($fp)
	lw $t1, -2752($fp)
	add $t0, $t0, $t1
	sw $t0, -2776($fp)
	lw $t0, -2776($fp)
	lw $t1, 0($t0)
	sw $t1, -2780($fp)
	li $t0, 0
	sw $t0, -2784($fp)
	li $t0, 0
	sw $t0, -2788($fp)
	lw $t0, -268($fp)
	sw $t0, -2792($fp)
	lw $t0, -2216($fp)
	sw $t0, -2796($fp)
	lw $t1, -2792($fp)
	lw $t2, -2796($fp)
	beq $t1, $t2, label441
	j label442
label441:
	li $t0, 1
	sw $t0, -2788($fp)
label442:
	li $t0, 591
	sw $t0, -2800($fp)
	lw $t1, -2788($fp)
	lw $t2, -2800($fp)
	beq $t1, $t2, label439
	j label440
label439:
	li $t0, 1
	sw $t0, -2784($fp)
label440:
	lw $t0, -112($fp)
	sw $t0, -2804($fp)
	li $t0, 0
	sw $t0, -2808($fp)
	addi $t0, $fp, -2112
	sw $t0, -2812($fp)
	lw $t0, -2704($fp)
	sw $t0, -2816($fp)
	li $t0, 4
	lw $t1, -2816($fp)
	mul $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	lw $t1, -2812($fp)
	add $t0, $t0, $t1
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	lw $t1, 0($t0)
	sw $t1, -2828($fp)
	lw $t1, -2828($fp)
	li $t2, 0
	bne $t1, $t2, label445
	j label444
label445:
	li $t0, 13507
	sw $t0, -2832($fp)
	lw $t1, -2832($fp)
	li $t2, 0
	bne $t1, $t2, label443
	j label444
label443:
	li $t0, 1
	sw $t0, -2808($fp)
label444:
	addi $sp, $sp, -4
	lw $t0, -2784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2808($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2836($fp)
	addi $sp, $sp, 16
	lw $t0, -2780($fp)
	lw $t1, -2836($fp)
	add $t0, $t0, $t1
	sw $t0, -2840($fp)
	lw $t0, -2168($fp)
	sw $t0, -2844($fp)
	li $t0, 56966
	sw $t0, -2848($fp)
	lw $t0, -2844($fp)
	lw $t1, -2848($fp)
	mul $t0, $t0, $t1
	sw $t0, -2852($fp)
	li $t0, 0
	sw $t0, -2856($fp)
	lw $t0, -2204($fp)
	sw $t0, -2860($fp)
	lw $t1, -2860($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label448
label449:
	li $t0, 0
	sw $t0, -2864($fp)
	li $t0, 56156
	sw $t0, -2868($fp)
	lw $t0, -2372($fp)
	sw $t0, -2872($fp)
	lw $t1, -2868($fp)
	lw $t2, -2872($fp)
	bgt $t1, $t2, label450
	j label451
label450:
	li $t0, 1
	sw $t0, -2864($fp)
label451:
	lw $t0, -124($fp)
	sw $t0, -2876($fp)
	lw $t1, -2864($fp)
	lw $t2, -2876($fp)
	bgt $t1, $t2, label446
	j label448
label448:
	li $t0, 0
	sw $t0, -2880($fp)
	li $t0, 21300
	sw $t0, -2884($fp)
	lw $t0, -2716($fp)
	sw $t0, -2888($fp)
	lw $t0, -2884($fp)
	lw $t1, -2888($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2892($fp)
	li $t0, 12078
	sw $t0, -2896($fp)
	lw $t1, -2892($fp)
	lw $t2, -2896($fp)
	blt $t1, $t2, label453
	j label454
label453:
	li $t0, 1
	sw $t0, -2880($fp)
label454:
	li $t0, 0
	sw $t0, -2900($fp)
	lw $t0, -2204($fp)
	sw $t0, -2904($fp)
	lw $t1, -2904($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label455
label457:
	li $t0, 51334
	sw $t0, -2908($fp)
	lw $t1, -2908($fp)
	li $t2, 0
	bne $t1, $t2, label455
	j label456
label455:
	li $t0, 1
	sw $t0, -2900($fp)
label456:
	lw $t0, -112($fp)
	sw $t0, -2912($fp)
	addi $sp, $sp, -4
	lw $t0, -2880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2912($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2916($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -2916($fp)
	sub $t0, $t0, $t1
	sw $t0, -2920($fp)
	lw $t1, -2920($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label447
label452:
	li $t0, 58751
	sw $t0, -2924($fp)
	lw $t0, -2728($fp)
	sw $t0, -2928($fp)
	lw $t1, -2924($fp)
	lw $t2, -2928($fp)
	bgt $t1, $t2, label446
	j label447
label446:
	li $t0, 1
	sw $t0, -2856($fp)
label447:
	j label428
label430:
	j label419
label421:
	j label407
label409:
	lw $t0, -2120($fp)
	sw $t0, -2932($fp)
	lw $t0, -2932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2084
	sw $t0, -2936($fp)
	li $t0, 0
	sw $t0, -2940($fp)
	li $t0, 4
	lw $t1, -2940($fp)
	mul $t0, $t0, $t1
	sw $t0, -2944($fp)
	lw $t0, -2944($fp)
	lw $t1, -2936($fp)
	add $t0, $t0, $t1
	sw $t0, -2948($fp)
	lw $t0, -2948($fp)
	lw $t1, 0($t0)
	sw $t1, -2952($fp)
	lw $t0, -2952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2156($fp)
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2168($fp)
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2180($fp)
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2192($fp)
	sw $t0, -2968($fp)
	lw $t0, -2968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2204($fp)
	sw $t0, -2972($fp)
	lw $t0, -2972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2216($fp)
	sw $t0, -2976($fp)
	lw $t0, -2976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2228($fp)
	sw $t0, -2980($fp)
	lw $t0, -2980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2240($fp)
	sw $t0, -2984($fp)
	lw $t0, -2984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2104
	sw $t0, -2988($fp)
	li $t0, 0
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
	addi $t0, $fp, -2104
	sw $t0, -3008($fp)
	li $t0, 1
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
	addi $t0, $fp, -2104
	sw $t0, -3028($fp)
	li $t0, 2
	sw $t0, -3032($fp)
	li $t0, 4
	lw $t1, -3032($fp)
	mul $t0, $t0, $t1
	sw $t0, -3036($fp)
	lw $t0, -3036($fp)
	lw $t1, -3028($fp)
	add $t0, $t0, $t1
	sw $t0, -3040($fp)
	lw $t0, -3040($fp)
	lw $t1, 0($t0)
	sw $t1, -3044($fp)
	lw $t0, -3044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2104
	sw $t0, -3048($fp)
	li $t0, 3
	sw $t0, -3052($fp)
	li $t0, 4
	lw $t1, -3052($fp)
	mul $t0, $t0, $t1
	sw $t0, -3056($fp)
	lw $t0, -3056($fp)
	lw $t1, -3048($fp)
	add $t0, $t0, $t1
	sw $t0, -3060($fp)
	lw $t0, -3060($fp)
	lw $t1, 0($t0)
	sw $t1, -3064($fp)
	lw $t0, -3064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2104
	sw $t0, -3068($fp)
	li $t0, 4
	sw $t0, -3072($fp)
	li $t0, 4
	lw $t1, -3072($fp)
	mul $t0, $t0, $t1
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	lw $t1, -3068($fp)
	add $t0, $t0, $t1
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	lw $t1, 0($t0)
	sw $t1, -3084($fp)
	lw $t0, -3084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2372($fp)
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2384($fp)
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2396($fp)
	sw $t0, -3096($fp)
	lw $t0, -3096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -2112
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
	addi $t0, $fp, -2112
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
	li $t0, 0
	sw $t0, -3140($fp)
	lw $t0, -2120($fp)
	sw $t0, -3144($fp)
	lw $t1, -3144($fp)
	li $t2, 0
	bne $t1, $t2, label458
	j label461
label461:
	lw $t0, -2192($fp)
	sw $t0, -3148($fp)
	lw $t1, -3148($fp)
	li $t2, 0
	bne $t1, $t2, label458
	j label460
label460:
	lw $t0, -124($fp)
	sw $t0, -3152($fp)
	addi $t0, $fp, -2112
	sw $t0, -3156($fp)
	li $t0, 1
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
	lw $t1, -3152($fp)
	lw $t2, -3172($fp)
	beq $t1, $t2, label458
	j label459
label458:
	li $t0, 1
	sw $t0, -3140($fp)
label459:
	lw $ra, -4($fp)
	lw $v0, -3140($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label462:
	li $t0, 10750
	sw $t0, -3176($fp)
	lw $t1, -3176($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label464
label463:
	addi $t0, $fp, -64
	sw $t0, -3180($fp)
	lw $t0, -652($fp)
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
	li $t0, 0
	sw $t0, -3200($fp)
	li $t0, 0
	sw $t0, -3204($fp)
	lw $t0, -2228($fp)
	sw $t0, -3208($fp)
	lw $t0, -808($fp)
	sw $t0, -3212($fp)
	lw $t0, -3208($fp)
	lw $t1, -3212($fp)
	sub $t0, $t0, $t1
	sw $t0, -3216($fp)
	lw $t1, -3216($fp)
	li $t2, 0
	bne $t1, $t2, label472
	j label471
label472:
	li $t0, 28483
	sw $t0, -3220($fp)
	lw $t1, -3220($fp)
	li $t2, 0
	bne $t1, $t2, label470
	j label471
label470:
	li $t0, 1
	sw $t0, -3204($fp)
label471:
	addi $sp, $sp, -4
	lw $t0, -3204($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3224($fp)
	addi $sp, $sp, 8
	lw $t0, 4($fp)
	sw $t0, -3228($fp)
	lw $t1, -3224($fp)
	lw $t2, -3228($fp)
	bne $t1, $t2, label468
	j label469
label468:
	li $t0, 1
	sw $t0, -3200($fp)
label469:
	li $t0, 0
	sw $t0, -3232($fp)
	li $t0, 55560
	sw $t0, -3236($fp)
	lw $t0, -2396($fp)
	sw $t0, -3240($fp)
	lw $t0, -3236($fp)
	lw $t1, -3240($fp)
	mul $t0, $t0, $t1
	sw $t0, -3244($fp)
	lw $t1, -3244($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label475
label475:
	lw $t0, -268($fp)
	sw $t0, -3248($fp)
	lw $t1, -3248($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label474
label473:
	li $t0, 1
	sw $t0, -3232($fp)
label474:
	lw $t0, -2384($fp)
	sw $t0, -3252($fp)
	li $t0, 23783
	sw $t0, -3256($fp)
	lw $t0, -2192($fp)
	sw $t0, -3260($fp)
	lw $t0, -3256($fp)
	lw $t1, -3260($fp)
	mul $t0, $t0, $t1
	sw $t0, -3264($fp)
	addi $sp, $sp, -4
	lw $t0, -3196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3264($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3268($fp)
	addi $sp, $sp, 24
	lw $t1, -3268($fp)
	li $t2, 0
	bne $t1, $t2, label465
	j label466
label465:
	li $t0, 4095
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	sw $t0, -3276($fp)
	lw $t0, -3276($fp)
	sw $t0, -3280($fp)
	li $t0, 0
	sw $t0, -3284($fp)
	addi $t0, $fp, -2104
	sw $t0, -3288($fp)
	lw $t0, -808($fp)
	sw $t0, -3292($fp)
	lw $t0, -2168($fp)
	sw $t0, -3296($fp)
	lw $t0, -3292($fp)
	lw $t1, -3296($fp)
	sub $t0, $t0, $t1
	sw $t0, -3300($fp)
	li $t0, 4
	lw $t1, -3300($fp)
	mul $t0, $t0, $t1
	sw $t0, -3304($fp)
	lw $t0, -3304($fp)
	lw $t1, -3288($fp)
	add $t0, $t0, $t1
	sw $t0, -3308($fp)
	lw $t0, -3308($fp)
	lw $t1, 0($t0)
	sw $t1, -3312($fp)
	li $t0, 0
	sw $t0, -3316($fp)
	lw $t0, -676($fp)
	sw $t0, -3320($fp)
	li $t0, 0
	lw $t1, -3320($fp)
	sub $t0, $t0, $t1
	sw $t0, -3324($fp)
	lw $t1, -3324($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label479
label479:
	li $t0, 1
	sw $t0, -3316($fp)
label480:
	lw $t1, -3312($fp)
	lw $t2, -3316($fp)
	blt $t1, $t2, label478
	j label477
label478:
	lw $t0, -688($fp)
	sw $t0, -3328($fp)
	lw $t1, -3328($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label477
label476:
	li $t0, 1
	sw $t0, -3284($fp)
label477:
	li $t0, 52535
	sw $t0, -3332($fp)
	lw $t0, -2120($fp)
	sw $t0, -3336($fp)
	lw $t0, -3332($fp)
	lw $t1, -3336($fp)
	mul $t0, $t0, $t1
	sw $t0, -3340($fp)
	li $t0, 63812
	sw $t0, -3344($fp)
	lw $t0, -3340($fp)
	lw $t1, -3344($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3348($fp)
	li $t0, 58679
	sw $t0, -3352($fp)
	addi $t0, $fp, -2112
	sw $t0, -3356($fp)
	lw $t0, -688($fp)
	sw $t0, -3360($fp)
	li $t0, 4
	lw $t1, -3360($fp)
	mul $t0, $t0, $t1
	sw $t0, -3364($fp)
	lw $t0, -3364($fp)
	lw $t1, -3356($fp)
	add $t0, $t0, $t1
	sw $t0, -3368($fp)
	lw $t0, -3368($fp)
	lw $t1, 0($t0)
	sw $t1, -3372($fp)
	li $t0, 33598
	sw $t0, -3376($fp)
	li $t0, 0
	sw $t0, -3380($fp)
	lw $t0, -2372($fp)
	sw $t0, -3384($fp)
	li $t0, 0
	lw $t1, -3384($fp)
	sub $t0, $t0, $t1
	sw $t0, -3388($fp)
	lw $t0, -256($fp)
	sw $t0, -3392($fp)
	lw $t1, -3388($fp)
	lw $t2, -3392($fp)
	bne $t1, $t2, label485
	j label486
label485:
	li $t0, 1
	sw $t0, -3380($fp)
label486:
	li $t0, 0
	sw $t0, -3396($fp)
	addi $t0, $fp, -2104
	sw $t0, -3400($fp)
	lw $t0, -2180($fp)
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
	lw $t1, -3416($fp)
	li $t2, 0
	bne $t1, $t2, label487
	j label489
label489:
	lw $t0, -100($fp)
	sw $t0, -3420($fp)
	lw $t1, -3420($fp)
	li $t2, 0
	bne $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -3396($fp)
label488:
	addi $sp, $sp, -4
	lw $t0, -3352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3396($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3424($fp)
	addi $sp, $sp, 24
	lw $t0, -3348($fp)
	lw $t1, -3424($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3428($fp)
	addi $t0, $fp, -24
	sw $t0, -3432($fp)
	lw $t0, -2168($fp)
	sw $t0, -3436($fp)
	li $t0, 4
	lw $t1, -3436($fp)
	mul $t0, $t0, $t1
	sw $t0, -3440($fp)
	lw $t0, -3440($fp)
	lw $t1, -3432($fp)
	add $t0, $t0, $t1
	sw $t0, -3444($fp)
	lw $t0, -3444($fp)
	lw $t1, 0($t0)
	sw $t1, -3448($fp)
	lw $t1, -3428($fp)
	lw $t2, -3448($fp)
	blt $t1, $t2, label481
	j label484
label484:
	li $t0, 18349
	sw $t0, -3452($fp)
	lw $t1, -3452($fp)
	li $t2, 0
	bne $t1, $t2, label481
	j label482
label481:
	li $t0, 0
	sw $t0, -3456($fp)
	li $t0, 2894
	sw $t0, -3460($fp)
	addi $t0, $fp, -2084
	sw $t0, -3464($fp)
	lw $t0, -2192($fp)
	sw $t0, -3468($fp)
	li $t0, 4
	lw $t1, -3468($fp)
	mul $t0, $t0, $t1
	sw $t0, -3472($fp)
	lw $t0, -3472($fp)
	lw $t1, -3464($fp)
	add $t0, $t0, $t1
	sw $t0, -3476($fp)
	lw $t0, -3476($fp)
	lw $t1, 0($t0)
	sw $t1, -3480($fp)
	lw $t0, -3460($fp)
	lw $t1, -3480($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3484($fp)
	addi $t0, $fp, -24
	sw $t0, -3488($fp)
	li $t0, 4
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
	add $t0, $t0, $t1
	sw $t0, -3508($fp)
	lw $t1, -3508($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label491
label492:
	lw $t0, -700($fp)
	sw $t0, -3512($fp)
	li $t0, 0
	lw $t1, -3512($fp)
	sub $t0, $t0, $t1
	sw $t0, -3516($fp)
	lw $t0, -2240($fp)
	sw $t0, -3520($fp)
	lw $t0, -3516($fp)
	lw $t1, -3520($fp)
	add $t0, $t0, $t1
	sw $t0, -3524($fp)
	addi $sp, $sp, -4
	lw $t0, -3524($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3528($fp)
	addi $sp, $sp, 8
	lw $t1, -3528($fp)
	li $t2, 0
	bne $t1, $t2, label490
	j label491
label490:
	li $t0, 1
	sw $t0, -3456($fp)
label491:
label482:
	lw $t0, -3276($fp)
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -820($fp)
	sw $t0, -3536($fp)
	lw $ra, -4($fp)
	lw $v0, -3536($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label493:
	addi $t0, $fp, -24
	sw $t0, -3540($fp)
	li $t0, 0
	sw $t0, -3544($fp)
	lw $t0, -2240($fp)
	sw $t0, -3548($fp)
	lw $t1, -3548($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label498
label498:
	lw $t0, -268($fp)
	sw $t0, -3552($fp)
	lw $t1, -3552($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label497
label496:
	li $t0, 1
	sw $t0, -3544($fp)
label497:
	li $t0, 4
	lw $t1, -3544($fp)
	mul $t0, $t0, $t1
	sw $t0, -3556($fp)
	lw $t0, -3556($fp)
	lw $t1, -3540($fp)
	add $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t0, -3560($fp)
	lw $t1, 0($t0)
	sw $t1, -3564($fp)
	li $t0, 0
	lw $t1, -3564($fp)
	sub $t0, $t0, $t1
	sw $t0, -3568($fp)
	lw $t0, -820($fp)
	sw $t0, -3572($fp)
	lw $t0, -280($fp)
	sw $t0, -3576($fp)
	lw $t0, -3572($fp)
	lw $t1, -3576($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3580($fp)
	addi $t0, $fp, -24
	sw $t0, -3584($fp)
	li $t0, 4
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
	lw $t0, -3580($fp)
	lw $t1, -3600($fp)
	add $t0, $t0, $t1
	sw $t0, -3604($fp)
	lw $t1, -3568($fp)
	lw $t2, -3604($fp)
	ble $t1, $t2, label494
	j label495
label494:
	li $t0, 31570
	sw $t0, -3608($fp)
	j label493
label495:
	addi $t0, $fp, -64
	sw $t0, -3612($fp)
	lw $t0, -2180($fp)
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
	lw $t0, -808($fp)
	sw $t0, -3632($fp)
	lw $t0, -2180($fp)
	sw $t0, -3636($fp)
	lw $t0, -3636($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	sw $t0, -3640($fp)
	lw $t0, -268($fp)
	sw $t0, -3644($fp)
	li $t0, 0
	lw $t1, -3644($fp)
	sub $t0, $t0, $t1
	sw $t0, -3648($fp)
	lw $t0, -3276($fp)
	sw $t0, -3652($fp)
	lw $t0, -100($fp)
	sw $t0, -3656($fp)
	lw $t0, -3652($fp)
	lw $t1, -3656($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3660($fp)
	lw $t0, -268($fp)
	sw $t0, -3664($fp)
	lw $t0, -3660($fp)
	lw $t1, -3664($fp)
	mul $t0, $t0, $t1
	sw $t0, -3668($fp)
	li $t0, 0
	sw $t0, -3672($fp)
	li $t0, 17668
	sw $t0, -3676($fp)
	lw $t0, 4($fp)
	sw $t0, -3680($fp)
	lw $t0, -3676($fp)
	lw $t1, -3680($fp)
	add $t0, $t0, $t1
	sw $t0, -3684($fp)
	lw $t1, -3684($fp)
	li $t2, 0
	bne $t1, $t2, label501
	j label500
label501:
	lw $t0, -2228($fp)
	sw $t0, -3688($fp)
	lw $t1, -3688($fp)
	li $t2, 0
	bne $t1, $t2, label499
	j label500
label499:
	li $t0, 1
	sw $t0, -3672($fp)
label500:
	li $t0, 30905
	sw $t0, -3692($fp)
	lw $t0, -2192($fp)
	sw $t0, -3696($fp)
	lw $t0, -3692($fp)
	lw $t1, -3696($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3700($fp)
	li $t0, 0
	lw $t1, -3700($fp)
	sub $t0, $t0, $t1
	sw $t0, -3704($fp)
	addi $sp, $sp, -4
	lw $t0, -3640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3704($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3708($fp)
	addi $sp, $sp, 24
	lw $t0, -3632($fp)
	lw $t1, -3708($fp)
	mul $t0, $t0, $t1
	sw $t0, -3712($fp)
	addi $t0, $fp, -64
	sw $t0, -3716($fp)
	li $t0, 5
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
	li $t0, 0
	lw $t1, -3732($fp)
	sub $t0, $t0, $t1
	sw $t0, -3736($fp)
	lw $t0, -3712($fp)
	lw $t1, -3736($fp)
	mul $t0, $t0, $t1
	sw $t0, -3740($fp)
	li $t0, 0
	lw $t1, -3740($fp)
	sub $t0, $t0, $t1
	sw $t0, -3744($fp)
	lw $t0, -3628($fp)
	lw $t1, -3744($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3748($fp)
	li $t0, 0
	sw $t0, -3752($fp)
	li $t0, 4151
	sw $t0, -3756($fp)
	lw $t1, -3756($fp)
	li $t2, 0
	bne $t1, $t2, label503
	j label502
label502:
	li $t0, 1
	sw $t0, -3752($fp)
label503:
	j label467
label466:
	li $t0, 6579
	sw $t0, -3760($fp)
	lw $t0, -3760($fp)
	sw $t0, -3764($fp)
	lw $t0, -3764($fp)
	sw $t0, -3768($fp)
	li $t0, 15436
	sw $t0, -3772($fp)
	lw $t0, -3772($fp)
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	sw $t0, -3780($fp)
	li $t0, 61118
	sw $t0, -3784($fp)
	lw $t0, -3784($fp)
	sw $t0, -3788($fp)
	lw $t0, -3788($fp)
	sw $t0, -3792($fp)
	li $t0, 62735
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	sw $t0, -3804($fp)
	lw $t0, -3776($fp)
	sw $t0, -3808($fp)
	lw $t0, -700($fp)
	sw $t0, -3812($fp)
	lw $t0, -3808($fp)
	lw $t1, -3812($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3816($fp)
	li $t0, 1234
	sw $t0, -3820($fp)
	lw $t0, -3816($fp)
	lw $t1, -3820($fp)
	mul $t0, $t0, $t1
	sw $t0, -3824($fp)
	li $t0, 16882
	sw $t0, -3828($fp)
	lw $t0, -3824($fp)
	lw $t1, -3828($fp)
	mul $t0, $t0, $t1
	sw $t0, -3832($fp)
	addi $t0, $fp, -2104
	sw $t0, -3836($fp)
	lw $t0, -3788($fp)
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
	lw $t0, -3832($fp)
	lw $t1, -3852($fp)
	sub $t0, $t0, $t1
	sw $t0, -3856($fp)
	li $t0, 0
	sw $t0, -3860($fp)
	li $t0, 9278
	sw $t0, -3864($fp)
	lw $t1, -3864($fp)
	li $t2, 0
	bne $t1, $t2, label505
	j label504
label504:
	li $t0, 1
	sw $t0, -3860($fp)
label505:
	lw $t0, -3856($fp)
	lw $t1, -3860($fp)
	add $t0, $t0, $t1
	sw $t0, -3868($fp)
	li $t0, 0
	sw $t0, -3872($fp)
	lw $t0, -688($fp)
	sw $t0, -3876($fp)
	lw $t1, -3876($fp)
	li $t2, 0
	bne $t1, $t2, label507
	j label506
label506:
	li $t0, 1
	sw $t0, -3872($fp)
label507:
	li $t0, 59985
	sw $t0, -3880($fp)
	lw $t0, -100($fp)
	sw $t0, -3884($fp)
	li $t0, 0
	sw $t0, -3888($fp)
	lw $t0, -2216($fp)
	sw $t0, -3892($fp)
	lw $t0, -3800($fp)
	sw $t0, -3896($fp)
	lw $t0, -3892($fp)
	lw $t1, -3896($fp)
	add $t0, $t0, $t1
	sw $t0, -3900($fp)
	lw $t1, -3900($fp)
	li $t2, 0
	bne $t1, $t2, label510
	j label509
label510:
	lw $t0, -112($fp)
	sw $t0, -3904($fp)
	lw $t1, -3904($fp)
	li $t2, 0
	bne $t1, $t2, label508
	j label509
label508:
	li $t0, 1
	sw $t0, -3888($fp)
label509:
	li $t0, 0
	sw $t0, -3908($fp)
	li $t0, 52016
	sw $t0, -3912($fp)
	li $t0, 0
	sw $t0, -3916($fp)
	addi $t0, $fp, -2104
	sw $t0, -3920($fp)
	li $t0, 4
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
	lw $t0, -3764($fp)
	sw $t0, -3940($fp)
	lw $t0, -2204($fp)
	sw $t0, -3944($fp)
	lw $t0, -3940($fp)
	lw $t1, -3944($fp)
	add $t0, $t0, $t1
	sw $t0, -3948($fp)
	lw $t1, -3936($fp)
	lw $t2, -3948($fp)
	blt $t1, $t2, label513
	j label514
label513:
	li $t0, 1
	sw $t0, -3916($fp)
label514:
	lw $t1, -3912($fp)
	lw $t2, -3916($fp)
	beq $t1, $t2, label511
	j label512
label511:
	li $t0, 1
	sw $t0, -3908($fp)
label512:
label467:
	j label462
label464:
	lw $t0, -100($fp)
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -112($fp)
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -124($fp)
	sw $t0, -3960($fp)
	lw $t0, -3960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -3964($fp)
	li $t0, 0
	sw $t0, -3968($fp)
	li $t0, 4
	lw $t1, -3968($fp)
	mul $t0, $t0, $t1
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	lw $t1, -3964($fp)
	add $t0, $t0, $t1
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	lw $t1, 0($t0)
	sw $t1, -3980($fp)
	lw $t0, -3980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -3984($fp)
	li $t0, 1
	sw $t0, -3988($fp)
	li $t0, 4
	lw $t1, -3988($fp)
	mul $t0, $t0, $t1
	sw $t0, -3992($fp)
	lw $t0, -3992($fp)
	lw $t1, -3984($fp)
	add $t0, $t0, $t1
	sw $t0, -3996($fp)
	lw $t0, -3996($fp)
	lw $t1, 0($t0)
	sw $t1, -4000($fp)
	lw $t0, -4000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -4004($fp)
	li $t0, 2
	sw $t0, -4008($fp)
	li $t0, 4
	lw $t1, -4008($fp)
	mul $t0, $t0, $t1
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	lw $t1, -4004($fp)
	add $t0, $t0, $t1
	sw $t0, -4016($fp)
	lw $t0, -4016($fp)
	lw $t1, 0($t0)
	sw $t1, -4020($fp)
	lw $t0, -4020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -4024($fp)
	li $t0, 3
	sw $t0, -4028($fp)
	li $t0, 4
	lw $t1, -4028($fp)
	mul $t0, $t0, $t1
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	lw $t1, -4024($fp)
	add $t0, $t0, $t1
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	lw $t1, 0($t0)
	sw $t1, -4040($fp)
	lw $t0, -4040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -4044($fp)
	li $t0, 4
	sw $t0, -4048($fp)
	li $t0, 4
	lw $t1, -4048($fp)
	mul $t0, $t0, $t1
	sw $t0, -4052($fp)
	lw $t0, -4052($fp)
	lw $t1, -4044($fp)
	add $t0, $t0, $t1
	sw $t0, -4056($fp)
	lw $t0, -4056($fp)
	lw $t1, 0($t0)
	sw $t1, -4060($fp)
	lw $t0, -4060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -256($fp)
	sw $t0, -4064($fp)
	lw $t0, -4064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	sw $t0, -4068($fp)
	lw $t0, -4068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -4072($fp)
	lw $t0, -4072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -292($fp)
	sw $t0, -4076($fp)
	lw $t0, -4076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4080($fp)
	li $t0, 0
	sw $t0, -4084($fp)
	li $t0, 4
	lw $t1, -4084($fp)
	mul $t0, $t0, $t1
	sw $t0, -4088($fp)
	lw $t0, -4088($fp)
	lw $t1, -4080($fp)
	add $t0, $t0, $t1
	sw $t0, -4092($fp)
	lw $t0, -4092($fp)
	lw $t1, 0($t0)
	sw $t1, -4096($fp)
	lw $t0, -4096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4100($fp)
	li $t0, 1
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
	lw $t0, -4116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4120($fp)
	li $t0, 2
	sw $t0, -4124($fp)
	li $t0, 4
	lw $t1, -4124($fp)
	mul $t0, $t0, $t1
	sw $t0, -4128($fp)
	lw $t0, -4128($fp)
	lw $t1, -4120($fp)
	add $t0, $t0, $t1
	sw $t0, -4132($fp)
	lw $t0, -4132($fp)
	lw $t1, 0($t0)
	sw $t1, -4136($fp)
	lw $t0, -4136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4140($fp)
	li $t0, 3
	sw $t0, -4144($fp)
	li $t0, 4
	lw $t1, -4144($fp)
	mul $t0, $t0, $t1
	sw $t0, -4148($fp)
	lw $t0, -4148($fp)
	lw $t1, -4140($fp)
	add $t0, $t0, $t1
	sw $t0, -4152($fp)
	lw $t0, -4152($fp)
	lw $t1, 0($t0)
	sw $t1, -4156($fp)
	lw $t0, -4156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4160($fp)
	li $t0, 4
	sw $t0, -4164($fp)
	li $t0, 4
	lw $t1, -4164($fp)
	mul $t0, $t0, $t1
	sw $t0, -4168($fp)
	lw $t0, -4168($fp)
	lw $t1, -4160($fp)
	add $t0, $t0, $t1
	sw $t0, -4172($fp)
	lw $t0, -4172($fp)
	lw $t1, 0($t0)
	sw $t1, -4176($fp)
	lw $t0, -4176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4180($fp)
	li $t0, 5
	sw $t0, -4184($fp)
	li $t0, 4
	lw $t1, -4184($fp)
	mul $t0, $t0, $t1
	sw $t0, -4188($fp)
	lw $t0, -4188($fp)
	lw $t1, -4180($fp)
	add $t0, $t0, $t1
	sw $t0, -4192($fp)
	lw $t0, -4192($fp)
	lw $t1, 0($t0)
	sw $t1, -4196($fp)
	lw $t0, -4196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4200($fp)
	li $t0, 6
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
	lw $t0, -4216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4220($fp)
	li $t0, 7
	sw $t0, -4224($fp)
	li $t0, 4
	lw $t1, -4224($fp)
	mul $t0, $t0, $t1
	sw $t0, -4228($fp)
	lw $t0, -4228($fp)
	lw $t1, -4220($fp)
	add $t0, $t0, $t1
	sw $t0, -4232($fp)
	lw $t0, -4232($fp)
	lw $t1, 0($t0)
	sw $t1, -4236($fp)
	lw $t0, -4236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4240($fp)
	li $t0, 8
	sw $t0, -4244($fp)
	li $t0, 4
	lw $t1, -4244($fp)
	mul $t0, $t0, $t1
	sw $t0, -4248($fp)
	lw $t0, -4248($fp)
	lw $t1, -4240($fp)
	add $t0, $t0, $t1
	sw $t0, -4252($fp)
	lw $t0, -4252($fp)
	lw $t1, 0($t0)
	sw $t1, -4256($fp)
	lw $t0, -4256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4260($fp)
	li $t0, 9
	sw $t0, -4264($fp)
	li $t0, 4
	lw $t1, -4264($fp)
	mul $t0, $t0, $t1
	sw $t0, -4268($fp)
	lw $t0, -4268($fp)
	lw $t1, -4260($fp)
	add $t0, $t0, $t1
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	lw $t1, 0($t0)
	sw $t1, -4276($fp)
	lw $t0, -4276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -4280($fp)
	li $t0, 0
	sw $t0, -4284($fp)
	li $t0, 4
	lw $t1, -4284($fp)
	mul $t0, $t0, $t1
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	lw $t1, -4280($fp)
	add $t0, $t0, $t1
	sw $t0, -4292($fp)
	lw $t0, -4292($fp)
	lw $t1, 0($t0)
	sw $t1, -4296($fp)
	lw $t0, -4296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -4300($fp)
	li $t0, 1
	sw $t0, -4304($fp)
	li $t0, 4
	lw $t1, -4304($fp)
	mul $t0, $t0, $t1
	sw $t0, -4308($fp)
	lw $t0, -4308($fp)
	lw $t1, -4300($fp)
	add $t0, $t0, $t1
	sw $t0, -4312($fp)
	lw $t0, -4312($fp)
	lw $t1, 0($t0)
	sw $t1, -4316($fp)
	lw $t0, -4316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -4320($fp)
	li $t0, 2
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
	lw $t0, -4336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -4340($fp)
	li $t0, 3
	sw $t0, -4344($fp)
	li $t0, 4
	lw $t1, -4344($fp)
	mul $t0, $t0, $t1
	sw $t0, -4348($fp)
	lw $t0, -4348($fp)
	lw $t1, -4340($fp)
	add $t0, $t0, $t1
	sw $t0, -4352($fp)
	lw $t0, -4352($fp)
	lw $t1, 0($t0)
	sw $t1, -4356($fp)
	lw $t0, -4356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -640($fp)
	sw $t0, -4360($fp)
	lw $t0, -4360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -652($fp)
	sw $t0, -4364($fp)
	lw $t0, -4364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -664($fp)
	sw $t0, -4368($fp)
	lw $t0, -4368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -4372($fp)
	lw $t0, -4372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -4376($fp)
	lw $t0, -4376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -4380($fp)
	lw $t0, -4380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	sw $t0, -4384($fp)
	lw $t0, -4384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -4388($fp)
	li $t0, 0
	sw $t0, -4392($fp)
	li $t0, 4
	lw $t1, -4392($fp)
	mul $t0, $t0, $t1
	sw $t0, -4396($fp)
	lw $t0, -4396($fp)
	lw $t1, -4388($fp)
	add $t0, $t0, $t1
	sw $t0, -4400($fp)
	lw $t0, -4400($fp)
	lw $t1, 0($t0)
	sw $t1, -4404($fp)
	lw $t0, -4404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -4408($fp)
	li $t0, 1
	sw $t0, -4412($fp)
	li $t0, 4
	lw $t1, -4412($fp)
	mul $t0, $t0, $t1
	sw $t0, -4416($fp)
	lw $t0, -4416($fp)
	lw $t1, -4408($fp)
	add $t0, $t0, $t1
	sw $t0, -4420($fp)
	lw $t0, -4420($fp)
	lw $t1, 0($t0)
	sw $t1, -4424($fp)
	lw $t0, -4424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -4428($fp)
	li $t0, 2
	sw $t0, -4432($fp)
	li $t0, 4
	lw $t1, -4432($fp)
	mul $t0, $t0, $t1
	sw $t0, -4436($fp)
	lw $t0, -4436($fp)
	lw $t1, -4428($fp)
	add $t0, $t0, $t1
	sw $t0, -4440($fp)
	lw $t0, -4440($fp)
	lw $t1, 0($t0)
	sw $t1, -4444($fp)
	lw $t0, -4444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -796($fp)
	sw $t0, -4448($fp)
	lw $t0, -4448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -808($fp)
	sw $t0, -4452($fp)
	lw $t0, -4452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -820($fp)
	sw $t0, -4456($fp)
	lw $t0, -4456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4460($fp)
	li $t0, 0
	sw $t0, -4464($fp)
	li $t0, 0
	sw $t0, -4468($fp)
	li $t0, 0
	sw $t0, -4472($fp)
	li $t0, 0
	sw $t0, -4476($fp)
	lw $t0, -268($fp)
	sw $t0, -4480($fp)
	lw $t0, -292($fp)
	sw $t0, -4484($fp)
	lw $t1, -4480($fp)
	lw $t2, -4484($fp)
	bgt $t1, $t2, label523
	j label524
label523:
	li $t0, 1
	sw $t0, -4476($fp)
label524:
	lw $t0, -820($fp)
	sw $t0, -4488($fp)
	lw $t1, -4476($fp)
	lw $t2, -4488($fp)
	bge $t1, $t2, label521
	j label522
label521:
	li $t0, 1
	sw $t0, -4472($fp)
label522:
	addi $t0, $fp, -64
	sw $t0, -4492($fp)
	li $t0, 9
	sw $t0, -4496($fp)
	li $t0, 4
	lw $t1, -4496($fp)
	mul $t0, $t0, $t1
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	lw $t1, -4492($fp)
	add $t0, $t0, $t1
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	lw $t1, 0($t0)
	sw $t1, -4508($fp)
	li $t0, 0
	lw $t1, -4508($fp)
	sub $t0, $t0, $t1
	sw $t0, -4512($fp)
	li $t0, 14358
	sw $t0, -4516($fp)
	lw $t0, -796($fp)
	sw $t0, -4520($fp)
	lw $t0, -808($fp)
	sw $t0, -4524($fp)
	lw $t0, -4520($fp)
	lw $t1, -4524($fp)
	sub $t0, $t0, $t1
	sw $t0, -4528($fp)
	lw $t0, -688($fp)
	sw $t0, -4532($fp)
	lw $t0, -4528($fp)
	lw $t1, -4532($fp)
	sub $t0, $t0, $t1
	sw $t0, -4536($fp)
	addi $t0, $fp, -92
	sw $t0, -4540($fp)
	li $t0, 1
	sw $t0, -4544($fp)
	li $t0, 4
	lw $t1, -4544($fp)
	mul $t0, $t0, $t1
	sw $t0, -4548($fp)
	lw $t0, -4548($fp)
	lw $t1, -4540($fp)
	add $t0, $t0, $t1
	sw $t0, -4552($fp)
	lw $t0, -4552($fp)
	lw $t1, 0($t0)
	sw $t1, -4556($fp)
	li $t0, 0
	sw $t0, -4560($fp)
	li $t0, 10263
	sw $t0, -4564($fp)
	lw $t0, -712($fp)
	sw $t0, -4568($fp)
	lw $t1, -4564($fp)
	lw $t2, -4568($fp)
	beq $t1, $t2, label525
	j label526
label525:
	li $t0, 1
	sw $t0, -4560($fp)
label526:
	addi $sp, $sp, -4
	lw $t0, -4512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4560($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4572($fp)
	addi $sp, $sp, 24
	lw $t1, -4472($fp)
	lw $t2, -4572($fp)
	bge $t1, $t2, label519
	j label520
label519:
	li $t0, 1
	sw $t0, -4468($fp)
label520:
	li $t0, 0
	sw $t0, -4576($fp)
	lw $t0, -652($fp)
	sw $t0, -4580($fp)
	lw $t1, -4580($fp)
	li $t2, 0
	bne $t1, $t2, label528
	j label527
label527:
	li $t0, 1
	sw $t0, -4576($fp)
label528:
	li $t0, 47957
	sw $t0, -4584($fp)
	lw $t0, -4576($fp)
	lw $t1, -4584($fp)
	mul $t0, $t0, $t1
	sw $t0, -4588($fp)
	lw $t1, -4468($fp)
	lw $t2, -4588($fp)
	blt $t1, $t2, label517
	j label518
label517:
	li $t0, 1
	sw $t0, -4464($fp)
label518:
	addi $t0, $fp, -80
	sw $t0, -4592($fp)
	lw $t0, -820($fp)
	sw $t0, -4596($fp)
	lw $t0, -4596($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -4600($fp)
	li $t0, 4
	lw $t1, -4600($fp)
	mul $t0, $t0, $t1
	sw $t0, -4604($fp)
	lw $t0, -4604($fp)
	lw $t1, -4592($fp)
	add $t0, $t0, $t1
	sw $t0, -4608($fp)
	lw $t0, -4608($fp)
	lw $t1, 0($t0)
	sw $t1, -4612($fp)
	lw $t1, -4464($fp)
	lw $t2, -4612($fp)
	bgt $t1, $t2, label515
	j label516
label515:
	li $t0, 1
	sw $t0, -4460($fp)
label516:
	lw $ra, -4($fp)
	lw $v0, -4460($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -12
	li $t0, 0
	sw $t0, -8($fp)
	li $t0, 19704
	sw $t0, -12($fp)
	lw $t0, 4($fp)
	sw $t0, -16($fp)
	lw $t1, -12($fp)
	lw $t2, -16($fp)
	blt $t1, $t2, label529
	j label530
label529:
	li $t0, 1
	sw $t0, -8($fp)
label530:
	lw $ra, -4($fp)
	lw $v0, -8($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -44
	li $t0, 50308
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
	div $t0, $t1
	mflo $t2
	sw $t2, -32($fp)
	li $t0, 50851
	sw $t0, -36($fp)
	lw $t1, -32($fp)
	lw $t2, -36($fp)
	beq $t1, $t2, label531
	j label532
label531:
	li $t0, 1
	sw $t0, -20($fp)
label532:
	addi $sp, $sp, -4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -40($fp)
	addi $sp, $sp, 8
	lw $t0, -12($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 9096
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
