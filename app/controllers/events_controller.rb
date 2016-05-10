class EventsController < ApplicationController

	def new
		@event = current_user.events.build
	end

	def create
		event = current_user.events.build event_params
		event.save
		redirect_to user_path(current_user)
	end

	def show
	end

	def idnex
	end

	private

	def event_params
		params.require(:event).permit(:date,:place)
	end
end
