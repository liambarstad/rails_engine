class Api::V1::Items::MostRevenueController < ApplicationController

  def show
    render json: Item.top_by_revenue(params[:quantity])
  end

end