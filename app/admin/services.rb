ActiveAdmin.register Service do
  
form do |f|
 	f.inputs "Service New" do
    	f.input :mjid
    	f.input :message
    	f.input :phonenumber
    	f.input :emailid
   
	end
	f.buttons    
 end


end
