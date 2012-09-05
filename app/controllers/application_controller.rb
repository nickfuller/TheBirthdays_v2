class ApplicationController < ActionController::Base
  
	helper :all # include all helpers, all the time <= picked this up from RailsCast #139
	
	protect_from_forgery
	
	before_filter :current_user, :bandmember, :partner, :fan
	
	def current_user
		@current_user ||= User.find_by_id(session[:user_id]) 
	end
			# When will @current_user ever exist prior to having to 
			# find it thruogh the session? Whats the purpose of the ||?
	
	def bandmember
		if @current_user && @current_user.role == "Bandmember" 
			@bandmember = @current_user 
		end
	end
	
	def partner
		if @current_user && @current_user.role == "Partner"
			@partner = @current_user
		end
	end

	def fan
		if @current_user && @current_user.role == "Fan"
			@fan = @current_user
		end
	end
	
end
