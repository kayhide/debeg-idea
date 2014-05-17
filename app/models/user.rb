class User < ActiveRecord::Base
  has_many :ideas
  has_many :given_iines, class_name: 'Iine', foreign_key: :giver_id
  has_many :taken_iines, class_name: 'Iine', foreign_key: :taker_id

  def self.find_or_create_from_auth_hash(auth_hash)
    provider = auth_hash[:provider]
    uid = auth_hash[:uid]
    nickname = auth_hash[:info][:nickname]
    image_url = auth_hash[:info][:image]

    User.find_or_create_by(provider: provider, uid: uid) do |user|
      user.nickname = nickname
      user.image_url = image_url
    end
  end
end
