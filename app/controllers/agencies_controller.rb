class AgenciesController < ApplicationController

  def index
    @agencies = Agency.all

    render template: "agencies/index"
  end

  def show
    @agency = Agency.find(params[:id])

    render template: "agencies/show"
  end

  def new
    @agency = Agency.new

    render template: "agencies/new"
  end

  def create
    @agency = Agency.new(agency_params)

    if @agency.save
        redirect_to agencies_path
    else 
        render :template => "agencies/new"
    end
  end

  def edit
    @agency = Agency.find(params[:id])

    render template: "agencies/edit"
  end

  def update
    @agency = Agency.find(params[:id])
    
    if @agency.update(agency_path)
      redirect_to agencies_path
    else
      render template: "agencies/edit"
    end
  end

  def destroy
    @agency = Agency.find(params[:id])
    @agency.destroy!
    redirect_to agencies_path
  end

  def agency_params
    params.require(:agency).permit!
  end
end
