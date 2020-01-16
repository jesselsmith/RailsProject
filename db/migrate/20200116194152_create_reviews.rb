class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :rating, null: false
      t.text :review_text
      t.integer :user_id, null: false
      t.integer :board_game_id, null: false

      t.timestamps
    end
  end
end
