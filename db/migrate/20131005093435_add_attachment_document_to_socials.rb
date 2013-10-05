class AddAttachmentDocumentToSocials < ActiveRecord::Migration
  def self.up
    change_table :socials do |t|
      t.attachment :document
    end
  end

  def self.down
    drop_attached_file :socials, :document
  end
end
