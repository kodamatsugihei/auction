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
end
