class Api::V1::Merchants::RevenueController < ApplicationController

  def show
    merchant = Merchant.find(params[:id])
    if params[:date]
      render json: { "revenue" => merchant.total_revenue_by_date(params[:date]).to_s }
    else
      render json: { "revenue" => merchant.total_revenue.to_s }
    end
  end

end
