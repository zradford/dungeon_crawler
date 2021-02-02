class HomeController < ApplicationController
  # GET /home
  # GET /home.json
  def index
    @terrains = Terrain.randomize(5)
  end

end
