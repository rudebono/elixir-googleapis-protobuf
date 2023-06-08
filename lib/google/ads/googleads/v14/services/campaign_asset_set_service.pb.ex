defmodule Google.Ads.Googleads.V14.Services.MutateCampaignAssetSetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V14.Services.CampaignAssetSetOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V14.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V14.Services.CampaignAssetSetOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V14.Resources.CampaignAssetSet, oneof: 0
  field :remove, 2, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V14.Services.MutateCampaignAssetSetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V14.Services.MutateCampaignAssetSetResult

  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"
end

defmodule Google.Ads.Googleads.V14.Services.MutateCampaignAssetSetResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :campaign_asset_set, 2,
    type: Google.Ads.Googleads.V14.Resources.CampaignAssetSet,
    json_name: "campaignAssetSet"
end

defmodule Google.Ads.Googleads.V14.Services.CampaignAssetSetService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v14.services.CampaignAssetSetService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :MutateCampaignAssetSets,
      Google.Ads.Googleads.V14.Services.MutateCampaignAssetSetsRequest,
      Google.Ads.Googleads.V14.Services.MutateCampaignAssetSetsResponse
end

defmodule Google.Ads.Googleads.V14.Services.CampaignAssetSetService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V14.Services.CampaignAssetSetService.Service
end