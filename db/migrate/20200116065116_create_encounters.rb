class CreateEncounters < ActiveRecord::Migration[6.0]
  def change
    create_table :encounters do |t|
      t.string :location
      t.text :environmental_effects
      t.string :map_url
      t.string :difficulty

      t.timestamps
    end
  end
end
