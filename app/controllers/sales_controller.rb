class SalesController < ApplicationController

	def index
    @sales = Sale.all

    render template: "sales/index"
  end

  def show
    @sale = Sale.find(params[:id])

    render template: "sales/show"
  end

  def new
    @sale = Sale.new

    render template: "sales/new"
  end

  def create
    @sale = Sale.new(sale_params)

    if @sale.save
        redirect_to sales_path
    else 
        render :template => "sales/new"
    end
  end

  def edit
    @sale = Sale.find(params[:id])

    render template: "sales/edit"
  end

  def update
    @sale = Sale.find(params[:id])
    
    if @sale.update(move_params)
      redirect_to sales_path
    else
      render template: "sales/edit"
    end
  end

  def destroy
    @sale = Sale.find(params[:id])
    @sale.destroy!
    redirect_to sales_path
  end

  def sale_params
    params.require(:sale).permit!
  end
  
end
