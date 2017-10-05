class Transaction < ApplicationRecord
  validates_presence_of :credit_card_number, :result
  belongs_to :invoice

  scope :successful, -> {where(result: 'success')}
  scope :not_successful, -> {where(result: 'failed')}

  default_scope {order(:id)}
end
