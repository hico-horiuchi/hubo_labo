class AddUserIdIndex < ActiveRecord::Migration
  def change
    add_index :bots,     :user_id
    add_index :adapters, :user_id
    add_index :scripts,  :user_id
  end
end
