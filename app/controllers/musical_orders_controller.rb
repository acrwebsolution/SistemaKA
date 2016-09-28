class MusicalOrdersController < ApplicationController
  before_action :set_musical_order, only: [:show, :edit, :update, :destroy]

  # GET /musical_orders
  # GET /musical_orders.json
  def index
    @musical_orders = MusicalOrder.all
  end

  # GET /musical_orders/1
  # GET /musical_orders/1.json
  def show
  end

  # GET /musical_orders/new
  def new
    @musical_order = MusicalOrder.new
  end

  # GET /musical_orders/1/edit
  def edit
  end

  # POST /musical_orders
  # POST /musical_orders.json
  def create
    @musical_order = MusicalOrder.new(musical_order_params)

    respond_to do |format|
      if @musical_order.save
        format.html { redirect_to @musical_order, notice: 'Musical order was successfully created.' }
        format.json { render :show, status: :created, location: @musical_order }
      else
        format.html { render :new }
        format.json { render json: @musical_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musical_orders/1
  # PATCH/PUT /musical_orders/1.json
  def update
    respond_to do |format|
      if @musical_order.update(musical_order_params)
        format.html { redirect_to @musical_order, notice: 'Musical order was successfully updated.' }
        format.json { render :show, status: :ok, location: @musical_order }
      else
        format.html { render :edit }
        format.json { render json: @musical_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musical_orders/1
  # DELETE /musical_orders/1.json
  def destroy
    @musical_order.destroy
    respond_to do |format|
      format.html { redirect_to musical_orders_url, notice: 'Musical order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musical_order
      @musical_order = MusicalOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def musical_order_params
      params.require(:musical_order).permit(:codpedmus, :codcliente, :codmusica)
    end
end
