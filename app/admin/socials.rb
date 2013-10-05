ActiveAdmin.register Social do
  form do |f|
 	f.inputs "Social New" do
     	f.input :category, :label => "Catagory" ,  collection: ["social","demise & uttavna","bussiness","achievement","lucky draw","health"]
    	f.input :heading
    	f.input :text
    	f.input :start
    	f.input :till
    	f.input :imagelink
    	f.input :country
    	f.input :state
    	f.input :city
    	f.input :other
    	f.input :verify
    	f.input :photo
    	f.input :document
	end
	f.buttons    
 end
 index do
 	column :id
	column :category
	column :heading
	# column :text
	column :start
	column :till
	# column :imagelink
	column :country
	column :state
	column :city
	column :other
	column :verify
 	default_actions
 	column "document" do |social|
 		link_to social.document,
 		admin_social_path(social)
 	end
 	column "Photo" do |social|
		link_to image_tag(social.photo.url, :height => '150', :width => '150'),
		admin_social_path(social)
	end
 end
end
