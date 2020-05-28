class Post < ApplicationRecord
  belongs_to :user

  # morning,lunch,dinnerカラムの数字のみの制限
  validates :morning,:lunch,:dinner,
  numericality: { only_integer: true}
  # dayカラムの数字のみの制限
  validates :day, presence: true
end
