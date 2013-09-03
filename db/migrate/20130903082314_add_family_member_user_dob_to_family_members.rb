class AddFamilyMemberUserDobToFamilyMembers < ActiveRecord::Migration
  def change
    add_column :family_members, :family_member_user_dob, :string
  end
end
