# frozen_string_literal: true

module Types
  class InventoryType < Types::BaseObject
    field :id, ID, null: false
    field :item_id, Integer, null: false
    field :item, Types::ItemType, null: false
    field :warehouse, Types::WarehouseType, null: false
    field :warehouse_id, Integer, null: false
    field :quantity, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
