class Api::V1::RolesController < ApplicationController
    def index 
        @roles = Role.all
        render json: @roles
    end

    def create
        print "hitting roles create"
        puts params[:role]
        params[:role].each {|p| puts p.role}
        # params[:role].map {|n| puts n.role}

        # @employee = Employee.find(params[:employee_id])
        # @role = @employee.roles.create(role_params)
        # if @employee.save
        #     render json: @role, status: :created
        # else
        #     render json: role.errors, status: :unprocessable_entity
        # end
    end

    def role_params
        params.require(:role).permit(:role => [])
    end
end