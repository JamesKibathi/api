class StudentStreamSerializer < ActiveModel::Serializer
  attributes :id,:name
  belongs_to :stream
  
end
