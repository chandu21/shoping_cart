class Category < ActiveRecord::Base
	#relations
	has_many :brands 
end
