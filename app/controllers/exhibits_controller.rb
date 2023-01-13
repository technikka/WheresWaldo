class ExhibitsController < ApplicationController
  def index
    @exhibits = Exhibit.all
  end

  def show
    @exhibit = Exhibit.find(params[:id])
  end

  def locations
    character = Character.find(request.params[:character_id]);
    locations = character.get_locations(request.params[:exhibit_id], request.params[:size_id]);
    @locations = locations.map { |location| location.div }

    respond_to do |format|
      format.json { render :json => @locations }
    end
  end
end
