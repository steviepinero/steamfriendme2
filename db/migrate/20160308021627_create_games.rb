class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :game_name
      t.string :appid
      t.string :playtime
      t.string :img_icon_url
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
