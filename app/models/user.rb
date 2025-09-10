class User < ApplicationRecord
	# validates_length_of :first_name, in: (10..20)
	attr_accessor :first_name, :last_name, :cityname, :country

	# CITIES = %W/London Birmingham Manchester Leeds Liverpool Newcastle Edinburgh/
	# CITIES = {"Saudi Arabia" => ["Riyadh", "Dammam", "Jeddah"], "India" => ["Mumbai", "Nagpur", "Delhi"]}

	validates :first_name, presence: { message: "should be present" }, exclusion: { in: %w/admin manager/, message: "provided is not accepted" },
	#format: { without: /NOSPAM/}
	format: { with: /\A[A-Z]/}
	validates :last_name, presence: { message: "should be present" }, format: { with: /\A[A-Z]/}
	validates :age, presence: true, inclusion: { in: 18..55 }, numericality: true
	# validates :gender, presence: true
	# validates :city_id, presence: true

	# validates :cityname, inclusion: { in: ->(user) { CITIES[user.country] }}
	# validates :name, uniqueness: true


	# custom validation
	
	validate :check_unique_name

	def check_unique_name
		# exist = User.find_by_name(first_name + " " + last_name).nil? ? false : true
		# debugger


		if User.exists?(name:[firstname, lastname].join(" "))
			self.errors.add(:name, "already taken choose another")
		end

	end


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