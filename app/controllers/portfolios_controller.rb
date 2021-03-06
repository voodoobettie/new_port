class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html{ redirect_to portfolios_path, notice: 'Nice work, we added it to your portfolio' }
      else
        format.html{ render new }
      end
    end
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

  def update
    @portfolio_item = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html{ redirect_to portfolios_path, notice: 'Thanks! Your portfolio item has been updated successfully' }
      else
        format.html{ render edit }
      end
    end
  end

  def destroy
  end
end
