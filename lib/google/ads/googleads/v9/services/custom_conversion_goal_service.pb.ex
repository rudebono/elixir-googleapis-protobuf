defmodule Google.Ads.Googleads.V9.Services.MutateCustomConversionGoalsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.CustomConversionGoalOperation,
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly"

  field :response_content_type, 4,
    type: Google.Ads.Googleads.V9.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V9.Services.CustomConversionGoalOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V9.Resources.CustomConversionGoal, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V9.Resources.CustomConversionGoal, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end
defmodule Google.Ads.Googleads.V9.Services.MutateCustomConversionGoalsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.MutateCustomConversionGoalResult
end
defmodule Google.Ads.Googleads.V9.Services.MutateCustomConversionGoalResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"

  field :custom_conversion_goal, 2,
    type: Google.Ads.Googleads.V9.Resources.CustomConversionGoal,
    json_name: "customConversionGoal"
end
defmodule Google.Ads.Googleads.V9.Services.CustomConversionGoalService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.CustomConversionGoalService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :MutateCustomConversionGoals,
      Google.Ads.Googleads.V9.Services.MutateCustomConversionGoalsRequest,
      Google.Ads.Googleads.V9.Services.MutateCustomConversionGoalsResponse
end

defmodule Google.Ads.Googleads.V9.Services.CustomConversionGoalService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.CustomConversionGoalService.Service
end
