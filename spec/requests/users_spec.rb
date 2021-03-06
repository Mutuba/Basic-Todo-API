# spec/requests/users_spec.rb
require 'rails_helper'

RSpec.describe 'Users API', type: :request do
  let(:user) { build(:user) }
  let(:headers) { valid_headers.except('Authorization') }
  let(:valid_attributes) do
    { user: attributes_for(:user, password_confirmation: user.password) }
  end

  # let(:valid_attributes) { { item: { name: 'Visit Narnia', done: false } }.to_json }
  # User signup test suite
  describe 'POST /api/v1/signup' do
    context 'when valid request' do
      before { post '/api/v1/signup', params: valid_attributes.to_json, headers: headers }

      it 'creates a new user' do
        expect(response).to have_http_status(201)
      end

      it 'returns success message' do
        expect(json['message']).to match(/Account created successfully/)
      end

      it 'returns an authentication token' do
        expect(json['auth_token']).not_to be_nil
      end
    end

    context 'when invalid request' do
      before { post '/api/v1/signup', params: {}, headers: headers }

      it 'does not create a new user' do
        expect(response).to have_http_status(400)
      end

      it 'returns failure message' do
        expect(json['message'])
          .to match(/param is missing or the value is empty: user/)
      end
    end
  end
end
