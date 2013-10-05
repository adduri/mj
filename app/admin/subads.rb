ActiveAdmin.register Subad do
form do |f|
 	f.inputs "Subad New" do
 		f.input :name
		f.input :p1
		f.input :p2
	end
	f.buttons    
end
index do
	column :id
	column :name

	column "p1" do |subad|
			link_to image_tag(subad.p1.url, :height => '100', :width => '100'),
			admin_subad_path(subad)
	 end
	 column "p2" do |subad|
			link_to image_tag(subad.p2.url, :height => '100', :width => '100'),
			admin_subad_path(subad)
	 end
default_actions
end  
end
