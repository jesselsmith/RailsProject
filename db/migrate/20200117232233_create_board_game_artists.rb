class CreateBoardGameArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :board_game_artists do |t|
      t.integer :board_game_id, null: false
      t.integer :artist_id, null: false
      t.timestamps
    end
  end
end
