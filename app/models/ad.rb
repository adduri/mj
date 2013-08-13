class Ad < ActiveRecord::Base
  attr_accessible :about, :area, :city, :col, :company_name, :contact, :contact_email,
   :contact_person, :country, :datax, :datay, :house_no, :pin_code, :row, :state, :street_name, :title,
    :photo1, :photo2, :photo3, :otherad1, :otherad2, :otherad3, :otherad4, :otherad5




has_attached_file :photo1, :styles => { :small => "150x150>" },
                  :url  => "/assets/ads/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/ads/:id/:style/:basename.:extension"

validates_attachment_presence :photo1
validates_attachment_size :photo1, :less_than => 5.megabytes
validates_attachment_content_type :photo1, :content_type => ['image/jpeg', 'image/png']



has_attached_file :photo2, :styles => { :small => "150x150>" },
                  :url  => "/assets/ads/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/ads/:id/:style/:basename.:extension"

validates_attachment_presence :photo2
validates_attachment_size :photo2, :less_than => 5.megabytes
validates_attachment_content_type :photo2, :content_type => ['image/jpeg', 'image/png']




has_attached_file :photo3, :styles => { :small => "150x150>" },
                  :url  => "/assets/ads/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/ads/:id/:style/:basename.:extension"

validates_attachment_presence :photo3
validates_attachment_size :photo3, :less_than => 5.megabytes
validates_attachment_content_type :photo3, :content_type => ['image/jpeg', 'image/png']

end
