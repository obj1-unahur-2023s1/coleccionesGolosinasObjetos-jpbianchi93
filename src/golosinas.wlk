object bombon {
	var peso = 15
	const mordisco = {peso = (peso * 0.8) - 1}
	
	method precio() = 5
	method sabor() = "frutilla"
	method peso() = peso
	method contieneGluten() = false
	method recibirMordisco() {mordisco.apply()}
}

object alfajor {
	var peso = 300
	const mordisco = {peso *= 0.8}
	
	method precio() = 12
	method sabor() = "chocolate"
	method peso() = peso
	method contieneGluten() = true	
	method recibirMordisco() {mordisco.apply()}
}

object caramelo{
	var peso = 5
	const mordisco = {peso = 0.max(peso - 1)}
	
	method precio() = 1
	method sabor() = "frutilla"
	method peso() = peso
	method contieneGluten() = false	
	method recibirMordisco() {mordisco.apply()}
}

object chupetin{
	var peso = 7
	const mordisco = {peso = 2.max(peso*0.9)}
	
	method precio() = 2
	method sabor() = "naranja"
	method peso() = peso
	method contieneGluten() = false
	method recibirMordisco() {mordisco.apply()}
}

object oblea{
	var peso = 250
	const mordisco = {if(peso>70){peso*=0.5}else{peso -= peso*0.25}}

	method precio() = 5
	method sabor() = "vainilla"
	method peso() = peso
	method contieneGluten() = true
	method recibirMordisco() {mordisco.apply()}
}
object chocolatin{
	var precio
	var peso
	const mordisco = {peso = 0.max(peso - 2)}

	method pesoInicial(gramos){
		peso = gramos
		precio = gramos*0.5
	}
	method precio() = precio
	method sabor() = "chocolate"
	method peso() = peso
	method contieneGluten() = true
	method recibirMordisco() {mordisco.apply()}
}

object golosinaBaniada{
 	var golosinaBase
	var peso
	var nMordisco = 0

	method baniar(unaGolosina){
		golosinaBase = unaGolosina
		peso = golosinaBase.peso() + 4
		nMordisco = 0
	}
	method peso() = peso
	method precio() = golosinaBase.precio()
	method sabor() = golosinaBase.sabor()
	method contieneGluten() = golosinaBase.contieneGluten()
	method recibirMordisco(){
		nMordisco ++
		golosinaBase.recibirMordisco()
		peso = 0.max(golosinaBase.peso() - if(nMordisco == 1){2}else{0})
	}
 }

object pastillaTuttiFrutti{
	var nMordisco = 0
	var property contieneGluten = true
	var sabor = "frutilla"
	const gusto = ["frutilla", "chocolate", "naranja"]
	const mordisco = {sabor = gusto.get(nMordisco%3)}
	
	method peso()= 5
	method sabor() = sabor
	method precio() = if(contieneGluten){10}else{7}
	method recibirMordisco(){
		nMordisco ++
		mordisco.apply()
	}
}