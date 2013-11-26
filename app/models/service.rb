class Service < ActiveRecord::Base
  belongs_to :supplier
  has_many :bookings
end
