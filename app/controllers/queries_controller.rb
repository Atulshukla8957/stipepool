class QueriesController < InheritedResources::Base
 before_action :employee , only: [:index ,:new]
 before_action :query , only: [:show ]

	def index
		@queries = Query.all
	end

	def create 
		@query = Query.new(query_params)
		@query.creater = current_employee
		if @query.save
			redirect_to employee_queries_path
		else
			render "new"
		end
	end	
 
	def show
 
	end



  private

  def employee
  	@employee =Employee.find(params[:employee_id])
  end

  def query
  	@query = Query.find(params[:id])
  end
  
  def query_params
    params.require(:query).permit(:title, :description)
  end
end

