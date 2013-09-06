class CreateMjnews < ActiveRecord::Migration
  def change
    create_table :mjnews do |t|
      t.string :title
      t.text :content
      t.string :location

      t.timestamps
    end
  end
end
