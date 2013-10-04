class GenderNotification < ActiveRecord::Base
  attr_accessible :present_relation, :reverse_relation, :user_gender
end
