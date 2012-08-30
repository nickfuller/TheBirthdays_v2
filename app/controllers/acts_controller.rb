class ActsController < ApplicationController

  def index
    @acts = Act.order("name asc")
    respond_to do |format|
      format.html
      format.json { render :json => @acts }
    end
  end

  def new
		@act = Act.new
  end

  def create
    act = Act.new(params[:act])
    if act.save
      flash[:act_created] = "Act, #{act.name}, just uploaded!"
      redirect_to acts_url
    else
      flash[:act_not_created] = "Please fill in all fields before submitting."
      render 'new'  # Q: Could I say render new_act_url instead?
    end
  end

  def show
    @act = Act.find_by_id(params[:id])
    respond_to do |format|
      format.html
      format.json { render :json => @act }
    end
  end

  def edit
    @act = Act.find_by_id(params[:id])
  end

  def update
    @act = Act.find_by_id(params[:id])
    if @act.update_attributes(params[:act])  # Q: Should "act" be plural, "acts"?
      flash[:act_updated] = "Act, #{@act.name}, just updated."
      redirect_to act_url(@act.id)
    else
      flash[:act_not_updated] = "Please fill in all fields before submitting."
      render 'edit' # Q: Could I say render edit_act_url(@act.id) instead?
    end
  end

  def destroy
    Act.find_by_id(params[:id]).destroy
    flash[:act_destroyed] = "An act has been deleted."
    redirect_to acts_url
  end

end