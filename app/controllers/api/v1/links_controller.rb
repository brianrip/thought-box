class Api::V1::LinksController < ApplicationController
  respond_to :json

  # def index
  #   respond_with Idea.all
  # end
  #
  # def create
  #   respond_with Idea.create(idea_params), location: nil
  # end
  #
  # def destroy
  #   respond_with Idea.destroy(params[:id]), location: nil
  # end

  def update
    respond_with Link.update(params[:id], link_params), location: nil
  end

  private

    def link_params
      params.permit(:read)
    end

end
