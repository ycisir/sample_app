class Manufacturer < ApplicationRecord
	has_many :products, dependent: :destroy
	#has_and_belongs_to_many :resellers
	has_many :distributions
	has_many :resellers, through: :distributions
	has_many :addresses, as: :addressable
end
