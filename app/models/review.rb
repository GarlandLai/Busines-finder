class Review < ApplicationRecord
   belongs_to :restaurant

   validates :name, :rating, :content, presence: true
   validates :rating, numericality: { greater_than: 0, less_than_or_equal_to: 5}
end
