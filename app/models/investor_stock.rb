class InvestorStock < ApplicationRecord
  belongs_to :investor
  belongs_to :stock

  has_many :portfolio_stock_data, dependent: :destroy
end
