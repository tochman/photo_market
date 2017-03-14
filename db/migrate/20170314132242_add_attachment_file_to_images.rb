class AddAttachmentFileToImages < ActiveRecord::Migration[5.0]
  def self.up
    #add_attachment :images, :file

    change_table :images do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :images, :file
  end
end
