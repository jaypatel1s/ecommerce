class ShopsController < ApplicationController
  before_action :authenticate_user!, except: [:home,:about,:contact]

  def shop
  end
end
