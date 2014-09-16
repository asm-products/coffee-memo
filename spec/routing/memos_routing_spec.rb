require "rails_helper"

RSpec.describe MemosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/memos").to route_to("memos#index")
    end

    it "routes to #new" do
      expect(:get => "/memos/new").to route_to("memos#new")
    end

    it "routes to #show" do
      expect(:get => "/memos/1").to route_to("memos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/memos/1/edit").to route_to("memos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/memos").to route_to("memos#create")
    end

    it "routes to #update" do
      expect(:put => "/memos/1").to route_to("memos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/memos/1").to route_to("memos#destroy", :id => "1")
    end

  end
end
