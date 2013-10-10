ActiveAdmin.register Subad do
	form do |f|
		f.inputs "subad new" do
			f.input :name
			f.input :photo
		end
		f.buttons
	end
	index do
		column :name
		column "Photo" do |post|
    		link_to image_tag(post.photo.url, :height => '100', :width => '100'),
        	admin_subad_path(post)
        end
	default_actions
	end
end
