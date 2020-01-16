class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name

      t.string :image_url
      t.integer :armor_class
      t.integer :hit_points
      t.integer :str
      t.integer :dex
      t.integer :con
      t.integer :int
      t.integer :wis
      t.integer :cha
      t.string :save_proficiencies
      t.string :skill_proficiencies
      t.text :special_abilities
      t.text :actions
      t.string :alignment
      t.string :hit_dice
      t.string :size
      t.string :type
      t.string :subtype
      t.string :languages
      t.string :senses
      t.integer :walk_speed
      t.integer :climb_speed
      t.integer :swim_speed
      t.integer :fly_speed
      t.integer :burrow_speed
      t.string :challenge_rating
      t.timestamps
    end
  end
end
