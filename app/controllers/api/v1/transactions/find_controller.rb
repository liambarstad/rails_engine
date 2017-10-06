class Api::V1::Transactions::FindController < ApplicationController
  def show
    render json: Transaction.find_by(search_params)
  end

  def index
    render json: Transaction.where(search_params)
  end

  private

  def search_params
    params.permit(:invoice_id,
                  :credit_card_number,
                  :credit_card_expiration_date,
                  :result,
                  :created_at,
                  :updated_at)
  end
end
