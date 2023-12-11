extends CanvasLayer

var vida1 
# Configuramos las variables instanciadas para que tengan un valor desde que se comienza su escena
#a el de los sprites del canvaslayer de "corazones"
func _ready():
	vida1 = get_node("Corazon1")
func handleCorazon(vidas): #Nos va a servir para indicar que cuando perdamos una vida, el sprite 
#	que anteriormente igualamos en las variables anteriormente dejen de ser visibles cuando tenga 
#	cierta cantidad de vidas
	if vidas == 0:
		vida1.visible = false
