class SessionsController < ApplicationController

	def new
	end
	
	def create
		@email = params[:email]
    user = User.find_by_email(@email)
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to home_url, :notice => "Signed in as #{@email}." 
			# ^ Don't redirect :back, b/c no route will match /session.
    else
      flash[:notice] = 'Sign-in unsuccessful.'
      render 'new'
    end
	end
	
	def destroy
		reset_session
		redirect_to home_url, :notice => "You successfully signed out."
	end

end
