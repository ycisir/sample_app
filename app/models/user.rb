class User < ApplicationRecord
	# validates_length_of :first_name, in: (10..20)
	attr_accessor :first_name, :last_name

	# CITIES = %W/London Birmingham Manchester Leeds Liverpool Newcastle Edinburgh/

	def gender_string
		self.gender == "F" ? "Female" : "Male"
	end

	# this method is used to store fullname in user table name column
	def fullname
		self.first_name + " " + self.last_name
	end

	def firstname
		self.name.split(/\s/).first
	end

	def lastname
		self.name.split(/\s/).last
	end

	def city_name
		self.city_id.nil? ? "No data" : City.find(self.city_id).name
	end

end


# model User will be mapped to a table "users" in postgresql db