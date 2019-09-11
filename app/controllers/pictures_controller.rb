class PicturesController < ApplicationController
    def create
        @item = Item.find(params[:item_id])
        @item.picture.attach(params[:picture])
        redirect_to(root_path)
    end
end
