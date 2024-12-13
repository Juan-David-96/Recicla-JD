require "rails_helper"

RSpec.describe MaterialTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/material_types").to route_to("material_types#index")
    end

    it "routes to #new" do
      expect(get: "/material_types/new").to route_to("material_types#new")
    end

    it "routes to #show" do
      expect(get: "/material_types/1").to route_to("material_types#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/material_types/1/edit").to route_to("material_types#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/material_types").to route_to("material_types#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/material_types/1").to route_to("material_types#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/material_types/1").to route_to("material_types#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/material_types/1").to route_to("material_types#destroy", id: "1")
    end
  end
end
