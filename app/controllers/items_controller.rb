class ItemsController < ApplicationController
  def show
    # itemというモデルに対してfindメソッドでidを検索させる
    @item = Item.find(params[:id])
  end
end
