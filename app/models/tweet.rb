class Tweet < ApplicationRecord
  mount_uploader :image, ImageUploader

  def self.search(search)
    return Tweet.all unless search
    Tweet.where('title LIKE(?) OR data LIKE(?)', "%#{search}%", "%#{search}%" )
  end

  validates :title,
    length: { minimum: 1, maximum: 20 }

  validates :data,
  numericality: { only_integer: true}

  validates :image, presence: true
  
end


