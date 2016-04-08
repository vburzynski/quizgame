require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #secret" do
    it "returns http success" do
      get :secret
      expect(response).to redirect_to(new_user_session_path)
    end
  end

end
