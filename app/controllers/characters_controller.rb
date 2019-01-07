class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]

  # GET /characters
  # GET /characters.json
  def index
    @characters = Character.all
  end

  # GET /characters/1
  # GET /characters/1.json
  def show
  end

  # GET /characters/new
  def new
    @character = Character.new
    @character.user = current_user
    @character.concept = Concept.new
    @character.race = Race.new
    @character.background = Background.new
    @character.save
    redirect_to edit_character_path(@character), notice: 'Character was successfully created.'
  end

  # GET /characters/1/edit
  def edit
    authorize! :update, @character
    @conceptProwess = Prowess.new(:has_prowess => @character.concept)
    @raceProwess = Prowess.new(:has_prowess => @character.race)
    @backgroundProwess = Prowess.new(:has_prowess => @character.background)
    @newNote = Note.new(:character => @character)
    @newGear = Equipment.new(:character => @character)
  end

  # POST /characters
  # POST /characters.json
  def create
    @character = Character.new(character_params)
    puts @character
    authorize! :create, @character

    respond_to do |format|
      if @character.save
        format.html { redirect_to @character, notice: 'Character was successfully created.' }
        format.json { render :show, status: :created, location: @character }
      else
        format.html { render :new }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /characters/1
  # PATCH/PUT /characters/1.json
  def update
    authorize! :update, @character
    respond_to do |format|
      if @character.update(character_params)
        format.html { redirect_to edit_character_path(@character), notice: 'Character was successfully updated.' }
        format.json { render :show, status: :ok, location: @character }
      else
        format.html { render :edit }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.json
  def destroy
    authorize! :update, @character
    @character.destroy
    respond_to do |format|
      format.html { redirect_to characters_url, notice: 'Character was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_params
      params.require(:character).permit(:character_name, :player_name, :age, :gender, :eyes, :height, :hair, :weight, :gear, :description, :history, :crossroads, :notes)
    end
end
