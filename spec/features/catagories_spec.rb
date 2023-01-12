require 'rails_helper'
require 'support/users'
RSpec.configure do |c|
  c.include Users
end

describe 'Catagory', type: :feature do
  # User.create()
  before :each do
    login_in
  end

  it 'should have add new catagories link' do
    expect(page).to have_link('Add a new category')
  end
  it 'should add new catagories' do
    click_link 'Add a new category'
    within('#catagory_form') do
      attach_file 'catagory_icon', File.join(Rails.root, 'spec/img/icon.jpg')
      fill_in 'catagory_name', with: 'Travle'
    end
    click_button 'commit'
    expect(page).to have_content('Successfully created!')
  end

  it 'should have detail page' do
    click_link 'Add a new category'
    within('#catagory_form') do
      attach_file 'catagory_icon', File.join(Rails.root, 'spec/img/icon.jpg')
      fill_in 'catagory_name', with: 'Food'
    end
    click_button 'commit'
    click_link 'Food'
    expect(page).to have_content('Most Recent Transactionr')
  end
  it 'should have detail page' do
    click_link 'Add a new category'
    within('#catagory_form') do
      attach_file 'catagory_icon', File.join(Rails.root, 'spec/img/icon.jpg')
      fill_in 'catagory_name', with: 'Food'
    end
    click_button 'commit'
    click_link 'Food'
    click_link 'Add a new transaction'
    within('#new-transaction') do
      page.fill_in 'user_name', with: 'Dinner'
      page.fill_in 'user_amount', with: '45'
      page.select 'Food', from: 'user_catagory'
    end
    click_button 'commit'
    expect(page).to have_content('Total transaction')
    expect(page).to have_content('45')
  end
end
