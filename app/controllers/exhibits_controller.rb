class ExhibitsController < ApplicationController
  def index
    @exhibits = Exhibit.all
  end

  def show
    @exhibit = Exhibit.find(params[:id])
  end

  def locations
    @character = Character.find_by(name: params[:character]);
    @locations = @character.get_locations(params[:exhibit], params[:size]);
    binding.pry
    # respond_to do |format|
    #   format.json { render :json => @locations }
    # end
  end
end
