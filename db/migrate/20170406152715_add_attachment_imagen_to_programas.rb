class AddAttachmentImagenToProgramas < ActiveRecord::Migration
  def self.up
    change_table :programas do |t|
      t.attachment :imagen
    end
  end

  def self.down
    remove_attachment :programas, :imagen
  end
end
