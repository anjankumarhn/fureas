class User < ActiveRecord::Base
     mount_uploader :image, ImageUploader
  def self.create_with_omniauth(auth)
   create! do |user|
    user.provider = auth['provider']
    user.uid = auth['uid']
    user.oauth_token = auth['oauth_token']
    if auth['info']
      user.name = auth['info']['name'] || ""
    end
  end
end
end
