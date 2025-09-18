module UsersHelper
	def gender_string(str)
		str == "F" ? "Female" : "Male"
	end

	def current_user?
		session[:user].nil? ? false : true
	end
end
