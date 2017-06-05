class Api::V1::LinksController < ApplicationController

  def create
    render json: Link.create(link_params)
  end

private
  def link_params
    params.require(:link).permit(:url)
  end
end