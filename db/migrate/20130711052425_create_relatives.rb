class CreateRelatives < ActiveRecord::Migration
  def change
    create_table :relatives do |t|
      t.integer :present_id
      t.integer :existing_member_id
      t.integer :new_member_id
      t.string :relationship
      

      t.timestamps
    end
  end
end
