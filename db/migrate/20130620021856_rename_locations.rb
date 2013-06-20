class RenameLocations < ActiveRecord::Migration
  def change 
  	change_table :locations do |t|
  		t.rename :lat, :latitude
  		t.rename :lng, :longitude
  	end 
  end
end
