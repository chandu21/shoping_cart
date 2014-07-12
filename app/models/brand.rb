class Brand < ActiveRecord::Base
	#relations
	has_many :products
	belongs_to :category
	accepts_nested_attributes_for :products
end
