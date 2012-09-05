# This was in application.html.erb (Shay's solution to centering nav header tags)

<div class="container">
  
  <p class="logo"><%= image_tag "logo.bmp", :height => "185", :width =>"374" %></p>
  
  <div id="centeredmenu">
    <ul>
      <li><%= link_to "Concerts", gigs_url %></li>      
      <li><%= link_to "Music", albums_url %></li>       
      <li><%= link_to "History", history_url %></li>    
      <li><%= link_to "Blog", blogs_url %></li>         
      <li><%= link_to "Contact", contact_us_url %></li> 
      <li><%= link_to "Store", store_url %></li>
      <% if session[:user_id] %>
      <li><%= link_to 'Fan Out', session_url, :method => 'delete' %></li>
      <% else %>
      <li><%= link_to 'Fan In', new_session_url %></li>
      <li><%= link_to 'Fan Up', new_user_url %></li>
      <li>Partner Up!</li>
      <% end %>
    </ul>        
  </div>
  
  <%= notice %>
  <%= yield %>
  
  <p class="footer">&copy; Copyright 2012</p> 

</div>