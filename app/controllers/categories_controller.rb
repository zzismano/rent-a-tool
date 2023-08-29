class CategoriesController < ApplicationController

  def new
    @category = Category.new
  end

  def create
    @category = Category.new
  end
end
