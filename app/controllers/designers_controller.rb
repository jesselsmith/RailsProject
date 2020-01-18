class DesignersController < ApplicationController
  def index
    @designers = Designer.all
  end

  def show
  end

  def new
    @designer = designer.new
  end

  def create
    @designer = designer.new(designer_params)
    if @designer.save
      redirect_to @designer
    else
      render :new
    end
  end

  def edit
  end

  def update
    @designer.update(designer_params)
    if @designer.save
      redirect_to @designer
    else
      render :edit
    end
  end

  def destroy
    @designer.destroy
    redirect_to designers_path
  end

  private

  def set_designer
    @designer = find(Designer)
  end

  def designer_params
    params.require(:designer).permit(:name)
  end
end
