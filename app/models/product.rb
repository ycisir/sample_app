class Product < ApplicationRecord
  belongs_to :manufacturer
  has_many :distributions

  scope :premium, -> { where('price > 15000') }
  scope :get_by_price, ->(price) { where('price > ?', price) }
end
