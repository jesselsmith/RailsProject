module BoardGameMakersHelper
  def bg_maker_path(bg_maker, affix_string, prefix_string = '')
    send(prefix_string + bg_maker.class.name.underscore + '_' + affix_string, bg_maker)
  end
end
