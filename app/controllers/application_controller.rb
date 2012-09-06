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
	
	def redirect_if_not_signed_in
		if @current_user.nil?
			flash[:error] = "You must be signed in to do that."
			redirect_to :back
		end
	end
	
	def authorized_to_change(user_id)
		@current_user && @current_user.id == user_id
	end
	
	def redirect_if_not_authorized(user_id)
		if !(authorized_to_change(user_id))
			flash[:error] = "You were not authorized to perform that action."
			redirect_to :back
		end
	end
		
end