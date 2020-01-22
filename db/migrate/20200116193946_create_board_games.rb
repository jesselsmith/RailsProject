class CreateBoardGames < ActiveRecord::Migration[6.0]
  def change
    create_table :board_games do |t|
      t.string :title, null: false
      t.integer :min_players, null: false
      t.integer :max_players, null: false
      t.integer :min_playing_time, null: false
      t.integer :max_playing_time, null: false
      t.string :age_range, null: false

      t.timestamps
    end
  end
end
