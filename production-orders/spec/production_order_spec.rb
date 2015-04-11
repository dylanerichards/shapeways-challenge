require "spec_helper"
require_relative "../production_order.rb"

describe ProductionOrder do
  let(:production_order) { ProductionOrder.new }

  describe ".childless_orders" do
    it "returns all childless orders in the collection" do
      production_order1 = ProductionOrder.new(id: 1)
      production_order2 = ProductionOrder.new(id: 2, parent_id: 1)
      production_order3 = ProductionOrder.new(id: 3, parent_id: 2)
      production_order4 = ProductionOrder.new(id: 4, parent_id: 2)

      collection = [production_order1, production_order2, production_order3, production_order4]

      expect(ProductionOrder.childless_orders(collection)).to eq [production_order3, production_order4]
    end
  end
end
