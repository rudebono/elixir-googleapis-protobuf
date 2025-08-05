defmodule Google.Shopping.Merchant.Inventories.V1.RegionalInventory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :account, 2, type: :int64, deprecated: false
  field :region, 3, type: :string, deprecated: false

  field :regional_inventory_attributes, 9,
    type: Google.Shopping.Merchant.Inventories.V1.RegionalInventoryAttributes,
    json_name: "regionalInventoryAttributes",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Inventories.V1.ListRegionalInventoriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Shopping.Merchant.Inventories.V1.ListRegionalInventoriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :regional_inventories, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Inventories.V1.RegionalInventory,
    json_name: "regionalInventories"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Inventories.V1.InsertRegionalInventoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :regional_inventory, 2,
    type: Google.Shopping.Merchant.Inventories.V1.RegionalInventory,
    json_name: "regionalInventory",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Inventories.V1.DeleteRegionalInventoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Inventories.V1.RegionalInventoryService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.inventories.v1.RegionalInventoryService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListRegionalInventories,
      Google.Shopping.Merchant.Inventories.V1.ListRegionalInventoriesRequest,
      Google.Shopping.Merchant.Inventories.V1.ListRegionalInventoriesResponse

  rpc :InsertRegionalInventory,
      Google.Shopping.Merchant.Inventories.V1.InsertRegionalInventoryRequest,
      Google.Shopping.Merchant.Inventories.V1.RegionalInventory

  rpc :DeleteRegionalInventory,
      Google.Shopping.Merchant.Inventories.V1.DeleteRegionalInventoryRequest,
      Google.Protobuf.Empty
end

defmodule Google.Shopping.Merchant.Inventories.V1.RegionalInventoryService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Inventories.V1.RegionalInventoryService.Service
end
