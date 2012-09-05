class ApplicationController < ActionController::Base
  
	helper :all # include all helpers, all the time <= picked this up from RailsCast #139
	
	protect_from_forgery
	
	before_filter :current_user, :bandmember, :partner, :fan
	
	def current_user
		@current_user ||= User.find_by_id(session[:user_id]) # What is the purpose of the ||?
	end
	
	def bandmember
		if @current_user && @current_user.role == "Bandmember" 
			@bandmember = @current_user 
		end
	end
	
	def partner
		if @current_user
			@partner = @current_user.role == "Partner"
		end
	end

	def fan
		if @current_user
			@fan = @current_user.role == "Fan"
		end
	end
	
end
