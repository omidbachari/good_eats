class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :rating, numericality: { greater_than: 0 }
  validates :rating, numericality: { less_than: 6 }
  validates :rating, :body, presence: true
end
