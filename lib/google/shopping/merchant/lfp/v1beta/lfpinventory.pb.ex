defmodule Google.Shopping.Merchant.Lfp.V1beta.LfpInventory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :target_account, 2, type: :int64, json_name: "targetAccount", deprecated: false
  field :store_code, 3, type: :string, json_name: "storeCode", deprecated: false
  field :offer_id, 4, type: :string, json_name: "offerId", deprecated: false
  field :region_code, 5, type: :string, json_name: "regionCode", deprecated: false
  field :content_language, 6, type: :string, json_name: "contentLanguage", deprecated: false
  field :gtin, 7, proto3_optional: true, type: :string, deprecated: false
  field :price, 8, type: Google.Shopping.Type.Price, deprecated: false
  field :availability, 9, type: :string, deprecated: false
  field :quantity, 10, proto3_optional: true, type: :int64, deprecated: false

  field :collection_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "collectionTime",
    deprecated: false

  field :pickup_method, 12,
    proto3_optional: true,
    type: :string,
    json_name: "pickupMethod",
    deprecated: false

  field :pickup_sla, 13,
    proto3_optional: true,
    type: :string,
    json_name: "pickupSla",
    deprecated: false

  field :feed_label, 14,
    proto3_optional: true,
    type: :string,
    json_name: "feedLabel",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Lfp.V1beta.InsertLfpInventoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :lfp_inventory, 2,
    type: Google.Shopping.Merchant.Lfp.V1beta.LfpInventory,
    json_name: "lfpInventory",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Lfp.V1beta.LfpInventoryService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.lfp.v1beta.LfpInventoryService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :InsertLfpInventory,
      Google.Shopping.Merchant.Lfp.V1beta.InsertLfpInventoryRequest,
      Google.Shopping.Merchant.Lfp.V1beta.LfpInventory
end

defmodule Google.Shopping.Merchant.Lfp.V1beta.LfpInventoryService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Lfp.V1beta.LfpInventoryService.Service
end