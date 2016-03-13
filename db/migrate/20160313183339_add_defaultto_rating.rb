class AddDefaulttoRating < ActiveRecord::Migration
  def change
    change_column :user_ratings, :rating, :integer, :default => 0
  end
end
