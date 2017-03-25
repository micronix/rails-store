class ProductsController < ApplicationController
    def index
        @products = Product.all
    end
    
    def new
    end
    
    def create
        @product = Product.new
        @product.name = params[:name]
        @product.description = params[:description]
        @product.picture_url = params[:picture_url]
        @product.price = params[:price]
        @product.save
        
        redirect_to '/products'
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
        @product.save
        
        redirect_to '/products'
    end
    
    def show
        @product = Product.find params[:id]
    end
end
