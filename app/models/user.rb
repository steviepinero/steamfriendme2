class User < ActiveRecord::Base
  has_many :games
  def self.create_with_omniauth(auth)
  create! do |user|
    user.provider = auth["provider"]
    user.uid = auth["uid"]
    user.nickname = auth["info"]["nickname"]
    user.name = auth.info['name']
    user.user_profile = auth.info['urls']['Profile']
    user.user_image = auth.info['image']
    user.user_location = auth.info['location']
  end
end

end
