class MessageSerializer < ActiveModel::Serializer
  attributes :id, :text, :sender
end
