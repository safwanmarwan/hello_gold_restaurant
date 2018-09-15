class Dish < ActiveRecord::Base
    has_and_belongs_to_many :restaurants
    
    validates_presence_of :name
end
