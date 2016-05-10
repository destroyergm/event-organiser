class User < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true 

	has_many :events

	has_many :listing
	has_many :attended_events, through: :listing, source: :event
end
