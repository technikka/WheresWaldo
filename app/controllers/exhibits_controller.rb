class ExhibitsController < ApplicationController
  def index
    @exhibits = Exhibit.all
  end

  def show
    @exhibit = Exhibit.find(params[:id])
  end

  def locations
    character = Character.find_by(name: request.params[:character]);
    locations = character.get_locations(request.params[:exhibit], request.params[:size]);
    @locations = locations.map { |location| location.div }

    respond_to do |format|
      format.json { render :json => @locations }
    end
  end
end
