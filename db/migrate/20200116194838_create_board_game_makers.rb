class CreateBoardGameMakers < ActiveRecord::Migration[6.0]
  def change
    create_table :board_game_makers do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.timestamps
    end
  end
end
