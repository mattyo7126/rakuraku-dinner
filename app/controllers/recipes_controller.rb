class RecipesController < ApplicationController

  def index
    @recipes = Recipe.includes(:user).order('created_at DESC')
  end
  
  def new
    @recipe = Recipe.new
  end

end
