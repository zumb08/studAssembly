.data 
    x:  .asciiz "Digite o valor de X: " 
    y:  .asciiz "Digite o valor de Y: "
    z:  .asciiz "Digite o valor de Z: "


.text 
    li $v0, 4 # Receve  o número inteiro 4
    la $a0, x # a0 = X
    syscall # Executa   
    li $v0, 5 # Recebe o numero inteiro 5
    syscall
    move $t1,$v0 # t1 = v0
    li $v0, 4  # IMprimi uma string 
    la $a0, y # a0 = y
    syscall
    li $v0, 5 # Recebe número inteiro 
    syscall
    move $t2,$v0 # t2 = v0
    div $t3, $t1, $t2  # t3 = t2 / t1 
    li $v0, 4 # Imprimi uma string 
    la $a0, z  # a0 = z
    syscall  # Execute 
    li $v0, 1  # Imprime uma string 
    la $a0,($t3)  # a0 = t3
    syscall
    li $v0, 10 # Prepara para ser finalizado 
    syscall
    
     

