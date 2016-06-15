class Branch < ActiveRecord::Base
	belongs_to :company	

  geocoded_by :full_address 
  after_validation :geocode 

  def full_address

  	[address_line_1, city, state,"pincode",zipcode, country].compact.join(', ')
  end

end
