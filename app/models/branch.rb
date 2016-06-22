class Branch < ActiveRecord::Base
	belongs_to :company	
	has_many :employees	

  geocoded_by :full_address 
  after_validation :geocode 

  def full_address

  	[address_line_1, city, state,zipcode, country].compact.join(', ')
  end



end
