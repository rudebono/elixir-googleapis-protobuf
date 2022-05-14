defmodule Google.Ads.Googleads.V8.Services.GetAdGroupLabelRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.MutateAdGroupLabelsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.AdGroupLabelOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V8.Services.AdGroupLabelOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V8.Resources.AdGroupLabel, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end
defmodule Google.Ads.Googleads.V8.Services.MutateAdGroupLabelsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateAdGroupLabelResult
end
defmodule Google.Ads.Googleads.V8.Services.MutateAdGroupLabelResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
end
defmodule Google.Ads.Googleads.V8.Services.AdGroupLabelService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v8.services.AdGroupLabelService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetAdGroupLabel,
      Google.Ads.Googleads.V8.Services.GetAdGroupLabelRequest,
      Google.Ads.Googleads.V8.Resources.AdGroupLabel

  rpc :MutateAdGroupLabels,
      Google.Ads.Googleads.V8.Services.MutateAdGroupLabelsRequest,
      Google.Ads.Googleads.V8.Services.MutateAdGroupLabelsResponse
end

defmodule Google.Ads.Googleads.V8.Services.AdGroupLabelService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.AdGroupLabelService.Service
end
