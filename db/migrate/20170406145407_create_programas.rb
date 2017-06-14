class CreateProgramas < ActiveRecord::Migration
  def change
    create_table :programas do |t|
      t.string :titulo
      t.text :descripcion
      t.string :duracion
      t.string :inicio
      t.string :precio
      t.string :imagen

      t.timestamps null: false
    end
  end
end
