class Skill < ActiveRecord::Base

	has_and_belongs_to_many :employees

	validates :title , :presence => {:message=> "Plese Enter The Title "} 
	validates :description , :presence => true ,
	 									:length=> {:minimum => 10, :message=>"minimum 50 Words"}
end
