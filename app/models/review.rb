class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :address, presence: true
end
