class AddAttachmentP1P2ToSubads < ActiveRecord::Migration
  def self.up
    change_table :subads do |t|
      t.attachment :p1
      t.attachment :p2
    end
  end

  def self.down
    drop_attached_file :subads, :p1
    drop_attached_file :subads, :p2
  end
end
