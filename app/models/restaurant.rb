class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :origin, :location, presence: true

  scope :random, -> {order("RANDOM()").limit(1)}

  # scope :search, -> (origin_parameter) { where("Origin like ?", "%#{origin_parameter}%")}
end
