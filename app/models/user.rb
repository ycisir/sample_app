class User < ApplicationRecord
	# validates_length_of :first_name, in: (10..20)

	def gender_string
		self.gender == "F" ? "Female" : "Male"
	end
end


# model User will be mapped to a table "users" in postgresql db