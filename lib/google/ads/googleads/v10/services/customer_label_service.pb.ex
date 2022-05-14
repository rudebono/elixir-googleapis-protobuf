defmodule Google.Ads.Googleads.V10.Services.MutateCustomerLabelsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.CustomerLabelOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V10.Services.CustomerLabelOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V10.Resources.CustomerLabel, oneof: 0
  field :remove, 2, type: :string, oneof: 0, deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.MutateCustomerLabelsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.MutateCustomerLabelResult
end
defmodule Google.Ads.Googleads.V10.Services.MutateCustomerLabelResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.CustomerLabelService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v10.services.CustomerLabelService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :MutateCustomerLabels,
      Google.Ads.Googleads.V10.Services.MutateCustomerLabelsRequest,
      Google.Ads.Googleads.V10.Services.MutateCustomerLabelsResponse
end

defmodule Google.Ads.Googleads.V10.Services.CustomerLabelService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V10.Services.CustomerLabelService.Service
end
