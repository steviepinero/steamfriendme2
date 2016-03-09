User.create!([
  {nickname: "RenaNickname", name: "Renan", rating: nil, user_profile: "http://steamcommunity.com/id/the_real_renan/", user_image: "https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/29/2945bd0cc98343ea493cdc67b2f46ad6ba1af3f0_medium.jpg", user_location: "896, FL, US", uid: "76561198287309916", provider: "steam"},
  {nickname: "SteveC", name: "First and foremost", rating: nil, user_profile: "http://steamcommunity.com/id/SteveChen/", user_image: "https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/49/49e784b910fb21741a6e39d59bc7a7c609afea03_medium.jpg", user_location: "US", uid: "76561197994786195", provider: "steam"}
])

Game.create!([
  {game_name: "Shakes and Fidget", appid: "438040", playtime: "68", img_icon_url: "060712054f7cb6cb68ca721543d811fa9e1dd099", user_id: 1},
  {game_name: "Dota 2", appid: "570", playtime: "33", img_icon_url: "0bbb630d63262dd66d2fdd0f7d37e8661a410075", user_id: 1},
  {game_name: "Rocket League", appid: "252950", playtime: "7997", img_icon_url: "217214f6bd922a8da8bdd684aa94b1ef8e7724d1", user_id: 2},
  {game_name: "Team Fortress 2", appid: "440", playtime: "372356", img_icon_url: "e3f595a92552da3d664ad00277fad2107345f743", user_id: 2},
  {game_name: "The Ship: Remasted", appid: "383790", playtime: "19", img_icon_url: "de54185795014585bc27f4649f85f926f7ea63e5", user_id: 2}
])
