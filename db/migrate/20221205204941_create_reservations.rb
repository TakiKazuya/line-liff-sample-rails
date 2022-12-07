class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.datetime :reserved_at, null: false
      t.references :line_user, null: false, type: :string, foreign_key: true

      t.timestamps
    end
  end
end
