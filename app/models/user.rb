class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  validates :nickname , presence: true
  # メールアドレスのバリデーション
  validates :email, {presence: true}
  validates :email, format: { with:/\A\S+@\S+\.\S+\z/}
  validates :password, format: { with:/\A[0-9]+\z/}
end
