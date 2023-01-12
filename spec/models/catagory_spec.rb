require 'rails_helper'

RSpec.describe Catagory, type: :model do
  before :each do
    @user = User.create!(name: 'meshu', email: 'meshu0001@gmial.com', password: '12345678')
  end
  it 'should have name and author' do
    catagory = Catagory.new
    catagory.save
    expect(catagory).to_not be_valid
  end

  it 'should have no trasaction yet' do
    catagory = Catagory.new(name: 'Food', author_id: @user.id)
    catagory.save

    expect(catagory.transaction_amount).to be 0
  end
  it 'should have a name less than or equal to 255 character' do
    catagory = Catagory.create(name: 'Food' * 70, author_id: @user.id)
    expect(catagory).to_not be_valid
  end
  it 'should have one trasaction yet' do
    catagory = Catagory.create(name: 'Food', author: @user)
    transaction = Btransaction.create(name: 'Fooding shaye', amount: 100, author_id: @user.id)
    transaction.catagories << catagory
    expect(catagory.transaction_amount).to be 100
  end
end
