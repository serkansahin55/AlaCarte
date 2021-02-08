class MenuItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :description, :price

  has_one :restaurant
end
