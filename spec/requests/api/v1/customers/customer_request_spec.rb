require 'rails_helper'

RSpec.describe 'Customer API' do
  it "returns a list of all customers" do
    create_list(:customer, 3)

    get '/api/v1/customers.json'

    customers = JSON.parse(response.body)

    expect(response).to be_success
    expect(customers.count).to eq(3)
  end

  it "returns a single customer" do
    og_customer = create(:customer)

    get "/api/v1/customers/#{og_customer.id}"

    customer = JSON.parse(response.body)

    expect(response).to be_success
    expect(customer['id']).to eq(og_customer.id)
    expect(customer['first_name']).to eq(og_customer.first_name)
    expect(customer['last_name']).to eq(og_customer.last_name)
  end
end
