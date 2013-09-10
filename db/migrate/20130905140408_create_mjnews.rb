class CreateMjnews < ActiveRecord::Migration
  def change
    create_table :mjnews do |t|
      t.string :title
      t.text :p1
      t.text :p2
      t.text :p3
      t.string :location

      t.timestamps
    end
  end
end
