class AddTitleToBoardGames < ActiveRecord::Migration[6.0]
  def change
    add_column :board_games, :title, :string
  end
end
