import golosinas.*

object mariano {
	const bolsaDeGolosinas = []
	//Indicación
	method comprar(unaGolosina) {bolsaDeGolosinas.add(unaGolosina)}
	method desechar(unaGolosina) {bolsaDeGolosinas.remove(unaGolosina)}
	method probarGolosinas() {bolsaDeGolosinas.forEach({e => e.recibirMordisco()})}
	//Consulta
	method bolsaDeGolosinas() = bolsaDeGolosinas
	method cantidadDeGolosinas() = bolsaDeGolosinas.size()	
	method tieneLaGolosina(unaGolosina) = bolsaDeGolosinas.contains(unaGolosina)
	method hayGolosinaSinTACC() = bolsaDeGolosinas.any({e => not(e.contieneGluten())})
	method preciosCuidados() = bolsaDeGolosinas.all({e => e.precio() <= 10})
	method golosinaDeSabor(unSabor) = bolsaDeGolosinas.find({e => e.sabor() == unSabor})
	method golosinasDeSabor(unSabor) = bolsaDeGolosinas.filter({e => e.sabor() == unSabor})
	method sabores() = bolsaDeGolosinas.map({e => e.sabor()}).asSet()
	method golosinaMasCara() = bolsaDeGolosinas.max({e => e.precio()})
	method pesoGolosinas() = bolsaDeGolosinas.map({e => e.peso()}).sum()
	method golosinasFaltantes(golosinaDeseada) = golosinaDeseada.difference(bolsaDeGolosinas.asSet())
	method gustosFaltantes(gustosDeseados) = gustosDeseados.difference(bolsaDeGolosinas.map({e => e.sabor()}).asSet())
}