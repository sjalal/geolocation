class ChangeTableLocations < ActiveRecord::Migration
  def change 
  	change_table :locations do |t|
  		t.remove :lat, :lng
  		t.float :lat, :precision => 16, :scale => 13
  		t.float :lng, :precision => 16, :scale => 13
    end 
  end
end
