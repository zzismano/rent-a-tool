class Tool < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :rentals
  has_many :reviews
end
