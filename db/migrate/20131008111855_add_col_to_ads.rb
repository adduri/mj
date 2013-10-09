class AddColToAds < ActiveRecord::Migration
  def change
    add_column :ads, :otherad1mob, :integer
    add_column :ads, :otherad1loc, :string
    add_column :ads, :otherad2mob, :integer
    add_column :ads, :otherad2loc, :string
    add_column :ads, :otherad3mob, :integer
    add_column :ads, :otherad3loc, :string
    add_column :ads, :otherad4mob, :integer
    add_column :ads, :otherad4loc, :string
    add_column :ads, :otherad5mob, :integer
    add_column :ads, :otherad5loc, :string
  end
end
