class CharactersController < ApplicationController
  before_action :authenticate_user!
  # GET /characters
  # GET /characters.json
  def index
    @characters = Character.where(user_id: current_user.id)
  end

end
