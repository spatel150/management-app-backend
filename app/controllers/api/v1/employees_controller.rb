class Api::V1::EmployeesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    print("hitting here 1")
    @employees = Employee.all
    render json: @employees, status: :ok
  end

  # def show
  #   @employee = Employee.find(params[:id])
  #   render json: @employee, status: :ok
  # end

  def showAllByManager 
    puts "hitting here 2"
    puts params[:management_id]
    # @manager = Management.find(params[:management_id])
    @employee = Employee.where("management_id = ?", params[:management_id])
    puts "hitting here 2"
    puts @employee
    render json: @employee, status: :ok
  end 

  def create
    print "hitting here 1"
    #https://stackoverflow.com/questions/35664430/ruby-on-rails-one-to-many-association
    @management = Management.find(params[:management_id])
    @employee = @management.employees.create(employee_params)
    # @employee = Employee.create(employee_params, :management_id => @management.id)
    if @employee.save
      render json: @employee, status: :created
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  def employee_params
    params.require(:employee).permit(:firstname, :lastname)
  end
end
