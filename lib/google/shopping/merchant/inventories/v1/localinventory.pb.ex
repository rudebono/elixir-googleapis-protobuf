defmodule Google.Shopping.Merchant.Inventories.V1.LocalInventory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :account, 2, type: :int64, deprecated: false
  field :store_code, 3, type: :string, json_name: "storeCode", deprecated: false

  field :local_inventory_attributes, 14,
    type: Google.Shopping.Merchant.Inventories.V1.LocalInventoryAttributes,
    json_name: "localInventoryAttributes",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Inventories.V1.ListLocalInventoriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Shopping.Merchant.Inventories.V1.ListLocalInventoriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :local_inventories, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Inventories.V1.LocalInventory,
    json_name: "localInventories"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Inventories.V1.InsertLocalInventoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :local_inventory, 2,
    type: Google.Shopping.Merchant.Inventories.V1.LocalInventory,
    json_name: "localInventory",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Inventories.V1.DeleteLocalInventoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Inventories.V1.LocalInventoryService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.inventories.v1.LocalInventoryService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListLocalInventories,
      Google.Shopping.Merchant.Inventories.V1.ListLocalInventoriesRequest,
      Google.Shopping.Merchant.Inventories.V1.ListLocalInventoriesResponse

  rpc :InsertLocalInventory,
      Google.Shopping.Merchant.Inventories.V1.InsertLocalInventoryRequest,
      Google.Shopping.Merchant.Inventories.V1.LocalInventory

  rpc :DeleteLocalInventory,
      Google.Shopping.Merchant.Inventories.V1.DeleteLocalInventoryRequest,
      Google.Protobuf.Empty
end

defmodule Google.Shopping.Merchant.Inventories.V1.LocalInventoryService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Inventories.V1.LocalInventoryService.Service
end
