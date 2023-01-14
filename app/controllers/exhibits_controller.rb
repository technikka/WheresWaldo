class ExhibitsController < ApplicationController
  def index
    @exhibits = Exhibit.all
  end

  def show
    @exhibit = Exhibit.find(params[:id])
  end

  def validate_location
    @validated = Location.validate(
      exhibit_params[:character_id],
      exhibit_params[:exhibit_id], 
      exhibit_params[:size_id], 
      exhibit_params[:location_id]
    )

    respond_to do |format|
      format.json { render :json => @validated }
    end
  end

  def exhibit_params
    params.permit(
      :character_id,
      :exhibit_id,
      :size_id,
      :location_id,
      :exhibit,
    )
  end
end
