class Attendance < ActiveRecord::Base
  validates :user_id, :event_id, presence: true

  belongs_to :attendee, foreign_key: :user_id, class_name: :User #user = attendee
  belongs_to :event
end
