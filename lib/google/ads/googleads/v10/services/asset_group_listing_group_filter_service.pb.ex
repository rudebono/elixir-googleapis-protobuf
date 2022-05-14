defmodule Google.Ads.Googleads.V10.Services.MutateAssetGroupListingGroupFiltersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.AssetGroupListingGroupFilterOperation,
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly"

  field :response_content_type, 4,
    type: Google.Ads.Googleads.V10.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V10.Services.AssetGroupListingGroupFilterOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :create, 1,
    type: Google.Ads.Googleads.V10.Resources.AssetGroupListingGroupFilter,
    oneof: 0

  field :update, 2,
    type: Google.Ads.Googleads.V10.Resources.AssetGroupListingGroupFilter,
    oneof: 0

  field :remove, 3, type: :string, oneof: 0, deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.MutateAssetGroupListingGroupFiltersResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.MutateAssetGroupListingGroupFilterResult
end
defmodule Google.Ads.Googleads.V10.Services.MutateAssetGroupListingGroupFilterResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :asset_group_listing_group_filter, 2,
    type: Google.Ads.Googleads.V10.Resources.AssetGroupListingGroupFilter,
    json_name: "assetGroupListingGroupFilter"
end
defmodule Google.Ads.Googleads.V10.Services.AssetGroupListingGroupFilterService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v10.services.AssetGroupListingGroupFilterService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :MutateAssetGroupListingGroupFilters,
      Google.Ads.Googleads.V10.Services.MutateAssetGroupListingGroupFiltersRequest,
      Google.Ads.Googleads.V10.Services.MutateAssetGroupListingGroupFiltersResponse
end

defmodule Google.Ads.Googleads.V10.Services.AssetGroupListingGroupFilterService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V10.Services.AssetGroupListingGroupFilterService.Service
end
