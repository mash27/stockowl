class InvestorStock < ApplicationRecord
  belongs_to :investor
  belongs_to :stock
end
