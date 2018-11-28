class ConnectionSerializer < ActiveModel::Serializer
  attributes :id, :location, :gender, :hair, :clothes, :car, :text
end
