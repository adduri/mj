Mj::Application.routes.draw do


  resources :gender_notifications


  root :to => redirect('/about')

  get "about/aboutus"

  captcha_route

  resources :posts


  # root :to => "home#index"
  
  # get "home/index"


  # get "home/aboutus"
  # root :to => redirect('/aboutus')

match 'contact' => 'contact#new', :as => 'contact', :via => :get
match 'contact' => 'contact#create', :as => 'contact', :via => :post
 
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :videos

 
 
  resources :ads


  resources :relatives
  resources :mappings
  resources :mapping_relations
  resources :feedbacks
  resources :relations
  resources :family_members
  resources :users
  resources :sessions

  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"

  get "mjnews" => "posts#index", :as => "posts"



  get "aboutus" => "home#aboutus", :as => "aboutus"
  get "signup" => "users#sign_up", :as => "signup"
  get '/ads/:id/sai', to: 'ads#sai'
  get "search" => "users#index", :as => "search"
  get "log" => "users#search", :as => "log"
  get "products" => "ads#products", :as => "products"
  get "rajasthan" => "sessions#about_rajasthan", :as => "rajasthan"
  get "tc" => "home#tc" , :as => "tc"


 
   get "privacy" => "home#privacy" , :as => "privacy"

  get "demo_family" => "users#demo_family", :as => "demo_family"
  get "aboutus" => "home#aboutus", :as => "aboutus"
  get "change_password" => "sessions#forgot", :as => "change_password"
  get "publish_event" => "events#new", :as => "publish_event"
  # get "give_feedback" => "feedbacks#new", :as => "give_feedback"
  # root :to => "users#home" # "advertisements"
  match ':controller(/:action(/:id))(.:format)'
end
