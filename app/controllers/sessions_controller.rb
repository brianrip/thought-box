class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to links_path
    else
      flash.now[:danger] = "Invalid Login"
      render :new
    end
  end
end
