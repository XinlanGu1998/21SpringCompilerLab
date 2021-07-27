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
	addi $sp, $sp, -1492
	li $t0, 5548
	sw $t0, -40($fp)
	lw $t0, -40($fp)
	sw $t0, -44($fp)
	lw $t0, -44($fp)
	sw $t0, -48($fp)
	li $t0, 35209
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -60($fp)
	li $t0, 49323
	sw $t0, -64($fp)
	addi $t0, $fp, -12
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
	li $t0, 35891
	sw $t0, -88($fp)
	addi $t0, $fp, -12
	sw $t0, -92($fp)
	li $t0, 1
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
	li $t0, 61610
	sw $t0, -112($fp)
	lw $t0, -112($fp)
	sw $t0, -116($fp)
	lw $t0, -116($fp)
	sw $t0, -120($fp)
	li $t0, 30682
	sw $t0, -124($fp)
	lw $t0, -124($fp)
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	li $t0, 17277
	sw $t0, -136($fp)
	lw $t0, -136($fp)
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	li $t0, 1217
	sw $t0, -148($fp)
	lw $t0, -148($fp)
	sw $t0, -152($fp)
	lw $t0, -152($fp)
	sw $t0, -156($fp)
	li $t0, 18665
	sw $t0, -160($fp)
	lw $t0, -160($fp)
	sw $t0, -164($fp)
	lw $t0, -164($fp)
	sw $t0, -168($fp)
	li $t0, 49492
	sw $t0, -172($fp)
	lw $t0, -172($fp)
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	li $t0, 7611
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	li $t0, 62543
	sw $t0, -196($fp)
	addi $t0, $fp, -36
	sw $t0, -200($fp)
	li $t0, 0
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
	li $t0, 39050
	sw $t0, -220($fp)
	addi $t0, $fp, -36
	sw $t0, -224($fp)
	li $t0, 1
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
	li $t0, 59554
	sw $t0, -244($fp)
	addi $t0, $fp, -36
	sw $t0, -248($fp)
	li $t0, 2
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
	li $t0, 5541
	sw $t0, -268($fp)
	addi $t0, $fp, -36
	sw $t0, -272($fp)
	li $t0, 3
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
	li $t0, 39304
	sw $t0, -292($fp)
	addi $t0, $fp, -36
	sw $t0, -296($fp)
	li $t0, 4
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
	li $t0, 49724
	sw $t0, -316($fp)
	addi $t0, $fp, -36
	sw $t0, -320($fp)
	li $t0, 5
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
	lw $t0, 4($fp)
	sw $t0, -340($fp)
	lw $t1, -340($fp)
	li $t2, 0
	bne $t1, $t2, label121
	j label122
label121:
	li $t0, 0
	sw $t0, -344($fp)
	li $t0, 43635
	sw $t0, -348($fp)
	lw $t0, -348($fp)
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -352($fp)
	li $t0, 0
	sw $t0, -356($fp)
	lw $t0, -152($fp)
	sw $t0, -360($fp)
	lw $t0, -164($fp)
	sw $t0, -364($fp)
	lw $t0, -360($fp)
	lw $t1, -364($fp)
	sub $t0, $t0, $t1
	sw $t0, -368($fp)
	lw $t1, -368($fp)
	li $t2, 0
	bne $t1, $t2, label128
	j label127
label128:
	lw $t0, -176($fp)
	sw $t0, -372($fp)
	lw $t1, -372($fp)
	li $t2, 0
	bne $t1, $t2, label126
	j label127
label126:
	li $t0, 1
	sw $t0, -356($fp)
