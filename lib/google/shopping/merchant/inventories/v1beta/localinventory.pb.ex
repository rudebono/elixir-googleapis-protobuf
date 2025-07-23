defmodule Google.Shopping.Merchant.Inventories.V1beta.LocalInventory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :account, 2, type: :int64, deprecated: false
  field :store_code, 3, type: :string, json_name: "storeCode", deprecated: false
  field :price, 4, type: Google.Shopping.Type.Price
  field :sale_price, 5, type: Google.Shopping.Type.Price, json_name: "salePrice"

  field :sale_price_effective_date, 6,
    type: Google.Type.Interval,
    json_name: "salePriceEffectiveDate"

  field :availability, 7, proto3_optional: true, type: :string
  field :quantity, 8, proto3_optional: true, type: :int64
  field :pickup_method, 9, proto3_optional: true, type: :string, json_name: "pickupMethod"
  field :pickup_sla, 10, proto3_optional: true, type: :string, json_name: "pickupSla"

  field :instore_product_location, 11,
    proto3_optional: true,
    type: :string,
    json_name: "instoreProductLocation"

  field :custom_attributes, 12,
    repeated: true,
    type: Google.Shopping.Type.CustomAttribute,
    json_name: "customAttributes"
end

defmodule Google.Shopping.Merchant.Inventories.V1beta.ListLocalInventoriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Shopping.Merchant.Inventories.V1beta.ListLocalInventoriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :local_inventories, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Inventories.V1beta.LocalInventory,
    json_name: "localInventories"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Inventories.V1beta.InsertLocalInventoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :local_inventory, 2,
    type: Google.Shopping.Merchant.Inventories.V1beta.LocalInventory,
    json_name: "localInventory",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Inventories.V1beta.DeleteLocalInventoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Inventories.V1beta.LocalInventoryService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.inventories.v1beta.LocalInventoryService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListLocalInventories,
      Google.Shopping.Merchant.Inventories.V1beta.ListLocalInventoriesRequest,
      Google.Shopping.Merchant.Inventories.V1beta.ListLocalInventoriesResponse

  rpc :InsertLocalInventory,
      Google.Shopping.Merchant.Inventories.V1beta.InsertLocalInventoryRequest,
      Google.Shopping.Merchant.Inventories.V1beta.LocalInventory

  rpc :DeleteLocalInventory,
      Google.Shopping.Merchant.Inventories.V1beta.DeleteLocalInventoryRequest,
      Google.Protobuf.Empty
end

defmodule Google.Shopping.Merchant.Inventories.V1beta.LocalInventoryService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Shopping.Merchant.Inventories.V1beta.LocalInventoryService.Service
end
