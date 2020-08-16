class Tweet < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
  has_many :reviews

  def self.search(search)
    if search
      Tweet.where(['tweetname LIKE(?) OR tag LIKE(?)', "%#{search}%", "%#{search}%"])
    else
      Tweet.all
    end
  end
end
