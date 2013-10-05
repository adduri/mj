class CreateSubads < ActiveRecord::Migration
  def change
    create_table :subads do |t|
      t.string :name

      t.timestamps
    end
  end
end
