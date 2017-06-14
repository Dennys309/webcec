class AddProgramaToCalendario < ActiveRecord::Migration
  def change
    add_reference :calendarios, :programa, index: true, foreign_key: true
  end
end
