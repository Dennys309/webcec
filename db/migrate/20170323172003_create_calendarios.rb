class CreateCalendarios < ActiveRecord::Migration
  def change
    create_table :calendarios do |t|
      t.string :dianumero
      t.string :dialetra
      t.string :mes
      t.string :anio
      t.string :hora
      t.text :descripccion
      t.references :curso, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
