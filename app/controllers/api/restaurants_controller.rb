module Api
	class RestaurantsController < ApplicationController
      before_action :set_restaurant, only: [:dishes_index, :show, :update, :destroy]
    
      # GET /restaurants
      def index
        @restaurants = Restaurant.all
        json_response(@restaurants)
      end
      
      def dishes_index
        @dishes = @restaurant.dishes
      end
    
      # POST /restaurants
      def create
        @restaurant = Restaurant.create!(restaurant_params)
        json_response(@restaurant)
      end
    
      # GET /restaurants/:id
      def show
        json_response(@restaurant)
      end
    
      # PUT /restaurants/:id
      def update
        @restaurant.update(restaurant_params)
        head :no_content
      end
    
      # DELETE /restaurants/:id
      def destroy
        @restaurant.destroy
        head :no_content
      end
    
      private
    
      def restaurant_params
        params.permit(:title, :dish_id)
      end
    
      def set_restaurant
        @restaurant = Restaurant.find(params[:id])
      end
    end
end