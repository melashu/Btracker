require 'rails_helper'
RSpec.describe "User", type: :request do
    it 'should render to sign up page' do
        get new_user_registration_path
        expect(response).to render_template(:new)
    end
    it 'should render to sign in page' do
        get user_session_path
        expect(response).to render_template(:new)
    end
    it 'should render to sign in page' do
        get new_user_password_path
        expect(response).to render_template(:new)
    end
end