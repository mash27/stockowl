class UserStock < ApplicationRecord
  belongs_to :user
  belongs_to :stock

  has_many :operations, dependent: :destroy
end
