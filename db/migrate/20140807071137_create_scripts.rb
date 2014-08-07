class CreateScripts < ActiveRecord::Migration
  def change
    create_table :scripts do |t|
      t.integer :user_id, null: false, default: 0
      t.string  :name,    null: false, default: ""
      t.string  :github
      t.text    :description

      t.timestamps
    end
  end
end
