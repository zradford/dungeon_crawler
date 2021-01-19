class DropOldTables < ActiveRecord::Migration[6.1]
  def change
    drop_table(:effects)
    drop_table(:pickups)
    drop_table(:skills)
    drop_table(:specials)
    drop_table(:spells)

  end
end
