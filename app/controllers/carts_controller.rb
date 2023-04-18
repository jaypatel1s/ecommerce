class CartsController < ApplicationController
    before_action :authenticate_user!, except: [:home,:about,:contact]
    def show
    end
  
    def checkout
    end
end
