defmodule Google.Ads.Googleads.V22.Services.MutateCampaignGoalConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V22.Services.CampaignGoalConfigOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Ads.Googleads.V22.Services.CampaignGoalConfigOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V22.Resources.CampaignGoalConfig, oneof: 0
  field :update, 3, type: Google.Ads.Googleads.V22.Resources.CampaignGoalConfig, oneof: 0
  field :remove, 2, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V22.Services.MutateCampaignGoalConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :partial_failure_error, 1, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V22.Services.MutateCampaignGoalConfigResult
end

defmodule Google.Ads.Googleads.V22.Services.MutateCampaignGoalConfigResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V22.Services.CampaignGoalConfigService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v22.services.CampaignGoalConfigService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :MutateCampaignGoalConfigs,
      Google.Ads.Googleads.V22.Services.MutateCampaignGoalConfigsRequest,
      Google.Ads.Googleads.V22.Services.MutateCampaignGoalConfigsResponse
end

defmodule Google.Ads.Googleads.V22.Services.CampaignGoalConfigService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V22.Services.CampaignGoalConfigService.Service
end
