class AddSeminarioToCalendario < ActiveRecord::Migration
  def change
    add_reference :calendarios, :seminario, index: true, foreign_key: true
  end
end
