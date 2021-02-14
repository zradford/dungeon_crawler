class MonstersController < ApplicationController
  # GET /Monsters
  # GET /Monsters.json
  def index
    @monsters = Monster.all
  end

end
