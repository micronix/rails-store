class ProductsController < ApplicationController
    def index
        @products = Product.all
    end
    
    def new
        @product = Product.new
    end
    
    def create
        @product = Product.new
        @product.name = params[:name]
        @product.description = params[:description]
        @product.picture_url = params[:picture_url]
        @product.price = params[:price]
        @product.category_id = params[:category_id]
        
        if @product.save
            redirect_to '/products'
        else
            render action: 'new'
        end
    end
    
    def edit
        @product = Product.find params[:id]
    end

    def update
        @product = Product.find params[:id]
        @product.name = params[:name]
        @product.description = params[:description]
        @product.picture_url = params[:picture_url]
        @product.price = params[:price]
        @product.category_id = params[:category_id]
        
        if @product.save
            redirect_to '/products'
        else
            render action: 'edit'
        end
    end
    
    def show
        @product = Product.find params[:id]
    end
end
