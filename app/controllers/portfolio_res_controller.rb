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

  def edit
    @portfolio_item = PortfolioRe.find(params[:id])
  end

  def update
    @portfolio_item = PortfolioRe.find(params[:id])
    if @portfolio_item.update(params.require(:portfolio_re).permit(:title, :subtitle, :body))
      redirect_to portfolio_res_path
    else
      render :edit
    end
  end
end
