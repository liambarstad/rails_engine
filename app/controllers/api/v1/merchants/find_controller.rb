class Api::V1::Merchants::FindController < ApplicationController
  def index
    render json: Merchant.where(search_params)
  end

  def show
    render json: Merchant.find_by(search_params)
  end

  private
  def search_params
    params.permit(:name, :created_at, :updated_at)
  end
end
