TheBirthdaysV2::Application.routes.draw do

  # root :to => 'welcome#index'

  # FAN ROUTES
  
  get "fans" => "Fans#index", :as => "fans"
  
  get "fans/new" => "Fans#new", :as => "new_fan"
  post "fans" => "Fans#create", :as => "create_fan"
  
  get "fans/:id" => "Fans#show", :as => "fan"
  
  get "fans/:id/edit" => "Fans#edit", :as => "edit_fan"
  put "fans/:id" => "Fans#update", :as => "update_fan"
  
  delete "fans/:id" => "Fans#destroy", :as => "destroy_fan"
  
  # GIG ROUTES
  
  # ALBUM ROUTES
  
  # SONG ROUTES
  
  # BLOG ROUTES


end
