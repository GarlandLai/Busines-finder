class Restaurant < ApplicationRecord
  has_many :reviews

  validates :name, :origin, :location, presence: true
end
