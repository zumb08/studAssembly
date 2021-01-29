.data 
msgpositivo: .asciiz "Este número é positivo\n"
msgnegativo: .asciiz "Este número é negativo\n"
msg1: .asciiz "Defini um número: "
fim: .asciiz "Fim do program\n"

.text 
li $v0, 4 # imprimi uma string 
la $a0, msg1  # a0 = msg1
syscall
li $v0, 5 # Recebe um número positivo 
