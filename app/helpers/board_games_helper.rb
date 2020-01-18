module BoardGamesHelper
  def get_designer_index(b)
    Designer.all.find_index(b.object)
  end

  def is_column_limit?(b)
    (get_designer_index(b) % (Designer.all.size / 3)) == 0
  end

end
