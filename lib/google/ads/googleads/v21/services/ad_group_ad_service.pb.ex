defmodule Google.Ads.Googleads.V21.Services.MutateAdGroupAdsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V21.Services.AdGroupAdOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V21.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V21.Services.AdGroupAdOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :policy_validation_parameter, 5,
    type: Google.Ads.Googleads.V21.Common.PolicyValidationParameter,
    json_name: "policyValidationParameter"

  field :create, 1, type: Google.Ads.Googleads.V21.Resources.AdGroupAd, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V21.Resources.AdGroupAd, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V21.Services.MutateAdGroupAdsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V21.Services.MutateAdGroupAdResult
end

defmodule Google.Ads.Googleads.V21.Services.MutateAdGroupAdResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :ad_group_ad, 2,
    type: Google.Ads.Googleads.V21.Resources.AdGroupAd,
    json_name: "adGroupAd"
end

defmodule Google.Ads.Googleads.V21.Services.RemoveAutomaticallyCreatedAssetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ad_group_ad, 1, type: :string, json_name: "adGroupAd", deprecated: false

  field :assets_with_field_type, 2,
    repeated: true,
    type: Google.Ads.Googleads.V21.Services.AssetsWithFieldType,
    json_name: "assetsWithFieldType",
    deprecated: false
end

defmodule Google.Ads.Googleads.V21.Services.AssetsWithFieldType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :asset, 1, type: :string, deprecated: false

  field :asset_field_type, 2,
    type: Google.Ads.Googleads.V21.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "assetFieldType",
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Googleads.V21.Services.AdGroupAdService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v21.services.AdGroupAdService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :MutateAdGroupAds,
      Google.Ads.Googleads.V21.Services.MutateAdGroupAdsRequest,
      Google.Ads.Googleads.V21.Services.MutateAdGroupAdsResponse

  rpc :RemoveAutomaticallyCreatedAssets,
      Google.Ads.Googleads.V21.Services.RemoveAutomaticallyCreatedAssetsRequest,
      Google.Protobuf.Empty
end

defmodule Google.Ads.Googleads.V21.Services.AdGroupAdService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V21.Services.AdGroupAdService.Service
end
