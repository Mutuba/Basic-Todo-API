# app/controllers/items_controller.rb
module Api
  module V1
    class ItemsController < ApplicationController
      before_action :set_todo, only: %i[index show create update destroy]
      before_action :set_todo_item, only: %i[show destroy update]
    
      # GET /todos/:todo_id/items
      def index
        json_response(@todo.items)
      end
    
      # GET /todos/:todo_id/items/:id
      def show
        json_response(@item)
      end
    
      # POST /todos/:todo_id/items
      def create
        @todo.items.create!(item_params)
        json_response(@todo, :created)
      end
    
      # PUT /todos/:todo_id/items/:id
      def update
        @item.update(item_params)
        head :no_content
      end
    
      # DELETE /todos/:todo_id/items/:id
      def destroy
        @item.destroy
        head :no_content
      end
    
      private
    
      def item_params
        params.require(:item).permit(:name, :done)
      end
    
      def set_todo
        @todo = Todo.find(params[:todo_id])
      end
    
      def set_todo_item
        @item = @todo.items.find_by!(id: params[:id]) if @todo
      end
    end
  end
end

