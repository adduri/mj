class CreateMappings < ActiveRecord::Migration
  def change
    create_table :mappings do |t|
      t.string :first_person
      t.string :second_person
      t.string :relationship

      t.timestamps
    end
  end
end
