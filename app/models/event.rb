class Event < ActiveRecord::Base
  validates :name, :location, :contact_person, :date, presence: true

  has_many :attendances
  has_many :users, through: :attendances
end
