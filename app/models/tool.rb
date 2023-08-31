class Tool < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :rentals
end
