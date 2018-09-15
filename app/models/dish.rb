class Dish < ActiveRecord::Base
    has_many :restaurant
    
    validates_presence_of :name
end
