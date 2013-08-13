class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.string :relationship
      t.integer :priority, :null => false, :default => 0
      t.integer :serial, :default => 0
      t.timestamps
    end
  end
end
