require 'rails_helper'

RSpec.describe 'Splash', type: :request do
  it 'should render index page' do
    get '/'
    expect(response).to have_http_status(:ok)
    # expect(response.body).to include 'Btracker'
  end

  it 'should render Welcome Btracker' do
    get '/'
    expect(response.body).to include 'Welcome Btracker'
  end
end
