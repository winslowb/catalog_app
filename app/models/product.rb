class Product < ApplicationRecord
  belongs_to :category

  validates :name, presence: true
  validates :price, numericality: {greater_than_or_equql_to: 0 }
end

class Product < ApplicationRecord
  has_many :products

  validates :name, presence: true, uniqueness: true

  scope :expensive, -> { where("price > 100") }
end 
