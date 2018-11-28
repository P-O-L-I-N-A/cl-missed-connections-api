class MyAttrsController < OpenReadController
  before_action :set_my_attr, only: %i[show update destroy]

  # GET /my_attrs
  def index
    @my_attrs = MyAttr.all

    render json: @my_attrs
  end

  # GET /my_attrs/1
  def show
    render json: @my_attr
  end

  # POST /my_attrs
  def create
    @my_attr = MyAttr.new(my_attr_params)
    @my_attr = current_user.my_attrs.new(my_attr_params)

    if @my_attr.save
      render json: @my_attr, status: :created, location: @my_attr
    else
      render json: @my_attr.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /my_attrs/1
  def update
    if @my_attr.update(my_attr_params)
      render json: @my_attr
    else
      render json: @my_attr.errors, status: :unprocessable_entity
    end
  end

  # DELETE /my_attrs/1
  def destroy
    @my_attr.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_attr
      @my_attr = MyAttr.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def my_attr_params
      params.require(:my_attr).permit(:location, :gender, :hair, :clothes, :car)
    end
end
