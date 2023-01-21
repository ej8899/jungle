class Admin::DashboardController < ApplicationController
  before_action :basic

  def basic
    authenticate_or_request_with_http_basic do |id, password|
      id == ENV['ADMIN_USER'] && password == ENV['ADMIN_PASSWORD']
    end
  end

  def show
    @products = Product.all
    @categories = Category.all
  end
end
