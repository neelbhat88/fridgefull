require 'rails_helper'

describe Fridge::GetFridge do
  context "given an id" do

    let(:fridge_repo) { double("fridge_repository") }

    it "returns nil if fridge not found" do
      fridge = Fridge::GetFridge.new({id: 1}).call

      expect(fridge).to be_nil
    end

    it "returns a serialized Fridge object if found" do
      allow(fridge_repo).to receive(:load_by_id) {
        { id: 1, name: "Name", owners: [{}], items: [{}]}
      }

      fridge = Fridge::GetFridge.new({id: 1}, fridge_repo).call

      expect(fridge.id).to eq(1)
      expect(fridge.name).to eq("Name")
      expect(fridge.owners.length).to eq(1)
      expect(fridge.items.length).to eq(1)
    end

  end
end
