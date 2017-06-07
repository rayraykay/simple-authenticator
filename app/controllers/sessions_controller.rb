class SessionsController < ApplicationController
  def show
  end

  def new
  end
  
  def create
	user = User.find_by(name: params[:session][:name])
	
	if user && user.authenticate(params[:session][:password])
		redirect_to articles_path
	else
		redirect_to login_path
	end
  end
  
  def destroy
  end
end
