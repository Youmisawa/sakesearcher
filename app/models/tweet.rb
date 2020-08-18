class Tweet < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
  has_many :reviews
  has_many :tweet_tags, dependent: :destroy
  has_many :tags, through: :tweet_tags

  mount_uploader :image, ImageUploader

  def self.search(search)
    if search
      Tweet.where(['tweetname LIKE(?)', "%#{search}%"])
    else
      Tweet.all
    end
  end
end
