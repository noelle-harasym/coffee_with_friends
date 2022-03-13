class SweetnessesController < ApplicationController
  before_action :set_sweetness, only: [:show, :edit, :update, :destroy]

  # GET /sweetnesses
  def index
    @sweetnesses = Sweetness.all
  end

  # GET /sweetnesses/1
  def show
    @coffee_order = CoffeeOrder.new
  end

  # GET /sweetnesses/new
  def new
    @sweetness = Sweetness.new
  end

  # GET /sweetnesses/1/edit
  def edit
  end

  # POST /sweetnesses
  def create
    @sweetness = Sweetness.new(sweetness_params)

    if @sweetness.save
      redirect_to @sweetness, notice: 'Sweetness was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sweetnesses/1
  def update
    if @sweetness.update(sweetness_params)
      redirect_to @sweetness, notice: 'Sweetness was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sweetnesses/1
  def destroy
    @sweetness.destroy
    redirect_to sweetnesses_url, notice: 'Sweetness was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sweetness
      @sweetness = Sweetness.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sweetness_params
      params.require(:sweetness).permit(:sweetness_type)
    end
end
