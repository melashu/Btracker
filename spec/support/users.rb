module Users
  def login_in
    visit '/'
    click_link 'Sign up'
    within 'form' do
      fill_in 'user_name', with: 'Meshu'
      fill_in 'Email', with: 'dad6@btraker.com'
      fill_in 'Password', with: '12345678'
      fill_in 'Password confirmation', with: '12345678'
    end
    click_button 'Sign up'
    mail = ActionMailer::Base.deliveries[0]
    token = mail.body.decoded.match(/confirmation_token=([^"]+)/)[1]
    assert_equal User.find_by(email: 'dad6@btraker.com').confirmation_token, token
    visit "users/confirmation?confirmation_token=#{token}"
    fill_in 'Email', with: 'dad6@btraker.com'
    fill_in 'Password', with: '12345678'
    click_button 'commit'
  end
end
