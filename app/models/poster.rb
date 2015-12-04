class Poster < ActiveRecord::Base

	has_many :sizes
	has_many :papers

	#accepts_nested_attributes_for :sizes
	#accepts_nested_attributes_for :papers

end
