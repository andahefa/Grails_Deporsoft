package com.model

class CampeonatosController {

    def index() { 

    	def listaCampeonatos = Campeonatos.list()
    	render view:"index", model:[listaCampeonatos:listaCampeonatos]
    }
    def save(){
    	int cantidadEquipos = params.cantidadMinimaEquipos.toInteger()
    	/*Date fechaInicioInscripcion = Date.parse('yyyy-MM-dd', params.fechaInicioInscripcion)
    	Date fechaInicioInscripcion = new Date().parse('yyyy-MM-dd', params.fechaInicioInscripcion)
    	Date fechaFinInscripcion = Date.parse('yyyy-MM-dd', params.fechaFinInscripcion)
    	Date fechaInicioCampeonato = Date.parse('yyyy-MM-dd', params.fechaInicioCampeonato)
    	Date fechaFinCampeonato = Date.parse('yyyy-MM-dd', params.fechaFinCampeonato)
    	println fechaInicioInscripcion*/
    	def campeonatos = new Campeonatos(nombre:params.name,cantMinEquipos:cantidadEquipos,fechaIniInscrip:params.fechaInicioInscripcion, fechaFinInscrip:params.fechaFinInscripcion, fechaIniCamp:params.fechaInicioCampeonato, fechaFinCamp:params.fechaFinCampeonato)
    	campeonatos.save(flush:true, failOnError:true)
    	render '1'
	}
	def update(){
		def actualBook = Campeonatos.get(params.id)
		
	}
}
