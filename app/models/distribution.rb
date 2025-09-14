class Distribution < ApplicationRecord
  belongs_to :product
  belongs_to :manufacturer
  belongs_to :reseller
end
