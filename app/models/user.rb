class User < ApplicationRecord
    has_many :user_events, foreign_key: "attendee_id"
    has_many :events, :through => :user_events
    
    has_many :created_events, class_name: "Event", foreign_key: "creator"

    def sort_and_filter_events
        @sorted_events = self.events.sort_by {|event| event.start_time}
        @sorted_events.select { |event| event.start_time > (Time.now.to_i*1000)}
    end
end
