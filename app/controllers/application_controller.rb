class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :authenticate_employee!

	
  def after_sign_in_path_for(resource)
  	if resource.class.to_s.eql? "Employee"   
    	employee_path(resource)
    else	
    	admin_dashboard_url
    end	
  end
end
