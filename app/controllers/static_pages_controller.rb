class StaticPagesController < ApplicationController

    def index
       @wallet = Income.sum(:receipt) - Wish.where(purchased: true).sum(:price) + Loan.where(repaid: true).sum(:amount)
       @wishes = Wish.all
       @loans = Loan.all
    end


end
