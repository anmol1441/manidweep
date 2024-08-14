class UserController < ApplicationController
    include ApplicationHelper
    layout "back"
  
    # before_action :authenticate_user!
  
    before_action(:only => [:index, :show, :edit, :update,:new, :create]) 
    
    #before_action :set_user, only: [:edit, :show, :update, :update_image,:destroy]
    def index
      @users = User.all
      
     
    end
  
    def new
      @user = User.new
    end

    def show
      @user = User.find(params[:id])
      
      
    end
  
    def create
      @user = User.new(user_params)
  
      @user.avatar.attach(data: params[:user][:avatar])  unless params[:user][:avatar].nil?
      if @user.save
        redirect_to user_index_path, notice: 'User was successfully created.'
      else
  
        render :new
      end
    end

    def edit
      @user = User.find(params[:id])
    end
  
    def update
      @user = User.find(params[:id])  # Initialize @user
    
      # Remove password fields if they are empty
      if (user_params[:password].blank? && user_params[:password_confirmation].blank?)
        params[:user].delete(:password)
        params[:user].delete(:password_confirmation)
      end
    
      # Update the user and handle success or failure
      if @user.update(user_params)
        redirect_to user_index_path, notice: 'User was successfully updated.'
      else
        render :edit
      end
    end
    
  
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
  
    private

    def user_params
      params.require(:user).permit(:email, :name, :phone, :password, :password_confirmation, :u_type)
    end
    
  end