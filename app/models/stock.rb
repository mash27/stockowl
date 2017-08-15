class Stock < ApplicationRecord
  belongs_to :investor_stock
  belongs_to :user_stock
end
