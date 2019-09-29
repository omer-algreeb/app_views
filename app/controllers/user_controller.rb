class UserController < ApplicationController
  layout 'admin'

  before_action :confirm_logged_in

  def index
    @user = User.sorted
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "user created successfully."
      redirect_to user_path(@user.id)
    else
      flash[:notice] = @user.errors.full_messages.join(", ")
      
      render('new')
    end
  end

  def edit 
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:notice] = "user updated successfully."
      redirect_to user_path(@user)
    else
      render('edit')
    end
    
  end

  def delete
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "user '#{@user.name}' destroyed successfully."
    redirect_to user_index_path
  end

  private

  def user_params 
    params.require(:user).permit(:name, :email, :email_confirmation, :password, :phone, :jop_id, :user_ids)
  end

end
