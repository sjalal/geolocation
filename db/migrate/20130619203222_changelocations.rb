class Changelocations < ActiveRecord::Migration
  
  def change
  	change_table :locations do |t|
  		t.remove :latitude, :longitude
  		t.float  :latitude, :precision => 16, :scale => 13
  		t.float  :longitude, :precision => 16, :scale => 13
  	end 
  end
end
