class AddAuthorToBtransactions < ActiveRecord::Migration[7.0]
  def change
    add_reference :btransactions, :author, null: false, foreign_key: { to_table: :users }
  end
end
