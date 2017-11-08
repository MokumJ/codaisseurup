class CategoriesController < ApplicationController
  
  def show
  @category = @event.categories
end
end
