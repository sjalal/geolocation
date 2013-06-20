class ChangeLocationsTable < ActiveRecord::Migration
	  def change
	  change_table :locations do |t|
	  t.remove :latitude, :longitude
	  t.float :lat, :precision => 16, :scale => 13
	  t.float :lng, :precision => 16, :scale => 13
	  end 
  end
end
