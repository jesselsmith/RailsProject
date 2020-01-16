class CreateBoardGameBoardGameMakers < ActiveRecord::Migration[6.0]
  def change
    create_table :board_game_board_game_makers do |t|
      t.integer :board_game_id, null: false
      t.integer :board_game_maker_id, null: false

      t.timestamps
    end
  end
end
