class Restaurant < ActiveRecord::Base
    has_and_belongs_to_many :dishes
    
    validates_presence_of :name
end
