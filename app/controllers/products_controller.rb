class ProductsController < ApplicationController
    before_action :authenticate_user!, except: [:home,:about,:contact]

    def index
        @products = Product.all
    end
    
    def show
        @product = Product.find(params[:id])
    end
    
    def new
    end
    
    def create    
    end
    
    def edit
    end
    
    def update
    end
    
    def delete
    end
 
    def product_params
        params.require(:product).permit(:name,:description,:image,:mrp,:selling_price,:discount,:discount_type,:category_id)
    end
   
end
