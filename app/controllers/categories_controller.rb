class CategoriesController < ApplicationController
  def index
  	@categories = Category.all
  end

  def show
  	@categories = Category.all
  	@category = Category.find_by(id: params[:id])
  end
end
