class WishesController < ApplicationController

    def new
        @wish = Wish.new
    end

    def create
        @wish = Wish.new(wish_params)
        if @wish.save
            redirect_to root_path
        else
            render 'new'
        end
    end

    def destroy
        Wish.find(params[:id]).destroy
        flash[:success] = "欲しいものリストから削除しました"
        redirect_to root_url
    end

    def update
        Wish.find(params[:id]).update_attribute(:purchased, true)
        flash[:success] ="欲しいものが買えました!"
        redirect_to root_url
    end

    private

        def wish_params
            params.required(:wish).permit(:name, :price)
        end

end
