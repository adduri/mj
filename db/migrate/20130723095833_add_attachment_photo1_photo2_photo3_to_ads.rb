class AddAttachmentPhoto1Photo2Photo3ToAds < ActiveRecord::Migration
  def self.up
    change_table :ads do |t|
      t.attachment :photo1
      t.attachment :photo2
      t.attachment :photo3
    end
  end

  def self.down
    drop_attached_file :ads, :photo1
    drop_attached_file :ads, :photo2
    drop_attached_file :ads, :photo3
  end
end
