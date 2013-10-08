class AddAttachmentPhotoToSocials < ActiveRecord::Migration
  def self.up
    change_table :socials do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :socials, :photo
  end
end
