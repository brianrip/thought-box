class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
        redirect_to ideas_path
      end
    else
      flash.now[:danger] = "Invalid Login"
      render :new
    end
  end
end
