require 'rails_helper'

RSpec.describe ChatRoomsController, type: :controller do
  describe "POST create" do
    context 'when params valid' do
      it 'responds with 200' do
        params = {
          chat_room: {name: 'test',
                      latitude: 37.573856,
                      longtitude: 55.751574}
        }
        post :create, params
        expect(response.status).to eq(200)
      end
    end

    context 'when params invalid' do
      it 'raises an error if missing params name' do
        params = {
          chat_room: {name: 'test',
                      longtitude: 55.751574}
        }
        expect do
          post :create, params
        end.to raise_error Mongoid::Errors::Validations
      end
    end
  end
end
