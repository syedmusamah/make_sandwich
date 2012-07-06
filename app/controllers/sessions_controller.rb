class SessionsController < ApplicationController
    def new
    end
    def create
  	user = User.authenticate(params[:session][:email],params[:session][:password])
  	  if user.nil?
  		flash.now[:error]="Invalid email/password combo"
  		render 'new'
  	  else
  	  flash.now[:notice]="Logged in successfully!"
  		session[:remember_token] = user.id
  		redirect_to :controller => :orders, :action => 'new'
  	  end
    end
    def destroy
  	session[:remember_token] = nil
  	redirect_to root_path 
    end
end
