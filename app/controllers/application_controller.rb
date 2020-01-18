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

  def set_board_game
    @board_game = find(BoardGame)
  end

  def get_nested_resource
    if params[:board_game_id]
      find(BoardGame)
    elsif params[:user_id]
      find(User)
    elsif params[:category_id]
      find(Category)
    elsif params[:designer_id]
      find(Designer)
    elsif params[:publisher_id]
      find(Publisher)
    elsif params[:artist_id]
      find(Artist)
    end
  end
end
