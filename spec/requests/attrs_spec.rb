require 'rails_helper'

RSpec.describe "Attrs", type: :request do
  describe "GET /attrs" do
    it "works! (now write some real specs)" do
      get attrs_path
      expect(response).to have_http_status(200)
    end
  end
end
