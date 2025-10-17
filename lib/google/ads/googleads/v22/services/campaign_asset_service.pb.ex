defmodule Google.Ads.Googleads.V22.Services.MutateCampaignAssetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V22.Services.CampaignAssetOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V22.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V22.Services.CampaignAssetOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V22.Resources.CampaignAsset, oneof: 0
  field :update, 3, type: Google.Ads.Googleads.V22.Resources.CampaignAsset, oneof: 0
  field :remove, 2, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V22.Services.MutateCampaignAssetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :partial_failure_error, 1, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V22.Services.MutateCampaignAssetResult
end

defmodule Google.Ads.Googleads.V22.Services.MutateCampaignAssetResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :campaign_asset, 2,
    type: Google.Ads.Googleads.V22.Resources.CampaignAsset,
    json_name: "campaignAsset"
end

defmodule Google.Ads.Googleads.V22.Services.CampaignAssetService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v22.services.CampaignAssetService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :MutateCampaignAssets,
      Google.Ads.Googleads.V22.Services.MutateCampaignAssetsRequest,
      Google.Ads.Googleads.V22.Services.MutateCampaignAssetsResponse
end

defmodule Google.Ads.Googleads.V22.Services.CampaignAssetService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V22.Services.CampaignAssetService.Service
end
