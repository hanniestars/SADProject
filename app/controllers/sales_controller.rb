class SalesController < ApplicationController

	def index
    @sales = Sale.all
    respond_to do |format|
      format.html
      format.csv { send_data @sales.to_csv }
      format.xls # { send_data @sales.to_csv(col_sep: "\t") }
    end
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
    
    if @sale.update(sale_params)
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
