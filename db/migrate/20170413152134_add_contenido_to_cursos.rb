class AddContenidoToCursos < ActiveRecord::Migration
  def change
    add_column :cursos, :contenido, :text
  end
end
