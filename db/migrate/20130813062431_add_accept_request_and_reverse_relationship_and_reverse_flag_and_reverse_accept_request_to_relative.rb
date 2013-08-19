class AddAcceptRequestAndReverseRelationshipAndReverseFlagAndReverseAcceptRequestToRelative < ActiveRecord::Migration
  def change
    add_column :relatives, :accept_request, :boolean, :default => false
    add_column :relatives, :reverse_relationship, :string
    add_column :relatives, :reverse_flag, :boolean, :default => false
    add_column :relatives, :reverse_accept_request, :boolean, :default => false
  end
end
