class ApplicationController < ActionController::Base
  protect_from_forgery
	
	before_filter :current_user, :bandmember, :partner, :fan
	
	def current_user
		@current_user = User.find_by_id(session[:user_id])
	end
	
	def bandmember
		if @current_user
			@bandmember = @current_user.category == "Bandmember"
		end
	end
	
	def partner
		if @current_user
			@partner = @current_user.category == "Partner"
		end
	end

	def fan
		if @current_user
			@fan = @current_user.category == "Fan"
		end
	end
	
end
