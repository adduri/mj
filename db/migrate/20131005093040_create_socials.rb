class CreateSocials < ActiveRecord::Migration
  def change
    create_table :socials do |t|
      t.string :category
      t.string :heading
      t.text :text
      t.date :till
      t.date :start
      t.string :imagelink
      t.string :country
      t.string :state
      t.string :city
      t.boolean :verify

      t.timestamps
    end
  end
end
