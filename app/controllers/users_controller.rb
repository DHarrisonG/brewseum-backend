class UsersController < ApplicationController

  def index
    @users = User.all
    render :json => @users, :include => {:bars => {:include => :comments}, :comments => {:all => :comment}}
    # render :json => @programs, :include => {:insurer => {:only => :name}}, :except => [:created_at, :updated_at]
    # render json: @users, except: [:created_at, :updated_at], include: [:bars, :comments]
  end

  def show
    @user = User.find(params[:id])
    render :json => @user, :include => {:bars => {:include => :comments}, :comments => {:all => :comment}}
  end

  def create
    @user = User.create(user_params)
    @user.save
  end

  private 

  def user_params
    params.require(:users).permit(:username, :password, :image, :about)
  end

  
end
