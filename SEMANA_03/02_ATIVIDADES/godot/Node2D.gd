extends Node2D
var a = 1

var lista = ["Brasil","Espanha","México"]
var listavazia = [] 

func _ready():
	lista.append("País de Gales")
	
	print(lista)
	

func _on_Button_pressed():
	$Label.text = String(lista)
	


func _on_TextEdit_text_changed():
	$Label2.text = $TextEdit.text
	
func imprimirtextonatela(texto: String):
	$Label.text = texto
	return texto

func _on_Button2_pressed():
	imprimirtextonatela("Essa atividade foi difícil, tenha piedade!")



func _on_Button3_pressed():
	imprimirtextonatela2($TextEdit.text)
	pass

func imprimirtextonatela2(texto: String):
	$Label2.text = texto
	return texto
