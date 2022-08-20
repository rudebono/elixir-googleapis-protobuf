defmodule Google.Ads.Googleads.V9.Services.MutateCustomerConversionGoalsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.CustomerConversionGoalOperation,
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V9.Services.CustomerConversionGoalOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :update, 1, type: Google.Ads.Googleads.V9.Resources.CustomerConversionGoal, oneof: 0
end

defmodule Google.Ads.Googleads.V9.Services.MutateCustomerConversionGoalsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.MutateCustomerConversionGoalResult
end

defmodule Google.Ads.Googleads.V9.Services.MutateCustomerConversionGoalResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
end

defmodule Google.Ads.Googleads.V9.Services.CustomerConversionGoalService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.CustomerConversionGoalService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :MutateCustomerConversionGoals,
      Google.Ads.Googleads.V9.Services.MutateCustomerConversionGoalsRequest,
      Google.Ads.Googleads.V9.Services.MutateCustomerConversionGoalsResponse
end

defmodule Google.Ads.Googleads.V9.Services.CustomerConversionGoalService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.CustomerConversionGoalService.Service
end