class AddDobyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :doby, :integer
  end
end
