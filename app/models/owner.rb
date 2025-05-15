class Owner < ApplicationRecord
  has_many :cars
  validates :nickname, presence: true, uniqueness: true, format: { with: /([a-zA-Z0-9]+[_-])*/,  message: "can only contain letters, numbers, underscores, or hyphens"  }
end
