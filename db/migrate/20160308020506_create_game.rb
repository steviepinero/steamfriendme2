class CreateGame < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :game_name
      t.string :appid
      t.integer :playtime
      t.string :img_icon_url
      t.string :user_id
    end
  end
end
