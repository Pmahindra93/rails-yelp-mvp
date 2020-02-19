class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
