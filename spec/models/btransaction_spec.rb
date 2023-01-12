require 'rails_helper'

RSpec.describe Btransaction, type: :model do
  before :each do
    @user = User.create!(name: 'Mani', email: 'mani@outlook.com', password: '78945616566')
  end
  it 'should have name, author and amount' do
    transaction = Btransaction.new
    transaction.save
    expect(transaction).to_not be_valid
  end
  it 'should have name' do
    transaction = Btransaction.new(amount: 45, author: @user)
    transaction.save
    expect(transaction).to_not be_valid
  end
  it 'should have amount' do
    transaction = Btransaction.new(name: 'meshu', author: @user)
    transaction.save
    expect(transaction).to_not be_valid
  end
  it 'should have a name less than or equal to 255 character' do
    transaction = Btransaction.new(name: 'meshu' * 60, amount: 100, author: @user)
    transaction.save
    expect(transaction).to_not be_valid
  end
end
