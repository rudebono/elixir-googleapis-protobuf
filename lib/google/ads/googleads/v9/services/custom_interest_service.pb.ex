defmodule Google.Ads.Googleads.V9.Services.GetCustomInterestRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.MutateCustomInterestsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.CustomInterestOperation,
    deprecated: false

  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V9.Services.CustomInterestOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V9.Resources.CustomInterest, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V9.Resources.CustomInterest, oneof: 0
end
defmodule Google.Ads.Googleads.V9.Services.MutateCustomInterestsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.MutateCustomInterestResult
end
defmodule Google.Ads.Googleads.V9.Services.MutateCustomInterestResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
end
defmodule Google.Ads.Googleads.V9.Services.CustomInterestService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.CustomInterestService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetCustomInterest,
      Google.Ads.Googleads.V9.Services.GetCustomInterestRequest,
      Google.Ads.Googleads.V9.Resources.CustomInterest

  rpc :MutateCustomInterests,
      Google.Ads.Googleads.V9.Services.MutateCustomInterestsRequest,
      Google.Ads.Googleads.V9.Services.MutateCustomInterestsResponse
end

defmodule Google.Ads.Googleads.V9.Services.CustomInterestService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.CustomInterestService.Service
end
