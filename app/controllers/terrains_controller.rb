class TerrainsController < ApplicationController
  # GET /terrains
  # GET /terrains.json
  def index
    @terrains = Terrain.all
  end

end
