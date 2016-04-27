require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #secret" do
    describe "anonymous user" do
      it "returns http status 302" do
        get :secret
        expect(response).to have_http_status(302)
      end
      it "redirects to user login" do
        get :secret
        expect(response).to redirect_to(new_user_session_path)
      end
    end
    describe "authenticated user" do
      before :each do
        login_with create( :user )
      end
      it "returns http success" do
        get :secret
        expect(response).to have_http_status(:success)
      end
    end
  end
end
