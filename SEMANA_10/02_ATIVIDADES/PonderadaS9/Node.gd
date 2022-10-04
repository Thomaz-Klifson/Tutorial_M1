extends Node
var lista= [2,7,4,1,6,9,3,5,8,0]
#Lista com números desordenados de 0 a 9
func _ready():
	ordenar(lista)

func ordenar(elementos):
	# A função que ordena todos os elementos da lista
	print('Números não ordenados: ', elementos)
	for i in range(elementos.size()):
		for j in range(elementos.size()-1):
			if elementos[j] > elementos[j+1]:
				var temp=elementos[j]
#Aqui eu pensei na metáfora de dois copos cheios e eu precisando
#passar o líquido de um para o outro. Dessa forma, eu preciso de um 
#terceiro copo vazio para passar o líquido do 2° para o primeiro, 
#do 1° para o segundo e do terceiro para o primeiro.
#Meu terceiro copo é a variável temporária e os outros dois copos são 
#os números que preciso ordenar. Fiz isso para todos os elementos da 
#lista
				elementos[j]=elementos[j+1]
				elementos[j+1]=temp
	print('Números ordenados: ', elementos)
