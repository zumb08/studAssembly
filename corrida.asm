.data 
kp: .asciiz "Digite o KM percorido: "
kf: .asciiz "Km finais"

.text
li $v0, 4 # Imprimir uma string 
la $a0, kp # a0 = kp

syscall  #Executa 
li $v0, 5 # Imprimi string 
syscall 
move $t0, $v0 # t0 = v0
li $t1, 15
sub		$t2, $t1, $t0		# $t2 = $t1 - $t0
li $v0, 4           # Imprimi uma string 
la $a0, kf         # a0 = kf
syscall 
li $v0, 1
la $a0, ($t2)
syscall 
li $v0, 10 
syscall
