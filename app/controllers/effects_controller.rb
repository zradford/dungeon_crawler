class EffectsController < ApplicationController
  # GET /effects
  # GET /effects.json
  def index
    @effects = Effect.all
  end

end
