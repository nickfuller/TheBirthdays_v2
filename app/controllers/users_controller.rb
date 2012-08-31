class UsersController < ApplicationController

  def index
    @users = User.order("name asc")
    respond_to do |format|
      format.html
      format.json { render :json => @users }
    end
  end

  def new
		@user = User.new
  end

  def create
    user = User.new(params[:user])
    if user.save
      flash[:user_created] = "#{user.name} is now a registered user!"
      redirect_to user_url(user.id)
    else
      flash[:user_not_created] = "Please fill in all fields before submitting."
      render 'new'  # Q: Could I say render new_user_url instead?
    end
  end

  def show
    @user = User.find_by_id(params[:id])
    respond_to do |format|
      format.html
      format.json { render :json => @user }
    end
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])
    if @user.update_attributes(params[:user])
      flash[:user_updated] = "#{@user.name}'s profile has been updated!"
      redirect_to user_url(@user.id)
    else
      flash[:user_not_updated] = "Please fill in all fields before submitting."
      render 'edit' 
    end
  end

  def destroy
    User.find_by_id(params[:id]).destroy
    flash[:user_destroyed] = "A user's profile has been deleted."
    redirect_to users_url
  end

end