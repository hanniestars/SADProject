class EmployeesController < ApplicationController

  def index
    @employees = Employee.all

    render template: "employees/index"
  end

  def show
    @employee = Employee.find(params[:id])

    render template: "employees/show"
  end

  def new
    @employee = Employee.new

    render template: "employees/new"
  end

  def create
    @employee = Employee.new(employee_params)

    if @employee.save
        redirect_to employees_path
    else 
        render :template => "employees/new"
    end
  end

  def edit
    @employee = Employee.find(params[:id])

    render template: "employees/edit"
  end

  def update
    @employee = Employee.find(params[:id])
    
    if @employee.update(employee_path)
      redirect_to employees_path
    else
      render template: "employees/edit"
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy!
    redirect_to employees_path
  end

  def employee_params
    params.require(:employee).permit!
  end

end
