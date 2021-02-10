class MenuItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :description, :price, :favorited

  has_one :restaurant
end
