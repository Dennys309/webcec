class RemoveCursoFromCalendario < ActiveRecord::Migration
  def change
    remove_column :calendarios, :curso, :varchar
  end
end
