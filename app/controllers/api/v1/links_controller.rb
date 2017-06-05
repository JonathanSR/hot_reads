class Api::V1::LinksController < ApplicationController
skip_before_filter  :verify_authenticity_token

  def create
    render json: Link.create(link_params)
  end

  def index
    @links = Link.top10
    render json: @links
  end

private
  def link_params
    params.permit(:url)
  end
end