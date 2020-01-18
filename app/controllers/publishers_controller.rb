class PublishersController < ApplicationController
  def index
    @publishers = Publisher.all
  end

  def show
  end

  def new
    @publisher = publisher.new
  end

  def create
    @publisher = publisher.new(publisher_params)
    if @publisher.save
      redirect_to @publisher
    else
      render :new
    end
  end

  def edit
  end

  def update
    @publisher.update(publisher_params)
    if @publisher.save
      redirect_to @publisher
    else
      render :edit
    end
  end

  def destroy
    @publisher.destroy
    redirect_to publishers_path
  end

  private

  def set_publisher
    @publisher = find(Publisher)
  end

  def publisher_params
    params.require(:publisher).permit(:name)
  end
end
