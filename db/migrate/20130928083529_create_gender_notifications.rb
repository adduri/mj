class CreateGenderNotifications < ActiveRecord::Migration
  def change
    create_table :gender_notifications do |t|
      t.string :user_gender
      t.string :present_relation
      t.string :reverse_relation

      t.timestamps
    end
  end
end
