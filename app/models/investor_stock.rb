class InvestorStock < ApplicationRecord
  belongs_to :investor
  belongs_to :stock
  has_many :investor_stock_quarters, dependent: :destroy

  scope :top_5, -> { order(percentage_weight_compared_to_portfolio_total_value: :desc).limit(5) }
end
