require 'rails_helper'
describe 'Users', type: :feature do
  it 'Should create account and confirm the email' do
    visit 'users/sign_up'
    within 'form' do
      fill_in 'user_name', with: 'Melashu'
      fill_in 'Email', with: 'meshu@btraker.com'
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'password'
    end
    click_button 'Sign up'
    mail = ActionMailer::Base.deliveries[0]
    token = mail.body.decoded.match(/confirmation_token=([^"]+)/)[1]
    assert_equal User.find_by(email: 'meshu@btraker.com').confirmation_token, token
    visit "users/confirmation?confirmation_token=#{token}"
    expect(page).to have_content 'Your email address has been successfully confirmed.'
    expect(page).to have_content 'Log in'
    fill_in 'Email', with: 'meshu@btraker.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
    expect(page).to have_content 'Catagories'
    expect(page).to have_content 'List of catagories'
  end
end
