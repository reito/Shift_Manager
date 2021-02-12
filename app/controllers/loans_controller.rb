class LoansController < ApplicationController

    def new
        @loan = Loan.new
    end

    def create
        @loan = Loan.new(loan_params)
        if @loan.save
            redirect_to root_path
        else
            render 'new'
        end
    end

    def destroy
        Loan.find(params[:id]).destroy
        flash[:success] = "リストを削除しました"
        redirect_to root_url
    end

    def update
        Loan.find(params[:id]).update_attribute(:repaid, true)
        flash[:success] = "返済されました!"
        redirect_to root_url
    end

    private

        def loan_params
            params.required(:loan).permit(:name, :amount)
        end

end
