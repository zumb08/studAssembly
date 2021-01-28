# Autor: zumb08 
.data	# Direitiva de dados 
	pergunta: .asciiz "Digite um número: "
	eh_zero: .asciiz " Foi detectado o zer!!\n"
	nao_eh_zero: .asciiz "Este número não é zero!!\n"

.text 
	#imprimir 
	li $v0, 4
	la $a0, pergunta 
	
	syscall 
	
	li $v0,5
	syscall
	move $t0, $v0
	beq $t0,0,seforzero 
	beq $t0,0,senaoforzero
	
	seforzero:
	# Imprimi 
	li $v0, 4
	la, $a0, eh_zero
	
	syscall 
	#Depois finalaiza o programa 
	li $v0,10
	syscall
	
	#Condição se não for zero 
	senaoforzero:
	# Imprimir 
	li $v0,4
	la $a0,nao_eh_zero 
	syscall
	# Finaliza 
	li $v0,10
	syscall
	
	
	
