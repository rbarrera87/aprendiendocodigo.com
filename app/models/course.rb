class Course < ActiveRecord::Base

	validate :name, presence: true
	
end
