class AddImageNameToUsers < ActiveRecord::Migration[5.0]
  def change
    # Add the "image_name" column to the "users" table
    add_column :users, :image_name, :string
  end
end
