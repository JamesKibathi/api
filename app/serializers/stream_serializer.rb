class StreamSerializer < ActiveModel::Serializer
  attributes :id
  has_many :students
end
