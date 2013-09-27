class AddCcodeToUser < ActiveRecord::Migration
  def change
    add_column :users, :ccode, :integer
    add_column :users, :other, :string
  end
end
