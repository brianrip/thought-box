class Api::V1::LinksController < ApplicationController
  respond_to :json

  def update
    respond_with Link.update(params[:id], link_params), location: nil
  end

  private

    def link_params
      params.permit(:read)
    end

end
