class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :name
      t.string :rating
      t.string :user_profile
      t.string :user_image
      t.string :user_location
      t.string :uid
      t.string :provider
    end
  end
end
