class Btransaction < ApplicationRecord
  belongs_to :author, class_name: :User, foreign_key: :author_id
  has_many :catagory_transactions
  has_many :catagories, through: :catagory_transactions
  validates :name, presence: true, length: { maximum: 255 }
  validates :amount, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  # def as_json(option={})
  #   {:id=>self.id, :name=>self.name, :amount=>self.amount}
  # end
end
