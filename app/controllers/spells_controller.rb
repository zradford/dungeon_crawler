class SpellsController < ApplicationController
  # GET /spells
  # GET /spells.json
  def index
    @spells = Spell.all
  end

end
