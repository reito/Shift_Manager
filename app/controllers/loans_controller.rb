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

    private

        def loan_params
            params.required(:loan).permit(:name, :amount)
        end

end
