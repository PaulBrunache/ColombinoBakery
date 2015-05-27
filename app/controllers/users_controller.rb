class UsersController < ApplicationController
  before_action :user_online, only: [:new,:edit, :update,:index] 
  before_action :correct_user,   only: [:edit, :update, :destroy]
  
  def index
    @user = User.all
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
      flash[:success] = "User has been added to Colombinobakery users"
      redirect_to users_path
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end
  def destroy
    @user.destroy
    if current_user.admin
      flash[:success] ='User was successfully deleted.'
      redirect_to users_path(current_user) 
    else
      redirect_to root_path
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile has been updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

    def user_params
      params.require(:user).permit(:email, :password,:admin)
    end

    def correct_user
      @user = User.find(params[:id])
      if @user.admin && !current_user.admin #only admins can edit admins
        redirect_to(users_path) 
        flash[:danger] = "You do not have permission to perform this action"
      else if @user != current_user && !current_user.admin #users can only update their own profiles
        redirect_to(users_path) 
        flash[:warning] = "Only PAUL can edit someone elses profile"
      else
      end
      end
    end
end