class User < ApplicationRecord
    # belongs_to :restaurant
    has_many :reviews
    has_many :favorites
end
