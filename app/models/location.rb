class Location < ActiveRecord::Base
  # attr_accessible :address, :lat, :lng, :location_name, :phone_number, :district, :postcode, :city, :country
  geocoded_by :address, :latitude => :lat, :longitude => :lng
  after_validation :geocode, :if => :address_changed? 
  validates_presence_of :address
end
