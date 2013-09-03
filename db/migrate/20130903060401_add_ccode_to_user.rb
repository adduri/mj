class AddCcodeToUser < ActiveRecord::Migration
  def change
    add_column :users, :ccode, :integer
  end
end
