class Product < ApplicationRecord
    validates :name, :picture_url, :price, presence: true
end
