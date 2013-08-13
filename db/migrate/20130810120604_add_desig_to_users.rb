class AddDesigToUsers < ActiveRecord::Migration
  def change
    add_column :users, :desig, :string
  end
end
