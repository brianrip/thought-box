class LinksController < ApplicationController

  def index
    @new_link = Link.new
  end

end
