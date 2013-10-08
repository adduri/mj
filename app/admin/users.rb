ActiveAdmin.register User do
   form do |f|                       
    f.inputs "User New" do

  
    f.input :mj_id
    f.input :desig
    f.input :firstname
    f.input :middlename
    f.input :lastname
    f.input :fathername
    f.input :email
    f.input :gender , collection: ["Male","Female"]
    f.input :mobileno
    f.input :dob
    f.input :country
    f.input :state   
    f.input :city
    f.input :other
    f.input :address1 
    f.input :address2 
    f.input :address3
    f.input :zip
   
  end
  f.buttons
end
 
end
