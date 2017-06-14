class PagesController < ApplicationController
  require 'date'

	include CurrentLista
  #include ActionView::Helpers::DateHelpers

  respond_to :js
	
	before_action :set_lista, only: [:index, :shop, :cliente, :about, :calendario, :programa, :infocurso, :infoprograma, :sedes, :identidad, :certificaciones, :seminario, :capacitaciones]

  def index
  	@cursos = Curso.search(params[:search])
    @programas = Programa.search(params[:search])
    @seminarios = Seminario.search(params[:search])
    @calendario = Calendario.search(params[:search])

    @d=Date.today.month

    @calendarios = Calendario.all
    @fecha_actual = Time.now.strftime("%y-%m-%d")
    @dia_semana= Time.now.strftime("%A")

end

def sedes
end

def identidad
end

def certificaciones
end
  
  #def calendario_params
  #  params.require(:calendario).permit(:dianumero, :dialetra, :mes, :anio, :hora, :descripccion)
  #end
  def shop
    @cursos = Curso.all.page params[:page]
    @programas = Programa.all.page params[:page]
  end 

  def programa
    @programas = Programa.all.page params[:page]
  end 

  def infocurso
    @infoc = Curso.find(params[:curso_id])
    @d=Date.today.month

    @calendarios = Calendario.all
    @fecha_actual = Time.now.strftime("%y-%m-%d")
    @dia_semana= Time.now.strftime("%A")
  end

  def cliente
  end

  def infoprograma
    @infop = Programa.find(params[:programa_id])

     @d=Date.today.month

    @calendarios = Calendario.all
    @fecha_actual = Time.now.strftime("%y-%m-%d")
    @dia_semana= Time.now.strftime("%A")
  end

  def about
  end

  def seminario
      @seminarios = Seminario.all.page params[:page]
      
      @d=Date.today.month

      @calendarios = Calendario.all
      @fecha_actual = Time.now.strftime("%y-%m-%d")
      @dia_semana= Time.now.strftime("%A")
  end

  def calendario
     @calendarios = Calendario.all
     @fecha_actual = Time.now
     @mes_actual = Time.now.strftime("%B ")
     @dia_semana= Time.now.strftime("%A")
     
    if ((@fecha_actual.strftime("%m") == '01') or (@fecha_actual.strftime("%m") == '03') or (@fecha_actual.strftime("%m") == '05') or (@fecha_actual.strftime("%m") == '07') or (@fecha_actual.strftime("%m") == '08') or (@fecha_actual.strftime("%m") == '10') or (@fecha_actual.strftime("%m") == '12'))                              
      @fecha_actual_end = @fecha_actual.strftime("%y-%m") + '-31'
    else
      @fecha_actual_end = @fecha_actual.strftime("%y-%m") + '-30'  
    end
  end
  def capacitaciones

    
  end


end