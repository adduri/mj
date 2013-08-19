class Relative < ActiveRecord::Base
  attr_accessible :existing_member_id, :flag, :new_member_id, :present_id, :relationship, :accept_request, :reverse_relationship, :reverse_flag, :reverse_accept_request
end
