User.create!([
  {nickname: "RenaNickname", name: "Renan", rating: nil, user_profile: "http://steamcommunity.com/id/the_real_renan/", user_image: "https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/29/2945bd0cc98343ea493cdc67b2f46ad6ba1af3f0_medium.jpg", user_location: "896, FL, US", uid: "76561198287309916", provider: "steam"},
  {nickname: "SteveC", name: "First and foremost", rating: nil, user_profile: "http://steamcommunity.com/id/SteveChen/", user_image: "https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/49/49e784b910fb21741a6e39d59bc7a7c609afea03_medium.jpg", user_location: "US", uid: "76561197994786195", provider: "steam"},
  {nickname: "Stashbuster", name: "Stevie p", rating: nil, user_profile: "http://steamcommunity.com/id/steviethewizard/", user_image: "https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/a7/a7249ff5d376a9c98cd9fdce7f1c37eb825634ff_medium.jpg", user_location: "778, FL, US", uid: "76561198059152531", provider: "steam"}
  {nickname: "fakeuser2", name: "fake user", rating: nil, user_profile: "http://steamcommunity.com/id/fakeuserurl/", user_image: "https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/49/49e784b910fb21741a6e39d59bc7a7c609afea03_medium.jpg", user_location: "US", uid: "76561197994786191", provider: "steam"}
  ])

Game.create!([
  {game_name: "Shakes and Fidget", appid: "438040", playtime: "68", img_icon_url: "060712054f7cb6cb68ca721543d811fa9e1dd099", user_id: 1},
  {game_name: "Dota 2", appid: "570", playtime: "33", img_icon_url: "0bbb630d63262dd66d2fdd0f7d37e8661a410075", user_id: 1},
  {game_name: "Rocket League", appid: "252950", playtime: "7997", img_icon_url: "217214f6bd922a8da8bdd684aa94b1ef8e7724d1", user_id: 2},
  {game_name: "Team Fortress 2", appid: "440", playtime: "372356", img_icon_url: "e3f595a92552da3d664ad00277fad2107345f743", user_id: 2},
  {game_name: "The Ship: Remasted", appid: "383790", playtime: "19", img_icon_url: "de54185795014585bc27f4649f85f926f7ea63e5", user_id: 2},
  {game_name: "The Binding of Isaac", appid: "113200", playtime: "713", img_icon_url: "383cf045ca20625db18f68ef5e95169012118b9e", user_id: 3},
  {game_name: "Sid Meier's Civilization V", appid: "8930", playtime: "2731", img_icon_url: "fbe80c4743e226f0bf65559c91b12953d4446808", user_id: 3},
  {game_name: "Counter-Strike: Global Offensive", appid: "730", playtime: "902", img_icon_url: "69f7ebe2735c366c65c0b33dae00e12dc40edbe4", user_id: 3},
  {game_name: "Prison Architect", appid: "233450", playtime: "208", img_icon_url: "c166c7911beec4d63a74cdddf25f26b73c84556b", user_id: 3},
  {game_name: "XCOM: Enemy Unknown", appid: "200510", playtime: "724", img_icon_url: "48be2fee1d0d511b5c7313e1359beafd36ea92ed", user_id: 3},
  {game_name: "Starbound", appid: "211820", playtime: "1671", img_icon_url: "9420b506fe5b00fd02d9005f1f5555358e3f71f7", user_id: 3}
  {game_name: "Team Fortress 2", appid: "440", playtime: "372356", img_icon_url: "e3f595a92552da3d664ad00277fad2107345f743", user_id: 3},
  {game_name: "The Ship: Remasted", appid: "383790", playtime: "19", img_icon_url: "de54185795014585bc27f4649f85f926f7ea63e5", user_id: 3}
  ])
