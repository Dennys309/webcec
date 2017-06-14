ActiveAdmin.register Programa do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :titulo, :imagen, :descripcion, :precio, :duracion, :inicio, :contenido

index do
    selectable_column
    id_column
    column :titulo
    column :imagen
    column :descripcion
    column :precio
    column :duracion
    column :inicio
    column :contenido
      
    actions
  end

    filter :titulo
    filter :imagen
    filter :descripcion
    filter :precio
    filter :duracion
    filter :inicio
    filter :contenido
    

     form do |f|
    f.inputs "P R O G R A M A" do
    f.input :titulo
    f.input :imagen
    f.input :descripcion
    f.input :precio
    f.input :duracion
    f.input :inicio
    f.input :contenido
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