label127:
	addi $sp, $sp, -4
	lw $t0, -352($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -356($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -376($fp)
	addi $sp, $sp, 12
	lw $t0, -56($fp)
	sw $t0, -380($fp)
	lw $t0, -376($fp)
	lw $t1, -380($fp)
	sub $t0, $t0, $t1
	sw $t0, -384($fp)
	li $t0, 858
	sw $t0, -388($fp)
	lw $t0, -44($fp)
	sw $t0, -392($fp)
	lw $t0, -388($fp)
	lw $t1, -392($fp)
	mul $t0, $t0, $t1
	sw $t0, -396($fp)
	li $t0, 0
	sw $t0, -400($fp)
	li $t0, 30794
	sw $t0, -404($fp)
	lw $t1, -404($fp)
	li $t2, 0
	bne $t1, $t2, label130
	j label129
label129:
	li $t0, 1
	sw $t0, -400($fp)
label130:
	lw $t0, -396($fp)
	lw $t1, -400($fp)
	add $t0, $t0, $t1
	sw $t0, -408($fp)
	lw $t1, -384($fp)
	lw $t2, -408($fp)
	ble $t1, $t2, label124
	j label125
label124:
	li $t0, 1
	sw $t0, -344($fp)
label125:
	lw $ra, -4($fp)
	lw $v0, -344($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label123
label122:
	lw $t0, -140($fp)
	sw $t0, -412($fp)
	li $t0, 0
	lw $t1, -412($fp)
	sub $t0, $t0, $t1
	sw $t0, -416($fp)
	lw $t1, -416($fp)
	li $t2, 0
	bne $t1, $t2, label131
	j label132
label131:
	li $t0, 62983
	sw $t0, -420($fp)
	j label133
label132:
	li $t0, 0
	sw $t0, -424($fp)
	addi $t0, $fp, -12
	sw $t0, -428($fp)
	li $t0, 0
	sw $t0, -432($fp)
	li $t0, 0
	sw $t0, -436($fp)
	li $t0, 40979
	sw $t0, -440($fp)
	lw $t0, 4($fp)
	sw $t0, -444($fp)
	lw $t1, -440($fp)
	lw $t2, -444($fp)
	blt $t1, $t2, label138
	j label139
label138:
	li $t0, 1
	sw $t0, -436($fp)
label139:
	li $t0, 612
	sw $t0, -448($fp)
	lw $t1, -436($fp)
	lw $t2, -448($fp)
	bne $t1, $t2, label136
	j label137
label136:
	li $t0, 1
	sw $t0, -432($fp)
label137:
	li $t0, 4
	lw $t1, -432($fp)
	mul $t0, $t0, $t1
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	lw $t1, -428($fp)
	add $t0, $t0, $t1
	sw $t0, -456($fp)
	lw $t0, -456($fp)
	lw $t1, 0($t0)
	sw $t1, -460($fp)
	li $t0, 0
	sw $t0, -464($fp)
	lw $t0, -128($fp)
	sw $t0, -468($fp)
	lw $t1, -468($fp)
	li $t2, 0
	bne $t1, $t2, label141
	j label140
label140:
	li $t0, 1
	sw $t0, -464($fp)
label141:
	addi $t0, $fp, -12
	sw $t0, -472($fp)
	lw $t0, -44($fp)
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
	lw $t0, -464($fp)
	lw $t1, -488($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -492($fp)
	li $t0, 0
	lw $t1, -492($fp)
	sub $t0, $t0, $t1
	sw $t0, -496($fp)
	lw $t1, -460($fp)
	lw $t2, -496($fp)
	beq $t1, $t2, label134
	j label135
label134:
	li $t0, 1
	sw $t0, -424($fp)
label135:
label133:
label123:
	lw $t0, -44($fp)
	sw $t0, -500($fp)
	lw $t0, -500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -56($fp)
	sw $t0, -504($fp)
	lw $t0, -504($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
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
	addi $t0, $fp, -12
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
	lw $t0, -116($fp)
	sw $t0, -548($fp)
	lw $t0, -548($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -128($fp)
	sw $t0, -552($fp)
	lw $t0, -552($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -140($fp)
	sw $t0, -556($fp)
	lw $t0, -556($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -152($fp)
	sw $t0, -560($fp)
	lw $t0, -560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -164($fp)
	sw $t0, -564($fp)
	lw $t0, -564($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -176($fp)
	sw $t0, -568($fp)
	lw $t0, -568($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -572($fp)
	lw $t0, -572($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -576($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -596($fp)
	li $t0, 1
	sw $t0, -600($fp)
	li $t0, 4
	lw $t1, -600($fp)
	mul $t0, $t0, $t1
	sw $t0, -604($fp)
	lw $t0, -604($fp)
	lw $t1, -596($fp)
	add $t0, $t0, $t1
	sw $t0, -608($fp)
	lw $t0, -608($fp)
	lw $t1, 0($t0)
	sw $t1, -612($fp)
	lw $t0, -612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
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
	lw $t0, -632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -636($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -656($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -676($fp)
	li $t0, 5
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
	lw $t0, -116($fp)
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -56($fp)
	lw $t0, -56($fp)
	sw $t0, -700($fp)
	lw $ra, -4($fp)
	lw $v0, -700($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -44($fp)
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -56($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -712($fp)
	li $t0, 0
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
	addi $t0, $fp, -12
	sw $t0, -732($fp)
	li $t0, 1
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
	lw $t0, -116($fp)
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -128($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -140($fp)
	sw $t0, -760($fp)
	lw $t0, -760($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -152($fp)
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -164($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -176($fp)
	sw $t0, -772($fp)
	lw $t0, -772($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -780($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -800($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -820($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -840($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -860($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -880($fp)
	li $t0, 5
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
	li $t0, 0
	sw $t0, -900($fp)
	lw $t0, 4($fp)
	sw $t0, -904($fp)
	lw $t0, -44($fp)
	sw $t0, -908($fp)
	lw $t0, -904($fp)
	lw $t1, -908($fp)
	mul $t0, $t0, $t1
	sw $t0, -912($fp)
	lw $t0, 4($fp)
	sw $t0, -916($fp)
	lw $t0, -912($fp)
	lw $t1, -916($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -920($fp)
	li $t0, 48454
	sw $t0, -924($fp)
	lw $t0, -920($fp)
	lw $t1, -924($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -928($fp)
	li $t0, 0
	lw $t1, -928($fp)
	sub $t0, $t0, $t1
	sw $t0, -932($fp)
	li $t0, 0
	sw $t0, -936($fp)
	li $t0, 35009
	sw $t0, -940($fp)
	li $t0, 27741
	sw $t0, -944($fp)
	lw $t0, -940($fp)
	lw $t1, -944($fp)
	add $t0, $t0, $t1
	sw $t0, -948($fp)
	li $t0, 43594
	sw $t0, -952($fp)
	lw $t1, -948($fp)
	lw $t2, -952($fp)
	beq $t1, $t2, label144
	j label145
label144:
	li $t0, 1
	sw $t0, -936($fp)
label145:
	li $t0, 0
	sw $t0, -956($fp)
	li $t0, 56738
	sw $t0, -960($fp)
	li $t0, 0
	lw $t1, -960($fp)
	sub $t0, $t0, $t1
	sw $t0, -964($fp)
	lw $t1, -964($fp)
	li $t2, 0
	bne $t1, $t2, label147
	j label146
label146:
	li $t0, 1
	sw $t0, -956($fp)
label147:
	addi $sp, $sp, -4
	lw $t0, -936($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -956($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -968($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -972($fp)
	li $t0, 0
	sw $t0, -976($fp)
	lw $t0, -56($fp)
	sw $t0, -980($fp)
	li $t0, 16334
	sw $t0, -984($fp)
	lw $t1, -980($fp)
	lw $t2, -984($fp)
	bge $t1, $t2, label150
	j label151
label150:
	li $t0, 1
	sw $t0, -976($fp)
label151:
	li $t0, 37938
	sw $t0, -988($fp)
	lw $t1, -976($fp)
	lw $t2, -988($fp)
	ble $t1, $t2, label148
	j label149
label148:
	li $t0, 1
	sw $t0, -972($fp)
label149:
	addi $sp, $sp, -4
	lw $t0, -968($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -972($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -992($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -992($fp)
	sub $t0, $t0, $t1
	sw $t0, -996($fp)
	lw $t1, -932($fp)
	lw $t2, -996($fp)
	bne $t1, $t2, label142
	j label143
label142:
	li $t0, 1
	sw $t0, -900($fp)
label143:
	lw $ra, -4($fp)
	lw $v0, -900($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -1000($fp)
	lw $t0, -56($fp)
	sw $t0, -1004($fp)
	lw $t1, -1004($fp)
	li $t2, 0
	bne $t1, $t2, label157
	j label156
label156:
	li $t0, 1
	sw $t0, -1000($fp)
label157:
	li $t0, 0
	lw $t1, -1000($fp)
	sub $t0, $t0, $t1
	sw $t0, -1008($fp)
	lw $t1, -1008($fp)
	li $t2, 0
	bne $t1, $t2, label155
	j label153
label155:
	li $t0, 0
	sw $t0, -1012($fp)
	lw $t0, 4($fp)
	sw $t0, -1016($fp)
	lw $t1, -1016($fp)
	li $t2, 0
	bne $t1, $t2, label159
	j label158
label158:
	li $t0, 1
	sw $t0, -1012($fp)
label159:
	li $t0, 33290
	sw $t0, -1020($fp)
	lw $t0, -1012($fp)
	lw $t1, -1020($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1024($fp)
	lw $t1, -1024($fp)
	li $t2, 0
	bne $t1, $t2, label152
	j label153
label152:
	li $t0, 0
	sw $t0, -1028($fp)
	li $t0, 0
	sw $t0, -1032($fp)
	lw $t0, 8($fp)
	sw $t0, -1036($fp)
	lw $t1, -1036($fp)
	li $t2, 0
	bne $t1, $t2, label163
	j label164
label163:
	li $t0, 1
	sw $t0, -1032($fp)
label164:
	li $t0, 0
	lw $t1, -1032($fp)
	sub $t0, $t0, $t1
	sw $t0, -1040($fp)
	li $t0, 0
	lw $t1, -1040($fp)
	sub $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $t1, -1044($fp)
	li $t2, 0
	bne $t1, $t2, label162
	j label161
label162:
	addi $t0, $fp, -36
	sw $t0, -1048($fp)
	li $t0, 3
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
	bne $t1, $t2, label160
	j label161
label160:
	li $t0, 1
	sw $t0, -1028($fp)
label161:
	lw $ra, -4($fp)
	lw $v0, -1028($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label154
label153:
	lw $t0, -152($fp)
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -1072($fp)
	li $t0, 0
	sw $t0, -1076($fp)
	lw $t0, 8($fp)
	sw $t0, -1080($fp)
	li $t0, 3645
	sw $t0, -1084($fp)
	lw $t1, -1080($fp)
	lw $t2, -1084($fp)
	bne $t1, $t2, label167
	j label166
label167:
	li $t0, 9341
	sw $t0, -1088($fp)
	lw $t1, -1088($fp)
	li $t2, 0
	bne $t1, $t2, label165
	j label166
label165:
	li $t0, 1
	sw $t0, -1076($fp)
label166:
	addi $sp, $sp, -4
	lw $t0, -1072($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1076($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1092($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -1096($fp)
	li $t0, 831
	sw $t0, -1100($fp)
	lw $t1, -1100($fp)
	li $t2, 0
	bne $t1, $t2, label168
	j label169
label168:
	li $t0, 1
	sw $t0, -1096($fp)
label169:
	lw $t0, -1092($fp)
	lw $t1, -1096($fp)
	sub $t0, $t0, $t1
	sw $t0, -1104($fp)
label154:
	li $t0, 0
	sw $t0, -1108($fp)
	lw $t0, -152($fp)
	sw $t0, -1112($fp)
	addi $t0, $fp, -12
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
	lw $t0, -1112($fp)
	lw $t1, -1132($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1136($fp)
	li $t0, 0
	lw $t1, -1136($fp)
	sub $t0, $t0, $t1
	sw $t0, -1140($fp)
	li $t0, 0
	lw $t1, -1140($fp)
	sub $t0, $t0, $t1
	sw $t0, -1144($fp)
	addi $t0, $fp, -12
	sw $t0, -1148($fp)
	li $t0, 0
	sw $t0, -1152($fp)
	lw $t0, -56($fp)
	sw $t0, -1156($fp)
	lw $t0, 4($fp)
	sw $t0, -1160($fp)
	lw $t1, -1156($fp)
	lw $t2, -1160($fp)
	bgt $t1, $t2, label172
	j label173
label172:
	li $t0, 1
	sw $t0, -1152($fp)
label173:
	li $t0, 4
	lw $t1, -1152($fp)
	mul $t0, $t0, $t1
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	lw $t1, -1148($fp)
	add $t0, $t0, $t1
	sw $t0, -1168($fp)
	lw $t0, -1168($fp)
	lw $t1, 0($t0)
	sw $t1, -1172($fp)
	lw $t1, -1144($fp)
	lw $t2, -1172($fp)
	bge $t1, $t2, label170
	j label171
label170:
	li $t0, 1
	sw $t0, -1108($fp)
label171:
	li $t0, 0
	sw $t0, -1176($fp)
	li $t0, 0
	sw $t0, -1180($fp)
	li $t0, 0
	sw $t0, -1184($fp)
	li $t0, 19496
	sw $t0, -1188($fp)
	lw $t1, -1188($fp)
	li $t2, 0
	bne $t1, $t2, label179
	j label178
label178:
	li $t0, 1
	sw $t0, -1184($fp)
label179:
	addi $t0, $fp, -36
	sw $t0, -1192($fp)
	li $t0, 0
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
	li $t0, 0
	lw $t1, -1208($fp)
	sub $t0, $t0, $t1
	sw $t0, -1212($fp)
	lw $t1, -1184($fp)
	lw $t2, -1212($fp)
	blt $t1, $t2, label176
	j label177
label176:
	li $t0, 1
	sw $t0, -1180($fp)
label177:
	addi $t0, $fp, -12
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
	li $t0, 0
	lw $t1, -1232($fp)
	sub $t0, $t0, $t1
	sw $t0, -1236($fp)
	lw $t1, -1180($fp)
	lw $t2, -1236($fp)
	beq $t1, $t2, label174
	j label175
label174:
	li $t0, 1
	sw $t0, -1176($fp)
label175:
	lw $t0, -44($fp)
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -56($fp)
	sw $t0, -1244($fp)
	lw $t0, -1244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -1248($fp)
	li $t0, 0
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
	lw $t0, -1264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -12
	sw $t0, -1268($fp)
	li $t0, 1
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
	lw $t0, -1284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -116($fp)
	sw $t0, -1288($fp)
	lw $t0, -1288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -128($fp)
	sw $t0, -1292($fp)
	lw $t0, -1292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -140($fp)
	sw $t0, -1296($fp)
	lw $t0, -1296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -152($fp)
	sw $t0, -1300($fp)
	lw $t0, -1300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -164($fp)
	sw $t0, -1304($fp)
	lw $t0, -1304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -176($fp)
	sw $t0, -1308($fp)
	lw $t0, -1308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -188($fp)
	sw $t0, -1312($fp)
	lw $t0, -1312($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -36
	sw $t0, -1316($fp)
	li $t0, 0
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
	addi $t0, $fp, -36
	sw $t0, -1336($fp)
	li $t0, 1
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
	addi $t0, $fp, -36
	sw $t0, -1356($fp)
	li $t0, 2
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
	addi $t0, $fp, -36
	sw $t0, -1376($fp)
	li $t0, 3
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
	addi $t0, $fp, -36
	sw $t0, -1396($fp)
	li $t0, 4
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
	addi $t0, $fp, -36
	sw $t0, -1416($fp)
	li $t0, 5
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
	li $t0, 0
	sw $t0, -1436($fp)
	li $t0, 0
	sw $t0, -1440($fp)
	lw $t0, -140($fp)
	sw $t0, -1444($fp)
	lw $t1, -1444($fp)
	li $t2, 0
	bne $t1, $t2, label185
	j label184
label184:
	li $t0, 1
	sw $t0, -1440($fp)
label185:
	li $t0, 0
	lw $t1, -1440($fp)
	sub $t0, $t0, $t1
	sw $t0, -1448($fp)
	lw $t1, -1448($fp)
	li $t2, 0
	bne $t1, $t2, label183
	j label180
label183:
	li $t0, 12188
	sw $t0, -1452($fp)
	li $t0, 22045
	sw $t0, -1456($fp)
	lw $t0, -1452($fp)
	lw $t1, -1456($fp)
	sub $t0, $t0, $t1
	sw $t0, -1460($fp)
	lw $t0, -56($fp)
	sw $t0, -1464($fp)
	lw $t1, -1460($fp)
	lw $t2, -1464($fp)
	beq $t1, $t2, label180
	j label182
label182:
	li $t0, 0
	sw $t0, -1468($fp)
	lw $t0, -56($fp)
	sw $t0, -1472($fp)
	li $t0, 144
	sw $t0, -1476($fp)
	lw $t1, -1472($fp)
	lw $t2, -1476($fp)
	bne $t1, $t2, label186
	j label187
label186:
	li $t0, 1
	sw $t0, -1468($fp)
label187:
	li $t0, 0
	sw $t0, -1480($fp)
	li $t0, 0
	sw $t0, -1484($fp)
	li $t0, 17697
	sw $t0, -1488($fp)
	lw $t1, -1488($fp)
	li $t2, 0
	bne $t1, $t2, label191
	j label190
label190:
	li $t0, 1
	sw $t0, -1484($fp)
label191:
	li $t0, 61912
	sw $t0, -1492($fp)
	lw $t1, -1484($fp)
	lw $t2, -1492($fp)
	beq $t1, $t2, label188
	j label189
label188:
	li $t0, 1
	sw $t0, -1480($fp)
label189:
	addi $sp, $sp, -4
	lw $t0, -1468($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1480($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1496($fp)
	addi $sp, $sp, 12
	lw $t1, -1496($fp)
	li $t2, 0
	bne $t1, $t2, label180
	j label181
label180:
	li $t0, 1
	sw $t0, -1436($fp)
label181:
	lw $ra, -4($fp)
	lw $v0, -1436($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f7:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -20
	li $t0, 0
	sw $t0, -8($fp)
	li $t0, 18555
	sw $t0, -12($fp)
	lw $t1, -12($fp)
	li $t2, 0
	bne $t1, $t2, label193
	j label192
label192:
	li $t0, 1
	sw $t0, -8($fp)
label193:
	li $t0, 0
	sw $t0, -16($fp)
	lw $t0, 4($fp)
	sw $t0, -20($fp)
	li $t0, 27171
	sw $t0, -24($fp)
	lw $t1, -20($fp)
	lw $t2, -24($fp)
	bne $t1, $t2, label194
	j label195
label194:
	li $t0, 1
	sw $t0, -16($fp)
label195:
	lw $ra, -4($fp)
	lw $v0, -16($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f8:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -208
	li $t0, 63127
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
	li $t0, 59534
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
	li $t0, 27783
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
	li $t0, 0
	sw $t0, -92($fp)
	lw $t0, 8($fp)
	sw $t0, -96($fp)
	li $t0, 0
	lw $t1, -96($fp)
	sub $t0, $t0, $t1
	sw $t0, -100($fp)
	li $t0, 46045
	sw $t0, -104($fp)
	li $t0, 0
	sw $t0, -108($fp)
	li $t0, 10332
	sw $t0, -112($fp)
	lw $t1, -112($fp)
	li $t2, 0
	bne $t1, $t2, label199
	j label198
label198:
	li $t0, 1
	sw $t0, -108($fp)
label199:
	lw $t0, -104($fp)
	lw $t1, -108($fp)
	sub $t0, $t0, $t1
	sw $t0, -116($fp)
	lw $t1, -100($fp)
	lw $t2, -116($fp)
	bge $t1, $t2, label196
	j label197
label196:
	li $t0, 1
	sw $t0, -92($fp)
label197:
	addi $t0, $fp, -16
	sw $t0, -120($fp)
	li $t0, 0
	sw $t0, -124($fp)
	li $t0, 4
	lw $t1, -124($fp)
	mul $t0, $t0, $t1
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	lw $t1, -120($fp)
	add $t0, $t0, $t1
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	lw $t1, 0($t0)
	sw $t1, -136($fp)
	lw $t0, -136($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -16
	sw $t0, -140($fp)
	li $t0, 1
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
	addi $t0, $fp, -16
	sw $t0, -160($fp)
	li $t0, 2
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
	addi $t0, $fp, -16
	sw $t0, -180($fp)
	lw $t0, 8($fp)
	sw $t0, -184($fp)
	lw $t0, -184($fp)
	sw $t0, 4($fp)
	lw $t0, 4($fp)
	sw $t0, -188($fp)
	li $t0, 4
	lw $t1, -188($fp)
	mul $t0, $t0, $t1
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	lw $t1, -180($fp)
	add $t0, $t0, $t1
	sw $t0, -196($fp)
	lw $t0, -196($fp)
	lw $t1, 0($t0)
	sw $t1, -200($fp)
	li $t0, 185
	sw $t0, -204($fp)
	li $t0, 0
	lw $t1, -204($fp)
	sub $t0, $t0, $t1
	sw $t0, -208($fp)
	lw $t0, -200($fp)
	lw $t1, -208($fp)
	sub $t0, $t0, $t1
	sw $t0, -212($fp)
	lw $ra, -4($fp)
	lw $v0, -212($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f9:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -1304
	li $t0, 37247
	sw $t0, -64($fp)
	addi $t0, $fp, -32
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
	li $t0, 45342
	sw $t0, -88($fp)
	addi $t0, $fp, -32
	sw $t0, -92($fp)
	li $t0, 1
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
	li $t0, 27926
	sw $t0, -112($fp)
	addi $t0, $fp, -32
	sw $t0, -116($fp)
	li $t0, 2
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
	li $t0, 15305
	sw $t0, -136($fp)
	addi $t0, $fp, -32
	sw $t0, -140($fp)
	li $t0, 3
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
	li $t0, 31703
	sw $t0, -160($fp)
	addi $t0, $fp, -32
	sw $t0, -164($fp)
	li $t0, 4
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
	li $t0, 61215
	sw $t0, -184($fp)
	addi $t0, $fp, -32
	sw $t0, -188($fp)
	li $t0, 5
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
	li $t0, 28572
	sw $t0, -208($fp)
	addi $t0, $fp, -32
	sw $t0, -212($fp)
	li $t0, 6
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
	li $t0, 1852
	sw $t0, -232($fp)
	lw $t0, -232($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -240($fp)
	li $t0, 64860
	sw $t0, -244($fp)
	lw $t0, -244($fp)
	sw $t0, -248($fp)
	lw $t0, -248($fp)
	sw $t0, -252($fp)
	li $t0, 37913
	sw $t0, -256($fp)
	lw $t0, -256($fp)
	sw $t0, -260($fp)
	lw $t0, -260($fp)
	sw $t0, -264($fp)
	li $t0, 2683
	sw $t0, -268($fp)
	lw $t0, -268($fp)
	sw $t0, -272($fp)
	lw $t0, -272($fp)
	sw $t0, -276($fp)
	li $t0, 20247
	sw $t0, -280($fp)
	addi $t0, $fp, -60
	sw $t0, -284($fp)
	li $t0, 0
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
	li $t0, 48472
	sw $t0, -304($fp)
	addi $t0, $fp, -60
	sw $t0, -308($fp)
	li $t0, 1
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
	li $t0, 22180
	sw $t0, -328($fp)
	addi $t0, $fp, -60
	sw $t0, -332($fp)
	li $t0, 2
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
	li $t0, 25126
	sw $t0, -352($fp)
	addi $t0, $fp, -60
	sw $t0, -356($fp)
	li $t0, 3
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
	li $t0, 1106
	sw $t0, -376($fp)
	addi $t0, $fp, -60
	sw $t0, -380($fp)
	li $t0, 4
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
	li $t0, 38683
	sw $t0, -400($fp)
	addi $t0, $fp, -60
	sw $t0, -404($fp)
	li $t0, 5
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
	li $t0, 3519
	sw $t0, -424($fp)
	addi $t0, $fp, -60
	sw $t0, -428($fp)
	li $t0, 6
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
	li $t0, 13294
	sw $t0, -448($fp)
	lw $t0, -448($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -456($fp)
	li $t0, 60728
	sw $t0, -460($fp)
	lw $t0, -460($fp)
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -260($fp)
	sw $t0, -472($fp)
	lw $t0, -248($fp)
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -480($fp)
	li $t0, 0
	sw $t0, -484($fp)
	lw $t0, -260($fp)
	sw $t0, -488($fp)
	lw $t0, -452($fp)
	sw $t0, -492($fp)
	lw $t0, -488($fp)
	lw $t1, -492($fp)
	mul $t0, $t0, $t1
	sw $t0, -496($fp)
	lw $t1, -496($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label202
label202:
	lw $t0, -248($fp)
	sw $t0, -500($fp)
	lw $t1, -500($fp)
	li $t2, 0
	bne $t1, $t2, label200
	j label201
label200:
	li $t0, 1
	sw $t0, -484($fp)
label201:
	addi $sp, $sp, -4
	lw $t0, -480($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -484($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -504($fp)
	addi $sp, $sp, 12
	lw $t0, -472($fp)
	lw $t1, -504($fp)
	mul $t0, $t0, $t1
	sw $t0, -508($fp)
	li $t0, 0
	sw $t0, -512($fp)
	li $t0, 21216
	sw $t0, -516($fp)
	li $t0, 0
	sw $t0, -520($fp)
	addi $t0, $fp, -32
	sw $t0, -524($fp)
	li $t0, 5
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
	li $t0, 26940
	sw $t0, -544($fp)
	lw $t1, -540($fp)
	lw $t2, -544($fp)
	beq $t1, $t2, label205
	j label206
label205:
	li $t0, 1
	sw $t0, -520($fp)
label206:
	li $t0, 54563
	sw $t0, -548($fp)
	li $t0, 0
	sw $t0, -552($fp)
	li $t0, 0
	sw $t0, -556($fp)
	li $t0, 0
	sw $t0, -560($fp)
	li $t0, 55611
	sw $t0, -564($fp)
	li $t0, 22879
	sw $t0, -568($fp)
	lw $t1, -564($fp)
	lw $t2, -568($fp)
	bgt $t1, $t2, label212
	j label213
label212:
	li $t0, 1
	sw $t0, -560($fp)
label213:
	lw $t0, -272($fp)
	sw $t0, -572($fp)
	lw $t1, -560($fp)
	lw $t2, -572($fp)
	ble $t1, $t2, label210
	j label211
label210:
	li $t0, 1
	sw $t0, -556($fp)
label211:
	addi $t0, $fp, -60
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
	li $t0, 0
	sw $t0, -596($fp)
	lw $t0, -248($fp)
	sw $t0, -600($fp)
	lw $t1, -600($fp)
	li $t2, 0
	bne $t1, $t2, label217
	j label215
label217:
	li $t0, 23908
	sw $t0, -604($fp)
	lw $t1, -604($fp)
	li $t2, 0
	bne $t1, $t2, label216
	j label215
label216:
	lw $t0, 8($fp)
	sw $t0, -608($fp)
	lw $t1, -608($fp)
	li $t2, 0
	bne $t1, $t2, label214
	j label215
label214:
	li $t0, 1
	sw $t0, -596($fp)
label215:
	li $t0, 64810
	sw $t0, -612($fp)
	li $t0, 10685
	sw $t0, -616($fp)
	lw $t0, -612($fp)
	lw $t1, -616($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -620($fp)
	addi $sp, $sp, -4
	lw $t0, -556($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -596($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -620($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -624($fp)
	addi $sp, $sp, 20
	li $t0, 44102
	sw $t0, -628($fp)
	lw $t0, -272($fp)
	sw $t0, -632($fp)
	lw $t0, -628($fp)
	lw $t1, -632($fp)
	add $t0, $t0, $t1
	sw $t0, -636($fp)
	addi $sp, $sp, -4
	lw $t0, -624($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -636($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -640($fp)
	addi $sp, $sp, 12
	lw $t1, -640($fp)
	li $t2, 0
	bne $t1, $t2, label207
	j label209
label209:
	lw $t0, -464($fp)
	sw $t0, -644($fp)
	lw $t1, -644($fp)
	li $t2, 0
	bne $t1, $t2, label207
	j label208
label207:
	li $t0, 1
	sw $t0, -552($fp)
label208:
	li $t0, 33769
	sw $t0, -648($fp)
	li $t0, 1
	sw $t0, -652($fp)
	lw $t0, -648($fp)
	lw $t1, -652($fp)
	mul $t0, $t0, $t1
	sw $t0, -656($fp)
	li $t0, 38973
	sw $t0, -660($fp)
	lw $t0, -656($fp)
	lw $t1, -660($fp)
	mul $t0, $t0, $t1
	sw $t0, -664($fp)
	li $t0, 0
	sw $t0, -668($fp)
	li $t0, 36842
	sw $t0, -672($fp)
	lw $t1, -672($fp)
	li $t2, 0
	bne $t1, $t2, label219
	j label218
label218:
	li $t0, 1
	sw $t0, -668($fp)
label219:
	li $t0, 58464
	sw $t0, -676($fp)
	lw $t0, -668($fp)
	lw $t1, -676($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -680($fp)
	addi $sp, $sp, -4
	lw $t0, -664($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -680($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -684($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -688($fp)
	li $t0, 9671
	sw $t0, -692($fp)
	li $t0, 60872
	sw $t0, -696($fp)
	lw $t0, -692($fp)
	lw $t1, -696($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -700($fp)
	li $t0, 39771
	sw $t0, -704($fp)
	lw $t1, -700($fp)
	lw $t2, -704($fp)
	blt $t1, $t2, label220
	j label221
label220:
	li $t0, 1
	sw $t0, -688($fp)
label221:
	addi $sp, $sp, -4
	lw $t0, -548($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -552($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -684($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -688($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -708($fp)
	addi $sp, $sp, 20
	lw $t0, -272($fp)
	sw $t0, -712($fp)
	lw $t0, -708($fp)
	lw $t1, -712($fp)
	add $t0, $t0, $t1
	sw $t0, -716($fp)
	addi $sp, $sp, -4
	lw $t0, -520($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -716($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -720($fp)
	addi $sp, $sp, 12
	lw $t0, -516($fp)
	lw $t1, -720($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -724($fp)
	li $t0, 0
	sw $t0, -728($fp)
	li $t0, 60147
	sw $t0, -732($fp)
	lw $t1, -732($fp)
	li $t2, 0
	bne $t1, $t2, label223
	j label222
label222:
	li $t0, 1
	sw $t0, -728($fp)
label223:
	li $t0, 0
	lw $t1, -728($fp)
	sub $t0, $t0, $t1
	sw $t0, -736($fp)
	lw $t0, -724($fp)
	lw $t1, -736($fp)
	mul $t0, $t0, $t1
	sw $t0, -740($fp)
	li $t0, 42451
	sw $t0, -744($fp)
	addi $t0, $fp, -32
	sw $t0, -748($fp)
	lw $t0, 12($fp)
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
	addi $sp, $sp, -4
	lw $t0, -744($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -764($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -768($fp)
	addi $sp, $sp, 12
	li $t0, 0
	lw $t1, -768($fp)
	sub $t0, $t0, $t1
	sw $t0, -772($fp)
	lw $t1, -740($fp)
	lw $t2, -772($fp)
	ble $t1, $t2, label203
	j label204
label203:
	li $t0, 1
	sw $t0, -512($fp)
label204:
	li $t0, 2041
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -236($fp)
	lw $t0, -236($fp)
	sw $t0, -780($fp)
	li $t0, 0
	sw $t0, -784($fp)
	addi $t0, $fp, -32
	sw $t0, -788($fp)
	lw $t0, 4($fp)
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
	lw $t0, 16($fp)
	sw $t0, -808($fp)
	lw $t1, -804($fp)
	lw $t2, -808($fp)
	blt $t1, $t2, label224
	j label225
label224:
	li $t0, 1
	sw $t0, -784($fp)
label225:
	li $t0, 0
	sw $t0, -812($fp)
	li $t0, 16791
	sw $t0, -816($fp)
	lw $t1, -816($fp)
	li $t2, 0
	bne $t1, $t2, label226
	j label227
label226:
	li $t0, 1
	sw $t0, -812($fp)
label227:
	lw $t0, -248($fp)
	sw $t0, -820($fp)
	li $t0, 9876
	sw $t0, -824($fp)
	lw $t0, -824($fp)
	sw $t0, 12($fp)
	lw $t0, 12($fp)
	sw $t0, -828($fp)
	addi $sp, $sp, -4
	lw $t0, -780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -784($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -812($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -820($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -828($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -832($fp)
	addi $sp, $sp, 24
	addi $t0, $fp, -32
	sw $t0, -836($fp)
	li $t0, 4
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
	lw $t0, -832($fp)
	lw $t1, -852($fp)
	mul $t0, $t0, $t1
	sw $t0, -856($fp)
	li $t0, 0
	sw $t0, -860($fp)
	lw $t0, -260($fp)
	sw $t0, -864($fp)
	li $t0, 0
	lw $t1, -864($fp)
	sub $t0, $t0, $t1
	sw $t0, -868($fp)
	lw $t1, -868($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label230
label230:
	li $t0, 5560
	sw $t0, -872($fp)
	li $t0, 0
	lw $t1, -872($fp)
	sub $t0, $t0, $t1
	sw $t0, -876($fp)
	lw $t1, -876($fp)
	li $t2, 0
	bne $t1, $t2, label228
	j label229
label228:
	li $t0, 1
	sw $t0, -860($fp)
label229:
	li $t0, 0
	sw $t0, -880($fp)
	lw $t0, 16($fp)
	sw $t0, -884($fp)
	li $t0, 24277
	sw $t0, -888($fp)
	lw $t0, -884($fp)
	lw $t1, -888($fp)
	mul $t0, $t0, $t1
	sw $t0, -892($fp)
	li $t0, 50667
	sw $t0, -896($fp)
	lw $t0, -892($fp)
	lw $t1, -896($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -900($fp)
	lw $t1, -900($fp)
	li $t2, 0
	bne $t1, $t2, label231
	j label233
label233:
	lw $t0, -272($fp)
	sw $t0, -904($fp)
	lw $t1, -904($fp)
	li $t2, 0
	bne $t1, $t2, label232
	j label231
label231:
	li $t0, 1
	sw $t0, -880($fp)
label232:
	lw $t0, -880($fp)
	sw $t0, -452($fp)
	lw $t0, -452($fp)
	sw $t0, -908($fp)
	addi $t0, $fp, -32
	sw $t0, -912($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -932($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -952($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -972($fp)
	li $t0, 3
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
	lw $t0, -988($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -992($fp)
	li $t0, 4
	sw $t0, -996($fp)
	li $t0, 4
	lw $t1, -996($fp)
	mul $t0, $t0, $t1
	sw $t0, -1000($fp)
	lw $t0, -1000($fp)
	lw $t1, -992($fp)
	add $t0, $t0, $t1
	sw $t0, -1004($fp)
	lw $t0, -1004($fp)
	lw $t1, 0($t0)
	sw $t1, -1008($fp)
	lw $t0, -1008($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1012($fp)
	li $t0, 5
	sw $t0, -1016($fp)
	li $t0, 4
	lw $t1, -1016($fp)
	mul $t0, $t0, $t1
	sw $t0, -1020($fp)
	lw $t0, -1020($fp)
	lw $t1, -1012($fp)
	add $t0, $t0, $t1
	sw $t0, -1024($fp)
	lw $t0, -1024($fp)
	lw $t1, 0($t0)
	sw $t1, -1028($fp)
	lw $t0, -1028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -1032($fp)
	li $t0, 6
	sw $t0, -1036($fp)
	li $t0, 4
	lw $t1, -1036($fp)
	mul $t0, $t0, $t1
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	lw $t1, -1032($fp)
	add $t0, $t0, $t1
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	lw $t1, 0($t0)
	sw $t1, -1048($fp)
	lw $t0, -1048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -236($fp)
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -248($fp)
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -260($fp)
	sw $t0, -1060($fp)
	lw $t0, -1060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -272($fp)
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1068($fp)
	li $t0, 0
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
	lw $t0, -1084($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1088($fp)
	li $t0, 1
	sw $t0, -1092($fp)
	li $t0, 4
	lw $t1, -1092($fp)
	mul $t0, $t0, $t1
	sw $t0, -1096($fp)
	lw $t0, -1096($fp)
	lw $t1, -1088($fp)
	add $t0, $t0, $t1
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	lw $t1, 0($t0)
	sw $t1, -1104($fp)
	lw $t0, -1104($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1108($fp)
	li $t0, 2
	sw $t0, -1112($fp)
	li $t0, 4
	lw $t1, -1112($fp)
	mul $t0, $t0, $t1
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	lw $t1, -1108($fp)
	add $t0, $t0, $t1
	sw $t0, -1120($fp)
	lw $t0, -1120($fp)
	lw $t1, 0($t0)
	sw $t1, -1124($fp)
	lw $t0, -1124($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1128($fp)
	li $t0, 3
	sw $t0, -1132($fp)
	li $t0, 4
	lw $t1, -1132($fp)
	mul $t0, $t0, $t1
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	lw $t1, -1128($fp)
	add $t0, $t0, $t1
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	lw $t1, 0($t0)
	sw $t1, -1144($fp)
	lw $t0, -1144($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1148($fp)
	li $t0, 4
	sw $t0, -1152($fp)
	li $t0, 4
	lw $t1, -1152($fp)
	mul $t0, $t0, $t1
	sw $t0, -1156($fp)
	lw $t0, -1156($fp)
	lw $t1, -1148($fp)
	add $t0, $t0, $t1
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	lw $t1, 0($t0)
	sw $t1, -1164($fp)
	lw $t0, -1164($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
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
	lw $t0, -1184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -60
	sw $t0, -1188($fp)
	li $t0, 6
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
	lw $t0, -1204($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -452($fp)
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -464($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -1216($fp)
	addi $t0, $fp, -60
	sw $t0, -1220($fp)
	li $t0, 0
	sw $t0, -1224($fp)
	li $t0, 26776
	sw $t0, -1228($fp)
	li $t0, 33948
	sw $t0, -1232($fp)
	lw $t1, -1228($fp)
	lw $t2, -1232($fp)
	blt $t1, $t2, label236
	j label237
label236:
	li $t0, 1
	sw $t0, -1224($fp)
label237:
	li $t0, 4
	lw $t1, -1224($fp)
	mul $t0, $t0, $t1
	sw $t0, -1236($fp)
	lw $t0, -1236($fp)
	lw $t1, -1220($fp)
	add $t0, $t0, $t1
	sw $t0, -1240($fp)
	lw $t0, -1240($fp)
	lw $t1, 0($t0)
	sw $t1, -1244($fp)
	lw $t0, 4($fp)
	sw $t0, -1248($fp)
	lw $t0, -272($fp)
	sw $t0, -1252($fp)
	lw $t0, -1248($fp)
	lw $t1, -1252($fp)
	mul $t0, $t0, $t1
	sw $t0, -1256($fp)
	li $t0, 0
	lw $t1, -1256($fp)
	sub $t0, $t0, $t1
	sw $t0, -1260($fp)
	lw $t0, 12($fp)
	sw $t0, -1264($fp)
	li $t0, 46004
	sw $t0, -1268($fp)
	lw $t0, -1264($fp)
	lw $t1, -1268($fp)
	mul $t0, $t0, $t1
	sw $t0, -1272($fp)
	lw $t0, -236($fp)
	sw $t0, -1276($fp)
	lw $t0, -1272($fp)
	lw $t1, -1276($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1280($fp)
	addi $sp, $sp, -4
	lw $t0, -1260($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1280($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1284($fp)
	addi $sp, $sp, 12
	lw $t0, -1244($fp)
	lw $t1, -1284($fp)
	add $t0, $t0, $t1
	sw $t0, -1288($fp)
	li $t0, 0
	sw $t0, -1292($fp)
	li $t0, 1011
	sw $t0, -1296($fp)
	li $t0, 0
	lw $t1, -1296($fp)
	sub $t0, $t0, $t1
	sw $t0, -1300($fp)
	lw $t1, -1300($fp)
	li $t2, 0
	bne $t1, $t2, label239
	j label238
label238:
	li $t0, 1
	sw $t0, -1292($fp)
label239:
	lw $t0, -248($fp)
	sw $t0, -1304($fp)
	lw $t0, -1292($fp)
	lw $t1, -1304($fp)
	sub $t0, $t0, $t1
	sw $t0, -1308($fp)
	lw $t1, -1288($fp)
	lw $t2, -1308($fp)
	beq $t1, $t2, label234
	j label235
label234:
	li $t0, 1
	sw $t0, -1216($fp)
label235:
	lw $ra, -4($fp)
	lw $v0, -1216($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f10:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -5840
	li $t0, 5254
	sw $t0, -128($fp)
	lw $t0, -128($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -136($fp)
	li $t0, 38932
	sw $t0, -140($fp)
	lw $t0, -140($fp)
	sw $t0, -144($fp)
	lw $t0, -144($fp)
	sw $t0, -148($fp)
	li $t0, 34780
	sw $t0, -152($fp)
	addi $t0, $fp, -8
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
	li $t0, 4343
	sw $t0, -176($fp)
	lw $t0, -176($fp)
	sw $t0, -180($fp)
	lw $t0, -180($fp)
	sw $t0, -184($fp)
	li $t0, 12369
	sw $t0, -188($fp)
	lw $t0, -188($fp)
	sw $t0, -192($fp)
	lw $t0, -192($fp)
	sw $t0, -196($fp)
	li $t0, 13346
	sw $t0, -200($fp)
	lw $t0, -200($fp)
	sw $t0, -204($fp)
	lw $t0, -204($fp)
	sw $t0, -208($fp)
	li $t0, 3617
	sw $t0, -212($fp)
	addi $t0, $fp, -32
	sw $t0, -216($fp)
	li $t0, 0
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
	li $t0, 23054
	sw $t0, -236($fp)
	addi $t0, $fp, -32
	sw $t0, -240($fp)
	li $t0, 1
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
	li $t0, 37254
	sw $t0, -260($fp)
	addi $t0, $fp, -32
	sw $t0, -264($fp)
	li $t0, 2
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
	li $t0, 30817
	sw $t0, -284($fp)
	addi $t0, $fp, -32
	sw $t0, -288($fp)
	li $t0, 3
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
	li $t0, 49045
	sw $t0, -308($fp)
	addi $t0, $fp, -32
	sw $t0, -312($fp)
	li $t0, 4
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
	li $t0, 27330
	sw $t0, -332($fp)
	addi $t0, $fp, -32
	sw $t0, -336($fp)
	li $t0, 5
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
	li $t0, 53696
	sw $t0, -356($fp)
	lw $t0, -356($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -364($fp)
	li $t0, 38072
	sw $t0, -368($fp)
	lw $t0, -368($fp)
	sw $t0, -372($fp)
	lw $t0, -372($fp)
	sw $t0, -376($fp)
	li $t0, 19258
	sw $t0, -380($fp)
	lw $t0, -380($fp)
	sw $t0, -384($fp)
	lw $t0, -384($fp)
	sw $t0, -388($fp)
	li $t0, 10364
	sw $t0, -392($fp)
	addi $t0, $fp, -44
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
	li $t0, 65012
	sw $t0, -416($fp)
	addi $t0, $fp, -44
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
	li $t0, 13869
	sw $t0, -440($fp)
	addi $t0, $fp, -44
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
	li $t0, 52815
	sw $t0, -464($fp)
	lw $t0, -464($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -472($fp)
	li $t0, 9353
	sw $t0, -476($fp)
	lw $t0, -476($fp)
	sw $t0, -480($fp)
	lw $t0, -480($fp)
	sw $t0, -484($fp)
	li $t0, 30661
	sw $t0, -488($fp)
	addi $t0, $fp, -76
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
	li $t0, 54856
	sw $t0, -512($fp)
	addi $t0, $fp, -76
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
	li $t0, 20335
	sw $t0, -536($fp)
	addi $t0, $fp, -76
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
	li $t0, 20600
	sw $t0, -560($fp)
	addi $t0, $fp, -76
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
	li $t0, 60416
	sw $t0, -584($fp)
	addi $t0, $fp, -76
	sw $t0, -588($fp)
	li $t0, 4
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
	li $t0, 44612
	sw $t0, -608($fp)
	addi $t0, $fp, -76
	sw $t0, -612($fp)
	li $t0, 5
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
	li $t0, 5731
	sw $t0, -632($fp)
	addi $t0, $fp, -76
	sw $t0, -636($fp)
	li $t0, 6
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
	li $t0, 21656
	sw $t0, -656($fp)
	addi $t0, $fp, -76
	sw $t0, -660($fp)
	li $t0, 7
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
	li $t0, 13024
	sw $t0, -680($fp)
	lw $t0, -680($fp)
	sw $t0, -684($fp)
	lw $t0, -684($fp)
	sw $t0, -688($fp)
	li $t0, 51735
	sw $t0, -692($fp)
	lw $t0, -692($fp)
	sw $t0, -696($fp)
	lw $t0, -696($fp)
	sw $t0, -700($fp)
	li $t0, 22667
	sw $t0, -704($fp)
	lw $t0, -704($fp)
	sw $t0, -708($fp)
	lw $t0, -708($fp)
	sw $t0, -712($fp)
	li $t0, 18278
	sw $t0, -716($fp)
	lw $t0, -716($fp)
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -724($fp)
	li $t0, 25131
	sw $t0, -728($fp)
	lw $t0, -728($fp)
	sw $t0, -732($fp)
	lw $t0, -732($fp)
	sw $t0, -736($fp)
	li $t0, 57448
	sw $t0, -740($fp)
	lw $t0, -740($fp)
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -748($fp)
	li $t0, 22621
	sw $t0, -752($fp)
	lw $t0, -752($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -760($fp)
	li $t0, 37501
	sw $t0, -764($fp)
	lw $t0, -764($fp)
	sw $t0, -768($fp)
	lw $t0, -768($fp)
	sw $t0, -772($fp)
	li $t0, 5258
	sw $t0, -776($fp)
	lw $t0, -776($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -784($fp)
	li $t0, 26238
	sw $t0, -788($fp)
	lw $t0, -788($fp)
	sw $t0, -792($fp)
	lw $t0, -792($fp)
	sw $t0, -796($fp)
	li $t0, 60555
	sw $t0, -800($fp)
	addi $t0, $fp, -100
	sw $t0, -804($fp)
	li $t0, 0
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
	li $t0, 42513
	sw $t0, -824($fp)
	addi $t0, $fp, -100
	sw $t0, -828($fp)
	li $t0, 1
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
	li $t0, 57055
	sw $t0, -848($fp)
	addi $t0, $fp, -100
	sw $t0, -852($fp)
	li $t0, 2
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
	li $t0, 44064
	sw $t0, -872($fp)
	addi $t0, $fp, -100
	sw $t0, -876($fp)
	li $t0, 3
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
	li $t0, 4307
	sw $t0, -896($fp)
	addi $t0, $fp, -100
	sw $t0, -900($fp)
	li $t0, 4
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
	li $t0, 45216
	sw $t0, -920($fp)
	addi $t0, $fp, -100
	sw $t0, -924($fp)
	li $t0, 5
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
	li $t0, 16600
	sw $t0, -944($fp)
	lw $t0, -944($fp)
	sw $t0, -948($fp)
	lw $t0, -948($fp)
	sw $t0, -952($fp)
	li $t0, 23565
	sw $t0, -956($fp)
	lw $t0, -956($fp)
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	sw $t0, -964($fp)
	li $t0, 55580
	sw $t0, -968($fp)
	lw $t0, -968($fp)
	sw $t0, -972($fp)
	lw $t0, -972($fp)
	sw $t0, -976($fp)
	li $t0, 16077
	sw $t0, -980($fp)
	addi $t0, $fp, -108
	sw $t0, -984($fp)
	li $t0, 0
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
	li $t0, 37434
	sw $t0, -1004($fp)
	addi $t0, $fp, -108
	sw $t0, -1008($fp)
	li $t0, 1
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
	li $t0, 42860
	sw $t0, -1028($fp)
	lw $t0, -1028($fp)
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -1036($fp)
	li $t0, 25430
	sw $t0, -1040($fp)
	lw $t0, -1040($fp)
	sw $t0, -1044($fp)
	lw $t0, -1044($fp)
	sw $t0, -1048($fp)
	li $t0, 2559
	sw $t0, -1052($fp)
	lw $t0, -1052($fp)
	sw $t0, -1056($fp)
	lw $t0, -1056($fp)
	sw $t0, -1060($fp)
	li $t0, 32180
	sw $t0, -1064($fp)
	lw $t0, -1064($fp)
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, -1072($fp)
	li $t0, 45765
	sw $t0, -1076($fp)
	lw $t0, -1076($fp)
	sw $t0, -1080($fp)
	lw $t0, -1080($fp)
	sw $t0, -1084($fp)
	li $t0, 23159
	sw $t0, -1088($fp)
	lw $t0, -1088($fp)
	sw $t0, -1092($fp)
	lw $t0, -1092($fp)
	sw $t0, -1096($fp)
	li $t0, 27061
	sw $t0, -1100($fp)
	lw $t0, -1100($fp)
	sw $t0, -1104($fp)
	lw $t0, -1104($fp)
	sw $t0, -1108($fp)
	li $t0, 24842
	sw $t0, -1112($fp)
	lw $t0, -1112($fp)
	sw $t0, -1116($fp)
	lw $t0, -1116($fp)
	sw $t0, -1120($fp)
	li $t0, 28891
	sw $t0, -1124($fp)
	lw $t0, -1124($fp)
	sw $t0, -1128($fp)
	lw $t0, -1128($fp)
	sw $t0, -1132($fp)
	li $t0, 48717
	sw $t0, -1136($fp)
	lw $t0, -1136($fp)
	sw $t0, -1140($fp)
	lw $t0, -1140($fp)
	sw $t0, -1144($fp)
	li $t0, 37866
	sw $t0, -1148($fp)
	lw $t0, -1148($fp)
	sw $t0, -1152($fp)
	lw $t0, -1152($fp)
	sw $t0, -1156($fp)
	li $t0, 15090
	sw $t0, -1160($fp)
	lw $t0, -1160($fp)
	sw $t0, -1164($fp)
	lw $t0, -1164($fp)
	sw $t0, -1168($fp)
	li $t0, 5849
	sw $t0, -1172($fp)
	lw $t0, -1172($fp)
	sw $t0, -1176($fp)
	lw $t0, -1176($fp)
	sw $t0, -1180($fp)
	li $t0, 56145
	sw $t0, -1184($fp)
	lw $t0, -1184($fp)
	sw $t0, -1188($fp)
	lw $t0, -1188($fp)
	sw $t0, -1192($fp)
	li $t0, 40222
	sw $t0, -1196($fp)
	lw $t0, -1196($fp)
	sw $t0, -1200($fp)
	lw $t0, -1200($fp)
	sw $t0, -1204($fp)
	li $t0, 63297
	sw $t0, -1208($fp)
	lw $t0, -1208($fp)
	sw $t0, -1212($fp)
	lw $t0, -1212($fp)
	sw $t0, -1216($fp)
	li $t0, 13230
	sw $t0, -1220($fp)
	lw $t0, -1220($fp)
	sw $t0, -1224($fp)
	lw $t0, -1224($fp)
	sw $t0, -1228($fp)
	li $t0, 12187
	sw $t0, -1232($fp)
	addi $t0, $fp, -112
	sw $t0, -1236($fp)
	li $t0, 0
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
	li $t0, 3019
	sw $t0, -1256($fp)
	lw $t0, -1256($fp)
	sw $t0, -1260($fp)
	lw $t0, -1260($fp)
	sw $t0, -1264($fp)
	li $t0, 39469
	sw $t0, -1268($fp)
	addi $t0, $fp, -124
	sw $t0, -1272($fp)
	li $t0, 0
	sw $t0, -1276($fp)
	lw $t0, -1276($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -1280($fp)
	lw $t0, -1272($fp)
	lw $t1, -1280($fp)
	add $t0, $t0, $t1
	sw $t0, -1284($fp)
	lw $t0, -1268($fp)
	lw $t1, -1284($fp)
	sw $t0, 0($t1)
	lw $t0, -1284($fp)
	lw $t1, 0($t0)
	sw $t1, -1288($fp)
	li $t0, 7206
	sw $t0, -1292($fp)
	addi $t0, $fp, -124
	sw $t0, -1296($fp)
	li $t0, 1
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
	li $t0, 45532
	sw $t0, -1316($fp)
	addi $t0, $fp, -124
	sw $t0, -1320($fp)
	li $t0, 2
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
	li $t0, 30988
	sw $t0, -1340($fp)
	lw $t0, -1340($fp)
	sw $t0, -1344($fp)
	lw $t0, -1344($fp)
	sw $t0, -1348($fp)
	li $t0, 51271
	sw $t0, -1352($fp)
	lw $t1, -1352($fp)
	li $t2, 0
	bne $t1, $t2, label240
	j label241
label240:
	li $t0, 0
	sw $t0, -1356($fp)
	lw $t0, -744($fp)
	sw $t0, -1360($fp)
	lw $t0, -768($fp)
	sw $t0, -1364($fp)
	lw $t0, -1360($fp)
	lw $t1, -1364($fp)
	sub $t0, $t0, $t1
	sw $t0, -1368($fp)
	lw $t0, -684($fp)
	sw $t0, -1372($fp)
	lw $t0, -1368($fp)
	lw $t1, -1372($fp)
	sub $t0, $t0, $t1
	sw $t0, -1376($fp)
	lw $t0, -1344($fp)
	sw $t0, -1380($fp)
	lw $t0, -1092($fp)
	sw $t0, -1384($fp)
	lw $t0, -1380($fp)
	lw $t1, -1384($fp)
	mul $t0, $t0, $t1
	sw $t0, -1388($fp)
	lw $t0, -1376($fp)
	lw $t1, -1388($fp)
	sub $t0, $t0, $t1
	sw $t0, -1392($fp)
	jal f10
	sw $v0, -1396($fp)
	addi $sp, $sp, 4
	lw $t0, -1140($fp)
	sw $t0, -1400($fp)
	lw $t0, -1396($fp)
	lw $t1, -1400($fp)
	add $t0, $t0, $t1
	sw $t0, -1404($fp)
	li $t0, 0
	sw $t0, -1408($fp)
	li $t0, 2335
	sw $t0, -1412($fp)
	lw $t0, -192($fp)
	sw $t0, -1416($fp)
	lw $t0, -1200($fp)
	sw $t0, -1420($fp)
	lw $t0, -1416($fp)
	lw $t1, -1420($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1424($fp)
	li $t0, 0
	lw $t1, -1424($fp)
	sub $t0, $t0, $t1
	sw $t0, -1428($fp)
	li $t0, 0
	sw $t0, -1432($fp)
	li $t0, 0
	sw $t0, -1436($fp)
	lw $t0, -1044($fp)
	sw $t0, -1440($fp)
	lw $t0, -696($fp)
	sw $t0, -1444($fp)
	lw $t1, -1440($fp)
	lw $t2, -1444($fp)
	ble $t1, $t2, label250
	j label251
label250:
	li $t0, 1
	sw $t0, -1436($fp)
label251:
	lw $t0, -144($fp)
	sw $t0, -1448($fp)
	lw $t1, -1436($fp)
	lw $t2, -1448($fp)
	bne $t1, $t2, label248
	j label249
label248:
	li $t0, 1
	sw $t0, -1432($fp)
label249:
	lw $t0, -780($fp)
	sw $t0, -1452($fp)
	lw $t0, -1452($fp)
	sw $t0, -960($fp)
	lw $t0, -960($fp)
	sw $t0, -1456($fp)
	li $t0, 10668
	sw $t0, -1460($fp)
	addi $sp, $sp, -4
	lw $t0, -1412($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1428($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1432($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1460($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1464($fp)
	addi $sp, $sp, 24
	lw $t0, -1188($fp)
	sw $t0, -1468($fp)
	lw $t1, -1464($fp)
	lw $t2, -1468($fp)
	bne $t1, $t2, label246
	j label247
label246:
	li $t0, 1
	sw $t0, -1408($fp)
label247:
	addi $t0, $fp, -76
	sw $t0, -1472($fp)
	lw $t0, -1152($fp)
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
	li $t0, 0
	lw $t1, -1488($fp)
	sub $t0, $t0, $t1
	sw $t0, -1492($fp)
	li $t0, 0
	sw $t0, -1496($fp)
	lw $t0, -1260($fp)
	sw $t0, -1500($fp)
	lw $t0, -780($fp)
	sw $t0, -1504($fp)
	lw $t1, -1500($fp)
	lw $t2, -1504($fp)
	bne $t1, $t2, label252
	j label254
label254:
	li $t0, 49839
	sw $t0, -1508($fp)
	lw $t1, -1508($fp)
	li $t2, 0
	bne $t1, $t2, label252
	j label253
label252:
	li $t0, 1
	sw $t0, -1496($fp)
label253:
	addi $sp, $sp, -4
	lw $t0, -1404($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1408($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1492($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1496($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1512($fp)
	addi $sp, $sp, 20
	lw $t1, -1392($fp)
	lw $t2, -1512($fp)
	blt $t1, $t2, label245
	j label244
label245:
	addi $t0, $fp, -100
	sw $t0, -1516($fp)
	li $t0, 1
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
	li $t0, 0
	lw $t1, -1532($fp)
	sub $t0, $t0, $t1
	sw $t0, -1536($fp)
	lw $t1, -1536($fp)
	li $t2, 0
	bne $t1, $t2, label243
	j label244
label243:
	li $t0, 1
	sw $t0, -1356($fp)
label244:
	j label242
label241:
	li $t0, 0
	sw $t0, -1540($fp)
	addi $t0, $fp, -44
	sw $t0, -1544($fp)
	li $t0, 2
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
	lw $t1, -1560($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label260
label260:
	lw $t0, -1092($fp)
	sw $t0, -1564($fp)
	lw $t1, -1564($fp)
	li $t2, 0
	bne $t1, $t2, label258
	j label259
label258:
	li $t0, 1
	sw $t0, -1540($fp)
label259:
	li $t0, 43842
	sw $t0, -1568($fp)
	li $t0, 47862
	sw $t0, -1572($fp)
	lw $t0, -1568($fp)
	lw $t1, -1572($fp)
	mul $t0, $t0, $t1
	sw $t0, -1576($fp)
	li $t0, 10217
	sw $t0, -1580($fp)
	lw $t0, -1576($fp)
	lw $t1, -1580($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1584($fp)
	li $t0, 43573
	sw $t0, -1588($fp)
	li $t0, 0
	sw $t0, -1592($fp)
	addi $t0, $fp, -124
	sw $t0, -1596($fp)
	li $t0, 2
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
	lw $t1, -1612($fp)
	li $t2, 0
	bne $t1, $t2, label262
	j label261
label261:
	li $t0, 1
	sw $t0, -1592($fp)
label262:
	lw $t0, -780($fp)
	sw $t0, -1616($fp)
	lw $t0, -1616($fp)
	sw $t0, -720($fp)
	lw $t0, -720($fp)
	sw $t0, -1620($fp)
	addi $sp, $sp, -4
	lw $t0, -1540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1584($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1588($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1592($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1620($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -1624($fp)
	addi $sp, $sp, 24
	lw $t0, -132($fp)
	sw $t0, -1628($fp)
	lw $t0, -1624($fp)
	lw $t1, -1628($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1632($fp)
	addi $t0, $fp, -100
	sw $t0, -1636($fp)
	li $t0, 0
	sw $t0, -1640($fp)
	li $t0, 37278
	sw $t0, -1644($fp)
	lw $t0, -480($fp)
	sw $t0, -1648($fp)
	lw $t1, -1644($fp)
	lw $t2, -1648($fp)
	bgt $t1, $t2, label263
	j label264
label263:
	li $t0, 1
	sw $t0, -1640($fp)
label264:
	li $t0, 4
	lw $t1, -1640($fp)
	mul $t0, $t0, $t1
	sw $t0, -1652($fp)
	lw $t0, -1652($fp)
	lw $t1, -1636($fp)
	add $t0, $t0, $t1
	sw $t0, -1656($fp)
	lw $t0, -1656($fp)
	lw $t1, 0($t0)
	sw $t1, -1660($fp)
	lw $t0, -1632($fp)
	lw $t1, -1660($fp)
	mul $t0, $t0, $t1
	sw $t0, -1664($fp)
	lw $t1, -1664($fp)
	li $t2, 0
	bne $t1, $t2, label255
	j label256
label255:
label265:
	lw $t0, -132($fp)
	sw $t0, -1668($fp)
	lw $t1, -1668($fp)
	li $t2, 0
	bne $t1, $t2, label267
	j label266
label266:
label268:
	li $t0, 48914
	sw $t0, -1672($fp)
	li $t0, 0
	sw $t0, -1676($fp)
	addi $t0, $fp, -100
	sw $t0, -1680($fp)
	lw $t0, -180($fp)
	sw $t0, -1684($fp)
	li $t0, 4
	lw $t1, -1684($fp)
	mul $t0, $t0, $t1
	sw $t0, -1688($fp)
	lw $t0, -1688($fp)
	lw $t1, -1680($fp)
	add $t0, $t0, $t1
	sw $t0, -1692($fp)
	lw $t0, -1692($fp)
	lw $t1, 0($t0)
	sw $t1, -1696($fp)
	lw $t1, -1696($fp)
	li $t2, 0
	bne $t1, $t2, label272
	j label271
label271:
	li $t0, 1
	sw $t0, -1676($fp)
label272:
	lw $t0, -1044($fp)
	sw $t0, -1700($fp)
	lw $t0, -1676($fp)
	lw $t1, -1700($fp)
	add $t0, $t0, $t1
	sw $t0, -1704($fp)
	lw $t1, -1672($fp)
	lw $t2, -1704($fp)
	ble $t1, $t2, label269
	j label270
label269:
	li $t0, 0
	sw $t0, -1708($fp)
	lw $t0, -1128($fp)
	sw $t0, -1712($fp)
	li $t0, 20460
	sw $t0, -1716($fp)
	li $t0, 0
	sw $t0, -1720($fp)
	addi $t0, $fp, -100
	sw $t0, -1724($fp)
	lw $t0, -1068($fp)
	sw $t0, -1728($fp)
	li $t0, 4
	lw $t1, -1728($fp)
	mul $t0, $t0, $t1
	sw $t0, -1732($fp)
	lw $t0, -1732($fp)
	lw $t1, -1724($fp)
	add $t0, $t0, $t1
	sw $t0, -1736($fp)
	lw $t0, -1736($fp)
	lw $t1, 0($t0)
	sw $t1, -1740($fp)
	li $t0, 34377
	sw $t0, -1744($fp)
	lw $t1, -1740($fp)
	lw $t2, -1744($fp)
	beq $t1, $t2, label276
	j label277
label276:
	li $t0, 1
	sw $t0, -1720($fp)
label277:
	addi $sp, $sp, -4
	lw $t0, -1716($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1720($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -1748($fp)
	addi $sp, $sp, 12
	lw $t0, -1712($fp)
	lw $t1, -1748($fp)
	sub $t0, $t0, $t1
	sw $t0, -1752($fp)
	lw $t1, -1752($fp)
	li $t2, 0
	bne $t1, $t2, label275
	j label274
label275:
	lw $t0, -720($fp)
	sw $t0, -1756($fp)
	li $t0, 0
	sw $t0, -1760($fp)
	lw $t0, -720($fp)
	sw $t0, -1764($fp)
	li $t0, 21244
	sw $t0, -1768($fp)
	lw $t1, -1764($fp)
	lw $t2, -1768($fp)
	bgt $t1, $t2, label278
	j label279
label278:
	li $t0, 1
	sw $t0, -1760($fp)
label279:
	lw $t1, -1756($fp)
	lw $t2, -1760($fp)
	beq $t1, $t2, label273
	j label274
label273:
	li $t0, 1
	sw $t0, -1708($fp)
label274:
	j label268
label270:
	j label265
label267:
	j label257
label256:
	li $t0, 49467
	sw $t0, -1772($fp)
	lw $t0, -192($fp)
	sw $t0, -1776($fp)
	li $t0, 0
	sw $t0, -1780($fp)
	li $t0, 11853
	sw $t0, -1784($fp)
	lw $t1, -1784($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label286
label286:
	lw $t0, -1032($fp)
	sw $t0, -1788($fp)
	lw $t1, -1788($fp)
	li $t2, 0
	bne $t1, $t2, label284
	j label285
label284:
	li $t0, 1
	sw $t0, -1780($fp)
label285:
	li $t0, 0
	sw $t0, -1792($fp)
	li $t0, 26309
	sw $t0, -1796($fp)
	lw $t0, -684($fp)
	sw $t0, -1800($fp)
	lw $t0, -1796($fp)
	lw $t1, -1800($fp)
	mul $t0, $t0, $t1
	sw $t0, -1804($fp)
	lw $t0, -972($fp)
	sw $t0, -1808($fp)
	lw $t1, -1804($fp)
	lw $t2, -1808($fp)
	blt $t1, $t2, label287
	j label288
label287:
	li $t0, 1
	sw $t0, -1792($fp)
label288:
	addi $sp, $sp, -4
	lw $t0, -1780($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1792($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1812($fp)
	addi $sp, $sp, 12
	lw $t0, -1776($fp)
	lw $t1, -1812($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -1816($fp)
	li $t0, 0
	lw $t1, -1816($fp)
	sub $t0, $t0, $t1
	sw $t0, -1820($fp)
	lw $t0, -1772($fp)
	lw $t1, -1820($fp)
	mul $t0, $t0, $t1
	sw $t0, -1824($fp)
	li $t0, 0
	lw $t1, -1824($fp)
	sub $t0, $t0, $t1
	sw $t0, -1828($fp)
	li $t0, 0
	lw $t1, -1828($fp)
	sub $t0, $t0, $t1
	sw $t0, -1832($fp)
	lw $t1, -1832($fp)
	li $t2, 0
	bne $t1, $t2, label280
	j label283
label283:
	li $t0, 0
	sw $t0, -1836($fp)
	jal f10
	sw $v0, -1840($fp)
	addi $sp, $sp, 4
	li $t0, 25084
	sw $t0, -1844($fp)
	lw $t1, -1840($fp)
	lw $t2, -1844($fp)
	blt $t1, $t2, label289
	j label290
label289:
	li $t0, 1
	sw $t0, -1836($fp)
label290:
	li $t0, 0
	sw $t0, -1848($fp)
	addi $t0, $fp, -100
	sw $t0, -1852($fp)
	lw $t0, -1176($fp)
	sw $t0, -1856($fp)
	li $t0, 4
	lw $t1, -1856($fp)
	mul $t0, $t0, $t1
	sw $t0, -1860($fp)
	lw $t0, -1860($fp)
	lw $t1, -1852($fp)
	add $t0, $t0, $t1
	sw $t0, -1864($fp)
	lw $t0, -1864($fp)
	lw $t1, 0($t0)
	sw $t1, -1868($fp)
	lw $t0, -1068($fp)
	sw $t0, -1872($fp)
	lw $t1, -1868($fp)
	lw $t2, -1872($fp)
	bgt $t1, $t2, label291
	j label292
label291:
	li $t0, 1
	sw $t0, -1848($fp)
label292:
	addi $sp, $sp, -4
	lw $t0, -1836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1848($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -1876($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -1880($fp)
	lw $t0, -1140($fp)
	sw $t0, -1884($fp)
	lw $t0, -732($fp)
	sw $t0, -1888($fp)
	lw $t0, -1884($fp)
	lw $t1, -1888($fp)
	mul $t0, $t0, $t1
	sw $t0, -1892($fp)
	lw $t1, -1892($fp)
	li $t2, 0
	bne $t1, $t2, label295
	j label294
label295:
	lw $t0, -1068($fp)
	sw $t0, -1896($fp)
	lw $t1, -1896($fp)
	li $t2, 0
	bne $t1, $t2, label293
	j label294
label293:
	li $t0, 1
	sw $t0, -1880($fp)
label294:
	li $t0, 24153
	sw $t0, -1900($fp)
	li $t0, 24070
	sw $t0, -1904($fp)
	lw $t0, -1900($fp)
	lw $t1, -1904($fp)
	sub $t0, $t0, $t1
	sw $t0, -1908($fp)
	lw $t0, -360($fp)
	sw $t0, -1912($fp)
	lw $t0, -1908($fp)
	lw $t1, -1912($fp)
	add $t0, $t0, $t1
	sw $t0, -1916($fp)
	li $t0, 0
	sw $t0, -1920($fp)
	lw $t0, -1092($fp)
	sw $t0, -1924($fp)
	li $t0, 0
	lw $t1, -1924($fp)
	sub $t0, $t0, $t1
	sw $t0, -1928($fp)
	lw $t1, -1928($fp)
	li $t2, 0
	bne $t1, $t2, label297
	j label296
label296:
	li $t0, 1
	sw $t0, -1920($fp)
label297:
	addi $sp, $sp, -4
	lw $t0, -1876($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1880($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1916($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -1920($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -1932($fp)
	addi $sp, $sp, 20
	lw $t0, -792($fp)
	sw $t0, -1936($fp)
	lw $t0, -1932($fp)
	lw $t1, -1936($fp)
	add $t0, $t0, $t1
	sw $t0, -1940($fp)
	li $t0, 36340
	sw $t0, -1944($fp)
	lw $t0, -948($fp)
	sw $t0, -1948($fp)
	lw $t0, -1944($fp)
	lw $t1, -1948($fp)
	mul $t0, $t0, $t1
	sw $t0, -1952($fp)
	lw $t1, -1940($fp)
	lw $t2, -1952($fp)
	blt $t1, $t2, label280
	j label281
label280:
	lw $t0, -468($fp)
	sw $t0, -1956($fp)
	j label282
label281:
	li $t0, 27089
	sw $t0, -1996($fp)
	lw $t0, -1996($fp)
	sw $t0, -2000($fp)
	lw $t0, -2000($fp)
	sw $t0, -2004($fp)
	li $t0, 64553
	sw $t0, -2008($fp)
	addi $t0, $fp, -1992
	sw $t0, -2012($fp)
	li $t0, 0
	sw $t0, -2016($fp)
	lw $t0, -2016($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2020($fp)
	lw $t0, -2012($fp)
	lw $t1, -2020($fp)
	add $t0, $t0, $t1
	sw $t0, -2024($fp)
	lw $t0, -2008($fp)
	lw $t1, -2024($fp)
	sw $t0, 0($t1)
	lw $t0, -2024($fp)
	lw $t1, 0($t0)
	sw $t1, -2028($fp)
	li $t0, 43547
	sw $t0, -2032($fp)
	addi $t0, $fp, -1992
	sw $t0, -2036($fp)
	li $t0, 1
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
	li $t0, 7086
	sw $t0, -2056($fp)
	addi $t0, $fp, -1992
	sw $t0, -2060($fp)
	li $t0, 2
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
	li $t0, 30005
	sw $t0, -2080($fp)
	addi $t0, $fp, -1992
	sw $t0, -2084($fp)
	li $t0, 3
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
	li $t0, 29282
	sw $t0, -2104($fp)
	addi $t0, $fp, -1992
	sw $t0, -2108($fp)
	li $t0, 4
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
	li $t0, 56925
	sw $t0, -2128($fp)
	addi $t0, $fp, -1992
	sw $t0, -2132($fp)
	li $t0, 5
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
	li $t0, 40674
	sw $t0, -2152($fp)
	addi $t0, $fp, -1992
	sw $t0, -2156($fp)
	li $t0, 6
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
	li $t0, 31617
	sw $t0, -2176($fp)
	addi $t0, $fp, -1992
	sw $t0, -2180($fp)
	li $t0, 7
	sw $t0, -2184($fp)
	lw $t0, -2184($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2188($fp)
	lw $t0, -2180($fp)
	lw $t1, -2188($fp)
	add $t0, $t0, $t1
	sw $t0, -2192($fp)
	lw $t0, -2176($fp)
	lw $t1, -2192($fp)
	sw $t0, 0($t1)
	lw $t0, -2192($fp)
	lw $t1, 0($t0)
	sw $t1, -2196($fp)
	li $t0, 64794
	sw $t0, -2200($fp)
	addi $t0, $fp, -1992
	sw $t0, -2204($fp)
	li $t0, 8
	sw $t0, -2208($fp)
	lw $t0, -2208($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -2212($fp)
	lw $t0, -2204($fp)
	lw $t1, -2212($fp)
	add $t0, $t0, $t1
	sw $t0, -2216($fp)
	lw $t0, -2200($fp)
	lw $t1, -2216($fp)
	sw $t0, 0($t1)
	lw $t0, -2216($fp)
	lw $t1, 0($t0)
	sw $t1, -2220($fp)
	li $t0, 0
	sw $t0, -2224($fp)
	li $t0, 0
	sw $t0, -2228($fp)
	addi $t0, $fp, -100
	sw $t0, -2232($fp)
	lw $t0, -204($fp)
	sw $t0, -2236($fp)
	li $t0, 4
	lw $t1, -2236($fp)
	mul $t0, $t0, $t1
	sw $t0, -2240($fp)
	lw $t0, -2240($fp)
	lw $t1, -2232($fp)
	add $t0, $t0, $t1
	sw $t0, -2244($fp)
	lw $t0, -2244($fp)
	lw $t1, 0($t0)
	sw $t1, -2248($fp)
	lw $t0, -1224($fp)
	sw $t0, -2252($fp)
	lw $t1, -2248($fp)
	lw $t2, -2252($fp)
	ble $t1, $t2, label300
	j label301
label300:
	li $t0, 1
	sw $t0, -2228($fp)
label301:
	lw $t0, -132($fp)
	sw $t0, -2256($fp)
	addi $sp, $sp, -4
	lw $t0, -2228($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2256($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -2260($fp)
	addi $sp, $sp, 12
	lw $t0, -1128($fp)
	sw $t0, -2264($fp)
	lw $t1, -2260($fp)
	lw $t2, -2264($fp)
	blt $t1, $t2, label298
	j label299
label298:
	li $t0, 1
	sw $t0, -2224($fp)
label299:
	li $t0, 0
	sw $t0, -2268($fp)
	lw $t0, -1032($fp)
	sw $t0, -2272($fp)
	addi $t0, $fp, -100
	sw $t0, -2276($fp)
	lw $t0, -1056($fp)
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
	lw $t0, -2272($fp)
	lw $t1, -2292($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2296($fp)
	addi $t0, $fp, -8
	sw $t0, -2300($fp)
	lw $t0, -2000($fp)
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
	li $t0, 41387
	sw $t0, -2320($fp)
	lw $t0, -2316($fp)
	lw $t1, -2320($fp)
	mul $t0, $t0, $t1
	sw $t0, -2324($fp)
	addi $t0, $fp, -8
	sw $t0, -2328($fp)
	li $t0, 0
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
	lw $t0, -2324($fp)
	lw $t1, -2344($fp)
	mul $t0, $t0, $t1
	sw $t0, -2348($fp)
	lw $t1, -2296($fp)
	lw $t2, -2348($fp)
	ble $t1, $t2, label302
	j label303
label302:
	li $t0, 1
	sw $t0, -2268($fp)
label303:
	addi $t0, $fp, -1992
	sw $t0, -2352($fp)
	li $t0, 8
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
	addi $t0, $fp, -32
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
	li $t0, 0
	lw $t1, -2388($fp)
	sub $t0, $t0, $t1
	sw $t0, -2392($fp)
	lw $t0, -2368($fp)
	lw $t1, -2392($fp)
	mul $t0, $t0, $t1
	sw $t0, -2396($fp)
label282:
label257:
label242:
	li $t0, 0
	sw $t0, -2400($fp)
	lw $t0, -1032($fp)
	sw $t0, -2404($fp)
	addi $t0, $fp, -108
	sw $t0, -2408($fp)
	li $t0, 1
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
	lw $t1, -2404($fp)
	lw $t2, -2424($fp)
	blt $t1, $t2, label307
	j label308
label307:
	li $t0, 1
	sw $t0, -2400($fp)
label308:
	lw $t0, -2400($fp)
	sw $t0, -1068($fp)
	lw $t0, -1068($fp)
	sw $t0, -2428($fp)
	lw $t1, -2428($fp)
	li $t2, 0
	bne $t1, $t2, label304
	j label305
label304:
	li $t0, 0
	sw $t0, -2432($fp)
	li $t0, 0
	sw $t0, -2436($fp)
	lw $t0, -1116($fp)
	sw $t0, -2440($fp)
	lw $t0, -132($fp)
	sw $t0, -2444($fp)
	lw $t0, -2440($fp)
	lw $t1, -2444($fp)
	add $t0, $t0, $t1
	sw $t0, -2448($fp)
	lw $t1, -2448($fp)
	li $t2, 0
	bne $t1, $t2, label314
	j label313
label314:
	li $t0, 1214
	sw $t0, -2452($fp)
	lw $t1, -2452($fp)
	li $t2, 0
	bne $t1, $t2, label312
	j label313
label312:
	li $t0, 1
	sw $t0, -2436($fp)
label313:
	li $t0, 0
	sw $t0, -2456($fp)
	li $t0, 1384
	sw $t0, -2460($fp)
	lw $t1, -2460($fp)
	li $t2, 0
	bne $t1, $t2, label315
	j label318
label318:
	lw $t0, -1104($fp)
	sw $t0, -2464($fp)
	lw $t1, -2464($fp)
	li $t2, 0
	bne $t1, $t2, label315
	j label317
label317:
	li $t0, 35786
	sw $t0, -2468($fp)
	lw $t1, -2468($fp)
	li $t2, 0
	bne $t1, $t2, label315
	j label316
label315:
	li $t0, 1
	sw $t0, -2456($fp)
label316:
	addi $t0, $fp, -44
	sw $t0, -2472($fp)
	lw $t0, -684($fp)
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
	lw $t0, -360($fp)
	sw $t0, -2492($fp)
	lw $t0, -2488($fp)
	lw $t1, -2492($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2496($fp)
	lw $t0, -1212($fp)
	sw $t0, -2500($fp)
	addi $sp, $sp, -4
	lw $t0, -2436($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2456($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2496($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2500($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -2504($fp)
	addi $sp, $sp, 20
	li $t0, 21844
	sw $t0, -2508($fp)
	lw $t1, -2504($fp)
	lw $t2, -2508($fp)
	bne $t1, $t2, label311
	j label310
label311:
	lw $t0, -1092($fp)
	sw $t0, -2512($fp)
	li $t0, 57031
	sw $t0, -2516($fp)
	lw $t0, -2512($fp)
	lw $t1, -2516($fp)
	mul $t0, $t0, $t1
	sw $t0, -2520($fp)
	lw $t0, -384($fp)
	sw $t0, -2524($fp)
	lw $t0, -2520($fp)
	lw $t1, -2524($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -2528($fp)
	li $t0, 0
	sw $t0, -2532($fp)
	lw $t0, -708($fp)
	sw $t0, -2536($fp)
	lw $t1, -2536($fp)
	li $t2, 0
	bne $t1, $t2, label320
	j label319
label319:
	li $t0, 1
	sw $t0, -2532($fp)
label320:
	lw $t0, -2528($fp)
	lw $t1, -2532($fp)
	sub $t0, $t0, $t1
	sw $t0, -2540($fp)
	lw $t1, -2540($fp)
	li $t2, 0
	bne $t1, $t2, label309
	j label310
label309:
	li $t0, 1
	sw $t0, -2432($fp)
label310:
	lw $ra, -4($fp)
	lw $v0, -2432($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label306
label305:
	addi $t0, $fp, -100
	sw $t0, -2544($fp)
	lw $t0, -372($fp)
	sw $t0, -2548($fp)
	lw $t0, -2548($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -2552($fp)
	li $t0, 4
	lw $t1, -2552($fp)
	mul $t0, $t0, $t1
	sw $t0, -2556($fp)
	lw $t0, -2556($fp)
	lw $t1, -2544($fp)
	add $t0, $t0, $t1
	sw $t0, -2560($fp)
	lw $t0, -2560($fp)
	lw $t1, 0($t0)
	sw $t1, -2564($fp)
	lw $t0, -792($fp)
	sw $t0, -2568($fp)
	lw $t0, -2564($fp)
	lw $t1, -2568($fp)
	sub $t0, $t0, $t1
	sw $t0, -2572($fp)
	lw $ra, -4($fp)
	lw $v0, -2572($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label306:
	li $t0, 50682
	sw $t0, -2576($fp)
	lw $t0, -2576($fp)
	sw $t0, -2580($fp)
	lw $t0, -2580($fp)
	sw $t0, -2584($fp)
	li $t0, 48153
	sw $t0, -2588($fp)
	lw $t0, -2588($fp)
	sw $t0, -2592($fp)
	lw $t0, -2592($fp)
	sw $t0, -2596($fp)
	li $t0, 3348
	sw $t0, -2600($fp)
	lw $t0, -2600($fp)
	sw $t0, -2604($fp)
	lw $t0, -2604($fp)
	sw $t0, -2608($fp)
	li $t0, 9299
	sw $t0, -2612($fp)
	lw $t0, -2612($fp)
	sw $t0, -2616($fp)
	lw $t0, -2616($fp)
	sw $t0, -2620($fp)
	lw $t0, -2580($fp)
	sw $t0, -2624($fp)
	lw $t0, -2624($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2592($fp)
	sw $t0, -2628($fp)
	lw $t0, -2628($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2604($fp)
	sw $t0, -2632($fp)
	lw $t0, -2632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -2616($fp)
	sw $t0, -2636($fp)
	lw $t0, -2636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -2640($fp)
	li $t0, 6687
	sw $t0, -2644($fp)
	lw $t0, -1092($fp)
	sw $t0, -2648($fp)
	li $t0, 0
	lw $t1, -2648($fp)
	sub $t0, $t0, $t1
	sw $t0, -2652($fp)
	lw $t0, -2644($fp)
	lw $t1, -2652($fp)
	sub $t0, $t0, $t1
	sw $t0, -2656($fp)
	li $t0, 28432
	sw $t0, -2660($fp)
	lw $t1, -2656($fp)
	lw $t2, -2660($fp)
	blt $t1, $t2, label321
	j label322
label321:
	li $t0, 1
	sw $t0, -2640($fp)
label322:
	lw $ra, -4($fp)
	lw $v0, -2640($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	addi $t0, $fp, -108
	sw $t0, -2664($fp)
	li $t0, 0
	sw $t0, -2668($fp)
	li $t0, 4
	lw $t1, -2668($fp)
	mul $t0, $t0, $t1
	sw $t0, -2672($fp)
	lw $t0, -2672($fp)
	lw $t1, -2664($fp)
	add $t0, $t0, $t1
	sw $t0, -2676($fp)
	lw $t0, -2676($fp)
	lw $t1, 0($t0)
	sw $t1, -2680($fp)
	li $t0, 0
	sw $t0, -2684($fp)
	lw $t0, -1056($fp)
	sw $t0, -2688($fp)
	li $t0, 0
	lw $t1, -2688($fp)
	sub $t0, $t0, $t1
	sw $t0, -2692($fp)
	li $t0, 0
	sw $t0, -2696($fp)
	li $t0, 27449
	sw $t0, -2700($fp)
	lw $t1, -2700($fp)
	li $t2, 0
	bne $t1, $t2, label328
	j label327
label327:
	li $t0, 1
	sw $t0, -2696($fp)
label328:
	lw $t0, -2692($fp)
	lw $t1, -2696($fp)
	add $t0, $t0, $t1
	sw $t0, -2704($fp)
	lw $t1, -2704($fp)
	li $t2, 0
	bne $t1, $t2, label326
	j label325
label326:
	addi $t0, $fp, -44
	sw $t0, -2708($fp)
	lw $t0, -180($fp)
	sw $t0, -2712($fp)
	li $t0, 4
	lw $t1, -2712($fp)
	mul $t0, $t0, $t1
	sw $t0, -2716($fp)
	lw $t0, -2716($fp)
	lw $t1, -2708($fp)
	add $t0, $t0, $t1
	sw $t0, -2720($fp)
	lw $t0, -2720($fp)
	lw $t1, 0($t0)
	sw $t1, -2724($fp)
	li $t0, 0
	lw $t1, -2724($fp)
	sub $t0, $t0, $t1
	sw $t0, -2728($fp)
	lw $t1, -2728($fp)
	li $t2, 0
	bne $t1, $t2, label323
	j label325
label325:
	addi $t0, $fp, -100
	sw $t0, -2732($fp)
	li $t0, 2
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
	lw $t1, -2748($fp)
	li $t2, 0
	bne $t1, $t2, label324
	j label323
label323:
	li $t0, 1
	sw $t0, -2684($fp)
label324:
	li $t0, 57455
	sw $t0, -2752($fp)
	li $t0, 0
	lw $t1, -2752($fp)
	sub $t0, $t0, $t1
	sw $t0, -2756($fp)
	addi $t0, $fp, -108
	sw $t0, -2760($fp)
	li $t0, 0
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
	li $t0, 31510
	sw $t0, -2780($fp)
	lw $t0, -2604($fp)
	sw $t0, -2784($fp)
	lw $t0, -2780($fp)
	lw $t1, -2784($fp)
	mul $t0, $t0, $t1
	sw $t0, -2788($fp)
	li $t0, 8444
	sw $t0, -2792($fp)
	lw $t0, -2788($fp)
	lw $t1, -2792($fp)
	add $t0, $t0, $t1
	sw $t0, -2796($fp)
	addi $t0, $fp, -8
	sw $t0, -2800($fp)
	lw $t0, -468($fp)
	sw $t0, -2804($fp)
	li $t0, 4
	lw $t1, -2804($fp)
	mul $t0, $t0, $t1
	sw $t0, -2808($fp)
	lw $t0, -2808($fp)
	lw $t1, -2800($fp)
	add $t0, $t0, $t1
	sw $t0, -2812($fp)
	lw $t0, -2812($fp)
	lw $t1, 0($t0)
	sw $t1, -2816($fp)
	li $t0, 0
	sw $t0, -2820($fp)
	lw $t0, -180($fp)
	sw $t0, -2824($fp)
	lw $t1, -2824($fp)
	li $t2, 0
	bne $t1, $t2, label333
	j label332
label332:
	li $t0, 1
	sw $t0, -2820($fp)
label333:
	li $t0, 0
	lw $t1, -2820($fp)
	sub $t0, $t0, $t1
	sw $t0, -2828($fp)
	lw $t0, -684($fp)
	sw $t0, -2832($fp)
	lw $t0, -2832($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -2836($fp)
	li $t0, 0
	sw $t0, -2840($fp)
	li $t0, 32593
	sw $t0, -2844($fp)
	lw $t1, -2844($fp)
	li $t2, 0
	bne $t1, $t2, label337
	j label336
label337:
	lw $t0, -480($fp)
	sw $t0, -2848($fp)
	lw $t1, -2848($fp)
	li $t2, 0
	bne $t1, $t2, label334
	j label336
label336:
	li $t0, 19014
	sw $t0, -2852($fp)
	lw $t1, -2852($fp)
	li $t2, 0
	bne $t1, $t2, label334
	j label335
label334:
	li $t0, 1
	sw $t0, -2840($fp)
label335:
	addi $sp, $sp, -4
	lw $t0, -2796($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2816($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2828($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2836($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -2840($fp)
	sw $t0, 0($sp)
	jal f7
	sw $v0, -2856($fp)
	addi $sp, $sp, 24
	lw $t0, -2776($fp)
	lw $t1, -2856($fp)
	mul $t0, $t0, $t1
	sw $t0, -2860($fp)
	lw $t1, -2756($fp)
	lw $t2, -2860($fp)
	bgt $t1, $t2, label329
	j label330
label329:
	li $t0, 3508
	sw $t0, -2900($fp)
	addi $t0, $fp, -2896
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
	li $t0, 10535
	sw $t0, -2924($fp)
	addi $t0, $fp, -2896
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
	li $t0, 27868
	sw $t0, -2948($fp)
	addi $t0, $fp, -2896
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
	li $t0, 31845
	sw $t0, -2972($fp)
	addi $t0, $fp, -2896
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
	li $t0, 37422
	sw $t0, -2996($fp)
	addi $t0, $fp, -2896
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
	li $t0, 57509
	sw $t0, -3020($fp)
	addi $t0, $fp, -2896
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
	li $t0, 18717
	sw $t0, -3044($fp)
	addi $t0, $fp, -2896
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
	li $t0, 4260
	sw $t0, -3068($fp)
	addi $t0, $fp, -2896
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
	li $t0, 58893
	sw $t0, -3092($fp)
	addi $t0, $fp, -2896
	sw $t0, -3096($fp)
	li $t0, 8
	sw $t0, -3100($fp)
	lw $t0, -3100($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	sw $t0, -3104($fp)
	lw $t0, -3096($fp)
	lw $t1, -3104($fp)
	add $t0, $t0, $t1
	sw $t0, -3108($fp)
	lw $t0, -3092($fp)
	lw $t1, -3108($fp)
	sw $t0, 0($t1)
	lw $t0, -3108($fp)
	lw $t1, 0($t0)
	sw $t1, -3112($fp)
	li $t0, 0
	sw $t0, -3116($fp)
	lw $t0, -132($fp)
	sw $t0, -3120($fp)
	lw $t0, -132($fp)
	sw $t0, -3124($fp)
	lw $t0, -144($fp)
	sw $t0, -3128($fp)
	lw $t0, -3124($fp)
	lw $t1, -3128($fp)
	mul $t0, $t0, $t1
	sw $t0, -3132($fp)
	lw $t0, -3120($fp)
	lw $t1, -3132($fp)
	sub $t0, $t0, $t1
	sw $t0, -3136($fp)
	lw $t0, -744($fp)
	sw $t0, -3140($fp)
	lw $t0, -480($fp)
	sw $t0, -3144($fp)
	lw $t0, -3140($fp)
	lw $t1, -3144($fp)
	mul $t0, $t0, $t1
	sw $t0, -3148($fp)
	lw $t0, -1344($fp)
	sw $t0, -3152($fp)
	lw $t0, -3148($fp)
	lw $t1, -3152($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3156($fp)
	lw $t1, -3136($fp)
	lw $t2, -3156($fp)
	ble $t1, $t2, label340
	j label339
label340:
	li $t0, 0
	sw $t0, -3160($fp)
	li $t0, 54504
	sw $t0, -3164($fp)
	li $t0, 0
	lw $t1, -3164($fp)
	sub $t0, $t0, $t1
	sw $t0, -3168($fp)
	lw $t1, -3168($fp)
	li $t2, 0
	bne $t1, $t2, label342
	j label341
label341:
	li $t0, 1
	sw $t0, -3160($fp)
label342:
	li $t0, 5474
	sw $t0, -3172($fp)
	li $t0, 0
	lw $t1, -3172($fp)
	sub $t0, $t0, $t1
	sw $t0, -3176($fp)
	lw $t0, -3160($fp)
	lw $t1, -3176($fp)
	sub $t0, $t0, $t1
	sw $t0, -3180($fp)
	lw $t1, -3180($fp)
	li $t2, 0
	bne $t1, $t2, label338
	j label339
label338:
	li $t0, 1
	sw $t0, -3116($fp)
label339:
	li $t0, 0
	sw $t0, -3184($fp)
	addi $t0, $fp, -100
	sw $t0, -3188($fp)
	addi $t0, $fp, -2896
	sw $t0, -3192($fp)
	li $t0, 1
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
	li $t0, 4
	lw $t1, -3208($fp)
	mul $t0, $t0, $t1
	sw $t0, -3212($fp)
	lw $t0, -3212($fp)
	lw $t1, -3188($fp)
	add $t0, $t0, $t1
	sw $t0, -3216($fp)
	lw $t0, -3216($fp)
	lw $t1, 0($t0)
	sw $t1, -3220($fp)
	jal f10
	sw $v0, -3224($fp)
	addi $sp, $sp, 4
	lw $t0, -3220($fp)
	lw $t1, -3224($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3228($fp)
	lw $t1, -3228($fp)
	li $t2, 0
	bne $t1, $t2, label345
	j label344
label345:
	li $t0, 56156
	sw $t0, -3232($fp)
	lw $t1, -3232($fp)
	li $t2, 0
	bne $t1, $t2, label343
	j label344
label343:
	li $t0, 1
	sw $t0, -3184($fp)
label344:
	j label331
label330:
label346:
	li $t0, 0
	sw $t0, -3236($fp)
	li $t0, 0
	sw $t0, -3240($fp)
	lw $t0, -744($fp)
	sw $t0, -3244($fp)
	lw $t0, -372($fp)
	sw $t0, -3248($fp)
	lw $t1, -3244($fp)
	lw $t2, -3248($fp)
	blt $t1, $t2, label351
	j label352
label351:
	li $t0, 1
	sw $t0, -3240($fp)
label352:
	li $t0, 12244
	sw $t0, -3252($fp)
	lw $t1, -3240($fp)
	lw $t2, -3252($fp)
	beq $t1, $t2, label349
	j label350
label349:
	li $t0, 1
	sw $t0, -3236($fp)
label350:
	li $t0, 0
	sw $t0, -3256($fp)
	li $t0, 0
	sw $t0, -3260($fp)
	lw $t0, -2592($fp)
	sw $t0, -3264($fp)
	lw $t1, -3264($fp)
	li $t2, 0
	bne $t1, $t2, label356
	j label355
label355:
	li $t0, 1
	sw $t0, -3260($fp)
label356:
	li $t0, 4505
	sw $t0, -3268($fp)
	lw $t1, -3260($fp)
	lw $t2, -3268($fp)
	beq $t1, $t2, label353
	j label354
label353:
	li $t0, 1
	sw $t0, -3256($fp)
label354:
	li $t0, 0
	sw $t0, -3272($fp)
	li $t0, 0
	sw $t0, -3276($fp)
	li $t0, 49347
	sw $t0, -3280($fp)
	li $t0, 65456
	sw $t0, -3284($fp)
	lw $t1, -3280($fp)
	lw $t2, -3284($fp)
	bge $t1, $t2, label359
	j label360
label359:
	li $t0, 1
	sw $t0, -3276($fp)
label360:
	lw $t0, -468($fp)
	sw $t0, -3288($fp)
	lw $t1, -3276($fp)
	lw $t2, -3288($fp)
	bne $t1, $t2, label357
	j label358
label357:
	li $t0, 1
	sw $t0, -3272($fp)
label358:
	li $t0, 0
	sw $t0, -3292($fp)
	li $t0, 63354
	sw $t0, -3296($fp)
	lw $t0, -1128($fp)
	sw $t0, -3300($fp)
	lw $t0, -3296($fp)
	lw $t1, -3300($fp)
	mul $t0, $t0, $t1
	sw $t0, -3304($fp)
	lw $t1, -3304($fp)
	li $t2, 0
	bne $t1, $t2, label363
	j label362
label363:
	lw $t0, -708($fp)
	sw $t0, -3308($fp)
	lw $t1, -3308($fp)
	li $t2, 0
	bne $t1, $t2, label361
	j label362
label361:
	li $t0, 1
	sw $t0, -3292($fp)
label362:
	addi $sp, $sp, -4
	lw $t0, -3236($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3256($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3272($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3292($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -3312($fp)
	addi $sp, $sp, 20
	li $t0, 0
	sw $t0, -3316($fp)
	li $t0, 38282
	sw $t0, -3320($fp)
	lw $t1, -3320($fp)
	li $t2, 0
	bne $t1, $t2, label365
	j label364
label364:
	li $t0, 1
	sw $t0, -3316($fp)
label365:
	li $t0, 39693
	sw $t0, -3324($fp)
	lw $t0, -3316($fp)
	lw $t1, -3324($fp)
	mul $t0, $t0, $t1
	sw $t0, -3328($fp)
	li $t0, 45560
	sw $t0, -3332($fp)
	li $t0, 0
	lw $t1, -3332($fp)
	sub $t0, $t0, $t1
	sw $t0, -3336($fp)
	li $t0, 0
	lw $t1, -3336($fp)
	sub $t0, $t0, $t1
	sw $t0, -3340($fp)
	addi $sp, $sp, -4
	lw $t0, -3328($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3340($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3344($fp)
	addi $sp, $sp, 12
	li $t0, 3675
	sw $t0, -3348($fp)
	lw $t0, -180($fp)
	sw $t0, -3352($fp)
	lw $t0, -3348($fp)
	lw $t1, -3352($fp)
	mul $t0, $t0, $t1
	sw $t0, -3356($fp)
	lw $t0, -3344($fp)
	lw $t1, -3356($fp)
	add $t0, $t0, $t1
	sw $t0, -3360($fp)
	lw $t1, -3312($fp)
	lw $t2, -3360($fp)
	ble $t1, $t2, label347
	j label348
label347:
	li $t0, 13608
	sw $t0, -3364($fp)
	li $t0, 31612
	sw $t0, -3368($fp)
	lw $t0, -3364($fp)
	lw $t1, -3368($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -3372($fp)
	j label346
label348:
label331:
label366:
	li $t0, 56608
	sw $t0, -3376($fp)
	lw $t1, -3376($fp)
	li $t2, 0
	bne $t1, $t2, label367
	j label368
label367:
	li $t0, 45860
	sw $t0, -3380($fp)
	j label366
label368:
	addi $t0, $fp, -44
	sw $t0, -3384($fp)
	addi $t0, $fp, -108
	sw $t0, -3388($fp)
	li $t0, 0
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
	li $t0, 4
	lw $t1, -3404($fp)
	mul $t0, $t0, $t1
	sw $t0, -3408($fp)
	lw $t0, -3408($fp)
	lw $t1, -3384($fp)
	add $t0, $t0, $t1
	sw $t0, -3412($fp)
	lw $t0, -3412($fp)
	lw $t1, 0($t0)
	sw $t1, -3416($fp)
	li $t0, 0
	sw $t0, -3420($fp)
	lw $t0, -1056($fp)
	sw $t0, -3424($fp)
	li $t0, 0
	lw $t1, -3424($fp)
	sub $t0, $t0, $t1
	sw $t0, -3428($fp)
	lw $t1, -3428($fp)
	li $t2, 0
	bne $t1, $t2, label373
	j label372
label372:
	li $t0, 1
	sw $t0, -3420($fp)
label373:
	li $t0, 0
	lw $t1, -3420($fp)
	sub $t0, $t0, $t1
	sw $t0, -3432($fp)
	lw $t1, -3416($fp)
	lw $t2, -3432($fp)
	ble $t1, $t2, label369
	j label370
label369:
label374:
	li $t0, 0
	sw $t0, -3436($fp)
	lw $t0, -2580($fp)
	sw $t0, -3440($fp)
	lw $t1, -3440($fp)
	li $t2, 0
	bne $t1, $t2, label378
	j label377
label377:
	li $t0, 1
	sw $t0, -3436($fp)
label378:
	lw $t0, -3436($fp)
	sw $t0, -468($fp)
	lw $t0, -468($fp)
	sw $t0, -3444($fp)
	lw $t0, -3444($fp)
	sw $t0, -132($fp)
	lw $t0, -132($fp)
	sw $t0, -3448($fp)
	lw $t1, -3448($fp)
	li $t2, 0
	bne $t1, $t2, label375
	j label376
label375:
label379:
	li $t0, 0
	sw $t0, -3452($fp)
	li $t0, 0
	sw $t0, -3456($fp)
	lw $t0, -720($fp)
	sw $t0, -3460($fp)
	li $t0, 11834
	sw $t0, -3464($fp)
	lw $t0, -3460($fp)
	lw $t1, -3464($fp)
	add $t0, $t0, $t1
	sw $t0, -3468($fp)
	li $t0, 7113
	sw $t0, -3472($fp)
	lw $t1, -3468($fp)
	lw $t2, -3472($fp)
	blt $t1, $t2, label385
	j label386
label385:
	li $t0, 1
	sw $t0, -3456($fp)
label386:
	li $t0, 13595
	sw $t0, -3476($fp)
	lw $t0, -1164($fp)
	sw $t0, -3480($fp)
	lw $t0, -3476($fp)
	lw $t1, -3480($fp)
	add $t0, $t0, $t1
	sw $t0, -3484($fp)
	lw $t1, -3456($fp)
	lw $t2, -3484($fp)
	bne $t1, $t2, label383
	j label384
label383:
	li $t0, 1
	sw $t0, -3452($fp)
label384:
	li $t0, 0
	sw $t0, -3488($fp)
	li $t0, 22369
	sw $t0, -3492($fp)
	lw $t1, -3492($fp)
	li $t2, 0
	bne $t1, $t2, label388
	j label387
label387:
	li $t0, 1
	sw $t0, -3488($fp)
label388:
	lw $t1, -3452($fp)
	lw $t2, -3488($fp)
	bne $t1, $t2, label382
	j label381
label382:
	li $t0, 34981
	sw $t0, -3496($fp)
	li $t0, 45440
	sw $t0, -3500($fp)
	lw $t1, -3496($fp)
	lw $t2, -3500($fp)
	bge $t1, $t2, label380
	j label381
label380:
	addi $t0, $fp, -108
	sw $t0, -3504($fp)
	addi $t0, $fp, -100
	sw $t0, -3508($fp)
	lw $t0, -2616($fp)
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
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -3528($fp)
	li $t0, 4
	lw $t1, -3528($fp)
	mul $t0, $t0, $t1
	sw $t0, -3532($fp)
	lw $t0, -3532($fp)
	lw $t1, -3504($fp)
	add $t0, $t0, $t1
	sw $t0, -3536($fp)
	lw $t0, -3536($fp)
	lw $t1, 0($t0)
	sw $t1, -3540($fp)
	j label379
label381:
	j label374
label376:
	j label371
label370:
	li $t0, 59792
	sw $t0, -3544($fp)
	lw $t0, -3544($fp)
	sw $t0, -3548($fp)
	lw $t0, -3548($fp)
	sw $t0, -3552($fp)
	li $t0, 0
	sw $t0, -3556($fp)
	lw $t0, -3548($fp)
	sw $t0, -3560($fp)
	lw $t0, -696($fp)
	sw $t0, -3564($fp)
	lw $t0, -3564($fp)
	sw $t0, -1032($fp)
	lw $t0, -1032($fp)
	sw $t0, -3568($fp)
	li $t0, 0
	sw $t0, -3572($fp)
	lw $t0, -132($fp)
	sw $t0, -3576($fp)
	li $t0, 0
	lw $t1, -3576($fp)
	sub $t0, $t0, $t1
	sw $t0, -3580($fp)
	lw $t1, -3580($fp)
	li $t2, 0
	bne $t1, $t2, label393
	j label392
label393:
	li $t0, 26955
	sw $t0, -3584($fp)
	lw $t1, -3584($fp)
	li $t2, 0
	bne $t1, $t2, label391
	j label392
label391:
	li $t0, 1
	sw $t0, -3572($fp)
label392:
	addi $sp, $sp, -4
	lw $t0, -3568($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3572($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -3588($fp)
	addi $sp, $sp, 12
	addi $sp, $sp, -4
	lw $t0, -3560($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -3588($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -3592($fp)
	addi $sp, $sp, 12
	li $t0, 0
	sw $t0, -3596($fp)
	addi $t0, $fp, -32
	sw $t0, -3600($fp)
	lw $t0, -360($fp)
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
	lw $t1, -3616($fp)
	li $t2, 0
	bne $t1, $t2, label395
	j label394
label394:
	li $t0, 1
	sw $t0, -3596($fp)
label395:
	li $t0, 64157
	sw $t0, -3620($fp)
	li $t0, 0
	lw $t1, -3620($fp)
	sub $t0, $t0, $t1
	sw $t0, -3624($fp)
	lw $t0, -3596($fp)
	lw $t1, -3624($fp)
	add $t0, $t0, $t1
	sw $t0, -3628($fp)
	lw $t1, -3592($fp)
	lw $t2, -3628($fp)
	bgt $t1, $t2, label389
	j label390
label389:
	li $t0, 1
	sw $t0, -3556($fp)
label390:
label371:
	lw $t0, -132($fp)
	sw $t0, -3632($fp)
	lw $t0, -3632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -3636($fp)
	lw $t0, -3636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
	sw $t0, -3640($fp)
	li $t0, 0
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
	lw $t0, -180($fp)
	sw $t0, -3660($fp)
	lw $t0, -3660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -3664($fp)
	lw $t0, -3664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -3668($fp)
	lw $t0, -3668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -3672($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -3692($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -3712($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -3732($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -3752($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -3772($fp)
	li $t0, 5
	sw $t0, -3776($fp)
	li $t0, 4
	lw $t1, -3776($fp)
	mul $t0, $t0, $t1
	sw $t0, -3780($fp)
	lw $t0, -3780($fp)
	lw $t1, -3772($fp)
	add $t0, $t0, $t1
	sw $t0, -3784($fp)
	lw $t0, -3784($fp)
	lw $t1, 0($t0)
	sw $t1, -3788($fp)
	lw $t0, -3788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -360($fp)
	sw $t0, -3792($fp)
	lw $t0, -3792($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -3796($fp)
	lw $t0, -3796($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -3800($fp)
	lw $t0, -3800($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3804($fp)
	li $t0, 0
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
	addi $t0, $fp, -44
	sw $t0, -3824($fp)
	li $t0, 1
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
	lw $t0, -3840($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -3844($fp)
	li $t0, 2
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
	lw $t0, -3860($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -3864($fp)
	lw $t0, -3864($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -3868($fp)
	lw $t0, -3868($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -3872($fp)
	li $t0, 0
	sw $t0, -3876($fp)
	li $t0, 4
	lw $t1, -3876($fp)
	mul $t0, $t0, $t1
	sw $t0, -3880($fp)
	lw $t0, -3880($fp)
	lw $t1, -3872($fp)
	add $t0, $t0, $t1
	sw $t0, -3884($fp)
	lw $t0, -3884($fp)
	lw $t1, 0($t0)
	sw $t1, -3888($fp)
	lw $t0, -3888($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -3892($fp)
	li $t0, 1
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
	addi $t0, $fp, -76
	sw $t0, -3912($fp)
	li $t0, 2
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
	addi $t0, $fp, -76
	sw $t0, -3932($fp)
	li $t0, 3
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
	addi $t0, $fp, -76
	sw $t0, -3952($fp)
	li $t0, 4
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
	addi $t0, $fp, -76
	sw $t0, -3972($fp)
	li $t0, 5
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
	addi $t0, $fp, -76
	sw $t0, -3992($fp)
	li $t0, 6
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
	addi $t0, $fp, -76
	sw $t0, -4012($fp)
	li $t0, 7
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
	lw $t0, -684($fp)
	sw $t0, -4032($fp)
	lw $t0, -4032($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -696($fp)
	sw $t0, -4036($fp)
	lw $t0, -4036($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -4040($fp)
	lw $t0, -4040($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -720($fp)
	sw $t0, -4044($fp)
	lw $t0, -4044($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -732($fp)
	sw $t0, -4048($fp)
	lw $t0, -4048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -744($fp)
	sw $t0, -4052($fp)
	lw $t0, -4052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -756($fp)
	sw $t0, -4056($fp)
	lw $t0, -4056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -768($fp)
	sw $t0, -4060($fp)
	lw $t0, -4060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -780($fp)
	sw $t0, -4064($fp)
	lw $t0, -4064($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -792($fp)
	sw $t0, -4068($fp)
	lw $t0, -4068($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -4072($fp)
	li $t0, 0
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
	addi $t0, $fp, -100
	sw $t0, -4092($fp)
	li $t0, 1
	sw $t0, -4096($fp)
	li $t0, 4
	lw $t1, -4096($fp)
	mul $t0, $t0, $t1
	sw $t0, -4100($fp)
	lw $t0, -4100($fp)
	lw $t1, -4092($fp)
	add $t0, $t0, $t1
	sw $t0, -4104($fp)
	lw $t0, -4104($fp)
	lw $t1, 0($t0)
	sw $t1, -4108($fp)
	lw $t0, -4108($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -4112($fp)
	li $t0, 2
	sw $t0, -4116($fp)
	li $t0, 4
	lw $t1, -4116($fp)
	mul $t0, $t0, $t1
	sw $t0, -4120($fp)
	lw $t0, -4120($fp)
	lw $t1, -4112($fp)
	add $t0, $t0, $t1
	sw $t0, -4124($fp)
	lw $t0, -4124($fp)
	lw $t1, 0($t0)
	sw $t1, -4128($fp)
	lw $t0, -4128($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -4132($fp)
	li $t0, 3
	sw $t0, -4136($fp)
	li $t0, 4
	lw $t1, -4136($fp)
	mul $t0, $t0, $t1
	sw $t0, -4140($fp)
	lw $t0, -4140($fp)
	lw $t1, -4132($fp)
	add $t0, $t0, $t1
	sw $t0, -4144($fp)
	lw $t0, -4144($fp)
	lw $t1, 0($t0)
	sw $t1, -4148($fp)
	lw $t0, -4148($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -4152($fp)
	li $t0, 4
	sw $t0, -4156($fp)
	li $t0, 4
	lw $t1, -4156($fp)
	mul $t0, $t0, $t1
	sw $t0, -4160($fp)
	lw $t0, -4160($fp)
	lw $t1, -4152($fp)
	add $t0, $t0, $t1
	sw $t0, -4164($fp)
	lw $t0, -4164($fp)
	lw $t1, 0($t0)
	sw $t1, -4168($fp)
	lw $t0, -4168($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -4172($fp)
	li $t0, 5
	sw $t0, -4176($fp)
	li $t0, 4
	lw $t1, -4176($fp)
	mul $t0, $t0, $t1
	sw $t0, -4180($fp)
	lw $t0, -4180($fp)
	lw $t1, -4172($fp)
	add $t0, $t0, $t1
	sw $t0, -4184($fp)
	lw $t0, -4184($fp)
	lw $t1, 0($t0)
	sw $t1, -4188($fp)
	lw $t0, -4188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -948($fp)
	sw $t0, -4192($fp)
	lw $t0, -4192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -960($fp)
	sw $t0, -4196($fp)
	lw $t0, -4196($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -972($fp)
	sw $t0, -4200($fp)
	lw $t0, -4200($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -4204($fp)
	li $t0, 0
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
	addi $t0, $fp, -108
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
	lw $t0, -4240($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1032($fp)
	sw $t0, -4244($fp)
	lw $t0, -4244($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1044($fp)
	sw $t0, -4248($fp)
	lw $t0, -4248($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1056($fp)
	sw $t0, -4252($fp)
	lw $t0, -4252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1068($fp)
	sw $t0, -4256($fp)
	lw $t0, -4256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1080($fp)
	sw $t0, -4260($fp)
	lw $t0, -4260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1092($fp)
	sw $t0, -4264($fp)
	lw $t0, -4264($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1104($fp)
	sw $t0, -4268($fp)
	lw $t0, -4268($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1116($fp)
	sw $t0, -4272($fp)
	lw $t0, -4272($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1128($fp)
	sw $t0, -4276($fp)
	lw $t0, -4276($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1140($fp)
	sw $t0, -4280($fp)
	lw $t0, -4280($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1152($fp)
	sw $t0, -4284($fp)
	lw $t0, -4284($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1164($fp)
	sw $t0, -4288($fp)
	lw $t0, -4288($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1176($fp)
	sw $t0, -4292($fp)
	lw $t0, -4292($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1188($fp)
	sw $t0, -4296($fp)
	lw $t0, -4296($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1200($fp)
	sw $t0, -4300($fp)
	lw $t0, -4300($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1212($fp)
	sw $t0, -4304($fp)
	lw $t0, -4304($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1224($fp)
	sw $t0, -4308($fp)
	lw $t0, -4308($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -4312($fp)
	li $t0, 0
	sw $t0, -4316($fp)
	li $t0, 4
	lw $t1, -4316($fp)
	mul $t0, $t0, $t1
	sw $t0, -4320($fp)
	lw $t0, -4320($fp)
	lw $t1, -4312($fp)
	add $t0, $t0, $t1
	sw $t0, -4324($fp)
	lw $t0, -4324($fp)
	lw $t1, 0($t0)
	sw $t1, -4328($fp)
	lw $t0, -4328($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1260($fp)
	sw $t0, -4332($fp)
	lw $t0, -4332($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -4336($fp)
	li $t0, 0
	sw $t0, -4340($fp)
	li $t0, 4
	lw $t1, -4340($fp)
	mul $t0, $t0, $t1
	sw $t0, -4344($fp)
	lw $t0, -4344($fp)
	lw $t1, -4336($fp)
	add $t0, $t0, $t1
	sw $t0, -4348($fp)
	lw $t0, -4348($fp)
	lw $t1, 0($t0)
	sw $t1, -4352($fp)
	lw $t0, -4352($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -4356($fp)
	li $t0, 1
	sw $t0, -4360($fp)
	li $t0, 4
	lw $t1, -4360($fp)
	mul $t0, $t0, $t1
	sw $t0, -4364($fp)
	lw $t0, -4364($fp)
	lw $t1, -4356($fp)
	add $t0, $t0, $t1
	sw $t0, -4368($fp)
	lw $t0, -4368($fp)
	lw $t1, 0($t0)
	sw $t1, -4372($fp)
	lw $t0, -4372($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -4376($fp)
	li $t0, 2
	sw $t0, -4380($fp)
	li $t0, 4
	lw $t1, -4380($fp)
	mul $t0, $t0, $t1
	sw $t0, -4384($fp)
	lw $t0, -4384($fp)
	lw $t1, -4376($fp)
	add $t0, $t0, $t1
	sw $t0, -4388($fp)
	lw $t0, -4388($fp)
	lw $t1, 0($t0)
	sw $t1, -4392($fp)
	lw $t0, -4392($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1344($fp)
	sw $t0, -4396($fp)
	lw $t0, -4396($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -4400($fp)
	addi $t0, $fp, -108
	sw $t0, -4404($fp)
	addi $t0, $fp, -112
	sw $t0, -4408($fp)
	li $t0, 0
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
	li $t0, 4
	lw $t1, -4424($fp)
	mul $t0, $t0, $t1
	sw $t0, -4428($fp)
	lw $t0, -4428($fp)
	lw $t1, -4404($fp)
	add $t0, $t0, $t1
	sw $t0, -4432($fp)
	lw $t0, -4432($fp)
	lw $t1, 0($t0)
	sw $t1, -4436($fp)
	li $t0, 4
	lw $t1, -4436($fp)
	mul $t0, $t0, $t1
	sw $t0, -4440($fp)
	lw $t0, -4440($fp)
	lw $t1, -4400($fp)
	add $t0, $t0, $t1
	sw $t0, -4444($fp)
	lw $t0, -4444($fp)
	lw $t1, 0($t0)
	sw $t1, -4448($fp)
	lw $ra, -4($fp)
	lw $v0, -4448($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	li $t0, 0
	sw $t0, -4452($fp)
	li $t0, 53125
	sw $t0, -4456($fp)
	lw $t0, -1080($fp)
	sw $t0, -4460($fp)
	li $t0, 3990
	sw $t0, -4464($fp)
	li $t0, 0
	lw $t1, -4464($fp)
	sub $t0, $t0, $t1
	sw $t0, -4468($fp)
	lw $t0, -4460($fp)
	lw $t1, -4468($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4472($fp)
	lw $t1, -4456($fp)
	lw $t2, -4472($fp)
	bne $t1, $t2, label396
	j label397
label396:
	li $t0, 1
	sw $t0, -4452($fp)
label397:
	li $t0, 35514
	sw $t0, -4476($fp)
	lw $t0, -4476($fp)
	sw $t0, -4480($fp)
	lw $t0, -4480($fp)
	sw $t0, -4484($fp)
	li $t0, 33588
	sw $t0, -4488($fp)
	lw $t0, -4488($fp)
	sw $t0, -4492($fp)
	lw $t0, -4492($fp)
	sw $t0, -4496($fp)
	li $t0, 0
	sw $t0, -4500($fp)
	li $t0, 60147
	sw $t0, -4504($fp)
	lw $t1, -4504($fp)
	li $t2, 0
	bne $t1, $t2, label398
	j label400
label400:
	li $t0, 33332
	sw $t0, -4508($fp)
	lw $t1, -4508($fp)
	li $t2, 0
	bne $t1, $t2, label398
	j label399
label398:
	li $t0, 1
	sw $t0, -4500($fp)
label399:
	lw $ra, -4($fp)
	lw $v0, -4500($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
label401:
	li $t0, 0
	sw $t0, -4512($fp)
	addi $t0, $fp, -112
	sw $t0, -4516($fp)
	lw $t0, -180($fp)
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
	lw $t0, -780($fp)
	sw $t0, -4536($fp)
	lw $t1, -4532($fp)
	lw $t2, -4536($fp)
	bgt $t1, $t2, label404
	j label405
label404:
	li $t0, 1
	sw $t0, -4512($fp)
label405:
	lw $t0, -684($fp)
	sw $t0, -4540($fp)
	li $t0, 0
	sw $t0, -4544($fp)
	addi $t0, $fp, -100
	sw $t0, -4548($fp)
	li $t0, 1
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
	lw $t0, -360($fp)
	sw $t0, -4568($fp)
	lw $t1, -4564($fp)
	lw $t2, -4568($fp)
	bgt $t1, $t2, label406
	j label407
label406:
	li $t0, 1
	sw $t0, -4544($fp)
label407:
	lw $t0, -732($fp)
	sw $t0, -4572($fp)
	lw $t0, -4572($fp)
	sw $t0, -744($fp)
	lw $t0, -744($fp)
	sw $t0, -4576($fp)
	addi $sp, $sp, -4
	lw $t0, -4512($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4540($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4544($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4576($fp)
	sw $t0, 0($sp)
	jal f9
	sw $v0, -4580($fp)
	addi $sp, $sp, 20
	lw $t1, -4580($fp)
	li $t2, 0
	bne $t1, $t2, label402
	j label403
label402:
	lw $t0, -480($fp)
	sw $t0, -4584($fp)
	li $t0, 0
	sw $t0, -4588($fp)
	lw $t0, -1344($fp)
	sw $t0, -4592($fp)
	li $t0, 0
	lw $t1, -4592($fp)
	sub $t0, $t0, $t1
	sw $t0, -4596($fp)
	lw $t1, -4596($fp)
	li $t2, 0
	bne $t1, $t2, label409
	j label408
label408:
	li $t0, 1
	sw $t0, -4588($fp)
label409:
	lw $t0, -4584($fp)
	lw $t1, -4588($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4600($fp)
	li $t0, 0
	lw $t1, -4600($fp)
	sub $t0, $t0, $t1
	sw $t0, -4604($fp)
	j label401
label403:
label410:
	addi $t0, $fp, -44
	sw $t0, -4608($fp)
	li $t0, 0
	sw $t0, -4612($fp)
	lw $t0, -4480($fp)
	sw $t0, -4616($fp)
	li $t0, 37838
	sw $t0, -4620($fp)
	lw $t1, -4616($fp)
	lw $t2, -4620($fp)
	beq $t1, $t2, label416
	j label415
label416:
	lw $t0, -1344($fp)
	sw $t0, -4624($fp)
	lw $t1, -4624($fp)
	li $t2, 0
	bne $t1, $t2, label414
	j label415
label414:
	li $t0, 1
	sw $t0, -4612($fp)
label415:
	li $t0, 4
	lw $t1, -4612($fp)
	mul $t0, $t0, $t1
	sw $t0, -4628($fp)
	lw $t0, -4628($fp)
	lw $t1, -4608($fp)
	add $t0, $t0, $t1
	sw $t0, -4632($fp)
	lw $t0, -4632($fp)
	lw $t1, 0($t0)
	sw $t1, -4636($fp)
	lw $t1, -4636($fp)
	li $t2, 0
	bne $t1, $t2, label411
	j label413
label413:
	li $t0, 29644
	sw $t0, -4640($fp)
	lw $t1, -4640($fp)
	li $t2, 0
	bne $t1, $t2, label417
	j label412
label417:
	li $t0, 40091
	sw $t0, -4644($fp)
	li $t0, 10584
	sw $t0, -4648($fp)
	lw $t1, -4644($fp)
	lw $t2, -4648($fp)
	bne $t1, $t2, label411
	j label412
label411:
label418:
	addi $t0, $fp, -108
	sw $t0, -4652($fp)
	addi $t0, $fp, -108
	sw $t0, -4656($fp)
	li $t0, 0
	sw $t0, -4660($fp)
	li $t0, 4
	lw $t1, -4660($fp)
	mul $t0, $t0, $t1
	sw $t0, -4664($fp)
	lw $t0, -4664($fp)
	lw $t1, -4656($fp)
	add $t0, $t0, $t1
	sw $t0, -4668($fp)
	lw $t0, -4668($fp)
	lw $t1, 0($t0)
	sw $t1, -4672($fp)
	li $t0, 4
	lw $t1, -4672($fp)
	mul $t0, $t0, $t1
	sw $t0, -4676($fp)
	lw $t0, -4676($fp)
	lw $t1, -4652($fp)
	add $t0, $t0, $t1
	sw $t0, -4680($fp)
	lw $t0, -4680($fp)
	lw $t1, 0($t0)
	sw $t1, -4684($fp)
	li $t0, 24192
	sw $t0, -4688($fp)
	lw $t0, -1344($fp)
	sw $t0, -4692($fp)
	lw $t0, -4688($fp)
	lw $t1, -4692($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4696($fp)
	lw $t0, -4684($fp)
	lw $t1, -4696($fp)
	add $t0, $t0, $t1
	sw $t0, -4700($fp)
	li $t0, 35414
	sw $t0, -4704($fp)
	lw $t0, -4700($fp)
	lw $t1, -4704($fp)
	add $t0, $t0, $t1
	sw $t0, -4708($fp)
	lw $t1, -4708($fp)
	li $t2, 0
	bne $t1, $t2, label419
	j label420
label419:
	li $t0, 0
	sw $t0, -4712($fp)
	li $t0, 34838
	sw $t0, -4716($fp)
	li $t0, 0
	sw $t0, -4720($fp)
	li $t0, 0
	sw $t0, -4724($fp)
	lw $t0, -1092($fp)
	sw $t0, -4728($fp)
	lw $t0, -684($fp)
	sw $t0, -4732($fp)
	lw $t1, -4728($fp)
	lw $t2, -4732($fp)
	bge $t1, $t2, label425
	j label426
label425:
	li $t0, 1
	sw $t0, -4724($fp)
label426:
	li $t0, 0
	sw $t0, -4736($fp)
	lw $t0, -1056($fp)
	sw $t0, -4740($fp)
	lw $t1, -4740($fp)
	li $t2, 0
	bne $t1, $t2, label428
	j label427
label427:
	li $t0, 1
	sw $t0, -4736($fp)
label428:
	lw $t1, -4724($fp)
	lw $t2, -4736($fp)
	blt $t1, $t2, label423
	j label424
label423:
	li $t0, 1
	sw $t0, -4720($fp)
label424:
	lw $t1, -4716($fp)
	lw $t2, -4720($fp)
	beq $t1, $t2, label421
	j label422
label421:
	li $t0, 1
	sw $t0, -4712($fp)
label422:
	j label418
label420:
	j label410
label412:
	lw $t0, -468($fp)
	sw $t0, -4744($fp)
	li $t0, 0
	sw $t0, -4748($fp)
	jal f10
	sw $v0, -4752($fp)
	addi $sp, $sp, 4
	lw $t1, -4752($fp)
	li $t2, 0
	bne $t1, $t2, label433
	j label432
label432:
	li $t0, 1
	sw $t0, -4748($fp)
label433:
	lw $t0, -4744($fp)
	lw $t1, -4748($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4756($fp)
	lw $t1, -4756($fp)
	li $t2, 0
	bne $t1, $t2, label429
	j label430
label429:
	li $t0, 4517
	sw $t0, -4760($fp)
	li $t0, 44924
	sw $t0, -4764($fp)
	li $t0, 0
	sw $t0, -4768($fp)
	li $t0, 34083
	sw $t0, -4772($fp)
	li $t0, 0
	lw $t1, -4772($fp)
	sub $t0, $t0, $t1
	sw $t0, -4776($fp)
	lw $t1, -4776($fp)
	li $t2, 0
	bne $t1, $t2, label436
	j label435
label436:
	lw $t0, -780($fp)
	sw $t0, -4780($fp)
	lw $t1, -4780($fp)
	li $t2, 0
	bne $t1, $t2, label434
	j label435
label434:
	li $t0, 1
	sw $t0, -4768($fp)
label435:
	addi $sp, $sp, -4
	lw $t0, -4764($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -4768($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -4784($fp)
	addi $sp, $sp, 12
	lw $t0, -4760($fp)
	lw $t1, -4784($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -4788($fp)
	lw $t0, -4788($fp)
	sw $t0, -756($fp)
	lw $t0, -756($fp)
	sw $t0, -4792($fp)
label430:
	li $t0, 16351
	sw $t0, -4796($fp)
	lw $t0, -132($fp)
	sw $t0, -4800($fp)
	lw $t0, -4796($fp)
	lw $t1, -4800($fp)
	add $t0, $t0, $t1
	sw $t0, -4804($fp)
	li $t0, 41197
	sw $t0, -4808($fp)
	lw $t0, -4804($fp)
	lw $t1, -4808($fp)
	add $t0, $t0, $t1
	sw $t0, -4812($fp)
	lw $t0, -4492($fp)
	sw $t0, -4816($fp)
	lw $t0, -4812($fp)
	lw $t1, -4816($fp)
	add $t0, $t0, $t1
	sw $t0, -4820($fp)
	lw $t0, -4820($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -4824($fp)
	lw $t1, -4824($fp)
	li $t2, 0
	bne $t1, $t2, label437
	j label438
label437:
	li $t0, 0
	sw $t0, -4828($fp)
	lw $t0, -1224($fp)
	sw $t0, -4832($fp)
	lw $t1, -4832($fp)
	li $t2, 0
	bne $t1, $t2, label441
	j label440
label440:
	li $t0, 1
	sw $t0, -4828($fp)
label441:
	j label439
label438:
	li $t0, 0
	sw $t0, -4836($fp)
	li $t0, 58519
	sw $t0, -4840($fp)
	lw $t1, -4840($fp)
	li $t2, 0
	bne $t1, $t2, label442
	j label444
label444:
	li $t0, 0
	sw $t0, -4844($fp)
	lw $t0, -360($fp)
	sw $t0, -4848($fp)
	li $t0, 38721
	sw $t0, -4852($fp)
	lw $t0, -4848($fp)
	lw $t1, -4852($fp)
	sub $t0, $t0, $t1
	sw $t0, -4856($fp)
	lw $t0, -1212($fp)
	sw $t0, -4860($fp)
	lw $t1, -4856($fp)
	lw $t2, -4860($fp)
	beq $t1, $t2, label445
	j label446
label445:
	li $t0, 1
	sw $t0, -4844($fp)
label446:
	li $t0, 10642
	sw $t0, -4864($fp)
	li $t0, 38423
	sw $t0, -4868($fp)
	lw $t0, -4864($fp)
	lw $t1, -4868($fp)
	sub $t0, $t0, $t1
	sw $t0, -4872($fp)
	lw $t1, -4844($fp)
	lw $t2, -4872($fp)
	beq $t1, $t2, label442
	j label443
label442:
	li $t0, 1
	sw $t0, -4836($fp)
label443:
label439:
label447:
	lw $t0, -204($fp)
	sw $t0, -4876($fp)
	li $t0, 0
	lw $t1, -4876($fp)
	sub $t0, $t0, $t1
	sw $t0, -4880($fp)
	jal f10
	sw $v0, -4884($fp)
	addi $sp, $sp, 4
	lw $t1, -4880($fp)
	lw $t2, -4884($fp)
	bne $t1, $t2, label448
	j label449
label448:
label450:
	li $t0, 0
	sw $t0, -4888($fp)
	li $t0, 32977
	sw $t0, -4892($fp)
	lw $t0, -744($fp)
	sw $t0, -4896($fp)
	lw $t0, -4892($fp)
	lw $t1, -4896($fp)
	mul $t0, $t0, $t1
	sw $t0, -4900($fp)
	lw $t0, -1260($fp)
	sw $t0, -4904($fp)
	li $t0, 0
	lw $t1, -4904($fp)
	sub $t0, $t0, $t1
	sw $t0, -4908($fp)
	lw $t1, -4900($fp)
	lw $t2, -4908($fp)
	beq $t1, $t2, label453
	j label454
label453:
	li $t0, 1
	sw $t0, -4888($fp)
label454:
	lw $t0, -4888($fp)
	sw $t0, -360($fp)
	lw $t0, -360($fp)
	sw $t0, -4912($fp)
	lw $t1, -4912($fp)
	li $t2, 0
	bne $t1, $t2, label451
	j label452
label451:
	li $t0, 0
	sw $t0, -4916($fp)
	addi $t0, $fp, -44
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
	li $t0, 0
	sw $t0, -4940($fp)
	lw $t0, -468($fp)
	sw $t0, -4944($fp)
	lw $t1, -4944($fp)
	li $t2, 0
	bne $t1, $t2, label459
	j label458
label458:
	li $t0, 1
	sw $t0, -4940($fp)
label459:
	lw $t0, -4936($fp)
	lw $t1, -4940($fp)
	mul $t0, $t0, $t1
	sw $t0, -4948($fp)
	lw $t0, -780($fp)
	sw $t0, -4952($fp)
	lw $t0, -4948($fp)
	lw $t1, -4952($fp)
	mul $t0, $t0, $t1
	sw $t0, -4956($fp)
	lw $t1, -4956($fp)
	li $t2, 0
	bne $t1, $t2, label455
	j label457
label457:
	li $t0, 31493
	sw $t0, -4960($fp)
	lw $t0, -1164($fp)
	sw $t0, -4964($fp)
	lw $t0, -4960($fp)
	lw $t1, -4964($fp)
	add $t0, $t0, $t1
	sw $t0, -4968($fp)
	lw $t0, -180($fp)
	sw $t0, -4972($fp)
	lw $t1, -4968($fp)
	lw $t2, -4972($fp)
	bne $t1, $t2, label455
	j label456
label455:
	li $t0, 1
	sw $t0, -4916($fp)
label456:
	lw $ra, -4($fp)
	lw $v0, -4916($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	j label450
label452:
	j label447
label449:
	lw $t0, -4480($fp)
	sw $t0, -4976($fp)
	lw $t0, -4976($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -4492($fp)
	sw $t0, -4980($fp)
	lw $t0, -4980($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 57910
	sw $t0, -4984($fp)
	lw $t0, -684($fp)
	sw $t0, -4988($fp)
	lw $t0, -1080($fp)
	sw $t0, -4992($fp)
	lw $t0, -4988($fp)
	lw $t1, -4992($fp)
	sub $t0, $t0, $t1
	sw $t0, -4996($fp)
	lw $t0, -696($fp)
	sw $t0, -5000($fp)
	lw $t0, -4996($fp)
	lw $t1, -5000($fp)
	add $t0, $t0, $t1
	sw $t0, -5004($fp)
	li $t0, 24634
	sw $t0, -5008($fp)
	lw $t0, -5008($fp)
	sw $t0, -780($fp)
	lw $t0, -780($fp)
	sw $t0, -5012($fp)
	addi $sp, $sp, -4
	lw $t0, -5004($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -5012($fp)
	sw $t0, 0($sp)
	jal f6
	sw $v0, -5016($fp)
	addi $sp, $sp, 12
	lw $t0, -4984($fp)
	lw $t1, -5016($fp)
	sub $t0, $t0, $t1
	sw $t0, -5020($fp)
	lw $ra, -4($fp)
	lw $v0, -5020($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
	lw $t0, -132($fp)
	sw $t0, -5024($fp)
	lw $t0, -5024($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -144($fp)
	sw $t0, -5028($fp)
	lw $t0, -5028($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -8
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
	lw $t0, -5048($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -180($fp)
	sw $t0, -5052($fp)
	lw $t0, -5052($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -192($fp)
	sw $t0, -5056($fp)
	lw $t0, -5056($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -204($fp)
	sw $t0, -5060($fp)
	lw $t0, -5060($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -32
	sw $t0, -5064($fp)
	li $t0, 0
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
	addi $t0, $fp, -32
	sw $t0, -5084($fp)
	li $t0, 1
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
	addi $t0, $fp, -32
	sw $t0, -5104($fp)
	li $t0, 2
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
	addi $t0, $fp, -32
	sw $t0, -5124($fp)
	li $t0, 3
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
	addi $t0, $fp, -32
	sw $t0, -5144($fp)
	li $t0, 4
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
	addi $t0, $fp, -32
	sw $t0, -5164($fp)
	li $t0, 5
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
	lw $t0, -360($fp)
	sw $t0, -5184($fp)
	lw $t0, -5184($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -372($fp)
	sw $t0, -5188($fp)
	lw $t0, -5188($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -384($fp)
	sw $t0, -5192($fp)
	lw $t0, -5192($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -5196($fp)
	li $t0, 0
	sw $t0, -5200($fp)
	li $t0, 4
	lw $t1, -5200($fp)
	mul $t0, $t0, $t1
	sw $t0, -5204($fp)
	lw $t0, -5204($fp)
	lw $t1, -5196($fp)
	add $t0, $t0, $t1
	sw $t0, -5208($fp)
	lw $t0, -5208($fp)
	lw $t1, 0($t0)
	sw $t1, -5212($fp)
	lw $t0, -5212($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -5216($fp)
	li $t0, 1
	sw $t0, -5220($fp)
	li $t0, 4
	lw $t1, -5220($fp)
	mul $t0, $t0, $t1
	sw $t0, -5224($fp)
	lw $t0, -5224($fp)
	lw $t1, -5216($fp)
	add $t0, $t0, $t1
	sw $t0, -5228($fp)
	lw $t0, -5228($fp)
	lw $t1, 0($t0)
	sw $t1, -5232($fp)
	lw $t0, -5232($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -44
	sw $t0, -5236($fp)
	li $t0, 2
	sw $t0, -5240($fp)
	li $t0, 4
	lw $t1, -5240($fp)
	mul $t0, $t0, $t1
	sw $t0, -5244($fp)
	lw $t0, -5244($fp)
	lw $t1, -5236($fp)
	add $t0, $t0, $t1
	sw $t0, -5248($fp)
	lw $t0, -5248($fp)
	lw $t1, 0($t0)
	sw $t1, -5252($fp)
	lw $t0, -5252($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -468($fp)
	sw $t0, -5256($fp)
	lw $t0, -5256($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -480($fp)
	sw $t0, -5260($fp)
	lw $t0, -5260($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
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
	addi $t0, $fp, -76
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
	addi $t0, $fp, -76
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
	addi $t0, $fp, -76
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
	addi $t0, $fp, -76
	sw $t0, -5344($fp)
	li $t0, 4
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
	lw $t0, -5360($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -5364($fp)
	li $t0, 5
	sw $t0, -5368($fp)
	li $t0, 4
	lw $t1, -5368($fp)
	mul $t0, $t0, $t1
	sw $t0, -5372($fp)
	lw $t0, -5372($fp)
	lw $t1, -5364($fp)
	add $t0, $t0, $t1
	sw $t0, -5376($fp)
	lw $t0, -5376($fp)
	lw $t1, 0($t0)
	sw $t1, -5380($fp)
	lw $t0, -5380($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -5384($fp)
	li $t0, 6
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
	lw $t0, -5400($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -76
	sw $t0, -5404($fp)
	li $t0, 7
	sw $t0, -5408($fp)
	li $t0, 4
	lw $t1, -5408($fp)
	mul $t0, $t0, $t1
	sw $t0, -5412($fp)
	lw $t0, -5412($fp)
	lw $t1, -5404($fp)
	add $t0, $t0, $t1
	sw $t0, -5416($fp)
	lw $t0, -5416($fp)
	lw $t1, 0($t0)
	sw $t1, -5420($fp)
	lw $t0, -5420($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -684($fp)
	sw $t0, -5424($fp)
	lw $t0, -5424($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -696($fp)
	sw $t0, -5428($fp)
	lw $t0, -5428($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -708($fp)
	sw $t0, -5432($fp)
	lw $t0, -5432($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -720($fp)
	sw $t0, -5436($fp)
	lw $t0, -5436($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -732($fp)
	sw $t0, -5440($fp)
	lw $t0, -5440($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -744($fp)
	sw $t0, -5444($fp)
	lw $t0, -5444($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -756($fp)
	sw $t0, -5448($fp)
	lw $t0, -5448($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -768($fp)
	sw $t0, -5452($fp)
	lw $t0, -5452($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -780($fp)
	sw $t0, -5456($fp)
	lw $t0, -5456($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -792($fp)
	sw $t0, -5460($fp)
	lw $t0, -5460($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5464($fp)
	li $t0, 0
	sw $t0, -5468($fp)
	li $t0, 4
	lw $t1, -5468($fp)
	mul $t0, $t0, $t1
	sw $t0, -5472($fp)
	lw $t0, -5472($fp)
	lw $t1, -5464($fp)
	add $t0, $t0, $t1
	sw $t0, -5476($fp)
	lw $t0, -5476($fp)
	lw $t1, 0($t0)
	sw $t1, -5480($fp)
	lw $t0, -5480($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5484($fp)
	li $t0, 1
	sw $t0, -5488($fp)
	li $t0, 4
	lw $t1, -5488($fp)
	mul $t0, $t0, $t1
	sw $t0, -5492($fp)
	lw $t0, -5492($fp)
	lw $t1, -5484($fp)
	add $t0, $t0, $t1
	sw $t0, -5496($fp)
	lw $t0, -5496($fp)
	lw $t1, 0($t0)
	sw $t1, -5500($fp)
	lw $t0, -5500($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5504($fp)
	li $t0, 2
	sw $t0, -5508($fp)
	li $t0, 4
	lw $t1, -5508($fp)
	mul $t0, $t0, $t1
	sw $t0, -5512($fp)
	lw $t0, -5512($fp)
	lw $t1, -5504($fp)
	add $t0, $t0, $t1
	sw $t0, -5516($fp)
	lw $t0, -5516($fp)
	lw $t1, 0($t0)
	sw $t1, -5520($fp)
	lw $t0, -5520($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5524($fp)
	li $t0, 3
	sw $t0, -5528($fp)
	li $t0, 4
	lw $t1, -5528($fp)
	mul $t0, $t0, $t1
	sw $t0, -5532($fp)
	lw $t0, -5532($fp)
	lw $t1, -5524($fp)
	add $t0, $t0, $t1
	sw $t0, -5536($fp)
	lw $t0, -5536($fp)
	lw $t1, 0($t0)
	sw $t1, -5540($fp)
	lw $t0, -5540($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5544($fp)
	li $t0, 4
	sw $t0, -5548($fp)
	li $t0, 4
	lw $t1, -5548($fp)
	mul $t0, $t0, $t1
	sw $t0, -5552($fp)
	lw $t0, -5552($fp)
	lw $t1, -5544($fp)
	add $t0, $t0, $t1
	sw $t0, -5556($fp)
	lw $t0, -5556($fp)
	lw $t1, 0($t0)
	sw $t1, -5560($fp)
	lw $t0, -5560($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -100
	sw $t0, -5564($fp)
	li $t0, 5
	sw $t0, -5568($fp)
	li $t0, 4
	lw $t1, -5568($fp)
	mul $t0, $t0, $t1
	sw $t0, -5572($fp)
	lw $t0, -5572($fp)
	lw $t1, -5564($fp)
	add $t0, $t0, $t1
	sw $t0, -5576($fp)
	lw $t0, -5576($fp)
	lw $t1, 0($t0)
	sw $t1, -5580($fp)
	lw $t0, -5580($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -948($fp)
	sw $t0, -5584($fp)
	lw $t0, -5584($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -960($fp)
	sw $t0, -5588($fp)
	lw $t0, -5588($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -972($fp)
	sw $t0, -5592($fp)
	lw $t0, -5592($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -5596($fp)
	li $t0, 0
	sw $t0, -5600($fp)
	li $t0, 4
	lw $t1, -5600($fp)
	mul $t0, $t0, $t1
	sw $t0, -5604($fp)
	lw $t0, -5604($fp)
	lw $t1, -5596($fp)
	add $t0, $t0, $t1
	sw $t0, -5608($fp)
	lw $t0, -5608($fp)
	lw $t1, 0($t0)
	sw $t1, -5612($fp)
	lw $t0, -5612($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -108
	sw $t0, -5616($fp)
	li $t0, 1
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
	lw $t0, -5632($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1032($fp)
	sw $t0, -5636($fp)
	lw $t0, -5636($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1044($fp)
	sw $t0, -5640($fp)
	lw $t0, -5640($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1056($fp)
	sw $t0, -5644($fp)
	lw $t0, -5644($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1068($fp)
	sw $t0, -5648($fp)
	lw $t0, -5648($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1080($fp)
	sw $t0, -5652($fp)
	lw $t0, -5652($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1092($fp)
	sw $t0, -5656($fp)
	lw $t0, -5656($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1104($fp)
	sw $t0, -5660($fp)
	lw $t0, -5660($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1116($fp)
	sw $t0, -5664($fp)
	lw $t0, -5664($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1128($fp)
	sw $t0, -5668($fp)
	lw $t0, -5668($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1140($fp)
	sw $t0, -5672($fp)
	lw $t0, -5672($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1152($fp)
	sw $t0, -5676($fp)
	lw $t0, -5676($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1164($fp)
	sw $t0, -5680($fp)
	lw $t0, -5680($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1176($fp)
	sw $t0, -5684($fp)
	lw $t0, -5684($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1188($fp)
	sw $t0, -5688($fp)
	lw $t0, -5688($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1200($fp)
	sw $t0, -5692($fp)
	lw $t0, -5692($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1212($fp)
	sw $t0, -5696($fp)
	lw $t0, -5696($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1224($fp)
	sw $t0, -5700($fp)
	lw $t0, -5700($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -112
	sw $t0, -5704($fp)
	li $t0, 0
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
	lw $t0, -1260($fp)
	sw $t0, -5724($fp)
	lw $t0, -5724($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -5728($fp)
	li $t0, 0
	sw $t0, -5732($fp)
	li $t0, 4
	lw $t1, -5732($fp)
	mul $t0, $t0, $t1
	sw $t0, -5736($fp)
	lw $t0, -5736($fp)
	lw $t1, -5728($fp)
	add $t0, $t0, $t1
	sw $t0, -5740($fp)
	lw $t0, -5740($fp)
	lw $t1, 0($t0)
	sw $t1, -5744($fp)
	lw $t0, -5744($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -5748($fp)
	li $t0, 1
	sw $t0, -5752($fp)
	li $t0, 4
	lw $t1, -5752($fp)
	mul $t0, $t0, $t1
	sw $t0, -5756($fp)
	lw $t0, -5756($fp)
	lw $t1, -5748($fp)
	add $t0, $t0, $t1
	sw $t0, -5760($fp)
	lw $t0, -5760($fp)
	lw $t1, 0($t0)
	sw $t1, -5764($fp)
	lw $t0, -5764($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	addi $t0, $fp, -124
	sw $t0, -5768($fp)
	li $t0, 2
	sw $t0, -5772($fp)
	li $t0, 4
	lw $t1, -5772($fp)
	mul $t0, $t0, $t1
	sw $t0, -5776($fp)
	lw $t0, -5776($fp)
	lw $t1, -5768($fp)
	add $t0, $t0, $t1
	sw $t0, -5780($fp)
	lw $t0, -5780($fp)
	lw $t1, 0($t0)
	sw $t1, -5784($fp)
	lw $t0, -5784($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -1344($fp)
	sw $t0, -5788($fp)
	lw $t0, -5788($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 0
	sw $t0, -5792($fp)
	li $t0, 35483
	sw $t0, -5796($fp)
	lw $t1, -5796($fp)
	li $t2, 0
	bne $t1, $t2, label462
	j label461
label462:
	addi $t0, $fp, -44
	sw $t0, -5800($fp)
	lw $t0, -468($fp)
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
	lw $t0, -132($fp)
	sw $t0, -5820($fp)
	lw $t0, -5816($fp)
	lw $t1, -5820($fp)
	sub $t0, $t0, $t1
	sw $t0, -5824($fp)
	addi $t0, $fp, -112
	sw $t0, -5828($fp)
	lw $t0, -480($fp)
	sw $t0, -5832($fp)
	li $t0, 4
	lw $t1, -5832($fp)
	mul $t0, $t0, $t1
	sw $t0, -5836($fp)
	lw $t0, -5836($fp)
	lw $t1, -5828($fp)
	add $t0, $t0, $t1
	sw $t0, -5840($fp)
	lw $t0, -5840($fp)
	lw $t1, 0($t0)
	sw $t1, -5844($fp)
	lw $t1, -5824($fp)
	lw $t2, -5844($fp)
	bne $t1, $t2, label460
	j label461
label460:
	li $t0, 1
	sw $t0, -5792($fp)
label461:
	lw $ra, -4($fp)
	lw $v0, -5792($fp)
	move $sp, $fp
	lw $fp, 0($sp)
	jr $ra
f11:
	addi $sp, $sp, -4
	sw $fp, 0($sp)
	move $fp, $sp
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $sp, $sp, -68
	li $t0, 27888
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -16($fp)
	li $t0, 58223
	sw $t0, -20($fp)
	lw $t0, -20($fp)
	sw $t0, -24($fp)
	lw $t0, -24($fp)
	sw $t0, -28($fp)
	li $t0, 0
	sw $t0, -32($fp)
	lw $t0, -24($fp)
	sw $t0, -36($fp)
	lw $t0, -24($fp)
	sw $t0, -40($fp)
	lw $t0, -36($fp)
	lw $t1, -40($fp)
	div $t0, $t1
	mflo $t2
	sw $t2, -44($fp)
	li $t0, 61220
	sw $t0, -48($fp)
	lw $t1, -44($fp)
	lw $t2, -48($fp)
	beq $t1, $t2, label463
	j label464
label463:
	li $t0, 1
	sw $t0, -32($fp)
label464:
	li $t0, 30094
	sw $t0, -52($fp)
	lw $t0, -52($fp)
	sw $t0, -12($fp)
	lw $t0, -12($fp)
	sw $t0, -56($fp)
	addi $sp, $sp, -4
	lw $t0, -32($fp)
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	lw $t0, -56($fp)
	sw $t0, 0($sp)
	jal f8
	sw $v0, -60($fp)
	addi $sp, $sp, 12
	lw $t0, -12($fp)
	sw $t0, -64($fp)
	lw $t0, -64($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	lw $t0, -24($fp)
	sw $t0, -68($fp)
	lw $t0, -68($fp)
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	jal write
	addi $sp, $sp, 8
	li $t0, 10087
	sw $t0, -72($fp)
	lw $ra, -4($fp)
	lw $v0, -72($fp)
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
