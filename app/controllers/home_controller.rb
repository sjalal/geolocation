class HomeController < ApplicationController

   def index 
  	  if user_signed_in?
  		redirect_to :controller=>'locations', :action => 'index'
  	end 
  end

end
