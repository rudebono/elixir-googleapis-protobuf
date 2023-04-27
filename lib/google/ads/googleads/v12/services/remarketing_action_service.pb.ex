defmodule Google.Ads.Googleads.V12.Services.MutateRemarketingActionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V12.Services.RemarketingActionOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V12.Services.RemarketingActionOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V12.Resources.RemarketingAction, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V12.Resources.RemarketingAction, oneof: 0
end

defmodule Google.Ads.Googleads.V12.Services.MutateRemarketingActionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V12.Services.MutateRemarketingActionResult
end

defmodule Google.Ads.Googleads.V12.Services.MutateRemarketingActionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V12.Services.RemarketingActionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v12.services.RemarketingActionService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :MutateRemarketingActions,
      Google.Ads.Googleads.V12.Services.MutateRemarketingActionsRequest,
      Google.Ads.Googleads.V12.Services.MutateRemarketingActionsResponse
end

defmodule Google.Ads.Googleads.V12.Services.RemarketingActionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V12.Services.RemarketingActionService.Service
end