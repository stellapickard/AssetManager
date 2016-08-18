class EmployeesController < ApplicationController
	before_action :before_checks, :only [:show, :edit, :update, :destroy ]

	def index
		@employees = Employees.all
	end

	def show 
		empoloyees.show
	end

	def new
		@employees = Employee.new
	end

	def create
	end

	def edit 
		employees.edit
	end

	def update
		@employees = Employees.update
	end

	def destroy
		employee.destroy
	end

	private
	def employee_params
		params.require(:employees).permit(:first_name, :last_name, :department)
	end


	def before_checks 
		@employees = Employees.find(params[:id])
	end


end
