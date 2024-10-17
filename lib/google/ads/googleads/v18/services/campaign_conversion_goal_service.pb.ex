defmodule Google.Ads.Googleads.V18.Services.MutateCampaignConversionGoalsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.CampaignConversionGoalOperation,
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V18.Services.CampaignConversionGoalOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :update, 1, type: Google.Ads.Googleads.V18.Resources.CampaignConversionGoal, oneof: 0
end

defmodule Google.Ads.Googleads.V18.Services.MutateCampaignConversionGoalsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.MutateCampaignConversionGoalResult
end

defmodule Google.Ads.Googleads.V18.Services.MutateCampaignConversionGoalResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.CampaignConversionGoalService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v18.services.CampaignConversionGoalService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :MutateCampaignConversionGoals,
      Google.Ads.Googleads.V18.Services.MutateCampaignConversionGoalsRequest,
      Google.Ads.Googleads.V18.Services.MutateCampaignConversionGoalsResponse
end

defmodule Google.Ads.Googleads.V18.Services.CampaignConversionGoalService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V18.Services.CampaignConversionGoalService.Service
end