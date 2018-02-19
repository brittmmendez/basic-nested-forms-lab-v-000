class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredient.build
    @recipe.ingredient.build
  end

  def create
    Recipe.create(recipe_params)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title)

  end
end
