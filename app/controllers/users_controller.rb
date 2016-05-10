class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		user = User.new(user_params)
		if user.save
			flash[:success] = "User created"
			redirect_to new_user_path
		else
			flash[:danger] = "Name taken or empty field"
			redirect_to new_user_path
		end
	end

	def show
		@user = User.find(params[:id])
		@events = @user.events.all
		@upcoming_events = @user.attended_events.upcoming_events
		@passed_events = @user.attended_events.passed_events
	end


	private

		def user_params
			params.require(:user).permit(:name)
		end
end
