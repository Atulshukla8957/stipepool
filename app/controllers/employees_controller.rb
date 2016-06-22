class EmployeesController < ApplicationController

	
	def index
		@employee = Employee.all
		@branch = Branch.find(current_employee.branch_id)
		@company =Company.find((current_employee.company_id))

	end

	def show
		@employee = Employee.find(params[:id])

		
	end


end
