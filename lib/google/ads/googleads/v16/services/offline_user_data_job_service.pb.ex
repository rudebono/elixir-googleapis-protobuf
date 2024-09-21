defmodule Google.Ads.Googleads.V16.Services.CreateOfflineUserDataJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :job, 2, type: Google.Ads.Googleads.V16.Resources.OfflineUserDataJob, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly"
  field :enable_match_rate_range_preview, 5, type: :bool, json_name: "enableMatchRateRangePreview"
end

defmodule Google.Ads.Googleads.V16.Services.CreateOfflineUserDataJobResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V16.Services.RunOfflineUserDataJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V16.Services.AddOfflineUserDataJobOperationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :enable_partial_failure, 4,
    proto3_optional: true,
    type: :bool,
    json_name: "enablePartialFailure"

  field :enable_warnings, 6, proto3_optional: true, type: :bool, json_name: "enableWarnings"

  field :operations, 3,
    repeated: true,
    type: Google.Ads.Googleads.V16.Services.OfflineUserDataJobOperation,
    deprecated: false

  field :validate_only, 5, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V16.Services.OfflineUserDataJobOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V16.Common.UserData, oneof: 0
  field :remove, 2, type: Google.Ads.Googleads.V16.Common.UserData, oneof: 0
  field :remove_all, 3, type: :bool, json_name: "removeAll", oneof: 0
end

defmodule Google.Ads.Googleads.V16.Services.AddOfflineUserDataJobOperationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :partial_failure_error, 1, type: Google.Rpc.Status, json_name: "partialFailureError"
  field :warning, 2, type: Google.Rpc.Status
end

defmodule Google.Ads.Googleads.V16.Services.OfflineUserDataJobService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v16.services.OfflineUserDataJobService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateOfflineUserDataJob,
      Google.Ads.Googleads.V16.Services.CreateOfflineUserDataJobRequest,
      Google.Ads.Googleads.V16.Services.CreateOfflineUserDataJobResponse

  rpc :AddOfflineUserDataJobOperations,
      Google.Ads.Googleads.V16.Services.AddOfflineUserDataJobOperationsRequest,
      Google.Ads.Googleads.V16.Services.AddOfflineUserDataJobOperationsResponse

  rpc :RunOfflineUserDataJob,
      Google.Ads.Googleads.V16.Services.RunOfflineUserDataJobRequest,
      Google.Longrunning.Operation
end

defmodule Google.Ads.Googleads.V16.Services.OfflineUserDataJobService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V16.Services.OfflineUserDataJobService.Service
end