defmodule Google.Shopping.Merchant.Inventories.V1beta.RegionalInventory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :account, 2, type: :int64, deprecated: false
  field :region, 3, type: :string, deprecated: false
  field :price, 4, type: Google.Shopping.Type.Price
  field :sale_price, 5, type: Google.Shopping.Type.Price, json_name: "salePrice"

  field :sale_price_effective_date, 6,
    type: Google.Type.Interval,
    json_name: "salePriceEffectiveDate"

  field :availability, 7, proto3_optional: true, type: :string

  field :custom_attributes, 8,
    repeated: true,
    type: Google.Shopping.Type.CustomAttribute,
    json_name: "customAttributes"
end

defmodule Google.Shopping.Merchant.Inventories.V1beta.ListRegionalInventoriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Shopping.Merchant.Inventories.V1beta.ListRegionalInventoriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :regional_inventories, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Inventories.V1beta.RegionalInventory,
    json_name: "regionalInventories"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Inventories.V1beta.InsertRegionalInventoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :regional_inventory, 2,
    type: Google.Shopping.Merchant.Inventories.V1beta.RegionalInventory,
    json_name: "regionalInventory",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Inventories.V1beta.DeleteRegionalInventoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Inventories.V1beta.RegionalInventoryService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.inventories.v1beta.RegionalInventoryService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :ListRegionalInventories,
      Google.Shopping.Merchant.Inventories.V1beta.ListRegionalInventoriesRequest,
      Google.Shopping.Merchant.Inventories.V1beta.ListRegionalInventoriesResponse

  rpc :InsertRegionalInventory,
      Google.Shopping.Merchant.Inventories.V1beta.InsertRegionalInventoryRequest,
      Google.Shopping.Merchant.Inventories.V1beta.RegionalInventory

  rpc :DeleteRegionalInventory,
      Google.Shopping.Merchant.Inventories.V1beta.DeleteRegionalInventoryRequest,
      Google.Protobuf.Empty
end

defmodule Google.Shopping.Merchant.Inventories.V1beta.RegionalInventoryService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Shopping.Merchant.Inventories.V1beta.RegionalInventoryService.Service
end