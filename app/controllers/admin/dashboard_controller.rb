class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: 'Jungle', password: 'book'
  def show
    @products = Product.order(:category_id).all
  end
end