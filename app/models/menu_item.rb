class MenuItem < ApplicationRecord
  belongs_to :restaurant
  has_many :favorites, dependent: :destroy
end
