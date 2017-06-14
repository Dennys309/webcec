class AddAttachmentImageToSeminarios < ActiveRecord::Migration
  def self.up
    change_table :seminarios do |t|
      t.attachment :imagen
    end
  end

  def self.down
    remove_attachment :seminarios, :imagen
  end
end
