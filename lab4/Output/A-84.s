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
	addi $sp, $sp, -7632
	li $t0, 31870
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	li $t0, 25623
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	li $t0, 42075
	sw $t0, -224($fp)
	lw $t0, -224($fp)
	sw $t0, -228($fp)
	lw $t0, -228($fp)
	sw $t0, -232($fp)
	li $t0, 28791
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	li $t0, 25839
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	sw $t0, -256($fp)
	li $t0, 33261
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	li $t0, 32639
	sw $t0, -272($fp)
	addi $t0, $fp, -44
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
	li $t0, 24310
	sw $t0, -296($fp)
	addi $t0, $fp, -44
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
	li $t0, 886
	sw $t0, -320($fp)
	addi $t0, $fp, -44
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
	li $t0, 46850
	sw $t0, -344($fp)
	addi $t0, $fp, -44
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
	li $t0, 59581
	sw $t0, -368($fp)
	addi $t0, $fp, -44
	sw $t0, -372($fp)
	li $t0, 4
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
	li $t0, 60029
	sw $t0, -392($fp)
	addi $t0, $fp, -44
	sw $t0, -396($fp)
	li $t0, 5
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
	li $t0, 33716
	sw $t0, -416($fp)
	addi $t0, $fp, -44
	sw $t0, -420($fp)
	li $t0, 6
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
	li $t0, 56032
	sw $t0, -440($fp)
	addi $t0, $fp, -44
	sw $t0, -444($fp)
	li $t0, 7
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
	li $t0, 35317
	sw $t0, -464($fp)
	addi $t0, $fp, -44
	sw $t0, -468($fp)
	li $t0, 8
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
	li $t0, 26147
	sw $t0, -488($fp)
	addi $t0, $fp, -44
	sw $t0, -492($fp)
	li $t0, 9
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
	li $t0, 62802
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	li $t0, 47110
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	li $t0, 20477
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	li $t0, 52974
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	li $t0, 14800
	sw $t0, -560($fp)
	addi $t0, $fp, -56
	sw $t0, -564($fp)
	li $t0, 0
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
	li $t0, 24469
	sw $t0, -584($fp)
	addi $t0, $fp, -56
	sw $t0, -588($fp)
	li $t0, 1
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
	li $t0, 23557
	sw $t0, -608($fp)
	addi $t0, $fp, -56
	sw $t0, -612($fp)
	li $t0, 2
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
	li $t0, 10371
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	li $t0, 5281
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	li $t0, 6692
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	li $t0, 26877
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	li $t0, 49176
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	li $t0, 21135
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	li $t0, 26836
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	li $t0, 63517
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	li $t0, 53005
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	li $t0, 52459
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
	li $t0, 40057
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
	li $t0, 16260
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
	li $t0, 12763
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
	li $t0, 7782
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
	li $t0, 48899
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
	li $t0, 37073
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
	li $t0, 8668
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
	li $t0, 30213
	sw $t0, -932($fp)
	lw $t0, -932($fp)
	sw $t0, -936($fp)
	lw $t0, -936($fp)
	sw $t0, -940($fp)
	li $t0, 31118
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	sw $t0, -952($fp)
	li $t0, 3161
	sw $t0, -956($fp)
	addi $t0, $fp, -96
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
	li $t0, 63930
	sw $t0, -980($fp)
	addi $t0, $fp, -96
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
	li $t0, 21614
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	sw $t0, -1012($fp)
	li $t0, 38479
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	sw $t0, -1024($fp)
	li $t0, 24541
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -1036($fp)
	li $t0, 18881
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, -1048($fp)
	li $t0, 20053
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -1060($fp)
	li $t0, 45019
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, -1072($fp)
	li $t0, 6319
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
	li $t0, 34853
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -1096($fp)
	li $t0, 3952
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -1108($fp)
	li $t0, 29876
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	li $t0, 45224
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	sw $t0, -1132($fp)
	li $t0, 9233
	sw $t0, -1136($fp)
	addi $t0, $fp, -132
	sw $t0, -1140($fp)
	li $t0, 0
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
	li $t0, 36568
	sw $t0, -1160($fp)
	addi $t0, $fp, -132
	sw $t0, -1164($fp)
	li $t0, 1
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
	li $t0, 6565
	sw $t0, -1184($fp)
	addi $t0, $fp, -132
	sw $t0, -1188($fp)
	li $t0, 2
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
	li $t0, 58410
	sw $t0, -1208($fp)
	addi $t0, $fp, -132
	sw $t0, -1212($fp)
	li $t0, 3
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
	li $t0, 57703
	sw $t0, -1232($fp)
	addi $t0, $fp, -132
	sw $t0, -1236($fp)
	li $t0, 4
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
	li $t0, 33401
	sw $t0, -1256($fp)
	addi $t0, $fp, -132
	sw $t0, -1260($fp)
	li $t0, 5
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
	li $t0, 56391
	sw $t0, -1280($fp)
	addi $t0, $fp, -132
	sw $t0, -1284($fp)
	li $t0, 6
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
	li $t0, 45172
	sw $t0, -1304($fp)
	addi $t0, $fp, -132
	sw $t0, -1308($fp)
	li $t0, 7
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
	li $t0, 20324
	sw $t0, -1328($fp)
	addi $t0, $fp, -132
	sw $t0, -1332($fp)
	li $t0, 8
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
	li $t0, 30912
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	sw $t0, -1360($fp)
	li $t0, 61433
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	sw $t0, -1372($fp)
	li $t0, 33087
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -1384($fp)
	li $t0, 38694
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	sw $t0, -1396($fp)
	li $t0, 44796
	sw $t0, -1400($fp)
	addi $t0, $fp, -148
	sw $t0, -1404($fp)
	li $t0, 0
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
	li $t0, 4624
	sw $t0, -1424($fp)
	addi $t0, $fp, -148
	sw $t0, -1428($fp)
	li $t0, 1
	sw $t0, -1432($fp)
	lw $t0, -1432($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1436($fp)
	lw $t0, -1428($fp)
	lw $t1, -1436($fp)
	add $t0, $t0, $t1
	sw $t0, -1440($fp)
	lw $t0, -1424($fp)
	lw $t1, -1440($fp)
	sw $t0, 0($t1)
	lw $t0, -1440($fp)
	lw $t1, 0($t0)
	sw $t1, -1444($fp)
	li $t0, 47362
	sw $t0, -1448($fp)
	addi $t0, $fp, -148
	sw $t0, -1452($fp)
	li $t0, 2
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
	li $t0, 9474
	sw $t0, -1472($fp)
	addi $t0, $fp, -148
	sw $t0, -1476($fp)
	li $t0, 3
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
	li $t0, 35742
	sw $t0, -1496($fp)
	lw $t0, -1496($fp)
	sw $t0, -1500($fp)
	lw $t0, -1500($fp)
	sw $t0, -1504($fp)
	li $t0, 50524
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	sw $t0, -1512($fp)
	lw $t0, -1512($fp)
	sw $t0, -1516($fp)
	li $t0, 7868
	sw $t0, -1520($fp)
	addi $t0, $fp, -152
	sw $t0, -1524($fp)
	li $t0, 0
	sw $t0, -1528($fp)
	lw $t0, -1528($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1532($fp)
	lw $t0, -1524($fp)
	lw $t1, -1532($fp)
	add $t0, $t0, $t1
	sw $t0, -1536($fp)
	lw $t0, -1520($fp)
	lw $t1, -1536($fp)
	sw $t0, 0($t1)
	lw $t0, -1536($fp)
	lw $t1, 0($t0)
	sw $t1, -1540($fp)
	li $t0, 57357
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	sw $t0, -1552($fp)
	li $t0, 23467
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	sw $t0, -1560($fp)
	lw $t0, -1560($fp)
	sw $t0, -1564($fp)
	li $t0, 32409
	sw $t0, -1568($fp)
	addi $t0, $fp, -156
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
	li $t0, 10702
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	sw $t0, -1600($fp)
	li $t0, 43520
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	sw $t0, -1612($fp)
	li $t0, 11892
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	sw $t0, -1624($fp)
	li $t0, 17021
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	sw $t0, -1636($fp)
	li $t0, 12837
	sw $t0, -1640($fp)
	lw $t0, -1640($fp)
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	sw $t0, -1648($fp)
	li $t0, 15845
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	sw $t0, -1660($fp)
	li $t0, 46898
	sw $t0, -1664($fp)
	lw $t0, -1664($fp)
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	sw $t0, -1672($fp)
	li $t0, 58061
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	sw $t0, -1680($fp)
	lw $t0, -1680($fp)
	sw $t0, -1684($fp)
	li $t0, 25078
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	sw $t0, -1696($fp)
	li $t0, 17930
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	sw $t0, -1704($fp)
	lw $t0, -1704($fp)
	sw $t0, -1708($fp)
	li $t0, 64626
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	sw $t0, -1720($fp)
	li $t0, 17952
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	sw $t0, -1732($fp)
	li $t0, 10098
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -1744($fp)
	li $t0, 32491
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	sw $t0, -1756($fp)
	li $t0, 8808
	sw $t0, -1760($fp)
	addi $t0, $fp, -180
	sw $t0, -1764($fp)
	li $t0, 0
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
	li $t0, 55270
	sw $t0, -1784($fp)
	addi $t0, $fp, -180
	sw $t0, -1788($fp)
	li $t0, 1
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
	li $t0, 52815
	sw $t0, -1808($fp)
	addi $t0, $fp, -180
	sw $t0, -1812($fp)
	li $t0, 2
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
	li $t0, 39720
	sw $t0, -1832($fp)
	addi $t0, $fp, -180
	sw $t0, -1836($fp)
	li $t0, 3
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
	li $t0, 51167
	sw $t0, -1856($fp)
	addi $t0, $fp, -180
	sw $t0, -1860($fp)
	li $t0, 4
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
	li $t0, 20367
	sw $t0, -1880($fp)
	addi $t0, $fp, -180
	sw $t0, -1884($fp)
	li $t0, 5
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
	li $t0, 12879
	sw $t0, -1904($fp)
	addi $t0, $fp, -196
	sw $t0, -1908($fp)
	li $t0, 0
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
	li $t0, 30428
	sw $t0, -1928($fp)
	addi $t0, $fp, -196
	sw $t0, -1932($fp)
	li $t0, 1
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
	li $t0, 24991
	sw $t0, -1952($fp)
	addi $t0, $fp, -196
	sw $t0, -1956($fp)
	li $t0, 2
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
	li $t0, 60241
	sw $t0, -1976($fp)
	addi $t0, $fp, -196
	sw $t0, -1980($fp)
	li $t0, 3
	sw $t0, -1984($fp)
	lw $t0, -1984($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1988($fp)
	lw $t0, -1980($fp)
	lw $t1, -1988($fp)
	add $t0, $t0, $t1
	sw $t0, -1992($fp)
	lw $t0, -1976($fp)
	lw $t1, -1992($fp)
	sw $t0, 0($t1)
	lw $t0, -1992($fp)
	lw $t1, 0($t0)
	sw $t1, -1996($fp)
	li $t0, 39902
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	sw $t0, -2008($fp)
	li $t0, 60734
	sw $t0, -2012($fp)
	lw $t0, -2012($fp)
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	sw $t0, -2020($fp)
	li $t0, 45229
	sw $t0, -2024($fp)
	lw $t0, -2024($fp)
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	sw $t0, -2032($fp)
	li $t0, 47770
	sw $t0, -2036($fp)
	lw $t0, -2036($fp)
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	sw $t0, -2044($fp)
label121:
	li $t0, 0
	sw $t0, -2048($fp)
	lw $t0, -1704($fp)
	sw $t0, -2052($fp)
	lw $t1, -2052($fp)
	li $t2, 0
	bne $t1, $t2, label125
	j label124
label124:
	li $t0, 1
	sw $t0, -2048($fp)
label125:
	lw $t0, -540($fp)
	sw $t0, -2056($fp)
	lw $t0, -2048($fp)
	lw $t1, -2056($fp)
	mul $t0, $t0, $t1
	sw $t0, -2060($fp)
	li $t0, 52555
	sw $t0, -2064($fp)
	lw $t0, -696($fp)
	sw $t0, -2068($fp)
	lw $t0, -2064($fp)
	lw $t1, -2068($fp)
	mul $t0, $t0, $t1
	sw $t0, -2072($fp)
	lw $t0, -2060($fp)
	lw $t1, -2072($fp)
	add $t0, $t0, $t1
	sw $t0, -2076($fp)
	li $t0, 0
	sw $t0, -2080($fp)
	lw $t0, -636($fp)
	sw $t0, -2084($fp)
	lw $t1, -2084($fp)
	li $t2, 0
	bne $t1, $t2, label127
	j label126
label126:
	li $t0, 1
	sw $t0, -2080($fp)
label127:
	li $t0, 3160
	sw $t0, -2088($fp)
	lw $t0, -2080($fp)
	lw $t1, -2088($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2092($fp)
	lw $t0, -2076($fp)
	lw $t1, -2092($fp)
	sub $t0, $t0, $t1
	sw $t0, -2096($fp)
	li $t0, 14643
	sw $t0, -2100($fp)
	addi $t0, $fp, -44
	sw $t0, -2104($fp)
	lw $t0, -720($fp)
	sw $t0, -2108($fp)
	li $t0, 4
	lw $t1, -2108($fp)
	mul $t0, $t0, $t1
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	lw $t1, -2104($fp)
	add $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t0, -2116($fp)
	lw $t1, 0($t0)
	sw $t1, -2120($fp)
	lw $t0, -2100($fp)
	lw $t1, -2120($fp)
	mul $t0, $t0, $t1
	sw $t0, -2124($fp)
	lw $t1, -2096($fp)
	lw $t2, -2124($fp)
	bge $t1, $t2, label122
	j label123
label122:
	li $t0, 0
	sw $t0, -2128($fp)
	lw $t0, -228($fp)
	sw $t0, -2132($fp)
	lw $t1, -2132($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label132
label131:
	li $t0, 1
	sw $t0, -2128($fp)
label132:
	li $t0, 0
	sw $t0, -2136($fp)
	lw $t0, -936($fp)
	sw $t0, -2140($fp)
	li $t0, 0
	lw $t1, -2140($fp)
	sub $t0, $t0, $t1
	sw $t0, -2144($fp)
	li $t0, 0
	lw $t1, -2144($fp)
	sub $t0, $t0, $t1
	sw $t0, -2148($fp)
	lw $t1, -2148($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label133
label133:
	li $t0, 1
	sw $t0, -2136($fp)
label134:
	lw $t1, -2128($fp)
	lw $t2, -2136($fp)
	blt $t1, $t2, label128
	j label129
label128:
	addi $t0, $fp, -180
	sw $t0, -2152($fp)
	li $t0, 0
	sw $t0, -2156($fp)
	li $t0, 0
	sw $t0, -2160($fp)
	lw $t0, -1668($fp)
	sw $t0, -2164($fp)
	li $t0, 14742
	sw $t0, -2168($fp)
	lw $t0, -2164($fp)
	lw $t1, -2168($fp)
	sub $t0, $t0, $t1
	sw $t0, -2172($fp)
	li $t0, 0
	sw $t0, -2176($fp)
	li $t0, 26536
	sw $t0, -2180($fp)
	lw $t0, -1716($fp)
	sw $t0, -2184($fp)
	lw $t0, -2180($fp)
	lw $t1, -2184($fp)
	mul $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t0, -1740($fp)
	sw $t0, -2192($fp)
	lw $t0, -2188($fp)
	lw $t1, -2192($fp)
	sub $t0, $t0, $t1
	sw $t0, -2196($fp)
	lw $t0, -1392($fp)
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -2204($fp)
	addi $sp, $sp, -4
	lw $t0, -2196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2204($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2208($fp)
	addi $sp, $sp, 12
	lw $t0, -1752($fp)
	sw $t0, -2212($fp)
	lw $t1, -2208($fp)
	lw $t2, -2212($fp)
	beq $t1, $t2, label142
	j label143
label142:
	li $t0, 1
	sw $t0, -2176($fp)
label143:
	addi $sp, $sp, -4
	lw $t0, -2172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2176($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2216($fp)
	addi $sp, $sp, 12
	lw $t1, -2216($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label140
label140:
	li $t0, 1
	sw $t0, -2160($fp)
label141:
	li $t0, 0
	sw $t0, -2220($fp)
	lw $t0, -216($fp)
	sw $t0, -2224($fp)
	li $t0, 63257
	sw $t0, -2228($fp)
	lw $t0, -2224($fp)
	lw $t1, -2228($fp)
	mul $t0, $t0, $t1
	sw $t0, -2232($fp)
	lw $t1, -2232($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label146
label146:
	li $t0, 46680
	sw $t0, -2236($fp)
	lw $t1, -2236($fp)
	li $t2, 0
	bne $t1, $t2, label144
	j label145
label144:
	li $t0, 1
	sw $t0, -2220($fp)
label145:
	addi $sp, $sp, -4
	lw $t0, -2160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2220($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2240($fp)
	addi $sp, $sp, 12
	li $t0, 59517
	sw $t0, -2244($fp)
	lw $t0, -2240($fp)
	lw $t1, -2244($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2248($fp)
	li $t0, 42381
	sw $t0, -2252($fp)
	li $t0, 61640
	sw $t0, -2256($fp)
	lw $t0, -2252($fp)
	lw $t1, -2256($fp)
	sub $t0, $t0, $t1
	sw $t0, -2260($fp)
	lw $t1, -2248($fp)
	lw $t2, -2260($fp)
	beq $t1, $t2, label138
	j label139
label138:
	li $t0, 1
	sw $t0, -2156($fp)
label139:
	li $t0, 4
	lw $t1, -2156($fp)
	mul $t0, $t0, $t1
	sw $t0, -2264($fp)
	lw $t0, -2264($fp)
	lw $t1, -2152($fp)
	add $t0, $t0, $t1
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	lw $t1, 0($t0)
	sw $t1, -2272($fp)
	lw $t1, -2272($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label136
label135:
	li $t0, 52042
	sw $t0, -2276($fp)
	li $t0, 1923
	sw $t0, -2280($fp)
	lw $t0, -2276($fp)
	lw $t1, -2280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2284($fp)
	li $t0, 14035
	sw $t0, -2288($fp)
	lw $t0, -2284($fp)
	lw $t1, -2288($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2292($fp)
	li $t0, 0
	sw $t0, -2296($fp)
	li $t0, 19876
	sw $t0, -2300($fp)
	li $t0, 24133
	sw $t0, -2304($fp)
	lw $t0, -2300($fp)
	lw $t1, -2304($fp)
	sub $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $t0, -1596($fp)
	sw $t0, -2312($fp)
	li $t0, 51132
	sw $t0, -2316($fp)
	lw $t0, -2312($fp)
	lw $t1, -2316($fp)
	add $t0, $t0, $t1
	sw $t0, -2320($fp)
	addi $sp, $sp, -4
	lw $t0, -2308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2320($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2324($fp)
	addi $sp, $sp, 12
	lw $t1, -2324($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label151
label151:
	li $t0, 1
	sw $t0, -2296($fp)
label152:
	lw $t0, -2292($fp)
	lw $t1, -2296($fp)
	mul $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t1, -2328($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label150
label150:
	lw $t0, -1032($fp)
	sw $t0, -2332($fp)
	li $t0, 18087
	sw $t0, -2336($fp)
	lw $t0, -2332($fp)
	lw $t1, -2336($fp)
	sub $t0, $t0, $t1
	sw $t0, -2340($fp)
	lw $t1, -2340($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label148
label147:
	addi $t0, $fp, -132
	sw $t0, -2344($fp)
	li $t0, 7
	sw $t0, -2348($fp)
	li $t0, 4
	lw $t1, -2348($fp)
	mul $t0, $t0, $t1
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	lw $t1, -2344($fp)
	add $t0, $t0, $t1
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	lw $t1, 0($t0)
	sw $t1, -2360($fp)
	li $t0, 2869
	sw $t0, -2364($fp)
	lw $t0, -2360($fp)
	lw $t1, -2364($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2368($fp)
	lw $t1, -2368($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label156
label156:
	lw $t0, -1392($fp)
	sw $t0, -2372($fp)
	li $t0, 25734
	sw $t0, -2376($fp)
	lw $t0, -2372($fp)
	lw $t1, -2376($fp)
	add $t0, $t0, $t1
	sw $t0, -2380($fp)
	li $t0, 0
	sw $t0, -2384($fp)
	lw $t0, -516($fp)
	sw $t0, -2388($fp)
	lw $t1, -2388($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label160
label160:
	li $t0, 65035
	sw $t0, -2392($fp)
	lw $t1, -2392($fp)
	li $t2, 0
	bne $t1, $t2, label158
	j label159
label158:
	li $t0, 1
	sw $t0, -2384($fp)
label159:
	addi $sp, $sp, -4
	lw $t0, -2380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2384($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2396($fp)
	addi $sp, $sp, 12
	lw $t1, -2396($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label154
label157:
	lw $t0, -1128($fp)
	sw $t0, -2400($fp)
	li $t0, 15747
	sw $t0, -2404($fp)
	lw $t0, -2400($fp)
	lw $t1, -2404($fp)
	sub $t0, $t0, $t1
	sw $t0, -2408($fp)
	lw $t1, -2408($fp)
	li $t2, 0
	bne $t1, $t2, label153
	j label154
label153:
	li $t0, 0
	sw $t0, -2412($fp)
	addi $t0, $fp, -148
	sw $t0, -2416($fp)
	li $t0, 0
	sw $t0, -2420($fp)
	lw $t0, -1368($fp)
	sw $t0, -2424($fp)
	li $t0, 0
	lw $t1, -2424($fp)
	sub $t0, $t0, $t1
	sw $t0, -2428($fp)
	lw $t0, -1728($fp)
	sw $t0, -2432($fp)
	lw $t1, -2428($fp)
	lw $t2, -2432($fp)
	bne $t1, $t2, label163
	j label164
label163:
	li $t0, 1
	sw $t0, -2420($fp)
label164:
	li $t0, 4
	lw $t1, -2420($fp)
	mul $t0, $t0, $t1
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	lw $t1, -2416($fp)
	add $t0, $t0, $t1
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	lw $t1, 0($t0)
	sw $t1, -2444($fp)
	lw $t0, -1080($fp)
	sw $t0, -2448($fp)
	li $t0, 29927
	sw $t0, -2452($fp)
	addi $sp, $sp, -4
	lw $t0, -2448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2452($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2456($fp)
	addi $sp, $sp, 12
	lw $t0, -1668($fp)
	sw $t0, -2460($fp)
	li $t0, 50725
	sw $t0, -2464($fp)
	lw $t0, -2460($fp)
	lw $t1, -2464($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2468($fp)
	lw $t0, -2456($fp)
	lw $t1, -2468($fp)
	sub $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t1, -2444($fp)
	lw $t2, -2472($fp)
	bne $t1, $t2, label161
	j label162
label161:
	li $t0, 1
	sw $t0, -2412($fp)
label162:
	j label155
label154:
	li $t0, 10453
	sw $t0, -2476($fp)
	lw $t0, -2476($fp)
	sw $t0, -2480($fp)
	lw $t0, -2480($fp)
	sw $t0, -2484($fp)
	li $t0, 4293
	sw $t0, -2488($fp)
	lw $t0, -2488($fp)
	sw $t0, -2492($fp)
	lw $t0, -2492($fp)
	sw $t0, -2496($fp)
	li $t0, 45923
	sw $t0, -2500($fp)
	lw $t0, -2500($fp)
	sw $t0, -2504($fp)
	lw $t0, -2504($fp)
	sw $t0, -2508($fp)
	li $t0, 0
	sw $t0, -2512($fp)
	li $t0, 1170
	sw $t0, -2516($fp)
	lw $t0, -1020($fp)
	sw $t0, -2520($fp)
	lw $t0, -2516($fp)
	lw $t1, -2520($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2524($fp)
	lw $t1, -2524($fp)
	li $t2, 0
	bne $t1, $t2, label167
	j label166
label167:
	lw $t0, -1608($fp)
	sw $t0, -2528($fp)
	lw $t1, -2528($fp)
	li $t2, 0
	bne $t1, $t2, label165
	j label166
label165:
	li $t0, 1
	sw $t0, -2512($fp)
label166:
	li $t0, 0
	sw $t0, -2532($fp)
	addi $t0, $fp, -180
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
	lw $t1, -2552($fp)
	li $t2, 0
	bne $t1, $t2, label170
	j label169
label170:
	li $t0, 58843
	sw $t0, -2556($fp)
	lw $t1, -2556($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label169
label168:
	li $t0, 1
	sw $t0, -2532($fp)
label169:
	addi $sp, $sp, -4
	lw $t0, -2512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2532($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2560($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -2564($fp)
	li $t0, 0
	sw $t0, -2568($fp)
	li $t0, 55682
	sw $t0, -2572($fp)
	lw $t0, -2480($fp)
	sw $t0, -2576($fp)
	lw $t1, -2572($fp)
	lw $t2, -2576($fp)
	bgt $t1, $t2, label173
	j label174
label173:
	li $t0, 1
	sw $t0, -2568($fp)
label174:
	lw $t0, -708($fp)
	sw $t0, -2580($fp)
	lw $t1, -2568($fp)
	lw $t2, -2580($fp)
	bge $t1, $t2, label171
	j label172
label171:
	li $t0, 1
	sw $t0, -2564($fp)
label172:
	addi $sp, $sp, -4
	lw $t0, -2560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2564($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2584($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -2588($fp)
	lw $t0, -552($fp)
	sw $t0, -2592($fp)
	li $t0, 27706
	sw $t0, -2596($fp)
	lw $t0, -2592($fp)
	lw $t1, -2596($fp)
	add $t0, $t0, $t1
	sw $t0, -2600($fp)
	li $t0, 45406
	sw $t0, -2604($fp)
	lw $t1, -2600($fp)
	lw $t2, -2604($fp)
	blt $t1, $t2, label175
	j label176
label175:
	li $t0, 1
	sw $t0, -2588($fp)
label176:
	li $t0, 0
	sw $t0, -2608($fp)
	li $t0, 30663
	sw $t0, -2612($fp)
	lw $t1, -2612($fp)
	li $t2, 0
	bne $t1, $t2, label179
	j label177
label179:
	li $t0, 39987
	sw $t0, -2616($fp)
	lw $t1, -2616($fp)
	li $t2, 0
	bne $t1, $t2, label177
	j label178
label177:
	li $t0, 1
	sw $t0, -2608($fp)
label178:
	addi $sp, $sp, -4
	lw $t0, -2588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2608($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2620($fp)
	addi $sp, $sp, 12
	lw $t0, -2584($fp)
	lw $t1, -2620($fp)
	mul $t0, $t0, $t1
	sw $t0, -2624($fp)
label180:
	li $t0, 0
	sw $t0, -2628($fp)
	addi $t0, $fp, -56
	sw $t0, -2632($fp)
	lw $t0, -2504($fp)
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
	lw $t1, -2648($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label184
label184:
	li $t0, 1
	sw $t0, -2628($fp)
label185:
	lw $t0, 8($fp)
	sw $t0, -2652($fp)
	lw $t1, -2628($fp)
	lw $t2, -2652($fp)
	bne $t1, $t2, label183
	j label182
label183:
	li $t0, 33969
	sw $t0, -2656($fp)
	lw $t0, -708($fp)
	sw $t0, -2660($fp)
	lw $t0, -2656($fp)
	lw $t1, -2660($fp)
	mul $t0, $t0, $t1
	sw $t0, -2664($fp)
	li $t0, 4551
	sw $t0, -2668($fp)
	lw $t0, -2492($fp)
	sw $t0, -2672($fp)
	lw $t0, -2668($fp)
	lw $t1, -2672($fp)
	sub $t0, $t0, $t1
	sw $t0, -2676($fp)
	lw $t1, -2664($fp)
	lw $t2, -2676($fp)
	bge $t1, $t2, label181
	j label182
label181:
	li $t0, 0
	sw $t0, -2680($fp)
	li $t0, 6475
	sw $t0, -2684($fp)
	lw $t0, -2684($fp)
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -2688($fp)
	li $t0, 20475
	sw $t0, -2692($fp)
	addi $sp, $sp, -4
	lw $t0, -2688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2692($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2696($fp)
	addi $sp, $sp, 12
	lw $t0, -1392($fp)
	sw $t0, -2700($fp)
	lw $t0, -2696($fp)
	lw $t1, -2700($fp)
	mul $t0, $t0, $t1
	sw $t0, -2704($fp)
	li $t0, 0
	sw $t0, -2708($fp)
	lw $t0, -2504($fp)
	sw $t0, -2712($fp)
	li $t0, 41510
	sw $t0, -2716($fp)
	lw $t1, -2712($fp)
	lw $t2, -2716($fp)
	bne $t1, $t2, label188
	j label189
label188:
	li $t0, 1
	sw $t0, -2708($fp)
label189:
	addi $sp, $sp, -4
	lw $t0, -2704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2708($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2720($fp)
	addi $sp, $sp, 12
	lw $t1, -2720($fp)
	li $t2, 0
	bne $t1, $t2, label187
	j label186
label186:
	li $t0, 1
	sw $t0, -2680($fp)
label187:
	lw $t0, -636($fp)
	sw $t0, -2724($fp)
	lw $t0, -2680($fp)
	lw $t1, -2724($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2728($fp)
	lw $t0, -2728($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -2732($fp)
	j label180
label182:
	li $t0, 55545
	sw $t0, -2736($fp)
	lw $t0, -2736($fp)
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	sw $t0, -2744($fp)
	li $t0, 6072
	sw $t0, -2748($fp)
	li $t0, 0
	sw $t0, -2752($fp)
	li $t0, 0
	sw $t0, -2756($fp)
	lw $t0, -1680($fp)
	sw $t0, -2760($fp)
	lw $t1, -2760($fp)
	li $t2, 0
	bne $t1, $t2, label194
	j label193
label193:
	li $t0, 1
	sw $t0, -2756($fp)
label194:
	li $t0, 26351
	sw $t0, -2764($fp)
	lw $t0, -2756($fp)
	lw $t1, -2764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2768($fp)
	lw $t1, -2768($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label192
label192:
	li $t0, 14142
	sw $t0, -2772($fp)
	li $t0, 24159
	sw $t0, -2776($fp)
	lw $t1, -2772($fp)
	lw $t2, -2776($fp)
	beq $t1, $t2, label190
	j label191
label190:
	li $t0, 1
	sw $t0, -2752($fp)
label191:
	lw $t0, -2752($fp)
	sw $t0, -2740($fp)
	lw $t0, -2740($fp)
	sw $t0, -2780($fp)
	li $t0, 55035
	sw $t0, -2784($fp)
	addi $t0, $fp, -180
	sw $t0, -2788($fp)
	addi $t0, $fp, -156
	sw $t0, -2792($fp)
	lw $t0, -2504($fp)
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
	li $t0, 4
	lw $t1, -2808($fp)
	mul $t0, $t0, $t1
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	lw $t1, -2788($fp)
	add $t0, $t0, $t1
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	lw $t1, 0($t0)
	sw $t1, -2820($fp)
	li $t0, 0
	sw $t0, -2824($fp)
	lw $t0, -1080($fp)
	sw $t0, -2828($fp)
	lw $t0, -2028($fp)
	sw $t0, -2832($fp)
	lw $t0, -2828($fp)
	lw $t1, -2832($fp)
	mul $t0, $t0, $t1
	sw $t0, -2836($fp)
	li $t0, 0
	lw $t1, -2836($fp)
	sub $t0, $t0, $t1
	sw $t0, -2840($fp)
	li $t0, 0
	sw $t0, -2844($fp)
	li $t0, 0
	sw $t0, -2848($fp)
	lw $t0, -1668($fp)
	sw $t0, -2852($fp)
	lw $t1, -2852($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label199
label199:
	li $t0, 1
	sw $t0, -2848($fp)
label200:
	lw $t0, 8($fp)
	sw $t0, -2856($fp)
	lw $t1, -2848($fp)
	lw $t2, -2856($fp)
	bgt $t1, $t2, label197
	j label198
label197:
	li $t0, 1
	sw $t0, -2844($fp)
label198:
	addi $sp, $sp, -4
	lw $t0, -2840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2844($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2860($fp)
	addi $sp, $sp, 12
	lw $t1, -2860($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label195
label195:
	li $t0, 1
	sw $t0, -2824($fp)
label196:
	lw $t0, -2820($fp)
	lw $t1, -2824($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2864($fp)
	li $t0, 0
	sw $t0, -2868($fp)
	addi $t0, $fp, -96
	sw $t0, -2872($fp)
	li $t0, 0
	sw $t0, -2876($fp)
	lw $t0, -1392($fp)
	sw $t0, -2880($fp)
	lw $t1, -2880($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label206
label206:
	li $t0, 28010
	sw $t0, -2884($fp)
	lw $t1, -2884($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label205
label205:
	li $t0, 29526
	sw $t0, -2888($fp)
	lw $t1, -2888($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -2876($fp)
label204:
	li $t0, 4
	lw $t1, -2876($fp)
	mul $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	lw $t1, -2872($fp)
	add $t0, $t0, $t1
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	lw $t1, 0($t0)
	sw $t1, -2900($fp)
	lw $t1, -2900($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label201
label201:
	li $t0, 1
	sw $t0, -2868($fp)
label202:
label155:
	j label149
label148:
	addi $t0, $fp, -156
	sw $t0, -2904($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -2924($fp)
	addi $t0, $fp, -96
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
	lw $t1, -2944($fp)
	li $t2, 0
	bne $t1, $t2, label211
	j label210
label210:
	li $t0, 1
	sw $t0, -2924($fp)
label211:
	lw $t1, -2920($fp)
	lw $t2, -2924($fp)
	bge $t1, $t2, label207
	j label208
label207:
	li $t0, 0
	sw $t0, -2948($fp)
	lw $t0, -684($fp)
	sw $t0, -2952($fp)
	lw $t0, -648($fp)
	sw $t0, -2956($fp)
	lw $t0, -2952($fp)
	lw $t1, -2956($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2960($fp)
	lw $t1, -2960($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label216
label217:
	lw $t0, -1596($fp)
	sw $t0, -2964($fp)
	lw $t1, -2964($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label216
label215:
	li $t0, 1
	sw $t0, -2948($fp)
label216:
	li $t0, 0
	sw $t0, -2968($fp)
	li $t0, 18568
	sw $t0, -2972($fp)
	li $t0, 61729
	sw $t0, -2976($fp)
	lw $t0, -2972($fp)
	lw $t1, -2976($fp)
	add $t0, $t0, $t1
	sw $t0, -2980($fp)
	lw $t1, -2980($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label220
label220:
	li $t0, 20837
	sw $t0, -2984($fp)
	lw $t1, -2984($fp)
	li $t2, 0
	bne $t1, $t2, label218
	j label219
label218:
	li $t0, 1
	sw $t0, -2968($fp)
label219:
	addi $sp, $sp, -4
	lw $t0, -2948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2968($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2988($fp)
	addi $sp, $sp, 12
	lw $t1, -2988($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label213
label212:
	li $t0, 8714
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	sw $t0, -3000($fp)
	li $t0, 48256
	sw $t0, -3004($fp)
	lw $t0, -3004($fp)
	sw $t0, -3008($fp)
	lw $t0, -3008($fp)
	sw $t0, -3012($fp)
	lw $t0, -2996($fp)
	sw $t0, -3016($fp)
	lw $t0, -3016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3008($fp)
	sw $t0, -3020($fp)
	lw $t0, -3020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -3024($fp)
	lw $t0, -1656($fp)
	sw $t0, -3028($fp)
	lw $t0, -1056($fp)
	sw $t0, -3032($fp)
	lw $t0, -3028($fp)
	lw $t1, -3032($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3036($fp)
	lw $t0, -1632($fp)
	sw $t0, -3040($fp)
	lw $t0, -3036($fp)
	lw $t1, -3040($fp)
	mul $t0, $t0, $t1
	sw $t0, -3044($fp)
	lw $t0, -3008($fp)
	sw $t0, -3048($fp)
	lw $t0, -3044($fp)
	lw $t1, -3048($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3052($fp)
	lw $t1, -3052($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label222
label223:
	lw $t0, -2996($fp)
	sw $t0, -3056($fp)
	li $t0, 0
	lw $t1, -3056($fp)
	sub $t0, $t0, $t1
	sw $t0, -3060($fp)
	li $t0, 0
	sw $t0, -3064($fp)
	lw $t0, -672($fp)
	sw $t0, -3068($fp)
	lw $t1, -3068($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label225
label226:
	li $t0, 53780
	sw $t0, -3072($fp)
	lw $t1, -3072($fp)
	li $t2, 0
	bne $t1, $t2, label224
	j label225
label224:
	li $t0, 1
	sw $t0, -3064($fp)
label225:
	addi $sp, $sp, -4
	lw $t0, -3060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3064($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3076($fp)
	addi $sp, $sp, 12
	lw $t0, -648($fp)
	sw $t0, -3080($fp)
	lw $t0, -1080($fp)
	sw $t0, -3084($fp)
	lw $t0, -3080($fp)
	lw $t1, -3084($fp)
	mul $t0, $t0, $t1
	sw $t0, -3088($fp)
	lw $t1, -3076($fp)
	lw $t2, -3088($fp)
	blt $t1, $t2, label221
	j label222
label221:
	li $t0, 1
	sw $t0, -3024($fp)
label222:
	lw $ra, -4($fp)
	lw $v0, -3024($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label227:
	li $t0, 49426
	sw $t0, -3092($fp)
	li $t0, 18907
	sw $t0, -3096($fp)
	lw $t0, -3092($fp)
	lw $t1, -3096($fp)
	mul $t0, $t0, $t1
	sw $t0, -3100($fp)
	li $t0, 0
	sw $t0, -3104($fp)
	li $t0, 2021
	sw $t0, -3108($fp)
	lw $t1, -3108($fp)
	li $t2, 0
	bne $t1, $t2, label230
	j label231
label230:
	li $t0, 1
	sw $t0, -3104($fp)
label231:
	addi $sp, $sp, -4
	lw $t0, -3100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3104($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3112($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -3112($fp)
	sub $t0, $t0, $t1
	sw $t0, -3116($fp)
	lw $t0, -3116($fp)
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	sw $t0, -3120($fp)
	lw $t1, -3120($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label229
label228:
	li $t0, 0
	sw $t0, -3124($fp)
	addi $t0, $fp, -180
	sw $t0, -3128($fp)
	li $t0, 0
	sw $t0, -3132($fp)
	li $t0, 0
	sw $t0, -3136($fp)
	lw $t0, 8($fp)
	sw $t0, -3140($fp)
	li $t0, 42009
	sw $t0, -3144($fp)
	lw $t1, -3140($fp)
	lw $t2, -3144($fp)
	ble $t1, $t2, label237
	j label238
label237:
	li $t0, 1
	sw $t0, -3136($fp)
label238:
	li $t0, 11597
	sw $t0, -3148($fp)
	lw $t1, -3136($fp)
	lw $t2, -3148($fp)
	beq $t1, $t2, label235
	j label236
label235:
	li $t0, 1
	sw $t0, -3132($fp)
label236:
	li $t0, 4
	lw $t1, -3132($fp)
	mul $t0, $t0, $t1
	sw $t0, -3152($fp)
	lw $t0, -3152($fp)
	lw $t1, -3128($fp)
	add $t0, $t0, $t1
	sw $t0, -3156($fp)
	lw $t0, -3156($fp)
	lw $t1, 0($t0)
	sw $t1, -3160($fp)
	lw $t1, -3160($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label234
label234:
	lw $t0, -732($fp)
	sw $t0, -3164($fp)
	li $t0, 0
	lw $t1, -3164($fp)
	sub $t0, $t0, $t1
	sw $t0, -3168($fp)
	lw $t1, -3168($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label233
label232:
	li $t0, 1
	sw $t0, -3124($fp)
label233:
	j label227
label229:
	j label214
label213:
	addi $t0, $fp, -196
	sw $t0, -3172($fp)
	addi $t0, $fp, -88
	sw $t0, -3176($fp)
	li $t0, 2
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
	lw $t0, -1560($fp)
	sw $t0, -3196($fp)
	lw $t0, -3192($fp)
	lw $t1, -3196($fp)
	sub $t0, $t0, $t1
	sw $t0, -3200($fp)
	li $t0, 4
	lw $t1, -3200($fp)
	mul $t0, $t0, $t1
	sw $t0, -3204($fp)
	lw $t0, -3204($fp)
	lw $t1, -3172($fp)
	add $t0, $t0, $t1
	sw $t0, -3208($fp)
	lw $t0, -3208($fp)
	lw $t1, 0($t0)
	sw $t1, -3212($fp)
	lw $t1, -3212($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label240
label242:
	addi $t0, $fp, -180
	sw $t0, -3216($fp)
	lw $t0, -1104($fp)
	sw $t0, -3220($fp)
	li $t0, 4
	lw $t1, -3220($fp)
	mul $t0, $t0, $t1
	sw $t0, -3224($fp)
	lw $t0, -3224($fp)
	lw $t1, -3216($fp)
	add $t0, $t0, $t1
	sw $t0, -3228($fp)
	lw $t0, -3228($fp)
	lw $t1, 0($t0)
	sw $t1, -3232($fp)
	li $t0, 16148
	sw $t0, -3236($fp)
	li $t0, 40288
	sw $t0, -3240($fp)
	lw $t0, -3236($fp)
	lw $t1, -3240($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3244($fp)
	lw $t1, -3232($fp)
	lw $t2, -3244($fp)
	bge $t1, $t2, label239
	j label240
label239:
	li $t0, 0
	sw $t0, -3248($fp)
	li $t0, 36989
	sw $t0, -3252($fp)
	lw $t0, -3252($fp)
	sw $t0, -1668($fp)
	lw $t0, -1668($fp)
	sw $t0, -3256($fp)
	li $t0, 0
	sw $t0, -3260($fp)
	li $t0, 30917
	sw $t0, -3264($fp)
	li $t0, 22623
	sw $t0, -3268($fp)
	lw $t0, -3264($fp)
	lw $t1, -3268($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3272($fp)
	li $t0, 30297
	sw $t0, -3276($fp)
	lw $t1, -3272($fp)
	lw $t2, -3276($fp)
	beq $t1, $t2, label245
	j label246
label245:
	li $t0, 1
	sw $t0, -3260($fp)
label246:
	addi $sp, $sp, -4
	lw $t0, -3256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3260($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3280($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -3284($fp)
	li $t0, 48974
	sw $t0, -3288($fp)
	lw $t1, -3288($fp)
	li $t2, 0
	bne $t1, $t2, label248
	j label247
label247:
	li $t0, 1
	sw $t0, -3284($fp)
label248:
	li $t0, 0
	lw $t1, -3284($fp)
	sub $t0, $t0, $t1
	sw $t0, -3292($fp)
	lw $t1, -3280($fp)
	lw $t2, -3292($fp)
	bne $t1, $t2, label243
	j label244
label243:
	li $t0, 1
	sw $t0, -3248($fp)
label244:
	j label241
label240:
	addi $t0, $fp, -180
	sw $t0, -3296($fp)
	li $t0, 0
	sw $t0, -3300($fp)
	li $t0, 44440
	sw $t0, -3304($fp)
	lw $t0, -216($fp)
	sw $t0, -3308($fp)
	lw $t0, -3304($fp)
	lw $t1, -3308($fp)
	sub $t0, $t0, $t1
	sw $t0, -3312($fp)
	lw $t1, -3312($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label251
label251:
	li $t0, 61149
	sw $t0, -3316($fp)
	lw $t1, -3316($fp)
	li $t2, 0
	bne $t1, $t2, label249
	j label250
label249:
	li $t0, 1
	sw $t0, -3300($fp)
label250:
	li $t0, 4
	lw $t1, -3300($fp)
	mul $t0, $t0, $t1
	sw $t0, -3320($fp)
	lw $t0, -3320($fp)
	lw $t1, -3296($fp)
	add $t0, $t0, $t1
	sw $t0, -3324($fp)
	lw $t0, -3324($fp)
	lw $t1, 0($t0)
	sw $t1, -3328($fp)
	li $t0, 0
	sw $t0, -3332($fp)
	lw $t0, -216($fp)
	sw $t0, -3336($fp)
	lw $t1, -3336($fp)
	li $t2, 0
	bne $t1, $t2, label253
	j label252
label252:
	li $t0, 1
	sw $t0, -3332($fp)
label253:
	lw $t0, -3328($fp)
	lw $t1, -3332($fp)
	mul $t0, $t0, $t1
	sw $t0, -3340($fp)
	lw $ra, -4($fp)
	lw $v0, -3340($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label241:
label214:
	j label209
label208:
	li $t0, 0
	sw $t0, -3344($fp)
	li $t0, 38473
	sw $t0, -3348($fp)
	li $t0, 0
	lw $t1, -3348($fp)
	sub $t0, $t0, $t1
	sw $t0, -3352($fp)
	li $t0, 6914
	sw $t0, -3356($fp)
	lw $t0, -3352($fp)
	lw $t1, -3356($fp)
	add $t0, $t0, $t1
	sw $t0, -3360($fp)
	li $t0, 0
	sw $t0, -3364($fp)
	lw $t0, -948($fp)
	sw $t0, -3368($fp)
	lw $t1, -3368($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label257
label257:
	li $t0, 1
	sw $t0, -3364($fp)
label258:
	lw $t0, -3360($fp)
	lw $t1, -3364($fp)
	add $t0, $t0, $t1
	sw $t0, -3372($fp)
	li $t0, 0
	sw $t0, -3376($fp)
	li $t0, 0
	sw $t0, -3380($fp)
	li $t0, 30841
	sw $t0, -3384($fp)
	lw $t0, -1500($fp)
	sw $t0, -3388($fp)
	lw $t1, -3384($fp)
	lw $t2, -3388($fp)
	beq $t1, $t2, label263
	j label262
label263:
	li $t0, 34423
	sw $t0, -3392($fp)
	lw $t1, -3392($fp)
	li $t2, 0
	bne $t1, $t2, label261
	j label262
label261:
	li $t0, 1
	sw $t0, -3380($fp)
label262:
	lw $t0, -1512($fp)
	sw $t0, -3396($fp)
	lw $t0, -3396($fp)
	sw $t0, -1548($fp)
	lw $t0, -1548($fp)
	sw $t0, -3400($fp)
	addi $sp, $sp, -4
	lw $t0, -3380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3400($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3404($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -3408($fp)
	lw $t0, -2004($fp)
	sw $t0, -3412($fp)
	lw $t1, -3412($fp)
	li $t2, 0
	bne $t1, $t2, label266
	j label265
label266:
	li $t0, 25139
	sw $t0, -3416($fp)
	lw $t1, -3416($fp)
	li $t2, 0
	bne $t1, $t2, label264
	j label265
label264:
	li $t0, 1
	sw $t0, -3408($fp)
label265:
	addi $sp, $sp, -4
	lw $t0, -3404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3408($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3420($fp)
	addi $sp, $sp, 12
	lw $t1, -3420($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label259
label259:
	li $t0, 1
	sw $t0, -3376($fp)
label260:
	lw $t0, -3372($fp)
	lw $t1, -3376($fp)
	sub $t0, $t0, $t1
	sw $t0, -3424($fp)
	lw $t1, -3424($fp)
	li $t2, 0
	bne $t1, $t2, label256
	j label255
label256:
	addi $t0, $fp, -196
	sw $t0, -3428($fp)
	li $t0, 0
	sw $t0, -3432($fp)
	lw $t0, -1692($fp)
	sw $t0, -3436($fp)
	lw $t1, -3436($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label269
label269:
	lw $t0, -516($fp)
	sw $t0, -3440($fp)
	lw $t1, -3440($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label268
label267:
	li $t0, 1
	sw $t0, -3432($fp)
label268:
	li $t0, 4
	lw $t1, -3432($fp)
	mul $t0, $t0, $t1
	sw $t0, -3444($fp)
	lw $t0, -3444($fp)
	lw $t1, -3428($fp)
	add $t0, $t0, $t1
	sw $t0, -3448($fp)
	lw $t0, -3448($fp)
	lw $t1, 0($t0)
	sw $t1, -3452($fp)
	lw $t1, -3452($fp)
	li $t2, 0
	bne $t1, $t2, label254
	j label255
label254:
	li $t0, 1
	sw $t0, -3344($fp)
label255:
label209:
label149:
	j label137
label136:
	li $t0, 14864
	sw $t0, -3460($fp)
	lw $t0, -3460($fp)
	sw $t0, -3464($fp)
	lw $t0, -3464($fp)
	sw $t0, -3468($fp)
	li $t0, 38956
	sw $t0, -3472($fp)
	addi $t0, $fp, -3456
	sw $t0, -3476($fp)
	li $t0, 0
	sw $t0, -3480($fp)
	lw $t0, -3480($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3484($fp)
	lw $t0, -3476($fp)
	lw $t1, -3484($fp)
	add $t0, $t0, $t1
	sw $t0, -3488($fp)
	lw $t0, -3472($fp)
	lw $t1, -3488($fp)
	sw $t0, 0($t1)
	lw $t0, -3488($fp)
	lw $t1, 0($t0)
	sw $t1, -3492($fp)
	li $t0, 26323
	sw $t0, -3496($fp)
	lw $t0, -3496($fp)
	sw $t0, -3500($fp)
	lw $t0, -3500($fp)
	sw $t0, -3504($fp)
	li $t0, 55314
	sw $t0, -3508($fp)
	lw $t0, -3508($fp)
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	sw $t0, -3516($fp)
	li $t0, 57524
	sw $t0, -3520($fp)
	lw $t0, -3520($fp)
	sw $t0, -3524($fp)
	lw $t0, -3524($fp)
	sw $t0, -3528($fp)
	li $t0, 22516
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	sw $t0, -3540($fp)
	li $t0, 10615
	sw $t0, -3544($fp)
	lw $t0, -3544($fp)
	sw $t0, -3548($fp)
	lw $t0, -3548($fp)
	sw $t0, -3552($fp)
	li $t0, 702
	sw $t0, -3556($fp)
	lw $t0, -3556($fp)
	sw $t0, -3560($fp)
	lw $t0, -3560($fp)
	sw $t0, -3564($fp)
	lw $t0, -3464($fp)
	sw $t0, -3568($fp)
	lw $t0, -3568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3456
	sw $t0, -3572($fp)
	li $t0, 0
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
	lw $t0, -3500($fp)
	sw $t0, -3592($fp)
	lw $t0, -3592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3512($fp)
	sw $t0, -3596($fp)
	lw $t0, -3596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3524($fp)
	sw $t0, -3600($fp)
	lw $t0, -3600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3536($fp)
	sw $t0, -3604($fp)
	lw $t0, -3604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3548($fp)
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3560($fp)
	sw $t0, -3612($fp)
	lw $t0, -3612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -3536($fp)
	sw $t0, -3616($fp)
	lw $ra, -4($fp)
	lw $v0, -3616($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 5236
	sw $t0, -3620($fp)
	lw $t1, -3620($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label274
label274:
	lw $t0, -636($fp)
	sw $t0, -3624($fp)
	li $t0, 64395
	sw $t0, -3628($fp)
	lw $t0, -3624($fp)
	lw $t1, -3628($fp)
	mul $t0, $t0, $t1
	sw $t0, -3632($fp)
	li $t0, 2724
	sw $t0, -3636($fp)
	lw $t0, -3632($fp)
	lw $t1, -3636($fp)
	mul $t0, $t0, $t1
	sw $t0, -3640($fp)
	lw $t1, -3640($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label273
label273:
	li $t0, 54662
	sw $t0, -3644($fp)
	lw $t0, -1656($fp)
	sw $t0, -3648($fp)
	lw $t0, -3644($fp)
	lw $t1, -3648($fp)
	mul $t0, $t0, $t1
	sw $t0, -3652($fp)
	lw $t1, -3652($fp)
	li $t2, 0
	bne $t1, $t2, label270
	j label271
label270:
label275:
	lw $t0, -3500($fp)
	sw $t0, -3656($fp)
	lw $t0, -636($fp)
	sw $t0, -3660($fp)
	li $t0, 17767
	sw $t0, -3664($fp)
	lw $t0, -3660($fp)
	lw $t1, -3664($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3668($fp)
	lw $t0, -3560($fp)
	sw $t0, -3672($fp)
	lw $t0, -3668($fp)
	lw $t1, -3672($fp)
	mul $t0, $t0, $t1
	sw $t0, -3676($fp)
	lw $t1, -3656($fp)
	lw $t2, -3676($fp)
	beq $t1, $t2, label276
	j label278
label278:
	addi $t0, $fp, -180
	sw $t0, -3680($fp)
	lw $t0, -1032($fp)
	sw $t0, -3684($fp)
	li $t0, 4
	lw $t1, -3684($fp)
	mul $t0, $t0, $t1
	sw $t0, -3688($fp)
	lw $t0, -3688($fp)
	lw $t1, -3680($fp)
	add $t0, $t0, $t1
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	lw $t1, 0($t0)
	sw $t1, -3696($fp)
	lw $t0, -3464($fp)
	sw $t0, -3700($fp)
	li $t0, 44733
	sw $t0, -3704($fp)
	lw $t0, -3700($fp)
	lw $t1, -3704($fp)
	mul $t0, $t0, $t1
	sw $t0, -3708($fp)
	lw $t1, -3696($fp)
	lw $t2, -3708($fp)
	blt $t1, $t2, label276
	j label277
label276:
	lw $t0, -1032($fp)
	sw $t0, -3712($fp)
	lw $t1, -3712($fp)
	li $t2, 0
	bne $t1, $t2, label279
	j label280
label279:
	lw $t0, -228($fp)
	sw $t0, -3716($fp)
	lw $ra, -4($fp)
	lw $v0, -3716($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label281
label280:
	li $t0, 0
	sw $t0, -3720($fp)
	li $t0, 723
	sw $t0, -3724($fp)
	lw $t0, -636($fp)
	sw $t0, -3728($fp)
	lw $t0, -3724($fp)
	lw $t1, -3728($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3732($fp)
	li $t0, 0
	lw $t1, -3732($fp)
	sub $t0, $t0, $t1
	sw $t0, -3736($fp)
	lw $t1, -3736($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label283
label286:
	li $t0, 16544
	sw $t0, -3740($fp)
	li $t0, 55175
	sw $t0, -3744($fp)
	lw $t0, -3740($fp)
	lw $t1, -3744($fp)
	sub $t0, $t0, $t1
	sw $t0, -3748($fp)
	lw $t1, -3748($fp)
	li $t2, 0
	bne $t1, $t2, label285
	j label283
label285:
	lw $t0, -708($fp)
	sw $t0, -3752($fp)
	li $t0, 16872
	sw $t0, -3756($fp)
	lw $t0, -3752($fp)
	lw $t1, -3756($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3760($fp)
	lw $t0, -1044($fp)
	sw $t0, -3764($fp)
	lw $t1, -3760($fp)
	lw $t2, -3764($fp)
	bge $t1, $t2, label284
	j label283
label284:
	lw $t0, -216($fp)
	sw $t0, -3768($fp)
	li $t0, 0
	lw $t1, -3768($fp)
	sub $t0, $t0, $t1
	sw $t0, -3772($fp)
	li $t0, 0
	lw $t1, -3772($fp)
	sub $t0, $t0, $t1
	sw $t0, -3776($fp)
	lw $t0, -1020($fp)
	sw $t0, -3780($fp)
	li $t0, 56832
	sw $t0, -3784($fp)
	lw $t0, -3780($fp)
	lw $t1, -3784($fp)
	mul $t0, $t0, $t1
	sw $t0, -3788($fp)
	lw $t0, -3776($fp)
	lw $t1, -3788($fp)
	sub $t0, $t0, $t1
	sw $t0, -3792($fp)
	lw $t1, -3792($fp)
	li $t2, 0
	bne $t1, $t2, label282
	j label283
label282:
	li $t0, 1
	sw $t0, -3720($fp)
label283:
	li $t0, 20556
	sw $t0, -3796($fp)
	li $t0, 21594
	sw $t0, -3800($fp)
	li $t0, 0
	sw $t0, -3804($fp)
	li $t0, 0
	sw $t0, -3808($fp)
	li $t0, 39495
	sw $t0, -3812($fp)
	lw $t1, -3812($fp)
	li $t2, 0
	bne $t1, $t2, label290
	j label289
label289:
	li $t0, 1
	sw $t0, -3808($fp)
label290:
	lw $t0, -1668($fp)
	sw $t0, -3816($fp)
	lw $t1, -3808($fp)
	lw $t2, -3816($fp)
	blt $t1, $t2, label287
	j label288
label287:
	li $t0, 1
	sw $t0, -3804($fp)
label288:
	addi $sp, $sp, -4
	lw $t0, -3800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3804($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3820($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -3820($fp)
	sub $t0, $t0, $t1
	sw $t0, -3824($fp)
	lw $t0, -3796($fp)
	lw $t1, -3824($fp)
	mul $t0, $t0, $t1
	sw $t0, -3828($fp)
label281:
	j label275
label277:
	j label272
label271:
label291:
	li $t0, 0
	sw $t0, -3832($fp)
	lw $t0, -1008($fp)
	sw $t0, -3836($fp)
	li $t0, 0
	lw $t1, -3836($fp)
	sub $t0, $t0, $t1
	sw $t0, -3840($fp)
	addi $t0, $fp, -196
	sw $t0, -3844($fp)
	li $t0, 3
	sw $t0, -3848($fp)
	li $t0, 4
	lw $t1, -3848($fp)
	mul $t0, $t0, $t1
	sw $t0, -3852($fp)
	lw $t0, -3852($fp)
	lw $t1, -3844($fp)
	add $t0, $t0, $t1
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	lw $t1, 0($t0)
	sw $t1, -3860($fp)
	li $t0, 0
	sw $t0, -3864($fp)
	lw $t0, -1632($fp)
	sw $t0, -3868($fp)
	li $t0, 22934
	sw $t0, -3872($fp)
	lw $t1, -3868($fp)
	lw $t2, -3872($fp)
	bne $t1, $t2, label296
	j label298
label298:
	li $t0, 498
	sw $t0, -3876($fp)
	lw $t1, -3876($fp)
	li $t2, 0
	bne $t1, $t2, label296
	j label297
label296:
	li $t0, 1
	sw $t0, -3864($fp)
label297:
	addi $sp, $sp, -4
	lw $t0, -3860($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3864($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3880($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -3884($fp)
	li $t0, 57546
	sw $t0, -3888($fp)
	lw $t1, -3888($fp)
	li $t2, 0
	bne $t1, $t2, label302
	j label301
label302:
	lw $t0, -1644($fp)
	sw $t0, -3892($fp)
	lw $t1, -3892($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label301
label301:
	lw $t0, -240($fp)
	sw $t0, -3896($fp)
	lw $t1, -3896($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label300
label299:
	li $t0, 1
	sw $t0, -3884($fp)
label300:
	addi $sp, $sp, -4
	lw $t0, -3880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3884($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3900($fp)
	addi $sp, $sp, 12
	li $t0, 7412
	sw $t0, -3904($fp)
	lw $t0, -3900($fp)
	lw $t1, -3904($fp)
	add $t0, $t0, $t1
	sw $t0, -3908($fp)
	lw $t1, -3840($fp)
	lw $t2, -3908($fp)
	beq $t1, $t2, label294
	j label295
label294:
	li $t0, 1
	sw $t0, -3832($fp)
label295:
	lw $t0, -1392($fp)
	sw $t0, -3912($fp)
	li $t0, 0
	sw $t0, -3916($fp)
	lw $t0, -2004($fp)
	sw $t0, -3920($fp)
	lw $t1, -3920($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label303
label303:
	li $t0, 1
	sw $t0, -3916($fp)
label304:
	lw $t0, -3912($fp)
	lw $t1, -3916($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3924($fp)
	lw $t1, -3832($fp)
	lw $t2, -3924($fp)
	bne $t1, $t2, label292
	j label293
label292:
label305:
	addi $t0, $fp, -156
	sw $t0, -3928($fp)
	li $t0, 0
	sw $t0, -3932($fp)
	lw $t0, -1380($fp)
	sw $t0, -3936($fp)
	lw $t1, -3936($fp)
	li $t2, 0
	bne $t1, $t2, label310
	j label309
label310:
	lw $t0, -708($fp)
	sw $t0, -3940($fp)
	lw $t1, -3940($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label309
label308:
	li $t0, 1
	sw $t0, -3932($fp)
label309:
	li $t0, 4
	lw $t1, -3932($fp)
	mul $t0, $t0, $t1
	sw $t0, -3944($fp)
	lw $t0, -3944($fp)
	lw $t1, -3928($fp)
	add $t0, $t0, $t1
	sw $t0, -3948($fp)
	lw $t0, -3948($fp)
	lw $t1, 0($t0)
	sw $t1, -3952($fp)
	li $t0, 0
	lw $t1, -3952($fp)
	sub $t0, $t0, $t1
	sw $t0, -3956($fp)
	lw $t1, -3956($fp)
	li $t2, 0
	bne $t1, $t2, label307
	j label306
label306:
label311:
	addi $t0, $fp, -56
	sw $t0, -3960($fp)
	li $t0, 0
	sw $t0, -3964($fp)
	addi $t0, $fp, -180
	sw $t0, -3968($fp)
	lw $t0, -636($fp)
	sw $t0, -3972($fp)
	li $t0, 4
	lw $t1, -3972($fp)
	mul $t0, $t0, $t1
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	lw $t1, -3968($fp)
	add $t0, $t0, $t1
	sw $t0, -3980($fp)
	lw $t0, -3980($fp)
	lw $t1, 0($t0)
	sw $t1, -3984($fp)
	li $t0, 12762
	sw $t0, -3988($fp)
	lw $t1, -3984($fp)
	lw $t2, -3988($fp)
	ble $t1, $t2, label314
	j label315
label314:
	li $t0, 1
	sw $t0, -3964($fp)
label315:
	li $t0, 4
	lw $t1, -3964($fp)
	mul $t0, $t0, $t1
	sw $t0, -3992($fp)
	lw $t0, -3992($fp)
	lw $t1, -3960($fp)
	add $t0, $t0, $t1
	sw $t0, -3996($fp)
	lw $t0, -3996($fp)
	lw $t1, 0($t0)
	sw $t1, -4000($fp)
	li $t0, 0
	lw $t1, -4000($fp)
	sub $t0, $t0, $t1
	sw $t0, -4004($fp)
	lw $t1, -4004($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label313
label312:
	lw $t0, -1032($fp)
	sw $t0, -4008($fp)
	lw $t1, -4008($fp)
	li $t2, 0
	bne $t1, $t2, label321
	j label322
label322:
	li $t0, 26712
	sw $t0, -4012($fp)
	lw $t1, -4012($fp)
	li $t2, 0
	bne $t1, $t2, label316
	j label321
label321:
	addi $t0, $fp, -180
	sw $t0, -4016($fp)
	lw $t0, -1632($fp)
	sw $t0, -4020($fp)
	li $t0, 4
	lw $t1, -4020($fp)
	mul $t0, $t0, $t1
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	lw $t1, -4016($fp)
	add $t0, $t0, $t1
	sw $t0, -4028($fp)
	lw $t0, -4028($fp)
	lw $t1, 0($t0)
	sw $t1, -4032($fp)
	lw $t1, -4032($fp)
	li $t2, 0
	bne $t1, $t2, label316
	j label320
label320:
	li $t0, 41835
	sw $t0, -4036($fp)
	li $t0, 27626
	sw $t0, -4040($fp)
	lw $t0, -4036($fp)
	lw $t1, -4040($fp)
	add $t0, $t0, $t1
	sw $t0, -4044($fp)
	lw $t0, -3524($fp)
	sw $t0, -4048($fp)
	lw $t1, -4044($fp)
	lw $t2, -4048($fp)
	bgt $t1, $t2, label316
	j label319
label319:
	li $t0, 132
	sw $t0, -4052($fp)
	lw $t1, -4052($fp)
	li $t2, 0
	bne $t1, $t2, label316
	j label317
label316:
	li $t0, 0
	sw $t0, -4056($fp)
	lw $t0, -1032($fp)
	sw $t0, -4060($fp)
	lw $t1, -4060($fp)
	li $t2, 0
	bne $t1, $t2, label325
	j label324
label325:
	addi $t0, $fp, -88
	sw $t0, -4064($fp)
	lw $t0, -1392($fp)
	sw $t0, -4068($fp)
	li $t0, 4
	lw $t1, -4068($fp)
	mul $t0, $t0, $t1
	sw $t0, -4072($fp)
	lw $t0, -4072($fp)
	lw $t1, -4064($fp)
	add $t0, $t0, $t1
	sw $t0, -4076($fp)
	lw $t0, -4076($fp)
	lw $t1, 0($t0)
	sw $t1, -4080($fp)
	lw $t1, -4080($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label323
label323:
	li $t0, 1
	sw $t0, -4056($fp)
label324:
	j label318
label317:
	li $t0, 0
	sw $t0, -4084($fp)
	li $t0, 0
	sw $t0, -4088($fp)
	lw $t0, -1680($fp)
	sw $t0, -4092($fp)
	lw $t1, -4092($fp)
	li $t2, 0
	bne $t1, $t2, label329
	j label328
label328:
	li $t0, 1
	sw $t0, -4088($fp)
label329:
	li $t0, 57656
	sw $t0, -4096($fp)
	lw $t0, -4088($fp)
	lw $t1, -4096($fp)
	mul $t0, $t0, $t1
	sw $t0, -4100($fp)
	li $t0, 17404
	sw $t0, -4104($fp)
	li $t0, 0
	sw $t0, -4108($fp)
	li $t0, 2622
	sw $t0, -4112($fp)
	lw $t0, -264($fp)
	sw $t0, -4116($fp)
	lw $t0, -4112($fp)
	lw $t1, -4116($fp)
	mul $t0, $t0, $t1
	sw $t0, -4120($fp)
	lw $t1, -4120($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label332
label332:
	lw $t0, -204($fp)
	sw $t0, -4124($fp)
	lw $t1, -4124($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label331
label330:
	li $t0, 1
	sw $t0, -4108($fp)
label331:
	addi $sp, $sp, -4
	lw $t0, -4104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4108($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4128($fp)
	addi $sp, $sp, 12
	lw $t0, -1044($fp)
	sw $t0, -4132($fp)
	lw $t0, -4128($fp)
	lw $t1, -4132($fp)
	mul $t0, $t0, $t1
	sw $t0, -4136($fp)
	addi $sp, $sp, -4
	lw $t0, -4100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4136($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4140($fp)
	addi $sp, $sp, 12
	lw $t0, -660($fp)
	sw $t0, -4144($fp)
	lw $t0, -1032($fp)
	sw $t0, -4148($fp)
	li $t0, 30374
	sw $t0, -4152($fp)
	lw $t0, -4148($fp)
	lw $t1, -4152($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4156($fp)
	li $t0, 0
	lw $t1, -4156($fp)
	sub $t0, $t0, $t1
	sw $t0, -4160($fp)
	li $t0, 28020
	sw $t0, -4164($fp)
	lw $t0, -3548($fp)
	sw $t0, -4168($fp)
	lw $t0, -4164($fp)
	lw $t1, -4168($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4172($fp)
	li $t0, 58359
	sw $t0, -4176($fp)
	lw $t0, -4172($fp)
	lw $t1, -4176($fp)
	mul $t0, $t0, $t1
	sw $t0, -4180($fp)
	addi $sp, $sp, -4
	lw $t0, -4160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4180($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4184($fp)
	addi $sp, $sp, 12
	lw $t0, -2040($fp)
	sw $t0, -4188($fp)
	lw $t0, -4184($fp)
	lw $t1, -4188($fp)
	sub $t0, $t0, $t1
	sw $t0, -4192($fp)
	li $t0, 0
	sw $t0, -4196($fp)
	li $t0, 0
	sw $t0, -4200($fp)
	li $t0, 25138
	sw $t0, -4204($fp)
	lw $t0, 8($fp)
	sw $t0, -4208($fp)
	lw $t1, -4204($fp)
	lw $t2, -4208($fp)
	bgt $t1, $t2, label335
	j label336
label335:
	li $t0, 1
	sw $t0, -4200($fp)
label336:
	lw $t0, -708($fp)
	sw $t0, -4212($fp)
	lw $t1, -4200($fp)
	lw $t2, -4212($fp)
	beq $t1, $t2, label333
	j label334
label333:
	li $t0, 1
	sw $t0, -4196($fp)
label334:
	addi $sp, $sp, -4
	lw $t0, -4192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4196($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4216($fp)
	addi $sp, $sp, 12
	lw $t0, -4144($fp)
	lw $t1, -4216($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4220($fp)
	lw $t1, -4140($fp)
	lw $t2, -4220($fp)
	bgt $t1, $t2, label326
	j label327
label326:
	li $t0, 1
	sw $t0, -4084($fp)
label327:
label318:
	j label311
label313:
	j label305
label307:
	j label291
label293:
label272:
	lw $t0, -216($fp)
	sw $t0, -4224($fp)
	li $t0, 0
	sw $t0, -4228($fp)
	li $t0, 26879
	sw $t0, -4232($fp)
	lw $t1, -4232($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label341
label341:
	li $t0, 1
	sw $t0, -4228($fp)
label342:
	lw $t0, -4224($fp)
	lw $t1, -4228($fp)
	add $t0, $t0, $t1
	sw $t0, -4236($fp)
	li $t0, 0
	sw $t0, -4240($fp)
	li $t0, 61083
	sw $t0, -4244($fp)
	li $t0, 0
	lw $t1, -4244($fp)
	sub $t0, $t0, $t1
	sw $t0, -4248($fp)
	lw $t1, -4248($fp)
	li $t2, 0
	bne $t1, $t2, label344
	j label343
label343:
	li $t0, 1
	sw $t0, -4240($fp)
label344:
	lw $t0, -4236($fp)
	lw $t1, -4240($fp)
	add $t0, $t0, $t1
	sw $t0, -4252($fp)
	lw $t1, -4252($fp)
	li $t2, 0
	bne $t1, $t2, label340
	j label338
label340:
	addi $t0, $fp, -3456
	sw $t0, -4256($fp)
	lw $t0, -1008($fp)
	sw $t0, -4260($fp)
	li $t0, 4
	lw $t1, -4260($fp)
	mul $t0, $t0, $t1
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	lw $t1, -4256($fp)
	add $t0, $t0, $t1
	sw $t0, -4268($fp)
	lw $t0, -4268($fp)
	lw $t1, 0($t0)
	sw $t1, -4272($fp)
	lw $t1, -4272($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label338
label337:
label345:
	lw $t0, -2016($fp)
	sw $t0, -4276($fp)
	li $t0, 0
	sw $t0, -4280($fp)
	li $t0, 19500
	sw $t0, -4284($fp)
	li $t0, 44646
	sw $t0, -4288($fp)
	lw $t0, -4284($fp)
	lw $t1, -4288($fp)
	mul $t0, $t0, $t1
	sw $t0, -4292($fp)
	lw $t0, -1704($fp)
	sw $t0, -4296($fp)
	lw $t1, -4292($fp)
	lw $t2, -4296($fp)
	bge $t1, $t2, label348
	j label349
label348:
	li $t0, 1
	sw $t0, -4280($fp)
label349:
	addi $sp, $sp, -4
	lw $t0, -4276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4280($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4300($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -4304($fp)
	li $t0, 40280
	sw $t0, -4308($fp)
	lw $t1, -4308($fp)
	li $t2, 0
	bne $t1, $t2, label351
	j label350
label350:
	li $t0, 1
	sw $t0, -4304($fp)
label351:
	li $t0, 0
	lw $t1, -4304($fp)
	sub $t0, $t0, $t1
	sw $t0, -4312($fp)
	lw $t0, -4300($fp)
	lw $t1, -4312($fp)
	sub $t0, $t0, $t1
	sw $t0, -4316($fp)
	addi $t0, $fp, -96
	sw $t0, -4320($fp)
	lw $t0, -516($fp)
	sw $t0, -4324($fp)
	lw $t0, -4324($fp)
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	sw $t0, -4328($fp)
	li $t0, 4
	lw $t1, -4328($fp)
	mul $t0, $t0, $t1
	sw $t0, -4332($fp)
	lw $t0, -4332($fp)
	lw $t1, -4320($fp)
	add $t0, $t0, $t1
	sw $t0, -4336($fp)
	lw $t0, -4336($fp)
	lw $t1, 0($t0)
	sw $t1, -4340($fp)
	lw $t0, -4316($fp)
	lw $t1, -4340($fp)
	sub $t0, $t0, $t1
	sw $t0, -4344($fp)
	lw $t1, -4344($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label347
label346:
	li $t0, 0
	sw $t0, -4348($fp)
	lw $t0, -936($fp)
	sw $t0, -4352($fp)
	li $t0, 20224
	sw $t0, -4356($fp)
	lw $t1, -4352($fp)
	lw $t2, -4356($fp)
	beq $t1, $t2, label355
	j label357
label357:
	li $t0, 61191
	sw $t0, -4360($fp)
	li $t0, 29919
	sw $t0, -4364($fp)
	lw $t1, -4360($fp)
	lw $t2, -4364($fp)
	bgt $t1, $t2, label355
	j label356
label355:
	li $t0, 1
	sw $t0, -4348($fp)
label356:
	lw $t0, -4348($fp)
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	sw $t0, -4368($fp)
	lw $t1, -4368($fp)
	li $t2, 0
	bne $t1, $t2, label352
	j label353
label352:
	li $t0, 0
	sw $t0, -4372($fp)
	addi $t0, $fp, -148
	sw $t0, -4376($fp)
	li $t0, 0
	sw $t0, -4380($fp)
	li $t0, 37096
	sw $t0, -4384($fp)
	lw $t1, -4384($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label363
label363:
	li $t0, 52487
	sw $t0, -4388($fp)
	lw $t1, -4388($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label362
label361:
	li $t0, 1
	sw $t0, -4380($fp)
label362:
	li $t0, 4
	lw $t1, -4380($fp)
	mul $t0, $t0, $t1
	sw $t0, -4392($fp)
	lw $t0, -4392($fp)
	lw $t1, -4376($fp)
	add $t0, $t0, $t1
	sw $t0, -4396($fp)
	lw $t0, -4396($fp)
	lw $t1, 0($t0)
	sw $t1, -4400($fp)
	li $t0, 0
	sw $t0, -4404($fp)
	li $t0, 50475
	sw $t0, -4408($fp)
	lw $t1, -4408($fp)
	li $t2, 0
	bne $t1, $t2, label365
	j label364
label364:
	li $t0, 1
	sw $t0, -4404($fp)
label365:
	lw $t0, -3512($fp)
	sw $t0, -4412($fp)
	lw $t0, -4404($fp)
	lw $t1, -4412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4416($fp)
	lw $t1, -4400($fp)
	lw $t2, -4416($fp)
	blt $t1, $t2, label358
	j label360
label360:
	addi $t0, $fp, -196
	sw $t0, -4420($fp)
	li $t0, 1
	sw $t0, -4424($fp)
	li $t0, 4
	lw $t1, -4424($fp)
	mul $t0, $t0, $t1
	sw $t0, -4428($fp)
	lw $t0, -4428($fp)
	lw $t1, -4420($fp)
	add $t0, $t0, $t1
	sw $t0, -4432($fp)
	lw $t0, -4432($fp)
	lw $t1, 0($t0)
	sw $t1, -4436($fp)
	lw $t1, -4436($fp)
	li $t2, 0
	bne $t1, $t2, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -4372($fp)
label359:
	lw $ra, -4($fp)
	lw $v0, -4372($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label354
label353:
	li $t0, 0
	sw $t0, -4440($fp)
	li $t0, 0
	sw $t0, -4444($fp)
	li $t0, 0
	sw $t0, -4448($fp)
	lw $t0, -2028($fp)
	sw $t0, -4452($fp)
	li $t0, 33989
	sw $t0, -4456($fp)
	lw $t1, -4452($fp)
	lw $t2, -4456($fp)
	blt $t1, $t2, label372
	j label373
label372:
	li $t0, 1
	sw $t0, -4448($fp)
label373:
	li $t0, 9043
	sw $t0, -4460($fp)
	lw $t1, -4448($fp)
	lw $t2, -4460($fp)
	ble $t1, $t2, label370
	j label371
label370:
	li $t0, 1
	sw $t0, -4444($fp)
label371:
	li $t0, 30108
	sw $t0, -4464($fp)
	lw $t1, -4444($fp)
	lw $t2, -4464($fp)
	ble $t1, $t2, label369
	j label367
label369:
	li $t0, 29861
	sw $t0, -4468($fp)
	li $t0, 16455
	sw $t0, -4472($fp)
	lw $t0, -4468($fp)
	lw $t1, -4472($fp)
	mul $t0, $t0, $t1
	sw $t0, -4476($fp)
	lw $t0, -216($fp)
	sw $t0, -4480($fp)
	lw $t0, -4476($fp)
	lw $t1, -4480($fp)
	sub $t0, $t0, $t1
	sw $t0, -4484($fp)
	lw $t1, -4484($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label367
label368:
	li $t0, 42871
	sw $t0, -4488($fp)
	lw $t1, -4488($fp)
	li $t2, 0
	bne $t1, $t2, label366
	j label367
label366:
	li $t0, 1
	sw $t0, -4440($fp)
label367:
	lw $ra, -4($fp)
	lw $v0, -4440($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label354:
	j label345
label347:
	j label339
label338:
	lw $t0, -1068($fp)
	sw $t0, -4492($fp)
	addi $t0, $fp, -180
	sw $t0, -4496($fp)
	addi $t0, $fp, -156
	sw $t0, -4500($fp)
	li $t0, 0
	sw $t0, -4504($fp)
	li $t0, 4
	lw $t1, -4504($fp)
	mul $t0, $t0, $t1
	sw $t0, -4508($fp)
	lw $t0, -4508($fp)
	lw $t1, -4500($fp)
	add $t0, $t0, $t1
	sw $t0, -4512($fp)
	lw $t0, -4512($fp)
	lw $t1, 0($t0)
	sw $t1, -4516($fp)
	li $t0, 4
	lw $t1, -4516($fp)
	mul $t0, $t0, $t1
	sw $t0, -4520($fp)
	lw $t0, -4520($fp)
	lw $t1, -4496($fp)
	add $t0, $t0, $t1
	sw $t0, -4524($fp)
	lw $t0, -4524($fp)
	lw $t1, 0($t0)
	sw $t1, -4528($fp)
	lw $t0, -4528($fp)
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, -4532($fp)
	lw $t0, -252($fp)
	sw $t0, -4536($fp)
	addi $t0, $fp, -156
	sw $t0, -4540($fp)
	li $t0, 4961
	sw $t0, -4544($fp)
	lw $t0, -1668($fp)
	sw $t0, -4548($fp)
	lw $t0, -4544($fp)
	lw $t1, -4548($fp)
	sub $t0, $t0, $t1
	sw $t0, -4552($fp)
	li $t0, 4
	lw $t1, -4552($fp)
	mul $t0, $t0, $t1
	sw $t0, -4556($fp)
	lw $t0, -4556($fp)
	lw $t1, -4540($fp)
	add $t0, $t0, $t1
	sw $t0, -4560($fp)
	lw $t0, -4560($fp)
	lw $t1, 0($t0)
	sw $t1, -4564($fp)
	lw $t0, -4536($fp)
	lw $t1, -4564($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4568($fp)
	li $t0, 0
	sw $t0, -4572($fp)
	lw $t0, -1608($fp)
	sw $t0, -4576($fp)
	lw $t1, -4576($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label374
label374:
	li $t0, 1
	sw $t0, -4572($fp)
label375:
label339:
	lw $t0, -1632($fp)
	sw $t0, -4580($fp)
	lw $t0, -4580($fp)
	sw $t0, -1008($fp)
	lw $t0, -1008($fp)
	sw $t0, -4584($fp)
	li $t0, 56706
	sw $t0, -4588($fp)
	lw $t0, -1620($fp)
	sw $t0, -4592($fp)
	lw $t0, -4588($fp)
	lw $t1, -4592($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4596($fp)
	li $t0, 0
	lw $t1, -4596($fp)
	sub $t0, $t0, $t1
	sw $t0, -4600($fp)
	addi $sp, $sp, -4
	lw $t0, -4584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4600($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4604($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -4608($fp)
	addi $t0, $fp, -180
	sw $t0, -4612($fp)
	li $t0, 2
	sw $t0, -4616($fp)
	li $t0, 4
	lw $t1, -4616($fp)
	mul $t0, $t0, $t1
	sw $t0, -4620($fp)
	lw $t0, -4620($fp)
	lw $t1, -4612($fp)
	add $t0, $t0, $t1
	sw $t0, -4624($fp)
	lw $t0, -4624($fp)
	lw $t1, 0($t0)
	sw $t1, -4628($fp)
	lw $t0, -1020($fp)
	sw $t0, -4632($fp)
	lw $t0, -4632($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	sw $t0, -4636($fp)
	addi $sp, $sp, -4
	lw $t0, -4628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4636($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4640($fp)
	addi $sp, $sp, 12
	lw $t1, -4640($fp)
	li $t2, 0
	bne $t1, $t2, label377
	j label376
label376:
	li $t0, 1
	sw $t0, -4608($fp)
label377:
	lw $t0, -4604($fp)
	lw $t1, -4608($fp)
	sub $t0, $t0, $t1
	sw $t0, -4644($fp)
label137:
	j label130
label129:
label378:
	li $t0, 48826
	sw $t0, -4648($fp)
	li $t0, 0
	lw $t1, -4648($fp)
	sub $t0, $t0, $t1
	sw $t0, -4652($fp)
	li $t0, 0
	sw $t0, -4656($fp)
	li $t0, 20514
	sw $t0, -4660($fp)
	lw $t1, -4660($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label381
label381:
	li $t0, 1
	sw $t0, -4656($fp)
label382:
	li $t0, 50386
	sw $t0, -4664($fp)
	lw $t0, -4656($fp)
	lw $t1, -4664($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4668($fp)
	li $t0, 0
	sw $t0, -4672($fp)
	lw $t0, -648($fp)
	sw $t0, -4676($fp)
	lw $t1, -4676($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label383
label383:
	li $t0, 1
	sw $t0, -4672($fp)
label384:
	lw $t0, -4668($fp)
	lw $t1, -4672($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4680($fp)
	lw $t0, -4652($fp)
	lw $t1, -4680($fp)
	sub $t0, $t0, $t1
	sw $t0, -4684($fp)
	lw $t1, -4684($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label380
label379:
	li $t0, 0
	sw $t0, -4688($fp)
	li $t0, 41649
	sw $t0, -4692($fp)
	lw $t0, -1356($fp)
	sw $t0, -4696($fp)
	lw $t0, -4692($fp)
	lw $t1, -4696($fp)
	mul $t0, $t0, $t1
	sw $t0, -4700($fp)
	lw $t0, -1512($fp)
	sw $t0, -4704($fp)
	lw $t1, -4700($fp)
	lw $t2, -4704($fp)
	bge $t1, $t2, label390
	j label391
label390:
	li $t0, 1
	sw $t0, -4688($fp)
label391:
	lw $t0, -708($fp)
	sw $t0, -4708($fp)
	lw $t0, -528($fp)
	sw $t0, -4712($fp)
	lw $t0, -4708($fp)
	lw $t1, -4712($fp)
	mul $t0, $t0, $t1
	sw $t0, -4716($fp)
	lw $t1, -4688($fp)
	lw $t2, -4716($fp)
	beq $t1, $t2, label389
	j label388
label389:
	li $t0, 50888
	sw $t0, -4720($fp)
	lw $t1, -4720($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label388
label388:
	li $t0, 11729
	sw $t0, -4724($fp)
	li $t0, 0
	lw $t1, -4724($fp)
	sub $t0, $t0, $t1
	sw $t0, -4728($fp)
	lw $t1, -4728($fp)
	li $t2, 0
	bne $t1, $t2, label385
	j label386
label385:
	li $t0, 37196
	sw $t0, -4732($fp)
	li $t0, 0
	lw $t1, -4732($fp)
	sub $t0, $t0, $t1
	sw $t0, -4736($fp)
	lw $t1, -4736($fp)
	li $t2, 0
	bne $t1, $t2, label392
	j label393
label392:
label395:
	addi $t0, $fp, -88
	sw $t0, -4740($fp)
	li $t0, 0
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
	addi $t0, $fp, -180
	sw $t0, -4760($fp)
	lw $t0, -708($fp)
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
	li $t0, 0
	lw $t1, -4776($fp)
	sub $t0, $t0, $t1
	sw $t0, -4780($fp)
	lw $t0, -4756($fp)
	lw $t1, -4780($fp)
	mul $t0, $t0, $t1
	sw $t0, -4784($fp)
	li $t0, 0
	lw $t1, -4784($fp)
	sub $t0, $t0, $t1
	sw $t0, -4788($fp)
	li $t0, 0
	lw $t1, -4788($fp)
	sub $t0, $t0, $t1
	sw $t0, -4792($fp)
	lw $t1, -4792($fp)
	li $t2, 0
	bne $t1, $t2, label396
	j label397
label396:
label398:
	li $t0, 0
	sw $t0, -4796($fp)
	addi $t0, $fp, -152
	sw $t0, -4800($fp)
	li $t0, 0
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
	lw $t0, -1632($fp)
	sw $t0, -4820($fp)
	lw $t1, -4816($fp)
	lw $t2, -4820($fp)
	bne $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -4796($fp)
label403:
	lw $t0, -1632($fp)
	sw $t0, -4824($fp)
	li $t0, 0
	lw $t1, -4824($fp)
	sub $t0, $t0, $t1
	sw $t0, -4828($fp)
	addi $sp, $sp, -4
	lw $t0, -4796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4828($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4832($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -4836($fp)
	addi $t0, $fp, -180
	sw $t0, -4840($fp)
	li $t0, 0
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
	addi $t0, $fp, -180
	sw $t0, -4860($fp)
	li $t0, 1
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
	addi $sp, $sp, -4
	lw $t0, -4856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4876($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4880($fp)
	addi $sp, $sp, 12
	lw $t1, -4880($fp)
	li $t2, 0
	bne $t1, $t2, label405
	j label404
label404:
	li $t0, 1
	sw $t0, -4836($fp)
label405:
	lw $t0, -4832($fp)
	lw $t1, -4836($fp)
	sub $t0, $t0, $t1
	sw $t0, -4884($fp)
	lw $t1, -4884($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label401
label401:
	li $t0, 26799
	sw $t0, -4888($fp)
	lw $t0, -2040($fp)
	sw $t0, -4892($fp)
	lw $t0, -4888($fp)
	lw $t1, -4892($fp)
	mul $t0, $t0, $t1
	sw $t0, -4896($fp)
	li $t0, 7692
	sw $t0, -4900($fp)
	lw $t0, -4896($fp)
	lw $t1, -4900($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4904($fp)
	li $t0, 47528
	sw $t0, -4908($fp)
	lw $t0, -4904($fp)
	lw $t1, -4908($fp)
	mul $t0, $t0, $t1
	sw $t0, -4912($fp)
	lw $t1, -4912($fp)
	li $t2, 0
	bne $t1, $t2, label399
	j label400
label399:
	addi $t0, $fp, -56
	sw $t0, -4916($fp)
	addi $t0, $fp, -180
	sw $t0, -4920($fp)
	lw $t0, -264($fp)
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
	li $t0, 0
	lw $t1, -4936($fp)
	sub $t0, $t0, $t1
	sw $t0, -4940($fp)
	li $t0, 0
	sw $t0, -4944($fp)
	lw $t0, -2028($fp)
	sw $t0, -4948($fp)
	lw $t1, -4948($fp)
	li $t2, 0
	bne $t1, $t2, label408
	j label407
label408:
	li $t0, 41682
	sw $t0, -4952($fp)
	lw $t1, -4952($fp)
	li $t2, 0
	bne $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -4944($fp)
label407:
	li $t0, 0
	sw $t0, -4956($fp)
	lw $t0, -228($fp)
	sw $t0, -4960($fp)
	li $t0, 0
	lw $t1, -4960($fp)
	sub $t0, $t0, $t1
	sw $t0, -4964($fp)
	li $t0, 3748
	sw $t0, -4968($fp)
	lw $t1, -4964($fp)
	lw $t2, -4968($fp)
	ble $t1, $t2, label409
	j label410
label409:
	li $t0, 1
	sw $t0, -4956($fp)
label410:
	addi $sp, $sp, -4
	lw $t0, -4944($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4956($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4972($fp)
	addi $sp, $sp, 12
	lw $t0, -4940($fp)
	lw $t1, -4972($fp)
	add $t0, $t0, $t1
	sw $t0, -4976($fp)
	li $t0, 4
	lw $t1, -4976($fp)
	mul $t0, $t0, $t1
	sw $t0, -4980($fp)
	lw $t0, -4980($fp)
	lw $t1, -4916($fp)
	add $t0, $t0, $t1
	sw $t0, -4984($fp)
	lw $t0, -4984($fp)
	lw $t1, 0($t0)
	sw $t1, -4988($fp)
	j label398
label400:
	j label395
label397:
	j label394
label393:
	lw $t0, -1356($fp)
	sw $t0, -4992($fp)
label394:
	j label387
label386:
	li $t0, 0
	sw $t0, -4996($fp)
	lw $t0, -1356($fp)
	sw $t0, -5000($fp)
	lw $t0, -1656($fp)
	sw $t0, -5004($fp)
	lw $t0, -5000($fp)
	lw $t1, -5004($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5008($fp)
	lw $t0, -1092($fp)
	sw $t0, -5012($fp)
	lw $t0, -5008($fp)
	lw $t1, -5012($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5016($fp)
	li $t0, 0
	sw $t0, -5020($fp)
	li $t0, 7491
	sw $t0, -5024($fp)
	lw $t1, -5024($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label416
label416:
	lw $t0, -672($fp)
	sw $t0, -5028($fp)
	lw $t1, -5028($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -5020($fp)
label415:
	li $t0, 6007
	sw $t0, -5032($fp)
	li $t0, 0
	sw $t0, -5036($fp)
	li $t0, 33857
	sw $t0, -5040($fp)
	li $t0, 56571
	sw $t0, -5044($fp)
	addi $sp, $sp, -4
	lw $t0, -5040($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5044($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5048($fp)
	addi $sp, $sp, 12
	lw $t0, -1608($fp)
	sw $t0, -5052($fp)
	lw $t1, -5048($fp)
	lw $t2, -5052($fp)
	bgt $t1, $t2, label417
	j label418
label417:
	li $t0, 1
	sw $t0, -5036($fp)
label418:
	addi $sp, $sp, -4
	lw $t0, -5032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5036($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5056($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -5020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5056($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5060($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -5016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5060($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5064($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -5068($fp)
	li $t0, 11192
	sw $t0, -5072($fp)
	lw $t1, -5072($fp)
	li $t2, 0
	bne $t1, $t2, label420
	j label419
label419:
	li $t0, 1
	sw $t0, -5068($fp)
label420:
	lw $t1, -5064($fp)
	lw $t2, -5068($fp)
	bne $t1, $t2, label413
	j label412
label413:
	li $t0, 0
	sw $t0, -5076($fp)
	lw $t0, -204($fp)
	sw $t0, -5080($fp)
	lw $t0, 8($fp)
	sw $t0, -5084($fp)
	lw $t0, -5080($fp)
	lw $t1, -5084($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5088($fp)
	li $t0, 245
	sw $t0, -5092($fp)
	lw $t1, -5088($fp)
	lw $t2, -5092($fp)
	bgt $t1, $t2, label421
	j label422
label421:
	li $t0, 1
	sw $t0, -5076($fp)
label422:
	li $t0, 0
	sw $t0, -5096($fp)
	lw $t0, -1044($fp)
	sw $t0, -5100($fp)
	li $t0, 62580
	sw $t0, -5104($fp)
	lw $t0, -5100($fp)
	lw $t1, -5104($fp)
	mul $t0, $t0, $t1
	sw $t0, -5108($fp)
	lw $t0, -2016($fp)
	sw $t0, -5112($fp)
	lw $t1, -5108($fp)
	lw $t2, -5112($fp)
	bne $t1, $t2, label423
	j label424
label423:
	li $t0, 1
	sw $t0, -5096($fp)
label424:
	addi $sp, $sp, -4
	lw $t0, -5076($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5096($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5116($fp)
	addi $sp, $sp, 12
	lw $t1, -5116($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label412
label411:
	li $t0, 1
	sw $t0, -4996($fp)
label412:
label387:
	j label378
label380:
label130:
	j label121
label123:
	li $t0, 53750
	sw $t0, -5120($fp)
	li $t0, 0
	lw $t1, -5120($fp)
	sub $t0, $t0, $t1
	sw $t0, -5124($fp)
	li $t0, 0
	sw $t0, -5128($fp)
	li $t0, 16153
	sw $t0, -5132($fp)
	lw $t1, -5132($fp)
	li $t2, 0
	bne $t1, $t2, label428
	j label429
label428:
	li $t0, 1
	sw $t0, -5128($fp)
label429:
	addi $sp, $sp, -4
	lw $t0, -5124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5128($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5136($fp)
	addi $sp, $sp, 12
	lw $t0, -648($fp)
	sw $t0, -5140($fp)
	li $t0, 37041
	sw $t0, -5144($fp)
	lw $t0, -5140($fp)
	lw $t1, -5144($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5148($fp)
	li $t0, 0
	sw $t0, -5152($fp)
	li $t0, 61158
	sw $t0, -5156($fp)
	li $t0, 1
	sw $t0, -5160($fp)
	lw $t0, -5156($fp)
	lw $t1, -5160($fp)
	mul $t0, $t0, $t1
	sw $t0, -5164($fp)
	lw $t1, -5164($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label432
label432:
	lw $t0, -2016($fp)
	sw $t0, -5168($fp)
	lw $t1, -5168($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label431
label430:
	li $t0, 1
	sw $t0, -5152($fp)
label431:
	addi $sp, $sp, -4
	lw $t0, -5148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5152($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5172($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -5172($fp)
	sub $t0, $t0, $t1
	sw $t0, -5176($fp)
	lw $t0, -5136($fp)
	lw $t1, -5176($fp)
	sub $t0, $t0, $t1
	sw $t0, -5180($fp)
	lw $t1, -5180($fp)
	li $t2, 0
	bne $t1, $t2, label425
	j label426
label425:
label433:
	lw $t0, -672($fp)
	sw $t0, -5184($fp)
	lw $t1, -5184($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label435
label434:
	li $t0, 16136
	sw $t0, -5188($fp)
	lw $t0, -5188($fp)
	sw $t0, -5192($fp)
	lw $t0, -5192($fp)
	sw $t0, -5196($fp)
	li $t0, 23369
	sw $t0, -5200($fp)
	lw $t0, -5200($fp)
	sw $t0, -5204($fp)
	lw $t0, -5204($fp)
	sw $t0, -5208($fp)
	lw $t0, -5192($fp)
	sw $t0, -5212($fp)
	lw $t0, -5212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5204($fp)
	sw $t0, -5216($fp)
	lw $t0, -5216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5220($fp)
	li $t0, 13154
	sw $t0, -5224($fp)
	addi $t0, $fp, -180
	sw $t0, -5228($fp)
	li $t0, 0
	sw $t0, -5232($fp)
	li $t0, 1489
	sw $t0, -5236($fp)
	lw $t1, -5236($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label438
label438:
	li $t0, 1
	sw $t0, -5232($fp)
label439:
	li $t0, 4
	lw $t1, -5232($fp)
	mul $t0, $t0, $t1
	sw $t0, -5240($fp)
	lw $t0, -5240($fp)
	lw $t1, -5228($fp)
	add $t0, $t0, $t1
	sw $t0, -5244($fp)
	lw $t0, -5244($fp)
	lw $t1, 0($t0)
	sw $t1, -5248($fp)
	lw $t1, -5224($fp)
	lw $t2, -5248($fp)
	bne $t1, $t2, label436
	j label437
label436:
	li $t0, 1
	sw $t0, -5220($fp)
label437:
	lw $ra, -4($fp)
	lw $v0, -5220($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -5192($fp)
	sw $t0, -5252($fp)
	lw $t0, -5252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5204($fp)
	sw $t0, -5256($fp)
	lw $t0, -5256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5260($fp)
	lw $t0, -672($fp)
	sw $t0, -5264($fp)
	li $t0, 6342
	sw $t0, -5268($fp)
	lw $t0, -5264($fp)
	lw $t1, -5268($fp)
	add $t0, $t0, $t1
	sw $t0, -5272($fp)
	li $t0, 35099
	sw $t0, -5276($fp)
	lw $t0, -1740($fp)
	sw $t0, -5280($fp)
	lw $t0, -5276($fp)
	lw $t1, -5280($fp)
	sub $t0, $t0, $t1
	sw $t0, -5284($fp)
	li $t0, 50351
	sw $t0, -5288($fp)
	lw $t0, -5284($fp)
	lw $t1, -5288($fp)
	sub $t0, $t0, $t1
	sw $t0, -5292($fp)
	addi $sp, $sp, -4
	lw $t0, -5272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5292($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5296($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -5296($fp)
	sub $t0, $t0, $t1
	sw $t0, -5300($fp)
	lw $t1, -5300($fp)
	li $t2, 0
	bne $t1, $t2, label441
	j label440
label440:
	li $t0, 1
	sw $t0, -5260($fp)
label441:
	lw $ra, -4($fp)
	lw $v0, -5260($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -5304($fp)
	lw $t0, -2040($fp)
	sw $t0, -5308($fp)
	lw $t1, -5308($fp)
	li $t2, 0
	bne $t1, $t2, label445
	j label446
label445:
	li $t0, 1
	sw $t0, -5304($fp)
label446:
	li $t0, 0
	sw $t0, -5312($fp)
	li $t0, 0
	sw $t0, -5316($fp)
	li $t0, 25939
	sw $t0, -5320($fp)
	lw $t0, -1008($fp)
	sw $t0, -5324($fp)
	lw $t1, -5320($fp)
	lw $t2, -5324($fp)
	ble $t1, $t2, label449
	j label450
label449:
	li $t0, 1
	sw $t0, -5316($fp)
label450:
	li $t0, 62291
	sw $t0, -5328($fp)
	lw $t1, -5316($fp)
	lw $t2, -5328($fp)
	bne $t1, $t2, label447
	j label448
label447:
	li $t0, 1
	sw $t0, -5312($fp)
label448:
	addi $sp, $sp, -4
	lw $t0, -5304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5312($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5332($fp)
	addi $sp, $sp, 12
	lw $t1, -5332($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label443
label442:
	li $t0, 31419
	sw $t0, -5336($fp)
	lw $t0, -5336($fp)
	sw $t0, -5340($fp)
	lw $t0, -5340($fp)
	sw $t0, -5344($fp)
	li $t0, 0
	sw $t0, -5348($fp)
	addi $t0, $fp, -56
	sw $t0, -5352($fp)
	lw $t0, -732($fp)
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
	li $t0, 0
	sw $t0, -5372($fp)
	lw $t0, -1512($fp)
	sw $t0, -5376($fp)
	lw $t1, -5376($fp)
	li $t2, 0
	bne $t1, $t2, label454
	j label453
label453:
	li $t0, 1
	sw $t0, -5372($fp)
label454:
	lw $t0, -5368($fp)
	lw $t1, -5372($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5380($fp)
	addi $t0, $fp, -148
	sw $t0, -5384($fp)
	li $t0, 3
	sw $t0, -5388($fp)
	li $t0, 4
	lw $t1, -5388($fp)
	mul $t0, $t0, $t1
	sw $t0, -5392($fp)
	lw $t0, -5392($fp)
	lw $t1, -5384($fp)
	add $t0, $t0, $t1
	sw $t0, -5396($fp)
	lw $t0, -5396($fp)
	lw $t1, 0($t0)
	sw $t1, -5400($fp)
	li $t0, 0
	lw $t1, -5400($fp)
	sub $t0, $t0, $t1
	sw $t0, -5404($fp)
	lw $t0, -5380($fp)
	lw $t1, -5404($fp)
	mul $t0, $t0, $t1
	sw $t0, -5408($fp)
	addi $t0, $fp, -132
	sw $t0, -5412($fp)
	li $t0, 4
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
	li $t0, 0
	sw $t0, -5432($fp)
	lw $t0, -516($fp)
	sw $t0, -5436($fp)
	li $t0, 28056
	sw $t0, -5440($fp)
	lw $t0, -5436($fp)
	lw $t1, -5440($fp)
	mul $t0, $t0, $t1
	sw $t0, -5444($fp)
	lw $t1, -5444($fp)
	li $t2, 0
	bne $t1, $t2, label457
	j label456
label457:
	lw $t0, -552($fp)
	sw $t0, -5448($fp)
	lw $t1, -5448($fp)
	li $t2, 0
	bne $t1, $t2, label455
	j label456
label455:
	li $t0, 1
	sw $t0, -5432($fp)
label456:
	addi $sp, $sp, -4
	lw $t0, -5428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5432($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5452($fp)
	addi $sp, $sp, 12
	lw $t1, -5408($fp)
	lw $t2, -5452($fp)
	bne $t1, $t2, label451
	j label452
label451:
	li $t0, 1
	sw $t0, -5348($fp)
label452:
	li $t0, 35748
	sw $t0, -5456($fp)
	lw $t0, -5456($fp)
	sw $t0, -5460($fp)
	lw $t0, -5460($fp)
	sw $t0, -5464($fp)
	li $t0, 0
	sw $t0, -5468($fp)
	lw $t0, -1668($fp)
	sw $t0, -5472($fp)
	lw $t1, -5472($fp)
	li $t2, 0
	bne $t1, $t2, label458
	j label461
label461:
	li $t0, 0
	sw $t0, -5476($fp)
	li $t0, 0
	sw $t0, -5480($fp)
	lw $t0, -696($fp)
	sw $t0, -5484($fp)
	lw $t0, -5460($fp)
	sw $t0, -5488($fp)
	lw $t1, -5484($fp)
	lw $t2, -5488($fp)
	blt $t1, $t2, label464
	j label465
label464:
	li $t0, 1
	sw $t0, -5480($fp)
label465:
	li $t0, 3626
	sw $t0, -5492($fp)
	lw $t1, -5480($fp)
	lw $t2, -5492($fp)
	ble $t1, $t2, label462
	j label463
label462:
	li $t0, 1
	sw $t0, -5476($fp)
label463:
	li $t0, 33408
	sw $t0, -5496($fp)
	addi $sp, $sp, -4
	lw $t0, -5476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5496($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5500($fp)
	addi $sp, $sp, 12
	lw $t1, -5500($fp)
	li $t2, 0
	bne $t1, $t2, label458
	j label460
label460:
	li $t0, 0
	sw $t0, -5504($fp)
	li $t0, 11894
	sw $t0, -5508($fp)
	li $t0, 0
	lw $t1, -5508($fp)
	sub $t0, $t0, $t1
	sw $t0, -5512($fp)
	li $t0, 24444
	sw $t0, -5516($fp)
	lw $t1, -5512($fp)
	lw $t2, -5516($fp)
	bgt $t1, $t2, label466
	j label467
label466:
	li $t0, 1
	sw $t0, -5504($fp)
label467:
	lw $t0, -1644($fp)
	sw $t0, -5520($fp)
	lw $t0, -216($fp)
	sw $t0, -5524($fp)
	lw $t0, -5520($fp)
	lw $t1, -5524($fp)
	mul $t0, $t0, $t1
	sw $t0, -5528($fp)
	lw $t1, -5504($fp)
	lw $t2, -5528($fp)
	beq $t1, $t2, label458
	j label459
label458:
	li $t0, 1
	sw $t0, -5468($fp)
label459:
label468:
	li $t0, 37483
	sw $t0, -5532($fp)
	lw $t1, -5532($fp)
	li $t2, 0
	bne $t1, $t2, label469
	j label470
label469:
	li $t0, 17901
	sw $t0, -5536($fp)
	j label468
label470:
	lw $t0, -5340($fp)
	sw $t0, -5540($fp)
	lw $t0, -5540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5544($fp)
	li $t0, 48675
	sw $t0, -5548($fp)
	lw $t1, -5548($fp)
	li $t2, 0
	bne $t1, $t2, label474
	j label472
label474:
	lw $t0, -5340($fp)
	sw $t0, -5552($fp)
	lw $t1, -5552($fp)
	li $t2, 0
	bne $t1, $t2, label473
	j label472
label473:
	lw $t0, -2016($fp)
	sw $t0, -5556($fp)
	lw $t1, -5556($fp)
	li $t2, 0
	bne $t1, $t2, label471
	j label472
label471:
	li $t0, 1
	sw $t0, -5544($fp)
label472:
	li $t0, 0
	sw $t0, -5560($fp)
	lw $t0, -240($fp)
	sw $t0, -5564($fp)
	lw $t0, -5192($fp)
	sw $t0, -5568($fp)
	lw $t0, -5564($fp)
	lw $t1, -5568($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5572($fp)
	li $t0, 31935
	sw $t0, -5576($fp)
	lw $t1, -5572($fp)
	lw $t2, -5576($fp)
	beq $t1, $t2, label475
	j label476
label475:
	li $t0, 1
	sw $t0, -5560($fp)
label476:
	addi $sp, $sp, -4
	lw $t0, -5544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5560($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5580($fp)
	addi $sp, $sp, 12
	lw $ra, -4($fp)
	lw $v0, -5580($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label443:
	lw $t0, -5192($fp)
	sw $t0, -5584($fp)
	lw $t0, -5584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -5204($fp)
	sw $t0, -5588($fp)
	lw $t0, -5588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5592($fp)
	lw $t0, -1704($fp)
	sw $t0, -5596($fp)
	lw $t0, -1728($fp)
	sw $t0, -5600($fp)
	addi $sp, $sp, -4
	lw $t0, -5596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5600($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5604($fp)
	addi $sp, $sp, 12
	lw $t1, -5604($fp)
	li $t2, 0
	bne $t1, $t2, label479
	j label478
label479:
	lw $t0, -636($fp)
	sw $t0, -5608($fp)
	lw $t1, -5608($fp)
	li $t2, 0
	bne $t1, $t2, label477
	j label478
label477:
	li $t0, 1
	sw $t0, -5592($fp)
label478:
	li $t0, 0
	sw $t0, -5612($fp)
	li $t0, 0
	sw $t0, -5616($fp)
	lw $t0, -1116($fp)
	sw $t0, -5620($fp)
	lw $t1, -5620($fp)
	li $t2, 0
	bne $t1, $t2, label483
	j label482
label482:
	li $t0, 1
	sw $t0, -5616($fp)
label483:
	li $t0, 0
	sw $t0, -5624($fp)
	li $t0, 3160
	sw $t0, -5628($fp)
	li $t0, 0
	lw $t1, -5628($fp)
	sub $t0, $t0, $t1
	sw $t0, -5632($fp)
	lw $t1, -5632($fp)
	li $t2, 0
	bne $t1, $t2, label484
	j label486
label486:
	li $t0, 27802
	sw $t0, -5636($fp)
	lw $t1, -5636($fp)
	li $t2, 0
	bne $t1, $t2, label484
	j label485
label484:
	li $t0, 1
	sw $t0, -5624($fp)
label485:
	addi $sp, $sp, -4
	lw $t0, -5616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5624($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5640($fp)
	addi $sp, $sp, 12
	li $t0, 37812
	sw $t0, -5644($fp)
	lw $t1, -5640($fp)
	lw $t2, -5644($fp)
	bgt $t1, $t2, label480
	j label481
label480:
	li $t0, 1
	sw $t0, -5612($fp)
label481:
	li $t0, 0
	sw $t0, -5648($fp)
	li $t0, 14946
	sw $t0, -5652($fp)
	li $t0, 32180
	sw $t0, -5656($fp)
	lw $t0, -5652($fp)
	lw $t1, -5656($fp)
	add $t0, $t0, $t1
	sw $t0, -5660($fp)
	li $t0, 64829
	sw $t0, -5664($fp)
	lw $t1, -5660($fp)
	lw $t2, -5664($fp)
	beq $t1, $t2, label487
	j label488
label487:
	li $t0, 1
	sw $t0, -5648($fp)
label488:
	addi $sp, $sp, -4
	lw $t0, -5612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5648($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5668($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -5592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5668($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5672($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -5672($fp)
	sub $t0, $t0, $t1
	sw $t0, -5676($fp)
	lw $ra, -4($fp)
	lw $v0, -5676($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 40201
	sw $t0, -5680($fp)
	lw $t0, -5680($fp)
	sw $t0, -5684($fp)
	lw $t0, -5684($fp)
	sw $t0, -5688($fp)
	lw $t0, -5684($fp)
	sw $t0, -5692($fp)
	lw $t0, -5692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5696($fp)
	li $t0, 38171
	sw $t0, -5700($fp)
	li $t0, 51770
	sw $t0, -5704($fp)
	lw $t1, -5700($fp)
	lw $t2, -5704($fp)
	bne $t1, $t2, label489
	j label490
label489:
	li $t0, 1
	sw $t0, -5696($fp)
label490:
	li $t0, 0
	sw $t0, -5708($fp)
	lw $t0, -1380($fp)
	sw $t0, -5712($fp)
	lw $t0, -516($fp)
	sw $t0, -5716($fp)
	lw $t0, -5712($fp)
	lw $t1, -5716($fp)
	mul $t0, $t0, $t1
	sw $t0, -5720($fp)
	lw $t1, -5720($fp)
	li $t2, 0
	bne $t1, $t2, label493
	j label492
label493:
	li $t0, 30745
	sw $t0, -5724($fp)
	lw $t1, -5724($fp)
	li $t2, 0
	bne $t1, $t2, label491
	j label492
label491:
	li $t0, 1
	sw $t0, -5708($fp)
label492:
	addi $sp, $sp, -4
	lw $t0, -5696($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5708($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5728($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -5732($fp)
	li $t0, 0
	sw $t0, -5736($fp)
	li $t0, 53356
	sw $t0, -5740($fp)
	lw $t1, -5740($fp)
	li $t2, 0
	bne $t1, $t2, label497
	j label496
label496:
	li $t0, 1
	sw $t0, -5736($fp)
label497:
	li $t0, 45428
	sw $t0, -5744($fp)
	lw $t1, -5736($fp)
	lw $t2, -5744($fp)
	bge $t1, $t2, label494
	j label495
label494:
	li $t0, 1
	sw $t0, -5732($fp)
label495:
	addi $sp, $sp, -4
	lw $t0, -5728($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5732($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5748($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -5752($fp)
	li $t0, 43939
	sw $t0, -5756($fp)
	lw $t0, -1020($fp)
	sw $t0, -5760($fp)
	lw $t1, -5756($fp)
	lw $t2, -5760($fp)
	beq $t1, $t2, label500
	j label499
label500:
	li $t0, 61182
	sw $t0, -5764($fp)
	lw $t1, -5764($fp)
	li $t2, 0
	bne $t1, $t2, label498
	j label499
label498:
	li $t0, 1
	sw $t0, -5752($fp)
label499:
	addi $sp, $sp, -4
	lw $t0, -5748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5752($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5768($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -180
	sw $t0, -5772($fp)
	lw $t0, -1704($fp)
	sw $t0, -5776($fp)
	li $t0, 0
	lw $t1, -5776($fp)
	sub $t0, $t0, $t1
	sw $t0, -5780($fp)
	li $t0, 4
	lw $t1, -5780($fp)
	mul $t0, $t0, $t1
	sw $t0, -5784($fp)
	lw $t0, -5784($fp)
	lw $t1, -5772($fp)
	add $t0, $t0, $t1
	sw $t0, -5788($fp)
	lw $t0, -5788($fp)
	lw $t1, 0($t0)
	sw $t1, -5792($fp)
	lw $t0, -5768($fp)
	lw $t1, -5792($fp)
	add $t0, $t0, $t1
	sw $t0, -5796($fp)
	lw $ra, -4($fp)
	lw $v0, -5796($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 56684
	sw $t0, -5800($fp)
	li $t0, 8005
	sw $t0, -5804($fp)
	lw $t0, -1632($fp)
	sw $t0, -5808($fp)
	lw $t0, -5804($fp)
	lw $t1, -5808($fp)
	mul $t0, $t0, $t1
	sw $t0, -5812($fp)
	li $t0, 0
	sw $t0, -5816($fp)
	li $t0, 34926
	sw $t0, -5820($fp)
	li $t0, 17653
	sw $t0, -5824($fp)
	lw $t1, -5820($fp)
	lw $t2, -5824($fp)
	bge $t1, $t2, label501
	j label503
label503:
	li $t0, 3582
	sw $t0, -5828($fp)
	lw $t1, -5828($fp)
	li $t2, 0
	bne $t1, $t2, label501
	j label502
label501:
	li $t0, 1
	sw $t0, -5816($fp)
label502:
	addi $sp, $sp, -4
	lw $t0, -5812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5816($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5832($fp)
	addi $sp, $sp, 12
	lw $t0, -1668($fp)
	sw $t0, -5836($fp)
	li $t0, 0
	lw $t1, -5836($fp)
	sub $t0, $t0, $t1
	sw $t0, -5840($fp)
	lw $t0, -5832($fp)
	lw $t1, -5840($fp)
	mul $t0, $t0, $t1
	sw $t0, -5844($fp)
	addi $t0, $fp, -156
	sw $t0, -5848($fp)
	li $t0, 0
	sw $t0, -5852($fp)
	li $t0, 4
	lw $t1, -5852($fp)
	mul $t0, $t0, $t1
	sw $t0, -5856($fp)
	lw $t0, -5856($fp)
	lw $t1, -5848($fp)
	add $t0, $t0, $t1
	sw $t0, -5860($fp)
	lw $t0, -5860($fp)
	lw $t1, 0($t0)
	sw $t1, -5864($fp)
	li $t0, 0
	sw $t0, -5868($fp)
	li $t0, 45709
	sw $t0, -5872($fp)
	li $t0, 0
	lw $t1, -5872($fp)
	sub $t0, $t0, $t1
	sw $t0, -5876($fp)
	lw $t0, -5684($fp)
	sw $t0, -5880($fp)
	lw $t1, -5876($fp)
	lw $t2, -5880($fp)
	ble $t1, $t2, label507
	j label508
label507:
	li $t0, 1
	sw $t0, -5868($fp)
label508:
	addi $sp, $sp, -4
	lw $t0, -5864($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5868($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5884($fp)
	addi $sp, $sp, 12
	li $t0, 15921
	sw $t0, -5888($fp)
	lw $t0, -5884($fp)
	lw $t1, -5888($fp)
	add $t0, $t0, $t1
	sw $t0, -5892($fp)
	lw $t1, -5892($fp)
	li $t2, 0
	bne $t1, $t2, label504
	j label505
label504:
	li $t0, 0
	sw $t0, -5896($fp)
	li $t0, 0
	sw $t0, -5900($fp)
	li $t0, 22871
	sw $t0, -5904($fp)
	li $t0, 11510
	sw $t0, -5908($fp)
	lw $t0, -5904($fp)
	lw $t1, -5908($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5912($fp)
	li $t0, 0
	lw $t1, -5912($fp)
	sub $t0, $t0, $t1
	sw $t0, -5916($fp)
	lw $t0, -660($fp)
	sw $t0, -5920($fp)
	lw $t0, -5916($fp)
	lw $t1, -5920($fp)
	sub $t0, $t0, $t1
	sw $t0, -5924($fp)
	li $t0, 0
	sw $t0, -5928($fp)
	addi $t0, $fp, -180
	sw $t0, -5932($fp)
	li $t0, 1
	sw $t0, -5936($fp)
	li $t0, 4
	lw $t1, -5936($fp)
	mul $t0, $t0, $t1
	sw $t0, -5940($fp)
	lw $t0, -5940($fp)
	lw $t1, -5932($fp)
	add $t0, $t0, $t1
	sw $t0, -5944($fp)
	lw $t0, -5944($fp)
	lw $t1, 0($t0)
	sw $t1, -5948($fp)
	lw $t0, -1368($fp)
	sw $t0, -5952($fp)
	lw $t0, -5948($fp)
	lw $t1, -5952($fp)
	mul $t0, $t0, $t1
	sw $t0, -5956($fp)
	li $t0, 47315
	sw $t0, -5960($fp)
	li $t0, 0
	sw $t0, -5964($fp)
	lw $t0, -540($fp)
	sw $t0, -5968($fp)
	li $t0, 27816
	sw $t0, -5972($fp)
	lw $t0, -5968($fp)
	lw $t1, -5972($fp)
	add $t0, $t0, $t1
	sw $t0, -5976($fp)
	lw $t1, -5976($fp)
	li $t2, 0
	bne $t1, $t2, label515
	j label517
label517:
	lw $t0, -252($fp)
	sw $t0, -5980($fp)
	lw $t1, -5980($fp)
	li $t2, 0
	bne $t1, $t2, label515
	j label516
label515:
	li $t0, 1
	sw $t0, -5964($fp)
label516:
	addi $sp, $sp, -4
	lw $t0, -5960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5964($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5984($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -5956($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5984($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5988($fp)
	addi $sp, $sp, 12
	lw $t1, -5988($fp)
	li $t2, 0
	bne $t1, $t2, label514
	j label513
label513:
	li $t0, 1
	sw $t0, -5928($fp)
label514:
	lw $t0, -516($fp)
	sw $t0, -5992($fp)
	lw $t0, -5992($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -5996($fp)
	addi $sp, $sp, -4
	lw $t0, -5928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5996($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6000($fp)
	addi $sp, $sp, 12
	li $t0, 13714
	sw $t0, -6004($fp)
	lw $t0, -6000($fp)
	lw $t1, -6004($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6008($fp)
	lw $t1, -5924($fp)
	lw $t2, -6008($fp)
	blt $t1, $t2, label511
	j label512
label511:
	li $t0, 1
	sw $t0, -5900($fp)
label512:
	li $t0, 0
	sw $t0, -6012($fp)
	lw $t0, -5192($fp)
	sw $t0, -6016($fp)
	li $t0, 45894
	sw $t0, -6020($fp)
	lw $t0, -6016($fp)
	lw $t1, -6020($fp)
	sub $t0, $t0, $t1
	sw $t0, -6024($fp)
	li $t0, 31426
	sw $t0, -6028($fp)
	lw $t0, -6024($fp)
	lw $t1, -6028($fp)
	sub $t0, $t0, $t1
	sw $t0, -6032($fp)
	lw $t0, -708($fp)
	sw $t0, -6036($fp)
	li $t0, 0
	lw $t1, -6036($fp)
	sub $t0, $t0, $t1
	sw $t0, -6040($fp)
	lw $t0, -1656($fp)
	sw $t0, -6044($fp)
	lw $t0, -6040($fp)
	lw $t1, -6044($fp)
	add $t0, $t0, $t1
	sw $t0, -6048($fp)
	addi $sp, $sp, -4
	lw $t0, -6032($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6048($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6052($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -148
	sw $t0, -6056($fp)
	li $t0, 3
	sw $t0, -6060($fp)
	li $t0, 4
	lw $t1, -6060($fp)
	mul $t0, $t0, $t1
	sw $t0, -6064($fp)
	lw $t0, -6064($fp)
	lw $t1, -6056($fp)
	add $t0, $t0, $t1
	sw $t0, -6068($fp)
	lw $t0, -6068($fp)
	lw $t1, 0($t0)
	sw $t1, -6072($fp)
	addi $sp, $sp, -4
	lw $t0, -6052($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6072($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6076($fp)
	addi $sp, $sp, 12
	lw $t1, -6076($fp)
	li $t2, 0
	bne $t1, $t2, label519
	j label518
label518:
	li $t0, 1
	sw $t0, -6012($fp)
label519:
	lw $t1, -5900($fp)
	lw $t2, -6012($fp)
	bne $t1, $t2, label509
	j label510
label509:
	li $t0, 1
	sw $t0, -5896($fp)
label510:
	lw $ra, -4($fp)
	lw $v0, -5896($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label506
label505:
	li $t0, 0
	sw $t0, -6080($fp)
	li $t0, 0
	sw $t0, -6084($fp)
	li $t0, 63824
	sw $t0, -6088($fp)
	lw $t1, -6088($fp)
	li $t2, 0
	bne $t1, $t2, label523
	j label522
label522:
	li $t0, 1
	sw $t0, -6084($fp)
label523:
	li $t0, 0
	lw $t1, -6084($fp)
	sub $t0, $t0, $t1
	sw $t0, -6092($fp)
	lw $t1, -6092($fp)
	li $t2, 0
	bne $t1, $t2, label521
	j label520
label520:
	li $t0, 1
	sw $t0, -6080($fp)
label521:
	li $t0, 0
	sw $t0, -6096($fp)
	lw $t0, -552($fp)
	sw $t0, -6100($fp)
	lw $t1, -6100($fp)
	li $t2, 0
	bne $t1, $t2, label525
	j label524
label524:
	li $t0, 1
	sw $t0, -6096($fp)
label525:
	li $t0, 0
	lw $t1, -6096($fp)
	sub $t0, $t0, $t1
	sw $t0, -6104($fp)
	lw $t0, -6080($fp)
	lw $t1, -6104($fp)
	sub $t0, $t0, $t1
	sw $t0, -6108($fp)
	li $t0, 0
	sw $t0, -6112($fp)
	addi $t0, $fp, -96
	sw $t0, -6116($fp)
	li $t0, 0
	sw $t0, -6120($fp)
	li $t0, 4
	lw $t1, -6120($fp)
	mul $t0, $t0, $t1
	sw $t0, -6124($fp)
	lw $t0, -6124($fp)
	lw $t1, -6116($fp)
	add $t0, $t0, $t1
	sw $t0, -6128($fp)
	lw $t0, -6128($fp)
	lw $t1, 0($t0)
	sw $t1, -6132($fp)
	lw $t1, -6132($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label526
label526:
	li $t0, 1
	sw $t0, -6112($fp)
label527:
	addi $t0, $fp, -88
	sw $t0, -6136($fp)
	lw $t0, -2028($fp)
	sw $t0, -6140($fp)
	li $t0, 4
	lw $t1, -6140($fp)
	mul $t0, $t0, $t1
	sw $t0, -6144($fp)
	lw $t0, -6144($fp)
	lw $t1, -6136($fp)
	add $t0, $t0, $t1
	sw $t0, -6148($fp)
	lw $t0, -6148($fp)
	lw $t1, 0($t0)
	sw $t1, -6152($fp)
	lw $t0, -6112($fp)
	lw $t1, -6152($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6156($fp)
	lw $t0, -6108($fp)
	lw $t1, -6156($fp)
	sub $t0, $t0, $t1
	sw $t0, -6160($fp)
label506:
	li $t0, 0
	sw $t0, -6164($fp)
	addi $t0, $fp, -196
	sw $t0, -6168($fp)
	li $t0, 0
	sw $t0, -6172($fp)
	li $t0, 4
	lw $t1, -6172($fp)
	mul $t0, $t0, $t1
	sw $t0, -6176($fp)
	lw $t0, -6176($fp)
	lw $t1, -6168($fp)
	add $t0, $t0, $t1
	sw $t0, -6180($fp)
	lw $t0, -6180($fp)
	lw $t1, 0($t0)
	sw $t1, -6184($fp)
	li $t0, 0
	lw $t1, -6184($fp)
	sub $t0, $t0, $t1
	sw $t0, -6188($fp)
	lw $t0, -1068($fp)
	sw $t0, -6192($fp)
	li $t0, 0
	lw $t1, -6192($fp)
	sub $t0, $t0, $t1
	sw $t0, -6196($fp)
	lw $t1, -6188($fp)
	lw $t2, -6196($fp)
	blt $t1, $t2, label528
	j label531
label531:
	li $t0, 64884
	sw $t0, -6200($fp)
	li $t0, 0
	lw $t1, -6200($fp)
	sub $t0, $t0, $t1
	sw $t0, -6204($fp)
	lw $t1, -6204($fp)
	li $t2, 0
	bne $t1, $t2, label528
	j label530
label530:
	li $t0, 26309
	sw $t0, -6208($fp)
	lw $t1, -6208($fp)
	li $t2, 0
	bne $t1, $t2, label528
	j label529
label528:
	li $t0, 1
	sw $t0, -6164($fp)
label529:
	li $t0, 0
	sw $t0, -6212($fp)
	li $t0, 31992
	sw $t0, -6216($fp)
	li $t0, 0
	sw $t0, -6220($fp)
	lw $t0, -1368($fp)
	sw $t0, -6224($fp)
	lw $t1, -6224($fp)
	li $t2, 0
	bne $t1, $t2, label537
	j label536
label536:
	li $t0, 1
	sw $t0, -6220($fp)
label537:
	lw $t0, -6216($fp)
	lw $t1, -6220($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6228($fp)
	lw $t1, -6228($fp)
	li $t2, 0
	bne $t1, $t2, label535
	j label534
label535:
	li $t0, 30093
	sw $t0, -6232($fp)
	lw $t0, -6232($fp)
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	sw $t0, -6236($fp)
	li $t0, 0
	sw $t0, -6240($fp)
	lw $t0, 4($fp)
	sw $t0, -6244($fp)
	lw $t0, -636($fp)
	sw $t0, -6248($fp)
	lw $t1, -6244($fp)
	lw $t2, -6248($fp)
	bne $t1, $t2, label540
	j label539
label540:
	lw $t0, -1596($fp)
	sw $t0, -6252($fp)
	lw $t1, -6252($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label539
label538:
	li $t0, 1
	sw $t0, -6240($fp)
label539:
	addi $sp, $sp, -4
	lw $t0, -6236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6240($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6256($fp)
	addi $sp, $sp, 12
	lw $t1, -6256($fp)
	li $t2, 0
	bne $t1, $t2, label532
	j label534
label534:
	li $t0, 64480
	sw $t0, -6260($fp)
	lw $t1, -6260($fp)
	li $t2, 0
	bne $t1, $t2, label542
	j label533
label542:
	li $t0, 18226
	sw $t0, -6264($fp)
	lw $t1, -6264($fp)
	li $t2, 0
	bne $t1, $t2, label541
	j label533
label541:
	li $t0, 21241
	sw $t0, -6268($fp)
	lw $t0, -1644($fp)
	sw $t0, -6272($fp)
	lw $t0, -6268($fp)
	lw $t1, -6272($fp)
	mul $t0, $t0, $t1
	sw $t0, -6276($fp)
	lw $t1, -6276($fp)
	li $t2, 0
	bne $t1, $t2, label532
	j label533
label532:
	li $t0, 1
	sw $t0, -6212($fp)
label533:
	addi $t0, $fp, -196
	sw $t0, -6280($fp)
	addi $t0, $fp, -156
	sw $t0, -6284($fp)
	lw $t0, -1056($fp)
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
	addi $t0, $fp, -156
	sw $t0, -6304($fp)
	lw $t0, -5204($fp)
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
	lw $t0, -6300($fp)
	lw $t1, -6320($fp)
	sub $t0, $t0, $t1
	sw $t0, -6324($fp)
	li $t0, 4
	lw $t1, -6324($fp)
	mul $t0, $t0, $t1
	sw $t0, -6328($fp)
	lw $t0, -6328($fp)
	lw $t1, -6280($fp)
	add $t0, $t0, $t1
	sw $t0, -6332($fp)
	lw $t0, -6332($fp)
	lw $t1, 0($t0)
	sw $t1, -6336($fp)
	j label433
label435:
label426:
	lw $t0, -204($fp)
	sw $t0, -6340($fp)
	lw $t0, -6340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -216($fp)
	sw $t0, -6344($fp)
	lw $t0, -6344($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -228($fp)
	sw $t0, -6348($fp)
	lw $t0, -6348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -240($fp)
	sw $t0, -6352($fp)
	lw $t0, -6352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -252($fp)
	sw $t0, -6356($fp)
	lw $t0, -6356($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -264($fp)
	sw $t0, -6360($fp)
	lw $t0, -6360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -6364($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -6384($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
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
	lw $t0, -6420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -6424($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -6444($fp)
	li $t0, 4
	sw $t0, -6448($fp)
	li $t0, 4
	lw $t1, -6448($fp)
	mul $t0, $t0, $t1
	sw $t0, -6452($fp)
	lw $t0, -6452($fp)
	lw $t1, -6444($fp)
	add $t0, $t0, $t1
	sw $t0, -6456($fp)
	lw $t0, -6456($fp)
	lw $t1, 0($t0)
	sw $t1, -6460($fp)
	lw $t0, -6460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -6464($fp)
	li $t0, 5
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
	lw $t0, -6480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -6484($fp)
	li $t0, 6
	sw $t0, -6488($fp)
	li $t0, 4
	lw $t1, -6488($fp)
	mul $t0, $t0, $t1
	sw $t0, -6492($fp)
	lw $t0, -6492($fp)
	lw $t1, -6484($fp)
	add $t0, $t0, $t1
	sw $t0, -6496($fp)
	lw $t0, -6496($fp)
	lw $t1, 0($t0)
	sw $t1, -6500($fp)
	lw $t0, -6500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -6504($fp)
	li $t0, 7
	sw $t0, -6508($fp)
	li $t0, 4
	lw $t1, -6508($fp)
	mul $t0, $t0, $t1
	sw $t0, -6512($fp)
	lw $t0, -6512($fp)
	lw $t1, -6504($fp)
	add $t0, $t0, $t1
	sw $t0, -6516($fp)
	lw $t0, -6516($fp)
	lw $t1, 0($t0)
	sw $t1, -6520($fp)
	lw $t0, -6520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -6524($fp)
	li $t0, 8
	sw $t0, -6528($fp)
	li $t0, 4
	lw $t1, -6528($fp)
	mul $t0, $t0, $t1
	sw $t0, -6532($fp)
	lw $t0, -6532($fp)
	lw $t1, -6524($fp)
	add $t0, $t0, $t1
	sw $t0, -6536($fp)
	lw $t0, -6536($fp)
	lw $t1, 0($t0)
	sw $t1, -6540($fp)
	lw $t0, -6540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -6544($fp)
	li $t0, 9
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
	lw $t0, -6560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -6564($fp)
	lw $t0, -6564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -6568($fp)
	lw $t0, -6568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -6572($fp)
	lw $t0, -6572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -6576($fp)
	lw $t0, -6576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -6580($fp)
	li $t0, 0
	sw $t0, -6584($fp)
	li $t0, 4
	lw $t1, -6584($fp)
	mul $t0, $t0, $t1
	sw $t0, -6588($fp)
	lw $t0, -6588($fp)
	lw $t1, -6580($fp)
	add $t0, $t0, $t1
	sw $t0, -6592($fp)
	lw $t0, -6592($fp)
	lw $t1, 0($t0)
	sw $t1, -6596($fp)
	lw $t0, -6596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -6600($fp)
	li $t0, 1
	sw $t0, -6604($fp)
	li $t0, 4
	lw $t1, -6604($fp)
	mul $t0, $t0, $t1
	sw $t0, -6608($fp)
	lw $t0, -6608($fp)
	lw $t1, -6600($fp)
	add $t0, $t0, $t1
	sw $t0, -6612($fp)
	lw $t0, -6612($fp)
	lw $t1, 0($t0)
	sw $t1, -6616($fp)
	lw $t0, -6616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -6620($fp)
	li $t0, 2
	sw $t0, -6624($fp)
	li $t0, 4
	lw $t1, -6624($fp)
	mul $t0, $t0, $t1
	sw $t0, -6628($fp)
	lw $t0, -6628($fp)
	lw $t1, -6620($fp)
	add $t0, $t0, $t1
	sw $t0, -6632($fp)
	lw $t0, -6632($fp)
	lw $t1, 0($t0)
	sw $t1, -6636($fp)
	lw $t0, -6636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -636($fp)
	sw $t0, -6640($fp)
	lw $t0, -6640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -6644($fp)
	lw $t0, -6644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -6648($fp)
	lw $t0, -6648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -6652($fp)
	lw $t0, -6652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -684($fp)
	sw $t0, -6656($fp)
	lw $t0, -6656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -696($fp)
	sw $t0, -6660($fp)
	lw $t0, -6660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -6664($fp)
	lw $t0, -6664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -720($fp)
	sw $t0, -6668($fp)
	lw $t0, -6668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -732($fp)
	sw $t0, -6672($fp)
	lw $t0, -6672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -6676($fp)
	li $t0, 0
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
	addi $t0, $fp, -88
	sw $t0, -6696($fp)
	li $t0, 1
	sw $t0, -6700($fp)
	li $t0, 4
	lw $t1, -6700($fp)
	mul $t0, $t0, $t1
	sw $t0, -6704($fp)
	lw $t0, -6704($fp)
	lw $t1, -6696($fp)
	add $t0, $t0, $t1
	sw $t0, -6708($fp)
	lw $t0, -6708($fp)
	lw $t1, 0($t0)
	sw $t1, -6712($fp)
	lw $t0, -6712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -6716($fp)
	li $t0, 2
	sw $t0, -6720($fp)
	li $t0, 4
	lw $t1, -6720($fp)
	mul $t0, $t0, $t1
	sw $t0, -6724($fp)
	lw $t0, -6724($fp)
	lw $t1, -6716($fp)
	add $t0, $t0, $t1
	sw $t0, -6728($fp)
	lw $t0, -6728($fp)
	lw $t1, 0($t0)
	sw $t1, -6732($fp)
	lw $t0, -6732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -6736($fp)
	li $t0, 3
	sw $t0, -6740($fp)
	li $t0, 4
	lw $t1, -6740($fp)
	mul $t0, $t0, $t1
	sw $t0, -6744($fp)
	lw $t0, -6744($fp)
	lw $t1, -6736($fp)
	add $t0, $t0, $t1
	sw $t0, -6748($fp)
	lw $t0, -6748($fp)
	lw $t1, 0($t0)
	sw $t1, -6752($fp)
	lw $t0, -6752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -6756($fp)
	li $t0, 4
	sw $t0, -6760($fp)
	li $t0, 4
	lw $t1, -6760($fp)
	mul $t0, $t0, $t1
	sw $t0, -6764($fp)
	lw $t0, -6764($fp)
	lw $t1, -6756($fp)
	add $t0, $t0, $t1
	sw $t0, -6768($fp)
	lw $t0, -6768($fp)
	lw $t1, 0($t0)
	sw $t1, -6772($fp)
	lw $t0, -6772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -6776($fp)
	li $t0, 5
	sw $t0, -6780($fp)
	li $t0, 4
	lw $t1, -6780($fp)
	mul $t0, $t0, $t1
	sw $t0, -6784($fp)
	lw $t0, -6784($fp)
	lw $t1, -6776($fp)
	add $t0, $t0, $t1
	sw $t0, -6788($fp)
	lw $t0, -6788($fp)
	lw $t1, 0($t0)
	sw $t1, -6792($fp)
	lw $t0, -6792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -6796($fp)
	li $t0, 6
	sw $t0, -6800($fp)
	li $t0, 4
	lw $t1, -6800($fp)
	mul $t0, $t0, $t1
	sw $t0, -6804($fp)
	lw $t0, -6804($fp)
	lw $t1, -6796($fp)
	add $t0, $t0, $t1
	sw $t0, -6808($fp)
	lw $t0, -6808($fp)
	lw $t1, 0($t0)
	sw $t1, -6812($fp)
	lw $t0, -6812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -6816($fp)
	li $t0, 7
	sw $t0, -6820($fp)
	li $t0, 4
	lw $t1, -6820($fp)
	mul $t0, $t0, $t1
	sw $t0, -6824($fp)
	lw $t0, -6824($fp)
	lw $t1, -6816($fp)
	add $t0, $t0, $t1
	sw $t0, -6828($fp)
	lw $t0, -6828($fp)
	lw $t1, 0($t0)
	sw $t1, -6832($fp)
	lw $t0, -6832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -936($fp)
	sw $t0, -6836($fp)
	lw $t0, -6836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -948($fp)
	sw $t0, -6840($fp)
	lw $t0, -6840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -96
	sw $t0, -6844($fp)
	li $t0, 0
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
	addi $t0, $fp, -96
	sw $t0, -6864($fp)
	li $t0, 1
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
	lw $t0, -1008($fp)
	sw $t0, -6884($fp)
	lw $t0, -6884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1020($fp)
	sw $t0, -6888($fp)
	lw $t0, -6888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1032($fp)
	sw $t0, -6892($fp)
	lw $t0, -6892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1044($fp)
	sw $t0, -6896($fp)
	lw $t0, -6896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1056($fp)
	sw $t0, -6900($fp)
	lw $t0, -6900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1068($fp)
	sw $t0, -6904($fp)
	lw $t0, -6904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1080($fp)
	sw $t0, -6908($fp)
	lw $t0, -6908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1092($fp)
	sw $t0, -6912($fp)
	lw $t0, -6912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1104($fp)
	sw $t0, -6916($fp)
	lw $t0, -6916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1116($fp)
	sw $t0, -6920($fp)
	lw $t0, -6920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1128($fp)
	sw $t0, -6924($fp)
	lw $t0, -6924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -6928($fp)
	li $t0, 0
	sw $t0, -6932($fp)
	li $t0, 4
	lw $t1, -6932($fp)
	mul $t0, $t0, $t1
	sw $t0, -6936($fp)
	lw $t0, -6936($fp)
	lw $t1, -6928($fp)
	add $t0, $t0, $t1
	sw $t0, -6940($fp)
	lw $t0, -6940($fp)
	lw $t1, 0($t0)
	sw $t1, -6944($fp)
	lw $t0, -6944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -6948($fp)
	li $t0, 1
	sw $t0, -6952($fp)
	li $t0, 4
	lw $t1, -6952($fp)
	mul $t0, $t0, $t1
	sw $t0, -6956($fp)
	lw $t0, -6956($fp)
	lw $t1, -6948($fp)
	add $t0, $t0, $t1
	sw $t0, -6960($fp)
	lw $t0, -6960($fp)
	lw $t1, 0($t0)
	sw $t1, -6964($fp)
	lw $t0, -6964($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -6968($fp)
	li $t0, 2
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
	lw $t0, -6984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -6988($fp)
	li $t0, 3
	sw $t0, -6992($fp)
	li $t0, 4
	lw $t1, -6992($fp)
	mul $t0, $t0, $t1
	sw $t0, -6996($fp)
	lw $t0, -6996($fp)
	lw $t1, -6988($fp)
	add $t0, $t0, $t1
	sw $t0, -7000($fp)
	lw $t0, -7000($fp)
	lw $t1, 0($t0)
	sw $t1, -7004($fp)
	lw $t0, -7004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7008($fp)
	li $t0, 4
	sw $t0, -7012($fp)
	li $t0, 4
	lw $t1, -7012($fp)
	mul $t0, $t0, $t1
	sw $t0, -7016($fp)
	lw $t0, -7016($fp)
	lw $t1, -7008($fp)
	add $t0, $t0, $t1
	sw $t0, -7020($fp)
	lw $t0, -7020($fp)
	lw $t1, 0($t0)
	sw $t1, -7024($fp)
	lw $t0, -7024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7028($fp)
	li $t0, 5
	sw $t0, -7032($fp)
	li $t0, 4
	lw $t1, -7032($fp)
	mul $t0, $t0, $t1
	sw $t0, -7036($fp)
	lw $t0, -7036($fp)
	lw $t1, -7028($fp)
	add $t0, $t0, $t1
	sw $t0, -7040($fp)
	lw $t0, -7040($fp)
	lw $t1, 0($t0)
	sw $t1, -7044($fp)
	lw $t0, -7044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7048($fp)
	li $t0, 6
	sw $t0, -7052($fp)
	li $t0, 4
	lw $t1, -7052($fp)
	mul $t0, $t0, $t1
	sw $t0, -7056($fp)
	lw $t0, -7056($fp)
	lw $t1, -7048($fp)
	add $t0, $t0, $t1
	sw $t0, -7060($fp)
	lw $t0, -7060($fp)
	lw $t1, 0($t0)
	sw $t1, -7064($fp)
	lw $t0, -7064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7068($fp)
	li $t0, 7
	sw $t0, -7072($fp)
	li $t0, 4
	lw $t1, -7072($fp)
	mul $t0, $t0, $t1
	sw $t0, -7076($fp)
	lw $t0, -7076($fp)
	lw $t1, -7068($fp)
	add $t0, $t0, $t1
	sw $t0, -7080($fp)
	lw $t0, -7080($fp)
	lw $t1, 0($t0)
	sw $t1, -7084($fp)
	lw $t0, -7084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -7088($fp)
	li $t0, 8
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
	lw $t0, -7104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1356($fp)
	sw $t0, -7108($fp)
	lw $t0, -7108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1368($fp)
	sw $t0, -7112($fp)
	lw $t0, -7112($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1380($fp)
	sw $t0, -7116($fp)
	lw $t0, -7116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1392($fp)
	sw $t0, -7120($fp)
	lw $t0, -7120($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -7124($fp)
	li $t0, 0
	sw $t0, -7128($fp)
	li $t0, 4
	lw $t1, -7128($fp)
	mul $t0, $t0, $t1
	sw $t0, -7132($fp)
	lw $t0, -7132($fp)
	lw $t1, -7124($fp)
	add $t0, $t0, $t1
	sw $t0, -7136($fp)
	lw $t0, -7136($fp)
	lw $t1, 0($t0)
	sw $t1, -7140($fp)
	lw $t0, -7140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -7144($fp)
	li $t0, 1
	sw $t0, -7148($fp)
	li $t0, 4
	lw $t1, -7148($fp)
	mul $t0, $t0, $t1
	sw $t0, -7152($fp)
	lw $t0, -7152($fp)
	lw $t1, -7144($fp)
	add $t0, $t0, $t1
	sw $t0, -7156($fp)
	lw $t0, -7156($fp)
	lw $t1, 0($t0)
	sw $t1, -7160($fp)
	lw $t0, -7160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -7164($fp)
	li $t0, 2
	sw $t0, -7168($fp)
	li $t0, 4
	lw $t1, -7168($fp)
	mul $t0, $t0, $t1
	sw $t0, -7172($fp)
	lw $t0, -7172($fp)
	lw $t1, -7164($fp)
	add $t0, $t0, $t1
	sw $t0, -7176($fp)
	lw $t0, -7176($fp)
	lw $t1, 0($t0)
	sw $t1, -7180($fp)
	lw $t0, -7180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -7184($fp)
	li $t0, 3
	sw $t0, -7188($fp)
	li $t0, 4
	lw $t1, -7188($fp)
	mul $t0, $t0, $t1
	sw $t0, -7192($fp)
	lw $t0, -7192($fp)
	lw $t1, -7184($fp)
	add $t0, $t0, $t1
	sw $t0, -7196($fp)
	lw $t0, -7196($fp)
	lw $t1, 0($t0)
	sw $t1, -7200($fp)
	lw $t0, -7200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1500($fp)
	sw $t0, -7204($fp)
	lw $t0, -7204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1512($fp)
	sw $t0, -7208($fp)
	lw $t0, -7208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -7212($fp)
	li $t0, 0
	sw $t0, -7216($fp)
	li $t0, 4
	lw $t1, -7216($fp)
	mul $t0, $t0, $t1
	sw $t0, -7220($fp)
	lw $t0, -7220($fp)
	lw $t1, -7212($fp)
	add $t0, $t0, $t1
	sw $t0, -7224($fp)
	lw $t0, -7224($fp)
	lw $t1, 0($t0)
	sw $t1, -7228($fp)
	lw $t0, -7228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1548($fp)
	sw $t0, -7232($fp)
	lw $t0, -7232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1560($fp)
	sw $t0, -7236($fp)
	lw $t0, -7236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -156
	sw $t0, -7240($fp)
	li $t0, 0
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
	lw $t0, -1596($fp)
	sw $t0, -7260($fp)
	lw $t0, -7260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1608($fp)
	sw $t0, -7264($fp)
	lw $t0, -7264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1620($fp)
	sw $t0, -7268($fp)
	lw $t0, -7268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1632($fp)
	sw $t0, -7272($fp)
	lw $t0, -7272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1644($fp)
	sw $t0, -7276($fp)
	lw $t0, -7276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1656($fp)
	sw $t0, -7280($fp)
	lw $t0, -7280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1668($fp)
	sw $t0, -7284($fp)
	lw $t0, -7284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1680($fp)
	sw $t0, -7288($fp)
	lw $t0, -7288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1692($fp)
	sw $t0, -7292($fp)
	lw $t0, -7292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1704($fp)
	sw $t0, -7296($fp)
	lw $t0, -7296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1716($fp)
	sw $t0, -7300($fp)
	lw $t0, -7300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1728($fp)
	sw $t0, -7304($fp)
	lw $t0, -7304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1740($fp)
	sw $t0, -7308($fp)
	lw $t0, -7308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1752($fp)
	sw $t0, -7312($fp)
	lw $t0, -7312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -180
	sw $t0, -7316($fp)
	li $t0, 0
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
	addi $t0, $fp, -180
	sw $t0, -7336($fp)
	li $t0, 1
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
	addi $t0, $fp, -180
	sw $t0, -7356($fp)
	li $t0, 2
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
	addi $t0, $fp, -180
	sw $t0, -7376($fp)
	li $t0, 3
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
	addi $t0, $fp, -180
	sw $t0, -7396($fp)
	li $t0, 4
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
	addi $t0, $fp, -180
	sw $t0, -7416($fp)
	li $t0, 5
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
	addi $t0, $fp, -196
	sw $t0, -7436($fp)
	li $t0, 0
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
	addi $t0, $fp, -196
	sw $t0, -7456($fp)
	li $t0, 1
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
	addi $t0, $fp, -196
	sw $t0, -7476($fp)
	li $t0, 2
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
	addi $t0, $fp, -196
	sw $t0, -7496($fp)
	li $t0, 3
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
	lw $t0, -2004($fp)
	sw $t0, -7516($fp)
	lw $t0, -7516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2016($fp)
	sw $t0, -7520($fp)
	lw $t0, -7520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2028($fp)
	sw $t0, -7524($fp)
	lw $t0, -7524($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2040($fp)
	sw $t0, -7528($fp)
	lw $t0, -7528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -7532($fp)
	addi $t0, $fp, -56
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
	lw $t0, -216($fp)
	sw $t0, -7556($fp)
	li $t0, 33871
	sw $t0, -7560($fp)
	lw $t0, -7556($fp)
	lw $t1, -7560($fp)
	mul $t0, $t0, $t1
	sw $t0, -7564($fp)
	addi $sp, $sp, -4
	lw $t0, -7552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7564($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7568($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -156
	sw $t0, -7572($fp)
	lw $t0, -708($fp)
	sw $t0, -7576($fp)
	li $t0, 4
	lw $t1, -7576($fp)
	mul $t0, $t0, $t1
	sw $t0, -7580($fp)
	lw $t0, -7580($fp)
	lw $t1, -7572($fp)
	add $t0, $t0, $t1
	sw $t0, -7584($fp)
	lw $t0, -7584($fp)
	lw $t1, 0($t0)
	sw $t1, -7588($fp)
	lw $t0, -7568($fp)
	lw $t1, -7588($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7592($fp)
	lw $t0, -2028($fp)
	sw $t0, -7596($fp)
	lw $t0, -1596($fp)
	sw $t0, -7600($fp)
	lw $t0, -7596($fp)
	lw $t1, -7600($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7604($fp)
	li $t0, 41876
	sw $t0, -7608($fp)
	lw $t0, -7604($fp)
	lw $t1, -7608($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7612($fp)
	lw $t0, -7592($fp)
	lw $t1, -7612($fp)
	sub $t0, $t0, $t1
	sw $t0, -7616($fp)
	lw $t1, -7616($fp)
	li $t2, 0
	bne $t1, $t2, label545
	j label544
label545:
	addi $t0, $fp, -156
	sw $t0, -7620($fp)
	li $t0, 0
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
	lw $t1, -7636($fp)
	li $t2, 0
	bne $t1, $t2, label543
	j label544
label543:
	li $t0, 1
	sw $t0, -7532($fp)
label544:
	lw $ra, -4($fp)
	lw $v0, -7532($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -280
	li $t0, 31973
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
	li $t0, 37157
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
	li $t0, 61270
	sw $t0, -64($fp)
	li $t0, 1
	sw $t0, -68($fp)
	lw $t0, -64($fp)
	lw $t1, -68($fp)
	mul $t0, $t0, $t1
	sw $t0, -72($fp)
	lw $t0, 8($fp)
	sw $t0, -76($fp)
	lw $t0, 8($fp)
	sw $t0, -80($fp)
	lw $t0, -76($fp)
	lw $t1, -80($fp)
	add $t0, $t0, $t1
	sw $t0, -84($fp)
	lw $t0, 8($fp)
	sw $t0, -88($fp)
	lw $t0, -84($fp)
	lw $t1, -88($fp)
	sub $t0, $t0, $t1
	sw $t0, -92($fp)
	li $t0, 18936
	sw $t0, -96($fp)
	li $t0, 0
	lw $t1, -96($fp)
	sub $t0, $t0, $t1
	sw $t0, -100($fp)
	lw $t0, -92($fp)
	lw $t1, -100($fp)
	add $t0, $t0, $t1
	sw $t0, -104($fp)
	lw $t1, -72($fp)
	lw $t2, -104($fp)
	ble $t1, $t2, label546
	j label547
label546:
	li $t0, 0
	sw $t0, -108($fp)
	addi $t0, $fp, -12
	sw $t0, -112($fp)
	li $t0, 0
	sw $t0, -116($fp)
	li $t0, 44727
	sw $t0, -120($fp)
	lw $t1, -120($fp)
	li $t2, 0
	bne $t1, $t2, label552
	j label551
label551:
	li $t0, 1
	sw $t0, -116($fp)
label552:
	lw $t0, 8($fp)
	sw $t0, -124($fp)
	lw $t0, -116($fp)
	lw $t1, -124($fp)
	mul $t0, $t0, $t1
	sw $t0, -128($fp)
	li $t0, 4
	lw $t1, -128($fp)
	mul $t0, $t0, $t1
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	lw $t1, -112($fp)
	add $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	lw $t1, 0($t0)
	sw $t1, -140($fp)
	li $t0, 39971
	sw $t0, -144($fp)
	li $t0, 32650
	sw $t0, -148($fp)
	li $t0, 0
	lw $t1, -148($fp)
	sub $t0, $t0, $t1
	sw $t0, -152($fp)
	lw $t0, -144($fp)
	lw $t1, -152($fp)
	mul $t0, $t0, $t1
	sw $t0, -156($fp)
	lw $t1, -140($fp)
	lw $t2, -156($fp)
	beq $t1, $t2, label549
	j label550
label549:
	li $t0, 1
	sw $t0, -108($fp)
label550:
label547:
	addi $t0, $fp, -12
	sw $t0, -160($fp)
	li $t0, 0
	sw $t0, -164($fp)
	li $t0, 4
	lw $t1, -164($fp)
	mul $t0, $t0, $t1
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	lw $t1, -160($fp)
	add $t0, $t0, $t1
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	lw $t1, 0($t0)
	sw $t1, -176($fp)
	lw $t0, -176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -180($fp)
	li $t0, 1
	sw $t0, -184($fp)
	li $t0, 4
	lw $t1, -184($fp)
	mul $t0, $t0, $t1
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	lw $t1, -180($fp)
	add $t0, $t0, $t1
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	lw $t1, 0($t0)
	sw $t1, -196($fp)
	lw $t0, -196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -200($fp)
	li $t0, 0
	sw $t0, -204($fp)
	li $t0, 0
	sw $t0, -208($fp)
	li $t0, 35098
	sw $t0, -212($fp)
	li $t0, 13008
	sw $t0, -216($fp)
	lw $t0, -212($fp)
	lw $t1, -216($fp)
	sub $t0, $t0, $t1
	sw $t0, -220($fp)
	li $t0, 42750
	sw $t0, -224($fp)
	lw $t1, -220($fp)
	lw $t2, -224($fp)
	beq $t1, $t2, label557
	j label558
label557:
	li $t0, 1
	sw $t0, -208($fp)
label558:
	li $t0, 0
	sw $t0, -228($fp)
	lw $t0, 8($fp)
	sw $t0, -232($fp)
	li $t0, 11324
	sw $t0, -236($fp)
	lw $t1, -232($fp)
	lw $t2, -236($fp)
	bne $t1, $t2, label559
	j label560
label559:
	li $t0, 1
	sw $t0, -228($fp)
label560:
	addi $sp, $sp, -4
	lw $t0, -208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -228($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -240($fp)
	addi $sp, $sp, 12
	li $t0, 33386
	sw $t0, -244($fp)
	li $t0, 0
	lw $t1, -244($fp)
	sub $t0, $t0, $t1
	sw $t0, -248($fp)
	lw $t0, -240($fp)
	lw $t1, -248($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -252($fp)
	li $t0, 21169
	sw $t0, -256($fp)
	lw $t0, 8($fp)
	sw $t0, -260($fp)
	lw $t0, -256($fp)
	lw $t1, -260($fp)
	mul $t0, $t0, $t1
	sw $t0, -264($fp)
	li $t0, 46453
	sw $t0, -268($fp)
	lw $t0, -264($fp)
	lw $t1, -268($fp)
	mul $t0, $t0, $t1
	sw $t0, -272($fp)
	lw $t1, -252($fp)
	lw $t2, -272($fp)
	bgt $t1, $t2, label555
	j label556
label555:
	li $t0, 1
	sw $t0, -204($fp)
label556:
	lw $t0, 4($fp)
	sw $t0, -276($fp)
	li $t0, 0
	lw $t1, -276($fp)
	sub $t0, $t0, $t1
	sw $t0, -280($fp)
	li $t0, 0
	lw $t1, -280($fp)
	sub $t0, $t0, $t1
	sw $t0, -284($fp)
	lw $t1, -204($fp)
	lw $t2, -284($fp)
	bgt $t1, $t2, label553
	j label554
label553:
	li $t0, 1
	sw $t0, -200($fp)
label554:
	lw $ra, -4($fp)
	lw $v0, -200($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -640
	li $t0, 6340
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
	li $t0, 7733
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
	li $t0, 45801
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	li $t0, 32649
	sw $t0, -104($fp)
	addi $t0, $fp, -40
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
	li $t0, 39725
	sw $t0, -128($fp)
	addi $t0, $fp, -40
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
	li $t0, 10359
	sw $t0, -152($fp)
	addi $t0, $fp, -40
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
	li $t0, 31594
	sw $t0, -176($fp)
	addi $t0, $fp, -40
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
	li $t0, 57951
	sw $t0, -200($fp)
	addi $t0, $fp, -40
	sw $t0, -204($fp)
	li $t0, 4
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
	li $t0, 31600
	sw $t0, -224($fp)
	addi $t0, $fp, -40
	sw $t0, -228($fp)
	li $t0, 5
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
	li $t0, 65465
	sw $t0, -248($fp)
	addi $t0, $fp, -40
	sw $t0, -252($fp)
	li $t0, 6
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
	lw $t0, -96($fp)
	sw $t0, -272($fp)
	li $t0, 0
	lw $t1, -272($fp)
	sub $t0, $t0, $t1
	sw $t0, -276($fp)
label561:
	li $t0, 0
	sw $t0, -280($fp)
	li $t0, 41805
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -288($fp)
	li $t0, 0
	sw $t0, -292($fp)
	li $t0, 56424
	sw $t0, -296($fp)
	lw $t0, -96($fp)
	sw $t0, -300($fp)
	lw $t0, -296($fp)
	lw $t1, -300($fp)
	mul $t0, $t0, $t1
	sw $t0, -304($fp)
	lw $t1, -304($fp)
	li $t2, 0
	bne $t1, $t2, label568
	j label567
label568:
	lw $t0, -96($fp)
	sw $t0, -308($fp)
	lw $t1, -308($fp)
	li $t2, 0
	bne $t1, $t2, label566
	j label567
label566:
	li $t0, 1
	sw $t0, -292($fp)
label567:
	lw $t0, -96($fp)
	sw $t0, -312($fp)
	lw $t0, -96($fp)
	sw $t0, -316($fp)
	lw $t0, -316($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -320($fp)
	addi $sp, $sp, -4
	lw $t0, -292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -320($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -324($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -328($fp)
	li $t0, 0
	sw $t0, -332($fp)
	lw $t0, -96($fp)
	sw $t0, -336($fp)
	lw $t0, -96($fp)
	sw $t0, -340($fp)
	lw $t1, -336($fp)
	lw $t2, -340($fp)
	ble $t1, $t2, label571
	j label572
label571:
	li $t0, 1
	sw $t0, -332($fp)
label572:
	li $t0, 28294
	sw $t0, -344($fp)
	lw $t1, -332($fp)
	lw $t2, -344($fp)
	bne $t1, $t2, label569
	j label570
label569:
	li $t0, 1
	sw $t0, -328($fp)
label570:
	addi $sp, $sp, -4
	lw $t0, -288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -328($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -348($fp)
	addi $sp, $sp, 16
	li $t0, 44346
	sw $t0, -352($fp)
	lw $t0, -348($fp)
	lw $t1, -352($fp)
	sub $t0, $t0, $t1
	sw $t0, -356($fp)
	li $t0, 0
	sw $t0, -360($fp)
	li $t0, 5174
	sw $t0, -364($fp)
	lw $t1, -364($fp)
	li $t2, 0
	bne $t1, $t2, label574
	j label573
label573:
	li $t0, 1
	sw $t0, -360($fp)
label574:
	lw $t1, -356($fp)
	lw $t2, -360($fp)
	blt $t1, $t2, label564
	j label565
label564:
	li $t0, 1
	sw $t0, -280($fp)
label565:
	lw $t0, -280($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -368($fp)
	lw $t1, -368($fp)
	li $t2, 0
	bne $t1, $t2, label562
	j label563
label562:
	li $t0, 0
	sw $t0, -372($fp)
	lw $t0, 12($fp)
	sw $t0, -376($fp)
	li $t0, 0
	sw $t0, -380($fp)
	li $t0, 26029
	sw $t0, -384($fp)
	lw $t1, -384($fp)
	li $t2, 0
	bne $t1, $t2, label578
	j label577
label577:
	li $t0, 1
	sw $t0, -380($fp)
label578:
	lw $t0, 8($fp)
	sw $t0, -388($fp)
	lw $t0, -380($fp)
	lw $t1, -388($fp)
	mul $t0, $t0, $t1
	sw $t0, -392($fp)
	lw $t0, -376($fp)
	lw $t1, -392($fp)
	sub $t0, $t0, $t1
	sw $t0, -396($fp)
	addi $t0, $fp, -40
	sw $t0, -400($fp)
	li $t0, 0
	sw $t0, -404($fp)
	lw $t0, -96($fp)
	sw $t0, -408($fp)
	lw $t1, -408($fp)
	li $t2, 0
	bne $t1, $t2, label580
	j label579
label579:
	li $t0, 1
	sw $t0, -404($fp)
label580:
	li $t0, 4
	lw $t1, -404($fp)
	mul $t0, $t0, $t1
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	lw $t1, -400($fp)
	add $t0, $t0, $t1
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	lw $t1, 0($t0)
	sw $t1, -420($fp)
	lw $t1, -396($fp)
	lw $t2, -420($fp)
	blt $t1, $t2, label575
	j label576
label575:
	li $t0, 1
	sw $t0, -372($fp)
label576:
	j label561
label563:
	addi $t0, $fp, -12
	sw $t0, -424($fp)
	li $t0, 0
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
	addi $t0, $fp, -12
	sw $t0, -444($fp)
	li $t0, 1
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
	lw $t0, -96($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -468($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -488($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -508($fp)
	li $t0, 2
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
	addi $t0, $fp, -40
	sw $t0, -528($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -548($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -568($fp)
	li $t0, 5
	sw $t0, -572($fp)
	li $t0, 4
	lw $t1, -572($fp)
	mul $t0, $t0, $t1
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	lw $t1, -568($fp)
	add $t0, $t0, $t1
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	lw $t1, 0($t0)
	sw $t1, -584($fp)
	lw $t0, -584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -588($fp)
	li $t0, 6
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
	lw $t0, -604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -608($fp)
	addi $t0, $fp, -40
	sw $t0, -612($fp)
	addi $t0, $fp, -12
	sw $t0, -616($fp)
	li $t0, 1
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
	li $t0, 4
	lw $t1, -632($fp)
	mul $t0, $t0, $t1
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	lw $t1, -612($fp)
	add $t0, $t0, $t1
	sw $t0, -640($fp)
	lw $t0, -640($fp)
	lw $t1, 0($t0)
	sw $t1, -644($fp)
	lw $t1, -644($fp)
	li $t2, 0
	bne $t1, $t2, label582
	j label581
label581:
	li $t0, 1
	sw $t0, -608($fp)
label582:
	lw $ra, -4($fp)
	lw $v0, -608($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -720
	li $t0, 21763
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	li $t0, 5037
	sw $t0, -28($fp)
	addi $t0, $fp, -12
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
	li $t0, 61267
	sw $t0, -52($fp)
	addi $t0, $fp, -12
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
	li $t0, 955
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	li $t0, 45008
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	li $t0, 28381
	sw $t0, -100($fp)
	lw $t0, -100($fp)
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	li $t0, 12279
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	li $t0, 14571
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	li $t0, 41389
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	li $t0, 55030
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	li $t0, 47957
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
label583:
	lw $t0, -152($fp)
	sw $t0, -172($fp)
	lw $t1, -172($fp)
	li $t2, 0
	bne $t1, $t2, label584
	j label585
label584:
label586:
	li $t0, 0
	sw $t0, -176($fp)
	lw $t0, -128($fp)
	sw $t0, -180($fp)
	lw $t1, -180($fp)
	li $t2, 0
	bne $t1, $t2, label593
	j label592
label593:
	lw $t0, -152($fp)
	sw $t0, -184($fp)
	lw $t1, -184($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label592
label592:
	lw $t0, -104($fp)
	sw $t0, -188($fp)
	lw $t1, -188($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label591
label590:
	li $t0, 1
	sw $t0, -176($fp)
label591:
	li $t0, 0
	sw $t0, -192($fp)
	lw $t0, -164($fp)
	sw $t0, -196($fp)
	lw $t1, -196($fp)
	li $t2, 0
	bne $t1, $t2, label597
	j label596
label597:
	li $t0, 54297
	sw $t0, -200($fp)
	lw $t1, -200($fp)
	li $t2, 0
	bne $t1, $t2, label594
	j label596
label596:
	lw $t0, 4($fp)
	sw $t0, -204($fp)
	lw $t1, -204($fp)
	li $t2, 0
	bne $t1, $t2, label594
	j label595
label594:
	li $t0, 1
	sw $t0, -192($fp)
label595:
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
	lw $t0, -80($fp)
	sw $t0, -228($fp)
	lw $t0, -224($fp)
	lw $t1, -228($fp)
	mul $t0, $t0, $t1
	sw $t0, -232($fp)
	addi $sp, $sp, -4
	lw $t0, -176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -232($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -236($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -240($fp)
	lw $t0, -92($fp)
	sw $t0, -244($fp)
	lw $t1, -244($fp)
	li $t2, 0
	bne $t1, $t2, label599
	j label598
label598:
	li $t0, 1
	sw $t0, -240($fp)
label599:
	li $t0, 0
	lw $t1, -240($fp)
	sub $t0, $t0, $t1
	sw $t0, -248($fp)
	lw $t1, -236($fp)
	lw $t2, -248($fp)
	bge $t1, $t2, label589
	j label588
label589:
	lw $t0, -164($fp)
	sw $t0, -252($fp)
	lw $t1, -252($fp)
	li $t2, 0
	bne $t1, $t2, label587
	j label588
label587:
	li $t0, 4756
	sw $t0, -256($fp)
	addi $sp, $sp, -4
	lw $t0, -256($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -260($fp)
	addi $sp, $sp, 8
	lw $ra, -4($fp)
	lw $v0, -260($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label586
label588:
	j label583
label585:
	lw $t0, -164($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -268($fp)
	addi $t0, $fp, -12
	sw $t0, -272($fp)
	li $t0, 0
	sw $t0, -276($fp)
	li $t0, 16212
	sw $t0, -280($fp)
	li $t0, 0
	lw $t1, -280($fp)
	sub $t0, $t0, $t1
	sw $t0, -284($fp)
	lw $t1, -284($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label605
label605:
	li $t0, 21411
	sw $t0, -288($fp)
	lw $t1, -288($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label604
label603:
	li $t0, 1
	sw $t0, -276($fp)
label604:
	li $t0, 4
	lw $t1, -276($fp)
	mul $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	lw $t1, -272($fp)
	add $t0, $t0, $t1
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	lw $t1, 0($t0)
	sw $t1, -300($fp)
	lw $t1, -300($fp)
	li $t2, 0
	bne $t1, $t2, label600
	j label602
label602:
	li $t0, 0
	sw $t0, -304($fp)
	li $t0, 36897
	sw $t0, -308($fp)
	lw $t1, -308($fp)
	li $t2, 0
	bne $t1, $t2, label607
	j label606
label606:
	li $t0, 1
	sw $t0, -304($fp)
label607:
	lw $t0, -116($fp)
	sw $t0, -312($fp)
	lw $t0, -304($fp)
	lw $t1, -312($fp)
	add $t0, $t0, $t1
	sw $t0, -316($fp)
	li $t0, 53005
	sw $t0, -320($fp)
	addi $t0, $fp, -12
	sw $t0, -324($fp)
	li $t0, 1
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
	addi $sp, $sp, -4
	lw $t0, -316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -340($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -344($fp)
	addi $sp, $sp, 16
	lw $t1, -344($fp)
	li $t2, 0
	bne $t1, $t2, label600
	j label601
label600:
	li $t0, 1
	sw $t0, -268($fp)
label601:
	lw $ra, -4($fp)
	lw $v0, -268($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -20($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
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
	addi $t0, $fp, -12
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
	lw $t0, -80($fp)
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	sw $t0, -400($fp)
	lw $t0, -400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -116($fp)
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -128($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -140($fp)
	sw $t0, -412($fp)
	lw $t0, -412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -152($fp)
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -420($fp)
	addi $t0, $fp, -12
	sw $t0, -424($fp)
	li $t0, 0
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
	li $t0, 65192
	sw $t0, -444($fp)
	lw $t0, -440($fp)
	lw $t1, -444($fp)
	mul $t0, $t0, $t1
	sw $t0, -448($fp)
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
	lw $t0, -448($fp)
	lw $t1, -468($fp)
	mul $t0, $t0, $t1
	sw $t0, -472($fp)
	lw $t0, -104($fp)
	sw $t0, -476($fp)
	lw $t0, -472($fp)
	lw $t1, -476($fp)
	mul $t0, $t0, $t1
	sw $t0, -480($fp)
	li $t0, 44002
	sw $t0, -484($fp)
	lw $t0, -140($fp)
	sw $t0, -488($fp)
	lw $t0, -104($fp)
	sw $t0, -492($fp)
	lw $t0, -488($fp)
	lw $t1, -492($fp)
	add $t0, $t0, $t1
	sw $t0, -496($fp)
	li $t0, 0
	sw $t0, -500($fp)
	li $t0, 0
	sw $t0, -504($fp)
	lw $t0, -92($fp)
	sw $t0, -508($fp)
	li $t0, 54234
	sw $t0, -512($fp)
	lw $t1, -508($fp)
	lw $t2, -512($fp)
	blt $t1, $t2, label612
	j label613
label612:
	li $t0, 1
	sw $t0, -504($fp)
label613:
	li $t0, 55233
	sw $t0, -516($fp)
	lw $t1, -504($fp)
	lw $t2, -516($fp)
	bne $t1, $t2, label610
	j label611
label610:
	li $t0, 1
	sw $t0, -500($fp)
label611:
	addi $sp, $sp, -4
	lw $t0, -496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -500($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -520($fp)
	addi $sp, $sp, 12
	lw $t0, -484($fp)
	lw $t1, -520($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -524($fp)
	lw $t1, -480($fp)
	lw $t2, -524($fp)
	beq $t1, $t2, label608
	j label609
label608:
	li $t0, 1
	sw $t0, -420($fp)
label609:
	lw $ra, -4($fp)
	lw $v0, -420($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -12
	sw $t0, -528($fp)
	li $t0, 0
	sw $t0, -532($fp)
	lw $t0, -128($fp)
	sw $t0, -536($fp)
	lw $t1, -536($fp)
	li $t2, 0
	bne $t1, $t2, label618
	j label617
label617:
	li $t0, 1
	sw $t0, -532($fp)
label618:
	lw $t0, -80($fp)
	sw $t0, -540($fp)
	lw $t0, -532($fp)
	lw $t1, -540($fp)
	sub $t0, $t0, $t1
	sw $t0, -544($fp)
	li $t0, 4
	lw $t1, -544($fp)
	mul $t0, $t0, $t1
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	lw $t1, -528($fp)
	add $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	lw $t1, 0($t0)
	sw $t1, -556($fp)
	lw $t1, -556($fp)
	li $t2, 0
	bne $t1, $t2, label615
	j label614
label614:
	lw $t0, -116($fp)
	sw $t0, -560($fp)
	li $t0, 54786
	sw $t0, -564($fp)
	lw $t0, -560($fp)
	lw $t1, -564($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -568($fp)
	li $t0, 0
	lw $t1, -568($fp)
	sub $t0, $t0, $t1
	sw $t0, -572($fp)
	j label616
label615:
label619:
	li $t0, 31029
	sw $t0, -576($fp)
	addi $t0, $fp, -12
	sw $t0, -580($fp)
	lw $t0, -20($fp)
	sw $t0, -584($fp)
	li $t0, 4
	lw $t1, -584($fp)
	mul $t0, $t0, $t1
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	lw $t1, -580($fp)
	add $t0, $t0, $t1
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	lw $t1, 0($t0)
	sw $t1, -596($fp)
	lw $t1, -576($fp)
	lw $t2, -596($fp)
	bge $t1, $t2, label622
	j label621
label622:
	addi $t0, $fp, -12
	sw $t0, -600($fp)
	li $t0, 0
	sw $t0, -604($fp)
	li $t0, 4
	lw $t1, -604($fp)
	mul $t0, $t0, $t1
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	lw $t1, -600($fp)
	add $t0, $t0, $t1
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	lw $t1, 0($t0)
	sw $t1, -616($fp)
	li $t0, 12415
	sw $t0, -620($fp)
	lw $t0, -616($fp)
	lw $t1, -620($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -624($fp)
	li $t0, 0
	sw $t0, -628($fp)
	li $t0, 11460
	sw $t0, -632($fp)
	lw $t0, -92($fp)
	sw $t0, -636($fp)
	lw $t1, -632($fp)
	lw $t2, -636($fp)
	bgt $t1, $t2, label623
	j label624
label623:
	li $t0, 1
	sw $t0, -628($fp)
label624:
	lw $t0, -104($fp)
	sw $t0, -640($fp)
	addi $sp, $sp, -4
	lw $t0, -624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -640($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -644($fp)
	addi $sp, $sp, 16
	lw $t1, -644($fp)
	li $t2, 0
	bne $t1, $t2, label620
	j label621
label620:
	lw $t0, -104($fp)
	sw $t0, -648($fp)
	j label619
label621:
label616:
	lw $t0, -20($fp)
	sw $t0, -652($fp)
	lw $t0, -652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -656($fp)
	li $t0, 0
	sw $t0, -660($fp)
	li $t0, 4
	lw $t1, -660($fp)
	mul $t0, $t0, $t1
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	lw $t1, -656($fp)
	add $t0, $t0, $t1
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	lw $t1, 0($t0)
	sw $t1, -672($fp)
	lw $t0, -672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -676($fp)
	li $t0, 1
	sw $t0, -680($fp)
	li $t0, 4
	lw $t1, -680($fp)
	mul $t0, $t0, $t1
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	lw $t1, -676($fp)
	add $t0, $t0, $t1
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	lw $t1, 0($t0)
	sw $t1, -692($fp)
	lw $t0, -692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -80($fp)
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -92($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -104($fp)
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -116($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -128($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -140($fp)
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -152($fp)
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -152($fp)
	sw $t0, -724($fp)
	lw $ra, -4($fp)
	lw $v0, -724($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -4844
	li $t0, 39296
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	li $t0, 55141
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	li $t0, 24695
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -124($fp)
	li $t0, 53867
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	li $t0, 30994
	sw $t0, -140($fp)
	addi $t0, $fp, -28
	sw $t0, -144($fp)
	li $t0, 0
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
	li $t0, 14189
	sw $t0, -164($fp)
	addi $t0, $fp, -28
	sw $t0, -168($fp)
	li $t0, 1
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
	li $t0, 36289
	sw $t0, -188($fp)
	addi $t0, $fp, -28
	sw $t0, -192($fp)
	li $t0, 2
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
	li $t0, 28017
	sw $t0, -212($fp)
	addi $t0, $fp, -28
	sw $t0, -216($fp)
	li $t0, 3
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
	li $t0, 50136
	sw $t0, -236($fp)
	addi $t0, $fp, -28
	sw $t0, -240($fp)
	li $t0, 4
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
	li $t0, 25050
	sw $t0, -260($fp)
	addi $t0, $fp, -28
	sw $t0, -264($fp)
	li $t0, 5
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
	li $t0, 32774
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	li $t0, 812
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
	li $t0, 46461
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
	li $t0, 11720
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
	li $t0, 27384
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
	li $t0, 33930
	sw $t0, -392($fp)
	addi $t0, $fp, -56
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
	li $t0, 48617
	sw $t0, -416($fp)
	addi $t0, $fp, -56
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
	li $t0, 20020
	sw $t0, -440($fp)
	addi $t0, $fp, -56
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
	li $t0, 21328
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	li $t0, 48273
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	li $t0, 3544
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	li $t0, 50532
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	li $t0, 26740
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	li $t0, 57778
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	li $t0, 40229
	sw $t0, -536($fp)
	lw $t0, -536($fp)
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	li $t0, 15990
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	li $t0, 23271
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	li $t0, 51689
	sw $t0, -572($fp)
	addi $t0, $fp, -64
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
	li $t0, 10278
	sw $t0, -596($fp)
	addi $t0, $fp, -64
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
	li $t0, 50031
	sw $t0, -620($fp)
	addi $t0, $fp, -80
	sw $t0, -624($fp)
	li $t0, 0
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
	li $t0, 64105
	sw $t0, -644($fp)
	addi $t0, $fp, -80
	sw $t0, -648($fp)
	li $t0, 1
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
	li $t0, 49575
	sw $t0, -668($fp)
	addi $t0, $fp, -80
	sw $t0, -672($fp)
	li $t0, 2
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
	li $t0, 39636
	sw $t0, -692($fp)
	addi $t0, $fp, -80
	sw $t0, -696($fp)
	li $t0, 3
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
	li $t0, 23264
	sw $t0, -716($fp)
	addi $t0, $fp, -88
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
	li $t0, 37906
	sw $t0, -740($fp)
	addi $t0, $fp, -88
	sw $t0, -744($fp)
	li $t0, 1
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
	li $t0, 5094
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -772($fp)
	li $t0, 37453
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
label625:
	li $t0, 8659
	sw $t0, -788($fp)
	lw $t1, -788($fp)
	li $t2, 0
	bne $t1, $t2, label626
	j label627
label626:
	li $t0, 33112
	sw $t0, -824($fp)
	addi $t0, $fp, -820
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
	li $t0, 22053
	sw $t0, -848($fp)
	addi $t0, $fp, -820
	sw $t0, -852($fp)
	li $t0, 1
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
	li $t0, 33710
	sw $t0, -872($fp)
	addi $t0, $fp, -820
	sw $t0, -876($fp)
	li $t0, 2
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
	li $t0, 350
	sw $t0, -896($fp)
	addi $t0, $fp, -820
	sw $t0, -900($fp)
	li $t0, 3
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
	li $t0, 22865
	sw $t0, -920($fp)
	addi $t0, $fp, -820
	sw $t0, -924($fp)
	li $t0, 4
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
	li $t0, 14635
	sw $t0, -944($fp)
	addi $t0, $fp, -820
	sw $t0, -948($fp)
	li $t0, 5
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
	li $t0, 12070
	sw $t0, -968($fp)
	addi $t0, $fp, -820
	sw $t0, -972($fp)
	li $t0, 6
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
	li $t0, 50249
	sw $t0, -992($fp)
	addi $t0, $fp, -820
	sw $t0, -996($fp)
	li $t0, 7
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t0, -996($fp)
	lw $t1, -1004($fp)
	add $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t0, -992($fp)
	lw $t1, -1008($fp)
	sw $t0, 0($t1)
	lw $t0, -1008($fp)
	lw $t1, 0($t0)
	sw $t1, -1012($fp)
	addi $t0, $fp, -820
	sw $t0, -1016($fp)
	li $t0, 0
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
	addi $t0, $fp, -820
	sw $t0, -1036($fp)
	li $t0, 1
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
	addi $t0, $fp, -820
	sw $t0, -1056($fp)
	li $t0, 2
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
	addi $t0, $fp, -820
	sw $t0, -1076($fp)
	li $t0, 3
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
	addi $t0, $fp, -820
	sw $t0, -1096($fp)
	li $t0, 4
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
	addi $t0, $fp, -820
	sw $t0, -1116($fp)
	li $t0, 5
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
	addi $t0, $fp, -820
	sw $t0, -1136($fp)
	li $t0, 6
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
	addi $t0, $fp, -820
	sw $t0, -1156($fp)
	li $t0, 7
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
	li $t0, 0
	sw $t0, -1176($fp)
	lw $t0, -528($fp)
	sw $t0, -1180($fp)
	li $t0, 0
	sw $t0, -1184($fp)
	addi $t0, $fp, -56
	sw $t0, -1188($fp)
	lw $t0, -468($fp)
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
	lw $t1, -1204($fp)
	li $t2, 0
	bne $t1, $t2, label631
	j label630
label630:
	li $t0, 1
	sw $t0, -1184($fp)
label631:
	li $t0, 0
	sw $t0, -1208($fp)
	addi $t0, $fp, -28
	sw $t0, -1212($fp)
	li $t0, 1
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
	lw $t0, -528($fp)
	sw $t0, -1232($fp)
	lw $t1, -1228($fp)
	lw $t2, -1232($fp)
	bne $t1, $t2, label632
	j label633
label632:
	li $t0, 1
	sw $t0, -1208($fp)
label633:
	addi $sp, $sp, -4
	lw $t0, -1208($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1236($fp)
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -1240($fp)
	lw $t0, -1236($fp)
	lw $t1, -1240($fp)
	mul $t0, $t0, $t1
	sw $t0, -1244($fp)
	addi $t0, $fp, -80
	sw $t0, -1248($fp)
	lw $t0, -288($fp)
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
	li $t0, 0
	sw $t0, -1268($fp)
	addi $t0, $fp, -820
	sw $t0, -1272($fp)
	li $t0, 7
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
	li $t0, 4733
	sw $t0, -1292($fp)
	lw $t1, -1288($fp)
	lw $t2, -1292($fp)
	bne $t1, $t2, label634
	j label635
label634:
	li $t0, 1
	sw $t0, -1268($fp)
label635:
	addi $sp, $sp, -4
	lw $t0, -1244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1268($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1296($fp)
	addi $sp, $sp, 16
	lw $t0, -1184($fp)
	lw $t1, -1296($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1300($fp)
	lw $t1, -1180($fp)
	lw $t2, -1300($fp)
	blt $t1, $t2, label628
	j label629
label628:
	li $t0, 1
	sw $t0, -1176($fp)
label629:
	lw $ra, -4($fp)
	lw $v0, -1176($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label636:
	lw $t0, -516($fp)
	sw $t0, -1304($fp)
	lw $t1, -1304($fp)
	li $t2, 0
	bne $t1, $t2, label637
	j label638
label637:
	li $t0, 0
	sw $t0, -1308($fp)
	li $t0, 0
	sw $t0, -1312($fp)
	addi $t0, $fp, -56
	sw $t0, -1316($fp)
	li $t0, 3
	sw $t0, -1320($fp)
	li $t0, 4
	lw $t1, -1320($fp)
	mul $t0, $t0, $t1
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	lw $t1, -1316($fp)
	add $t0, $t0, $t1
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	lw $t1, 0($t0)
	sw $t1, -1332($fp)
	jal f10
	sw $v0, -1336($fp)
	addi $sp, $sp, 4
	lw $t1, -1332($fp)
	lw $t2, -1336($fp)
	bge $t1, $t2, label641
	j label642
label641:
	li $t0, 1
	sw $t0, -1312($fp)
label642:
	addi $t0, $fp, -56
	sw $t0, -1340($fp)
	li $t0, 4
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
	lw $t1, -1312($fp)
	lw $t2, -1356($fp)
	ble $t1, $t2, label639
	j label640
label639:
	li $t0, 1
	sw $t0, -1308($fp)
label640:
	j label636
label638:
	j label625
label627:
	li $t0, 0
	sw $t0, -1360($fp)
	lw $t0, -768($fp)
	sw $t0, -1364($fp)
	addi $t0, $fp, -80
	sw $t0, -1368($fp)
	li $t0, 3
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
	lw $t0, -1364($fp)
	lw $t1, -1384($fp)
	mul $t0, $t0, $t1
	sw $t0, -1388($fp)
	addi $t0, $fp, -88
	sw $t0, -1392($fp)
	lw $t0, -492($fp)
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
	li $t0, 23790
	sw $t0, -1412($fp)
	lw $t0, -1408($fp)
	lw $t1, -1412($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1416($fp)
	lw $t1, -1388($fp)
	lw $t2, -1416($fp)
	ble $t1, $t2, label646
	j label647
label646:
	li $t0, 1
	sw $t0, -1360($fp)
label647:
	addi $t0, $fp, -28
	sw $t0, -1420($fp)
	lw $t0, -96($fp)
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
	li $t0, 30899
	sw $t0, -1440($fp)
	lw $t0, -1436($fp)
	lw $t1, -1440($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1444($fp)
	lw $t1, -1360($fp)
	lw $t2, -1444($fp)
	bge $t1, $t2, label643
	j label644
label643:
	li $t0, 8285
	sw $t0, -1476($fp)
	addi $t0, $fp, -1472
	sw $t0, -1480($fp)
	li $t0, 0
	sw $t0, -1484($fp)
	lw $t0, -1484($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1488($fp)
	lw $t0, -1480($fp)
	lw $t1, -1488($fp)
	add $t0, $t0, $t1
	sw $t0, -1492($fp)
	lw $t0, -1476($fp)
	lw $t1, -1492($fp)
	sw $t0, 0($t1)
	lw $t0, -1492($fp)
	lw $t1, 0($t0)
	sw $t1, -1496($fp)
	li $t0, 14306
	sw $t0, -1500($fp)
	addi $t0, $fp, -1472
	sw $t0, -1504($fp)
	li $t0, 1
	sw $t0, -1508($fp)
	lw $t0, -1508($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1512($fp)
	lw $t0, -1504($fp)
	lw $t1, -1512($fp)
	add $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t0, -1500($fp)
	lw $t1, -1516($fp)
	sw $t0, 0($t1)
	lw $t0, -1516($fp)
	lw $t1, 0($t0)
	sw $t1, -1520($fp)
	li $t0, 14937
	sw $t0, -1524($fp)
	addi $t0, $fp, -1472
	sw $t0, -1528($fp)
	li $t0, 2
	sw $t0, -1532($fp)
	lw $t0, -1532($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1536($fp)
	lw $t0, -1528($fp)
	lw $t1, -1536($fp)
	add $t0, $t0, $t1
	sw $t0, -1540($fp)
	lw $t0, -1524($fp)
	lw $t1, -1540($fp)
	sw $t0, 0($t1)
	lw $t0, -1540($fp)
	lw $t1, 0($t0)
	sw $t1, -1544($fp)
	li $t0, 47921
	sw $t0, -1548($fp)
	addi $t0, $fp, -1472
	sw $t0, -1552($fp)
	li $t0, 3
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1560($fp)
	lw $t0, -1552($fp)
	lw $t1, -1560($fp)
	add $t0, $t0, $t1
	sw $t0, -1564($fp)
	lw $t0, -1548($fp)
	lw $t1, -1564($fp)
	sw $t0, 0($t1)
	lw $t0, -1564($fp)
	lw $t1, 0($t0)
	sw $t1, -1568($fp)
	li $t0, 37570
	sw $t0, -1572($fp)
	addi $t0, $fp, -1472
	sw $t0, -1576($fp)
	li $t0, 4
	sw $t0, -1580($fp)
	lw $t0, -1580($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1584($fp)
	lw $t0, -1576($fp)
	lw $t1, -1584($fp)
	add $t0, $t0, $t1
	sw $t0, -1588($fp)
	lw $t0, -1572($fp)
	lw $t1, -1588($fp)
	sw $t0, 0($t1)
	lw $t0, -1588($fp)
	lw $t1, 0($t0)
	sw $t1, -1592($fp)
	li $t0, 52843
	sw $t0, -1596($fp)
	addi $t0, $fp, -1472
	sw $t0, -1600($fp)
	li $t0, 5
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t0, -1600($fp)
	lw $t1, -1608($fp)
	add $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $t0, -1596($fp)
	lw $t1, -1612($fp)
	sw $t0, 0($t1)
	lw $t0, -1612($fp)
	lw $t1, 0($t0)
	sw $t1, -1616($fp)
	li $t0, 53016
	sw $t0, -1620($fp)
	addi $t0, $fp, -1472
	sw $t0, -1624($fp)
	li $t0, 6
	sw $t0, -1628($fp)
	lw $t0, -1628($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1632($fp)
	lw $t0, -1624($fp)
	lw $t1, -1632($fp)
	add $t0, $t0, $t1
	sw $t0, -1636($fp)
	lw $t0, -1620($fp)
	lw $t1, -1636($fp)
	sw $t0, 0($t1)
	lw $t0, -1636($fp)
	lw $t1, 0($t0)
	sw $t1, -1640($fp)
	li $t0, 9487
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	sw $t0, -1652($fp)
	jal f10
	sw $v0, -1656($fp)
	addi $sp, $sp, 4
	lw $t0, -564($fp)
	sw $t0, -1660($fp)
	lw $t0, -1656($fp)
	lw $t1, -1660($fp)
	add $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t1, -1664($fp)
	li $t2, 0
	bne $t1, $t2, label648
	j label649
label648:
	li $t0, 0
	sw $t0, -1668($fp)
	li $t0, 29677
	sw $t0, -1672($fp)
	li $t0, 20942
	sw $t0, -1676($fp)
	lw $t1, -1672($fp)
	lw $t2, -1676($fp)
	bgt $t1, $t2, label651
	j label652
label651:
	li $t0, 1
	sw $t0, -1668($fp)
label652:
	addi $sp, $sp, -4
	lw $t0, -1668($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1680($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -1680($fp)
	sub $t0, $t0, $t1
	sw $t0, -1684($fp)
	li $t0, 0
	sw $t0, -1688($fp)
	li $t0, 20592
	sw $t0, -1692($fp)
	lw $t1, -1692($fp)
	li $t2, 0
	bne $t1, $t2, label653
	j label655
label655:
	li $t0, 31540
	sw $t0, -1696($fp)
	lw $t1, -1696($fp)
	li $t2, 0
	bne $t1, $t2, label653
	j label654
label653:
	li $t0, 1
	sw $t0, -1688($fp)
label654:
	li $t0, 0
	sw $t0, -1700($fp)
	lw $t0, -768($fp)
	sw $t0, -1704($fp)
	lw $t1, -1704($fp)
	li $t2, 0
	bne $t1, $t2, label657
	j label656
label656:
	li $t0, 1
	sw $t0, -1700($fp)
label657:
	lw $t0, -552($fp)
	sw $t0, -1708($fp)
	lw $t0, -1700($fp)
	lw $t1, -1708($fp)
	mul $t0, $t0, $t1
	sw $t0, -1712($fp)
	li $t0, 61503
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	sw $t0, -1648($fp)
	lw $t0, -1648($fp)
	sw $t0, -1720($fp)
	addi $sp, $sp, -4
	lw $t0, -1688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1712($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1720($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1724($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -1684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1724($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1728($fp)
	addi $sp, $sp, 12
	li $t0, 54405
	sw $t0, -1732($fp)
	addi $t0, $fp, -1472
	sw $t0, -1736($fp)
	li $t0, 3
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
	mul $t0, $t0, $t1
	sw $t0, -1756($fp)
	lw $t0, -1728($fp)
	lw $t1, -1756($fp)
	sub $t0, $t0, $t1
	sw $t0, -1760($fp)
	lw $ra, -4($fp)
	lw $v0, -1760($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label650
label649:
label658:
	li $t0, 39119
	sw $t0, -1764($fp)
	lw $t1, -1764($fp)
	li $t2, 0
	bne $t1, $t2, label659
	j label661
label661:
	lw $t0, -108($fp)
	sw $t0, -1768($fp)
	lw $t1, -1768($fp)
	li $t2, 0
	bne $t1, $t2, label659
	j label660
label659:
label662:
	li $t0, 0
	sw $t0, -1772($fp)
	li $t0, 28163
	sw $t0, -1776($fp)
	li $t0, 0
	lw $t1, -1776($fp)
	sub $t0, $t0, $t1
	sw $t0, -1780($fp)
	li $t0, 0
	sw $t0, -1784($fp)
	li $t0, 0
	sw $t0, -1788($fp)
	lw $t0, -108($fp)
	sw $t0, -1792($fp)
	lw $t1, -1792($fp)
	li $t2, 0
	bne $t1, $t2, label670
	j label669
label669:
	li $t0, 1
	sw $t0, -1788($fp)
label670:
	lw $t0, -528($fp)
	sw $t0, -1796($fp)
	lw $t1, -1788($fp)
	lw $t2, -1796($fp)
	bge $t1, $t2, label667
	j label668
label667:
	li $t0, 1
	sw $t0, -1784($fp)
label668:
	li $t0, 0
	sw $t0, -1800($fp)
	lw $t0, -528($fp)
	sw $t0, -1804($fp)
	li $t0, 27342
	sw $t0, -1808($fp)
	lw $t0, -1804($fp)
	lw $t1, -1808($fp)
	mul $t0, $t0, $t1
	sw $t0, -1812($fp)
	lw $t1, -1812($fp)
	li $t2, 0
	bne $t1, $t2, label673
	j label672
label673:
	lw $t0, -552($fp)
	sw $t0, -1816($fp)
	lw $t1, -1816($fp)
	li $t2, 0
	bne $t1, $t2, label671
	j label672
label671:
	li $t0, 1
	sw $t0, -1800($fp)
label672:
	addi $sp, $sp, -4
	lw $t0, -1780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1800($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1820($fp)
	addi $sp, $sp, 16
	lw $t1, -1820($fp)
	li $t2, 0
	bne $t1, $t2, label665
	j label666
label665:
	li $t0, 1
	sw $t0, -1772($fp)
label666:
	li $t0, 0
	lw $t1, -1772($fp)
	sub $t0, $t0, $t1
	sw $t0, -1824($fp)
	lw $t1, -1824($fp)
	li $t2, 0
	bne $t1, $t2, label663
	j label664
label663:
	li $t0, 0
	sw $t0, -1828($fp)
	li $t0, 0
	sw $t0, -1832($fp)
	addi $t0, $fp, -56
	sw $t0, -1836($fp)
	lw $t0, -468($fp)
	sw $t0, -1840($fp)
	li $t0, 4
	lw $t1, -1840($fp)
	mul $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	lw $t1, -1836($fp)
	add $t0, $t0, $t1
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	lw $t1, 0($t0)
	sw $t1, -1852($fp)
	lw $t1, -1852($fp)
	li $t2, 0
	bne $t1, $t2, label677
	j label676
label676:
	li $t0, 1
	sw $t0, -1832($fp)
label677:
	li $t0, 0
	sw $t0, -1856($fp)
	jal f10
	sw $v0, -1860($fp)
	addi $sp, $sp, 4
	li $t0, 43852
	sw $t0, -1864($fp)
	lw $t1, -1860($fp)
	lw $t2, -1864($fp)
	bgt $t1, $t2, label678
	j label679
label678:
	li $t0, 1
	sw $t0, -1856($fp)
label679:
	addi $sp, $sp, -4
	lw $t0, -1832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1856($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1868($fp)
	addi $sp, $sp, 12
	lw $t0, -108($fp)
	sw $t0, -1872($fp)
	li $t0, 31701
	sw $t0, -1876($fp)
	lw $t0, -1872($fp)
	lw $t1, -1876($fp)
	mul $t0, $t0, $t1
	sw $t0, -1880($fp)
	lw $t1, -1868($fp)
	lw $t2, -1880($fp)
	bne $t1, $t2, label674
	j label675
label674:
	li $t0, 1
	sw $t0, -1828($fp)
label675:
	lw $t0, -1828($fp)
	sw $t0, -120($fp)
	lw $t0, -120($fp)
	sw $t0, -1884($fp)
	lw $ra, -4($fp)
	lw $v0, -1884($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label662
label664:
	j label658
label660:
label650:
	j label645
label644:
	addi $t0, $fp, -56
	sw $t0, -1888($fp)
	li $t0, 0
	sw $t0, -1892($fp)
	lw $t0, -768($fp)
	sw $t0, -1896($fp)
	lw $t1, -1896($fp)
	li $t2, 0
	bne $t1, $t2, label683
	j label682
label683:
	lw $t0, -108($fp)
	sw $t0, -1900($fp)
	lw $t1, -1900($fp)
	li $t2, 0
	bne $t1, $t2, label680
	j label682
label682:
	lw $t0, -504($fp)
	sw $t0, -1904($fp)
	lw $t1, -1904($fp)
	li $t2, 0
	bne $t1, $t2, label680
	j label681
label680:
	li $t0, 1
	sw $t0, -1892($fp)
label681:
	li $t0, 4
	lw $t1, -1892($fp)
	mul $t0, $t0, $t1
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	lw $t1, -1888($fp)
	add $t0, $t0, $t1
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	lw $t1, 0($t0)
	sw $t1, -1916($fp)
	lw $t0, -504($fp)
	sw $t0, -1920($fp)
	lw $t0, -1916($fp)
	lw $t1, -1920($fp)
	mul $t0, $t0, $t1
	sw $t0, -1924($fp)
label645:
label684:
	li $t0, 0
	sw $t0, -1928($fp)
	lw $t0, -132($fp)
	sw $t0, -1932($fp)
	lw $t0, -780($fp)
	sw $t0, -1936($fp)
	lw $t0, -1932($fp)
	lw $t1, -1936($fp)
	add $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t0, -768($fp)
	sw $t0, -1944($fp)
	lw $t0, -1940($fp)
	lw $t1, -1944($fp)
	add $t0, $t0, $t1
	sw $t0, -1948($fp)
	lw $t0, -468($fp)
	sw $t0, -1952($fp)
	lw $t1, -1948($fp)
	lw $t2, -1952($fp)
	bgt $t1, $t2, label687
	j label688
label687:
	li $t0, 1
	sw $t0, -1928($fp)
label688:
	lw $t0, -1928($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -1956($fp)
	lw $t1, -1956($fp)
	li $t2, 0
	bne $t1, $t2, label685
	j label686
label685:
	li $t0, 0
	sw $t0, -1960($fp)
	jal f10
	sw $v0, -1964($fp)
	addi $sp, $sp, 4
	lw $t1, -1964($fp)
	li $t2, 0
	bne $t1, $t2, label690
	j label689
label689:
	li $t0, 1
	sw $t0, -1960($fp)
label690:
	j label684
label686:
	lw $t0, -96($fp)
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -1980($fp)
	lw $t0, -1980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
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
	addi $t0, $fp, -28
	sw $t0, -2084($fp)
	li $t0, 5
	sw $t0, -2088($fp)
	li $t0, 4
	lw $t1, -2088($fp)
	mul $t0, $t0, $t1
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	lw $t1, -2084($fp)
	add $t0, $t0, $t1
	sw $t0, -2096($fp)
	lw $t0, -2096($fp)
	lw $t1, 0($t0)
	sw $t1, -2100($fp)
	lw $t0, -2100($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -2104($fp)
	lw $t0, -2104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2108($fp)
	li $t0, 0
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
	addi $t0, $fp, -56
	sw $t0, -2128($fp)
	li $t0, 1
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
	addi $t0, $fp, -56
	sw $t0, -2148($fp)
	li $t0, 2
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
	addi $t0, $fp, -56
	sw $t0, -2168($fp)
	li $t0, 3
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
	lw $t0, -2184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2188($fp)
	li $t0, 4
	sw $t0, -2192($fp)
	li $t0, 4
	lw $t1, -2192($fp)
	mul $t0, $t0, $t1
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	lw $t1, -2188($fp)
	add $t0, $t0, $t1
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	lw $t1, 0($t0)
	sw $t1, -2204($fp)
	lw $t0, -2204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2208($fp)
	li $t0, 5
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
	lw $t0, -2224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -2228($fp)
	li $t0, 6
	sw $t0, -2232($fp)
	li $t0, 4
	lw $t1, -2232($fp)
	mul $t0, $t0, $t1
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	lw $t1, -2228($fp)
	add $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	lw $t1, 0($t0)
	sw $t1, -2244($fp)
	lw $t0, -2244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -2248($fp)
	lw $t0, -2248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -2256($fp)
	lw $t0, -2256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -2260($fp)
	lw $t0, -2260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -2264($fp)
	lw $t0, -2264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -2268($fp)
	lw $t0, -2268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -2272($fp)
	lw $t0, -2272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -2284($fp)
	li $t0, 0
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
	lw $t0, -2300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -2304($fp)
	li $t0, 1
	sw $t0, -2308($fp)
	li $t0, 4
	lw $t1, -2308($fp)
	mul $t0, $t0, $t1
	sw $t0, -2312($fp)
	lw $t0, -2312($fp)
	lw $t1, -2304($fp)
	add $t0, $t0, $t1
	sw $t0, -2316($fp)
	lw $t0, -2316($fp)
	lw $t1, 0($t0)
	sw $t1, -2320($fp)
	lw $t0, -2320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2324($fp)
	li $t0, 0
	sw $t0, -2328($fp)
	li $t0, 4
	lw $t1, -2328($fp)
	mul $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	lw $t1, -2324($fp)
	add $t0, $t0, $t1
	sw $t0, -2336($fp)
	lw $t0, -2336($fp)
	lw $t1, 0($t0)
	sw $t1, -2340($fp)
	lw $t0, -2340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2344($fp)
	li $t0, 1
	sw $t0, -2348($fp)
	li $t0, 4
	lw $t1, -2348($fp)
	mul $t0, $t0, $t1
	sw $t0, -2352($fp)
	lw $t0, -2352($fp)
	lw $t1, -2344($fp)
	add $t0, $t0, $t1
	sw $t0, -2356($fp)
	lw $t0, -2356($fp)
	lw $t1, 0($t0)
	sw $t1, -2360($fp)
	lw $t0, -2360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2364($fp)
	li $t0, 2
	sw $t0, -2368($fp)
	li $t0, 4
	lw $t1, -2368($fp)
	mul $t0, $t0, $t1
	sw $t0, -2372($fp)
	lw $t0, -2372($fp)
	lw $t1, -2364($fp)
	add $t0, $t0, $t1
	sw $t0, -2376($fp)
	lw $t0, -2376($fp)
	lw $t1, 0($t0)
	sw $t1, -2380($fp)
	lw $t0, -2380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2384($fp)
	li $t0, 3
	sw $t0, -2388($fp)
	li $t0, 4
	lw $t1, -2388($fp)
	mul $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t0, -2392($fp)
	lw $t1, -2384($fp)
	add $t0, $t0, $t1
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	lw $t1, 0($t0)
	sw $t1, -2400($fp)
	lw $t0, -2400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -2404($fp)
	li $t0, 0
	sw $t0, -2408($fp)
	li $t0, 4
	lw $t1, -2408($fp)
	mul $t0, $t0, $t1
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	lw $t1, -2404($fp)
	add $t0, $t0, $t1
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	lw $t1, 0($t0)
	sw $t1, -2420($fp)
	lw $t0, -2420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -2424($fp)
	li $t0, 1
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
	lw $t0, -2440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -768($fp)
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -780($fp)
	sw $t0, -2448($fp)
	lw $t0, -2448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -2452($fp)
	li $t0, 0
	sw $t0, -2456($fp)
	lw $t0, -492($fp)
	sw $t0, -2460($fp)
	lw $t1, -2460($fp)
	li $t2, 0
	bne $t1, $t2, label693
	j label692
label693:
	li $t0, 6052
	sw $t0, -2464($fp)
	lw $t1, -2464($fp)
	li $t2, 0
	bne $t1, $t2, label691
	j label692
label691:
	li $t0, 1
	sw $t0, -2456($fp)
label692:
	li $t0, 4
	lw $t1, -2456($fp)
	mul $t0, $t0, $t1
	sw $t0, -2468($fp)
	lw $t0, -2468($fp)
	lw $t1, -2452($fp)
	add $t0, $t0, $t1
	sw $t0, -2472($fp)
	lw $t0, -2472($fp)
	lw $t1, 0($t0)
	sw $t1, -2476($fp)
	li $t0, 0
	sw $t0, -2480($fp)
	li $t0, 52130
	sw $t0, -2484($fp)
	li $t0, 0
	lw $t1, -2484($fp)
	sub $t0, $t0, $t1
	sw $t0, -2488($fp)
	lw $t1, -2488($fp)
	li $t2, 0
	bne $t1, $t2, label694
	j label696
label696:
	lw $t0, -96($fp)
	sw $t0, -2492($fp)
	lw $t1, -2492($fp)
	li $t2, 0
	bne $t1, $t2, label694
	j label695
label694:
	li $t0, 1
	sw $t0, -2480($fp)
label695:
	addi $sp, $sp, -4
	lw $t0, -2480($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2496($fp)
	addi $sp, $sp, 8
	lw $t0, -2476($fp)
	lw $t1, -2496($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2500($fp)
	lw $ra, -4($fp)
	lw $v0, -2500($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 21055
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	sw $t0, -2588($fp)
	li $t0, 10681
	sw $t0, -2592($fp)
	addi $t0, $fp, -2508
	sw $t0, -2596($fp)
	li $t0, 0
	sw $t0, -2600($fp)
	lw $t0, -2600($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2604($fp)
	lw $t0, -2596($fp)
	lw $t1, -2604($fp)
	add $t0, $t0, $t1
	sw $t0, -2608($fp)
	lw $t0, -2592($fp)
	lw $t1, -2608($fp)
	sw $t0, 0($t1)
	lw $t0, -2608($fp)
	lw $t1, 0($t0)
	sw $t1, -2612($fp)
	li $t0, 52649
	sw $t0, -2616($fp)
	addi $t0, $fp, -2508
	sw $t0, -2620($fp)
	li $t0, 1
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2628($fp)
	lw $t0, -2620($fp)
	lw $t1, -2628($fp)
	add $t0, $t0, $t1
	sw $t0, -2632($fp)
	lw $t0, -2616($fp)
	lw $t1, -2632($fp)
	sw $t0, 0($t1)
	lw $t0, -2632($fp)
	lw $t1, 0($t0)
	sw $t1, -2636($fp)
	li $t0, 50639
	sw $t0, -2640($fp)
	addi $t0, $fp, -2536
	sw $t0, -2644($fp)
	li $t0, 0
	sw $t0, -2648($fp)
	lw $t0, -2648($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2652($fp)
	lw $t0, -2644($fp)
	lw $t1, -2652($fp)
	add $t0, $t0, $t1
	sw $t0, -2656($fp)
	lw $t0, -2640($fp)
	lw $t1, -2656($fp)
	sw $t0, 0($t1)
	lw $t0, -2656($fp)
	lw $t1, 0($t0)
	sw $t1, -2660($fp)
	li $t0, 31301
	sw $t0, -2664($fp)
	addi $t0, $fp, -2536
	sw $t0, -2668($fp)
	li $t0, 1
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2676($fp)
	lw $t0, -2668($fp)
	lw $t1, -2676($fp)
	add $t0, $t0, $t1
	sw $t0, -2680($fp)
	lw $t0, -2664($fp)
	lw $t1, -2680($fp)
	sw $t0, 0($t1)
	lw $t0, -2680($fp)
	lw $t1, 0($t0)
	sw $t1, -2684($fp)
	li $t0, 10904
	sw $t0, -2688($fp)
	addi $t0, $fp, -2536
	sw $t0, -2692($fp)
	li $t0, 2
	sw $t0, -2696($fp)
	lw $t0, -2696($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2700($fp)
	lw $t0, -2692($fp)
	lw $t1, -2700($fp)
	add $t0, $t0, $t1
	sw $t0, -2704($fp)
	lw $t0, -2688($fp)
	lw $t1, -2704($fp)
	sw $t0, 0($t1)
	lw $t0, -2704($fp)
	lw $t1, 0($t0)
	sw $t1, -2708($fp)
	li $t0, 840
	sw $t0, -2712($fp)
	addi $t0, $fp, -2536
	sw $t0, -2716($fp)
	li $t0, 3
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2724($fp)
	lw $t0, -2716($fp)
	lw $t1, -2724($fp)
	add $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t0, -2712($fp)
	lw $t1, -2728($fp)
	sw $t0, 0($t1)
	lw $t0, -2728($fp)
	lw $t1, 0($t0)
	sw $t1, -2732($fp)
	li $t0, 62199
	sw $t0, -2736($fp)
	addi $t0, $fp, -2536
	sw $t0, -2740($fp)
	li $t0, 4
	sw $t0, -2744($fp)
	lw $t0, -2744($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2748($fp)
	lw $t0, -2740($fp)
	lw $t1, -2748($fp)
	add $t0, $t0, $t1
	sw $t0, -2752($fp)
	lw $t0, -2736($fp)
	lw $t1, -2752($fp)
	sw $t0, 0($t1)
	lw $t0, -2752($fp)
	lw $t1, 0($t0)
	sw $t1, -2756($fp)
	li $t0, 19189
	sw $t0, -2760($fp)
	addi $t0, $fp, -2536
	sw $t0, -2764($fp)
	li $t0, 5
	sw $t0, -2768($fp)
	lw $t0, -2768($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2772($fp)
	lw $t0, -2764($fp)
	lw $t1, -2772($fp)
	add $t0, $t0, $t1
	sw $t0, -2776($fp)
	lw $t0, -2760($fp)
	lw $t1, -2776($fp)
	sw $t0, 0($t1)
	lw $t0, -2776($fp)
	lw $t1, 0($t0)
	sw $t1, -2780($fp)
	li $t0, 15146
	sw $t0, -2784($fp)
	addi $t0, $fp, -2536
	sw $t0, -2788($fp)
	li $t0, 6
	sw $t0, -2792($fp)
	lw $t0, -2792($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2796($fp)
	lw $t0, -2788($fp)
	lw $t1, -2796($fp)
	add $t0, $t0, $t1
	sw $t0, -2800($fp)
	lw $t0, -2784($fp)
	lw $t1, -2800($fp)
	sw $t0, 0($t1)
	lw $t0, -2800($fp)
	lw $t1, 0($t0)
	sw $t1, -2804($fp)
	li $t0, 11600
	sw $t0, -2808($fp)
	addi $t0, $fp, -2548
	sw $t0, -2812($fp)
	li $t0, 0
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2820($fp)
	lw $t0, -2812($fp)
	lw $t1, -2820($fp)
	add $t0, $t0, $t1
	sw $t0, -2824($fp)
	lw $t0, -2808($fp)
	lw $t1, -2824($fp)
	sw $t0, 0($t1)
	lw $t0, -2824($fp)
	lw $t1, 0($t0)
	sw $t1, -2828($fp)
	li $t0, 1575
	sw $t0, -2832($fp)
	addi $t0, $fp, -2548
	sw $t0, -2836($fp)
	li $t0, 1
	sw $t0, -2840($fp)
	lw $t0, -2840($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2844($fp)
	lw $t0, -2836($fp)
	lw $t1, -2844($fp)
	add $t0, $t0, $t1
	sw $t0, -2848($fp)
	lw $t0, -2832($fp)
	lw $t1, -2848($fp)
	sw $t0, 0($t1)
	lw $t0, -2848($fp)
	lw $t1, 0($t0)
	sw $t1, -2852($fp)
	li $t0, 52716
	sw $t0, -2856($fp)
	addi $t0, $fp, -2548
	sw $t0, -2860($fp)
	li $t0, 2
	sw $t0, -2864($fp)
	lw $t0, -2864($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2868($fp)
	lw $t0, -2860($fp)
	lw $t1, -2868($fp)
	add $t0, $t0, $t1
	sw $t0, -2872($fp)
	lw $t0, -2856($fp)
	lw $t1, -2872($fp)
	sw $t0, 0($t1)
	lw $t0, -2872($fp)
	lw $t1, 0($t0)
	sw $t1, -2876($fp)
	li $t0, 64443
	sw $t0, -2880($fp)
	addi $t0, $fp, -2576
	sw $t0, -2884($fp)
	li $t0, 0
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t0, -2884($fp)
	lw $t1, -2892($fp)
	add $t0, $t0, $t1
	sw $t0, -2896($fp)
	lw $t0, -2880($fp)
	lw $t1, -2896($fp)
	sw $t0, 0($t1)
	lw $t0, -2896($fp)
	lw $t1, 0($t0)
	sw $t1, -2900($fp)
	li $t0, 54591
	sw $t0, -2904($fp)
	addi $t0, $fp, -2576
	sw $t0, -2908($fp)
	li $t0, 1
	sw $t0, -2912($fp)
	lw $t0, -2912($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2916($fp)
	lw $t0, -2908($fp)
	lw $t1, -2916($fp)
	add $t0, $t0, $t1
	sw $t0, -2920($fp)
	lw $t0, -2904($fp)
	lw $t1, -2920($fp)
	sw $t0, 0($t1)
	lw $t0, -2920($fp)
	lw $t1, 0($t0)
	sw $t1, -2924($fp)
	li $t0, 62203
	sw $t0, -2928($fp)
	addi $t0, $fp, -2576
	sw $t0, -2932($fp)
	li $t0, 2
	sw $t0, -2936($fp)
	lw $t0, -2936($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2940($fp)
	lw $t0, -2932($fp)
	lw $t1, -2940($fp)
	add $t0, $t0, $t1
	sw $t0, -2944($fp)
	lw $t0, -2928($fp)
	lw $t1, -2944($fp)
	sw $t0, 0($t1)
	lw $t0, -2944($fp)
	lw $t1, 0($t0)
	sw $t1, -2948($fp)
	li $t0, 60410
	sw $t0, -2952($fp)
	addi $t0, $fp, -2576
	sw $t0, -2956($fp)
	li $t0, 3
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
	li $t0, 9647
	sw $t0, -2976($fp)
	addi $t0, $fp, -2576
	sw $t0, -2980($fp)
	li $t0, 4
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
	li $t0, 28207
	sw $t0, -3000($fp)
	addi $t0, $fp, -2576
	sw $t0, -3004($fp)
	li $t0, 5
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
	li $t0, 24551
	sw $t0, -3024($fp)
	addi $t0, $fp, -2576
	sw $t0, -3028($fp)
	li $t0, 6
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
	li $t0, 30589
	sw $t0, -3048($fp)
	lw $t0, -3048($fp)
	sw $t0, -3052($fp)
	lw $t0, -3052($fp)
	sw $t0, -3056($fp)
	li $t0, 17076
	sw $t0, -3060($fp)
	lw $t0, -3060($fp)
	sw $t0, -3064($fp)
	lw $t0, -3064($fp)
	sw $t0, -3068($fp)
	li $t0, 3328
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	sw $t0, -3080($fp)
	lw $t0, -504($fp)
	sw $t0, -3084($fp)
	li $t0, 63601
	sw $t0, -3088($fp)
	lw $t0, -3084($fp)
	lw $t1, -3088($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3092($fp)
	lw $t0, -3092($fp)
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	sw $t0, -3096($fp)
	lw $t0, -3096($fp)
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	sw $t0, -3100($fp)
	lw $t1, -3100($fp)
	li $t2, 0
	bne $t1, $t2, label697
	j label698
label697:
label700:
	li $t0, 0
	sw $t0, -3104($fp)
	li $t0, 56195
	sw $t0, -3108($fp)
	lw $t1, -3108($fp)
	li $t2, 0
	bne $t1, $t2, label704
	j label703
label703:
	li $t0, 1
	sw $t0, -3104($fp)
label704:
	li $t0, 0
	sw $t0, -3112($fp)
	addi $t0, $fp, -2548
	sw $t0, -3116($fp)
	lw $t0, -564($fp)
	sw $t0, -3120($fp)
	li $t0, 4
	lw $t1, -3120($fp)
	mul $t0, $t0, $t1
	sw $t0, -3124($fp)
	lw $t0, -3124($fp)
	lw $t1, -3116($fp)
	add $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t0, -3128($fp)
	lw $t1, 0($t0)
	sw $t1, -3132($fp)
	lw $t1, -3132($fp)
	li $t2, 0
	bne $t1, $t2, label706
	j label705
label705:
	li $t0, 1
	sw $t0, -3112($fp)
label706:
	lw $t0, -3104($fp)
	lw $t1, -3112($fp)
	mul $t0, $t0, $t1
	sw $t0, -3136($fp)
	lw $t1, -3136($fp)
	li $t2, 0
	bne $t1, $t2, label701
	j label702
label701:
	li $t0, 30670
	sw $t0, -3140($fp)
	lw $t0, -3140($fp)
	sw $t0, -3144($fp)
	lw $t0, -3144($fp)
	sw $t0, -3148($fp)
	li $t0, 0
	sw $t0, -3152($fp)
	li $t0, 0
	sw $t0, -3156($fp)
	li $t0, 26228
	sw $t0, -3160($fp)
	lw $t1, -3160($fp)
	li $t2, 0
	bne $t1, $t2, label709
	j label710
label709:
	li $t0, 1
	sw $t0, -3156($fp)
label710:
	li $t0, 0
	lw $t1, -3156($fp)
	sub $t0, $t0, $t1
	sw $t0, -3164($fp)
	li $t0, 0
	sw $t0, -3168($fp)
	li $t0, 34512
	sw $t0, -3172($fp)
	lw $t0, -504($fp)
	sw $t0, -3176($fp)
	lw $t0, -3172($fp)
	lw $t1, -3176($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3180($fp)
	lw $t0, -3076($fp)
	sw $t0, -3184($fp)
	lw $t0, -3180($fp)
	lw $t1, -3184($fp)
	sub $t0, $t0, $t1
	sw $t0, -3188($fp)
	lw $t0, -3144($fp)
	sw $t0, -3192($fp)
	li $t0, 0
	lw $t1, -3192($fp)
	sub $t0, $t0, $t1
	sw $t0, -3196($fp)
	lw $t1, -3188($fp)
	lw $t2, -3196($fp)
	bge $t1, $t2, label711
	j label712
label711:
	li $t0, 1
	sw $t0, -3168($fp)
label712:
	lw $t1, -3164($fp)
	lw $t2, -3168($fp)
	bne $t1, $t2, label707
	j label708
label707:
	li $t0, 1
	sw $t0, -3152($fp)
label708:
	li $t0, 0
	sw $t0, -3200($fp)
	li $t0, 62371
	sw $t0, -3204($fp)
	lw $t1, -3204($fp)
	li $t2, 0
	bne $t1, $t2, label714
	j label713
label713:
	li $t0, 1
	sw $t0, -3200($fp)
label714:
	j label700
label702:
label698:
label715:
	li $t0, 32281
	sw $t0, -3208($fp)
	lw $t0, -3208($fp)
	sw $t0, -3076($fp)
	lw $t0, -3076($fp)
	sw $t0, -3212($fp)
	lw $t1, -3212($fp)
	li $t2, 0
	bne $t1, $t2, label716
	j label717
label716:
	li $t0, 21106
	sw $t0, -3216($fp)
	j label715
label717:
	li $t0, 17891
	sw $t0, -3220($fp)
	lw $t0, -3220($fp)
	sw $t0, -3224($fp)
	lw $t0, -3224($fp)
	sw $t0, -3228($fp)
	li $t0, 42962
	sw $t0, -3232($fp)
	lw $t0, -3232($fp)
	sw $t0, -3236($fp)
	lw $t0, -3236($fp)
	sw $t0, -3240($fp)
	li $t0, 8219
	sw $t0, -3244($fp)
	addi $t0, $fp, -88
	sw $t0, -3248($fp)
	lw $t0, -504($fp)
	sw $t0, -3252($fp)
	li $t0, 4
	lw $t1, -3252($fp)
	mul $t0, $t0, $t1
	sw $t0, -3256($fp)
	lw $t0, -3256($fp)
	lw $t1, -3248($fp)
	add $t0, $t0, $t1
	sw $t0, -3260($fp)
	lw $t0, -3260($fp)
	lw $t1, 0($t0)
	sw $t1, -3264($fp)
	li $t0, 0
	sw $t0, -3268($fp)
	lw $t0, -504($fp)
	sw $t0, -3272($fp)
	lw $t1, -3272($fp)
	li $t2, 0
	bne $t1, $t2, label722
	j label721
label721:
	li $t0, 1
	sw $t0, -3268($fp)
label722:
	lw $t0, -3264($fp)
	lw $t1, -3268($fp)
	sub $t0, $t0, $t1
	sw $t0, -3276($fp)
	lw $t1, -3244($fp)
	lw $t2, -3276($fp)
	bge $t1, $t2, label718
	j label719
label718:
	li $t0, 2994
	sw $t0, -3280($fp)
	lw $t0, -3280($fp)
	sw $t0, -3284($fp)
	lw $t0, -3284($fp)
	sw $t0, -3288($fp)
	li $t0, 8727
	sw $t0, -3292($fp)
	lw $t0, -3292($fp)
	sw $t0, -3296($fp)
	lw $t0, -3296($fp)
	sw $t0, -3300($fp)
	li $t0, 19123
	sw $t0, -3304($fp)
	lw $t0, -3304($fp)
	sw $t0, -3308($fp)
	lw $t0, -3308($fp)
	sw $t0, -3312($fp)
	addi $t0, $fp, -56
	sw $t0, -3316($fp)
	lw $t0, -504($fp)
	sw $t0, -3320($fp)
	li $t0, 4
	lw $t1, -3320($fp)
	mul $t0, $t0, $t1
	sw $t0, -3324($fp)
	lw $t0, -3324($fp)
	lw $t1, -3316($fp)
	add $t0, $t0, $t1
	sw $t0, -3328($fp)
	lw $t0, -3328($fp)
	lw $t1, 0($t0)
	sw $t1, -3332($fp)
	li $t0, 0
	sw $t0, -3336($fp)
	li $t0, 0
	sw $t0, -3340($fp)
	lw $t0, -3076($fp)
	sw $t0, -3344($fp)
	lw $t1, -3344($fp)
	li $t2, 0
	bne $t1, $t2, label728
	j label727
label727:
	li $t0, 1
	sw $t0, -3340($fp)
label728:
	li $t0, 3834
	sw $t0, -3348($fp)
	lw $t0, -3340($fp)
	lw $t1, -3348($fp)
	add $t0, $t0, $t1
	sw $t0, -3352($fp)
	li $t0, 5390
	sw $t0, -3356($fp)
	li $t0, 38313
	sw $t0, -3360($fp)
	lw $t0, -3356($fp)
	lw $t1, -3360($fp)
	add $t0, $t0, $t1
	sw $t0, -3364($fp)
	lw $t1, -3352($fp)
	lw $t2, -3364($fp)
	bgt $t1, $t2, label726
	j label725
label726:
	li $t0, 0
	sw $t0, -3368($fp)
	lw $t0, -480($fp)
	sw $t0, -3372($fp)
	lw $t1, -3372($fp)
	li $t2, 0
	bne $t1, $t2, label730
	j label729
label729:
	li $t0, 1
	sw $t0, -3368($fp)
label730:
	lw $t0, -3236($fp)
	sw $t0, -3376($fp)
	lw $t0, -3368($fp)
	lw $t1, -3376($fp)
	mul $t0, $t0, $t1
	sw $t0, -3380($fp)
	lw $t1, -3380($fp)
	li $t2, 0
	bne $t1, $t2, label723
	j label725
label725:
	lw $t0, -3308($fp)
	sw $t0, -3384($fp)
	addi $t0, $fp, -56
	sw $t0, -3388($fp)
	lw $t0, -3296($fp)
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
	lw $t0, -3384($fp)
	lw $t1, -3404($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3408($fp)
	li $t0, 0
	lw $t1, -3408($fp)
	sub $t0, $t0, $t1
	sw $t0, -3412($fp)
	lw $t1, -3412($fp)
	li $t2, 0
	bne $t1, $t2, label724
	j label723
label723:
	li $t0, 1
	sw $t0, -3336($fp)
label724:
	lw $t0, -288($fp)
	sw $t0, -3416($fp)
	li $t0, 0
	lw $t1, -3416($fp)
	sub $t0, $t0, $t1
	sw $t0, -3420($fp)
	li $t0, 0
	sw $t0, -3424($fp)
	li $t0, 18980
	sw $t0, -3428($fp)
	li $t0, 16990
	sw $t0, -3432($fp)
	lw $t0, -3428($fp)
	lw $t1, -3432($fp)
	mul $t0, $t0, $t1
	sw $t0, -3436($fp)
	addi $t0, $fp, -80
	sw $t0, -3440($fp)
	lw $t0, -3284($fp)
	sw $t0, -3444($fp)
	li $t0, 4
	lw $t1, -3444($fp)
	mul $t0, $t0, $t1
	sw $t0, -3448($fp)
	lw $t0, -3448($fp)
	lw $t1, -3440($fp)
	add $t0, $t0, $t1
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	lw $t1, 0($t0)
	sw $t1, -3456($fp)
	li $t0, 39888
	sw $t0, -3460($fp)
	li $t0, 0
	lw $t1, -3460($fp)
	sub $t0, $t0, $t1
	sw $t0, -3464($fp)
	lw $t0, -3456($fp)
	lw $t1, -3464($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3468($fp)
	lw $t1, -3436($fp)
	lw $t2, -3468($fp)
	beq $t1, $t2, label731
	j label732
label731:
	li $t0, 1
	sw $t0, -3424($fp)
label732:
	j label720
label719:
	li $t0, 0
	sw $t0, -3472($fp)
	li $t0, 0
	sw $t0, -3476($fp)
	lw $t0, -3224($fp)
	sw $t0, -3480($fp)
	lw $t1, -3480($fp)
	li $t2, 0
	bne $t1, $t2, label735
	j label736
label735:
	li $t0, 1
	sw $t0, -3476($fp)
label736:
	lw $t0, -2584($fp)
	sw $t0, -3484($fp)
	lw $t0, -3484($fp)
	sw $t0, -3236($fp)
	lw $t0, -3236($fp)
	sw $t0, -3488($fp)
	addi $t0, $fp, -2508
	sw $t0, -3492($fp)
	lw $t0, -504($fp)
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
	lw $t0, -3064($fp)
	sw $t0, -3512($fp)
	lw $t0, -3508($fp)
	lw $t1, -3512($fp)
	mul $t0, $t0, $t1
	sw $t0, -3516($fp)
	addi $sp, $sp, -4
	lw $t0, -3476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3488($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3516($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3520($fp)
	addi $sp, $sp, 16
	li $t0, 6160
	sw $t0, -3524($fp)
	lw $t1, -3520($fp)
	lw $t2, -3524($fp)
	bge $t1, $t2, label733
	j label734
label733:
	li $t0, 1
	sw $t0, -3472($fp)
label734:
	lw $t0, -3472($fp)
	sw $t0, -3052($fp)
	lw $t0, -3052($fp)
	sw $t0, -3528($fp)
	lw $ra, -4($fp)
	lw $v0, -3528($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label720:
	li $t0, 15898
	sw $t0, -3544($fp)
	addi $t0, $fp, -3540
	sw $t0, -3548($fp)
	li $t0, 0
	sw $t0, -3552($fp)
	lw $t0, -3552($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3556($fp)
	lw $t0, -3548($fp)
	lw $t1, -3556($fp)
	add $t0, $t0, $t1
	sw $t0, -3560($fp)
	lw $t0, -3544($fp)
	lw $t1, -3560($fp)
	sw $t0, 0($t1)
	lw $t0, -3560($fp)
	lw $t1, 0($t0)
	sw $t1, -3564($fp)
	li $t0, 28943
	sw $t0, -3568($fp)
	addi $t0, $fp, -3540
	sw $t0, -3572($fp)
	li $t0, 1
	sw $t0, -3576($fp)
	lw $t0, -3576($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3580($fp)
	lw $t0, -3572($fp)
	lw $t1, -3580($fp)
	add $t0, $t0, $t1
	sw $t0, -3584($fp)
	lw $t0, -3568($fp)
	lw $t1, -3584($fp)
	sw $t0, 0($t1)
	lw $t0, -3584($fp)
	lw $t1, 0($t0)
	sw $t1, -3588($fp)
	li $t0, 2827
	sw $t0, -3592($fp)
	addi $t0, $fp, -3540
	sw $t0, -3596($fp)
	li $t0, 2
	sw $t0, -3600($fp)
	lw $t0, -3600($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3604($fp)
	lw $t0, -3596($fp)
	lw $t1, -3604($fp)
	add $t0, $t0, $t1
	sw $t0, -3608($fp)
	lw $t0, -3592($fp)
	lw $t1, -3608($fp)
	sw $t0, 0($t1)
	lw $t0, -3608($fp)
	lw $t1, 0($t0)
	sw $t1, -3612($fp)
	li $t0, 10772
	sw $t0, -3616($fp)
	lw $t0, -3616($fp)
	sw $t0, -3620($fp)
	lw $t0, -3620($fp)
	sw $t0, -3624($fp)
	lw $t0, -516($fp)
	sw $t0, -3628($fp)
	li $t0, 38590
	sw $t0, -3632($fp)
	li $t0, 0
	lw $t1, -3632($fp)
	sub $t0, $t0, $t1
	sw $t0, -3636($fp)
	lw $t0, -3628($fp)
	lw $t1, -3636($fp)
	mul $t0, $t0, $t1
	sw $t0, -3640($fp)
	addi $t0, $fp, -56
	sw $t0, -3644($fp)
	lw $t0, -2584($fp)
	sw $t0, -3648($fp)
	li $t0, 4
	lw $t1, -3648($fp)
	mul $t0, $t0, $t1
	sw $t0, -3652($fp)
	lw $t0, -3652($fp)
	lw $t1, -3644($fp)
	add $t0, $t0, $t1
	sw $t0, -3656($fp)
	lw $t0, -3656($fp)
	lw $t1, 0($t0)
	sw $t1, -3660($fp)
	lw $t0, -3620($fp)
	sw $t0, -3664($fp)
	lw $t0, -3660($fp)
	lw $t1, -3664($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3668($fp)
	lw $t0, -768($fp)
	sw $t0, -3672($fp)
	lw $t0, -3668($fp)
	lw $t1, -3672($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3676($fp)
	lw $t0, -3640($fp)
	lw $t1, -3676($fp)
	add $t0, $t0, $t1
	sw $t0, -3680($fp)
	li $t0, 0
	sw $t0, -3684($fp)
	li $t0, 31034
	sw $t0, -3688($fp)
	lw $t1, -3688($fp)
	li $t2, 0
	bne $t1, $t2, label737
	j label738
label737:
	li $t0, 1
	sw $t0, -3684($fp)
label738:
	li $t0, 0
	sw $t0, -3692($fp)
	lw $t0, -3052($fp)
	sw $t0, -3696($fp)
	lw $t1, -3696($fp)
	li $t2, 0
	bne $t1, $t2, label740
	j label739
label739:
	li $t0, 1
	sw $t0, -3692($fp)
label740:
	li $t0, 0
	lw $t1, -3692($fp)
	sub $t0, $t0, $t1
	sw $t0, -3700($fp)
	addi $t0, $fp, -2508
	sw $t0, -3704($fp)
	lw $t0, -3076($fp)
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
	li $t0, 0
	sw $t0, -3724($fp)
	li $t0, 0
	sw $t0, -3728($fp)
	lw $t0, -540($fp)
	sw $t0, -3732($fp)
	lw $t1, -3732($fp)
	li $t2, 0
	bne $t1, $t2, label744
	j label743
label743:
	li $t0, 1
	sw $t0, -3728($fp)
label744:
	lw $t0, -552($fp)
	sw $t0, -3736($fp)
	lw $t1, -3728($fp)
	lw $t2, -3736($fp)
	beq $t1, $t2, label741
	j label742
label741:
	li $t0, 1
	sw $t0, -3724($fp)
label742:
	addi $sp, $sp, -4
	lw $t0, -3700($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3724($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3740($fp)
	addi $sp, $sp, 16
	li $t0, 35324
	sw $t0, -3744($fp)
	li $t0, 0
	lw $t1, -3744($fp)
	sub $t0, $t0, $t1
	sw $t0, -3748($fp)
	li $t0, 0
	sw $t0, -3752($fp)
	li $t0, 0
	sw $t0, -3756($fp)
	li $t0, 3643
	sw $t0, -3760($fp)
	lw $t1, -3760($fp)
	li $t2, 0
	bne $t1, $t2, label749
	j label748
label748:
	li $t0, 1
	sw $t0, -3756($fp)
label749:
	li $t0, 0
	lw $t1, -3756($fp)
	sub $t0, $t0, $t1
	sw $t0, -3764($fp)
	lw $t1, -3764($fp)
	li $t2, 0
	bne $t1, $t2, label745
	j label747
label747:
	lw $t0, -108($fp)
	sw $t0, -3768($fp)
	lw $t1, -3768($fp)
	li $t2, 0
	bne $t1, $t2, label745
	j label746
label745:
	li $t0, 1
	sw $t0, -3752($fp)
label746:
	addi $t0, $fp, -3540
	sw $t0, -3772($fp)
	li $t0, 0
	sw $t0, -3776($fp)
	lw $t0, -108($fp)
	sw $t0, -3780($fp)
	li $t0, 48110
	sw $t0, -3784($fp)
	lw $t0, -3780($fp)
	lw $t1, -3784($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3788($fp)
	li $t0, 38652
	sw $t0, -3792($fp)
	lw $t1, -3788($fp)
	lw $t2, -3792($fp)
	ble $t1, $t2, label750
	j label751
label750:
	li $t0, 1
	sw $t0, -3776($fp)
label751:
	li $t0, 4
	lw $t1, -3776($fp)
	mul $t0, $t0, $t1
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	lw $t1, -3772($fp)
	add $t0, $t0, $t1
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	lw $t1, 0($t0)
	sw $t1, -3804($fp)
	li $t0, 1708
	sw $t0, -3808($fp)
	lw $t0, -3804($fp)
	lw $t1, -3808($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3812($fp)
label752:
	lw $t0, -480($fp)
	sw $t0, -3816($fp)
	li $t0, 0
	lw $t1, -3816($fp)
	sub $t0, $t0, $t1
	sw $t0, -3820($fp)
	lw $t1, -3820($fp)
	li $t2, 0
	bne $t1, $t2, label756
	j label754
label756:
	addi $t0, $fp, -56
	sw $t0, -3824($fp)
	lw $t0, -3064($fp)
	sw $t0, -3828($fp)
	li $t0, 4
	lw $t1, -3828($fp)
	mul $t0, $t0, $t1
	sw $t0, -3832($fp)
	lw $t0, -3832($fp)
	lw $t1, -3824($fp)
	add $t0, $t0, $t1
	sw $t0, -3836($fp)
	lw $t0, -3836($fp)
	lw $t1, 0($t0)
	sw $t1, -3840($fp)
	lw $t1, -3840($fp)
	li $t2, 0
	bne $t1, $t2, label755
	j label754
label755:
	li $t0, 38770
	sw $t0, -3844($fp)
	li $t0, 3786
	sw $t0, -3848($fp)
	lw $t0, -3844($fp)
	lw $t1, -3848($fp)
	mul $t0, $t0, $t1
	sw $t0, -3852($fp)
	li $t0, 27936
	sw $t0, -3856($fp)
	lw $t0, -3852($fp)
	lw $t1, -3856($fp)
	sub $t0, $t0, $t1
	sw $t0, -3860($fp)
	lw $t0, -528($fp)
	sw $t0, -3864($fp)
	lw $t1, -3860($fp)
	lw $t2, -3864($fp)
	bgt $t1, $t2, label753
	j label754
label753:
	jal f10
	sw $v0, -3868($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -3872($fp)
	li $t0, 7746
	sw $t0, -3876($fp)
	lw $t1, -3876($fp)
	li $t2, 0
	bne $t1, $t2, label761
	j label760
label760:
	li $t0, 1
	sw $t0, -3872($fp)
label761:
	lw $t0, -3868($fp)
	lw $t1, -3872($fp)
	add $t0, $t0, $t1
	sw $t0, -3880($fp)
	lw $t0, -480($fp)
	sw $t0, -3884($fp)
	li $t0, 37644
	sw $t0, -3888($fp)
	lw $t0, -3884($fp)
	lw $t1, -3888($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3892($fp)
	li $t0, 37071
	sw $t0, -3896($fp)
	lw $t0, -3892($fp)
	lw $t1, -3896($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3900($fp)
	li $t0, 0
	sw $t0, -3904($fp)
	addi $t0, $fp, -2576
	sw $t0, -3908($fp)
	li $t0, 1
	sw $t0, -3912($fp)
	li $t0, 4
	lw $t1, -3912($fp)
	mul $t0, $t0, $t1
	sw $t0, -3916($fp)
	lw $t0, -3916($fp)
	lw $t1, -3908($fp)
	add $t0, $t0, $t1
	sw $t0, -3920($fp)
	lw $t0, -3920($fp)
	lw $t1, 0($t0)
	sw $t1, -3924($fp)
	lw $t1, -3924($fp)
	li $t2, 0
	bne $t1, $t2, label762
	j label764
label764:
	li $t0, 18513
	sw $t0, -3928($fp)
	lw $t1, -3928($fp)
	li $t2, 0
	bne $t1, $t2, label762
	j label763
label762:
	li $t0, 1
	sw $t0, -3904($fp)
label763:
	li $t0, 622
	sw $t0, -3932($fp)
	addi $sp, $sp, -4
	lw $t0, -3900($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3904($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3932($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3936($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -3936($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3940($fp)
	addi $sp, $sp, 8
	lw $t1, -3880($fp)
	lw $t2, -3940($fp)
	bne $t1, $t2, label757
	j label758
label757:
	li $t0, 21507
	sw $t0, -3944($fp)
	li $t0, 46371
	sw $t0, -3948($fp)
	li $t0, 0
	lw $t1, -3948($fp)
	sub $t0, $t0, $t1
	sw $t0, -3952($fp)
	li $t0, 0
	lw $t1, -3952($fp)
	sub $t0, $t0, $t1
	sw $t0, -3956($fp)
	lw $t0, -3944($fp)
	lw $t1, -3956($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3960($fp)
	li $t0, 56195
	sw $t0, -3964($fp)
	lw $t0, -3960($fp)
	lw $t1, -3964($fp)
	sub $t0, $t0, $t1
	sw $t0, -3968($fp)
	j label759
label758:
	li $t0, 25341
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	sw $t0, -3976($fp)
	lw $t0, -3976($fp)
	sw $t0, -3980($fp)
	li $t0, 0
	sw $t0, -3984($fp)
	lw $t0, -480($fp)
	sw $t0, -3988($fp)
	li $t0, 51762
	sw $t0, -3992($fp)
	lw $t0, -3988($fp)
	lw $t1, -3992($fp)
	mul $t0, $t0, $t1
	sw $t0, -3996($fp)
	lw $t0, -768($fp)
	sw $t0, -4000($fp)
	lw $t0, -3996($fp)
	lw $t1, -4000($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4004($fp)
	addi $t0, $fp, -2548
	sw $t0, -4008($fp)
	li $t0, 0
	sw $t0, -4012($fp)
	li $t0, 4
	lw $t1, -4012($fp)
	mul $t0, $t0, $t1
	sw $t0, -4016($fp)
	lw $t0, -4016($fp)
	lw $t1, -4008($fp)
	add $t0, $t0, $t1
	sw $t0, -4020($fp)
	lw $t0, -4020($fp)
	lw $t1, 0($t0)
	sw $t1, -4024($fp)
	lw $t0, -4004($fp)
	lw $t1, -4024($fp)
	sub $t0, $t0, $t1
	sw $t0, -4028($fp)
	lw $t0, -768($fp)
	sw $t0, -4032($fp)
	li $t0, 0
	lw $t1, -4032($fp)
	sub $t0, $t0, $t1
	sw $t0, -4036($fp)
	li $t0, 0
	lw $t1, -4036($fp)
	sub $t0, $t0, $t1
	sw $t0, -4040($fp)
	lw $t0, -4028($fp)
	lw $t1, -4040($fp)
	sub $t0, $t0, $t1
	sw $t0, -4044($fp)
	addi $t0, $fp, -88
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
	li $t0, 50481
	sw $t0, -4068($fp)
	li $t0, 0
	lw $t1, -4068($fp)
	sub $t0, $t0, $t1
	sw $t0, -4072($fp)
	lw $t0, -4064($fp)
	lw $t1, -4072($fp)
	sub $t0, $t0, $t1
	sw $t0, -4076($fp)
	lw $t1, -4044($fp)
	lw $t2, -4076($fp)
	beq $t1, $t2, label765
	j label766
label765:
	li $t0, 1
	sw $t0, -3984($fp)
label766:
	li $t0, 0
	sw $t0, -4080($fp)
	li $t0, 19114
	sw $t0, -4084($fp)
	lw $t0, -3064($fp)
	sw $t0, -4088($fp)
	lw $t0, -4084($fp)
	lw $t1, -4088($fp)
	mul $t0, $t0, $t1
	sw $t0, -4092($fp)
	li $t0, 32267
	sw $t0, -4096($fp)
	lw $t0, -4092($fp)
	lw $t1, -4096($fp)
	mul $t0, $t0, $t1
	sw $t0, -4100($fp)
	li $t0, 0
	sw $t0, -4104($fp)
	li $t0, 0
	sw $t0, -4108($fp)
	lw $t0, -504($fp)
	sw $t0, -4112($fp)
	lw $t1, -4112($fp)
	li $t2, 0
	bne $t1, $t2, label773
	j label772
label772:
	li $t0, 1
	sw $t0, -4108($fp)
label773:
	lw $t0, -132($fp)
	sw $t0, -4116($fp)
	lw $t1, -4108($fp)
	lw $t2, -4116($fp)
	beq $t1, $t2, label770
	j label771
label770:
	li $t0, 1
	sw $t0, -4104($fp)
label771:
	addi $sp, $sp, -4
	lw $t0, -4104($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4120($fp)
	addi $sp, $sp, 8
	lw $t0, -4100($fp)
	lw $t1, -4120($fp)
	mul $t0, $t0, $t1
	sw $t0, -4124($fp)
	lw $t1, -4124($fp)
	li $t2, 0
	bne $t1, $t2, label767
	j label769
label769:
	addi $t0, $fp, -64
	sw $t0, -4128($fp)
	lw $t0, -504($fp)
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
	lw $t0, -3976($fp)
	sw $t0, -4148($fp)
	lw $t0, -4144($fp)
	lw $t1, -4148($fp)
	mul $t0, $t0, $t1
	sw $t0, -4152($fp)
	lw $t1, -4152($fp)
	li $t2, 0
	bne $t1, $t2, label767
	j label768
label767:
	li $t0, 1
	sw $t0, -4080($fp)
label768:
	addi $t0, $fp, -64
	sw $t0, -4156($fp)
	lw $t0, -3064($fp)
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
	addi $sp, $sp, -4
	lw $t0, -4172($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4176($fp)
	addi $sp, $sp, 8
label759:
	j label752
label754:
	li $t0, 5321
	sw $t0, -4180($fp)
	lw $t0, -4180($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -4184($fp)
	addi $t0, $fp, -2508
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
	addi $sp, $sp, -4
	lw $t0, -4184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4204($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4208($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -4208($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4212($fp)
	addi $sp, $sp, 8
	lw $t0, -2584($fp)
	sw $t0, -4216($fp)
	lw $t0, -4212($fp)
	lw $t1, -4216($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4220($fp)
	addi $t0, $fp, -2508
	sw $t0, -4224($fp)
	li $t0, 1
	sw $t0, -4228($fp)
	li $t0, 4
	lw $t1, -4228($fp)
	mul $t0, $t0, $t1
	sw $t0, -4232($fp)
	lw $t0, -4232($fp)
	lw $t1, -4224($fp)
	add $t0, $t0, $t1
	sw $t0, -4236($fp)
	lw $t0, -4236($fp)
	lw $t1, 0($t0)
	sw $t1, -4240($fp)
	lw $t0, -4220($fp)
	lw $t1, -4240($fp)
	mul $t0, $t0, $t1
	sw $t0, -4244($fp)
	addi $t0, $fp, -2536
	sw $t0, -4248($fp)
	li $t0, 6
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
	lw $t0, -132($fp)
	sw $t0, -4268($fp)
	li $t0, 0
	lw $t1, -4268($fp)
	sub $t0, $t0, $t1
	sw $t0, -4272($fp)
	lw $t0, -4264($fp)
	lw $t1, -4272($fp)
	mul $t0, $t0, $t1
	sw $t0, -4276($fp)
	lw $t0, -4244($fp)
	lw $t1, -4276($fp)
	add $t0, $t0, $t1
	sw $t0, -4280($fp)
label774:
	lw $t0, -132($fp)
	sw $t0, -4284($fp)
	lw $t0, -480($fp)
	sw $t0, -4288($fp)
	lw $t0, -4284($fp)
	lw $t1, -4288($fp)
	sub $t0, $t0, $t1
	sw $t0, -4292($fp)
	addi $sp, $sp, -4
	lw $t0, -4292($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4296($fp)
	addi $sp, $sp, 8
	li $t0, 0
	lw $t1, -4296($fp)
	sub $t0, $t0, $t1
	sw $t0, -4300($fp)
	li $t0, 0
	lw $t1, -4300($fp)
	sub $t0, $t0, $t1
	sw $t0, -4304($fp)
	li $t0, 0
	lw $t1, -4304($fp)
	sub $t0, $t0, $t1
	sw $t0, -4308($fp)
	li $t0, 0
	lw $t1, -4308($fp)
	sub $t0, $t0, $t1
	sw $t0, -4312($fp)
	lw $t1, -4312($fp)
	li $t2, 0
	bne $t1, $t2, label775
	j label776
label775:
	li $t0, 0
	sw $t0, -4316($fp)
	lw $t0, -2584($fp)
	sw $t0, -4320($fp)
	li $t0, 0
	lw $t1, -4320($fp)
	sub $t0, $t0, $t1
	sw $t0, -4324($fp)
	lw $t1, -4324($fp)
	li $t2, 0
	bne $t1, $t2, label778
	j label777
label777:
	li $t0, 1
	sw $t0, -4316($fp)
label778:
	j label774
label776:
	lw $t0, -96($fp)
	sw $t0, -4328($fp)
	lw $t0, -4328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -4332($fp)
	lw $t0, -4332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -120($fp)
	sw $t0, -4336($fp)
	lw $t0, -4336($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -132($fp)
	sw $t0, -4340($fp)
	lw $t0, -4340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -4344($fp)
	li $t0, 0
	sw $t0, -4348($fp)
	li $t0, 4
	lw $t1, -4348($fp)
	mul $t0, $t0, $t1
	sw $t0, -4352($fp)
	lw $t0, -4352($fp)
	lw $t1, -4344($fp)
	add $t0, $t0, $t1
	sw $t0, -4356($fp)
	lw $t0, -4356($fp)
	lw $t1, 0($t0)
	sw $t1, -4360($fp)
	lw $t0, -4360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -4364($fp)
	li $t0, 1
	sw $t0, -4368($fp)
	li $t0, 4
	lw $t1, -4368($fp)
	mul $t0, $t0, $t1
	sw $t0, -4372($fp)
	lw $t0, -4372($fp)
	lw $t1, -4364($fp)
	add $t0, $t0, $t1
	sw $t0, -4376($fp)
	lw $t0, -4376($fp)
	lw $t1, 0($t0)
	sw $t1, -4380($fp)
	lw $t0, -4380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -4384($fp)
	li $t0, 2
	sw $t0, -4388($fp)
	li $t0, 4
	lw $t1, -4388($fp)
	mul $t0, $t0, $t1
	sw $t0, -4392($fp)
	lw $t0, -4392($fp)
	lw $t1, -4384($fp)
	add $t0, $t0, $t1
	sw $t0, -4396($fp)
	lw $t0, -4396($fp)
	lw $t1, 0($t0)
	sw $t1, -4400($fp)
	lw $t0, -4400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -4404($fp)
	li $t0, 3
	sw $t0, -4408($fp)
	li $t0, 4
	lw $t1, -4408($fp)
	mul $t0, $t0, $t1
	sw $t0, -4412($fp)
	lw $t0, -4412($fp)
	lw $t1, -4404($fp)
	add $t0, $t0, $t1
	sw $t0, -4416($fp)
	lw $t0, -4416($fp)
	lw $t1, 0($t0)
	sw $t1, -4420($fp)
	lw $t0, -4420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -4424($fp)
	li $t0, 4
	sw $t0, -4428($fp)
	li $t0, 4
	lw $t1, -4428($fp)
	mul $t0, $t0, $t1
	sw $t0, -4432($fp)
	lw $t0, -4432($fp)
	lw $t1, -4424($fp)
	add $t0, $t0, $t1
	sw $t0, -4436($fp)
	lw $t0, -4436($fp)
	lw $t1, 0($t0)
	sw $t1, -4440($fp)
	lw $t0, -4440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -4444($fp)
	li $t0, 5
	sw $t0, -4448($fp)
	li $t0, 4
	lw $t1, -4448($fp)
	mul $t0, $t0, $t1
	sw $t0, -4452($fp)
	lw $t0, -4452($fp)
	lw $t1, -4444($fp)
	add $t0, $t0, $t1
	sw $t0, -4456($fp)
	lw $t0, -4456($fp)
	lw $t1, 0($t0)
	sw $t1, -4460($fp)
	lw $t0, -4460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -4464($fp)
	lw $t0, -4464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -4468($fp)
	li $t0, 0
	sw $t0, -4472($fp)
	li $t0, 4
	lw $t1, -4472($fp)
	mul $t0, $t0, $t1
	sw $t0, -4476($fp)
	lw $t0, -4476($fp)
	lw $t1, -4468($fp)
	add $t0, $t0, $t1
	sw $t0, -4480($fp)
	lw $t0, -4480($fp)
	lw $t1, 0($t0)
	sw $t1, -4484($fp)
	lw $t0, -4484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -4488($fp)
	li $t0, 1
	sw $t0, -4492($fp)
	li $t0, 4
	lw $t1, -4492($fp)
	mul $t0, $t0, $t1
	sw $t0, -4496($fp)
	lw $t0, -4496($fp)
	lw $t1, -4488($fp)
	add $t0, $t0, $t1
	sw $t0, -4500($fp)
	lw $t0, -4500($fp)
	lw $t1, 0($t0)
	sw $t1, -4504($fp)
	lw $t0, -4504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -4508($fp)
	li $t0, 2
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
	addi $t0, $fp, -56
	sw $t0, -4528($fp)
	li $t0, 3
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
	addi $t0, $fp, -56
	sw $t0, -4548($fp)
	li $t0, 4
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
	addi $t0, $fp, -56
	sw $t0, -4568($fp)
	li $t0, 5
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
	addi $t0, $fp, -56
	sw $t0, -4588($fp)
	li $t0, 6
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
	lw $t0, -468($fp)
	sw $t0, -4608($fp)
	lw $t0, -4608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -4612($fp)
	lw $t0, -4612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -4616($fp)
	lw $t0, -4616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -4620($fp)
	lw $t0, -4620($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -4624($fp)
	lw $t0, -4624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -4628($fp)
	lw $t0, -4628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -540($fp)
	sw $t0, -4632($fp)
	lw $t0, -4632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -552($fp)
	sw $t0, -4636($fp)
	lw $t0, -4636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -4640($fp)
	lw $t0, -4640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4644($fp)
	li $t0, 0
	sw $t0, -4648($fp)
	li $t0, 4
	lw $t1, -4648($fp)
	mul $t0, $t0, $t1
	sw $t0, -4652($fp)
	lw $t0, -4652($fp)
	lw $t1, -4644($fp)
	add $t0, $t0, $t1
	sw $t0, -4656($fp)
	lw $t0, -4656($fp)
	lw $t1, 0($t0)
	sw $t1, -4660($fp)
	lw $t0, -4660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -4664($fp)
	li $t0, 1
	sw $t0, -4668($fp)
	li $t0, 4
	lw $t1, -4668($fp)
	mul $t0, $t0, $t1
	sw $t0, -4672($fp)
	lw $t0, -4672($fp)
	lw $t1, -4664($fp)
	add $t0, $t0, $t1
	sw $t0, -4676($fp)
	lw $t0, -4676($fp)
	lw $t1, 0($t0)
	sw $t1, -4680($fp)
	lw $t0, -4680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -4684($fp)
	li $t0, 0
	sw $t0, -4688($fp)
	li $t0, 4
	lw $t1, -4688($fp)
	mul $t0, $t0, $t1
	sw $t0, -4692($fp)
	lw $t0, -4692($fp)
	lw $t1, -4684($fp)
	add $t0, $t0, $t1
	sw $t0, -4696($fp)
	lw $t0, -4696($fp)
	lw $t1, 0($t0)
	sw $t1, -4700($fp)
	lw $t0, -4700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -4704($fp)
	li $t0, 1
	sw $t0, -4708($fp)
	li $t0, 4
	lw $t1, -4708($fp)
	mul $t0, $t0, $t1
	sw $t0, -4712($fp)
	lw $t0, -4712($fp)
	lw $t1, -4704($fp)
	add $t0, $t0, $t1
	sw $t0, -4716($fp)
	lw $t0, -4716($fp)
	lw $t1, 0($t0)
	sw $t1, -4720($fp)
	lw $t0, -4720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -4724($fp)
	li $t0, 2
	sw $t0, -4728($fp)
	li $t0, 4
	lw $t1, -4728($fp)
	mul $t0, $t0, $t1
	sw $t0, -4732($fp)
	lw $t0, -4732($fp)
	lw $t1, -4724($fp)
	add $t0, $t0, $t1
	sw $t0, -4736($fp)
	lw $t0, -4736($fp)
	lw $t1, 0($t0)
	sw $t1, -4740($fp)
	lw $t0, -4740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -4744($fp)
	li $t0, 3
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
	lw $t0, -4760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -4764($fp)
	li $t0, 0
	sw $t0, -4768($fp)
	li $t0, 4
	lw $t1, -4768($fp)
	mul $t0, $t0, $t1
	sw $t0, -4772($fp)
	lw $t0, -4772($fp)
	lw $t1, -4764($fp)
	add $t0, $t0, $t1
	sw $t0, -4776($fp)
	lw $t0, -4776($fp)
	lw $t1, 0($t0)
	sw $t1, -4780($fp)
	lw $t0, -4780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -4784($fp)
	li $t0, 1
	sw $t0, -4788($fp)
	li $t0, 4
	lw $t1, -4788($fp)
	mul $t0, $t0, $t1
	sw $t0, -4792($fp)
	lw $t0, -4792($fp)
	lw $t1, -4784($fp)
	add $t0, $t0, $t1
	sw $t0, -4796($fp)
	lw $t0, -4796($fp)
	lw $t1, 0($t0)
	sw $t1, -4800($fp)
	lw $t0, -4800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -768($fp)
	sw $t0, -4804($fp)
	lw $t0, -4804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -780($fp)
	sw $t0, -4808($fp)
	lw $t0, -4808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 38327
	sw $t0, -4812($fp)
	lw $t0, -4812($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -4816($fp)
	lw $t0, -504($fp)
	sw $t0, -4820($fp)
	lw $t0, -4820($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -4824($fp)
	li $t0, 0
	sw $t0, -4828($fp)
	li $t0, 0
	sw $t0, -4832($fp)
	lw $t0, -504($fp)
	sw $t0, -4836($fp)
	lw $t0, -120($fp)
	sw $t0, -4840($fp)
	lw $t1, -4836($fp)
	lw $t2, -4840($fp)
	blt $t1, $t2, label781
	j label782
label781:
	li $t0, 1
	sw $t0, -4832($fp)
label782:
	lw $t0, -540($fp)
	sw $t0, -4844($fp)
	lw $t1, -4832($fp)
	lw $t2, -4844($fp)
	blt $t1, $t2, label779
	j label780
label779:
	li $t0, 1
	sw $t0, -4828($fp)
label780:
	addi $sp, $sp, -4
	lw $t0, -4816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4828($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4848($fp)
	addi $sp, $sp, 16
	lw $ra, -4($fp)
	lw $v0, -4848($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2496
	li $t0, 10672
	sw $t0, -64($fp)
	addi $t0, $fp, -8
	sw $t0, -68($fp)
	li $t0, 0
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
	li $t0, 40150
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
	li $t0, 42113
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	li $t0, 38608
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	li $t0, 47896
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	li $t0, 42735
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	li $t0, 33290
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	li $t0, 11212
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	li $t0, 61248
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	li $t0, 5398
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	li $t0, 48284
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	li $t0, 17219
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
	li $t0, 51769
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
	li $t0, 38943
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
	li $t0, 42560
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
	li $t0, 37995
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
	li $t0, 2379
	sw $t0, -340($fp)
	lw $t0, -340($fp)
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	li $t0, 21345
	sw $t0, -352($fp)
	lw $t0, -352($fp)
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	li $t0, 41212
	sw $t0, -364($fp)
	lw $t0, -364($fp)
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	li $t0, 5703
	sw $t0, -376($fp)
	lw $t0, -376($fp)
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	li $t0, 6290
	sw $t0, -388($fp)
	addi $t0, $fp, -60
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
	li $t0, 60326
	sw $t0, -412($fp)
	addi $t0, $fp, -60
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
	li $t0, 37970
	sw $t0, -436($fp)
	addi $t0, $fp, -60
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
	li $t0, 59598
	sw $t0, -460($fp)
	addi $t0, $fp, -60
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
	li $t0, 24677
	sw $t0, -484($fp)
	addi $t0, $fp, -60
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
	li $t0, 43291
	sw $t0, -508($fp)
	addi $t0, $fp, -60
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
	li $t0, 12868
	sw $t0, -532($fp)
	addi $t0, $fp, -60
	sw $t0, -536($fp)
	li $t0, 6
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
	li $t0, 24352
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	li $t0, 52255
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	li $t0, 14249
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	lw $t0, -584($fp)
	sw $t0, -588($fp)
	li $t0, 62679
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	lw $t0, -596($fp)
	sw $t0, -600($fp)
	li $t0, 62927
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	sw $t0, -612($fp)
	li $t0, 0
	sw $t0, -616($fp)
	li $t0, 0
	sw $t0, -620($fp)
	lw $t0, -212($fp)
	sw $t0, -624($fp)
	lw $t1, -624($fp)
	li $t2, 0
	bne $t1, $t2, label788
	j label786
label788:
	li $t0, 39257
	sw $t0, -628($fp)
	lw $t1, -628($fp)
	li $t2, 0
	bne $t1, $t2, label786
	j label787
label786:
	li $t0, 1
	sw $t0, -620($fp)
label787:
	li $t0, 54399
	sw $t0, -632($fp)
	addi $sp, $sp, -4
	lw $t0, -620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -632($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -636($fp)
	addi $sp, $sp, 12
	lw $t0, -368($fp)
	sw $t0, -640($fp)
	lw $t0, -636($fp)
	lw $t1, -640($fp)
	sub $t0, $t0, $t1
	sw $t0, -644($fp)
	addi $t0, $fp, -12
	sw $t0, -648($fp)
	li $t0, 0
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
	lw $t1, -644($fp)
	lw $t2, -664($fp)
	ble $t1, $t2, label783
	j label785
label785:
	li $t0, 0
	sw $t0, -668($fp)
	lw $t0, -356($fp)
	sw $t0, -672($fp)
	lw $t1, -672($fp)
	li $t2, 0
	bne $t1, $t2, label791
	j label790
label790:
	li $t0, 1
	sw $t0, -668($fp)
label791:
	li $t0, 0
	lw $t1, -668($fp)
	sub $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $t1, -676($fp)
	li $t2, 0
	bne $t1, $t2, label789
	j label784
label789:
	li $t0, 16456
	sw $t0, -680($fp)
	lw $t0, 20($fp)
	sw $t0, -684($fp)
	lw $t0, -680($fp)
	lw $t1, -684($fp)
	mul $t0, $t0, $t1
	sw $t0, -688($fp)
	lw $t1, -688($fp)
	li $t2, 0
	bne $t1, $t2, label783
	j label784
label783:
	li $t0, 1
	sw $t0, -616($fp)
label784:
	li $t0, 0
	sw $t0, -692($fp)
	addi $t0, $fp, -32
	sw $t0, -696($fp)
	li $t0, 0
	sw $t0, -700($fp)
	lw $t0, -584($fp)
	sw $t0, -704($fp)
	lw $t1, -704($fp)
	li $t2, 0
	bne $t1, $t2, label797
	j label796
label797:
	li $t0, 3753
	sw $t0, -708($fp)
	lw $t1, -708($fp)
	li $t2, 0
	bne $t1, $t2, label795
	j label796
label795:
	li $t0, 1
	sw $t0, -700($fp)
label796:
	li $t0, 4
	lw $t1, -700($fp)
	mul $t0, $t0, $t1
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	lw $t1, -696($fp)
	add $t0, $t0, $t1
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	lw $t1, 0($t0)
	sw $t1, -720($fp)
	li $t0, 0
	lw $t1, -720($fp)
	sub $t0, $t0, $t1
	sw $t0, -724($fp)
	lw $t1, -724($fp)
	li $t2, 0
	bne $t1, $t2, label794
	j label793
label794:
	li $t0, 47972
	sw $t0, -728($fp)
	li $t0, 12169
	sw $t0, -732($fp)
	lw $t0, -728($fp)
	lw $t1, -732($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -736($fp)
	li $t0, 9151
	sw $t0, -740($fp)
	lw $t0, -736($fp)
	lw $t1, -740($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -744($fp)
	li $t0, 30720
	sw $t0, -748($fp)
	li $t0, 0
	lw $t1, -748($fp)
	sub $t0, $t0, $t1
	sw $t0, -752($fp)
	lw $t0, -744($fp)
	lw $t1, -752($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -756($fp)
	lw $t1, -756($fp)
	li $t2, 0
	bne $t1, $t2, label792
	j label793
label792:
	li $t0, 1
	sw $t0, -692($fp)
label793:
	li $t0, 0
	sw $t0, -760($fp)
	lw $t0, 20($fp)
	sw $t0, -764($fp)
	lw $t0, -596($fp)
	sw $t0, -768($fp)
	li $t0, 29388
	sw $t0, -772($fp)
	lw $t0, -768($fp)
	lw $t1, -772($fp)
	mul $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t0, -764($fp)
	lw $t1, -776($fp)
	add $t0, $t0, $t1
	sw $t0, -780($fp)
	li $t0, 27758
	sw $t0, -784($fp)
	li $t0, 9056
	sw $t0, -788($fp)
	lw $t0, -784($fp)
	lw $t1, -788($fp)
	add $t0, $t0, $t1
	sw $t0, -792($fp)
	li $t0, 0
	sw $t0, -796($fp)
	lw $t0, 20($fp)
	sw $t0, -800($fp)
	lw $t0, -560($fp)
	sw $t0, -804($fp)
	lw $t0, -800($fp)
	lw $t1, -804($fp)
	sub $t0, $t0, $t1
	sw $t0, -808($fp)
	li $t0, 6506
	sw $t0, -812($fp)
	lw $t1, -808($fp)
	lw $t2, -812($fp)
	ble $t1, $t2, label801
	j label802
label801:
	li $t0, 1
	sw $t0, -796($fp)
label802:
	li $t0, 33380
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -820($fp)
	li $t0, 0
	sw $t0, -824($fp)
	lw $t0, -356($fp)
	sw $t0, -828($fp)
	li $t0, 4127
	sw $t0, -832($fp)
	lw $t0, -828($fp)
	lw $t1, -832($fp)
	add $t0, $t0, $t1
	sw $t0, -836($fp)
	li $t0, 6413
	sw $t0, -840($fp)
	lw $t1, -836($fp)
	lw $t2, -840($fp)
	bgt $t1, $t2, label803
	j label804
label803:
	li $t0, 1
	sw $t0, -824($fp)
label804:
	addi $sp, $sp, -4
	lw $t0, -796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -824($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -844($fp)
	addi $sp, $sp, 16
	lw $t0, -560($fp)
	sw $t0, -848($fp)
	lw $t0, -844($fp)
	lw $t1, -848($fp)
	add $t0, $t0, $t1
	sw $t0, -852($fp)
	li $t0, 0
	sw $t0, -856($fp)
	lw $t0, 4($fp)
	sw $t0, -860($fp)
	lw $t0, 4($fp)
	sw $t0, -864($fp)
	lw $t1, -860($fp)
	lw $t2, -864($fp)
	bne $t1, $t2, label805
	j label807
label807:
	li $t0, 60921
	sw $t0, -868($fp)
	lw $t1, -868($fp)
	li $t2, 0
	bne $t1, $t2, label805
	j label806
label805:
	li $t0, 1
	sw $t0, -856($fp)
label806:
	li $t0, 0
	sw $t0, -872($fp)
	lw $t0, -212($fp)
	sw $t0, -876($fp)
	lw $t1, -876($fp)
	li $t2, 0
	bne $t1, $t2, label809
	j label808
label808:
	li $t0, 1
	sw $t0, -872($fp)
label809:
	li $t0, 0
	lw $t1, -872($fp)
	sub $t0, $t0, $t1
	sw $t0, -880($fp)
	lw $t0, -152($fp)
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -888($fp)
	addi $sp, $sp, -4
	lw $t0, -792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -888($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -892($fp)
	addi $sp, $sp, 24
	lw $t1, -780($fp)
	lw $t2, -892($fp)
	ble $t1, $t2, label798
	j label800
label800:
	li $t0, 12209
	sw $t0, -896($fp)
	li $t0, 34049
	sw $t0, -900($fp)
	lw $t0, -896($fp)
	lw $t1, -900($fp)
	add $t0, $t0, $t1
	sw $t0, -904($fp)
	li $t0, 3847
	sw $t0, -908($fp)
	lw $t0, -904($fp)
	lw $t1, -908($fp)
	sub $t0, $t0, $t1
	sw $t0, -912($fp)
	lw $t0, 20($fp)
	sw $t0, -916($fp)
	lw $t0, -912($fp)
	lw $t1, -916($fp)
	add $t0, $t0, $t1
	sw $t0, -920($fp)
	lw $t1, -920($fp)
	li $t2, 0
	bne $t1, $t2, label798
	j label799
label798:
	li $t0, 1
	sw $t0, -760($fp)
label799:
	li $t0, 0
	sw $t0, -924($fp)
	li $t0, 0
	sw $t0, -928($fp)
	li $t0, 0
	sw $t0, -932($fp)
	lw $t0, -608($fp)
	sw $t0, -936($fp)
	lw $t1, -936($fp)
	li $t2, 0
	bne $t1, $t2, label814
	j label817
label817:
	li $t0, 50179
	sw $t0, -940($fp)
	lw $t1, -940($fp)
	li $t2, 0
	bne $t1, $t2, label814
	j label816
label816:
	lw $t0, -356($fp)
	sw $t0, -944($fp)
	lw $t1, -944($fp)
	li $t2, 0
	bne $t1, $t2, label814
	j label815
label814:
	li $t0, 1
	sw $t0, -932($fp)
label815:
	lw $t0, 8($fp)
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -952($fp)
	addi $sp, $sp, -4
	lw $t0, -932($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -952($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -956($fp)
	addi $sp, $sp, 12
	lw $t1, -956($fp)
	li $t2, 0
	bne $t1, $t2, label813
	j label812
label812:
	li $t0, 1
	sw $t0, -928($fp)
label813:
	lw $t0, -356($fp)
	sw $t0, -960($fp)
	lw $t0, -560($fp)
	sw $t0, -964($fp)
	lw $t0, -960($fp)
	lw $t1, -964($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -968($fp)
	li $t0, 0
	sw $t0, -972($fp)
	li $t0, 28111
	sw $t0, -976($fp)
	lw $t1, -976($fp)
	li $t2, 0
	bne $t1, $t2, label819
	j label818
label818:
	li $t0, 1
	sw $t0, -972($fp)
label819:
	lw $t0, -968($fp)
	lw $t1, -972($fp)
	sub $t0, $t0, $t1
	sw $t0, -980($fp)
	lw $t1, -928($fp)
	lw $t2, -980($fp)
	bge $t1, $t2, label810
	j label811
label810:
	li $t0, 1
	sw $t0, -924($fp)
label811:
	li $t0, 0
	sw $t0, -984($fp)
	lw $t0, -200($fp)
	sw $t0, -988($fp)
	li $t0, 0
	lw $t1, -988($fp)
	sub $t0, $t0, $t1
	sw $t0, -992($fp)
	lw $t1, -992($fp)
	li $t2, 0
	bne $t1, $t2, label820
	j label822
label822:
	addi $t0, $fp, -32
	sw $t0, -996($fp)
	lw $t0, 4($fp)
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
	li $t0, 28524
	sw $t0, -1016($fp)
	lw $t0, -1012($fp)
	lw $t1, -1016($fp)
	mul $t0, $t0, $t1
	sw $t0, -1020($fp)
	lw $t1, -1020($fp)
	li $t2, 0
	bne $t1, $t2, label820
	j label821
label820:
	li $t0, 1
	sw $t0, -984($fp)
label821:
	li $t0, 0
	sw $t0, -1024($fp)
	li $t0, 0
	sw $t0, -1028($fp)
	li $t0, 0
	sw $t0, -1032($fp)
	lw $t0, 16($fp)
	sw $t0, -1036($fp)
	lw $t1, -1036($fp)
	li $t2, 0
	bne $t1, $t2, label829
	j label828
label828:
	li $t0, 1
	sw $t0, -1032($fp)
label829:
	addi $sp, $sp, -4
	lw $t0, -1032($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1040($fp)
	addi $sp, $sp, 8
	lw $t1, -1040($fp)
	li $t2, 0
	bne $t1, $t2, label827
	j label826
label827:
	li $t0, 27934
	sw $t0, -1044($fp)
	lw $t1, -1044($fp)
	li $t2, 0
	bne $t1, $t2, label825
	j label826
label825:
	li $t0, 1
	sw $t0, -1028($fp)
label826:
	addi $sp, $sp, -4
	lw $t0, -1028($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1048($fp)
	addi $sp, $sp, 8
	lw $t0, -608($fp)
	sw $t0, -1052($fp)
	li $t0, 0
	lw $t1, -1052($fp)
	sub $t0, $t0, $t1
	sw $t0, -1056($fp)
	lw $t0, -1048($fp)
	lw $t1, -1056($fp)
	mul $t0, $t0, $t1
	sw $t0, -1060($fp)
	li $t0, 0
	lw $t1, -1060($fp)
	sub $t0, $t0, $t1
	sw $t0, -1064($fp)
	lw $t1, -1064($fp)
	li $t2, 0
	bne $t1, $t2, label824
	j label823
label823:
	li $t0, 1
	sw $t0, -1024($fp)
label824:
label830:
	li $t0, 0
	sw $t0, -1068($fp)
	lw $t0, -560($fp)
	sw $t0, -1072($fp)
	li $t0, 0
	lw $t1, -1072($fp)
	sub $t0, $t0, $t1
	sw $t0, -1076($fp)
	lw $t1, -1076($fp)
	li $t2, 0
	bne $t1, $t2, label834
	j label833
label833:
	li $t0, 1
	sw $t0, -1068($fp)
label834:
	li $t0, 0
	lw $t1, -1068($fp)
	sub $t0, $t0, $t1
	sw $t0, -1080($fp)
	addi $t0, $fp, -12
	sw $t0, -1084($fp)
	li $t0, 0
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
	li $t0, 0
	sw $t0, -1104($fp)
	li $t0, 52877
	sw $t0, -1108($fp)
	lw $t0, -164($fp)
	sw $t0, -1112($fp)
	lw $t1, -1108($fp)
	lw $t2, -1112($fp)
	blt $t1, $t2, label835
	j label836
label835:
	li $t0, 1
	sw $t0, -1104($fp)
label836:
	lw $t0, -116($fp)
	sw $t0, -1116($fp)
	lw $t0, -164($fp)
	sw $t0, -1120($fp)
	lw $t0, 20($fp)
	sw $t0, -1124($fp)
	lw $t0, -1120($fp)
	lw $t1, -1124($fp)
	sub $t0, $t0, $t1
	sw $t0, -1128($fp)
	li $t0, 0
	sw $t0, -1132($fp)
	li $t0, 40980
	sw $t0, -1136($fp)
	lw $t1, -1136($fp)
	li $t2, 0
	bne $t1, $t2, label838
	j label837
label837:
	li $t0, 1
	sw $t0, -1132($fp)
label838:
	lw $t0, -188($fp)
	sw $t0, -1140($fp)
	lw $t0, -1132($fp)
	lw $t1, -1140($fp)
	add $t0, $t0, $t1
	sw $t0, -1144($fp)
	addi $sp, $sp, -4
	lw $t0, -1100($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1128($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1144($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1148($fp)
	addi $sp, $sp, 24
	lw $t0, -1080($fp)
	lw $t1, -1148($fp)
	sub $t0, $t0, $t1
	sw $t0, -1152($fp)
	li $t0, 0
	sw $t0, -1156($fp)
	li $t0, 23741
	sw $t0, -1160($fp)
	li $t0, 48044
	sw $t0, -1164($fp)
	lw $t0, -1160($fp)
	lw $t1, -1164($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1168($fp)
	lw $t0, 20($fp)
	sw $t0, -1172($fp)
	lw $t0, -1168($fp)
	lw $t1, -1172($fp)
	sub $t0, $t0, $t1
	sw $t0, -1176($fp)
	li $t0, 0
	sw $t0, -1180($fp)
	lw $t0, -356($fp)
	sw $t0, -1184($fp)
	lw $t1, -1184($fp)
	li $t2, 0
	bne $t1, $t2, label842
	j label841
label841:
	li $t0, 1
	sw $t0, -1180($fp)
label842:
	addi $t0, $fp, -60
	sw $t0, -1188($fp)
	lw $t0, -356($fp)
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
	li $t0, 44092
	sw $t0, -1208($fp)
	lw $t0, -1204($fp)
	lw $t1, -1208($fp)
	add $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t0, -356($fp)
	sw $t0, -1216($fp)
	li $t0, 12044
	sw $t0, -1220($fp)
	lw $t0, -1216($fp)
	lw $t1, -1220($fp)
	add $t0, $t0, $t1
	sw $t0, -1224($fp)
	lw $t0, -356($fp)
	sw $t0, -1228($fp)
	lw $t0, -152($fp)
	sw $t0, -1232($fp)
	lw $t0, -1228($fp)
	lw $t1, -1232($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1236($fp)
	li $t0, 50020
	sw $t0, -1240($fp)
	lw $t0, -1236($fp)
	lw $t1, -1240($fp)
	mul $t0, $t0, $t1
	sw $t0, -1244($fp)
	addi $sp, $sp, -4
	lw $t0, -1176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1212($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1224($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1244($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1248($fp)
	addi $sp, $sp, 24
	lw $t1, -1248($fp)
	li $t2, 0
	bne $t1, $t2, label839
	j label840
label839:
	li $t0, 1
	sw $t0, -1156($fp)
label840:
	lw $t0, -1152($fp)
	lw $t1, -1156($fp)
	sub $t0, $t0, $t1
	sw $t0, -1252($fp)
	lw $t1, -1252($fp)
	li $t2, 0
	bne $t1, $t2, label831
	j label832
label831:
	addi $t0, $fp, -60
	sw $t0, -1256($fp)
	lw $t0, -128($fp)
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -1264($fp)
	li $t0, 4
	lw $t1, -1264($fp)
	mul $t0, $t0, $t1
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	lw $t1, -1256($fp)
	add $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	lw $t1, 0($t0)
	sw $t1, -1276($fp)
	li $t0, 0
	sw $t0, -1280($fp)
	li $t0, 60949
	sw $t0, -1284($fp)
	lw $t1, -1284($fp)
	li $t2, 0
	bne $t1, $t2, label845
	j label844
label845:
	li $t0, 28473
	sw $t0, -1288($fp)
	lw $t1, -1288($fp)
	li $t2, 0
	bne $t1, $t2, label843
	j label844
label843:
	li $t0, 1
	sw $t0, -1280($fp)
label844:
	li $t0, 52367
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -1296($fp)
	lw $t0, 12($fp)
	sw $t0, -1300($fp)
	li $t0, 63289
	sw $t0, -1304($fp)
	lw $t0, -1300($fp)
	lw $t1, -1304($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1308($fp)
	li $t0, 0
	lw $t1, -1308($fp)
	sub $t0, $t0, $t1
	sw $t0, -1312($fp)
	li $t0, 0
	sw $t0, -1316($fp)
	lw $t0, -128($fp)
	sw $t0, -1320($fp)
	lw $t0, -356($fp)
	sw $t0, -1324($fp)
	lw $t1, -1320($fp)
	lw $t2, -1324($fp)
	blt $t1, $t2, label848
	j label847
label848:
	li $t0, 51797
	sw $t0, -1328($fp)
	lw $t1, -1328($fp)
	li $t2, 0
	bne $t1, $t2, label846
	j label847
label846:
	li $t0, 1
	sw $t0, -1316($fp)
label847:
	li $t0, 0
	sw $t0, -1332($fp)
	li $t0, 15316
	sw $t0, -1336($fp)
	lw $t0, -368($fp)
	sw $t0, -1340($fp)
	lw $t1, -1336($fp)
	lw $t2, -1340($fp)
	bgt $t1, $t2, label849
	j label851
label851:
	li $t0, 40198
	sw $t0, -1344($fp)
	lw $t1, -1344($fp)
	li $t2, 0
	bne $t1, $t2, label849
	j label850
label849:
	li $t0, 1
	sw $t0, -1332($fp)
label850:
	addi $sp, $sp, -4
	lw $t0, -1280($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1296($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1332($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1348($fp)
	addi $sp, $sp, 24
	lw $t0, -1276($fp)
	lw $t1, -1348($fp)
	sub $t0, $t0, $t1
	sw $t0, -1352($fp)
	li $t0, 16219
	sw $t0, -1356($fp)
	lw $t0, -572($fp)
	sw $t0, -1360($fp)
	lw $t0, -1356($fp)
	lw $t1, -1360($fp)
	mul $t0, $t0, $t1
	sw $t0, -1364($fp)
	lw $t0, -1352($fp)
	lw $t1, -1364($fp)
	add $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $ra, -4($fp)
	lw $v0, -1368($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label830
label832:
label852:
	lw $t0, -140($fp)
	sw $t0, -1372($fp)
	li $t0, 0
	sw $t0, -1376($fp)
	li $t0, 56334
	sw $t0, -1380($fp)
	lw $t1, -1380($fp)
	li $t2, 0
	bne $t1, $t2, label857
	j label855
label857:
	li $t0, 32601
	sw $t0, -1384($fp)
	lw $t1, -1384($fp)
	li $t2, 0
	bne $t1, $t2, label855
	j label856
label855:
	li $t0, 1
	sw $t0, -1376($fp)
label856:
	addi $t0, $fp, -60
	sw $t0, -1388($fp)
	lw $t0, -164($fp)
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
	addi $sp, $sp, -4
	lw $t0, -1372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1404($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1408($fp)
	addi $sp, $sp, 16
	lw $t1, -1408($fp)
	li $t2, 0
	bne $t1, $t2, label853
	j label854
label853:
	li $t0, 22632
	sw $t0, -1412($fp)
	lw $t1, -1412($fp)
	li $t2, 0
	bne $t1, $t2, label858
	j label861
label861:
	addi $t0, $fp, -12
	sw $t0, -1416($fp)
	lw $t0, 8($fp)
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
	lw $t1, -1432($fp)
	li $t2, 0
	bne $t1, $t2, label858
	j label859
label858:
	lw $t0, -560($fp)
	sw $t0, -1436($fp)
	lw $t1, -1436($fp)
	li $t2, 0
	bne $t1, $t2, label862
	j label863
label862:
	li $t0, 24178
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	sw $t0, -1444($fp)
	lw $t0, -1444($fp)
	sw $t0, -1448($fp)
	li $t0, 0
	sw $t0, -1452($fp)
	li $t0, 0
	sw $t0, -1456($fp)
	li $t0, 51317
	sw $t0, -1460($fp)
	lw $t1, -1460($fp)
	li $t2, 0
	bne $t1, $t2, label867
	j label869
label869:
	li $t0, 18904
	sw $t0, -1464($fp)
	lw $t1, -1464($fp)
	li $t2, 0
	bne $t1, $t2, label867
	j label868
label867:
	li $t0, 1
	sw $t0, -1456($fp)
label868:
	lw $t0, -356($fp)
	sw $t0, -1468($fp)
	lw $t0, -128($fp)
	sw $t0, -1472($fp)
	lw $t0, -1468($fp)
	lw $t1, -1472($fp)
	sub $t0, $t0, $t1
	sw $t0, -1476($fp)
	li $t0, 33235
	sw $t0, -1480($fp)
	lw $t0, -1476($fp)
	lw $t1, -1480($fp)
	add $t0, $t0, $t1
	sw $t0, -1484($fp)
	li $t0, 0
	sw $t0, -1488($fp)
	li $t0, 39107
	sw $t0, -1492($fp)
	lw $t0, -356($fp)
	sw $t0, -1496($fp)
	lw $t1, -1492($fp)
	lw $t2, -1496($fp)
	ble $t1, $t2, label870
	j label872
label872:
	li $t0, 50391
	sw $t0, -1500($fp)
	lw $t1, -1500($fp)
	li $t2, 0
	bne $t1, $t2, label870
	j label871
label870:
	li $t0, 1
	sw $t0, -1488($fp)
label871:
	addi $sp, $sp, -4
	lw $t0, -1456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1488($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1504($fp)
	addi $sp, $sp, 16
	lw $t1, -1504($fp)
	li $t2, 0
	bne $t1, $t2, label866
	j label865
label865:
	li $t0, 1
	sw $t0, -1452($fp)
label866:
	li $t0, 0
	sw $t0, -1508($fp)
	addi $t0, $fp, -32
	sw $t0, -1512($fp)
	li $t0, 3
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
	lw $t1, -1528($fp)
	li $t2, 0
	bne $t1, $t2, label873
	j label875
label875:
	li $t0, 47015
	sw $t0, -1532($fp)
	lw $t0, -128($fp)
	sw $t0, -1536($fp)
	lw $t0, -1532($fp)
	lw $t1, -1536($fp)
	mul $t0, $t0, $t1
	sw $t0, -1540($fp)
	li $t0, 0
	lw $t1, -1540($fp)
	sub $t0, $t0, $t1
	sw $t0, -1544($fp)
	lw $t0, -1444($fp)
	sw $t0, -1548($fp)
	lw $t0, -368($fp)
	sw $t0, -1552($fp)
	lw $t0, -1548($fp)
	lw $t1, -1552($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1556($fp)
	lw $t1, -1544($fp)
	lw $t2, -1556($fp)
	blt $t1, $t2, label873
	j label874
label873:
	li $t0, 1
	sw $t0, -1508($fp)
label874:
	li $t0, 0
	sw $t0, -1560($fp)
	addi $t0, $fp, -8
	sw $t0, -1564($fp)
	lw $t0, -356($fp)
	sw $t0, -1568($fp)
	li $t0, 4
	lw $t1, -1568($fp)
	mul $t0, $t0, $t1
	sw $t0, -1572($fp)
	lw $t0, -1572($fp)
	lw $t1, -1564($fp)
	add $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t0, -1576($fp)
	lw $t1, 0($t0)
	sw $t1, -1580($fp)
	li $t0, 0
	sw $t0, -1584($fp)
	lw $t0, 16($fp)
	sw $t0, -1588($fp)
	li $t0, 0
	lw $t1, -1588($fp)
	sub $t0, $t0, $t1
	sw $t0, -1592($fp)
	li $t0, 70
	sw $t0, -1596($fp)
	lw $t1, -1592($fp)
	lw $t2, -1596($fp)
	beq $t1, $t2, label878
	j label879
label878:
	li $t0, 1
	sw $t0, -1584($fp)
label879:
	addi $sp, $sp, -4
	lw $t0, -1584($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1600($fp)
	addi $sp, $sp, 8
	lw $t0, -1580($fp)
	lw $t1, -1600($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1604($fp)
	li $t0, 0
	sw $t0, -1608($fp)
	lw $t0, -356($fp)
	sw $t0, -1612($fp)
	lw $t1, -1612($fp)
	li $t2, 0
	bne $t1, $t2, label880
	j label881
label880:
	li $t0, 1
	sw $t0, -1608($fp)
label881:
	lw $t0, -1604($fp)
	lw $t1, -1608($fp)
	mul $t0, $t0, $t1
	sw $t0, -1616($fp)
	li $t0, 63895
	sw $t0, -1620($fp)
	lw $t1, -1616($fp)
	lw $t2, -1620($fp)
	bge $t1, $t2, label876
	j label877
label876:
	li $t0, 1
	sw $t0, -1560($fp)
label877:
	j label864
label863:
	li $t0, 0
	sw $t0, -1624($fp)
	li $t0, 22459
	sw $t0, -1628($fp)
	jal f10
	sw $v0, -1632($fp)
	addi $sp, $sp, 4
	li $t0, 0
	lw $t1, -1632($fp)
	sub $t0, $t0, $t1
	sw $t0, -1636($fp)
	lw $t0, -1628($fp)
	lw $t1, -1636($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1640($fp)
	lw $t1, -1640($fp)
	li $t2, 0
	bne $t1, $t2, label882
	j label884
label884:
	lw $t0, -380($fp)
	sw $t0, -1644($fp)
	lw $t1, -1644($fp)
	li $t2, 0
	bne $t1, $t2, label882
	j label883
label882:
	li $t0, 1
	sw $t0, -1624($fp)
label883:
label864:
	j label860
label859:
	addi $t0, $fp, -32
	sw $t0, -1648($fp)
	li $t0, 0
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
label860:
	j label852
label854:
	addi $t0, $fp, -8
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
	addi $t0, $fp, -12
	sw $t0, -1688($fp)
	li $t0, 0
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
	lw $t0, -116($fp)
	sw $t0, -1708($fp)
	lw $t0, -1708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -128($fp)
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -140($fp)
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -152($fp)
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -164($fp)
	sw $t0, -1724($fp)
	lw $t0, -1724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -176($fp)
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -212($fp)
	sw $t0, -1740($fp)
	lw $t0, -1740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	addi $t0, $fp, -32
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
	li $t0, 4
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
	lw $t0, -344($fp)
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -356($fp)
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -1856($fp)
	lw $t0, -1856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
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
	addi $t0, $fp, -60
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
	addi $t0, $fp, -60
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
	addi $t0, $fp, -60
	sw $t0, -1920($fp)
	li $t0, 3
	sw $t0, -1924($fp)
	li $t0, 4
	lw $t1, -1924($fp)
	mul $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t0, -1928($fp)
	lw $t1, -1920($fp)
	add $t0, $t0, $t1
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	lw $t1, 0($t0)
	sw $t1, -1936($fp)
	lw $t0, -1936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
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
	lw $t0, -1956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1960($fp)
	li $t0, 5
	sw $t0, -1964($fp)
	li $t0, 4
	lw $t1, -1964($fp)
	mul $t0, $t0, $t1
	sw $t0, -1968($fp)
	lw $t0, -1968($fp)
	lw $t1, -1960($fp)
	add $t0, $t0, $t1
	sw $t0, -1972($fp)
	lw $t0, -1972($fp)
	lw $t1, 0($t0)
	sw $t1, -1976($fp)
	lw $t0, -1976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1980($fp)
	li $t0, 6
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
	lw $t0, -1996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -560($fp)
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -2004($fp)
	lw $t0, -2004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2008($fp)
	addi $t0, $fp, -12
	sw $t0, -2012($fp)
	li $t0, 0
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
	addi $t0, $fp, -60
	sw $t0, -2032($fp)
	lw $t0, -212($fp)
	sw $t0, -2036($fp)
	li $t0, 4
	lw $t1, -2036($fp)
	mul $t0, $t0, $t1
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	lw $t1, -2032($fp)
	add $t0, $t0, $t1
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	lw $t1, 0($t0)
	sw $t1, -2048($fp)
	li $t0, 0
	lw $t1, -2048($fp)
	sub $t0, $t0, $t1
	sw $t0, -2052($fp)
	lw $t0, -2028($fp)
	lw $t1, -2052($fp)
	add $t0, $t0, $t1
	sw $t0, -2056($fp)
	lw $t1, -2056($fp)
	li $t2, 0
	bne $t1, $t2, label887
	j label886
label887:
	lw $t0, -176($fp)
	sw $t0, -2060($fp)
	li $t0, 56245
	sw $t0, -2064($fp)
	lw $t0, -2060($fp)
	lw $t1, -2064($fp)
	add $t0, $t0, $t1
	sw $t0, -2068($fp)
	li $t0, 61173
	sw $t0, -2072($fp)
	lw $t0, -2068($fp)
	lw $t1, -2072($fp)
	add $t0, $t0, $t1
	sw $t0, -2076($fp)
	lw $t1, -2076($fp)
	li $t2, 0
	bne $t1, $t2, label885
	j label886
label885:
	li $t0, 1
	sw $t0, -2008($fp)
label886:
	lw $ra, -4($fp)
	lw $v0, -2008($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -2080($fp)
	li $t0, 7565
	sw $t0, -2084($fp)
	li $t0, 6025
	sw $t0, -2088($fp)
	li $t0, 35835
	sw $t0, -2092($fp)
	lw $t0, -2088($fp)
	lw $t1, -2092($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2096($fp)
	lw $t1, -2084($fp)
	lw $t2, -2096($fp)
	bgt $t1, $t2, label888
	j label889
label888:
	li $t0, 1
	sw $t0, -2080($fp)
label889:
	addi $t0, $fp, -8
	sw $t0, -2100($fp)
	li $t0, 0
	sw $t0, -2104($fp)
	li $t0, 4
	lw $t1, -2104($fp)
	mul $t0, $t0, $t1
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	lw $t1, -2100($fp)
	add $t0, $t0, $t1
	sw $t0, -2112($fp)
	lw $t0, -2112($fp)
	lw $t1, 0($t0)
	sw $t1, -2116($fp)
	lw $t0, -2116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -2120($fp)
	li $t0, 0
	sw $t0, -2124($fp)
	li $t0, 4
	lw $t1, -2124($fp)
	mul $t0, $t0, $t1
	sw $t0, -2128($fp)
	lw $t0, -2128($fp)
	lw $t1, -2120($fp)
	add $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	lw $t1, 0($t0)
	sw $t1, -2136($fp)
	lw $t0, -2136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -116($fp)
	sw $t0, -2140($fp)
	lw $t0, -2140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -128($fp)
	sw $t0, -2144($fp)
	lw $t0, -2144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -140($fp)
	sw $t0, -2148($fp)
	lw $t0, -2148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -152($fp)
	sw $t0, -2152($fp)
	lw $t0, -2152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -164($fp)
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -176($fp)
	sw $t0, -2160($fp)
	lw $t0, -2160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -200($fp)
	sw $t0, -2168($fp)
	lw $t0, -2168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -212($fp)
	sw $t0, -2172($fp)
	lw $t0, -2172($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2176($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -2196($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -2216($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -2236($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -2256($fp)
	li $t0, 4
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
	lw $t0, -344($fp)
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -356($fp)
	sw $t0, -2280($fp)
	lw $t0, -2280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -368($fp)
	sw $t0, -2284($fp)
	lw $t0, -2284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -380($fp)
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2292($fp)
	li $t0, 0
	sw $t0, -2296($fp)
	li $t0, 4
	lw $t1, -2296($fp)
	mul $t0, $t0, $t1
	sw $t0, -2300($fp)
	lw $t0, -2300($fp)
	lw $t1, -2292($fp)
	add $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $t0, -2304($fp)
	lw $t1, 0($t0)
	sw $t1, -2308($fp)
	lw $t0, -2308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2312($fp)
	li $t0, 1
	sw $t0, -2316($fp)
	li $t0, 4
	lw $t1, -2316($fp)
	mul $t0, $t0, $t1
	sw $t0, -2320($fp)
	lw $t0, -2320($fp)
	lw $t1, -2312($fp)
	add $t0, $t0, $t1
	sw $t0, -2324($fp)
	lw $t0, -2324($fp)
	lw $t1, 0($t0)
	sw $t1, -2328($fp)
	lw $t0, -2328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2332($fp)
	li $t0, 2
	sw $t0, -2336($fp)
	li $t0, 4
	lw $t1, -2336($fp)
	mul $t0, $t0, $t1
	sw $t0, -2340($fp)
	lw $t0, -2340($fp)
	lw $t1, -2332($fp)
	add $t0, $t0, $t1
	sw $t0, -2344($fp)
	lw $t0, -2344($fp)
	lw $t1, 0($t0)
	sw $t1, -2348($fp)
	lw $t0, -2348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2352($fp)
	li $t0, 3
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
	addi $t0, $fp, -60
	sw $t0, -2372($fp)
	li $t0, 4
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
	addi $t0, $fp, -60
	sw $t0, -2392($fp)
	li $t0, 5
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
	addi $t0, $fp, -60
	sw $t0, -2412($fp)
	li $t0, 6
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
	lw $t0, -560($fp)
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -572($fp)
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2440($fp)
	li $t0, 0
	sw $t0, -2444($fp)
	addi $t0, $fp, -8
	sw $t0, -2448($fp)
	lw $t0, 8($fp)
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
	lw $t1, -2464($fp)
	li $t2, 0
	bne $t1, $t2, label893
	j label892
label892:
	li $t0, 1
	sw $t0, -2444($fp)
label893:
	addi $t0, $fp, -60
	sw $t0, -2468($fp)
	li $t0, 3
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
	lw $t0, -2444($fp)
	lw $t1, -2484($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2488($fp)
	lw $t0, -200($fp)
	sw $t0, -2492($fp)
	li $t0, 22666
	sw $t0, -2496($fp)
	lw $t0, -2492($fp)
	lw $t1, -2496($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2500($fp)
	lw $t1, -2488($fp)
	lw $t2, -2500($fp)
	bne $t1, $t2, label890
	j label891
label890:
	li $t0, 1
	sw $t0, -2440($fp)
label891:
	lw $ra, -4($fp)
	lw $v0, -2440($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1580
	li $t0, 54775
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	li $t0, 32252
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
	li $t0, 38886
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
	li $t0, 45573
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
	li $t0, 64853
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
	li $t0, 61518
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
	li $t0, 4216
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
	li $t0, 38424
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	sw $t0, -244($fp)
	li $t0, 46373
	sw $t0, -248($fp)
	addi $t0, $fp, -68
	sw $t0, -252($fp)
	li $t0, 0
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
	li $t0, 37451
	sw $t0, -272($fp)
	addi $t0, $fp, -68
	sw $t0, -276($fp)
	li $t0, 1
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
	li $t0, 24205
	sw $t0, -296($fp)
	addi $t0, $fp, -68
	sw $t0, -300($fp)
	li $t0, 2
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
	li $t0, 65277
	sw $t0, -320($fp)
	addi $t0, $fp, -68
	sw $t0, -324($fp)
	li $t0, 3
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
	li $t0, 8997
	sw $t0, -344($fp)
	addi $t0, $fp, -68
	sw $t0, -348($fp)
	li $t0, 4
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
	li $t0, 60166
	sw $t0, -368($fp)
	addi $t0, $fp, -68
	sw $t0, -372($fp)
	li $t0, 5
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
	li $t0, 46757
	sw $t0, -392($fp)
	addi $t0, $fp, -68
	sw $t0, -396($fp)
	li $t0, 6
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
	li $t0, 9067
	sw $t0, -416($fp)
	addi $t0, $fp, -68
	sw $t0, -420($fp)
	li $t0, 7
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
	li $t0, 58525
	sw $t0, -440($fp)
	addi $t0, $fp, -68
	sw $t0, -444($fp)
	li $t0, 8
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
	li $t0, 3680
	sw $t0, -464($fp)
	addi $t0, $fp, -68
	sw $t0, -468($fp)
	li $t0, 9
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
	li $t0, 62015
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	li $t0, 6001
	sw $t0, -500($fp)
	addi $t0, $fp, -76
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
	li $t0, 15833
	sw $t0, -524($fp)
	addi $t0, $fp, -76
	sw $t0, -528($fp)
	li $t0, 1
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
	lw $t0, -84($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -552($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -572($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -592($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -612($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -632($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -652($fp)
	li $t0, 5
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
	lw $t0, -240($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -676($fp)
	li $t0, 0
	sw $t0, -680($fp)
	li $t0, 4
	lw $t1, -680($fp)
	mul $t0, $t0, $t1
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	lw $t1, -676($fp)
	add $t0, $t0, $t1
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	lw $t1, 0($t0)
	sw $t1, -692($fp)
	lw $t0, -692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -696($fp)
	li $t0, 1
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
	lw $t0, -712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -716($fp)
	li $t0, 2
	sw $t0, -720($fp)
	li $t0, 4
	lw $t1, -720($fp)
	mul $t0, $t0, $t1
	sw $t0, -724($fp)
	lw $t0, -724($fp)
	lw $t1, -716($fp)
	add $t0, $t0, $t1
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	lw $t1, 0($t0)
	sw $t1, -732($fp)
	lw $t0, -732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -736($fp)
	li $t0, 3
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
	lw $t0, -752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -756($fp)
	li $t0, 4
	sw $t0, -760($fp)
	li $t0, 4
	lw $t1, -760($fp)
	mul $t0, $t0, $t1
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	lw $t1, -756($fp)
	add $t0, $t0, $t1
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	lw $t1, 0($t0)
	sw $t1, -772($fp)
	lw $t0, -772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -776($fp)
	li $t0, 5
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
	addi $t0, $fp, -68
	sw $t0, -796($fp)
	li $t0, 6
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
	addi $t0, $fp, -68
	sw $t0, -816($fp)
	li $t0, 7
	sw $t0, -820($fp)
	li $t0, 4
	lw $t1, -820($fp)
	mul $t0, $t0, $t1
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	lw $t1, -816($fp)
	add $t0, $t0, $t1
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	lw $t1, 0($t0)
	sw $t1, -832($fp)
	lw $t0, -832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -836($fp)
	li $t0, 8
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
	addi $t0, $fp, -68
	sw $t0, -856($fp)
	li $t0, 9
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
	lw $t0, -492($fp)
	sw $t0, -876($fp)
	lw $t0, -876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -880($fp)
	li $t0, 0
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
	addi $t0, $fp, -76
	sw $t0, -900($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -920($fp)
	li $t0, 0
	sw $t0, -924($fp)
	lw $t0, -492($fp)
	sw $t0, -928($fp)
	lw $t0, -84($fp)
	sw $t0, -932($fp)
	lw $t1, -928($fp)
	lw $t2, -932($fp)
	bne $t1, $t2, label899
	j label900
label899:
	li $t0, 1
	sw $t0, -924($fp)
label900:
	li $t0, 33911
	sw $t0, -936($fp)
	lw $t1, -924($fp)
	lw $t2, -936($fp)
	beq $t1, $t2, label898
	j label895
label898:
	li $t0, 31058
	sw $t0, -940($fp)
	li $t0, 0
	lw $t1, -940($fp)
	sub $t0, $t0, $t1
	sw $t0, -944($fp)
	lw $t1, -944($fp)
	li $t2, 0
	bne $t1, $t2, label897
	j label895
label897:
	li $t0, 0
	sw $t0, -948($fp)
	li $t0, 6542
	sw $t0, -952($fp)
	lw $t0, 8($fp)
	sw $t0, -956($fp)
	lw $t1, -952($fp)
	lw $t2, -956($fp)
	bne $t1, $t2, label901
	j label902
label901:
	li $t0, 1
	sw $t0, -948($fp)
label902:
	lw $t0, -240($fp)
	sw $t0, -960($fp)
	lw $t1, -948($fp)
	lw $t2, -960($fp)
	bne $t1, $t2, label896
	j label895
label896:
	addi $t0, $fp, -28
	sw $t0, -964($fp)
	lw $t0, -240($fp)
	sw $t0, -968($fp)
	li $t0, 4
	lw $t1, -968($fp)
	mul $t0, $t0, $t1
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	lw $t1, -964($fp)
	add $t0, $t0, $t1
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	lw $t1, 0($t0)
	sw $t1, -980($fp)
	li $t0, 0
	lw $t1, -980($fp)
	sub $t0, $t0, $t1
	sw $t0, -984($fp)
	lw $t1, -984($fp)
	li $t2, 0
	bne $t1, $t2, label894
	j label895
label894:
	li $t0, 1
	sw $t0, -920($fp)
label895:
	lw $ra, -4($fp)
	lw $v0, -920($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label903:
	li $t0, 0
	sw $t0, -988($fp)
	li $t0, 29548
	sw $t0, -992($fp)
	lw $t1, -992($fp)
	li $t2, 0
	bne $t1, $t2, label907
	j label906
label906:
	li $t0, 1
	sw $t0, -988($fp)
label907:
	li $t0, 0
	lw $t1, -988($fp)
	sub $t0, $t0, $t1
	sw $t0, -996($fp)
	lw $t0, -996($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -1000($fp)
	lw $t1, -1000($fp)
	li $t2, 0
	bne $t1, $t2, label904
	j label905
label904:
	li $t0, 0
	sw $t0, -1004($fp)
	li $t0, 38623
	sw $t0, -1008($fp)
	lw $t1, -1008($fp)
	li $t2, 0
	bne $t1, $t2, label911
	j label910
label911:
	lw $t0, -240($fp)
	sw $t0, -1012($fp)
	li $t0, 12567
	sw $t0, -1016($fp)
	lw $t0, -1012($fp)
	lw $t1, -1016($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1020($fp)
	li $t0, 65384
	sw $t0, -1024($fp)
	lw $t1, -1020($fp)
	lw $t2, -1024($fp)
	bne $t1, $t2, label908
	j label910
label910:
	lw $t0, 8($fp)
	sw $t0, -1028($fp)
	lw $t1, -1028($fp)
	li $t2, 0
	bne $t1, $t2, label908
	j label909
label908:
	li $t0, 1
	sw $t0, -1004($fp)
label909:
	lw $ra, -4($fp)
	lw $v0, -1004($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label903
label905:
	lw $t0, -84($fp)
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -1036($fp)
	li $t0, 0
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
	addi $t0, $fp, -28
	sw $t0, -1056($fp)
	li $t0, 1
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
	addi $t0, $fp, -28
	sw $t0, -1076($fp)
	li $t0, 2
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
	addi $t0, $fp, -28
	sw $t0, -1096($fp)
	li $t0, 3
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
	addi $t0, $fp, -28
	sw $t0, -1116($fp)
	li $t0, 4
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
	addi $t0, $fp, -28
	sw $t0, -1136($fp)
	li $t0, 5
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
	lw $t0, -240($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1160($fp)
	li $t0, 0
	sw $t0, -1164($fp)
	li $t0, 4
	lw $t1, -1164($fp)
	mul $t0, $t0, $t1
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	lw $t1, -1160($fp)
	add $t0, $t0, $t1
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	lw $t1, 0($t0)
	sw $t1, -1176($fp)
	lw $t0, -1176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1180($fp)
	li $t0, 1
	sw $t0, -1184($fp)
	li $t0, 4
	lw $t1, -1184($fp)
	mul $t0, $t0, $t1
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	lw $t1, -1180($fp)
	add $t0, $t0, $t1
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	lw $t1, 0($t0)
	sw $t1, -1196($fp)
	lw $t0, -1196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1200($fp)
	li $t0, 2
	sw $t0, -1204($fp)
	li $t0, 4
	lw $t1, -1204($fp)
	mul $t0, $t0, $t1
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	lw $t1, -1200($fp)
	add $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	lw $t1, 0($t0)
	sw $t1, -1216($fp)
	lw $t0, -1216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1220($fp)
	li $t0, 3
	sw $t0, -1224($fp)
	li $t0, 4
	lw $t1, -1224($fp)
	mul $t0, $t0, $t1
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	lw $t1, -1220($fp)
	add $t0, $t0, $t1
	sw $t0, -1232($fp)
	lw $t0, -1232($fp)
	lw $t1, 0($t0)
	sw $t1, -1236($fp)
	lw $t0, -1236($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1240($fp)
	li $t0, 4
	sw $t0, -1244($fp)
	li $t0, 4
	lw $t1, -1244($fp)
	mul $t0, $t0, $t1
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	lw $t1, -1240($fp)
	add $t0, $t0, $t1
	sw $t0, -1252($fp)
	lw $t0, -1252($fp)
	lw $t1, 0($t0)
	sw $t1, -1256($fp)
	lw $t0, -1256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1260($fp)
	li $t0, 5
	sw $t0, -1264($fp)
	li $t0, 4
	lw $t1, -1264($fp)
	mul $t0, $t0, $t1
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	lw $t1, -1260($fp)
	add $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	lw $t1, 0($t0)
	sw $t1, -1276($fp)
	lw $t0, -1276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1280($fp)
	li $t0, 6
	sw $t0, -1284($fp)
	li $t0, 4
	lw $t1, -1284($fp)
	mul $t0, $t0, $t1
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	lw $t1, -1280($fp)
	add $t0, $t0, $t1
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	lw $t1, 0($t0)
	sw $t1, -1296($fp)
	lw $t0, -1296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -68
	sw $t0, -1300($fp)
	li $t0, 7
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
	addi $t0, $fp, -68
	sw $t0, -1320($fp)
	li $t0, 8
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
	addi $t0, $fp, -68
	sw $t0, -1340($fp)
	li $t0, 9
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
	lw $t0, -492($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -1364($fp)
	li $t0, 0
	sw $t0, -1368($fp)
	li $t0, 4
	lw $t1, -1368($fp)
	mul $t0, $t0, $t1
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	lw $t1, -1364($fp)
	add $t0, $t0, $t1
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	lw $t1, 0($t0)
	sw $t1, -1380($fp)
	lw $t0, -1380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -1384($fp)
	li $t0, 1
	sw $t0, -1388($fp)
	li $t0, 4
	lw $t1, -1388($fp)
	mul $t0, $t0, $t1
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	lw $t1, -1384($fp)
	add $t0, $t0, $t1
	sw $t0, -1396($fp)
	lw $t0, -1396($fp)
	lw $t1, 0($t0)
	sw $t1, -1400($fp)
	lw $t0, -1400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1404($fp)
	addi $t0, $fp, -28
	sw $t0, -1408($fp)
	li $t0, 2
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
	li $t0, 22514
	sw $t0, -1428($fp)
	lw $t1, -1424($fp)
	lw $t2, -1428($fp)
	bgt $t1, $t2, label915
	j label914
label915:
	li $t0, 0
	sw $t0, -1432($fp)
	li $t0, 21689
	sw $t0, -1436($fp)
	li $t0, 48598
	sw $t0, -1440($fp)
	lw $t1, -1436($fp)
	lw $t2, -1440($fp)
	bge $t1, $t2, label916
	j label917
label916:
	li $t0, 1
	sw $t0, -1432($fp)
label917:
	li $t0, 61400
	sw $t0, -1444($fp)
	lw $t1, -1432($fp)
	lw $t2, -1444($fp)
	ble $t1, $t2, label912
	j label914
label914:
	addi $t0, $fp, -76
	sw $t0, -1448($fp)
	lw $t0, 8($fp)
	sw $t0, -1452($fp)
	li $t0, 4
	lw $t1, -1452($fp)
	mul $t0, $t0, $t1
	sw $t0, -1456($fp)
	lw $t0, -1456($fp)
	lw $t1, -1448($fp)
	add $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t0, -1460($fp)
	lw $t1, 0($t0)
	sw $t1, -1464($fp)
	li $t0, 43394
	sw $t0, -1468($fp)
	li $t0, 0
	sw $t0, -1472($fp)
	li $t0, 0
	sw $t0, -1476($fp)
	lw $t0, -240($fp)
	sw $t0, -1480($fp)
	lw $t0, 8($fp)
	sw $t0, -1484($fp)
	lw $t1, -1480($fp)
	lw $t2, -1484($fp)
	bgt $t1, $t2, label920
	j label921
label920:
	li $t0, 1
	sw $t0, -1476($fp)
label921:
	lw $t0, -240($fp)
	sw $t0, -1488($fp)
	lw $t1, -1476($fp)
	lw $t2, -1488($fp)
	blt $t1, $t2, label918
	j label919
label918:
	li $t0, 1
	sw $t0, -1472($fp)
label919:
	li $t0, 0
	sw $t0, -1492($fp)
	li $t0, 20803
	sw $t0, -1496($fp)
	li $t0, 38220
	sw $t0, -1500($fp)
	lw $t0, -1496($fp)
	lw $t1, -1500($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1504($fp)
	lw $t1, -1504($fp)
	li $t2, 0
	bne $t1, $t2, label924
	j label923
label924:
	lw $t0, -492($fp)
	sw $t0, -1508($fp)
	lw $t1, -1508($fp)
	li $t2, 0
	bne $t1, $t2, label922
	j label923
label922:
	li $t0, 1
	sw $t0, -1492($fp)
label923:
	addi $sp, $sp, -4
	lw $t0, -1468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1492($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1512($fp)
	addi $sp, $sp, 16
	li $t0, 57383
	sw $t0, -1516($fp)
	li $t0, 5943
	sw $t0, -1520($fp)
	lw $t0, -1516($fp)
	lw $t1, -1520($fp)
	mul $t0, $t0, $t1
	sw $t0, -1524($fp)
	lw $t0, 8($fp)
	sw $t0, -1528($fp)
	addi $t0, $fp, -68
	sw $t0, -1532($fp)
	li $t0, 7
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
	addi $t0, $fp, -28
	sw $t0, -1552($fp)
	lw $t0, 8($fp)
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
	lw $t0, -492($fp)
	sw $t0, -1572($fp)
	lw $t0, -1568($fp)
	lw $t1, -1572($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1576($fp)
	addi $sp, $sp, -4
	lw $t0, -1512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1524($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1576($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1580($fp)
	addi $sp, $sp, 24
	lw $t0, -1464($fp)
	lw $t1, -1580($fp)
	sub $t0, $t0, $t1
	sw $t0, -1584($fp)
	lw $t1, -1584($fp)
	li $t2, 0
	bne $t1, $t2, label912
	j label913
label912:
	li $t0, 1
	sw $t0, -1404($fp)
label913:
	lw $ra, -4($fp)
	lw $v0, -1404($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -788
	li $t0, 45009
	sw $t0, -44($fp)
	addi $t0, $fp, -40
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
	li $t0, 37962
	sw $t0, -68($fp)
	addi $t0, $fp, -40
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
	li $t0, 52391
	sw $t0, -92($fp)
	addi $t0, $fp, -40
	sw $t0, -96($fp)
	li $t0, 2
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
	li $t0, 39639
	sw $t0, -116($fp)
	addi $t0, $fp, -40
	sw $t0, -120($fp)
	li $t0, 3
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
	li $t0, 19183
	sw $t0, -140($fp)
	addi $t0, $fp, -40
	sw $t0, -144($fp)
	li $t0, 4
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
	li $t0, 61458
	sw $t0, -164($fp)
	addi $t0, $fp, -40
	sw $t0, -168($fp)
	li $t0, 5
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
	li $t0, 32628
	sw $t0, -188($fp)
	addi $t0, $fp, -40
	sw $t0, -192($fp)
	li $t0, 6
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
	li $t0, 22863
	sw $t0, -212($fp)
	addi $t0, $fp, -40
	sw $t0, -216($fp)
	li $t0, 7
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
	li $t0, 57937
	sw $t0, -236($fp)
	addi $t0, $fp, -40
	sw $t0, -240($fp)
	li $t0, 8
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
	li $t0, 38629
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	li $t0, 38696
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	li $t0, 26312
	sw $t0, -284($fp)
	lw $t0, -284($fp)
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	lw $t0, 16($fp)
	sw $t0, -296($fp)
	li $t0, 4152
	sw $t0, -300($fp)
	lw $t0, -296($fp)
	lw $t1, -300($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -304($fp)
	lw $t0, -304($fp)
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -308($fp)
	lw $t1, -308($fp)
	li $t2, 0
	bne $t1, $t2, label925
	j label926
label925:
label928:
	li $t0, 0
	sw $t0, -312($fp)
	lw $t0, -276($fp)
	sw $t0, -316($fp)
	li $t0, 0
	lw $t1, -316($fp)
	sub $t0, $t0, $t1
	sw $t0, -320($fp)
	lw $t1, -320($fp)
	li $t2, 0
	bne $t1, $t2, label933
	j label932
label933:
	lw $t0, 8($fp)
	sw $t0, -324($fp)
	lw $t1, -324($fp)
	li $t2, 0
	bne $t1, $t2, label931
	j label932
label931:
	li $t0, 1
	sw $t0, -312($fp)
label932:
	li $t0, 45238
	sw $t0, -328($fp)
	lw $t0, -328($fp)
	sw $t0, 16($fp)
	lw $t0, 16($fp)
	sw $t0, -332($fp)
	addi $sp, $sp, -4
	lw $t0, -312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -332($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -336($fp)
	addi $sp, $sp, 12
	lw $t1, -336($fp)
	li $t2, 0
	bne $t1, $t2, label929
	j label930
label929:
	li $t0, 0
	sw $t0, -340($fp)
	li $t0, 55709
	sw $t0, -344($fp)
	lw $t0, 12($fp)
	sw $t0, -348($fp)
	lw $t1, -344($fp)
	lw $t2, -348($fp)
	beq $t1, $t2, label936
	j label935
label936:
	li $t0, 9689
	sw $t0, -352($fp)
	lw $t1, -352($fp)
	li $t2, 0
	bne $t1, $t2, label934
	j label935
label934:
	li $t0, 1
	sw $t0, -340($fp)
label935:
	li $t0, 0
	sw $t0, -356($fp)
	lw $t0, 16($fp)
	sw $t0, -360($fp)
	li $t0, 0
	lw $t1, -360($fp)
	sub $t0, $t0, $t1
	sw $t0, -364($fp)
	lw $t1, -364($fp)
	li $t2, 0
	bne $t1, $t2, label938
	j label937
label937:
	li $t0, 1
	sw $t0, -356($fp)
label938:
	lw $t0, 8($fp)
	sw $t0, -368($fp)
	li $t0, 0
	sw $t0, -372($fp)
	lw $t0, 16($fp)
	sw $t0, -376($fp)
	lw $t1, -376($fp)
	li $t2, 0
	bne $t1, $t2, label939
	j label941
label941:
	li $t0, 57806
	sw $t0, -380($fp)
	lw $t1, -380($fp)
	li $t2, 0
	bne $t1, $t2, label939
	j label940
label939:
	li $t0, 1
	sw $t0, -372($fp)
label940:
	li $t0, 0
	sw $t0, -384($fp)
	li $t0, 55861
	sw $t0, -388($fp)
	li $t0, 42775
	sw $t0, -392($fp)
	lw $t1, -388($fp)
	lw $t2, -392($fp)
	blt $t1, $t2, label942
	j label944
label944:
	lw $t0, 12($fp)
	sw $t0, -396($fp)
	lw $t1, -396($fp)
	li $t2, 0
	bne $t1, $t2, label942
	j label943
label942:
	li $t0, 1
	sw $t0, -384($fp)
label943:
	addi $sp, $sp, -4
	lw $t0, -368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -372($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -384($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -400($fp)
	addi $sp, $sp, 16
	addi $sp, $sp, -4
	lw $t0, -340($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -356($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -400($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -404($fp)
	addi $sp, $sp, 16
	li $t0, 0
	sw $t0, -408($fp)
	lw $t0, -288($fp)
	sw $t0, -412($fp)
	lw $t0, 8($fp)
	sw $t0, -416($fp)
	lw $t1, -412($fp)
	lw $t2, -416($fp)
	blt $t1, $t2, label945
	j label947
label947:
	lw $t0, -264($fp)
	sw $t0, -420($fp)
	lw $t1, -420($fp)
	li $t2, 0
	bne $t1, $t2, label945
	j label946
label945:
	li $t0, 1
	sw $t0, -408($fp)
label946:
	li $t0, 0
	sw $t0, -424($fp)
	lw $t0, 12($fp)
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -432($fp)
	li $t0, 0
	sw $t0, -436($fp)
	li $t0, 33106
	sw $t0, -440($fp)
	lw $t1, -440($fp)
	li $t2, 0
	bne $t1, $t2, label951
	j label950
label950:
	li $t0, 1
	sw $t0, -436($fp)
label951:
	addi $sp, $sp, -4
	lw $t0, -432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -436($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -444($fp)
	addi $sp, $sp, 12
	li $t0, 39593
	sw $t0, -448($fp)
	lw $t1, -444($fp)
	lw $t2, -448($fp)
	bgt $t1, $t2, label948
	j label949
label948:
	li $t0, 1
	sw $t0, -424($fp)
label949:
	addi $t0, $fp, -40
	sw $t0, -452($fp)
	li $t0, 7
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
	li $t0, 8552
	sw $t0, -472($fp)
	lw $t0, -468($fp)
	lw $t1, -472($fp)
	sub $t0, $t0, $t1
	sw $t0, -476($fp)
	li $t0, 8616
	sw $t0, -480($fp)
	lw $t0, 8($fp)
	sw $t0, -484($fp)
	lw $t0, -480($fp)
	lw $t1, -484($fp)
	sub $t0, $t0, $t1
	sw $t0, -488($fp)
	li $t0, 12687
	sw $t0, -492($fp)
	lw $t0, -488($fp)
	lw $t1, -492($fp)
	sub $t0, $t0, $t1
	sw $t0, -496($fp)
	addi $sp, $sp, -4
	lw $t0, -408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -496($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -500($fp)
	addi $sp, $sp, 20
	lw $t0, -404($fp)
	lw $t1, -500($fp)
	mul $t0, $t0, $t1
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -508($fp)
	j label928
label930:
	j label927
label926:
	li $t0, 0
	sw $t0, -512($fp)
	li $t0, 0
	sw $t0, -516($fp)
	li $t0, 399
	sw $t0, -520($fp)
	addi $t0, $fp, -40
	sw $t0, -524($fp)
	lw $t0, -288($fp)
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
	lw $t1, -520($fp)
	lw $t2, -540($fp)
	ble $t1, $t2, label954
	j label955
label954:
	li $t0, 1
	sw $t0, -516($fp)
label955:
	li $t0, 39049
	sw $t0, -544($fp)
	li $t0, 60396
	sw $t0, -548($fp)
	lw $t0, -544($fp)
	lw $t1, -548($fp)
	add $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t0, -288($fp)
	sw $t0, -556($fp)
	lw $t0, -552($fp)
	lw $t1, -556($fp)
	sub $t0, $t0, $t1
	sw $t0, -560($fp)
	addi $sp, $sp, -4
	lw $t0, -560($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -564($fp)
	addi $sp, $sp, 8
	lw $t1, -516($fp)
	lw $t2, -564($fp)
	bne $t1, $t2, label952
	j label953
label952:
	li $t0, 1
	sw $t0, -512($fp)
label953:
label927:
	addi $t0, $fp, -40
	sw $t0, -568($fp)
	li $t0, 0
	sw $t0, -572($fp)
	li $t0, 4
	lw $t1, -572($fp)
	mul $t0, $t0, $t1
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	lw $t1, -568($fp)
	add $t0, $t0, $t1
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	lw $t1, 0($t0)
	sw $t1, -584($fp)
	lw $t0, -584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -588($fp)
	li $t0, 1
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
	lw $t0, -604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -608($fp)
	li $t0, 2
	sw $t0, -612($fp)
	li $t0, 4
	lw $t1, -612($fp)
	mul $t0, $t0, $t1
	sw $t0, -616($fp)
	lw $t0, -616($fp)
	lw $t1, -608($fp)
	add $t0, $t0, $t1
	sw $t0, -620($fp)
	lw $t0, -620($fp)
	lw $t1, 0($t0)
	sw $t1, -624($fp)
	lw $t0, -624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -628($fp)
	li $t0, 3
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
	addi $t0, $fp, -40
	sw $t0, -648($fp)
	li $t0, 4
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
	addi $t0, $fp, -40
	sw $t0, -668($fp)
	li $t0, 5
	sw $t0, -672($fp)
	li $t0, 4
	lw $t1, -672($fp)
	mul $t0, $t0, $t1
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	lw $t1, -668($fp)
	add $t0, $t0, $t1
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	lw $t1, 0($t0)
	sw $t1, -684($fp)
	lw $t0, -684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -688($fp)
	li $t0, 6
	sw $t0, -692($fp)
	li $t0, 4
	lw $t1, -692($fp)
	mul $t0, $t0, $t1
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	lw $t1, -688($fp)
	add $t0, $t0, $t1
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	lw $t1, 0($t0)
	sw $t1, -704($fp)
	lw $t0, -704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -708($fp)
	li $t0, 7
	sw $t0, -712($fp)
	li $t0, 4
	lw $t1, -712($fp)
	mul $t0, $t0, $t1
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	lw $t1, -708($fp)
	add $t0, $t0, $t1
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	lw $t1, 0($t0)
	sw $t1, -724($fp)
	lw $t0, -724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -728($fp)
	li $t0, 8
	sw $t0, -732($fp)
	li $t0, 4
	lw $t1, -732($fp)
	mul $t0, $t0, $t1
	sw $t0, -736($fp)
	lw $t0, -736($fp)
	lw $t1, -728($fp)
	add $t0, $t0, $t1
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	lw $t1, 0($t0)
	sw $t1, -744($fp)
	lw $t0, -744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -264($fp)
	sw $t0, -748($fp)
	lw $t0, -748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -276($fp)
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -288($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -760($fp)
	li $t0, 38619
	sw $t0, -764($fp)
	addi $t0, $fp, -40
	sw $t0, -768($fp)
	li $t0, 0
	sw $t0, -772($fp)
	lw $t0, 4($fp)
	sw $t0, -776($fp)
	lw $t1, -776($fp)
	li $t2, 0
	bne $t1, $t2, label960
	j label959
label960:
	li $t0, 16907
	sw $t0, -780($fp)
	lw $t1, -780($fp)
	li $t2, 0
	bne $t1, $t2, label958
	j label959
label958:
	li $t0, 1
	sw $t0, -772($fp)
label959:
	li $t0, 4
	lw $t1, -772($fp)
	mul $t0, $t0, $t1
	sw $t0, -784($fp)
	lw $t0, -784($fp)
	lw $t1, -768($fp)
	add $t0, $t0, $t1
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	lw $t1, 0($t0)
	sw $t1, -792($fp)
	lw $t1, -764($fp)
	lw $t2, -792($fp)
	bne $t1, $t2, label956
	j label957
label956:
	li $t0, 1
	sw $t0, -760($fp)
label957:
	lw $ra, -4($fp)
	lw $v0, -760($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -616
	li $t0, 39869
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
	li $t0, 11045
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
	li $t0, 3762
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
	li $t0, 13972
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
	li $t0, 30228
	sw $t0, -136($fp)
	addi $t0, $fp, -124
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
	li $t0, 65220
	sw $t0, -160($fp)
	addi $t0, $fp, -124
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
	li $t0, 46600
	sw $t0, -184($fp)
	addi $t0, $fp, -132
	sw $t0, -188($fp)
	li $t0, 0
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
	li $t0, 53092
	sw $t0, -208($fp)
	addi $t0, $fp, -132
	sw $t0, -212($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -232($fp)
	li $t0, 57622
	sw $t0, -236($fp)
	lw $t1, -236($fp)
	li $t2, 0
	bne $t1, $t2, label962
	j label961
label961:
	li $t0, 1
	sw $t0, -232($fp)
label962:
	addi $t0, $fp, -20
	sw $t0, -240($fp)
	lw $t0, 4($fp)
	sw $t0, -244($fp)
	li $t0, 4
	lw $t1, -244($fp)
	mul $t0, $t0, $t1
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	lw $t1, -240($fp)
	add $t0, $t0, $t1
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	lw $t1, 0($t0)
	sw $t1, -256($fp)
	lw $t0, -232($fp)
	lw $t1, -256($fp)
	mul $t0, $t0, $t1
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -264($fp)
	lw $t0, 4($fp)
	sw $t0, -268($fp)
	li $t0, 19694
	sw $t0, -272($fp)
	lw $t0, -268($fp)
	lw $t1, -272($fp)
	mul $t0, $t0, $t1
	sw $t0, -276($fp)
	li $t0, 0
	sw $t0, -280($fp)
	addi $t0, $fp, -132
	sw $t0, -284($fp)
	li $t0, 0
	sw $t0, -288($fp)
	li $t0, 4
	lw $t1, -288($fp)
	mul $t0, $t0, $t1
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	lw $t1, -284($fp)
	add $t0, $t0, $t1
	sw $t0, -296($fp)
	lw $t0, -296($fp)
	lw $t1, 0($t0)
	sw $t1, -300($fp)
	li $t0, 23846
	sw $t0, -304($fp)
	li $t0, 5955
	sw $t0, -308($fp)
	lw $t0, -304($fp)
	lw $t1, -308($fp)
	mul $t0, $t0, $t1
	sw $t0, -312($fp)
	lw $t0, -300($fp)
	lw $t1, -312($fp)
	sub $t0, $t0, $t1
	sw $t0, -316($fp)
	lw $t0, 8($fp)
	sw $t0, -320($fp)
	lw $t0, -320($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -324($fp)
	li $t0, 63761
	sw $t0, -328($fp)
	li $t0, 0
	sw $t0, -332($fp)
	li $t0, 8723
	sw $t0, -336($fp)
	lw $t1, -336($fp)
	li $t2, 0
	bne $t1, $t2, label968
	j label967
label968:
	li $t0, 1085
	sw $t0, -340($fp)
	lw $t1, -340($fp)
	li $t2, 0
	bne $t1, $t2, label966
	j label967
label966:
	li $t0, 1
	sw $t0, -332($fp)
label967:
	addi $sp, $sp, -4
	lw $t0, -324($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -332($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -344($fp)
	addi $sp, $sp, 16
	lw $t1, -316($fp)
	lw $t2, -344($fp)
	blt $t1, $t2, label963
	j label965
label965:
	li $t0, 64432
	sw $t0, -348($fp)
	lw $t1, -348($fp)
	li $t2, 0
	bne $t1, $t2, label963
	j label964
label963:
	li $t0, 1
	sw $t0, -280($fp)
label964:
	addi $t0, $fp, -124
	sw $t0, -352($fp)
	li $t0, 10775
	sw $t0, -356($fp)
	lw $t0, 8($fp)
	sw $t0, -360($fp)
	lw $t0, -356($fp)
	lw $t1, -360($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -364($fp)
	li $t0, 4
	lw $t1, -364($fp)
	mul $t0, $t0, $t1
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	lw $t1, -352($fp)
	add $t0, $t0, $t1
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	lw $t1, 0($t0)
	sw $t1, -376($fp)
	li $t0, 0
	lw $t1, -376($fp)
	sub $t0, $t0, $t1
	sw $t0, -380($fp)
	li $t0, 0
	lw $t1, -380($fp)
	sub $t0, $t0, $t1
	sw $t0, -384($fp)
	li $t0, 11584
	sw $t0, -388($fp)
	li $t0, 0
	sw $t0, -392($fp)
	jal f10
	sw $v0, -396($fp)
	addi $sp, $sp, 4
	lw $t1, -396($fp)
	li $t2, 0
	bne $t1, $t2, label973
	j label972
label972:
	li $t0, 1
	sw $t0, -392($fp)
label973:
	li $t0, 0
	sw $t0, -400($fp)
	lw $t0, 16($fp)
	sw $t0, -404($fp)
	lw $t0, 8($fp)
	sw $t0, -408($fp)
	lw $t0, -404($fp)
	lw $t1, -408($fp)
	sub $t0, $t0, $t1
	sw $t0, -412($fp)
	lw $t0, 8($fp)
	sw $t0, -416($fp)
	lw $t1, -412($fp)
	lw $t2, -416($fp)
	bgt $t1, $t2, label974
	j label975
label974:
	li $t0, 1
	sw $t0, -400($fp)
label975:
	addi $sp, $sp, -4
	lw $t0, -400($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -420($fp)
	addi $sp, $sp, 8
	li $t0, 6841
	sw $t0, -424($fp)
	lw $t0, -420($fp)
	lw $t1, -424($fp)
	mul $t0, $t0, $t1
	sw $t0, -428($fp)
	addi $sp, $sp, -4
	lw $t0, -388($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -392($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -428($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -432($fp)
	addi $sp, $sp, 16
	addi $t0, $fp, -20
	sw $t0, -436($fp)
	li $t0, 0
	sw $t0, -440($fp)
	li $t0, 42154
	sw $t0, -444($fp)
	li $t0, 64055
	sw $t0, -448($fp)
	lw $t1, -444($fp)
	lw $t2, -448($fp)
	ble $t1, $t2, label976
	j label977
label976:
	li $t0, 1
	sw $t0, -440($fp)
label977:
	li $t0, 4
	lw $t1, -440($fp)
	mul $t0, $t0, $t1
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	lw $t1, -436($fp)
	add $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	lw $t1, 0($t0)
	sw $t1, -460($fp)
	lw $t0, -432($fp)
	lw $t1, -460($fp)
	add $t0, $t0, $t1
	sw $t0, -464($fp)
	lw $t1, -464($fp)
	li $t2, 0
	bne $t1, $t2, label969
	j label970
label969:
	li $t0, 20136
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -472($fp)
	lw $ra, -4($fp)
	lw $v0, -472($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label971
label970:
	lw $t0, 12($fp)
	sw $t0, -476($fp)
	lw $ra, -4($fp)
	lw $v0, -476($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label971:
	addi $t0, $fp, -20
	sw $t0, -480($fp)
	li $t0, 0
	sw $t0, -484($fp)
	li $t0, 4
	lw $t1, -484($fp)
	mul $t0, $t0, $t1
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	lw $t1, -480($fp)
	add $t0, $t0, $t1
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	lw $t1, 0($t0)
	sw $t1, -496($fp)
	lw $t0, -496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -500($fp)
	li $t0, 1
	sw $t0, -504($fp)
	li $t0, 4
	lw $t1, -504($fp)
	mul $t0, $t0, $t1
	sw $t0, -508($fp)
	lw $t0, -508($fp)
	lw $t1, -500($fp)
	add $t0, $t0, $t1
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	lw $t1, 0($t0)
	sw $t1, -516($fp)
	lw $t0, -516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -520($fp)
	li $t0, 2
	sw $t0, -524($fp)
	li $t0, 4
	lw $t1, -524($fp)
	mul $t0, $t0, $t1
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	lw $t1, -520($fp)
	add $t0, $t0, $t1
	sw $t0, -532($fp)
	lw $t0, -532($fp)
	lw $t1, 0($t0)
	sw $t1, -536($fp)
	lw $t0, -536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -540($fp)
	li $t0, 3
	sw $t0, -544($fp)
	li $t0, 4
	lw $t1, -544($fp)
	mul $t0, $t0, $t1
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	lw $t1, -540($fp)
	add $t0, $t0, $t1
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	lw $t1, 0($t0)
	sw $t1, -556($fp)
	lw $t0, -556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -560($fp)
	li $t0, 0
	sw $t0, -564($fp)
	lw $t0, 8($fp)
	sw $t0, -568($fp)
	lw $t1, -568($fp)
	li $t2, 0
	bne $t1, $t2, label982
	j label981
label981:
	li $t0, 1
	sw $t0, -564($fp)
label982:
	lw $t0, 8($fp)
	sw $t0, -572($fp)
	li $t0, 9724
	sw $t0, -576($fp)
	lw $t0, -572($fp)
	lw $t1, -576($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -580($fp)
	lw $t0, -564($fp)
	lw $t1, -580($fp)
	add $t0, $t0, $t1
	sw $t0, -584($fp)
	jal f10
	sw $v0, -588($fp)
	addi $sp, $sp, 4
	lw $t0, -584($fp)
	lw $t1, -588($fp)
	sub $t0, $t0, $t1
	sw $t0, -592($fp)
	lw $t1, -592($fp)
	li $t2, 0
	bne $t1, $t2, label980
	j label979
label980:
	li $t0, 0
	sw $t0, -596($fp)
	lw $t0, 8($fp)
	sw $t0, -600($fp)
	lw $t0, 8($fp)
	sw $t0, -604($fp)
	lw $t1, -600($fp)
	lw $t2, -604($fp)
	beq $t1, $t2, label985
	j label984
label985:
	li $t0, 38112
	sw $t0, -608($fp)
	lw $t1, -608($fp)
	li $t2, 0
	bne $t1, $t2, label983
	j label984
label983:
	li $t0, 1
	sw $t0, -596($fp)
label984:
	lw $t0, 4($fp)
	sw $t0, -612($fp)
	li $t0, 0
	lw $t1, -612($fp)
	sub $t0, $t0, $t1
	sw $t0, -616($fp)
	addi $sp, $sp, -4
	lw $t0, -596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -616($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -620($fp)
	addi $sp, $sp, 12
	lw $t1, -620($fp)
	li $t2, 0
	bne $t1, $t2, label978
	j label979
label978:
	li $t0, 1
	sw $t0, -560($fp)
label979:
	lw $ra, -4($fp)
	lw $v0, -560($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f15:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -544
	li $t0, 0
	sw $t0, -8($fp)
	li $t0, 20535
	sw $t0, -12($fp)
	lw $t1, -12($fp)
	li $t2, 0
	bne $t1, $t2, label987
	j label986
label986:
	li $t0, 1
	sw $t0, -8($fp)
label987:
	li $t0, 0
	lw $t1, -8($fp)
	sub $t0, $t0, $t1
	sw $t0, -16($fp)
	lw $ra, -4($fp)
	lw $v0, -16($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label988:
	li $t0, 48773
	sw $t0, -20($fp)
	li $t0, 32972
	sw $t0, -24($fp)
	lw $t0, -20($fp)
	lw $t1, -24($fp)
	add $t0, $t0, $t1
	sw $t0, -28($fp)
	lw $t1, -28($fp)
	li $t2, 0
	bne $t1, $t2, label989
	j label990
label989:
	lw $t0, 8($fp)
	sw $t0, -32($fp)
	lw $ra, -4($fp)
	lw $v0, -32($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label988
label990:
	li $t0, 59154
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	li $t0, 144
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	li $t0, 7306
	sw $t0, -100($fp)
	addi $t0, $fp, -72
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
	li $t0, 4664
	sw $t0, -124($fp)
	addi $t0, $fp, -72
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
	li $t0, 3906
	sw $t0, -148($fp)
	addi $t0, $fp, -72
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
	li $t0, 21278
	sw $t0, -172($fp)
	addi $t0, $fp, -72
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
	li $t0, 34892
	sw $t0, -196($fp)
	addi $t0, $fp, -72
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
	li $t0, 3590
	sw $t0, -220($fp)
	addi $t0, $fp, -72
	sw $t0, -224($fp)
	li $t0, 5
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
	li $t0, 2343
	sw $t0, -244($fp)
	addi $t0, $fp, -72
	sw $t0, -248($fp)
	li $t0, 6
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
	li $t0, 22448
	sw $t0, -268($fp)
	addi $t0, $fp, -72
	sw $t0, -272($fp)
	li $t0, 7
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
	li $t0, 61212
	sw $t0, -292($fp)
	addi $t0, $fp, -72
	sw $t0, -296($fp)
	li $t0, 8
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
	li $t0, 22037
	sw $t0, -316($fp)
	addi $t0, $fp, -72
	sw $t0, -320($fp)
	li $t0, 9
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
	li $t0, 48701
	sw $t0, -344($fp)
	lw $t1, -344($fp)
	li $t2, 0
	bne $t1, $t2, label994
	j label993
label994:
	lw $t0, 4($fp)
	sw $t0, -348($fp)
	lw $t1, -348($fp)
	li $t2, 0
	bne $t1, $t2, label991
	j label993
label993:
	li $t0, 14075
	sw $t0, -352($fp)
	lw $t1, -352($fp)
	li $t2, 0
	bne $t1, $t2, label991
	j label992
label991:
	li $t0, 1
	sw $t0, -340($fp)
label992:
	li $t0, 0
	sw $t0, -356($fp)
	li $t0, 45883
	sw $t0, -360($fp)
	li $t0, 0
	lw $t1, -360($fp)
	sub $t0, $t0, $t1
	sw $t0, -364($fp)
	lw $t0, -92($fp)
	sw $t0, -368($fp)
	lw $t1, -364($fp)
	lw $t2, -368($fp)
	bge $t1, $t2, label999
	j label998
label999:
	addi $t0, $fp, -72
	sw $t0, -372($fp)
	li $t0, 8
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
	lw $t1, -388($fp)
	li $t2, 0
	bne $t1, $t2, label995
	j label998
label998:
	li $t0, 46968
	sw $t0, -392($fp)
	lw $t0, -80($fp)
	sw $t0, -396($fp)
	lw $t0, -392($fp)
	lw $t1, -396($fp)
	mul $t0, $t0, $t1
	sw $t0, -400($fp)
	lw $t0, 12($fp)
	sw $t0, -404($fp)
	lw $t1, -400($fp)
	lw $t2, -404($fp)
	bne $t1, $t2, label995
	j label997
label997:
	li $t0, 0
	sw $t0, -408($fp)
	lw $t0, 8($fp)
	sw $t0, -412($fp)
	lw $t1, -412($fp)
	li $t2, 0
	bne $t1, $t2, label1001
	j label1000
label1000:
	li $t0, 1
	sw $t0, -408($fp)
label1001:
	li $t0, 0
	sw $t0, -416($fp)
	li $t0, 34361
	sw $t0, -420($fp)
	li $t0, 0
	lw $t1, -420($fp)
	sub $t0, $t0, $t1
	sw $t0, -424($fp)
	li $t0, 58241
	sw $t0, -428($fp)
	lw $t1, -424($fp)
	lw $t2, -428($fp)
	ble $t1, $t2, label1002
	j label1003
label1002:
	li $t0, 1
	sw $t0, -416($fp)
label1003:
	lw $t0, -80($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -436($fp)
	li $t0, 33279
	sw $t0, -440($fp)
	addi $sp, $sp, -4
	lw $t0, -436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -440($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -444($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -448($fp)
	li $t0, 0
	sw $t0, -452($fp)
	li $t0, 57743
	sw $t0, -456($fp)
	li $t0, 59722
	sw $t0, -460($fp)
	lw $t0, -456($fp)
	lw $t1, -460($fp)
	add $t0, $t0, $t1
	sw $t0, -464($fp)
	lw $t1, -464($fp)
	li $t2, 0
	bne $t1, $t2, label1008
	j label1007
label1008:
	lw $t0, -92($fp)
	sw $t0, -468($fp)
	lw $t1, -468($fp)
	li $t2, 0
	bne $t1, $t2, label1006
	j label1007
label1006:
	li $t0, 1
	sw $t0, -452($fp)
label1007:
	li $t0, 21695
	sw $t0, -472($fp)
	li $t0, 0
	sw $t0, -476($fp)
	jal f10
	sw $v0, -480($fp)
	addi $sp, $sp, 4
	lw $t1, -480($fp)
	li $t2, 0
	bne $t1, $t2, label1011
	j label1010
label1011:
	lw $t0, -92($fp)
	sw $t0, -484($fp)
	lw $t1, -484($fp)
	li $t2, 0
	bne $t1, $t2, label1009
	j label1010
label1009:
	li $t0, 1
	sw $t0, -476($fp)
label1010:
	li $t0, 0
	sw $t0, -488($fp)
	lw $t0, 12($fp)
	sw $t0, -492($fp)
	lw $t1, -492($fp)
	li $t2, 0
	bne $t1, $t2, label1013
	j label1012
label1012:
	li $t0, 1
	sw $t0, -488($fp)
label1013:
	li $t0, 0
	lw $t1, -488($fp)
	sub $t0, $t0, $t1
	sw $t0, -496($fp)
	li $t0, 0
	sw $t0, -500($fp)
	li $t0, 52881
	sw $t0, -504($fp)
	lw $t0, -92($fp)
	sw $t0, -508($fp)
	lw $t1, -504($fp)
	lw $t2, -508($fp)
	beq $t1, $t2, label1014
	j label1016
label1016:
	lw $t0, -80($fp)
	sw $t0, -512($fp)
	lw $t1, -512($fp)
	li $t2, 0
	bne $t1, $t2, label1014
	j label1015
label1014:
	li $t0, 1
	sw $t0, -500($fp)
label1015:
	addi $sp, $sp, -4
	lw $t0, -452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -472($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -500($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -516($fp)
	addi $sp, $sp, 24
	lw $t1, -516($fp)
	li $t2, 0
	bne $t1, $t2, label1005
	j label1004
label1004:
	li $t0, 1
	sw $t0, -448($fp)
label1005:
	addi $sp, $sp, -4
	lw $t0, -416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -444($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -448($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -520($fp)
	addi $sp, $sp, 16
	lw $t0, -408($fp)
	lw $t1, -520($fp)
	mul $t0, $t0, $t1
	sw $t0, -524($fp)
	lw $t1, -524($fp)
	li $t2, 0
	bne $t1, $t2, label995
	j label996
label995:
	li $t0, 1
	sw $t0, -356($fp)
label996:
	lw $t0, 4($fp)
	sw $t0, -528($fp)
	li $t0, 53415
	sw $t0, -532($fp)
	li $t0, 0
	sw $t0, -536($fp)
	li $t0, 44085
	sw $t0, -540($fp)
	li $t0, 0
	lw $t1, -540($fp)
	sub $t0, $t0, $t1
	sw $t0, -544($fp)
	li $t0, 0
	lw $t1, -544($fp)
	sub $t0, $t0, $t1
	sw $t0, -548($fp)
	lw $t1, -548($fp)
	li $t2, 0
	bne $t1, $t2, label1018
	j label1017
label1017:
	li $t0, 1
	sw $t0, -536($fp)
label1018:
	lw $ra, -4($fp)
	lw $v0, -536($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f16:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -52
	li $t0, 30817
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 0
	sw $t0, -20($fp)
	lw $t0, -12($fp)
	sw $t0, -24($fp)
	li $t0, 27322
	sw $t0, -28($fp)
	lw $t0, -24($fp)
	lw $t1, -28($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -32($fp)
	lw $t1, -32($fp)
	li $t2, 0
	bne $t1, $t2, label1019
	j label1021
label1021:
	li $t0, 63789
	sw $t0, -36($fp)
	lw $t1, -36($fp)
	li $t2, 0
	bne $t1, $t2, label1019
	j label1020
label1019:
	li $t0, 1
	sw $t0, -20($fp)
label1020:
	li $t0, 8414
	sw $t0, -40($fp)
	li $t0, 0
	lw $t1, -40($fp)
	sub $t0, $t0, $t1
	sw $t0, -44($fp)
	addi $sp, $sp, -4
	lw $t0, -20($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -44($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -48($fp)
	addi $sp, $sp, 12
	lw $t0, -12($fp)
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 2032
	sw $t0, -56($fp)
	lw $ra, -4($fp)
	lw $v0, -56($fp)
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
	jal f16
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
