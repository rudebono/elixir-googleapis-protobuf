defmodule Google.Ads.Googleads.V20.Services.MutateCampaignSharedSetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V20.Services.CampaignSharedSetOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V20.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V20.Services.CampaignSharedSetOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V20.Resources.CampaignSharedSet, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.MutateCampaignSharedSetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V20.Services.MutateCampaignSharedSetResult
end

defmodule Google.Ads.Googleads.V20.Services.MutateCampaignSharedSetResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :campaign_shared_set, 2,
    type: Google.Ads.Googleads.V20.Resources.CampaignSharedSet,
    json_name: "campaignSharedSet"
end

defmodule Google.Ads.Googleads.V20.Services.CampaignSharedSetService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v20.services.CampaignSharedSetService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :MutateCampaignSharedSets,
      Google.Ads.Googleads.V20.Services.MutateCampaignSharedSetsRequest,
      Google.Ads.Googleads.V20.Services.MutateCampaignSharedSetsResponse
end

defmodule Google.Ads.Googleads.V20.Services.CampaignSharedSetService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V20.Services.CampaignSharedSetService.Service
end
