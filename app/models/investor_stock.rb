class InvestorStock < ApplicationRecord
  belongs_to :investor
  belongs_to :stock
  has_many :investor_stock_quarters, dependent: :destroy

  scope :not_sold_out, -> { where.not(percentage_weight_compared_to_portfolio_total_value: nil) }

  scope :top_5, -> do
    where.not(percentage_weight_compared_to_portfolio_total_value: nil).
    order(percentage_weight_compared_to_portfolio_total_value: :desc).
    limit(5)
  end
end
