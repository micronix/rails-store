class CategoriesController < ApplicationController
    def index
        @categories = Category.all
    end
    
    def new
        @category = Category.new
    end
    
    def create
        @category = Category.new
        @category.name = params[:name]
        
        if @category.save
            redirect_to '/categories'
        else
            render action: 'new'
        end
    end
    
    def edit
        @category = Category.find params[:id]
    end
    
    def update
        @category = Category.find params[:id]
        @category.name = params[:name]
        
        if @category.save
            redirect_to '/categories'
        else
            render action: 'edit'
        end
    end
end
