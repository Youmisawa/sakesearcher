class Tweet < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
  has_many :reviews
  has_many :tweet_tags, dependent: :destroy
  has_many :tags, through: :tweet_tags
  has_many :likes
  has_many :users, through: :likes

  mount_uploader :image, ImageUploader

  def liked_by?(current_user)
    likes.where(user_id: user.id).exists?
  end
  
  def self.search(search)
    if search
      Tweet.where(['tweetname LIKE(?)', "%#{search}%"])
    else
      Tweet.all
    end
  end
end
