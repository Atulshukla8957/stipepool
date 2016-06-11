class WorkShift < ActiveRecord::Base

	has_many :employees

	validates :start_time ,:end_time, :presence => {:message=>"Field Must Be present ?"}
	validates	:title , :presence => true
  before_save :time_diff
    
		def time_diff
	  	diff_array = [self.start_time,self.end_time].collect{|a| a.split(":").collect{|s| s.to_i}}
	  	diff_array[1][1]+=60
	  	diff_array[1][0]-=1
	  	diff_hor = diff_array[1][0] - diff_array[0][0]
	  	diff_min = diff_array[1][1] - diff_array[0][1]

	  	diff_hor += (diff_min / 60)
	  	diff_min = (diff_min % 60)
	  	self.duration  = "#{diff_hor.to_s.rjust(2,'0')}:#{diff_min.to_s.rjust(2,'0')}"
 		end	

 		def self.time_calc
  	  (0..23).to_a.collect{|a| a.to_s.rjust(2,"0")}.collect{ |a| ["00","15","30","45"].collect{ |b| "#{a}:#{b}"  }  }.flatten
    end 
	
end
