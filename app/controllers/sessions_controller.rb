class SessionsController < ApplicationController
	def create
		user = User.find_by(name: params[:session][:name])
		login user
		redirect_to root_url
	end

	def new
	end

	def destroy
		logout
		redirect_to root_url
	end

end
