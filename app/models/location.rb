class Location < ActiveRecord::Base
  geocoded_by :address
  # after_validation :geocode, :if => :address_change
  validates_presence_of :address
end
