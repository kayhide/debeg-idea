require 'spec_helper'

describe Iine do
  def create_user nickname
    attrs = {
      provider: 'twitter',
      uid: "uid-#{nickname}",
      info: {
        nickname: nickname,
        image: "http://example.com/#{nickname}.jpg"
      }
    }
    User.find_or_create_from_auth_hash(attrs)
  end

  describe 'relations' do
    before do
      @giver = create_user('giver')
      @taker = create_user('taker')
    end

    it 'works' do
      iine = Iine.create(giver: @giver, taker: @taker)
      expect(@giver.given_iines).to eq [iine]
      expect(@taker.taken_iines).to eq [iine]
    end
  end
end
