class CreateCreatures < ActiveRecord::Migration[6.1]
  def change
    create_table :creatures do |t|
      t.string :type
      t.string :name

      t.integer :max_health
      t.integer :speed

      t.integer :strength
      t.integer :dexterity
      t.integer :stability
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma

      t.timestamps
    end
  end
end
