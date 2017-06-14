class AddModuloProgramaToCurso < ActiveRecord::Migration
  def change
    add_column :cursos, :n_modulo_programa, :integer
  end
end
