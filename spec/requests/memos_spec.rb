require 'rails_helper'

RSpec.describe "Memos", :type => :request do
  describe "GET /memos" do
    it "works! (now write some real specs)" do
      get memos_path
      expect(response.status).to be(200)
    end
  end
end
