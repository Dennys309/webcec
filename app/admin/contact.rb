ActiveAdmin.register Contact do
  permit_params :name, :email, :message

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :message
    column :created_at
    actions
  end

  filter :name
  filter :email
  filter :message
  filter :created_at

  form do |f|
    f.inputs "Detalles de los comentarios" do
      f.input :name
      f.input :email
      f.input :message
    end
    f.actions
  end

end
