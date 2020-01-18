class CreateBoardGameDesigners < ActiveRecord::Migration[6.0]
  def change
    create_table :board_game_designers do |t|
      t.integer :board_game_id
      t.integer :designer_id
      t.timestamps
    end
  end
end
