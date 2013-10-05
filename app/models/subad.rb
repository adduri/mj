class Subad < ActiveRecord::Base
	attr_accessible :name, :p1, :p2
	belongs_to :social
	belongs_to :user
	
	validates_attachment_presence :p1
	validates_attachment_size :p1, :less_than => 5.megabytes
	validates_attachment_content_type :p1, :content_type => ['image/jpeg', 'image/png']
	


	has_attached_file :p1, :styles => { :small => "150x150>" },
	                  :url  => "/assets/products/:id/:style/:basename.:extension",
	                  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

	validates_attachment_presence :p2
	validates_attachment_size :p2, :less_than => 5.megabytes
	validates_attachment_content_type :p2, :content_type => ['image/jpeg', 'image/png']
	


	has_attached_file :p2, :styles => { :small => "150x150>" },
	                  :url  => "/assets/products/:id/:style/:basename.:extension",
	                  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
end
