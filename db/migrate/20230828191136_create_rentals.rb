class CreateRentals < ActiveRecord::Migration[7.0]
  def change
    create_table :rentals do |t|
      t.date :start_date
      t.date :end_date
      t.references :user, null: false, foreign_key: true
      t.references :tool, null: false, foreign_key: true
      t.text :comment

      t.timestamps
    end
  end
end
