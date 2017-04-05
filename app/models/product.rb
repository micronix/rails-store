class Product < ApplicationRecord
    validates :name, :picture_url, :price, presence: true
    has_many :reviews
    
    def rating
        if reviews.count == 0
            return 0
        end
        sum = 0
        reviews.each do |review|
            sum = sum + review.rating
        end
        return sum / reviews.count
    end
end
