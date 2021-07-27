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
	addi $sp, $sp, -516
	li $t0, 36898
	sw $t0, -40($fp)
	addi $t0, $fp, -36
	sw $t0, -44($fp)
	li $t0, 0
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
	li $t0, 5976
	sw $t0, -64($fp)
	addi $t0, $fp, -36
	sw $t0, -68($fp)
	li $t0, 1
	sw $t0, -72($fp)
	lw $t0, -72($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -76($fp)
	lw $t0, -68($fp)
	lw $t1, -76($fp)
	add $t0, $t0, $t1
	sw $t0, -80($fp)
	lw $t0, -64($fp)
	lw $t1, -80($fp)
	sw $t0, 0($t1)
	lw $t0, -80($fp)
	lw $t1, 0($t0)
	sw $t1, -84($fp)
	li $t0, 38301
	sw $t0, -88($fp)
	addi $t0, $fp, -36
	sw $t0, -92($fp)
	li $t0, 2
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
	li $t0, 34518
	sw $t0, -112($fp)
	addi $t0, $fp, -36
	sw $t0, -116($fp)
	li $t0, 3
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
	li $t0, 65198
	sw $t0, -136($fp)
	addi $t0, $fp, -36
	sw $t0, -140($fp)
	li $t0, 4
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
	li $t0, 27169
	sw $t0, -160($fp)
	addi $t0, $fp, -36
	sw $t0, -164($fp)
	li $t0, 5
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
	li $t0, 59662
	sw $t0, -184($fp)
	addi $t0, $fp, -36
	sw $t0, -188($fp)
	li $t0, 6
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
	li $t0, 17602
	sw $t0, -208($fp)
	addi $t0, $fp, -36
	sw $t0, -212($fp)
	li $t0, 7
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
	li $t0, 33347
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	lw $t0, -236($fp)
	sw $t0, -244($fp)
	li $t0, 0
	sw $t0, -248($fp)
	lw $t0, 8($fp)
	sw $t0, -252($fp)
	lw $t0, 4($fp)
	sw $t0, -256($fp)
	li $t0, 0
	lw $t1, -256($fp)
	sub $t0, $t0, $t1
	sw $t0, -260($fp)
	li $t0, 0
	lw $t1, -260($fp)
	sub $t0, $t0, $t1
	sw $t0, -264($fp)
	lw $t1, -252($fp)
	lw $t2, -264($fp)
	bgt $t1, $t2, label121
	j label123
label123:
	li $t0, 41287
	sw $t0, -268($fp)
	li $t0, 0
	lw $t1, -268($fp)
	sub $t0, $t0, $t1
	sw $t0, -272($fp)
	li $t0, 0
	lw $t1, -272($fp)
	sub $t0, $t0, $t1
	sw $t0, -276($fp)
	lw $t1, -276($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label121
label121:
	li $t0, 1
	sw $t0, -248($fp)
label122:
	addi $t0, $fp, -36
	sw $t0, -280($fp)
	li $t0, 0
	sw $t0, -284($fp)
	li $t0, 55653
	sw $t0, -288($fp)
	lw $t1, -288($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label125
label126:
	addi $t0, $fp, -36
	sw $t0, -292($fp)
	lw $t0, 8($fp)
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
	lw $t1, -308($fp)
	li $t2, 0
	bne $t1, $t2, label124
	j label125
label124:
	li $t0, 1
	sw $t0, -284($fp)
label125:
	li $t0, 4
	lw $t1, -284($fp)
	mul $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t0, -312($fp)
	lw $t1, -280($fp)
	add $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	lw $t1, 0($t0)
	sw $t1, -320($fp)
	li $t0, 0
	sw $t0, -324($fp)
	li $t0, 59133
	sw $t0, -328($fp)
	lw $t0, -236($fp)
	sw $t0, -332($fp)
	lw $t1, -328($fp)
	lw $t2, -332($fp)
	beq $t1, $t2, label127
	j label128
label127:
	li $t0, 1
	sw $t0, -324($fp)
label128:
	lw $t0, 8($fp)
	sw $t0, -336($fp)
	lw $t0, 4($fp)
	sw $t0, -340($fp)
	lw $t0, -336($fp)
	lw $t1, -340($fp)
	mul $t0, $t0, $t1
	sw $t0, -344($fp)
	addi $sp, $sp, -4
	lw $t0, -324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -344($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -348($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -36
	sw $t0, -352($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -372($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -392($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -412($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -432($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -452($fp)
	li $t0, 5
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
	addi $t0, $fp, -36
	sw $t0, -472($fp)
	li $t0, 6
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
	addi $t0, $fp, -36
	sw $t0, -492($fp)
	li $t0, 7
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
	lw $t0, -236($fp)
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -516($fp)
	li $t0, 57418
	sw $t0, -520($fp)
	lw $t1, -520($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label130
label129:
	li $t0, 1
	sw $t0, -516($fp)
label130:
	lw $ra, -4($fp)
	lw $v0, -516($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -992
	li $t0, 45682
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	li $t0, 8466
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
	li $t0, 18418
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
	li $t0, 11033
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
	li $t0, 9191
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
	li $t0, 60043
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
	li $t0, 26673
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
	li $t0, 56211
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
	li $t0, 62944
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
	lw $t0, -44($fp)
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
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
	addi $t0, $fp, -36
	sw $t0, -368($fp)
	li $t0, 6
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
	li $t0, 7
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
	li $t0, 4876
	sw $t0, -408($fp)
	lw $ra, -4($fp)
	lw $v0, -408($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label131:
	lw $t0, 8($fp)
	sw $t0, -412($fp)
	li $t0, 0
	sw $t0, -416($fp)
	lw $t0, 8($fp)
	sw $t0, -420($fp)
	lw $t1, -420($fp)
	li $t2, 0
	bne $t1, $t2, label138
	j label137
label138:
	lw $t0, -44($fp)
	sw $t0, -424($fp)
	lw $t1, -424($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label137
label137:
	lw $t0, 12($fp)
	sw $t0, -428($fp)
	lw $t1, -428($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label136
label135:
	li $t0, 1
	sw $t0, -416($fp)
label136:
	addi $sp, $sp, -4
	lw $t0, -412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -416($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -432($fp)
	addi $sp, $sp, 12
	lw $t1, -432($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label133
label134:
	lw $t0, -44($fp)
	sw $t0, -436($fp)
	lw $t1, -436($fp)
	li $t2, 0
	bne $t1, $t2, label132
	j label133
label132:
	li $t0, 0
	sw $t0, -440($fp)
	li $t0, 12061
	sw $t0, -444($fp)
	lw $t1, -444($fp)
	li $t2, 0
	bne $t1, $t2, label140
	j label139
label139:
	li $t0, 1
	sw $t0, -440($fp)
label140:
	addi $t0, $fp, -36
	sw $t0, -448($fp)
	li $t0, 6
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
	lw $t0, -440($fp)
	lw $t1, -464($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -468($fp)
	li $t0, 9512
	sw $t0, -472($fp)
	li $t0, 0
	sw $t0, -476($fp)
	lw $t0, 8($fp)
	sw $t0, -480($fp)
	lw $t1, -480($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label142
label143:
	lw $t0, 16($fp)
	sw $t0, -484($fp)
	lw $t1, -484($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label142
label141:
	li $t0, 1
	sw $t0, -476($fp)
label142:
	li $t0, 0
	sw $t0, -488($fp)
	lw $t0, 12($fp)
	sw $t0, -492($fp)
	lw $t1, -492($fp)
	li $t2, 0
	bne $t1, $t2, label145
	j label144
label144:
	li $t0, 1
	sw $t0, -488($fp)
label145:
	li $t0, 0
	sw $t0, -496($fp)
	lw $t0, 12($fp)
	sw $t0, -500($fp)
	lw $t1, -500($fp)
	li $t2, 0
	bne $t1, $t2, label146
	j label149
label149:
	lw $t0, -44($fp)
	sw $t0, -504($fp)
	lw $t1, -504($fp)
	li $t2, 0
	bne $t1, $t2, label146
	j label148
label148:
	li $t0, 26227
	sw $t0, -508($fp)
	lw $t1, -508($fp)
	li $t2, 0
	bne $t1, $t2, label146
	j label147
label146:
	li $t0, 1
	sw $t0, -496($fp)
label147:
	addi $sp, $sp, -4
	lw $t0, -472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -496($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -512($fp)
	addi $sp, $sp, 20
	lw $t0, -468($fp)
	lw $t1, -512($fp)
	sub $t0, $t0, $t1
	sw $t0, -516($fp)
	j label131
label133:
	lw $t0, -44($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -524($fp)
	li $t0, 0
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
	lw $t0, -540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -544($fp)
	li $t0, 1
	sw $t0, -548($fp)
	li $t0, 4
	lw $t1, -548($fp)
	mul $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	lw $t1, -544($fp)
	add $t0, $t0, $t1
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	lw $t1, 0($t0)
	sw $t1, -560($fp)
	lw $t0, -560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -564($fp)
	li $t0, 2
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
	lw $t0, -580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -584($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -604($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -624($fp)
	li $t0, 5
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
	addi $t0, $fp, -36
	sw $t0, -644($fp)
	li $t0, 6
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
	addi $t0, $fp, -36
	sw $t0, -664($fp)
	li $t0, 7
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
	lw $t0, -680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -684($fp)
	li $t0, 29256
	sw $t0, -688($fp)
	lw $t1, -688($fp)
	li $t2, 0
	bne $t1, $t2, label151
	j label150
label150:
	li $t0, 1
	sw $t0, -684($fp)
label151:
	li $t0, 0
	sw $t0, -692($fp)
	li $t0, 38495
	sw $t0, -696($fp)
	lw $t1, -696($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label152
label152:
	li $t0, 1
	sw $t0, -692($fp)
label153:
	lw $t0, -684($fp)
	lw $t1, -692($fp)
	mul $t0, $t0, $t1
	sw $t0, -700($fp)
	lw $t0, 12($fp)
	sw $t0, -704($fp)
	li $t0, 6236
	sw $t0, -708($fp)
	lw $t0, -704($fp)
	lw $t1, -708($fp)
	add $t0, $t0, $t1
	sw $t0, -712($fp)
	li $t0, 0
	sw $t0, -716($fp)
	lw $t0, -44($fp)
	sw $t0, -720($fp)
	lw $t1, -720($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label154
label154:
	li $t0, 1
	sw $t0, -716($fp)
label155:
	li $t0, 0
	sw $t0, -724($fp)
	li $t0, 44471
	sw $t0, -728($fp)
	li $t0, 0
	lw $t1, -728($fp)
	sub $t0, $t0, $t1
	sw $t0, -732($fp)
	lw $t1, -732($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label156
label156:
	li $t0, 1
	sw $t0, -724($fp)
label157:
	li $t0, 0
	sw $t0, -736($fp)
	li $t0, 33470
	sw $t0, -740($fp)
	lw $t1, -740($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label158
label158:
	li $t0, 1
	sw $t0, -736($fp)
label159:
	li $t0, 618
	sw $t0, -744($fp)
	lw $t0, -736($fp)
	lw $t1, -744($fp)
	mul $t0, $t0, $t1
	sw $t0, -748($fp)
	addi $sp, $sp, -4
	lw $t0, -712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -748($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -752($fp)
	addi $sp, $sp, 20
	lw $t0, -700($fp)
	lw $t1, -752($fp)
	add $t0, $t0, $t1
	sw $t0, -756($fp)
	li $t0, 0
	sw $t0, -760($fp)
	lw $t0, 4($fp)
	sw $t0, -764($fp)
	addi $t0, $fp, -36
	sw $t0, -768($fp)
	li $t0, 6
	sw $t0, -772($fp)
	li $t0, 4
	lw $t1, -772($fp)
	mul $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	lw $t1, -768($fp)
	add $t0, $t0, $t1
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	lw $t1, 0($t0)
	sw $t1, -784($fp)
	addi $sp, $sp, -4
	lw $t0, -764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -784($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -788($fp)
	addi $sp, $sp, 12
	lw $t1, -788($fp)
	li $t2, 0
	bne $t1, $t2, label161
	j label160
label160:
	li $t0, 1
	sw $t0, -760($fp)
label161:
	lw $t0, -756($fp)
	lw $t1, -760($fp)
	sub $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $ra, -4($fp)
	lw $v0, -792($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 33405
	sw $t0, -796($fp)
	addi $t0, $fp, -36
	sw $t0, -800($fp)
	li $t0, 0
	sw $t0, -804($fp)
	li $t0, 29263
	sw $t0, -808($fp)
	lw $t1, -808($fp)
	li $t2, 0
	bne $t1, $t2, label162
	j label164
label164:
	li $t0, 61736
	sw $t0, -812($fp)
	lw $t1, -812($fp)
	li $t2, 0
	bne $t1, $t2, label162
	j label163
label162:
	li $t0, 1
	sw $t0, -804($fp)
label163:
	li $t0, 4
	lw $t1, -804($fp)
	mul $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	lw $t1, -800($fp)
	add $t0, $t0, $t1
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	lw $t1, 0($t0)
	sw $t1, -824($fp)
	lw $t0, -796($fp)
	lw $t1, -824($fp)
	add $t0, $t0, $t1
	sw $t0, -828($fp)
	lw $t0, -44($fp)
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -836($fp)
	li $t0, 0
	sw $t0, -840($fp)
	li $t0, 4
	lw $t1, -840($fp)
	mul $t0, $t0, $t1
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	lw $t1, -836($fp)
	add $t0, $t0, $t1
	sw $t0, -848($fp)
	lw $t0, -848($fp)
	lw $t1, 0($t0)
	sw $t1, -852($fp)
	lw $t0, -852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -856($fp)
	li $t0, 1
	sw $t0, -860($fp)
	li $t0, 4
	lw $t1, -860($fp)
	mul $t0, $t0, $t1
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	lw $t1, -856($fp)
	add $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	lw $t1, 0($t0)
	sw $t1, -872($fp)
	lw $t0, -872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -876($fp)
	li $t0, 2
	sw $t0, -880($fp)
	li $t0, 4
	lw $t1, -880($fp)
	mul $t0, $t0, $t1
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	lw $t1, -876($fp)
	add $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	lw $t1, 0($t0)
	sw $t1, -892($fp)
	lw $t0, -892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -896($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -916($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -936($fp)
	li $t0, 5
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
	lw $t0, -952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -956($fp)
	li $t0, 6
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
	addi $t0, $fp, -36
	sw $t0, -976($fp)
	li $t0, 7
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
	li $t0, 1216
	sw $t0, -996($fp)
	lw $ra, -4($fp)
	lw $v0, -996($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -12720
	li $t0, 5014
	sw $t0, -260($fp)
	addi $t0, $fp, -36
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
	li $t0, 51853
	sw $t0, -284($fp)
	addi $t0, $fp, -36
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
	li $t0, 60349
	sw $t0, -308($fp)
	addi $t0, $fp, -36
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
	li $t0, 62433
	sw $t0, -332($fp)
	addi $t0, $fp, -36
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
	li $t0, 31999
	sw $t0, -356($fp)
	addi $t0, $fp, -36
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
	li $t0, 3280
	sw $t0, -380($fp)
	addi $t0, $fp, -36
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
	li $t0, 15315
	sw $t0, -404($fp)
	addi $t0, $fp, -36
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
	li $t0, 43032
	sw $t0, -428($fp)
	addi $t0, $fp, -36
	sw $t0, -432($fp)
	li $t0, 7
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
	li $t0, 12471
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	li $t0, 9823
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	li $t0, 4169
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	li $t0, 3146
	sw $t0, -488($fp)
	addi $t0, $fp, -52
	sw $t0, -492($fp)
	li $t0, 0
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
	li $t0, 7231
	sw $t0, -512($fp)
	addi $t0, $fp, -52
	sw $t0, -516($fp)
	li $t0, 1
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
	li $t0, 9045
	sw $t0, -536($fp)
	addi $t0, $fp, -52
	sw $t0, -540($fp)
	li $t0, 2
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
	li $t0, 15208
	sw $t0, -560($fp)
	addi $t0, $fp, -52
	sw $t0, -564($fp)
	li $t0, 3
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
	li $t0, 683
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	li $t0, 20995
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	li $t0, 41435
	sw $t0, -608($fp)
	addi $t0, $fp, -64
	sw $t0, -612($fp)
	li $t0, 0
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
	li $t0, 10196
	sw $t0, -632($fp)
	addi $t0, $fp, -64
	sw $t0, -636($fp)
	li $t0, 1
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -644($fp)
	lw $t0, -636($fp)
	lw $t1, -644($fp)
	add $t0, $t0, $t1
	sw $t0, -648($fp)
	lw $t0, -632($fp)
	lw $t1, -648($fp)
	sw $t0, 0($t1)
	lw $t0, -648($fp)
	lw $t1, 0($t0)
	sw $t1, -652($fp)
	li $t0, 50251
	sw $t0, -656($fp)
	addi $t0, $fp, -64
	sw $t0, -660($fp)
	li $t0, 2
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -668($fp)
	lw $t0, -660($fp)
	lw $t1, -668($fp)
	add $t0, $t0, $t1
	sw $t0, -672($fp)
	lw $t0, -656($fp)
	lw $t1, -672($fp)
	sw $t0, 0($t1)
	lw $t0, -672($fp)
	lw $t1, 0($t0)
	sw $t1, -676($fp)
	li $t0, 14394
	sw $t0, -680($fp)
	addi $t0, $fp, -100
	sw $t0, -684($fp)
	li $t0, 0
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -692($fp)
	lw $t0, -684($fp)
	lw $t1, -692($fp)
	add $t0, $t0, $t1
	sw $t0, -696($fp)
	lw $t0, -680($fp)
	lw $t1, -696($fp)
	sw $t0, 0($t1)
	lw $t0, -696($fp)
	lw $t1, 0($t0)
	sw $t1, -700($fp)
	li $t0, 43666
	sw $t0, -704($fp)
	addi $t0, $fp, -100
	sw $t0, -708($fp)
	li $t0, 1
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -716($fp)
	lw $t0, -708($fp)
	lw $t1, -716($fp)
	add $t0, $t0, $t1
	sw $t0, -720($fp)
	lw $t0, -704($fp)
	lw $t1, -720($fp)
	sw $t0, 0($t1)
	lw $t0, -720($fp)
	lw $t1, 0($t0)
	sw $t1, -724($fp)
	li $t0, 50870
	sw $t0, -728($fp)
	addi $t0, $fp, -100
	sw $t0, -732($fp)
	li $t0, 2
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
	li $t0, 58866
	sw $t0, -752($fp)
	addi $t0, $fp, -100
	sw $t0, -756($fp)
	li $t0, 3
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
	li $t0, 49902
	sw $t0, -776($fp)
	addi $t0, $fp, -100
	sw $t0, -780($fp)
	li $t0, 4
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
	li $t0, 20471
	sw $t0, -800($fp)
	addi $t0, $fp, -100
	sw $t0, -804($fp)
	li $t0, 5
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t0, -804($fp)
	lw $t1, -812($fp)
	add $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t0, -800($fp)
	lw $t1, -816($fp)
	sw $t0, 0($t1)
	lw $t0, -816($fp)
	lw $t1, 0($t0)
	sw $t1, -820($fp)
	li $t0, 37464
	sw $t0, -824($fp)
	addi $t0, $fp, -100
	sw $t0, -828($fp)
	li $t0, 6
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
	li $t0, 17771
	sw $t0, -848($fp)
	addi $t0, $fp, -100
	sw $t0, -852($fp)
	li $t0, 7
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
	li $t0, 49734
	sw $t0, -872($fp)
	addi $t0, $fp, -100
	sw $t0, -876($fp)
	li $t0, 8
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
	li $t0, 33664
	sw $t0, -896($fp)
	lw $t0, -896($fp)
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -904($fp)
	li $t0, 18987
	sw $t0, -908($fp)
	lw $t0, -908($fp)
	sw $t0, -912($fp)
	lw $t0, -912($fp)
	sw $t0, -916($fp)
	li $t0, 54748
	sw $t0, -920($fp)
	lw $t0, -920($fp)
	sw $t0, -924($fp)
	lw $t0, -924($fp)
	sw $t0, -928($fp)
	li $t0, 19981
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -940($fp)
	li $t0, 13801
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	sw $t0, -952($fp)
	li $t0, 51645
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	sw $t0, -964($fp)
	li $t0, 51980
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -976($fp)
	li $t0, 17081
	sw $t0, -980($fp)
	lw $t0, -980($fp)
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	sw $t0, -988($fp)
	li $t0, 1425
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -1000($fp)
	li $t0, 29476
	sw $t0, -1004($fp)
	addi $t0, $fp, -132
	sw $t0, -1008($fp)
	li $t0, 0
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
	li $t0, 29552
	sw $t0, -1028($fp)
	addi $t0, $fp, -132
	sw $t0, -1032($fp)
	li $t0, 1
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
	li $t0, 11248
	sw $t0, -1052($fp)
	addi $t0, $fp, -132
	sw $t0, -1056($fp)
	li $t0, 2
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
	li $t0, 33645
	sw $t0, -1076($fp)
	addi $t0, $fp, -132
	sw $t0, -1080($fp)
	li $t0, 3
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
	li $t0, 32699
	sw $t0, -1100($fp)
	addi $t0, $fp, -132
	sw $t0, -1104($fp)
	li $t0, 4
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
	li $t0, 18479
	sw $t0, -1124($fp)
	addi $t0, $fp, -132
	sw $t0, -1128($fp)
	li $t0, 5
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
	li $t0, 42690
	sw $t0, -1148($fp)
	addi $t0, $fp, -132
	sw $t0, -1152($fp)
	li $t0, 6
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
	li $t0, 47907
	sw $t0, -1172($fp)
	addi $t0, $fp, -132
	sw $t0, -1176($fp)
	li $t0, 7
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
	li $t0, 19162
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	sw $t0, -1204($fp)
	li $t0, 63685
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, -1216($fp)
	li $t0, 23806
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	sw $t0, -1228($fp)
	li $t0, 29358
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	sw $t0, -1240($fp)
	li $t0, 48400
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -1252($fp)
	li $t0, 38201
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -1264($fp)
	li $t0, 7489
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	li $t0, 33734
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	li $t0, 31531
	sw $t0, -1292($fp)
	addi $t0, $fp, -164
	sw $t0, -1296($fp)
	li $t0, 0
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1304($fp)
	lw $t0, -1296($fp)
	lw $t1, -1304($fp)
	add $t0, $t0, $t1
	sw $t0, -1308($fp)
	lw $t0, -1292($fp)
	lw $t1, -1308($fp)
	sw $t0, 0($t1)
	lw $t0, -1308($fp)
	lw $t1, 0($t0)
	sw $t1, -1312($fp)
	li $t0, 57391
	sw $t0, -1316($fp)
	addi $t0, $fp, -164
	sw $t0, -1320($fp)
	li $t0, 1
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1328($fp)
	lw $t0, -1320($fp)
	lw $t1, -1328($fp)
	add $t0, $t0, $t1
	sw $t0, -1332($fp)
	lw $t0, -1316($fp)
	lw $t1, -1332($fp)
	sw $t0, 0($t1)
	lw $t0, -1332($fp)
	lw $t1, 0($t0)
	sw $t1, -1336($fp)
	li $t0, 54205
	sw $t0, -1340($fp)
	addi $t0, $fp, -164
	sw $t0, -1344($fp)
	li $t0, 2
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1352($fp)
	lw $t0, -1344($fp)
	lw $t1, -1352($fp)
	add $t0, $t0, $t1
	sw $t0, -1356($fp)
	lw $t0, -1340($fp)
	lw $t1, -1356($fp)
	sw $t0, 0($t1)
	lw $t0, -1356($fp)
	lw $t1, 0($t0)
	sw $t1, -1360($fp)
	li $t0, 3459
	sw $t0, -1364($fp)
	addi $t0, $fp, -164
	sw $t0, -1368($fp)
	li $t0, 3
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1376($fp)
	lw $t0, -1368($fp)
	lw $t1, -1376($fp)
	add $t0, $t0, $t1
	sw $t0, -1380($fp)
	lw $t0, -1364($fp)
	lw $t1, -1380($fp)
	sw $t0, 0($t1)
	lw $t0, -1380($fp)
	lw $t1, 0($t0)
	sw $t1, -1384($fp)
	li $t0, 9627
	sw $t0, -1388($fp)
	addi $t0, $fp, -164
	sw $t0, -1392($fp)
	li $t0, 4
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1400($fp)
	lw $t0, -1392($fp)
	lw $t1, -1400($fp)
	add $t0, $t0, $t1
	sw $t0, -1404($fp)
	lw $t0, -1388($fp)
	lw $t1, -1404($fp)
	sw $t0, 0($t1)
	lw $t0, -1404($fp)
	lw $t1, 0($t0)
	sw $t1, -1408($fp)
	li $t0, 38403
	sw $t0, -1412($fp)
	addi $t0, $fp, -164
	sw $t0, -1416($fp)
	li $t0, 5
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1424($fp)
	lw $t0, -1416($fp)
	lw $t1, -1424($fp)
	add $t0, $t0, $t1
	sw $t0, -1428($fp)
	lw $t0, -1412($fp)
	lw $t1, -1428($fp)
	sw $t0, 0($t1)
	lw $t0, -1428($fp)
	lw $t1, 0($t0)
	sw $t1, -1432($fp)
	li $t0, 37123
	sw $t0, -1436($fp)
	addi $t0, $fp, -164
	sw $t0, -1440($fp)
	li $t0, 6
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
	li $t0, 28614
	sw $t0, -1460($fp)
	addi $t0, $fp, -164
	sw $t0, -1464($fp)
	li $t0, 7
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
	li $t0, 27616
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	sw $t0, -1488($fp)
	lw $t0, -1488($fp)
	sw $t0, -1492($fp)
	li $t0, 57104
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	sw $t0, -1504($fp)
	li $t0, 42415
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	sw $t0, -1516($fp)
	li $t0, 13725
	sw $t0, -1520($fp)
	lw $t0, -1520($fp)
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	sw $t0, -1528($fp)
	li $t0, 43548
	sw $t0, -1532($fp)
	addi $t0, $fp, -176
	sw $t0, -1536($fp)
	li $t0, 0
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
	li $t0, 59496
	sw $t0, -1556($fp)
	addi $t0, $fp, -176
	sw $t0, -1560($fp)
	li $t0, 1
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
	li $t0, 15150
	sw $t0, -1580($fp)
	addi $t0, $fp, -176
	sw $t0, -1584($fp)
	li $t0, 2
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
	li $t0, 7488
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	sw $t0, -1612($fp)
	li $t0, 23513
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	sw $t0, -1624($fp)
	li $t0, 26398
	sw $t0, -1628($fp)
	addi $t0, $fp, -192
	sw $t0, -1632($fp)
	li $t0, 0
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
	li $t0, 41133
	sw $t0, -1652($fp)
	addi $t0, $fp, -192
	sw $t0, -1656($fp)
	li $t0, 1
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t0, -1656($fp)
	lw $t1, -1664($fp)
	add $t0, $t0, $t1
	sw $t0, -1668($fp)
	lw $t0, -1652($fp)
	lw $t1, -1668($fp)
	sw $t0, 0($t1)
	lw $t0, -1668($fp)
	lw $t1, 0($t0)
	sw $t1, -1672($fp)
	li $t0, 56212
	sw $t0, -1676($fp)
	addi $t0, $fp, -192
	sw $t0, -1680($fp)
	li $t0, 2
	sw $t0, -1684($fp)
	lw $t0, -1684($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t0, -1680($fp)
	lw $t1, -1688($fp)
	add $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $t0, -1676($fp)
	lw $t1, -1692($fp)
	sw $t0, 0($t1)
	lw $t0, -1692($fp)
	lw $t1, 0($t0)
	sw $t1, -1696($fp)
	li $t0, 44877
	sw $t0, -1700($fp)
	addi $t0, $fp, -192
	sw $t0, -1704($fp)
	li $t0, 3
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1712($fp)
	lw $t0, -1704($fp)
	lw $t1, -1712($fp)
	add $t0, $t0, $t1
	sw $t0, -1716($fp)
	lw $t0, -1700($fp)
	lw $t1, -1716($fp)
	sw $t0, 0($t1)
	lw $t0, -1716($fp)
	lw $t1, 0($t0)
	sw $t1, -1720($fp)
	li $t0, 18287
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	sw $t0, -1732($fp)
	li $t0, 38583
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -1744($fp)
	li $t0, 64040
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	sw $t0, -1756($fp)
	li $t0, 16436
	sw $t0, -1760($fp)
	lw $t0, -1760($fp)
	sw $t0, -1764($fp)
	lw $t0, -1764($fp)
	sw $t0, -1768($fp)
	li $t0, 62389
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	sw $t0, -1780($fp)
	li $t0, 27862
	sw $t0, -1784($fp)
	addi $t0, $fp, -224
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
	li $t0, 64836
	sw $t0, -1808($fp)
	addi $t0, $fp, -224
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
	li $t0, 35054
	sw $t0, -1832($fp)
	addi $t0, $fp, -224
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
	li $t0, 35351
	sw $t0, -1856($fp)
	addi $t0, $fp, -224
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
	li $t0, 33035
	sw $t0, -1880($fp)
	addi $t0, $fp, -224
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
	li $t0, 1049
	sw $t0, -1904($fp)
	addi $t0, $fp, -224
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
	li $t0, 27207
	sw $t0, -1928($fp)
	addi $t0, $fp, -224
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
	li $t0, 21704
	sw $t0, -1952($fp)
	addi $t0, $fp, -224
	sw $t0, -1956($fp)
	li $t0, 7
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1964($fp)
	lw $t0, -1956($fp)
	lw $t1, -1964($fp)
	add $t0, $t0, $t1
	sw $t0, -1968($fp)
	lw $t0, -1952($fp)
	lw $t1, -1968($fp)
	sw $t0, 0($t1)
	lw $t0, -1968($fp)
	lw $t1, 0($t0)
	sw $t1, -1972($fp)
	li $t0, 4508
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	sw $t0, -1984($fp)
	li $t0, 36834
	sw $t0, -1988($fp)
	lw $t0, -1988($fp)
	sw $t0, -1992($fp)
	lw $t0, -1992($fp)
	sw $t0, -1996($fp)
	li $t0, 60108
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	sw $t0, -2008($fp)
	li $t0, 41631
	sw $t0, -2012($fp)
	addi $t0, $fp, -252
	sw $t0, -2016($fp)
	li $t0, 0
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
	li $t0, 65448
	sw $t0, -2036($fp)
	addi $t0, $fp, -252
	sw $t0, -2040($fp)
	li $t0, 1
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
	li $t0, 22188
	sw $t0, -2060($fp)
	addi $t0, $fp, -252
	sw $t0, -2064($fp)
	li $t0, 2
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
	li $t0, 33199
	sw $t0, -2084($fp)
	addi $t0, $fp, -252
	sw $t0, -2088($fp)
	li $t0, 3
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
	li $t0, 42328
	sw $t0, -2108($fp)
	addi $t0, $fp, -252
	sw $t0, -2112($fp)
	li $t0, 4
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
	li $t0, 35913
	sw $t0, -2132($fp)
	addi $t0, $fp, -252
	sw $t0, -2136($fp)
	li $t0, 5
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2144($fp)
	lw $t0, -2136($fp)
	lw $t1, -2144($fp)
	add $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t0, -2132($fp)
	lw $t1, -2148($fp)
	sw $t0, 0($t1)
	lw $t0, -2148($fp)
	lw $t1, 0($t0)
	sw $t1, -2152($fp)
	li $t0, 11211
	sw $t0, -2156($fp)
	addi $t0, $fp, -252
	sw $t0, -2160($fp)
	li $t0, 6
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2168($fp)
	lw $t0, -2160($fp)
	lw $t1, -2168($fp)
	add $t0, $t0, $t1
	sw $t0, -2172($fp)
	lw $t0, -2156($fp)
	lw $t1, -2172($fp)
	sw $t0, 0($t1)
	lw $t0, -2172($fp)
	lw $t1, 0($t0)
	sw $t1, -2176($fp)
	li $t0, 36288
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	sw $t0, -2188($fp)
	li $t0, 51064
	sw $t0, -2192($fp)
	lw $t0, -2192($fp)
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	sw $t0, -2200($fp)
	li $t0, 18699
	sw $t0, -2204($fp)
	lw $t0, -2204($fp)
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	sw $t0, -2212($fp)
	li $t0, 59801
	sw $t0, -2216($fp)
	lw $t0, -2216($fp)
	sw $t0, -2220($fp)
	lw $t0, -2220($fp)
	sw $t0, -2224($fp)
	li $t0, 11926
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
	li $t0, 59832
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	sw $t0, -2260($fp)
	li $t0, 50477
	sw $t0, -2264($fp)
	lw $t0, -2264($fp)
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	sw $t0, -2272($fp)
	li $t0, 56804
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	sw $t0, -2284($fp)
	li $t0, 12583
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	sw $t0, -2296($fp)
	li $t0, 23524
	sw $t0, -2300($fp)
	lw $t0, -2300($fp)
	sw $t0, -2304($fp)
	lw $t0, -2304($fp)
	sw $t0, -2308($fp)
	li $t0, 55308
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	sw $t0, -2320($fp)
	li $t0, 29019
	sw $t0, -2324($fp)
	lw $t0, -2324($fp)
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	sw $t0, -2332($fp)
	li $t0, 20378
	sw $t0, -2336($fp)
	lw $t0, -2336($fp)
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	sw $t0, -2344($fp)
	li $t0, 17634
	sw $t0, -2348($fp)
	lw $t0, -2348($fp)
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	sw $t0, -2356($fp)
	li $t0, 28320
	sw $t0, -2360($fp)
	lw $t0, -2360($fp)
	sw $t0, -2364($fp)
	lw $t0, -2364($fp)
	sw $t0, -2368($fp)
	li $t0, 55432
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	sw $t0, -2376($fp)
	lw $t0, -2376($fp)
	sw $t0, -2380($fp)
	li $t0, 52986
	sw $t0, -2384($fp)
	lw $t0, -2384($fp)
	sw $t0, -2388($fp)
	lw $t0, -2388($fp)
	sw $t0, -2392($fp)
	li $t0, 61355
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	sw $t0, -2404($fp)
label165:
	li $t0, 0
	sw $t0, -2408($fp)
	addi $t0, $fp, -100
	sw $t0, -2412($fp)
	li $t0, 7
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
	li $t0, 17523
	sw $t0, -2432($fp)
	lw $t1, -2428($fp)
	lw $t2, -2432($fp)
	bge $t1, $t2, label169
	j label170
label169:
	li $t0, 1
	sw $t0, -2408($fp)
label170:
	lw $t0, -480($fp)
	sw $t0, -2436($fp)
	addi $sp, $sp, -4
	lw $t0, -2408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2436($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2440($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -52
	sw $t0, -2444($fp)
	li $t0, 3
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
	div $t0, $t1
	mflo $t2
	sw $t2, -2464($fp)
	li $t0, 0
	sw $t0, -2468($fp)
	lw $t0, -2316($fp)
	sw $t0, -2472($fp)
	lw $t1, -2472($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label172
label171:
	li $t0, 1
	sw $t0, -2468($fp)
label172:
	lw $t1, -2464($fp)
	lw $t2, -2468($fp)
	beq $t1, $t2, label168
	j label167
label168:
	li $t0, 12095
	sw $t0, -2476($fp)
	lw $t1, -2476($fp)
	li $t2, 0
	bne $t1, $t2, label166
	j label167
label166:
	li $t0, 37086
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	sw $t0, -2484($fp)
	lw $t0, -2484($fp)
	sw $t0, -2488($fp)
	lw $t0, -2484($fp)
	sw $t0, -2492($fp)
	lw $t0, -2492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -900($fp)
	sw $t0, -2496($fp)
	lw $ra, -4($fp)
	lw $v0, -2496($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label173:
	lw $t0, -2364($fp)
	sw $t0, -2500($fp)
	addi $t0, $fp, -192
	sw $t0, -2504($fp)
	lw $t0, -600($fp)
	sw $t0, -2508($fp)
	li $t0, 4
	lw $t1, -2508($fp)
	mul $t0, $t0, $t1
	sw $t0, -2512($fp)
	lw $t0, -2512($fp)
	lw $t1, -2504($fp)
	add $t0, $t0, $t1
	sw $t0, -2516($fp)
	lw $t0, -2516($fp)
	lw $t1, 0($t0)
	sw $t1, -2520($fp)
	lw $t0, -2500($fp)
	lw $t1, -2520($fp)
	mul $t0, $t0, $t1
	sw $t0, -2524($fp)
	li $t0, 0
	sw $t0, -2528($fp)
	lw $t0, -1764($fp)
	sw $t0, -2532($fp)
	lw $t1, -2532($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label176
label176:
	li $t0, 1
	sw $t0, -2528($fp)
label177:
	lw $t0, -1740($fp)
	sw $t0, -2536($fp)
	lw $t0, -2528($fp)
	lw $t1, -2536($fp)
	add $t0, $t0, $t1
	sw $t0, -2540($fp)
	li $t0, 0
	sw $t0, -2544($fp)
	li $t0, 4749
	sw $t0, -2548($fp)
	li $t0, 28195
	sw $t0, -2552($fp)
	lw $t0, -2548($fp)
	lw $t1, -2552($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2556($fp)
	li $t0, 4661
	sw $t0, -2560($fp)
	lw $t1, -2556($fp)
	lw $t2, -2560($fp)
	bne $t1, $t2, label178
	j label179
label178:
	li $t0, 1
	sw $t0, -2544($fp)
label179:
	li $t0, 34283
	sw $t0, -2564($fp)
	li $t0, 0
	lw $t1, -2564($fp)
	sub $t0, $t0, $t1
	sw $t0, -2568($fp)
	li $t0, 51403
	sw $t0, -2572($fp)
	addi $sp, $sp, -4
	lw $t0, -2540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2572($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2576($fp)
	addi $sp, $sp, 20
	lw $t0, -2524($fp)
	lw $t1, -2576($fp)
	add $t0, $t0, $t1
	sw $t0, -2580($fp)
	lw $t1, -2580($fp)
	li $t2, 0
	bne $t1, $t2, label174
	j label175
label174:
label180:
	li $t0, 15961
	sw $t0, -2584($fp)
	li $t0, 0
	lw $t1, -2584($fp)
	sub $t0, $t0, $t1
	sw $t0, -2588($fp)
	li $t0, 0
	lw $t1, -2588($fp)
	sub $t0, $t0, $t1
	sw $t0, -2592($fp)
	li $t0, 0
	lw $t1, -2592($fp)
	sub $t0, $t0, $t1
	sw $t0, -2596($fp)
	li $t0, 0
	lw $t1, -2596($fp)
	sub $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $t1, -2600($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label182
label183:
	li $t0, 64484
	sw $t0, -2604($fp)
	lw $t1, -2604($fp)
	li $t2, 0
	bne $t1, $t2, label182
	j label181
label181:
	lw $t0, 8($fp)
	sw $t0, -2608($fp)
	lw $ra, -4($fp)
	lw $v0, -2608($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label180
label182:
	j label173
label175:
	lw $t0, -2484($fp)
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2616($fp)
	li $t0, 0
	sw $t0, -2620($fp)
	li $t0, 55725
	sw $t0, -2624($fp)
	lw $t0, -936($fp)
	sw $t0, -2628($fp)
	lw $t1, -2624($fp)
	lw $t2, -2628($fp)
	ble $t1, $t2, label189
	j label190
label189:
	li $t0, 1
	sw $t0, -2620($fp)
label190:
	lw $t0, -480($fp)
	sw $t0, -2632($fp)
	lw $t1, -2620($fp)
	lw $t2, -2632($fp)
	blt $t1, $t2, label188
	j label187
label188:
	lw $t0, 16($fp)
	sw $t0, -2636($fp)
	lw $t0, -468($fp)
	sw $t0, -2640($fp)
	lw $t0, -2636($fp)
	lw $t1, -2640($fp)
	sub $t0, $t0, $t1
	sw $t0, -2644($fp)
	lw $t1, -2644($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label187
label187:
	lw $t0, -2484($fp)
	sw $t0, -2648($fp)
	li $t0, 34660
	sw $t0, -2652($fp)
	lw $t0, -2648($fp)
	lw $t1, -2652($fp)
	mul $t0, $t0, $t1
	sw $t0, -2656($fp)
	lw $t0, -912($fp)
	sw $t0, -2660($fp)
	lw $t0, -2656($fp)
	lw $t1, -2660($fp)
	sub $t0, $t0, $t1
	sw $t0, -2664($fp)
	lw $t1, -2664($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label186
label186:
	lw $t0, -972($fp)
	sw $t0, -2668($fp)
	li $t0, 0
	lw $t1, -2668($fp)
	sub $t0, $t0, $t1
	sw $t0, -2672($fp)
	lw $t1, -2672($fp)
	li $t2, 0
	bne $t1, $t2, label184
	j label185
label184:
	li $t0, 1
	sw $t0, -2616($fp)
label185:
	lw $ra, -4($fp)
	lw $v0, -2616($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label165
label167:
	li $t0, 58749
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	sw $t0, -2732($fp)
	lw $t0, -2732($fp)
	sw $t0, -2736($fp)
	li $t0, 2115
	sw $t0, -2740($fp)
	addi $t0, $fp, -2688
	sw $t0, -2744($fp)
	li $t0, 0
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
	li $t0, 28957
	sw $t0, -2764($fp)
	addi $t0, $fp, -2688
	sw $t0, -2768($fp)
	li $t0, 1
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
	li $t0, 43691
	sw $t0, -2788($fp)
	addi $t0, $fp, -2688
	sw $t0, -2792($fp)
	li $t0, 2
	sw $t0, -2796($fp)
	lw $t0, -2796($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2800($fp)
	lw $t0, -2792($fp)
	lw $t1, -2800($fp)
	add $t0, $t0, $t1
	sw $t0, -2804($fp)
	lw $t0, -2788($fp)
	lw $t1, -2804($fp)
	sw $t0, 0($t1)
	lw $t0, -2804($fp)
	lw $t1, 0($t0)
	sw $t1, -2808($fp)
	li $t0, 58919
	sw $t0, -2812($fp)
	addi $t0, $fp, -2688
	sw $t0, -2816($fp)
	li $t0, 3
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
	li $t0, 41540
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	sw $t0, -2840($fp)
	lw $t0, -2840($fp)
	sw $t0, -2844($fp)
	li $t0, 1679
	sw $t0, -2848($fp)
	addi $t0, $fp, -2716
	sw $t0, -2852($fp)
	li $t0, 0
	sw $t0, -2856($fp)
	lw $t0, -2856($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $t0, -2852($fp)
	lw $t1, -2860($fp)
	add $t0, $t0, $t1
	sw $t0, -2864($fp)
	lw $t0, -2848($fp)
	lw $t1, -2864($fp)
	sw $t0, 0($t1)
	lw $t0, -2864($fp)
	lw $t1, 0($t0)
	sw $t1, -2868($fp)
	li $t0, 48691
	sw $t0, -2872($fp)
	addi $t0, $fp, -2716
	sw $t0, -2876($fp)
	li $t0, 1
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2884($fp)
	lw $t0, -2876($fp)
	lw $t1, -2884($fp)
	add $t0, $t0, $t1
	sw $t0, -2888($fp)
	lw $t0, -2872($fp)
	lw $t1, -2888($fp)
	sw $t0, 0($t1)
	lw $t0, -2888($fp)
	lw $t1, 0($t0)
	sw $t1, -2892($fp)
	li $t0, 5024
	sw $t0, -2896($fp)
	addi $t0, $fp, -2716
	sw $t0, -2900($fp)
	li $t0, 2
	sw $t0, -2904($fp)
	lw $t0, -2904($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2908($fp)
	lw $t0, -2900($fp)
	lw $t1, -2908($fp)
	add $t0, $t0, $t1
	sw $t0, -2912($fp)
	lw $t0, -2896($fp)
	lw $t1, -2912($fp)
	sw $t0, 0($t1)
	lw $t0, -2912($fp)
	lw $t1, 0($t0)
	sw $t1, -2916($fp)
	li $t0, 22057
	sw $t0, -2920($fp)
	addi $t0, $fp, -2716
	sw $t0, -2924($fp)
	li $t0, 3
	sw $t0, -2928($fp)
	lw $t0, -2928($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2932($fp)
	lw $t0, -2924($fp)
	lw $t1, -2932($fp)
	add $t0, $t0, $t1
	sw $t0, -2936($fp)
	lw $t0, -2920($fp)
	lw $t1, -2936($fp)
	sw $t0, 0($t1)
	lw $t0, -2936($fp)
	lw $t1, 0($t0)
	sw $t1, -2940($fp)
	li $t0, 790
	sw $t0, -2944($fp)
	addi $t0, $fp, -2716
	sw $t0, -2948($fp)
	li $t0, 4
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2956($fp)
	lw $t0, -2948($fp)
	lw $t1, -2956($fp)
	add $t0, $t0, $t1
	sw $t0, -2960($fp)
	lw $t0, -2944($fp)
	lw $t1, -2960($fp)
	sw $t0, 0($t1)
	lw $t0, -2960($fp)
	lw $t1, 0($t0)
	sw $t1, -2964($fp)
	li $t0, 33344
	sw $t0, -2968($fp)
	addi $t0, $fp, -2716
	sw $t0, -2972($fp)
	li $t0, 5
	sw $t0, -2976($fp)
	lw $t0, -2976($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2980($fp)
	lw $t0, -2972($fp)
	lw $t1, -2980($fp)
	add $t0, $t0, $t1
	sw $t0, -2984($fp)
	lw $t0, -2968($fp)
	lw $t1, -2984($fp)
	sw $t0, 0($t1)
	lw $t0, -2984($fp)
	lw $t1, 0($t0)
	sw $t1, -2988($fp)
	li $t0, 11954
	sw $t0, -2992($fp)
	addi $t0, $fp, -2716
	sw $t0, -2996($fp)
	li $t0, 6
	sw $t0, -3000($fp)
	lw $t0, -3000($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3004($fp)
	lw $t0, -2996($fp)
	lw $t1, -3004($fp)
	add $t0, $t0, $t1
	sw $t0, -3008($fp)
	lw $t0, -2992($fp)
	lw $t1, -3008($fp)
	sw $t0, 0($t1)
	lw $t0, -3008($fp)
	lw $t1, 0($t0)
	sw $t1, -3012($fp)
	li $t0, 53776
	sw $t0, -3016($fp)
	addi $t0, $fp, -2724
	sw $t0, -3020($fp)
	li $t0, 0
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3028($fp)
	lw $t0, -3020($fp)
	lw $t1, -3028($fp)
	add $t0, $t0, $t1
	sw $t0, -3032($fp)
	lw $t0, -3016($fp)
	lw $t1, -3032($fp)
	sw $t0, 0($t1)
	lw $t0, -3032($fp)
	lw $t1, 0($t0)
	sw $t1, -3036($fp)
	li $t0, 29163
	sw $t0, -3040($fp)
	addi $t0, $fp, -2724
	sw $t0, -3044($fp)
	li $t0, 1
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3052($fp)
	lw $t0, -3044($fp)
	lw $t1, -3052($fp)
	add $t0, $t0, $t1
	sw $t0, -3056($fp)
	lw $t0, -3040($fp)
	lw $t1, -3056($fp)
	sw $t0, 0($t1)
	lw $t0, -3056($fp)
	lw $t1, 0($t0)
	sw $t1, -3060($fp)
	li $t0, 2900
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	sw $t0, -3072($fp)
	li $t0, 2897
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	sw $t0, -3084($fp)
	li $t0, 46686
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	sw $t0, -3092($fp)
	lw $t0, -3092($fp)
	sw $t0, -3096($fp)
	li $t0, 0
	sw $t0, -3100($fp)
	li $t0, 63890
	sw $t0, -3104($fp)
	li $t0, 54388
	sw $t0, -3108($fp)
	lw $t0, 8($fp)
	sw $t0, -3112($fp)
	lw $t0, -3108($fp)
	lw $t1, -3112($fp)
	mul $t0, $t0, $t1
	sw $t0, -3116($fp)
	lw $t0, -3104($fp)
	lw $t1, -3116($fp)
	add $t0, $t0, $t1
	sw $t0, -3120($fp)
	addi $t0, $fp, -2716
	sw $t0, -3124($fp)
	lw $t0, -456($fp)
	sw $t0, -3128($fp)
	li $t0, 27529
	sw $t0, -3132($fp)
	lw $t0, -3128($fp)
	lw $t1, -3132($fp)
	mul $t0, $t0, $t1
	sw $t0, -3136($fp)
	lw $t0, -3092($fp)
	sw $t0, -3140($fp)
	lw $t0, -3136($fp)
	lw $t1, -3140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3144($fp)
	addi $t0, $fp, -164
	sw $t0, -3148($fp)
	li $t0, 7
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
	lw $t0, -2004($fp)
	sw $t0, -3168($fp)
	lw $t0, -3164($fp)
	lw $t1, -3168($fp)
	add $t0, $t0, $t1
	sw $t0, -3172($fp)
	li $t0, 0
	sw $t0, -3176($fp)
	lw $t0, -2292($fp)
	sw $t0, -3180($fp)
	lw $t1, -3180($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label194
label196:
	li $t0, 58782
	sw $t0, -3184($fp)
	lw $t1, -3184($fp)
	li $t2, 0
	bne $t1, $t2, label195
	j label194
label195:
	lw $t0, -2304($fp)
	sw $t0, -3188($fp)
	lw $t1, -3188($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -3176($fp)
label194:
	addi $t0, $fp, -36
	sw $t0, -3192($fp)
	lw $t0, -2280($fp)
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
	addi $sp, $sp, -4
	lw $t0, -3144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3208($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3212($fp)
	addi $sp, $sp, 20
	li $t0, 4
	lw $t1, -3212($fp)
	mul $t0, $t0, $t1
	sw $t0, -3216($fp)
	lw $t0, -3216($fp)
	lw $t1, -3124($fp)
	add $t0, $t0, $t1
	sw $t0, -3220($fp)
	lw $t0, -3220($fp)
	lw $t1, 0($t0)
	sw $t1, -3224($fp)
	lw $t1, -3120($fp)
	lw $t2, -3224($fp)
	bge $t1, $t2, label191
	j label192
label191:
	li $t0, 1
	sw $t0, -3100($fp)
label192:
	li $t0, 0
	sw $t0, -3228($fp)
	li $t0, 22379
	sw $t0, -3232($fp)
	lw $t1, -3232($fp)
	li $t2, 0
	bne $t1, $t2, label201
	j label200
label200:
	li $t0, 1
	sw $t0, -3228($fp)
label201:
	li $t0, 0
	sw $t0, -3236($fp)
	li $t0, 56151
	sw $t0, -3240($fp)
	li $t0, 1863
	sw $t0, -3244($fp)
	lw $t1, -3240($fp)
	lw $t2, -3244($fp)
	bne $t1, $t2, label202
	j label204
label204:
	lw $t0, -2364($fp)
	sw $t0, -3248($fp)
	lw $t1, -3248($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label203
label202:
	li $t0, 1
	sw $t0, -3236($fp)
label203:
	li $t0, 0
	sw $t0, -3252($fp)
	lw $t0, -2732($fp)
	sw $t0, -3256($fp)
	li $t0, 32190
	sw $t0, -3260($fp)
	lw $t0, -3256($fp)
	lw $t1, -3260($fp)
	sub $t0, $t0, $t1
	sw $t0, -3264($fp)
	lw $t1, -3264($fp)
	li $t2, 0
	bne $t1, $t2, label205
	j label207
label207:
	lw $t0, -2840($fp)
	sw $t0, -3268($fp)
	lw $t1, -3268($fp)
	li $t2, 0
	bne $t1, $t2, label205
	j label206
label205:
	li $t0, 1
	sw $t0, -3252($fp)
label206:
	li $t0, 0
	sw $t0, -3272($fp)
	li $t0, 0
	sw $t0, -3276($fp)
	li $t0, 40190
	sw $t0, -3280($fp)
	lw $t1, -3280($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label210
label210:
	li $t0, 1
	sw $t0, -3276($fp)
label211:
	li $t0, 2915
	sw $t0, -3284($fp)
	lw $t1, -3276($fp)
	lw $t2, -3284($fp)
	bne $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -3272($fp)
label209:
	addi $sp, $sp, -4
	lw $t0, -3228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3252($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3272($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3288($fp)
	addi $sp, $sp, 20
	lw $t1, -3288($fp)
	li $t2, 0
	bne $t1, $t2, label197
	j label198
label197:
label212:
	lw $t0, -2292($fp)
	sw $t0, -3292($fp)
	lw $t0, -1764($fp)
	sw $t0, -3296($fp)
	lw $t0, -3292($fp)
	lw $t1, -3296($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3300($fp)
	li $t0, 0
	lw $t1, -3300($fp)
	sub $t0, $t0, $t1
	sw $t0, -3304($fp)
	li $t0, 0
	sw $t0, -3308($fp)
	lw $t0, -1608($fp)
	sw $t0, -3312($fp)
	lw $t1, -3312($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label216
label216:
	li $t0, 1
	sw $t0, -3308($fp)
label217:
	lw $t0, -3304($fp)
	lw $t1, -3308($fp)
	sub $t0, $t0, $t1
	sw $t0, -3316($fp)
	lw $t1, -3316($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label214
label215:
	lw $t0, 8($fp)
	sw $t0, -3320($fp)
	li $t0, 0
	lw $t1, -3320($fp)
	sub $t0, $t0, $t1
	sw $t0, -3324($fp)
	li $t0, 0
	lw $t1, -3324($fp)
	sub $t0, $t0, $t1
	sw $t0, -3328($fp)
	addi $t0, $fp, -256
	sw $t0, -3332($fp)
	lw $t0, -2256($fp)
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
	li $t0, 24495
	sw $t0, -3352($fp)
	li $t0, 0
	sw $t0, -3356($fp)
	addi $t0, $fp, -2724
	sw $t0, -3360($fp)
	li $t0, 0
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
	bne $t1, $t2, label219
	j label218
label218:
	li $t0, 1
	sw $t0, -3356($fp)
label219:
	addi $sp, $sp, -4
	lw $t0, -3328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3356($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3380($fp)
	addi $sp, $sp, 20
	lw $t1, -3380($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label213
label213:
	li $t0, 0
	sw $t0, -3384($fp)
	li $t0, 0
	sw $t0, -3388($fp)
	addi $t0, $fp, -52
	sw $t0, -3392($fp)
	li $t0, 3
	sw $t0, -3396($fp)
	li $t0, 4
	lw $t1, -3396($fp)
	mul $t0, $t0, $t1
	sw $t0, -3400($fp)
	lw $t0, -3400($fp)
	lw $t1, -3392($fp)
	add $t0, $t0, $t1
	sw $t0, -3404($fp)
	lw $t0, -3404($fp)
	lw $t1, 0($t0)
	sw $t1, -3408($fp)
	li $t0, 0
	sw $t0, -3412($fp)
	lw $t0, -2732($fp)
	sw $t0, -3416($fp)
	lw $t1, -3416($fp)
	li $t2, 0
	bne $t1, $t2, label225
	j label224
label224:
	li $t0, 1
	sw $t0, -3412($fp)
label225:
	lw $t0, -3408($fp)
	lw $t1, -3412($fp)
	sub $t0, $t0, $t1
	sw $t0, -3420($fp)
	li $t0, 0
	sw $t0, -3424($fp)
	lw $t0, -924($fp)
	sw $t0, -3428($fp)
	lw $t1, -3428($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label226
label226:
	li $t0, 1
	sw $t0, -3424($fp)
label227:
	lw $t1, -3420($fp)
	lw $t2, -3424($fp)
	bge $t1, $t2, label222
	j label223
label222:
	li $t0, 1
	sw $t0, -3388($fp)
label223:
	li $t0, 17878
	sw $t0, -3432($fp)
	lw $t0, -936($fp)
	sw $t0, -3436($fp)
	lw $t0, -3432($fp)
	lw $t1, -3436($fp)
	mul $t0, $t0, $t1
	sw $t0, -3440($fp)
	li $t0, 30237
	sw $t0, -3444($fp)
	lw $t0, -3440($fp)
	lw $t1, -3444($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3448($fp)
	li $t0, 40447
	sw $t0, -3452($fp)
	li $t0, 0
	lw $t1, -3452($fp)
	sub $t0, $t0, $t1
	sw $t0, -3456($fp)
	lw $t0, -3448($fp)
	lw $t1, -3456($fp)
	add $t0, $t0, $t1
	sw $t0, -3460($fp)
	lw $t1, -3388($fp)
	lw $t2, -3460($fp)
	bgt $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -3384($fp)
label221:
	li $t0, 1034
	sw $t0, -3464($fp)
	addi $t0, $fp, -192
	sw $t0, -3468($fp)
	lw $t0, -1260($fp)
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
	li $t0, 0
	sw $t0, -3488($fp)
	li $t0, 6628
	sw $t0, -3492($fp)
	li $t0, 0
	lw $t1, -3492($fp)
	sub $t0, $t0, $t1
	sw $t0, -3496($fp)
	lw $t1, -3496($fp)
	li $t2, 0
	bne $t1, $t2, label230
	j label229
label230:
	li $t0, 45617
	sw $t0, -3500($fp)
	lw $t1, -3500($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label229
label228:
	li $t0, 1
	sw $t0, -3488($fp)
label229:
	li $t0, 0
	sw $t0, -3504($fp)
	li $t0, 47349
	sw $t0, -3508($fp)
	li $t0, 0
	lw $t1, -3508($fp)
	sub $t0, $t0, $t1
	sw $t0, -3512($fp)
	lw $t1, -3512($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label231
label231:
	li $t0, 1
	sw $t0, -3504($fp)
label232:
	li $t0, 0
	sw $t0, -3516($fp)
	li $t0, 0
	sw $t0, -3520($fp)
	addi $t0, $fp, -132
	sw $t0, -3524($fp)
	li $t0, 1
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
	li $t0, 13382
	sw $t0, -3544($fp)
	lw $t1, -3540($fp)
	lw $t2, -3544($fp)
	beq $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -3520($fp)
label236:
	li $t0, 0
	sw $t0, -3548($fp)
	li $t0, 55600
	sw $t0, -3552($fp)
	li $t0, 32232
	sw $t0, -3556($fp)
	lw $t0, -3552($fp)
	lw $t1, -3556($fp)
	sub $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t1, -3560($fp)
	li $t2, 0
	bne $t1, $t2, label239
	j label238
label239:
	lw $t0, -1236($fp)
	sw $t0, -3564($fp)
	lw $t1, -3564($fp)
	li $t2, 0
	bne $t1, $t2, label237
	j label238
label237:
	li $t0, 1
	sw $t0, -3548($fp)
label238:
	li $t0, 3069
	sw $t0, -3568($fp)
	li $t0, 8922
	sw $t0, -3572($fp)
	lw $t0, -3568($fp)
	lw $t1, -3572($fp)
	mul $t0, $t0, $t1
	sw $t0, -3576($fp)
	li $t0, 0
	sw $t0, -3580($fp)
	li $t0, 35261
	sw $t0, -3584($fp)
	li $t0, 62504
	sw $t0, -3588($fp)
	lw $t0, -3584($fp)
	lw $t1, -3588($fp)
	sub $t0, $t0, $t1
	sw $t0, -3592($fp)
	li $t0, 1824
	sw $t0, -3596($fp)
	lw $t1, -3592($fp)
	lw $t2, -3596($fp)
	bne $t1, $t2, label240
	j label241
label240:
	li $t0, 1
	sw $t0, -3580($fp)
label241:
	addi $sp, $sp, -4
	lw $t0, -3520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3580($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3600($fp)
	addi $sp, $sp, 20
	li $t0, 10177
	sw $t0, -3604($fp)
	lw $t1, -3600($fp)
	lw $t2, -3604($fp)
	ble $t1, $t2, label233
	j label234
label233:
	li $t0, 1
	sw $t0, -3516($fp)
label234:
	addi $sp, $sp, -4
	lw $t0, -3484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3504($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3516($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3608($fp)
	addi $sp, $sp, 20
	lw $t0, -3464($fp)
	lw $t1, -3608($fp)
	sub $t0, $t0, $t1
	sw $t0, -3612($fp)
	lw $t0, -3612($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -3616($fp)
	j label212
label214:
	j label199
label198:
	li $t0, 0
	sw $t0, -3620($fp)
	li $t0, 0
	sw $t0, -3624($fp)
	li $t0, 0
	sw $t0, -3628($fp)
	lw $t0, -3080($fp)
	sw $t0, -3632($fp)
	lw $t1, -3632($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label247
label249:
	lw $t0, -1620($fp)
	sw $t0, -3636($fp)
	lw $t1, -3636($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label247
label248:
	lw $t0, -2292($fp)
	sw $t0, -3640($fp)
	lw $t1, -3640($fp)
	li $t2, 0
	bne $t1, $t2, label246
	j label247
label246:
	li $t0, 1
	sw $t0, -3628($fp)
label247:
	li $t0, 26846
	sw $t0, -3644($fp)
	lw $t0, -3644($fp)
	sw $t0, -1776($fp)
	lw $t0, -1776($fp)
	sw $t0, -3648($fp)
	li $t0, 0
	sw $t0, -3652($fp)
	li $t0, 10886
	sw $t0, -3656($fp)
	lw $t1, -3656($fp)
	li $t2, 0
	bne $t1, $t2, label250
	j label253
label253:
	lw $t0, -1764($fp)
	sw $t0, -3660($fp)
	lw $t1, -3660($fp)
	li $t2, 0
	bne $t1, $t2, label250
	j label252
label252:
	lw $t0, 16($fp)
	sw $t0, -3664($fp)
	lw $t1, -3664($fp)
	li $t2, 0
	bne $t1, $t2, label250
	j label251
label250:
	li $t0, 1
	sw $t0, -3652($fp)
label251:
	li $t0, 0
	sw $t0, -3668($fp)
	li $t0, 0
	sw $t0, -3672($fp)
	lw $t0, 12($fp)
	sw $t0, -3676($fp)
	li $t0, 24983
	sw $t0, -3680($fp)
	lw $t1, -3676($fp)
	lw $t2, -3680($fp)
	ble $t1, $t2, label256
	j label257
label256:
	li $t0, 1
	sw $t0, -3672($fp)
label257:
	li $t0, 812
	sw $t0, -3684($fp)
	lw $t1, -3672($fp)
	lw $t2, -3684($fp)
	bge $t1, $t2, label254
	j label255
label254:
	li $t0, 1
	sw $t0, -3668($fp)
label255:
	li $t0, 0
	sw $t0, -3688($fp)
	lw $t0, -1524($fp)
	sw $t0, -3692($fp)
	lw $t1, -3692($fp)
	li $t2, 0
	bne $t1, $t2, label259
	j label258
label258:
	li $t0, 1
	sw $t0, -3688($fp)
label259:
	lw $t0, -984($fp)
	sw $t0, -3696($fp)
	lw $t0, -3688($fp)
	lw $t1, -3696($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3700($fp)
	addi $t0, $fp, -192
	sw $t0, -3704($fp)
	lw $t0, -1236($fp)
	sw $t0, -3708($fp)
	li $t0, 4
	lw $t1, -3708($fp)
	mul $t0, $t0, $t1
	sw $t0, -3712($fp)
	lw $t0, -3712($fp)
	lw $t1, -3704($fp)
	add $t0, $t0, $t1
	sw $t0, -3716($fp)
	lw $t0, -3716($fp)
	lw $t1, 0($t0)
	sw $t1, -3720($fp)
	addi $sp, $sp, -4
	lw $t0, -3700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3720($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3724($fp)
	addi $sp, $sp, 12
	lw $t0, -1200($fp)
	sw $t0, -3728($fp)
	lw $t0, -3724($fp)
	lw $t1, -3728($fp)
	sub $t0, $t0, $t1
	sw $t0, -3732($fp)
	addi $sp, $sp, -4
	lw $t0, -3648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3732($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3736($fp)
	addi $sp, $sp, 20
	addi $t0, $fp, -36
	sw $t0, -3740($fp)
	li $t0, 7
	sw $t0, -3744($fp)
	li $t0, 4
	lw $t1, -3744($fp)
	mul $t0, $t0, $t1
	sw $t0, -3748($fp)
	lw $t0, -3748($fp)
	lw $t1, -3740($fp)
	add $t0, $t0, $t1
	sw $t0, -3752($fp)
	lw $t0, -3752($fp)
	lw $t1, 0($t0)
	sw $t1, -3756($fp)
	li $t0, 22068
	sw $t0, -3760($fp)
	lw $t0, -2364($fp)
	sw $t0, -3764($fp)
	lw $t0, -3760($fp)
	lw $t1, -3764($fp)
	mul $t0, $t0, $t1
	sw $t0, -3768($fp)
	addi $sp, $sp, -4
	lw $t0, -3628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3736($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3768($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3772($fp)
	addi $sp, $sp, 20
	lw $t1, -3772($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label244
label244:
	li $t0, 1
	sw $t0, -3624($fp)
label245:
	li $t0, 0
	sw $t0, -3776($fp)
	li $t0, 36162
	sw $t0, -3780($fp)
	lw $t0, -3092($fp)
	sw $t0, -3784($fp)
	lw $t1, -3780($fp)
	lw $t2, -3784($fp)
	bne $t1, $t2, label260
	j label261
label260:
	li $t0, 1
	sw $t0, -3776($fp)
label261:
	li $t0, 23192
	sw $t0, -3788($fp)
	lw $t0, -3788($fp)
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	sw $t0, -3792($fp)
	addi $sp, $sp, -4
	lw $t0, -3776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3792($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3796($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -3796($fp)
	sub $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t0, -3624($fp)
	lw $t1, -3800($fp)
	mul $t0, $t0, $t1
	sw $t0, -3804($fp)
	li $t0, 0
	sw $t0, -3808($fp)
	li $t0, 21923
	sw $t0, -3812($fp)
	lw $t1, -3812($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label262
label262:
	li $t0, 1
	sw $t0, -3808($fp)
label263:
	lw $t1, -3804($fp)
	lw $t2, -3808($fp)
	ble $t1, $t2, label242
	j label243
label242:
	li $t0, 1
	sw $t0, -3620($fp)
label243:
label199:
	li $t0, 0
	sw $t0, -3816($fp)
	addi $t0, $fp, -36
	sw $t0, -3820($fp)
	lw $t0, -1524($fp)
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
	li $t0, 47687
	sw $t0, -3840($fp)
	lw $t0, -3836($fp)
	lw $t1, -3840($fp)
	sub $t0, $t0, $t1
	sw $t0, -3844($fp)
	li $t0, 0
	sw $t0, -3848($fp)
	li $t0, 0
	sw $t0, -3852($fp)
	addi $t0, $fp, -2724
	sw $t0, -3856($fp)
	li $t0, 1
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
	li $t0, 53315
	sw $t0, -3876($fp)
	lw $t1, -3872($fp)
	lw $t2, -3876($fp)
	bge $t1, $t2, label271
	j label272
label271:
	li $t0, 1
	sw $t0, -3852($fp)
label272:
	li $t0, 0
	sw $t0, -3880($fp)
	li $t0, 0
	sw $t0, -3884($fp)
	lw $t0, -2196($fp)
	sw $t0, -3888($fp)
	lw $t0, -984($fp)
	sw $t0, -3892($fp)
	lw $t1, -3888($fp)
	lw $t2, -3892($fp)
	bne $t1, $t2, label275
	j label276
label275:
	li $t0, 1
	sw $t0, -3884($fp)
label276:
	li $t0, 41492
	sw $t0, -3896($fp)
	lw $t1, -3884($fp)
	lw $t2, -3896($fp)
	bne $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -3880($fp)
label274:
	li $t0, 0
	sw $t0, -3900($fp)
	li $t0, 27889
	sw $t0, -3904($fp)
	lw $t0, -936($fp)
	sw $t0, -3908($fp)
	lw $t1, -3904($fp)
	lw $t2, -3908($fp)
	beq $t1, $t2, label277
	j label278
label277:
	li $t0, 1
	sw $t0, -3900($fp)
label278:
	li $t0, 0
	sw $t0, -3912($fp)
	li $t0, 24820
	sw $t0, -3916($fp)
	li $t0, 32570
	sw $t0, -3920($fp)
	lw $t0, -3916($fp)
	lw $t1, -3920($fp)
	mul $t0, $t0, $t1
	sw $t0, -3924($fp)
	lw $t1, -3924($fp)
	li $t2, 0
	bne $t1, $t2, label281
	j label280
label281:
	li $t0, 2887
	sw $t0, -3928($fp)
	lw $t1, -3928($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label280
label279:
	li $t0, 1
	sw $t0, -3912($fp)
label280:
	addi $sp, $sp, -4
	lw $t0, -3852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3912($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3932($fp)
	addi $sp, $sp, 20
	lw $t1, -3932($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label269
label269:
	li $t0, 1
	sw $t0, -3848($fp)
label270:
	lw $t0, -2316($fp)
	sw $t0, -3936($fp)
	li $t0, 1063
	sw $t0, -3940($fp)
	lw $t0, -3936($fp)
	lw $t1, -3940($fp)
	mul $t0, $t0, $t1
	sw $t0, -3944($fp)
	lw $t0, 16($fp)
	sw $t0, -3948($fp)
	lw $t0, -3944($fp)
	lw $t1, -3948($fp)
	mul $t0, $t0, $t1
	sw $t0, -3952($fp)
	li $t0, 55095
	sw $t0, -3956($fp)
	lw $t0, -2328($fp)
	sw $t0, -3960($fp)
	lw $t0, -3956($fp)
	lw $t1, -3960($fp)
	mul $t0, $t0, $t1
	sw $t0, -3964($fp)
	li $t0, 35601
	sw $t0, -3968($fp)
	lw $t0, -3964($fp)
	lw $t1, -3968($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3972($fp)
	addi $t0, $fp, -256
	sw $t0, -3976($fp)
	lw $t0, -1764($fp)
	sw $t0, -3980($fp)
	li $t0, 4
	lw $t1, -3980($fp)
	mul $t0, $t0, $t1
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	lw $t1, -3976($fp)
	add $t0, $t0, $t1
	sw $t0, -3988($fp)
	lw $t0, -3988($fp)
	lw $t1, 0($t0)
	sw $t1, -3992($fp)
	addi $sp, $sp, -4
	lw $t0, -3848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3992($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3996($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -3996($fp)
	sub $t0, $t0, $t1
	sw $t0, -4000($fp)
	li $t0, 60690
	sw $t0, -4004($fp)
	li $t0, 29
	sw $t0, -4008($fp)
	lw $t0, -4004($fp)
	lw $t1, -4008($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4012($fp)
	lw $t0, 4($fp)
	sw $t0, -4016($fp)
	lw $t0, 8($fp)
	sw $t0, -4020($fp)
	lw $t0, -4016($fp)
	lw $t1, -4020($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4024($fp)
	li $t0, 0
	sw $t0, -4028($fp)
	li $t0, 24858
	sw $t0, -4032($fp)
	lw $t1, -4032($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label282
label284:
	lw $t0, -1764($fp)
	sw $t0, -4036($fp)
	lw $t1, -4036($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -4028($fp)
label283:
	addi $sp, $sp, -4
	lw $t0, -4000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4028($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4040($fp)
	addi $sp, $sp, 20
	lw $t1, -3844($fp)
	lw $t2, -4040($fp)
	bgt $t1, $t2, label267
	j label268
label267:
	li $t0, 1
	sw $t0, -3816($fp)
label268:
	li $t0, 51448
	sw $t0, -4044($fp)
	lw $t1, -3816($fp)
	lw $t2, -4044($fp)
	bne $t1, $t2, label264
	j label265
label264:
	li $t0, 7968
	sw $t0, -4124($fp)
	addi $t0, $fp, -4076
	sw $t0, -4128($fp)
	li $t0, 0
	sw $t0, -4132($fp)
	lw $t0, -4132($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4136($fp)
	lw $t0, -4128($fp)
	lw $t1, -4136($fp)
	add $t0, $t0, $t1
	sw $t0, -4140($fp)
	lw $t0, -4124($fp)
	lw $t1, -4140($fp)
	sw $t0, 0($t1)
	lw $t0, -4140($fp)
	lw $t1, 0($t0)
	sw $t1, -4144($fp)
	li $t0, 63492
	sw $t0, -4148($fp)
	addi $t0, $fp, -4076
	sw $t0, -4152($fp)
	li $t0, 1
	sw $t0, -4156($fp)
	lw $t0, -4156($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4160($fp)
	lw $t0, -4152($fp)
	lw $t1, -4160($fp)
	add $t0, $t0, $t1
	sw $t0, -4164($fp)
	lw $t0, -4148($fp)
	lw $t1, -4164($fp)
	sw $t0, 0($t1)
	lw $t0, -4164($fp)
	lw $t1, 0($t0)
	sw $t1, -4168($fp)
	li $t0, 33261
	sw $t0, -4172($fp)
	addi $t0, $fp, -4076
	sw $t0, -4176($fp)
	li $t0, 2
	sw $t0, -4180($fp)
	lw $t0, -4180($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4184($fp)
	lw $t0, -4176($fp)
	lw $t1, -4184($fp)
	add $t0, $t0, $t1
	sw $t0, -4188($fp)
	lw $t0, -4172($fp)
	lw $t1, -4188($fp)
	sw $t0, 0($t1)
	lw $t0, -4188($fp)
	lw $t1, 0($t0)
	sw $t1, -4192($fp)
	li $t0, 14596
	sw $t0, -4196($fp)
	addi $t0, $fp, -4076
	sw $t0, -4200($fp)
	li $t0, 3
	sw $t0, -4204($fp)
	lw $t0, -4204($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4208($fp)
	lw $t0, -4200($fp)
	lw $t1, -4208($fp)
	add $t0, $t0, $t1
	sw $t0, -4212($fp)
	lw $t0, -4196($fp)
	lw $t1, -4212($fp)
	sw $t0, 0($t1)
	lw $t0, -4212($fp)
	lw $t1, 0($t0)
	sw $t1, -4216($fp)
	li $t0, 43573
	sw $t0, -4220($fp)
	addi $t0, $fp, -4076
	sw $t0, -4224($fp)
	li $t0, 4
	sw $t0, -4228($fp)
	lw $t0, -4228($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4232($fp)
	lw $t0, -4224($fp)
	lw $t1, -4232($fp)
	add $t0, $t0, $t1
	sw $t0, -4236($fp)
	lw $t0, -4220($fp)
	lw $t1, -4236($fp)
	sw $t0, 0($t1)
	lw $t0, -4236($fp)
	lw $t1, 0($t0)
	sw $t1, -4240($fp)
	li $t0, 55330
	sw $t0, -4244($fp)
	addi $t0, $fp, -4076
	sw $t0, -4248($fp)
	li $t0, 5
	sw $t0, -4252($fp)
	lw $t0, -4252($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4256($fp)
	lw $t0, -4248($fp)
	lw $t1, -4256($fp)
	add $t0, $t0, $t1
	sw $t0, -4260($fp)
	lw $t0, -4244($fp)
	lw $t1, -4260($fp)
	sw $t0, 0($t1)
	lw $t0, -4260($fp)
	lw $t1, 0($t0)
	sw $t1, -4264($fp)
	li $t0, 48754
	sw $t0, -4268($fp)
	addi $t0, $fp, -4076
	sw $t0, -4272($fp)
	li $t0, 6
	sw $t0, -4276($fp)
	lw $t0, -4276($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4280($fp)
	lw $t0, -4272($fp)
	lw $t1, -4280($fp)
	add $t0, $t0, $t1
	sw $t0, -4284($fp)
	lw $t0, -4268($fp)
	lw $t1, -4284($fp)
	sw $t0, 0($t1)
	lw $t0, -4284($fp)
	lw $t1, 0($t0)
	sw $t1, -4288($fp)
	li $t0, 63845
	sw $t0, -4292($fp)
	addi $t0, $fp, -4076
	sw $t0, -4296($fp)
	li $t0, 7
	sw $t0, -4300($fp)
	lw $t0, -4300($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4304($fp)
	lw $t0, -4296($fp)
	lw $t1, -4304($fp)
	add $t0, $t0, $t1
	sw $t0, -4308($fp)
	lw $t0, -4292($fp)
	lw $t1, -4308($fp)
	sw $t0, 0($t1)
	lw $t0, -4308($fp)
	lw $t1, 0($t0)
	sw $t1, -4312($fp)
	li $t0, 14777
	sw $t0, -4316($fp)
	lw $t0, -4316($fp)
	sw $t0, -4320($fp)
	lw $t0, -4320($fp)
	sw $t0, -4324($fp)
	li $t0, 49567
	sw $t0, -4328($fp)
	lw $t0, -4328($fp)
	sw $t0, -4332($fp)
	lw $t0, -4332($fp)
	sw $t0, -4336($fp)
	li $t0, 9195
	sw $t0, -4340($fp)
	lw $t0, -4340($fp)
	sw $t0, -4344($fp)
	lw $t0, -4344($fp)
	sw $t0, -4348($fp)
	li $t0, 41624
	sw $t0, -4352($fp)
	lw $t0, -4352($fp)
	sw $t0, -4356($fp)
	lw $t0, -4356($fp)
	sw $t0, -4360($fp)
	li $t0, 7223
	sw $t0, -4364($fp)
	addi $t0, $fp, -4104
	sw $t0, -4368($fp)
	li $t0, 0
	sw $t0, -4372($fp)
	lw $t0, -4372($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4376($fp)
	lw $t0, -4368($fp)
	lw $t1, -4376($fp)
	add $t0, $t0, $t1
	sw $t0, -4380($fp)
	lw $t0, -4364($fp)
	lw $t1, -4380($fp)
	sw $t0, 0($t1)
	lw $t0, -4380($fp)
	lw $t1, 0($t0)
	sw $t1, -4384($fp)
	li $t0, 45357
	sw $t0, -4388($fp)
	addi $t0, $fp, -4104
	sw $t0, -4392($fp)
	li $t0, 1
	sw $t0, -4396($fp)
	lw $t0, -4396($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4400($fp)
	lw $t0, -4392($fp)
	lw $t1, -4400($fp)
	add $t0, $t0, $t1
	sw $t0, -4404($fp)
	lw $t0, -4388($fp)
	lw $t1, -4404($fp)
	sw $t0, 0($t1)
	lw $t0, -4404($fp)
	lw $t1, 0($t0)
	sw $t1, -4408($fp)
	li $t0, 63547
	sw $t0, -4412($fp)
	addi $t0, $fp, -4104
	sw $t0, -4416($fp)
	li $t0, 2
	sw $t0, -4420($fp)
	lw $t0, -4420($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4424($fp)
	lw $t0, -4416($fp)
	lw $t1, -4424($fp)
	add $t0, $t0, $t1
	sw $t0, -4428($fp)
	lw $t0, -4412($fp)
	lw $t1, -4428($fp)
	sw $t0, 0($t1)
	lw $t0, -4428($fp)
	lw $t1, 0($t0)
	sw $t1, -4432($fp)
	li $t0, 54910
	sw $t0, -4436($fp)
	addi $t0, $fp, -4104
	sw $t0, -4440($fp)
	li $t0, 3
	sw $t0, -4444($fp)
	lw $t0, -4444($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4448($fp)
	lw $t0, -4440($fp)
	lw $t1, -4448($fp)
	add $t0, $t0, $t1
	sw $t0, -4452($fp)
	lw $t0, -4436($fp)
	lw $t1, -4452($fp)
	sw $t0, 0($t1)
	lw $t0, -4452($fp)
	lw $t1, 0($t0)
	sw $t1, -4456($fp)
	li $t0, 4680
	sw $t0, -4460($fp)
	addi $t0, $fp, -4104
	sw $t0, -4464($fp)
	li $t0, 4
	sw $t0, -4468($fp)
	lw $t0, -4468($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4472($fp)
	lw $t0, -4464($fp)
	lw $t1, -4472($fp)
	add $t0, $t0, $t1
	sw $t0, -4476($fp)
	lw $t0, -4460($fp)
	lw $t1, -4476($fp)
	sw $t0, 0($t1)
	lw $t0, -4476($fp)
	lw $t1, 0($t0)
	sw $t1, -4480($fp)
	li $t0, 58701
	sw $t0, -4484($fp)
	addi $t0, $fp, -4104
	sw $t0, -4488($fp)
	li $t0, 5
	sw $t0, -4492($fp)
	lw $t0, -4492($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4496($fp)
	lw $t0, -4488($fp)
	lw $t1, -4496($fp)
	add $t0, $t0, $t1
	sw $t0, -4500($fp)
	lw $t0, -4484($fp)
	lw $t1, -4500($fp)
	sw $t0, 0($t1)
	lw $t0, -4500($fp)
	lw $t1, 0($t0)
	sw $t1, -4504($fp)
	li $t0, 54939
	sw $t0, -4508($fp)
	addi $t0, $fp, -4104
	sw $t0, -4512($fp)
	li $t0, 6
	sw $t0, -4516($fp)
	lw $t0, -4516($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4520($fp)
	lw $t0, -4512($fp)
	lw $t1, -4520($fp)
	add $t0, $t0, $t1
	sw $t0, -4524($fp)
	lw $t0, -4508($fp)
	lw $t1, -4524($fp)
	sw $t0, 0($t1)
	lw $t0, -4524($fp)
	lw $t1, 0($t0)
	sw $t1, -4528($fp)
	li $t0, 59775
	sw $t0, -4532($fp)
	lw $t0, -4532($fp)
	sw $t0, -4536($fp)
	lw $t0, -4536($fp)
	sw $t0, -4540($fp)
	li $t0, 28767
	sw $t0, -4544($fp)
	addi $t0, $fp, -4120
	sw $t0, -4548($fp)
	li $t0, 0
	sw $t0, -4552($fp)
	lw $t0, -4552($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4556($fp)
	lw $t0, -4548($fp)
	lw $t1, -4556($fp)
	add $t0, $t0, $t1
	sw $t0, -4560($fp)
	lw $t0, -4544($fp)
	lw $t1, -4560($fp)
	sw $t0, 0($t1)
	lw $t0, -4560($fp)
	lw $t1, 0($t0)
	sw $t1, -4564($fp)
	li $t0, 56003
	sw $t0, -4568($fp)
	addi $t0, $fp, -4120
	sw $t0, -4572($fp)
	li $t0, 1
	sw $t0, -4576($fp)
	lw $t0, -4576($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4580($fp)
	lw $t0, -4572($fp)
	lw $t1, -4580($fp)
	add $t0, $t0, $t1
	sw $t0, -4584($fp)
	lw $t0, -4568($fp)
	lw $t1, -4584($fp)
	sw $t0, 0($t1)
	lw $t0, -4584($fp)
	lw $t1, 0($t0)
	sw $t1, -4588($fp)
	li $t0, 19060
	sw $t0, -4592($fp)
	addi $t0, $fp, -4120
	sw $t0, -4596($fp)
	li $t0, 2
	sw $t0, -4600($fp)
	lw $t0, -4600($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4604($fp)
	lw $t0, -4596($fp)
	lw $t1, -4604($fp)
	add $t0, $t0, $t1
	sw $t0, -4608($fp)
	lw $t0, -4592($fp)
	lw $t1, -4608($fp)
	sw $t0, 0($t1)
	lw $t0, -4608($fp)
	lw $t1, 0($t0)
	sw $t1, -4612($fp)
	li $t0, 61337
	sw $t0, -4616($fp)
	addi $t0, $fp, -4120
	sw $t0, -4620($fp)
	li $t0, 3
	sw $t0, -4624($fp)
	lw $t0, -4624($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4628($fp)
	lw $t0, -4620($fp)
	lw $t1, -4628($fp)
	add $t0, $t0, $t1
	sw $t0, -4632($fp)
	lw $t0, -4616($fp)
	lw $t1, -4632($fp)
	sw $t0, 0($t1)
	lw $t0, -4632($fp)
	lw $t1, 0($t0)
	sw $t1, -4636($fp)
	li $t0, 58890
	sw $t0, -4640($fp)
	lw $t0, -4640($fp)
	sw $t0, -4644($fp)
	lw $t0, -4644($fp)
	sw $t0, -4648($fp)
	li $t0, 46949
	sw $t0, -4652($fp)
	lw $t0, -4652($fp)
	sw $t0, -4656($fp)
	lw $t0, -4656($fp)
	sw $t0, -4660($fp)
	li $t0, 37293
	sw $t0, -4664($fp)
	lw $t0, -4664($fp)
	sw $t0, -4668($fp)
	lw $t0, -4668($fp)
	sw $t0, -4672($fp)
	li $t0, 51842
	sw $t0, -4676($fp)
	lw $t0, -4676($fp)
	sw $t0, -4680($fp)
	lw $t0, -4680($fp)
	sw $t0, -4684($fp)
	li $t0, 41535
	sw $t0, -4688($fp)
	lw $t0, -456($fp)
	sw $t0, -4692($fp)
	li $t0, 0
	lw $t1, -4692($fp)
	sub $t0, $t0, $t1
	sw $t0, -4696($fp)
	lw $t0, -4688($fp)
	lw $t1, -4696($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4700($fp)
	li $t0, 0
	sw $t0, -4704($fp)
	li $t0, 0
	sw $t0, -4708($fp)
	li $t0, 60810
	sw $t0, -4712($fp)
	lw $t0, -2292($fp)
	sw $t0, -4716($fp)
	lw $t1, -4712($fp)
	lw $t2, -4716($fp)
	beq $t1, $t2, label290
	j label291
label290:
	li $t0, 1
	sw $t0, -4708($fp)
label291:
	lw $t0, -960($fp)
	sw $t0, -4720($fp)
	lw $t1, -4708($fp)
	lw $t2, -4720($fp)
	beq $t1, $t2, label288
	j label289
label288:
	li $t0, 1
	sw $t0, -4704($fp)
label289:
	li $t0, 1066
	sw $t0, -4724($fp)
	addi $sp, $sp, -4
	lw $t0, -4704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4724($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4728($fp)
	addi $sp, $sp, 12
	lw $t0, -1524($fp)
	sw $t0, -4732($fp)
	li $t0, 64099
	sw $t0, -4736($fp)
	lw $t0, -4732($fp)
	lw $t1, -4736($fp)
	add $t0, $t0, $t1
	sw $t0, -4740($fp)
	addi $t0, $fp, -52
	sw $t0, -4744($fp)
	li $t0, 0
	sw $t0, -4748($fp)
	li $t0, 4
	lw $t1, -4748($fp)
	mul $t0, $t0, $t1
	sw $t0, -4752($fp)
	lw $t0, -4752($fp)
	lw $t1, -4744($fp)
	add $t0, $t0, $t1
	sw $t0, -4756($fp)
	lw $t0, -4756($fp)
	lw $t1, 0($t0)
	sw $t1, -4760($fp)
	li $t0, 0
	sw $t0, -4764($fp)
	addi $t0, $fp, -4120
	sw $t0, -4768($fp)
	li $t0, 2
	sw $t0, -4772($fp)
	li $t0, 4
	lw $t1, -4772($fp)
	mul $t0, $t0, $t1
	sw $t0, -4776($fp)
	lw $t0, -4776($fp)
	lw $t1, -4768($fp)
	add $t0, $t0, $t1
	sw $t0, -4780($fp)
	lw $t0, -4780($fp)
	lw $t1, 0($t0)
	sw $t1, -4784($fp)
	li $t0, 49503
	sw $t0, -4788($fp)
	lw $t1, -4784($fp)
	lw $t2, -4788($fp)
	bne $t1, $t2, label292
	j label293
label292:
	li $t0, 1
	sw $t0, -4764($fp)
label293:
	addi $sp, $sp, -4
	lw $t0, -4728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4760($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4764($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -4792($fp)
	addi $sp, $sp, 20
	li $t0, 47318
	sw $t0, -4796($fp)
	lw $t0, -4792($fp)
	lw $t1, -4796($fp)
	mul $t0, $t0, $t1
	sw $t0, -4800($fp)
	lw $t1, -4700($fp)
	lw $t2, -4800($fp)
	bgt $t1, $t2, label285
	j label286
label285:
label294:
	addi $t0, $fp, -52
	sw $t0, -4804($fp)
	li $t0, 0
	sw $t0, -4808($fp)
	li $t0, 64911
	sw $t0, -4812($fp)
	li $t0, 0
	lw $t1, -4812($fp)
	sub $t0, $t0, $t1
	sw $t0, -4816($fp)
	li $t0, 10051
	sw $t0, -4820($fp)
	lw $t1, -4816($fp)
	lw $t2, -4820($fp)
	bge $t1, $t2, label297
	j label298
label297:
	li $t0, 1
	sw $t0, -4808($fp)
label298:
	li $t0, 4
	lw $t1, -4808($fp)
	mul $t0, $t0, $t1
	sw $t0, -4824($fp)
	lw $t0, -4824($fp)
	lw $t1, -4804($fp)
	add $t0, $t0, $t1
	sw $t0, -4828($fp)
	lw $t0, -4828($fp)
	lw $t1, 0($t0)
	sw $t1, -4832($fp)
	lw $t0, -4320($fp)
	sw $t0, -4836($fp)
	lw $t1, -4832($fp)
	lw $t2, -4836($fp)
	beq $t1, $t2, label295
	j label296
label295:
	li $t0, 31349
	sw $t0, -4840($fp)
	lw $t0, -4840($fp)
	sw $t0, -4844($fp)
	lw $t0, -4844($fp)
	sw $t0, -4848($fp)
	li $t0, 8570
	sw $t0, -4852($fp)
	lw $t0, -4852($fp)
	sw $t0, -4856($fp)
	lw $t0, -4856($fp)
	sw $t0, -4860($fp)
	li $t0, 51675
	sw $t0, -4864($fp)
	lw $t0, -4864($fp)
	sw $t0, -4868($fp)
	lw $t0, -4868($fp)
	sw $t0, -4872($fp)
	addi $t0, $fp, -224
	sw $t0, -4876($fp)
	li $t0, 7
	sw $t0, -4880($fp)
	li $t0, 4
	lw $t1, -4880($fp)
	mul $t0, $t0, $t1
	sw $t0, -4884($fp)
	lw $t0, -4884($fp)
	lw $t1, -4876($fp)
	add $t0, $t0, $t1
	sw $t0, -4888($fp)
	lw $t0, -4888($fp)
	lw $t1, 0($t0)
	sw $t1, -4892($fp)
	li $t0, 6083
	sw $t0, -4896($fp)
	lw $t0, -4892($fp)
	lw $t1, -4896($fp)
	mul $t0, $t0, $t1
	sw $t0, -4900($fp)
	li $t0, 0
	sw $t0, -4904($fp)
	li $t0, 0
	sw $t0, -4908($fp)
	lw $t0, -1284($fp)
	sw $t0, -4912($fp)
	li $t0, 58608
	sw $t0, -4916($fp)
	lw $t1, -4912($fp)
	lw $t2, -4916($fp)
	bge $t1, $t2, label301
	j label302
label301:
	li $t0, 1
	sw $t0, -4908($fp)
label302:
	li $t0, 42852
	sw $t0, -4920($fp)
	lw $t1, -4908($fp)
	lw $t2, -4920($fp)
	bge $t1, $t2, label299
	j label300
label299:
	li $t0, 1
	sw $t0, -4904($fp)
label300:
	li $t0, 0
	sw $t0, -4924($fp)
	li $t0, 0
	sw $t0, -4928($fp)
	lw $t0, -4332($fp)
	sw $t0, -4932($fp)
	lw $t1, -4932($fp)
	li $t2, 0
	bne $t1, $t2, label306
	j label305
label305:
	li $t0, 1
	sw $t0, -4928($fp)
label306:
	li $t0, 49686
	sw $t0, -4936($fp)
	lw $t0, -4928($fp)
	lw $t1, -4936($fp)
	mul $t0, $t0, $t1
	sw $t0, -4940($fp)
	lw $t0, -900($fp)
	sw $t0, -4944($fp)
	li $t0, 0
	lw $t1, -4944($fp)
	sub $t0, $t0, $t1
	sw $t0, -4948($fp)
	lw $t0, -2388($fp)
	sw $t0, -4952($fp)
	lw $t0, -4948($fp)
	lw $t1, -4952($fp)
	sub $t0, $t0, $t1
	sw $t0, -4956($fp)
	addi $sp, $sp, -4
	lw $t0, -4940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4956($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4960($fp)
	addi $sp, $sp, 12
	li $t0, 27946
	sw $t0, -4964($fp)
	lw $t1, -4960($fp)
	lw $t2, -4964($fp)
	ble $t1, $t2, label303
	j label304
label303:
	li $t0, 1
	sw $t0, -4924($fp)
label304:
	addi $sp, $sp, -4
	lw $t0, -4904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4924($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4968($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -4972($fp)
	lw $t0, -2388($fp)
	sw $t0, -4976($fp)
	lw $t1, -4976($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label308
label307:
	li $t0, 1
	sw $t0, -4972($fp)
label308:
	li $t0, 0
	sw $t0, -4980($fp)
	lw $t0, -1992($fp)
	sw $t0, -4984($fp)
	lw $t0, -4984($fp)
	sw $t0, -4868($fp)
	lw $t0, -4868($fp)
	sw $t0, -4988($fp)
	li $t0, 0
	sw $t0, -4992($fp)
	lw $t0, -4856($fp)
	sw $t0, -4996($fp)
	li $t0, 53928
	sw $t0, -5000($fp)
	lw $t0, -4996($fp)
	lw $t1, -5000($fp)
	sub $t0, $t0, $t1
	sw $t0, -5004($fp)
	lw $t0, -588($fp)
	sw $t0, -5008($fp)
	lw $t1, -5004($fp)
	lw $t2, -5008($fp)
	blt $t1, $t2, label312
	j label313
label312:
	li $t0, 1
	sw $t0, -4992($fp)
label313:
	lw $t0, -4844($fp)
	sw $t0, -5012($fp)
	li $t0, 38572
	sw $t0, -5016($fp)
	lw $t0, -5016($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -5020($fp)
	addi $sp, $sp, -4
	lw $t0, -4988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5020($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5024($fp)
	addi $sp, $sp, 20
	lw $t1, -5024($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label311
label311:
	lw $t0, -2340($fp)
	sw $t0, -5028($fp)
	lw $t1, -5028($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label310
label309:
	li $t0, 1
	sw $t0, -4980($fp)
label310:
	addi $sp, $sp, -4
	lw $t0, -4900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4972($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4980($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5032($fp)
	addi $sp, $sp, 20
	lw $t0, -1992($fp)
	sw $t0, -5036($fp)
	lw $t0, -5036($fp)
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	sw $t0, -5040($fp)
	lw $t0, -1488($fp)
	sw $t0, -5044($fp)
	li $t0, 6371
	sw $t0, -5048($fp)
	lw $t0, -5044($fp)
	lw $t1, -5048($fp)
	mul $t0, $t0, $t1
	sw $t0, -5052($fp)
	lw $t0, -1752($fp)
	sw $t0, -5056($fp)
	lw $t0, -5052($fp)
	lw $t1, -5056($fp)
	mul $t0, $t0, $t1
	sw $t0, -5060($fp)
	li $t0, 7816
	sw $t0, -5064($fp)
	lw $t0, -5064($fp)
	sw $t0, -3068($fp)
	lw $t0, -3068($fp)
	sw $t0, -5068($fp)
	addi $t0, $fp, -192
	sw $t0, -5072($fp)
	lw $t0, -1524($fp)
	sw $t0, -5076($fp)
	li $t0, 4
	lw $t1, -5076($fp)
	mul $t0, $t0, $t1
	sw $t0, -5080($fp)
	lw $t0, -5080($fp)
	lw $t1, -5072($fp)
	add $t0, $t0, $t1
	sw $t0, -5084($fp)
	lw $t0, -5084($fp)
	lw $t1, 0($t0)
	sw $t1, -5088($fp)
	addi $sp, $sp, -4
	lw $t0, -5040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5088($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -5092($fp)
	addi $sp, $sp, 20
	lw $t0, -5032($fp)
	lw $t1, -5092($fp)
	mul $t0, $t0, $t1
	sw $t0, -5096($fp)
	li $t0, 1884
	sw $t0, -5100($fp)
	lw $t0, -5096($fp)
	lw $t1, -5100($fp)
	mul $t0, $t0, $t1
	sw $t0, -5104($fp)
	j label294
label296:
	j label287
label286:
	li $t0, 0
	sw $t0, -5108($fp)
	lw $t0, -900($fp)
	sw $t0, -5112($fp)
	lw $t0, -2328($fp)
	sw $t0, -5116($fp)
	li $t0, 39177
	sw $t0, -5120($fp)
	lw $t0, -5116($fp)
	lw $t1, -5120($fp)
	sub $t0, $t0, $t1
	sw $t0, -5124($fp)
	lw $t0, -1260($fp)
	sw $t0, -5128($fp)
	lw $t0, -5124($fp)
	lw $t1, -5128($fp)
	add $t0, $t0, $t1
	sw $t0, -5132($fp)
	lw $t0, -1248($fp)
	sw $t0, -5136($fp)
	lw $t0, -5136($fp)
	sw $t0, -3080($fp)
	lw $t0, -3080($fp)
	sw $t0, -5140($fp)
	li $t0, 1171
	sw $t0, -5144($fp)
	lw $t0, -2292($fp)
	sw $t0, -5148($fp)
	lw $t0, -5144($fp)
	lw $t1, -5148($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5152($fp)
	li $t0, 53321
	sw $t0, -5156($fp)
	lw $t0, -5152($fp)
	lw $t1, -5156($fp)
	add $t0, $t0, $t1
	sw $t0, -5160($fp)
	addi $sp, $sp, -4
	lw $t0, -5112($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5132($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5160($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5164($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -5164($fp)
	sub $t0, $t0, $t1
	sw $t0, -5168($fp)
	lw $t1, -5168($fp)
	li $t2, 0
	bne $t1, $t2, label315
	j label314
label314:
	li $t0, 1
	sw $t0, -5108($fp)
label315:
	li $t0, 0
	lw $t1, -5108($fp)
	sub $t0, $t0, $t1
	sw $t0, -5172($fp)
label287:
	addi $t0, $fp, -256
	sw $t0, -5176($fp)
	li $t0, 0
	sw $t0, -5180($fp)
	li $t0, 53013
	sw $t0, -5184($fp)
	lw $t1, -5184($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label321
label321:
	lw $t0, -4644($fp)
	sw $t0, -5188($fp)
	lw $t1, -5188($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label320
label319:
	li $t0, 1
	sw $t0, -5180($fp)
label320:
	li $t0, 4
	lw $t1, -5180($fp)
	mul $t0, $t0, $t1
	sw $t0, -5192($fp)
	lw $t0, -5192($fp)
	lw $t1, -5176($fp)
	add $t0, $t0, $t1
	sw $t0, -5196($fp)
	lw $t0, -5196($fp)
	lw $t1, 0($t0)
	sw $t1, -5200($fp)
	li $t0, 0
	sw $t0, -5204($fp)
	li $t0, 29320
	sw $t0, -5208($fp)
	lw $t0, -2208($fp)
	sw $t0, -5212($fp)
	lw $t0, -5208($fp)
	lw $t1, -5212($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5216($fp)
	lw $t0, -1260($fp)
	sw $t0, -5220($fp)
	lw $t0, -5216($fp)
	lw $t1, -5220($fp)
	sub $t0, $t0, $t1
	sw $t0, -5224($fp)
	li $t0, 64250
	sw $t0, -5228($fp)
	lw $t0, -2220($fp)
	sw $t0, -5232($fp)
	lw $t0, -5228($fp)
	lw $t1, -5232($fp)
	mul $t0, $t0, $t1
	sw $t0, -5236($fp)
	lw $t1, -5224($fp)
	lw $t2, -5236($fp)
	bge $t1, $t2, label322
	j label323
label322:
	li $t0, 1
	sw $t0, -5204($fp)
label323:
	lw $t1, -5200($fp)
	lw $t2, -5204($fp)
	bne $t1, $t2, label316
	j label317
label316:
	lw $t0, -1740($fp)
	sw $t0, -5240($fp)
	lw $t0, -1752($fp)
	sw $t0, -5244($fp)
	lw $t0, -5240($fp)
	lw $t1, -5244($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5248($fp)
	lw $t0, -1980($fp)
	sw $t0, -5252($fp)
	lw $t0, -5248($fp)
	lw $t1, -5252($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5256($fp)
	li $t0, 25231
	sw $t0, -5260($fp)
	lw $t0, -5256($fp)
	lw $t1, -5260($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5264($fp)
	lw $t0, -972($fp)
	sw $t0, -5268($fp)
	li $t0, 0
	lw $t1, -5268($fp)
	sub $t0, $t0, $t1
	sw $t0, -5272($fp)
	li $t0, 0
	lw $t1, -5272($fp)
	sub $t0, $t0, $t1
	sw $t0, -5276($fp)
	lw $t0, -5264($fp)
	lw $t1, -5276($fp)
	add $t0, $t0, $t1
	sw $t0, -5280($fp)
	addi $t0, $fp, -64
	sw $t0, -5284($fp)
	lw $t0, -2400($fp)
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
	lw $t0, -1284($fp)
	sw $t0, -5304($fp)
	lw $t0, -5300($fp)
	lw $t1, -5304($fp)
	add $t0, $t0, $t1
	sw $t0, -5308($fp)
	li $t0, 0
	sw $t0, -5312($fp)
	lw $t0, -2304($fp)
	sw $t0, -5316($fp)
	lw $t1, -5316($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label324
label324:
	li $t0, 1
	sw $t0, -5312($fp)
label325:
	lw $t0, -468($fp)
	sw $t0, -5320($fp)
	lw $t0, -5312($fp)
	lw $t1, -5320($fp)
	add $t0, $t0, $t1
	sw $t0, -5324($fp)
	addi $sp, $sp, -4
	lw $t0, -5308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5324($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5328($fp)
	addi $sp, $sp, 12
	lw $t0, -5280($fp)
	lw $t1, -5328($fp)
	sub $t0, $t0, $t1
	sw $t0, -5332($fp)
	j label318
label317:
label326:
	addi $t0, $fp, -192
	sw $t0, -5336($fp)
	lw $t0, -4644($fp)
	sw $t0, -5340($fp)
	li $t0, 4
	lw $t1, -5340($fp)
	mul $t0, $t0, $t1
	sw $t0, -5344($fp)
	lw $t0, -5344($fp)
	lw $t1, -5336($fp)
	add $t0, $t0, $t1
	sw $t0, -5348($fp)
	lw $t0, -5348($fp)
	lw $t1, 0($t0)
	sw $t1, -5352($fp)
	lw $t0, -2328($fp)
	sw $t0, -5356($fp)
	li $t0, 13287
	sw $t0, -5360($fp)
	lw $t0, -5356($fp)
	lw $t1, -5360($fp)
	add $t0, $t0, $t1
	sw $t0, -5364($fp)
	lw $t1, -5352($fp)
	lw $t2, -5364($fp)
	bgt $t1, $t2, label329
	j label328
label329:
	li $t0, 21742
	sw $t0, -5368($fp)
	lw $t1, -5368($fp)
	li $t2, 0
	bne $t1, $t2, label327
	j label328
label327:
	addi $t0, $fp, -100
	sw $t0, -5372($fp)
	lw $t0, -1284($fp)
	sw $t0, -5376($fp)
	li $t0, 4
	lw $t1, -5376($fp)
	mul $t0, $t0, $t1
	sw $t0, -5380($fp)
	lw $t0, -5380($fp)
	lw $t1, -5372($fp)
	add $t0, $t0, $t1
	sw $t0, -5384($fp)
	lw $t0, -5384($fp)
	lw $t1, 0($t0)
	sw $t1, -5388($fp)
	lw $t0, -600($fp)
	sw $t0, -5392($fp)
	lw $t0, -5388($fp)
	lw $t1, -5392($fp)
	mul $t0, $t0, $t1
	sw $t0, -5396($fp)
	li $t0, 30711
	sw $t0, -5400($fp)
	lw $t0, -5396($fp)
	lw $t1, -5400($fp)
	sub $t0, $t0, $t1
	sw $t0, -5404($fp)
	lw $t0, -5404($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -5408($fp)
	j label326
label328:
label318:
	addi $t0, $fp, -4076
	sw $t0, -5412($fp)
	li $t0, 0
	sw $t0, -5416($fp)
	li $t0, 4
	lw $t1, -5416($fp)
	mul $t0, $t0, $t1
	sw $t0, -5420($fp)
	lw $t0, -5420($fp)
	lw $t1, -5412($fp)
	add $t0, $t0, $t1
	sw $t0, -5424($fp)
	lw $t0, -5424($fp)
	lw $t1, 0($t0)
	sw $t1, -5428($fp)
	lw $t0, -5428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4076
	sw $t0, -5432($fp)
	li $t0, 1
	sw $t0, -5436($fp)
	li $t0, 4
	lw $t1, -5436($fp)
	mul $t0, $t0, $t1
	sw $t0, -5440($fp)
	lw $t0, -5440($fp)
	lw $t1, -5432($fp)
	add $t0, $t0, $t1
	sw $t0, -5444($fp)
	lw $t0, -5444($fp)
	lw $t1, 0($t0)
	sw $t1, -5448($fp)
	lw $t0, -5448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4076
	sw $t0, -5452($fp)
	li $t0, 2
	sw $t0, -5456($fp)
	li $t0, 4
	lw $t1, -5456($fp)
	mul $t0, $t0, $t1
	sw $t0, -5460($fp)
	lw $t0, -5460($fp)
	lw $t1, -5452($fp)
	add $t0, $t0, $t1
	sw $t0, -5464($fp)
	lw $t0, -5464($fp)
	lw $t1, 0($t0)
	sw $t1, -5468($fp)
	lw $t0, -5468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4076
	sw $t0, -5472($fp)
	li $t0, 3
	sw $t0, -5476($fp)
	li $t0, 4
	lw $t1, -5476($fp)
	mul $t0, $t0, $t1
	sw $t0, -5480($fp)
	lw $t0, -5480($fp)
	lw $t1, -5472($fp)
	add $t0, $t0, $t1
	sw $t0, -5484($fp)
	lw $t0, -5484($fp)
	lw $t1, 0($t0)
	sw $t1, -5488($fp)
	lw $t0, -5488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4076
	sw $t0, -5492($fp)
	li $t0, 4
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
	lw $t0, -5508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4076
	sw $t0, -5512($fp)
	li $t0, 5
	sw $t0, -5516($fp)
	li $t0, 4
	lw $t1, -5516($fp)
	mul $t0, $t0, $t1
	sw $t0, -5520($fp)
	lw $t0, -5520($fp)
	lw $t1, -5512($fp)
	add $t0, $t0, $t1
	sw $t0, -5524($fp)
	lw $t0, -5524($fp)
	lw $t1, 0($t0)
	sw $t1, -5528($fp)
	lw $t0, -5528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4076
	sw $t0, -5532($fp)
	li $t0, 6
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
	lw $t0, -5548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4076
	sw $t0, -5552($fp)
	li $t0, 7
	sw $t0, -5556($fp)
	li $t0, 4
	lw $t1, -5556($fp)
	mul $t0, $t0, $t1
	sw $t0, -5560($fp)
	lw $t0, -5560($fp)
	lw $t1, -5552($fp)
	add $t0, $t0, $t1
	sw $t0, -5564($fp)
	lw $t0, -5564($fp)
	lw $t1, 0($t0)
	sw $t1, -5568($fp)
	lw $t0, -5568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4320($fp)
	sw $t0, -5572($fp)
	lw $t0, -5572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4332($fp)
	sw $t0, -5576($fp)
	lw $t0, -5576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4344($fp)
	sw $t0, -5580($fp)
	lw $t0, -5580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4356($fp)
	sw $t0, -5584($fp)
	lw $t0, -5584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4104
	sw $t0, -5588($fp)
	li $t0, 0
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
	addi $t0, $fp, -4104
	sw $t0, -5608($fp)
	li $t0, 1
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
	addi $t0, $fp, -4104
	sw $t0, -5628($fp)
	li $t0, 2
	sw $t0, -5632($fp)
	li $t0, 4
	lw $t1, -5632($fp)
	mul $t0, $t0, $t1
	sw $t0, -5636($fp)
	lw $t0, -5636($fp)
	lw $t1, -5628($fp)
	add $t0, $t0, $t1
	sw $t0, -5640($fp)
	lw $t0, -5640($fp)
	lw $t1, 0($t0)
	sw $t1, -5644($fp)
	lw $t0, -5644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4104
	sw $t0, -5648($fp)
	li $t0, 3
	sw $t0, -5652($fp)
	li $t0, 4
	lw $t1, -5652($fp)
	mul $t0, $t0, $t1
	sw $t0, -5656($fp)
	lw $t0, -5656($fp)
	lw $t1, -5648($fp)
	add $t0, $t0, $t1
	sw $t0, -5660($fp)
	lw $t0, -5660($fp)
	lw $t1, 0($t0)
	sw $t1, -5664($fp)
	lw $t0, -5664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4104
	sw $t0, -5668($fp)
	li $t0, 4
	sw $t0, -5672($fp)
	li $t0, 4
	lw $t1, -5672($fp)
	mul $t0, $t0, $t1
	sw $t0, -5676($fp)
	lw $t0, -5676($fp)
	lw $t1, -5668($fp)
	add $t0, $t0, $t1
	sw $t0, -5680($fp)
	lw $t0, -5680($fp)
	lw $t1, 0($t0)
	sw $t1, -5684($fp)
	lw $t0, -5684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4104
	sw $t0, -5688($fp)
	li $t0, 5
	sw $t0, -5692($fp)
	li $t0, 4
	lw $t1, -5692($fp)
	mul $t0, $t0, $t1
	sw $t0, -5696($fp)
	lw $t0, -5696($fp)
	lw $t1, -5688($fp)
	add $t0, $t0, $t1
	sw $t0, -5700($fp)
	lw $t0, -5700($fp)
	lw $t1, 0($t0)
	sw $t1, -5704($fp)
	lw $t0, -5704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4104
	sw $t0, -5708($fp)
	li $t0, 6
	sw $t0, -5712($fp)
	li $t0, 4
	lw $t1, -5712($fp)
	mul $t0, $t0, $t1
	sw $t0, -5716($fp)
	lw $t0, -5716($fp)
	lw $t1, -5708($fp)
	add $t0, $t0, $t1
	sw $t0, -5720($fp)
	lw $t0, -5720($fp)
	lw $t1, 0($t0)
	sw $t1, -5724($fp)
	lw $t0, -5724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4536($fp)
	sw $t0, -5728($fp)
	lw $t0, -5728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4120
	sw $t0, -5732($fp)
	li $t0, 0
	sw $t0, -5736($fp)
	li $t0, 4
	lw $t1, -5736($fp)
	mul $t0, $t0, $t1
	sw $t0, -5740($fp)
	lw $t0, -5740($fp)
	lw $t1, -5732($fp)
	add $t0, $t0, $t1
	sw $t0, -5744($fp)
	lw $t0, -5744($fp)
	lw $t1, 0($t0)
	sw $t1, -5748($fp)
	lw $t0, -5748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4120
	sw $t0, -5752($fp)
	li $t0, 1
	sw $t0, -5756($fp)
	li $t0, 4
	lw $t1, -5756($fp)
	mul $t0, $t0, $t1
	sw $t0, -5760($fp)
	lw $t0, -5760($fp)
	lw $t1, -5752($fp)
	add $t0, $t0, $t1
	sw $t0, -5764($fp)
	lw $t0, -5764($fp)
	lw $t1, 0($t0)
	sw $t1, -5768($fp)
	lw $t0, -5768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4120
	sw $t0, -5772($fp)
	li $t0, 2
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
	lw $t0, -5788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4120
	sw $t0, -5792($fp)
	li $t0, 3
	sw $t0, -5796($fp)
	li $t0, 4
	lw $t1, -5796($fp)
	mul $t0, $t0, $t1
	sw $t0, -5800($fp)
	lw $t0, -5800($fp)
	lw $t1, -5792($fp)
	add $t0, $t0, $t1
	sw $t0, -5804($fp)
	lw $t0, -5804($fp)
	lw $t1, 0($t0)
	sw $t1, -5808($fp)
	lw $t0, -5808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4644($fp)
	sw $t0, -5812($fp)
	lw $t0, -5812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4656($fp)
	sw $t0, -5816($fp)
	lw $t0, -5816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4668($fp)
	sw $t0, -5820($fp)
	lw $t0, -5820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4680($fp)
	sw $t0, -5824($fp)
	lw $t0, -5824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5828($fp)
	li $t0, 0
	sw $t0, -5832($fp)
	li $t0, 0
	sw $t0, -5836($fp)
	lw $t0, -996($fp)
	sw $t0, -5840($fp)
	li $t0, 0
	lw $t1, -5840($fp)
	sub $t0, $t0, $t1
	sw $t0, -5844($fp)
	lw $t0, -2364($fp)
	sw $t0, -5848($fp)
	lw $t1, -5844($fp)
	lw $t2, -5848($fp)
	bge $t1, $t2, label334
	j label335
label334:
	li $t0, 1
	sw $t0, -5836($fp)
label335:
	li $t0, 11850
	sw $t0, -5852($fp)
	li $t0, 0
	lw $t1, -5852($fp)
	sub $t0, $t0, $t1
	sw $t0, -5856($fp)
	lw $t0, -4656($fp)
	sw $t0, -5860($fp)
	lw $t0, -5856($fp)
	lw $t1, -5860($fp)
	add $t0, $t0, $t1
	sw $t0, -5864($fp)
	lw $t1, -5836($fp)
	lw $t2, -5864($fp)
	blt $t1, $t2, label332
	j label333
label332:
	li $t0, 1
	sw $t0, -5832($fp)
label333:
	addi $t0, $fp, -4076
	sw $t0, -5868($fp)
	li $t0, 1
	sw $t0, -5872($fp)
	li $t0, 4
	lw $t1, -5872($fp)
	mul $t0, $t0, $t1
	sw $t0, -5876($fp)
	lw $t0, -5876($fp)
	lw $t1, -5868($fp)
	add $t0, $t0, $t1
	sw $t0, -5880($fp)
	lw $t0, -5880($fp)
	lw $t1, 0($t0)
	sw $t1, -5884($fp)
	li $t0, 0
	sw $t0, -5888($fp)
	lw $t0, -4356($fp)
	sw $t0, -5892($fp)
	lw $t1, -5892($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label336
label336:
	li $t0, 1
	sw $t0, -5888($fp)
label337:
	lw $t0, -5884($fp)
	lw $t1, -5888($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5896($fp)
	lw $t1, -5832($fp)
	lw $t2, -5896($fp)
	beq $t1, $t2, label330
	j label331
label330:
	li $t0, 1
	sw $t0, -5828($fp)
label331:
	lw $ra, -4($fp)
	lw $v0, -5828($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label338:
	li $t0, 59168
	sw $t0, -5900($fp)
	lw $t0, -2268($fp)
	sw $t0, -5904($fp)
	lw $t0, -5900($fp)
	lw $t1, -5904($fp)
	sub $t0, $t0, $t1
	sw $t0, -5908($fp)
	li $t0, 22183
	sw $t0, -5912($fp)
	lw $t0, -5908($fp)
	lw $t1, -5912($fp)
	add $t0, $t0, $t1
	sw $t0, -5916($fp)
	li $t0, 36037
	sw $t0, -5920($fp)
	li $t0, 24981
	sw $t0, -5924($fp)
	lw $t0, -5920($fp)
	lw $t1, -5924($fp)
	mul $t0, $t0, $t1
	sw $t0, -5928($fp)
	lw $t0, -5916($fp)
	lw $t1, -5928($fp)
	sub $t0, $t0, $t1
	sw $t0, -5932($fp)
	lw $t1, -5932($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label342
label342:
	li $t0, 30754
	sw $t0, -5936($fp)
	lw $t0, -2292($fp)
	sw $t0, -5940($fp)
	lw $t0, -5936($fp)
	lw $t1, -5940($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5944($fp)
	li $t0, 0
	lw $t1, -5944($fp)
	sub $t0, $t0, $t1
	sw $t0, -5948($fp)
	lw $t1, -5948($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label341
label341:
	lw $t0, -1200($fp)
	sw $t0, -5952($fp)
	lw $t0, -5952($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -5956($fp)
	li $t0, 22176
	sw $t0, -5960($fp)
	lw $t0, -5960($fp)
	sw $t0, -2376($fp)
	lw $t0, -2376($fp)
	sw $t0, -5964($fp)
	addi $sp, $sp, -4
	lw $t0, -5956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5964($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5968($fp)
	addi $sp, $sp, 12
	li $t0, 63553
	sw $t0, -5972($fp)
	lw $t0, -5968($fp)
	lw $t1, -5972($fp)
	add $t0, $t0, $t1
	sw $t0, -5976($fp)
	lw $t1, -5976($fp)
	li $t2, 0
	bne $t1, $t2, label339
	j label340
label339:
label343:
	addi $t0, $fp, -36
	sw $t0, -5980($fp)
	lw $t0, -4680($fp)
	sw $t0, -5984($fp)
	li $t0, 49179
	sw $t0, -5988($fp)
	lw $t0, -5984($fp)
	lw $t1, -5988($fp)
	sub $t0, $t0, $t1
	sw $t0, -5992($fp)
	li $t0, 0
	sw $t0, -5996($fp)
	lw $t0, -2316($fp)
	sw $t0, -6000($fp)
	lw $t0, -2364($fp)
	sw $t0, -6004($fp)
	lw $t0, -6000($fp)
	lw $t1, -6004($fp)
	mul $t0, $t0, $t1
	sw $t0, -6008($fp)
	li $t0, 12218
	sw $t0, -6012($fp)
	lw $t1, -6008($fp)
	lw $t2, -6012($fp)
	ble $t1, $t2, label346
	j label347
label346:
	li $t0, 1
	sw $t0, -5996($fp)
label347:
	li $t0, 0
	sw $t0, -6016($fp)
	li $t0, 6327
	sw $t0, -6020($fp)
	lw $t0, -4668($fp)
	sw $t0, -6024($fp)
	lw $t0, -6020($fp)
	lw $t1, -6024($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6028($fp)
	li $t0, 25963
	sw $t0, -6032($fp)
	lw $t1, -6028($fp)
	lw $t2, -6032($fp)
	bge $t1, $t2, label348
	j label349
label348:
	li $t0, 1
	sw $t0, -6016($fp)
label349:
	li $t0, 0
	sw $t0, -6036($fp)
	li $t0, 19146
	sw $t0, -6040($fp)
	lw $t1, -6040($fp)
	li $t2, 0
	bne $t1, $t2, label352
	j label351
label352:
	lw $t0, -984($fp)
	sw $t0, -6044($fp)
	lw $t1, -6044($fp)
	li $t2, 0
	bne $t1, $t2, label350
	j label351
label350:
	li $t0, 1
	sw $t0, -6036($fp)
label351:
	addi $sp, $sp, -4
	lw $t0, -5992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5996($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6036($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6048($fp)
	addi $sp, $sp, 20
	lw $t0, -6048($fp)
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	sw $t0, -6052($fp)
	li $t0, 4
	lw $t1, -6052($fp)
	mul $t0, $t0, $t1
	sw $t0, -6056($fp)
	lw $t0, -6056($fp)
	lw $t1, -5980($fp)
	add $t0, $t0, $t1
	sw $t0, -6060($fp)
	lw $t0, -6060($fp)
	lw $t1, 0($t0)
	sw $t1, -6064($fp)
	lw $t1, -6064($fp)
	li $t2, 0
	bne $t1, $t2, label344
	j label345
label344:
label353:
	li $t0, 0
	sw $t0, -6068($fp)
	lw $t0, -1248($fp)
	sw $t0, -6072($fp)
	li $t0, 51244
	sw $t0, -6076($fp)
	lw $t0, -6072($fp)
	lw $t1, -6076($fp)
	mul $t0, $t0, $t1
	sw $t0, -6080($fp)
	li $t0, 30184
	sw $t0, -6084($fp)
	lw $t1, -6080($fp)
	lw $t2, -6084($fp)
	bgt $t1, $t2, label356
	j label357
label356:
	li $t0, 1
	sw $t0, -6068($fp)
label357:
	addi $t0, $fp, -4104
	sw $t0, -6088($fp)
	li $t0, 4
	sw $t0, -6092($fp)
	li $t0, 4
	lw $t1, -6092($fp)
	mul $t0, $t0, $t1
	sw $t0, -6096($fp)
	lw $t0, -6096($fp)
	lw $t1, -6088($fp)
	add $t0, $t0, $t1
	sw $t0, -6100($fp)
	lw $t0, -6100($fp)
	lw $t1, 0($t0)
	sw $t1, -6104($fp)
	li $t0, 23006
	sw $t0, -6108($fp)
	li $t0, 29501
	sw $t0, -6112($fp)
	lw $t0, -6108($fp)
	lw $t1, -6112($fp)
	add $t0, $t0, $t1
	sw $t0, -6116($fp)
	lw $t0, -1764($fp)
	sw $t0, -6120($fp)
	lw $t0, -6116($fp)
	lw $t1, -6120($fp)
	sub $t0, $t0, $t1
	sw $t0, -6124($fp)
	addi $t0, $fp, -192
	sw $t0, -6128($fp)
	li $t0, 3
	sw $t0, -6132($fp)
	li $t0, 4
	lw $t1, -6132($fp)
	mul $t0, $t0, $t1
	sw $t0, -6136($fp)
	lw $t0, -6136($fp)
	lw $t1, -6128($fp)
	add $t0, $t0, $t1
	sw $t0, -6140($fp)
	lw $t0, -6140($fp)
	lw $t1, 0($t0)
	sw $t1, -6144($fp)
	addi $t0, $fp, -2724
	sw $t0, -6148($fp)
	lw $t0, -912($fp)
	sw $t0, -6152($fp)
	li $t0, 4
	lw $t1, -6152($fp)
	mul $t0, $t0, $t1
	sw $t0, -6156($fp)
	lw $t0, -6156($fp)
	lw $t1, -6148($fp)
	add $t0, $t0, $t1
	sw $t0, -6160($fp)
	lw $t0, -6160($fp)
	lw $t1, 0($t0)
	sw $t1, -6164($fp)
	li $t0, 0
	lw $t1, -6164($fp)
	sub $t0, $t0, $t1
	sw $t0, -6168($fp)
	li $t0, 0
	sw $t0, -6172($fp)
	addi $t0, $fp, -100
	sw $t0, -6176($fp)
	lw $t0, -900($fp)
	sw $t0, -6180($fp)
	li $t0, 4
	lw $t1, -6180($fp)
	mul $t0, $t0, $t1
	sw $t0, -6184($fp)
	lw $t0, -6184($fp)
	lw $t1, -6176($fp)
	add $t0, $t0, $t1
	sw $t0, -6188($fp)
	lw $t0, -6188($fp)
	lw $t1, 0($t0)
	sw $t1, -6192($fp)
	lw $t1, -6192($fp)
	li $t2, 0
	bne $t1, $t2, label359
	j label358
label358:
	li $t0, 1
	sw $t0, -6172($fp)
label359:
	li $t0, 52300
	sw $t0, -6196($fp)
	lw $t0, -6196($fp)
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	sw $t0, -6200($fp)
	li $t0, 57146
	sw $t0, -6204($fp)
	lw $t0, -4344($fp)
	sw $t0, -6208($fp)
	lw $t0, -6204($fp)
	lw $t1, -6208($fp)
	sub $t0, $t0, $t1
	sw $t0, -6212($fp)
	li $t0, 0
	sw $t0, -6216($fp)
	lw $t0, -468($fp)
	sw $t0, -6220($fp)
	lw $t1, -6220($fp)
	li $t2, 0
	bne $t1, $t2, label360
	j label361
label360:
	li $t0, 1
	sw $t0, -6216($fp)
label361:
	li $t0, 0
	sw $t0, -6224($fp)
	li $t0, 0
	sw $t0, -6228($fp)
	li $t0, 0
	sw $t0, -6232($fp)
	lw $t0, -1728($fp)
	sw $t0, -6236($fp)
	lw $t0, -2364($fp)
	sw $t0, -6240($fp)
	lw $t0, -6236($fp)
	lw $t1, -6240($fp)
	sub $t0, $t0, $t1
	sw $t0, -6244($fp)
	lw $t0, -2304($fp)
	sw $t0, -6248($fp)
	lw $t1, -6244($fp)
	lw $t2, -6248($fp)
	blt $t1, $t2, label367
	j label368
label367:
	li $t0, 1
	sw $t0, -6232($fp)
label368:
	li $t0, 0
	sw $t0, -6252($fp)
	li $t0, 0
	sw $t0, -6256($fp)
	li $t0, 55262
	sw $t0, -6260($fp)
	lw $t0, -948($fp)
	sw $t0, -6264($fp)
	lw $t1, -6260($fp)
	lw $t2, -6264($fp)
	bge $t1, $t2, label371
	j label372
label371:
	li $t0, 1
	sw $t0, -6256($fp)
label372:
	li $t0, 51129
	sw $t0, -6268($fp)
	lw $t1, -6256($fp)
	lw $t2, -6268($fp)
	beq $t1, $t2, label369
	j label370
label369:
	li $t0, 1
	sw $t0, -6252($fp)
label370:
	addi $sp, $sp, -4
	lw $t0, -6232($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6252($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6272($fp)
	addi $sp, $sp, 12
	lw $t1, -6272($fp)
	li $t2, 0
	bne $t1, $t2, label366
	j label365
label365:
	li $t0, 1
	sw $t0, -6228($fp)
label366:
	li $t0, 0
	sw $t0, -6276($fp)
	lw $t0, -1284($fp)
	sw $t0, -6280($fp)
	li $t0, 65065
	sw $t0, -6284($fp)
	lw $t0, -6280($fp)
	lw $t1, -6284($fp)
	mul $t0, $t0, $t1
	sw $t0, -6288($fp)
	lw $t0, -4536($fp)
	sw $t0, -6292($fp)
	lw $t1, -6288($fp)
	lw $t2, -6292($fp)
	bne $t1, $t2, label373
	j label374
label373:
	li $t0, 1
	sw $t0, -6276($fp)
label374:
	addi $sp, $sp, -4
	lw $t0, -6228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6276($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6296($fp)
	addi $sp, $sp, 12
	lw $t1, -6296($fp)
	li $t2, 0
	bne $t1, $t2, label362
	j label364
label364:
	li $t0, 5901
	sw $t0, -6300($fp)
	lw $t1, -6300($fp)
	li $t2, 0
	bne $t1, $t2, label362
	j label363
label362:
	li $t0, 1
	sw $t0, -6224($fp)
label363:
	addi $sp, $sp, -4
	lw $t0, -6216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6224($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6304($fp)
	addi $sp, $sp, 12
	lw $t0, -2732($fp)
	sw $t0, -6308($fp)
	li $t0, 43313
	sw $t0, -6312($fp)
	lw $t0, -6308($fp)
	lw $t1, -6312($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6316($fp)
	li $t0, 0
	lw $t1, -6316($fp)
	sub $t0, $t0, $t1
	sw $t0, -6320($fp)
	addi $sp, $sp, -4
	lw $t0, -6200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6320($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6324($fp)
	addi $sp, $sp, 20
	addi $sp, $sp, -4
	lw $t0, -6144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6324($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6328($fp)
	addi $sp, $sp, 20
	li $t0, 39777
	sw $t0, -6332($fp)
	lw $t0, -6328($fp)
	lw $t1, -6332($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6336($fp)
	addi $sp, $sp, -4
	lw $t0, -6068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6336($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6340($fp)
	addi $sp, $sp, 20
	lw $t1, -6340($fp)
	li $t2, 0
	bne $t1, $t2, label355
	j label354
label354:
	addi $t0, $fp, -2724
	sw $t0, -6344($fp)
	li $t0, 0
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
	addi $t0, $fp, -52
	sw $t0, -6364($fp)
	lw $t0, -1224($fp)
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
	li $t0, 0
	lw $t1, -6380($fp)
	sub $t0, $t0, $t1
	sw $t0, -6384($fp)
	lw $t0, -6360($fp)
	lw $t1, -6384($fp)
	mul $t0, $t0, $t1
	sw $t0, -6388($fp)
	li $t0, 0
	lw $t1, -6388($fp)
	sub $t0, $t0, $t1
	sw $t0, -6392($fp)
	lw $t0, -2340($fp)
	sw $t0, -6396($fp)
	li $t0, 0
	sw $t0, -6400($fp)
	addi $t0, $fp, -64
	sw $t0, -6404($fp)
	li $t0, 2
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
	li $t0, 61454
	sw $t0, -6424($fp)
	lw $t1, -6420($fp)
	lw $t2, -6424($fp)
	bne $t1, $t2, label375
	j label376
label375:
	li $t0, 1
	sw $t0, -6400($fp)
label376:
	lw $t0, -1236($fp)
	sw $t0, -6428($fp)
	lw $t0, -2208($fp)
	sw $t0, -6432($fp)
	lw $t0, -6428($fp)
	lw $t1, -6432($fp)
	sub $t0, $t0, $t1
	sw $t0, -6436($fp)
	addi $t0, $fp, -4076
	sw $t0, -6440($fp)
	lw $t0, -996($fp)
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
	lw $t0, -480($fp)
	sw $t0, -6460($fp)
	lw $t0, -6456($fp)
	lw $t1, -6460($fp)
	add $t0, $t0, $t1
	sw $t0, -6464($fp)
	li $t0, 0
	sw $t0, -6468($fp)
	li $t0, 0
	sw $t0, -6472($fp)
	li $t0, 56170
	sw $t0, -6476($fp)
	li $t0, 41776
	sw $t0, -6480($fp)
	lw $t1, -6476($fp)
	lw $t2, -6480($fp)
	bge $t1, $t2, label379
	j label380
label379:
	li $t0, 1
	sw $t0, -6472($fp)
label380:
	li $t0, 30700
	sw $t0, -6484($fp)
	lw $t1, -6472($fp)
	lw $t2, -6484($fp)
	bgt $t1, $t2, label377
	j label378
label377:
	li $t0, 1
	sw $t0, -6468($fp)
label378:
	addi $sp, $sp, -4
	lw $t0, -6400($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6468($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -6488($fp)
	addi $sp, $sp, 20
	lw $t0, -600($fp)
	sw $t0, -6492($fp)
	lw $t0, -6488($fp)
	lw $t1, -6492($fp)
	mul $t0, $t0, $t1
	sw $t0, -6496($fp)
	addi $sp, $sp, -4
	lw $t0, -6396($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6496($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6500($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -6500($fp)
	sub $t0, $t0, $t1
	sw $t0, -6504($fp)
	lw $t0, -6392($fp)
	lw $t1, -6504($fp)
	sub $t0, $t0, $t1
	sw $t0, -6508($fp)
	j label353
label355:
	j label343
label345:
	j label338
label340:
	addi $t0, $fp, -4076
	sw $t0, -6512($fp)
	li $t0, 0
	sw $t0, -6516($fp)
	li $t0, 4
	lw $t1, -6516($fp)
	mul $t0, $t0, $t1
	sw $t0, -6520($fp)
	lw $t0, -6520($fp)
	lw $t1, -6512($fp)
	add $t0, $t0, $t1
	sw $t0, -6524($fp)
	lw $t0, -6524($fp)
	lw $t1, 0($t0)
	sw $t1, -6528($fp)
	lw $t0, -6528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4076
	sw $t0, -6532($fp)
	li $t0, 1
	sw $t0, -6536($fp)
	li $t0, 4
	lw $t1, -6536($fp)
	mul $t0, $t0, $t1
	sw $t0, -6540($fp)
	lw $t0, -6540($fp)
	lw $t1, -6532($fp)
	add $t0, $t0, $t1
	sw $t0, -6544($fp)
	lw $t0, -6544($fp)
	lw $t1, 0($t0)
	sw $t1, -6548($fp)
	lw $t0, -6548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4076
	sw $t0, -6552($fp)
	li $t0, 2
	sw $t0, -6556($fp)
	li $t0, 4
	lw $t1, -6556($fp)
	mul $t0, $t0, $t1
	sw $t0, -6560($fp)
	lw $t0, -6560($fp)
	lw $t1, -6552($fp)
	add $t0, $t0, $t1
	sw $t0, -6564($fp)
	lw $t0, -6564($fp)
	lw $t1, 0($t0)
	sw $t1, -6568($fp)
	lw $t0, -6568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4076
	sw $t0, -6572($fp)
	li $t0, 3
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
	lw $t0, -6588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4076
	sw $t0, -6592($fp)
	li $t0, 4
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
	lw $t0, -6608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4076
	sw $t0, -6612($fp)
	li $t0, 5
	sw $t0, -6616($fp)
	li $t0, 4
	lw $t1, -6616($fp)
	mul $t0, $t0, $t1
	sw $t0, -6620($fp)
	lw $t0, -6620($fp)
	lw $t1, -6612($fp)
	add $t0, $t0, $t1
	sw $t0, -6624($fp)
	lw $t0, -6624($fp)
	lw $t1, 0($t0)
	sw $t1, -6628($fp)
	lw $t0, -6628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4076
	sw $t0, -6632($fp)
	li $t0, 6
	sw $t0, -6636($fp)
	li $t0, 4
	lw $t1, -6636($fp)
	mul $t0, $t0, $t1
	sw $t0, -6640($fp)
	lw $t0, -6640($fp)
	lw $t1, -6632($fp)
	add $t0, $t0, $t1
	sw $t0, -6644($fp)
	lw $t0, -6644($fp)
	lw $t1, 0($t0)
	sw $t1, -6648($fp)
	lw $t0, -6648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4076
	sw $t0, -6652($fp)
	li $t0, 7
	sw $t0, -6656($fp)
	li $t0, 4
	lw $t1, -6656($fp)
	mul $t0, $t0, $t1
	sw $t0, -6660($fp)
	lw $t0, -6660($fp)
	lw $t1, -6652($fp)
	add $t0, $t0, $t1
	sw $t0, -6664($fp)
	lw $t0, -6664($fp)
	lw $t1, 0($t0)
	sw $t1, -6668($fp)
	lw $t0, -6668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4320($fp)
	sw $t0, -6672($fp)
	lw $t0, -6672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4332($fp)
	sw $t0, -6676($fp)
	lw $t0, -6676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4344($fp)
	sw $t0, -6680($fp)
	lw $t0, -6680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4356($fp)
	sw $t0, -6684($fp)
	lw $t0, -6684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4104
	sw $t0, -6688($fp)
	li $t0, 0
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
	addi $t0, $fp, -4104
	sw $t0, -6708($fp)
	li $t0, 1
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
	addi $t0, $fp, -4104
	sw $t0, -6728($fp)
	li $t0, 2
	sw $t0, -6732($fp)
	li $t0, 4
	lw $t1, -6732($fp)
	mul $t0, $t0, $t1
	sw $t0, -6736($fp)
	lw $t0, -6736($fp)
	lw $t1, -6728($fp)
	add $t0, $t0, $t1
	sw $t0, -6740($fp)
	lw $t0, -6740($fp)
	lw $t1, 0($t0)
	sw $t1, -6744($fp)
	lw $t0, -6744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4104
	sw $t0, -6748($fp)
	li $t0, 3
	sw $t0, -6752($fp)
	li $t0, 4
	lw $t1, -6752($fp)
	mul $t0, $t0, $t1
	sw $t0, -6756($fp)
	lw $t0, -6756($fp)
	lw $t1, -6748($fp)
	add $t0, $t0, $t1
	sw $t0, -6760($fp)
	lw $t0, -6760($fp)
	lw $t1, 0($t0)
	sw $t1, -6764($fp)
	lw $t0, -6764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4104
	sw $t0, -6768($fp)
	li $t0, 4
	sw $t0, -6772($fp)
	li $t0, 4
	lw $t1, -6772($fp)
	mul $t0, $t0, $t1
	sw $t0, -6776($fp)
	lw $t0, -6776($fp)
	lw $t1, -6768($fp)
	add $t0, $t0, $t1
	sw $t0, -6780($fp)
	lw $t0, -6780($fp)
	lw $t1, 0($t0)
	sw $t1, -6784($fp)
	lw $t0, -6784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4104
	sw $t0, -6788($fp)
	li $t0, 5
	sw $t0, -6792($fp)
	li $t0, 4
	lw $t1, -6792($fp)
	mul $t0, $t0, $t1
	sw $t0, -6796($fp)
	lw $t0, -6796($fp)
	lw $t1, -6788($fp)
	add $t0, $t0, $t1
	sw $t0, -6800($fp)
	lw $t0, -6800($fp)
	lw $t1, 0($t0)
	sw $t1, -6804($fp)
	lw $t0, -6804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4104
	sw $t0, -6808($fp)
	li $t0, 6
	sw $t0, -6812($fp)
	li $t0, 4
	lw $t1, -6812($fp)
	mul $t0, $t0, $t1
	sw $t0, -6816($fp)
	lw $t0, -6816($fp)
	lw $t1, -6808($fp)
	add $t0, $t0, $t1
	sw $t0, -6820($fp)
	lw $t0, -6820($fp)
	lw $t1, 0($t0)
	sw $t1, -6824($fp)
	lw $t0, -6824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4536($fp)
	sw $t0, -6828($fp)
	lw $t0, -6828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4120
	sw $t0, -6832($fp)
	li $t0, 0
	sw $t0, -6836($fp)
	li $t0, 4
	lw $t1, -6836($fp)
	mul $t0, $t0, $t1
	sw $t0, -6840($fp)
	lw $t0, -6840($fp)
	lw $t1, -6832($fp)
	add $t0, $t0, $t1
	sw $t0, -6844($fp)
	lw $t0, -6844($fp)
	lw $t1, 0($t0)
	sw $t1, -6848($fp)
	lw $t0, -6848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4120
	sw $t0, -6852($fp)
	li $t0, 1
	sw $t0, -6856($fp)
	li $t0, 4
	lw $t1, -6856($fp)
	mul $t0, $t0, $t1
	sw $t0, -6860($fp)
	lw $t0, -6860($fp)
	lw $t1, -6852($fp)
	add $t0, $t0, $t1
	sw $t0, -6864($fp)
	lw $t0, -6864($fp)
	lw $t1, 0($t0)
	sw $t1, -6868($fp)
	lw $t0, -6868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -4120
	sw $t0, -6872($fp)
	li $t0, 2
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
	addi $t0, $fp, -4120
	sw $t0, -6892($fp)
	li $t0, 3
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
	lw $t0, -4644($fp)
	sw $t0, -6912($fp)
	lw $t0, -6912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4656($fp)
	sw $t0, -6916($fp)
	lw $t0, -6916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4668($fp)
	sw $t0, -6920($fp)
	lw $t0, -6920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4680($fp)
	sw $t0, -6924($fp)
	lw $t0, -6924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6928($fp)
	li $t0, 48847
	sw $t0, -6932($fp)
	li $t0, 0
	lw $t1, -6932($fp)
	sub $t0, $t0, $t1
	sw $t0, -6936($fp)
	lw $t1, -6936($fp)
	li $t2, 0
	bne $t1, $t2, label381
	j label382
label381:
	li $t0, 1
	sw $t0, -6928($fp)
label382:
	lw $ra, -4($fp)
	lw $v0, -6928($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label383:
	addi $t0, $fp, -64
	sw $t0, -6940($fp)
	li $t0, 0
	sw $t0, -6944($fp)
	li $t0, 64775
	sw $t0, -6948($fp)
	lw $t1, -6948($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label389
label389:
	li $t0, 15064
	sw $t0, -6952($fp)
	lw $t1, -6952($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label388
label387:
	li $t0, 1
	sw $t0, -6944($fp)
label388:
	li $t0, 4
	lw $t1, -6944($fp)
	mul $t0, $t0, $t1
	sw $t0, -6956($fp)
	lw $t0, -6956($fp)
	lw $t1, -6940($fp)
	add $t0, $t0, $t1
	sw $t0, -6960($fp)
	lw $t0, -6960($fp)
	lw $t1, 0($t0)
	sw $t1, -6964($fp)
	addi $t0, $fp, -132
	sw $t0, -6968($fp)
	lw $t0, -2004($fp)
	sw $t0, -6972($fp)
	li $t0, 4
	lw $t1, -6972($fp)
	mul $t0, $t0, $t1
	sw $t0, -6976($fp)
	lw $t0, -6976($fp)
	lw $t1, -6968($fp)
	add $t0, $t0, $t1
	sw $t0, -6980($fp)
	lw $t0, -6980($fp)
	lw $t1, 0($t0)
	sw $t1, -6984($fp)
	lw $t1, -6964($fp)
	lw $t2, -6984($fp)
	bne $t1, $t2, label384
	j label386
label386:
	li $t0, 55174
	sw $t0, -6988($fp)
	lw $t0, -1980($fp)
	sw $t0, -6992($fp)
	lw $t1, -6988($fp)
	lw $t2, -6992($fp)
	bgt $t1, $t2, label384
	j label385
label384:
	li $t0, 25202
	sw $t0, -6996($fp)
	li $t0, 0
	sw $t0, -7000($fp)
	li $t0, 26811
	sw $t0, -7004($fp)
	li $t0, 28543
	sw $t0, -7008($fp)
	lw $t1, -7004($fp)
	lw $t2, -7008($fp)
	bne $t1, $t2, label395
	j label394
label395:
	li $t0, 54109
	sw $t0, -7012($fp)
	lw $t1, -7012($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label394
label393:
	li $t0, 1
	sw $t0, -7000($fp)
label394:
	li $t0, 0
	sw $t0, -7016($fp)
	li $t0, 0
	sw $t0, -7020($fp)
	li $t0, 38817
	sw $t0, -7024($fp)
	lw $t0, -4680($fp)
	sw $t0, -7028($fp)
	lw $t1, -7024($fp)
	lw $t2, -7028($fp)
	blt $t1, $t2, label398
	j label399
label398:
	li $t0, 1
	sw $t0, -7020($fp)
label399:
	li $t0, 2979
	sw $t0, -7032($fp)
	lw $t1, -7020($fp)
	lw $t2, -7032($fp)
	beq $t1, $t2, label396
	j label397
label396:
	li $t0, 1
	sw $t0, -7016($fp)
label397:
	lw $t0, -936($fp)
	sw $t0, -7036($fp)
	li $t0, 27282
	sw $t0, -7040($fp)
	addi $sp, $sp, -4
	lw $t0, -7000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7036($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7040($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7044($fp)
	addi $sp, $sp, 20
	lw $t1, -6996($fp)
	lw $t2, -7044($fp)
	beq $t1, $t2, label390
	j label391
label390:
	li $t0, 0
	sw $t0, -7048($fp)
	addi $t0, $fp, -100
	sw $t0, -7052($fp)
	li $t0, 0
	sw $t0, -7056($fp)
	li $t0, 4
	lw $t1, -7056($fp)
	mul $t0, $t0, $t1
	sw $t0, -7060($fp)
	lw $t0, -7060($fp)
	lw $t1, -7052($fp)
	add $t0, $t0, $t1
	sw $t0, -7064($fp)
	lw $t0, -7064($fp)
	lw $t1, 0($t0)
	sw $t1, -7068($fp)
	lw $t1, -7068($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label401
label402:
	lw $t0, -996($fp)
	sw $t0, -7072($fp)
	li $t0, 40873
	sw $t0, -7076($fp)
	lw $t1, -7072($fp)
	lw $t2, -7076($fp)
	ble $t1, $t2, label400
	j label401
label400:
	li $t0, 1
	sw $t0, -7048($fp)
label401:
	lw $t0, -7048($fp)
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -7080($fp)
	j label392
label391:
	li $t0, 0
	sw $t0, -7084($fp)
	li $t0, 0
	sw $t0, -7088($fp)
	lw $t0, -2208($fp)
	sw $t0, -7092($fp)
	lw $t0, -468($fp)
	sw $t0, -7096($fp)
	li $t0, 26398
	sw $t0, -7100($fp)
	lw $t0, -7096($fp)
	lw $t1, -7100($fp)
	mul $t0, $t0, $t1
	sw $t0, -7104($fp)
	lw $t0, -7092($fp)
	lw $t1, -7104($fp)
	sub $t0, $t0, $t1
	sw $t0, -7108($fp)
	li $t0, 0
	sw $t0, -7112($fp)
	lw $t0, -4644($fp)
	sw $t0, -7116($fp)
	lw $t1, -7116($fp)
	li $t2, 0
	bne $t1, $t2, label408
	j label407
label407:
	li $t0, 1
	sw $t0, -7112($fp)
label408:
	lw $t1, -7108($fp)
	lw $t2, -7112($fp)
	bge $t1, $t2, label405
	j label406
label405:
	li $t0, 1
	sw $t0, -7088($fp)
label406:
	li $t0, 0
	sw $t0, -7120($fp)
	lw $t0, -4332($fp)
	sw $t0, -7124($fp)
	lw $t1, -7124($fp)
	li $t2, 0
	bne $t1, $t2, label410
	j label409
label409:
	li $t0, 1
	sw $t0, -7120($fp)
label410:
	lw $t1, -7088($fp)
	lw $t2, -7120($fp)
	beq $t1, $t2, label403
	j label404
label403:
	li $t0, 1
	sw $t0, -7084($fp)
label404:
label392:
	j label383
label385:
	j label266
label265:
	li $t0, 50941
	sw $t0, -7128($fp)
	lw $t0, -2304($fp)
	sw $t0, -7132($fp)
	li $t0, 0
	lw $t1, -7132($fp)
	sub $t0, $t0, $t1
	sw $t0, -7136($fp)
	li $t0, 0
	lw $t1, -7136($fp)
	sub $t0, $t0, $t1
	sw $t0, -7140($fp)
	lw $t0, -7128($fp)
	lw $t1, -7140($fp)
	sub $t0, $t0, $t1
	sw $t0, -7144($fp)
	li $t0, 0
	sw $t0, -7148($fp)
	li $t0, 15115
	sw $t0, -7152($fp)
	lw $t1, -7152($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label411
label411:
	li $t0, 1
	sw $t0, -7148($fp)
label412:
	lw $t0, -7144($fp)
	lw $t1, -7148($fp)
	add $t0, $t0, $t1
	sw $t0, -7156($fp)
	lw $ra, -4($fp)
	lw $v0, -7156($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label266:
label413:
	addi $t0, $fp, -2688
	sw $t0, -7160($fp)
	li $t0, 0
	sw $t0, -7164($fp)
	li $t0, 49404
	sw $t0, -7168($fp)
	lw $t0, -960($fp)
	sw $t0, -7172($fp)
	lw $t0, -7168($fp)
	lw $t1, -7172($fp)
	add $t0, $t0, $t1
	sw $t0, -7176($fp)
	lw $t1, -7176($fp)
	li $t2, 0
	bne $t1, $t2, label418
	j label417
label418:
	li $t0, 14906
	sw $t0, -7180($fp)
	lw $t1, -7180($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label417
label416:
	li $t0, 1
	sw $t0, -7164($fp)
label417:
	li $t0, 4
	lw $t1, -7164($fp)
	mul $t0, $t0, $t1
	sw $t0, -7184($fp)
	lw $t0, -7184($fp)
	lw $t1, -7160($fp)
	add $t0, $t0, $t1
	sw $t0, -7188($fp)
	lw $t0, -7188($fp)
	lw $t1, 0($t0)
	sw $t1, -7192($fp)
	li $t0, 14588
	sw $t0, -7196($fp)
	lw $t0, -7192($fp)
	lw $t1, -7196($fp)
	sub $t0, $t0, $t1
	sw $t0, -7200($fp)
	lw $t1, -7200($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label415
label414:
	li $t0, 20161
	sw $t0, -7216($fp)
	lw $t0, -7216($fp)
	sw $t0, -7220($fp)
	lw $t0, -7220($fp)
	sw $t0, -7224($fp)
	li $t0, 614
	sw $t0, -7228($fp)
	addi $t0, $fp, -7212
	sw $t0, -7232($fp)
	li $t0, 0
	sw $t0, -7236($fp)
	lw $t0, -7236($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7240($fp)
	lw $t0, -7232($fp)
	lw $t1, -7240($fp)
	add $t0, $t0, $t1
	sw $t0, -7244($fp)
	lw $t0, -7228($fp)
	lw $t1, -7244($fp)
	sw $t0, 0($t1)
	lw $t0, -7244($fp)
	lw $t1, 0($t0)
	sw $t1, -7248($fp)
	li $t0, 44772
	sw $t0, -7252($fp)
	addi $t0, $fp, -7212
	sw $t0, -7256($fp)
	li $t0, 1
	sw $t0, -7260($fp)
	lw $t0, -7260($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7264($fp)
	lw $t0, -7256($fp)
	lw $t1, -7264($fp)
	add $t0, $t0, $t1
	sw $t0, -7268($fp)
	lw $t0, -7252($fp)
	lw $t1, -7268($fp)
	sw $t0, 0($t1)
	lw $t0, -7268($fp)
	lw $t1, 0($t0)
	sw $t1, -7272($fp)
	li $t0, 2769
	sw $t0, -7276($fp)
	addi $t0, $fp, -7212
	sw $t0, -7280($fp)
	li $t0, 2
	sw $t0, -7284($fp)
	lw $t0, -7284($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7288($fp)
	lw $t0, -7280($fp)
	lw $t1, -7288($fp)
	add $t0, $t0, $t1
	sw $t0, -7292($fp)
	lw $t0, -7276($fp)
	lw $t1, -7292($fp)
	sw $t0, 0($t1)
	lw $t0, -7292($fp)
	lw $t1, 0($t0)
	sw $t1, -7296($fp)
	li $t0, 9131
	sw $t0, -7300($fp)
	lw $t0, -7300($fp)
	sw $t0, -7304($fp)
	lw $t0, -7304($fp)
	sw $t0, -7308($fp)
label419:
	lw $t0, -984($fp)
	sw $t0, -7312($fp)
	li $t0, 0
	lw $t1, -7312($fp)
	sub $t0, $t0, $t1
	sw $t0, -7316($fp)
	li $t0, 0
	lw $t1, -7316($fp)
	sub $t0, $t0, $t1
	sw $t0, -7320($fp)
	li $t0, 0
	sw $t0, -7324($fp)
	lw $t0, -2184($fp)
	sw $t0, -7328($fp)
	li $t0, 39831
	sw $t0, -7332($fp)
	lw $t0, -7328($fp)
	lw $t1, -7332($fp)
	sub $t0, $t0, $t1
	sw $t0, -7336($fp)
	lw $t0, -2340($fp)
	sw $t0, -7340($fp)
	lw $t1, -7336($fp)
	lw $t2, -7340($fp)
	bne $t1, $t2, label422
	j label423
label422:
	li $t0, 1
	sw $t0, -7324($fp)
label423:
	li $t0, 44545
	sw $t0, -7344($fp)
	lw $t0, -7344($fp)
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	sw $t0, -7348($fp)
	li $t0, 0
	sw $t0, -7352($fp)
	li $t0, 0
	sw $t0, -7356($fp)
	li $t0, 35406
	sw $t0, -7360($fp)
	lw $t1, -7360($fp)
	li $t2, 0
	bne $t1, $t2, label427
	j label426
label426:
	li $t0, 1
	sw $t0, -7356($fp)
label427:
	lw $t0, -480($fp)
	sw $t0, -7364($fp)
	lw $t1, -7356($fp)
	lw $t2, -7364($fp)
	bne $t1, $t2, label424
	j label425
label424:
	li $t0, 1
	sw $t0, -7352($fp)
label425:
	addi $sp, $sp, -4
	lw $t0, -7348($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7352($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7368($fp)
	addi $sp, $sp, 12
	lw $t0, -972($fp)
	sw $t0, -7372($fp)
	addi $sp, $sp, -4
	lw $t0, -7320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7372($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7376($fp)
	addi $sp, $sp, 20
	li $t0, 62077
	sw $t0, -7380($fp)
	li $t0, 1
	sw $t0, -7384($fp)
	lw $t0, -7380($fp)
	lw $t1, -7384($fp)
	mul $t0, $t0, $t1
	sw $t0, -7388($fp)
	lw $t0, -7376($fp)
	lw $t1, -7388($fp)
	add $t0, $t0, $t1
	sw $t0, -7392($fp)
	lw $t1, -7392($fp)
	li $t2, 0
	bne $t1, $t2, label420
	j label421
label420:
	li $t0, 0
	sw $t0, -7396($fp)
	li $t0, 0
	sw $t0, -7400($fp)
	addi $t0, $fp, -192
	sw $t0, -7404($fp)
	li $t0, 1
	sw $t0, -7408($fp)
	li $t0, 4
	lw $t1, -7408($fp)
	mul $t0, $t0, $t1
	sw $t0, -7412($fp)
	lw $t0, -7412($fp)
	lw $t1, -7404($fp)
	add $t0, $t0, $t1
	sw $t0, -7416($fp)
	lw $t0, -7416($fp)
	lw $t1, 0($t0)
	sw $t1, -7420($fp)
	lw $t1, -7420($fp)
	li $t2, 0
	bne $t1, $t2, label431
	j label430
label430:
	li $t0, 1
	sw $t0, -7400($fp)
label431:
	lw $t0, -7220($fp)
	sw $t0, -7424($fp)
	lw $t0, -7400($fp)
	lw $t1, -7424($fp)
	mul $t0, $t0, $t1
	sw $t0, -7428($fp)
	li $t0, 0
	lw $t1, -7428($fp)
	sub $t0, $t0, $t1
	sw $t0, -7432($fp)
	addi $t0, $fp, -7212
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
	lw $t0, -7304($fp)
	sw $t0, -7456($fp)
	lw $t0, -7452($fp)
	lw $t1, -7456($fp)
	mul $t0, $t0, $t1
	sw $t0, -7460($fp)
	addi $t0, $fp, -224
	sw $t0, -7464($fp)
	li $t0, 0
	sw $t0, -7468($fp)
	li $t0, 4
	lw $t1, -7468($fp)
	mul $t0, $t0, $t1
	sw $t0, -7472($fp)
	lw $t0, -7472($fp)
	lw $t1, -7464($fp)
	add $t0, $t0, $t1
	sw $t0, -7476($fp)
	lw $t0, -7476($fp)
	lw $t1, 0($t0)
	sw $t1, -7480($fp)
	lw $t0, -7460($fp)
	lw $t1, -7480($fp)
	mul $t0, $t0, $t1
	sw $t0, -7484($fp)
	lw $t1, -7432($fp)
	lw $t2, -7484($fp)
	beq $t1, $t2, label428
	j label429
label428:
	li $t0, 1
	sw $t0, -7396($fp)
label429:
	j label419
label421:
	j label413
label415:
	li $t0, 12559
	sw $t0, -7600($fp)
	addi $t0, $fp, -7520
	sw $t0, -7604($fp)
	li $t0, 0
	sw $t0, -7608($fp)
	lw $t0, -7608($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7612($fp)
	lw $t0, -7604($fp)
	lw $t1, -7612($fp)
	add $t0, $t0, $t1
	sw $t0, -7616($fp)
	lw $t0, -7600($fp)
	lw $t1, -7616($fp)
	sw $t0, 0($t1)
	lw $t0, -7616($fp)
	lw $t1, 0($t0)
	sw $t1, -7620($fp)
	li $t0, 8309
	sw $t0, -7624($fp)
	addi $t0, $fp, -7520
	sw $t0, -7628($fp)
	li $t0, 1
	sw $t0, -7632($fp)
	lw $t0, -7632($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7636($fp)
	lw $t0, -7628($fp)
	lw $t1, -7636($fp)
	add $t0, $t0, $t1
	sw $t0, -7640($fp)
	lw $t0, -7624($fp)
	lw $t1, -7640($fp)
	sw $t0, 0($t1)
	lw $t0, -7640($fp)
	lw $t1, 0($t0)
	sw $t1, -7644($fp)
	li $t0, 7651
	sw $t0, -7648($fp)
	addi $t0, $fp, -7520
	sw $t0, -7652($fp)
	li $t0, 2
	sw $t0, -7656($fp)
	lw $t0, -7656($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7660($fp)
	lw $t0, -7652($fp)
	lw $t1, -7660($fp)
	add $t0, $t0, $t1
	sw $t0, -7664($fp)
	lw $t0, -7648($fp)
	lw $t1, -7664($fp)
	sw $t0, 0($t1)
	lw $t0, -7664($fp)
	lw $t1, 0($t0)
	sw $t1, -7668($fp)
	li $t0, 39370
	sw $t0, -7672($fp)
	addi $t0, $fp, -7520
	sw $t0, -7676($fp)
	li $t0, 3
	sw $t0, -7680($fp)
	lw $t0, -7680($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7684($fp)
	lw $t0, -7676($fp)
	lw $t1, -7684($fp)
	add $t0, $t0, $t1
	sw $t0, -7688($fp)
	lw $t0, -7672($fp)
	lw $t1, -7688($fp)
	sw $t0, 0($t1)
	lw $t0, -7688($fp)
	lw $t1, 0($t0)
	sw $t1, -7692($fp)
	li $t0, 36852
	sw $t0, -7696($fp)
	addi $t0, $fp, -7520
	sw $t0, -7700($fp)
	li $t0, 4
	sw $t0, -7704($fp)
	lw $t0, -7704($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7708($fp)
	lw $t0, -7700($fp)
	lw $t1, -7708($fp)
	add $t0, $t0, $t1
	sw $t0, -7712($fp)
	lw $t0, -7696($fp)
	lw $t1, -7712($fp)
	sw $t0, 0($t1)
	lw $t0, -7712($fp)
	lw $t1, 0($t0)
	sw $t1, -7716($fp)
	li $t0, 61760
	sw $t0, -7720($fp)
	addi $t0, $fp, -7520
	sw $t0, -7724($fp)
	li $t0, 5
	sw $t0, -7728($fp)
	lw $t0, -7728($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7732($fp)
	lw $t0, -7724($fp)
	lw $t1, -7732($fp)
	add $t0, $t0, $t1
	sw $t0, -7736($fp)
	lw $t0, -7720($fp)
	lw $t1, -7736($fp)
	sw $t0, 0($t1)
	lw $t0, -7736($fp)
	lw $t1, 0($t0)
	sw $t1, -7740($fp)
	li $t0, 6547
	sw $t0, -7744($fp)
	addi $t0, $fp, -7520
	sw $t0, -7748($fp)
	li $t0, 6
	sw $t0, -7752($fp)
	lw $t0, -7752($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7756($fp)
	lw $t0, -7748($fp)
	lw $t1, -7756($fp)
	add $t0, $t0, $t1
	sw $t0, -7760($fp)
	lw $t0, -7744($fp)
	lw $t1, -7760($fp)
	sw $t0, 0($t1)
	lw $t0, -7760($fp)
	lw $t1, 0($t0)
	sw $t1, -7764($fp)
	li $t0, 57006
	sw $t0, -7768($fp)
	addi $t0, $fp, -7520
	sw $t0, -7772($fp)
	li $t0, 7
	sw $t0, -7776($fp)
	lw $t0, -7776($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7780($fp)
	lw $t0, -7772($fp)
	lw $t1, -7780($fp)
	add $t0, $t0, $t1
	sw $t0, -7784($fp)
	lw $t0, -7768($fp)
	lw $t1, -7784($fp)
	sw $t0, 0($t1)
	lw $t0, -7784($fp)
	lw $t1, 0($t0)
	sw $t1, -7788($fp)
	li $t0, 37098
	sw $t0, -7792($fp)
	addi $t0, $fp, -7520
	sw $t0, -7796($fp)
	li $t0, 8
	sw $t0, -7800($fp)
	lw $t0, -7800($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7804($fp)
	lw $t0, -7796($fp)
	lw $t1, -7804($fp)
	add $t0, $t0, $t1
	sw $t0, -7808($fp)
	lw $t0, -7792($fp)
	lw $t1, -7808($fp)
	sw $t0, 0($t1)
	lw $t0, -7808($fp)
	lw $t1, 0($t0)
	sw $t1, -7812($fp)
	li $t0, 32945
	sw $t0, -7816($fp)
	addi $t0, $fp, -7556
	sw $t0, -7820($fp)
	li $t0, 0
	sw $t0, -7824($fp)
	lw $t0, -7824($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7828($fp)
	lw $t0, -7820($fp)
	lw $t1, -7828($fp)
	add $t0, $t0, $t1
	sw $t0, -7832($fp)
	lw $t0, -7816($fp)
	lw $t1, -7832($fp)
	sw $t0, 0($t1)
	lw $t0, -7832($fp)
	lw $t1, 0($t0)
	sw $t1, -7836($fp)
	li $t0, 42411
	sw $t0, -7840($fp)
	addi $t0, $fp, -7556
	sw $t0, -7844($fp)
	li $t0, 1
	sw $t0, -7848($fp)
	lw $t0, -7848($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7852($fp)
	lw $t0, -7844($fp)
	lw $t1, -7852($fp)
	add $t0, $t0, $t1
	sw $t0, -7856($fp)
	lw $t0, -7840($fp)
	lw $t1, -7856($fp)
	sw $t0, 0($t1)
	lw $t0, -7856($fp)
	lw $t1, 0($t0)
	sw $t1, -7860($fp)
	li $t0, 52213
	sw $t0, -7864($fp)
	addi $t0, $fp, -7556
	sw $t0, -7868($fp)
	li $t0, 2
	sw $t0, -7872($fp)
	lw $t0, -7872($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7876($fp)
	lw $t0, -7868($fp)
	lw $t1, -7876($fp)
	add $t0, $t0, $t1
	sw $t0, -7880($fp)
	lw $t0, -7864($fp)
	lw $t1, -7880($fp)
	sw $t0, 0($t1)
	lw $t0, -7880($fp)
	lw $t1, 0($t0)
	sw $t1, -7884($fp)
	li $t0, 16814
	sw $t0, -7888($fp)
	addi $t0, $fp, -7556
	sw $t0, -7892($fp)
	li $t0, 3
	sw $t0, -7896($fp)
	lw $t0, -7896($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7900($fp)
	lw $t0, -7892($fp)
	lw $t1, -7900($fp)
	add $t0, $t0, $t1
	sw $t0, -7904($fp)
	lw $t0, -7888($fp)
	lw $t1, -7904($fp)
	sw $t0, 0($t1)
	lw $t0, -7904($fp)
	lw $t1, 0($t0)
	sw $t1, -7908($fp)
	li $t0, 57317
	sw $t0, -7912($fp)
	addi $t0, $fp, -7556
	sw $t0, -7916($fp)
	li $t0, 4
	sw $t0, -7920($fp)
	lw $t0, -7920($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7924($fp)
	lw $t0, -7916($fp)
	lw $t1, -7924($fp)
	add $t0, $t0, $t1
	sw $t0, -7928($fp)
	lw $t0, -7912($fp)
	lw $t1, -7928($fp)
	sw $t0, 0($t1)
	lw $t0, -7928($fp)
	lw $t1, 0($t0)
	sw $t1, -7932($fp)
	li $t0, 1265
	sw $t0, -7936($fp)
	addi $t0, $fp, -7556
	sw $t0, -7940($fp)
	li $t0, 5
	sw $t0, -7944($fp)
	lw $t0, -7944($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7948($fp)
	lw $t0, -7940($fp)
	lw $t1, -7948($fp)
	add $t0, $t0, $t1
	sw $t0, -7952($fp)
	lw $t0, -7936($fp)
	lw $t1, -7952($fp)
	sw $t0, 0($t1)
	lw $t0, -7952($fp)
	lw $t1, 0($t0)
	sw $t1, -7956($fp)
	li $t0, 36975
	sw $t0, -7960($fp)
	addi $t0, $fp, -7556
	sw $t0, -7964($fp)
	li $t0, 6
	sw $t0, -7968($fp)
	lw $t0, -7968($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7972($fp)
	lw $t0, -7964($fp)
	lw $t1, -7972($fp)
	add $t0, $t0, $t1
	sw $t0, -7976($fp)
	lw $t0, -7960($fp)
	lw $t1, -7976($fp)
	sw $t0, 0($t1)
	lw $t0, -7976($fp)
	lw $t1, 0($t0)
	sw $t1, -7980($fp)
	li $t0, 57932
	sw $t0, -7984($fp)
	addi $t0, $fp, -7556
	sw $t0, -7988($fp)
	li $t0, 7
	sw $t0, -7992($fp)
	lw $t0, -7992($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -7996($fp)
	lw $t0, -7988($fp)
	lw $t1, -7996($fp)
	add $t0, $t0, $t1
	sw $t0, -8000($fp)
	lw $t0, -7984($fp)
	lw $t1, -8000($fp)
	sw $t0, 0($t1)
	lw $t0, -8000($fp)
	lw $t1, 0($t0)
	sw $t1, -8004($fp)
	li $t0, 46037
	sw $t0, -8008($fp)
	addi $t0, $fp, -7556
	sw $t0, -8012($fp)
	li $t0, 8
	sw $t0, -8016($fp)
	lw $t0, -8016($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8020($fp)
	lw $t0, -8012($fp)
	lw $t1, -8020($fp)
	add $t0, $t0, $t1
	sw $t0, -8024($fp)
	lw $t0, -8008($fp)
	lw $t1, -8024($fp)
	sw $t0, 0($t1)
	lw $t0, -8024($fp)
	lw $t1, 0($t0)
	sw $t1, -8028($fp)
	li $t0, 39744
	sw $t0, -8032($fp)
	lw $t0, -8032($fp)
	sw $t0, -8036($fp)
	lw $t0, -8036($fp)
	sw $t0, -8040($fp)
	li $t0, 1527
	sw $t0, -8044($fp)
	addi $t0, $fp, -7596
	sw $t0, -8048($fp)
	li $t0, 0
	sw $t0, -8052($fp)
	lw $t0, -8052($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8056($fp)
	lw $t0, -8048($fp)
	lw $t1, -8056($fp)
	add $t0, $t0, $t1
	sw $t0, -8060($fp)
	lw $t0, -8044($fp)
	lw $t1, -8060($fp)
	sw $t0, 0($t1)
	lw $t0, -8060($fp)
	lw $t1, 0($t0)
	sw $t1, -8064($fp)
	li $t0, 15908
	sw $t0, -8068($fp)
	addi $t0, $fp, -7596
	sw $t0, -8072($fp)
	li $t0, 1
	sw $t0, -8076($fp)
	lw $t0, -8076($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8080($fp)
	lw $t0, -8072($fp)
	lw $t1, -8080($fp)
	add $t0, $t0, $t1
	sw $t0, -8084($fp)
	lw $t0, -8068($fp)
	lw $t1, -8084($fp)
	sw $t0, 0($t1)
	lw $t0, -8084($fp)
	lw $t1, 0($t0)
	sw $t1, -8088($fp)
	li $t0, 18753
	sw $t0, -8092($fp)
	addi $t0, $fp, -7596
	sw $t0, -8096($fp)
	li $t0, 2
	sw $t0, -8100($fp)
	lw $t0, -8100($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8104($fp)
	lw $t0, -8096($fp)
	lw $t1, -8104($fp)
	add $t0, $t0, $t1
	sw $t0, -8108($fp)
	lw $t0, -8092($fp)
	lw $t1, -8108($fp)
	sw $t0, 0($t1)
	lw $t0, -8108($fp)
	lw $t1, 0($t0)
	sw $t1, -8112($fp)
	li $t0, 41358
	sw $t0, -8116($fp)
	addi $t0, $fp, -7596
	sw $t0, -8120($fp)
	li $t0, 3
	sw $t0, -8124($fp)
	lw $t0, -8124($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8128($fp)
	lw $t0, -8120($fp)
	lw $t1, -8128($fp)
	add $t0, $t0, $t1
	sw $t0, -8132($fp)
	lw $t0, -8116($fp)
	lw $t1, -8132($fp)
	sw $t0, 0($t1)
	lw $t0, -8132($fp)
	lw $t1, 0($t0)
	sw $t1, -8136($fp)
	li $t0, 12449
	sw $t0, -8140($fp)
	addi $t0, $fp, -7596
	sw $t0, -8144($fp)
	li $t0, 4
	sw $t0, -8148($fp)
	lw $t0, -8148($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8152($fp)
	lw $t0, -8144($fp)
	lw $t1, -8152($fp)
	add $t0, $t0, $t1
	sw $t0, -8156($fp)
	lw $t0, -8140($fp)
	lw $t1, -8156($fp)
	sw $t0, 0($t1)
	lw $t0, -8156($fp)
	lw $t1, 0($t0)
	sw $t1, -8160($fp)
	li $t0, 64520
	sw $t0, -8164($fp)
	addi $t0, $fp, -7596
	sw $t0, -8168($fp)
	li $t0, 5
	sw $t0, -8172($fp)
	lw $t0, -8172($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8176($fp)
	lw $t0, -8168($fp)
	lw $t1, -8176($fp)
	add $t0, $t0, $t1
	sw $t0, -8180($fp)
	lw $t0, -8164($fp)
	lw $t1, -8180($fp)
	sw $t0, 0($t1)
	lw $t0, -8180($fp)
	lw $t1, 0($t0)
	sw $t1, -8184($fp)
	li $t0, 11571
	sw $t0, -8188($fp)
	addi $t0, $fp, -7596
	sw $t0, -8192($fp)
	li $t0, 6
	sw $t0, -8196($fp)
	lw $t0, -8196($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8200($fp)
	lw $t0, -8192($fp)
	lw $t1, -8200($fp)
	add $t0, $t0, $t1
	sw $t0, -8204($fp)
	lw $t0, -8188($fp)
	lw $t1, -8204($fp)
	sw $t0, 0($t1)
	lw $t0, -8204($fp)
	lw $t1, 0($t0)
	sw $t1, -8208($fp)
	li $t0, 57838
	sw $t0, -8212($fp)
	addi $t0, $fp, -7596
	sw $t0, -8216($fp)
	li $t0, 7
	sw $t0, -8220($fp)
	lw $t0, -8220($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8224($fp)
	lw $t0, -8216($fp)
	lw $t1, -8224($fp)
	add $t0, $t0, $t1
	sw $t0, -8228($fp)
	lw $t0, -8212($fp)
	lw $t1, -8228($fp)
	sw $t0, 0($t1)
	lw $t0, -8228($fp)
	lw $t1, 0($t0)
	sw $t1, -8232($fp)
	li $t0, 43989
	sw $t0, -8236($fp)
	addi $t0, $fp, -7596
	sw $t0, -8240($fp)
	li $t0, 8
	sw $t0, -8244($fp)
	lw $t0, -8244($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8248($fp)
	lw $t0, -8240($fp)
	lw $t1, -8248($fp)
	add $t0, $t0, $t1
	sw $t0, -8252($fp)
	lw $t0, -8236($fp)
	lw $t1, -8252($fp)
	sw $t0, 0($t1)
	lw $t0, -8252($fp)
	lw $t1, 0($t0)
	sw $t1, -8256($fp)
	li $t0, 62384
	sw $t0, -8260($fp)
	addi $t0, $fp, -7596
	sw $t0, -8264($fp)
	li $t0, 9
	sw $t0, -8268($fp)
	lw $t0, -8268($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8272($fp)
	lw $t0, -8264($fp)
	lw $t1, -8272($fp)
	add $t0, $t0, $t1
	sw $t0, -8276($fp)
	lw $t0, -8260($fp)
	lw $t1, -8276($fp)
	sw $t0, 0($t1)
	lw $t0, -8276($fp)
	lw $t1, 0($t0)
	sw $t1, -8280($fp)
	li $t0, 27330
	sw $t0, -8284($fp)
	lw $t0, -8284($fp)
	sw $t0, -8288($fp)
	lw $t0, -8288($fp)
	sw $t0, -8292($fp)
	li $t0, 48661
	sw $t0, -8296($fp)
	lw $t0, -8296($fp)
	sw $t0, -8300($fp)
	lw $t0, -8300($fp)
	sw $t0, -8304($fp)
	li $t0, 9407
	sw $t0, -8308($fp)
	lw $t0, -8308($fp)
	sw $t0, -8312($fp)
	lw $t0, -8312($fp)
	sw $t0, -8316($fp)
	li $t0, 35639
	sw $t0, -8320($fp)
	lw $t0, -8320($fp)
	sw $t0, -8324($fp)
	lw $t0, -8324($fp)
	sw $t0, -8328($fp)
	li $t0, 56313
	sw $t0, -8332($fp)
	lw $t0, -8332($fp)
	sw $t0, -8336($fp)
	lw $t0, -8336($fp)
	sw $t0, -8340($fp)
	li $t0, 48777
	sw $t0, -8380($fp)
	lw $t0, -8380($fp)
	sw $t0, -8384($fp)
	lw $t0, -8384($fp)
	sw $t0, -8388($fp)
	li $t0, 6955
	sw $t0, -8392($fp)
	lw $t0, -8392($fp)
	sw $t0, -8396($fp)
	lw $t0, -8396($fp)
	sw $t0, -8400($fp)
	li $t0, 52537
	sw $t0, -8404($fp)
	lw $t0, -8404($fp)
	sw $t0, -8408($fp)
	lw $t0, -8408($fp)
	sw $t0, -8412($fp)
	li $t0, 55324
	sw $t0, -8416($fp)
	lw $t0, -8416($fp)
	sw $t0, -8420($fp)
	lw $t0, -8420($fp)
	sw $t0, -8424($fp)
	li $t0, 63961
	sw $t0, -8428($fp)
	lw $t0, -8428($fp)
	sw $t0, -8432($fp)
	lw $t0, -8432($fp)
	sw $t0, -8436($fp)
	li $t0, 24099
	sw $t0, -8440($fp)
	addi $t0, $fp, -8376
	sw $t0, -8444($fp)
	li $t0, 0
	sw $t0, -8448($fp)
	lw $t0, -8448($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8452($fp)
	lw $t0, -8444($fp)
	lw $t1, -8452($fp)
	add $t0, $t0, $t1
	sw $t0, -8456($fp)
	lw $t0, -8440($fp)
	lw $t1, -8456($fp)
	sw $t0, 0($t1)
	lw $t0, -8456($fp)
	lw $t1, 0($t0)
	sw $t1, -8460($fp)
	li $t0, 22734
	sw $t0, -8464($fp)
	addi $t0, $fp, -8376
	sw $t0, -8468($fp)
	li $t0, 1
	sw $t0, -8472($fp)
	lw $t0, -8472($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8476($fp)
	lw $t0, -8468($fp)
	lw $t1, -8476($fp)
	add $t0, $t0, $t1
	sw $t0, -8480($fp)
	lw $t0, -8464($fp)
	lw $t1, -8480($fp)
	sw $t0, 0($t1)
	lw $t0, -8480($fp)
	lw $t1, 0($t0)
	sw $t1, -8484($fp)
	li $t0, 40836
	sw $t0, -8488($fp)
	addi $t0, $fp, -8376
	sw $t0, -8492($fp)
	li $t0, 2
	sw $t0, -8496($fp)
	lw $t0, -8496($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8500($fp)
	lw $t0, -8492($fp)
	lw $t1, -8500($fp)
	add $t0, $t0, $t1
	sw $t0, -8504($fp)
	lw $t0, -8488($fp)
	lw $t1, -8504($fp)
	sw $t0, 0($t1)
	lw $t0, -8504($fp)
	lw $t1, 0($t0)
	sw $t1, -8508($fp)
	li $t0, 10776
	sw $t0, -8512($fp)
	addi $t0, $fp, -8376
	sw $t0, -8516($fp)
	li $t0, 3
	sw $t0, -8520($fp)
	lw $t0, -8520($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8524($fp)
	lw $t0, -8516($fp)
	lw $t1, -8524($fp)
	add $t0, $t0, $t1
	sw $t0, -8528($fp)
	lw $t0, -8512($fp)
	lw $t1, -8528($fp)
	sw $t0, 0($t1)
	lw $t0, -8528($fp)
	lw $t1, 0($t0)
	sw $t1, -8532($fp)
	li $t0, 39548
	sw $t0, -8536($fp)
	addi $t0, $fp, -8376
	sw $t0, -8540($fp)
	li $t0, 4
	sw $t0, -8544($fp)
	lw $t0, -8544($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8548($fp)
	lw $t0, -8540($fp)
	lw $t1, -8548($fp)
	add $t0, $t0, $t1
	sw $t0, -8552($fp)
	lw $t0, -8536($fp)
	lw $t1, -8552($fp)
	sw $t0, 0($t1)
	lw $t0, -8552($fp)
	lw $t1, 0($t0)
	sw $t1, -8556($fp)
	li $t0, 32618
	sw $t0, -8560($fp)
	addi $t0, $fp, -8376
	sw $t0, -8564($fp)
	li $t0, 5
	sw $t0, -8568($fp)
	lw $t0, -8568($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8572($fp)
	lw $t0, -8564($fp)
	lw $t1, -8572($fp)
	add $t0, $t0, $t1
	sw $t0, -8576($fp)
	lw $t0, -8560($fp)
	lw $t1, -8576($fp)
	sw $t0, 0($t1)
	lw $t0, -8576($fp)
	lw $t1, 0($t0)
	sw $t1, -8580($fp)
	li $t0, 12041
	sw $t0, -8584($fp)
	addi $t0, $fp, -8376
	sw $t0, -8588($fp)
	li $t0, 6
	sw $t0, -8592($fp)
	lw $t0, -8592($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8596($fp)
	lw $t0, -8588($fp)
	lw $t1, -8596($fp)
	add $t0, $t0, $t1
	sw $t0, -8600($fp)
	lw $t0, -8584($fp)
	lw $t1, -8600($fp)
	sw $t0, 0($t1)
	lw $t0, -8600($fp)
	lw $t1, 0($t0)
	sw $t1, -8604($fp)
	li $t0, 10987
	sw $t0, -8608($fp)
	addi $t0, $fp, -8376
	sw $t0, -8612($fp)
	li $t0, 7
	sw $t0, -8616($fp)
	lw $t0, -8616($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8620($fp)
	lw $t0, -8612($fp)
	lw $t1, -8620($fp)
	add $t0, $t0, $t1
	sw $t0, -8624($fp)
	lw $t0, -8608($fp)
	lw $t1, -8624($fp)
	sw $t0, 0($t1)
	lw $t0, -8624($fp)
	lw $t1, 0($t0)
	sw $t1, -8628($fp)
	li $t0, 25014
	sw $t0, -8632($fp)
	addi $t0, $fp, -8376
	sw $t0, -8636($fp)
	li $t0, 8
	sw $t0, -8640($fp)
	lw $t0, -8640($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -8644($fp)
	lw $t0, -8636($fp)
	lw $t1, -8644($fp)
	add $t0, $t0, $t1
	sw $t0, -8648($fp)
	lw $t0, -8632($fp)
	lw $t1, -8648($fp)
	sw $t0, 0($t1)
	lw $t0, -8648($fp)
	lw $t1, 0($t0)
	sw $t1, -8652($fp)
	li $t0, 58079
	sw $t0, -8656($fp)
	lw $t0, -8656($fp)
	sw $t0, -8660($fp)
	lw $t0, -8660($fp)
	sw $t0, -8664($fp)
	li $t0, 50732
	sw $t0, -8668($fp)
	lw $t0, -8668($fp)
	sw $t0, -8672($fp)
	lw $t0, -8672($fp)
	sw $t0, -8676($fp)
	li $t0, 0
	sw $t0, -8680($fp)
	addi $t0, $fp, -36
	sw $t0, -8684($fp)
	addi $t0, $fp, -164
	sw $t0, -8688($fp)
	li $t0, 3
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
	li $t0, 4
	lw $t1, -8704($fp)
	mul $t0, $t0, $t1
	sw $t0, -8708($fp)
	lw $t0, -8708($fp)
	lw $t1, -8684($fp)
	add $t0, $t0, $t1
	sw $t0, -8712($fp)
	lw $t0, -8712($fp)
	lw $t1, 0($t0)
	sw $t1, -8716($fp)
	li $t0, 0
	sw $t0, -8720($fp)
	li $t0, 0
	sw $t0, -8724($fp)
	lw $t0, -996($fp)
	sw $t0, -8728($fp)
	lw $t1, -8728($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label437
label436:
	li $t0, 1
	sw $t0, -8724($fp)
label437:
	lw $t0, -2364($fp)
	sw $t0, -8732($fp)
	li $t0, 15953
	sw $t0, -8736($fp)
	lw $t0, -8732($fp)
	lw $t1, -8736($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8740($fp)
	lw $t0, -8384($fp)
	sw $t0, -8744($fp)
	lw $t0, -8740($fp)
	lw $t1, -8744($fp)
	mul $t0, $t0, $t1
	sw $t0, -8748($fp)
	addi $t0, $fp, -52
	sw $t0, -8752($fp)
	lw $t0, -1776($fp)
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
	li $t0, 31926
	sw $t0, -8772($fp)
	lw $t0, -8768($fp)
	lw $t1, -8772($fp)
	mul $t0, $t0, $t1
	sw $t0, -8776($fp)
	li $t0, 16017
	sw $t0, -8780($fp)
	li $t0, 0
	sw $t0, -8784($fp)
	li $t0, 7827
	sw $t0, -8788($fp)
	lw $t1, -8788($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label440
label440:
	li $t0, 58755
	sw $t0, -8792($fp)
	lw $t1, -8792($fp)
	li $t2, 0
	bne $t1, $t2, label438
	j label439
label438:
	li $t0, 1
	sw $t0, -8784($fp)
label439:
	li $t0, 0
	sw $t0, -8796($fp)
	li $t0, 17591
	sw $t0, -8800($fp)
	li $t0, 0
	lw $t1, -8800($fp)
	sub $t0, $t0, $t1
	sw $t0, -8804($fp)
	lw $t0, -1512($fp)
	sw $t0, -8808($fp)
	lw $t1, -8804($fp)
	lw $t2, -8808($fp)
	beq $t1, $t2, label441
	j label442
label441:
	li $t0, 1
	sw $t0, -8796($fp)
label442:
	addi $sp, $sp, -4
	lw $t0, -8776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8796($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8812($fp)
	addi $sp, $sp, 20
	lw $t0, -1500($fp)
	sw $t0, -8816($fp)
	li $t0, 20825
	sw $t0, -8820($fp)
	lw $t0, -8816($fp)
	lw $t1, -8820($fp)
	mul $t0, $t0, $t1
	sw $t0, -8824($fp)
	li $t0, 3430
	sw $t0, -8828($fp)
	lw $t0, -8824($fp)
	lw $t1, -8828($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8832($fp)
	li $t0, 20189
	sw $t0, -8836($fp)
	li $t0, 10636
	sw $t0, -8840($fp)
	lw $t0, -8836($fp)
	lw $t1, -8840($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8844($fp)
	addi $t0, $fp, -176
	sw $t0, -8848($fp)
	li $t0, 0
	sw $t0, -8852($fp)
	li $t0, 4
	lw $t1, -8852($fp)
	mul $t0, $t0, $t1
	sw $t0, -8856($fp)
	lw $t0, -8856($fp)
	lw $t1, -8848($fp)
	add $t0, $t0, $t1
	sw $t0, -8860($fp)
	lw $t0, -8860($fp)
	lw $t1, 0($t0)
	sw $t1, -8864($fp)
	li $t0, 0
	lw $t1, -8864($fp)
	sub $t0, $t0, $t1
	sw $t0, -8868($fp)
	li $t0, 0
	sw $t0, -8872($fp)
	li $t0, 46923
	sw $t0, -8876($fp)
	li $t0, 10782
	sw $t0, -8880($fp)
	lw $t1, -8876($fp)
	lw $t2, -8880($fp)
	bne $t1, $t2, label443
	j label444
label443:
	li $t0, 1
	sw $t0, -8872($fp)
label444:
	addi $sp, $sp, -4
	lw $t0, -8868($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8872($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8884($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -8812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8884($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -8888($fp)
	addi $sp, $sp, 20
	li $t0, 13203
	sw $t0, -8892($fp)
	addi $sp, $sp, -4
	lw $t0, -8724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8892($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -8896($fp)
	addi $sp, $sp, 20
	li $t0, 56853
	sw $t0, -8900($fp)
	lw $t1, -8896($fp)
	lw $t2, -8900($fp)
	beq $t1, $t2, label434
	j label435
label434:
	li $t0, 1
	sw $t0, -8720($fp)
label435:
	lw $t0, -2364($fp)
	sw $t0, -8904($fp)
	lw $t0, -1488($fp)
	sw $t0, -8908($fp)
	lw $t0, -8908($fp)
	sw $t0, -8036($fp)
	lw $t0, -8036($fp)
	sw $t0, -8912($fp)
	addi $sp, $sp, -4
	lw $t0, -8904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8912($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -8916($fp)
	addi $sp, $sp, 12
	lw $t0, -1992($fp)
	sw $t0, -8920($fp)
	lw $t0, -2196($fp)
	sw $t0, -8924($fp)
	lw $t0, -8920($fp)
	lw $t1, -8924($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8928($fp)
	li $t0, 13934
	sw $t0, -8932($fp)
	lw $t0, -8928($fp)
	lw $t1, -8932($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8936($fp)
	li $t0, 0
	sw $t0, -8940($fp)
	li $t0, 0
	sw $t0, -8944($fp)
	lw $t0, -8288($fp)
	sw $t0, -8948($fp)
	lw $t1, -8948($fp)
	li $t2, 0
	bne $t1, $t2, label448
	j label447
label447:
	li $t0, 1
	sw $t0, -8944($fp)
label448:
	lw $t0, -1776($fp)
	sw $t0, -8952($fp)
	lw $t0, -8944($fp)
	lw $t1, -8952($fp)
	add $t0, $t0, $t1
	sw $t0, -8956($fp)
	li $t0, 0
	sw $t0, -8960($fp)
	lw $t0, -924($fp)
	sw $t0, -8964($fp)
	li $t0, 2933
	sw $t0, -8968($fp)
	lw $t0, -8964($fp)
	lw $t1, -8968($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -8972($fp)
	lw $t1, -8972($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label451
label451:
	lw $t0, -1248($fp)
	sw $t0, -8976($fp)
	lw $t1, -8976($fp)
	li $t2, 0
	bne $t1, $t2, label449
	j label450
label449:
	li $t0, 1
	sw $t0, -8960($fp)
label450:
	li $t0, 20900
	sw $t0, -8980($fp)
	li $t0, 2363
	sw $t0, -8984($fp)
	lw $t0, -8984($fp)
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	sw $t0, -8988($fp)
	li $t0, 0
	sw $t0, -8992($fp)
	lw $t0, -8396($fp)
	sw $t0, -8996($fp)
	li $t0, 3949
	sw $t0, -9000($fp)
	lw $t0, -8996($fp)
	lw $t1, -9000($fp)
	mul $t0, $t0, $t1
	sw $t0, -9004($fp)
	lw $t1, -9004($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label453
label454:
	lw $t0, -960($fp)
	sw $t0, -9008($fp)
	lw $t1, -9008($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label453
label452:
	li $t0, 1
	sw $t0, -8992($fp)
label453:
	lw $t0, -2316($fp)
	sw $t0, -9012($fp)
	li $t0, 0
	lw $t1, -9012($fp)
	sub $t0, $t0, $t1
	sw $t0, -9016($fp)
	li $t0, 0
	lw $t1, -9016($fp)
	sub $t0, $t0, $t1
	sw $t0, -9020($fp)
	addi $sp, $sp, -4
	lw $t0, -8980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8988($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9020($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9024($fp)
	addi $sp, $sp, 20
	lw $t0, -912($fp)
	sw $t0, -9028($fp)
	addi $sp, $sp, -4
	lw $t0, -8956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9024($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9028($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -9032($fp)
	addi $sp, $sp, 20
	lw $t0, -2304($fp)
	sw $t0, -9036($fp)
	lw $t1, -9032($fp)
	lw $t2, -9036($fp)
	ble $t1, $t2, label445
	j label446
label445:
	li $t0, 1
	sw $t0, -8940($fp)
label446:
	addi $sp, $sp, -4
	lw $t0, -8720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -8940($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9040($fp)
	addi $sp, $sp, 20
	lw $t1, -8716($fp)
	lw $t2, -9040($fp)
	beq $t1, $t2, label432
	j label433
label432:
	li $t0, 1
	sw $t0, -8680($fp)
label433:
	li $t0, 0
	sw $t0, -9044($fp)
	li $t0, 42703
	sw $t0, -9048($fp)
	lw $t1, -9048($fp)
	li $t2, 0
	bne $t1, $t2, label459
	j label458
label458:
	li $t0, 1
	sw $t0, -9044($fp)
label459:
	lw $t0, -8408($fp)
	sw $t0, -9052($fp)
	lw $t0, -9044($fp)
	lw $t1, -9052($fp)
	mul $t0, $t0, $t1
	sw $t0, -9056($fp)
	addi $t0, $fp, -36
	sw $t0, -9060($fp)
	lw $t0, -1260($fp)
	sw $t0, -9064($fp)
	li $t0, 4
	lw $t1, -9064($fp)
	mul $t0, $t0, $t1
	sw $t0, -9068($fp)
	lw $t0, -9068($fp)
	lw $t1, -9060($fp)
	add $t0, $t0, $t1
	sw $t0, -9072($fp)
	lw $t0, -9072($fp)
	lw $t1, 0($t0)
	sw $t1, -9076($fp)
	li $t0, 23935
	sw $t0, -9080($fp)
	lw $t0, -9076($fp)
	lw $t1, -9080($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9084($fp)
	li $t0, 55501
	sw $t0, -9088($fp)
	addi $sp, $sp, -4
	lw $t0, -9084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9088($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9092($fp)
	addi $sp, $sp, 12
	lw $t0, -9056($fp)
	lw $t1, -9092($fp)
	mul $t0, $t0, $t1
	sw $t0, -9096($fp)
	lw $t0, -1752($fp)
	sw $t0, -9100($fp)
	li $t0, 0
	lw $t1, -9100($fp)
	sub $t0, $t0, $t1
	sw $t0, -9104($fp)
	li $t0, 0
	lw $t1, -9104($fp)
	sub $t0, $t0, $t1
	sw $t0, -9108($fp)
	lw $t0, -9096($fp)
	lw $t1, -9108($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9112($fp)
	addi $t0, $fp, -8376
	sw $t0, -9116($fp)
	li $t0, 0
	sw $t0, -9120($fp)
	li $t0, 54744
	sw $t0, -9124($fp)
	lw $t1, -9124($fp)
	li $t2, 0
	bne $t1, $t2, label461
	j label460
label460:
	li $t0, 1
	sw $t0, -9120($fp)
label461:
	li $t0, 4
	lw $t1, -9120($fp)
	mul $t0, $t0, $t1
	sw $t0, -9128($fp)
	lw $t0, -9128($fp)
	lw $t1, -9116($fp)
	add $t0, $t0, $t1
	sw $t0, -9132($fp)
	lw $t0, -9132($fp)
	lw $t1, 0($t0)
	sw $t1, -9136($fp)
	lw $t0, -9112($fp)
	lw $t1, -9136($fp)
	add $t0, $t0, $t1
	sw $t0, -9140($fp)
	lw $t1, -9140($fp)
	li $t2, 0
	bne $t1, $t2, label455
	j label456
label455:
	lw $t0, -2184($fp)
	sw $t0, -9144($fp)
	li $t0, 952
	sw $t0, -9148($fp)
	li $t0, 48949
	sw $t0, -9152($fp)
	lw $t0, -9148($fp)
	lw $t1, -9152($fp)
	mul $t0, $t0, $t1
	sw $t0, -9156($fp)
	lw $t0, -2280($fp)
	sw $t0, -9160($fp)
	lw $t0, -9156($fp)
	lw $t1, -9160($fp)
	mul $t0, $t0, $t1
	sw $t0, -9164($fp)
	lw $t0, -9144($fp)
	lw $t1, -9164($fp)
	sub $t0, $t0, $t1
	sw $t0, -9168($fp)
	li $t0, 0
	sw $t0, -9172($fp)
	lw $t0, -984($fp)
	sw $t0, -9176($fp)
	lw $t1, -9176($fp)
	li $t2, 0
	bne $t1, $t2, label463
	j label462
label462:
	li $t0, 1
	sw $t0, -9172($fp)
label463:
	addi $t0, $fp, -8376
	sw $t0, -9180($fp)
	lw $t0, -8432($fp)
	sw $t0, -9184($fp)
	li $t0, 4
	lw $t1, -9184($fp)
	mul $t0, $t0, $t1
	sw $t0, -9188($fp)
	lw $t0, -9188($fp)
	lw $t1, -9180($fp)
	add $t0, $t0, $t1
	sw $t0, -9192($fp)
	lw $t0, -9192($fp)
	lw $t1, 0($t0)
	sw $t1, -9196($fp)
	lw $t0, -9172($fp)
	lw $t1, -9196($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9200($fp)
	lw $t0, -9168($fp)
	lw $t1, -9200($fp)
	add $t0, $t0, $t1
	sw $t0, -9204($fp)
	lw $ra, -4($fp)
	lw $v0, -9204($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label457
label456:
	li $t0, 0
	sw $t0, -9208($fp)
	addi $t0, $fp, -36
	sw $t0, -9212($fp)
	li $t0, 0
	sw $t0, -9216($fp)
	lw $t0, -8288($fp)
	sw $t0, -9220($fp)
	lw $t0, -2316($fp)
	sw $t0, -9224($fp)
	lw $t1, -9220($fp)
	lw $t2, -9224($fp)
	bgt $t1, $t2, label467
	j label468
label467:
	li $t0, 1
	sw $t0, -9216($fp)
label468:
	li $t0, 4
	lw $t1, -9216($fp)
	mul $t0, $t0, $t1
	sw $t0, -9228($fp)
	lw $t0, -9228($fp)
	lw $t1, -9212($fp)
	add $t0, $t0, $t1
	sw $t0, -9232($fp)
	lw $t0, -9232($fp)
	lw $t1, 0($t0)
	sw $t1, -9236($fp)
	lw $t0, -2196($fp)
	sw $t0, -9240($fp)
	lw $t0, -9236($fp)
	lw $t1, -9240($fp)
	mul $t0, $t0, $t1
	sw $t0, -9244($fp)
	lw $t1, -9244($fp)
	li $t2, 0
	bne $t1, $t2, label464
	j label466
label466:
	li $t0, 47287
	sw $t0, -9248($fp)
	lw $t1, -9248($fp)
	li $t2, 0
	bne $t1, $t2, label464
	j label465
label464:
	li $t0, 1
	sw $t0, -9208($fp)
label465:
label457:
	lw $t0, -8384($fp)
	sw $t0, -9252($fp)
	lw $t0, -9252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8396($fp)
	sw $t0, -9256($fp)
	lw $t0, -9256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8408($fp)
	sw $t0, -9260($fp)
	lw $t0, -9260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8420($fp)
	sw $t0, -9264($fp)
	lw $t0, -9264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8432($fp)
	sw $t0, -9268($fp)
	lw $t0, -9268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8376
	sw $t0, -9272($fp)
	li $t0, 0
	sw $t0, -9276($fp)
	li $t0, 4
	lw $t1, -9276($fp)
	mul $t0, $t0, $t1
	sw $t0, -9280($fp)
	lw $t0, -9280($fp)
	lw $t1, -9272($fp)
	add $t0, $t0, $t1
	sw $t0, -9284($fp)
	lw $t0, -9284($fp)
	lw $t1, 0($t0)
	sw $t1, -9288($fp)
	lw $t0, -9288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8376
	sw $t0, -9292($fp)
	li $t0, 1
	sw $t0, -9296($fp)
	li $t0, 4
	lw $t1, -9296($fp)
	mul $t0, $t0, $t1
	sw $t0, -9300($fp)
	lw $t0, -9300($fp)
	lw $t1, -9292($fp)
	add $t0, $t0, $t1
	sw $t0, -9304($fp)
	lw $t0, -9304($fp)
	lw $t1, 0($t0)
	sw $t1, -9308($fp)
	lw $t0, -9308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8376
	sw $t0, -9312($fp)
	li $t0, 2
	sw $t0, -9316($fp)
	li $t0, 4
	lw $t1, -9316($fp)
	mul $t0, $t0, $t1
	sw $t0, -9320($fp)
	lw $t0, -9320($fp)
	lw $t1, -9312($fp)
	add $t0, $t0, $t1
	sw $t0, -9324($fp)
	lw $t0, -9324($fp)
	lw $t1, 0($t0)
	sw $t1, -9328($fp)
	lw $t0, -9328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8376
	sw $t0, -9332($fp)
	li $t0, 3
	sw $t0, -9336($fp)
	li $t0, 4
	lw $t1, -9336($fp)
	mul $t0, $t0, $t1
	sw $t0, -9340($fp)
	lw $t0, -9340($fp)
	lw $t1, -9332($fp)
	add $t0, $t0, $t1
	sw $t0, -9344($fp)
	lw $t0, -9344($fp)
	lw $t1, 0($t0)
	sw $t1, -9348($fp)
	lw $t0, -9348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8376
	sw $t0, -9352($fp)
	li $t0, 4
	sw $t0, -9356($fp)
	li $t0, 4
	lw $t1, -9356($fp)
	mul $t0, $t0, $t1
	sw $t0, -9360($fp)
	lw $t0, -9360($fp)
	lw $t1, -9352($fp)
	add $t0, $t0, $t1
	sw $t0, -9364($fp)
	lw $t0, -9364($fp)
	lw $t1, 0($t0)
	sw $t1, -9368($fp)
	lw $t0, -9368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8376
	sw $t0, -9372($fp)
	li $t0, 5
	sw $t0, -9376($fp)
	li $t0, 4
	lw $t1, -9376($fp)
	mul $t0, $t0, $t1
	sw $t0, -9380($fp)
	lw $t0, -9380($fp)
	lw $t1, -9372($fp)
	add $t0, $t0, $t1
	sw $t0, -9384($fp)
	lw $t0, -9384($fp)
	lw $t1, 0($t0)
	sw $t1, -9388($fp)
	lw $t0, -9388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8376
	sw $t0, -9392($fp)
	li $t0, 6
	sw $t0, -9396($fp)
	li $t0, 4
	lw $t1, -9396($fp)
	mul $t0, $t0, $t1
	sw $t0, -9400($fp)
	lw $t0, -9400($fp)
	lw $t1, -9392($fp)
	add $t0, $t0, $t1
	sw $t0, -9404($fp)
	lw $t0, -9404($fp)
	lw $t1, 0($t0)
	sw $t1, -9408($fp)
	lw $t0, -9408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8376
	sw $t0, -9412($fp)
	li $t0, 7
	sw $t0, -9416($fp)
	li $t0, 4
	lw $t1, -9416($fp)
	mul $t0, $t0, $t1
	sw $t0, -9420($fp)
	lw $t0, -9420($fp)
	lw $t1, -9412($fp)
	add $t0, $t0, $t1
	sw $t0, -9424($fp)
	lw $t0, -9424($fp)
	lw $t1, 0($t0)
	sw $t1, -9428($fp)
	lw $t0, -9428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8376
	sw $t0, -9432($fp)
	li $t0, 8
	sw $t0, -9436($fp)
	li $t0, 4
	lw $t1, -9436($fp)
	mul $t0, $t0, $t1
	sw $t0, -9440($fp)
	lw $t0, -9440($fp)
	lw $t1, -9432($fp)
	add $t0, $t0, $t1
	sw $t0, -9444($fp)
	lw $t0, -9444($fp)
	lw $t1, 0($t0)
	sw $t1, -9448($fp)
	lw $t0, -9448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8660($fp)
	sw $t0, -9452($fp)
	lw $t0, -9452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -8672($fp)
	sw $t0, -9456($fp)
	lw $t0, -9456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -9460($fp)
	li $t0, 51684
	sw $t0, -9464($fp)
	lw $t0, -8660($fp)
	sw $t0, -9468($fp)
	lw $t0, -9464($fp)
	lw $t1, -9468($fp)
	mul $t0, $t0, $t1
	sw $t0, -9472($fp)
	lw $t1, -9472($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label472
label472:
	lw $t0, -8672($fp)
	sw $t0, -9476($fp)
	lw $t1, -9476($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label471
label471:
	li $t0, 9954
	sw $t0, -9480($fp)
	lw $t1, -9480($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label470
label469:
	li $t0, 1
	sw $t0, -9460($fp)
label470:
	lw $ra, -4($fp)
	lw $v0, -9460($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label473:
	li $t0, 0
	sw $t0, -9484($fp)
	addi $t0, $fp, -132
	sw $t0, -9488($fp)
	lw $t0, -1200($fp)
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
	li $t0, 26251
	sw $t0, -9508($fp)
	lw $t1, -9504($fp)
	lw $t2, -9508($fp)
	beq $t1, $t2, label476
	j label477
label476:
	li $t0, 1
	sw $t0, -9484($fp)
label477:
	li $t0, 0
	sw $t0, -9512($fp)
	li $t0, 0
	sw $t0, -9516($fp)
	lw $t0, -1728($fp)
	sw $t0, -9520($fp)
	lw $t0, -8420($fp)
	sw $t0, -9524($fp)
	lw $t1, -9520($fp)
	lw $t2, -9524($fp)
	ble $t1, $t2, label480
	j label482
label482:
	lw $t0, -2292($fp)
	sw $t0, -9528($fp)
	lw $t1, -9528($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label481
label480:
	li $t0, 1
	sw $t0, -9516($fp)
label481:
	li $t0, 58567
	sw $t0, -9532($fp)
	lw $t0, -2400($fp)
	sw $t0, -9536($fp)
	lw $t0, -9532($fp)
	lw $t1, -9536($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9540($fp)
	li $t0, 55634
	sw $t0, -9544($fp)
	li $t0, 12317
	sw $t0, -9548($fp)
	lw $t0, -9544($fp)
	lw $t1, -9548($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9552($fp)
	li $t0, 11103
	sw $t0, -9556($fp)
	lw $t0, -9552($fp)
	lw $t1, -9556($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9560($fp)
	li $t0, 0
	sw $t0, -9564($fp)
	li $t0, 55738
	sw $t0, -9568($fp)
	li $t0, 0
	lw $t1, -9568($fp)
	sub $t0, $t0, $t1
	sw $t0, -9572($fp)
	lw $t0, -2256($fp)
	sw $t0, -9576($fp)
	lw $t1, -9572($fp)
	lw $t2, -9576($fp)
	blt $t1, $t2, label483
	j label484
label483:
	li $t0, 1
	sw $t0, -9564($fp)
label484:
	addi $sp, $sp, -4
	lw $t0, -9516($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9564($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -9580($fp)
	addi $sp, $sp, 20
	lw $t1, -9580($fp)
	li $t2, 0
	bne $t1, $t2, label479
	j label478
label478:
	li $t0, 1
	sw $t0, -9512($fp)
label479:
	addi $sp, $sp, -4
	lw $t0, -9484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9512($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -9584($fp)
	addi $sp, $sp, 12
	lw $t1, -9584($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label475
label474:
	li $t0, 24306
	sw $t0, -9616($fp)
	lw $t0, -9616($fp)
	sw $t0, -9620($fp)
	lw $t0, -9620($fp)
	sw $t0, -9624($fp)
	li $t0, 39954
	sw $t0, -9628($fp)
	lw $t0, -9628($fp)
	sw $t0, -9632($fp)
	lw $t0, -9632($fp)
	sw $t0, -9636($fp)
	li $t0, 37033
	sw $t0, -9640($fp)
	lw $t0, -9640($fp)
	sw $t0, -9644($fp)
	lw $t0, -9644($fp)
	sw $t0, -9648($fp)
	li $t0, 64839
	sw $t0, -9652($fp)
	addi $t0, $fp, -9612
	sw $t0, -9656($fp)
	li $t0, 0
	sw $t0, -9660($fp)
	lw $t0, -9660($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9664($fp)
	lw $t0, -9656($fp)
	lw $t1, -9664($fp)
	add $t0, $t0, $t1
	sw $t0, -9668($fp)
	lw $t0, -9652($fp)
	lw $t1, -9668($fp)
	sw $t0, 0($t1)
	lw $t0, -9668($fp)
	lw $t1, 0($t0)
	sw $t1, -9672($fp)
	li $t0, 4467
	sw $t0, -9676($fp)
	addi $t0, $fp, -9612
	sw $t0, -9680($fp)
	li $t0, 1
	sw $t0, -9684($fp)
	lw $t0, -9684($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9688($fp)
	lw $t0, -9680($fp)
	lw $t1, -9688($fp)
	add $t0, $t0, $t1
	sw $t0, -9692($fp)
	lw $t0, -9676($fp)
	lw $t1, -9692($fp)
	sw $t0, 0($t1)
	lw $t0, -9692($fp)
	lw $t1, 0($t0)
	sw $t1, -9696($fp)
	li $t0, 57222
	sw $t0, -9700($fp)
	addi $t0, $fp, -9612
	sw $t0, -9704($fp)
	li $t0, 2
	sw $t0, -9708($fp)
	lw $t0, -9708($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9712($fp)
	lw $t0, -9704($fp)
	lw $t1, -9712($fp)
	add $t0, $t0, $t1
	sw $t0, -9716($fp)
	lw $t0, -9700($fp)
	lw $t1, -9716($fp)
	sw $t0, 0($t1)
	lw $t0, -9716($fp)
	lw $t1, 0($t0)
	sw $t1, -9720($fp)
	li $t0, 9939
	sw $t0, -9724($fp)
	addi $t0, $fp, -9612
	sw $t0, -9728($fp)
	li $t0, 3
	sw $t0, -9732($fp)
	lw $t0, -9732($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9736($fp)
	lw $t0, -9728($fp)
	lw $t1, -9736($fp)
	add $t0, $t0, $t1
	sw $t0, -9740($fp)
	lw $t0, -9724($fp)
	lw $t1, -9740($fp)
	sw $t0, 0($t1)
	lw $t0, -9740($fp)
	lw $t1, 0($t0)
	sw $t1, -9744($fp)
	li $t0, 25292
	sw $t0, -9748($fp)
	addi $t0, $fp, -9612
	sw $t0, -9752($fp)
	li $t0, 4
	sw $t0, -9756($fp)
	lw $t0, -9756($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9760($fp)
	lw $t0, -9752($fp)
	lw $t1, -9760($fp)
	add $t0, $t0, $t1
	sw $t0, -9764($fp)
	lw $t0, -9748($fp)
	lw $t1, -9764($fp)
	sw $t0, 0($t1)
	lw $t0, -9764($fp)
	lw $t1, 0($t0)
	sw $t1, -9768($fp)
	li $t0, 60653
	sw $t0, -9772($fp)
	addi $t0, $fp, -9612
	sw $t0, -9776($fp)
	li $t0, 5
	sw $t0, -9780($fp)
	lw $t0, -9780($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9784($fp)
	lw $t0, -9776($fp)
	lw $t1, -9784($fp)
	add $t0, $t0, $t1
	sw $t0, -9788($fp)
	lw $t0, -9772($fp)
	lw $t1, -9788($fp)
	sw $t0, 0($t1)
	lw $t0, -9788($fp)
	lw $t1, 0($t0)
	sw $t1, -9792($fp)
	li $t0, 27530
	sw $t0, -9796($fp)
	addi $t0, $fp, -9612
	sw $t0, -9800($fp)
	li $t0, 6
	sw $t0, -9804($fp)
	lw $t0, -9804($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -9808($fp)
	lw $t0, -9800($fp)
	lw $t1, -9808($fp)
	add $t0, $t0, $t1
	sw $t0, -9812($fp)
	lw $t0, -9796($fp)
	lw $t1, -9812($fp)
	sw $t0, 0($t1)
	lw $t0, -9812($fp)
	lw $t1, 0($t0)
	sw $t1, -9816($fp)
	li $t0, 33119
	sw $t0, -9820($fp)
	lw $t0, -9820($fp)
	sw $t0, -9824($fp)
	lw $t0, -9824($fp)
	sw $t0, -9828($fp)
	li $t0, 0
	sw $t0, -9832($fp)
	lw $t0, -948($fp)
	sw $t0, -9836($fp)
	li $t0, 53872
	sw $t0, -9840($fp)
	lw $t0, -9836($fp)
	lw $t1, -9840($fp)
	mul $t0, $t0, $t1
	sw $t0, -9844($fp)
	li $t0, 0
	lw $t1, -9844($fp)
	sub $t0, $t0, $t1
	sw $t0, -9848($fp)
	li $t0, 0
	sw $t0, -9852($fp)
	lw $t0, -2328($fp)
	sw $t0, -9856($fp)
	lw $t1, -9856($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label490
label490:
	li $t0, 1
	sw $t0, -9852($fp)
label491:
	lw $t0, -960($fp)
	sw $t0, -9860($fp)
	lw $t0, -9852($fp)
	lw $t1, -9860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9864($fp)
	lw $t1, -9848($fp)
	lw $t2, -9864($fp)
	blt $t1, $t2, label488
	j label489
label488:
	li $t0, 1
	sw $t0, -9832($fp)
label489:
	li $t0, 43547
	sw $t0, -9868($fp)
	li $t0, 0
	lw $t1, -9868($fp)
	sub $t0, $t0, $t1
	sw $t0, -9872($fp)
	lw $t0, -8300($fp)
	sw $t0, -9876($fp)
	li $t0, 65046
	sw $t0, -9880($fp)
	lw $t0, -9876($fp)
	lw $t1, -9880($fp)
	mul $t0, $t0, $t1
	sw $t0, -9884($fp)
	lw $t0, -9872($fp)
	lw $t1, -9884($fp)
	add $t0, $t0, $t1
	sw $t0, -9888($fp)
	lw $t1, -9832($fp)
	lw $t2, -9888($fp)
	bne $t1, $t2, label485
	j label486
label485:
	lw $t0, -2292($fp)
	sw $t0, -9892($fp)
	li $t0, 4289
	sw $t0, -9896($fp)
	lw $t0, -9892($fp)
	lw $t1, -9896($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9900($fp)
	li $t0, 0
	lw $t1, -9900($fp)
	sub $t0, $t0, $t1
	sw $t0, -9904($fp)
	lw $t0, -9904($fp)
	sw $t0, -8300($fp)
	lw $t0, -8300($fp)
	sw $t0, -9908($fp)
label486:
	li $t0, 46891
	sw $t0, -9912($fp)
	li $t0, 0
	sw $t0, -9916($fp)
	li $t0, 13173
	sw $t0, -9920($fp)
	lw $t1, -9920($fp)
	li $t2, 0
	bne $t1, $t2, label496
	j label495
label495:
	li $t0, 1
	sw $t0, -9916($fp)
label496:
	lw $t0, -1524($fp)
	sw $t0, -9924($fp)
	lw $t0, -9916($fp)
	lw $t1, -9924($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9928($fp)
	li $t0, 31421
	sw $t0, -9932($fp)
	li $t0, 60742
	sw $t0, -9936($fp)
	lw $t0, -9932($fp)
	lw $t1, -9936($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -9940($fp)
	li $t0, 42214
	sw $t0, -9944($fp)
	lw $t0, -9940($fp)
	lw $t1, -9944($fp)
	sub $t0, $t0, $t1
	sw $t0, -9948($fp)
	li $t0, 0
	sw $t0, -9952($fp)
	li $t0, 42213
	sw $t0, -9956($fp)
	li $t0, 59790
	sw $t0, -9960($fp)
	lw $t0, -9956($fp)
	lw $t1, -9960($fp)
	add $t0, $t0, $t1
	sw $t0, -9964($fp)
	li $t0, 58800
	sw $t0, -9968($fp)
	lw $t1, -9964($fp)
	lw $t2, -9968($fp)
	bgt $t1, $t2, label497
	j label498
label497:
	li $t0, 1
	sw $t0, -9952($fp)
label498:
	lw $t0, -1524($fp)
	sw $t0, -9972($fp)
	li $t0, 0
	lw $t1, -9972($fp)
	sub $t0, $t0, $t1
	sw $t0, -9976($fp)
	addi $sp, $sp, -4
	lw $t0, -9928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9976($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -9980($fp)
	addi $sp, $sp, 20
	lw $t0, -1500($fp)
	sw $t0, -9984($fp)
	li $t0, 0
	lw $t1, -9984($fp)
	sub $t0, $t0, $t1
	sw $t0, -9988($fp)
	li $t0, 0
	lw $t1, -9988($fp)
	sub $t0, $t0, $t1
	sw $t0, -9992($fp)
	li $t0, 34865
	sw $t0, -9996($fp)
	addi $sp, $sp, -4
	lw $t0, -9912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -9996($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -10000($fp)
	addi $sp, $sp, 20
	lw $t1, -10000($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label493
label492:
	li $t0, 52168
	sw $t0, -10004($fp)
	li $t0, 3375
	sw $t0, -10008($fp)
	lw $t0, -10004($fp)
	lw $t1, -10008($fp)
	mul $t0, $t0, $t1
	sw $t0, -10012($fp)
	li $t0, 0
	lw $t1, -10012($fp)
	sub $t0, $t0, $t1
	sw $t0, -10016($fp)
	li $t0, 0
	sw $t0, -10020($fp)
	li $t0, 64486
	sw $t0, -10024($fp)
	lw $t1, -10024($fp)
	li $t2, 0
	bne $t1, $t2, label499
	j label500
label499:
	li $t0, 1
	sw $t0, -10020($fp)
label500:
	lw $t0, -924($fp)
	sw $t0, -10028($fp)
	lw $t0, -10028($fp)
	sw $t0, -8336($fp)
	lw $t0, -8336($fp)
	sw $t0, -10032($fp)
	li $t0, 36989
	sw $t0, -10036($fp)
	li $t0, 0
	lw $t1, -10036($fp)
	sub $t0, $t0, $t1
	sw $t0, -10040($fp)
	lw $t0, -8408($fp)
	sw $t0, -10044($fp)
	lw $t0, -10040($fp)
	lw $t1, -10044($fp)
	add $t0, $t0, $t1
	sw $t0, -10048($fp)
	lw $t0, -9632($fp)
	sw $t0, -10052($fp)
	addi $sp, $sp, -4
	lw $t0, -10020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10052($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -10056($fp)
	addi $sp, $sp, 20
	li $t0, 0
	lw $t1, -10056($fp)
	sub $t0, $t0, $t1
	sw $t0, -10060($fp)
	lw $t0, -10016($fp)
	lw $t1, -10060($fp)
	add $t0, $t0, $t1
	sw $t0, -10064($fp)
	j label494
label493:
	li $t0, 14478
	sw $t0, -10068($fp)
	li $t0, 0
	lw $t1, -10068($fp)
	sub $t0, $t0, $t1
	sw $t0, -10072($fp)
label494:
label501:
	addi $t0, $fp, -9612
	sw $t0, -10076($fp)
	li $t0, 0
	sw $t0, -10080($fp)
	li $t0, 30020
	sw $t0, -10084($fp)
	lw $t1, -10084($fp)
	li $t2, 0
	bne $t1, $t2, label505
	j label507
label507:
	lw $t0, 4($fp)
	sw $t0, -10088($fp)
	lw $t1, -10088($fp)
	li $t2, 0
	bne $t1, $t2, label505
	j label506
label505:
	li $t0, 1
	sw $t0, -10080($fp)
label506:
	li $t0, 4
	lw $t1, -10080($fp)
	mul $t0, $t0, $t1
	sw $t0, -10092($fp)
	lw $t0, -10092($fp)
	lw $t1, -10076($fp)
	add $t0, $t0, $t1
	sw $t0, -10096($fp)
	lw $t0, -10096($fp)
	lw $t1, 0($t0)
	sw $t1, -10100($fp)
	addi $t0, $fp, -64
	sw $t0, -10104($fp)
	lw $t0, -9824($fp)
	sw $t0, -10108($fp)
	li $t0, 4
	lw $t1, -10108($fp)
	mul $t0, $t0, $t1
	sw $t0, -10112($fp)
	lw $t0, -10112($fp)
	lw $t1, -10104($fp)
	add $t0, $t0, $t1
	sw $t0, -10116($fp)
	lw $t0, -10116($fp)
	lw $t1, 0($t0)
	sw $t1, -10120($fp)
	li $t0, 25201
	sw $t0, -10124($fp)
	lw $t0, -10120($fp)
	lw $t1, -10124($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10128($fp)
	lw $t1, -10100($fp)
	lw $t2, -10128($fp)
	ble $t1, $t2, label502
	j label504
label504:
	lw $t0, -1236($fp)
	sw $t0, -10132($fp)
	lw $t1, -10132($fp)
	li $t2, 0
	bne $t1, $t2, label502
	j label503
label502:
	lw $t0, -9620($fp)
	sw $t0, -10136($fp)
	li $t0, 38784
	sw $t0, -10140($fp)
	lw $t0, -10136($fp)
	lw $t1, -10140($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10144($fp)
	lw $t0, -10144($fp)
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -10148($fp)
	lw $t0, -10148($fp)
	sw $t0, -984($fp)
	lw $t0, -984($fp)
	sw $t0, -10152($fp)
	j label501
label503:
	li $t0, 0
	sw $t0, -10156($fp)
	lw $t0, -8036($fp)
	sw $t0, -10160($fp)
	lw $t1, -10160($fp)
	li $t2, 0
	bne $t1, $t2, label512
	j label511
label511:
	li $t0, 1
	sw $t0, -10156($fp)
label512:
	lw $t0, 12($fp)
	sw $t0, -10164($fp)
	lw $t0, -10156($fp)
	lw $t1, -10164($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10168($fp)
	lw $t0, -936($fp)
	sw $t0, -10172($fp)
	li $t0, 0
	sw $t0, -10176($fp)
	lw $t0, -2304($fp)
	sw $t0, -10180($fp)
	lw $t1, -10180($fp)
	li $t2, 0
	bne $t1, $t2, label514
	j label513
label513:
	li $t0, 1
	sw $t0, -10176($fp)
label514:
	li $t0, 38087
	sw $t0, -10184($fp)
	lw $t0, -10176($fp)
	lw $t1, -10184($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10188($fp)
	li $t0, 4439
	sw $t0, -10192($fp)
	li $t0, 62235
	sw $t0, -10196($fp)
	lw $t0, -10192($fp)
	lw $t1, -10196($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10200($fp)
	lw $t0, -2364($fp)
	sw $t0, -10204($fp)
	lw $t0, -10200($fp)
	lw $t1, -10204($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10208($fp)
	addi $sp, $sp, -4
	lw $t0, -10168($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10188($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10208($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -10212($fp)
	addi $sp, $sp, 20
	lw $t1, -10212($fp)
	li $t2, 0
	bne $t1, $t2, label508
	j label509
label508:
	addi $t0, $fp, -64
	sw $t0, -10216($fp)
	lw $t0, -2268($fp)
	sw $t0, -10220($fp)
	li $t0, 8906
	sw $t0, -10224($fp)
	lw $t0, -10220($fp)
	lw $t1, -10224($fp)
	sub $t0, $t0, $t1
	sw $t0, -10228($fp)
	li $t0, 4
	lw $t1, -10228($fp)
	mul $t0, $t0, $t1
	sw $t0, -10232($fp)
	lw $t0, -10232($fp)
	lw $t1, -10216($fp)
	add $t0, $t0, $t1
	sw $t0, -10236($fp)
	lw $t0, -10236($fp)
	lw $t1, 0($t0)
	sw $t1, -10240($fp)
	lw $t0, -9644($fp)
	sw $t0, -10244($fp)
	lw $t0, -10240($fp)
	lw $t1, -10244($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10248($fp)
	j label510
label509:
	li $t0, 0
	sw $t0, -10252($fp)
	li $t0, 0
	sw $t0, -10256($fp)
	li $t0, 0
	sw $t0, -10260($fp)
	li $t0, 53921
	sw $t0, -10264($fp)
	li $t0, 0
	lw $t1, -10264($fp)
	sub $t0, $t0, $t1
	sw $t0, -10268($fp)
	li $t0, 48026
	sw $t0, -10272($fp)
	lw $t1, -10268($fp)
	lw $t2, -10272($fp)
	bge $t1, $t2, label520
	j label521
label520:
	li $t0, 1
	sw $t0, -10260($fp)
label521:
	addi $t0, $fp, -7520
	sw $t0, -10276($fp)
	li $t0, 0
	sw $t0, -10280($fp)
	li $t0, 4
	lw $t1, -10280($fp)
	mul $t0, $t0, $t1
	sw $t0, -10284($fp)
	lw $t0, -10284($fp)
	lw $t1, -10276($fp)
	add $t0, $t0, $t1
	sw $t0, -10288($fp)
	lw $t0, -10288($fp)
	lw $t1, 0($t0)
	sw $t1, -10292($fp)
	lw $t1, -10260($fp)
	lw $t2, -10292($fp)
	bge $t1, $t2, label518
	j label519
label518:
	li $t0, 1
	sw $t0, -10256($fp)
label519:
	lw $t0, -1248($fp)
	sw $t0, -10296($fp)
	lw $t0, -1236($fp)
	sw $t0, -10300($fp)
	lw $t0, -10296($fp)
	lw $t1, -10300($fp)
	mul $t0, $t0, $t1
	sw $t0, -10304($fp)
	li $t0, 0
	lw $t1, -10304($fp)
	sub $t0, $t0, $t1
	sw $t0, -10308($fp)
	lw $t1, -10256($fp)
	lw $t2, -10308($fp)
	bgt $t1, $t2, label517
	j label516
label517:
	li $t0, 10021
	sw $t0, -10312($fp)
	lw $t0, -1608($fp)
	sw $t0, -10316($fp)
	lw $t0, -10312($fp)
	lw $t1, -10316($fp)
	mul $t0, $t0, $t1
	sw $t0, -10320($fp)
	li $t0, 1782
	sw $t0, -10324($fp)
	lw $t0, -10320($fp)
	lw $t1, -10324($fp)
	mul $t0, $t0, $t1
	sw $t0, -10328($fp)
	li $t0, 53569
	sw $t0, -10332($fp)
	lw $t0, -10328($fp)
	lw $t1, -10332($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10336($fp)
	lw $t1, -10336($fp)
	li $t2, 0
	bne $t1, $t2, label515
	j label516
label515:
	li $t0, 1
	sw $t0, -10252($fp)
label516:
label510:
	j label473
label475:
label522:
	li $t0, 0
	sw $t0, -10340($fp)
	li $t0, 0
	sw $t0, -10344($fp)
	addi $t0, $fp, -256
	sw $t0, -10348($fp)
	li $t0, 0
	sw $t0, -10352($fp)
	li $t0, 4
	lw $t1, -10352($fp)
	mul $t0, $t0, $t1
	sw $t0, -10356($fp)
	lw $t0, -10356($fp)
	lw $t1, -10348($fp)
	add $t0, $t0, $t1
	sw $t0, -10360($fp)
	lw $t0, -10360($fp)
	lw $t1, 0($t0)
	sw $t1, -10364($fp)
	li $t0, 22897
	sw $t0, -10368($fp)
	lw $t1, -10364($fp)
	lw $t2, -10368($fp)
	ble $t1, $t2, label527
	j label528
label527:
	li $t0, 1
	sw $t0, -10344($fp)
label528:
	lw $t0, -1620($fp)
	sw $t0, -10372($fp)
	li $t0, 43505
	sw $t0, -10376($fp)
	lw $t0, -10372($fp)
	lw $t1, -10376($fp)
	add $t0, $t0, $t1
	sw $t0, -10380($fp)
	lw $t1, -10344($fp)
	lw $t2, -10380($fp)
	bgt $t1, $t2, label525
	j label526
label525:
	li $t0, 1
	sw $t0, -10340($fp)
label526:
	lw $t0, -10340($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -10384($fp)
	lw $t1, -10384($fp)
	li $t2, 0
	bne $t1, $t2, label523
	j label524
label523:
	li $t0, 35917
	sw $t0, -10388($fp)
	li $t0, 0
	sw $t0, -10392($fp)
	li $t0, 22563
	sw $t0, -10396($fp)
	lw $t0, -8312($fp)
	sw $t0, -10400($fp)
	lw $t0, -10396($fp)
	lw $t1, -10400($fp)
	add $t0, $t0, $t1
	sw $t0, -10404($fp)
	li $t0, 0
	sw $t0, -10408($fp)
	li $t0, 9390
	sw $t0, -10412($fp)
	li $t0, 31124
	sw $t0, -10416($fp)
	lw $t0, -10412($fp)
	lw $t1, -10416($fp)
	mul $t0, $t0, $t1
	sw $t0, -10420($fp)
	li $t0, 58376
	sw $t0, -10424($fp)
	lw $t1, -10420($fp)
	lw $t2, -10424($fp)
	ble $t1, $t2, label534
	j label535
label534:
	li $t0, 1
	sw $t0, -10408($fp)
label535:
	lw $t0, -2268($fp)
	sw $t0, -10428($fp)
	li $t0, 0
	lw $t1, -10428($fp)
	sub $t0, $t0, $t1
	sw $t0, -10432($fp)
	li $t0, 0
	sw $t0, -10436($fp)
	li $t0, 0
	sw $t0, -10440($fp)
	lw $t0, -468($fp)
	sw $t0, -10444($fp)
	lw $t0, -8288($fp)
	sw $t0, -10448($fp)
	lw $t1, -10444($fp)
	lw $t2, -10448($fp)
	bne $t1, $t2, label538
	j label539
label538:
	li $t0, 1
	sw $t0, -10440($fp)
label539:
	li $t0, 16162
	sw $t0, -10452($fp)
	lw $t1, -10440($fp)
	lw $t2, -10452($fp)
	bne $t1, $t2, label536
	j label537
label536:
	li $t0, 1
	sw $t0, -10436($fp)
label537:
	addi $sp, $sp, -4
	lw $t0, -10404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10436($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -10456($fp)
	addi $sp, $sp, 20
	lw $t1, -10456($fp)
	li $t2, 0
	bne $t1, $t2, label533
	j label532
label532:
	li $t0, 1
	sw $t0, -10392($fp)
label533:
	lw $t0, -10388($fp)
	lw $t1, -10392($fp)
	sub $t0, $t0, $t1
	sw $t0, -10460($fp)
	lw $t1, -10460($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label530
label529:
label540:
	addi $t0, $fp, -192
	sw $t0, -10464($fp)
	lw $t0, -2340($fp)
	sw $t0, -10468($fp)
	li $t0, 4
	lw $t1, -10468($fp)
	mul $t0, $t0, $t1
	sw $t0, -10472($fp)
	lw $t0, -10472($fp)
	lw $t1, -10464($fp)
	add $t0, $t0, $t1
	sw $t0, -10476($fp)
	lw $t0, -10476($fp)
	lw $t1, 0($t0)
	sw $t1, -10480($fp)
	li $t0, 12479
	sw $t0, -10484($fp)
	lw $t0, -10480($fp)
	lw $t1, -10484($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10488($fp)
	lw $t0, -2220($fp)
	sw $t0, -10492($fp)
	li $t0, 45008
	sw $t0, -10496($fp)
	lw $t0, -10492($fp)
	lw $t1, -10496($fp)
	mul $t0, $t0, $t1
	sw $t0, -10500($fp)
	lw $t0, -10488($fp)
	lw $t1, -10500($fp)
	add $t0, $t0, $t1
	sw $t0, -10504($fp)
	li $t0, 25939
	sw $t0, -10508($fp)
	lw $t0, -10504($fp)
	lw $t1, -10508($fp)
	sub $t0, $t0, $t1
	sw $t0, -10512($fp)
	lw $t0, -936($fp)
	sw $t0, -10516($fp)
	lw $t0, -996($fp)
	sw $t0, -10520($fp)
	lw $t0, -10516($fp)
	lw $t1, -10520($fp)
	sub $t0, $t0, $t1
	sw $t0, -10524($fp)
	lw $t0, -2364($fp)
	sw $t0, -10528($fp)
	lw $t0, -10528($fp)
	sw $t0, -2376($fp)
	lw $t0, -2376($fp)
	sw $t0, -10532($fp)
	addi $sp, $sp, -4
	lw $t0, -10524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10532($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -10536($fp)
	addi $sp, $sp, 12
	lw $t1, -10512($fp)
	lw $t2, -10536($fp)
	blt $t1, $t2, label541
	j label542
label541:
label543:
	addi $t0, $fp, -164
	sw $t0, -10540($fp)
	li $t0, 0
	sw $t0, -10544($fp)
	li $t0, 49468
	sw $t0, -10548($fp)
	lw $t1, -10548($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label548
label548:
	lw $t0, -2388($fp)
	sw $t0, -10552($fp)
	lw $t1, -10552($fp)
	li $t2, 0
	bne $t1, $t2, label546
	j label547
label546:
	li $t0, 1
	sw $t0, -10544($fp)
label547:
	li $t0, 4
	lw $t1, -10544($fp)
	mul $t0, $t0, $t1
	sw $t0, -10556($fp)
	lw $t0, -10556($fp)
	lw $t1, -10540($fp)
	add $t0, $t0, $t1
	sw $t0, -10560($fp)
	lw $t0, -10560($fp)
	lw $t1, 0($t0)
	sw $t1, -10564($fp)
	lw $t0, -10564($fp)
	sw $t0, -8336($fp)
	lw $t0, -8336($fp)
	sw $t0, -10568($fp)
	lw $t1, -10568($fp)
	li $t2, 0
	bne $t1, $t2, label544
	j label545
label544:
	li $t0, 0
	sw $t0, -10572($fp)
	li $t0, 0
	sw $t0, -10576($fp)
	li $t0, 43958
	sw $t0, -10580($fp)
	lw $t1, -10580($fp)
	li $t2, 0
	bne $t1, $t2, label552
	j label551
label551:
	li $t0, 1
	sw $t0, -10576($fp)
label552:
	li $t0, 40417
	sw $t0, -10584($fp)
	lw $t0, -10576($fp)
	lw $t1, -10584($fp)
	mul $t0, $t0, $t1
	sw $t0, -10588($fp)
	li $t0, 13952
	sw $t0, -10592($fp)
	addi $t0, $fp, -7520
	sw $t0, -10596($fp)
	li $t0, 4
	sw $t0, -10600($fp)
	li $t0, 4
	lw $t1, -10600($fp)
	mul $t0, $t0, $t1
	sw $t0, -10604($fp)
	lw $t0, -10604($fp)
	lw $t1, -10596($fp)
	add $t0, $t0, $t1
	sw $t0, -10608($fp)
	lw $t0, -10608($fp)
	lw $t1, 0($t0)
	sw $t1, -10612($fp)
	lw $t0, -10592($fp)
	lw $t1, -10612($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10616($fp)
	li $t0, 0
	lw $t1, -10616($fp)
	sub $t0, $t0, $t1
	sw $t0, -10620($fp)
	lw $t0, -10588($fp)
	lw $t1, -10620($fp)
	mul $t0, $t0, $t1
	sw $t0, -10624($fp)
	li $t0, 0
	sw $t0, -10628($fp)
	lw $t0, -1212($fp)
	sw $t0, -10632($fp)
	li $t0, 0
	lw $t1, -10632($fp)
	sub $t0, $t0, $t1
	sw $t0, -10636($fp)
	lw $t1, -10636($fp)
	li $t2, 0
	bne $t1, $t2, label554
	j label553
label553:
	li $t0, 1
	sw $t0, -10628($fp)
label554:
	lw $t1, -10624($fp)
	lw $t2, -10628($fp)
	bge $t1, $t2, label549
	j label550
label549:
	li $t0, 1
	sw $t0, -10572($fp)
label550:
	j label543
label545:
	j label540
label542:
	j label531
label530:
	addi $t0, $fp, -7556
	sw $t0, -10640($fp)
	li $t0, 0
	sw $t0, -10644($fp)
	li $t0, 18391
	sw $t0, -10648($fp)
	li $t0, 323
	sw $t0, -10652($fp)
	lw $t0, -10648($fp)
	lw $t1, -10652($fp)
	add $t0, $t0, $t1
	sw $t0, -10656($fp)
	li $t0, 51753
	sw $t0, -10660($fp)
	lw $t1, -10656($fp)
	lw $t2, -10660($fp)
	bgt $t1, $t2, label555
	j label556
label555:
	li $t0, 1
	sw $t0, -10644($fp)
label556:
	li $t0, 4
	lw $t1, -10644($fp)
	mul $t0, $t0, $t1
	sw $t0, -10664($fp)
	lw $t0, -10664($fp)
	lw $t1, -10640($fp)
	add $t0, $t0, $t1
	sw $t0, -10668($fp)
	lw $t0, -10668($fp)
	lw $t1, 0($t0)
	sw $t1, -10672($fp)
	lw $t0, -912($fp)
	sw $t0, -10676($fp)
	lw $t0, -10676($fp)
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	sw $t0, -10680($fp)
	li $t0, 0
	sw $t0, -10684($fp)
	lw $t0, -8324($fp)
	sw $t0, -10688($fp)
	lw $t1, -10688($fp)
	li $t2, 0
	bne $t1, $t2, label557
	j label560
label560:
	li $t0, 44265
	sw $t0, -10692($fp)
	lw $t1, -10692($fp)
	li $t2, 0
	bne $t1, $t2, label557
	j label559
label559:
	li $t0, 63278
	sw $t0, -10696($fp)
	lw $t1, -10696($fp)
	li $t2, 0
	bne $t1, $t2, label557
	j label558
label557:
	li $t0, 1
	sw $t0, -10684($fp)
label558:
	li $t0, 0
	sw $t0, -10700($fp)
	li $t0, 37747
	sw $t0, -10704($fp)
	li $t0, 61496
	sw $t0, -10708($fp)
	lw $t0, -10708($fp)
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	sw $t0, -10712($fp)
	li $t0, 34244
	sw $t0, -10716($fp)
	li $t0, 0
	lw $t1, -10716($fp)
	sub $t0, $t0, $t1
	sw $t0, -10720($fp)
	li $t0, 0
	lw $t1, -10720($fp)
	sub $t0, $t0, $t1
	sw $t0, -10724($fp)
	li $t0, 27297
	sw $t0, -10728($fp)
	lw $t0, -1764($fp)
	sw $t0, -10732($fp)
	lw $t0, -10728($fp)
	lw $t1, -10732($fp)
	mul $t0, $t0, $t1
	sw $t0, -10736($fp)
	li $t0, 54244
	sw $t0, -10740($fp)
	lw $t0, -10736($fp)
	lw $t1, -10740($fp)
	sub $t0, $t0, $t1
	sw $t0, -10744($fp)
	addi $sp, $sp, -4
	lw $t0, -10704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10744($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -10748($fp)
	addi $sp, $sp, 20
	lw $t0, -1272($fp)
	sw $t0, -10752($fp)
	lw $t1, -10748($fp)
	lw $t2, -10752($fp)
	ble $t1, $t2, label561
	j label562
label561:
	li $t0, 1
	sw $t0, -10700($fp)
label562:
	lw $t0, -8336($fp)
	sw $t0, -10756($fp)
	addi $sp, $sp, -4
	lw $t0, -10680($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10756($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -10760($fp)
	addi $sp, $sp, 20
	lw $t0, -10672($fp)
	lw $t1, -10760($fp)
	sub $t0, $t0, $t1
	sw $t0, -10764($fp)
label531:
	j label522
label524:
	li $t0, 0
	sw $t0, -10768($fp)
	li $t0, 9585
	sw $t0, -10772($fp)
	lw $t1, -10772($fp)
	li $t2, 0
	bne $t1, $t2, label564
	j label563
label563:
	li $t0, 1
	sw $t0, -10768($fp)
label564:
	lw $t0, -2220($fp)
	sw $t0, -10776($fp)
	lw $t0, -10776($fp)
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, -10780($fp)
	li $t0, 0
	sw $t0, -10784($fp)
	li $t0, 21630
	sw $t0, -10788($fp)
	lw $t1, -10788($fp)
	li $t2, 0
	bne $t1, $t2, label568
	j label567
label568:
	li $t0, 5821
	sw $t0, -10792($fp)
	lw $t1, -10792($fp)
	li $t2, 0
	bne $t1, $t2, label565
	j label567
label567:
	li $t0, 51929
	sw $t0, -10796($fp)
	lw $t1, -10796($fp)
	li $t2, 0
	bne $t1, $t2, label565
	j label566
label565:
	li $t0, 1
	sw $t0, -10784($fp)
label566:
	li $t0, 0
	sw $t0, -10800($fp)
	lw $t0, 4($fp)
	sw $t0, -10804($fp)
	lw $t1, -10804($fp)
	li $t2, 0
	bne $t1, $t2, label572
	j label570
label572:
	li $t0, 55195
	sw $t0, -10808($fp)
	lw $t1, -10808($fp)
	li $t2, 0
	bne $t1, $t2, label571
	j label570
label571:
	li $t0, 42539
	sw $t0, -10812($fp)
	lw $t1, -10812($fp)
	li $t2, 0
	bne $t1, $t2, label569
	j label570
label569:
	li $t0, 1
	sw $t0, -10800($fp)
label570:
	li $t0, 51249
	sw $t0, -10816($fp)
	lw $t0, -2340($fp)
	sw $t0, -10820($fp)
	lw $t0, -10820($fp)
	sw $t0, -8036($fp)
	lw $t0, -8036($fp)
	sw $t0, -10824($fp)
	li $t0, 0
	sw $t0, -10828($fp)
	li $t0, 32297
	sw $t0, -10832($fp)
	lw $t0, -1236($fp)
	sw $t0, -10836($fp)
	lw $t1, -10832($fp)
	lw $t2, -10836($fp)
	beq $t1, $t2, label575
	j label574
label575:
	li $t0, 64570
	sw $t0, -10840($fp)
	lw $t1, -10840($fp)
	li $t2, 0
	bne $t1, $t2, label573
	j label574
label573:
	li $t0, 1
	sw $t0, -10828($fp)
label574:
	lw $t0, -1284($fp)
	sw $t0, -10844($fp)
	addi $sp, $sp, -4
	lw $t0, -10816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10844($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -10848($fp)
	addi $sp, $sp, 20
	lw $t0, -2352($fp)
	sw $t0, -10852($fp)
	lw $t0, -10848($fp)
	lw $t1, -10852($fp)
	mul $t0, $t0, $t1
	sw $t0, -10856($fp)
	addi $sp, $sp, -4
	lw $t0, -10780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10856($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -10860($fp)
	addi $sp, $sp, 20
	lw $t0, -10768($fp)
	lw $t1, -10860($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10864($fp)
	li $t0, 0
	lw $t1, -10864($fp)
	sub $t0, $t0, $t1
	sw $t0, -10868($fp)
	li $t0, 52754
	sw $t0, -10872($fp)
	lw $t0, -10868($fp)
	lw $t1, -10872($fp)
	sub $t0, $t0, $t1
	sw $t0, -10876($fp)
	li $t0, 0
	sw $t0, -10880($fp)
	lw $t0, -1764($fp)
	sw $t0, -10884($fp)
	li $t0, 34896
	sw $t0, -10888($fp)
	lw $t0, -10884($fp)
	lw $t1, -10888($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10892($fp)
	lw $t0, -1776($fp)
	sw $t0, -10896($fp)
	lw $t1, -10892($fp)
	lw $t2, -10896($fp)
	bge $t1, $t2, label579
	j label580
label579:
	li $t0, 1
	sw $t0, -10880($fp)
label580:
	li $t0, 43669
	sw $t0, -10900($fp)
	li $t0, 0
	lw $t1, -10900($fp)
	sub $t0, $t0, $t1
	sw $t0, -10904($fp)
	li $t0, 0
	sw $t0, -10908($fp)
	li $t0, 65233
	sw $t0, -10912($fp)
	lw $t0, -480($fp)
	sw $t0, -10916($fp)
	lw $t0, -10912($fp)
	lw $t1, -10916($fp)
	sub $t0, $t0, $t1
	sw $t0, -10920($fp)
	lw $t0, -2208($fp)
	sw $t0, -10924($fp)
	lw $t1, -10920($fp)
	lw $t2, -10924($fp)
	beq $t1, $t2, label581
	j label582
label581:
	li $t0, 1
	sw $t0, -10908($fp)
label582:
	li $t0, 0
	sw $t0, -10928($fp)
	li $t0, 64197
	sw $t0, -10932($fp)
	li $t0, 8957
	sw $t0, -10936($fp)
	lw $t0, -10932($fp)
	lw $t1, -10936($fp)
	sub $t0, $t0, $t1
	sw $t0, -10940($fp)
	lw $t0, -1764($fp)
	sw $t0, -10944($fp)
	lw $t1, -10940($fp)
	lw $t2, -10944($fp)
	beq $t1, $t2, label583
	j label584
label583:
	li $t0, 1
	sw $t0, -10928($fp)
label584:
	addi $sp, $sp, -4
	lw $t0, -10880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -10928($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -10948($fp)
	addi $sp, $sp, 20
	lw $t1, -10948($fp)
	li $t2, 0
	bne $t1, $t2, label576
	j label577
label576:
	li $t0, 0
	sw $t0, -10952($fp)
	addi $t0, $fp, -224
	sw $t0, -10956($fp)
	lw $t0, -1524($fp)
	sw $t0, -10960($fp)
	li $t0, 4
	lw $t1, -10960($fp)
	mul $t0, $t0, $t1
	sw $t0, -10964($fp)
	lw $t0, -10964($fp)
	lw $t1, -10956($fp)
	add $t0, $t0, $t1
	sw $t0, -10968($fp)
	lw $t0, -10968($fp)
	lw $t1, 0($t0)
	sw $t1, -10972($fp)
	lw $t0, 12($fp)
	sw $t0, -10976($fp)
	lw $t0, -10972($fp)
	lw $t1, -10976($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10980($fp)
	lw $t0, 16($fp)
	sw $t0, -10984($fp)
	lw $t0, -10980($fp)
	lw $t1, -10984($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -10988($fp)
	addi $t0, $fp, -7596
	sw $t0, -10992($fp)
	li $t0, 0
	sw $t0, -10996($fp)
	li $t0, 4
	lw $t1, -10996($fp)
	mul $t0, $t0, $t1
	sw $t0, -11000($fp)
	lw $t0, -11000($fp)
	lw $t1, -10992($fp)
	add $t0, $t0, $t1
	sw $t0, -11004($fp)
	lw $t0, -11004($fp)
	lw $t1, 0($t0)
	sw $t1, -11008($fp)
	lw $t0, -456($fp)
	sw $t0, -11012($fp)
	lw $t0, -11008($fp)
	lw $t1, -11012($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11016($fp)
	lw $t0, -10988($fp)
	lw $t1, -11016($fp)
	add $t0, $t0, $t1
	sw $t0, -11020($fp)
	lw $t0, -1512($fp)
	sw $t0, -11024($fp)
	lw $t0, -1764($fp)
	sw $t0, -11028($fp)
	lw $t0, -11024($fp)
	lw $t1, -11028($fp)
	mul $t0, $t0, $t1
	sw $t0, -11032($fp)
	li $t0, 63119
	sw $t0, -11036($fp)
	lw $t0, -11032($fp)
	lw $t1, -11036($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11040($fp)
	li $t0, 0
	lw $t1, -11040($fp)
	sub $t0, $t0, $t1
	sw $t0, -11044($fp)
	lw $t1, -11020($fp)
	lw $t2, -11044($fp)
	bgt $t1, $t2, label585
	j label586
label585:
	li $t0, 1
	sw $t0, -10952($fp)
label586:
	j label578
label577:
label587:
	addi $t0, $fp, -176
	sw $t0, -11048($fp)
	lw $t0, -468($fp)
	sw $t0, -11052($fp)
	li $t0, 4
	lw $t1, -11052($fp)
	mul $t0, $t0, $t1
	sw $t0, -11056($fp)
	lw $t0, -11056($fp)
	lw $t1, -11048($fp)
	add $t0, $t0, $t1
	sw $t0, -11060($fp)
	lw $t0, -11060($fp)
	lw $t1, 0($t0)
	sw $t1, -11064($fp)
	lw $t0, -1980($fp)
	sw $t0, -11068($fp)
	li $t0, 0
	lw $t1, -11068($fp)
	sub $t0, $t0, $t1
	sw $t0, -11072($fp)
	lw $t0, -11064($fp)
	lw $t1, -11072($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -11076($fp)
	lw $t0, -11076($fp)
	sw $t0, -1524($fp)
	lw $t0, -1524($fp)
	sw $t0, -11080($fp)
	lw $t1, -11080($fp)
	li $t2, 0
	bne $t1, $t2, label588
	j label589
label588:
	lw $t0, -1992($fp)
	sw $t0, -11084($fp)
	lw $t0, -8300($fp)
	sw $t0, -11088($fp)
	addi $sp, $sp, -4
	lw $t0, -11084($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -11088($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -11092($fp)
	addi $sp, $sp, 12
	j label587
label589:
label578:
	addi $t0, $fp, -36
	sw $t0, -11096($fp)
	li $t0, 0
	sw $t0, -11100($fp)
	li $t0, 4
	lw $t1, -11100($fp)
	mul $t0, $t0, $t1
	sw $t0, -11104($fp)
	lw $t0, -11104($fp)
	lw $t1, -11096($fp)
	add $t0, $t0, $t1
	sw $t0, -11108($fp)
	lw $t0, -11108($fp)
	lw $t1, 0($t0)
	sw $t1, -11112($fp)
	lw $t0, -11112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -11116($fp)
	li $t0, 1
	sw $t0, -11120($fp)
	li $t0, 4
	lw $t1, -11120($fp)
	mul $t0, $t0, $t1
	sw $t0, -11124($fp)
	lw $t0, -11124($fp)
	lw $t1, -11116($fp)
	add $t0, $t0, $t1
	sw $t0, -11128($fp)
	lw $t0, -11128($fp)
	lw $t1, 0($t0)
	sw $t1, -11132($fp)
	lw $t0, -11132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -11136($fp)
	li $t0, 2
	sw $t0, -11140($fp)
	li $t0, 4
	lw $t1, -11140($fp)
	mul $t0, $t0, $t1
	sw $t0, -11144($fp)
	lw $t0, -11144($fp)
	lw $t1, -11136($fp)
	add $t0, $t0, $t1
	sw $t0, -11148($fp)
	lw $t0, -11148($fp)
	lw $t1, 0($t0)
	sw $t1, -11152($fp)
	lw $t0, -11152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -11156($fp)
	li $t0, 3
	sw $t0, -11160($fp)
	li $t0, 4
	lw $t1, -11160($fp)
	mul $t0, $t0, $t1
	sw $t0, -11164($fp)
	lw $t0, -11164($fp)
	lw $t1, -11156($fp)
	add $t0, $t0, $t1
	sw $t0, -11168($fp)
	lw $t0, -11168($fp)
	lw $t1, 0($t0)
	sw $t1, -11172($fp)
	lw $t0, -11172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -11176($fp)
	li $t0, 4
	sw $t0, -11180($fp)
	li $t0, 4
	lw $t1, -11180($fp)
	mul $t0, $t0, $t1
	sw $t0, -11184($fp)
	lw $t0, -11184($fp)
	lw $t1, -11176($fp)
	add $t0, $t0, $t1
	sw $t0, -11188($fp)
	lw $t0, -11188($fp)
	lw $t1, 0($t0)
	sw $t1, -11192($fp)
	lw $t0, -11192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -11196($fp)
	li $t0, 5
	sw $t0, -11200($fp)
	li $t0, 4
	lw $t1, -11200($fp)
	mul $t0, $t0, $t1
	sw $t0, -11204($fp)
	lw $t0, -11204($fp)
	lw $t1, -11196($fp)
	add $t0, $t0, $t1
	sw $t0, -11208($fp)
	lw $t0, -11208($fp)
	lw $t1, 0($t0)
	sw $t1, -11212($fp)
	lw $t0, -11212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -11216($fp)
	li $t0, 6
	sw $t0, -11220($fp)
	li $t0, 4
	lw $t1, -11220($fp)
	mul $t0, $t0, $t1
	sw $t0, -11224($fp)
	lw $t0, -11224($fp)
	lw $t1, -11216($fp)
	add $t0, $t0, $t1
	sw $t0, -11228($fp)
	lw $t0, -11228($fp)
	lw $t1, 0($t0)
	sw $t1, -11232($fp)
	lw $t0, -11232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -11236($fp)
	li $t0, 7
	sw $t0, -11240($fp)
	li $t0, 4
	lw $t1, -11240($fp)
	mul $t0, $t0, $t1
	sw $t0, -11244($fp)
	lw $t0, -11244($fp)
	lw $t1, -11236($fp)
	add $t0, $t0, $t1
	sw $t0, -11248($fp)
	lw $t0, -11248($fp)
	lw $t1, 0($t0)
	sw $t1, -11252($fp)
	lw $t0, -11252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -11256($fp)
	lw $t0, -11256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -11260($fp)
	lw $t0, -11260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -11264($fp)
	lw $t0, -11264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -11268($fp)
	li $t0, 0
	sw $t0, -11272($fp)
	li $t0, 4
	lw $t1, -11272($fp)
	mul $t0, $t0, $t1
	sw $t0, -11276($fp)
	lw $t0, -11276($fp)
	lw $t1, -11268($fp)
	add $t0, $t0, $t1
	sw $t0, -11280($fp)
	lw $t0, -11280($fp)
	lw $t1, 0($t0)
	sw $t1, -11284($fp)
	lw $t0, -11284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -11288($fp)
	li $t0, 1
	sw $t0, -11292($fp)
	li $t0, 4
	lw $t1, -11292($fp)
	mul $t0, $t0, $t1
	sw $t0, -11296($fp)
	lw $t0, -11296($fp)
	lw $t1, -11288($fp)
	add $t0, $t0, $t1
	sw $t0, -11300($fp)
	lw $t0, -11300($fp)
	lw $t1, 0($t0)
	sw $t1, -11304($fp)
	lw $t0, -11304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -11308($fp)
	li $t0, 2
	sw $t0, -11312($fp)
	li $t0, 4
	lw $t1, -11312($fp)
	mul $t0, $t0, $t1
	sw $t0, -11316($fp)
	lw $t0, -11316($fp)
	lw $t1, -11308($fp)
	add $t0, $t0, $t1
	sw $t0, -11320($fp)
	lw $t0, -11320($fp)
	lw $t1, 0($t0)
	sw $t1, -11324($fp)
	lw $t0, -11324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -52
	sw $t0, -11328($fp)
	li $t0, 3
	sw $t0, -11332($fp)
	li $t0, 4
	lw $t1, -11332($fp)
	mul $t0, $t0, $t1
	sw $t0, -11336($fp)
	lw $t0, -11336($fp)
	lw $t1, -11328($fp)
	add $t0, $t0, $t1
	sw $t0, -11340($fp)
	lw $t0, -11340($fp)
	lw $t1, 0($t0)
	sw $t1, -11344($fp)
	lw $t0, -11344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -588($fp)
	sw $t0, -11348($fp)
	lw $t0, -11348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -600($fp)
	sw $t0, -11352($fp)
	lw $t0, -11352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -11356($fp)
	li $t0, 0
	sw $t0, -11360($fp)
	li $t0, 4
	lw $t1, -11360($fp)
	mul $t0, $t0, $t1
	sw $t0, -11364($fp)
	lw $t0, -11364($fp)
	lw $t1, -11356($fp)
	add $t0, $t0, $t1
	sw $t0, -11368($fp)
	lw $t0, -11368($fp)
	lw $t1, 0($t0)
	sw $t1, -11372($fp)
	lw $t0, -11372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -11376($fp)
	li $t0, 1
	sw $t0, -11380($fp)
	li $t0, 4
	lw $t1, -11380($fp)
	mul $t0, $t0, $t1
	sw $t0, -11384($fp)
	lw $t0, -11384($fp)
	lw $t1, -11376($fp)
	add $t0, $t0, $t1
	sw $t0, -11388($fp)
	lw $t0, -11388($fp)
	lw $t1, 0($t0)
	sw $t1, -11392($fp)
	lw $t0, -11392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -11396($fp)
	li $t0, 2
	sw $t0, -11400($fp)
	li $t0, 4
	lw $t1, -11400($fp)
	mul $t0, $t0, $t1
	sw $t0, -11404($fp)
	lw $t0, -11404($fp)
	lw $t1, -11396($fp)
	add $t0, $t0, $t1
	sw $t0, -11408($fp)
	lw $t0, -11408($fp)
	lw $t1, 0($t0)
	sw $t1, -11412($fp)
	lw $t0, -11412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -11416($fp)
	li $t0, 0
	sw $t0, -11420($fp)
	li $t0, 4
	lw $t1, -11420($fp)
	mul $t0, $t0, $t1
	sw $t0, -11424($fp)
	lw $t0, -11424($fp)
	lw $t1, -11416($fp)
	add $t0, $t0, $t1
	sw $t0, -11428($fp)
	lw $t0, -11428($fp)
	lw $t1, 0($t0)
	sw $t1, -11432($fp)
	lw $t0, -11432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -11436($fp)
	li $t0, 1
	sw $t0, -11440($fp)
	li $t0, 4
	lw $t1, -11440($fp)
	mul $t0, $t0, $t1
	sw $t0, -11444($fp)
	lw $t0, -11444($fp)
	lw $t1, -11436($fp)
	add $t0, $t0, $t1
	sw $t0, -11448($fp)
	lw $t0, -11448($fp)
	lw $t1, 0($t0)
	sw $t1, -11452($fp)
	lw $t0, -11452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -11456($fp)
	li $t0, 2
	sw $t0, -11460($fp)
	li $t0, 4
	lw $t1, -11460($fp)
	mul $t0, $t0, $t1
	sw $t0, -11464($fp)
	lw $t0, -11464($fp)
	lw $t1, -11456($fp)
	add $t0, $t0, $t1
	sw $t0, -11468($fp)
	lw $t0, -11468($fp)
	lw $t1, 0($t0)
	sw $t1, -11472($fp)
	lw $t0, -11472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -11476($fp)
	li $t0, 3
	sw $t0, -11480($fp)
	li $t0, 4
	lw $t1, -11480($fp)
	mul $t0, $t0, $t1
	sw $t0, -11484($fp)
	lw $t0, -11484($fp)
	lw $t1, -11476($fp)
	add $t0, $t0, $t1
	sw $t0, -11488($fp)
	lw $t0, -11488($fp)
	lw $t1, 0($t0)
	sw $t1, -11492($fp)
	lw $t0, -11492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -11496($fp)
	li $t0, 4
	sw $t0, -11500($fp)
	li $t0, 4
	lw $t1, -11500($fp)
	mul $t0, $t0, $t1
	sw $t0, -11504($fp)
	lw $t0, -11504($fp)
	lw $t1, -11496($fp)
	add $t0, $t0, $t1
	sw $t0, -11508($fp)
	lw $t0, -11508($fp)
	lw $t1, 0($t0)
	sw $t1, -11512($fp)
	lw $t0, -11512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -11516($fp)
	li $t0, 5
	sw $t0, -11520($fp)
	li $t0, 4
	lw $t1, -11520($fp)
	mul $t0, $t0, $t1
	sw $t0, -11524($fp)
	lw $t0, -11524($fp)
	lw $t1, -11516($fp)
	add $t0, $t0, $t1
	sw $t0, -11528($fp)
	lw $t0, -11528($fp)
	lw $t1, 0($t0)
	sw $t1, -11532($fp)
	lw $t0, -11532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -11536($fp)
	li $t0, 6
	sw $t0, -11540($fp)
	li $t0, 4
	lw $t1, -11540($fp)
	mul $t0, $t0, $t1
	sw $t0, -11544($fp)
	lw $t0, -11544($fp)
	lw $t1, -11536($fp)
	add $t0, $t0, $t1
	sw $t0, -11548($fp)
	lw $t0, -11548($fp)
	lw $t1, 0($t0)
	sw $t1, -11552($fp)
	lw $t0, -11552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -11556($fp)
	li $t0, 7
	sw $t0, -11560($fp)
	li $t0, 4
	lw $t1, -11560($fp)
	mul $t0, $t0, $t1
	sw $t0, -11564($fp)
	lw $t0, -11564($fp)
	lw $t1, -11556($fp)
	add $t0, $t0, $t1
	sw $t0, -11568($fp)
	lw $t0, -11568($fp)
	lw $t1, 0($t0)
	sw $t1, -11572($fp)
	lw $t0, -11572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -11576($fp)
	li $t0, 8
	sw $t0, -11580($fp)
	li $t0, 4
	lw $t1, -11580($fp)
	mul $t0, $t0, $t1
	sw $t0, -11584($fp)
	lw $t0, -11584($fp)
	lw $t1, -11576($fp)
	add $t0, $t0, $t1
	sw $t0, -11588($fp)
	lw $t0, -11588($fp)
	lw $t1, 0($t0)
	sw $t1, -11592($fp)
	lw $t0, -11592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -900($fp)
	sw $t0, -11596($fp)
	lw $t0, -11596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -912($fp)
	sw $t0, -11600($fp)
	lw $t0, -11600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -924($fp)
	sw $t0, -11604($fp)
	lw $t0, -11604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -936($fp)
	sw $t0, -11608($fp)
	lw $t0, -11608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -948($fp)
	sw $t0, -11612($fp)
	lw $t0, -11612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -960($fp)
	sw $t0, -11616($fp)
	lw $t0, -11616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -972($fp)
	sw $t0, -11620($fp)
	lw $t0, -11620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -984($fp)
	sw $t0, -11624($fp)
	lw $t0, -11624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -996($fp)
	sw $t0, -11628($fp)
	lw $t0, -11628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -11632($fp)
	li $t0, 0
	sw $t0, -11636($fp)
	li $t0, 4
	lw $t1, -11636($fp)
	mul $t0, $t0, $t1
	sw $t0, -11640($fp)
	lw $t0, -11640($fp)
	lw $t1, -11632($fp)
	add $t0, $t0, $t1
	sw $t0, -11644($fp)
	lw $t0, -11644($fp)
	lw $t1, 0($t0)
	sw $t1, -11648($fp)
	lw $t0, -11648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -11652($fp)
	li $t0, 1
	sw $t0, -11656($fp)
	li $t0, 4
	lw $t1, -11656($fp)
	mul $t0, $t0, $t1
	sw $t0, -11660($fp)
	lw $t0, -11660($fp)
	lw $t1, -11652($fp)
	add $t0, $t0, $t1
	sw $t0, -11664($fp)
	lw $t0, -11664($fp)
	lw $t1, 0($t0)
	sw $t1, -11668($fp)
	lw $t0, -11668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -11672($fp)
	li $t0, 2
	sw $t0, -11676($fp)
	li $t0, 4
	lw $t1, -11676($fp)
	mul $t0, $t0, $t1
	sw $t0, -11680($fp)
	lw $t0, -11680($fp)
	lw $t1, -11672($fp)
	add $t0, $t0, $t1
	sw $t0, -11684($fp)
	lw $t0, -11684($fp)
	lw $t1, 0($t0)
	sw $t1, -11688($fp)
	lw $t0, -11688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -11692($fp)
	li $t0, 3
	sw $t0, -11696($fp)
	li $t0, 4
	lw $t1, -11696($fp)
	mul $t0, $t0, $t1
	sw $t0, -11700($fp)
	lw $t0, -11700($fp)
	lw $t1, -11692($fp)
	add $t0, $t0, $t1
	sw $t0, -11704($fp)
	lw $t0, -11704($fp)
	lw $t1, 0($t0)
	sw $t1, -11708($fp)
	lw $t0, -11708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -11712($fp)
	li $t0, 4
	sw $t0, -11716($fp)
	li $t0, 4
	lw $t1, -11716($fp)
	mul $t0, $t0, $t1
	sw $t0, -11720($fp)
	lw $t0, -11720($fp)
	lw $t1, -11712($fp)
	add $t0, $t0, $t1
	sw $t0, -11724($fp)
	lw $t0, -11724($fp)
	lw $t1, 0($t0)
	sw $t1, -11728($fp)
	lw $t0, -11728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -11732($fp)
	li $t0, 5
	sw $t0, -11736($fp)
	li $t0, 4
	lw $t1, -11736($fp)
	mul $t0, $t0, $t1
	sw $t0, -11740($fp)
	lw $t0, -11740($fp)
	lw $t1, -11732($fp)
	add $t0, $t0, $t1
	sw $t0, -11744($fp)
	lw $t0, -11744($fp)
	lw $t1, 0($t0)
	sw $t1, -11748($fp)
	lw $t0, -11748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -11752($fp)
	li $t0, 6
	sw $t0, -11756($fp)
	li $t0, 4
	lw $t1, -11756($fp)
	mul $t0, $t0, $t1
	sw $t0, -11760($fp)
	lw $t0, -11760($fp)
	lw $t1, -11752($fp)
	add $t0, $t0, $t1
	sw $t0, -11764($fp)
	lw $t0, -11764($fp)
	lw $t1, 0($t0)
	sw $t1, -11768($fp)
	lw $t0, -11768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -11772($fp)
	li $t0, 7
	sw $t0, -11776($fp)
	li $t0, 4
	lw $t1, -11776($fp)
	mul $t0, $t0, $t1
	sw $t0, -11780($fp)
	lw $t0, -11780($fp)
	lw $t1, -11772($fp)
	add $t0, $t0, $t1
	sw $t0, -11784($fp)
	lw $t0, -11784($fp)
	lw $t1, 0($t0)
	sw $t1, -11788($fp)
	lw $t0, -11788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1200($fp)
	sw $t0, -11792($fp)
	lw $t0, -11792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1212($fp)
	sw $t0, -11796($fp)
	lw $t0, -11796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1224($fp)
	sw $t0, -11800($fp)
	lw $t0, -11800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1236($fp)
	sw $t0, -11804($fp)
	lw $t0, -11804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1248($fp)
	sw $t0, -11808($fp)
	lw $t0, -11808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1260($fp)
	sw $t0, -11812($fp)
	lw $t0, -11812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1272($fp)
	sw $t0, -11816($fp)
	lw $t0, -11816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1284($fp)
	sw $t0, -11820($fp)
	lw $t0, -11820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -11824($fp)
	li $t0, 0
	sw $t0, -11828($fp)
	li $t0, 4
	lw $t1, -11828($fp)
	mul $t0, $t0, $t1
	sw $t0, -11832($fp)
	lw $t0, -11832($fp)
	lw $t1, -11824($fp)
	add $t0, $t0, $t1
	sw $t0, -11836($fp)
	lw $t0, -11836($fp)
	lw $t1, 0($t0)
	sw $t1, -11840($fp)
	lw $t0, -11840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -11844($fp)
	li $t0, 1
	sw $t0, -11848($fp)
	li $t0, 4
	lw $t1, -11848($fp)
	mul $t0, $t0, $t1
	sw $t0, -11852($fp)
	lw $t0, -11852($fp)
	lw $t1, -11844($fp)
	add $t0, $t0, $t1
	sw $t0, -11856($fp)
	lw $t0, -11856($fp)
	lw $t1, 0($t0)
	sw $t1, -11860($fp)
	lw $t0, -11860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -11864($fp)
	li $t0, 2
	sw $t0, -11868($fp)
	li $t0, 4
	lw $t1, -11868($fp)
	mul $t0, $t0, $t1
	sw $t0, -11872($fp)
	lw $t0, -11872($fp)
	lw $t1, -11864($fp)
	add $t0, $t0, $t1
	sw $t0, -11876($fp)
	lw $t0, -11876($fp)
	lw $t1, 0($t0)
	sw $t1, -11880($fp)
	lw $t0, -11880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -11884($fp)
	li $t0, 3
	sw $t0, -11888($fp)
	li $t0, 4
	lw $t1, -11888($fp)
	mul $t0, $t0, $t1
	sw $t0, -11892($fp)
	lw $t0, -11892($fp)
	lw $t1, -11884($fp)
	add $t0, $t0, $t1
	sw $t0, -11896($fp)
	lw $t0, -11896($fp)
	lw $t1, 0($t0)
	sw $t1, -11900($fp)
	lw $t0, -11900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -11904($fp)
	li $t0, 4
	sw $t0, -11908($fp)
	li $t0, 4
	lw $t1, -11908($fp)
	mul $t0, $t0, $t1
	sw $t0, -11912($fp)
	lw $t0, -11912($fp)
	lw $t1, -11904($fp)
	add $t0, $t0, $t1
	sw $t0, -11916($fp)
	lw $t0, -11916($fp)
	lw $t1, 0($t0)
	sw $t1, -11920($fp)
	lw $t0, -11920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -11924($fp)
	li $t0, 5
	sw $t0, -11928($fp)
	li $t0, 4
	lw $t1, -11928($fp)
	mul $t0, $t0, $t1
	sw $t0, -11932($fp)
	lw $t0, -11932($fp)
	lw $t1, -11924($fp)
	add $t0, $t0, $t1
	sw $t0, -11936($fp)
	lw $t0, -11936($fp)
	lw $t1, 0($t0)
	sw $t1, -11940($fp)
	lw $t0, -11940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -11944($fp)
	li $t0, 6
	sw $t0, -11948($fp)
	li $t0, 4
	lw $t1, -11948($fp)
	mul $t0, $t0, $t1
	sw $t0, -11952($fp)
	lw $t0, -11952($fp)
	lw $t1, -11944($fp)
	add $t0, $t0, $t1
	sw $t0, -11956($fp)
	lw $t0, -11956($fp)
	lw $t1, 0($t0)
	sw $t1, -11960($fp)
	lw $t0, -11960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -164
	sw $t0, -11964($fp)
	li $t0, 7
	sw $t0, -11968($fp)
	li $t0, 4
	lw $t1, -11968($fp)
	mul $t0, $t0, $t1
	sw $t0, -11972($fp)
	lw $t0, -11972($fp)
	lw $t1, -11964($fp)
	add $t0, $t0, $t1
	sw $t0, -11976($fp)
	lw $t0, -11976($fp)
	lw $t1, 0($t0)
	sw $t1, -11980($fp)
	lw $t0, -11980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1488($fp)
	sw $t0, -11984($fp)
	lw $t0, -11984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1500($fp)
	sw $t0, -11988($fp)
	lw $t0, -11988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1512($fp)
	sw $t0, -11992($fp)
	lw $t0, -11992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1524($fp)
	sw $t0, -11996($fp)
	lw $t0, -11996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -176
	sw $t0, -12000($fp)
	li $t0, 0
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
	addi $t0, $fp, -176
	sw $t0, -12020($fp)
	li $t0, 1
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
	addi $t0, $fp, -176
	sw $t0, -12040($fp)
	li $t0, 2
	sw $t0, -12044($fp)
	li $t0, 4
	lw $t1, -12044($fp)
	mul $t0, $t0, $t1
	sw $t0, -12048($fp)
	lw $t0, -12048($fp)
	lw $t1, -12040($fp)
	add $t0, $t0, $t1
	sw $t0, -12052($fp)
	lw $t0, -12052($fp)
	lw $t1, 0($t0)
	sw $t1, -12056($fp)
	lw $t0, -12056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1608($fp)
	sw $t0, -12060($fp)
	lw $t0, -12060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1620($fp)
	sw $t0, -12064($fp)
	lw $t0, -12064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -12068($fp)
	li $t0, 0
	sw $t0, -12072($fp)
	li $t0, 4
	lw $t1, -12072($fp)
	mul $t0, $t0, $t1
	sw $t0, -12076($fp)
	lw $t0, -12076($fp)
	lw $t1, -12068($fp)
	add $t0, $t0, $t1
	sw $t0, -12080($fp)
	lw $t0, -12080($fp)
	lw $t1, 0($t0)
	sw $t1, -12084($fp)
	lw $t0, -12084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -12088($fp)
	li $t0, 1
	sw $t0, -12092($fp)
	li $t0, 4
	lw $t1, -12092($fp)
	mul $t0, $t0, $t1
	sw $t0, -12096($fp)
	lw $t0, -12096($fp)
	lw $t1, -12088($fp)
	add $t0, $t0, $t1
	sw $t0, -12100($fp)
	lw $t0, -12100($fp)
	lw $t1, 0($t0)
	sw $t1, -12104($fp)
	lw $t0, -12104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -12108($fp)
	li $t0, 2
	sw $t0, -12112($fp)
	li $t0, 4
	lw $t1, -12112($fp)
	mul $t0, $t0, $t1
	sw $t0, -12116($fp)
	lw $t0, -12116($fp)
	lw $t1, -12108($fp)
	add $t0, $t0, $t1
	sw $t0, -12120($fp)
	lw $t0, -12120($fp)
	lw $t1, 0($t0)
	sw $t1, -12124($fp)
	lw $t0, -12124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -192
	sw $t0, -12128($fp)
	li $t0, 3
	sw $t0, -12132($fp)
	li $t0, 4
	lw $t1, -12132($fp)
	mul $t0, $t0, $t1
	sw $t0, -12136($fp)
	lw $t0, -12136($fp)
	lw $t1, -12128($fp)
	add $t0, $t0, $t1
	sw $t0, -12140($fp)
	lw $t0, -12140($fp)
	lw $t1, 0($t0)
	sw $t1, -12144($fp)
	lw $t0, -12144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1728($fp)
	sw $t0, -12148($fp)
	lw $t0, -12148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1740($fp)
	sw $t0, -12152($fp)
	lw $t0, -12152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1752($fp)
	sw $t0, -12156($fp)
	lw $t0, -12156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1764($fp)
	sw $t0, -12160($fp)
	lw $t0, -12160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1776($fp)
	sw $t0, -12164($fp)
	lw $t0, -12164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -12168($fp)
	li $t0, 0
	sw $t0, -12172($fp)
	li $t0, 4
	lw $t1, -12172($fp)
	mul $t0, $t0, $t1
	sw $t0, -12176($fp)
	lw $t0, -12176($fp)
	lw $t1, -12168($fp)
	add $t0, $t0, $t1
	sw $t0, -12180($fp)
	lw $t0, -12180($fp)
	lw $t1, 0($t0)
	sw $t1, -12184($fp)
	lw $t0, -12184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -12188($fp)
	li $t0, 1
	sw $t0, -12192($fp)
	li $t0, 4
	lw $t1, -12192($fp)
	mul $t0, $t0, $t1
	sw $t0, -12196($fp)
	lw $t0, -12196($fp)
	lw $t1, -12188($fp)
	add $t0, $t0, $t1
	sw $t0, -12200($fp)
	lw $t0, -12200($fp)
	lw $t1, 0($t0)
	sw $t1, -12204($fp)
	lw $t0, -12204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -12208($fp)
	li $t0, 2
	sw $t0, -12212($fp)
	li $t0, 4
	lw $t1, -12212($fp)
	mul $t0, $t0, $t1
	sw $t0, -12216($fp)
	lw $t0, -12216($fp)
	lw $t1, -12208($fp)
	add $t0, $t0, $t1
	sw $t0, -12220($fp)
	lw $t0, -12220($fp)
	lw $t1, 0($t0)
	sw $t1, -12224($fp)
	lw $t0, -12224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -12228($fp)
	li $t0, 3
	sw $t0, -12232($fp)
	li $t0, 4
	lw $t1, -12232($fp)
	mul $t0, $t0, $t1
	sw $t0, -12236($fp)
	lw $t0, -12236($fp)
	lw $t1, -12228($fp)
	add $t0, $t0, $t1
	sw $t0, -12240($fp)
	lw $t0, -12240($fp)
	lw $t1, 0($t0)
	sw $t1, -12244($fp)
	lw $t0, -12244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -12248($fp)
	li $t0, 4
	sw $t0, -12252($fp)
	li $t0, 4
	lw $t1, -12252($fp)
	mul $t0, $t0, $t1
	sw $t0, -12256($fp)
	lw $t0, -12256($fp)
	lw $t1, -12248($fp)
	add $t0, $t0, $t1
	sw $t0, -12260($fp)
	lw $t0, -12260($fp)
	lw $t1, 0($t0)
	sw $t1, -12264($fp)
	lw $t0, -12264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -12268($fp)
	li $t0, 5
	sw $t0, -12272($fp)
	li $t0, 4
	lw $t1, -12272($fp)
	mul $t0, $t0, $t1
	sw $t0, -12276($fp)
	lw $t0, -12276($fp)
	lw $t1, -12268($fp)
	add $t0, $t0, $t1
	sw $t0, -12280($fp)
	lw $t0, -12280($fp)
	lw $t1, 0($t0)
	sw $t1, -12284($fp)
	lw $t0, -12284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -12288($fp)
	li $t0, 6
	sw $t0, -12292($fp)
	li $t0, 4
	lw $t1, -12292($fp)
	mul $t0, $t0, $t1
	sw $t0, -12296($fp)
	lw $t0, -12296($fp)
	lw $t1, -12288($fp)
	add $t0, $t0, $t1
	sw $t0, -12300($fp)
	lw $t0, -12300($fp)
	lw $t1, 0($t0)
	sw $t1, -12304($fp)
	lw $t0, -12304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -12308($fp)
	li $t0, 7
	sw $t0, -12312($fp)
	li $t0, 4
	lw $t1, -12312($fp)
	mul $t0, $t0, $t1
	sw $t0, -12316($fp)
	lw $t0, -12316($fp)
	lw $t1, -12308($fp)
	add $t0, $t0, $t1
	sw $t0, -12320($fp)
	lw $t0, -12320($fp)
	lw $t1, 0($t0)
	sw $t1, -12324($fp)
	lw $t0, -12324($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1980($fp)
	sw $t0, -12328($fp)
	lw $t0, -12328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1992($fp)
	sw $t0, -12332($fp)
	lw $t0, -12332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2004($fp)
	sw $t0, -12336($fp)
	lw $t0, -12336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -12340($fp)
	li $t0, 0
	sw $t0, -12344($fp)
	li $t0, 4
	lw $t1, -12344($fp)
	mul $t0, $t0, $t1
	sw $t0, -12348($fp)
	lw $t0, -12348($fp)
	lw $t1, -12340($fp)
	add $t0, $t0, $t1
	sw $t0, -12352($fp)
	lw $t0, -12352($fp)
	lw $t1, 0($t0)
	sw $t1, -12356($fp)
	lw $t0, -12356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -12360($fp)
	li $t0, 1
	sw $t0, -12364($fp)
	li $t0, 4
	lw $t1, -12364($fp)
	mul $t0, $t0, $t1
	sw $t0, -12368($fp)
	lw $t0, -12368($fp)
	lw $t1, -12360($fp)
	add $t0, $t0, $t1
	sw $t0, -12372($fp)
	lw $t0, -12372($fp)
	lw $t1, 0($t0)
	sw $t1, -12376($fp)
	lw $t0, -12376($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -12380($fp)
	li $t0, 2
	sw $t0, -12384($fp)
	li $t0, 4
	lw $t1, -12384($fp)
	mul $t0, $t0, $t1
	sw $t0, -12388($fp)
	lw $t0, -12388($fp)
	lw $t1, -12380($fp)
	add $t0, $t0, $t1
	sw $t0, -12392($fp)
	lw $t0, -12392($fp)
	lw $t1, 0($t0)
	sw $t1, -12396($fp)
	lw $t0, -12396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -12400($fp)
	li $t0, 3
	sw $t0, -12404($fp)
	li $t0, 4
	lw $t1, -12404($fp)
	mul $t0, $t0, $t1
	sw $t0, -12408($fp)
	lw $t0, -12408($fp)
	lw $t1, -12400($fp)
	add $t0, $t0, $t1
	sw $t0, -12412($fp)
	lw $t0, -12412($fp)
	lw $t1, 0($t0)
	sw $t1, -12416($fp)
	lw $t0, -12416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -12420($fp)
	li $t0, 4
	sw $t0, -12424($fp)
	li $t0, 4
	lw $t1, -12424($fp)
	mul $t0, $t0, $t1
	sw $t0, -12428($fp)
	lw $t0, -12428($fp)
	lw $t1, -12420($fp)
	add $t0, $t0, $t1
	sw $t0, -12432($fp)
	lw $t0, -12432($fp)
	lw $t1, 0($t0)
	sw $t1, -12436($fp)
	lw $t0, -12436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -12440($fp)
	li $t0, 5
	sw $t0, -12444($fp)
	li $t0, 4
	lw $t1, -12444($fp)
	mul $t0, $t0, $t1
	sw $t0, -12448($fp)
	lw $t0, -12448($fp)
	lw $t1, -12440($fp)
	add $t0, $t0, $t1
	sw $t0, -12452($fp)
	lw $t0, -12452($fp)
	lw $t1, 0($t0)
	sw $t1, -12456($fp)
	lw $t0, -12456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -252
	sw $t0, -12460($fp)
	li $t0, 6
	sw $t0, -12464($fp)
	li $t0, 4
	lw $t1, -12464($fp)
	mul $t0, $t0, $t1
	sw $t0, -12468($fp)
	lw $t0, -12468($fp)
	lw $t1, -12460($fp)
	add $t0, $t0, $t1
	sw $t0, -12472($fp)
	lw $t0, -12472($fp)
	lw $t1, 0($t0)
	sw $t1, -12476($fp)
	lw $t0, -12476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2184($fp)
	sw $t0, -12480($fp)
	lw $t0, -12480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2196($fp)
	sw $t0, -12484($fp)
	lw $t0, -12484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2208($fp)
	sw $t0, -12488($fp)
	lw $t0, -12488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2220($fp)
	sw $t0, -12492($fp)
	lw $t0, -12492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -256
	sw $t0, -12496($fp)
	li $t0, 0
	sw $t0, -12500($fp)
	li $t0, 4
	lw $t1, -12500($fp)
	mul $t0, $t0, $t1
	sw $t0, -12504($fp)
	lw $t0, -12504($fp)
	lw $t1, -12496($fp)
	add $t0, $t0, $t1
	sw $t0, -12508($fp)
	lw $t0, -12508($fp)
	lw $t1, 0($t0)
	sw $t1, -12512($fp)
	lw $t0, -12512($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2256($fp)
	sw $t0, -12516($fp)
	lw $t0, -12516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2268($fp)
	sw $t0, -12520($fp)
	lw $t0, -12520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2280($fp)
	sw $t0, -12524($fp)
	lw $t0, -12524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2292($fp)
	sw $t0, -12528($fp)
	lw $t0, -12528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2304($fp)
	sw $t0, -12532($fp)
	lw $t0, -12532($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2316($fp)
	sw $t0, -12536($fp)
	lw $t0, -12536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2328($fp)
	sw $t0, -12540($fp)
	lw $t0, -12540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2340($fp)
	sw $t0, -12544($fp)
	lw $t0, -12544($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2352($fp)
	sw $t0, -12548($fp)
	lw $t0, -12548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2364($fp)
	sw $t0, -12552($fp)
	lw $t0, -12552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2376($fp)
	sw $t0, -12556($fp)
	lw $t0, -12556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2388($fp)
	sw $t0, -12560($fp)
	lw $t0, -12560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2400($fp)
	sw $t0, -12564($fp)
	lw $t0, -12564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -12568($fp)
	li $t0, 0
	sw $t0, -12572($fp)
	lw $t0, -2004($fp)
	sw $t0, -12576($fp)
	lw $t1, -12576($fp)
	li $t2, 0
	bne $t1, $t2, label593
	j label592
label592:
	li $t0, 1
	sw $t0, -12572($fp)
label593:
	li $t0, 25716
	sw $t0, -12580($fp)
	lw $t0, -12572($fp)
	lw $t1, -12580($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12584($fp)
	addi $t0, $fp, -252
	sw $t0, -12588($fp)
	li $t0, 4
	sw $t0, -12592($fp)
	li $t0, 4
	lw $t1, -12592($fp)
	mul $t0, $t0, $t1
	sw $t0, -12596($fp)
	lw $t0, -12596($fp)
	lw $t1, -12588($fp)
	add $t0, $t0, $t1
	sw $t0, -12600($fp)
	lw $t0, -12600($fp)
	lw $t1, 0($t0)
	sw $t1, -12604($fp)
	lw $t0, -12584($fp)
	lw $t1, -12604($fp)
	mul $t0, $t0, $t1
	sw $t0, -12608($fp)
	li $t0, 0
	sw $t0, -12612($fp)
	li $t0, 0
	sw $t0, -12616($fp)
	li $t0, 14747
	sw $t0, -12620($fp)
	li $t0, 43905
	sw $t0, -12624($fp)
	lw $t1, -12620($fp)
	lw $t2, -12624($fp)
	beq $t1, $t2, label596
	j label597
label596:
	li $t0, 1
	sw $t0, -12616($fp)
label597:
	li $t0, 39231
	sw $t0, -12628($fp)
	lw $t1, -12616($fp)
	lw $t2, -12628($fp)
	beq $t1, $t2, label594
	j label595
label594:
	li $t0, 1
	sw $t0, -12612($fp)
label595:
	addi $t0, $fp, -176
	sw $t0, -12632($fp)
	lw $t0, -1260($fp)
	sw $t0, -12636($fp)
	li $t0, 4
	lw $t1, -12636($fp)
	mul $t0, $t0, $t1
	sw $t0, -12640($fp)
	lw $t0, -12640($fp)
	lw $t1, -12632($fp)
	add $t0, $t0, $t1
	sw $t0, -12644($fp)
	lw $t0, -12644($fp)
	lw $t1, 0($t0)
	sw $t1, -12648($fp)
	addi $sp, $sp, -4
	lw $t0, -12612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12648($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12652($fp)
	addi $sp, $sp, 12
	lw $t0, -1212($fp)
	sw $t0, -12656($fp)
	lw $t0, -12652($fp)
	lw $t1, -12656($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -12660($fp)
	li $t0, 0
	sw $t0, -12664($fp)
	li $t0, 43271
	sw $t0, -12668($fp)
	li $t0, 0
	sw $t0, -12672($fp)
	li $t0, 26039
	sw $t0, -12676($fp)
	lw $t1, -12676($fp)
	li $t2, 0
	bne $t1, $t2, label601
	j label603
label603:
	li $t0, 9661
	sw $t0, -12680($fp)
	lw $t1, -12680($fp)
	li $t2, 0
	bne $t1, $t2, label601
	j label602
label601:
	li $t0, 1
	sw $t0, -12672($fp)
label602:
	addi $sp, $sp, -4
	lw $t0, -12668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12672($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12684($fp)
	addi $sp, $sp, 12
	lw $t1, -12684($fp)
	li $t2, 0
	bne $t1, $t2, label600
	j label599
label600:
	lw $t0, -1500($fp)
	sw $t0, -12688($fp)
	lw $t1, -12688($fp)
	li $t2, 0
	bne $t1, $t2, label598
	j label599
label598:
	li $t0, 1
	sw $t0, -12664($fp)
label599:
	addi $sp, $sp, -4
	lw $t0, -12660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -12664($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -12692($fp)
	addi $sp, $sp, 12
	lw $t0, -12608($fp)
	lw $t1, -12692($fp)
	add $t0, $t0, $t1
	sw $t0, -12696($fp)
	addi $t0, $fp, -224
	sw $t0, -12700($fp)
	lw $t0, -1236($fp)
	sw $t0, -12704($fp)
	li $t0, 4
	lw $t1, -12704($fp)
	mul $t0, $t0, $t1
	sw $t0, -12708($fp)
	lw $t0, -12708($fp)
	lw $t1, -12700($fp)
	add $t0, $t0, $t1
	sw $t0, -12712($fp)
	lw $t0, -12712($fp)
	lw $t1, 0($t0)
	sw $t1, -12716($fp)
	li $t0, 52494
	sw $t0, -12720($fp)
	lw $t0, -12716($fp)
	lw $t1, -12720($fp)
	mul $t0, $t0, $t1
	sw $t0, -12724($fp)
	lw $t1, -12696($fp)
	lw $t2, -12724($fp)
	bne $t1, $t2, label590
	j label591
label590:
	li $t0, 1
	sw $t0, -12568($fp)
label591:
	lw $ra, -4($fp)
	lw $v0, -12568($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -84
	li $t0, 22634
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 36973
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	lw $t0, -24($fp)
	sw $t0, -32($fp)
	li $t0, 0
	sw $t0, -36($fp)
	lw $t0, -24($fp)
	sw $t0, -40($fp)
	lw $t0, -12($fp)
	sw $t0, -44($fp)
	lw $t1, -40($fp)
	lw $t2, -44($fp)
	blt $t1, $t2, label604
	j label605
label604:
	li $t0, 1
	sw $t0, -36($fp)
label605:
	li $t0, 0
	sw $t0, -48($fp)
	lw $t0, -24($fp)
	sw $t0, -52($fp)
	lw $t1, -52($fp)
	li $t2, 0
	bne $t1, $t2, label608
	j label607
label608:
	li $t0, 54931
	sw $t0, -56($fp)
	lw $t1, -56($fp)
	li $t2, 0
	bne $t1, $t2, label606
	j label607
label606:
	li $t0, 1
	sw $t0, -48($fp)
label607:
	li $t0, 0
	sw $t0, -60($fp)
	lw $t0, -24($fp)
	sw $t0, -64($fp)
	li $t0, 0
	lw $t1, -64($fp)
	sub $t0, $t0, $t1
	sw $t0, -68($fp)
	li $t0, 62080
	sw $t0, -72($fp)
	lw $t1, -68($fp)
	lw $t2, -72($fp)
	blt $t1, $t2, label609
	j label610
label609:
	li $t0, 1
	sw $t0, -60($fp)
label610:
	addi $sp, $sp, -4
	lw $t0, -32($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -36($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -48($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -60($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -76($fp)
	addi $sp, $sp, 20
	lw $t0, -12($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 36007
	sw $t0, -88($fp)
	lw $ra, -4($fp)
	lw $v0, -88($fp)
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
