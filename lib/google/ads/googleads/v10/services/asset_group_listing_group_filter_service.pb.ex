defmodule Google.Ads.Googleads.V10.Services.MutateAssetGroupListingGroupFiltersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [
            Google.Ads.Googleads.V10.Services.AssetGroupListingGroupFilterOperation.t()
          ],
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V10.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct customer_id: "",
            operations: [],
            validate_only: false,
            response_content_type: :UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V10.Resources.AssetGroupListingGroupFilter.t() | nil}
            | {:update, Google.Ads.Googleads.V10.Resources.AssetGroupListingGroupFilter.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct operation: nil,
            update_mask: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [
            Google.Ads.Googleads.V10.Services.MutateAssetGroupListingGroupFilterResult.t()
          ]
        }

  defstruct results: []

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.MutateAssetGroupListingGroupFilterResult
end
defmodule Google.Ads.Googleads.V10.Services.MutateAssetGroupListingGroupFilterResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          asset_group_listing_group_filter:
            Google.Ads.Googleads.V10.Resources.AssetGroupListingGroupFilter.t() | nil
        }

  defstruct resource_name: "",
            asset_group_listing_group_filter: nil

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :asset_group_listing_group_filter, 2,
    type: Google.Ads.Googleads.V10.Resources.AssetGroupListingGroupFilter,
    json_name: "assetGroupListingGroupFilter"
end
defmodule Google.Ads.Googleads.V10.Services.AssetGroupListingGroupFilterService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v10.services.AssetGroupListingGroupFilterService"

  rpc :MutateAssetGroupListingGroupFilters,
      Google.Ads.Googleads.V10.Services.MutateAssetGroupListingGroupFiltersRequest,
      Google.Ads.Googleads.V10.Services.MutateAssetGroupListingGroupFiltersResponse
end

defmodule Google.Ads.Googleads.V10.Services.AssetGroupListingGroupFilterService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V10.Services.AssetGroupListingGroupFilterService.Service
end
