class ProductsController < ApplicationController
    def index
        @products = Product.all
    end
    
    def new
        @product = Product.new
    end
    
    def create
        @product = Product.new
        @product.name = params[:product][:name]
        @product.description = params[:product][:description]
        @product.picture_url = params[:product][:picture_url]
        @product.price = params[:product][:price]
        @product.category_id = params[:product][:category_id]
        
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
    
    def buy
    end
    
    def create_review
        @review = Review.new
        @review.rating = params[:rating]
        @review.text = params[:text]
        @review.username = params[:username]
        @review.product_id = params[:id]
        @review.save
        
        redirect_to "/products/#{@review.product_id}"
    end
end
