class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :mjid
      t.string :phonenumber
      t.string :emailid
      t.text :message

      t.timestamps
    end
  end
end
