class PortfoliosController < ApplicationController
  
  def index
    @portfolio_items = Portfolio.all
  end

  def angular
    @angular_portfolio_item = Portfolio.angular
  end

  def new
    @portfolio_items = Portfolio.new
    3.times { @portfolio_items.technologies.build }
  end

  def show
    @portfolio_items = Portfolio.find(params[:id])
  end

  def create
    @portfolio_items = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name]))

    respond_to do |format|
      if @portfolio_items.save
        format.html {redirect_to portfolios_path, notice: 'Portfolio Item Generated.'}
      else
        format.html {render :new}
      end
    end
  end

  def edit
    @portfolio_items = Portfolio.find(params[:id])
  end

  def update
    @portfolio_items = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio_items.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html {redirect_to portfolios_path, notice: 'Portfolio Item Update.'}
      else
        format.html {render :edit}
      end
    end
  end

  def destroy
    @portfolio_items = Portfolio.find(params[:id])
    @portfolio_items.destroy
    respond_to do |format|
      format.html{redirect_to portfolios_url, notice: "Portfolio was removed."}
    end
  end

end
