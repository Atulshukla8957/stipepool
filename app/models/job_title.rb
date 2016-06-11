class JobTitle < ActiveRecord::Base

	has_many :employees


	validates :title , :presence=> true 
	validates :description ,:presence => {:minimum =>50 ,:message=>"Please Provide Your Description in Minimum 50 Words ."} 
	validates :specification , :presence=> true 
	validates :note , :presence=> {:maixmum => 100 , :message=> "Please Provide Your Note in Maximum 100 Words ."}
end
