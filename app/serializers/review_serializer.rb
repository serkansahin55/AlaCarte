class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :text, :rating

  has_one :user
  has_one :restaurant
end
