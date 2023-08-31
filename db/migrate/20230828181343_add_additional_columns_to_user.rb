class AddAdditionalColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :location, :string
    add_column :users, :picture_url, :string, default: "../../app/assets/images/profile_ph.jpeg"
  end
end
