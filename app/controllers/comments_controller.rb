class CommentsController < ApplicationController

  before_action :query ,	only: [:index, :new, :create, :show]
  
	def index

	end

	def new
		@comment= Comment.new 
	
	end

	def create
		@comment = @query.comments.new(comment_params)
		@comment.commenter = current_employee	
		if @comment.save 
		  redirect_to employee_query_path(@comment.commenter, @query)
		else
			render "new"
		end
		def show
			
		end
	end

	
	private
		def query
			@query = Query.find(params[:query_id])
		end

		def comment_params
      params.require(:comment).permit(:description)
    end
end
