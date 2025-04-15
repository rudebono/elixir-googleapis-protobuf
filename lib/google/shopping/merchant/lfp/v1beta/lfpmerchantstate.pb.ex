defmodule Google.Shopping.Merchant.Lfp.V1beta.LfpMerchantState.LfpStoreState.StoreMatchingState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STORE_MATCHING_STATE_UNSPECIFIED, 0
  field :STORE_MATCHING_STATE_MATCHED, 1
  field :STORE_MATCHING_STATE_FAILED, 2
end

defmodule Google.Shopping.Merchant.Lfp.V1beta.LfpMerchantState.CountrySettings.VerificationState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :VERIFICATION_STATE_UNSPECIFIED, 0
  field :VERIFICATION_STATE_NOT_APPROVED, 1
  field :VERIFICATION_STATE_IN_PROGRESS, 2
  field :VERIFICATION_STATE_APPROVED, 3
end

defmodule Google.Shopping.Merchant.Lfp.V1beta.LfpMerchantState.CountrySettings.ProductPageType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PRODUCT_PAGE_TYPE_UNSPECIFIED, 0
  field :GOOGLE_HOSTED, 1
  field :MERCHANT_HOSTED, 2
  field :MERCHANT_HOSTED_STORE_SPECIFIC, 3
end

defmodule Google.Shopping.Merchant.Lfp.V1beta.LfpMerchantState.LfpStoreState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :store_code, 1, type: :string, json_name: "storeCode", deprecated: false

  field :matching_state, 2,
    type: Google.Shopping.Merchant.Lfp.V1beta.LfpMerchantState.LfpStoreState.StoreMatchingState,
    json_name: "matchingState",
    enum: true,
    deprecated: false

  field :matching_state_hint, 3, type: :string, json_name: "matchingStateHint"
end

defmodule Google.Shopping.Merchant.Lfp.V1beta.LfpMerchantState.InventoryStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :submitted_entries, 1, type: :int64, json_name: "submittedEntries"
  field :submitted_in_stock_entries, 2, type: :int64, json_name: "submittedInStockEntries"
  field :unsubmitted_entries, 3, type: :int64, json_name: "unsubmittedEntries"
  field :submitted_products, 4, type: :int64, json_name: "submittedProducts"
end

defmodule Google.Shopping.Merchant.Lfp.V1beta.LfpMerchantState.CountrySettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :region_code, 1, type: :string, json_name: "regionCode", deprecated: false
  field :free_local_listings_enabled, 2, type: :bool, json_name: "freeLocalListingsEnabled"
  field :local_inventory_ads_enabled, 3, type: :bool, json_name: "localInventoryAdsEnabled"

  field :inventory_verification_state, 4,
    type: Google.Shopping.Merchant.Lfp.V1beta.LfpMerchantState.CountrySettings.VerificationState,
    json_name: "inventoryVerificationState",
    enum: true,
    deprecated: false

  field :product_page_type, 5,
    type: Google.Shopping.Merchant.Lfp.V1beta.LfpMerchantState.CountrySettings.ProductPageType,
    json_name: "productPageType",
    enum: true,
    deprecated: false

  field :instock_serving_verification_state, 6,
    type: Google.Shopping.Merchant.Lfp.V1beta.LfpMerchantState.CountrySettings.VerificationState,
    json_name: "instockServingVerificationState",
    enum: true,
    deprecated: false

  field :pickup_serving_verification_state, 7,
    type: Google.Shopping.Merchant.Lfp.V1beta.LfpMerchantState.CountrySettings.VerificationState,
    json_name: "pickupServingVerificationState",
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Lfp.V1beta.LfpMerchantState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :linked_gbps, 2, type: :int64, json_name: "linkedGbps"

  field :store_states, 3,
    repeated: true,
    type: Google.Shopping.Merchant.Lfp.V1beta.LfpMerchantState.LfpStoreState,
    json_name: "storeStates",
    deprecated: false

  field :inventory_stats, 4,
    type: Google.Shopping.Merchant.Lfp.V1beta.LfpMerchantState.InventoryStats,
    json_name: "inventoryStats"

  field :country_settings, 5,
    repeated: true,
    type: Google.Shopping.Merchant.Lfp.V1beta.LfpMerchantState.CountrySettings,
    json_name: "countrySettings"
end

defmodule Google.Shopping.Merchant.Lfp.V1beta.GetLfpMerchantStateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Lfp.V1beta.LfpMerchantStateService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.lfp.v1beta.LfpMerchantStateService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetLfpMerchantState,
      Google.Shopping.Merchant.Lfp.V1beta.GetLfpMerchantStateRequest,
      Google.Shopping.Merchant.Lfp.V1beta.LfpMerchantState
end

defmodule Google.Shopping.Merchant.Lfp.V1beta.LfpMerchantStateService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Lfp.V1beta.LfpMerchantStateService.Service
end
