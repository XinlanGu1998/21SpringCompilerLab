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
	addi $sp, $sp, -3588
	li $t0, 14714
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 26158
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 50747
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	li $t0, 48562
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	li $t0, 18025
	sw $t0, -204($fp)
	addi $t0, $fp, -48
	sw $t0, -208($fp)
	li $t0, 0
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
	li $t0, 41143
	sw $t0, -228($fp)
	addi $t0, $fp, -48
	sw $t0, -232($fp)
	li $t0, 1
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
	li $t0, 10723
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	li $t0, 64887
	sw $t0, -264($fp)
	addi $t0, $fp, -80
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
	li $t0, 38841
	sw $t0, -288($fp)
	addi $t0, $fp, -80
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
	li $t0, 42349
	sw $t0, -312($fp)
	addi $t0, $fp, -80
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
	li $t0, 21379
	sw $t0, -336($fp)
	addi $t0, $fp, -80
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
	li $t0, 1432
	sw $t0, -360($fp)
	addi $t0, $fp, -80
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
	li $t0, 45925
	sw $t0, -384($fp)
	addi $t0, $fp, -80
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
	li $t0, 3935
	sw $t0, -408($fp)
	addi $t0, $fp, -80
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
	li $t0, 1767
	sw $t0, -432($fp)
	addi $t0, $fp, -80
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
	li $t0, 61777
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	li $t0, 49251
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	li $t0, 27752
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	li $t0, 58543
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	lw $t0, -496($fp)
	sw $t0, -500($fp)
	li $t0, 2788
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	li $t0, 62080
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	li $t0, 29734
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	sw $t0, -536($fp)
	li $t0, 51765
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	li $t0, 63790
	sw $t0, -552($fp)
	addi $t0, $fp, -92
	sw $t0, -556($fp)
	li $t0, 0
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
	li $t0, 62723
	sw $t0, -576($fp)
	addi $t0, $fp, -92
	sw $t0, -580($fp)
	li $t0, 1
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
	li $t0, 48281
	sw $t0, -600($fp)
	addi $t0, $fp, -92
	sw $t0, -604($fp)
	li $t0, 2
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
	li $t0, 47256
	sw $t0, -624($fp)
	addi $t0, $fp, -132
	sw $t0, -628($fp)
	li $t0, 0
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
	li $t0, 59236
	sw $t0, -648($fp)
	addi $t0, $fp, -132
	sw $t0, -652($fp)
	li $t0, 1
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
	li $t0, 9386
	sw $t0, -672($fp)
	addi $t0, $fp, -132
	sw $t0, -676($fp)
	li $t0, 2
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
	li $t0, 52195
	sw $t0, -696($fp)
	addi $t0, $fp, -132
	sw $t0, -700($fp)
	li $t0, 3
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
	li $t0, 27722
	sw $t0, -720($fp)
	addi $t0, $fp, -132
	sw $t0, -724($fp)
	li $t0, 4
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
	li $t0, 24100
	sw $t0, -744($fp)
	addi $t0, $fp, -132
	sw $t0, -748($fp)
	li $t0, 5
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
	li $t0, 12817
	sw $t0, -768($fp)
	addi $t0, $fp, -132
	sw $t0, -772($fp)
	li $t0, 6
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
	li $t0, 12933
	sw $t0, -792($fp)
	addi $t0, $fp, -132
	sw $t0, -796($fp)
	li $t0, 7
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
	li $t0, 7126
	sw $t0, -816($fp)
	addi $t0, $fp, -132
	sw $t0, -820($fp)
	li $t0, 8
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
	li $t0, 30843
	sw $t0, -840($fp)
	addi $t0, $fp, -132
	sw $t0, -844($fp)
	li $t0, 9
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
	li $t0, 54077
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -872($fp)
	li $t0, 17849
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -884($fp)
	li $t0, 30194
	sw $t0, -888($fp)
	addi $t0, $fp, -136
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
	li $t0, 27382
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	sw $t0, -916($fp)
	lw $t0, -916($fp)
	sw $t0, -920($fp)
	li $t0, 60198
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -932($fp)
	li $t0, 51573
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	sw $t0, -944($fp)
	li $t0, 28814
	sw $t0, -948($fp)
	addi $t0, $fp, -160
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
	li $t0, 40587
	sw $t0, -972($fp)
	addi $t0, $fp, -160
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
	li $t0, 55508
	sw $t0, -996($fp)
	addi $t0, $fp, -160
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
	li $t0, 30581
	sw $t0, -1020($fp)
	addi $t0, $fp, -160
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
	li $t0, 36829
	sw $t0, -1044($fp)
	addi $t0, $fp, -160
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
	li $t0, 39223
	sw $t0, -1068($fp)
	addi $t0, $fp, -160
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
	li $t0, 58333
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -1100($fp)
	li $t0, 29836
	sw $t0, -1104($fp)
	addi $t0, $fp, -188
	sw $t0, -1108($fp)
	li $t0, 0
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
	li $t0, 42011
	sw $t0, -1128($fp)
	addi $t0, $fp, -188
	sw $t0, -1132($fp)
	li $t0, 1
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
	li $t0, 54878
	sw $t0, -1152($fp)
	addi $t0, $fp, -188
	sw $t0, -1156($fp)
	li $t0, 2
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
	li $t0, 59571
	sw $t0, -1176($fp)
	addi $t0, $fp, -188
	sw $t0, -1180($fp)
	li $t0, 3
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
	li $t0, 28240
	sw $t0, -1200($fp)
	addi $t0, $fp, -188
	sw $t0, -1204($fp)
	li $t0, 4
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
	li $t0, 53132
	sw $t0, -1224($fp)
	addi $t0, $fp, -188
	sw $t0, -1228($fp)
	li $t0, 5
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
	li $t0, 56758
	sw $t0, -1248($fp)
	addi $t0, $fp, -188
	sw $t0, -1252($fp)
	li $t0, 6
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
	li $t0, 10986
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	li $t0, 34852
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	li $t0, 50459
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	li $t0, 20372
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -1316($fp)
	li $t0, 21512
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	sw $t0, -1328($fp)
	lw $t0, -196($fp)
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1336($fp)
	li $t0, 0
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
	lw $t0, -1352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -48
	sw $t0, -1356($fp)
	li $t0, 1
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
	lw $t0, -256($fp)
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1380($fp)
	li $t0, 0
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
	addi $t0, $fp, -80
	sw $t0, -1400($fp)
	li $t0, 1
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
	addi $t0, $fp, -80
	sw $t0, -1420($fp)
	li $t0, 2
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
	addi $t0, $fp, -80
	sw $t0, -1440($fp)
	li $t0, 3
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
	addi $t0, $fp, -80
	sw $t0, -1460($fp)
	li $t0, 4
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
	lw $t0, -1476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1480($fp)
	li $t0, 5
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
	lw $t0, -1496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1500($fp)
	li $t0, 6
	sw $t0, -1504($fp)
	li $t0, 4
	lw $t1, -1504($fp)
	mul $t0, $t0, $t1
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	lw $t1, -1500($fp)
	add $t0, $t0, $t1
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	lw $t1, 0($t0)
	sw $t1, -1516($fp)
	lw $t0, -1516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1520($fp)
	li $t0, 7
	sw $t0, -1524($fp)
	li $t0, 4
	lw $t1, -1524($fp)
	mul $t0, $t0, $t1
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	lw $t1, -1520($fp)
	add $t0, $t0, $t1
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	lw $t1, 0($t0)
	sw $t1, -1536($fp)
	lw $t0, -1536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -460($fp)
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -472($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -484($fp)
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -496($fp)
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -508($fp)
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -532($fp)
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -544($fp)
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -1572($fp)
	li $t0, 0
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
	addi $t0, $fp, -92
	sw $t0, -1592($fp)
	li $t0, 1
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
	addi $t0, $fp, -92
	sw $t0, -1612($fp)
	li $t0, 2
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
	addi $t0, $fp, -132
	sw $t0, -1632($fp)
	li $t0, 0
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
	addi $t0, $fp, -132
	sw $t0, -1652($fp)
	li $t0, 1
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
	addi $t0, $fp, -132
	sw $t0, -1672($fp)
	li $t0, 2
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
	addi $t0, $fp, -132
	sw $t0, -1692($fp)
	li $t0, 3
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
	addi $t0, $fp, -132
	sw $t0, -1712($fp)
	li $t0, 4
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
	addi $t0, $fp, -132
	sw $t0, -1732($fp)
	li $t0, 5
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
	addi $t0, $fp, -132
	sw $t0, -1752($fp)
	li $t0, 6
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
	addi $t0, $fp, -132
	sw $t0, -1772($fp)
	li $t0, 7
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
	addi $t0, $fp, -132
	sw $t0, -1792($fp)
	li $t0, 8
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
	addi $t0, $fp, -132
	sw $t0, -1812($fp)
	li $t0, 9
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
	lw $t0, -868($fp)
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -880($fp)
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -1840($fp)
	li $t0, 0
	sw $t0, -1844($fp)
	li $t0, 4
	lw $t1, -1844($fp)
	mul $t0, $t0, $t1
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	lw $t1, -1840($fp)
	add $t0, $t0, $t1
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	lw $t1, 0($t0)
	sw $t1, -1856($fp)
	lw $t0, -1856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -916($fp)
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -928($fp)
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -940($fp)
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
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
	addi $t0, $fp, -160
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
	addi $t0, $fp, -160
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
	addi $t0, $fp, -160
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
	addi $t0, $fp, -160
	sw $t0, -1952($fp)
	li $t0, 4
	sw $t0, -1956($fp)
	li $t0, 4
	lw $t1, -1956($fp)
	mul $t0, $t0, $t1
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	lw $t1, -1952($fp)
	add $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t0, -1964($fp)
	lw $t1, 0($t0)
	sw $t1, -1968($fp)
	lw $t0, -1968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -1972($fp)
	li $t0, 5
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
	lw $t0, -1096($fp)
	sw $t0, -1992($fp)
	lw $t0, -1992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -1996($fp)
	li $t0, 0
	sw $t0, -2000($fp)
	li $t0, 4
	lw $t1, -2000($fp)
	mul $t0, $t0, $t1
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	lw $t1, -1996($fp)
	add $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	lw $t1, 0($t0)
	sw $t1, -2012($fp)
	lw $t0, -2012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -2016($fp)
	li $t0, 1
	sw $t0, -2020($fp)
	li $t0, 4
	lw $t1, -2020($fp)
	mul $t0, $t0, $t1
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	lw $t1, -2016($fp)
	add $t0, $t0, $t1
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	lw $t1, 0($t0)
	sw $t1, -2032($fp)
	lw $t0, -2032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -2036($fp)
	li $t0, 2
	sw $t0, -2040($fp)
	li $t0, 4
	lw $t1, -2040($fp)
	mul $t0, $t0, $t1
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	lw $t1, -2036($fp)
	add $t0, $t0, $t1
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	lw $t1, 0($t0)
	sw $t1, -2052($fp)
	lw $t0, -2052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -2056($fp)
	li $t0, 3
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
	lw $t0, -2072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -2076($fp)
	li $t0, 4
	sw $t0, -2080($fp)
	li $t0, 4
	lw $t1, -2080($fp)
	mul $t0, $t0, $t1
	sw $t0, -2084($fp)
	lw $t0, -2084($fp)
	lw $t1, -2076($fp)
	add $t0, $t0, $t1
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	lw $t1, 0($t0)
	sw $t1, -2092($fp)
	lw $t0, -2092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -2096($fp)
	li $t0, 5
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
	lw $t0, -2112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -2116($fp)
	li $t0, 6
	sw $t0, -2120($fp)
	li $t0, 4
	lw $t1, -2120($fp)
	mul $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t0, -2124($fp)
	lw $t1, -2116($fp)
	add $t0, $t0, $t1
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	lw $t1, 0($t0)
	sw $t1, -2132($fp)
	lw $t0, -2132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1276($fp)
	sw $t0, -2136($fp)
	lw $t0, -2136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1288($fp)
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1300($fp)
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1312($fp)
	sw $t0, -2148($fp)
	lw $t0, -2148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1324($fp)
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2156($fp)
	lw $t0, -496($fp)
	sw $t0, -2160($fp)
	lw $t1, -2160($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label121
label121:
	li $t0, 1
	sw $t0, -2156($fp)
label122:
	lw $ra, -4($fp)
	lw $v0, -2156($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label123:
	li $t0, 0
	sw $t0, -2164($fp)
	li $t0, 0
	sw $t0, -2168($fp)
	li $t0, 0
	sw $t0, -2172($fp)
	li $t0, 12645
	sw $t0, -2176($fp)
	lw $t1, -2176($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label130
label130:
	li $t0, 1
	sw $t0, -2172($fp)
label131:
	li $t0, 44472
	sw $t0, -2180($fp)
	lw $t0, -2172($fp)
	lw $t1, -2180($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2184($fp)
	lw $t0, -916($fp)
	sw $t0, -2188($fp)
	li $t0, 34329
	sw $t0, -2192($fp)
	lw $t0, -2188($fp)
	lw $t1, -2192($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2196($fp)
	lw $t1, -2184($fp)
	lw $t2, -2196($fp)
	bgt $t1, $t2, label128
	j label129
label128:
	li $t0, 1
	sw $t0, -2168($fp)
label129:
	lw $t0, -1312($fp)
	sw $t0, -2200($fp)
	lw $t0, -928($fp)
	sw $t0, -2204($fp)
	lw $t0, -2200($fp)
	lw $t1, -2204($fp)
	mul $t0, $t0, $t1
	sw $t0, -2208($fp)
	lw $t0, 4($fp)
	sw $t0, -2212($fp)
	lw $t0, -2208($fp)
	lw $t1, -2212($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2216($fp)
	lw $t1, -2168($fp)
	lw $t2, -2216($fp)
	beq $t1, $t2, label126
	j label127
label126:
	li $t0, 1
	sw $t0, -2164($fp)
label127:
	li $t0, 25578
	sw $t0, -2220($fp)
	li $t0, 0
	lw $t1, -2220($fp)
	sub $t0, $t0, $t1
	sw $t0, -2224($fp)
	lw $t1, -2164($fp)
	lw $t2, -2224($fp)
	bne $t1, $t2, label124
	j label125
label124:
	li $t0, 51599
	sw $t0, -2228($fp)
	li $t0, 0
	lw $t1, -2228($fp)
	sub $t0, $t0, $t1
	sw $t0, -2232($fp)
	lw $t0, 4($fp)
	sw $t0, -2236($fp)
	lw $t1, -2232($fp)
	lw $t2, -2236($fp)
	beq $t1, $t2, label132
	j label133
label132:
	lw $t0, -1312($fp)
	sw $t0, -2240($fp)
	lw $t0, -532($fp)
	sw $t0, -2244($fp)
	lw $t0, -2240($fp)
	lw $t1, -2244($fp)
	mul $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t0, -1288($fp)
	sw $t0, -2252($fp)
	lw $t0, -2248($fp)
	lw $t1, -2252($fp)
	mul $t0, $t0, $t1
	sw $t0, -2256($fp)
	li $t0, 65172
	sw $t0, -2260($fp)
	li $t0, 0
	lw $t1, -2260($fp)
	sub $t0, $t0, $t1
	sw $t0, -2264($fp)
	addi $sp, $sp, -4
	lw $t0, -2256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2264($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2268($fp)
	addi $sp, $sp, 12
	lw $t1, -2268($fp)
	li $t2, 0
	bne $t1, $t2, label138
	j label135
label138:
	lw $t0, 4($fp)
	sw $t0, -2272($fp)
	li $t0, 14119
	sw $t0, -2276($fp)
	lw $t0, -2272($fp)
	lw $t1, -2276($fp)
	mul $t0, $t0, $t1
	sw $t0, -2280($fp)
	li $t0, 3912
	sw $t0, -2284($fp)
	lw $t0, -2280($fp)
	lw $t1, -2284($fp)
	mul $t0, $t0, $t1
	sw $t0, -2288($fp)
	lw $t0, -940($fp)
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	sw $t0, -2296($fp)
	addi $t0, $fp, -92
	sw $t0, -2300($fp)
	lw $t0, -472($fp)
	sw $t0, -2304($fp)
	li $t0, 4
	lw $t1, -2304($fp)
	mul $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $t0, -2308($fp)
	lw $t1, -2300($fp)
	add $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	lw $t1, 0($t0)
	sw $t1, -2316($fp)
	li $t0, 29830
	sw $t0, -2320($fp)
	lw $t0, -2316($fp)
	lw $t1, -2320($fp)
	add $t0, $t0, $t1
	sw $t0, -2324($fp)
	addi $sp, $sp, -4
	lw $t0, -2296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2324($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2328($fp)
	addi $sp, $sp, 12
	lw $t0, -2288($fp)
	lw $t1, -2328($fp)
	add $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t1, -2332($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label136
label135:
label139:
	lw $t0, -1324($fp)
	sw $t0, -2336($fp)
	lw $t1, -2336($fp)
	li $t2, 0
	bne $t1, $t2, label142
	j label141
label142:
	addi $t0, $fp, -92
	sw $t0, -2340($fp)
	li $t0, 2
	sw $t0, -2344($fp)
	li $t0, 4
	lw $t1, -2344($fp)
	mul $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	lw $t1, -2340($fp)
	add $t0, $t0, $t1
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	lw $t1, 0($t0)
	sw $t1, -2356($fp)
	lw $t0, -1288($fp)
	sw $t0, -2360($fp)
	li $t0, 41501
	sw $t0, -2364($fp)
	lw $t0, -2360($fp)
	lw $t1, -2364($fp)
	mul $t0, $t0, $t1
	sw $t0, -2368($fp)
	li $t0, 0
	lw $t1, -2368($fp)
	sub $t0, $t0, $t1
	sw $t0, -2372($fp)
	addi $sp, $sp, -4
	lw $t0, -2356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2372($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2376($fp)
	addi $sp, $sp, 12
	lw $t0, -1312($fp)
	sw $t0, -2380($fp)
	lw $t0, -1300($fp)
	sw $t0, -2384($fp)
	lw $t0, -2380($fp)
	lw $t1, -2384($fp)
	add $t0, $t0, $t1
	sw $t0, -2388($fp)
	lw $t1, -2376($fp)
	lw $t2, -2388($fp)
	bge $t1, $t2, label140
	j label141
label140:
label143:
	li $t0, 4779
	sw $t0, -2392($fp)
	lw $t1, -2392($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label145
label144:
	li $t0, 0
	sw $t0, -2396($fp)
	li $t0, 0
	sw $t0, -2400($fp)
	lw $t0, -544($fp)
	sw $t0, -2404($fp)
	lw $t1, -2404($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label150
label151:
	li $t0, 39162
	sw $t0, -2408($fp)
	lw $t1, -2408($fp)
	li $t2, 0
	bne $t1, $t2, label149
	j label150
label149:
	li $t0, 1
	sw $t0, -2400($fp)
label150:
	lw $t0, -1288($fp)
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	sw $t0, -928($fp)
	lw $t0, -928($fp)
	sw $t0, -2416($fp)
	addi $sp, $sp, -4
	lw $t0, -2400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2416($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2420($fp)
	addi $sp, $sp, 12
	lw $t1, -2420($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label147
label148:
	addi $t0, $fp, -136
	sw $t0, -2424($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -2444($fp)
	li $t0, 5840
	sw $t0, -2448($fp)
	lw $t1, -2448($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label154
label155:
	li $t0, 35361
	sw $t0, -2452($fp)
	lw $t1, -2452($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label154
label154:
	lw $t0, -1276($fp)
	sw $t0, -2456($fp)
	lw $t1, -2456($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label153
label152:
	li $t0, 1
	sw $t0, -2444($fp)
label153:
	addi $sp, $sp, -4
	lw $t0, -2440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2444($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2460($fp)
	addi $sp, $sp, 12
	lw $t1, -2460($fp)
	li $t2, 0
	bne $t1, $t2, label146
	j label147
label146:
	li $t0, 1
	sw $t0, -2396($fp)
label147:
	lw $ra, -4($fp)
	lw $v0, -2396($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label143
label145:
	j label139
label141:
	j label137
label136:
	lw $t0, -1324($fp)
	sw $t0, -2464($fp)
	lw $t0, -928($fp)
	sw $t0, -2468($fp)
	lw $t0, -2464($fp)
	lw $t1, -2468($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2472($fp)
	li $t0, 28158
	sw $t0, -2476($fp)
	lw $t0, -2472($fp)
	lw $t1, -2476($fp)
	sub $t0, $t0, $t1
	sw $t0, -2480($fp)
	li $t0, 0
	sw $t0, -2484($fp)
	lw $t0, -1096($fp)
	sw $t0, -2488($fp)
	lw $t1, -2488($fp)
	li $t2, 0
	bne $t1, $t2, label161
	j label160
label161:
	li $t0, 34327
	sw $t0, -2492($fp)
	lw $t1, -2492($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label160
label159:
	li $t0, 1
	sw $t0, -2484($fp)
label160:
	li $t0, 0
	sw $t0, -2496($fp)
	li $t0, 40292
	sw $t0, -2500($fp)
	li $t0, 21539
	sw $t0, -2504($fp)
	lw $t0, -2500($fp)
	lw $t1, -2504($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2508($fp)
	li $t0, 17500
	sw $t0, -2512($fp)
	lw $t1, -2508($fp)
	lw $t2, -2512($fp)
	ble $t1, $t2, label162
	j label163
label162:
	li $t0, 1
	sw $t0, -2496($fp)
label163:
	addi $sp, $sp, -4
	lw $t0, -2484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2496($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2516($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -2520($fp)
	lw $t0, -12($fp)
	sw $t0, -2524($fp)
	lw $t1, -2524($fp)
	li $t2, 0
	bne $t1, $t2, label165
	j label164
label164:
	li $t0, 1
	sw $t0, -2520($fp)
label165:
	lw $t0, -544($fp)
	sw $t0, -2528($fp)
	lw $t0, -2520($fp)
	lw $t1, -2528($fp)
	sub $t0, $t0, $t1
	sw $t0, -2532($fp)
	addi $sp, $sp, -4
	lw $t0, -2516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2532($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2536($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -2540($fp)
	lw $t0, -496($fp)
	sw $t0, -2544($fp)
	lw $t0, -868($fp)
	sw $t0, -2548($fp)
	lw $t1, -2544($fp)
	lw $t2, -2548($fp)
	beq $t1, $t2, label168
	j label167
label168:
	lw $t0, -532($fp)
	sw $t0, -2552($fp)
	lw $t1, -2552($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label167
label166:
	li $t0, 1
	sw $t0, -2540($fp)
label167:
	li $t0, 0
	sw $t0, -2556($fp)
	li $t0, 0
	sw $t0, -2560($fp)
	li $t0, 49779
	sw $t0, -2564($fp)
	lw $t0, -940($fp)
	sw $t0, -2568($fp)
	lw $t1, -2564($fp)
	lw $t2, -2568($fp)
	bgt $t1, $t2, label171
	j label172
label171:
	li $t0, 1
	sw $t0, -2560($fp)
label172:
	lw $t0, -520($fp)
	sw $t0, -2572($fp)
	lw $t1, -2560($fp)
	lw $t2, -2572($fp)
	bne $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -2556($fp)
label170:
	addi $sp, $sp, -4
	lw $t0, -2540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2556($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2576($fp)
	addi $sp, $sp, 12
	lw $t0, -2536($fp)
	lw $t1, -2576($fp)
	sub $t0, $t0, $t1
	sw $t0, -2580($fp)
	lw $t1, -2480($fp)
	lw $t2, -2580($fp)
	bgt $t1, $t2, label156
	j label157
label156:
	li $t0, 5096
	sw $t0, -2584($fp)
	addi $t0, $fp, -188
	sw $t0, -2588($fp)
	li $t0, 0
	sw $t0, -2592($fp)
	lw $t0, -544($fp)
	sw $t0, -2596($fp)
	lw $t0, -12($fp)
	sw $t0, -2600($fp)
	lw $t1, -2596($fp)
	lw $t2, -2600($fp)
	beq $t1, $t2, label173
	j label174
label173:
	li $t0, 1
	sw $t0, -2592($fp)
label174:
	li $t0, 4
	lw $t1, -2592($fp)
	mul $t0, $t0, $t1
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	lw $t1, -2588($fp)
	add $t0, $t0, $t1
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	lw $t1, 0($t0)
	sw $t1, -2612($fp)
	lw $t0, -2584($fp)
	lw $t1, -2612($fp)
	add $t0, $t0, $t1
	sw $t0, -2616($fp)
	lw $ra, -4($fp)
	lw $v0, -2616($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label158
label157:
label175:
	li $t0, 25549
	sw $t0, -2620($fp)
	addi $t0, $fp, -132
	sw $t0, -2624($fp)
	li $t0, 0
	sw $t0, -2628($fp)
	li $t0, 60765
	sw $t0, -2632($fp)
	lw $t0, -1096($fp)
	sw $t0, -2636($fp)
	lw $t1, -2632($fp)
	lw $t2, -2636($fp)
	bgt $t1, $t2, label178
	j label179
label178:
	li $t0, 1
	sw $t0, -2628($fp)
label179:
	li $t0, 4
	lw $t1, -2628($fp)
	mul $t0, $t0, $t1
	sw $t0, -2640($fp)
	lw $t0, -2640($fp)
	lw $t1, -2624($fp)
	add $t0, $t0, $t1
	sw $t0, -2644($fp)
	lw $t0, -2644($fp)
	lw $t1, 0($t0)
	sw $t1, -2648($fp)
	lw $t0, -2620($fp)
	lw $t1, -2648($fp)
	mul $t0, $t0, $t1
	sw $t0, -2652($fp)
	lw $t1, -2652($fp)
	li $t2, 0
	bne $t1, $t2, label176
	j label177
label176:
	li $t0, 0
	sw $t0, -2656($fp)
	addi $t0, $fp, -80
	sw $t0, -2660($fp)
	li $t0, 0
	sw $t0, -2664($fp)
	li $t0, 4
	lw $t1, -2664($fp)
	mul $t0, $t0, $t1
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	lw $t1, -2660($fp)
	add $t0, $t0, $t1
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	lw $t1, 0($t0)
	sw $t1, -2676($fp)
	lw $t0, -460($fp)
	sw $t0, -2680($fp)
	lw $t0, -940($fp)
	sw $t0, -2684($fp)
	lw $t0, -2680($fp)
	lw $t1, -2684($fp)
	mul $t0, $t0, $t1
	sw $t0, -2688($fp)
	lw $t0, -2676($fp)
	lw $t1, -2688($fp)
	add $t0, $t0, $t1
	sw $t0, -2692($fp)
	li $t0, 0
	sw $t0, -2696($fp)
	addi $t0, $fp, -48
	sw $t0, -2700($fp)
	lw $t0, -940($fp)
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
	lw $t0, -472($fp)
	sw $t0, -2720($fp)
	lw $t0, -2716($fp)
	lw $t1, -2720($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2724($fp)
	li $t0, 15601
	sw $t0, -2728($fp)
	lw $t1, -2724($fp)
	lw $t2, -2728($fp)
	blt $t1, $t2, label182
	j label183
label182:
	li $t0, 1
	sw $t0, -2696($fp)
label183:
	lw $t1, -2692($fp)
	lw $t2, -2696($fp)
	bne $t1, $t2, label180
	j label181
label180:
	li $t0, 1
	sw $t0, -2656($fp)
label181:
	lw $ra, -4($fp)
	lw $v0, -2656($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label175
label177:
label158:
label137:
	j label134
label133:
	li $t0, 0
	sw $t0, -2732($fp)
	li $t0, 0
	sw $t0, -2736($fp)
	lw $t0, -256($fp)
	sw $t0, -2740($fp)
	lw $t1, -2740($fp)
	li $t2, 0
	bne $t1, $t2, label187
	j label186
label186:
	li $t0, 1
	sw $t0, -2736($fp)
label187:
	li $t0, 23118
	sw $t0, -2744($fp)
	lw $t0, -2736($fp)
	lw $t1, -2744($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2748($fp)
	li $t0, 0
	sw $t0, -2752($fp)
	li $t0, 0
	sw $t0, -2756($fp)
	addi $t0, $fp, -188
	sw $t0, -2760($fp)
	lw $t0, -496($fp)
	sw $t0, -2764($fp)
	li $t0, 4
	lw $t1, -2764($fp)
	mul $t0, $t0, $t1
	sw $t0, -2768($fp)
	lw $t0, -2768($fp)
	lw $t1, -2760($fp)
	add $t0, $t0, $t1
	sw $t0, -2772($fp)
	lw $t0, -2772($fp)
	lw $t1, 0($t0)
	sw $t1, -2776($fp)
	lw $t1, -2776($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label190
label190:
	li $t0, 1
	sw $t0, -2756($fp)
label191:
	li $t0, 0
	sw $t0, -2780($fp)
	lw $t0, -1276($fp)
	sw $t0, -2784($fp)
	lw $t1, -2784($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label192
label192:
	li $t0, 1
	sw $t0, -2780($fp)
label193:
	lw $t1, -2756($fp)
	lw $t2, -2780($fp)
	blt $t1, $t2, label188
	j label189
label188:
	li $t0, 1
	sw $t0, -2752($fp)
label189:
	lw $t1, -2748($fp)
	lw $t2, -2752($fp)
	beq $t1, $t2, label184
	j label185
label184:
	li $t0, 1
	sw $t0, -2732($fp)
label185:
label134:
	j label123
label125:
	addi $t0, $fp, -160
	sw $t0, -2788($fp)
	addi $t0, $fp, -188
	sw $t0, -2792($fp)
	lw $t0, -484($fp)
	sw $t0, -2796($fp)
	li $t0, 4
	lw $t1, -2796($fp)
	mul $t0, $t0, $t1
	sw $t0, -2800($fp)
	lw $t0, -2800($fp)
	lw $t1, -2792($fp)
	add $t0, $t0, $t1
	sw $t0, -2804($fp)
	lw $t0, -2804($fp)
	lw $t1, 0($t0)
	sw $t1, -2808($fp)
	lw $t0, -12($fp)
	sw $t0, -2812($fp)
	lw $t0, -2808($fp)
	lw $t1, -2812($fp)
	add $t0, $t0, $t1
	sw $t0, -2816($fp)
	li $t0, 4
	lw $t1, -2816($fp)
	mul $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	lw $t1, -2788($fp)
	add $t0, $t0, $t1
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	lw $t1, 0($t0)
	sw $t1, -2828($fp)
label194:
	li $t0, 0
	sw $t0, -2832($fp)
	li $t0, 30254
	sw $t0, -2836($fp)
	lw $t0, -1096($fp)
	sw $t0, -2840($fp)
	lw $t0, -2836($fp)
	lw $t1, -2840($fp)
	sub $t0, $t0, $t1
	sw $t0, -2844($fp)
	lw $t0, -1324($fp)
	sw $t0, -2848($fp)
	lw $t1, -2844($fp)
	lw $t2, -2848($fp)
	beq $t1, $t2, label198
	j label199
label198:
	li $t0, 1
	sw $t0, -2832($fp)
label199:
	li $t0, 60074
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -2856($fp)
	addi $sp, $sp, -4
	lw $t0, -2832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2856($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2860($fp)
	addi $sp, $sp, 12
	lw $t1, -2860($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label196
label197:
	li $t0, 48696
	sw $t0, -2864($fp)
	lw $t1, -2864($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label196
label195:
label200:
	addi $t0, $fp, -160
	sw $t0, -2868($fp)
	li $t0, 0
	sw $t0, -2872($fp)
	lw $t0, -928($fp)
	sw $t0, -2876($fp)
	lw $t1, -2876($fp)
	li $t2, 0
	bne $t1, $t2, label204
	j label203
label203:
	li $t0, 1
	sw $t0, -2872($fp)
label204:
	li $t0, 4
	lw $t1, -2872($fp)
	mul $t0, $t0, $t1
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	lw $t1, -2868($fp)
	add $t0, $t0, $t1
	sw $t0, -2884($fp)
	lw $t0, -2884($fp)
	lw $t1, 0($t0)
	sw $t1, -2888($fp)
	li $t0, 46137
	sw $t0, -2892($fp)
	lw $t1, -2888($fp)
	lw $t2, -2892($fp)
	beq $t1, $t2, label201
	j label202
label201:
	lw $t0, -1288($fp)
	sw $t0, -2896($fp)
	lw $t1, -2896($fp)
	li $t2, 0
	bne $t1, $t2, label205
	j label206
label205:
	li $t0, 29891
	sw $t0, -2900($fp)
	addi $t0, $fp, -188
	sw $t0, -2904($fp)
	li $t0, 5
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
	lw $t0, -2900($fp)
	lw $t1, -2920($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2924($fp)
	addi $t0, $fp, -80
	sw $t0, -2928($fp)
	li $t0, 0
	sw $t0, -2932($fp)
	li $t0, 59721
	sw $t0, -2936($fp)
	lw $t0, -940($fp)
	sw $t0, -2940($fp)
	lw $t1, -2936($fp)
	lw $t2, -2940($fp)
	bge $t1, $t2, label211
	j label212
label211:
	li $t0, 1
	sw $t0, -2932($fp)
label212:
	li $t0, 4
	lw $t1, -2932($fp)
	mul $t0, $t0, $t1
	sw $t0, -2944($fp)
	lw $t0, -2944($fp)
	lw $t1, -2928($fp)
	add $t0, $t0, $t1
	sw $t0, -2948($fp)
	lw $t0, -2948($fp)
	lw $t1, 0($t0)
	sw $t1, -2952($fp)
	lw $t0, -2924($fp)
	lw $t1, -2952($fp)
	add $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t1, -2956($fp)
	li $t2, 0
	bne $t1, $t2, label208
	j label209
label208:
	lw $t0, -868($fp)
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -2964($fp)
	lw $t1, -2964($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label214
label213:
label216:
	li $t0, 0
	sw $t0, -2968($fp)
	lw $t0, -256($fp)
	sw $t0, -2972($fp)
	lw $t1, -2972($fp)
	li $t2, 0
	bne $t1, $t2, label221
	j label220
label221:
	lw $t0, -196($fp)
	sw $t0, -2976($fp)
	lw $t1, -2976($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label220
label219:
	li $t0, 1
	sw $t0, -2968($fp)
label220:
	lw $t0, -2968($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -2980($fp)
	lw $t0, -2980($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -2984($fp)
	lw $t1, -2984($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label218
label217:
	li $t0, 38781
	sw $t0, -2988($fp)
	li $t0, 0
	sw $t0, -2992($fp)
	addi $t0, $fp, -48
	sw $t0, -2996($fp)
	li $t0, 1
	sw $t0, -3000($fp)
	li $t0, 4
	lw $t1, -3000($fp)
	mul $t0, $t0, $t1
	sw $t0, -3004($fp)
	lw $t0, -3004($fp)
	lw $t1, -2996($fp)
	add $t0, $t0, $t1
	sw $t0, -3008($fp)
	lw $t0, -3008($fp)
	lw $t1, 0($t0)
	sw $t1, -3012($fp)
	lw $t1, -3012($fp)
	li $t2, 0
	bne $t1, $t2, label222
	j label224
label224:
	lw $t0, -1312($fp)
	sw $t0, -3016($fp)
	lw $t1, -3016($fp)
	li $t2, 0
	bne $t1, $t2, label222
	j label223
label222:
	li $t0, 1
	sw $t0, -2992($fp)
label223:
	li $t0, 0
	sw $t0, -3020($fp)
	li $t0, 0
	sw $t0, -3024($fp)
	li $t0, 48624
	sw $t0, -3028($fp)
	lw $t0, 4($fp)
	sw $t0, -3032($fp)
	lw $t1, -3028($fp)
	lw $t2, -3032($fp)
	bne $t1, $t2, label227
	j label228
label227:
	li $t0, 1
	sw $t0, -3024($fp)
label228:
	li $t0, 10053
	sw $t0, -3036($fp)
	lw $t1, -3024($fp)
	lw $t2, -3036($fp)
	bne $t1, $t2, label225
	j label226
label225:
	li $t0, 1
	sw $t0, -3020($fp)
label226:
	addi $sp, $sp, -4
	lw $t0, -2992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3020($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3040($fp)
	addi $sp, $sp, 12
	lw $t0, -2988($fp)
	lw $t1, -3040($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3044($fp)
	lw $t0, -1324($fp)
	sw $t0, -3048($fp)
	lw $t0, -3044($fp)
	lw $t1, -3048($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3052($fp)
	j label216
label218:
	j label215
label214:
	li $t0, 15893
	sw $t0, -3056($fp)
	lw $t0, -3056($fp)
	sw $t0, -3060($fp)
	lw $t0, -3060($fp)
	sw $t0, -3064($fp)
	lw $t0, -3060($fp)
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3060($fp)
	sw $t0, -3072($fp)
	lw $ra, -4($fp)
	lw $v0, -3072($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -3076($fp)
	addi $t0, $fp, -188
	sw $t0, -3080($fp)
	li $t0, 3
	sw $t0, -3084($fp)
	li $t0, 4
	lw $t1, -3084($fp)
	mul $t0, $t0, $t1
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	lw $t1, -3080($fp)
	add $t0, $t0, $t1
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	lw $t1, 0($t0)
	sw $t1, -3096($fp)
	lw $t1, -3096($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label231
label231:
	lw $t0, -940($fp)
	sw $t0, -3100($fp)
	li $t0, 0
	sw $t0, -3104($fp)
	li $t0, 0
	sw $t0, -3108($fp)
	lw $t0, -12($fp)
	sw $t0, -3112($fp)
	lw $t1, -3112($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label234
label234:
	li $t0, 1
	sw $t0, -3108($fp)
label235:
	lw $t0, -868($fp)
	sw $t0, -3116($fp)
	lw $t1, -3108($fp)
	lw $t2, -3116($fp)
	ble $t1, $t2, label232
	j label233
label232:
	li $t0, 1
	sw $t0, -3104($fp)
label233:
	addi $sp, $sp, -4
	lw $t0, -3100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3104($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3120($fp)
	addi $sp, $sp, 12
	lw $t0, -496($fp)
	sw $t0, -3124($fp)
	lw $t0, -3120($fp)
	lw $t1, -3124($fp)
	sub $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t1, -3128($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label230
label229:
	li $t0, 1
	sw $t0, -3076($fp)
label230:
label215:
	j label210
label209:
label236:
	li $t0, 60956
	sw $t0, -3132($fp)
	lw $t1, -3132($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label238
label237:
label239:
	lw $t0, -508($fp)
	sw $t0, -3136($fp)
	lw $t1, -3136($fp)
	li $t2, 0
	bne $t1, $t2, label240
	j label241
label240:
	li $t0, 41544
	sw $t0, -3140($fp)
	lw $t1, -3140($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label243
label242:
	li $t0, 7462
	sw $t0, -3144($fp)
	lw $ra, -4($fp)
	lw $v0, -3144($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label244
label243:
	addi $t0, $fp, -132
	sw $t0, -3148($fp)
	lw $t0, -940($fp)
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
label244:
	j label239
label241:
	j label236
label238:
label210:
	j label207
label206:
label245:
	li $t0, 0
	sw $t0, -3168($fp)
	lw $t0, 4($fp)
	sw $t0, -3172($fp)
	li $t0, 0
	lw $t1, -3172($fp)
	sub $t0, $t0, $t1
	sw $t0, -3176($fp)
	li $t0, 16959
	sw $t0, -3180($fp)
	li $t0, 0
	lw $t1, -3180($fp)
	sub $t0, $t0, $t1
	sw $t0, -3184($fp)
	lw $t1, -3176($fp)
	lw $t2, -3184($fp)
	bge $t1, $t2, label248
	j label249
label248:
	li $t0, 1
	sw $t0, -3168($fp)
label249:
	lw $t0, -3168($fp)
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -3188($fp)
	lw $t1, -3188($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label247
label246:
	li $t0, 59044
	sw $t0, -3192($fp)
	lw $t0, -3192($fp)
	sw $t0, -3196($fp)
	lw $t0, -3196($fp)
	sw $t0, -3200($fp)
	li $t0, 41789
	sw $t0, -3204($fp)
	lw $t0, -3204($fp)
	sw $t0, -3208($fp)
	lw $t0, -3208($fp)
	sw $t0, -3212($fp)
	lw $t0, -3196($fp)
	sw $t0, -3216($fp)
	lw $t0, -3216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3208($fp)
	sw $t0, -3220($fp)
	lw $t0, -3220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3224($fp)
	lw $t0, -472($fp)
	sw $t0, -3228($fp)
	li $t0, 0
	lw $t1, -3228($fp)
	sub $t0, $t0, $t1
	sw $t0, -3232($fp)
	lw $t1, -3232($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label250
label250:
	li $t0, 1
	sw $t0, -3224($fp)
label251:
	li $t0, 0
	sw $t0, -3236($fp)
	li $t0, 1803
	sw $t0, -3240($fp)
	li $t0, 61968
	sw $t0, -3244($fp)
	lw $t0, -3240($fp)
	lw $t1, -3244($fp)
	add $t0, $t0, $t1
	sw $t0, -3248($fp)
	lw $t0, -520($fp)
	sw $t0, -3252($fp)
	lw $t1, -3248($fp)
	lw $t2, -3252($fp)
	bge $t1, $t2, label252
	j label253
label252:
	li $t0, 1
	sw $t0, -3236($fp)
label253:
	addi $sp, $sp, -4
	lw $t0, -3224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3236($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3256($fp)
	addi $sp, $sp, 12
	li $t0, 64141
	sw $t0, -3260($fp)
	lw $t0, -544($fp)
	sw $t0, -3264($fp)
	lw $t0, -3260($fp)
	lw $t1, -3264($fp)
	add $t0, $t0, $t1
	sw $t0, -3268($fp)
	addi $sp, $sp, -4
	lw $t0, -3256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3268($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3272($fp)
	addi $sp, $sp, 12
	li $t0, 38554
	sw $t0, -3276($fp)
	lw $t0, -3272($fp)
	lw $t1, -3276($fp)
	mul $t0, $t0, $t1
	sw $t0, -3280($fp)
	li $t0, 0
	sw $t0, -3284($fp)
	lw $t0, -3208($fp)
	sw $t0, -3288($fp)
	li $t0, 1203
	sw $t0, -3292($fp)
	lw $t1, -3288($fp)
	lw $t2, -3292($fp)
	bgt $t1, $t2, label256
	j label255
label256:
	lw $t0, -1288($fp)
	sw $t0, -3296($fp)
	lw $t1, -3296($fp)
	li $t2, 0
	bne $t1, $t2, label254
	j label255
label254:
	li $t0, 1
	sw $t0, -3284($fp)
label255:
	addi $sp, $sp, -4
	lw $t0, -3280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3284($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3300($fp)
	addi $sp, $sp, 12
	li $t0, 12275
	sw $t0, -3304($fp)
	lw $t0, -3300($fp)
	lw $t1, -3304($fp)
	add $t0, $t0, $t1
	sw $t0, -3308($fp)
	lw $t0, -3308($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -3312($fp)
	lw $ra, -4($fp)
	lw $v0, -3312($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -520($fp)
	sw $t0, -3316($fp)
	li $t0, 0
	sw $t0, -3320($fp)
	li $t0, 12034
	sw $t0, -3324($fp)
	li $t0, 34479
	sw $t0, -3328($fp)
	lw $t1, -3324($fp)
	lw $t2, -3328($fp)
	bne $t1, $t2, label260
	j label262
label262:
	li $t0, 35393
	sw $t0, -3332($fp)
	lw $t1, -3332($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label261
label260:
	li $t0, 1
	sw $t0, -3320($fp)
label261:
	addi $sp, $sp, -4
	lw $t0, -3316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3320($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3336($fp)
	addi $sp, $sp, 12
	li $t0, 6572
	sw $t0, -3340($fp)
	lw $t0, -3336($fp)
	lw $t1, -3340($fp)
	mul $t0, $t0, $t1
	sw $t0, -3344($fp)
	addi $t0, $fp, -92
	sw $t0, -3348($fp)
	lw $t0, -916($fp)
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
	lw $t0, -3344($fp)
	lw $t1, -3364($fp)
	mul $t0, $t0, $t1
	sw $t0, -3368($fp)
	addi $t0, $fp, -160
	sw $t0, -3372($fp)
	lw $t0, -1312($fp)
	sw $t0, -3376($fp)
	li $t0, 4
	lw $t1, -3376($fp)
	mul $t0, $t0, $t1
	sw $t0, -3380($fp)
	lw $t0, -3380($fp)
	lw $t1, -3372($fp)
	add $t0, $t0, $t1
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	lw $t1, 0($t0)
	sw $t1, -3388($fp)
	lw $t0, -3368($fp)
	lw $t1, -3388($fp)
	mul $t0, $t0, $t1
	sw $t0, -3392($fp)
	li $t0, 0
	sw $t0, -3396($fp)
	li $t0, 64733
	sw $t0, -3400($fp)
	lw $t1, -3400($fp)
	li $t2, 0
	bne $t1, $t2, label264
	j label263
label263:
	li $t0, 1
	sw $t0, -3396($fp)
label264:
	li $t0, 0
	lw $t1, -3396($fp)
	sub $t0, $t0, $t1
	sw $t0, -3404($fp)
	lw $t1, -3392($fp)
	lw $t2, -3404($fp)
	beq $t1, $t2, label257
	j label258
label257:
	addi $t0, $fp, -80
	sw $t0, -3408($fp)
	li $t0, 0
	sw $t0, -3412($fp)
	lw $t0, -868($fp)
	sw $t0, -3416($fp)
	lw $t0, -940($fp)
	sw $t0, -3420($fp)
	lw $t0, -3416($fp)
	lw $t1, -3420($fp)
	sub $t0, $t0, $t1
	sw $t0, -3424($fp)
	lw $t1, -3424($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label267
label267:
	lw $t0, -3196($fp)
	sw $t0, -3428($fp)
	lw $t1, -3428($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label266
label265:
	li $t0, 1
	sw $t0, -3412($fp)
label266:
	li $t0, 4
	lw $t1, -3412($fp)
	mul $t0, $t0, $t1
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	lw $t1, -3408($fp)
	add $t0, $t0, $t1
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	lw $t1, 0($t0)
	sw $t1, -3440($fp)
	li $t0, 18553
	sw $t0, -3444($fp)
	lw $t0, -3440($fp)
	lw $t1, -3444($fp)
	mul $t0, $t0, $t1
	sw $t0, -3448($fp)
	j label259
label258:
	li $t0, 0
	sw $t0, -3452($fp)
	li $t0, 0
	sw $t0, -3456($fp)
	li $t0, 15832
	sw $t0, -3460($fp)
	lw $t1, -3460($fp)
	li $t2, 0
	bne $t1, $t2, label271
	j label270
label270:
	li $t0, 1
	sw $t0, -3456($fp)
label271:
	li $t0, 37222
	sw $t0, -3464($fp)
	lw $t1, -3456($fp)
	lw $t2, -3464($fp)
	beq $t1, $t2, label268
	j label269
label268:
	li $t0, 1
	sw $t0, -3452($fp)
label269:
	li $t0, 0
	sw $t0, -3468($fp)
	li $t0, 52709
	sw $t0, -3472($fp)
	lw $t1, -3472($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label274
label275:
	lw $t0, -484($fp)
	sw $t0, -3476($fp)
	lw $t1, -3476($fp)
	li $t2, 0
	bne $t1, $t2, label272
	j label274
label274:
	li $t0, 29088
	sw $t0, -3480($fp)
	lw $t1, -3480($fp)
	li $t2, 0
	bne $t1, $t2, label272
	j label273
label272:
	li $t0, 1
	sw $t0, -3468($fp)
label273:
	addi $sp, $sp, -4
	lw $t0, -3452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3468($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3484($fp)
	addi $sp, $sp, 12
label259:
	li $t0, 54613
	sw $t0, -3488($fp)
	li $t0, 0
	lw $t1, -3488($fp)
	sub $t0, $t0, $t1
	sw $t0, -3492($fp)
	li $t0, 0
	sw $t0, -3496($fp)
	lw $t0, -36($fp)
	sw $t0, -3500($fp)
	li $t0, 23274
	sw $t0, -3504($fp)
	lw $t0, -3500($fp)
	lw $t1, -3504($fp)
	sub $t0, $t0, $t1
	sw $t0, -3508($fp)
	lw $t0, 4($fp)
	sw $t0, -3512($fp)
	lw $t1, -3508($fp)
	lw $t2, -3512($fp)
	blt $t1, $t2, label276
	j label277
label276:
	li $t0, 1
	sw $t0, -3496($fp)
label277:
	addi $sp, $sp, -4
	lw $t0, -3492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3496($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3516($fp)
	addi $sp, $sp, 12
	lw $t0, -520($fp)
	sw $t0, -3520($fp)
	lw $t0, -3516($fp)
	lw $t1, -3520($fp)
	mul $t0, $t0, $t1
	sw $t0, -3524($fp)
	li $t0, 0
	sw $t0, -3528($fp)
	addi $t0, $fp, -48
	sw $t0, -3532($fp)
	li $t0, 1
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
	lw $t1, -3548($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label278
label278:
	li $t0, 1
	sw $t0, -3528($fp)
label279:
	lw $t0, -3524($fp)
	lw $t1, -3528($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3552($fp)
	j label245
label247:
label207:
	j label200
label202:
	j label194
label196:
	lw $t0, -12($fp)
	sw $t0, -3556($fp)
	lw $t0, -3556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -3560($fp)
	lw $t0, -3560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -36($fp)
	sw $t0, -3564($fp)
	lw $t0, -3564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3568($fp)
	lw $t0, -36($fp)
	sw $t0, -3572($fp)
	li $t0, 32638
	sw $t0, -3576($fp)
	lw $t1, -3572($fp)
	lw $t2, -3576($fp)
	bne $t1, $t2, label280
	j label283
label283:
	li $t0, 42562
	sw $t0, -3580($fp)
	lw $t1, -3580($fp)
	li $t2, 0
	bne $t1, $t2, label280
	j label282
label282:
	li $t0, 49220
	sw $t0, -3584($fp)
	lw $t0, -12($fp)
	sw $t0, -3588($fp)
	lw $t1, -3584($fp)
	lw $t2, -3588($fp)
	bge $t1, $t2, label280
	j label281
label280:
	li $t0, 1
	sw $t0, -3568($fp)
label281:
	lw $t0, -3568($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -3592($fp)
	lw $ra, -4($fp)
	lw $v0, -3592($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -5632
	li $t0, 46023
	sw $t0, -144($fp)
	addi $t0, $fp, -28
	sw $t0, -148($fp)
	li $t0, 0
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
	li $t0, 9732
	sw $t0, -168($fp)
	addi $t0, $fp, -28
	sw $t0, -172($fp)
	li $t0, 1
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
	li $t0, 44640
	sw $t0, -192($fp)
	addi $t0, $fp, -28
	sw $t0, -196($fp)
	li $t0, 2
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
	li $t0, 22031
	sw $t0, -216($fp)
	addi $t0, $fp, -28
	sw $t0, -220($fp)
	li $t0, 3
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
	li $t0, 17195
	sw $t0, -240($fp)
	addi $t0, $fp, -28
	sw $t0, -244($fp)
	li $t0, 4
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
	li $t0, 61600
	sw $t0, -264($fp)
	addi $t0, $fp, -28
	sw $t0, -268($fp)
	li $t0, 5
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
	li $t0, 15540
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	li $t0, 58984
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
	li $t0, 62803
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
	li $t0, 14145
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
	li $t0, 60787
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
	li $t0, 59235
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
	li $t0, 52699
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
	li $t0, 7527
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
	li $t0, 5733
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
	li $t0, 21642
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
	li $t0, 42920
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	li $t0, 12305
	sw $t0, -528($fp)
	addi $t0, $fp, -88
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
	li $t0, 20839
	sw $t0, -552($fp)
	addi $t0, $fp, -88
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
	li $t0, 61473
	sw $t0, -576($fp)
	addi $t0, $fp, -88
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
	li $t0, 65014
	sw $t0, -600($fp)
	addi $t0, $fp, -88
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
	li $t0, 49928
	sw $t0, -624($fp)
	addi $t0, $fp, -88
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
	li $t0, 11769
	sw $t0, -648($fp)
	addi $t0, $fp, -88
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
	li $t0, 36701
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	li $t0, 7666
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	li $t0, 847
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	li $t0, 57012
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	li $t0, 40993
	sw $t0, -720($fp)
	addi $t0, $fp, -104
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
	li $t0, 33485
	sw $t0, -744($fp)
	addi $t0, $fp, -104
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
	li $t0, 34038
	sw $t0, -768($fp)
	addi $t0, $fp, -104
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
	li $t0, 24677
	sw $t0, -792($fp)
	addi $t0, $fp, -104
	sw $t0, -796($fp)
	li $t0, 3
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
	li $t0, 13972
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	li $t0, 43770
	sw $t0, -828($fp)
	addi $t0, $fp, -140
	sw $t0, -832($fp)
	li $t0, 0
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
	li $t0, 3781
	sw $t0, -852($fp)
	addi $t0, $fp, -140
	sw $t0, -856($fp)
	li $t0, 1
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
	li $t0, 36004
	sw $t0, -876($fp)
	addi $t0, $fp, -140
	sw $t0, -880($fp)
	li $t0, 2
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
	li $t0, 60965
	sw $t0, -900($fp)
	addi $t0, $fp, -140
	sw $t0, -904($fp)
	li $t0, 3
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
	li $t0, 65381
	sw $t0, -924($fp)
	addi $t0, $fp, -140
	sw $t0, -928($fp)
	li $t0, 4
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -936($fp)
	lw $t0, -928($fp)
	lw $t1, -936($fp)
	add $t0, $t0, $t1
	sw $t0, -940($fp)
	lw $t0, -924($fp)
	lw $t1, -940($fp)
	sw $t0, 0($t1)
	lw $t0, -940($fp)
	lw $t1, 0($t0)
	sw $t1, -944($fp)
	li $t0, 51544
	sw $t0, -948($fp)
	addi $t0, $fp, -140
	sw $t0, -952($fp)
	li $t0, 5
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
	li $t0, 54414
	sw $t0, -972($fp)
	addi $t0, $fp, -140
	sw $t0, -976($fp)
	li $t0, 6
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
	li $t0, 62648
	sw $t0, -996($fp)
	addi $t0, $fp, -140
	sw $t0, -1000($fp)
	li $t0, 7
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
	li $t0, 153
	sw $t0, -1020($fp)
	addi $t0, $fp, -140
	sw $t0, -1024($fp)
	li $t0, 8
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
	li $t0, 49665
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, -1048($fp)
	lw $t0, -1048($fp)
	sw $t0, -1052($fp)
	li $t0, 56348
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -1064($fp)
	li $t0, 52852
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -1076($fp)
	li $t0, 57192
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -1088($fp)
	li $t0, 62081
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	sw $t0, -1100($fp)
	li $t0, 8958
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	sw $t0, -1112($fp)
	li $t0, 34576
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	sw $t0, -1124($fp)
	li $t0, 8851
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	sw $t0, -1136($fp)
	li $t0, 29797
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	sw $t0, -1148($fp)
	li $t0, 30513
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	sw $t0, -1160($fp)
	li $t0, 8329
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	sw $t0, -1172($fp)
	li $t0, 14189
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	sw $t0, -1184($fp)
	li $t0, 42283
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	li $t0, 45030
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -1208($fp)
	li $t0, 21855
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	sw $t0, -1220($fp)
	li $t0, 43130
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	sw $t0, -1232($fp)
	li $t0, 36506
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	sw $t0, -1244($fp)
	li $t0, 62848
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -1256($fp)
	li $t0, 11079
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	sw $t0, -1268($fp)
	li $t0, 5008
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	li $t0, 21989
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	li $t0, 25051
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	li $t0, 48779
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -1316($fp)
label284:
	lw $t0, -1192($fp)
	sw $t0, -1320($fp)
	li $t0, 0
	lw $t1, -1320($fp)
	sub $t0, $t0, $t1
	sw $t0, -1324($fp)
	li $t0, 0
	lw $t1, -1324($fp)
	sub $t0, $t0, $t1
	sw $t0, -1328($fp)
	lw $t1, -1328($fp)
	li $t2, 0
	bne $t1, $t2, label285
	j label286
label285:
	li $t0, 0
	sw $t0, -1332($fp)
	addi $t0, $fp, -140
	sw $t0, -1336($fp)
	lw $t0, -1264($fp)
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
	li $t0, 0
	lw $t1, -1356($fp)
	sub $t0, $t0, $t1
	sw $t0, -1360($fp)
	lw $t1, -1360($fp)
	li $t2, 0
	bne $t1, $t2, label287
	j label289
label289:
	li $t0, 25771
	sw $t0, -1364($fp)
	lw $t0, -1228($fp)
	sw $t0, -1368($fp)
	lw $t0, -1364($fp)
	lw $t1, -1368($fp)
	mul $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $t0, -1060($fp)
	sw $t0, -1376($fp)
	li $t0, 0
	lw $t1, -1376($fp)
	sub $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $t0, -1372($fp)
	lw $t1, -1380($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1384($fp)
	li $t0, 0
	lw $t1, -1384($fp)
	sub $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $t1, -1388($fp)
	li $t2, 0
	bne $t1, $t2, label287
	j label288
label287:
	li $t0, 1
	sw $t0, -1332($fp)
label288:
	j label284
label286:
	addi $t0, $fp, -28
	sw $t0, -1392($fp)
	li $t0, 0
	sw $t0, -1396($fp)
	li $t0, 0
	sw $t0, -1400($fp)
	li $t0, 61055
	sw $t0, -1404($fp)
	li $t0, 44208
	sw $t0, -1408($fp)
	lw $t1, -1404($fp)
	lw $t2, -1408($fp)
	bgt $t1, $t2, label296
	j label297
label296:
	li $t0, 1
	sw $t0, -1400($fp)
label297:
	lw $t0, -1132($fp)
	sw $t0, -1412($fp)
	lw $t1, -1400($fp)
	lw $t2, -1412($fp)
	beq $t1, $t2, label295
	j label294
label295:
	li $t0, 25616
	sw $t0, -1416($fp)
	li $t0, 47063
	sw $t0, -1420($fp)
	lw $t1, -1416($fp)
	lw $t2, -1420($fp)
	blt $t1, $t2, label293
	j label294
label293:
	li $t0, 1
	sw $t0, -1396($fp)
label294:
	li $t0, 4
	lw $t1, -1396($fp)
	mul $t0, $t0, $t1
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	lw $t1, -1392($fp)
	add $t0, $t0, $t1
	sw $t0, -1428($fp)
	lw $t0, -1428($fp)
	lw $t1, 0($t0)
	sw $t1, -1432($fp)
	lw $t1, -1432($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label291
label290:
	lw $t0, -1204($fp)
	sw $t0, -1436($fp)
	lw $t0, -1108($fp)
	sw $t0, -1440($fp)
	li $t0, 33086
	sw $t0, -1444($fp)
	lw $t0, -1440($fp)
	lw $t1, -1444($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1448($fp)
	addi $sp, $sp, -4
	lw $t0, -1436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1448($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1452($fp)
	addi $sp, $sp, 12
	lw $t0, -1180($fp)
	sw $t0, -1456($fp)
	lw $t1, -1452($fp)
	lw $t2, -1456($fp)
	beq $t1, $t2, label298
	j label299
label298:
	li $t0, 22729
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -1512($fp)
	li $t0, 47216
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -1524($fp)
	li $t0, 17216
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	sw $t0, -1536($fp)
	li $t0, 13541
	sw $t0, -1540($fp)
	addi $t0, $fp, -1496
	sw $t0, -1544($fp)
	li $t0, 0
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
	li $t0, 34532
	sw $t0, -1564($fp)
	addi $t0, $fp, -1496
	sw $t0, -1568($fp)
	li $t0, 1
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t0, -1568($fp)
	lw $t1, -1576($fp)
	add $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $t0, -1564($fp)
	lw $t1, -1580($fp)
	sw $t0, 0($t1)
	lw $t0, -1580($fp)
	lw $t1, 0($t0)
	sw $t1, -1584($fp)
	li $t0, 8872
	sw $t0, -1588($fp)
	addi $t0, $fp, -1496
	sw $t0, -1592($fp)
	li $t0, 2
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1600($fp)
	lw $t0, -1592($fp)
	lw $t1, -1600($fp)
	add $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, -1588($fp)
	lw $t1, -1604($fp)
	sw $t0, 0($t1)
	lw $t0, -1604($fp)
	lw $t1, 0($t0)
	sw $t1, -1608($fp)
	li $t0, 10086
	sw $t0, -1612($fp)
	addi $t0, $fp, -1496
	sw $t0, -1616($fp)
	li $t0, 3
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t0, -1616($fp)
	lw $t1, -1624($fp)
	add $t0, $t0, $t1
	sw $t0, -1628($fp)
	lw $t0, -1612($fp)
	lw $t1, -1628($fp)
	sw $t0, 0($t1)
	lw $t0, -1628($fp)
	lw $t1, 0($t0)
	sw $t1, -1632($fp)
	li $t0, 43490
	sw $t0, -1636($fp)
	addi $t0, $fp, -1496
	sw $t0, -1640($fp)
	li $t0, 4
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1648($fp)
	lw $t0, -1640($fp)
	lw $t1, -1648($fp)
	add $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $t0, -1636($fp)
	lw $t1, -1652($fp)
	sw $t0, 0($t1)
	lw $t0, -1652($fp)
	lw $t1, 0($t0)
	sw $t1, -1656($fp)
	li $t0, 43449
	sw $t0, -1660($fp)
	addi $t0, $fp, -1496
	sw $t0, -1664($fp)
	li $t0, 5
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1672($fp)
	lw $t0, -1664($fp)
	lw $t1, -1672($fp)
	add $t0, $t0, $t1
	sw $t0, -1676($fp)
	lw $t0, -1660($fp)
	lw $t1, -1676($fp)
	sw $t0, 0($t1)
	lw $t0, -1676($fp)
	lw $t1, 0($t0)
	sw $t1, -1680($fp)
	li $t0, 18937
	sw $t0, -1684($fp)
	addi $t0, $fp, -1496
	sw $t0, -1688($fp)
	li $t0, 6
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1696($fp)
	lw $t0, -1688($fp)
	lw $t1, -1696($fp)
	add $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t0, -1684($fp)
	lw $t1, -1700($fp)
	sw $t0, 0($t1)
	lw $t0, -1700($fp)
	lw $t1, 0($t0)
	sw $t1, -1704($fp)
	li $t0, 7752
	sw $t0, -1708($fp)
	addi $t0, $fp, -1496
	sw $t0, -1712($fp)
	li $t0, 7
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1720($fp)
	lw $t0, -1712($fp)
	lw $t1, -1720($fp)
	add $t0, $t0, $t1
	sw $t0, -1724($fp)
	lw $t0, -1708($fp)
	lw $t1, -1724($fp)
	sw $t0, 0($t1)
	lw $t0, -1724($fp)
	lw $t1, 0($t0)
	sw $t1, -1728($fp)
	li $t0, 8426
	sw $t0, -1732($fp)
	addi $t0, $fp, -1496
	sw $t0, -1736($fp)
	li $t0, 8
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1744($fp)
	lw $t0, -1736($fp)
	lw $t1, -1744($fp)
	add $t0, $t0, $t1
	sw $t0, -1748($fp)
	lw $t0, -1732($fp)
	lw $t1, -1748($fp)
	sw $t0, 0($t1)
	lw $t0, -1748($fp)
	lw $t1, 0($t0)
	sw $t1, -1752($fp)
	li $t0, 27267
	sw $t0, -1756($fp)
	addi $t0, $fp, -1496
	sw $t0, -1760($fp)
	li $t0, 9
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1768($fp)
	lw $t0, -1760($fp)
	lw $t1, -1768($fp)
	add $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t0, -1756($fp)
	lw $t1, -1772($fp)
	sw $t0, 0($t1)
	lw $t0, -1772($fp)
	lw $t1, 0($t0)
	sw $t1, -1776($fp)
	li $t0, 21941
	sw $t0, -1780($fp)
	lw $t0, -1780($fp)
	sw $t0, -1784($fp)
	lw $t0, -1784($fp)
	sw $t0, -1788($fp)
	li $t0, 50709
	sw $t0, -1792($fp)
	addi $t0, $fp, -1500
	sw $t0, -1796($fp)
	li $t0, 0
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
	li $t0, 6761
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -1824($fp)
	li $t0, 43797
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	sw $t0, -1832($fp)
	lw $t0, -1832($fp)
	sw $t0, -1836($fp)
	li $t0, 28303
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	sw $t0, -1848($fp)
	li $t0, 43268
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	sw $t0, -1860($fp)
	li $t0, 41109
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	sw $t0, -1872($fp)
	lw $t0, -1084($fp)
	sw $t0, -1876($fp)
	li $t0, 0
	sw $t0, -1880($fp)
	lw $t0, -1180($fp)
	sw $t0, -1884($fp)
	lw $t1, -1884($fp)
	li $t2, 0
	bne $t1, $t2, label302
	j label301
label301:
	li $t0, 1
	sw $t0, -1880($fp)
label302:
	lw $t0, -1876($fp)
	lw $t1, -1880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1888($fp)
	li $t0, 0
	sw $t0, -1892($fp)
	lw $t0, -1120($fp)
	sw $t0, -1896($fp)
	lw $t0, -688($fp)
	sw $t0, -1900($fp)
	li $t0, 0
	sw $t0, -1904($fp)
	li $t0, 39382
	sw $t0, -1908($fp)
	lw $t1, -1908($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label306
label306:
	li $t0, 1
	sw $t0, -1904($fp)
label307:
	lw $t0, -1868($fp)
	sw $t0, -1912($fp)
	lw $t0, -1904($fp)
	lw $t1, -1912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1916($fp)
	addi $sp, $sp, -4
	lw $t0, -1916($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1920($fp)
	addi $sp, $sp, 8
	lw $t0, -1900($fp)
	lw $t1, -1920($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1924($fp)
	li $t0, 0
	lw $t1, -1924($fp)
	sub $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t0, -1896($fp)
	lw $t1, -1928($fp)
	mul $t0, $t0, $t1
	sw $t0, -1932($fp)
	lw $t1, -1932($fp)
	li $t2, 0
	bne $t1, $t2, label305
	j label304
label305:
	li $t0, 48276
	sw $t0, -1936($fp)
	li $t0, 0
	lw $t1, -1936($fp)
	sub $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t1, -1940($fp)
	li $t2, 0
	bne $t1, $t2, label303
	j label304
label303:
	li $t0, 1
	sw $t0, -1892($fp)
label304:
	li $t0, 0
	sw $t0, -1944($fp)
	addi $t0, $fp, -64
	sw $t0, -1948($fp)
	li $t0, 0
	sw $t0, -1952($fp)
	li $t0, 0
	sw $t0, -1956($fp)
	li $t0, 64434
	sw $t0, -1960($fp)
	li $t0, 31519
	sw $t0, -1964($fp)
	lw $t1, -1960($fp)
	lw $t2, -1964($fp)
	bgt $t1, $t2, label312
	j label313
label312:
	li $t0, 1
	sw $t0, -1956($fp)
label313:
	lw $t0, -1192($fp)
	sw $t0, -1968($fp)
	lw $t1, -1956($fp)
	lw $t2, -1968($fp)
	bge $t1, $t2, label310
	j label311
label310:
	li $t0, 1
	sw $t0, -1952($fp)
label311:
	addi $sp, $sp, -4
	lw $t0, -1952($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1972($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -1972($fp)
	sub $t0, $t0, $t1
	sw $t0, -1976($fp)
	li $t0, 0
	sw $t0, -1980($fp)
	li $t0, 63099
	sw $t0, -1984($fp)
	lw $t0, -1084($fp)
	sw $t0, -1988($fp)
	lw $t1, -1984($fp)
	lw $t2, -1988($fp)
	bne $t1, $t2, label314
	j label316
label316:
	lw $t0, -1832($fp)
	sw $t0, -1992($fp)
	lw $t1, -1992($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label315
label314:
	li $t0, 1
	sw $t0, -1980($fp)
label315:
	addi $sp, $sp, -4
	lw $t0, -1976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1980($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1996($fp)
	addi $sp, $sp, 12
	li $t0, 23334
	sw $t0, -2000($fp)
	lw $t0, -1996($fp)
	lw $t1, -2000($fp)
	mul $t0, $t0, $t1
	sw $t0, -2004($fp)
	li $t0, 4
	lw $t1, -2004($fp)
	mul $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $t0, -2008($fp)
	lw $t1, -1948($fp)
	add $t0, $t0, $t1
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	lw $t1, 0($t0)
	sw $t1, -2016($fp)
	lw $t0, -1048($fp)
	sw $t0, -2020($fp)
	lw $t0, -688($fp)
	sw $t0, -2024($fp)
	lw $t0, -2020($fp)
	lw $t1, -2024($fp)
	sub $t0, $t0, $t1
	sw $t0, -2028($fp)
	lw $t1, -2016($fp)
	lw $t2, -2028($fp)
	blt $t1, $t2, label308
	j label309
label308:
	li $t0, 1
	sw $t0, -1944($fp)
label309:
	li $t0, 0
	sw $t0, -2032($fp)
	li $t0, 0
	sw $t0, -2036($fp)
	li $t0, 0
	sw $t0, -2040($fp)
	lw $t0, -1264($fp)
	sw $t0, -2044($fp)
	li $t0, 59953
	sw $t0, -2048($fp)
	lw $t0, -2044($fp)
	lw $t1, -2048($fp)
	mul $t0, $t0, $t1
	sw $t0, -2052($fp)
	lw $t0, -688($fp)
	sw $t0, -2056($fp)
	lw $t0, -2052($fp)
	lw $t1, -2056($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2060($fp)
	addi $sp, $sp, -4
	lw $t0, -2060($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2064($fp)
	addi $sp, $sp, 8
	lw $t1, -2064($fp)
	li $t2, 0
	bne $t1, $t2, label323
	j label322
label322:
	li $t0, 1
	sw $t0, -2040($fp)
label323:
	li $t0, 10192
	sw $t0, -2068($fp)
	lw $t0, -1508($fp)
	sw $t0, -2072($fp)
	lw $t0, -2068($fp)
	lw $t1, -2072($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2076($fp)
	lw $t1, -2040($fp)
	lw $t2, -2076($fp)
	blt $t1, $t2, label320
	j label321
label320:
	li $t0, 1
	sw $t0, -2036($fp)
label321:
	lw $t0, -1288($fp)
	sw $t0, -2080($fp)
	lw $t0, -1844($fp)
	sw $t0, -2084($fp)
	lw $t0, -2080($fp)
	lw $t1, -2084($fp)
	sub $t0, $t0, $t1
	sw $t0, -2088($fp)
	lw $t0, -1856($fp)
	sw $t0, -2092($fp)
	lw $t0, -2088($fp)
	lw $t1, -2092($fp)
	add $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t1, -2036($fp)
	lw $t2, -2096($fp)
	bgt $t1, $t2, label317
	j label319
label319:
	lw $t0, -676($fp)
	sw $t0, -2100($fp)
	lw $t0, -1048($fp)
	sw $t0, -2104($fp)
	lw $t0, -2100($fp)
	lw $t1, -2104($fp)
	mul $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t0, -1096($fp)
	sw $t0, -2112($fp)
	lw $t0, -2108($fp)
	lw $t1, -2112($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2116($fp)
	lw $t1, -2116($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label318
label324:
	lw $t0, -1192($fp)
	sw $t0, -2120($fp)
	li $t0, 0
	lw $t1, -2120($fp)
	sub $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t0, -1240($fp)
	sw $t0, -2128($fp)
	lw $t0, -2124($fp)
	lw $t1, -2128($fp)
	sub $t0, $t0, $t1
	sw $t0, -2132($fp)
	li $t0, 0
	sw $t0, -2136($fp)
	lw $t0, -1060($fp)
	sw $t0, -2140($fp)
	li $t0, 48950
	sw $t0, -2144($fp)
	lw $t0, -2140($fp)
	lw $t1, -2144($fp)
	add $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t0, -1240($fp)
	sw $t0, -2152($fp)
	lw $t1, -2148($fp)
	lw $t2, -2152($fp)
	beq $t1, $t2, label325
	j label326
label325:
	li $t0, 1
	sw $t0, -2136($fp)
label326:
	addi $sp, $sp, -4
	lw $t0, -2132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2136($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2156($fp)
	addi $sp, $sp, 12
	lw $t1, -2156($fp)
	li $t2, 0
	bne $t1, $t2, label317
	j label318
label317:
	li $t0, 1
	sw $t0, -2032($fp)
label318:
	lw $t0, -1120($fp)
	sw $t0, -2160($fp)
	li $t0, 41481
	sw $t0, -2164($fp)
	lw $t0, -2160($fp)
	lw $t1, -2164($fp)
	mul $t0, $t0, $t1
	sw $t0, -2168($fp)
	li $t0, 0
	lw $t1, -2168($fp)
	sub $t0, $t0, $t1
	sw $t0, -2172($fp)
	li $t0, 0
	lw $t1, -2172($fp)
	sub $t0, $t0, $t1
	sw $t0, -2176($fp)
	li $t0, 43278
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	sw $t0, -2188($fp)
	li $t0, 6143
	sw $t0, -2192($fp)
	li $t0, 0
	sw $t0, -2196($fp)
	lw $t0, -1508($fp)
	sw $t0, -2200($fp)
	lw $t1, -2200($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label327
label327:
	li $t0, 1
	sw $t0, -2196($fp)
label328:
	li $t0, 0
	sw $t0, -2204($fp)
	lw $t0, -676($fp)
	sw $t0, -2208($fp)
	lw $t1, -2208($fp)
	li $t2, 0
	bne $t1, $t2, label332
	j label331
label332:
	lw $t0, -1108($fp)
	sw $t0, -2212($fp)
	lw $t1, -2212($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label331
label331:
	lw $t0, -1132($fp)
	sw $t0, -2216($fp)
	lw $t1, -2216($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label330
label329:
	li $t0, 1
	sw $t0, -2204($fp)
label330:
	addi $sp, $sp, -4
	lw $t0, -2196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2204($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2220($fp)
	addi $sp, $sp, 12
	lw $t0, -2192($fp)
	lw $t1, -2220($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2224($fp)
	lw $t0, -2184($fp)
	sw $t0, -2228($fp)
	lw $t0, -2228($fp)
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	sw $t0, -2232($fp)
	addi $sp, $sp, -4
	lw $t0, -2232($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2236($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -2236($fp)
	sub $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $t0, -2224($fp)
	lw $t1, -2240($fp)
	mul $t0, $t0, $t1
	sw $t0, -2244($fp)
	li $t0, 0
	sw $t0, -2248($fp)
	li $t0, 23161
	sw $t0, -2252($fp)
	lw $t1, -2252($fp)
	li $t2, 0
	bne $t1, $t2, label334
	j label333
label333:
	li $t0, 1
	sw $t0, -2248($fp)
label334:
	lw $t0, -2244($fp)
	lw $t1, -2248($fp)
	add $t0, $t0, $t1
	sw $t0, -2256($fp)
label335:
	li $t0, 0
	sw $t0, -2260($fp)
	li $t0, 0
	sw $t0, -2264($fp)
	li $t0, 60494
	sw $t0, -2268($fp)
	li $t0, 19684
	sw $t0, -2272($fp)
	lw $t0, -2268($fp)
	lw $t1, -2272($fp)
	sub $t0, $t0, $t1
	sw $t0, -2276($fp)
	li $t0, 57694
	sw $t0, -2280($fp)
	lw $t1, -2276($fp)
	lw $t2, -2280($fp)
	bge $t1, $t2, label341
	j label342
label341:
	li $t0, 1
	sw $t0, -2264($fp)
label342:
	addi $t0, $fp, -1496
	sw $t0, -2284($fp)
	lw $t0, -1288($fp)
	sw $t0, -2288($fp)
	li $t0, 4
	lw $t1, -2288($fp)
	mul $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	lw $t1, -2284($fp)
	add $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -2296($fp)
	lw $t1, 0($t0)
	sw $t1, -2300($fp)
	lw $t1, -2264($fp)
	lw $t2, -2300($fp)
	bge $t1, $t2, label339
	j label340
label339:
	li $t0, 1
	sw $t0, -2260($fp)
label340:
	lw $t0, -1784($fp)
	sw $t0, -2304($fp)
	li $t0, 3831
	sw $t0, -2308($fp)
	lw $t0, -2304($fp)
	lw $t1, -2308($fp)
	add $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -1084($fp)
	sw $t0, -2316($fp)
	lw $t0, -2312($fp)
	lw $t1, -2316($fp)
	add $t0, $t0, $t1
	sw $t0, -2320($fp)
	lw $t1, -2260($fp)
	lw $t2, -2320($fp)
	bne $t1, $t2, label338
	j label337
label338:
	li $t0, 0
	sw $t0, -2324($fp)
	lw $t0, -1276($fp)
	sw $t0, -2328($fp)
	lw $t1, -2328($fp)
	li $t2, 0
	bne $t1, $t2, label344
	j label343
label343:
	li $t0, 1
	sw $t0, -2324($fp)
label344:
	addi $sp, $sp, -4
	lw $t0, -2324($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2332($fp)
	addi $sp, $sp, 8
	li $t0, 29771
	sw $t0, -2336($fp)
	li $t0, 0
	lw $t1, -2336($fp)
	sub $t0, $t0, $t1
	sw $t0, -2340($fp)
	lw $t1, -2332($fp)
	lw $t2, -2340($fp)
	bne $t1, $t2, label336
	j label337
label336:
label345:
	li $t0, 0
	sw $t0, -2344($fp)
	addi $t0, $fp, -64
	sw $t0, -2348($fp)
	li $t0, 5
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
	addi $t0, $fp, -1500
	sw $t0, -2368($fp)
	li $t0, 0
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
	addi $sp, $sp, -4
	lw $t0, -2384($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2388($fp)
	addi $sp, $sp, 8
	lw $t1, -2364($fp)
	lw $t2, -2388($fp)
	beq $t1, $t2, label349
	j label350
label349:
	li $t0, 1
	sw $t0, -2344($fp)
label350:
	addi $t0, $fp, -1496
	sw $t0, -2392($fp)
	lw $t0, -1168($fp)
	sw $t0, -2396($fp)
	li $t0, 4
	lw $t1, -2396($fp)
	mul $t0, $t0, $t1
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	lw $t1, -2392($fp)
	add $t0, $t0, $t1
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	lw $t1, 0($t0)
	sw $t1, -2408($fp)
	li $t0, 0
	lw $t1, -2408($fp)
	sub $t0, $t0, $t1
	sw $t0, -2412($fp)
	lw $t1, -2344($fp)
	lw $t2, -2412($fp)
	bne $t1, $t2, label348
	j label347
label348:
	li $t0, 0
	sw $t0, -2416($fp)
	li $t0, 55706
	sw $t0, -2420($fp)
	lw $t0, -712($fp)
	sw $t0, -2424($fp)
	lw $t0, -2420($fp)
	lw $t1, -2424($fp)
	sub $t0, $t0, $t1
	sw $t0, -2428($fp)
	lw $t0, -1144($fp)
	sw $t0, -2432($fp)
	lw $t1, -2428($fp)
	lw $t2, -2432($fp)
	beq $t1, $t2, label351
	j label352
label351:
	li $t0, 1
	sw $t0, -2416($fp)
label352:
	lw $t0, -688($fp)
	sw $t0, -2436($fp)
	lw $t0, -1192($fp)
	sw $t0, -2440($fp)
	lw $t0, -2436($fp)
	lw $t1, -2440($fp)
	add $t0, $t0, $t1
	sw $t0, -2444($fp)
	lw $t1, -2416($fp)
	lw $t2, -2444($fp)
	bne $t1, $t2, label346
	j label347
label346:
	li $t0, 0
	sw $t0, -2448($fp)
	li $t0, 10439
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	sw $t0, -2456($fp)
	addi $sp, $sp, -4
	lw $t0, -2456($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2460($fp)
	addi $sp, $sp, 8
	lw $t1, -2460($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label353
label353:
	li $t0, 1
	sw $t0, -2448($fp)
label354:
	li $t0, 0
	sw $t0, -2464($fp)
	lw $t0, -1144($fp)
	sw $t0, -2468($fp)
	lw $t1, -2468($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label355
label355:
	li $t0, 1
	sw $t0, -2464($fp)
label356:
	li $t0, 0
	lw $t1, -2464($fp)
	sub $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t0, -2448($fp)
	lw $t1, -2472($fp)
	mul $t0, $t0, $t1
	sw $t0, -2476($fp)
	lw $ra, -4($fp)
	lw $v0, -2476($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label345
label347:
	j label335
label337:
	addi $t0, $fp, -64
	sw $t0, -2480($fp)
	lw $t0, -688($fp)
	sw $t0, -2484($fp)
	li $t0, 4
	lw $t1, -2484($fp)
	mul $t0, $t0, $t1
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	lw $t1, -2480($fp)
	add $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $t0, -2492($fp)
	lw $t1, 0($t0)
	sw $t1, -2496($fp)
	li $t0, 0
	sw $t0, -2500($fp)
	lw $t0, -676($fp)
	sw $t0, -2504($fp)
	li $t0, 0
	lw $t1, -2504($fp)
	sub $t0, $t0, $t1
	sw $t0, -2508($fp)
	lw $t1, -2508($fp)
	li $t2, 0
	bne $t1, $t2, label362
	j label361
label362:
	lw $t0, -1084($fp)
	sw $t0, -2512($fp)
	lw $t1, -2512($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -2500($fp)
label361:
	addi $sp, $sp, -4
	lw $t0, -2496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2500($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2516($fp)
	addi $sp, $sp, 12
	lw $t1, -2516($fp)
	li $t2, 0
	bne $t1, $t2, label357
	j label358
label357:
	li $t0, 0
	sw $t0, -2520($fp)
	li $t0, 0
	sw $t0, -2524($fp)
	li $t0, 65342
	sw $t0, -2528($fp)
	lw $t1, -2528($fp)
	li $t2, 0
	bne $t1, $t2, label366
	j label365
label365:
	li $t0, 1
	sw $t0, -2524($fp)
label366:
	li $t0, 40880
	sw $t0, -2532($fp)
	lw $t1, -2524($fp)
	lw $t2, -2532($fp)
	beq $t1, $t2, label363
	j label364
label363:
	li $t0, 1
	sw $t0, -2520($fp)
label364:
	addi $sp, $sp, -4
	lw $t0, -2520($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2536($fp)
	addi $sp, $sp, 8
	lw $ra, -4($fp)
	lw $v0, -2536($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label359
label358:
	lw $t0, -1520($fp)
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -2544($fp)
	lw $t1, -2544($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label368
label367:
	lw $t0, -1252($fp)
	sw $t0, -2548($fp)
	lw $t1, -2548($fp)
	li $t2, 0
	bne $t1, $t2, label370
	j label371
label370:
	lw $t0, -1820($fp)
	sw $t0, -2552($fp)
	li $t0, 0
	lw $t1, -2552($fp)
	sub $t0, $t0, $t1
	sw $t0, -2556($fp)
	lw $t1, -2556($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label374
label373:
	addi $t0, $fp, -1496
	sw $t0, -2560($fp)
	li $t0, 7
	sw $t0, -2564($fp)
	li $t0, 4
	lw $t1, -2564($fp)
	mul $t0, $t0, $t1
	sw $t0, -2568($fp)
	lw $t0, -2568($fp)
	lw $t1, -2560($fp)
	add $t0, $t0, $t1
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	lw $t1, 0($t0)
	sw $t1, -2576($fp)
	lw $t0, -1240($fp)
	sw $t0, -2580($fp)
	lw $t0, -2576($fp)
	lw $t1, -2580($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2584($fp)
	li $t0, 0
	sw $t0, -2588($fp)
	li $t0, 0
	sw $t0, -2592($fp)
	li $t0, 17201
	sw $t0, -2596($fp)
	lw $t0, -1192($fp)
	sw $t0, -2600($fp)
	lw $t1, -2596($fp)
	lw $t2, -2600($fp)
	beq $t1, $t2, label378
	j label379
label378:
	li $t0, 1
	sw $t0, -2592($fp)
label379:
	li $t0, 43603
	sw $t0, -2604($fp)
	lw $t1, -2592($fp)
	lw $t2, -2604($fp)
	bne $t1, $t2, label376
	j label377
label376:
	li $t0, 1
	sw $t0, -2588($fp)
label377:
	addi $sp, $sp, -4
	lw $t0, -2584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2588($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2608($fp)
	addi $sp, $sp, 12
	j label375
label374:
	li $t0, 0
	sw $t0, -2612($fp)
	addi $t0, $fp, -140
	sw $t0, -2616($fp)
	li $t0, 2
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
	lw $t0, -1168($fp)
	sw $t0, -2636($fp)
	lw $t0, -2632($fp)
	lw $t1, -2636($fp)
	mul $t0, $t0, $t1
	sw $t0, -2640($fp)
	lw $t1, -2640($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label381
label382:
	li $t0, 0
	sw $t0, -2644($fp)
	li $t0, 43209
	sw $t0, -2648($fp)
	li $t0, 0
	lw $t1, -2648($fp)
	sub $t0, $t0, $t1
	sw $t0, -2652($fp)
	lw $t1, -2652($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label383
label383:
	li $t0, 1
	sw $t0, -2644($fp)
label384:
	lw $t0, -820($fp)
	sw $t0, -2656($fp)
	lw $t1, -2644($fp)
	lw $t2, -2656($fp)
	bne $t1, $t2, label380
	j label381
label380:
	li $t0, 1
	sw $t0, -2612($fp)
label381:
label375:
	j label372
label371:
	lw $t0, -1084($fp)
	sw $t0, -2660($fp)
label372:
label368:
label359:
	li $t0, 16739
	sw $t0, -2664($fp)
	lw $t0, -2664($fp)
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	sw $t0, -2672($fp)
label385:
	addi $t0, $fp, -64
	sw $t0, -2676($fp)
	lw $t0, -1120($fp)
	sw $t0, -2680($fp)
	li $t0, 41928
	sw $t0, -2684($fp)
	lw $t0, -2680($fp)
	lw $t1, -2684($fp)
	mul $t0, $t0, $t1
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -2692($fp)
	li $t0, 4
	lw $t1, -2692($fp)
	mul $t0, $t0, $t1
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	lw $t1, -2676($fp)
	add $t0, $t0, $t1
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	lw $t1, 0($t0)
	sw $t1, -2704($fp)
	lw $t1, -2704($fp)
	li $t2, 0
	bne $t1, $t2, label386
	j label387
label386:
	li $t0, 0
	sw $t0, -2708($fp)
	addi $t0, $fp, -104
	sw $t0, -2712($fp)
	lw $t0, -1048($fp)
	sw $t0, -2716($fp)
	li $t0, 4
	lw $t1, -2716($fp)
	mul $t0, $t0, $t1
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	lw $t1, -2712($fp)
	add $t0, $t0, $t1
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	lw $t1, 0($t0)
	sw $t1, -2728($fp)
	li $t0, 9193
	sw $t0, -2732($fp)
	addi $sp, $sp, -4
	lw $t0, -2732($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2736($fp)
	addi $sp, $sp, 8
	lw $t0, -2728($fp)
	lw $t1, -2736($fp)
	mul $t0, $t0, $t1
	sw $t0, -2740($fp)
	li $t0, 0
	lw $t1, -2740($fp)
	sub $t0, $t0, $t1
	sw $t0, -2744($fp)
	lw $t1, -2744($fp)
	li $t2, 0
	bne $t1, $t2, label389
	j label388
label388:
	li $t0, 1
	sw $t0, -2708($fp)
label389:
	lw $ra, -4($fp)
	lw $v0, -2708($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label385
label387:
label390:
	li $t0, 40073
	sw $t0, -2748($fp)
	lw $t1, -2748($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label392
label391:
	li $t0, 36345
	sw $t0, -2752($fp)
	li $t0, 19385
	sw $t0, -2756($fp)
	lw $t0, -2752($fp)
	lw $t1, -2756($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2760($fp)
	li $t0, 0
	sw $t0, -2764($fp)
	li $t0, 0
	sw $t0, -2768($fp)
	lw $t0, -1180($fp)
	sw $t0, -2772($fp)
	lw $t0, -1084($fp)
	sw $t0, -2776($fp)
	lw $t1, -2772($fp)
	lw $t2, -2776($fp)
	bgt $t1, $t2, label395
	j label396
label395:
	li $t0, 1
	sw $t0, -2768($fp)
label396:
	lw $t0, -2668($fp)
	sw $t0, -2780($fp)
	lw $t1, -2768($fp)
	lw $t2, -2780($fp)
	bne $t1, $t2, label393
	j label394
label393:
	li $t0, 1
	sw $t0, -2764($fp)
label394:
	li $t0, 0
	sw $t0, -2784($fp)
	li $t0, 0
	sw $t0, -2788($fp)
	lw $t0, -1084($fp)
	sw $t0, -2792($fp)
	li $t0, 23488
	sw $t0, -2796($fp)
	lw $t1, -2792($fp)
	lw $t2, -2796($fp)
	beq $t1, $t2, label399
	j label400
label399:
	li $t0, 1
	sw $t0, -2788($fp)
label400:
	lw $t0, -520($fp)
	sw $t0, -2800($fp)
	lw $t1, -2788($fp)
	lw $t2, -2800($fp)
	bne $t1, $t2, label397
	j label398
label397:
	li $t0, 1
	sw $t0, -2784($fp)
label398:
	addi $sp, $sp, -4
	lw $t0, -2764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2784($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2804($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2804($fp)
	sub $t0, $t0, $t1
	sw $t0, -2808($fp)
	lw $t0, -2760($fp)
	lw $t1, -2808($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2812($fp)
	j label390
label392:
label401:
	li $t0, 12290
	sw $t0, -2816($fp)
	li $t0, 35452
	sw $t0, -2820($fp)
	lw $t0, 4($fp)
	sw $t0, -2824($fp)
	lw $t0, -2820($fp)
	lw $t1, -2824($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2828($fp)
	lw $t0, -1120($fp)
	sw $t0, -2832($fp)
	lw $t0, -2828($fp)
	lw $t1, -2832($fp)
	sub $t0, $t0, $t1
	sw $t0, -2836($fp)
	li $t0, 0
	sw $t0, -2840($fp)
	lw $t0, -1156($fp)
	sw $t0, -2844($fp)
	li $t0, 62663
	sw $t0, -2848($fp)
	lw $t0, -2844($fp)
	lw $t1, -2848($fp)
	mul $t0, $t0, $t1
	sw $t0, -2852($fp)
	li $t0, 29631
	sw $t0, -2856($fp)
	lw $t1, -2852($fp)
	lw $t2, -2856($fp)
	bne $t1, $t2, label404
	j label405
label404:
	li $t0, 1
	sw $t0, -2840($fp)
label405:
	addi $sp, $sp, -4
	lw $t0, -2836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2840($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2860($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -2860($fp)
	sub $t0, $t0, $t1
	sw $t0, -2864($fp)
	lw $t0, -2816($fp)
	lw $t1, -2864($fp)
	mul $t0, $t0, $t1
	sw $t0, -2868($fp)
	li $t0, 0
	sw $t0, -2872($fp)
	li $t0, 0
	sw $t0, -2876($fp)
	li $t0, 57622
	sw $t0, -2880($fp)
	lw $t1, -2880($fp)
	li $t2, 0
	bne $t1, $t2, label409
	j label408
label408:
	li $t0, 1
	sw $t0, -2876($fp)
label409:
	li $t0, 49316
	sw $t0, -2884($fp)
	lw $t1, -2876($fp)
	lw $t2, -2884($fp)
	blt $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -2872($fp)
label407:
	addi $sp, $sp, -4
	lw $t0, -2872($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2888($fp)
	addi $sp, $sp, 8
	li $t0, 27610
	sw $t0, -2892($fp)
	li $t0, 0
	lw $t1, -2892($fp)
	sub $t0, $t0, $t1
	sw $t0, -2896($fp)
	lw $t0, -2888($fp)
	lw $t1, -2896($fp)
	mul $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $t0, -2868($fp)
	lw $t1, -2900($fp)
	add $t0, $t0, $t1
	sw $t0, -2904($fp)
	lw $t1, -2904($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label403
label402:
	addi $t0, $fp, -104
	sw $t0, -2908($fp)
	li $t0, 0
	sw $t0, -2912($fp)
	lw $t0, -1180($fp)
	sw $t0, -2916($fp)
	lw $t0, -1300($fp)
	sw $t0, -2920($fp)
	lw $t0, -2916($fp)
	lw $t1, -2920($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2924($fp)
	li $t0, 61453
	sw $t0, -2928($fp)
	lw $t1, -2924($fp)
	lw $t2, -2928($fp)
	bgt $t1, $t2, label410
	j label412
label412:
	addi $t0, $fp, -64
	sw $t0, -2932($fp)
	lw $t0, -1168($fp)
	sw $t0, -2936($fp)
	li $t0, 4
	lw $t1, -2936($fp)
	mul $t0, $t0, $t1
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	lw $t1, -2932($fp)
	add $t0, $t0, $t1
	sw $t0, -2944($fp)
	lw $t0, -2944($fp)
	lw $t1, 0($t0)
	sw $t1, -2948($fp)
	lw $t1, -2948($fp)
	li $t2, 0
	bne $t1, $t2, label410
	j label411
label410:
	li $t0, 1
	sw $t0, -2912($fp)
label411:
	li $t0, 4
	lw $t1, -2912($fp)
	mul $t0, $t0, $t1
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	lw $t1, -2908($fp)
	add $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	lw $t1, 0($t0)
	sw $t1, -2960($fp)
	li $t0, 0
	sw $t0, -2964($fp)
	li $t0, 0
	sw $t0, -2968($fp)
	lw $t0, -1132($fp)
	sw $t0, -2972($fp)
	lw $t1, -2972($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label416
label416:
	li $t0, 1
	sw $t0, -2968($fp)
label417:
	li $t0, 0
	lw $t1, -2968($fp)
	sub $t0, $t0, $t1
	sw $t0, -2976($fp)
	lw $t0, -676($fp)
	sw $t0, -2980($fp)
	lw $t0, -2976($fp)
	lw $t1, -2980($fp)
	sub $t0, $t0, $t1
	sw $t0, -2984($fp)
	li $t0, 0
	sw $t0, -2988($fp)
	lw $t0, -1228($fp)
	sw $t0, -2992($fp)
	lw $t1, -2992($fp)
	li $t2, 0
	bne $t1, $t2, label418
	j label420
label420:
	li $t0, 13551
	sw $t0, -2996($fp)
	lw $t1, -2996($fp)
	li $t2, 0
	bne $t1, $t2, label418
	j label419
label418:
	li $t0, 1
	sw $t0, -2988($fp)
label419:
	addi $sp, $sp, -4
	lw $t0, -2988($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3000($fp)
	addi $sp, $sp, 8
	lw $t0, -2984($fp)
	lw $t1, -3000($fp)
	sub $t0, $t0, $t1
	sw $t0, -3004($fp)
	lw $t1, -3004($fp)
	li $t2, 0
	bne $t1, $t2, label413
	j label415
label415:
	addi $t0, $fp, -64
	sw $t0, -3008($fp)
	lw $t0, -292($fp)
	sw $t0, -3012($fp)
	li $t0, 0
	lw $t1, -3012($fp)
	sub $t0, $t0, $t1
	sw $t0, -3016($fp)
	li $t0, 4
	lw $t1, -3016($fp)
	mul $t0, $t0, $t1
	sw $t0, -3020($fp)
	lw $t0, -3020($fp)
	lw $t1, -3008($fp)
	add $t0, $t0, $t1
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	lw $t1, 0($t0)
	sw $t1, -3028($fp)
	lw $t1, -3028($fp)
	li $t2, 0
	bne $t1, $t2, label413
	j label414
label413:
	li $t0, 1
	sw $t0, -2964($fp)
label414:
	li $t0, 0
	sw $t0, -3032($fp)
	lw $t0, -292($fp)
	sw $t0, -3036($fp)
	lw $t1, -3036($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label421
label421:
	li $t0, 1
	sw $t0, -3032($fp)
label422:
	li $t0, 0
	lw $t1, -3032($fp)
	sub $t0, $t0, $t1
	sw $t0, -3040($fp)
	li $t0, 0
	sw $t0, -3044($fp)
	li $t0, 0
	sw $t0, -3048($fp)
	lw $t0, -1192($fp)
	sw $t0, -3052($fp)
	li $t0, 63258
	sw $t0, -3056($fp)
	lw $t1, -3052($fp)
	lw $t2, -3056($fp)
	bge $t1, $t2, label425
	j label426
label425:
	li $t0, 1
	sw $t0, -3048($fp)
label426:
	lw $t0, -676($fp)
	sw $t0, -3060($fp)
	lw $t1, -3048($fp)
	lw $t2, -3060($fp)
	beq $t1, $t2, label423
	j label424
label423:
	li $t0, 1
	sw $t0, -3044($fp)
label424:
	addi $sp, $sp, -4
	lw $t0, -3040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3044($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3064($fp)
	addi $sp, $sp, 12
	li $t0, 43197
	sw $t0, -3068($fp)
	li $t0, 0
	lw $t1, -3068($fp)
	sub $t0, $t0, $t1
	sw $t0, -3072($fp)
	lw $t0, -1144($fp)
	sw $t0, -3076($fp)
	lw $t0, -3072($fp)
	lw $t1, -3076($fp)
	sub $t0, $t0, $t1
	sw $t0, -3080($fp)
	j label401
label403:
	j label300
label299:
	addi $t0, $fp, -140
	sw $t0, -3084($fp)
	li $t0, 0
	sw $t0, -3088($fp)
	addi $t0, $fp, -140
	sw $t0, -3092($fp)
	li $t0, 3
	sw $t0, -3096($fp)
	li $t0, 4
	lw $t1, -3096($fp)
	mul $t0, $t0, $t1
	sw $t0, -3100($fp)
	lw $t0, -3100($fp)
	lw $t1, -3092($fp)
	add $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t0, -3104($fp)
	lw $t1, 0($t0)
	sw $t1, -3108($fp)
	lw $t1, -3108($fp)
	li $t2, 0
	bne $t1, $t2, label431
	j label430
label430:
	li $t0, 1
	sw $t0, -3088($fp)
label431:
	li $t0, 4
	lw $t1, -3088($fp)
	mul $t0, $t0, $t1
	sw $t0, -3112($fp)
	lw $t0, -3112($fp)
	lw $t1, -3084($fp)
	add $t0, $t0, $t1
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	lw $t1, 0($t0)
	sw $t1, -3120($fp)
	lw $t1, -3120($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label428
label427:
	addi $t0, $fp, -88
	sw $t0, -3124($fp)
	addi $t0, $fp, -104
	sw $t0, -3128($fp)
	lw $t0, -292($fp)
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
	lw $t0, -820($fp)
	sw $t0, -3148($fp)
	li $t0, 0
	lw $t1, -3148($fp)
	sub $t0, $t0, $t1
	sw $t0, -3152($fp)
	lw $t0, -3144($fp)
	lw $t1, -3152($fp)
	mul $t0, $t0, $t1
	sw $t0, -3156($fp)
	li $t0, 4
	lw $t1, -3156($fp)
	mul $t0, $t0, $t1
	sw $t0, -3160($fp)
	lw $t0, -3160($fp)
	lw $t1, -3124($fp)
	add $t0, $t0, $t1
	sw $t0, -3164($fp)
	lw $t0, -3164($fp)
	lw $t1, 0($t0)
	sw $t1, -3168($fp)
	lw $t1, -3168($fp)
	li $t2, 0
	bne $t1, $t2, label432
	j label433
label432:
	li $t0, 33367
	sw $t0, -3172($fp)
	lw $t1, -3172($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label438
label438:
	addi $t0, $fp, -28
	sw $t0, -3176($fp)
	lw $t0, -700($fp)
	sw $t0, -3180($fp)
	li $t0, 4
	lw $t1, -3180($fp)
	mul $t0, $t0, $t1
	sw $t0, -3184($fp)
	lw $t0, -3184($fp)
	lw $t1, -3176($fp)
	add $t0, $t0, $t1
	sw $t0, -3188($fp)
	lw $t0, -3188($fp)
	lw $t1, 0($t0)
	sw $t1, -3192($fp)
	li $t0, 0
	sw $t0, -3196($fp)
	li $t0, 7163
	sw $t0, -3200($fp)
	lw $t1, -3200($fp)
	li $t2, 0
	bne $t1, $t2, label440
	j label439
label439:
	li $t0, 1
	sw $t0, -3196($fp)
label440:
	lw $t0, -3192($fp)
	lw $t1, -3196($fp)
	add $t0, $t0, $t1
	sw $t0, -3204($fp)
	lw $t1, -3204($fp)
	li $t2, 0
	bne $t1, $t2, label435
	j label436
label435:
	lw $t0, -1048($fp)
	sw $t0, -3208($fp)
	lw $ra, -4($fp)
	lw $v0, -3208($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label437
label436:
label441:
	li $t0, 40929
	sw $t0, -3212($fp)
	li $t0, 8711
	sw $t0, -3216($fp)
	lw $t0, -3212($fp)
	lw $t1, -3216($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3220($fp)
	addi $sp, $sp, -4
	lw $t0, -3220($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3224($fp)
	addi $sp, $sp, 8
	lw $t1, -3224($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label443
label442:
	li $t0, 0
	sw $t0, -3228($fp)
	lw $t0, -1192($fp)
	sw $t0, -3232($fp)
	lw $t0, -1276($fp)
	sw $t0, -3236($fp)
	lw $t0, -3232($fp)
	lw $t1, -3236($fp)
	sub $t0, $t0, $t1
	sw $t0, -3240($fp)
	lw $t1, -3240($fp)
	li $t2, 0
	bne $t1, $t2, label446
	j label445
label446:
	lw $t0, -1048($fp)
	sw $t0, -3244($fp)
	li $t0, 24364
	sw $t0, -3248($fp)
	lw $t0, -3244($fp)
	lw $t1, -3248($fp)
	add $t0, $t0, $t1
	sw $t0, -3252($fp)
	lw $t1, -3252($fp)
	li $t2, 0
	bne $t1, $t2, label444
	j label445
label444:
	li $t0, 1
	sw $t0, -3228($fp)
label445:
	lw $t0, -3228($fp)
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	sw $t0, -3256($fp)
	lw $ra, -4($fp)
	lw $v0, -3256($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label441
label443:
label437:
	j label434
label433:
	li $t0, 18996
	sw $t0, -3324($fp)
	addi $t0, $fp, -3292
	sw $t0, -3328($fp)
	li $t0, 0
	sw $t0, -3332($fp)
	lw $t0, -3332($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3336($fp)
	lw $t0, -3328($fp)
	lw $t1, -3336($fp)
	add $t0, $t0, $t1
	sw $t0, -3340($fp)
	lw $t0, -3324($fp)
	lw $t1, -3340($fp)
	sw $t0, 0($t1)
	lw $t0, -3340($fp)
	lw $t1, 0($t0)
	sw $t1, -3344($fp)
	li $t0, 12359
	sw $t0, -3348($fp)
	addi $t0, $fp, -3292
	sw $t0, -3352($fp)
	li $t0, 1
	sw $t0, -3356($fp)
	lw $t0, -3356($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3360($fp)
	lw $t0, -3352($fp)
	lw $t1, -3360($fp)
	add $t0, $t0, $t1
	sw $t0, -3364($fp)
	lw $t0, -3348($fp)
	lw $t1, -3364($fp)
	sw $t0, 0($t1)
	lw $t0, -3364($fp)
	lw $t1, 0($t0)
	sw $t1, -3368($fp)
	li $t0, 19297
	sw $t0, -3372($fp)
	addi $t0, $fp, -3292
	sw $t0, -3376($fp)
	li $t0, 2
	sw $t0, -3380($fp)
	lw $t0, -3380($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3384($fp)
	lw $t0, -3376($fp)
	lw $t1, -3384($fp)
	add $t0, $t0, $t1
	sw $t0, -3388($fp)
	lw $t0, -3372($fp)
	lw $t1, -3388($fp)
	sw $t0, 0($t1)
	lw $t0, -3388($fp)
	lw $t1, 0($t0)
	sw $t1, -3392($fp)
	li $t0, 38172
	sw $t0, -3396($fp)
	addi $t0, $fp, -3292
	sw $t0, -3400($fp)
	li $t0, 3
	sw $t0, -3404($fp)
	lw $t0, -3404($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3408($fp)
	lw $t0, -3400($fp)
	lw $t1, -3408($fp)
	add $t0, $t0, $t1
	sw $t0, -3412($fp)
	lw $t0, -3396($fp)
	lw $t1, -3412($fp)
	sw $t0, 0($t1)
	lw $t0, -3412($fp)
	lw $t1, 0($t0)
	sw $t1, -3416($fp)
	li $t0, 55389
	sw $t0, -3420($fp)
	addi $t0, $fp, -3292
	sw $t0, -3424($fp)
	li $t0, 4
	sw $t0, -3428($fp)
	lw $t0, -3428($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3432($fp)
	lw $t0, -3424($fp)
	lw $t1, -3432($fp)
	add $t0, $t0, $t1
	sw $t0, -3436($fp)
	lw $t0, -3420($fp)
	lw $t1, -3436($fp)
	sw $t0, 0($t1)
	lw $t0, -3436($fp)
	lw $t1, 0($t0)
	sw $t1, -3440($fp)
	li $t0, 62506
	sw $t0, -3444($fp)
	addi $t0, $fp, -3292
	sw $t0, -3448($fp)
	li $t0, 5
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3456($fp)
	lw $t0, -3448($fp)
	lw $t1, -3456($fp)
	add $t0, $t0, $t1
	sw $t0, -3460($fp)
	lw $t0, -3444($fp)
	lw $t1, -3460($fp)
	sw $t0, 0($t1)
	lw $t0, -3460($fp)
	lw $t1, 0($t0)
	sw $t1, -3464($fp)
	li $t0, 54912
	sw $t0, -3468($fp)
	addi $t0, $fp, -3292
	sw $t0, -3472($fp)
	li $t0, 6
	sw $t0, -3476($fp)
	lw $t0, -3476($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3480($fp)
	lw $t0, -3472($fp)
	lw $t1, -3480($fp)
	add $t0, $t0, $t1
	sw $t0, -3484($fp)
	lw $t0, -3468($fp)
	lw $t1, -3484($fp)
	sw $t0, 0($t1)
	lw $t0, -3484($fp)
	lw $t1, 0($t0)
	sw $t1, -3488($fp)
	li $t0, 31781
	sw $t0, -3492($fp)
	addi $t0, $fp, -3292
	sw $t0, -3496($fp)
	li $t0, 7
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3504($fp)
	lw $t0, -3496($fp)
	lw $t1, -3504($fp)
	add $t0, $t0, $t1
	sw $t0, -3508($fp)
	lw $t0, -3492($fp)
	lw $t1, -3508($fp)
	sw $t0, 0($t1)
	lw $t0, -3508($fp)
	lw $t1, 0($t0)
	sw $t1, -3512($fp)
	li $t0, 6163
	sw $t0, -3516($fp)
	addi $t0, $fp, -3292
	sw $t0, -3520($fp)
	li $t0, 8
	sw $t0, -3524($fp)
	lw $t0, -3524($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3528($fp)
	lw $t0, -3520($fp)
	lw $t1, -3528($fp)
	add $t0, $t0, $t1
	sw $t0, -3532($fp)
	lw $t0, -3516($fp)
	lw $t1, -3532($fp)
	sw $t0, 0($t1)
	lw $t0, -3532($fp)
	lw $t1, 0($t0)
	sw $t1, -3536($fp)
	li $t0, 29449
	sw $t0, -3540($fp)
	lw $t0, -3540($fp)
	sw $t0, -3544($fp)
	lw $t0, -3544($fp)
	sw $t0, -3548($fp)
	li $t0, 2590
	sw $t0, -3552($fp)
	lw $t0, -3552($fp)
	sw $t0, -3556($fp)
	lw $t0, -3556($fp)
	sw $t0, -3560($fp)
	li $t0, 25548
	sw $t0, -3564($fp)
	lw $t0, -3564($fp)
	sw $t0, -3568($fp)
	lw $t0, -3568($fp)
	sw $t0, -3572($fp)
	li $t0, 52937
	sw $t0, -3576($fp)
	addi $t0, $fp, -3320
	sw $t0, -3580($fp)
	li $t0, 0
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
	li $t0, 14881
	sw $t0, -3600($fp)
	addi $t0, $fp, -3320
	sw $t0, -3604($fp)
	li $t0, 1
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
	li $t0, 22676
	sw $t0, -3624($fp)
	addi $t0, $fp, -3320
	sw $t0, -3628($fp)
	li $t0, 2
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
	li $t0, 17033
	sw $t0, -3648($fp)
	addi $t0, $fp, -3320
	sw $t0, -3652($fp)
	li $t0, 3
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
	li $t0, 50333
	sw $t0, -3672($fp)
	addi $t0, $fp, -3320
	sw $t0, -3676($fp)
	li $t0, 4
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
	li $t0, 14762
	sw $t0, -3696($fp)
	addi $t0, $fp, -3320
	sw $t0, -3700($fp)
	li $t0, 5
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
	li $t0, 813
	sw $t0, -3720($fp)
	addi $t0, $fp, -3320
	sw $t0, -3724($fp)
	li $t0, 6
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
label447:
	addi $t0, $fp, -3320
	sw $t0, -3744($fp)
	li $t0, 0
	sw $t0, -3748($fp)
	addi $t0, $fp, -140
	sw $t0, -3752($fp)
	li $t0, 3
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
	lw $t0, -1288($fp)
	sw $t0, -3772($fp)
	lw $t1, -3768($fp)
	lw $t2, -3772($fp)
	ble $t1, $t2, label451
	j label452
label451:
	li $t0, 1
	sw $t0, -3748($fp)
label452:
	li $t0, 4
	lw $t1, -3748($fp)
	mul $t0, $t0, $t1
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	lw $t1, -3744($fp)
	add $t0, $t0, $t1
	sw $t0, -3780($fp)
	lw $t0, -3780($fp)
	lw $t1, 0($t0)
	sw $t1, -3784($fp)
	lw $t1, -3784($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label450
label450:
	lw $t0, -3568($fp)
	sw $t0, -3788($fp)
	lw $t1, -3788($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label449
label448:
	lw $t0, -1168($fp)
	sw $t0, -3792($fp)
	li $t0, 14364
	sw $t0, -3796($fp)
	lw $t0, -3792($fp)
	lw $t1, -3796($fp)
	sub $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	sw $t0, -3804($fp)
	lw $t0, -3804($fp)
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	sw $t0, -3808($fp)
	j label447
label449:
	addi $t0, $fp, -64
	sw $t0, -3812($fp)
	lw $t0, -3556($fp)
	sw $t0, -3816($fp)
	li $t0, 0
	lw $t1, -3816($fp)
	sub $t0, $t0, $t1
	sw $t0, -3820($fp)
	li $t0, 0
	lw $t1, -3820($fp)
	sub $t0, $t0, $t1
	sw $t0, -3824($fp)
	li $t0, 10129
	sw $t0, -3828($fp)
	lw $t0, -1048($fp)
	sw $t0, -3832($fp)
	lw $t0, -3828($fp)
	lw $t1, -3832($fp)
	add $t0, $t0, $t1
	sw $t0, -3836($fp)
	li $t0, 53876
	sw $t0, -3840($fp)
	lw $t0, -3836($fp)
	lw $t1, -3840($fp)
	add $t0, $t0, $t1
	sw $t0, -3844($fp)
	addi $sp, $sp, -4
	lw $t0, -3824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3844($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3848($fp)
	addi $sp, $sp, 12
	li $t0, 4
	lw $t1, -3848($fp)
	mul $t0, $t0, $t1
	sw $t0, -3852($fp)
	lw $t0, -3852($fp)
	lw $t1, -3812($fp)
	add $t0, $t0, $t1
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	lw $t1, 0($t0)
	sw $t1, -3860($fp)
	lw $t1, -3860($fp)
	li $t2, 0
	bne $t1, $t2, label453
	j label454
label453:
label456:
	lw $t0, -1144($fp)
	sw $t0, -3864($fp)
	lw $t1, -3864($fp)
	li $t2, 0
	bne $t1, $t2, label459
	j label458
label459:
	li $t0, 0
	sw $t0, -3868($fp)
	li $t0, 11087
	sw $t0, -3872($fp)
	lw $t1, -3872($fp)
	li $t2, 0
	bne $t1, $t2, label462
	j label461
label462:
	li $t0, 51252
	sw $t0, -3876($fp)
	lw $t1, -3876($fp)
	li $t2, 0
	bne $t1, $t2, label460
	j label461
label460:
	li $t0, 1
	sw $t0, -3868($fp)
label461:
	li $t0, 0
	sw $t0, -3880($fp)
	li $t0, 0
	sw $t0, -3884($fp)
	lw $t0, -1156($fp)
	sw $t0, -3888($fp)
	lw $t1, -3888($fp)
	li $t2, 0
	bne $t1, $t2, label466
	j label465
label465:
	li $t0, 1
	sw $t0, -3884($fp)
label466:
	lw $t0, -1312($fp)
	sw $t0, -3892($fp)
	lw $t1, -3884($fp)
	lw $t2, -3892($fp)
	blt $t1, $t2, label463
	j label464
label463:
	li $t0, 1
	sw $t0, -3880($fp)
label464:
	addi $sp, $sp, -4
	lw $t0, -3868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3880($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3896($fp)
	addi $sp, $sp, 12
	lw $t1, -3896($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label458
label457:
	li $t0, 0
	sw $t0, -3900($fp)
	li $t0, 0
	sw $t0, -3904($fp)
	li $t0, 21707
	sw $t0, -3908($fp)
	lw $t0, 4($fp)
	sw $t0, -3912($fp)
	li $t0, 0
	lw $t1, -3912($fp)
	sub $t0, $t0, $t1
	sw $t0, -3916($fp)
	lw $t1, -3908($fp)
	lw $t2, -3916($fp)
	blt $t1, $t2, label469
	j label470
label469:
	li $t0, 1
	sw $t0, -3904($fp)
label470:
	li $t0, 0
	sw $t0, -3920($fp)
	lw $t0, -820($fp)
	sw $t0, -3924($fp)
	li $t0, 0
	lw $t1, -3924($fp)
	sub $t0, $t0, $t1
	sw $t0, -3928($fp)
	lw $t1, -3928($fp)
	li $t2, 0
	bne $t1, $t2, label472
	j label471
label471:
	li $t0, 1
	sw $t0, -3920($fp)
label472:
	lw $t1, -3904($fp)
	lw $t2, -3920($fp)
	blt $t1, $t2, label467
	j label468
label467:
	li $t0, 1
	sw $t0, -3900($fp)
label468:
	lw $ra, -4($fp)
	lw $v0, -3900($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label456
label458:
	j label455
label454:
label473:
	li $t0, 18250
	sw $t0, -3932($fp)
	addi $t0, $fp, -104
	sw $t0, -3936($fp)
	li $t0, 3
	sw $t0, -3940($fp)
	li $t0, 4
	lw $t1, -3940($fp)
	mul $t0, $t0, $t1
	sw $t0, -3944($fp)
	lw $t0, -3944($fp)
	lw $t1, -3936($fp)
	add $t0, $t0, $t1
	sw $t0, -3948($fp)
	lw $t0, -3948($fp)
	lw $t1, 0($t0)
	sw $t1, -3952($fp)
	lw $t0, -3932($fp)
	lw $t1, -3952($fp)
	add $t0, $t0, $t1
	sw $t0, -3956($fp)
	addi $t0, $fp, -3292
	sw $t0, -3960($fp)
	li $t0, 0
	sw $t0, -3964($fp)
	lw $t0, -3544($fp)
	sw $t0, -3968($fp)
	lw $t0, 4($fp)
	sw $t0, -3972($fp)
	lw $t1, -3968($fp)
	lw $t2, -3972($fp)
	beq $t1, $t2, label476
	j label477
label476:
	li $t0, 1
	sw $t0, -3964($fp)
label477:
	li $t0, 4
	lw $t1, -3964($fp)
	mul $t0, $t0, $t1
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	lw $t1, -3960($fp)
	add $t0, $t0, $t1
	sw $t0, -3980($fp)
	lw $t0, -3980($fp)
	lw $t1, 0($t0)
	sw $t1, -3984($fp)
	lw $t1, -3956($fp)
	lw $t2, -3984($fp)
	bge $t1, $t2, label474
	j label475
label474:
	li $t0, 42614
	sw $t0, -3988($fp)
	lw $t0, -3988($fp)
	sw $t0, -3992($fp)
	lw $t0, -3992($fp)
	sw $t0, -3996($fp)
	li $t0, 45641
	sw $t0, -4000($fp)
	lw $t0, -4000($fp)
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	sw $t0, -4008($fp)
	addi $t0, $fp, -64
	sw $t0, -4012($fp)
	li $t0, 3
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
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -4036($fp)
	li $t0, 0
	sw $t0, -4040($fp)
	li $t0, 0
	sw $t0, -4044($fp)
	lw $t0, -1048($fp)
	sw $t0, -4048($fp)
	lw $t0, -3992($fp)
	sw $t0, -4052($fp)
	lw $t0, -4048($fp)
	lw $t1, -4052($fp)
	add $t0, $t0, $t1
	sw $t0, -4056($fp)
	lw $t0, -1228($fp)
	sw $t0, -4060($fp)
	lw $t1, -4056($fp)
	lw $t2, -4060($fp)
	blt $t1, $t2, label480
	j label481
label480:
	li $t0, 1
	sw $t0, -4044($fp)
label481:
	li $t0, 0
	sw $t0, -4064($fp)
	li $t0, 18278
	sw $t0, -4068($fp)
	lw $t1, -4068($fp)
	li $t2, 0
	bne $t1, $t2, label483
	j label482
label482:
	li $t0, 1
	sw $t0, -4064($fp)
label483:
	lw $t1, -4044($fp)
	lw $t2, -4064($fp)
	bne $t1, $t2, label478
	j label479
label478:
	li $t0, 1
	sw $t0, -4040($fp)
label479:
	lw $t0, -4040($fp)
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	sw $t0, -4072($fp)
	j label473
label475:
label455:
label434:
	j label429
label428:
label484:
	li $t0, 32631
	sw $t0, -4076($fp)
	lw $t0, -1072($fp)
	sw $t0, -4080($fp)
	li $t0, 58882
	sw $t0, -4084($fp)
	lw $t0, -4080($fp)
	lw $t1, -4084($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4088($fp)
	lw $t0, -1240($fp)
	sw $t0, -4092($fp)
	lw $t0, -4088($fp)
	lw $t1, -4092($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4096($fp)
	lw $t1, -4076($fp)
	lw $t2, -4096($fp)
	beq $t1, $t2, label487
	j label486
label487:
	li $t0, 0
	sw $t0, -4100($fp)
	li $t0, 7654
	sw $t0, -4104($fp)
	lw $t1, -4104($fp)
	li $t2, 0
	bne $t1, $t2, label489
	j label488
label488:
	li $t0, 1
	sw $t0, -4100($fp)
label489:
	li $t0, 0
	lw $t1, -4100($fp)
	sub $t0, $t0, $t1
	sw $t0, -4108($fp)
	lw $t1, -4108($fp)
	li $t2, 0
	bne $t1, $t2, label486
	j label485
label485:
	lw $t0, -712($fp)
	sw $t0, -4112($fp)
	li $t0, 64412
	sw $t0, -4116($fp)
	li $t0, 0
	lw $t1, -4116($fp)
	sub $t0, $t0, $t1
	sw $t0, -4120($fp)
	li $t0, 0
	lw $t1, -4120($fp)
	sub $t0, $t0, $t1
	sw $t0, -4124($fp)
	lw $t0, -4112($fp)
	lw $t1, -4124($fp)
	mul $t0, $t0, $t1
	sw $t0, -4128($fp)
	j label484
label486:
label429:
label300:
	j label292
label291:
	li $t0, 65045
	sw $t0, -4132($fp)
	lw $t0, -4132($fp)
	sw $t0, -4136($fp)
	lw $t0, -4136($fp)
	sw $t0, -4140($fp)
	li $t0, 0
	sw $t0, -4144($fp)
	li $t0, 0
	sw $t0, -4148($fp)
	lw $t0, -1180($fp)
	sw $t0, -4152($fp)
	lw $t1, -4152($fp)
	li $t2, 0
	bne $t1, $t2, label494
	j label493
label493:
	li $t0, 1
	sw $t0, -4148($fp)
label494:
	lw $t0, -1312($fp)
	sw $t0, -4156($fp)
	lw $t0, -4148($fp)
	lw $t1, -4156($fp)
	sub $t0, $t0, $t1
	sw $t0, -4160($fp)
	lw $t0, -820($fp)
	sw $t0, -4164($fp)
	lw $t0, -4164($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -4168($fp)
	addi $sp, $sp, -4
	lw $t0, -4160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4168($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4172($fp)
	addi $sp, $sp, 12
	lw $t1, -4172($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label491
label492:
	li $t0, 0
	sw $t0, -4176($fp)
	lw $t0, -1312($fp)
	sw $t0, -4180($fp)
	li $t0, 37103
	sw $t0, -4184($fp)
	lw $t1, -4180($fp)
	lw $t2, -4184($fp)
	bgt $t1, $t2, label495
	j label496
label495:
	li $t0, 1
	sw $t0, -4176($fp)
label496:
	li $t0, 1466
	sw $t0, -4188($fp)
	lw $t1, -4176($fp)
	lw $t2, -4188($fp)
	bgt $t1, $t2, label490
	j label491
label490:
	li $t0, 1
	sw $t0, -4144($fp)
label491:
	lw $t0, -292($fp)
	sw $t0, -4192($fp)
	lw $t0, -4136($fp)
	sw $t0, -4196($fp)
	lw $t0, -4192($fp)
	lw $t1, -4196($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4200($fp)
	li $t0, 0
	sw $t0, -4204($fp)
	li $t0, 25058
	sw $t0, -4208($fp)
	lw $t1, -4208($fp)
	li $t2, 0
	bne $t1, $t2, label498
	j label497
label497:
	li $t0, 1
	sw $t0, -4204($fp)
label498:
	lw $t0, -4200($fp)
	lw $t1, -4204($fp)
	add $t0, $t0, $t1
	sw $t0, -4212($fp)
	li $t0, 24505
	sw $t0, -4220($fp)
	lw $t0, -4220($fp)
	sw $t0, -4224($fp)
	lw $t0, -4224($fp)
	sw $t0, -4228($fp)
	li $t0, 16347
	sw $t0, -4232($fp)
	addi $t0, $fp, -4216
	sw $t0, -4236($fp)
	li $t0, 0
	sw $t0, -4240($fp)
	lw $t0, -4240($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4244($fp)
	lw $t0, -4236($fp)
	lw $t1, -4244($fp)
	add $t0, $t0, $t1
	sw $t0, -4248($fp)
	lw $t0, -4232($fp)
	lw $t1, -4248($fp)
	sw $t0, 0($t1)
	lw $t0, -4248($fp)
	lw $t1, 0($t0)
	sw $t1, -4252($fp)
	li $t0, 47734
	sw $t0, -4256($fp)
	lw $t0, -4256($fp)
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	sw $t0, -4264($fp)
	li $t0, 41538
	sw $t0, -4268($fp)
	lw $t0, -4268($fp)
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	sw $t0, -4276($fp)
	li $t0, 1144
	sw $t0, -4280($fp)
	lw $t1, -4280($fp)
	li $t2, 0
	bne $t1, $t2, label500
	j label502
label502:
	lw $t0, -1084($fp)
	sw $t0, -4284($fp)
	lw $t1, -4284($fp)
	li $t2, 0
	bne $t1, $t2, label499
	j label500
label499:
	li $t0, 0
	sw $t0, -4288($fp)
	li $t0, 0
	sw $t0, -4292($fp)
	li $t0, 0
	sw $t0, -4296($fp)
	lw $t0, -1156($fp)
	sw $t0, -4300($fp)
	lw $t0, -700($fp)
	sw $t0, -4304($fp)
	lw $t1, -4300($fp)
	lw $t2, -4304($fp)
	bne $t1, $t2, label507
	j label508
label507:
	li $t0, 1
	sw $t0, -4296($fp)
label508:
	li $t0, 62496
	sw $t0, -4308($fp)
	lw $t1, -4296($fp)
	lw $t2, -4308($fp)
	bne $t1, $t2, label505
	j label506
label505:
	li $t0, 1
	sw $t0, -4292($fp)
label506:
	addi $sp, $sp, -4
	lw $t0, -4292($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4312($fp)
	addi $sp, $sp, 8
	lw $t1, -4312($fp)
	li $t2, 0
	bne $t1, $t2, label504
	j label503
label503:
	li $t0, 1
	sw $t0, -4288($fp)
label504:
	j label501
label500:
	li $t0, 0
	sw $t0, -4316($fp)
	addi $t0, $fp, -104
	sw $t0, -4320($fp)
	li $t0, 3
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
	addi $sp, $sp, -4
	lw $t0, -4336($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4340($fp)
	addi $sp, $sp, 8
	lw $t1, -4340($fp)
	li $t2, 0
	bne $t1, $t2, label510
	j label509
label509:
	li $t0, 1
	sw $t0, -4316($fp)
label510:
	li $t0, 7639
	sw $t0, -4344($fp)
	lw $t0, -4316($fp)
	lw $t1, -4344($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4348($fp)
	lw $t0, -1216($fp)
	sw $t0, -4352($fp)
	li $t0, 0
	lw $t1, -4352($fp)
	sub $t0, $t0, $t1
	sw $t0, -4356($fp)
	li $t0, 0
	lw $t1, -4356($fp)
	sub $t0, $t0, $t1
	sw $t0, -4360($fp)
	lw $t0, -4348($fp)
	lw $t1, -4360($fp)
	sub $t0, $t0, $t1
	sw $t0, -4364($fp)
	li $t0, 0
	sw $t0, -4368($fp)
	li $t0, 0
	sw $t0, -4372($fp)
	li $t0, 56715
	sw $t0, -4376($fp)
	lw $t0, -1096($fp)
	sw $t0, -4380($fp)
	lw $t1, -4376($fp)
	lw $t2, -4380($fp)
	ble $t1, $t2, label513
	j label514
label513:
	li $t0, 1
	sw $t0, -4372($fp)
label514:
	li $t0, 23681
	sw $t0, -4384($fp)
	lw $t1, -4372($fp)
	lw $t2, -4384($fp)
	bgt $t1, $t2, label511
	j label512
label511:
	li $t0, 1
	sw $t0, -4368($fp)
label512:
	addi $sp, $sp, -4
	lw $t0, -4368($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4388($fp)
	addi $sp, $sp, 8
	lw $t0, -4364($fp)
	lw $t1, -4388($fp)
	sub $t0, $t0, $t1
	sw $t0, -4392($fp)
label501:
	li $t0, 0
	sw $t0, -4396($fp)
	li $t0, 61515
	sw $t0, -4400($fp)
	li $t0, 2266
	sw $t0, -4404($fp)
	lw $t0, -4400($fp)
	lw $t1, -4404($fp)
	add $t0, $t0, $t1
	sw $t0, -4408($fp)
	li $t0, 9397
	sw $t0, -4412($fp)
	lw $t1, -4408($fp)
	lw $t2, -4412($fp)
	beq $t1, $t2, label518
	j label519
label518:
	li $t0, 1
	sw $t0, -4396($fp)
label519:
	addi $sp, $sp, -4
	lw $t0, -4396($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4416($fp)
	addi $sp, $sp, 8
	lw $t0, 4($fp)
	sw $t0, -4420($fp)
	lw $t0, -1120($fp)
	sw $t0, -4424($fp)
	li $t0, 0
	lw $t1, -4424($fp)
	sub $t0, $t0, $t1
	sw $t0, -4428($fp)
	lw $t0, -4420($fp)
	lw $t1, -4428($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4432($fp)
	lw $t1, -4416($fp)
	lw $t2, -4432($fp)
	bne $t1, $t2, label515
	j label516
label515:
	li $t0, 0
	sw $t0, -4436($fp)
	addi $t0, $fp, -64
	sw $t0, -4440($fp)
	lw $t0, -1180($fp)
	sw $t0, -4444($fp)
	li $t0, 4
	lw $t1, -4444($fp)
	mul $t0, $t0, $t1
	sw $t0, -4448($fp)
	lw $t0, -4448($fp)
	lw $t1, -4440($fp)
	add $t0, $t0, $t1
	sw $t0, -4452($fp)
	lw $t0, -4452($fp)
	lw $t1, 0($t0)
	sw $t1, -4456($fp)
	lw $t0, -4272($fp)
	sw $t0, -4460($fp)
	li $t0, 0
	lw $t1, -4460($fp)
	sub $t0, $t0, $t1
	sw $t0, -4464($fp)
	lw $t1, -4456($fp)
	lw $t2, -4464($fp)
	bne $t1, $t2, label520
	j label521
label520:
	li $t0, 1
	sw $t0, -4436($fp)
label521:
	lw $t0, -4436($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -4468($fp)
	lw $ra, -4($fp)
	lw $v0, -4468($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label516:
	lw $t0, -4224($fp)
	sw $t0, -4472($fp)
	lw $t0, -4472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4216
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
	lw $t0, -4260($fp)
	sw $t0, -4496($fp)
	lw $t0, -4496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4272($fp)
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4504($fp)
	addi $t0, $fp, -140
	sw $t0, -4508($fp)
	li $t0, 0
	sw $t0, -4512($fp)
	li $t0, 17686
	sw $t0, -4516($fp)
	lw $t0, -1300($fp)
	sw $t0, -4520($fp)
	lw $t1, -4516($fp)
	lw $t2, -4520($fp)
	ble $t1, $t2, label524
	j label525
label524:
	li $t0, 1
	sw $t0, -4512($fp)
label525:
	li $t0, 4
	lw $t1, -4512($fp)
	mul $t0, $t0, $t1
	sw $t0, -4524($fp)
	lw $t0, -4524($fp)
	lw $t1, -4508($fp)
	add $t0, $t0, $t1
	sw $t0, -4528($fp)
	lw $t0, -4528($fp)
	lw $t1, 0($t0)
	sw $t1, -4532($fp)
	li $t0, 0
	lw $t1, -4532($fp)
	sub $t0, $t0, $t1
	sw $t0, -4536($fp)
	li $t0, 20517
	sw $t0, -4540($fp)
	li $t0, 0
	sw $t0, -4544($fp)
	lw $t0, -1144($fp)
	sw $t0, -4548($fp)
	lw $t0, -1156($fp)
	sw $t0, -4552($fp)
	lw $t0, -4548($fp)
	lw $t1, -4552($fp)
	add $t0, $t0, $t1
	sw $t0, -4556($fp)
	lw $t1, -4556($fp)
	li $t2, 0
	bne $t1, $t2, label526
	j label528
label528:
	li $t0, 36043
	sw $t0, -4560($fp)
	lw $t1, -4560($fp)
	li $t2, 0
	bne $t1, $t2, label526
	j label527
label526:
	li $t0, 1
	sw $t0, -4544($fp)
label527:
	addi $sp, $sp, -4
	lw $t0, -4544($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4564($fp)
	addi $sp, $sp, 8
	lw $t0, -4540($fp)
	lw $t1, -4564($fp)
	add $t0, $t0, $t1
	sw $t0, -4568($fp)
	lw $t1, -4536($fp)
	lw $t2, -4568($fp)
	blt $t1, $t2, label522
	j label523
label522:
	li $t0, 1
	sw $t0, -4504($fp)
label523:
	lw $ra, -4($fp)
	lw $v0, -4504($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1180($fp)
	sw $t0, -4572($fp)
	lw $t1, -4572($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label530
label529:
label532:
	li $t0, 0
	sw $t0, -4576($fp)
	li $t0, 0
	sw $t0, -4580($fp)
	li $t0, 48105
	sw $t0, -4584($fp)
	lw $t1, -4584($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label537
label537:
	li $t0, 1
	sw $t0, -4580($fp)
label538:
	li $t0, 0
	sw $t0, -4588($fp)
	li $t0, 63131
	sw $t0, -4592($fp)
	li $t0, 0
	lw $t1, -4592($fp)
	sub $t0, $t0, $t1
	sw $t0, -4596($fp)
	lw $t1, -4596($fp)
	li $t2, 0
	bne $t1, $t2, label540
	j label539
label539:
	li $t0, 1
	sw $t0, -4588($fp)
label540:
	lw $t1, -4580($fp)
	lw $t2, -4588($fp)
	bne $t1, $t2, label535
	j label536
label535:
	li $t0, 1
	sw $t0, -4576($fp)
label536:
	addi $t0, $fp, -4216
	sw $t0, -4600($fp)
	li $t0, 0
	sw $t0, -4604($fp)
	li $t0, 4
	lw $t1, -4604($fp)
	mul $t0, $t0, $t1
	sw $t0, -4608($fp)
	lw $t0, -4608($fp)
	lw $t1, -4600($fp)
	add $t0, $t0, $t1
	sw $t0, -4612($fp)
	lw $t0, -4612($fp)
	lw $t1, 0($t0)
	sw $t1, -4616($fp)
	lw $t1, -4576($fp)
	lw $t2, -4616($fp)
	beq $t1, $t2, label533
	j label534
label533:
	li $t0, 0
	sw $t0, -4620($fp)
	li $t0, 0
	sw $t0, -4624($fp)
	lw $t0, -1216($fp)
	sw $t0, -4628($fp)
	lw $t0, -1228($fp)
	sw $t0, -4632($fp)
	li $t0, 0
	lw $t1, -4632($fp)
	sub $t0, $t0, $t1
	sw $t0, -4636($fp)
	li $t0, 0
	lw $t1, -4636($fp)
	sub $t0, $t0, $t1
	sw $t0, -4640($fp)
	lw $t1, -4628($fp)
	lw $t2, -4640($fp)
	bgt $t1, $t2, label543
	j label544
label543:
	li $t0, 1
	sw $t0, -4624($fp)
label544:
	li $t0, 0
	sw $t0, -4644($fp)
	li $t0, 0
	sw $t0, -4648($fp)
	lw $t0, -1168($fp)
	sw $t0, -4652($fp)
	lw $t0, -676($fp)
	sw $t0, -4656($fp)
	lw $t1, -4652($fp)
	lw $t2, -4656($fp)
	ble $t1, $t2, label547
	j label548
label547:
	li $t0, 1
	sw $t0, -4648($fp)
label548:
	lw $t0, -1300($fp)
	sw $t0, -4660($fp)
	lw $t1, -4648($fp)
	lw $t2, -4660($fp)
	ble $t1, $t2, label545
	j label546
label545:
	li $t0, 1
	sw $t0, -4644($fp)
label546:
	addi $sp, $sp, -4
	lw $t0, -4644($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4664($fp)
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -4668($fp)
	li $t0, 59507
	sw $t0, -4672($fp)
	lw $t0, -4668($fp)
	lw $t1, -4672($fp)
	mul $t0, $t0, $t1
	sw $t0, -4676($fp)
	addi $sp, $sp, -4
	lw $t0, -4664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4676($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4680($fp)
	addi $sp, $sp, 12
	li $t0, 34426
	sw $t0, -4684($fp)
	lw $t0, -4680($fp)
	lw $t1, -4684($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4688($fp)
	lw $t1, -4624($fp)
	lw $t2, -4688($fp)
	beq $t1, $t2, label541
	j label542
label541:
	li $t0, 1
	sw $t0, -4620($fp)
label542:
	j label532
label534:
label530:
label549:
	li $t0, 0
	sw $t0, -4692($fp)
	li $t0, 0
	sw $t0, -4696($fp)
	lw $t0, -1276($fp)
	sw $t0, -4700($fp)
	lw $t1, -4700($fp)
	li $t2, 0
	bne $t1, $t2, label555
	j label554
label554:
	li $t0, 1
	sw $t0, -4696($fp)
label555:
	lw $t0, -4224($fp)
	sw $t0, -4704($fp)
	li $t0, 57978
	sw $t0, -4708($fp)
	lw $t0, -4704($fp)
	lw $t1, -4708($fp)
	add $t0, $t0, $t1
	sw $t0, -4712($fp)
	lw $t1, -4696($fp)
	lw $t2, -4712($fp)
	ble $t1, $t2, label552
	j label553
label552:
	li $t0, 1
	sw $t0, -4692($fp)
label553:
	li $t0, 0
	sw $t0, -4716($fp)
	lw $t0, -688($fp)
	sw $t0, -4720($fp)
	lw $t0, -4260($fp)
	sw $t0, -4724($fp)
	lw $t0, -4720($fp)
	lw $t1, -4724($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4728($fp)
	li $t0, 52853
	sw $t0, -4732($fp)
	addi $sp, $sp, -4
	lw $t0, -4728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4732($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4736($fp)
	addi $sp, $sp, 12
	lw $t1, -4736($fp)
	li $t2, 0
	bne $t1, $t2, label557
	j label556
label556:
	li $t0, 1
	sw $t0, -4716($fp)
label557:
	lw $t1, -4692($fp)
	lw $t2, -4716($fp)
	blt $t1, $t2, label550
	j label551
label550:
	li $t0, 0
	sw $t0, -4740($fp)
	lw $t0, 4($fp)
	sw $t0, -4744($fp)
	li $t0, 42080
	sw $t0, -4748($fp)
	lw $t0, -4744($fp)
	lw $t1, -4748($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4752($fp)
	lw $t1, -4752($fp)
	li $t2, 0
	bne $t1, $t2, label560
	j label559
label560:
	li $t0, 0
	sw $t0, -4756($fp)
	li $t0, 56854
	sw $t0, -4760($fp)
	lw $t1, -4760($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label561
label561:
	li $t0, 1
	sw $t0, -4756($fp)
label562:
	li $t0, 52362
	sw $t0, -4764($fp)
	lw $t0, -4756($fp)
	lw $t1, -4764($fp)
	add $t0, $t0, $t1
	sw $t0, -4768($fp)
	lw $t1, -4768($fp)
	li $t2, 0
	bne $t1, $t2, label558
	j label559
label558:
	li $t0, 1
	sw $t0, -4740($fp)
label559:
	j label549
label551:
	addi $t0, $fp, -104
	sw $t0, -4772($fp)
	li $t0, 0
	sw $t0, -4776($fp)
	li $t0, 13648
	sw $t0, -4780($fp)
	lw $t1, -4780($fp)
	li $t2, 0
	bne $t1, $t2, label567
	j label566
label566:
	li $t0, 1
	sw $t0, -4776($fp)
label567:
	lw $t0, -4776($fp)
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	sw $t0, -4784($fp)
	li $t0, 4
	lw $t1, -4784($fp)
	mul $t0, $t0, $t1
	sw $t0, -4788($fp)
	lw $t0, -4788($fp)
	lw $t1, -4772($fp)
	add $t0, $t0, $t1
	sw $t0, -4792($fp)
	lw $t0, -4792($fp)
	lw $t1, 0($t0)
	sw $t1, -4796($fp)
	lw $t1, -4796($fp)
	li $t2, 0
	bne $t1, $t2, label563
	j label564
label563:
	li $t0, 0
	sw $t0, -4800($fp)
	li $t0, 58321
	sw $t0, -4804($fp)
	lw $t0, -1048($fp)
	sw $t0, -4808($fp)
	lw $t0, -4804($fp)
	lw $t1, -4808($fp)
	add $t0, $t0, $t1
	sw $t0, -4812($fp)
	li $t0, 11884
	sw $t0, -4816($fp)
	lw $t1, -4812($fp)
	lw $t2, -4816($fp)
	bgt $t1, $t2, label568
	j label569
label568:
	li $t0, 1
	sw $t0, -4800($fp)
label569:
	lw $ra, -4($fp)
	lw $v0, -4800($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label564:
label292:
	addi $t0, $fp, -28
	sw $t0, -4820($fp)
	li $t0, 0
	sw $t0, -4824($fp)
	li $t0, 4
	lw $t1, -4824($fp)
	mul $t0, $t0, $t1
	sw $t0, -4828($fp)
	lw $t0, -4828($fp)
	lw $t1, -4820($fp)
	add $t0, $t0, $t1
	sw $t0, -4832($fp)
	lw $t0, -4832($fp)
	lw $t1, 0($t0)
	sw $t1, -4836($fp)
	lw $t0, -4836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -4840($fp)
	li $t0, 1
	sw $t0, -4844($fp)
	li $t0, 4
	lw $t1, -4844($fp)
	mul $t0, $t0, $t1
	sw $t0, -4848($fp)
	lw $t0, -4848($fp)
	lw $t1, -4840($fp)
	add $t0, $t0, $t1
	sw $t0, -4852($fp)
	lw $t0, -4852($fp)
	lw $t1, 0($t0)
	sw $t1, -4856($fp)
	lw $t0, -4856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -4860($fp)
	li $t0, 2
	sw $t0, -4864($fp)
	li $t0, 4
	lw $t1, -4864($fp)
	mul $t0, $t0, $t1
	sw $t0, -4868($fp)
	lw $t0, -4868($fp)
	lw $t1, -4860($fp)
	add $t0, $t0, $t1
	sw $t0, -4872($fp)
	lw $t0, -4872($fp)
	lw $t1, 0($t0)
	sw $t1, -4876($fp)
	lw $t0, -4876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -4880($fp)
	li $t0, 3
	sw $t0, -4884($fp)
	li $t0, 4
	lw $t1, -4884($fp)
	mul $t0, $t0, $t1
	sw $t0, -4888($fp)
	lw $t0, -4888($fp)
	lw $t1, -4880($fp)
	add $t0, $t0, $t1
	sw $t0, -4892($fp)
	lw $t0, -4892($fp)
	lw $t1, 0($t0)
	sw $t1, -4896($fp)
	lw $t0, -4896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -4900($fp)
	li $t0, 4
	sw $t0, -4904($fp)
	li $t0, 4
	lw $t1, -4904($fp)
	mul $t0, $t0, $t1
	sw $t0, -4908($fp)
	lw $t0, -4908($fp)
	lw $t1, -4900($fp)
	add $t0, $t0, $t1
	sw $t0, -4912($fp)
	lw $t0, -4912($fp)
	lw $t1, 0($t0)
	sw $t1, -4916($fp)
	lw $t0, -4916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -4920($fp)
	li $t0, 5
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
	lw $t0, -4936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -292($fp)
	sw $t0, -4940($fp)
	lw $t0, -4940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4944($fp)
	li $t0, 0
	sw $t0, -4948($fp)
	li $t0, 4
	lw $t1, -4948($fp)
	mul $t0, $t0, $t1
	sw $t0, -4952($fp)
	lw $t0, -4952($fp)
	lw $t1, -4944($fp)
	add $t0, $t0, $t1
	sw $t0, -4956($fp)
	lw $t0, -4956($fp)
	lw $t1, 0($t0)
	sw $t1, -4960($fp)
	lw $t0, -4960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4964($fp)
	li $t0, 1
	sw $t0, -4968($fp)
	li $t0, 4
	lw $t1, -4968($fp)
	mul $t0, $t0, $t1
	sw $t0, -4972($fp)
	lw $t0, -4972($fp)
	lw $t1, -4964($fp)
	add $t0, $t0, $t1
	sw $t0, -4976($fp)
	lw $t0, -4976($fp)
	lw $t1, 0($t0)
	sw $t1, -4980($fp)
	lw $t0, -4980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4984($fp)
	li $t0, 2
	sw $t0, -4988($fp)
	li $t0, 4
	lw $t1, -4988($fp)
	mul $t0, $t0, $t1
	sw $t0, -4992($fp)
	lw $t0, -4992($fp)
	lw $t1, -4984($fp)
	add $t0, $t0, $t1
	sw $t0, -4996($fp)
	lw $t0, -4996($fp)
	lw $t1, 0($t0)
	sw $t1, -5000($fp)
	lw $t0, -5000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -5004($fp)
	li $t0, 3
	sw $t0, -5008($fp)
	li $t0, 4
	lw $t1, -5008($fp)
	mul $t0, $t0, $t1
	sw $t0, -5012($fp)
	lw $t0, -5012($fp)
	lw $t1, -5004($fp)
	add $t0, $t0, $t1
	sw $t0, -5016($fp)
	lw $t0, -5016($fp)
	lw $t1, 0($t0)
	sw $t1, -5020($fp)
	lw $t0, -5020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -5024($fp)
	li $t0, 4
	sw $t0, -5028($fp)
	li $t0, 4
	lw $t1, -5028($fp)
	mul $t0, $t0, $t1
	sw $t0, -5032($fp)
	lw $t0, -5032($fp)
	lw $t1, -5024($fp)
	add $t0, $t0, $t1
	sw $t0, -5036($fp)
	lw $t0, -5036($fp)
	lw $t1, 0($t0)
	sw $t1, -5040($fp)
	lw $t0, -5040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -5044($fp)
	li $t0, 5
	sw $t0, -5048($fp)
	li $t0, 4
	lw $t1, -5048($fp)
	mul $t0, $t0, $t1
	sw $t0, -5052($fp)
	lw $t0, -5052($fp)
	lw $t1, -5044($fp)
	add $t0, $t0, $t1
	sw $t0, -5056($fp)
	lw $t0, -5056($fp)
	lw $t1, 0($t0)
	sw $t1, -5060($fp)
	lw $t0, -5060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -5064($fp)
	li $t0, 6
	sw $t0, -5068($fp)
	li $t0, 4
	lw $t1, -5068($fp)
	mul $t0, $t0, $t1
	sw $t0, -5072($fp)
	lw $t0, -5072($fp)
	lw $t1, -5064($fp)
	add $t0, $t0, $t1
	sw $t0, -5076($fp)
	lw $t0, -5076($fp)
	lw $t1, 0($t0)
	sw $t1, -5080($fp)
	lw $t0, -5080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -5084($fp)
	li $t0, 7
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
	addi $t0, $fp, -64
	sw $t0, -5104($fp)
	li $t0, 8
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
	lw $t0, -520($fp)
	sw $t0, -5124($fp)
	lw $t0, -5124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -5128($fp)
	li $t0, 0
	sw $t0, -5132($fp)
	li $t0, 4
	lw $t1, -5132($fp)
	mul $t0, $t0, $t1
	sw $t0, -5136($fp)
	lw $t0, -5136($fp)
	lw $t1, -5128($fp)
	add $t0, $t0, $t1
	sw $t0, -5140($fp)
	lw $t0, -5140($fp)
	lw $t1, 0($t0)
	sw $t1, -5144($fp)
	lw $t0, -5144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -5148($fp)
	li $t0, 1
	sw $t0, -5152($fp)
	li $t0, 4
	lw $t1, -5152($fp)
	mul $t0, $t0, $t1
	sw $t0, -5156($fp)
	lw $t0, -5156($fp)
	lw $t1, -5148($fp)
	add $t0, $t0, $t1
	sw $t0, -5160($fp)
	lw $t0, -5160($fp)
	lw $t1, 0($t0)
	sw $t1, -5164($fp)
	lw $t0, -5164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -5168($fp)
	li $t0, 2
	sw $t0, -5172($fp)
	li $t0, 4
	lw $t1, -5172($fp)
	mul $t0, $t0, $t1
	sw $t0, -5176($fp)
	lw $t0, -5176($fp)
	lw $t1, -5168($fp)
	add $t0, $t0, $t1
	sw $t0, -5180($fp)
	lw $t0, -5180($fp)
	lw $t1, 0($t0)
	sw $t1, -5184($fp)
	lw $t0, -5184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -5188($fp)
	li $t0, 3
	sw $t0, -5192($fp)
	li $t0, 4
	lw $t1, -5192($fp)
	mul $t0, $t0, $t1
	sw $t0, -5196($fp)
	lw $t0, -5196($fp)
	lw $t1, -5188($fp)
	add $t0, $t0, $t1
	sw $t0, -5200($fp)
	lw $t0, -5200($fp)
	lw $t1, 0($t0)
	sw $t1, -5204($fp)
	lw $t0, -5204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -5208($fp)
	li $t0, 4
	sw $t0, -5212($fp)
	li $t0, 4
	lw $t1, -5212($fp)
	mul $t0, $t0, $t1
	sw $t0, -5216($fp)
	lw $t0, -5216($fp)
	lw $t1, -5208($fp)
	add $t0, $t0, $t1
	sw $t0, -5220($fp)
	lw $t0, -5220($fp)
	lw $t1, 0($t0)
	sw $t1, -5224($fp)
	lw $t0, -5224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -5228($fp)
	li $t0, 5
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
	lw $t0, -5244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -5248($fp)
	lw $t0, -5248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -5252($fp)
	lw $t0, -5252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -5256($fp)
	lw $t0, -5256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	sw $t0, -5260($fp)
	lw $t0, -5260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -5264($fp)
	li $t0, 0
	sw $t0, -5268($fp)
	li $t0, 4
	lw $t1, -5268($fp)
	mul $t0, $t0, $t1
	sw $t0, -5272($fp)
	lw $t0, -5272($fp)
	lw $t1, -5264($fp)
	add $t0, $t0, $t1
	sw $t0, -5276($fp)
	lw $t0, -5276($fp)
	lw $t1, 0($t0)
	sw $t1, -5280($fp)
	lw $t0, -5280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -5284($fp)
	li $t0, 1
	sw $t0, -5288($fp)
	li $t0, 4
	lw $t1, -5288($fp)
	mul $t0, $t0, $t1
	sw $t0, -5292($fp)
	lw $t0, -5292($fp)
	lw $t1, -5284($fp)
	add $t0, $t0, $t1
	sw $t0, -5296($fp)
	lw $t0, -5296($fp)
	lw $t1, 0($t0)
	sw $t1, -5300($fp)
	lw $t0, -5300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -5304($fp)
	li $t0, 2
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
	lw $t0, -5320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -104
	sw $t0, -5324($fp)
	li $t0, 3
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
	lw $t0, -5340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -820($fp)
	sw $t0, -5344($fp)
	lw $t0, -5344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -5348($fp)
	li $t0, 0
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
	addi $t0, $fp, -140
	sw $t0, -5368($fp)
	li $t0, 1
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
	addi $t0, $fp, -140
	sw $t0, -5388($fp)
	li $t0, 2
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
	addi $t0, $fp, -140
	sw $t0, -5408($fp)
	li $t0, 3
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
	addi $t0, $fp, -140
	sw $t0, -5428($fp)
	li $t0, 4
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
	lw $t0, -5444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -5448($fp)
	li $t0, 5
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
	lw $t0, -5464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -5468($fp)
	li $t0, 6
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
	lw $t0, -5484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -5488($fp)
	li $t0, 7
	sw $t0, -5492($fp)
	li $t0, 4
	lw $t1, -5492($fp)
	mul $t0, $t0, $t1
	sw $t0, -5496($fp)
	lw $t0, -5496($fp)
	lw $t1, -5488($fp)
	add $t0, $t0, $t1
	sw $t0, -5500($fp)
	lw $t0, -5500($fp)
	lw $t1, 0($t0)
	sw $t1, -5504($fp)
	lw $t0, -5504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -5508($fp)
	li $t0, 8
	sw $t0, -5512($fp)
	li $t0, 4
	lw $t1, -5512($fp)
	mul $t0, $t0, $t1
	sw $t0, -5516($fp)
	lw $t0, -5516($fp)
	lw $t1, -5508($fp)
	add $t0, $t0, $t1
	sw $t0, -5520($fp)
	lw $t0, -5520($fp)
	lw $t1, 0($t0)
	sw $t1, -5524($fp)
	lw $t0, -5524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1048($fp)
	sw $t0, -5528($fp)
	lw $t0, -5528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1060($fp)
	sw $t0, -5532($fp)
	lw $t0, -5532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1072($fp)
	sw $t0, -5536($fp)
	lw $t0, -5536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1084($fp)
	sw $t0, -5540($fp)
	lw $t0, -5540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1096($fp)
	sw $t0, -5544($fp)
	lw $t0, -5544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1108($fp)
	sw $t0, -5548($fp)
	lw $t0, -5548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1120($fp)
	sw $t0, -5552($fp)
	lw $t0, -5552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1132($fp)
	sw $t0, -5556($fp)
	lw $t0, -5556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1144($fp)
	sw $t0, -5560($fp)
	lw $t0, -5560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1156($fp)
	sw $t0, -5564($fp)
	lw $t0, -5564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1168($fp)
	sw $t0, -5568($fp)
	lw $t0, -5568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1180($fp)
	sw $t0, -5572($fp)
	lw $t0, -5572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1192($fp)
	sw $t0, -5576($fp)
	lw $t0, -5576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1204($fp)
	sw $t0, -5580($fp)
	lw $t0, -5580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1216($fp)
	sw $t0, -5584($fp)
	lw $t0, -5584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1228($fp)
	sw $t0, -5588($fp)
	lw $t0, -5588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1240($fp)
	sw $t0, -5592($fp)
	lw $t0, -5592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1252($fp)
	sw $t0, -5596($fp)
	lw $t0, -5596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1264($fp)
	sw $t0, -5600($fp)
	lw $t0, -5600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1276($fp)
	sw $t0, -5604($fp)
	lw $t0, -5604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1288($fp)
	sw $t0, -5608($fp)
	lw $t0, -5608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1300($fp)
	sw $t0, -5612($fp)
	lw $t0, -5612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1312($fp)
	sw $t0, -5616($fp)
	lw $t0, -5616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -140
	sw $t0, -5620($fp)
	li $t0, 0
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
	lw $ra, -4($fp)
	lw $v0, -5636($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1660
	li $t0, 59618
	sw $t0, -72($fp)
	addi $t0, $fp, -40
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
	li $t0, 14155
	sw $t0, -96($fp)
	addi $t0, $fp, -40
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
	li $t0, 10277
	sw $t0, -120($fp)
	addi $t0, $fp, -40
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
	li $t0, 56578
	sw $t0, -144($fp)
	addi $t0, $fp, -40
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
	li $t0, 56506
	sw $t0, -168($fp)
	addi $t0, $fp, -40
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
	li $t0, 23828
	sw $t0, -192($fp)
	addi $t0, $fp, -40
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
	li $t0, 64217
	sw $t0, -216($fp)
	addi $t0, $fp, -40
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
	li $t0, 47685
	sw $t0, -240($fp)
	addi $t0, $fp, -40
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
	li $t0, 47509
	sw $t0, -264($fp)
	addi $t0, $fp, -40
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
	li $t0, 60196
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	li $t0, 49951
	sw $t0, -300($fp)
	lw $t0, -300($fp)
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	li $t0, 56907
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	li $t0, 12347
	sw $t0, -324($fp)
	lw $t0, -324($fp)
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	li $t0, 4932
	sw $t0, -336($fp)
	addi $t0, $fp, -68
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
	li $t0, 27414
	sw $t0, -360($fp)
	addi $t0, $fp, -68
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
	li $t0, 60452
	sw $t0, -384($fp)
	addi $t0, $fp, -68
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
	li $t0, 2528
	sw $t0, -408($fp)
	addi $t0, $fp, -68
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
	li $t0, 43562
	sw $t0, -432($fp)
	addi $t0, $fp, -68
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
	li $t0, 20264
	sw $t0, -456($fp)
	addi $t0, $fp, -68
	sw $t0, -460($fp)
	li $t0, 5
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
	li $t0, 62035
	sw $t0, -480($fp)
	addi $t0, $fp, -68
	sw $t0, -484($fp)
	li $t0, 6
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
	li $t0, 12453
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	li $t0, 12706
	sw $t0, -516($fp)
	li $t0, 0
	sw $t0, -520($fp)
	li $t0, 54533
	sw $t0, -524($fp)
	lw $t1, -524($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label575
label575:
	li $t0, 4025
	sw $t0, -528($fp)
	lw $t1, -528($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label574
label573:
	li $t0, 1
	sw $t0, -520($fp)
label574:
	li $t0, 0
	sw $t0, -532($fp)
	li $t0, 49352
	sw $t0, -536($fp)
	lw $t1, -536($fp)
	li $t2, 0
	bne $t1, $t2, label577
	j label576
label576:
	li $t0, 1
	sw $t0, -532($fp)
label577:
	lw $t0, -304($fp)
	sw $t0, -540($fp)
	lw $t0, -532($fp)
	lw $t1, -540($fp)
	mul $t0, $t0, $t1
	sw $t0, -544($fp)
	addi $sp, $sp, -4
	lw $t0, -520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -544($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -548($fp)
	addi $sp, $sp, 12
	li $t0, 36178
	sw $t0, -552($fp)
	li $t0, 0
	lw $t1, -552($fp)
	sub $t0, $t0, $t1
	sw $t0, -556($fp)
	li $t0, 0
	lw $t1, -556($fp)
	sub $t0, $t0, $t1
	sw $t0, -560($fp)
	li $t0, 0
	lw $t1, -560($fp)
	sub $t0, $t0, $t1
	sw $t0, -564($fp)
	lw $t0, -548($fp)
	lw $t1, -564($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -568($fp)
	li $t0, 0
	lw $t1, -568($fp)
	sub $t0, $t0, $t1
	sw $t0, -572($fp)
	li $t0, 0
	lw $t1, -572($fp)
	sub $t0, $t0, $t1
	sw $t0, -576($fp)
	lw $t1, -576($fp)
	li $t2, 0
	bne $t1, $t2, label570
	j label571
label570:
	li $t0, 0
	sw $t0, -580($fp)
	li $t0, 0
	sw $t0, -584($fp)
	li $t0, 0
	sw $t0, -588($fp)
	li $t0, 2645
	sw $t0, -592($fp)
	lw $t1, -592($fp)
	li $t2, 0
	bne $t1, $t2, label584
	j label583
label583:
	li $t0, 1
	sw $t0, -588($fp)
label584:
	li $t0, 62346
	sw $t0, -596($fp)
	lw $t0, -588($fp)
	lw $t1, -596($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -600($fp)
	li $t0, 48063
	sw $t0, -604($fp)
	lw $t0, -328($fp)
	sw $t0, -608($fp)
	lw $t0, -604($fp)
	lw $t1, -608($fp)
	mul $t0, $t0, $t1
	sw $t0, -612($fp)
	lw $t1, -600($fp)
	lw $t2, -612($fp)
	beq $t1, $t2, label581
	j label582
label581:
	li $t0, 1
	sw $t0, -584($fp)
label582:
	addi $t0, $fp, -68
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
	li $t0, 42145
	sw $t0, -636($fp)
	lw $t0, -632($fp)
	lw $t1, -636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -640($fp)
	lw $t1, -584($fp)
	lw $t2, -640($fp)
	beq $t1, $t2, label580
	j label579
label580:
	li $t0, 54953
	sw $t0, -644($fp)
	lw $t0, -316($fp)
	sw $t0, -648($fp)
	li $t0, 0
	lw $t1, -648($fp)
	sub $t0, $t0, $t1
	sw $t0, -652($fp)
	lw $t0, -644($fp)
	lw $t1, -652($fp)
	sub $t0, $t0, $t1
	sw $t0, -656($fp)
	lw $t1, -656($fp)
	li $t2, 0
	bne $t1, $t2, label578
	j label579
label578:
	li $t0, 1
	sw $t0, -580($fp)
label579:
	j label572
label571:
label585:
	jal f8
	sw $v0, -660($fp)
	addi $sp, $sp, 4
	lw $t1, -660($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label588
label588:
	jal f8
	sw $v0, -664($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -668($fp)
	li $t0, 16219
	sw $t0, -672($fp)
	lw $t1, -672($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label589
label589:
	li $t0, 1
	sw $t0, -668($fp)
label590:
	lw $t1, -664($fp)
	lw $t2, -668($fp)
	beq $t1, $t2, label586
	j label587
label586:
label591:
	jal f8
	sw $v0, -676($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -676($fp)
	sub $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $t1, -680($fp)
	li $t2, 0
	bne $t1, $t2, label592
	j label593
label592:
	li $t0, 0
	sw $t0, -684($fp)
	lw $t0, -328($fp)
	sw $t0, -688($fp)
	lw $t1, -688($fp)
	li $t2, 0
	bne $t1, $t2, label594
	j label596
label596:
	addi $t0, $fp, -40
	sw $t0, -692($fp)
	li $t0, 7
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
	li $t0, 40048
	sw $t0, -712($fp)
	li $t0, 31869
	sw $t0, -716($fp)
	lw $t0, -712($fp)
	lw $t1, -716($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -720($fp)
	lw $t0, -708($fp)
	lw $t1, -720($fp)
	add $t0, $t0, $t1
	sw $t0, -724($fp)
	lw $t1, -724($fp)
	li $t2, 0
	bne $t1, $t2, label594
	j label595
label594:
	li $t0, 1
	sw $t0, -684($fp)
label595:
	j label591
label593:
	j label585
label587:
label572:
label597:
	jal f8
	sw $v0, -728($fp)
	addi $sp, $sp, 4
	lw $t1, -728($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label599
label598:
label600:
	lw $t0, -508($fp)
	sw $t0, -732($fp)
	li $t0, 0
	sw $t0, -736($fp)
	addi $t0, $fp, -40
	sw $t0, -740($fp)
	li $t0, 5
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
	lw $t0, -292($fp)
	sw $t0, -760($fp)
	lw $t1, -756($fp)
	lw $t2, -760($fp)
	ble $t1, $t2, label603
	j label604
label603:
	li $t0, 1
	sw $t0, -736($fp)
label604:
	addi $sp, $sp, -4
	lw $t0, -736($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -764($fp)
	addi $sp, $sp, 8
	lw $t1, -732($fp)
	lw $t2, -764($fp)
	bne $t1, $t2, label601
	j label602
label601:
	lw $t0, -316($fp)
	sw $t0, -768($fp)
	lw $t1, -768($fp)
	li $t2, 0
	bne $t1, $t2, label605
	j label606
label605:
	li $t0, 26530
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	li $t0, 12488
	sw $t0, -820($fp)
	addi $t0, $fp, -800
	sw $t0, -824($fp)
	li $t0, 0
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t0, -824($fp)
	lw $t1, -832($fp)
	add $t0, $t0, $t1
	sw $t0, -836($fp)
	lw $t0, -820($fp)
	lw $t1, -836($fp)
	sw $t0, 0($t1)
	lw $t0, -836($fp)
	lw $t1, 0($t0)
	sw $t1, -840($fp)
	li $t0, 13392
	sw $t0, -844($fp)
	addi $t0, $fp, -800
	sw $t0, -848($fp)
	li $t0, 1
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -856($fp)
	lw $t0, -848($fp)
	lw $t1, -856($fp)
	add $t0, $t0, $t1
	sw $t0, -860($fp)
	lw $t0, -844($fp)
	lw $t1, -860($fp)
	sw $t0, 0($t1)
	lw $t0, -860($fp)
	lw $t1, 0($t0)
	sw $t1, -864($fp)
	li $t0, 38877
	sw $t0, -868($fp)
	addi $t0, $fp, -800
	sw $t0, -872($fp)
	li $t0, 2
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
	li $t0, 17420
	sw $t0, -892($fp)
	addi $t0, $fp, -800
	sw $t0, -896($fp)
	li $t0, 3
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
	li $t0, 40806
	sw $t0, -916($fp)
	addi $t0, $fp, -800
	sw $t0, -920($fp)
	li $t0, 4
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
	li $t0, 33793
	sw $t0, -940($fp)
	addi $t0, $fp, -800
	sw $t0, -944($fp)
	li $t0, 5
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
	li $t0, 19948
	sw $t0, -964($fp)
	addi $t0, $fp, -800
	sw $t0, -968($fp)
	li $t0, 6
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
	li $t0, 18833
	sw $t0, -988($fp)
	addi $t0, $fp, -800
	sw $t0, -992($fp)
	li $t0, 7
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
	li $t0, 54057
	sw $t0, -1012($fp)
	addi $t0, $fp, -804
	sw $t0, -1016($fp)
	li $t0, 0
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
	lw $t0, -292($fp)
	sw $t0, -1036($fp)
	lw $t0, -1036($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -1040($fp)
label608:
	li $t0, 0
	sw $t0, -1044($fp)
	addi $t0, $fp, -68
	sw $t0, -1048($fp)
	lw $t0, -812($fp)
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
	lw $t1, -1064($fp)
	li $t2, 0
	bne $t1, $t2, label613
	j label612
label612:
	li $t0, 1
	sw $t0, -1044($fp)
label613:
	addi $t0, $fp, -800
	sw $t0, -1068($fp)
	lw $t0, -812($fp)
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
	lw $t0, -1044($fp)
	lw $t1, -1084($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1088($fp)
	li $t0, 16447
	sw $t0, -1092($fp)
	li $t0, 31286
	sw $t0, -1096($fp)
	lw $t0, -1092($fp)
	lw $t1, -1096($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1100($fp)
	li $t0, 1228
	sw $t0, -1104($fp)
	lw $t0, -1100($fp)
	lw $t1, -1104($fp)
	mul $t0, $t0, $t1
	sw $t0, -1108($fp)
	lw $t1, -1088($fp)
	lw $t2, -1108($fp)
	bgt $t1, $t2, label611
	j label610
label611:
	li $t0, 0
	sw $t0, -1112($fp)
	li $t0, 0
	sw $t0, -1116($fp)
	addi $t0, $fp, -804
	sw $t0, -1120($fp)
	lw $t0, -316($fp)
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
	li $t0, 20283
	sw $t0, -1140($fp)
	lw $t1, -1136($fp)
	lw $t2, -1140($fp)
	blt $t1, $t2, label616
	j label617
label616:
	li $t0, 1
	sw $t0, -1116($fp)
label617:
	li $t0, 263
	sw $t0, -1144($fp)
	addi $sp, $sp, -4
	lw $t0, -1116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1144($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1148($fp)
	addi $sp, $sp, 12
	lw $t1, -1148($fp)
	li $t2, 0
	bne $t1, $t2, label615
	j label614
label614:
	li $t0, 1
	sw $t0, -1112($fp)
label615:
	lw $t0, -508($fp)
	sw $t0, -1152($fp)
	lw $t0, -316($fp)
	sw $t0, -1156($fp)
	lw $t0, -1152($fp)
	lw $t1, -1156($fp)
	mul $t0, $t0, $t1
	sw $t0, -1160($fp)
	lw $t1, -1112($fp)
	lw $t2, -1160($fp)
	bgt $t1, $t2, label609
	j label610
label609:
	addi $t0, $fp, -40
	sw $t0, -1164($fp)
	addi $t0, $fp, -68
	sw $t0, -1168($fp)
	li $t0, 5
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
	li $t0, 22929
	sw $t0, -1188($fp)
	lw $t0, -1184($fp)
	lw $t1, -1188($fp)
	add $t0, $t0, $t1
	sw $t0, -1192($fp)
	lw $t0, -304($fp)
	sw $t0, -1196($fp)
	li $t0, 2063
	sw $t0, -1200($fp)
	lw $t0, -1196($fp)
	lw $t1, -1200($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1204($fp)
	lw $t0, -1192($fp)
	lw $t1, -1204($fp)
	sub $t0, $t0, $t1
	sw $t0, -1208($fp)
	li $t0, 4
	lw $t1, -1208($fp)
	mul $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	lw $t1, -1164($fp)
	add $t0, $t0, $t1
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	lw $t1, 0($t0)
	sw $t1, -1220($fp)
	j label608
label610:
	j label607
label606:
	li $t0, 0
	sw $t0, -1224($fp)
	addi $t0, $fp, -40
	sw $t0, -1228($fp)
	li $t0, 8
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
	lw $t1, -1244($fp)
	li $t2, 0
	bne $t1, $t2, label619
	j label618
label618:
	li $t0, 1
	sw $t0, -1224($fp)
label619:
	lw $t0, -328($fp)
	sw $t0, -1248($fp)
	lw $t0, -1224($fp)
	lw $t1, -1248($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1252($fp)
	li $t0, 0
	sw $t0, -1256($fp)
	li $t0, 8005
	sw $t0, -1260($fp)
	lw $t1, -1260($fp)
	li $t2, 0
	bne $t1, $t2, label621
	j label620
label620:
	li $t0, 1
	sw $t0, -1256($fp)
label621:
	lw $t0, -328($fp)
	sw $t0, -1264($fp)
	addi $t0, $fp, -68
	sw $t0, -1268($fp)
	li $t0, 0
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
	lw $t0, -1264($fp)
	lw $t1, -1284($fp)
	mul $t0, $t0, $t1
	sw $t0, -1288($fp)
	li $t0, 0
	lw $t1, -1288($fp)
	sub $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t0, -1256($fp)
	lw $t1, -1292($fp)
	sub $t0, $t0, $t1
	sw $t0, -1296($fp)
	li $t0, 0
	sw $t0, -1300($fp)
	li $t0, 24225
	sw $t0, -1304($fp)
	lw $t1, -1304($fp)
	li $t2, 0
	bne $t1, $t2, label622
	j label624
label624:
	jal f8
	sw $v0, -1308($fp)
	addi $sp, $sp, 4
	lw $t1, -1308($fp)
	li $t2, 0
	bne $t1, $t2, label623
	j label622
label622:
	li $t0, 1
	sw $t0, -1300($fp)
label623:
label607:
	j label600
label602:
	j label597
label599:
	addi $t0, $fp, -40
	sw $t0, -1312($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -1332($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -1352($fp)
	li $t0, 2
	sw $t0, -1356($fp)
	li $t0, 4
	lw $t1, -1356($fp)
	mul $t0, $t0, $t1
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	lw $t1, -1352($fp)
	add $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	lw $t1, 0($t0)
	sw $t1, -1368($fp)
	lw $t0, -1368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1372($fp)
	li $t0, 3
	sw $t0, -1376($fp)
	li $t0, 4
	lw $t1, -1376($fp)
	mul $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	lw $t1, -1372($fp)
	add $t0, $t0, $t1
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	lw $t1, 0($t0)
	sw $t1, -1388($fp)
	lw $t0, -1388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1392($fp)
	li $t0, 4
	sw $t0, -1396($fp)
	li $t0, 4
	lw $t1, -1396($fp)
	mul $t0, $t0, $t1
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	lw $t1, -1392($fp)
	add $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t0, -1404($fp)
	lw $t1, 0($t0)
	sw $t1, -1408($fp)
	lw $t0, -1408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1412($fp)
	li $t0, 5
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
	lw $t0, -1428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1432($fp)
	li $t0, 6
	sw $t0, -1436($fp)
	li $t0, 4
	lw $t1, -1436($fp)
	mul $t0, $t0, $t1
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	lw $t1, -1432($fp)
	add $t0, $t0, $t1
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	lw $t1, 0($t0)
	sw $t1, -1448($fp)
	lw $t0, -1448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1452($fp)
	li $t0, 7
	sw $t0, -1456($fp)
	li $t0, 4
	lw $t1, -1456($fp)
	mul $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	lw $t1, -1452($fp)
	add $t0, $t0, $t1
	sw $t0, -1464($fp)
	lw $t0, -1464($fp)
	lw $t1, 0($t0)
	sw $t1, -1468($fp)
	lw $t0, -1468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -1472($fp)
	li $t0, 8
	sw $t0, -1476($fp)
	li $t0, 4
	lw $t1, -1476($fp)
	mul $t0, $t0, $t1
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	lw $t1, -1472($fp)
	add $t0, $t0, $t1
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	lw $t1, 0($t0)
	sw $t1, -1488($fp)
	lw $t0, -1488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -292($fp)
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -304($fp)
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -316($fp)
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -328($fp)
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1508($fp)
	li $t0, 0
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
	addi $t0, $fp, -68
	sw $t0, -1528($fp)
	li $t0, 1
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
	addi $t0, $fp, -68
	sw $t0, -1548($fp)
	li $t0, 2
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
	addi $t0, $fp, -68
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
	lw $t0, -1584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1588($fp)
	li $t0, 4
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
	addi $t0, $fp, -68
	sw $t0, -1608($fp)
	li $t0, 5
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
	addi $t0, $fp, -68
	sw $t0, -1628($fp)
	li $t0, 6
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
	lw $t0, -508($fp)
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	jal f8
	sw $v0, -1652($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1652($fp)
	sub $t0, $t0, $t1
	sw $t0, -1656($fp)
	li $t0, 0
	lw $t1, -1656($fp)
	sub $t0, $t0, $t1
	sw $t0, -1660($fp)
	li $t0, 0
	lw $t1, -1660($fp)
	sub $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $ra, -4($fp)
	lw $v0, -1664($fp)
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
	addi $sp, $sp, -6256
	li $t0, 28766
	sw $t0, -60($fp)
	addi $t0, $fp, -28
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
	li $t0, 33532
	sw $t0, -84($fp)
	addi $t0, $fp, -28
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
	li $t0, 64273
	sw $t0, -108($fp)
	addi $t0, $fp, -28
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
	li $t0, 60636
	sw $t0, -132($fp)
	addi $t0, $fp, -28
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
	li $t0, 61605
	sw $t0, -156($fp)
	addi $t0, $fp, -28
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
	li $t0, 20758
	sw $t0, -180($fp)
	addi $t0, $fp, -28
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
	li $t0, 21630
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	li $t0, 8557
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -224($fp)
	li $t0, 34151
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	li $t0, 60507
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	li $t0, 25977
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	li $t0, 9421
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	li $t0, 28764
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	li $t0, 45926
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	li $t0, 28254
	sw $t0, -300($fp)
	addi $t0, $fp, -52
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
	li $t0, 17286
	sw $t0, -324($fp)
	addi $t0, $fp, -52
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
	li $t0, 62373
	sw $t0, -348($fp)
	addi $t0, $fp, -52
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
	li $t0, 59540
	sw $t0, -372($fp)
	addi $t0, $fp, -52
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
	li $t0, 18514
	sw $t0, -396($fp)
	addi $t0, $fp, -52
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
	li $t0, 62637
	sw $t0, -420($fp)
	addi $t0, $fp, -52
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
	li $t0, 14288
	sw $t0, -444($fp)
	addi $t0, $fp, -56
	sw $t0, -448($fp)
	li $t0, 0
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
	li $t0, 23767
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	li $t0, 33543
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	li $t0, 37217
	sw $t0, -492($fp)
	lw $t1, -492($fp)
	li $t2, 0
	bne $t1, $t2, label628
	j label626
label628:
	lw $t0, -292($fp)
	sw $t0, -496($fp)
	lw $t1, -496($fp)
	li $t2, 0
	bne $t1, $t2, label625
	j label626
label625:
	lw $t0, -256($fp)
	sw $t0, -500($fp)
	li $t0, 25830
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -508($fp)
	addi $sp, $sp, -4
	lw $t0, -500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -508($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -512($fp)
	addi $sp, $sp, 12
	lw $t0, 12($fp)
	sw $t0, -516($fp)
	lw $t0, -512($fp)
	lw $t1, -516($fp)
	mul $t0, $t0, $t1
	sw $t0, -520($fp)
	addi $t0, $fp, -52
	sw $t0, -524($fp)
	lw $t0, -208($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -532($fp)
	li $t0, 4
	lw $t1, -532($fp)
	mul $t0, $t0, $t1
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	lw $t1, -524($fp)
	add $t0, $t0, $t1
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	lw $t1, 0($t0)
	sw $t1, -544($fp)
	lw $t1, -520($fp)
	lw $t2, -544($fp)
	bge $t1, $t2, label629
	j label630
label629:
	li $t0, 0
	sw $t0, -548($fp)
	addi $t0, $fp, -28
	sw $t0, -552($fp)
	li $t0, 52512
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -560($fp)
	addi $sp, $sp, -4
	lw $t0, -560($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -564($fp)
	addi $sp, $sp, 8
	li $t0, 4
	lw $t1, -564($fp)
	mul $t0, $t0, $t1
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	lw $t1, -552($fp)
	add $t0, $t0, $t1
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	lw $t1, 0($t0)
	sw $t1, -576($fp)
	lw $t1, -576($fp)
	li $t2, 0
	bne $t1, $t2, label633
	j label632
label632:
	li $t0, 1
	sw $t0, -548($fp)
label633:
	li $t0, 35408
	sw $t0, -580($fp)
	lw $t0, -548($fp)
	lw $t1, -580($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -584($fp)
	j label631
label630:
label634:
	addi $t0, $fp, -56
	sw $t0, -588($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -604($fp)
	sub $t0, $t0, $t1
	sw $t0, -608($fp)
	addi $sp, $sp, -4
	lw $t0, -608($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -612($fp)
	addi $sp, $sp, 8
	lw $t1, -612($fp)
	li $t2, 0
	bne $t1, $t2, label635
	j label636
label635:
	li $t0, 23017
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	li $t0, 58060
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -732($fp)
	li $t0, 11321
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -744($fp)
	li $t0, 56550
	sw $t0, -748($fp)
	addi $t0, $fp, -624
	sw $t0, -752($fp)
	li $t0, 0
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
	li $t0, 56797
	sw $t0, -772($fp)
	addi $t0, $fp, -624
	sw $t0, -776($fp)
	li $t0, 1
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -784($fp)
	lw $t0, -776($fp)
	lw $t1, -784($fp)
	add $t0, $t0, $t1
	sw $t0, -788($fp)
	lw $t0, -772($fp)
	lw $t1, -788($fp)
	sw $t0, 0($t1)
	lw $t0, -788($fp)
	lw $t1, 0($t0)
	sw $t1, -792($fp)
	li $t0, 6421
	sw $t0, -796($fp)
	addi $t0, $fp, -624
	sw $t0, -800($fp)
	li $t0, 2
	sw $t0, -804($fp)
	lw $t0, -804($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -808($fp)
	lw $t0, -800($fp)
	lw $t1, -808($fp)
	add $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t0, -796($fp)
	lw $t1, -812($fp)
	sw $t0, 0($t1)
	lw $t0, -812($fp)
	lw $t1, 0($t0)
	sw $t1, -816($fp)
	li $t0, 52619
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, -828($fp)
	li $t0, 12020
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	li $t0, 28051
	sw $t0, -844($fp)
	addi $t0, $fp, -660
	sw $t0, -848($fp)
	li $t0, 0
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -856($fp)
	lw $t0, -848($fp)
	lw $t1, -856($fp)
	add $t0, $t0, $t1
	sw $t0, -860($fp)
	lw $t0, -844($fp)
	lw $t1, -860($fp)
	sw $t0, 0($t1)
	lw $t0, -860($fp)
	lw $t1, 0($t0)
	sw $t1, -864($fp)
	li $t0, 61176
	sw $t0, -868($fp)
	addi $t0, $fp, -660
	sw $t0, -872($fp)
	li $t0, 1
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
	li $t0, 46171
	sw $t0, -892($fp)
	addi $t0, $fp, -660
	sw $t0, -896($fp)
	li $t0, 2
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
	li $t0, 23022
	sw $t0, -916($fp)
	addi $t0, $fp, -660
	sw $t0, -920($fp)
	li $t0, 3
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
	li $t0, 21617
	sw $t0, -940($fp)
	addi $t0, $fp, -660
	sw $t0, -944($fp)
	li $t0, 4
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
	li $t0, 55592
	sw $t0, -964($fp)
	addi $t0, $fp, -660
	sw $t0, -968($fp)
	li $t0, 5
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
	li $t0, 51786
	sw $t0, -988($fp)
	addi $t0, $fp, -660
	sw $t0, -992($fp)
	li $t0, 6
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
	li $t0, 2007
	sw $t0, -1012($fp)
	addi $t0, $fp, -660
	sw $t0, -1016($fp)
	li $t0, 7
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
	li $t0, 18311
	sw $t0, -1036($fp)
	addi $t0, $fp, -660
	sw $t0, -1040($fp)
	li $t0, 8
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
	li $t0, 3536
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -1068($fp)
	li $t0, 64381
	sw $t0, -1072($fp)
	lw $t0, -1072($fp)
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -1080($fp)
	li $t0, 12315
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -1092($fp)
	li $t0, 22050
	sw $t0, -1096($fp)
	addi $t0, $fp, -700
	sw $t0, -1100($fp)
	li $t0, 0
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
	li $t0, 61482
	sw $t0, -1120($fp)
	addi $t0, $fp, -700
	sw $t0, -1124($fp)
	li $t0, 1
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
	li $t0, 26603
	sw $t0, -1144($fp)
	addi $t0, $fp, -700
	sw $t0, -1148($fp)
	li $t0, 2
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
	li $t0, 45817
	sw $t0, -1168($fp)
	addi $t0, $fp, -700
	sw $t0, -1172($fp)
	li $t0, 3
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
	li $t0, 29489
	sw $t0, -1192($fp)
	addi $t0, $fp, -700
	sw $t0, -1196($fp)
	li $t0, 4
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
	li $t0, 63820
	sw $t0, -1216($fp)
	addi $t0, $fp, -700
	sw $t0, -1220($fp)
	li $t0, 5
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
	li $t0, 6111
	sw $t0, -1240($fp)
	addi $t0, $fp, -700
	sw $t0, -1244($fp)
	li $t0, 6
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
	li $t0, 16465
	sw $t0, -1264($fp)
	addi $t0, $fp, -700
	sw $t0, -1268($fp)
	li $t0, 7
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
	li $t0, 33693
	sw $t0, -1288($fp)
	addi $t0, $fp, -700
	sw $t0, -1292($fp)
	li $t0, 8
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
	li $t0, 39947
	sw $t0, -1312($fp)
	addi $t0, $fp, -700
	sw $t0, -1316($fp)
	li $t0, 9
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
	li $t0, 64555
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	sw $t0, -1344($fp)
	li $t0, 56710
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	sw $t0, -1356($fp)
	li $t0, 32471
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -1368($fp)
	li $t0, 10340
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	sw $t0, -1380($fp)
	li $t0, 47724
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -1392($fp)
	li $t0, 23733
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -1404($fp)
	li $t0, 16761
	sw $t0, -1408($fp)
	addi $t0, $fp, -708
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
	li $t0, 34807
	sw $t0, -1432($fp)
	addi $t0, $fp, -708
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
	li $t0, 35753
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -1464($fp)
	li $t0, 44812
	sw $t0, -1468($fp)
	lw $t0, -1468($fp)
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, -1476($fp)
	li $t0, 30447
	sw $t0, -1480($fp)
	lw $t0, -1480($fp)
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	sw $t0, -1488($fp)
	li $t0, 16388
	sw $t0, -1492($fp)
	lw $t0, -1492($fp)
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	sw $t0, -1500($fp)
	li $t0, 2298
	sw $t0, -1504($fp)
	lw $t0, -1504($fp)
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -1512($fp)
	li $t0, 52065
	sw $t0, -1516($fp)
	lw $t0, -1516($fp)
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -1524($fp)
	li $t0, 6444
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	sw $t0, -1536($fp)
	li $t0, 54085
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -1548($fp)
	li $t0, 54072
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	sw $t0, -1560($fp)
	li $t0, 24755
	sw $t0, -1564($fp)
	lw $t0, -1564($fp)
	sw $t0, -1568($fp)
	lw $t0, -1568($fp)
	sw $t0, -1572($fp)
	li $t0, 57621
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	sw $t0, -1584($fp)
	li $t0, 52917
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	sw $t0, -1596($fp)
	li $t0, 37071
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	sw $t0, -1608($fp)
label637:
	lw $t0, -244($fp)
	sw $t0, -1612($fp)
	lw $t1, -1612($fp)
	li $t2, 0
	bne $t1, $t2, label638
	j label639
label638:
label640:
	li $t0, 0
	sw $t0, -1616($fp)
	lw $t0, -1472($fp)
	sw $t0, -1620($fp)
	lw $t0, -1532($fp)
	sw $t0, -1624($fp)
	lw $t1, -1620($fp)
	lw $t2, -1624($fp)
	beq $t1, $t2, label643
	j label644
label643:
	li $t0, 1
	sw $t0, -1616($fp)
label644:
	lw $t0, -1616($fp)
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	sw $t0, -1632($fp)
	lw $t1, -1632($fp)
	li $t2, 0
	bne $t1, $t2, label641
	j label642
label641:
	li $t0, 14136
	sw $t0, -1636($fp)
	lw $t1, -1636($fp)
	li $t2, 0
	bne $t1, $t2, label646
	j label645
label645:
	addi $t0, $fp, -700
	sw $t0, -1640($fp)
	li $t0, 0
	sw $t0, -1644($fp)
	jal f8
	sw $v0, -1648($fp)
	addi $sp, $sp, 4
	lw $t1, -1648($fp)
	li $t2, 0
	bne $t1, $t2, label653
	j label651
label653:
	lw $t0, 16($fp)
	sw $t0, -1652($fp)
	lw $t1, -1652($fp)
	li $t2, 0
	bne $t1, $t2, label654
	j label652
label654:
	li $t0, 48863
	sw $t0, -1656($fp)
	lw $t1, -1656($fp)
	li $t2, 0
	bne $t1, $t2, label651
	j label652
label651:
	li $t0, 1
	sw $t0, -1644($fp)
label652:
	li $t0, 4
	lw $t1, -1644($fp)
	mul $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	lw $t1, -1640($fp)
	add $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	lw $t1, 0($t0)
	sw $t1, -1668($fp)
	lw $t1, -1668($fp)
	li $t2, 0
	bne $t1, $t2, label648
	j label649
label648:
	li $t0, 0
	sw $t0, -1672($fp)
	li $t0, 63674
	sw $t0, -1676($fp)
	lw $t1, -1676($fp)
	li $t2, 0
	bne $t1, $t2, label656
	j label655
label655:
	li $t0, 1
	sw $t0, -1672($fp)
label656:
	lw $t0, -1388($fp)
	sw $t0, -1680($fp)
	lw $t0, -1672($fp)
	lw $t1, -1680($fp)
	add $t0, $t0, $t1
	sw $t0, -1684($fp)
	j label650
label649:
	jal f8
	sw $v0, -1688($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -1692($fp)
	li $t0, 59953
	sw $t0, -1696($fp)
	li $t0, 0
	lw $t1, -1696($fp)
	sub $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t1, -1700($fp)
	li $t2, 0
	bne $t1, $t2, label658
	j label657
label657:
	li $t0, 1
	sw $t0, -1692($fp)
label658:
	lw $t0, -1688($fp)
	lw $t1, -1692($fp)
	add $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $ra, -4($fp)
	lw $v0, -1704($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label650:
	j label647
label646:
	li $t0, 12816
	sw $t0, -1708($fp)
	li $t0, 61959
	sw $t0, -1712($fp)
	lw $t0, -1708($fp)
	lw $t1, -1712($fp)
	sub $t0, $t0, $t1
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, -1724($fp)
	lw $t1, -1724($fp)
	li $t2, 0
	bne $t1, $t2, label659
	j label660
label659:
	li $t0, 529
	sw $t0, -1728($fp)
	li $t0, 0
	sw $t0, -1732($fp)
	lw $t0, -740($fp)
	sw $t0, -1736($fp)
	lw $t1, -1736($fp)
	li $t2, 0
	bne $t1, $t2, label666
	j label665
label665:
	li $t0, 1
	sw $t0, -1732($fp)
label666:
	lw $t0, -1728($fp)
	lw $t1, -1732($fp)
	add $t0, $t0, $t1
	sw $t0, -1740($fp)
	li $t0, 0
	sw $t0, -1744($fp)
	li $t0, 0
	sw $t0, -1748($fp)
	lw $t0, -1400($fp)
	sw $t0, -1752($fp)
	li $t0, 29281
	sw $t0, -1756($fp)
	lw $t0, -1752($fp)
	lw $t1, -1756($fp)
	sub $t0, $t0, $t1
	sw $t0, -1760($fp)
	lw $t1, -1760($fp)
	li $t2, 0
	bne $t1, $t2, label669
	j label671
label671:
	li $t0, 30116
	sw $t0, -1764($fp)
	lw $t1, -1764($fp)
	li $t2, 0
	bne $t1, $t2, label669
	j label670
label669:
	li $t0, 1
	sw $t0, -1748($fp)
label670:
	addi $sp, $sp, -4
	lw $t0, -1748($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1768($fp)
	addi $sp, $sp, 8
	lw $t1, -1768($fp)
	li $t2, 0
	bne $t1, $t2, label668
	j label667
label667:
	li $t0, 1
	sw $t0, -1744($fp)
label668:
	lw $t0, -1740($fp)
	lw $t1, -1744($fp)
	sub $t0, $t0, $t1
	sw $t0, -1772($fp)
	li $t0, 3479
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	sw $t0, -1780($fp)
	li $t0, 0
	sw $t0, -1784($fp)
	li $t0, 21290
	sw $t0, -1788($fp)
	li $t0, 7411
	sw $t0, -1792($fp)
	lw $t0, -1788($fp)
	lw $t1, -1792($fp)
	sub $t0, $t0, $t1
	sw $t0, -1796($fp)
	li $t0, 38641
	sw $t0, -1800($fp)
	lw $t1, -1796($fp)
	lw $t2, -1800($fp)
	bne $t1, $t2, label672
	j label673
label672:
	li $t0, 1
	sw $t0, -1784($fp)
label673:
	li $t0, 0
	sw $t0, -1804($fp)
	lw $t0, -1532($fp)
	sw $t0, -1808($fp)
	li $t0, 28301
	sw $t0, -1812($fp)
	lw $t1, -1808($fp)
	lw $t2, -1812($fp)
	blt $t1, $t2, label676
	j label675
label676:
	lw $t0, -1580($fp)
	sw $t0, -1816($fp)
	lw $t1, -1816($fp)
	li $t2, 0
	bne $t1, $t2, label674
	j label675
label674:
	li $t0, 1
	sw $t0, -1804($fp)
label675:
	li $t0, 40476
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -220($fp)
	lw $t0, -220($fp)
	sw $t0, -1824($fp)
	lw $t0, -244($fp)
	sw $t0, -1828($fp)
	addi $sp, $sp, -4
	lw $t0, -1780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1828($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -1832($fp)
	addi $sp, $sp, 24
	lw $t0, -1772($fp)
	lw $t1, -1832($fp)
	sub $t0, $t0, $t1
	sw $t0, -1836($fp)
	lw $t1, -1836($fp)
	li $t2, 0
	bne $t1, $t2, label662
	j label663
label662:
	jal f8
	sw $v0, -1840($fp)
	addi $sp, $sp, 4
	lw $t1, -1840($fp)
	li $t2, 0
	bne $t1, $t2, label677
	j label678
label677:
	li $t0, 31144
	sw $t0, -1844($fp)
	j label679
label678:
	lw $t0, -1472($fp)
	sw $t0, -1848($fp)
	addi $t0, $fp, -708
	sw $t0, -1852($fp)
	addi $t0, $fp, -28
	sw $t0, -1856($fp)
	lw $t0, -728($fp)
	sw $t0, -1860($fp)
	li $t0, 4
	lw $t1, -1860($fp)
	mul $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	lw $t1, -1856($fp)
	add $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	lw $t1, 0($t0)
	sw $t1, -1872($fp)
	li $t0, 4
	lw $t1, -1872($fp)
	mul $t0, $t0, $t1
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	lw $t1, -1852($fp)
	add $t0, $t0, $t1
	sw $t0, -1880($fp)
	lw $t0, -1880($fp)
	lw $t1, 0($t0)
	sw $t1, -1884($fp)
	lw $t0, -1848($fp)
	lw $t1, -1884($fp)
	mul $t0, $t0, $t1
	sw $t0, -1888($fp)
label679:
	j label664
label663:
	lw $t0, -1076($fp)
	sw $t0, -1892($fp)
label664:
label660:
label647:
	j label640
label642:
	j label637
label639:
	li $t0, 55403
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	sw $t0, -1936($fp)
	li $t0, 38286
	sw $t0, -1940($fp)
	addi $t0, $fp, -1924
	sw $t0, -1944($fp)
	li $t0, 0
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
	li $t0, 1361
	sw $t0, -1964($fp)
	addi $t0, $fp, -1924
	sw $t0, -1968($fp)
	li $t0, 1
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
	li $t0, 34679
	sw $t0, -1988($fp)
	addi $t0, $fp, -1924
	sw $t0, -1992($fp)
	li $t0, 2
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
	li $t0, 3198
	sw $t0, -2012($fp)
	addi $t0, $fp, -1924
	sw $t0, -2016($fp)
	li $t0, 3
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
	li $t0, 17749
	sw $t0, -2036($fp)
	addi $t0, $fp, -1924
	sw $t0, -2040($fp)
	li $t0, 4
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
	li $t0, 36978
	sw $t0, -2060($fp)
	addi $t0, $fp, -1924
	sw $t0, -2064($fp)
	li $t0, 5
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
	li $t0, 55263
	sw $t0, -2084($fp)
	addi $t0, $fp, -1924
	sw $t0, -2088($fp)
	li $t0, 6
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
	li $t0, 24194
	sw $t0, -2108($fp)
	addi $t0, $fp, -1924
	sw $t0, -2112($fp)
	li $t0, 7
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
	lw $t0, -1932($fp)
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1924
	sw $t0, -2136($fp)
	li $t0, 0
	sw $t0, -2140($fp)
	li $t0, 4
	lw $t1, -2140($fp)
	mul $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	lw $t1, -2136($fp)
	add $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t0, -2148($fp)
	lw $t1, 0($t0)
	sw $t1, -2152($fp)
	lw $t0, -2152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1924
	sw $t0, -2156($fp)
	li $t0, 1
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
	lw $t0, -2172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1924
	sw $t0, -2176($fp)
	li $t0, 2
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
	lw $t0, -2192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1924
	sw $t0, -2196($fp)
	li $t0, 3
	sw $t0, -2200($fp)
	li $t0, 4
	lw $t1, -2200($fp)
	mul $t0, $t0, $t1
	sw $t0, -2204($fp)
	lw $t0, -2204($fp)
	lw $t1, -2196($fp)
	add $t0, $t0, $t1
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	lw $t1, 0($t0)
	sw $t1, -2212($fp)
	lw $t0, -2212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1924
	sw $t0, -2216($fp)
	li $t0, 4
	sw $t0, -2220($fp)
	li $t0, 4
	lw $t1, -2220($fp)
	mul $t0, $t0, $t1
	sw $t0, -2224($fp)
	lw $t0, -2224($fp)
	lw $t1, -2216($fp)
	add $t0, $t0, $t1
	sw $t0, -2228($fp)
	lw $t0, -2228($fp)
	lw $t1, 0($t0)
	sw $t1, -2232($fp)
	lw $t0, -2232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1924
	sw $t0, -2236($fp)
	li $t0, 5
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
	lw $t0, -2252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1924
	sw $t0, -2256($fp)
	li $t0, 6
	sw $t0, -2260($fp)
	li $t0, 4
	lw $t1, -2260($fp)
	mul $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t0, -2264($fp)
	lw $t1, -2256($fp)
	add $t0, $t0, $t1
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	lw $t1, 0($t0)
	sw $t1, -2272($fp)
	lw $t0, -2272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1924
	sw $t0, -2276($fp)
	li $t0, 7
	sw $t0, -2280($fp)
	li $t0, 4
	lw $t1, -2280($fp)
	mul $t0, $t0, $t1
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	lw $t1, -2276($fp)
	add $t0, $t0, $t1
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	lw $t1, 0($t0)
	sw $t1, -2292($fp)
	lw $t0, -2292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -700
	sw $t0, -2296($fp)
	lw $t0, 20($fp)
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
	addi $t0, $fp, -1924
	sw $t0, -2316($fp)
	li $t0, 7
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
	lw $t0, -2312($fp)
	lw $t1, -2332($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2336($fp)
	li $t0, 48949
	sw $t0, -2340($fp)
	lw $t0, -2336($fp)
	lw $t1, -2340($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2344($fp)
	lw $ra, -4($fp)
	lw $v0, -2344($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1932($fp)
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1924
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
	lw $t0, -2368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1924
	sw $t0, -2372($fp)
	li $t0, 1
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
	lw $t0, -2388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1924
	sw $t0, -2392($fp)
	li $t0, 2
	sw $t0, -2396($fp)
	li $t0, 4
	lw $t1, -2396($fp)
	mul $t0, $t0, $t1
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	lw $t1, -2392($fp)
	add $t0, $t0, $t1
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	lw $t1, 0($t0)
	sw $t1, -2408($fp)
	lw $t0, -2408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1924
	sw $t0, -2412($fp)
	li $t0, 3
	sw $t0, -2416($fp)
	li $t0, 4
	lw $t1, -2416($fp)
	mul $t0, $t0, $t1
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	lw $t1, -2412($fp)
	add $t0, $t0, $t1
	sw $t0, -2424($fp)
	lw $t0, -2424($fp)
	lw $t1, 0($t0)
	sw $t1, -2428($fp)
	lw $t0, -2428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1924
	sw $t0, -2432($fp)
	li $t0, 4
	sw $t0, -2436($fp)
	li $t0, 4
	lw $t1, -2436($fp)
	mul $t0, $t0, $t1
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	lw $t1, -2432($fp)
	add $t0, $t0, $t1
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	lw $t1, 0($t0)
	sw $t1, -2448($fp)
	lw $t0, -2448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1924
	sw $t0, -2452($fp)
	li $t0, 5
	sw $t0, -2456($fp)
	li $t0, 4
	lw $t1, -2456($fp)
	mul $t0, $t0, $t1
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	lw $t1, -2452($fp)
	add $t0, $t0, $t1
	sw $t0, -2464($fp)
	lw $t0, -2464($fp)
	lw $t1, 0($t0)
	sw $t1, -2468($fp)
	lw $t0, -2468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1924
	sw $t0, -2472($fp)
	li $t0, 6
	sw $t0, -2476($fp)
	li $t0, 4
	lw $t1, -2476($fp)
	mul $t0, $t0, $t1
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	lw $t1, -2472($fp)
	add $t0, $t0, $t1
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	lw $t1, 0($t0)
	sw $t1, -2488($fp)
	lw $t0, -2488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1924
	sw $t0, -2492($fp)
	li $t0, 7
	sw $t0, -2496($fp)
	li $t0, 4
	lw $t1, -2496($fp)
	mul $t0, $t0, $t1
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	lw $t1, -2492($fp)
	add $t0, $t0, $t1
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	lw $t1, 0($t0)
	sw $t1, -2508($fp)
	lw $t0, -2508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2512($fp)
	li $t0, 17612
	sw $t0, -2516($fp)
	li $t0, 0
	sw $t0, -2520($fp)
	lw $t0, -716($fp)
	sw $t0, -2524($fp)
	lw $t1, -2524($fp)
	li $t2, 0
	bne $t1, $t2, label684
	j label683
label683:
	li $t0, 1
	sw $t0, -2520($fp)
label684:
	lw $t0, -2516($fp)
	lw $t1, -2520($fp)
	mul $t0, $t0, $t1
	sw $t0, -2528($fp)
	li $t0, 0
	lw $t1, -2528($fp)
	sub $t0, $t0, $t1
	sw $t0, -2532($fp)
	li $t0, 0
	sw $t0, -2536($fp)
	li $t0, 31181
	sw $t0, -2540($fp)
	lw $t1, -2540($fp)
	li $t2, 0
	bne $t1, $t2, label686
	j label685
label685:
	li $t0, 1
	sw $t0, -2536($fp)
label686:
	addi $sp, $sp, -4
	lw $t0, -2536($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2544($fp)
	addi $sp, $sp, 8
	lw $t1, -2532($fp)
	lw $t2, -2544($fp)
	beq $t1, $t2, label682
	j label681
label682:
	jal f8
	sw $v0, -2548($fp)
	addi $sp, $sp, 4
	li $t0, 27325
	sw $t0, -2552($fp)
	lw $t0, -2552($fp)
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -2556($fp)
	lw $t0, 8($fp)
	sw $t0, -2560($fp)
	li $t0, 18623
	sw $t0, -2564($fp)
	lw $t0, -2560($fp)
	lw $t1, -2564($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2568($fp)
	li $t0, 26166
	sw $t0, -2572($fp)
	lw $t0, -2568($fp)
	lw $t1, -2572($fp)
	add $t0, $t0, $t1
	sw $t0, -2576($fp)
	li $t0, 14508
	sw $t0, -2580($fp)
	addi $t0, $fp, -1924
	sw $t0, -2584($fp)
	li $t0, 4
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
	lw $t0, -824($fp)
	sw $t0, -2604($fp)
	lw $t0, -2600($fp)
	lw $t1, -2604($fp)
	sub $t0, $t0, $t1
	sw $t0, -2608($fp)
	addi $sp, $sp, -4
	lw $t0, -2548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2580($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2608($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2612($fp)
	addi $sp, $sp, 24
	lw $t1, -2612($fp)
	li $t2, 0
	bne $t1, $t2, label680
	j label681
label680:
	li $t0, 1
	sw $t0, -2512($fp)
label681:
	lw $ra, -4($fp)
	lw $v0, -2512($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1932($fp)
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1924
	sw $t0, -2620($fp)
	li $t0, 0
	sw $t0, -2624($fp)
	li $t0, 4
	lw $t1, -2624($fp)
	mul $t0, $t0, $t1
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	lw $t1, -2620($fp)
	add $t0, $t0, $t1
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	lw $t1, 0($t0)
	sw $t1, -2636($fp)
	lw $t0, -2636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1924
	sw $t0, -2640($fp)
	li $t0, 1
	sw $t0, -2644($fp)
	li $t0, 4
	lw $t1, -2644($fp)
	mul $t0, $t0, $t1
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	lw $t1, -2640($fp)
	add $t0, $t0, $t1
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	lw $t1, 0($t0)
	sw $t1, -2656($fp)
	lw $t0, -2656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1924
	sw $t0, -2660($fp)
	li $t0, 2
	sw $t0, -2664($fp)
	li $t0, 4
	lw $t1, -2664($fp)
	mul $t0, $t0, $t1
	sw $t0, -2668($fp)
	lw $t0, -2668($fp)
	lw $t1, -2660($fp)
	add $t0, $t0, $t1
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	lw $t1, 0($t0)
	sw $t1, -2676($fp)
	lw $t0, -2676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1924
	sw $t0, -2680($fp)
	li $t0, 3
	sw $t0, -2684($fp)
	li $t0, 4
	lw $t1, -2684($fp)
	mul $t0, $t0, $t1
	sw $t0, -2688($fp)
	lw $t0, -2688($fp)
	lw $t1, -2680($fp)
	add $t0, $t0, $t1
	sw $t0, -2692($fp)
	lw $t0, -2692($fp)
	lw $t1, 0($t0)
	sw $t1, -2696($fp)
	lw $t0, -2696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1924
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
	lw $t0, -2716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1924
	sw $t0, -2720($fp)
	li $t0, 5
	sw $t0, -2724($fp)
	li $t0, 4
	lw $t1, -2724($fp)
	mul $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	lw $t1, -2720($fp)
	add $t0, $t0, $t1
	sw $t0, -2732($fp)
	lw $t0, -2732($fp)
	lw $t1, 0($t0)
	sw $t1, -2736($fp)
	lw $t0, -2736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1924
	sw $t0, -2740($fp)
	li $t0, 6
	sw $t0, -2744($fp)
	li $t0, 4
	lw $t1, -2744($fp)
	mul $t0, $t0, $t1
	sw $t0, -2748($fp)
	lw $t0, -2748($fp)
	lw $t1, -2740($fp)
	add $t0, $t0, $t1
	sw $t0, -2752($fp)
	lw $t0, -2752($fp)
	lw $t1, 0($t0)
	sw $t1, -2756($fp)
	lw $t0, -2756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -1924
	sw $t0, -2760($fp)
	li $t0, 7
	sw $t0, -2764($fp)
	li $t0, 4
	lw $t1, -2764($fp)
	mul $t0, $t0, $t1
	sw $t0, -2768($fp)
	lw $t0, -2768($fp)
	lw $t1, -2760($fp)
	add $t0, $t0, $t1
	sw $t0, -2772($fp)
	lw $t0, -2772($fp)
	lw $t1, 0($t0)
	sw $t1, -2776($fp)
	lw $t0, -2776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, 8($fp)
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -2784($fp)
	li $t0, 45162
	sw $t0, -2788($fp)
	lw $t0, -2788($fp)
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	sw $t0, -2792($fp)
	li $t0, 0
	sw $t0, -2796($fp)
	lw $t0, -716($fp)
	sw $t0, -2800($fp)
	lw $t1, -2800($fp)
	li $t2, 0
	bne $t1, $t2, label690
	j label688
label690:
	li $t0, 26695
	sw $t0, -2804($fp)
	lw $t1, -2804($fp)
	li $t2, 0
	bne $t1, $t2, label689
	j label688
label689:
	li $t0, 56606
	sw $t0, -2808($fp)
	lw $t1, -2808($fp)
	li $t2, 0
	bne $t1, $t2, label687
	j label688
label687:
	li $t0, 1
	sw $t0, -2796($fp)
label688:
	addi $sp, $sp, -4
	lw $t0, -2796($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2812($fp)
	addi $sp, $sp, 8
	addi $t0, $fp, -624
	sw $t0, -2816($fp)
	lw $t0, -1076($fp)
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
	li $t0, 0
	sw $t0, -2836($fp)
	li $t0, 0
	sw $t0, -2840($fp)
	lw $t0, -232($fp)
	sw $t0, -2844($fp)
	lw $t1, -2844($fp)
	li $t2, 0
	bne $t1, $t2, label694
	j label693
label693:
	li $t0, 1
	sw $t0, -2840($fp)
label694:
	li $t0, 15046
	sw $t0, -2848($fp)
	lw $t1, -2840($fp)
	lw $t2, -2848($fp)
	bne $t1, $t2, label691
	j label692
label691:
	li $t0, 1
	sw $t0, -2836($fp)
label692:
	addi $sp, $sp, -4
	lw $t0, -2784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2836($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2852($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -28
	sw $t0, -2856($fp)
	lw $t0, 4($fp)
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
	lw $t0, -2852($fp)
	lw $t1, -2872($fp)
	mul $t0, $t0, $t1
	sw $t0, -2876($fp)
	lw $t0, -1064($fp)
	sw $t0, -2880($fp)
	lw $t0, -2876($fp)
	lw $t1, -2880($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2884($fp)
	lw $t0, -740($fp)
	sw $t0, -2888($fp)
	li $t0, 0
	lw $t1, -2888($fp)
	sub $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t0, -2884($fp)
	lw $t1, -2892($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2896($fp)
	lw $ra, -4($fp)
	lw $v0, -2896($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -2900($fp)
	li $t0, 1635
	sw $t0, -2904($fp)
	li $t0, 0
	sw $t0, -2908($fp)
	li $t0, 19371
	sw $t0, -2912($fp)
	lw $t1, -2912($fp)
	li $t2, 0
	bne $t1, $t2, label701
	j label700
label700:
	li $t0, 1
	sw $t0, -2908($fp)
label701:
	lw $t1, -2904($fp)
	lw $t2, -2908($fp)
	bgt $t1, $t2, label698
	j label699
label698:
	li $t0, 1
	sw $t0, -2900($fp)
label699:
	lw $t0, -2900($fp)
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, -2916($fp)
	lw $t1, -2916($fp)
	li $t2, 0
	bne $t1, $t2, label695
	j label696
label695:
	li $t0, 916
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	sw $t0, -2944($fp)
	lw $t0, -2944($fp)
	sw $t0, -2948($fp)
	li $t0, 9046
	sw $t0, -2952($fp)
	addi $t0, $fp, -2936
	sw $t0, -2956($fp)
	li $t0, 0
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
	li $t0, 58013
	sw $t0, -2976($fp)
	addi $t0, $fp, -2936
	sw $t0, -2980($fp)
	li $t0, 1
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
	li $t0, 4395
	sw $t0, -3000($fp)
	addi $t0, $fp, -2936
	sw $t0, -3004($fp)
	li $t0, 2
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
	li $t0, 40191
	sw $t0, -3024($fp)
	addi $t0, $fp, -2936
	sw $t0, -3028($fp)
	li $t0, 3
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
	li $t0, 47880
	sw $t0, -3048($fp)
	addi $t0, $fp, -2936
	sw $t0, -3052($fp)
	li $t0, 4
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
	li $t0, 42682
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	sw $t0, -3080($fp)
	addi $t0, $fp, -700
	sw $t0, -3084($fp)
	li $t0, 5
	sw $t0, -3088($fp)
	li $t0, 4
	lw $t1, -3088($fp)
	mul $t0, $t0, $t1
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	lw $t1, -3084($fp)
	add $t0, $t0, $t1
	sw $t0, -3096($fp)
	lw $t0, -3096($fp)
	lw $t1, 0($t0)
	sw $t1, -3100($fp)
	lw $t0, -1400($fp)
	sw $t0, -3104($fp)
	lw $t0, -3100($fp)
	lw $t1, -3104($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3108($fp)
	li $t0, 59302
	sw $t0, -3112($fp)
	li $t0, 45880
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -3120($fp)
	addi $sp, $sp, -4
	lw $t0, -3112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3120($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3124($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -3128($fp)
	li $t0, 0
	sw $t0, -3132($fp)
	li $t0, 0
	sw $t0, -3136($fp)
	lw $t0, -280($fp)
	sw $t0, -3140($fp)
	li $t0, 54001
	sw $t0, -3144($fp)
	lw $t0, -3140($fp)
	lw $t1, -3144($fp)
	sub $t0, $t0, $t1
	sw $t0, -3148($fp)
	li $t0, 35607
	sw $t0, -3152($fp)
	lw $t0, -3148($fp)
	lw $t1, -3152($fp)
	add $t0, $t0, $t1
	sw $t0, -3156($fp)
	addi $t0, $fp, -2936
	sw $t0, -3160($fp)
	lw $t0, -3076($fp)
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
	lw $t1, -3156($fp)
	lw $t2, -3176($fp)
	bge $t1, $t2, label706
	j label707
label706:
	li $t0, 1
	sw $t0, -3136($fp)
label707:
	lw $t0, -1364($fp)
	sw $t0, -3180($fp)
	li $t0, 17960
	sw $t0, -3184($fp)
	lw $t0, -3180($fp)
	lw $t1, -3184($fp)
	mul $t0, $t0, $t1
	sw $t0, -3188($fp)
	lw $t1, -3136($fp)
	lw $t2, -3188($fp)
	beq $t1, $t2, label704
	j label705
label704:
	li $t0, 1
	sw $t0, -3132($fp)
label705:
	lw $t0, -836($fp)
	sw $t0, -3192($fp)
	li $t0, 31605
	sw $t0, -3196($fp)
	lw $t0, -3192($fp)
	lw $t1, -3196($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3200($fp)
	li $t0, 0
	sw $t0, -3204($fp)
	li $t0, 13992
	sw $t0, -3208($fp)
	li $t0, 13870
	sw $t0, -3212($fp)
	lw $t0, -3208($fp)
	lw $t1, -3212($fp)
	mul $t0, $t0, $t1
	sw $t0, -3216($fp)
	li $t0, 1373
	sw $t0, -3220($fp)
	lw $t1, -3216($fp)
	lw $t2, -3220($fp)
	bne $t1, $t2, label708
	j label709
label708:
	li $t0, 1
	sw $t0, -3204($fp)
label709:
	addi $sp, $sp, -4
	lw $t0, -3200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3204($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3224($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -3224($fp)
	sub $t0, $t0, $t1
	sw $t0, -3228($fp)
	lw $t1, -3132($fp)
	lw $t2, -3228($fp)
	beq $t1, $t2, label702
	j label703
label702:
	li $t0, 1
	sw $t0, -3128($fp)
label703:
	j label697
label696:
label710:
	addi $t0, $fp, -700
	sw $t0, -3232($fp)
	li $t0, 4
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
	li $t0, 0
	lw $t1, -3248($fp)
	sub $t0, $t0, $t1
	sw $t0, -3252($fp)
	li $t0, 0
	sw $t0, -3256($fp)
	lw $t0, -1932($fp)
	sw $t0, -3260($fp)
	lw $t1, -3260($fp)
	li $t2, 0
	bne $t1, $t2, label713
	j label714
label713:
	li $t0, 1
	sw $t0, -3256($fp)
label714:
	li $t0, 63353
	sw $t0, -3264($fp)
	lw $t0, -3256($fp)
	lw $t1, -3264($fp)
	sub $t0, $t0, $t1
	sw $t0, -3268($fp)
	lw $t1, -3252($fp)
	lw $t2, -3268($fp)
	bne $t1, $t2, label711
	j label712
label711:
	lw $t0, -1508($fp)
	sw $t0, -3272($fp)
	lw $t0, -3272($fp)
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	sw $t0, -3276($fp)
	lw $ra, -4($fp)
	lw $v0, -3276($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label710
label712:
label697:
	li $t0, 59560
	sw $t0, -3280($fp)
	lw $t0, -3280($fp)
	sw $t0, -3284($fp)
	lw $t0, -3284($fp)
	sw $t0, -3288($fp)
	lw $t0, -3284($fp)
	sw $t0, -3292($fp)
	lw $t0, -3292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3296($fp)
	li $t0, 0
	sw $t0, -3300($fp)
	addi $t0, $fp, -708
	sw $t0, -3304($fp)
	lw $t0, -1496($fp)
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
	li $t0, 0
	lw $t1, -3320($fp)
	sub $t0, $t0, $t1
	sw $t0, -3324($fp)
	lw $t0, -728($fp)
	sw $t0, -3328($fp)
	lw $t1, -3324($fp)
	lw $t2, -3328($fp)
	blt $t1, $t2, label717
	j label718
label717:
	li $t0, 1
	sw $t0, -3300($fp)
label718:
	addi $t0, $fp, -624
	sw $t0, -3332($fp)
	li $t0, 2
	sw $t0, -3336($fp)
	li $t0, 4
	lw $t1, -3336($fp)
	mul $t0, $t0, $t1
	sw $t0, -3340($fp)
	lw $t0, -3340($fp)
	lw $t1, -3332($fp)
	add $t0, $t0, $t1
	sw $t0, -3344($fp)
	lw $t0, -3344($fp)
	lw $t1, 0($t0)
	sw $t1, -3348($fp)
	lw $t1, -3300($fp)
	lw $t2, -3348($fp)
	bne $t1, $t2, label715
	j label716
label715:
	li $t0, 1
	sw $t0, -3296($fp)
label716:
	lw $ra, -4($fp)
	lw $v0, -3296($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 21349
	sw $t0, -3384($fp)
	addi $t0, $fp, -3380
	sw $t0, -3388($fp)
	li $t0, 0
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
	li $t0, 55527
	sw $t0, -3408($fp)
	addi $t0, $fp, -3380
	sw $t0, -3412($fp)
	li $t0, 1
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
	li $t0, 50678
	sw $t0, -3432($fp)
	addi $t0, $fp, -3380
	sw $t0, -3436($fp)
	li $t0, 2
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
	li $t0, 12419
	sw $t0, -3456($fp)
	addi $t0, $fp, -3380
	sw $t0, -3460($fp)
	li $t0, 3
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
	li $t0, 35153
	sw $t0, -3480($fp)
	addi $t0, $fp, -3380
	sw $t0, -3484($fp)
	li $t0, 4
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
	li $t0, 52313
	sw $t0, -3504($fp)
	addi $t0, $fp, -3380
	sw $t0, -3508($fp)
	li $t0, 5
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3516($fp)
	lw $t0, -3508($fp)
	lw $t1, -3516($fp)
	add $t0, $t0, $t1
	sw $t0, -3520($fp)
	lw $t0, -3504($fp)
	lw $t1, -3520($fp)
	sw $t0, 0($t1)
	lw $t0, -3520($fp)
	lw $t1, 0($t0)
	sw $t1, -3524($fp)
	li $t0, 31791
	sw $t0, -3528($fp)
	addi $t0, $fp, -3380
	sw $t0, -3532($fp)
	li $t0, 6
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
	li $t0, 36069
	sw $t0, -3552($fp)
	addi $t0, $fp, -3380
	sw $t0, -3556($fp)
	li $t0, 7
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
	addi $t0, $fp, -52
	sw $t0, -3576($fp)
	li $t0, 0
	sw $t0, -3580($fp)
	lw $t0, -1472($fp)
	sw $t0, -3584($fp)
	li $t0, 0
	lw $t1, -3584($fp)
	sub $t0, $t0, $t1
	sw $t0, -3588($fp)
	li $t0, 0
	lw $t1, -3588($fp)
	sub $t0, $t0, $t1
	sw $t0, -3592($fp)
	lw $t0, -1472($fp)
	sw $t0, -3596($fp)
	li $t0, 61360
	sw $t0, -3600($fp)
	lw $t0, -3596($fp)
	lw $t1, -3600($fp)
	sub $t0, $t0, $t1
	sw $t0, -3604($fp)
	lw $t1, -3592($fp)
	lw $t2, -3604($fp)
	blt $t1, $t2, label719
	j label720
label719:
	li $t0, 1
	sw $t0, -3580($fp)
label720:
	li $t0, 4
	lw $t1, -3580($fp)
	mul $t0, $t0, $t1
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	lw $t1, -3576($fp)
	add $t0, $t0, $t1
	sw $t0, -3612($fp)
	lw $t0, -3612($fp)
	lw $t1, 0($t0)
	sw $t1, -3616($fp)
	li $t0, 0
	sw $t0, -3620($fp)
	li $t0, 0
	sw $t0, -3624($fp)
	addi $t0, $fp, -3380
	sw $t0, -3628($fp)
	lw $t0, -1508($fp)
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
	li $t0, 17611
	sw $t0, -3648($fp)
	lw $t1, -3644($fp)
	lw $t2, -3648($fp)
	bge $t1, $t2, label725
	j label726
label725:
	li $t0, 1
	sw $t0, -3624($fp)
label726:
	addi $sp, $sp, -4
	lw $t0, -3624($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3652($fp)
	addi $sp, $sp, 8
	lw $t0, -1376($fp)
	sw $t0, -3656($fp)
	lw $t0, -1400($fp)
	sw $t0, -3660($fp)
	lw $t0, -3656($fp)
	lw $t1, -3660($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3664($fp)
	li $t0, 6612
	sw $t0, -3668($fp)
	lw $t0, -3664($fp)
	lw $t1, -3668($fp)
	mul $t0, $t0, $t1
	sw $t0, -3672($fp)
	li $t0, 0
	sw $t0, -3676($fp)
	li $t0, 40465
	sw $t0, -3680($fp)
	lw $t1, -3680($fp)
	li $t2, 0
	bne $t1, $t2, label728
	j label727
label727:
	li $t0, 1
	sw $t0, -3676($fp)
label728:
	li $t0, 36015
	sw $t0, -3684($fp)
	lw $t0, -3676($fp)
	lw $t1, -3684($fp)
	add $t0, $t0, $t1
	sw $t0, -3688($fp)
	lw $t0, -220($fp)
	sw $t0, -3692($fp)
	li $t0, 24268
	sw $t0, -3696($fp)
	lw $t0, -1364($fp)
	sw $t0, -3700($fp)
	lw $t0, -3696($fp)
	lw $t1, -3700($fp)
	add $t0, $t0, $t1
	sw $t0, -3704($fp)
	addi $sp, $sp, -4
	lw $t0, -3652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3704($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3708($fp)
	addi $sp, $sp, 24
	li $t0, 12101
	sw $t0, -3712($fp)
	li $t0, 0
	lw $t1, -3712($fp)
	sub $t0, $t0, $t1
	sw $t0, -3716($fp)
	li $t0, 0
	lw $t1, -3716($fp)
	sub $t0, $t0, $t1
	sw $t0, -3720($fp)
	li $t0, 0
	sw $t0, -3724($fp)
	li $t0, 63491
	sw $t0, -3728($fp)
	lw $t1, -3728($fp)
	li $t2, 0
	bne $t1, $t2, label732
	j label731
label732:
	lw $t0, -1400($fp)
	sw $t0, -3732($fp)
	lw $t1, -3732($fp)
	li $t2, 0
	bne $t1, $t2, label729
	j label731
label731:
	li $t0, 5797
	sw $t0, -3736($fp)
	lw $t1, -3736($fp)
	li $t2, 0
	bne $t1, $t2, label729
	j label730
label729:
	li $t0, 1
	sw $t0, -3724($fp)
label730:
	li $t0, 0
	sw $t0, -3740($fp)
	lw $t0, -280($fp)
	sw $t0, -3744($fp)
	lw $t0, -1088($fp)
	sw $t0, -3748($fp)
	lw $t0, -3744($fp)
	lw $t1, -3748($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3752($fp)
	lw $t1, -3752($fp)
	li $t2, 0
	bne $t1, $t2, label733
	j label735
label735:
	lw $t0, -232($fp)
	sw $t0, -3756($fp)
	lw $t1, -3756($fp)
	li $t2, 0
	bne $t1, $t2, label733
	j label734
label733:
	li $t0, 1
	sw $t0, -3740($fp)
label734:
	li $t0, 0
	sw $t0, -3760($fp)
	li $t0, 0
	sw $t0, -3764($fp)
	li $t0, 12031
	sw $t0, -3768($fp)
	lw $t0, -728($fp)
	sw $t0, -3772($fp)
	lw $t1, -3768($fp)
	lw $t2, -3772($fp)
	ble $t1, $t2, label738
	j label739
label738:
	li $t0, 1
	sw $t0, -3764($fp)
label739:
	li $t0, 23635
	sw $t0, -3776($fp)
	lw $t1, -3764($fp)
	lw $t2, -3776($fp)
	blt $t1, $t2, label736
	j label737
label736:
	li $t0, 1
	sw $t0, -3760($fp)
label737:
	lw $t0, -1376($fp)
	sw $t0, -3780($fp)
	lw $t0, -3780($fp)
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -3784($fp)
	addi $sp, $sp, -4
	lw $t0, -3720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3784($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3788($fp)
	addi $sp, $sp, 24
	lw $t0, -3708($fp)
	lw $t1, -3788($fp)
	mul $t0, $t0, $t1
	sw $t0, -3792($fp)
	lw $t1, -3792($fp)
	li $t2, 0
	bne $t1, $t2, label724
	j label723
label724:
	li $t0, 0
	sw $t0, -3796($fp)
	li $t0, 25131
	sw $t0, -3800($fp)
	lw $t1, -3800($fp)
	li $t2, 0
	bne $t1, $t2, label742
	j label741
label742:
	li $t0, 57698
	sw $t0, -3804($fp)
	lw $t1, -3804($fp)
	li $t2, 0
	bne $t1, $t2, label740
	j label741
label740:
	li $t0, 1
	sw $t0, -3796($fp)
label741:
	lw $t0, -1484($fp)
	sw $t0, -3808($fp)
	li $t0, 26093
	sw $t0, -3812($fp)
	lw $t0, -3808($fp)
	lw $t1, -3812($fp)
	add $t0, $t0, $t1
	sw $t0, -3816($fp)
	li $t0, 47432
	sw $t0, -3820($fp)
	lw $t0, -3816($fp)
	lw $t1, -3820($fp)
	add $t0, $t0, $t1
	sw $t0, -3824($fp)
	lw $t0, -1376($fp)
	sw $t0, -3828($fp)
	li $t0, 0
	lw $t1, -3828($fp)
	sub $t0, $t0, $t1
	sw $t0, -3832($fp)
	li $t0, 0
	lw $t1, -3832($fp)
	sub $t0, $t0, $t1
	sw $t0, -3836($fp)
	addi $t0, $fp, -700
	sw $t0, -3840($fp)
	lw $t0, -244($fp)
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
	li $t0, 23757
	sw $t0, -3860($fp)
	lw $t0, -3856($fp)
	lw $t1, -3860($fp)
	mul $t0, $t0, $t1
	sw $t0, -3864($fp)
	li $t0, 0
	sw $t0, -3868($fp)
	li $t0, 33562
	sw $t0, -3872($fp)
	lw $t1, -3872($fp)
	li $t2, 0
	bne $t1, $t2, label745
	j label744
label745:
	lw $t0, -1472($fp)
	sw $t0, -3876($fp)
	lw $t1, -3876($fp)
	li $t2, 0
	bne $t1, $t2, label743
	j label744
label743:
	li $t0, 1
	sw $t0, -3868($fp)
label744:
	addi $sp, $sp, -4
	lw $t0, -3796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3868($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3880($fp)
	addi $sp, $sp, 24
	li $t0, 26948
	sw $t0, -3884($fp)
	lw $t1, -3880($fp)
	lw $t2, -3884($fp)
	beq $t1, $t2, label721
	j label723
label723:
	li $t0, 0
	sw $t0, -3888($fp)
	lw $t0, -1460($fp)
	sw $t0, -3892($fp)
	lw $t1, -3892($fp)
	li $t2, 0
	bne $t1, $t2, label746
	j label747
label746:
	li $t0, 1
	sw $t0, -3888($fp)
label747:
	li $t0, 0
	lw $t1, -3888($fp)
	sub $t0, $t0, $t1
	sw $t0, -3896($fp)
	lw $t1, -3896($fp)
	li $t2, 0
	bne $t1, $t2, label721
	j label722
label721:
	li $t0, 1
	sw $t0, -3620($fp)
label722:
	li $t0, 0
	sw $t0, -3900($fp)
	li $t0, 46989
	sw $t0, -3904($fp)
	lw $t1, -3904($fp)
	li $t2, 0
	bne $t1, $t2, label751
	j label749
label751:
	lw $t0, 16($fp)
	sw $t0, -3908($fp)
	lw $t0, -1472($fp)
	sw $t0, -3912($fp)
	lw $t0, -3908($fp)
	lw $t1, -3912($fp)
	add $t0, $t0, $t1
	sw $t0, -3916($fp)
	lw $t1, -3916($fp)
	li $t2, 0
	bne $t1, $t2, label750
	j label749
label750:
	li $t0, 0
	sw $t0, -3920($fp)
	li $t0, 21934
	sw $t0, -3924($fp)
	li $t0, 13963
	sw $t0, -3928($fp)
	lw $t0, -3924($fp)
	lw $t1, -3928($fp)
	sub $t0, $t0, $t1
	sw $t0, -3932($fp)
	lw $t1, -3932($fp)
	li $t2, 0
	bne $t1, $t2, label754
	j label753
label754:
	li $t0, 42321
	sw $t0, -3936($fp)
	lw $t1, -3936($fp)
	li $t2, 0
	bne $t1, $t2, label752
	j label753
label752:
	li $t0, 1
	sw $t0, -3920($fp)
label753:
	li $t0, 0
	sw $t0, -3940($fp)
	li $t0, 55516
	sw $t0, -3944($fp)
	li $t0, 20972
	sw $t0, -3948($fp)
	lw $t0, -3944($fp)
	lw $t1, -3948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3952($fp)
	lw $t0, -1556($fp)
	sw $t0, -3956($fp)
	lw $t1, -3952($fp)
	lw $t2, -3956($fp)
	bne $t1, $t2, label755
	j label756
label755:
	li $t0, 1
	sw $t0, -3940($fp)
label756:
	addi $sp, $sp, -4
	lw $t0, -3920($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3940($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3960($fp)
	addi $sp, $sp, 12
	lw $t0, -292($fp)
	sw $t0, -3964($fp)
	lw $t0, -3960($fp)
	lw $t1, -3964($fp)
	add $t0, $t0, $t1
	sw $t0, -3968($fp)
	lw $t1, -3968($fp)
	li $t2, 0
	bne $t1, $t2, label748
	j label749
label748:
	li $t0, 1
	sw $t0, -3900($fp)
label749:
	li $t0, 0
	sw $t0, -3972($fp)
	lw $t0, -1400($fp)
	sw $t0, -3976($fp)
	li $t0, 11925
	sw $t0, -3980($fp)
	lw $t0, -232($fp)
	sw $t0, -3984($fp)
	lw $t0, -3980($fp)
	lw $t1, -3984($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3988($fp)
	lw $t0, -3976($fp)
	lw $t1, -3988($fp)
	sub $t0, $t0, $t1
	sw $t0, -3992($fp)
	lw $t1, -3992($fp)
	li $t2, 0
	bne $t1, $t2, label757
	j label759
label759:
	li $t0, 64642
	sw $t0, -3996($fp)
	lw $t0, -1580($fp)
	sw $t0, -4000($fp)
	lw $t1, -3996($fp)
	lw $t2, -4000($fp)
	ble $t1, $t2, label761
	j label758
label761:
	lw $t0, -1472($fp)
	sw $t0, -4004($fp)
	lw $t1, -4004($fp)
	li $t2, 0
	bne $t1, $t2, label760
	j label758
label760:
	lw $t0, -268($fp)
	sw $t0, -4008($fp)
	lw $t0, -1400($fp)
	sw $t0, -4012($fp)
	lw $t0, -4008($fp)
	lw $t1, -4012($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4016($fp)
	lw $t1, -4016($fp)
	li $t2, 0
	bne $t1, $t2, label757
	j label758
label757:
	li $t0, 1
	sw $t0, -3972($fp)
label758:
	lw $t0, -3284($fp)
	sw $t0, -4020($fp)
	lw $t0, -4020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4024($fp)
	lw $t0, -1556($fp)
	sw $t0, -4028($fp)
	addi $sp, $sp, -4
	lw $t0, -4028($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4032($fp)
	addi $sp, $sp, 8
	lw $t1, -4032($fp)
	li $t2, 0
	bne $t1, $t2, label762
	j label764
label764:
	lw $t0, -1556($fp)
	sw $t0, -4036($fp)
	lw $t1, -4036($fp)
	li $t2, 0
	bne $t1, $t2, label762
	j label763
label762:
	li $t0, 1
	sw $t0, -4024($fp)
label763:
	li $t0, 0
	sw $t0, -4040($fp)
	lw $t0, -1472($fp)
	sw $t0, -4044($fp)
	li $t0, 54740
	sw $t0, -4048($fp)
	lw $t1, -4044($fp)
	lw $t2, -4048($fp)
	bne $t1, $t2, label765
	j label766
label765:
	li $t0, 1
	sw $t0, -4040($fp)
label766:
	li $t0, 0
	sw $t0, -4052($fp)
	li $t0, 0
	sw $t0, -4056($fp)
	lw $t0, -1496($fp)
	sw $t0, -4060($fp)
	lw $t1, -4060($fp)
	li $t2, 0
	bne $t1, $t2, label770
	j label769
label769:
	li $t0, 1
	sw $t0, -4056($fp)
label770:
	lw $t0, -716($fp)
	sw $t0, -4064($fp)
	lw $t1, -4056($fp)
	lw $t2, -4064($fp)
	ble $t1, $t2, label767
	j label768
label767:
	li $t0, 1
	sw $t0, -4052($fp)
label768:
	addi $sp, $sp, -4
	lw $t0, -4040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4052($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4068($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -4068($fp)
	sub $t0, $t0, $t1
	sw $t0, -4072($fp)
	addi $sp, $sp, -4
	lw $t0, -4024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4072($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4076($fp)
	addi $sp, $sp, 12
	li $t0, 47078
	sw $t0, -4080($fp)
	lw $t0, -4076($fp)
	lw $t1, -4080($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4084($fp)
	lw $ra, -4($fp)
	lw $v0, -4084($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label771:
	li $t0, 0
	sw $t0, -4088($fp)
	li $t0, 0
	sw $t0, -4092($fp)
	li $t0, 51419
	sw $t0, -4096($fp)
	lw $t1, -4096($fp)
	li $t2, 0
	bne $t1, $t2, label779
	j label778
label779:
	li $t0, 20995
	sw $t0, -4100($fp)
	lw $t1, -4100($fp)
	li $t2, 0
	bne $t1, $t2, label776
	j label778
label778:
	lw $t0, -3284($fp)
	sw $t0, -4104($fp)
	lw $t1, -4104($fp)
	li $t2, 0
	bne $t1, $t2, label776
	j label777
label776:
	li $t0, 1
	sw $t0, -4092($fp)
label777:
	addi $sp, $sp, -4
	lw $t0, -4092($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4108($fp)
	addi $sp, $sp, 8
	lw $t1, -4108($fp)
	li $t2, 0
	bne $t1, $t2, label775
	j label774
label774:
	li $t0, 1
	sw $t0, -4088($fp)
label775:
	lw $t0, -1544($fp)
	sw $t0, -4112($fp)
	lw $t0, -4088($fp)
	lw $t1, -4112($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4116($fp)
	li $t0, 0
	sw $t0, -4120($fp)
	addi $t0, $fp, -660
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
	lw $t1, -4140($fp)
	li $t2, 0
	bne $t1, $t2, label781
	j label780
label780:
	li $t0, 1
	sw $t0, -4120($fp)
label781:
	lw $t0, -4116($fp)
	lw $t1, -4120($fp)
	add $t0, $t0, $t1
	sw $t0, -4144($fp)
	lw $t0, -1376($fp)
	sw $t0, -4148($fp)
	lw $t1, -4144($fp)
	lw $t2, -4148($fp)
	ble $t1, $t2, label772
	j label773
label772:
label782:
	jal f8
	sw $v0, -4152($fp)
	addi $sp, $sp, 4
	li $t0, 45263
	sw $t0, -4156($fp)
	li $t0, 58076
	sw $t0, -4160($fp)
	lw $t0, -4156($fp)
	lw $t1, -4160($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4164($fp)
	li $t0, 17722
	sw $t0, -4168($fp)
	lw $t0, -4164($fp)
	lw $t1, -4168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4172($fp)
	lw $t0, -824($fp)
	sw $t0, -4176($fp)
	lw $t0, -1472($fp)
	sw $t0, -4180($fp)
	lw $t0, -4176($fp)
	lw $t1, -4180($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4184($fp)
	addi $sp, $sp, -4
	lw $t0, -4172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4184($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4188($fp)
	addi $sp, $sp, 12
	lw $t0, -4152($fp)
	lw $t1, -4188($fp)
	mul $t0, $t0, $t1
	sw $t0, -4192($fp)
	lw $t1, -4192($fp)
	li $t2, 0
	bne $t1, $t2, label783
	j label784
label783:
	li $t0, 0
	sw $t0, -4196($fp)
	addi $t0, $fp, -28
	sw $t0, -4200($fp)
	li $t0, 0
	sw $t0, -4204($fp)
	li $t0, 51875
	sw $t0, -4208($fp)
	lw $t1, -4208($fp)
	li $t2, 0
	bne $t1, $t2, label788
	j label787
label787:
	li $t0, 1
	sw $t0, -4204($fp)
label788:
	lw $t0, -244($fp)
	sw $t0, -4212($fp)
	lw $t0, -4204($fp)
	lw $t1, -4212($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4216($fp)
	li $t0, 4
	lw $t1, -4216($fp)
	mul $t0, $t0, $t1
	sw $t0, -4220($fp)
	lw $t0, -4220($fp)
	lw $t1, -4200($fp)
	add $t0, $t0, $t1
	sw $t0, -4224($fp)
	lw $t0, -4224($fp)
	lw $t1, 0($t0)
	sw $t1, -4228($fp)
	li $t0, 29754
	sw $t0, -4232($fp)
	lw $t0, -4232($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -4236($fp)
	li $t0, 10151
	sw $t0, -4240($fp)
	addi $sp, $sp, -4
	lw $t0, -4236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4240($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4244($fp)
	addi $sp, $sp, 12
	lw $t1, -4228($fp)
	lw $t2, -4244($fp)
	blt $t1, $t2, label785
	j label786
label785:
	li $t0, 1
	sw $t0, -4196($fp)
label786:
	j label782
label784:
	j label771
label773:
	li $t0, 8106
	sw $t0, -4248($fp)
	li $t0, 0
	lw $t1, -4248($fp)
	sub $t0, $t0, $t1
	sw $t0, -4252($fp)
	li $t0, 35551
	sw $t0, -4256($fp)
	lw $t0, -4252($fp)
	lw $t1, -4256($fp)
	sub $t0, $t0, $t1
	sw $t0, -4260($fp)
	li $t0, 0
	sw $t0, -4264($fp)
	li $t0, 0
	sw $t0, -4268($fp)
	lw $t0, -1460($fp)
	sw $t0, -4272($fp)
	lw $t0, 20($fp)
	sw $t0, -4276($fp)
	lw $t1, -4272($fp)
	lw $t2, -4276($fp)
	bge $t1, $t2, label794
	j label795
label794:
	li $t0, 1
	sw $t0, -4268($fp)
label795:
	li $t0, 9975
	sw $t0, -4280($fp)
	lw $t1, -4268($fp)
	lw $t2, -4280($fp)
	ble $t1, $t2, label792
	j label793
label792:
	li $t0, 1
	sw $t0, -4264($fp)
label793:
	addi $sp, $sp, -4
	lw $t0, -4260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4264($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4284($fp)
	addi $sp, $sp, 12
	lw $t0, -280($fp)
	sw $t0, -4288($fp)
	lw $t0, -4284($fp)
	lw $t1, -4288($fp)
	mul $t0, $t0, $t1
	sw $t0, -4292($fp)
	li $t0, 22076
	sw $t0, -4296($fp)
	lw $t0, -1472($fp)
	sw $t0, -4300($fp)
	lw $t0, -4296($fp)
	lw $t1, -4300($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4304($fp)
	lw $t0, -4292($fp)
	lw $t1, -4304($fp)
	add $t0, $t0, $t1
	sw $t0, -4308($fp)
	lw $t0, -244($fp)
	sw $t0, -4312($fp)
	lw $t0, -4308($fp)
	lw $t1, -4312($fp)
	sub $t0, $t0, $t1
	sw $t0, -4316($fp)
	li $t0, 0
	sw $t0, -4320($fp)
	li $t0, 0
	sw $t0, -4324($fp)
	li $t0, 41668
	sw $t0, -4328($fp)
	lw $t0, -1376($fp)
	sw $t0, -4332($fp)
	lw $t1, -4328($fp)
	lw $t2, -4332($fp)
	bne $t1, $t2, label798
	j label799
label798:
	li $t0, 1
	sw $t0, -4324($fp)
label799:
	li $t0, 59309
	sw $t0, -4336($fp)
	lw $t1, -4324($fp)
	lw $t2, -4336($fp)
	beq $t1, $t2, label796
	j label797
label796:
	li $t0, 1
	sw $t0, -4320($fp)
label797:
	addi $sp, $sp, -4
	lw $t0, -4320($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4340($fp)
	addi $sp, $sp, 8
	lw $t0, -4316($fp)
	lw $t1, -4340($fp)
	add $t0, $t0, $t1
	sw $t0, -4344($fp)
	lw $t1, -4344($fp)
	li $t2, 0
	bne $t1, $t2, label789
	j label790
label789:
	li $t0, 0
	sw $t0, -4348($fp)
	lw $t0, -292($fp)
	sw $t0, -4352($fp)
	li $t0, 0
	lw $t1, -4352($fp)
	sub $t0, $t0, $t1
	sw $t0, -4356($fp)
	lw $t1, -4356($fp)
	li $t2, 0
	bne $t1, $t2, label801
	j label800
label800:
	li $t0, 1
	sw $t0, -4348($fp)
label801:
	j label791
label790:
	li $t0, 0
	sw $t0, -4360($fp)
	li $t0, 0
	sw $t0, -4364($fp)
	lw $t0, -1388($fp)
	sw $t0, -4368($fp)
	addi $t0, $fp, -52
	sw $t0, -4372($fp)
	li $t0, 3
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
	li $t0, 0
	lw $t1, -4388($fp)
	sub $t0, $t0, $t1
	sw $t0, -4392($fp)
	addi $sp, $sp, -4
	lw $t0, -4392($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4396($fp)
	addi $sp, $sp, 8
	addi $sp, $sp, -4
	lw $t0, -4396($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4400($fp)
	addi $sp, $sp, 8
	lw $t0, -4368($fp)
	lw $t1, -4400($fp)
	mul $t0, $t0, $t1
	sw $t0, -4404($fp)
	lw $t0, -1388($fp)
	sw $t0, -4408($fp)
	li $t0, 18904
	sw $t0, -4412($fp)
	lw $t0, -4408($fp)
	lw $t1, -4412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4416($fp)
	lw $t1, -4404($fp)
	lw $t2, -4416($fp)
	bgt $t1, $t2, label804
	j label805
label804:
	li $t0, 1
	sw $t0, -4364($fp)
label805:
	li $t0, 0
	sw $t0, -4420($fp)
	lw $t0, -1532($fp)
	sw $t0, -4424($fp)
	lw $t1, -4424($fp)
	li $t2, 0
	bne $t1, $t2, label807
	j label806
label806:
	li $t0, 1
	sw $t0, -4420($fp)
label807:
	lw $t1, -4364($fp)
	lw $t2, -4420($fp)
	bne $t1, $t2, label802
	j label803
label802:
	li $t0, 1
	sw $t0, -4360($fp)
label803:
label791:
	lw $t0, -716($fp)
	sw $t0, -4428($fp)
	lw $t0, -4428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -728($fp)
	sw $t0, -4432($fp)
	lw $t0, -4432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -740($fp)
	sw $t0, -4436($fp)
	lw $t0, -4436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -624
	sw $t0, -4440($fp)
	li $t0, 0
	sw $t0, -4444($fp)
	li $t0, 4
	lw $t1, -4444($fp)
	mul $t0, $t0, $t1
	sw $t0, -4448($fp)
	lw $t0, -4448($fp)
	lw $t1, -4440($fp)
	add $t0, $t0, $t1
	sw $t0, -4452($fp)
	lw $t0, -4452($fp)
	lw $t1, 0($t0)
	sw $t1, -4456($fp)
	lw $t0, -4456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -624
	sw $t0, -4460($fp)
	li $t0, 1
	sw $t0, -4464($fp)
	li $t0, 4
	lw $t1, -4464($fp)
	mul $t0, $t0, $t1
	sw $t0, -4468($fp)
	lw $t0, -4468($fp)
	lw $t1, -4460($fp)
	add $t0, $t0, $t1
	sw $t0, -4472($fp)
	lw $t0, -4472($fp)
	lw $t1, 0($t0)
	sw $t1, -4476($fp)
	lw $t0, -4476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -624
	sw $t0, -4480($fp)
	li $t0, 2
	sw $t0, -4484($fp)
	li $t0, 4
	lw $t1, -4484($fp)
	mul $t0, $t0, $t1
	sw $t0, -4488($fp)
	lw $t0, -4488($fp)
	lw $t1, -4480($fp)
	add $t0, $t0, $t1
	sw $t0, -4492($fp)
	lw $t0, -4492($fp)
	lw $t1, 0($t0)
	sw $t1, -4496($fp)
	lw $t0, -4496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -824($fp)
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -836($fp)
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -660
	sw $t0, -4508($fp)
	li $t0, 0
	sw $t0, -4512($fp)
	li $t0, 4
	lw $t1, -4512($fp)
	mul $t0, $t0, $t1
	sw $t0, -4516($fp)
	lw $t0, -4516($fp)
	lw $t1, -4508($fp)
	add $t0, $t0, $t1
	sw $t0, -4520($fp)
	lw $t0, -4520($fp)
	lw $t1, 0($t0)
	sw $t1, -4524($fp)
	lw $t0, -4524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -660
	sw $t0, -4528($fp)
	li $t0, 1
	sw $t0, -4532($fp)
	li $t0, 4
	lw $t1, -4532($fp)
	mul $t0, $t0, $t1
	sw $t0, -4536($fp)
	lw $t0, -4536($fp)
	lw $t1, -4528($fp)
	add $t0, $t0, $t1
	sw $t0, -4540($fp)
	lw $t0, -4540($fp)
	lw $t1, 0($t0)
	sw $t1, -4544($fp)
	lw $t0, -4544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -660
	sw $t0, -4548($fp)
	li $t0, 2
	sw $t0, -4552($fp)
	li $t0, 4
	lw $t1, -4552($fp)
	mul $t0, $t0, $t1
	sw $t0, -4556($fp)
	lw $t0, -4556($fp)
	lw $t1, -4548($fp)
	add $t0, $t0, $t1
	sw $t0, -4560($fp)
	lw $t0, -4560($fp)
	lw $t1, 0($t0)
	sw $t1, -4564($fp)
	lw $t0, -4564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -660
	sw $t0, -4568($fp)
	li $t0, 3
	sw $t0, -4572($fp)
	li $t0, 4
	lw $t1, -4572($fp)
	mul $t0, $t0, $t1
	sw $t0, -4576($fp)
	lw $t0, -4576($fp)
	lw $t1, -4568($fp)
	add $t0, $t0, $t1
	sw $t0, -4580($fp)
	lw $t0, -4580($fp)
	lw $t1, 0($t0)
	sw $t1, -4584($fp)
	lw $t0, -4584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -660
	sw $t0, -4588($fp)
	li $t0, 4
	sw $t0, -4592($fp)
	li $t0, 4
	lw $t1, -4592($fp)
	mul $t0, $t0, $t1
	sw $t0, -4596($fp)
	lw $t0, -4596($fp)
	lw $t1, -4588($fp)
	add $t0, $t0, $t1
	sw $t0, -4600($fp)
	lw $t0, -4600($fp)
	lw $t1, 0($t0)
	sw $t1, -4604($fp)
	lw $t0, -4604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -660
	sw $t0, -4608($fp)
	li $t0, 5
	sw $t0, -4612($fp)
	li $t0, 4
	lw $t1, -4612($fp)
	mul $t0, $t0, $t1
	sw $t0, -4616($fp)
	lw $t0, -4616($fp)
	lw $t1, -4608($fp)
	add $t0, $t0, $t1
	sw $t0, -4620($fp)
	lw $t0, -4620($fp)
	lw $t1, 0($t0)
	sw $t1, -4624($fp)
	lw $t0, -4624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -660
	sw $t0, -4628($fp)
	li $t0, 6
	sw $t0, -4632($fp)
	li $t0, 4
	lw $t1, -4632($fp)
	mul $t0, $t0, $t1
	sw $t0, -4636($fp)
	lw $t0, -4636($fp)
	lw $t1, -4628($fp)
	add $t0, $t0, $t1
	sw $t0, -4640($fp)
	lw $t0, -4640($fp)
	lw $t1, 0($t0)
	sw $t1, -4644($fp)
	lw $t0, -4644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -660
	sw $t0, -4648($fp)
	li $t0, 7
	sw $t0, -4652($fp)
	li $t0, 4
	lw $t1, -4652($fp)
	mul $t0, $t0, $t1
	sw $t0, -4656($fp)
	lw $t0, -4656($fp)
	lw $t1, -4648($fp)
	add $t0, $t0, $t1
	sw $t0, -4660($fp)
	lw $t0, -4660($fp)
	lw $t1, 0($t0)
	sw $t1, -4664($fp)
	lw $t0, -4664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -660
	sw $t0, -4668($fp)
	li $t0, 8
	sw $t0, -4672($fp)
	li $t0, 4
	lw $t1, -4672($fp)
	mul $t0, $t0, $t1
	sw $t0, -4676($fp)
	lw $t0, -4676($fp)
	lw $t1, -4668($fp)
	add $t0, $t0, $t1
	sw $t0, -4680($fp)
	lw $t0, -4680($fp)
	lw $t1, 0($t0)
	sw $t1, -4684($fp)
	lw $t0, -4684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1064($fp)
	sw $t0, -4688($fp)
	lw $t0, -4688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1076($fp)
	sw $t0, -4692($fp)
	lw $t0, -4692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1088($fp)
	sw $t0, -4696($fp)
	lw $t0, -4696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -700
	sw $t0, -4700($fp)
	li $t0, 0
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
	lw $t0, -4716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -700
	sw $t0, -4720($fp)
	li $t0, 1
	sw $t0, -4724($fp)
	li $t0, 4
	lw $t1, -4724($fp)
	mul $t0, $t0, $t1
	sw $t0, -4728($fp)
	lw $t0, -4728($fp)
	lw $t1, -4720($fp)
	add $t0, $t0, $t1
	sw $t0, -4732($fp)
	lw $t0, -4732($fp)
	lw $t1, 0($t0)
	sw $t1, -4736($fp)
	lw $t0, -4736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -700
	sw $t0, -4740($fp)
	li $t0, 2
	sw $t0, -4744($fp)
	li $t0, 4
	lw $t1, -4744($fp)
	mul $t0, $t0, $t1
	sw $t0, -4748($fp)
	lw $t0, -4748($fp)
	lw $t1, -4740($fp)
	add $t0, $t0, $t1
	sw $t0, -4752($fp)
	lw $t0, -4752($fp)
	lw $t1, 0($t0)
	sw $t1, -4756($fp)
	lw $t0, -4756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -700
	sw $t0, -4760($fp)
	li $t0, 3
	sw $t0, -4764($fp)
	li $t0, 4
	lw $t1, -4764($fp)
	mul $t0, $t0, $t1
	sw $t0, -4768($fp)
	lw $t0, -4768($fp)
	lw $t1, -4760($fp)
	add $t0, $t0, $t1
	sw $t0, -4772($fp)
	lw $t0, -4772($fp)
	lw $t1, 0($t0)
	sw $t1, -4776($fp)
	lw $t0, -4776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -700
	sw $t0, -4780($fp)
	li $t0, 4
	sw $t0, -4784($fp)
	li $t0, 4
	lw $t1, -4784($fp)
	mul $t0, $t0, $t1
	sw $t0, -4788($fp)
	lw $t0, -4788($fp)
	lw $t1, -4780($fp)
	add $t0, $t0, $t1
	sw $t0, -4792($fp)
	lw $t0, -4792($fp)
	lw $t1, 0($t0)
	sw $t1, -4796($fp)
	lw $t0, -4796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -700
	sw $t0, -4800($fp)
	li $t0, 5
	sw $t0, -4804($fp)
	li $t0, 4
	lw $t1, -4804($fp)
	mul $t0, $t0, $t1
	sw $t0, -4808($fp)
	lw $t0, -4808($fp)
	lw $t1, -4800($fp)
	add $t0, $t0, $t1
	sw $t0, -4812($fp)
	lw $t0, -4812($fp)
	lw $t1, 0($t0)
	sw $t1, -4816($fp)
	lw $t0, -4816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -700
	sw $t0, -4820($fp)
	li $t0, 6
	sw $t0, -4824($fp)
	li $t0, 4
	lw $t1, -4824($fp)
	mul $t0, $t0, $t1
	sw $t0, -4828($fp)
	lw $t0, -4828($fp)
	lw $t1, -4820($fp)
	add $t0, $t0, $t1
	sw $t0, -4832($fp)
	lw $t0, -4832($fp)
	lw $t1, 0($t0)
	sw $t1, -4836($fp)
	lw $t0, -4836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -700
	sw $t0, -4840($fp)
	li $t0, 7
	sw $t0, -4844($fp)
	li $t0, 4
	lw $t1, -4844($fp)
	mul $t0, $t0, $t1
	sw $t0, -4848($fp)
	lw $t0, -4848($fp)
	lw $t1, -4840($fp)
	add $t0, $t0, $t1
	sw $t0, -4852($fp)
	lw $t0, -4852($fp)
	lw $t1, 0($t0)
	sw $t1, -4856($fp)
	lw $t0, -4856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -700
	sw $t0, -4860($fp)
	li $t0, 8
	sw $t0, -4864($fp)
	li $t0, 4
	lw $t1, -4864($fp)
	mul $t0, $t0, $t1
	sw $t0, -4868($fp)
	lw $t0, -4868($fp)
	lw $t1, -4860($fp)
	add $t0, $t0, $t1
	sw $t0, -4872($fp)
	lw $t0, -4872($fp)
	lw $t1, 0($t0)
	sw $t1, -4876($fp)
	lw $t0, -4876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -700
	sw $t0, -4880($fp)
	li $t0, 9
	sw $t0, -4884($fp)
	li $t0, 4
	lw $t1, -4884($fp)
	mul $t0, $t0, $t1
	sw $t0, -4888($fp)
	lw $t0, -4888($fp)
	lw $t1, -4880($fp)
	add $t0, $t0, $t1
	sw $t0, -4892($fp)
	lw $t0, -4892($fp)
	lw $t1, 0($t0)
	sw $t1, -4896($fp)
	lw $t0, -4896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1340($fp)
	sw $t0, -4900($fp)
	lw $t0, -4900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1352($fp)
	sw $t0, -4904($fp)
	lw $t0, -4904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1364($fp)
	sw $t0, -4908($fp)
	lw $t0, -4908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1376($fp)
	sw $t0, -4912($fp)
	lw $t0, -4912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1388($fp)
	sw $t0, -4916($fp)
	lw $t0, -4916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1400($fp)
	sw $t0, -4920($fp)
	lw $t0, -4920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -708
	sw $t0, -4924($fp)
	li $t0, 0
	sw $t0, -4928($fp)
	li $t0, 4
	lw $t1, -4928($fp)
	mul $t0, $t0, $t1
	sw $t0, -4932($fp)
	lw $t0, -4932($fp)
	lw $t1, -4924($fp)
	add $t0, $t0, $t1
	sw $t0, -4936($fp)
	lw $t0, -4936($fp)
	lw $t1, 0($t0)
	sw $t1, -4940($fp)
	lw $t0, -4940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -708
	sw $t0, -4944($fp)
	li $t0, 1
	sw $t0, -4948($fp)
	li $t0, 4
	lw $t1, -4948($fp)
	mul $t0, $t0, $t1
	sw $t0, -4952($fp)
	lw $t0, -4952($fp)
	lw $t1, -4944($fp)
	add $t0, $t0, $t1
	sw $t0, -4956($fp)
	lw $t0, -4956($fp)
	lw $t1, 0($t0)
	sw $t1, -4960($fp)
	lw $t0, -4960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1460($fp)
	sw $t0, -4964($fp)
	lw $t0, -4964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1472($fp)
	sw $t0, -4968($fp)
	lw $t0, -4968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1484($fp)
	sw $t0, -4972($fp)
	lw $t0, -4972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1496($fp)
	sw $t0, -4976($fp)
	lw $t0, -4976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1508($fp)
	sw $t0, -4980($fp)
	lw $t0, -4980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1520($fp)
	sw $t0, -4984($fp)
	lw $t0, -4984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1532($fp)
	sw $t0, -4988($fp)
	lw $t0, -4988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1544($fp)
	sw $t0, -4992($fp)
	lw $t0, -4992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1556($fp)
	sw $t0, -4996($fp)
	lw $t0, -4996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1568($fp)
	sw $t0, -5000($fp)
	lw $t0, -5000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1580($fp)
	sw $t0, -5004($fp)
	lw $t0, -5004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1592($fp)
	sw $t0, -5008($fp)
	lw $t0, -5008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1604($fp)
	sw $t0, -5012($fp)
	lw $t0, -5012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -700
	sw $t0, -5016($fp)
	addi $t0, $fp, -56
	sw $t0, -5020($fp)
	li $t0, 0
	sw $t0, -5024($fp)
	li $t0, 4
	lw $t1, -5024($fp)
	mul $t0, $t0, $t1
	sw $t0, -5028($fp)
	lw $t0, -5028($fp)
	lw $t1, -5020($fp)
	add $t0, $t0, $t1
	sw $t0, -5032($fp)
	lw $t0, -5032($fp)
	lw $t1, 0($t0)
	sw $t1, -5036($fp)
	li $t0, 357
	sw $t0, -5040($fp)
	lw $t0, -5036($fp)
	lw $t1, -5040($fp)
	sub $t0, $t0, $t1
	sw $t0, -5044($fp)
	li $t0, 4
	lw $t1, -5044($fp)
	mul $t0, $t0, $t1
	sw $t0, -5048($fp)
	lw $t0, -5048($fp)
	lw $t1, -5016($fp)
	add $t0, $t0, $t1
	sw $t0, -5052($fp)
	lw $t0, -5052($fp)
	lw $t1, 0($t0)
	sw $t1, -5056($fp)
	lw $ra, -4($fp)
	lw $v0, -5056($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -1544($fp)
	sw $t0, -5060($fp)
	lw $t0, -1556($fp)
	sw $t0, -5064($fp)
	lw $t0, -5060($fp)
	lw $t1, -5064($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5068($fp)
	li $t0, 0
	lw $t1, -5068($fp)
	sub $t0, $t0, $t1
	sw $t0, -5072($fp)
	li $t0, 0
	sw $t0, -5076($fp)
	lw $t0, -1532($fp)
	sw $t0, -5080($fp)
	lw $t1, -5080($fp)
	li $t2, 0
	bne $t1, $t2, label812
	j label811
label811:
	li $t0, 1
	sw $t0, -5076($fp)
label812:
	lw $t0, -5072($fp)
	lw $t1, -5076($fp)
	add $t0, $t0, $t1
	sw $t0, -5084($fp)
	li $t0, 0
	sw $t0, -5088($fp)
	lw $t0, -1568($fp)
	sw $t0, -5092($fp)
	lw $t1, -5092($fp)
	li $t2, 0
	bne $t1, $t2, label814
	j label813
label813:
	li $t0, 1
	sw $t0, -5088($fp)
label814:
	lw $t0, -5084($fp)
	lw $t1, -5088($fp)
	add $t0, $t0, $t1
	sw $t0, -5096($fp)
	li $t0, 30312
	sw $t0, -5100($fp)
	lw $t1, -5096($fp)
	lw $t2, -5100($fp)
	beq $t1, $t2, label808
	j label809
label808:
	li $t0, 5949
	sw $t0, -5140($fp)
	lw $t0, -5140($fp)
	sw $t0, -5144($fp)
	lw $t0, -5144($fp)
	sw $t0, -5148($fp)
	li $t0, 22291
	sw $t0, -5152($fp)
	lw $t0, -5152($fp)
	sw $t0, -5156($fp)
	lw $t0, -5156($fp)
	sw $t0, -5160($fp)
	li $t0, 44275
	sw $t0, -5164($fp)
	addi $t0, $fp, -5136
	sw $t0, -5168($fp)
	li $t0, 0
	sw $t0, -5172($fp)
	lw $t0, -5172($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5176($fp)
	lw $t0, -5168($fp)
	lw $t1, -5176($fp)
	add $t0, $t0, $t1
	sw $t0, -5180($fp)
	lw $t0, -5164($fp)
	lw $t1, -5180($fp)
	sw $t0, 0($t1)
	lw $t0, -5180($fp)
	lw $t1, 0($t0)
	sw $t1, -5184($fp)
	li $t0, 48270
	sw $t0, -5188($fp)
	addi $t0, $fp, -5136
	sw $t0, -5192($fp)
	li $t0, 1
	sw $t0, -5196($fp)
	lw $t0, -5196($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5200($fp)
	lw $t0, -5192($fp)
	lw $t1, -5200($fp)
	add $t0, $t0, $t1
	sw $t0, -5204($fp)
	lw $t0, -5188($fp)
	lw $t1, -5204($fp)
	sw $t0, 0($t1)
	lw $t0, -5204($fp)
	lw $t1, 0($t0)
	sw $t1, -5208($fp)
	li $t0, 34216
	sw $t0, -5212($fp)
	addi $t0, $fp, -5136
	sw $t0, -5216($fp)
	li $t0, 2
	sw $t0, -5220($fp)
	lw $t0, -5220($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5224($fp)
	lw $t0, -5216($fp)
	lw $t1, -5224($fp)
	add $t0, $t0, $t1
	sw $t0, -5228($fp)
	lw $t0, -5212($fp)
	lw $t1, -5228($fp)
	sw $t0, 0($t1)
	lw $t0, -5228($fp)
	lw $t1, 0($t0)
	sw $t1, -5232($fp)
	li $t0, 43381
	sw $t0, -5236($fp)
	addi $t0, $fp, -5136
	sw $t0, -5240($fp)
	li $t0, 3
	sw $t0, -5244($fp)
	lw $t0, -5244($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5248($fp)
	lw $t0, -5240($fp)
	lw $t1, -5248($fp)
	add $t0, $t0, $t1
	sw $t0, -5252($fp)
	lw $t0, -5236($fp)
	lw $t1, -5252($fp)
	sw $t0, 0($t1)
	lw $t0, -5252($fp)
	lw $t1, 0($t0)
	sw $t1, -5256($fp)
	li $t0, 37474
	sw $t0, -5260($fp)
	addi $t0, $fp, -5136
	sw $t0, -5264($fp)
	li $t0, 4
	sw $t0, -5268($fp)
	lw $t0, -5268($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5272($fp)
	lw $t0, -5264($fp)
	lw $t1, -5272($fp)
	add $t0, $t0, $t1
	sw $t0, -5276($fp)
	lw $t0, -5260($fp)
	lw $t1, -5276($fp)
	sw $t0, 0($t1)
	lw $t0, -5276($fp)
	lw $t1, 0($t0)
	sw $t1, -5280($fp)
	li $t0, 15758
	sw $t0, -5284($fp)
	addi $t0, $fp, -5136
	sw $t0, -5288($fp)
	li $t0, 5
	sw $t0, -5292($fp)
	lw $t0, -5292($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5296($fp)
	lw $t0, -5288($fp)
	lw $t1, -5296($fp)
	add $t0, $t0, $t1
	sw $t0, -5300($fp)
	lw $t0, -5284($fp)
	lw $t1, -5300($fp)
	sw $t0, 0($t1)
	lw $t0, -5300($fp)
	lw $t1, 0($t0)
	sw $t1, -5304($fp)
	li $t0, 29265
	sw $t0, -5308($fp)
	addi $t0, $fp, -5136
	sw $t0, -5312($fp)
	li $t0, 6
	sw $t0, -5316($fp)
	lw $t0, -5316($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5320($fp)
	lw $t0, -5312($fp)
	lw $t1, -5320($fp)
	add $t0, $t0, $t1
	sw $t0, -5324($fp)
	lw $t0, -5308($fp)
	lw $t1, -5324($fp)
	sw $t0, 0($t1)
	lw $t0, -5324($fp)
	lw $t1, 0($t0)
	sw $t1, -5328($fp)
	li $t0, 58470
	sw $t0, -5332($fp)
	addi $t0, $fp, -5136
	sw $t0, -5336($fp)
	li $t0, 7
	sw $t0, -5340($fp)
	lw $t0, -5340($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5344($fp)
	lw $t0, -5336($fp)
	lw $t1, -5344($fp)
	add $t0, $t0, $t1
	sw $t0, -5348($fp)
	lw $t0, -5332($fp)
	lw $t1, -5348($fp)
	sw $t0, 0($t1)
	lw $t0, -5348($fp)
	lw $t1, 0($t0)
	sw $t1, -5352($fp)
	li $t0, 33369
	sw $t0, -5356($fp)
	addi $t0, $fp, -5136
	sw $t0, -5360($fp)
	li $t0, 8
	sw $t0, -5364($fp)
	lw $t0, -5364($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5368($fp)
	lw $t0, -5360($fp)
	lw $t1, -5368($fp)
	add $t0, $t0, $t1
	sw $t0, -5372($fp)
	lw $t0, -5356($fp)
	lw $t1, -5372($fp)
	sw $t0, 0($t1)
	lw $t0, -5372($fp)
	lw $t1, 0($t0)
	sw $t1, -5376($fp)
	li $t0, 10972
	sw $t0, -5380($fp)
	lw $t0, -5380($fp)
	sw $t0, -5384($fp)
	lw $t0, -5384($fp)
	sw $t0, -5388($fp)
	li $t0, 0
	sw $t0, -5392($fp)
	li $t0, 0
	sw $t0, -5396($fp)
	lw $t0, -836($fp)
	sw $t0, -5400($fp)
	li $t0, 0
	lw $t1, -5400($fp)
	sub $t0, $t0, $t1
	sw $t0, -5404($fp)
	lw $t1, -5404($fp)
	li $t2, 0
	bne $t1, $t2, label819
	j label818
label818:
	li $t0, 1
	sw $t0, -5396($fp)
label819:
	li $t0, 0
	lw $t1, -5396($fp)
	sub $t0, $t0, $t1
	sw $t0, -5408($fp)
	li $t0, 0
	sw $t0, -5412($fp)
	li $t0, 38197
	sw $t0, -5416($fp)
	lw $t1, -5416($fp)
	li $t2, 0
	bne $t1, $t2, label821
	j label820
label820:
	li $t0, 1
	sw $t0, -5412($fp)
label821:
	lw $t1, -5408($fp)
	lw $t2, -5412($fp)
	bgt $t1, $t2, label815
	j label817
label817:
	lw $t0, -1400($fp)
	sw $t0, -5420($fp)
	lw $t0, -244($fp)
	sw $t0, -5424($fp)
	li $t0, 25910
	sw $t0, -5428($fp)
	lw $t0, -5424($fp)
	lw $t1, -5428($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5432($fp)
	lw $t0, -5420($fp)
	lw $t1, -5432($fp)
	sub $t0, $t0, $t1
	sw $t0, -5436($fp)
	lw $t1, -5436($fp)
	li $t2, 0
	bne $t1, $t2, label815
	j label816
label815:
	li $t0, 1
	sw $t0, -5392($fp)
label816:
	addi $t0, $fp, -660
	sw $t0, -5440($fp)
	li $t0, 0
	sw $t0, -5444($fp)
	li $t0, 28695
	sw $t0, -5448($fp)
	lw $t1, -5448($fp)
	li $t2, 0
	bne $t1, $t2, label828
	j label826
label828:
	lw $t0, -1400($fp)
	sw $t0, -5452($fp)
	lw $t1, -5452($fp)
	li $t2, 0
	bne $t1, $t2, label827
	j label826
label827:
	lw $t0, -5144($fp)
	sw $t0, -5456($fp)
	lw $t1, -5456($fp)
	li $t2, 0
	bne $t1, $t2, label825
	j label826
label825:
	li $t0, 1
	sw $t0, -5444($fp)
label826:
	li $t0, 4
	lw $t1, -5444($fp)
	mul $t0, $t0, $t1
	sw $t0, -5460($fp)
	lw $t0, -5460($fp)
	lw $t1, -5440($fp)
	add $t0, $t0, $t1
	sw $t0, -5464($fp)
	lw $t0, -5464($fp)
	lw $t1, 0($t0)
	sw $t1, -5468($fp)
	lw $t0, -292($fp)
	sw $t0, -5472($fp)
	li $t0, 0
	lw $t1, -5472($fp)
	sub $t0, $t0, $t1
	sw $t0, -5476($fp)
	lw $t1, -5468($fp)
	lw $t2, -5476($fp)
	bne $t1, $t2, label822
	j label823
label822:
	li $t0, 0
	sw $t0, -5480($fp)
	li $t0, 24537
	sw $t0, -5484($fp)
	li $t0, 0
	lw $t1, -5484($fp)
	sub $t0, $t0, $t1
	sw $t0, -5488($fp)
	lw $t1, -5488($fp)
	li $t2, 0
	bne $t1, $t2, label829
	j label831
label831:
	li $t0, 36061
	sw $t0, -5492($fp)
	lw $t1, -5492($fp)
	li $t2, 0
	bne $t1, $t2, label830
	j label829
label829:
	li $t0, 1
	sw $t0, -5480($fp)
label830:
	lw $ra, -4($fp)
	lw $v0, -5480($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label824
label823:
	li $t0, 0
	sw $t0, -5496($fp)
	li $t0, 58449
	sw $t0, -5500($fp)
	li $t0, 34512
	sw $t0, -5504($fp)
	li $t0, 44168
	sw $t0, -5508($fp)
	lw $t0, -5504($fp)
	lw $t1, -5508($fp)
	mul $t0, $t0, $t1
	sw $t0, -5512($fp)
	addi $sp, $sp, -4
	lw $t0, -5512($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5516($fp)
	addi $sp, $sp, 8
	lw $t0, -5500($fp)
	lw $t1, -5516($fp)
	sub $t0, $t0, $t1
	sw $t0, -5520($fp)
	li $t0, 28464
	sw $t0, -5524($fp)
	lw $t1, -5520($fp)
	lw $t2, -5524($fp)
	beq $t1, $t2, label832
	j label834
label834:
	li $t0, 56588
	sw $t0, -5528($fp)
	lw $t0, -220($fp)
	sw $t0, -5532($fp)
	lw $t0, -5528($fp)
	lw $t1, -5532($fp)
	sub $t0, $t0, $t1
	sw $t0, -5536($fp)
	li $t0, 0
	sw $t0, -5540($fp)
	lw $t0, -5156($fp)
	sw $t0, -5544($fp)
	li $t0, 20300
	sw $t0, -5548($fp)
	lw $t1, -5544($fp)
	lw $t2, -5548($fp)
	ble $t1, $t2, label835
	j label836
label835:
	li $t0, 1
	sw $t0, -5540($fp)
label836:
	lw $t1, -5536($fp)
	lw $t2, -5540($fp)
	beq $t1, $t2, label832
	j label833
label832:
	li $t0, 1
	sw $t0, -5496($fp)
label833:
label824:
	li $t0, 22237
	sw $t0, -5552($fp)
	lw $t0, -5552($fp)
	sw $t0, -5556($fp)
	lw $t0, -5556($fp)
	sw $t0, -5560($fp)
	li $t0, 0
	sw $t0, -5564($fp)
	lw $t0, -1520($fp)
	sw $t0, -5568($fp)
	li $t0, 39221
	sw $t0, -5572($fp)
	lw $t0, -5568($fp)
	lw $t1, -5572($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5576($fp)
	lw $t0, -484($fp)
	sw $t0, -5580($fp)
	lw $t0, -5580($fp)
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -5584($fp)
	lw $t0, -220($fp)
	sw $t0, -5588($fp)
	li $t0, 0
	sw $t0, -5592($fp)
	lw $t0, -244($fp)
	sw $t0, -5596($fp)
	lw $t0, -1568($fp)
	sw $t0, -5600($fp)
	lw $t1, -5596($fp)
	lw $t2, -5600($fp)
	beq $t1, $t2, label842
	j label841
label842:
	li $t0, 41141
	sw $t0, -5604($fp)
	lw $t1, -5604($fp)
	li $t2, 0
	bne $t1, $t2, label840
	j label841
label840:
	li $t0, 1
	sw $t0, -5592($fp)
label841:
	li $t0, 0
	sw $t0, -5608($fp)
	lw $t0, -728($fp)
	sw $t0, -5612($fp)
	lw $t0, -1460($fp)
	sw $t0, -5616($fp)
	lw $t0, -5612($fp)
	lw $t1, -5616($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5620($fp)
	li $t0, 43865
	sw $t0, -5624($fp)
	lw $t1, -5620($fp)
	lw $t2, -5624($fp)
	bgt $t1, $t2, label843
	j label844
label843:
	li $t0, 1
	sw $t0, -5608($fp)
label844:
	li $t0, 0
	sw $t0, -5628($fp)
	lw $t0, -5156($fp)
	sw $t0, -5632($fp)
	lw $t1, -5632($fp)
	li $t2, 0
	bne $t1, $t2, label846
	j label845
label845:
	li $t0, 1
	sw $t0, -5628($fp)
label846:
	addi $sp, $sp, -4
	lw $t0, -5584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5628($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -5636($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -5636($fp)
	sub $t0, $t0, $t1
	sw $t0, -5640($fp)
	li $t0, 0
	sw $t0, -5644($fp)
	lw $t0, -5156($fp)
	sw $t0, -5648($fp)
	lw $t0, -5648($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -5652($fp)
	addi $sp, $sp, -4
	lw $t0, -5652($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5656($fp)
	addi $sp, $sp, 8
	lw $t1, -5656($fp)
	li $t2, 0
	bne $t1, $t2, label848
	j label847
label847:
	li $t0, 1
	sw $t0, -5644($fp)
label848:
	addi $sp, $sp, -4
	lw $t0, -5640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5644($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5660($fp)
	addi $sp, $sp, 12
	lw $t0, -5576($fp)
	lw $t1, -5660($fp)
	add $t0, $t0, $t1
	sw $t0, -5664($fp)
	li $t0, 14017
	sw $t0, -5668($fp)
	li $t0, 0
	lw $t1, -5668($fp)
	sub $t0, $t0, $t1
	sw $t0, -5672($fp)
	li $t0, 28842
	sw $t0, -5676($fp)
	lw $t0, -5672($fp)
	lw $t1, -5676($fp)
	add $t0, $t0, $t1
	sw $t0, -5680($fp)
	lw $t1, -5664($fp)
	lw $t2, -5680($fp)
	bge $t1, $t2, label839
	j label838
label839:
	lw $t0, -1472($fp)
	sw $t0, -5684($fp)
	lw $t1, -5684($fp)
	li $t2, 0
	bne $t1, $t2, label837
	j label838
label837:
	li $t0, 1
	sw $t0, -5564($fp)
label838:
	li $t0, 0
	sw $t0, -5688($fp)
	li $t0, 41498
	sw $t0, -5692($fp)
	lw $t0, -5556($fp)
	sw $t0, -5696($fp)
	lw $t0, -484($fp)
	sw $t0, -5700($fp)
	lw $t0, -5696($fp)
	lw $t1, -5700($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5704($fp)
	li $t0, 44329
	sw $t0, -5708($fp)
	lw $t0, -5704($fp)
	lw $t1, -5708($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5712($fp)
	lw $t0, -5692($fp)
	lw $t1, -5712($fp)
	sub $t0, $t0, $t1
	sw $t0, -5716($fp)
	lw $t0, -1340($fp)
	sw $t0, -5720($fp)
	lw $t1, -5716($fp)
	lw $t2, -5720($fp)
	ble $t1, $t2, label849
	j label850
label849:
	li $t0, 1
	sw $t0, -5688($fp)
label850:
	li $t0, 34791
	sw $t0, -5724($fp)
	lw $t0, -208($fp)
	sw $t0, -5728($fp)
	lw $t0, -5728($fp)
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -5732($fp)
	li $t0, 0
	sw $t0, -5736($fp)
	li $t0, 17525
	sw $t0, -5740($fp)
	lw $t0, -1472($fp)
	sw $t0, -5744($fp)
	lw $t0, -5740($fp)
	lw $t1, -5744($fp)
	add $t0, $t0, $t1
	sw $t0, -5748($fp)
	li $t0, 32469
	sw $t0, -5752($fp)
	lw $t1, -5748($fp)
	lw $t2, -5752($fp)
	bne $t1, $t2, label854
	j label855
label854:
	li $t0, 1
	sw $t0, -5736($fp)
label855:
	lw $t0, -5384($fp)
	sw $t0, -5756($fp)
	li $t0, 0
	sw $t0, -5760($fp)
	li $t0, 0
	sw $t0, -5764($fp)
	lw $t0, -244($fp)
	sw $t0, -5768($fp)
	li $t0, 23069
	sw $t0, -5772($fp)
	lw $t1, -5768($fp)
	lw $t2, -5772($fp)
	blt $t1, $t2, label858
	j label859
label858:
	li $t0, 1
	sw $t0, -5764($fp)
label859:
	lw $t0, -1088($fp)
	sw $t0, -5776($fp)
	lw $t1, -5764($fp)
	lw $t2, -5776($fp)
	bne $t1, $t2, label856
	j label857
label856:
	li $t0, 1
	sw $t0, -5760($fp)
label857:
	li $t0, 63789
	sw $t0, -5780($fp)
	lw $t0, -5780($fp)
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	sw $t0, -5784($fp)
	addi $sp, $sp, -4
	lw $t0, -5732($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5784($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -5788($fp)
	addi $sp, $sp, 24
	lw $t0, -5788($fp)
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	sw $t0, -5792($fp)
	lw $t1, -5792($fp)
	li $t2, 0
	bne $t1, $t2, label851
	j label852
label851:
label860:
	li $t0, 0
	sw $t0, -5796($fp)
	addi $t0, $fp, -5136
	sw $t0, -5800($fp)
	lw $t0, -232($fp)
	sw $t0, -5804($fp)
	li $t0, 4
	lw $t1, -5804($fp)
	mul $t0, $t0, $t1
	sw $t0, -5808($fp)
	lw $t0, -5808($fp)
	lw $t1, -5800($fp)
	add $t0, $t0, $t1
	sw $t0, -5812($fp)
	lw $t0, -5812($fp)
	lw $t1, 0($t0)
	sw $t1, -5816($fp)
	addi $t0, $fp, -708
	sw $t0, -5820($fp)
	lw $t0, -5384($fp)
	sw $t0, -5824($fp)
	li $t0, 4
	lw $t1, -5824($fp)
	mul $t0, $t0, $t1
	sw $t0, -5828($fp)
	lw $t0, -5828($fp)
	lw $t1, -5820($fp)
	add $t0, $t0, $t1
	sw $t0, -5832($fp)
	lw $t0, -5832($fp)
	lw $t1, 0($t0)
	sw $t1, -5836($fp)
	lw $t1, -5816($fp)
	lw $t2, -5836($fp)
	bgt $t1, $t2, label863
	j label864
label863:
	li $t0, 1
	sw $t0, -5796($fp)
label864:
	lw $t0, -5796($fp)
	sw $t0, -1400($fp)
	lw $t0, -1400($fp)
	sw $t0, -5840($fp)
	lw $t1, -5840($fp)
	li $t2, 0
	bne $t1, $t2, label861
	j label862
label861:
	li $t0, 0
	sw $t0, -5844($fp)
	addi $t0, $fp, -28
	sw $t0, -5848($fp)
	lw $t0, -1544($fp)
	sw $t0, -5852($fp)
	lw $t0, -5852($fp)
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -5856($fp)
	li $t0, 4
	lw $t1, -5856($fp)
	mul $t0, $t0, $t1
	sw $t0, -5860($fp)
	lw $t0, -5860($fp)
	lw $t1, -5848($fp)
	add $t0, $t0, $t1
	sw $t0, -5864($fp)
	lw $t0, -5864($fp)
	lw $t1, 0($t0)
	sw $t1, -5868($fp)
	lw $t1, -5868($fp)
	li $t2, 0
	bne $t1, $t2, label867
	j label866
label867:
	li $t0, 914
	sw $t0, -5872($fp)
	lw $t1, -5872($fp)
	li $t2, 0
	bne $t1, $t2, label865
	j label866
label865:
	li $t0, 1
	sw $t0, -5844($fp)
label866:
	j label860
label862:
label852:
	j label810
label809:
	lw $t0, 16($fp)
	sw $t0, -5876($fp)
	lw $t1, -5876($fp)
	li $t2, 0
	bne $t1, $t2, label868
	j label869
label868:
	li $t0, 0
	sw $t0, -5880($fp)
	li $t0, 0
	sw $t0, -5884($fp)
	lw $t0, -1592($fp)
	sw $t0, -5888($fp)
	lw $t1, -5888($fp)
	li $t2, 0
	bne $t1, $t2, label875
	j label874
label874:
	li $t0, 1
	sw $t0, -5884($fp)
label875:
	li $t0, 0
	lw $t1, -5884($fp)
	sub $t0, $t0, $t1
	sw $t0, -5892($fp)
	lw $t0, -292($fp)
	sw $t0, -5896($fp)
	lw $t1, -5892($fp)
	lw $t2, -5896($fp)
	blt $t1, $t2, label873
	j label872
label873:
	lw $t0, -1604($fp)
	sw $t0, -5900($fp)
	li $t0, 0
	lw $t1, -5900($fp)
	sub $t0, $t0, $t1
	sw $t0, -5904($fp)
	lw $t1, -5904($fp)
	li $t2, 0
	bne $t1, $t2, label871
	j label872
label871:
	li $t0, 1
	sw $t0, -5880($fp)
label872:
	lw $ra, -4($fp)
	lw $v0, -5880($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label869:
label810:
	j label634
label636:
label631:
	j label627
label626:
	li $t0, 0
	sw $t0, -5908($fp)
	lw $t0, -472($fp)
	sw $t0, -5912($fp)
	li $t0, 0
	lw $t1, -5912($fp)
	sub $t0, $t0, $t1
	sw $t0, -5916($fp)
	lw $t1, -5916($fp)
	li $t2, 0
	bne $t1, $t2, label877
	j label876
label876:
	li $t0, 1
	sw $t0, -5908($fp)
label877:
label627:
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	lw $t0, -208($fp)
	sw $t0, -6040($fp)
	lw $t0, -6040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -220($fp)
	sw $t0, -6044($fp)
	lw $t0, -6044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -232($fp)
	sw $t0, -6048($fp)
	lw $t0, -6048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -244($fp)
	sw $t0, -6052($fp)
	lw $t0, -6052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -256($fp)
	sw $t0, -6056($fp)
	lw $t0, -6056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	sw $t0, -6060($fp)
	lw $t0, -6060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -6064($fp)
	lw $t0, -6064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -292($fp)
	sw $t0, -6068($fp)
	lw $t0, -6068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6072($fp)
	li $t0, 0
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
	lw $t0, -6088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6092($fp)
	li $t0, 1
	sw $t0, -6096($fp)
	li $t0, 4
	lw $t1, -6096($fp)
	mul $t0, $t0, $t1
	sw $t0, -6100($fp)
	lw $t0, -6100($fp)
	lw $t1, -6092($fp)
	add $t0, $t0, $t1
	sw $t0, -6104($fp)
	lw $t0, -6104($fp)
	lw $t1, 0($t0)
	sw $t1, -6108($fp)
	lw $t0, -6108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6112($fp)
	li $t0, 2
	sw $t0, -6116($fp)
	li $t0, 4
	lw $t1, -6116($fp)
	mul $t0, $t0, $t1
	sw $t0, -6120($fp)
	lw $t0, -6120($fp)
	lw $t1, -6112($fp)
	add $t0, $t0, $t1
	sw $t0, -6124($fp)
	lw $t0, -6124($fp)
	lw $t1, 0($t0)
	sw $t1, -6128($fp)
	lw $t0, -6128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6132($fp)
	li $t0, 3
	sw $t0, -6136($fp)
	li $t0, 4
	lw $t1, -6136($fp)
	mul $t0, $t0, $t1
	sw $t0, -6140($fp)
	lw $t0, -6140($fp)
	lw $t1, -6132($fp)
	add $t0, $t0, $t1
	sw $t0, -6144($fp)
	lw $t0, -6144($fp)
	lw $t1, 0($t0)
	sw $t1, -6148($fp)
	lw $t0, -6148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6152($fp)
	li $t0, 4
	sw $t0, -6156($fp)
	li $t0, 4
	lw $t1, -6156($fp)
	mul $t0, $t0, $t1
	sw $t0, -6160($fp)
	lw $t0, -6160($fp)
	lw $t1, -6152($fp)
	add $t0, $t0, $t1
	sw $t0, -6164($fp)
	lw $t0, -6164($fp)
	lw $t1, 0($t0)
	sw $t1, -6168($fp)
	lw $t0, -6168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -6172($fp)
	li $t0, 5
	sw $t0, -6176($fp)
	li $t0, 4
	lw $t1, -6176($fp)
	mul $t0, $t0, $t1
	sw $t0, -6180($fp)
	lw $t0, -6180($fp)
	lw $t1, -6172($fp)
	add $t0, $t0, $t1
	sw $t0, -6184($fp)
	lw $t0, -6184($fp)
	lw $t1, 0($t0)
	sw $t1, -6188($fp)
	lw $t0, -6188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -6192($fp)
	li $t0, 0
	sw $t0, -6196($fp)
	li $t0, 4
	lw $t1, -6196($fp)
	mul $t0, $t0, $t1
	sw $t0, -6200($fp)
	lw $t0, -6200($fp)
	lw $t1, -6192($fp)
	add $t0, $t0, $t1
	sw $t0, -6204($fp)
	lw $t0, -6204($fp)
	lw $t1, 0($t0)
	sw $t1, -6208($fp)
	lw $t0, -6208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -472($fp)
	sw $t0, -6212($fp)
	lw $t0, -6212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -484($fp)
	sw $t0, -6216($fp)
	lw $t0, -6216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6220($fp)
	addi $t0, $fp, -28
	sw $t0, -6224($fp)
	li $t0, 55000
	sw $t0, -6228($fp)
	lw $t0, -484($fp)
	sw $t0, -6232($fp)
	lw $t0, -6228($fp)
	lw $t1, -6232($fp)
	add $t0, $t0, $t1
	sw $t0, -6236($fp)
	li $t0, 4
	lw $t1, -6236($fp)
	mul $t0, $t0, $t1
	sw $t0, -6240($fp)
	lw $t0, -6240($fp)
	lw $t1, -6224($fp)
	add $t0, $t0, $t1
	sw $t0, -6244($fp)
	lw $t0, -6244($fp)
	lw $t1, 0($t0)
	sw $t1, -6248($fp)
	lw $t1, -6248($fp)
	li $t2, 0
	bne $t1, $t2, label881
	j label880
label881:
	lw $t0, -244($fp)
	sw $t0, -6252($fp)
	li $t0, 0
	lw $t1, -6252($fp)
	sub $t0, $t0, $t1
	sw $t0, -6256($fp)
	lw $t1, -6256($fp)
	li $t2, 0
	bne $t1, $t2, label880
	j label878
label880:
	lw $t0, -280($fp)
	sw $t0, -6260($fp)
	lw $t1, -6260($fp)
	li $t2, 0
	bne $t1, $t2, label878
	j label879
label878:
	li $t0, 1
	sw $t0, -6220($fp)
label879:
	lw $ra, -4($fp)
	lw $v0, -6220($fp)
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
	li $t0, 0
	sw $t0, -8($fp)
	li $t0, 0
	sw $t0, -12($fp)
	jal f8
	sw $v0, -16($fp)
	addi $sp, $sp, 4
	lw $t1, -16($fp)
	li $t2, 0
	bne $t1, $t2, label886
	j label885
label885:
	li $t0, 1
	sw $t0, -12($fp)
label886:
	lw $t0, 4($fp)
	sw $t0, -20($fp)
	lw $t1, -12($fp)
	lw $t2, -20($fp)
	bge $t1, $t2, label884
	j label883
label884:
	li $t0, 48227
	sw $t0, -24($fp)
	lw $t0, 4($fp)
	sw $t0, -28($fp)
	lw $t0, -24($fp)
	lw $t1, -28($fp)
	mul $t0, $t0, $t1
	sw $t0, -32($fp)
	li $t0, 0
	lw $t1, -32($fp)
	sub $t0, $t0, $t1
	sw $t0, -36($fp)
	li $t0, 0
	sw $t0, -40($fp)
	li $t0, 30179
	sw $t0, -44($fp)
	lw $t1, -44($fp)
	li $t2, 0
	bne $t1, $t2, label888
	j label887
label887:
	li $t0, 1
	sw $t0, -40($fp)
label888:
	lw $t1, -36($fp)
	lw $t2, -40($fp)
	bne $t1, $t2, label882
	j label883
label882:
	li $t0, 1
	sw $t0, -8($fp)
label883:
	li $t0, 47934
	sw $t0, -48($fp)
	lw $ra, -4($fp)
	lw $v0, -48($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -8824
	li $t0, 16061
	sw $t0, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -312($fp)
	li $t0, 41152
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -324($fp)
	li $t0, 20595
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, -332($fp)
	lw $t0, -332($fp)
	sw $t0, -336($fp)
	li $t0, 41971
	sw $t0, -340($fp)
	addi $t0, $fp, -32
	sw $t0, -344($fp)
	li $t0, 0
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
	li $t0, 4311
	sw $t0, -364($fp)
	addi $t0, $fp, -32
	sw $t0, -368($fp)
	li $t0, 1
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
	li $t0, 45132
	sw $t0, -388($fp)
	addi $t0, $fp, -32
	sw $t0, -392($fp)
	li $t0, 2
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
	li $t0, 12496
	sw $t0, -412($fp)
	addi $t0, $fp, -32
	sw $t0, -416($fp)
	li $t0, 3
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
	li $t0, 62760
	sw $t0, -436($fp)
	addi $t0, $fp, -32
	sw $t0, -440($fp)
	li $t0, 4
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
	li $t0, 14108
	sw $t0, -460($fp)
	addi $t0, $fp, -32
	sw $t0, -464($fp)
	li $t0, 5
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
	li $t0, 56664
	sw $t0, -484($fp)
	addi $t0, $fp, -32
	sw $t0, -488($fp)
	li $t0, 6
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
	li $t0, 25688
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	li $t0, 5160
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	li $t0, 11429
	sw $t0, -532($fp)
	addi $t0, $fp, -56
	sw $t0, -536($fp)
	li $t0, 0
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
	li $t0, 47926
	sw $t0, -556($fp)
	addi $t0, $fp, -56
	sw $t0, -560($fp)
	li $t0, 1
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
	li $t0, 44382
	sw $t0, -580($fp)
	addi $t0, $fp, -56
	sw $t0, -584($fp)
	li $t0, 2
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -592($fp)
	lw $t0, -584($fp)
	lw $t1, -592($fp)
	add $t0, $t0, $t1
	sw $t0, -596($fp)
	lw $t0, -580($fp)
	lw $t1, -596($fp)
	sw $t0, 0($t1)
	lw $t0, -596($fp)
	lw $t1, 0($t0)
	sw $t1, -600($fp)
	li $t0, 55294
	sw $t0, -604($fp)
	addi $t0, $fp, -56
	sw $t0, -608($fp)
	li $t0, 3
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -616($fp)
	lw $t0, -608($fp)
	lw $t1, -616($fp)
	add $t0, $t0, $t1
	sw $t0, -620($fp)
	lw $t0, -604($fp)
	lw $t1, -620($fp)
	sw $t0, 0($t1)
	lw $t0, -620($fp)
	lw $t1, 0($t0)
	sw $t1, -624($fp)
	li $t0, 23531
	sw $t0, -628($fp)
	addi $t0, $fp, -56
	sw $t0, -632($fp)
	li $t0, 4
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
	li $t0, 58399
	sw $t0, -652($fp)
	addi $t0, $fp, -56
	sw $t0, -656($fp)
	li $t0, 5
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
	li $t0, 18601
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	li $t0, 65030
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	li $t0, 37193
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	li $t0, 53392
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	li $t0, 63283
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -732($fp)
	li $t0, 60262
	sw $t0, -736($fp)
	addi $t0, $fp, -72
	sw $t0, -740($fp)
	li $t0, 0
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
	li $t0, 5382
	sw $t0, -760($fp)
	addi $t0, $fp, -72
	sw $t0, -764($fp)
	li $t0, 1
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
	li $t0, 30217
	sw $t0, -784($fp)
	addi $t0, $fp, -72
	sw $t0, -788($fp)
	li $t0, 2
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
	li $t0, 61176
	sw $t0, -808($fp)
	addi $t0, $fp, -72
	sw $t0, -812($fp)
	li $t0, 3
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
	li $t0, 60382
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -840($fp)
	li $t0, 12908
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -852($fp)
	li $t0, 25820
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	sw $t0, -860($fp)
	lw $t0, -860($fp)
	sw $t0, -864($fp)
	li $t0, 42780
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	sw $t0, -876($fp)
	li $t0, 28969
	sw $t0, -880($fp)
	addi $t0, $fp, -96
	sw $t0, -884($fp)
	li $t0, 0
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
	li $t0, 1436
	sw $t0, -904($fp)
	addi $t0, $fp, -96
	sw $t0, -908($fp)
	li $t0, 1
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -916($fp)
	lw $t0, -908($fp)
	lw $t1, -916($fp)
	add $t0, $t0, $t1
	sw $t0, -920($fp)
	lw $t0, -904($fp)
	lw $t1, -920($fp)
	sw $t0, 0($t1)
	lw $t0, -920($fp)
	lw $t1, 0($t0)
	sw $t1, -924($fp)
	li $t0, 63375
	sw $t0, -928($fp)
	addi $t0, $fp, -96
	sw $t0, -932($fp)
	li $t0, 2
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -940($fp)
	lw $t0, -932($fp)
	lw $t1, -940($fp)
	add $t0, $t0, $t1
	sw $t0, -944($fp)
	lw $t0, -928($fp)
	lw $t1, -944($fp)
	sw $t0, 0($t1)
	lw $t0, -944($fp)
	lw $t1, 0($t0)
	sw $t1, -948($fp)
	li $t0, 5404
	sw $t0, -952($fp)
	addi $t0, $fp, -96
	sw $t0, -956($fp)
	li $t0, 3
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -964($fp)
	lw $t0, -956($fp)
	lw $t1, -964($fp)
	add $t0, $t0, $t1
	sw $t0, -968($fp)
	lw $t0, -952($fp)
	lw $t1, -968($fp)
	sw $t0, 0($t1)
	lw $t0, -968($fp)
	lw $t1, 0($t0)
	sw $t1, -972($fp)
	li $t0, 5747
	sw $t0, -976($fp)
	addi $t0, $fp, -96
	sw $t0, -980($fp)
	li $t0, 4
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -988($fp)
	lw $t0, -980($fp)
	lw $t1, -988($fp)
	add $t0, $t0, $t1
	sw $t0, -992($fp)
	lw $t0, -976($fp)
	lw $t1, -992($fp)
	sw $t0, 0($t1)
	lw $t0, -992($fp)
	lw $t1, 0($t0)
	sw $t1, -996($fp)
	li $t0, 42972
	sw $t0, -1000($fp)
	addi $t0, $fp, -96
	sw $t0, -1004($fp)
	li $t0, 5
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
	li $t0, 17901
	sw $t0, -1024($fp)
	addi $t0, $fp, -124
	sw $t0, -1028($fp)
	li $t0, 0
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
	li $t0, 2971
	sw $t0, -1048($fp)
	addi $t0, $fp, -124
	sw $t0, -1052($fp)
	li $t0, 1
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
	li $t0, 57080
	sw $t0, -1072($fp)
	addi $t0, $fp, -124
	sw $t0, -1076($fp)
	li $t0, 2
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
	li $t0, 9029
	sw $t0, -1096($fp)
	addi $t0, $fp, -124
	sw $t0, -1100($fp)
	li $t0, 3
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
	li $t0, 28659
	sw $t0, -1120($fp)
	addi $t0, $fp, -124
	sw $t0, -1124($fp)
	li $t0, 4
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
	li $t0, 62241
	sw $t0, -1144($fp)
	addi $t0, $fp, -124
	sw $t0, -1148($fp)
	li $t0, 5
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
	li $t0, 20458
	sw $t0, -1168($fp)
	addi $t0, $fp, -124
	sw $t0, -1172($fp)
	li $t0, 6
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
	li $t0, 11049
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -1200($fp)
	li $t0, 41087
	sw $t0, -1204($fp)
	lw $t0, -1204($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -1212($fp)
	li $t0, 10217
	sw $t0, -1216($fp)
	lw $t0, -1216($fp)
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	sw $t0, -1224($fp)
	li $t0, 34581
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	sw $t0, -1236($fp)
	li $t0, 33950
	sw $t0, -1240($fp)
	addi $t0, $fp, -160
	sw $t0, -1244($fp)
	li $t0, 0
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
	li $t0, 28818
	sw $t0, -1264($fp)
	addi $t0, $fp, -160
	sw $t0, -1268($fp)
	li $t0, 1
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
	li $t0, 34075
	sw $t0, -1288($fp)
	addi $t0, $fp, -160
	sw $t0, -1292($fp)
	li $t0, 2
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
	li $t0, 5607
	sw $t0, -1312($fp)
	addi $t0, $fp, -160
	sw $t0, -1316($fp)
	li $t0, 3
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
	li $t0, 16674
	sw $t0, -1336($fp)
	addi $t0, $fp, -160
	sw $t0, -1340($fp)
	li $t0, 4
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
	li $t0, 31822
	sw $t0, -1360($fp)
	addi $t0, $fp, -160
	sw $t0, -1364($fp)
	li $t0, 5
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
	li $t0, 333
	sw $t0, -1384($fp)
	addi $t0, $fp, -160
	sw $t0, -1388($fp)
	li $t0, 6
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1396($fp)
	lw $t0, -1388($fp)
	lw $t1, -1396($fp)
	add $t0, $t0, $t1
	sw $t0, -1400($fp)
	lw $t0, -1384($fp)
	lw $t1, -1400($fp)
	sw $t0, 0($t1)
	lw $t0, -1400($fp)
	lw $t1, 0($t0)
	sw $t1, -1404($fp)
	li $t0, 22056
	sw $t0, -1408($fp)
	addi $t0, $fp, -160
	sw $t0, -1412($fp)
	li $t0, 7
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
	li $t0, 62039
	sw $t0, -1432($fp)
	addi $t0, $fp, -160
	sw $t0, -1436($fp)
	li $t0, 8
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
	li $t0, 61510
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	sw $t0, -1464($fp)
	li $t0, 16902
	sw $t0, -1468($fp)
	addi $t0, $fp, -188
	sw $t0, -1472($fp)
	li $t0, 0
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
	li $t0, 9412
	sw $t0, -1492($fp)
	addi $t0, $fp, -188
	sw $t0, -1496($fp)
	li $t0, 1
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
	li $t0, 21794
	sw $t0, -1516($fp)
	addi $t0, $fp, -188
	sw $t0, -1520($fp)
	li $t0, 2
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
	li $t0, 59682
	sw $t0, -1540($fp)
	addi $t0, $fp, -188
	sw $t0, -1544($fp)
	li $t0, 3
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
	li $t0, 38381
	sw $t0, -1564($fp)
	addi $t0, $fp, -188
	sw $t0, -1568($fp)
	li $t0, 4
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t0, -1568($fp)
	lw $t1, -1576($fp)
	add $t0, $t0, $t1
	sw $t0, -1580($fp)
	lw $t0, -1564($fp)
	lw $t1, -1580($fp)
	sw $t0, 0($t1)
	lw $t0, -1580($fp)
	lw $t1, 0($t0)
	sw $t1, -1584($fp)
	li $t0, 23230
	sw $t0, -1588($fp)
	addi $t0, $fp, -188
	sw $t0, -1592($fp)
	li $t0, 5
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1600($fp)
	lw $t0, -1592($fp)
	lw $t1, -1600($fp)
	add $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, -1588($fp)
	lw $t1, -1604($fp)
	sw $t0, 0($t1)
	lw $t0, -1604($fp)
	lw $t1, 0($t0)
	sw $t1, -1608($fp)
	li $t0, 57522
	sw $t0, -1612($fp)
	addi $t0, $fp, -188
	sw $t0, -1616($fp)
	li $t0, 6
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1624($fp)
	lw $t0, -1616($fp)
	lw $t1, -1624($fp)
	add $t0, $t0, $t1
	sw $t0, -1628($fp)
	lw $t0, -1612($fp)
	lw $t1, -1628($fp)
	sw $t0, 0($t1)
	lw $t0, -1628($fp)
	lw $t1, 0($t0)
	sw $t1, -1632($fp)
	li $t0, 43786
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	sw $t0, -1644($fp)
	li $t0, 28977
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	sw $t0, -1656($fp)
	li $t0, 34958
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	sw $t0, -1668($fp)
	li $t0, 61687
	sw $t0, -1672($fp)
	lw $t0, -1672($fp)
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	sw $t0, -1680($fp)
	li $t0, 31948
	sw $t0, -1684($fp)
	addi $t0, $fp, -220
	sw $t0, -1688($fp)
	li $t0, 0
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1696($fp)
	lw $t0, -1688($fp)
	lw $t1, -1696($fp)
	add $t0, $t0, $t1
	sw $t0, -1700($fp)
	lw $t0, -1684($fp)
	lw $t1, -1700($fp)
	sw $t0, 0($t1)
	lw $t0, -1700($fp)
	lw $t1, 0($t0)
	sw $t1, -1704($fp)
	li $t0, 26502
	sw $t0, -1708($fp)
	addi $t0, $fp, -220
	sw $t0, -1712($fp)
	li $t0, 1
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1720($fp)
	lw $t0, -1712($fp)
	lw $t1, -1720($fp)
	add $t0, $t0, $t1
	sw $t0, -1724($fp)
	lw $t0, -1708($fp)
	lw $t1, -1724($fp)
	sw $t0, 0($t1)
	lw $t0, -1724($fp)
	lw $t1, 0($t0)
	sw $t1, -1728($fp)
	li $t0, 5180
	sw $t0, -1732($fp)
	addi $t0, $fp, -220
	sw $t0, -1736($fp)
	li $t0, 2
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1744($fp)
	lw $t0, -1736($fp)
	lw $t1, -1744($fp)
	add $t0, $t0, $t1
	sw $t0, -1748($fp)
	lw $t0, -1732($fp)
	lw $t1, -1748($fp)
	sw $t0, 0($t1)
	lw $t0, -1748($fp)
	lw $t1, 0($t0)
	sw $t1, -1752($fp)
	li $t0, 60607
	sw $t0, -1756($fp)
	addi $t0, $fp, -220
	sw $t0, -1760($fp)
	li $t0, 3
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1768($fp)
	lw $t0, -1760($fp)
	lw $t1, -1768($fp)
	add $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t0, -1756($fp)
	lw $t1, -1772($fp)
	sw $t0, 0($t1)
	lw $t0, -1772($fp)
	lw $t1, 0($t0)
	sw $t1, -1776($fp)
	li $t0, 23207
	sw $t0, -1780($fp)
	addi $t0, $fp, -220
	sw $t0, -1784($fp)
	li $t0, 4
	sw $t0, -1788($fp)
	lw $t0, -1788($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1792($fp)
	lw $t0, -1784($fp)
	lw $t1, -1792($fp)
	add $t0, $t0, $t1
	sw $t0, -1796($fp)
	lw $t0, -1780($fp)
	lw $t1, -1796($fp)
	sw $t0, 0($t1)
	lw $t0, -1796($fp)
	lw $t1, 0($t0)
	sw $t1, -1800($fp)
	li $t0, 25639
	sw $t0, -1804($fp)
	addi $t0, $fp, -220
	sw $t0, -1808($fp)
	li $t0, 5
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1816($fp)
	lw $t0, -1808($fp)
	lw $t1, -1816($fp)
	add $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t0, -1804($fp)
	lw $t1, -1820($fp)
	sw $t0, 0($t1)
	lw $t0, -1820($fp)
	lw $t1, 0($t0)
	sw $t1, -1824($fp)
	li $t0, 6121
	sw $t0, -1828($fp)
	addi $t0, $fp, -220
	sw $t0, -1832($fp)
	li $t0, 6
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t0, -1832($fp)
	lw $t1, -1840($fp)
	add $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $t0, -1828($fp)
	lw $t1, -1844($fp)
	sw $t0, 0($t1)
	lw $t0, -1844($fp)
	lw $t1, 0($t0)
	sw $t1, -1848($fp)
	li $t0, 64294
	sw $t0, -1852($fp)
	addi $t0, $fp, -220
	sw $t0, -1856($fp)
	li $t0, 7
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t0, -1856($fp)
	lw $t1, -1864($fp)
	add $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $t0, -1852($fp)
	lw $t1, -1868($fp)
	sw $t0, 0($t1)
	lw $t0, -1868($fp)
	lw $t1, 0($t0)
	sw $t1, -1872($fp)
	li $t0, 35856
	sw $t0, -1876($fp)
	addi $t0, $fp, -244
	sw $t0, -1880($fp)
	li $t0, 0
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1888($fp)
	lw $t0, -1880($fp)
	lw $t1, -1888($fp)
	add $t0, $t0, $t1
	sw $t0, -1892($fp)
	lw $t0, -1876($fp)
	lw $t1, -1892($fp)
	sw $t0, 0($t1)
	lw $t0, -1892($fp)
	lw $t1, 0($t0)
	sw $t1, -1896($fp)
	li $t0, 40702
	sw $t0, -1900($fp)
	addi $t0, $fp, -244
	sw $t0, -1904($fp)
	li $t0, 1
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1912($fp)
	lw $t0, -1904($fp)
	lw $t1, -1912($fp)
	add $t0, $t0, $t1
	sw $t0, -1916($fp)
	lw $t0, -1900($fp)
	lw $t1, -1916($fp)
	sw $t0, 0($t1)
	lw $t0, -1916($fp)
	lw $t1, 0($t0)
	sw $t1, -1920($fp)
	li $t0, 32709
	sw $t0, -1924($fp)
	addi $t0, $fp, -244
	sw $t0, -1928($fp)
	li $t0, 2
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1936($fp)
	lw $t0, -1928($fp)
	lw $t1, -1936($fp)
	add $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t0, -1924($fp)
	lw $t1, -1940($fp)
	sw $t0, 0($t1)
	lw $t0, -1940($fp)
	lw $t1, 0($t0)
	sw $t1, -1944($fp)
	li $t0, 64674
	sw $t0, -1948($fp)
	addi $t0, $fp, -244
	sw $t0, -1952($fp)
	li $t0, 3
	sw $t0, -1956($fp)
	lw $t0, -1956($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1960($fp)
	lw $t0, -1952($fp)
	lw $t1, -1960($fp)
	add $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t0, -1948($fp)
	lw $t1, -1964($fp)
	sw $t0, 0($t1)
	lw $t0, -1964($fp)
	lw $t1, 0($t0)
	sw $t1, -1968($fp)
	li $t0, 9241
	sw $t0, -1972($fp)
	addi $t0, $fp, -244
	sw $t0, -1976($fp)
	li $t0, 4
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t0, -1976($fp)
	lw $t1, -1984($fp)
	add $t0, $t0, $t1
	sw $t0, -1988($fp)
	lw $t0, -1972($fp)
	lw $t1, -1988($fp)
	sw $t0, 0($t1)
	lw $t0, -1988($fp)
	lw $t1, 0($t0)
	sw $t1, -1992($fp)
	li $t0, 38316
	sw $t0, -1996($fp)
	addi $t0, $fp, -244
	sw $t0, -2000($fp)
	li $t0, 5
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $t0, -2000($fp)
	lw $t1, -2008($fp)
	add $t0, $t0, $t1
	sw $t0, -2012($fp)
	lw $t0, -1996($fp)
	lw $t1, -2012($fp)
	sw $t0, 0($t1)
	lw $t0, -2012($fp)
	lw $t1, 0($t0)
	sw $t1, -2016($fp)
	li $t0, 15812
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	sw $t0, -2028($fp)
	li $t0, 41063
	sw $t0, -2032($fp)
	addi $t0, $fp, -268
	sw $t0, -2036($fp)
	li $t0, 0
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2044($fp)
	lw $t0, -2036($fp)
	lw $t1, -2044($fp)
	add $t0, $t0, $t1
	sw $t0, -2048($fp)
	lw $t0, -2032($fp)
	lw $t1, -2048($fp)
	sw $t0, 0($t1)
	lw $t0, -2048($fp)
	lw $t1, 0($t0)
	sw $t1, -2052($fp)
	li $t0, 38650
	sw $t0, -2056($fp)
	addi $t0, $fp, -268
	sw $t0, -2060($fp)
	li $t0, 1
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2068($fp)
	lw $t0, -2060($fp)
	lw $t1, -2068($fp)
	add $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $t0, -2056($fp)
	lw $t1, -2072($fp)
	sw $t0, 0($t1)
	lw $t0, -2072($fp)
	lw $t1, 0($t0)
	sw $t1, -2076($fp)
	li $t0, 37869
	sw $t0, -2080($fp)
	addi $t0, $fp, -268
	sw $t0, -2084($fp)
	li $t0, 2
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2092($fp)
	lw $t0, -2084($fp)
	lw $t1, -2092($fp)
	add $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t0, -2080($fp)
	lw $t1, -2096($fp)
	sw $t0, 0($t1)
	lw $t0, -2096($fp)
	lw $t1, 0($t0)
	sw $t1, -2100($fp)
	li $t0, 37567
	sw $t0, -2104($fp)
	addi $t0, $fp, -268
	sw $t0, -2108($fp)
	li $t0, 3
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t0, -2108($fp)
	lw $t1, -2116($fp)
	add $t0, $t0, $t1
	sw $t0, -2120($fp)
	lw $t0, -2104($fp)
	lw $t1, -2120($fp)
	sw $t0, 0($t1)
	lw $t0, -2120($fp)
	lw $t1, 0($t0)
	sw $t1, -2124($fp)
	li $t0, 34624
	sw $t0, -2128($fp)
	addi $t0, $fp, -268
	sw $t0, -2132($fp)
	li $t0, 4
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
	li $t0, 54771
	sw $t0, -2152($fp)
	addi $t0, $fp, -268
	sw $t0, -2156($fp)
	li $t0, 5
	sw $t0, -2160($fp)
	lw $t0, -2160($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2164($fp)
	lw $t0, -2156($fp)
	lw $t1, -2164($fp)
	add $t0, $t0, $t1
	sw $t0, -2168($fp)
	lw $t0, -2152($fp)
	lw $t1, -2168($fp)
	sw $t0, 0($t1)
	lw $t0, -2168($fp)
	lw $t1, 0($t0)
	sw $t1, -2172($fp)
	li $t0, 46979
	sw $t0, -2176($fp)
	lw $t0, -2176($fp)
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	sw $t0, -2184($fp)
	li $t0, 56418
	sw $t0, -2188($fp)
	addi $t0, $fp, -300
	sw $t0, -2192($fp)
	li $t0, 0
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2200($fp)
	lw $t0, -2192($fp)
	lw $t1, -2200($fp)
	add $t0, $t0, $t1
	sw $t0, -2204($fp)
	lw $t0, -2188($fp)
	lw $t1, -2204($fp)
	sw $t0, 0($t1)
	lw $t0, -2204($fp)
	lw $t1, 0($t0)
	sw $t1, -2208($fp)
	li $t0, 48918
	sw $t0, -2212($fp)
	addi $t0, $fp, -300
	sw $t0, -2216($fp)
	li $t0, 1
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2224($fp)
	lw $t0, -2216($fp)
	lw $t1, -2224($fp)
	add $t0, $t0, $t1
	sw $t0, -2228($fp)
	lw $t0, -2212($fp)
	lw $t1, -2228($fp)
	sw $t0, 0($t1)
	lw $t0, -2228($fp)
	lw $t1, 0($t0)
	sw $t1, -2232($fp)
	li $t0, 19824
	sw $t0, -2236($fp)
	addi $t0, $fp, -300
	sw $t0, -2240($fp)
	li $t0, 2
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2248($fp)
	lw $t0, -2240($fp)
	lw $t1, -2248($fp)
	add $t0, $t0, $t1
	sw $t0, -2252($fp)
	lw $t0, -2236($fp)
	lw $t1, -2252($fp)
	sw $t0, 0($t1)
	lw $t0, -2252($fp)
	lw $t1, 0($t0)
	sw $t1, -2256($fp)
	li $t0, 14112
	sw $t0, -2260($fp)
	addi $t0, $fp, -300
	sw $t0, -2264($fp)
	li $t0, 3
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2272($fp)
	lw $t0, -2264($fp)
	lw $t1, -2272($fp)
	add $t0, $t0, $t1
	sw $t0, -2276($fp)
	lw $t0, -2260($fp)
	lw $t1, -2276($fp)
	sw $t0, 0($t1)
	lw $t0, -2276($fp)
	lw $t1, 0($t0)
	sw $t1, -2280($fp)
	li $t0, 40904
	sw $t0, -2284($fp)
	addi $t0, $fp, -300
	sw $t0, -2288($fp)
	li $t0, 4
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2296($fp)
	lw $t0, -2288($fp)
	lw $t1, -2296($fp)
	add $t0, $t0, $t1
	sw $t0, -2300($fp)
	lw $t0, -2284($fp)
	lw $t1, -2300($fp)
	sw $t0, 0($t1)
	lw $t0, -2300($fp)
	lw $t1, 0($t0)
	sw $t1, -2304($fp)
	li $t0, 63610
	sw $t0, -2308($fp)
	addi $t0, $fp, -300
	sw $t0, -2312($fp)
	li $t0, 5
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2320($fp)
	lw $t0, -2312($fp)
	lw $t1, -2320($fp)
	add $t0, $t0, $t1
	sw $t0, -2324($fp)
	lw $t0, -2308($fp)
	lw $t1, -2324($fp)
	sw $t0, 0($t1)
	lw $t0, -2324($fp)
	lw $t1, 0($t0)
	sw $t1, -2328($fp)
	li $t0, 43089
	sw $t0, -2332($fp)
	addi $t0, $fp, -300
	sw $t0, -2336($fp)
	li $t0, 6
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2344($fp)
	lw $t0, -2336($fp)
	lw $t1, -2344($fp)
	add $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t0, -2332($fp)
	lw $t1, -2348($fp)
	sw $t0, 0($t1)
	lw $t0, -2348($fp)
	lw $t1, 0($t0)
	sw $t1, -2352($fp)
	li $t0, 10326
	sw $t0, -2356($fp)
	addi $t0, $fp, -300
	sw $t0, -2360($fp)
	li $t0, 7
	sw $t0, -2364($fp)
	lw $t0, -2364($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2368($fp)
	lw $t0, -2360($fp)
	lw $t1, -2368($fp)
	add $t0, $t0, $t1
	sw $t0, -2372($fp)
	lw $t0, -2356($fp)
	lw $t1, -2372($fp)
	sw $t0, 0($t1)
	lw $t0, -2372($fp)
	lw $t1, 0($t0)
	sw $t1, -2376($fp)
	li $t0, 59761
	sw $t0, -2380($fp)
	lw $t0, -2380($fp)
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	sw $t0, -2388($fp)
	li $t0, 9501
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	sw $t0, -2400($fp)
	li $t0, 36828
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	sw $t0, -2412($fp)
	li $t0, 64942
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	sw $t0, -2424($fp)
	li $t0, 4572
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	sw $t0, -2436($fp)
	li $t0, 60036
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	sw $t0, -2448($fp)
	li $t0, 25045
	sw $t0, -2452($fp)
	lw $t0, -2452($fp)
	sw $t0, -2456($fp)
	lw $t0, -2456($fp)
	sw $t0, -2460($fp)
	li $t0, 0
	sw $t0, -2464($fp)
	addi $t0, $fp, -300
	sw $t0, -2468($fp)
	li $t0, 10693
	sw $t0, -2472($fp)
	lw $t0, -1220($fp)
	sw $t0, -2476($fp)
	lw $t0, -2472($fp)
	lw $t1, -2476($fp)
	add $t0, $t0, $t1
	sw $t0, -2480($fp)
	li $t0, 4
	lw $t1, -2480($fp)
	mul $t0, $t0, $t1
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	lw $t1, -2468($fp)
	add $t0, $t0, $t1
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	lw $t1, 0($t0)
	sw $t1, -2492($fp)
	li $t0, 58794
	sw $t0, -2496($fp)
	lw $t1, -2492($fp)
	lw $t2, -2496($fp)
	bgt $t1, $t2, label891
	j label890
label891:
	lw $t0, -692($fp)
	sw $t0, -2500($fp)
	lw $t1, -2500($fp)
	li $t2, 0
	bne $t1, $t2, label889
	j label890
label889:
	li $t0, 1
	sw $t0, -2464($fp)
label890:
	li $t0, 60901
	sw $t0, -2532($fp)
	addi $t0, $fp, -2528
	sw $t0, -2536($fp)
	li $t0, 0
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
	li $t0, 51395
	sw $t0, -2556($fp)
	addi $t0, $fp, -2528
	sw $t0, -2560($fp)
	li $t0, 1
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
	li $t0, 25967
	sw $t0, -2580($fp)
	addi $t0, $fp, -2528
	sw $t0, -2584($fp)
	li $t0, 2
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
	li $t0, 60039
	sw $t0, -2604($fp)
	addi $t0, $fp, -2528
	sw $t0, -2608($fp)
	li $t0, 3
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2616($fp)
	lw $t0, -2608($fp)
	lw $t1, -2616($fp)
	add $t0, $t0, $t1
	sw $t0, -2620($fp)
	lw $t0, -2604($fp)
	lw $t1, -2620($fp)
	sw $t0, 0($t1)
	lw $t0, -2620($fp)
	lw $t1, 0($t0)
	sw $t1, -2624($fp)
	li $t0, 60636
	sw $t0, -2628($fp)
	addi $t0, $fp, -2528
	sw $t0, -2632($fp)
	li $t0, 4
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
	li $t0, 64284
	sw $t0, -2652($fp)
	addi $t0, $fp, -2528
	sw $t0, -2656($fp)
	li $t0, 5
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
	li $t0, 10315
	sw $t0, -2676($fp)
	addi $t0, $fp, -2528
	sw $t0, -2680($fp)
	li $t0, 6
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
	li $t0, 36164
	sw $t0, -2700($fp)
	lw $t0, -2700($fp)
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	sw $t0, -2708($fp)
label892:
	lw $t0, -2704($fp)
	sw $t0, -2712($fp)
	li $t0, 37398
	sw $t0, -2716($fp)
	lw $t0, -2712($fp)
	lw $t1, -2716($fp)
	add $t0, $t0, $t1
	sw $t0, -2720($fp)
	lw $t0, -692($fp)
	sw $t0, -2724($fp)
	lw $t0, -2180($fp)
	sw $t0, -2728($fp)
	lw $t0, -2724($fp)
	lw $t1, -2728($fp)
	sub $t0, $t0, $t1
	sw $t0, -2732($fp)
	lw $t0, -872($fp)
	sw $t0, -2736($fp)
	lw $t0, -2732($fp)
	lw $t1, -2736($fp)
	sub $t0, $t0, $t1
	sw $t0, -2740($fp)
	addi $sp, $sp, -4
	lw $t0, -2720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2740($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2744($fp)
	addi $sp, $sp, 12
	lw $t1, -2744($fp)
	li $t2, 0
	bne $t1, $t2, label893
	j label894
label893:
	jal f8
	sw $v0, -2748($fp)
	addi $sp, $sp, 4
	lw $t0, -524($fp)
	sw $t0, -2752($fp)
	lw $t0, -2748($fp)
	lw $t1, -2752($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2756($fp)
	addi $sp, $sp, -4
	lw $t0, -2756($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2760($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -2760($fp)
	sub $t0, $t0, $t1
	sw $t0, -2764($fp)
	addi $t0, $fp, -2528
	sw $t0, -2768($fp)
	li $t0, 1
	sw $t0, -2772($fp)
	li $t0, 4
	lw $t1, -2772($fp)
	mul $t0, $t0, $t1
	sw $t0, -2776($fp)
	lw $t0, -2776($fp)
	lw $t1, -2768($fp)
	add $t0, $t0, $t1
	sw $t0, -2780($fp)
	lw $t0, -2780($fp)
	lw $t1, 0($t0)
	sw $t1, -2784($fp)
	li $t0, 0
	lw $t1, -2784($fp)
	sub $t0, $t0, $t1
	sw $t0, -2788($fp)
	lw $t0, -2764($fp)
	lw $t1, -2788($fp)
	add $t0, $t0, $t1
	sw $t0, -2792($fp)
	j label892
label894:
	li $t0, 6486
	sw $t0, -2796($fp)
	li $t0, 37420
	sw $t0, -2800($fp)
	lw $t0, -2796($fp)
	lw $t1, -2800($fp)
	mul $t0, $t0, $t1
	sw $t0, -2804($fp)
label895:
	jal f8
	sw $v0, -2808($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -2808($fp)
	sub $t0, $t0, $t1
	sw $t0, -2812($fp)
	li $t0, 0
	sw $t0, -2816($fp)
	li $t0, 0
	sw $t0, -2820($fp)
	lw $t0, -308($fp)
	sw $t0, -2824($fp)
	lw $t0, -320($fp)
	sw $t0, -2828($fp)
	lw $t1, -2824($fp)
	lw $t2, -2828($fp)
	beq $t1, $t2, label900
	j label901
label900:
	li $t0, 1
	sw $t0, -2820($fp)
label901:
	li $t0, 55174
	sw $t0, -2832($fp)
	lw $t1, -2820($fp)
	lw $t2, -2832($fp)
	bne $t1, $t2, label898
	j label899
label898:
	li $t0, 1
	sw $t0, -2816($fp)
label899:
	li $t0, 0
	sw $t0, -2836($fp)
	addi $t0, $fp, -32
	sw $t0, -2840($fp)
	lw $t0, -2396($fp)
	sw $t0, -2844($fp)
	li $t0, 4
	lw $t1, -2844($fp)
	mul $t0, $t0, $t1
	sw $t0, -2848($fp)
	lw $t0, -2848($fp)
	lw $t1, -2840($fp)
	add $t0, $t0, $t1
	sw $t0, -2852($fp)
	lw $t0, -2852($fp)
	lw $t1, 0($t0)
	sw $t1, -2856($fp)
	lw $t1, -2856($fp)
	li $t2, 0
	bne $t1, $t2, label903
	j label902
label902:
	li $t0, 1
	sw $t0, -2836($fp)
label903:
	lw $t0, -2396($fp)
	sw $t0, -2860($fp)
	addi $t0, $fp, -220
	sw $t0, -2864($fp)
	lw $t0, -308($fp)
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
	lw $t0, -680($fp)
	sw $t0, -2884($fp)
	lw $t0, -2880($fp)
	lw $t1, -2884($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2888($fp)
	addi $sp, $sp, -4
	lw $t0, -2812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2888($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -2892($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -2896($fp)
	addi $t0, $fp, -160
	sw $t0, -2900($fp)
	li $t0, 1
	sw $t0, -2904($fp)
	li $t0, 4
	lw $t1, -2904($fp)
	mul $t0, $t0, $t1
	sw $t0, -2908($fp)
	lw $t0, -2908($fp)
	lw $t1, -2900($fp)
	add $t0, $t0, $t1
	sw $t0, -2912($fp)
	lw $t0, -2912($fp)
	lw $t1, 0($t0)
	sw $t1, -2916($fp)
	lw $t1, -2916($fp)
	li $t2, 0
	bne $t1, $t2, label905
	j label904
label904:
	li $t0, 1
	sw $t0, -2896($fp)
label905:
	lw $t1, -2892($fp)
	lw $t2, -2896($fp)
	bne $t1, $t2, label896
	j label897
label896:
	li $t0, 0
	sw $t0, -2920($fp)
	li $t0, 9462
	sw $t0, -2924($fp)
	li $t0, 0
	lw $t1, -2924($fp)
	sub $t0, $t0, $t1
	sw $t0, -2928($fp)
	lw $t1, -2928($fp)
	li $t2, 0
	bne $t1, $t2, label907
	j label906
label906:
	li $t0, 1
	sw $t0, -2920($fp)
label907:
	lw $ra, -4($fp)
	lw $v0, -2920($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label895
label897:
label908:
	li $t0, 0
	sw $t0, -2932($fp)
	addi $t0, $fp, -96
	sw $t0, -2936($fp)
	li $t0, 4
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
	lw $t1, -2952($fp)
	li $t2, 0
	bne $t1, $t2, label911
	j label912
label911:
	li $t0, 1
	sw $t0, -2932($fp)
label912:
	addi $t0, $fp, -188
	sw $t0, -2956($fp)
	lw $t0, -1232($fp)
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -2964($fp)
	lw $t0, -1220($fp)
	sw $t0, -2968($fp)
	li $t0, 0
	sw $t0, -2972($fp)
	li $t0, 0
	sw $t0, -2976($fp)
	li $t0, 0
	sw $t0, -2980($fp)
	li $t0, 30924
	sw $t0, -2984($fp)
	lw $t0, -1664($fp)
	sw $t0, -2988($fp)
	lw $t1, -2984($fp)
	lw $t2, -2988($fp)
	bge $t1, $t2, label918
	j label919
label918:
	li $t0, 1
	sw $t0, -2980($fp)
label919:
	li $t0, 27660
	sw $t0, -2992($fp)
	lw $t1, -2980($fp)
	lw $t2, -2992($fp)
	blt $t1, $t2, label916
	j label917
label916:
	li $t0, 1
	sw $t0, -2976($fp)
label917:
	addi $sp, $sp, -4
	lw $t0, -2976($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2996($fp)
	addi $sp, $sp, 8
	li $t0, 26397
	sw $t0, -3000($fp)
	li $t0, 55798
	sw $t0, -3004($fp)
	lw $t0, -1640($fp)
	sw $t0, -3008($fp)
	lw $t0, -3004($fp)
	lw $t1, -3008($fp)
	sub $t0, $t0, $t1
	sw $t0, -3012($fp)
	lw $t0, -332($fp)
	sw $t0, -3016($fp)
	lw $t0, -3012($fp)
	lw $t1, -3016($fp)
	add $t0, $t0, $t1
	sw $t0, -3020($fp)
	li $t0, 0
	sw $t0, -3024($fp)
	addi $t0, $fp, -244
	sw $t0, -3028($fp)
	li $t0, 1
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
	li $t0, 60296
	sw $t0, -3048($fp)
	lw $t1, -3044($fp)
	lw $t2, -3048($fp)
	bne $t1, $t2, label920
	j label921
label920:
	li $t0, 1
	sw $t0, -3024($fp)
label921:
	li $t0, 21578
	sw $t0, -3052($fp)
	li $t0, 65195
	sw $t0, -3056($fp)
	lw $t0, -3052($fp)
	lw $t1, -3056($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3060($fp)
	li $t0, 0
	lw $t1, -3060($fp)
	sub $t0, $t0, $t1
	sw $t0, -3064($fp)
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
	lw $t0, -3024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3064($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3068($fp)
	addi $sp, $sp, 24
	lw $t1, -3068($fp)
	li $t2, 0
	bne $t1, $t2, label915
	j label914
label915:
	lw $t0, -848($fp)
	sw $t0, -3072($fp)
	lw $t1, -3072($fp)
	li $t2, 0
	bne $t1, $t2, label913
	j label914
label913:
	li $t0, 1
	sw $t0, -2972($fp)
label914:
	lw $t0, -680($fp)
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	sw $t0, -3080($fp)
	li $t0, 0
	sw $t0, -3084($fp)
	li $t0, 0
	sw $t0, -3088($fp)
	li $t0, 0
	sw $t0, -3092($fp)
	lw $t0, -860($fp)
	sw $t0, -3096($fp)
	lw $t0, -728($fp)
	sw $t0, -3100($fp)
	lw $t1, -3096($fp)
	lw $t2, -3100($fp)
	bgt $t1, $t2, label926
	j label927
label926:
	li $t0, 1
	sw $t0, -3092($fp)
label927:
	lw $t0, -860($fp)
	sw $t0, -3104($fp)
	lw $t1, -3092($fp)
	lw $t2, -3104($fp)
	blt $t1, $t2, label924
	j label925
label924:
	li $t0, 1
	sw $t0, -3088($fp)
label925:
	addi $sp, $sp, -4
	lw $t0, -3088($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3108($fp)
	addi $sp, $sp, 8
	li $t0, 13800
	sw $t0, -3112($fp)
	lw $t1, -3108($fp)
	lw $t2, -3112($fp)
	bgt $t1, $t2, label922
	j label923
label922:
	li $t0, 1
	sw $t0, -3084($fp)
label923:
	li $t0, 26213
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -3120($fp)
	li $t0, 37824
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	sw $t0, -3128($fp)
	li $t0, 0
	sw $t0, -3132($fp)
	lw $t0, -320($fp)
	sw $t0, -3136($fp)
	lw $t1, -3136($fp)
	li $t2, 0
	bne $t1, $t2, label929
	j label928
label928:
	li $t0, 1
	sw $t0, -3132($fp)
label929:
	lw $t0, -1232($fp)
	sw $t0, -3140($fp)
	li $t0, 0
	lw $t1, -3140($fp)
	sub $t0, $t0, $t1
	sw $t0, -3144($fp)
	li $t0, 0
	lw $t1, -3144($fp)
	sub $t0, $t0, $t1
	sw $t0, -3148($fp)
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
	lw $t0, -3148($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3152($fp)
	addi $sp, $sp, 24
	li $t0, 31083
	sw $t0, -3156($fp)
	lw $t0, -3152($fp)
	lw $t1, -3156($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3160($fp)
	li $t0, 1168
	sw $t0, -3164($fp)
	li $t0, 3106
	sw $t0, -3168($fp)
	lw $t0, -3164($fp)
	lw $t1, -3168($fp)
	add $t0, $t0, $t1
	sw $t0, -3172($fp)
	li $t0, 64070
	sw $t0, -3176($fp)
	li $t0, 43324
	sw $t0, -3180($fp)
	lw $t0, -3176($fp)
	lw $t1, -3180($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3184($fp)
	lw $t0, -1220($fp)
	sw $t0, -3188($fp)
	lw $t0, -3184($fp)
	lw $t1, -3188($fp)
	sub $t0, $t0, $t1
	sw $t0, -3192($fp)
	addi $sp, $sp, -4
	lw $t0, -2972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3080($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3192($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -3196($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -3196($fp)
	sub $t0, $t0, $t1
	sw $t0, -3200($fp)
	li $t0, 0
	sw $t0, -3204($fp)
	lw $t0, -2396($fp)
	sw $t0, -3208($fp)
	li $t0, 0
	lw $t1, -3208($fp)
	sub $t0, $t0, $t1
	sw $t0, -3212($fp)
	li $t0, 1762
	sw $t0, -3216($fp)
	lw $t1, -3212($fp)
	lw $t2, -3216($fp)
	bgt $t1, $t2, label930
	j label931
label930:
	li $t0, 1
	sw $t0, -3204($fp)
label931:
	li $t0, 0
	sw $t0, -3220($fp)
	li $t0, 7537
	sw $t0, -3224($fp)
	li $t0, 54569
	sw $t0, -3228($fp)
	lw $t0, -3224($fp)
	lw $t1, -3228($fp)
	add $t0, $t0, $t1
	sw $t0, -3232($fp)
	li $t0, 6496
	sw $t0, -3236($fp)
	lw $t1, -3232($fp)
	lw $t2, -3236($fp)
	bgt $t1, $t2, label932
	j label933
label932:
	li $t0, 1
	sw $t0, -3220($fp)
label933:
	addi $sp, $sp, -4
	lw $t0, -2964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3220($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3240($fp)
	addi $sp, $sp, 24
	li $t0, 4
	lw $t1, -3240($fp)
	mul $t0, $t0, $t1
	sw $t0, -3244($fp)
	lw $t0, -3244($fp)
	lw $t1, -2956($fp)
	add $t0, $t0, $t1
	sw $t0, -3248($fp)
	lw $t0, -3248($fp)
	lw $t1, 0($t0)
	sw $t1, -3252($fp)
	lw $t0, -2932($fp)
	lw $t1, -3252($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3256($fp)
	lw $t1, -3256($fp)
	li $t2, 0
	bne $t1, $t2, label909
	j label910
label909:
	li $t0, 0
	sw $t0, -3260($fp)
	li $t0, 9045
	sw $t0, -3264($fp)
	li $t0, 0
	lw $t1, -3264($fp)
	sub $t0, $t0, $t1
	sw $t0, -3268($fp)
	lw $t1, -3268($fp)
	li $t2, 0
	bne $t1, $t2, label935
	j label934
label934:
	li $t0, 1
	sw $t0, -3260($fp)
label935:
	li $t0, 0
	lw $t1, -3260($fp)
	sub $t0, $t0, $t1
	sw $t0, -3272($fp)
	lw $ra, -4($fp)
	lw $v0, -3272($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label908
label910:
	addi $t0, $fp, -300
	sw $t0, -3276($fp)
	li $t0, 0
	sw $t0, -3280($fp)
	li $t0, 39119
	sw $t0, -3284($fp)
	lw $t1, -3284($fp)
	li $t2, 0
	bne $t1, $t2, label939
	j label941
label941:
	lw $t0, -2444($fp)
	sw $t0, -3288($fp)
	lw $t1, -3288($fp)
	li $t2, 0
	bne $t1, $t2, label939
	j label940
label939:
	li $t0, 1
	sw $t0, -3280($fp)
label940:
	li $t0, 4
	lw $t1, -3280($fp)
	mul $t0, $t0, $t1
	sw $t0, -3292($fp)
	lw $t0, -3292($fp)
	lw $t1, -3276($fp)
	add $t0, $t0, $t1
	sw $t0, -3296($fp)
	lw $t0, -3296($fp)
	lw $t1, 0($t0)
	sw $t1, -3300($fp)
	li $t0, 0
	sw $t0, -3304($fp)
	li $t0, 34146
	sw $t0, -3308($fp)
	li $t0, 0
	lw $t1, -3308($fp)
	sub $t0, $t0, $t1
	sw $t0, -3312($fp)
	lw $t0, -2408($fp)
	sw $t0, -3316($fp)
	lw $t1, -3312($fp)
	lw $t2, -3316($fp)
	ble $t1, $t2, label942
	j label943
label942:
	li $t0, 1
	sw $t0, -3304($fp)
label943:
	addi $sp, $sp, -4
	lw $t0, -3304($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3320($fp)
	addi $sp, $sp, 8
	lw $t0, -3300($fp)
	lw $t1, -3320($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3324($fp)
	addi $t0, $fp, -72
	sw $t0, -3328($fp)
	li $t0, 1
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
	lw $t0, -1676($fp)
	sw $t0, -3348($fp)
	lw $t0, -848($fp)
	sw $t0, -3352($fp)
	lw $t0, -3348($fp)
	lw $t1, -3352($fp)
	mul $t0, $t0, $t1
	sw $t0, -3356($fp)
	li $t0, 0
	lw $t1, -3356($fp)
	sub $t0, $t0, $t1
	sw $t0, -3360($fp)
	li $t0, 0
	sw $t0, -3364($fp)
	li $t0, 42994
	sw $t0, -3368($fp)
	lw $t1, -3368($fp)
	li $t2, 0
	bne $t1, $t2, label945
	j label944
label944:
	li $t0, 1
	sw $t0, -3364($fp)
label945:
	lw $t0, -1460($fp)
	sw $t0, -3372($fp)
	li $t0, 38219
	sw $t0, -3376($fp)
	lw $t0, -3372($fp)
	lw $t1, -3376($fp)
	mul $t0, $t0, $t1
	sw $t0, -3380($fp)
	addi $t0, $fp, -220
	sw $t0, -3384($fp)
	lw $t0, -680($fp)
	sw $t0, -3388($fp)
	li $t0, 4
	lw $t1, -3388($fp)
	mul $t0, $t0, $t1
	sw $t0, -3392($fp)
	lw $t0, -3392($fp)
	lw $t1, -3384($fp)
	add $t0, $t0, $t1
	sw $t0, -3396($fp)
	lw $t0, -3396($fp)
	lw $t1, 0($t0)
	sw $t1, -3400($fp)
	addi $t0, $fp, -244
	sw $t0, -3404($fp)
	li $t0, 3
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
	addi $sp, $sp, -4
	lw $t0, -3360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3420($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3424($fp)
	addi $sp, $sp, 24
	lw $t0, -3344($fp)
	lw $t1, -3424($fp)
	mul $t0, $t0, $t1
	sw $t0, -3428($fp)
	li $t0, 0
	lw $t1, -3428($fp)
	sub $t0, $t0, $t1
	sw $t0, -3432($fp)
	lw $t1, -3324($fp)
	lw $t2, -3432($fp)
	ble $t1, $t2, label936
	j label937
label936:
	li $t0, 63437
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	sw $t0, -3440($fp)
	lw $t0, -3440($fp)
	sw $t0, -3444($fp)
	li $t0, 45756
	sw $t0, -3448($fp)
	lw $t0, -3448($fp)
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	sw $t0, -3456($fp)
	li $t0, 32027
	sw $t0, -3460($fp)
	lw $t0, -3460($fp)
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	sw $t0, -3468($fp)
	lw $t0, -728($fp)
	sw $t0, -3472($fp)
	li $t0, 0
	sw $t0, -3476($fp)
	addi $t0, $fp, -56
	sw $t0, -3480($fp)
	li $t0, 1
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
	lw $t0, 12($fp)
	sw $t0, -3500($fp)
	lw $t1, -3496($fp)
	lw $t2, -3500($fp)
	beq $t1, $t2, label950
	j label951
label950:
	li $t0, 1
	sw $t0, -3476($fp)
label951:
	li $t0, 0
	sw $t0, -3504($fp)
	addi $t0, $fp, -244
	sw $t0, -3508($fp)
	lw $t0, -728($fp)
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
	li $t0, 4397
	sw $t0, -3528($fp)
	lw $t1, -3524($fp)
	lw $t2, -3528($fp)
	bne $t1, $t2, label952
	j label953
label952:
	li $t0, 1
	sw $t0, -3504($fp)
label953:
	addi $sp, $sp, -4
	lw $t0, -3472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3504($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -3532($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -3532($fp)
	sub $t0, $t0, $t1
	sw $t0, -3536($fp)
	lw $t1, -3536($fp)
	li $t2, 0
	bne $t1, $t2, label949
	j label946
label949:
	li $t0, 47722
	sw $t0, -3540($fp)
	lw $t0, -2444($fp)
	sw $t0, -3544($fp)
	lw $t0, -3540($fp)
	lw $t1, -3544($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3548($fp)
	li $t0, 0
	lw $t1, -3548($fp)
	sub $t0, $t0, $t1
	sw $t0, -3552($fp)
	li $t0, 48687
	sw $t0, -3556($fp)
	li $t0, 0
	lw $t1, -3556($fp)
	sub $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t0, -3552($fp)
	lw $t1, -3560($fp)
	sub $t0, $t0, $t1
	sw $t0, -3564($fp)
	lw $t1, -3564($fp)
	li $t2, 0
	bne $t1, $t2, label946
	j label947
label946:
label954:
	li $t0, 33668
	sw $t0, -3568($fp)
	lw $t1, -3568($fp)
	li $t2, 0
	bne $t1, $t2, label955
	j label956
label955:
	li $t0, 0
	sw $t0, -3572($fp)
	li $t0, 0
	sw $t0, -3576($fp)
	li $t0, 20010
	sw $t0, -3580($fp)
	lw $t1, -3580($fp)
	li $t2, 0
	bne $t1, $t2, label963
	j label962
label962:
	li $t0, 1
	sw $t0, -3576($fp)
label963:
	li $t0, 0
	lw $t1, -3576($fp)
	sub $t0, $t0, $t1
	sw $t0, -3584($fp)
	lw $t0, -2180($fp)
	sw $t0, -3588($fp)
	lw $t0, -3588($fp)
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -3592($fp)
	addi $sp, $sp, -4
	lw $t0, -3584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3592($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3596($fp)
	addi $sp, $sp, 12
	lw $t1, -3596($fp)
	li $t2, 0
	bne $t1, $t2, label961
	j label960
label960:
	li $t0, 1
	sw $t0, -3572($fp)
label961:
	li $t0, 0
	lw $t1, -3572($fp)
	sub $t0, $t0, $t1
	sw $t0, -3600($fp)
	lw $t1, -3600($fp)
	li $t2, 0
	bne $t1, $t2, label957
	j label958
label957:
	lw $t0, -2420($fp)
	sw $t0, -3604($fp)
	li $t0, 47127
	sw $t0, -3608($fp)
	li $t0, 30943
	sw $t0, -3612($fp)
	li $t0, 0
	sw $t0, -3616($fp)
	li $t0, 51093
	sw $t0, -3620($fp)
	lw $t1, -3620($fp)
	li $t2, 0
	bne $t1, $t2, label968
	j label967
label967:
	li $t0, 1
	sw $t0, -3616($fp)
label968:
	li $t0, 0
	lw $t1, -3616($fp)
	sub $t0, $t0, $t1
	sw $t0, -3624($fp)
	li $t0, 47468
	sw $t0, -3628($fp)
	li $t0, 9365
	sw $t0, -3632($fp)
	lw $t0, -3632($fp)
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	sw $t0, -3636($fp)
	addi $sp, $sp, -4
	lw $t0, -3608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3636($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3640($fp)
	addi $sp, $sp, 24
	lw $t0, -3604($fp)
	lw $t1, -3640($fp)
	mul $t0, $t0, $t1
	sw $t0, -3644($fp)
	li $t0, 42608
	sw $t0, -3648($fp)
	li $t0, 0
	lw $t1, -3648($fp)
	sub $t0, $t0, $t1
	sw $t0, -3652($fp)
	li $t0, 0
	lw $t1, -3652($fp)
	sub $t0, $t0, $t1
	sw $t0, -3656($fp)
	li $t0, 0
	lw $t1, -3656($fp)
	sub $t0, $t0, $t1
	sw $t0, -3660($fp)
	lw $t1, -3644($fp)
	lw $t2, -3660($fp)
	beq $t1, $t2, label964
	j label965
label964:
	li $t0, 0
	sw $t0, -3664($fp)
	lw $t0, -1652($fp)
	sw $t0, -3668($fp)
	lw $t1, -3668($fp)
	li $t2, 0
	bne $t1, $t2, label970
	j label969
label969:
	li $t0, 1
	sw $t0, -3664($fp)
label970:
	lw $t0, -1220($fp)
	sw $t0, -3672($fp)
	lw $t0, -3664($fp)
	lw $t1, -3672($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3676($fp)
	lw $ra, -4($fp)
	lw $v0, -3676($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label966
label965:
	li $t0, 47025
	sw $t0, -3680($fp)
	lw $t0, -3680($fp)
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	sw $t0, -3688($fp)
	li $t0, 0
	sw $t0, -3692($fp)
	li $t0, 41887
	sw $t0, -3696($fp)
	addi $t0, $fp, -268
	sw $t0, -3700($fp)
	lw $t0, -2396($fp)
	sw $t0, -3704($fp)
	li $t0, 4
	lw $t1, -3704($fp)
	mul $t0, $t0, $t1
	sw $t0, -3708($fp)
	lw $t0, -3708($fp)
	lw $t1, -3700($fp)
	add $t0, $t0, $t1
	sw $t0, -3712($fp)
	lw $t0, -3712($fp)
	lw $t1, 0($t0)
	sw $t1, -3716($fp)
	lw $t0, -3696($fp)
	lw $t1, -3716($fp)
	add $t0, $t0, $t1
	sw $t0, -3720($fp)
	li $t0, 0
	sw $t0, -3724($fp)
	li $t0, 0
	sw $t0, -3728($fp)
	lw $t0, -1664($fp)
	sw $t0, -3732($fp)
	li $t0, 29141
	sw $t0, -3736($fp)
	lw $t0, -3732($fp)
	lw $t1, -3736($fp)
	sub $t0, $t0, $t1
	sw $t0, -3740($fp)
	lw $t0, -1220($fp)
	sw $t0, -3744($fp)
	lw $t1, -3740($fp)
	lw $t2, -3744($fp)
	bgt $t1, $t2, label975
	j label976
label975:
	li $t0, 1
	sw $t0, -3728($fp)
label976:
	li $t0, 0
	sw $t0, -3748($fp)
	lw $t0, -692($fp)
	sw $t0, -3752($fp)
	li $t0, 46394
	sw $t0, -3756($fp)
	lw $t0, -3752($fp)
	lw $t1, -3756($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3760($fp)
	lw $t0, 12($fp)
	sw $t0, -3764($fp)
	lw $t1, -3760($fp)
	lw $t2, -3764($fp)
	bge $t1, $t2, label977
	j label978
label977:
	li $t0, 1
	sw $t0, -3748($fp)
label978:
	li $t0, 0
	sw $t0, -3768($fp)
	li $t0, 60531
	sw $t0, -3772($fp)
	lw $t1, -3772($fp)
	li $t2, 0
	bne $t1, $t2, label981
	j label979
label981:
	li $t0, 16931
	sw $t0, -3776($fp)
	lw $t1, -3776($fp)
	li $t2, 0
	bne $t1, $t2, label979
	j label980
label979:
	li $t0, 1
	sw $t0, -3768($fp)
label980:
	li $t0, 7275
	sw $t0, -3780($fp)
	lw $t0, -3780($fp)
	sw $t0, -3684($fp)
	lw $t0, -3684($fp)
	sw $t0, -3784($fp)
	li $t0, 0
	sw $t0, -3788($fp)
	li $t0, 32870
	sw $t0, -3792($fp)
	lw $t1, -3792($fp)
	li $t2, 0
	bne $t1, $t2, label982
	j label984
label984:
	li $t0, 7886
	sw $t0, -3796($fp)
	lw $t1, -3796($fp)
	li $t2, 0
	bne $t1, $t2, label982
	j label983
label982:
	li $t0, 1
	sw $t0, -3788($fp)
label983:
	addi $sp, $sp, -4
	lw $t0, -3728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3768($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3788($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3800($fp)
	addi $sp, $sp, 24
	lw $t1, -3800($fp)
	li $t2, 0
	bne $t1, $t2, label974
	j label973
label973:
	li $t0, 1
	sw $t0, -3724($fp)
label974:
	lw $t1, -3720($fp)
	lw $t2, -3724($fp)
	beq $t1, $t2, label971
	j label972
label971:
	li $t0, 1
	sw $t0, -3692($fp)
label972:
	lw $t0, -728($fp)
	sw $t0, -3804($fp)
	li $t0, 0
	sw $t0, -3808($fp)
	lw $t0, -728($fp)
	sw $t0, -3812($fp)
	lw $t1, -3812($fp)
	li $t2, 0
	bne $t1, $t2, label986
	j label985
label985:
	li $t0, 1
	sw $t0, -3808($fp)
label986:
label966:
	j label959
label958:
	li $t0, 0
	sw $t0, -3816($fp)
	lw $t0, 12($fp)
	sw $t0, -3820($fp)
	li $t0, 0
	sw $t0, -3824($fp)
	lw $t0, -3440($fp)
	sw $t0, -3828($fp)
	lw $t1, -3828($fp)
	li $t2, 0
	bne $t1, $t2, label990
	j label989
label989:
	li $t0, 1
	sw $t0, -3824($fp)
label990:
	lw $t0, -3820($fp)
	lw $t1, -3824($fp)
	mul $t0, $t0, $t1
	sw $t0, -3832($fp)
	li $t0, 63397
	sw $t0, -3836($fp)
	lw $t0, -3832($fp)
	lw $t1, -3836($fp)
	mul $t0, $t0, $t1
	sw $t0, -3840($fp)
	li $t0, 0
	sw $t0, -3844($fp)
	li $t0, 0
	sw $t0, -3848($fp)
	lw $t0, -3464($fp)
	sw $t0, -3852($fp)
	lw $t1, -3852($fp)
	li $t2, 0
	bne $t1, $t2, label994
	j label993
label993:
	li $t0, 1
	sw $t0, -3848($fp)
label994:
	li $t0, 63030
	sw $t0, -3856($fp)
	lw $t1, -3848($fp)
	lw $t2, -3856($fp)
	bgt $t1, $t2, label991
	j label992
label991:
	li $t0, 1
	sw $t0, -3844($fp)
label992:
	li $t0, 0
	sw $t0, -3860($fp)
	jal f8
	sw $v0, -3864($fp)
	addi $sp, $sp, 4
	lw $t1, -3864($fp)
	li $t2, 0
	bne $t1, $t2, label997
	j label996
label997:
	li $t0, 38114
	sw $t0, -3868($fp)
	lw $t1, -3868($fp)
	li $t2, 0
	bne $t1, $t2, label995
	j label996
label995:
	li $t0, 1
	sw $t0, -3860($fp)
label996:
	li $t0, 0
	sw $t0, -3872($fp)
	li $t0, 65128
	sw $t0, -3876($fp)
	lw $t1, -3876($fp)
	li $t2, 0
	bne $t1, $t2, label999
	j label1000
label1000:
	li $t0, 47835
	sw $t0, -3880($fp)
	lw $t1, -3880($fp)
	li $t2, 0
	bne $t1, $t2, label998
	j label999
label998:
	li $t0, 1
	sw $t0, -3872($fp)
label999:
	li $t0, 0
	sw $t0, -3884($fp)
	li $t0, 60656
	sw $t0, -3888($fp)
	li $t0, 0
	lw $t1, -3888($fp)
	sub $t0, $t0, $t1
	sw $t0, -3892($fp)
	lw $t1, -3892($fp)
	li $t2, 0
	bne $t1, $t2, label1003
	j label1002
label1003:
	lw $t0, 8($fp)
	sw $t0, -3896($fp)
	lw $t1, -3896($fp)
	li $t2, 0
	bne $t1, $t2, label1001
	j label1002
label1001:
	li $t0, 1
	sw $t0, -3884($fp)
label1002:
	li $t0, 0
	sw $t0, -3900($fp)
	lw $t0, -3452($fp)
	sw $t0, -3904($fp)
	lw $t1, -3904($fp)
	li $t2, 0
	bne $t1, $t2, label1007
	j label1005
label1007:
	lw $t0, -2180($fp)
	sw $t0, -3908($fp)
	lw $t1, -3908($fp)
	li $t2, 0
	bne $t1, $t2, label1006
	j label1005
label1006:
	li $t0, 9615
	sw $t0, -3912($fp)
	lw $t1, -3912($fp)
	li $t2, 0
	bne $t1, $t2, label1004
	j label1005
label1004:
	li $t0, 1
	sw $t0, -3900($fp)
label1005:
	addi $sp, $sp, -4
	lw $t0, -3844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3872($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3900($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -3916($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -3916($fp)
	sub $t0, $t0, $t1
	sw $t0, -3920($fp)
	li $t0, 0
	lw $t1, -3920($fp)
	sub $t0, $t0, $t1
	sw $t0, -3924($fp)
	lw $t1, -3840($fp)
	lw $t2, -3924($fp)
	beq $t1, $t2, label987
	j label988
label987:
	li $t0, 1
	sw $t0, -3816($fp)
label988:
label959:
	j label954
label956:
	j label948
label947:
	li $t0, 28055
	sw $t0, -3928($fp)
	li $t0, 0
	sw $t0, -3932($fp)
	lw $t0, -2444($fp)
	sw $t0, -3936($fp)
	lw $t1, -3936($fp)
	li $t2, 0
	bne $t1, $t2, label1012
	j label1011
label1011:
	li $t0, 1
	sw $t0, -3932($fp)
label1012:
	li $t0, 0
	lw $t1, -3932($fp)
	sub $t0, $t0, $t1
	sw $t0, -3940($fp)
	lw $t0, -3928($fp)
	lw $t1, -3940($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3944($fp)
	li $t0, 4606
	sw $t0, -3948($fp)
	lw $t0, -3440($fp)
	sw $t0, -3952($fp)
	lw $t0, -3948($fp)
	lw $t1, -3952($fp)
	mul $t0, $t0, $t1
	sw $t0, -3956($fp)
	lw $t0, -2396($fp)
	sw $t0, -3960($fp)
	lw $t0, -2396($fp)
	sw $t0, -3964($fp)
	lw $t0, -3960($fp)
	lw $t1, -3964($fp)
	mul $t0, $t0, $t1
	sw $t0, -3968($fp)
	lw $t0, -3956($fp)
	lw $t1, -3968($fp)
	sub $t0, $t0, $t1
	sw $t0, -3972($fp)
	lw $t1, -3944($fp)
	lw $t2, -3972($fp)
	bne $t1, $t2, label1008
	j label1009
label1008:
	addi $t0, $fp, -300
	sw $t0, -3976($fp)
	lw $t0, -2456($fp)
	sw $t0, -3980($fp)
	lw $t0, 4($fp)
	sw $t0, -3984($fp)
	lw $t0, -524($fp)
	sw $t0, -3988($fp)
	lw $t0, -3984($fp)
	lw $t1, -3988($fp)
	mul $t0, $t0, $t1
	sw $t0, -3992($fp)
	lw $t0, -3980($fp)
	lw $t1, -3992($fp)
	add $t0, $t0, $t1
	sw $t0, -3996($fp)
	li $t0, 4
	lw $t1, -3996($fp)
	mul $t0, $t0, $t1
	sw $t0, -4000($fp)
	lw $t0, -4000($fp)
	lw $t1, -3976($fp)
	add $t0, $t0, $t1
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	lw $t1, 0($t0)
	sw $t1, -4008($fp)
	j label1010
label1009:
	li $t0, 0
	sw $t0, -4012($fp)
	addi $t0, $fp, -188
	sw $t0, -4016($fp)
	li $t0, 0
	sw $t0, -4020($fp)
	li $t0, 1891
	sw $t0, -4024($fp)
	li $t0, 10038
	sw $t0, -4028($fp)
	lw $t1, -4024($fp)
	lw $t2, -4028($fp)
	bgt $t1, $t2, label1016
	j label1017
label1016:
	li $t0, 1
	sw $t0, -4020($fp)
label1017:
	li $t0, 4
	lw $t1, -4020($fp)
	mul $t0, $t0, $t1
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	lw $t1, -4016($fp)
	add $t0, $t0, $t1
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	lw $t1, 0($t0)
	sw $t1, -4040($fp)
	lw $t1, -4040($fp)
	li $t2, 0
	bne $t1, $t2, label1015
	j label1014
label1015:
	addi $t0, $fp, -244
	sw $t0, -4044($fp)
	li $t0, 5
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
	jal f8
	sw $v0, -4064($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -4068($fp)
	lw $t0, -2408($fp)
	sw $t0, -4072($fp)
	li $t0, 3299
	sw $t0, -4076($fp)
	lw $t0, -4072($fp)
	lw $t1, -4076($fp)
	mul $t0, $t0, $t1
	sw $t0, -4080($fp)
	lw $t1, -4080($fp)
	li $t2, 0
	bne $t1, $t2, label1020
	j label1019
label1020:
	lw $t0, -716($fp)
	sw $t0, -4084($fp)
	lw $t1, -4084($fp)
	li $t2, 0
	bne $t1, $t2, label1018
	j label1019
label1018:
	li $t0, 1
	sw $t0, -4068($fp)
label1019:
	li $t0, 0
	sw $t0, -4088($fp)
	lw $t0, -680($fp)
	sw $t0, -4092($fp)
	lw $t1, -4092($fp)
	li $t2, 0
	bne $t1, $t2, label1024
	j label1023
label1024:
	li $t0, 49613
	sw $t0, -4096($fp)
	lw $t1, -4096($fp)
	li $t2, 0
	bne $t1, $t2, label1021
	j label1023
label1023:
	li $t0, 58726
	sw $t0, -4100($fp)
	lw $t1, -4100($fp)
	li $t2, 0
	bne $t1, $t2, label1021
	j label1022
label1021:
	li $t0, 1
	sw $t0, -4088($fp)
label1022:
	li $t0, 35167
	sw $t0, -4104($fp)
	addi $sp, $sp, -4
	lw $t0, -4060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4104($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -4108($fp)
	addi $sp, $sp, 24
	lw $t1, -4108($fp)
	li $t2, 0
	bne $t1, $t2, label1013
	j label1014
label1013:
	li $t0, 1
	sw $t0, -4012($fp)
label1014:
label1010:
label948:
label937:
label1025:
	li $t0, 0
	sw $t0, -4112($fp)
	lw $t0, -2396($fp)
	sw $t0, -4116($fp)
	lw $t0, -728($fp)
	sw $t0, -4120($fp)
	lw $t0, -4116($fp)
	lw $t1, -4120($fp)
	mul $t0, $t0, $t1
	sw $t0, -4124($fp)
	lw $t1, -4124($fp)
	li $t2, 0
	bne $t1, $t2, label1030
	j label1029
label1030:
	lw $t0, -2180($fp)
	sw $t0, -4128($fp)
	lw $t1, -4128($fp)
	li $t2, 0
	bne $t1, $t2, label1028
	j label1029
label1028:
	li $t0, 1
	sw $t0, -4112($fp)
label1029:
	li $t0, 0
	sw $t0, -4132($fp)
	lw $t0, -2444($fp)
	sw $t0, -4136($fp)
	li $t0, 55181
	sw $t0, -4140($fp)
	lw $t0, -4136($fp)
	lw $t1, -4140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4144($fp)
	lw $t1, -4144($fp)
	li $t2, 0
	bne $t1, $t2, label1033
	j label1032
label1033:
	lw $t0, -704($fp)
	sw $t0, -4148($fp)
	lw $t1, -4148($fp)
	li $t2, 0
	bne $t1, $t2, label1031
	j label1032
label1031:
	li $t0, 1
	sw $t0, -4132($fp)
label1032:
	li $t0, 0
	sw $t0, -4152($fp)
	lw $t0, -716($fp)
	sw $t0, -4156($fp)
	lw $t1, -4156($fp)
	li $t2, 0
	bne $t1, $t2, label1035
	j label1034
label1034:
	li $t0, 1
	sw $t0, -4152($fp)
label1035:
	lw $t0, -2396($fp)
	sw $t0, -4160($fp)
	lw $t0, -4152($fp)
	lw $t1, -4160($fp)
	add $t0, $t0, $t1
	sw $t0, -4164($fp)
	li $t0, 50767
	sw $t0, -4168($fp)
	lw $t0, -2024($fp)
	sw $t0, -4172($fp)
	lw $t0, -4172($fp)
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	sw $t0, -4176($fp)
	addi $sp, $sp, -4
	lw $t0, -4112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4176($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -4180($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -244
	sw $t0, -4184($fp)
	li $t0, 0
	sw $t0, -4188($fp)
	lw $t0, -1208($fp)
	sw $t0, -4192($fp)
	lw $t0, -320($fp)
	sw $t0, -4196($fp)
	lw $t1, -4192($fp)
	lw $t2, -4196($fp)
	ble $t1, $t2, label1036
	j label1037
label1036:
	li $t0, 1
	sw $t0, -4188($fp)
label1037:
	li $t0, 4
	lw $t1, -4188($fp)
	mul $t0, $t0, $t1
	sw $t0, -4200($fp)
	lw $t0, -4200($fp)
	lw $t1, -4184($fp)
	add $t0, $t0, $t1
	sw $t0, -4204($fp)
	lw $t0, -4204($fp)
	lw $t1, 0($t0)
	sw $t1, -4208($fp)
	lw $t0, -4180($fp)
	lw $t1, -4208($fp)
	mul $t0, $t0, $t1
	sw $t0, -4212($fp)
	lw $t1, -4212($fp)
	li $t2, 0
	bne $t1, $t2, label1026
	j label1027
label1026:
	li $t0, 33498
	sw $t0, -4308($fp)
	lw $t0, -4308($fp)
	sw $t0, -4312($fp)
	lw $t0, -4312($fp)
	sw $t0, -4316($fp)
	li $t0, 32359
	sw $t0, -4320($fp)
	lw $t0, -4320($fp)
	sw $t0, -4324($fp)
	lw $t0, -4324($fp)
	sw $t0, -4328($fp)
	li $t0, 32253
	sw $t0, -4332($fp)
	addi $t0, $fp, -4236
	sw $t0, -4336($fp)
	li $t0, 0
	sw $t0, -4340($fp)
	lw $t0, -4340($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4344($fp)
	lw $t0, -4336($fp)
	lw $t1, -4344($fp)
	add $t0, $t0, $t1
	sw $t0, -4348($fp)
	lw $t0, -4332($fp)
	lw $t1, -4348($fp)
	sw $t0, 0($t1)
	lw $t0, -4348($fp)
	lw $t1, 0($t0)
	sw $t1, -4352($fp)
	li $t0, 14987
	sw $t0, -4356($fp)
	addi $t0, $fp, -4236
	sw $t0, -4360($fp)
	li $t0, 1
	sw $t0, -4364($fp)
	lw $t0, -4364($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4368($fp)
	lw $t0, -4360($fp)
	lw $t1, -4368($fp)
	add $t0, $t0, $t1
	sw $t0, -4372($fp)
	lw $t0, -4356($fp)
	lw $t1, -4372($fp)
	sw $t0, 0($t1)
	lw $t0, -4372($fp)
	lw $t1, 0($t0)
	sw $t1, -4376($fp)
	li $t0, 8710
	sw $t0, -4380($fp)
	addi $t0, $fp, -4236
	sw $t0, -4384($fp)
	li $t0, 2
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
	li $t0, 65124
	sw $t0, -4404($fp)
	addi $t0, $fp, -4236
	sw $t0, -4408($fp)
	li $t0, 3
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
	li $t0, 22873
	sw $t0, -4428($fp)
	addi $t0, $fp, -4236
	sw $t0, -4432($fp)
	li $t0, 4
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
	li $t0, 15986
	sw $t0, -4452($fp)
	addi $t0, $fp, -4236
	sw $t0, -4456($fp)
	li $t0, 5
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
	li $t0, 60119
	sw $t0, -4476($fp)
	addi $t0, $fp, -4252
	sw $t0, -4480($fp)
	li $t0, 0
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
	li $t0, 39805
	sw $t0, -4500($fp)
	addi $t0, $fp, -4252
	sw $t0, -4504($fp)
	li $t0, 1
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
	li $t0, 62380
	sw $t0, -4524($fp)
	addi $t0, $fp, -4252
	sw $t0, -4528($fp)
	li $t0, 2
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
	li $t0, 23724
	sw $t0, -4548($fp)
	addi $t0, $fp, -4252
	sw $t0, -4552($fp)
	li $t0, 3
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
	li $t0, 37666
	sw $t0, -4572($fp)
	lw $t0, -4572($fp)
	sw $t0, -4576($fp)
	lw $t0, -4576($fp)
	sw $t0, -4580($fp)
	li $t0, 6460
	sw $t0, -4584($fp)
	lw $t0, -4584($fp)
	sw $t0, -4588($fp)
	lw $t0, -4588($fp)
	sw $t0, -4592($fp)
	li $t0, 18844
	sw $t0, -4596($fp)
	lw $t0, -4596($fp)
	sw $t0, -4600($fp)
	lw $t0, -4600($fp)
	sw $t0, -4604($fp)
	li $t0, 37258
	sw $t0, -4608($fp)
	lw $t0, -4608($fp)
	sw $t0, -4612($fp)
	lw $t0, -4612($fp)
	sw $t0, -4616($fp)
	li $t0, 54295
	sw $t0, -4620($fp)
	lw $t0, -4620($fp)
	sw $t0, -4624($fp)
	lw $t0, -4624($fp)
	sw $t0, -4628($fp)
	li $t0, 56959
	sw $t0, -4632($fp)
	lw $t0, -4632($fp)
	sw $t0, -4636($fp)
	lw $t0, -4636($fp)
	sw $t0, -4640($fp)
	li $t0, 34752
	sw $t0, -4644($fp)
	lw $t0, -4644($fp)
	sw $t0, -4648($fp)
	lw $t0, -4648($fp)
	sw $t0, -4652($fp)
	li $t0, 16814
	sw $t0, -4656($fp)
	lw $t0, -4656($fp)
	sw $t0, -4660($fp)
	lw $t0, -4660($fp)
	sw $t0, -4664($fp)
	li $t0, 61565
	sw $t0, -4668($fp)
	lw $t0, -4668($fp)
	sw $t0, -4672($fp)
	lw $t0, -4672($fp)
	sw $t0, -4676($fp)
	li $t0, 36644
	sw $t0, -4680($fp)
	addi $t0, $fp, -4292
	sw $t0, -4684($fp)
	li $t0, 0
	sw $t0, -4688($fp)
	lw $t0, -4688($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4692($fp)
	lw $t0, -4684($fp)
	lw $t1, -4692($fp)
	add $t0, $t0, $t1
	sw $t0, -4696($fp)
	lw $t0, -4680($fp)
	lw $t1, -4696($fp)
	sw $t0, 0($t1)
	lw $t0, -4696($fp)
	lw $t1, 0($t0)
	sw $t1, -4700($fp)
	li $t0, 26853
	sw $t0, -4704($fp)
	addi $t0, $fp, -4292
	sw $t0, -4708($fp)
	li $t0, 1
	sw $t0, -4712($fp)
	lw $t0, -4712($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4716($fp)
	lw $t0, -4708($fp)
	lw $t1, -4716($fp)
	add $t0, $t0, $t1
	sw $t0, -4720($fp)
	lw $t0, -4704($fp)
	lw $t1, -4720($fp)
	sw $t0, 0($t1)
	lw $t0, -4720($fp)
	lw $t1, 0($t0)
	sw $t1, -4724($fp)
	li $t0, 31196
	sw $t0, -4728($fp)
	addi $t0, $fp, -4292
	sw $t0, -4732($fp)
	li $t0, 2
	sw $t0, -4736($fp)
	lw $t0, -4736($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4740($fp)
	lw $t0, -4732($fp)
	lw $t1, -4740($fp)
	add $t0, $t0, $t1
	sw $t0, -4744($fp)
	lw $t0, -4728($fp)
	lw $t1, -4744($fp)
	sw $t0, 0($t1)
	lw $t0, -4744($fp)
	lw $t1, 0($t0)
	sw $t1, -4748($fp)
	li $t0, 20721
	sw $t0, -4752($fp)
	addi $t0, $fp, -4292
	sw $t0, -4756($fp)
	li $t0, 3
	sw $t0, -4760($fp)
	lw $t0, -4760($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4764($fp)
	lw $t0, -4756($fp)
	lw $t1, -4764($fp)
	add $t0, $t0, $t1
	sw $t0, -4768($fp)
	lw $t0, -4752($fp)
	lw $t1, -4768($fp)
	sw $t0, 0($t1)
	lw $t0, -4768($fp)
	lw $t1, 0($t0)
	sw $t1, -4772($fp)
	li $t0, 20043
	sw $t0, -4776($fp)
	addi $t0, $fp, -4292
	sw $t0, -4780($fp)
	li $t0, 4
	sw $t0, -4784($fp)
	lw $t0, -4784($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4788($fp)
	lw $t0, -4780($fp)
	lw $t1, -4788($fp)
	add $t0, $t0, $t1
	sw $t0, -4792($fp)
	lw $t0, -4776($fp)
	lw $t1, -4792($fp)
	sw $t0, 0($t1)
	lw $t0, -4792($fp)
	lw $t1, 0($t0)
	sw $t1, -4796($fp)
	li $t0, 34496
	sw $t0, -4800($fp)
	addi $t0, $fp, -4292
	sw $t0, -4804($fp)
	li $t0, 5
	sw $t0, -4808($fp)
	lw $t0, -4808($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4812($fp)
	lw $t0, -4804($fp)
	lw $t1, -4812($fp)
	add $t0, $t0, $t1
	sw $t0, -4816($fp)
	lw $t0, -4800($fp)
	lw $t1, -4816($fp)
	sw $t0, 0($t1)
	lw $t0, -4816($fp)
	lw $t1, 0($t0)
	sw $t1, -4820($fp)
	li $t0, 24809
	sw $t0, -4824($fp)
	addi $t0, $fp, -4292
	sw $t0, -4828($fp)
	li $t0, 6
	sw $t0, -4832($fp)
	lw $t0, -4832($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4836($fp)
	lw $t0, -4828($fp)
	lw $t1, -4836($fp)
	add $t0, $t0, $t1
	sw $t0, -4840($fp)
	lw $t0, -4824($fp)
	lw $t1, -4840($fp)
	sw $t0, 0($t1)
	lw $t0, -4840($fp)
	lw $t1, 0($t0)
	sw $t1, -4844($fp)
	li $t0, 22598
	sw $t0, -4848($fp)
	addi $t0, $fp, -4292
	sw $t0, -4852($fp)
	li $t0, 7
	sw $t0, -4856($fp)
	lw $t0, -4856($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4860($fp)
	lw $t0, -4852($fp)
	lw $t1, -4860($fp)
	add $t0, $t0, $t1
	sw $t0, -4864($fp)
	lw $t0, -4848($fp)
	lw $t1, -4864($fp)
	sw $t0, 0($t1)
	lw $t0, -4864($fp)
	lw $t1, 0($t0)
	sw $t1, -4868($fp)
	li $t0, 19727
	sw $t0, -4872($fp)
	addi $t0, $fp, -4292
	sw $t0, -4876($fp)
	li $t0, 8
	sw $t0, -4880($fp)
	lw $t0, -4880($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4884($fp)
	lw $t0, -4876($fp)
	lw $t1, -4884($fp)
	add $t0, $t0, $t1
	sw $t0, -4888($fp)
	lw $t0, -4872($fp)
	lw $t1, -4888($fp)
	sw $t0, 0($t1)
	lw $t0, -4888($fp)
	lw $t1, 0($t0)
	sw $t1, -4892($fp)
	li $t0, 14455
	sw $t0, -4896($fp)
	addi $t0, $fp, -4292
	sw $t0, -4900($fp)
	li $t0, 9
	sw $t0, -4904($fp)
	lw $t0, -4904($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4908($fp)
	lw $t0, -4900($fp)
	lw $t1, -4908($fp)
	add $t0, $t0, $t1
	sw $t0, -4912($fp)
	lw $t0, -4896($fp)
	lw $t1, -4912($fp)
	sw $t0, 0($t1)
	lw $t0, -4912($fp)
	lw $t1, 0($t0)
	sw $t1, -4916($fp)
	li $t0, 56096
	sw $t0, -4920($fp)
	addi $t0, $fp, -4304
	sw $t0, -4924($fp)
	li $t0, 0
	sw $t0, -4928($fp)
	lw $t0, -4928($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4932($fp)
	lw $t0, -4924($fp)
	lw $t1, -4932($fp)
	add $t0, $t0, $t1
	sw $t0, -4936($fp)
	lw $t0, -4920($fp)
	lw $t1, -4936($fp)
	sw $t0, 0($t1)
	lw $t0, -4936($fp)
	lw $t1, 0($t0)
	sw $t1, -4940($fp)
	li $t0, 52086
	sw $t0, -4944($fp)
	addi $t0, $fp, -4304
	sw $t0, -4948($fp)
	li $t0, 1
	sw $t0, -4952($fp)
	lw $t0, -4952($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4956($fp)
	lw $t0, -4948($fp)
	lw $t1, -4956($fp)
	add $t0, $t0, $t1
	sw $t0, -4960($fp)
	lw $t0, -4944($fp)
	lw $t1, -4960($fp)
	sw $t0, 0($t1)
	lw $t0, -4960($fp)
	lw $t1, 0($t0)
	sw $t1, -4964($fp)
	li $t0, 46708
	sw $t0, -4968($fp)
	addi $t0, $fp, -4304
	sw $t0, -4972($fp)
	li $t0, 2
	sw $t0, -4976($fp)
	lw $t0, -4976($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4980($fp)
	lw $t0, -4972($fp)
	lw $t1, -4980($fp)
	add $t0, $t0, $t1
	sw $t0, -4984($fp)
	lw $t0, -4968($fp)
	lw $t1, -4984($fp)
	sw $t0, 0($t1)
	lw $t0, -4984($fp)
	lw $t1, 0($t0)
	sw $t1, -4988($fp)
	li $t0, 5548
	sw $t0, -4992($fp)
	lw $t0, -4992($fp)
	sw $t0, -4996($fp)
	lw $t0, -4996($fp)
	sw $t0, -5000($fp)
	li $t0, 60797
	sw $t0, -5032($fp)
	addi $t0, $fp, -5028
	sw $t0, -5036($fp)
	li $t0, 0
	sw $t0, -5040($fp)
	lw $t0, -5040($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5044($fp)
	lw $t0, -5036($fp)
	lw $t1, -5044($fp)
	add $t0, $t0, $t1
	sw $t0, -5048($fp)
	lw $t0, -5032($fp)
	lw $t1, -5048($fp)
	sw $t0, 0($t1)
	lw $t0, -5048($fp)
	lw $t1, 0($t0)
	sw $t1, -5052($fp)
	li $t0, 46296
	sw $t0, -5056($fp)
	addi $t0, $fp, -5028
	sw $t0, -5060($fp)
	li $t0, 1
	sw $t0, -5064($fp)
	lw $t0, -5064($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5068($fp)
	lw $t0, -5060($fp)
	lw $t1, -5068($fp)
	add $t0, $t0, $t1
	sw $t0, -5072($fp)
	lw $t0, -5056($fp)
	lw $t1, -5072($fp)
	sw $t0, 0($t1)
	lw $t0, -5072($fp)
	lw $t1, 0($t0)
	sw $t1, -5076($fp)
	li $t0, 28421
	sw $t0, -5080($fp)
	addi $t0, $fp, -5028
	sw $t0, -5084($fp)
	li $t0, 2
	sw $t0, -5088($fp)
	lw $t0, -5088($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5092($fp)
	lw $t0, -5084($fp)
	lw $t1, -5092($fp)
	add $t0, $t0, $t1
	sw $t0, -5096($fp)
	lw $t0, -5080($fp)
	lw $t1, -5096($fp)
	sw $t0, 0($t1)
	lw $t0, -5096($fp)
	lw $t1, 0($t0)
	sw $t1, -5100($fp)
	li $t0, 11247
	sw $t0, -5104($fp)
	addi $t0, $fp, -5028
	sw $t0, -5108($fp)
	li $t0, 3
	sw $t0, -5112($fp)
	lw $t0, -5112($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5116($fp)
	lw $t0, -5108($fp)
	lw $t1, -5116($fp)
	add $t0, $t0, $t1
	sw $t0, -5120($fp)
	lw $t0, -5104($fp)
	lw $t1, -5120($fp)
	sw $t0, 0($t1)
	lw $t0, -5120($fp)
	lw $t1, 0($t0)
	sw $t1, -5124($fp)
	li $t0, 40879
	sw $t0, -5128($fp)
	addi $t0, $fp, -5028
	sw $t0, -5132($fp)
	li $t0, 4
	sw $t0, -5136($fp)
	lw $t0, -5136($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5140($fp)
	lw $t0, -5132($fp)
	lw $t1, -5140($fp)
	add $t0, $t0, $t1
	sw $t0, -5144($fp)
	lw $t0, -5128($fp)
	lw $t1, -5144($fp)
	sw $t0, 0($t1)
	lw $t0, -5144($fp)
	lw $t1, 0($t0)
	sw $t1, -5148($fp)
	li $t0, 2690
	sw $t0, -5152($fp)
	addi $t0, $fp, -5028
	sw $t0, -5156($fp)
	li $t0, 5
	sw $t0, -5160($fp)
	lw $t0, -5160($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5164($fp)
	lw $t0, -5156($fp)
	lw $t1, -5164($fp)
	add $t0, $t0, $t1
	sw $t0, -5168($fp)
	lw $t0, -5152($fp)
	lw $t1, -5168($fp)
	sw $t0, 0($t1)
	lw $t0, -5168($fp)
	lw $t1, 0($t0)
	sw $t1, -5172($fp)
	li $t0, 8091
	sw $t0, -5176($fp)
	addi $t0, $fp, -5028
	sw $t0, -5180($fp)
	li $t0, 6
	sw $t0, -5184($fp)
	lw $t0, -5184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -5188($fp)
	lw $t0, -5180($fp)
	lw $t1, -5188($fp)
	add $t0, $t0, $t1
	sw $t0, -5192($fp)
	lw $t0, -5176($fp)
	lw $t1, -5192($fp)
	sw $t0, 0($t1)
	lw $t0, -5192($fp)
	lw $t1, 0($t0)
	sw $t1, -5196($fp)
	addi $t0, $fp, -5028
	sw $t0, -5200($fp)
	li $t0, 0
	sw $t0, -5204($fp)
	li $t0, 4
	lw $t1, -5204($fp)
	mul $t0, $t0, $t1
	sw $t0, -5208($fp)
	lw $t0, -5208($fp)
	lw $t1, -5200($fp)
	add $t0, $t0, $t1
	sw $t0, -5212($fp)
	lw $t0, -5212($fp)
	lw $t1, 0($t0)
	sw $t1, -5216($fp)
	lw $t0, -5216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5028
	sw $t0, -5220($fp)
	li $t0, 1
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
	lw $t0, -5236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5028
	sw $t0, -5240($fp)
	li $t0, 2
	sw $t0, -5244($fp)
	li $t0, 4
	lw $t1, -5244($fp)
	mul $t0, $t0, $t1
	sw $t0, -5248($fp)
	lw $t0, -5248($fp)
	lw $t1, -5240($fp)
	add $t0, $t0, $t1
	sw $t0, -5252($fp)
	lw $t0, -5252($fp)
	lw $t1, 0($t0)
	sw $t1, -5256($fp)
	lw $t0, -5256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5028
	sw $t0, -5260($fp)
	li $t0, 3
	sw $t0, -5264($fp)
	li $t0, 4
	lw $t1, -5264($fp)
	mul $t0, $t0, $t1
	sw $t0, -5268($fp)
	lw $t0, -5268($fp)
	lw $t1, -5260($fp)
	add $t0, $t0, $t1
	sw $t0, -5272($fp)
	lw $t0, -5272($fp)
	lw $t1, 0($t0)
	sw $t1, -5276($fp)
	lw $t0, -5276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5028
	sw $t0, -5280($fp)
	li $t0, 4
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
	addi $t0, $fp, -5028
	sw $t0, -5300($fp)
	li $t0, 5
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
	addi $t0, $fp, -5028
	sw $t0, -5320($fp)
	li $t0, 6
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
	li $t0, 0
	sw $t0, -5340($fp)
	addi $t0, $fp, -5028
	sw $t0, -5344($fp)
	lw $t0, 12($fp)
	sw $t0, -5348($fp)
	li $t0, 4
	lw $t1, -5348($fp)
	mul $t0, $t0, $t1
	sw $t0, -5352($fp)
	lw $t0, -5352($fp)
	lw $t1, -5344($fp)
	add $t0, $t0, $t1
	sw $t0, -5356($fp)
	lw $t0, -5356($fp)
	lw $t1, 0($t0)
	sw $t1, -5360($fp)
	li $t0, 0
	sw $t0, -5364($fp)
	lw $t0, -4660($fp)
	sw $t0, -5368($fp)
	lw $t1, -5368($fp)
	li $t2, 0
	bne $t1, $t2, label1041
	j label1040
label1040:
	li $t0, 1
	sw $t0, -5364($fp)
label1041:
	lw $t1, -5360($fp)
	lw $t2, -5364($fp)
	beq $t1, $t2, label1038
	j label1039
label1038:
	li $t0, 1
	sw $t0, -5340($fp)
label1039:
	lw $t0, -5340($fp)
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -5372($fp)
	lw $ra, -4($fp)
	lw $v0, -5372($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -5376($fp)
	lw $t0, -728($fp)
	sw $t0, -5380($fp)
	li $t0, 64604
	sw $t0, -5384($fp)
	lw $t0, -5380($fp)
	lw $t1, -5384($fp)
	add $t0, $t0, $t1
	sw $t0, -5388($fp)
	li $t0, 40356
	sw $t0, -5392($fp)
	lw $t0, -5388($fp)
	lw $t1, -5392($fp)
	sub $t0, $t0, $t1
	sw $t0, -5396($fp)
	li $t0, 14551
	sw $t0, -5400($fp)
	li $t0, 17912
	sw $t0, -5404($fp)
	lw $t0, -5400($fp)
	lw $t1, -5404($fp)
	add $t0, $t0, $t1
	sw $t0, -5408($fp)
	lw $t1, -5396($fp)
	lw $t2, -5408($fp)
	bne $t1, $t2, label1042
	j label1043
label1042:
	li $t0, 1
	sw $t0, -5376($fp)
label1043:
	lw $t0, -5376($fp)
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	sw $t0, -5412($fp)
	li $t0, 0
	sw $t0, -5416($fp)
	li $t0, 0
	sw $t0, -5420($fp)
	addi $t0, $fp, -244
	sw $t0, -5424($fp)
	lw $t0, -716($fp)
	sw $t0, -5428($fp)
	li $t0, 4
	lw $t1, -5428($fp)
	mul $t0, $t0, $t1
	sw $t0, -5432($fp)
	lw $t0, -5432($fp)
	lw $t1, -5424($fp)
	add $t0, $t0, $t1
	sw $t0, -5436($fp)
	lw $t0, -5436($fp)
	lw $t1, 0($t0)
	sw $t1, -5440($fp)
	li $t0, 0
	lw $t1, -5440($fp)
	sub $t0, $t0, $t1
	sw $t0, -5444($fp)
	lw $t1, -5444($fp)
	li $t2, 0
	bne $t1, $t2, label1048
	j label1047
label1047:
	li $t0, 1
	sw $t0, -5420($fp)
label1048:
	addi $t0, $fp, -4304
	sw $t0, -5448($fp)
	lw $t0, -2444($fp)
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
	lw $t1, -5420($fp)
	lw $t2, -5464($fp)
	blt $t1, $t2, label1044
	j label1046
label1046:
	addi $t0, $fp, -4252
	sw $t0, -5468($fp)
	li $t0, 2
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
	lw $t1, -5484($fp)
	li $t2, 0
	bne $t1, $t2, label1045
	j label1044
label1044:
	li $t0, 1
	sw $t0, -5416($fp)
label1045:
	addi $t0, $fp, -5028
	sw $t0, -5488($fp)
	li $t0, 0
	sw $t0, -5492($fp)
	li $t0, 4
	lw $t1, -5492($fp)
	mul $t0, $t0, $t1
	sw $t0, -5496($fp)
	lw $t0, -5496($fp)
	lw $t1, -5488($fp)
	add $t0, $t0, $t1
	sw $t0, -5500($fp)
	lw $t0, -5500($fp)
	lw $t1, 0($t0)
	sw $t1, -5504($fp)
	lw $t0, -5504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5028
	sw $t0, -5508($fp)
	li $t0, 1
	sw $t0, -5512($fp)
	li $t0, 4
	lw $t1, -5512($fp)
	mul $t0, $t0, $t1
	sw $t0, -5516($fp)
	lw $t0, -5516($fp)
	lw $t1, -5508($fp)
	add $t0, $t0, $t1
	sw $t0, -5520($fp)
	lw $t0, -5520($fp)
	lw $t1, 0($t0)
	sw $t1, -5524($fp)
	lw $t0, -5524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5028
	sw $t0, -5528($fp)
	li $t0, 2
	sw $t0, -5532($fp)
	li $t0, 4
	lw $t1, -5532($fp)
	mul $t0, $t0, $t1
	sw $t0, -5536($fp)
	lw $t0, -5536($fp)
	lw $t1, -5528($fp)
	add $t0, $t0, $t1
	sw $t0, -5540($fp)
	lw $t0, -5540($fp)
	lw $t1, 0($t0)
	sw $t1, -5544($fp)
	lw $t0, -5544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5028
	sw $t0, -5548($fp)
	li $t0, 3
	sw $t0, -5552($fp)
	li $t0, 4
	lw $t1, -5552($fp)
	mul $t0, $t0, $t1
	sw $t0, -5556($fp)
	lw $t0, -5556($fp)
	lw $t1, -5548($fp)
	add $t0, $t0, $t1
	sw $t0, -5560($fp)
	lw $t0, -5560($fp)
	lw $t1, 0($t0)
	sw $t1, -5564($fp)
	lw $t0, -5564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5028
	sw $t0, -5568($fp)
	li $t0, 4
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
	lw $t0, -5584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5028
	sw $t0, -5588($fp)
	li $t0, 5
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
	addi $t0, $fp, -5028
	sw $t0, -5608($fp)
	li $t0, 6
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
	li $t0, 0
	sw $t0, -5628($fp)
	lw $t0, -4588($fp)
	sw $t0, -5632($fp)
	lw $t1, -5632($fp)
	li $t2, 0
	bne $t1, $t2, label1051
	j label1050
label1051:
	lw $t0, -2396($fp)
	sw $t0, -5636($fp)
	lw $t1, -5636($fp)
	li $t2, 0
	bne $t1, $t2, label1049
	j label1050
label1049:
	li $t0, 1
	sw $t0, -5628($fp)
label1050:
	addi $sp, $sp, -4
	lw $t0, -5628($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5640($fp)
	addi $sp, $sp, 8
	li $t0, 9335
	sw $t0, -5644($fp)
	lw $t0, -5640($fp)
	lw $t1, -5644($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5648($fp)
	li $t0, 46831
	sw $t0, -5652($fp)
	lw $t0, -5648($fp)
	lw $t1, -5652($fp)
	sub $t0, $t0, $t1
	sw $t0, -5656($fp)
	lw $t0, -5656($fp)
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	sw $t0, -5660($fp)
	lw $ra, -4($fp)
	lw $v0, -5660($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -5028
	sw $t0, -5664($fp)
	li $t0, 0
	sw $t0, -5668($fp)
	li $t0, 4
	lw $t1, -5668($fp)
	mul $t0, $t0, $t1
	sw $t0, -5672($fp)
	lw $t0, -5672($fp)
	lw $t1, -5664($fp)
	add $t0, $t0, $t1
	sw $t0, -5676($fp)
	lw $t0, -5676($fp)
	lw $t1, 0($t0)
	sw $t1, -5680($fp)
	lw $t0, -5680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5028
	sw $t0, -5684($fp)
	li $t0, 1
	sw $t0, -5688($fp)
	li $t0, 4
	lw $t1, -5688($fp)
	mul $t0, $t0, $t1
	sw $t0, -5692($fp)
	lw $t0, -5692($fp)
	lw $t1, -5684($fp)
	add $t0, $t0, $t1
	sw $t0, -5696($fp)
	lw $t0, -5696($fp)
	lw $t1, 0($t0)
	sw $t1, -5700($fp)
	lw $t0, -5700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5028
	sw $t0, -5704($fp)
	li $t0, 2
	sw $t0, -5708($fp)
	li $t0, 4
	lw $t1, -5708($fp)
	mul $t0, $t0, $t1
	sw $t0, -5712($fp)
	lw $t0, -5712($fp)
	lw $t1, -5704($fp)
	add $t0, $t0, $t1
	sw $t0, -5716($fp)
	lw $t0, -5716($fp)
	lw $t1, 0($t0)
	sw $t1, -5720($fp)
	lw $t0, -5720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -5028
	sw $t0, -5724($fp)
	li $t0, 3
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
	addi $t0, $fp, -5028
	sw $t0, -5744($fp)
	li $t0, 4
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
	addi $t0, $fp, -5028
	sw $t0, -5764($fp)
	li $t0, 5
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
	addi $t0, $fp, -5028
	sw $t0, -5784($fp)
	li $t0, 6
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
	li $t0, 0
	sw $t0, -5804($fp)
	addi $t0, $fp, -244
	sw $t0, -5808($fp)
	li $t0, 0
	sw $t0, -5812($fp)
	lw $t0, -680($fp)
	sw $t0, -5816($fp)
	lw $t1, -5816($fp)
	li $t2, 0
	bne $t1, $t2, label1056
	j label1055
label1055:
	li $t0, 1
	sw $t0, -5812($fp)
label1056:
	li $t0, 4
	lw $t1, -5812($fp)
	mul $t0, $t0, $t1
	sw $t0, -5820($fp)
	lw $t0, -5820($fp)
	lw $t1, -5808($fp)
	add $t0, $t0, $t1
	sw $t0, -5824($fp)
	lw $t0, -5824($fp)
	lw $t1, 0($t0)
	sw $t1, -5828($fp)
	lw $t1, -5828($fp)
	li $t2, 0
	bne $t1, $t2, label1054
	j label1053
label1054:
	li $t0, 0
	sw $t0, -5832($fp)
	li $t0, 0
	sw $t0, -5836($fp)
	li $t0, 20125
	sw $t0, -5840($fp)
	li $t0, 5364
	sw $t0, -5844($fp)
	lw $t1, -5840($fp)
	lw $t2, -5844($fp)
	blt $t1, $t2, label1059
	j label1060
label1059:
	li $t0, 1
	sw $t0, -5836($fp)
label1060:
	lw $t0, -2180($fp)
	sw $t0, -5848($fp)
	lw $t1, -5836($fp)
	lw $t2, -5848($fp)
	ble $t1, $t2, label1057
	j label1058
label1057:
	li $t0, 1
	sw $t0, -5832($fp)
label1058:
	li $t0, 0
	sw $t0, -5852($fp)
	li $t0, 17939
	sw $t0, -5856($fp)
	lw $t0, -1220($fp)
	sw $t0, -5860($fp)
	lw $t1, -5856($fp)
	lw $t2, -5860($fp)
	bgt $t1, $t2, label1061
	j label1062
label1061:
	li $t0, 1
	sw $t0, -5852($fp)
label1062:
	lw $t1, -5832($fp)
	lw $t2, -5852($fp)
	beq $t1, $t2, label1052
	j label1053
label1052:
	li $t0, 1
	sw $t0, -5804($fp)
label1053:
	lw $ra, -4($fp)
	lw $v0, -5804($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 46978
	sw $t0, -5864($fp)
	lw $t0, -5864($fp)
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, -5868($fp)
	addi $sp, $sp, -4
	lw $t0, -5868($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5872($fp)
	addi $sp, $sp, 8
	lw $t0, -2432($fp)
	sw $t0, -5876($fp)
	li $t0, 36561
	sw $t0, -5880($fp)
	lw $t0, -5876($fp)
	lw $t1, -5880($fp)
	mul $t0, $t0, $t1
	sw $t0, -5884($fp)
label1063:
	li $t0, 38661
	sw $t0, -5888($fp)
	li $t0, 0
	lw $t1, -5888($fp)
	sub $t0, $t0, $t1
	sw $t0, -5892($fp)
	addi $t0, $fp, -268
	sw $t0, -5896($fp)
	li $t0, 2
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
	lw $t1, -5892($fp)
	lw $t2, -5912($fp)
	bne $t1, $t2, label1064
	j label1065
label1064:
	li $t0, 0
	sw $t0, -5916($fp)
	li $t0, 0
	sw $t0, -5920($fp)
	lw $t0, 4($fp)
	sw $t0, -5924($fp)
	lw $t0, -5924($fp)
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -5928($fp)
	li $t0, 0
	sw $t0, -5932($fp)
	li $t0, 41518
	sw $t0, -5936($fp)
	li $t0, 0
	lw $t1, -5936($fp)
	sub $t0, $t0, $t1
	sw $t0, -5940($fp)
	li $t0, 19498
	sw $t0, -5944($fp)
	lw $t1, -5940($fp)
	lw $t2, -5944($fp)
	blt $t1, $t2, label1073
	j label1074
label1073:
	li $t0, 1
	sw $t0, -5932($fp)
label1074:
	li $t0, 44260
	sw $t0, -5948($fp)
	li $t0, 0
	sw $t0, -5952($fp)
	li $t0, 38203
	sw $t0, -5956($fp)
	lw $t1, -5956($fp)
	li $t2, 0
	bne $t1, $t2, label1076
	j label1075
label1075:
	li $t0, 1
	sw $t0, -5952($fp)
label1076:
	li $t0, 0
	lw $t1, -5952($fp)
	sub $t0, $t0, $t1
	sw $t0, -5960($fp)
	li $t0, 0
	sw $t0, -5964($fp)
	lw $t0, -872($fp)
	sw $t0, -5968($fp)
	lw $t1, -5968($fp)
	li $t2, 0
	bne $t1, $t2, label1077
	j label1080
label1080:
	lw $t0, -4996($fp)
	sw $t0, -5972($fp)
	lw $t1, -5972($fp)
	li $t2, 0
	bne $t1, $t2, label1077
	j label1079
label1079:
	lw $t0, -728($fp)
	sw $t0, -5976($fp)
	lw $t1, -5976($fp)
	li $t2, 0
	bne $t1, $t2, label1077
	j label1078
label1077:
	li $t0, 1
	sw $t0, -5964($fp)
label1078:
	li $t0, 0
	sw $t0, -5980($fp)
	addi $t0, $fp, -4236
	sw $t0, -5984($fp)
	li $t0, 4
	sw $t0, -5988($fp)
	li $t0, 4
	lw $t1, -5988($fp)
	mul $t0, $t0, $t1
	sw $t0, -5992($fp)
	lw $t0, -5992($fp)
	lw $t1, -5984($fp)
	add $t0, $t0, $t1
	sw $t0, -5996($fp)
	lw $t0, -5996($fp)
	lw $t1, 0($t0)
	sw $t1, -6000($fp)
	li $t0, 32182
	sw $t0, -6004($fp)
	lw $t1, -6000($fp)
	lw $t2, -6004($fp)
	bne $t1, $t2, label1081
	j label1082
label1081:
	li $t0, 1
	sw $t0, -5980($fp)
label1082:
	li $t0, 14270
	sw $t0, -6008($fp)
	lw $t0, -728($fp)
	sw $t0, -6012($fp)
	lw $t0, -6008($fp)
	lw $t1, -6012($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6016($fp)
	lw $t0, -716($fp)
	sw $t0, -6020($fp)
	lw $t0, -6016($fp)
	lw $t1, -6020($fp)
	add $t0, $t0, $t1
	sw $t0, -6024($fp)
	addi $sp, $sp, -4
	lw $t0, -5964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6024($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -6028($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -6032($fp)
	li $t0, 26398
	sw $t0, -6036($fp)
	lw $t0, -680($fp)
	sw $t0, -6040($fp)
	lw $t1, -6036($fp)
	lw $t2, -6040($fp)
	bne $t1, $t2, label1083
	j label1085
label1085:
	lw $t0, -680($fp)
	sw $t0, -6044($fp)
	lw $t1, -6044($fp)
	li $t2, 0
	bne $t1, $t2, label1083
	j label1084
label1083:
	li $t0, 1
	sw $t0, -6032($fp)
label1084:
	li $t0, 51303
	sw $t0, -6048($fp)
	lw $t0, -6048($fp)
	sw $t0, -4672($fp)
	lw $t0, -4672($fp)
	sw $t0, -6052($fp)
	li $t0, 0
	sw $t0, -6056($fp)
	li $t0, 48613
	sw $t0, -6060($fp)
	li $t0, 18307
	sw $t0, -6064($fp)
	lw $t0, -6060($fp)
	lw $t1, -6064($fp)
	mul $t0, $t0, $t1
	sw $t0, -6068($fp)
	li $t0, 15202
	sw $t0, -6072($fp)
	lw $t1, -6068($fp)
	lw $t2, -6072($fp)
	ble $t1, $t2, label1086
	j label1087
label1086:
	li $t0, 1
	sw $t0, -6056($fp)
label1087:
	li $t0, 39858
	sw $t0, -6076($fp)
	addi $sp, $sp, -4
	lw $t0, -6076($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6080($fp)
	addi $sp, $sp, 8
	lw $t0, -4648($fp)
	sw $t0, -6084($fp)
	lw $t0, -6080($fp)
	lw $t1, -6084($fp)
	mul $t0, $t0, $t1
	sw $t0, -6088($fp)
	li $t0, 20191
	sw $t0, -6092($fp)
	li $t0, 7060
	sw $t0, -6096($fp)
	lw $t0, -6092($fp)
	lw $t1, -6096($fp)
	mul $t0, $t0, $t1
	sw $t0, -6100($fp)
	li $t0, 0
	lw $t1, -6100($fp)
	sub $t0, $t0, $t1
	sw $t0, -6104($fp)
	addi $sp, $sp, -4
	lw $t0, -6032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6088($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6104($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -6108($fp)
	addi $sp, $sp, 24
	li $t0, 59098
	sw $t0, -6112($fp)
	lw $t0, -6112($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -6116($fp)
	li $t0, 0
	sw $t0, -6120($fp)
	addi $t0, $fp, -124
	sw $t0, -6124($fp)
	li $t0, 2
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
	li $t0, 11799
	sw $t0, -6144($fp)
	lw $t1, -6140($fp)
	lw $t2, -6144($fp)
	bge $t1, $t2, label1088
	j label1089
label1088:
	li $t0, 1
	sw $t0, -6120($fp)
label1089:
	addi $sp, $sp, -4
	lw $t0, -5960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6120($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -6148($fp)
	addi $sp, $sp, 24
	lw $t0, -2024($fp)
	sw $t0, -6152($fp)
	li $t0, 24083
	sw $t0, -6156($fp)
	lw $t0, -6152($fp)
	lw $t1, -6156($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6160($fp)
	li $t0, 25248
	sw $t0, -6164($fp)
	lw $t0, -6160($fp)
	lw $t1, -6164($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6168($fp)
	addi $sp, $sp, -4
	lw $t0, -5928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6168($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -6172($fp)
	addi $sp, $sp, 24
	lw $t0, -4660($fp)
	sw $t0, -6176($fp)
	lw $t1, -6172($fp)
	lw $t2, -6176($fp)
	bgt $t1, $t2, label1071
	j label1072
label1071:
	li $t0, 1
	sw $t0, -5920($fp)
label1072:
	li $t0, 0
	sw $t0, -6180($fp)
	li $t0, 64385
	sw $t0, -6184($fp)
	lw $t0, 12($fp)
	sw $t0, -6188($fp)
	lw $t1, -6184($fp)
	lw $t2, -6188($fp)
	bge $t1, $t2, label1090
	j label1091
label1090:
	li $t0, 1
	sw $t0, -6180($fp)
label1091:
	lw $t1, -5920($fp)
	lw $t2, -6180($fp)
	beq $t1, $t2, label1069
	j label1070
label1069:
	li $t0, 1
	sw $t0, -5916($fp)
label1070:
	lw $t0, -5916($fp)
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	sw $t0, -6192($fp)
	lw $t1, -6192($fp)
	li $t2, 0
	bne $t1, $t2, label1066
	j label1067
label1066:
label1092:
	li $t0, 46882
	sw $t0, -6196($fp)
	lw $t1, -6196($fp)
	li $t2, 0
	bne $t1, $t2, label1093
	j label1094
label1093:
	li $t0, 0
	sw $t0, -6200($fp)
	li $t0, 0
	sw $t0, -6204($fp)
	li $t0, 23428
	sw $t0, -6208($fp)
	li $t0, 8497
	sw $t0, -6212($fp)
	lw $t1, -6208($fp)
	lw $t2, -6212($fp)
	beq $t1, $t2, label1102
	j label1103
label1102:
	li $t0, 1
	sw $t0, -6204($fp)
label1103:
	lw $t0, -512($fp)
	sw $t0, -6216($fp)
	lw $t1, -6204($fp)
	lw $t2, -6216($fp)
	beq $t1, $t2, label1100
	j label1101
label1100:
	li $t0, 1
	sw $t0, -6200($fp)
label1101:
	lw $t0, -4312($fp)
	sw $t0, -6220($fp)
	lw $t0, -6220($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -6224($fp)
	li $t0, 0
	sw $t0, -6228($fp)
	li $t0, 10563
	sw $t0, -6232($fp)
	lw $t1, -6232($fp)
	li $t2, 0
	bne $t1, $t2, label1105
	j label1104
label1104:
	li $t0, 1
	sw $t0, -6228($fp)
label1105:
	li $t0, 47312
	sw $t0, -6236($fp)
	lw $t0, -6228($fp)
	lw $t1, -6236($fp)
	mul $t0, $t0, $t1
	sw $t0, -6240($fp)
	li $t0, 0
	sw $t0, -6244($fp)
	li $t0, 17907
	sw $t0, -6248($fp)
	lw $t1, -6248($fp)
	li $t2, 0
	bne $t1, $t2, label1108
	j label1107
label1108:
	lw $t0, -1652($fp)
	sw $t0, -6252($fp)
	lw $t1, -6252($fp)
	li $t2, 0
	bne $t1, $t2, label1106
	j label1107
label1106:
	li $t0, 1
	sw $t0, -6244($fp)
label1107:
	li $t0, 37438
	sw $t0, -6256($fp)
	li $t0, 0
	lw $t1, -6256($fp)
	sub $t0, $t0, $t1
	sw $t0, -6260($fp)
	li $t0, 45827
	sw $t0, -6264($fp)
	lw $t0, -6260($fp)
	lw $t1, -6264($fp)
	add $t0, $t0, $t1
	sw $t0, -6268($fp)
	addi $sp, $sp, -4
	lw $t0, -6200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6240($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6268($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -6272($fp)
	addi $sp, $sp, 24
	lw $t0, -4324($fp)
	sw $t0, -6276($fp)
	lw $t0, -6272($fp)
	lw $t1, -6276($fp)
	add $t0, $t0, $t1
	sw $t0, -6280($fp)
	li $t0, 5859
	sw $t0, -6284($fp)
	lw $t0, -1676($fp)
	sw $t0, -6288($fp)
	lw $t0, -6284($fp)
	lw $t1, -6288($fp)
	sub $t0, $t0, $t1
	sw $t0, -6292($fp)
	lw $t1, -6280($fp)
	lw $t2, -6292($fp)
	bne $t1, $t2, label1099
	j label1096
label1099:
	addi $t0, $fp, -4252
	sw $t0, -6296($fp)
	li $t0, 3
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
	lw $t1, -6312($fp)
	li $t2, 0
	bne $t1, $t2, label1098
	j label1096
label1098:
	li $t0, 0
	sw $t0, -6316($fp)
	lw $t0, -2384($fp)
	sw $t0, -6320($fp)
	li $t0, 14449
	sw $t0, -6324($fp)
	lw $t0, -6320($fp)
	lw $t1, -6324($fp)
	add $t0, $t0, $t1
	sw $t0, -6328($fp)
	li $t0, 40694
	sw $t0, -6332($fp)
	lw $t1, -6328($fp)
	lw $t2, -6332($fp)
	blt $t1, $t2, label1109
	j label1110
label1109:
	li $t0, 1
	sw $t0, -6316($fp)
label1110:
	li $t0, 0
	sw $t0, -6336($fp)
	li $t0, 20503
	sw $t0, -6340($fp)
	li $t0, 60476
	sw $t0, -6344($fp)
	lw $t0, -6340($fp)
	lw $t1, -6344($fp)
	sub $t0, $t0, $t1
	sw $t0, -6348($fp)
	lw $t0, -320($fp)
	sw $t0, -6352($fp)
	lw $t1, -6348($fp)
	lw $t2, -6352($fp)
	beq $t1, $t2, label1111
	j label1112
label1111:
	li $t0, 1
	sw $t0, -6336($fp)
label1112:
	addi $sp, $sp, -4
	lw $t0, -6316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6336($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6356($fp)
	addi $sp, $sp, 12
	li $t0, 2000
	sw $t0, -6360($fp)
	lw $t1, -6356($fp)
	lw $t2, -6360($fp)
	beq $t1, $t2, label1095
	j label1096
label1095:
	li $t0, 0
	sw $t0, -6364($fp)
	li $t0, 54307
	sw $t0, -6368($fp)
	addi $t0, $fp, -268
	sw $t0, -6372($fp)
	li $t0, 1
	sw $t0, -6376($fp)
	li $t0, 4
	lw $t1, -6376($fp)
	mul $t0, $t0, $t1
	sw $t0, -6380($fp)
	lw $t0, -6380($fp)
	lw $t1, -6372($fp)
	add $t0, $t0, $t1
	sw $t0, -6384($fp)
	lw $t0, -6384($fp)
	lw $t1, 0($t0)
	sw $t1, -6388($fp)
	lw $t0, -6368($fp)
	lw $t1, -6388($fp)
	sub $t0, $t0, $t1
	sw $t0, -6392($fp)
	li $t0, 50426
	sw $t0, -6396($fp)
	lw $t0, -6396($fp)
	sw $t0, -308($fp)
	lw $t0, -308($fp)
	sw $t0, -6400($fp)
	li $t0, 0
	sw $t0, -6404($fp)
	li $t0, 18243
	sw $t0, -6408($fp)
	li $t0, 35663
	sw $t0, -6412($fp)
	lw $t0, -6408($fp)
	lw $t1, -6412($fp)
	mul $t0, $t0, $t1
	sw $t0, -6416($fp)
	li $t0, 22119
	sw $t0, -6420($fp)
	lw $t1, -6416($fp)
	lw $t2, -6420($fp)
	beq $t1, $t2, label1118
	j label1119
label1118:
	li $t0, 1
	sw $t0, -6404($fp)
label1119:
	addi $sp, $sp, -4
	lw $t0, -6400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6404($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6424($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -6428($fp)
	lw $t0, -4576($fp)
	sw $t0, -6432($fp)
	li $t0, 9539
	sw $t0, -6436($fp)
	lw $t0, -6432($fp)
	lw $t1, -6436($fp)
	add $t0, $t0, $t1
	sw $t0, -6440($fp)
	li $t0, 46705
	sw $t0, -6444($fp)
	lw $t1, -6440($fp)
	lw $t2, -6444($fp)
	beq $t1, $t2, label1120
	j label1121
label1120:
	li $t0, 1
	sw $t0, -6428($fp)
label1121:
	li $t0, 0
	sw $t0, -6448($fp)
	li $t0, 3973
	sw $t0, -6452($fp)
	lw $t1, -6452($fp)
	li $t2, 0
	bne $t1, $t2, label1123
	j label1122
label1122:
	li $t0, 1
	sw $t0, -6448($fp)
label1123:
	addi $sp, $sp, -4
	lw $t0, -6424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6448($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -6456($fp)
	addi $sp, $sp, 16
	li $t0, 0
	lw $t1, -6456($fp)
	sub $t0, $t0, $t1
	sw $t0, -6460($fp)
	lw $t1, -6392($fp)
	lw $t2, -6460($fp)
	bgt $t1, $t2, label1116
	j label1117
label1116:
	li $t0, 1
	sw $t0, -6364($fp)
label1117:
	li $t0, 8330
	sw $t0, -6464($fp)
	lw $t1, -6364($fp)
	lw $t2, -6464($fp)
	bge $t1, $t2, label1113
	j label1114
label1113:
	li $t0, 0
	sw $t0, -6468($fp)
	li $t0, 65229
	sw $t0, -6472($fp)
	li $t0, 7754
	sw $t0, -6476($fp)
	lw $t0, -6472($fp)
	lw $t1, -6476($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6480($fp)
	lw $t0, -1220($fp)
	sw $t0, -6484($fp)
	lw $t0, -6480($fp)
	lw $t1, -6484($fp)
	add $t0, $t0, $t1
	sw $t0, -6488($fp)
	lw $t0, -2432($fp)
	sw $t0, -6492($fp)
	jal f8
	sw $v0, -6496($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -6496($fp)
	sub $t0, $t0, $t1
	sw $t0, -6500($fp)
	li $t0, 0
	sw $t0, -6504($fp)
	li $t0, 0
	sw $t0, -6508($fp)
	lw $t0, -728($fp)
	sw $t0, -6512($fp)
	lw $t1, -6512($fp)
	li $t2, 0
	bne $t1, $t2, label1129
	j label1128
label1128:
	li $t0, 1
	sw $t0, -6508($fp)
label1129:
	lw $t0, -2444($fp)
	sw $t0, -6516($fp)
	lw $t1, -6508($fp)
	lw $t2, -6516($fp)
	ble $t1, $t2, label1126
	j label1127
label1126:
	li $t0, 1
	sw $t0, -6504($fp)
label1127:
	li $t0, 0
	sw $t0, -6520($fp)
	li $t0, 27828
	sw $t0, -6524($fp)
	lw $t0, -4588($fp)
	sw $t0, -6528($fp)
	lw $t0, -6524($fp)
	lw $t1, -6528($fp)
	mul $t0, $t0, $t1
	sw $t0, -6532($fp)
	lw $t1, -6532($fp)
	li $t2, 0
	bne $t1, $t2, label1132
	j label1131
label1132:
	lw $t0, -1208($fp)
	sw $t0, -6536($fp)
	lw $t1, -6536($fp)
	li $t2, 0
	bne $t1, $t2, label1130
	j label1131
label1130:
	li $t0, 1
	sw $t0, -6520($fp)
label1131:
	addi $sp, $sp, -4
	lw $t0, -6504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6520($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6540($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -4304
	sw $t0, -6544($fp)
	lw $t0, -680($fp)
	sw $t0, -6548($fp)
	li $t0, 4
	lw $t1, -6548($fp)
	mul $t0, $t0, $t1
	sw $t0, -6552($fp)
	lw $t0, -6552($fp)
	lw $t1, -6544($fp)
	add $t0, $t0, $t1
	sw $t0, -6556($fp)
	lw $t0, -6556($fp)
	lw $t1, 0($t0)
	sw $t1, -6560($fp)
	addi $sp, $sp, -4
	lw $t0, -6500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6560($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -6564($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -6568($fp)
	lw $t0, -1196($fp)
	sw $t0, -6572($fp)
	li $t0, 26408
	sw $t0, -6576($fp)
	lw $t1, -6572($fp)
	lw $t2, -6576($fp)
	bge $t1, $t2, label1133
	j label1134
label1133:
	li $t0, 1
	sw $t0, -6568($fp)
label1134:
	li $t0, 844
	sw $t0, -6580($fp)
	addi $sp, $sp, -4
	lw $t0, -6488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6580($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -6584($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -6588($fp)
	addi $t0, $fp, -268
	sw $t0, -6592($fp)
	lw $t0, -4636($fp)
	sw $t0, -6596($fp)
	li $t0, 4
	lw $t1, -6596($fp)
	mul $t0, $t0, $t1
	sw $t0, -6600($fp)
	lw $t0, -6600($fp)
	lw $t1, -6592($fp)
	add $t0, $t0, $t1
	sw $t0, -6604($fp)
	lw $t0, -6604($fp)
	lw $t1, 0($t0)
	sw $t1, -6608($fp)
	li $t0, 0
	lw $t1, -6608($fp)
	sub $t0, $t0, $t1
	sw $t0, -6612($fp)
	lw $t1, -6612($fp)
	li $t2, 0
	bne $t1, $t2, label1136
	j label1135
label1135:
	li $t0, 1
	sw $t0, -6588($fp)
label1136:
	lw $t1, -6584($fp)
	lw $t2, -6588($fp)
	ble $t1, $t2, label1124
	j label1125
label1124:
	li $t0, 1
	sw $t0, -6468($fp)
label1125:
	lw $ra, -4($fp)
	lw $v0, -6468($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label1115
label1114:
	li $t0, 18791
	sw $t0, -6616($fp)
	lw $t0, -6616($fp)
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	sw $t0, -6620($fp)
	addi $t0, $fp, -56
	sw $t0, -6624($fp)
	li $t0, 2
	sw $t0, -6628($fp)
	li $t0, 4
	lw $t1, -6628($fp)
	mul $t0, $t0, $t1
	sw $t0, -6632($fp)
	lw $t0, -6632($fp)
	lw $t1, -6624($fp)
	add $t0, $t0, $t1
	sw $t0, -6636($fp)
	lw $t0, -6636($fp)
	lw $t1, 0($t0)
	sw $t1, -6640($fp)
	li $t0, 0
	lw $t1, -6640($fp)
	sub $t0, $t0, $t1
	sw $t0, -6644($fp)
	li $t0, 0
	sw $t0, -6648($fp)
	lw $t0, -2420($fp)
	sw $t0, -6652($fp)
	li $t0, 10293
	sw $t0, -6656($fp)
	lw $t0, -6652($fp)
	lw $t1, -6656($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6660($fp)
	lw $t0, -2444($fp)
	sw $t0, -6664($fp)
	lw $t1, -6660($fp)
	lw $t2, -6664($fp)
	ble $t1, $t2, label1141
	j label1142
label1141:
	li $t0, 1
	sw $t0, -6648($fp)
label1142:
	li $t0, 0
	sw $t0, -6668($fp)
	li $t0, 45521
	sw $t0, -6672($fp)
	li $t0, 0
	lw $t1, -6672($fp)
	sub $t0, $t0, $t1
	sw $t0, -6676($fp)
	li $t0, 25662
	sw $t0, -6680($fp)
	lw $t1, -6676($fp)
	lw $t2, -6680($fp)
	bne $t1, $t2, label1143
	j label1144
label1143:
	li $t0, 1
	sw $t0, -6668($fp)
label1144:
	li $t0, 0
	sw $t0, -6684($fp)
	li $t0, 65266
	sw $t0, -6688($fp)
	lw $t0, 4($fp)
	sw $t0, -6692($fp)
	lw $t0, -6688($fp)
	lw $t1, -6692($fp)
	mul $t0, $t0, $t1
	sw $t0, -6696($fp)
	lw $t1, -6696($fp)
	li $t2, 0
	bne $t1, $t2, label1147
	j label1146
label1147:
	lw $t0, -2024($fp)
	sw $t0, -6700($fp)
	lw $t1, -6700($fp)
	li $t2, 0
	bne $t1, $t2, label1145
	j label1146
label1145:
	li $t0, 1
	sw $t0, -6684($fp)
label1146:
	addi $sp, $sp, -4
	lw $t0, -6620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6644($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6684($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -6704($fp)
	addi $sp, $sp, 24
	lw $t1, -6704($fp)
	li $t2, 0
	bne $t1, $t2, label1137
	j label1140
label1140:
	lw $t0, -1220($fp)
	sw $t0, -6708($fp)
	lw $t1, -6708($fp)
	li $t2, 0
	bne $t1, $t2, label1148
	j label1138
label1148:
	li $t0, 33157
	sw $t0, -6712($fp)
	lw $t1, -6712($fp)
	li $t2, 0
	bne $t1, $t2, label1138
	j label1137
label1137:
	li $t0, 0
	sw $t0, -6716($fp)
	li $t0, 0
	sw $t0, -6720($fp)
	li $t0, 0
	sw $t0, -6724($fp)
	li $t0, 0
	sw $t0, -6728($fp)
	li $t0, 32231
	sw $t0, -6732($fp)
	lw $t0, -1220($fp)
	sw $t0, -6736($fp)
	lw $t1, -6732($fp)
	lw $t2, -6736($fp)
	bne $t1, $t2, label1157
	j label1156
label1157:
	li $t0, 39678
	sw $t0, -6740($fp)
	lw $t1, -6740($fp)
	li $t2, 0
	bne $t1, $t2, label1155
	j label1156
label1155:
	li $t0, 1
	sw $t0, -6728($fp)
label1156:
	addi $sp, $sp, -4
	lw $t0, -6728($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6744($fp)
	addi $sp, $sp, 8
	lw $t1, -6744($fp)
	li $t2, 0
	bne $t1, $t2, label1154
	j label1153
label1153:
	li $t0, 1
	sw $t0, -6724($fp)
label1154:
	lw $t0, -680($fp)
	sw $t0, -6748($fp)
	li $t0, 53660
	sw $t0, -6752($fp)
	lw $t0, -6748($fp)
	lw $t1, -6752($fp)
	mul $t0, $t0, $t1
	sw $t0, -6756($fp)
	li $t0, 0
	lw $t1, -6756($fp)
	sub $t0, $t0, $t1
	sw $t0, -6760($fp)
	lw $t1, -6724($fp)
	lw $t2, -6760($fp)
	bgt $t1, $t2, label1151
	j label1152
label1151:
	li $t0, 1
	sw $t0, -6720($fp)
label1152:
	addi $t0, $fp, -4304
	sw $t0, -6764($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -6784($fp)
	li $t0, 29171
	sw $t0, -6788($fp)
	lw $t0, -320($fp)
	sw $t0, -6792($fp)
	lw $t0, -6788($fp)
	lw $t1, -6792($fp)
	add $t0, $t0, $t1
	sw $t0, -6796($fp)
	li $t0, 42898
	sw $t0, -6800($fp)
	lw $t1, -6796($fp)
	lw $t2, -6800($fp)
	ble $t1, $t2, label1158
	j label1159
label1158:
	li $t0, 1
	sw $t0, -6784($fp)
label1159:
	li $t0, 0
	sw $t0, -6804($fp)
	li $t0, 54127
	sw $t0, -6808($fp)
	lw $t0, -4312($fp)
	sw $t0, -6812($fp)
	lw $t0, -6808($fp)
	lw $t1, -6812($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6816($fp)
	lw $t1, -6816($fp)
	li $t2, 0
	bne $t1, $t2, label1162
	j label1161
label1162:
	li $t0, 28818
	sw $t0, -6820($fp)
	lw $t1, -6820($fp)
	li $t2, 0
	bne $t1, $t2, label1160
	j label1161
label1160:
	li $t0, 1
	sw $t0, -6804($fp)
label1161:
	lw $t0, -4660($fp)
	sw $t0, -6824($fp)
	lw $t0, -6824($fp)
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	sw $t0, -6828($fp)
	li $t0, 0
	sw $t0, -6832($fp)
	li $t0, 27171
	sw $t0, -6836($fp)
	lw $t0, -2396($fp)
	sw $t0, -6840($fp)
	lw $t0, -6836($fp)
	lw $t1, -6840($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6844($fp)
	lw $t1, -6844($fp)
	li $t2, 0
	bne $t1, $t2, label1163
	j label1165
label1165:
	lw $t0, -2408($fp)
	sw $t0, -6848($fp)
	lw $t1, -6848($fp)
	li $t2, 0
	bne $t1, $t2, label1163
	j label1164
label1163:
	li $t0, 1
	sw $t0, -6832($fp)
label1164:
	addi $sp, $sp, -4
	lw $t0, -6780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6804($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6832($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -6852($fp)
	addi $sp, $sp, 24
	lw $t1, -6720($fp)
	lw $t2, -6852($fp)
	ble $t1, $t2, label1149
	j label1150
label1149:
	li $t0, 1
	sw $t0, -6716($fp)
label1150:
	j label1139
label1138:
	li $t0, 0
	sw $t0, -6856($fp)
	li $t0, 46872
	sw $t0, -6860($fp)
	li $t0, 0
	sw $t0, -6864($fp)
	addi $t0, $fp, -188
	sw $t0, -6868($fp)
	li $t0, 4
	sw $t0, -6872($fp)
	li $t0, 4
	lw $t1, -6872($fp)
	mul $t0, $t0, $t1
	sw $t0, -6876($fp)
	lw $t0, -6876($fp)
	lw $t1, -6868($fp)
	add $t0, $t0, $t1
	sw $t0, -6880($fp)
	lw $t0, -6880($fp)
	lw $t1, 0($t0)
	sw $t1, -6884($fp)
	addi $t0, $fp, -4292
	sw $t0, -6888($fp)
	lw $t0, -512($fp)
	sw $t0, -6892($fp)
	li $t0, 4
	lw $t1, -6892($fp)
	mul $t0, $t0, $t1
	sw $t0, -6896($fp)
	lw $t0, -6896($fp)
	lw $t1, -6888($fp)
	add $t0, $t0, $t1
	sw $t0, -6900($fp)
	lw $t0, -6900($fp)
	lw $t1, 0($t0)
	sw $t1, -6904($fp)
	lw $t1, -6884($fp)
	lw $t2, -6904($fp)
	bgt $t1, $t2, label1168
	j label1169
label1168:
	li $t0, 1
	sw $t0, -6864($fp)
label1169:
	lw $t1, -6860($fp)
	lw $t2, -6864($fp)
	bne $t1, $t2, label1166
	j label1167
label1166:
	li $t0, 1
	sw $t0, -6856($fp)
label1167:
label1139:
label1115:
	j label1097
label1096:
	lw $t0, -728($fp)
	sw $t0, -6908($fp)
	li $t0, 32256
	sw $t0, -6912($fp)
	lw $t0, -6908($fp)
	lw $t1, -6912($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6916($fp)
	li $t0, 52767
	sw $t0, -6920($fp)
	lw $t0, -6916($fp)
	lw $t1, -6920($fp)
	mul $t0, $t0, $t1
	sw $t0, -6924($fp)
	li $t0, 65115
	sw $t0, -6928($fp)
	addi $sp, $sp, -4
	lw $t0, -6924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6928($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6932($fp)
	addi $sp, $sp, 12
	lw $ra, -4($fp)
	lw $v0, -6932($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label1097:
	j label1092
label1094:
	j label1068
label1067:
label1170:
	li $t0, 0
	sw $t0, -6936($fp)
	li $t0, 50005
	sw $t0, -6940($fp)
	lw $t1, -6940($fp)
	li $t2, 0
	bne $t1, $t2, label1174
	j label1173
label1173:
	li $t0, 1
	sw $t0, -6936($fp)
label1174:
	li $t0, 0
	lw $t1, -6936($fp)
	sub $t0, $t0, $t1
	sw $t0, -6944($fp)
	li $t0, 0
	lw $t1, -6944($fp)
	sub $t0, $t0, $t1
	sw $t0, -6948($fp)
	lw $t1, -6948($fp)
	li $t2, 0
	bne $t1, $t2, label1171
	j label1172
label1171:
	lw $t0, -1664($fp)
	sw $t0, -6952($fp)
	lw $t0, -680($fp)
	sw $t0, -6956($fp)
	lw $t0, -6952($fp)
	lw $t1, -6956($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6960($fp)
	li $t0, 0
	lw $t1, -6960($fp)
	sub $t0, $t0, $t1
	sw $t0, -6964($fp)
	li $t0, 0
	lw $t1, -6964($fp)
	sub $t0, $t0, $t1
	sw $t0, -6968($fp)
	lw $t0, -1640($fp)
	sw $t0, -6972($fp)
	li $t0, 60587
	sw $t0, -6976($fp)
	lw $t0, -6972($fp)
	lw $t1, -6976($fp)
	add $t0, $t0, $t1
	sw $t0, -6980($fp)
	lw $t0, -2456($fp)
	sw $t0, -6984($fp)
	lw $t0, -6980($fp)
	lw $t1, -6984($fp)
	add $t0, $t0, $t1
	sw $t0, -6988($fp)
	li $t0, 12902
	sw $t0, -6992($fp)
	li $t0, 44294
	sw $t0, -6996($fp)
	lw $t0, -6996($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -7000($fp)
	addi $sp, $sp, -4
	lw $t0, -6988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7000($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -7004($fp)
	addi $sp, $sp, 16
	lw $t0, 4($fp)
	sw $t0, -7008($fp)
	lw $t0, -7004($fp)
	lw $t1, -7008($fp)
	sub $t0, $t0, $t1
	sw $t0, -7012($fp)
	li $t0, 33290
	sw $t0, -7016($fp)
	li $t0, 2609
	sw $t0, -7020($fp)
	li $t0, 18632
	sw $t0, -7024($fp)
	lw $t0, -7024($fp)
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -7028($fp)
	lw $t0, -4660($fp)
	sw $t0, -7032($fp)
	lw $t0, -7032($fp)
	sw $t0, -4612($fp)
	lw $t0, -4612($fp)
	sw $t0, -7036($fp)
	li $t0, 0
	sw $t0, -7040($fp)
	li $t0, 2878
	sw $t0, -7044($fp)
	lw $t0, -1640($fp)
	sw $t0, -7048($fp)
	lw $t0, -7044($fp)
	lw $t1, -7048($fp)
	mul $t0, $t0, $t1
	sw $t0, -7052($fp)
	li $t0, 53305
	sw $t0, -7056($fp)
	lw $t1, -7052($fp)
	lw $t2, -7056($fp)
	blt $t1, $t2, label1175
	j label1176
label1175:
	li $t0, 1
	sw $t0, -7040($fp)
label1176:
	li $t0, 10877
	sw $t0, -7060($fp)
	addi $sp, $sp, -4
	lw $t0, -7020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7028($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7060($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -7064($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -7068($fp)
	lw $t0, -4636($fp)
	sw $t0, -7072($fp)
	lw $t0, -4600($fp)
	sw $t0, -7076($fp)
	lw $t1, -7072($fp)
	lw $t2, -7076($fp)
	blt $t1, $t2, label1179
	j label1178
label1179:
	lw $t0, -692($fp)
	sw $t0, -7080($fp)
	lw $t1, -7080($fp)
	li $t2, 0
	bne $t1, $t2, label1177
	j label1178
label1177:
	li $t0, 1
	sw $t0, -7068($fp)
label1178:
	addi $sp, $sp, -4
	lw $t0, -7016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7064($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7068($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -7084($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -268
	sw $t0, -7088($fp)
	lw $t0, -4624($fp)
	sw $t0, -7092($fp)
	li $t0, 4
	lw $t1, -7092($fp)
	mul $t0, $t0, $t1
	sw $t0, -7096($fp)
	lw $t0, -7096($fp)
	lw $t1, -7088($fp)
	add $t0, $t0, $t1
	sw $t0, -7100($fp)
	lw $t0, -7100($fp)
	lw $t1, 0($t0)
	sw $t1, -7104($fp)
	li $t0, 40586
	sw $t0, -7108($fp)
	li $t0, 53611
	sw $t0, -7112($fp)
	lw $t0, -7108($fp)
	lw $t1, -7112($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7116($fp)
	lw $t0, -2180($fp)
	sw $t0, -7120($fp)
	lw $t0, -7116($fp)
	lw $t1, -7120($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7124($fp)
	lw $t0, -1220($fp)
	sw $t0, -7128($fp)
	addi $sp, $sp, -4
	lw $t0, -7012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7128($fp)
	sw $t0, 0($sp)
	jal f10
	sw $v0, -7132($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -7132($fp)
	sub $t0, $t0, $t1
	sw $t0, -7136($fp)
	li $t0, 0
	lw $t1, -7136($fp)
	sub $t0, $t0, $t1
	sw $t0, -7140($fp)
	lw $t0, -6968($fp)
	lw $t1, -7140($fp)
	add $t0, $t0, $t1
	sw $t0, -7144($fp)
	j label1170
label1172:
label1068:
	j label1063
label1065:
	j label1025
label1027:
	lw $t0, -308($fp)
	sw $t0, -7148($fp)
	lw $t0, -7148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -320($fp)
	sw $t0, -7152($fp)
	lw $t0, -7152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -332($fp)
	sw $t0, -7156($fp)
	lw $t0, -7156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -7160($fp)
	li $t0, 0
	sw $t0, -7164($fp)
	li $t0, 4
	lw $t1, -7164($fp)
	mul $t0, $t0, $t1
	sw $t0, -7168($fp)
	lw $t0, -7168($fp)
	lw $t1, -7160($fp)
	add $t0, $t0, $t1
	sw $t0, -7172($fp)
	lw $t0, -7172($fp)
	lw $t1, 0($t0)
	sw $t1, -7176($fp)
	lw $t0, -7176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -7180($fp)
	li $t0, 1
	sw $t0, -7184($fp)
	li $t0, 4
	lw $t1, -7184($fp)
	mul $t0, $t0, $t1
	sw $t0, -7188($fp)
	lw $t0, -7188($fp)
	lw $t1, -7180($fp)
	add $t0, $t0, $t1
	sw $t0, -7192($fp)
	lw $t0, -7192($fp)
	lw $t1, 0($t0)
	sw $t1, -7196($fp)
	lw $t0, -7196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -7200($fp)
	li $t0, 2
	sw $t0, -7204($fp)
	li $t0, 4
	lw $t1, -7204($fp)
	mul $t0, $t0, $t1
	sw $t0, -7208($fp)
	lw $t0, -7208($fp)
	lw $t1, -7200($fp)
	add $t0, $t0, $t1
	sw $t0, -7212($fp)
	lw $t0, -7212($fp)
	lw $t1, 0($t0)
	sw $t1, -7216($fp)
	lw $t0, -7216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -7220($fp)
	li $t0, 3
	sw $t0, -7224($fp)
	li $t0, 4
	lw $t1, -7224($fp)
	mul $t0, $t0, $t1
	sw $t0, -7228($fp)
	lw $t0, -7228($fp)
	lw $t1, -7220($fp)
	add $t0, $t0, $t1
	sw $t0, -7232($fp)
	lw $t0, -7232($fp)
	lw $t1, 0($t0)
	sw $t1, -7236($fp)
	lw $t0, -7236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -7240($fp)
	li $t0, 4
	sw $t0, -7244($fp)
	li $t0, 4
	lw $t1, -7244($fp)
	mul $t0, $t0, $t1
	sw $t0, -7248($fp)
	lw $t0, -7248($fp)
	lw $t1, -7240($fp)
	add $t0, $t0, $t1
	sw $t0, -7252($fp)
	lw $t0, -7252($fp)
	lw $t1, 0($t0)
	sw $t1, -7256($fp)
	lw $t0, -7256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -7260($fp)
	li $t0, 5
	sw $t0, -7264($fp)
	li $t0, 4
	lw $t1, -7264($fp)
	mul $t0, $t0, $t1
	sw $t0, -7268($fp)
	lw $t0, -7268($fp)
	lw $t1, -7260($fp)
	add $t0, $t0, $t1
	sw $t0, -7272($fp)
	lw $t0, -7272($fp)
	lw $t1, 0($t0)
	sw $t1, -7276($fp)
	lw $t0, -7276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -7280($fp)
	li $t0, 6
	sw $t0, -7284($fp)
	li $t0, 4
	lw $t1, -7284($fp)
	mul $t0, $t0, $t1
	sw $t0, -7288($fp)
	lw $t0, -7288($fp)
	lw $t1, -7280($fp)
	add $t0, $t0, $t1
	sw $t0, -7292($fp)
	lw $t0, -7292($fp)
	lw $t1, 0($t0)
	sw $t1, -7296($fp)
	lw $t0, -7296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -512($fp)
	sw $t0, -7300($fp)
	lw $t0, -7300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -524($fp)
	sw $t0, -7304($fp)
	lw $t0, -7304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -7308($fp)
	li $t0, 0
	sw $t0, -7312($fp)
	li $t0, 4
	lw $t1, -7312($fp)
	mul $t0, $t0, $t1
	sw $t0, -7316($fp)
	lw $t0, -7316($fp)
	lw $t1, -7308($fp)
	add $t0, $t0, $t1
	sw $t0, -7320($fp)
	lw $t0, -7320($fp)
	lw $t1, 0($t0)
	sw $t1, -7324($fp)
	lw $t0, -7324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -7328($fp)
	li $t0, 1
	sw $t0, -7332($fp)
	li $t0, 4
	lw $t1, -7332($fp)
	mul $t0, $t0, $t1
	sw $t0, -7336($fp)
	lw $t0, -7336($fp)
	lw $t1, -7328($fp)
	add $t0, $t0, $t1
	sw $t0, -7340($fp)
	lw $t0, -7340($fp)
	lw $t1, 0($t0)
	sw $t1, -7344($fp)
	lw $t0, -7344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -7348($fp)
	li $t0, 2
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
	lw $t0, -7364($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -7368($fp)
	li $t0, 3
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
	lw $t0, -7384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -7388($fp)
	li $t0, 4
	sw $t0, -7392($fp)
	li $t0, 4
	lw $t1, -7392($fp)
	mul $t0, $t0, $t1
	sw $t0, -7396($fp)
	lw $t0, -7396($fp)
	lw $t1, -7388($fp)
	add $t0, $t0, $t1
	sw $t0, -7400($fp)
	lw $t0, -7400($fp)
	lw $t1, 0($t0)
	sw $t1, -7404($fp)
	lw $t0, -7404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -7408($fp)
	li $t0, 5
	sw $t0, -7412($fp)
	li $t0, 4
	lw $t1, -7412($fp)
	mul $t0, $t0, $t1
	sw $t0, -7416($fp)
	lw $t0, -7416($fp)
	lw $t1, -7408($fp)
	add $t0, $t0, $t1
	sw $t0, -7420($fp)
	lw $t0, -7420($fp)
	lw $t1, 0($t0)
	sw $t1, -7424($fp)
	lw $t0, -7424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -680($fp)
	sw $t0, -7428($fp)
	lw $t0, -7428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -692($fp)
	sw $t0, -7432($fp)
	lw $t0, -7432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -704($fp)
	sw $t0, -7436($fp)
	lw $t0, -7436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -716($fp)
	sw $t0, -7440($fp)
	lw $t0, -7440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -728($fp)
	sw $t0, -7444($fp)
	lw $t0, -7444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -7448($fp)
	li $t0, 0
	sw $t0, -7452($fp)
	li $t0, 4
	lw $t1, -7452($fp)
	mul $t0, $t0, $t1
	sw $t0, -7456($fp)
	lw $t0, -7456($fp)
	lw $t1, -7448($fp)
	add $t0, $t0, $t1
	sw $t0, -7460($fp)
	lw $t0, -7460($fp)
	lw $t1, 0($t0)
	sw $t1, -7464($fp)
	lw $t0, -7464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -7468($fp)
	li $t0, 1
	sw $t0, -7472($fp)
	li $t0, 4
	lw $t1, -7472($fp)
	mul $t0, $t0, $t1
	sw $t0, -7476($fp)
	lw $t0, -7476($fp)
	lw $t1, -7468($fp)
	add $t0, $t0, $t1
	sw $t0, -7480($fp)
	lw $t0, -7480($fp)
	lw $t1, 0($t0)
	sw $t1, -7484($fp)
	lw $t0, -7484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -7488($fp)
	li $t0, 2
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
	lw $t0, -7504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -7508($fp)
	li $t0, 3
	sw $t0, -7512($fp)
	li $t0, 4
	lw $t1, -7512($fp)
	mul $t0, $t0, $t1
	sw $t0, -7516($fp)
	lw $t0, -7516($fp)
	lw $t1, -7508($fp)
	add $t0, $t0, $t1
	sw $t0, -7520($fp)
	lw $t0, -7520($fp)
	lw $t1, 0($t0)
	sw $t1, -7524($fp)
	lw $t0, -7524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -836($fp)
	sw $t0, -7528($fp)
	lw $t0, -7528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -848($fp)
	sw $t0, -7532($fp)
	lw $t0, -7532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -860($fp)
	sw $t0, -7536($fp)
	lw $t0, -7536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -872($fp)
	sw $t0, -7540($fp)
	lw $t0, -7540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -7544($fp)
	li $t0, 0
	sw $t0, -7548($fp)
	li $t0, 4
	lw $t1, -7548($fp)
	mul $t0, $t0, $t1
	sw $t0, -7552($fp)
	lw $t0, -7552($fp)
	lw $t1, -7544($fp)
	add $t0, $t0, $t1
	sw $t0, -7556($fp)
	lw $t0, -7556($fp)
	lw $t1, 0($t0)
	sw $t1, -7560($fp)
	lw $t0, -7560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -7564($fp)
	li $t0, 1
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
	lw $t0, -7580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -7584($fp)
	li $t0, 2
	sw $t0, -7588($fp)
	li $t0, 4
	lw $t1, -7588($fp)
	mul $t0, $t0, $t1
	sw $t0, -7592($fp)
	lw $t0, -7592($fp)
	lw $t1, -7584($fp)
	add $t0, $t0, $t1
	sw $t0, -7596($fp)
	lw $t0, -7596($fp)
	lw $t1, 0($t0)
	sw $t1, -7600($fp)
	lw $t0, -7600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -7604($fp)
	li $t0, 3
	sw $t0, -7608($fp)
	li $t0, 4
	lw $t1, -7608($fp)
	mul $t0, $t0, $t1
	sw $t0, -7612($fp)
	lw $t0, -7612($fp)
	lw $t1, -7604($fp)
	add $t0, $t0, $t1
	sw $t0, -7616($fp)
	lw $t0, -7616($fp)
	lw $t1, 0($t0)
	sw $t1, -7620($fp)
	lw $t0, -7620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -7624($fp)
	li $t0, 4
	sw $t0, -7628($fp)
	li $t0, 4
	lw $t1, -7628($fp)
	mul $t0, $t0, $t1
	sw $t0, -7632($fp)
	lw $t0, -7632($fp)
	lw $t1, -7624($fp)
	add $t0, $t0, $t1
	sw $t0, -7636($fp)
	lw $t0, -7636($fp)
	lw $t1, 0($t0)
	sw $t1, -7640($fp)
	lw $t0, -7640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
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
	lw $t0, -7660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -7664($fp)
	li $t0, 0
	sw $t0, -7668($fp)
	li $t0, 4
	lw $t1, -7668($fp)
	mul $t0, $t0, $t1
	sw $t0, -7672($fp)
	lw $t0, -7672($fp)
	lw $t1, -7664($fp)
	add $t0, $t0, $t1
	sw $t0, -7676($fp)
	lw $t0, -7676($fp)
	lw $t1, 0($t0)
	sw $t1, -7680($fp)
	lw $t0, -7680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -7684($fp)
	li $t0, 1
	sw $t0, -7688($fp)
	li $t0, 4
	lw $t1, -7688($fp)
	mul $t0, $t0, $t1
	sw $t0, -7692($fp)
	lw $t0, -7692($fp)
	lw $t1, -7684($fp)
	add $t0, $t0, $t1
	sw $t0, -7696($fp)
	lw $t0, -7696($fp)
	lw $t1, 0($t0)
	sw $t1, -7700($fp)
	lw $t0, -7700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -7704($fp)
	li $t0, 2
	sw $t0, -7708($fp)
	li $t0, 4
	lw $t1, -7708($fp)
	mul $t0, $t0, $t1
	sw $t0, -7712($fp)
	lw $t0, -7712($fp)
	lw $t1, -7704($fp)
	add $t0, $t0, $t1
	sw $t0, -7716($fp)
	lw $t0, -7716($fp)
	lw $t1, 0($t0)
	sw $t1, -7720($fp)
	lw $t0, -7720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -7724($fp)
	li $t0, 3
	sw $t0, -7728($fp)
	li $t0, 4
	lw $t1, -7728($fp)
	mul $t0, $t0, $t1
	sw $t0, -7732($fp)
	lw $t0, -7732($fp)
	lw $t1, -7724($fp)
	add $t0, $t0, $t1
	sw $t0, -7736($fp)
	lw $t0, -7736($fp)
	lw $t1, 0($t0)
	sw $t1, -7740($fp)
	lw $t0, -7740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -7744($fp)
	li $t0, 4
	sw $t0, -7748($fp)
	li $t0, 4
	lw $t1, -7748($fp)
	mul $t0, $t0, $t1
	sw $t0, -7752($fp)
	lw $t0, -7752($fp)
	lw $t1, -7744($fp)
	add $t0, $t0, $t1
	sw $t0, -7756($fp)
	lw $t0, -7756($fp)
	lw $t1, 0($t0)
	sw $t1, -7760($fp)
	lw $t0, -7760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -7764($fp)
	li $t0, 5
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
	lw $t0, -7780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -7784($fp)
	li $t0, 6
	sw $t0, -7788($fp)
	li $t0, 4
	lw $t1, -7788($fp)
	mul $t0, $t0, $t1
	sw $t0, -7792($fp)
	lw $t0, -7792($fp)
	lw $t1, -7784($fp)
	add $t0, $t0, $t1
	sw $t0, -7796($fp)
	lw $t0, -7796($fp)
	lw $t1, 0($t0)
	sw $t1, -7800($fp)
	lw $t0, -7800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1196($fp)
	sw $t0, -7804($fp)
	lw $t0, -7804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1208($fp)
	sw $t0, -7808($fp)
	lw $t0, -7808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1220($fp)
	sw $t0, -7812($fp)
	lw $t0, -7812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1232($fp)
	sw $t0, -7816($fp)
	lw $t0, -7816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -7820($fp)
	li $t0, 0
	sw $t0, -7824($fp)
	li $t0, 4
	lw $t1, -7824($fp)
	mul $t0, $t0, $t1
	sw $t0, -7828($fp)
	lw $t0, -7828($fp)
	lw $t1, -7820($fp)
	add $t0, $t0, $t1
	sw $t0, -7832($fp)
	lw $t0, -7832($fp)
	lw $t1, 0($t0)
	sw $t1, -7836($fp)
	lw $t0, -7836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -7840($fp)
	li $t0, 1
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
	lw $t0, -7856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -7860($fp)
	li $t0, 2
	sw $t0, -7864($fp)
	li $t0, 4
	lw $t1, -7864($fp)
	mul $t0, $t0, $t1
	sw $t0, -7868($fp)
	lw $t0, -7868($fp)
	lw $t1, -7860($fp)
	add $t0, $t0, $t1
	sw $t0, -7872($fp)
	lw $t0, -7872($fp)
	lw $t1, 0($t0)
	sw $t1, -7876($fp)
	lw $t0, -7876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -7880($fp)
	li $t0, 3
	sw $t0, -7884($fp)
	li $t0, 4
	lw $t1, -7884($fp)
	mul $t0, $t0, $t1
	sw $t0, -7888($fp)
	lw $t0, -7888($fp)
	lw $t1, -7880($fp)
	add $t0, $t0, $t1
	sw $t0, -7892($fp)
	lw $t0, -7892($fp)
	lw $t1, 0($t0)
	sw $t1, -7896($fp)
	lw $t0, -7896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -7900($fp)
	li $t0, 4
	sw $t0, -7904($fp)
	li $t0, 4
	lw $t1, -7904($fp)
	mul $t0, $t0, $t1
	sw $t0, -7908($fp)
	lw $t0, -7908($fp)
	lw $t1, -7900($fp)
	add $t0, $t0, $t1
	sw $t0, -7912($fp)
	lw $t0, -7912($fp)
	lw $t1, 0($t0)
	sw $t1, -7916($fp)
	lw $t0, -7916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -7920($fp)
	li $t0, 5
	sw $t0, -7924($fp)
	li $t0, 4
	lw $t1, -7924($fp)
	mul $t0, $t0, $t1
	sw $t0, -7928($fp)
	lw $t0, -7928($fp)
	lw $t1, -7920($fp)
	add $t0, $t0, $t1
	sw $t0, -7932($fp)
	lw $t0, -7932($fp)
	lw $t1, 0($t0)
	sw $t1, -7936($fp)
	lw $t0, -7936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -7940($fp)
	li $t0, 6
	sw $t0, -7944($fp)
	li $t0, 4
	lw $t1, -7944($fp)
	mul $t0, $t0, $t1
	sw $t0, -7948($fp)
	lw $t0, -7948($fp)
	lw $t1, -7940($fp)
	add $t0, $t0, $t1
	sw $t0, -7952($fp)
	lw $t0, -7952($fp)
	lw $t1, 0($t0)
	sw $t1, -7956($fp)
	lw $t0, -7956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -7960($fp)
	li $t0, 7
	sw $t0, -7964($fp)
	li $t0, 4
	lw $t1, -7964($fp)
	mul $t0, $t0, $t1
	sw $t0, -7968($fp)
	lw $t0, -7968($fp)
	lw $t1, -7960($fp)
	add $t0, $t0, $t1
	sw $t0, -7972($fp)
	lw $t0, -7972($fp)
	lw $t1, 0($t0)
	sw $t1, -7976($fp)
	lw $t0, -7976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -160
	sw $t0, -7980($fp)
	li $t0, 8
	sw $t0, -7984($fp)
	li $t0, 4
	lw $t1, -7984($fp)
	mul $t0, $t0, $t1
	sw $t0, -7988($fp)
	lw $t0, -7988($fp)
	lw $t1, -7980($fp)
	add $t0, $t0, $t1
	sw $t0, -7992($fp)
	lw $t0, -7992($fp)
	lw $t1, 0($t0)
	sw $t1, -7996($fp)
	lw $t0, -7996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1460($fp)
	sw $t0, -8000($fp)
	lw $t0, -8000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -8004($fp)
	li $t0, 0
	sw $t0, -8008($fp)
	li $t0, 4
	lw $t1, -8008($fp)
	mul $t0, $t0, $t1
	sw $t0, -8012($fp)
	lw $t0, -8012($fp)
	lw $t1, -8004($fp)
	add $t0, $t0, $t1
	sw $t0, -8016($fp)
	lw $t0, -8016($fp)
	lw $t1, 0($t0)
	sw $t1, -8020($fp)
	lw $t0, -8020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -8024($fp)
	li $t0, 1
	sw $t0, -8028($fp)
	li $t0, 4
	lw $t1, -8028($fp)
	mul $t0, $t0, $t1
	sw $t0, -8032($fp)
	lw $t0, -8032($fp)
	lw $t1, -8024($fp)
	add $t0, $t0, $t1
	sw $t0, -8036($fp)
	lw $t0, -8036($fp)
	lw $t1, 0($t0)
	sw $t1, -8040($fp)
	lw $t0, -8040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -8044($fp)
	li $t0, 2
	sw $t0, -8048($fp)
	li $t0, 4
	lw $t1, -8048($fp)
	mul $t0, $t0, $t1
	sw $t0, -8052($fp)
	lw $t0, -8052($fp)
	lw $t1, -8044($fp)
	add $t0, $t0, $t1
	sw $t0, -8056($fp)
	lw $t0, -8056($fp)
	lw $t1, 0($t0)
	sw $t1, -8060($fp)
	lw $t0, -8060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -8064($fp)
	li $t0, 3
	sw $t0, -8068($fp)
	li $t0, 4
	lw $t1, -8068($fp)
	mul $t0, $t0, $t1
	sw $t0, -8072($fp)
	lw $t0, -8072($fp)
	lw $t1, -8064($fp)
	add $t0, $t0, $t1
	sw $t0, -8076($fp)
	lw $t0, -8076($fp)
	lw $t1, 0($t0)
	sw $t1, -8080($fp)
	lw $t0, -8080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -8084($fp)
	li $t0, 4
	sw $t0, -8088($fp)
	li $t0, 4
	lw $t1, -8088($fp)
	mul $t0, $t0, $t1
	sw $t0, -8092($fp)
	lw $t0, -8092($fp)
	lw $t1, -8084($fp)
	add $t0, $t0, $t1
	sw $t0, -8096($fp)
	lw $t0, -8096($fp)
	lw $t1, 0($t0)
	sw $t1, -8100($fp)
	lw $t0, -8100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -8104($fp)
	li $t0, 5
	sw $t0, -8108($fp)
	li $t0, 4
	lw $t1, -8108($fp)
	mul $t0, $t0, $t1
	sw $t0, -8112($fp)
	lw $t0, -8112($fp)
	lw $t1, -8104($fp)
	add $t0, $t0, $t1
	sw $t0, -8116($fp)
	lw $t0, -8116($fp)
	lw $t1, 0($t0)
	sw $t1, -8120($fp)
	lw $t0, -8120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -8124($fp)
	li $t0, 6
	sw $t0, -8128($fp)
	li $t0, 4
	lw $t1, -8128($fp)
	mul $t0, $t0, $t1
	sw $t0, -8132($fp)
	lw $t0, -8132($fp)
	lw $t1, -8124($fp)
	add $t0, $t0, $t1
	sw $t0, -8136($fp)
	lw $t0, -8136($fp)
	lw $t1, 0($t0)
	sw $t1, -8140($fp)
	lw $t0, -8140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1640($fp)
	sw $t0, -8144($fp)
	lw $t0, -8144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1652($fp)
	sw $t0, -8148($fp)
	lw $t0, -8148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1664($fp)
	sw $t0, -8152($fp)
	lw $t0, -8152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1676($fp)
	sw $t0, -8156($fp)
	lw $t0, -8156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -8160($fp)
	li $t0, 0
	sw $t0, -8164($fp)
	li $t0, 4
	lw $t1, -8164($fp)
	mul $t0, $t0, $t1
	sw $t0, -8168($fp)
	lw $t0, -8168($fp)
	lw $t1, -8160($fp)
	add $t0, $t0, $t1
	sw $t0, -8172($fp)
	lw $t0, -8172($fp)
	lw $t1, 0($t0)
	sw $t1, -8176($fp)
	lw $t0, -8176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -8180($fp)
	li $t0, 1
	sw $t0, -8184($fp)
	li $t0, 4
	lw $t1, -8184($fp)
	mul $t0, $t0, $t1
	sw $t0, -8188($fp)
	lw $t0, -8188($fp)
	lw $t1, -8180($fp)
	add $t0, $t0, $t1
	sw $t0, -8192($fp)
	lw $t0, -8192($fp)
	lw $t1, 0($t0)
	sw $t1, -8196($fp)
	lw $t0, -8196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -8200($fp)
	li $t0, 2
	sw $t0, -8204($fp)
	li $t0, 4
	lw $t1, -8204($fp)
	mul $t0, $t0, $t1
	sw $t0, -8208($fp)
	lw $t0, -8208($fp)
	lw $t1, -8200($fp)
	add $t0, $t0, $t1
	sw $t0, -8212($fp)
	lw $t0, -8212($fp)
	lw $t1, 0($t0)
	sw $t1, -8216($fp)
	lw $t0, -8216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -8220($fp)
	li $t0, 3
	sw $t0, -8224($fp)
	li $t0, 4
	lw $t1, -8224($fp)
	mul $t0, $t0, $t1
	sw $t0, -8228($fp)
	lw $t0, -8228($fp)
	lw $t1, -8220($fp)
	add $t0, $t0, $t1
	sw $t0, -8232($fp)
	lw $t0, -8232($fp)
	lw $t1, 0($t0)
	sw $t1, -8236($fp)
	lw $t0, -8236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -8240($fp)
	li $t0, 4
	sw $t0, -8244($fp)
	li $t0, 4
	lw $t1, -8244($fp)
	mul $t0, $t0, $t1
	sw $t0, -8248($fp)
	lw $t0, -8248($fp)
	lw $t1, -8240($fp)
	add $t0, $t0, $t1
	sw $t0, -8252($fp)
	lw $t0, -8252($fp)
	lw $t1, 0($t0)
	sw $t1, -8256($fp)
	lw $t0, -8256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -8260($fp)
	li $t0, 5
	sw $t0, -8264($fp)
	li $t0, 4
	lw $t1, -8264($fp)
	mul $t0, $t0, $t1
	sw $t0, -8268($fp)
	lw $t0, -8268($fp)
	lw $t1, -8260($fp)
	add $t0, $t0, $t1
	sw $t0, -8272($fp)
	lw $t0, -8272($fp)
	lw $t1, 0($t0)
	sw $t1, -8276($fp)
	lw $t0, -8276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -8280($fp)
	li $t0, 6
	sw $t0, -8284($fp)
	li $t0, 4
	lw $t1, -8284($fp)
	mul $t0, $t0, $t1
	sw $t0, -8288($fp)
	lw $t0, -8288($fp)
	lw $t1, -8280($fp)
	add $t0, $t0, $t1
	sw $t0, -8292($fp)
	lw $t0, -8292($fp)
	lw $t1, 0($t0)
	sw $t1, -8296($fp)
	lw $t0, -8296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -220
	sw $t0, -8300($fp)
	li $t0, 7
	sw $t0, -8304($fp)
	li $t0, 4
	lw $t1, -8304($fp)
	mul $t0, $t0, $t1
	sw $t0, -8308($fp)
	lw $t0, -8308($fp)
	lw $t1, -8300($fp)
	add $t0, $t0, $t1
	sw $t0, -8312($fp)
	lw $t0, -8312($fp)
	lw $t1, 0($t0)
	sw $t1, -8316($fp)
	lw $t0, -8316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -8320($fp)
	li $t0, 0
	sw $t0, -8324($fp)
	li $t0, 4
	lw $t1, -8324($fp)
	mul $t0, $t0, $t1
	sw $t0, -8328($fp)
	lw $t0, -8328($fp)
	lw $t1, -8320($fp)
	add $t0, $t0, $t1
	sw $t0, -8332($fp)
	lw $t0, -8332($fp)
	lw $t1, 0($t0)
	sw $t1, -8336($fp)
	lw $t0, -8336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -8340($fp)
	li $t0, 1
	sw $t0, -8344($fp)
	li $t0, 4
	lw $t1, -8344($fp)
	mul $t0, $t0, $t1
	sw $t0, -8348($fp)
	lw $t0, -8348($fp)
	lw $t1, -8340($fp)
	add $t0, $t0, $t1
	sw $t0, -8352($fp)
	lw $t0, -8352($fp)
	lw $t1, 0($t0)
	sw $t1, -8356($fp)
	lw $t0, -8356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -8360($fp)
	li $t0, 2
	sw $t0, -8364($fp)
	li $t0, 4
	lw $t1, -8364($fp)
	mul $t0, $t0, $t1
	sw $t0, -8368($fp)
	lw $t0, -8368($fp)
	lw $t1, -8360($fp)
	add $t0, $t0, $t1
	sw $t0, -8372($fp)
	lw $t0, -8372($fp)
	lw $t1, 0($t0)
	sw $t1, -8376($fp)
	lw $t0, -8376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -8380($fp)
	li $t0, 3
	sw $t0, -8384($fp)
	li $t0, 4
	lw $t1, -8384($fp)
	mul $t0, $t0, $t1
	sw $t0, -8388($fp)
	lw $t0, -8388($fp)
	lw $t1, -8380($fp)
	add $t0, $t0, $t1
	sw $t0, -8392($fp)
	lw $t0, -8392($fp)
	lw $t1, 0($t0)
	sw $t1, -8396($fp)
	lw $t0, -8396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -8400($fp)
	li $t0, 4
	sw $t0, -8404($fp)
	li $t0, 4
	lw $t1, -8404($fp)
	mul $t0, $t0, $t1
	sw $t0, -8408($fp)
	lw $t0, -8408($fp)
	lw $t1, -8400($fp)
	add $t0, $t0, $t1
	sw $t0, -8412($fp)
	lw $t0, -8412($fp)
	lw $t1, 0($t0)
	sw $t1, -8416($fp)
	lw $t0, -8416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -244
	sw $t0, -8420($fp)
	li $t0, 5
	sw $t0, -8424($fp)
	li $t0, 4
	lw $t1, -8424($fp)
	mul $t0, $t0, $t1
	sw $t0, -8428($fp)
	lw $t0, -8428($fp)
	lw $t1, -8420($fp)
	add $t0, $t0, $t1
	sw $t0, -8432($fp)
	lw $t0, -8432($fp)
	lw $t1, 0($t0)
	sw $t1, -8436($fp)
	lw $t0, -8436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2024($fp)
	sw $t0, -8440($fp)
	lw $t0, -8440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -268
	sw $t0, -8444($fp)
	li $t0, 0
	sw $t0, -8448($fp)
	li $t0, 4
	lw $t1, -8448($fp)
	mul $t0, $t0, $t1
	sw $t0, -8452($fp)
	lw $t0, -8452($fp)
	lw $t1, -8444($fp)
	add $t0, $t0, $t1
	sw $t0, -8456($fp)
	lw $t0, -8456($fp)
	lw $t1, 0($t0)
	sw $t1, -8460($fp)
	lw $t0, -8460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -268
	sw $t0, -8464($fp)
	li $t0, 1
	sw $t0, -8468($fp)
	li $t0, 4
	lw $t1, -8468($fp)
	mul $t0, $t0, $t1
	sw $t0, -8472($fp)
	lw $t0, -8472($fp)
	lw $t1, -8464($fp)
	add $t0, $t0, $t1
	sw $t0, -8476($fp)
	lw $t0, -8476($fp)
	lw $t1, 0($t0)
	sw $t1, -8480($fp)
	lw $t0, -8480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -268
	sw $t0, -8484($fp)
	li $t0, 2
	sw $t0, -8488($fp)
	li $t0, 4
	lw $t1, -8488($fp)
	mul $t0, $t0, $t1
	sw $t0, -8492($fp)
	lw $t0, -8492($fp)
	lw $t1, -8484($fp)
	add $t0, $t0, $t1
	sw $t0, -8496($fp)
	lw $t0, -8496($fp)
	lw $t1, 0($t0)
	sw $t1, -8500($fp)
	lw $t0, -8500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -268
	sw $t0, -8504($fp)
	li $t0, 3
	sw $t0, -8508($fp)
	li $t0, 4
	lw $t1, -8508($fp)
	mul $t0, $t0, $t1
	sw $t0, -8512($fp)
	lw $t0, -8512($fp)
	lw $t1, -8504($fp)
	add $t0, $t0, $t1
	sw $t0, -8516($fp)
	lw $t0, -8516($fp)
	lw $t1, 0($t0)
	sw $t1, -8520($fp)
	lw $t0, -8520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -268
	sw $t0, -8524($fp)
	li $t0, 4
	sw $t0, -8528($fp)
	li $t0, 4
	lw $t1, -8528($fp)
	mul $t0, $t0, $t1
	sw $t0, -8532($fp)
	lw $t0, -8532($fp)
	lw $t1, -8524($fp)
	add $t0, $t0, $t1
	sw $t0, -8536($fp)
	lw $t0, -8536($fp)
	lw $t1, 0($t0)
	sw $t1, -8540($fp)
	lw $t0, -8540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -268
	sw $t0, -8544($fp)
	li $t0, 5
	sw $t0, -8548($fp)
	li $t0, 4
	lw $t1, -8548($fp)
	mul $t0, $t0, $t1
	sw $t0, -8552($fp)
	lw $t0, -8552($fp)
	lw $t1, -8544($fp)
	add $t0, $t0, $t1
	sw $t0, -8556($fp)
	lw $t0, -8556($fp)
	lw $t1, 0($t0)
	sw $t1, -8560($fp)
	lw $t0, -8560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2180($fp)
	sw $t0, -8564($fp)
	lw $t0, -8564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -300
	sw $t0, -8568($fp)
	li $t0, 0
	sw $t0, -8572($fp)
	li $t0, 4
	lw $t1, -8572($fp)
	mul $t0, $t0, $t1
	sw $t0, -8576($fp)
	lw $t0, -8576($fp)
	lw $t1, -8568($fp)
	add $t0, $t0, $t1
	sw $t0, -8580($fp)
	lw $t0, -8580($fp)
	lw $t1, 0($t0)
	sw $t1, -8584($fp)
	lw $t0, -8584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -300
	sw $t0, -8588($fp)
	li $t0, 1
	sw $t0, -8592($fp)
	li $t0, 4
	lw $t1, -8592($fp)
	mul $t0, $t0, $t1
	sw $t0, -8596($fp)
	lw $t0, -8596($fp)
	lw $t1, -8588($fp)
	add $t0, $t0, $t1
	sw $t0, -8600($fp)
	lw $t0, -8600($fp)
	lw $t1, 0($t0)
	sw $t1, -8604($fp)
	lw $t0, -8604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -300
	sw $t0, -8608($fp)
	li $t0, 2
	sw $t0, -8612($fp)
	li $t0, 4
	lw $t1, -8612($fp)
	mul $t0, $t0, $t1
	sw $t0, -8616($fp)
	lw $t0, -8616($fp)
	lw $t1, -8608($fp)
	add $t0, $t0, $t1
	sw $t0, -8620($fp)
	lw $t0, -8620($fp)
	lw $t1, 0($t0)
	sw $t1, -8624($fp)
	lw $t0, -8624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -300
	sw $t0, -8628($fp)
	li $t0, 3
	sw $t0, -8632($fp)
	li $t0, 4
	lw $t1, -8632($fp)
	mul $t0, $t0, $t1
	sw $t0, -8636($fp)
	lw $t0, -8636($fp)
	lw $t1, -8628($fp)
	add $t0, $t0, $t1
	sw $t0, -8640($fp)
	lw $t0, -8640($fp)
	lw $t1, 0($t0)
	sw $t1, -8644($fp)
	lw $t0, -8644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -300
	sw $t0, -8648($fp)
	li $t0, 4
	sw $t0, -8652($fp)
	li $t0, 4
	lw $t1, -8652($fp)
	mul $t0, $t0, $t1
	sw $t0, -8656($fp)
	lw $t0, -8656($fp)
	lw $t1, -8648($fp)
	add $t0, $t0, $t1
	sw $t0, -8660($fp)
	lw $t0, -8660($fp)
	lw $t1, 0($t0)
	sw $t1, -8664($fp)
	lw $t0, -8664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -300
	sw $t0, -8668($fp)
	li $t0, 5
	sw $t0, -8672($fp)
	li $t0, 4
	lw $t1, -8672($fp)
	mul $t0, $t0, $t1
	sw $t0, -8676($fp)
	lw $t0, -8676($fp)
	lw $t1, -8668($fp)
	add $t0, $t0, $t1
	sw $t0, -8680($fp)
	lw $t0, -8680($fp)
	lw $t1, 0($t0)
	sw $t1, -8684($fp)
	lw $t0, -8684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -300
	sw $t0, -8688($fp)
	li $t0, 6
	sw $t0, -8692($fp)
	li $t0, 4
	lw $t1, -8692($fp)
	mul $t0, $t0, $t1
	sw $t0, -8696($fp)
	lw $t0, -8696($fp)
	lw $t1, -8688($fp)
	add $t0, $t0, $t1
	sw $t0, -8700($fp)
	lw $t0, -8700($fp)
	lw $t1, 0($t0)
	sw $t1, -8704($fp)
	lw $t0, -8704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -300
	sw $t0, -8708($fp)
	li $t0, 7
	sw $t0, -8712($fp)
	li $t0, 4
	lw $t1, -8712($fp)
	mul $t0, $t0, $t1
	sw $t0, -8716($fp)
	lw $t0, -8716($fp)
	lw $t1, -8708($fp)
	add $t0, $t0, $t1
	sw $t0, -8720($fp)
	lw $t0, -8720($fp)
	lw $t1, 0($t0)
	sw $t1, -8724($fp)
	lw $t0, -8724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2384($fp)
	sw $t0, -8728($fp)
	lw $t0, -8728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2396($fp)
	sw $t0, -8732($fp)
	lw $t0, -8732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2408($fp)
	sw $t0, -8736($fp)
	lw $t0, -8736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2420($fp)
	sw $t0, -8740($fp)
	lw $t0, -8740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2432($fp)
	sw $t0, -8744($fp)
	lw $t0, -8744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2444($fp)
	sw $t0, -8748($fp)
	lw $t0, -8748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2456($fp)
	sw $t0, -8752($fp)
	lw $t0, -8752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -8756($fp)
	li $t0, 0
	sw $t0, -8760($fp)
	addi $t0, $fp, -124
	sw $t0, -8764($fp)
	li $t0, 0
	sw $t0, -8768($fp)
	li $t0, 4
	lw $t1, -8768($fp)
	mul $t0, $t0, $t1
	sw $t0, -8772($fp)
	lw $t0, -8772($fp)
	lw $t1, -8764($fp)
	add $t0, $t0, $t1
	sw $t0, -8776($fp)
	lw $t0, -8776($fp)
	lw $t1, 0($t0)
	sw $t1, -8780($fp)
	li $t0, 0
	lw $t1, -8780($fp)
	sub $t0, $t0, $t1
	sw $t0, -8784($fp)
	lw $t1, -8784($fp)
	li $t2, 0
	bne $t1, $t2, label1183
	j label1182
label1182:
	li $t0, 1
	sw $t0, -8760($fp)
label1183:
	li $t0, 0
	lw $t1, -8760($fp)
	sub $t0, $t0, $t1
	sw $t0, -8788($fp)
	li $t0, 0
	sw $t0, -8792($fp)
	lw $t0, -2432($fp)
	sw $t0, -8796($fp)
	li $t0, 0
	sw $t0, -8800($fp)
	lw $t0, -2456($fp)
	sw $t0, -8804($fp)
	addi $sp, $sp, -4
	lw $t0, -8804($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -8808($fp)
	addi $sp, $sp, 8
	lw $t1, -8808($fp)
	li $t2, 0
	bne $t1, $t2, label1187
	j label1186
label1186:
	li $t0, 1
	sw $t0, -8800($fp)
label1187:
	li $t0, 0
	sw $t0, -8812($fp)
	lw $t0, -1196($fp)
	sw $t0, -8816($fp)
	li $t0, 28208
	sw $t0, -8820($fp)
	lw $t1, -8816($fp)
	lw $t2, -8820($fp)
	beq $t1, $t2, label1188
	j label1190
label1190:
	li $t0, 60080
	sw $t0, -8824($fp)
	lw $t1, -8824($fp)
	li $t2, 0
	bne $t1, $t2, label1188
	j label1189
label1188:
	li $t0, 1
	sw $t0, -8812($fp)
label1189:
	addi $sp, $sp, -4
	lw $t0, -8796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8812($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -8828($fp)
	addi $sp, $sp, 16
	lw $t1, -8828($fp)
	li $t2, 0
	bne $t1, $t2, label1185
	j label1184
label1184:
	li $t0, 1
	sw $t0, -8792($fp)
label1185:
	lw $t1, -8788($fp)
	lw $t2, -8792($fp)
	blt $t1, $t2, label1180
	j label1181
label1180:
	li $t0, 1
	sw $t0, -8756($fp)
label1181:
	lw $ra, -4($fp)
	lw $v0, -8756($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -20
	li $t0, 5835
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	lw $t0, -12($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -12($fp)
	sw $t0, -24($fp)
	lw $ra, -4($fp)
	lw $v0, -24($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -8
	jal f13
	sw $v0, -8($fp)
	addi $sp, $sp, 4
	li $t0, 16332
	sw $t0, -12($fp)
	lw $ra, -4($fp)
	lw $v0, -12($fp)
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
