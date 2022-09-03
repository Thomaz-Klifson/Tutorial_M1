extends Node2D

var teste = false
var valor = 0
var numero = 0
#A variável não pode ter um caractere especial ou acento.
var nome = ""
var lista = []
#Como lista é uma variável, deve-se colocar a palavra var no início.
var i = 0
#A variável i não estava declarada
#onready var inventario = [[get_node("Inventario/Fruit1"),get_node("Inventario/Label1")],[get_node("Inventario/Fruit2"),get_node("Inventario/Label2")],[get_node("Inventario/Fruit3"),get_node("Inventario/Label3")]]
#O inventário não será usado!

func _on_Button_pressed():
	
		#Coletando dados inseridos pelo usuário
	numero = int($LineEdit2.text)
	#Deve ter um cifrão antes do LineEdit para conseguir manipular o elemento na cena
	#A variável numero não pode ter acento!
	nome = str($LineEdit.text)
	#A variável nome não estava declarada
	#A variável que será atribuída deve estar do lado esquerdo
	#Garanti que ele vai receber uma string



func _on_Button2_pressed():
	lista.append(numero)
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero+=1
		#A variável numero não pode ter letra maiúscula
		#O incremento deve ser apenas de 1
		lista.append(numero)
		#A variável numero não pode ter letra maiúscula. Estava maiúscula
		$Label.text = String(lista)
		#A identação do label estava errada
		#Troquei numero por lista e coloquei em formato string


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	for j in lista:
		
		#Decidi trocar while por for porque o final do laço é conhecido
		#cont=0
		#Cont não será usado, portanto não é necessário
		#Declarei o i=0 lá em cima e deletei aqui
		if(j%2==0):
			nome= str($LineEdit.text)
			print(nome)
			
		elif (j%2!=0):
			nome+="baldo"
			print(nome)
			$Label2.text= nome
		
