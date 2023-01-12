require 'rails_helper'
require 'support/users'
RSpec.configure do |config|
  config.include Users
end

describe 'Trasaction', type: :feature do
  before :each do
    login_in
  end

  it 'display index page' do
    visit 'transactions/index'
    expect(page).to have_content('All Recent Transactionr')
  end
end
