class Restaurant < ActiveRecord::Base
    has_many :dishes, dependent: :destroy
    
    validates_presence_of :name
end
