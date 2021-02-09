class Restaurant < ApplicationRecord
    has_many :menu_items, dependent: :destroy
    has_many :reviews, dependent: :destroy
    # has_many :reviewers, through: :reviews, source: :user


    def avg_score
        reviews.average(:rating).round(2).to_f
    end

end


