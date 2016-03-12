class CreateUserRatings < ActiveRecord::Migration
  def change
    create_table :user_ratings do |t|
      t.integer :rating
      t.integer :rating_user_id
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
