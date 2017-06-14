class AddProgramaToCurso < ActiveRecord::Migration
  def change
    add_reference :cursos, :programa, index: true, foreign_key: true
  end
end
