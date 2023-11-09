class Product < ApplicationRecord
    validates :description, presence: true
    validates :title, uniqueness: true, presence: true
    validates :price, numericality: { greater_than_or_equal_to: 0.01 }, presence: true
    validates :image_url, allow_blank: true, format: {
        with: %r{\.(gif|jpg|jpeg|png)\z}i,
        message: 'must be a URL for GIF, JPG, JPEG, or PNG image.'
    }
end
