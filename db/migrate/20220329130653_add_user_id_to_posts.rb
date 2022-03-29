class AddUserIdToPosts < ActiveRecord::Migration[7.0]
  def change
    # add_reference :posts, :user_id, null: false, foreign_key: true
    add_column :posts, :user_id, :integer
  end
end
