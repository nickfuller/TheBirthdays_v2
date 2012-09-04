class ApplicationController < ActionController::Base
  protect_from_forgery
	
	before_filter :current_user, :band_member
	
	def current_user
		@current_user = User.find_by_id(session[:user_id])
	end
	
	def band_member
		if @current_user
			@band_member = @current_user.category == "Bandmember"
		end
	end
	
end
