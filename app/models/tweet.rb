class Tweet < ApplicationRecord
  mount_uploader :image, ImageUploader

  # タイトルとカロリーのサーチ可能
  def self.search(search)
    return Tweet.all unless search
    Tweet.where('title LIKE(?) OR data LIKE(?)', "%#{search}%", "%#{search}%" )
  end

  # titleカラムの文字制限
  validates :title,
    length: { minimum: 1, maximum: 20 }

  # textカラムの文字制限
  validates :text,
  length: { maximum: 80 }

  # dataカラムの数字のみの制限
  validates :data,
  numericality: { only_integer: true}

  # iamgeカラムの投稿制限
  validates :image, presence: true

  

end


