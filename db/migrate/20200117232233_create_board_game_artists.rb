class CreateBoardGameArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :board_game_artists do |t|
      t.integer :board_game_id
      t.integer :artist_id
      t.timestamps
    end
  end
end
