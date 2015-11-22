class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    # itemというモデルに対してfindメソッドでidを検索させる
    @item = Item.find(params[:id])
  end
end
