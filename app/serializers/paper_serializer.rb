class PaperSerializer < ActiveModel::Serializer
  attributes :paperName, :paperMeta, :aditionalPrice

  belongs_to :poster

end
