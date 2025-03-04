defmodule Google.Shopping.Merchant.Lfp.V1beta.LfpStore.StoreMatchingState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STORE_MATCHING_STATE_UNSPECIFIED, 0
  field :STORE_MATCHING_STATE_MATCHED, 1
  field :STORE_MATCHING_STATE_FAILED, 2
end

defmodule Google.Shopping.Merchant.Lfp.V1beta.LfpStore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :target_account, 2, type: :int64, json_name: "targetAccount", deprecated: false
  field :store_code, 3, type: :string, json_name: "storeCode", deprecated: false
  field :store_address, 4, type: :string, json_name: "storeAddress", deprecated: false

  field :store_name, 5,
    proto3_optional: true,
    type: :string,
    json_name: "storeName",
    deprecated: false

  field :phone_number, 6,
    proto3_optional: true,
    type: :string,
    json_name: "phoneNumber",
    deprecated: false

  field :website_uri, 7,
    proto3_optional: true,
    type: :string,
    json_name: "websiteUri",
    deprecated: false

  field :gcid_category, 8,
    repeated: true,
    type: :string,
    json_name: "gcidCategory",
    deprecated: false

  field :place_id, 9,
    proto3_optional: true,
    type: :string,
    json_name: "placeId",
    deprecated: false

  field :matching_state, 10,
    type: Google.Shopping.Merchant.Lfp.V1beta.LfpStore.StoreMatchingState,
    json_name: "matchingState",
    enum: true,
    deprecated: false

  field :matching_state_hint, 11,
    proto3_optional: true,
    type: :string,
    json_name: "matchingStateHint",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Lfp.V1beta.GetLfpStoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Lfp.V1beta.InsertLfpStoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :lfp_store, 2,
    type: Google.Shopping.Merchant.Lfp.V1beta.LfpStore,
    json_name: "lfpStore",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Lfp.V1beta.DeleteLfpStoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Lfp.V1beta.ListLfpStoresRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :target_account, 2, type: :int64, json_name: "targetAccount", deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Shopping.Merchant.Lfp.V1beta.ListLfpStoresResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :lfp_stores, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Lfp.V1beta.LfpStore,
    json_name: "lfpStores"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Lfp.V1beta.LfpStoreService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.lfp.v1beta.LfpStoreService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetLfpStore,
      Google.Shopping.Merchant.Lfp.V1beta.GetLfpStoreRequest,
      Google.Shopping.Merchant.Lfp.V1beta.LfpStore

  rpc :InsertLfpStore,
      Google.Shopping.Merchant.Lfp.V1beta.InsertLfpStoreRequest,
      Google.Shopping.Merchant.Lfp.V1beta.LfpStore

  rpc :DeleteLfpStore,
      Google.Shopping.Merchant.Lfp.V1beta.DeleteLfpStoreRequest,
      Google.Protobuf.Empty

  rpc :ListLfpStores,
      Google.Shopping.Merchant.Lfp.V1beta.ListLfpStoresRequest,
      Google.Shopping.Merchant.Lfp.V1beta.ListLfpStoresResponse
end

defmodule Google.Shopping.Merchant.Lfp.V1beta.LfpStoreService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Lfp.V1beta.LfpStoreService.Service
end
