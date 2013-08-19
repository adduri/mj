class AddFamilyMemberUserDobToFamilyMember < ActiveRecord::Migration
  def change
    add_column :family_members, :family_member_user_dob, :date
  end
end
