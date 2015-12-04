 
class PosterSerializer < ActiveModel::Serializer

	
	
  attributes :id, :title, :description, :units_in_stock, :credits, :price, :productUrl, :shippingDetails

  has_many :sizes
  has_many :papers
end
