TheBirthdaysV2::Application.routes.draw do

  get "store/index"

# HOME ROUTES-----------------------------------------------------------

  root :to => "Home#index", :as => "home"

# CONTACT_US ROUTES-----------------------------------------------------------

  get "contact" => "ContactUs#index", :as => "contact_us"

# BAND_BIO ROUTES-----------------------------------------------------------

  get "history" => "BandBio#index", :as => "history" 

# BAND_BIO ROUTES-----------------------------------------------------------

  get "store" => "Store#index", :as => "store" 


# USERS ROUTES-----------------------------------------------------------
  
  get "users" => "Users#index", :as => "users"
  
  get "users/new" => "Users#new", :as => "new_user"
  post "users" => "Users#create", :as => "create_user"
  
  get "users/:id" => "Users#show", :as => "user"
  
  get "users/:id/edit" => "Users#edit", :as => "edit_user"
  put "users/:id" => "Users#update", :as => "update_user"
  
  delete "users/:id" => "Users#destroy", :as => "destroy_user"

# SESSIONS / LOGIN ROUTES-----------------------------------------------------------

	resource :session, :only => [:new, :create, :destroy] # WHY CAN I EDIT/UPDATE????
  
# GIG ROUTES-----------------------------------------------------------

  get "gigs" => "Gigs#index", :as => "gigs"

  get "gigs/new" => "Gigs#new", :as => "new_gig"
  post "gigs" => "Gigs#create", :as => "create_gig"

  get "gigs/:id" => "Gigs#show", :as => "gig"

  get "gigs/:id/edit" => "Gigs#edit", :as => "edit_gig"
  put "gigs/:id" => "Gigs#update", :as => "update_gig"

  delete "gigs/:id" => "Gigs#destroy", :as => "destroy_gig" 

# VENUE ROUTES-----------------------------------------------------------

  get "venues" => "venues#index", :as => "venues"

  get "venues/new" => "venues#new", :as => "new_venue"
  post "venues" => "venues#create", :as => "create_venue"

  get "venues/:id" => "venues#show", :as => "venue"

  get "venues/:id/edit" => "venues#edit", :as => "edit_venue"
  put "venues/:id" => "venues#update", :as => "update_venue"

  delete "venues/:id" => "venues#destroy", :as => "destroy_venue"

# ACT ROUTES-----------------------------------------------------------

  get "acts" => "acts#index", :as => "acts"

  get "acts/new" => "acts#new", :as => "new_act"
  post "acts" => "acts#create", :as => "create_act"

  get "acts/:id" => "acts#show", :as => "act"

  get "acts/:id/edit" => "acts#edit", :as => "edit_act"
  put "acts/:id" => "acts#update", :as => "update_act"

  delete "acts/:id" => "acts#destroy", :as => "destroy_act" 

  
# ALBUM ROUTES-----------------------------------------------------------
  
  get "albums" => "Albums#index", :as => "albums"
  
  get "albums/new" => "Albums#new", :as => "new_album"
  post "albums" => "Albums#create", :as => "create_album"
  
  get "albums/:id" => "Albums#show", :as => "album"
  
  get "albums/:id/edit" => "Albums#edit", :as => "edit_album"
  put "albums/:id" => "Albums#update", :as => "update_album"
  
  delete "albums/:id" => "Albums#destroy", :as => "destroy_album"
  
# SONG ROUTES-----------------------------------------------------------
  
  get "songs" => "Songs#index", :as => "songs"
  
  get "songs/new" => "Songs#new", :as => "new_song"
  post "songs" => "Songs#create", :as => "create_song"
  
  get "songs/:id" => "Songs#show", :as => "song"
  
  get "songs/:id/edit" => "Songs#edit", :as => "edit_song"
  put "songs/:id" => "Songs#update", :as => "update_song"
  
  delete "songs/:id" => "Songs#destroy", :as => "destroy_song"
  
# ARTICLE ROUTES-----------------------------------------------------------
  
  get "blog" => "Articles#index", :as => "articles"
  
  get "blog/new" => "Articles#new", :as => "new_article"
  post "blog" => "Articles#create", :as => "create_article"
  
  get "blog/:id" => "Articles#show", :as => "article"
  
  get "blog/:id/edit" => "Articles#edit", :as => "edit_article"
  put "blog/:id" => "Articles#update", :as => "update_article"
  
  delete "blog/:id" => "Articles#destroy", :as => "destroy_article"

# CONTACT ROUTES-----------------------------------------------------------

  get "contacts" => "Contacts#index", :as => "contacts"

  get "contacts/new" => "Contacts#new", :as => "new_contact"
  post "contacts" => "Contacts#create", :as => "create_contact"

  get "contacts/:id" => "Contacts#show", :as => "contact"

  get "contacts/:id/edit" => "Contacts#edit", :as => "edit_contact"
  put "contacts/:id" => "Contacts#update", :as => "update_contact"

  delete "contacts/:id" => "Contacts#destroy", :as => "destroy_contact"

# TAG ROUTES-----------------------------------------------------------

  get "tags" => "Tags#index", :as => "tags"

  get "tags/new" => "Tags#new", :as => "new_tag"
  post "tags" => "Tags#create", :as => "create_tag"

  get "tags/:id" => "Tags#show", :as => "tag"

  get "tags/:id/edit" => "Tags#edit", :as => "edit_tag"
  put "tags/:id" => "Tags#update", :as => "update_tag"

  delete "tags/:id" => "Tags#destroy", :as => "destroy_tag"
# COMMENT ROUTES-----------------------------------------------------------

  get "comments" => "Comments#index", :as => "comments"

  get "comments/new" => "Comments#new", :as => "new_comment"
  post "comments" => "Comments#create", :as => "create_comment"

  get "comments/:id/edit" => "Comments#edit", :as => "edit_comment"
  put "comments/:id" => "Comments#update", :as => "update_comment"

  delete "comments/:id" => "Comment#destroy", :as => "destroy_comment"

end
