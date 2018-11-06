class Availability < ActiveRecord::Base
  belongs_to :coach, dependent: :destroy
  has_many :timeslots
end
