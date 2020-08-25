require 'rails_helper'

RSpec.describe Tweet, type: :model do
  describe '#create' do
    context 'can save' do
      # textとimage、tweetnameとalc,urlが存在すれば登録できること
      it "is valid with a text, image, tweetname, alc, url" do
        expect(build(:tweet)).to be_valid
      end
    end

    context 'can not save' do
      # textとimageがないと登録できないこと
      it 'is invalid without text and image' do
        tweet = build(:tweet, text: nil, image: nil)
        tweet.valid?
        expect(tweet.errors[:text]).to include("can't be blank")
      end
    end
  end
end