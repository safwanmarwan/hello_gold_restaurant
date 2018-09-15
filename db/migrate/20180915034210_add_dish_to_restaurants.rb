class AddDishToRestaurants < ActiveRecord::Migration
  def change
    add_reference :restaurants, :dish, index: true, foreign_key: true
  end
end
