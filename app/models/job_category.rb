class JobCategory < ActiveRecord::Base

has_many :employees
	
	validates :title ,:presence => true 
end
