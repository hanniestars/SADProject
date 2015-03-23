class ProductsController < ApplicationController

  def index
    @products = Product.all

    render template: "products/index"
  end

  def show
    @product = Product.find(params[:id])

    render template: "products/show"
  end

  def new
    @product = Product.new

    render template: "products/new"
  end

  def create
    @product = Product.new(product_params)

    if @product.save
        redirect_to products_path
    else 
        render :template => "products/new"
    end
  end

  def edit
    @product = Product.find(params[:id])

    render template: "products/edit"
  end

  def update
    @product = Product.find(params[:id])
    
    if @product.update(product_path)
      redirect_to products_path
    else
      render template: "products/edit"
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy!
    redirect_to products_path
  end

  def product_params
    params.require(:product).permit!
  end

end
