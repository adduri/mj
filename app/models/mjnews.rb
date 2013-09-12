class Mjnews < ActiveRecord::Base
  attr_accessible :p1, :p2, :p3 , :title, :photo, :location

    has_attached_file :photo, :styles => { :small => "250x250>" },
                  :url  => "/assets/products/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

    validates_attachment_presence :photo
    validates_attachment_size :photo, :less_than => 5.megabytes
    validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

end


