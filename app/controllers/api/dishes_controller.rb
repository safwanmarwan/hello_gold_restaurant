module Api
	class DishesController < ApplicationController
      before_action :set_dish, only: [:restaurants_index, :show, :update, :destroy]
    
      # GET /dishs
      def index
        @dishes = Dish.all
        json_response(@dishs)
      end
      
      def restaurants_index
        @restaurants = @dish.restaurants
      end
    
      # POST /dishs
      def create
        @dish = Dish.create!(dish_params)
        json_response(@dish)
      end
    
      # GET /dishs/:id
      def show
        json_response(@dish)
      end
    
      # PUT /dishs/:id
      def update
        @dish.update(dish_params)
        head :no_content
      end
    
      # DELETE /dishs/:id
      def destroy
        @dish.destroy
        head :no_content
      end
    
      private
    
      def dish_params
        params.permit(:title)
      end
    
      def set_dish
        @dish = Dish.find(params[:id])
      end
    end
end