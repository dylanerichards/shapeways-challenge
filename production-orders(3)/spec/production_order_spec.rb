require "spec_helper"
require_relative "../production_order.rb"

describe ProductionOrder do
  describe ".childless_orders" do
    it "returns all childless orders in the collection" do
      a = ProductionOrder.new(id: "a")
      b = ProductionOrder.new(id: "b", parent_id: "d")
      c = ProductionOrder.new(id: "c", parent_id: "a")
      d = ProductionOrder.new(id: "d")
      e = ProductionOrder.new(id: "e", parent_id: "c")
      f = ProductionOrder.new(id: "f", parent_id: "a")
      g = ProductionOrder.new(id: "g")

      collection = [a, b, c, d, e, f, g]

      expect(ProductionOrder.childless_orders(collection)).to eq [b, e, f, g]
    end
  end
end
