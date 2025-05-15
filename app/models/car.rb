class Car < ApplicationRecord
  belongs_to :owner
  has_many :reviews
  has_many :favourites

  validates :brand, :model, :fuel, presence: true
  validates :year, presence: true, format: { with: /\A(19|20)\d{2}\z/, message: 'must be a valid year' }
end
