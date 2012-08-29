class ContactsController < ApplicationController

  def index
    @contacts = Contact.order("name asc")
    respond_to do |format|
      format.html
      format.json { render :json => @contacts }
    end
  end

  def new
		@contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      flash[:contact_created] = "#{@contact.name} is now a registered contact!"
      redirect_to contact_url(@contact.id)
    else
      flash[:contact_not_created] = "Please fill in all fields before submitting."
      render 'new' 
    end
  end

  def show
    @contact = Contact.find_by_id(params[:id])
    respond_to do |format|
      format.html
      format.json { render :json => @contact }
    end
  end

  def edit
    @contact = Contact.find_by_id(params[:id])
  end

  def update
    @contact = Contact.find_by_id(params[:id])
    if @contact.update_attributes(params[:contact]) 
      flash[:contact_updated] = "#{@contact.name}'s profile has been updated!"
      redirect_to contact_url(@contact.id)
    else
      flash[:contact_not_updated] = "Please fill in all fields before submitting."
      render 'edit' 
    end
  end

  def destroy
    Contact.find_by_id(params[:id]).destroy
    flash[:contact_destroyed] = "A contact's profile has been deleted."
    redirect_to contacts_url
  end

end