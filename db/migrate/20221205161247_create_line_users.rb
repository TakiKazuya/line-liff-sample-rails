class CreateLineUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :line_users, id: false do |t|
      t.string :id, null: false, primary_key: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
