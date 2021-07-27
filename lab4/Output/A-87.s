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
	addi $sp, $sp, -1780
	li $t0, 24658
	sw $t0, -80($fp)
	lw $t0, -80($fp)
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	li $t0, 20357
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	li $t0, 7585
	sw $t0, -104($fp)
	addi $t0, $fp, -44
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
	li $t0, 4764
	sw $t0, -128($fp)
	addi $t0, $fp, -44
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
	li $t0, 39310
	sw $t0, -152($fp)
	addi $t0, $fp, -44
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
	li $t0, 5874
	sw $t0, -176($fp)
	addi $t0, $fp, -44
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
	li $t0, 8958
	sw $t0, -200($fp)
	addi $t0, $fp, -44
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
	li $t0, 22961
	sw $t0, -224($fp)
	addi $t0, $fp, -44
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
	li $t0, 19889
	sw $t0, -248($fp)
	addi $t0, $fp, -44
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
	li $t0, 43681
	sw $t0, -272($fp)
	addi $t0, $fp, -44
	sw $t0, -276($fp)
	li $t0, 7
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
	li $t0, 25677
	sw $t0, -296($fp)
	addi $t0, $fp, -44
	sw $t0, -300($fp)
	li $t0, 8
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
	li $t0, 24654
	sw $t0, -320($fp)
	addi $t0, $fp, -44
	sw $t0, -324($fp)
	li $t0, 9
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
	li $t0, 18107
	sw $t0, -344($fp)
	lw $t0, -344($fp)
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -352($fp)
	li $t0, 41905
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	li $t0, 21988
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	li $t0, 59286
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	li $t0, 17781
	sw $t0, -392($fp)
	addi $t0, $fp, -72
	sw $t0, -396($fp)
	li $t0, 0
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
	li $t0, 38127
	sw $t0, -416($fp)
	addi $t0, $fp, -72
	sw $t0, -420($fp)
	li $t0, 1
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
	li $t0, 2568
	sw $t0, -440($fp)
	addi $t0, $fp, -72
	sw $t0, -444($fp)
	li $t0, 2
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
	li $t0, 44164
	sw $t0, -464($fp)
	addi $t0, $fp, -72
	sw $t0, -468($fp)
	li $t0, 3
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
	li $t0, 63043
	sw $t0, -488($fp)
	addi $t0, $fp, -72
	sw $t0, -492($fp)
	li $t0, 4
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
	li $t0, 1006
	sw $t0, -512($fp)
	addi $t0, $fp, -72
	sw $t0, -516($fp)
	li $t0, 5
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
	li $t0, 45811
	sw $t0, -536($fp)
	addi $t0, $fp, -72
	sw $t0, -540($fp)
	li $t0, 6
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
	li $t0, 51392
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	li $t0, 35796
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	li $t0, 60607
	sw $t0, -584($fp)
	addi $t0, $fp, -76
	sw $t0, -588($fp)
	li $t0, 0
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
	lw $t0, -84($fp)
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -612($fp)
	lw $t0, -612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -616($fp)
	li $t0, 0
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
	lw $t0, -632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -636($fp)
	li $t0, 1
	sw $t0, -640($fp)
	li $t0, 4
	lw $t1, -640($fp)
	mul $t0, $t0, $t1
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	lw $t1, -636($fp)
	add $t0, $t0, $t1
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	lw $t1, 0($t0)
	sw $t1, -652($fp)
	lw $t0, -652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -656($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -676($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -696($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -716($fp)
	li $t0, 5
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
	addi $t0, $fp, -44
	sw $t0, -736($fp)
	li $t0, 6
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
	addi $t0, $fp, -44
	sw $t0, -756($fp)
	li $t0, 7
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
	addi $t0, $fp, -44
	sw $t0, -776($fp)
	li $t0, 8
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
	addi $t0, $fp, -44
	sw $t0, -796($fp)
	li $t0, 9
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
	lw $t0, -348($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -820($fp)
	lw $t0, -820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -828($fp)
	lw $t0, -828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -832($fp)
	li $t0, 0
	sw $t0, -836($fp)
	li $t0, 4
	lw $t1, -836($fp)
	mul $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	lw $t1, -832($fp)
	add $t0, $t0, $t1
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	lw $t1, 0($t0)
	sw $t1, -848($fp)
	lw $t0, -848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -852($fp)
	li $t0, 1
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
	lw $t0, -868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -872($fp)
	li $t0, 2
	sw $t0, -876($fp)
	li $t0, 4
	lw $t1, -876($fp)
	mul $t0, $t0, $t1
	sw $t0, -880($fp)
	lw $t0, -880($fp)
	lw $t1, -872($fp)
	add $t0, $t0, $t1
	sw $t0, -884($fp)
	lw $t0, -884($fp)
	lw $t1, 0($t0)
	sw $t1, -888($fp)
	lw $t0, -888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -892($fp)
	li $t0, 3
	sw $t0, -896($fp)
	li $t0, 4
	lw $t1, -896($fp)
	mul $t0, $t0, $t1
	sw $t0, -900($fp)
	lw $t0, -900($fp)
	lw $t1, -892($fp)
	add $t0, $t0, $t1
	sw $t0, -904($fp)
	lw $t0, -904($fp)
	lw $t1, 0($t0)
	sw $t1, -908($fp)
	lw $t0, -908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -912($fp)
	li $t0, 4
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
	lw $t0, -928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -932($fp)
	li $t0, 5
	sw $t0, -936($fp)
	li $t0, 4
	lw $t1, -936($fp)
	mul $t0, $t0, $t1
	sw $t0, -940($fp)
	lw $t0, -940($fp)
	lw $t1, -932($fp)
	add $t0, $t0, $t1
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	lw $t1, 0($t0)
	sw $t1, -948($fp)
	lw $t0, -948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -952($fp)
	li $t0, 6
	sw $t0, -956($fp)
	li $t0, 4
	lw $t1, -956($fp)
	mul $t0, $t0, $t1
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	lw $t1, -952($fp)
	add $t0, $t0, $t1
	sw $t0, -964($fp)
	lw $t0, -964($fp)
	lw $t1, 0($t0)
	sw $t1, -968($fp)
	lw $t0, -968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -976($fp)
	lw $t0, -976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -980($fp)
	li $t0, 0
	sw $t0, -984($fp)
	li $t0, 4
	lw $t1, -984($fp)
	mul $t0, $t0, $t1
	sw $t0, -988($fp)
	lw $t0, -988($fp)
	lw $t1, -980($fp)
	add $t0, $t0, $t1
	sw $t0, -992($fp)
	lw $t0, -992($fp)
	lw $t1, 0($t0)
	sw $t1, -996($fp)
	lw $t0, -996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -1004($fp)
	lw $ra, -4($fp)
	lw $v0, -1004($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -576($fp)
	sw $t0, -1008($fp)
	li $t0, 0
	sw $t0, -1012($fp)
	lw $t0, -360($fp)
	sw $t0, -1016($fp)
	lw $t1, -1016($fp)
	li $t2, 0
	bne $t1, $t2, label122
	j label121
label121:
	li $t0, 1
	sw $t0, -1012($fp)
label122:
	lw $t0, -1008($fp)
	lw $t1, -1012($fp)
	add $t0, $t0, $t1
	sw $t0, -1020($fp)
	li $t0, 43445
	sw $t0, -1024($fp)
	lw $t1, -1024($fp)
	li $t2, 0
	bne $t1, $t2, label123
	j label124
label123:
label126:
	li $t0, 9276
	sw $t0, -1028($fp)
	lw $t0, -576($fp)
	sw $t0, -1032($fp)
	lw $t0, 4($fp)
	sw $t0, -1036($fp)
	lw $t0, -1032($fp)
	lw $t1, -1036($fp)
	sub $t0, $t0, $t1
	sw $t0, -1040($fp)
	lw $t0, -372($fp)
	sw $t0, -1044($fp)
	lw $t0, -1040($fp)
	lw $t1, -1044($fp)
	sub $t0, $t0, $t1
	sw $t0, -1048($fp)
	lw $t1, -1028($fp)
	lw $t2, -1048($fp)
	ble $t1, $t2, label127
	j label128
label127:
	li $t0, 0
	sw $t0, -1052($fp)
	li $t0, 0
	sw $t0, -1056($fp)
	li $t0, 36289
	sw $t0, -1060($fp)
	lw $t0, -360($fp)
	sw $t0, -1064($fp)
	lw $t1, -1060($fp)
	lw $t2, -1064($fp)
	bne $t1, $t2, label137
	j label136
label137:
	lw $t0, -360($fp)
	sw $t0, -1068($fp)
	lw $t1, -1068($fp)
	li $t2, 0
	bne $t1, $t2, label135
	j label136
label135:
	li $t0, 1
	sw $t0, -1056($fp)
label136:
	li $t0, 27158
	sw $t0, -1072($fp)
	addi $sp, $sp, -4
	lw $t0, -1056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1072($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1076($fp)
	addi $sp, $sp, 12
	lw $t0, -360($fp)
	sw $t0, -1080($fp)
	lw $t0, -1076($fp)
	lw $t1, -1080($fp)
	sub $t0, $t0, $t1
	sw $t0, -1084($fp)
	lw $t1, -1084($fp)
	li $t2, 0
	bne $t1, $t2, label134
	j label133
label134:
	lw $t0, -576($fp)
	sw $t0, -1088($fp)
	lw $t0, -360($fp)
	sw $t0, -1092($fp)
	lw $t0, -1088($fp)
	lw $t1, -1092($fp)
	add $t0, $t0, $t1
	sw $t0, -1096($fp)
	lw $t1, -1096($fp)
	li $t2, 0
	bne $t1, $t2, label132
	j label133
label132:
	li $t0, 1
	sw $t0, -1052($fp)
label133:
	lw $t0, -1052($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -1100($fp)
	lw $t1, -1100($fp)
	li $t2, 0
	bne $t1, $t2, label129
	j label130
label129:
	addi $t0, $fp, -44
	sw $t0, -1104($fp)
	li $t0, 2
	sw $t0, -1108($fp)
	li $t0, 4
	lw $t1, -1108($fp)
	mul $t0, $t0, $t1
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	lw $t1, -1104($fp)
	add $t0, $t0, $t1
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	lw $t1, 0($t0)
	sw $t1, -1120($fp)
	lw $t0, -1120($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -1124($fp)
	j label131
label130:
	addi $t0, $fp, -44
	sw $t0, -1128($fp)
	lw $t0, -372($fp)
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -1136($fp)
	li $t0, 4
	lw $t1, -1136($fp)
	mul $t0, $t0, $t1
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	lw $t1, -1128($fp)
	add $t0, $t0, $t1
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	lw $t1, 0($t0)
	sw $t1, -1148($fp)
	addi $t0, $fp, -44
	sw $t0, -1152($fp)
	lw $t0, -348($fp)
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
	addi $t0, $fp, -72
	sw $t0, -1172($fp)
	lw $t0, -576($fp)
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
	lw $t0, -1168($fp)
	lw $t1, -1188($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1192($fp)
	lw $t0, -1148($fp)
	lw $t1, -1192($fp)
	sub $t0, $t0, $t1
	sw $t0, -1196($fp)
label131:
	j label126
label128:
	j label125
label124:
label138:
	li $t0, 0
	sw $t0, -1200($fp)
	lw $t0, -84($fp)
	sw $t0, -1204($fp)
	lw $t1, -1204($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label142
label141:
	li $t0, 1
	sw $t0, -1200($fp)
label142:
	addi $t0, $fp, -76
	sw $t0, -1208($fp)
	li $t0, 0
	sw $t0, -1212($fp)
	lw $t0, -372($fp)
	sw $t0, -1216($fp)
	lw $t1, -1216($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label145
label145:
	lw $t0, -576($fp)
	sw $t0, -1220($fp)
	lw $t1, -1220($fp)
	li $t2, 0
	bne $t1, $t2, label143
	j label144
label143:
	li $t0, 1
	sw $t0, -1212($fp)
label144:
	li $t0, 4
	lw $t1, -1212($fp)
	mul $t0, $t0, $t1
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	lw $t1, -1208($fp)
	add $t0, $t0, $t1
	sw $t0, -1228($fp)
	lw $t0, -1228($fp)
	lw $t1, 0($t0)
	sw $t1, -1232($fp)
	lw $t0, -1200($fp)
	lw $t1, -1232($fp)
	mul $t0, $t0, $t1
	sw $t0, -1236($fp)
	lw $t1, -1236($fp)
	li $t2, 0
	bne $t1, $t2, label139
	j label140
label139:
	li $t0, 0
	sw $t0, -1240($fp)
	addi $t0, $fp, -72
	sw $t0, -1244($fp)
	li $t0, 0
	sw $t0, -1248($fp)
	li $t0, 56646
	sw $t0, -1252($fp)
	li $t0, 58870
	sw $t0, -1256($fp)
	lw $t1, -1252($fp)
	lw $t2, -1256($fp)
	beq $t1, $t2, label149
	j label150
label149:
	li $t0, 1
	sw $t0, -1248($fp)
label150:
	li $t0, 4
	lw $t1, -1248($fp)
	mul $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	lw $t1, -1244($fp)
	add $t0, $t0, $t1
	sw $t0, -1264($fp)
	lw $t0, -1264($fp)
	lw $t1, 0($t0)
	sw $t1, -1268($fp)
	li $t0, 0
	lw $t1, -1268($fp)
	sub $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t1, -1272($fp)
	li $t2, 0
	bne $t1, $t2, label148
	j label147
label148:
	li $t0, 56580
	sw $t0, -1276($fp)
	lw $t0, -576($fp)
	sw $t0, -1280($fp)
	lw $t0, -1276($fp)
	lw $t1, -1280($fp)
	add $t0, $t0, $t1
	sw $t0, -1284($fp)
	lw $t1, -1284($fp)
	li $t2, 0
	bne $t1, $t2, label146
	j label147
label146:
	li $t0, 1
	sw $t0, -1240($fp)
label147:
	j label138
label140:
label125:
	addi $t0, $fp, -44
	sw $t0, -1288($fp)
	li $t0, 0
	sw $t0, -1292($fp)
	li $t0, 30421
	sw $t0, -1296($fp)
	lw $t1, -1296($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label156
label157:
	lw $t0, -360($fp)
	sw $t0, -1300($fp)
	lw $t1, -1300($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label156
label156:
	lw $t0, -372($fp)
	sw $t0, -1304($fp)
	lw $t1, -1304($fp)
	li $t2, 0
	bne $t1, $t2, label154
	j label155
label154:
	li $t0, 1
	sw $t0, -1292($fp)
label155:
	li $t0, 4
	lw $t1, -1292($fp)
	mul $t0, $t0, $t1
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	lw $t1, -1288($fp)
	add $t0, $t0, $t1
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	lw $t1, 0($t0)
	sw $t1, -1316($fp)
	li $t0, 64745
	sw $t0, -1320($fp)
	li $t0, 0
	lw $t1, -1320($fp)
	sub $t0, $t0, $t1
	sw $t0, -1324($fp)
	lw $t1, -1316($fp)
	lw $t2, -1324($fp)
	beq $t1, $t2, label151
	j label152
label151:
	li $t0, 0
	sw $t0, -1328($fp)
	li $t0, 0
	sw $t0, -1332($fp)
	lw $t0, -384($fp)
	sw $t0, -1336($fp)
	li $t0, 0
	sw $t0, -1340($fp)
	lw $t0, -564($fp)
	sw $t0, -1344($fp)
	li $t0, 0
	lw $t1, -1344($fp)
	sub $t0, $t0, $t1
	sw $t0, -1348($fp)
	li $t0, 3
	sw $t0, -1352($fp)
	lw $t1, -1348($fp)
	lw $t2, -1352($fp)
	ble $t1, $t2, label162
	j label163
label162:
	li $t0, 1
	sw $t0, -1340($fp)
label163:
	lw $t1, -1336($fp)
	lw $t2, -1340($fp)
	beq $t1, $t2, label160
	j label161
label160:
	li $t0, 1
	sw $t0, -1332($fp)
label161:
	lw $t0, -372($fp)
	sw $t0, -1356($fp)
	li $t0, 0
	lw $t1, -1356($fp)
	sub $t0, $t0, $t1
	sw $t0, -1360($fp)
	li $t0, 0
	sw $t0, -1364($fp)
	li $t0, 0
	sw $t0, -1368($fp)
	lw $t0, -372($fp)
	sw $t0, -1372($fp)
	li $t0, 53382
	sw $t0, -1376($fp)
	lw $t1, -1372($fp)
	lw $t2, -1376($fp)
	bgt $t1, $t2, label166
	j label167
label166:
	li $t0, 1
	sw $t0, -1368($fp)
label167:
	li $t0, 19098
	sw $t0, -1380($fp)
	lw $t1, -1368($fp)
	lw $t2, -1380($fp)
	beq $t1, $t2, label164
	j label165
label164:
	li $t0, 1
	sw $t0, -1364($fp)
label165:
	addi $sp, $sp, -4
	lw $t0, -1360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1364($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1384($fp)
	addi $sp, $sp, 12
	lw $t1, -1332($fp)
	lw $t2, -1384($fp)
	beq $t1, $t2, label158
	j label159
label158:
	li $t0, 1
	sw $t0, -1328($fp)
label159:
	lw $ra, -4($fp)
	lw $v0, -1328($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label152:
	lw $t0, -84($fp)
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -96($fp)
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1396($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -1416($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -1436($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -1456($fp)
	li $t0, 3
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
	li $t0, 4
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
	li $t0, 5
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
	li $t0, 6
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
	li $t0, 7
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
	li $t0, 8
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
	li $t0, 9
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
	lw $t0, -348($fp)
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -1600($fp)
	lw $t0, -1600($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -1612($fp)
	li $t0, 0
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
	addi $t0, $fp, -72
	sw $t0, -1632($fp)
	li $t0, 1
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
	addi $t0, $fp, -72
	sw $t0, -1652($fp)
	li $t0, 2
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
	addi $t0, $fp, -72
	sw $t0, -1672($fp)
	li $t0, 3
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
	addi $t0, $fp, -72
	sw $t0, -1692($fp)
	li $t0, 4
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
	addi $t0, $fp, -72
	sw $t0, -1712($fp)
	li $t0, 5
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
	addi $t0, $fp, -72
	sw $t0, -1732($fp)
	li $t0, 6
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
	lw $t0, -564($fp)
	sw $t0, -1752($fp)
	lw $t0, -1752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -576($fp)
	sw $t0, -1756($fp)
	lw $t0, -1756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -1760($fp)
	li $t0, 0
	sw $t0, -1764($fp)
	li $t0, 4
	lw $t1, -1764($fp)
	mul $t0, $t0, $t1
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	lw $t1, -1760($fp)
	add $t0, $t0, $t1
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	lw $t1, 0($t0)
	sw $t1, -1776($fp)
	lw $t0, -1776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -564($fp)
	sw $t0, -1780($fp)
	li $t0, 0
	lw $t1, -1780($fp)
	sub $t0, $t0, $t1
	sw $t0, -1784($fp)
	lw $ra, -4($fp)
	lw $v0, -1784($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -8580
	li $t0, 43684
	sw $t0, -152($fp)
	addi $t0, $fp, -24
	sw $t0, -156($fp)
	li $t0, 0
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
	li $t0, 13524
	sw $t0, -176($fp)
	addi $t0, $fp, -24
	sw $t0, -180($fp)
	li $t0, 1
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
	li $t0, 43753
	sw $t0, -200($fp)
	addi $t0, $fp, -24
	sw $t0, -204($fp)
	li $t0, 2
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
	li $t0, 61792
	sw $t0, -224($fp)
	addi $t0, $fp, -24
	sw $t0, -228($fp)
	li $t0, 3
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
	li $t0, 55429
	sw $t0, -248($fp)
	addi $t0, $fp, -24
	sw $t0, -252($fp)
	li $t0, 4
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
	li $t0, 205
	sw $t0, -272($fp)
	addi $t0, $fp, -32
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
	li $t0, 55542
	sw $t0, -296($fp)
	addi $t0, $fp, -32
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
	li $t0, 7674
	sw $t0, -320($fp)
	addi $t0, $fp, -40
	sw $t0, -324($fp)
	li $t0, 0
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
	li $t0, 38332
	sw $t0, -344($fp)
	addi $t0, $fp, -40
	sw $t0, -348($fp)
	li $t0, 1
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
	li $t0, 58110
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	li $t0, 51838
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	li $t0, 35839
	sw $t0, -392($fp)
	lw $t0, -392($fp)
	sw $t0, -396($fp)
	lw $t0, -396($fp)
	sw $t0, -400($fp)
	li $t0, 59116
	sw $t0, -404($fp)
	lw $t0, -404($fp)
	sw $t0, -408($fp)
	lw $t0, -408($fp)
	sw $t0, -412($fp)
	li $t0, 32113
	sw $t0, -416($fp)
	lw $t0, -416($fp)
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	li $t0, 21696
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	li $t0, 29377
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	li $t0, 27185
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	li $t0, 65141
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	li $t0, 38653
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	li $t0, 54343
	sw $t0, -488($fp)
	lw $t0, -488($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -496($fp)
	li $t0, 35894
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -508($fp)
	li $t0, 24402
	sw $t0, -512($fp)
	lw $t0, -512($fp)
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	li $t0, 40623
	sw $t0, -524($fp)
	lw $t0, -524($fp)
	sw $t0, -528($fp)
	lw $t0, -528($fp)
	sw $t0, -532($fp)
	li $t0, 27004
	sw $t0, -536($fp)
	addi $t0, $fp, -60
	sw $t0, -540($fp)
	li $t0, 0
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
	li $t0, 17737
	sw $t0, -560($fp)
	addi $t0, $fp, -60
	sw $t0, -564($fp)
	li $t0, 1
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
	li $t0, 31667
	sw $t0, -584($fp)
	addi $t0, $fp, -60
	sw $t0, -588($fp)
	li $t0, 2
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
	li $t0, 57425
	sw $t0, -608($fp)
	addi $t0, $fp, -60
	sw $t0, -612($fp)
	li $t0, 3
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
	li $t0, 16946
	sw $t0, -632($fp)
	addi $t0, $fp, -60
	sw $t0, -636($fp)
	li $t0, 4
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
	li $t0, 31670
	sw $t0, -656($fp)
	lw $t0, -656($fp)
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	li $t0, 45272
	sw $t0, -668($fp)
	lw $t0, -668($fp)
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	li $t0, 36044
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	li $t0, 9819
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	li $t0, 58796
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	li $t0, 14261
	sw $t0, -716($fp)
	addi $t0, $fp, -76
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
	li $t0, 6075
	sw $t0, -740($fp)
	addi $t0, $fp, -76
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
	li $t0, 48689
	sw $t0, -764($fp)
	addi $t0, $fp, -76
	sw $t0, -768($fp)
	li $t0, 2
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
	li $t0, 14466
	sw $t0, -788($fp)
	addi $t0, $fp, -76
	sw $t0, -792($fp)
	li $t0, 3
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
	li $t0, 61617
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	sw $t0, -820($fp)
	li $t0, 56363
	sw $t0, -824($fp)
	addi $t0, $fp, -108
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
	li $t0, 52798
	sw $t0, -848($fp)
	addi $t0, $fp, -108
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
	li $t0, 54191
	sw $t0, -872($fp)
	addi $t0, $fp, -108
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
	li $t0, 42665
	sw $t0, -896($fp)
	addi $t0, $fp, -108
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
	li $t0, 23102
	sw $t0, -920($fp)
	addi $t0, $fp, -108
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
	li $t0, 47772
	sw $t0, -944($fp)
	addi $t0, $fp, -108
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
	li $t0, 9242
	sw $t0, -968($fp)
	addi $t0, $fp, -108
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
	li $t0, 44798
	sw $t0, -992($fp)
	addi $t0, $fp, -108
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
	li $t0, 11613
	sw $t0, -1016($fp)
	lw $t0, -1016($fp)
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	sw $t0, -1024($fp)
	li $t0, 36427
	sw $t0, -1028($fp)
	addi $t0, $fp, -132
	sw $t0, -1032($fp)
	li $t0, 0
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
	li $t0, 44403
	sw $t0, -1052($fp)
	addi $t0, $fp, -132
	sw $t0, -1056($fp)
	li $t0, 1
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
	li $t0, 50266
	sw $t0, -1076($fp)
	addi $t0, $fp, -132
	sw $t0, -1080($fp)
	li $t0, 2
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
	li $t0, 25234
	sw $t0, -1100($fp)
	addi $t0, $fp, -132
	sw $t0, -1104($fp)
	li $t0, 3
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
	li $t0, 14761
	sw $t0, -1124($fp)
	addi $t0, $fp, -132
	sw $t0, -1128($fp)
	li $t0, 4
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
	li $t0, 9133
	sw $t0, -1148($fp)
	addi $t0, $fp, -132
	sw $t0, -1152($fp)
	li $t0, 5
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
	li $t0, 321
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -1180($fp)
	li $t0, 41765
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	sw $t0, -1192($fp)
	li $t0, 26870
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	sw $t0, -1204($fp)
	li $t0, 31989
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, -1216($fp)
	li $t0, 33655
	sw $t0, -1220($fp)
	addi $t0, $fp, -136
	sw $t0, -1224($fp)
	li $t0, 0
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
	li $t0, 43816
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -1252($fp)
	li $t0, 63659
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -1264($fp)
	li $t0, 13391
	sw $t0, -1268($fp)
	lw $t0, -1268($fp)
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	li $t0, 14324
	sw $t0, -1280($fp)
	lw $t0, -1280($fp)
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	li $t0, 7942
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	li $t0, 6651
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -1312($fp)
	li $t0, 28586
	sw $t0, -1316($fp)
	lw $t0, -1316($fp)
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -1324($fp)
	li $t0, 14017
	sw $t0, -1328($fp)
	lw $t0, -1328($fp)
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	sw $t0, -1336($fp)
	li $t0, 55340
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	sw $t0, -1348($fp)
	li $t0, 43052
	sw $t0, -1352($fp)
	lw $t0, -1352($fp)
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	sw $t0, -1360($fp)
	li $t0, 10098
	sw $t0, -1364($fp)
	lw $t0, -1364($fp)
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	sw $t0, -1372($fp)
	li $t0, 46167
	sw $t0, -1376($fp)
	lw $t0, -1376($fp)
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -1384($fp)
	li $t0, 30315
	sw $t0, -1388($fp)
	lw $t0, -1388($fp)
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	sw $t0, -1396($fp)
	li $t0, 64290
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
	li $t0, 23296
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
	li $t0, 53417
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
	li $t0, 46526
	sw $t0, -1472($fp)
	lw $t0, -1472($fp)
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	sw $t0, -1480($fp)
	li $t0, 0
	sw $t0, -1484($fp)
	li $t0, 32538
	sw $t0, -1488($fp)
	li $t0, 32679
	sw $t0, -1492($fp)
	lw $t1, -1488($fp)
	lw $t2, -1492($fp)
	bne $t1, $t2, label173
	j label174
label173:
	li $t0, 1
	sw $t0, -1484($fp)
label174:
	li $t0, 58139
	sw $t0, -1496($fp)
	lw $t0, -816($fp)
	sw $t0, -1500($fp)
	lw $t0, -1496($fp)
	lw $t1, -1500($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1504($fp)
	lw $t1, -1484($fp)
	lw $t2, -1504($fp)
	beq $t1, $t2, label172
	j label169
label172:
	li $t0, 3430
	sw $t0, -1508($fp)
	lw $t0, 12($fp)
	sw $t0, -1512($fp)
	lw $t0, -1508($fp)
	lw $t1, -1512($fp)
	add $t0, $t0, $t1
	sw $t0, -1516($fp)
	lw $t1, -1516($fp)
	li $t2, 0
	bne $t1, $t2, label171
	j label169
label171:
	addi $t0, $fp, -24
	sw $t0, -1520($fp)
	lw $t0, -684($fp)
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
	li $t0, 0
	sw $t0, -1540($fp)
	li $t0, 0
	sw $t0, -1544($fp)
	li $t0, 11546
	sw $t0, -1548($fp)
	lw $t1, -1548($fp)
	li $t2, 0
	bne $t1, $t2, label178
	j label177
label177:
	li $t0, 1
	sw $t0, -1544($fp)
label178:
	lw $t0, -408($fp)
	sw $t0, -1552($fp)
	lw $t1, -1544($fp)
	lw $t2, -1552($fp)
	bge $t1, $t2, label175
	j label176
label175:
	li $t0, 1
	sw $t0, -1540($fp)
label176:
	addi $sp, $sp, -4
	lw $t0, -1536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1540($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1556($fp)
	addi $sp, $sp, 12
	li $t0, 42869
	sw $t0, -1560($fp)
	lw $t0, -1556($fp)
	lw $t1, -1560($fp)
	mul $t0, $t0, $t1
	sw $t0, -1564($fp)
	li $t0, 28664
	sw $t0, -1568($fp)
	li $t0, 26307
	sw $t0, -1572($fp)
	lw $t0, -1568($fp)
	lw $t1, -1572($fp)
	mul $t0, $t0, $t1
	sw $t0, -1576($fp)
	lw $t1, -1564($fp)
	lw $t2, -1576($fp)
	bne $t1, $t2, label168
	j label169
label168:
	addi $t0, $fp, -32
	sw $t0, -1580($fp)
	li $t0, 0
	sw $t0, -1584($fp)
	lw $t0, -1332($fp)
	sw $t0, -1588($fp)
	li $t0, 0
	lw $t1, -1588($fp)
	sub $t0, $t0, $t1
	sw $t0, -1592($fp)
	li $t0, 0
	lw $t1, -1592($fp)
	sub $t0, $t0, $t1
	sw $t0, -1596($fp)
	lw $t1, -1596($fp)
	li $t2, 0
	bne $t1, $t2, label179
	j label181
label181:
	li $t0, 52002
	sw $t0, -1600($fp)
	lw $t1, -1600($fp)
	li $t2, 0
	bne $t1, $t2, label179
	j label180
label179:
	li $t0, 1
	sw $t0, -1584($fp)
label180:
	li $t0, 4
	lw $t1, -1584($fp)
	mul $t0, $t0, $t1
	sw $t0, -1604($fp)
	lw $t0, -1604($fp)
	lw $t1, -1580($fp)
	add $t0, $t0, $t1
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	lw $t1, 0($t0)
	sw $t1, -1612($fp)
	lw $ra, -4($fp)
	lw $v0, -1612($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label170
label169:
label182:
	li $t0, 57152
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -1620($fp)
	li $t0, 0
	sw $t0, -1624($fp)
	li $t0, 36191
	sw $t0, -1628($fp)
	li $t0, 0
	lw $t1, -1628($fp)
	sub $t0, $t0, $t1
	sw $t0, -1632($fp)
	lw $t1, -1632($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label187
label187:
	lw $t0, -660($fp)
	sw $t0, -1636($fp)
	lw $t1, -1636($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label186
label185:
	li $t0, 1
	sw $t0, -1624($fp)
label186:
	lw $t0, -1344($fp)
	sw $t0, -1640($fp)
	lw $t0, -516($fp)
	sw $t0, -1644($fp)
	lw $t0, -1644($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -1648($fp)
	li $t0, 0
	sw $t0, -1652($fp)
	li $t0, 60975
	sw $t0, -1656($fp)
	lw $t1, -1656($fp)
	li $t2, 0
	bne $t1, $t2, label189
	j label188
label188:
	li $t0, 1
	sw $t0, -1652($fp)
label189:
	li $t0, 0
	lw $t1, -1652($fp)
	sub $t0, $t0, $t1
	sw $t0, -1660($fp)
	addi $sp, $sp, -4
	lw $t0, -1620($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1660($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1664($fp)
	addi $sp, $sp, 24
	lw $t0, -1344($fp)
	sw $t0, -1668($fp)
	lw $t0, -1664($fp)
	lw $t1, -1668($fp)
	sub $t0, $t0, $t1
	sw $t0, -1672($fp)
	li $t0, 0
	sw $t0, -1676($fp)
	li $t0, 2536
	sw $t0, -1680($fp)
	lw $t0, -1368($fp)
	sw $t0, -1684($fp)
	lw $t1, -1680($fp)
	lw $t2, -1684($fp)
	bne $t1, $t2, label192
	j label191
label192:
	li $t0, 13336
	sw $t0, -1688($fp)
	lw $t1, -1688($fp)
	li $t2, 0
	bne $t1, $t2, label190
	j label191
label190:
	li $t0, 1
	sw $t0, -1676($fp)
label191:
	li $t0, 0
	sw $t0, -1692($fp)
	lw $t0, -1368($fp)
	sw $t0, -1696($fp)
	lw $t1, -1696($fp)
	li $t2, 0
	bne $t1, $t2, label196
	j label195
label196:
	lw $t0, 4($fp)
	sw $t0, -1700($fp)
	lw $t1, -1700($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label195
label195:
	li $t0, 28986
	sw $t0, -1704($fp)
	lw $t1, -1704($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label194
label193:
	li $t0, 1
	sw $t0, -1692($fp)
label194:
	li $t0, 0
	sw $t0, -1708($fp)
	addi $t0, $fp, -76
	sw $t0, -1712($fp)
	lw $t0, -1272($fp)
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
	lw $t1, -1728($fp)
	li $t2, 0
	bne $t1, $t2, label198
	j label197
label197:
	li $t0, 1
	sw $t0, -1708($fp)
label198:
	addi $t0, $fp, -136
	sw $t0, -1732($fp)
	lw $t0, -1320($fp)
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
	li $t0, 0
	lw $t1, -1748($fp)
	sub $t0, $t0, $t1
	sw $t0, -1752($fp)
	addi $sp, $sp, -4
	lw $t0, -1672($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1692($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1752($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1756($fp)
	addi $sp, $sp, 24
	li $t0, 59098
	sw $t0, -1760($fp)
	lw $t0, -1756($fp)
	lw $t1, -1760($fp)
	mul $t0, $t0, $t1
	sw $t0, -1764($fp)
	lw $t0, -396($fp)
	sw $t0, -1768($fp)
	lw $t0, -1764($fp)
	lw $t1, -1768($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1772($fp)
	li $t0, 0
	sw $t0, -1776($fp)
	li $t0, 46037
	sw $t0, -1780($fp)
	lw $t1, -1780($fp)
	li $t2, 0
	bne $t1, $t2, label202
	j label200
label202:
	lw $t0, -696($fp)
	sw $t0, -1784($fp)
	lw $t1, -1784($fp)
	li $t2, 0
	bne $t1, $t2, label201
	j label200
label201:
	lw $t0, -708($fp)
	sw $t0, -1788($fp)
	lw $t1, -1788($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label200
label199:
	li $t0, 1
	sw $t0, -1776($fp)
label200:
	li $t0, 15522
	sw $t0, -1792($fp)
	li $t0, 0
	lw $t1, -1792($fp)
	sub $t0, $t0, $t1
	sw $t0, -1796($fp)
	li $t0, 0
	sw $t0, -1800($fp)
	li $t0, 56233
	sw $t0, -1804($fp)
	li $t0, 34527
	sw $t0, -1808($fp)
	lw $t1, -1804($fp)
	lw $t2, -1808($fp)
	ble $t1, $t2, label203
	j label205
label205:
	lw $t0, -672($fp)
	sw $t0, -1812($fp)
	lw $t1, -1812($fp)
	li $t2, 0
	bne $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -1800($fp)
label204:
	li $t0, 0
	sw $t0, -1816($fp)
	li $t0, 0
	sw $t0, -1820($fp)
	lw $t0, -444($fp)
	sw $t0, -1824($fp)
	lw $t0, -1248($fp)
	sw $t0, -1828($fp)
	lw $t1, -1824($fp)
	lw $t2, -1828($fp)
	beq $t1, $t2, label208
	j label209
label208:
	li $t0, 1
	sw $t0, -1820($fp)
label209:
	li $t0, 1505
	sw $t0, -1832($fp)
	lw $t1, -1820($fp)
	lw $t2, -1832($fp)
	beq $t1, $t2, label206
	j label207
label206:
	li $t0, 1
	sw $t0, -1816($fp)
label207:
	li $t0, 5941
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -1840($fp)
	addi $sp, $sp, -4
	lw $t0, -1776($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1800($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1840($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1844($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -1844($fp)
	sub $t0, $t0, $t1
	sw $t0, -1848($fp)
	lw $t0, -1176($fp)
	sw $t0, -1852($fp)
	li $t0, 0
	sw $t0, -1856($fp)
	addi $t0, $fp, -132
	sw $t0, -1860($fp)
	lw $t0, -672($fp)
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
	lw $t0, -420($fp)
	sw $t0, -1880($fp)
	lw $t1, -1876($fp)
	lw $t2, -1880($fp)
	ble $t1, $t2, label210
	j label211
label210:
	li $t0, 1
	sw $t0, -1856($fp)
label211:
	lw $t0, -1200($fp)
	sw $t0, -1884($fp)
	li $t0, 49582
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	sw $t0, -1892($fp)
	addi $sp, $sp, -4
	lw $t0, -1848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1892($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1896($fp)
	addi $sp, $sp, 24
	lw $t0, -1772($fp)
	lw $t1, -1896($fp)
	add $t0, $t0, $t1
	sw $t0, -1900($fp)
	lw $t1, -1900($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label184
label183:
	li $t0, 12043
	sw $t0, -1904($fp)
	lw $t0, -1904($fp)
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	sw $t0, -1912($fp)
	li $t0, 25621
	sw $t0, -1916($fp)
	lw $t0, -1916($fp)
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	sw $t0, -1924($fp)
	li $t0, 0
	sw $t0, -1928($fp)
	addi $t0, $fp, -76
	sw $t0, -1932($fp)
	lw $t0, -1344($fp)
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
	lw $t1, -1948($fp)
	li $t2, 0
	bne $t1, $t2, label213
	j label214
label214:
	li $t0, 26668
	sw $t0, -1952($fp)
	li $t0, 0
	lw $t1, -1952($fp)
	sub $t0, $t0, $t1
	sw $t0, -1956($fp)
	lw $t1, -1956($fp)
	li $t2, 0
	bne $t1, $t2, label212
	j label213
label212:
	li $t0, 1
	sw $t0, -1928($fp)
label213:
	li $t0, 24375
	sw $t0, -1960($fp)
	lw $t0, -1960($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -1964($fp)
	li $t0, 0
	sw $t0, -1968($fp)
	li $t0, 0
	sw $t0, -1972($fp)
	li $t0, 42358
	sw $t0, -1976($fp)
	lw $t1, -1976($fp)
	li $t2, 0
	bne $t1, $t2, label221
	j label220
label220:
	li $t0, 1
	sw $t0, -1972($fp)
label221:
	lw $t0, 4($fp)
	sw $t0, -1980($fp)
	lw $t1, -1972($fp)
	lw $t2, -1980($fp)
	bgt $t1, $t2, label218
	j label219
label218:
	li $t0, 1
	sw $t0, -1968($fp)
label219:
	addi $sp, $sp, -4
	lw $t0, -1964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1968($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1984($fp)
	addi $sp, $sp, 12
	lw $t1, -1984($fp)
	li $t2, 0
	bne $t1, $t2, label215
	j label216
label215:
	li $t0, 0
	sw $t0, -1988($fp)
	lw $t0, -1332($fp)
	sw $t0, -1992($fp)
	li $t0, 0
	sw $t0, -1996($fp)
	li $t0, 49964
	sw $t0, -2000($fp)
	lw $t1, -2000($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label225
label225:
	li $t0, 1
	sw $t0, -1996($fp)
label226:
	lw $t0, -456($fp)
	sw $t0, -2004($fp)
	lw $t0, -1996($fp)
	lw $t1, -2004($fp)
	add $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $t1, -1992($fp)
	lw $t2, -2008($fp)
	ble $t1, $t2, label222
	j label224
label224:
	li $t0, 30239
	sw $t0, -2012($fp)
	lw $t0, -1920($fp)
	sw $t0, -2016($fp)
	lw $t0, -2012($fp)
	lw $t1, -2016($fp)
	add $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t1, -2020($fp)
	li $t2, 0
	bne $t1, $t2, label227
	j label223
label227:
	li $t0, 5365
	sw $t0, -2024($fp)
	lw $t1, -2024($fp)
	li $t2, 0
	bne $t1, $t2, label222
	j label223
label222:
	li $t0, 1
	sw $t0, -1988($fp)
label223:
	lw $ra, -4($fp)
	lw $v0, -1988($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label217
label216:
	addi $t0, $fp, -108
	sw $t0, -2028($fp)
	li $t0, 0
	sw $t0, -2032($fp)
	lw $t0, -456($fp)
	sw $t0, -2036($fp)
	li $t0, 16967
	sw $t0, -2040($fp)
	lw $t1, -2036($fp)
	lw $t2, -2040($fp)
	bne $t1, $t2, label232
	j label233
label232:
	li $t0, 1
	sw $t0, -2032($fp)
label233:
	li $t0, 4
	lw $t1, -2032($fp)
	mul $t0, $t0, $t1
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	lw $t1, -2028($fp)
	add $t0, $t0, $t1
	sw $t0, -2048($fp)
	lw $t0, -2048($fp)
	lw $t1, 0($t0)
	sw $t1, -2052($fp)
	lw $t1, -2052($fp)
	li $t2, 0
	bne $t1, $t2, label229
	j label231
label231:
	li $t0, 62918
	sw $t0, -2056($fp)
	li $t0, 63504
	sw $t0, -2060($fp)
	lw $t0, -2056($fp)
	lw $t1, -2060($fp)
	add $t0, $t0, $t1
	sw $t0, -2064($fp)
	lw $t0, -1344($fp)
	sw $t0, -2068($fp)
	lw $t0, -2064($fp)
	lw $t1, -2068($fp)
	add $t0, $t0, $t1
	sw $t0, -2072($fp)
	li $t0, 0
	sw $t0, -2076($fp)
	lw $t0, -516($fp)
	sw $t0, -2080($fp)
	lw $t1, -2080($fp)
	li $t2, 0
	bne $t1, $t2, label235
	j label234
label234:
	li $t0, 1
	sw $t0, -2076($fp)
label235:
	lw $t0, -2072($fp)
	lw $t1, -2076($fp)
	sub $t0, $t0, $t1
	sw $t0, -2084($fp)
	lw $t1, -2084($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label229
label228:
	lw $t0, -1260($fp)
	sw $t0, -2088($fp)
	lw $t0, -1908($fp)
	sw $t0, -2092($fp)
	addi $t0, $fp, -136
	sw $t0, -2096($fp)
	lw $t0, -516($fp)
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
	li $t0, 0
	lw $t1, -2112($fp)
	sub $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t0, -672($fp)
	sw $t0, -2120($fp)
	addi $sp, $sp, -4
	lw $t0, -2116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2120($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2124($fp)
	addi $sp, $sp, 12
	lw $t0, -2092($fp)
	lw $t1, -2124($fp)
	mul $t0, $t0, $t1
	sw $t0, -2128($fp)
	li $t0, 0
	lw $t1, -2128($fp)
	sub $t0, $t0, $t1
	sw $t0, -2132($fp)
	lw $t0, -2088($fp)
	lw $t1, -2132($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2136($fp)
	li $t0, 0
	lw $t1, -2136($fp)
	sub $t0, $t0, $t1
	sw $t0, -2140($fp)
	addi $t0, $fp, -24
	sw $t0, -2144($fp)
	li $t0, 0
	sw $t0, -2148($fp)
	li $t0, 20397
	sw $t0, -2152($fp)
	lw $t1, -2152($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label238
label238:
	lw $t0, -1188($fp)
	sw $t0, -2156($fp)
	lw $t1, -2156($fp)
	li $t2, 0
	bne $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -2148($fp)
label237:
	li $t0, 4
	lw $t1, -2148($fp)
	mul $t0, $t0, $t1
	sw $t0, -2160($fp)
	lw $t0, -2160($fp)
	lw $t1, -2144($fp)
	add $t0, $t0, $t1
	sw $t0, -2164($fp)
	lw $t0, -2164($fp)
	lw $t1, 0($t0)
	sw $t1, -2168($fp)
	lw $t0, -2140($fp)
	lw $t1, -2168($fp)
	sub $t0, $t0, $t1
	sw $t0, -2172($fp)
label229:
label217:
	j label182
label184:
label170:
	li $t0, 0
	sw $t0, -2176($fp)
	li $t0, 0
	sw $t0, -2180($fp)
	li $t0, 8928
	sw $t0, -2184($fp)
	li $t0, 0
	lw $t1, -2184($fp)
	sub $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t1, -2188($fp)
	li $t2, 0
	bne $t1, $t2, label242
	j label241
label241:
	li $t0, 1
	sw $t0, -2180($fp)
label242:
	addi $t0, $fp, -108
	sw $t0, -2192($fp)
	lw $t0, -1284($fp)
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
	lw $t1, -2180($fp)
	lw $t2, -2208($fp)
	bge $t1, $t2, label239
	j label240
label239:
	li $t0, 1
	sw $t0, -2176($fp)
label240:
	lw $t0, -2176($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -2212($fp)
	addi $t0, $fp, -24
	sw $t0, -2216($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -2236($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -2256($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -2276($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -2296($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -2316($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -2336($fp)
	li $t0, 1
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
	addi $t0, $fp, -40
	sw $t0, -2356($fp)
	li $t0, 0
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
	addi $t0, $fp, -40
	sw $t0, -2376($fp)
	li $t0, 1
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
	lw $t0, -372($fp)
	sw $t0, -2396($fp)
	lw $t0, -2396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -2400($fp)
	lw $t0, -2400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -2404($fp)
	lw $t0, -2404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -408($fp)
	sw $t0, -2408($fp)
	lw $t0, -2408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -2412($fp)
	lw $t0, -2412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -2416($fp)
	lw $t0, -2416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -2420($fp)
	lw $t0, -2420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -2424($fp)
	lw $t0, -2424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -2428($fp)
	lw $t0, -2428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -2432($fp)
	lw $t0, -2432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -2436($fp)
	lw $t0, -2436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -2440($fp)
	lw $t0, -2440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -2444($fp)
	lw $t0, -2444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -2448($fp)
	lw $t0, -2448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2452($fp)
	li $t0, 0
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
	addi $t0, $fp, -60
	sw $t0, -2472($fp)
	li $t0, 1
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
	addi $t0, $fp, -60
	sw $t0, -2492($fp)
	li $t0, 2
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
	addi $t0, $fp, -60
	sw $t0, -2512($fp)
	li $t0, 3
	sw $t0, -2516($fp)
	li $t0, 4
	lw $t1, -2516($fp)
	mul $t0, $t0, $t1
	sw $t0, -2520($fp)
	lw $t0, -2520($fp)
	lw $t1, -2512($fp)
	add $t0, $t0, $t1
	sw $t0, -2524($fp)
	lw $t0, -2524($fp)
	lw $t1, 0($t0)
	sw $t1, -2528($fp)
	lw $t0, -2528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -2532($fp)
	li $t0, 4
	sw $t0, -2536($fp)
	li $t0, 4
	lw $t1, -2536($fp)
	mul $t0, $t0, $t1
	sw $t0, -2540($fp)
	lw $t0, -2540($fp)
	lw $t1, -2532($fp)
	add $t0, $t0, $t1
	sw $t0, -2544($fp)
	lw $t0, -2544($fp)
	lw $t1, 0($t0)
	sw $t1, -2548($fp)
	lw $t0, -2548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -2552($fp)
	lw $t0, -2552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -684($fp)
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -696($fp)
	sw $t0, -2564($fp)
	lw $t0, -2564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -2568($fp)
	lw $t0, -2568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -2572($fp)
	li $t0, 0
	sw $t0, -2576($fp)
	li $t0, 4
	lw $t1, -2576($fp)
	mul $t0, $t0, $t1
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	lw $t1, -2572($fp)
	add $t0, $t0, $t1
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	lw $t1, 0($t0)
	sw $t1, -2588($fp)
	lw $t0, -2588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -2592($fp)
	li $t0, 1
	sw $t0, -2596($fp)
	li $t0, 4
	lw $t1, -2596($fp)
	mul $t0, $t0, $t1
	sw $t0, -2600($fp)
	lw $t0, -2600($fp)
	lw $t1, -2592($fp)
	add $t0, $t0, $t1
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	lw $t1, 0($t0)
	sw $t1, -2608($fp)
	lw $t0, -2608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -2612($fp)
	li $t0, 2
	sw $t0, -2616($fp)
	li $t0, 4
	lw $t1, -2616($fp)
	mul $t0, $t0, $t1
	sw $t0, -2620($fp)
	lw $t0, -2620($fp)
	lw $t1, -2612($fp)
	add $t0, $t0, $t1
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	lw $t1, 0($t0)
	sw $t1, -2628($fp)
	lw $t0, -2628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -2632($fp)
	li $t0, 3
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
	lw $t0, -2648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -816($fp)
	sw $t0, -2652($fp)
	lw $t0, -2652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2656($fp)
	li $t0, 0
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
	addi $t0, $fp, -108
	sw $t0, -2676($fp)
	li $t0, 1
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
	addi $t0, $fp, -108
	sw $t0, -2696($fp)
	li $t0, 2
	sw $t0, -2700($fp)
	li $t0, 4
	lw $t1, -2700($fp)
	mul $t0, $t0, $t1
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	lw $t1, -2696($fp)
	add $t0, $t0, $t1
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	lw $t1, 0($t0)
	sw $t1, -2712($fp)
	lw $t0, -2712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2716($fp)
	li $t0, 3
	sw $t0, -2720($fp)
	li $t0, 4
	lw $t1, -2720($fp)
	mul $t0, $t0, $t1
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	lw $t1, -2716($fp)
	add $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	lw $t1, 0($t0)
	sw $t1, -2732($fp)
	lw $t0, -2732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -2736($fp)
	li $t0, 4
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
	addi $t0, $fp, -108
	sw $t0, -2756($fp)
	li $t0, 5
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
	addi $t0, $fp, -108
	sw $t0, -2776($fp)
	li $t0, 6
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
	addi $t0, $fp, -108
	sw $t0, -2796($fp)
	li $t0, 7
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
	lw $t0, -1020($fp)
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -2820($fp)
	li $t0, 0
	sw $t0, -2824($fp)
	li $t0, 4
	lw $t1, -2824($fp)
	mul $t0, $t0, $t1
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	lw $t1, -2820($fp)
	add $t0, $t0, $t1
	sw $t0, -2832($fp)
	lw $t0, -2832($fp)
	lw $t1, 0($t0)
	sw $t1, -2836($fp)
	lw $t0, -2836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -2840($fp)
	li $t0, 1
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
	lw $t0, -2856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -2860($fp)
	li $t0, 2
	sw $t0, -2864($fp)
	li $t0, 4
	lw $t1, -2864($fp)
	mul $t0, $t0, $t1
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	lw $t1, -2860($fp)
	add $t0, $t0, $t1
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	lw $t1, 0($t0)
	sw $t1, -2876($fp)
	lw $t0, -2876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -2880($fp)
	li $t0, 3
	sw $t0, -2884($fp)
	li $t0, 4
	lw $t1, -2884($fp)
	mul $t0, $t0, $t1
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	lw $t1, -2880($fp)
	add $t0, $t0, $t1
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	lw $t1, 0($t0)
	sw $t1, -2896($fp)
	lw $t0, -2896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -2900($fp)
	li $t0, 4
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
	lw $t0, -2916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -2920($fp)
	li $t0, 5
	sw $t0, -2924($fp)
	li $t0, 4
	lw $t1, -2924($fp)
	mul $t0, $t0, $t1
	sw $t0, -2928($fp)
	lw $t0, -2928($fp)
	lw $t1, -2920($fp)
	add $t0, $t0, $t1
	sw $t0, -2932($fp)
	lw $t0, -2932($fp)
	lw $t1, 0($t0)
	sw $t1, -2936($fp)
	lw $t0, -2936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1176($fp)
	sw $t0, -2940($fp)
	lw $t0, -2940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1188($fp)
	sw $t0, -2944($fp)
	lw $t0, -2944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1200($fp)
	sw $t0, -2948($fp)
	lw $t0, -2948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1212($fp)
	sw $t0, -2952($fp)
	lw $t0, -2952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -2956($fp)
	li $t0, 0
	sw $t0, -2960($fp)
	li $t0, 4
	lw $t1, -2960($fp)
	mul $t0, $t0, $t1
	sw $t0, -2964($fp)
	lw $t0, -2964($fp)
	lw $t1, -2956($fp)
	add $t0, $t0, $t1
	sw $t0, -2968($fp)
	lw $t0, -2968($fp)
	lw $t1, 0($t0)
	sw $t1, -2972($fp)
	lw $t0, -2972($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1248($fp)
	sw $t0, -2976($fp)
	lw $t0, -2976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1260($fp)
	sw $t0, -2980($fp)
	lw $t0, -2980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1272($fp)
	sw $t0, -2984($fp)
	lw $t0, -2984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1284($fp)
	sw $t0, -2988($fp)
	lw $t0, -2988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1296($fp)
	sw $t0, -2992($fp)
	lw $t0, -2992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1308($fp)
	sw $t0, -2996($fp)
	lw $t0, -2996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1320($fp)
	sw $t0, -3000($fp)
	lw $t0, -3000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1332($fp)
	sw $t0, -3004($fp)
	lw $t0, -3004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1344($fp)
	sw $t0, -3008($fp)
	lw $t0, -3008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1356($fp)
	sw $t0, -3012($fp)
	lw $t0, -3012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1368($fp)
	sw $t0, -3016($fp)
	lw $t0, -3016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1380($fp)
	sw $t0, -3020($fp)
	lw $t0, -3020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1392($fp)
	sw $t0, -3024($fp)
	lw $t0, -3024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -3028($fp)
	li $t0, 0
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
	addi $t0, $fp, -148
	sw $t0, -3048($fp)
	li $t0, 1
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
	addi $t0, $fp, -148
	sw $t0, -3068($fp)
	li $t0, 2
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
	lw $t0, -1476($fp)
	sw $t0, -3088($fp)
	lw $t0, -3088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -3092($fp)
	li $t0, 0
	sw $t0, -3096($fp)
	li $t0, 40837
	sw $t0, -3100($fp)
	li $t0, 49061
	sw $t0, -3104($fp)
	lw $t0, -3100($fp)
	lw $t1, -3104($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3108($fp)
	lw $t1, -3108($fp)
	li $t2, 0
	bne $t1, $t2, label245
	j label244
label245:
	li $t0, 35235
	sw $t0, -3112($fp)
	lw $t1, -3112($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label244
label243:
	li $t0, 1
	sw $t0, -3096($fp)
label244:
	addi $sp, $sp, -4
	lw $t0, -3092($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3096($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3116($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -3120($fp)
	lw $t0, -660($fp)
	sw $t0, -3124($fp)
	lw $t0, -708($fp)
	sw $t0, -3128($fp)
	lw $t0, -3124($fp)
	lw $t1, -3128($fp)
	mul $t0, $t0, $t1
	sw $t0, -3132($fp)
	li $t0, 32257
	sw $t0, -3136($fp)
	lw $t1, -3132($fp)
	lw $t2, -3136($fp)
	bne $t1, $t2, label246
	j label247
label246:
	li $t0, 1
	sw $t0, -3120($fp)
label247:
	li $t0, 0
	sw $t0, -3140($fp)
	li $t0, 7950
	sw $t0, -3144($fp)
	li $t0, 8427
	sw $t0, -3148($fp)
	lw $t0, -3144($fp)
	lw $t1, -3148($fp)
	mul $t0, $t0, $t1
	sw $t0, -3152($fp)
	lw $t0, -708($fp)
	sw $t0, -3156($fp)
	lw $t1, -3152($fp)
	lw $t2, -3156($fp)
	beq $t1, $t2, label248
	j label249
label248:
	li $t0, 1
	sw $t0, -3140($fp)
label249:
	addi $t0, $fp, -60
	sw $t0, -3160($fp)
	li $t0, 0
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
	lw $t0, 4($fp)
	sw $t0, -3180($fp)
	lw $t0, -3176($fp)
	lw $t1, -3180($fp)
	mul $t0, $t0, $t1
	sw $t0, -3184($fp)
	lw $t0, -492($fp)
	sw $t0, -3188($fp)
	lw $t0, -1320($fp)
	sw $t0, -3192($fp)
	lw $t0, -3188($fp)
	lw $t1, -3192($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3196($fp)
	li $t0, 0
	sw $t0, -3200($fp)
	li $t0, 27304
	sw $t0, -3204($fp)
	lw $t1, -3204($fp)
	li $t2, 0
	bne $t1, $t2, label251
	j label250
label250:
	li $t0, 1
	sw $t0, -3200($fp)
label251:
	li $t0, 12511
	sw $t0, -3208($fp)
	lw $t0, -3200($fp)
	lw $t1, -3208($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3212($fp)
	addi $sp, $sp, -4
	lw $t0, -3120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3212($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3216($fp)
	addi $sp, $sp, 24
	lw $t0, -3116($fp)
	lw $t1, -3216($fp)
	sub $t0, $t0, $t1
	sw $t0, -3220($fp)
	lw $ra, -4($fp)
	lw $v0, -3220($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -24
	sw $t0, -3224($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -3244($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -3264($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -3284($fp)
	li $t0, 3
	sw $t0, -3288($fp)
	li $t0, 4
	lw $t1, -3288($fp)
	mul $t0, $t0, $t1
	sw $t0, -3292($fp)
	lw $t0, -3292($fp)
	lw $t1, -3284($fp)
	add $t0, $t0, $t1
	sw $t0, -3296($fp)
	lw $t0, -3296($fp)
	lw $t1, 0($t0)
	sw $t1, -3300($fp)
	lw $t0, -3300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -3304($fp)
	li $t0, 4
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
	lw $t0, -3320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -3324($fp)
	li $t0, 0
	sw $t0, -3328($fp)
	li $t0, 4
	lw $t1, -3328($fp)
	mul $t0, $t0, $t1
	sw $t0, -3332($fp)
	lw $t0, -3332($fp)
	lw $t1, -3324($fp)
	add $t0, $t0, $t1
	sw $t0, -3336($fp)
	lw $t0, -3336($fp)
	lw $t1, 0($t0)
	sw $t1, -3340($fp)
	lw $t0, -3340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -3344($fp)
	li $t0, 1
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
	lw $t0, -3360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -3364($fp)
	li $t0, 0
	sw $t0, -3368($fp)
	li $t0, 4
	lw $t1, -3368($fp)
	mul $t0, $t0, $t1
	sw $t0, -3372($fp)
	lw $t0, -3372($fp)
	lw $t1, -3364($fp)
	add $t0, $t0, $t1
	sw $t0, -3376($fp)
	lw $t0, -3376($fp)
	lw $t1, 0($t0)
	sw $t1, -3380($fp)
	lw $t0, -3380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -3384($fp)
	li $t0, 1
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
	lw $t0, -3400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -3404($fp)
	lw $t0, -3404($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -3408($fp)
	lw $t0, -3408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -3412($fp)
	lw $t0, -3412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -408($fp)
	sw $t0, -3416($fp)
	lw $t0, -3416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -3420($fp)
	lw $t0, -3420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -3424($fp)
	lw $t0, -3424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -3428($fp)
	lw $t0, -3428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -3432($fp)
	lw $t0, -3432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -3436($fp)
	lw $t0, -3436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -3440($fp)
	lw $t0, -3440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -3444($fp)
	lw $t0, -3444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -3448($fp)
	lw $t0, -3448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -3452($fp)
	lw $t0, -3452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -3456($fp)
	lw $t0, -3456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3460($fp)
	li $t0, 0
	sw $t0, -3464($fp)
	li $t0, 4
	lw $t1, -3464($fp)
	mul $t0, $t0, $t1
	sw $t0, -3468($fp)
	lw $t0, -3468($fp)
	lw $t1, -3460($fp)
	add $t0, $t0, $t1
	sw $t0, -3472($fp)
	lw $t0, -3472($fp)
	lw $t1, 0($t0)
	sw $t1, -3476($fp)
	lw $t0, -3476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
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
	lw $t0, -3496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3500($fp)
	li $t0, 2
	sw $t0, -3504($fp)
	li $t0, 4
	lw $t1, -3504($fp)
	mul $t0, $t0, $t1
	sw $t0, -3508($fp)
	lw $t0, -3508($fp)
	lw $t1, -3500($fp)
	add $t0, $t0, $t1
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	lw $t1, 0($t0)
	sw $t1, -3516($fp)
	lw $t0, -3516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3520($fp)
	li $t0, 3
	sw $t0, -3524($fp)
	li $t0, 4
	lw $t1, -3524($fp)
	mul $t0, $t0, $t1
	sw $t0, -3528($fp)
	lw $t0, -3528($fp)
	lw $t1, -3520($fp)
	add $t0, $t0, $t1
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	lw $t1, 0($t0)
	sw $t1, -3536($fp)
	lw $t0, -3536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -3540($fp)
	li $t0, 4
	sw $t0, -3544($fp)
	li $t0, 4
	lw $t1, -3544($fp)
	mul $t0, $t0, $t1
	sw $t0, -3548($fp)
	lw $t0, -3548($fp)
	lw $t1, -3540($fp)
	add $t0, $t0, $t1
	sw $t0, -3552($fp)
	lw $t0, -3552($fp)
	lw $t1, 0($t0)
	sw $t1, -3556($fp)
	lw $t0, -3556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -660($fp)
	sw $t0, -3560($fp)
	lw $t0, -3560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -3564($fp)
	lw $t0, -3564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -684($fp)
	sw $t0, -3568($fp)
	lw $t0, -3568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -696($fp)
	sw $t0, -3572($fp)
	lw $t0, -3572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -3576($fp)
	lw $t0, -3576($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -3580($fp)
	li $t0, 0
	sw $t0, -3584($fp)
	li $t0, 4
	lw $t1, -3584($fp)
	mul $t0, $t0, $t1
	sw $t0, -3588($fp)
	lw $t0, -3588($fp)
	lw $t1, -3580($fp)
	add $t0, $t0, $t1
	sw $t0, -3592($fp)
	lw $t0, -3592($fp)
	lw $t1, 0($t0)
	sw $t1, -3596($fp)
	lw $t0, -3596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -3600($fp)
	li $t0, 1
	sw $t0, -3604($fp)
	li $t0, 4
	lw $t1, -3604($fp)
	mul $t0, $t0, $t1
	sw $t0, -3608($fp)
	lw $t0, -3608($fp)
	lw $t1, -3600($fp)
	add $t0, $t0, $t1
	sw $t0, -3612($fp)
	lw $t0, -3612($fp)
	lw $t1, 0($t0)
	sw $t1, -3616($fp)
	lw $t0, -3616($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -3620($fp)
	li $t0, 2
	sw $t0, -3624($fp)
	li $t0, 4
	lw $t1, -3624($fp)
	mul $t0, $t0, $t1
	sw $t0, -3628($fp)
	lw $t0, -3628($fp)
	lw $t1, -3620($fp)
	add $t0, $t0, $t1
	sw $t0, -3632($fp)
	lw $t0, -3632($fp)
	lw $t1, 0($t0)
	sw $t1, -3636($fp)
	lw $t0, -3636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -3640($fp)
	li $t0, 3
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
	lw $t0, -3656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -816($fp)
	sw $t0, -3660($fp)
	lw $t0, -3660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -3664($fp)
	li $t0, 0
	sw $t0, -3668($fp)
	li $t0, 4
	lw $t1, -3668($fp)
	mul $t0, $t0, $t1
	sw $t0, -3672($fp)
	lw $t0, -3672($fp)
	lw $t1, -3664($fp)
	add $t0, $t0, $t1
	sw $t0, -3676($fp)
	lw $t0, -3676($fp)
	lw $t1, 0($t0)
	sw $t1, -3680($fp)
	lw $t0, -3680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -3684($fp)
	li $t0, 1
	sw $t0, -3688($fp)
	li $t0, 4
	lw $t1, -3688($fp)
	mul $t0, $t0, $t1
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	lw $t1, -3684($fp)
	add $t0, $t0, $t1
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	lw $t1, 0($t0)
	sw $t1, -3700($fp)
	lw $t0, -3700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -3704($fp)
	li $t0, 2
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
	lw $t0, -3720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -3724($fp)
	li $t0, 3
	sw $t0, -3728($fp)
	li $t0, 4
	lw $t1, -3728($fp)
	mul $t0, $t0, $t1
	sw $t0, -3732($fp)
	lw $t0, -3732($fp)
	lw $t1, -3724($fp)
	add $t0, $t0, $t1
	sw $t0, -3736($fp)
	lw $t0, -3736($fp)
	lw $t1, 0($t0)
	sw $t1, -3740($fp)
	lw $t0, -3740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -3744($fp)
	li $t0, 4
	sw $t0, -3748($fp)
	li $t0, 4
	lw $t1, -3748($fp)
	mul $t0, $t0, $t1
	sw $t0, -3752($fp)
	lw $t0, -3752($fp)
	lw $t1, -3744($fp)
	add $t0, $t0, $t1
	sw $t0, -3756($fp)
	lw $t0, -3756($fp)
	lw $t1, 0($t0)
	sw $t1, -3760($fp)
	lw $t0, -3760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -3764($fp)
	li $t0, 5
	sw $t0, -3768($fp)
	li $t0, 4
	lw $t1, -3768($fp)
	mul $t0, $t0, $t1
	sw $t0, -3772($fp)
	lw $t0, -3772($fp)
	lw $t1, -3764($fp)
	add $t0, $t0, $t1
	sw $t0, -3776($fp)
	lw $t0, -3776($fp)
	lw $t1, 0($t0)
	sw $t1, -3780($fp)
	lw $t0, -3780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -3784($fp)
	li $t0, 6
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
	lw $t0, -3800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -3804($fp)
	li $t0, 7
	sw $t0, -3808($fp)
	li $t0, 4
	lw $t1, -3808($fp)
	mul $t0, $t0, $t1
	sw $t0, -3812($fp)
	lw $t0, -3812($fp)
	lw $t1, -3804($fp)
	add $t0, $t0, $t1
	sw $t0, -3816($fp)
	lw $t0, -3816($fp)
	lw $t1, 0($t0)
	sw $t1, -3820($fp)
	lw $t0, -3820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1020($fp)
	sw $t0, -3824($fp)
	lw $t0, -3824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -3828($fp)
	li $t0, 0
	sw $t0, -3832($fp)
	li $t0, 4
	lw $t1, -3832($fp)
	mul $t0, $t0, $t1
	sw $t0, -3836($fp)
	lw $t0, -3836($fp)
	lw $t1, -3828($fp)
	add $t0, $t0, $t1
	sw $t0, -3840($fp)
	lw $t0, -3840($fp)
	lw $t1, 0($t0)
	sw $t1, -3844($fp)
	lw $t0, -3844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -3848($fp)
	li $t0, 1
	sw $t0, -3852($fp)
	li $t0, 4
	lw $t1, -3852($fp)
	mul $t0, $t0, $t1
	sw $t0, -3856($fp)
	lw $t0, -3856($fp)
	lw $t1, -3848($fp)
	add $t0, $t0, $t1
	sw $t0, -3860($fp)
	lw $t0, -3860($fp)
	lw $t1, 0($t0)
	sw $t1, -3864($fp)
	lw $t0, -3864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -3868($fp)
	li $t0, 2
	sw $t0, -3872($fp)
	li $t0, 4
	lw $t1, -3872($fp)
	mul $t0, $t0, $t1
	sw $t0, -3876($fp)
	lw $t0, -3876($fp)
	lw $t1, -3868($fp)
	add $t0, $t0, $t1
	sw $t0, -3880($fp)
	lw $t0, -3880($fp)
	lw $t1, 0($t0)
	sw $t1, -3884($fp)
	lw $t0, -3884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -3888($fp)
	li $t0, 3
	sw $t0, -3892($fp)
	li $t0, 4
	lw $t1, -3892($fp)
	mul $t0, $t0, $t1
	sw $t0, -3896($fp)
	lw $t0, -3896($fp)
	lw $t1, -3888($fp)
	add $t0, $t0, $t1
	sw $t0, -3900($fp)
	lw $t0, -3900($fp)
	lw $t1, 0($t0)
	sw $t1, -3904($fp)
	lw $t0, -3904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -3908($fp)
	li $t0, 4
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
	lw $t0, -3924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -3928($fp)
	li $t0, 5
	sw $t0, -3932($fp)
	li $t0, 4
	lw $t1, -3932($fp)
	mul $t0, $t0, $t1
	sw $t0, -3936($fp)
	lw $t0, -3936($fp)
	lw $t1, -3928($fp)
	add $t0, $t0, $t1
	sw $t0, -3940($fp)
	lw $t0, -3940($fp)
	lw $t1, 0($t0)
	sw $t1, -3944($fp)
	lw $t0, -3944($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1176($fp)
	sw $t0, -3948($fp)
	lw $t0, -3948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1188($fp)
	sw $t0, -3952($fp)
	lw $t0, -3952($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1200($fp)
	sw $t0, -3956($fp)
	lw $t0, -3956($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1212($fp)
	sw $t0, -3960($fp)
	lw $t0, -3960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
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
	lw $t0, -1248($fp)
	sw $t0, -3984($fp)
	lw $t0, -3984($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1260($fp)
	sw $t0, -3988($fp)
	lw $t0, -3988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1272($fp)
	sw $t0, -3992($fp)
	lw $t0, -3992($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1284($fp)
	sw $t0, -3996($fp)
	lw $t0, -3996($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1296($fp)
	sw $t0, -4000($fp)
	lw $t0, -4000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1308($fp)
	sw $t0, -4004($fp)
	lw $t0, -4004($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1320($fp)
	sw $t0, -4008($fp)
	lw $t0, -4008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1332($fp)
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1344($fp)
	sw $t0, -4016($fp)
	lw $t0, -4016($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1356($fp)
	sw $t0, -4020($fp)
	lw $t0, -4020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1368($fp)
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1380($fp)
	sw $t0, -4028($fp)
	lw $t0, -4028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1392($fp)
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -4036($fp)
	li $t0, 0
	sw $t0, -4040($fp)
	li $t0, 4
	lw $t1, -4040($fp)
	mul $t0, $t0, $t1
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	lw $t1, -4036($fp)
	add $t0, $t0, $t1
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	lw $t1, 0($t0)
	sw $t1, -4052($fp)
	lw $t0, -4052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -4056($fp)
	li $t0, 1
	sw $t0, -4060($fp)
	li $t0, 4
	lw $t1, -4060($fp)
	mul $t0, $t0, $t1
	sw $t0, -4064($fp)
	lw $t0, -4064($fp)
	lw $t1, -4056($fp)
	add $t0, $t0, $t1
	sw $t0, -4068($fp)
	lw $t0, -4068($fp)
	lw $t1, 0($t0)
	sw $t1, -4072($fp)
	lw $t0, -4072($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -4076($fp)
	li $t0, 2
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
	lw $t0, -4092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1476($fp)
	sw $t0, -4096($fp)
	lw $t0, -4096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -4100($fp)
	li $t0, 1513
	sw $t0, -4104($fp)
	li $t0, 0
	sw $t0, -4108($fp)
	li $t0, 58010
	sw $t0, -4112($fp)
	lw $t1, -4112($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label254
label254:
	li $t0, 1
	sw $t0, -4108($fp)
label255:
	lw $t0, -672($fp)
	sw $t0, -4116($fp)
	lw $t0, -4108($fp)
	lw $t1, -4116($fp)
	mul $t0, $t0, $t1
	sw $t0, -4120($fp)
	addi $t0, $fp, -76
	sw $t0, -4124($fp)
	lw $t0, 20($fp)
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
	lw $t0, -456($fp)
	sw $t0, -4144($fp)
	li $t0, 55877
	sw $t0, -4148($fp)
	lw $t0, -4144($fp)
	lw $t1, -4148($fp)
	sub $t0, $t0, $t1
	sw $t0, -4152($fp)
	li $t0, 61591
	sw $t0, -4156($fp)
	lw $t0, -4152($fp)
	lw $t1, -4156($fp)
	sub $t0, $t0, $t1
	sw $t0, -4160($fp)
	addi $sp, $sp, -4
	lw $t0, -4140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4160($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4164($fp)
	addi $sp, $sp, 12
	lw $t0, -432($fp)
	sw $t0, -4168($fp)
	lw $t0, -4164($fp)
	lw $t1, -4168($fp)
	mul $t0, $t0, $t1
	sw $t0, -4172($fp)
	li $t0, 0
	sw $t0, -4176($fp)
	li $t0, 0
	sw $t0, -4180($fp)
	li $t0, 19232
	sw $t0, -4184($fp)
	lw $t0, -1356($fp)
	sw $t0, -4188($fp)
	lw $t0, -4184($fp)
	lw $t1, -4188($fp)
	mul $t0, $t0, $t1
	sw $t0, -4192($fp)
	lw $t0, -1380($fp)
	sw $t0, -4196($fp)
	lw $t1, -4192($fp)
	lw $t2, -4196($fp)
	bgt $t1, $t2, label258
	j label259
label258:
	li $t0, 1
	sw $t0, -4180($fp)
label259:
	lw $t0, -1308($fp)
	sw $t0, -4200($fp)
	lw $t0, -4200($fp)
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -4204($fp)
	li $t0, 0
	sw $t0, -4208($fp)
	lw $t0, -660($fp)
	sw $t0, -4212($fp)
	lw $t1, -4212($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label262
label262:
	lw $t0, 4($fp)
	sw $t0, -4216($fp)
	lw $t1, -4216($fp)
	li $t2, 0
	bne $t1, $t2, label260
	j label261
label260:
	li $t0, 1
	sw $t0, -4208($fp)
label261:
	li $t0, 0
	sw $t0, -4220($fp)
	li $t0, 29209
	sw $t0, -4224($fp)
	lw $t1, -4224($fp)
	li $t2, 0
	bne $t1, $t2, label265
	j label263
label265:
	lw $t0, -396($fp)
	sw $t0, -4228($fp)
	lw $t1, -4228($fp)
	li $t2, 0
	bne $t1, $t2, label263
	j label264
label263:
	li $t0, 1
	sw $t0, -4220($fp)
label264:
	li $t0, 18540
	sw $t0, -4232($fp)
	addi $sp, $sp, -4
	lw $t0, -4180($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4204($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4208($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4232($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4236($fp)
	addi $sp, $sp, 24
	li $t0, 44161
	sw $t0, -4240($fp)
	lw $t1, -4236($fp)
	lw $t2, -4240($fp)
	beq $t1, $t2, label256
	j label257
label256:
	li $t0, 1
	sw $t0, -4176($fp)
label257:
	li $t0, 0
	sw $t0, -4244($fp)
	lw $t0, -1344($fp)
	sw $t0, -4248($fp)
	li $t0, 0
	lw $t1, -4248($fp)
	sub $t0, $t0, $t1
	sw $t0, -4252($fp)
	li $t0, 7189
	sw $t0, -4256($fp)
	lw $t1, -4252($fp)
	lw $t2, -4256($fp)
	blt $t1, $t2, label266
	j label267
label266:
	li $t0, 1
	sw $t0, -4244($fp)
label267:
	li $t0, 48707
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -4264($fp)
	li $t0, 38198
	sw $t0, -4268($fp)
	li $t0, 3018
	sw $t0, -4272($fp)
	lw $t0, -4268($fp)
	lw $t1, -4272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4276($fp)
	addi $sp, $sp, -4
	lw $t0, -4172($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4244($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4276($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4280($fp)
	addi $sp, $sp, 24
	lw $t0, -4120($fp)
	lw $t1, -4280($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4284($fp)
	lw $t1, -4104($fp)
	lw $t2, -4284($fp)
	bne $t1, $t2, label252
	j label253
label252:
	li $t0, 1
	sw $t0, -4100($fp)
label253:
	lw $ra, -4($fp)
	lw $v0, -4100($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 3000
	sw $t0, -4328($fp)
	addi $t0, $fp, -4292
	sw $t0, -4332($fp)
	li $t0, 0
	sw $t0, -4336($fp)
	lw $t0, -4336($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4340($fp)
	lw $t0, -4332($fp)
	lw $t1, -4340($fp)
	add $t0, $t0, $t1
	sw $t0, -4344($fp)
	lw $t0, -4328($fp)
	lw $t1, -4344($fp)
	sw $t0, 0($t1)
	lw $t0, -4344($fp)
	lw $t1, 0($t0)
	sw $t1, -4348($fp)
	li $t0, 40306
	sw $t0, -4352($fp)
	addi $t0, $fp, -4292
	sw $t0, -4356($fp)
	li $t0, 1
	sw $t0, -4360($fp)
	lw $t0, -4360($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4364($fp)
	lw $t0, -4356($fp)
	lw $t1, -4364($fp)
	add $t0, $t0, $t1
	sw $t0, -4368($fp)
	lw $t0, -4352($fp)
	lw $t1, -4368($fp)
	sw $t0, 0($t1)
	lw $t0, -4368($fp)
	lw $t1, 0($t0)
	sw $t1, -4372($fp)
	li $t0, 26294
	sw $t0, -4376($fp)
	lw $t0, -4376($fp)
	sw $t0, -4380($fp)
	lw $t0, -4380($fp)
	sw $t0, -4384($fp)
	li $t0, 8365
	sw $t0, -4388($fp)
	lw $t0, -4388($fp)
	sw $t0, -4392($fp)
	lw $t0, -4392($fp)
	sw $t0, -4396($fp)
	li $t0, 57273
	sw $t0, -4400($fp)
	lw $t0, -4400($fp)
	sw $t0, -4404($fp)
	lw $t0, -4404($fp)
	sw $t0, -4408($fp)
	li $t0, 23677
	sw $t0, -4412($fp)
	lw $t0, -4412($fp)
	sw $t0, -4416($fp)
	lw $t0, -4416($fp)
	sw $t0, -4420($fp)
	li $t0, 6333
	sw $t0, -4424($fp)
	lw $t0, -4424($fp)
	sw $t0, -4428($fp)
	lw $t0, -4428($fp)
	sw $t0, -4432($fp)
	li $t0, 12134
	sw $t0, -4436($fp)
	lw $t0, -4436($fp)
	sw $t0, -4440($fp)
	lw $t0, -4440($fp)
	sw $t0, -4444($fp)
	li $t0, 32605
	sw $t0, -4448($fp)
	addi $t0, $fp, -4304
	sw $t0, -4452($fp)
	li $t0, 0
	sw $t0, -4456($fp)
	lw $t0, -4456($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4460($fp)
	lw $t0, -4452($fp)
	lw $t1, -4460($fp)
	add $t0, $t0, $t1
	sw $t0, -4464($fp)
	lw $t0, -4448($fp)
	lw $t1, -4464($fp)
	sw $t0, 0($t1)
	lw $t0, -4464($fp)
	lw $t1, 0($t0)
	sw $t1, -4468($fp)
	li $t0, 47171
	sw $t0, -4472($fp)
	addi $t0, $fp, -4304
	sw $t0, -4476($fp)
	li $t0, 1
	sw $t0, -4480($fp)
	lw $t0, -4480($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4484($fp)
	lw $t0, -4476($fp)
	lw $t1, -4484($fp)
	add $t0, $t0, $t1
	sw $t0, -4488($fp)
	lw $t0, -4472($fp)
	lw $t1, -4488($fp)
	sw $t0, 0($t1)
	lw $t0, -4488($fp)
	lw $t1, 0($t0)
	sw $t1, -4492($fp)
	li $t0, 61195
	sw $t0, -4496($fp)
	addi $t0, $fp, -4304
	sw $t0, -4500($fp)
	li $t0, 2
	sw $t0, -4504($fp)
	lw $t0, -4504($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4508($fp)
	lw $t0, -4500($fp)
	lw $t1, -4508($fp)
	add $t0, $t0, $t1
	sw $t0, -4512($fp)
	lw $t0, -4496($fp)
	lw $t1, -4512($fp)
	sw $t0, 0($t1)
	lw $t0, -4512($fp)
	lw $t1, 0($t0)
	sw $t1, -4516($fp)
	li $t0, 2305
	sw $t0, -4520($fp)
	lw $t0, -4520($fp)
	sw $t0, -4524($fp)
	lw $t0, -4524($fp)
	sw $t0, -4528($fp)
	li $t0, 8939
	sw $t0, -4532($fp)
	lw $t0, -4532($fp)
	sw $t0, -4536($fp)
	lw $t0, -4536($fp)
	sw $t0, -4540($fp)
	li $t0, 8171
	sw $t0, -4544($fp)
	addi $t0, $fp, -4320
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
	li $t0, 40077
	sw $t0, -4568($fp)
	addi $t0, $fp, -4320
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
	li $t0, 49579
	sw $t0, -4592($fp)
	addi $t0, $fp, -4320
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
	li $t0, 16121
	sw $t0, -4616($fp)
	addi $t0, $fp, -4320
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
	li $t0, 48504
	sw $t0, -4640($fp)
	lw $t0, -4640($fp)
	sw $t0, -4644($fp)
	lw $t0, -4644($fp)
	sw $t0, -4648($fp)
	li $t0, 16300
	sw $t0, -4652($fp)
	lw $t0, -4652($fp)
	sw $t0, -4656($fp)
	lw $t0, -4656($fp)
	sw $t0, -4660($fp)
	li $t0, 17634
	sw $t0, -4664($fp)
	lw $t0, -4664($fp)
	sw $t0, -4668($fp)
	lw $t0, -4668($fp)
	sw $t0, -4672($fp)
	li $t0, 40978
	sw $t0, -4676($fp)
	lw $t0, -4676($fp)
	sw $t0, -4680($fp)
	lw $t0, -4680($fp)
	sw $t0, -4684($fp)
	li $t0, 54498
	sw $t0, -4688($fp)
	lw $t0, -4688($fp)
	sw $t0, -4692($fp)
	lw $t0, -4692($fp)
	sw $t0, -4696($fp)
	li $t0, 20652
	sw $t0, -4700($fp)
	lw $t0, -4700($fp)
	sw $t0, -4704($fp)
	lw $t0, -4704($fp)
	sw $t0, -4708($fp)
	li $t0, 24150
	sw $t0, -4712($fp)
	lw $t0, -4712($fp)
	sw $t0, -4716($fp)
	lw $t0, -4716($fp)
	sw $t0, -4720($fp)
	li $t0, 61687
	sw $t0, -4724($fp)
	lw $t0, -4724($fp)
	sw $t0, -4728($fp)
	lw $t0, -4728($fp)
	sw $t0, -4732($fp)
	li $t0, 39193
	sw $t0, -4736($fp)
	lw $t0, -4736($fp)
	sw $t0, -4740($fp)
	lw $t0, -4740($fp)
	sw $t0, -4744($fp)
	li $t0, 53359
	sw $t0, -4748($fp)
	addi $t0, $fp, -4324
	sw $t0, -4752($fp)
	li $t0, 0
	sw $t0, -4756($fp)
	lw $t0, -4756($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4760($fp)
	lw $t0, -4752($fp)
	lw $t1, -4760($fp)
	add $t0, $t0, $t1
	sw $t0, -4764($fp)
	lw $t0, -4748($fp)
	lw $t1, -4764($fp)
	sw $t0, 0($t1)
	lw $t0, -4764($fp)
	lw $t1, 0($t0)
	sw $t1, -4768($fp)
	li $t0, 15384
	sw $t0, -4772($fp)
	lw $t0, -4772($fp)
	sw $t0, -4776($fp)
	lw $t0, -4776($fp)
	sw $t0, -4780($fp)
	li $t0, 17818
	sw $t0, -4784($fp)
	lw $t0, -4784($fp)
	sw $t0, -4788($fp)
	lw $t0, -4788($fp)
	sw $t0, -4792($fp)
	li $t0, 43700
	sw $t0, -4796($fp)
	lw $t0, -4796($fp)
	sw $t0, -4800($fp)
	lw $t0, -4800($fp)
	sw $t0, -4804($fp)
	li $t0, 11439
	sw $t0, -4808($fp)
	lw $t0, -4808($fp)
	sw $t0, -4812($fp)
	lw $t0, -4812($fp)
	sw $t0, -4816($fp)
	li $t0, 20819
	sw $t0, -4820($fp)
	lw $t0, -4820($fp)
	sw $t0, -4824($fp)
	lw $t0, -4824($fp)
	sw $t0, -4828($fp)
	lw $t0, -4380($fp)
	sw $t0, -4832($fp)
	lw $t0, -1188($fp)
	sw $t0, -4836($fp)
	li $t0, 35518
	sw $t0, -4840($fp)
	li $t0, 0
	sw $t0, -4844($fp)
	addi $t0, $fp, -108
	sw $t0, -4848($fp)
	li $t0, 2
	sw $t0, -4852($fp)
	li $t0, 4
	lw $t1, -4852($fp)
	mul $t0, $t0, $t1
	sw $t0, -4856($fp)
	lw $t0, -4856($fp)
	lw $t1, -4848($fp)
	add $t0, $t0, $t1
	sw $t0, -4860($fp)
	lw $t0, -4860($fp)
	lw $t1, 0($t0)
	sw $t1, -4864($fp)
	lw $t1, -4864($fp)
	li $t2, 0
	bne $t1, $t2, label272
	j label271
label271:
	li $t0, 1
	sw $t0, -4844($fp)
label272:
	li $t0, 37733
	sw $t0, -4868($fp)
	lw $t0, -4644($fp)
	sw $t0, -4872($fp)
	lw $t0, -4868($fp)
	lw $t1, -4872($fp)
	mul $t0, $t0, $t1
	sw $t0, -4876($fp)
	li $t0, 29184
	sw $t0, -4880($fp)
	lw $t0, -4876($fp)
	lw $t1, -4880($fp)
	mul $t0, $t0, $t1
	sw $t0, -4884($fp)
	li $t0, 0
	sw $t0, -4888($fp)
	lw $t0, -1476($fp)
	sw $t0, -4892($fp)
	li $t0, 18470
	sw $t0, -4896($fp)
	lw $t0, -4892($fp)
	lw $t1, -4896($fp)
	sub $t0, $t0, $t1
	sw $t0, -4900($fp)
	lw $t0, -684($fp)
	sw $t0, -4904($fp)
	lw $t1, -4900($fp)
	lw $t2, -4904($fp)
	ble $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -4888($fp)
label274:
	addi $sp, $sp, -4
	lw $t0, -4836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4844($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4884($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4888($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4908($fp)
	addi $sp, $sp, 24
	lw $t0, -4776($fp)
	sw $t0, -4912($fp)
	lw $t0, -4908($fp)
	lw $t1, -4912($fp)
	mul $t0, $t0, $t1
	sw $t0, -4916($fp)
	lw $t0, -4832($fp)
	lw $t1, -4916($fp)
	add $t0, $t0, $t1
	sw $t0, -4920($fp)
	lw $t0, -696($fp)
	sw $t0, -4924($fp)
	li $t0, 0
	lw $t1, -4924($fp)
	sub $t0, $t0, $t1
	sw $t0, -4928($fp)
	lw $t1, -4920($fp)
	lw $t2, -4928($fp)
	bne $t1, $t2, label268
	j label269
label268:
	li $t0, 22341
	sw $t0, -4932($fp)
	lw $t1, -4932($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label276
label275:
	li $t0, 30785
	sw $t0, -4936($fp)
	lw $t0, -4936($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -4940($fp)
	addi $t0, $fp, -4324
	sw $t0, -4944($fp)
	lw $t0, -4740($fp)
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
	li $t0, 0
	sw $t0, -4964($fp)
	addi $t0, $fp, -136
	sw $t0, -4968($fp)
	li $t0, 0
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
	lw $t0, -1248($fp)
	sw $t0, -4988($fp)
	lw $t1, -4984($fp)
	lw $t2, -4988($fp)
	bgt $t1, $t2, label278
	j label279
label278:
	li $t0, 1
	sw $t0, -4964($fp)
label279:
	li $t0, 0
	sw $t0, -4992($fp)
	lw $t0, 4($fp)
	sw $t0, -4996($fp)
	li $t0, 28480
	sw $t0, -5000($fp)
	lw $t1, -4996($fp)
	lw $t2, -5000($fp)
	ble $t1, $t2, label282
	j label281
label282:
	lw $t0, -1380($fp)
	sw $t0, -5004($fp)
	lw $t1, -5004($fp)
	li $t2, 0
	bne $t1, $t2, label280
	j label281
label280:
	li $t0, 1
	sw $t0, -4992($fp)
label281:
	li $t0, 0
	sw $t0, -5008($fp)
	lw $t0, -4656($fp)
	sw $t0, -5012($fp)
	lw $t0, -1212($fp)
	sw $t0, -5016($fp)
	lw $t1, -5012($fp)
	lw $t2, -5016($fp)
	ble $t1, $t2, label283
	j label284
label283:
	li $t0, 1
	sw $t0, -5008($fp)
label284:
	addi $sp, $sp, -4
	lw $t0, -4940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4964($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5008($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5020($fp)
	addi $sp, $sp, 24
	li $t0, 26092
	sw $t0, -5024($fp)
	lw $t0, -5020($fp)
	lw $t1, -5024($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5028($fp)
	addi $t0, $fp, -4292
	sw $t0, -5032($fp)
	li $t0, 0
	sw $t0, -5036($fp)
	li $t0, 4
	lw $t1, -5036($fp)
	mul $t0, $t0, $t1
	sw $t0, -5040($fp)
	lw $t0, -5040($fp)
	lw $t1, -5032($fp)
	add $t0, $t0, $t1
	sw $t0, -5044($fp)
	lw $t0, -5044($fp)
	lw $t1, 0($t0)
	sw $t1, -5048($fp)
	lw $t0, -5028($fp)
	lw $t1, -5048($fp)
	sub $t0, $t0, $t1
	sw $t0, -5052($fp)
	lw $ra, -4($fp)
	lw $v0, -5052($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label277
label276:
label285:
	addi $t0, $fp, -4304
	sw $t0, -5056($fp)
	li $t0, 0
	sw $t0, -5060($fp)
	lw $t0, -1200($fp)
	sw $t0, -5064($fp)
	lw $t1, -5064($fp)
	li $t2, 0
	bne $t1, $t2, label289
	j label288
label288:
	li $t0, 1
	sw $t0, -5060($fp)
label289:
	li $t0, 10135
	sw $t0, -5068($fp)
	lw $t0, -5060($fp)
	lw $t1, -5068($fp)
	add $t0, $t0, $t1
	sw $t0, -5072($fp)
	li $t0, 4
	lw $t1, -5072($fp)
	mul $t0, $t0, $t1
	sw $t0, -5076($fp)
	lw $t0, -5076($fp)
	lw $t1, -5056($fp)
	add $t0, $t0, $t1
	sw $t0, -5080($fp)
	lw $t0, -5080($fp)
	lw $t1, 0($t0)
	sw $t1, -5084($fp)
	li $t0, 0
	lw $t1, -5084($fp)
	sub $t0, $t0, $t1
	sw $t0, -5088($fp)
	lw $t1, -5088($fp)
	li $t2, 0
	bne $t1, $t2, label286
	j label287
label286:
	addi $t0, $fp, -108
	sw $t0, -5092($fp)
	lw $t0, -456($fp)
	sw $t0, -5096($fp)
	li $t0, 4
	lw $t1, -5096($fp)
	mul $t0, $t0, $t1
	sw $t0, -5100($fp)
	lw $t0, -5100($fp)
	lw $t1, -5092($fp)
	add $t0, $t0, $t1
	sw $t0, -5104($fp)
	lw $t0, -5104($fp)
	lw $t1, 0($t0)
	sw $t1, -5108($fp)
	li $t0, 0
	sw $t0, -5112($fp)
	addi $t0, $fp, -4292
	sw $t0, -5116($fp)
	li $t0, 0
	sw $t0, -5120($fp)
	li $t0, 4
	lw $t1, -5120($fp)
	mul $t0, $t0, $t1
	sw $t0, -5124($fp)
	lw $t0, -5124($fp)
	lw $t1, -5116($fp)
	add $t0, $t0, $t1
	sw $t0, -5128($fp)
	lw $t0, -5128($fp)
	lw $t1, 0($t0)
	sw $t1, -5132($fp)
	lw $t0, -4524($fp)
	sw $t0, -5136($fp)
	lw $t1, -5132($fp)
	lw $t2, -5136($fp)
	bge $t1, $t2, label290
	j label291
label290:
	li $t0, 1
	sw $t0, -5112($fp)
label291:
	addi $sp, $sp, -4
	lw $t0, -5108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5112($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5140($fp)
	addi $sp, $sp, 12
	lw $t0, -456($fp)
	sw $t0, -5144($fp)
	li $t0, 0
	sw $t0, -5148($fp)
	li $t0, 26436
	sw $t0, -5152($fp)
	li $t0, 0
	sw $t0, -5156($fp)
	li $t0, 15044
	sw $t0, -5160($fp)
	li $t0, 0
	lw $t1, -5160($fp)
	sub $t0, $t0, $t1
	sw $t0, -5164($fp)
	lw $t1, -5164($fp)
	li $t2, 0
	bne $t1, $t2, label295
	j label294
label294:
	li $t0, 1
	sw $t0, -5156($fp)
label295:
	li $t0, 0
	sw $t0, -5168($fp)
	li $t0, 59928
	sw $t0, -5172($fp)
	li $t0, 29273
	sw $t0, -5176($fp)
	lw $t0, -5172($fp)
	lw $t1, -5176($fp)
	mul $t0, $t0, $t1
	sw $t0, -5180($fp)
	li $t0, 15398
	sw $t0, -5184($fp)
	lw $t1, -5180($fp)
	lw $t2, -5184($fp)
	blt $t1, $t2, label296
	j label297
label296:
	li $t0, 1
	sw $t0, -5168($fp)
label297:
	addi $sp, $sp, -4
	lw $t0, -5156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5168($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5188($fp)
	addi $sp, $sp, 12
	lw $t0, -5152($fp)
	lw $t1, -5188($fp)
	mul $t0, $t0, $t1
	sw $t0, -5192($fp)
	li $t0, 0
	lw $t1, -5192($fp)
	sub $t0, $t0, $t1
	sw $t0, -5196($fp)
	lw $t1, -5196($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label292
label292:
	li $t0, 1
	sw $t0, -5148($fp)
label293:
	lw $t0, -5144($fp)
	lw $t1, -5148($fp)
	sub $t0, $t0, $t1
	sw $t0, -5200($fp)
	li $t0, 0
	sw $t0, -5204($fp)
	addi $t0, $fp, -4304
	sw $t0, -5208($fp)
	lw $t0, -1272($fp)
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
	li $t0, 0
	lw $t1, -5224($fp)
	sub $t0, $t0, $t1
	sw $t0, -5228($fp)
	lw $t1, -5228($fp)
	li $t2, 0
	bne $t1, $t2, label299
	j label298
label298:
	li $t0, 1
	sw $t0, -5204($fp)
label299:
	li $t0, 53423
	sw $t0, -5232($fp)
	li $t0, 0
	sw $t0, -5236($fp)
	lw $t0, -408($fp)
	sw $t0, -5240($fp)
	lw $t1, -5240($fp)
	li $t2, 0
	bne $t1, $t2, label301
	j label300
label300:
	li $t0, 1
	sw $t0, -5236($fp)
label301:
	li $t0, 0
	sw $t0, -5244($fp)
	li $t0, 0
	sw $t0, -5248($fp)
	li $t0, 11550
	sw $t0, -5252($fp)
	lw $t0, -480($fp)
	sw $t0, -5256($fp)
	lw $t1, -5252($fp)
	lw $t2, -5256($fp)
	blt $t1, $t2, label304
	j label305
label304:
	li $t0, 1
	sw $t0, -5248($fp)
label305:
	li $t0, 54237
	sw $t0, -5260($fp)
	lw $t1, -5248($fp)
	lw $t2, -5260($fp)
	bgt $t1, $t2, label302
	j label303
label302:
	li $t0, 1
	sw $t0, -5244($fp)
label303:
	addi $sp, $sp, -4
	lw $t0, -5236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5244($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5264($fp)
	addi $sp, $sp, 12
	lw $t0, -5232($fp)
	lw $t1, -5264($fp)
	mul $t0, $t0, $t1
	sw $t0, -5268($fp)
	lw $t0, -5204($fp)
	lw $t1, -5268($fp)
	add $t0, $t0, $t1
	sw $t0, -5272($fp)
	li $t0, 0
	sw $t0, -5276($fp)
	lw $t0, -1476($fp)
	sw $t0, -5280($fp)
	li $t0, 0
	lw $t1, -5280($fp)
	sub $t0, $t0, $t1
	sw $t0, -5284($fp)
	li $t0, 0
	sw $t0, -5288($fp)
	li $t0, 38373
	sw $t0, -5292($fp)
	lw $t0, 20($fp)
	sw $t0, -5296($fp)
	lw $t1, -5292($fp)
	lw $t2, -5296($fp)
	beq $t1, $t2, label308
	j label310
label310:
	lw $t0, -816($fp)
	sw $t0, -5300($fp)
	lw $t1, -5300($fp)
	li $t2, 0
	bne $t1, $t2, label308
	j label309
label308:
	li $t0, 1
	sw $t0, -5288($fp)
label309:
	li $t0, 19410
	sw $t0, -5304($fp)
	addi $sp, $sp, -4
	lw $t0, -5288($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5304($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5308($fp)
	addi $sp, $sp, 12
	li $t0, 6520
	sw $t0, -5312($fp)
	li $t0, 0
	lw $t1, -5312($fp)
	sub $t0, $t0, $t1
	sw $t0, -5316($fp)
	li $t0, 0
	sw $t0, -5320($fp)
	lw $t0, -408($fp)
	sw $t0, -5324($fp)
	lw $t1, -5324($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label312
label314:
	lw $t0, -504($fp)
	sw $t0, -5328($fp)
	lw $t1, -5328($fp)
	li $t2, 0
	bne $t1, $t2, label313
	j label312
label313:
	li $t0, 26934
	sw $t0, -5332($fp)
	lw $t1, -5332($fp)
	li $t2, 0
	bne $t1, $t2, label311
	j label312
label311:
	li $t0, 1
	sw $t0, -5320($fp)
label312:
	li $t0, 0
	sw $t0, -5336($fp)
	li $t0, 41246
	sw $t0, -5340($fp)
	lw $t0, -1392($fp)
	sw $t0, -5344($fp)
	lw $t0, -5340($fp)
	lw $t1, -5344($fp)
	add $t0, $t0, $t1
	sw $t0, -5348($fp)
	lw $t0, -1380($fp)
	sw $t0, -5352($fp)
	lw $t1, -5348($fp)
	lw $t2, -5352($fp)
	bgt $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -5336($fp)
label316:
	addi $sp, $sp, -4
	lw $t0, -5284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5316($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5320($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5336($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5356($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -108
	sw $t0, -5360($fp)
	li $t0, 1
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
	lw $t0, -5356($fp)
	lw $t1, -5376($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5380($fp)
	addi $t0, $fp, -136
	sw $t0, -5384($fp)
	lw $t0, -1260($fp)
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
	sw $t0, -5404($fp)
	lw $t0, -1176($fp)
	sw $t0, -5408($fp)
	lw $t1, -5408($fp)
	li $t2, 0
	bne $t1, $t2, label318
	j label317
label317:
	li $t0, 1
	sw $t0, -5404($fp)
label318:
	lw $t0, -5400($fp)
	lw $t1, -5404($fp)
	mul $t0, $t0, $t1
	sw $t0, -5412($fp)
	lw $t1, -5380($fp)
	lw $t2, -5412($fp)
	bgt $t1, $t2, label306
	j label307
label306:
	li $t0, 1
	sw $t0, -5276($fp)
label307:
	j label285
label287:
label277:
	j label270
label269:
	lw $t0, -456($fp)
	sw $t0, -5416($fp)
	lw $t0, -1260($fp)
	sw $t0, -5420($fp)
	lw $t0, -5416($fp)
	lw $t1, -5420($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5424($fp)
	li $t0, 10570
	sw $t0, -5428($fp)
	lw $t0, -5428($fp)
	sw $t0, -4668($fp)
	lw $t0, -4668($fp)
	sw $t0, -5432($fp)
	addi $sp, $sp, -4
	lw $t0, -5424($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5432($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5436($fp)
	addi $sp, $sp, 12
	li $t0, 56523
	sw $t0, -5440($fp)
	lw $t0, -5436($fp)
	lw $t1, -5440($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5444($fp)
	li $t0, 0
	lw $t1, -5444($fp)
	sub $t0, $t0, $t1
	sw $t0, -5448($fp)
	lw $t1, -5448($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label322
label322:
	li $t0, 48088
	sw $t0, -5452($fp)
	lw $t1, -5452($fp)
	li $t2, 0
	bne $t1, $t2, label319
	j label320
label319:
	li $t0, 0
	sw $t0, -5456($fp)
	addi $t0, $fp, -40
	sw $t0, -5460($fp)
	lw $t0, -4692($fp)
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
	li $t0, 0
	sw $t0, -5480($fp)
	li $t0, 0
	sw $t0, -5484($fp)
	lw $t0, -4680($fp)
	sw $t0, -5488($fp)
	li $t0, 6445
	sw $t0, -5492($fp)
	lw $t1, -5488($fp)
	lw $t2, -5492($fp)
	bgt $t1, $t2, label328
	j label329
label328:
	li $t0, 1
	sw $t0, -5484($fp)
label329:
	lw $t0, -456($fp)
	sw $t0, -5496($fp)
	lw $t1, -5484($fp)
	lw $t2, -5496($fp)
	bne $t1, $t2, label326
	j label327
label326:
	li $t0, 1
	sw $t0, -5480($fp)
label327:
	addi $sp, $sp, -4
	lw $t0, -5476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5480($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5500($fp)
	addi $sp, $sp, 12
	lw $t1, -5500($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label325
label325:
	lw $t0, 4($fp)
	sw $t0, -5504($fp)
	lw $t1, -5504($fp)
	li $t2, 0
	bne $t1, $t2, label323
	j label324
label323:
	li $t0, 1
	sw $t0, -5456($fp)
label324:
	lw $ra, -4($fp)
	lw $v0, -5456($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label321
label320:
	li $t0, 0
	sw $t0, -5508($fp)
	lw $t0, -1260($fp)
	sw $t0, -5512($fp)
	li $t0, 26505
	sw $t0, -5516($fp)
	lw $t0, -5512($fp)
	lw $t1, -5516($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5520($fp)
	lw $t1, -5520($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label332
label332:
	li $t0, 4894
	sw $t0, -5524($fp)
	lw $t1, -5524($fp)
	li $t2, 0
	bne $t1, $t2, label330
	j label331
label330:
	li $t0, 1
	sw $t0, -5508($fp)
label331:
	lw $t0, -4788($fp)
	sw $t0, -5528($fp)
	lw $t0, -5528($fp)
	sw $t0, -4776($fp)
	lw $t0, -4776($fp)
	sw $t0, -5532($fp)
	addi $sp, $sp, -4
	lw $t0, -5508($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5532($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5536($fp)
	addi $sp, $sp, 12
	lw $ra, -4($fp)
	lw $v0, -5536($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label321:
label270:
label333:
	addi $t0, $fp, -4320
	sw $t0, -5540($fp)
	lw $t0, -384($fp)
	sw $t0, -5544($fp)
	lw $t0, -4392($fp)
	sw $t0, -5548($fp)
	lw $t0, -5544($fp)
	lw $t1, -5548($fp)
	sub $t0, $t0, $t1
	sw $t0, -5552($fp)
	li $t0, 0
	sw $t0, -5556($fp)
	li $t0, 0
	sw $t0, -5560($fp)
	li $t0, 174
	sw $t0, -5564($fp)
	li $t0, 4214
	sw $t0, -5568($fp)
	lw $t1, -5564($fp)
	lw $t2, -5568($fp)
	bge $t1, $t2, label338
	j label339
label338:
	li $t0, 1
	sw $t0, -5560($fp)
label339:
	li $t0, 49067
	sw $t0, -5572($fp)
	lw $t1, -5560($fp)
	lw $t2, -5572($fp)
	beq $t1, $t2, label336
	j label337
label336:
	li $t0, 1
	sw $t0, -5556($fp)
label337:
	li $t0, 0
	sw $t0, -5576($fp)
	li $t0, 22895
	sw $t0, -5580($fp)
	lw $t1, -5580($fp)
	li $t2, 0
	bne $t1, $t2, label340
	j label341
label340:
	li $t0, 1
	sw $t0, -5576($fp)
label341:
	li $t0, 43658
	sw $t0, -5584($fp)
	lw $t0, -1212($fp)
	sw $t0, -5588($fp)
	lw $t0, -5584($fp)
	lw $t1, -5588($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5592($fp)
	li $t0, 0
	lw $t1, -5592($fp)
	sub $t0, $t0, $t1
	sw $t0, -5596($fp)
	li $t0, 0
	sw $t0, -5600($fp)
	li $t0, 34925
	sw $t0, -5604($fp)
	lw $t0, -4800($fp)
	sw $t0, -5608($fp)
	lw $t1, -5604($fp)
	lw $t2, -5608($fp)
	bgt $t1, $t2, label344
	j label343
label344:
	lw $t0, 4($fp)
	sw $t0, -5612($fp)
	lw $t1, -5612($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label343
label342:
	li $t0, 1
	sw $t0, -5600($fp)
label343:
	addi $sp, $sp, -4
	lw $t0, -5552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5600($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5616($fp)
	addi $sp, $sp, 24
	lw $t0, -1320($fp)
	sw $t0, -5620($fp)
	lw $t0, -5616($fp)
	lw $t1, -5620($fp)
	add $t0, $t0, $t1
	sw $t0, -5624($fp)
	li $t0, 4
	lw $t1, -5624($fp)
	mul $t0, $t0, $t1
	sw $t0, -5628($fp)
	lw $t0, -5628($fp)
	lw $t1, -5540($fp)
	add $t0, $t0, $t1
	sw $t0, -5632($fp)
	lw $t0, -5632($fp)
	lw $t1, 0($t0)
	sw $t1, -5636($fp)
	li $t0, 0
	lw $t1, -5636($fp)
	sub $t0, $t0, $t1
	sw $t0, -5640($fp)
	lw $t1, -5640($fp)
	li $t2, 0
	bne $t1, $t2, label334
	j label335
label334:
label345:
	li $t0, 5500
	sw $t0, -5644($fp)
	lw $t1, -5644($fp)
	li $t2, 0
	bne $t1, $t2, label348
	j label347
label348:
	li $t0, 14350
	sw $t0, -5648($fp)
	lw $t0, -1248($fp)
	sw $t0, -5652($fp)
	lw $t0, -5648($fp)
	lw $t1, -5652($fp)
	add $t0, $t0, $t1
	sw $t0, -5656($fp)
	li $t0, 0
	sw $t0, -5660($fp)
	li $t0, 23067
	sw $t0, -5664($fp)
	lw $t1, -5664($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label352
label352:
	lw $t0, -492($fp)
	sw $t0, -5668($fp)
	lw $t1, -5668($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label351
label351:
	lw $t0, -1212($fp)
	sw $t0, -5672($fp)
	lw $t1, -5672($fp)
	li $t2, 0
	bne $t1, $t2, label349
	j label350
label349:
	li $t0, 1
	sw $t0, -5660($fp)
label350:
	li $t0, 0
	sw $t0, -5676($fp)
	lw $t0, -1200($fp)
	sw $t0, -5680($fp)
	lw $t1, -5680($fp)
	li $t2, 0
	bne $t1, $t2, label354
	j label355
label355:
	lw $t0, -4824($fp)
	sw $t0, -5684($fp)
	lw $t1, -5684($fp)
	li $t2, 0
	bne $t1, $t2, label353
	j label354
label353:
	li $t0, 1
	sw $t0, -5676($fp)
label354:
	li $t0, 0
	sw $t0, -5688($fp)
	li $t0, 20216
	sw $t0, -5692($fp)
	li $t0, 0
	lw $t1, -5692($fp)
	sub $t0, $t0, $t1
	sw $t0, -5696($fp)
	lw $t0, -396($fp)
	sw $t0, -5700($fp)
	lw $t1, -5696($fp)
	lw $t2, -5700($fp)
	beq $t1, $t2, label356
	j label357
label356:
	li $t0, 1
	sw $t0, -5688($fp)
label357:
	li $t0, 0
	sw $t0, -5704($fp)
	lw $t0, -384($fp)
	sw $t0, -5708($fp)
	li $t0, 59330
	sw $t0, -5712($fp)
	lw $t0, -5708($fp)
	lw $t1, -5712($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5716($fp)
	lw $t1, -5716($fp)
	li $t2, 0
	bne $t1, $t2, label358
	j label360
label360:
	li $t0, 40786
	sw $t0, -5720($fp)
	lw $t1, -5720($fp)
	li $t2, 0
	bne $t1, $t2, label358
	j label359
label358:
	li $t0, 1
	sw $t0, -5704($fp)
label359:
	li $t0, 0
	sw $t0, -5724($fp)
	li $t0, 0
	sw $t0, -5728($fp)
	lw $t0, -372($fp)
	sw $t0, -5732($fp)
	lw $t0, -1248($fp)
	sw $t0, -5736($fp)
	lw $t1, -5732($fp)
	lw $t2, -5736($fp)
	bne $t1, $t2, label363
	j label364
label363:
	li $t0, 1
	sw $t0, -5728($fp)
label364:
	li $t0, 25824
	sw $t0, -5740($fp)
	lw $t1, -5728($fp)
	lw $t2, -5740($fp)
	bne $t1, $t2, label361
	j label362
label361:
	li $t0, 1
	sw $t0, -5724($fp)
label362:
	addi $sp, $sp, -4
	lw $t0, -5660($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5676($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5688($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5704($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5724($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5744($fp)
	addi $sp, $sp, 24
	lw $t0, -5656($fp)
	lw $t1, -5744($fp)
	sub $t0, $t0, $t1
	sw $t0, -5748($fp)
	lw $t1, -5748($fp)
	li $t2, 0
	bne $t1, $t2, label346
	j label347
label346:
	li $t0, 0
	sw $t0, -5752($fp)
	li $t0, 0
	sw $t0, -5756($fp)
	addi $t0, $fp, -148
	sw $t0, -5760($fp)
	li $t0, 1
	sw $t0, -5764($fp)
	li $t0, 4
	lw $t1, -5764($fp)
	mul $t0, $t0, $t1
	sw $t0, -5768($fp)
	lw $t0, -5768($fp)
	lw $t1, -5760($fp)
	add $t0, $t0, $t1
	sw $t0, -5772($fp)
	lw $t0, -5772($fp)
	lw $t1, 0($t0)
	sw $t1, -5776($fp)
	lw $t1, -5776($fp)
	li $t2, 0
	bne $t1, $t2, label368
	j label367
label367:
	li $t0, 1
	sw $t0, -5756($fp)
label368:
	li $t0, 0
	sw $t0, -5780($fp)
	li $t0, 10954
	sw $t0, -5784($fp)
	lw $t1, -5784($fp)
	li $t2, 0
	bne $t1, $t2, label370
	j label369
label369:
	li $t0, 1
	sw $t0, -5780($fp)
label370:
	lw $t0, -5756($fp)
	lw $t1, -5780($fp)
	sub $t0, $t0, $t1
	sw $t0, -5788($fp)
	lw $t0, -4728($fp)
	sw $t0, -5792($fp)
	lw $t0, -5788($fp)
	lw $t1, -5792($fp)
	add $t0, $t0, $t1
	sw $t0, -5796($fp)
	li $t0, 2198
	sw $t0, -5800($fp)
	li $t0, 23962
	sw $t0, -5804($fp)
	lw $t0, -5800($fp)
	lw $t1, -5804($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5808($fp)
	li $t0, 52200
	sw $t0, -5812($fp)
	lw $t0, -5808($fp)
	lw $t1, -5812($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5816($fp)
	lw $t0, -1332($fp)
	sw $t0, -5820($fp)
	li $t0, 54297
	sw $t0, -5824($fp)
	lw $t0, -5820($fp)
	lw $t1, -5824($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5828($fp)
	lw $t0, -384($fp)
	sw $t0, -5832($fp)
	lw $t0, -5828($fp)
	lw $t1, -5832($fp)
	sub $t0, $t0, $t1
	sw $t0, -5836($fp)
	li $t0, 0
	sw $t0, -5840($fp)
	lw $t0, -4536($fp)
	sw $t0, -5844($fp)
	lw $t1, -5844($fp)
	li $t2, 0
	bne $t1, $t2, label371
	j label374
label374:
	lw $t0, -1344($fp)
	sw $t0, -5848($fp)
	lw $t1, -5848($fp)
	li $t2, 0
	bne $t1, $t2, label371
	j label373
label373:
	lw $t0, -4824($fp)
	sw $t0, -5852($fp)
	lw $t1, -5852($fp)
	li $t2, 0
	bne $t1, $t2, label371
	j label372
label371:
	li $t0, 1
	sw $t0, -5840($fp)
label372:
	li $t0, 53437
	sw $t0, -5856($fp)
	lw $t0, -1200($fp)
	sw $t0, -5860($fp)
	lw $t0, -672($fp)
	sw $t0, -5864($fp)
	lw $t0, -5860($fp)
	lw $t1, -5864($fp)
	add $t0, $t0, $t1
	sw $t0, -5868($fp)
	lw $t0, -4812($fp)
	sw $t0, -5872($fp)
	lw $t0, -5868($fp)
	lw $t1, -5872($fp)
	add $t0, $t0, $t1
	sw $t0, -5876($fp)
	addi $sp, $sp, -4
	lw $t0, -5856($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5876($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5880($fp)
	addi $sp, $sp, 12
	lw $t0, -456($fp)
	sw $t0, -5884($fp)
	lw $t0, -5880($fp)
	lw $t1, -5884($fp)
	sub $t0, $t0, $t1
	sw $t0, -5888($fp)
	lw $t0, -4716($fp)
	sw $t0, -5892($fp)
	lw $t0, -1200($fp)
	sw $t0, -5896($fp)
	lw $t0, -5892($fp)
	lw $t1, -5896($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5900($fp)
	lw $t0, -4728($fp)
	sw $t0, -5904($fp)
	lw $t0, -5900($fp)
	lw $t1, -5904($fp)
	mul $t0, $t0, $t1
	sw $t0, -5908($fp)
	li $t0, 0
	sw $t0, -5912($fp)
	li $t0, 0
	sw $t0, -5916($fp)
	lw $t0, -1212($fp)
	sw $t0, -5920($fp)
	li $t0, 31402
	sw $t0, -5924($fp)
	lw $t1, -5920($fp)
	lw $t2, -5924($fp)
	beq $t1, $t2, label377
	j label378
label377:
	li $t0, 1
	sw $t0, -5916($fp)
label378:
	li $t0, 53910
	sw $t0, -5928($fp)
	lw $t1, -5916($fp)
	lw $t2, -5928($fp)
	beq $t1, $t2, label375
	j label376
label375:
	li $t0, 1
	sw $t0, -5912($fp)
label376:
	lw $t0, -1368($fp)
	sw $t0, -5932($fp)
	lw $t0, -5932($fp)
	sw $t0, -4704($fp)
	lw $t0, -4704($fp)
	sw $t0, -5936($fp)
	li $t0, 0
	sw $t0, -5940($fp)
	lw $t0, -4440($fp)
	sw $t0, -5944($fp)
	lw $t0, -708($fp)
	sw $t0, -5948($fp)
	lw $t0, -5944($fp)
	lw $t1, -5948($fp)
	mul $t0, $t0, $t1
	sw $t0, -5952($fp)
	lw $t1, -5952($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label381
label381:
	lw $t0, -456($fp)
	sw $t0, -5956($fp)
	lw $t1, -5956($fp)
	li $t2, 0
	bne $t1, $t2, label379
	j label380
label379:
	li $t0, 1
	sw $t0, -5940($fp)
label380:
	li $t0, 0
	sw $t0, -5960($fp)
	addi $t0, $fp, -4324
	sw $t0, -5964($fp)
	li $t0, 0
	sw $t0, -5968($fp)
	li $t0, 4
	lw $t1, -5968($fp)
	mul $t0, $t0, $t1
	sw $t0, -5972($fp)
	lw $t0, -5972($fp)
	lw $t1, -5964($fp)
	add $t0, $t0, $t1
	sw $t0, -5976($fp)
	lw $t0, -5976($fp)
	lw $t1, 0($t0)
	sw $t1, -5980($fp)
	li $t0, 0
	sw $t0, -5984($fp)
	lw $t0, -708($fp)
	sw $t0, -5988($fp)
	lw $t0, -5988($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	sw $t0, -5992($fp)
	li $t0, 48809
	sw $t0, -5996($fp)
	lw $t0, -4416($fp)
	sw $t0, -6000($fp)
	lw $t0, -5996($fp)
	lw $t1, -6000($fp)
	sub $t0, $t0, $t1
	sw $t0, -6004($fp)
	li $t0, 12540
	sw $t0, -6008($fp)
	li $t0, 0
	lw $t1, -6008($fp)
	sub $t0, $t0, $t1
	sw $t0, -6012($fp)
	li $t0, 0
	lw $t1, -6012($fp)
	sub $t0, $t0, $t1
	sw $t0, -6016($fp)
	lw $t0, -4404($fp)
	sw $t0, -6020($fp)
	li $t0, 43956
	sw $t0, -6024($fp)
	addi $sp, $sp, -4
	lw $t0, -5992($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6020($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6024($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6028($fp)
	addi $sp, $sp, 24
	li $t0, 26508
	sw $t0, -6032($fp)
	lw $t1, -6028($fp)
	lw $t2, -6032($fp)
	bne $t1, $t2, label385
	j label386
label385:
	li $t0, 1
	sw $t0, -5984($fp)
label386:
	addi $sp, $sp, -4
	lw $t0, -5980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5984($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6036($fp)
	addi $sp, $sp, 12
	lw $t1, -6036($fp)
	li $t2, 0
	bne $t1, $t2, label384
	j label383
label384:
	lw $t0, -4428($fp)
	sw $t0, -6040($fp)
	lw $t1, -6040($fp)
	li $t2, 0
	bne $t1, $t2, label382
	j label383
label382:
	li $t0, 1
	sw $t0, -5960($fp)
label383:
	li $t0, 0
	sw $t0, -6044($fp)
	li $t0, 1969
	sw $t0, -6048($fp)
	lw $t0, -468($fp)
	sw $t0, -6052($fp)
	lw $t1, -6048($fp)
	lw $t2, -6052($fp)
	bne $t1, $t2, label387
	j label389
label389:
	li $t0, 57821
	sw $t0, -6056($fp)
	lw $t1, -6056($fp)
	li $t2, 0
	bne $t1, $t2, label387
	j label388
label387:
	li $t0, 1
	sw $t0, -6044($fp)
label388:
	li $t0, 0
	sw $t0, -6060($fp)
	li $t0, 30482
	sw $t0, -6064($fp)
	lw $t0, -456($fp)
	sw $t0, -6068($fp)
	lw $t0, -6064($fp)
	lw $t1, -6068($fp)
	sub $t0, $t0, $t1
	sw $t0, -6072($fp)
	lw $t1, -6072($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label392
label392:
	li $t0, 6075
	sw $t0, -6076($fp)
	lw $t1, -6076($fp)
	li $t2, 0
	bne $t1, $t2, label390
	j label391
label390:
	li $t0, 1
	sw $t0, -6060($fp)
label391:
	addi $sp, $sp, -4
	lw $t0, -5936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5940($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5960($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6044($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6060($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6080($fp)
	addi $sp, $sp, 24
	lw $t0, -1188($fp)
	sw $t0, -6084($fp)
	lw $t0, -6080($fp)
	lw $t1, -6084($fp)
	mul $t0, $t0, $t1
	sw $t0, -6088($fp)
	addi $sp, $sp, -4
	lw $t0, -5912($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6088($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6092($fp)
	addi $sp, $sp, 12
	lw $t0, 20($fp)
	sw $t0, -6096($fp)
	lw $t0, -6092($fp)
	lw $t1, -6096($fp)
	add $t0, $t0, $t1
	sw $t0, -6100($fp)
	addi $sp, $sp, -4
	lw $t0, -5908($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6100($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6104($fp)
	addi $sp, $sp, 12
	li $t0, 29132
	sw $t0, -6108($fp)
	lw $t0, -6108($fp)
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	sw $t0, -6112($fp)
	addi $sp, $sp, -4
	lw $t0, -5836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6112($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6116($fp)
	addi $sp, $sp, 24
	lw $t0, -5816($fp)
	lw $t1, -6116($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6120($fp)
	lw $t1, -5796($fp)
	lw $t2, -6120($fp)
	blt $t1, $t2, label365
	j label366
label365:
	li $t0, 1
	sw $t0, -5752($fp)
label366:
	j label345
label347:
	j label333
label335:
	li $t0, 54084
	sw $t0, -6124($fp)
	lw $t0, -6124($fp)
	sw $t0, -6128($fp)
	lw $t0, -6128($fp)
	sw $t0, -6132($fp)
	lw $t0, -6128($fp)
	sw $t0, -6136($fp)
	lw $t0, -6136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6140($fp)
	li $t0, 57651
	sw $t0, -6144($fp)
	li $t0, 0
	lw $t1, -6144($fp)
	sub $t0, $t0, $t1
	sw $t0, -6148($fp)
	lw $t1, -6148($fp)
	li $t2, 0
	bne $t1, $t2, label394
	j label393
label393:
	li $t0, 1
	sw $t0, -6140($fp)
label394:
	lw $t0, -1344($fp)
	sw $t0, -6152($fp)
	li $t0, 0
	lw $t1, -6152($fp)
	sub $t0, $t0, $t1
	sw $t0, -6156($fp)
	lw $t0, -6140($fp)
	lw $t1, -6156($fp)
	add $t0, $t0, $t1
	sw $t0, -6160($fp)
	addi $t0, $fp, -4320
	sw $t0, -6164($fp)
	lw $t0, -1332($fp)
	sw $t0, -6168($fp)
	lw $t0, -6168($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -6172($fp)
	li $t0, 4
	lw $t1, -6172($fp)
	mul $t0, $t0, $t1
	sw $t0, -6176($fp)
	lw $t0, -6176($fp)
	lw $t1, -6164($fp)
	add $t0, $t0, $t1
	sw $t0, -6180($fp)
	lw $t0, -6180($fp)
	lw $t1, 0($t0)
	sw $t1, -6184($fp)
	lw $t0, -6160($fp)
	lw $t1, -6184($fp)
	add $t0, $t0, $t1
	sw $t0, -6188($fp)
	lw $ra, -4($fp)
	lw $v0, -6188($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 37828
	sw $t0, -6192($fp)
	lw $t0, -6192($fp)
	sw $t0, -6196($fp)
	lw $t0, -6196($fp)
	sw $t0, -6200($fp)
	lw $t0, -1320($fp)
	sw $t0, -6204($fp)
	lw $t0, -6128($fp)
	sw $t0, -6208($fp)
	lw $t0, -1476($fp)
	sw $t0, -6212($fp)
	lw $t0, -6208($fp)
	lw $t1, -6212($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6216($fp)
	li $t0, 59584
	sw $t0, -6220($fp)
	lw $t0, -6216($fp)
	lw $t1, -6220($fp)
	mul $t0, $t0, $t1
	sw $t0, -6224($fp)
	lw $t0, -6204($fp)
	lw $t1, -6224($fp)
	sub $t0, $t0, $t1
	sw $t0, -6228($fp)
	li $t0, 6465
	sw $t0, -6232($fp)
	lw $t0, -6228($fp)
	lw $t1, -6232($fp)
	sub $t0, $t0, $t1
	sw $t0, -6236($fp)
	li $t0, 0
	sw $t0, -6240($fp)
	lw $t0, -1380($fp)
	sw $t0, -6244($fp)
	li $t0, 63653
	sw $t0, -6248($fp)
	li $t0, 0
	lw $t1, -6248($fp)
	sub $t0, $t0, $t1
	sw $t0, -6252($fp)
	lw $t0, -6244($fp)
	lw $t1, -6252($fp)
	mul $t0, $t0, $t1
	sw $t0, -6256($fp)
	li $t0, 53378
	sw $t0, -6260($fp)
	lw $t0, -456($fp)
	sw $t0, -6264($fp)
	lw $t0, -6260($fp)
	lw $t1, -6264($fp)
	mul $t0, $t0, $t1
	sw $t0, -6268($fp)
	lw $t0, -6256($fp)
	lw $t1, -6268($fp)
	sub $t0, $t0, $t1
	sw $t0, -6272($fp)
	lw $t1, -6272($fp)
	li $t2, 0
	bne $t1, $t2, label395
	j label397
label397:
	li $t0, 47251
	sw $t0, -6276($fp)
	lw $t0, -4728($fp)
	sw $t0, -6280($fp)
	lw $t0, -6276($fp)
	lw $t1, -6280($fp)
	add $t0, $t0, $t1
	sw $t0, -6284($fp)
	lw $t0, -4680($fp)
	sw $t0, -6288($fp)
	lw $t0, -6284($fp)
	lw $t1, -6288($fp)
	add $t0, $t0, $t1
	sw $t0, -6292($fp)
	li $t0, 0
	sw $t0, -6296($fp)
	li $t0, 18333
	sw $t0, -6300($fp)
	lw $t0, -456($fp)
	sw $t0, -6304($fp)
	lw $t1, -6300($fp)
	lw $t2, -6304($fp)
	ble $t1, $t2, label398
	j label399
label398:
	li $t0, 1
	sw $t0, -6296($fp)
label399:
	lw $t1, -6292($fp)
	lw $t2, -6296($fp)
	bne $t1, $t2, label395
	j label396
label395:
	li $t0, 1
	sw $t0, -6240($fp)
label396:
	addi $t0, $fp, -32
	sw $t0, -6308($fp)
	lw $t0, -468($fp)
	sw $t0, -6312($fp)
	lw $t0, -6312($fp)
	sw $t0, -1248($fp)
	lw $t0, -1248($fp)
	sw $t0, -6316($fp)
	li $t0, 4
	lw $t1, -6316($fp)
	mul $t0, $t0, $t1
	sw $t0, -6320($fp)
	lw $t0, -6320($fp)
	lw $t1, -6308($fp)
	add $t0, $t0, $t1
	sw $t0, -6324($fp)
	lw $t0, -6324($fp)
	lw $t1, 0($t0)
	sw $t1, -6328($fp)
	li $t0, 0
	sw $t0, -6332($fp)
	li $t0, 10910
	sw $t0, -6336($fp)
	lw $t1, -6336($fp)
	li $t2, 0
	bne $t1, $t2, label400
	j label401
label400:
	li $t0, 1
	sw $t0, -6332($fp)
label401:
	lw $t0, -6328($fp)
	lw $t1, -6332($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6340($fp)
	li $t0, 0
	sw $t0, -6344($fp)
	li $t0, 37900
	sw $t0, -6348($fp)
	li $t0, 53594
	sw $t0, -6352($fp)
	lw $t0, -6348($fp)
	lw $t1, -6352($fp)
	sub $t0, $t0, $t1
	sw $t0, -6356($fp)
	lw $t0, 4($fp)
	sw $t0, -6360($fp)
	lw $t1, -6356($fp)
	lw $t2, -6360($fp)
	bgt $t1, $t2, label406
	j label403
label406:
	li $t0, 21864
	sw $t0, -6364($fp)
	lw $t0, -6196($fp)
	sw $t0, -6368($fp)
	lw $t0, -6364($fp)
	lw $t1, -6368($fp)
	add $t0, $t0, $t1
	sw $t0, -6372($fp)
	lw $t1, -6372($fp)
	li $t2, 0
	bne $t1, $t2, label405
	j label403
label405:
	li $t0, 40098
	sw $t0, -6376($fp)
	lw $t1, -6376($fp)
	li $t2, 0
	bne $t1, $t2, label404
	j label403
label404:
	li $t0, 0
	sw $t0, -6380($fp)
	lw $t0, -4728($fp)
	sw $t0, -6384($fp)
	lw $t1, -6384($fp)
	li $t2, 0
	bne $t1, $t2, label408
	j label407
label407:
	li $t0, 1
	sw $t0, -6380($fp)
label408:
	li $t0, 0
	lw $t1, -6380($fp)
	sub $t0, $t0, $t1
	sw $t0, -6388($fp)
	lw $t1, -6388($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label403
label402:
	li $t0, 1
	sw $t0, -6344($fp)
label403:
	li $t0, 0
	sw $t0, -6392($fp)
	lw $t0, -1260($fp)
	sw $t0, -6396($fp)
	lw $t1, -6396($fp)
	li $t2, 0
	bne $t1, $t2, label410
	j label409
label409:
	li $t0, 1
	sw $t0, -6392($fp)
label410:
	li $t0, 0
	sw $t0, -6400($fp)
	lw $t0, -480($fp)
	sw $t0, -6404($fp)
	lw $t1, -6404($fp)
	li $t2, 0
	bne $t1, $t2, label412
	j label411
label411:
	li $t0, 1
	sw $t0, -6400($fp)
label412:
	lw $t0, -6392($fp)
	lw $t1, -6400($fp)
	add $t0, $t0, $t1
	sw $t0, -6408($fp)
	li $t0, 12021
	sw $t0, -6456($fp)
	lw $t0, -6456($fp)
	sw $t0, -6460($fp)
	lw $t0, -6460($fp)
	sw $t0, -6464($fp)
	li $t0, 8529
	sw $t0, -6468($fp)
	lw $t0, -6468($fp)
	sw $t0, -6472($fp)
	lw $t0, -6472($fp)
	sw $t0, -6476($fp)
	li $t0, 3695
	sw $t0, -6480($fp)
	addi $t0, $fp, -6448
	sw $t0, -6484($fp)
	li $t0, 0
	sw $t0, -6488($fp)
	lw $t0, -6488($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6492($fp)
	lw $t0, -6484($fp)
	lw $t1, -6492($fp)
	add $t0, $t0, $t1
	sw $t0, -6496($fp)
	lw $t0, -6480($fp)
	lw $t1, -6496($fp)
	sw $t0, 0($t1)
	lw $t0, -6496($fp)
	lw $t1, 0($t0)
	sw $t1, -6500($fp)
	li $t0, 42503
	sw $t0, -6504($fp)
	addi $t0, $fp, -6448
	sw $t0, -6508($fp)
	li $t0, 1
	sw $t0, -6512($fp)
	lw $t0, -6512($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6516($fp)
	lw $t0, -6508($fp)
	lw $t1, -6516($fp)
	add $t0, $t0, $t1
	sw $t0, -6520($fp)
	lw $t0, -6504($fp)
	lw $t1, -6520($fp)
	sw $t0, 0($t1)
	lw $t0, -6520($fp)
	lw $t1, 0($t0)
	sw $t1, -6524($fp)
	li $t0, 14604
	sw $t0, -6528($fp)
	addi $t0, $fp, -6448
	sw $t0, -6532($fp)
	li $t0, 2
	sw $t0, -6536($fp)
	lw $t0, -6536($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6540($fp)
	lw $t0, -6532($fp)
	lw $t1, -6540($fp)
	add $t0, $t0, $t1
	sw $t0, -6544($fp)
	lw $t0, -6528($fp)
	lw $t1, -6544($fp)
	sw $t0, 0($t1)
	lw $t0, -6544($fp)
	lw $t1, 0($t0)
	sw $t1, -6548($fp)
	li $t0, 5664
	sw $t0, -6552($fp)
	addi $t0, $fp, -6448
	sw $t0, -6556($fp)
	li $t0, 3
	sw $t0, -6560($fp)
	lw $t0, -6560($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6564($fp)
	lw $t0, -6556($fp)
	lw $t1, -6564($fp)
	add $t0, $t0, $t1
	sw $t0, -6568($fp)
	lw $t0, -6552($fp)
	lw $t1, -6568($fp)
	sw $t0, 0($t1)
	lw $t0, -6568($fp)
	lw $t1, 0($t0)
	sw $t1, -6572($fp)
	li $t0, 34789
	sw $t0, -6576($fp)
	addi $t0, $fp, -6448
	sw $t0, -6580($fp)
	li $t0, 4
	sw $t0, -6584($fp)
	lw $t0, -6584($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6588($fp)
	lw $t0, -6580($fp)
	lw $t1, -6588($fp)
	add $t0, $t0, $t1
	sw $t0, -6592($fp)
	lw $t0, -6576($fp)
	lw $t1, -6592($fp)
	sw $t0, 0($t1)
	lw $t0, -6592($fp)
	lw $t1, 0($t0)
	sw $t1, -6596($fp)
	li $t0, 58560
	sw $t0, -6600($fp)
	addi $t0, $fp, -6448
	sw $t0, -6604($fp)
	li $t0, 5
	sw $t0, -6608($fp)
	lw $t0, -6608($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6612($fp)
	lw $t0, -6604($fp)
	lw $t1, -6612($fp)
	add $t0, $t0, $t1
	sw $t0, -6616($fp)
	lw $t0, -6600($fp)
	lw $t1, -6616($fp)
	sw $t0, 0($t1)
	lw $t0, -6616($fp)
	lw $t1, 0($t0)
	sw $t1, -6620($fp)
	li $t0, 18204
	sw $t0, -6624($fp)
	addi $t0, $fp, -6448
	sw $t0, -6628($fp)
	li $t0, 6
	sw $t0, -6632($fp)
	lw $t0, -6632($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6636($fp)
	lw $t0, -6628($fp)
	lw $t1, -6636($fp)
	add $t0, $t0, $t1
	sw $t0, -6640($fp)
	lw $t0, -6624($fp)
	lw $t1, -6640($fp)
	sw $t0, 0($t1)
	lw $t0, -6640($fp)
	lw $t1, 0($t0)
	sw $t1, -6644($fp)
	li $t0, 18062
	sw $t0, -6648($fp)
	addi $t0, $fp, -6448
	sw $t0, -6652($fp)
	li $t0, 7
	sw $t0, -6656($fp)
	lw $t0, -6656($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6660($fp)
	lw $t0, -6652($fp)
	lw $t1, -6660($fp)
	add $t0, $t0, $t1
	sw $t0, -6664($fp)
	lw $t0, -6648($fp)
	lw $t1, -6664($fp)
	sw $t0, 0($t1)
	lw $t0, -6664($fp)
	lw $t1, 0($t0)
	sw $t1, -6668($fp)
	li $t0, 19532
	sw $t0, -6672($fp)
	addi $t0, $fp, -6448
	sw $t0, -6676($fp)
	li $t0, 8
	sw $t0, -6680($fp)
	lw $t0, -6680($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6684($fp)
	lw $t0, -6676($fp)
	lw $t1, -6684($fp)
	add $t0, $t0, $t1
	sw $t0, -6688($fp)
	lw $t0, -6672($fp)
	lw $t1, -6688($fp)
	sw $t0, 0($t1)
	lw $t0, -6688($fp)
	lw $t1, 0($t0)
	sw $t1, -6692($fp)
	li $t0, 37189
	sw $t0, -6696($fp)
	addi $t0, $fp, -6448
	sw $t0, -6700($fp)
	li $t0, 9
	sw $t0, -6704($fp)
	lw $t0, -6704($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6708($fp)
	lw $t0, -6700($fp)
	lw $t1, -6708($fp)
	add $t0, $t0, $t1
	sw $t0, -6712($fp)
	lw $t0, -6696($fp)
	lw $t1, -6712($fp)
	sw $t0, 0($t1)
	lw $t0, -6712($fp)
	lw $t1, 0($t0)
	sw $t1, -6716($fp)
	li $t0, 27840
	sw $t0, -6720($fp)
	lw $t0, -6720($fp)
	sw $t0, -6724($fp)
	lw $t0, -6724($fp)
	sw $t0, -6728($fp)
	li $t0, 50935
	sw $t0, -6732($fp)
	addi $t0, $fp, -6452
	sw $t0, -6736($fp)
	li $t0, 0
	sw $t0, -6740($fp)
	lw $t0, -6740($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6744($fp)
	lw $t0, -6736($fp)
	lw $t1, -6744($fp)
	add $t0, $t0, $t1
	sw $t0, -6748($fp)
	lw $t0, -6732($fp)
	lw $t1, -6748($fp)
	sw $t0, 0($t1)
	lw $t0, -6748($fp)
	lw $t1, 0($t0)
	sw $t1, -6752($fp)
	li $t0, 0
	sw $t0, -6756($fp)
	lw $t0, -4380($fp)
	sw $t0, -6760($fp)
	lw $t0, -1380($fp)
	sw $t0, -6764($fp)
	lw $t0, -6760($fp)
	lw $t1, -6764($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6768($fp)
	lw $t1, -6768($fp)
	li $t2, 0
	bne $t1, $t2, label415
	j label414
label415:
	li $t0, 7857
	sw $t0, -6772($fp)
	lw $t1, -6772($fp)
	li $t2, 0
	bne $t1, $t2, label413
	j label414
label413:
	li $t0, 1
	sw $t0, -6756($fp)
label414:
	addi $t0, $fp, -6448
	sw $t0, -6776($fp)
	lw $t0, -696($fp)
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
	li $t0, 39696
	sw $t0, -6796($fp)
	lw $t0, -4416($fp)
	sw $t0, -6800($fp)
	lw $t0, -6796($fp)
	lw $t1, -6800($fp)
	add $t0, $t0, $t1
	sw $t0, -6804($fp)
	li $t0, 14111
	sw $t0, -6808($fp)
	lw $t0, -6804($fp)
	lw $t1, -6808($fp)
	add $t0, $t0, $t1
	sw $t0, -6812($fp)
	li $t0, 15741
	sw $t0, -6816($fp)
	li $t0, 25563
	sw $t0, -6820($fp)
	lw $t0, -6820($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -6824($fp)
	addi $sp, $sp, -4
	lw $t0, -6756($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6824($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6828($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -6832($fp)
	li $t0, 37305
	sw $t0, -6836($fp)
	li $t0, 12195
	sw $t0, -6840($fp)
	lw $t1, -6836($fp)
	lw $t2, -6840($fp)
	bne $t1, $t2, label418
	j label417
label418:
	lw $t0, 20($fp)
	sw $t0, -6844($fp)
	lw $t1, -6844($fp)
	li $t2, 0
	bne $t1, $t2, label416
	j label417
label416:
	li $t0, 1
	sw $t0, -6832($fp)
label417:
	li $t0, 8500
	sw $t0, -6848($fp)
	li $t0, 0
	sw $t0, -6852($fp)
	li $t0, 28776
	sw $t0, -6856($fp)
	lw $t0, -672($fp)
	sw $t0, -6860($fp)
	lw $t1, -6856($fp)
	lw $t2, -6860($fp)
	ble $t1, $t2, label419
	j label421
label421:
	lw $t0, -1260($fp)
	sw $t0, -6864($fp)
	lw $t1, -6864($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label420
label419:
	li $t0, 1
	sw $t0, -6852($fp)
label420:
	addi $t0, $fp, -4324
	sw $t0, -6868($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -6884($fp)
	sub $t0, $t0, $t1
	sw $t0, -6888($fp)
	li $t0, 6912
	sw $t0, -6892($fp)
	lw $t0, -6892($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -6896($fp)
	li $t0, 0
	sw $t0, -6900($fp)
	li $t0, 61574
	sw $t0, -6904($fp)
	lw $t1, -6904($fp)
	li $t2, 0
	bne $t1, $t2, label425
	j label424
label425:
	li $t0, 28439
	sw $t0, -6908($fp)
	lw $t1, -6908($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label424
label424:
	lw $t0, -456($fp)
	sw $t0, -6912($fp)
	lw $t1, -6912($fp)
	li $t2, 0
	bne $t1, $t2, label422
	j label423
label422:
	li $t0, 1
	sw $t0, -6900($fp)
label423:
	addi $sp, $sp, -4
	lw $t0, -6848($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6852($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6888($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6900($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6916($fp)
	addi $sp, $sp, 24
	li $t0, 28519
	sw $t0, -6920($fp)
	lw $t0, -6916($fp)
	lw $t1, -6920($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6924($fp)
	li $t0, 0
	sw $t0, -6928($fp)
	li $t0, 14322
	sw $t0, -6932($fp)
	li $t0, 10106
	sw $t0, -6936($fp)
	lw $t0, -6932($fp)
	lw $t1, -6936($fp)
	add $t0, $t0, $t1
	sw $t0, -6940($fp)
	lw $t1, -6940($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label428
label428:
	li $t0, 61538
	sw $t0, -6944($fp)
	lw $t1, -6944($fp)
	li $t2, 0
	bne $t1, $t2, label426
	j label427
label426:
	li $t0, 1
	sw $t0, -6928($fp)
label427:
	li $t0, 8159
	sw $t0, -6948($fp)
	lw $t0, -6948($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -6952($fp)
	li $t0, 11989
	sw $t0, -6956($fp)
	lw $t0, -6724($fp)
	sw $t0, -6960($fp)
	lw $t0, -6956($fp)
	lw $t1, -6960($fp)
	mul $t0, $t0, $t1
	sw $t0, -6964($fp)
	addi $sp, $sp, -4
	lw $t0, -6832($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6924($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6928($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6964($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6968($fp)
	addi $sp, $sp, 24
	lw $t0, -6828($fp)
	lw $t1, -6968($fp)
	add $t0, $t0, $t1
	sw $t0, -6972($fp)
	li $t0, 0
	sw $t0, -6976($fp)
	li $t0, 40275
	sw $t0, -6980($fp)
	li $t0, 17860
	sw $t0, -6984($fp)
	lw $t0, -4524($fp)
	sw $t0, -6988($fp)
	lw $t0, -6984($fp)
	lw $t1, -6988($fp)
	add $t0, $t0, $t1
	sw $t0, -6992($fp)
	lw $t0, -528($fp)
	sw $t0, -6996($fp)
	lw $t0, -6992($fp)
	lw $t1, -6996($fp)
	sub $t0, $t0, $t1
	sw $t0, -7000($fp)
	li $t0, 5486
	sw $t0, -7004($fp)
	lw $t0, -816($fp)
	sw $t0, -7008($fp)
	lw $t0, -7004($fp)
	lw $t1, -7008($fp)
	add $t0, $t0, $t1
	sw $t0, -7012($fp)
	li $t0, 51909
	sw $t0, -7016($fp)
	lw $t0, -7012($fp)
	lw $t1, -7016($fp)
	add $t0, $t0, $t1
	sw $t0, -7020($fp)
	addi $sp, $sp, -4
	lw $t0, -7000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7020($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7024($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -6980($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7024($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7028($fp)
	addi $sp, $sp, 12
	lw $t1, -7028($fp)
	li $t2, 0
	bne $t1, $t2, label430
	j label429
label429:
	li $t0, 1
	sw $t0, -6976($fp)
label430:
	lw $t0, -6972($fp)
	lw $t1, -6976($fp)
	add $t0, $t0, $t1
	sw $t0, -7032($fp)
	addi $t0, $fp, -76
	sw $t0, -7036($fp)
	lw $t0, -396($fp)
	sw $t0, -7040($fp)
	addi $t0, $fp, -108
	sw $t0, -7044($fp)
	li $t0, 0
	sw $t0, -7048($fp)
	li $t0, 4
	lw $t1, -7048($fp)
	mul $t0, $t0, $t1
	sw $t0, -7052($fp)
	lw $t0, -7052($fp)
	lw $t1, -7044($fp)
	add $t0, $t0, $t1
	sw $t0, -7056($fp)
	lw $t0, -7056($fp)
	lw $t1, 0($t0)
	sw $t1, -7060($fp)
	lw $t0, -7040($fp)
	lw $t1, -7060($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7064($fp)
	li $t0, 4
	lw $t1, -7064($fp)
	mul $t0, $t0, $t1
	sw $t0, -7068($fp)
	lw $t0, -7068($fp)
	lw $t1, -7036($fp)
	add $t0, $t0, $t1
	sw $t0, -7072($fp)
	lw $t0, -7072($fp)
	lw $t1, 0($t0)
	sw $t1, -7076($fp)
	addi $t0, $fp, -6452
	sw $t0, -7080($fp)
	li $t0, 0
	sw $t0, -7084($fp)
	li $t0, 4
	lw $t1, -7084($fp)
	mul $t0, $t0, $t1
	sw $t0, -7088($fp)
	lw $t0, -7088($fp)
	lw $t1, -7080($fp)
	add $t0, $t0, $t1
	sw $t0, -7092($fp)
	lw $t0, -7092($fp)
	lw $t1, 0($t0)
	sw $t1, -7096($fp)
	li $t0, 24025
	sw $t0, -7100($fp)
	lw $t0, -7096($fp)
	lw $t1, -7100($fp)
	add $t0, $t0, $t1
	sw $t0, -7104($fp)
	li $t0, 0
	sw $t0, -7108($fp)
	lw $t0, -4812($fp)
	sw $t0, -7112($fp)
	lw $t1, -7112($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label432
label434:
	lw $t0, -456($fp)
	sw $t0, -7116($fp)
	lw $t1, -7116($fp)
	li $t2, 0
	bne $t1, $t2, label433
	j label432
label433:
	lw $t0, -408($fp)
	sw $t0, -7120($fp)
	lw $t1, -7120($fp)
	li $t2, 0
	bne $t1, $t2, label431
	j label432
label431:
	li $t0, 1
	sw $t0, -7108($fp)
label432:
	li $t0, 0
	sw $t0, -7124($fp)
	li $t0, 0
	sw $t0, -7128($fp)
	li $t0, 49865
	sw $t0, -7132($fp)
	lw $t0, -492($fp)
	sw $t0, -7136($fp)
	lw $t1, -7132($fp)
	lw $t2, -7136($fp)
	ble $t1, $t2, label437
	j label438
label437:
	li $t0, 1
	sw $t0, -7128($fp)
label438:
	lw $t0, -1392($fp)
	sw $t0, -7140($fp)
	lw $t1, -7128($fp)
	lw $t2, -7140($fp)
	ble $t1, $t2, label435
	j label436
label435:
	li $t0, 1
	sw $t0, -7124($fp)
label436:
	li $t0, 0
	sw $t0, -7144($fp)
	li $t0, 0
	sw $t0, -7148($fp)
	lw $t0, -6128($fp)
	sw $t0, -7152($fp)
	lw $t0, -4824($fp)
	sw $t0, -7156($fp)
	lw $t1, -7152($fp)
	lw $t2, -7156($fp)
	ble $t1, $t2, label444
	j label443
label444:
	lw $t0, -1344($fp)
	sw $t0, -7160($fp)
	lw $t1, -7160($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label443
label442:
	li $t0, 1
	sw $t0, -7148($fp)
label443:
	li $t0, 0
	sw $t0, -7164($fp)
	lw $t0, -396($fp)
	sw $t0, -7168($fp)
	lw $t0, -1344($fp)
	sw $t0, -7172($fp)
	lw $t0, -7168($fp)
	lw $t1, -7172($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7176($fp)
	li $t0, 7718
	sw $t0, -7180($fp)
	lw $t1, -7176($fp)
	lw $t2, -7180($fp)
	beq $t1, $t2, label445
	j label446
label445:
	li $t0, 1
	sw $t0, -7164($fp)
label446:
	li $t0, 64466
	sw $t0, -7184($fp)
	lw $t0, -672($fp)
	sw $t0, -7188($fp)
	lw $t0, -456($fp)
	sw $t0, -7192($fp)
	lw $t0, -7188($fp)
	lw $t1, -7192($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7196($fp)
	li $t0, 0
	lw $t1, -7196($fp)
	sub $t0, $t0, $t1
	sw $t0, -7200($fp)
	li $t0, 0
	sw $t0, -7204($fp)
	li $t0, 58337
	sw $t0, -7208($fp)
	lw $t0, -432($fp)
	sw $t0, -7212($fp)
	lw $t0, -7208($fp)
	lw $t1, -7212($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7216($fp)
	lw $t0, -6472($fp)
	sw $t0, -7220($fp)
	lw $t1, -7216($fp)
	lw $t2, -7220($fp)
	bne $t1, $t2, label447
	j label448
label447:
	li $t0, 1
	sw $t0, -7204($fp)
label448:
	addi $sp, $sp, -4
	lw $t0, -7148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7200($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7204($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7224($fp)
	addi $sp, $sp, 24
	lw $t1, -7224($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label441
label441:
	li $t0, 20642
	sw $t0, -7228($fp)
	lw $t1, -7228($fp)
	li $t2, 0
	bne $t1, $t2, label439
	j label440
label439:
	li $t0, 1
	sw $t0, -7144($fp)
label440:
	li $t0, 0
	sw $t0, -7232($fp)
	lw $t0, -6460($fp)
	sw $t0, -7236($fp)
	lw $t1, -7236($fp)
	li $t2, 0
	bne $t1, $t2, label450
	j label449
label449:
	li $t0, 1
	sw $t0, -7232($fp)
label450:
	addi $sp, $sp, -4
	lw $t0, -7104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7232($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7240($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -7244($fp)
	addi $t0, $fp, -108
	sw $t0, -7248($fp)
	addi $t0, $fp, -132
	sw $t0, -7252($fp)
	li $t0, 2
	sw $t0, -7256($fp)
	li $t0, 4
	lw $t1, -7256($fp)
	mul $t0, $t0, $t1
	sw $t0, -7260($fp)
	lw $t0, -7260($fp)
	lw $t1, -7252($fp)
	add $t0, $t0, $t1
	sw $t0, -7264($fp)
	lw $t0, -7264($fp)
	lw $t1, 0($t0)
	sw $t1, -7268($fp)
	lw $t0, -6472($fp)
	sw $t0, -7272($fp)
	lw $t0, -7268($fp)
	lw $t1, -7272($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7276($fp)
	li $t0, 0
	sw $t0, -7280($fp)
	lw $t0, 20($fp)
	sw $t0, -7284($fp)
	lw $t1, -7284($fp)
	li $t2, 0
	bne $t1, $t2, label453
	j label454
label453:
	li $t0, 1
	sw $t0, -7280($fp)
label454:
	addi $sp, $sp, -4
	lw $t0, -7276($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7280($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7288($fp)
	addi $sp, $sp, 12
	li $t0, 4
	lw $t1, -7288($fp)
	mul $t0, $t0, $t1
	sw $t0, -7292($fp)
	lw $t0, -7292($fp)
	lw $t1, -7248($fp)
	add $t0, $t0, $t1
	sw $t0, -7296($fp)
	lw $t0, -7296($fp)
	lw $t1, 0($t0)
	sw $t1, -7300($fp)
	lw $t1, -7300($fp)
	li $t2, 0
	bne $t1, $t2, label452
	j label451
label451:
	li $t0, 1
	sw $t0, -7244($fp)
label452:
	li $t0, 0
	lw $t1, -7244($fp)
	sub $t0, $t0, $t1
	sw $t0, -7304($fp)
	li $t0, 0
	sw $t0, -7308($fp)
	li $t0, 0
	sw $t0, -7312($fp)
	lw $t0, -4812($fp)
	sw $t0, -7316($fp)
	lw $t0, -4740($fp)
	sw $t0, -7320($fp)
	lw $t0, -7316($fp)
	lw $t1, -7320($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7324($fp)
	li $t0, 36014
	sw $t0, -7328($fp)
	lw $t1, -7324($fp)
	lw $t2, -7328($fp)
	bne $t1, $t2, label459
	j label460
label459:
	li $t0, 1
	sw $t0, -7312($fp)
label460:
	lw $t0, -1212($fp)
	sw $t0, -7332($fp)
	addi $sp, $sp, -4
	lw $t0, -7312($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7332($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7336($fp)
	addi $sp, $sp, 12
	lw $t1, -7336($fp)
	li $t2, 0
	bne $t1, $t2, label458
	j label457
label458:
	lw $t0, 16($fp)
	sw $t0, -7340($fp)
	lw $t1, -7340($fp)
	li $t2, 0
	bne $t1, $t2, label455
	j label457
label457:
	addi $t0, $fp, -4292
	sw $t0, -7344($fp)
	li $t0, 1
	sw $t0, -7348($fp)
	li $t0, 4
	lw $t1, -7348($fp)
	mul $t0, $t0, $t1
	sw $t0, -7352($fp)
	lw $t0, -7352($fp)
	lw $t1, -7344($fp)
	add $t0, $t0, $t1
	sw $t0, -7356($fp)
	lw $t0, -7356($fp)
	lw $t1, 0($t0)
	sw $t1, -7360($fp)
	lw $t1, -7360($fp)
	li $t2, 0
	bne $t1, $t2, label455
	j label456
label455:
	li $t0, 1
	sw $t0, -7308($fp)
label456:
	lw $t0, -7308($fp)
	sw $t0, -492($fp)
	lw $t0, -492($fp)
	sw $t0, -7364($fp)
label461:
	addi $t0, $fp, -40
	sw $t0, -7368($fp)
	li $t0, 46120
	sw $t0, -7372($fp)
	lw $t0, -372($fp)
	sw $t0, -7376($fp)
	lw $t0, -7372($fp)
	lw $t1, -7376($fp)
	mul $t0, $t0, $t1
	sw $t0, -7380($fp)
	li $t0, 4
	lw $t1, -7380($fp)
	mul $t0, $t0, $t1
	sw $t0, -7384($fp)
	lw $t0, -7384($fp)
	lw $t1, -7368($fp)
	add $t0, $t0, $t1
	sw $t0, -7388($fp)
	lw $t0, -7388($fp)
	lw $t1, 0($t0)
	sw $t1, -7392($fp)
	lw $t0, -7392($fp)
	sw $t0, -1476($fp)
	lw $t0, -1476($fp)
	sw $t0, -7396($fp)
	lw $t1, -7396($fp)
	li $t2, 0
	bne $t1, $t2, label462
	j label463
label462:
	li $t0, 51554
	sw $t0, -7400($fp)
	lw $t0, -7400($fp)
	sw $t0, -7404($fp)
	lw $t0, -7404($fp)
	sw $t0, -7408($fp)
	li $t0, 54601
	sw $t0, -7412($fp)
	lw $t0, -7412($fp)
	sw $t0, -7416($fp)
	lw $t0, -7416($fp)
	sw $t0, -7420($fp)
	lw $t0, -7404($fp)
	sw $t0, -7424($fp)
	lw $t0, -7424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -7416($fp)
	sw $t0, -7428($fp)
	lw $t0, -7428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 9024
	sw $t0, -7432($fp)
	lw $t0, -516($fp)
	sw $t0, -7436($fp)
	lw $t0, -7436($fp)
	sw $t0, -7404($fp)
	lw $t0, -7404($fp)
	sw $t0, -7440($fp)
	lw $t0, -672($fp)
	sw $t0, -7444($fp)
	lw $t0, -7444($fp)
	sw $t0, -1392($fp)
	lw $t0, -1392($fp)
	sw $t0, -7448($fp)
	lw $t0, -1380($fp)
	sw $t0, -7452($fp)
	li $t0, 0
	sw $t0, -7456($fp)
	lw $t0, -1368($fp)
	sw $t0, -7460($fp)
	lw $t0, -708($fp)
	sw $t0, -7464($fp)
	lw $t0, -7460($fp)
	lw $t1, -7464($fp)
	sub $t0, $t0, $t1
	sw $t0, -7468($fp)
	lw $t1, -7468($fp)
	li $t2, 0
	bne $t1, $t2, label464
	j label466
label466:
	li $t0, 59527
	sw $t0, -7472($fp)
	lw $t1, -7472($fp)
	li $t2, 0
	bne $t1, $t2, label464
	j label465
label464:
	li $t0, 1
	sw $t0, -7456($fp)
label465:
	li $t0, 43699
	sw $t0, -7476($fp)
	lw $t0, -1332($fp)
	sw $t0, -7480($fp)
	li $t0, 0
	sw $t0, -7484($fp)
	li $t0, 0
	sw $t0, -7488($fp)
	li $t0, 54041
	sw $t0, -7492($fp)
	li $t0, 59012
	sw $t0, -7496($fp)
	lw $t1, -7492($fp)
	lw $t2, -7496($fp)
	bne $t1, $t2, label469
	j label470
label469:
	li $t0, 1
	sw $t0, -7488($fp)
label470:
	lw $t0, -1212($fp)
	sw $t0, -7500($fp)
	lw $t1, -7488($fp)
	lw $t2, -7500($fp)
	beq $t1, $t2, label467
	j label468
label467:
	li $t0, 1
	sw $t0, -7484($fp)
label468:
	addi $t0, $fp, -136
	sw $t0, -7504($fp)
	lw $t0, -7416($fp)
	sw $t0, -7508($fp)
	li $t0, 4
	lw $t1, -7508($fp)
	mul $t0, $t0, $t1
	sw $t0, -7512($fp)
	lw $t0, -7512($fp)
	lw $t1, -7504($fp)
	add $t0, $t0, $t1
	sw $t0, -7516($fp)
	lw $t0, -7516($fp)
	lw $t1, 0($t0)
	sw $t1, -7520($fp)
	addi $sp, $sp, -4
	lw $t0, -7484($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7520($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -7524($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -7524($fp)
	sub $t0, $t0, $t1
	sw $t0, -7528($fp)
	li $t0, 31503
	sw $t0, -7532($fp)
	addi $sp, $sp, -4
	lw $t0, -7456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7528($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7532($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7536($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -7540($fp)
	lw $t0, -1200($fp)
	sw $t0, -7544($fp)
	lw $t0, -1356($fp)
	sw $t0, -7548($fp)
	lw $t0, -7544($fp)
	lw $t1, -7548($fp)
	add $t0, $t0, $t1
	sw $t0, -7552($fp)
	li $t0, 21707
	sw $t0, -7556($fp)
	lw $t1, -7552($fp)
	lw $t2, -7556($fp)
	bne $t1, $t2, label471
	j label472
label471:
	li $t0, 1
	sw $t0, -7540($fp)
label472:
	lw $t0, -1476($fp)
	sw $t0, -7560($fp)
	lw $t0, -7560($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -7564($fp)
	li $t0, 0
	sw $t0, -7568($fp)
	li $t0, 0
	sw $t0, -7572($fp)
	lw $t0, 4($fp)
	sw $t0, -7576($fp)
	lw $t1, -7576($fp)
	li $t2, 0
	bne $t1, $t2, label476
	j label475
label475:
	li $t0, 1
	sw $t0, -7572($fp)
label476:
	lw $t0, -1188($fp)
	sw $t0, -7580($fp)
	lw $t1, -7572($fp)
	lw $t2, -7580($fp)
	bne $t1, $t2, label473
	j label474
label473:
	li $t0, 1
	sw $t0, -7568($fp)
label474:
	addi $t0, $fp, -148
	sw $t0, -7584($fp)
	lw $t0, -1380($fp)
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
	addi $sp, $sp, -4
	lw $t0, -7536($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7564($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7600($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7604($fp)
	addi $sp, $sp, 24
	lw $t0, -1344($fp)
	sw $t0, -7608($fp)
	lw $t0, -7604($fp)
	lw $t1, -7608($fp)
	mul $t0, $t0, $t1
	sw $t0, -7612($fp)
	li $t0, 0
	sw $t0, -7616($fp)
	li $t0, 58466
	sw $t0, -7620($fp)
	li $t0, 23003
	sw $t0, -7624($fp)
	lw $t1, -7620($fp)
	lw $t2, -7624($fp)
	bge $t1, $t2, label479
	j label478
label479:
	li $t0, 25522
	sw $t0, -7628($fp)
	lw $t1, -7628($fp)
	li $t2, 0
	bne $t1, $t2, label477
	j label478
label477:
	li $t0, 1
	sw $t0, -7616($fp)
label478:
	addi $sp, $sp, -4
	lw $t0, -7440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7612($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7616($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7632($fp)
	addi $sp, $sp, 24
	lw $t0, -7432($fp)
	lw $t1, -7632($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7636($fp)
	lw $t0, -7636($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -7640($fp)
	lw $ra, -4($fp)
	lw $v0, -7640($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -136
	sw $t0, -7644($fp)
	li $t0, 0
	sw $t0, -7648($fp)
	li $t0, 45386
	sw $t0, -7652($fp)
	li $t0, 0
	lw $t1, -7652($fp)
	sub $t0, $t0, $t1
	sw $t0, -7656($fp)
	lw $t1, -7656($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label483
label483:
	li $t0, 61559
	sw $t0, -7660($fp)
	lw $t1, -7660($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label482
label482:
	lw $t0, -1320($fp)
	sw $t0, -7664($fp)
	li $t0, 34267
	sw $t0, -7668($fp)
	lw $t0, -7664($fp)
	lw $t1, -7668($fp)
	add $t0, $t0, $t1
	sw $t0, -7672($fp)
	lw $t1, -7672($fp)
	li $t2, 0
	bne $t1, $t2, label480
	j label481
label480:
	li $t0, 1
	sw $t0, -7648($fp)
label481:
	li $t0, 4
	lw $t1, -7648($fp)
	mul $t0, $t0, $t1
	sw $t0, -7676($fp)
	lw $t0, -7676($fp)
	lw $t1, -7644($fp)
	add $t0, $t0, $t1
	sw $t0, -7680($fp)
	lw $t0, -7680($fp)
	lw $t1, 0($t0)
	sw $t1, -7684($fp)
	j label461
label463:
	addi $t0, $fp, -24
	sw $t0, -7688($fp)
	li $t0, 0
	sw $t0, -7692($fp)
	li $t0, 4
	lw $t1, -7692($fp)
	mul $t0, $t0, $t1
	sw $t0, -7696($fp)
	lw $t0, -7696($fp)
	lw $t1, -7688($fp)
	add $t0, $t0, $t1
	sw $t0, -7700($fp)
	lw $t0, -7700($fp)
	lw $t1, 0($t0)
	sw $t1, -7704($fp)
	lw $t0, -7704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -7708($fp)
	li $t0, 1
	sw $t0, -7712($fp)
	li $t0, 4
	lw $t1, -7712($fp)
	mul $t0, $t0, $t1
	sw $t0, -7716($fp)
	lw $t0, -7716($fp)
	lw $t1, -7708($fp)
	add $t0, $t0, $t1
	sw $t0, -7720($fp)
	lw $t0, -7720($fp)
	lw $t1, 0($t0)
	sw $t1, -7724($fp)
	lw $t0, -7724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -7728($fp)
	li $t0, 2
	sw $t0, -7732($fp)
	li $t0, 4
	lw $t1, -7732($fp)
	mul $t0, $t0, $t1
	sw $t0, -7736($fp)
	lw $t0, -7736($fp)
	lw $t1, -7728($fp)
	add $t0, $t0, $t1
	sw $t0, -7740($fp)
	lw $t0, -7740($fp)
	lw $t1, 0($t0)
	sw $t1, -7744($fp)
	lw $t0, -7744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -7748($fp)
	li $t0, 3
	sw $t0, -7752($fp)
	li $t0, 4
	lw $t1, -7752($fp)
	mul $t0, $t0, $t1
	sw $t0, -7756($fp)
	lw $t0, -7756($fp)
	lw $t1, -7748($fp)
	add $t0, $t0, $t1
	sw $t0, -7760($fp)
	lw $t0, -7760($fp)
	lw $t1, 0($t0)
	sw $t1, -7764($fp)
	lw $t0, -7764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -7768($fp)
	li $t0, 4
	sw $t0, -7772($fp)
	li $t0, 4
	lw $t1, -7772($fp)
	mul $t0, $t0, $t1
	sw $t0, -7776($fp)
	lw $t0, -7776($fp)
	lw $t1, -7768($fp)
	add $t0, $t0, $t1
	sw $t0, -7780($fp)
	lw $t0, -7780($fp)
	lw $t1, 0($t0)
	sw $t1, -7784($fp)
	lw $t0, -7784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -7788($fp)
	li $t0, 0
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
	lw $t0, -7804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -7808($fp)
	li $t0, 1
	sw $t0, -7812($fp)
	li $t0, 4
	lw $t1, -7812($fp)
	mul $t0, $t0, $t1
	sw $t0, -7816($fp)
	lw $t0, -7816($fp)
	lw $t1, -7808($fp)
	add $t0, $t0, $t1
	sw $t0, -7820($fp)
	lw $t0, -7820($fp)
	lw $t1, 0($t0)
	sw $t1, -7824($fp)
	lw $t0, -7824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -7828($fp)
	li $t0, 0
	sw $t0, -7832($fp)
	li $t0, 4
	lw $t1, -7832($fp)
	mul $t0, $t0, $t1
	sw $t0, -7836($fp)
	lw $t0, -7836($fp)
	lw $t1, -7828($fp)
	add $t0, $t0, $t1
	sw $t0, -7840($fp)
	lw $t0, -7840($fp)
	lw $t1, 0($t0)
	sw $t1, -7844($fp)
	lw $t0, -7844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -40
	sw $t0, -7848($fp)
	li $t0, 1
	sw $t0, -7852($fp)
	li $t0, 4
	lw $t1, -7852($fp)
	mul $t0, $t0, $t1
	sw $t0, -7856($fp)
	lw $t0, -7856($fp)
	lw $t1, -7848($fp)
	add $t0, $t0, $t1
	sw $t0, -7860($fp)
	lw $t0, -7860($fp)
	lw $t1, 0($t0)
	sw $t1, -7864($fp)
	lw $t0, -7864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -7868($fp)
	lw $t0, -7868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -7872($fp)
	lw $t0, -7872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -396($fp)
	sw $t0, -7876($fp)
	lw $t0, -7876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -408($fp)
	sw $t0, -7880($fp)
	lw $t0, -7880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -420($fp)
	sw $t0, -7884($fp)
	lw $t0, -7884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -432($fp)
	sw $t0, -7888($fp)
	lw $t0, -7888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -444($fp)
	sw $t0, -7892($fp)
	lw $t0, -7892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -456($fp)
	sw $t0, -7896($fp)
	lw $t0, -7896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -7900($fp)
	lw $t0, -7900($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -7904($fp)
	lw $t0, -7904($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -492($fp)
	sw $t0, -7908($fp)
	lw $t0, -7908($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -504($fp)
	sw $t0, -7912($fp)
	lw $t0, -7912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -516($fp)
	sw $t0, -7916($fp)
	lw $t0, -7916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -528($fp)
	sw $t0, -7920($fp)
	lw $t0, -7920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -7924($fp)
	li $t0, 0
	sw $t0, -7928($fp)
	li $t0, 4
	lw $t1, -7928($fp)
	mul $t0, $t0, $t1
	sw $t0, -7932($fp)
	lw $t0, -7932($fp)
	lw $t1, -7924($fp)
	add $t0, $t0, $t1
	sw $t0, -7936($fp)
	lw $t0, -7936($fp)
	lw $t1, 0($t0)
	sw $t1, -7940($fp)
	lw $t0, -7940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -7944($fp)
	li $t0, 1
	sw $t0, -7948($fp)
	li $t0, 4
	lw $t1, -7948($fp)
	mul $t0, $t0, $t1
	sw $t0, -7952($fp)
	lw $t0, -7952($fp)
	lw $t1, -7944($fp)
	add $t0, $t0, $t1
	sw $t0, -7956($fp)
	lw $t0, -7956($fp)
	lw $t1, 0($t0)
	sw $t1, -7960($fp)
	lw $t0, -7960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -7964($fp)
	li $t0, 2
	sw $t0, -7968($fp)
	li $t0, 4
	lw $t1, -7968($fp)
	mul $t0, $t0, $t1
	sw $t0, -7972($fp)
	lw $t0, -7972($fp)
	lw $t1, -7964($fp)
	add $t0, $t0, $t1
	sw $t0, -7976($fp)
	lw $t0, -7976($fp)
	lw $t1, 0($t0)
	sw $t1, -7980($fp)
	lw $t0, -7980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -7984($fp)
	li $t0, 3
	sw $t0, -7988($fp)
	li $t0, 4
	lw $t1, -7988($fp)
	mul $t0, $t0, $t1
	sw $t0, -7992($fp)
	lw $t0, -7992($fp)
	lw $t1, -7984($fp)
	add $t0, $t0, $t1
	sw $t0, -7996($fp)
	lw $t0, -7996($fp)
	lw $t1, 0($t0)
	sw $t1, -8000($fp)
	lw $t0, -8000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -8004($fp)
	li $t0, 4
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
	lw $t0, -660($fp)
	sw $t0, -8024($fp)
	lw $t0, -8024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -672($fp)
	sw $t0, -8028($fp)
	lw $t0, -8028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -684($fp)
	sw $t0, -8032($fp)
	lw $t0, -8032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -696($fp)
	sw $t0, -8036($fp)
	lw $t0, -8036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -8040($fp)
	lw $t0, -8040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -8044($fp)
	li $t0, 0
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
	addi $t0, $fp, -76
	sw $t0, -8064($fp)
	li $t0, 1
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
	addi $t0, $fp, -76
	sw $t0, -8084($fp)
	li $t0, 2
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
	addi $t0, $fp, -76
	sw $t0, -8104($fp)
	li $t0, 3
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
	lw $t0, -816($fp)
	sw $t0, -8124($fp)
	lw $t0, -8124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -8128($fp)
	li $t0, 0
	sw $t0, -8132($fp)
	li $t0, 4
	lw $t1, -8132($fp)
	mul $t0, $t0, $t1
	sw $t0, -8136($fp)
	lw $t0, -8136($fp)
	lw $t1, -8128($fp)
	add $t0, $t0, $t1
	sw $t0, -8140($fp)
	lw $t0, -8140($fp)
	lw $t1, 0($t0)
	sw $t1, -8144($fp)
	lw $t0, -8144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -8148($fp)
	li $t0, 1
	sw $t0, -8152($fp)
	li $t0, 4
	lw $t1, -8152($fp)
	mul $t0, $t0, $t1
	sw $t0, -8156($fp)
	lw $t0, -8156($fp)
	lw $t1, -8148($fp)
	add $t0, $t0, $t1
	sw $t0, -8160($fp)
	lw $t0, -8160($fp)
	lw $t1, 0($t0)
	sw $t1, -8164($fp)
	lw $t0, -8164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -8168($fp)
	li $t0, 2
	sw $t0, -8172($fp)
	li $t0, 4
	lw $t1, -8172($fp)
	mul $t0, $t0, $t1
	sw $t0, -8176($fp)
	lw $t0, -8176($fp)
	lw $t1, -8168($fp)
	add $t0, $t0, $t1
	sw $t0, -8180($fp)
	lw $t0, -8180($fp)
	lw $t1, 0($t0)
	sw $t1, -8184($fp)
	lw $t0, -8184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -8188($fp)
	li $t0, 3
	sw $t0, -8192($fp)
	li $t0, 4
	lw $t1, -8192($fp)
	mul $t0, $t0, $t1
	sw $t0, -8196($fp)
	lw $t0, -8196($fp)
	lw $t1, -8188($fp)
	add $t0, $t0, $t1
	sw $t0, -8200($fp)
	lw $t0, -8200($fp)
	lw $t1, 0($t0)
	sw $t1, -8204($fp)
	lw $t0, -8204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -8208($fp)
	li $t0, 4
	sw $t0, -8212($fp)
	li $t0, 4
	lw $t1, -8212($fp)
	mul $t0, $t0, $t1
	sw $t0, -8216($fp)
	lw $t0, -8216($fp)
	lw $t1, -8208($fp)
	add $t0, $t0, $t1
	sw $t0, -8220($fp)
	lw $t0, -8220($fp)
	lw $t1, 0($t0)
	sw $t1, -8224($fp)
	lw $t0, -8224($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -8228($fp)
	li $t0, 5
	sw $t0, -8232($fp)
	li $t0, 4
	lw $t1, -8232($fp)
	mul $t0, $t0, $t1
	sw $t0, -8236($fp)
	lw $t0, -8236($fp)
	lw $t1, -8228($fp)
	add $t0, $t0, $t1
	sw $t0, -8240($fp)
	lw $t0, -8240($fp)
	lw $t1, 0($t0)
	sw $t1, -8244($fp)
	lw $t0, -8244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -8248($fp)
	li $t0, 6
	sw $t0, -8252($fp)
	li $t0, 4
	lw $t1, -8252($fp)
	mul $t0, $t0, $t1
	sw $t0, -8256($fp)
	lw $t0, -8256($fp)
	lw $t1, -8248($fp)
	add $t0, $t0, $t1
	sw $t0, -8260($fp)
	lw $t0, -8260($fp)
	lw $t1, 0($t0)
	sw $t1, -8264($fp)
	lw $t0, -8264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -8268($fp)
	li $t0, 7
	sw $t0, -8272($fp)
	li $t0, 4
	lw $t1, -8272($fp)
	mul $t0, $t0, $t1
	sw $t0, -8276($fp)
	lw $t0, -8276($fp)
	lw $t1, -8268($fp)
	add $t0, $t0, $t1
	sw $t0, -8280($fp)
	lw $t0, -8280($fp)
	lw $t1, 0($t0)
	sw $t1, -8284($fp)
	lw $t0, -8284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1020($fp)
	sw $t0, -8288($fp)
	lw $t0, -8288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -8292($fp)
	li $t0, 0
	sw $t0, -8296($fp)
	li $t0, 4
	lw $t1, -8296($fp)
	mul $t0, $t0, $t1
	sw $t0, -8300($fp)
	lw $t0, -8300($fp)
	lw $t1, -8292($fp)
	add $t0, $t0, $t1
	sw $t0, -8304($fp)
	lw $t0, -8304($fp)
	lw $t1, 0($t0)
	sw $t1, -8308($fp)
	lw $t0, -8308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -8312($fp)
	li $t0, 1
	sw $t0, -8316($fp)
	li $t0, 4
	lw $t1, -8316($fp)
	mul $t0, $t0, $t1
	sw $t0, -8320($fp)
	lw $t0, -8320($fp)
	lw $t1, -8312($fp)
	add $t0, $t0, $t1
	sw $t0, -8324($fp)
	lw $t0, -8324($fp)
	lw $t1, 0($t0)
	sw $t1, -8328($fp)
	lw $t0, -8328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -8332($fp)
	li $t0, 2
	sw $t0, -8336($fp)
	li $t0, 4
	lw $t1, -8336($fp)
	mul $t0, $t0, $t1
	sw $t0, -8340($fp)
	lw $t0, -8340($fp)
	lw $t1, -8332($fp)
	add $t0, $t0, $t1
	sw $t0, -8344($fp)
	lw $t0, -8344($fp)
	lw $t1, 0($t0)
	sw $t1, -8348($fp)
	lw $t0, -8348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -8352($fp)
	li $t0, 3
	sw $t0, -8356($fp)
	li $t0, 4
	lw $t1, -8356($fp)
	mul $t0, $t0, $t1
	sw $t0, -8360($fp)
	lw $t0, -8360($fp)
	lw $t1, -8352($fp)
	add $t0, $t0, $t1
	sw $t0, -8364($fp)
	lw $t0, -8364($fp)
	lw $t1, 0($t0)
	sw $t1, -8368($fp)
	lw $t0, -8368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -8372($fp)
	li $t0, 4
	sw $t0, -8376($fp)
	li $t0, 4
	lw $t1, -8376($fp)
	mul $t0, $t0, $t1
	sw $t0, -8380($fp)
	lw $t0, -8380($fp)
	lw $t1, -8372($fp)
	add $t0, $t0, $t1
	sw $t0, -8384($fp)
	lw $t0, -8384($fp)
	lw $t1, 0($t0)
	sw $t1, -8388($fp)
	lw $t0, -8388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -132
	sw $t0, -8392($fp)
	li $t0, 5
	sw $t0, -8396($fp)
	li $t0, 4
	lw $t1, -8396($fp)
	mul $t0, $t0, $t1
	sw $t0, -8400($fp)
	lw $t0, -8400($fp)
	lw $t1, -8392($fp)
	add $t0, $t0, $t1
	sw $t0, -8404($fp)
	lw $t0, -8404($fp)
	lw $t1, 0($t0)
	sw $t1, -8408($fp)
	lw $t0, -8408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1176($fp)
	sw $t0, -8412($fp)
	lw $t0, -8412($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1188($fp)
	sw $t0, -8416($fp)
	lw $t0, -8416($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1200($fp)
	sw $t0, -8420($fp)
	lw $t0, -8420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1212($fp)
	sw $t0, -8424($fp)
	lw $t0, -8424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -136
	sw $t0, -8428($fp)
	li $t0, 0
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
	lw $t0, -8444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1248($fp)
	sw $t0, -8448($fp)
	lw $t0, -8448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1260($fp)
	sw $t0, -8452($fp)
	lw $t0, -8452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1272($fp)
	sw $t0, -8456($fp)
	lw $t0, -8456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1284($fp)
	sw $t0, -8460($fp)
	lw $t0, -8460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1296($fp)
	sw $t0, -8464($fp)
	lw $t0, -8464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1308($fp)
	sw $t0, -8468($fp)
	lw $t0, -8468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1320($fp)
	sw $t0, -8472($fp)
	lw $t0, -8472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1332($fp)
	sw $t0, -8476($fp)
	lw $t0, -8476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1344($fp)
	sw $t0, -8480($fp)
	lw $t0, -8480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1356($fp)
	sw $t0, -8484($fp)
	lw $t0, -8484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1368($fp)
	sw $t0, -8488($fp)
	lw $t0, -8488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1380($fp)
	sw $t0, -8492($fp)
	lw $t0, -8492($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1392($fp)
	sw $t0, -8496($fp)
	lw $t0, -8496($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -8500($fp)
	li $t0, 0
	sw $t0, -8504($fp)
	li $t0, 4
	lw $t1, -8504($fp)
	mul $t0, $t0, $t1
	sw $t0, -8508($fp)
	lw $t0, -8508($fp)
	lw $t1, -8500($fp)
	add $t0, $t0, $t1
	sw $t0, -8512($fp)
	lw $t0, -8512($fp)
	lw $t1, 0($t0)
	sw $t1, -8516($fp)
	lw $t0, -8516($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -8520($fp)
	li $t0, 1
	sw $t0, -8524($fp)
	li $t0, 4
	lw $t1, -8524($fp)
	mul $t0, $t0, $t1
	sw $t0, -8528($fp)
	lw $t0, -8528($fp)
	lw $t1, -8520($fp)
	add $t0, $t0, $t1
	sw $t0, -8532($fp)
	lw $t0, -8532($fp)
	lw $t1, 0($t0)
	sw $t1, -8536($fp)
	lw $t0, -8536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -148
	sw $t0, -8540($fp)
	li $t0, 2
	sw $t0, -8544($fp)
	li $t0, 4
	lw $t1, -8544($fp)
	mul $t0, $t0, $t1
	sw $t0, -8548($fp)
	lw $t0, -8548($fp)
	lw $t1, -8540($fp)
	add $t0, $t0, $t1
	sw $t0, -8552($fp)
	lw $t0, -8552($fp)
	lw $t1, 0($t0)
	sw $t1, -8556($fp)
	lw $t0, -8556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1476($fp)
	sw $t0, -8560($fp)
	lw $t0, -8560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -8564($fp)
	lw $t0, -528($fp)
	sw $t0, -8568($fp)
	lw $t1, -8568($fp)
	li $t2, 0
	bne $t1, $t2, label486
	j label485
label486:
	li $t0, 24783
	sw $t0, -8572($fp)
	li $t0, 32087
	sw $t0, -8576($fp)
	lw $t0, -456($fp)
	sw $t0, -8580($fp)
	lw $t0, -8576($fp)
	lw $t1, -8580($fp)
	mul $t0, $t0, $t1
	sw $t0, -8584($fp)
	lw $t1, -8572($fp)
	lw $t2, -8584($fp)
	ble $t1, $t2, label484
	j label485
label484:
	li $t0, 1
	sw $t0, -8564($fp)
label485:
	lw $ra, -4($fp)
	lw $v0, -8564($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1868
	li $t0, 27068
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	sw $t0, -96($fp)
	lw $t0, -96($fp)
	sw $t0, -100($fp)
	li $t0, 23713
	sw $t0, -104($fp)
	lw $t0, -104($fp)
	sw $t0, -108($fp)
	lw $t0, -108($fp)
	sw $t0, -112($fp)
	li $t0, 39805
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
	li $t0, 47710
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
	li $t0, 8042
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	lw $t0, -168($fp)
	sw $t0, -172($fp)
	li $t0, 7551
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 18558
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	li $t0, 32068
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	li $t0, 54944
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -216($fp)
	lw $t0, -216($fp)
	sw $t0, -220($fp)
	li $t0, 62798
	sw $t0, -224($fp)
	addi $t0, $fp, -44
	sw $t0, -228($fp)
	li $t0, 0
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
	li $t0, 2546
	sw $t0, -248($fp)
	addi $t0, $fp, -44
	sw $t0, -252($fp)
	li $t0, 1
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
	li $t0, 44960
	sw $t0, -272($fp)
	addi $t0, $fp, -44
	sw $t0, -276($fp)
	li $t0, 2
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
	li $t0, 55825
	sw $t0, -296($fp)
	addi $t0, $fp, -44
	sw $t0, -300($fp)
	li $t0, 3
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
	li $t0, 48667
	sw $t0, -320($fp)
	addi $t0, $fp, -44
	sw $t0, -324($fp)
	li $t0, 4
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
	li $t0, 30979
	sw $t0, -344($fp)
	addi $t0, $fp, -44
	sw $t0, -348($fp)
	li $t0, 5
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
	li $t0, 44890
	sw $t0, -368($fp)
	addi $t0, $fp, -44
	sw $t0, -372($fp)
	li $t0, 6
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
	li $t0, 57691
	sw $t0, -392($fp)
	addi $t0, $fp, -44
	sw $t0, -396($fp)
	li $t0, 7
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
	li $t0, 23909
	sw $t0, -416($fp)
	addi $t0, $fp, -80
	sw $t0, -420($fp)
	li $t0, 0
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
	li $t0, 2357
	sw $t0, -440($fp)
	addi $t0, $fp, -80
	sw $t0, -444($fp)
	li $t0, 1
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
	li $t0, 17677
	sw $t0, -464($fp)
	addi $t0, $fp, -80
	sw $t0, -468($fp)
	li $t0, 2
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
	li $t0, 45616
	sw $t0, -488($fp)
	addi $t0, $fp, -80
	sw $t0, -492($fp)
	li $t0, 3
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
	li $t0, 33861
	sw $t0, -512($fp)
	addi $t0, $fp, -80
	sw $t0, -516($fp)
	li $t0, 4
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
	li $t0, 6182
	sw $t0, -536($fp)
	addi $t0, $fp, -80
	sw $t0, -540($fp)
	li $t0, 5
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
	li $t0, 39093
	sw $t0, -560($fp)
	addi $t0, $fp, -80
	sw $t0, -564($fp)
	li $t0, 6
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
	li $t0, 12024
	sw $t0, -584($fp)
	addi $t0, $fp, -80
	sw $t0, -588($fp)
	li $t0, 7
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
	li $t0, 173
	sw $t0, -608($fp)
	addi $t0, $fp, -80
	sw $t0, -612($fp)
	li $t0, 8
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
	li $t0, 18943
	sw $t0, -632($fp)
	lw $t0, -632($fp)
	sw $t0, -636($fp)
	lw $t0, -636($fp)
	sw $t0, -640($fp)
	li $t0, 8047
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -652($fp)
	li $t0, 34440
	sw $t0, -656($fp)
	addi $t0, $fp, -88
	sw $t0, -660($fp)
	li $t0, 0
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
	li $t0, 43726
	sw $t0, -680($fp)
	addi $t0, $fp, -88
	sw $t0, -684($fp)
	li $t0, 1
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
	li $t0, 40134
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	li $t0, 61509
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	li $t0, 1904
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	li $t0, 14404
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	addi $t0, $fp, -88
	sw $t0, -752($fp)
	lw $t0, -708($fp)
	sw $t0, -756($fp)
	lw $t0, -708($fp)
	sw $t0, -760($fp)
	lw $t0, -756($fp)
	lw $t1, -760($fp)
	mul $t0, $t0, $t1
	sw $t0, -764($fp)
	li $t0, 4
	lw $t1, -764($fp)
	mul $t0, $t0, $t1
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	lw $t1, -752($fp)
	add $t0, $t0, $t1
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	lw $t1, 0($t0)
	sw $t1, -776($fp)
	lw $t0, -648($fp)
	sw $t0, -780($fp)
	lw $t0, -776($fp)
	lw $t1, -780($fp)
	mul $t0, $t0, $t1
	sw $t0, -784($fp)
	lw $t0, -108($fp)
	sw $t0, -788($fp)
	li $t0, 0
	lw $t1, -788($fp)
	sub $t0, $t0, $t1
	sw $t0, -792($fp)
	lw $t0, -784($fp)
	lw $t1, -792($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -796($fp)
	addi $t0, $fp, -44
	sw $t0, -800($fp)
	li $t0, 0
	sw $t0, -804($fp)
	lw $t0, -108($fp)
	sw $t0, -808($fp)
	lw $t1, -808($fp)
	li $t2, 0
	bne $t1, $t2, label488
	j label487
label487:
	li $t0, 1
	sw $t0, -804($fp)
label488:
	li $t0, 4
	lw $t1, -804($fp)
	mul $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	lw $t1, -800($fp)
	add $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	lw $t1, 0($t0)
	sw $t1, -820($fp)
	lw $t0, -820($fp)
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -824($fp)
	addi $t0, $fp, -88
	sw $t0, -828($fp)
	addi $t0, $fp, -88
	sw $t0, -832($fp)
	lw $t0, -732($fp)
	sw $t0, -836($fp)
	li $t0, 4
	lw $t1, -836($fp)
	mul $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	lw $t1, -832($fp)
	add $t0, $t0, $t1
	sw $t0, -844($fp)
	lw $t0, -844($fp)
	lw $t1, 0($t0)
	sw $t1, -848($fp)
	li $t0, 4
	lw $t1, -848($fp)
	mul $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	lw $t1, -828($fp)
	add $t0, $t0, $t1
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	lw $t1, 0($t0)
	sw $t1, -860($fp)
	addi $t0, $fp, -12
	sw $t0, -864($fp)
	addi $t0, $fp, -44
	sw $t0, -868($fp)
	li $t0, 2
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
	li $t0, 4
	lw $t1, -884($fp)
	mul $t0, $t0, $t1
	sw $t0, -888($fp)
	lw $t0, -888($fp)
	lw $t1, -864($fp)
	add $t0, $t0, $t1
	sw $t0, -892($fp)
	lw $t0, -892($fp)
	lw $t1, 0($t0)
	sw $t1, -896($fp)
	lw $t0, -860($fp)
	lw $t1, -896($fp)
	add $t0, $t0, $t1
	sw $t0, -900($fp)
	li $t0, 0
	sw $t0, -904($fp)
	addi $t0, $fp, -88
	sw $t0, -908($fp)
	li $t0, 1
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
	lw $t0, -708($fp)
	sw $t0, -928($fp)
	lw $t0, -708($fp)
	sw $t0, -932($fp)
	lw $t0, -928($fp)
	lw $t1, -932($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -936($fp)
	lw $t1, -924($fp)
	lw $t2, -936($fp)
	blt $t1, $t2, label489
	j label490
label489:
	li $t0, 1
	sw $t0, -904($fp)
label490:
	lw $t0, -904($fp)
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -940($fp)
	li $t0, 0
	sw $t0, -944($fp)
	li $t0, 0
	sw $t0, -948($fp)
	li $t0, 0
	sw $t0, -952($fp)
	li $t0, 29148
	sw $t0, -956($fp)
	lw $t0, -204($fp)
	sw $t0, -960($fp)
	lw $t0, -956($fp)
	lw $t1, -960($fp)
	add $t0, $t0, $t1
	sw $t0, -964($fp)
	lw $t0, -648($fp)
	sw $t0, -968($fp)
	lw $t1, -964($fp)
	lw $t2, -968($fp)
	bne $t1, $t2, label495
	j label496
label495:
	li $t0, 1
	sw $t0, -952($fp)
label496:
	addi $t0, $fp, -88
	sw $t0, -972($fp)
	li $t0, 0
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
	addi $sp, $sp, -4
	lw $t0, -952($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -988($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -992($fp)
	addi $sp, $sp, 12
	lw $t0, -720($fp)
	sw $t0, -996($fp)
	lw $t1, -992($fp)
	lw $t2, -996($fp)
	beq $t1, $t2, label493
	j label494
label493:
	li $t0, 1
	sw $t0, -948($fp)
label494:
	jal f8
	sw $v0, -1000($fp)
	addi $sp, $sp, 4
	li $t0, 49793
	sw $t0, -1004($fp)
	jal f8
	sw $v0, -1008($fp)
	addi $sp, $sp, 4
	li $t0, 56323
	sw $t0, -1012($fp)
	li $t0, 0
	sw $t0, -1016($fp)
	li $t0, 0
	sw $t0, -1020($fp)
	lw $t0, -168($fp)
	sw $t0, -1024($fp)
	li $t0, 44561
	sw $t0, -1028($fp)
	lw $t1, -1024($fp)
	lw $t2, -1028($fp)
	bne $t1, $t2, label499
	j label500
label499:
	li $t0, 1
	sw $t0, -1020($fp)
label500:
	lw $t0, -636($fp)
	sw $t0, -1032($fp)
	lw $t1, -1020($fp)
	lw $t2, -1032($fp)
	beq $t1, $t2, label497
	j label498
label497:
	li $t0, 1
	sw $t0, -1016($fp)
label498:
	li $t0, 0
	sw $t0, -1036($fp)
	lw $t0, -108($fp)
	sw $t0, -1040($fp)
	lw $t1, -1040($fp)
	li $t2, 0
	bne $t1, $t2, label502
	j label501
label501:
	li $t0, 1
	sw $t0, -1036($fp)
label502:
	li $t0, 59504
	sw $t0, -1044($fp)
	lw $t0, -1036($fp)
	lw $t1, -1044($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1048($fp)
	li $t0, 11363
	sw $t0, -1052($fp)
	addi $sp, $sp, -4
	lw $t0, -1048($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1052($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1056($fp)
	addi $sp, $sp, 12
	li $t0, 42014
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -1064($fp)
	addi $sp, $sp, -4
	lw $t0, -1008($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1012($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1016($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1056($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1064($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1068($fp)
	addi $sp, $sp, 24
	lw $t0, -732($fp)
	sw $t0, -1072($fp)
	li $t0, 0
	lw $t1, -1072($fp)
	sub $t0, $t0, $t1
	sw $t0, -1076($fp)
	addi $sp, $sp, -4
	lw $t0, -948($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1000($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1068($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1076($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1080($fp)
	addi $sp, $sp, 24
	lw $t0, -96($fp)
	sw $t0, -1084($fp)
	lw $t0, -1080($fp)
	lw $t1, -1084($fp)
	mul $t0, $t0, $t1
	sw $t0, -1088($fp)
	li $t0, 0
	lw $t1, -1088($fp)
	sub $t0, $t0, $t1
	sw $t0, -1092($fp)
	lw $t1, -1092($fp)
	li $t2, 0
	bne $t1, $t2, label492
	j label491
label491:
	li $t0, 1
	sw $t0, -944($fp)
label492:
	addi $t0, $fp, -88
	sw $t0, -1096($fp)
	lw $t0, -192($fp)
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
	li $t0, 0
	lw $t1, -1112($fp)
	sub $t0, $t0, $t1
	sw $t0, -1116($fp)
	li $t0, 0
	lw $t1, -1116($fp)
	sub $t0, $t0, $t1
	sw $t0, -1120($fp)
	lw $t0, -944($fp)
	lw $t1, -1120($fp)
	sub $t0, $t0, $t1
	sw $t0, -1124($fp)
	lw $t0, -96($fp)
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -108($fp)
	sw $t0, -1132($fp)
	lw $t0, -1132($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
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
	addi $t0, $fp, -12
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
	lw $t0, -168($fp)
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -1180($fp)
	lw $t0, -1180($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -216($fp)
	sw $t0, -1192($fp)
	lw $t0, -1192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1196($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -1216($fp)
	li $t0, 1
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
	addi $t0, $fp, -44
	sw $t0, -1236($fp)
	li $t0, 2
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
	addi $t0, $fp, -44
	sw $t0, -1256($fp)
	li $t0, 3
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
	addi $t0, $fp, -44
	sw $t0, -1276($fp)
	li $t0, 4
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
	addi $t0, $fp, -44
	sw $t0, -1296($fp)
	li $t0, 5
	sw $t0, -1300($fp)
	li $t0, 4
	lw $t1, -1300($fp)
	mul $t0, $t0, $t1
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	lw $t1, -1296($fp)
	add $t0, $t0, $t1
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	lw $t1, 0($t0)
	sw $t1, -1312($fp)
	lw $t0, -1312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1316($fp)
	li $t0, 6
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
	lw $t0, -1332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -1336($fp)
	li $t0, 7
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
	addi $t0, $fp, -80
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
	addi $t0, $fp, -80
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
	addi $t0, $fp, -80
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
	addi $t0, $fp, -80
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
	addi $t0, $fp, -80
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
	addi $t0, $fp, -80
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
	addi $t0, $fp, -80
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
	addi $t0, $fp, -80
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
	addi $t0, $fp, -80
	sw $t0, -1516($fp)
	li $t0, 8
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
	lw $t0, -636($fp)
	sw $t0, -1536($fp)
	lw $t0, -1536($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -648($fp)
	sw $t0, -1540($fp)
	lw $t0, -1540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -1544($fp)
	li $t0, 0
	sw $t0, -1548($fp)
	li $t0, 4
	lw $t1, -1548($fp)
	mul $t0, $t0, $t1
	sw $t0, -1552($fp)
	lw $t0, -1552($fp)
	lw $t1, -1544($fp)
	add $t0, $t0, $t1
	sw $t0, -1556($fp)
	lw $t0, -1556($fp)
	lw $t1, 0($t0)
	sw $t1, -1560($fp)
	lw $t0, -1560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -88
	sw $t0, -1564($fp)
	li $t0, 1
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
	lw $t0, -1580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -1584($fp)
	lw $t0, -1584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -720($fp)
	sw $t0, -1588($fp)
	lw $t0, -1588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -732($fp)
	sw $t0, -1592($fp)
	lw $t0, -1592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -744($fp)
	sw $t0, -1596($fp)
	lw $t0, -1596($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1600($fp)
	li $t0, 0
	sw $t0, -1604($fp)
	lw $t0, -216($fp)
	sw $t0, -1608($fp)
	lw $t1, -1608($fp)
	li $t2, 0
	bne $t1, $t2, label509
	j label508
label509:
	li $t0, 43879
	sw $t0, -1612($fp)
	lw $t1, -1612($fp)
	li $t2, 0
	bne $t1, $t2, label507
	j label508
label507:
	li $t0, 1
	sw $t0, -1604($fp)
label508:
	li $t0, 0
	sw $t0, -1616($fp)
	li $t0, 64849
	sw $t0, -1620($fp)
	li $t0, 11854
	sw $t0, -1624($fp)
	lw $t0, -1620($fp)
	lw $t1, -1624($fp)
	sub $t0, $t0, $t1
	sw $t0, -1628($fp)
	lw $t1, -1628($fp)
	li $t2, 0
	bne $t1, $t2, label512
	j label511
label512:
	lw $t0, -216($fp)
	sw $t0, -1632($fp)
	lw $t1, -1632($fp)
	li $t2, 0
	bne $t1, $t2, label510
	j label511
label510:
	li $t0, 1
	sw $t0, -1616($fp)
label511:
	li $t0, 43706
	sw $t0, -1636($fp)
	li $t0, 0
	sw $t0, -1640($fp)
	addi $t0, $fp, -12
	sw $t0, -1644($fp)
	li $t0, 0
	sw $t0, -1648($fp)
	li $t0, 4
	lw $t1, -1648($fp)
	mul $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	lw $t1, -1644($fp)
	add $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	lw $t1, 0($t0)
	sw $t1, -1660($fp)
	lw $t1, -1660($fp)
	li $t2, 0
	bne $t1, $t2, label514
	j label513
label513:
	li $t0, 1
	sw $t0, -1640($fp)
label514:
	lw $t0, -108($fp)
	sw $t0, -1664($fp)
	li $t0, 0
	sw $t0, -1668($fp)
	lw $t0, -96($fp)
	sw $t0, -1672($fp)
	li $t0, 31505
	sw $t0, -1676($fp)
	lw $t0, -1672($fp)
	lw $t1, -1676($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1680($fp)
	li $t0, 37524
	sw $t0, -1684($fp)
	lw $t1, -1680($fp)
	lw $t2, -1684($fp)
	beq $t1, $t2, label515
	j label516
label515:
	li $t0, 1
	sw $t0, -1668($fp)
label516:
	addi $t0, $fp, -44
	sw $t0, -1688($fp)
	lw $t0, -204($fp)
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
	addi $sp, $sp, -4
	lw $t0, -1636($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1640($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1668($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1704($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1708($fp)
	addi $sp, $sp, 24
	lw $t0, -204($fp)
	sw $t0, -1712($fp)
	lw $t0, -204($fp)
	sw $t0, -1716($fp)
	lw $t0, -1712($fp)
	lw $t1, -1716($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1720($fp)
	li $t0, 0
	lw $t1, -1720($fp)
	sub $t0, $t0, $t1
	sw $t0, -1724($fp)
	jal f8
	sw $v0, -1728($fp)
	addi $sp, $sp, 4
	addi $sp, $sp, -4
	lw $t0, -1604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1708($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1724($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1728($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1732($fp)
	addi $sp, $sp, 24
	li $t0, 18256
	sw $t0, -1736($fp)
	lw $t0, -1732($fp)
	lw $t1, -1736($fp)
	add $t0, $t0, $t1
	sw $t0, -1740($fp)
	li $t0, 0
	sw $t0, -1744($fp)
	li $t0, 19847
	sw $t0, -1748($fp)
	li $t0, 45676
	sw $t0, -1752($fp)
	lw $t1, -1748($fp)
	lw $t2, -1752($fp)
	bgt $t1, $t2, label517
	j label518
label517:
	li $t0, 1
	sw $t0, -1744($fp)
label518:
	addi $sp, $sp, -4
	lw $t0, -1740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1744($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1756($fp)
	addi $sp, $sp, 12
	lw $t1, -1756($fp)
	li $t2, 0
	bne $t1, $t2, label505
	j label506
label506:
	li $t0, 19901
	sw $t0, -1760($fp)
	lw $t1, -1760($fp)
	li $t2, 0
	bne $t1, $t2, label503
	j label505
label505:
	addi $t0, $fp, -80
	sw $t0, -1764($fp)
	lw $t0, -216($fp)
	sw $t0, -1768($fp)
	lw $t0, -744($fp)
	sw $t0, -1772($fp)
	lw $t0, -1768($fp)
	lw $t1, -1772($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1776($fp)
	lw $t0, -108($fp)
	sw $t0, -1780($fp)
	lw $t0, -1776($fp)
	lw $t1, -1780($fp)
	sub $t0, $t0, $t1
	sw $t0, -1784($fp)
	li $t0, 0
	sw $t0, -1788($fp)
	li $t0, 8757
	sw $t0, -1792($fp)
	lw $t1, -1792($fp)
	li $t2, 0
	bne $t1, $t2, label521
	j label519
label521:
	li $t0, 63887
	sw $t0, -1796($fp)
	lw $t1, -1796($fp)
	li $t2, 0
	bne $t1, $t2, label519
	j label520
label519:
	li $t0, 1
	sw $t0, -1788($fp)
label520:
	lw $t0, -108($fp)
	sw $t0, -1800($fp)
	lw $t0, -96($fp)
	sw $t0, -1804($fp)
	lw $t0, -1800($fp)
	lw $t1, -1804($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1808($fp)
	li $t0, 60036
	sw $t0, -1812($fp)
	lw $t0, -1808($fp)
	lw $t1, -1812($fp)
	sub $t0, $t0, $t1
	sw $t0, -1816($fp)
	li $t0, 61983
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -648($fp)
	lw $t0, -648($fp)
	sw $t0, -1824($fp)
	li $t0, 0
	sw $t0, -1828($fp)
	lw $t0, -204($fp)
	sw $t0, -1832($fp)
	lw $t0, -204($fp)
	sw $t0, -1836($fp)
	lw $t0, -1832($fp)
	lw $t1, -1836($fp)
	sub $t0, $t0, $t1
	sw $t0, -1840($fp)
	li $t0, 12784
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -1848($fp)
	addi $sp, $sp, -4
	lw $t0, -1840($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1848($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1852($fp)
	addi $sp, $sp, 12
	lw $t1, -1852($fp)
	li $t2, 0
	bne $t1, $t2, label522
	j label524
label524:
	lw $t0, -204($fp)
	sw $t0, -1856($fp)
	lw $t1, -1856($fp)
	li $t2, 0
	bne $t1, $t2, label522
	j label523
label522:
	li $t0, 1
	sw $t0, -1828($fp)
label523:
	addi $sp, $sp, -4
	lw $t0, -1784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1824($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1828($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1860($fp)
	addi $sp, $sp, 24
	li $t0, 4
	lw $t1, -1860($fp)
	mul $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	lw $t1, -1764($fp)
	add $t0, $t0, $t1
	sw $t0, -1868($fp)
	lw $t0, -1868($fp)
	lw $t1, 0($t0)
	sw $t1, -1872($fp)
	lw $t1, -1872($fp)
	li $t2, 0
	bne $t1, $t2, label503
	j label504
label503:
	li $t0, 1
	sw $t0, -1600($fp)
label504:
	lw $ra, -4($fp)
	lw $v0, -1600($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -236
	li $t0, 8904
	sw $t0, -16($fp)
	lw $t0, -16($fp)
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	li $t0, 52440
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
	li $t0, 8297
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
	lw $t0, -20($fp)
	sw $t0, -76($fp)
	lw $t0, -76($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -80($fp)
	li $t0, 0
	sw $t0, -84($fp)
	li $t0, 4
	lw $t1, -84($fp)
	mul $t0, $t0, $t1
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	lw $t1, -80($fp)
	add $t0, $t0, $t1
	sw $t0, -92($fp)
	lw $t0, -92($fp)
	lw $t1, 0($t0)
	sw $t1, -96($fp)
	lw $t0, -96($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -100($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -120($fp)
	li $t0, 43114
	sw $t0, -124($fp)
	lw $t0, 4($fp)
	sw $t0, -128($fp)
	lw $t0, -124($fp)
	lw $t1, -128($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -132($fp)
	li $t0, 29337
	sw $t0, -136($fp)
	lw $t0, -132($fp)
	lw $t1, -136($fp)
	sub $t0, $t0, $t1
	sw $t0, -140($fp)
	lw $t0, 8($fp)
	sw $t0, -144($fp)
	addi $sp, $sp, -4
	lw $t0, -140($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -144($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -148($fp)
	addi $sp, $sp, 12
	lw $t1, -148($fp)
	li $t2, 0
	bne $t1, $t2, label526
	j label525
label525:
	li $t0, 1
	sw $t0, -120($fp)
label526:
	li $t0, 0
	sw $t0, -152($fp)
	li $t0, 50312
	sw $t0, -156($fp)
	li $t0, 42222
	sw $t0, -160($fp)
	lw $t0, -156($fp)
	lw $t1, -160($fp)
	sub $t0, $t0, $t1
	sw $t0, -164($fp)
	lw $t0, -20($fp)
	sw $t0, -168($fp)
	li $t0, 0
	lw $t1, -168($fp)
	sub $t0, $t0, $t1
	sw $t0, -172($fp)
	addi $sp, $sp, -4
	lw $t0, -164($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -172($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -176($fp)
	addi $sp, $sp, 12
	lw $t1, -176($fp)
	li $t2, 0
	bne $t1, $t2, label529
	j label528
label529:
	lw $t0, 8($fp)
	sw $t0, -180($fp)
	lw $t1, -180($fp)
	li $t2, 0
	bne $t1, $t2, label527
	j label528
label527:
	li $t0, 1
	sw $t0, -152($fp)
label528:
	li $t0, 0
	sw $t0, -184($fp)
	lw $t0, -20($fp)
	sw $t0, -188($fp)
	lw $t1, -188($fp)
	li $t2, 0
	bne $t1, $t2, label531
	j label532
label532:
	lw $t0, 4($fp)
	sw $t0, -192($fp)
	lw $t1, -192($fp)
	li $t2, 0
	bne $t1, $t2, label530
	j label531
label530:
	li $t0, 1
	sw $t0, -184($fp)
label531:
	li $t0, 0
	sw $t0, -196($fp)
	addi $t0, $fp, -12
	sw $t0, -200($fp)
	li $t0, 0
	sw $t0, -204($fp)
	li $t0, 4
	lw $t1, -204($fp)
	mul $t0, $t0, $t1
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	lw $t1, -200($fp)
	add $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	lw $t1, 0($t0)
	sw $t1, -216($fp)
	lw $t0, 4($fp)
	sw $t0, -220($fp)
	lw $t1, -216($fp)
	lw $t2, -220($fp)
	beq $t1, $t2, label533
	j label534
label533:
	li $t0, 1
	sw $t0, -196($fp)
label534:
	li $t0, 0
	sw $t0, -224($fp)
	lw $t0, 4($fp)
	sw $t0, -228($fp)
	li $t0, 0
	lw $t1, -228($fp)
	sub $t0, $t0, $t1
	sw $t0, -232($fp)
	lw $t1, -232($fp)
	li $t2, 0
	bne $t1, $t2, label537
	j label536
label537:
	lw $t0, 8($fp)
	sw $t0, -236($fp)
	lw $t1, -236($fp)
	li $t2, 0
	bne $t1, $t2, label535
	j label536
label535:
	li $t0, 1
	sw $t0, -224($fp)
label536:
	addi $sp, $sp, -4
	lw $t0, -120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -152($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -196($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -224($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -240($fp)
	addi $sp, $sp, 24
	lw $ra, -4($fp)
	lw $v0, -240($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -856
	li $t0, 33009
	sw $t0, -68($fp)
	addi $t0, $fp, -24
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
	li $t0, 27371
	sw $t0, -92($fp)
	addi $t0, $fp, -24
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
	li $t0, 57029
	sw $t0, -116($fp)
	addi $t0, $fp, -24
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
	li $t0, 54776
	sw $t0, -140($fp)
	addi $t0, $fp, -24
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
	li $t0, 56519
	sw $t0, -164($fp)
	addi $t0, $fp, -24
	sw $t0, -168($fp)
	li $t0, 4
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
	li $t0, 11340
	sw $t0, -188($fp)
	addi $t0, $fp, -64
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
	li $t0, 34916
	sw $t0, -212($fp)
	addi $t0, $fp, -64
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
	li $t0, 22489
	sw $t0, -236($fp)
	addi $t0, $fp, -64
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
	li $t0, 48864
	sw $t0, -260($fp)
	addi $t0, $fp, -64
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
	li $t0, 60672
	sw $t0, -284($fp)
	addi $t0, $fp, -64
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
	li $t0, 22319
	sw $t0, -308($fp)
	addi $t0, $fp, -64
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
	li $t0, 27034
	sw $t0, -332($fp)
	addi $t0, $fp, -64
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
	li $t0, 59986
	sw $t0, -356($fp)
	addi $t0, $fp, -64
	sw $t0, -360($fp)
	li $t0, 7
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
	li $t0, 34174
	sw $t0, -380($fp)
	addi $t0, $fp, -64
	sw $t0, -384($fp)
	li $t0, 8
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
	li $t0, 5377
	sw $t0, -404($fp)
	addi $t0, $fp, -64
	sw $t0, -408($fp)
	li $t0, 9
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
	li $t0, 12706
	sw $t0, -428($fp)
	lw $t0, -428($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	li $t0, 0
	sw $t0, -440($fp)
	li $t0, 54075
	sw $t0, -444($fp)
	lw $t1, -444($fp)
	li $t2, 0
	bne $t1, $t2, label540
	j label539
label540:
	li $t0, 0
	sw $t0, -448($fp)
	li $t0, 18161
	sw $t0, -452($fp)
	li $t0, 9153
	sw $t0, -456($fp)
	lw $t0, -452($fp)
	lw $t1, -456($fp)
	mul $t0, $t0, $t1
	sw $t0, -460($fp)
	lw $t0, -432($fp)
	sw $t0, -464($fp)
	lw $t1, -460($fp)
	lw $t2, -464($fp)
	beq $t1, $t2, label541
	j label542
label541:
	li $t0, 1
	sw $t0, -448($fp)
label542:
	li $t0, 0
	sw $t0, -468($fp)
	lw $t0, -432($fp)
	sw $t0, -472($fp)
	lw $t0, -432($fp)
	sw $t0, -476($fp)
	lw $t1, -472($fp)
	lw $t2, -476($fp)
	bgt $t1, $t2, label543
	j label545
label545:
	lw $t0, -432($fp)
	sw $t0, -480($fp)
	lw $t1, -480($fp)
	li $t2, 0
	bne $t1, $t2, label543
	j label544
label543:
	li $t0, 1
	sw $t0, -468($fp)
label544:
	addi $sp, $sp, -4
	lw $t0, -448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -468($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -484($fp)
	addi $sp, $sp, 12
	lw $t1, -484($fp)
	li $t2, 0
	bne $t1, $t2, label538
	j label539
label538:
	li $t0, 1
	sw $t0, -440($fp)
label539:
	li $t0, 48575
	sw $t0, -488($fp)
	li $t0, 0
	lw $t1, -488($fp)
	sub $t0, $t0, $t1
	sw $t0, -492($fp)
	jal f8
	sw $v0, -496($fp)
	addi $sp, $sp, 4
	li $t0, 26918
	sw $t0, -500($fp)
	lw $t0, -496($fp)
	lw $t1, -500($fp)
	mul $t0, $t0, $t1
	sw $t0, -504($fp)
	addi $t0, $fp, -24
	sw $t0, -508($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -528($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -548($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -568($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -588($fp)
	li $t0, 4
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
	addi $t0, $fp, -64
	sw $t0, -608($fp)
	li $t0, 0
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
	addi $t0, $fp, -64
	sw $t0, -628($fp)
	li $t0, 1
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
	addi $t0, $fp, -64
	sw $t0, -648($fp)
	li $t0, 2
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
	addi $t0, $fp, -64
	sw $t0, -668($fp)
	li $t0, 3
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
	addi $t0, $fp, -64
	sw $t0, -688($fp)
	li $t0, 4
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
	addi $t0, $fp, -64
	sw $t0, -708($fp)
	li $t0, 5
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
	addi $t0, $fp, -64
	sw $t0, -728($fp)
	li $t0, 6
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
	addi $t0, $fp, -64
	sw $t0, -748($fp)
	li $t0, 7
	sw $t0, -752($fp)
	li $t0, 4
	lw $t1, -752($fp)
	mul $t0, $t0, $t1
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	lw $t1, -748($fp)
	add $t0, $t0, $t1
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	lw $t1, 0($t0)
	sw $t1, -764($fp)
	lw $t0, -764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -768($fp)
	li $t0, 8
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
	lw $t0, -784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -788($fp)
	li $t0, 9
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
	lw $t0, -432($fp)
	sw $t0, -808($fp)
	lw $t0, -808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -64
	sw $t0, -812($fp)
	addi $t0, $fp, -24
	sw $t0, -816($fp)
	lw $t0, -432($fp)
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
	li $t0, 4
	lw $t1, -832($fp)
	mul $t0, $t0, $t1
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	lw $t1, -812($fp)
	add $t0, $t0, $t1
	sw $t0, -840($fp)
	lw $t0, -840($fp)
	lw $t1, 0($t0)
	sw $t1, -844($fp)
	li $t0, 7504
	sw $t0, -848($fp)
	li $t0, 0
	lw $t1, -848($fp)
	sub $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t0, -844($fp)
	lw $t1, -852($fp)
	mul $t0, $t0, $t1
	sw $t0, -856($fp)
	li $t0, 0
	lw $t1, -856($fp)
	sub $t0, $t0, $t1
	sw $t0, -860($fp)
	lw $ra, -4($fp)
	lw $v0, -860($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -2936
	li $t0, 57479
	sw $t0, -84($fp)
	lw $t0, -84($fp)
	sw $t0, -88($fp)
	lw $t0, -88($fp)
	sw $t0, -92($fp)
	li $t0, 13823
	sw $t0, -96($fp)
	addi $t0, $fp, -32
	sw $t0, -100($fp)
	li $t0, 0
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
	li $t0, 15802
	sw $t0, -120($fp)
	addi $t0, $fp, -32
	sw $t0, -124($fp)
	li $t0, 1
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
	li $t0, 22802
	sw $t0, -144($fp)
	addi $t0, $fp, -32
	sw $t0, -148($fp)
	li $t0, 2
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
	li $t0, 62969
	sw $t0, -168($fp)
	addi $t0, $fp, -32
	sw $t0, -172($fp)
	li $t0, 3
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
	li $t0, 578
	sw $t0, -192($fp)
	addi $t0, $fp, -32
	sw $t0, -196($fp)
	li $t0, 4
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
	li $t0, 65024
	sw $t0, -216($fp)
	addi $t0, $fp, -32
	sw $t0, -220($fp)
	li $t0, 5
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
	li $t0, 40547
	sw $t0, -240($fp)
	addi $t0, $fp, -32
	sw $t0, -244($fp)
	li $t0, 6
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
	li $t0, 29915
	sw $t0, -264($fp)
	lw $t0, -264($fp)
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	li $t0, 32498
	sw $t0, -276($fp)
	lw $t0, -276($fp)
	sw $t0, -280($fp)
	lw $t0, -280($fp)
	sw $t0, -284($fp)
	li $t0, 2382
	sw $t0, -288($fp)
	lw $t0, -288($fp)
	sw $t0, -292($fp)
	lw $t0, -292($fp)
	sw $t0, -296($fp)
	li $t0, 21408
	sw $t0, -300($fp)
	addi $t0, $fp, -72
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
	li $t0, 21738
	sw $t0, -324($fp)
	addi $t0, $fp, -72
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
	li $t0, 58902
	sw $t0, -348($fp)
	addi $t0, $fp, -72
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
	li $t0, 32748
	sw $t0, -372($fp)
	addi $t0, $fp, -72
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
	li $t0, 56654
	sw $t0, -396($fp)
	addi $t0, $fp, -72
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
	li $t0, 15855
	sw $t0, -420($fp)
	addi $t0, $fp, -72
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
	li $t0, 16076
	sw $t0, -444($fp)
	addi $t0, $fp, -72
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
	li $t0, 51790
	sw $t0, -468($fp)
	addi $t0, $fp, -72
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
	li $t0, 38174
	sw $t0, -492($fp)
	addi $t0, $fp, -72
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
	li $t0, 43110
	sw $t0, -516($fp)
	addi $t0, $fp, -72
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
	li $t0, 46240
	sw $t0, -540($fp)
	lw $t0, -540($fp)
	sw $t0, -544($fp)
	lw $t0, -544($fp)
	sw $t0, -548($fp)
	li $t0, 6812
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	sw $t0, -560($fp)
	li $t0, 48487
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	sw $t0, -572($fp)
	li $t0, 58947
	sw $t0, -576($fp)
	lw $t0, -576($fp)
	sw $t0, -580($fp)
	lw $t0, -580($fp)
	sw $t0, -584($fp)
	li $t0, 60888
	sw $t0, -588($fp)
	lw $t0, -588($fp)
	sw $t0, -592($fp)
	lw $t0, -592($fp)
	sw $t0, -596($fp)
	li $t0, 1113
	sw $t0, -600($fp)
	lw $t0, -600($fp)
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -608($fp)
	li $t0, 2564
	sw $t0, -612($fp)
	addi $t0, $fp, -80
	sw $t0, -616($fp)
	li $t0, 0
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
	li $t0, 43927
	sw $t0, -636($fp)
	addi $t0, $fp, -80
	sw $t0, -640($fp)
	li $t0, 1
	sw $t0, -644($fp)
	lw $t0, -644($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -648($fp)
	lw $t0, -640($fp)
	lw $t1, -648($fp)
	add $t0, $t0, $t1
	sw $t0, -652($fp)
	lw $t0, -636($fp)
	lw $t1, -652($fp)
	sw $t0, 0($t1)
	lw $t0, -652($fp)
	lw $t1, 0($t0)
	sw $t1, -656($fp)
	li $t0, 28031
	sw $t0, -660($fp)
	lw $t0, -660($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -668($fp)
	li $t0, 10069
	sw $t0, -672($fp)
	lw $t0, -672($fp)
	sw $t0, -676($fp)
	lw $t0, -676($fp)
	sw $t0, -680($fp)
	li $t0, 35871
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	lw $t0, -688($fp)
	sw $t0, -692($fp)
	li $t0, 41854
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	lw $t0, -700($fp)
	sw $t0, -704($fp)
	li $t0, 25871
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -716($fp)
	lw $t0, -88($fp)
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -724($fp)
	li $t0, 0
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
	lw $t0, -740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -744($fp)
	li $t0, 1
	sw $t0, -748($fp)
	li $t0, 4
	lw $t1, -748($fp)
	mul $t0, $t0, $t1
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	lw $t1, -744($fp)
	add $t0, $t0, $t1
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	lw $t1, 0($t0)
	sw $t1, -760($fp)
	lw $t0, -760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -764($fp)
	li $t0, 2
	sw $t0, -768($fp)
	li $t0, 4
	lw $t1, -768($fp)
	mul $t0, $t0, $t1
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	lw $t1, -764($fp)
	add $t0, $t0, $t1
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	lw $t1, 0($t0)
	sw $t1, -780($fp)
	lw $t0, -780($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -784($fp)
	li $t0, 3
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
	lw $t0, -800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -804($fp)
	li $t0, 4
	sw $t0, -808($fp)
	li $t0, 4
	lw $t1, -808($fp)
	mul $t0, $t0, $t1
	sw $t0, -812($fp)
	lw $t0, -812($fp)
	lw $t1, -804($fp)
	add $t0, $t0, $t1
	sw $t0, -816($fp)
	lw $t0, -816($fp)
	lw $t1, 0($t0)
	sw $t1, -820($fp)
	lw $t0, -820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -824($fp)
	li $t0, 5
	sw $t0, -828($fp)
	li $t0, 4
	lw $t1, -828($fp)
	mul $t0, $t0, $t1
	sw $t0, -832($fp)
	lw $t0, -832($fp)
	lw $t1, -824($fp)
	add $t0, $t0, $t1
	sw $t0, -836($fp)
	lw $t0, -836($fp)
	lw $t1, 0($t0)
	sw $t1, -840($fp)
	lw $t0, -840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -844($fp)
	li $t0, 6
	sw $t0, -848($fp)
	li $t0, 4
	lw $t1, -848($fp)
	mul $t0, $t0, $t1
	sw $t0, -852($fp)
	lw $t0, -852($fp)
	lw $t1, -844($fp)
	add $t0, $t0, $t1
	sw $t0, -856($fp)
	lw $t0, -856($fp)
	lw $t1, 0($t0)
	sw $t1, -860($fp)
	lw $t0, -860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -268($fp)
	sw $t0, -864($fp)
	lw $t0, -864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -868($fp)
	lw $t0, -868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -292($fp)
	sw $t0, -872($fp)
	lw $t0, -872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -876($fp)
	li $t0, 0
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
	addi $t0, $fp, -72
	sw $t0, -896($fp)
	li $t0, 1
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
	addi $t0, $fp, -72
	sw $t0, -916($fp)
	li $t0, 2
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
	addi $t0, $fp, -72
	sw $t0, -936($fp)
	li $t0, 3
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
	addi $t0, $fp, -72
	sw $t0, -956($fp)
	li $t0, 4
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
	addi $t0, $fp, -72
	sw $t0, -976($fp)
	li $t0, 5
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
	addi $t0, $fp, -72
	sw $t0, -996($fp)
	li $t0, 6
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
	addi $t0, $fp, -72
	sw $t0, -1016($fp)
	li $t0, 7
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
	addi $t0, $fp, -72
	sw $t0, -1036($fp)
	li $t0, 8
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
	addi $t0, $fp, -72
	sw $t0, -1056($fp)
	li $t0, 9
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
	lw $t0, -544($fp)
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -556($fp)
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -568($fp)
	sw $t0, -1084($fp)
	lw $t0, -1084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -580($fp)
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -592($fp)
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -604($fp)
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1100($fp)
	li $t0, 0
	sw $t0, -1104($fp)
	li $t0, 4
	lw $t1, -1104($fp)
	mul $t0, $t0, $t1
	sw $t0, -1108($fp)
	lw $t0, -1108($fp)
	lw $t1, -1100($fp)
	add $t0, $t0, $t1
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	lw $t1, 0($t0)
	sw $t1, -1116($fp)
	lw $t0, -1116($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -1120($fp)
	li $t0, 1
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
	lw $t0, -1136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -664($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -1144($fp)
	lw $t0, -1144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -1160($fp)
	li $t0, 0
	sw $t0, -1164($fp)
	lw $t0, -280($fp)
	sw $t0, -1168($fp)
	lw $t1, -1168($fp)
	li $t2, 0
	bne $t1, $t2, label547
	j label546
label546:
	li $t0, 1
	sw $t0, -1164($fp)
label547:
	lw $t0, -1160($fp)
	lw $t1, -1164($fp)
	sub $t0, $t0, $t1
	sw $t0, -1172($fp)
	lw $t0, -676($fp)
	sw $t0, -1176($fp)
	lw $t0, -1172($fp)
	lw $t1, -1176($fp)
	sub $t0, $t0, $t1
	sw $t0, -1180($fp)
	lw $ra, -4($fp)
	lw $v0, -1180($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 58673
	sw $t0, -1216($fp)
	addi $t0, $fp, -1212
	sw $t0, -1220($fp)
	li $t0, 0
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
	li $t0, 39287
	sw $t0, -1240($fp)
	addi $t0, $fp, -1212
	sw $t0, -1244($fp)
	li $t0, 1
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
	li $t0, 26449
	sw $t0, -1264($fp)
	addi $t0, $fp, -1212
	sw $t0, -1268($fp)
	li $t0, 2
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
	li $t0, 58162
	sw $t0, -1288($fp)
	addi $t0, $fp, -1212
	sw $t0, -1292($fp)
	li $t0, 3
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
	li $t0, 14298
	sw $t0, -1312($fp)
	addi $t0, $fp, -1212
	sw $t0, -1316($fp)
	li $t0, 4
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
	li $t0, 56364
	sw $t0, -1336($fp)
	addi $t0, $fp, -1212
	sw $t0, -1340($fp)
	li $t0, 5
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
	li $t0, 25124
	sw $t0, -1360($fp)
	addi $t0, $fp, -1212
	sw $t0, -1364($fp)
	li $t0, 6
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
	li $t0, 16681
	sw $t0, -1384($fp)
	addi $t0, $fp, -1212
	sw $t0, -1388($fp)
	li $t0, 7
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
	li $t0, 12236
	sw $t0, -1408($fp)
	lw $t0, -1408($fp)
	sw $t0, -1412($fp)
	lw $t0, -1412($fp)
	sw $t0, -1416($fp)
	li $t0, 46862
	sw $t0, -1420($fp)
	lw $t0, -1420($fp)
	sw $t0, -1424($fp)
	lw $t0, -1424($fp)
	sw $t0, -1428($fp)
	lw $t0, -676($fp)
	sw $t0, -1432($fp)
	lw $t0, -1424($fp)
	sw $t0, -1436($fp)
	lw $t0, -1436($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -1440($fp)
	lw $t0, -1440($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -1444($fp)
	li $t0, 0
	sw $t0, -1448($fp)
	li $t0, 0
	sw $t0, -1452($fp)
	addi $t0, $fp, -72
	sw $t0, -1456($fp)
	li $t0, 8
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
	lw $t1, -1472($fp)
	li $t2, 0
	bne $t1, $t2, label552
	j label551
label551:
	li $t0, 1
	sw $t0, -1452($fp)
label552:
	li $t0, 37980
	sw $t0, -1476($fp)
	lw $t0, -1452($fp)
	lw $t1, -1476($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1480($fp)
	lw $t0, 16($fp)
	sw $t0, -1484($fp)
	lw $t0, -1480($fp)
	lw $t1, -1484($fp)
	add $t0, $t0, $t1
	sw $t0, -1488($fp)
	lw $t1, -1488($fp)
	li $t2, 0
	bne $t1, $t2, label550
	j label549
label550:
	lw $t0, -1412($fp)
	sw $t0, -1492($fp)
	lw $t1, -1492($fp)
	li $t2, 0
	bne $t1, $t2, label548
	j label549
label548:
	li $t0, 1
	sw $t0, -1448($fp)
label549:
	li $t0, 0
	sw $t0, -1496($fp)
	li $t0, 0
	sw $t0, -1500($fp)
	li $t0, 4939
	sw $t0, -1504($fp)
	lw $t0, -688($fp)
	sw $t0, -1508($fp)
	lw $t1, -1504($fp)
	lw $t2, -1508($fp)
	ble $t1, $t2, label556
	j label557
label556:
	li $t0, 1
	sw $t0, -1500($fp)
label557:
	li $t0, 0
	sw $t0, -1512($fp)
	li $t0, 0
	sw $t0, -1516($fp)
	lw $t0, -688($fp)
	sw $t0, -1520($fp)
	lw $t0, -556($fp)
	sw $t0, -1524($fp)
	lw $t1, -1520($fp)
	lw $t2, -1524($fp)
	bgt $t1, $t2, label560
	j label561
label560:
	li $t0, 1
	sw $t0, -1516($fp)
label561:
	lw $t0, -556($fp)
	sw $t0, -1528($fp)
	lw $t1, -1516($fp)
	lw $t2, -1528($fp)
	beq $t1, $t2, label558
	j label559
label558:
	li $t0, 1
	sw $t0, -1512($fp)
label559:
	li $t0, 0
	sw $t0, -1532($fp)
	li $t0, 0
	sw $t0, -1536($fp)
	li $t0, 64076
	sw $t0, -1540($fp)
	lw $t0, -688($fp)
	sw $t0, -1544($fp)
	lw $t1, -1540($fp)
	lw $t2, -1544($fp)
	blt $t1, $t2, label564
	j label565
label564:
	li $t0, 1
	sw $t0, -1536($fp)
label565:
	li $t0, 38634
	sw $t0, -1548($fp)
	lw $t1, -1536($fp)
	lw $t2, -1548($fp)
	beq $t1, $t2, label562
	j label563
label562:
	li $t0, 1
	sw $t0, -1532($fp)
label563:
	addi $t0, $fp, -72
	sw $t0, -1552($fp)
	lw $t0, -700($fp)
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
	li $t0, 24234
	sw $t0, -1572($fp)
	lw $t0, -1568($fp)
	lw $t1, -1572($fp)
	add $t0, $t0, $t1
	sw $t0, -1576($fp)
	li $t0, 0
	sw $t0, -1580($fp)
	li $t0, 25902
	sw $t0, -1584($fp)
	li $t0, 61060
	sw $t0, -1588($fp)
	lw $t0, -1584($fp)
	lw $t1, -1588($fp)
	mul $t0, $t0, $t1
	sw $t0, -1592($fp)
	lw $t1, -1592($fp)
	li $t2, 0
	bne $t1, $t2, label568
	j label567
label568:
	lw $t0, -712($fp)
	sw $t0, -1596($fp)
	lw $t1, -1596($fp)
	li $t2, 0
	bne $t1, $t2, label566
	j label567
label566:
	li $t0, 1
	sw $t0, -1580($fp)
label567:
	addi $sp, $sp, -4
	lw $t0, -1500($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1576($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1580($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1600($fp)
	addi $sp, $sp, 24
	li $t0, 5353
	sw $t0, -1604($fp)
	lw $t0, -1600($fp)
	lw $t1, -1604($fp)
	mul $t0, $t0, $t1
	sw $t0, -1608($fp)
	li $t0, 0
	lw $t1, -1608($fp)
	sub $t0, $t0, $t1
	sw $t0, -1612($fp)
	lw $t1, -1612($fp)
	li $t2, 0
	bne $t1, $t2, label553
	j label555
label555:
	lw $t0, -580($fp)
	sw $t0, -1616($fp)
	li $t0, 0
	sw $t0, -1620($fp)
	li $t0, 21585
	sw $t0, -1624($fp)
	li $t0, 63886
	sw $t0, -1628($fp)
	lw $t1, -1624($fp)
	lw $t2, -1628($fp)
	bge $t1, $t2, label569
	j label570
label569:
	li $t0, 1
	sw $t0, -1620($fp)
label570:
	lw $t1, -1616($fp)
	lw $t2, -1620($fp)
	bne $t1, $t2, label553
	j label554
label553:
	li $t0, 1
	sw $t0, -1496($fp)
label554:
	addi $t0, $fp, -80
	sw $t0, -1632($fp)
	lw $t0, -1424($fp)
	sw $t0, -1636($fp)
	lw $t0, -556($fp)
	sw $t0, -1640($fp)
	lw $t0, -1636($fp)
	lw $t1, -1640($fp)
	add $t0, $t0, $t1
	sw $t0, -1644($fp)
	lw $t0, -688($fp)
	sw $t0, -1648($fp)
	lw $t0, -1644($fp)
	lw $t1, -1648($fp)
	sub $t0, $t0, $t1
	sw $t0, -1652($fp)
	li $t0, 4
	lw $t1, -1652($fp)
	mul $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	lw $t1, -1632($fp)
	add $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $t0, -1660($fp)
	lw $t1, 0($t0)
	sw $t1, -1664($fp)
	li $t0, 0
	sw $t0, -1668($fp)
	addi $t0, $fp, -1212
	sw $t0, -1672($fp)
	li $t0, 0
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
	addi $t0, $fp, -72
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
	li $t0, 44632
	sw $t0, -1712($fp)
	lw $t0, -1712($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -1716($fp)
	li $t0, 705
	sw $t0, -1720($fp)
	li $t0, 22698
	sw $t0, -1724($fp)
	lw $t0, -1720($fp)
	lw $t1, -1724($fp)
	add $t0, $t0, $t1
	sw $t0, -1728($fp)
	li $t0, 914
	sw $t0, -1732($fp)
	lw $t0, -1728($fp)
	lw $t1, -1732($fp)
	sub $t0, $t0, $t1
	sw $t0, -1736($fp)
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
	lw $t0, -1736($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -1740($fp)
	addi $sp, $sp, 20
	lw $t1, -1740($fp)
	li $t2, 0
	bne $t1, $t2, label572
	j label571
label571:
	li $t0, 1
	sw $t0, -1668($fp)
label572:
	lw $t0, -1664($fp)
	lw $t1, -1668($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1744($fp)
	li $t0, 0
	sw $t0, -1748($fp)
	li $t0, 0
	sw $t0, -1752($fp)
	lw $t0, -688($fp)
	sw $t0, -1756($fp)
	li $t0, 0
	lw $t1, -1756($fp)
	sub $t0, $t0, $t1
	sw $t0, -1760($fp)
	lw $t1, -1760($fp)
	li $t2, 0
	bne $t1, $t2, label575
	j label577
label577:
	lw $t0, -88($fp)
	sw $t0, -1764($fp)
	lw $t1, -1764($fp)
	li $t2, 0
	bne $t1, $t2, label575
	j label576
label575:
	li $t0, 1
	sw $t0, -1752($fp)
label576:
	li $t0, 731
	sw $t0, -1768($fp)
	lw $t0, -1768($fp)
	sw $t0, -664($fp)
	lw $t0, -664($fp)
	sw $t0, -1772($fp)
	lw $t0, -592($fp)
	sw $t0, -1776($fp)
	li $t0, 800
	sw $t0, -1780($fp)
	lw $t0, -1776($fp)
	lw $t1, -1780($fp)
	mul $t0, $t0, $t1
	sw $t0, -1784($fp)
	li $t0, 63303
	sw $t0, -1788($fp)
	lw $t0, -1784($fp)
	lw $t1, -1788($fp)
	add $t0, $t0, $t1
	sw $t0, -1792($fp)
	li $t0, 0
	sw $t0, -1796($fp)
	lw $t0, -688($fp)
	sw $t0, -1800($fp)
	lw $t1, -1800($fp)
	li $t2, 0
	bne $t1, $t2, label579
	j label578
label578:
	li $t0, 1
	sw $t0, -1796($fp)
label579:
	li $t0, 8105
	sw $t0, -1804($fp)
	lw $t0, -1796($fp)
	lw $t1, -1804($fp)
	sub $t0, $t0, $t1
	sw $t0, -1808($fp)
	lw $t0, -1424($fp)
	sw $t0, -1812($fp)
	addi $sp, $sp, -4
	lw $t0, -1808($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1812($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1816($fp)
	addi $sp, $sp, 12
	li $t0, 36854
	sw $t0, -1820($fp)
	lw $t0, -1820($fp)
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	sw $t0, -1824($fp)
	addi $sp, $sp, -4
	lw $t0, -1752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1772($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1824($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1828($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -32
	sw $t0, -1832($fp)
	li $t0, 3
	sw $t0, -1836($fp)
	li $t0, 4
	lw $t1, -1836($fp)
	mul $t0, $t0, $t1
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	lw $t1, -1832($fp)
	add $t0, $t0, $t1
	sw $t0, -1844($fp)
	lw $t0, -1844($fp)
	lw $t1, 0($t0)
	sw $t1, -1848($fp)
	lw $t0, -1828($fp)
	lw $t1, -1848($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1852($fp)
	jal f8
	sw $v0, -1856($fp)
	addi $sp, $sp, 4
	lw $t0, -1852($fp)
	lw $t1, -1856($fp)
	mul $t0, $t0, $t1
	sw $t0, -1860($fp)
	li $t0, 0
	sw $t0, -1864($fp)
	li $t0, 25855
	sw $t0, -1868($fp)
	lw $t1, -1868($fp)
	li $t2, 0
	bne $t1, $t2, label580
	j label581
label580:
	li $t0, 1
	sw $t0, -1864($fp)
label581:
	li $t0, 0
	lw $t1, -1864($fp)
	sub $t0, $t0, $t1
	sw $t0, -1872($fp)
	lw $t1, -1860($fp)
	lw $t2, -1872($fp)
	bne $t1, $t2, label573
	j label574
label573:
	li $t0, 1
	sw $t0, -1748($fp)
label574:
label582:
	li $t0, 0
	sw $t0, -1876($fp)
	addi $t0, $fp, -72
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
	li $t0, 0
	lw $t1, -1896($fp)
	sub $t0, $t0, $t1
	sw $t0, -1900($fp)
	lw $t1, -1900($fp)
	li $t2, 0
	bne $t1, $t2, label586
	j label585
label585:
	li $t0, 1
	sw $t0, -1876($fp)
label586:
	li $t0, 0
	sw $t0, -1904($fp)
	li $t0, 7181
	sw $t0, -1908($fp)
	lw $t1, -1908($fp)
	li $t2, 0
	bne $t1, $t2, label588
	j label587
label587:
	li $t0, 1
	sw $t0, -1904($fp)
label588:
	lw $t0, -88($fp)
	sw $t0, -1912($fp)
	lw $t0, -1904($fp)
	lw $t1, -1912($fp)
	add $t0, $t0, $t1
	sw $t0, -1916($fp)
	addi $t0, $fp, -32
	sw $t0, -1920($fp)
	lw $t0, -268($fp)
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
	lw $t0, -1916($fp)
	lw $t1, -1936($fp)
	add $t0, $t0, $t1
	sw $t0, -1940($fp)
	lw $t1, -1876($fp)
	lw $t2, -1940($fp)
	bge $t1, $t2, label583
	j label584
label583:
	lw $t0, -568($fp)
	sw $t0, -1944($fp)
	lw $t1, -1944($fp)
	li $t2, 0
	bne $t1, $t2, label590
	j label589
label589:
label592:
	li $t0, 0
	sw $t0, -1948($fp)
	lw $t0, -292($fp)
	sw $t0, -1952($fp)
	lw $t1, -1952($fp)
	li $t2, 0
	bne $t1, $t2, label596
	j label595
label595:
	li $t0, 1
	sw $t0, -1948($fp)
label596:
	addi $t0, $fp, -72
	sw $t0, -1956($fp)
	lw $t0, -268($fp)
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
	lw $t0, -1948($fp)
	lw $t1, -1972($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1976($fp)
	lw $t0, -676($fp)
	sw $t0, -1980($fp)
	addi $t0, $fp, -72
	sw $t0, -1984($fp)
	lw $t0, -544($fp)
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
	lw $t0, -1980($fp)
	lw $t1, -2000($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2004($fp)
	lw $t1, -1976($fp)
	lw $t2, -2004($fp)
	beq $t1, $t2, label593
	j label594
label593:
	li $t0, 0
	sw $t0, -2008($fp)
	li $t0, 0
	sw $t0, -2012($fp)
	li $t0, 0
	sw $t0, -2016($fp)
	li $t0, 41826
	sw $t0, -2020($fp)
	lw $t1, -2020($fp)
	li $t2, 0
	bne $t1, $t2, label601
	j label602
label601:
	li $t0, 1
	sw $t0, -2016($fp)
label602:
	li $t0, 45162
	sw $t0, -2024($fp)
	lw $t0, -2016($fp)
	lw $t1, -2024($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2028($fp)
	li $t0, 2192
	sw $t0, -2032($fp)
	lw $t1, -2028($fp)
	lw $t2, -2032($fp)
	blt $t1, $t2, label599
	j label600
label599:
	li $t0, 1
	sw $t0, -2012($fp)
label600:
	lw $t0, 8($fp)
	sw $t0, -2036($fp)
	lw $t1, -2012($fp)
	lw $t2, -2036($fp)
	blt $t1, $t2, label597
	j label598
label597:
	li $t0, 1
	sw $t0, -2008($fp)
label598:
	lw $ra, -4($fp)
	lw $v0, -2008($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label592
label594:
	j label591
label590:
	li $t0, 0
	sw $t0, -2040($fp)
	lw $t0, -688($fp)
	sw $t0, -2044($fp)
	lw $t1, -2044($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label605
label605:
	lw $t0, -664($fp)
	sw $t0, -2048($fp)
	lw $t1, -2048($fp)
	li $t2, 0
	bne $t1, $t2, label603
	j label604
label603:
	li $t0, 1
	sw $t0, -2040($fp)
label604:
	lw $ra, -4($fp)
	lw $v0, -2040($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label591:
	j label582
label584:
	li $t0, 41339
	sw $t0, -2052($fp)
	lw $ra, -4($fp)
	lw $v0, -2052($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 3859
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	sw $t0, -2060($fp)
	lw $t0, -2060($fp)
	sw $t0, -2064($fp)
	lw $t0, -2060($fp)
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	jal f8
	sw $v0, -2072($fp)
	addi $sp, $sp, 4
	lw $ra, -4($fp)
	lw $v0, -2072($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -2076($fp)
	li $t0, 0
	sw $t0, -2080($fp)
	lw $t0, 12($fp)
	sw $t0, -2084($fp)
	lw $t1, -2084($fp)
	li $t2, 0
	bne $t1, $t2, label612
	j label611
label611:
	li $t0, 1
	sw $t0, -2080($fp)
label612:
	li $t0, 0
	sw $t0, -2088($fp)
	lw $t0, 4($fp)
	sw $t0, -2092($fp)
	lw $t0, -580($fp)
	sw $t0, -2096($fp)
	lw $t1, -2092($fp)
	lw $t2, -2096($fp)
	bgt $t1, $t2, label613
	j label614
label613:
	li $t0, 1
	sw $t0, -2088($fp)
label614:
	lw $t1, -2080($fp)
	lw $t2, -2088($fp)
	bne $t1, $t2, label609
	j label610
label609:
	li $t0, 1
	sw $t0, -2076($fp)
label610:
	lw $t0, -2076($fp)
	sw $t0, -712($fp)
	lw $t0, -712($fp)
	sw $t0, -2100($fp)
	lw $t1, -2100($fp)
	li $t2, 0
	bne $t1, $t2, label606
	j label607
label606:
	jal f8
	sw $v0, -2104($fp)
	addi $sp, $sp, 4
	li $t0, 36023
	sw $t0, -2108($fp)
	lw $t0, -604($fp)
	sw $t0, -2112($fp)
	lw $t0, -2108($fp)
	lw $t1, -2112($fp)
	add $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t0, -268($fp)
	sw $t0, -2120($fp)
	lw $t0, -2116($fp)
	lw $t1, -2120($fp)
	sub $t0, $t0, $t1
	sw $t0, -2124($fp)
	addi $t0, $fp, -72
	sw $t0, -2128($fp)
	lw $t0, -556($fp)
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
	li $t0, 0
	sw $t0, -2148($fp)
	li $t0, 14437
	sw $t0, -2152($fp)
	li $t0, 8798
	sw $t0, -2156($fp)
	lw $t0, -2152($fp)
	lw $t1, -2156($fp)
	add $t0, $t0, $t1
	sw $t0, -2160($fp)
	li $t0, 6086
	sw $t0, -2164($fp)
	lw $t1, -2160($fp)
	lw $t2, -2164($fp)
	beq $t1, $t2, label615
	j label616
label615:
	li $t0, 1
	sw $t0, -2148($fp)
label616:
	li $t0, 733
	sw $t0, -2168($fp)
	li $t0, 0
	lw $t1, -2168($fp)
	sub $t0, $t0, $t1
	sw $t0, -2172($fp)
	li $t0, 0
	lw $t1, -2172($fp)
	sub $t0, $t0, $t1
	sw $t0, -2176($fp)
	addi $sp, $sp, -4
	lw $t0, -2104($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2124($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2144($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2148($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2176($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2180($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -80
	sw $t0, -2184($fp)
	li $t0, 0
	sw $t0, -2188($fp)
	lw $t0, -712($fp)
	sw $t0, -2192($fp)
	lw $t1, -2192($fp)
	li $t2, 0
	bne $t1, $t2, label618
	j label617
label617:
	li $t0, 1
	sw $t0, -2188($fp)
label618:
	li $t0, 4
	lw $t1, -2188($fp)
	mul $t0, $t0, $t1
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	lw $t1, -2184($fp)
	add $t0, $t0, $t1
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	lw $t1, 0($t0)
	sw $t1, -2204($fp)
	lw $t0, -2180($fp)
	lw $t1, -2204($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2208($fp)
	lw $ra, -4($fp)
	lw $v0, -2208($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label608
label607:
	lw $t0, -688($fp)
	sw $t0, -2212($fp)
	lw $t0, -2060($fp)
	sw $t0, -2216($fp)
	lw $t0, -2212($fp)
	lw $t1, -2216($fp)
	mul $t0, $t0, $t1
	sw $t0, -2220($fp)
	addi $t0, $fp, -72
	sw $t0, -2224($fp)
	li $t0, 9
	sw $t0, -2228($fp)
	li $t0, 4
	lw $t1, -2228($fp)
	mul $t0, $t0, $t1
	sw $t0, -2232($fp)
	lw $t0, -2232($fp)
	lw $t1, -2224($fp)
	add $t0, $t0, $t1
	sw $t0, -2236($fp)
	lw $t0, -2236($fp)
	lw $t1, 0($t0)
	sw $t1, -2240($fp)
	lw $t0, -2220($fp)
	lw $t1, -2240($fp)
	mul $t0, $t0, $t1
	sw $t0, -2244($fp)
	lw $t0, -592($fp)
	sw $t0, -2248($fp)
	lw $t0, -2244($fp)
	lw $t1, -2248($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2252($fp)
label608:
	li $t0, 0
	sw $t0, -2256($fp)
	lw $t0, -604($fp)
	sw $t0, -2260($fp)
	lw $t0, -688($fp)
	sw $t0, -2264($fp)
	li $t0, 0
	lw $t1, -2264($fp)
	sub $t0, $t0, $t1
	sw $t0, -2268($fp)
	lw $t1, -2260($fp)
	lw $t2, -2268($fp)
	bgt $t1, $t2, label619
	j label620
label619:
	li $t0, 1
	sw $t0, -2256($fp)
label620:
	li $t0, 0
	sw $t0, -2272($fp)
	lw $t0, -604($fp)
	sw $t0, -2276($fp)
	addi $t0, $fp, -72
	sw $t0, -2280($fp)
	li $t0, 3
	sw $t0, -2284($fp)
	li $t0, 4
	lw $t1, -2284($fp)
	mul $t0, $t0, $t1
	sw $t0, -2288($fp)
	lw $t0, -2288($fp)
	lw $t1, -2280($fp)
	add $t0, $t0, $t1
	sw $t0, -2292($fp)
	lw $t0, -2292($fp)
	lw $t1, 0($t0)
	sw $t1, -2296($fp)
	li $t0, 0
	lw $t1, -2296($fp)
	sub $t0, $t0, $t1
	sw $t0, -2300($fp)
	lw $t1, -2276($fp)
	lw $t2, -2300($fp)
	ble $t1, $t2, label621
	j label622
label621:
	li $t0, 1
	sw $t0, -2272($fp)
label622:
label623:
	li $t0, 0
	sw $t0, -2304($fp)
	lw $t0, -700($fp)
	sw $t0, -2308($fp)
	lw $t0, -664($fp)
	sw $t0, -2312($fp)
	li $t0, 51423
	sw $t0, -2316($fp)
	lw $t0, -2312($fp)
	lw $t1, -2316($fp)
	mul $t0, $t0, $t1
	sw $t0, -2320($fp)
	lw $t1, -2308($fp)
	lw $t2, -2320($fp)
	ble $t1, $t2, label626
	j label627
label626:
	li $t0, 1
	sw $t0, -2304($fp)
label627:
	lw $t0, -88($fp)
	sw $t0, -2324($fp)
	lw $t1, -2304($fp)
	lw $t2, -2324($fp)
	bge $t1, $t2, label624
	j label625
label624:
	li $t0, 43915
	sw $t0, -2328($fp)
	lw $t0, -2328($fp)
	sw $t0, -2332($fp)
	lw $t0, -2332($fp)
	sw $t0, -2336($fp)
	addi $t0, $fp, -32
	sw $t0, -2340($fp)
	lw $t0, -688($fp)
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
	li $t0, 0
	lw $t1, -2356($fp)
	sub $t0, $t0, $t1
	sw $t0, -2360($fp)
	lw $t0, -604($fp)
	sw $t0, -2364($fp)
	li $t0, 55901
	sw $t0, -2368($fp)
	lw $t0, -676($fp)
	sw $t0, -2372($fp)
	lw $t0, -2368($fp)
	lw $t1, -2372($fp)
	sub $t0, $t0, $t1
	sw $t0, -2376($fp)
	li $t0, 0
	sw $t0, -2380($fp)
	jal f10
	sw $v0, -2384($fp)
	addi $sp, $sp, 4
	li $t0, 5428
	sw $t0, -2388($fp)
	lw $t1, -2384($fp)
	lw $t2, -2388($fp)
	blt $t1, $t2, label628
	j label629
label628:
	li $t0, 1
	sw $t0, -2380($fp)
label629:
	li $t0, 0
	sw $t0, -2392($fp)
	lw $t0, -268($fp)
	sw $t0, -2396($fp)
	li $t0, 19046
	sw $t0, -2400($fp)
	lw $t0, -2396($fp)
	lw $t1, -2400($fp)
	mul $t0, $t0, $t1
	sw $t0, -2404($fp)
	lw $t1, -2404($fp)
	li $t2, 0
	bne $t1, $t2, label632
	j label631
label632:
	li $t0, 855
	sw $t0, -2408($fp)
	lw $t1, -2408($fp)
	li $t2, 0
	bne $t1, $t2, label630
	j label631
label630:
	li $t0, 1
	sw $t0, -2392($fp)
label631:
	addi $sp, $sp, -4
	lw $t0, -2360($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2376($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2380($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2392($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2412($fp)
	addi $sp, $sp, 24
	li $t0, 0
	sw $t0, -2416($fp)
	lw $t0, -88($fp)
	sw $t0, -2420($fp)
	li $t0, 0
	lw $t1, -2420($fp)
	sub $t0, $t0, $t1
	sw $t0, -2424($fp)
	lw $t0, -2332($fp)
	sw $t0, -2428($fp)
	lw $t1, -2424($fp)
	lw $t2, -2428($fp)
	blt $t1, $t2, label633
	j label634
label633:
	li $t0, 1
	sw $t0, -2416($fp)
label634:
	addi $t0, $fp, -72
	sw $t0, -2432($fp)
	li $t0, 0
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
	addi $sp, $sp, -4
	lw $t0, -2416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2448($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -2452($fp)
	addi $sp, $sp, 12
	lw $t0, -2412($fp)
	lw $t1, -2452($fp)
	add $t0, $t0, $t1
	sw $t0, -2456($fp)
	j label623
label625:
	lw $t0, -88($fp)
	sw $t0, -2460($fp)
	lw $t0, -2460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2464($fp)
	li $t0, 0
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
	lw $t0, -2480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2484($fp)
	li $t0, 1
	sw $t0, -2488($fp)
	li $t0, 4
	lw $t1, -2488($fp)
	mul $t0, $t0, $t1
	sw $t0, -2492($fp)
	lw $t0, -2492($fp)
	lw $t1, -2484($fp)
	add $t0, $t0, $t1
	sw $t0, -2496($fp)
	lw $t0, -2496($fp)
	lw $t1, 0($t0)
	sw $t1, -2500($fp)
	lw $t0, -2500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2504($fp)
	li $t0, 2
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
	lw $t0, -2520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -2524($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -2544($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -2564($fp)
	li $t0, 5
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
	addi $t0, $fp, -32
	sw $t0, -2584($fp)
	li $t0, 6
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
	lw $t0, -268($fp)
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -280($fp)
	sw $t0, -2608($fp)
	lw $t0, -2608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -292($fp)
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2616($fp)
	li $t0, 0
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
	addi $t0, $fp, -72
	sw $t0, -2636($fp)
	li $t0, 1
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
	addi $t0, $fp, -72
	sw $t0, -2656($fp)
	li $t0, 2
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
	addi $t0, $fp, -72
	sw $t0, -2676($fp)
	li $t0, 3
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
	addi $t0, $fp, -72
	sw $t0, -2696($fp)
	li $t0, 4
	sw $t0, -2700($fp)
	li $t0, 4
	lw $t1, -2700($fp)
	mul $t0, $t0, $t1
	sw $t0, -2704($fp)
	lw $t0, -2704($fp)
	lw $t1, -2696($fp)
	add $t0, $t0, $t1
	sw $t0, -2708($fp)
	lw $t0, -2708($fp)
	lw $t1, 0($t0)
	sw $t1, -2712($fp)
	lw $t0, -2712($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2716($fp)
	li $t0, 5
	sw $t0, -2720($fp)
	li $t0, 4
	lw $t1, -2720($fp)
	mul $t0, $t0, $t1
	sw $t0, -2724($fp)
	lw $t0, -2724($fp)
	lw $t1, -2716($fp)
	add $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t0, -2728($fp)
	lw $t1, 0($t0)
	sw $t1, -2732($fp)
	lw $t0, -2732($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -72
	sw $t0, -2736($fp)
	li $t0, 6
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
	addi $t0, $fp, -72
	sw $t0, -2756($fp)
	li $t0, 7
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
	addi $t0, $fp, -72
	sw $t0, -2776($fp)
	li $t0, 8
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
	addi $t0, $fp, -72
	sw $t0, -2796($fp)
	li $t0, 9
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
	lw $t0, -544($fp)
	sw $t0, -2816($fp)
	lw $t0, -2816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -556($fp)
	sw $t0, -2820($fp)
	lw $t0, -2820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -568($fp)
	sw $t0, -2824($fp)
	lw $t0, -2824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -580($fp)
	sw $t0, -2828($fp)
	lw $t0, -2828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -592($fp)
	sw $t0, -2832($fp)
	lw $t0, -2832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -604($fp)
	sw $t0, -2836($fp)
	lw $t0, -2836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2840($fp)
	li $t0, 0
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
	lw $t0, -2856($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -80
	sw $t0, -2860($fp)
	li $t0, 1
	sw $t0, -2864($fp)
	li $t0, 4
	lw $t1, -2864($fp)
	mul $t0, $t0, $t1
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	lw $t1, -2860($fp)
	add $t0, $t0, $t1
	sw $t0, -2872($fp)
	lw $t0, -2872($fp)
	lw $t1, 0($t0)
	sw $t1, -2876($fp)
	lw $t0, -2876($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -664($fp)
	sw $t0, -2880($fp)
	lw $t0, -2880($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -676($fp)
	sw $t0, -2884($fp)
	lw $t0, -2884($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -688($fp)
	sw $t0, -2888($fp)
	lw $t0, -2888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -700($fp)
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -712($fp)
	sw $t0, -2896($fp)
	lw $t0, -2896($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2900($fp)
	li $t0, 53668
	sw $t0, -2904($fp)
	jal f10
	sw $v0, -2908($fp)
	addi $sp, $sp, 4
	lw $t1, -2904($fp)
	lw $t2, -2908($fp)
	bgt $t1, $t2, label635
	j label637
label637:
	li $t0, 9691
	sw $t0, -2912($fp)
	li $t0, 0
	lw $t1, -2912($fp)
	sub $t0, $t0, $t1
	sw $t0, -2916($fp)
	addi $t0, $fp, -80
	sw $t0, -2920($fp)
	lw $t0, -544($fp)
	sw $t0, -2924($fp)
	li $t0, 4
	lw $t1, -2924($fp)
	mul $t0, $t0, $t1
	sw $t0, -2928($fp)
	lw $t0, -2928($fp)
	lw $t1, -2920($fp)
	add $t0, $t0, $t1
	sw $t0, -2932($fp)
	lw $t0, -2932($fp)
	lw $t1, 0($t0)
	sw $t1, -2936($fp)
	lw $t0, -2916($fp)
	lw $t1, -2936($fp)
	add $t0, $t0, $t1
	sw $t0, -2940($fp)
	lw $t1, -2940($fp)
	li $t2, 0
	bne $t1, $t2, label635
	j label636
label635:
	li $t0, 1
	sw $t0, -2900($fp)
label636:
	lw $ra, -4($fp)
	lw $v0, -2900($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f12:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -356
	li $t0, 21326
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
	li $t0, 42264
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
	li $t0, 35546
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
	li $t0, 53106
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
label638:
	li $t0, 43095
	sw $t0, -120($fp)
	lw $t1, -120($fp)
	li $t2, 0
	bne $t1, $t2, label639
	j label640
label639:
	li $t0, 0
	sw $t0, -124($fp)
	li $t0, 0
	sw $t0, -128($fp)
	jal f10
	sw $v0, -132($fp)
	addi $sp, $sp, 4
	lw $t1, -132($fp)
	li $t2, 0
	bne $t1, $t2, label644
	j label643
label643:
	li $t0, 1
	sw $t0, -128($fp)
label644:
	li $t0, 0
	lw $t1, -128($fp)
	sub $t0, $t0, $t1
	sw $t0, -136($fp)
	lw $t1, -136($fp)
	li $t2, 0
	bne $t1, $t2, label642
	j label641
label641:
	li $t0, 1
	sw $t0, -124($fp)
label642:
	j label638
label640:
	addi $t0, $fp, -20
	sw $t0, -140($fp)
	li $t0, 0
	sw $t0, -144($fp)
	li $t0, 4
	lw $t1, -144($fp)
	mul $t0, $t0, $t1
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	lw $t1, -140($fp)
	add $t0, $t0, $t1
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	lw $t1, 0($t0)
	sw $t1, -156($fp)
	lw $t0, -156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -160($fp)
	li $t0, 1
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
	addi $t0, $fp, -20
	sw $t0, -180($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -200($fp)
	li $t0, 3
	sw $t0, -204($fp)
	li $t0, 4
	lw $t1, -204($fp)
	mul $t0, $t0, $t1
	sw $t0, -208($fp)
	lw $t0, -208($fp)
	lw $t1, -200($fp)
	add $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	lw $t1, 0($t0)
	sw $t1, -216($fp)
	lw $t0, -216($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -220($fp)
	li $t0, 0
	sw $t0, -224($fp)
	lw $t0, 4($fp)
	sw $t0, -228($fp)
	li $t0, 42727
	sw $t0, -232($fp)
	lw $t1, -228($fp)
	lw $t2, -232($fp)
	blt $t1, $t2, label645
	j label646
label645:
	li $t0, 1
	sw $t0, -224($fp)
label646:
	li $t0, 4
	lw $t1, -224($fp)
	mul $t0, $t0, $t1
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	lw $t1, -220($fp)
	add $t0, $t0, $t1
	sw $t0, -240($fp)
	lw $t0, -240($fp)
	lw $t1, 0($t0)
	sw $t1, -244($fp)
	jal f10
	sw $v0, -248($fp)
	addi $sp, $sp, 4
	lw $t0, -244($fp)
	lw $t1, -248($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -252($fp)
	li $t0, 0
	sw $t0, -256($fp)
	lw $t0, 4($fp)
	sw $t0, -260($fp)
	lw $t1, -260($fp)
	li $t2, 0
	bne $t1, $t2, label648
	j label647
label647:
	li $t0, 1
	sw $t0, -256($fp)
label648:
	lw $t0, -252($fp)
	lw $t1, -256($fp)
	mul $t0, $t0, $t1
	sw $t0, -264($fp)
	lw $ra, -4($fp)
	lw $v0, -264($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -20
	sw $t0, -268($fp)
	li $t0, 0
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
	addi $t0, $fp, -20
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
	lw $t0, -304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -20
	sw $t0, -308($fp)
	li $t0, 2
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
	addi $t0, $fp, -20
	sw $t0, -328($fp)
	li $t0, 3
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
	li $t0, 0
	sw $t0, -348($fp)
	li $t0, 29396
	sw $t0, -352($fp)
	lw $t1, -352($fp)
	li $t2, 0
	bne $t1, $t2, label650
	j label649
label649:
	li $t0, 1
	sw $t0, -348($fp)
label650:
	lw $t0, 4($fp)
	sw $t0, -356($fp)
	lw $t0, -348($fp)
	lw $t1, -356($fp)
	mul $t0, $t0, $t1
	sw $t0, -360($fp)
	lw $ra, -4($fp)
	lw $v0, -360($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f13:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -484
	li $t0, 23375
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
	li $t0, 22352
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
	li $t0, 31589
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
	li $t0, 64714
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
	li $t0, 26211
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
	li $t0, 32322
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	li $t0, 13616
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	li $t0, 35010
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	li $t0, 38408
	sw $t0, -184($fp)
	li $t0, 49639
	sw $t0, -188($fp)
	lw $t0, -184($fp)
	lw $t1, -188($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -192($fp)
	li $t0, 42158
	sw $t0, -196($fp)
	lw $t0, -192($fp)
	lw $t1, -196($fp)
	mul $t0, $t0, $t1
	sw $t0, -200($fp)
	li $t0, 0
	sw $t0, -204($fp)
	lw $t0, 8($fp)
	sw $t0, -208($fp)
	lw $t1, -208($fp)
	li $t2, 0
	bne $t1, $t2, label652
	j label651
label651:
	li $t0, 1
	sw $t0, -204($fp)
label652:
	lw $t0, -200($fp)
	lw $t1, -204($fp)
	mul $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $t0, -212($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -216($fp)
label653:
	li $t0, 45199
	sw $t0, -220($fp)
	lw $t1, -220($fp)
	li $t2, 0
	bne $t1, $t2, label654
	j label655
label654:
	lw $t0, -164($fp)
	sw $t0, -224($fp)
	lw $ra, -4($fp)
	lw $v0, -224($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label653
label655:
	li $t0, 0
	sw $t0, -228($fp)
	addi $t0, $fp, -24
	sw $t0, -232($fp)
	li $t0, 0
	sw $t0, -236($fp)
	lw $t0, -152($fp)
	sw $t0, -240($fp)
	lw $t1, -240($fp)
	li $t2, 0
	bne $t1, $t2, label661
	j label660
label661:
	li $t0, 42824
	sw $t0, -244($fp)
	lw $t1, -244($fp)
	li $t2, 0
	bne $t1, $t2, label659
	j label660
label659:
	li $t0, 1
	sw $t0, -236($fp)
label660:
	li $t0, 4
	lw $t1, -236($fp)
	mul $t0, $t0, $t1
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	lw $t1, -232($fp)
	add $t0, $t0, $t1
	sw $t0, -252($fp)
	lw $t0, -252($fp)
	lw $t1, 0($t0)
	sw $t1, -256($fp)
	li $t0, 50221
	sw $t0, -260($fp)
	lw $t1, -256($fp)
	lw $t2, -260($fp)
	bgt $t1, $t2, label656
	j label658
label658:
	li $t0, 31086
	sw $t0, -264($fp)
	lw $t0, 8($fp)
	sw $t0, -268($fp)
	lw $t0, -264($fp)
	lw $t1, -268($fp)
	add $t0, $t0, $t1
	sw $t0, -272($fp)
	li $t0, 0
	sw $t0, -276($fp)
	li $t0, 21204
	sw $t0, -280($fp)
	lw $t0, -164($fp)
	sw $t0, -284($fp)
	lw $t1, -280($fp)
	lw $t2, -284($fp)
	bgt $t1, $t2, label662
	j label663
label662:
	li $t0, 1
	sw $t0, -276($fp)
label663:
	lw $t1, -272($fp)
	lw $t2, -276($fp)
	beq $t1, $t2, label656
	j label657
label656:
	li $t0, 1
	sw $t0, -228($fp)
label657:
label664:
	li $t0, 3732
	sw $t0, -288($fp)
	lw $t1, -288($fp)
	li $t2, 0
	bne $t1, $t2, label665
	j label666
label665:
	li $t0, 0
	sw $t0, -292($fp)
	lw $t0, -164($fp)
	sw $t0, -296($fp)
	lw $t0, -152($fp)
	sw $t0, -300($fp)
	lw $t0, -296($fp)
	lw $t1, -300($fp)
	add $t0, $t0, $t1
	sw $t0, -304($fp)
	lw $t1, -304($fp)
	li $t2, 0
	bne $t1, $t2, label667
	j label669
label669:
	li $t0, 26632
	sw $t0, -308($fp)
	lw $t1, -308($fp)
	li $t2, 0
	bne $t1, $t2, label667
	j label668
label667:
	li $t0, 1
	sw $t0, -292($fp)
label668:
	li $t0, 0
	sw $t0, -312($fp)
	li $t0, 31941
	sw $t0, -316($fp)
	lw $t1, -316($fp)
	li $t2, 0
	bne $t1, $t2, label673
	j label671
label673:
	lw $t0, -176($fp)
	sw $t0, -320($fp)
	lw $t1, -320($fp)
	li $t2, 0
	bne $t1, $t2, label672
	j label671
label672:
	lw $t0, 8($fp)
	sw $t0, -324($fp)
	lw $t1, -324($fp)
	li $t2, 0
	bne $t1, $t2, label670
	j label671
label670:
	li $t0, 1
	sw $t0, -312($fp)
label671:
	addi $sp, $sp, -4
	lw $t0, -292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -312($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -328($fp)
	addi $sp, $sp, 12
	lw $ra, -4($fp)
	lw $v0, -328($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label664
label666:
	addi $t0, $fp, -24
	sw $t0, -332($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -352($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
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
	lw $t0, -388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -24
	sw $t0, -392($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -412($fp)
	li $t0, 4
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
	lw $t0, -152($fp)
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -164($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -176($fp)
	sw $t0, -440($fp)
	lw $t0, -440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -444($fp)
	lw $t0, -164($fp)
	sw $t0, -448($fp)
	li $t0, 59633
	sw $t0, -452($fp)
	lw $t0, -448($fp)
	lw $t1, -452($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -456($fp)
	lw $t0, 4($fp)
	sw $t0, -460($fp)
	lw $t0, -456($fp)
	lw $t1, -460($fp)
	mul $t0, $t0, $t1
	sw $t0, -464($fp)
	lw $t1, -464($fp)
	li $t2, 0
	bne $t1, $t2, label676
	j label675
label676:
	addi $t0, $fp, -24
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
	lw $t1, -484($fp)
	li $t2, 0
	bne $t1, $t2, label674
	j label675
label674:
	li $t0, 1
	sw $t0, -444($fp)
label675:
	lw $t0, -444($fp)
	sw $t0, 8($fp)
	lw $t0, 8($fp)
	sw $t0, -488($fp)
	lw $ra, -4($fp)
	lw $v0, -488($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f14:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -9320
	li $t0, 47765
	sw $t0, -300($fp)
	addi $t0, $fp, -24
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
	li $t0, 50592
	sw $t0, -324($fp)
	addi $t0, $fp, -24
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
	li $t0, 54186
	sw $t0, -348($fp)
	addi $t0, $fp, -24
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
	li $t0, 24493
	sw $t0, -372($fp)
	addi $t0, $fp, -24
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
	li $t0, 20602
	sw $t0, -396($fp)
	addi $t0, $fp, -24
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
	li $t0, 41756
	sw $t0, -420($fp)
	lw $t0, -420($fp)
	sw $t0, -424($fp)
	lw $t0, -424($fp)
	sw $t0, -428($fp)
	li $t0, 2053
	sw $t0, -432($fp)
	lw $t0, -432($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -440($fp)
	li $t0, 63329
	sw $t0, -444($fp)
	lw $t0, -444($fp)
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	li $t0, 5617
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	li $t0, 25428
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -476($fp)
	li $t0, 20145
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	lw $t0, -484($fp)
	sw $t0, -488($fp)
	li $t0, 37206
	sw $t0, -492($fp)
	addi $t0, $fp, -28
	sw $t0, -496($fp)
	li $t0, 0
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
	li $t0, 24606
	sw $t0, -516($fp)
	lw $t0, -516($fp)
	sw $t0, -520($fp)
	lw $t0, -520($fp)
	sw $t0, -524($fp)
	li $t0, 46357
	sw $t0, -528($fp)
	addi $t0, $fp, -56
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
	li $t0, 3992
	sw $t0, -552($fp)
	addi $t0, $fp, -56
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
	li $t0, 38222
	sw $t0, -576($fp)
	addi $t0, $fp, -56
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
	li $t0, 15831
	sw $t0, -600($fp)
	addi $t0, $fp, -56
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
	li $t0, 42400
	sw $t0, -624($fp)
	addi $t0, $fp, -56
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
	li $t0, 22325
	sw $t0, -648($fp)
	addi $t0, $fp, -56
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
	li $t0, 57989
	sw $t0, -672($fp)
	addi $t0, $fp, -56
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
	li $t0, 22063
	sw $t0, -696($fp)
	addi $t0, $fp, -92
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
	li $t0, 65150
	sw $t0, -720($fp)
	addi $t0, $fp, -92
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
	li $t0, 42675
	sw $t0, -744($fp)
	addi $t0, $fp, -92
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
	li $t0, 53149
	sw $t0, -768($fp)
	addi $t0, $fp, -92
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
	li $t0, 20818
	sw $t0, -792($fp)
	addi $t0, $fp, -92
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
	li $t0, 46407
	sw $t0, -816($fp)
	addi $t0, $fp, -92
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
	li $t0, 19555
	sw $t0, -840($fp)
	addi $t0, $fp, -92
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
	li $t0, 47450
	sw $t0, -864($fp)
	addi $t0, $fp, -92
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
	li $t0, 40504
	sw $t0, -888($fp)
	addi $t0, $fp, -92
	sw $t0, -892($fp)
	li $t0, 8
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
	li $t0, 60456
	sw $t0, -912($fp)
	addi $t0, $fp, -124
	sw $t0, -916($fp)
	li $t0, 0
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
	li $t0, 14774
	sw $t0, -936($fp)
	addi $t0, $fp, -124
	sw $t0, -940($fp)
	li $t0, 1
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
	li $t0, 22733
	sw $t0, -960($fp)
	addi $t0, $fp, -124
	sw $t0, -964($fp)
	li $t0, 2
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
	li $t0, 45513
	sw $t0, -984($fp)
	addi $t0, $fp, -124
	sw $t0, -988($fp)
	li $t0, 3
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
	li $t0, 3424
	sw $t0, -1008($fp)
	addi $t0, $fp, -124
	sw $t0, -1012($fp)
	li $t0, 4
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
	li $t0, 47227
	sw $t0, -1032($fp)
	addi $t0, $fp, -124
	sw $t0, -1036($fp)
	li $t0, 5
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
	li $t0, 579
	sw $t0, -1056($fp)
	addi $t0, $fp, -124
	sw $t0, -1060($fp)
	li $t0, 6
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
	li $t0, 45181
	sw $t0, -1080($fp)
	addi $t0, $fp, -124
	sw $t0, -1084($fp)
	li $t0, 7
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
	li $t0, 49280
	sw $t0, -1104($fp)
	addi $t0, $fp, -152
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
	li $t0, 63909
	sw $t0, -1128($fp)
	addi $t0, $fp, -152
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
	li $t0, 50798
	sw $t0, -1152($fp)
	addi $t0, $fp, -152
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
	li $t0, 9172
	sw $t0, -1176($fp)
	addi $t0, $fp, -152
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
	li $t0, 18518
	sw $t0, -1200($fp)
	addi $t0, $fp, -152
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
	li $t0, 22468
	sw $t0, -1224($fp)
	addi $t0, $fp, -152
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
	li $t0, 33778
	sw $t0, -1248($fp)
	addi $t0, $fp, -152
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
	li $t0, 64875
	sw $t0, -1272($fp)
	lw $t0, -1272($fp)
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	sw $t0, -1280($fp)
	li $t0, 26460
	sw $t0, -1284($fp)
	lw $t0, -1284($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -1292($fp)
	li $t0, 6465
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	sw $t0, -1304($fp)
	li $t0, 15170
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	sw $t0, -1316($fp)
	li $t0, 3324
	sw $t0, -1320($fp)
	lw $t0, -1320($fp)
	sw $t0, -1324($fp)
	lw $t0, -1324($fp)
	sw $t0, -1328($fp)
	li $t0, 28790
	sw $t0, -1332($fp)
	lw $t0, -1332($fp)
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -1340($fp)
	li $t0, 7624
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	sw $t0, -1352($fp)
	li $t0, 25387
	sw $t0, -1356($fp)
	lw $t0, -1356($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -1364($fp)
	li $t0, 28404
	sw $t0, -1368($fp)
	lw $t0, -1368($fp)
	sw $t0, -1372($fp)
	lw $t0, -1372($fp)
	sw $t0, -1376($fp)
	li $t0, 50299
	sw $t0, -1380($fp)
	lw $t0, -1380($fp)
	sw $t0, -1384($fp)
	lw $t0, -1384($fp)
	sw $t0, -1388($fp)
	li $t0, 13000
	sw $t0, -1392($fp)
	addi $t0, $fp, -188
	sw $t0, -1396($fp)
	li $t0, 0
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
	li $t0, 49222
	sw $t0, -1416($fp)
	addi $t0, $fp, -188
	sw $t0, -1420($fp)
	li $t0, 1
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
	li $t0, 31170
	sw $t0, -1440($fp)
	addi $t0, $fp, -188
	sw $t0, -1444($fp)
	li $t0, 2
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
	li $t0, 32555
	sw $t0, -1464($fp)
	addi $t0, $fp, -188
	sw $t0, -1468($fp)
	li $t0, 3
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
	li $t0, 31136
	sw $t0, -1488($fp)
	addi $t0, $fp, -188
	sw $t0, -1492($fp)
	li $t0, 4
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
	li $t0, 6138
	sw $t0, -1512($fp)
	addi $t0, $fp, -188
	sw $t0, -1516($fp)
	li $t0, 5
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
	li $t0, 27476
	sw $t0, -1536($fp)
	addi $t0, $fp, -188
	sw $t0, -1540($fp)
	li $t0, 6
	sw $t0, -1544($fp)
	lw $t0, -1544($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1548($fp)
	lw $t0, -1540($fp)
	lw $t1, -1548($fp)
	add $t0, $t0, $t1
	sw $t0, -1552($fp)
	lw $t0, -1536($fp)
	lw $t1, -1552($fp)
	sw $t0, 0($t1)
	lw $t0, -1552($fp)
	lw $t1, 0($t0)
	sw $t1, -1556($fp)
	li $t0, 45910
	sw $t0, -1560($fp)
	addi $t0, $fp, -188
	sw $t0, -1564($fp)
	li $t0, 7
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
	li $t0, 28871
	sw $t0, -1584($fp)
	addi $t0, $fp, -188
	sw $t0, -1588($fp)
	li $t0, 8
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
	li $t0, 7453
	sw $t0, -1608($fp)
	lw $t0, -1608($fp)
	sw $t0, -1612($fp)
	lw $t0, -1612($fp)
	sw $t0, -1616($fp)
	li $t0, 49335
	sw $t0, -1620($fp)
	lw $t0, -1620($fp)
	sw $t0, -1624($fp)
	lw $t0, -1624($fp)
	sw $t0, -1628($fp)
	li $t0, 10562
	sw $t0, -1632($fp)
	lw $t0, -1632($fp)
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	sw $t0, -1640($fp)
	li $t0, 8032
	sw $t0, -1644($fp)
	addi $t0, $fp, -200
	sw $t0, -1648($fp)
	li $t0, 0
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $t0, -1648($fp)
	lw $t1, -1656($fp)
	add $t0, $t0, $t1
	sw $t0, -1660($fp)
	lw $t0, -1644($fp)
	lw $t1, -1660($fp)
	sw $t0, 0($t1)
	lw $t0, -1660($fp)
	lw $t1, 0($t0)
	sw $t1, -1664($fp)
	li $t0, 28980
	sw $t0, -1668($fp)
	addi $t0, $fp, -200
	sw $t0, -1672($fp)
	li $t0, 1
	sw $t0, -1676($fp)
	lw $t0, -1676($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1680($fp)
	lw $t0, -1672($fp)
	lw $t1, -1680($fp)
	add $t0, $t0, $t1
	sw $t0, -1684($fp)
	lw $t0, -1668($fp)
	lw $t1, -1684($fp)
	sw $t0, 0($t1)
	lw $t0, -1684($fp)
	lw $t1, 0($t0)
	sw $t1, -1688($fp)
	li $t0, 59842
	sw $t0, -1692($fp)
	addi $t0, $fp, -200
	sw $t0, -1696($fp)
	li $t0, 2
	sw $t0, -1700($fp)
	lw $t0, -1700($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t0, -1696($fp)
	lw $t1, -1704($fp)
	add $t0, $t0, $t1
	sw $t0, -1708($fp)
	lw $t0, -1692($fp)
	lw $t1, -1708($fp)
	sw $t0, 0($t1)
	lw $t0, -1708($fp)
	lw $t1, 0($t0)
	sw $t1, -1712($fp)
	li $t0, 6405
	sw $t0, -1716($fp)
	lw $t0, -1716($fp)
	sw $t0, -1720($fp)
	lw $t0, -1720($fp)
	sw $t0, -1724($fp)
	li $t0, 14242
	sw $t0, -1728($fp)
	lw $t0, -1728($fp)
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	sw $t0, -1736($fp)
	li $t0, 3478
	sw $t0, -1740($fp)
	addi $t0, $fp, -212
	sw $t0, -1744($fp)
	li $t0, 0
	sw $t0, -1748($fp)
	lw $t0, -1748($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1752($fp)
	lw $t0, -1744($fp)
	lw $t1, -1752($fp)
	add $t0, $t0, $t1
	sw $t0, -1756($fp)
	lw $t0, -1740($fp)
	lw $t1, -1756($fp)
	sw $t0, 0($t1)
	lw $t0, -1756($fp)
	lw $t1, 0($t0)
	sw $t1, -1760($fp)
	li $t0, 24924
	sw $t0, -1764($fp)
	addi $t0, $fp, -212
	sw $t0, -1768($fp)
	li $t0, 1
	sw $t0, -1772($fp)
	lw $t0, -1772($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1776($fp)
	lw $t0, -1768($fp)
	lw $t1, -1776($fp)
	add $t0, $t0, $t1
	sw $t0, -1780($fp)
	lw $t0, -1764($fp)
	lw $t1, -1780($fp)
	sw $t0, 0($t1)
	lw $t0, -1780($fp)
	lw $t1, 0($t0)
	sw $t1, -1784($fp)
	li $t0, 36710
	sw $t0, -1788($fp)
	addi $t0, $fp, -212
	sw $t0, -1792($fp)
	li $t0, 2
	sw $t0, -1796($fp)
	lw $t0, -1796($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1800($fp)
	lw $t0, -1792($fp)
	lw $t1, -1800($fp)
	add $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t0, -1788($fp)
	lw $t1, -1804($fp)
	sw $t0, 0($t1)
	lw $t0, -1804($fp)
	lw $t1, 0($t0)
	sw $t1, -1808($fp)
	li $t0, 37257
	sw $t0, -1812($fp)
	lw $t0, -1812($fp)
	sw $t0, -1816($fp)
	lw $t0, -1816($fp)
	sw $t0, -1820($fp)
	li $t0, 24263
	sw $t0, -1824($fp)
	lw $t0, -1824($fp)
	sw $t0, -1828($fp)
	lw $t0, -1828($fp)
	sw $t0, -1832($fp)
	li $t0, 63170
	sw $t0, -1836($fp)
	lw $t0, -1836($fp)
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	sw $t0, -1844($fp)
	li $t0, 43722
	sw $t0, -1848($fp)
	lw $t0, -1848($fp)
	sw $t0, -1852($fp)
	lw $t0, -1852($fp)
	sw $t0, -1856($fp)
	li $t0, 39434
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	sw $t0, -1868($fp)
	li $t0, 958
	sw $t0, -1872($fp)
	lw $t0, -1872($fp)
	sw $t0, -1876($fp)
	lw $t0, -1876($fp)
	sw $t0, -1880($fp)
	li $t0, 6976
	sw $t0, -1884($fp)
	lw $t0, -1884($fp)
	sw $t0, -1888($fp)
	lw $t0, -1888($fp)
	sw $t0, -1892($fp)
	li $t0, 47058
	sw $t0, -1896($fp)
	lw $t0, -1896($fp)
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	sw $t0, -1904($fp)
	li $t0, 26345
	sw $t0, -1908($fp)
	lw $t0, -1908($fp)
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	sw $t0, -1916($fp)
	li $t0, 35381
	sw $t0, -1920($fp)
	lw $t0, -1920($fp)
	sw $t0, -1924($fp)
	lw $t0, -1924($fp)
	sw $t0, -1928($fp)
	li $t0, 31821
	sw $t0, -1932($fp)
	lw $t0, -1932($fp)
	sw $t0, -1936($fp)
	lw $t0, -1936($fp)
	sw $t0, -1940($fp)
	li $t0, 39345
	sw $t0, -1944($fp)
	addi $t0, $fp, -224
	sw $t0, -1948($fp)
	li $t0, 0
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
	li $t0, 19067
	sw $t0, -1968($fp)
	addi $t0, $fp, -224
	sw $t0, -1972($fp)
	li $t0, 1
	sw $t0, -1976($fp)
	lw $t0, -1976($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1980($fp)
	lw $t0, -1972($fp)
	lw $t1, -1980($fp)
	add $t0, $t0, $t1
	sw $t0, -1984($fp)
	lw $t0, -1968($fp)
	lw $t1, -1984($fp)
	sw $t0, 0($t1)
	lw $t0, -1984($fp)
	lw $t1, 0($t0)
	sw $t1, -1988($fp)
	li $t0, 62991
	sw $t0, -1992($fp)
	addi $t0, $fp, -224
	sw $t0, -1996($fp)
	li $t0, 2
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2004($fp)
	lw $t0, -1996($fp)
	lw $t1, -2004($fp)
	add $t0, $t0, $t1
	sw $t0, -2008($fp)
	lw $t0, -1992($fp)
	lw $t1, -2008($fp)
	sw $t0, 0($t1)
	lw $t0, -2008($fp)
	lw $t1, 0($t0)
	sw $t1, -2012($fp)
	li $t0, 6365
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	sw $t0, -2020($fp)
	lw $t0, -2020($fp)
	sw $t0, -2024($fp)
	li $t0, 50204
	sw $t0, -2028($fp)
	lw $t0, -2028($fp)
	sw $t0, -2032($fp)
	lw $t0, -2032($fp)
	sw $t0, -2036($fp)
	li $t0, 3593
	sw $t0, -2040($fp)
	lw $t0, -2040($fp)
	sw $t0, -2044($fp)
	lw $t0, -2044($fp)
	sw $t0, -2048($fp)
	li $t0, 33841
	sw $t0, -2052($fp)
	lw $t0, -2052($fp)
	sw $t0, -2056($fp)
	lw $t0, -2056($fp)
	sw $t0, -2060($fp)
	li $t0, 30578
	sw $t0, -2064($fp)
	lw $t0, -2064($fp)
	sw $t0, -2068($fp)
	lw $t0, -2068($fp)
	sw $t0, -2072($fp)
	li $t0, 32464
	sw $t0, -2076($fp)
	lw $t0, -2076($fp)
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	sw $t0, -2084($fp)
	li $t0, 41294
	sw $t0, -2088($fp)
	lw $t0, -2088($fp)
	sw $t0, -2092($fp)
	lw $t0, -2092($fp)
	sw $t0, -2096($fp)
	li $t0, 14377
	sw $t0, -2100($fp)
	addi $t0, $fp, -240
	sw $t0, -2104($fp)
	li $t0, 0
	sw $t0, -2108($fp)
	lw $t0, -2108($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2112($fp)
	lw $t0, -2104($fp)
	lw $t1, -2112($fp)
	add $t0, $t0, $t1
	sw $t0, -2116($fp)
	lw $t0, -2100($fp)
	lw $t1, -2116($fp)
	sw $t0, 0($t1)
	lw $t0, -2116($fp)
	lw $t1, 0($t0)
	sw $t1, -2120($fp)
	li $t0, 43027
	sw $t0, -2124($fp)
	addi $t0, $fp, -240
	sw $t0, -2128($fp)
	li $t0, 1
	sw $t0, -2132($fp)
	lw $t0, -2132($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2136($fp)
	lw $t0, -2128($fp)
	lw $t1, -2136($fp)
	add $t0, $t0, $t1
	sw $t0, -2140($fp)
	lw $t0, -2124($fp)
	lw $t1, -2140($fp)
	sw $t0, 0($t1)
	lw $t0, -2140($fp)
	lw $t1, 0($t0)
	sw $t1, -2144($fp)
	li $t0, 49326
	sw $t0, -2148($fp)
	addi $t0, $fp, -240
	sw $t0, -2152($fp)
	li $t0, 2
	sw $t0, -2156($fp)
	lw $t0, -2156($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2160($fp)
	lw $t0, -2152($fp)
	lw $t1, -2160($fp)
	add $t0, $t0, $t1
	sw $t0, -2164($fp)
	lw $t0, -2148($fp)
	lw $t1, -2164($fp)
	sw $t0, 0($t1)
	lw $t0, -2164($fp)
	lw $t1, 0($t0)
	sw $t1, -2168($fp)
	li $t0, 43357
	sw $t0, -2172($fp)
	addi $t0, $fp, -240
	sw $t0, -2176($fp)
	li $t0, 3
	sw $t0, -2180($fp)
	lw $t0, -2180($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2184($fp)
	lw $t0, -2176($fp)
	lw $t1, -2184($fp)
	add $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t0, -2172($fp)
	lw $t1, -2188($fp)
	sw $t0, 0($t1)
	lw $t0, -2188($fp)
	lw $t1, 0($t0)
	sw $t1, -2192($fp)
	li $t0, 37333
	sw $t0, -2196($fp)
	lw $t0, -2196($fp)
	sw $t0, -2200($fp)
	lw $t0, -2200($fp)
	sw $t0, -2204($fp)
	li $t0, 55732
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	sw $t0, -2212($fp)
	lw $t0, -2212($fp)
	sw $t0, -2216($fp)
	li $t0, 57599
	sw $t0, -2220($fp)
	addi $t0, $fp, -280
	sw $t0, -2224($fp)
	li $t0, 0
	sw $t0, -2228($fp)
	lw $t0, -2228($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2232($fp)
	lw $t0, -2224($fp)
	lw $t1, -2232($fp)
	add $t0, $t0, $t1
	sw $t0, -2236($fp)
	lw $t0, -2220($fp)
	lw $t1, -2236($fp)
	sw $t0, 0($t1)
	lw $t0, -2236($fp)
	lw $t1, 0($t0)
	sw $t1, -2240($fp)
	li $t0, 40812
	sw $t0, -2244($fp)
	addi $t0, $fp, -280
	sw $t0, -2248($fp)
	li $t0, 1
	sw $t0, -2252($fp)
	lw $t0, -2252($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2256($fp)
	lw $t0, -2248($fp)
	lw $t1, -2256($fp)
	add $t0, $t0, $t1
	sw $t0, -2260($fp)
	lw $t0, -2244($fp)
	lw $t1, -2260($fp)
	sw $t0, 0($t1)
	lw $t0, -2260($fp)
	lw $t1, 0($t0)
	sw $t1, -2264($fp)
	li $t0, 15120
	sw $t0, -2268($fp)
	addi $t0, $fp, -280
	sw $t0, -2272($fp)
	li $t0, 2
	sw $t0, -2276($fp)
	lw $t0, -2276($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2280($fp)
	lw $t0, -2272($fp)
	lw $t1, -2280($fp)
	add $t0, $t0, $t1
	sw $t0, -2284($fp)
	lw $t0, -2268($fp)
	lw $t1, -2284($fp)
	sw $t0, 0($t1)
	lw $t0, -2284($fp)
	lw $t1, 0($t0)
	sw $t1, -2288($fp)
	li $t0, 28773
	sw $t0, -2292($fp)
	addi $t0, $fp, -280
	sw $t0, -2296($fp)
	li $t0, 3
	sw $t0, -2300($fp)
	lw $t0, -2300($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2304($fp)
	lw $t0, -2296($fp)
	lw $t1, -2304($fp)
	add $t0, $t0, $t1
	sw $t0, -2308($fp)
	lw $t0, -2292($fp)
	lw $t1, -2308($fp)
	sw $t0, 0($t1)
	lw $t0, -2308($fp)
	lw $t1, 0($t0)
	sw $t1, -2312($fp)
	li $t0, 12533
	sw $t0, -2316($fp)
	addi $t0, $fp, -280
	sw $t0, -2320($fp)
	li $t0, 4
	sw $t0, -2324($fp)
	lw $t0, -2324($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2328($fp)
	lw $t0, -2320($fp)
	lw $t1, -2328($fp)
	add $t0, $t0, $t1
	sw $t0, -2332($fp)
	lw $t0, -2316($fp)
	lw $t1, -2332($fp)
	sw $t0, 0($t1)
	lw $t0, -2332($fp)
	lw $t1, 0($t0)
	sw $t1, -2336($fp)
	li $t0, 39383
	sw $t0, -2340($fp)
	addi $t0, $fp, -280
	sw $t0, -2344($fp)
	li $t0, 5
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
	li $t0, 26407
	sw $t0, -2364($fp)
	addi $t0, $fp, -280
	sw $t0, -2368($fp)
	li $t0, 6
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
	li $t0, 56255
	sw $t0, -2388($fp)
	addi $t0, $fp, -280
	sw $t0, -2392($fp)
	li $t0, 7
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
	li $t0, 13281
	sw $t0, -2412($fp)
	addi $t0, $fp, -280
	sw $t0, -2416($fp)
	li $t0, 8
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
	li $t0, 27365
	sw $t0, -2436($fp)
	addi $t0, $fp, -280
	sw $t0, -2440($fp)
	li $t0, 9
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
	li $t0, 63231
	sw $t0, -2460($fp)
	addi $t0, $fp, -296
	sw $t0, -2464($fp)
	li $t0, 0
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
	li $t0, 60339
	sw $t0, -2484($fp)
	addi $t0, $fp, -296
	sw $t0, -2488($fp)
	li $t0, 1
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
	li $t0, 53710
	sw $t0, -2508($fp)
	addi $t0, $fp, -296
	sw $t0, -2512($fp)
	li $t0, 2
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
	li $t0, 33076
	sw $t0, -2532($fp)
	addi $t0, $fp, -296
	sw $t0, -2536($fp)
	li $t0, 3
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
	li $t0, 26624
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	sw $t0, -2564($fp)
	li $t0, 27520
	sw $t0, -2568($fp)
	lw $t0, -2568($fp)
	sw $t0, -2572($fp)
	lw $t0, -2572($fp)
	sw $t0, -2576($fp)
	li $t0, 52144
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	sw $t0, -2588($fp)
	li $t0, 24079
	sw $t0, -2668($fp)
	addi $t0, $fp, -2628
	sw $t0, -2672($fp)
	li $t0, 0
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
	li $t0, 33885
	sw $t0, -2692($fp)
	addi $t0, $fp, -2628
	sw $t0, -2696($fp)
	li $t0, 1
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
	li $t0, 36812
	sw $t0, -2716($fp)
	addi $t0, $fp, -2628
	sw $t0, -2720($fp)
	li $t0, 2
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
	li $t0, 27672
	sw $t0, -2740($fp)
	addi $t0, $fp, -2628
	sw $t0, -2744($fp)
	li $t0, 3
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
	li $t0, 2190
	sw $t0, -2764($fp)
	addi $t0, $fp, -2628
	sw $t0, -2768($fp)
	li $t0, 4
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
	li $t0, 1854
	sw $t0, -2788($fp)
	addi $t0, $fp, -2628
	sw $t0, -2792($fp)
	li $t0, 5
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
	li $t0, 60137
	sw $t0, -2812($fp)
	addi $t0, $fp, -2628
	sw $t0, -2816($fp)
	li $t0, 6
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
	li $t0, 43484
	sw $t0, -2836($fp)
	addi $t0, $fp, -2628
	sw $t0, -2840($fp)
	li $t0, 7
	sw $t0, -2844($fp)
	lw $t0, -2844($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2848($fp)
	lw $t0, -2840($fp)
	lw $t1, -2848($fp)
	add $t0, $t0, $t1
	sw $t0, -2852($fp)
	lw $t0, -2836($fp)
	lw $t1, -2852($fp)
	sw $t0, 0($t1)
	lw $t0, -2852($fp)
	lw $t1, 0($t0)
	sw $t1, -2856($fp)
	li $t0, 16232
	sw $t0, -2860($fp)
	addi $t0, $fp, -2628
	sw $t0, -2864($fp)
	li $t0, 8
	sw $t0, -2868($fp)
	lw $t0, -2868($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2872($fp)
	lw $t0, -2864($fp)
	lw $t1, -2872($fp)
	add $t0, $t0, $t1
	sw $t0, -2876($fp)
	lw $t0, -2860($fp)
	lw $t1, -2876($fp)
	sw $t0, 0($t1)
	lw $t0, -2876($fp)
	lw $t1, 0($t0)
	sw $t1, -2880($fp)
	li $t0, 37628
	sw $t0, -2884($fp)
	addi $t0, $fp, -2628
	sw $t0, -2888($fp)
	li $t0, 9
	sw $t0, -2892($fp)
	lw $t0, -2892($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2896($fp)
	lw $t0, -2888($fp)
	lw $t1, -2896($fp)
	add $t0, $t0, $t1
	sw $t0, -2900($fp)
	lw $t0, -2884($fp)
	lw $t1, -2900($fp)
	sw $t0, 0($t1)
	lw $t0, -2900($fp)
	lw $t1, 0($t0)
	sw $t1, -2904($fp)
	li $t0, 27274
	sw $t0, -2908($fp)
	lw $t0, -2908($fp)
	sw $t0, -2912($fp)
	lw $t0, -2912($fp)
	sw $t0, -2916($fp)
	li $t0, 59589
	sw $t0, -2920($fp)
	lw $t0, -2920($fp)
	sw $t0, -2924($fp)
	lw $t0, -2924($fp)
	sw $t0, -2928($fp)
	li $t0, 9425
	sw $t0, -2932($fp)
	lw $t0, -2932($fp)
	sw $t0, -2936($fp)
	lw $t0, -2936($fp)
	sw $t0, -2940($fp)
	li $t0, 17470
	sw $t0, -2944($fp)
	lw $t0, -2944($fp)
	sw $t0, -2948($fp)
	lw $t0, -2948($fp)
	sw $t0, -2952($fp)
	li $t0, 51653
	sw $t0, -2956($fp)
	lw $t0, -2956($fp)
	sw $t0, -2960($fp)
	lw $t0, -2960($fp)
	sw $t0, -2964($fp)
	li $t0, 50237
	sw $t0, -2968($fp)
	addi $t0, $fp, -2664
	sw $t0, -2972($fp)
	li $t0, 0
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
	li $t0, 32590
	sw $t0, -2992($fp)
	addi $t0, $fp, -2664
	sw $t0, -2996($fp)
	li $t0, 1
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
	li $t0, 14890
	sw $t0, -3016($fp)
	addi $t0, $fp, -2664
	sw $t0, -3020($fp)
	li $t0, 2
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
	li $t0, 62770
	sw $t0, -3040($fp)
	addi $t0, $fp, -2664
	sw $t0, -3044($fp)
	li $t0, 3
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
	li $t0, 6438
	sw $t0, -3064($fp)
	addi $t0, $fp, -2664
	sw $t0, -3068($fp)
	li $t0, 4
	sw $t0, -3072($fp)
	lw $t0, -3072($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3076($fp)
	lw $t0, -3068($fp)
	lw $t1, -3076($fp)
	add $t0, $t0, $t1
	sw $t0, -3080($fp)
	lw $t0, -3064($fp)
	lw $t1, -3080($fp)
	sw $t0, 0($t1)
	lw $t0, -3080($fp)
	lw $t1, 0($t0)
	sw $t1, -3084($fp)
	li $t0, 41298
	sw $t0, -3088($fp)
	addi $t0, $fp, -2664
	sw $t0, -3092($fp)
	li $t0, 5
	sw $t0, -3096($fp)
	lw $t0, -3096($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3100($fp)
	lw $t0, -3092($fp)
	lw $t1, -3100($fp)
	add $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t0, -3088($fp)
	lw $t1, -3104($fp)
	sw $t0, 0($t1)
	lw $t0, -3104($fp)
	lw $t1, 0($t0)
	sw $t1, -3108($fp)
	li $t0, 53489
	sw $t0, -3112($fp)
	addi $t0, $fp, -2664
	sw $t0, -3116($fp)
	li $t0, 6
	sw $t0, -3120($fp)
	lw $t0, -3120($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3124($fp)
	lw $t0, -3116($fp)
	lw $t1, -3124($fp)
	add $t0, $t0, $t1
	sw $t0, -3128($fp)
	lw $t0, -3112($fp)
	lw $t1, -3128($fp)
	sw $t0, 0($t1)
	lw $t0, -3128($fp)
	lw $t1, 0($t0)
	sw $t1, -3132($fp)
	li $t0, 19719
	sw $t0, -3136($fp)
	addi $t0, $fp, -2664
	sw $t0, -3140($fp)
	li $t0, 7
	sw $t0, -3144($fp)
	lw $t0, -3144($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3148($fp)
	lw $t0, -3140($fp)
	lw $t1, -3148($fp)
	add $t0, $t0, $t1
	sw $t0, -3152($fp)
	lw $t0, -3136($fp)
	lw $t1, -3152($fp)
	sw $t0, 0($t1)
	lw $t0, -3152($fp)
	lw $t1, 0($t0)
	sw $t1, -3156($fp)
	li $t0, 3127
	sw $t0, -3160($fp)
	addi $t0, $fp, -2664
	sw $t0, -3164($fp)
	li $t0, 8
	sw $t0, -3168($fp)
	lw $t0, -3168($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3172($fp)
	lw $t0, -3164($fp)
	lw $t1, -3172($fp)
	add $t0, $t0, $t1
	sw $t0, -3176($fp)
	lw $t0, -3160($fp)
	lw $t1, -3176($fp)
	sw $t0, 0($t1)
	lw $t0, -3176($fp)
	lw $t1, 0($t0)
	sw $t1, -3180($fp)
	li $t0, 0
	sw $t0, -3184($fp)
	jal f10
	sw $v0, -3188($fp)
	addi $sp, $sp, 4
	li $t0, 18822
	sw $t0, -3192($fp)
	lw $t1, -3188($fp)
	lw $t2, -3192($fp)
	bgt $t1, $t2, label680
	j label681
label680:
	li $t0, 1
	sw $t0, -3184($fp)
label681:
	addi $t0, $fp, -2628
	sw $t0, -3196($fp)
	li $t0, 9
	sw $t0, -3200($fp)
	li $t0, 4
	lw $t1, -3200($fp)
	mul $t0, $t0, $t1
	sw $t0, -3204($fp)
	lw $t0, -3204($fp)
	lw $t1, -3196($fp)
	add $t0, $t0, $t1
	sw $t0, -3208($fp)
	lw $t0, -3208($fp)
	lw $t1, 0($t0)
	sw $t1, -3212($fp)
	li $t0, 0
	lw $t1, -3212($fp)
	sub $t0, $t0, $t1
	sw $t0, -3216($fp)
	li $t0, 0
	sw $t0, -3220($fp)
	addi $t0, $fp, -124
	sw $t0, -3224($fp)
	lw $t0, -1936($fp)
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
	li $t0, 56838
	sw $t0, -3244($fp)
	lw $t1, -3240($fp)
	lw $t2, -3244($fp)
	ble $t1, $t2, label682
	j label683
label682:
	li $t0, 1
	sw $t0, -3220($fp)
label683:
	li $t0, 0
	sw $t0, -3248($fp)
	li $t0, 51185
	sw $t0, -3252($fp)
	li $t0, 14523
	sw $t0, -3256($fp)
	lw $t1, -3252($fp)
	lw $t2, -3256($fp)
	bgt $t1, $t2, label684
	j label686
label686:
	lw $t0, -1888($fp)
	sw $t0, -3260($fp)
	lw $t1, -3260($fp)
	li $t2, 0
	bne $t1, $t2, label684
	j label685
label684:
	li $t0, 1
	sw $t0, -3248($fp)
label685:
	addi $sp, $sp, -4
	lw $t0, -3184($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3216($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3220($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3248($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -3264($fp)
	addi $sp, $sp, 20
	lw $t1, -3264($fp)
	li $t2, 0
	bne $t1, $t2, label678
	j label677
label677:
label687:
	li $t0, 5333
	sw $t0, -3268($fp)
	li $t0, 0
	sw $t0, -3272($fp)
	li $t0, 65227
	sw $t0, -3276($fp)
	lw $t1, -3276($fp)
	li $t2, 0
	bne $t1, $t2, label692
	j label691
label691:
	li $t0, 1
	sw $t0, -3272($fp)
label692:
	lw $t0, -3268($fp)
	lw $t1, -3272($fp)
	mul $t0, $t0, $t1
	sw $t0, -3280($fp)
	li $t0, 52707
	sw $t0, -3284($fp)
	li $t0, 0
	lw $t1, -3284($fp)
	sub $t0, $t0, $t1
	sw $t0, -3288($fp)
	lw $t0, -3280($fp)
	lw $t1, -3288($fp)
	add $t0, $t0, $t1
	sw $t0, -3292($fp)
	lw $t1, -3292($fp)
	li $t2, 0
	bne $t1, $t2, label688
	j label690
label690:
	lw $t0, -472($fp)
	sw $t0, -3296($fp)
	lw $t0, -1864($fp)
	sw $t0, -3300($fp)
	lw $t0, -3296($fp)
	lw $t1, -3300($fp)
	mul $t0, $t0, $t1
	sw $t0, -3304($fp)
	li $t0, 0
	sw $t0, -3308($fp)
	lw $t0, -2056($fp)
	sw $t0, -3312($fp)
	lw $t0, -2056($fp)
	sw $t0, -3316($fp)
	lw $t0, -3312($fp)
	lw $t1, -3316($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3320($fp)
	li $t0, 60232
	sw $t0, -3324($fp)
	lw $t1, -3320($fp)
	lw $t2, -3324($fp)
	bne $t1, $t2, label693
	j label694
label693:
	li $t0, 1
	sw $t0, -3308($fp)
label694:
	li $t0, 0
	sw $t0, -3328($fp)
	lw $t0, -2936($fp)
	sw $t0, -3332($fp)
	lw $t1, -3332($fp)
	li $t2, 0
	bne $t1, $t2, label698
	j label696
label698:
	li $t0, 21964
	sw $t0, -3336($fp)
	lw $t1, -3336($fp)
	li $t2, 0
	bne $t1, $t2, label697
	j label696
label697:
	li $t0, 32845
	sw $t0, -3340($fp)
	lw $t1, -3340($fp)
	li $t2, 0
	bne $t1, $t2, label695
	j label696
label695:
	li $t0, 1
	sw $t0, -3328($fp)
label696:
	li $t0, 0
	sw $t0, -3344($fp)
	li $t0, 0
	sw $t0, -3348($fp)
	lw $t0, 4($fp)
	sw $t0, -3352($fp)
	li $t0, 54897
	sw $t0, -3356($fp)
	lw $t1, -3352($fp)
	lw $t2, -3356($fp)
	ble $t1, $t2, label701
	j label702
label701:
	li $t0, 1
	sw $t0, -3348($fp)
label702:
	li $t0, 44000
	sw $t0, -3360($fp)
	lw $t1, -3348($fp)
	lw $t2, -3360($fp)
	bne $t1, $t2, label699
	j label700
label699:
	li $t0, 1
	sw $t0, -3344($fp)
label700:
	li $t0, 0
	sw $t0, -3364($fp)
	li $t0, 0
	sw $t0, -3368($fp)
	li $t0, 42145
	sw $t0, -3372($fp)
	li $t0, 0
	lw $t1, -3372($fp)
	sub $t0, $t0, $t1
	sw $t0, -3376($fp)
	lw $t1, -3376($fp)
	li $t2, 0
	bne $t1, $t2, label707
	j label706
label707:
	li $t0, 27363
	sw $t0, -3380($fp)
	lw $t1, -3380($fp)
	li $t2, 0
	bne $t1, $t2, label705
	j label706
label705:
	li $t0, 1
	sw $t0, -3368($fp)
label706:
	lw $t0, -2924($fp)
	sw $t0, -3384($fp)
	lw $t0, -3384($fp)
	sw $t0, -1900($fp)
	lw $t0, -1900($fp)
	sw $t0, -3388($fp)
	addi $sp, $sp, -4
	lw $t0, -3368($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3388($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -3392($fp)
	addi $sp, $sp, 12
	lw $t1, -3392($fp)
	li $t2, 0
	bne $t1, $t2, label704
	j label703
label703:
	li $t0, 1
	sw $t0, -3364($fp)
label704:
	lw $t0, -2080($fp)
	sw $t0, -3396($fp)
	lw $t0, -3396($fp)
	sw $t0, -1912($fp)
	lw $t0, -1912($fp)
	sw $t0, -3400($fp)
	addi $sp, $sp, -4
	lw $t0, -3308($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3344($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3364($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3400($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -3404($fp)
	addi $sp, $sp, 24
	lw $t1, -3304($fp)
	lw $t2, -3404($fp)
	blt $t1, $t2, label688
	j label689
label688:
	addi $t0, $fp, -152
	sw $t0, -3408($fp)
	addi $t0, $fp, -2628
	sw $t0, -3412($fp)
	lw $t0, -1636($fp)
	sw $t0, -3416($fp)
	li $t0, 4
	lw $t1, -3416($fp)
	mul $t0, $t0, $t1
	sw $t0, -3420($fp)
	lw $t0, -3420($fp)
	lw $t1, -3412($fp)
	add $t0, $t0, $t1
	sw $t0, -3424($fp)
	lw $t0, -3424($fp)
	lw $t1, 0($t0)
	sw $t1, -3428($fp)
	lw $t0, -2044($fp)
	sw $t0, -3432($fp)
	li $t0, 0
	lw $t1, -3432($fp)
	sub $t0, $t0, $t1
	sw $t0, -3436($fp)
	lw $t0, -3428($fp)
	lw $t1, -3436($fp)
	add $t0, $t0, $t1
	sw $t0, -3440($fp)
	li $t0, 4
	lw $t1, -3440($fp)
	mul $t0, $t0, $t1
	sw $t0, -3444($fp)
	lw $t0, -3444($fp)
	lw $t1, -3408($fp)
	add $t0, $t0, $t1
	sw $t0, -3448($fp)
	lw $t0, -3448($fp)
	lw $t1, 0($t0)
	sw $t1, -3452($fp)
	lw $t1, -3452($fp)
	li $t2, 0
	bne $t1, $t2, label708
	j label709
label708:
	lw $t0, -2200($fp)
	sw $t0, -3456($fp)
	li $t0, 0
	sw $t0, -3460($fp)
	li $t0, 60119
	sw $t0, -3464($fp)
	li $t0, 0
	sw $t0, -3468($fp)
	li $t0, 59592
	sw $t0, -3472($fp)
	lw $t0, -1840($fp)
	sw $t0, -3476($fp)
	lw $t1, -3472($fp)
	lw $t2, -3476($fp)
	ble $t1, $t2, label713
	j label715
label715:
	lw $t0, -1888($fp)
	sw $t0, -3480($fp)
	lw $t1, -3480($fp)
	li $t2, 0
	bne $t1, $t2, label713
	j label714
label713:
	li $t0, 1
	sw $t0, -3468($fp)
label714:
	addi $sp, $sp, -4
	lw $t0, -3464($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3468($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -3484($fp)
	addi $sp, $sp, 12
	lw $t1, -3484($fp)
	li $t2, 0
	bne $t1, $t2, label712
	j label711
label711:
	li $t0, 1
	sw $t0, -3460($fp)
label712:
	lw $t0, -3456($fp)
	lw $t1, -3460($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3488($fp)
	lw $ra, -4($fp)
	lw $v0, -3488($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label710
label709:
label716:
	li $t0, 54285
	sw $t0, -3492($fp)
	li $t0, 0
	sw $t0, -3496($fp)
	lw $t0, -1840($fp)
	sw $t0, -3500($fp)
	lw $t1, -3500($fp)
	li $t2, 0
	bne $t1, $t2, label719
	j label720
label719:
	li $t0, 1
	sw $t0, -3496($fp)
label720:
	li $t0, 0
	lw $t1, -3496($fp)
	sub $t0, $t0, $t1
	sw $t0, -3504($fp)
	lw $t0, -3492($fp)
	lw $t1, -3504($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3508($fp)
	lw $t1, -3508($fp)
	li $t2, 0
	bne $t1, $t2, label717
	j label718
label717:
	li $t0, 3482
	sw $t0, -3512($fp)
	lw $t0, -3512($fp)
	sw $t0, -3516($fp)
	lw $t0, -3516($fp)
	sw $t0, -3520($fp)
	li $t0, 0
	sw $t0, -3524($fp)
	addi $t0, $fp, -24
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
	lw $t0, -2560($fp)
	sw $t0, -3548($fp)
	lw $t0, -3544($fp)
	lw $t1, -3548($fp)
	mul $t0, $t0, $t1
	sw $t0, -3552($fp)
	lw $t1, -3552($fp)
	li $t2, 0
	bne $t1, $t2, label721
	j label723
label723:
	li $t0, 0
	sw $t0, -3556($fp)
	lw $t0, 4($fp)
	sw $t0, -3560($fp)
	lw $t1, -3560($fp)
	li $t2, 0
	bne $t1, $t2, label724
	j label725
label724:
	li $t0, 1
	sw $t0, -3556($fp)
label725:
	li $t0, 53719
	sw $t0, -3564($fp)
	lw $t1, -3556($fp)
	lw $t2, -3564($fp)
	bge $t1, $t2, label721
	j label722
label721:
	li $t0, 1
	sw $t0, -3524($fp)
label722:
	lw $t0, -3516($fp)
	sw $t0, -3568($fp)
	li $t0, 0
	lw $t1, -3568($fp)
	sub $t0, $t0, $t1
	sw $t0, -3572($fp)
	lw $t0, -3572($fp)
	sw $t0, -1636($fp)
	lw $t0, -1636($fp)
	sw $t0, -3576($fp)
	j label716
label718:
label710:
	j label687
label689:
	j label679
label678:
	li $t0, 0
	sw $t0, -3580($fp)
	lw $t0, -472($fp)
	sw $t0, -3584($fp)
	lw $t1, -3584($fp)
	li $t2, 0
	bne $t1, $t2, label730
	j label729
label729:
	li $t0, 1
	sw $t0, -3580($fp)
label730:
	li $t0, 0
	lw $t1, -3580($fp)
	sub $t0, $t0, $t1
	sw $t0, -3588($fp)
	lw $t0, -1900($fp)
	sw $t0, -3592($fp)
	lw $t0, -3588($fp)
	lw $t1, -3592($fp)
	sub $t0, $t0, $t1
	sw $t0, -3596($fp)
	lw $t1, -3596($fp)
	li $t2, 0
	bne $t1, $t2, label726
	j label727
label726:
	lw $t0, -1336($fp)
	sw $t0, -3600($fp)
	li $t0, 0
	sw $t0, -3604($fp)
	lw $t0, -448($fp)
	sw $t0, -3608($fp)
	li $t0, 50954
	sw $t0, -3612($fp)
	lw $t1, -3608($fp)
	lw $t2, -3612($fp)
	bne $t1, $t2, label733
	j label732
label733:
	li $t0, 51082
	sw $t0, -3616($fp)
	lw $t1, -3616($fp)
	li $t2, 0
	bne $t1, $t2, label731
	j label732
label731:
	li $t0, 1
	sw $t0, -3604($fp)
label732:
	li $t0, 0
	sw $t0, -3620($fp)
	addi $t0, $fp, -240
	sw $t0, -3624($fp)
	li $t0, 1
	sw $t0, -3628($fp)
	li $t0, 4
	lw $t1, -3628($fp)
	mul $t0, $t0, $t1
	sw $t0, -3632($fp)
	lw $t0, -3632($fp)
	lw $t1, -3624($fp)
	add $t0, $t0, $t1
	sw $t0, -3636($fp)
	lw $t0, -3636($fp)
	lw $t1, 0($t0)
	sw $t1, -3640($fp)
	lw $t0, -1636($fp)
	sw $t0, -3644($fp)
	lw $t1, -3640($fp)
	lw $t2, -3644($fp)
	bne $t1, $t2, label734
	j label735
label734:
	li $t0, 1
	sw $t0, -3620($fp)
label735:
	addi $sp, $sp, -4
	lw $t0, -3604($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3620($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -3648($fp)
	addi $sp, $sp, 12
	li $t0, 31055
	sw $t0, -3652($fp)
	li $t0, 0
	lw $t1, -3652($fp)
	sub $t0, $t0, $t1
	sw $t0, -3656($fp)
	lw $t0, -3648($fp)
	lw $t1, -3656($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3660($fp)
	lw $t0, -3600($fp)
	lw $t1, -3660($fp)
	sub $t0, $t0, $t1
	sw $t0, -3664($fp)
	j label728
label727:
label736:
	li $t0, 38907
	sw $t0, -3668($fp)
	lw $t1, -3668($fp)
	li $t2, 0
	bne $t1, $t2, label737
	j label738
label737:
	lw $t0, -520($fp)
	sw $t0, -3672($fp)
	addi $t0, $fp, -188
	sw $t0, -3676($fp)
	li $t0, 0
	sw $t0, -3680($fp)
	li $t0, 5266
	sw $t0, -3684($fp)
	li $t0, 34182
	sw $t0, -3688($fp)
	lw $t1, -3684($fp)
	lw $t2, -3688($fp)
	bne $t1, $t2, label739
	j label740
label739:
	li $t0, 1
	sw $t0, -3680($fp)
label740:
	li $t0, 4
	lw $t1, -3680($fp)
	mul $t0, $t0, $t1
	sw $t0, -3692($fp)
	lw $t0, -3692($fp)
	lw $t1, -3676($fp)
	add $t0, $t0, $t1
	sw $t0, -3696($fp)
	lw $t0, -3696($fp)
	lw $t1, 0($t0)
	sw $t1, -3700($fp)
	lw $t0, -3672($fp)
	lw $t1, -3700($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3704($fp)
	lw $ra, -4($fp)
	lw $v0, -3704($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label736
label738:
label728:
label679:
	li $t0, 24556
	sw $t0, -3772($fp)
	addi $t0, $fp, -3744
	sw $t0, -3776($fp)
	li $t0, 0
	sw $t0, -3780($fp)
	lw $t0, -3780($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3784($fp)
	lw $t0, -3776($fp)
	lw $t1, -3784($fp)
	add $t0, $t0, $t1
	sw $t0, -3788($fp)
	lw $t0, -3772($fp)
	lw $t1, -3788($fp)
	sw $t0, 0($t1)
	lw $t0, -3788($fp)
	lw $t1, 0($t0)
	sw $t1, -3792($fp)
	li $t0, 19789
	sw $t0, -3796($fp)
	addi $t0, $fp, -3744
	sw $t0, -3800($fp)
	li $t0, 1
	sw $t0, -3804($fp)
	lw $t0, -3804($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3808($fp)
	lw $t0, -3800($fp)
	lw $t1, -3808($fp)
	add $t0, $t0, $t1
	sw $t0, -3812($fp)
	lw $t0, -3796($fp)
	lw $t1, -3812($fp)
	sw $t0, 0($t1)
	lw $t0, -3812($fp)
	lw $t1, 0($t0)
	sw $t1, -3816($fp)
	li $t0, 25484
	sw $t0, -3820($fp)
	addi $t0, $fp, -3744
	sw $t0, -3824($fp)
	li $t0, 2
	sw $t0, -3828($fp)
	lw $t0, -3828($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3832($fp)
	lw $t0, -3824($fp)
	lw $t1, -3832($fp)
	add $t0, $t0, $t1
	sw $t0, -3836($fp)
	lw $t0, -3820($fp)
	lw $t1, -3836($fp)
	sw $t0, 0($t1)
	lw $t0, -3836($fp)
	lw $t1, 0($t0)
	sw $t1, -3840($fp)
	li $t0, 43282
	sw $t0, -3844($fp)
	addi $t0, $fp, -3744
	sw $t0, -3848($fp)
	li $t0, 3
	sw $t0, -3852($fp)
	lw $t0, -3852($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3856($fp)
	lw $t0, -3848($fp)
	lw $t1, -3856($fp)
	add $t0, $t0, $t1
	sw $t0, -3860($fp)
	lw $t0, -3844($fp)
	lw $t1, -3860($fp)
	sw $t0, 0($t1)
	lw $t0, -3860($fp)
	lw $t1, 0($t0)
	sw $t1, -3864($fp)
	li $t0, 60936
	sw $t0, -3868($fp)
	addi $t0, $fp, -3744
	sw $t0, -3872($fp)
	li $t0, 4
	sw $t0, -3876($fp)
	lw $t0, -3876($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3880($fp)
	lw $t0, -3872($fp)
	lw $t1, -3880($fp)
	add $t0, $t0, $t1
	sw $t0, -3884($fp)
	lw $t0, -3868($fp)
	lw $t1, -3884($fp)
	sw $t0, 0($t1)
	lw $t0, -3884($fp)
	lw $t1, 0($t0)
	sw $t1, -3888($fp)
	li $t0, 44306
	sw $t0, -3892($fp)
	addi $t0, $fp, -3744
	sw $t0, -3896($fp)
	li $t0, 5
	sw $t0, -3900($fp)
	lw $t0, -3900($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3904($fp)
	lw $t0, -3896($fp)
	lw $t1, -3904($fp)
	add $t0, $t0, $t1
	sw $t0, -3908($fp)
	lw $t0, -3892($fp)
	lw $t1, -3908($fp)
	sw $t0, 0($t1)
	lw $t0, -3908($fp)
	lw $t1, 0($t0)
	sw $t1, -3912($fp)
	li $t0, 48615
	sw $t0, -3916($fp)
	addi $t0, $fp, -3744
	sw $t0, -3920($fp)
	li $t0, 6
	sw $t0, -3924($fp)
	lw $t0, -3924($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3928($fp)
	lw $t0, -3920($fp)
	lw $t1, -3928($fp)
	add $t0, $t0, $t1
	sw $t0, -3932($fp)
	lw $t0, -3916($fp)
	lw $t1, -3932($fp)
	sw $t0, 0($t1)
	lw $t0, -3932($fp)
	lw $t1, 0($t0)
	sw $t1, -3936($fp)
	li $t0, 60627
	sw $t0, -3940($fp)
	addi $t0, $fp, -3744
	sw $t0, -3944($fp)
	li $t0, 7
	sw $t0, -3948($fp)
	lw $t0, -3948($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3952($fp)
	lw $t0, -3944($fp)
	lw $t1, -3952($fp)
	add $t0, $t0, $t1
	sw $t0, -3956($fp)
	lw $t0, -3940($fp)
	lw $t1, -3956($fp)
	sw $t0, 0($t1)
	lw $t0, -3956($fp)
	lw $t1, 0($t0)
	sw $t1, -3960($fp)
	li $t0, 31477
	sw $t0, -3964($fp)
	addi $t0, $fp, -3744
	sw $t0, -3968($fp)
	li $t0, 8
	sw $t0, -3972($fp)
	lw $t0, -3972($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3976($fp)
	lw $t0, -3968($fp)
	lw $t1, -3976($fp)
	add $t0, $t0, $t1
	sw $t0, -3980($fp)
	lw $t0, -3964($fp)
	lw $t1, -3980($fp)
	sw $t0, 0($t1)
	lw $t0, -3980($fp)
	lw $t1, 0($t0)
	sw $t1, -3984($fp)
	li $t0, 25225
	sw $t0, -3988($fp)
	addi $t0, $fp, -3744
	sw $t0, -3992($fp)
	li $t0, 9
	sw $t0, -3996($fp)
	lw $t0, -3996($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4000($fp)
	lw $t0, -3992($fp)
	lw $t1, -4000($fp)
	add $t0, $t0, $t1
	sw $t0, -4004($fp)
	lw $t0, -3988($fp)
	lw $t1, -4004($fp)
	sw $t0, 0($t1)
	lw $t0, -4004($fp)
	lw $t1, 0($t0)
	sw $t1, -4008($fp)
	li $t0, 22455
	sw $t0, -4012($fp)
	lw $t0, -4012($fp)
	sw $t0, -4016($fp)
	lw $t0, -4016($fp)
	sw $t0, -4020($fp)
	li $t0, 20838
	sw $t0, -4024($fp)
	lw $t0, -4024($fp)
	sw $t0, -4028($fp)
	lw $t0, -4028($fp)
	sw $t0, -4032($fp)
	li $t0, 3689
	sw $t0, -4036($fp)
	addi $t0, $fp, -3768
	sw $t0, -4040($fp)
	li $t0, 0
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4048($fp)
	lw $t0, -4040($fp)
	lw $t1, -4048($fp)
	add $t0, $t0, $t1
	sw $t0, -4052($fp)
	lw $t0, -4036($fp)
	lw $t1, -4052($fp)
	sw $t0, 0($t1)
	lw $t0, -4052($fp)
	lw $t1, 0($t0)
	sw $t1, -4056($fp)
	li $t0, 44419
	sw $t0, -4060($fp)
	addi $t0, $fp, -3768
	sw $t0, -4064($fp)
	li $t0, 1
	sw $t0, -4068($fp)
	lw $t0, -4068($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4072($fp)
	lw $t0, -4064($fp)
	lw $t1, -4072($fp)
	add $t0, $t0, $t1
	sw $t0, -4076($fp)
	lw $t0, -4060($fp)
	lw $t1, -4076($fp)
	sw $t0, 0($t1)
	lw $t0, -4076($fp)
	lw $t1, 0($t0)
	sw $t1, -4080($fp)
	li $t0, 53683
	sw $t0, -4084($fp)
	addi $t0, $fp, -3768
	sw $t0, -4088($fp)
	li $t0, 2
	sw $t0, -4092($fp)
	lw $t0, -4092($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4096($fp)
	lw $t0, -4088($fp)
	lw $t1, -4096($fp)
	add $t0, $t0, $t1
	sw $t0, -4100($fp)
	lw $t0, -4084($fp)
	lw $t1, -4100($fp)
	sw $t0, 0($t1)
	lw $t0, -4100($fp)
	lw $t1, 0($t0)
	sw $t1, -4104($fp)
	li $t0, 63921
	sw $t0, -4108($fp)
	addi $t0, $fp, -3768
	sw $t0, -4112($fp)
	li $t0, 3
	sw $t0, -4116($fp)
	lw $t0, -4116($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4120($fp)
	lw $t0, -4112($fp)
	lw $t1, -4120($fp)
	add $t0, $t0, $t1
	sw $t0, -4124($fp)
	lw $t0, -4108($fp)
	lw $t1, -4124($fp)
	sw $t0, 0($t1)
	lw $t0, -4124($fp)
	lw $t1, 0($t0)
	sw $t1, -4128($fp)
	li $t0, 38476
	sw $t0, -4132($fp)
	addi $t0, $fp, -3768
	sw $t0, -4136($fp)
	li $t0, 4
	sw $t0, -4140($fp)
	lw $t0, -4140($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4144($fp)
	lw $t0, -4136($fp)
	lw $t1, -4144($fp)
	add $t0, $t0, $t1
	sw $t0, -4148($fp)
	lw $t0, -4132($fp)
	lw $t1, -4148($fp)
	sw $t0, 0($t1)
	lw $t0, -4148($fp)
	lw $t1, 0($t0)
	sw $t1, -4152($fp)
	li $t0, 48267
	sw $t0, -4156($fp)
	addi $t0, $fp, -3768
	sw $t0, -4160($fp)
	li $t0, 5
	sw $t0, -4164($fp)
	lw $t0, -4164($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -4168($fp)
	lw $t0, -4160($fp)
	lw $t1, -4168($fp)
	add $t0, $t0, $t1
	sw $t0, -4172($fp)
	lw $t0, -4156($fp)
	lw $t1, -4172($fp)
	sw $t0, 0($t1)
	lw $t0, -4172($fp)
	lw $t1, 0($t0)
	sw $t1, -4176($fp)
	li $t0, 52670
	sw $t0, -4180($fp)
	addi $t0, $fp, -3744
	sw $t0, -4184($fp)
	li $t0, 0
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
	addi $t0, $fp, -3744
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
	lw $t0, -4220($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3744
	sw $t0, -4224($fp)
	li $t0, 2
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
	lw $t0, -4240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3744
	sw $t0, -4244($fp)
	li $t0, 3
	sw $t0, -4248($fp)
	li $t0, 4
	lw $t1, -4248($fp)
	mul $t0, $t0, $t1
	sw $t0, -4252($fp)
	lw $t0, -4252($fp)
	lw $t1, -4244($fp)
	add $t0, $t0, $t1
	sw $t0, -4256($fp)
	lw $t0, -4256($fp)
	lw $t1, 0($t0)
	sw $t1, -4260($fp)
	lw $t0, -4260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3744
	sw $t0, -4264($fp)
	li $t0, 4
	sw $t0, -4268($fp)
	li $t0, 4
	lw $t1, -4268($fp)
	mul $t0, $t0, $t1
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	lw $t1, -4264($fp)
	add $t0, $t0, $t1
	sw $t0, -4276($fp)
	lw $t0, -4276($fp)
	lw $t1, 0($t0)
	sw $t1, -4280($fp)
	lw $t0, -4280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3744
	sw $t0, -4284($fp)
	li $t0, 5
	sw $t0, -4288($fp)
	li $t0, 4
	lw $t1, -4288($fp)
	mul $t0, $t0, $t1
	sw $t0, -4292($fp)
	lw $t0, -4292($fp)
	lw $t1, -4284($fp)
	add $t0, $t0, $t1
	sw $t0, -4296($fp)
	lw $t0, -4296($fp)
	lw $t1, 0($t0)
	sw $t1, -4300($fp)
	lw $t0, -4300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3744
	sw $t0, -4304($fp)
	li $t0, 6
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
	lw $t0, -4320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3744
	sw $t0, -4324($fp)
	li $t0, 7
	sw $t0, -4328($fp)
	li $t0, 4
	lw $t1, -4328($fp)
	mul $t0, $t0, $t1
	sw $t0, -4332($fp)
	lw $t0, -4332($fp)
	lw $t1, -4324($fp)
	add $t0, $t0, $t1
	sw $t0, -4336($fp)
	lw $t0, -4336($fp)
	lw $t1, 0($t0)
	sw $t1, -4340($fp)
	lw $t0, -4340($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3744
	sw $t0, -4344($fp)
	li $t0, 8
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
	addi $t0, $fp, -3744
	sw $t0, -4364($fp)
	li $t0, 9
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
	lw $t0, -4016($fp)
	sw $t0, -4384($fp)
	lw $t0, -4384($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4028($fp)
	sw $t0, -4388($fp)
	lw $t0, -4388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3768
	sw $t0, -4392($fp)
	li $t0, 0
	sw $t0, -4396($fp)
	li $t0, 4
	lw $t1, -4396($fp)
	mul $t0, $t0, $t1
	sw $t0, -4400($fp)
	lw $t0, -4400($fp)
	lw $t1, -4392($fp)
	add $t0, $t0, $t1
	sw $t0, -4404($fp)
	lw $t0, -4404($fp)
	lw $t1, 0($t0)
	sw $t1, -4408($fp)
	lw $t0, -4408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3768
	sw $t0, -4412($fp)
	li $t0, 1
	sw $t0, -4416($fp)
	li $t0, 4
	lw $t1, -4416($fp)
	mul $t0, $t0, $t1
	sw $t0, -4420($fp)
	lw $t0, -4420($fp)
	lw $t1, -4412($fp)
	add $t0, $t0, $t1
	sw $t0, -4424($fp)
	lw $t0, -4424($fp)
	lw $t1, 0($t0)
	sw $t1, -4428($fp)
	lw $t0, -4428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3768
	sw $t0, -4432($fp)
	li $t0, 2
	sw $t0, -4436($fp)
	li $t0, 4
	lw $t1, -4436($fp)
	mul $t0, $t0, $t1
	sw $t0, -4440($fp)
	lw $t0, -4440($fp)
	lw $t1, -4432($fp)
	add $t0, $t0, $t1
	sw $t0, -4444($fp)
	lw $t0, -4444($fp)
	lw $t1, 0($t0)
	sw $t1, -4448($fp)
	lw $t0, -4448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3768
	sw $t0, -4452($fp)
	li $t0, 3
	sw $t0, -4456($fp)
	li $t0, 4
	lw $t1, -4456($fp)
	mul $t0, $t0, $t1
	sw $t0, -4460($fp)
	lw $t0, -4460($fp)
	lw $t1, -4452($fp)
	add $t0, $t0, $t1
	sw $t0, -4464($fp)
	lw $t0, -4464($fp)
	lw $t1, 0($t0)
	sw $t1, -4468($fp)
	lw $t0, -4468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3768
	sw $t0, -4472($fp)
	li $t0, 4
	sw $t0, -4476($fp)
	li $t0, 4
	lw $t1, -4476($fp)
	mul $t0, $t0, $t1
	sw $t0, -4480($fp)
	lw $t0, -4480($fp)
	lw $t1, -4472($fp)
	add $t0, $t0, $t1
	sw $t0, -4484($fp)
	lw $t0, -4484($fp)
	lw $t1, 0($t0)
	sw $t1, -4488($fp)
	lw $t0, -4488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -3768
	sw $t0, -4492($fp)
	li $t0, 5
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
	lw $t0, -4508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2200($fp)
	sw $t0, -4512($fp)
	addi $t0, $fp, -3744
	sw $t0, -4516($fp)
	li $t0, 0
	sw $t0, -4520($fp)
	li $t0, 41958
	sw $t0, -4524($fp)
	lw $t1, -4524($fp)
	li $t2, 0
	bne $t1, $t2, label742
	j label741
label741:
	li $t0, 1
	sw $t0, -4520($fp)
label742:
	li $t0, 4
	lw $t1, -4520($fp)
	mul $t0, $t0, $t1
	sw $t0, -4528($fp)
	lw $t0, -4528($fp)
	lw $t1, -4516($fp)
	add $t0, $t0, $t1
	sw $t0, -4532($fp)
	lw $t0, -4532($fp)
	lw $t1, 0($t0)
	sw $t1, -4536($fp)
	lw $t0, -4512($fp)
	lw $t1, -4536($fp)
	add $t0, $t0, $t1
	sw $t0, -4540($fp)
	lw $ra, -4($fp)
	lw $v0, -4540($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -4544($fp)
	addi $t0, $fp, -2664
	sw $t0, -4548($fp)
	li $t0, 0
	sw $t0, -4552($fp)
	lw $t0, -1372($fp)
	sw $t0, -4556($fp)
	lw $t1, -4556($fp)
	li $t2, 0
	bne $t1, $t2, label746
	j label748
label748:
	li $t0, 60321
	sw $t0, -4560($fp)
	lw $t1, -4560($fp)
	li $t2, 0
	bne $t1, $t2, label746
	j label747
label746:
	li $t0, 1
	sw $t0, -4552($fp)
label747:
	li $t0, 4
	lw $t1, -4552($fp)
	mul $t0, $t0, $t1
	sw $t0, -4564($fp)
	lw $t0, -4564($fp)
	lw $t1, -4548($fp)
	add $t0, $t0, $t1
	sw $t0, -4568($fp)
	lw $t0, -4568($fp)
	lw $t1, 0($t0)
	sw $t1, -4572($fp)
	addi $t0, $fp, -24
	sw $t0, -4576($fp)
	li $t0, 1
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
	lw $t0, -4572($fp)
	lw $t1, -4592($fp)
	mul $t0, $t0, $t1
	sw $t0, -4596($fp)
	lw $t1, -4596($fp)
	li $t2, 0
	bne $t1, $t2, label743
	j label745
label745:
	li $t0, 13487
	sw $t0, -4600($fp)
	lw $t0, -2212($fp)
	sw $t0, -4604($fp)
	lw $t0, -4600($fp)
	lw $t1, -4604($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4608($fp)
	li $t0, 30242
	sw $t0, -4612($fp)
	li $t0, 16995
	sw $t0, -4616($fp)
	lw $t0, -4612($fp)
	lw $t1, -4616($fp)
	mul $t0, $t0, $t1
	sw $t0, -4620($fp)
	lw $t0, -1312($fp)
	sw $t0, -4624($fp)
	lw $t0, -4620($fp)
	lw $t1, -4624($fp)
	mul $t0, $t0, $t1
	sw $t0, -4628($fp)
	lw $t0, -4028($fp)
	sw $t0, -4632($fp)
	lw $t0, -424($fp)
	sw $t0, -4636($fp)
	lw $t0, -4632($fp)
	lw $t1, -4636($fp)
	add $t0, $t0, $t1
	sw $t0, -4640($fp)
	lw $t0, -2960($fp)
	sw $t0, -4644($fp)
	lw $t0, -4640($fp)
	lw $t1, -4644($fp)
	sub $t0, $t0, $t1
	sw $t0, -4648($fp)
	li $t0, 0
	sw $t0, -4652($fp)
	li $t0, 0
	sw $t0, -4656($fp)
	li $t0, 24976
	sw $t0, -4660($fp)
	li $t0, 48349
	sw $t0, -4664($fp)
	lw $t0, -4660($fp)
	lw $t1, -4664($fp)
	mul $t0, $t0, $t1
	sw $t0, -4668($fp)
	lw $t0, -1900($fp)
	sw $t0, -4672($fp)
	lw $t1, -4668($fp)
	lw $t2, -4672($fp)
	blt $t1, $t2, label752
	j label753
label752:
	li $t0, 1
	sw $t0, -4656($fp)
label753:
	li $t0, 0
	sw $t0, -4676($fp)
	li $t0, 17294
	sw $t0, -4680($fp)
	li $t0, 15559
	sw $t0, -4684($fp)
	lw $t1, -4680($fp)
	lw $t2, -4684($fp)
	ble $t1, $t2, label754
	j label755
label754:
	li $t0, 1
	sw $t0, -4676($fp)
label755:
	addi $sp, $sp, -4
	lw $t0, -4656($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4676($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4688($fp)
	addi $sp, $sp, 12
	lw $t1, -4688($fp)
	li $t2, 0
	bne $t1, $t2, label751
	j label750
label751:
	li $t0, 54467
	sw $t0, -4692($fp)
	lw $t1, -4692($fp)
	li $t2, 0
	bne $t1, $t2, label749
	j label750
label749:
	li $t0, 1
	sw $t0, -4652($fp)
label750:
	li $t0, 39429
	sw $t0, -4696($fp)
	addi $sp, $sp, -4
	lw $t0, -4608($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4628($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4648($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4652($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4696($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -4700($fp)
	addi $sp, $sp, 24
	lw $t1, -4700($fp)
	li $t2, 0
	bne $t1, $t2, label743
	j label744
label743:
	li $t0, 1
	sw $t0, -4544($fp)
label744:
label756:
	lw $t0, -2080($fp)
	sw $t0, -4704($fp)
	lw $t1, -4704($fp)
	li $t2, 0
	bne $t1, $t2, label757
	j label758
label757:
label759:
	addi $t0, $fp, -3768
	sw $t0, -4708($fp)
	li $t0, 0
	sw $t0, -4712($fp)
	li $t0, 4
	lw $t1, -4712($fp)
	mul $t0, $t0, $t1
	sw $t0, -4716($fp)
	lw $t0, -4716($fp)
	lw $t1, -4708($fp)
	add $t0, $t0, $t1
	sw $t0, -4720($fp)
	lw $t0, -4720($fp)
	lw $t1, 0($t0)
	sw $t1, -4724($fp)
	lw $t1, -4724($fp)
	li $t2, 0
	bne $t1, $t2, label761
	j label760
label760:
	li $t0, 0
	sw $t0, -4728($fp)
	lw $t0, -4016($fp)
	sw $t0, -4732($fp)
	lw $t1, -4732($fp)
	li $t2, 0
	bne $t1, $t2, label763
	j label762
label762:
	li $t0, 1
	sw $t0, -4728($fp)
label763:
	lw $t0, -2092($fp)
	sw $t0, -4736($fp)
	lw $t0, -4728($fp)
	lw $t1, -4736($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4740($fp)
	li $t0, 0
	sw $t0, -4744($fp)
	li $t0, 40523
	sw $t0, -4748($fp)
	lw $t0, -2080($fp)
	sw $t0, -4752($fp)
	li $t0, 39849
	sw $t0, -4756($fp)
	lw $t0, -4752($fp)
	lw $t1, -4756($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4760($fp)
	li $t0, 0
	lw $t1, -4760($fp)
	sub $t0, $t0, $t1
	sw $t0, -4764($fp)
	addi $sp, $sp, -4
	lw $t0, -4748($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4764($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4768($fp)
	addi $sp, $sp, 12
	lw $t1, -4768($fp)
	li $t2, 0
	bne $t1, $t2, label764
	j label766
label766:
	li $t0, 52728
	sw $t0, -4772($fp)
	lw $t1, -4772($fp)
	li $t2, 0
	bne $t1, $t2, label764
	j label765
label764:
	li $t0, 1
	sw $t0, -4744($fp)
label765:
	lw $t0, -2200($fp)
	sw $t0, -4776($fp)
	lw $t0, -4776($fp)
	sw $t0, -4028($fp)
	lw $t0, -4028($fp)
	sw $t0, -4780($fp)
	lw $t0, -436($fp)
	sw $t0, -4784($fp)
	addi $sp, $sp, -4
	lw $t0, -4780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4784($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4788($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -4792($fp)
	li $t0, 45431
	sw $t0, -4796($fp)
	li $t0, 0
	lw $t1, -4796($fp)
	sub $t0, $t0, $t1
	sw $t0, -4800($fp)
	lw $t1, -4800($fp)
	li $t2, 0
	bne $t1, $t2, label769
	j label768
label769:
	li $t0, 21250
	sw $t0, -4804($fp)
	lw $t1, -4804($fp)
	li $t2, 0
	bne $t1, $t2, label767
	j label768
label767:
	li $t0, 1
	sw $t0, -4792($fp)
label768:
	lw $t0, -1276($fp)
	sw $t0, -4808($fp)
	lw $t0, -472($fp)
	sw $t0, -4812($fp)
	lw $t0, -4808($fp)
	lw $t1, -4812($fp)
	add $t0, $t0, $t1
	sw $t0, -4816($fp)
	li $t0, 56769
	sw $t0, -4820($fp)
	lw $t0, -4816($fp)
	lw $t1, -4820($fp)
	add $t0, $t0, $t1
	sw $t0, -4824($fp)
	addi $sp, $sp, -4
	lw $t0, -4740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4792($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4824($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -4828($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -4828($fp)
	sub $t0, $t0, $t1
	sw $t0, -4832($fp)
	j label759
label761:
	j label756
label758:
	li $t0, 65074
	sw $t0, -4836($fp)
	lw $t0, -4836($fp)
	sw $t0, -4840($fp)
	lw $t0, -4840($fp)
	sw $t0, -4844($fp)
	li $t0, 0
	sw $t0, -4848($fp)
	addi $t0, $fp, -296
	sw $t0, -4852($fp)
	lw $t0, 8($fp)
	sw $t0, -4856($fp)
	li $t0, 4
	lw $t1, -4856($fp)
	mul $t0, $t0, $t1
	sw $t0, -4860($fp)
	lw $t0, -4860($fp)
	lw $t1, -4852($fp)
	add $t0, $t0, $t1
	sw $t0, -4864($fp)
	lw $t0, -4864($fp)
	lw $t1, 0($t0)
	sw $t1, -4868($fp)
	lw $t1, -4868($fp)
	li $t2, 0
	bne $t1, $t2, label770
	j label772
label772:
	lw $t0, -1348($fp)
	sw $t0, -4872($fp)
	lw $t1, -4872($fp)
	li $t2, 0
	bne $t1, $t2, label770
	j label771
label770:
	li $t0, 1
	sw $t0, -4848($fp)
label771:
	lw $t0, -4848($fp)
	sw $t0, -436($fp)
	lw $t0, -436($fp)
	sw $t0, -4876($fp)
	li $t0, 0
	sw $t0, -4880($fp)
	li $t0, 62978
	sw $t0, -4884($fp)
	li $t0, 0
	lw $t1, -4884($fp)
	sub $t0, $t0, $t1
	sw $t0, -4888($fp)
	lw $t0, -4840($fp)
	sw $t0, -4892($fp)
	lw $t0, -472($fp)
	sw $t0, -4896($fp)
	lw $t0, -4892($fp)
	lw $t1, -4896($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4900($fp)
	li $t0, 0
	lw $t1, -4900($fp)
	sub $t0, $t0, $t1
	sw $t0, -4904($fp)
	lw $t0, -4888($fp)
	lw $t1, -4904($fp)
	add $t0, $t0, $t1
	sw $t0, -4908($fp)
	lw $t1, -4908($fp)
	li $t2, 0
	bne $t1, $t2, label775
	j label774
label775:
	lw $t0, -1924($fp)
	sw $t0, -4912($fp)
	lw $t1, -4912($fp)
	li $t2, 0
	bne $t1, $t2, label773
	j label774
label773:
	li $t0, 1
	sw $t0, -4880($fp)
label774:
label776:
	li $t0, 8030
	sw $t0, -4916($fp)
	lw $t1, -4916($fp)
	li $t2, 0
	bne $t1, $t2, label777
	j label778
label777:
	lw $t0, -2200($fp)
	sw $t0, -4920($fp)
	addi $t0, $fp, -280
	sw $t0, -4924($fp)
	lw $t0, -2584($fp)
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
	lw $t1, -4920($fp)
	lw $t2, -4940($fp)
	blt $t1, $t2, label779
	j label782
label782:
	li $t0, 3227
	sw $t0, -4944($fp)
	li $t0, 41861
	sw $t0, -4948($fp)
	lw $t0, -4944($fp)
	lw $t1, -4948($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4952($fp)
	li $t0, 61714
	sw $t0, -4956($fp)
	lw $t0, -4952($fp)
	lw $t1, -4956($fp)
	mul $t0, $t0, $t1
	sw $t0, -4960($fp)
	lw $t0, -472($fp)
	sw $t0, -4964($fp)
	li $t0, 1612
	sw $t0, -4968($fp)
	lw $t0, -4964($fp)
	lw $t1, -4968($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4972($fp)
	lw $t0, -4960($fp)
	lw $t1, -4972($fp)
	add $t0, $t0, $t1
	sw $t0, -4976($fp)
	lw $t1, -4976($fp)
	li $t2, 0
	bne $t1, $t2, label779
	j label780
label779:
	li $t0, 14801
	sw $t0, -4980($fp)
	j label781
label780:
	li $t0, 0
	sw $t0, -4984($fp)
	lw $t0, -2200($fp)
	sw $t0, -4988($fp)
	li $t0, 0
	sw $t0, -4992($fp)
	li $t0, 44445
	sw $t0, -4996($fp)
	li $t0, 54282
	sw $t0, -5000($fp)
	lw $t1, -4996($fp)
	lw $t2, -5000($fp)
	bge $t1, $t2, label785
	j label786
label785:
	li $t0, 1
	sw $t0, -4992($fp)
label786:
	lw $t1, -4988($fp)
	lw $t2, -4992($fp)
	bne $t1, $t2, label783
	j label784
label783:
	li $t0, 1
	sw $t0, -4984($fp)
label784:
	lw $t0, -4984($fp)
	sw $t0, -2912($fp)
	lw $t0, -2912($fp)
	sw $t0, -5004($fp)
	lw $ra, -4($fp)
	lw $v0, -5004($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label781:
	j label776
label778:
label787:
	li $t0, 56759
	sw $t0, -5008($fp)
	li $t0, 1
	sw $t0, -5012($fp)
	lw $t0, -5008($fp)
	lw $t1, -5012($fp)
	mul $t0, $t0, $t1
	sw $t0, -5016($fp)
	li $t0, 0
	lw $t1, -5016($fp)
	sub $t0, $t0, $t1
	sw $t0, -5020($fp)
	lw $t1, -5020($fp)
	li $t2, 0
	bne $t1, $t2, label788
	j label789
label788:
	li $t0, 16283
	sw $t0, -5024($fp)
	lw $t1, -5024($fp)
	li $t2, 0
	bne $t1, $t2, label793
	j label791
label793:
	addi $t0, $fp, -296
	sw $t0, -5028($fp)
	li $t0, 3
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
	li $t0, 0
	lw $t1, -5044($fp)
	sub $t0, $t0, $t1
	sw $t0, -5048($fp)
	lw $t1, -5048($fp)
	li $t2, 0
	bne $t1, $t2, label790
	j label791
label790:
	addi $t0, $fp, -56
	sw $t0, -5052($fp)
	li $t0, 0
	sw $t0, -5056($fp)
	lw $t0, -448($fp)
	sw $t0, -5060($fp)
	lw $t1, -5060($fp)
	li $t2, 0
	bne $t1, $t2, label794
	j label796
label796:
	li $t0, 33577
	sw $t0, -5064($fp)
	li $t0, 36924
	sw $t0, -5068($fp)
	lw $t1, -5064($fp)
	lw $t2, -5068($fp)
	beq $t1, $t2, label794
	j label795
label794:
	li $t0, 1
	sw $t0, -5056($fp)
label795:
	li $t0, 4
	lw $t1, -5056($fp)
	mul $t0, $t0, $t1
	sw $t0, -5072($fp)
	lw $t0, -5072($fp)
	lw $t1, -5052($fp)
	add $t0, $t0, $t1
	sw $t0, -5076($fp)
	lw $t0, -5076($fp)
	lw $t1, 0($t0)
	sw $t1, -5080($fp)
	lw $ra, -4($fp)
	lw $v0, -5080($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label792
label791:
	li $t0, 0
	sw $t0, -5084($fp)
	li $t0, 0
	sw $t0, -5088($fp)
	li $t0, 0
	sw $t0, -5092($fp)
	lw $t0, -1312($fp)
	sw $t0, -5096($fp)
	li $t0, 38099
	sw $t0, -5100($fp)
	li $t0, 16390
	sw $t0, -5104($fp)
	lw $t0, -5100($fp)
	lw $t1, -5104($fp)
	sub $t0, $t0, $t1
	sw $t0, -5108($fp)
	lw $t1, -5096($fp)
	lw $t2, -5108($fp)
	beq $t1, $t2, label801
	j label802
label801:
	li $t0, 1
	sw $t0, -5092($fp)
label802:
	lw $t0, -2960($fp)
	sw $t0, -5112($fp)
	li $t0, 25855
	sw $t0, -5116($fp)
	lw $t0, -5112($fp)
	lw $t1, -5116($fp)
	mul $t0, $t0, $t1
	sw $t0, -5120($fp)
	lw $t0, -2948($fp)
	sw $t0, -5124($fp)
	lw $t0, -5120($fp)
	lw $t1, -5124($fp)
	sub $t0, $t0, $t1
	sw $t0, -5128($fp)
	lw $t1, -5092($fp)
	lw $t2, -5128($fp)
	beq $t1, $t2, label799
	j label800
label799:
	li $t0, 1
	sw $t0, -5088($fp)
label800:
	li $t0, 0
	sw $t0, -5132($fp)
	addi $t0, $fp, -2664
	sw $t0, -5136($fp)
	lw $t0, -1348($fp)
	sw $t0, -5140($fp)
	li $t0, 4
	lw $t1, -5140($fp)
	mul $t0, $t0, $t1
	sw $t0, -5144($fp)
	lw $t0, -5144($fp)
	lw $t1, -5136($fp)
	add $t0, $t0, $t1
	sw $t0, -5148($fp)
	lw $t0, -5148($fp)
	lw $t1, 0($t0)
	sw $t1, -5152($fp)
	li $t0, 0
	lw $t1, -5152($fp)
	sub $t0, $t0, $t1
	sw $t0, -5156($fp)
	lw $t0, -1876($fp)
	sw $t0, -5160($fp)
	li $t0, 2805
	sw $t0, -5164($fp)
	lw $t0, -5160($fp)
	lw $t1, -5164($fp)
	sub $t0, $t0, $t1
	sw $t0, -5168($fp)
	lw $t1, -5156($fp)
	lw $t2, -5168($fp)
	blt $t1, $t2, label803
	j label804
label803:
	li $t0, 1
	sw $t0, -5132($fp)
label804:
	lw $t1, -5088($fp)
	lw $t2, -5132($fp)
	beq $t1, $t2, label797
	j label798
label797:
	li $t0, 1
	sw $t0, -5084($fp)
label798:
	lw $ra, -4($fp)
	lw $v0, -5084($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label792:
	j label787
label789:
	li $t0, 0
	sw $t0, -5172($fp)
	li $t0, 0
	sw $t0, -5176($fp)
	lw $t0, -2572($fp)
	sw $t0, -5180($fp)
	lw $t1, -5180($fp)
	li $t2, 0
	bne $t1, $t2, label808
	j label807
label807:
	li $t0, 1
	sw $t0, -5176($fp)
label808:
	li $t0, 0
	sw $t0, -5184($fp)
	addi $t0, $fp, -92
	sw $t0, -5188($fp)
	lw $t0, -2960($fp)
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
	lw $t1, -5204($fp)
	li $t2, 0
	bne $t1, $t2, label810
	j label809
label809:
	li $t0, 1
	sw $t0, -5184($fp)
label810:
	lw $t0, -5176($fp)
	lw $t1, -5184($fp)
	add $t0, $t0, $t1
	sw $t0, -5208($fp)
	lw $t0, -1636($fp)
	sw $t0, -5212($fp)
	li $t0, 33386
	sw $t0, -5216($fp)
	lw $t0, -5212($fp)
	lw $t1, -5216($fp)
	sub $t0, $t0, $t1
	sw $t0, -5220($fp)
	lw $t1, -5208($fp)
	lw $t2, -5220($fp)
	blt $t1, $t2, label805
	j label806
label805:
	li $t0, 1
	sw $t0, -5172($fp)
label806:
	li $t0, 39343
	sw $t0, -5224($fp)
	lw $t0, -5224($fp)
	sw $t0, -5228($fp)
	lw $t0, -5228($fp)
	sw $t0, -5232($fp)
label811:
	li $t0, 52836
	sw $t0, -5236($fp)
	lw $t1, -5236($fp)
	li $t2, 0
	bne $t1, $t2, label814
	j label813
label814:
	li $t0, 0
	sw $t0, -5240($fp)
	li $t0, 7719
	sw $t0, -5244($fp)
	li $t0, 18772
	sw $t0, -5248($fp)
	lw $t0, -5244($fp)
	lw $t1, -5248($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5252($fp)
	li $t0, 4427
	sw $t0, -5256($fp)
	lw $t0, -5252($fp)
	lw $t1, -5256($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5260($fp)
	li $t0, 0
	sw $t0, -5264($fp)
	li $t0, 31580
	sw $t0, -5268($fp)
	lw $t1, -5268($fp)
	li $t2, 0
	bne $t1, $t2, label820
	j label818
label820:
	li $t0, 4889
	sw $t0, -5272($fp)
	lw $t1, -5272($fp)
	li $t2, 0
	bne $t1, $t2, label819
	j label818
label819:
	lw $t0, -1828($fp)
	sw $t0, -5276($fp)
	lw $t1, -5276($fp)
	li $t2, 0
	bne $t1, $t2, label817
	j label818
label817:
	li $t0, 1
	sw $t0, -5264($fp)
label818:
	li $t0, 32732
	sw $t0, -5280($fp)
	lw $t0, -5280($fp)
	sw $t0, -1336($fp)
	lw $t0, -1336($fp)
	sw $t0, -5284($fp)
	lw $t0, -436($fp)
	sw $t0, -5288($fp)
	lw $t0, -5288($fp)
	sw $t0, -5228($fp)
	lw $t0, -5228($fp)
	sw $t0, -5292($fp)
	li $t0, 30576
	sw $t0, -5296($fp)
	addi $sp, $sp, -4
	lw $t0, -5260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5264($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5284($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5292($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5296($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -5300($fp)
	addi $sp, $sp, 24
	li $t0, 0
	lw $t1, -5300($fp)
	sub $t0, $t0, $t1
	sw $t0, -5304($fp)
	li $t0, 10330
	sw $t0, -5308($fp)
	addi $sp, $sp, -4
	lw $t0, -5304($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5308($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -5312($fp)
	addi $sp, $sp, 12
	li $t0, 5161
	sw $t0, -5316($fp)
	lw $t1, -5312($fp)
	lw $t2, -5316($fp)
	beq $t1, $t2, label815
	j label816
label815:
	li $t0, 1
	sw $t0, -5240($fp)
label816:
	li $t0, 0
	sw $t0, -5320($fp)
	lw $t0, -1288($fp)
	sw $t0, -5324($fp)
	li $t0, 26803
	sw $t0, -5328($fp)
	lw $t1, -5324($fp)
	lw $t2, -5328($fp)
	blt $t1, $t2, label821
	j label822
label821:
	li $t0, 1
	sw $t0, -5320($fp)
label822:
	lw $t1, -5240($fp)
	lw $t2, -5320($fp)
	bne $t1, $t2, label812
	j label813
label812:
	li $t0, 7654
	sw $t0, -5332($fp)
	lw $t0, -1828($fp)
	sw $t0, -5336($fp)
	lw $t0, -5332($fp)
	lw $t1, -5336($fp)
	sub $t0, $t0, $t1
	sw $t0, -5340($fp)
	lw $t0, 8($fp)
	sw $t0, -5344($fp)
	lw $t0, -5340($fp)
	lw $t1, -5344($fp)
	sub $t0, $t0, $t1
	sw $t0, -5348($fp)
	li $t0, 47022
	sw $t0, -5352($fp)
	li $t0, 0
	lw $t1, -5352($fp)
	sub $t0, $t0, $t1
	sw $t0, -5356($fp)
	lw $t0, -5348($fp)
	lw $t1, -5356($fp)
	sub $t0, $t0, $t1
	sw $t0, -5360($fp)
	li $t0, 22981
	sw $t0, -5364($fp)
	lw $t0, -2068($fp)
	sw $t0, -5368($fp)
	lw $t0, -5364($fp)
	lw $t1, -5368($fp)
	add $t0, $t0, $t1
	sw $t0, -5372($fp)
	li $t0, 9266
	sw $t0, -5376($fp)
	lw $t0, -5372($fp)
	lw $t1, -5376($fp)
	add $t0, $t0, $t1
	sw $t0, -5380($fp)
	lw $t1, -5360($fp)
	lw $t2, -5380($fp)
	bne $t1, $t2, label826
	j label824
label826:
	addi $t0, $fp, -188
	sw $t0, -5384($fp)
	lw $t0, -472($fp)
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
	lw $t1, -5400($fp)
	li $t2, 0
	bne $t1, $t2, label824
	j label823
label823:
	li $t0, 0
	sw $t0, -5404($fp)
	addi $t0, $fp, -2628
	sw $t0, -5408($fp)
	li $t0, 0
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
	li $t0, 53048
	sw $t0, -5428($fp)
	lw $t0, -5424($fp)
	lw $t1, -5428($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5432($fp)
	li $t0, 0
	lw $t1, -5432($fp)
	sub $t0, $t0, $t1
	sw $t0, -5436($fp)
	lw $t1, -5436($fp)
	li $t2, 0
	bne $t1, $t2, label829
	j label828
label829:
	addi $t0, $fp, -2628
	sw $t0, -5440($fp)
	li $t0, 41120
	sw $t0, -5444($fp)
	li $t0, 14296
	sw $t0, -5448($fp)
	lw $t0, -5444($fp)
	lw $t1, -5448($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5452($fp)
	li $t0, 4
	lw $t1, -5452($fp)
	mul $t0, $t0, $t1
	sw $t0, -5456($fp)
	lw $t0, -5456($fp)
	lw $t1, -5440($fp)
	add $t0, $t0, $t1
	sw $t0, -5460($fp)
	lw $t0, -5460($fp)
	lw $t1, 0($t0)
	sw $t1, -5464($fp)
	lw $t1, -5464($fp)
	li $t2, 0
	bne $t1, $t2, label827
	j label828
label827:
	li $t0, 1
	sw $t0, -5404($fp)
label828:
	lw $ra, -4($fp)
	lw $v0, -5404($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label825
label824:
	li $t0, 54243
	sw $t0, -5468($fp)
	lw $t0, -460($fp)
	sw $t0, -5472($fp)
	lw $t0, -5468($fp)
	lw $t1, -5472($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5476($fp)
	li $t0, 0
	sw $t0, -5480($fp)
	li $t0, 8876
	sw $t0, -5484($fp)
	lw $t1, -5484($fp)
	li $t2, 0
	bne $t1, $t2, label830
	j label831
label830:
	li $t0, 1
	sw $t0, -5480($fp)
label831:
	addi $sp, $sp, -4
	lw $t0, -5476($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5480($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -5488($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -5492($fp)
	li $t0, 64264
	sw $t0, -5496($fp)
	lw $t0, -1336($fp)
	sw $t0, -5500($fp)
	lw $t0, -5496($fp)
	lw $t1, -5500($fp)
	add $t0, $t0, $t1
	sw $t0, -5504($fp)
	li $t0, 6120
	sw $t0, -5508($fp)
	lw $t1, -5504($fp)
	lw $t2, -5508($fp)
	bne $t1, $t2, label832
	j label833
label832:
	li $t0, 1
	sw $t0, -5492($fp)
label833:
	addi $t0, $fp, -296
	sw $t0, -5512($fp)
	li $t0, 3
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
	li $t0, 0
	lw $t1, -5528($fp)
	sub $t0, $t0, $t1
	sw $t0, -5532($fp)
	li $t0, 0
	sw $t0, -5536($fp)
	addi $t0, $fp, -28
	sw $t0, -5540($fp)
	lw $t0, -1312($fp)
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
	lw $t1, -5556($fp)
	li $t2, 0
	bne $t1, $t2, label834
	j label836
label836:
	li $t0, 47874
	sw $t0, -5560($fp)
	lw $t1, -5560($fp)
	li $t2, 0
	bne $t1, $t2, label834
	j label835
label834:
	li $t0, 1
	sw $t0, -5536($fp)
label835:
	addi $sp, $sp, -4
	lw $t0, -5532($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5536($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5564($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -5492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5564($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5568($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -5568($fp)
	sub $t0, $t0, $t1
	sw $t0, -5572($fp)
	lw $t0, -5488($fp)
	lw $t1, -5572($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5576($fp)
label825:
	j label811
label813:
	lw $t0, -5228($fp)
	sw $t0, -5580($fp)
	lw $t0, -5580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5584($fp)
	jal f10
	sw $v0, -5588($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -5592($fp)
	li $t0, 29612
	sw $t0, -5596($fp)
	li $t0, 32114
	sw $t0, -5600($fp)
	lw $t0, -5596($fp)
	lw $t1, -5600($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5604($fp)
	li $t0, 45463
	sw $t0, -5608($fp)
	lw $t0, -5604($fp)
	lw $t1, -5608($fp)
	sub $t0, $t0, $t1
	sw $t0, -5612($fp)
	addi $t0, $fp, -188
	sw $t0, -5616($fp)
	lw $t0, -436($fp)
	sw $t0, -5620($fp)
	li $t0, 4
	lw $t1, -5620($fp)
	mul $t0, $t0, $t1
	sw $t0, -5624($fp)
	lw $t0, -5624($fp)
	lw $t1, -5616($fp)
	add $t0, $t0, $t1
	sw $t0, -5628($fp)
	lw $t0, -5628($fp)
	lw $t1, 0($t0)
	sw $t1, -5632($fp)
	lw $t1, -5612($fp)
	lw $t2, -5632($fp)
	bgt $t1, $t2, label839
	j label840
label839:
	li $t0, 1
	sw $t0, -5592($fp)
label840:
	lw $t1, -5588($fp)
	lw $t2, -5592($fp)
	beq $t1, $t2, label837
	j label838
label837:
	li $t0, 1
	sw $t0, -5584($fp)
label838:
	lw $ra, -4($fp)
	lw $v0, -5584($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -5636($fp)
	lw $t0, -2044($fp)
	sw $t0, -5640($fp)
	lw $t1, -5640($fp)
	li $t2, 0
	bne $t1, $t2, label842
	j label841
label841:
	li $t0, 1
	sw $t0, -5636($fp)
label842:
	addi $t0, $fp, -56
	sw $t0, -5644($fp)
	li $t0, 0
	sw $t0, -5648($fp)
	lw $t0, -484($fp)
	sw $t0, -5652($fp)
	lw $t1, -5652($fp)
	li $t2, 0
	bne $t1, $t2, label845
	j label844
label845:
	lw $t0, -2080($fp)
	sw $t0, -5656($fp)
	lw $t1, -5656($fp)
	li $t2, 0
	bne $t1, $t2, label843
	j label844
label843:
	li $t0, 1
	sw $t0, -5648($fp)
label844:
	lw $t0, -5648($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	sw $t0, -5660($fp)
	li $t0, 4
	lw $t1, -5660($fp)
	mul $t0, $t0, $t1
	sw $t0, -5664($fp)
	lw $t0, -5664($fp)
	lw $t1, -5644($fp)
	add $t0, $t0, $t1
	sw $t0, -5668($fp)
	lw $t0, -5668($fp)
	lw $t1, 0($t0)
	sw $t1, -5672($fp)
label846:
	jal f10
	sw $v0, -5676($fp)
	addi $sp, $sp, 4
	li $t0, 0
	sw $t0, -5680($fp)
	addi $t0, $fp, -28
	sw $t0, -5684($fp)
	li $t0, 0
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
	lw $t1, -5700($fp)
	li $t2, 0
	bne $t1, $t2, label849
	j label850
label849:
	li $t0, 1
	sw $t0, -5680($fp)
label850:
	lw $t0, -5676($fp)
	lw $t1, -5680($fp)
	add $t0, $t0, $t1
	sw $t0, -5704($fp)
	lw $t1, -5704($fp)
	li $t2, 0
	bne $t1, $t2, label847
	j label848
label847:
	addi $t0, $fp, -188
	sw $t0, -5708($fp)
	li $t0, 0
	sw $t0, -5712($fp)
	addi $t0, $fp, -188
	sw $t0, -5716($fp)
	lw $t0, -1336($fp)
	sw $t0, -5720($fp)
	li $t0, 4
	lw $t1, -5720($fp)
	mul $t0, $t0, $t1
	sw $t0, -5724($fp)
	lw $t0, -5724($fp)
	lw $t1, -5716($fp)
	add $t0, $t0, $t1
	sw $t0, -5728($fp)
	lw $t0, -5728($fp)
	lw $t1, 0($t0)
	sw $t1, -5732($fp)
	li $t0, 10504
	sw $t0, -5736($fp)
	lw $t1, -5732($fp)
	lw $t2, -5736($fp)
	blt $t1, $t2, label854
	j label855
label854:
	li $t0, 1
	sw $t0, -5712($fp)
label855:
	li $t0, 4
	lw $t1, -5712($fp)
	mul $t0, $t0, $t1
	sw $t0, -5740($fp)
	lw $t0, -5740($fp)
	lw $t1, -5708($fp)
	add $t0, $t0, $t1
	sw $t0, -5744($fp)
	lw $t0, -5744($fp)
	lw $t1, 0($t0)
	sw $t1, -5748($fp)
	li $t0, 0
	sw $t0, -5752($fp)
	lw $t0, -2212($fp)
	sw $t0, -5756($fp)
	lw $t0, -1840($fp)
	sw $t0, -5760($fp)
	lw $t0, -5756($fp)
	lw $t1, -5760($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5764($fp)
	lw $t1, -5764($fp)
	li $t2, 0
	bne $t1, $t2, label858
	j label857
label858:
	lw $t0, -1720($fp)
	sw $t0, -5768($fp)
	lw $t1, -5768($fp)
	li $t2, 0
	bne $t1, $t2, label856
	j label857
label856:
	li $t0, 1
	sw $t0, -5752($fp)
label857:
	li $t0, 0
	sw $t0, -5772($fp)
	li $t0, 0
	sw $t0, -5776($fp)
	li $t0, 49645
	sw $t0, -5780($fp)
	lw $t1, -5780($fp)
	li $t2, 0
	bne $t1, $t2, label862
	j label861
label861:
	li $t0, 1
	sw $t0, -5776($fp)
label862:
	li $t0, 8489
	sw $t0, -5784($fp)
	lw $t1, -5776($fp)
	lw $t2, -5784($fp)
	bgt $t1, $t2, label859
	j label860
label859:
	li $t0, 1
	sw $t0, -5772($fp)
label860:
	addi $sp, $sp, -4
	lw $t0, -5752($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5772($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -5788($fp)
	addi $sp, $sp, 12
	lw $t0, -5748($fp)
	lw $t1, -5788($fp)
	add $t0, $t0, $t1
	sw $t0, -5792($fp)
	lw $t1, -5792($fp)
	li $t2, 0
	bne $t1, $t2, label851
	j label852
label851:
	li $t0, 15393
	sw $t0, -5796($fp)
	j label853
label852:
label863:
	lw $t0, -1732($fp)
	sw $t0, -5800($fp)
	lw $t0, -2056($fp)
	sw $t0, -5804($fp)
	lw $t0, -5800($fp)
	lw $t1, -5804($fp)
	add $t0, $t0, $t1
	sw $t0, -5808($fp)
	addi $t0, $fp, -212
	sw $t0, -5812($fp)
	li $t0, 0
	sw $t0, -5816($fp)
	li $t0, 57364
	sw $t0, -5820($fp)
	lw $t1, -5820($fp)
	li $t2, 0
	bne $t1, $t2, label868
	j label867
label868:
	lw $t0, -1924($fp)
	sw $t0, -5824($fp)
	lw $t1, -5824($fp)
	li $t2, 0
	bne $t1, $t2, label866
	j label867
label866:
	li $t0, 1
	sw $t0, -5816($fp)
label867:
	li $t0, 4
	lw $t1, -5816($fp)
	mul $t0, $t0, $t1
	sw $t0, -5828($fp)
	lw $t0, -5828($fp)
	lw $t1, -5812($fp)
	add $t0, $t0, $t1
	sw $t0, -5832($fp)
	lw $t0, -5832($fp)
	lw $t1, 0($t0)
	sw $t1, -5836($fp)
	lw $t0, -5808($fp)
	lw $t1, -5836($fp)
	sub $t0, $t0, $t1
	sw $t0, -5840($fp)
	lw $t1, -5840($fp)
	li $t2, 0
	bne $t1, $t2, label864
	j label865
label864:
	li $t0, 0
	sw $t0, -5844($fp)
	li $t0, 0
	sw $t0, -5848($fp)
	li $t0, 0
	sw $t0, -5852($fp)
	lw $t0, -1816($fp)
	sw $t0, -5856($fp)
	li $t0, 27261
	sw $t0, -5860($fp)
	lw $t1, -5856($fp)
	lw $t2, -5860($fp)
	ble $t1, $t2, label876
	j label877
label876:
	li $t0, 1
	sw $t0, -5852($fp)
label877:
	li $t0, 19821
	sw $t0, -5864($fp)
	li $t0, 62525
	sw $t0, -5868($fp)
	lw $t0, -5864($fp)
	lw $t1, -5868($fp)
	add $t0, $t0, $t1
	sw $t0, -5872($fp)
	lw $t1, -5852($fp)
	lw $t2, -5872($fp)
	blt $t1, $t2, label874
	j label875
label874:
	li $t0, 1
	sw $t0, -5848($fp)
label875:
	li $t0, 0
	sw $t0, -5876($fp)
	li $t0, 0
	sw $t0, -5880($fp)
	li $t0, 27475
	sw $t0, -5884($fp)
	li $t0, 44011
	sw $t0, -5888($fp)
	lw $t0, -5884($fp)
	lw $t1, -5888($fp)
	add $t0, $t0, $t1
	sw $t0, -5892($fp)
	li $t0, 11509
	sw $t0, -5896($fp)
	lw $t1, -5892($fp)
	lw $t2, -5896($fp)
	beq $t1, $t2, label880
	j label881
label880:
	li $t0, 1
	sw $t0, -5880($fp)
label881:
	li $t0, 0
	sw $t0, -5900($fp)
	lw $t0, -1828($fp)
	sw $t0, -5904($fp)
	lw $t1, -5904($fp)
	li $t2, 0
	bne $t1, $t2, label882
	j label884
label884:
	li $t0, 54064
	sw $t0, -5908($fp)
	lw $t1, -5908($fp)
	li $t2, 0
	bne $t1, $t2, label882
	j label883
label882:
	li $t0, 1
	sw $t0, -5900($fp)
label883:
	addi $sp, $sp, -4
	lw $t0, -5880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5900($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -5912($fp)
	addi $sp, $sp, 12
	lw $t1, -5912($fp)
	li $t2, 0
	bne $t1, $t2, label879
	j label878
label878:
	li $t0, 1
	sw $t0, -5876($fp)
label879:
	lw $t1, -5848($fp)
	lw $t2, -5876($fp)
	bge $t1, $t2, label872
	j label873
label872:
	li $t0, 1
	sw $t0, -5844($fp)
label873:
	lw $t0, -520($fp)
	sw $t0, -5916($fp)
	lw $t1, -5844($fp)
	lw $t2, -5916($fp)
	bne $t1, $t2, label869
	j label870
label869:
	jal f8
	sw $v0, -5920($fp)
	addi $sp, $sp, 4
	lw $t1, -5920($fp)
	li $t2, 0
	bne $t1, $t2, label885
	j label886
label885:
	addi $t0, $fp, -24
	sw $t0, -5924($fp)
	li $t0, 4
	sw $t0, -5928($fp)
	li $t0, 4
	lw $t1, -5928($fp)
	mul $t0, $t0, $t1
	sw $t0, -5932($fp)
	lw $t0, -5932($fp)
	lw $t1, -5924($fp)
	add $t0, $t0, $t1
	sw $t0, -5936($fp)
	lw $t0, -5936($fp)
	lw $t1, 0($t0)
	sw $t1, -5940($fp)
	li $t0, 13399
	sw $t0, -5944($fp)
	lw $t0, -5940($fp)
	lw $t1, -5944($fp)
	add $t0, $t0, $t1
	sw $t0, -5948($fp)
	li $t0, 34755
	sw $t0, -5952($fp)
	li $t0, 27811
	sw $t0, -5956($fp)
	lw $t0, -5952($fp)
	lw $t1, -5956($fp)
	mul $t0, $t0, $t1
	sw $t0, -5960($fp)
	li $t0, 54519
	sw $t0, -5964($fp)
	lw $t0, -5960($fp)
	lw $t1, -5964($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -5968($fp)
	lw $t0, -5948($fp)
	lw $t1, -5968($fp)
	sub $t0, $t0, $t1
	sw $t0, -5972($fp)
	lw $t1, -5972($fp)
	li $t2, 0
	bne $t1, $t2, label891
	j label889
label891:
	lw $t0, -1312($fp)
	sw $t0, -5976($fp)
	li $t0, 0
	sw $t0, -5980($fp)
	li $t0, 0
	sw $t0, -5984($fp)
	lw $t0, -1900($fp)
	sw $t0, -5988($fp)
	lw $t0, -2044($fp)
	sw $t0, -5992($fp)
	lw $t1, -5988($fp)
	lw $t2, -5992($fp)
	blt $t1, $t2, label894
	j label895
label894:
	li $t0, 1
	sw $t0, -5984($fp)
label895:
	li $t0, 49051
	sw $t0, -5996($fp)
	lw $t1, -5984($fp)
	lw $t2, -5996($fp)
	bgt $t1, $t2, label892
	j label893
label892:
	li $t0, 1
	sw $t0, -5980($fp)
label893:
	addi $sp, $sp, -4
	lw $t0, -5976($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5980($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -6000($fp)
	addi $sp, $sp, 12
	addi $t0, $fp, -296
	sw $t0, -6004($fp)
	li $t0, 3
	sw $t0, -6008($fp)
	li $t0, 4
	lw $t1, -6008($fp)
	mul $t0, $t0, $t1
	sw $t0, -6012($fp)
	lw $t0, -6012($fp)
	lw $t1, -6004($fp)
	add $t0, $t0, $t1
	sw $t0, -6016($fp)
	lw $t0, -6016($fp)
	lw $t1, 0($t0)
	sw $t1, -6020($fp)
	lw $t1, -6000($fp)
	lw $t2, -6020($fp)
	blt $t1, $t2, label888
	j label889
label888:
	lw $t0, -1336($fp)
	sw $t0, -6024($fp)
	lw $t0, -6024($fp)
	sw $t0, -1840($fp)
	lw $t0, -1840($fp)
	sw $t0, -6028($fp)
	lw $t1, -6028($fp)
	li $t2, 0
	bne $t1, $t2, label896
	j label897
label896:
	li $t0, 0
	sw $t0, -6032($fp)
	lw $t0, -1852($fp)
	sw $t0, -6036($fp)
	li $t0, 31389
	sw $t0, -6040($fp)
	lw $t0, -6036($fp)
	lw $t1, -6040($fp)
	mul $t0, $t0, $t1
	sw $t0, -6044($fp)
	li $t0, 16952
	sw $t0, -6048($fp)
	lw $t0, -1336($fp)
	sw $t0, -6052($fp)
	lw $t0, -6048($fp)
	lw $t1, -6052($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6056($fp)
	lw $t0, -472($fp)
	sw $t0, -6060($fp)
	li $t0, 4498
	sw $t0, -6064($fp)
	lw $t0, -6060($fp)
	lw $t1, -6064($fp)
	mul $t0, $t0, $t1
	sw $t0, -6068($fp)
	lw $t0, -6056($fp)
	lw $t1, -6068($fp)
	sub $t0, $t0, $t1
	sw $t0, -6072($fp)
	lw $t1, -6044($fp)
	lw $t2, -6072($fp)
	bge $t1, $t2, label899
	j label900
label899:
	li $t0, 1
	sw $t0, -6032($fp)
label900:
	lw $ra, -4($fp)
	lw $v0, -6032($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label898
label897:
	addi $t0, $fp, -124
	sw $t0, -6076($fp)
	li $t0, 1
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
	li $t0, 0
	sw $t0, -6096($fp)
	lw $t0, -1876($fp)
	sw $t0, -6100($fp)
	li $t0, 0
	lw $t1, -6100($fp)
	sub $t0, $t0, $t1
	sw $t0, -6104($fp)
	lw $t1, -6104($fp)
	li $t2, 0
	bne $t1, $t2, label906
	j label905
label905:
	li $t0, 1
	sw $t0, -6096($fp)
label906:
	lw $t0, -6092($fp)
	lw $t1, -6096($fp)
	mul $t0, $t0, $t1
	sw $t0, -6108($fp)
	lw $t1, -6108($fp)
	li $t2, 0
	bne $t1, $t2, label901
	j label904
label904:
	li $t0, 0
	sw $t0, -6112($fp)
	lw $t0, -1840($fp)
	sw $t0, -6116($fp)
	li $t0, 0
	lw $t1, -6116($fp)
	sub $t0, $t0, $t1
	sw $t0, -6120($fp)
	lw $t1, -6120($fp)
	li $t2, 0
	bne $t1, $t2, label908
	j label907
label907:
	li $t0, 1
	sw $t0, -6112($fp)
label908:
	li $t0, 34110
	sw $t0, -6124($fp)
	lw $t0, -6112($fp)
	lw $t1, -6124($fp)
	sub $t0, $t0, $t1
	sw $t0, -6128($fp)
	lw $t1, -6128($fp)
	li $t2, 0
	bne $t1, $t2, label901
	j label902
label901:
	li $t0, 62232
	sw $t0, -6132($fp)
	lw $t0, -6132($fp)
	sw $t0, -6136($fp)
	lw $t0, -6136($fp)
	sw $t0, -6140($fp)
	lw $t0, -6136($fp)
	sw $t0, -6144($fp)
	lw $t0, -6144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -6148($fp)
	li $t0, 0
	sw $t0, -6152($fp)
	li $t0, 0
	sw $t0, -6156($fp)
	li $t0, 0
	sw $t0, -6160($fp)
	li $t0, 39141
	sw $t0, -6164($fp)
	lw $t1, -6164($fp)
	li $t2, 0
	bne $t1, $t2, label918
	j label917
label918:
	lw $t0, -1888($fp)
	sw $t0, -6168($fp)
	lw $t1, -6168($fp)
	li $t2, 0
	bne $t1, $t2, label915
	j label917
label917:
	lw $t0, -1336($fp)
	sw $t0, -6172($fp)
	lw $t1, -6172($fp)
	li $t2, 0
	bne $t1, $t2, label915
	j label916
label915:
	li $t0, 1
	sw $t0, -6160($fp)
label916:
	li $t0, 0
	sw $t0, -6176($fp)
	li $t0, 3000
	sw $t0, -6180($fp)
	li $t0, 0
	lw $t1, -6180($fp)
	sub $t0, $t0, $t1
	sw $t0, -6184($fp)
	li $t0, 51023
	sw $t0, -6188($fp)
	lw $t1, -6184($fp)
	lw $t2, -6188($fp)
	bne $t1, $t2, label919
	j label920
label919:
	li $t0, 1
	sw $t0, -6176($fp)
label920:
	li $t0, 0
	sw $t0, -6192($fp)
	addi $t0, $fp, -56
	sw $t0, -6196($fp)
	lw $t0, -2200($fp)
	sw $t0, -6200($fp)
	li $t0, 4
	lw $t1, -6200($fp)
	mul $t0, $t0, $t1
	sw $t0, -6204($fp)
	lw $t0, -6204($fp)
	lw $t1, -6196($fp)
	add $t0, $t0, $t1
	sw $t0, -6208($fp)
	lw $t0, -6208($fp)
	lw $t1, 0($t0)
	sw $t1, -6212($fp)
	lw $t0, -6136($fp)
	sw $t0, -6216($fp)
	lw $t1, -6212($fp)
	lw $t2, -6216($fp)
	blt $t1, $t2, label921
	j label922
label921:
	li $t0, 1
	sw $t0, -6192($fp)
label922:
	lw $t0, -1876($fp)
	sw $t0, -6220($fp)
	addi $sp, $sp, -4
	lw $t0, -6160($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6176($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6192($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6220($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -6224($fp)
	addi $sp, $sp, 20
	lw $t1, -6224($fp)
	li $t2, 0
	bne $t1, $t2, label914
	j label913
label913:
	li $t0, 1
	sw $t0, -6156($fp)
label914:
	li $t0, 0
	sw $t0, -6228($fp)
	lw $t0, -436($fp)
	sw $t0, -6232($fp)
	lw $t1, -6232($fp)
	li $t2, 0
	bne $t1, $t2, label924
	j label923
label923:
	li $t0, 1
	sw $t0, -6228($fp)
label924:
	lw $t0, -6156($fp)
	lw $t1, -6228($fp)
	sub $t0, $t0, $t1
	sw $t0, -6236($fp)
	li $t0, 0
	sw $t0, -6240($fp)
	li $t0, 0
	sw $t0, -6244($fp)
	lw $t0, 4($fp)
	sw $t0, -6248($fp)
	li $t0, 13504
	sw $t0, -6252($fp)
	lw $t1, -6248($fp)
	lw $t2, -6252($fp)
	ble $t1, $t2, label927
	j label928
label927:
	li $t0, 1
	sw $t0, -6244($fp)
label928:
	lw $t0, -2044($fp)
	sw $t0, -6256($fp)
	lw $t1, -6244($fp)
	lw $t2, -6256($fp)
	ble $t1, $t2, label925
	j label926
label925:
	li $t0, 1
	sw $t0, -6240($fp)
label926:
	lw $t1, -6236($fp)
	lw $t2, -6240($fp)
	bne $t1, $t2, label911
	j label912
label911:
	li $t0, 1
	sw $t0, -6152($fp)
label912:
	jal f10
	sw $v0, -6260($fp)
	addi $sp, $sp, 4
	lw $t1, -6152($fp)
	lw $t2, -6260($fp)
	beq $t1, $t2, label909
	j label910
label909:
	li $t0, 1
	sw $t0, -6148($fp)
label910:
	lw $ra, -4($fp)
	lw $v0, -6148($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 35132
	sw $t0, -6264($fp)
	lw $t0, -6264($fp)
	sw $t0, -6268($fp)
	lw $t0, -6268($fp)
	sw $t0, -6272($fp)
	li $t0, 0
	sw $t0, -6276($fp)
	li $t0, 47630
	sw $t0, -6280($fp)
	lw $t0, -1336($fp)
	sw $t0, -6284($fp)
	lw $t0, -6280($fp)
	lw $t1, -6284($fp)
	mul $t0, $t0, $t1
	sw $t0, -6288($fp)
	lw $t0, -6268($fp)
	sw $t0, -6292($fp)
	lw $t1, -6288($fp)
	lw $t2, -6292($fp)
	blt $t1, $t2, label929
	j label933
label933:
	lw $t0, -2200($fp)
	sw $t0, -6296($fp)
	lw $t0, -2056($fp)
	sw $t0, -6300($fp)
	lw $t0, -6296($fp)
	lw $t1, -6300($fp)
	mul $t0, $t0, $t1
	sw $t0, -6304($fp)
	lw $t1, -6304($fp)
	li $t2, 0
	bne $t1, $t2, label929
	j label932
label932:
	addi $t0, $fp, -124
	sw $t0, -6308($fp)
	li $t0, 0
	sw $t0, -6312($fp)
	li $t0, 4
	lw $t1, -6312($fp)
	mul $t0, $t0, $t1
	sw $t0, -6316($fp)
	lw $t0, -6316($fp)
	lw $t1, -6308($fp)
	add $t0, $t0, $t1
	sw $t0, -6320($fp)
	lw $t0, -6320($fp)
	lw $t1, 0($t0)
	sw $t1, -6324($fp)
	lw $t1, -6324($fp)
	li $t2, 0
	bne $t1, $t2, label929
	j label931
label931:
	jal f8
	sw $v0, -6328($fp)
	addi $sp, $sp, 4
	lw $t1, -6328($fp)
	li $t2, 0
	bne $t1, $t2, label929
	j label930
label929:
	li $t0, 1
	sw $t0, -6276($fp)
label930:
	j label903
label902:
	li $t0, 9355
	sw $t0, -6336($fp)
	addi $t0, $fp, -6332
	sw $t0, -6340($fp)
	li $t0, 0
	sw $t0, -6344($fp)
	lw $t0, -6344($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -6348($fp)
	lw $t0, -6340($fp)
	lw $t1, -6348($fp)
	add $t0, $t0, $t1
	sw $t0, -6352($fp)
	lw $t0, -6336($fp)
	lw $t1, -6352($fp)
	sw $t0, 0($t1)
	lw $t0, -6352($fp)
	lw $t1, 0($t0)
	sw $t1, -6356($fp)
	li $t0, 0
	sw $t0, -6360($fp)
	lw $t0, -2056($fp)
	sw $t0, -6364($fp)
	lw $t1, -6364($fp)
	li $t2, 0
	bne $t1, $t2, label934
	j label936
label936:
	addi $t0, $fp, -152
	sw $t0, -6368($fp)
	lw $t0, -1276($fp)
	sw $t0, -6372($fp)
	li $t0, 4
	lw $t1, -6372($fp)
	mul $t0, $t0, $t1
	sw $t0, -6376($fp)
	lw $t0, -6376($fp)
	lw $t1, -6368($fp)
	add $t0, $t0, $t1
	sw $t0, -6380($fp)
	lw $t0, -6380($fp)
	lw $t1, 0($t0)
	sw $t1, -6384($fp)
	li $t0, 48719
	sw $t0, -6388($fp)
	lw $t0, -6384($fp)
	lw $t1, -6388($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6392($fp)
	li $t0, 23949
	sw $t0, -6396($fp)
	li $t0, 63420
	sw $t0, -6400($fp)
	lw $t0, -6396($fp)
	lw $t1, -6400($fp)
	mul $t0, $t0, $t1
	sw $t0, -6404($fp)
	lw $t1, -6392($fp)
	lw $t2, -6404($fp)
	bne $t1, $t2, label934
	j label935
label934:
	li $t0, 1
	sw $t0, -6360($fp)
label935:
	lw $t0, -1288($fp)
	sw $t0, -6408($fp)
	addi $t0, $fp, -6332
	sw $t0, -6412($fp)
	lw $t0, -2584($fp)
	sw $t0, -6416($fp)
	li $t0, 0
	sw $t0, -6420($fp)
	li $t0, 0
	sw $t0, -6424($fp)
	li $t0, 9393
	sw $t0, -6428($fp)
	li $t0, 47400
	sw $t0, -6432($fp)
	lw $t1, -6428($fp)
	lw $t2, -6432($fp)
	bgt $t1, $t2, label939
	j label940
label939:
	li $t0, 1
	sw $t0, -6424($fp)
label940:
	li $t0, 42724
	sw $t0, -6436($fp)
	lw $t1, -6424($fp)
	lw $t2, -6436($fp)
	blt $t1, $t2, label937
	j label938
label937:
	li $t0, 1
	sw $t0, -6420($fp)
label938:
	li $t0, 0
	sw $t0, -6440($fp)
	lw $t0, -1324($fp)
	sw $t0, -6444($fp)
	li $t0, 2425
	sw $t0, -6448($fp)
	lw $t1, -6444($fp)
	lw $t2, -6448($fp)
	bgt $t1, $t2, label941
	j label942
label941:
	li $t0, 1
	sw $t0, -6440($fp)
label942:
	li $t0, 0
	sw $t0, -6452($fp)
	lw $t0, -1372($fp)
	sw $t0, -6456($fp)
	li $t0, 0
	lw $t1, -6456($fp)
	sub $t0, $t0, $t1
	sw $t0, -6460($fp)
	lw $t0, -2584($fp)
	sw $t0, -6464($fp)
	lw $t1, -6460($fp)
	lw $t2, -6464($fp)
	beq $t1, $t2, label943
	j label944
label943:
	li $t0, 1
	sw $t0, -6452($fp)
label944:
	li $t0, 10658
	sw $t0, -6468($fp)
	li $t0, 0
	lw $t1, -6468($fp)
	sub $t0, $t0, $t1
	sw $t0, -6472($fp)
	li $t0, 0
	lw $t1, -6472($fp)
	sub $t0, $t0, $t1
	sw $t0, -6476($fp)
	addi $sp, $sp, -4
	lw $t0, -6416($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6420($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6452($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6476($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6480($fp)
	addi $sp, $sp, 24
	li $t0, 4
	lw $t1, -6480($fp)
	mul $t0, $t0, $t1
	sw $t0, -6484($fp)
	lw $t0, -6484($fp)
	lw $t1, -6412($fp)
	add $t0, $t0, $t1
	sw $t0, -6488($fp)
	lw $t0, -6488($fp)
	lw $t1, 0($t0)
	sw $t1, -6492($fp)
	lw $t0, -6408($fp)
	lw $t1, -6492($fp)
	mul $t0, $t0, $t1
	sw $t0, -6496($fp)
label903:
label898:
	j label890
label889:
	li $t0, 0
	sw $t0, -6500($fp)
	li $t0, 0
	sw $t0, -6504($fp)
	lw $t0, -2080($fp)
	sw $t0, -6508($fp)
	li $t0, 22793
	sw $t0, -6512($fp)
	lw $t0, -6508($fp)
	lw $t1, -6512($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6516($fp)
	lw $t0, 8($fp)
	sw $t0, -6520($fp)
	lw $t0, -6516($fp)
	lw $t1, -6520($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6524($fp)
	li $t0, 16619
	sw $t0, -6528($fp)
	li $t0, 0
	lw $t1, -6528($fp)
	sub $t0, $t0, $t1
	sw $t0, -6532($fp)
	lw $t1, -6524($fp)
	lw $t2, -6532($fp)
	bge $t1, $t2, label950
	j label951
label950:
	li $t0, 1
	sw $t0, -6504($fp)
label951:
	li $t0, 0
	sw $t0, -6536($fp)
	lw $t0, -1300($fp)
	sw $t0, -6540($fp)
	lw $t1, -6540($fp)
	li $t2, 0
	bne $t1, $t2, label953
	j label952
label952:
	li $t0, 1
	sw $t0, -6536($fp)
label953:
	lw $t1, -6504($fp)
	lw $t2, -6536($fp)
	ble $t1, $t2, label948
	j label949
label948:
	li $t0, 1
	sw $t0, -6500($fp)
label949:
	lw $t0, -1732($fp)
	sw $t0, -6544($fp)
	lw $t0, -1312($fp)
	sw $t0, -6548($fp)
	lw $t0, -6544($fp)
	lw $t1, -6548($fp)
	sub $t0, $t0, $t1
	sw $t0, -6552($fp)
	li $t0, 4999
	sw $t0, -6556($fp)
	lw $t0, -6552($fp)
	lw $t1, -6556($fp)
	sub $t0, $t0, $t1
	sw $t0, -6560($fp)
	lw $t0, -484($fp)
	sw $t0, -6564($fp)
	li $t0, 11776
	sw $t0, -6568($fp)
	lw $t0, -6564($fp)
	lw $t1, -6568($fp)
	mul $t0, $t0, $t1
	sw $t0, -6572($fp)
	lw $t0, -6560($fp)
	lw $t1, -6572($fp)
	add $t0, $t0, $t1
	sw $t0, -6576($fp)
	lw $t1, -6500($fp)
	lw $t2, -6576($fp)
	beq $t1, $t2, label945
	j label946
label945:
	addi $t0, $fp, -240
	sw $t0, -6580($fp)
	addi $t0, $fp, -28
	sw $t0, -6584($fp)
	lw $t0, -2572($fp)
	sw $t0, -6588($fp)
	lw $t0, -1324($fp)
	sw $t0, -6592($fp)
	lw $t0, -6588($fp)
	lw $t1, -6592($fp)
	sub $t0, $t0, $t1
	sw $t0, -6596($fp)
	li $t0, 4
	lw $t1, -6596($fp)
	mul $t0, $t0, $t1
	sw $t0, -6600($fp)
	lw $t0, -6600($fp)
	lw $t1, -6584($fp)
	add $t0, $t0, $t1
	sw $t0, -6604($fp)
	lw $t0, -6604($fp)
	lw $t1, 0($t0)
	sw $t1, -6608($fp)
	li $t0, 4
	lw $t1, -6608($fp)
	mul $t0, $t0, $t1
	sw $t0, -6612($fp)
	lw $t0, -6612($fp)
	lw $t1, -6580($fp)
	add $t0, $t0, $t1
	sw $t0, -6616($fp)
	lw $t0, -6616($fp)
	lw $t1, 0($t0)
	sw $t1, -6620($fp)
	lw $t1, -6620($fp)
	li $t2, 0
	bne $t1, $t2, label954
	j label955
label954:
	addi $t0, $fp, -200
	sw $t0, -6624($fp)
	addi $t0, $fp, -28
	sw $t0, -6628($fp)
	lw $t0, -1288($fp)
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
	li $t0, 4
	lw $t1, -6644($fp)
	mul $t0, $t0, $t1
	sw $t0, -6648($fp)
	lw $t0, -6648($fp)
	lw $t1, -6624($fp)
	add $t0, $t0, $t1
	sw $t0, -6652($fp)
	lw $t0, -6652($fp)
	lw $t1, 0($t0)
	sw $t1, -6656($fp)
	lw $t0, -2584($fp)
	sw $t0, -6660($fp)
	lw $t1, -6656($fp)
	lw $t2, -6660($fp)
	bne $t1, $t2, label957
	j label958
label957:
label960:
	lw $t0, -2560($fp)
	sw $t0, -6664($fp)
	li $t0, 135
	sw $t0, -6668($fp)
	lw $t0, -6664($fp)
	lw $t1, -6668($fp)
	mul $t0, $t0, $t1
	sw $t0, -6672($fp)
	li $t0, 41687
	sw $t0, -6676($fp)
	li $t0, 0
	lw $t1, -6676($fp)
	sub $t0, $t0, $t1
	sw $t0, -6680($fp)
	lw $t0, -6672($fp)
	lw $t1, -6680($fp)
	mul $t0, $t0, $t1
	sw $t0, -6684($fp)
	li $t0, 55003
	sw $t0, -6688($fp)
	lw $t1, -6684($fp)
	lw $t2, -6688($fp)
	blt $t1, $t2, label963
	j label962
label963:
	lw $t0, -1840($fp)
	sw $t0, -6692($fp)
	lw $t1, -6692($fp)
	li $t2, 0
	bne $t1, $t2, label961
	j label962
label961:
label964:
	lw $t0, -460($fp)
	sw $t0, -6696($fp)
	lw $t0, -1336($fp)
	sw $t0, -6700($fp)
	lw $t0, -6696($fp)
	lw $t1, -6700($fp)
	mul $t0, $t0, $t1
	sw $t0, -6704($fp)
	lw $t1, -6704($fp)
	li $t2, 0
	bne $t1, $t2, label965
	j label966
label965:
	li $t0, 0
	sw $t0, -6708($fp)
	li $t0, 0
	sw $t0, -6712($fp)
	lw $t0, -1348($fp)
	sw $t0, -6716($fp)
	lw $t1, -6716($fp)
	li $t2, 0
	bne $t1, $t2, label970
	j label969
label969:
	li $t0, 1
	sw $t0, -6712($fp)
label970:
	li $t0, 0
	sw $t0, -6720($fp)
	lw $t0, -1384($fp)
	sw $t0, -6724($fp)
	lw $t0, -1828($fp)
	sw $t0, -6728($fp)
	lw $t0, -6724($fp)
	lw $t1, -6728($fp)
	add $t0, $t0, $t1
	sw $t0, -6732($fp)
	lw $t1, -6732($fp)
	li $t2, 0
	bne $t1, $t2, label973
	j label972
label973:
	li $t0, 16176
	sw $t0, -6736($fp)
	lw $t1, -6736($fp)
	li $t2, 0
	bne $t1, $t2, label971
	j label972
label971:
	li $t0, 1
	sw $t0, -6720($fp)
label972:
	li $t0, 0
	sw $t0, -6740($fp)
	lw $t0, -1372($fp)
	sw $t0, -6744($fp)
	li $t0, 59501
	sw $t0, -6748($fp)
	lw $t0, -6744($fp)
	lw $t1, -6748($fp)
	sub $t0, $t0, $t1
	sw $t0, -6752($fp)
	lw $t1, -6752($fp)
	li $t2, 0
	bne $t1, $t2, label976
	j label975
label976:
	li $t0, 61642
	sw $t0, -6756($fp)
	lw $t1, -6756($fp)
	li $t2, 0
	bne $t1, $t2, label974
	j label975
label974:
	li $t0, 1
	sw $t0, -6740($fp)
label975:
	addi $t0, $fp, -296
	sw $t0, -6760($fp)
	li $t0, 3
	sw $t0, -6764($fp)
	li $t0, 4
	lw $t1, -6764($fp)
	mul $t0, $t0, $t1
	sw $t0, -6768($fp)
	lw $t0, -6768($fp)
	lw $t1, -6760($fp)
	add $t0, $t0, $t1
	sw $t0, -6772($fp)
	lw $t0, -6772($fp)
	lw $t1, 0($t0)
	sw $t1, -6776($fp)
	lw $t0, -1360($fp)
	sw $t0, -6780($fp)
	lw $t0, -6776($fp)
	lw $t1, -6780($fp)
	mul $t0, $t0, $t1
	sw $t0, -6784($fp)
	lw $t0, -448($fp)
	sw $t0, -6788($fp)
	lw $t0, 4($fp)
	sw $t0, -6792($fp)
	addi $sp, $sp, -4
	lw $t0, -6720($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6740($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6788($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6792($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -6796($fp)
	addi $sp, $sp, 24
	lw $t0, -6712($fp)
	lw $t1, -6796($fp)
	sub $t0, $t0, $t1
	sw $t0, -6800($fp)
	addi $t0, $fp, -188
	sw $t0, -6804($fp)
	li $t0, 0
	sw $t0, -6808($fp)
	li $t0, 28076
	sw $t0, -6812($fp)
	li $t0, 58339
	sw $t0, -6816($fp)
	lw $t1, -6812($fp)
	lw $t2, -6816($fp)
	blt $t1, $t2, label977
	j label978
label977:
	li $t0, 1
	sw $t0, -6808($fp)
label978:
	li $t0, 4
	lw $t1, -6808($fp)
	mul $t0, $t0, $t1
	sw $t0, -6820($fp)
	lw $t0, -6820($fp)
	lw $t1, -6804($fp)
	add $t0, $t0, $t1
	sw $t0, -6824($fp)
	lw $t0, -6824($fp)
	lw $t1, 0($t0)
	sw $t1, -6828($fp)
	lw $t1, -6800($fp)
	lw $t2, -6828($fp)
	blt $t1, $t2, label967
	j label968
label967:
	li $t0, 1
	sw $t0, -6708($fp)
label968:
	j label964
label966:
	j label960
label962:
	j label959
label958:
	li $t0, 0
	sw $t0, -6832($fp)
	li $t0, 0
	sw $t0, -6836($fp)
	li $t0, 0
	sw $t0, -6840($fp)
	lw $t0, -1612($fp)
	sw $t0, -6844($fp)
	lw $t0, -2584($fp)
	sw $t0, -6848($fp)
	lw $t1, -6844($fp)
	lw $t2, -6848($fp)
	bge $t1, $t2, label987
	j label988
label987:
	li $t0, 1
	sw $t0, -6840($fp)
label988:
	li $t0, 19177
	sw $t0, -6852($fp)
	lw $t1, -6840($fp)
	lw $t2, -6852($fp)
	bgt $t1, $t2, label985
	j label986
label985:
	li $t0, 1
	sw $t0, -6836($fp)
label986:
	li $t0, 13563
	sw $t0, -6856($fp)
	li $t0, 31944
	sw $t0, -6860($fp)
	lw $t0, -6856($fp)
	lw $t1, -6860($fp)
	sub $t0, $t0, $t1
	sw $t0, -6864($fp)
	lw $t1, -6836($fp)
	lw $t2, -6864($fp)
	ble $t1, $t2, label983
	j label984
label983:
	li $t0, 1
	sw $t0, -6832($fp)
label984:
	lw $t0, -1312($fp)
	sw $t0, -6868($fp)
	lw $t0, -2068($fp)
	sw $t0, -6872($fp)
	lw $t0, -6868($fp)
	lw $t1, -6872($fp)
	mul $t0, $t0, $t1
	sw $t0, -6876($fp)
	li $t0, 32681
	sw $t0, -6880($fp)
	lw $t0, -6876($fp)
	lw $t1, -6880($fp)
	add $t0, $t0, $t1
	sw $t0, -6884($fp)
	lw $t1, -6832($fp)
	lw $t2, -6884($fp)
	bge $t1, $t2, label982
	j label980
label982:
	li $t0, 0
	sw $t0, -6888($fp)
	li $t0, 48696
	sw $t0, -6892($fp)
	lw $t1, -6892($fp)
	li $t2, 0
	bne $t1, $t2, label990
	j label989
label989:
	li $t0, 1
	sw $t0, -6888($fp)
label990:
	li $t0, 0
	sw $t0, -6896($fp)
	li $t0, 10120
	sw $t0, -6900($fp)
	li $t0, 0
	lw $t1, -6900($fp)
	sub $t0, $t0, $t1
	sw $t0, -6904($fp)
	lw $t1, -6904($fp)
	li $t2, 0
	bne $t1, $t2, label992
	j label991
label991:
	li $t0, 1
	sw $t0, -6896($fp)
label992:
	li $t0, 0
	sw $t0, -6908($fp)
	li $t0, 14038
	sw $t0, -6912($fp)
	li $t0, 61579
	sw $t0, -6916($fp)
	lw $t0, -6912($fp)
	lw $t1, -6916($fp)
	sub $t0, $t0, $t1
	sw $t0, -6920($fp)
	lw $t1, -6920($fp)
	li $t2, 0
	bne $t1, $t2, label995
	j label994
label995:
	lw $t0, -2080($fp)
	sw $t0, -6924($fp)
	lw $t1, -6924($fp)
	li $t2, 0
	bne $t1, $t2, label993
	j label994
label993:
	li $t0, 1
	sw $t0, -6908($fp)
label994:
	addi $sp, $sp, -4
	lw $t0, -6896($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -6908($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -6928($fp)
	addi $sp, $sp, 12
	lw $t0, -6888($fp)
	lw $t1, -6928($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6932($fp)
	lw $t1, -6932($fp)
	li $t2, 0
	bne $t1, $t2, label979
	j label980
label979:
	li $t0, 0
	sw $t0, -6936($fp)
	addi $t0, $fp, -56
	sw $t0, -6940($fp)
	li $t0, 1
	sw $t0, -6944($fp)
	li $t0, 4
	lw $t1, -6944($fp)
	mul $t0, $t0, $t1
	sw $t0, -6948($fp)
	lw $t0, -6948($fp)
	lw $t1, -6940($fp)
	add $t0, $t0, $t1
	sw $t0, -6952($fp)
	lw $t0, -6952($fp)
	lw $t1, 0($t0)
	sw $t1, -6956($fp)
	lw $t1, -6956($fp)
	li $t2, 0
	bne $t1, $t2, label997
	j label996
label996:
	li $t0, 1
	sw $t0, -6936($fp)
label997:
	li $t0, 0
	sw $t0, -6960($fp)
	lw $t0, -472($fp)
	sw $t0, -6964($fp)
	lw $t1, -6964($fp)
	li $t2, 0
	bne $t1, $t2, label999
	j label998
label998:
	li $t0, 1
	sw $t0, -6960($fp)
label999:
	lw $t0, -6936($fp)
	lw $t1, -6960($fp)
	mul $t0, $t0, $t1
	sw $t0, -6968($fp)
	lw $t0, -1624($fp)
	sw $t0, -6972($fp)
	lw $t0, -6968($fp)
	lw $t1, -6972($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -6976($fp)
	j label981
label980:
	li $t0, 34070
	sw $t0, -6980($fp)
label981:
label959:
	j label956
label955:
	addi $t0, $fp, -28
	sw $t0, -6984($fp)
	li $t0, 0
	sw $t0, -6988($fp)
	li $t0, 0
	sw $t0, -6992($fp)
	li $t0, 21277
	sw $t0, -6996($fp)
	lw $t1, -6996($fp)
	li $t2, 0
	bne $t1, $t2, label1002
	j label1003
label1002:
	li $t0, 1
	sw $t0, -6992($fp)
label1003:
	li $t0, 0
	sw $t0, -7000($fp)
	lw $t0, -1636($fp)
	sw $t0, -7004($fp)
	li $t0, 55421
	sw $t0, -7008($fp)
	lw $t1, -7004($fp)
	lw $t2, -7008($fp)
	bge $t1, $t2, label1004
	j label1005
label1004:
	li $t0, 1
	sw $t0, -7000($fp)
label1005:
	lw $t1, -6992($fp)
	lw $t2, -7000($fp)
	beq $t1, $t2, label1000
	j label1001
label1000:
	li $t0, 1
	sw $t0, -6988($fp)
label1001:
	li $t0, 4
	lw $t1, -6988($fp)
	mul $t0, $t0, $t1
	sw $t0, -7012($fp)
	lw $t0, -7012($fp)
	lw $t1, -6984($fp)
	add $t0, $t0, $t1
	sw $t0, -7016($fp)
	lw $t0, -7016($fp)
	lw $t1, 0($t0)
	sw $t1, -7020($fp)
	li $t0, 0
	sw $t0, -7024($fp)
	addi $t0, $fp, -200
	sw $t0, -7028($fp)
	li $t0, 0
	sw $t0, -7032($fp)
	lw $t0, -2092($fp)
	sw $t0, -7036($fp)
	li $t0, 0
	lw $t1, -7036($fp)
	sub $t0, $t0, $t1
	sw $t0, -7040($fp)
	lw $t1, -7040($fp)
	li $t2, 0
	bne $t1, $t2, label1010
	j label1009
label1010:
	li $t0, 36495
	sw $t0, -7044($fp)
	lw $t1, -7044($fp)
	li $t2, 0
	bne $t1, $t2, label1008
	j label1009
label1008:
	li $t0, 1
	sw $t0, -7032($fp)
label1009:
	li $t0, 4
	lw $t1, -7032($fp)
	mul $t0, $t0, $t1
	sw $t0, -7048($fp)
	lw $t0, -7048($fp)
	lw $t1, -7028($fp)
	add $t0, $t0, $t1
	sw $t0, -7052($fp)
	lw $t0, -7052($fp)
	lw $t1, 0($t0)
	sw $t1, -7056($fp)
	li $t0, 0
	sw $t0, -7060($fp)
	lw $t0, -472($fp)
	sw $t0, -7064($fp)
	li $t0, 0
	lw $t1, -7064($fp)
	sub $t0, $t0, $t1
	sw $t0, -7068($fp)
	lw $t1, -7068($fp)
	li $t2, 0
	bne $t1, $t2, label1012
	j label1011
label1011:
	li $t0, 1
	sw $t0, -7060($fp)
label1012:
	li $t0, 0
	sw $t0, -7072($fp)
	li $t0, 0
	sw $t0, -7076($fp)
	li $t0, 53905
	sw $t0, -7080($fp)
	li $t0, 18683
	sw $t0, -7084($fp)
	lw $t1, -7080($fp)
	lw $t2, -7084($fp)
	ble $t1, $t2, label1015
	j label1016
label1015:
	li $t0, 1
	sw $t0, -7076($fp)
label1016:
	li $t0, 65240
	sw $t0, -7088($fp)
	lw $t1, -7076($fp)
	lw $t2, -7088($fp)
	beq $t1, $t2, label1013
	j label1014
label1013:
	li $t0, 1
	sw $t0, -7072($fp)
label1014:
	addi $t0, $fp, -24
	sw $t0, -7092($fp)
	li $t0, 4
	sw $t0, -7096($fp)
	li $t0, 4
	lw $t1, -7096($fp)
	mul $t0, $t0, $t1
	sw $t0, -7100($fp)
	lw $t0, -7100($fp)
	lw $t1, -7092($fp)
	add $t0, $t0, $t1
	sw $t0, -7104($fp)
	lw $t0, -7104($fp)
	lw $t1, 0($t0)
	sw $t1, -7108($fp)
	lw $t0, -1300($fp)
	sw $t0, -7112($fp)
	lw $t0, -1912($fp)
	sw $t0, -7116($fp)
	lw $t0, -7112($fp)
	lw $t1, -7116($fp)
	add $t0, $t0, $t1
	sw $t0, -7120($fp)
	addi $t0, $fp, -280
	sw $t0, -7124($fp)
	li $t0, 9
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
	addi $sp, $sp, -4
	lw $t0, -7060($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7108($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7120($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7140($fp)
	sw $t0, 0($sp)
	jal f12
	sw $v0, -7144($fp)
	addi $sp, $sp, 24
	lw $t1, -7056($fp)
	lw $t2, -7144($fp)
	ble $t1, $t2, label1006
	j label1007
label1006:
	li $t0, 1
	sw $t0, -7024($fp)
label1007:
label956:
	j label947
label946:
label1017:
	li $t0, 0
	sw $t0, -7148($fp)
	li $t0, 20028
	sw $t0, -7152($fp)
	lw $t1, -7152($fp)
	li $t2, 0
	bne $t1, $t2, label1021
	j label1020
label1020:
	li $t0, 1
	sw $t0, -7148($fp)
label1021:
	li $t0, 0
	lw $t1, -7148($fp)
	sub $t0, $t0, $t1
	sw $t0, -7156($fp)
	li $t0, 0
	sw $t0, -7160($fp)
	li $t0, 0
	sw $t0, -7164($fp)
	li $t0, 54040
	sw $t0, -7168($fp)
	li $t0, 60370
	sw $t0, -7172($fp)
	lw $t1, -7168($fp)
	lw $t2, -7172($fp)
	bne $t1, $t2, label1024
	j label1025
label1024:
	li $t0, 1
	sw $t0, -7164($fp)
label1025:
	li $t0, 54708
	sw $t0, -7176($fp)
	lw $t1, -7164($fp)
	lw $t2, -7176($fp)
	beq $t1, $t2, label1022
	j label1023
label1022:
	li $t0, 1
	sw $t0, -7160($fp)
label1023:
	addi $sp, $sp, -4
	lw $t0, -7156($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7160($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -7180($fp)
	addi $sp, $sp, 12
	lw $t1, -7180($fp)
	li $t2, 0
	bne $t1, $t2, label1018
	j label1019
label1018:
label1026:
	li $t0, 0
	sw $t0, -7184($fp)
	addi $t0, $fp, -28
	sw $t0, -7188($fp)
	lw $t0, -1324($fp)
	sw $t0, -7192($fp)
	li $t0, 4
	lw $t1, -7192($fp)
	mul $t0, $t0, $t1
	sw $t0, -7196($fp)
	lw $t0, -7196($fp)
	lw $t1, -7188($fp)
	add $t0, $t0, $t1
	sw $t0, -7200($fp)
	lw $t0, -7200($fp)
	lw $t1, 0($t0)
	sw $t1, -7204($fp)
	lw $t1, -7204($fp)
	li $t2, 0
	bne $t1, $t2, label1030
	j label1029
label1029:
	li $t0, 1
	sw $t0, -7184($fp)
label1030:
	addi $t0, $fp, -124
	sw $t0, -7208($fp)
	li $t0, 1
	sw $t0, -7212($fp)
	li $t0, 4
	lw $t1, -7212($fp)
	mul $t0, $t0, $t1
	sw $t0, -7216($fp)
	lw $t0, -7216($fp)
	lw $t1, -7208($fp)
	add $t0, $t0, $t1
	sw $t0, -7220($fp)
	lw $t0, -7220($fp)
	lw $t1, 0($t0)
	sw $t1, -7224($fp)
	li $t0, 0
	lw $t1, -7224($fp)
	sub $t0, $t0, $t1
	sw $t0, -7228($fp)
	lw $t0, -7184($fp)
	lw $t1, -7228($fp)
	sub $t0, $t0, $t1
	sw $t0, -7232($fp)
	addi $t0, $fp, -224
	sw $t0, -7236($fp)
	lw $t0, -2020($fp)
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
	addi $t0, $fp, -24
	sw $t0, -7256($fp)
	li $t0, 4
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
	lw $t0, -7252($fp)
	lw $t1, -7272($fp)
	mul $t0, $t0, $t1
	sw $t0, -7276($fp)
	lw $t0, -7232($fp)
	lw $t1, -7276($fp)
	add $t0, $t0, $t1
	sw $t0, -7280($fp)
	lw $t1, -7280($fp)
	li $t2, 0
	bne $t1, $t2, label1027
	j label1028
label1027:
label1031:
	li $t0, 11213
	sw $t0, -7284($fp)
	lw $t1, -7284($fp)
	li $t2, 0
	bne $t1, $t2, label1032
	j label1033
label1032:
	addi $t0, $fp, -188
	sw $t0, -7288($fp)
	li $t0, 0
	sw $t0, -7292($fp)
	lw $t0, -1288($fp)
	sw $t0, -7296($fp)
	lw $t0, -1936($fp)
	sw $t0, -7300($fp)
	lw $t1, -7296($fp)
	lw $t2, -7300($fp)
	beq $t1, $t2, label1034
	j label1036
label1036:
	lw $t0, -424($fp)
	sw $t0, -7304($fp)
	lw $t1, -7304($fp)
	li $t2, 0
	bne $t1, $t2, label1034
	j label1035
label1034:
	li $t0, 1
	sw $t0, -7292($fp)
label1035:
	li $t0, 4
	lw $t1, -7292($fp)
	mul $t0, $t0, $t1
	sw $t0, -7308($fp)
	lw $t0, -7308($fp)
	lw $t1, -7288($fp)
	add $t0, $t0, $t1
	sw $t0, -7312($fp)
	lw $t0, -7312($fp)
	lw $t1, 0($t0)
	sw $t1, -7316($fp)
	addi $t0, $fp, -188
	sw $t0, -7320($fp)
	lw $t0, -1852($fp)
	sw $t0, -7324($fp)
	li $t0, 4
	lw $t1, -7324($fp)
	mul $t0, $t0, $t1
	sw $t0, -7328($fp)
	lw $t0, -7328($fp)
	lw $t1, -7320($fp)
	add $t0, $t0, $t1
	sw $t0, -7332($fp)
	lw $t0, -7332($fp)
	lw $t1, 0($t0)
	sw $t1, -7336($fp)
	lw $t0, -7316($fp)
	lw $t1, -7336($fp)
	mul $t0, $t0, $t1
	sw $t0, -7340($fp)
	j label1031
label1033:
	j label1026
label1028:
	j label1017
label1019:
label947:
label890:
	j label887
label886:
	lw $t0, -2032($fp)
	sw $t0, -7344($fp)
	lw $t1, -7344($fp)
	li $t2, 0
	bne $t1, $t2, label1037
	j label1038
label1037:
	li $t0, 0
	sw $t0, -7348($fp)
	li $t0, 0
	sw $t0, -7352($fp)
	lw $t0, -1900($fp)
	sw $t0, -7356($fp)
	li $t0, 0
	lw $t1, -7356($fp)
	sub $t0, $t0, $t1
	sw $t0, -7360($fp)
	li $t0, 8938
	sw $t0, -7364($fp)
	lw $t1, -7360($fp)
	lw $t2, -7364($fp)
	ble $t1, $t2, label1042
	j label1043
label1042:
	li $t0, 1
	sw $t0, -7352($fp)
label1043:
	li $t0, 23291
	sw $t0, -7368($fp)
	lw $t0, -472($fp)
	sw $t0, -7372($fp)
	lw $t0, -7368($fp)
	lw $t1, -7372($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7376($fp)
	lw $t1, -7352($fp)
	lw $t2, -7376($fp)
	bge $t1, $t2, label1040
	j label1041
label1040:
	li $t0, 1
	sw $t0, -7348($fp)
label1041:
	lw $t0, -7348($fp)
	sw $t0, -1360($fp)
	lw $t0, -1360($fp)
	sw $t0, -7380($fp)
	j label1039
label1038:
	li $t0, 24777
	sw $t0, -7384($fp)
	lw $t0, -7384($fp)
	sw $t0, -7388($fp)
	lw $t0, -7388($fp)
	sw $t0, -7392($fp)
	li $t0, 40882
	sw $t0, -7396($fp)
	lw $t0, -7396($fp)
	sw $t0, -7400($fp)
	lw $t0, -7400($fp)
	sw $t0, -7404($fp)
	li $t0, 0
	sw $t0, -7408($fp)
	li $t0, 55972
	sw $t0, -7412($fp)
	lw $t1, -7412($fp)
	li $t2, 0
	bne $t1, $t2, label1044
	j label1046
label1046:
	li $t0, 7937
	sw $t0, -7416($fp)
	lw $t1, -7416($fp)
	li $t2, 0
	bne $t1, $t2, label1044
	j label1045
label1044:
	li $t0, 1
	sw $t0, -7408($fp)
label1045:
	li $t0, 0
	sw $t0, -7420($fp)
	li $t0, 12777
	sw $t0, -7424($fp)
	li $t0, 31242
	sw $t0, -7428($fp)
	lw $t0, -7424($fp)
	lw $t1, -7428($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7432($fp)
	lw $t0, -472($fp)
	sw $t0, -7436($fp)
	lw $t0, -7436($fp)
	sw $t0, -7388($fp)
	lw $t0, -7388($fp)
	sw $t0, -7440($fp)
	li $t0, 18057
	sw $t0, -7444($fp)
	lw $t0, -7444($fp)
	sw $t0, -2584($fp)
	lw $t0, -2584($fp)
	sw $t0, -7448($fp)
	li $t0, 52016
	sw $t0, -7452($fp)
	lw $t0, -7452($fp)
	sw $t0, -1348($fp)
	lw $t0, -1348($fp)
	sw $t0, -7456($fp)
	lw $t0, -2200($fp)
	sw $t0, -7460($fp)
	li $t0, 54920
	sw $t0, -7464($fp)
	lw $t0, -7460($fp)
	lw $t1, -7464($fp)
	mul $t0, $t0, $t1
	sw $t0, -7468($fp)
	li $t0, 0
	lw $t1, -7468($fp)
	sub $t0, $t0, $t1
	sw $t0, -7472($fp)
	addi $sp, $sp, -4
	lw $t0, -7432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7440($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7448($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7472($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -7476($fp)
	addi $sp, $sp, 24
	li $t0, 52127
	sw $t0, -7480($fp)
	li $t0, 0
	lw $t1, -7480($fp)
	sub $t0, $t0, $t1
	sw $t0, -7484($fp)
	lw $t0, -7476($fp)
	lw $t1, -7484($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7488($fp)
	li $t0, 34055
	sw $t0, -7492($fp)
	li $t0, 21127
	sw $t0, -7496($fp)
	lw $t0, -7492($fp)
	lw $t1, -7496($fp)
	mul $t0, $t0, $t1
	sw $t0, -7500($fp)
	lw $t0, -2044($fp)
	sw $t0, -7504($fp)
	lw $t0, -7500($fp)
	lw $t1, -7504($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -7508($fp)
	lw $t0, -7488($fp)
	lw $t1, -7508($fp)
	sub $t0, $t0, $t1
	sw $t0, -7512($fp)
	lw $t1, -7512($fp)
	li $t2, 0
	bne $t1, $t2, label1049
	j label1048
label1049:
	lw $t0, -2056($fp)
	sw $t0, -7516($fp)
	li $t0, 0
	sw $t0, -7520($fp)
	li $t0, 23086
	sw $t0, -7524($fp)
	li $t0, 64726
	sw $t0, -7528($fp)
	lw $t1, -7524($fp)
	lw $t2, -7528($fp)
	blt $t1, $t2, label1050
	j label1051
label1050:
	li $t0, 1
	sw $t0, -7520($fp)
label1051:
	lw $t1, -7516($fp)
	lw $t2, -7520($fp)
	bne $t1, $t2, label1047
	j label1048
label1047:
	li $t0, 1
	sw $t0, -7420($fp)
label1048:
	li $t0, 58413
	sw $t0, -7532($fp)
	li $t0, 0
	lw $t1, -7532($fp)
	sub $t0, $t0, $t1
	sw $t0, -7536($fp)
	addi $t0, $fp, -296
	sw $t0, -7540($fp)
	lw $t0, -2092($fp)
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
	li $t0, 36770
	sw $t0, -7560($fp)
	lw $t0, -7556($fp)
	lw $t1, -7560($fp)
	mul $t0, $t0, $t1
	sw $t0, -7564($fp)
	lw $t0, -7536($fp)
	lw $t1, -7564($fp)
	sub $t0, $t0, $t1
	sw $t0, -7568($fp)
	li $t0, 0
	sw $t0, -7572($fp)
	addi $t0, $fp, -92
	sw $t0, -7576($fp)
	li $t0, 6
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
	lw $t1, -7592($fp)
	li $t2, 0
	bne $t1, $t2, label1053
	j label1052
label1052:
	li $t0, 1
	sw $t0, -7572($fp)
label1053:
	lw $t0, -7568($fp)
	lw $t1, -7572($fp)
	sub $t0, $t0, $t1
	sw $t0, -7596($fp)
	li $t0, 55453
	sw $t0, -7600($fp)
	li $t0, 35286
	sw $t0, -7604($fp)
	li $t0, 0
	lw $t1, -7604($fp)
	sub $t0, $t0, $t1
	sw $t0, -7608($fp)
	lw $t0, -1864($fp)
	sw $t0, -7612($fp)
	lw $t0, -7608($fp)
	lw $t1, -7612($fp)
	sub $t0, $t0, $t1
	sw $t0, -7616($fp)
	lw $t0, -7400($fp)
	sw $t0, -7620($fp)
	lw $t0, -7620($fp)
	sw $t0, -2080($fp)
	lw $t0, -2080($fp)
	sw $t0, -7624($fp)
	li $t0, 0
	sw $t0, -7628($fp)
	li $t0, 0
	sw $t0, -7632($fp)
	li $t0, 52358
	sw $t0, -7636($fp)
	lw $t1, -7636($fp)
	li $t2, 0
	bne $t1, $t2, label1057
	j label1056
label1056:
	li $t0, 1
	sw $t0, -7632($fp)
label1057:
	lw $t0, -2068($fp)
	sw $t0, -7640($fp)
	lw $t1, -7632($fp)
	lw $t2, -7640($fp)
	ble $t1, $t2, label1054
	j label1055
label1054:
	li $t0, 1
	sw $t0, -7628($fp)
label1055:
	addi $sp, $sp, -4
	lw $t0, -7624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7628($fp)
	sw $t0, 0($sp)
	jal f13
	sw $v0, -7644($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -7644($fp)
	sub $t0, $t0, $t1
	sw $t0, -7648($fp)
	addi $sp, $sp, -4
	lw $t0, -7616($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -7648($fp)
	sw $t0, 0($sp)
	jal f14
	sw $v0, -7652($fp)
	addi $sp, $sp, 12
	lw $t0, -7600($fp)
	lw $t1, -7652($fp)
	mul $t0, $t0, $t1
	sw $t0, -7656($fp)
	li $t0, 0
	lw $t1, -7656($fp)
	sub $t0, $t0, $t1
	sw $t0, -7660($fp)
label1039:
label887:
	j label871
label870:
	li $t0, 0
	sw $t0, -7664($fp)
	jal f10
	sw $v0, -7668($fp)
	addi $sp, $sp, 4
	lw $t1, -7668($fp)
	li $t2, 0
	bne $t1, $t2, label1059
	j label1058
label1058:
	li $t0, 1
	sw $t0, -7664($fp)
label1059:
	li $t0, 50287
	sw $t0, -7672($fp)
	lw $t0, -7664($fp)
	lw $t1, -7672($fp)
	add $t0, $t0, $t1
	sw $t0, -7676($fp)
	lw $t0, -7676($fp)
	sw $t0, -472($fp)
	lw $t0, -472($fp)
	sw $t0, -7680($fp)
	lw $ra, -4($fp)
	lw $v0, -7680($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label871:
	j label863
label865:
label853:
	j label846
label848:
	addi $t0, $fp, -24
	sw $t0, -7684($fp)
	li $t0, 0
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
	addi $t0, $fp, -24
	sw $t0, -7704($fp)
	li $t0, 1
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
	addi $t0, $fp, -24
	sw $t0, -7724($fp)
	li $t0, 2
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
	addi $t0, $fp, -24
	sw $t0, -7744($fp)
	li $t0, 3
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
	addi $t0, $fp, -24
	sw $t0, -7764($fp)
	li $t0, 4
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
	lw $t0, -424($fp)
	sw $t0, -7784($fp)
	lw $t0, -7784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -436($fp)
	sw $t0, -7788($fp)
	lw $t0, -7788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -448($fp)
	sw $t0, -7792($fp)
	lw $t0, -7792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -460($fp)
	sw $t0, -7796($fp)
	lw $t0, -7796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -472($fp)
	sw $t0, -7800($fp)
	lw $t0, -7800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -484($fp)
	sw $t0, -7804($fp)
	lw $t0, -7804($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -28
	sw $t0, -7808($fp)
	li $t0, 0
	sw $t0, -7812($fp)
	li $t0, 4
	lw $t1, -7812($fp)
	mul $t0, $t0, $t1
	sw $t0, -7816($fp)
	lw $t0, -7816($fp)
	lw $t1, -7808($fp)
	add $t0, $t0, $t1
	sw $t0, -7820($fp)
	lw $t0, -7820($fp)
	lw $t1, 0($t0)
	sw $t1, -7824($fp)
	lw $t0, -7824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -520($fp)
	sw $t0, -7828($fp)
	lw $t0, -7828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -7832($fp)
	li $t0, 0
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
	addi $t0, $fp, -56
	sw $t0, -7852($fp)
	li $t0, 1
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
	addi $t0, $fp, -56
	sw $t0, -7872($fp)
	li $t0, 2
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
	addi $t0, $fp, -56
	sw $t0, -7892($fp)
	li $t0, 3
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
	addi $t0, $fp, -56
	sw $t0, -7912($fp)
	li $t0, 4
	sw $t0, -7916($fp)
	li $t0, 4
	lw $t1, -7916($fp)
	mul $t0, $t0, $t1
	sw $t0, -7920($fp)
	lw $t0, -7920($fp)
	lw $t1, -7912($fp)
	add $t0, $t0, $t1
	sw $t0, -7924($fp)
	lw $t0, -7924($fp)
	lw $t1, 0($t0)
	sw $t1, -7928($fp)
	lw $t0, -7928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -7932($fp)
	li $t0, 5
	sw $t0, -7936($fp)
	li $t0, 4
	lw $t1, -7936($fp)
	mul $t0, $t0, $t1
	sw $t0, -7940($fp)
	lw $t0, -7940($fp)
	lw $t1, -7932($fp)
	add $t0, $t0, $t1
	sw $t0, -7944($fp)
	lw $t0, -7944($fp)
	lw $t1, 0($t0)
	sw $t1, -7948($fp)
	lw $t0, -7948($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -56
	sw $t0, -7952($fp)
	li $t0, 6
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
	lw $t0, -7968($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -7972($fp)
	li $t0, 0
	sw $t0, -7976($fp)
	li $t0, 4
	lw $t1, -7976($fp)
	mul $t0, $t0, $t1
	sw $t0, -7980($fp)
	lw $t0, -7980($fp)
	lw $t1, -7972($fp)
	add $t0, $t0, $t1
	sw $t0, -7984($fp)
	lw $t0, -7984($fp)
	lw $t1, 0($t0)
	sw $t1, -7988($fp)
	lw $t0, -7988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -7992($fp)
	li $t0, 1
	sw $t0, -7996($fp)
	li $t0, 4
	lw $t1, -7996($fp)
	mul $t0, $t0, $t1
	sw $t0, -8000($fp)
	lw $t0, -8000($fp)
	lw $t1, -7992($fp)
	add $t0, $t0, $t1
	sw $t0, -8004($fp)
	lw $t0, -8004($fp)
	lw $t1, 0($t0)
	sw $t1, -8008($fp)
	lw $t0, -8008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -8012($fp)
	li $t0, 2
	sw $t0, -8016($fp)
	li $t0, 4
	lw $t1, -8016($fp)
	mul $t0, $t0, $t1
	sw $t0, -8020($fp)
	lw $t0, -8020($fp)
	lw $t1, -8012($fp)
	add $t0, $t0, $t1
	sw $t0, -8024($fp)
	lw $t0, -8024($fp)
	lw $t1, 0($t0)
	sw $t1, -8028($fp)
	lw $t0, -8028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -8032($fp)
	li $t0, 3
	sw $t0, -8036($fp)
	li $t0, 4
	lw $t1, -8036($fp)
	mul $t0, $t0, $t1
	sw $t0, -8040($fp)
	lw $t0, -8040($fp)
	lw $t1, -8032($fp)
	add $t0, $t0, $t1
	sw $t0, -8044($fp)
	lw $t0, -8044($fp)
	lw $t1, 0($t0)
	sw $t1, -8048($fp)
	lw $t0, -8048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -8052($fp)
	li $t0, 4
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
	lw $t0, -8068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -8072($fp)
	li $t0, 5
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
	lw $t0, -8088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -8092($fp)
	li $t0, 6
	sw $t0, -8096($fp)
	li $t0, 4
	lw $t1, -8096($fp)
	mul $t0, $t0, $t1
	sw $t0, -8100($fp)
	lw $t0, -8100($fp)
	lw $t1, -8092($fp)
	add $t0, $t0, $t1
	sw $t0, -8104($fp)
	lw $t0, -8104($fp)
	lw $t1, 0($t0)
	sw $t1, -8108($fp)
	lw $t0, -8108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -8112($fp)
	li $t0, 7
	sw $t0, -8116($fp)
	li $t0, 4
	lw $t1, -8116($fp)
	mul $t0, $t0, $t1
	sw $t0, -8120($fp)
	lw $t0, -8120($fp)
	lw $t1, -8112($fp)
	add $t0, $t0, $t1
	sw $t0, -8124($fp)
	lw $t0, -8124($fp)
	lw $t1, 0($t0)
	sw $t1, -8128($fp)
	lw $t0, -8128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -92
	sw $t0, -8132($fp)
	li $t0, 8
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
	lw $t0, -8148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8152($fp)
	li $t0, 0
	sw $t0, -8156($fp)
	li $t0, 4
	lw $t1, -8156($fp)
	mul $t0, $t0, $t1
	sw $t0, -8160($fp)
	lw $t0, -8160($fp)
	lw $t1, -8152($fp)
	add $t0, $t0, $t1
	sw $t0, -8164($fp)
	lw $t0, -8164($fp)
	lw $t1, 0($t0)
	sw $t1, -8168($fp)
	lw $t0, -8168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8172($fp)
	li $t0, 1
	sw $t0, -8176($fp)
	li $t0, 4
	lw $t1, -8176($fp)
	mul $t0, $t0, $t1
	sw $t0, -8180($fp)
	lw $t0, -8180($fp)
	lw $t1, -8172($fp)
	add $t0, $t0, $t1
	sw $t0, -8184($fp)
	lw $t0, -8184($fp)
	lw $t1, 0($t0)
	sw $t1, -8188($fp)
	lw $t0, -8188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8192($fp)
	li $t0, 2
	sw $t0, -8196($fp)
	li $t0, 4
	lw $t1, -8196($fp)
	mul $t0, $t0, $t1
	sw $t0, -8200($fp)
	lw $t0, -8200($fp)
	lw $t1, -8192($fp)
	add $t0, $t0, $t1
	sw $t0, -8204($fp)
	lw $t0, -8204($fp)
	lw $t1, 0($t0)
	sw $t1, -8208($fp)
	lw $t0, -8208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8212($fp)
	li $t0, 3
	sw $t0, -8216($fp)
	li $t0, 4
	lw $t1, -8216($fp)
	mul $t0, $t0, $t1
	sw $t0, -8220($fp)
	lw $t0, -8220($fp)
	lw $t1, -8212($fp)
	add $t0, $t0, $t1
	sw $t0, -8224($fp)
	lw $t0, -8224($fp)
	lw $t1, 0($t0)
	sw $t1, -8228($fp)
	lw $t0, -8228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8232($fp)
	li $t0, 4
	sw $t0, -8236($fp)
	li $t0, 4
	lw $t1, -8236($fp)
	mul $t0, $t0, $t1
	sw $t0, -8240($fp)
	lw $t0, -8240($fp)
	lw $t1, -8232($fp)
	add $t0, $t0, $t1
	sw $t0, -8244($fp)
	lw $t0, -8244($fp)
	lw $t1, 0($t0)
	sw $t1, -8248($fp)
	lw $t0, -8248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8252($fp)
	li $t0, 5
	sw $t0, -8256($fp)
	li $t0, 4
	lw $t1, -8256($fp)
	mul $t0, $t0, $t1
	sw $t0, -8260($fp)
	lw $t0, -8260($fp)
	lw $t1, -8252($fp)
	add $t0, $t0, $t1
	sw $t0, -8264($fp)
	lw $t0, -8264($fp)
	lw $t1, 0($t0)
	sw $t1, -8268($fp)
	lw $t0, -8268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8272($fp)
	li $t0, 6
	sw $t0, -8276($fp)
	li $t0, 4
	lw $t1, -8276($fp)
	mul $t0, $t0, $t1
	sw $t0, -8280($fp)
	lw $t0, -8280($fp)
	lw $t1, -8272($fp)
	add $t0, $t0, $t1
	sw $t0, -8284($fp)
	lw $t0, -8284($fp)
	lw $t1, 0($t0)
	sw $t1, -8288($fp)
	lw $t0, -8288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -8292($fp)
	li $t0, 7
	sw $t0, -8296($fp)
	li $t0, 4
	lw $t1, -8296($fp)
	mul $t0, $t0, $t1
	sw $t0, -8300($fp)
	lw $t0, -8300($fp)
	lw $t1, -8292($fp)
	add $t0, $t0, $t1
	sw $t0, -8304($fp)
	lw $t0, -8304($fp)
	lw $t1, 0($t0)
	sw $t1, -8308($fp)
	lw $t0, -8308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -8312($fp)
	li $t0, 0
	sw $t0, -8316($fp)
	li $t0, 4
	lw $t1, -8316($fp)
	mul $t0, $t0, $t1
	sw $t0, -8320($fp)
	lw $t0, -8320($fp)
	lw $t1, -8312($fp)
	add $t0, $t0, $t1
	sw $t0, -8324($fp)
	lw $t0, -8324($fp)
	lw $t1, 0($t0)
	sw $t1, -8328($fp)
	lw $t0, -8328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -8332($fp)
	li $t0, 1
	sw $t0, -8336($fp)
	li $t0, 4
	lw $t1, -8336($fp)
	mul $t0, $t0, $t1
	sw $t0, -8340($fp)
	lw $t0, -8340($fp)
	lw $t1, -8332($fp)
	add $t0, $t0, $t1
	sw $t0, -8344($fp)
	lw $t0, -8344($fp)
	lw $t1, 0($t0)
	sw $t1, -8348($fp)
	lw $t0, -8348($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -8352($fp)
	li $t0, 2
	sw $t0, -8356($fp)
	li $t0, 4
	lw $t1, -8356($fp)
	mul $t0, $t0, $t1
	sw $t0, -8360($fp)
	lw $t0, -8360($fp)
	lw $t1, -8352($fp)
	add $t0, $t0, $t1
	sw $t0, -8364($fp)
	lw $t0, -8364($fp)
	lw $t1, 0($t0)
	sw $t1, -8368($fp)
	lw $t0, -8368($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -8372($fp)
	li $t0, 3
	sw $t0, -8376($fp)
	li $t0, 4
	lw $t1, -8376($fp)
	mul $t0, $t0, $t1
	sw $t0, -8380($fp)
	lw $t0, -8380($fp)
	lw $t1, -8372($fp)
	add $t0, $t0, $t1
	sw $t0, -8384($fp)
	lw $t0, -8384($fp)
	lw $t1, 0($t0)
	sw $t1, -8388($fp)
	lw $t0, -8388($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -8392($fp)
	li $t0, 4
	sw $t0, -8396($fp)
	li $t0, 4
	lw $t1, -8396($fp)
	mul $t0, $t0, $t1
	sw $t0, -8400($fp)
	lw $t0, -8400($fp)
	lw $t1, -8392($fp)
	add $t0, $t0, $t1
	sw $t0, -8404($fp)
	lw $t0, -8404($fp)
	lw $t1, 0($t0)
	sw $t1, -8408($fp)
	lw $t0, -8408($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -8412($fp)
	li $t0, 5
	sw $t0, -8416($fp)
	li $t0, 4
	lw $t1, -8416($fp)
	mul $t0, $t0, $t1
	sw $t0, -8420($fp)
	lw $t0, -8420($fp)
	lw $t1, -8412($fp)
	add $t0, $t0, $t1
	sw $t0, -8424($fp)
	lw $t0, -8424($fp)
	lw $t1, 0($t0)
	sw $t1, -8428($fp)
	lw $t0, -8428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -152
	sw $t0, -8432($fp)
	li $t0, 6
	sw $t0, -8436($fp)
	li $t0, 4
	lw $t1, -8436($fp)
	mul $t0, $t0, $t1
	sw $t0, -8440($fp)
	lw $t0, -8440($fp)
	lw $t1, -8432($fp)
	add $t0, $t0, $t1
	sw $t0, -8444($fp)
	lw $t0, -8444($fp)
	lw $t1, 0($t0)
	sw $t1, -8448($fp)
	lw $t0, -8448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1276($fp)
	sw $t0, -8452($fp)
	lw $t0, -8452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1288($fp)
	sw $t0, -8456($fp)
	lw $t0, -8456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1300($fp)
	sw $t0, -8460($fp)
	lw $t0, -8460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1312($fp)
	sw $t0, -8464($fp)
	lw $t0, -8464($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1324($fp)
	sw $t0, -8468($fp)
	lw $t0, -8468($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1336($fp)
	sw $t0, -8472($fp)
	lw $t0, -8472($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1348($fp)
	sw $t0, -8476($fp)
	lw $t0, -8476($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1360($fp)
	sw $t0, -8480($fp)
	lw $t0, -8480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1372($fp)
	sw $t0, -8484($fp)
	lw $t0, -8484($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1384($fp)
	sw $t0, -8488($fp)
	lw $t0, -8488($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -8492($fp)
	li $t0, 0
	sw $t0, -8496($fp)
	li $t0, 4
	lw $t1, -8496($fp)
	mul $t0, $t0, $t1
	sw $t0, -8500($fp)
	lw $t0, -8500($fp)
	lw $t1, -8492($fp)
	add $t0, $t0, $t1
	sw $t0, -8504($fp)
	lw $t0, -8504($fp)
	lw $t1, 0($t0)
	sw $t1, -8508($fp)
	lw $t0, -8508($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -8512($fp)
	li $t0, 1
	sw $t0, -8516($fp)
	li $t0, 4
	lw $t1, -8516($fp)
	mul $t0, $t0, $t1
	sw $t0, -8520($fp)
	lw $t0, -8520($fp)
	lw $t1, -8512($fp)
	add $t0, $t0, $t1
	sw $t0, -8524($fp)
	lw $t0, -8524($fp)
	lw $t1, 0($t0)
	sw $t1, -8528($fp)
	lw $t0, -8528($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -8532($fp)
	li $t0, 2
	sw $t0, -8536($fp)
	li $t0, 4
	lw $t1, -8536($fp)
	mul $t0, $t0, $t1
	sw $t0, -8540($fp)
	lw $t0, -8540($fp)
	lw $t1, -8532($fp)
	add $t0, $t0, $t1
	sw $t0, -8544($fp)
	lw $t0, -8544($fp)
	lw $t1, 0($t0)
	sw $t1, -8548($fp)
	lw $t0, -8548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -8552($fp)
	li $t0, 3
	sw $t0, -8556($fp)
	li $t0, 4
	lw $t1, -8556($fp)
	mul $t0, $t0, $t1
	sw $t0, -8560($fp)
	lw $t0, -8560($fp)
	lw $t1, -8552($fp)
	add $t0, $t0, $t1
	sw $t0, -8564($fp)
	lw $t0, -8564($fp)
	lw $t1, 0($t0)
	sw $t1, -8568($fp)
	lw $t0, -8568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -8572($fp)
	li $t0, 4
	sw $t0, -8576($fp)
	li $t0, 4
	lw $t1, -8576($fp)
	mul $t0, $t0, $t1
	sw $t0, -8580($fp)
	lw $t0, -8580($fp)
	lw $t1, -8572($fp)
	add $t0, $t0, $t1
	sw $t0, -8584($fp)
	lw $t0, -8584($fp)
	lw $t1, 0($t0)
	sw $t1, -8588($fp)
	lw $t0, -8588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -8592($fp)
	li $t0, 5
	sw $t0, -8596($fp)
	li $t0, 4
	lw $t1, -8596($fp)
	mul $t0, $t0, $t1
	sw $t0, -8600($fp)
	lw $t0, -8600($fp)
	lw $t1, -8592($fp)
	add $t0, $t0, $t1
	sw $t0, -8604($fp)
	lw $t0, -8604($fp)
	lw $t1, 0($t0)
	sw $t1, -8608($fp)
	lw $t0, -8608($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -8612($fp)
	li $t0, 6
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
	lw $t0, -8628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -8632($fp)
	li $t0, 7
	sw $t0, -8636($fp)
	li $t0, 4
	lw $t1, -8636($fp)
	mul $t0, $t0, $t1
	sw $t0, -8640($fp)
	lw $t0, -8640($fp)
	lw $t1, -8632($fp)
	add $t0, $t0, $t1
	sw $t0, -8644($fp)
	lw $t0, -8644($fp)
	lw $t1, 0($t0)
	sw $t1, -8648($fp)
	lw $t0, -8648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -188
	sw $t0, -8652($fp)
	li $t0, 8
	sw $t0, -8656($fp)
	li $t0, 4
	lw $t1, -8656($fp)
	mul $t0, $t0, $t1
	sw $t0, -8660($fp)
	lw $t0, -8660($fp)
	lw $t1, -8652($fp)
	add $t0, $t0, $t1
	sw $t0, -8664($fp)
	lw $t0, -8664($fp)
	lw $t1, 0($t0)
	sw $t1, -8668($fp)
	lw $t0, -8668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1612($fp)
	sw $t0, -8672($fp)
	lw $t0, -8672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1624($fp)
	sw $t0, -8676($fp)
	lw $t0, -8676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1636($fp)
	sw $t0, -8680($fp)
	lw $t0, -8680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -8684($fp)
	li $t0, 0
	sw $t0, -8688($fp)
	li $t0, 4
	lw $t1, -8688($fp)
	mul $t0, $t0, $t1
	sw $t0, -8692($fp)
	lw $t0, -8692($fp)
	lw $t1, -8684($fp)
	add $t0, $t0, $t1
	sw $t0, -8696($fp)
	lw $t0, -8696($fp)
	lw $t1, 0($t0)
	sw $t1, -8700($fp)
	lw $t0, -8700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -8704($fp)
	li $t0, 1
	sw $t0, -8708($fp)
	li $t0, 4
	lw $t1, -8708($fp)
	mul $t0, $t0, $t1
	sw $t0, -8712($fp)
	lw $t0, -8712($fp)
	lw $t1, -8704($fp)
	add $t0, $t0, $t1
	sw $t0, -8716($fp)
	lw $t0, -8716($fp)
	lw $t1, 0($t0)
	sw $t1, -8720($fp)
	lw $t0, -8720($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -200
	sw $t0, -8724($fp)
	li $t0, 2
	sw $t0, -8728($fp)
	li $t0, 4
	lw $t1, -8728($fp)
	mul $t0, $t0, $t1
	sw $t0, -8732($fp)
	lw $t0, -8732($fp)
	lw $t1, -8724($fp)
	add $t0, $t0, $t1
	sw $t0, -8736($fp)
	lw $t0, -8736($fp)
	lw $t1, 0($t0)
	sw $t1, -8740($fp)
	lw $t0, -8740($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1720($fp)
	sw $t0, -8744($fp)
	lw $t0, -8744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1732($fp)
	sw $t0, -8748($fp)
	lw $t0, -8748($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -8752($fp)
	li $t0, 0
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
	lw $t0, -8768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -8772($fp)
	li $t0, 1
	sw $t0, -8776($fp)
	li $t0, 4
	lw $t1, -8776($fp)
	mul $t0, $t0, $t1
	sw $t0, -8780($fp)
	lw $t0, -8780($fp)
	lw $t1, -8772($fp)
	add $t0, $t0, $t1
	sw $t0, -8784($fp)
	lw $t0, -8784($fp)
	lw $t1, 0($t0)
	sw $t1, -8788($fp)
	lw $t0, -8788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -212
	sw $t0, -8792($fp)
	li $t0, 2
	sw $t0, -8796($fp)
	li $t0, 4
	lw $t1, -8796($fp)
	mul $t0, $t0, $t1
	sw $t0, -8800($fp)
	lw $t0, -8800($fp)
	lw $t1, -8792($fp)
	add $t0, $t0, $t1
	sw $t0, -8804($fp)
	lw $t0, -8804($fp)
	lw $t1, 0($t0)
	sw $t1, -8808($fp)
	lw $t0, -8808($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1816($fp)
	sw $t0, -8812($fp)
	lw $t0, -8812($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1828($fp)
	sw $t0, -8816($fp)
	lw $t0, -8816($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1840($fp)
	sw $t0, -8820($fp)
	lw $t0, -8820($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1852($fp)
	sw $t0, -8824($fp)
	lw $t0, -8824($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1864($fp)
	sw $t0, -8828($fp)
	lw $t0, -8828($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1876($fp)
	sw $t0, -8832($fp)
	lw $t0, -8832($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1888($fp)
	sw $t0, -8836($fp)
	lw $t0, -8836($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1900($fp)
	sw $t0, -8840($fp)
	lw $t0, -8840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1912($fp)
	sw $t0, -8844($fp)
	lw $t0, -8844($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1924($fp)
	sw $t0, -8848($fp)
	lw $t0, -8848($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1936($fp)
	sw $t0, -8852($fp)
	lw $t0, -8852($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -8856($fp)
	li $t0, 0
	sw $t0, -8860($fp)
	li $t0, 4
	lw $t1, -8860($fp)
	mul $t0, $t0, $t1
	sw $t0, -8864($fp)
	lw $t0, -8864($fp)
	lw $t1, -8856($fp)
	add $t0, $t0, $t1
	sw $t0, -8868($fp)
	lw $t0, -8868($fp)
	lw $t1, 0($t0)
	sw $t1, -8872($fp)
	lw $t0, -8872($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -8876($fp)
	li $t0, 1
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
	lw $t0, -8892($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -224
	sw $t0, -8896($fp)
	li $t0, 2
	sw $t0, -8900($fp)
	li $t0, 4
	lw $t1, -8900($fp)
	mul $t0, $t0, $t1
	sw $t0, -8904($fp)
	lw $t0, -8904($fp)
	lw $t1, -8896($fp)
	add $t0, $t0, $t1
	sw $t0, -8908($fp)
	lw $t0, -8908($fp)
	lw $t1, 0($t0)
	sw $t1, -8912($fp)
	lw $t0, -8912($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2020($fp)
	sw $t0, -8916($fp)
	lw $t0, -8916($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2032($fp)
	sw $t0, -8920($fp)
	lw $t0, -8920($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2044($fp)
	sw $t0, -8924($fp)
	lw $t0, -8924($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2056($fp)
	sw $t0, -8928($fp)
	lw $t0, -8928($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2068($fp)
	sw $t0, -8932($fp)
	lw $t0, -8932($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2080($fp)
	sw $t0, -8936($fp)
	lw $t0, -8936($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2092($fp)
	sw $t0, -8940($fp)
	lw $t0, -8940($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -8944($fp)
	li $t0, 0
	sw $t0, -8948($fp)
	li $t0, 4
	lw $t1, -8948($fp)
	mul $t0, $t0, $t1
	sw $t0, -8952($fp)
	lw $t0, -8952($fp)
	lw $t1, -8944($fp)
	add $t0, $t0, $t1
	sw $t0, -8956($fp)
	lw $t0, -8956($fp)
	lw $t1, 0($t0)
	sw $t1, -8960($fp)
	lw $t0, -8960($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -8964($fp)
	li $t0, 1
	sw $t0, -8968($fp)
	li $t0, 4
	lw $t1, -8968($fp)
	mul $t0, $t0, $t1
	sw $t0, -8972($fp)
	lw $t0, -8972($fp)
	lw $t1, -8964($fp)
	add $t0, $t0, $t1
	sw $t0, -8976($fp)
	lw $t0, -8976($fp)
	lw $t1, 0($t0)
	sw $t1, -8980($fp)
	lw $t0, -8980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -8984($fp)
	li $t0, 2
	sw $t0, -8988($fp)
	li $t0, 4
	lw $t1, -8988($fp)
	mul $t0, $t0, $t1
	sw $t0, -8992($fp)
	lw $t0, -8992($fp)
	lw $t1, -8984($fp)
	add $t0, $t0, $t1
	sw $t0, -8996($fp)
	lw $t0, -8996($fp)
	lw $t1, 0($t0)
	sw $t1, -9000($fp)
	lw $t0, -9000($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -240
	sw $t0, -9004($fp)
	li $t0, 3
	sw $t0, -9008($fp)
	li $t0, 4
	lw $t1, -9008($fp)
	mul $t0, $t0, $t1
	sw $t0, -9012($fp)
	lw $t0, -9012($fp)
	lw $t1, -9004($fp)
	add $t0, $t0, $t1
	sw $t0, -9016($fp)
	lw $t0, -9016($fp)
	lw $t1, 0($t0)
	sw $t1, -9020($fp)
	lw $t0, -9020($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2200($fp)
	sw $t0, -9024($fp)
	lw $t0, -9024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2212($fp)
	sw $t0, -9028($fp)
	lw $t0, -9028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -9032($fp)
	li $t0, 0
	sw $t0, -9036($fp)
	li $t0, 4
	lw $t1, -9036($fp)
	mul $t0, $t0, $t1
	sw $t0, -9040($fp)
	lw $t0, -9040($fp)
	lw $t1, -9032($fp)
	add $t0, $t0, $t1
	sw $t0, -9044($fp)
	lw $t0, -9044($fp)
	lw $t1, 0($t0)
	sw $t1, -9048($fp)
	lw $t0, -9048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -9052($fp)
	li $t0, 1
	sw $t0, -9056($fp)
	li $t0, 4
	lw $t1, -9056($fp)
	mul $t0, $t0, $t1
	sw $t0, -9060($fp)
	lw $t0, -9060($fp)
	lw $t1, -9052($fp)
	add $t0, $t0, $t1
	sw $t0, -9064($fp)
	lw $t0, -9064($fp)
	lw $t1, 0($t0)
	sw $t1, -9068($fp)
	lw $t0, -9068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -9072($fp)
	li $t0, 2
	sw $t0, -9076($fp)
	li $t0, 4
	lw $t1, -9076($fp)
	mul $t0, $t0, $t1
	sw $t0, -9080($fp)
	lw $t0, -9080($fp)
	lw $t1, -9072($fp)
	add $t0, $t0, $t1
	sw $t0, -9084($fp)
	lw $t0, -9084($fp)
	lw $t1, 0($t0)
	sw $t1, -9088($fp)
	lw $t0, -9088($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -9092($fp)
	li $t0, 3
	sw $t0, -9096($fp)
	li $t0, 4
	lw $t1, -9096($fp)
	mul $t0, $t0, $t1
	sw $t0, -9100($fp)
	lw $t0, -9100($fp)
	lw $t1, -9092($fp)
	add $t0, $t0, $t1
	sw $t0, -9104($fp)
	lw $t0, -9104($fp)
	lw $t1, 0($t0)
	sw $t1, -9108($fp)
	lw $t0, -9108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -9112($fp)
	li $t0, 4
	sw $t0, -9116($fp)
	li $t0, 4
	lw $t1, -9116($fp)
	mul $t0, $t0, $t1
	sw $t0, -9120($fp)
	lw $t0, -9120($fp)
	lw $t1, -9112($fp)
	add $t0, $t0, $t1
	sw $t0, -9124($fp)
	lw $t0, -9124($fp)
	lw $t1, 0($t0)
	sw $t1, -9128($fp)
	lw $t0, -9128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -9132($fp)
	li $t0, 5
	sw $t0, -9136($fp)
	li $t0, 4
	lw $t1, -9136($fp)
	mul $t0, $t0, $t1
	sw $t0, -9140($fp)
	lw $t0, -9140($fp)
	lw $t1, -9132($fp)
	add $t0, $t0, $t1
	sw $t0, -9144($fp)
	lw $t0, -9144($fp)
	lw $t1, 0($t0)
	sw $t1, -9148($fp)
	lw $t0, -9148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -9152($fp)
	li $t0, 6
	sw $t0, -9156($fp)
	li $t0, 4
	lw $t1, -9156($fp)
	mul $t0, $t0, $t1
	sw $t0, -9160($fp)
	lw $t0, -9160($fp)
	lw $t1, -9152($fp)
	add $t0, $t0, $t1
	sw $t0, -9164($fp)
	lw $t0, -9164($fp)
	lw $t1, 0($t0)
	sw $t1, -9168($fp)
	lw $t0, -9168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -9172($fp)
	li $t0, 7
	sw $t0, -9176($fp)
	li $t0, 4
	lw $t1, -9176($fp)
	mul $t0, $t0, $t1
	sw $t0, -9180($fp)
	lw $t0, -9180($fp)
	lw $t1, -9172($fp)
	add $t0, $t0, $t1
	sw $t0, -9184($fp)
	lw $t0, -9184($fp)
	lw $t1, 0($t0)
	sw $t1, -9188($fp)
	lw $t0, -9188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -9192($fp)
	li $t0, 8
	sw $t0, -9196($fp)
	li $t0, 4
	lw $t1, -9196($fp)
	mul $t0, $t0, $t1
	sw $t0, -9200($fp)
	lw $t0, -9200($fp)
	lw $t1, -9192($fp)
	add $t0, $t0, $t1
	sw $t0, -9204($fp)
	lw $t0, -9204($fp)
	lw $t1, 0($t0)
	sw $t1, -9208($fp)
	lw $t0, -9208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -280
	sw $t0, -9212($fp)
	li $t0, 9
	sw $t0, -9216($fp)
	li $t0, 4
	lw $t1, -9216($fp)
	mul $t0, $t0, $t1
	sw $t0, -9220($fp)
	lw $t0, -9220($fp)
	lw $t1, -9212($fp)
	add $t0, $t0, $t1
	sw $t0, -9224($fp)
	lw $t0, -9224($fp)
	lw $t1, 0($t0)
	sw $t1, -9228($fp)
	lw $t0, -9228($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -296
	sw $t0, -9232($fp)
	li $t0, 0
	sw $t0, -9236($fp)
	li $t0, 4
	lw $t1, -9236($fp)
	mul $t0, $t0, $t1
	sw $t0, -9240($fp)
	lw $t0, -9240($fp)
	lw $t1, -9232($fp)
	add $t0, $t0, $t1
	sw $t0, -9244($fp)
	lw $t0, -9244($fp)
	lw $t1, 0($t0)
	sw $t1, -9248($fp)
	lw $t0, -9248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -296
	sw $t0, -9252($fp)
	li $t0, 1
	sw $t0, -9256($fp)
	li $t0, 4
	lw $t1, -9256($fp)
	mul $t0, $t0, $t1
	sw $t0, -9260($fp)
	lw $t0, -9260($fp)
	lw $t1, -9252($fp)
	add $t0, $t0, $t1
	sw $t0, -9264($fp)
	lw $t0, -9264($fp)
	lw $t1, 0($t0)
	sw $t1, -9268($fp)
	lw $t0, -9268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -296
	sw $t0, -9272($fp)
	li $t0, 2
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
	addi $t0, $fp, -296
	sw $t0, -9292($fp)
	li $t0, 3
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
	lw $t0, -2560($fp)
	sw $t0, -9312($fp)
	lw $t0, -9312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2572($fp)
	sw $t0, -9316($fp)
	lw $t0, -9316($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2584($fp)
	sw $t0, -9320($fp)
	lw $t0, -9320($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 41530
	sw $t0, -9324($fp)
	lw $ra, -4($fp)
	lw $v0, -9324($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f15:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -164
	li $t0, 55314
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 38224
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 24668
	sw $t0, -32($fp)
	lw $t0, -32($fp)
	sw $t0, -36($fp)
	lw $t0, -36($fp)
	sw $t0, -40($fp)
	li $t0, 0
	sw $t0, -44($fp)
	lw $t0, -24($fp)
	sw $t0, -48($fp)
	lw $t1, -48($fp)
	li $t2, 0
	bne $t1, $t2, label1062
	j label1060
label1062:
	li $t0, 56066
	sw $t0, -52($fp)
	lw $t1, -52($fp)
	li $t2, 0
	bne $t1, $t2, label1060
	j label1061
label1060:
	li $t0, 1
	sw $t0, -44($fp)
label1061:
	li $t0, 0
	sw $t0, -56($fp)
	li $t0, 0
	sw $t0, -60($fp)
	lw $t0, -24($fp)
	sw $t0, -64($fp)
	li $t0, 55733
	sw $t0, -68($fp)
	lw $t0, -64($fp)
	lw $t1, -68($fp)
	mul $t0, $t0, $t1
	sw $t0, -72($fp)
	lw $t0, -24($fp)
	sw $t0, -76($fp)
	lw $t1, -72($fp)
	lw $t2, -76($fp)
	ble $t1, $t2, label1065
	j label1066
label1065:
	li $t0, 1
	sw $t0, -60($fp)
label1066:
	lw $t0, -36($fp)
	sw $t0, -80($fp)
	li $t0, 60658
	sw $t0, -84($fp)
	lw $t0, -80($fp)
	lw $t1, -84($fp)
	mul $t0, $t0, $t1
	sw $t0, -88($fp)
	li $t0, 0
	sw $t0, -92($fp)
	li $t0, 35881
	sw $t0, -96($fp)
	li $t0, 14851
	sw $t0, -100($fp)
	lw $t0, -96($fp)
	lw $t1, -100($fp)
	sub $t0, $t0, $t1
	sw $t0, -104($fp)
	li $t0, 93
	sw $t0, -108($fp)
	lw $t1, -104($fp)
	lw $t2, -108($fp)
	beq $t1, $t2, label1067
	j label1068
label1067:
	li $t0, 1
	sw $t0, -92($fp)
label1068:
	lw $t0, -24($fp)
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -116($fp)
	li $t0, 0
	sw $t0, -120($fp)
	li $t0, 5913
	sw $t0, -124($fp)
	li $t0, 42338
	sw $t0, -128($fp)
	lw $t0, -124($fp)
	lw $t1, -128($fp)
	add $t0, $t0, $t1
	sw $t0, -132($fp)
	lw $t0, -36($fp)
	sw $t0, -136($fp)
	lw $t1, -132($fp)
	lw $t2, -136($fp)
	bgt $t1, $t2, label1069
	j label1070
label1069:
	li $t0, 1
	sw $t0, -120($fp)
label1070:
	addi $sp, $sp, -4
	lw $t0, -116($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -120($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -140($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -60($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -88($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -92($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -140($fp)
	sw $t0, 0($sp)
	jal f11
	sw $v0, -144($fp)
	addi $sp, $sp, 20
	lw $t0, -36($fp)
	sw $t0, -148($fp)
	lw $t1, -144($fp)
	lw $t2, -148($fp)
	bne $t1, $t2, label1063
	j label1064
label1063:
	li $t0, 1
	sw $t0, -56($fp)
label1064:
	addi $sp, $sp, -4
	lw $t0, -44($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -56($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -152($fp)
	addi $sp, $sp, 12
	lw $t0, -12($fp)
	sw $t0, -156($fp)
	lw $t0, -156($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -36($fp)
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 3059
	sw $t0, -168($fp)
	lw $ra, -4($fp)
	lw $v0, -168($fp)
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
