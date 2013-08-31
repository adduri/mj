class User < ActiveRecord::Base
attr_accessible :email, :mj_id, :firstname, :gender, :desig, :lastname, :fathername,
:mobileno,:state,:landline , :user_id, :visited, :photo, :payment, :due,
:family_count, :station, :occupation, :address, :password, :password_confirmation, :dob,
:middlename, :city, :country, :zip 
attr_accessor :password, :password_confirmation
  #  before_save :encrypt_password
  belongs_to :user
  has_many :users
  has_many :family_members
  has_many :relations, :through => :family_members
  has_many :feedbacks
  #  validates_confirmation_of :password

  #paperclip
  has_attached_file :photo, :styles => {:small=> "50x50>", :medium => "150x150>"}

 #validates_confirmation_of :password
   #  validates_presence_of :password, :on => :create_password
  #  validates_presence_of :email
  #  validates_uniqueness_of :email

  def self.authenticate(mj_id, password)
    user = find_by_mj_id(mj_id)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
  
def self.search(search)
  if search
    # where('firstname LIKE ? OR mj_id LIKE ?', "%#{search}%" "%#{search}%" "%#{search}%")
    where('firstname LIKE ? OR mj_id LIKE ? OR lastname LIKE ? OR city LIKE ?' , 
        "%#{search}%", "%#{search}%" ,
     "%#{search}%", "%#{search}%" )
  else
    scoped
  end
end

  #  def encrypt_password
  #    logger.info ">>>>>>>>>>>>>>>>>> ENCRYPT PASSWORD"
  #    if password.present?
  #      self.password_salt = BCrypt::Engine.generate_salt
  #      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
  #    end
  #  end
end
