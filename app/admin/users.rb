ActiveAdmin.register User do
   form do |f|                       
    f.inputs "User New" do

  
    f.input :mj_id
    f.input :email
    f.input :firstname
    f.input :lastname
    f.input :gender , collection: ["Male","Female"]
    f.input :ccode
    f.input :mobileno
    f.input :dob
    f.input :station
    f.input :city
    f.input :zip
    f.input :address 
    f.input :state   
   
  end
  f.buttons
end
 
end
