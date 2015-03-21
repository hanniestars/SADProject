class ProductPricesController < ApplicationController
  
  def index
    @product_prices = ProductPrice.all

    render template: "product_prices/index"
  end

  def show
    @product_price = ProductPrice.find(params[:id])

    render template: "product_prices/show"
  end

  def new
    @product_price = ProductPrice.new

    render template: "product_prices/new"
  end

  def create
    @product_price = ProductPrice.new(product_price_params)

    if @product_price.save
        redirect_to product_prices_path
    else 
        render :template => "product_prices/new"
    end
  end

  def edit
    @product_price = ProductPrice.find(params[:id])

    render template: "product_prices/edit"
  end

  def update
    @product_price = ProductPrice.find(params[:id])
    
    if @product_price.update(product_price_path)
      redirect_to product_prices_path
    else
      render template: "product_prices/edit"
    end
  end

  def destroy
    @product_price = ProductPrice.find(params[:id])
    @product_price.destroy!
    redirect_to product_prices_path
  end

  def product_price_params
    params.require(:product_price).permit!
  end

end
