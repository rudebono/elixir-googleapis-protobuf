defmodule Google.Ads.Googleads.V18.Services.ConfigureCampaignLifecycleGoalsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operation, 2,
    type: Google.Ads.Googleads.V18.Services.CampaignLifecycleGoalOperation,
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.CampaignLifecycleGoalOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :create, 1, type: Google.Ads.Googleads.V18.Resources.CampaignLifecycleGoal, oneof: 0
  field :update, 3, type: Google.Ads.Googleads.V18.Resources.CampaignLifecycleGoal, oneof: 0
end

defmodule Google.Ads.Googleads.V18.Services.ConfigureCampaignLifecycleGoalsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :result, 1, type: Google.Ads.Googleads.V18.Services.ConfigureCampaignLifecycleGoalsResult
end

defmodule Google.Ads.Googleads.V18.Services.ConfigureCampaignLifecycleGoalsResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.CampaignLifecycleGoalService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v18.services.CampaignLifecycleGoalService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :ConfigureCampaignLifecycleGoals,
      Google.Ads.Googleads.V18.Services.ConfigureCampaignLifecycleGoalsRequest,
      Google.Ads.Googleads.V18.Services.ConfigureCampaignLifecycleGoalsResponse
end

defmodule Google.Ads.Googleads.V18.Services.CampaignLifecycleGoalService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V18.Services.CampaignLifecycleGoalService.Service
end