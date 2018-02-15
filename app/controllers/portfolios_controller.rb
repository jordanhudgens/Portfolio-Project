class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]
  layout "portfolio"
  
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
  end

  def create
    @portfolio_items = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_items.save
        format.html {redirect_to portfolios_path, notice: 'Portfolio Item Generated.'}
      else
        format.html {render :new}
      end
    end
  end

  def edit
  end

  def update

    respond_to do |format|
      if @portfolio_items.update(portfolio_params)
        format.html {redirect_to portfolios_path, notice: 'Portfolio Item Update.'}
      else
        format.html {render :edit}
      end
    end
  end

  def destroy
    @portfolio_items.destroy
    respond_to do |format|
      format.html{redirect_to portfolios_url, notice: "Portfolio was removed."}
    end
  end


  private
  def portfolio_params
    params.require(:portfolio).permit(:title, 
                                      :subtitle, 
                                      :body, 
                                      technologies_attributes: [:name]
                                      )
  end

  def set_portfolio
    @portfolio_items = Portfolio.find(params[:id])
  end

end
