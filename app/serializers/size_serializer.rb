class SizeSerializer < ActiveModel::Serializer
  attributes :sizeName, :heightInInch, :widthInInch, :heightInCM, :widthInCM, :heightInFeet, :widthInFeet, :meta

  belongs_to :poster

  
end
