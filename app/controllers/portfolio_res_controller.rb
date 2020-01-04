class PortfolioResController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :show, :update, :destroy]
  layout 'portfolio'
  
  def index
    @portfolio_items = PortfolioRe.all

    # custom scopes
    # @portfolio_items = PortfolioRe.angular
    # @portfolio_items = PortfolioRe.ruby_on_rails_portfolio_items
  end

  def angular
    @angular_portfolio_items = PortfolioRe.angular
  end

  def show
  end

  def new
    @portfolio_item = PortfolioRe.new
    3.times { @portfolio_item.technologies.build }
  end

  def create
    @portfolio_item = PortfolioRe.new(portfolio_params)

    if @portfolio_item.save
      redirect_to portfolio_res_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @portfolio_item.update(portfolio_params)
      redirect_to portfolio_res_path
    else
      render :edit
    end
  end

  def destroy
    @portfolio_item.destroy
    redirect_to portfolio_res_path, notice: "Record was removed!"
  end

  private
  def portfolio_params
    params.require(:portfolio_re).permit(:title, 
                                         :subtitle, 
                                         :body, 
                                         technologies_attributes: [:name])
  end

  def set_portfolio_item
    @portfolio_item = PortfolioRe.find(params[:id])
  end
end
