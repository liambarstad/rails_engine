class Api::V1::Merchants::Customers::PendingInvoicesController < ApplicationController

  def index
    merchant = Merchant.find(params[:merchant_id])
    render json: merchant.customers_with_pending_invoices
  end

end
