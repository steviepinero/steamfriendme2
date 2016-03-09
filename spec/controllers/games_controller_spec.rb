require 'rails_helper'

RSpec.describe GamesController, type: :controller do

  describe "GET #game_name" do
    it "returns http success" do
      get :game_name
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #appid" do
    it "returns http success" do
      get :appid
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #playtime" do
    it "returns http success" do
      get :playtime
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #img_icon_url" do
    it "returns http success" do
      get :img_icon_url
      expect(response).to have_http_status(:success)
    end
  end

end
