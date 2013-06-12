class LocationsController < ApplicationController

    before_filter :authenticate_user!

	def index
	    if params[:search].present?
	      @locations = Location.near(params[:search], 50, :order => :distance)
	    else
	      @locations = Location.all
	    end
	end

	def new
	    @location = Location.new
	end

	def show
	    @location = Location.find(params[:id])
	end

	def create
	    @location = Location.new(params[:location])
	    if @location.save
	       flash[:notice] = "Successfully created location."
	       redirect_to @location 
	    else
	       redirect_to new_locaion_path
	    end
	end

	def edit
	    @location = Location.find(params[:id])
	end

	def update
	    @location = Location.find(params[:id])
	    if @location.update_attributes(params[:location])
	       flash[:notice]  = "Successfully updated location."
	       redirect_to @location 
	    else
	       redirect_to edit_locaion_path
	    end
	end

	def destroy
	    @location = Location.find(params[:id])
	    @location.destroy
	    flash[:notice] = "Successfully destroyed location."
	    redirect_to locations_path 
	end
end
