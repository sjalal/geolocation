class ChangeLocations < ActiveRecord::Migration
  def change 
  	change_table :locations do |t|
  		t.remove :latitude, :longitude
  		t.decimal :lat, :precision => 16, :scale => 13
  		t.decimal :lng, :precision => 16, :scale => 13
  	end 
  end
end
