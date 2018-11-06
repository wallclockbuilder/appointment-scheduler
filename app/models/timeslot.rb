class Timeslot < ActiveRecord::Base
  belongs_to :availability, dependent: :destroy
end
