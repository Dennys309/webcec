class RemoveTipoFromCalendario < ActiveRecord::Migration
  def change
    remove_column :calendarios, :tipo, :string
  end
end
