class StudentSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :stream
end
