class UsersController < ApplicationController

  def index
    users = User.all
    render :json => users, :include => {:bars => {:include => :comments}, :comments => {:all => :comment}}
    # render :json => @programs, :include => {:insurer => {:only => :name}}, :except => [:created_at, :updated_at]
    # render json: @users, except: [:created_at, :updated_at], include: [:bars, :comments]
  end

  def show
    user = User.find(params[:id])
    # render :json => user, :include => {:user_bars => {}, :bars => {:include => :comments}, :comments => {:all => :comment}}
    render :json => user, :include => {:user_bars => {:include => :bar}, :comments => {:include => :bar}} 
  end

  def create
    user = User.create(user_params)
    user.save
    render :json => user
  end


  private 

  def user_params
    params.require(:users).permit(:username, :password, :password_confirmation, :image, :about)
  end

  
end
