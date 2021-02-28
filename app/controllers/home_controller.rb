class HomeController < ApplicationController
  before_action :authenticate_user!
  # GET /home
  # GET /home.json
  def index
    @terrains = Terrain.randomize(5)
    @drops = Pickup.randomize_drops(5)
    @monsters = Creature.randomize_monsters(5)
  end

  def character_manager
    puts params if request.post?
  end

end
