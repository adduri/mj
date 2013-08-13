class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :title
      t.text :about
      t.text :contact
      t.string :house_no
      t.string :street_name
      t.string :area
      t.string :city
      t.string :state
      t.string :country
      t.string :pin_code
      t.string :company_name
      t.string :contact_person
      t.string :contact_email
      t.integer :datax
      t.integer :datay
      t.integer :row
      t.integer :col

      t.timestamps
    end
  end
end
