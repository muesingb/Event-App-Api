class Event < ApplicationRecord
    belongs_to :creator, class_name: "User"

    has_many :user_events
    has_many :attendees, :through => :user_events

    after_create :add_user_as_attendee

    private

    def add_user_as_attendee
        UserEvent.create(attendee: self.creator, event: self)
        true
    end
end
