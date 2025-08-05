defmodule Google.Shopping.Merchant.Inventories.V1.LocalInventoryAttributes.Availability do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LOCAL_INVENTORY_AVAILABILITY_UNSPECIFIED, 0
  field :IN_STOCK, 1
  field :LIMITED_AVAILABILITY, 2
  field :ON_DISPLAY_TO_ORDER, 3
  field :OUT_OF_STOCK, 4
end

defmodule Google.Shopping.Merchant.Inventories.V1.LocalInventoryAttributes.PickupMethod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PICKUP_METHOD_UNSPECIFIED, 0
  field :BUY, 1
  field :RESERVE, 2
  field :SHIP_TO_STORE, 3
  field :NOT_SUPPORTED, 4
end

defmodule Google.Shopping.Merchant.Inventories.V1.LocalInventoryAttributes.PickupSla do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PICKUP_SLA_UNSPECIFIED, 0
  field :SAME_DAY, 1
  field :NEXT_DAY, 2
  field :TWO_DAY, 3
  field :THREE_DAY, 4
  field :FOUR_DAY, 5
  field :FIVE_DAY, 6
  field :SIX_DAY, 7
  field :SEVEN_DAY, 8
  field :MULTI_WEEK, 9
end

defmodule Google.Shopping.Merchant.Inventories.V1.RegionalInventoryAttributes.Availability do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :REGIONAL_INVENTORY_AVAILABILITY_UNSPECIFIED, 0
  field :IN_STOCK, 1
  field :OUT_OF_STOCK, 2
end

defmodule Google.Shopping.Merchant.Inventories.V1.LocalInventoryAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :price, 1, type: Google.Shopping.Type.Price, deprecated: false

  field :sale_price, 2,
    type: Google.Shopping.Type.Price,
    json_name: "salePrice",
    deprecated: false

  field :sale_price_effective_date, 3,
    type: Google.Type.Interval,
    json_name: "salePriceEffectiveDate",
    deprecated: false

  field :availability, 4,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Inventories.V1.LocalInventoryAttributes.Availability,
    enum: true

  field :quantity, 5, proto3_optional: true, type: :int64, deprecated: false

  field :pickup_method, 6,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Inventories.V1.LocalInventoryAttributes.PickupMethod,
    json_name: "pickupMethod",
    enum: true,
    deprecated: false

  field :pickup_sla, 7,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Inventories.V1.LocalInventoryAttributes.PickupSla,
    json_name: "pickupSla",
    enum: true,
    deprecated: false

  field :instore_product_location, 8,
    proto3_optional: true,
    type: :string,
    json_name: "instoreProductLocation",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Inventories.V1.RegionalInventoryAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :price, 1, type: Google.Shopping.Type.Price, deprecated: false

  field :sale_price, 2,
    type: Google.Shopping.Type.Price,
    json_name: "salePrice",
    deprecated: false

  field :sale_price_effective_date, 3,
    type: Google.Type.Interval,
    json_name: "salePriceEffectiveDate",
    deprecated: false

  field :availability, 4,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Inventories.V1.RegionalInventoryAttributes.Availability,
    enum: true,
    deprecated: false
end
