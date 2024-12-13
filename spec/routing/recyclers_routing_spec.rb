require "rails_helper"

RSpec.describe RecyclersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/recyclers").to route_to("recyclers#index")
    end

    it "routes to #new" do
      expect(get: "/recyclers/new").to route_to("recyclers#new")
    end

    it "routes to #show" do
      expect(get: "/recyclers/1").to route_to("recyclers#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/recyclers/1/edit").to route_to("recyclers#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/recyclers").to route_to("recyclers#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/recyclers/1").to route_to("recyclers#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/recyclers/1").to route_to("recyclers#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/recyclers/1").to route_to("recyclers#destroy", id: "1")
    end
  end
end
