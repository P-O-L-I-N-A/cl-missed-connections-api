require 'rails_helper'

RSpec.describe "MyAttrs", type: :request do
  describe "GET /my_attrs" do
    it "works! (now write some real specs)" do
      get my_attrs_path
      expect(response).to have_http_status(200)
    end
  end
end
