require 'rails_helper'

RSpec.describe GamesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    # it "returns a list of games" do
    #
    #   get :index
    #   response.should include(@games)
    # end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end
  #
  # describe "GET #playtime" do
  #   it "returns http success" do
  #     get :playtime
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET #img_icon_url" do
  #   it "returns http success" do
  #     get :img_icon_url
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
