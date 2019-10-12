class ItemsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path, notice: "商品が追加されました"
    else
      redirect_to new_product_item_path, alert: "入力項目が不足しています。再度登録してください"
    end
  end

  def edit
  end

  def update
  end

  def destroy
    if @item.destroy
      redirect_to root_path, notice: "商品が削除されました"
    else
      redirect_to product_path(@product.id), alert: "削除に失敗しました"
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :image, :all_number, :sold_number, :memo, :product_id)
  end
  
end
