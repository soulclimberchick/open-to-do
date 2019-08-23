class Api::ItemsController < ApiController
  before_action :authenticated?

  def index
    @items = Item.all
    render json: @lists, each_serializer: ListSerializer
  end

  def create
    item = Item.new(item_params)
    item.list = List.find_by_id(params[:list_id])
    if item.save
      render json: item
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    item = Item.find(params[:id])
    if item.update(item_params)
      render json: {item: "Item Completed!"}
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def item_params
    params.require(:item).permit(:description, :completed)
  end
end
