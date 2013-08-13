class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.text :content
      t.string :youtube

      t.timestamps
    end
  end
end
