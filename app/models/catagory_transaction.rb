class CatagoryTransaction < ApplicationRecord
  belongs_to :catagory
  belongs_to :btransaction
end
