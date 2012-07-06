class UsersController < ApplicationController
  def new
     @user = User.new()
  end

  def index
  	@user = User.new()
  end 
  def show
   end
  def create
     @user = User.new(params[:user])
     if(@user.save)
       flash[:notice]='User created sucessfully'
       redirect_to :controller => :sessions, :action => 'new'
     else
       flash[:notice]='User not created'
     end
  end
end
