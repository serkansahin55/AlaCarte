class Restaurant < ApplicationRecord
    has_many :menu_items, dependent: :destroy
    has_many :reviews, dependent: :destroy
    # has_many :reviewers, through: :reviews, source: :user
end


