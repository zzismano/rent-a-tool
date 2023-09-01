class User < ApplicationRecord
  HACKY = %w[One Two Three Four Five Six seven eight nine ten]
  # hacky is its nickname, ACORDION_WORKAROUND is its given name, sorry heh
  has_many :rentals
  has_many :tools
  has_many :reviews
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
