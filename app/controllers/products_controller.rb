class ProductsController < ApplicationController

  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to new_product_item_path(@product.id), notice: "プロダクトが追加されました"
    else
      redirect_to new_product_path, alert: "入力項目が不足しています。再度出品してください"
    end
  end

  def edit
  end

  def update
  end

  def destroy
    if @product.destroy
      redirect_to root_path, notice: "プロダクトが削除されました"
    else
      redirect_to product_path(@product.id), alert: "削除に失敗しました"
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :image, :description, :memo, :start, :end)
  end
  
end
