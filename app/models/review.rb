class Review < ApplicationRecord
  belongs_to :tool
  belongs_to :user
  validates :rating, presence: true, numericality: { only_integer: true }
  validates :rating, inclusion: { in: 0..5 }
end
