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

  get "gigs" => "Gigs#index", :as => "gigs"

  get "gigs/new" => "Gigs#new", :as => "new_gig"
  post "gigs" => "Gigs#create", :as => "create_gig"

  get "gigs/:id" => "Gigs#show", :as => "gig"

  get "gigs/:id/edit" => "Gigs#edit", :as => "edit_gig"
  put "gigs/:id" => "Gigs#update", :as => "update_gig"

  delete "gigs/:id" => "Gigs#destroy", :as => "destroy_gig" 
  
# ALBUM ROUTES
  
  get "albums" => "Albums#index", :as => "albums"
  
  get "albums/new" => "Albums#new", :as => "new_album"
  post "albums" => "Albums#create", :as => "create_album"
  
  get "albums/:id" => "Albums#show", :as => "album"
  
  get "albums/:id/edit" => "Albums#edit", :as => "edit_album"
  put "albums/:id" => "Albums#update", :as => "update_album"
  
  delete "albums/:id" => "Albums#destroy", :as => "destroy_album"
  
# SONG ROUTES
  
  get "songs" => "Songs#index", :as => "songs"
  
  get "songs/new" => "Songs#new", :as => "new_song"
  post "songs" => "Songs#create", :as => "create_song"
  
  get "songs/:id" => "Songs#show", :as => "song"
  
  get "songs/:id/edit" => "Songs#edit", :as => "edit_song"
  put "songs/:id" => "Songs#update", :as => "update_song"
  
  delete "songs/:id" => "Songs#destroy", :as => "destroy_song"
  
# BLOG ROUTES
  
  get "blogs" => "Blogs#index", :as => "blogs"
  
  get "blogs/new" => "Blogs#new", :as => "new_blog"
  post "blogs" => "Blogs#create", :as => "create_blog"
  
  get "blogs/:id" => "Blogs#show", :as => "blog"
  
  get "blogs/:id/edit" => "Blogs#edit", :as => "edit_blog"
  put "blogs/:id" => "Blogs#update", :as => "update_blog"
  
  delete "blogs/:id" => "Blogs#destroy", :as => "destroy_blog"

end
