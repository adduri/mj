ActiveAdmin.register Ad do
  form do |f|                       
    f.inputs "Ad New" do
    f.input :title  
    # f.input :contact, :class => "ckeditor"

    f.input :pin_code , collection: ["bschools","finance","flyhigh","insurance","news","services","vidyapeeth",
      "heritage","infotech","fitnesscenter","ashram","seva","club","matrimony","shopee","entertainement",
      "electronics","iron_steel","automobiles","ayurvedic","sanitation","builders_promoters","caters","textiles_clothing",
      "coal","hospitals","furniture","health","jewellers","machinery","cement","paper","pumps","realestate","shipping",
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
    f.input :otherad2
    f.input :otherad3
    f.input :otherad4
    f.input :otherad5
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
      default_actions
  column "Title" do |post|
    link_to image_tag(post.photo1.url, :height => '150', :width => '150'),
      admin_ad_path(post)
    end
  end
end



