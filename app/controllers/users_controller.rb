class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def edit
  end

  def create
	@user = User.new(params[:user])
	if @user.save
		flash[:notice] = "Sign up successfully."
		redirect_to root_url #! redirect to home 
	else
		render :action => :new #! render view new
    end
   end
end