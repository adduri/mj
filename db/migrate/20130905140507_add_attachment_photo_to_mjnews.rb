class AddAttachmentPhotoToMjnews < ActiveRecord::Migration
  def self.up
    change_table :mjnews do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :mjnews, :photo
  end
end
