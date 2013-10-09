ActiveAdmin.register Ad do
  form do |f|                       
    f.inputs "Ad New" do
    f.input :title  
    # f.input :contact, :class => "ckeditor"

    f.input :pin_code, :label => "Catagory" ,  collection: ["bschools","finance","flyhigh","insurance","news","services","vidyapeeth",
      "heritage","infotech","fitnesscenter","ashram","seva","club","matrimony","shopee","entertainement",
      "electronics","iron_steel","automobiles","ayurvedic","sanitation","builders_promoters","caters","textiles_clothing",
      "coal","hospitals","furniture","health","jewellers","cement","paper","pumps","realestate","shipping",
      "smartcards","eventmanagers","tyres","homeneeds","samaj","medicals","bhavan","manthav","lawyers","electricals",
      "doctors","architects","art","teachers","ca"]
    f.input :company_name
    f.input :about
    f.input :photo1
    f.input :photo2
    f.input :photo3
    f.input :house_no
    f.input :street_name
    f.input :area
    f.input :city , collection: ["Nellore", "Cuddapah",  "Karim Nagar", "Kurnool", "West Godavari", "Srikakulam", "Anantpur", "Adilabad", "Chittor", "East Godavari", "Guntur", "Hyderabad Urban",
      "Khammam", "Krishna", "Mehboobnagar", "Medak", "Nalgonda", "Nizamabad", "Prakasam", "Ranga Reddy", "Vishakapatnam", "Vizianagaram", "Warangal","secundrabad"]
    f.input :state , collection: ["Andhra Pradesh","Arunachal Pradesh","Assam","Bihar","Chhattisgarh","Goa","Gujarat","Haryana","Himachal Pradesh","Jammu and Kashmir",
      "Jharkhand","Karnataka","Kerala","Madhya Pradesh","Maharashtra","Manipur","Meghalaya","Mizoram","Nagaland","Orissa","Punjab","Rajasthan","Sikkim","Tamil Nadu","Tripura","Uttar Pradesh","Uttarakhand","West Bengal" ], priority: ["Andhra Pradesh"  ]
    f.input :country , priority: [ "India" ]
    f.input  :contact_person
    f.input :contact_email
    f.input :datax
    f.input :datay
    f.input :row
    f.input :col
    f.input :otherad1
    f.input :otherad1mob
    f.input :otherad1loc
    f.input :otherad2
    f.input :otherad2mob
    f.input :otherad2loc
    f.input :otherad3
    f.input :otherad3mob
    f.input :otherad3loc
    f.input :otherad4
    f.input :otherad4mob
    f.input :otherad4loc
    f.input :otherad5
    f.input :otherad5mob
    f.input :otherad5loc
  end
  f.buttons
end
 
 

index do
  column :id
  column :title
  column :company_name
  column :contact_person
  column :contact_email
  # column :contact
  column :area
  column :street_name
  column :datay
  column :datax
  column :row
  column :col

     column :otherad1
    column :otherad1mob
    column :otherad1loc
    column :otherad2
    column :otherad2mob
    column :otherad2loc
    column :otherad3
    column :otherad3mob
    column :otherad3loc
    column :otherad4
    column :otherad4mob
    column :otherad4loc
    column :otherad5
    column :otherad5mob
    column :otherad5loc
  column "Catagory", :pin_code 
      default_actions
  column "Title" do |post|
    link_to image_tag(post.photo1.url, :height => '150', :width => '150'),
      admin_ad_path(post)
    end
  end

  filter :pin_code , :label => "Category",
 :as => :select, :collection => Ad.all.map(&:pin_code).uniq
 
  filter :title, :label => 'Title'
  filter :company_name, :label => 'Company Name'
  filter :contact_email, :label => 'Contact Email'
  filter :area, :label => 'Area'
  filter :datax, :label => 'Data X'
  filter :datay, :label => 'Data Y'
  filter :row, :label => 'Row'
  filter :col, :label => 'Column'
    filter :otherad1
    
  
   filter :otherad2
  
   filter :otherad3
   
   filter :otherad4
  
   filter :otherad5
   



end



