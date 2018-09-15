class Restaurant < ActiveRecord::Base
    has_many :dishes
    
    validates_presence_of :name
end
