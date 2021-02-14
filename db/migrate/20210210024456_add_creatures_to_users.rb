class AddCreaturesToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :creatures, :user_id, :integer
  end
end
