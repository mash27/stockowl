class Contact < ApplicationRecord
  belongs_to :user, optional: true
end
