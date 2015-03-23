class DealersController < ApplicationController

  def index
    @dealers = Dealer.all

    render template: "dealers/index"
  end

  def show
    @dealers = Dealer.find(params[:id])

    render template: "dealers/show"
  end

  def new
    @dealer = Dealer.new

    render template: "dealers/new"
  end

  def create
    @dealer = Dealer.new(dealer_params)

    if @dealer.save
        redirect_to dealers_path
    else 
        render :template => "dealers/new"
    end
  end

  def edit
    @dealer = Dealer.find(params[:id])

    render template: "dealers/edit"
  end

  def update
    @dealer = Dealer.find(params[:id])
    
    if @dealer.update(dealer_params)
      redirect_to dealers_path
    else
      render template: "dealers/edit"
    end
  end

  def destroy
    @dealer = Dealer.find(params[:id])
    @dealer.destroy!
    redirect_to dealers_path
  end

  def dealer_params
    params.require(:dealer).permit!
  end

end
