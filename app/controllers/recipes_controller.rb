class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def create
    # creates recipe instance
    @recipe = Recipe.create(reccipe_params)
    # if, when the user clicks submit the crecipe is saved
    # then go back to the show page of the newly created cocktail
    # which would be recipe_path(@recipe)
    if @recipe.save
      redirect_to recipe_path(@recipe) # passing an instance of cocktail
    else
    # if recipe isnt created (bcz of an error or something)
    # stay on the page and show errors to user
      render :new
    end
  end

  def new
    @recipe = Recipe.new
  end
end

private

  def recipe_params
    params.require(:recipe).permit(:name, :description)
  end
