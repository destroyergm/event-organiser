class Event < ActiveRecord::Base
	
	scope :upcoming_events, -> { where('date > ?', Time.now) }
	scope :passed_events, -> { where('date < ?', Time.now) }

	belongs_to :creator, 
		class_name: 'User',
		foreign_key: 'user_id'

	has_many :listing
	has_many :attendee, through: :listing, source: :user
end
