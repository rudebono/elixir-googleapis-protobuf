defmodule Google.Ads.Googleads.V9.Services.GetAdGroupAdLabelRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.MutateAdGroupAdLabelsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.AdGroupAdLabelOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V9.Services.AdGroupAdLabelOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V9.Resources.AdGroupAdLabel, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end
defmodule Google.Ads.Googleads.V9.Services.MutateAdGroupAdLabelsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.MutateAdGroupAdLabelResult
end
defmodule Google.Ads.Googleads.V9.Services.MutateAdGroupAdLabelResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
end
defmodule Google.Ads.Googleads.V9.Services.AdGroupAdLabelService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.AdGroupAdLabelService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetAdGroupAdLabel,
      Google.Ads.Googleads.V9.Services.GetAdGroupAdLabelRequest,
      Google.Ads.Googleads.V9.Resources.AdGroupAdLabel

  rpc :MutateAdGroupAdLabels,
      Google.Ads.Googleads.V9.Services.MutateAdGroupAdLabelsRequest,
      Google.Ads.Googleads.V9.Services.MutateAdGroupAdLabelsResponse
end

defmodule Google.Ads.Googleads.V9.Services.AdGroupAdLabelService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.AdGroupAdLabelService.Service
end
