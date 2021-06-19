class Toy < ApplicationRecord
    validates :brand, presence: true
    validates :toy_name, presence: true     
    validates :price, presence: true, numericality: {:greater_than => 0}
    validates :quantity, presence: true, numericality: {:greater_than => 0}
    validates :description, presence: true  
    validates :image_url, presence: true  
end
