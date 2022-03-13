class Api::V1::SweetnessesController < Api::V1::GraphitiController
  def index
    sweetnesses = SweetnessResource.all(params)
    respond_with(sweetnesses)
  end

  def show
    sweetness = SweetnessResource.find(params)
    respond_with(sweetness)
  end

  def create
    sweetness = SweetnessResource.build(params)

    if sweetness.save
      render jsonapi: sweetness, status: :created
    else
      render jsonapi_errors: sweetness
    end
  end

  def update
    sweetness = SweetnessResource.find(params)

    if sweetness.update_attributes
      render jsonapi: sweetness
    else
      render jsonapi_errors: sweetness
    end
  end

  def destroy
    sweetness = SweetnessResource.find(params)

    if sweetness.destroy
      render jsonapi: { meta: {} }, status: :ok
    else
      render jsonapi_errors: sweetness
    end
  end
end
