ActiveAdmin.register Curso do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
   belongs_to :programa, optional: true
  
   permit_params :titulo, :image, :descripccion, :precio, :duracion, :inicio, :contenido, :programa_id

  index do
    selectable_column
    id_column
    column :titulo
    column :image
    column :descripccion
    column :precio
    column :duracion
    column :inicio
    column :contenido
    column :programa_id
       
    actions
  end

    filter :titulo
    filter :image
    filter :descripccion
    filter :precio
    filter :duracion
    filter :inicio
    filter :contenido
    filter :programa_id

  form do |f|
  f.inputs "C U R S O S" do

  	
    f.input :titulo
    f.input :image
    f.input :descripccion
    f.input :precio
    f.input :duracion
    f.input :inicio
    f.input :contenido
    
    

    f.input :programa, :collection => Programa.all.map{ |programas| [programas.titulo, programas.id]}
    
  #  f.has_many :curso do |curso|
        #f.input :curso, :collection => Curso.all.map{ |cursos| [cursos.titulo, cursos.id]}
     
#end
    #f.input :curso, :collection => Curso.all.map{ |cursos| [cursos.titulo, calendario.curso] }

 end
f.actions

end
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
