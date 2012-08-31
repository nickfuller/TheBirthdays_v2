# USER CONTROLLER----------------------------------------------------------------------------

# class UsersController < ApplicationController
# 
#   def index
#     @users = User.order("name asc")
#     respond_to do |format|
#       format.html
#       format.json { render :json => @users }
#     end
#   end
# 
#   def new
# 		@user = User.new
#   end
# 
#   def create
#     user = User.new(params[:user])
#     if user.save
#       flash[:user_created] = "#{user.name} is now a registered user!"
#       redirect_to user_url(user.id)
#     else
#       flash[:user_not_created] = "Please fill in all fields before submitting."
#       render 'new'  # Q: Could I say render new_user_url instead?
#     end
#   end
# 
#   def show
#     @user = User.find_by_id(params[:id])
#     respond_to do |format|
#       format.html
#       format.json { render :json => @user }
#     end
#   end
# 
#   def edit
#     @user = User.find_by_id(params[:id])
#   end
# 
#   def update
#     @user = User.find_by_id(params[:id])
#     if @user.update_attributes(params[:user])
#       flash[:user_updated] = "#{@user.name}'s profile has been updated!"
#       redirect_to user_url(@user.id)
#     else
#       flash[:user_not_updated] = "Please fill in all fields before submitting."
#       render 'edit' 
#     end
#   end
# 
#   def destroy
#     User.find_by_id(params[:id]).destroy
#     flash[:user_destroyed] = "A user's profile has been deleted."
#     redirect_to users_url
#   end
# 
# end

# USER MODEL------------------------------------------------------------------------------

# class User < ActiveRecord::Base
# 
#   attr_accessible :name, :email, :password, :category
# 
# end


# USER VIEWS-------------------------------------------------------------------------------

# _form-------------------------------------
 
# <%= form_for @user do |f| %>
#   <tr>
#     <td><%= f.text_field :name %></td>
#     <td><%= f.text_field :email %></td>
#     <td><%= f.text_field :password %></td>
#     <td><%= f.text_field :category %></td>
#     <td><%= f.submit "Submit" %></td>
#   </tr>
# <% end %>

# _user_form--------------------------------

# <table>
#   <thead>
#     <tr>
#       <th scope="col">Name</th>
#       <th scope="col">Email</th>
#       <th scope="col">Password</th>
#       <th scope="col">Category</th>
#     </tr>
#   </thead>
#   <tbody>
#     <% users.each do |user| %>
#     <tr>
#       <td><%= link_to "#{user.name}", user_url(user.id) %></td>
#       <td><%= user.email %></td>
#       <td><%= user.password %></td>
#       <td><%= user.category %></td>
#       <td><%= link_to "Edit", edit_user_url(user.id) %></td>
#       <td><%= link_to "Delete", destroy_user_url(user.id), :method => :delete %></td>
#     </tr>
#     <% end %>
#   </tbody>
# </table>

# Edit--------------------------------------

# <h1>Edit <%= @user.name %>'s Profile</h1>
# 
# <%= flash[:user_not_updated] %>
# 
# <table>
#   <thead>
#     <tr>
#       <th scope="col">Name</th>
#       <th scope="col">Email</th>
#       <th scope="col">Password</th>
#       <th scope="col">Category</th>
#     </tr>
#   </thead>
#   <tbody>
#     
#     <%= render "form" %>
#     
#     <tr>
#       <td><%= link_to "Delete", destroy_user_url(@user.id), :method => :delete %></td>
#     </tr>
#   </tbody>
# </table>
# 
# <p><%= link_to "Create Profile", new_user_url %></p>
# <p><%= link_to "All Fans", users_url %></p>
# <p><%= link_to "Home", home_url %></p>

# Index-------------------------------------

# <h1>All Users</h1>
# 
# <%= flash[:user_destroyed] %>
# 
# <%= render "user_form", :users => @users %>
# 
# <p><font color=red, size=4px>BUTTON: DELETE ALL FANS</font></p> <!-- this shows in green? -->
# 
# <p><%= link_to "Create a User Profile", new_user_url %></p>
# <%= render "/home/resource_form" %>

# New---------------------------------------

# <h1>New User</h1>
# 
# <%= flash[:user_not_created] %>
# 
# <p>Please fill in the following fields, and then submit:</p>
# 
# <table>
#   <thead>
#     <tr>
#       <th scope="col">Name</th>
#       <th scope="col">Email</th>
#       <th scope="col">Password</th>
#       <th scope="col">Category</th>
#     </tr>
#   </thead>
#   <tbody>
#     
#     <%= render "form" %>
#   
#   </tbody>
# </table>
# 
# <p><%= link_to "Users", users_url %></p>
# <p><%= link_to "Home", home_url %></p>

# Show--------------------------------------

# <h1><%= @user.name %>'s Profile</h1>
# 
# <%= flash[:user_created] %>
# <%= flash[:user_updated] %>
# 
# <%= render "user_form", :users => [@user] %>
# 
# <p><%= link_to "New User", new_user_url %></p>
# <p><%= link_to "Users", users_url %></p>
# <p><%= link_to "Home", home_url %></p>

# USER SEED---------------------------------------------------------------------------------

# fans = ["Celine Ui", "Lindsay Wahlborg", "Amanda Chase", "Kevin McCabe", "Courtland Premo", "Sean Cameron", "Sean Kelly", "David Rogge", "Deanna Fuller", "Greg Fuller", "Ada Mark"]
# fans.each do |fan|
# 	User.create(name: fan, 
# 		email: fan.first.downcase + "_" + fan.split(" ").last.downcase + "@gmail.com",
# 		password: fan.split(" ").last.upcase + fan.split(" ").first.downcase,
# 		category: "Fan")
# end
# 
# bandmembers = ["Nick Fuller", "Nolan Ericson", "Michael Nunan", "Aaron Wahlborg"]
# bandmembers.each do |bandmember|
# 	User.create(name: bandmember, 
# 		email: bandmember.first.downcase + "_" + bandmember.split(" ").last.downcase+"@gmail.com",
# 		password: bandmember.split(" ").last.upcase + bandmember.split(" ").first.downcase,
# 		category: "Bandmember")
# end
# 
# partners = ["David Geffen", "Ridley Scott", "Steven Spielberg", "Kara Diaguardi"]
# partners.each do |partner|
# 	User.create(name: partner, 
# 		email: partner.first.downcase + "_" + partner.split(" ").last.downcase+"@gmail.com",
# 		password: partner.split(" ").last.upcase + partner.split(" ").first.downcase,
# 		category: "Partner")
# end


# FAN ROUTES-------------------------------------------------------------------------------
  
  # get "fans" => "Fans#index", :as => "fans"
  # 
  # get "fans/new" => "Fans#new", :as => "new_fan"
  # post "fans" => "Fans#create", :as => "create_fan"
  # 
  # get "fans/:id" => "Fans#show", :as => "fan"
  # 
  # get "fans/:id/edit" => "Fans#edit", :as => "edit_fan"
  # put "fans/:id" => "Fans#update", :as => "update_fan"
  # 
  # delete "fans/:id" => "Fans#destroy", :as => "destroy_fan"
