class SweetnessesController < ApplicationController
  before_action :set_sweetness, only: %i[show edit update destroy]

  def index
    @q = Sweetness.ransack(params[:q])
    @sweetnesses = @q.result(distinct: true).includes(:coffee_orders).page(params[:page]).per(10)
  end

  def show
    @coffee_order = CoffeeOrder.new
  end

  def new
    @sweetness = Sweetness.new
  end

  def edit; end

  def create
    @sweetness = Sweetness.new(sweetness_params)

    if @sweetness.save
      redirect_to @sweetness, notice: "Sweetness was successfully created."
    else
      render :new
    end
  end

  def update
    if @sweetness.update(sweetness_params)
      redirect_to @sweetness, notice: "Sweetness was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @sweetness.destroy
    redirect_to sweetnesses_url, notice: "Sweetness was successfully destroyed."
  end

  private

  def set_sweetness
    @sweetness = Sweetness.find(params[:id])
  end

  def sweetness_params
    params.require(:sweetness).permit(:sweetness_type)
  end
end
