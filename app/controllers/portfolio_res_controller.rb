class PortfolioResController < ApplicationController
  def index
    @portfolio_items = PortfolioRe.all
  end

  def new
    @portfolio_item = PortfolioRe.new
  end

  def create
    @portfolio_item = PortfolioRe.new(params.require(:portfolio_re).permit(:title, :subtitle, :body))

    if @portfolio_item.save
      redirect_to portfolio_res_path
    else
      render :new
    end
  end
end
