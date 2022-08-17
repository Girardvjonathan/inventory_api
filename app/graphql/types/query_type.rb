module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :items, [Types::ItemType], null: false, description: "Return a list of items"
    field :warehouses, [Types::WarehouseType], null: false, description: "Return a list of warehouse"
    field :inventory, [Types::InventoryType], null: false, description: "Return the inventory per warehouse"
    
    def items
      Item.all
    end

    def warehouses
      Warehouse.all
    end

    def inventory
      Inventory.all
    end
  end
end
