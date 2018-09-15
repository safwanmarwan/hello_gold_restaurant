module Api
	class RestaurantsController < ApplicationController
      before_action :set_restaurant, only: [:dishes_index, :show, :update, :destroy]
    
      # GET /restaurants
      def index
        @restaurants = restaurant.all
        json_response(@restaurants)
      end
      
      def dishes_index
        @dishes = @restaurant.dishes
      end
    
      # POST /restaurants
      def create
        @restaurant = restaurant.create!(restaurant_params)
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
        params.permit(:title)
      end
    
      def set_restaurant
        @restaurant = restaurant.find(params[:id])
      end
    end
end