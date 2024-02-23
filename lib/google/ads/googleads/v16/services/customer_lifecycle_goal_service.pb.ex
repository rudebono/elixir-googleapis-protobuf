defmodule Google.Ads.Googleads.V16.Services.ConfigureCustomerLifecycleGoalsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operation, 2,
    type: Google.Ads.Googleads.V16.Services.CustomerLifecycleGoalOperation,
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Ads.Googleads.V16.Services.CustomerLifecycleGoalOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :create, 1, type: Google.Ads.Googleads.V16.Resources.CustomerLifecycleGoal, oneof: 0
  field :update, 3, type: Google.Ads.Googleads.V16.Resources.CustomerLifecycleGoal, oneof: 0
end

defmodule Google.Ads.Googleads.V16.Services.ConfigureCustomerLifecycleGoalsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :result, 1, type: Google.Ads.Googleads.V16.Services.ConfigureCustomerLifecycleGoalsResult
end

defmodule Google.Ads.Googleads.V16.Services.ConfigureCustomerLifecycleGoalsResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V16.Services.CustomerLifecycleGoalService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v16.services.CustomerLifecycleGoalService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ConfigureCustomerLifecycleGoals,
      Google.Ads.Googleads.V16.Services.ConfigureCustomerLifecycleGoalsRequest,
      Google.Ads.Googleads.V16.Services.ConfigureCustomerLifecycleGoalsResponse
end

defmodule Google.Ads.Googleads.V16.Services.CustomerLifecycleGoalService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V16.Services.CustomerLifecycleGoalService.Service
end