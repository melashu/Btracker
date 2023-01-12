class CreateCatagoryTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :catagory_transactions do |t|
      t.references :catagory, null: false, foreign_key: true
      t.references :btransaction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
