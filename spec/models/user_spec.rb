require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should have name, emial and password' do
    user = User.new
    user.save
    expect(user).to_not be_valid
  end
  it 'should have emial and password' do
    user = User.new(name: 'Melashu')
    user.save
    expect(user).to_not be_valid
  end
  it 'should have password' do
    user = User.new(name: 'John', email: 'meshu@gmial.com')
    user.save
    expect(user).to_not be_valid
  end
  it 'should  have a name less than or equal to 255 character' do
    user = User.new(name: 'meshu' * 60, email: 'meshu@gmial.com', password: '12345678')
    user.save
    expect(user).to_not be_valid
  end

  it 'should have no any catagories yet!' do
    user = User.new(name: 'meshu', email: 'meshu@gmial.com', password: '12345678')
    user.save
    expect(user.catagories.size).to be 0
  end
  it 'should have no any catagories yet!' do
    user = User.new(name: 'meshu', email: 'meshu@gmial.com', password: '12345678')
    user.save
    expect(user.catagories.size).to be 0
  end

  it 'passowrd should be greater than 8!' do
    user = User.new(name: 'meshu', email: 'me12u@gmial.com', password: '123456')
    user.save
    expect(user).to_not be_valid
  end
  it 'should have one catagory' do
    user = User.create!(name: 'meshu', email: 'mesh8@gmial.com', password: '12345678')
    Catagory.create(name: 'Food', author: user)
    expect(user.catagories.size).to be 1
  end
end
