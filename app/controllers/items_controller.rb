class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def index
    @items = Item.all
  end

  def show
    # itemというモデルに対してfindメソッドでidを検索させる
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.new(item_params)
    # 上の業のインスタンスを作っただけ。saveメソッドで保存しないと消える。
    @item.save
    redirect_to "/items/#{@item.id}"
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to item_url(@item)
    else
      render 'edit'
    end
  end

  private

  # params.require(key).permit(filter)
  # key
  #   Strong Parameters を適用したい params の key を指定する。
  # filter
  #   Strong Parameters で許可するカラムを指定する。

  def item_params
    params.require(:item).permit(:name, :price, :seller_id, :description, :email, :image_url)
  end

end
