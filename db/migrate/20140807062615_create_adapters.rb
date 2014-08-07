class CreateAdapters < ActiveRecord::Migration
  def change
    create_table :adapters do |t|
      t.integer :user_id, null: false, default: 0
      t.string  :name,    null: false, default: ""
      t.string  :github
      t.text    :description

      t.string  :service_name, null: false, default: ""
      t.string  :service_url

      t.timestamps
    end
  end
end
