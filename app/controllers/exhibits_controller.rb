class ExhibitsController < ApplicationController
  def index
    @exhibits = Exhibit.all
  end

  def show
    @exhibit = Exhibit.find(params[:id])
  end

  def get_high_score
    @exhibit = Exhibit.find(exhibit_params[:exhibit_id])

    respond_to do |format|
      format.json { render :json => @exhibit.high_score }
    end
  end

  # PUT 
  def update_high_score
    @exhibit = Exhibit.find(exhibit_params[:exhibit_id])
    @exhibit.update(high_score: exhibit_params[:new_high_score])
    head :created
  end

  def validate_location
    @validated = Location.validate(
      exhibit_params[:character_id],
      exhibit_params[:exhibit_id], 
      exhibit_params[:size_id], 
      exhibit_params[:location_id]
    )

    respond_to do |format|
      format.json { render :json => @validated , status: :ok }
    end
  end

  def get_location
    @character = Character.find(exhibit_params[:character_id].to_i)
    @locations = @character.find_locations(
      exhibit_params[:exhibit_id],
      exhibit_params[:size_id]
    ).map { |location| location.div }

    respond_to do |format|
      format.json { render :json => @locations , status: :ok}
    end
  end

  def exhibit_params
    params.permit(
      :character_id,
      :exhibit_id,
      :size_id,
      :location_id,
      :new_high_score,
      :exhibit => {}
    )
  end
end
