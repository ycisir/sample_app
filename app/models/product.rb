class Product < ApplicationRecord
  #belongs_to :manufacturer
  has_many :distributions
end
