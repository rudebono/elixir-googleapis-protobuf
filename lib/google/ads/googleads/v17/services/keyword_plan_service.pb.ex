defmodule Google.Ads.Googleads.V17.Services.MutateKeywordPlansRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V17.Services.KeywordPlanOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V17.Services.KeywordPlanOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V17.Resources.KeywordPlan, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V17.Resources.KeywordPlan, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V17.Services.MutateKeywordPlansResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V17.Services.MutateKeywordPlansResult
end

defmodule Google.Ads.Googleads.V17.Services.MutateKeywordPlansResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V17.Services.KeywordPlanService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v17.services.KeywordPlanService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :MutateKeywordPlans,
      Google.Ads.Googleads.V17.Services.MutateKeywordPlansRequest,
      Google.Ads.Googleads.V17.Services.MutateKeywordPlansResponse
end

defmodule Google.Ads.Googleads.V17.Services.KeywordPlanService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V17.Services.KeywordPlanService.Service
end