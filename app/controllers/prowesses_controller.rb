class ProwessesController < ApplicationController
  before_action :set_prowess, only: [:show, :edit, :update, :destroy]

  # GET /prowesses
  # GET /prowesses.json
  def index
    @prowesses = Prowess.all
  end

  # GET /prowesses/1
  # GET /prowesses/1.json
  def show
  end

  # GET /prowesses/new
  def new
    @prowess = Prowess.new
  end

  # GET /prowesses/1/edit
  def edit
  end

  # POST /prowesses
  # POST /prowesses.json
  def create
    @prowess = Prowess.new(prowess_params)

    respond_to do |format|
      if @prowess.save
        format.html { redirect_to edit_character_path(@prowess.has_prowess.character), notice: 'Prowess was successfully created.' }
        format.json { render :show, status: :created, location: @prowess.has_prowess }
      else
        format.html { render :new }
        format.json { render json: @prowess.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prowesses/1
  # PATCH/PUT /prowesses/1.json
  def update
    respond_to do |format|
      if @prowess.update(prowess_params)
        format.html { redirect_to edit_character_path(@prowess.has_prowess.character), notice: 'Prowess was successfully updated.' }
        format.json { render :show, status: :ok, location: @prowess.has_prowess.character }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /prowesses/1
  # DELETE /prowesses/1.json
  def destroy
    character = @prowess.has_prowess.character
    @prowess.destroy
    respond_to do |format|
      format.html { redirect_to edit_character_path(character), notice: 'Prowess was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prowess
      @prowess = Prowess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prowess_params
      params.require(:prowess).permit(:title, :description, :has_prowess_type, :has_prowess_id)
    end
end
