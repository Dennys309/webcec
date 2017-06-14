ActiveAdmin.register Seminario do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :titulo, :descripcion, :duracion, :modalidad, :imagen
 
index do
    selectable_column
    id_column
    column :titulo
    column :descripcion
    column :duracion
    column :modalidad
    column :imagen
    
    actions
  end

   filter :titulo
   filter :descripcion
   filter :duracion
   filter :modalidad
   filter :imagen
  

#
form do |f|
  f.inputs "S E M I N A R I O " do

  	
    f.input :titulo
    f.input :descripcion
    f.input :duracion
    f.input :modalidad
    f.input :imagen
    
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
