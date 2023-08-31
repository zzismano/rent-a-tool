class CreateTools < ActiveRecord::Migration[7.0]
  def change
    create_table :tools do |t|
      t.string :name
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.string :picture_url
      t.decimal :price, scale: 2, precision: 8
      t.boolean :availability
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
