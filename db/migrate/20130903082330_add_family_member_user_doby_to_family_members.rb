class AddFamilyMemberUserDobyToFamilyMembers < ActiveRecord::Migration
  def change
    add_column :family_members, :family_member_user_doby, :string
  end
end
