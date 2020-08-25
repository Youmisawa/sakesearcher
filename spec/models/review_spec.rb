require 'rails_helper'

RSpec.describe Review, type: :model do
  describe '#create' do
    context 'can save' do
      it 'is valid with comment' do
        expect(build(:review)).to be_valid
      end
    end

    context 'can not save' do
      it 'is invalid without tweet_id' do
        review = build(:review, tweet_id: nil)
        review.valid?
        expect(review.errors[:tweet]).to include("must exist")
      end

      it 'is invalid without user_id' do
        review = build(:review, user_id: nil)
        review.valid?
        expect(review.errors[:user]).to include("must exist")
      end
    end
  end
end