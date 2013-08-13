class AddDetailsToAd < ActiveRecord::Migration
  def change
    add_column :ads, :otherad1, :string
    add_column :ads, :otherad2, :string
    add_column :ads, :otherad3, :string
    add_column :ads, :otherad4, :string
    add_column :ads, :otherad5, :string
  end
end
