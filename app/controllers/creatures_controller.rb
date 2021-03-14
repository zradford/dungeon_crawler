class CreaturesController < ApplicationController
  before_action :set_creature, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /creatures
  # GET /creatures.json
  def index
    @creatures = Monster.all
  end

  # GET /creatures/1
  # GET /creatures/1.json
  def show
    respond_to do |format|
      format.html {}
      format.js { render 'display_creature' }
    end
  end

  # GET /creatures/new
  def new
    @creature = current_user.creatures.build
    @type = params[:type]
  end

  # GET /creatures/1/edit
  def edit
  end

  # POST /creatures
  # POST /creatures.json
  def create
    @creature = current_user.creatures.build(creature_params)

    respond_to do |format|
      if @creature.save
        format.html { redirect_to @creature, notice: 'Creature was successfully created.' }
        format.json { render :show, status: :created, location: @creature }
      else
        format.html { render :new }
        format.json { render json: @creature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /creatures/1
  # PATCH/PUT /creatures/1.json
  def update
    respond_to do |format|
      if @creature.update(creature_params)
        format.html { redirect_to @creature, notice: 'Creature was successfully updated.' }
        format.json { render :show, status: :ok, location: @creature }
      else
        format.html { render :edit }
        format.json { render json: @creature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /creatures/1
  # DELETE /creatures/1.json
  def destroy
    @creature.destroy
    respond_to do |format|
      format.html { redirect_to creatures_url, notice: 'Creature was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_creature
      @creature = Creature.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def creature_params
      params.require(:creature).permit(:user_id, :type, :name, :max_health, :speed, :strength, :dexterity, :stability, :intelligence, :wisdom, :charisma)
    end
end