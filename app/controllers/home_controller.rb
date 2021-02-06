class HomeController < ApplicationController
  # GET /home
  # GET /home.json
  def index
    @terrains = Terrain.randomize(5)
    @drops = Pickup.drops.randomize(15)
  end

end
