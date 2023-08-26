class UsersController < ApplicationController

  before_action :set_user, only: [:edit, :update, :destroy]
  skip_before_action :current_user, only: [:sign_in, :sign_out]

  def index
    @users = User.all
  end

  def new
    @user = User.new   
  end

  def create
    @user = User.new(user_params)
    byebug
    if @user.save
      redirect_to root_path
    else 
      render 'new'
    end 
  end

  def edit
  
  end

  def update
    if @user.update(user_params)
      redirect_to root_path
    else 
      render 'edit'
    end 
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to(root_path, flash: {success: "User has been successfully deleted."})}
    end
  end

  def sign_in
    if params[:email].present? && params[:password].present?
      user = User.find_by_email(params[:email].strip)
      if user.password == params[:password]
        session[:current_user] = user.id
        return redirect_to root_path
      else 
        flash[:danger] = "Email/password is incorrect"
        return redirect_to :back
      end 
    end 
  end

  def sign_out
    session[:current_user] = nil
    redirect_to sign_in_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :confirm_password)
  end

  def set_user
    @user = User.find_by_id(params[:id])
  end

end
