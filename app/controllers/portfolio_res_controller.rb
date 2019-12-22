class PortfolioResController < ApplicationController
  def index
    @portfolio_items = PortfolioRe.all
  end
end
