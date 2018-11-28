class AttrsController < ApplicationController
  before_action :set_attr, only: [:show, :update, :destroy]

  # GET /attrs
  def index
    @attrs = Attr.all

    render json: @attrs
  end

  # GET /attrs/1
  def show
    render json: @attr
  end

  # POST /attrs
  def create
    @attr = Attr.new(attr_params)

    if @attr.save
      render json: @attr, status: :created, location: @attr
    else
      render json: @attr.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /attrs/1
  def update
    if @attr.update(attr_params)
      render json: @attr
    else
      render json: @attr.errors, status: :unprocessable_entity
    end
  end

  # DELETE /attrs/1
  def destroy
    @attr.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attr
      @attr = Attr.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def attr_params
      params.require(:attr).permit(:hair, :clothes, :gender, :car, :location)
    end
end
