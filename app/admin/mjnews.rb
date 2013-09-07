ActiveAdmin.register Mjnews do
 form do |f|
     f.inputs "Ad New" do
         f.input :title
        f.input :content
        f.input :location
        f.input :photo
    end
    f.buttons    
 end
 index do
     column :title
     column :content
     column :location
     default_actions
     column "Title" do |post|
    link_to image_tag(post.photo.url, :height => '150', :width => '150'),
    admin_mjnews_path(post)
    
end
 end    
end


