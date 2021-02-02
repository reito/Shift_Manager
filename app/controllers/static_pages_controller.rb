class StaticPagesController < ApplicationController

    def index
        @wishes = Wish.all
        @wallet = 0
        @wallet += params[:income_receipt].to_i
    end


end
