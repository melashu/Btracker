class Catagory < ApplicationRecord
  belongs_to :author, class_name: :User, foreign_key: :author_id
  has_many :catagory_transactions
  has_many :btransactions, through: :catagory_transactions

  validates :name, presence: true, length: { maximum: 255 }

  has_one_attached :icon

  def transaction_amount
    sum = 0
    btransactions.each do |transaction|
      sum += transaction.amount
    end
    sum
  end
end
