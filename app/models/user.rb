class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_stocks, dependent: :destroy
  has_many :contacts, dependent: :destroy
  validates :first_name, presence: true
  validates :last_name, presence: true
end
