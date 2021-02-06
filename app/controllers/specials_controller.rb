class SpecialsController < ApplicationController
  # GET /specials
  # GET /specials.json
  def index
    @specials = Special.all
  end

end
