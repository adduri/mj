ActiveAdmin.register Mjnews do
 form do |f|
     f.inputs "Ad New" do
         f.input :title
        f.input :p1
        f.input :p2
        f.input :p3
        f.input :location
        f.input :photo
    end
    f.buttons    
 end
 index do
     column :title
     column :p1
     column :p2
     column :p3
     column :location
     default_actions
     column "Photo" do |post|
    link_to image_tag(post.photo.url, :height => '150', :width => '150'),
    admin_mjnews_path(post)
    
end
 end    
end


