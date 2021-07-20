class Api::V1::ManagementsController < ApplicationController
  def index
    @managers = Management.all
    render json: @managers, status: :ok
  end



  # def show
    # puts "hitting here"
    # puts params[:management_id]
    # # @manager = Management.find(params[:management_id])
    # @employee = Employee.find_all(params[:management_id])
    # puts "hitting here 2"
    # puts @employee
    # render json: @employee, status: :ok
  # end

  def create
    puts management_params
    @management = Management.new(management_params)
    if @management.save
      render json: @management, status: :created
    else 
      render json: @management.errors, status: :unprocessable_entity
    end
  end 

  # private

  def management_params
    params.require(:management).permit(:lastname, :firstname)
  end

end
