class CategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = category.new
  end

  def create
    @category = category.new(category_params)
    if @category.save
      redirect_to @category
    else
      render :new
    end
  end

  def edit
  end

  def update
    @category.update(category_params)
    if @category.save
      redirect_to @category
    else
      render :edit
    end
  end

  def destroy
    @category.destroy
    redirect_to root_path
  end

  private

  def set_category
    @category = find(Category)
  end

  def category_params
    params.require(:category).permit(:name, :description)
  end
end
