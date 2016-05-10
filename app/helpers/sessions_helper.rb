module SessionsHelper
	def login(user)
		session[:user_id] = user.id
	end

	def logout
		session[:user_id] = nil
	end

	def current_user
		return nil if session[:user_id].nil?
		user_id = session[:user_id]
		User.find(user_id)
	end

	def logged_in?
		session[:user_id]
	end

	def active_user_or(string)
		user = current_user || string
		user = user.name if user == current_user
		user
	end
end
