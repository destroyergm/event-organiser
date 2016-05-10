class User < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true 

	has_many :events
	has_many :attended_events, through: :listing, 
		class: 'Event',
		foreign_key: 'event_id' 
end
