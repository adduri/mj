class Social < ActiveRecord::Base
  attr_accessible :category, :city, :country, :heading, :imagelink, :start, :state, :text, :till,
   :verify, :photo, :document, :other

has_many :subads

  has_attached_file :photo, :styles => { :small => "150x150>" },
                  :url  => "/assets/products/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

validates_attachment_presence :photo
validates_attachment_size :photo, :less_than => 5.megabytes
validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

has_attached_file :document,:url => "/data/01_fasta/:basename.:extension",
    :path => ":rails_root/public/data/01_fasta/:basename.:extension"
end
