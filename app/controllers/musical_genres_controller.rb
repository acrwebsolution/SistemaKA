class MusicalGenresController < ApplicationController
  before_action :set_musical_genre, only: [:show, :edit, :update, :destroy]

  # GET /musical_genres
  # GET /musical_genres.json
  def index
    @musical_genres = MusicalGenre.all
  end

  # GET /musical_genres/1
  # GET /musical_genres/1.json
  def show
  end

  # GET /musical_genres/new
  def new
    @musical_genre = MusicalGenre.new
  end

  # GET /musical_genres/1/edit
  def edit
  end

  # POST /musical_genres
  # POST /musical_genres.json
  def create
    @musical_genre = MusicalGenre.new(musical_genre_params)

    respond_to do |format|
      if @musical_genre.save
        format.html { redirect_to @musical_genre, notice: 'Musical genre was successfully created.' }
        format.json { render :show, status: :created, location: @musical_genre }
      else
        format.html { render :new }
        format.json { render json: @musical_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musical_genres/1
  # PATCH/PUT /musical_genres/1.json
  def update
    respond_to do |format|
      if @musical_genre.update(musical_genre_params)
        format.html { redirect_to @musical_genre, notice: 'Musical genre was successfully updated.' }
        format.json { render :show, status: :ok, location: @musical_genre }
      else
        format.html { render :edit }
        format.json { render json: @musical_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musical_genres/1
  # DELETE /musical_genres/1.json
  def destroy
    @musical_genre.destroy
    respond_to do |format|
      format.html { redirect_to musical_genres_url, notice: 'Musical genre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musical_genre
      @musical_genre = MusicalGenre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def musical_genre_params
      params.require(:musical_genre).permit(:codgenmus, :descripcion)
    end
end
