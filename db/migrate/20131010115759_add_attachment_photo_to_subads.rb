class AddAttachmentPhotoToSubads < ActiveRecord::Migration
  def self.up
    change_table :subads do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :subads, :photo
  end
end
