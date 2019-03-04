class ItemsController < ApplicationController
  
  def index #一覧画面
    @items = Item.limit(10)
  end
  
end
