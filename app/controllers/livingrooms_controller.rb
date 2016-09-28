class LivingroomsController < ApplicationController
  before_action :set_livingroom, only: [:show, :edit, :update, :destroy]

  # GET /livingrooms
  # GET /livingrooms.json
  def index
    @livingrooms = Livingroom.all
  end

  # GET /livingrooms/1
  # GET /livingrooms/1.json
  def show
  end

  # GET /livingrooms/new
  def new
    @livingroom = Livingroom.new
  end

  # GET /livingrooms/1/edit
  def edit
  end

  # POST /livingrooms
  # POST /livingrooms.json
  def create
    @livingroom = Livingroom.new(livingroom_params)

    respond_to do |format|
      if @livingroom.save
        format.html { redirect_to @livingroom, notice: 'Livingroom was successfully created.' }
        format.json { render :show, status: :created, location: @livingroom }
      else
        format.html { render :new }
        format.json { render json: @livingroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /livingrooms/1
  # PATCH/PUT /livingrooms/1.json
  def update
    respond_to do |format|
      if @livingroom.update(livingroom_params)
        format.html { redirect_to @livingroom, notice: 'Livingroom was successfully updated.' }
        format.json { render :show, status: :ok, location: @livingroom }
      else
        format.html { render :edit }
        format.json { render json: @livingroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /livingrooms/1
  # DELETE /livingrooms/1.json
  def destroy
    @livingroom.destroy
    respond_to do |format|
      format.html { redirect_to livingrooms_url, notice: 'Livingroom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_livingroom
      @livingroom = Livingroom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def livingroom_params
      params.require(:livingroom).permit(:codsala, :codlocal, :codcliente, :descripcion, :capacidad, :precioconsumo)
    end
end
