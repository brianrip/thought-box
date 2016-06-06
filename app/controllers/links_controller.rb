class LinksController < ApplicationController

  def index
    @new_link = Link.new
    @links = Link.all.where(user_id: current_user.id)
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      @link.update_attribute(:user_id, current_user.id)
      flash[:success] = "You have saved a link!"
      redirect_to links_path
    else
      flash.now[:danger] = "Invalid Input"
      render :index
    end
  end

private
  def link_params
    params.require(:link).permit(:title, :url)
  end

end
