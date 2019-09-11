class PicturesController < ApplicationController
    def create
        puts "#" * 100
        puts params[:picture]
        puts "#" * 100

        @item = Item.find(params[:item_id])
        @item.picture.attach(params[:picture])
        redirect_to(root_path)
    end
end
