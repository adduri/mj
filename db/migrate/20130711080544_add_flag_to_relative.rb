class AddFlagToRelative < ActiveRecord::Migration
  def change
    add_column :relatives, :flag, :boolean, :default => false
  end
end
