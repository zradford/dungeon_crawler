class CreatePickups < ActiveRecord::Migration[6.1]
  def change
    create_table :pickups do |t|
      t.string :name
      t.text :description
      t.string :type

      t.timestamps
    end
  end
end
