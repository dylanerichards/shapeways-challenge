class ProductionOrder
  attr_accessor :id, :parent_id

  def initialize(options = {})
    @id = options.fetch(:id, nil)
    @parent_id = options.fetch(:parent_id, nil)
  end

  def self.childless_orders(orders)
    parent_order_ids = orders.map(&:parent_id).compact
    parent_orders = orders.select { |order| parent_order_ids.include?(order.id)  }
    orders - parent_orders
  end
end
