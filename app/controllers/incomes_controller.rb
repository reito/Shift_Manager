class IncomesController < ApplicationController

    def new
        @income = Income.new
    end

    def create
        @income = Income.new(income_params)
        if @income.save
            # flash[:success] = "収入を反映しました"
            redirect_to root_path(income_receipt: @income.receipt)
            flash[:success] = "収入を反映しました"
        else
            render 'new'
        end
    end

    def destroy
        Income.find(params[:id]).destroy
        flash[:success] = "収入データを削除しました"
        redirect_to root_url
    end

    private

        def income_params
            params.required(:income).permit(:name, :receipt)
        end

end
