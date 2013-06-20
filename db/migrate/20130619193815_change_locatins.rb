class ChangeLocatins < ActiveRecord::Migration
  def change
  	change_table :locations do |t|
  		t.remove :lat, :lng
  		t.float :latitude
  		t.float :longitude
  	end 
  end
end
