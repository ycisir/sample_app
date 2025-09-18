class Manufacturer < ApplicationRecord
	has_many :products, dependent: :destroy
	#has_and_belongs_to_many :resellers
	has_many :distributions
	has_many :resellers, through: :distributions
	has_many :addresses, as: :addressable

	# callbacks
	before_save :bsave
	after_save :asave
	before_validation :bvalidation
	before_validation :remove_spaces
	after_validation :avalidation
	before_create :bcreate
	after_create :acreate
	before_destroy :bdestroy
	after_destroy :adestroy
	after_commit :acommit


	def remove_spaces
		#debugger
		puts "---------CALLED-----------"
		#name.strip!
		name.gsub!(" ", "")
	end


	# lifecycle of callbacks
	def bsave
		#3
		puts "---------BEFORE SAVE--------"
	end

	def asave
		#6
		puts "---------AFTER SAVE--------"
	end

	def bvalidation
		#1
		puts "---------BEFORE VALIDATION--------"
	end

	def avalidation
		#2
		puts "---------AFTER VALIDATION--------"
	end

	def bcreate
		#4
		puts "---------BEFORE CREATE--------"
	end

	def acreate
		#5
		puts "---------AFTER CREATE--------"
	end

	def bdestroy
		#1
		puts "---------BEFORE DESTROY--------"
	end

	def adestroy
		#2
		puts "---------AFTER DESTROY--------"
	end

	def acommit
		#7, #3
		puts "---------AFTER COMMIT--------"
	end
end
