class AddCollumnConferenciaToCalendario < ActiveRecord::Migration
  def change
    add_column :calendarios, :conferencia, :string
  end
end
