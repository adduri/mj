class Service < ActiveRecord::Base
  attr_accessible :emailid, :message, :mjid, :phonenumber


    belongs_to :user

end
