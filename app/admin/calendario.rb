ActiveAdmin.register Calendario do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  
  belongs_to :curso, optional: true
  belongs_to :programa, optional: true
  belongs_to :seminario, optional: true

  permit_params :curso_id, :programa_id, :seminario_id, :fecha_inicio
 

 index do
    selectable_column
    id_column
    column :fecha_inicio
    column :curso_id
    column :programa_id
    column :seminario_id
    
    actions
  end

   filter :fecha_inicio
   filter :curso_id
   filter :programa_id
   filter :seminario_id
   



 form do |f|
  f.inputs "Calendario Y Agenda de Eventos" do

    f.input :fecha_inicio
    f.input :curso, :collection => Curso.all.map{ |cursos| [cursos.titulo, cursos.id]}
    f.input :programa, :collection => Programa.all.map{ |programas| [programas.titulo, programas.id]}
    f.input :seminario, :collection => Seminario.all.map{ |seminarios| [seminarios.titulo, seminarios.id]}
   
  #  f.has_many :curso do |curso|
        #f.input :curso, :collection => Curso.all.map{ |cursos| [cursos.titulo, cursos.id]}
     
#end
    #f.input :curso, :collection => Curso.all.map{ |cursos| [cursos.titulo, calendario.curso] }

 end
f.actions

end

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
