class DealerStoresController < ApplicationController

  def index
    @dealer_stores = DealerStore.all

    render template: "dealer_stores/index"
  end

  def show
    @dealer_store = DealerStore.find(params[:id])

    render template: "dealer_stores/show"
  end

  def new
    @dealer_store = DealerStore.new

    render template: "dealer_stores/new"
  end

  def create
    @dealer_store = DealerStore.new(dealer_store_params)

    if @dealer_store.save
        redirect_to dealer_stores_path
    else 
        render :template => "dealer_stores/new"
    end
  end

  def edit
    @dealer_store = DealerStore.find(params[:id])

    render template: "dealer_stores/edit"
  end

  def update
    @dealer_store = DealerStore.find(params[:id])
    
    if @dealer_store.update(dealer_store_params)
      redirect_to dealers_stores_path
    else
      render template: "dealer_stores/edit"
    end
  end

  def destroy
    @dealer_store = DealerStore.find(params[:id])
    @dealer_store.destroy!
    redirect_to dealer_stores_path
  end

  def dealer_store_params
    params.require(:dealer_store).permit!
  end

end
