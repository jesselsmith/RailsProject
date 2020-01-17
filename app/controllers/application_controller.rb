class ApplicationController < ActionController::Base
  private

  def find(class_object)
    class_object.find_by(id: params[:id])
  end
end
