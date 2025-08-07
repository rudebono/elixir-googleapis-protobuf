defmodule Google.Ads.Googleads.V21.Services.RemoveCampaignAutomaticallyCreatedAssetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V21.Services.RemoveCampaignAutomaticallyCreatedAssetOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure", deprecated: false
end

defmodule Google.Ads.Googleads.V21.Services.RemoveCampaignAutomaticallyCreatedAssetOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :campaign, 1, type: :string, deprecated: false
  field :asset, 2, type: :string, deprecated: false

  field :field_type, 3,
    type: Google.Ads.Googleads.V21.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "fieldType",
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Googleads.V21.Services.RemoveCampaignAutomaticallyCreatedAssetResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :partial_failure_error, 1, type: Google.Rpc.Status, json_name: "partialFailureError"
end

defmodule Google.Ads.Googleads.V21.Services.AutomaticallyCreatedAssetRemovalService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v21.services.AutomaticallyCreatedAssetRemovalService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :RemoveCampaignAutomaticallyCreatedAsset,
      Google.Ads.Googleads.V21.Services.RemoveCampaignAutomaticallyCreatedAssetRequest,
      Google.Ads.Googleads.V21.Services.RemoveCampaignAutomaticallyCreatedAssetResponse
end

defmodule Google.Ads.Googleads.V21.Services.AutomaticallyCreatedAssetRemovalService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Ads.Googleads.V21.Services.AutomaticallyCreatedAssetRemovalService.Service
end
