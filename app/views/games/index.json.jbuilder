json.array!(@games) do |game|
  json.extract! game, :id, :game_name, :appid, :playtime, :img_icon_url, :user_id
  json.url game_url(game, format: :json)
end
