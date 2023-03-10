class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
          :trackable
  has_many :catagories, foreign_key: :author_id
  has_many :btransactions, foreign_key: :author_id
  validates :name, presence: true, length: { maximum: 255 }
  has_one_attached :photo
end
