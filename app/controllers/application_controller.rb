class ApplicationController < ActionController::Base
  private
  def id_sym_from_class(class_object)
    "#{class_object.to_s.underscore}_id".to_sym
  end

  def find(class_object)
    nested_resource_id = params[id_sym_from_class(class_object)]
    if nested_resource_id
      class_object.find_by(id: nested_resource_id)
    else
      class_object.find_by(id: params[:id])
    end
  end
end
