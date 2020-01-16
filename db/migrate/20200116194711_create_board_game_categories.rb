class CreateBoardGameCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :board_game_categories do |t|
      t.integer :board_game_id, null: false
      t.integer :category_id, null:false

      t.timestamps
    end
  end
end
